#!/bin/bash
#SBATCH --job-name=count_trim_reads
#SBATCH --partition=glenn_p
#SBATCH --ntasks=1
#SBATCH --mem=2gb
#SBATCH --time=2:00:00
#SBATCH --output=%x_%j.out
#SBATCH --error=%x_%j.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=email@uga.edu

#set directory 
cd /scratch/mandyh/WISER_WW/WISER_WW_11.08.2023/paired_trim_reads

set -ueo pipefail
SAMPLES="COLL_73_S39
COLL_238_S34
COLL_240_S35
COLL_217_S21
COLL_100_S37
NO_230_S47
COLL_216_S20
MI_228_S46
MI_122_S28
CC_132_S31
COLL_170_S3
MI_123_S29
COLL_209_S36
COLL_118_S27
MI_233_S51
MI_142_S32
COLL_184_S11
POS_CTRL_6_S40
NO_126_S30
COLL_214_S19
NEG_CTRL_6_S24
NO_171_S4
COLL_210_S18
COLL_220_S25
POS_CTRL_7_S55
COLL_232_S50
COLL_200_S13
COLL_97_S38
COLL_219_S23
COLL_176_S8
COLL_208_S17
COLL_231_S49
COLL_177_S9
COLL_201_S14
COLL_234_S52
NO_147_S33
COLL_205_S16
COLL_179_S10
COLL_174_S6
COLL_160_S1
COLL_173_S5
COLL_226_S44
"
i=1

for i in $SAMPLES
do
echo $i
echo $(zcat $i\_pair_trim_R1.fastq.gz|wc -l)/4|bc
echo $(zcat $i\_pair_trim_R2.fastq.gz|wc -l)/4|bc
done