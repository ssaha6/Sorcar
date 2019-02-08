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
import glob


import os
import re
for filename in os.listdir('.'):
    if re.match(".*\.bpl\.ice2\.bpl", filename):
        # filename = "dl_reverse.bpl.ice2.bpl "
        with open(filename, 'r') as f:
            data=f.read() 
            # print data
            
            invpattern = "invariant\s+\(p([0-9]+)\s+==\s+(.*)\);"
            p = re.compile(invpattern)
            allinv =  p.findall(data)
            mapinv = {}
            for (index, inv) in allinv:
                mapinv[int(index)] = inv
            
            invstring  = "invariant my_inv (" 
            for i in range(0,len(mapinv)):
                invstring += mapinv[i] + ", \n"
            
            invstring += "true ) ;"
            # print invstring
            # "invariant\s+my_inv\s*\((?:\s*p[0-9]+\s*\,)*\s*true\s*\)\s*;"
            invfnpattern = "invariant\s+my_inv\s*\((?:\s*p[0-9]+\s*\,)*\s*true\s*\)\s*;"
            data =  re.sub(invpattern, " ", data)
            data = re.sub(invfnpattern, invstring, data) 
            
            # print data       
            with open(filename + '.mod.bpl', 'w') as the_file:
                the_file.write(data)
            
                            
            # sys.exit(0)

# with open (file, "r" ) as f:
#         content = f.read()
#         
