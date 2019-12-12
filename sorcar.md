Sorcar
==================
This artifact is provided as a Docker image running Ubuntu 16.04 and has been created following the steps mentioned in 
the section [Setup](#Setup). The setup and the execution instructions will work on any 64-bit Linux Environment. 

Let `$ARTIFACT_ROOT` refers to root folder of the artifact, which for this image is `/root/Docker`. 


## Importing the docker image
-----------------------------------------
Download the Docker image file, `sas_image.tar`, and load it in docker by, `docker load -i path/to/sas_image.tar`

To get the command-prompt execute the following:
```bash
docker run -it sas/scripts
cd /root/Docker
```



## Running The Experiments
-----------------------------------------
The running script to execute all the different configurations/experiments in our Artifact is `$ARTIFACT_ROOT/runner.sh`. The command line arguments of `runner.sh` are as follows: 


```
Usage: runner.sh [options] 
Options:
    --tool        Selects the tool to run the experiments on.  
                    Valid options are:  
                        sorcar-max, sorcar-greedy, sorcar-minimal, sorcar-first,  
                        gpuverify, neider-etal. 
                        
    --benchmark     Selects the type of benchmark. Valid options are:  
                        gpuverify, dryad.   
        
    --output        The output file where the tool output log is going to be saved.   
```


The switch `tool` specifies the tool to run, and the switch `benchmark` specifies the benchmark suite to run the selected tool on. Note that the configurations "`--tool gpuverify --benchmark dryad`" and "`--tool neider-etal --benchmark gpuverify`" are invalid. The `output` parameter specifies the path to the file where the execution output will be saved. The name and location of this file can be arbitrary. These output files will be later used to generate a table containing all the results comparing the different tools. 


For the following configurations, the exact command to run the corresponding experiment would be

1. Running a sorcar variant (say sorcar-max) on the GPUVerify benchmarks:  
    `$sh runner.sh --tool sorcar-max --benchmark gpuverify --output results/sorcar-max-gpuverify.txt`

2. Running the GPUVerify tool on the GPUVerify benchmarks:  
    `$sh runner.sh --tool gpuverify --benchmark gpuverify --output results/gpuverify-gpuverify.txt`


3. Running a sorcar variant (say sorcar-max) on the Dryad benchmarks:  
    `$sh runner.sh --tool sorcar-max --benchmark dryad --output results/sorcar-max-dryad.txt`

4. Running the tool from Neider et. al. on the Dryad benchmarks:  
    `$sh runner.sh --tool neider-etal --benchmark dryad --output results/neider-etal-dryad.txt`




## Reading the experimental results 
-----------------------------------------
The readscript (`results/read.py`) takes in the different output files of the tools, and creates a excel sheet tabulating the performance of the tools on all the benchmarks. The legend used in this table is as follows: 

1. **Status**: The final outcome of the execution, which can be one of these three values:
    1. **Verified**: The tool was able to verify the program correct.
    2. **Timeout**: Timeout of 1200.0s.
    3. **Terminate-NoConjInv**: Tool terminates, and says there is no conjuntive inductive invariant, that proves the program correct.
    
2. **#Predicates**: Total number of candidate predicates.        
            
3. **#Predicates in Inv**: Number of predicates in the final inductive invariant.        
            
4. **#Rounds**: Number of rounds between the learner and the teacher.        
            
5. **Time**: Total time taken by the tool in seconds.        



Note that the log files, input to the readscript, should be all from the same benchmark suite. The exact command to run the readscript, for example, to compare the log files `sorcar-max-gpuverify.txt`, `sorcar-greedy-gpuverify.txt`, and `gpuverify-gpuverify.txt` generated correspondingly by the tools, `sorcar-max`, `sorcar-greedy` and `GPUVerify` on the on the GPUVerify benchmarks, would be:

```bash
cd $ARTIFACT_ROOT/results
python read.py --gpuverify sorcar-max-gpuverify.txt sorcar-greedy-gpuverify.txt gpuverify-gpuverify.txt
```

Similarly to compare the log files `sorcar-max-dryad.txt`, `sorcar-greedy-dryad.txt`, and  `neider-etal-dryad.txt` generated correspondingly by the tools `sorcar-max`, `sorcar-greedy` and the tool from Neider et. al., the command is as follows:  

```bash
cd $ARTIFACT_ROOT/results
python read.py --dryad sorcar-max-dryad.txt sorcar-greedy-dryad.txt neider-etal-dryad.txt
```


## Setup
-----------------------------------------
This section contains the steps required to setup the different components of the artifact. They are already executed in the provided Docker image, so one can skip this section. However these steps can be followed on any 64-bit Linux environment to reproduce the artifact. 


1. **Dependencies**: 
    
    1. *Z3*:  Download Z3 binary from: https://github.com/Z3Prover/z3/releases/download/z3-4.6.0/z3-4.6.0-x64-ubuntu-16.04.zip  
        Unzip and place the contents of the zip file in the folder `$ARTIFACT_ROOT/z3`
        
    2. *Mono*: Detailed installation guide of mono can be found here: https://www.mono-project.com/download/stable/#download-lin. For Ubuntu 16.04, the commands are as follows:
        
        ```bash
        apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
        apt install apt-transport-https ca-certificates
        echo "deb https://download.mono-project.com/repo/ubuntu stable-xenial main" | tee /etc/apt/sources.list.d/mono-official-stable.list
        apt update
        apt install -y mono-complete
        ```
        
    3. *Others packages*:
        ```bash
        apt-get install -y g++ make python  python-pip nano time wget unzip zip 
        pip install prettytable xlsxwriter numpy
        ```
    
2. **GPUVerify**: 
Download the *GPUVerify* tool from: http://multicore.doc.ic.ac.uk/tools/downloads/GPUVerifyLinux64-nightly.zip  
Unzip and place the contents of the zip file in the folder `$ARTIFACT_ROOT/gpuverify`  

    
<!-- 3. **Sorcar **: The implementation of *Sorcar* is composed of two componenets, the *Teacher* and the *Learner*.  -->
    
3. **Sorcar Teacher**: The Teacher is implemented by modifying the *Boogie* verification engine.  
*Sources*: `$ARTIFACT_ROOT/boogie_horn_sorcar_false/Source`  
*Compilation*: Compile the sources using xbuild. This wil create the folder `$ARTIFACT_ROOT/boogie_horn_sorcar_false/Binaries` containing all the binaries.
    ```bash
    cd $ARTIFACT_ROOT/boogie_horn_sorcar_false/Source
    xbuild Boogie.sln
    ```

1. **Sorcar Learner**: The Sorcar learning algorithm and all of its variants are implemented in C++.  
*Sources*: `$ARTIFACT_ROOT/learner/SorcarHornV2/src`  
*Compilation*: Compile the source and copy the generated `sorcar` executable to the teacher binary directory. 
    ```bash
    cd $ARTIFACT_ROOT/learner/SorcarHornV2/src/
    make clean
    make all
    mkdir -p $ARTIFACT_ROOT/boogie_horn_sorcar_false/Binaries
    cp $ARTIFACT_ROOT/learner/SorcarHornV2/src/sorcar $ARTIFACT_ROOT/boogie_horn_sorcar_false/Binaries
    ```
    
    
    
    