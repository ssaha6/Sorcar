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
from numpy import median

POSIX_time = True


def write_to_pickle(structure, file_name):
    with open(file_name, "wb") as handle:
        pickle.dump(structure, handle, protocol=pickle.HIGHEST_PROTOCOL)

def read_pickle(file_name):
    with open(file_name, "rb") as handle:
        structure = pickle.load(handle)
        return structure




class search_extract:
    def __init__(self, text):
        self.text = text

    def extract_info(self, pattern, init):
        value = init
        type_value = type(init)
        try:
            value = type_value(re.search(pattern, self.text, re.IGNORECASE).group(1).strip())
        except:
            pass
        return value

    def check_exists(self, pattern):
        found  = False
        try:
            found = (re.search(pattern, self.text, re.IGNORECASE) != None)
        except:
            pass
        return found



class time_related:
    def __init__(self, mins, POSIX_time):
        self.POSIX_time = POSIX_time

        self.timeout_pattern = ""
        if self.POSIX_time:
            self.timeout_pattern = "real\s*" + str(mins) + "m[0-9\.\:]+s"
        else:
            self.timeout_pattern = str(mins) + "\:[0-9]{2}\.[0-9]+elapsed"


    def get_timeout_pattern(self):
        return self.timeout_pattern


    def get_time(self, search_text):
        time  = 0.0
        if self.POSIX_time:
            timereg = re.search("real\s+([0-9]+)m([0-9]*\.?[0-9]*)s", search_text, re.IGNORECASE)
        else:
            timereg = re.search("([0-9]{1,2})\:([0-9]{2}\.[0-9]+)elapsed", search_text, re.IGNORECASE)

        if timereg:
            time = round(float(timereg.group(1))*60+float(timereg.group(2)), 1)

        return time



def read_gpuverify_file(file, timeout):
    tr = time_related(mins=timeout, POSIX_time=False)
    all_result = {}

    with open (file, "r" ) as f:
        content = f.read()
        seperate_files = content.split("#################")

        logging.basicConfig(format="%(levelname)s:%(message)s", level=logging.DEBUG)
        logging.info( file + ": #res = " + str(len(seperate_files)))

        for output in seperate_files:

            se = search_extract(output)

            filename = se.extract_info("FILE: (.*)(?:(?:\.cu)|(?:\.cl))", "")
            if not filename:
                continue

            time = tr.get_time(output)
            status = ""

            #GPUVerify kernel analyser finished with 1 verified, 0 errors
            if se.check_exists("GPUVerify kernel analyser finished with [1-9]+ verified, 0 error"):
                status = "nontrivialsuccess"

            elif se.check_exists("GPUVerify kernel analyser finished with 0 verified"):
                status = "nontrivialfailure"

            elif se.check_exists(tr.get_timeout_pattern()):
                status = "timeout"

            else:
                status = "unknown"


            num_predicates = 0
            num_final_pred = 0
            num_rounds = 0

            all_rounds = re.findall("Houdini assignment axiom:.*\)", output, re.IGNORECASE)
            if all_rounds:
                num_rounds = len(all_rounds)
                final_round = all_rounds[-1]
                num_predicates = len(re.findall("_b[0-9]+", final_round, re.IGNORECASE))
                num_pred_dropped = len(re.findall("!", final_round, re.IGNORECASE))
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


def read_boogie_file(file, timeout, benchmark_pattern):
    tr = time_related(mins = timeout, POSIX_time = False)
    all_result = {}

    with open(file, "r") as f:
        content = f.read()
        seperate_files = content.split("#################")

        logging.basicConfig(format = "%(levelname)s:%(message)s", level = logging.DEBUG)
        logging.info(file + ": #res = " + str(len(seperate_files)))

        for output in seperate_files:

            se = search_extract(output)

            # /dev/shm/gv/benchmarks/BenchmarksDryad/boogie/phase3/dl_concat.bpl
            filename = se.extract_info(benchmark_pattern, "")
            if not filename:
                continue

            time = tr.get_time(output)
            status = ""

            #GPUVerify kernel analyser finished with 1 verified, 0 errors
            if se.check_exists("Boogie program verifier finished with [1-9]+ verified, 0 error"):
                status = "nontrivialsuccess"

            elif se.check_exists("Boogie program verifier finished with 0 verified"):
                status = "nontrivialfailure"

            elif se.check_exists(tr.get_timeout_pattern()):
                status = "timeout"

            else:
                status = "unknown"

            num_predicates = 0
            num_final_pred = 0
            num_rounds = 0

            all_rounds = re.findall("Houdini assignment axiom:.*\)", output, re.IGNORECASE)
            if all_rounds:
                num_rounds = len(all_rounds)
                final_round = all_rounds[-1]
                num_predicates = len(re.findall("b[0-9]+", final_round, re.IGNORECASE))
                num_pred_dropped = len(re.findall("!", final_round, re.IGNORECASE))
                num_final_pred = num_predicates - num_pred_dropped

            all_result[filename.strip()] = {
                "status": status,
                "time": time,
                "num_predicates": num_predicates,
                "final_pred": num_final_pred,
                "num_rounds": num_rounds,
                "prover_time": 0,
                "num_pos": 0,
                "num_neg": 0,
                "num_horn": 0
            }

    return all_result


def read_file(file, timeout, benchmark_pattern):
    if file == "asorcarr_gpuverify_exclusive.txt":
        tr = time_related(mins=10, POSIX_time=True)
    else:
        tr = time_related(mins=timeout, POSIX_time=False)
    all_result = {}

    with open (file, "r" ) as f:
        content = f.read()

        seperate_files = content.split("#################")

        logging.basicConfig(format="%(levelname)s:%(message)s", level=logging.DEBUG)
        logging.info( file + ": #res = " + str(len(seperate_files)))

        for output in seperate_files:

            se = search_extract(output)


            filename = se.extract_info(benchmark_pattern, "")
            if not filename:
                continue

            time = tr.get_time(output)
            status = ""

            #looks ok
            if se.check_exists("Boogie program verifier finished with [1-9] verified, 0 error"):
                if se.check_exists("\{\s+(b[0-9]{4}(\ &&\ )?)*\s+\}"):
                    status = "nontrivialsuccess"
                elif se.check_exists("Removing \_b[0-9]+"):
                    status = "nontrivialsuccess"
                else:
                    status = "trivialsuccess"

            elif se.check_exists("Boogie program verifier finished with 0 verified, [1-9] error"):
                status = "nontrivialfailure"

            elif se.check_exists("runtime"):
                status = "runtime"

            #(are mostly covered by rnutime .. so none here)
            elif se.check_exists("Negative datapoint [0-9]+ does satisfy conjunction"):
                status = "exception"

            #non-runtime exception... moemory..
            elif se.check_exists("Unhandled Exception"):
                status = "exception"

            elif se.check_exists(tr.get_timeout_pattern()):
                status = "timeout"

            #parsing error.. variable not declared..
            elif se.check_exists("error"):
                status = "error"

            else:
                status = "unknown"


            num_predicates = 0
            try:
                num_pred_all = re.findall("my_inv\(b[0-9]{4}\:\s*bool(?:,\s+b[0-9]{4}\:\s*bool)*\)\s*:\s*bool", output, re.MULTILINE)[0]
                num_predicates = len(re.findall("b[0-9]{4}", num_pred_all))
                # -1 as converting a bpl file to ice format requires adding an extra pred, which is set to true.
            except:
                pass

            # ~~ correct
            num_final_pred = 0
            all_pred = re.findall("\{(\s*(?:b[0-9]{4}\s*\&\&\s*)*(?:b[0-9]{4}))\s*\}",output, re.MULTILINE)
            if all_pred:
                final_pred = all_pred[-1]
                num_final_pred = len(re.findall("b[0-9]{4}",final_pred))

            # also correct...
            # num_predicates = 0
            # if re.search("b([0-9]{4}):\s*bool\s*\)\s*:\s*bool", output, re.IGNORECASE) != None:
            #     num_predicates = int(re.search("b([0-9]{4}):\s*bool\s*\)\s*:\s*bool", output, re.IGNORECASE).group(1).strip())

            num_rounds = se.extract_info("Number of prover queries\s*=\s*([0-9]+)", 0)
            prover_time = round(se.extract_info("Prover time\s*=\s*([0-9\.]+)", 0.0), 1)

            num_pos_example = se.extract_info("Number of positive examples\s*:\s*([0-9]+)", 0)
            num_neg_example = se.extract_info("Number of negative examples\s*:\s*([0-9]+)", 0)
            num_horn_example = se.extract_info("Number of Horn clauses\s*:\s*([0-9]+)", 0)


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

    return all_result



def read_all_files(file_list, timeout, benchmark_pattern, write_pickle=True):
    read_list = {}
    for file_name in file_list:
        if re.match(".*boogie.*\.txt", file_name):
            read_list[file_name] = read_boogie_file(file_name, timeout, benchmark_pattern)
        elif re.match(".*vanila.*\.txt", file_name):
            read_list[file_name] = read_gpuverify_file(file_name, timeout)
        else:
            read_list[file_name] = read_file(file_name, timeout, benchmark_pattern)
    
    if write_pickle:
        write_to_pickle(read_list, "read_list.pickle")

    return read_list


def compute_union_of_files(read_list, write_pickle=True):
    union_of_files = []
    for file_name in read_list:
        union_of_files = list(set(union_of_files) | set(read_list[file_name].keys()))

    union_of_files.sort()

    if write_pickle:
        write_to_pickle(union_of_files, "union_of_files.pickle")

    return union_of_files


def print_result(read_list, union_of_files, file_list):

    workbook = xlsxwriter.Workbook("Detailed.xlsx")
    worksheet = workbook.add_worksheet()
    row = 0
    col = 0

    #create headings
    worksheet.write(0, col, "file")
    worksheet.write(1, col, "file")

    # attributes = read_list[next(iter(read_list))][union_of_files[0]].keys()
    attributes = ["status", "num_pos", "num_neg", "num_horn", "num_predicates", "final_pred", "num_rounds", "prover_time", "time" ]

    for file_name in file_list:
        for attr in attributes:
            col += 1
            worksheet.write(1, col, attr)
            if attr == "status":
                worksheet.write(0, col, file_name)

    row = 1
    for benchmark in union_of_files:
        row += 1
        col = 0
        worksheet.write(row, col, benchmark)
        for file_name in file_list:
            for attr in attributes:
                col += 1
                try :
                    worksheet.write(row, col, read_list[file_name][benchmark][attr])
                except :
                    pass

    workbook.close()





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
        num_error = 0
        num_neg = 0

        total_time_success = 0.0
        avg_time_success = 0.0
        total_pred_success = 0
        avg_pred_success = 0.0
        total_time = 0.0
        timeout_succ_time = 0.0
        avg_timeout_succ_time = 0.0
        avg_time = 0.0

        combined_status = {}

        for file in read_list[variants].keys():

            status = read_list[variants][file]["status"]
            total_time += read_list[variants][file]["time"]
            num_neg = num_neg + read_list[variants][file]["num_neg"]

            if status == "timeout":
                num_timeout = num_timeout +1
                combined_status[file] = "timeout"

            elif status == "trivialsuccess" or status == "nontrivialsuccess" :
                num_success = num_success + 1
                total_time_success = total_time_success + read_list[variants][file]["time"]
                total_pred_success = total_pred_success + read_list[variants][file]["final_pred"]
                combined_status[file] = "success"

            elif status == "nontrivialfailure" or status == "exception" or status == "error" or status == "runtime" or status == "unknown":
                num_failure = num_failure + 1
                combined_status[file] = "failure"

            #added error
            elif status == "error" or status == "unknown":
                num_error = num_error + 1
                combined_status[file] = "error"

            else :
                raise


            if status == "timeout" or status == "trivialsuccess" or status == "nontrivialsuccess":
                timeout_succ_time = timeout_succ_time + read_list[variants][file]["time"]


        avg_time_success = round(total_time_success / num_success, 1)
        avg_pred_success = round(float(total_pred_success) / num_success, 1)
        avg_timeout_succ_time = round( timeout_succ_time / (num_timeout + num_success ), 1)
        avg_time = round( total_time / (num_timeout + num_success + num_failure), 1)

        result[variants] = {"num_timeout": num_timeout,
                            "num_success": num_success,
                            "num_failure": num_failure,
                            "num_error": num_error, 
                            "total_pred_success": total_pred_success,
                            "avg_pred_success": avg_pred_success,
                            "num_neg": num_neg,
                            "total_time_success": total_time_success,
                            "avg_time_success": avg_time_success,
                            "total_time_succ_timeout": timeout_succ_time,
                            "avg_time_succ_timeout": avg_timeout_succ_time,
                            "total_time": total_time,
                            "avg_time": avg_time
                            }

    sorted_files = map(lambda y: y[0], sorted(result.items(), key= lambda x: x[1]["avg_time_success"]))



    # Sum of rounds
    if write_workbook:
        workbook = xlsxwriter.Workbook("File.xlsx")
        worksheet = workbook.add_worksheet()
        row = 0
        header = True
        # for key in result.keys():
        for key in sorted_files:
            col = 0
            if header:
                worksheet.write(row, col,"file")
            row += 1
            worksheet.write(row, col, key)
            # for item in result[key]:
            for item in ["num_success", "num_failure", "num_timeout", "num_error", "total_pred_success", "avg_pred_success", "num_neg", "total_time_success", "avg_time_success", "total_time_succ_timeout", "avg_time_succ_timeout", "total_time", "avg_time"]:
                col += 1
                if header:
                    worksheet.write(row-1, col, item)
                worksheet.write(row, col, result[key][item])
            header = False

        workbook.close()

    return sorted_files




#############GPUVERIFY##############
def read_gpuverify():

    files = ["gpuverify/ahorndini.txt",
            "gpuverify/asorcar.txt",
            "gpuverify/asorcarfirst.txt",
            "gpuverify/asorcargreedy.txt",
            "gpuverify/asorcarminimal.txt",
            "gpuverify/boogie.txt",
            "gpuverify/vanila_gpuverify.txt"
            ]

    timeout = 20
    benchmark_pattern = "Parsing (?:.+)BenchmarksCompiled\/(?:boogie|a(?:sorcar|sorcarfirst|horndini|sorcargreedy|sorcarminimal)(?:(?:f|t|r)*))\/(.*)(?:\.bpl\.ice2\.bpl|\.bpl)"

    read_list = read_all_files(files, timeout, benchmark_pattern, write_pickle=False)
    union_of_files = compute_union_of_files(read_list,  write_pickle=False)

    sorted_files = analyze(read_list, union_of_files, files, write_workbook=True)
    print_result(read_list, union_of_files, sorted_files)




##############DRYAD##############
def read_dryad():


    dryad_files = [ "dryad/ahorndini.txt",
                    "dryad/asorcar.txt",
                    "dryad/asorcarfirst.txt",
                    "dryad/asorcargreedy.txt",
                    "dryad/asorcarminimal.txt",
                    "dryad/boogie.txt"
                    ]
                
    
    # /dev/shm/gv/benchmarks/BenchmarksDryad/boogie/phase3/dl_concat.bpl
    # /dev/shm/gv/benchmarks/BenchmarksDryad/ahorndinif/phase3/dl_concat.bpl.ice2.bpl
    benchmark_pattern = 'Parsing (?:.+)BenchmarksDryad\/(?:boogie|a(?:sorcar|sorcarfirst|horndini|sorcargreedy|sorcarminimal)(?:(?:f|t|r)*))\/phase3\/(.*?)(?:\.bpl\.ice2\.bpl|\.bpl)'

    timeout = 20
    read_list = read_all_files(dryad_files, timeout, benchmark_pattern, write_pickle=False)
    union_of_files = compute_union_of_files(read_list, write_pickle=False)

    sorted_files = analyze(read_list, union_of_files, dryad_files, write_workbook=True)
    print_result(read_list, union_of_files, sorted_files)





def main():
    read_gpuverify()
    # read_dryad()



if __name__ == "__main__":
    main()






    # files = ['gpuverify/variants2/asorcarr.txt']

    # files = ['gpuverify_asorcarr_exclusive.txt',"vanila_gpuverify.txt"]

    # files = [
    #         "vanila_gpuverify.txt",
    #         "variants2/ahorndini.txt",
    #         "variants2/ahorndinif.txt",
    #         "variants2/ahorndinit.txt",
    #         "variants2/ahorndinir.txt",
    #         "variants2/ahorndinift.txt",
    #         "variants2/ahorndinifr.txt",
    #         "variants2/ahorndinitr.txt",
    #         "variants2/ahorndiniftr.txt",
    #         "variants2/asorcar.txt",
    #         "variants2/asorcarf.txt",
    #         "variants2/asorcart.txt",
    #         "variants2/asorcarr.txt",
    #         "variants2/asorcarft.txt",
    #         "variants2/asorcarfr.txt",
    #         "variants2/asorcartr.txt",
    #         "variants2/asorcarftr.txt",
    #         "variants2/asorcarfirst.txt",
    #         "variants2/asorcarfirstf.txt",
    #         "variants2/asorcarfirstt.txt",
    #         "variants2/asorcarfirstr.txt",
    #         "variants2/asorcarfirstft.txt",
    #         "variants2/asorcarfirstfr.txt",
    #         "variants2/asorcarfirsttr.txt",
    #         "variants2/asorcarfirstftr.txt",
    #         "variants2/asorcargreedy.txt",
    #         "variants2/asorcargreedyf.txt",
    #         "variants2/asorcargreedyt.txt",
    #         "variants2/asorcargreedyr.txt",
    #         "variants2/asorcargreedyft.txt",
    #         "variants2/asorcargreedyfr.txt",
    #         "variants2/asorcargreedytr.txt",
    #         "variants2/asorcargreedyftr.txt",
    #         "variants2/asorcarminimal.txt",
    #         "variants2/asorcarminimalf.txt",
    #         "variants2/asorcarminimalt.txt",
    #         "variants2/asorcarminimalr.txt",
    #         "variants2/asorcarminimalft.txt",
    #         "variants2/asorcarminimalfr.txt",
    #         "variants2/asorcarminimaltr.txt",
    #         "variants2/asorcarminimalftr.txt",
    #         ]

    # escape = ["CUDA50/0_Simple/simpleCubemapTexture/simpleCubemapTexture.bpl.ice2.bpl",
    #       "CUDA50/2_Graphics/marchingCubes/_generateTriangles.bpl.ice2.bpl",
    #       "CUDA50/2_Graphics/marchingCubes/_generateTriangles2.bpl.ice2.bpl",
    #       "CUDA50/3_Imaging/SobelFilter/SobelCopyImage.bpl.ice2.bpl",
    #       "CUDA50/3_Imaging/SobelFilter/SobelShared.bpl.ice2.bpl",
    #       "CUDA50/3_Imaging/SobelFilter/SobelTex.bpl.ice2.bpl",
    #       "CUDA50/3_Imaging/boxFilter/d_boxfilter_rgba_x.bpl.ice2.bpl",
    #       "CUDA50/3_Imaging/boxFilter/d_boxfilter_x_tex.bpl.ice2.bpl",
    #       "CUDA50/3_Imaging/boxFilter/d_boxfilter_y_tex.bpl.ice2.bpl",
    #       "CUDA50/3_Imaging/dct8x8/CUDAkernel1DCT.bpl.ice2.bpl",
    #       "CUDA50/3_Imaging/dct8x8/CUDAkernel1IDCT.bpl.ice2.bpl",
    #       "CUDA50/3_Imaging/imageDenoising/imageDenoising_nlm2_kernel.bpl.ice2.bpl",
    #       "CUDA50/3_Imaging/postProcessGL/postProcessGL.bpl.ice2.bpl",
    #       "CUDA50/3_Imaging/stereoDisparity/_stereoDisparity.bpl.ice2.bpl",
    #       "CUDA50/4_Finance/quasirandomGenerator/inverseCNDKernel.bpl.ice2.bpl",
    #       "CUDA50/5_Simulations/fluidsGL/advectVelocity_k.bpl.ice2.bpl",
    #       "CUDA50/6_Advanced/FunctionPointers/SobelCopyImage.bpl.ice2.bpl",
    #       "CUDA50/6_Advanced/FunctionPointers/SobelShared.bpl.ice2.bpl",
    #       "CUDA50/6_Advanced/FunctionPointers/SobelTex.bpl.ice2.bpl",
    #       "gpgpu-sim_ispass2009/AES/aesEncrypt128_kernel/kernel.bpl.ice2.bpl",
    #       "gpgpu-sim_ispass2009/AES/aesEncrypt256_kernel/kernel.bpl.ice2.bpl",
    #       "gpgpu-sim_ispass2009/DG/MaxwellsGPU_SURF_Kernel3D/kernel.bpl.ice2.bpl",
    #       "gpgpu-sim_ispass2009/DG/MaxwellsGPU_VOL_Kernel3D/kernel.bpl.ice2.bpl",
    #       "gpgpu-sim_ispass2009/MUM/_mummergpuKernel.bpl.ice2.bpl",
    #       "gpgpu-sim_ispass2009/MUM/_mummergpuRCKernel.bpl.ice2.bpl",
    #       "gpgpu-sim_ispass2009/RAY/renderPixel.bpl.ice2.bpl",
    #       "parboil/sad/larger_sad_calc_8/kernel.bpl.ice2.bpl",
    # ]








    # Dryad files
    # dryad_files = [
    #         "dryad/boogie.txt",
    #         "dryad/ahorndini.txt",
    #         "dryad/ahorndinif.txt",
    #         "dryad/ahorndinit.txt",
    #         "dryad/ahorndinir.txt",
    #         "dryad/ahorndinift.txt",
    #         "dryad/ahorndinifr.txt",
    #         "dryad/ahorndinitr.txt",
    #         "dryad/ahorndiniftr.txt",
    #         "dryad/asorcar.txt",
    #         "dryad/asorcarf.txt",
    #         "dryad/asorcart.txt",
    #         "dryad/asorcarr.txt",
    #         "dryad/asorcarft.txt",
    #         "dryad/asorcarfr.txt",
    #         "dryad/asorcartr.txt",
    #         "dryad/asorcarftr.txt",
    #         "dryad/asorcarfirst.txt",
    #         "dryad/asorcarfirstf.txt",
    #         "dryad/asorcarfirstt.txt",
    #         "dryad/asorcarfirstr.txt",
    #         "dryad/asorcarfirstft.txt",
    #         "dryad/asorcarfirstfr.txt",
    #         "dryad/asorcarfirsttr.txt",
    #         "dryad/asorcarfirstftr.txt",
    #         "dryad/asorcargreedy.txt",
    #         "dryad/asorcargreedyf.txt",
    #         "dryad/asorcargreedyt.txt",
    #         "dryad/asorcargreedyr.txt",
    #         "dryad/asorcargreedyft.txt",
    #         "dryad/asorcargreedyfr.txt",
    #         "dryad/asorcargreedytr.txt",
    #         "dryad/asorcargreedyftr.txt",
    #         "dryad/asorcarminimal.txt",
    #         "dryad/asorcarminimalf.txt",
    #         "dryad/asorcarminimalt.txt",
    #         "dryad/asorcarminimalr.txt",
    #         "dryad/asorcarminimalft.txt",
    #         "dryad/asorcarminimalfr.txt",
    #         "dryad/asorcarminimaltr.txt",
    #         "dryad/asorcarminimalftr.txt",
    #         ]
    
    
    
    
#     def combine_variants(read_list, modified_read_list, escape):
#     combined_read_list = read_list
#     for file, all_benchmarks in read_list.iteritems():
#         if file == "vanila_gpuverify.txt" or "exclusive" in file:
#             continue
#         for benchmark, value in all_benchmarks.iteritems():
#             if (benchmark + '.bpl.ice2.bpl')in escape:
#                 combined_read_list[file][benchmark] = modified_read_list[file.replace('variants2', 'variants3')][benchmark]

#     return combined_read_list



# def checkEqual1(iterator):
#     iterator = iter(iterator)
#     try:
#         first = next(iterator)
#     except StopIteration:
#         return True
#     return all(first == rest for rest in iterator)



#    variants3 = map(lambda x: x.replace('variants2', 'variants3'), files)
#     modified_read_list = read_all_files(variants3, timeout, benchmark_pattern, write_pickle=False)
#     combined_read_list = combine_variants(read_list, modified_read_list, escape)

#     sorted_files = analyze(combined_read_list, union_of_files, files, write_workbook=True)
#     print_result(combined_read_list, union_of_files, sorted_files)