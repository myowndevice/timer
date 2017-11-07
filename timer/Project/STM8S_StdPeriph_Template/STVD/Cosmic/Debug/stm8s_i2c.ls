   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.5 - 29 Dec 2015
   3                     ; Generator (Limited) V4.4.4 - 27 Jan 2016
   4                     ; Optimizer V4.4.4 - 27 Jan 2016
  49                     ; 67 void I2C_DeInit(void)
  49                     ; 68 {
  51                     .text:	section	.text,new
  52  0000               _I2C_DeInit:
  56                     ; 69   I2C->CR1 = I2C_CR1_RESET_VALUE;
  58  0000 725f5210      	clr	21008
  59                     ; 70   I2C->CR2 = I2C_CR2_RESET_VALUE;
  61  0004 725f5211      	clr	21009
  62                     ; 71   I2C->FREQR = I2C_FREQR_RESET_VALUE;
  64  0008 725f5212      	clr	21010
  65                     ; 72   I2C->OARL = I2C_OARL_RESET_VALUE;
  67  000c 725f5213      	clr	21011
  68                     ; 73   I2C->OARH = I2C_OARH_RESET_VALUE;
  70  0010 725f5214      	clr	21012
  71                     ; 74   I2C->ITR = I2C_ITR_RESET_VALUE;
  73  0014 725f521a      	clr	21018
  74                     ; 75   I2C->CCRL = I2C_CCRL_RESET_VALUE;
  76  0018 725f521b      	clr	21019
  77                     ; 76   I2C->CCRH = I2C_CCRH_RESET_VALUE;
  79  001c 725f521c      	clr	21020
  80                     ; 77   I2C->TRISER = I2C_TRISER_RESET_VALUE;
  82  0020 3502521d      	mov	21021,#2
  83                     ; 78 }
  86  0024 81            	ret	
 227                     .const:	section	.text
 228  0000               L01:
 229  0000 000186a1      	dc.l	100001
 230  0004               L21:
 231  0004 000f4240      	dc.l	1000000
 232                     ; 96 void I2C_Init(uint32_t OutputClockFrequencyHz, uint16_t OwnAddress, 
 232                     ; 97               I2C_DutyCycle_TypeDef I2C_DutyCycle, I2C_Ack_TypeDef Ack, 
 232                     ; 98               I2C_AddMode_TypeDef AddMode, uint8_t InputClockFrequencyMHz )
 232                     ; 99 {
 233                     .text:	section	.text,new
 234  0000               _I2C_Init:
 236  0000 5209          	subw	sp,#9
 237       00000009      OFST:	set	9
 240                     ; 100   uint16_t result = 0x0004;
 242                     ; 101   uint16_t tmpval = 0;
 244                     ; 102   uint8_t tmpccrh = 0;
 246  0002 0f07          	clr	(OFST-2,sp)
 248                     ; 115   I2C->FREQR &= (uint8_t)(~I2C_FREQR_FREQ);
 250  0004 c65212        	ld	a,21010
 251  0007 a4c0          	and	a,#192
 252  0009 c75212        	ld	21010,a
 253                     ; 117   I2C->FREQR |= InputClockFrequencyMHz;
 255  000c c65212        	ld	a,21010
 256  000f 1a15          	or	a,(OFST+12,sp)
 257  0011 c75212        	ld	21010,a
 258                     ; 121   I2C->CR1 &= (uint8_t)(~I2C_CR1_PE);
 260  0014 72115210      	bres	21008,#0
 261                     ; 124   I2C->CCRH &= (uint8_t)(~(I2C_CCRH_FS | I2C_CCRH_DUTY | I2C_CCRH_CCR));
 263  0018 c6521c        	ld	a,21020
 264  001b a430          	and	a,#48
 265  001d c7521c        	ld	21020,a
 266                     ; 125   I2C->CCRL &= (uint8_t)(~I2C_CCRL_CCR);
 268  0020 725f521b      	clr	21019
 269                     ; 128   if (OutputClockFrequencyHz > I2C_MAX_STANDARD_FREQ) /* FAST MODE */
 271  0024 96            	ldw	x,sp
 272  0025 1c000c        	addw	x,#OFST+3
 273  0028 cd0000        	call	c_ltor
 275  002b ae0000        	ldw	x,#L01
 276  002e cd0000        	call	c_lcmp
 278  0031 2560          	jrult	L311
 279                     ; 131     tmpccrh = I2C_CCRH_FS;
 281  0033 a680          	ld	a,#128
 282  0035 6b07          	ld	(OFST-2,sp),a
 284                     ; 133     if (I2C_DutyCycle == I2C_DUTYCYCLE_2)
 286  0037 96            	ldw	x,sp
 287  0038 0d12          	tnz	(OFST+9,sp)
 288  003a 261d          	jrne	L511
 289                     ; 136       result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 3));
 291  003c 1c000c        	addw	x,#OFST+3
 292  003f cd0000        	call	c_ltor
 294  0042 a603          	ld	a,#3
 295  0044 cd0000        	call	c_smul
 297  0047 96            	ldw	x,sp
 298  0048 5c            	incw	x
 299  0049 cd0000        	call	c_rtol
 302  004c 7b15          	ld	a,(OFST+12,sp)
 303  004e cd00f4        	call	LC001
 305  0051 96            	ldw	x,sp
 306  0052 cd0102        	call	LC002
 307  0055 1f08          	ldw	(OFST-1,sp),x
 310  0057 2021          	jra	L711
 311  0059               L511:
 312                     ; 141       result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 25));
 314  0059 1c000c        	addw	x,#OFST+3
 315  005c cd0000        	call	c_ltor
 317  005f a619          	ld	a,#25
 318  0061 cd0000        	call	c_smul
 320  0064 96            	ldw	x,sp
 321  0065 5c            	incw	x
 322  0066 cd0000        	call	c_rtol
 325  0069 7b15          	ld	a,(OFST+12,sp)
 326  006b cd00f4        	call	LC001
 328  006e 96            	ldw	x,sp
 329  006f cd0102        	call	LC002
 330  0072 1f08          	ldw	(OFST-1,sp),x
 332                     ; 143       tmpccrh |= I2C_CCRH_DUTY;
 334  0074 7b07          	ld	a,(OFST-2,sp)
 335  0076 aa40          	or	a,#64
 336  0078 6b07          	ld	(OFST-2,sp),a
 338  007a               L711:
 339                     ; 147     if (result < (uint16_t)0x01)
 341  007a 1e08          	ldw	x,(OFST-1,sp)
 342  007c 2603          	jrne	L121
 343                     ; 150       result = (uint16_t)0x0001;
 345  007e 5c            	incw	x
 346  007f 1f08          	ldw	(OFST-1,sp),x
 348  0081               L121:
 349                     ; 156     tmpval = ((InputClockFrequencyMHz * 3) / 10) + 1;
 351  0081 7b15          	ld	a,(OFST+12,sp)
 352  0083 97            	ld	xl,a
 353  0084 a603          	ld	a,#3
 354  0086 42            	mul	x,a
 355  0087 a60a          	ld	a,#10
 356  0089 cd0000        	call	c_sdivx
 358  008c 5c            	incw	x
 359  008d 1f05          	ldw	(OFST-4,sp),x
 361                     ; 157     I2C->TRISER = (uint8_t)tmpval;
 363  008f 7b06          	ld	a,(OFST-3,sp)
 365  0091 2028          	jra	L321
 366  0093               L311:
 367                     ; 164     result = (uint16_t)((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz << (uint8_t)1));
 369  0093 96            	ldw	x,sp
 370  0094 1c000c        	addw	x,#OFST+3
 371  0097 cd0000        	call	c_ltor
 373  009a 3803          	sll	c_lreg+3
 374  009c 3902          	rlc	c_lreg+2
 375  009e 3901          	rlc	c_lreg+1
 376  00a0 96            	ldw	x,sp
 377  00a1 3900          	rlc	c_lreg
 378  00a3 5c            	incw	x
 379  00a4 cd0000        	call	c_rtol
 382  00a7 7b15          	ld	a,(OFST+12,sp)
 383  00a9 ad49          	call	LC001
 385  00ab 96            	ldw	x,sp
 386  00ac ad54          	call	LC002
 388                     ; 167     if (result < (uint16_t)0x0004)
 390  00ae a30004        	cpw	x,#4
 391  00b1 2403          	jruge	L521
 392                     ; 170       result = (uint16_t)0x0004;
 394  00b3 ae0004        	ldw	x,#4
 396  00b6               L521:
 397  00b6 1f08          	ldw	(OFST-1,sp),x
 398                     ; 176     I2C->TRISER = (uint8_t)(InputClockFrequencyMHz + (uint8_t)1);
 400  00b8 7b15          	ld	a,(OFST+12,sp)
 401  00ba 4c            	inc	a
 402  00bb               L321:
 403  00bb c7521d        	ld	21021,a
 404                     ; 181   I2C->CCRL = (uint8_t)result;
 406  00be 7b09          	ld	a,(OFST+0,sp)
 407  00c0 c7521b        	ld	21019,a
 408                     ; 182   I2C->CCRH = (uint8_t)((uint8_t)((uint8_t)(result >> 8) & I2C_CCRH_CCR) | tmpccrh);
 410  00c3 7b08          	ld	a,(OFST-1,sp)
 411  00c5 a40f          	and	a,#15
 412  00c7 1a07          	or	a,(OFST-2,sp)
 413  00c9 c7521c        	ld	21020,a
 414                     ; 185   I2C->CR1 |= I2C_CR1_PE;
 416  00cc 72105210      	bset	21008,#0
 417                     ; 189 	I2C->CR2 |= I2C_CR2_ACK;
 419  00d0 72145211      	bset	21009,#2
 420                     ; 190 	I2C->CR2 &= (uint8_t)(~I2C_CR2_POS);
 422  00d4 72175211      	bres	21009,#3
 423                     ; 194   I2C->OARL = (uint8_t)(OwnAddress);
 425  00d8 7b11          	ld	a,(OFST+8,sp)
 426  00da c75213        	ld	21011,a
 427                     ; 195   I2C->OARH = (uint8_t)((uint8_t)(AddMode | I2C_OARH_ADDCONF) |
 427                     ; 196                    (uint8_t)((OwnAddress & (uint16_t)0x0300) >> (uint8_t)7));
 429  00dd 1e10          	ldw	x,(OFST+7,sp)
 430  00df 4f            	clr	a
 431  00e0 01            	rrwa	x,a
 432  00e1 48            	sll	a
 433  00e2 01            	rrwa	x,a
 434  00e3 49            	rlc	a
 435  00e4 a406          	and	a,#6
 436  00e6 6b04          	ld	(OFST-5,sp),a
 438  00e8 7b14          	ld	a,(OFST+11,sp)
 439  00ea aa40          	or	a,#64
 440  00ec 1a04          	or	a,(OFST-5,sp)
 441  00ee c75214        	ld	21012,a
 442                     ; 197 }
 445  00f1 5b09          	addw	sp,#9
 446  00f3 81            	ret	
 447  00f4               LC001:
 448  00f4 b703          	ld	c_lreg+3,a
 449  00f6 3f02          	clr	c_lreg+2
 450  00f8 3f01          	clr	c_lreg+1
 451  00fa 3f00          	clr	c_lreg
 452  00fc ae0004        	ldw	x,#L21
 453  00ff cc0000        	jp	c_lmul
 454  0102               LC002:
 455  0102 5c            	incw	x
 456  0103 cd0000        	call	c_ludv
 458  0106 be02          	ldw	x,c_lreg+2
 459  0108 81            	ret	
 514                     ; 205 void I2C_Cmd(FunctionalState NewState)
 514                     ; 206 {
 515                     .text:	section	.text,new
 516  0000               _I2C_Cmd:
 520                     ; 210   if (NewState != DISABLE)
 522  0000 4d            	tnz	a
 523  0001 2705          	jreq	L551
 524                     ; 213     I2C->CR1 |= I2C_CR1_PE;
 526  0003 72105210      	bset	21008,#0
 529  0007 81            	ret	
 530  0008               L551:
 531                     ; 218     I2C->CR1 &= (uint8_t)(~I2C_CR1_PE);
 533  0008 72115210      	bres	21008,#0
 534                     ; 220 }
 537  000c 81            	ret	
 573                     ; 228 void I2C_GeneralCallCmd(FunctionalState NewState)
 573                     ; 229 {
 574                     .text:	section	.text,new
 575  0000               _I2C_GeneralCallCmd:
 577  0000 88            	push	a
 578       00000000      OFST:	set	0
 581                     ; 231   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 583  0001 4d            	tnz	a
 584  0002 2711          	jreq	L42
 585  0004 4a            	dec	a
 586  0005 270e          	jreq	L42
 587  0007 ae00e7        	ldw	x,#231
 588  000a 89            	pushw	x
 589  000b 5f            	clrw	x
 590  000c 89            	pushw	x
 591  000d ae0008        	ldw	x,#L771
 592  0010 cd0000        	call	_assert_failed
 594  0013 5b04          	addw	sp,#4
 595  0015               L42:
 596                     ; 233   if (NewState != DISABLE)
 598  0015 7b01          	ld	a,(OFST+1,sp)
 599  0017 2706          	jreq	L102
 600                     ; 236     I2C->CR1 |= I2C_CR1_ENGC;
 602  0019 721c5210      	bset	21008,#6
 604  001d 2004          	jra	L302
 605  001f               L102:
 606                     ; 241     I2C->CR1 &= (uint8_t)(~I2C_CR1_ENGC);
 608  001f 721d5210      	bres	21008,#6
 609  0023               L302:
 610                     ; 243 }
 613  0023 84            	pop	a
 614  0024 81            	ret	
 650                     ; 253 void I2C_GenerateSTART(FunctionalState NewState)
 650                     ; 254 {
 651                     .text:	section	.text,new
 652  0000               _I2C_GenerateSTART:
 654  0000 88            	push	a
 655       00000000      OFST:	set	0
 658                     ; 256   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 660  0001 4d            	tnz	a
 661  0002 2711          	jreq	L63
 662  0004 4a            	dec	a
 663  0005 270e          	jreq	L63
 664  0007 ae0100        	ldw	x,#256
 665  000a 89            	pushw	x
 666  000b 5f            	clrw	x
 667  000c 89            	pushw	x
 668  000d ae0008        	ldw	x,#L771
 669  0010 cd0000        	call	_assert_failed
 671  0013 5b04          	addw	sp,#4
 672  0015               L63:
 673                     ; 258   if (NewState != DISABLE)
 675  0015 7b01          	ld	a,(OFST+1,sp)
 676  0017 2706          	jreq	L322
 677                     ; 261     I2C->CR2 |= I2C_CR2_START;
 679  0019 72105211      	bset	21009,#0
 681  001d 2004          	jra	L522
 682  001f               L322:
 683                     ; 266     I2C->CR2 &= (uint8_t)(~I2C_CR2_START);
 685  001f 72115211      	bres	21009,#0
 686  0023               L522:
 687                     ; 268 }
 690  0023 84            	pop	a
 691  0024 81            	ret	
 727                     ; 276 void I2C_GenerateSTOP(FunctionalState NewState)
 727                     ; 277 {
 728                     .text:	section	.text,new
 729  0000               _I2C_GenerateSTOP:
 731  0000 88            	push	a
 732       00000000      OFST:	set	0
 735                     ; 279   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 737  0001 4d            	tnz	a
 738  0002 2711          	jreq	L05
 739  0004 4a            	dec	a
 740  0005 270e          	jreq	L05
 741  0007 ae0117        	ldw	x,#279
 742  000a 89            	pushw	x
 743  000b 5f            	clrw	x
 744  000c 89            	pushw	x
 745  000d ae0008        	ldw	x,#L771
 746  0010 cd0000        	call	_assert_failed
 748  0013 5b04          	addw	sp,#4
 749  0015               L05:
 750                     ; 281   if (NewState != DISABLE)
 752  0015 7b01          	ld	a,(OFST+1,sp)
 753  0017 2706          	jreq	L542
 754                     ; 284     I2C->CR2 |= I2C_CR2_STOP;
 756  0019 72125211      	bset	21009,#1
 758  001d 2004          	jra	L742
 759  001f               L542:
 760                     ; 289     I2C->CR2 &= (uint8_t)(~I2C_CR2_STOP);
 762  001f 72135211      	bres	21009,#1
 763  0023               L742:
 764                     ; 291 }
 767  0023 84            	pop	a
 768  0024 81            	ret	
 805                     ; 299 void I2C_SoftwareResetCmd(FunctionalState NewState)
 805                     ; 300 {
 806                     .text:	section	.text,new
 807  0000               _I2C_SoftwareResetCmd:
 809  0000 88            	push	a
 810       00000000      OFST:	set	0
 813                     ; 302   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 815  0001 4d            	tnz	a
 816  0002 2711          	jreq	L26
 817  0004 4a            	dec	a
 818  0005 270e          	jreq	L26
 819  0007 ae012e        	ldw	x,#302
 820  000a 89            	pushw	x
 821  000b 5f            	clrw	x
 822  000c 89            	pushw	x
 823  000d ae0008        	ldw	x,#L771
 824  0010 cd0000        	call	_assert_failed
 826  0013 5b04          	addw	sp,#4
 827  0015               L26:
 828                     ; 304   if (NewState != DISABLE)
 830  0015 7b01          	ld	a,(OFST+1,sp)
 831  0017 2706          	jreq	L762
 832                     ; 307     I2C->CR2 |= I2C_CR2_SWRST;
 834  0019 721e5211      	bset	21009,#7
 836  001d 2004          	jra	L172
 837  001f               L762:
 838                     ; 312     I2C->CR2 &= (uint8_t)(~I2C_CR2_SWRST);
 840  001f 721f5211      	bres	21009,#7
 841  0023               L172:
 842                     ; 314 }
 845  0023 84            	pop	a
 846  0024 81            	ret	
 883                     ; 323 void I2C_StretchClockCmd(FunctionalState NewState)
 883                     ; 324 {
 884                     .text:	section	.text,new
 885  0000               _I2C_StretchClockCmd:
 887  0000 88            	push	a
 888       00000000      OFST:	set	0
 891                     ; 326   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 893  0001 4d            	tnz	a
 894  0002 2711          	jreq	L47
 895  0004 4a            	dec	a
 896  0005 270e          	jreq	L47
 897  0007 ae0146        	ldw	x,#326
 898  000a 89            	pushw	x
 899  000b 5f            	clrw	x
 900  000c 89            	pushw	x
 901  000d ae0008        	ldw	x,#L771
 902  0010 cd0000        	call	_assert_failed
 904  0013 5b04          	addw	sp,#4
 905  0015               L47:
 906                     ; 328   if (NewState != DISABLE)
 908  0015 7b01          	ld	a,(OFST+1,sp)
 909  0017 2706          	jreq	L113
 910                     ; 331     I2C->CR1 &= (uint8_t)(~I2C_CR1_NOSTRETCH);
 912  0019 721f5210      	bres	21008,#7
 914  001d 2004          	jra	L313
 915  001f               L113:
 916                     ; 337     I2C->CR1 |= I2C_CR1_NOSTRETCH;
 918  001f 721e5210      	bset	21008,#7
 919  0023               L313:
 920                     ; 339 }
 923  0023 84            	pop	a
 924  0024 81            	ret	
 987                     ; 348 void I2C_AcknowledgeConfig(I2C_Ack_TypeDef Ack)
 987                     ; 349 {
 988                     .text:	section	.text,new
 989  0000               _I2C_AcknowledgeConfig:
 991  0000 88            	push	a
 992       00000000      OFST:	set	0
 995                     ; 353   if (Ack == I2C_ACK_NONE)
 997  0001 4d            	tnz	a
 998  0002 2606          	jrne	L543
 999                     ; 356     I2C->CR2 &= (uint8_t)(~I2C_CR2_ACK);
1001  0004 72155211      	bres	21009,#2
1003  0008 2011          	jra	L743
1004  000a               L543:
1005                     ; 361     I2C->CR2 |= I2C_CR2_ACK;
1007  000a 72145211      	bset	21009,#2
1008                     ; 363     if (Ack == I2C_ACK_CURR)
1010  000e 4a            	dec	a
1011  000f 2606          	jrne	L153
1012                     ; 366       I2C->CR2 &= (uint8_t)(~I2C_CR2_POS);
1014  0011 72175211      	bres	21009,#3
1016  0015 2004          	jra	L743
1017  0017               L153:
1018                     ; 371       I2C->CR2 |= I2C_CR2_POS;
1020  0017 72165211      	bset	21009,#3
1021  001b               L743:
1022                     ; 374 }
1025  001b 84            	pop	a
1026  001c 81            	ret	
1099                     ; 384 void I2C_ITConfig(I2C_IT_TypeDef I2C_IT, FunctionalState NewState)
1099                     ; 385 {
1100                     .text:	section	.text,new
1101  0000               _I2C_ITConfig:
1103  0000 89            	pushw	x
1104       00000000      OFST:	set	0
1107                     ; 387   assert_param(IS_I2C_INTERRUPT_OK(I2C_IT));
1109  0001 9e            	ld	a,xh
1110  0002 4a            	dec	a
1111  0003 2723          	jreq	L011
1112  0005 9e            	ld	a,xh
1113  0006 a102          	cp	a,#2
1114  0008 271e          	jreq	L011
1115  000a 9e            	ld	a,xh
1116  000b a104          	cp	a,#4
1117  000d 2719          	jreq	L011
1118  000f 9e            	ld	a,xh
1119  0010 a103          	cp	a,#3
1120  0012 2714          	jreq	L011
1121  0014 9e            	ld	a,xh
1122  0015 a105          	cp	a,#5
1123  0017 270f          	jreq	L011
1124  0019 9e            	ld	a,xh
1125  001a a106          	cp	a,#6
1126  001c 270a          	jreq	L011
1127  001e 9e            	ld	a,xh
1128  001f a107          	cp	a,#7
1129  0021 2705          	jreq	L011
1130  0023 ae0183        	ldw	x,#387
1131  0026 ad22          	call	LC003
1132  0028               L011:
1133                     ; 388   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1135  0028 7b02          	ld	a,(OFST+2,sp)
1136  002a 2708          	jreq	L021
1137  002c 4a            	dec	a
1138  002d 2705          	jreq	L021
1139  002f ae0184        	ldw	x,#388
1140  0032 ad16          	call	LC003
1141  0034               L021:
1142                     ; 390   if (NewState != DISABLE)
1144  0034 7b02          	ld	a,(OFST+2,sp)
1145  0036 2707          	jreq	L114
1146                     ; 393     I2C->ITR |= (uint8_t)I2C_IT;
1148  0038 c6521a        	ld	a,21018
1149  003b 1a01          	or	a,(OFST+1,sp)
1151  003d 2006          	jra	L314
1152  003f               L114:
1153                     ; 398     I2C->ITR &= (uint8_t)(~(uint8_t)I2C_IT);
1155  003f 7b01          	ld	a,(OFST+1,sp)
1156  0041 43            	cpl	a
1157  0042 c4521a        	and	a,21018
1158  0045               L314:
1159  0045 c7521a        	ld	21018,a
1160                     ; 400 }
1163  0048 85            	popw	x
1164  0049 81            	ret	
1165  004a               LC003:
1166  004a 89            	pushw	x
1167  004b 5f            	clrw	x
1168  004c 89            	pushw	x
1169  004d ae0008        	ldw	x,#L771
1170  0050 cd0000        	call	_assert_failed
1172  0053 5b04          	addw	sp,#4
1173  0055 81            	ret	
1210                     ; 408 void I2C_FastModeDutyCycleConfig(I2C_DutyCycle_TypeDef I2C_DutyCycle)
1210                     ; 409 {
1211                     .text:	section	.text,new
1212  0000               _I2C_FastModeDutyCycleConfig:
1214  0000 88            	push	a
1215       00000000      OFST:	set	0
1218                     ; 411   assert_param(IS_I2C_DUTYCYCLE_OK(I2C_DutyCycle));
1220  0001 4d            	tnz	a
1221  0002 2712          	jreq	L231
1222  0004 a140          	cp	a,#64
1223  0006 270e          	jreq	L231
1224  0008 ae019b        	ldw	x,#411
1225  000b 89            	pushw	x
1226  000c 5f            	clrw	x
1227  000d 89            	pushw	x
1228  000e ae0008        	ldw	x,#L771
1229  0011 cd0000        	call	_assert_failed
1231  0014 5b04          	addw	sp,#4
1232  0016               L231:
1233                     ; 413   if (I2C_DutyCycle == I2C_DUTYCYCLE_16_9)
1235  0016 7b01          	ld	a,(OFST+1,sp)
1236  0018 a140          	cp	a,#64
1237  001a 2606          	jrne	L334
1238                     ; 416     I2C->CCRH |= I2C_CCRH_DUTY;
1240  001c 721c521c      	bset	21020,#6
1242  0020 2004          	jra	L534
1243  0022               L334:
1244                     ; 421     I2C->CCRH &= (uint8_t)(~I2C_CCRH_DUTY);
1246  0022 721d521c      	bres	21020,#6
1247  0026               L534:
1248                     ; 423 }
1251  0026 84            	pop	a
1252  0027 81            	ret	
1275                     ; 430 uint8_t I2C_ReceiveData(void)
1275                     ; 431 {
1276                     .text:	section	.text,new
1277  0000               _I2C_ReceiveData:
1281                     ; 433   return ((uint8_t)I2C->DR);
1283  0000 c65216        	ld	a,21014
1286  0003 81            	ret	
1351                     ; 443 void I2C_Send7bitAddress(uint8_t Address, I2C_Direction_TypeDef Direction)
1351                     ; 444 {
1352                     .text:	section	.text,new
1353  0000               _I2C_Send7bitAddress:
1355  0000 89            	pushw	x
1356       00000000      OFST:	set	0
1359                     ; 450   Address &= (uint8_t)0xFE;
1361  0001 7b01          	ld	a,(OFST+1,sp)
1362  0003 a4fe          	and	a,#254
1363  0005 6b01          	ld	(OFST+1,sp),a
1364                     ; 453   I2C->DR = (uint8_t)(Address | (uint8_t)Direction);
1366  0007 1a02          	or	a,(OFST+2,sp)
1367  0009 c75216        	ld	21014,a
1368                     ; 454 }
1371  000c 85            	popw	x
1372  000d 81            	ret	
1406                     ; 461 void I2C_SendData(uint8_t Data)
1406                     ; 462 {
1407                     .text:	section	.text,new
1408  0000               _I2C_SendData:
1412                     ; 464   I2C->DR = Data;
1414  0000 c75216        	ld	21014,a
1415                     ; 465 }
1418  0003 81            	ret	
1642                     ; 581 ErrorStatus I2C_CheckEvent(I2C_Event_TypeDef I2C_Event)
1642                     ; 582 {
1643                     .text:	section	.text,new
1644  0000               _I2C_CheckEvent:
1646  0000 89            	pushw	x
1647  0001 5206          	subw	sp,#6
1648       00000006      OFST:	set	6
1651                     ; 583   __IO uint16_t lastevent = 0x00;
1653  0003 5f            	clrw	x
1654  0004 1f04          	ldw	(OFST-2,sp),x
1656                     ; 584   uint8_t flag1 = 0x00 ;
1658                     ; 585   uint8_t flag2 = 0x00;
1660                     ; 586   ErrorStatus status = ERROR;
1662                     ; 591   if (I2C_Event == I2C_EVENT_SLAVE_ACK_FAILURE)
1664  0006 1e07          	ldw	x,(OFST+1,sp)
1665  0008 a30004        	cpw	x,#4
1666  000b 2609          	jrne	L726
1667                     ; 593     lastevent = I2C->SR2 & I2C_SR2_AF;
1669  000d c65218        	ld	a,21016
1670  0010 a404          	and	a,#4
1671  0012 5f            	clrw	x
1672  0013 97            	ld	xl,a
1674  0014 201a          	jra	L136
1675  0016               L726:
1676                     ; 597     flag1 = I2C->SR1;
1678  0016 c65217        	ld	a,21015
1679  0019 6b03          	ld	(OFST-3,sp),a
1681                     ; 598     flag2 = I2C->SR3;
1683  001b c65219        	ld	a,21017
1684  001e 6b06          	ld	(OFST+0,sp),a
1686                     ; 599     lastevent = ((uint16_t)((uint16_t)flag2 << (uint16_t)8) | (uint16_t)flag1);
1688  0020 5f            	clrw	x
1689  0021 7b03          	ld	a,(OFST-3,sp)
1690  0023 97            	ld	xl,a
1691  0024 1f01          	ldw	(OFST-5,sp),x
1693  0026 5f            	clrw	x
1694  0027 7b06          	ld	a,(OFST+0,sp)
1695  0029 97            	ld	xl,a
1696  002a 7b02          	ld	a,(OFST-4,sp)
1697  002c 01            	rrwa	x,a
1698  002d 1a01          	or	a,(OFST-5,sp)
1699  002f 01            	rrwa	x,a
1700  0030               L136:
1701  0030 1f04          	ldw	(OFST-2,sp),x
1703                     ; 602   if (((uint16_t)lastevent & (uint16_t)I2C_Event) == (uint16_t)I2C_Event)
1705  0032 1e04          	ldw	x,(OFST-2,sp)
1706  0034 01            	rrwa	x,a
1707  0035 1408          	and	a,(OFST+2,sp)
1708  0037 01            	rrwa	x,a
1709  0038 1407          	and	a,(OFST+1,sp)
1710  003a 01            	rrwa	x,a
1711  003b 1307          	cpw	x,(OFST+1,sp)
1712  003d 2604          	jrne	L336
1713                     ; 605     status = SUCCESS;
1715  003f a601          	ld	a,#1
1718  0041 2001          	jra	L536
1719  0043               L336:
1720                     ; 610     status = ERROR;
1722  0043 4f            	clr	a
1724  0044               L536:
1725                     ; 614   return status;
1729  0044 5b08          	addw	sp,#8
1730  0046 81            	ret	
1783                     ; 631 I2C_Event_TypeDef I2C_GetLastEvent(void)
1783                     ; 632 {
1784                     .text:	section	.text,new
1785  0000               _I2C_GetLastEvent:
1787  0000 5206          	subw	sp,#6
1788       00000006      OFST:	set	6
1791                     ; 633   __IO uint16_t lastevent = 0;
1793  0002 5f            	clrw	x
1794  0003 1f05          	ldw	(OFST-1,sp),x
1796                     ; 634   uint16_t flag1 = 0;
1798                     ; 635   uint16_t flag2 = 0;
1800                     ; 637   if ((I2C->SR2 & I2C_SR2_AF) != 0x00)
1802  0005 7205521805    	btjf	21016,#2,L566
1803                     ; 639     lastevent = I2C_EVENT_SLAVE_ACK_FAILURE;
1805  000a ae0004        	ldw	x,#4
1807  000d 2013          	jra	L766
1808  000f               L566:
1809                     ; 644     flag1 = I2C->SR1;
1811  000f c65217        	ld	a,21015
1812  0012 97            	ld	xl,a
1813  0013 1f01          	ldw	(OFST-5,sp),x
1815                     ; 645     flag2 = I2C->SR3;
1817  0015 c65219        	ld	a,21017
1818  0018 5f            	clrw	x
1819  0019 97            	ld	xl,a
1820  001a 1f03          	ldw	(OFST-3,sp),x
1822                     ; 648     lastevent = ((uint16_t)((uint16_t)flag2 << 8) | (uint16_t)flag1);
1824  001c 7b02          	ld	a,(OFST-4,sp)
1825  001e 01            	rrwa	x,a
1826  001f 1a01          	or	a,(OFST-5,sp)
1827  0021 01            	rrwa	x,a
1828  0022               L766:
1829  0022 1f05          	ldw	(OFST-1,sp),x
1831                     ; 651   return (I2C_Event_TypeDef)lastevent;
1833  0024 1e05          	ldw	x,(OFST-1,sp)
1836  0026 5b06          	addw	sp,#6
1837  0028 81            	ret	
2052                     ; 682 FlagStatus I2C_GetFlagStatus(I2C_Flag_TypeDef I2C_Flag)
2052                     ; 683 {
2053                     .text:	section	.text,new
2054  0000               _I2C_GetFlagStatus:
2056  0000 89            	pushw	x
2057  0001 89            	pushw	x
2058       00000002      OFST:	set	2
2061                     ; 684   uint8_t tempreg = 0;
2063  0002 0f02          	clr	(OFST+0,sp)
2065                     ; 685   uint8_t regindex = 0;
2067                     ; 686   FlagStatus bitstatus = RESET;
2069                     ; 692   regindex = (uint8_t)((uint16_t)I2C_Flag >> 8);
2071  0004 9e            	ld	a,xh
2072  0005 6b01          	ld	(OFST-1,sp),a
2074                     ; 694   switch (regindex)
2077                     ; 711     default:
2077                     ; 712       break;
2078  0007 4a            	dec	a
2079  0008 2708          	jreq	L176
2080  000a 4a            	dec	a
2081  000b 270a          	jreq	L376
2082  000d 4a            	dec	a
2083  000e 270c          	jreq	L576
2084  0010 200f          	jra	L1101
2085  0012               L176:
2086                     ; 697     case 0x01:
2086                     ; 698       tempreg = (uint8_t)I2C->SR1;
2088  0012 c65217        	ld	a,21015
2089                     ; 699       break;
2091  0015 2008          	jp	LC004
2092  0017               L376:
2093                     ; 702     case 0x02:
2093                     ; 703       tempreg = (uint8_t)I2C->SR2;
2095  0017 c65218        	ld	a,21016
2096                     ; 704       break;
2098  001a 2003          	jp	LC004
2099  001c               L576:
2100                     ; 707     case 0x03:
2100                     ; 708       tempreg = (uint8_t)I2C->SR3;
2102  001c c65219        	ld	a,21017
2103  001f               LC004:
2104  001f 6b02          	ld	(OFST+0,sp),a
2106                     ; 709       break;
2108                     ; 711     default:
2108                     ; 712       break;
2110  0021               L1101:
2111                     ; 716   if ((tempreg & (uint8_t)I2C_Flag ) != 0)
2113  0021 7b04          	ld	a,(OFST+2,sp)
2114  0023 1502          	bcp	a,(OFST+0,sp)
2115  0025 2704          	jreq	L3101
2116                     ; 719     bitstatus = SET;
2118  0027 a601          	ld	a,#1
2121  0029 2001          	jra	L5101
2122  002b               L3101:
2123                     ; 724     bitstatus = RESET;
2125  002b 4f            	clr	a
2127  002c               L5101:
2128                     ; 727   return bitstatus;
2132  002c 5b04          	addw	sp,#4
2133  002e 81            	ret	
2177                     ; 762 void I2C_ClearFlag(I2C_Flag_TypeDef I2C_FLAG)
2177                     ; 763 {
2178                     .text:	section	.text,new
2179  0000               _I2C_ClearFlag:
2181  0000 89            	pushw	x
2182       00000002      OFST:	set	2
2185                     ; 764   uint16_t flagpos = 0;
2187                     ; 769   flagpos = (uint16_t)I2C_FLAG & FLAG_Mask;
2189  0001 01            	rrwa	x,a
2190  0002 5f            	clrw	x
2191  0003 02            	rlwa	x,a
2192  0004 1f01          	ldw	(OFST-1,sp),x
2194                     ; 771   I2C->SR2 = (uint8_t)((uint16_t)(~flagpos));
2196  0006 7b02          	ld	a,(OFST+0,sp)
2197  0008 43            	cpl	a
2198  0009 c75218        	ld	21016,a
2199                     ; 772 }
2202  000c 85            	popw	x
2203  000d 81            	ret	
2369                     ; 794 ITStatus I2C_GetITStatus(I2C_ITPendingBit_TypeDef I2C_ITPendingBit)
2369                     ; 795 {
2370                     .text:	section	.text,new
2371  0000               _I2C_GetITStatus:
2373  0000 89            	pushw	x
2374  0001 5204          	subw	sp,#4
2375       00000004      OFST:	set	4
2378                     ; 796   ITStatus bitstatus = RESET;
2380                     ; 797   __IO uint8_t enablestatus = 0;
2382  0003 0f03          	clr	(OFST-1,sp)
2384                     ; 798   uint16_t tempregister = 0;
2386                     ; 803   tempregister = (uint8_t)( ((uint16_t)((uint16_t)I2C_ITPendingBit & ITEN_Mask)) >> 8);
2388  0005 9e            	ld	a,xh
2389  0006 a407          	and	a,#7
2390  0008 5f            	clrw	x
2391  0009 97            	ld	xl,a
2392  000a 1f01          	ldw	(OFST-3,sp),x
2394                     ; 806   enablestatus = (uint8_t)(I2C->ITR & ( uint8_t)tempregister);
2396  000c c6521a        	ld	a,21018
2397  000f 1402          	and	a,(OFST-2,sp)
2398  0011 6b03          	ld	(OFST-1,sp),a
2400                     ; 808   if ((uint16_t)((uint16_t)I2C_ITPendingBit & REGISTER_Mask) == REGISTER_SR1_Index)
2402  0013 7b05          	ld	a,(OFST+1,sp)
2403  0015 a430          	and	a,#48
2404  0017 97            	ld	xl,a
2405  0018 4f            	clr	a
2406  0019 02            	rlwa	x,a
2407  001a a30100        	cpw	x,#256
2408  001d 260d          	jrne	L7211
2409                     ; 811     if (((I2C->SR1 & (uint8_t)I2C_ITPendingBit) != RESET) && enablestatus)
2411  001f c65217        	ld	a,21015
2412  0022 1506          	bcp	a,(OFST+2,sp)
2413  0024 2715          	jreq	L7311
2415  0026 0d03          	tnz	(OFST-1,sp)
2416  0028 2711          	jreq	L7311
2417                     ; 814       bitstatus = SET;
2419  002a 200b          	jp	LC006
2420                     ; 819       bitstatus = RESET;
2421  002c               L7211:
2422                     ; 825     if (((I2C->SR2 & (uint8_t)I2C_ITPendingBit) != RESET) && enablestatus)
2424  002c c65218        	ld	a,21016
2425  002f 1506          	bcp	a,(OFST+2,sp)
2426  0031 2708          	jreq	L7311
2428  0033 0d03          	tnz	(OFST-1,sp)
2429  0035 2704          	jreq	L7311
2430                     ; 828       bitstatus = SET;
2432  0037               LC006:
2434  0037 a601          	ld	a,#1
2437  0039 2001          	jra	L5311
2438  003b               L7311:
2439                     ; 833       bitstatus = RESET;
2442  003b 4f            	clr	a
2444  003c               L5311:
2445                     ; 837   return  bitstatus;
2449  003c 5b06          	addw	sp,#6
2450  003e 81            	ret	
2495                     ; 874 void I2C_ClearITPendingBit(I2C_ITPendingBit_TypeDef I2C_ITPendingBit)
2495                     ; 875 {
2496                     .text:	section	.text,new
2497  0000               _I2C_ClearITPendingBit:
2499  0000 89            	pushw	x
2500       00000002      OFST:	set	2
2503                     ; 876   uint16_t flagpos = 0;
2505                     ; 882   flagpos = (uint16_t)I2C_ITPendingBit & FLAG_Mask;
2507  0001 01            	rrwa	x,a
2508  0002 5f            	clrw	x
2509  0003 02            	rlwa	x,a
2510  0004 1f01          	ldw	(OFST-1,sp),x
2512                     ; 885   I2C->SR2 = (uint8_t)((uint16_t)~flagpos);
2514  0006 7b02          	ld	a,(OFST+0,sp)
2515  0008 43            	cpl	a
2516  0009 c75218        	ld	21016,a
2517                     ; 886 }
2520  000c 85            	popw	x
2521  000d 81            	ret	
2534                     	xdef	_I2C_ClearITPendingBit
2535                     	xdef	_I2C_GetITStatus
2536                     	xdef	_I2C_ClearFlag
2537                     	xdef	_I2C_GetFlagStatus
2538                     	xdef	_I2C_GetLastEvent
2539                     	xdef	_I2C_CheckEvent
2540                     	xdef	_I2C_SendData
2541                     	xdef	_I2C_Send7bitAddress
2542                     	xdef	_I2C_ReceiveData
2543                     	xdef	_I2C_ITConfig
2544                     	xdef	_I2C_FastModeDutyCycleConfig
2545                     	xdef	_I2C_AcknowledgeConfig
2546                     	xdef	_I2C_StretchClockCmd
2547                     	xdef	_I2C_SoftwareResetCmd
2548                     	xdef	_I2C_GenerateSTOP
2549                     	xdef	_I2C_GenerateSTART
2550                     	xdef	_I2C_GeneralCallCmd
2551                     	xdef	_I2C_Cmd
2552                     	xdef	_I2C_Init
2553                     	xdef	_I2C_DeInit
2554                     	xref	_assert_failed
2555                     	switch	.const
2556  0008               L771:
2557  0008 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
2558  001a 6965735c7374  	dc.b	"ies\stm8s_stdperip"
2559  002c 685f64726976  	dc.b	"h_driver\src\stm8s"
2560  003e 5f6932632e63  	dc.b	"_i2c.c",0
2561                     	xref.b	c_lreg
2562                     	xref.b	c_x
2582                     	xref	c_sdivx
2583                     	xref	c_ludv
2584                     	xref	c_rtol
2585                     	xref	c_smul
2586                     	xref	c_lmul
2587                     	xref	c_lcmp
2588                     	xref	c_ltor
2589                     	end
