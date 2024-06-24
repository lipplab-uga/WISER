#!/bin/bash
#SBATCH --job-name=spades_strain_specific
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

module load SPAdes/3.15.5-GCC-11.3.0 

cd /scratch/mandyh/WISER_WW/All_WW_StrainSort/spades_output

input='/scratch/mandyh/WISER_WW/All_WW_StrainSort/variant_specific_reads_fastq'
ref_input='/scratch/mandyh/WISER_WW/All_WW_StrainSort/inputs'

export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

i=$(cat $ref_input/input_${SLURM_ARRAY_TASK_ID})

### Get the strains used for x from the "All_strain_names.txt" file created by lineage_file_stepup.class
### add unmapped to end
### here the flag meta is being used. You can use corona for SARS-CoV-2 data
### make sure threads and memory match the resources given
### Spades will output a folder with assembly files within it
for x in {BA.1,BA.1.1,BA.1.1.18,BA.2,BA.2.10,BA.2.12.1,BA.2.13,BA.2.18,BA.2.26,BA.2.3,BA.2.3.17,BA.2.3.20,BA.2.3.6,BA.2.32,BA.2.36,BA.2.48,BA.2.56,BA.2.59,BA.2.65,BA.2.7,BA.2.73,BA.2.76,BA.2.9,BA.2.9.7,BA.4.1,BA.5.1.22,BA.5.1.30,BA.5.2.20,BA.5.2.6,BA.5.5.2,BF.10,BF.26,BF.5,BF.7,BF.7.7,BG.5,BM.1.1,BM.1.1.3,BN.1,BN.1.3,BQ.1,BQ.1.1,BR.1.2,BR.5,CA.1,CM.2,XAM,XAP,XBB.1.5,AY.25,AY.3,AY.100,AY.103,AY.39.1,AY.118,AY.25.1,AY.39,AY.113,AY.44,AY.47,AY.119,AY.122,AY.43,BM.4.1.1,B.1.621,B.1.621.1,P.1,P.1.10,P.1.17,P.1.15,B.1.351,B.1.351.3,B.1.1.7,BA.5,BA.5.1,BA.5.2.1,BA.5.5,B.1.427,B.1.429,B.1.525,B.1.526,B.1.617.1,B.1.617.3,P.2,B.1.617.2,AY.83,B,AY.2,B.1.1.529,BA.4,B.1.503,AY.46.1,AY.62,AY.75,unmapped}
do
python /apps/eb/SPAdes/3.15.5-GCC-11.3.0/bin/spades.py --corona --threads 12 --memory 6 --only-assembler -o ./$i\_$x -1 $input/$i\_$x\_R1.fastq -2 $input/$i\_$x\_R2.fastq
done