#!/bin/sh
# POSIX

die() {
    printf '%s\n' "$1" >&2
    exit 1
}

show_help() {
echo "Usage: sh runner.sh [options] 
Options:
--tool          Selects the tool to run the experiments on.
                Valid options are:
                    gpuverify, neider-etal, sorcar-max,
                    sorcar-greedy, sorcar-minimal, sorcar-first,

--benchmark     Selects the type of benchmark.
                Valid options are: gpuverify, dryad.   

--output        File where the tool output log is going to be saved.

--help          Shows this message."
}


output=
benchmark=
tool=

while :; do
    case $1 in
        -h|-\?|--help)
            show_help    
            exit
            ;;
        --output)     
            if [ "$2" ]; then
                output=$2
                shift
            else
                die 'ERROR: "--output" requires a non-empty option argument.'
            fi
            ;;
        --benchmark)     
            if [ "$2" ]; then
                benchmark=$2
                shift
                case $benchmark in
                    gpuverify|dryad)
                        ;;
                    *)
                         die 'ERROR: Invalid benchamrk option, Valid options: gpuverify, dryad.'
                esac

            else
                die 'ERROR: "--benchmark" requires option. Valid options: gpuverify, dryad.'
            fi
            ;;
        --tool)     
            if [ "$2" ]; then
                tool=$2
                shift
                case $tool in
                    gpuverify|neider-etal|sorcar-max|sorcar-greedy|sorcar-minimal|sorcar-first)
                        ;;
                    *)
                         die 'ERROR: Invalid tool option, Valid options: gpuverify, neider-etal, sorcar-max, sorcar-greedy, sorcar-minimal, sorcar-first.'
                esac

            else
                die 'ERROR: "--tool" requires option. Valid options: gpuverify, neider-etal, sorcar-max, sorcar-greedy, sorcar-minimal, sorcar-first.'
            fi
            ;;
        --)              # End of all options.
            shift
            break
            ;;
        -?*)
            printf 'WARN: Unknown option (ignored): %s\n' "$1" >&2
            ;;
        *)               # Default case: No more options, so break out of the loop.
            break
    esac

    shift
done

if [ -z "$output" ] || [ -z "$benchmark" ] || [ -z "$tool" ]
then
    die 'All options are not provided'
fi


if [ "$tool" = "gpuverify" ]  &&  [ "$benchmark" =  "dryad" ] 
then
    die 'ERROR: Tool gpuverify cant solve dryd benchmarks.' 
elif  [ "$tool" = "neider-etal" ] && [ "$benchmark" =  "gpuverify" ] 
then
    die 'ERROR: Tool neider-etal cant solve gpuverify benchmarks'.
fi



dirp="$(dirname $output)"
mkdir -p $dirp



if [ "$benchmark" =  "gpuverify" ] 
then
    case $tool in
        gpuverify) 
            sh run_boogie.sh  $output
            ;;
        sorcar-max) 
            sh run.sh "-a sorcar " $output
            ;; 
        sorcar-greedy) 
            sh run.sh "-a sorcar-greedy "  $output
            ;; 
        sorcar-minimal) 
            sh run.sh "-a sorcar-minimal "  $output
            ;; 
        sorcar-first) 
            sh run.sh "-a sorcar-first "  $output
            ;;
        *)
            die ''
    esac

elif [ "$benchmark" =  "dryad" ] 
then
    case $tool in
        neider-etal) 
            sh run_dryad_boogie.sh  $output
            ;;
        sorcar-max) 
            sh run_dryad.sh "-a sorcar"  $output
            ;; 
        sorcar-greedy) 
            sh run_dryad.sh "-a sorcar-greedy "  $output
            ;; 
        sorcar-minimal) 
            sh run_dryad.sh "-a sorcar-minimal "  $output
            ;; 
        sorcar-first) 
            sh run_dryad.sh "-a sorcar-first "  $output
            ;;
        *)
            die ''
    esac
else 
    die ''
fi 



echo "done"


