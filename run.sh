#!/bin/bash

# call using: sh run.sh "-a sorcar -f -t -r" 
SORCAR_OPTION=$1
if [ -z "$SORCAR_OPTION" ];  then
    exit
fi

OPTION_KEY=`echo $SORCAR_OPTION | sed -e 's/[ -]//g'`

# ------------------------------------------------- #
PREFIX=`pwd`
export LD_LIBRARY_PATH=../../z3/bin:$LD_LIBRARY_PATH


BOOGIE_DIR="$PREFIX/boogie_horn_sorcar_false/Binaries/"
Z3_BIN="$PREFIX/z3/bin/z3"

OUTPUT="$PREFIX/results/gpuverify/$OPTION_KEY.txt"
TIMEOUT="1200s" 

# ------------------------------------------------- #

#GPUverify sources
SOURCELIST="$PREFIX/benchmarks/BenchmarksCompiled/inv_ice2files"
SOURCEDIR="$PREFIX/benchmarks/BenchmarksCompiled"
PRELUDEFILE=""

#Dryad Sources
# SOURCELIST="$PREFIX/benchmarks/BenchmarksDryad/phase3invfiles"
# SOURCEDIR="$PREFIX/benchmarks/BenchmarksDryad/"
# PRELUDEFILE="$PREFIX/benchmarks/BenchmarksDryad/Vcc3Prelude.array.bpl"


# ------------------------------------------------- #

#Create workspace
WORK_DIR="$SOURCEDIR/$OPTION_KEY"
rm -rf $WORK_DIR

for file in $(cat $SOURCELIST) ; 
do
    mkdir -p `dirname $WORK_DIR/$file` 
    cp $SOURCEDIR/$file  $WORK_DIR/$file 
done

#else
# WORK_DIR="$SOURCEDIR"

#copy prelude file
# WORKPRELUDEFILE=$PRELUDEFILE

# ------------------------------------------------- #

BOOGIE_OPT=" /doNotUseLabels  /z3opt:smt.relevancy=0  /doModSetAnalysis  /proverOpt:OPTIMIZE_FOR_BV=true "

# #Abstract Houdini Boogie flags
# BOOGIE_OPT+=" /doNotUseLabels /z3opt:smt.relevancy=0  /doModSetAnalysis "
# BOOGIE_OPT+=" /proverOpt:OPTIMIZE_FOR_BV=true "
# BOOGIE_OPT+=" /abstractHoudini:IA[HoudiniConst]  "
BOOGIE_OPT+=" /errorLimit:1 "


# # #Gpuverify Sorcar Boogie flags
# BOOGIE_OPT+=" /doNotUseLabels  /z3opt:smt.relevancy=0  /doModSetAnalysis "
# BOOGIE_OPT+=" /proverOpt:OPTIMIZE_FOR_BV=true "
# #REMOVE ERRORLIMIT
# #BOOGIE_OPT+=" /errorLimit:1 "


# Dryad Sorcar Boogie flags
# # BOOGIE_OPT+=" /doNotUseLabels  /z3opt:smt.relevancy=0  /doModSetAnalysis "
# # BOOGIE_OPT+=" /proverOpt:OPTIMIZE_FOR_BV=true "
# # #REMOVE ERRORLIMIT
# # BOOGIE_OPT+=" /errorLimit:1 "


USUAL_OPT=" /nologo /env:2 /typeEncoding:m  /mv:-  /enhancedErrorMessages:1  /useArrayTheory /prover:SMTLib /noinfer /contractInfer /trace "

# ------------------------------------------------- #


cd $BOOGIE_DIR

for file in $(cat $SOURCELIST) ; 
do 

echo "#################"
date
echo "KEY=$OPTION_KEY"
echo "OUTPUT=$OUTPUT"


(
    time  /usr/bin/timeout $TIMEOUT mono ./Boogie.exe  $USUAL_OPT /z3exe:$Z3_BIN /mlHoudini:sorcar /learnerOptions:"$SORCAR_OPTION"  $BOOGIE_OPT $PRELUDEFILE $WORK_DIR/$file ;
)

      
    # ps  | grep z3       | awk '{print $1}' | xargs --no-run-if-empty -I {} kill -9 {}
    # ps  | grep Boogie   | awk '{print $1}' | xargs --no-run-if-empty -I {} kill -9 {}
    # ps  | grep mono     | awk '{print $1}' | xargs --no-run-if-empty -I {} kill -9 {}  
    # ps  | grep timeout  | awk '{print $1}' | xargs --no-run-if-empty -I {} kill -9 {}



echo "FILE:$file"
        
done 2>&1 | tee $OUTPUT




# ------------------------------------------------- #

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
