import os
import re
from operator import itemgetter
import operator
from pprint import pprint
import sys
from collections import defaultdict
from pprint import pprint
import csv
from prettytable import PrettyTable
import operator
import logging


POSIX_time = True


def read_file(file, timeout_reg, timeout, benchmark_pattern):
    global POSIX_time
    all_result = {}
    all_files = [] 
    with open (file, 'r' ) as f:
        content = f.read()
        
        seperate_files = content.split('#################')

        logging.basicConfig(format='%(levelname)s:%(message)s', level=logging.DEBUG)
        logging.info( file + ": #res = " + str(len(seperate_files)))
        
        for output in seperate_files:
            
            try:
                filename = re.search(benchmark_pattern, output).group(2).strip()
                all_files.append(filename)
                # print filename
            except:
                continue
                

            time = 0.0
            status = ""           
           
            if POSIX_time:
                timereg = re.search('real\s+([0-9]+)m([0-9]*\.?[0-9]*)s', output, re.IGNORECASE)
            else: 
                timereg = re.search('([0-9]{1,2})\:([0-9]{2}\.[0-9]+)elapsed', output, re.IGNORECASE)
                

            #looks ok
            if re.search('Boogie program verifier finished with [1-9] verified, 0 error', output, re.IGNORECASE) != None:
                if re.search('\{\s+(b[0-9]{4}(\ &&\ )?)*\s+\}', output) != None: 
                    status = "nontrivialsuccess"
                elif re.search('Removing \_b[0-9]+', output) != None:
                    status = "nontrivialsuccess"
                else:
                    status = "trivialsuccess"
                
                if timereg:
                    time = round(float(timereg.group(1))*60+float(timereg.group(2)),1)
            
            elif re.search('Boogie program verifier finished with 0 verified, [1-9] error', output, re.IGNORECASE) != None:
                status = "nontrivialfailure"
                if timereg:
                    time = round(float(timereg.group(1))*60+float(timereg.group(2)),1)
                    
            #looks ok
            elif re.search('runtime', output, re.IGNORECASE) != None:
                status = "runtime"
            
            #(are mostly covered by rnutime .. so none here)
            elif re.search('Negative datapoint [0-9]+ does satisfy conjunction', output, re.IGNORECASE) != None:
                status = "exception"
            
            ##non-runtime exception... moemory.. 
            elif re.search('Unhandled Exception', output,re.IGNORECASE) != None:
                status = "exception"
            
            #looks ok
            ##change :dependent
            elif re.search(timeout_reg, output, re.IGNORECASE) != None:

                ##change dependent
                status = "timeout"
                time = timeout
                # rounds = re.findall('ROUND ([0-9]*)',output)
                
            #parsing error.. variable not declared.. 
            elif re.search('error', output, re.IGNORECASE) != None:
                status = "error"
            
            #no unknowns
            else:
                status = "unknown"


            num_predicates = 0
            if re.search('b([0-9]{4}):\s*bool\s*\)\s*:\s*bool', output, re.IGNORECASE) != None:
                num_predicates = int(re.search('b([0-9]{4}):\s*bool\s*\)\s*:\s*bool', output, re.IGNORECASE).group(1).strip())
                

            num_rounds = 0
            if re.search('Number of C5 Learner queries = ([0-9]+)', output, re.IGNORECASE) != None:
                num_rounds = int(re.search('Number of C5 Learner queries = ([0-9]+)', output, re.IGNORECASE).group(1).strip())
            elif re.search('Number of prover queries = ([0-9]+)', output, re.IGNORECASE) != None:
                num_rounds = int(re.search('Number of prover queries = ([0-9]+)', output, re.IGNORECASE).group(1).strip())
            else:
                num_rounds = 0


            prover_time = 0.0
            if re.search('Prover time\s*=\s*([0-9\.]+)', output, re.IGNORECASE) != None:
                prover_time = round(float(re.search('Prover time\s*=\s*([0-9\.]+)', output, re.IGNORECASE).group(1).strip()),1)
             
            num_final_pred = 0 
            all_pred = re.findall('\{(\s*(?:b[0-9]{4}\s*\&\&\s*)*(?:b[0-9]{4}))\s*\}',output, re.MULTILINE)
            if all_pred:
                final_pred = all_pred[-1]
                num_final_pred = len(re.findall('b[0-9]{4}',final_pred))


            num_pos_example = 0  
            try: 
                num_pos_example = int(re.search('Number of positive examples:([0-9]+)', output, re.IGNORECASE).group(1).strip())
            except:
                pass
                
                
            num_neg_example = 0
            try: 
                num_neg_example = int(re.search('Number of negative examples:([0-9]+)', output, re.IGNORECASE).group(1).strip())
            except:
                pass


            num_horn_example = 0
            try:
                num_horn_example = int(re.search('Number of Horn clauses:([0-9]+)', output, re.IGNORECASE).group(1).strip())
            except:
                pass

            all_result[filename.strip()] = {"status": status, 
                                        "time": time, 
                                        "num_predicates":num_predicates, 
                                        "final_pred":num_final_pred, 
                                        "num_rounds": num_rounds, 
                                        "prover_time":prover_time , 
                                        "num_pos": num_pos_example, 
                                        "num_neg": num_neg_example, 
                                        "num_horn": num_horn_example 
                                        }

            # all_result[filename.strip()] = {"status": status, "time": time, "num_predicates":num_predicates, "final_pred":num_final_pred, "num_rounds": num_rounds, "prover_time":prover_time }
            

    return all_result



def print_files(file_list, timeout_pattern, timeout, benchmark_pattern):

    global POSIX_time

    read_list = {}
    union_of_files = []
    for file_name in file_list:
        read_list[file_name] = read_file(file_name, timeout_pattern.strip(), timeout, benchmark_pattern)
        union_of_files = list(set(union_of_files) | set(read_list[file_name].keys()))
   
    union_of_files.sort()



    #create headings
    file_heading = "files:, "
    attribute_heading = "file, "

    attributes = read_list[file_list[0]][union_of_files[0]].keys()
    for file_name in file_list:
        for attr in attributes: 
            attribute_heading += attr + ", "
            if attr == "status":
                file_heading += file_name + ", "
            else :
                file_heading += ", "
                

    print file_heading
    print attribute_heading
    

    #print values
    for benchmark in union_of_files:
        print benchmark, ",", 

        for file_name in file_list:
            for attr in attributes:
                try : 
                    print read_list[file_name][benchmark][attr], ",",
                except :
                    print " ," , 

        print ""



def main():
    

    files = ['variants/asorcar.txt',
        'variants/asorcarf.txt',
        'variants/asorcart.txt',
        'variants/asorcarr.txt',
        'variants/asorcarft.txt',
        'variants/asorcarfr.txt',
        'variants/asorcartr.txt',
        'variants/asorcarftr.txt',
        'variants/asorcarfirst.txt',
        'variants/asorcarfirstf.txt',
        'variants/asorcarfirstt.txt',
        'variants/asorcarfirstr.txt',
        'variants/asorcarfirstft.txt',
        'variants/asorcarfirstfr.txt',
        'variants/asorcarfirsttr.txt',
        'variants/asorcarfirstftr.txt',
        'variants/ahorndini.txt',
        'variants/ahorndinif.txt',
        'variants/ahorndinit.txt',
        'variants/ahorndinir.txt',
        'variants/ahorndinift.txt',
        'variants/ahorndinifr.txt',
        'variants/ahorndinitr.txt',
        'variants/ahorndiniftr.txt']
            
    global POSIX_time    
    POSIX_time = False
    timeout = 600
    
    if POSIX_time:
        timeout_pattern = 'real\s*600[0-9\.\:]+'
    else :
        timeout_pattern = '10\:[0-9]{2}\.[0-9]+elapsed'
    
    
    # benchmark_pattern = 'Parsing (.+)BenchmarksCompiled\/(.*)' 
    # '../BenchmarksCompiled/./polybench/datamining/covariance/kernel3.bpl.ice2.bpl'
    
    benchmark_pattern = 'Parsing (.+)BenchmarksCompiled\/a(?:sorcar|sorcarfirst|horndini)(?:(?:f|t|r)*)\/(.*)'
    # '/dev/shm/neider/gv//benchmarks/BenchmarksCompiled/ahorndini/CUDA50/6_Advanced/eigenvalues/_bisect_kernel_small.bpl.ice2.bpl'
    
      
    print_files(files, timeout_pattern, timeout, benchmark_pattern)

    print POSIX_time



if __name__== "__main__":
    main()


#other regex patterns
#'5m[\.0-9]*s'
#'0m15[\.0-9]*s' 
#'3m30[\.0-9]*s'
#'(240|239)m'

