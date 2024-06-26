#!/bin/bash
#SBATCH --job-name=Combining_dil_amp_mix
#SBATCH --partition=glenn_p
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=12
#SBATCH --mem=2gb
#SBATCH --export=NONE
#SBATCH --time=2:00:00
#SBATCH --output=%x_%j.out
#SBATCH --error=%x_%j.err
#SBATCH --mail-user=email@uga.edu
#SBATCH --mail-type=BEGIN,END,FAIL

#Set directory
cd /scratch/mandyh/WISER_InSilico/Mixtures

#define directory
input1='/scratch/mandyh/WISER_InSilico/Mixtures/Diltions/sim_amp_reads'
input2='/scratch/mandyh/WISER_InSilico/Mixtures/Diltions/subset_seqs'
output='/scratch/mandyh/WISER_InSilico/Mixtures/Diltions/final_amp_dil_mix'

for z in {1..5}
do
for x in {3,4}
do
cat $input1/Complex_M1_V$x\_PE250_$z\_R1.fq $input2/WW_sub_M1_136_R1_$z\.fq > $output/Dil_M1_V$x\_D1M99_$z\_R1.fq
cat $input1/Complex_M1_V$x\_PE250_$z\_R2.fq $input2/WW_sub_M1_136_R2_$z\.fq > $output/Dil_M1_V$x\_D1M99_$z\_R2.fq
cat $input1/Complex_M1_V$x\_PE250_$z\_R1.fq $input2/WW_sub_M1_1499_R1_$z\.fq > $output/Dil_M1_V$x\_D10M90_$z\_R1.fq
cat $input1/Complex_M1_V$x\_PE250_$z\_R2.fq $input2/WW_sub_M1_1499_R2_$z\.fq > $output/Dil_M1_V$x\_D10M90_$z\_R2.fq
cat $input1/Complex_M1_V$x\_PE250_$z\_R1.fq $input2/WW_sub_M1_13495_R1_$z\.fq > $output/Dil_M1_V$x\_D50M50_$z\_R1.fq
cat $input1/Complex_M1_V$x\_PE250_$z\_R2.fq $input2/WW_sub_M1_13495_R2_$z\.fq > $output/Dil_M1_V$x\_D50M50_$z\_R2.fq
cat $input1/Complex_M1_V$x\_PE250_$z\_R1.fq $input2/WW_sub_M1_121455_R1_$z\.fq > $output/Dil_M1_V$x\_D90M10_$z\_R1.fq
cat $input1/Complex_M1_V$x\_PE250_$z\_R2.fq $input2/WW_sub_M1_121455_R2_$z\.fq > $output/Dil_M1_V$x\_D90M10_$z\_R2.fq
cat $input1/Complex_M1_V$x\_PE250_$z\_R1.fq $input2/WW_sub_M1_1336005_R1_$z\.fq > $output/Dil_M1_V$x\_D99M1_$z\_R1.fq
cat $input1/Complex_M1_V$x\_PE250_$z\_R2.fq $input2/WW_sub_M1_1336005_R2_$z\.fq > $output/Dil_M1_V$x\_D99M1_$z\_R2.fq
cat $input1/Complex_M2_V$x\_PE250_$z\_R1.fq $input2/WW_sub_M2_139_R1_$z\.fq > $output/Dil_M2_V$x\_D1M99_$z\_R1.fq
cat $input1/Complex_M2_V$x\_PE250_$z\_R2.fq $input2/WW_sub_M2_139_R2_$z\.fq > $output/Dil_M2_V$x\_D1M99_$z\_R2.fq
cat $input1/Complex_M2_V$x\_PE250_$z\_R1.fq $input2/WW_sub_M2_1531_R1_$z\.fq > $output/Dil_M2_V$x\_D10M90_$z\_R1.fq
cat $input1/Complex_M2_V$x\_PE250_$z\_R2.fq $input2/WW_sub_M2_1531_R2_$z\.fq > $output/Dil_M2_V$x\_D10M90_$z\_R2.fq
cat $input1/Complex_M2_V$x\_PE250_$z\_R1.fq $input2/WW_sub_M2_13781_R1_$z\.fq > $output/Dil_M2_V$x\_D50M50_$z\_R1.fq
cat $input1/Complex_M2_V$x\_PE250_$z\_R2.fq $input2/WW_sub_M2_13781_R2_$z\.fq > $output/Dil_M2_V$x\_D50M50_$z\_R2.fq
cat $input1/Complex_M2_V$x\_PE250_$z\_R1.fq $input2/WW_sub_M2_124035_R1_$z\.fq > $output/Dil_M2_V$x\_D90M10_$z\_R1.fq
cat $input1/Complex_M2_V$x\_PE250_$z\_R2.fq $input2/WW_sub_M2_124035_R2_$z\.fq > $output/Dil_M2_V$x\_D90M10_$z\_R2.fq
cat $input1/Complex_M2_V$x\_PE250_$z\_R1.fq $input2/WW_sub_M2_1364385_R1_$z\.fq > $output/Dil_M2_V$x\_D99M1_$z\_R1.fq
cat $input1/Complex_M2_V$x\_PE250_$z\_R2.fq $input2/WW_sub_M2_1364385_R2_$z\.fq > $output/Dil_M2_V$x\_D99M1_$z\_R2.fq
done
done

for z in {1..5}
do
for x in {3,4}
do
cat $input1/Complex_M1_V$x\_PE250_IE_$z\_R1.fq $input2/WW_sub_M1_136_R1_$z\.fq > $output/Dil_M1_V$x\_D1M99_IE_$z\_R1.fq
cat $input1/Complex_M1_V$x\_PE250_IE_$z\_R2.fq $input2/WW_sub_M1_136_R2_$z\.fq > $output/Dil_M1_V$x\_D1M99_IE_$z\_R2.fq
cat $input1/Complex_M1_V$x\_PE250_IE_$z\_R1.fq $input2/WW_sub_M1_1499_R1_$z\.fq > $output/Dil_M1_V$x\_D10M90_IE_$z\_R1.fq
cat $input1/Complex_M1_V$x\_PE250_IE_$z\_R2.fq $input2/WW_sub_M1_1499_R2_$z\.fq > $output/Dil_M1_V$x\_D10M90_IE_$z\_R2.fq
cat $input1/Complex_M1_V$x\_PE250_IE_$z\_R1.fq $input2/WW_sub_M1_13495_R1_$z\.fq > $output/Dil_M1_V$x\_D50M50_IE_$z\_R1.fq
cat $input1/Complex_M1_V$x\_PE250_IE_$z\_R2.fq $input2/WW_sub_M1_13495_R2_$z\.fq > $output/Dil_M1_V$x\_D50M50_IE_$z\_R2.fq
cat $input1/Complex_M1_V$x\_PE250_IE_$z\_R1.fq $input2/WW_sub_M1_121455_R1_$z\.fq > $output/Dil_M1_V$x\_D90M10_IE_$z\_R1.fq
cat $input1/Complex_M1_V$x\_PE250_IE_$z\_R2.fq $input2/WW_sub_M1_121455_R2_$z\.fq > $output/Dil_M1_V$x\_D90M10_IE_$z\_R2.fq
cat $input1/Complex_M1_V$x\_PE250_IE_$z\_R1.fq $input2/WW_sub_M1_1336005_R1_$z\.fq > $output/Dil_M1_V$x\_D99M1_IE_$z\_R1.fq
cat $input1/Complex_M1_V$x\_PE250_IE_$z\_R2.fq $input2/WW_sub_M1_1336005_R2_$z\.fq > $output/Dil_M1_V$x\_D99M1_IE_$z\_R2.fq
cat $input1/Complex_M2_V$x\_PE250_IE_$z\_R1.fq $input2/WW_sub_M2_139_R1_$z\.fq > $output/Dil_M2_V$x\_D1M99_IE_$z\_R1.fq
cat $input1/Complex_M2_V$x\_PE250_IE_$z\_R2.fq $input2/WW_sub_M2_139_R2_$z\.fq > $output/Dil_M2_V$x\_D1M99_IE_$z\_R2.fq
cat $input1/Complex_M2_V$x\_PE250_IE_$z\_R1.fq $input2/WW_sub_M2_1531_R1_$z\.fq > $output/Dil_M2_V$x\_D10M90_IE_$z\_R1.fq
cat $input1/Complex_M2_V$x\_PE250_IE_$z\_R2.fq $input2/WW_sub_M2_1531_R2_$z\.fq > $output/Dil_M2_V$x\_D10M90_IE_$z\_R2.fq
cat $input1/Complex_M2_V$x\_PE250_IE_$z\_R1.fq $input2/WW_sub_M2_13781_R1_$z\.fq > $output/Dil_M2_V$x\_D50M50_IE_$z\_R1.fq
cat $input1/Complex_M2_V$x\_PE250_IE_$z\_R2.fq $input2/WW_sub_M2_13781_R2_$z\.fq > $output/Dil_M2_V$x\_D50M50_IE_$z\_R2.fq
cat $input1/Complex_M2_V$x\_PE250_IE_$z\_R1.fq $input2/WW_sub_M2_124035_R1_$z\.fq > $output/Dil_M2_V$x\_D90M10_IE_$z\_R1.fq
cat $input1/Complex_M2_V$x\_PE250_IE_$z\_R2.fq $input2/WW_sub_M2_124035_R2_$z\.fq > $output/Dil_M2_V$x\_D90M10_IE_$z\_R2.fq
cat $input1/Complex_M2_V$x\_PE250_IE_$z\_R1.fq $input2/WW_sub_M2_1364385_R1_$z\.fq > $output/Dil_M2_V$x\_D99M1_IE_$z\_R1.fq
cat $input1/Complex_M2_V$x\_PE250_IE_$z\_R2.fq $input2/WW_sub_M2_1364385_R2_$z\.fq > $output/Dil_M2_V$x\_D99M1_IE_$z\_R2.fq
done
done