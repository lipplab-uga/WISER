#!/bin/bash
#SBATCH --job-name=spades_assembly
#SBATCH --partition=highmem_p
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --mem-per-cpu=6gb
#SBATCH --export=NONE
#SBATCH --time=48:00:00
#SBATCH --output=%x_%j.out
#SBATCH --error=%x_%j.err
#SBATCH --mail-user=email@uga.edu
#SBATCH --mail-type=ALL
#SBATCH --array=1-952

module load SPAdes/3.15.5-GCC-11.3.0 

cd /scratch/mandyh/WISER_Clinical/spades_output

input='/scratch/mandyh/WISER_Clinical/paired_trim_reads'
ref_input='/scratch/mandyh/WISER_Clinical/inputs'

export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

i=$(cat $ref_input/input_${SLURM_ARRAY_TASK_ID})

python /apps/eb/SPAdes/3.15.5-GCC-11.3.0/bin/spades.py --corona --threads 6 --memory 6 --only-assembler -o ./$i -1 $input/$i\_pair_trim_R1.fastq.gz -2 $input/$i\_pair_trim_R2.fastq.gz