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




def read_file(file, timeout_reg, timeout):
    # all_result = []
    all_result = {}
    all_files = [] 
    with open (file, 'r' ) as f:
        content = f.read()
        
        seperate_files = content.split('#################')

        logging.basicConfig(format='%(levelname)s:%(message)s', level=logging.DEBUG)
        logging.info( file + ": #res = " + str(len(seperate_files)))
        
        for output in seperate_files:

            try:#../BenchmarksCompiled/./polybench/datamining/covariance/kernel3.bpl.ice2.bpl

                ##change: dependent
                # filename = re.search('Parsing (.+)BenchmarksCompiled\/(.*)', output).group(2).strip()
                filename = re.search('Parsing (.+)phase3\/(.*)', output).group(2).strip()
                all_files.append(filename)
                # print filename
            except:
                continue
                

            time = 0.0
            status = ""
            timereg = re.search('real\s+([0-9]+)m([0-9]*\.?[0-9]*)s', output, re.IGNORECASE)
            # rounds = re.findall('ROUND ([0-9]*)',output)
            

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
            elif re.search('real\s*' + timeout_reg, output, re.IGNORECASE) != None:

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

                

            # element = {"filename": filename, "status": status, "time": time, "num_predicates":num_predicates, "num_rounds": num_rounds, "prover_time":prover_time }
            # all_result.append(element)
            all_result[filename.strip()] = {"status": status, "time": time, "num_predicates":num_predicates, "final_pred":num_final_pred, "num_rounds": num_rounds, "prover_time":prover_time }
            

    return all_result



def print_files(file_list, timeout_pattern, timeout):


    #Get all results
    read_list = list(map(lambda x: read_file(x, timeout_pattern.strip(), timeout), file_list))
   
   #create list of files
    union_of_files = sorted(reduce(lambda x,y: set(x).union(set(y)), 
                                   list(map(lambda x: x.keys(), read_list))
                                   ),
                            key=lambda z: z.lower())


    #create headings
    file_heading = "files:, "
    attribute_heading = "file, "

    for (file, file_name) in zip(read_list, file_list):
        for attribute in file[union_of_files[0]].keys():
            if attribute == "status":
                file_heading += file_name + ", "
            else :
                file_heading += ", "
            attribute_heading += attribute + ", "

    print file_heading
    print attribute_heading


    #print values
    for benchmark in union_of_files:
        print benchmark, ",", 

        for file in read_list:
            for attribute in file[benchmark].keys():
                if file[benchmark][attribute]:
                    print file[benchmark][attribute]  , "," , 
                else :
                    print " " , "," , 

        print ""



# def create_combinations():
# 
#     algorithms =            ["sorcar_all", "sorcar_greedy"] # 'houdini',, sorcar_sat
#     houdini_first_round =   ["true", "false"]
#     reset_R =               ["true", "false"]
#     alternate =             ["true", "false"]
# 
#     filename = []
#     for algo_opt in algorithms:
#         for h_opt in houdini_first_round:
#             for r_opt in reset_R:
#                 for alt_opt in alternate:
#                     filename.append(algo_opt + "_" + h_opt + "_" + r_opt + "_" + alt_opt + ".txt")
# 
#     return filename



def main():
    # if len(sys.argv) <= 1: 
    #     sys.exit(2)
    # files = list(map(lambda x: x.strip(), sys.argv))[1:]
    # files = create_combinations()
    
    # files = ['gpuverify_sorcar.txt']
    files = ['dryad_sorcar.txt', 'dryad_abshoudini_int.txt']
    
    timeout_pattern = '10m0\.[0-9]*s'
    timeout = 600
    print_files(files, timeout_pattern, timeout)
    
    # print read_file('SorcarHorn.txt', timeout_pattern.strip(), timeout)


if __name__== "__main__":
  main()


#other regex patterns
#'5m[\.0-9]*s'
#'0m15[\.0-9]*s' 
#'3m30[\.0-9]*s'
#'(240|239)m'

