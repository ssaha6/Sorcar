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
        
        seperate_files = content.split("#################")

        logging.basicConfig(format='%(levelname)s:%(message)s', level=logging.DEBUG)
        logging.info( file + ": #res = " + str(len(seperate_files)))
        
        for output in seperate_files:


            try:
                # FILE: AMD_SDK/KernelLaunch/kernel2/kernel.cl
                filename = re.search('FILE: (.*)', output).group(1).strip()
                all_files.append(filename)
            except:
                continue
                

            time = 0.0
            num_predicates = 0 
            num_final_pred = 0 
            num_rounds = 0
            status = ""

            timereg = re.search('real\s+([0-9]+)m([0-9]*\.?[0-9]*)s', output, re.IGNORECASE)
            if timereg:
                    time = round(float(timereg.group(1))*60+float(timereg.group(2)),1)

            
            all_rounds = re.findall('Houdini assignment axiom:.*\)', output, re.IGNORECASE)
            if all_rounds:
                num_rounds = len(all_rounds)
                final_round = all_rounds[-1]
                num_predicates = len(re.findall('_b[0-9]+', final_round, re.IGNORECASE))
                num_pred_dropped = len(re.findall('!', final_round, re.IGNORECASE))
                num_final_pred = num_predicates - num_pred_dropped


            #GPUVerify kernel analyser finished with 1 verified, 0 errors
            if re.search('GPUVerify kernel analyser finished with [1-9]+ verified, 0 error', output, re.IGNORECASE) != None:
                status = "nontrivialsuccess"
                
            elif re.search('real\s*' + timeout_reg, output, re.IGNORECASE) != None:    
                status = "timeout"
                time = timeout

            elif re.search('GPUVerify kernel analyser finished with 0 verified', output, re.IGNORECASE) != None:
                status = "nontrivialfailure"

            else:
                status = "unknown"


            all_result[filename.strip()] = {"status": status, "time": time, "num_predicates":num_predicates, "final_pred":num_final_pred, "num_rounds": num_rounds}


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
# 


def main():
    # if len(sys.argv) <= 1: 
    #     sys.exit(2)
    # files = list(map(lambda x: x.strip(), sys.argv))[1:]
    # files = create_combinations()
    
    # files = ['AHHorn.txt','SorcarHorn.txt']
    
    timeout_pattern = '10m0\.[0-9]*s'
    timeout = 600
    # read_file('vanila_gpuverify.txt', timeout_pattern, timeout)
    print_files(['vanila_gpuverify.txt'], timeout_pattern, timeout)
    
    # print read_file('SorcarHorn.txt', timeout_pattern.strip(), timeout)


if __name__== "__main__":
  main()


#other regex patterns
#'5m[\.0-9]*s'
#'0m15[\.0-9]*s' 
#'3m30[\.0-9]*s'
#'(240|239)m'

