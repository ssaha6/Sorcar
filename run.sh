
# call using: sh run.sh "-a sorcar -f -t -r" "sorcar_f_t_r.txt"  
SORCAR_OPTION=$1
OUTPUT_FILE=$2

PREFIX=/home/gv/gv
cd $PREFIX

BOOGIE_DIR="$PREFIX/boogie_horn_sorcar_false/Binaries/"
# BOOGIE_DIR="boogie_lables/Binaries/"


#GPUverify sources
SOURCELIST="$PREFIX/benchmarks/BenchmarksCompiled/inv_ice2files"
SOURCEDIR="$PREFIX/benchmarks/BenchmarksCompiled"
# PRELUDEFILE=""


#Dryad Sources
# SOURCELIST="../../benchmarks/BenchmarksDryad/phase3invfiles"
# SOURCEDIR="../../benchmarks/BenchmarksDryad/"
# PRELUDEFILE="../../benchmarks/BenchmarksDryad/Vcc3Prelude.array.bpl"



# #Abstract Houdini Boogie flags
# BOOGIE_OPT+=" /doNotUseLabels /z3opt:smt.relevancy=0  /doModSetAnalysis "
# BOOGIE_OPT+=" /proverOpt:OPTIMIZE_FOR_BV=true "
# BOOGIE_OPT+=" /abstractHoudini:IA[HoudiniConst]  "
# BOOGIE_OPT+=" /errorLimit:1 "


# # #Gpuverify Sorcar Boogie flags
BOOGIE_OPT+=" /doNotUseLabels  /z3opt:smt.relevancy=0  /doModSetAnalysis "
BOOGIE_OPT+=" /proverOpt:OPTIMIZE_FOR_BV=true "
# #REMOVE ERRORLIMIT
# BOOGIE_OPT+=" /errorLimit:1 "


# Dryad Sorcar Boogie flags
# # BOOGIE_OPT+=" /doNotUseLabels  /z3opt:smt.relevancy=0  /doModSetAnalysis "
# # BOOGIE_OPT+=" /proverOpt:OPTIMIZE_FOR_BV=true "
# # #REMOVE ERRORLIMIT
# # BOOGIE_OPT+=" /errorLimit:1 "


# func() {

OUTPUT="$PREFIX/results/variants/$OUTPUT_FILE"
TIMEOUT="600s" 



pushd $BOOGIE_DIR

for file in $(cat $SOURCELIST ) ; 
do 

echo "#################"
date
echo "OUTPUT=$OUTPUT"


{  time  timeout  $TIMEOUT ./Boogie.exe  /nologo /env:2 /typeEncoding:m  /mv:-  /enhancedErrorMessages:1  /z3exe:$PREFIX/../z3/bin/z3  /useArrayTheory /prover:SMTLib /noinfer /contractInfer /trace  /mlHoudini:sorcar /learnerOptions:"$SORCAR_OPTION"  $BOOGIE_OPT $PRELUDEFILE $SOURCEDIR/$file ;
}


    echo "FILE:$file"
        
    ps -aeW | grep z3.exe       | awk '{print $1}' | xargs --no-run-if-empty -I {} taskkill /F /pid {}
    ps -aeW | grep Boogie.exe   | awk '{print $1}' | xargs --no-run-if-empty -I {} taskkill /F /pid {}
    ps -aeW | grep timeout      | awk '{print $1}' | xargs --no-run-if-empty -I {} taskkill /F /pid {}
    ps -aeW | grep sorcar       | awk '{print $1}' | xargs --no-run-if-empty -I {} taskkill /F /pid {}


done 2>&1 | tee $OUTPUT

popd


# }


# Sorcar learnerOptions
# -a <algorithm>        Selects the learning algorithm. Valid options are:
#                    	horndini, sorcar, sorcar-first
# -f                    Runs Horndini in the first round.
# -t                    Alternates Horndini and Sorcar between rounds.
# -r                    Resets the set R in each round.


#options
#" -a sorcar -f -t -r ","ftr"
#" -a sorcar -f -t ", 	"ft"
#" -a sorcar -f -r ", 	"fr"
#" -a sorcar -f ", 		"f"
#" -a sorcar -t -r ",	"tr"
#" -a sorcar -t ", 		"t"
#" -a sorcar -r ",		"r"
#" -a sorcar ", 		"vanila"



# Sorcar Mode
# 1) adding all relevant attributes and
# 2) adding only one relevant attribute per negative example/Horn constraint.


#Abstract Houdini Options
# Supported domains are:
#   HoudiniConst
#   Intervals
#   ConstantProp
#   PredicateAbs
#   PredicateAbsFull
#   ImplicationDomain
#   PowDomain
#   EqualitiesDomain
#   IA[HoudiniConst]
#   IA[ConstantProp]
#   IA[Intervals]
#   IA[PowDomain]
  
# {:abstractDomain "ImlpicationDomain"}
  
  
#    time  /usr/bin/timeout  300s ./Boogie.exe  /nologo /env:2 /typeEncoding:m  /mv:-  /enhancedErrorMessages:1  /z3exe:../../z3/z3-4.5.0-x64-win/bin/z3.exe  /useArrayTheory /prover:SMTLib /noinfer /contractInfer /trace /doNotUseLabels /z3opt:smt.relevancy=0  /doModSetAnalysis  /proverOpt:OPTIMIZE_FOR_BV=true  /mlHoudini:sorcar /learnerOptions:"-a sorcar"  /errorLimit:1  
# 
