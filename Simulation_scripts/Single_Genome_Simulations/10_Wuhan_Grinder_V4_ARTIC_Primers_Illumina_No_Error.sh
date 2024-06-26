#!/bin/bash
#SBATCH --job-name=Grinder_sim_V4_ARTIC_Illumina_reads
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

module load Grinder/0.5.4-GCCcore-8.3.0-Perl-5.30.0

cd /scratch/mandyh/WISER_InSilico/Amplicon

#define directory
genomes='/scratch/mandyh/WISER_InSilico/genomes'
input='/scratch/mandyh/WISER_InSilico/Amplicon/V4_ARTIC_Primers'
output='/scratch/mandyh/WISER_InSilico/Amplicon/sim_V4_Wh1_Illumina_reads'
final_output='/scratch/mandyh/WISER_InSilico/Amplicon/final_sim_V4_Wh1_Illumina_reads'

for i in {1..99}
do
for x in {150,250,300}
do
for y in {1,2,3,4,5,6,7,8,9,10,15,20,25}
do
for z in {1..5}
do
echo "i: $i, x: $x, y: $y, z: $z"
grinder -reference_file $genomes/Wuhan-Hu-1_SARS-COV-2.fasta -forward_reverse $input/V4_POS$i\.fas -coverage_fold $y -read_dist $x -insert_dist 350 -mate_orientation FR -mutation_dist 0 0 -qual_levels 30 10 -fastq_output 1 -output_dir $output/ -base_name Wh1_POS$i\_PE$x\_$y\X_$z
done
done
done
done

for x in {150,250,300}
do
for y in {1,2,3,4,5,6,7,8,9,10,15,20,25}
do
for z in {1..5}
do
echo "x: $x, y: $y, z: $z"
cat $output/Wh1_POS*_PE$x\_$y\X_$z\-reads.fastq > $final_output/Wh1_PE$x\_$y\X_$z\-reads.fastq
done
done
done