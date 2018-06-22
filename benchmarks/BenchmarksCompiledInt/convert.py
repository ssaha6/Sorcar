import os
import re
from operator import itemgetter
import operator
from pprint import pprint 
import sys
from collections import defaultdict

# for file in os.listdir("."):
#     if file.endswith(".bpl"):
        # with open (file, 'r' ) as f:

if len(sys.argv) != 2: 
    sys.exit(2)
    
file = sys.argv[1]
file.strip()
# print str(sys.argv)
print file

with open (file, 'r' ) as f:
    content = f.read()
    
    #initialize global dictionary
    global_dict = defaultdict(dict)
   
    #initialize no. invariants
    maxinv = -1
        
    #match the assertion groups 
    #groups = re.findall('((?:[\s]*assert (?:\{:.*\})*(?:.*)_b(?:[0-9]{0,4}) ==>(?:.*);[\s]*){1,})',content)
    groups = re.findall('((?:assert (?:\{:.*\})*(?:.*);[\s]*){1,})',content)

    
    # if no group found
    if not groups:
        print "no assertions present" 
        sys.exit(1)

    #remove assertion groups with no invariant definition    
    groups = [x for x in groups if re.findall('assert (\{:.*\})*(.*)_b([0-9]{1,4}) ==>(.*);',x) ]
    
    
    if not groups:
        print "no invariant present" 
        sys.exit(1)
    
    # for all assertion groups
    for i in range(len(groups)):
        
        grp = groups[i]
        
        #get individual assertions
        
        matched = re.findall('assert (\{:.*\})*(.*)_b([0-9]{1,4}) ==>(.*);',grp)
        
        
        # split_assertion = re.split('assert (?:\{:.*\})*(?:.*)_b(?:[0-9]{1,4}) ==>(?:.*);',grp)
        # joined_assertion = str(''.join([x.strip() for x in split_assertion if x]))
        # print joined_assertion
        
        
        #syntax of assert: assert Attribute* Expression, Atrribute= {: expr|string }
        #for all row in matched, 
        #row[0] = (\{:.*\}) can be discarded  
        #row[1] = (.*), whatever comes before _bxx.. might be another implication pi ==> _bi.. 
        #row[2] = ([0-9]{0,4}), _b index number
        #row[3] = (.*);, the right hand side expression of the implication
        
        #initialize map
        indexed = {'-1':''}
            
        
            
        # rule 1
        # (( bi => x) and ( bi => y)) <=> ( bi => (x and y))
        for row in matched:
            # if indexed row has not been seen before       
            if indexed.get(row[2]) == None:  
                # rule 2 
                # transform (p => bi => expr) to (bi => p => expr)
                # if the expression before the bi is not empty, 
                # then assuming it is of the form, p => .. save the expression of bi as (p => expr)  
                indexed[row[2]] =  ' ( ' + row[1].strip() + ' ' + row[3].strip() + ' ) '
                # then save it in index.. 
                
            else:
                # if bi is seen before
                indexed[row[2]] = indexed[row[2]] + ' && ( ' + row[1].strip() + ' ' + row[3].strip() + ' ) '
                #then save the and of, the past expression with this expression. 
                
                
        # get the expressions sorted by bi index.        
        # from the lambda p: take the first element of p, and convert it to int
        # from all the b_i indexes, get all the indexes in int, and get them sorted. 
        sorted_indexed = sorted(indexed.items(), key=lambda p: int(p[0]))
        # pprint (sorted_indexed)
        

        # the maximum index of the bi indexes. Can be combined with the sorted_index 
        # ?????? need to change.. global maximum.. maximum of earlier maximum and local maxima
        maxinv = max(int(max(sorted_indexed,key = lambda p: int(p[0]))[0]), int(maxinv))
        
        
        # # make a dictionary from the indexed expressions
        # # assuming invariants in groups are disjoint
        # global_dict.update(dict(sorted_indexed))
        
        
        #update global dictionary
        global_dict[i]['str'] = grp
        global_dict[i]['dict'] = dict(sorted_indexed)
        # global_dict[i]['assertion'] = joined_assertion
        
        

    # remove all bxx declarations
    new_content = re.sub('const {:existential true} _b[0-9]{0,4}: bool(.*);', '' , content)
    
        
    
      
    #substitute invariant definitions
    for i in range(len(groups)):            
        
        #exact string that needs to be substututed
        grp = groups[i]
        
        
        # domains = [int(x[0]) for x in global_dict[int(i)]['dict']] 
        domains = global_dict[int(i)]['dict'].keys()
        # print domains
        
        # sys.exit()
        
        inv = 'assert  my_inv ( '
        for j in range(0,int(maxinv) + 1) :      
            if j != 0: 
                inv += ', '
            if  str(j) in domains: 
                    inv += str(global_dict[int(i)]['dict'][str(j)])
            else:
                    inv += ' true '     
        
        inv = inv + ' ); \n'           
        # inv = inv + ' ); \n' + str(global_dict[int(i)]['assertion'])
        
        
        index = -1        
        for p in filter(None, [x.strip() for x in grp.splitlines()]):
            if re.search('assert (\{:.*\})*(.*)_b([0-9]{1,4}) ==>(.*);',str(p)) : 
                index = new_content.find(p)
                new_content = new_content[:index] + new_content[index+len(p):]
            
        new_content = new_content[:index] + '\n' + inv + '\n' + new_content[index:]
         
        
    #############################
        
    #construct my_inv function declaration
    fndecl = 'function {:existential true} my_inv (' 
    for i in range(0,int(maxinv) + 1) :
        fndecl = fndecl + '\n b' + str(i).zfill(4) + ': bool,'
    fndecl = fndecl[:-1] + '\n ) : bool;\n'
    
    
    # add invariant declaration
    new_content = fndecl + new_content
    
    #only for int benchmarks
    #replace "function {:inline true}" with "function"
    new_content = re.sub('function \{\:inline true\}', 'function ' , new_content)
    
    #write new ice_file
    fw = open(file + '.ice2.bpl', 'w')
    fw.write(new_content)
            
    # print file
    sys.exit()
            
            
            
            
# rule 3
# #insert the invariant def at the position of last _b0
# #if definition of b0 not present, then exit, as there are no invariants... ???
# try:
#     # find all positions where _b0 is matched.. save the last matched pos
#     for i in re.finditer('assert (\{:.*\})*(.*)_b0 ==>(.*);',new_content):
#         lastmatch = i 
#     lastmatch_pos = lastmatch.span()[1]
# except:
#     # no _b0 exists.. so there might not be any invariant.
#     print "no invariant present"
#     sys.exit(2)
# new_content = new_content[:lastmatch_pos] + '\n' + inv + new_content[lastmatch_pos:]
# # print new_content
# #replace all invariant definitions    
# new_content = re.sub('assert (\{:.*\})*(.*)_b([0-9]{0,4}) ==>(.*);', '' , new_content)
        
            
# for i in range(0,int(maxinv) + 1) :      
#     inv = 'assert  my_inv ( ' 
#     for j in range(0,int(maxinv) + 1) :
#         if j != 0: 
#             inv += ', '
#         if i == j :  
#             inv += global_dict[str(i)]
#         else:
#             inv += ' true '
#     inv += ' ); '    
    
#     try:
#         # find all positions where _b0 is matched.. save the last matched pos
#         # print 'assert (\{:.*\})*(.*)_b' + str(i) + ' ==>(.*);'
#         for k in re.finditer('assert (\{:.*\})*(.*)_b' + str(i) + ' ==>(.*);',new_content):
#             lastmatch = k 
#         lastmatch_pos = lastmatch.span()[1]
#     except:
#         # no _b0 exists.. so there might not be any invariant.
#         print "no invariant present" + str(i)
#         sys.exit(2)
#     new_content = new_content[:lastmatch_pos] + '\n' + inv + new_content[lastmatch_pos:]
#     # print new_content
#     #replace all invariant definitions    
#     new_content = re.sub('assert (\{:.*\})*(.*)_b' + str(i) + ' ==>(.*);', '' , new_content)
    

# # new_content = re.sub('assert (\{:.*\})*(.*)_b' + str(i) + ' ==>(.*);', inv_fn_call , new_content)
    