   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.5 - 29 Dec 2015
   3                     ; Generator (Limited) V4.4.4 - 27 Jan 2016
   4                     ; Optimizer V4.4.4 - 27 Jan 2016
  49                     ; 52 void TIM2_DeInit(void)
  49                     ; 53 {
  51                     .text:	section	.text,new
  52  0000               _TIM2_DeInit:
  56                     ; 54   TIM2->CR1 = (uint8_t)TIM2_CR1_RESET_VALUE;
  58  0000 725f5300      	clr	21248
  59                     ; 55   TIM2->IER = (uint8_t)TIM2_IER_RESET_VALUE;
  61  0004 725f5303      	clr	21251
  62                     ; 56   TIM2->SR2 = (uint8_t)TIM2_SR2_RESET_VALUE;
  64  0008 725f5305      	clr	21253
  65                     ; 59   TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
  67  000c 725f530a      	clr	21258
  68                     ; 60   TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
  70  0010 725f530b      	clr	21259
  71                     ; 64   TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
  73  0014 725f530a      	clr	21258
  74                     ; 65   TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
  76  0018 725f530b      	clr	21259
  77                     ; 66   TIM2->CCMR1 = (uint8_t)TIM2_CCMR1_RESET_VALUE;
  79  001c 725f5307      	clr	21255
  80                     ; 67   TIM2->CCMR2 = (uint8_t)TIM2_CCMR2_RESET_VALUE;
  82  0020 725f5308      	clr	21256
  83                     ; 68   TIM2->CCMR3 = (uint8_t)TIM2_CCMR3_RESET_VALUE;
  85  0024 725f5309      	clr	21257
  86                     ; 69   TIM2->CNTRH = (uint8_t)TIM2_CNTRH_RESET_VALUE;
  88  0028 725f530c      	clr	21260
  89                     ; 70   TIM2->CNTRL = (uint8_t)TIM2_CNTRL_RESET_VALUE;
  91  002c 725f530d      	clr	21261
  92                     ; 71   TIM2->PSCR = (uint8_t)TIM2_PSCR_RESET_VALUE;
  94  0030 725f530e      	clr	21262
  95                     ; 72   TIM2->ARRH  = (uint8_t)TIM2_ARRH_RESET_VALUE;
  97  0034 35ff530f      	mov	21263,#255
  98                     ; 73   TIM2->ARRL  = (uint8_t)TIM2_ARRL_RESET_VALUE;
 100  0038 35ff5310      	mov	21264,#255
 101                     ; 74   TIM2->CCR1H = (uint8_t)TIM2_CCR1H_RESET_VALUE;
 103  003c 725f5311      	clr	21265
 104                     ; 75   TIM2->CCR1L = (uint8_t)TIM2_CCR1L_RESET_VALUE;
 106  0040 725f5312      	clr	21266
 107                     ; 76   TIM2->CCR2H = (uint8_t)TIM2_CCR2H_RESET_VALUE;
 109  0044 725f5313      	clr	21267
 110                     ; 77   TIM2->CCR2L = (uint8_t)TIM2_CCR2L_RESET_VALUE;
 112  0048 725f5314      	clr	21268
 113                     ; 78   TIM2->CCR3H = (uint8_t)TIM2_CCR3H_RESET_VALUE;
 115  004c 725f5315      	clr	21269
 116                     ; 79   TIM2->CCR3L = (uint8_t)TIM2_CCR3L_RESET_VALUE;
 118  0050 725f5316      	clr	21270
 119                     ; 80   TIM2->SR1 = (uint8_t)TIM2_SR1_RESET_VALUE;
 121  0054 725f5304      	clr	21252
 122                     ; 81 }
 125  0058 81            	ret	
 293                     ; 89 void TIM2_TimeBaseInit( TIM2_Prescaler_TypeDef TIM2_Prescaler,
 293                     ; 90                         uint16_t TIM2_Period)
 293                     ; 91 {
 294                     .text:	section	.text,new
 295  0000               _TIM2_TimeBaseInit:
 297  0000 88            	push	a
 298       00000000      OFST:	set	0
 301                     ; 93   TIM2->PSCR = (uint8_t)(TIM2_Prescaler);
 303  0001 c7530e        	ld	21262,a
 304                     ; 95   TIM2->ARRH = (uint8_t)(TIM2_Period >> 8);
 306  0004 7b04          	ld	a,(OFST+4,sp)
 307  0006 c7530f        	ld	21263,a
 308                     ; 96   TIM2->ARRL = (uint8_t)(TIM2_Period);
 310  0009 7b05          	ld	a,(OFST+5,sp)
 311  000b c75310        	ld	21264,a
 312                     ; 97 }
 315  000e 84            	pop	a
 316  000f 81            	ret	
 474                     ; 108 void TIM2_OC1Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 474                     ; 109                   TIM2_OutputState_TypeDef TIM2_OutputState,
 474                     ; 110                   uint16_t TIM2_Pulse,
 474                     ; 111                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 474                     ; 112 {
 475                     .text:	section	.text,new
 476  0000               _TIM2_OC1Init:
 478  0000 89            	pushw	x
 479  0001 88            	push	a
 480       00000001      OFST:	set	1
 483                     ; 114   assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 485  0002 9e            	ld	a,xh
 486  0003 4d            	tnz	a
 487  0004 271e          	jreq	L61
 488  0006 9e            	ld	a,xh
 489  0007 a110          	cp	a,#16
 490  0009 2719          	jreq	L61
 491  000b 9e            	ld	a,xh
 492  000c a120          	cp	a,#32
 493  000e 2714          	jreq	L61
 494  0010 9e            	ld	a,xh
 495  0011 a130          	cp	a,#48
 496  0013 270f          	jreq	L61
 497  0015 9e            	ld	a,xh
 498  0016 a160          	cp	a,#96
 499  0018 270a          	jreq	L61
 500  001a 9e            	ld	a,xh
 501  001b a170          	cp	a,#112
 502  001d 2705          	jreq	L61
 503  001f ae0072        	ldw	x,#114
 504  0022 ad4b          	call	LC001
 505  0024               L61:
 506                     ; 115   assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 508  0024 7b03          	ld	a,(OFST+2,sp)
 509  0026 2709          	jreq	L62
 510  0028 a111          	cp	a,#17
 511  002a 2705          	jreq	L62
 512  002c ae0073        	ldw	x,#115
 513  002f ad3e          	call	LC001
 514  0031               L62:
 515                     ; 116   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 517  0031 7b08          	ld	a,(OFST+7,sp)
 518  0033 2709          	jreq	L63
 519  0035 a122          	cp	a,#34
 520  0037 2705          	jreq	L63
 521  0039 ae0074        	ldw	x,#116
 522  003c ad31          	call	LC001
 523  003e               L63:
 524                     ; 119   TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC1E | TIM2_CCER1_CC1P));
 526  003e c6530a        	ld	a,21258
 527  0041 a4fc          	and	a,#252
 528  0043 c7530a        	ld	21258,a
 529                     ; 121   TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER1_CC1E ) | 
 529                     ; 122                            (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC1P));
 531  0046 7b08          	ld	a,(OFST+7,sp)
 532  0048 a402          	and	a,#2
 533  004a 6b01          	ld	(OFST+0,sp),a
 535  004c 7b03          	ld	a,(OFST+2,sp)
 536  004e a401          	and	a,#1
 537  0050 1a01          	or	a,(OFST+0,sp)
 538  0052 ca530a        	or	a,21258
 539  0055 c7530a        	ld	21258,a
 540                     ; 125   TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM)) |
 540                     ; 126                           (uint8_t)TIM2_OCMode);
 542  0058 c65307        	ld	a,21255
 543  005b a48f          	and	a,#143
 544  005d 1a02          	or	a,(OFST+1,sp)
 545  005f c75307        	ld	21255,a
 546                     ; 129   TIM2->CCR1H = (uint8_t)(TIM2_Pulse >> 8);
 548  0062 7b06          	ld	a,(OFST+5,sp)
 549  0064 c75311        	ld	21265,a
 550                     ; 130   TIM2->CCR1L = (uint8_t)(TIM2_Pulse);
 552  0067 7b07          	ld	a,(OFST+6,sp)
 553  0069 c75312        	ld	21266,a
 554                     ; 131 }
 557  006c 5b03          	addw	sp,#3
 558  006e 81            	ret	
 559  006f               LC001:
 560  006f 89            	pushw	x
 561  0070 5f            	clrw	x
 562  0071 89            	pushw	x
 563  0072 ae0000        	ldw	x,#L702
 564  0075 cd0000        	call	_assert_failed
 566  0078 5b04          	addw	sp,#4
 567  007a 81            	ret	
 632                     ; 142 void TIM2_OC2Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 632                     ; 143                   TIM2_OutputState_TypeDef TIM2_OutputState,
 632                     ; 144                   uint16_t TIM2_Pulse,
 632                     ; 145                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 632                     ; 146 {
 633                     .text:	section	.text,new
 634  0000               _TIM2_OC2Init:
 636  0000 89            	pushw	x
 637  0001 88            	push	a
 638       00000001      OFST:	set	1
 641                     ; 148   assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 643  0002 9e            	ld	a,xh
 644  0003 4d            	tnz	a
 645  0004 271e          	jreq	L05
 646  0006 9e            	ld	a,xh
 647  0007 a110          	cp	a,#16
 648  0009 2719          	jreq	L05
 649  000b 9e            	ld	a,xh
 650  000c a120          	cp	a,#32
 651  000e 2714          	jreq	L05
 652  0010 9e            	ld	a,xh
 653  0011 a130          	cp	a,#48
 654  0013 270f          	jreq	L05
 655  0015 9e            	ld	a,xh
 656  0016 a160          	cp	a,#96
 657  0018 270a          	jreq	L05
 658  001a 9e            	ld	a,xh
 659  001b a170          	cp	a,#112
 660  001d 2705          	jreq	L05
 661  001f ae0094        	ldw	x,#148
 662  0022 ad4b          	call	LC002
 663  0024               L05:
 664                     ; 149   assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 666  0024 7b03          	ld	a,(OFST+2,sp)
 667  0026 2709          	jreq	L06
 668  0028 a111          	cp	a,#17
 669  002a 2705          	jreq	L06
 670  002c ae0095        	ldw	x,#149
 671  002f ad3e          	call	LC002
 672  0031               L06:
 673                     ; 150   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 675  0031 7b08          	ld	a,(OFST+7,sp)
 676  0033 2709          	jreq	L07
 677  0035 a122          	cp	a,#34
 678  0037 2705          	jreq	L07
 679  0039 ae0096        	ldw	x,#150
 680  003c ad31          	call	LC002
 681  003e               L07:
 682                     ; 154   TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC2E |  TIM2_CCER1_CC2P ));
 684  003e c6530a        	ld	a,21258
 685  0041 a4cf          	and	a,#207
 686  0043 c7530a        	ld	21258,a
 687                     ; 156   TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState  & TIM2_CCER1_CC2E ) |
 687                     ; 157                            (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC2P));
 689  0046 7b08          	ld	a,(OFST+7,sp)
 690  0048 a420          	and	a,#32
 691  004a 6b01          	ld	(OFST+0,sp),a
 693  004c 7b03          	ld	a,(OFST+2,sp)
 694  004e a410          	and	a,#16
 695  0050 1a01          	or	a,(OFST+0,sp)
 696  0052 ca530a        	or	a,21258
 697  0055 c7530a        	ld	21258,a
 698                     ; 161   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM)) | 
 698                     ; 162                           (uint8_t)TIM2_OCMode);
 700  0058 c65308        	ld	a,21256
 701  005b a48f          	and	a,#143
 702  005d 1a02          	or	a,(OFST+1,sp)
 703  005f c75308        	ld	21256,a
 704                     ; 166   TIM2->CCR2H = (uint8_t)(TIM2_Pulse >> 8);
 706  0062 7b06          	ld	a,(OFST+5,sp)
 707  0064 c75313        	ld	21267,a
 708                     ; 167   TIM2->CCR2L = (uint8_t)(TIM2_Pulse);
 710  0067 7b07          	ld	a,(OFST+6,sp)
 711  0069 c75314        	ld	21268,a
 712                     ; 168 }
 715  006c 5b03          	addw	sp,#3
 716  006e 81            	ret	
 717  006f               LC002:
 718  006f 89            	pushw	x
 719  0070 5f            	clrw	x
 720  0071 89            	pushw	x
 721  0072 ae0000        	ldw	x,#L702
 722  0075 cd0000        	call	_assert_failed
 724  0078 5b04          	addw	sp,#4
 725  007a 81            	ret	
 790                     ; 179 void TIM2_OC3Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 790                     ; 180                   TIM2_OutputState_TypeDef TIM2_OutputState,
 790                     ; 181                   uint16_t TIM2_Pulse,
 790                     ; 182                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 790                     ; 183 {
 791                     .text:	section	.text,new
 792  0000               _TIM2_OC3Init:
 794  0000 89            	pushw	x
 795  0001 88            	push	a
 796       00000001      OFST:	set	1
 799                     ; 185   assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 801  0002 9e            	ld	a,xh
 802  0003 4d            	tnz	a
 803  0004 271e          	jreq	L201
 804  0006 9e            	ld	a,xh
 805  0007 a110          	cp	a,#16
 806  0009 2719          	jreq	L201
 807  000b 9e            	ld	a,xh
 808  000c a120          	cp	a,#32
 809  000e 2714          	jreq	L201
 810  0010 9e            	ld	a,xh
 811  0011 a130          	cp	a,#48
 812  0013 270f          	jreq	L201
 813  0015 9e            	ld	a,xh
 814  0016 a160          	cp	a,#96
 815  0018 270a          	jreq	L201
 816  001a 9e            	ld	a,xh
 817  001b a170          	cp	a,#112
 818  001d 2705          	jreq	L201
 819  001f ae00b9        	ldw	x,#185
 820  0022 ad4b          	call	LC003
 821  0024               L201:
 822                     ; 186   assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 824  0024 7b03          	ld	a,(OFST+2,sp)
 825  0026 2709          	jreq	L211
 826  0028 a111          	cp	a,#17
 827  002a 2705          	jreq	L211
 828  002c ae00ba        	ldw	x,#186
 829  002f ad3e          	call	LC003
 830  0031               L211:
 831                     ; 187   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 833  0031 7b08          	ld	a,(OFST+7,sp)
 834  0033 2709          	jreq	L221
 835  0035 a122          	cp	a,#34
 836  0037 2705          	jreq	L221
 837  0039 ae00bb        	ldw	x,#187
 838  003c ad31          	call	LC003
 839  003e               L221:
 840                     ; 189   TIM2->CCER2 &= (uint8_t)(~( TIM2_CCER2_CC3E  | TIM2_CCER2_CC3P));
 842  003e c6530b        	ld	a,21259
 843  0041 a4fc          	and	a,#252
 844  0043 c7530b        	ld	21259,a
 845                     ; 191   TIM2->CCER2 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER2_CC3E) |  
 845                     ; 192                            (uint8_t)(TIM2_OCPolarity & TIM2_CCER2_CC3P));
 847  0046 7b08          	ld	a,(OFST+7,sp)
 848  0048 a402          	and	a,#2
 849  004a 6b01          	ld	(OFST+0,sp),a
 851  004c 7b03          	ld	a,(OFST+2,sp)
 852  004e a401          	and	a,#1
 853  0050 1a01          	or	a,(OFST+0,sp)
 854  0052 ca530b        	or	a,21259
 855  0055 c7530b        	ld	21259,a
 856                     ; 195   TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM)) |
 856                     ; 196                           (uint8_t)TIM2_OCMode);
 858  0058 c65309        	ld	a,21257
 859  005b a48f          	and	a,#143
 860  005d 1a02          	or	a,(OFST+1,sp)
 861  005f c75309        	ld	21257,a
 862                     ; 199   TIM2->CCR3H = (uint8_t)(TIM2_Pulse >> 8);
 864  0062 7b06          	ld	a,(OFST+5,sp)
 865  0064 c75315        	ld	21269,a
 866                     ; 200   TIM2->CCR3L = (uint8_t)(TIM2_Pulse);
 868  0067 7b07          	ld	a,(OFST+6,sp)
 869  0069 c75316        	ld	21270,a
 870                     ; 201 }
 873  006c 5b03          	addw	sp,#3
 874  006e 81            	ret	
 875  006f               LC003:
 876  006f 89            	pushw	x
 877  0070 5f            	clrw	x
 878  0071 89            	pushw	x
 879  0072 ae0000        	ldw	x,#L702
 880  0075 cd0000        	call	_assert_failed
 882  0078 5b04          	addw	sp,#4
 883  007a 81            	ret	
1077                     ; 212 void TIM2_ICInit(TIM2_Channel_TypeDef TIM2_Channel,
1077                     ; 213                  TIM2_ICPolarity_TypeDef TIM2_ICPolarity,
1077                     ; 214                  TIM2_ICSelection_TypeDef TIM2_ICSelection,
1077                     ; 215                  TIM2_ICPSC_TypeDef TIM2_ICPrescaler,
1077                     ; 216                  uint8_t TIM2_ICFilter)
1077                     ; 217 {
1078                     .text:	section	.text,new
1079  0000               _TIM2_ICInit:
1081  0000 89            	pushw	x
1082       00000000      OFST:	set	0
1085                     ; 219   assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
1087  0001 9e            	ld	a,xh
1088  0002 4d            	tnz	a
1089  0003 270f          	jreq	L431
1090  0005 9e            	ld	a,xh
1091  0006 4a            	dec	a
1092  0007 270b          	jreq	L431
1093  0009 9e            	ld	a,xh
1094  000a a102          	cp	a,#2
1095  000c 2706          	jreq	L431
1096  000e ae00db        	ldw	x,#219
1097  0011 cd0097        	call	LC004
1098  0014               L431:
1099                     ; 220   assert_param(IS_TIM2_IC_POLARITY_OK(TIM2_ICPolarity));
1101  0014 7b02          	ld	a,(OFST+2,sp)
1102  0016 2709          	jreq	L441
1103  0018 a144          	cp	a,#68
1104  001a 2705          	jreq	L441
1105  001c ae00dc        	ldw	x,#220
1106  001f ad76          	call	LC004
1107  0021               L441:
1108                     ; 221   assert_param(IS_TIM2_IC_SELECTION_OK(TIM2_ICSelection));
1110  0021 7b05          	ld	a,(OFST+5,sp)
1111  0023 a101          	cp	a,#1
1112  0025 270d          	jreq	L451
1113  0027 a102          	cp	a,#2
1114  0029 2709          	jreq	L451
1115  002b a103          	cp	a,#3
1116  002d 2705          	jreq	L451
1117  002f ae00dd        	ldw	x,#221
1118  0032 ad63          	call	LC004
1119  0034               L451:
1120                     ; 222   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_ICPrescaler));
1122  0034 7b06          	ld	a,(OFST+6,sp)
1123  0036 2711          	jreq	L461
1124  0038 a104          	cp	a,#4
1125  003a 270d          	jreq	L461
1126  003c a108          	cp	a,#8
1127  003e 2709          	jreq	L461
1128  0040 a10c          	cp	a,#12
1129  0042 2705          	jreq	L461
1130  0044 ae00de        	ldw	x,#222
1131  0047 ad4e          	call	LC004
1132  0049               L461:
1133                     ; 223   assert_param(IS_TIM2_IC_FILTER_OK(TIM2_ICFilter));
1135  0049 7b07          	ld	a,(OFST+7,sp)
1136  004b a110          	cp	a,#16
1137  004d 2505          	jrult	L271
1138  004f ae00df        	ldw	x,#223
1139  0052 ad43          	call	LC004
1140  0054               L271:
1141                     ; 225   if (TIM2_Channel == TIM2_CHANNEL_1)
1143  0054 7b01          	ld	a,(OFST+1,sp)
1144  0056 2614          	jrne	L304
1145                     ; 228     TI1_Config((uint8_t)TIM2_ICPolarity,
1145                     ; 229                (uint8_t)TIM2_ICSelection,
1145                     ; 230                (uint8_t)TIM2_ICFilter);
1147  0058 7b07          	ld	a,(OFST+7,sp)
1148  005a 88            	push	a
1149  005b 7b06          	ld	a,(OFST+6,sp)
1150  005d 97            	ld	xl,a
1151  005e 7b03          	ld	a,(OFST+3,sp)
1152  0060 95            	ld	xh,a
1153  0061 cd0000        	call	L3_TI1_Config
1155  0064 84            	pop	a
1156                     ; 233     TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1158  0065 7b06          	ld	a,(OFST+6,sp)
1159  0067 cd0000        	call	_TIM2_SetIC1Prescaler
1162  006a 2029          	jra	L504
1163  006c               L304:
1164                     ; 235   else if (TIM2_Channel == TIM2_CHANNEL_2)
1166  006c 4a            	dec	a
1167  006d 2614          	jrne	L704
1168                     ; 238     TI2_Config((uint8_t)TIM2_ICPolarity,
1168                     ; 239                (uint8_t)TIM2_ICSelection,
1168                     ; 240                (uint8_t)TIM2_ICFilter);
1170  006f 7b07          	ld	a,(OFST+7,sp)
1171  0071 88            	push	a
1172  0072 7b06          	ld	a,(OFST+6,sp)
1173  0074 97            	ld	xl,a
1174  0075 7b03          	ld	a,(OFST+3,sp)
1175  0077 95            	ld	xh,a
1176  0078 cd0000        	call	L5_TI2_Config
1178  007b 84            	pop	a
1179                     ; 243     TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1181  007c 7b06          	ld	a,(OFST+6,sp)
1182  007e cd0000        	call	_TIM2_SetIC2Prescaler
1185  0081 2012          	jra	L504
1186  0083               L704:
1187                     ; 248     TI3_Config((uint8_t)TIM2_ICPolarity,
1187                     ; 249                (uint8_t)TIM2_ICSelection,
1187                     ; 250                (uint8_t)TIM2_ICFilter);
1189  0083 7b07          	ld	a,(OFST+7,sp)
1190  0085 88            	push	a
1191  0086 7b06          	ld	a,(OFST+6,sp)
1192  0088 97            	ld	xl,a
1193  0089 7b03          	ld	a,(OFST+3,sp)
1194  008b 95            	ld	xh,a
1195  008c cd0000        	call	L7_TI3_Config
1197  008f 84            	pop	a
1198                     ; 253     TIM2_SetIC3Prescaler(TIM2_ICPrescaler);
1200  0090 7b06          	ld	a,(OFST+6,sp)
1201  0092 cd0000        	call	_TIM2_SetIC3Prescaler
1203  0095               L504:
1204                     ; 255 }
1207  0095 85            	popw	x
1208  0096 81            	ret	
1209  0097               LC004:
1210  0097 89            	pushw	x
1211  0098 5f            	clrw	x
1212  0099 89            	pushw	x
1213  009a ae0000        	ldw	x,#L702
1214  009d cd0000        	call	_assert_failed
1216  00a0 5b04          	addw	sp,#4
1217  00a2 81            	ret	
1314                     ; 266 void TIM2_PWMIConfig(TIM2_Channel_TypeDef TIM2_Channel,
1314                     ; 267                      TIM2_ICPolarity_TypeDef TIM2_ICPolarity,
1314                     ; 268                      TIM2_ICSelection_TypeDef TIM2_ICSelection,
1314                     ; 269                      TIM2_ICPSC_TypeDef TIM2_ICPrescaler,
1314                     ; 270                      uint8_t TIM2_ICFilter)
1314                     ; 271 {
1315                     .text:	section	.text,new
1316  0000               _TIM2_PWMIConfig:
1318  0000 89            	pushw	x
1319  0001 89            	pushw	x
1320       00000002      OFST:	set	2
1323                     ; 272   uint8_t icpolarity = (uint8_t)TIM2_ICPOLARITY_RISING;
1325                     ; 273   uint8_t icselection = (uint8_t)TIM2_ICSELECTION_DIRECTTI;
1327                     ; 276   assert_param(IS_TIM2_PWMI_CHANNEL_OK(TIM2_Channel));
1329  0002 9e            	ld	a,xh
1330  0003 4d            	tnz	a
1331  0004 270a          	jreq	L022
1332  0006 9e            	ld	a,xh
1333  0007 4a            	dec	a
1334  0008 2706          	jreq	L022
1335  000a ae0114        	ldw	x,#276
1336  000d cd00b3        	call	LC005
1337  0010               L022:
1338                     ; 277   assert_param(IS_TIM2_IC_POLARITY_OK(TIM2_ICPolarity));
1340  0010 7b04          	ld	a,(OFST+2,sp)
1341  0012 270a          	jreq	L032
1342  0014 a144          	cp	a,#68
1343  0016 2706          	jreq	L032
1344  0018 ae0115        	ldw	x,#277
1345  001b cd00b3        	call	LC005
1346  001e               L032:
1347                     ; 278   assert_param(IS_TIM2_IC_SELECTION_OK(TIM2_ICSelection));
1349  001e 7b07          	ld	a,(OFST+5,sp)
1350  0020 a101          	cp	a,#1
1351  0022 270e          	jreq	L042
1352  0024 a102          	cp	a,#2
1353  0026 270a          	jreq	L042
1354  0028 a103          	cp	a,#3
1355  002a 2706          	jreq	L042
1356  002c ae0116        	ldw	x,#278
1357  002f cd00b3        	call	LC005
1358  0032               L042:
1359                     ; 279   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_ICPrescaler));
1361  0032 7b08          	ld	a,(OFST+6,sp)
1362  0034 2711          	jreq	L052
1363  0036 a104          	cp	a,#4
1364  0038 270d          	jreq	L052
1365  003a a108          	cp	a,#8
1366  003c 2709          	jreq	L052
1367  003e a10c          	cp	a,#12
1368  0040 2705          	jreq	L052
1369  0042 ae0117        	ldw	x,#279
1370  0045 ad6c          	call	LC005
1371  0047               L052:
1372                     ; 282   if (TIM2_ICPolarity != TIM2_ICPOLARITY_FALLING)
1374  0047 7b04          	ld	a,(OFST+2,sp)
1375  0049 a144          	cp	a,#68
1376  004b 2706          	jreq	L164
1377                     ; 284     icpolarity = (uint8_t)TIM2_ICPOLARITY_FALLING;
1379  004d a644          	ld	a,#68
1380  004f 6b01          	ld	(OFST-1,sp),a
1383  0051 2002          	jra	L364
1384  0053               L164:
1385                     ; 288     icpolarity = (uint8_t)TIM2_ICPOLARITY_RISING;
1387  0053 0f01          	clr	(OFST-1,sp)
1389  0055               L364:
1390                     ; 292   if (TIM2_ICSelection == TIM2_ICSELECTION_DIRECTTI)
1392  0055 7b07          	ld	a,(OFST+5,sp)
1393  0057 4a            	dec	a
1394  0058 2604          	jrne	L564
1395                     ; 294     icselection = (uint8_t)TIM2_ICSELECTION_INDIRECTTI;
1397  005a a602          	ld	a,#2
1399  005c 2002          	jra	L764
1400  005e               L564:
1401                     ; 298     icselection = (uint8_t)TIM2_ICSELECTION_DIRECTTI;
1403  005e a601          	ld	a,#1
1404  0060               L764:
1405  0060 6b02          	ld	(OFST+0,sp),a
1407                     ; 301   if (TIM2_Channel == TIM2_CHANNEL_1)
1409  0062 7b03          	ld	a,(OFST+1,sp)
1410  0064 2626          	jrne	L174
1411                     ; 304     TI1_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
1411                     ; 305                (uint8_t)TIM2_ICFilter);
1413  0066 7b09          	ld	a,(OFST+7,sp)
1414  0068 88            	push	a
1415  0069 7b08          	ld	a,(OFST+6,sp)
1416  006b 97            	ld	xl,a
1417  006c 7b05          	ld	a,(OFST+3,sp)
1418  006e 95            	ld	xh,a
1419  006f cd0000        	call	L3_TI1_Config
1421  0072 84            	pop	a
1422                     ; 308     TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1424  0073 7b08          	ld	a,(OFST+6,sp)
1425  0075 cd0000        	call	_TIM2_SetIC1Prescaler
1427                     ; 311     TI2_Config(icpolarity, icselection, TIM2_ICFilter);
1429  0078 7b09          	ld	a,(OFST+7,sp)
1430  007a 88            	push	a
1431  007b 7b03          	ld	a,(OFST+1,sp)
1432  007d 97            	ld	xl,a
1433  007e 7b02          	ld	a,(OFST+0,sp)
1434  0080 95            	ld	xh,a
1435  0081 cd0000        	call	L5_TI2_Config
1437  0084 84            	pop	a
1438                     ; 314     TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1440  0085 7b08          	ld	a,(OFST+6,sp)
1441  0087 cd0000        	call	_TIM2_SetIC2Prescaler
1444  008a 2024          	jra	L374
1445  008c               L174:
1446                     ; 319     TI2_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
1446                     ; 320                (uint8_t)TIM2_ICFilter);
1448  008c 7b09          	ld	a,(OFST+7,sp)
1449  008e 88            	push	a
1450  008f 7b08          	ld	a,(OFST+6,sp)
1451  0091 97            	ld	xl,a
1452  0092 7b05          	ld	a,(OFST+3,sp)
1453  0094 95            	ld	xh,a
1454  0095 cd0000        	call	L5_TI2_Config
1456  0098 84            	pop	a
1457                     ; 323     TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1459  0099 7b08          	ld	a,(OFST+6,sp)
1460  009b cd0000        	call	_TIM2_SetIC2Prescaler
1462                     ; 326     TI1_Config((uint8_t)icpolarity, icselection, (uint8_t)TIM2_ICFilter);
1464  009e 7b09          	ld	a,(OFST+7,sp)
1465  00a0 88            	push	a
1466  00a1 7b03          	ld	a,(OFST+1,sp)
1467  00a3 97            	ld	xl,a
1468  00a4 7b02          	ld	a,(OFST+0,sp)
1469  00a6 95            	ld	xh,a
1470  00a7 cd0000        	call	L3_TI1_Config
1472  00aa 84            	pop	a
1473                     ; 329     TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1475  00ab 7b08          	ld	a,(OFST+6,sp)
1476  00ad cd0000        	call	_TIM2_SetIC1Prescaler
1478  00b0               L374:
1479                     ; 331 }
1482  00b0 5b04          	addw	sp,#4
1483  00b2 81            	ret	
1484  00b3               LC005:
1485  00b3 89            	pushw	x
1486  00b4 5f            	clrw	x
1487  00b5 89            	pushw	x
1488  00b6 ae0000        	ldw	x,#L702
1489  00b9 cd0000        	call	_assert_failed
1491  00bc 5b04          	addw	sp,#4
1492  00be 81            	ret	
1548                     ; 339 void TIM2_Cmd(FunctionalState NewState)
1548                     ; 340 {
1549                     .text:	section	.text,new
1550  0000               _TIM2_Cmd:
1552  0000 88            	push	a
1553       00000000      OFST:	set	0
1556                     ; 342   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1558  0001 4d            	tnz	a
1559  0002 2711          	jreq	L203
1560  0004 4a            	dec	a
1561  0005 270e          	jreq	L203
1562  0007 ae0156        	ldw	x,#342
1563  000a 89            	pushw	x
1564  000b 5f            	clrw	x
1565  000c 89            	pushw	x
1566  000d ae0000        	ldw	x,#L702
1567  0010 cd0000        	call	_assert_failed
1569  0013 5b04          	addw	sp,#4
1570  0015               L203:
1571                     ; 345   if (NewState != DISABLE)
1573  0015 7b01          	ld	a,(OFST+1,sp)
1574  0017 2706          	jreq	L325
1575                     ; 347     TIM2->CR1 |= (uint8_t)TIM2_CR1_CEN;
1577  0019 72105300      	bset	21248,#0
1579  001d 2004          	jra	L525
1580  001f               L325:
1581                     ; 351     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_CEN);
1583  001f 72115300      	bres	21248,#0
1584  0023               L525:
1585                     ; 353 }
1588  0023 84            	pop	a
1589  0024 81            	ret	
1669                     ; 368 void TIM2_ITConfig(TIM2_IT_TypeDef TIM2_IT, FunctionalState NewState)
1669                     ; 369 {
1670                     .text:	section	.text,new
1671  0000               _TIM2_ITConfig:
1673  0000 89            	pushw	x
1674       00000000      OFST:	set	0
1677                     ; 371   assert_param(IS_TIM2_IT_OK(TIM2_IT));
1679  0001 9e            	ld	a,xh
1680  0002 4d            	tnz	a
1681  0003 2705          	jreq	L013
1682  0005 9e            	ld	a,xh
1683  0006 a110          	cp	a,#16
1684  0008 2505          	jrult	L213
1685  000a               L013:
1686  000a ae0173        	ldw	x,#371
1687  000d ad22          	call	LC006
1688  000f               L213:
1689                     ; 372   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1691  000f 7b02          	ld	a,(OFST+2,sp)
1692  0011 2708          	jreq	L223
1693  0013 4a            	dec	a
1694  0014 2705          	jreq	L223
1695  0016 ae0174        	ldw	x,#372
1696  0019 ad16          	call	LC006
1697  001b               L223:
1698                     ; 374   if (NewState != DISABLE)
1700  001b 7b02          	ld	a,(OFST+2,sp)
1701  001d 2707          	jreq	L565
1702                     ; 377     TIM2->IER |= (uint8_t)TIM2_IT;
1704  001f c65303        	ld	a,21251
1705  0022 1a01          	or	a,(OFST+1,sp)
1707  0024 2006          	jra	L765
1708  0026               L565:
1709                     ; 382     TIM2->IER &= (uint8_t)(~TIM2_IT);
1711  0026 7b01          	ld	a,(OFST+1,sp)
1712  0028 43            	cpl	a
1713  0029 c45303        	and	a,21251
1714  002c               L765:
1715  002c c75303        	ld	21251,a
1716                     ; 384 }
1719  002f 85            	popw	x
1720  0030 81            	ret	
1721  0031               LC006:
1722  0031 89            	pushw	x
1723  0032 5f            	clrw	x
1724  0033 89            	pushw	x
1725  0034 ae0000        	ldw	x,#L702
1726  0037 cd0000        	call	_assert_failed
1728  003a 5b04          	addw	sp,#4
1729  003c 81            	ret	
1766                     ; 392 void TIM2_UpdateDisableConfig(FunctionalState NewState)
1766                     ; 393 {
1767                     .text:	section	.text,new
1768  0000               _TIM2_UpdateDisableConfig:
1770  0000 88            	push	a
1771       00000000      OFST:	set	0
1774                     ; 395   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1776  0001 4d            	tnz	a
1777  0002 2711          	jreq	L433
1778  0004 4a            	dec	a
1779  0005 270e          	jreq	L433
1780  0007 ae018b        	ldw	x,#395
1781  000a 89            	pushw	x
1782  000b 5f            	clrw	x
1783  000c 89            	pushw	x
1784  000d ae0000        	ldw	x,#L702
1785  0010 cd0000        	call	_assert_failed
1787  0013 5b04          	addw	sp,#4
1788  0015               L433:
1789                     ; 398   if (NewState != DISABLE)
1791  0015 7b01          	ld	a,(OFST+1,sp)
1792  0017 2706          	jreq	L706
1793                     ; 400     TIM2->CR1 |= (uint8_t)TIM2_CR1_UDIS;
1795  0019 72125300      	bset	21248,#1
1797  001d 2004          	jra	L116
1798  001f               L706:
1799                     ; 404     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_UDIS);
1801  001f 72135300      	bres	21248,#1
1802  0023               L116:
1803                     ; 406 }
1806  0023 84            	pop	a
1807  0024 81            	ret	
1866                     ; 416 void TIM2_UpdateRequestConfig(TIM2_UpdateSource_TypeDef TIM2_UpdateSource)
1866                     ; 417 {
1867                     .text:	section	.text,new
1868  0000               _TIM2_UpdateRequestConfig:
1870  0000 88            	push	a
1871       00000000      OFST:	set	0
1874                     ; 419   assert_param(IS_TIM2_UPDATE_SOURCE_OK(TIM2_UpdateSource));
1876  0001 4d            	tnz	a
1877  0002 2711          	jreq	L643
1878  0004 4a            	dec	a
1879  0005 270e          	jreq	L643
1880  0007 ae01a3        	ldw	x,#419
1881  000a 89            	pushw	x
1882  000b 5f            	clrw	x
1883  000c 89            	pushw	x
1884  000d ae0000        	ldw	x,#L702
1885  0010 cd0000        	call	_assert_failed
1887  0013 5b04          	addw	sp,#4
1888  0015               L643:
1889                     ; 422   if (TIM2_UpdateSource != TIM2_UPDATESOURCE_GLOBAL)
1891  0015 7b01          	ld	a,(OFST+1,sp)
1892  0017 2706          	jreq	L146
1893                     ; 424     TIM2->CR1 |= (uint8_t)TIM2_CR1_URS;
1895  0019 72145300      	bset	21248,#2
1897  001d 2004          	jra	L346
1898  001f               L146:
1899                     ; 428     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_URS);
1901  001f 72155300      	bres	21248,#2
1902  0023               L346:
1903                     ; 430 }
1906  0023 84            	pop	a
1907  0024 81            	ret	
1965                     ; 440 void TIM2_SelectOnePulseMode(TIM2_OPMode_TypeDef TIM2_OPMode)
1965                     ; 441 {
1966                     .text:	section	.text,new
1967  0000               _TIM2_SelectOnePulseMode:
1969  0000 88            	push	a
1970       00000000      OFST:	set	0
1973                     ; 443   assert_param(IS_TIM2_OPM_MODE_OK(TIM2_OPMode));
1975  0001 a101          	cp	a,#1
1976  0003 2711          	jreq	L063
1977  0005 4d            	tnz	a
1978  0006 270e          	jreq	L063
1979  0008 ae01bb        	ldw	x,#443
1980  000b 89            	pushw	x
1981  000c 5f            	clrw	x
1982  000d 89            	pushw	x
1983  000e ae0000        	ldw	x,#L702
1984  0011 cd0000        	call	_assert_failed
1986  0014 5b04          	addw	sp,#4
1987  0016               L063:
1988                     ; 446   if (TIM2_OPMode != TIM2_OPMODE_REPETITIVE)
1990  0016 7b01          	ld	a,(OFST+1,sp)
1991  0018 2706          	jreq	L376
1992                     ; 448     TIM2->CR1 |= (uint8_t)TIM2_CR1_OPM;
1994  001a 72165300      	bset	21248,#3
1996  001e 2004          	jra	L576
1997  0020               L376:
1998                     ; 452     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_OPM);
2000  0020 72175300      	bres	21248,#3
2001  0024               L576:
2002                     ; 454 }
2005  0024 84            	pop	a
2006  0025 81            	ret	
2075                     ; 484 void TIM2_PrescalerConfig(TIM2_Prescaler_TypeDef Prescaler,
2075                     ; 485                           TIM2_PSCReloadMode_TypeDef TIM2_PSCReloadMode)
2075                     ; 486 {
2076                     .text:	section	.text,new
2077  0000               _TIM2_PrescalerConfig:
2079  0000 89            	pushw	x
2080       00000000      OFST:	set	0
2083                     ; 488   assert_param(IS_TIM2_PRESCALER_RELOAD_OK(TIM2_PSCReloadMode));
2085  0001 9f            	ld	a,xl
2086  0002 4d            	tnz	a
2087  0003 2709          	jreq	L273
2088  0005 9f            	ld	a,xl
2089  0006 4a            	dec	a
2090  0007 2705          	jreq	L273
2091  0009 ae01e8        	ldw	x,#488
2092  000c ad51          	call	LC007
2093  000e               L273:
2094                     ; 489   assert_param(IS_TIM2_PRESCALER_OK(Prescaler));
2096  000e 7b01          	ld	a,(OFST+1,sp)
2097  0010 2743          	jreq	L204
2098  0012 a101          	cp	a,#1
2099  0014 273f          	jreq	L204
2100  0016 a102          	cp	a,#2
2101  0018 273b          	jreq	L204
2102  001a a103          	cp	a,#3
2103  001c 2737          	jreq	L204
2104  001e a104          	cp	a,#4
2105  0020 2733          	jreq	L204
2106  0022 a105          	cp	a,#5
2107  0024 272f          	jreq	L204
2108  0026 a106          	cp	a,#6
2109  0028 272b          	jreq	L204
2110  002a a107          	cp	a,#7
2111  002c 2727          	jreq	L204
2112  002e a108          	cp	a,#8
2113  0030 2723          	jreq	L204
2114  0032 a109          	cp	a,#9
2115  0034 271f          	jreq	L204
2116  0036 a10a          	cp	a,#10
2117  0038 271b          	jreq	L204
2118  003a a10b          	cp	a,#11
2119  003c 2717          	jreq	L204
2120  003e a10c          	cp	a,#12
2121  0040 2713          	jreq	L204
2122  0042 a10d          	cp	a,#13
2123  0044 270f          	jreq	L204
2124  0046 a10e          	cp	a,#14
2125  0048 270b          	jreq	L204
2126  004a a10f          	cp	a,#15
2127  004c 2707          	jreq	L204
2128  004e ae01e9        	ldw	x,#489
2129  0051 ad0c          	call	LC007
2130  0053 7b01          	ld	a,(OFST+1,sp)
2131  0055               L204:
2132                     ; 492   TIM2->PSCR = (uint8_t)Prescaler;
2134  0055 c7530e        	ld	21262,a
2135                     ; 495   TIM2->EGR = (uint8_t)TIM2_PSCReloadMode;
2137  0058 7b02          	ld	a,(OFST+2,sp)
2138  005a c75306        	ld	21254,a
2139                     ; 496 }
2142  005d 85            	popw	x
2143  005e 81            	ret	
2144  005f               LC007:
2145  005f 89            	pushw	x
2146  0060 5f            	clrw	x
2147  0061 89            	pushw	x
2148  0062 ae0000        	ldw	x,#L702
2149  0065 cd0000        	call	_assert_failed
2151  0068 5b04          	addw	sp,#4
2152  006a 81            	ret	
2211                     ; 507 void TIM2_ForcedOC1Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
2211                     ; 508 {
2212                     .text:	section	.text,new
2213  0000               _TIM2_ForcedOC1Config:
2215  0000 88            	push	a
2216       00000000      OFST:	set	0
2219                     ; 510   assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
2221  0001 a150          	cp	a,#80
2222  0003 2712          	jreq	L414
2223  0005 a140          	cp	a,#64
2224  0007 270e          	jreq	L414
2225  0009 ae01fe        	ldw	x,#510
2226  000c 89            	pushw	x
2227  000d 5f            	clrw	x
2228  000e 89            	pushw	x
2229  000f ae0000        	ldw	x,#L702
2230  0012 cd0000        	call	_assert_failed
2232  0015 5b04          	addw	sp,#4
2233  0017               L414:
2234                     ; 513   TIM2->CCMR1  =  (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))  
2234                     ; 514                             | (uint8_t)TIM2_ForcedAction);
2236  0017 c65307        	ld	a,21255
2237  001a a48f          	and	a,#143
2238  001c 1a01          	or	a,(OFST+1,sp)
2239  001e c75307        	ld	21255,a
2240                     ; 515 }
2243  0021 84            	pop	a
2244  0022 81            	ret	
2281                     ; 526 void TIM2_ForcedOC2Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
2281                     ; 527 {
2282                     .text:	section	.text,new
2283  0000               _TIM2_ForcedOC2Config:
2285  0000 88            	push	a
2286       00000000      OFST:	set	0
2289                     ; 529   assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
2291  0001 a150          	cp	a,#80
2292  0003 2712          	jreq	L624
2293  0005 a140          	cp	a,#64
2294  0007 270e          	jreq	L624
2295  0009 ae0211        	ldw	x,#529
2296  000c 89            	pushw	x
2297  000d 5f            	clrw	x
2298  000e 89            	pushw	x
2299  000f ae0000        	ldw	x,#L702
2300  0012 cd0000        	call	_assert_failed
2302  0015 5b04          	addw	sp,#4
2303  0017               L624:
2304                     ; 532   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))  
2304                     ; 533                           | (uint8_t)TIM2_ForcedAction);
2306  0017 c65308        	ld	a,21256
2307  001a a48f          	and	a,#143
2308  001c 1a01          	or	a,(OFST+1,sp)
2309  001e c75308        	ld	21256,a
2310                     ; 534 }
2313  0021 84            	pop	a
2314  0022 81            	ret	
2351                     ; 545 void TIM2_ForcedOC3Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
2351                     ; 546 {
2352                     .text:	section	.text,new
2353  0000               _TIM2_ForcedOC3Config:
2355  0000 88            	push	a
2356       00000000      OFST:	set	0
2359                     ; 548   assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
2361  0001 a150          	cp	a,#80
2362  0003 2712          	jreq	L044
2363  0005 a140          	cp	a,#64
2364  0007 270e          	jreq	L044
2365  0009 ae0224        	ldw	x,#548
2366  000c 89            	pushw	x
2367  000d 5f            	clrw	x
2368  000e 89            	pushw	x
2369  000f ae0000        	ldw	x,#L702
2370  0012 cd0000        	call	_assert_failed
2372  0015 5b04          	addw	sp,#4
2373  0017               L044:
2374                     ; 551   TIM2->CCMR3  =  (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
2374                     ; 552                             | (uint8_t)TIM2_ForcedAction);
2376  0017 c65309        	ld	a,21257
2377  001a a48f          	and	a,#143
2378  001c 1a01          	or	a,(OFST+1,sp)
2379  001e c75309        	ld	21257,a
2380                     ; 553 }
2383  0021 84            	pop	a
2384  0022 81            	ret	
2421                     ; 561 void TIM2_ARRPreloadConfig(FunctionalState NewState)
2421                     ; 562 {
2422                     .text:	section	.text,new
2423  0000               _TIM2_ARRPreloadConfig:
2425  0000 88            	push	a
2426       00000000      OFST:	set	0
2429                     ; 564   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2431  0001 4d            	tnz	a
2432  0002 2711          	jreq	L254
2433  0004 4a            	dec	a
2434  0005 270e          	jreq	L254
2435  0007 ae0234        	ldw	x,#564
2436  000a 89            	pushw	x
2437  000b 5f            	clrw	x
2438  000c 89            	pushw	x
2439  000d ae0000        	ldw	x,#L702
2440  0010 cd0000        	call	_assert_failed
2442  0013 5b04          	addw	sp,#4
2443  0015               L254:
2444                     ; 567   if (NewState != DISABLE)
2446  0015 7b01          	ld	a,(OFST+1,sp)
2447  0017 2706          	jreq	L1301
2448                     ; 569     TIM2->CR1 |= (uint8_t)TIM2_CR1_ARPE;
2450  0019 721e5300      	bset	21248,#7
2452  001d 2004          	jra	L3301
2453  001f               L1301:
2454                     ; 573     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_ARPE);
2456  001f 721f5300      	bres	21248,#7
2457  0023               L3301:
2458                     ; 575 }
2461  0023 84            	pop	a
2462  0024 81            	ret	
2499                     ; 583 void TIM2_OC1PreloadConfig(FunctionalState NewState)
2499                     ; 584 {
2500                     .text:	section	.text,new
2501  0000               _TIM2_OC1PreloadConfig:
2503  0000 88            	push	a
2504       00000000      OFST:	set	0
2507                     ; 586   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2509  0001 4d            	tnz	a
2510  0002 2711          	jreq	L464
2511  0004 4a            	dec	a
2512  0005 270e          	jreq	L464
2513  0007 ae024a        	ldw	x,#586
2514  000a 89            	pushw	x
2515  000b 5f            	clrw	x
2516  000c 89            	pushw	x
2517  000d ae0000        	ldw	x,#L702
2518  0010 cd0000        	call	_assert_failed
2520  0013 5b04          	addw	sp,#4
2521  0015               L464:
2522                     ; 589   if (NewState != DISABLE)
2524  0015 7b01          	ld	a,(OFST+1,sp)
2525  0017 2706          	jreq	L3501
2526                     ; 591     TIM2->CCMR1 |= (uint8_t)TIM2_CCMR_OCxPE;
2528  0019 72165307      	bset	21255,#3
2530  001d 2004          	jra	L5501
2531  001f               L3501:
2532                     ; 595     TIM2->CCMR1 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2534  001f 72175307      	bres	21255,#3
2535  0023               L5501:
2536                     ; 597 }
2539  0023 84            	pop	a
2540  0024 81            	ret	
2577                     ; 605 void TIM2_OC2PreloadConfig(FunctionalState NewState)
2577                     ; 606 {
2578                     .text:	section	.text,new
2579  0000               _TIM2_OC2PreloadConfig:
2581  0000 88            	push	a
2582       00000000      OFST:	set	0
2585                     ; 608   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2587  0001 4d            	tnz	a
2588  0002 2711          	jreq	L674
2589  0004 4a            	dec	a
2590  0005 270e          	jreq	L674
2591  0007 ae0260        	ldw	x,#608
2592  000a 89            	pushw	x
2593  000b 5f            	clrw	x
2594  000c 89            	pushw	x
2595  000d ae0000        	ldw	x,#L702
2596  0010 cd0000        	call	_assert_failed
2598  0013 5b04          	addw	sp,#4
2599  0015               L674:
2600                     ; 611   if (NewState != DISABLE)
2602  0015 7b01          	ld	a,(OFST+1,sp)
2603  0017 2706          	jreq	L5701
2604                     ; 613     TIM2->CCMR2 |= (uint8_t)TIM2_CCMR_OCxPE;
2606  0019 72165308      	bset	21256,#3
2608  001d 2004          	jra	L7701
2609  001f               L5701:
2610                     ; 617     TIM2->CCMR2 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2612  001f 72175308      	bres	21256,#3
2613  0023               L7701:
2614                     ; 619 }
2617  0023 84            	pop	a
2618  0024 81            	ret	
2655                     ; 627 void TIM2_OC3PreloadConfig(FunctionalState NewState)
2655                     ; 628 {
2656                     .text:	section	.text,new
2657  0000               _TIM2_OC3PreloadConfig:
2659  0000 88            	push	a
2660       00000000      OFST:	set	0
2663                     ; 630   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2665  0001 4d            	tnz	a
2666  0002 2711          	jreq	L015
2667  0004 4a            	dec	a
2668  0005 270e          	jreq	L015
2669  0007 ae0276        	ldw	x,#630
2670  000a 89            	pushw	x
2671  000b 5f            	clrw	x
2672  000c 89            	pushw	x
2673  000d ae0000        	ldw	x,#L702
2674  0010 cd0000        	call	_assert_failed
2676  0013 5b04          	addw	sp,#4
2677  0015               L015:
2678                     ; 633   if (NewState != DISABLE)
2680  0015 7b01          	ld	a,(OFST+1,sp)
2681  0017 2706          	jreq	L7111
2682                     ; 635     TIM2->CCMR3 |= (uint8_t)TIM2_CCMR_OCxPE;
2684  0019 72165309      	bset	21257,#3
2686  001d 2004          	jra	L1211
2687  001f               L7111:
2688                     ; 639     TIM2->CCMR3 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2690  001f 72175309      	bres	21257,#3
2691  0023               L1211:
2692                     ; 641 }
2695  0023 84            	pop	a
2696  0024 81            	ret	
2770                     ; 653 void TIM2_GenerateEvent(TIM2_EventSource_TypeDef TIM2_EventSource)
2770                     ; 654 {
2771                     .text:	section	.text,new
2772  0000               _TIM2_GenerateEvent:
2774  0000 88            	push	a
2775       00000000      OFST:	set	0
2778                     ; 656   assert_param(IS_TIM2_EVENT_SOURCE_OK(TIM2_EventSource));
2780  0001 4d            	tnz	a
2781  0002 260e          	jrne	L025
2782  0004 ae0290        	ldw	x,#656
2783  0007 89            	pushw	x
2784  0008 5f            	clrw	x
2785  0009 89            	pushw	x
2786  000a ae0000        	ldw	x,#L702
2787  000d cd0000        	call	_assert_failed
2789  0010 5b04          	addw	sp,#4
2790  0012               L025:
2791                     ; 659   TIM2->EGR = (uint8_t)TIM2_EventSource;
2793  0012 7b01          	ld	a,(OFST+1,sp)
2794  0014 c75306        	ld	21254,a
2795                     ; 660 }
2798  0017 84            	pop	a
2799  0018 81            	ret	
2836                     ; 670 void TIM2_OC1PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
2836                     ; 671 {
2837                     .text:	section	.text,new
2838  0000               _TIM2_OC1PolarityConfig:
2840  0000 88            	push	a
2841       00000000      OFST:	set	0
2844                     ; 673   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
2846  0001 4d            	tnz	a
2847  0002 2712          	jreq	L235
2848  0004 a122          	cp	a,#34
2849  0006 270e          	jreq	L235
2850  0008 ae02a1        	ldw	x,#673
2851  000b 89            	pushw	x
2852  000c 5f            	clrw	x
2853  000d 89            	pushw	x
2854  000e ae0000        	ldw	x,#L702
2855  0011 cd0000        	call	_assert_failed
2857  0014 5b04          	addw	sp,#4
2858  0016               L235:
2859                     ; 676   if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
2861  0016 7b01          	ld	a,(OFST+1,sp)
2862  0018 2706          	jreq	L3711
2863                     ; 678     TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1P;
2865  001a 7212530a      	bset	21258,#1
2867  001e 2004          	jra	L5711
2868  0020               L3711:
2869                     ; 682     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
2871  0020 7213530a      	bres	21258,#1
2872  0024               L5711:
2873                     ; 684 }
2876  0024 84            	pop	a
2877  0025 81            	ret	
2914                     ; 694 void TIM2_OC2PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
2914                     ; 695 {
2915                     .text:	section	.text,new
2916  0000               _TIM2_OC2PolarityConfig:
2918  0000 88            	push	a
2919       00000000      OFST:	set	0
2922                     ; 697   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
2924  0001 4d            	tnz	a
2925  0002 2712          	jreq	L445
2926  0004 a122          	cp	a,#34
2927  0006 270e          	jreq	L445
2928  0008 ae02b9        	ldw	x,#697
2929  000b 89            	pushw	x
2930  000c 5f            	clrw	x
2931  000d 89            	pushw	x
2932  000e ae0000        	ldw	x,#L702
2933  0011 cd0000        	call	_assert_failed
2935  0014 5b04          	addw	sp,#4
2936  0016               L445:
2937                     ; 700   if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
2939  0016 7b01          	ld	a,(OFST+1,sp)
2940  0018 2706          	jreq	L5121
2941                     ; 702     TIM2->CCER1 |= TIM2_CCER1_CC2P;
2943  001a 721a530a      	bset	21258,#5
2945  001e 2004          	jra	L7121
2946  0020               L5121:
2947                     ; 706     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
2949  0020 721b530a      	bres	21258,#5
2950  0024               L7121:
2951                     ; 708 }
2954  0024 84            	pop	a
2955  0025 81            	ret	
2992                     ; 718 void TIM2_OC3PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
2992                     ; 719 {
2993                     .text:	section	.text,new
2994  0000               _TIM2_OC3PolarityConfig:
2996  0000 88            	push	a
2997       00000000      OFST:	set	0
3000                     ; 721   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
3002  0001 4d            	tnz	a
3003  0002 2712          	jreq	L655
3004  0004 a122          	cp	a,#34
3005  0006 270e          	jreq	L655
3006  0008 ae02d1        	ldw	x,#721
3007  000b 89            	pushw	x
3008  000c 5f            	clrw	x
3009  000d 89            	pushw	x
3010  000e ae0000        	ldw	x,#L702
3011  0011 cd0000        	call	_assert_failed
3013  0014 5b04          	addw	sp,#4
3014  0016               L655:
3015                     ; 724   if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
3017  0016 7b01          	ld	a,(OFST+1,sp)
3018  0018 2706          	jreq	L7321
3019                     ; 726     TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3P;
3021  001a 7212530b      	bset	21259,#1
3023  001e 2004          	jra	L1421
3024  0020               L7321:
3025                     ; 730     TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
3027  0020 7213530b      	bres	21259,#1
3028  0024               L1421:
3029                     ; 732 }
3032  0024 84            	pop	a
3033  0025 81            	ret	
3079                     ; 745 void TIM2_CCxCmd(TIM2_Channel_TypeDef TIM2_Channel, FunctionalState NewState)
3079                     ; 746 {
3080                     .text:	section	.text,new
3081  0000               _TIM2_CCxCmd:
3083  0000 89            	pushw	x
3084       00000000      OFST:	set	0
3087                     ; 748   assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
3089  0001 9e            	ld	a,xh
3090  0002 4d            	tnz	a
3091  0003 270e          	jreq	L075
3092  0005 9e            	ld	a,xh
3093  0006 4a            	dec	a
3094  0007 270a          	jreq	L075
3095  0009 9e            	ld	a,xh
3096  000a a102          	cp	a,#2
3097  000c 2705          	jreq	L075
3098  000e ae02ec        	ldw	x,#748
3099  0011 ad43          	call	LC008
3100  0013               L075:
3101                     ; 749   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3103  0013 7b02          	ld	a,(OFST+2,sp)
3104  0015 2708          	jreq	L006
3105  0017 4a            	dec	a
3106  0018 2705          	jreq	L006
3107  001a ae02ed        	ldw	x,#749
3108  001d ad37          	call	LC008
3109  001f               L006:
3110                     ; 751   if (TIM2_Channel == TIM2_CHANNEL_1)
3112  001f 7b01          	ld	a,(OFST+1,sp)
3113  0021 2610          	jrne	L5621
3114                     ; 754     if (NewState != DISABLE)
3116  0023 7b02          	ld	a,(OFST+2,sp)
3117  0025 2706          	jreq	L7621
3118                     ; 756       TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1E;
3120  0027 7210530a      	bset	21258,#0
3122  002b 2027          	jra	L3721
3123  002d               L7621:
3124                     ; 760       TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
3126  002d 7211530a      	bres	21258,#0
3127  0031 2021          	jra	L3721
3128  0033               L5621:
3129                     ; 764   else if (TIM2_Channel == TIM2_CHANNEL_2)
3131  0033 4a            	dec	a
3132  0034 2610          	jrne	L5721
3133                     ; 767     if (NewState != DISABLE)
3135  0036 7b02          	ld	a,(OFST+2,sp)
3136  0038 2706          	jreq	L7721
3137                     ; 769       TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC2E;
3139  003a 7218530a      	bset	21258,#4
3141  003e 2014          	jra	L3721
3142  0040               L7721:
3143                     ; 773       TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
3145  0040 7219530a      	bres	21258,#4
3146  0044 200e          	jra	L3721
3147  0046               L5721:
3148                     ; 779     if (NewState != DISABLE)
3150  0046 7b02          	ld	a,(OFST+2,sp)
3151  0048 2706          	jreq	L5031
3152                     ; 781       TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3E;
3154  004a 7210530b      	bset	21259,#0
3156  004e 2004          	jra	L3721
3157  0050               L5031:
3158                     ; 785       TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
3160  0050 7211530b      	bres	21259,#0
3161  0054               L3721:
3162                     ; 788 }
3165  0054 85            	popw	x
3166  0055 81            	ret	
3167  0056               LC008:
3168  0056 89            	pushw	x
3169  0057 5f            	clrw	x
3170  0058 89            	pushw	x
3171  0059 ae0000        	ldw	x,#L702
3172  005c cd0000        	call	_assert_failed
3174  005f 5b04          	addw	sp,#4
3175  0061 81            	ret	
3221                     ; 810 void TIM2_SelectOCxM(TIM2_Channel_TypeDef TIM2_Channel, TIM2_OCMode_TypeDef TIM2_OCMode)
3221                     ; 811 {
3222                     .text:	section	.text,new
3223  0000               _TIM2_SelectOCxM:
3225  0000 89            	pushw	x
3226       00000000      OFST:	set	0
3229                     ; 813   assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
3231  0001 9e            	ld	a,xh
3232  0002 4d            	tnz	a
3233  0003 270e          	jreq	L216
3234  0005 9e            	ld	a,xh
3235  0006 4a            	dec	a
3236  0007 270a          	jreq	L216
3237  0009 9e            	ld	a,xh
3238  000a a102          	cp	a,#2
3239  000c 2705          	jreq	L216
3240  000e ae032d        	ldw	x,#813
3241  0011 ad5c          	call	LC009
3242  0013               L216:
3243                     ; 814   assert_param(IS_TIM2_OCM_OK(TIM2_OCMode));
3245  0013 7b02          	ld	a,(OFST+2,sp)
3246  0015 2721          	jreq	L226
3247  0017 a110          	cp	a,#16
3248  0019 271d          	jreq	L226
3249  001b a120          	cp	a,#32
3250  001d 2719          	jreq	L226
3251  001f a130          	cp	a,#48
3252  0021 2715          	jreq	L226
3253  0023 a160          	cp	a,#96
3254  0025 2711          	jreq	L226
3255  0027 a170          	cp	a,#112
3256  0029 270d          	jreq	L226
3257  002b a150          	cp	a,#80
3258  002d 2709          	jreq	L226
3259  002f a140          	cp	a,#64
3260  0031 2705          	jreq	L226
3261  0033 ae032e        	ldw	x,#814
3262  0036 ad37          	call	LC009
3263  0038               L226:
3264                     ; 816   if (TIM2_Channel == TIM2_CHANNEL_1)
3266  0038 7b01          	ld	a,(OFST+1,sp)
3267  003a 2610          	jrne	L3331
3268                     ; 819     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
3270  003c 7211530a      	bres	21258,#0
3271                     ; 822     TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))
3271                     ; 823                             | (uint8_t)TIM2_OCMode);
3273  0040 c65307        	ld	a,21255
3274  0043 a48f          	and	a,#143
3275  0045 1a02          	or	a,(OFST+2,sp)
3276  0047 c75307        	ld	21255,a
3278  004a 2021          	jra	L5331
3279  004c               L3331:
3280                     ; 825   else if (TIM2_Channel == TIM2_CHANNEL_2)
3282  004c 4a            	dec	a
3283  004d 2610          	jrne	L7331
3284                     ; 828     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
3286  004f 7219530a      	bres	21258,#4
3287                     ; 831     TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))
3287                     ; 832                             | (uint8_t)TIM2_OCMode);
3289  0053 c65308        	ld	a,21256
3290  0056 a48f          	and	a,#143
3291  0058 1a02          	or	a,(OFST+2,sp)
3292  005a c75308        	ld	21256,a
3294  005d 200e          	jra	L5331
3295  005f               L7331:
3296                     ; 837     TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
3298  005f 7211530b      	bres	21259,#0
3299                     ; 840     TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
3299                     ; 841                             | (uint8_t)TIM2_OCMode);
3301  0063 c65309        	ld	a,21257
3302  0066 a48f          	and	a,#143
3303  0068 1a02          	or	a,(OFST+2,sp)
3304  006a c75309        	ld	21257,a
3305  006d               L5331:
3306                     ; 843 }
3309  006d 85            	popw	x
3310  006e 81            	ret	
3311  006f               LC009:
3312  006f 89            	pushw	x
3313  0070 5f            	clrw	x
3314  0071 89            	pushw	x
3315  0072 ae0000        	ldw	x,#L702
3316  0075 cd0000        	call	_assert_failed
3318  0078 5b04          	addw	sp,#4
3319  007a 81            	ret	
3353                     ; 851 void TIM2_SetCounter(uint16_t Counter)
3353                     ; 852 {
3354                     .text:	section	.text,new
3355  0000               _TIM2_SetCounter:
3359                     ; 854   TIM2->CNTRH = (uint8_t)(Counter >> 8);
3361  0000 9e            	ld	a,xh
3362  0001 c7530c        	ld	21260,a
3363                     ; 855   TIM2->CNTRL = (uint8_t)(Counter);
3365  0004 9f            	ld	a,xl
3366  0005 c7530d        	ld	21261,a
3367                     ; 856 }
3370  0008 81            	ret	
3404                     ; 864 void TIM2_SetAutoreload(uint16_t Autoreload)
3404                     ; 865 {
3405                     .text:	section	.text,new
3406  0000               _TIM2_SetAutoreload:
3410                     ; 867   TIM2->ARRH = (uint8_t)(Autoreload >> 8);
3412  0000 9e            	ld	a,xh
3413  0001 c7530f        	ld	21263,a
3414                     ; 868   TIM2->ARRL = (uint8_t)(Autoreload);
3416  0004 9f            	ld	a,xl
3417  0005 c75310        	ld	21264,a
3418                     ; 869 }
3421  0008 81            	ret	
3455                     ; 877 void TIM2_SetCompare1(uint16_t Compare1)
3455                     ; 878 {
3456                     .text:	section	.text,new
3457  0000               _TIM2_SetCompare1:
3461                     ; 880   TIM2->CCR1H = (uint8_t)(Compare1 >> 8);
3463  0000 9e            	ld	a,xh
3464  0001 c75311        	ld	21265,a
3465                     ; 881   TIM2->CCR1L = (uint8_t)(Compare1);
3467  0004 9f            	ld	a,xl
3468  0005 c75312        	ld	21266,a
3469                     ; 882 }
3472  0008 81            	ret	
3506                     ; 890 void TIM2_SetCompare2(uint16_t Compare2)
3506                     ; 891 {
3507                     .text:	section	.text,new
3508  0000               _TIM2_SetCompare2:
3512                     ; 893   TIM2->CCR2H = (uint8_t)(Compare2 >> 8);
3514  0000 9e            	ld	a,xh
3515  0001 c75313        	ld	21267,a
3516                     ; 894   TIM2->CCR2L = (uint8_t)(Compare2);
3518  0004 9f            	ld	a,xl
3519  0005 c75314        	ld	21268,a
3520                     ; 895 }
3523  0008 81            	ret	
3557                     ; 903 void TIM2_SetCompare3(uint16_t Compare3)
3557                     ; 904 {
3558                     .text:	section	.text,new
3559  0000               _TIM2_SetCompare3:
3563                     ; 906   TIM2->CCR3H = (uint8_t)(Compare3 >> 8);
3565  0000 9e            	ld	a,xh
3566  0001 c75315        	ld	21269,a
3567                     ; 907   TIM2->CCR3L = (uint8_t)(Compare3);
3569  0004 9f            	ld	a,xl
3570  0005 c75316        	ld	21270,a
3571                     ; 908 }
3574  0008 81            	ret	
3611                     ; 920 void TIM2_SetIC1Prescaler(TIM2_ICPSC_TypeDef TIM2_IC1Prescaler)
3611                     ; 921 {
3612                     .text:	section	.text,new
3613  0000               _TIM2_SetIC1Prescaler:
3615  0000 88            	push	a
3616       00000000      OFST:	set	0
3619                     ; 923   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC1Prescaler));
3621  0001 4d            	tnz	a
3622  0002 271a          	jreq	L646
3623  0004 a104          	cp	a,#4
3624  0006 2716          	jreq	L646
3625  0008 a108          	cp	a,#8
3626  000a 2712          	jreq	L646
3627  000c a10c          	cp	a,#12
3628  000e 270e          	jreq	L646
3629  0010 ae039b        	ldw	x,#923
3630  0013 89            	pushw	x
3631  0014 5f            	clrw	x
3632  0015 89            	pushw	x
3633  0016 ae0000        	ldw	x,#L702
3634  0019 cd0000        	call	_assert_failed
3636  001c 5b04          	addw	sp,#4
3637  001e               L646:
3638                     ; 926   TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_ICxPSC))
3638                     ; 927                           | (uint8_t)TIM2_IC1Prescaler);
3640  001e c65307        	ld	a,21255
3641  0021 a4f3          	and	a,#243
3642  0023 1a01          	or	a,(OFST+1,sp)
3643  0025 c75307        	ld	21255,a
3644                     ; 928 }
3647  0028 84            	pop	a
3648  0029 81            	ret	
3685                     ; 940 void TIM2_SetIC2Prescaler(TIM2_ICPSC_TypeDef TIM2_IC2Prescaler)
3685                     ; 941 {
3686                     .text:	section	.text,new
3687  0000               _TIM2_SetIC2Prescaler:
3689  0000 88            	push	a
3690       00000000      OFST:	set	0
3693                     ; 943   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC2Prescaler));
3695  0001 4d            	tnz	a
3696  0002 271a          	jreq	L066
3697  0004 a104          	cp	a,#4
3698  0006 2716          	jreq	L066
3699  0008 a108          	cp	a,#8
3700  000a 2712          	jreq	L066
3701  000c a10c          	cp	a,#12
3702  000e 270e          	jreq	L066
3703  0010 ae03af        	ldw	x,#943
3704  0013 89            	pushw	x
3705  0014 5f            	clrw	x
3706  0015 89            	pushw	x
3707  0016 ae0000        	ldw	x,#L702
3708  0019 cd0000        	call	_assert_failed
3710  001c 5b04          	addw	sp,#4
3711  001e               L066:
3712                     ; 946   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_ICxPSC))
3712                     ; 947                           | (uint8_t)TIM2_IC2Prescaler);
3714  001e c65308        	ld	a,21256
3715  0021 a4f3          	and	a,#243
3716  0023 1a01          	or	a,(OFST+1,sp)
3717  0025 c75308        	ld	21256,a
3718                     ; 948 }
3721  0028 84            	pop	a
3722  0029 81            	ret	
3759                     ; 960 void TIM2_SetIC3Prescaler(TIM2_ICPSC_TypeDef TIM2_IC3Prescaler)
3759                     ; 961 {
3760                     .text:	section	.text,new
3761  0000               _TIM2_SetIC3Prescaler:
3763  0000 88            	push	a
3764       00000000      OFST:	set	0
3767                     ; 964   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC3Prescaler));
3769  0001 4d            	tnz	a
3770  0002 271a          	jreq	L276
3771  0004 a104          	cp	a,#4
3772  0006 2716          	jreq	L276
3773  0008 a108          	cp	a,#8
3774  000a 2712          	jreq	L276
3775  000c a10c          	cp	a,#12
3776  000e 270e          	jreq	L276
3777  0010 ae03c4        	ldw	x,#964
3778  0013 89            	pushw	x
3779  0014 5f            	clrw	x
3780  0015 89            	pushw	x
3781  0016 ae0000        	ldw	x,#L702
3782  0019 cd0000        	call	_assert_failed
3784  001c 5b04          	addw	sp,#4
3785  001e               L276:
3786                     ; 966   TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_ICxPSC))
3786                     ; 967                           | (uint8_t)TIM2_IC3Prescaler);
3788  001e c65309        	ld	a,21257
3789  0021 a4f3          	and	a,#243
3790  0023 1a01          	or	a,(OFST+1,sp)
3791  0025 c75309        	ld	21257,a
3792                     ; 968 }
3795  0028 84            	pop	a
3796  0029 81            	ret	
3848                     ; 975 uint16_t TIM2_GetCapture1(void)
3848                     ; 976 {
3849                     .text:	section	.text,new
3850  0000               _TIM2_GetCapture1:
3852  0000 5204          	subw	sp,#4
3853       00000004      OFST:	set	4
3856                     ; 978   uint16_t tmpccr1 = 0;
3858                     ; 979   uint8_t tmpccr1l=0, tmpccr1h=0;
3862                     ; 981   tmpccr1h = TIM2->CCR1H;
3864  0002 c65311        	ld	a,21265
3865  0005 6b02          	ld	(OFST-2,sp),a
3867                     ; 982   tmpccr1l = TIM2->CCR1L;
3869  0007 c65312        	ld	a,21266
3870  000a 6b01          	ld	(OFST-3,sp),a
3872                     ; 984   tmpccr1 = (uint16_t)(tmpccr1l);
3874  000c 5f            	clrw	x
3875  000d 97            	ld	xl,a
3876  000e 1f03          	ldw	(OFST-1,sp),x
3878                     ; 985   tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
3880  0010 5f            	clrw	x
3881  0011 7b02          	ld	a,(OFST-2,sp)
3882  0013 97            	ld	xl,a
3883  0014 7b04          	ld	a,(OFST+0,sp)
3884  0016 01            	rrwa	x,a
3885  0017 1a03          	or	a,(OFST-1,sp)
3886  0019 01            	rrwa	x,a
3888                     ; 987   return (uint16_t)tmpccr1;
3892  001a 5b04          	addw	sp,#4
3893  001c 81            	ret	
3945                     ; 995 uint16_t TIM2_GetCapture2(void)
3945                     ; 996 {
3946                     .text:	section	.text,new
3947  0000               _TIM2_GetCapture2:
3949  0000 5204          	subw	sp,#4
3950       00000004      OFST:	set	4
3953                     ; 998   uint16_t tmpccr2 = 0;
3955                     ; 999   uint8_t tmpccr2l=0, tmpccr2h=0;
3959                     ; 1001   tmpccr2h = TIM2->CCR2H;
3961  0002 c65313        	ld	a,21267
3962  0005 6b02          	ld	(OFST-2,sp),a
3964                     ; 1002   tmpccr2l = TIM2->CCR2L;
3966  0007 c65314        	ld	a,21268
3967  000a 6b01          	ld	(OFST-3,sp),a
3969                     ; 1004   tmpccr2 = (uint16_t)(tmpccr2l);
3971  000c 5f            	clrw	x
3972  000d 97            	ld	xl,a
3973  000e 1f03          	ldw	(OFST-1,sp),x
3975                     ; 1005   tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
3977  0010 5f            	clrw	x
3978  0011 7b02          	ld	a,(OFST-2,sp)
3979  0013 97            	ld	xl,a
3980  0014 7b04          	ld	a,(OFST+0,sp)
3981  0016 01            	rrwa	x,a
3982  0017 1a03          	or	a,(OFST-1,sp)
3983  0019 01            	rrwa	x,a
3985                     ; 1007   return (uint16_t)tmpccr2;
3989  001a 5b04          	addw	sp,#4
3990  001c 81            	ret	
4042                     ; 1015 uint16_t TIM2_GetCapture3(void)
4042                     ; 1016 {
4043                     .text:	section	.text,new
4044  0000               _TIM2_GetCapture3:
4046  0000 5204          	subw	sp,#4
4047       00000004      OFST:	set	4
4050                     ; 1018   uint16_t tmpccr3 = 0;
4052                     ; 1019   uint8_t tmpccr3l=0, tmpccr3h=0;
4056                     ; 1021   tmpccr3h = TIM2->CCR3H;
4058  0002 c65315        	ld	a,21269
4059  0005 6b02          	ld	(OFST-2,sp),a
4061                     ; 1022   tmpccr3l = TIM2->CCR3L;
4063  0007 c65316        	ld	a,21270
4064  000a 6b01          	ld	(OFST-3,sp),a
4066                     ; 1024   tmpccr3 = (uint16_t)(tmpccr3l);
4068  000c 5f            	clrw	x
4069  000d 97            	ld	xl,a
4070  000e 1f03          	ldw	(OFST-1,sp),x
4072                     ; 1025   tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
4074  0010 5f            	clrw	x
4075  0011 7b02          	ld	a,(OFST-2,sp)
4076  0013 97            	ld	xl,a
4077  0014 7b04          	ld	a,(OFST+0,sp)
4078  0016 01            	rrwa	x,a
4079  0017 1a03          	or	a,(OFST-1,sp)
4080  0019 01            	rrwa	x,a
4082                     ; 1027   return (uint16_t)tmpccr3;
4086  001a 5b04          	addw	sp,#4
4087  001c 81            	ret	
4121                     ; 1035 uint16_t TIM2_GetCounter(void)
4121                     ; 1036 {
4122                     .text:	section	.text,new
4123  0000               _TIM2_GetCounter:
4125  0000 89            	pushw	x
4126       00000002      OFST:	set	2
4129                     ; 1037   uint16_t tmpcntr = 0;
4131                     ; 1039   tmpcntr =  ((uint16_t)TIM2->CNTRH << 8);
4133  0001 c6530c        	ld	a,21260
4134  0004 97            	ld	xl,a
4135  0005 4f            	clr	a
4136  0006 02            	rlwa	x,a
4137  0007 1f01          	ldw	(OFST-1,sp),x
4139                     ; 1041   return (uint16_t)( tmpcntr| (uint16_t)(TIM2->CNTRL));
4141  0009 c6530d        	ld	a,21261
4142  000c 5f            	clrw	x
4143  000d 97            	ld	xl,a
4144  000e 01            	rrwa	x,a
4145  000f 1a02          	or	a,(OFST+0,sp)
4146  0011 01            	rrwa	x,a
4147  0012 1a01          	or	a,(OFST-1,sp)
4148  0014 01            	rrwa	x,a
4151  0015 5b02          	addw	sp,#2
4152  0017 81            	ret	
4176                     ; 1049 TIM2_Prescaler_TypeDef TIM2_GetPrescaler(void)
4176                     ; 1050 {
4177                     .text:	section	.text,new
4178  0000               _TIM2_GetPrescaler:
4182                     ; 1052   return (TIM2_Prescaler_TypeDef)(TIM2->PSCR);
4184  0000 c6530e        	ld	a,21262
4187  0003 81            	ret	
4327                     ; 1068 FlagStatus TIM2_GetFlagStatus(TIM2_FLAG_TypeDef TIM2_FLAG)
4327                     ; 1069 {
4328                     .text:	section	.text,new
4329  0000               _TIM2_GetFlagStatus:
4331  0000 89            	pushw	x
4332  0001 89            	pushw	x
4333       00000002      OFST:	set	2
4336                     ; 1070   FlagStatus bitstatus = RESET;
4338                     ; 1071   uint8_t tim2_flag_l = 0, tim2_flag_h = 0;
4342                     ; 1074   assert_param(IS_TIM2_GET_FLAG_OK(TIM2_FLAG));
4344  0002 a30001        	cpw	x,#1
4345  0005 272c          	jreq	L617
4346  0007 a30002        	cpw	x,#2
4347  000a 2727          	jreq	L617
4348  000c a30004        	cpw	x,#4
4349  000f 2722          	jreq	L617
4350  0011 a30008        	cpw	x,#8
4351  0014 271d          	jreq	L617
4352  0016 a30200        	cpw	x,#512
4353  0019 2718          	jreq	L617
4354  001b a30400        	cpw	x,#1024
4355  001e 2713          	jreq	L617
4356  0020 a30800        	cpw	x,#2048
4357  0023 270e          	jreq	L617
4358  0025 ae0432        	ldw	x,#1074
4359  0028 89            	pushw	x
4360  0029 5f            	clrw	x
4361  002a 89            	pushw	x
4362  002b ae0000        	ldw	x,#L702
4363  002e cd0000        	call	_assert_failed
4365  0031 5b04          	addw	sp,#4
4366  0033               L617:
4367                     ; 1076   tim2_flag_l = (uint8_t)(TIM2->SR1 & (uint8_t)TIM2_FLAG);
4369  0033 c65304        	ld	a,21252
4370  0036 1404          	and	a,(OFST+2,sp)
4371  0038 6b01          	ld	(OFST-1,sp),a
4373                     ; 1077   tim2_flag_h = (uint8_t)((uint16_t)TIM2_FLAG >> 8);
4375  003a 7b03          	ld	a,(OFST+1,sp)
4376  003c 6b02          	ld	(OFST+0,sp),a
4378                     ; 1079   if ((tim2_flag_l | (uint8_t)(TIM2->SR2 & tim2_flag_h)) != (uint8_t)RESET )
4380  003e c45305        	and	a,21253
4381  0041 1a01          	or	a,(OFST-1,sp)
4382  0043 2702          	jreq	L7371
4383                     ; 1081     bitstatus = SET;
4385  0045 a601          	ld	a,#1
4388  0047               L7371:
4389                     ; 1085     bitstatus = RESET;
4392                     ; 1087   return (FlagStatus)bitstatus;
4396  0047 5b04          	addw	sp,#4
4397  0049 81            	ret	
4433                     ; 1103 void TIM2_ClearFlag(TIM2_FLAG_TypeDef TIM2_FLAG)
4433                     ; 1104 {
4434                     .text:	section	.text,new
4435  0000               _TIM2_ClearFlag:
4437  0000 89            	pushw	x
4438       00000000      OFST:	set	0
4441                     ; 1106   assert_param(IS_TIM2_CLEAR_FLAG_OK(TIM2_FLAG));
4443  0001 01            	rrwa	x,a
4444  0002 a4f0          	and	a,#240
4445  0004 01            	rrwa	x,a
4446  0005 a4f1          	and	a,#241
4447  0007 01            	rrwa	x,a
4448  0008 5d            	tnzw	x
4449  0009 2604          	jrne	L427
4450  000b 1e01          	ldw	x,(OFST+1,sp)
4451  000d 260e          	jrne	L627
4452  000f               L427:
4453  000f ae0452        	ldw	x,#1106
4454  0012 89            	pushw	x
4455  0013 5f            	clrw	x
4456  0014 89            	pushw	x
4457  0015 ae0000        	ldw	x,#L702
4458  0018 cd0000        	call	_assert_failed
4460  001b 5b04          	addw	sp,#4
4461  001d               L627:
4462                     ; 1109   TIM2->SR1 = (uint8_t)(~((uint8_t)(TIM2_FLAG)));
4464  001d 7b02          	ld	a,(OFST+2,sp)
4465  001f 43            	cpl	a
4466  0020 c75304        	ld	21252,a
4467                     ; 1110   TIM2->SR2 = (uint8_t)(~((uint8_t)((uint8_t)TIM2_FLAG >> 8)));
4469  0023 35ff5305      	mov	21253,#255
4470                     ; 1111 }
4473  0027 85            	popw	x
4474  0028 81            	ret	
4539                     ; 1123 ITStatus TIM2_GetITStatus(TIM2_IT_TypeDef TIM2_IT)
4539                     ; 1124 {
4540                     .text:	section	.text,new
4541  0000               _TIM2_GetITStatus:
4543  0000 88            	push	a
4544  0001 89            	pushw	x
4545       00000002      OFST:	set	2
4548                     ; 1125   ITStatus bitstatus = RESET;
4550                     ; 1126   uint8_t TIM2_itStatus = 0, TIM2_itEnable = 0;
4554                     ; 1129   assert_param(IS_TIM2_GET_IT_OK(TIM2_IT));
4556  0002 a101          	cp	a,#1
4557  0004 271a          	jreq	L047
4558  0006 a102          	cp	a,#2
4559  0008 2716          	jreq	L047
4560  000a a104          	cp	a,#4
4561  000c 2712          	jreq	L047
4562  000e a108          	cp	a,#8
4563  0010 270e          	jreq	L047
4564  0012 ae0469        	ldw	x,#1129
4565  0015 89            	pushw	x
4566  0016 5f            	clrw	x
4567  0017 89            	pushw	x
4568  0018 ae0000        	ldw	x,#L702
4569  001b cd0000        	call	_assert_failed
4571  001e 5b04          	addw	sp,#4
4572  0020               L047:
4573                     ; 1131   TIM2_itStatus = (uint8_t)(TIM2->SR1 & TIM2_IT);
4575  0020 c65304        	ld	a,21252
4576  0023 1403          	and	a,(OFST+1,sp)
4577  0025 6b01          	ld	(OFST-1,sp),a
4579                     ; 1133   TIM2_itEnable = (uint8_t)(TIM2->IER & TIM2_IT);
4581  0027 c65303        	ld	a,21251
4582  002a 1403          	and	a,(OFST+1,sp)
4583  002c 6b02          	ld	(OFST+0,sp),a
4585                     ; 1135   if ((TIM2_itStatus != (uint8_t)RESET ) && (TIM2_itEnable != (uint8_t)RESET ))
4587  002e 7b01          	ld	a,(OFST-1,sp)
4588  0030 2708          	jreq	L3102
4590  0032 7b02          	ld	a,(OFST+0,sp)
4591  0034 2704          	jreq	L3102
4592                     ; 1137     bitstatus = SET;
4594  0036 a601          	ld	a,#1
4597  0038 2001          	jra	L5102
4598  003a               L3102:
4599                     ; 1141     bitstatus = RESET;
4601  003a 4f            	clr	a
4603  003b               L5102:
4604                     ; 1143   return (ITStatus)(bitstatus);
4608  003b 5b03          	addw	sp,#3
4609  003d 81            	ret	
4646                     ; 1156 void TIM2_ClearITPendingBit(TIM2_IT_TypeDef TIM2_IT)
4646                     ; 1157 {
4647                     .text:	section	.text,new
4648  0000               _TIM2_ClearITPendingBit:
4650  0000 88            	push	a
4651       00000000      OFST:	set	0
4654                     ; 1159   assert_param(IS_TIM2_IT_OK(TIM2_IT));
4656  0001 4d            	tnz	a
4657  0002 2704          	jreq	L647
4658  0004 a110          	cp	a,#16
4659  0006 250e          	jrult	L057
4660  0008               L647:
4661  0008 ae0487        	ldw	x,#1159
4662  000b 89            	pushw	x
4663  000c 5f            	clrw	x
4664  000d 89            	pushw	x
4665  000e ae0000        	ldw	x,#L702
4666  0011 cd0000        	call	_assert_failed
4668  0014 5b04          	addw	sp,#4
4669  0016               L057:
4670                     ; 1162   TIM2->SR1 = (uint8_t)(~TIM2_IT);
4672  0016 7b01          	ld	a,(OFST+1,sp)
4673  0018 43            	cpl	a
4674  0019 c75304        	ld	21252,a
4675                     ; 1163 }
4678  001c 84            	pop	a
4679  001d 81            	ret	
4731                     ; 1181 static void TI1_Config(uint8_t TIM2_ICPolarity,
4731                     ; 1182                        uint8_t TIM2_ICSelection,
4731                     ; 1183                        uint8_t TIM2_ICFilter)
4731                     ; 1184 {
4732                     .text:	section	.text,new
4733  0000               L3_TI1_Config:
4735  0000 89            	pushw	x
4736  0001 88            	push	a
4737       00000001      OFST:	set	1
4740                     ; 1186   TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
4742  0002 7211530a      	bres	21258,#0
4743                     ; 1189   TIM2->CCMR1  = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF )))
4743                     ; 1190                            | (uint8_t)(((TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
4745  0006 7b06          	ld	a,(OFST+5,sp)
4746  0008 97            	ld	xl,a
4747  0009 a610          	ld	a,#16
4748  000b 42            	mul	x,a
4749  000c 9f            	ld	a,xl
4750  000d 1a03          	or	a,(OFST+2,sp)
4751  000f 6b01          	ld	(OFST+0,sp),a
4753  0011 c65307        	ld	a,21255
4754  0014 a40c          	and	a,#12
4755  0016 1a01          	or	a,(OFST+0,sp)
4756  0018 c75307        	ld	21255,a
4757                     ; 1193   if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
4759  001b 7b02          	ld	a,(OFST+1,sp)
4760  001d 2706          	jreq	L3602
4761                     ; 1195     TIM2->CCER1 |= TIM2_CCER1_CC1P;
4763  001f 7212530a      	bset	21258,#1
4765  0023 2004          	jra	L5602
4766  0025               L3602:
4767                     ; 1199     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
4769  0025 7213530a      	bres	21258,#1
4770  0029               L5602:
4771                     ; 1202   TIM2->CCER1 |= TIM2_CCER1_CC1E;
4773  0029 7210530a      	bset	21258,#0
4774                     ; 1203 }
4777  002d 5b03          	addw	sp,#3
4778  002f 81            	ret	
4830                     ; 1221 static void TI2_Config(uint8_t TIM2_ICPolarity,
4830                     ; 1222                        uint8_t TIM2_ICSelection,
4830                     ; 1223                        uint8_t TIM2_ICFilter)
4830                     ; 1224 {
4831                     .text:	section	.text,new
4832  0000               L5_TI2_Config:
4834  0000 89            	pushw	x
4835  0001 88            	push	a
4836       00000001      OFST:	set	1
4839                     ; 1226   TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
4841  0002 7219530a      	bres	21258,#4
4842                     ; 1229   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF ))) 
4842                     ; 1230                           | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
4844  0006 7b06          	ld	a,(OFST+5,sp)
4845  0008 97            	ld	xl,a
4846  0009 a610          	ld	a,#16
4847  000b 42            	mul	x,a
4848  000c 9f            	ld	a,xl
4849  000d 1a03          	or	a,(OFST+2,sp)
4850  000f 6b01          	ld	(OFST+0,sp),a
4852  0011 c65308        	ld	a,21256
4853  0014 a40c          	and	a,#12
4854  0016 1a01          	or	a,(OFST+0,sp)
4855  0018 c75308        	ld	21256,a
4856                     ; 1234   if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
4858  001b 7b02          	ld	a,(OFST+1,sp)
4859  001d 2706          	jreq	L5112
4860                     ; 1236     TIM2->CCER1 |= TIM2_CCER1_CC2P;
4862  001f 721a530a      	bset	21258,#5
4864  0023 2004          	jra	L7112
4865  0025               L5112:
4866                     ; 1240     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
4868  0025 721b530a      	bres	21258,#5
4869  0029               L7112:
4870                     ; 1244   TIM2->CCER1 |= TIM2_CCER1_CC2E;
4872  0029 7218530a      	bset	21258,#4
4873                     ; 1245 }
4876  002d 5b03          	addw	sp,#3
4877  002f 81            	ret	
4929                     ; 1261 static void TI3_Config(uint8_t TIM2_ICPolarity, uint8_t TIM2_ICSelection,
4929                     ; 1262                        uint8_t TIM2_ICFilter)
4929                     ; 1263 {
4930                     .text:	section	.text,new
4931  0000               L7_TI3_Config:
4933  0000 89            	pushw	x
4934  0001 88            	push	a
4935       00000001      OFST:	set	1
4938                     ; 1265   TIM2->CCER2 &=  (uint8_t)(~TIM2_CCER2_CC3E);
4940  0002 7211530b      	bres	21259,#0
4941                     ; 1268   TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF))) 
4941                     ; 1269                           | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
4943  0006 7b06          	ld	a,(OFST+5,sp)
4944  0008 97            	ld	xl,a
4945  0009 a610          	ld	a,#16
4946  000b 42            	mul	x,a
4947  000c 9f            	ld	a,xl
4948  000d 1a03          	or	a,(OFST+2,sp)
4949  000f 6b01          	ld	(OFST+0,sp),a
4951  0011 c65309        	ld	a,21257
4952  0014 a40c          	and	a,#12
4953  0016 1a01          	or	a,(OFST+0,sp)
4954  0018 c75309        	ld	21257,a
4955                     ; 1273   if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
4957  001b 7b02          	ld	a,(OFST+1,sp)
4958  001d 2706          	jreq	L7412
4959                     ; 1275     TIM2->CCER2 |= TIM2_CCER2_CC3P;
4961  001f 7212530b      	bset	21259,#1
4963  0023 2004          	jra	L1512
4964  0025               L7412:
4965                     ; 1279     TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
4967  0025 7213530b      	bres	21259,#1
4968  0029               L1512:
4969                     ; 1282   TIM2->CCER2 |= TIM2_CCER2_CC3E;
4971  0029 7210530b      	bset	21259,#0
4972                     ; 1283 }
4975  002d 5b03          	addw	sp,#3
4976  002f 81            	ret	
4989                     	xdef	_TIM2_ClearITPendingBit
4990                     	xdef	_TIM2_GetITStatus
4991                     	xdef	_TIM2_ClearFlag
4992                     	xdef	_TIM2_GetFlagStatus
4993                     	xdef	_TIM2_GetPrescaler
4994                     	xdef	_TIM2_GetCounter
4995                     	xdef	_TIM2_GetCapture3
4996                     	xdef	_TIM2_GetCapture2
4997                     	xdef	_TIM2_GetCapture1
4998                     	xdef	_TIM2_SetIC3Prescaler
4999                     	xdef	_TIM2_SetIC2Prescaler
5000                     	xdef	_TIM2_SetIC1Prescaler
5001                     	xdef	_TIM2_SetCompare3
5002                     	xdef	_TIM2_SetCompare2
5003                     	xdef	_TIM2_SetCompare1
5004                     	xdef	_TIM2_SetAutoreload
5005                     	xdef	_TIM2_SetCounter
5006                     	xdef	_TIM2_SelectOCxM
5007                     	xdef	_TIM2_CCxCmd
5008                     	xdef	_TIM2_OC3PolarityConfig
5009                     	xdef	_TIM2_OC2PolarityConfig
5010                     	xdef	_TIM2_OC1PolarityConfig
5011                     	xdef	_TIM2_GenerateEvent
5012                     	xdef	_TIM2_OC3PreloadConfig
5013                     	xdef	_TIM2_OC2PreloadConfig
5014                     	xdef	_TIM2_OC1PreloadConfig
5015                     	xdef	_TIM2_ARRPreloadConfig
5016                     	xdef	_TIM2_ForcedOC3Config
5017                     	xdef	_TIM2_ForcedOC2Config
5018                     	xdef	_TIM2_ForcedOC1Config
5019                     	xdef	_TIM2_PrescalerConfig
5020                     	xdef	_TIM2_SelectOnePulseMode
5021                     	xdef	_TIM2_UpdateRequestConfig
5022                     	xdef	_TIM2_UpdateDisableConfig
5023                     	xdef	_TIM2_ITConfig
5024                     	xdef	_TIM2_Cmd
5025                     	xdef	_TIM2_PWMIConfig
5026                     	xdef	_TIM2_ICInit
5027                     	xdef	_TIM2_OC3Init
5028                     	xdef	_TIM2_OC2Init
5029                     	xdef	_TIM2_OC1Init
5030                     	xdef	_TIM2_TimeBaseInit
5031                     	xdef	_TIM2_DeInit
5032                     	xref	_assert_failed
5033                     .const:	section	.text
5034  0000               L702:
5035  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
5036  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
5037  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
5038  0036 5f74696d322e  	dc.b	"_tim2.c",0
5058                     	end
