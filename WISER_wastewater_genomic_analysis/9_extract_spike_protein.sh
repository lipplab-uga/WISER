#!/bin/bash
#SBATCH --job-name=Extract_spike
#SBATCH --partition=iob_p
#SBATCH --ntasks=1
#SBATCH --mem=100gb
#SBATCH --export=NONE
#SBATCH --time=90:00:00
#SBATCH --output=%x_%j.out
#SBATCH --error=%x_%j.err
#SBATCH --mail-user=email@uga.edu
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --array=1-178

module load Java/13.0.2

cd /scratch/mandyh/WISER_WW/All_WW_StrainSort/spades_alignments_wh1

output='/scratch/mandyh/WISER_WW/All_WW_StrainSort/extracted_spike_fastas'
ref_input='/scratch/mandyh/WISER_WW/All_WW_StrainSort/inputs'

export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

i=$(cat $ref_input/input_${SLURM_ARRAY_TASK_ID})

for x in {B.1.351,P.1,B.1.427,B.1.429,B.1.526,B.1.617.1,P.2,B.1.621,B.1.621.1,B.1.617.2,B.1.1.7,AY.83,B,AY.2,B.1.1.7,B.1.1.529,BA.1,BA.1.1,BA.2,BA.4,BA.5,B.1.503,AY.25,AY.39,AY.44,AY.46.1,AY.62,AY.75,AY.100,AY.103,AY.118,AY.119,unmapped}
do
java scaffold_joining $i\_$x\.sam 21563 25384 29903
mv ./Extracted_$i\_$x\.fasta $output
done