#!/bin/bash
#SBATCH --job-name=rename_mafft_input_all_ww
#SBATCH --partition=iob_p
#SBATCH --ntasks=1
#SBATCH --mem=500mb
#SBATCH --time=1:00:00
#SBATCH --output=%x_%j.out
#SBATCH --error=%x_%j.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=email@uga.edu

cd /scratch/mandyh/WISER_WW/All_WW_StrainSort/mafft_inputs/hold_50P_N
outputs='/scratch/mandyh/WISER_WW/All_WW_StrainSort/mafft_inputs'

sed '/^>/s/$/|7-25-22|CC/' W12_spike_protein_final.fasta > $outputs/W12_final.fasta
sed '/^>/s/$/|7-4-22|NO/' W13_spike_protein_final.fasta > $outputs/W13_final.fasta
sed '/^>/s/$/|1-10-22|MI/' W15_spike_protein_final.fasta > $outputs/W15_final.fasta
sed '/^>/s/$/|8-25-21|CC/' W17_spike_protein_final.fasta > $outputs/W17_final.fasta
sed '/^>/s/$/|9-1-21|MI/' W18_spike_protein_final.fasta > $outputs/W18_final.fasta
sed '/^>/s/$/|9-22-21|MI/' W19_spike_protein_final.fasta > $outputs/W19_final.fasta
sed '/^>/s/$/|10-6-21|NO/' W23_spike_protein_final.fasta > $outputs/W23_final.fasta
sed '/^>/s/$/|1-19-22|CC/' W25_spike_protein_final.fasta > $outputs/W25_final.fasta
sed '/^>/s/$/|7-6-22|NO/' W28_spike_protein_final.fasta > $outputs/W28_final.fasta
sed '/^>/s/$/|7-11-22|MI/' W29_spike_protein_final.fasta > $outputs/W29_final.fasta
sed '/^>/s/$/|1-5-22|CC/' W34_spike_protein_final.fasta > $outputs/W34_final.fasta
sed '/^>/s/$/|9-29-21|MI/' W38_spike_protein_final.fasta > $outputs/W38_final.fasta
sed '/^>/s/$/|1-10-22|NO/' W39_spike_protein_final.fasta > $outputs/W39_final.fasta
sed '/^>/s/$/|7-4-22|CC/' W47_spike_protein_final.fasta > $outputs/W47_final.fasta
sed '/^>/s/$/|1-3-22|CC/' W50_spike_protein_final.fasta > $outputs/W50_final.fasta
sed '/^>/s/$/|12-6-21|MI/' W52_spike_protein_final.fasta > $outputs/W52_final.fasta
sed '/^>/s/$/|10-11-21|MI/' W55_spike_protein_final.fasta > $outputs/W55_final.fasta
sed '/^>/s/$/|1-10-22|CC/' W56_spike_protein_final.fasta > $outputs/W56_final.fasta
sed '/^>/s/$/|10-25-21|CC/' W60_spike_protein_final.fasta > $outputs/W60_final.fasta
sed '/^>/s/$/|1-17-22|MI/' W62_spike_protein_final.fasta > $outputs/W62_final.fasta
sed '/^>/s/$/|4-14-21|CC/' W65_spike_protein_final.fasta > $outputs/W65_final.fasta
sed '/^>/s/$/|6-20-22|CC/' W68_spike_protein_final.fasta > $outputs/W68_final.fasta
sed '/^>/s/$/|10-18-21|CC/' W73_spike_protein_final.fasta > $outputs/W73_final.fasta
sed '/^>/s/$/|9-22-21|CC/' W77_spike_protein_final.fasta > $outputs/W77_final.fasta
sed '/^>/s/$/|8-18-21|MI/' W79_spike_protein_final.fasta > $outputs/W79_final.fasta
sed '/^>/s/$/|8-17-22|NO/' W81_spike_protein_final.fasta > $outputs/W81_final.fasta
sed '/^>/s/$/|1-5-22|NO/' W82_spike_protein_final.fasta > $outputs/W82_final.fasta
sed '/^>/s/$/|7-13-22|CC/' W83_spike_protein_final.fasta > $outputs/W83_final.fasta
sed '/^>/s/$/|9-5-22|MI/' W91_spike_protein_final.fasta > $outputs/W91_final.fasta
sed '/^>/s/$/|6-22-22|CC/' W92_spike_protein_final.fasta > $outputs/W92_final.fasta
sed '/^>/s/$/|1-24-22|CC/' W96_spike_protein_final.fasta > $outputs/W96_final.fasta
sed '/^>/s/$/|6-15-22|MI/' W101_spike_protein_final.fasta > $outputs/W101_final.fasta
sed '/^>/s/$/|6-8-22|CC/' W102_spike_protein_final.fasta > $outputs/W102_final.fasta
sed '/^>/s/$/|1-3-22|MI/' W105_spike_protein_final.fasta > $outputs/W105_final.fasta
sed '/^>/s/$/|6-20-22|MI/' W111_spike_protein_final.fasta > $outputs/W111_final.fasta
sed '/^>/s/$/|5-4-22|MI/' W121_spike_protein_final.fasta > $outputs/W121_final.fasta
sed '/^>/s/$/|6-13-22|MI/' W123_spike_protein_final.fasta > $outputs/W123_final.fasta
sed '/^>/s/$/|7-13-22|NO/' W124_spike_protein_final.fasta > $outputs/W124_final.fasta
sed '/^>/s/$/|2-2-22|NO/' W127_spike_protein_final.fasta > $outputs/W127_final.fasta
sed '/^>/s/$/|5-25-22|NO/' W129_spike_protein_final.fasta > $outputs/W129_final.fasta
sed '/^>/s/$/|10-6-21|MI/' W130_spike_protein_final.fasta > $outputs/W130_final.fasta