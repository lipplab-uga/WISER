#!/bin/bash
#SBATCH --job-name=Kallisto_rename
#SBATCH --partition=iob_p
#SBATCH --ntasks=1
#SBATCH --mem=200mb
#SBATCH --export=NONE
#SBATCH --time=2:00:00
#SBATCH --output=%x_%j.out
#SBATCH --error=%x_%j.err
#SBATCH --mail-user=email@uga.edu
#SBATCH --mail-type=ALL
#SBATCH --array=1-178

#Set directory
cd /scratch/mandyh/WISER_WW/All_WW_StrainSort/Kallisto_all_WW

ref_input='/scratch/mandyh/WISER_WW/All_WW_StrainSort/inputs'

export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

i=$(cat $ref_input/input_${SLURM_ARRAY_TASK_ID})

mv ./$i\/abundance.h5 ./$i\/$i\_abundance.h5
mv ./$i\/abundance.tsv ./$i\/$i\_abundance.tsv
mv ./$i\/run_info.json ./$i\/$i\_run_info.json
mv ./$i\/pseudoalignments.bam ./$i\/$i\_pseudoalignments.bam