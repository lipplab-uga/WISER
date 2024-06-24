#!/bin/bash
#SBATCH --job-name=spades_assembly_mapping_wh1
#SBATCH --partition=batch
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --mem-per-cpu=5gb
#SBATCH --time=48:00:00
#SBATCH --output=%x_%j.out
#SBATCH --error=%x_%j.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=email@uga.edu
#SBATCH --array=1-952

module load BBMap/39.01-GCC-11.3.0
module load Java/11.0.16
module load SAMtools/1.14-GCC-11.2.0

cd /scratch/mandyh/WISER_Clinical/spades_output

#define directory
ref='/scratch/mandyh/WISER_InSilico/genomes'
output='/scratch/mandyh/WISER_Clinical/spades_alignments_wh1'
ref_input='/scratch/mandyh/WISER_Clinical/inputs'

export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

i=$(cat $ref_input/input_${SLURM_ARRAY_TASK_ID})

## ref genome indexed
##Bbmap maps primers to genome
bbmap.sh in=./$i\/raw_scaffolds.fasta out=$output/$i\.sam ref=$ref/Wuhan-Hu-1_SARS-COV-2.fasta
##Samtools sort the mapped reads - have to do this for a lot of down stream programs like igv
samtools view -b $output/$i\.sam | samtools sort > $output/$i\_sorted.bam
##Samtools index sorted file - needed for visualizing in igv
samtools index $output/$i\_sorted.bam