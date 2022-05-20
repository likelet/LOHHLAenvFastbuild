# LOHHLA run environemnt 

Install [LOHHLA](https://github.com/mskcc/lohhla) run environment is painful as little information provided by the authors. Here I present a fast installation script to build enssential depdendencies to run at least test dataset 

## Quick configure 
```shell
   # clone this repo
   git clone https://github.com/likelet/LOHHLAenvFastbuild.git & cd LOHHLAenvFastbuild
   # run install env 
   bash Buildenv.sh

```


## Note to run exmaples 

1. Please make sure that the `--gatkDir`, `--novoDir`,`--HLAexonLoc` were configured. 

## Run the following test code 

```shell 
# set home dir 
# mk out folder 
mkdir test_out

locationDIR="${HOME}/lohhla" #  the home of the lohhla software

ourDir="./test_out"

Rscript ${locationDIR}/LOHHLAscript.R --patientId example --outputDir $outDir \
	--normalBAMfile ${locationDIR}/example-file/bam/example_BS_GL_sorted.bam --BAMDir ${locationDIR}/example-file/bam/  \
	--hlaPath ${locationDIR}/example-file/hlas \
        --HLAfastaLoc ${locationDIR}/data/example.patient.hlaFasta.fa \ 
	--CopyNumLoc ${locationDIR}/example-file/solutions.txt \
	--mappingStep TRUE --minCoverageFilter 10 --fishingStep TRUE --cleanUp FALSE \
        --gatkDir ${HOME}/bin/picard \
	--novoDir ${HOME}/miniconda3/envs/lohhla/bin/novoalign \
	--HLAexonLoc ${locationDIR}/data/hla.dat
```
This code also be found at the run-example.sh in lohhla folder.  

## Credit. 
This script was inspired by Yanxing Chen as well as Shixiang Wang from SYSUCC
If you use LOHHLA in your research, please cite the following paper:

>McGranahan et al., Allele-Specific HLA Loss and Immune Escape in Lung Cancer Evolution, Cell (2017), https://doi.org/10.1016/j.cell.2017.10.001


