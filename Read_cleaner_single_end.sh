#!/bin/bash

#SBATCH --job-name=Read_cleaner
#SBATCH -o %j.out
#SBATCH -e %j.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=email@school.edu
#SBATCH --ntasks 8
#SBATCH --mem-per-cpu=8000mb
#SBATCH -t 96:00:00
#SBATCH -p intel


#load needed modules
module load python
module load sickle

#make directories for future use
mkdir trimmed_files
mkdir cleaned_files


cd $SLURM_SUBMIT_DIR

#Control where to start the process (1 is beginning):
start_step=1


#Trim Illumina universal adaptor from reads, using the Illumina score criteria
if [[ $start_step -le 1 ]]
then
	for file in directory_of_raw_reads/*.fastq.gz
	do
		echo "Trim adapter from $file"
		name=`basename $file .fastq.gz`
		cutadapt -b AGATCGGAAGAGCACACGTCTGAACTCCAGTCA --quality-base=33 $file > trimmed_files/$name.fq
	done
fi

#Quality and size filter of reads, so that fragments are at least 60 bp with a score of 30
if [[ $start_step -le 2 ]]
then
	for file in trimmed_files/*.fq
	do
		echo "Quality filter $file"
		name=`basename $file .fq`
		sickle se -t sanger -q 30 -l 60 -g -f $file -o output_director/$name.fastq.gz 
	done
fi



hostname
