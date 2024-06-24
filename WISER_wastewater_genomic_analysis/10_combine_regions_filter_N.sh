#!/bin/bash
#SBATCH --job-name=combine_filter
#SBATCH --partition=highmem_p
#SBATCH --ntasks=1
#SBATCH --mem=100gb
#SBATCH --export=NONE
#SBATCH --time=6:00:00
#SBATCH --output=%x_%j.out
#SBATCH --error=%x_%j.err
#SBATCH --mail-user=email@uga.edu
#SBATCH --mail-type=BEGIN,END,FAIL

module load Java/13.0.2

cd /scratch/mandyh/WISER_delta_for_gabi/extracted_spike_fastas

cat *.fasta > all_seqs_plus_delta.fasta 
mv all_seqs_plus_delta.fasta /scratch/mandyh/WISER_delta_for_gabi/mafft_input

cd /scratch/mandyh/WISER_delta_for_gabi/mafft_input

java fasta_all_n_filter_v2 all_seqs_plus_delta.fasta