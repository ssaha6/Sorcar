import os
import re
from operator import itemgetter
import operator
from pprint import pprint 
import sys
from collections import defaultdict
import glob
import fnmatch
import operator
from pprint import pprint

regex =  "b([0-9]{4}):\sbool\n\s\)\s:\sbool;"
sort={}

matches = []
# for root, dirnames, filenames in os.walk('.'):
#     for filename in fnmatch.filter(filenames, '*.bpl.ice2.bpl'):
#         matches.append(os.path.join(root, filename))
        
with open('single_inv_files') as f:
    matches = f.readlines()

matches = [x.strip() for x in matches] 

for file in matches:
    with open (file, 'r' ) as f:
        content = f.read()
        
        groups = re.findall(regex,content)
        try:
            # print file, " : ", int(groups[0])  
            sort[file ] = int(groups[0])  
        except:
            continue
        
sorted_files = sorted(sort.items(), key=operator.itemgetter(1),reverse=True)

for files,number in sorted_files :
    print files , "," , number
    
    