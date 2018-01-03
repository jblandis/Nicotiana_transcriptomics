#!/bin/bash

#SBATCH --job-name=Trinotate
#SBATCH -o %j.out
#SBATCH -e %j.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=email@school.edu
#SBATCH --ntasks 16
#SBATCH --mem-per-cpu=8gb
#SBATCH -t 96:00:00
#SBATCH -p intel

date

#unload older version of perl
module unload perl/5.20.2


#load needed modules
module load perl/5.22.0
module load trinity-rnaseq/2.2.0
module load trinotate/3.0.1

#search trinity transcripts against SwissProt database
blastx -query Nicotiana_insilico.Trinity.fasta -db uniprot_sprot.pep -num_threads 16 -max_target_seqs 1 -outfmt 6 > blastx.outfmt6

#search transdecoder predicted proteins
blastp -query Nicotiana_insilico_longest_orfs.pep -db uniprot_sprot.pep -num_threads 8 -max_target_seqs 1 -outfmt 6 > blastp.outfmt6

#Hmmer
hmmscan --cpu 16 --domtblout TrinotatePFAM.out Pfam-A.hmm Nicotiana_insilico_longest_orfs.pep > pfam.log