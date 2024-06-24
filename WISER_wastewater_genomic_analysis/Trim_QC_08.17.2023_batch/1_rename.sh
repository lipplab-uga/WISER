#!/bin/bash
#SBATCH --job-name=rename_files
#SBATCH --partition=glenn_p
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --mem=1gb
#SBATCH --time=4:00:00
#SBATCH --output=%x_%j.out
#SBATCH --error=%x_%j.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=mandyh@uga.edu

#set directory 
cd /scratch/mandyh/WISER_WW/WISER_WW_08.17.2023/Raw_data

output='/scratch/mandyh/WISER_WW/WISER_WW_08.17.2023/rename_fastq'

cp	CC_104_S2_R1_001.fastq.gz	$output/W1_R1.fastq.gz
cp	CC_108_S5_R1_001.fastq.gz	$output/W2_R1.fastq.gz
cp	CC_116_S8_R1_001.fastq.gz	$output/W3_R1.fastq.gz
cp	CC_120_S10_R1_001.fastq.gz	$output/W4_R1.fastq.gz
cp	CC_123_S14_R1_001.fastq.gz	$output/W5_R1.fastq.gz
cp	CC_125_S15_R1_001.fastq.gz	$output/W6_R1.fastq.gz
cp	CC_127_S16_R1_001.fastq.gz	$output/W7_R1.fastq.gz
cp	CC_129_S17_R1_001.fastq.gz	$output/W8_R1.fastq.gz
cp	CC_135_S25_R1_001.fastq.gz	$output/W9_R1.fastq.gz
cp	CC_141_S30_R1_001.fastq.gz	$output/W10_R1.fastq.gz
cp	CC_142_S33_R1_001.fastq.gz	$output/W11_R1.fastq.gz
cp	CC_143_S35_R1_001.fastq.gz	$output/W12_R1.fastq.gz
cp	CC_144_S37_R1_001.fastq.gz	$output/W13_R1.fastq.gz
cp	CC_147_S43_R1_001.fastq.gz	$output/W14_R1.fastq.gz
cp	CC_148_S45_R1_001.fastq.gz	$output/W15_R1.fastq.gz
cp	CC_149_S47_R1_001.fastq.gz	$output/W16_R1.fastq.gz
cp	CC_150_S50_R1_001.fastq.gz	$output/W17_R1.fastq.gz
cp	CC_151_S53_R1_001.fastq.gz	$output/W18_R1.fastq.gz
cp	CC_154_S56_R1_001.fastq.gz	$output/W19_R1.fastq.gz
cp	CC_159_S58_R1_001.fastq.gz	$output/W20_R1.fastq.gz
cp	CC_161_S59_R1_001.fastq.gz	$output/W21_R1.fastq.gz
cp	CC_178_S65_R1_001.fastq.gz	$output/W22_R1.fastq.gz
cp	CC_180_S69_R1_001.fastq.gz	$output/W23_R1.fastq.gz
cp	CC_181_S73_R1_001.fastq.gz	$output/W24_R1.fastq.gz
cp	CC_182_S75_R1_001.fastq.gz	$output/W25_R1.fastq.gz
cp	CC_183_S77_R1_001.fastq.gz	$output/W26_R1.fastq.gz
cp	CC_185_S82_R1_001.fastq.gz	$output/W27_R1.fastq.gz
cp	CC_186_S85_R1_001.fastq.gz	$output/W28_R1.fastq.gz
cp	CC_187_S87_R1_001.fastq.gz	$output/W29_R1.fastq.gz
cp	CC_190_S91_R1_001.fastq.gz	$output/W30_R1.fastq.gz
cp	CC_191_S93_R1_001.fastq.gz	$output/W31_R1.fastq.gz
cp	CC_192_S97_R1_001.fastq.gz	$output/W32_R1.fastq.gz
cp	CC_193_S99_R1_001.fastq.gz	$output/W33_R1.fastq.gz
cp	CC_194_S103_R1_001.fastq.gz	$output/W34_R1.fastq.gz
cp	CC_196_S107_R1_001.fastq.gz	$output/W35_R1.fastq.gz
cp	CC_197_S109_R1_001.fastq.gz	$output/W36_R1.fastq.gz
cp	CC_199_S113_R1_001.fastq.gz	$output/W37_R1.fastq.gz
cp	CC_200_S114_R1_001.fastq.gz	$output/W38_R1.fastq.gz
cp	CC_201_S115_R1_001.fastq.gz	$output/W39_R1.fastq.gz
cp	CC_206_S121_R1_001.fastq.gz	$output/W40_R1.fastq.gz
cp	CC_207_S123_R1_001.fastq.gz	$output/W41_R1.fastq.gz
cp	CC_212_S131_R1_001.fastq.gz	$output/W42_R1.fastq.gz
cp	CC_219_S133_R1_001.fastq.gz	$output/W43_R1.fastq.gz
cp	CC_222_S135_R1_001.fastq.gz	$output/W44_R1.fastq.gz
cp	CC_223_S137_R1_001.fastq.gz	$output/W45_R1.fastq.gz
cp	CC_233_S144_R1_001.fastq.gz	$output/W46_R1.fastq.gz
cp	CC_241_S156_R1_001.fastq.gz	$output/W47_R1.fastq.gz
cp	CC_242_S158_R1_001.fastq.gz	$output/W48_R1.fastq.gz
cp	CC_70_S1_R1_001.fastq.gz	$output/W49_R1.fastq.gz
cp	COLL_101_S175_R1_001.fastq.gz	$output/W50_R1.fastq.gz
cp	COLL_102_S176_R1_001.fastq.gz	$output/W51_R1.fastq.gz
cp	COLL_103_S177_R1_001.fastq.gz	$output/W52_R1.fastq.gz
cp	COLL_105_S178_R1_001.fastq.gz	$output/W53_R1.fastq.gz
cp	COLL_107_S179_R1_001.fastq.gz	$output/W54_R1.fastq.gz
cp	COLL_108_S180_R1_001.fastq.gz	$output/W55_R1.fastq.gz
cp	COLL_109_S181_R1_001.fastq.gz	$output/W56_R1.fastq.gz
cp	COLL_110_S182_R1_001.fastq.gz	$output/W57_R1.fastq.gz
cp	COLL_111_S183_R1_001.fastq.gz	$output/W58_R1.fastq.gz
cp	COLL_112_S185_R1_001.fastq.gz	$output/W59_R1.fastq.gz
cp	COLL_113_S186_R1_001.fastq.gz	$output/W60_R1.fastq.gz
cp	COLL_114_S187_R1_001.fastq.gz	$output/W61_R1.fastq.gz
cp	COLL_115_S188_R1_001.fastq.gz	$output/W62_R1.fastq.gz
cp	COLL_117_S189_R1_001.fastq.gz	$output/W63_R1.fastq.gz
cp	COLL_119_S190_R1_001.fastq.gz	$output/W64_R1.fastq.gz
cp	COLL_121_S191_R1_001.fastq.gz	$output/W65_R1.fastq.gz
cp	COLL_122_S192_R1_001.fastq.gz	$output/W66_R1.fastq.gz
cp	COLL_127_S193_R1_001.fastq.gz	$output/W67_R1.fastq.gz
cp	COLL_128_S194_R1_001.fastq.gz	$output/W68_R1.fastq.gz
cp	COLL_129_S195_R1_001.fastq.gz	$output/W69_R1.fastq.gz
cp	COLL_134_S196_R1_001.fastq.gz	$output/W70_R1.fastq.gz
cp	COLL_137_S197_R1_001.fastq.gz	$output/W71_R1.fastq.gz
cp	COLL_138_S198_R1_001.fastq.gz	$output/W72_R1.fastq.gz
cp	COLL_139_S199_R1_001.fastq.gz	$output/W73_R1.fastq.gz
cp	COLL_140_S200_R1_001.fastq.gz	$output/W74_R1.fastq.gz
cp	COLL_152_S201_R1_001.fastq.gz	$output/W75_R1.fastq.gz
cp	COLL_155_S202_R1_001.fastq.gz	$output/W76_R1.fastq.gz
cp	COLL_156_S203_R1_001.fastq.gz	$output/W77_R1.fastq.gz
cp	COLL_158_S204_R1_001.fastq.gz	$output/W78_R1.fastq.gz
cp	COLL_59_S161_R1_001.fastq.gz	$output/W79_R1.fastq.gz
cp	COLL_62_S162_R1_001.fastq.gz	$output/W80_R1.fastq.gz
cp	COLL_64_S163_R1_001.fastq.gz	$output/W81_R1.fastq.gz
cp	COLL_65_S164_R1_001.fastq.gz	$output/W82_R1.fastq.gz
cp	COLL_66_S165_R1_001.fastq.gz	$output/W83_R1.fastq.gz
cp	COLL_67_S166_R1_001.fastq.gz	$output/W84_R1.fastq.gz
cp	COLL_68_S167_R1_001.fastq.gz	$output/W85_R1.fastq.gz
cp	COLL_70_S168_R1_001.fastq.gz	$output/W86_R1.fastq.gz
cp	COLL_75_S169_R1_001.fastq.gz	$output/W87_R1.fastq.gz
cp	COLL_76_S170_R1_001.fastq.gz	$output/W88_R1.fastq.gz
cp	COLL_77_S171_R1_001.fastq.gz	$output/W89_R1.fastq.gz
cp	COLL_78_S172_R1_001.fastq.gz	$output/W90_R1.fastq.gz
cp	COLL_82_S173_R1_001.fastq.gz	$output/W91_R1.fastq.gz
cp	COLL_87_S174_R1_001.fastq.gz	$output/W92_R1.fastq.gz
cp	MI_106_S3_R1_001.fastq.gz	$output/W93_R1.fastq.gz
cp	MI_107_S4_R1_001.fastq.gz	$output/W94_R1.fastq.gz
cp	MI_110_S6_R1_001.fastq.gz	$output/W95_R1.fastq.gz
cp	MI_116_S7_R1_001.fastq.gz	$output/W96_R1.fastq.gz
cp	MI_118_S9_R1_001.fastq.gz	$output/W97_R1.fastq.gz
cp	MI_120_S11_R1_001.fastq.gz	$output/W98_R1.fastq.gz
cp	MI_121_S13_R1_001.fastq.gz	$output/W99_R1.fastq.gz
cp	MI_131_S18_R1_001.fastq.gz	$output/W100_R1.fastq.gz
cp	MI_132_S19_R1_001.fastq.gz	$output/W101_R1.fastq.gz
cp	MI_133_S20_R1_001.fastq.gz	$output/W102_R1.fastq.gz
cp	MI_134_S22_R1_001.fastq.gz	$output/W103_R1.fastq.gz
cp	MI_135_S23_R1_001.fastq.gz	$output/W104_R1.fastq.gz
cp	MI_136_S27_R1_001.fastq.gz	$output/W105_R1.fastq.gz
cp	MI_137_S28_R1_001.fastq.gz	$output/W106_R1.fastq.gz
cp	MI_141_S29_R1_001.fastq.gz	$output/W107_R1.fastq.gz
cp	MI_142_S31_R1_001.fastq.gz	$output/W108_R1.fastq.gz
cp	MI_143_S34_R1_001.fastq.gz	$output/W109_R1.fastq.gz
cp	MI_144_S38_R1_001.fastq.gz	$output/W110_R1.fastq.gz
cp	MI_146_S40_R1_001.fastq.gz	$output/W111_R1.fastq.gz
cp	MI_147_S41_R1_001.fastq.gz	$output/W112_R1.fastq.gz
cp	MI_148_S44_R1_001.fastq.gz	$output/W113_R1.fastq.gz
cp	MI_149_S48_R1_001.fastq.gz	$output/W114_R1.fastq.gz
cp	MI_150_S49_R1_001.fastq.gz	$output/W115_R1.fastq.gz
cp	MI_151_S52_R1_001.fastq.gz	$output/W116_R1.fastq.gz
cp	MI_153_S55_R1_001.fastq.gz	$output/W117_R1.fastq.gz
cp	MI_157_S57_R1_001.fastq.gz	$output/W118_R1.fastq.gz
cp	MI_176_S61_R1_001.fastq.gz	$output/W119_R1.fastq.gz
cp	MI_177_S62_R1_001.fastq.gz	$output/W120_R1.fastq.gz
cp	MI_178_S64_R1_001.fastq.gz	$output/W121_R1.fastq.gz
cp	MI_179_S66_R1_001.fastq.gz	$output/W122_R1.fastq.gz
cp	MI_180_S67_R1_001.fastq.gz	$output/W123_R1.fastq.gz
cp	MI_181_S71_R1_001.fastq.gz	$output/W124_R1.fastq.gz
cp	MI_183_S76_R1_001.fastq.gz	$output/W125_R1.fastq.gz
cp	MI_184_S79_R1_001.fastq.gz	$output/W126_R1.fastq.gz
cp	MI_185_S81_R1_001.fastq.gz	$output/W127_R1.fastq.gz
cp	MI_186_S83_R1_001.fastq.gz	$output/W128_R1.fastq.gz
cp	MI_188_S88_R1_001.fastq.gz	$output/W129_R1.fastq.gz
cp	MI_189_S89_R1_001.fastq.gz	$output/W130_R1.fastq.gz
cp	MI_190_S90_R1_001.fastq.gz	$output/W131_R1.fastq.gz
cp	MI_191_S95_R1_001.fastq.gz	$output/W132_R1.fastq.gz
cp	MI_192_S96_R1_001.fastq.gz	$output/W133_R1.fastq.gz
cp	MI_193_S100_R1_001.fastq.gz	$output/W134_R1.fastq.gz
cp	MI_194_S102_R1_001.fastq.gz	$output/W135_R1.fastq.gz
cp	MI_196_S106_R1_001.fastq.gz	$output/W136_R1.fastq.gz
cp	MI_197_S108_R1_001.fastq.gz	$output/W137_R1.fastq.gz
cp	MI_198_S111_R1_001.fastq.gz	$output/W138_R1.fastq.gz
cp	MI_199_S112_R1_001.fastq.gz	$output/W139_R1.fastq.gz
cp	MI_202_S116_R1_001.fastq.gz	$output/W140_R1.fastq.gz
cp	MI_203_S117_R1_001.fastq.gz	$output/W141_R1.fastq.gz
cp	MI_204_S120_R1_001.fastq.gz	$output/W142_R1.fastq.gz
cp	MI_207_S124_R1_001.fastq.gz	$output/W143_R1.fastq.gz
cp	MI_209_S125_R1_001.fastq.gz	$output/W144_R1.fastq.gz
cp	MI_210_S126_R1_001.fastq.gz	$output/W145_R1.fastq.gz
cp	MI_211_S127_R1_001.fastq.gz	$output/W146_R1.fastq.gz
cp	MI_212_S130_R1_001.fastq.gz	$output/W147_R1.fastq.gz
cp	MI_215_S132_R1_001.fastq.gz	$output/W148_R1.fastq.gz
cp	MI_220_S134_R1_001.fastq.gz	$output/W149_R1.fastq.gz
cp	MI_222_S136_R1_001.fastq.gz	$output/W150_R1.fastq.gz
cp	MI_224_S138_R1_001.fastq.gz	$output/W151_R1.fastq.gz
cp	MI_225_S140_R1_001.fastq.gz	$output/W152_R1.fastq.gz
cp	MI_229_S141_R1_001.fastq.gz	$output/W153_R1.fastq.gz
cp	MI_230_S143_R1_001.fastq.gz	$output/W154_R1.fastq.gz
cp	MI_234_S145_R1_001.fastq.gz	$output/W155_R1.fastq.gz
cp	MI_235_S146_R1_001.fastq.gz	$output/W156_R1.fastq.gz
cp	MI_236_S147_R1_001.fastq.gz	$output/W157_R1.fastq.gz
cp	MI_237_S148_R1_001.fastq.gz	$output/W158_R1.fastq.gz
cp	MI_238_S151_R1_001.fastq.gz	$output/W159_R1.fastq.gz
cp	MI_239_S153_R1_001.fastq.gz	$output/W160_R1.fastq.gz
cp	MI_240_S154_R1_001.fastq.gz	$output/W161_R1.fastq.gz
cp	MI_241_S155_R1_001.fastq.gz	$output/W162_R1.fastq.gz
cp	MI_242_S157_R1_001.fastq.gz	$output/W163_R1.fastq.gz
cp	NEG_CTRL_1_S24_R1_001.fastq.gz	$output/W164_R1.fastq.gz
cp	NEG_CTRL_2_S70_R1_001.fastq.gz	$output/W165_R1.fastq.gz
cp	NEG_CTRL_3_S118_R1_001.fastq.gz	$output/W166_R1.fastq.gz
cp	NEG_CTRL_4_S150_R1_001.fastq.gz	$output/W167_R1.fastq.gz
cp	NEG_CTRL_5_S184_R1_001.fastq.gz	$output/W168_R1.fastq.gz
cp	NO_120_S12_R1_001.fastq.gz	$output/W169_R1.fastq.gz
cp	NO_133_S21_R1_001.fastq.gz	$output/W170_R1.fastq.gz
cp	NO_135_S26_R1_001.fastq.gz	$output/W171_R1.fastq.gz
cp	NO_142_S32_R1_001.fastq.gz	$output/W172_R1.fastq.gz
cp	NO_143_S36_R1_001.fastq.gz	$output/W173_R1.fastq.gz
cp	NO_144_S39_R1_001.fastq.gz	$output/W174_R1.fastq.gz
cp	NO_147_S42_R1_001.fastq.gz	$output/W175_R1.fastq.gz
cp	NO_150_S51_R1_001.fastq.gz	$output/W176_R1.fastq.gz
cp	NO_151_S54_R1_001.fastq.gz	$output/W177_R1.fastq.gz
cp	NO_161_S60_R1_001.fastq.gz	$output/W178_R1.fastq.gz
cp	NO_178_S63_R1_001.fastq.gz	$output/W179_R1.fastq.gz
cp	NO_180_S68_R1_001.fastq.gz	$output/W180_R1.fastq.gz
cp	NO_181_S72_R1_001.fastq.gz	$output/W181_R1.fastq.gz
cp	NO_182_S74_R1_001.fastq.gz	$output/W182_R1.fastq.gz
cp	NO_183_S78_R1_001.fastq.gz	$output/W183_R1.fastq.gz
cp	NO_185_S80_R1_001.fastq.gz	$output/W184_R1.fastq.gz
cp	NO_186_S84_R1_001.fastq.gz	$output/W185_R1.fastq.gz
cp	NO_187_S86_R1_001.fastq.gz	$output/W186_R1.fastq.gz
cp	NO_190_S92_R1_001.fastq.gz	$output/W187_R1.fastq.gz
cp	NO_192_S98_R1_001.fastq.gz	$output/W188_R1.fastq.gz
cp	NO_193_S101_R1_001.fastq.gz	$output/W189_R1.fastq.gz
cp	NO_194_S104_R1_001.fastq.gz	$output/W190_R1.fastq.gz
cp	NO_195_S105_R1_001.fastq.gz	$output/W191_R1.fastq.gz
cp	NO_197_S110_R1_001.fastq.gz	$output/W192_R1.fastq.gz
cp	NO_203_S119_R1_001.fastq.gz	$output/W193_R1.fastq.gz
cp	NO_207_S122_R1_001.fastq.gz	$output/W194_R1.fastq.gz
cp	NO_211_S128_R1_001.fastq.gz	$output/W195_R1.fastq.gz
cp	NO_212_S129_R1_001.fastq.gz	$output/W196_R1.fastq.gz
cp	NO_224_S139_R1_001.fastq.gz	$output/W197_R1.fastq.gz
cp	NO_237_S149_R1_001.fastq.gz	$output/W198_R1.fastq.gz
cp	NO_239_S152_R1_001.fastq.gz	$output/W199_R1.fastq.gz
cp	NO_242_S159_R1_001.fastq.gz	$output/W200_R1.fastq.gz
cp	POS_CTRL_1_S46_R1_001.fastq.gz	$output/W201_R1.fastq.gz
cp	POS_CTRL_2_S94_R1_001.fastq.gz	$output/W202_R1.fastq.gz
cp	POS_CTRL_3_S142_R1_001.fastq.gz	$output/W203_R1.fastq.gz
cp	POS_CTRL_4_S160_R1_001.fastq.gz	$output/W204_R1.fastq.gz
cp	POS_CTRL_5_S205_R1_001.fastq.gz	$output/W205_R1.fastq.gz
cp	CC_104_S2_R2_001.fastq.gz	$output/W1_R2.fastq.gz
cp	CC_108_S5_R2_001.fastq.gz	$output/W2_R2.fastq.gz
cp	CC_116_S8_R2_001.fastq.gz	$output/W3_R2.fastq.gz
cp	CC_120_S10_R2_001.fastq.gz	$output/W4_R2.fastq.gz
cp	CC_123_S14_R2_001.fastq.gz	$output/W5_R2.fastq.gz
cp	CC_125_S15_R2_001.fastq.gz	$output/W6_R2.fastq.gz
cp	CC_127_S16_R2_001.fastq.gz	$output/W7_R2.fastq.gz
cp	CC_129_S17_R2_001.fastq.gz	$output/W8_R2.fastq.gz
cp	CC_135_S25_R2_001.fastq.gz	$output/W9_R2.fastq.gz
cp	CC_141_S30_R2_001.fastq.gz	$output/W10_R2.fastq.gz
cp	CC_142_S33_R2_001.fastq.gz	$output/W11_R2.fastq.gz
cp	CC_143_S35_R2_001.fastq.gz	$output/W12_R2.fastq.gz
cp	CC_144_S37_R2_001.fastq.gz	$output/W13_R2.fastq.gz
cp	CC_147_S43_R2_001.fastq.gz	$output/W14_R2.fastq.gz
cp	CC_148_S45_R2_001.fastq.gz	$output/W15_R2.fastq.gz
cp	CC_149_S47_R2_001.fastq.gz	$output/W16_R2.fastq.gz
cp	CC_150_S50_R2_001.fastq.gz	$output/W17_R2.fastq.gz
cp	CC_151_S53_R2_001.fastq.gz	$output/W18_R2.fastq.gz
cp	CC_154_S56_R2_001.fastq.gz	$output/W19_R2.fastq.gz
cp	CC_159_S58_R2_001.fastq.gz	$output/W20_R2.fastq.gz
cp	CC_161_S59_R2_001.fastq.gz	$output/W21_R2.fastq.gz
cp	CC_178_S65_R2_001.fastq.gz	$output/W22_R2.fastq.gz
cp	CC_180_S69_R2_001.fastq.gz	$output/W23_R2.fastq.gz
cp	CC_181_S73_R2_001.fastq.gz	$output/W24_R2.fastq.gz
cp	CC_182_S75_R2_001.fastq.gz	$output/W25_R2.fastq.gz
cp	CC_183_S77_R2_001.fastq.gz	$output/W26_R2.fastq.gz
cp	CC_185_S82_R2_001.fastq.gz	$output/W27_R2.fastq.gz
cp	CC_186_S85_R2_001.fastq.gz	$output/W28_R2.fastq.gz
cp	CC_187_S87_R2_001.fastq.gz	$output/W29_R2.fastq.gz
cp	CC_190_S91_R2_001.fastq.gz	$output/W30_R2.fastq.gz
cp	CC_191_S93_R2_001.fastq.gz	$output/W31_R2.fastq.gz
cp	CC_192_S97_R2_001.fastq.gz	$output/W32_R2.fastq.gz
cp	CC_193_S99_R2_001.fastq.gz	$output/W33_R2.fastq.gz
cp	CC_194_S103_R2_001.fastq.gz	$output/W34_R2.fastq.gz
cp	CC_196_S107_R2_001.fastq.gz	$output/W35_R2.fastq.gz
cp	CC_197_S109_R2_001.fastq.gz	$output/W36_R2.fastq.gz
cp	CC_199_S113_R2_001.fastq.gz	$output/W37_R2.fastq.gz
cp	CC_200_S114_R2_001.fastq.gz	$output/W38_R2.fastq.gz
cp	CC_201_S115_R2_001.fastq.gz	$output/W39_R2.fastq.gz
cp	CC_206_S121_R2_001.fastq.gz	$output/W40_R2.fastq.gz
cp	CC_207_S123_R2_001.fastq.gz	$output/W41_R2.fastq.gz
cp	CC_212_S131_R2_001.fastq.gz	$output/W42_R2.fastq.gz
cp	CC_219_S133_R2_001.fastq.gz	$output/W43_R2.fastq.gz
cp	CC_222_S135_R2_001.fastq.gz	$output/W44_R2.fastq.gz
cp	CC_223_S137_R2_001.fastq.gz	$output/W45_R2.fastq.gz
cp	CC_233_S144_R2_001.fastq.gz	$output/W46_R2.fastq.gz
cp	CC_241_S156_R2_001.fastq.gz	$output/W47_R2.fastq.gz
cp	CC_242_S158_R2_001.fastq.gz	$output/W48_R2.fastq.gz
cp	CC_70_S1_R2_001.fastq.gz	$output/W49_R2.fastq.gz
cp	COLL_101_S175_R2_001.fastq.gz	$output/W50_R2.fastq.gz
cp	COLL_102_S176_R2_001.fastq.gz	$output/W51_R2.fastq.gz
cp	COLL_103_S177_R2_001.fastq.gz	$output/W52_R2.fastq.gz
cp	COLL_105_S178_R2_001.fastq.gz	$output/W53_R2.fastq.gz
cp	COLL_107_S179_R2_001.fastq.gz	$output/W54_R2.fastq.gz
cp	COLL_108_S180_R2_001.fastq.gz	$output/W55_R2.fastq.gz
cp	COLL_109_S181_R2_001.fastq.gz	$output/W56_R2.fastq.gz
cp	COLL_110_S182_R2_001.fastq.gz	$output/W57_R2.fastq.gz
cp	COLL_111_S183_R2_001.fastq.gz	$output/W58_R2.fastq.gz
cp	COLL_112_S185_R2_001.fastq.gz	$output/W59_R2.fastq.gz
cp	COLL_113_S186_R2_001.fastq.gz	$output/W60_R2.fastq.gz
cp	COLL_114_S187_R2_001.fastq.gz	$output/W61_R2.fastq.gz
cp	COLL_115_S188_R2_001.fastq.gz	$output/W62_R2.fastq.gz
cp	COLL_117_S189_R2_001.fastq.gz	$output/W63_R2.fastq.gz
cp	COLL_119_S190_R2_001.fastq.gz	$output/W64_R2.fastq.gz
cp	COLL_121_S191_R2_001.fastq.gz	$output/W65_R2.fastq.gz
cp	COLL_122_S192_R2_001.fastq.gz	$output/W66_R2.fastq.gz
cp	COLL_127_S193_R2_001.fastq.gz	$output/W67_R2.fastq.gz
cp	COLL_128_S194_R2_001.fastq.gz	$output/W68_R2.fastq.gz
cp	COLL_129_S195_R2_001.fastq.gz	$output/W69_R2.fastq.gz
cp	COLL_134_S196_R2_001.fastq.gz	$output/W70_R2.fastq.gz
cp	COLL_137_S197_R2_001.fastq.gz	$output/W71_R2.fastq.gz
cp	COLL_138_S198_R2_001.fastq.gz	$output/W72_R2.fastq.gz
cp	COLL_139_S199_R2_001.fastq.gz	$output/W73_R2.fastq.gz
cp	COLL_140_S200_R2_001.fastq.gz	$output/W74_R2.fastq.gz
cp	COLL_152_S201_R2_001.fastq.gz	$output/W75_R2.fastq.gz
cp	COLL_155_S202_R2_001.fastq.gz	$output/W76_R2.fastq.gz
cp	COLL_156_S203_R2_001.fastq.gz	$output/W77_R2.fastq.gz
cp	COLL_158_S204_R2_001.fastq.gz	$output/W78_R2.fastq.gz
cp	COLL_59_S161_R2_001.fastq.gz	$output/W79_R2.fastq.gz
cp	COLL_62_S162_R2_001.fastq.gz	$output/W80_R2.fastq.gz
cp	COLL_64_S163_R2_001.fastq.gz	$output/W81_R2.fastq.gz
cp	COLL_65_S164_R2_001.fastq.gz	$output/W82_R2.fastq.gz
cp	COLL_66_S165_R2_001.fastq.gz	$output/W83_R2.fastq.gz
cp	COLL_67_S166_R2_001.fastq.gz	$output/W84_R2.fastq.gz
cp	COLL_68_S167_R2_001.fastq.gz	$output/W85_R2.fastq.gz
cp	COLL_70_S168_R2_001.fastq.gz	$output/W86_R2.fastq.gz
cp	COLL_75_S169_R2_001.fastq.gz	$output/W87_R2.fastq.gz
cp	COLL_76_S170_R2_001.fastq.gz	$output/W88_R2.fastq.gz
cp	COLL_77_S171_R2_001.fastq.gz	$output/W89_R2.fastq.gz
cp	COLL_78_S172_R2_001.fastq.gz	$output/W90_R2.fastq.gz
cp	COLL_82_S173_R2_001.fastq.gz	$output/W91_R2.fastq.gz
cp	COLL_87_S174_R2_001.fastq.gz	$output/W92_R2.fastq.gz
cp	MI_106_S3_R2_001.fastq.gz	$output/W93_R2.fastq.gz
cp	MI_107_S4_R2_001.fastq.gz	$output/W94_R2.fastq.gz
cp	MI_110_S6_R2_001.fastq.gz	$output/W95_R2.fastq.gz
cp	MI_116_S7_R2_001.fastq.gz	$output/W96_R2.fastq.gz
cp	MI_118_S9_R2_001.fastq.gz	$output/W97_R2.fastq.gz
cp	MI_120_S11_R2_001.fastq.gz	$output/W98_R2.fastq.gz
cp	MI_121_S13_R2_001.fastq.gz	$output/W99_R2.fastq.gz
cp	MI_131_S18_R2_001.fastq.gz	$output/W100_R2.fastq.gz
cp	MI_132_S19_R2_001.fastq.gz	$output/W101_R2.fastq.gz
cp	MI_133_S20_R2_001.fastq.gz	$output/W102_R2.fastq.gz
cp	MI_134_S22_R2_001.fastq.gz	$output/W103_R2.fastq.gz
cp	MI_135_S23_R2_001.fastq.gz	$output/W104_R2.fastq.gz
cp	MI_136_S27_R2_001.fastq.gz	$output/W105_R2.fastq.gz
cp	MI_137_S28_R2_001.fastq.gz	$output/W106_R2.fastq.gz
cp	MI_141_S29_R2_001.fastq.gz	$output/W107_R2.fastq.gz
cp	MI_142_S31_R2_001.fastq.gz	$output/W108_R2.fastq.gz
cp	MI_143_S34_R2_001.fastq.gz	$output/W109_R2.fastq.gz
cp	MI_144_S38_R2_001.fastq.gz	$output/W110_R2.fastq.gz
cp	MI_146_S40_R2_001.fastq.gz	$output/W111_R2.fastq.gz
cp	MI_147_S41_R2_001.fastq.gz	$output/W112_R2.fastq.gz
cp	MI_148_S44_R2_001.fastq.gz	$output/W113_R2.fastq.gz
cp	MI_149_S48_R2_001.fastq.gz	$output/W114_R2.fastq.gz
cp	MI_150_S49_R2_001.fastq.gz	$output/W115_R2.fastq.gz
cp	MI_151_S52_R2_001.fastq.gz	$output/W116_R2.fastq.gz
cp	MI_153_S55_R2_001.fastq.gz	$output/W117_R2.fastq.gz
cp	MI_157_S57_R2_001.fastq.gz	$output/W118_R2.fastq.gz
cp	MI_176_S61_R2_001.fastq.gz	$output/W119_R2.fastq.gz
cp	MI_177_S62_R2_001.fastq.gz	$output/W120_R2.fastq.gz
cp	MI_178_S64_R2_001.fastq.gz	$output/W121_R2.fastq.gz
cp	MI_179_S66_R2_001.fastq.gz	$output/W122_R2.fastq.gz
cp	MI_180_S67_R2_001.fastq.gz	$output/W123_R2.fastq.gz
cp	MI_181_S71_R2_001.fastq.gz	$output/W124_R2.fastq.gz
cp	MI_183_S76_R2_001.fastq.gz	$output/W125_R2.fastq.gz
cp	MI_184_S79_R2_001.fastq.gz	$output/W126_R2.fastq.gz
cp	MI_185_S81_R2_001.fastq.gz	$output/W127_R2.fastq.gz
cp	MI_186_S83_R2_001.fastq.gz	$output/W128_R2.fastq.gz
cp	MI_188_S88_R2_001.fastq.gz	$output/W129_R2.fastq.gz
cp	MI_189_S89_R2_001.fastq.gz	$output/W130_R2.fastq.gz
cp	MI_190_S90_R2_001.fastq.gz	$output/W131_R2.fastq.gz
cp	MI_191_S95_R2_001.fastq.gz	$output/W132_R2.fastq.gz
cp	MI_192_S96_R2_001.fastq.gz	$output/W133_R2.fastq.gz
cp	MI_193_S100_R2_001.fastq.gz	$output/W134_R2.fastq.gz
cp	MI_194_S102_R2_001.fastq.gz	$output/W135_R2.fastq.gz
cp	MI_196_S106_R2_001.fastq.gz	$output/W136_R2.fastq.gz
cp	MI_197_S108_R2_001.fastq.gz	$output/W137_R2.fastq.gz
cp	MI_198_S111_R2_001.fastq.gz	$output/W138_R2.fastq.gz
cp	MI_199_S112_R2_001.fastq.gz	$output/W139_R2.fastq.gz
cp	MI_202_S116_R2_001.fastq.gz	$output/W140_R2.fastq.gz
cp	MI_203_S117_R2_001.fastq.gz	$output/W141_R2.fastq.gz
cp	MI_204_S120_R2_001.fastq.gz	$output/W142_R2.fastq.gz
cp	MI_207_S124_R2_001.fastq.gz	$output/W143_R2.fastq.gz
cp	MI_209_S125_R2_001.fastq.gz	$output/W144_R2.fastq.gz
cp	MI_210_S126_R2_001.fastq.gz	$output/W145_R2.fastq.gz
cp	MI_211_S127_R2_001.fastq.gz	$output/W146_R2.fastq.gz
cp	MI_212_S130_R2_001.fastq.gz	$output/W147_R2.fastq.gz
cp	MI_215_S132_R2_001.fastq.gz	$output/W148_R2.fastq.gz
cp	MI_220_S134_R2_001.fastq.gz	$output/W149_R2.fastq.gz
cp	MI_222_S136_R2_001.fastq.gz	$output/W150_R2.fastq.gz
cp	MI_224_S138_R2_001.fastq.gz	$output/W151_R2.fastq.gz
cp	MI_225_S140_R2_001.fastq.gz	$output/W152_R2.fastq.gz
cp	MI_229_S141_R2_001.fastq.gz	$output/W153_R2.fastq.gz
cp	MI_230_S143_R2_001.fastq.gz	$output/W154_R2.fastq.gz
cp	MI_234_S145_R2_001.fastq.gz	$output/W155_R2.fastq.gz
cp	MI_235_S146_R2_001.fastq.gz	$output/W156_R2.fastq.gz
cp	MI_236_S147_R2_001.fastq.gz	$output/W157_R2.fastq.gz
cp	MI_237_S148_R2_001.fastq.gz	$output/W158_R2.fastq.gz
cp	MI_238_S151_R2_001.fastq.gz	$output/W159_R2.fastq.gz
cp	MI_239_S153_R2_001.fastq.gz	$output/W160_R2.fastq.gz
cp	MI_240_S154_R2_001.fastq.gz	$output/W161_R2.fastq.gz
cp	MI_241_S155_R2_001.fastq.gz	$output/W162_R2.fastq.gz
cp	MI_242_S157_R2_001.fastq.gz	$output/W163_R2.fastq.gz
cp	NEG_CTRL_1_S24_R2_001.fastq.gz	$output/W164_R2.fastq.gz
cp	NEG_CTRL_2_S70_R2_001.fastq.gz	$output/W165_R2.fastq.gz
cp	NEG_CTRL_3_S118_R2_001.fastq.gz	$output/W166_R2.fastq.gz
cp	NEG_CTRL_4_S150_R2_001.fastq.gz	$output/W167_R2.fastq.gz
cp	NEG_CTRL_5_S184_R2_001.fastq.gz	$output/W168_R2.fastq.gz
cp	NO_120_S12_R2_001.fastq.gz	$output/W169_R2.fastq.gz
cp	NO_133_S21_R2_001.fastq.gz	$output/W170_R2.fastq.gz
cp	NO_135_S26_R2_001.fastq.gz	$output/W171_R2.fastq.gz
cp	NO_142_S32_R2_001.fastq.gz	$output/W172_R2.fastq.gz
cp	NO_143_S36_R2_001.fastq.gz	$output/W173_R2.fastq.gz
cp	NO_144_S39_R2_001.fastq.gz	$output/W174_R2.fastq.gz
cp	NO_147_S42_R2_001.fastq.gz	$output/W175_R2.fastq.gz
cp	NO_150_S51_R2_001.fastq.gz	$output/W176_R2.fastq.gz
cp	NO_151_S54_R2_001.fastq.gz	$output/W177_R2.fastq.gz
cp	NO_161_S60_R2_001.fastq.gz	$output/W178_R2.fastq.gz
cp	NO_178_S63_R2_001.fastq.gz	$output/W179_R2.fastq.gz
cp	NO_180_S68_R2_001.fastq.gz	$output/W180_R2.fastq.gz
cp	NO_181_S72_R2_001.fastq.gz	$output/W181_R2.fastq.gz
cp	NO_182_S74_R2_001.fastq.gz	$output/W182_R2.fastq.gz
cp	NO_183_S78_R2_001.fastq.gz	$output/W183_R2.fastq.gz
cp	NO_185_S80_R2_001.fastq.gz	$output/W184_R2.fastq.gz
cp	NO_186_S84_R2_001.fastq.gz	$output/W185_R2.fastq.gz
cp	NO_187_S86_R2_001.fastq.gz	$output/W186_R2.fastq.gz
cp	NO_190_S92_R2_001.fastq.gz	$output/W187_R2.fastq.gz
cp	NO_192_S98_R2_001.fastq.gz	$output/W188_R2.fastq.gz
cp	NO_193_S101_R2_001.fastq.gz	$output/W189_R2.fastq.gz
cp	NO_194_S104_R2_001.fastq.gz	$output/W190_R2.fastq.gz
cp	NO_195_S105_R2_001.fastq.gz	$output/W191_R2.fastq.gz
cp	NO_197_S110_R2_001.fastq.gz	$output/W192_R2.fastq.gz
cp	NO_203_S119_R2_001.fastq.gz	$output/W193_R2.fastq.gz
cp	NO_207_S122_R2_001.fastq.gz	$output/W194_R2.fastq.gz
cp	NO_211_S128_R2_001.fastq.gz	$output/W195_R2.fastq.gz
cp	NO_212_S129_R2_001.fastq.gz	$output/W196_R2.fastq.gz
cp	NO_224_S139_R2_001.fastq.gz	$output/W197_R2.fastq.gz
cp	NO_237_S149_R2_001.fastq.gz	$output/W198_R2.fastq.gz
cp	NO_239_S152_R2_001.fastq.gz	$output/W199_R2.fastq.gz
cp	NO_242_S159_R2_001.fastq.gz	$output/W200_R2.fastq.gz
cp	POS_CTRL_1_S46_R2_001.fastq.gz	$output/W201_R2.fastq.gz
cp	POS_CTRL_2_S94_R2_001.fastq.gz	$output/W202_R2.fastq.gz
cp	POS_CTRL_3_S142_R2_001.fastq.gz	$output/W203_R2.fastq.gz
cp	POS_CTRL_4_S160_R2_001.fastq.gz	$output/W204_R2.fastq.gz
cp	POS_CTRL_5_S205_R2_001.fastq.gz	$output/W205_R2.fastq.gz