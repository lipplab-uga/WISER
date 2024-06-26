#!/bin/bash
#SBATCH --job-name=Grinder_Delta_sim_V3_ARTIC_Illumina_reads_Error
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
output='/scratch/mandyh/WISER_InSilico/Mixtures/sim_delta_amp_reads'
final_output='/scratch/mandyh/WISER_InSilico/Mixtures/final_sim_delta_amp_reads'

for i in {1..108}
do
for y in {1,10,50}
do
for z in {1..5}
do
echo "i: $i, y: $y, z: $z"
grinder -reference_file $genomes/Delta_gisaid_hcov-19_GA_2021_06_30_14.fasta -forward_reverse $input/V3_POS$i\.fas -coverage_fold $y -read_dist 250 -insert_dist 350 -mate_orientation FR -mutation_dist linear 0.1 0.2 -qual_levels 30 10 -fastq_output 1 -output_dir $output/ -base_name Delta_POS$i\_V3_PE250_$y\X_IE_$z
done
done
done

for y in {1,10,50}
do
for z in {1..5}
do
echo "y: $y, z: $z"
cat $output/Delta_POS*_V3_PE250_$y\X_IE_$z\-reads.fastq > $final_output/Delta_V3_PE250_$y\X_IE_$z\-reads.fastq
done
done