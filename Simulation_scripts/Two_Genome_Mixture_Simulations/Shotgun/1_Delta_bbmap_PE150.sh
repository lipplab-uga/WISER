#!/bin/bash
#SBATCH --job-name=bbmap_sim_Delta_PE150_reads
#SBATCH --partition=glenn_p
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=12
#SBATCH --mem=10gb
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
genomes='/scratch/mandyh/WISER_InSilico/genomes'
output='/scratch/mandyh/WISER_InSilico/Mixtures/sim_delta_shotgun_reads'

for i in {1,10,20,30,40,50,60,70,80,90,99}
do
for x in {1..5}
do
randomreads.sh ref=$genomes/Delta_gisaid_hcov-19_GA_2021_06_30_14.fasta out1=$output/Delta_PE150_$i\X_$x\_R1.fq out2=$output/Delta_PE150_$i\X_$x\_R2.fq seed=-1 q=40 adderrors=f snprate=0 insrate=0 delrate=0 subrate=0 nrate=0 paired=t len=150 coverage=$i
done
done

for i in {1,10,20,30,40,50,60,70,80,90,99}
do
for x in {1..5}
do
randomreads.sh ref=$genomes/Delta_gisaid_hcov-19_GA_2021_06_30_14.fasta out1=$output/Delta_PE150_$i\X_IE_$x\_R1.fq out2=$output/Delta_PE150_$i\X_IE_$x\_R2.fq seed=-1 maxq=36 midq=28 minq=20 adderrors=t qv=4 paired=t len=150 coverage=$i
done
done