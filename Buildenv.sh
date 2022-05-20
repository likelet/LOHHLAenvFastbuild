#!/bin/sh 

# asume you have anaconda installed in your system 

# 1. first build base env from conda lohhla env 

conda create -n lohhla -c bioconda -c conda-forge 
conda activate lohhla 

# 2. reinstall proper version of depdencies 

conda install -c bioconda jellyfish=2.2.6

conda install -c bioconda samtools=1.3.1

conda install -c bioconda bedtools=2.26.0

conda install -c compbiocore novoalign


# 3. install picard 

wget https://github.com/broadinstitute/picard/releases/download/1.123/picard-tools-1.123.zip && \
	unzip picard-tools-1.123.zip && \
	mv picard-tools-1.123 $HOME/bin/picard
  
# 4. get LOHHLO latest script as the old script bundle in the conda has some bugs.

git clone https://bitbucket.org/mcgranahanlab/lohhla.git 
