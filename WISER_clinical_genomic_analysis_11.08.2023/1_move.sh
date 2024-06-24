#!/bin/bash
#SBATCH --job-name=move
#SBATCH --partition=iob_p
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --mem-per-cpu=1gb
#SBATCH --time=24:00:00
#SBATCH --output=%x_%j.out
#SBATCH --error=%x_%j.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=email@uga.edu

output='/scratch/mandyh/WISER_Clinical/Raw_Data'

cd /scratch/mandyh/TCG54/clinical_samples 

cp *gz $output

cd /scratch/mandyh/TCG55/glennlab-tgcgc-as-18302-BKLC54sdDvtrEEQG

cp P* $output