#!/bin/bash
#SBATCH --job-name=Splitting_CM_amp_reads
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

module load seqtk/1.2-foss-2019b

cd /scratch/mandyh/WISER_InSilico/Mixtures

#define directory
input='/scratch/mandyh/WISER_InSilico/Mixtures/final_sim_mix_amp_reads'
output='/scratch/mandyh/WISER_InSilico/Mixtures/Split_sim_mix_amp_reads'

for x in {1..16}
do
for i in {3,4}
do
for z in {1..5}
do
echo "x: $x, i: $i, z: $z"
seqtk seq -1 $input/Complex_M$x\_V$i\_PE250_$z\-reads.fastq > $output/Complex_M$x\_V$i\_PE250_$z\_R1.fq
seqtk seq -2 $input/Complex_M$x\_V$i\_PE250_$z\-reads.fastq > $output/Complex_M$x\_V$i\_PE250_$z\_R2.fq
done
done
done

for x in {1..16}
do
for i in {3,4}
do
for z in {1..5}
do
echo "x: $x, i: $i, z: $z"
seqtk seq -1 $input/Complex_M$x\_V$i\_PE250_IE_$z\-reads.fastq > $output/Complex_M$x\_V$i\_PE250_IE_$z\_R1.fq
seqtk seq -2 $input/Complex_M$x\_V$i\_PE250_IE_$z\-reads.fastq > $output/Complex_M$x\_V$i\_PE250_IE_$z\_R2.fq
done
done
done
