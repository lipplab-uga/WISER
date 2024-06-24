#!/bin/bash
#SBATCH --job-name=Kallisto_psuedobam_read_separation
#SBATCH --partition=iob_p
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12
#SBATCH --mem-per-cpu=6gb
#SBATCH --export=NONE
#SBATCH --time=48:00:00
#SBATCH --output=%x_%j.out
#SBATCH --error=%x_%j.err
#SBATCH --mail-user=email@uga.edu
#SBATCH --mail-type=ALL
#SBATCH --array=1-178

##This can take a fair amount of memory and time

module load SAMtools/1.14-GCC-11.2.0

#Set directory
cd /scratch/mandyh/WISER_WW/All_WW_StrainSort

##Create directories
mkdir /scratch/mandyh/WISER_WW/All_WW_StrainSort/variant_specific_reads_alignments
mkdir /scratch/mandyh/WISER_WW/All_WW_StrainSort/variant_specific_reads_fastq

#define directory
input='/scratch/mandyh/WISER_WW/All_WW_StrainSort/Kallisto_all_WW/Kallisto_all_WW_psuedobam'
output='/scratch/mandyh/WISER_WW/All_WW_StrainSort/variant_specific_reads_alignments'
output2='/scratch/mandyh/WISER_WW/All_WW_StrainSort/variant_specific_reads_fastq'
lineage='/scratch/mandyh/WISER_WW/All_WW_StrainSort/lineage_files'
ref_input='/scratch/mandyh/WISER_WW/All_WW_StrainSort/inputs'

export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

i=$(cat $ref_input/input_${SLURM_ARRAY_TASK_ID})

##converting to pseudobam to sam to work with
samtools sort $input/$i\_pseudoalignments.bam > $input/$i\_pseudoalignments_sorted.bam
samtools index $input/$i\_pseudoalignments_sorted.bam
samtools view -h $input/$i\_pseudoalignments_sorted.bam > $input/$i\_pseudoalignments.sam
grep "@" $input/$i\_pseudoalignments.sam > $output/sam_headers_$i\.txt

### only grab mapped reads where both R1 and R2 map - need paired for spades to work
cat $input/$i\_pseudoalignments.sam | grep -v "^@" | awk 'BEGIN{FS="\t";OFS="\t"}{if($2=='83'||$2=='99'||$2=='147'||$2=='163') print $0}' > $output/incomplete_$i\_mapped_reads.sam
### grab unmapped reads
cat $input/$i\_pseudoalignments.sam | grep -v "^@" | awk 'BEGIN{FS="\t";OFS="\t"}{if($2=='77'||$2=='141') print $0}' > $output/incomplete_$i\_unmapped_reads.sam
cat $output/sam_headers_$i\.txt $output/incomplete_$i\_unmapped_reads.sam > $output/$i\_unmapped_reads.sam
samtools view -S -b $output/$i\_unmapped_reads.sam > $output/$i\_unmapped_reads.bam
samtools fastq $output/$i\_unmapped_reads.bam -1 $output2/$i\_unmapped_R1.fastq -2 $output2/$i\_unmapped_R2.fastq

### Pulling out lineage from mapped reads by sample
### Get the strains used for x from the "All_strain_names.txt" file created by lineage_file_stepup.class
for x in {BA.1,BA.1.1,BA.1.1.18,BA.2,BA.2.10,BA.2.12.1,BA.2.13,BA.2.18,BA.2.26,BA.2.3,BA.2.3.17,BA.2.3.20,BA.2.3.6,BA.2.32,BA.2.36,BA.2.48,BA.2.56,BA.2.59,BA.2.65,BA.2.7,BA.2.73,BA.2.76,BA.2.9,BA.2.9.7,BA.4.1,BA.5.1.22,BA.5.1.30,BA.5.2.20,BA.5.2.6,BA.5.5.2,BF.10,BF.26,BF.5,BF.7,BF.7.7,BG.5,BM.1.1,BM.1.1.3,BN.1,BN.1.3,BQ.1,BQ.1.1,BR.1.2,BR.5,CA.1,CM.2,XAM,XAP,XBB.1.5,AY.25,AY.3,AY.100,AY.103,AY.39.1,AY.118,AY.25.1,AY.39,AY.113,AY.44,AY.47,AY.119,AY.122,AY.43,BM.4.1.1,B.1.621,B.1.621.1,P.1,P.1.10,P.1.17,P.1.15,B.1.351,B.1.351.3,B.1.1.7,BA.5,BA.5.1,BA.5.2.1,BA.5.5,B.1.427,B.1.429,B.1.525,B.1.526,B.1.617.1,B.1.617.3,P.2,B.1.617.2,AY.83,B,AY.2,B.1.1.529,BA.4,B.1.503,AY.46.1,AY.62,AY.75}
do
grep -f $lineage/$x\.txt $output/incomplete_$i\_mapped_reads.sam > $output/incomplete_$i\_$x\_reads.sam
cat $output/sam_headers_$i\.txt $output/incomplete_$i\_$x\_reads.sam > $output/$i\_$x\_reads.sam
samtools view -S -b $output/$i\_$x\_reads.sam > $output/$i\_$x\_reads.bam
echo "$x"
samtools fastq $output/$i\_$x\_reads.bam -1 $output2/$i\_$x\_R1.fastq -2 $output2/$i\_$x\_R2.fastq
done