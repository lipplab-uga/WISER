#!/bin/bash
#SBATCH --job-name=Kallisto_move
#SBATCH --partition=iob_p 
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --mem-per-cpu=1gb
#SBATCH --export=NONE
#SBATCH --time=4:00:00
#SBATCH --output=%x_%j.out
#SBATCH --error=%x_%j.err
#SBATCH --mail-user=email@uga.edu
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --array=1-178

#Set directory
cd /scratch/mandyh/WISER_WW/All_WW_StrainSort/Kallisto_all_WW

#Define directory
ref_input='/scratch/mandyh/WISER_WW/All_WW_StrainSort/inputs'

export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

i=$(cat $ref_input/input_${SLURM_ARRAY_TASK_ID})

cp ./$i\/$i\_abundance.tsv ./Kallisto_all_WW_abundance_tsv
cp ./$i\/$i\_pseudoalignments.bam ./Kallisto_all_WW_psuedobam