   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.5 - 29 Dec 2015
   3                     ; Generator (Limited) V4.4.4 - 27 Jan 2016
   4                     ; Optimizer V4.4.4 - 27 Jan 2016
  50                     ; 53 INTERRUPT_HANDLER(NonHandledInterrupt, 25)
  50                     ; 54 {
  51                     .text:	section	.text,new
  52  0000               f_NonHandledInterrupt:
  56                     ; 58 }
  59  0000 80            	iret	
  81                     ; 66 INTERRUPT_HANDLER_TRAP(TRAP_IRQHandler)
  81                     ; 67 {
  82                     .text:	section	.text,new
  83  0000               f_TRAP_IRQHandler:
  87                     ; 71 }
  90  0000 80            	iret	
 112                     ; 78 INTERRUPT_HANDLER(TLI_IRQHandler, 0)
 112                     ; 79 
 112                     ; 80 {
 113                     .text:	section	.text,new
 114  0000               f_TLI_IRQHandler:
 118                     ; 84 }
 121  0000 80            	iret	
 143                     ; 91 INTERRUPT_HANDLER(AWU_IRQHandler, 1)
 143                     ; 92 {
 144                     .text:	section	.text,new
 145  0000               f_AWU_IRQHandler:
 149                     ; 96 }
 152  0000 80            	iret	
 174                     ; 103 INTERRUPT_HANDLER(CLK_IRQHandler, 2)
 174                     ; 104 {
 175                     .text:	section	.text,new
 176  0000               f_CLK_IRQHandler:
 180                     ; 108 }
 183  0000 80            	iret	
 206                     ; 115 INTERRUPT_HANDLER(EXTI_PORTA_IRQHandler, 3)
 206                     ; 116 {
 207                     .text:	section	.text,new
 208  0000               f_EXTI_PORTA_IRQHandler:
 212                     ; 120 }
 215  0000 80            	iret	
 238                     ; 127 INTERRUPT_HANDLER(EXTI_PORTB_IRQHandler, 4)
 238                     ; 128 {
 239                     .text:	section	.text,new
 240  0000               f_EXTI_PORTB_IRQHandler:
 244                     ; 132 }
 247  0000 80            	iret	
 270                     ; 139 INTERRUPT_HANDLER(EXTI_PORTC_IRQHandler, 5)
 270                     ; 140 {
 271                     .text:	section	.text,new
 272  0000               f_EXTI_PORTC_IRQHandler:
 276                     ; 144 }
 279  0000 80            	iret	
 302                     ; 157 INTERRUPT_HANDLER(EXTI_PORTE_IRQHandler, 7)
 302                     ; 158 {
 303                     .text:	section	.text,new
 304  0000               f_EXTI_PORTE_IRQHandler:
 308                     ; 162 }
 311  0000 80            	iret	
 333                     ; 209 INTERRUPT_HANDLER(SPI_IRQHandler, 10)
 333                     ; 210 {
 334                     .text:	section	.text,new
 335  0000               f_SPI_IRQHandler:
 339                     ; 214 }
 342  0000 80            	iret	
 365                     ; 221 INTERRUPT_HANDLER(TIM1_UPD_OVF_TRG_BRK_IRQHandler, 11)
 365                     ; 222 {
 366                     .text:	section	.text,new
 367  0000               f_TIM1_UPD_OVF_TRG_BRK_IRQHandler:
 371                     ; 226 }
 374  0000 80            	iret	
 397                     ; 233 INTERRUPT_HANDLER(TIM1_CAP_COM_IRQHandler, 12)
 397                     ; 234 {
 398                     .text:	section	.text,new
 399  0000               f_TIM1_CAP_COM_IRQHandler:
 403                     ; 238 }
 406  0000 80            	iret	
 429                     ; 278  INTERRUPT_HANDLER(TIM2_CAP_COM_IRQHandler, 14)
 429                     ; 279  {
 430                     .text:	section	.text,new
 431  0000               f_TIM2_CAP_COM_IRQHandler:
 435                     ; 283  }
 438  0000 80            	iret	
 461                     ; 320  INTERRUPT_HANDLER(UART1_TX_IRQHandler, 17)
 461                     ; 321  {
 462                     .text:	section	.text,new
 463  0000               f_UART1_TX_IRQHandler:
 467                     ; 325  }
 470  0000 80            	iret	
 493                     ; 332  INTERRUPT_HANDLER(UART1_RX_IRQHandler, 18)
 493                     ; 333  {
 494                     .text:	section	.text,new
 495  0000               f_UART1_RX_IRQHandler:
 499                     ; 337  }
 502  0000 80            	iret	
 524                     ; 371 INTERRUPT_HANDLER(I2C_IRQHandler, 19)
 524                     ; 372 {
 525                     .text:	section	.text,new
 526  0000               f_I2C_IRQHandler:
 530                     ; 376 }
 533  0000 80            	iret	
 555                     ; 450  INTERRUPT_HANDLER(ADC1_IRQHandler, 22)
 555                     ; 451  {
 556                     .text:	section	.text,new
 557  0000               f_ADC1_IRQHandler:
 561                     ; 455  }
 564  0000 80            	iret	
 587                     ; 484 INTERRUPT_HANDLER(EEPROM_EEC_IRQHandler, 24)
 587                     ; 485 {
 588                     .text:	section	.text,new
 589  0000               f_EEPROM_EEC_IRQHandler:
 593                     ; 489 }
 596  0000 80            	iret	
 608                     	xdef	f_EEPROM_EEC_IRQHandler
 609                     	xdef	f_ADC1_IRQHandler
 610                     	xdef	f_I2C_IRQHandler
 611                     	xdef	f_UART1_RX_IRQHandler
 612                     	xdef	f_UART1_TX_IRQHandler
 613                     	xdef	f_TIM2_CAP_COM_IRQHandler
 614                     	xdef	f_TIM1_UPD_OVF_TRG_BRK_IRQHandler
 615                     	xdef	f_TIM1_CAP_COM_IRQHandler
 616                     	xdef	f_SPI_IRQHandler
 617                     	xdef	f_EXTI_PORTE_IRQHandler
 618                     	xdef	f_EXTI_PORTC_IRQHandler
 619                     	xdef	f_EXTI_PORTB_IRQHandler
 620                     	xdef	f_EXTI_PORTA_IRQHandler
 621                     	xdef	f_CLK_IRQHandler
 622                     	xdef	f_AWU_IRQHandler
 623                     	xdef	f_TLI_IRQHandler
 624                     	xdef	f_TRAP_IRQHandler
 625                     	xdef	f_NonHandledInterrupt
 644                     	end
