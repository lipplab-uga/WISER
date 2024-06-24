#!/bin/bash
#SBATCH --job-name=kallisto_quant
#SBATCH --partition=iob_p
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --mem-per-cpu=5gb
#SBATCH --time=24:00:00
#SBATCH --output=%x_%j.out
#SBATCH --error=%x_%j.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=email@uga.edu
#SBATCH --array=1-178

module load kallisto/0.48.0-gompi-2022a

#Set directory
cd /scratch/mandyh/WISER_WW/All_WW_StrainSort

#define directory
index='/scratch/mandyh/Kallisto_Time'
input='/scratch/mandyh/WISER_WW/All_WW_StrainSort/paired_reads'
output='/scratch/mandyh/WISER_WW/All_WW_StrainSort/Kallisto_all_WW'
ref_input='/scratch/mandyh/WISER_WW/All_WW_StrainSort/inputs'

export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

i=$(cat $ref_input/input_${SLURM_ARRAY_TASK_ID})

kallisto quant -t 6 -b 100 --pseudobam -i $index/sequences.kallisto_11.10.2023_idx -o $output/$i $input/$i\_pair_trim_R1.fastq.gz $input/$i\_pair_trim_R2.fastq.gz