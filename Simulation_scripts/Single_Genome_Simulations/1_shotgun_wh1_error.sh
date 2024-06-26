#!/bin/bash
#SBATCH --job-name=bbmap_sim_wh1_error_reps
#SBATCH --partition=glenn_p
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=12
#SBATCH --mem=10gb
#SBATCH --export=NONE
#SBATCH --time=90:00:00
#SBATCH --output=%x_%j.out
#SBATCH --error=%x_%j.err
#SBATCH --mail-user=email@uga.edu
#SBATCH --mail-type=BEGIN,END,FAIL

module load BBMap/38.83-GCC-8.3.0

cd /scratch/mandyh/WISER_InSilico

for x in {150,250,300}
do
for y in {1,2,3,4,5,6,7,8,9,10,15,20,25,30,35,40,45,50,75,100}
do
for z in {1..5}
do
echo "i: $i, x: $x, y: $y, z: $z"
randomreads.sh ref=./genomes/Wuhan-Hu-1_SARS-COV-2.fasta out1=./sim_reads/Wuhan_PE$x\_$y\X_IE_$z\_R1.fq out2=./sim_reads/Wuhan_PE$x\_$y\X_IE_$z\_R2.fq seed=-1 maxq=36 midq=28 minq=20 adderrors=t qv=4 paired=t len=$x coverage=$y
done
done
done