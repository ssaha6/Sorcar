#!/bin/bash

# ------------------------------------------------- #
# Usage: call using 
# sh run.sh "gpuverify" "-a sorcar -f -t -r"
# sh run.sh "dryad"     "-a sorcar -f -t -r"
# sh run.sh "dryad"     "-a abstracthoudini"


# ------------------------------------------------- #
#Sanitize inputs

SORCAR_OPTION=$1
if [ -z "$SORCAR_OPTION" ];  then
    exit
fi

OPTION_KEY=`echo $SORCAR_OPTION | sed -e 's/[ -]//g'`


# ------------------------------------------------- #
#Executable directories

PREFIX=/mnt/d/Docker

BOOGIE_DIR="$PREFIX/boogie_horn_sorcar_false/Binaries/"
Z3_BIN="$PREFIX/../z3/z3-ubuntu/build/z3"

OUTPUT_FILE="$PREFIX/results/dryad/$OPTION_KEY.txt"
TIMEOUT="10s" 


# ------------------------------------------------- #
# Setting flags and directories

#Setting source directory
SOURCELIST="$PREFIX/benchmarks/BenchmarksDryad/phase3invfiles"
SOURCEDIR="$PREFIX/benchmarks/BenchmarksDryad"
 

#Setting work directory
WORK_DIR="$SOURCEDIR/$OPTION_KEY"


#Setting prelude file
ORIGPRELUDEFILE="$SOURCEDIR/Vcc3Prelude.array.bpl"
PRELUDEFILE="$WORK_DIR/Vcc3Prelude.array.bpl"


#Flags
BOOGIE_OPT=" " #/doNotUseLabels /z3opt:smt.relevancy=0  /doModSetAnalysis "  #" /proverOpt:OPTIMIZE_FOR_BV=true "
 

USUAL_OPT=" /nologo /env:2 /typeEncoding:m  /mv:- /enhancedErrorMessages:1  /useArrayTheory /prover:SMTLib /noinfer /contractInfer /trace "


# ------------------------------------------------- #
# Set up workspace and copy files 

# Remove old dir
rm -rf $WORK_DIR 

#Copy files
for file in $(cat $SOURCELIST) ; do
    mkdir -p `dirname $WORK_DIR/$file` 
    cp $SOURCEDIR/$file  $WORK_DIR/$file 
done

#copy prelude file
cp $ORIGPRELUDEFILE  $PRELUDEFILE 

#make output directory
mkdir -p `dirname $OUTPUT_FILE` 


# ------------------------------------------------- #
# Run 

cd $BOOGIE_DIR

for file in $(cat $SOURCELIST) ; 
do 

echo "#################"
date
echo "KEY=$OPTION_KEY"
echo "OUTPUT_FILE=$OUTPUT_FILE"


case $OPTION_KEY in
aabstracthoudini) 
    (
        time -p  /usr/bin/timeout $TIMEOUT mono ./Boogie.exe  $USUAL_OPT /z3exe:$Z3_BIN  $BOOGIE_OPT  /abstractHoudini:IA[HoudiniConst] $PRELUDEFILE  $WORK_DIR/$file ;
    ) ;;


*) 
    (
        time -p  /usr/bin/timeout $TIMEOUT mono ./Boogie.exe  $USUAL_OPT /z3exe:$Z3_BIN  $BOOGIE_OPT /mlHoudini:sorcar /learnerOptions:"${SORCAR_OPTION}"  $PRELUDEFILE  $WORK_DIR/$file ;
    ) ;;

esac

    # ps  | grep z3       | awk '{print $1}' | xargs --no-run-if-empty -I {} kill -9 {}
    # ps  | grep Boogie   | awk '{print $1}' | xargs --no-run-if-empty -I {} kill -9 {}
    # ps  | grep mono     | awk '{print $1}' | xargs --no-run-if-empty -I {} kill -9 {}  
    # ps  | grep timeout  | awk '{print $1}' | xargs --no-run-if-empty -I {} kill -9 {}

echo "FILE:$file"
        
done 2>&1 | tee "$OUTPUT_FILE"



# ------------------------------------------------- #
# references

# Sorcar learnerOptions
# -a <algorithm>        Selects the learning algorithm. Valid options are:
#                       horndini, sorcar, sorcar-first
# -f                    Runs Horndini in the first round.
# -t                    Alternates Horndini and Sorcar between rounds.
# -r                    Resets the set R in each round.


#options
#" -a sorcar -f -t -r ","ftr"
#" -a sorcar -f -t ",   "ft"
#" -a sorcar -f -r ",   "fr"
#" -a sorcar -f ",      "f"
#" -a sorcar -t -r ",   "tr"
#" -a sorcar -t ",      "t"
#" -a sorcar -r ",      "r"
#" -a sorcar ",         "vanila"



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
