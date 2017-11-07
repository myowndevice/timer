   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.5 - 29 Dec 2015
   3                     ; Generator (Limited) V4.4.4 - 27 Jan 2016
   4                     ; Optimizer V4.4.4 - 27 Jan 2016
  49                     ; 50 void SPI_DeInit(void)
  49                     ; 51 {
  51                     .text:	section	.text,new
  52  0000               _SPI_DeInit:
  56                     ; 52   SPI->CR1    = SPI_CR1_RESET_VALUE;
  58  0000 725f5200      	clr	20992
  59                     ; 53   SPI->CR2    = SPI_CR2_RESET_VALUE;
  61  0004 725f5201      	clr	20993
  62                     ; 54   SPI->ICR    = SPI_ICR_RESET_VALUE;
  64  0008 725f5202      	clr	20994
  65                     ; 55   SPI->SR     = SPI_SR_RESET_VALUE;
  67  000c 35025203      	mov	20995,#2
  68                     ; 56   SPI->CRCPR  = SPI_CRCPR_RESET_VALUE;
  70  0010 35075205      	mov	20997,#7
  71                     ; 57 }
  74  0014 81            	ret	
 390                     ; 78 void SPI_Init(SPI_FirstBit_TypeDef FirstBit, SPI_BaudRatePrescaler_TypeDef BaudRatePrescaler, SPI_Mode_TypeDef Mode, SPI_ClockPolarity_TypeDef ClockPolarity, SPI_ClockPhase_TypeDef ClockPhase, SPI_DataDirection_TypeDef Data_Direction, SPI_NSS_TypeDef Slave_Management, uint8_t CRCPolynomial)
 390                     ; 79 {
 391                     .text:	section	.text,new
 392  0000               _SPI_Init:
 394  0000 89            	pushw	x
 395  0001 88            	push	a
 396       00000001      OFST:	set	1
 399                     ; 91   SPI->CR1 = (uint8_t)((uint8_t)((uint8_t)FirstBit | BaudRatePrescaler) |
 399                     ; 92                        (uint8_t)((uint8_t)ClockPolarity | ClockPhase));
 401  0002 7b07          	ld	a,(OFST+6,sp)
 402  0004 1a08          	or	a,(OFST+7,sp)
 403  0006 6b01          	ld	(OFST+0,sp),a
 405  0008 9f            	ld	a,xl
 406  0009 1a02          	or	a,(OFST+1,sp)
 407  000b 1a01          	or	a,(OFST+0,sp)
 408  000d c75200        	ld	20992,a
 409                     ; 95   SPI->CR2 = (uint8_t)((uint8_t)(Data_Direction) | (uint8_t)(Slave_Management));
 411  0010 7b09          	ld	a,(OFST+8,sp)
 412  0012 1a0a          	or	a,(OFST+9,sp)
 413  0014 c75201        	ld	20993,a
 414                     ; 97   if (Mode == SPI_MODE_MASTER)
 416  0017 7b06          	ld	a,(OFST+5,sp)
 417  0019 a104          	cp	a,#4
 418  001b 2606          	jrne	L302
 419                     ; 99     SPI->CR2 |= (uint8_t)SPI_CR2_SSI;
 421  001d 72105201      	bset	20993,#0
 423  0021 2004          	jra	L502
 424  0023               L302:
 425                     ; 103     SPI->CR2 &= (uint8_t)~(SPI_CR2_SSI);
 427  0023 72115201      	bres	20993,#0
 428  0027               L502:
 429                     ; 107   SPI->CR1 |= (uint8_t)(Mode);
 431  0027 c65200        	ld	a,20992
 432  002a 1a06          	or	a,(OFST+5,sp)
 433  002c c75200        	ld	20992,a
 434                     ; 110   SPI->CRCPR = (uint8_t)CRCPolynomial;
 436  002f 7b0b          	ld	a,(OFST+10,sp)
 437  0031 c75205        	ld	20997,a
 438                     ; 111 }
 441  0034 5b03          	addw	sp,#3
 442  0036 81            	ret	
 497                     ; 119 void SPI_Cmd(FunctionalState NewState)
 497                     ; 120 {
 498                     .text:	section	.text,new
 499  0000               _SPI_Cmd:
 503                     ; 124   if (NewState != DISABLE)
 505  0000 4d            	tnz	a
 506  0001 2705          	jreq	L532
 507                     ; 126     SPI->CR1 |= SPI_CR1_SPE; /* Enable the SPI peripheral*/
 509  0003 721c5200      	bset	20992,#6
 512  0007 81            	ret	
 513  0008               L532:
 514                     ; 130     SPI->CR1 &= (uint8_t)(~SPI_CR1_SPE); /* Disable the SPI peripheral*/
 516  0008 721d5200      	bres	20992,#6
 517                     ; 132 }
 520  000c 81            	ret	
 630                     ; 141 void SPI_ITConfig(SPI_IT_TypeDef SPI_IT, FunctionalState NewState)
 630                     ; 142 {
 631                     .text:	section	.text,new
 632  0000               _SPI_ITConfig:
 634  0000 89            	pushw	x
 635  0001 88            	push	a
 636       00000001      OFST:	set	1
 639                     ; 143   uint8_t itpos = 0;
 641                     ; 145   assert_param(IS_SPI_CONFIG_IT_OK(SPI_IT));
 643  0002 9e            	ld	a,xh
 644  0003 a117          	cp	a,#23
 645  0005 2714          	jreq	L02
 646  0007 9e            	ld	a,xh
 647  0008 a106          	cp	a,#6
 648  000a 270f          	jreq	L02
 649  000c 9e            	ld	a,xh
 650  000d a105          	cp	a,#5
 651  000f 270a          	jreq	L02
 652  0011 9e            	ld	a,xh
 653  0012 a134          	cp	a,#52
 654  0014 2705          	jreq	L02
 655  0016 ae0091        	ldw	x,#145
 656  0019 ad32          	call	LC001
 657  001b               L02:
 658                     ; 146   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 660  001b 7b03          	ld	a,(OFST+2,sp)
 661  001d 2708          	jreq	L03
 662  001f 4a            	dec	a
 663  0020 2705          	jreq	L03
 664  0022 ae0092        	ldw	x,#146
 665  0025 ad26          	call	LC001
 666  0027               L03:
 667                     ; 149   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)SPI_IT & (uint8_t)0x0F));
 669  0027 7b02          	ld	a,(OFST+1,sp)
 670  0029 a40f          	and	a,#15
 671  002b 5f            	clrw	x
 672  002c 97            	ld	xl,a
 673  002d a601          	ld	a,#1
 674  002f 5d            	tnzw	x
 675  0030 2704          	jreq	L43
 676  0032               L63:
 677  0032 48            	sll	a
 678  0033 5a            	decw	x
 679  0034 26fc          	jrne	L63
 680  0036               L43:
 681  0036 6b01          	ld	(OFST+0,sp),a
 683                     ; 151   if (NewState != DISABLE)
 685  0038 0d03          	tnz	(OFST+2,sp)
 686  003a 2707          	jreq	L313
 687                     ; 153     SPI->ICR |= itpos; /* Enable interrupt*/
 689  003c c65202        	ld	a,20994
 690  003f 1a01          	or	a,(OFST+0,sp)
 692  0041 2004          	jra	L513
 693  0043               L313:
 694                     ; 157     SPI->ICR &= (uint8_t)(~itpos); /* Disable interrupt*/
 696  0043 43            	cpl	a
 697  0044 c45202        	and	a,20994
 698  0047               L513:
 699  0047 c75202        	ld	20994,a
 700                     ; 159 }
 703  004a 5b03          	addw	sp,#3
 704  004c 81            	ret	
 705  004d               LC001:
 706  004d 89            	pushw	x
 707  004e 5f            	clrw	x
 708  004f 89            	pushw	x
 709  0050 ae0000        	ldw	x,#L113
 710  0053 cd0000        	call	_assert_failed
 712  0056 5b04          	addw	sp,#4
 713  0058 81            	ret	
 747                     ; 166 void SPI_SendData(uint8_t Data)
 747                     ; 167 {
 748                     .text:	section	.text,new
 749  0000               _SPI_SendData:
 753                     ; 168   SPI->DR = Data; /* Write in the DR register the data to be sent*/
 755  0000 c75204        	ld	20996,a
 756                     ; 169 }
 759  0003 81            	ret	
 782                     ; 176 uint8_t SPI_ReceiveData(void)
 782                     ; 177 {
 783                     .text:	section	.text,new
 784  0000               _SPI_ReceiveData:
 788                     ; 178   return ((uint8_t)SPI->DR); /* Return the data in the DR register*/
 790  0000 c65204        	ld	a,20996
 793  0003 81            	ret	
 830                     ; 187 void SPI_NSSInternalSoftwareCmd(FunctionalState NewState)
 830                     ; 188 {
 831                     .text:	section	.text,new
 832  0000               _SPI_NSSInternalSoftwareCmd:
 834  0000 88            	push	a
 835       00000000      OFST:	set	0
 838                     ; 190   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 840  0001 4d            	tnz	a
 841  0002 2711          	jreq	L25
 842  0004 4a            	dec	a
 843  0005 270e          	jreq	L25
 844  0007 ae00be        	ldw	x,#190
 845  000a 89            	pushw	x
 846  000b 5f            	clrw	x
 847  000c 89            	pushw	x
 848  000d ae0000        	ldw	x,#L113
 849  0010 cd0000        	call	_assert_failed
 851  0013 5b04          	addw	sp,#4
 852  0015               L25:
 853                     ; 192   if (NewState != DISABLE)
 855  0015 7b01          	ld	a,(OFST+1,sp)
 856  0017 2706          	jreq	L363
 857                     ; 194     SPI->CR2 |= SPI_CR2_SSI; /* Set NSS pin internally by software*/
 859  0019 72105201      	bset	20993,#0
 861  001d 2004          	jra	L563
 862  001f               L363:
 863                     ; 198     SPI->CR2 &= (uint8_t)(~SPI_CR2_SSI); /* Reset NSS pin internally by software*/
 865  001f 72115201      	bres	20993,#0
 866  0023               L563:
 867                     ; 200 }
 870  0023 84            	pop	a
 871  0024 81            	ret	
 894                     ; 207 void SPI_TransmitCRC(void)
 894                     ; 208 {
 895                     .text:	section	.text,new
 896  0000               _SPI_TransmitCRC:
 900                     ; 209   SPI->CR2 |= SPI_CR2_CRCNEXT; /* Enable the CRC transmission*/
 902  0000 72185201      	bset	20993,#4
 903                     ; 210 }
 906  0004 81            	ret	
 943                     ; 218 void SPI_CalculateCRCCmd(FunctionalState NewState)
 943                     ; 219 {
 944                     .text:	section	.text,new
 945  0000               _SPI_CalculateCRCCmd:
 947  0000 88            	push	a
 948       00000000      OFST:	set	0
 951                     ; 221   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 953  0001 4d            	tnz	a
 954  0002 2711          	jreq	L66
 955  0004 4a            	dec	a
 956  0005 270e          	jreq	L66
 957  0007 ae00dd        	ldw	x,#221
 958  000a 89            	pushw	x
 959  000b 5f            	clrw	x
 960  000c 89            	pushw	x
 961  000d ae0000        	ldw	x,#L113
 962  0010 cd0000        	call	_assert_failed
 964  0013 5b04          	addw	sp,#4
 965  0015               L66:
 966                     ; 223   if (NewState != DISABLE)
 968  0015 7b01          	ld	a,(OFST+1,sp)
 969  0017 2706          	jreq	L514
 970                     ; 225     SPI->CR2 |= SPI_CR2_CRCEN; /* Enable the CRC calculation*/
 972  0019 721a5201      	bset	20993,#5
 974  001d 2004          	jra	L714
 975  001f               L514:
 976                     ; 229     SPI->CR2 &= (uint8_t)(~SPI_CR2_CRCEN); /* Disable the CRC calculation*/
 978  001f 721b5201      	bres	20993,#5
 979  0023               L714:
 980                     ; 231 }
 983  0023 84            	pop	a
 984  0024 81            	ret	
1049                     ; 238 uint8_t SPI_GetCRC(SPI_CRC_TypeDef SPI_CRC)
1049                     ; 239 {
1050                     .text:	section	.text,new
1051  0000               _SPI_GetCRC:
1053  0000 88            	push	a
1054  0001 88            	push	a
1055       00000001      OFST:	set	1
1058                     ; 240   uint8_t crcreg = 0;
1060                     ; 243   assert_param(IS_SPI_CRC_OK(SPI_CRC));
1062  0002 a101          	cp	a,#1
1063  0004 2711          	jreq	L001
1064  0006 4d            	tnz	a
1065  0007 270e          	jreq	L001
1066  0009 ae00f3        	ldw	x,#243
1067  000c 89            	pushw	x
1068  000d 5f            	clrw	x
1069  000e 89            	pushw	x
1070  000f ae0000        	ldw	x,#L113
1071  0012 cd0000        	call	_assert_failed
1073  0015 5b04          	addw	sp,#4
1074  0017               L001:
1075                     ; 245   if (SPI_CRC != SPI_CRC_RX)
1077  0017 7b02          	ld	a,(OFST+1,sp)
1078  0019 2705          	jreq	L354
1079                     ; 247     crcreg = SPI->TXCRCR;  /* Get the Tx CRC register*/
1081  001b c65207        	ld	a,20999
1084  001e 2003          	jra	L554
1085  0020               L354:
1086                     ; 251     crcreg = SPI->RXCRCR; /* Get the Rx CRC register*/
1088  0020 c65206        	ld	a,20998
1090  0023               L554:
1091                     ; 255   return crcreg;
1095  0023 85            	popw	x
1096  0024 81            	ret	
1121                     ; 263 void SPI_ResetCRC(void)
1121                     ; 264 {
1122                     .text:	section	.text,new
1123  0000               _SPI_ResetCRC:
1127                     ; 267   SPI_CalculateCRCCmd(ENABLE);
1129  0000 a601          	ld	a,#1
1130  0002 cd0000        	call	_SPI_CalculateCRCCmd
1132                     ; 270   SPI_Cmd(ENABLE);
1134  0005 a601          	ld	a,#1
1136                     ; 271 }
1139  0007 cc0000        	jp	_SPI_Cmd
1163                     ; 278 uint8_t SPI_GetCRCPolynomial(void)
1163                     ; 279 {
1164                     .text:	section	.text,new
1165  0000               _SPI_GetCRCPolynomial:
1169                     ; 280   return SPI->CRCPR; /* Return the CRC polynomial register */
1171  0000 c65205        	ld	a,20997
1174  0003 81            	ret	
1231                     ; 288 void SPI_BiDirectionalLineConfig(SPI_Direction_TypeDef SPI_Direction)
1231                     ; 289 {
1232                     .text:	section	.text,new
1233  0000               _SPI_BiDirectionalLineConfig:
1235  0000 88            	push	a
1236       00000000      OFST:	set	0
1239                     ; 291   assert_param(IS_SPI_DIRECTION_OK(SPI_Direction));
1241  0001 4d            	tnz	a
1242  0002 2711          	jreq	L221
1243  0004 4a            	dec	a
1244  0005 270e          	jreq	L221
1245  0007 ae0123        	ldw	x,#291
1246  000a 89            	pushw	x
1247  000b 5f            	clrw	x
1248  000c 89            	pushw	x
1249  000d ae0000        	ldw	x,#L113
1250  0010 cd0000        	call	_assert_failed
1252  0013 5b04          	addw	sp,#4
1253  0015               L221:
1254                     ; 293   if (SPI_Direction != SPI_DIRECTION_RX)
1256  0015 7b01          	ld	a,(OFST+1,sp)
1257  0017 2706          	jreq	L525
1258                     ; 295     SPI->CR2 |= SPI_CR2_BDOE; /* Set the Tx only mode*/
1260  0019 721c5201      	bset	20993,#6
1262  001d 2004          	jra	L725
1263  001f               L525:
1264                     ; 299     SPI->CR2 &= (uint8_t)(~SPI_CR2_BDOE); /* Set the Rx only mode*/
1266  001f 721d5201      	bres	20993,#6
1267  0023               L725:
1268                     ; 301 }
1271  0023 84            	pop	a
1272  0024 81            	ret	
1393                     ; 311 FlagStatus SPI_GetFlagStatus(SPI_Flag_TypeDef SPI_FLAG)
1393                     ; 312 {
1394                     .text:	section	.text,new
1395  0000               _SPI_GetFlagStatus:
1397  0000 88            	push	a
1398       00000001      OFST:	set	1
1401                     ; 313   FlagStatus status = RESET;
1403                     ; 318   if ((SPI->SR & (uint8_t)SPI_FLAG) != (uint8_t)RESET)
1405  0001 c45203        	and	a,20995
1406  0004 2702          	jreq	L506
1407                     ; 320     status = SET; /* SPI_FLAG is set */
1409  0006 a601          	ld	a,#1
1412  0008               L506:
1413                     ; 324     status = RESET; /* SPI_FLAG is reset*/
1416                     ; 328   return status;
1420  0008 5b01          	addw	sp,#1
1421  000a 81            	ret	
1457                     ; 346 void SPI_ClearFlag(SPI_Flag_TypeDef SPI_FLAG)
1457                     ; 347 {
1458                     .text:	section	.text,new
1459  0000               _SPI_ClearFlag:
1461  0000 88            	push	a
1462       00000000      OFST:	set	0
1465                     ; 348   assert_param(IS_SPI_CLEAR_FLAGS_OK(SPI_FLAG));
1467  0001 a110          	cp	a,#16
1468  0003 2712          	jreq	L631
1469  0005 a108          	cp	a,#8
1470  0007 270e          	jreq	L631
1471  0009 ae015c        	ldw	x,#348
1472  000c 89            	pushw	x
1473  000d 5f            	clrw	x
1474  000e 89            	pushw	x
1475  000f ae0000        	ldw	x,#L113
1476  0012 cd0000        	call	_assert_failed
1478  0015 5b04          	addw	sp,#4
1479  0017               L631:
1480                     ; 350   SPI->SR = (uint8_t)(~SPI_FLAG);
1482  0017 7b01          	ld	a,(OFST+1,sp)
1483  0019 43            	cpl	a
1484  001a c75203        	ld	20995,a
1485                     ; 351 }
1488  001d 84            	pop	a
1489  001e 81            	ret	
1572                     ; 366 ITStatus SPI_GetITStatus(SPI_IT_TypeDef SPI_IT)
1572                     ; 367 {
1573                     .text:	section	.text,new
1574  0000               _SPI_GetITStatus:
1576  0000 88            	push	a
1577  0001 89            	pushw	x
1578       00000002      OFST:	set	2
1581                     ; 368   ITStatus pendingbitstatus = RESET;
1583                     ; 369   uint8_t itpos = 0;
1585                     ; 370   uint8_t itmask1 = 0;
1587                     ; 371   uint8_t itmask2 = 0;
1589                     ; 372   uint8_t enablestatus = 0;
1591                     ; 373   assert_param(IS_SPI_GET_IT_OK(SPI_IT));
1593  0002 a165          	cp	a,#101
1594  0004 2722          	jreq	L051
1595  0006 a155          	cp	a,#85
1596  0008 271e          	jreq	L051
1597  000a a145          	cp	a,#69
1598  000c 271a          	jreq	L051
1599  000e a134          	cp	a,#52
1600  0010 2716          	jreq	L051
1601  0012 a117          	cp	a,#23
1602  0014 2712          	jreq	L051
1603  0016 a106          	cp	a,#6
1604  0018 270e          	jreq	L051
1605  001a ae0175        	ldw	x,#373
1606  001d 89            	pushw	x
1607  001e 5f            	clrw	x
1608  001f 89            	pushw	x
1609  0020 ae0000        	ldw	x,#L113
1610  0023 cd0000        	call	_assert_failed
1612  0026 5b04          	addw	sp,#4
1613  0028               L051:
1614                     ; 375   itpos = (uint8_t)((uint8_t)1 << ((uint8_t)SPI_IT & (uint8_t)0x0F));
1616  0028 7b03          	ld	a,(OFST+1,sp)
1617  002a a40f          	and	a,#15
1618  002c 5f            	clrw	x
1619  002d 97            	ld	xl,a
1620  002e a601          	ld	a,#1
1621  0030 5d            	tnzw	x
1622  0031 2704          	jreq	L451
1623  0033               L651:
1624  0033 48            	sll	a
1625  0034 5a            	decw	x
1626  0035 26fc          	jrne	L651
1627  0037               L451:
1628  0037 6b01          	ld	(OFST-1,sp),a
1630                     ; 378   itmask1 = (uint8_t)((uint8_t)SPI_IT >> (uint8_t)4);
1632  0039 7b03          	ld	a,(OFST+1,sp)
1633  003b 4e            	swap	a
1634  003c a40f          	and	a,#15
1635  003e 6b02          	ld	(OFST+0,sp),a
1637                     ; 380   itmask2 = (uint8_t)((uint8_t)1 << itmask1);
1639  0040 5f            	clrw	x
1640  0041 97            	ld	xl,a
1641  0042 a601          	ld	a,#1
1642  0044 5d            	tnzw	x
1643  0045 2704          	jreq	L061
1644  0047               L261:
1645  0047 48            	sll	a
1646  0048 5a            	decw	x
1647  0049 26fc          	jrne	L261
1648  004b               L061:
1650                     ; 382   enablestatus = (uint8_t)((uint8_t)SPI->SR & itmask2);
1652  004b c45203        	and	a,20995
1653  004e 6b02          	ld	(OFST+0,sp),a
1655                     ; 384   if (((SPI->ICR & itpos) != RESET) && enablestatus)
1657  0050 c65202        	ld	a,20994
1658  0053 1501          	bcp	a,(OFST-1,sp)
1659  0055 2708          	jreq	L176
1661  0057 7b02          	ld	a,(OFST+0,sp)
1662  0059 2704          	jreq	L176
1663                     ; 387     pendingbitstatus = SET;
1665  005b a601          	ld	a,#1
1668  005d 2001          	jra	L376
1669  005f               L176:
1670                     ; 392     pendingbitstatus = RESET;
1672  005f 4f            	clr	a
1674  0060               L376:
1675                     ; 395   return  pendingbitstatus;
1679  0060 5b03          	addw	sp,#3
1680  0062 81            	ret	
1726                     ; 412 void SPI_ClearITPendingBit(SPI_IT_TypeDef SPI_IT)
1726                     ; 413 {
1727                     .text:	section	.text,new
1728  0000               _SPI_ClearITPendingBit:
1730  0000 88            	push	a
1731  0001 88            	push	a
1732       00000001      OFST:	set	1
1735                     ; 414   uint8_t itpos = 0;
1737                     ; 415   assert_param(IS_SPI_CLEAR_IT_OK(SPI_IT));
1739  0002 a145          	cp	a,#69
1740  0004 2712          	jreq	L271
1741  0006 a134          	cp	a,#52
1742  0008 270e          	jreq	L271
1743  000a ae019f        	ldw	x,#415
1744  000d 89            	pushw	x
1745  000e 5f            	clrw	x
1746  000f 89            	pushw	x
1747  0010 ae0000        	ldw	x,#L113
1748  0013 cd0000        	call	_assert_failed
1750  0016 5b04          	addw	sp,#4
1751  0018               L271:
1752                     ; 420   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)(SPI_IT & (uint8_t)0xF0) >> 4));
1754  0018 7b02          	ld	a,(OFST+1,sp)
1755  001a 4e            	swap	a
1756  001b a40f          	and	a,#15
1757  001d 5f            	clrw	x
1758  001e 97            	ld	xl,a
1759  001f a601          	ld	a,#1
1760  0021 5d            	tnzw	x
1761  0022 2704          	jreq	L671
1762  0024               L002:
1763  0024 48            	sll	a
1764  0025 5a            	decw	x
1765  0026 26fc          	jrne	L002
1766  0028               L671:
1768                     ; 422   SPI->SR = (uint8_t)(~itpos);
1770  0028 43            	cpl	a
1771  0029 c75203        	ld	20995,a
1772                     ; 424 }
1775  002c 85            	popw	x
1776  002d 81            	ret	
1789                     	xdef	_SPI_ClearITPendingBit
1790                     	xdef	_SPI_GetITStatus
1791                     	xdef	_SPI_ClearFlag
1792                     	xdef	_SPI_GetFlagStatus
1793                     	xdef	_SPI_BiDirectionalLineConfig
1794                     	xdef	_SPI_GetCRCPolynomial
1795                     	xdef	_SPI_ResetCRC
1796                     	xdef	_SPI_GetCRC
1797                     	xdef	_SPI_CalculateCRCCmd
1798                     	xdef	_SPI_TransmitCRC
1799                     	xdef	_SPI_NSSInternalSoftwareCmd
1800                     	xdef	_SPI_ReceiveData
1801                     	xdef	_SPI_SendData
1802                     	xdef	_SPI_ITConfig
1803                     	xdef	_SPI_Cmd
1804                     	xdef	_SPI_Init
1805                     	xdef	_SPI_DeInit
1806                     	xref	_assert_failed
1807                     .const:	section	.text
1808  0000               L113:
1809  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
1810  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
1811  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
1812  0036 5f7370692e63  	dc.b	"_spi.c",0
1832                     	end
