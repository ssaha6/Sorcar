#!/bin/bash

# PREFIX=/mnt/d/Docker
PREFIX=/mnt/d/Docker


SOURCELIST="$PREFIX/benchmarks/BenchmarksCompiled/inv_source_files"
SOURCEDIR="$PREFIX/benchmarks/BenchmarksCompiled"


OUTPUT="$PREFIX/results/vanila_gpuverify.txt"
TIMEOUT="60s" 

# ------------------------------------------------- #

for file in $(cat $SOURCELIST ) ; 
do 

	FILE_PATH=$SOURCEDIR/$file

	echo "#################"
	date

	param=`head -n2 $FILE_PATH | tail -1 | cut -c 3-`
	all_param=" --keep-temps --verbose --infer-info --time --timeout=0  --debug  --boogie-opt=/trace --solver=z3  $param" 

	echo "FILE: ${file}"
	echo "PARAM: ${all_param}"


	(
		time  /usr/bin/timeout  $TIMEOUT python gpuverify/GPUVerify.py  $all_param $FILE_PATH  ; 
	)
	
	echo "FILE:$file"

	# ps -aeW | grep z3.exe       | awk '{print $1}' | xargs --no-run-if-empty -I {} taskkill /F /pid {}
 	# ps -aeW | grep Boogie.exe   | awk '{print $1}' | xargs --no-run-if-empty -I {} taskkill /F /pid {}
 	# ps -aeW | grep timeout      | awk '{print $1}' | xargs --no-run-if-empty -I {} taskkill /F /pid {}

done 2>&1 | tee $OUTPUT




# extract cu or cl files :
# ---------------------------------------------
# for file in $(cat only); do  if [ -e $file.cl ] ; then echo "$file.cl" ; else echo "$file.cu"; fi  done  > inv_source_files 



# RUN GPUVERIFY SCRIPT TO RUN ALL BENCHMARKS
# ---------------------------------------------
# python gvtester.py --write-pickle run.pickle testsuite/ 
# python gvtester.py --compare-pickle testsuite/baseline.pickle run.pickle
# 
# You should expect the last line of output to be.:
# INFO:testsuite/baseline.pickle = new.pickle
# This means that your install passes the regression suite.
# 



# Python script... subprocess call needs work to cleanup the child mess
# import re
# import os.path
# import sys
# import subprocess32
# 
# 
# BENCHMARK_FOLDER = "benchmarks/BenchmarksCompiled"
# FILE_LIST =  "benchmarks/BenchmarksCompiled/inv_ice2files"
# GPUVERIFY_BINARY = "gpuverify/GPUVerify.py"
# GPUVERIFY_FLAG = " --keep-temps --verbose --infer-info --time --timeout=0  --debug  --boogie-opt=/trace --solver=z3 "
# 
# def read_file_list(file_list):
# 	all_files = []
# 	with open(file_list) as f:
# 	    for filename in f:
# 	        all_files.append(filename.strip())
# 	return all_files
# 
# 
# def resolve_source_name(all_files):
# 	source_mapping = {}
# 	for filename in all_files:
# 		filename = filename.strip()
# 		filepath =BENCHMARK_FOLDER + '/' + re.sub('\.bpl\.ice2\.bpl$', '', filename)
# 		if os.path.isfile(filepath + '.cu') :
# 			source_mapping[filename] = filepath + '.cu'
# 		elif os.path.isfile(filepath + '.cl') :
# 			source_mapping[filename] = filepath + '.cl'
# 		else :
# 			source_mapping[filename] = 'error'
# 
# 	return source_mapping
# 
# 
# 
# def get_source_flags(all_files, source_name_mapping):
# 	flag_mapping = {}
# 	for file in all_files:
# 		source_file = source_name_mapping[file]
# 		myfile = open(source_file)
# 		second_line  = myfile.readlines()[1]
# 		flag = second_line[2:]
# 		flag_mapping[file] = flag.strip()
# 
# 	return flag_mapping
# 
# 
# def evaluate(gpuverify_binary, gpuverify_flag, source_file, source_flag):
# 	command = 'python ' + gpuverify_binary + ' ' + gpuverify_flag  + ' ' + source_flag  + ' ' + source_file 
# 	print '##################'
# 	print command
# 	try:
# 		output = subprocess32.check_output(command ,shell=True,  stderr=subprocess32.STDOUT, timeout=10)
# 		print output
# 	except Exception, e:
# 		print 'error'  + str(e)
# 		sys.exit(0)
# 
# 
# 
# all_files = read_file_list(FILE_LIST)
# source_name_mapping = resolve_source_name(all_files)
# source_flag_mapping = get_source_flags(all_files, source_name_mapping)
# 
# for file in all_files:
# 	output = evaluate(GPUVERIFY_BINARY, GPUVERIFY_FLAG, source_name_mapping[file], source_flag_mapping[file])
# 

