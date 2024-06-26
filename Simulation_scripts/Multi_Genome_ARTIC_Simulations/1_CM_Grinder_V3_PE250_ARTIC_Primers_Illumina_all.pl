#!/bin/bash
#SBATCH --job-name=Grinder_other_sim_V3_PE250_ARTIC_Illumina_reads_CM
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

cd /scratch/mandyh/WISER_InSilico/Mixtures

#define directory
genomes='/scratch/mandyh/WISER_InSilico/genomes'
input='/scratch/mandyh/WISER_InSilico/Amplicon/V3_ARTIC_Primers'
output='/scratch/mandyh/WISER_InSilico/Mixtures/sim_CM_amp_reads'
final_output='/scratch/mandyh/WISER_InSilico/Mixtures/final_sim_CM_amp_reads'

#####Alpha
for i in {1..108}
do
for y in {0.25,1,10,20}
do
for z in {1..5}
do
echo "i: $i, z: $z"
grinder -reference_file $genomes/Alpha_gisaid_hcov-19_2021_11_15_15.fasta -forward_reverse $input/V3_POS$i\.fas -coverage_fold $y -read_dist 250 -insert_dist 350 -mate_orientation FR -mutation_dist 0 0 -qual_levels 30 10 -fastq_output 1 -output_dir $output/ -base_name Alpha_POS$i\_V3_PE250_$y\X_$z
done
done
done

for y in {0.25,1,10,20}
do
for z in {1..5}
do
echo "y: $y, z: $z"
cat $output/Alpha_POS*_V3_PE250_$y\X_$z\-reads.fastq > $final_output/Alpha_V3_PE250_$y\X_$z\-reads.fastq
done
done

for i in {1..108}
do
for y in {0.25,1,10,20}
do
for z in {1..5}
do
echo "i: $i, y: $y, z: $z"
grinder -reference_file $genomes/Alpha_gisaid_hcov-19_2021_11_15_15.fasta -forward_reverse $input/V3_POS$i\.fas -coverage_fold $y -read_dist 250 -insert_dist 350 -mate_orientation FR -mutation_dist linear 0.1 0.2 -qual_levels 30 10 -fastq_output 1 -output_dir $output/ -base_name Alpha_POS$i\_V3_PE250_$y\X_IE_$z
done
done
done

for y in {0.25,1,10,20}
do
for z in {1..5}
do
echo "y: $y, z: $z"
cat $output/Alpha_POS*_V3_PE250_$y\X_IE_$z\-reads.fastq > $final_output/Alpha_V3_PE250_$y\X_IE_$z\-reads.fastq
done
done

#####Beta
for i in {1..108}
do
for y in {0.25,1,10,20}
do
for z in {1..5}
do
echo "i: $i, z: $z"
grinder -reference_file $genomes/Beta_gisaid_hcov-19_2021_11_15_15.fasta -forward_reverse $input/V3_POS$i\.fas -coverage_fold $y -read_dist 250 -insert_dist 350 -mate_orientation FR -mutation_dist 0 0 -qual_levels 30 10 -fastq_output 1 -output_dir $output/ -base_name Beta_POS$i\_V3_PE250_$y\X_$z
done
done
done

for y in {0.25,1,10,20}
do
for z in {1..5}
do
echo "y: $y, z: $z"
cat $output/Beta_POS*_V3_PE250_$y\X_$z\-reads.fastq > $final_output/Beta_V3_PE250_$y\X_$z\-reads.fastq
done
done

for i in {1..108}
do
for y in {0.25,1,10,20}
do
for z in {1..5}
do
echo "i: $i, y: $y, z: $z"
grinder -reference_file $genomes/Beta_gisaid_hcov-19_2021_11_15_15.fasta -forward_reverse $input/V3_POS$i\.fas -coverage_fold $y -read_dist 250 -insert_dist 350 -mate_orientation FR -mutation_dist linear 0.1 0.2 -qual_levels 30 10 -fastq_output 1 -output_dir $output/ -base_name Beta_POS$i\_V3_PE250_$y\X_IE_$z
done
done
done

for y in {0.25,1,10,20}
do
for z in {1..5}
do
echo "y: $y, z: $z"
cat $output/Beta_POS*_V3_PE250_$y\X_IE_$z\-reads.fastq > $final_output/Beta_V3_PE250_$y\X_IE_$z\-reads.fastq
done
done

#####Delta
for i in {1..108}
do
for y in {0.25,1,2.5,5,7.5,10,20,50,89,91.5,94,95,96.5,98}
do
for z in {1..5}
do
echo "i: $i, z: $z"
grinder -reference_file $genomes/Delta_gisaid_hcov-19_GA_2021_06_30_14.fasta -forward_reverse $input/V3_POS$i\.fas -coverage_fold $y -read_dist 250 -insert_dist 350 -mate_orientation FR -mutation_dist 0 0 -qual_levels 30 10 -fastq_output 1 -output_dir $output/ -base_name Delta_POS$i\_V3_PE250_$y\X_$z
done
done
done

for y in {0.25,1,2.5,5,7.5,10,20,50,89,91.5,94,95,96.5,98}
do
for z in {1..5}
do
echo "y: $y, z: $z"
cat $output/Delta_POS*_V3_PE250_$y\X_$z\-reads.fastq > $final_output/Delta_V3_PE250_$y\X_$z\-reads.fastq
done
done

for i in {1..108}
do
for y in {0.25,1,2.5,5,7.5,10,20,50,89,91.5,94,95,96.5,98}
do
for z in {1..5}
do
echo "i: $i, y: $y, z: $z"
grinder -reference_file $genomes/Delta_gisaid_hcov-19_GA_2021_06_30_14.fasta -forward_reverse $input/V3_POS$i\.fas -coverage_fold $y -read_dist 250 -insert_dist 350 -mate_orientation FR -mutation_dist linear 0.1 0.2 -qual_levels 30 10 -fastq_output 1 -output_dir $output/ -base_name Delta_POS$i\_V3_PE250_$y\X_IE_$z
done
done
done

for y in {0.25,1,2.5,5,7.5,10,20,50,89,91.5,94,95,96.5,98}
do
for z in {1..5}
do
echo "y: $y, z: $z"
cat $output/Delta_POS*_V3_PE250_$y\X_IE_$z\-reads.fastq > $final_output/Delta_V3_PE250_$y\X_IE_$z\-reads.fastq
done
done

####Gamma
for i in {1..108}
do
for y in {0.25,1,10}
do
for z in {1..5}
do
echo "i: $i, z: $z"
grinder -reference_file $genomes/Gamma_gisaid_hcov-19_2021_11_15_16.fasta -forward_reverse $input/V3_POS$i\.fas -coverage_fold $y -read_dist 250 -insert_dist 350 -mate_orientation FR -mutation_dist 0 0 -qual_levels 30 10 -fastq_output 1 -output_dir $output/ -base_name Gamma_POS$i\_V3_PE250_$y\X_$z
done
done
done

for y in {0.25,1,10,20}
do
for z in {1..5}
do
echo "y: $y, z: $z"
cat $output/Gamma_POS*_V3_PE250_$y\X_$z\-reads.fastq > $final_output/Gamma_V3_PE250_$y\X_$z\-reads.fastq
done
done

for i in {1..108}
do
for y in {0.25,1,10,20}
do
for z in {1..5}
do
echo "i: $i, y: $y, z: $z"
grinder -reference_file $genomes/Gamma_gisaid_hcov-19_2021_11_15_16.fasta -forward_reverse $input/V3_POS$i\.fas -coverage_fold $y -read_dist 250 -insert_dist 350 -mate_orientation FR -mutation_dist linear 0.1 0.2 -qual_levels 30 10 -fastq_output 1 -output_dir $output/ -base_name Gamma_POS$i\_V3_PE250_$y\X_IE_$z
done
done
done

for y in {0.25,1,10,20}
do
for z in {1..5}
do
echo "y: $y, z: $z"
cat $output/Gamma_POS*_V3_PE250_$y\X_IE_$z\-reads.fastq > $final_output/Gamma_V3_PE250_$y\X_IE_$z\-reads.fastq
done
done

####Wh1
for i in {1..108}
do
for y in {0.25,1,10,20,50,95}
do
for z in {1..5}
do
echo "i: $i, z: $z"
grinder -reference_file $genomes/Wuhan-Hu-1_SARS-COV-2.fasta -forward_reverse $input/V3_POS$i\.fas -coverage_fold $y -read_dist 250 -insert_dist 350 -mate_orientation FR -mutation_dist 0 0 -qual_levels 30 10 -fastq_output 1 -output_dir $output/ -base_name Wh1_POS$i\_V3_PE250_$y\X_$z
done
done
done

for y in {0.25,1,10,20,50,95}
do
for z in {1..5}
do
echo "y: $y, z: $z"
cat $output/Wh1_POS*_V3_PE250_$y\X_$z\-reads.fastq > $final_output/Wh1_V3_PE250_$y\X_$z\-reads.fastq
done
done

for i in {1..108}
do
for y in {0.25,1,10,20,50,95}
do
for z in {1..5}
do
echo "i: $i, y: $y, z: $z"
grinder -reference_file $genomes/Wuhan-Hu-1_SARS-COV-2.fasta -forward_reverse $input/V3_POS$i\.fas -coverage_fold $y -read_dist 250 -insert_dist 350 -mate_orientation FR -mutation_dist linear 0.1 0.2 -qual_levels 30 10 -fastq_output 1 -output_dir $output/ -base_name Wh1_POS$i\_V3_PE250_$y\X_IE_$z
done
done
done

for y in {0.25,1,10,20,50,95}
do
for z in {1..5}
do
echo "y: $y, z: $z"
cat $output/Wh1_POS*_V3_PE250_$y\X_IE_$z\-reads.fastq > $final_output/Wh1_V3_PE250_$y\X_IE_$z\-reads.fastq
done
done

#####Omicron
for i in {1..108}
do
for y in {0.25,1,2.5,5,7.5,10,20,50,89,91.5,94,95,96.5,98}
do
for z in {1..5}
do
echo "i: $i, z: $z"
grinder -reference_file $genomes/omicron-1_MO.fasta -forward_reverse $input/V3_POS$i\.fas -coverage_fold $y -read_dist 250 -insert_dist 350 -mate_orientation FR -mutation_dist 0 0 -qual_levels 30 10 -fastq_output 1 -output_dir $output/ -base_name Omicron_POS$i\_V3_PE250_$y\X_$z
done
done
done

for y in {0.25,1,2.5,5,7.5,10,20,50,89,91.5,94,95,96.5,98}
do
for z in {1..5}
do
echo "y: $y, z: $z"
cat $output/Omicron_POS*_V3_PE250_$y\X_$z\-reads.fastq > $final_output/Omicron_V3_PE250_$y\X_$z\-reads.fastq
done
done

for i in {1..108}
do
for y in {0.25,1,2.5,5,7.5,10,20,50,89,91.5,94,95,96.5,98}
do
for z in {1..5}
do
echo "i: $i, y: $y, z: $z"
grinder -reference_file $genomes/omicron-1_MO.fasta -forward_reverse $input/V3_POS$i\.fas -coverage_fold $y -read_dist 250 -insert_dist 350 -mate_orientation FR -mutation_dist linear 0.1 0.2 -qual_levels 30 10 -fastq_output 1 -output_dir $output/ -base_name Omicron_POS$i\_V3_PE250_$y\X_IE_$z
done
done
done

for y in {0.25,1,2.5,5,7.5,10,20,50,89,91.5,94,95,96.5,98}
do
for z in {1..5}
do
echo "y: $y, z: $z"
cat $output/Omicron_POS*_V3_PE250_$y\X_IE_$z\-reads.fastq > $final_output/Omicron_V3_PE250_$y\X_IE_$z\-reads.fastq
done
done