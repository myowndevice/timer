/* Includes ------------------------------------------------------------------*/
#include "stm8s.h"
#include "stdlib.h"
//time
u16 timesec=999;
u8 sleeptime=0;

void Delay (u16 nCount);
uint32_t LSIMeasurment(void);

u8 ind[3]={10,10,10};
u8 tchk[3]={0,0,0};//точки
u8 numind=0;

//

#define KNNUM  2  //колво кнопок
#define KNONE  4  //обычное нажатие
#define KNLONG 5  //долгое
#define KNTWO  6  //двойное

#define KNDTIME 50 //время в мс дребезга контактов
#define KNTIMETWO 300 //время в мс двойного нажатия
#define KNTIMELONG 1000 //время в мс долгого нажатия

u8  kn[KNNUM];//итоговое состояние кнопки 0 - не обработана, и дальше обычное нажатие долгое и двойное
u8  knstatus[KNNUM];//состояние кнопки 0 - не нажата 1 - нажата
u16 kntime[KNNUM];//время нажатия кнопки
u8  kndtime=0;

u16 secundomer=1;


#define ON1 GPIO_WriteLow(GPIOD,GPIO_PIN_5)
#define ON2 GPIO_WriteLow(GPIOC,GPIO_PIN_5)
#define ON3 GPIO_WriteLow(GPIOC,GPIO_PIN_7)

#define OFF1 GPIO_WriteHigh(GPIOD,GPIO_PIN_5)
#define OFF2 GPIO_WriteHigh(GPIOC,GPIO_PIN_5)
#define OFF3 GPIO_WriteHigh(GPIOC,GPIO_PIN_7)

#define AON GPIO_WriteLow(GPIOD,GPIO_PIN_6)
#define BON GPIO_WriteLow(GPIOC,GPIO_PIN_6)
#define CON GPIO_WriteLow(GPIOC,GPIO_PIN_3)
#define DON GPIO_WriteLow(GPIOB,GPIO_PIN_4)
#define EON GPIO_WriteLow(GPIOA,GPIO_PIN_3)
#define FON GPIO_WriteLow(GPIOA,GPIO_PIN_1)
#define GON GPIO_WriteLow(GPIOC,GPIO_PIN_4)
#define TON GPIO_WriteLow(GPIOB,GPIO_PIN_5)

#define ALLOFF GPIO_WriteHigh(GPIOC,GPIO_PIN_3|GPIO_PIN_4|GPIO_PIN_6);GPIO_WriteHigh(GPIOD,GPIO_PIN_6);GPIO_WriteHigh(GPIOA,GPIO_PIN_1|GPIO_PIN_3);GPIO_WriteHigh(GPIOB,GPIO_PIN_4|GPIO_PIN_5);


#ifdef USE_FULL_ASSERT

/**
  * @brief  Reports the name of the source file and the source line number
  *   where the assert_param error has occurred.
  * @param file: pointer to the source file name
  * @param line: assert_param error line source number
  * @retval : None
  */
void assert_failed(u8* file, u32 line)
{ 
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */

  /* Infinite loop */
  while (1)
  {
  }
}
#endif


/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
uint32_t LSIMeasurment(void)
{

  uint32_t lsi_freq_hz = 0x0;
  uint32_t fmaster = 0x0;
  uint16_t ICValue1 = 0x0;
  uint16_t ICValue2 = 0x0;

  /* Get master frequency */
  fmaster = CLK_GetClockFreq();

  /* Enable the LSI measurement: LSI clock connected to timer Input Capture 1 */
  AWU->CSR |= AWU_CSR_MSR;

#if defined (STM8S903) || defined (STM8S103) || defined (STM8S003)
  /* Measure the LSI frequency with TIMER Input Capture 1 */
  
  /* Capture only every 8 events!!! */
  /* Enable capture of TI1 */
	//TIM1_ICInit(TIM1_CHANNEL_1, TIM1_ICPOLARITY_RISING, TIM1_ICSELECTION_DIRECTTI, TIM1_ICPSC_DIV8, 0);
	
	//TI1_Config((uint8_t)TIM1_ICPOLARITY_RISING,
  //             (uint8_t)TIM1_ICSELECTION_DIRECTTI,
  //             (uint8_t)0);
	TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
  
  /* Select the Input and set the filter */
  TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) | 
                          (uint8_t)(( (TIM1_ICSELECTION_DIRECTTI)) | ((uint8_t)( 0 << 4))));
	TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
	TIM1->CCER1 |=  TIM1_CCER1_CC1E;
	
   /* Set the Input Capture Prescaler value */
	//TIM1_SetIC1Prescaler(TIM1_ICPSC_DIV8);
	TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_ICxPSC)) 
                          | (uint8_t)TIM1_ICPSC_DIV8);
	
  /* Enable TIM1 */
  //TIM1_Cmd(ENABLE);
	TIM1->CR1 |= TIM1_CR1_CEN;
  
  /* wait a capture on cc1 */
  while((TIM1->SR1 & TIM1_FLAG_CC1) != TIM1_FLAG_CC1);
  /* Get CCR1 value*/
  ICValue1 = TIM1_GetCapture1();
  TIM1_ClearFlag(TIM1_FLAG_CC1);
  
  /* wait a capture on cc1 */
  while((TIM1->SR1 & TIM1_FLAG_CC1) != TIM1_FLAG_CC1);
  /* Get CCR1 value*/
  ICValue2 = TIM1_GetCapture1();
  TIM1_ClearFlag(TIM1_FLAG_CC1);
  
  /* Disable IC1 input capture */
  TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
  /* Disable timer2 */
  TIM1_Cmd(DISABLE);
  
#else  
  /* Measure the LSI frequency with TIMER Input Capture 1 */
  
  /* Capture only every 8 events!!! */
  /* Enable capture of TI1 */
  TIM3_ICInit(TIM3_CHANNEL_1, TIM3_ICPOLARITY_RISING, TIM3_ICSELECTION_DIRECTTI, TIM3_ICPSC_DIV8, 0);

  /* Enable TIM3 */
  TIM3_Cmd(ENABLE);

	/* wait a capture on cc1 */
  while ((TIM3->SR1 & TIM3_FLAG_CC1) != TIM3_FLAG_CC1);
	/* Get CCR1 value*/
  ICValue1 = TIM3_GetCapture1();
  TIM3_ClearFlag(TIM3_FLAG_CC1);

  /* wait a capture on cc1 */
  while ((TIM3->SR1 & TIM3_FLAG_CC1) != TIM3_FLAG_CC1);
    /* Get CCR1 value*/
  ICValue2 = TIM3_GetCapture1();
	TIM3_ClearFlag(TIM3_FLAG_CC1);

  /* Disable IC1 input capture */
  TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);
  /* Disable timer3 */
  TIM3_Cmd(DISABLE);
#endif

  /* Compute LSI clock frequency */
  lsi_freq_hz = (8 * fmaster) / (ICValue2 - ICValue1);
  
  /* Disable the LSI measurement: LSI clock disconnected from timer Input Capture 1 */
  AWU->CSR &= (uint8_t)(~AWU_CSR_MSR);

 return (lsi_freq_hz);
}

u16 timedelay=0;

void Delay(u16 nCount)
{
    /* Decrement nCount value */
    timedelay = nCount;
				
		while (timedelay);
}

int myrand(int max)
{
	//return abs(1);
	return (int)((long)rand()*max/RAND_MAX)+1;
	//return 1;
}

void cifra(u8 num){
	ALLOFF
	
	if (num==0) {
		AON;BON;CON;DON;EON;FON;
	}
	if (num==1) {
		BON;CON;
	}
	if (num==2) {
		AON;BON;GON;EON;DON;
	}
	if (num==3) {
		AON;BON;CON;DON;GON;
	}
	if (num==4) {
		FON;GON;BON;CON;
	}
	if (num==5) {
		AON;FON;GON;CON;DON;
	}
	if (num==6) {
		AON;EON;FON;GON;CON;DON;
	}
	if (num==7) {
		AON;BON;CON;
	}
	if (num==8) {
		AON;BON;CON;GON;DON;EON;FON;
	}
	if (num==9) {
		AON;BON;CON;GON;DON;FON;
	}
	
}
	
void shownumber(u16 num){
	ind[0]=num/100;
	ind[1]=num/10-ind[0]*10;
	ind[2]=num - ind[0]*100 - ind[1]*10;
}	

	
void main(void)
{
	CLK->PCKENR1 = CLK_PCKENR1_TIM4+CLK_PCKENR1_TIM2;
	CLK->PCKENR2 = 0b01110111;
	
	CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV8);
	
	TIM4_TimeBaseInit(TIM4_PRESCALER_8, 249);
  TIM4_ClearFlag(TIM4_FLAG_UPDATE);
	TIM4_ITConfig(TIM4_IT_UPDATE, ENABLE);
  TIM4->IER |= (uint8_t)TIM4_IT_UPDATE;
	
	TIM2_TimeBaseInit(TIM2_PRESCALER_8, 50);
  TIM2_ClearFlag(TIM2_FLAG_UPDATE);
	TIM2_ITConfig(TIM2_IT_UPDATE, ENABLE);
  TIM2->IER |= (uint8_t)TIM2_IT_UPDATE;
	
	//для выхода из сна!
	EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOD,EXTI_SENSITIVITY_FALL_ONLY);	
	
	{//-----инициализация кнопок
		u8 i;
		for (i=0;i<KNNUM;i++) {
			kn[i]=0;
			knstatus[i]=0;
		}	
	}
	
	
	BEEP_Cmd(DISABLE);
	
	/* enable interrupts */
	enableInterrupts();

  GPIO_Init(GPIOD,GPIO_PIN_2|GPIO_PIN_3,GPIO_MODE_IN_PU_IT);//кнопки
	
	GPIO_Init(GPIOD,GPIO_PIN_4,GPIO_MODE_OUT_PP_LOW_SLOW);//пищалка
	
	GPIO_Init(GPIOD,GPIO_PIN_5|GPIO_PIN_6,GPIO_MODE_OUT_PP_HIGH_SLOW);//индикатор
	GPIO_Init(GPIOA,GPIO_PIN_1|GPIO_PIN_3,GPIO_MODE_OUT_PP_HIGH_SLOW);//
	GPIO_Init(GPIOB,GPIO_PIN_4|GPIO_PIN_5,GPIO_MODE_OUT_PP_HIGH_SLOW);//
	GPIO_Init(GPIOC,GPIO_PIN_3|GPIO_PIN_4|GPIO_PIN_5|GPIO_PIN_6|GPIO_PIN_7,GPIO_MODE_OUT_PP_HIGH_SLOW);
	

	halt();

	/* Enable TIM4 */
	TIM4_Cmd(ENABLE);
	TIM2_Cmd(ENABLE);
	
	sleeptime=30;
	/* Infinite loop */
  while (1)
  {
		if (kn[0] == KNONE) {
			secundomer = 0;
			sleeptime=30;
			kn[0]=0;
		}
		if (kn[0] == KNTWO) {
			secundomer = 100;
			sleeptime=30;
			kn[0]=0;
		}
		if (kn[0] == KNLONG) {
			secundomer = 200;
			sleeptime=30;
			kn[0]=0;
		}
	

	if (kn[1] == KNONE) {
			secundomer = 700;
			sleeptime=30;
			kn[1]=0;
		}
		if (kn[1] == KNTWO) {
			secundomer = 800;
			sleeptime=30;
			kn[1]=0;
		}
		if (kn[1] == KNLONG) {
			secundomer = 900;
			sleeptime=30;
			kn[1]=0;
		}
	

	


		if (sleeptime==0)
		{
			int i;
			disableInterrupts();//это запрещает прерывать основную программу! но не убирает внешние прерывания на выход из сна!
			
			OFF1;
			OFF2;
			OFF3;
			i++;//странная оптимизация компилятора! нужна эта команда, иначе халт не срабатывает! 
			
			
			halt();
			enableInterrupts();
			sleeptime=30;
			secundomer=0;
		}
  }
}
 
void knint(u8 knum, u8 zn,u8 pin) {
	//будет отслеживать только изменение состояния кнопки
	if (knstatus[knum] && ((zn&pin) == 0)) {//кнопку нажали
		knstatus[knum] = zn&pin;
		if (kn[knum]>=KNONE) return; //еще не обработали предыдущее нажатие в основном цикле пропустим это нажатие

		kn[knum]++;//колво нажатий плюс один
		if (kn[knum]==1) kntime[knum] = KNTIMELONG;//первый раз начнм замер времени
		
		if (kn[knum]==2) {
			if (kntime[knum] > (KNTIMELONG-KNTIMETWO) ) kn[knum] = KNTWO;
			else kn[knum] = KNONE;
		}
	}
	
	if ((kn[knum]==1) && (kntime[knum]==0)) kn[knum]=KNLONG;
	if ((kn[knum]==1) && (kntime[knum]<(KNTIMELONG-KNTIMETWO)) && zn&pin) kn[knum]=KNONE;
	
	knstatus[knum] = zn&pin;
	
}	 
 
 INTERRUPT_HANDLER(EXTI_PORTD_IRQHandler, 6)
{
  /* In order to detect unexpected events during development,
     it is recommended to set a breakpoint on the following instruction.
  */
	
	/*
	u8 zn;
	
	
	
	zn = GPIO_ReadInputData(GPIOD);
	
	knint(0, zn, GPIO_PIN_2, GPIOD);
	knint(1, zn, GPIO_PIN_3, GPIOD);
	*/
}

INTERRUPT_HANDLER(TIM4_UPD_OVF_IRQHandler, 23)
 {
  /* In order to detect unexpected events during development,
     it is recommended to set a breakpoint on the following instruction.
  */
	
	//милисекунды
	if (timedelay) timedelay--;
	
	
	{  //-------обработка кнопок
		u8 i,pd;
		
		if(kndtime) kndtime--;
		if (kndtime==0) {
			//опрос кнопок редко для избежания дребезга
			kndtime = KNDTIME;
			
			pd = GPIO_ReadInputData(GPIOD);
			knint(0, pd, GPIO_PIN_2);
			knint(1, pd, GPIO_PIN_3);
		}
		for (i=0;i<KNNUM;i++) if(kntime[i]) kntime[i]--;
	}
		
	
	if (timesec==0)
	{
		//секунды
		timesec=999;

		if (secundomer<998) {
			secundomer++;
			shownumber(secundomer);
		}
		
		if (sleeptime) sleeptime--;
		
		if (tchk[2]) tchk[2]=0; else tchk[2]=1;
		
	}
	else timesec--;
	
	TIM4_ClearITPendingBit(TIM4_IT_UPDATE);
	
 }


 INTERRUPT_HANDLER(TIM2_UPD_OVF_BRK_IRQHandler, 13)
 {
  /* In order to detect unexpected events during development,
     it is recommended to set a breakpoint on the following instruction.
  */
	TIM2_ClearITPendingBit(TIM2_IT_UPDATE);
	
	OFF1;
	OFF2;
	OFF3;

	if (numind<3) {
		cifra(ind[numind]);
		
		if (tchk[numind]) TON;
	}	
	
	if (numind==0) {
		ON1;
	}
	if (numind==1) {
		ON2;
	}
	if (numind==2) {
		ON3;
	}
	
	
	numind++;
	//яркость!
	if (numind==30) numind=0;
	
 }