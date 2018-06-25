import argparse
import collections
import csv
import json
import logging
import operator
import operator
import os
import re
import subprocess
import sys
import time
from collections import defaultdict
from operator import itemgetter
from pprint import pprint
from pprint import pprint
from prettytable import PrettyTable
from itertools import chain, combinations
import datetime

now = datetime.datetime.now()


def all_subsets(ss):
    return chain(*map(lambda x: combinations(ss, x), range(0, len(ss)+1)))


# -a <algorithm>        Selects the learning algorithm. Valid options are:
#                       horndini, sorcar, sorcar-first
# -f                    Runs Horndini in the first round.
# -t                    Alternates Horndini and Sorcar between rounds.
# -r                    Resets the set R in each round.



algorithms = ["sorcar", "sorcar-first", "horndini"] 
options    = [ "f", "t", "r"]


def create_options():
    ret = []
    for algo in algorithms:
        for opt in all_subsets(options):
            command_prompt =  str("-a " + algo + " " + " ".join(list(map(lambda x: "-" + x + " ", opt))))
            file_name = str(algo + "_" + "".join(list(opt)) + ".txt")
            ret.append((command_prompt,file_name))

    return ret



for (option,file) in create_options():
    command = "sh run.sh \"" + option + "\" \"" + file + "\""
    print(str(now))
    print(command)
    try:
        subprocess.check_output(command, shell=True)    
    except:
        pass

# command = "sh run.sh \"-a sorcar -t  -r \" \"sorcar_tr.txt\"" 
# print(str(now))
# print(command)
# subprocess.check_output(command, shell=True)    
#     
# 
# command = "sh run.sh \"-a sorcar -f  -t  -r \" \"sorcar_ftr.txt\""
# print(str(now))
# print(command)
# subprocess.check_output(command, shell=True)    
# 
#  
