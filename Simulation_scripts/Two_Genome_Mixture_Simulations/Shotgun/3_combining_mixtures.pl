#!/bin/bash
#SBATCH --job-name=Combining_shotgun_mix
#SBATCH --partition=glenn_p
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=8
#SBATCH --mem=1gb
#SBATCH --export=NONE
#SBATCH --time=24:00:00
#SBATCH --output=%x_%j.out
#SBATCH --error=%x_%j.err
#SBATCH --mail-user=email@uga.edu
#SBATCH --mail-type=BEGIN,END,FAIL

module load BBMap/38.83-GCC-8.3.0

#Set directory
cd /scratch/mandyh/WISER_InSilico/Mixtures

#define directory
input1='/scratch/mandyh/WISER_InSilico/Mixtures/sim_delta_shotgun_reads'
input2='/scratch/mandyh/WISER_InSilico/Mixtures/sim_Wh1_shotgun_reads'
output='/scratch/mandyh/WISER_InSilico/Mixtures/final_sim_mix_shotgun_reads'

for z in {1..5}
do
cat $input1/Delta_PE150_1X_$z\_R1.fq $input2/Wuhan_PE150_99X_$z\_R1.fq > $output/D1W99_PE150_$z\_R1.fq
cat $input1/Delta_PE150_1X_$z\_R2.fq $input2/Wuhan_PE150_99X_$z\_R2.fq > $output/D1W99_PE150_$z\_R2.fq
cat $input1/Delta_PE150_10X_$z\_R1.fq $input2/Wuhan_PE150_90X_$z\_R1.fq > $output/D10W90_PE150_$z\_R1.fq
cat $input1/Delta_PE150_10X_$z\_R2.fq $input2/Wuhan_PE150_90X_$z\_R2.fq > $output/D10W90_PE150_$z\_R2.fq
cat $input1/Delta_PE150_20X_$z\_R1.fq $input2/Wuhan_PE150_80X_$z\_R1.fq > $output/D20W80_PE150_$z\_R1.fq
cat $input1/Delta_PE150_20X_$z\_R2.fq $input2/Wuhan_PE150_80X_$z\_R2.fq > $output/D20W80_PE150_$z\_R2.fq
cat $input1/Delta_PE150_30X_$z\_R1.fq $input2/Wuhan_PE150_70X_$z\_R1.fq > $output/D30W70_PE150_$z\_R1.fq
cat $input1/Delta_PE150_30X_$z\_R2.fq $input2/Wuhan_PE150_70X_$z\_R2.fq > $output/D30W70_PE150_$z\_R2.fq
cat $input1/Delta_PE150_40X_$z\_R1.fq $input2/Wuhan_PE150_60X_$z\_R1.fq > $output/D40W60_PE150_$z\_R1.fq
cat $input1/Delta_PE150_40X_$z\_R2.fq $input2/Wuhan_PE150_60X_$z\_R2.fq > $output/D40W60_PE150_$z\_R2.fq
cat $input1/Delta_PE150_50X_$z\_R1.fq $input2/Wuhan_PE150_50X_$z\_R1.fq > $output/D50W50_PE150_$z\_R1.fq
cat $input1/Delta_PE150_50X_$z\_R2.fq $input2/Wuhan_PE150_50X_$z\_R2.fq > $output/D50W50_PE150_$z\_R2.fq
cat $input1/Delta_PE150_60X_$z\_R1.fq $input2/Wuhan_PE150_40X_$z\_R1.fq > $output/D60W40_PE150_$z\_R1.fq
cat $input1/Delta_PE150_60X_$z\_R2.fq $input2/Wuhan_PE150_40X_$z\_R2.fq > $output/D60W40_PE150_$z\_R2.fq
cat $input1/Delta_PE150_70X_$z\_R1.fq $input2/Wuhan_PE150_30X_$z\_R1.fq > $output/D70W30_PE150_$z\_R1.fq
cat $input1/Delta_PE150_70X_$z\_R2.fq $input2/Wuhan_PE150_30X_$z\_R2.fq > $output/D70W30_PE150_$z\_R2.fq
cat $input1/Delta_PE150_80X_$z\_R1.fq $input2/Wuhan_PE150_20X_$z\_R1.fq > $output/D80W20_PE150_$z\_R1.fq
cat $input1/Delta_PE150_80X_$z\_R2.fq $input2/Wuhan_PE150_20X_$z\_R2.fq > $output/D80W20_PE150_$z\_R2.fq
cat $input1/Delta_PE150_90X_$z\_R1.fq $input2/Wuhan_PE150_10X_$z\_R1.fq > $output/D90W10_PE150_$z\_R1.fq
cat $input1/Delta_PE150_90X_$z\_R2.fq $input2/Wuhan_PE150_10X_$z\_R2.fq > $output/D90W10_PE150_$z\_R2.fq
cat $input1/Delta_PE150_1X_$z\_R1.fq $input2/Wuhan_PE150_99X_$z\_R1.fq > $output/D1W99_PE150_$z\_R1.fq
cat $input1/Delta_PE150_1X_$z\_R2.fq $input2/Wuhan_PE150_99X_$z\_R2.fq > $output/D1W99_PE150_$z\_R2.fq
done

for z in {1..5}
do
cat $input1/Delta_PE150_1X_IE_$z\_R1.fq $input2/Wuhan_PE150_99X_IE_$z\_R1.fq > $output/D1W99_PE150_IE_$z\_R1.fq
cat $input1/Delta_PE150_1X_IE_$z\_R2.fq $input2/Wuhan_PE150_99X_IE_$z\_R2.fq > $output/D1W99_PE150_IE_$z\_R2.fq
cat $input1/Delta_PE150_10X_IE_$z\_R1.fq $input2/Wuhan_PE150_90X_IE_$z\_R1.fq > $output/D10W90_PE150_IE_$z\_R1.fq
cat $input1/Delta_PE150_10X_IE_$z\_R2.fq $input2/Wuhan_PE150_90X_IE_$z\_R2.fq > $output/D10W90_PE150_IE_$z\_R2.fq
cat $input1/Delta_PE150_20X_IE_$z\_R1.fq $input2/Wuhan_PE150_80X_IE_$z\_R1.fq > $output/D20W80_PE150_IE_$z\_R1.fq
cat $input1/Delta_PE150_20X_IE_$z\_R2.fq $input2/Wuhan_PE150_80X_IE_$z\_R2.fq > $output/D20W80_PE150_IE_$z\_R2.fq
cat $input1/Delta_PE150_30X_IE_$z\_R1.fq $input2/Wuhan_PE150_70X_IE_$z\_R1.fq > $output/D30W70_PE150_IE_$z\_R1.fq
cat $input1/Delta_PE150_30X_IE_$z\_R2.fq $input2/Wuhan_PE150_70X_IE_$z\_R2.fq > $output/D30W70_PE150_IE_$z\_R2.fq
cat $input1/Delta_PE150_40X_IE_$z\_R1.fq $input2/Wuhan_PE150_60X_IE_$z\_R1.fq > $output/D40W60_PE150_IE_$z\_R1.fq
cat $input1/Delta_PE150_40X_IE_$z\_R2.fq $input2/Wuhan_PE150_60X_IE_$z\_R2.fq > $output/D40W60_PE150_IE_$z\_R2.fq
cat $input1/Delta_PE150_50X_IE_$z\_R1.fq $input2/Wuhan_PE150_50X_IE_$z\_R1.fq > $output/D50W50_PE150_IE_$z\_R1.fq
cat $input1/Delta_PE150_50X_IE_$z\_R2.fq $input2/Wuhan_PE150_50X_IE_$z\_R2.fq > $output/D50W50_PE150_IE_$z\_R2.fq
cat $input1/Delta_PE150_60X_IE_$z\_R1.fq $input2/Wuhan_PE150_40X_IE_$z\_R1.fq > $output/D60W40_PE150_IE_$z\_R1.fq
cat $input1/Delta_PE150_60X_IE_$z\_R2.fq $input2/Wuhan_PE150_40X_IE_$z\_R2.fq > $output/D60W40_PE150_IE_$z\_R2.fq
cat $input1/Delta_PE150_70X_IE_$z\_R1.fq $input2/Wuhan_PE150_30X_IE_$z\_R1.fq > $output/D70W30_PE150_IE_$z\_R1.fq
cat $input1/Delta_PE150_70X_IE_$z\_R2.fq $input2/Wuhan_PE150_30X_IE_$z\_R2.fq > $output/D70W30_PE150_IE_$z\_R2.fq
cat $input1/Delta_PE150_80X_IE_$z\_R1.fq $input2/Wuhan_PE150_20X_IE_$z\_R1.fq > $output/D80W20_PE150_IE_$z\_R1.fq
cat $input1/Delta_PE150_80X_IE_$z\_R2.fq $input2/Wuhan_PE150_20X_IE_$z\_R2.fq > $output/D80W20_PE150_IE_$z\_R2.fq
cat $input1/Delta_PE150_90X_IE_$z\_R1.fq $input2/Wuhan_PE150_10X_IE_$z\_R1.fq > $output/D90W10_PE150_IE_$z\_R1.fq
cat $input1/Delta_PE150_90X_IE_$z\_R2.fq $input2/Wuhan_PE150_10X_IE_$z\_R2.fq > $output/D90W10_PE150_IE_$z\_R2.fq
cat $input1/Delta_PE150_1X_IE_$z\_R1.fq $input2/Wuhan_PE150_99X_IE_$z\_R1.fq > $output/D1W99_PE150_IE_$z\_R1.fq
cat $input1/Delta_PE150_1X_IE_$z\_R2.fq $input2/Wuhan_PE150_99X_IE_$z\_R2.fq > $output/D1W99_PE150_IE_$z\_R2.fq
done