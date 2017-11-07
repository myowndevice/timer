   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.5 - 29 Dec 2015
   3                     ; Generator (Limited) V4.4.4 - 27 Jan 2016
   4                     ; Optimizer V4.4.4 - 27 Jan 2016
  49                     ; 58 void TIM1_DeInit(void)
  49                     ; 59 {
  51                     .text:	section	.text,new
  52  0000               _TIM1_DeInit:
  56                     ; 60   TIM1->CR1  = TIM1_CR1_RESET_VALUE;
  58  0000 725f5250      	clr	21072
  59                     ; 61   TIM1->CR2  = TIM1_CR2_RESET_VALUE;
  61  0004 725f5251      	clr	21073
  62                     ; 62   TIM1->SMCR = TIM1_SMCR_RESET_VALUE;
  64  0008 725f5252      	clr	21074
  65                     ; 63   TIM1->ETR  = TIM1_ETR_RESET_VALUE;
  67  000c 725f5253      	clr	21075
  68                     ; 64   TIM1->IER  = TIM1_IER_RESET_VALUE;
  70  0010 725f5254      	clr	21076
  71                     ; 65   TIM1->SR2  = TIM1_SR2_RESET_VALUE;
  73  0014 725f5256      	clr	21078
  74                     ; 67   TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  76  0018 725f525c      	clr	21084
  77                     ; 68   TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  79  001c 725f525d      	clr	21085
  80                     ; 70   TIM1->CCMR1 = 0x01;
  82  0020 35015258      	mov	21080,#1
  83                     ; 71   TIM1->CCMR2 = 0x01;
  85  0024 35015259      	mov	21081,#1
  86                     ; 72   TIM1->CCMR3 = 0x01;
  88  0028 3501525a      	mov	21082,#1
  89                     ; 73   TIM1->CCMR4 = 0x01;
  91  002c 3501525b      	mov	21083,#1
  92                     ; 75   TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  94  0030 725f525c      	clr	21084
  95                     ; 76   TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  97  0034 725f525d      	clr	21085
  98                     ; 77   TIM1->CCMR1 = TIM1_CCMR1_RESET_VALUE;
 100  0038 725f5258      	clr	21080
 101                     ; 78   TIM1->CCMR2 = TIM1_CCMR2_RESET_VALUE;
 103  003c 725f5259      	clr	21081
 104                     ; 79   TIM1->CCMR3 = TIM1_CCMR3_RESET_VALUE;
 106  0040 725f525a      	clr	21082
 107                     ; 80   TIM1->CCMR4 = TIM1_CCMR4_RESET_VALUE;
 109  0044 725f525b      	clr	21083
 110                     ; 81   TIM1->CNTRH = TIM1_CNTRH_RESET_VALUE;
 112  0048 725f525e      	clr	21086
 113                     ; 82   TIM1->CNTRL = TIM1_CNTRL_RESET_VALUE;
 115  004c 725f525f      	clr	21087
 116                     ; 83   TIM1->PSCRH = TIM1_PSCRH_RESET_VALUE;
 118  0050 725f5260      	clr	21088
 119                     ; 84   TIM1->PSCRL = TIM1_PSCRL_RESET_VALUE;
 121  0054 725f5261      	clr	21089
 122                     ; 85   TIM1->ARRH  = TIM1_ARRH_RESET_VALUE;
 124  0058 35ff5262      	mov	21090,#255
 125                     ; 86   TIM1->ARRL  = TIM1_ARRL_RESET_VALUE;
 127  005c 35ff5263      	mov	21091,#255
 128                     ; 87   TIM1->CCR1H = TIM1_CCR1H_RESET_VALUE;
 130  0060 725f5265      	clr	21093
 131                     ; 88   TIM1->CCR1L = TIM1_CCR1L_RESET_VALUE;
 133  0064 725f5266      	clr	21094
 134                     ; 89   TIM1->CCR2H = TIM1_CCR2H_RESET_VALUE;
 136  0068 725f5267      	clr	21095
 137                     ; 90   TIM1->CCR2L = TIM1_CCR2L_RESET_VALUE;
 139  006c 725f5268      	clr	21096
 140                     ; 91   TIM1->CCR3H = TIM1_CCR3H_RESET_VALUE;
 142  0070 725f5269      	clr	21097
 143                     ; 92   TIM1->CCR3L = TIM1_CCR3L_RESET_VALUE;
 145  0074 725f526a      	clr	21098
 146                     ; 93   TIM1->CCR4H = TIM1_CCR4H_RESET_VALUE;
 148  0078 725f526b      	clr	21099
 149                     ; 94   TIM1->CCR4L = TIM1_CCR4L_RESET_VALUE;
 151  007c 725f526c      	clr	21100
 152                     ; 95   TIM1->OISR  = TIM1_OISR_RESET_VALUE;
 154  0080 725f526f      	clr	21103
 155                     ; 96   TIM1->EGR   = 0x01; /* TIM1_EGR_UG */
 157  0084 35015257      	mov	21079,#1
 158                     ; 97   TIM1->DTR   = TIM1_DTR_RESET_VALUE;
 160  0088 725f526e      	clr	21102
 161                     ; 98   TIM1->BKR   = TIM1_BKR_RESET_VALUE;
 163  008c 725f526d      	clr	21101
 164                     ; 99   TIM1->RCR   = TIM1_RCR_RESET_VALUE;
 166  0090 725f5264      	clr	21092
 167                     ; 100   TIM1->SR1   = TIM1_SR1_RESET_VALUE;
 169  0094 725f5255      	clr	21077
 170                     ; 101 }
 173  0098 81            	ret	
 283                     ; 111 void TIM1_TimeBaseInit(uint16_t TIM1_Prescaler,
 283                     ; 112                        TIM1_CounterMode_TypeDef TIM1_CounterMode,
 283                     ; 113                        uint16_t TIM1_Period,
 283                     ; 114                        uint8_t TIM1_RepetitionCounter)
 283                     ; 115 {
 284                     .text:	section	.text,new
 285  0000               _TIM1_TimeBaseInit:
 287  0000 89            	pushw	x
 288       00000000      OFST:	set	0
 291                     ; 117   assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
 293  0001 7b05          	ld	a,(OFST+5,sp)
 294  0003 271e          	jreq	L41
 295  0005 a110          	cp	a,#16
 296  0007 271a          	jreq	L41
 297  0009 a120          	cp	a,#32
 298  000b 2716          	jreq	L41
 299  000d a140          	cp	a,#64
 300  000f 2712          	jreq	L41
 301  0011 a160          	cp	a,#96
 302  0013 270e          	jreq	L41
 303  0015 ae0075        	ldw	x,#117
 304  0018 89            	pushw	x
 305  0019 5f            	clrw	x
 306  001a 89            	pushw	x
 307  001b ae0000        	ldw	x,#L101
 308  001e cd0000        	call	_assert_failed
 310  0021 5b04          	addw	sp,#4
 311  0023               L41:
 312                     ; 120   TIM1->ARRH = (uint8_t)(TIM1_Period >> 8);
 314  0023 7b06          	ld	a,(OFST+6,sp)
 315  0025 c75262        	ld	21090,a
 316                     ; 121   TIM1->ARRL = (uint8_t)(TIM1_Period);
 318  0028 7b07          	ld	a,(OFST+7,sp)
 319  002a c75263        	ld	21091,a
 320                     ; 124   TIM1->PSCRH = (uint8_t)(TIM1_Prescaler >> 8);
 322  002d 7b01          	ld	a,(OFST+1,sp)
 323  002f c75260        	ld	21088,a
 324                     ; 125   TIM1->PSCRL = (uint8_t)(TIM1_Prescaler);
 326  0032 7b02          	ld	a,(OFST+2,sp)
 327  0034 c75261        	ld	21089,a
 328                     ; 128   TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)(~(TIM1_CR1_CMS | TIM1_CR1_DIR)))
 328                     ; 129                         | (uint8_t)(TIM1_CounterMode));
 330  0037 c65250        	ld	a,21072
 331  003a a48f          	and	a,#143
 332  003c 1a05          	or	a,(OFST+5,sp)
 333  003e c75250        	ld	21072,a
 334                     ; 132   TIM1->RCR = TIM1_RepetitionCounter;
 336  0041 7b08          	ld	a,(OFST+8,sp)
 337  0043 c75264        	ld	21092,a
 338                     ; 133 }
 341  0046 85            	popw	x
 342  0047 81            	ret	
 628                     ; 154 void TIM1_OC1Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 628                     ; 155                   TIM1_OutputState_TypeDef TIM1_OutputState,
 628                     ; 156                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 628                     ; 157                   uint16_t TIM1_Pulse,
 628                     ; 158                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 628                     ; 159                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 628                     ; 160                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 628                     ; 161                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 628                     ; 162 {
 629                     .text:	section	.text,new
 630  0000               _TIM1_OC1Init:
 632  0000 89            	pushw	x
 633  0001 5203          	subw	sp,#3
 634       00000003      OFST:	set	3
 637                     ; 164   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 639  0003 9e            	ld	a,xh
 640  0004 4d            	tnz	a
 641  0005 271f          	jreq	L62
 642  0007 9e            	ld	a,xh
 643  0008 a110          	cp	a,#16
 644  000a 271a          	jreq	L62
 645  000c 9e            	ld	a,xh
 646  000d a120          	cp	a,#32
 647  000f 2715          	jreq	L62
 648  0011 9e            	ld	a,xh
 649  0012 a130          	cp	a,#48
 650  0014 2710          	jreq	L62
 651  0016 9e            	ld	a,xh
 652  0017 a160          	cp	a,#96
 653  0019 270b          	jreq	L62
 654  001b 9e            	ld	a,xh
 655  001c a170          	cp	a,#112
 656  001e 2706          	jreq	L62
 657  0020 ae00a4        	ldw	x,#164
 658  0023 cd00d6        	call	LC001
 659  0026               L62:
 660                     ; 165   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 662  0026 7b05          	ld	a,(OFST+2,sp)
 663  0028 270a          	jreq	L63
 664  002a a111          	cp	a,#17
 665  002c 2706          	jreq	L63
 666  002e ae00a5        	ldw	x,#165
 667  0031 cd00d6        	call	LC001
 668  0034               L63:
 669                     ; 166   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 671  0034 7b08          	ld	a,(OFST+5,sp)
 672  0036 270a          	jreq	L64
 673  0038 a144          	cp	a,#68
 674  003a 2706          	jreq	L64
 675  003c ae00a6        	ldw	x,#166
 676  003f cd00d6        	call	LC001
 677  0042               L64:
 678                     ; 167   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 680  0042 7b0b          	ld	a,(OFST+8,sp)
 681  0044 270a          	jreq	L65
 682  0046 a122          	cp	a,#34
 683  0048 2706          	jreq	L65
 684  004a ae00a7        	ldw	x,#167
 685  004d cd00d6        	call	LC001
 686  0050               L65:
 687                     ; 168   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
 689  0050 7b0c          	ld	a,(OFST+9,sp)
 690  0052 2709          	jreq	L66
 691  0054 a188          	cp	a,#136
 692  0056 2705          	jreq	L66
 693  0058 ae00a8        	ldw	x,#168
 694  005b ad79          	call	LC001
 695  005d               L66:
 696                     ; 169   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
 698  005d 7b0d          	ld	a,(OFST+10,sp)
 699  005f a155          	cp	a,#85
 700  0061 2709          	jreq	L67
 701  0063 7b0d          	ld	a,(OFST+10,sp)
 702  0065 2705          	jreq	L67
 703  0067 ae00a9        	ldw	x,#169
 704  006a ad6a          	call	LC001
 705  006c               L67:
 706                     ; 170   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
 708  006c 7b0e          	ld	a,(OFST+11,sp)
 709  006e a12a          	cp	a,#42
 710  0070 2709          	jreq	L601
 711  0072 7b0e          	ld	a,(OFST+11,sp)
 712  0074 2705          	jreq	L601
 713  0076 ae00aa        	ldw	x,#170
 714  0079 ad5b          	call	LC001
 715  007b               L601:
 716                     ; 174   TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC1E | TIM1_CCER1_CC1NE 
 716                     ; 175                              | TIM1_CCER1_CC1P | TIM1_CCER1_CC1NP));
 718  007b c6525c        	ld	a,21084
 719  007e a4f0          	and	a,#240
 720  0080 c7525c        	ld	21084,a
 721                     ; 178   TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC1E)
 721                     ; 179                                      | (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC1NE))
 721                     ; 180                            | (uint8_t)( (uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC1P)
 721                     ; 181                                        | (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC1NP)));
 723  0083 7b0c          	ld	a,(OFST+9,sp)
 724  0085 a408          	and	a,#8
 725  0087 6b03          	ld	(OFST+0,sp),a
 727  0089 7b0b          	ld	a,(OFST+8,sp)
 728  008b a402          	and	a,#2
 729  008d 1a03          	or	a,(OFST+0,sp)
 730  008f 6b02          	ld	(OFST-1,sp),a
 732  0091 7b08          	ld	a,(OFST+5,sp)
 733  0093 a404          	and	a,#4
 734  0095 6b01          	ld	(OFST-2,sp),a
 736  0097 7b05          	ld	a,(OFST+2,sp)
 737  0099 a401          	and	a,#1
 738  009b 1a01          	or	a,(OFST-2,sp)
 739  009d 1a02          	or	a,(OFST-1,sp)
 740  009f ca525c        	or	a,21084
 741  00a2 c7525c        	ld	21084,a
 742                     ; 184   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) | 
 742                     ; 185                           (uint8_t)TIM1_OCMode);
 744  00a5 c65258        	ld	a,21080
 745  00a8 a48f          	and	a,#143
 746  00aa 1a04          	or	a,(OFST+1,sp)
 747  00ac c75258        	ld	21080,a
 748                     ; 188   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS1 | TIM1_OISR_OIS1N));
 750  00af c6526f        	ld	a,21103
 751  00b2 a4fc          	and	a,#252
 752  00b4 c7526f        	ld	21103,a
 753                     ; 190   TIM1->OISR |= (uint8_t)((uint8_t)( TIM1_OCIdleState & TIM1_OISR_OIS1 ) | 
 753                     ; 191                           (uint8_t)( TIM1_OCNIdleState & TIM1_OISR_OIS1N ));
 755  00b7 7b0e          	ld	a,(OFST+11,sp)
 756  00b9 a402          	and	a,#2
 757  00bb 6b03          	ld	(OFST+0,sp),a
 759  00bd 7b0d          	ld	a,(OFST+10,sp)
 760  00bf a401          	and	a,#1
 761  00c1 1a03          	or	a,(OFST+0,sp)
 762  00c3 ca526f        	or	a,21103
 763  00c6 c7526f        	ld	21103,a
 764                     ; 194   TIM1->CCR1H = (uint8_t)(TIM1_Pulse >> 8);
 766  00c9 7b09          	ld	a,(OFST+6,sp)
 767  00cb c75265        	ld	21093,a
 768                     ; 195   TIM1->CCR1L = (uint8_t)(TIM1_Pulse);
 770  00ce 7b0a          	ld	a,(OFST+7,sp)
 771  00d0 c75266        	ld	21094,a
 772                     ; 196 }
 775  00d3 5b05          	addw	sp,#5
 776  00d5 81            	ret	
 777  00d6               LC001:
 778  00d6 89            	pushw	x
 779  00d7 5f            	clrw	x
 780  00d8 89            	pushw	x
 781  00d9 ae0000        	ldw	x,#L101
 782  00dc cd0000        	call	_assert_failed
 784  00df 5b04          	addw	sp,#4
 785  00e1 81            	ret	
 890                     ; 217 void TIM1_OC2Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 890                     ; 218                   TIM1_OutputState_TypeDef TIM1_OutputState,
 890                     ; 219                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 890                     ; 220                   uint16_t TIM1_Pulse,
 890                     ; 221                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 890                     ; 222                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 890                     ; 223                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 890                     ; 224                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 890                     ; 225 {
 891                     .text:	section	.text,new
 892  0000               _TIM1_OC2Init:
 894  0000 89            	pushw	x
 895  0001 5203          	subw	sp,#3
 896       00000003      OFST:	set	3
 899                     ; 227   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 901  0003 9e            	ld	a,xh
 902  0004 4d            	tnz	a
 903  0005 271f          	jreq	L021
 904  0007 9e            	ld	a,xh
 905  0008 a110          	cp	a,#16
 906  000a 271a          	jreq	L021
 907  000c 9e            	ld	a,xh
 908  000d a120          	cp	a,#32
 909  000f 2715          	jreq	L021
 910  0011 9e            	ld	a,xh
 911  0012 a130          	cp	a,#48
 912  0014 2710          	jreq	L021
 913  0016 9e            	ld	a,xh
 914  0017 a160          	cp	a,#96
 915  0019 270b          	jreq	L021
 916  001b 9e            	ld	a,xh
 917  001c a170          	cp	a,#112
 918  001e 2706          	jreq	L021
 919  0020 ae00e3        	ldw	x,#227
 920  0023 cd00d6        	call	LC002
 921  0026               L021:
 922                     ; 228   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 924  0026 7b05          	ld	a,(OFST+2,sp)
 925  0028 270a          	jreq	L031
 926  002a a111          	cp	a,#17
 927  002c 2706          	jreq	L031
 928  002e ae00e4        	ldw	x,#228
 929  0031 cd00d6        	call	LC002
 930  0034               L031:
 931                     ; 229   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 933  0034 7b08          	ld	a,(OFST+5,sp)
 934  0036 270a          	jreq	L041
 935  0038 a144          	cp	a,#68
 936  003a 2706          	jreq	L041
 937  003c ae00e5        	ldw	x,#229
 938  003f cd00d6        	call	LC002
 939  0042               L041:
 940                     ; 230   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 942  0042 7b0b          	ld	a,(OFST+8,sp)
 943  0044 270a          	jreq	L051
 944  0046 a122          	cp	a,#34
 945  0048 2706          	jreq	L051
 946  004a ae00e6        	ldw	x,#230
 947  004d cd00d6        	call	LC002
 948  0050               L051:
 949                     ; 231   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
 951  0050 7b0c          	ld	a,(OFST+9,sp)
 952  0052 2709          	jreq	L061
 953  0054 a188          	cp	a,#136
 954  0056 2705          	jreq	L061
 955  0058 ae00e7        	ldw	x,#231
 956  005b ad79          	call	LC002
 957  005d               L061:
 958                     ; 232   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
 960  005d 7b0d          	ld	a,(OFST+10,sp)
 961  005f a155          	cp	a,#85
 962  0061 2709          	jreq	L071
 963  0063 7b0d          	ld	a,(OFST+10,sp)
 964  0065 2705          	jreq	L071
 965  0067 ae00e8        	ldw	x,#232
 966  006a ad6a          	call	LC002
 967  006c               L071:
 968                     ; 233   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
 970  006c 7b0e          	ld	a,(OFST+11,sp)
 971  006e a12a          	cp	a,#42
 972  0070 2709          	jreq	L002
 973  0072 7b0e          	ld	a,(OFST+11,sp)
 974  0074 2705          	jreq	L002
 975  0076 ae00e9        	ldw	x,#233
 976  0079 ad5b          	call	LC002
 977  007b               L002:
 978                     ; 237   TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC2E | TIM1_CCER1_CC2NE | 
 978                     ; 238                              TIM1_CCER1_CC2P | TIM1_CCER1_CC2NP));
 980  007b c6525c        	ld	a,21084
 981  007e a40f          	and	a,#15
 982  0080 c7525c        	ld	21084,a
 983                     ; 242   TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC2E  ) | 
 983                     ; 243                                      (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC2NE )) | 
 983                     ; 244                            (uint8_t)((uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC2P  ) | 
 983                     ; 245                                      (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC2NP )));
 985  0083 7b0c          	ld	a,(OFST+9,sp)
 986  0085 a480          	and	a,#128
 987  0087 6b03          	ld	(OFST+0,sp),a
 989  0089 7b0b          	ld	a,(OFST+8,sp)
 990  008b a420          	and	a,#32
 991  008d 1a03          	or	a,(OFST+0,sp)
 992  008f 6b02          	ld	(OFST-1,sp),a
 994  0091 7b08          	ld	a,(OFST+5,sp)
 995  0093 a440          	and	a,#64
 996  0095 6b01          	ld	(OFST-2,sp),a
 998  0097 7b05          	ld	a,(OFST+2,sp)
 999  0099 a410          	and	a,#16
1000  009b 1a01          	or	a,(OFST-2,sp)
1001  009d 1a02          	or	a,(OFST-1,sp)
1002  009f ca525c        	or	a,21084
1003  00a2 c7525c        	ld	21084,a
1004                     ; 248   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1004                     ; 249                           (uint8_t)TIM1_OCMode);
1006  00a5 c65259        	ld	a,21081
1007  00a8 a48f          	and	a,#143
1008  00aa 1a04          	or	a,(OFST+1,sp)
1009  00ac c75259        	ld	21081,a
1010                     ; 252   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS2 | TIM1_OISR_OIS2N));
1012  00af c6526f        	ld	a,21103
1013  00b2 a4f3          	and	a,#243
1014  00b4 c7526f        	ld	21103,a
1015                     ; 254   TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS2 & TIM1_OCIdleState) | 
1015                     ; 255                           (uint8_t)(TIM1_OISR_OIS2N & TIM1_OCNIdleState));
1017  00b7 7b0e          	ld	a,(OFST+11,sp)
1018  00b9 a408          	and	a,#8
1019  00bb 6b03          	ld	(OFST+0,sp),a
1021  00bd 7b0d          	ld	a,(OFST+10,sp)
1022  00bf a404          	and	a,#4
1023  00c1 1a03          	or	a,(OFST+0,sp)
1024  00c3 ca526f        	or	a,21103
1025  00c6 c7526f        	ld	21103,a
1026                     ; 258   TIM1->CCR2H = (uint8_t)(TIM1_Pulse >> 8);
1028  00c9 7b09          	ld	a,(OFST+6,sp)
1029  00cb c75267        	ld	21095,a
1030                     ; 259   TIM1->CCR2L = (uint8_t)(TIM1_Pulse);
1032  00ce 7b0a          	ld	a,(OFST+7,sp)
1033  00d0 c75268        	ld	21096,a
1034                     ; 260 }
1037  00d3 5b05          	addw	sp,#5
1038  00d5 81            	ret	
1039  00d6               LC002:
1040  00d6 89            	pushw	x
1041  00d7 5f            	clrw	x
1042  00d8 89            	pushw	x
1043  00d9 ae0000        	ldw	x,#L101
1044  00dc cd0000        	call	_assert_failed
1046  00df 5b04          	addw	sp,#4
1047  00e1 81            	ret	
1152                     ; 281 void TIM1_OC3Init(TIM1_OCMode_TypeDef TIM1_OCMode,
1152                     ; 282                   TIM1_OutputState_TypeDef TIM1_OutputState,
1152                     ; 283                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
1152                     ; 284                   uint16_t TIM1_Pulse,
1152                     ; 285                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
1152                     ; 286                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
1152                     ; 287                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
1152                     ; 288                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
1152                     ; 289 {
1153                     .text:	section	.text,new
1154  0000               _TIM1_OC3Init:
1156  0000 89            	pushw	x
1157  0001 5203          	subw	sp,#3
1158       00000003      OFST:	set	3
1161                     ; 291   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
1163  0003 9e            	ld	a,xh
1164  0004 4d            	tnz	a
1165  0005 271f          	jreq	L212
1166  0007 9e            	ld	a,xh
1167  0008 a110          	cp	a,#16
1168  000a 271a          	jreq	L212
1169  000c 9e            	ld	a,xh
1170  000d a120          	cp	a,#32
1171  000f 2715          	jreq	L212
1172  0011 9e            	ld	a,xh
1173  0012 a130          	cp	a,#48
1174  0014 2710          	jreq	L212
1175  0016 9e            	ld	a,xh
1176  0017 a160          	cp	a,#96
1177  0019 270b          	jreq	L212
1178  001b 9e            	ld	a,xh
1179  001c a170          	cp	a,#112
1180  001e 2706          	jreq	L212
1181  0020 ae0123        	ldw	x,#291
1182  0023 cd00d6        	call	LC003
1183  0026               L212:
1184                     ; 292   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
1186  0026 7b05          	ld	a,(OFST+2,sp)
1187  0028 270a          	jreq	L222
1188  002a a111          	cp	a,#17
1189  002c 2706          	jreq	L222
1190  002e ae0124        	ldw	x,#292
1191  0031 cd00d6        	call	LC003
1192  0034               L222:
1193                     ; 293   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
1195  0034 7b08          	ld	a,(OFST+5,sp)
1196  0036 270a          	jreq	L232
1197  0038 a144          	cp	a,#68
1198  003a 2706          	jreq	L232
1199  003c ae0125        	ldw	x,#293
1200  003f cd00d6        	call	LC003
1201  0042               L232:
1202                     ; 294   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
1204  0042 7b0b          	ld	a,(OFST+8,sp)
1205  0044 270a          	jreq	L242
1206  0046 a122          	cp	a,#34
1207  0048 2706          	jreq	L242
1208  004a ae0126        	ldw	x,#294
1209  004d cd00d6        	call	LC003
1210  0050               L242:
1211                     ; 295   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
1213  0050 7b0c          	ld	a,(OFST+9,sp)
1214  0052 2709          	jreq	L252
1215  0054 a188          	cp	a,#136
1216  0056 2705          	jreq	L252
1217  0058 ae0127        	ldw	x,#295
1218  005b ad79          	call	LC003
1219  005d               L252:
1220                     ; 296   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1222  005d 7b0d          	ld	a,(OFST+10,sp)
1223  005f a155          	cp	a,#85
1224  0061 2709          	jreq	L262
1225  0063 7b0d          	ld	a,(OFST+10,sp)
1226  0065 2705          	jreq	L262
1227  0067 ae0128        	ldw	x,#296
1228  006a ad6a          	call	LC003
1229  006c               L262:
1230                     ; 297   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
1232  006c 7b0e          	ld	a,(OFST+11,sp)
1233  006e a12a          	cp	a,#42
1234  0070 2709          	jreq	L272
1235  0072 7b0e          	ld	a,(OFST+11,sp)
1236  0074 2705          	jreq	L272
1237  0076 ae0129        	ldw	x,#297
1238  0079 ad5b          	call	LC003
1239  007b               L272:
1240                     ; 301   TIM1->CCER2 &= (uint8_t)(~( TIM1_CCER2_CC3E | TIM1_CCER2_CC3NE | 
1240                     ; 302                              TIM1_CCER2_CC3P | TIM1_CCER2_CC3NP));
1242  007b c6525d        	ld	a,21085
1243  007e a4f0          	and	a,#240
1244  0080 c7525d        	ld	21085,a
1245                     ; 305   TIM1->CCER2 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState  & TIM1_CCER2_CC3E   ) |
1245                     ; 306                                      (uint8_t)(TIM1_OutputNState & TIM1_CCER2_CC3NE  )) | 
1245                     ; 307                            (uint8_t)((uint8_t)(TIM1_OCPolarity   & TIM1_CCER2_CC3P   ) | 
1245                     ; 308                                      (uint8_t)(TIM1_OCNPolarity  & TIM1_CCER2_CC3NP  )));
1247  0083 7b0c          	ld	a,(OFST+9,sp)
1248  0085 a408          	and	a,#8
1249  0087 6b03          	ld	(OFST+0,sp),a
1251  0089 7b0b          	ld	a,(OFST+8,sp)
1252  008b a402          	and	a,#2
1253  008d 1a03          	or	a,(OFST+0,sp)
1254  008f 6b02          	ld	(OFST-1,sp),a
1256  0091 7b08          	ld	a,(OFST+5,sp)
1257  0093 a404          	and	a,#4
1258  0095 6b01          	ld	(OFST-2,sp),a
1260  0097 7b05          	ld	a,(OFST+2,sp)
1261  0099 a401          	and	a,#1
1262  009b 1a01          	or	a,(OFST-2,sp)
1263  009d 1a02          	or	a,(OFST-1,sp)
1264  009f ca525d        	or	a,21085
1265  00a2 c7525d        	ld	21085,a
1266                     ; 311   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1266                     ; 312                           (uint8_t)TIM1_OCMode);
1268  00a5 c6525a        	ld	a,21082
1269  00a8 a48f          	and	a,#143
1270  00aa 1a04          	or	a,(OFST+1,sp)
1271  00ac c7525a        	ld	21082,a
1272                     ; 315   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS3 | TIM1_OISR_OIS3N));
1274  00af c6526f        	ld	a,21103
1275  00b2 a4cf          	and	a,#207
1276  00b4 c7526f        	ld	21103,a
1277                     ; 317   TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS3 & TIM1_OCIdleState) | 
1277                     ; 318                           (uint8_t)(TIM1_OISR_OIS3N & TIM1_OCNIdleState));
1279  00b7 7b0e          	ld	a,(OFST+11,sp)
1280  00b9 a420          	and	a,#32
1281  00bb 6b03          	ld	(OFST+0,sp),a
1283  00bd 7b0d          	ld	a,(OFST+10,sp)
1284  00bf a410          	and	a,#16
1285  00c1 1a03          	or	a,(OFST+0,sp)
1286  00c3 ca526f        	or	a,21103
1287  00c6 c7526f        	ld	21103,a
1288                     ; 321   TIM1->CCR3H = (uint8_t)(TIM1_Pulse >> 8);
1290  00c9 7b09          	ld	a,(OFST+6,sp)
1291  00cb c75269        	ld	21097,a
1292                     ; 322   TIM1->CCR3L = (uint8_t)(TIM1_Pulse);
1294  00ce 7b0a          	ld	a,(OFST+7,sp)
1295  00d0 c7526a        	ld	21098,a
1296                     ; 323 }
1299  00d3 5b05          	addw	sp,#5
1300  00d5 81            	ret	
1301  00d6               LC003:
1302  00d6 89            	pushw	x
1303  00d7 5f            	clrw	x
1304  00d8 89            	pushw	x
1305  00d9 ae0000        	ldw	x,#L101
1306  00dc cd0000        	call	_assert_failed
1308  00df 5b04          	addw	sp,#4
1309  00e1 81            	ret	
1384                     ; 338 void TIM1_OC4Init(TIM1_OCMode_TypeDef TIM1_OCMode,
1384                     ; 339                   TIM1_OutputState_TypeDef TIM1_OutputState,
1384                     ; 340                   uint16_t TIM1_Pulse,
1384                     ; 341                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
1384                     ; 342                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState)
1384                     ; 343 {
1385                     .text:	section	.text,new
1386  0000               _TIM1_OC4Init:
1388  0000 89            	pushw	x
1389  0001 88            	push	a
1390       00000001      OFST:	set	1
1393                     ; 345   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
1395  0002 9e            	ld	a,xh
1396  0003 4d            	tnz	a
1397  0004 271e          	jreq	L403
1398  0006 9e            	ld	a,xh
1399  0007 a110          	cp	a,#16
1400  0009 2719          	jreq	L403
1401  000b 9e            	ld	a,xh
1402  000c a120          	cp	a,#32
1403  000e 2714          	jreq	L403
1404  0010 9e            	ld	a,xh
1405  0011 a130          	cp	a,#48
1406  0013 270f          	jreq	L403
1407  0015 9e            	ld	a,xh
1408  0016 a160          	cp	a,#96
1409  0018 270a          	jreq	L403
1410  001a 9e            	ld	a,xh
1411  001b a170          	cp	a,#112
1412  001d 2705          	jreq	L403
1413  001f ae0159        	ldw	x,#345
1414  0022 ad6c          	call	LC004
1415  0024               L403:
1416                     ; 346   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
1418  0024 7b03          	ld	a,(OFST+2,sp)
1419  0026 2709          	jreq	L413
1420  0028 a111          	cp	a,#17
1421  002a 2705          	jreq	L413
1422  002c ae015a        	ldw	x,#346
1423  002f ad5f          	call	LC004
1424  0031               L413:
1425                     ; 347   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
1427  0031 7b08          	ld	a,(OFST+7,sp)
1428  0033 2709          	jreq	L423
1429  0035 a122          	cp	a,#34
1430  0037 2705          	jreq	L423
1431  0039 ae015b        	ldw	x,#347
1432  003c ad52          	call	LC004
1433  003e               L423:
1434                     ; 348   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1436  003e 7b09          	ld	a,(OFST+8,sp)
1437  0040 a155          	cp	a,#85
1438  0042 2709          	jreq	L433
1439  0044 7b09          	ld	a,(OFST+8,sp)
1440  0046 2705          	jreq	L433
1441  0048 ae015c        	ldw	x,#348
1442  004b ad43          	call	LC004
1443  004d               L433:
1444                     ; 351   TIM1->CCER2 &= (uint8_t)(~(TIM1_CCER2_CC4E | TIM1_CCER2_CC4P));
1446  004d c6525d        	ld	a,21085
1447  0050 a4cf          	and	a,#207
1448  0052 c7525d        	ld	21085,a
1449                     ; 353   TIM1->CCER2 |= (uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER2_CC4E ) |  
1449                     ; 354                            (uint8_t)(TIM1_OCPolarity  & TIM1_CCER2_CC4P ));
1451  0055 7b08          	ld	a,(OFST+7,sp)
1452  0057 a420          	and	a,#32
1453  0059 6b01          	ld	(OFST+0,sp),a
1455  005b 7b03          	ld	a,(OFST+2,sp)
1456  005d a410          	and	a,#16
1457  005f 1a01          	or	a,(OFST+0,sp)
1458  0061 ca525d        	or	a,21085
1459  0064 c7525d        	ld	21085,a
1460                     ; 357   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1460                     ; 358                           TIM1_OCMode);
1462  0067 c6525b        	ld	a,21083
1463  006a a48f          	and	a,#143
1464  006c 1a02          	or	a,(OFST+1,sp)
1465  006e c7525b        	ld	21083,a
1466                     ; 361   if (TIM1_OCIdleState != TIM1_OCIDLESTATE_RESET)
1468  0071 7b09          	ld	a,(OFST+8,sp)
1469  0073 270a          	jreq	L734
1470                     ; 363     TIM1->OISR |= (uint8_t)(~TIM1_CCER2_CC4P);
1472  0075 c6526f        	ld	a,21103
1473  0078 aadf          	or	a,#223
1474  007a c7526f        	ld	21103,a
1476  007d 2004          	jra	L144
1477  007f               L734:
1478                     ; 367     TIM1->OISR &= (uint8_t)(~TIM1_OISR_OIS4);
1480  007f 721d526f      	bres	21103,#6
1481  0083               L144:
1482                     ; 371   TIM1->CCR4H = (uint8_t)(TIM1_Pulse >> 8);
1484  0083 7b06          	ld	a,(OFST+5,sp)
1485  0085 c7526b        	ld	21099,a
1486                     ; 372   TIM1->CCR4L = (uint8_t)(TIM1_Pulse);
1488  0088 7b07          	ld	a,(OFST+6,sp)
1489  008a c7526c        	ld	21100,a
1490                     ; 373 }
1493  008d 5b03          	addw	sp,#3
1494  008f 81            	ret	
1495  0090               LC004:
1496  0090 89            	pushw	x
1497  0091 5f            	clrw	x
1498  0092 89            	pushw	x
1499  0093 ae0000        	ldw	x,#L101
1500  0096 cd0000        	call	_assert_failed
1502  0099 5b04          	addw	sp,#4
1503  009b 81            	ret	
1709                     ; 388 void TIM1_BDTRConfig(TIM1_OSSIState_TypeDef TIM1_OSSIState,
1709                     ; 389                      TIM1_LockLevel_TypeDef TIM1_LockLevel,
1709                     ; 390                      uint8_t TIM1_DeadTime,
1709                     ; 391                      TIM1_BreakState_TypeDef TIM1_Break,
1709                     ; 392                      TIM1_BreakPolarity_TypeDef TIM1_BreakPolarity,
1709                     ; 393                      TIM1_AutomaticOutput_TypeDef TIM1_AutomaticOutput)
1709                     ; 394 {
1710                     .text:	section	.text,new
1711  0000               _TIM1_BDTRConfig:
1713  0000 89            	pushw	x
1714  0001 88            	push	a
1715       00000001      OFST:	set	1
1718                     ; 396   assert_param(IS_TIM1_OSSI_STATE_OK(TIM1_OSSIState));
1720  0002 9e            	ld	a,xh
1721  0003 a104          	cp	a,#4
1722  0005 2709          	jreq	L643
1723  0007 9e            	ld	a,xh
1724  0008 4d            	tnz	a
1725  0009 2705          	jreq	L643
1726  000b ae018c        	ldw	x,#396
1727  000e ad59          	call	LC005
1728  0010               L643:
1729                     ; 397   assert_param(IS_TIM1_LOCK_LEVEL_OK(TIM1_LockLevel));
1731  0010 7b03          	ld	a,(OFST+2,sp)
1732  0012 2711          	jreq	L653
1733  0014 a101          	cp	a,#1
1734  0016 270d          	jreq	L653
1735  0018 a102          	cp	a,#2
1736  001a 2709          	jreq	L653
1737  001c a103          	cp	a,#3
1738  001e 2705          	jreq	L653
1739  0020 ae018d        	ldw	x,#397
1740  0023 ad44          	call	LC005
1741  0025               L653:
1742                     ; 398   assert_param(IS_TIM1_BREAK_STATE_OK(TIM1_Break));
1744  0025 7b07          	ld	a,(OFST+6,sp)
1745  0027 a110          	cp	a,#16
1746  0029 2709          	jreq	L663
1747  002b 7b07          	ld	a,(OFST+6,sp)
1748  002d 2705          	jreq	L663
1749  002f ae018e        	ldw	x,#398
1750  0032 ad35          	call	LC005
1751  0034               L663:
1752                     ; 399   assert_param(IS_TIM1_BREAK_POLARITY_OK(TIM1_BreakPolarity));
1754  0034 7b08          	ld	a,(OFST+7,sp)
1755  0036 2709          	jreq	L673
1756  0038 a120          	cp	a,#32
1757  003a 2705          	jreq	L673
1758  003c ae018f        	ldw	x,#399
1759  003f ad28          	call	LC005
1760  0041               L673:
1761                     ; 400   assert_param(IS_TIM1_AUTOMATIC_OUTPUT_STATE_OK(TIM1_AutomaticOutput));
1763  0041 7b09          	ld	a,(OFST+8,sp)
1764  0043 a140          	cp	a,#64
1765  0045 2709          	jreq	L604
1766  0047 7b09          	ld	a,(OFST+8,sp)
1767  0049 2705          	jreq	L604
1768  004b ae0190        	ldw	x,#400
1769  004e ad19          	call	LC005
1770  0050               L604:
1771                     ; 402   TIM1->DTR = (uint8_t)(TIM1_DeadTime);
1773  0050 7b06          	ld	a,(OFST+5,sp)
1774  0052 c7526e        	ld	21102,a
1775                     ; 406   TIM1->BKR  =  (uint8_t)((uint8_t)(TIM1_OSSIState | (uint8_t)TIM1_LockLevel)  | 
1775                     ; 407                           (uint8_t)((uint8_t)(TIM1_Break | (uint8_t)TIM1_BreakPolarity)  | 
1775                     ; 408                           (uint8_t)TIM1_AutomaticOutput));
1777  0055 7b07          	ld	a,(OFST+6,sp)
1778  0057 1a08          	or	a,(OFST+7,sp)
1779  0059 1a09          	or	a,(OFST+8,sp)
1780  005b 6b01          	ld	(OFST+0,sp),a
1782  005d 7b02          	ld	a,(OFST+1,sp)
1783  005f 1a03          	or	a,(OFST+2,sp)
1784  0061 1a01          	or	a,(OFST+0,sp)
1785  0063 c7526d        	ld	21101,a
1786                     ; 409 }
1789  0066 5b03          	addw	sp,#3
1790  0068 81            	ret	
1791  0069               LC005:
1792  0069 89            	pushw	x
1793  006a 5f            	clrw	x
1794  006b 89            	pushw	x
1795  006c ae0000        	ldw	x,#L101
1796  006f cd0000        	call	_assert_failed
1798  0072 5b04          	addw	sp,#4
1799  0074 81            	ret	
2002                     ; 423 void TIM1_ICInit(TIM1_Channel_TypeDef TIM1_Channel,
2002                     ; 424                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
2002                     ; 425                  TIM1_ICSelection_TypeDef TIM1_ICSelection,
2002                     ; 426                  TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
2002                     ; 427                  uint8_t TIM1_ICFilter)
2002                     ; 428 {
2003                     .text:	section	.text,new
2004  0000               _TIM1_ICInit:
2006  0000 89            	pushw	x
2007       00000000      OFST:	set	0
2010                     ; 430   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
2012  0001 9e            	ld	a,xh
2013  0002 4d            	tnz	a
2014  0003 2714          	jreq	L024
2015  0005 9e            	ld	a,xh
2016  0006 4a            	dec	a
2017  0007 2710          	jreq	L024
2018  0009 9e            	ld	a,xh
2019  000a a102          	cp	a,#2
2020  000c 270b          	jreq	L024
2021  000e 9e            	ld	a,xh
2022  000f a103          	cp	a,#3
2023  0011 2706          	jreq	L024
2024  0013 ae01ae        	ldw	x,#430
2025  0016 cd00b5        	call	LC006
2026  0019               L024:
2027                     ; 431   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
2029  0019 7b02          	ld	a,(OFST+2,sp)
2030  001b 2709          	jreq	L034
2031  001d 4a            	dec	a
2032  001e 2706          	jreq	L034
2033  0020 ae01af        	ldw	x,#431
2034  0023 cd00b5        	call	LC006
2035  0026               L034:
2036                     ; 432   assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
2038  0026 7b05          	ld	a,(OFST+5,sp)
2039  0028 a101          	cp	a,#1
2040  002a 270d          	jreq	L044
2041  002c a102          	cp	a,#2
2042  002e 2709          	jreq	L044
2043  0030 a103          	cp	a,#3
2044  0032 2705          	jreq	L044
2045  0034 ae01b0        	ldw	x,#432
2046  0037 ad7c          	call	LC006
2047  0039               L044:
2048                     ; 433   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
2050  0039 7b06          	ld	a,(OFST+6,sp)
2051  003b 2711          	jreq	L054
2052  003d a104          	cp	a,#4
2053  003f 270d          	jreq	L054
2054  0041 a108          	cp	a,#8
2055  0043 2709          	jreq	L054
2056  0045 a10c          	cp	a,#12
2057  0047 2705          	jreq	L054
2058  0049 ae01b1        	ldw	x,#433
2059  004c ad67          	call	LC006
2060  004e               L054:
2061                     ; 434   assert_param(IS_TIM1_IC_FILTER_OK(TIM1_ICFilter));
2063  004e 7b07          	ld	a,(OFST+7,sp)
2064  0050 a110          	cp	a,#16
2065  0052 2505          	jrult	L654
2066  0054 ae01b2        	ldw	x,#434
2067  0057 ad5c          	call	LC006
2068  0059               L654:
2069                     ; 436   if (TIM1_Channel == TIM1_CHANNEL_1)
2071  0059 7b01          	ld	a,(OFST+1,sp)
2072  005b 2614          	jrne	L176
2073                     ; 439     TI1_Config((uint8_t)TIM1_ICPolarity,
2073                     ; 440                (uint8_t)TIM1_ICSelection,
2073                     ; 441                (uint8_t)TIM1_ICFilter);
2075  005d 7b07          	ld	a,(OFST+7,sp)
2076  005f 88            	push	a
2077  0060 7b06          	ld	a,(OFST+6,sp)
2078  0062 97            	ld	xl,a
2079  0063 7b03          	ld	a,(OFST+3,sp)
2080  0065 95            	ld	xh,a
2081  0066 cd0000        	call	L3_TI1_Config
2083  0069 84            	pop	a
2084                     ; 443     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2086  006a 7b06          	ld	a,(OFST+6,sp)
2087  006c cd0000        	call	_TIM1_SetIC1Prescaler
2090  006f 2042          	jra	L376
2091  0071               L176:
2092                     ; 445   else if (TIM1_Channel == TIM1_CHANNEL_2)
2094  0071 a101          	cp	a,#1
2095  0073 2614          	jrne	L576
2096                     ; 448     TI2_Config((uint8_t)TIM1_ICPolarity,
2096                     ; 449                (uint8_t)TIM1_ICSelection,
2096                     ; 450                (uint8_t)TIM1_ICFilter);
2098  0075 7b07          	ld	a,(OFST+7,sp)
2099  0077 88            	push	a
2100  0078 7b06          	ld	a,(OFST+6,sp)
2101  007a 97            	ld	xl,a
2102  007b 7b03          	ld	a,(OFST+3,sp)
2103  007d 95            	ld	xh,a
2104  007e cd0000        	call	L5_TI2_Config
2106  0081 84            	pop	a
2107                     ; 452     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2109  0082 7b06          	ld	a,(OFST+6,sp)
2110  0084 cd0000        	call	_TIM1_SetIC2Prescaler
2113  0087 202a          	jra	L376
2114  0089               L576:
2115                     ; 454   else if (TIM1_Channel == TIM1_CHANNEL_3)
2117  0089 a102          	cp	a,#2
2118  008b 2614          	jrne	L107
2119                     ; 457     TI3_Config((uint8_t)TIM1_ICPolarity,
2119                     ; 458                (uint8_t)TIM1_ICSelection,
2119                     ; 459                (uint8_t)TIM1_ICFilter);
2121  008d 7b07          	ld	a,(OFST+7,sp)
2122  008f 88            	push	a
2123  0090 7b06          	ld	a,(OFST+6,sp)
2124  0092 97            	ld	xl,a
2125  0093 7b03          	ld	a,(OFST+3,sp)
2126  0095 95            	ld	xh,a
2127  0096 cd0000        	call	L7_TI3_Config
2129  0099 84            	pop	a
2130                     ; 461     TIM1_SetIC3Prescaler(TIM1_ICPrescaler);
2132  009a 7b06          	ld	a,(OFST+6,sp)
2133  009c cd0000        	call	_TIM1_SetIC3Prescaler
2136  009f 2012          	jra	L376
2137  00a1               L107:
2138                     ; 466     TI4_Config((uint8_t)TIM1_ICPolarity,
2138                     ; 467                (uint8_t)TIM1_ICSelection,
2138                     ; 468                (uint8_t)TIM1_ICFilter);
2140  00a1 7b07          	ld	a,(OFST+7,sp)
2141  00a3 88            	push	a
2142  00a4 7b06          	ld	a,(OFST+6,sp)
2143  00a6 97            	ld	xl,a
2144  00a7 7b03          	ld	a,(OFST+3,sp)
2145  00a9 95            	ld	xh,a
2146  00aa cd0000        	call	L11_TI4_Config
2148  00ad 84            	pop	a
2149                     ; 470     TIM1_SetIC4Prescaler(TIM1_ICPrescaler);
2151  00ae 7b06          	ld	a,(OFST+6,sp)
2152  00b0 cd0000        	call	_TIM1_SetIC4Prescaler
2154  00b3               L376:
2155                     ; 472 }
2158  00b3 85            	popw	x
2159  00b4 81            	ret	
2160  00b5               LC006:
2161  00b5 89            	pushw	x
2162  00b6 5f            	clrw	x
2163  00b7 89            	pushw	x
2164  00b8 ae0000        	ldw	x,#L101
2165  00bb cd0000        	call	_assert_failed
2167  00be 5b04          	addw	sp,#4
2168  00c0 81            	ret	
2265                     ; 488 void TIM1_PWMIConfig(TIM1_Channel_TypeDef TIM1_Channel,
2265                     ; 489                      TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
2265                     ; 490                      TIM1_ICSelection_TypeDef TIM1_ICSelection,
2265                     ; 491                      TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
2265                     ; 492                      uint8_t TIM1_ICFilter)
2265                     ; 493 {
2266                     .text:	section	.text,new
2267  0000               _TIM1_PWMIConfig:
2269  0000 89            	pushw	x
2270  0001 89            	pushw	x
2271       00000002      OFST:	set	2
2274                     ; 494   uint8_t icpolarity = TIM1_ICPOLARITY_RISING;
2276                     ; 495   uint8_t icselection = TIM1_ICSELECTION_DIRECTTI;
2278                     ; 498   assert_param(IS_TIM1_PWMI_CHANNEL_OK(TIM1_Channel));
2280  0002 9e            	ld	a,xh
2281  0003 4d            	tnz	a
2282  0004 270a          	jreq	L015
2283  0006 9e            	ld	a,xh
2284  0007 4a            	dec	a
2285  0008 2706          	jreq	L015
2286  000a ae01f2        	ldw	x,#498
2287  000d cd00ac        	call	LC007
2288  0010               L015:
2289                     ; 499   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
2291  0010 7b04          	ld	a,(OFST+2,sp)
2292  0012 2709          	jreq	L025
2293  0014 4a            	dec	a
2294  0015 2706          	jreq	L025
2295  0017 ae01f3        	ldw	x,#499
2296  001a cd00ac        	call	LC007
2297  001d               L025:
2298                     ; 500   assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
2300  001d 7b07          	ld	a,(OFST+5,sp)
2301  001f a101          	cp	a,#1
2302  0021 270d          	jreq	L035
2303  0023 a102          	cp	a,#2
2304  0025 2709          	jreq	L035
2305  0027 a103          	cp	a,#3
2306  0029 2705          	jreq	L035
2307  002b ae01f4        	ldw	x,#500
2308  002e ad7c          	call	LC007
2309  0030               L035:
2310                     ; 501   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
2312  0030 7b08          	ld	a,(OFST+6,sp)
2313  0032 2711          	jreq	L045
2314  0034 a104          	cp	a,#4
2315  0036 270d          	jreq	L045
2316  0038 a108          	cp	a,#8
2317  003a 2709          	jreq	L045
2318  003c a10c          	cp	a,#12
2319  003e 2705          	jreq	L045
2320  0040 ae01f5        	ldw	x,#501
2321  0043 ad67          	call	LC007
2322  0045               L045:
2323                     ; 504   if (TIM1_ICPolarity != TIM1_ICPOLARITY_FALLING)
2325  0045 7b04          	ld	a,(OFST+2,sp)
2326  0047 4a            	dec	a
2327  0048 2702          	jreq	L357
2328                     ; 506     icpolarity = TIM1_ICPOLARITY_FALLING;
2330  004a a601          	ld	a,#1
2332  004c               L357:
2333                     ; 510     icpolarity = TIM1_ICPOLARITY_RISING;
2335  004c 6b01          	ld	(OFST-1,sp),a
2337                     ; 514   if (TIM1_ICSelection == TIM1_ICSELECTION_DIRECTTI)
2339  004e 7b07          	ld	a,(OFST+5,sp)
2340  0050 4a            	dec	a
2341  0051 2604          	jrne	L757
2342                     ; 516     icselection = TIM1_ICSELECTION_INDIRECTTI;
2344  0053 a602          	ld	a,#2
2346  0055 2002          	jra	L167
2347  0057               L757:
2348                     ; 520     icselection = TIM1_ICSELECTION_DIRECTTI;
2350  0057 a601          	ld	a,#1
2351  0059               L167:
2352  0059 6b02          	ld	(OFST+0,sp),a
2354                     ; 523   if (TIM1_Channel == TIM1_CHANNEL_1)
2356  005b 7b03          	ld	a,(OFST+1,sp)
2357  005d 2626          	jrne	L367
2358                     ; 526     TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
2358                     ; 527                (uint8_t)TIM1_ICFilter);
2360  005f 7b09          	ld	a,(OFST+7,sp)
2361  0061 88            	push	a
2362  0062 7b08          	ld	a,(OFST+6,sp)
2363  0064 97            	ld	xl,a
2364  0065 7b05          	ld	a,(OFST+3,sp)
2365  0067 95            	ld	xh,a
2366  0068 cd0000        	call	L3_TI1_Config
2368  006b 84            	pop	a
2369                     ; 530     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2371  006c 7b08          	ld	a,(OFST+6,sp)
2372  006e cd0000        	call	_TIM1_SetIC1Prescaler
2374                     ; 533     TI2_Config(icpolarity, icselection, TIM1_ICFilter);
2376  0071 7b09          	ld	a,(OFST+7,sp)
2377  0073 88            	push	a
2378  0074 7b03          	ld	a,(OFST+1,sp)
2379  0076 97            	ld	xl,a
2380  0077 7b02          	ld	a,(OFST+0,sp)
2381  0079 95            	ld	xh,a
2382  007a cd0000        	call	L5_TI2_Config
2384  007d 84            	pop	a
2385                     ; 536     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2387  007e 7b08          	ld	a,(OFST+6,sp)
2388  0080 cd0000        	call	_TIM1_SetIC2Prescaler
2391  0083 2024          	jra	L567
2392  0085               L367:
2393                     ; 541     TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
2393                     ; 542                (uint8_t)TIM1_ICFilter);
2395  0085 7b09          	ld	a,(OFST+7,sp)
2396  0087 88            	push	a
2397  0088 7b08          	ld	a,(OFST+6,sp)
2398  008a 97            	ld	xl,a
2399  008b 7b05          	ld	a,(OFST+3,sp)
2400  008d 95            	ld	xh,a
2401  008e cd0000        	call	L5_TI2_Config
2403  0091 84            	pop	a
2404                     ; 545     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2406  0092 7b08          	ld	a,(OFST+6,sp)
2407  0094 cd0000        	call	_TIM1_SetIC2Prescaler
2409                     ; 548     TI1_Config(icpolarity, icselection, TIM1_ICFilter);
2411  0097 7b09          	ld	a,(OFST+7,sp)
2412  0099 88            	push	a
2413  009a 7b03          	ld	a,(OFST+1,sp)
2414  009c 97            	ld	xl,a
2415  009d 7b02          	ld	a,(OFST+0,sp)
2416  009f 95            	ld	xh,a
2417  00a0 cd0000        	call	L3_TI1_Config
2419  00a3 84            	pop	a
2420                     ; 551     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2422  00a4 7b08          	ld	a,(OFST+6,sp)
2423  00a6 cd0000        	call	_TIM1_SetIC1Prescaler
2425  00a9               L567:
2426                     ; 553 }
2429  00a9 5b04          	addw	sp,#4
2430  00ab 81            	ret	
2431  00ac               LC007:
2432  00ac 89            	pushw	x
2433  00ad 5f            	clrw	x
2434  00ae 89            	pushw	x
2435  00af ae0000        	ldw	x,#L101
2436  00b2 cd0000        	call	_assert_failed
2438  00b5 5b04          	addw	sp,#4
2439  00b7 81            	ret	
2495                     ; 561 void TIM1_Cmd(FunctionalState NewState)
2495                     ; 562 {
2496                     .text:	section	.text,new
2497  0000               _TIM1_Cmd:
2499  0000 88            	push	a
2500       00000000      OFST:	set	0
2503                     ; 564   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2505  0001 4d            	tnz	a
2506  0002 2711          	jreq	L275
2507  0004 4a            	dec	a
2508  0005 270e          	jreq	L275
2509  0007 ae0234        	ldw	x,#564
2510  000a 89            	pushw	x
2511  000b 5f            	clrw	x
2512  000c 89            	pushw	x
2513  000d ae0000        	ldw	x,#L101
2514  0010 cd0000        	call	_assert_failed
2516  0013 5b04          	addw	sp,#4
2517  0015               L275:
2518                     ; 567   if (NewState != DISABLE)
2520  0015 7b01          	ld	a,(OFST+1,sp)
2521  0017 2706          	jreq	L5101
2522                     ; 569     TIM1->CR1 |= TIM1_CR1_CEN;
2524  0019 72105250      	bset	21072,#0
2526  001d 2004          	jra	L7101
2527  001f               L5101:
2528                     ; 573     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_CEN);
2530  001f 72115250      	bres	21072,#0
2531  0023               L7101:
2532                     ; 575 }
2535  0023 84            	pop	a
2536  0024 81            	ret	
2573                     ; 583 void TIM1_CtrlPWMOutputs(FunctionalState NewState)
2573                     ; 584 {
2574                     .text:	section	.text,new
2575  0000               _TIM1_CtrlPWMOutputs:
2577  0000 88            	push	a
2578       00000000      OFST:	set	0
2581                     ; 586   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2583  0001 4d            	tnz	a
2584  0002 2711          	jreq	L406
2585  0004 4a            	dec	a
2586  0005 270e          	jreq	L406
2587  0007 ae024a        	ldw	x,#586
2588  000a 89            	pushw	x
2589  000b 5f            	clrw	x
2590  000c 89            	pushw	x
2591  000d ae0000        	ldw	x,#L101
2592  0010 cd0000        	call	_assert_failed
2594  0013 5b04          	addw	sp,#4
2595  0015               L406:
2596                     ; 590   if (NewState != DISABLE)
2598  0015 7b01          	ld	a,(OFST+1,sp)
2599  0017 2706          	jreq	L7301
2600                     ; 592     TIM1->BKR |= TIM1_BKR_MOE;
2602  0019 721e526d      	bset	21101,#7
2604  001d 2004          	jra	L1401
2605  001f               L7301:
2606                     ; 596     TIM1->BKR &= (uint8_t)(~TIM1_BKR_MOE);
2608  001f 721f526d      	bres	21101,#7
2609  0023               L1401:
2610                     ; 598 }
2613  0023 84            	pop	a
2614  0024 81            	ret	
2722                     ; 617 void TIM1_ITConfig(TIM1_IT_TypeDef  TIM1_IT, FunctionalState NewState)
2722                     ; 618 {
2723                     .text:	section	.text,new
2724  0000               _TIM1_ITConfig:
2726  0000 89            	pushw	x
2727       00000000      OFST:	set	0
2730                     ; 620   assert_param(IS_TIM1_IT_OK(TIM1_IT));
2732  0001 9e            	ld	a,xh
2733  0002 4d            	tnz	a
2734  0003 2605          	jrne	L416
2735  0005 ae026c        	ldw	x,#620
2736  0008 ad22          	call	LC008
2737  000a               L416:
2738                     ; 621   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2740  000a 7b02          	ld	a,(OFST+2,sp)
2741  000c 2708          	jreq	L426
2742  000e 4a            	dec	a
2743  000f 2705          	jreq	L426
2744  0011 ae026d        	ldw	x,#621
2745  0014 ad16          	call	LC008
2746  0016               L426:
2747                     ; 623   if (NewState != DISABLE)
2749  0016 7b02          	ld	a,(OFST+2,sp)
2750  0018 2707          	jreq	L1111
2751                     ; 626     TIM1->IER |= (uint8_t)TIM1_IT;
2753  001a c65254        	ld	a,21076
2754  001d 1a01          	or	a,(OFST+1,sp)
2756  001f 2006          	jra	L3111
2757  0021               L1111:
2758                     ; 631     TIM1->IER &= (uint8_t)(~(uint8_t)TIM1_IT);
2760  0021 7b01          	ld	a,(OFST+1,sp)
2761  0023 43            	cpl	a
2762  0024 c45254        	and	a,21076
2763  0027               L3111:
2764  0027 c75254        	ld	21076,a
2765                     ; 633 }
2768  002a 85            	popw	x
2769  002b 81            	ret	
2770  002c               LC008:
2771  002c 89            	pushw	x
2772  002d 5f            	clrw	x
2773  002e 89            	pushw	x
2774  002f ae0000        	ldw	x,#L101
2775  0032 cd0000        	call	_assert_failed
2777  0035 5b04          	addw	sp,#4
2778  0037 81            	ret	
2802                     ; 640 void TIM1_InternalClockConfig(void)
2802                     ; 641 {
2803                     .text:	section	.text,new
2804  0000               _TIM1_InternalClockConfig:
2808                     ; 643   TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_SMS);
2810  0000 c65252        	ld	a,21074
2811  0003 a4f8          	and	a,#248
2812  0005 c75252        	ld	21074,a
2813                     ; 644 }
2816  0008 81            	ret	
2934                     ; 662 void TIM1_ETRClockMode1Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
2934                     ; 663                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
2934                     ; 664                               uint8_t ExtTRGFilter)
2934                     ; 665 {
2935                     .text:	section	.text,new
2936  0000               _TIM1_ETRClockMode1Config:
2938  0000 89            	pushw	x
2939       00000000      OFST:	set	0
2942                     ; 667   assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
2944  0001 9e            	ld	a,xh
2945  0002 4d            	tnz	a
2946  0003 2714          	jreq	L046
2947  0005 9e            	ld	a,xh
2948  0006 a110          	cp	a,#16
2949  0008 270f          	jreq	L046
2950  000a 9e            	ld	a,xh
2951  000b a120          	cp	a,#32
2952  000d 270a          	jreq	L046
2953  000f 9e            	ld	a,xh
2954  0010 a130          	cp	a,#48
2955  0012 2705          	jreq	L046
2956  0014 ae029b        	ldw	x,#667
2957  0017 ad26          	call	LC009
2958  0019               L046:
2959                     ; 668   assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
2961  0019 7b02          	ld	a,(OFST+2,sp)
2962  001b a180          	cp	a,#128
2963  001d 2709          	jreq	L056
2964  001f 7b02          	ld	a,(OFST+2,sp)
2965  0021 2705          	jreq	L056
2966  0023 ae029c        	ldw	x,#668
2967  0026 ad17          	call	LC009
2968  0028               L056:
2969                     ; 671   TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
2971  0028 7b05          	ld	a,(OFST+5,sp)
2972  002a 88            	push	a
2973  002b 7b03          	ld	a,(OFST+3,sp)
2974  002d 97            	ld	xl,a
2975  002e 7b02          	ld	a,(OFST+2,sp)
2976  0030 95            	ld	xh,a
2977  0031 cd0000        	call	_TIM1_ETRConfig
2979  0034 84            	pop	a
2980                     ; 674   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~(uint8_t)(TIM1_SMCR_SMS | TIM1_SMCR_TS )))
2980                     ; 675                          | (uint8_t)((uint8_t)TIM1_SLAVEMODE_EXTERNAL1 | TIM1_TS_ETRF ));
2982  0035 c65252        	ld	a,21074
2983  0038 aa77          	or	a,#119
2984  003a c75252        	ld	21074,a
2985                     ; 676 }
2988  003d 85            	popw	x
2989  003e 81            	ret	
2990  003f               LC009:
2991  003f 89            	pushw	x
2992  0040 5f            	clrw	x
2993  0041 89            	pushw	x
2994  0042 ae0000        	ldw	x,#L101
2995  0045 cd0000        	call	_assert_failed
2997  0048 5b04          	addw	sp,#4
2998  004a 81            	ret	
3057                     ; 694 void TIM1_ETRClockMode2Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
3057                     ; 695                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
3057                     ; 696                               uint8_t ExtTRGFilter)
3057                     ; 697 {
3058                     .text:	section	.text,new
3059  0000               _TIM1_ETRClockMode2Config:
3061  0000 89            	pushw	x
3062       00000000      OFST:	set	0
3065                     ; 699   assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
3067  0001 9e            	ld	a,xh
3068  0002 4d            	tnz	a
3069  0003 2714          	jreq	L466
3070  0005 9e            	ld	a,xh
3071  0006 a110          	cp	a,#16
3072  0008 270f          	jreq	L466
3073  000a 9e            	ld	a,xh
3074  000b a120          	cp	a,#32
3075  000d 270a          	jreq	L466
3076  000f 9e            	ld	a,xh
3077  0010 a130          	cp	a,#48
3078  0012 2705          	jreq	L466
3079  0014 ae02bb        	ldw	x,#699
3080  0017 ad22          	call	LC010
3081  0019               L466:
3082                     ; 700   assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
3084  0019 7b02          	ld	a,(OFST+2,sp)
3085  001b a180          	cp	a,#128
3086  001d 2709          	jreq	L476
3087  001f 7b02          	ld	a,(OFST+2,sp)
3088  0021 2705          	jreq	L476
3089  0023 ae02bc        	ldw	x,#700
3090  0026 ad13          	call	LC010
3091  0028               L476:
3092                     ; 703   TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
3094  0028 7b05          	ld	a,(OFST+5,sp)
3095  002a 88            	push	a
3096  002b 7b03          	ld	a,(OFST+3,sp)
3097  002d 97            	ld	xl,a
3098  002e 7b02          	ld	a,(OFST+2,sp)
3099  0030 95            	ld	xh,a
3100  0031 cd0000        	call	_TIM1_ETRConfig
3102  0034 721c5253      	bset	21075,#6
3103  0038 84            	pop	a
3104                     ; 706   TIM1->ETR |= TIM1_ETR_ECE;
3106                     ; 707 }
3109  0039 85            	popw	x
3110  003a 81            	ret	
3111  003b               LC010:
3112  003b 89            	pushw	x
3113  003c 5f            	clrw	x
3114  003d 89            	pushw	x
3115  003e ae0000        	ldw	x,#L101
3116  0041 cd0000        	call	_assert_failed
3118  0044 5b04          	addw	sp,#4
3119  0046 81            	ret	
3176                     ; 725 void TIM1_ETRConfig(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
3176                     ; 726                     TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
3176                     ; 727                     uint8_t ExtTRGFilter)
3176                     ; 728 {
3177                     .text:	section	.text,new
3178  0000               _TIM1_ETRConfig:
3180  0000 89            	pushw	x
3181       00000000      OFST:	set	0
3184                     ; 730   assert_param(IS_TIM1_EXT_TRG_FILTER_OK(ExtTRGFilter));
3186  0001 7b05          	ld	a,(OFST+5,sp)
3187  0003 a110          	cp	a,#16
3188  0005 250e          	jrult	L607
3189  0007 ae02da        	ldw	x,#730
3190  000a 89            	pushw	x
3191  000b 5f            	clrw	x
3192  000c 89            	pushw	x
3193  000d ae0000        	ldw	x,#L101
3194  0010 cd0000        	call	_assert_failed
3196  0013 5b04          	addw	sp,#4
3197  0015               L607:
3198                     ; 732   TIM1->ETR |= (uint8_t)((uint8_t)(TIM1_ExtTRGPrescaler | (uint8_t)TIM1_ExtTRGPolarity )|
3198                     ; 733                          (uint8_t)ExtTRGFilter );
3200  0015 7b01          	ld	a,(OFST+1,sp)
3201  0017 1a02          	or	a,(OFST+2,sp)
3202  0019 1a05          	or	a,(OFST+5,sp)
3203  001b ca5253        	or	a,21075
3204  001e c75253        	ld	21075,a
3205                     ; 734 }
3208  0021 85            	popw	x
3209  0022 81            	ret	
3299                     ; 751 void TIM1_TIxExternalClockConfig(TIM1_TIxExternalCLK1Source_TypeDef TIM1_TIxExternalCLKSource,
3299                     ; 752                                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
3299                     ; 753                                  uint8_t ICFilter)
3299                     ; 754 {
3300                     .text:	section	.text,new
3301  0000               _TIM1_TIxExternalClockConfig:
3303  0000 89            	pushw	x
3304       00000000      OFST:	set	0
3307                     ; 756   assert_param(IS_TIM1_TIXCLK_SOURCE_OK(TIM1_TIxExternalCLKSource));
3309  0001 9e            	ld	a,xh
3310  0002 a140          	cp	a,#64
3311  0004 270f          	jreq	L027
3312  0006 9e            	ld	a,xh
3313  0007 a160          	cp	a,#96
3314  0009 270a          	jreq	L027
3315  000b 9e            	ld	a,xh
3316  000c a150          	cp	a,#80
3317  000e 2705          	jreq	L027
3318  0010 ae02f4        	ldw	x,#756
3319  0013 ad47          	call	LC011
3320  0015               L027:
3321                     ; 757   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
3323  0015 7b02          	ld	a,(OFST+2,sp)
3324  0017 2708          	jreq	L037
3325  0019 4a            	dec	a
3326  001a 2705          	jreq	L037
3327  001c ae02f5        	ldw	x,#757
3328  001f ad3b          	call	LC011
3329  0021               L037:
3330                     ; 758   assert_param(IS_TIM1_IC_FILTER_OK(ICFilter));
3332  0021 7b05          	ld	a,(OFST+5,sp)
3333  0023 a110          	cp	a,#16
3334  0025 2505          	jrult	L637
3335  0027 ae02f6        	ldw	x,#758
3336  002a ad30          	call	LC011
3337  002c               L637:
3338                     ; 761   if (TIM1_TIxExternalCLKSource == TIM1_TIXEXTERNALCLK1SOURCE_TI2)
3340  002c 7b01          	ld	a,(OFST+1,sp)
3341  002e a160          	cp	a,#96
3342  0030 260e          	jrne	L3131
3343                     ; 763     TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
3345  0032 7b05          	ld	a,(OFST+5,sp)
3346  0034 88            	push	a
3347  0035 7b03          	ld	a,(OFST+3,sp)
3348  0037 ae0001        	ldw	x,#1
3349  003a 95            	ld	xh,a
3350  003b cd0000        	call	L5_TI2_Config
3353  003e 200c          	jra	L5131
3354  0040               L3131:
3355                     ; 767     TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
3357  0040 7b05          	ld	a,(OFST+5,sp)
3358  0042 88            	push	a
3359  0043 7b03          	ld	a,(OFST+3,sp)
3360  0045 ae0001        	ldw	x,#1
3361  0048 95            	ld	xh,a
3362  0049 cd0000        	call	L3_TI1_Config
3364  004c               L5131:
3365  004c 84            	pop	a
3366                     ; 771   TIM1_SelectInputTrigger((TIM1_TS_TypeDef)TIM1_TIxExternalCLKSource);
3368  004d 7b01          	ld	a,(OFST+1,sp)
3369  004f cd0000        	call	_TIM1_SelectInputTrigger
3371                     ; 774   TIM1->SMCR |= (uint8_t)(TIM1_SLAVEMODE_EXTERNAL1);
3373  0052 c65252        	ld	a,21074
3374  0055 aa07          	or	a,#7
3375  0057 c75252        	ld	21074,a
3376                     ; 775 }
3379  005a 85            	popw	x
3380  005b 81            	ret	
3381  005c               LC011:
3382  005c 89            	pushw	x
3383  005d 5f            	clrw	x
3384  005e 89            	pushw	x
3385  005f ae0000        	ldw	x,#L101
3386  0062 cd0000        	call	_assert_failed
3388  0065 5b04          	addw	sp,#4
3389  0067 81            	ret	
3475                     ; 787 void TIM1_SelectInputTrigger(TIM1_TS_TypeDef TIM1_InputTriggerSource)
3475                     ; 788 {
3476                     .text:	section	.text,new
3477  0000               _TIM1_SelectInputTrigger:
3479  0000 88            	push	a
3480       00000000      OFST:	set	0
3483                     ; 790   assert_param(IS_TIM1_TRIGGER_SELECTION_OK(TIM1_InputTriggerSource));
3485  0001 a140          	cp	a,#64
3486  0003 2721          	jreq	L657
3487  0005 a150          	cp	a,#80
3488  0007 271d          	jreq	L657
3489  0009 a160          	cp	a,#96
3490  000b 2719          	jreq	L657
3491  000d a170          	cp	a,#112
3492  000f 2715          	jreq	L657
3493  0011 a130          	cp	a,#48
3494  0013 2711          	jreq	L657
3495  0015 4d            	tnz	a
3496  0016 270e          	jreq	L657
3497  0018 ae0316        	ldw	x,#790
3498  001b 89            	pushw	x
3499  001c 5f            	clrw	x
3500  001d 89            	pushw	x
3501  001e ae0000        	ldw	x,#L101
3502  0021 cd0000        	call	_assert_failed
3504  0024 5b04          	addw	sp,#4
3505  0026               L657:
3506                     ; 793   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_TS)) | (uint8_t)TIM1_InputTriggerSource);
3508  0026 c65252        	ld	a,21074
3509  0029 a48f          	and	a,#143
3510  002b 1a01          	or	a,(OFST+1,sp)
3511  002d c75252        	ld	21074,a
3512                     ; 794 }
3515  0030 84            	pop	a
3516  0031 81            	ret	
3553                     ; 803 void TIM1_UpdateDisableConfig(FunctionalState NewState)
3553                     ; 804 {
3554                     .text:	section	.text,new
3555  0000               _TIM1_UpdateDisableConfig:
3557  0000 88            	push	a
3558       00000000      OFST:	set	0
3561                     ; 806   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3563  0001 4d            	tnz	a
3564  0002 2711          	jreq	L077
3565  0004 4a            	dec	a
3566  0005 270e          	jreq	L077
3567  0007 ae0326        	ldw	x,#806
3568  000a 89            	pushw	x
3569  000b 5f            	clrw	x
3570  000c 89            	pushw	x
3571  000d ae0000        	ldw	x,#L101
3572  0010 cd0000        	call	_assert_failed
3574  0013 5b04          	addw	sp,#4
3575  0015               L077:
3576                     ; 809   if (NewState != DISABLE)
3578  0015 7b01          	ld	a,(OFST+1,sp)
3579  0017 2706          	jreq	L3731
3580                     ; 811     TIM1->CR1 |= TIM1_CR1_UDIS;
3582  0019 72125250      	bset	21072,#1
3584  001d 2004          	jra	L5731
3585  001f               L3731:
3586                     ; 815     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_UDIS);
3588  001f 72135250      	bres	21072,#1
3589  0023               L5731:
3590                     ; 817 }
3593  0023 84            	pop	a
3594  0024 81            	ret	
3653                     ; 827 void TIM1_UpdateRequestConfig(TIM1_UpdateSource_TypeDef TIM1_UpdateSource)
3653                     ; 828 {
3654                     .text:	section	.text,new
3655  0000               _TIM1_UpdateRequestConfig:
3657  0000 88            	push	a
3658       00000000      OFST:	set	0
3661                     ; 830   assert_param(IS_TIM1_UPDATE_SOURCE_OK(TIM1_UpdateSource));
3663  0001 4d            	tnz	a
3664  0002 2711          	jreq	L2001
3665  0004 4a            	dec	a
3666  0005 270e          	jreq	L2001
3667  0007 ae033e        	ldw	x,#830
3668  000a 89            	pushw	x
3669  000b 5f            	clrw	x
3670  000c 89            	pushw	x
3671  000d ae0000        	ldw	x,#L101
3672  0010 cd0000        	call	_assert_failed
3674  0013 5b04          	addw	sp,#4
3675  0015               L2001:
3676                     ; 833   if (TIM1_UpdateSource != TIM1_UPDATESOURCE_GLOBAL)
3678  0015 7b01          	ld	a,(OFST+1,sp)
3679  0017 2706          	jreq	L5241
3680                     ; 835     TIM1->CR1 |= TIM1_CR1_URS;
3682  0019 72145250      	bset	21072,#2
3684  001d 2004          	jra	L7241
3685  001f               L5241:
3686                     ; 839     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_URS);
3688  001f 72155250      	bres	21072,#2
3689  0023               L7241:
3690                     ; 841 }
3693  0023 84            	pop	a
3694  0024 81            	ret	
3731                     ; 849 void TIM1_SelectHallSensor(FunctionalState NewState)
3731                     ; 850 {
3732                     .text:	section	.text,new
3733  0000               _TIM1_SelectHallSensor:
3735  0000 88            	push	a
3736       00000000      OFST:	set	0
3739                     ; 852   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3741  0001 4d            	tnz	a
3742  0002 2711          	jreq	L4101
3743  0004 4a            	dec	a
3744  0005 270e          	jreq	L4101
3745  0007 ae0354        	ldw	x,#852
3746  000a 89            	pushw	x
3747  000b 5f            	clrw	x
3748  000c 89            	pushw	x
3749  000d ae0000        	ldw	x,#L101
3750  0010 cd0000        	call	_assert_failed
3752  0013 5b04          	addw	sp,#4
3753  0015               L4101:
3754                     ; 855   if (NewState != DISABLE)
3756  0015 7b01          	ld	a,(OFST+1,sp)
3757  0017 2706          	jreq	L7441
3758                     ; 857     TIM1->CR2 |= TIM1_CR2_TI1S;
3760  0019 721e5251      	bset	21073,#7
3762  001d 2004          	jra	L1541
3763  001f               L7441:
3764                     ; 861     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_TI1S);
3766  001f 721f5251      	bres	21073,#7
3767  0023               L1541:
3768                     ; 863 }
3771  0023 84            	pop	a
3772  0024 81            	ret	
3830                     ; 873 void TIM1_SelectOnePulseMode(TIM1_OPMode_TypeDef TIM1_OPMode)
3830                     ; 874 {
3831                     .text:	section	.text,new
3832  0000               _TIM1_SelectOnePulseMode:
3834  0000 88            	push	a
3835       00000000      OFST:	set	0
3838                     ; 876   assert_param(IS_TIM1_OPM_MODE_OK(TIM1_OPMode));
3840  0001 a101          	cp	a,#1
3841  0003 2711          	jreq	L6201
3842  0005 4d            	tnz	a
3843  0006 270e          	jreq	L6201
3844  0008 ae036c        	ldw	x,#876
3845  000b 89            	pushw	x
3846  000c 5f            	clrw	x
3847  000d 89            	pushw	x
3848  000e ae0000        	ldw	x,#L101
3849  0011 cd0000        	call	_assert_failed
3851  0014 5b04          	addw	sp,#4
3852  0016               L6201:
3853                     ; 879   if (TIM1_OPMode != TIM1_OPMODE_REPETITIVE)
3855  0016 7b01          	ld	a,(OFST+1,sp)
3856  0018 2706          	jreq	L1051
3857                     ; 881     TIM1->CR1 |= TIM1_CR1_OPM;
3859  001a 72165250      	bset	21072,#3
3861  001e 2004          	jra	L3051
3862  0020               L1051:
3863                     ; 885     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_OPM);
3865  0020 72175250      	bres	21072,#3
3866  0024               L3051:
3867                     ; 888 }
3870  0024 84            	pop	a
3871  0025 81            	ret	
3970                     ; 903 void TIM1_SelectOutputTrigger(TIM1_TRGOSource_TypeDef TIM1_TRGOSource)
3970                     ; 904 {
3971                     .text:	section	.text,new
3972  0000               _TIM1_SelectOutputTrigger:
3974  0000 88            	push	a
3975       00000000      OFST:	set	0
3978                     ; 906   assert_param(IS_TIM1_TRGO_SOURCE_OK(TIM1_TRGOSource));
3980  0001 4d            	tnz	a
3981  0002 2726          	jreq	L0401
3982  0004 a110          	cp	a,#16
3983  0006 2722          	jreq	L0401
3984  0008 a120          	cp	a,#32
3985  000a 271e          	jreq	L0401
3986  000c a130          	cp	a,#48
3987  000e 271a          	jreq	L0401
3988  0010 a140          	cp	a,#64
3989  0012 2716          	jreq	L0401
3990  0014 a150          	cp	a,#80
3991  0016 2712          	jreq	L0401
3992  0018 a160          	cp	a,#96
3993  001a 270e          	jreq	L0401
3994  001c ae038a        	ldw	x,#906
3995  001f 89            	pushw	x
3996  0020 5f            	clrw	x
3997  0021 89            	pushw	x
3998  0022 ae0000        	ldw	x,#L101
3999  0025 cd0000        	call	_assert_failed
4001  0028 5b04          	addw	sp,#4
4002  002a               L0401:
4003                     ; 909   TIM1->CR2 = (uint8_t)((uint8_t)(TIM1->CR2 & (uint8_t)(~TIM1_CR2_MMS)) | 
4003                     ; 910                         (uint8_t) TIM1_TRGOSource);
4005  002a c65251        	ld	a,21073
4006  002d a48f          	and	a,#143
4007  002f 1a01          	or	a,(OFST+1,sp)
4008  0031 c75251        	ld	21073,a
4009                     ; 911 }
4012  0034 84            	pop	a
4013  0035 81            	ret	
4088                     ; 923 void TIM1_SelectSlaveMode(TIM1_SlaveMode_TypeDef TIM1_SlaveMode)
4088                     ; 924 {
4089                     .text:	section	.text,new
4090  0000               _TIM1_SelectSlaveMode:
4092  0000 88            	push	a
4093       00000000      OFST:	set	0
4096                     ; 926   assert_param(IS_TIM1_SLAVE_MODE_OK(TIM1_SlaveMode));
4098  0001 a104          	cp	a,#4
4099  0003 271a          	jreq	L2501
4100  0005 a105          	cp	a,#5
4101  0007 2716          	jreq	L2501
4102  0009 a106          	cp	a,#6
4103  000b 2712          	jreq	L2501
4104  000d a107          	cp	a,#7
4105  000f 270e          	jreq	L2501
4106  0011 ae039e        	ldw	x,#926
4107  0014 89            	pushw	x
4108  0015 5f            	clrw	x
4109  0016 89            	pushw	x
4110  0017 ae0000        	ldw	x,#L101
4111  001a cd0000        	call	_assert_failed
4113  001d 5b04          	addw	sp,#4
4114  001f               L2501:
4115                     ; 929   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_SMS)) |
4115                     ; 930                          (uint8_t)TIM1_SlaveMode);
4117  001f c65252        	ld	a,21074
4118  0022 a4f8          	and	a,#248
4119  0024 1a01          	or	a,(OFST+1,sp)
4120  0026 c75252        	ld	21074,a
4121                     ; 931 }
4124  0029 84            	pop	a
4125  002a 81            	ret	
4162                     ; 939 void TIM1_SelectMasterSlaveMode(FunctionalState NewState)
4162                     ; 940 {
4163                     .text:	section	.text,new
4164  0000               _TIM1_SelectMasterSlaveMode:
4166  0000 88            	push	a
4167       00000000      OFST:	set	0
4170                     ; 942   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4172  0001 4d            	tnz	a
4173  0002 2711          	jreq	L4601
4174  0004 4a            	dec	a
4175  0005 270e          	jreq	L4601
4176  0007 ae03ae        	ldw	x,#942
4177  000a 89            	pushw	x
4178  000b 5f            	clrw	x
4179  000c 89            	pushw	x
4180  000d ae0000        	ldw	x,#L101
4181  0010 cd0000        	call	_assert_failed
4183  0013 5b04          	addw	sp,#4
4184  0015               L4601:
4185                     ; 945   if (NewState != DISABLE)
4187  0015 7b01          	ld	a,(OFST+1,sp)
4188  0017 2706          	jreq	L5161
4189                     ; 947     TIM1->SMCR |= TIM1_SMCR_MSM;
4191  0019 721e5252      	bset	21074,#7
4193  001d 2004          	jra	L7161
4194  001f               L5161:
4195                     ; 951     TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_MSM);
4197  001f 721f5252      	bres	21074,#7
4198  0023               L7161:
4199                     ; 953 }
4202  0023 84            	pop	a
4203  0024 81            	ret	
4290                     ; 975 void TIM1_EncoderInterfaceConfig(TIM1_EncoderMode_TypeDef TIM1_EncoderMode,
4290                     ; 976                                  TIM1_ICPolarity_TypeDef TIM1_IC1Polarity,
4290                     ; 977                                  TIM1_ICPolarity_TypeDef TIM1_IC2Polarity)
4290                     ; 978 {
4291                     .text:	section	.text,new
4292  0000               _TIM1_EncoderInterfaceConfig:
4294  0000 89            	pushw	x
4295       00000000      OFST:	set	0
4298                     ; 980   assert_param(IS_TIM1_ENCODER_MODE_OK(TIM1_EncoderMode));
4300  0001 9e            	ld	a,xh
4301  0002 4a            	dec	a
4302  0003 270f          	jreq	L6701
4303  0005 9e            	ld	a,xh
4304  0006 a102          	cp	a,#2
4305  0008 270a          	jreq	L6701
4306  000a 9e            	ld	a,xh
4307  000b a103          	cp	a,#3
4308  000d 2705          	jreq	L6701
4309  000f ae03d4        	ldw	x,#980
4310  0012 ad54          	call	LC012
4311  0014               L6701:
4312                     ; 981   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC1Polarity));
4314  0014 7b02          	ld	a,(OFST+2,sp)
4315  0016 2708          	jreq	L6011
4316  0018 4a            	dec	a
4317  0019 2705          	jreq	L6011
4318  001b ae03d5        	ldw	x,#981
4319  001e ad48          	call	LC012
4320  0020               L6011:
4321                     ; 982   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC2Polarity));
4323  0020 7b05          	ld	a,(OFST+5,sp)
4324  0022 2708          	jreq	L6111
4325  0024 4a            	dec	a
4326  0025 2705          	jreq	L6111
4327  0027 ae03d6        	ldw	x,#982
4328  002a ad3c          	call	LC012
4329  002c               L6111:
4330                     ; 985   if (TIM1_IC1Polarity != TIM1_ICPOLARITY_RISING)
4332  002c 7b02          	ld	a,(OFST+2,sp)
4333  002e 2706          	jreq	L1661
4334                     ; 987     TIM1->CCER1 |= TIM1_CCER1_CC1P;
4336  0030 7212525c      	bset	21084,#1
4338  0034 2004          	jra	L3661
4339  0036               L1661:
4340                     ; 991     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
4342  0036 7213525c      	bres	21084,#1
4343  003a               L3661:
4344                     ; 994   if (TIM1_IC2Polarity != TIM1_ICPOLARITY_RISING)
4346  003a 7b05          	ld	a,(OFST+5,sp)
4347  003c 2706          	jreq	L5661
4348                     ; 996     TIM1->CCER1 |= TIM1_CCER1_CC2P;
4350  003e 721a525c      	bset	21084,#5
4352  0042 2004          	jra	L7661
4353  0044               L5661:
4354                     ; 1000     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
4356  0044 721b525c      	bres	21084,#5
4357  0048               L7661:
4358                     ; 1003   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(TIM1_SMCR_MSM | TIM1_SMCR_TS))
4358                     ; 1004                          | (uint8_t) TIM1_EncoderMode);
4360  0048 c65252        	ld	a,21074
4361  004b a4f0          	and	a,#240
4362  004d 1a01          	or	a,(OFST+1,sp)
4363  004f c75252        	ld	21074,a
4364                     ; 1007   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_CCxS)) 
4364                     ; 1008                           | (uint8_t) CCMR_TIxDirect_Set);
4366  0052 c65258        	ld	a,21080
4367  0055 a4fc          	and	a,#252
4368  0057 aa01          	or	a,#1
4369  0059 c75258        	ld	21080,a
4370                     ; 1009   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_CCxS))
4370                     ; 1010                           | (uint8_t) CCMR_TIxDirect_Set);
4372  005c c65259        	ld	a,21081
4373  005f a4fc          	and	a,#252
4374  0061 aa01          	or	a,#1
4375  0063 c75259        	ld	21081,a
4376                     ; 1011 }
4379  0066 85            	popw	x
4380  0067 81            	ret	
4381  0068               LC012:
4382  0068 89            	pushw	x
4383  0069 5f            	clrw	x
4384  006a 89            	pushw	x
4385  006b ae0000        	ldw	x,#L101
4386  006e cd0000        	call	_assert_failed
4388  0071 5b04          	addw	sp,#4
4389  0073 81            	ret	
4457                     ; 1023 void TIM1_PrescalerConfig(uint16_t Prescaler,
4457                     ; 1024                           TIM1_PSCReloadMode_TypeDef TIM1_PSCReloadMode)
4457                     ; 1025 {
4458                     .text:	section	.text,new
4459  0000               _TIM1_PrescalerConfig:
4461  0000 89            	pushw	x
4462       00000000      OFST:	set	0
4465                     ; 1027   assert_param(IS_TIM1_PRESCALER_RELOAD_OK(TIM1_PSCReloadMode));
4467  0001 7b05          	ld	a,(OFST+5,sp)
4468  0003 2711          	jreq	L0311
4469  0005 4a            	dec	a
4470  0006 270e          	jreq	L0311
4471  0008 ae0403        	ldw	x,#1027
4472  000b 89            	pushw	x
4473  000c 5f            	clrw	x
4474  000d 89            	pushw	x
4475  000e ae0000        	ldw	x,#L101
4476  0011 cd0000        	call	_assert_failed
4478  0014 5b04          	addw	sp,#4
4479  0016               L0311:
4480                     ; 1030   TIM1->PSCRH = (uint8_t)(Prescaler >> 8);
4482  0016 7b01          	ld	a,(OFST+1,sp)
4483  0018 c75260        	ld	21088,a
4484                     ; 1031   TIM1->PSCRL = (uint8_t)(Prescaler);
4486  001b 7b02          	ld	a,(OFST+2,sp)
4487  001d c75261        	ld	21089,a
4488                     ; 1034   TIM1->EGR = (uint8_t)TIM1_PSCReloadMode;
4490  0020 7b05          	ld	a,(OFST+5,sp)
4491  0022 c75257        	ld	21079,a
4492                     ; 1035 }
4495  0025 85            	popw	x
4496  0026 81            	ret	
4533                     ; 1048 void TIM1_CounterModeConfig(TIM1_CounterMode_TypeDef TIM1_CounterMode)
4533                     ; 1049 {
4534                     .text:	section	.text,new
4535  0000               _TIM1_CounterModeConfig:
4537  0000 88            	push	a
4538       00000000      OFST:	set	0
4541                     ; 1051   assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
4543  0001 4d            	tnz	a
4544  0002 271e          	jreq	L2411
4545  0004 a110          	cp	a,#16
4546  0006 271a          	jreq	L2411
4547  0008 a120          	cp	a,#32
4548  000a 2716          	jreq	L2411
4549  000c a140          	cp	a,#64
4550  000e 2712          	jreq	L2411
4551  0010 a160          	cp	a,#96
4552  0012 270e          	jreq	L2411
4553  0014 ae041b        	ldw	x,#1051
4554  0017 89            	pushw	x
4555  0018 5f            	clrw	x
4556  0019 89            	pushw	x
4557  001a ae0000        	ldw	x,#L101
4558  001d cd0000        	call	_assert_failed
4560  0020 5b04          	addw	sp,#4
4561  0022               L2411:
4562                     ; 1055   TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)((uint8_t)(~TIM1_CR1_CMS) & (uint8_t)(~TIM1_CR1_DIR)))
4562                     ; 1056                         | (uint8_t)TIM1_CounterMode);
4564  0022 c65250        	ld	a,21072
4565  0025 a48f          	and	a,#143
4566  0027 1a01          	or	a,(OFST+1,sp)
4567  0029 c75250        	ld	21072,a
4568                     ; 1057 }
4571  002c 84            	pop	a
4572  002d 81            	ret	
4631                     ; 1067 void TIM1_ForcedOC1Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
4631                     ; 1068 {
4632                     .text:	section	.text,new
4633  0000               _TIM1_ForcedOC1Config:
4635  0000 88            	push	a
4636       00000000      OFST:	set	0
4639                     ; 1070   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
4641  0001 a150          	cp	a,#80
4642  0003 2712          	jreq	L4511
4643  0005 a140          	cp	a,#64
4644  0007 270e          	jreq	L4511
4645  0009 ae042e        	ldw	x,#1070
4646  000c 89            	pushw	x
4647  000d 5f            	clrw	x
4648  000e 89            	pushw	x
4649  000f ae0000        	ldw	x,#L101
4650  0012 cd0000        	call	_assert_failed
4652  0015 5b04          	addw	sp,#4
4653  0017               L4511:
4654                     ; 1073   TIM1->CCMR1 =  (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM))|
4654                     ; 1074                            (uint8_t)TIM1_ForcedAction);
4656  0017 c65258        	ld	a,21080
4657  001a a48f          	and	a,#143
4658  001c 1a01          	or	a,(OFST+1,sp)
4659  001e c75258        	ld	21080,a
4660                     ; 1075 }
4663  0021 84            	pop	a
4664  0022 81            	ret	
4701                     ; 1085 void TIM1_ForcedOC2Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
4701                     ; 1086 {
4702                     .text:	section	.text,new
4703  0000               _TIM1_ForcedOC2Config:
4705  0000 88            	push	a
4706       00000000      OFST:	set	0
4709                     ; 1088   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
4711  0001 a150          	cp	a,#80
4712  0003 2712          	jreq	L6611
4713  0005 a140          	cp	a,#64
4714  0007 270e          	jreq	L6611
4715  0009 ae0440        	ldw	x,#1088
4716  000c 89            	pushw	x
4717  000d 5f            	clrw	x
4718  000e 89            	pushw	x
4719  000f ae0000        	ldw	x,#L101
4720  0012 cd0000        	call	_assert_failed
4722  0015 5b04          	addw	sp,#4
4723  0017               L6611:
4724                     ; 1091   TIM1->CCMR2  =  (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
4724                     ; 1092                             | (uint8_t)TIM1_ForcedAction);
4726  0017 c65259        	ld	a,21081
4727  001a a48f          	and	a,#143
4728  001c 1a01          	or	a,(OFST+1,sp)
4729  001e c75259        	ld	21081,a
4730                     ; 1093 }
4733  0021 84            	pop	a
4734  0022 81            	ret	
4771                     ; 1104 void TIM1_ForcedOC3Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
4771                     ; 1105 {
4772                     .text:	section	.text,new
4773  0000               _TIM1_ForcedOC3Config:
4775  0000 88            	push	a
4776       00000000      OFST:	set	0
4779                     ; 1107   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
4781  0001 a150          	cp	a,#80
4782  0003 2712          	jreq	L0021
4783  0005 a140          	cp	a,#64
4784  0007 270e          	jreq	L0021
4785  0009 ae0453        	ldw	x,#1107
4786  000c 89            	pushw	x
4787  000d 5f            	clrw	x
4788  000e 89            	pushw	x
4789  000f ae0000        	ldw	x,#L101
4790  0012 cd0000        	call	_assert_failed
4792  0015 5b04          	addw	sp,#4
4793  0017               L0021:
4794                     ; 1110   TIM1->CCMR3  =  (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM))  
4794                     ; 1111                             | (uint8_t)TIM1_ForcedAction);
4796  0017 c6525a        	ld	a,21082
4797  001a a48f          	and	a,#143
4798  001c 1a01          	or	a,(OFST+1,sp)
4799  001e c7525a        	ld	21082,a
4800                     ; 1112 }
4803  0021 84            	pop	a
4804  0022 81            	ret	
4841                     ; 1123 void TIM1_ForcedOC4Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
4841                     ; 1124 {
4842                     .text:	section	.text,new
4843  0000               _TIM1_ForcedOC4Config:
4845  0000 88            	push	a
4846       00000000      OFST:	set	0
4849                     ; 1126   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
4851  0001 a150          	cp	a,#80
4852  0003 2712          	jreq	L2121
4853  0005 a140          	cp	a,#64
4854  0007 270e          	jreq	L2121
4855  0009 ae0466        	ldw	x,#1126
4856  000c 89            	pushw	x
4857  000d 5f            	clrw	x
4858  000e 89            	pushw	x
4859  000f ae0000        	ldw	x,#L101
4860  0012 cd0000        	call	_assert_failed
4862  0015 5b04          	addw	sp,#4
4863  0017               L2121:
4864                     ; 1129   TIM1->CCMR4  =  (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
4864                     ; 1130                             | (uint8_t)TIM1_ForcedAction);
4866  0017 c6525b        	ld	a,21083
4867  001a a48f          	and	a,#143
4868  001c 1a01          	or	a,(OFST+1,sp)
4869  001e c7525b        	ld	21083,a
4870                     ; 1131 }
4873  0021 84            	pop	a
4874  0022 81            	ret	
4911                     ; 1139 void TIM1_ARRPreloadConfig(FunctionalState NewState)
4911                     ; 1140 {
4912                     .text:	section	.text,new
4913  0000               _TIM1_ARRPreloadConfig:
4915  0000 88            	push	a
4916       00000000      OFST:	set	0
4919                     ; 1142   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4921  0001 4d            	tnz	a
4922  0002 2711          	jreq	L4221
4923  0004 4a            	dec	a
4924  0005 270e          	jreq	L4221
4925  0007 ae0476        	ldw	x,#1142
4926  000a 89            	pushw	x
4927  000b 5f            	clrw	x
4928  000c 89            	pushw	x
4929  000d ae0000        	ldw	x,#L101
4930  0010 cd0000        	call	_assert_failed
4932  0013 5b04          	addw	sp,#4
4933  0015               L4221:
4934                     ; 1145   if (NewState != DISABLE)
4936  0015 7b01          	ld	a,(OFST+1,sp)
4937  0017 2706          	jreq	L7502
4938                     ; 1147     TIM1->CR1 |= TIM1_CR1_ARPE;
4940  0019 721e5250      	bset	21072,#7
4942  001d 2004          	jra	L1602
4943  001f               L7502:
4944                     ; 1151     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_ARPE);
4946  001f 721f5250      	bres	21072,#7
4947  0023               L1602:
4948                     ; 1153 }
4951  0023 84            	pop	a
4952  0024 81            	ret	
4988                     ; 1161 void TIM1_SelectCOM(FunctionalState NewState)
4988                     ; 1162 {
4989                     .text:	section	.text,new
4990  0000               _TIM1_SelectCOM:
4992  0000 88            	push	a
4993       00000000      OFST:	set	0
4996                     ; 1164   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4998  0001 4d            	tnz	a
4999  0002 2711          	jreq	L6321
5000  0004 4a            	dec	a
5001  0005 270e          	jreq	L6321
5002  0007 ae048c        	ldw	x,#1164
5003  000a 89            	pushw	x
5004  000b 5f            	clrw	x
5005  000c 89            	pushw	x
5006  000d ae0000        	ldw	x,#L101
5007  0010 cd0000        	call	_assert_failed
5009  0013 5b04          	addw	sp,#4
5010  0015               L6321:
5011                     ; 1167   if (NewState != DISABLE)
5013  0015 7b01          	ld	a,(OFST+1,sp)
5014  0017 2706          	jreq	L1012
5015                     ; 1169     TIM1->CR2 |= TIM1_CR2_COMS;
5017  0019 72145251      	bset	21073,#2
5019  001d 2004          	jra	L3012
5020  001f               L1012:
5021                     ; 1173     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_COMS);
5023  001f 72155251      	bres	21073,#2
5024  0023               L3012:
5025                     ; 1175 }
5028  0023 84            	pop	a
5029  0024 81            	ret	
5066                     ; 1183 void TIM1_CCPreloadControl(FunctionalState NewState)
5066                     ; 1184 {
5067                     .text:	section	.text,new
5068  0000               _TIM1_CCPreloadControl:
5070  0000 88            	push	a
5071       00000000      OFST:	set	0
5074                     ; 1186   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5076  0001 4d            	tnz	a
5077  0002 2711          	jreq	L0521
5078  0004 4a            	dec	a
5079  0005 270e          	jreq	L0521
5080  0007 ae04a2        	ldw	x,#1186
5081  000a 89            	pushw	x
5082  000b 5f            	clrw	x
5083  000c 89            	pushw	x
5084  000d ae0000        	ldw	x,#L101
5085  0010 cd0000        	call	_assert_failed
5087  0013 5b04          	addw	sp,#4
5088  0015               L0521:
5089                     ; 1189   if (NewState != DISABLE)
5091  0015 7b01          	ld	a,(OFST+1,sp)
5092  0017 2706          	jreq	L3212
5093                     ; 1191     TIM1->CR2 |= TIM1_CR2_CCPC;
5095  0019 72105251      	bset	21073,#0
5097  001d 2004          	jra	L5212
5098  001f               L3212:
5099                     ; 1195     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_CCPC);
5101  001f 72115251      	bres	21073,#0
5102  0023               L5212:
5103                     ; 1197 }
5106  0023 84            	pop	a
5107  0024 81            	ret	
5144                     ; 1205 void TIM1_OC1PreloadConfig(FunctionalState NewState)
5144                     ; 1206 {
5145                     .text:	section	.text,new
5146  0000               _TIM1_OC1PreloadConfig:
5148  0000 88            	push	a
5149       00000000      OFST:	set	0
5152                     ; 1208   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5154  0001 4d            	tnz	a
5155  0002 2711          	jreq	L2621
5156  0004 4a            	dec	a
5157  0005 270e          	jreq	L2621
5158  0007 ae04b8        	ldw	x,#1208
5159  000a 89            	pushw	x
5160  000b 5f            	clrw	x
5161  000c 89            	pushw	x
5162  000d ae0000        	ldw	x,#L101
5163  0010 cd0000        	call	_assert_failed
5165  0013 5b04          	addw	sp,#4
5166  0015               L2621:
5167                     ; 1211   if (NewState != DISABLE)
5169  0015 7b01          	ld	a,(OFST+1,sp)
5170  0017 2706          	jreq	L5412
5171                     ; 1213     TIM1->CCMR1 |= TIM1_CCMR_OCxPE;
5173  0019 72165258      	bset	21080,#3
5175  001d 2004          	jra	L7412
5176  001f               L5412:
5177                     ; 1217     TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5179  001f 72175258      	bres	21080,#3
5180  0023               L7412:
5181                     ; 1219 }
5184  0023 84            	pop	a
5185  0024 81            	ret	
5222                     ; 1227 void TIM1_OC2PreloadConfig(FunctionalState NewState)
5222                     ; 1228 {
5223                     .text:	section	.text,new
5224  0000               _TIM1_OC2PreloadConfig:
5226  0000 88            	push	a
5227       00000000      OFST:	set	0
5230                     ; 1230   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5232  0001 4d            	tnz	a
5233  0002 2711          	jreq	L4721
5234  0004 4a            	dec	a
5235  0005 270e          	jreq	L4721
5236  0007 ae04ce        	ldw	x,#1230
5237  000a 89            	pushw	x
5238  000b 5f            	clrw	x
5239  000c 89            	pushw	x
5240  000d ae0000        	ldw	x,#L101
5241  0010 cd0000        	call	_assert_failed
5243  0013 5b04          	addw	sp,#4
5244  0015               L4721:
5245                     ; 1233   if (NewState != DISABLE)
5247  0015 7b01          	ld	a,(OFST+1,sp)
5248  0017 2706          	jreq	L7612
5249                     ; 1235     TIM1->CCMR2 |= TIM1_CCMR_OCxPE;
5251  0019 72165259      	bset	21081,#3
5253  001d 2004          	jra	L1712
5254  001f               L7612:
5255                     ; 1239     TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5257  001f 72175259      	bres	21081,#3
5258  0023               L1712:
5259                     ; 1241 }
5262  0023 84            	pop	a
5263  0024 81            	ret	
5300                     ; 1249 void TIM1_OC3PreloadConfig(FunctionalState NewState)
5300                     ; 1250 {
5301                     .text:	section	.text,new
5302  0000               _TIM1_OC3PreloadConfig:
5304  0000 88            	push	a
5305       00000000      OFST:	set	0
5308                     ; 1252   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5310  0001 4d            	tnz	a
5311  0002 2711          	jreq	L6031
5312  0004 4a            	dec	a
5313  0005 270e          	jreq	L6031
5314  0007 ae04e4        	ldw	x,#1252
5315  000a 89            	pushw	x
5316  000b 5f            	clrw	x
5317  000c 89            	pushw	x
5318  000d ae0000        	ldw	x,#L101
5319  0010 cd0000        	call	_assert_failed
5321  0013 5b04          	addw	sp,#4
5322  0015               L6031:
5323                     ; 1255   if (NewState != DISABLE)
5325  0015 7b01          	ld	a,(OFST+1,sp)
5326  0017 2706          	jreq	L1122
5327                     ; 1257     TIM1->CCMR3 |= TIM1_CCMR_OCxPE;
5329  0019 7216525a      	bset	21082,#3
5331  001d 2004          	jra	L3122
5332  001f               L1122:
5333                     ; 1261     TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5335  001f 7217525a      	bres	21082,#3
5336  0023               L3122:
5337                     ; 1263 }
5340  0023 84            	pop	a
5341  0024 81            	ret	
5378                     ; 1271 void TIM1_OC4PreloadConfig(FunctionalState NewState)
5378                     ; 1272 {
5379                     .text:	section	.text,new
5380  0000               _TIM1_OC4PreloadConfig:
5382  0000 88            	push	a
5383       00000000      OFST:	set	0
5386                     ; 1274   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5388  0001 4d            	tnz	a
5389  0002 2711          	jreq	L0231
5390  0004 4a            	dec	a
5391  0005 270e          	jreq	L0231
5392  0007 ae04fa        	ldw	x,#1274
5393  000a 89            	pushw	x
5394  000b 5f            	clrw	x
5395  000c 89            	pushw	x
5396  000d ae0000        	ldw	x,#L101
5397  0010 cd0000        	call	_assert_failed
5399  0013 5b04          	addw	sp,#4
5400  0015               L0231:
5401                     ; 1277   if (NewState != DISABLE)
5403  0015 7b01          	ld	a,(OFST+1,sp)
5404  0017 2706          	jreq	L3322
5405                     ; 1279     TIM1->CCMR4 |= TIM1_CCMR_OCxPE;
5407  0019 7216525b      	bset	21083,#3
5409  001d 2004          	jra	L5322
5410  001f               L3322:
5411                     ; 1283     TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5413  001f 7217525b      	bres	21083,#3
5414  0023               L5322:
5415                     ; 1285 }
5418  0023 84            	pop	a
5419  0024 81            	ret	
5455                     ; 1293 void TIM1_OC1FastConfig(FunctionalState NewState)
5455                     ; 1294 {
5456                     .text:	section	.text,new
5457  0000               _TIM1_OC1FastConfig:
5459  0000 88            	push	a
5460       00000000      OFST:	set	0
5463                     ; 1296   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5465  0001 4d            	tnz	a
5466  0002 2711          	jreq	L2331
5467  0004 4a            	dec	a
5468  0005 270e          	jreq	L2331
5469  0007 ae0510        	ldw	x,#1296
5470  000a 89            	pushw	x
5471  000b 5f            	clrw	x
5472  000c 89            	pushw	x
5473  000d ae0000        	ldw	x,#L101
5474  0010 cd0000        	call	_assert_failed
5476  0013 5b04          	addw	sp,#4
5477  0015               L2331:
5478                     ; 1299   if (NewState != DISABLE)
5480  0015 7b01          	ld	a,(OFST+1,sp)
5481  0017 2706          	jreq	L5522
5482                     ; 1301     TIM1->CCMR1 |= TIM1_CCMR_OCxFE;
5484  0019 72145258      	bset	21080,#2
5486  001d 2004          	jra	L7522
5487  001f               L5522:
5488                     ; 1305     TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxFE);
5490  001f 72155258      	bres	21080,#2
5491  0023               L7522:
5492                     ; 1307 }
5495  0023 84            	pop	a
5496  0024 81            	ret	
5532                     ; 1315 void TIM1_OC2FastConfig(FunctionalState NewState)
5532                     ; 1316 {
5533                     .text:	section	.text,new
5534  0000               _TIM1_OC2FastConfig:
5536  0000 88            	push	a
5537       00000000      OFST:	set	0
5540                     ; 1318   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5542  0001 4d            	tnz	a
5543  0002 2711          	jreq	L4431
5544  0004 4a            	dec	a
5545  0005 270e          	jreq	L4431
5546  0007 ae0526        	ldw	x,#1318
5547  000a 89            	pushw	x
5548  000b 5f            	clrw	x
5549  000c 89            	pushw	x
5550  000d ae0000        	ldw	x,#L101
5551  0010 cd0000        	call	_assert_failed
5553  0013 5b04          	addw	sp,#4
5554  0015               L4431:
5555                     ; 1321   if (NewState != DISABLE)
5557  0015 7b01          	ld	a,(OFST+1,sp)
5558  0017 2706          	jreq	L7722
5559                     ; 1323     TIM1->CCMR2 |= TIM1_CCMR_OCxFE;
5561  0019 72145259      	bset	21081,#2
5563  001d 2004          	jra	L1032
5564  001f               L7722:
5565                     ; 1327     TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxFE);
5567  001f 72155259      	bres	21081,#2
5568  0023               L1032:
5569                     ; 1329 }
5572  0023 84            	pop	a
5573  0024 81            	ret	
5609                     ; 1337 void TIM1_OC3FastConfig(FunctionalState NewState)
5609                     ; 1338 {
5610                     .text:	section	.text,new
5611  0000               _TIM1_OC3FastConfig:
5613  0000 88            	push	a
5614       00000000      OFST:	set	0
5617                     ; 1340   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5619  0001 4d            	tnz	a
5620  0002 2711          	jreq	L6531
5621  0004 4a            	dec	a
5622  0005 270e          	jreq	L6531
5623  0007 ae053c        	ldw	x,#1340
5624  000a 89            	pushw	x
5625  000b 5f            	clrw	x
5626  000c 89            	pushw	x
5627  000d ae0000        	ldw	x,#L101
5628  0010 cd0000        	call	_assert_failed
5630  0013 5b04          	addw	sp,#4
5631  0015               L6531:
5632                     ; 1343   if (NewState != DISABLE)
5634  0015 7b01          	ld	a,(OFST+1,sp)
5635  0017 2706          	jreq	L1232
5636                     ; 1345     TIM1->CCMR3 |= TIM1_CCMR_OCxFE;
5638  0019 7214525a      	bset	21082,#2
5640  001d 2004          	jra	L3232
5641  001f               L1232:
5642                     ; 1349     TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxFE);
5644  001f 7215525a      	bres	21082,#2
5645  0023               L3232:
5646                     ; 1351 }
5649  0023 84            	pop	a
5650  0024 81            	ret	
5686                     ; 1359 void TIM1_OC4FastConfig(FunctionalState NewState)
5686                     ; 1360 {
5687                     .text:	section	.text,new
5688  0000               _TIM1_OC4FastConfig:
5690  0000 88            	push	a
5691       00000000      OFST:	set	0
5694                     ; 1362   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5696  0001 4d            	tnz	a
5697  0002 2711          	jreq	L0731
5698  0004 4a            	dec	a
5699  0005 270e          	jreq	L0731
5700  0007 ae0552        	ldw	x,#1362
5701  000a 89            	pushw	x
5702  000b 5f            	clrw	x
5703  000c 89            	pushw	x
5704  000d ae0000        	ldw	x,#L101
5705  0010 cd0000        	call	_assert_failed
5707  0013 5b04          	addw	sp,#4
5708  0015               L0731:
5709                     ; 1365   if (NewState != DISABLE)
5711  0015 7b01          	ld	a,(OFST+1,sp)
5712  0017 2706          	jreq	L3432
5713                     ; 1367     TIM1->CCMR4 |= TIM1_CCMR_OCxFE;
5715  0019 7214525b      	bset	21083,#2
5717  001d 2004          	jra	L5432
5718  001f               L3432:
5719                     ; 1371     TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxFE);
5721  001f 7215525b      	bres	21083,#2
5722  0023               L5432:
5723                     ; 1373 }
5726  0023 84            	pop	a
5727  0024 81            	ret	
5833                     ; 1389 void TIM1_GenerateEvent(TIM1_EventSource_TypeDef TIM1_EventSource)
5833                     ; 1390 {
5834                     .text:	section	.text,new
5835  0000               _TIM1_GenerateEvent:
5837  0000 88            	push	a
5838       00000000      OFST:	set	0
5841                     ; 1392   assert_param(IS_TIM1_EVENT_SOURCE_OK(TIM1_EventSource));
5843  0001 4d            	tnz	a
5844  0002 260e          	jrne	L0041
5845  0004 ae0570        	ldw	x,#1392
5846  0007 89            	pushw	x
5847  0008 5f            	clrw	x
5848  0009 89            	pushw	x
5849  000a ae0000        	ldw	x,#L101
5850  000d cd0000        	call	_assert_failed
5852  0010 5b04          	addw	sp,#4
5853  0012               L0041:
5854                     ; 1395   TIM1->EGR = (uint8_t)TIM1_EventSource;
5856  0012 7b01          	ld	a,(OFST+1,sp)
5857  0014 c75257        	ld	21079,a
5858                     ; 1396 }
5861  0017 84            	pop	a
5862  0018 81            	ret	
5899                     ; 1406 void TIM1_OC1PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
5899                     ; 1407 {
5900                     .text:	section	.text,new
5901  0000               _TIM1_OC1PolarityConfig:
5903  0000 88            	push	a
5904       00000000      OFST:	set	0
5907                     ; 1409   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
5909  0001 4d            	tnz	a
5910  0002 2712          	jreq	L2141
5911  0004 a122          	cp	a,#34
5912  0006 270e          	jreq	L2141
5913  0008 ae0581        	ldw	x,#1409
5914  000b 89            	pushw	x
5915  000c 5f            	clrw	x
5916  000d 89            	pushw	x
5917  000e ae0000        	ldw	x,#L101
5918  0011 cd0000        	call	_assert_failed
5920  0014 5b04          	addw	sp,#4
5921  0016               L2141:
5922                     ; 1412   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
5924  0016 7b01          	ld	a,(OFST+1,sp)
5925  0018 2706          	jreq	L7242
5926                     ; 1414     TIM1->CCER1 |= TIM1_CCER1_CC1P;
5928  001a 7212525c      	bset	21084,#1
5930  001e 2004          	jra	L1342
5931  0020               L7242:
5932                     ; 1418     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
5934  0020 7213525c      	bres	21084,#1
5935  0024               L1342:
5936                     ; 1420 }
5939  0024 84            	pop	a
5940  0025 81            	ret	
5977                     ; 1430 void TIM1_OC1NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
5977                     ; 1431 {
5978                     .text:	section	.text,new
5979  0000               _TIM1_OC1NPolarityConfig:
5981  0000 88            	push	a
5982       00000000      OFST:	set	0
5985                     ; 1433   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
5987  0001 4d            	tnz	a
5988  0002 2712          	jreq	L4241
5989  0004 a188          	cp	a,#136
5990  0006 270e          	jreq	L4241
5991  0008 ae0599        	ldw	x,#1433
5992  000b 89            	pushw	x
5993  000c 5f            	clrw	x
5994  000d 89            	pushw	x
5995  000e ae0000        	ldw	x,#L101
5996  0011 cd0000        	call	_assert_failed
5998  0014 5b04          	addw	sp,#4
5999  0016               L4241:
6000                     ; 1436   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
6002  0016 7b01          	ld	a,(OFST+1,sp)
6003  0018 2706          	jreq	L1542
6004                     ; 1438     TIM1->CCER1 |= TIM1_CCER1_CC1NP;
6006  001a 7216525c      	bset	21084,#3
6008  001e 2004          	jra	L3542
6009  0020               L1542:
6010                     ; 1442     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NP);
6012  0020 7217525c      	bres	21084,#3
6013  0024               L3542:
6014                     ; 1444 }
6017  0024 84            	pop	a
6018  0025 81            	ret	
6055                     ; 1454 void TIM1_OC2PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6055                     ; 1455 {
6056                     .text:	section	.text,new
6057  0000               _TIM1_OC2PolarityConfig:
6059  0000 88            	push	a
6060       00000000      OFST:	set	0
6063                     ; 1457   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6065  0001 4d            	tnz	a
6066  0002 2712          	jreq	L6341
6067  0004 a122          	cp	a,#34
6068  0006 270e          	jreq	L6341
6069  0008 ae05b1        	ldw	x,#1457
6070  000b 89            	pushw	x
6071  000c 5f            	clrw	x
6072  000d 89            	pushw	x
6073  000e ae0000        	ldw	x,#L101
6074  0011 cd0000        	call	_assert_failed
6076  0014 5b04          	addw	sp,#4
6077  0016               L6341:
6078                     ; 1460   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6080  0016 7b01          	ld	a,(OFST+1,sp)
6081  0018 2706          	jreq	L3742
6082                     ; 1462     TIM1->CCER1 |= TIM1_CCER1_CC2P;
6084  001a 721a525c      	bset	21084,#5
6086  001e 2004          	jra	L5742
6087  0020               L3742:
6088                     ; 1466     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
6090  0020 721b525c      	bres	21084,#5
6091  0024               L5742:
6092                     ; 1468 }
6095  0024 84            	pop	a
6096  0025 81            	ret	
6133                     ; 1478 void TIM1_OC2NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
6133                     ; 1479 {
6134                     .text:	section	.text,new
6135  0000               _TIM1_OC2NPolarityConfig:
6137  0000 88            	push	a
6138       00000000      OFST:	set	0
6141                     ; 1481   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
6143  0001 4d            	tnz	a
6144  0002 2712          	jreq	L0541
6145  0004 a188          	cp	a,#136
6146  0006 270e          	jreq	L0541
6147  0008 ae05c9        	ldw	x,#1481
6148  000b 89            	pushw	x
6149  000c 5f            	clrw	x
6150  000d 89            	pushw	x
6151  000e ae0000        	ldw	x,#L101
6152  0011 cd0000        	call	_assert_failed
6154  0014 5b04          	addw	sp,#4
6155  0016               L0541:
6156                     ; 1484   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
6158  0016 7b01          	ld	a,(OFST+1,sp)
6159  0018 2706          	jreq	L5152
6160                     ; 1486     TIM1->CCER1 |= TIM1_CCER1_CC2NP;
6162  001a 721e525c      	bset	21084,#7
6164  001e 2004          	jra	L7152
6165  0020               L5152:
6166                     ; 1490     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NP);
6168  0020 721f525c      	bres	21084,#7
6169  0024               L7152:
6170                     ; 1492 }
6173  0024 84            	pop	a
6174  0025 81            	ret	
6211                     ; 1502 void TIM1_OC3PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6211                     ; 1503 {
6212                     .text:	section	.text,new
6213  0000               _TIM1_OC3PolarityConfig:
6215  0000 88            	push	a
6216       00000000      OFST:	set	0
6219                     ; 1505   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6221  0001 4d            	tnz	a
6222  0002 2712          	jreq	L2641
6223  0004 a122          	cp	a,#34
6224  0006 270e          	jreq	L2641
6225  0008 ae05e1        	ldw	x,#1505
6226  000b 89            	pushw	x
6227  000c 5f            	clrw	x
6228  000d 89            	pushw	x
6229  000e ae0000        	ldw	x,#L101
6230  0011 cd0000        	call	_assert_failed
6232  0014 5b04          	addw	sp,#4
6233  0016               L2641:
6234                     ; 1508   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6236  0016 7b01          	ld	a,(OFST+1,sp)
6237  0018 2706          	jreq	L7352
6238                     ; 1510     TIM1->CCER2 |= TIM1_CCER2_CC3P;
6240  001a 7212525d      	bset	21085,#1
6242  001e 2004          	jra	L1452
6243  0020               L7352:
6244                     ; 1514     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
6246  0020 7213525d      	bres	21085,#1
6247  0024               L1452:
6248                     ; 1516 }
6251  0024 84            	pop	a
6252  0025 81            	ret	
6289                     ; 1527 void TIM1_OC3NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
6289                     ; 1528 {
6290                     .text:	section	.text,new
6291  0000               _TIM1_OC3NPolarityConfig:
6293  0000 88            	push	a
6294       00000000      OFST:	set	0
6297                     ; 1530   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
6299  0001 4d            	tnz	a
6300  0002 2712          	jreq	L4741
6301  0004 a188          	cp	a,#136
6302  0006 270e          	jreq	L4741
6303  0008 ae05fa        	ldw	x,#1530
6304  000b 89            	pushw	x
6305  000c 5f            	clrw	x
6306  000d 89            	pushw	x
6307  000e ae0000        	ldw	x,#L101
6308  0011 cd0000        	call	_assert_failed
6310  0014 5b04          	addw	sp,#4
6311  0016               L4741:
6312                     ; 1533   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
6314  0016 7b01          	ld	a,(OFST+1,sp)
6315  0018 2706          	jreq	L1652
6316                     ; 1535     TIM1->CCER2 |= TIM1_CCER2_CC3NP;
6318  001a 7216525d      	bset	21085,#3
6320  001e 2004          	jra	L3652
6321  0020               L1652:
6322                     ; 1539     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NP);
6324  0020 7217525d      	bres	21085,#3
6325  0024               L3652:
6326                     ; 1541 }
6329  0024 84            	pop	a
6330  0025 81            	ret	
6367                     ; 1551 void TIM1_OC4PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6367                     ; 1552 {
6368                     .text:	section	.text,new
6369  0000               _TIM1_OC4PolarityConfig:
6371  0000 88            	push	a
6372       00000000      OFST:	set	0
6375                     ; 1554   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6377  0001 4d            	tnz	a
6378  0002 2712          	jreq	L6051
6379  0004 a122          	cp	a,#34
6380  0006 270e          	jreq	L6051
6381  0008 ae0612        	ldw	x,#1554
6382  000b 89            	pushw	x
6383  000c 5f            	clrw	x
6384  000d 89            	pushw	x
6385  000e ae0000        	ldw	x,#L101
6386  0011 cd0000        	call	_assert_failed
6388  0014 5b04          	addw	sp,#4
6389  0016               L6051:
6390                     ; 1557   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6392  0016 7b01          	ld	a,(OFST+1,sp)
6393  0018 2706          	jreq	L3062
6394                     ; 1559     TIM1->CCER2 |= TIM1_CCER2_CC4P;
6396  001a 721a525d      	bset	21085,#5
6398  001e 2004          	jra	L5062
6399  0020               L3062:
6400                     ; 1563     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
6402  0020 721b525d      	bres	21085,#5
6403  0024               L5062:
6404                     ; 1565 }
6407  0024 84            	pop	a
6408  0025 81            	ret	
6454                     ; 1579 void TIM1_CCxCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
6454                     ; 1580 {
6455                     .text:	section	.text,new
6456  0000               _TIM1_CCxCmd:
6458  0000 89            	pushw	x
6459       00000000      OFST:	set	0
6462                     ; 1582   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
6464  0001 9e            	ld	a,xh
6465  0002 4d            	tnz	a
6466  0003 2713          	jreq	L0251
6467  0005 9e            	ld	a,xh
6468  0006 4a            	dec	a
6469  0007 270f          	jreq	L0251
6470  0009 9e            	ld	a,xh
6471  000a a102          	cp	a,#2
6472  000c 270a          	jreq	L0251
6473  000e 9e            	ld	a,xh
6474  000f a103          	cp	a,#3
6475  0011 2705          	jreq	L0251
6476  0013 ae062e        	ldw	x,#1582
6477  0016 ad58          	call	LC013
6478  0018               L0251:
6479                     ; 1583   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
6481  0018 7b02          	ld	a,(OFST+2,sp)
6482  001a 2708          	jreq	L0351
6483  001c 4a            	dec	a
6484  001d 2705          	jreq	L0351
6485  001f ae062f        	ldw	x,#1583
6486  0022 ad4c          	call	LC013
6487  0024               L0351:
6488                     ; 1585   if (TIM1_Channel == TIM1_CHANNEL_1)
6490  0024 7b01          	ld	a,(OFST+1,sp)
6491  0026 2610          	jrne	L1362
6492                     ; 1588     if (NewState != DISABLE)
6494  0028 7b02          	ld	a,(OFST+2,sp)
6495  002a 2706          	jreq	L3362
6496                     ; 1590       TIM1->CCER1 |= TIM1_CCER1_CC1E;
6498  002c 7210525c      	bset	21084,#0
6500  0030 203c          	jra	L7362
6501  0032               L3362:
6502                     ; 1594       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
6504  0032 7211525c      	bres	21084,#0
6505  0036 2036          	jra	L7362
6506  0038               L1362:
6507                     ; 1598   else if (TIM1_Channel == TIM1_CHANNEL_2)
6509  0038 a101          	cp	a,#1
6510  003a 2610          	jrne	L1462
6511                     ; 1601     if (NewState != DISABLE)
6513  003c 7b02          	ld	a,(OFST+2,sp)
6514  003e 2706          	jreq	L3462
6515                     ; 1603       TIM1->CCER1 |= TIM1_CCER1_CC2E;
6517  0040 7218525c      	bset	21084,#4
6519  0044 2028          	jra	L7362
6520  0046               L3462:
6521                     ; 1607       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
6523  0046 7219525c      	bres	21084,#4
6524  004a 2022          	jra	L7362
6525  004c               L1462:
6526                     ; 1610   else if (TIM1_Channel == TIM1_CHANNEL_3)
6528  004c a102          	cp	a,#2
6529  004e 2610          	jrne	L1562
6530                     ; 1613     if (NewState != DISABLE)
6532  0050 7b02          	ld	a,(OFST+2,sp)
6533  0052 2706          	jreq	L3562
6534                     ; 1615       TIM1->CCER2 |= TIM1_CCER2_CC3E;
6536  0054 7210525d      	bset	21085,#0
6538  0058 2014          	jra	L7362
6539  005a               L3562:
6540                     ; 1619       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
6542  005a 7211525d      	bres	21085,#0
6543  005e 200e          	jra	L7362
6544  0060               L1562:
6545                     ; 1625     if (NewState != DISABLE)
6547  0060 7b02          	ld	a,(OFST+2,sp)
6548  0062 2706          	jreq	L1662
6549                     ; 1627       TIM1->CCER2 |= TIM1_CCER2_CC4E;
6551  0064 7218525d      	bset	21085,#4
6553  0068 2004          	jra	L7362
6554  006a               L1662:
6555                     ; 1631       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
6557  006a 7219525d      	bres	21085,#4
6558  006e               L7362:
6559                     ; 1634 }
6562  006e 85            	popw	x
6563  006f 81            	ret	
6564  0070               LC013:
6565  0070 89            	pushw	x
6566  0071 5f            	clrw	x
6567  0072 89            	pushw	x
6568  0073 ae0000        	ldw	x,#L101
6569  0076 cd0000        	call	_assert_failed
6571  0079 5b04          	addw	sp,#4
6572  007b 81            	ret	
6618                     ; 1647 void TIM1_CCxNCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
6618                     ; 1648 {
6619                     .text:	section	.text,new
6620  0000               _TIM1_CCxNCmd:
6622  0000 89            	pushw	x
6623       00000000      OFST:	set	0
6626                     ; 1650   assert_param(IS_TIM1_COMPLEMENTARY_CHANNEL_OK(TIM1_Channel));
6628  0001 9e            	ld	a,xh
6629  0002 4d            	tnz	a
6630  0003 270e          	jreq	L2451
6631  0005 9e            	ld	a,xh
6632  0006 4a            	dec	a
6633  0007 270a          	jreq	L2451
6634  0009 9e            	ld	a,xh
6635  000a a102          	cp	a,#2
6636  000c 2705          	jreq	L2451
6637  000e ae0672        	ldw	x,#1650
6638  0011 ad43          	call	LC014
6639  0013               L2451:
6640                     ; 1651   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
6642  0013 7b02          	ld	a,(OFST+2,sp)
6643  0015 2708          	jreq	L2551
6644  0017 4a            	dec	a
6645  0018 2705          	jreq	L2551
6646  001a ae0673        	ldw	x,#1651
6647  001d ad37          	call	LC014
6648  001f               L2551:
6649                     ; 1653   if (TIM1_Channel == TIM1_CHANNEL_1)
6651  001f 7b01          	ld	a,(OFST+1,sp)
6652  0021 2610          	jrne	L7072
6653                     ; 1656     if (NewState != DISABLE)
6655  0023 7b02          	ld	a,(OFST+2,sp)
6656  0025 2706          	jreq	L1172
6657                     ; 1658       TIM1->CCER1 |= TIM1_CCER1_CC1NE;
6659  0027 7214525c      	bset	21084,#2
6661  002b 2027          	jra	L5172
6662  002d               L1172:
6663                     ; 1662       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NE);
6665  002d 7215525c      	bres	21084,#2
6666  0031 2021          	jra	L5172
6667  0033               L7072:
6668                     ; 1665   else if (TIM1_Channel == TIM1_CHANNEL_2)
6670  0033 4a            	dec	a
6671  0034 2610          	jrne	L7172
6672                     ; 1668     if (NewState != DISABLE)
6674  0036 7b02          	ld	a,(OFST+2,sp)
6675  0038 2706          	jreq	L1272
6676                     ; 1670       TIM1->CCER1 |= TIM1_CCER1_CC2NE;
6678  003a 721c525c      	bset	21084,#6
6680  003e 2014          	jra	L5172
6681  0040               L1272:
6682                     ; 1674       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NE);
6684  0040 721d525c      	bres	21084,#6
6685  0044 200e          	jra	L5172
6686  0046               L7172:
6687                     ; 1680     if (NewState != DISABLE)
6689  0046 7b02          	ld	a,(OFST+2,sp)
6690  0048 2706          	jreq	L7272
6691                     ; 1682       TIM1->CCER2 |= TIM1_CCER2_CC3NE;
6693  004a 7214525d      	bset	21085,#2
6695  004e 2004          	jra	L5172
6696  0050               L7272:
6697                     ; 1686       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NE);
6699  0050 7215525d      	bres	21085,#2
6700  0054               L5172:
6701                     ; 1689 }
6704  0054 85            	popw	x
6705  0055 81            	ret	
6706  0056               LC014:
6707  0056 89            	pushw	x
6708  0057 5f            	clrw	x
6709  0058 89            	pushw	x
6710  0059 ae0000        	ldw	x,#L101
6711  005c cd0000        	call	_assert_failed
6713  005f 5b04          	addw	sp,#4
6714  0061 81            	ret	
6760                     ; 1712 void TIM1_SelectOCxM(TIM1_Channel_TypeDef TIM1_Channel, TIM1_OCMode_TypeDef TIM1_OCMode)
6760                     ; 1713 {
6761                     .text:	section	.text,new
6762  0000               _TIM1_SelectOCxM:
6764  0000 89            	pushw	x
6765       00000000      OFST:	set	0
6768                     ; 1715   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
6770  0001 9e            	ld	a,xh
6771  0002 4d            	tnz	a
6772  0003 2713          	jreq	L4651
6773  0005 9e            	ld	a,xh
6774  0006 4a            	dec	a
6775  0007 270f          	jreq	L4651
6776  0009 9e            	ld	a,xh
6777  000a a102          	cp	a,#2
6778  000c 270a          	jreq	L4651
6779  000e 9e            	ld	a,xh
6780  000f a103          	cp	a,#3
6781  0011 2705          	jreq	L4651
6782  0013 ae06b3        	ldw	x,#1715
6783  0016 ad71          	call	LC015
6784  0018               L4651:
6785                     ; 1716   assert_param(IS_TIM1_OCM_OK(TIM1_OCMode));
6787  0018 7b02          	ld	a,(OFST+2,sp)
6788  001a 2721          	jreq	L4751
6789  001c a110          	cp	a,#16
6790  001e 271d          	jreq	L4751
6791  0020 a120          	cp	a,#32
6792  0022 2719          	jreq	L4751
6793  0024 a130          	cp	a,#48
6794  0026 2715          	jreq	L4751
6795  0028 a160          	cp	a,#96
6796  002a 2711          	jreq	L4751
6797  002c a170          	cp	a,#112
6798  002e 270d          	jreq	L4751
6799  0030 a150          	cp	a,#80
6800  0032 2709          	jreq	L4751
6801  0034 a140          	cp	a,#64
6802  0036 2705          	jreq	L4751
6803  0038 ae06b4        	ldw	x,#1716
6804  003b ad4c          	call	LC015
6805  003d               L4751:
6806                     ; 1718   if (TIM1_Channel == TIM1_CHANNEL_1)
6808  003d 7b01          	ld	a,(OFST+1,sp)
6809  003f 2610          	jrne	L5572
6810                     ; 1721     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
6812  0041 7211525c      	bres	21084,#0
6813                     ; 1724     TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) 
6813                     ; 1725                             | (uint8_t)TIM1_OCMode);
6815  0045 c65258        	ld	a,21080
6816  0048 a48f          	and	a,#143
6817  004a 1a02          	or	a,(OFST+2,sp)
6818  004c c75258        	ld	21080,a
6820  004f 2036          	jra	L7572
6821  0051               L5572:
6822                     ; 1727   else if (TIM1_Channel == TIM1_CHANNEL_2)
6824  0051 a101          	cp	a,#1
6825  0053 2610          	jrne	L1672
6826                     ; 1730     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
6828  0055 7219525c      	bres	21084,#4
6829                     ; 1733     TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
6829                     ; 1734                             | (uint8_t)TIM1_OCMode);
6831  0059 c65259        	ld	a,21081
6832  005c a48f          	and	a,#143
6833  005e 1a02          	or	a,(OFST+2,sp)
6834  0060 c75259        	ld	21081,a
6836  0063 2022          	jra	L7572
6837  0065               L1672:
6838                     ; 1736   else if (TIM1_Channel == TIM1_CHANNEL_3)
6840  0065 a102          	cp	a,#2
6841  0067 2610          	jrne	L5672
6842                     ; 1739     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
6844  0069 7211525d      	bres	21085,#0
6845                     ; 1742     TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) 
6845                     ; 1743                             | (uint8_t)TIM1_OCMode);
6847  006d c6525a        	ld	a,21082
6848  0070 a48f          	and	a,#143
6849  0072 1a02          	or	a,(OFST+2,sp)
6850  0074 c7525a        	ld	21082,a
6852  0077 200e          	jra	L7572
6853  0079               L5672:
6854                     ; 1748     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
6856  0079 7219525d      	bres	21085,#4
6857                     ; 1751     TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
6857                     ; 1752                             | (uint8_t)TIM1_OCMode);
6859  007d c6525b        	ld	a,21083
6860  0080 a48f          	and	a,#143
6861  0082 1a02          	or	a,(OFST+2,sp)
6862  0084 c7525b        	ld	21083,a
6863  0087               L7572:
6864                     ; 1754 }
6867  0087 85            	popw	x
6868  0088 81            	ret	
6869  0089               LC015:
6870  0089 89            	pushw	x
6871  008a 5f            	clrw	x
6872  008b 89            	pushw	x
6873  008c ae0000        	ldw	x,#L101
6874  008f cd0000        	call	_assert_failed
6876  0092 5b04          	addw	sp,#4
6877  0094 81            	ret	
6911                     ; 1762 void TIM1_SetCounter(uint16_t Counter)
6911                     ; 1763 {
6912                     .text:	section	.text,new
6913  0000               _TIM1_SetCounter:
6917                     ; 1765   TIM1->CNTRH = (uint8_t)(Counter >> 8);
6919  0000 9e            	ld	a,xh
6920  0001 c7525e        	ld	21086,a
6921                     ; 1766   TIM1->CNTRL = (uint8_t)(Counter);
6923  0004 9f            	ld	a,xl
6924  0005 c7525f        	ld	21087,a
6925                     ; 1767 }
6928  0008 81            	ret	
6962                     ; 1775 void TIM1_SetAutoreload(uint16_t Autoreload)
6962                     ; 1776 {
6963                     .text:	section	.text,new
6964  0000               _TIM1_SetAutoreload:
6968                     ; 1778   TIM1->ARRH = (uint8_t)(Autoreload >> 8);
6970  0000 9e            	ld	a,xh
6971  0001 c75262        	ld	21090,a
6972                     ; 1779   TIM1->ARRL = (uint8_t)(Autoreload);
6974  0004 9f            	ld	a,xl
6975  0005 c75263        	ld	21091,a
6976                     ; 1780  }
6979  0008 81            	ret	
7013                     ; 1788 void TIM1_SetCompare1(uint16_t Compare1)
7013                     ; 1789 {
7014                     .text:	section	.text,new
7015  0000               _TIM1_SetCompare1:
7019                     ; 1791   TIM1->CCR1H = (uint8_t)(Compare1 >> 8);
7021  0000 9e            	ld	a,xh
7022  0001 c75265        	ld	21093,a
7023                     ; 1792   TIM1->CCR1L = (uint8_t)(Compare1);
7025  0004 9f            	ld	a,xl
7026  0005 c75266        	ld	21094,a
7027                     ; 1793 }
7030  0008 81            	ret	
7064                     ; 1801 void TIM1_SetCompare2(uint16_t Compare2)
7064                     ; 1802 {
7065                     .text:	section	.text,new
7066  0000               _TIM1_SetCompare2:
7070                     ; 1804   TIM1->CCR2H = (uint8_t)(Compare2 >> 8);
7072  0000 9e            	ld	a,xh
7073  0001 c75267        	ld	21095,a
7074                     ; 1805   TIM1->CCR2L = (uint8_t)(Compare2);
7076  0004 9f            	ld	a,xl
7077  0005 c75268        	ld	21096,a
7078                     ; 1806 }
7081  0008 81            	ret	
7115                     ; 1814 void TIM1_SetCompare3(uint16_t Compare3)
7115                     ; 1815 {
7116                     .text:	section	.text,new
7117  0000               _TIM1_SetCompare3:
7121                     ; 1817   TIM1->CCR3H = (uint8_t)(Compare3 >> 8);
7123  0000 9e            	ld	a,xh
7124  0001 c75269        	ld	21097,a
7125                     ; 1818   TIM1->CCR3L = (uint8_t)(Compare3);
7127  0004 9f            	ld	a,xl
7128  0005 c7526a        	ld	21098,a
7129                     ; 1819 }
7132  0008 81            	ret	
7166                     ; 1827 void TIM1_SetCompare4(uint16_t Compare4)
7166                     ; 1828 {
7167                     .text:	section	.text,new
7168  0000               _TIM1_SetCompare4:
7172                     ; 1830   TIM1->CCR4H = (uint8_t)(Compare4 >> 8);
7174  0000 9e            	ld	a,xh
7175  0001 c7526b        	ld	21099,a
7176                     ; 1831   TIM1->CCR4L = (uint8_t)(Compare4);
7178  0004 9f            	ld	a,xl
7179  0005 c7526c        	ld	21100,a
7180                     ; 1832 }
7183  0008 81            	ret	
7220                     ; 1844 void TIM1_SetIC1Prescaler(TIM1_ICPSC_TypeDef TIM1_IC1Prescaler)
7220                     ; 1845 {
7221                     .text:	section	.text,new
7222  0000               _TIM1_SetIC1Prescaler:
7224  0000 88            	push	a
7225       00000000      OFST:	set	0
7228                     ; 1847   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC1Prescaler));
7230  0001 4d            	tnz	a
7231  0002 271a          	jreq	L2261
7232  0004 a104          	cp	a,#4
7233  0006 2716          	jreq	L2261
7234  0008 a108          	cp	a,#8
7235  000a 2712          	jreq	L2261
7236  000c a10c          	cp	a,#12
7237  000e 270e          	jreq	L2261
7238  0010 ae0737        	ldw	x,#1847
7239  0013 89            	pushw	x
7240  0014 5f            	clrw	x
7241  0015 89            	pushw	x
7242  0016 ae0000        	ldw	x,#L101
7243  0019 cd0000        	call	_assert_failed
7245  001c 5b04          	addw	sp,#4
7246  001e               L2261:
7247                     ; 1850   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_ICxPSC)) 
7247                     ; 1851                           | (uint8_t)TIM1_IC1Prescaler);
7249  001e c65258        	ld	a,21080
7250  0021 a4f3          	and	a,#243
7251  0023 1a01          	or	a,(OFST+1,sp)
7252  0025 c75258        	ld	21080,a
7253                     ; 1852 }
7256  0028 84            	pop	a
7257  0029 81            	ret	
7294                     ; 1864 void TIM1_SetIC2Prescaler(TIM1_ICPSC_TypeDef TIM1_IC2Prescaler)
7294                     ; 1865 {
7295                     .text:	section	.text,new
7296  0000               _TIM1_SetIC2Prescaler:
7298  0000 88            	push	a
7299       00000000      OFST:	set	0
7302                     ; 1868   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC2Prescaler));
7304  0001 4d            	tnz	a
7305  0002 271a          	jreq	L4361
7306  0004 a104          	cp	a,#4
7307  0006 2716          	jreq	L4361
7308  0008 a108          	cp	a,#8
7309  000a 2712          	jreq	L4361
7310  000c a10c          	cp	a,#12
7311  000e 270e          	jreq	L4361
7312  0010 ae074c        	ldw	x,#1868
7313  0013 89            	pushw	x
7314  0014 5f            	clrw	x
7315  0015 89            	pushw	x
7316  0016 ae0000        	ldw	x,#L101
7317  0019 cd0000        	call	_assert_failed
7319  001c 5b04          	addw	sp,#4
7320  001e               L4361:
7321                     ; 1871   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_ICxPSC))
7321                     ; 1872                           | (uint8_t)TIM1_IC2Prescaler);
7323  001e c65259        	ld	a,21081
7324  0021 a4f3          	and	a,#243
7325  0023 1a01          	or	a,(OFST+1,sp)
7326  0025 c75259        	ld	21081,a
7327                     ; 1873 }
7330  0028 84            	pop	a
7331  0029 81            	ret	
7368                     ; 1885 void TIM1_SetIC3Prescaler(TIM1_ICPSC_TypeDef TIM1_IC3Prescaler)
7368                     ; 1886 {
7369                     .text:	section	.text,new
7370  0000               _TIM1_SetIC3Prescaler:
7372  0000 88            	push	a
7373       00000000      OFST:	set	0
7376                     ; 1889   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC3Prescaler));
7378  0001 4d            	tnz	a
7379  0002 271a          	jreq	L6461
7380  0004 a104          	cp	a,#4
7381  0006 2716          	jreq	L6461
7382  0008 a108          	cp	a,#8
7383  000a 2712          	jreq	L6461
7384  000c a10c          	cp	a,#12
7385  000e 270e          	jreq	L6461
7386  0010 ae0761        	ldw	x,#1889
7387  0013 89            	pushw	x
7388  0014 5f            	clrw	x
7389  0015 89            	pushw	x
7390  0016 ae0000        	ldw	x,#L101
7391  0019 cd0000        	call	_assert_failed
7393  001c 5b04          	addw	sp,#4
7394  001e               L6461:
7395                     ; 1892   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_ICxPSC)) | 
7395                     ; 1893                           (uint8_t)TIM1_IC3Prescaler);
7397  001e c6525a        	ld	a,21082
7398  0021 a4f3          	and	a,#243
7399  0023 1a01          	or	a,(OFST+1,sp)
7400  0025 c7525a        	ld	21082,a
7401                     ; 1894 }
7404  0028 84            	pop	a
7405  0029 81            	ret	
7442                     ; 1906 void TIM1_SetIC4Prescaler(TIM1_ICPSC_TypeDef TIM1_IC4Prescaler)
7442                     ; 1907 {
7443                     .text:	section	.text,new
7444  0000               _TIM1_SetIC4Prescaler:
7446  0000 88            	push	a
7447       00000000      OFST:	set	0
7450                     ; 1910   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC4Prescaler));
7452  0001 4d            	tnz	a
7453  0002 271a          	jreq	L0661
7454  0004 a104          	cp	a,#4
7455  0006 2716          	jreq	L0661
7456  0008 a108          	cp	a,#8
7457  000a 2712          	jreq	L0661
7458  000c a10c          	cp	a,#12
7459  000e 270e          	jreq	L0661
7460  0010 ae0776        	ldw	x,#1910
7461  0013 89            	pushw	x
7462  0014 5f            	clrw	x
7463  0015 89            	pushw	x
7464  0016 ae0000        	ldw	x,#L101
7465  0019 cd0000        	call	_assert_failed
7467  001c 5b04          	addw	sp,#4
7468  001e               L0661:
7469                     ; 1913   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_ICxPSC)) |
7469                     ; 1914                           (uint8_t)TIM1_IC4Prescaler);
7471  001e c6525b        	ld	a,21083
7472  0021 a4f3          	and	a,#243
7473  0023 1a01          	or	a,(OFST+1,sp)
7474  0025 c7525b        	ld	21083,a
7475                     ; 1915 }
7478  0028 84            	pop	a
7479  0029 81            	ret	
7531                     ; 1922 uint16_t TIM1_GetCapture1(void)
7531                     ; 1923 {
7532                     .text:	section	.text,new
7533  0000               _TIM1_GetCapture1:
7535  0000 5204          	subw	sp,#4
7536       00000004      OFST:	set	4
7539                     ; 1926   uint16_t tmpccr1 = 0;
7541                     ; 1927   uint8_t tmpccr1l=0, tmpccr1h=0;
7545                     ; 1929   tmpccr1h = TIM1->CCR1H;
7547  0002 c65265        	ld	a,21093
7548  0005 6b02          	ld	(OFST-2,sp),a
7550                     ; 1930   tmpccr1l = TIM1->CCR1L;
7552  0007 c65266        	ld	a,21094
7553  000a 6b01          	ld	(OFST-3,sp),a
7555                     ; 1932   tmpccr1 = (uint16_t)(tmpccr1l);
7557  000c 5f            	clrw	x
7558  000d 97            	ld	xl,a
7559  000e 1f03          	ldw	(OFST-1,sp),x
7561                     ; 1933   tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
7563  0010 5f            	clrw	x
7564  0011 7b02          	ld	a,(OFST-2,sp)
7565  0013 97            	ld	xl,a
7566  0014 7b04          	ld	a,(OFST+0,sp)
7567  0016 01            	rrwa	x,a
7568  0017 1a03          	or	a,(OFST-1,sp)
7569  0019 01            	rrwa	x,a
7571                     ; 1935   return (uint16_t)tmpccr1;
7575  001a 5b04          	addw	sp,#4
7576  001c 81            	ret	
7628                     ; 1943 uint16_t TIM1_GetCapture2(void)
7628                     ; 1944 {
7629                     .text:	section	.text,new
7630  0000               _TIM1_GetCapture2:
7632  0000 5204          	subw	sp,#4
7633       00000004      OFST:	set	4
7636                     ; 1947   uint16_t tmpccr2 = 0;
7638                     ; 1948   uint8_t tmpccr2l=0, tmpccr2h=0;
7642                     ; 1950   tmpccr2h = TIM1->CCR2H;
7644  0002 c65267        	ld	a,21095
7645  0005 6b02          	ld	(OFST-2,sp),a
7647                     ; 1951   tmpccr2l = TIM1->CCR2L;
7649  0007 c65268        	ld	a,21096
7650  000a 6b01          	ld	(OFST-3,sp),a
7652                     ; 1953   tmpccr2 = (uint16_t)(tmpccr2l);
7654  000c 5f            	clrw	x
7655  000d 97            	ld	xl,a
7656  000e 1f03          	ldw	(OFST-1,sp),x
7658                     ; 1954   tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
7660  0010 5f            	clrw	x
7661  0011 7b02          	ld	a,(OFST-2,sp)
7662  0013 97            	ld	xl,a
7663  0014 7b04          	ld	a,(OFST+0,sp)
7664  0016 01            	rrwa	x,a
7665  0017 1a03          	or	a,(OFST-1,sp)
7666  0019 01            	rrwa	x,a
7668                     ; 1956   return (uint16_t)tmpccr2;
7672  001a 5b04          	addw	sp,#4
7673  001c 81            	ret	
7725                     ; 1964 uint16_t TIM1_GetCapture3(void)
7725                     ; 1965 {
7726                     .text:	section	.text,new
7727  0000               _TIM1_GetCapture3:
7729  0000 5204          	subw	sp,#4
7730       00000004      OFST:	set	4
7733                     ; 1967   uint16_t tmpccr3 = 0;
7735                     ; 1968   uint8_t tmpccr3l=0, tmpccr3h=0;
7739                     ; 1970   tmpccr3h = TIM1->CCR3H;
7741  0002 c65269        	ld	a,21097
7742  0005 6b02          	ld	(OFST-2,sp),a
7744                     ; 1971   tmpccr3l = TIM1->CCR3L;
7746  0007 c6526a        	ld	a,21098
7747  000a 6b01          	ld	(OFST-3,sp),a
7749                     ; 1973   tmpccr3 = (uint16_t)(tmpccr3l);
7751  000c 5f            	clrw	x
7752  000d 97            	ld	xl,a
7753  000e 1f03          	ldw	(OFST-1,sp),x
7755                     ; 1974   tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
7757  0010 5f            	clrw	x
7758  0011 7b02          	ld	a,(OFST-2,sp)
7759  0013 97            	ld	xl,a
7760  0014 7b04          	ld	a,(OFST+0,sp)
7761  0016 01            	rrwa	x,a
7762  0017 1a03          	or	a,(OFST-1,sp)
7763  0019 01            	rrwa	x,a
7765                     ; 1976   return (uint16_t)tmpccr3;
7769  001a 5b04          	addw	sp,#4
7770  001c 81            	ret	
7822                     ; 1984 uint16_t TIM1_GetCapture4(void)
7822                     ; 1985 {
7823                     .text:	section	.text,new
7824  0000               _TIM1_GetCapture4:
7826  0000 5204          	subw	sp,#4
7827       00000004      OFST:	set	4
7830                     ; 1987   uint16_t tmpccr4 = 0;
7832                     ; 1988   uint8_t tmpccr4l=0, tmpccr4h=0;
7836                     ; 1990   tmpccr4h = TIM1->CCR4H;
7838  0002 c6526b        	ld	a,21099
7839  0005 6b02          	ld	(OFST-2,sp),a
7841                     ; 1991   tmpccr4l = TIM1->CCR4L;
7843  0007 c6526c        	ld	a,21100
7844  000a 6b01          	ld	(OFST-3,sp),a
7846                     ; 1993   tmpccr4 = (uint16_t)(tmpccr4l);
7848  000c 5f            	clrw	x
7849  000d 97            	ld	xl,a
7850  000e 1f03          	ldw	(OFST-1,sp),x
7852                     ; 1994   tmpccr4 |= (uint16_t)((uint16_t)tmpccr4h << 8);
7854  0010 5f            	clrw	x
7855  0011 7b02          	ld	a,(OFST-2,sp)
7856  0013 97            	ld	xl,a
7857  0014 7b04          	ld	a,(OFST+0,sp)
7858  0016 01            	rrwa	x,a
7859  0017 1a03          	or	a,(OFST-1,sp)
7860  0019 01            	rrwa	x,a
7862                     ; 1996   return (uint16_t)tmpccr4;
7866  001a 5b04          	addw	sp,#4
7867  001c 81            	ret	
7901                     ; 2004 uint16_t TIM1_GetCounter(void)
7901                     ; 2005 {
7902                     .text:	section	.text,new
7903  0000               _TIM1_GetCounter:
7905  0000 89            	pushw	x
7906       00000002      OFST:	set	2
7909                     ; 2006   uint16_t tmpcntr = 0;
7911                     ; 2008   tmpcntr = ((uint16_t)TIM1->CNTRH << 8);
7913  0001 c6525e        	ld	a,21086
7914  0004 97            	ld	xl,a
7915  0005 4f            	clr	a
7916  0006 02            	rlwa	x,a
7917  0007 1f01          	ldw	(OFST-1,sp),x
7919                     ; 2011   return (uint16_t)(tmpcntr | (uint16_t)(TIM1->CNTRL));
7921  0009 c6525f        	ld	a,21087
7922  000c 5f            	clrw	x
7923  000d 97            	ld	xl,a
7924  000e 01            	rrwa	x,a
7925  000f 1a02          	or	a,(OFST+0,sp)
7926  0011 01            	rrwa	x,a
7927  0012 1a01          	or	a,(OFST-1,sp)
7928  0014 01            	rrwa	x,a
7931  0015 5b02          	addw	sp,#2
7932  0017 81            	ret	
7966                     ; 2019 uint16_t TIM1_GetPrescaler(void)
7966                     ; 2020 {
7967                     .text:	section	.text,new
7968  0000               _TIM1_GetPrescaler:
7970  0000 89            	pushw	x
7971       00000002      OFST:	set	2
7974                     ; 2021   uint16_t temp = 0;
7976                     ; 2023   temp = ((uint16_t)TIM1->PSCRH << 8);
7978  0001 c65260        	ld	a,21088
7979  0004 97            	ld	xl,a
7980  0005 4f            	clr	a
7981  0006 02            	rlwa	x,a
7982  0007 1f01          	ldw	(OFST-1,sp),x
7984                     ; 2026   return (uint16_t)( temp | (uint16_t)(TIM1->PSCRL));
7986  0009 c65261        	ld	a,21089
7987  000c 5f            	clrw	x
7988  000d 97            	ld	xl,a
7989  000e 01            	rrwa	x,a
7990  000f 1a02          	or	a,(OFST+0,sp)
7991  0011 01            	rrwa	x,a
7992  0012 1a01          	or	a,(OFST-1,sp)
7993  0014 01            	rrwa	x,a
7996  0015 5b02          	addw	sp,#2
7997  0017 81            	ret	
8172                     ; 2047 FlagStatus TIM1_GetFlagStatus(TIM1_FLAG_TypeDef TIM1_FLAG)
8172                     ; 2048 {
8173                     .text:	section	.text,new
8174  0000               _TIM1_GetFlagStatus:
8176  0000 89            	pushw	x
8177  0001 89            	pushw	x
8178       00000002      OFST:	set	2
8181                     ; 2049   FlagStatus bitstatus = RESET;
8183                     ; 2050   uint8_t tim1_flag_l = 0, tim1_flag_h = 0;
8187                     ; 2053   assert_param(IS_TIM1_GET_FLAG_OK(TIM1_FLAG));
8189  0002 a30001        	cpw	x,#1
8190  0005 2745          	jreq	L6071
8191  0007 a30002        	cpw	x,#2
8192  000a 2740          	jreq	L6071
8193  000c a30004        	cpw	x,#4
8194  000f 273b          	jreq	L6071
8195  0011 a30008        	cpw	x,#8
8196  0014 2736          	jreq	L6071
8197  0016 a30010        	cpw	x,#16
8198  0019 2731          	jreq	L6071
8199  001b a30020        	cpw	x,#32
8200  001e 272c          	jreq	L6071
8201  0020 a30040        	cpw	x,#64
8202  0023 2727          	jreq	L6071
8203  0025 a30080        	cpw	x,#128
8204  0028 2722          	jreq	L6071
8205  002a a30200        	cpw	x,#512
8206  002d 271d          	jreq	L6071
8207  002f a30400        	cpw	x,#1024
8208  0032 2718          	jreq	L6071
8209  0034 a30800        	cpw	x,#2048
8210  0037 2713          	jreq	L6071
8211  0039 a31000        	cpw	x,#4096
8212  003c 270e          	jreq	L6071
8213  003e ae0805        	ldw	x,#2053
8214  0041 89            	pushw	x
8215  0042 5f            	clrw	x
8216  0043 89            	pushw	x
8217  0044 ae0000        	ldw	x,#L101
8218  0047 cd0000        	call	_assert_failed
8220  004a 5b04          	addw	sp,#4
8221  004c               L6071:
8222                     ; 2055   tim1_flag_l = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_FLAG);
8224  004c c65255        	ld	a,21077
8225  004f 1404          	and	a,(OFST+2,sp)
8226  0051 6b01          	ld	(OFST-1,sp),a
8228                     ; 2056   tim1_flag_h = (uint8_t)((uint16_t)TIM1_FLAG >> 8);
8230  0053 7b03          	ld	a,(OFST+1,sp)
8231  0055 6b02          	ld	(OFST+0,sp),a
8233                     ; 2058   if ((tim1_flag_l | (uint8_t)(TIM1->SR2 & tim1_flag_h)) != 0)
8235  0057 c45256        	and	a,21078
8236  005a 1a01          	or	a,(OFST-1,sp)
8237  005c 2702          	jreq	L7643
8238                     ; 2060     bitstatus = SET;
8240  005e a601          	ld	a,#1
8243  0060               L7643:
8244                     ; 2064     bitstatus = RESET;
8247                     ; 2066   return (FlagStatus)(bitstatus);
8251  0060 5b04          	addw	sp,#4
8252  0062 81            	ret	
8288                     ; 2087 void TIM1_ClearFlag(TIM1_FLAG_TypeDef TIM1_FLAG)
8288                     ; 2088 {
8289                     .text:	section	.text,new
8290  0000               _TIM1_ClearFlag:
8292  0000 89            	pushw	x
8293       00000000      OFST:	set	0
8296                     ; 2090   assert_param(IS_TIM1_CLEAR_FLAG_OK(TIM1_FLAG));
8298  0001 01            	rrwa	x,a
8299  0002 9f            	ld	a,xl
8300  0003 a4e1          	and	a,#225
8301  0005 97            	ld	xl,a
8302  0006 4f            	clr	a
8303  0007 02            	rlwa	x,a
8304  0008 5d            	tnzw	x
8305  0009 2604          	jrne	L4171
8306  000b 1e01          	ldw	x,(OFST+1,sp)
8307  000d 260e          	jrne	L6171
8308  000f               L4171:
8309  000f ae082a        	ldw	x,#2090
8310  0012 89            	pushw	x
8311  0013 5f            	clrw	x
8312  0014 89            	pushw	x
8313  0015 ae0000        	ldw	x,#L101
8314  0018 cd0000        	call	_assert_failed
8316  001b 5b04          	addw	sp,#4
8317  001d               L6171:
8318                     ; 2093   TIM1->SR1 = (uint8_t)(~(uint8_t)(TIM1_FLAG));
8320  001d 7b02          	ld	a,(OFST+2,sp)
8321  001f 43            	cpl	a
8322  0020 c75255        	ld	21077,a
8323                     ; 2094   TIM1->SR2 = (uint8_t)((uint8_t)(~((uint8_t)((uint16_t)TIM1_FLAG >> 8))) & 
8323                     ; 2095                         (uint8_t)0x1E);
8325  0023 7b01          	ld	a,(OFST+1,sp)
8326  0025 43            	cpl	a
8327  0026 a41e          	and	a,#30
8328  0028 c75256        	ld	21078,a
8329                     ; 2096 }
8332  002b 85            	popw	x
8333  002c 81            	ret	
8398                     ; 2112 ITStatus TIM1_GetITStatus(TIM1_IT_TypeDef TIM1_IT)
8398                     ; 2113 {
8399                     .text:	section	.text,new
8400  0000               _TIM1_GetITStatus:
8402  0000 88            	push	a
8403  0001 89            	pushw	x
8404       00000002      OFST:	set	2
8407                     ; 2114   ITStatus bitstatus = RESET;
8409                     ; 2115   uint8_t TIM1_itStatus = 0, TIM1_itEnable = 0;
8413                     ; 2118   assert_param(IS_TIM1_GET_IT_OK(TIM1_IT));
8415  0002 a101          	cp	a,#1
8416  0004 272a          	jreq	L0371
8417  0006 a102          	cp	a,#2
8418  0008 2726          	jreq	L0371
8419  000a a104          	cp	a,#4
8420  000c 2722          	jreq	L0371
8421  000e a108          	cp	a,#8
8422  0010 271e          	jreq	L0371
8423  0012 a110          	cp	a,#16
8424  0014 271a          	jreq	L0371
8425  0016 a120          	cp	a,#32
8426  0018 2716          	jreq	L0371
8427  001a a140          	cp	a,#64
8428  001c 2712          	jreq	L0371
8429  001e a180          	cp	a,#128
8430  0020 270e          	jreq	L0371
8431  0022 ae0846        	ldw	x,#2118
8432  0025 89            	pushw	x
8433  0026 5f            	clrw	x
8434  0027 89            	pushw	x
8435  0028 ae0000        	ldw	x,#L101
8436  002b cd0000        	call	_assert_failed
8438  002e 5b04          	addw	sp,#4
8439  0030               L0371:
8440                     ; 2120   TIM1_itStatus = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_IT);
8442  0030 c65255        	ld	a,21077
8443  0033 1403          	and	a,(OFST+1,sp)
8444  0035 6b01          	ld	(OFST-1,sp),a
8446                     ; 2122   TIM1_itEnable = (uint8_t)(TIM1->IER & (uint8_t)TIM1_IT);
8448  0037 c65254        	ld	a,21076
8449  003a 1403          	and	a,(OFST+1,sp)
8450  003c 6b02          	ld	(OFST+0,sp),a
8452                     ; 2124   if ((TIM1_itStatus != (uint8_t)RESET ) && (TIM1_itEnable != (uint8_t)RESET ))
8454  003e 7b01          	ld	a,(OFST-1,sp)
8455  0040 2708          	jreq	L3453
8457  0042 7b02          	ld	a,(OFST+0,sp)
8458  0044 2704          	jreq	L3453
8459                     ; 2126     bitstatus = SET;
8461  0046 a601          	ld	a,#1
8464  0048 2001          	jra	L5453
8465  004a               L3453:
8466                     ; 2130     bitstatus = RESET;
8468  004a 4f            	clr	a
8470  004b               L5453:
8471                     ; 2132   return (ITStatus)(bitstatus);
8475  004b 5b03          	addw	sp,#3
8476  004d 81            	ret	
8513                     ; 2149 void TIM1_ClearITPendingBit(TIM1_IT_TypeDef TIM1_IT)
8513                     ; 2150 {
8514                     .text:	section	.text,new
8515  0000               _TIM1_ClearITPendingBit:
8517  0000 88            	push	a
8518       00000000      OFST:	set	0
8521                     ; 2152   assert_param(IS_TIM1_IT_OK(TIM1_IT));
8523  0001 4d            	tnz	a
8524  0002 260e          	jrne	L0471
8525  0004 ae0868        	ldw	x,#2152
8526  0007 89            	pushw	x
8527  0008 5f            	clrw	x
8528  0009 89            	pushw	x
8529  000a ae0000        	ldw	x,#L101
8530  000d cd0000        	call	_assert_failed
8532  0010 5b04          	addw	sp,#4
8533  0012               L0471:
8534                     ; 2155   TIM1->SR1 = (uint8_t)(~(uint8_t)TIM1_IT);
8536  0012 7b01          	ld	a,(OFST+1,sp)
8537  0014 43            	cpl	a
8538  0015 c75255        	ld	21077,a
8539                     ; 2156 }
8542  0018 84            	pop	a
8543  0019 81            	ret	
8595                     ; 2174 static void TI1_Config(uint8_t TIM1_ICPolarity,
8595                     ; 2175                        uint8_t TIM1_ICSelection,
8595                     ; 2176                        uint8_t TIM1_ICFilter)
8595                     ; 2177 {
8596                     .text:	section	.text,new
8597  0000               L3_TI1_Config:
8599  0000 89            	pushw	x
8600  0001 88            	push	a
8601       00000001      OFST:	set	1
8604                     ; 2179   TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
8606  0002 7211525c      	bres	21084,#0
8607                     ; 2182   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) | 
8607                     ; 2183                           (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
8609  0006 7b06          	ld	a,(OFST+5,sp)
8610  0008 97            	ld	xl,a
8611  0009 a610          	ld	a,#16
8612  000b 42            	mul	x,a
8613  000c 9f            	ld	a,xl
8614  000d 1a03          	or	a,(OFST+2,sp)
8615  000f 6b01          	ld	(OFST+0,sp),a
8617  0011 c65258        	ld	a,21080
8618  0014 a40c          	and	a,#12
8619  0016 1a01          	or	a,(OFST+0,sp)
8620  0018 c75258        	ld	21080,a
8621                     ; 2186   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
8623  001b 7b02          	ld	a,(OFST+1,sp)
8624  001d 2706          	jreq	L3163
8625                     ; 2188     TIM1->CCER1 |= TIM1_CCER1_CC1P;
8627  001f 7212525c      	bset	21084,#1
8629  0023 2004          	jra	L5163
8630  0025               L3163:
8631                     ; 2192     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
8633  0025 7213525c      	bres	21084,#1
8634  0029               L5163:
8635                     ; 2196   TIM1->CCER1 |=  TIM1_CCER1_CC1E;
8637  0029 7210525c      	bset	21084,#0
8638                     ; 2197 }
8641  002d 5b03          	addw	sp,#3
8642  002f 81            	ret	
8694                     ; 2215 static void TI2_Config(uint8_t TIM1_ICPolarity,
8694                     ; 2216                        uint8_t TIM1_ICSelection,
8694                     ; 2217                        uint8_t TIM1_ICFilter)
8694                     ; 2218 {
8695                     .text:	section	.text,new
8696  0000               L5_TI2_Config:
8698  0000 89            	pushw	x
8699  0001 88            	push	a
8700       00000001      OFST:	set	1
8703                     ; 2220   TIM1->CCER1 &=  (uint8_t)(~TIM1_CCER1_CC2E);
8705  0002 7219525c      	bres	21084,#4
8706                     ; 2223   TIM1->CCMR2  = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) 
8706                     ; 2224                            | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
8708  0006 7b06          	ld	a,(OFST+5,sp)
8709  0008 97            	ld	xl,a
8710  0009 a610          	ld	a,#16
8711  000b 42            	mul	x,a
8712  000c 9f            	ld	a,xl
8713  000d 1a03          	or	a,(OFST+2,sp)
8714  000f 6b01          	ld	(OFST+0,sp),a
8716  0011 c65259        	ld	a,21081
8717  0014 a40c          	and	a,#12
8718  0016 1a01          	or	a,(OFST+0,sp)
8719  0018 c75259        	ld	21081,a
8720                     ; 2226   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
8722  001b 7b02          	ld	a,(OFST+1,sp)
8723  001d 2706          	jreq	L5463
8724                     ; 2228     TIM1->CCER1 |= TIM1_CCER1_CC2P;
8726  001f 721a525c      	bset	21084,#5
8728  0023 2004          	jra	L7463
8729  0025               L5463:
8730                     ; 2232     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
8732  0025 721b525c      	bres	21084,#5
8733  0029               L7463:
8734                     ; 2235   TIM1->CCER1 |=  TIM1_CCER1_CC2E;
8736  0029 7218525c      	bset	21084,#4
8737                     ; 2236 }
8740  002d 5b03          	addw	sp,#3
8741  002f 81            	ret	
8793                     ; 2254 static void TI3_Config(uint8_t TIM1_ICPolarity,
8793                     ; 2255                        uint8_t TIM1_ICSelection,
8793                     ; 2256                        uint8_t TIM1_ICFilter)
8793                     ; 2257 {
8794                     .text:	section	.text,new
8795  0000               L7_TI3_Config:
8797  0000 89            	pushw	x
8798  0001 88            	push	a
8799       00000001      OFST:	set	1
8802                     ; 2259   TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC3E);
8804  0002 7211525d      	bres	21085,#0
8805                     ; 2262   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF))) 
8805                     ; 2263                           | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
8807  0006 7b06          	ld	a,(OFST+5,sp)
8808  0008 97            	ld	xl,a
8809  0009 a610          	ld	a,#16
8810  000b 42            	mul	x,a
8811  000c 9f            	ld	a,xl
8812  000d 1a03          	or	a,(OFST+2,sp)
8813  000f 6b01          	ld	(OFST+0,sp),a
8815  0011 c6525a        	ld	a,21082
8816  0014 a40c          	and	a,#12
8817  0016 1a01          	or	a,(OFST+0,sp)
8818  0018 c7525a        	ld	21082,a
8819                     ; 2266   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
8821  001b 7b02          	ld	a,(OFST+1,sp)
8822  001d 2706          	jreq	L7763
8823                     ; 2268     TIM1->CCER2 |= TIM1_CCER2_CC3P;
8825  001f 7212525d      	bset	21085,#1
8827  0023 2004          	jra	L1073
8828  0025               L7763:
8829                     ; 2272     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
8831  0025 7213525d      	bres	21085,#1
8832  0029               L1073:
8833                     ; 2275   TIM1->CCER2 |=  TIM1_CCER2_CC3E;
8835  0029 7210525d      	bset	21085,#0
8836                     ; 2276 }
8839  002d 5b03          	addw	sp,#3
8840  002f 81            	ret	
8892                     ; 2294 static void TI4_Config(uint8_t TIM1_ICPolarity,
8892                     ; 2295                        uint8_t TIM1_ICSelection,
8892                     ; 2296                        uint8_t TIM1_ICFilter)
8892                     ; 2297 {
8893                     .text:	section	.text,new
8894  0000               L11_TI4_Config:
8896  0000 89            	pushw	x
8897  0001 88            	push	a
8898       00000001      OFST:	set	1
8901                     ; 2299   TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC4E);
8903  0002 7219525d      	bres	21085,#4
8904                     ; 2302   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF )))
8904                     ; 2303                           | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
8906  0006 7b06          	ld	a,(OFST+5,sp)
8907  0008 97            	ld	xl,a
8908  0009 a610          	ld	a,#16
8909  000b 42            	mul	x,a
8910  000c 9f            	ld	a,xl
8911  000d 1a03          	or	a,(OFST+2,sp)
8912  000f 6b01          	ld	(OFST+0,sp),a
8914  0011 c6525b        	ld	a,21083
8915  0014 a40c          	and	a,#12
8916  0016 1a01          	or	a,(OFST+0,sp)
8917  0018 c7525b        	ld	21083,a
8918                     ; 2306   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
8920  001b 7b02          	ld	a,(OFST+1,sp)
8921  001d 2706          	jreq	L1373
8922                     ; 2308     TIM1->CCER2 |= TIM1_CCER2_CC4P;
8924  001f 721a525d      	bset	21085,#5
8926  0023 2004          	jra	L3373
8927  0025               L1373:
8928                     ; 2312     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
8930  0025 721b525d      	bres	21085,#5
8931  0029               L3373:
8932                     ; 2316   TIM1->CCER2 |=  TIM1_CCER2_CC4E;
8934  0029 7218525d      	bset	21085,#4
8935                     ; 2317 }
8938  002d 5b03          	addw	sp,#3
8939  002f 81            	ret	
8952                     	xdef	_TIM1_ClearITPendingBit
8953                     	xdef	_TIM1_GetITStatus
8954                     	xdef	_TIM1_ClearFlag
8955                     	xdef	_TIM1_GetFlagStatus
8956                     	xdef	_TIM1_GetPrescaler
8957                     	xdef	_TIM1_GetCounter
8958                     	xdef	_TIM1_GetCapture4
8959                     	xdef	_TIM1_GetCapture3
8960                     	xdef	_TIM1_GetCapture2
8961                     	xdef	_TIM1_GetCapture1
8962                     	xdef	_TIM1_SetIC4Prescaler
8963                     	xdef	_TIM1_SetIC3Prescaler
8964                     	xdef	_TIM1_SetIC2Prescaler
8965                     	xdef	_TIM1_SetIC1Prescaler
8966                     	xdef	_TIM1_SetCompare4
8967                     	xdef	_TIM1_SetCompare3
8968                     	xdef	_TIM1_SetCompare2
8969                     	xdef	_TIM1_SetCompare1
8970                     	xdef	_TIM1_SetAutoreload
8971                     	xdef	_TIM1_SetCounter
8972                     	xdef	_TIM1_SelectOCxM
8973                     	xdef	_TIM1_CCxNCmd
8974                     	xdef	_TIM1_CCxCmd
8975                     	xdef	_TIM1_OC4PolarityConfig
8976                     	xdef	_TIM1_OC3NPolarityConfig
8977                     	xdef	_TIM1_OC3PolarityConfig
8978                     	xdef	_TIM1_OC2NPolarityConfig
8979                     	xdef	_TIM1_OC2PolarityConfig
8980                     	xdef	_TIM1_OC1NPolarityConfig
8981                     	xdef	_TIM1_OC1PolarityConfig
8982                     	xdef	_TIM1_GenerateEvent
8983                     	xdef	_TIM1_OC4FastConfig
8984                     	xdef	_TIM1_OC3FastConfig
8985                     	xdef	_TIM1_OC2FastConfig
8986                     	xdef	_TIM1_OC1FastConfig
8987                     	xdef	_TIM1_OC4PreloadConfig
8988                     	xdef	_TIM1_OC3PreloadConfig
8989                     	xdef	_TIM1_OC2PreloadConfig
8990                     	xdef	_TIM1_OC1PreloadConfig
8991                     	xdef	_TIM1_CCPreloadControl
8992                     	xdef	_TIM1_SelectCOM
8993                     	xdef	_TIM1_ARRPreloadConfig
8994                     	xdef	_TIM1_ForcedOC4Config
8995                     	xdef	_TIM1_ForcedOC3Config
8996                     	xdef	_TIM1_ForcedOC2Config
8997                     	xdef	_TIM1_ForcedOC1Config
8998                     	xdef	_TIM1_CounterModeConfig
8999                     	xdef	_TIM1_PrescalerConfig
9000                     	xdef	_TIM1_EncoderInterfaceConfig
9001                     	xdef	_TIM1_SelectMasterSlaveMode
9002                     	xdef	_TIM1_SelectSlaveMode
9003                     	xdef	_TIM1_SelectOutputTrigger
9004                     	xdef	_TIM1_SelectOnePulseMode
9005                     	xdef	_TIM1_SelectHallSensor
9006                     	xdef	_TIM1_UpdateRequestConfig
9007                     	xdef	_TIM1_UpdateDisableConfig
9008                     	xdef	_TIM1_SelectInputTrigger
9009                     	xdef	_TIM1_TIxExternalClockConfig
9010                     	xdef	_TIM1_ETRConfig
9011                     	xdef	_TIM1_ETRClockMode2Config
9012                     	xdef	_TIM1_ETRClockMode1Config
9013                     	xdef	_TIM1_InternalClockConfig
9014                     	xdef	_TIM1_ITConfig
9015                     	xdef	_TIM1_CtrlPWMOutputs
9016                     	xdef	_TIM1_Cmd
9017                     	xdef	_TIM1_PWMIConfig
9018                     	xdef	_TIM1_ICInit
9019                     	xdef	_TIM1_BDTRConfig
9020                     	xdef	_TIM1_OC4Init
9021                     	xdef	_TIM1_OC3Init
9022                     	xdef	_TIM1_OC2Init
9023                     	xdef	_TIM1_OC1Init
9024                     	xdef	_TIM1_TimeBaseInit
9025                     	xdef	_TIM1_DeInit
9026                     	xref	_assert_failed
9027                     .const:	section	.text
9028  0000               L101:
9029  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
9030  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
9031  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
9032  0036 5f74696d312e  	dc.b	"_tim1.c",0
9052                     	end
