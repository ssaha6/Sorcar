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
import pickle
import warnings
import xlsxwriter
from collections import OrderedDict

POSIX_time = True


def write_to_pickle(structure, file_name):
    with open(file_name, 'wb') as handle:
        pickle.dump(structure, handle, protocol=pickle.HIGHEST_PROTOCOL)

def read_pickle(file_name):
    with open(file_name, 'rb') as handle:
        structure = pickle.load(handle)
        return structure

def read_gpuverify_file(file, timeout, benchmark_pattern):
    POSIX_time = True
    all_result = {}
    all_files = [] 
    with open (file, 'r' ) as f:
        content = f.read()

        seperate_files = content.split("#################")

        logging.basicConfig(format='%(levelname)s:%(message)s', level=logging.DEBUG)
        logging.info( file + ": #res = " + str(len(seperate_files)))
        
        for output in seperate_files:

            try:
                filename = re.search('FILE: (.*)(?:(?:\.cu)|(?:\.cl))', output).group(1).strip()
                all_files.append(filename)
                # print filename
            except:
                continue
                

            time = 0.0
            status = ""


            if POSIX_time:
                timereg = re.search('real\s+([0-9]+)m([0-9]*\.?[0-9]*)s', output, re.IGNORECASE)
                timeout_pattern = 'real\s*10m[0-9\.\:]+s'
            else:
                timereg = re.search('([0-9]{1,2})\:([0-9]{2}\.[0-9]+)elapsed', output, re.IGNORECASE)
                timeout_pattern = '10\:[0-9]{2}\.[0-9]+elapsed'

        

            #GPUVerify kernel analyser finished with 1 verified, 0 errors
            if re.search('GPUVerify kernel analyser finished with [1-9]+ verified, 0 error', output, re.IGNORECASE) != None:
                status = "nontrivialsuccess"
                if timereg:
                    time = round(float(timereg.group(1))*60+float(timereg.group(2)),1)
            
            elif re.search('GPUVerify kernel analyser finished with 0 verified', output, re.IGNORECASE) != None:
                status = "nontrivialfailure"
                if timereg:
                    time = round(float(timereg.group(1))*60+float(timereg.group(2)),1)
                    
            elif re.search(timeout_pattern, output, re.IGNORECASE) != None:
                status = "timeout"
                time = timeout

            else:
                status = "unknown"
                if timereg:
                    time = round(float(timereg.group(1))*60+float(timereg.group(2)), 1)
                
                
            num_predicates = 0 
            num_final_pred = 0 
            num_rounds = 0
            
            all_rounds = re.findall('Houdini assignment axiom:.*\)', output, re.IGNORECASE)
            if all_rounds:
                num_rounds = len(all_rounds)
                final_round = all_rounds[-1]
                num_predicates = len(re.findall('_b[0-9]+', final_round, re.IGNORECASE))
                num_pred_dropped = len(re.findall('!', final_round, re.IGNORECASE))
                num_final_pred = num_predicates - num_pred_dropped


            all_result[filename.strip()] = {"status": status, 
                                            "time": time, 
                                            "num_predicates":num_predicates, 
                                            "final_pred":num_final_pred, 
                                            "num_rounds": num_rounds,
                                            "prover_time": 0,
                                            "num_pos": 0,
                                            "num_neg": 0,
                                            "num_horn": 0
                                            }


    return all_result




def read_file(file, timeout, benchmark_pattern):
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
                timeout_pattern = 'real\s*10m[0-9\.\:]+s'
            else:
                timereg = re.search('([0-9]{1,2})\:([0-9]{2}\.[0-9]+)elapsed', output, re.IGNORECASE)
                timeout_pattern = '10\:[0-9]{2}\.[0-9]+elapsed'



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
                if timereg:
                    time = round(float(timereg.group(1))*60+float(timereg.group(2)), 1)
            
            #(are mostly covered by rnutime .. so none here)
            elif re.search('Negative datapoint [0-9]+ does satisfy conjunction', output, re.IGNORECASE) != None:
                status = "exception"
                if timereg:
                    time = round(float(timereg.group(1))*60+float(timereg.group(2)), 1)
            
            ##non-runtime exception... moemory.. 
            elif re.search('Unhandled Exception', output,re.IGNORECASE) != None:
                status = "exception"
                if timereg:
                    time = round(float(timereg.group(1))*60+float(timereg.group(2)), 1)
            
            #looks ok
            ##change :dependent
            elif re.search(timeout_pattern, output, re.IGNORECASE) != None:

                ##change dependent
                status = "timeout"
                time = timeout
                # rounds = re.findall('ROUND ([0-9]*)',output)
                
            #parsing error.. variable not declared.. 
            elif re.search('error', output, re.IGNORECASE) != None:
                status = "error"
                if timereg:
                    time = round(float(timereg.group(1))*60+float(timereg.group(2)), 1)
            
            #no unknowns
            else:
                status = "unknown"
                if timereg:
                    time = round(float(timereg.group(1))*60+float(timereg.group(2)), 1)


            # ~~~ check.. may nto be correct
            num_predicates = 0
            try:
                num_pred_all = re.findall('my_inv\(b[0-9]{4}\:\s*bool(?:,\s+b[0-9]{4}\:\s*bool)*\)\s*:\s*bool', output, re.MULTILINE)[0]
                num_predicates = len(re.findall('b[0-9]{4}', num_pred_all)) 
                # -1 as converting a bpl file to ice format requires adding an extra pred, which is set to true.
            except:
                pass

            # also correct... 
            # num_predicates = 0
            # if re.search('b([0-9]{4}):\s*bool\s*\)\s*:\s*bool', output, re.IGNORECASE) != None:
            #     num_predicates = int(re.search('b([0-9]{4}):\s*bool\s*\)\s*:\s*bool', output, re.IGNORECASE).group(1).strip())
                

            # ~~ check.. may not be correct
            num_rounds = 0
            # if re.search('Number of C5 Learner queries = ([0-9]+)', output, re.IGNORECASE) != None:
            #     num_rounds = int(re.search('Number of C5 Learner queries = ([0-9]+)', output, re.IGNORECASE).group(1).strip())
            if re.search('Number of prover queries = ([0-9]+)', output, re.IGNORECASE) != None:
                num_rounds = int(re.search('Number of prover queries = ([0-9]+)', output, re.IGNORECASE).group(1).strip())
            # else:
            #     num_rounds = 0


            prover_time = 0.0
            if re.search('Prover time\s*=\s*([0-9\.]+)', output, re.IGNORECASE) != None:
                prover_time = round(float(re.search('Prover time\s*=\s*([0-9\.]+)', output, re.IGNORECASE).group(1).strip()),1)
             
             # ~~ correct
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


def read_all_files(file_list, timeout, benchmark_pattern, write_pickle=True):
    read_list = {}
    for file_name in file_list:
        if file_name == "vanila_gpuverify.txt":
            read_list[file_name] = read_gpuverify_file(file_name, timeout, benchmark_pattern)
        else: 
            read_list[file_name] = read_file(file_name, timeout, benchmark_pattern)

    if write_pickle:
        write_to_pickle(read_list, 'read_list.pickle')
        
    return read_list


def compute_union_of_files(read_list, write_pickle=True):
    union_of_files = []
    for file_name in read_list:
        union_of_files = list(set(union_of_files) | set(read_list[file_name].keys()))

    union_of_files.sort()

    if write_pickle:
        write_to_pickle(union_of_files, 'union_of_files.pickle')

    return union_of_files


def print_result(read_list, union_of_files, file_list):

    #create headings
    file_heading = "files:, "
    attribute_heading = "file, "

    # attributes = read_list[next(iter(read_list))][union_of_files[0]].keys()
    attributes = ['status', 'num_pos', 'num_neg', 'num_horn', 'num_predicates', 'final_pred', 'num_rounds', 'prover_time', 'time' ]
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


# Status 
# --------------------
# timeout
# --------------------
# trivialsuccess
# nontrivialsuccess
# --------------------
# nontrivialfailure
# exception
# error
# runtime
# -------------------


def analyze(read_list, union_of_files, file_list, write_workbook=False):
    # First, It would be good to have a few numbers for all variants, such as
    # total number of timeouts, average time on all terminating benchmarks, average number of predicates on all terminating benchmarks.
    # For the five or so best variants, perhaps we can have a more detailed analysis. Maybe we should briefly talk about that?

    # The higher order bit for me is whether any variant beats houduni convincingly.
    # So do tell us the aggregated statistics as Daniel says for each variant, including houdini. Also include total time taken on all benchmarks.
    result = {}
    for variants in file_list:
        if variants not in read_list.keys():
            continue
        
        num_timeout = 0 
        num_success = 0
        num_failure = 0
        num_neg = 0

        total_time_success = 0.0
        avg_time_success = 0.0
        total_pred_success = 0
        avg_pred_success = 0.0
        total_time = 0.0
        timeout_succ_time = 0.0
        avg_timeout_succ_time = 0.0
        avg_time = 0.0

        for file in read_list[variants].keys():
            
            status = read_list[variants][file]['status']
            total_time += read_list[variants][file]['time']
            num_neg = num_neg + read_list[variants][file]['num_neg']

            if status == 'timeout': 
                num_timeout = num_timeout +1

            elif status == 'trivialsuccess' or status == 'nontrivialsuccess' : 
                num_success = num_success + 1
                total_time_success = total_time_success + read_list[variants][file]['time']
                total_pred_success = total_pred_success + read_list[variants][file]['final_pred']

            elif status == 'nontrivialfailure' or status == 'exception' or status == 'error' or status == 'runtime' or status == 'unknown':
                num_failure = num_failure + 1
            
            else :
                raise


            if status == 'timeout' or status == 'trivialsuccess' or status == 'nontrivialsuccess':
                timeout_succ_time = timeout_succ_time + read_list[variants][file]['time']


        avg_time_success = round(total_time_success / num_success, 1)
        avg_pred_success = round(float(total_pred_success) / num_success, 1)
        avg_timeout_succ_time = round( timeout_succ_time / (num_timeout + num_success ), 1)
        avg_time = round( total_time / (num_timeout + num_success + num_failure), 1)

        result[variants] = {'num_timeout': num_timeout,
                            'num_success': num_success, 
                            'num_failure': num_failure, 
                            'total_pred_success': total_pred_success,
                            'avg_pred_success': avg_pred_success,
                            'num_neg': num_neg, 
                            'total_time_success': total_time_success,
                            'avg_time_success': avg_time_success, 
                            'total_time_succ_timeout': timeout_succ_time,
                            'avg_time_succ_timeout': avg_timeout_succ_time,
                            'total_time': total_time,
                            'avg_time': avg_time
                            }
    
    sorted_files = map(lambda y: y[0], sorted(result.items(), key= lambda x: x[1]['avg_time_success']))
    

    if write_workbook: 
        workbook = xlsxwriter.Workbook('File.xlsx')
        worksheet = workbook.add_worksheet()
        row = 0
        header = True
        # for key in result.keys():
        for key in sorted_files: 
            col = 0
            if header: 
                 worksheet.write(row, col,'file')
            row += 1
            worksheet.write(row, col, key)
            # for item in result[key]:
            for item in ['num_success', 'num_failure', 'num_timeout', 'total_pred_success', 'avg_pred_success', 'num_neg', 'total_time_success', 'avg_time_success', 'total_time_succ_timeout', 'avg_time_succ_timeout', 'total_time', 'avg_time']:
                col += 1
                if header: 
                    worksheet.write(row-1, col, item)
                worksheet.write(row, col, result[key][item])
            header = False

        workbook.close()

    return sorted_files


def main():
    
    files = [
            "vanila_gpuverify.txt",
            "variants2/ahorndini.txt",
            "variants2/ahorndinif.txt",
            "variants2/ahorndinit.txt",
            "variants2/ahorndinir.txt",
            "variants2/ahorndinift.txt",
            "variants2/ahorndinifr.txt",
            "variants2/ahorndinitr.txt",
            "variants2/ahorndiniftr.txt",
            "variants2/asorcar.txt",
            "variants2/asorcarf.txt",
            "variants2/asorcart.txt",
            "variants2/asorcarr.txt",
            "variants2/asorcarft.txt",
            "variants2/asorcarfr.txt",
            "variants2/asorcartr.txt",
            "variants2/asorcarftr.txt",
            "variants2/asorcarfirst.txt",
            "variants2/asorcarfirstf.txt",
            "variants2/asorcarfirstt.txt",
            "variants2/asorcarfirstr.txt",
            "variants2/asorcarfirstft.txt",
            "variants2/asorcarfirstfr.txt",
            "variants2/asorcarfirsttr.txt",
            "variants2/asorcarfirstftr.txt",
            "variants2/asorcargreedy.txt",
            "variants2/asorcargreedyf.txt",
            "variants2/asorcargreedyt.txt",
            "variants2/asorcargreedyr.txt",
            "variants2/asorcargreedyft.txt",
            "variants2/asorcargreedyfr.txt",
            "variants2/asorcargreedytr.txt",
            "variants2/asorcargreedyftr.txt",
            "variants2/asorcarminimal.txt",
            "variants2/asorcarminimalf.txt",
            "variants2/asorcarminimalt.txt",
            "variants2/asorcarminimalr.txt",
            "variants2/asorcarminimalft.txt",
            "variants2/asorcarminimalfr.txt",
            "variants2/asorcarminimaltr.txt",
            "variants2/asorcarminimalftr.txt",
            ]
        
    
    ##############SETTINGS##############
    global POSIX_time
    POSIX_time = False
    timeout = 600
    

    
    #other regex patterns
    #'5m[\.0-9]*s'
    #'0m15[\.0-9]*s' 
    #'3m30[\.0-9]*s'
    #'(240|239)m'

    # benchmark_pattern = 'Parsing (.+)BenchmarksCompiled\/(.*)' 
    # '../BenchmarksCompiled/./polybench/datamining/covariance/kernel3.bpl.ice2.bpl'
    
    benchmark_pattern = 'Parsing (.+)BenchmarksCompiled\/a(?:sorcar|sorcarfirst|horndini|sorcargreedy|sorcarminimal)(?:(?:f|t|r)*)\/(.*)(?:\.bpl\.ice2\.bpl)'
    # '/dev/shm/neider/gv//benchmarks/BenchmarksCompiled/ahorndini/CUDA50/6_Advanced/eigenvalues/_bisect_kernel_small.bpl.ice2.bpl'
    ##############SETTINGS##############


    ##############LOAD DATA##############
    read_list = read_all_files(files, timeout, benchmark_pattern, write_pickle=True)
    union_of_files = compute_union_of_files(read_list,  write_pickle=True)
    print_result(read_list, union_of_files, files)

    # read_list = read_pickle('read_list.pickle')
    # union_of_files = read_pickle('union_of_files.pickle')
    # sorted_files = analyze(read_list, union_of_files, files, write_workbook=True)

    # print_result(read_list, union_of_files, sorted_files)
    ##############LOAD DATA##############


   




if __name__== "__main__":
    main()
