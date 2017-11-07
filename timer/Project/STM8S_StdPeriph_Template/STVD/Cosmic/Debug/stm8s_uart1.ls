   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.5 - 29 Dec 2015
   3                     ; Generator (Limited) V4.4.4 - 27 Jan 2016
   4                     ; Optimizer V4.4.4 - 27 Jan 2016
  49                     ; 53 void UART1_DeInit(void)
  49                     ; 54 {
  51                     .text:	section	.text,new
  52  0000               _UART1_DeInit:
  56                     ; 57   (void)UART1->SR;
  58  0000 c65230        	ld	a,21040
  59                     ; 58   (void)UART1->DR;
  61  0003 c65231        	ld	a,21041
  62                     ; 60   UART1->BRR2 = UART1_BRR2_RESET_VALUE;  /* Set UART1_BRR2 to reset value 0x00 */
  64  0006 725f5233      	clr	21043
  65                     ; 61   UART1->BRR1 = UART1_BRR1_RESET_VALUE;  /* Set UART1_BRR1 to reset value 0x00 */
  67  000a 725f5232      	clr	21042
  68                     ; 63   UART1->CR1 = UART1_CR1_RESET_VALUE;  /* Set UART1_CR1 to reset value 0x00 */
  70  000e 725f5234      	clr	21044
  71                     ; 64   UART1->CR2 = UART1_CR2_RESET_VALUE;  /* Set UART1_CR2 to reset value 0x00 */
  73  0012 725f5235      	clr	21045
  74                     ; 65   UART1->CR3 = UART1_CR3_RESET_VALUE;  /* Set UART1_CR3 to reset value 0x00 */
  76  0016 725f5236      	clr	21046
  77                     ; 66   UART1->CR4 = UART1_CR4_RESET_VALUE;  /* Set UART1_CR4 to reset value 0x00 */
  79  001a 725f5237      	clr	21047
  80                     ; 67   UART1->CR5 = UART1_CR5_RESET_VALUE;  /* Set UART1_CR5 to reset value 0x00 */
  82  001e 725f5238      	clr	21048
  83                     ; 69   UART1->GTR = UART1_GTR_RESET_VALUE;
  85  0022 725f5239      	clr	21049
  86                     ; 70   UART1->PSCR = UART1_PSCR_RESET_VALUE;
  88  0026 725f523a      	clr	21050
  89                     ; 71 }
  92  002a 81            	ret	
 396                     .const:	section	.text
 397  0000               L21:
 398  0000 00098969      	dc.l	625001
 399  0004               L27:
 400  0004 00000064      	dc.l	100
 401                     ; 90 void UART1_Init(uint32_t BaudRate, UART1_WordLength_TypeDef WordLength, 
 401                     ; 91                 UART1_StopBits_TypeDef StopBits, UART1_Parity_TypeDef Parity, 
 401                     ; 92                 UART1_SyncMode_TypeDef SyncMode, UART1_Mode_TypeDef Mode)
 401                     ; 93 {
 402                     .text:	section	.text,new
 403  0000               _UART1_Init:
 405  0000 520c          	subw	sp,#12
 406       0000000c      OFST:	set	12
 409                     ; 94   uint32_t BaudRate_Mantissa = 0, BaudRate_Mantissa100 = 0;
 413                     ; 97   assert_param(IS_UART1_BAUDRATE_OK(BaudRate));
 415  0002 96            	ldw	x,sp
 416  0003 1c000f        	addw	x,#OFST+3
 417  0006 cd0000        	call	c_ltor
 419  0009 ae0000        	ldw	x,#L21
 420  000c cd0000        	call	c_lcmp
 422  000f 2506          	jrult	L41
 423  0011 ae0061        	ldw	x,#97
 424  0014 cd01b5        	call	LC001
 425  0017               L41:
 426                     ; 98   assert_param(IS_UART1_WORDLENGTH_OK(WordLength));
 428  0017 7b13          	ld	a,(OFST+7,sp)
 429  0019 270a          	jreq	L42
 430  001b a110          	cp	a,#16
 431  001d 2706          	jreq	L42
 432  001f ae0062        	ldw	x,#98
 433  0022 cd01b5        	call	LC001
 434  0025               L42:
 435                     ; 99   assert_param(IS_UART1_STOPBITS_OK(StopBits));
 437  0025 7b14          	ld	a,(OFST+8,sp)
 438  0027 2712          	jreq	L43
 439  0029 a110          	cp	a,#16
 440  002b 270e          	jreq	L43
 441  002d a120          	cp	a,#32
 442  002f 270a          	jreq	L43
 443  0031 a130          	cp	a,#48
 444  0033 2706          	jreq	L43
 445  0035 ae0063        	ldw	x,#99
 446  0038 cd01b5        	call	LC001
 447  003b               L43:
 448                     ; 100   assert_param(IS_UART1_PARITY_OK(Parity));
 450  003b 7b15          	ld	a,(OFST+9,sp)
 451  003d 270e          	jreq	L44
 452  003f a104          	cp	a,#4
 453  0041 270a          	jreq	L44
 454  0043 a106          	cp	a,#6
 455  0045 2706          	jreq	L44
 456  0047 ae0064        	ldw	x,#100
 457  004a cd01b5        	call	LC001
 458  004d               L44:
 459                     ; 101   assert_param(IS_UART1_MODE_OK((uint8_t)Mode));
 461  004d 7b17          	ld	a,(OFST+11,sp)
 462  004f a108          	cp	a,#8
 463  0051 2722          	jreq	L45
 464  0053 a140          	cp	a,#64
 465  0055 271e          	jreq	L45
 466  0057 a104          	cp	a,#4
 467  0059 271a          	jreq	L45
 468  005b a180          	cp	a,#128
 469  005d 2716          	jreq	L45
 470  005f a10c          	cp	a,#12
 471  0061 2712          	jreq	L45
 472  0063 a144          	cp	a,#68
 473  0065 270e          	jreq	L45
 474  0067 a1c0          	cp	a,#192
 475  0069 270a          	jreq	L45
 476  006b a188          	cp	a,#136
 477  006d 2706          	jreq	L45
 478  006f ae0065        	ldw	x,#101
 479  0072 cd01b5        	call	LC001
 480  0075               L45:
 481                     ; 102   assert_param(IS_UART1_SYNCMODE_OK((uint8_t)SyncMode));
 483  0075 7b16          	ld	a,(OFST+10,sp)
 484  0077 a488          	and	a,#136
 485  0079 a188          	cp	a,#136
 486  007b 2718          	jreq	L06
 487  007d 7b16          	ld	a,(OFST+10,sp)
 488  007f a444          	and	a,#68
 489  0081 a144          	cp	a,#68
 490  0083 2710          	jreq	L06
 491  0085 7b16          	ld	a,(OFST+10,sp)
 492  0087 a422          	and	a,#34
 493  0089 a122          	cp	a,#34
 494  008b 2708          	jreq	L06
 495  008d 7b16          	ld	a,(OFST+10,sp)
 496  008f a411          	and	a,#17
 497  0091 a111          	cp	a,#17
 498  0093 2606          	jrne	L26
 499  0095               L06:
 500  0095 ae0066        	ldw	x,#102
 501  0098 cd01b5        	call	LC001
 502  009b               L26:
 503                     ; 105   UART1->CR1 &= (uint8_t)(~UART1_CR1_M);  
 505  009b 72195234      	bres	21044,#4
 506                     ; 108   UART1->CR1 |= (uint8_t)WordLength;
 508  009f c65234        	ld	a,21044
 509  00a2 1a13          	or	a,(OFST+7,sp)
 510  00a4 c75234        	ld	21044,a
 511                     ; 111   UART1->CR3 &= (uint8_t)(~UART1_CR3_STOP);  
 513  00a7 c65236        	ld	a,21046
 514  00aa a4cf          	and	a,#207
 515  00ac c75236        	ld	21046,a
 516                     ; 113   UART1->CR3 |= (uint8_t)StopBits;  
 518  00af c65236        	ld	a,21046
 519  00b2 1a14          	or	a,(OFST+8,sp)
 520  00b4 c75236        	ld	21046,a
 521                     ; 116   UART1->CR1 &= (uint8_t)(~(UART1_CR1_PCEN | UART1_CR1_PS  ));  
 523  00b7 c65234        	ld	a,21044
 524  00ba a4f9          	and	a,#249
 525  00bc c75234        	ld	21044,a
 526                     ; 118   UART1->CR1 |= (uint8_t)Parity;  
 528  00bf c65234        	ld	a,21044
 529  00c2 1a15          	or	a,(OFST+9,sp)
 530  00c4 c75234        	ld	21044,a
 531                     ; 121   UART1->BRR1 &= (uint8_t)(~UART1_BRR1_DIVM);  
 533  00c7 725f5232      	clr	21042
 534                     ; 123   UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVM);  
 536  00cb c65233        	ld	a,21043
 537  00ce a40f          	and	a,#15
 538  00d0 c75233        	ld	21043,a
 539                     ; 125   UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVF);  
 541  00d3 c65233        	ld	a,21043
 542  00d6 a4f0          	and	a,#240
 543  00d8 c75233        	ld	21043,a
 544                     ; 128   BaudRate_Mantissa    = ((uint32_t)CLK_GetClockFreq() / (BaudRate << 4));
 546  00db 96            	ldw	x,sp
 547  00dc cd01c1        	call	LC002
 549  00df 96            	ldw	x,sp
 550  00e0 5c            	incw	x
 551  00e1 cd0000        	call	c_rtol
 554  00e4 cd0000        	call	_CLK_GetClockFreq
 556  00e7 96            	ldw	x,sp
 557  00e8 5c            	incw	x
 558  00e9 cd0000        	call	c_ludv
 560  00ec 96            	ldw	x,sp
 561  00ed 1c0009        	addw	x,#OFST-3
 562  00f0 cd0000        	call	c_rtol
 565                     ; 129   BaudRate_Mantissa100 = (((uint32_t)CLK_GetClockFreq() * 100) / (BaudRate << 4));
 567  00f3 96            	ldw	x,sp
 568  00f4 cd01c1        	call	LC002
 570  00f7 96            	ldw	x,sp
 571  00f8 5c            	incw	x
 572  00f9 cd0000        	call	c_rtol
 575  00fc cd0000        	call	_CLK_GetClockFreq
 577  00ff a664          	ld	a,#100
 578  0101 cd0000        	call	c_smul
 580  0104 96            	ldw	x,sp
 581  0105 5c            	incw	x
 582  0106 cd0000        	call	c_ludv
 584  0109 96            	ldw	x,sp
 585  010a 1c0005        	addw	x,#OFST-7
 586  010d cd0000        	call	c_rtol
 589                     ; 131   UART1->BRR2 |= (uint8_t)((uint8_t)(((BaudRate_Mantissa100 - (BaudRate_Mantissa * 100)) << 4) / 100) & (uint8_t)0x0F); 
 591  0110 96            	ldw	x,sp
 592  0111 1c0009        	addw	x,#OFST-3
 593  0114 cd0000        	call	c_ltor
 595  0117 a664          	ld	a,#100
 596  0119 cd0000        	call	c_smul
 598  011c 96            	ldw	x,sp
 599  011d 5c            	incw	x
 600  011e cd0000        	call	c_rtol
 603  0121 96            	ldw	x,sp
 604  0122 1c0005        	addw	x,#OFST-7
 605  0125 cd0000        	call	c_ltor
 607  0128 96            	ldw	x,sp
 608  0129 5c            	incw	x
 609  012a cd0000        	call	c_lsub
 611  012d a604          	ld	a,#4
 612  012f cd0000        	call	c_llsh
 614  0132 ae0004        	ldw	x,#L27
 615  0135 cd0000        	call	c_ludv
 617  0138 b603          	ld	a,c_lreg+3
 618  013a a40f          	and	a,#15
 619  013c ca5233        	or	a,21043
 620  013f c75233        	ld	21043,a
 621                     ; 133   UART1->BRR2 |= (uint8_t)((BaudRate_Mantissa >> 4) & (uint8_t)0xF0); 
 623  0142 96            	ldw	x,sp
 624  0143 1c0009        	addw	x,#OFST-3
 625  0146 cd0000        	call	c_ltor
 627  0149 a604          	ld	a,#4
 628  014b cd0000        	call	c_lursh
 630  014e b603          	ld	a,c_lreg+3
 631  0150 a4f0          	and	a,#240
 632  0152 b703          	ld	c_lreg+3,a
 633  0154 3f02          	clr	c_lreg+2
 634  0156 3f01          	clr	c_lreg+1
 635  0158 3f00          	clr	c_lreg
 636  015a ca5233        	or	a,21043
 637  015d c75233        	ld	21043,a
 638                     ; 135   UART1->BRR1 |= (uint8_t)BaudRate_Mantissa;           
 640  0160 c65232        	ld	a,21042
 641  0163 1a0c          	or	a,(OFST+0,sp)
 642  0165 c75232        	ld	21042,a
 643                     ; 138   UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
 645  0168 c65235        	ld	a,21045
 646  016b a4f3          	and	a,#243
 647  016d c75235        	ld	21045,a
 648                     ; 140   UART1->CR3 &= (uint8_t)~(UART1_CR3_CPOL | UART1_CR3_CPHA | UART1_CR3_LBCL); 
 650  0170 c65236        	ld	a,21046
 651  0173 a4f8          	and	a,#248
 652  0175 c75236        	ld	21046,a
 653                     ; 142   UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & (uint8_t)(UART1_CR3_CPOL | 
 653                     ; 143                                                         UART1_CR3_CPHA | UART1_CR3_LBCL));  
 655  0178 7b16          	ld	a,(OFST+10,sp)
 656  017a a407          	and	a,#7
 657  017c ca5236        	or	a,21046
 658  017f c75236        	ld	21046,a
 659                     ; 145   if ((uint8_t)(Mode & UART1_MODE_TX_ENABLE))
 661  0182 7b17          	ld	a,(OFST+11,sp)
 662  0184 a504          	bcp	a,#4
 663  0186 2706          	jreq	L571
 664                     ; 148     UART1->CR2 |= (uint8_t)UART1_CR2_TEN;  
 666  0188 72165235      	bset	21045,#3
 668  018c 2004          	jra	L771
 669  018e               L571:
 670                     ; 153     UART1->CR2 &= (uint8_t)(~UART1_CR2_TEN);  
 672  018e 72175235      	bres	21045,#3
 673  0192               L771:
 674                     ; 155   if ((uint8_t)(Mode & UART1_MODE_RX_ENABLE))
 676  0192 a508          	bcp	a,#8
 677  0194 2706          	jreq	L102
 678                     ; 158     UART1->CR2 |= (uint8_t)UART1_CR2_REN;  
 680  0196 72145235      	bset	21045,#2
 682  019a 2004          	jra	L302
 683  019c               L102:
 684                     ; 163     UART1->CR2 &= (uint8_t)(~UART1_CR2_REN);  
 686  019c 72155235      	bres	21045,#2
 687  01a0               L302:
 688                     ; 167   if ((uint8_t)(SyncMode & UART1_SYNCMODE_CLOCK_DISABLE))
 690  01a0 7b16          	ld	a,(OFST+10,sp)
 691  01a2 2a06          	jrpl	L502
 692                     ; 170     UART1->CR3 &= (uint8_t)(~UART1_CR3_CKEN); 
 694  01a4 72175236      	bres	21046,#3
 696  01a8 2008          	jra	L702
 697  01aa               L502:
 698                     ; 174     UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & UART1_CR3_CKEN);
 700  01aa a408          	and	a,#8
 701  01ac ca5236        	or	a,21046
 702  01af c75236        	ld	21046,a
 703  01b2               L702:
 704                     ; 176 }
 707  01b2 5b0c          	addw	sp,#12
 708  01b4 81            	ret	
 709  01b5               LC001:
 710  01b5 89            	pushw	x
 711  01b6 5f            	clrw	x
 712  01b7 89            	pushw	x
 713  01b8 ae0008        	ldw	x,#L371
 714  01bb cd0000        	call	_assert_failed
 716  01be 5b04          	addw	sp,#4
 717  01c0 81            	ret	
 718  01c1               LC002:
 719  01c1 1c000f        	addw	x,#OFST+3
 720  01c4 cd0000        	call	c_ltor
 722  01c7 a604          	ld	a,#4
 723  01c9 cc0000        	jp	c_llsh
 778                     ; 184 void UART1_Cmd(FunctionalState NewState)
 778                     ; 185 {
 779                     .text:	section	.text,new
 780  0000               _UART1_Cmd:
 784                     ; 186   if (NewState != DISABLE)
 786  0000 4d            	tnz	a
 787  0001 2705          	jreq	L732
 788                     ; 189     UART1->CR1 &= (uint8_t)(~UART1_CR1_UARTD); 
 790  0003 721b5234      	bres	21044,#5
 793  0007 81            	ret	
 794  0008               L732:
 795                     ; 194     UART1->CR1 |= UART1_CR1_UARTD;  
 797  0008 721a5234      	bset	21044,#5
 798                     ; 196 }
 801  000c 81            	ret	
 927                     ; 211 void UART1_ITConfig(UART1_IT_TypeDef UART1_IT, FunctionalState NewState)
 927                     ; 212 {
 928                     .text:	section	.text,new
 929  0000               _UART1_ITConfig:
 931  0000 89            	pushw	x
 932  0001 89            	pushw	x
 933       00000002      OFST:	set	2
 936                     ; 213   uint8_t uartreg = 0, itpos = 0x00;
 940                     ; 216   assert_param(IS_UART1_CONFIG_IT_OK(UART1_IT));
 942  0002 a30100        	cpw	x,#256
 943  0005 271e          	jreq	L401
 944  0007 a30277        	cpw	x,#631
 945  000a 2719          	jreq	L401
 946  000c a30266        	cpw	x,#614
 947  000f 2714          	jreq	L401
 948  0011 a30205        	cpw	x,#517
 949  0014 270f          	jreq	L401
 950  0016 a30244        	cpw	x,#580
 951  0019 270a          	jreq	L401
 952  001b a30346        	cpw	x,#838
 953  001e 2705          	jreq	L401
 954  0020 ae00d8        	ldw	x,#216
 955  0023 ad70          	call	LC006
 956  0025               L401:
 957                     ; 217   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 959  0025 7b07          	ld	a,(OFST+5,sp)
 960  0027 2708          	jreq	L411
 961  0029 4a            	dec	a
 962  002a 2705          	jreq	L411
 963  002c ae00d9        	ldw	x,#217
 964  002f ad64          	call	LC006
 965  0031               L411:
 966                     ; 220   uartreg = (uint8_t)((uint16_t)UART1_IT >> 0x08);
 968  0031 7b03          	ld	a,(OFST+1,sp)
 969  0033 6b01          	ld	(OFST-1,sp),a
 971                     ; 222   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART1_IT & (uint8_t)0x0F));
 973  0035 7b04          	ld	a,(OFST+2,sp)
 974  0037 a40f          	and	a,#15
 975  0039 5f            	clrw	x
 976  003a 97            	ld	xl,a
 977  003b a601          	ld	a,#1
 978  003d 5d            	tnzw	x
 979  003e 2704          	jreq	L021
 980  0040               L221:
 981  0040 48            	sll	a
 982  0041 5a            	decw	x
 983  0042 26fc          	jrne	L221
 984  0044               L021:
 985  0044 6b02          	ld	(OFST+0,sp),a
 987                     ; 224   if (NewState != DISABLE)
 989  0046 7b07          	ld	a,(OFST+5,sp)
 990  0048 271f          	jreq	L123
 991                     ; 227     if (uartreg == 0x01)
 993  004a 7b01          	ld	a,(OFST-1,sp)
 994  004c a101          	cp	a,#1
 995  004e 2607          	jrne	L323
 996                     ; 229       UART1->CR1 |= itpos;
 998  0050 c65234        	ld	a,21044
 999  0053 1a02          	or	a,(OFST+0,sp)
1001  0055 201e          	jp	LC004
1002  0057               L323:
1003                     ; 231     else if (uartreg == 0x02)
1005  0057 a102          	cp	a,#2
1006  0059 2607          	jrne	L723
1007                     ; 233       UART1->CR2 |= itpos;
1009  005b c65235        	ld	a,21045
1010  005e 1a02          	or	a,(OFST+0,sp)
1012  0060 2022          	jp	LC005
1013  0062               L723:
1014                     ; 237       UART1->CR4 |= itpos;
1016  0062 c65237        	ld	a,21047
1017  0065 1a02          	or	a,(OFST+0,sp)
1018  0067 2026          	jp	LC003
1019  0069               L123:
1020                     ; 243     if (uartreg == 0x01)
1022  0069 7b01          	ld	a,(OFST-1,sp)
1023  006b a101          	cp	a,#1
1024  006d 260b          	jrne	L533
1025                     ; 245       UART1->CR1 &= (uint8_t)(~itpos);
1027  006f 7b02          	ld	a,(OFST+0,sp)
1028  0071 43            	cpl	a
1029  0072 c45234        	and	a,21044
1030  0075               LC004:
1031  0075 c75234        	ld	21044,a
1033  0078 2018          	jra	L333
1034  007a               L533:
1035                     ; 247     else if (uartreg == 0x02)
1037  007a a102          	cp	a,#2
1038  007c 260b          	jrne	L143
1039                     ; 249       UART1->CR2 &= (uint8_t)(~itpos);
1041  007e 7b02          	ld	a,(OFST+0,sp)
1042  0080 43            	cpl	a
1043  0081 c45235        	and	a,21045
1044  0084               LC005:
1045  0084 c75235        	ld	21045,a
1047  0087 2009          	jra	L333
1048  0089               L143:
1049                     ; 253       UART1->CR4 &= (uint8_t)(~itpos);
1051  0089 7b02          	ld	a,(OFST+0,sp)
1052  008b 43            	cpl	a
1053  008c c45237        	and	a,21047
1054  008f               LC003:
1055  008f c75237        	ld	21047,a
1056  0092               L333:
1057                     ; 257 }
1060  0092 5b04          	addw	sp,#4
1061  0094 81            	ret	
1062  0095               LC006:
1063  0095 89            	pushw	x
1064  0096 5f            	clrw	x
1065  0097 89            	pushw	x
1066  0098 ae0008        	ldw	x,#L371
1067  009b cd0000        	call	_assert_failed
1069  009e 5b04          	addw	sp,#4
1070  00a0 81            	ret	
1107                     ; 265 void UART1_HalfDuplexCmd(FunctionalState NewState)
1107                     ; 266 {
1108                     .text:	section	.text,new
1109  0000               _UART1_HalfDuplexCmd:
1111  0000 88            	push	a
1112       00000000      OFST:	set	0
1115                     ; 267   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1117  0001 4d            	tnz	a
1118  0002 2711          	jreq	L231
1119  0004 4a            	dec	a
1120  0005 270e          	jreq	L231
1121  0007 ae010b        	ldw	x,#267
1122  000a 89            	pushw	x
1123  000b 5f            	clrw	x
1124  000c 89            	pushw	x
1125  000d ae0008        	ldw	x,#L371
1126  0010 cd0000        	call	_assert_failed
1128  0013 5b04          	addw	sp,#4
1129  0015               L231:
1130                     ; 269   if (NewState != DISABLE)
1132  0015 7b01          	ld	a,(OFST+1,sp)
1133  0017 2706          	jreq	L363
1134                     ; 271     UART1->CR5 |= UART1_CR5_HDSEL;  /**< UART1 Half Duplex Enable  */
1136  0019 72165238      	bset	21048,#3
1138  001d 2004          	jra	L563
1139  001f               L363:
1140                     ; 275     UART1->CR5 &= (uint8_t)~UART1_CR5_HDSEL; /**< UART1 Half Duplex Disable */
1142  001f 72175238      	bres	21048,#3
1143  0023               L563:
1144                     ; 277 }
1147  0023 84            	pop	a
1148  0024 81            	ret	
1206                     ; 285 void UART1_IrDAConfig(UART1_IrDAMode_TypeDef UART1_IrDAMode)
1206                     ; 286 {
1207                     .text:	section	.text,new
1208  0000               _UART1_IrDAConfig:
1210  0000 88            	push	a
1211       00000000      OFST:	set	0
1214                     ; 287   assert_param(IS_UART1_IRDAMODE_OK(UART1_IrDAMode));
1216  0001 a101          	cp	a,#1
1217  0003 2711          	jreq	L441
1218  0005 4d            	tnz	a
1219  0006 270e          	jreq	L441
1220  0008 ae011f        	ldw	x,#287
1221  000b 89            	pushw	x
1222  000c 5f            	clrw	x
1223  000d 89            	pushw	x
1224  000e ae0008        	ldw	x,#L371
1225  0011 cd0000        	call	_assert_failed
1227  0014 5b04          	addw	sp,#4
1228  0016               L441:
1229                     ; 289   if (UART1_IrDAMode != UART1_IRDAMODE_NORMAL)
1231  0016 7b01          	ld	a,(OFST+1,sp)
1232  0018 2706          	jreq	L514
1233                     ; 291     UART1->CR5 |= UART1_CR5_IRLP;
1235  001a 72145238      	bset	21048,#2
1237  001e 2004          	jra	L714
1238  0020               L514:
1239                     ; 295     UART1->CR5 &= ((uint8_t)~UART1_CR5_IRLP);
1241  0020 72155238      	bres	21048,#2
1242  0024               L714:
1243                     ; 297 }
1246  0024 84            	pop	a
1247  0025 81            	ret	
1283                     ; 305 void UART1_IrDACmd(FunctionalState NewState)
1283                     ; 306 {
1284                     .text:	section	.text,new
1285  0000               _UART1_IrDACmd:
1287  0000 88            	push	a
1288       00000000      OFST:	set	0
1291                     ; 308   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1293  0001 4d            	tnz	a
1294  0002 2711          	jreq	L651
1295  0004 4a            	dec	a
1296  0005 270e          	jreq	L651
1297  0007 ae0134        	ldw	x,#308
1298  000a 89            	pushw	x
1299  000b 5f            	clrw	x
1300  000c 89            	pushw	x
1301  000d ae0008        	ldw	x,#L371
1302  0010 cd0000        	call	_assert_failed
1304  0013 5b04          	addw	sp,#4
1305  0015               L651:
1306                     ; 310   if (NewState != DISABLE)
1308  0015 7b01          	ld	a,(OFST+1,sp)
1309  0017 2706          	jreq	L734
1310                     ; 313     UART1->CR5 |= UART1_CR5_IREN;
1312  0019 72125238      	bset	21048,#1
1314  001d 2004          	jra	L144
1315  001f               L734:
1316                     ; 318     UART1->CR5 &= ((uint8_t)~UART1_CR5_IREN);
1318  001f 72135238      	bres	21048,#1
1319  0023               L144:
1320                     ; 320 }
1323  0023 84            	pop	a
1324  0024 81            	ret	
1384                     ; 329 void UART1_LINBreakDetectionConfig(UART1_LINBreakDetectionLength_TypeDef UART1_LINBreakDetectionLength)
1384                     ; 330 {
1385                     .text:	section	.text,new
1386  0000               _UART1_LINBreakDetectionConfig:
1388  0000 88            	push	a
1389       00000000      OFST:	set	0
1392                     ; 331   assert_param(IS_UART1_LINBREAKDETECTIONLENGTH_OK(UART1_LINBreakDetectionLength));
1394  0001 4d            	tnz	a
1395  0002 2711          	jreq	L071
1396  0004 4a            	dec	a
1397  0005 270e          	jreq	L071
1398  0007 ae014b        	ldw	x,#331
1399  000a 89            	pushw	x
1400  000b 5f            	clrw	x
1401  000c 89            	pushw	x
1402  000d ae0008        	ldw	x,#L371
1403  0010 cd0000        	call	_assert_failed
1405  0013 5b04          	addw	sp,#4
1406  0015               L071:
1407                     ; 333   if (UART1_LINBreakDetectionLength != UART1_LINBREAKDETECTIONLENGTH_10BITS)
1409  0015 7b01          	ld	a,(OFST+1,sp)
1410  0017 2706          	jreq	L174
1411                     ; 335     UART1->CR4 |= UART1_CR4_LBDL;
1413  0019 721a5237      	bset	21047,#5
1415  001d 2004          	jra	L374
1416  001f               L174:
1417                     ; 339     UART1->CR4 &= ((uint8_t)~UART1_CR4_LBDL);
1419  001f 721b5237      	bres	21047,#5
1420  0023               L374:
1421                     ; 341 }
1424  0023 84            	pop	a
1425  0024 81            	ret	
1461                     ; 349 void UART1_LINCmd(FunctionalState NewState)
1461                     ; 350 {
1462                     .text:	section	.text,new
1463  0000               _UART1_LINCmd:
1465  0000 88            	push	a
1466       00000000      OFST:	set	0
1469                     ; 351   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1471  0001 4d            	tnz	a
1472  0002 2711          	jreq	L202
1473  0004 4a            	dec	a
1474  0005 270e          	jreq	L202
1475  0007 ae015f        	ldw	x,#351
1476  000a 89            	pushw	x
1477  000b 5f            	clrw	x
1478  000c 89            	pushw	x
1479  000d ae0008        	ldw	x,#L371
1480  0010 cd0000        	call	_assert_failed
1482  0013 5b04          	addw	sp,#4
1483  0015               L202:
1484                     ; 353   if (NewState != DISABLE)
1486  0015 7b01          	ld	a,(OFST+1,sp)
1487  0017 2706          	jreq	L315
1488                     ; 356     UART1->CR3 |= UART1_CR3_LINEN;
1490  0019 721c5236      	bset	21046,#6
1492  001d 2004          	jra	L515
1493  001f               L315:
1494                     ; 361     UART1->CR3 &= ((uint8_t)~UART1_CR3_LINEN);
1496  001f 721d5236      	bres	21046,#6
1497  0023               L515:
1498                     ; 363 }
1501  0023 84            	pop	a
1502  0024 81            	ret	
1538                     ; 371 void UART1_SmartCardCmd(FunctionalState NewState)
1538                     ; 372 {
1539                     .text:	section	.text,new
1540  0000               _UART1_SmartCardCmd:
1542  0000 88            	push	a
1543       00000000      OFST:	set	0
1546                     ; 373   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1548  0001 4d            	tnz	a
1549  0002 2711          	jreq	L412
1550  0004 4a            	dec	a
1551  0005 270e          	jreq	L412
1552  0007 ae0175        	ldw	x,#373
1553  000a 89            	pushw	x
1554  000b 5f            	clrw	x
1555  000c 89            	pushw	x
1556  000d ae0008        	ldw	x,#L371
1557  0010 cd0000        	call	_assert_failed
1559  0013 5b04          	addw	sp,#4
1560  0015               L412:
1561                     ; 375   if (NewState != DISABLE)
1563  0015 7b01          	ld	a,(OFST+1,sp)
1564  0017 2706          	jreq	L535
1565                     ; 378     UART1->CR5 |= UART1_CR5_SCEN;
1567  0019 721a5238      	bset	21048,#5
1569  001d 2004          	jra	L735
1570  001f               L535:
1571                     ; 383     UART1->CR5 &= ((uint8_t)(~UART1_CR5_SCEN));
1573  001f 721b5238      	bres	21048,#5
1574  0023               L735:
1575                     ; 385 }
1578  0023 84            	pop	a
1579  0024 81            	ret	
1616                     ; 394 void UART1_SmartCardNACKCmd(FunctionalState NewState)
1616                     ; 395 {
1617                     .text:	section	.text,new
1618  0000               _UART1_SmartCardNACKCmd:
1620  0000 88            	push	a
1621       00000000      OFST:	set	0
1624                     ; 396   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1626  0001 4d            	tnz	a
1627  0002 2711          	jreq	L622
1628  0004 4a            	dec	a
1629  0005 270e          	jreq	L622
1630  0007 ae018c        	ldw	x,#396
1631  000a 89            	pushw	x
1632  000b 5f            	clrw	x
1633  000c 89            	pushw	x
1634  000d ae0008        	ldw	x,#L371
1635  0010 cd0000        	call	_assert_failed
1637  0013 5b04          	addw	sp,#4
1638  0015               L622:
1639                     ; 398   if (NewState != DISABLE)
1641  0015 7b01          	ld	a,(OFST+1,sp)
1642  0017 2706          	jreq	L755
1643                     ; 401     UART1->CR5 |= UART1_CR5_NACK;
1645  0019 72185238      	bset	21048,#4
1647  001d 2004          	jra	L165
1648  001f               L755:
1649                     ; 406     UART1->CR5 &= ((uint8_t)~(UART1_CR5_NACK));
1651  001f 72195238      	bres	21048,#4
1652  0023               L165:
1653                     ; 408 }
1656  0023 84            	pop	a
1657  0024 81            	ret	
1715                     ; 416 void UART1_WakeUpConfig(UART1_WakeUp_TypeDef UART1_WakeUp)
1715                     ; 417 {
1716                     .text:	section	.text,new
1717  0000               _UART1_WakeUpConfig:
1719  0000 88            	push	a
1720       00000000      OFST:	set	0
1723                     ; 418   assert_param(IS_UART1_WAKEUP_OK(UART1_WakeUp));
1725  0001 4d            	tnz	a
1726  0002 2712          	jreq	L042
1727  0004 a108          	cp	a,#8
1728  0006 270e          	jreq	L042
1729  0008 ae01a2        	ldw	x,#418
1730  000b 89            	pushw	x
1731  000c 5f            	clrw	x
1732  000d 89            	pushw	x
1733  000e ae0008        	ldw	x,#L371
1734  0011 cd0000        	call	_assert_failed
1736  0014 5b04          	addw	sp,#4
1737  0016               L042:
1738                     ; 420   UART1->CR1 &= ((uint8_t)~UART1_CR1_WAKE);
1740  0016 72175234      	bres	21044,#3
1741                     ; 421   UART1->CR1 |= (uint8_t)UART1_WakeUp;
1743  001a c65234        	ld	a,21044
1744  001d 1a01          	or	a,(OFST+1,sp)
1745  001f c75234        	ld	21044,a
1746                     ; 422 }
1749  0022 84            	pop	a
1750  0023 81            	ret	
1787                     ; 430 void UART1_ReceiverWakeUpCmd(FunctionalState NewState)
1787                     ; 431 {
1788                     .text:	section	.text,new
1789  0000               _UART1_ReceiverWakeUpCmd:
1791  0000 88            	push	a
1792       00000000      OFST:	set	0
1795                     ; 432   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1797  0001 4d            	tnz	a
1798  0002 2711          	jreq	L252
1799  0004 4a            	dec	a
1800  0005 270e          	jreq	L252
1801  0007 ae01b0        	ldw	x,#432
1802  000a 89            	pushw	x
1803  000b 5f            	clrw	x
1804  000c 89            	pushw	x
1805  000d ae0008        	ldw	x,#L371
1806  0010 cd0000        	call	_assert_failed
1808  0013 5b04          	addw	sp,#4
1809  0015               L252:
1810                     ; 434   if (NewState != DISABLE)
1812  0015 7b01          	ld	a,(OFST+1,sp)
1813  0017 2706          	jreq	L726
1814                     ; 437     UART1->CR2 |= UART1_CR2_RWU;
1816  0019 72125235      	bset	21045,#1
1818  001d 2004          	jra	L136
1819  001f               L726:
1820                     ; 442     UART1->CR2 &= ((uint8_t)~UART1_CR2_RWU);
1822  001f 72135235      	bres	21045,#1
1823  0023               L136:
1824                     ; 444 }
1827  0023 84            	pop	a
1828  0024 81            	ret	
1851                     ; 451 uint8_t UART1_ReceiveData8(void)
1851                     ; 452 {
1852                     .text:	section	.text,new
1853  0000               _UART1_ReceiveData8:
1857                     ; 453   return ((uint8_t)UART1->DR);
1859  0000 c65231        	ld	a,21041
1862  0003 81            	ret	
1896                     ; 461 uint16_t UART1_ReceiveData9(void)
1896                     ; 462 {
1897                     .text:	section	.text,new
1898  0000               _UART1_ReceiveData9:
1900  0000 89            	pushw	x
1901       00000002      OFST:	set	2
1904                     ; 463   uint16_t temp = 0;
1906                     ; 465   temp = (uint16_t)(((uint16_t)( (uint16_t)UART1->CR1 & (uint16_t)UART1_CR1_R8)) << 1);
1908  0001 c65234        	ld	a,21044
1909  0004 a480          	and	a,#128
1910  0006 5f            	clrw	x
1911  0007 02            	rlwa	x,a
1912  0008 58            	sllw	x
1913  0009 1f01          	ldw	(OFST-1,sp),x
1915                     ; 466   return (uint16_t)( (((uint16_t) UART1->DR) | temp ) & ((uint16_t)0x01FF));
1917  000b c65231        	ld	a,21041
1918  000e 5f            	clrw	x
1919  000f 97            	ld	xl,a
1920  0010 01            	rrwa	x,a
1921  0011 1a02          	or	a,(OFST+0,sp)
1922  0013 01            	rrwa	x,a
1923  0014 1a01          	or	a,(OFST-1,sp)
1924  0016 a401          	and	a,#1
1925  0018 01            	rrwa	x,a
1928  0019 5b02          	addw	sp,#2
1929  001b 81            	ret	
1963                     ; 474 void UART1_SendData8(uint8_t Data)
1963                     ; 475 {
1964                     .text:	section	.text,new
1965  0000               _UART1_SendData8:
1969                     ; 477   UART1->DR = Data;
1971  0000 c75231        	ld	21041,a
1972                     ; 478 }
1975  0003 81            	ret	
2009                     ; 486 void UART1_SendData9(uint16_t Data)
2009                     ; 487 {
2010                     .text:	section	.text,new
2011  0000               _UART1_SendData9:
2013  0000 89            	pushw	x
2014       00000000      OFST:	set	0
2017                     ; 489   UART1->CR1 &= ((uint8_t)~UART1_CR1_T8);
2019  0001 721d5234      	bres	21044,#6
2020                     ; 491   UART1->CR1 |= (uint8_t)(((uint8_t)(Data >> 2)) & UART1_CR1_T8);
2022  0005 54            	srlw	x
2023  0006 54            	srlw	x
2024  0007 9f            	ld	a,xl
2025  0008 a440          	and	a,#64
2026  000a ca5234        	or	a,21044
2027  000d c75234        	ld	21044,a
2028                     ; 493   UART1->DR   = (uint8_t)(Data);
2030  0010 7b02          	ld	a,(OFST+2,sp)
2031  0012 c75231        	ld	21041,a
2032                     ; 494 }
2035  0015 85            	popw	x
2036  0016 81            	ret	
2059                     ; 501 void UART1_SendBreak(void)
2059                     ; 502 {
2060                     .text:	section	.text,new
2061  0000               _UART1_SendBreak:
2065                     ; 503   UART1->CR2 |= UART1_CR2_SBK;
2067  0000 72105235      	bset	21045,#0
2068                     ; 504 }
2071  0004 81            	ret	
2106                     ; 511 void UART1_SetAddress(uint8_t UART1_Address)
2106                     ; 512 {
2107                     .text:	section	.text,new
2108  0000               _UART1_SetAddress:
2110  0000 88            	push	a
2111       00000000      OFST:	set	0
2114                     ; 514   assert_param(IS_UART1_ADDRESS_OK(UART1_Address));
2116  0001 a110          	cp	a,#16
2117  0003 250e          	jrult	L472
2118  0005 ae0202        	ldw	x,#514
2119  0008 89            	pushw	x
2120  0009 5f            	clrw	x
2121  000a 89            	pushw	x
2122  000b ae0008        	ldw	x,#L371
2123  000e cd0000        	call	_assert_failed
2125  0011 5b04          	addw	sp,#4
2126  0013               L472:
2127                     ; 517   UART1->CR4 &= ((uint8_t)~UART1_CR4_ADD);
2129  0013 c65237        	ld	a,21047
2130  0016 a4f0          	and	a,#240
2131  0018 c75237        	ld	21047,a
2132                     ; 519   UART1->CR4 |= UART1_Address;
2134  001b c65237        	ld	a,21047
2135  001e 1a01          	or	a,(OFST+1,sp)
2136  0020 c75237        	ld	21047,a
2137                     ; 520 }
2140  0023 84            	pop	a
2141  0024 81            	ret	
2175                     ; 528 void UART1_SetGuardTime(uint8_t UART1_GuardTime)
2175                     ; 529 {
2176                     .text:	section	.text,new
2177  0000               _UART1_SetGuardTime:
2181                     ; 531   UART1->GTR = UART1_GuardTime;
2183  0000 c75239        	ld	21049,a
2184                     ; 532 }
2187  0003 81            	ret	
2221                     ; 556 void UART1_SetPrescaler(uint8_t UART1_Prescaler)
2221                     ; 557 {
2222                     .text:	section	.text,new
2223  0000               _UART1_SetPrescaler:
2227                     ; 559   UART1->PSCR = UART1_Prescaler;
2229  0000 c7523a        	ld	21050,a
2230                     ; 560 }
2233  0003 81            	ret	
2377                     ; 568 FlagStatus UART1_GetFlagStatus(UART1_Flag_TypeDef UART1_FLAG)
2377                     ; 569 {
2378                     .text:	section	.text,new
2379  0000               _UART1_GetFlagStatus:
2381  0000 89            	pushw	x
2382  0001 88            	push	a
2383       00000001      OFST:	set	1
2386                     ; 570   FlagStatus status = RESET;
2388                     ; 573   assert_param(IS_UART1_FLAG_OK(UART1_FLAG));
2390  0002 a30080        	cpw	x,#128
2391  0005 273b          	jreq	L213
2392  0007 a30040        	cpw	x,#64
2393  000a 2736          	jreq	L213
2394  000c a30020        	cpw	x,#32
2395  000f 2731          	jreq	L213
2396  0011 a30010        	cpw	x,#16
2397  0014 272c          	jreq	L213
2398  0016 a30008        	cpw	x,#8
2399  0019 2727          	jreq	L213
2400  001b a30004        	cpw	x,#4
2401  001e 2722          	jreq	L213
2402  0020 a30002        	cpw	x,#2
2403  0023 271d          	jreq	L213
2404  0025 a30001        	cpw	x,#1
2405  0028 2718          	jreq	L213
2406  002a a30101        	cpw	x,#257
2407  002d 2713          	jreq	L213
2408  002f a30210        	cpw	x,#528
2409  0032 270e          	jreq	L213
2410  0034 ae023d        	ldw	x,#573
2411  0037 89            	pushw	x
2412  0038 5f            	clrw	x
2413  0039 89            	pushw	x
2414  003a ae0008        	ldw	x,#L371
2415  003d cd0000        	call	_assert_failed
2417  0040 5b04          	addw	sp,#4
2418  0042               L213:
2419                     ; 577   if (UART1_FLAG == UART1_FLAG_LBDF)
2421  0042 1e02          	ldw	x,(OFST+1,sp)
2422  0044 a30210        	cpw	x,#528
2423  0047 2605          	jrne	L1601
2424                     ; 579     if ((UART1->CR4 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
2426  0049 c65237        	ld	a,21047
2427                     ; 582       status = SET;
2429  004c 2008          	jp	LC009
2430                     ; 587       status = RESET;
2431  004e               L1601:
2432                     ; 590   else if (UART1_FLAG == UART1_FLAG_SBK)
2434  004e a30101        	cpw	x,#257
2435  0051 260b          	jrne	L1701
2436                     ; 592     if ((UART1->CR2 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
2438  0053 c65235        	ld	a,21045
2439  0056               LC009:
2440  0056 1503          	bcp	a,(OFST+2,sp)
2441  0058 270b          	jreq	L1011
2442                     ; 595       status = SET;
2444  005a               LC008:
2447  005a a601          	ld	a,#1
2450  005c 2008          	jra	L7601
2451                     ; 600       status = RESET;
2452  005e               L1701:
2453                     ; 605     if ((UART1->SR & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
2455  005e c65230        	ld	a,21040
2456  0061 1503          	bcp	a,(OFST+2,sp)
2457                     ; 608       status = SET;
2459  0063 26f5          	jrne	LC008
2460  0065               L1011:
2461                     ; 613       status = RESET;
2465  0065 4f            	clr	a
2467  0066               L7601:
2468                     ; 617   return status;
2472  0066 5b03          	addw	sp,#3
2473  0068 81            	ret	
2509                     ; 646 void UART1_ClearFlag(UART1_Flag_TypeDef UART1_FLAG)
2509                     ; 647 {
2510                     .text:	section	.text,new
2511  0000               _UART1_ClearFlag:
2513  0000 89            	pushw	x
2514       00000000      OFST:	set	0
2517                     ; 648   assert_param(IS_UART1_CLEAR_FLAG_OK(UART1_FLAG));
2519  0001 a30020        	cpw	x,#32
2520  0004 2713          	jreq	L423
2521  0006 a30210        	cpw	x,#528
2522  0009 270e          	jreq	L423
2523  000b ae0288        	ldw	x,#648
2524  000e 89            	pushw	x
2525  000f 5f            	clrw	x
2526  0010 89            	pushw	x
2527  0011 ae0008        	ldw	x,#L371
2528  0014 cd0000        	call	_assert_failed
2530  0017 5b04          	addw	sp,#4
2531  0019               L423:
2532                     ; 651   if (UART1_FLAG == UART1_FLAG_RXNE)
2534  0019 1e01          	ldw	x,(OFST+1,sp)
2535  001b a30020        	cpw	x,#32
2536  001e 2606          	jrne	L3211
2537                     ; 653     UART1->SR = (uint8_t)~(UART1_SR_RXNE);
2539  0020 35df5230      	mov	21040,#223
2541  0024 2004          	jra	L5211
2542  0026               L3211:
2543                     ; 658     UART1->CR4 &= (uint8_t)~(UART1_CR4_LBDF);
2545  0026 72195237      	bres	21047,#4
2546  002a               L5211:
2547                     ; 660 }
2550  002a 85            	popw	x
2551  002b 81            	ret	
2634                     ; 675 ITStatus UART1_GetITStatus(UART1_IT_TypeDef UART1_IT)
2634                     ; 676 {
2635                     .text:	section	.text,new
2636  0000               _UART1_GetITStatus:
2638  0000 89            	pushw	x
2639  0001 89            	pushw	x
2640       00000002      OFST:	set	2
2643                     ; 677   ITStatus pendingbitstatus = RESET;
2645                     ; 678   uint8_t itpos = 0;
2647                     ; 679   uint8_t itmask1 = 0;
2649                     ; 680   uint8_t itmask2 = 0;
2651                     ; 681   uint8_t enablestatus = 0;
2653                     ; 684   assert_param(IS_UART1_GET_IT_OK(UART1_IT));
2655  0002 a30277        	cpw	x,#631
2656  0005 272c          	jreq	L633
2657  0007 a30266        	cpw	x,#614
2658  000a 2727          	jreq	L633
2659  000c a30255        	cpw	x,#597
2660  000f 2722          	jreq	L633
2661  0011 a30244        	cpw	x,#580
2662  0014 271d          	jreq	L633
2663  0016 a30235        	cpw	x,#565
2664  0019 2718          	jreq	L633
2665  001b a30346        	cpw	x,#838
2666  001e 2713          	jreq	L633
2667  0020 a30100        	cpw	x,#256
2668  0023 270e          	jreq	L633
2669  0025 ae02ac        	ldw	x,#684
2670  0028 89            	pushw	x
2671  0029 5f            	clrw	x
2672  002a 89            	pushw	x
2673  002b ae0008        	ldw	x,#L371
2674  002e cd0000        	call	_assert_failed
2676  0031 5b04          	addw	sp,#4
2677  0033               L633:
2678                     ; 687   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART1_IT & (uint8_t)0x0F));
2680  0033 7b04          	ld	a,(OFST+2,sp)
2681  0035 a40f          	and	a,#15
2682  0037 5f            	clrw	x
2683  0038 97            	ld	xl,a
2684  0039 a601          	ld	a,#1
2685  003b 5d            	tnzw	x
2686  003c 2704          	jreq	L243
2687  003e               L443:
2688  003e 48            	sll	a
2689  003f 5a            	decw	x
2690  0040 26fc          	jrne	L443
2691  0042               L243:
2692  0042 6b01          	ld	(OFST-1,sp),a
2694                     ; 689   itmask1 = (uint8_t)((uint8_t)UART1_IT >> (uint8_t)4);
2696  0044 7b04          	ld	a,(OFST+2,sp)
2697  0046 4e            	swap	a
2698  0047 a40f          	and	a,#15
2699  0049 6b02          	ld	(OFST+0,sp),a
2701                     ; 691   itmask2 = (uint8_t)((uint8_t)1 << itmask1);
2703  004b 5f            	clrw	x
2704  004c 97            	ld	xl,a
2705  004d a601          	ld	a,#1
2706  004f 5d            	tnzw	x
2707  0050 2704          	jreq	L643
2708  0052               L053:
2709  0052 48            	sll	a
2710  0053 5a            	decw	x
2711  0054 26fc          	jrne	L053
2712  0056               L643:
2713  0056 6b02          	ld	(OFST+0,sp),a
2715                     ; 695   if (UART1_IT == UART1_IT_PE)
2717  0058 1e03          	ldw	x,(OFST+1,sp)
2718  005a a30100        	cpw	x,#256
2719  005d 260c          	jrne	L1711
2720                     ; 698     enablestatus = (uint8_t)((uint8_t)UART1->CR1 & itmask2);
2722  005f c65234        	ld	a,21044
2723  0062 1402          	and	a,(OFST+0,sp)
2724  0064 6b02          	ld	(OFST+0,sp),a
2726                     ; 701     if (((UART1->SR & itpos) != (uint8_t)0x00) && enablestatus)
2728  0066 c65230        	ld	a,21040
2730                     ; 704       pendingbitstatus = SET;
2732  0069 200f          	jp	LC012
2733                     ; 709       pendingbitstatus = RESET;
2734  006b               L1711:
2735                     ; 713   else if (UART1_IT == UART1_IT_LBDF)
2737  006b a30346        	cpw	x,#838
2738  006e 2616          	jrne	L1021
2739                     ; 716     enablestatus = (uint8_t)((uint8_t)UART1->CR4 & itmask2);
2741  0070 c65237        	ld	a,21047
2742  0073 1402          	and	a,(OFST+0,sp)
2743  0075 6b02          	ld	(OFST+0,sp),a
2745                     ; 718     if (((UART1->CR4 & itpos) != (uint8_t)0x00) && enablestatus)
2747  0077 c65237        	ld	a,21047
2749  007a               LC012:
2750  007a 1501          	bcp	a,(OFST-1,sp)
2751  007c 271a          	jreq	L1121
2752  007e 7b02          	ld	a,(OFST+0,sp)
2753  0080 2716          	jreq	L1121
2754                     ; 721       pendingbitstatus = SET;
2756  0082               LC011:
2759  0082 a601          	ld	a,#1
2762  0084 2013          	jra	L7711
2763                     ; 726       pendingbitstatus = RESET;
2764  0086               L1021:
2765                     ; 732     enablestatus = (uint8_t)((uint8_t)UART1->CR2 & itmask2);
2767  0086 c65235        	ld	a,21045
2768  0089 1402          	and	a,(OFST+0,sp)
2769  008b 6b02          	ld	(OFST+0,sp),a
2771                     ; 734     if (((UART1->SR & itpos) != (uint8_t)0x00) && enablestatus)
2773  008d c65230        	ld	a,21040
2774  0090 1501          	bcp	a,(OFST-1,sp)
2775  0092 2704          	jreq	L1121
2777  0094 7b02          	ld	a,(OFST+0,sp)
2778                     ; 737       pendingbitstatus = SET;
2780  0096 26ea          	jrne	LC011
2781  0098               L1121:
2782                     ; 742       pendingbitstatus = RESET;
2786  0098 4f            	clr	a
2788  0099               L7711:
2789                     ; 747   return  pendingbitstatus;
2793  0099 5b04          	addw	sp,#4
2794  009b 81            	ret	
2831                     ; 775 void UART1_ClearITPendingBit(UART1_IT_TypeDef UART1_IT)
2831                     ; 776 {
2832                     .text:	section	.text,new
2833  0000               _UART1_ClearITPendingBit:
2835  0000 89            	pushw	x
2836       00000000      OFST:	set	0
2839                     ; 777   assert_param(IS_UART1_CLEAR_IT_OK(UART1_IT));
2841  0001 a30255        	cpw	x,#597
2842  0004 2713          	jreq	L063
2843  0006 a30346        	cpw	x,#838
2844  0009 270e          	jreq	L063
2845  000b ae0309        	ldw	x,#777
2846  000e 89            	pushw	x
2847  000f 5f            	clrw	x
2848  0010 89            	pushw	x
2849  0011 ae0008        	ldw	x,#L371
2850  0014 cd0000        	call	_assert_failed
2852  0017 5b04          	addw	sp,#4
2853  0019               L063:
2854                     ; 780   if (UART1_IT == UART1_IT_RXNE)
2856  0019 1e01          	ldw	x,(OFST+1,sp)
2857  001b a30255        	cpw	x,#597
2858  001e 2606          	jrne	L3321
2859                     ; 782     UART1->SR = (uint8_t)~(UART1_SR_RXNE);
2861  0020 35df5230      	mov	21040,#223
2863  0024 2004          	jra	L5321
2864  0026               L3321:
2865                     ; 787     UART1->CR4 &= (uint8_t)~(UART1_CR4_LBDF);
2867  0026 72195237      	bres	21047,#4
2868  002a               L5321:
2869                     ; 789 }
2872  002a 85            	popw	x
2873  002b 81            	ret	
2886                     	xdef	_UART1_ClearITPendingBit
2887                     	xdef	_UART1_GetITStatus
2888                     	xdef	_UART1_ClearFlag
2889                     	xdef	_UART1_GetFlagStatus
2890                     	xdef	_UART1_SetPrescaler
2891                     	xdef	_UART1_SetGuardTime
2892                     	xdef	_UART1_SetAddress
2893                     	xdef	_UART1_SendBreak
2894                     	xdef	_UART1_SendData9
2895                     	xdef	_UART1_SendData8
2896                     	xdef	_UART1_ReceiveData9
2897                     	xdef	_UART1_ReceiveData8
2898                     	xdef	_UART1_ReceiverWakeUpCmd
2899                     	xdef	_UART1_WakeUpConfig
2900                     	xdef	_UART1_SmartCardNACKCmd
2901                     	xdef	_UART1_SmartCardCmd
2902                     	xdef	_UART1_LINCmd
2903                     	xdef	_UART1_LINBreakDetectionConfig
2904                     	xdef	_UART1_IrDACmd
2905                     	xdef	_UART1_IrDAConfig
2906                     	xdef	_UART1_HalfDuplexCmd
2907                     	xdef	_UART1_ITConfig
2908                     	xdef	_UART1_Cmd
2909                     	xdef	_UART1_Init
2910                     	xdef	_UART1_DeInit
2911                     	xref	_assert_failed
2912                     	xref	_CLK_GetClockFreq
2913                     	switch	.const
2914  0008               L371:
2915  0008 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
2916  001a 6965735c7374  	dc.b	"ies\stm8s_stdperip"
2917  002c 685f64726976  	dc.b	"h_driver\src\stm8s"
2918  003e 5f7561727431  	dc.b	"_uart1.c",0
2919                     	xref.b	c_lreg
2920                     	xref.b	c_x
2940                     	xref	c_lursh
2941                     	xref	c_lsub
2942                     	xref	c_smul
2943                     	xref	c_ludv
2944                     	xref	c_rtol
2945                     	xref	c_llsh
2946                     	xref	c_lcmp
2947                     	xref	c_ltor
2948                     	end
