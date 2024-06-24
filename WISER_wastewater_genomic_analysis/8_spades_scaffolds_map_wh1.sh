#!/bin/bash
#SBATCH --job-name=spike_protein_mapping_meta
#SBATCH --partition=iob_p
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12
#SBATCH --mem-per-cpu=5gb
#SBATCH --time=48:00:00
#SBATCH --output=%x_%j.out
#SBATCH --error=%x_%j.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=email@uga.edu
#SBATCH --array=1-178

module load BBMap/39.01-GCC-11.3.0
module load Java/11.0.16
module load SAMtools/1.14-GCC-11.2.0

cd /scratch/mandyh/WISER_WW/All_WW_StrainSort/spades_output

#define directory
ref='/scratch/mandyh/WISER_InSilico/genomes'
output='/scratch/mandyh/WISER_WW/All_WW_StrainSort/spades_alignments_wh1'
ref_input='/scratch/mandyh/WISER_WW/All_WW_StrainSort/inputs'

export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

i=$(cat $ref_input/input_${SLURM_ARRAY_TASK_ID})
for x in {BA.1,BA.1.1,BA.1.1.18,BA.2,BA.2.10,BA.2.12.1,BA.2.13,BA.2.18,BA.2.26,BA.2.3,BA.2.3.17,BA.2.3.20,BA.2.3.6,BA.2.32,BA.2.36,BA.2.48,BA.2.56,BA.2.59,BA.2.65,BA.2.7,BA.2.73,BA.2.76,BA.2.9,BA.2.9.7,BA.4.1,BA.5.1.22,BA.5.1.30,BA.5.2.20,BA.5.2.6,BA.5.5.2,BF.10,BF.26,BF.5,BF.7,BF.7.7,BG.5,BM.1.1,BM.1.1.3,BN.1,BN.1.3,BQ.1,BQ.1.1,BR.1.2,BR.5,CA.1,CM.2,XAM,XAP,XBB.1.5,AY.25,AY.3,AY.100,AY.103,AY.39.1,AY.118,AY.25.1,AY.39,AY.113,AY.44,AY.47,AY.119,AY.122,AY.43,BM.4.1.1,B.1.621,B.1.621.1,P.1,P.1.10,P.1.17,P.1.15,B.1.351,B.1.351.3,B.1.1.7,BA.5,BA.5.1,BA.5.2.1,BA.5.5,B.1.427,B.1.429,B.1.525,B.1.526,B.1.617.1,B.1.617.3,P.2,B.1.617.2,AY.83,B,AY.2,B.1.1.529,BA.4,B.1.503,AY.46.1,AY.62,AY.75,unmapped}
do
## ref genome indexed
##Bbmap maps primers to genome
bbmap.sh in=$i\_$x\/scaffolds.fasta out=$output/$i\_$x\.sam ref=$ref/Wuhan-Hu-1_SARS-COV-2.fasta
done