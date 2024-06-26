#!/bin/bash
#SBATCH --job-name=Combining_CM_amp_mixtures
#SBATCH --partition=glenn_p
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=12
#SBATCH --mem=1gb
#SBATCH --export=NONE
#SBATCH --time=4:00:00
#SBATCH --output=%x_%j.out
#SBATCH --error=%x_%j.err
#SBATCH --mail-user=email@uga.edu
#SBATCH --mail-type=BEGIN,END,FAIL

#Set directory
cd /scratch/mandyh/WISER_InSilico/Mixtures

#define directory
input='/scratch/mandyh/WISER_InSilico/Mixtures/final_sim_CM_amp_reads'
output='/scratch/mandyh/WISER_InSilico/Mixtures/final_sim_mix_amp_reads'

## M1
for z in {1..5}
do
cat $input/Omicron_V3_PE250_20X_$z\-reads.fastq $input/Alpha_V3_PE250_20X_$z\-reads.fastq $input/Beta_V3_PE250_20X_$z\-reads.fastq $input/Delta_V3_PE250_20X_$z\-reads.fastq $input/Wh1_V3_PE250_20X_$z\-reads.fastq > $output/Complex_M1_V3_PE250_$z\-reads.fastq
cat $input/Omicron_V3_PE250_20X_IE_$z\-reads.fastq $input/Alpha_V3_PE250_20X_IE_$z\-reads.fastq $input/Beta_V3_PE250_20X_IE_$z\-reads.fastq $input/Delta_V3_PE250_20X_IE_$z\-reads.fastq $input/Wh1_V3_PE250_20X_IE_$z\-reads.fastq > $output/Complex_M1_V3_PE250_IE_$z\-reads.fastq
cat $input/Omicron_V4_PE250_20X_$z\-reads.fastq $input/Alpha_V4_PE250_20X_$z\-reads.fastq $input/Beta_V4_PE250_20X_$z\-reads.fastq $input/Delta_V4_PE250_20X_$z\-reads.fastq $input/Wh1_V4_PE250_20X_$z\-reads.fastq > $output/Complex_M1_V4_PE250_$z\-reads.fastq
cat $input/Omicron_V4_PE250_20X_IE_$z\-reads.fastq $input/Alpha_V4_PE250_20X_IE_$z\-reads.fastq $input/Beta_V4_PE250_20X_IE_$z\-reads.fastq $input/Delta_V4_PE250_20X_IE_$z\-reads.fastq $input/Wh1_V4_PE250_20X_IE_$z\-reads.fastq > $output/Complex_M1_V4_PE250_IE_$z\-reads.fastq
done

## M2
for z in {1..5}
do
cat $input/Omicron_V3_PE250_10X_$z\-reads.fastq $input/Alpha_V3_PE250_10X_$z\-reads.fastq $input/Beta_V3_PE250_10X_$z\-reads.fastq $input/Gamma_V3_PE250_10X_$z\-reads.fastq $input/Delta_V3_PE250_10X_$z\-reads.fastq $input/Wh1_V3_PE250_50X_$z\-reads.fastq > $output/Complex_M2_V3_PE250_$z\-reads.fastq
cat $input/Omicron_V3_PE250_10X_IE_$z\-reads.fastq $input/Alpha_V3_PE250_10X_IE_$z\-reads.fastq $input/Beta_V3_PE250_10X_IE_$z\-reads.fastq $input/Gamma_V3_PE250_10X_IE_$z\-reads.fastq $input/Delta_V3_PE250_10X_IE_$z\-reads.fastq $input/Wh1_V3_PE250_50X_IE_$z\-reads.fastq > $output/Complex_M2_V3_PE250_IE_$z\-reads.fastq
cat $input/Omicron_V4_PE250_10X_$z\-reads.fastq $input/Alpha_V4_PE250_10X_$z\-reads.fastq $input/Beta_V4_PE250_10X_$z\-reads.fastq $input/Gamma_V4_PE250_10X_$z\-reads.fastq $input/Delta_V4_PE250_10X_$z\-reads.fastq $input/Wh1_V4_PE250_50X_$z\-reads.fastq > $output/Complex_M2_V4_PE250_$z\-reads.fastq
cat $input/Omicron_V4_PE250_10X_IE_$z\-reads.fastq $input/Alpha_V4_PE250_10X_IE_$z\-reads.fastq $input/Beta_V4_PE250_10X_IE_$z\-reads.fastq $input/Gamma_V4_PE250_10X_IE_$z\-reads.fastq $input/Delta_V4_PE250_10X_IE_$z\-reads.fastq $input/Wh1_V4_PE250_50X_IE_$z\-reads.fastq > $output/Complex_M2_V4_PE250_IE_$z\-reads.fastq
done

## M3
for z in {1..5}
do
cat $input/Omicron_V3_PE250_1X_$z\-reads.fastq $input/Alpha_V3_PE250_1X_$z\-reads.fastq $input/Beta_V3_PE250_1X_$z\-reads.fastq $input/Gamma_V3_PE250_1X_$z\-reads.fastq $input/Delta_V3_PE250_1X_$z\-reads.fastq $input/Wh1_V3_PE250_95X_$z\-reads.fastq > $output/Complex_M3_V3_PE250_$z\-reads.fastq
cat $input/Omicron_V3_PE250_1X_IE_$z\-reads.fastq $input/Alpha_V3_PE250_1X_IE_$z\-reads.fastq $input/Beta_V3_PE250_1X_IE_$z\-reads.fastq $input/Gamma_V3_PE250_1X_IE_$z\-reads.fastq $input/Delta_V3_PE250_1X_IE_$z\-reads.fastq $input/Wh1_V3_PE250_95X_IE_$z\-reads.fastq > $output/Complex_M3_V3_PE250_IE_$z\-reads.fastq
cat $input/Omicron_V4_PE250_1X_$z\-reads.fastq $input/Alpha_V4_PE250_1X_$z\-reads.fastq $input/Beta_V4_PE250_1X_$z\-reads.fastq $input/Gamma_V4_PE250_1X_$z\-reads.fastq $input/Delta_V4_PE250_1X_$z\-reads.fastq $input/Wh1_V4_PE250_95X_$z\-reads.fastq > $output/Complex_M3_V4_PE250_$z\-reads.fastq
cat $input/Omicron_V4_PE250_1X_IE_$z\-reads.fastq $input/Alpha_V4_PE250_1X_IE_$z\-reads.fastq $input/Beta_V4_PE250_1X_IE_$z\-reads.fastq $input/Gamma_V4_PE250_1X_IE_$z\-reads.fastq $input/Delta_V4_PE250_1X_IE_$z\-reads.fastq $input/Wh1_V4_PE250_95X_IE_$z\-reads.fastq > $output/Complex_M3_V4_PE250_IE_$z\-reads.fastq
done

## M4
for z in {1..5}
do
cat $input/Omicron_V3_PE250_10X_$z\-reads.fastq $input/Alpha_V3_PE250_10X_$z\-reads.fastq $input/Beta_V3_PE250_10X_$z\-reads.fastq $input/Gamma_V3_PE250_10X_$z\-reads.fastq $input/Delta_V3_PE250_50X_$z\-reads.fastq $input/Wh1_V3_PE250_10X_$z\-reads.fastq > $output/Complex_M4_V3_PE250_$z\-reads.fastq
cat $input/Omicron_V3_PE250_10X_IE_$z\-reads.fastq $input/Alpha_V3_PE250_10X_IE_$z\-reads.fastq $input/Beta_V3_PE250_10X_IE_$z\-reads.fastq $input/Gamma_V3_PE250_10X_IE_$z\-reads.fastq $input/Delta_V3_PE250_50X_IE_$z\-reads.fastq $input/Wh1_V3_PE250_10X_IE_$z\-reads.fastq > $output/Complex_M4_V3_PE250_IE_$z\-reads.fastq
cat $input/Omicron_V4_PE250_10X_$z\-reads.fastq $input/Alpha_V4_PE250_10X_$z\-reads.fastq $input/Beta_V4_PE250_10X_$z\-reads.fastq $input/Gamma_V4_PE250_10X_$z\-reads.fastq $input/Delta_V4_PE250_50X_$z\-reads.fastq $input/Wh1_V4_PE250_10X_$z\-reads.fastq > $output/Complex_M4_V4_PE250_$z\-reads.fastq
cat $input/Omicron_V4_PE250_10X_IE_$z\-reads.fastq $input/Alpha_V4_PE250_10X_IE_$z\-reads.fastq $input/Beta_V4_PE250_10X_IE_$z\-reads.fastq $input/Gamma_V4_PE250_10X_IE_$z\-reads.fastq $input/Delta_V4_PE250_50X_IE_$z\-reads.fastq $input/Wh1_V4_PE250_10X_IE_$z\-reads.fastq > $output/Complex_M4_V4_PE250_IE_$z\-reads.fastq
done

## M5
for z in {1..5}
do
cat $input/Omicron_V3_PE250_1X_$z\-reads.fastq $input/Alpha_V3_PE250_1X_$z\-reads.fastq $input/Beta_V3_PE250_1X_$z\-reads.fastq $input/Gamma_V3_PE250_1X_$z\-reads.fastq $input/Delta_V3_PE250_95X_$z\-reads.fastq $input/Wh1_V3_PE250_1X_$z\-reads.fastq > $output/Complex_M5_V3_PE250_$z\-reads.fastq
cat $input/Omicron_V3_PE250_1X_IE_$z\-reads.fastq $input/Alpha_V3_PE250_1X_IE_$z\-reads.fastq $input/Beta_V3_PE250_1X_IE_$z\-reads.fastq $input/Gamma_V3_PE250_1X_IE_$z\-reads.fastq $input/Delta_V3_PE250_95X_IE_$z\-reads.fastq $input/Wh1_V3_PE250_1X_IE_$z\-reads.fastq > $output/Complex_M5_V3_PE250_IE_$z\-reads.fastq
cat $input/Omicron_V4_PE250_1X_$z\-reads.fastq $input/Alpha_V4_PE250_1X_$z\-reads.fastq $input/Beta_V4_PE250_1X_$z\-reads.fastq $input/Gamma_V4_PE250_1X_$z\-reads.fastq $input/Delta_V4_PE250_95X_$z\-reads.fastq $input/Wh1_V4_PE250_1X_$z\-reads.fastq > $output/Complex_M5_V4_PE250_$z\-reads.fastq
cat $input/Omicron_V4_PE250_1X_IE_$z\-reads.fastq $input/Alpha_V4_PE250_1X_IE_$z\-reads.fastq $input/Beta_V4_PE250_1X_IE_$z\-reads.fastq $input/Gamma_V4_PE250_1X_IE_$z\-reads.fastq $input/Delta_V4_PE250_95X_IE_$z\-reads.fastq $input/Wh1_V4_PE250_1X_IE_$z\-reads.fastq > $output/Complex_M5_V4_PE250_IE_$z\-reads.fastq
done

## M6
for z in {1..5}
do
cat $input/Omicron_V3_PE250_1X_$z\-reads.fastq $input/Alpha_V3_PE250_0.25X_$z\-reads.fastq $input/Beta_V3_PE250_0.25X_$z\-reads.fastq $input/Gamma_V3_PE250_0.25X_$z\-reads.fastq $input/Delta_V3_PE250_98X_$z\-reads.fastq $input/Wh1_V3_PE250_0.25X_$z\-reads.fastq > $output/Complex_M6_V3_PE250_$z\-reads.fastq
cat $input/Omicron_V3_PE250_1X_IE_$z\-reads.fastq $input/Alpha_V3_PE250_0.25X_IE_$z\-reads.fastq $input/Beta_V3_PE250_0.25X_IE_$z\-reads.fastq $input/Gamma_V3_PE250_0.25X_IE_$z\-reads.fastq $input/Delta_V3_PE250_98X_IE_$z\-reads.fastq $input/Wh1_V3_PE250_0.25X_IE_$z\-reads.fastq > $output/Complex_M6_V3_PE250_IE_$z\-reads.fastq
cat $input/Omicron_V4_PE250_1X_$z\-reads.fastq $input/Alpha_V4_PE250_0.25X_$z\-reads.fastq $input/Beta_V4_PE250_0.25X_$z\-reads.fastq $input/Gamma_V4_PE250_0.25X_$z\-reads.fastq $input/Delta_V4_PE250_98X_$z\-reads.fastq $input/Wh1_V4_PE250_0.25X_$z\-reads.fastq > $output/Complex_M6_V4_PE250_$z\-reads.fastq
cat $input/Omicron_V4_PE250_1X_IE_$z\-reads.fastq $input/Alpha_V4_PE250_0.25X_IE_$z\-reads.fastq $input/Beta_V4_PE250_0.25X_IE_$z\-reads.fastq $input/Gamma_V4_PE250_0.25X_IE_$z\-reads.fastq $input/Delta_V4_PE250_98X_IE_$z\-reads.fastq $input/Wh1_V4_PE250_0.25X_IE_$z\-reads.fastq > $output/Complex_M6_V4_PE250_IE_$z\-reads.fastq
done

## M7
for z in {1..5}
do
cat $input/Omicron_V3_PE250_2.5X_$z\-reads.fastq $input/Alpha_V3_PE250_0.25X_$z\-reads.fastq $input/Beta_V3_PE250_0.25X_$z\-reads.fastq $input/Gamma_V3_PE250_0.25X_$z\-reads.fastq $input/Delta_V3_PE250_96.5X_$z\-reads.fastq $input/Wh1_V3_PE250_0.25X_$z\-reads.fastq > $output/Complex_M7_V3_PE250_$z\-reads.fastq
cat $input/Omicron_V3_PE250_2.5X_IE_$z\-reads.fastq $input/Alpha_V3_PE250_0.25X_IE_$z\-reads.fastq $input/Beta_V3_PE250_0.25X_IE_$z\-reads.fastq $input/Gamma_V3_PE250_0.25X_IE_$z\-reads.fastq $input/Delta_V3_PE250_96.5X_IE_$z\-reads.fastq $input/Wh1_V3_PE250_0.25X_IE_$z\-reads.fastq > $output/Complex_M7_V3_PE250_IE_$z\-reads.fastq
cat $input/Omicron_V4_PE250_2.5X_$z\-reads.fastq $input/Alpha_V4_PE250_0.25X_$z\-reads.fastq $input/Beta_V4_PE250_0.25X_$z\-reads.fastq $input/Gamma_V4_PE250_0.25X_$z\-reads.fastq $input/Delta_V4_PE250_96.5X_$z\-reads.fastq $input/Wh1_V4_PE250_0.25X_$z\-reads.fastq > $output/Complex_M7_V4_PE250_$z\-reads.fastq
cat $input/Omicron_V4_PE250_2.5X_IE_$z\-reads.fastq $input/Alpha_V4_PE250_0.25X_IE_$z\-reads.fastq $input/Beta_V4_PE250_0.25X_IE_$z\-reads.fastq $input/Gamma_V4_PE250_0.25X_IE_$z\-reads.fastq $input/Delta_V4_PE250_96.5X_IE_$z\-reads.fastq $input/Wh1_V4_PE250_0.25X_IE_$z\-reads.fastq > $output/Complex_M7_V4_PE250_IE_$z\-reads.fastq
done

## M8
for z in {1..5}
do
cat $input/Omicron_V3_PE250_5X_$z\-reads.fastq $input/Alpha_V3_PE250_0.25X_$z\-reads.fastq $input/Beta_V3_PE250_0.25X_$z\-reads.fastq $input/Gamma_V3_PE250_0.25X_$z\-reads.fastq $input/Delta_V3_PE250_94X_$z\-reads.fastq $input/Wh1_V3_PE250_0.25X_$z\-reads.fastq > $output/Complex_M8_V3_PE250_$z\-reads.fastq
cat $input/Omicron_V3_PE250_5X_IE_$z\-reads.fastq $input/Alpha_V3_PE250_0.25X_IE_$z\-reads.fastq $input/Beta_V3_PE250_0.25X_IE_$z\-reads.fastq $input/Gamma_V3_PE250_0.25X_IE_$z\-reads.fastq $input/Delta_V3_PE250_94X_IE_$z\-reads.fastq $input/Wh1_V3_PE250_0.25X_IE_$z\-reads.fastq > $output/Complex_M8_V3_PE250_IE_$z\-reads.fastq
cat $input/Omicron_V4_PE250_5X_$z\-reads.fastq $input/Alpha_V4_PE250_0.25X_$z\-reads.fastq $input/Beta_V4_PE250_0.25X_$z\-reads.fastq $input/Gamma_V4_PE250_0.25X_$z\-reads.fastq $input/Delta_V4_PE250_94X_$z\-reads.fastq $input/Wh1_V4_PE250_0.25X_$z\-reads.fastq > $output/Complex_M8_V4_PE250_$z\-reads.fastq
cat $input/Omicron_V4_PE250_5X_IE_$z\-reads.fastq $input/Alpha_V4_PE250_0.25X_IE_$z\-reads.fastq $input/Beta_V4_PE250_0.25X_IE_$z\-reads.fastq $input/Gamma_V4_PE250_0.25X_IE_$z\-reads.fastq $input/Delta_V4_PE250_94X_IE_$z\-reads.fastq $input/Wh1_V4_PE250_0.25X_IE_$z\-reads.fastq > $output/Complex_M8_V4_PE250_IE_$z\-reads.fastq
done

## M9
for z in {1..5}
do
cat $input/Omicron_V3_PE250_7.5X_$z\-reads.fastq $input/Alpha_V3_PE250_0.25X_$z\-reads.fastq $input/Beta_V3_PE250_0.25X_$z\-reads.fastq $input/Gamma_V3_PE250_0.25X_$z\-reads.fastq $input/Delta_V3_PE250_91.5X_$z\-reads.fastq $input/Wh1_V3_PE250_0.25X_$z\-reads.fastq > $output/Complex_M9_V3_PE250_$z\-reads.fastq
cat $input/Omicron_V3_PE250_7.5X_IE_$z\-reads.fastq $input/Alpha_V3_PE250_0.25X_IE_$z\-reads.fastq $input/Beta_V3_PE250_0.25X_IE_$z\-reads.fastq $input/Gamma_V3_PE250_0.25X_IE_$z\-reads.fastq $input/Delta_V3_PE250_91.5X_IE_$z\-reads.fastq $input/Wh1_V3_PE250_0.25X_IE_$z\-reads.fastq > $output/Complex_M9_V3_PE250_IE_$z\-reads.fastq
cat $input/Omicron_V4_PE250_7.5X_$z\-reads.fastq $input/Alpha_V4_PE250_0.25X_$z\-reads.fastq $input/Beta_V4_PE250_0.25X_$z\-reads.fastq $input/Gamma_V4_PE250_0.25X_$z\-reads.fastq $input/Delta_V4_PE250_91.5X_$z\-reads.fastq $input/Wh1_V4_PE250_0.25X_$z\-reads.fastq > $output/Complex_M9_V4_PE250_$z\-reads.fastq
cat $input/Omicron_V4_PE250_7.5X_IE_$z\-reads.fastq $input/Alpha_V4_PE250_0.25X_IE_$z\-reads.fastq $input/Beta_V4_PE250_0.25X_IE_$z\-reads.fastq $input/Gamma_V4_PE250_0.25X_IE_$z\-reads.fastq $input/Delta_V4_PE250_91.5X_IE_$z\-reads.fastq $input/Wh1_V4_PE250_0.25X_IE_$z\-reads.fastq > $output/Complex_M9_V4_PE250_IE_$z\-reads.fastq
done

## M10
for z in {1..5}
do
cat $input/Omicron_V3_PE250_10X_$z\-reads.fastq $input/Alpha_V3_PE250_0.25X_$z\-reads.fastq $input/Beta_V3_PE250_0.25X_$z\-reads.fastq $input/Gamma_V3_PE250_0.25X_$z\-reads.fastq $input/Delta_V3_PE250_89X_$z\-reads.fastq $input/Wh1_V3_PE250_0.25X_$z\-reads.fastq > $output/Complex_M10_V3_PE250_$z\-reads.fastq
cat $input/Omicron_V3_PE250_10X_IE_$z\-reads.fastq $input/Alpha_V3_PE250_0.25X_IE_$z\-reads.fastq $input/Beta_V3_PE250_0.25X_IE_$z\-reads.fastq $input/Gamma_V3_PE250_0.25X_IE_$z\-reads.fastq $input/Delta_V3_PE250_89X_IE_$z\-reads.fastq $input/Wh1_V3_PE250_0.25X_IE_$z\-reads.fastq > $output/Complex_M10_V3_PE250_IE_$z\-reads.fastq
cat $input/Omicron_V4_PE250_10X_$z\-reads.fastq $input/Alpha_V4_PE250_0.25X_$z\-reads.fastq $input/Beta_V4_PE250_0.25X_$z\-reads.fastq $input/Gamma_V4_PE250_0.25X_$z\-reads.fastq $input/Delta_V4_PE250_89X_$z\-reads.fastq $input/Wh1_V4_PE250_0.25X_$z\-reads.fastq > $output/Complex_M10_V4_PE250_$z\-reads.fastq
cat $input/Omicron_V4_PE250_10X_IE_$z\-reads.fastq $input/Alpha_V4_PE250_0.25X_IE_$z\-reads.fastq $input/Beta_V4_PE250_0.25X_IE_$z\-reads.fastq $input/Gamma_V4_PE250_0.25X_IE_$z\-reads.fastq $input/Delta_V4_PE250_89X_IE_$z\-reads.fastq $input/Wh1_V4_PE250_0.25X_IE_$z\-reads.fastq > $output/Complex_M10_V4_PE250_IE_$z\-reads.fastq
done

## M11
for z in {1..5}
do
cat $input/Omicron_V3_PE250_95X_$z\-reads.fastq $input/Alpha_V3_PE250_1X_$z\-reads.fastq $input/Beta_V3_PE250_1X_$z\-reads.fastq $input/Gamma_V3_PE250_1X_$z\-reads.fastq $input/Delta_V3_PE250_1X_$z\-reads.fastq $input/Wh1_V3_PE250_1X_$z\-reads.fastq > $output/Complex_M11_V3_PE250_$z\-reads.fastq
cat $input/Omicron_V3_PE250_95X_IE_$z\-reads.fastq $input/Alpha_V3_PE250_1X_IE_$z\-reads.fastq $input/Beta_V3_PE250_1X_IE_$z\-reads.fastq $input/Gamma_V3_PE250_1X_IE_$z\-reads.fastq $input/Delta_V3_PE250_1X_IE_$z\-reads.fastq $input/Wh1_V3_PE250_1X_IE_$z\-reads.fastq > $output/Complex_M11_V3_PE250_IE_$z\-reads.fastq
cat $input/Omicron_V4_PE250_95X_$z\-reads.fastq $input/Alpha_V4_PE250_1X_$z\-reads.fastq $input/Beta_V4_PE250_1X_$z\-reads.fastq $input/Gamma_V4_PE250_1X_$z\-reads.fastq $input/Delta_V4_PE250_1X_$z\-reads.fastq $input/Wh1_V4_PE250_1X_$z\-reads.fastq > $output/Complex_M11_V4_PE250_$z\-reads.fastq
cat $input/Omicron_V4_PE250_95X_IE_$z\-reads.fastq $input/Alpha_V4_PE250_1X_IE_$z\-reads.fastq $input/Beta_V4_PE250_1X_IE_$z\-reads.fastq $input/Gamma_V4_PE250_1X_IE_$z\-reads.fastq $input/Delta_V4_PE250_1X_IE_$z\-reads.fastq $input/Wh1_V4_PE250_1X_IE_$z\-reads.fastq > $output/Complex_M11_V4_PE250_IE_$z\-reads.fastq
done

## M12
for z in {1..5}
do
cat $input/Omicron_V3_PE250_98X_$z\-reads.fastq $input/Alpha_V3_PE250_0.25X_$z\-reads.fastq $input/Beta_V3_PE250_0.25X_$z\-reads.fastq $input/Gamma_V3_PE250_0.25X_$z\-reads.fastq $input/Delta_V3_PE250_1X_$z\-reads.fastq $input/Wh1_V3_PE250_0.25X_$z\-reads.fastq > $output/Complex_M12_V3_PE250_$z\-reads.fastq
cat $input/Omicron_V3_PE250_98X_IE_$z\-reads.fastq $input/Alpha_V3_PE250_0.25X_IE_$z\-reads.fastq $input/Beta_V3_PE250_0.25X_IE_$z\-reads.fastq $input/Gamma_V3_PE250_0.25X_IE_$z\-reads.fastq $input/Delta_V3_PE250_1X_IE_$z\-reads.fastq $input/Wh1_V3_PE250_0.25X_IE_$z\-reads.fastq > $output/Complex_M12_V3_PE250_IE_$z\-reads.fastq
cat $input/Omicron_V4_PE250_98X_$z\-reads.fastq $input/Alpha_V4_PE250_0.25X_$z\-reads.fastq $input/Beta_V4_PE250_0.25X_$z\-reads.fastq $input/Gamma_V4_PE250_0.25X_$z\-reads.fastq $input/Delta_V4_PE250_1X_$z\-reads.fastq $input/Wh1_V4_PE250_0.25X_$z\-reads.fastq > $output/Complex_M12_V4_PE250_$z\-reads.fastq
cat $input/Omicron_V4_PE250_98X_IE_$z\-reads.fastq $input/Alpha_V4_PE250_0.25X_IE_$z\-reads.fastq $input/Beta_V4_PE250_0.25X_IE_$z\-reads.fastq $input/Gamma_V4_PE250_0.25X_IE_$z\-reads.fastq $input/Delta_V4_PE250_1X_IE_$z\-reads.fastq $input/Wh1_V4_PE250_0.25X_IE_$z\-reads.fastq > $output/Complex_M12_V4_PE250_IE_$z\-reads.fastq
done

## M13
for z in {1..5}
do
cat $input/Omicron_V3_PE250_96.5X_$z\-reads.fastq $input/Alpha_V3_PE250_0.25X_$z\-reads.fastq $input/Beta_V3_PE250_0.25X_$z\-reads.fastq $input/Gamma_V3_PE250_0.25X_$z\-reads.fastq $input/Delta_V3_PE250_2.5X_$z\-reads.fastq $input/Wh1_V3_PE250_0.25X_$z\-reads.fastq > $output/Complex_M13_V3_PE250_$z\-reads.fastq
cat $input/Omicron_V3_PE250_96.5X_IE_$z\-reads.fastq $input/Alpha_V3_PE250_0.25X_IE_$z\-reads.fastq $input/Beta_V3_PE250_0.25X_IE_$z\-reads.fastq $input/Gamma_V3_PE250_0.25X_IE_$z\-reads.fastq $input/Delta_V3_PE250_2.5X_IE_$z\-reads.fastq $input/Wh1_V3_PE250_0.25X_IE_$z\-reads.fastq > $output/Complex_M13_V3_PE250_IE_$z\-reads.fastq
cat $input/Omicron_V4_PE250_96.5X_$z\-reads.fastq $input/Alpha_V4_PE250_0.25X_$z\-reads.fastq $input/Beta_V4_PE250_0.25X_$z\-reads.fastq $input/Gamma_V4_PE250_0.25X_$z\-reads.fastq $input/Delta_V4_PE250_2.5X_$z\-reads.fastq $input/Wh1_V4_PE250_0.25X_$z\-reads.fastq > $output/Complex_M13_V4_PE250_$z\-reads.fastq
cat $input/Omicron_V4_PE250_96.5X_IE_$z\-reads.fastq $input/Alpha_V4_PE250_0.25X_IE_$z\-reads.fastq $input/Beta_V4_PE250_0.25X_IE_$z\-reads.fastq $input/Gamma_V4_PE250_0.25X_IE_$z\-reads.fastq $input/Delta_V4_PE250_2.5X_IE_$z\-reads.fastq $input/Wh1_V4_PE250_0.25X_IE_$z\-reads.fastq > $output/Complex_M13_V4_PE250_IE_$z\-reads.fastq
done

## M14
for z in {1..5}
do
cat $input/Omicron_V3_PE250_94X_$z\-reads.fastq $input/Alpha_V3_PE250_0.25X_$z\-reads.fastq $input/Beta_V3_PE250_0.25X_$z\-reads.fastq $input/Gamma_V3_PE250_0.25X_$z\-reads.fastq $input/Delta_V3_PE250_5X_$z\-reads.fastq $input/Wh1_V3_PE250_0.25X_$z\-reads.fastq > $output/Complex_M14_V3_PE250_$z\-reads.fastq
cat $input/Omicron_V3_PE250_94X_IE_$z\-reads.fastq $input/Alpha_V3_PE250_0.25X_IE_$z\-reads.fastq $input/Beta_V3_PE250_0.25X_IE_$z\-reads.fastq $input/Gamma_V3_PE250_0.25X_IE_$z\-reads.fastq $input/Delta_V3_PE250_5X_IE_$z\-reads.fastq $input/Wh1_V3_PE250_0.25X_IE_$z\-reads.fastq > $output/Complex_M14_V3_PE250_IE_$z\-reads.fastq
cat $input/Omicron_V4_PE250_94X_$z\-reads.fastq $input/Alpha_V4_PE250_0.25X_$z\-reads.fastq $input/Beta_V4_PE250_0.25X_$z\-reads.fastq $input/Gamma_V4_PE250_0.25X_$z\-reads.fastq $input/Delta_V4_PE250_5X_$z\-reads.fastq $input/Wh1_V4_PE250_0.25X_$z\-reads.fastq > $output/Complex_M14_V4_PE250_$z\-reads.fastq
cat $input/Omicron_V4_PE250_94X_IE_$z\-reads.fastq $input/Alpha_V4_PE250_0.25X_IE_$z\-reads.fastq $input/Beta_V4_PE250_0.25X_IE_$z\-reads.fastq $input/Gamma_V4_PE250_0.25X_IE_$z\-reads.fastq $input/Delta_V4_PE250_5X_IE_$z\-reads.fastq $input/Wh1_V4_PE250_0.25X_IE_$z\-reads.fastq > $output/Complex_M14_V4_PE250_IE_$z\-reads.fastq
done

## M15
for z in {1..5}
do
cat $input/Omicron_V3_PE250_91.5X_$z\-reads.fastq $input/Alpha_V3_PE250_0.25X_$z\-reads.fastq $input/Beta_V3_PE250_0.25X_$z\-reads.fastq $input/Gamma_V3_PE250_0.25X_$z\-reads.fastq $input/Delta_V3_PE250_7.5X_$z\-reads.fastq $input/Wh1_V3_PE250_0.25X_$z\-reads.fastq > $output/Complex_M15_V3_PE250_$z\-reads.fastq
cat $input/Omicron_V3_PE250_91.5X_IE_$z\-reads.fastq $input/Alpha_V3_PE250_0.25X_IE_$z\-reads.fastq $input/Beta_V3_PE250_0.25X_IE_$z\-reads.fastq $input/Gamma_V3_PE250_0.25X_IE_$z\-reads.fastq $input/Delta_V3_PE250_7.5X_IE_$z\-reads.fastq $input/Wh1_V3_PE250_0.25X_IE_$z\-reads.fastq > $output/Complex_M15_V3_PE250_IE_$z\-reads.fastq
cat $input/Omicron_V4_PE250_91.5X_$z\-reads.fastq $input/Alpha_V4_PE250_0.25X_$z\-reads.fastq $input/Beta_V4_PE250_0.25X_$z\-reads.fastq $input/Gamma_V4_PE250_0.25X_$z\-reads.fastq $input/Delta_V4_PE250_7.5X_$z\-reads.fastq $input/Wh1_V4_PE250_0.25X_$z\-reads.fastq > $output/Complex_M15_V4_PE250_$z\-reads.fastq
cat $input/Omicron_V4_PE250_91.5X_IE_$z\-reads.fastq $input/Alpha_V4_PE250_0.25X_IE_$z\-reads.fastq $input/Beta_V4_PE250_0.25X_IE_$z\-reads.fastq $input/Gamma_V4_PE250_0.25X_IE_$z\-reads.fastq $input/Delta_V4_PE250_7.5X_IE_$z\-reads.fastq $input/Wh1_V4_PE250_0.25X_IE_$z\-reads.fastq > $output/Complex_M15_V4_PE250_IE_$z\-reads.fastq
done

## M16
for z in {1..5}
do
cat $input/Omicron_V3_PE250_89X_$z\-reads.fastq $input/Alpha_V3_PE250_0.25X_$z\-reads.fastq $input/Beta_V3_PE250_0.25X_$z\-reads.fastq $input/Gamma_V3_PE250_0.25X_$z\-reads.fastq $input/Delta_V3_PE250_10X_$z\-reads.fastq $input/Wh1_V3_PE250_0.25X_$z\-reads.fastq > $output/Complex_M16_V3_PE250_$z\-reads.fastq
cat $input/Omicron_V3_PE250_89X_IE_$z\-reads.fastq $input/Alpha_V3_PE250_0.25X_IE_$z\-reads.fastq $input/Beta_V3_PE250_0.25X_IE_$z\-reads.fastq $input/Gamma_V3_PE250_0.25X_IE_$z\-reads.fastq $input/Delta_V3_PE250_10X_IE_$z\-reads.fastq $input/Wh1_V3_PE250_0.25X_IE_$z\-reads.fastq > $output/Complex_M16_V3_PE250_IE_$z\-reads.fastq
cat $input/Omicron_V4_PE250_89X_$z\-reads.fastq $input/Alpha_V4_PE250_0.25X_$z\-reads.fastq $input/Beta_V4_PE250_0.25X_$z\-reads.fastq $input/Gamma_V4_PE250_0.25X_$z\-reads.fastq $input/Delta_V4_PE250_10X_$z\-reads.fastq $input/Wh1_V4_PE250_0.25X_$z\-reads.fastq > $output/Complex_M16_V4_PE250_$z\-reads.fastq
cat $input/Omicron_V4_PE250_89X_IE_$z\-reads.fastq $input/Alpha_V4_PE250_0.25X_IE_$z\-reads.fastq $input/Beta_V4_PE250_0.25X_IE_$z\-reads.fastq $input/Gamma_V4_PE250_0.25X_IE_$z\-reads.fastq $input/Delta_V4_PE250_10X_IE_$z\-reads.fastq $input/Wh1_V4_PE250_0.25X_IE_$z\-reads.fastq > $output/Complex_M16_V4_PE250_IE_$z\-reads.fastq
done