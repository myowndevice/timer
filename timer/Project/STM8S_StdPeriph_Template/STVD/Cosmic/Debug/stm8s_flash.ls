   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.5 - 29 Dec 2015
   3                     ; Generator (Limited) V4.4.4 - 27 Jan 2016
   4                     ; Optimizer V4.4.4 - 27 Jan 2016
  82                     ; 87 void FLASH_Unlock(FLASH_MemType_TypeDef FLASH_MemType)
  82                     ; 88 {
  84                     .text:	section	.text,new
  85  0000               _FLASH_Unlock:
  87  0000 88            	push	a
  88       00000000      OFST:	set	0
  91                     ; 90   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
  93  0001 a1fd          	cp	a,#253
  94  0003 2712          	jreq	L21
  95  0005 a1f7          	cp	a,#247
  96  0007 270e          	jreq	L21
  97  0009 ae005a        	ldw	x,#90
  98  000c 89            	pushw	x
  99  000d 5f            	clrw	x
 100  000e 89            	pushw	x
 101  000f ae0010        	ldw	x,#L73
 102  0012 cd0000        	call	_assert_failed
 104  0015 5b04          	addw	sp,#4
 105  0017               L21:
 106                     ; 93   if(FLASH_MemType == FLASH_MEMTYPE_PROG)
 108  0017 7b01          	ld	a,(OFST+1,sp)
 109  0019 a1fd          	cp	a,#253
 110  001b 260a          	jrne	L14
 111                     ; 95     FLASH->PUKR = FLASH_RASS_KEY1;
 113  001d 35565062      	mov	20578,#86
 114                     ; 96     FLASH->PUKR = FLASH_RASS_KEY2;
 116  0021 35ae5062      	mov	20578,#174
 118  0025 2008          	jra	L34
 119  0027               L14:
 120                     ; 101     FLASH->DUKR = FLASH_RASS_KEY2; /* Warning: keys are reversed on data memory !!! */
 122  0027 35ae5064      	mov	20580,#174
 123                     ; 102     FLASH->DUKR = FLASH_RASS_KEY1;
 125  002b 35565064      	mov	20580,#86
 126  002f               L34:
 127                     ; 104 }
 130  002f 84            	pop	a
 131  0030 81            	ret	
 167                     ; 112 void FLASH_Lock(FLASH_MemType_TypeDef FLASH_MemType)
 167                     ; 113 {
 168                     .text:	section	.text,new
 169  0000               _FLASH_Lock:
 171  0000 88            	push	a
 172       00000000      OFST:	set	0
 175                     ; 115   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
 177  0001 a1fd          	cp	a,#253
 178  0003 2712          	jreq	L42
 179  0005 a1f7          	cp	a,#247
 180  0007 270e          	jreq	L42
 181  0009 ae0073        	ldw	x,#115
 182  000c 89            	pushw	x
 183  000d 5f            	clrw	x
 184  000e 89            	pushw	x
 185  000f ae0010        	ldw	x,#L73
 186  0012 cd0000        	call	_assert_failed
 188  0015 5b04          	addw	sp,#4
 189  0017               L42:
 190                     ; 118   FLASH->IAPSR &= (uint8_t)FLASH_MemType;
 192  0017 c6505f        	ld	a,20575
 193  001a 1401          	and	a,(OFST+1,sp)
 194  001c c7505f        	ld	20575,a
 195                     ; 119 }
 198  001f 84            	pop	a
 199  0020 81            	ret	
 222                     ; 126 void FLASH_DeInit(void)
 222                     ; 127 {
 223                     .text:	section	.text,new
 224  0000               _FLASH_DeInit:
 228                     ; 128   FLASH->CR1 = FLASH_CR1_RESET_VALUE;
 230  0000 725f505a      	clr	20570
 231                     ; 129   FLASH->CR2 = FLASH_CR2_RESET_VALUE;
 233  0004 725f505b      	clr	20571
 234                     ; 130   FLASH->NCR2 = FLASH_NCR2_RESET_VALUE;
 236  0008 35ff505c      	mov	20572,#255
 237                     ; 131   FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_DUL);
 239  000c 7217505f      	bres	20575,#3
 240                     ; 132   FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_PUL);
 242  0010 7213505f      	bres	20575,#1
 243                     ; 133   (void) FLASH->IAPSR; /* Reading of this register causes the clearing of status flags */
 245  0014 c6505f        	ld	a,20575
 246                     ; 134 }
 249  0017 81            	ret	
 305                     ; 142 void FLASH_ITConfig(FunctionalState NewState)
 305                     ; 143 {
 306                     .text:	section	.text,new
 307  0000               _FLASH_ITConfig:
 309  0000 88            	push	a
 310       00000000      OFST:	set	0
 313                     ; 145   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 315  0001 4d            	tnz	a
 316  0002 2711          	jreq	L04
 317  0004 4a            	dec	a
 318  0005 270e          	jreq	L04
 319  0007 ae0091        	ldw	x,#145
 320  000a 89            	pushw	x
 321  000b 5f            	clrw	x
 322  000c 89            	pushw	x
 323  000d ae0010        	ldw	x,#L73
 324  0010 cd0000        	call	_assert_failed
 326  0013 5b04          	addw	sp,#4
 327  0015               L04:
 328                     ; 147   if(NewState != DISABLE)
 330  0015 7b01          	ld	a,(OFST+1,sp)
 331  0017 2706          	jreq	L121
 332                     ; 149     FLASH->CR1 |= FLASH_CR1_IE; /* Enables the interrupt sources */
 334  0019 7212505a      	bset	20570,#1
 336  001d 2004          	jra	L321
 337  001f               L121:
 338                     ; 153     FLASH->CR1 &= (uint8_t)(~FLASH_CR1_IE); /* Disables the interrupt sources */
 340  001f 7213505a      	bres	20570,#1
 341  0023               L321:
 342                     ; 155 }
 345  0023 84            	pop	a
 346  0024 81            	ret	
 381                     .const:	section	.text
 382  0000               L45:
 383  0000 00008000      	dc.l	32768
 384  0004               L65:
 385  0004 0000a000      	dc.l	40960
 386  0008               L06:
 387  0008 00004000      	dc.l	16384
 388  000c               L26:
 389  000c 00004280      	dc.l	17024
 390                     ; 164 void FLASH_EraseByte(uint32_t Address)
 390                     ; 165 {
 391                     .text:	section	.text,new
 392  0000               _FLASH_EraseByte:
 394       00000000      OFST:	set	0
 397                     ; 167   assert_param(IS_FLASH_ADDRESS_OK(Address));
 399  0000 96            	ldw	x,sp
 400  0001 1c0003        	addw	x,#OFST+3
 401  0004 cd0000        	call	c_ltor
 403  0007 ae0000        	ldw	x,#L45
 404  000a cd0000        	call	c_lcmp
 406  000d 250f          	jrult	L25
 407  000f 96            	ldw	x,sp
 408  0010 1c0003        	addw	x,#OFST+3
 409  0013 cd0000        	call	c_ltor
 411  0016 ae0004        	ldw	x,#L65
 412  0019 cd0000        	call	c_lcmp
 414  001c 252c          	jrult	L46
 415  001e               L25:
 416  001e 96            	ldw	x,sp
 417  001f 1c0003        	addw	x,#OFST+3
 418  0022 cd0000        	call	c_ltor
 420  0025 ae0008        	ldw	x,#L06
 421  0028 cd0000        	call	c_lcmp
 423  002b 250f          	jrult	L64
 424  002d 96            	ldw	x,sp
 425  002e 1c0003        	addw	x,#OFST+3
 426  0031 cd0000        	call	c_ltor
 428  0034 ae000c        	ldw	x,#L26
 429  0037 cd0000        	call	c_lcmp
 431  003a 250e          	jrult	L46
 432  003c               L64:
 433  003c ae00a7        	ldw	x,#167
 434  003f 89            	pushw	x
 435  0040 5f            	clrw	x
 436  0041 89            	pushw	x
 437  0042 ae0010        	ldw	x,#L73
 438  0045 cd0000        	call	_assert_failed
 440  0048 5b04          	addw	sp,#4
 441  004a               L46:
 442                     ; 170   *(PointerAttr uint8_t*) (MemoryAddressCast)Address = FLASH_CLEAR_BYTE; 
 444  004a 1e05          	ldw	x,(OFST+5,sp)
 445  004c 7f            	clr	(x)
 446                     ; 171 }
 449  004d 81            	ret	
 493                     ; 181 void FLASH_ProgramByte(uint32_t Address, uint8_t Data)
 493                     ; 182 {
 494                     .text:	section	.text,new
 495  0000               _FLASH_ProgramByte:
 497       00000000      OFST:	set	0
 500                     ; 184   assert_param(IS_FLASH_ADDRESS_OK(Address));
 502  0000 96            	ldw	x,sp
 503  0001 1c0003        	addw	x,#OFST+3
 504  0004 cd0000        	call	c_ltor
 506  0007 ae0000        	ldw	x,#L45
 507  000a cd0000        	call	c_lcmp
 509  000d 250f          	jrult	L67
 510  000f 96            	ldw	x,sp
 511  0010 1c0003        	addw	x,#OFST+3
 512  0013 cd0000        	call	c_ltor
 514  0016 ae0004        	ldw	x,#L65
 515  0019 cd0000        	call	c_lcmp
 517  001c 252c          	jrult	L001
 518  001e               L67:
 519  001e 96            	ldw	x,sp
 520  001f 1c0003        	addw	x,#OFST+3
 521  0022 cd0000        	call	c_ltor
 523  0025 ae0008        	ldw	x,#L06
 524  0028 cd0000        	call	c_lcmp
 526  002b 250f          	jrult	L27
 527  002d 96            	ldw	x,sp
 528  002e 1c0003        	addw	x,#OFST+3
 529  0031 cd0000        	call	c_ltor
 531  0034 ae000c        	ldw	x,#L26
 532  0037 cd0000        	call	c_lcmp
 534  003a 250e          	jrult	L001
 535  003c               L27:
 536  003c ae00b8        	ldw	x,#184
 537  003f 89            	pushw	x
 538  0040 5f            	clrw	x
 539  0041 89            	pushw	x
 540  0042 ae0010        	ldw	x,#L73
 541  0045 cd0000        	call	_assert_failed
 543  0048 5b04          	addw	sp,#4
 544  004a               L001:
 545                     ; 185   *(PointerAttr uint8_t*) (MemoryAddressCast)Address = Data;
 547  004a 1e05          	ldw	x,(OFST+5,sp)
 548  004c 7b07          	ld	a,(OFST+7,sp)
 549  004e f7            	ld	(x),a
 550                     ; 186 }
 553  004f 81            	ret	
 588                     ; 195 uint8_t FLASH_ReadByte(uint32_t Address)
 588                     ; 196 {
 589                     .text:	section	.text,new
 590  0000               _FLASH_ReadByte:
 592       00000000      OFST:	set	0
 595                     ; 198   assert_param(IS_FLASH_ADDRESS_OK(Address));
 597  0000 96            	ldw	x,sp
 598  0001 1c0003        	addw	x,#OFST+3
 599  0004 cd0000        	call	c_ltor
 601  0007 ae0000        	ldw	x,#L45
 602  000a cd0000        	call	c_lcmp
 604  000d 250f          	jrult	L211
 605  000f 96            	ldw	x,sp
 606  0010 1c0003        	addw	x,#OFST+3
 607  0013 cd0000        	call	c_ltor
 609  0016 ae0004        	ldw	x,#L65
 610  0019 cd0000        	call	c_lcmp
 612  001c 252c          	jrult	L411
 613  001e               L211:
 614  001e 96            	ldw	x,sp
 615  001f 1c0003        	addw	x,#OFST+3
 616  0022 cd0000        	call	c_ltor
 618  0025 ae0008        	ldw	x,#L06
 619  0028 cd0000        	call	c_lcmp
 621  002b 250f          	jrult	L601
 622  002d 96            	ldw	x,sp
 623  002e 1c0003        	addw	x,#OFST+3
 624  0031 cd0000        	call	c_ltor
 626  0034 ae000c        	ldw	x,#L26
 627  0037 cd0000        	call	c_lcmp
 629  003a 250e          	jrult	L411
 630  003c               L601:
 631  003c ae00c6        	ldw	x,#198
 632  003f 89            	pushw	x
 633  0040 5f            	clrw	x
 634  0041 89            	pushw	x
 635  0042 ae0010        	ldw	x,#L73
 636  0045 cd0000        	call	_assert_failed
 638  0048 5b04          	addw	sp,#4
 639  004a               L411:
 640                     ; 201   return(*(PointerAttr uint8_t *) (MemoryAddressCast)Address); 
 642  004a 1e05          	ldw	x,(OFST+5,sp)
 643  004c f6            	ld	a,(x)
 646  004d 81            	ret	
 690                     ; 212 void FLASH_ProgramWord(uint32_t Address, uint32_t Data)
 690                     ; 213 {
 691                     .text:	section	.text,new
 692  0000               _FLASH_ProgramWord:
 694       00000000      OFST:	set	0
 697                     ; 215   assert_param(IS_FLASH_ADDRESS_OK(Address));
 699  0000 96            	ldw	x,sp
 700  0001 1c0003        	addw	x,#OFST+3
 701  0004 cd0000        	call	c_ltor
 703  0007 ae0000        	ldw	x,#L45
 704  000a cd0000        	call	c_lcmp
 706  000d 250f          	jrult	L621
 707  000f 96            	ldw	x,sp
 708  0010 1c0003        	addw	x,#OFST+3
 709  0013 cd0000        	call	c_ltor
 711  0016 ae0004        	ldw	x,#L65
 712  0019 cd0000        	call	c_lcmp
 714  001c 252c          	jrult	L031
 715  001e               L621:
 716  001e 96            	ldw	x,sp
 717  001f 1c0003        	addw	x,#OFST+3
 718  0022 cd0000        	call	c_ltor
 720  0025 ae0008        	ldw	x,#L06
 721  0028 cd0000        	call	c_lcmp
 723  002b 250f          	jrult	L221
 724  002d 96            	ldw	x,sp
 725  002e 1c0003        	addw	x,#OFST+3
 726  0031 cd0000        	call	c_ltor
 728  0034 ae000c        	ldw	x,#L26
 729  0037 cd0000        	call	c_lcmp
 731  003a 250e          	jrult	L031
 732  003c               L221:
 733  003c ae00d7        	ldw	x,#215
 734  003f 89            	pushw	x
 735  0040 5f            	clrw	x
 736  0041 89            	pushw	x
 737  0042 ae0010        	ldw	x,#L73
 738  0045 cd0000        	call	_assert_failed
 740  0048 5b04          	addw	sp,#4
 741  004a               L031:
 742                     ; 218   FLASH->CR2 |= FLASH_CR2_WPRG;
 744  004a 721c505b      	bset	20571,#6
 745                     ; 219   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NWPRG);
 747  004e 721d505c      	bres	20572,#6
 748                     ; 222   *((PointerAttr uint8_t*)(MemoryAddressCast)Address)       = *((uint8_t*)(&Data));
 750  0052 1e05          	ldw	x,(OFST+5,sp)
 751  0054 7b07          	ld	a,(OFST+7,sp)
 752  0056 f7            	ld	(x),a
 753                     ; 224   *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 1) = *((uint8_t*)(&Data)+1); 
 755  0057 7b08          	ld	a,(OFST+8,sp)
 756  0059 e701          	ld	(1,x),a
 757                     ; 226   *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 2) = *((uint8_t*)(&Data)+2); 
 759  005b 7b09          	ld	a,(OFST+9,sp)
 760  005d e702          	ld	(2,x),a
 761                     ; 228   *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 3) = *((uint8_t*)(&Data)+3); 
 763  005f 7b0a          	ld	a,(OFST+10,sp)
 764  0061 e703          	ld	(3,x),a
 765                     ; 229 }
 768  0063 81            	ret	
 814                     ; 237 void FLASH_ProgramOptionByte(uint16_t Address, uint8_t Data)
 814                     ; 238 {
 815                     .text:	section	.text,new
 816  0000               _FLASH_ProgramOptionByte:
 818  0000 89            	pushw	x
 819       00000000      OFST:	set	0
 822                     ; 240   assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
 824  0001 a34800        	cpw	x,#18432
 825  0004 2505          	jrult	L631
 826  0006 a34880        	cpw	x,#18560
 827  0009 250e          	jrult	L041
 828  000b               L631:
 829  000b ae00f0        	ldw	x,#240
 830  000e 89            	pushw	x
 831  000f 5f            	clrw	x
 832  0010 89            	pushw	x
 833  0011 ae0010        	ldw	x,#L73
 834  0014 cd0000        	call	_assert_failed
 836  0017 5b04          	addw	sp,#4
 837  0019               L041:
 838                     ; 243   FLASH->CR2 |= FLASH_CR2_OPT;
 840  0019 721e505b      	bset	20571,#7
 841                     ; 244   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
 843  001d 721f505c      	bres	20572,#7
 844                     ; 247   if(Address == 0x4800)
 846  0021 1e01          	ldw	x,(OFST+1,sp)
 847  0023 a34800        	cpw	x,#18432
 848  0026 2605          	jrne	L742
 849                     ; 250     *((NEAR uint8_t*)Address) = Data;
 851  0028 7b05          	ld	a,(OFST+5,sp)
 852  002a f7            	ld	(x),a
 854  002b 2006          	jra	L152
 855  002d               L742:
 856                     ; 255     *((NEAR uint8_t*)Address) = Data;
 858  002d 7b05          	ld	a,(OFST+5,sp)
 859  002f f7            	ld	(x),a
 860                     ; 256     *((NEAR uint8_t*)((uint16_t)(Address + 1))) = (uint8_t)(~Data);
 862  0030 43            	cpl	a
 863  0031 e701          	ld	(1,x),a
 864  0033               L152:
 865                     ; 258   FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
 867  0033 a6fd          	ld	a,#253
 868  0035 cd0000        	call	_FLASH_WaitForLastOperation
 870                     ; 261   FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
 872  0038 721f505b      	bres	20571,#7
 873                     ; 262   FLASH->NCR2 |= FLASH_NCR2_NOPT;
 875  003c 721e505c      	bset	20572,#7
 876                     ; 263 }
 879  0040 85            	popw	x
 880  0041 81            	ret	
 917                     ; 270 void FLASH_EraseOptionByte(uint16_t Address)
 917                     ; 271 {
 918                     .text:	section	.text,new
 919  0000               _FLASH_EraseOptionByte:
 921  0000 89            	pushw	x
 922       00000000      OFST:	set	0
 925                     ; 273   assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
 927  0001 a34800        	cpw	x,#18432
 928  0004 2505          	jrult	L051
 929  0006 a34880        	cpw	x,#18560
 930  0009 250e          	jrult	L251
 931  000b               L051:
 932  000b ae0111        	ldw	x,#273
 933  000e 89            	pushw	x
 934  000f 5f            	clrw	x
 935  0010 89            	pushw	x
 936  0011 ae0010        	ldw	x,#L73
 937  0014 cd0000        	call	_assert_failed
 939  0017 5b04          	addw	sp,#4
 940  0019               L251:
 941                     ; 276   FLASH->CR2 |= FLASH_CR2_OPT;
 943  0019 721e505b      	bset	20571,#7
 944                     ; 277   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
 946  001d 721f505c      	bres	20572,#7
 947                     ; 280   if(Address == 0x4800)
 949  0021 1e01          	ldw	x,(OFST+1,sp)
 950  0023 a34800        	cpw	x,#18432
 951  0026 2603          	jrne	L172
 952                     ; 283     *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
 954  0028 7f            	clr	(x)
 956  0029 2005          	jra	L372
 957  002b               L172:
 958                     ; 288     *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
 960  002b 7f            	clr	(x)
 961                     ; 289     *((NEAR uint8_t*)((uint16_t)(Address + (uint16_t)1 ))) = FLASH_SET_BYTE;
 963  002c a6ff          	ld	a,#255
 964  002e e701          	ld	(1,x),a
 965  0030               L372:
 966                     ; 291   FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
 968  0030 a6fd          	ld	a,#253
 969  0032 cd0000        	call	_FLASH_WaitForLastOperation
 971                     ; 294   FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
 973  0035 721f505b      	bres	20571,#7
 974                     ; 295   FLASH->NCR2 |= FLASH_NCR2_NOPT;
 976  0039 721e505c      	bset	20572,#7
 977                     ; 296 }
 980  003d 85            	popw	x
 981  003e 81            	ret	
1045                     ; 303 uint16_t FLASH_ReadOptionByte(uint16_t Address)
1045                     ; 304 {
1046                     .text:	section	.text,new
1047  0000               _FLASH_ReadOptionByte:
1049  0000 89            	pushw	x
1050  0001 5204          	subw	sp,#4
1051       00000004      OFST:	set	4
1054                     ; 305   uint8_t value_optbyte, value_optbyte_complement = 0;
1056                     ; 306   uint16_t res_value = 0;
1058                     ; 309   assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
1060  0003 a34800        	cpw	x,#18432
1061  0006 2505          	jrult	L261
1062  0008 a34880        	cpw	x,#18560
1063  000b 250e          	jrult	L461
1064  000d               L261:
1065  000d ae0135        	ldw	x,#309
1066  0010 89            	pushw	x
1067  0011 5f            	clrw	x
1068  0012 89            	pushw	x
1069  0013 ae0010        	ldw	x,#L73
1070  0016 cd0000        	call	_assert_failed
1072  0019 5b04          	addw	sp,#4
1073  001b               L461:
1074                     ; 311   value_optbyte = *((NEAR uint8_t*)Address); /* Read option byte */
1076  001b 1e05          	ldw	x,(OFST+1,sp)
1077  001d f6            	ld	a,(x)
1078  001e 6b02          	ld	(OFST-2,sp),a
1080                     ; 312   value_optbyte_complement = *(((NEAR uint8_t*)Address) + 1); /* Read option byte complement */
1082  0020 e601          	ld	a,(1,x)
1083  0022 6b01          	ld	(OFST-3,sp),a
1085                     ; 315   if(Address == 0x4800)	 
1087  0024 a34800        	cpw	x,#18432
1088  0027 2606          	jrne	L723
1089                     ; 317     res_value =	 value_optbyte;
1091  0029 7b02          	ld	a,(OFST-2,sp)
1092  002b 5f            	clrw	x
1093  002c 97            	ld	xl,a
1096  002d 201c          	jra	L133
1097  002f               L723:
1098                     ; 321     if(value_optbyte == (uint8_t)(~value_optbyte_complement))
1100  002f 43            	cpl	a
1101  0030 1102          	cp	a,(OFST-2,sp)
1102  0032 2614          	jrne	L333
1103                     ; 323       res_value = (uint16_t)((uint16_t)value_optbyte << 8);
1105  0034 7b02          	ld	a,(OFST-2,sp)
1106  0036 97            	ld	xl,a
1107  0037 4f            	clr	a
1108  0038 02            	rlwa	x,a
1109  0039 1f03          	ldw	(OFST-1,sp),x
1111                     ; 324       res_value = res_value | (uint16_t)value_optbyte_complement;
1113  003b 5f            	clrw	x
1114  003c 7b01          	ld	a,(OFST-3,sp)
1115  003e 97            	ld	xl,a
1116  003f 01            	rrwa	x,a
1117  0040 1a04          	or	a,(OFST+0,sp)
1118  0042 01            	rrwa	x,a
1119  0043 1a03          	or	a,(OFST-1,sp)
1120  0045 01            	rrwa	x,a
1123  0046 2003          	jra	L133
1124  0048               L333:
1125                     ; 328       res_value = FLASH_OPTIONBYTE_ERROR;
1127  0048 ae5555        	ldw	x,#21845
1129  004b               L133:
1130                     ; 331   return(res_value);
1134  004b 5b06          	addw	sp,#6
1135  004d 81            	ret	
1210                     ; 340 void FLASH_SetLowPowerMode(FLASH_LPMode_TypeDef FLASH_LPMode)
1210                     ; 341 {
1211                     .text:	section	.text,new
1212  0000               _FLASH_SetLowPowerMode:
1214  0000 88            	push	a
1215       00000000      OFST:	set	0
1218                     ; 343   assert_param(IS_FLASH_LOW_POWER_MODE_OK(FLASH_LPMode));
1220  0001 a104          	cp	a,#4
1221  0003 2719          	jreq	L671
1222  0005 a108          	cp	a,#8
1223  0007 2715          	jreq	L671
1224  0009 4d            	tnz	a
1225  000a 2712          	jreq	L671
1226  000c a10c          	cp	a,#12
1227  000e 270e          	jreq	L671
1228  0010 ae0157        	ldw	x,#343
1229  0013 89            	pushw	x
1230  0014 5f            	clrw	x
1231  0015 89            	pushw	x
1232  0016 ae0010        	ldw	x,#L73
1233  0019 cd0000        	call	_assert_failed
1235  001c 5b04          	addw	sp,#4
1236  001e               L671:
1237                     ; 346   FLASH->CR1 &= (uint8_t)(~(FLASH_CR1_HALT | FLASH_CR1_AHALT)); 
1239  001e c6505a        	ld	a,20570
1240  0021 a4f3          	and	a,#243
1241  0023 c7505a        	ld	20570,a
1242                     ; 349   FLASH->CR1 |= (uint8_t)FLASH_LPMode; 
1244  0026 c6505a        	ld	a,20570
1245  0029 1a01          	or	a,(OFST+1,sp)
1246  002b c7505a        	ld	20570,a
1247                     ; 350 }
1250  002e 84            	pop	a
1251  002f 81            	ret	
1310                     ; 358 void FLASH_SetProgrammingTime(FLASH_ProgramTime_TypeDef FLASH_ProgTime)
1310                     ; 359 {
1311                     .text:	section	.text,new
1312  0000               _FLASH_SetProgrammingTime:
1314  0000 88            	push	a
1315       00000000      OFST:	set	0
1318                     ; 361   assert_param(IS_FLASH_PROGRAM_TIME_OK(FLASH_ProgTime));
1320  0001 4d            	tnz	a
1321  0002 2711          	jreq	L012
1322  0004 4a            	dec	a
1323  0005 270e          	jreq	L012
1324  0007 ae0169        	ldw	x,#361
1325  000a 89            	pushw	x
1326  000b 5f            	clrw	x
1327  000c 89            	pushw	x
1328  000d ae0010        	ldw	x,#L73
1329  0010 cd0000        	call	_assert_failed
1331  0013 5b04          	addw	sp,#4
1332  0015               L012:
1333                     ; 363   FLASH->CR1 &= (uint8_t)(~FLASH_CR1_FIX);
1335  0015 7211505a      	bres	20570,#0
1336                     ; 364   FLASH->CR1 |= (uint8_t)FLASH_ProgTime;
1338  0019 c6505a        	ld	a,20570
1339  001c 1a01          	or	a,(OFST+1,sp)
1340  001e c7505a        	ld	20570,a
1341                     ; 365 }
1344  0021 84            	pop	a
1345  0022 81            	ret	
1370                     ; 372 FLASH_LPMode_TypeDef FLASH_GetLowPowerMode(void)
1370                     ; 373 {
1371                     .text:	section	.text,new
1372  0000               _FLASH_GetLowPowerMode:
1376                     ; 374   return((FLASH_LPMode_TypeDef)(FLASH->CR1 & (uint8_t)(FLASH_CR1_HALT | FLASH_CR1_AHALT)));
1378  0000 c6505a        	ld	a,20570
1379  0003 a40c          	and	a,#12
1382  0005 81            	ret	
1407                     ; 382 FLASH_ProgramTime_TypeDef FLASH_GetProgrammingTime(void)
1407                     ; 383 {
1408                     .text:	section	.text,new
1409  0000               _FLASH_GetProgrammingTime:
1413                     ; 384   return((FLASH_ProgramTime_TypeDef)(FLASH->CR1 & FLASH_CR1_FIX));
1415  0000 c6505a        	ld	a,20570
1416  0003 a401          	and	a,#1
1419  0005 81            	ret	
1453                     ; 392 uint32_t FLASH_GetBootSize(void)
1453                     ; 393 {
1454                     .text:	section	.text,new
1455  0000               _FLASH_GetBootSize:
1457  0000 5204          	subw	sp,#4
1458       00000004      OFST:	set	4
1461                     ; 394   uint32_t temp = 0;
1463                     ; 397   temp = (uint32_t)((uint32_t)FLASH->FPR * (uint32_t)512);
1465  0002 c6505d        	ld	a,20573
1466  0005 5f            	clrw	x
1467  0006 97            	ld	xl,a
1468  0007 90ae0200      	ldw	y,#512
1469  000b cd0000        	call	c_umul
1471  000e 96            	ldw	x,sp
1472  000f 5c            	incw	x
1473  0010 cd0000        	call	c_rtol
1476                     ; 400   if(FLASH->FPR == 0xFF)
1478  0013 c6505d        	ld	a,20573
1479  0016 4c            	inc	a
1480  0017 260d          	jrne	L554
1481                     ; 402     temp += 512;
1483  0019 ae0200        	ldw	x,#512
1484  001c bf02          	ldw	c_lreg+2,x
1485  001e 5f            	clrw	x
1486  001f bf00          	ldw	c_lreg,x
1487  0021 96            	ldw	x,sp
1488  0022 5c            	incw	x
1489  0023 cd0000        	call	c_lgadd
1492  0026               L554:
1493                     ; 406   return(temp);
1495  0026 96            	ldw	x,sp
1496  0027 5c            	incw	x
1497  0028 cd0000        	call	c_ltor
1501  002b 5b04          	addw	sp,#4
1502  002d 81            	ret	
1605                     ; 417 FlagStatus FLASH_GetFlagStatus(FLASH_Flag_TypeDef FLASH_FLAG)
1605                     ; 418 {
1606                     .text:	section	.text,new
1607  0000               _FLASH_GetFlagStatus:
1609  0000 88            	push	a
1610  0001 88            	push	a
1611       00000001      OFST:	set	1
1614                     ; 419   FlagStatus status = RESET;
1616                     ; 421   assert_param(IS_FLASH_FLAGS_OK(FLASH_FLAG));
1618  0002 a108          	cp	a,#8
1619  0004 2719          	jreq	L032
1620  0006 a104          	cp	a,#4
1621  0008 2715          	jreq	L032
1622  000a a102          	cp	a,#2
1623  000c 2711          	jreq	L032
1624  000e 4a            	dec	a
1625  000f 270e          	jreq	L032
1626  0011 ae01a5        	ldw	x,#421
1627  0014 89            	pushw	x
1628  0015 5f            	clrw	x
1629  0016 89            	pushw	x
1630  0017 ae0010        	ldw	x,#L73
1631  001a cd0000        	call	_assert_failed
1633  001d 5b04          	addw	sp,#4
1634  001f               L032:
1635                     ; 424   if((FLASH->IAPSR & (uint8_t)FLASH_FLAG) != (uint8_t)RESET)
1637  001f c6505f        	ld	a,20575
1638  0022 1502          	bcp	a,(OFST+1,sp)
1639  0024 2704          	jreq	L525
1640                     ; 426     status = SET; /* FLASH_FLAG is set */
1642  0026 a601          	ld	a,#1
1645  0028 2001          	jra	L725
1646  002a               L525:
1647                     ; 430     status = RESET; /* FLASH_FLAG is reset*/
1649  002a 4f            	clr	a
1651  002b               L725:
1652                     ; 434   return status;
1656  002b 85            	popw	x
1657  002c 81            	ret	
1742                     ; 549 IN_RAM(FLASH_Status_TypeDef FLASH_WaitForLastOperation(FLASH_MemType_TypeDef FLASH_MemType)) 
1742                     ; 550 {
1743                     .text:	section	.text,new
1744  0000               _FLASH_WaitForLastOperation:
1746  0000 5203          	subw	sp,#3
1747       00000003      OFST:	set	3
1750                     ; 551   uint8_t flagstatus = 0x00;
1752  0002 0f03          	clr	(OFST+0,sp)
1754                     ; 552   uint16_t timeout = OPERATION_TIMEOUT;
1756  0004 aeffff        	ldw	x,#65535
1758  0007 2008          	jra	L575
1759  0009               L175:
1760                     ; 578     flagstatus = (uint8_t)(FLASH->IAPSR & (FLASH_IAPSR_EOP | FLASH_IAPSR_WR_PG_DIS));
1762  0009 c6505f        	ld	a,20575
1763  000c a405          	and	a,#5
1764  000e 6b03          	ld	(OFST+0,sp),a
1766                     ; 579     timeout--;
1768  0010 5a            	decw	x
1769  0011               L575:
1770  0011 1f01          	ldw	(OFST-2,sp),x
1772                     ; 576   while((flagstatus == 0x00) && (timeout != 0x00))
1774  0013 7b03          	ld	a,(OFST+0,sp)
1775  0015 2604          	jrne	L106
1777  0017 1e01          	ldw	x,(OFST-2,sp)
1778  0019 26ee          	jrne	L175
1779  001b               L106:
1780                     ; 583   if(timeout == 0x00 )
1782  001b 1e01          	ldw	x,(OFST-2,sp)
1783  001d 2602          	jrne	L306
1784                     ; 585     flagstatus = FLASH_STATUS_TIMEOUT;
1786  001f a602          	ld	a,#2
1788  0021               L306:
1789                     ; 588   return((FLASH_Status_TypeDef)flagstatus);
1793  0021 5b03          	addw	sp,#3
1794  0023 81            	ret	
1858                     ; 598 IN_RAM(void FLASH_EraseBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType))
1858                     ; 599 {
1859                     .text:	section	.text,new
1860  0000               _FLASH_EraseBlock:
1862  0000 89            	pushw	x
1863  0001 5206          	subw	sp,#6
1864       00000006      OFST:	set	6
1867                     ; 600   uint32_t startaddress = 0;
1869                     ; 610   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
1871  0003 7b0b          	ld	a,(OFST+5,sp)
1872  0005 a1fd          	cp	a,#253
1873  0007 270b          	jreq	L442
1874  0009 a1f7          	cp	a,#247
1875  000b 2707          	jreq	L442
1876  000d ae0262        	ldw	x,#610
1877  0010 ad50          	call	LC001
1878  0012 7b0b          	ld	a,(OFST+5,sp)
1879  0014               L442:
1880                     ; 611   if(FLASH_MemType == FLASH_MEMTYPE_PROG)
1882  0014 a1fd          	cp	a,#253
1883  0016 2611          	jrne	L736
1884                     ; 613     assert_param(IS_FLASH_PROG_BLOCK_NUMBER_OK(BlockNum));
1886  0018 1e07          	ldw	x,(OFST+1,sp)
1887  001a a30080        	cpw	x,#128
1888  001d 2505          	jrult	L252
1889  001f ae0265        	ldw	x,#613
1890  0022 ad3e          	call	LC001
1891  0024               L252:
1892                     ; 614     startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
1894  0024 ae8000        	ldw	x,#32768
1896  0027 200f          	jra	L146
1897  0029               L736:
1898                     ; 618     assert_param(IS_FLASH_DATA_BLOCK_NUMBER_OK(BlockNum));
1900  0029 1e07          	ldw	x,(OFST+1,sp)
1901  002b a3000a        	cpw	x,#10
1902  002e 2505          	jrult	L062
1903  0030 ae026a        	ldw	x,#618
1904  0033 ad2d          	call	LC001
1905  0035               L062:
1906                     ; 619     startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
1908  0035 ae4000        	ldw	x,#16384
1909  0038               L146:
1910  0038 1f05          	ldw	(OFST-1,sp),x
1911  003a 5f            	clrw	x
1912  003b 1f03          	ldw	(OFST-3,sp),x
1914                     ; 627     pwFlash = (PointerAttr uint32_t *)(MemoryAddressCast)(startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE));
1916  003d a640          	ld	a,#64
1917  003f 1e07          	ldw	x,(OFST+1,sp)
1918  0041 cd0000        	call	c_cmulx
1920  0044 96            	ldw	x,sp
1921  0045 1c0003        	addw	x,#OFST-3
1922  0048 cd0000        	call	c_ladd
1924  004b be02          	ldw	x,c_lreg+2
1925  004d 1f01          	ldw	(OFST-5,sp),x
1927                     ; 631   FLASH->CR2 |= FLASH_CR2_ERASE;
1929  004f 721a505b      	bset	20571,#5
1930                     ; 632   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NERASE);
1932  0053 721b505c      	bres	20572,#5
1933                     ; 636     *pwFlash = (uint32_t)0;
1935  0057 4f            	clr	a
1936  0058 e703          	ld	(3,x),a
1937  005a e702          	ld	(2,x),a
1938  005c e701          	ld	(1,x),a
1939  005e f7            	ld	(x),a
1940                     ; 644 }
1943  005f 5b08          	addw	sp,#8
1944  0061 81            	ret	
1945  0062               LC001:
1946  0062 89            	pushw	x
1947  0063 5f            	clrw	x
1948  0064 89            	pushw	x
1949  0065 ae0010        	ldw	x,#L73
1950  0068 cd0000        	call	_assert_failed
1952  006b 5b04          	addw	sp,#4
1953  006d 81            	ret	
2058                     ; 655 IN_RAM(void FLASH_ProgramBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType, 
2058                     ; 656                         FLASH_ProgramMode_TypeDef FLASH_ProgMode, uint8_t *Buffer))
2058                     ; 657 {
2059                     .text:	section	.text,new
2060  0000               _FLASH_ProgramBlock:
2062  0000 89            	pushw	x
2063  0001 5206          	subw	sp,#6
2064       00000006      OFST:	set	6
2067                     ; 658   uint16_t Count = 0;
2069                     ; 659   uint32_t startaddress = 0;
2071                     ; 662   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
2073  0003 7b0b          	ld	a,(OFST+5,sp)
2074  0005 a1fd          	cp	a,#253
2075  0007 2709          	jreq	L272
2076  0009 a1f7          	cp	a,#247
2077  000b 2705          	jreq	L272
2078  000d ae0296        	ldw	x,#662
2079  0010 ad76          	call	LC002
2080  0012               L272:
2081                     ; 663   assert_param(IS_FLASH_PROGRAM_MODE_OK(FLASH_ProgMode));
2083  0012 7b0c          	ld	a,(OFST+6,sp)
2084  0014 2709          	jreq	L203
2085  0016 a110          	cp	a,#16
2086  0018 2705          	jreq	L203
2087  001a ae0297        	ldw	x,#663
2088  001d ad69          	call	LC002
2089  001f               L203:
2090                     ; 664   if(FLASH_MemType == FLASH_MEMTYPE_PROG)
2092  001f 7b0b          	ld	a,(OFST+5,sp)
2093  0021 a1fd          	cp	a,#253
2094  0023 2611          	jrne	L517
2095                     ; 666     assert_param(IS_FLASH_PROG_BLOCK_NUMBER_OK(BlockNum));
2097  0025 1e07          	ldw	x,(OFST+1,sp)
2098  0027 a30080        	cpw	x,#128
2099  002a 2505          	jrult	L013
2100  002c ae029a        	ldw	x,#666
2101  002f ad57          	call	LC002
2102  0031               L013:
2103                     ; 667     startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
2105  0031 ae8000        	ldw	x,#32768
2107  0034 200f          	jra	L717
2108  0036               L517:
2109                     ; 671     assert_param(IS_FLASH_DATA_BLOCK_NUMBER_OK(BlockNum));
2111  0036 1e07          	ldw	x,(OFST+1,sp)
2112  0038 a3000a        	cpw	x,#10
2113  003b 2505          	jrult	L613
2114  003d ae029f        	ldw	x,#671
2115  0040 ad46          	call	LC002
2116  0042               L613:
2117                     ; 672     startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
2119  0042 ae4000        	ldw	x,#16384
2120  0045               L717:
2121  0045 1f03          	ldw	(OFST-3,sp),x
2122  0047 5f            	clrw	x
2123  0048 1f01          	ldw	(OFST-5,sp),x
2125                     ; 676   startaddress = startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE);
2127  004a a640          	ld	a,#64
2128  004c 1e07          	ldw	x,(OFST+1,sp)
2129  004e cd0000        	call	c_cmulx
2131  0051 96            	ldw	x,sp
2132  0052 5c            	incw	x
2133  0053 cd0000        	call	c_lgadd
2136                     ; 679   if(FLASH_ProgMode == FLASH_PROGRAMMODE_STANDARD)
2138  0056 7b0c          	ld	a,(OFST+6,sp)
2139  0058 260a          	jrne	L127
2140                     ; 682     FLASH->CR2 |= FLASH_CR2_PRG;
2142  005a 7210505b      	bset	20571,#0
2143                     ; 683     FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NPRG);
2145  005e 7211505c      	bres	20572,#0
2147  0062 2008          	jra	L327
2148  0064               L127:
2149                     ; 688     FLASH->CR2 |= FLASH_CR2_FPRG;
2151  0064 7218505b      	bset	20571,#4
2152                     ; 689     FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NFPRG);
2154  0068 7219505c      	bres	20572,#4
2155  006c               L327:
2156                     ; 693   for(Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
2158  006c 5f            	clrw	x
2159  006d 1f05          	ldw	(OFST-1,sp),x
2161  006f               L527:
2162                     ; 695     *((PointerAttr uint8_t*) (MemoryAddressCast)startaddress + Count) = ((uint8_t)(Buffer[Count]));
2164  006f 1e0d          	ldw	x,(OFST+7,sp)
2165  0071 72fb05        	addw	x,(OFST-1,sp)
2166  0074 f6            	ld	a,(x)
2167  0075 1e03          	ldw	x,(OFST-3,sp)
2168  0077 72fb05        	addw	x,(OFST-1,sp)
2169  007a f7            	ld	(x),a
2170                     ; 693   for(Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
2172  007b 1e05          	ldw	x,(OFST-1,sp)
2173  007d 5c            	incw	x
2174  007e 1f05          	ldw	(OFST-1,sp),x
2178  0080 a30040        	cpw	x,#64
2179  0083 25ea          	jrult	L527
2180                     ; 697 }
2183  0085 5b08          	addw	sp,#8
2184  0087 81            	ret	
2185  0088               LC002:
2186  0088 89            	pushw	x
2187  0089 5f            	clrw	x
2188  008a 89            	pushw	x
2189  008b ae0010        	ldw	x,#L73
2190  008e cd0000        	call	_assert_failed
2192  0091 5b04          	addw	sp,#4
2193  0093 81            	ret	
2206                     	xdef	_FLASH_WaitForLastOperation
2207                     	xdef	_FLASH_ProgramBlock
2208                     	xdef	_FLASH_EraseBlock
2209                     	xdef	_FLASH_GetFlagStatus
2210                     	xdef	_FLASH_GetBootSize
2211                     	xdef	_FLASH_GetProgrammingTime
2212                     	xdef	_FLASH_GetLowPowerMode
2213                     	xdef	_FLASH_SetProgrammingTime
2214                     	xdef	_FLASH_SetLowPowerMode
2215                     	xdef	_FLASH_EraseOptionByte
2216                     	xdef	_FLASH_ProgramOptionByte
2217                     	xdef	_FLASH_ReadOptionByte
2218                     	xdef	_FLASH_ProgramWord
2219                     	xdef	_FLASH_ReadByte
2220                     	xdef	_FLASH_ProgramByte
2221                     	xdef	_FLASH_EraseByte
2222                     	xdef	_FLASH_ITConfig
2223                     	xdef	_FLASH_DeInit
2224                     	xdef	_FLASH_Lock
2225                     	xdef	_FLASH_Unlock
2226                     	xref	_assert_failed
2227                     	switch	.const
2228  0010               L73:
2229  0010 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
2230  0022 6965735c7374  	dc.b	"ies\stm8s_stdperip"
2231  0034 685f64726976  	dc.b	"h_driver\src\stm8s"
2232  0046 5f666c617368  	dc.b	"_flash.c",0
2233                     	xref.b	c_lreg
2234                     	xref.b	c_x
2235                     	xref.b	c_y
2255                     	xref	c_ladd
2256                     	xref	c_cmulx
2257                     	xref	c_lgadd
2258                     	xref	c_rtol
2259                     	xref	c_umul
2260                     	xref	c_lcmp
2261                     	xref	c_ltor
2262                     	end
