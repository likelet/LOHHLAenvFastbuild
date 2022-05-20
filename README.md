# LOHHLA run environemnt 
Install LOHHLA run environment is painful as little information from provide by the authors. Here I present a fast installation script to build enssential depdendencies to run at least test dataset 

# Quick configure 
```
# clone this repo

# run install

```


# Note to run exmaples 

1. besure add the `--gatkDir`, `--novoDir`,`--HLAexonLoc` were configured. 

# Run the following test code 

```shell 
# set home dir 
# mk out folder 
mkdir test_out

locationDIR="/home/ec2-user/test/lohhla" #  the home of the lohhla software

ourDir="./test_out"

Rscript ${locationDIR}/LOHHLAscript.R --patientId example --outputDir $outDir \
	--normalBAMfile ${locationDIR}/example-file/bam/example_BS_GL_sorted.bam --BAMDir ${locationDIR}/example-file/bam/  --hlaPath ${locationDIR}/example-file/hlas \
        --HLAfastaLoc ${locationDIR}/data/example.patient.hlaFasta.fa --CopyNumLoc ${locationDIR}/example-file/solutions.txt --mappingStep TRUE --minCoverageFilter 10 --fishingStep TRUE --cleanUp FALSE \
        --gatkDir /home/ec2-user/test/picard-tools-1.119 --novoDir /home/ec2-user/miniconda3/envs/hla/bin --HLAexonLoc ${locationDIR}/data/hla.dat
```

# Credit. 
This script was inspired by Yanxing Chen as well as Shixiang Wang from SYSUCC
