#!/bin/bash
#SBATCH --job-name=breadth
#SBATCH --partition=iob_p
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=10
#SBATCH --mem=3gb
#SBATCH --time=48:00:00
#SBATCH --output=%x_%j.out
#SBATCH --error=%x_%j.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=mandyh@uga.edu

module load SAMtools/1.14-GCC-11.2.0

#set directory 
cd /scratch/mandyh/WISER_Clinical/mapped_reads

#define directory
output='/scratch/mandyh/WISER_Clinical/depth_files'
SAMPLES="P1_A10_S128
P1_A11_S136
P1_A12_S144
P1_A1_S56
P1_A2_S64
P1_A3_S72
P1_A4_S80
P1_A5_S88
P1_A6_S96
P1_A7_S104
P1_A8_S112
P1_A9_S120
P1_B10_S129
P1_B11_S137
P1_B12_S145
P1_B1_S57
P1_B2_S65
P1_B3_S73
P1_B4_S81
P1_B5_S89
P1_B6_S97
P1_B7_S105
P1_B8_S113
P1_B9_S121
P1_C10_S130
P1_C11_S138
P1_C12_S146
P1_C1_S58
P1_C2_S66
P1_C3_S74
P1_C4_S82
P1_C5_S90
P1_C6_S98
P1_C7_S106
P1_C8_S114
P1_C9_S122
P1_D10_S131
P1_D11_S139
P1_D12_S147
P1_D1_S59
P1_D2_S67
P1_D3_S75
P1_D4_S83
P1_D5_S91
P1_D6_S99
P1_D7_S107
P1_D8_S115
P1_D9_S123
P1_E10_S132
P1_E11_S140
P1_E12_S148
P1_E1_S60
P1_E2_S68
P1_E3_S76
P1_E4_S84
P1_E5_S92
P1_E6_S100
P1_E7_S108
P1_E8_S116
P1_E9_S124
P1_F10_S133
P1_F11_S141
P1_F12_S149
P1_F1_S61
P1_F2_S69
P1_F3_S77
P1_F4_S85
P1_F5_S93
P1_F6_S101
P1_F7_S109
P1_F8_S117
P1_F9_S125
P1_G10_S134
P1_G11_S142
P1_G12_S150
P1_G1_S62
P1_G2_S70
P1_G3_S78
P1_G4_S86
P1_G5_S94
P1_G6_S102
P1_G7_S110
P1_G8_S118
P1_G9_S126
P1_H10_S135
P1_H11_S143
P1_H12_S151
P1_H1_S63
P1_H2_S71
P1_H3_S79
P1_H4_S87
P1_H5_S95
P1_H6_S103
P1_H7_S111
P1_H8_S119
P1_H9_S127
P2_A10_S224
P2_A11_S232
P2_A12_S240
P2_A1_S152
P2_A2_S160
P2_A3_S168
P2_A4_S176
P2_A5_S184
P2_A6_S192
P2_A7_S200
P2_A8_S208
P2_A9_S216
P2_B10_S225
P2_B11_S233
P2_B12_S241
P2_B1_S153
P2_B2_S161
P2_B3_S169
P2_B4_S177
P2_B5_S185
P2_B6_S193
P2_B7_S201
P2_B8_S209
P2_B9_S217
P2_C10_S226
P2_C11_S234
P2_C12_S242
P2_C1_S154
P2_C2_S162
P2_C3_S170
P2_C4_S178
P2_C5_S186
P2_C6_S194
P2_C7_S202
P2_C8_S210
P2_C9_S218
P2_D10_S227
P2_D11_S235
P2_D12_S243
P2_D1_S155
P2_D2_S163
P2_D3_S171
P2_D4_S179
P2_D5_S187
P2_D6_S195
P2_D7_S203
P2_D8_S211
P2_D9_S219
P2_E10_S228
P2_E11_S236
P2_E12_S244
P2_E1_S156
P2_E2_S164
P2_E3_S172
P2_E4_S180
P2_E5_S188
P2_E6_S196
P2_E7_S204
P2_E8_S212
P2_E9_S220
P2_F10_S229
P2_F11_S237
P2_F12_S245
P2_F1_S157
P2_F2_S165
P2_F3_S173
P2_F4_S181
P2_F5_S189
P2_F6_S197
P2_F7_S205
P2_F8_S213
P2_F9_S221
P2_G10_S230
P2_G11_S238
P2_G12_S246
P2_G1_S158
P2_G2_S166
P2_G3_S174
P2_G4_S182
P2_G5_S190
P2_G6_S198
P2_G7_S206
P2_G8_S214
P2_G9_S222
P2_H10_S231
P2_H11_S239
P2_H12_S247
P2_H1_S159
P2_H2_S167
P2_H3_S175
P2_H4_S183
P2_H5_S191
P2_H6_S199
P2_H7_S207
P2_H8_S215
P2_H9_S223
P3_A10_S320
P3_A11_S328
P3_A1_S248
P3_A2_S256
P3_A3_S264
P3_A4_S272
P3_A5_S280
P3_A6_S288
P3_A7_S296
P3_A8_S304
P3_A9_S312
P3_B10_S321
P3_B11_S329
P3_B1_S249
P3_B2_S257
P3_B3_S265
P3_B4_S273
P3_B5_S281
P3_B6_S289
P3_B7_S297
P3_B8_S305
P3_B9_S313
P3_C10_S322
P3_C11_S330
P3_C12_S338
P3_C1_S250
P3_C2_S258
P3_C3_S266
P3_C4_S274
P3_C5_S282
P3_C6_S290
P3_C7_S298
P3_C8_S306
P3_C9_S314
P3_D10_S323
P3_D12_S339
P3_D1_S251
P3_D2_S259
P3_D3_S267
P3_D4_S275
P3_D5_S283
P3_D6_S291
P3_D7_S299
P3_D8_S307
P3_E10_S324
P3_E11_S332
P3_E1_S252
P3_E2_S260
P3_E3_S268
P3_E4_S276
P3_E5_S284
P3_E6_S292
P3_E7_S300
P3_E8_S308
P3_E9_S316
P3_F10_S325
P3_F11_S333
P3_F1_S253
P3_F2_S261
P3_F3_S269
P3_F4_S277
P3_F5_S285
P3_F6_S293
P3_F7_S301
P3_F8_S309
P3_G10_S326
P3_G11_S334
P3_G12_S342
P3_G1_S254
P3_G2_S262
P3_G3_S270
P3_G4_S278
P3_G5_S286
P3_G6_S294
P3_G7_S302
P3_G8_S310
P3_G9_S318
P3_H10_S327
P3_H11_S335
P3_H1_S255
P3_H2_S263
P3_H3_S271
P3_H4_S279
P3_H5_S287
P3_H6_S295
P3_H7_S303
P3_H8_S311
P3_H9_S319
P4_A10_S416
P4_A11_S424
P4_A12_S432
P4_A1_S344
P4_A2_S352
P4_A3_S360
P4_A4_S368
P4_A5_S376
P4_A6_S384
P4_A7_S392
P4_A8_S400
P4_A9_S408
P4_B10_S417
P4_B11_S425
P4_B12_S433
P4_B1_S345
P4_B2_S353
P4_B3_S361
P4_B4_S369
P4_B5_S377
P4_B6_S385
P4_B7_S393
P4_B8_S401
P4_B9_S409
P4_C10_S418
P4_C11_S426
P4_C12_S434
P4_C1_S346
P4_C2_S354
P4_C3_S362
P4_C4_S370
P4_C5_S378
P4_C6_S386
P4_C7_S394
P4_C8_S402
P4_C9_S410
P4_D10_S419
P4_D11_S427
P4_D12_S435
P4_D1_S347
P4_D2_S355
P4_D3_S363
P4_D4_S371
P4_D5_S379
P4_D6_S387
P4_D7_S395
P4_D8_S403
P4_D9_S411
P4_E10_S420
P4_E11_S428
P4_E12_S436
P4_E1_S348
P4_E2_S356
P4_E3_S364
P4_E4_S372
P4_E5_S380
P4_E6_S388
P4_E7_S396
P4_E8_S404
P4_E9_S412
P4_F10_S421
P4_F11_S429
P4_F12_S437
P4_F1_S349
P4_F2_S357
P4_F3_S365
P4_F4_S373
P4_F5_S381
P4_F6_S389
P4_F7_S397
P4_F8_S405
P4_F9_S413
P4_G10_S422
P4_G11_S430
P4_G12_S438
P4_G1_S350
P4_G2_S358
P4_G3_S366
P4_G4_S374
P4_G5_S382
P4_G6_S390
P4_G7_S398
P4_G8_S406
P4_G9_S414
P4_H10_S423
P4_H11_S431
P4_H12_S439
P4_H1_S351
P4_H2_S359
P4_H3_S367
P4_H4_S375
P4_H5_S383
P4_H6_S391
P4_H7_S399
P4_H8_S407
P4_H9_S415
P5_A10_S512
P5_A11_S520
P5_A12_S528
P5_A1_S440
P5_A2_S448
P5_A3_S456
P5_A4_S464
P5_A5_S472
P5_A6_S480
P5_A7_S488
P5_A8_S496
P5_A9_S504
P5_B10_S513
P5_B11_S521
P5_B12_S529
P5_B1_S441
P5_B2_S449
P5_B3_S457
P5_B4_S465
P5_B5_S473
P5_B6_S481
P5_B7_S489
P5_B8_S497
P5_B9_S505
P5_C10_S514
P5_C11_S522
P5_C12_S530
P5_C1_S442
P5_C2_S450
P5_C3_S458
P5_C4_S466
P5_C5_S474
P5_C6_S482
P5_C7_S490
P5_C8_S498
P5_C9_S506
P5_D10_S515
P5_D11_S523
P5_D12_S531
P5_D1_S443
P5_D2_S451
P5_D3_S459
P5_D4_S467
P5_D5_S475
P5_D6_S483
P5_D7_S491
P5_D8_S499
P5_D9_S507
P5_E10_S516
P5_E11_S524
P5_E12_S532
P5_E1_S444
P5_E2_S452
P5_E3_S460
P5_E4_S468
P5_E5_S476
P5_E6_S484
P5_E7_S492
P5_E8_S500
P5_E9_S508
P5_F10_S517
P5_F11_S525
P5_F12_S533
P5_F1_S445
P5_F2_S453
P5_F3_S461
P5_F4_S469
P5_F5_S477
P5_F6_S485
P5_F7_S493
P5_F8_S501
P5_F9_S509
P5_G10_S518
P5_G11_S526
P5_G12_S534
P5_G1_S446
P5_G2_S454
P5_G3_S462
P5_G4_S470
P5_G5_S478
P5_G6_S486
P5_G7_S494
P5_G8_S502
P5_G9_S510
P5_H10_S519
P5_H11_S527
P5_H12_S535
P5_H1_S447
P5_H2_S455
P5_H3_S463
P5_H4_S471
P5_H5_S479
P5_H6_S487
P5_H7_S495
P5_H8_S503
P5_H9_S511
P6_A10_S608
P6_A11_S616
P6_A12_S624
P6_A1_S536
P6_A2_S544
P6_A3_S552
P6_A4_S560
P6_A5_S568
P6_A6_S576
P6_A7_S584
P6_A8_S592
P6_A9_S600
P6_B10_S609
P6_B11_S617
P6_B12_S625
P6_B1_S537
P6_B2_S545
P6_B3_S553
P6_B4_S561
P6_B5_S569
P6_B6_S577
P6_B7_S585
P6_B8_S593
P6_B9_S601
P6_C10_S610
P6_C11_S618
P6_C12_S626
P6_C1_S538
P6_C2_S546
P6_C3_S554
P6_C4_S562
P6_C5_S570
P6_C6_S578
P6_C7_S586
P6_C8_S594
P6_C9_S602
P6_D10_S611
P6_D11_S619
P6_D12_S627
P6_D1_S539
P6_D2_S547
P6_D3_S555
P6_D4_S563
P6_D5_S571
P6_D6_S579
P6_D7_S587
P6_D8_S595
P6_D9_S603
P6_E10_S612
P6_E11_S620
P6_E12_S628
P6_E1_S540
P6_E2_S548
P6_E3_S556
P6_E4_S564
P6_E5_S572
P6_E6_S580
P6_E7_S588
P6_E8_S596
P6_E9_S604
P6_F10_S613
P6_F11_S621
P6_F12_S629
P6_F1_S541
P6_F2_S549
P6_F3_S557
P6_F4_S565
P6_F5_S573
P6_F6_S581
P6_F7_S589
P6_F8_S597
P6_F9_S605
P6_G10_S614
P6_G11_S622
P6_G12_S630
P6_G1_S542
P6_G2_S550
P6_G3_S558
P6_G4_S566
P6_G5_S574
P6_G6_S582
P6_G7_S590
P6_G8_S598
P6_G9_S606
P6_H10_S615
P6_H11_S623
P6_H12_S631
P6_H1_S543
P6_H2_S551
P6_H3_S559
P6_H4_S567
P6_H5_S575
P6_H6_S583
P6_H7_S591
P6_H8_S599
P6_H9_S607
P7_A10_S704
P7_A11_S712
P7_A12_S720
P7_A1_S632
P7_A2_S640
P7_A3_S648
P7_A4_S656
P7_A5_S664
P7_A6_S672
P7_A7_S680
P7_A8_S688
P7_A9_S696
P7_B10_S705
P7_B11_S713
P7_B12_S721
P7_B1_S633
P7_B2_S641
P7_B3_S649
P7_B4_S657
P7_B5_S665
P7_B6_S673
P7_B7_S681
P7_B8_S689
P7_B9_S697
P7_C10_S706
P7_C11_S714
P7_C12_S722
P7_C1_S634
P7_C2_S642
P7_C3_S650
P7_C4_S658
P7_C5_S666
P7_C6_S674
P7_C7_S682
P7_C8_S690
P7_C9_S698
P7_D10_S707
P7_D11_S715
P7_D12_S723
P7_D1_S635
P7_D2_S643
P7_D3_S651
P7_D4_S659
P7_D5_S667
P7_D6_S675
P7_D7_S683
P7_D8_S691
P7_D9_S699
P7_E10_S708
P7_E11_S716
P7_E12_S724
P7_E1_S636
P7_E2_S644
P7_E3_S652
P7_E4_S660
P7_E5_S668
P7_E6_S676
P7_E7_S684
P7_E8_S692
P7_E9_S700
P7_F10_S709
P7_F11_S717
P7_F12_S725
P7_F1_S637
P7_F2_S645
P7_F3_S653
P7_F4_S661
P7_F5_S669
P7_F6_S677
P7_F7_S685
P7_F8_S693
P7_F9_S701
P7_G10_S710
P7_G11_S718
P7_G12_S726
P7_G1_S638
P7_G2_S646
P7_G3_S654
P7_G4_S662
P7_G5_S670
P7_G6_S678
P7_G7_S686
P7_G8_S694
P7_G9_S702
P7_H10_S711
P7_H11_S719
P7_H12_S727
P7_H1_S639
P7_H2_S647
P7_H3_S655
P7_H4_S663
P7_H5_S671
P7_H6_S679
P7_H7_S687
P7_H8_S695
P7_H9_S703
P8__A10_S363
P8__A11_S371
P8__A12_S379
P8__A1_S291
P8__A2_S299
P8__A3_S307
P8__A4_S315
P8__A5_S323
P8__A6_S331
P8__A7_S339
P8__A8_S347
P8__A9_S355
P8__B10_S364
P8__B11_S372
P8__B12_S380
P8__B1_S292
P8__B2_S300
P8__B3_S308
P8__B4_S316
P8__B5_S324
P8__B6_S332
P8__B7_S340
P8__B8_S348
P8__B9_S356
P8__C10_S365
P8__C11_S373
P8__C12_S381
P8__C1_S293
P8__C2_S301
P8__C3_S309
P8__C4_S317
P8__C5_S325
P8__C6_S333
P8__C7_S341
P8__C8_S349
P8__C9_S357
P8__D10_S366
P8__D11_S374
P8__D12_S382
P8__D1_S294
P8__D2_S302
P8__D3_S310
P8__D4_S318
P8__D5_S326
P8__D6_S334
P8__D7_S342
P8__D8_S350
P8__D9_S358
P8__E10_S367
P8__E11_S375
P8__E12_S383
P8__E1_S295
P8__E2_S303
P8__E3_S311
P8__E4_S319
P8__E5_S327
P8__E6_S335
P8__E7_S343
P8__E8_S351
P8__E9_S359
P8__F10_S368
P8__F11_S376
P8__F12_S384
P8__F1_S296
P8__F2_S304
P8__F3_S312
P8__F4_S320
P8__F5_S328
P8__F6_S336
P8__F7_S344
P8__F8_S352
P8__F9_S360
P8__G10_S369
P8__G11_S377
P8__G12_S385
P8__G1_S297
P8__G2_S305
P8__G3_S313
P8__G4_S321
P8__G5_S329
P8__G6_S337
P8__G7_S345
P8__G8_S353
P8__G9_S361
P8__H10_S370
P8__H11_S378
P8__H12_S386
P8__H1_S298
P8__H2_S306
P8__H3_S314
P8__H4_S322
P8__H5_S330
P8__H6_S338
P8__H7_S346
P8__H8_S354
P8__H9_S362
P9__A10_S459
P9__A11_S467
P9__A12_S475
P9__A1_S387
P9__A2_S395
P9__A3_S403
P9__A4_S411
P9__A5_S419
P9__A6_S427
P9__A7_S435
P9__A8_S443
P9__A9_S451
P9__B10_S460
P9__B11_S468
P9__B12_S476
P9__B1_S388
P9__B2_S396
P9__B3_S404
P9__B4_S412
P9__B5_S420
P9__B6_S428
P9__B7_S436
P9__B8_S444
P9__B9_S452
P9__C10_S461
P9__C11_S469
P9__C12_S477
P9__C1_S389
P9__C2_S397
P9__C3_S405
P9__C4_S413
P9__C5_S421
P9__C6_S429
P9__C7_S437
P9__C8_S445
P9__C9_S453
P9__D10_S462
P9__D11_S470
P9__D12_S478
P9__D1_S390
P9__D2_S398
P9__D3_S406
P9__D4_S414
P9__D5_S422
P9__D6_S430
P9__D7_S438
P9__D8_S446
P9__D9_S454
P9__E10_S463
P9__E11_S471
P9__E12_S479
P9__E1_S391
P9__E2_S399
P9__E3_S407
P9__E4_S415
P9__E5_S423
P9__E6_S431
P9__E7_S439
P9__E8_S447
P9__E9_S455
P9__F10_S464
P9__F11_S472
P9__F12_S480
P9__F1_S392
P9__F2_S400
P9__F3_S408
P9__F4_S416
P9__F5_S424
P9__F6_S432
P9__F7_S440
P9__F8_S448
P9__F9_S456
P9__G10_S465
P9__G11_S473
P9__G12_S481
P9__G1_S393
P9__G2_S401
P9__G3_S409
P9__G4_S417
P9__G5_S425
P9__G6_S433
P9__G7_S441
P9__G8_S449
P9__G9_S457
P9__H10_S466
P9__H11_S474
P9__H12_S482
P9__H1_S394
P9__H2_S402
P9__H3_S410
P9__H4_S418
P9__H5_S426
P9__H6_S434
P9__H7_S442
P9__H8_S450
P9__H9_S458
P10__A10_S555
P10__A11_S563
P10__A12_S571
P10__A1_S483
P10__A2_S491
P10__A3_S499
P10__A4_S507
P10__A5_S515
P10__A6_S523
P10__A7_S531
P10__A8_S539
P10__A9_S547
P10__B10_S556
P10__B11_S564
P10__B12_S572
P10__B1_S484
P10__B2_S492
P10__B3_S500
P10__B4_S508
P10__B5_S516
P10__B6_S524
P10__B7_S532
P10__B8_S540
P10__B9_S548
P10__C10_S557
P10__C11_S565
P10__C12_S573
P10__C1_S485
P10__C2_S493
P10__C3_S501
P10__C4_S509
P10__C5_S517
P10__C6_S525
P10__C7_S533
P10__C8_S541
P10__C9_S549
P10__D10_S558
P10__D11_S566
P10__D12_S574
P10__D1_S486
P10__D2_S494
P10__D3_S502
P10__D4_S510
P10__D5_S518
P10__D6_S526
P10__D7_S534
P10__D8_S542
P10__D9_S550
P10__E10_S559
P10__E11_S567
P10__E12_S575
P10__E1_S487
P10__E2_S495
P10__E3_S503
P10__E4_S511
P10__E5_S519
P10__E6_S527
P10__E7_S535
P10__E8_S543
P10__E9_S551
P10__F10_S560
P10__F11_S568
P10__F12_S576
P10__F1_S488
P10__F2_S496
P10__F3_S504
P10__F4_S512
P10__F5_S520
P10__F6_S528
P10__F7_S536
P10__F8_S544
P10__F9_S552
P10__G10_S561
P10__G11_S569
P10__G12_S577
P10__G1_S489
P10__G2_S497
P10__G3_S505
P10__G4_S513
P10__G5_S521
P10__G6_S529
P10__G7_S537
P10__G8_S545
P10__G9_S553
P10__H10_S562
P10__H11_S570
P10__H12_S578
P10__H1_S490
P10__H2_S498
P10__H3_S506
P10__H4_S514
P10__H5_S522
P10__H6_S530
P10__H7_S538
P10__H8_S546
P10__H9_S554
"
i=1

for i in $SAMPLES
do
echo "$i"
samtools mpileup $i\_sorted.bam | awk -v X="${MIN_COVERAGE_DEPTH}" '$4>=X' | wc -l
wc -l $output/$i\.depth
done