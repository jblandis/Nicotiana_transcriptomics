#!/bin/sh

#SBATCH --job-name=Tophat_pipeline
#SBATCH -o %j.out
#SBATCH -e %j.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=email@school.edu
#SBATCH --ntasks 24
#SBATCH --mem-per-cpu=4gb
#SBATCH -t 96:00:00
#SBATCH -p intel


cd $SLURM_SUBMIT_DIR

date
hostname

#load needed modules
module load tophat/2.1.1
module load bowtie2/2.2.9
module load cufflinks/2.2.1

#transform gff file to gtf
gffread /rhome/jlandis/bigdata/Nicotiana/annotation/Nitab_v4.5_gene_models_Scf.gff /rhome/jlandis/bigdata/Nicotiana/assembly/Nitab_v4_5_genome_Scf.fasta -T -F -o /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf


#preform tophat on each accession, need to specify location of GTF file and assembly, and reads of interest
tophat -p 24 -g 5 --prefilter-multihits --segment-length 40 --GTF /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf -o QM2460a /rhome/jlandis/bigdata/Nicotiana/assembly/Nitab_v4_5_genome_Scf.fasta /rhome/jlandis/bigdata/Nicotiana/Seq_reads/cleaned_files/QM2460a.fastq.gz
tophat -p 24 -g 5 --prefilter-multihits --segment-length 40 --GTF /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf -o QM2460b /rhome/jlandis/bigdata/Nicotiana/assembly/Nitab_v4_5_genome_Scf.fasta /rhome/jlandis/bigdata/Nicotiana/Seq_reads/cleaned_files/QM2460b.fastq.gz
tophat -p 24 -g 5 --prefilter-multihits --segment-length 40 --GTF /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf -o QM2460c /rhome/jlandis/bigdata/Nicotiana/assembly/Nitab_v4_5_genome_Scf.fasta /rhome/jlandis/bigdata/Nicotiana/Seq_reads/cleaned_files/QM2460c.fastq.gz
tophat -p 24 -g 5 --prefilter-multihits --segment-length 40 --GTF /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf -o QM2485a /rhome/jlandis/bigdata/Nicotiana/assembly/Nitab_v4_5_genome_Scf.fasta /rhome/jlandis/bigdata/Nicotiana/Seq_reads/cleaned_files/QM2485a.fastq.gz
tophat -p 24 -g 5 --prefilter-multihits --segment-length 40 --GTF /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf -o QM2485b /rhome/jlandis/bigdata/Nicotiana/assembly/Nitab_v4_5_genome_Scf.fasta /rhome/jlandis/bigdata/Nicotiana/Seq_reads/cleaned_files/QM2485b.fastq.gz
tophat -p 24 -g 5 --prefilter-multihits --segment-length 40 --GTF /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf -o QM2485c /rhome/jlandis/bigdata/Nicotiana/assembly/Nitab_v4_5_genome_Scf.fasta /rhome/jlandis/bigdata/Nicotiana/Seq_reads/cleaned_files/QM2485c.fastq.gz
tophat -p 24 -g 5 --prefilter-multihits --segment-length 40 --GTF /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf -o QM2495a /rhome/jlandis/bigdata/Nicotiana/assembly/Nitab_v4_5_genome_Scf.fasta /rhome/jlandis/bigdata/Nicotiana/Seq_reads/cleaned_files/QM2495a.fastq.gz
tophat -p 24 -g 5 --prefilter-multihits --segment-length 40 --GTF /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf -o QM2495b /rhome/jlandis/bigdata/Nicotiana/assembly/Nitab_v4_5_genome_Scf.fasta /rhome/jlandis/bigdata/Nicotiana/Seq_reads/cleaned_files/QM2495b.fastq.gz
tophat -p 24 -g 5 --prefilter-multihits --segment-length 40 --GTF /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf -o QM2560a /rhome/jlandis/bigdata/Nicotiana/assembly/Nitab_v4_5_genome_Scf.fasta /rhome/jlandis/bigdata/Nicotiana/Seq_reads/cleaned_files/QM2560a.fastq.gz
tophat -p 24 -g 5 --prefilter-multihits --segment-length 40 --GTF /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf -o QM2560b /rhome/jlandis/bigdata/Nicotiana/assembly/Nitab_v4_5_genome_Scf.fasta /rhome/jlandis/bigdata/Nicotiana/Seq_reads/cleaned_files/QM2560b.fastq.gz
tophat -p 24 -g 5 --prefilter-multihits --segment-length 40 --GTF /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf -o QM2560c /rhome/jlandis/bigdata/Nicotiana/assembly/Nitab_v4_5_genome_Scf.fasta /rhome/jlandis/bigdata/Nicotiana/Seq_reads/cleaned_files/QM2560c.fastq.gz
tophat -p 24 -g 5 --prefilter-multihits --segment-length 40 --GTF /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf -o QM2585a /rhome/jlandis/bigdata/Nicotiana/assembly/Nitab_v4_5_genome_Scf.fasta /rhome/jlandis/bigdata/Nicotiana/Seq_reads/cleaned_files/QM2585a.fastq.gz
tophat -p 24 -g 5 --prefilter-multihits --segment-length 40 --GTF /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf -o QM2585b /rhome/jlandis/bigdata/Nicotiana/assembly/Nitab_v4_5_genome_Scf.fasta /rhome/jlandis/bigdata/Nicotiana/Seq_reads/cleaned_files/QM2585b.fastq.gz
tophat -p 24 -g 5 --prefilter-multihits --segment-length 40 --GTF /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf -o QM2585c /rhome/jlandis/bigdata/Nicotiana/assembly/Nitab_v4_5_genome_Scf.fasta /rhome/jlandis/bigdata/Nicotiana/Seq_reads/cleaned_files/QM2585c.fastq.gz
tophat -p 24 -g 5 --prefilter-multihits --segment-length 40 --GTF /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf -o QM2595a /rhome/jlandis/bigdata/Nicotiana/assembly/Nitab_v4_5_genome_Scf.fasta /rhome/jlandis/bigdata/Nicotiana/Seq_reads/cleaned_files/QM2595a.fastq.gz
tophat -p 24 -g 5 --prefilter-multihits --segment-length 40 --GTF /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf -o QM2595b /rhome/jlandis/bigdata/Nicotiana/assembly/Nitab_v4_5_genome_Scf.fasta /rhome/jlandis/bigdata/Nicotiana/Seq_reads/cleaned_files/QM2595b.fastq.gz
tophat -p 24 -g 5 --prefilter-multihits --segment-length 40 --GTF /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf -o QM2595c /rhome/jlandis/bigdata/Nicotiana/assembly/Nitab_v4_5_genome_Scf.fasta /rhome/jlandis/bigdata/Nicotiana/Seq_reads/cleaned_files/QM2595c.fastq.gz
tophat -p 24 -g 5 --prefilter-multihits --segment-length 40 --GTF /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf -o sylv606_28 /rhome/jlandis/bigdata/Nicotiana/assembly/Nitab_v4_5_genome_Scf.fasta /rhome/jlandis/bigdata/Nicotiana/Seq_reads/cleaned_files/sylv606_28.fastq.gz
tophat -p 24 -g 5 --prefilter-multihits --segment-length 40 --GTF /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf -o sylv60pl1 /rhome/jlandis/bigdata/Nicotiana/assembly/Nitab_v4_5_genome_Scf.fasta /rhome/jlandis/bigdata/Nicotiana/Seq_reads/cleaned_files/sylv60pl1.fastq.gz
tophat -p 24 -g 5 --prefilter-multihits --segment-length 40 --GTF /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf -o sylv60pl3 /rhome/jlandis/bigdata/Nicotiana/assembly/Nitab_v4_5_genome_Scf.fasta /rhome/jlandis/bigdata/Nicotiana/Seq_reads/cleaned_files/sylv60pl3.fastq.gz
tophat -p 24 -g 5 --prefilter-multihits --segment-length 40 --GTF /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf -o sylv856_28 /rhome/jlandis/bigdata/Nicotiana/assembly/Nitab_v4_5_genome_Scf.fasta /rhome/jlandis/bigdata/Nicotiana/Seq_reads/cleaned_files/sylv856_28.fastq.gz
tophat -p 24 -g 5 --prefilter-multihits --segment-length 40 --GTF /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf -o sylv85pl1 /rhome/jlandis/bigdata/Nicotiana/assembly/Nitab_v4_5_genome_Scf.fasta /rhome/jlandis/bigdata/Nicotiana/Seq_reads/cleaned_files/sylv85pl1.fastq.gz
tophat -p 24 -g 5 --prefilter-multihits --segment-length 40 --GTF /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf -o sylv85pl3 /rhome/jlandis/bigdata/Nicotiana/assembly/Nitab_v4_5_genome_Scf.fasta /rhome/jlandis/bigdata/Nicotiana/Seq_reads/cleaned_files/sylv85pl3.fastq.gz
tophat -p 24 -g 5 --prefilter-multihits --segment-length 40 --GTF /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf -o sylv956_28 /rhome/jlandis/bigdata/Nicotiana/assembly/Nitab_v4_5_genome_Scf.fasta /rhome/jlandis/bigdata/Nicotiana/Seq_reads/cleaned_files/sylv956_28.fastq.gz
tophat -p 24 -g 5 --prefilter-multihits --segment-length 40 --GTF /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf -o sylv95pl1 /rhome/jlandis/bigdata/Nicotiana/assembly/Nitab_v4_5_genome_Scf.fasta /rhome/jlandis/bigdata/Nicotiana/Seq_reads/cleaned_files/sylv95pl1.fastq.gz
tophat -p 24 -g 5 --prefilter-multihits --segment-length 40 --GTF /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf -o sylv95pl3 /rhome/jlandis/bigdata/Nicotiana/assembly/Nitab_v4_5_genome_Scf.fasta /rhome/jlandis/bigdata/Nicotiana/Seq_reads/cleaned_files/sylv95pl3.fastq.gz
tophat -p 24 -g 5 --prefilter-multihits --segment-length 40 --GTF /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf -o tab09560pl1 /rhome/jlandis/bigdata/Nicotiana/assembly/Nitab_v4_5_genome_Scf.fasta /rhome/jlandis/bigdata/Nicotiana/Seq_reads/cleaned_files/tab09560pl1.fastq.gz
tophat -p 24 -g 5 --prefilter-multihits --segment-length 40 --GTF /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf -o tab09560pl8 /rhome/jlandis/bigdata/Nicotiana/assembly/Nitab_v4_5_genome_Scf.fasta /rhome/jlandis/bigdata/Nicotiana/Seq_reads/cleaned_files/tab09560pl8.fastq.gz
tophat -p 24 -g 5 --prefilter-multihits --segment-length 40 --GTF /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf -o tab09585pl1 /rhome/jlandis/bigdata/Nicotiana/assembly/Nitab_v4_5_genome_Scf.fasta /rhome/jlandis/bigdata/Nicotiana/Seq_reads/cleaned_files/tab09585pl1.fastq.gz
tophat -p 24 -g 5 --prefilter-multihits --segment-length 40 --GTF /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf -o tab09585pl8 /rhome/jlandis/bigdata/Nicotiana/assembly/Nitab_v4_5_genome_Scf.fasta /rhome/jlandis/bigdata/Nicotiana/Seq_reads/cleaned_files/tab09585pl8.fastq.gz
tophat -p 24 -g 5 --prefilter-multihits --segment-length 40 --GTF /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf -o tab09595pl1 /rhome/jlandis/bigdata/Nicotiana/assembly/Nitab_v4_5_genome_Scf.fasta /rhome/jlandis/bigdata/Nicotiana/Seq_reads/cleaned_files/tab09595pl1.fastq.gz
tophat -p 24 -g 5 --prefilter-multihits --segment-length 40 --GTF /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf -o tab09595pl8 /rhome/jlandis/bigdata/Nicotiana/assembly/Nitab_v4_5_genome_Scf.fasta /rhome/jlandis/bigdata/Nicotiana/Seq_reads/cleaned_files/tab09595pl8.fastq.gz
tophat -p 24 -g 5 --prefilter-multihits --segment-length 40 --GTF /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf -o tab095606_28 /rhome/jlandis/bigdata/Nicotiana/assembly/Nitab_v4_5_genome_Scf.fasta /rhome/jlandis/bigdata/Nicotiana/Seq_reads/cleaned_files/tab095606_28.fastq.gz
tophat -p 24 -g 5 --prefilter-multihits --segment-length 40 --GTF /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf -o tab095856_28 /rhome/jlandis/bigdata/Nicotiana/assembly/Nitab_v4_5_genome_Scf.fasta /rhome/jlandis/bigdata/Nicotiana/Seq_reads/cleaned_files/tab095856_28.fastq.gz
tophat -p 24 -g 5 --prefilter-multihits --segment-length 40 --GTF /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf -o tab095956_28 /rhome/jlandis/bigdata/Nicotiana/assembly/Nitab_v4_5_genome_Scf.fasta /rhome/jlandis/bigdata/Nicotiana/Seq_reads/cleaned_files/tab095956_28.fastq.gz
tophat -p 24 -g 5 --prefilter-multihits --segment-length 40 --GTF /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf -o tabChu60pl4 /rhome/jlandis/bigdata/Nicotiana/assembly/Nitab_v4_5_genome_Scf.fasta /rhome/jlandis/bigdata/Nicotiana/Seq_reads/cleaned_files/tabChu60pl4.fastq.gz
tophat -p 24 -g 5 --prefilter-multihits --segment-length 40 --GTF /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf -o tabChu60pl5 /rhome/jlandis/bigdata/Nicotiana/assembly/Nitab_v4_5_genome_Scf.fasta /rhome/jlandis/bigdata/Nicotiana/Seq_reads/cleaned_files/tabChu60pl5.fastq.gz
tophat -p 24 -g 5 --prefilter-multihits --segment-length 40 --GTF /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf -o tabChu85pl4 /rhome/jlandis/bigdata/Nicotiana/assembly/Nitab_v4_5_genome_Scf.fasta /rhome/jlandis/bigdata/Nicotiana/Seq_reads/cleaned_files/tabChu85pl4.fastq.gz
tophat -p 24 -g 5 --prefilter-multihits --segment-length 40 --GTF /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf -o tabChu85pl5 /rhome/jlandis/bigdata/Nicotiana/assembly/Nitab_v4_5_genome_Scf.fasta /rhome/jlandis/bigdata/Nicotiana/Seq_reads/cleaned_files/tabChu85pl5.fastq.gz
tophat -p 24 -g 5 --prefilter-multihits --segment-length 40 --GTF /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf -o tabChu95pl4 /rhome/jlandis/bigdata/Nicotiana/assembly/Nitab_v4_5_genome_Scf.fasta /rhome/jlandis/bigdata/Nicotiana/Seq_reads/cleaned_files/tabChu95pl4.fastq.gz
tophat -p 24 -g 5 --prefilter-multihits --segment-length 40 --GTF /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf -o tabChu95pl5 /rhome/jlandis/bigdata/Nicotiana/assembly/Nitab_v4_5_genome_Scf.fasta /rhome/jlandis/bigdata/Nicotiana/Seq_reads/cleaned_files/tabChu95pl5.fastq.gz
tophat -p 24 -g 5 --prefilter-multihits --segment-length 40 --GTF /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf -o tabChu606_28 /rhome/jlandis/bigdata/Nicotiana/assembly/Nitab_v4_5_genome_Scf.fasta /rhome/jlandis/bigdata/Nicotiana/Seq_reads/cleaned_files/tabChu606_28.fastq.gz
tophat -p 24 -g 5 --prefilter-multihits --segment-length 40 --GTF /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf -o tabChu856_28 /rhome/jlandis/bigdata/Nicotiana/assembly/Nitab_v4_5_genome_Scf.fasta /rhome/jlandis/bigdata/Nicotiana/Seq_reads/cleaned_files/tabChu856_28.fastq.gz
tophat -p 24 -g 5 --prefilter-multihits --segment-length 40 --GTF /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf -o tabChu956_28 /rhome/jlandis/bigdata/Nicotiana/assembly/Nitab_v4_5_genome_Scf.fasta /rhome/jlandis/bigdata/Nicotiana/Seq_reads/cleaned_files/tabChu956_28.fastq.gz
tophat -p 24 -g 5 --prefilter-multihits --segment-length 40 --GTF /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf -o tomf60pl1 /rhome/jlandis/bigdata/Nicotiana/assembly/Nitab_v4_5_genome_Scf.fasta /rhome/jlandis/bigdata/Nicotiana/Seq_reads/cleaned_files/tomf60pl1.fastq.gz
tophat -p 24 -g 5 --prefilter-multihits --segment-length 40 --GTF /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf -o tomf60pl2 /rhome/jlandis/bigdata/Nicotiana/assembly/Nitab_v4_5_genome_Scf.fasta /rhome/jlandis/bigdata/Nicotiana/Seq_reads/cleaned_files/tomf60pl2.fastq.gz
tophat -p 24 -g 5 --prefilter-multihits --segment-length 40 --GTF /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf -o tomf60pl3 /rhome/jlandis/bigdata/Nicotiana/assembly/Nitab_v4_5_genome_Scf.fasta /rhome/jlandis/bigdata/Nicotiana/Seq_reads/cleaned_files/tomf60pl3.fastq.gz
tophat -p 24 -g 5 --prefilter-multihits --segment-length 40 --GTF /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf -o tomf85pl2 /rhome/jlandis/bigdata/Nicotiana/assembly/Nitab_v4_5_genome_Scf.fasta /rhome/jlandis/bigdata/Nicotiana/Seq_reads/cleaned_files/tomf85pl2.fastq.gz
tophat -p 24 -g 5 --prefilter-multihits --segment-length 40 --GTF /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf -o tomf85pl3 /rhome/jlandis/bigdata/Nicotiana/assembly/Nitab_v4_5_genome_Scf.fasta /rhome/jlandis/bigdata/Nicotiana/Seq_reads/cleaned_files/tomf85pl3.fastq.gz
tophat -p 24 -g 5 --prefilter-multihits --segment-length 40 --GTF /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf -o tomf95pl1 /rhome/jlandis/bigdata/Nicotiana/assembly/Nitab_v4_5_genome_Scf.fasta /rhome/jlandis/bigdata/Nicotiana/Seq_reads/cleaned_files/tomf95pl1.fastq.gz
tophat -p 24 -g 5 --prefilter-multihits --segment-length 40 --GTF /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf -o tomf95pl2 /rhome/jlandis/bigdata/Nicotiana/assembly/Nitab_v4_5_genome_Scf.fasta /rhome/jlandis/bigdata/Nicotiana/Seq_reads/cleaned_files/tomf95pl2.fastq.gz
tophat -p 24 -g 5 --prefilter-multihits --segment-length 40 --GTF /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf -o tomf95pl3 /rhome/jlandis/bigdata/Nicotiana/assembly/Nitab_v4_5_genome_Scf.fasta /rhome/jlandis/bigdata/Nicotiana/Seq_reads/cleaned_files/tomf95pl3.fastq.gz


#cufflinks to make assemblies, need to specify location of GTF file and the bam file from the tophat run
cufflinks -p 24 -o QM2460a_clout -G /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf --multi-read-correct QM2460a/accepted_hits.bam
cufflinks -p 24 -o QM2460b_clout -G /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf --multi-read-correct QM2460b/accepted_hits.bam
cufflinks -p 24 -o QM2460c_clout -G /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf --multi-read-correct QM2460c/accepted_hits.bam
cufflinks -p 24 -o QM2485a_clout -G /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf --multi-read-correct QM2485a/accepted_hits.bam
cufflinks -p 24 -o QM2485b_clout -G /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf --multi-read-correct QM2485b/accepted_hits.bam
cufflinks -p 24 -o QM2485c_clout -G /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf --multi-read-correct QM2485c/accepted_hits.bam
cufflinks -p 24 -o QM2495a_clout -G /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf --multi-read-correct QM2495a/accepted_hits.bam
cufflinks -p 24 -o QM2495b_clout -G /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf --multi-read-correct QM2495b/accepted_hits.bam
cufflinks -p 24 -o QM2585a_clout -G /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf --multi-read-correct QM2585a/accepted_hits.bam
cufflinks -p 24 -o QM2585b_clout -G /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf --multi-read-correct QM2585b/accepted_hits.bam
cufflinks -p 24 -o QM2585c_clout -G /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf --multi-read-correct QM2585c/accepted_hits.bam
cufflinks -p 24 -o QM2595a_clout -G /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf --multi-read-correct QM2595a/accepted_hits.bam
cufflinks -p 24 -o QM2595b_clout -G /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf --multi-read-correct QM2595b/accepted_hits.bam
cufflinks -p 24 -o QM2595c_clout -G /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf --multi-read-correct QM2595c/accepted_hits.bam
cufflinks -p 24 -o sylv60pl1_clout -G /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf --multi-read-correct sylv60pl1/accepted_hits.bam
cufflinks -p 24 -o sylv60pl3_clout -G /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf --multi-read-correct sylv60pl3/accepted_hits.bam
cufflinks -p 24 -o sylv85pl1_clout -G /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf --multi-read-correct sylv85pl1/accepted_hits.bam
cufflinks -p 24 -o sylv85pl3_clout -G /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf --multi-read-correct sylv85pl3/accepted_hits.bam
cufflinks -p 24 -o sylv95pl1_clout -G /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf --multi-read-correct sylv95pl1/accepted_hits.bam
cufflinks -p 24 -o sylv95pl3_clout -G /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf --multi-read-correct sylv95pl3/accepted_hits.bam
cufflinks -p 24 -o sylv606_28_clout -G /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf --multi-read-correct sylv606_28/accepted_hits.bam
cufflinks -p 24 -o sylv856_28_clout -G /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf --multi-read-correct sylv856_28/accepted_hits.bam
cufflinks -p 24 -o sylv956_28_clout -G /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf --multi-read-correct sylv956_28/accepted_hits.bam
cufflinks -p 24 -o tab09560pl1_clout -G /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf --multi-read-correct tab09560pl1/accepted_hits.bam
cufflinks -p 24 -o tab09560pl8_clout -G /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf --multi-read-correct tab09560pl8/accepted_hits.bam
cufflinks -p 24 -o tab09585pl1_clout -G /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf --multi-read-correct tab09585pl1/accepted_hits.bam
cufflinks -p 24 -o tab09585pl8_clout -G /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf --multi-read-correct tab09585pl8/accepted_hits.bam
cufflinks -p 24 -o tab09595pl1_clout -G /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf --multi-read-correct tab09595pl1/accepted_hits.bam
cufflinks -p 24 -o tab09595pl8_clout -G /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf --multi-read-correct tab09595pl8/accepted_hits.bam
cufflinks -p 24 -o tab095606_28_clout -G /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf --multi-read-correct tab095606_28/accepted_hits.bam
cufflinks -p 24 -o tab095856_28_clout -G /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf --multi-read-correct tab095856_28/accepted_hits.bam
cufflinks -p 24 -o tab095956_28_clout -G /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf --multi-read-correct tab095956_28/accepted_hits.bam
cufflinks -p 24 -o tabChu60pl4_clout -G /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf --multi-read-correct tabChu60pl4/accepted_hits.bam
cufflinks -p 24 -o tabChu60pl5_clout -G /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf --multi-read-correct tabChu60pl5/accepted_hits.bam
cufflinks -p 24 -o tabChu85pl4_clout -G /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf --multi-read-correct tabChu85pl4/accepted_hits.bam
cufflinks -p 24 -o tabChu85pl5_clout -G /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf --multi-read-correct tabChu85pl5/accepted_hits.bam
cufflinks -p 24 -o tabChu95pl4_clout -G /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf --multi-read-correct tabChu95pl4/accepted_hits.bam
cufflinks -p 24 -o tabChu95pl5_clout -G /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf --multi-read-correct tabChu95pl5/accepted_hits.bam
cufflinks -p 24 -o tabChu606_28_clout -G /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf --multi-read-correct tabChu606_28/accepted_hits.bam
cufflinks -p 24 -o tabChu856_28_clout -G /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf --multi-read-correct tabChu856_28/accepted_hits.bam
cufflinks -p 24 -o tabChu956_28_clout -G /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf --multi-read-correct tabChu956_28/accepted_hits.bam
cufflinks -p 24 -o tomf60pl1_clout -G /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf --multi-read-correct tomf60pl1/accepted_hits.bam
cufflinks -p 24 -o tomf60pl2_clout -G /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf --multi-read-correct tomf60pl2/accepted_hits.bam
cufflinks -p 24 -o tomf60pl3_clout -G /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf --multi-read-correct tomf60pl3/accepted_hits.bam
cufflinks -p 24 -o tomf85pl2_clout -G /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf --multi-read-correct tomf85pl2/accepted_hits.bam
cufflinks -p 24 -o tomf85pl3_clout -G /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf --multi-read-correct tomf85pl3/accepted_hits.bam
cufflinks -p 24 -o tomf95pl1_clout -G /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf --multi-read-correct tomf95pl1/accepted_hits.bam
cufflinks -p 24 -o tomf95pl2_clout -G /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf --multi-read-correct tomf95pl2/accepted_hits.bam
cufflinks -p 24 -o tomf95pl3_clout -G /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf --multi-read-correct tomf95pl3/accepted_hits.bam
cufflinks -p 24 -o QM2560a_clout -G /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf --multi-read-correct QM2560a/accepted_hits.bam
cufflinks -p 24 -o QM2560b_clout -G /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf --multi-read-correct QM2560b/accepted_hits.bam
cufflinks -p 24 -o QM2560c_clout -G /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf --multi-read-correct QM2560c/accepted_hits.bam


#merge cufflinks outputs into one file, specify GTF file and reference assembly
cuffmerge --ref-gtf /rhome/jlandis/bigdata/Nicotiana/annotation/Ntab_scf.gtf --ref-sequence /rhome/jlandis/bigdata/Nicotiana/assembly/Nitab_v4_5_genome_Scf.fasta -p 24 assemblies.txt

