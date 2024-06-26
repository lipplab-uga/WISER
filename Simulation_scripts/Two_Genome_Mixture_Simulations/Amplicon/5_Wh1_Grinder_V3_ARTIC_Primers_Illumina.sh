#!/bin/bash
#SBATCH --job-name=Grinder_sim_V3_ARTIC_Illumina_reads
#SBATCH --partition=batch
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

cd /scratch/mandyh/WISER_InSilico/Mixtures

#define directory
genomes='/scratch/mandyh/WISER_InSilico/genomes'
input='/scratch/mandyh/WISER_InSilico/Amplicon/V3_ARTIC_Primers'
output='/scratch/mandyh/WISER_InSilico/Mixtures/sim_Wh1_amp_reads'
final_output='/scratch/mandyh/WISER_InSilico/Mixtures/final_sim_Wh1_amp_reads'

for i in {1..108}
do
for y in {50,90,99}
do
for z in {1..5}
do
echo "i: $i, y: $y, z: $z"
grinder -reference_file $genomes/Wuhan-Hu-1_SARS-COV-2.fasta -forward_reverse $input/V3_POS$i\.fas -coverage_fold $y -read_dist 250 -insert_dist 350 -mate_orientation FR -mutation_dist 0 0 -qual_levels 30 10 -fastq_output 1 -output_dir $output/ -base_name Wh1_POS$i\_V3_PE250_$y\X_$z
done
done
done

for y in {50,90,99}
do
for z in {1..5}
do
echo "y: $y, z: $z"
cat $output/Wh1_POS*_V3_PE250_$y\X_$z\-reads.fastq > $final_output/Wh1_V3_PE250_$y\X_$z\-reads.fastq
done
done