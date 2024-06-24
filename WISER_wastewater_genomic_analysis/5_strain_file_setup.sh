#!/bin/bash
#SBATCH --job-name=strain_file_setup
#SBATCH --partition=iob_p
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --mem-per-cpu=1gb
#SBATCH --time=24:00:00
#SBATCH --output=%x_%j.out
#SBATCH --error=%x_%j.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=email@uga.edu

module load Java/13.0.2

##Will need to make lineage folder with your strain_key.txt and lineage_file_setup.class file inside of it

#Set directory to execute script
cd /scratch/mandyh/WISER_WW/All_WW_StrainSort/lineage_files

java lineage_file_setup strain_key.txt