

mkdir -p results/gpuverify
mkdir -p results/dryad

rm results/dryad/asorcar.txt || true
sh run_dryad.sh "-a sorcar "    

rm results/dryad/asorcargreedy.txt || true
sh run_dryad.sh "-a sorcar-greedy "    

rm results/gpuverify/asorcar.txt || true
sh run.sh "-a sorcar "    


# Remove old results folder
# rm -rf results


# Make directories
# mkdir -p results/gpuverify
# mkdir -p results/dryad

# Check directory
# Check timeout = 1200s
# check parameter
# =============================================


# Boogie/Houdini on dryad
# output: results/dryad/boogie.txt
# sh run_dryad_boogie.sh



#run horndini/sorcar on dryad benchmakrs
#output: results/dryad/<key>.txt
# sh run_dryad.sh "-a horndini "    
# sh run_dryad.sh "-a sorcar "    
# sh run_dryad.sh "-a sorcar-greedy "    
# sh run_dryad.sh "-a sorcar-minimal "    
# sh run_dryad.sh "-a sorcar-first "    




# =============================================


#boogie/houdni on Gpuverify benchmarks
# output: results/gpuverify/boogie.txt
# sh run_boogie.sh 



#run horndini/sorcar on gpuverify benchmakrs
#output: results/gpuverify/<key>.txt
# sh run.sh "-a horndini "    
# sh run.sh "-a sorcar "    
# sh run.sh "-a sorcar-greedy "    
# sh run.sh "-a sorcar-minimal "    
# sh run.sh "-a sorcar-first "    



# run gpuverify tool on gpuverify benchmarks
# output: results/gpuverify/vanila_gpuverify.txt
# sh run_gpuverify.sh         



