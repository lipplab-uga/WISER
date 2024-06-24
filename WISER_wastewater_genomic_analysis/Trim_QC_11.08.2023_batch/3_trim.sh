#!/bin/bash
#SBATCH --job-name=trim_filter
#SBATCH --partition=iob_p
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --mem-per-cpu=3gb
#SBATCH --time=4:00:00
#SBATCH --output=%x_%j.out
#SBATCH --error=%x_%j.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=email@uga.edu
#SBATCH --array=1-42

module load Trimmomatic/0.39-Java-13

#set directory 
cd /scratch/mandyh/WISER_WW/WISER_WW_11.08.2023

ref_input='/scratch/mandyh/WISER_WW/WISER_WW_11.08.2023/inputs'

export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

i=$(cat $ref_input/input_${SLURM_ARRAY_TASK_ID})

java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.39.jar PE ./Raw_data/$i\_R1_001.fastq.gz ./Raw_data/$i\_R2_001.fastq.gz ./paired_trim_reads/$i\_pair_trim_R1.fastq.gz ./unpaired_trim_reads/$i\_unpair_trim_R1.fastq.gz ./paired_trim_reads/$i\_pair_trim_R2.fastq.gz ./unpaired_trim_reads/$i\_unpair_trim_R2.fastq.gz -threads 4 -phred33 ILLUMINACLIP:/apps/eb/Trimmomatic/0.39-Java-13/adapters/TruSeq3-PE.fa:2:30:10:2:TRUE LEADING:3 TRAILING:3 SLIDINGWINDOW:4:20 MINLEN:100