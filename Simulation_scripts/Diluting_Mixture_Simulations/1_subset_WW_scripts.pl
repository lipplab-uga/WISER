#!/bin/bash
#SBATCH --job-name=Subsetting_Amp
#SBATCH --partition=glenn_p
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=12
#SBATCH --mem=20gb
#SBATCH --export=NONE
#SBATCH --time=4:00:00
#SBATCH --output=%x_%j.out
#SBATCH --error=%x_%j.err
#SBATCH --mail-user=email@uga.edu
#SBATCH --mail-type=BEGIN,END,FAIL

cd /scratch/mandyh/WISER_InSilico/Mixtures/Diltions

ml seqtk/1.2-foss-2019b

#define directory
input='/scratch/mandyh/Off_target_metagenomic'
output='/scratch/mandyh/WISER_InSilico/Mixtures/Diltions/subset_seqs'

for i in {136,1499,13495,121455,1336005}
do
for z in {1..5}
do
seqtk sample -s 10 $input/WWTP_6_1.fq $i > $output/WW_sub_M1_$i\_R1_$z\.fq
seqtk sample -s 10 $input/WWTP_6_2.fq $i > $output/WW_sub_M1_$i\_R2_$z\.fq
done
done

for i in {139,1531,13781,124035,1364385}
do
for z in {1..5}
do
seqtk sample -s 10 $input/WWTP_6_1.fq $i > $output/WW_sub_M2_$i\_R1_$z\.fq
seqtk sample -s 10 $input/WWTP_6_2.fq $i > $output/WW_sub_M2_$i\_R2_$z\.fq
done
done