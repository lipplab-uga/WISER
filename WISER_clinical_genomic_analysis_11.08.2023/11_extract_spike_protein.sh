#!/bin/bash
#SBATCH --job-name=Extract_spike
#SBATCH --partition=batch
#SBATCH --ntasks=1
#SBATCH --mem=2gb
#SBATCH --export=NONE
#SBATCH --time=90:00:00
#SBATCH --output=%x_%j.out
#SBATCH --error=%x_%j.err
#SBATCH --mail-user=email@uga.edu
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --array=1-952

module load Java/13.0.2

cd /scratch/mandyh/WISER_Clinical/spades_alignments_wh1

output='/scratch/mandyh/WISER_Clinical/extracted_spike_fastas'
ref_input='/scratch/mandyh/WISER_Clinical/inputs_2'

export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

i=$(cat $ref_input/input_${SLURM_ARRAY_TASK_ID})

java scaffold_joining $i\.sam 21563 25384 29903
mv ./Extracted_$i\.fasta $output