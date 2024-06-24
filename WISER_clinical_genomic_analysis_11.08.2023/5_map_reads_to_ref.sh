#!/bin/bash
#SBATCH --job-name=map_reads_to_ref
#SBATCH --partition=iob_p
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12
#SBATCH --mem-per-cpu=3gb
#SBATCH --time=48:00:00
#SBATCH --output=%x_%j.out
#SBATCH --error=%x_%j.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=mandyh@uga.edu
#SBATCH --array=1-952

module load BBMap/39.01-GCC-11.3.0
module load Java/17.0.6
module load SAMtools/1.10-GCC-8.3.0

cd /scratch/mandyh/WISER_Clinical

#define directory
ref='/scratch/mandyh/WISER_InSilico/genomes'
input='/scratch/mandyh/WISER_Clinical/paired_trim_reads'
output='/scratch/mandyh/WISER_Clinical/mapped_reads'
ref_input='/scratch/mandyh/WISER_Clinical/inputs_2'

export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

x=$(cat $ref_input/input_${SLURM_ARRAY_TASK_ID})
## ref genome indexed
##Bbmap maps primers to genome
bbmap.sh in1=$input/$x\_pair_trim_R1.fastq.gz in2=$input/$x\_pair_trim_R2.fastq.gz out=$output/$x\.sam ref=$ref/Wuhan-Hu-1_SARS-COV-2.fasta ignorejunk nodisk
samtools view -b $output/$x\.sam | samtools sort > $output/$x\_sorted.bam