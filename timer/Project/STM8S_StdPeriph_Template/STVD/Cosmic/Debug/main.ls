   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.5 - 29 Dec 2015
   3                     ; Generator (Limited) V4.4.4 - 27 Jan 2016
   4                     ; Optimizer V4.4.4 - 27 Jan 2016
  21                     	bsct
  22  0000               _timesec:
  23  0000 03e7          	dc.w	999
  24  0002               _sleeptime:
  25  0002 00            	dc.b	0
  26  0003               _ind:
  27  0003 0a            	dc.b	10
  28  0004 0a            	dc.b	10
  29  0005 0a            	dc.b	10
  30  0006               _tchk:
  31  0006 00            	dc.b	0
  32  0007 00            	dc.b	0
  33  0008 00            	dc.b	0
  34  0009               _numind:
  35  0009 00            	dc.b	0
  36  000a               _kndtime:
  37  000a 00            	dc.b	0
  38  000b               _secundomer:
  39  000b 0001          	dc.w	1
  80                     ; 63 void assert_failed(u8* file, u32 line)
  80                     ; 64 { 
  82                     .text:	section	.text,new
  83  0000               _assert_failed:
  87  0000               L72:
  88  0000 20fe          	jra	L72
 153                     ; 77 uint32_t LSIMeasurment(void)
 153                     ; 78 {
 154                     .text:	section	.text,new
 155  0000               _LSIMeasurment:
 157  0000 520c          	subw	sp,#12
 158       0000000c      OFST:	set	12
 161                     ; 80   uint32_t lsi_freq_hz = 0x0;
 163                     ; 81   uint32_t fmaster = 0x0;
 165                     ; 82   uint16_t ICValue1 = 0x0;
 167                     ; 83   uint16_t ICValue2 = 0x0;
 169                     ; 86   fmaster = CLK_GetClockFreq();
 171  0002 cd0000        	call	_CLK_GetClockFreq
 173  0005 96            	ldw	x,sp
 174  0006 1c0009        	addw	x,#OFST-3
 175  0009 cd0000        	call	c_rtol
 178                     ; 89   AWU->CSR |= AWU_CSR_MSR;
 180  000c 721050f0      	bset	20720,#0
 181                     ; 101 	TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
 183  0010 7211525c      	bres	21084,#0
 184                     ; 104   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) | 
 184                     ; 105                           (uint8_t)(( (TIM1_ICSELECTION_DIRECTTI)) | ((uint8_t)( 0 << 4))));
 186  0014 c65258        	ld	a,21080
 187  0017 a40c          	and	a,#12
 188  0019 aa01          	or	a,#1
 189  001b c75258        	ld	21080,a
 190                     ; 106 	TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
 192  001e 7213525c      	bres	21084,#1
 193                     ; 107 	TIM1->CCER1 |=  TIM1_CCER1_CC1E;
 195  0022 7210525c      	bset	21084,#0
 196                     ; 111 	TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_ICxPSC)) 
 196                     ; 112                           | (uint8_t)TIM1_ICPSC_DIV8);
 198  0026 c65258        	ld	a,21080
 199  0029 aa0c          	or	a,#12
 200  002b c75258        	ld	21080,a
 201                     ; 116 	TIM1->CR1 |= TIM1_CR1_CEN;
 203  002e 72105250      	bset	21072,#0
 205  0032               L76:
 206                     ; 119   while((TIM1->SR1 & TIM1_FLAG_CC1) != TIM1_FLAG_CC1);
 208  0032 72035255fb    	btjf	21077,#1,L76
 209                     ; 121   ICValue1 = TIM1_GetCapture1();
 211  0037 cd0000        	call	_TIM1_GetCapture1
 213  003a 1f05          	ldw	(OFST-7,sp),x
 215                     ; 122   TIM1_ClearFlag(TIM1_FLAG_CC1);
 217  003c ae0002        	ldw	x,#2
 218  003f cd0000        	call	_TIM1_ClearFlag
 221  0042               L57:
 222                     ; 125   while((TIM1->SR1 & TIM1_FLAG_CC1) != TIM1_FLAG_CC1);
 224  0042 72035255fb    	btjf	21077,#1,L57
 225                     ; 127   ICValue2 = TIM1_GetCapture1();
 227  0047 cd0000        	call	_TIM1_GetCapture1
 229  004a 1f07          	ldw	(OFST-5,sp),x
 231                     ; 128   TIM1_ClearFlag(TIM1_FLAG_CC1);
 233  004c ae0002        	ldw	x,#2
 234  004f cd0000        	call	_TIM1_ClearFlag
 236                     ; 131   TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
 238  0052 7211525c      	bres	21084,#0
 239                     ; 133   TIM1_Cmd(DISABLE);
 241  0056 4f            	clr	a
 242  0057 cd0000        	call	_TIM1_Cmd
 244                     ; 164   lsi_freq_hz = (8 * fmaster) / (ICValue2 - ICValue1);
 246  005a 1e07          	ldw	x,(OFST-5,sp)
 247  005c 72f005        	subw	x,(OFST-7,sp)
 248  005f cd0000        	call	c_uitolx
 250  0062 96            	ldw	x,sp
 251  0063 5c            	incw	x
 252  0064 cd0000        	call	c_rtol
 255  0067 96            	ldw	x,sp
 256  0068 1c0009        	addw	x,#OFST-3
 257  006b cd0000        	call	c_ltor
 259  006e a603          	ld	a,#3
 260  0070 cd0000        	call	c_llsh
 262  0073 96            	ldw	x,sp
 263  0074 5c            	incw	x
 264  0075 cd0000        	call	c_ludv
 266  0078 96            	ldw	x,sp
 267  0079 1c0009        	addw	x,#OFST-3
 268  007c cd0000        	call	c_rtol
 271                     ; 167   AWU->CSR &= (uint8_t)(~AWU_CSR_MSR);
 273  007f 721150f0      	bres	20720,#0
 274                     ; 169  return (lsi_freq_hz);
 276  0083 96            	ldw	x,sp
 277  0084 1c0009        	addw	x,#OFST-3
 278  0087 cd0000        	call	c_ltor
 282  008a 5b0c          	addw	sp,#12
 283  008c 81            	ret	
 286                     	bsct
 287  000d               _timedelay:
 288  000d 0000          	dc.w	0
 321                     ; 174 void Delay(u16 nCount)
 321                     ; 175 {
 322                     .text:	section	.text,new
 323  0000               _Delay:
 327                     ; 177     timedelay = nCount;
 329  0000 bf0d          	ldw	_timedelay,x
 331  0002               L321:
 332                     ; 179 		while (timedelay);
 334  0002 be0d          	ldw	x,_timedelay
 335  0004 26fc          	jrne	L321
 336                     ; 180 }
 339  0006 81            	ret	
 374                     .const:	section	.text
 375  0000               L23:
 376  0000 00007fff      	dc.l	32767
 377                     ; 182 int myrand(int max)
 377                     ; 183 {
 378                     .text:	section	.text,new
 379  0000               _myrand:
 381  0000 89            	pushw	x
 382       00000000      OFST:	set	0
 385                     ; 185 	return (int)((long)rand()*max/RAND_MAX)+1;
 387  0001 cd0000        	call	_rand
 389  0004 1601          	ldw	y,(OFST+1,sp)
 390  0006 cd0000        	call	c_vmul
 392  0009 ae0000        	ldw	x,#L23
 393  000c cd0000        	call	c_ldiv
 395  000f be02          	ldw	x,c_lreg+2
 396  0011 5c            	incw	x
 399  0012 5b02          	addw	sp,#2
 400  0014 81            	ret	
 436                     ; 189 void cifra(u8 num){
 437                     .text:	section	.text,new
 438  0000               _cifra:
 440  0000 88            	push	a
 441       00000000      OFST:	set	0
 444                     ; 190 	ALLOFF
 446  0001 4b58          	push	#88
 447  0003 ae500a        	ldw	x,#20490
 448  0006 cd0000        	call	_GPIO_WriteHigh
 450  0009 84            	pop	a
 453  000a 4b40          	push	#64
 454  000c ae500f        	ldw	x,#20495
 455  000f cd0000        	call	_GPIO_WriteHigh
 457  0012 84            	pop	a
 460  0013 4b0a          	push	#10
 461  0015 ae5000        	ldw	x,#20480
 462  0018 cd0000        	call	_GPIO_WriteHigh
 464  001b 84            	pop	a
 467  001c 4b30          	push	#48
 468  001e ae5005        	ldw	x,#20485
 469  0021 cd0000        	call	_GPIO_WriteHigh
 471  0024 84            	pop	a
 472                     ; 192 	if (num==0) {
 474  0025 7b01          	ld	a,(OFST+1,sp)
 475  0027 260e          	jrne	L361
 476                     ; 193 		AON;BON;CON;DON;EON;FON;
 478  0029 cd00b3        	call	LC001
 481  002c cd00b7        	call	LC002
 484  002f cd00e3        	call	LC007
 487  0032 cd00cb        	call	LC004
 488  0035 7b01          	ld	a,(OFST+1,sp)
 489  0037               L361:
 490                     ; 195 	if (num==1) {
 492  0037 a101          	cp	a,#1
 493  0039 2605          	jrne	L561
 494                     ; 196 		BON;CON;
 496  003b cd00d5        	call	LC005
 497  003e 7b01          	ld	a,(OFST+1,sp)
 498  0040               L561:
 499                     ; 198 	if (num==2) {
 501  0040 a102          	cp	a,#2
 502  0042 260f          	jrne	L761
 503                     ; 199 		AON;BON;GON;EON;DON;
 505  0044 cd00d9        	call	LC006
 508  0047 cd00f7        	call	LC009
 511  004a ad75          	call	LC003
 514  004c cd00e3        	call	LC007
 517  004f ad66          	call	LC002
 518  0051 7b01          	ld	a,(OFST+1,sp)
 519  0053               L761:
 520                     ; 201 	if (num==3) {
 522  0053 a103          	cp	a,#3
 523  0055 2608          	jrne	L171
 524                     ; 202 		AON;BON;CON;DON;GON;
 526  0057 ad5a          	call	LC001
 529  0059 ad5c          	call	LC002
 532  005b ad64          	call	LC003
 533  005d 7b01          	ld	a,(OFST+1,sp)
 534  005f               L171:
 535                     ; 204 	if (num==4) {
 537  005f a104          	cp	a,#4
 538  0061 2608          	jrne	L371
 539                     ; 205 		FON;GON;BON;CON;
 541  0063 ad66          	call	LC004
 544  0065 ad5a          	call	LC003
 547  0067 ad6c          	call	LC005
 548  0069 7b01          	ld	a,(OFST+1,sp)
 549  006b               L371:
 550                     ; 207 	if (num==5) {
 552  006b a105          	cp	a,#5
 553  006d 260c          	jrne	L571
 554                     ; 208 		AON;FON;GON;CON;DON;
 556  006f ad68          	call	LC006
 559  0071 ad58          	call	LC004
 562  0073 ad4c          	call	LC003
 565  0075 ad76          	call	LC008
 568  0077 ad3e          	call	LC002
 569  0079 7b01          	ld	a,(OFST+1,sp)
 570  007b               L571:
 571                     ; 210 	if (num==6) {
 573  007b a106          	cp	a,#6
 574  007d 260e          	jrne	L771
 575                     ; 211 		AON;EON;FON;GON;CON;DON;
 577  007f ad58          	call	LC006
 580  0081 ad60          	call	LC007
 583  0083 ad46          	call	LC004
 586  0085 ad3a          	call	LC003
 589  0087 ad64          	call	LC008
 592  0089 ad2c          	call	LC002
 593  008b 7b01          	ld	a,(OFST+1,sp)
 594  008d               L771:
 595                     ; 213 	if (num==7) {
 597  008d a107          	cp	a,#7
 598  008f 2604          	jrne	L102
 599                     ; 214 		AON;BON;CON;
 601  0091 ad20          	call	LC001
 602  0093 7b01          	ld	a,(OFST+1,sp)
 603  0095               L102:
 604                     ; 216 	if (num==8) {
 606  0095 a108          	cp	a,#8
 607  0097 260c          	jrne	L302
 608                     ; 217 		AON;BON;CON;GON;DON;EON;FON;
 610  0099 ad18          	call	LC001
 613  009b ad24          	call	LC003
 616  009d ad18          	call	LC002
 619  009f ad42          	call	LC007
 622  00a1 ad28          	call	LC004
 623  00a3 7b01          	ld	a,(OFST+1,sp)
 624  00a5               L302:
 625                     ; 219 	if (num==9) {
 627  00a5 a109          	cp	a,#9
 628  00a7 2608          	jrne	L502
 629                     ; 220 		AON;BON;CON;GON;DON;FON;
 631  00a9 ad08          	call	LC001
 634  00ab ad14          	call	LC003
 637  00ad ad08          	call	LC002
 640  00af ad1a          	call	LC004
 641  00b1               L502:
 642                     ; 223 }
 645  00b1 84            	pop	a
 646  00b2 81            	ret	
 647  00b3               LC001:
 648  00b3 ad24          	call	LC006
 649                     ; 193 		AON;BON;CON;DON;EON;FON;
 651  00b5 201e          	jp	LC005
 652  00b7               LC002:
 653  00b7 4b10          	push	#16
 654  00b9 ae5005        	ldw	x,#20485
 655  00bc cd0000        	call	_GPIO_WriteLow
 657  00bf 84            	pop	a
 658  00c0 81            	ret	
 659  00c1               LC003:
 660  00c1 4b10          	push	#16
 661  00c3 ae500a        	ldw	x,#20490
 662  00c6 cd0000        	call	_GPIO_WriteLow
 664  00c9 84            	pop	a
 665  00ca 81            	ret	
 666  00cb               LC004:
 667  00cb 4b02          	push	#2
 668  00cd ae5000        	ldw	x,#20480
 669  00d0 cd0000        	call	_GPIO_WriteLow
 671  00d3 84            	pop	a
 672  00d4 81            	ret	
 673  00d5               LC005:
 674  00d5 ad20          	call	LC009
 677  00d7 2014          	jp	LC008
 678  00d9               LC006:
 679  00d9 4b40          	push	#64
 680  00db ae500f        	ldw	x,#20495
 681  00de cd0000        	call	_GPIO_WriteLow
 683  00e1 84            	pop	a
 684  00e2 81            	ret	
 685  00e3               LC007:
 686  00e3 4b08          	push	#8
 687  00e5 ae5000        	ldw	x,#20480
 688  00e8 cd0000        	call	_GPIO_WriteLow
 690  00eb 84            	pop	a
 691  00ec 81            	ret	
 692  00ed               LC008:
 693  00ed 4b08          	push	#8
 694  00ef ae500a        	ldw	x,#20490
 695  00f2 cd0000        	call	_GPIO_WriteLow
 697  00f5 84            	pop	a
 698  00f6 81            	ret	
 699  00f7               LC009:
 700  00f7 4b40          	push	#64
 701  00f9 ae500a        	ldw	x,#20490
 702  00fc cd0000        	call	_GPIO_WriteLow
 704  00ff 84            	pop	a
 705  0100 81            	ret	
 740                     ; 225 void shownumber(u16 num){
 741                     .text:	section	.text,new
 742  0000               _shownumber:
 744  0000 89            	pushw	x
 745  0001 88            	push	a
 746       00000001      OFST:	set	1
 749                     ; 226 	ind[0]=num/100;
 751  0002 a664          	ld	a,#100
 752  0004 62            	div	x,a
 753  0005 01            	rrwa	x,a
 754  0006 b703          	ld	_ind,a
 755                     ; 227 	ind[1]=num/10-ind[0]*10;
 757  0008 97            	ld	xl,a
 758  0009 a60a          	ld	a,#10
 759  000b 42            	mul	x,a
 760  000c 9f            	ld	a,xl
 761  000d 6b01          	ld	(OFST+0,sp),a
 763  000f a60a          	ld	a,#10
 764  0011 1e02          	ldw	x,(OFST+1,sp)
 765  0013 62            	div	x,a
 766  0014 01            	rrwa	x,a
 767  0015 1001          	sub	a,(OFST+0,sp)
 768  0017 b704          	ld	_ind+1,a
 769                     ; 228 	ind[2]=num - ind[0]*100 - ind[1]*10;
 771  0019 97            	ld	xl,a
 772  001a a60a          	ld	a,#10
 773  001c 42            	mul	x,a
 774  001d 9f            	ld	a,xl
 775  001e 6b01          	ld	(OFST+0,sp),a
 777  0020 b603          	ld	a,_ind
 778  0022 97            	ld	xl,a
 779  0023 a664          	ld	a,#100
 780  0025 42            	mul	x,a
 781  0026 9f            	ld	a,xl
 782  0027 1003          	sub	a,(OFST+2,sp)
 783  0029 40            	neg	a
 784  002a 1001          	sub	a,(OFST+0,sp)
 785  002c b705          	ld	_ind+2,a
 786                     ; 229 }	
 789  002e 5b03          	addw	sp,#3
 790  0030 81            	ret	
 855                     ; 232 void main(void)
 855                     ; 233 {
 856                     .text:	section	.text,new
 857  0000               _main:
 859  0000 89            	pushw	x
 860       00000002      OFST:	set	2
 863                     ; 234 	CLK->PCKENR1 = CLK_PCKENR1_TIM4+CLK_PCKENR1_TIM2;
 865  0001 353050c7      	mov	20679,#48
 866                     ; 235 	CLK->PCKENR2 = 0b01110111;
 868  0005 357750ca      	mov	20682,#119
 869                     ; 237 	CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV8);
 871  0009 a618          	ld	a,#24
 872  000b cd0000        	call	_CLK_HSIPrescalerConfig
 874                     ; 239 	TIM4_TimeBaseInit(TIM4_PRESCALER_8, 249);
 876  000e ae03f9        	ldw	x,#1017
 877  0011 cd0000        	call	_TIM4_TimeBaseInit
 879                     ; 240   TIM4_ClearFlag(TIM4_FLAG_UPDATE);
 881  0014 a601          	ld	a,#1
 882  0016 cd0000        	call	_TIM4_ClearFlag
 884                     ; 241 	TIM4_ITConfig(TIM4_IT_UPDATE, ENABLE);
 886  0019 ae0101        	ldw	x,#257
 887  001c cd0000        	call	_TIM4_ITConfig
 889                     ; 242   TIM4->IER |= (uint8_t)TIM4_IT_UPDATE;
 891  001f 72105343      	bset	21315,#0
 892                     ; 244 	TIM2_TimeBaseInit(TIM2_PRESCALER_8, 50);
 894  0023 ae0032        	ldw	x,#50
 895  0026 89            	pushw	x
 896  0027 a603          	ld	a,#3
 897  0029 cd0000        	call	_TIM2_TimeBaseInit
 899  002c 85            	popw	x
 900                     ; 245   TIM2_ClearFlag(TIM2_FLAG_UPDATE);
 902  002d ae0001        	ldw	x,#1
 903  0030 cd0000        	call	_TIM2_ClearFlag
 905                     ; 246 	TIM2_ITConfig(TIM2_IT_UPDATE, ENABLE);
 907  0033 ae0101        	ldw	x,#257
 908  0036 cd0000        	call	_TIM2_ITConfig
 910                     ; 247   TIM2->IER |= (uint8_t)TIM2_IT_UPDATE;
 912  0039 72105303      	bset	21251,#0
 913                     ; 250 	EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOD,EXTI_SENSITIVITY_FALL_ONLY);	
 915  003d ae0302        	ldw	x,#770
 916  0040 cd0000        	call	_EXTI_SetExtIntSensitivity
 918                     ; 254 		for (i=0;i<KNNUM;i++) {
 920  0043 4f            	clr	a
 921  0044 6b02          	ld	(OFST+0,sp),a
 923  0046               L742:
 924                     ; 255 			kn[i]=0;
 926  0046 5f            	clrw	x
 927  0047 97            	ld	xl,a
 928  0048 6f06          	clr	(_kn,x)
 929                     ; 256 			knstatus[i]=0;
 931  004a 5f            	clrw	x
 932  004b 97            	ld	xl,a
 933  004c 6f04          	clr	(_knstatus,x)
 934                     ; 254 		for (i=0;i<KNNUM;i++) {
 936  004e 0c02          	inc	(OFST+0,sp)
 940  0050 7b02          	ld	a,(OFST+0,sp)
 941  0052 a102          	cp	a,#2
 942  0054 25f0          	jrult	L742
 943                     ; 261 	BEEP_Cmd(DISABLE);
 945  0056 4f            	clr	a
 946  0057 cd0000        	call	_BEEP_Cmd
 948                     ; 264 	enableInterrupts();
 951  005a 9a            	rim	
 953                     ; 266   GPIO_Init(GPIOD,GPIO_PIN_2|GPIO_PIN_3,GPIO_MODE_IN_PU_IT);//кнопки
 956  005b 4b60          	push	#96
 957  005d 4b0c          	push	#12
 958  005f ae500f        	ldw	x,#20495
 959  0062 cd0000        	call	_GPIO_Init
 961  0065 85            	popw	x
 962                     ; 268 	GPIO_Init(GPIOD,GPIO_PIN_4,GPIO_MODE_OUT_PP_LOW_SLOW);//пищалка
 964  0066 4bc0          	push	#192
 965  0068 4b10          	push	#16
 966  006a ae500f        	ldw	x,#20495
 967  006d cd0000        	call	_GPIO_Init
 969  0070 85            	popw	x
 970                     ; 270 	GPIO_Init(GPIOD,GPIO_PIN_5|GPIO_PIN_6,GPIO_MODE_OUT_PP_HIGH_SLOW);//индикатор
 972  0071 4bd0          	push	#208
 973  0073 4b60          	push	#96
 974  0075 ae500f        	ldw	x,#20495
 975  0078 cd0000        	call	_GPIO_Init
 977  007b 85            	popw	x
 978                     ; 271 	GPIO_Init(GPIOA,GPIO_PIN_1|GPIO_PIN_3,GPIO_MODE_OUT_PP_HIGH_SLOW);//
 980  007c 4bd0          	push	#208
 981  007e 4b0a          	push	#10
 982  0080 ae5000        	ldw	x,#20480
 983  0083 cd0000        	call	_GPIO_Init
 985  0086 85            	popw	x
 986                     ; 272 	GPIO_Init(GPIOB,GPIO_PIN_4|GPIO_PIN_5,GPIO_MODE_OUT_PP_HIGH_SLOW);//
 988  0087 4bd0          	push	#208
 989  0089 4b30          	push	#48
 990  008b ae5005        	ldw	x,#20485
 991  008e cd0000        	call	_GPIO_Init
 993  0091 85            	popw	x
 994                     ; 273 	GPIO_Init(GPIOC,GPIO_PIN_3|GPIO_PIN_4|GPIO_PIN_5|GPIO_PIN_6|GPIO_PIN_7,GPIO_MODE_OUT_PP_HIGH_SLOW);
 996  0092 4bd0          	push	#208
 997  0094 4bf8          	push	#248
 998  0096 ae500a        	ldw	x,#20490
 999  0099 cd0000        	call	_GPIO_Init
1001  009c 8e            	halt	
1002  009d a601          	ld	a,#1
1003  009f 85            	popw	x
1004                     ; 276 	halt();
1008                     ; 279 	TIM4_Cmd(ENABLE);
1011  00a0 cd0000        	call	_TIM4_Cmd
1013                     ; 280 	TIM2_Cmd(ENABLE);
1015  00a3 a601          	ld	a,#1
1016  00a5 cd0000        	call	_TIM2_Cmd
1018                     ; 282 	sleeptime=30;
1020  00a8 351e0002      	mov	_sleeptime,#30
1021  00ac               L552:
1022                     ; 286 		if (kn[0] == KNONE) {
1024  00ac b606          	ld	a,_kn
1025  00ae a104          	cp	a,#4
1026  00b0 2605          	jrne	L162
1027                     ; 287 			secundomer = 0;
1029  00b2 5f            	clrw	x
1030  00b3 ad73          	call	LC010
1031  00b5 b706          	ld	_kn,a
1032  00b7               L162:
1033                     ; 291 		if (kn[0] == KNTWO) {
1035  00b7 a106          	cp	a,#6
1036  00b9 2607          	jrne	L362
1037                     ; 292 			secundomer = 100;
1039  00bb ae0064        	ldw	x,#100
1040  00be ad68          	call	LC010
1041  00c0 b706          	ld	_kn,a
1042  00c2               L362:
1043                     ; 296 		if (kn[0] == KNLONG) {
1045  00c2 a105          	cp	a,#5
1046  00c4 260b          	jrne	L562
1047                     ; 297 			secundomer = 200;
1049  00c6 ae00c8        	ldw	x,#200
1050  00c9 bf0b          	ldw	_secundomer,x
1051                     ; 298 			sleeptime=30;
1053  00cb 351e0002      	mov	_sleeptime,#30
1054                     ; 299 			kn[0]=0;
1056  00cf 3f06          	clr	_kn
1057  00d1               L562:
1058                     ; 303 	if (kn[1] == KNONE) {
1060  00d1 b607          	ld	a,_kn+1
1061  00d3 a104          	cp	a,#4
1062  00d5 2607          	jrne	L762
1063                     ; 304 			secundomer = 700;
1065  00d7 ae02bc        	ldw	x,#700
1066  00da ad4c          	call	LC010
1067  00dc b707          	ld	_kn+1,a
1068  00de               L762:
1069                     ; 308 		if (kn[1] == KNTWO) {
1071  00de a106          	cp	a,#6
1072  00e0 2607          	jrne	L172
1073                     ; 309 			secundomer = 800;
1075  00e2 ae0320        	ldw	x,#800
1076  00e5 ad41          	call	LC010
1077  00e7 b707          	ld	_kn+1,a
1078  00e9               L172:
1079                     ; 313 		if (kn[1] == KNLONG) {
1081  00e9 a105          	cp	a,#5
1082  00eb 260b          	jrne	L372
1083                     ; 314 			secundomer = 900;
1085  00ed ae0384        	ldw	x,#900
1086  00f0 bf0b          	ldw	_secundomer,x
1087                     ; 315 			sleeptime=30;
1089  00f2 351e0002      	mov	_sleeptime,#30
1090                     ; 316 			kn[1]=0;
1092  00f6 3f07          	clr	_kn+1
1093  00f8               L372:
1094                     ; 323 		if (sleeptime==0)
1096  00f8 b602          	ld	a,_sleeptime
1097  00fa 26b0          	jrne	L552
1098                     ; 326 			disableInterrupts();//это запрещает прерывать основную программу! но не убирает внешние прерывания на выход из сна!
1101  00fc 9b            	sim	
1103                     ; 328 			OFF1;
1106  00fd 4b20          	push	#32
1107  00ff ae500f        	ldw	x,#20495
1108  0102 cd0000        	call	_GPIO_WriteHigh
1110  0105 84            	pop	a
1111                     ; 329 			OFF2;
1113  0106 4b20          	push	#32
1114  0108 ae500a        	ldw	x,#20490
1115  010b cd0000        	call	_GPIO_WriteHigh
1117  010e 84            	pop	a
1118                     ; 330 			OFF3;
1120  010f 4b80          	push	#128
1121  0111 ae500a        	ldw	x,#20490
1122  0114 cd0000        	call	_GPIO_WriteHigh
1124  0117 84            	pop	a
1125                     ; 331 			i++;
1127  0118 1e01          	ldw	x,(OFST-1,sp)
1128  011a 5c            	incw	x
1129  011b 1f01          	ldw	(OFST-1,sp),x
1131                     ; 334 			halt();
1134  011d 8e            	halt	
1136                     ; 335 			enableInterrupts();
1140  011e 9a            	rim	
1142                     ; 336 			sleeptime=30;
1145  011f 351e0002      	mov	_sleeptime,#30
1146                     ; 337 			secundomer=0;
1148  0123 5f            	clrw	x
1149  0124 bf0b          	ldw	_secundomer,x
1150  0126 2084          	jra	L552
1151  0128               LC010:
1152  0128 bf0b          	ldw	_secundomer,x
1153                     ; 310 			sleeptime=30;
1155  012a 351e0002      	mov	_sleeptime,#30
1156                     ; 311 			kn[1]=0;
1158  012e 4f            	clr	a
1159  012f 81            	ret	
1214                     ; 342 void knint(u8 knum, u8 zn,u8 pin) {
1215                     .text:	section	.text,new
1216  0000               _knint:
1218  0000 89            	pushw	x
1219       00000000      OFST:	set	0
1222                     ; 344 	if (knstatus[knum] && ((zn&pin) == 0)) {//кнопку нажали
1224  0001 9e            	ld	a,xh
1225  0002 5f            	clrw	x
1226  0003 97            	ld	xl,a
1227  0004 e604          	ld	a,(_knstatus,x)
1228  0006 2754          	jreq	L523
1230  0008 7b02          	ld	a,(OFST+2,sp)
1231  000a 1505          	bcp	a,(OFST+5,sp)
1232  000c 264e          	jrne	L523
1233                     ; 345 		knstatus[knum] = zn&pin;
1235  000e 7b01          	ld	a,(OFST+1,sp)
1236  0010 5f            	clrw	x
1237  0011 97            	ld	xl,a
1238  0012 7b02          	ld	a,(OFST+2,sp)
1239  0014 1405          	and	a,(OFST+5,sp)
1240  0016 e704          	ld	(_knstatus,x),a
1241                     ; 346 		if (kn[knum]>=KNONE) return; //еще не обработали предыдущее нажатие в основном цикле пропустим это нажатие
1243  0018 5f            	clrw	x
1244  0019 7b01          	ld	a,(OFST+1,sp)
1245  001b 97            	ld	xl,a
1246  001c e606          	ld	a,(_kn,x)
1247  001e a104          	cp	a,#4
1248  0020 2502          	jrult	L723
1252  0022 85            	popw	x
1253  0023 81            	ret	
1254  0024               L723:
1255                     ; 348 		kn[knum]++;//колво нажатий плюс один
1257  0024 7b01          	ld	a,(OFST+1,sp)
1258  0026 5f            	clrw	x
1259  0027 97            	ld	xl,a
1260  0028 6c06          	inc	(_kn,x)
1261                     ; 349 		if (kn[knum]==1) kntime[knum] = KNTIMELONG;//первый раз начнм замер времени
1263  002a ad7b          	call	LC012
1264  002c 4a            	dec	a
1265  002d 260b          	jrne	L133
1268  002f 7b01          	ld	a,(OFST+1,sp)
1269  0031 5f            	clrw	x
1270  0032 97            	ld	xl,a
1271  0033 58            	sllw	x
1272  0034 90ae03e8      	ldw	y,#1000
1273  0038 ef00          	ldw	(_kntime,x),y
1274  003a               L133:
1275                     ; 351 		if (kn[knum]==2) {
1277  003a 7b01          	ld	a,(OFST+1,sp)
1278  003c ad69          	call	LC012
1279  003e a102          	cp	a,#2
1280  0040 261a          	jrne	L523
1281                     ; 352 			if (kntime[knum] > (KNTIMELONG-KNTIMETWO) ) kn[knum] = KNTWO;
1283  0042 7b01          	ld	a,(OFST+1,sp)
1284  0044 5f            	clrw	x
1285  0045 97            	ld	xl,a
1286  0046 58            	sllw	x
1287  0047 9093          	ldw	y,x
1288  0049 90ee00        	ldw	y,(_kntime,y)
1289  004c 90a302bd      	cpw	y,#701
1290  0050 5f            	clrw	x
1291  0051 97            	ld	xl,a
1292  0052 2504          	jrult	L533
1295  0054 a606          	ld	a,#6
1297  0056 2002          	jp	LC011
1298  0058               L533:
1299                     ; 353 			else kn[knum] = KNONE;
1301  0058 a604          	ld	a,#4
1302  005a               LC011:
1303  005a e706          	ld	(_kn,x),a
1304  005c               L523:
1305                     ; 357 	if ((kn[knum]==1) && (kntime[knum]==0)) kn[knum]=KNLONG;
1307  005c 7b01          	ld	a,(OFST+1,sp)
1308  005e ad47          	call	LC012
1309  0060 4a            	dec	a
1310  0061 2613          	jrne	L143
1312  0063 7b01          	ld	a,(OFST+1,sp)
1313  0065 5f            	clrw	x
1314  0066 97            	ld	xl,a
1315  0067 58            	sllw	x
1316  0068 e601          	ld	a,(_kntime+1,x)
1317  006a ea00          	or	a,(_kntime,x)
1318  006c 2608          	jrne	L143
1321  006e 7b01          	ld	a,(OFST+1,sp)
1322  0070 5f            	clrw	x
1323  0071 97            	ld	xl,a
1324  0072 a605          	ld	a,#5
1325  0074 e706          	ld	(_kn,x),a
1326  0076               L143:
1327                     ; 358 	if ((kn[knum]==1) && (kntime[knum]<(KNTIMELONG-KNTIMETWO)) && zn&pin) kn[knum]=KNONE;
1329  0076 7b01          	ld	a,(OFST+1,sp)
1330  0078 ad2d          	call	LC012
1331  007a 4a            	dec	a
1332  007b 261e          	jrne	L343
1334  007d 7b01          	ld	a,(OFST+1,sp)
1335  007f 5f            	clrw	x
1336  0080 97            	ld	xl,a
1337  0081 58            	sllw	x
1338  0082 9093          	ldw	y,x
1339  0084 90ee00        	ldw	y,(_kntime,y)
1340  0087 90a302bc      	cpw	y,#700
1341  008b 240e          	jruge	L343
1343  008d 7b02          	ld	a,(OFST+2,sp)
1344  008f 1505          	bcp	a,(OFST+5,sp)
1345  0091 2708          	jreq	L343
1348  0093 7b01          	ld	a,(OFST+1,sp)
1349  0095 5f            	clrw	x
1350  0096 97            	ld	xl,a
1351  0097 a604          	ld	a,#4
1352  0099 e706          	ld	(_kn,x),a
1353  009b               L343:
1354                     ; 360 	knstatus[knum] = zn&pin;
1356  009b 7b01          	ld	a,(OFST+1,sp)
1357  009d 5f            	clrw	x
1358  009e 97            	ld	xl,a
1359  009f 7b02          	ld	a,(OFST+2,sp)
1360  00a1 1405          	and	a,(OFST+5,sp)
1361  00a3 e704          	ld	(_knstatus,x),a
1362                     ; 362 }	 
1365  00a5 85            	popw	x
1366  00a6 81            	ret	
1367  00a7               LC012:
1368  00a7 5f            	clrw	x
1369  00a8 97            	ld	xl,a
1370  00a9 e606          	ld	a,(_kn,x)
1371  00ab 81            	ret	
1395                     ; 364  INTERRUPT_HANDLER(EXTI_PORTD_IRQHandler, 6)
1395                     ; 365 {
1397                     .text:	section	.text,new
1398  0000               f_EXTI_PORTD_IRQHandler:
1402                     ; 380 }
1405  0000 80            	iret	
1459                     ; 382 INTERRUPT_HANDLER(TIM4_UPD_OVF_IRQHandler, 23)
1459                     ; 383  {
1460                     .text:	section	.text,new
1461  0000               f_TIM4_UPD_OVF_IRQHandler:
1463  0000 8a            	push	cc
1464  0001 84            	pop	a
1465  0002 a4bf          	and	a,#191
1466  0004 88            	push	a
1467  0005 86            	pop	cc
1468       00000002      OFST:	set	2
1469  0006 3b0002        	push	c_x+2
1470  0009 be00          	ldw	x,c_x
1471  000b 89            	pushw	x
1472  000c 3b0002        	push	c_y+2
1473  000f be00          	ldw	x,c_y
1474  0011 89            	pushw	x
1475  0012 89            	pushw	x
1478                     ; 389 	if (timedelay) timedelay--;
1480  0013 be0d          	ldw	x,_timedelay
1481  0015 2703          	jreq	L773
1484  0017 5a            	decw	x
1485  0018 bf0d          	ldw	_timedelay,x
1486  001a               L773:
1487                     ; 395 		if(kndtime) kndtime--;
1489  001a b60a          	ld	a,_kndtime
1490  001c 2704          	jreq	LC013
1493  001e 3a0a          	dec	_kndtime
1494                     ; 396 		if (kndtime==0) {
1496  0020 2622          	jrne	L304
1497  0022               LC013:
1498                     ; 398 			kndtime = KNDTIME;
1500  0022 3532000a      	mov	_kndtime,#50
1501                     ; 400 			pd = GPIO_ReadInputData(GPIOD);
1503  0026 ae500f        	ldw	x,#20495
1504  0029 cd0000        	call	_GPIO_ReadInputData
1506  002c 6b01          	ld	(OFST-1,sp),a
1508                     ; 401 			knint(0, pd, GPIO_PIN_2);
1510  002e 4b04          	push	#4
1511  0030 7b02          	ld	a,(OFST+0,sp)
1512  0032 5f            	clrw	x
1513  0033 97            	ld	xl,a
1514  0034 cd0000        	call	_knint
1516  0037 84            	pop	a
1517                     ; 402 			knint(1, pd, GPIO_PIN_3);
1519  0038 4b08          	push	#8
1520  003a 7b02          	ld	a,(OFST+0,sp)
1521  003c ae0100        	ldw	x,#256
1522  003f 97            	ld	xl,a
1523  0040 cd0000        	call	_knint
1525  0043 84            	pop	a
1526  0044               L304:
1527                     ; 404 		for (i=0;i<KNNUM;i++) if(kntime[i]) kntime[i]--;
1529  0044 4f            	clr	a
1530  0045 6b02          	ld	(OFST+0,sp),a
1532  0047               L504:
1535  0047 5f            	clrw	x
1536  0048 97            	ld	xl,a
1537  0049 58            	sllw	x
1538  004a e601          	ld	a,(_kntime+1,x)
1539  004c ea00          	or	a,(_kntime,x)
1540  004e 2708          	jreq	L314
1543  0050 9093          	ldw	y,x
1544  0052 ee00          	ldw	x,(_kntime,x)
1545  0054 5a            	decw	x
1546  0055 90ef00        	ldw	(_kntime,y),x
1547  0058               L314:
1550  0058 0c02          	inc	(OFST+0,sp)
1554  005a 7b02          	ld	a,(OFST+0,sp)
1555  005c a102          	cp	a,#2
1556  005e 25e7          	jrult	L504
1557                     ; 408 	if (timesec==0)
1559  0060 be00          	ldw	x,_timesec
1560  0062 2626          	jrne	L514
1561                     ; 411 		timesec=999;
1563  0064 ae03e7        	ldw	x,#999
1564  0067 bf00          	ldw	_timesec,x
1565                     ; 413 		if (secundomer<998) {
1567  0069 be0b          	ldw	x,_secundomer
1568  006b a303e6        	cpw	x,#998
1569  006e 2406          	jruge	L714
1570                     ; 414 			secundomer++;
1572  0070 5c            	incw	x
1573  0071 bf0b          	ldw	_secundomer,x
1574                     ; 415 			shownumber(secundomer);
1576  0073 cd0000        	call	_shownumber
1578  0076               L714:
1579                     ; 418 		if (sleeptime) sleeptime--;
1581  0076 b602          	ld	a,_sleeptime
1582  0078 2702          	jreq	L124
1585  007a 3a02          	dec	_sleeptime
1586  007c               L124:
1587                     ; 420 		if (tchk[2]) tchk[2]=0; else tchk[2]=1;
1589  007c b608          	ld	a,_tchk+2
1590  007e 2704          	jreq	L324
1593  0080 3f08          	clr	_tchk+2
1595  0082 2009          	jra	L724
1596  0084               L324:
1599  0084 35010008      	mov	_tchk+2,#1
1600  0088 2003          	jra	L724
1601  008a               L514:
1602                     ; 423 	else timesec--;
1604  008a 5a            	decw	x
1605  008b bf00          	ldw	_timesec,x
1606  008d               L724:
1607                     ; 425 	TIM4_ClearITPendingBit(TIM4_IT_UPDATE);
1609  008d a601          	ld	a,#1
1610  008f cd0000        	call	_TIM4_ClearITPendingBit
1612                     ; 427  }
1615  0092 5b02          	addw	sp,#2
1616  0094 85            	popw	x
1617  0095 bf00          	ldw	c_y,x
1618  0097 320002        	pop	c_y+2
1619  009a 85            	popw	x
1620  009b bf00          	ldw	c_x,x
1621  009d 320002        	pop	c_x+2
1622  00a0 80            	iret	
1652                     ; 430  INTERRUPT_HANDLER(TIM2_UPD_OVF_BRK_IRQHandler, 13)
1652                     ; 431  {
1653                     .text:	section	.text,new
1654  0000               f_TIM2_UPD_OVF_BRK_IRQHandler:
1656  0000 8a            	push	cc
1657  0001 84            	pop	a
1658  0002 a4bf          	and	a,#191
1659  0004 88            	push	a
1660  0005 86            	pop	cc
1661  0006 3b0002        	push	c_x+2
1662  0009 be00          	ldw	x,c_x
1663  000b 89            	pushw	x
1664  000c 3b0002        	push	c_y+2
1665  000f be00          	ldw	x,c_y
1666  0011 89            	pushw	x
1669                     ; 435 	TIM2_ClearITPendingBit(TIM2_IT_UPDATE);
1671  0012 a601          	ld	a,#1
1672  0014 cd0000        	call	_TIM2_ClearITPendingBit
1674                     ; 437 	OFF1;
1676  0017 4b20          	push	#32
1677  0019 ae500f        	ldw	x,#20495
1678  001c cd0000        	call	_GPIO_WriteHigh
1680  001f 84            	pop	a
1681                     ; 438 	OFF2;
1683  0020 4b20          	push	#32
1684  0022 ae500a        	ldw	x,#20490
1685  0025 cd0000        	call	_GPIO_WriteHigh
1687  0028 84            	pop	a
1688                     ; 439 	OFF3;
1690  0029 4b80          	push	#128
1691  002b ae500a        	ldw	x,#20490
1692  002e cd0000        	call	_GPIO_WriteHigh
1694  0031 84            	pop	a
1695                     ; 441 	if (numind<3) {
1697  0032 b609          	ld	a,_numind
1698  0034 a103          	cp	a,#3
1699  0036 2418          	jruge	L144
1700                     ; 442 		cifra(ind[numind]);
1702  0038 5f            	clrw	x
1703  0039 97            	ld	xl,a
1704  003a e603          	ld	a,(_ind,x)
1705  003c cd0000        	call	_cifra
1707                     ; 444 		if (tchk[numind]) TON;
1709  003f b609          	ld	a,_numind
1710  0041 5f            	clrw	x
1711  0042 97            	ld	xl,a
1712  0043 e606          	ld	a,(_tchk,x)
1713  0045 2709          	jreq	L144
1716  0047 4b20          	push	#32
1717  0049 ae5005        	ldw	x,#20485
1718  004c cd0000        	call	_GPIO_WriteLow
1720  004f 84            	pop	a
1721  0050               L144:
1722                     ; 447 	if (numind==0) {
1724  0050 b609          	ld	a,_numind
1725  0052 260b          	jrne	L544
1726                     ; 448 		ON1;
1728  0054 4b20          	push	#32
1729  0056 ae500f        	ldw	x,#20495
1730  0059 cd0000        	call	_GPIO_WriteLow
1732  005c 84            	pop	a
1733  005d b609          	ld	a,_numind
1734  005f               L544:
1735                     ; 450 	if (numind==1) {
1737  005f a101          	cp	a,#1
1738  0061 260b          	jrne	L744
1739                     ; 451 		ON2;
1741  0063 4b20          	push	#32
1742  0065 ae500a        	ldw	x,#20490
1743  0068 cd0000        	call	_GPIO_WriteLow
1745  006b 84            	pop	a
1746  006c b609          	ld	a,_numind
1747  006e               L744:
1748                     ; 453 	if (numind==2) {
1750  006e a102          	cp	a,#2
1751  0070 2609          	jrne	L154
1752                     ; 454 		ON3;
1754  0072 4b80          	push	#128
1755  0074 ae500a        	ldw	x,#20490
1756  0077 cd0000        	call	_GPIO_WriteLow
1758  007a 84            	pop	a
1759  007b               L154:
1760                     ; 458 	numind++;
1762  007b 3c09          	inc	_numind
1763                     ; 460 	if (numind==30) numind=0;
1765  007d b609          	ld	a,_numind
1766  007f a11e          	cp	a,#30
1767  0081 2602          	jrne	L354
1770  0083 3f09          	clr	_numind
1771  0085               L354:
1772                     ; 462  }
1775  0085 85            	popw	x
1776  0086 bf00          	ldw	c_y,x
1777  0088 320002        	pop	c_y+2
1778  008b 85            	popw	x
1779  008c bf00          	ldw	c_x,x
1780  008e 320002        	pop	c_x+2
1781  0091 80            	iret	
1899                     	xdef	f_TIM2_UPD_OVF_BRK_IRQHandler
1900                     	xdef	f_TIM4_UPD_OVF_IRQHandler
1901                     	xdef	f_EXTI_PORTD_IRQHandler
1902                     	xdef	_knint
1903                     	xdef	_main
1904                     	xdef	_shownumber
1905                     	xdef	_cifra
1906                     	xdef	_myrand
1907                     	xdef	_timedelay
1908                     	xdef	_secundomer
1909                     	xdef	_kndtime
1910                     	switch	.ubsct
1911  0000               _kntime:
1912  0000 00000000      	ds.b	4
1913                     	xdef	_kntime
1914  0004               _knstatus:
1915  0004 0000          	ds.b	2
1916                     	xdef	_knstatus
1917  0006               _kn:
1918  0006 0000          	ds.b	2
1919                     	xdef	_kn
1920                     	xdef	_numind
1921                     	xdef	_tchk
1922                     	xdef	_ind
1923                     	xdef	_LSIMeasurment
1924                     	xdef	_Delay
1925                     	xdef	_sleeptime
1926                     	xdef	_timesec
1927                     	xref	_rand
1928                     	xdef	_assert_failed
1929                     	xref	_TIM4_ClearITPendingBit
1930                     	xref	_TIM4_ClearFlag
1931                     	xref	_TIM4_ITConfig
1932                     	xref	_TIM4_Cmd
1933                     	xref	_TIM4_TimeBaseInit
1934                     	xref	_TIM2_ClearITPendingBit
1935                     	xref	_TIM2_ClearFlag
1936                     	xref	_TIM2_ITConfig
1937                     	xref	_TIM2_Cmd
1938                     	xref	_TIM2_TimeBaseInit
1939                     	xref	_TIM1_ClearFlag
1940                     	xref	_TIM1_GetCapture1
1941                     	xref	_TIM1_Cmd
1942                     	xref	_GPIO_ReadInputData
1943                     	xref	_GPIO_WriteLow
1944                     	xref	_GPIO_WriteHigh
1945                     	xref	_GPIO_Init
1946                     	xref	_EXTI_SetExtIntSensitivity
1947                     	xref	_CLK_GetClockFreq
1948                     	xref	_CLK_HSIPrescalerConfig
1949                     	xref	_BEEP_Cmd
1950                     	xref.b	c_lreg
1951                     	xref.b	c_x
1952                     	xref.b	c_y
1972                     	xref	c_ldiv
1973                     	xref	c_vmul
1974                     	xref	c_ludv
1975                     	xref	c_uitolx
1976                     	xref	c_llsh
1977                     	xref	c_ltor
1978                     	xref	c_rtol
1979                     	end
