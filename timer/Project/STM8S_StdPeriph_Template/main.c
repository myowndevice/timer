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
u8 tchkmig=0;
u8 numind=0;
u8 oldtimer=1;
u8 oldgames=1;
u16 timerold=0;
u8 timerpisk;
//

#define KNNUM  2  //колво кнопок
#define KNONE  4  //обычное нажатие
#define KNLONG 5  //долгое
#define KNTWO  4  //двойное

#define KNDTIME 50 //время в мс дребезга контактов
#define KNTIMETWO 300 //время в мс двойного нажатия
#define KNTIMELONG 1000 //время в мс долгого нажатия

u8  kn[KNNUM];//итоговое состояние кнопки 0 - не обработана, и дальше обычное нажатие долгое и двойное
u8  knstatus[KNNUM];//состояние кнопки 0 - не нажата 1 - нажата
u16 kntime[KNNUM];//время нажатия кнопки
u8  kndtime=0;
u8  meny=1;
u8  menyold=0;
u8  meny1=1;
u8  menyold1=0;
u8  secon;
u16  timer=0;
u8  timeon;

u16 secundomer=1;


#define ON1 GPIO_WriteHigh(GPIOC,GPIO_PIN_3)
#define ON2 GPIO_WriteHigh(GPIOD,GPIO_PIN_5)
#define ON3 GPIO_WriteHigh(GPIOD,GPIO_PIN_6)

#define OFF1 GPIO_WriteLow(GPIOC,GPIO_PIN_3)
#define OFF2 GPIO_WriteLow(GPIOD,GPIO_PIN_5)
#define OFF3 GPIO_WriteLow(GPIOD,GPIO_PIN_6)

#define AON GPIO_WriteLow(GPIOB,GPIO_PIN_4)
#define BON GPIO_WriteLow(GPIOA,GPIO_PIN_1)
#define CON GPIO_WriteLow(GPIOC,GPIO_PIN_6)
#define DON GPIO_WriteLow(GPIOD,GPIO_PIN_3)
#define EON GPIO_WriteLow(GPIOD,GPIO_PIN_2)
#define FON GPIO_WriteLow(GPIOC,GPIO_PIN_4)
#define GON GPIO_WriteLow(GPIOC,GPIO_PIN_5)
#define TON GPIO_WriteLow(GPIOC,GPIO_PIN_7)

#define ALLOFF GPIO_WriteHigh(GPIOC,GPIO_PIN_6|GPIO_PIN_4|GPIO_PIN_5|GPIO_PIN_7);GPIO_WriteHigh(GPIOD,GPIO_PIN_2|GPIO_PIN_3);GPIO_WriteHigh(GPIOA,GPIO_PIN_1|GPIO_PIN_3);GPIO_WriteHigh(GPIOB,GPIO_PIN_4);


u8 loto[99];
u8 lotonum;

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

void mhalt(void) {
	halt();
	//enableInterrupts();
}

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
	if (num==14) {//-
		GON;
	}
	if (num==11) {//L
		FON;EON;DON;
	}
	if (num==12) {//K
		AON;FON;EON;DON;
	}
	if (num==15) {//t
		AON;FON;EON;DON;
	}
	
}
	
void cifraS(u8 seg){
	u8 j=0;
	
	if(seg==0) AON;
	if(seg==1) BON;
	if(seg==2) CON;
	if(seg==3) DON;
	if(seg==4) EON;
	if(seg==5) FON;
	if(seg==6) GON;
	if(seg==7) TON;
	
	for (j=0;j<3;j++) {
		u8 num;
		u8 flag=0;
		
		if (seg==7) {
			if (tchk[j] * tchkmig) flag = 1;
		} else {
		
		num = ind[j];
		
		
		if (num==0) {
			//AON;BON;CON;DON;EON;FON;
			if(seg==0) flag=1;
			if(seg==1) flag=1;
			if(seg==2)  flag=1;
			if(seg==3)  flag=1;
			if(seg==4)  flag=1;
			if(seg==5)  flag=1;
		}
		if (num==1) {
			//BON;CON;
			if(seg==1) flag=1;
			if(seg==2)  flag=1;
			
		}
		if (num==2) {
			//AON;BON;GON;EON;DON;
			if(seg==0) flag=1;
			if(seg==1) flag=1;
			if(seg==3)  flag=1;
			if(seg==4)  flag=1;
			if(seg==6)  flag=1;
		}
		if (num==3) {
			//AON;BON;CON;DON;GON;
			if(seg==0) flag=1;
			if(seg==1) flag=1;
			if(seg==2)  flag=1;
			if(seg==3)  flag=1;
			if(seg==6)  flag=1;
		}
		if (num==4) {
			//FON;GON;BON;CON;
			if(seg==1)  flag=1;
			if(seg==2)  flag=1;
			if(seg==5)  flag=1;
			if(seg==6)  flag=1;
			
		}
		if (num==5) {
			//AON;FON;GON;CON;DON;
			if(seg==0)  flag=1;
			if(seg==2)  flag=1;
			if(seg==3)  flag=1;
			if(seg==5)  flag=1;
			if(seg==6)  flag=1;
		}
		if (num==6) {
			//AON;EON;FON;GON;CON;DON;
			if(seg==0)  flag=1;
			if(seg==2)  flag=1;
			if(seg==3)  flag=1;
			if(seg==4)  flag=1;
			if(seg==5)  flag=1;
			if(seg==6)  flag=1;
		}
		if (num==7) {
			//AON;BON;CON;
			if(seg==0)  flag=1;
			if(seg==1)  flag=1;
			if(seg==2)  flag=1;
		}
		if (num==8) {
			//AON;BON;CON;GON;DON;EON;FON;
			if(seg==0) flag=1;
			if(seg==1) flag=1;
			if(seg==2)  flag=1;
			if(seg==3)  flag=1;
			if(seg==4)  flag=1;
			if(seg==5)  flag=1;
			if(seg==6)  flag=1;
		}
		if (num==9) {
			//AON;BON;CON;GON;DON;FON;
			if(seg==0) flag=1;
			if(seg==1) flag=1;
			if(seg==2)  flag=1;
			if(seg==3)  flag=1;			
			if(seg==5)  flag=1;
			if(seg==6)  flag=1;
		}

		if (num==14) {
			//-			
			if(seg==6)  flag=1;
		}
		
		if (num==11) {
			//L
			if(seg==3)  flag=1;			
			if(seg==4)  flag=1;
			if(seg==5)  flag=1;
		}
	
		if (num==12) {
			//K
			if(seg==0)  flag=1;			
			if(seg==3)  flag=1;
			if(seg==4)  flag=1;
			if(seg==5)  flag=1;
		}
	
		if (num==15) {
			//K
			if(seg==0)  flag=1;			
			if(seg==3)  flag=1;
			if(seg==4)  flag=1;
			if(seg==5)  flag=1;
		}
		}
	
		if (flag==1 && j==0 ) ON1;
		if (flag==1 && j==1 ) ON2;
		if (flag==1 && j==2 ) ON3;
			
		
	}
}

	
void shownumber(u16 num,u8 time){
	u16 tmpnum=0;
	
	if (time) {
		tchk[0]=0;
		tchk[1]=0;
		tchk[2]=0;
		if (num <60) {
			tchk[2]=1;
		} else if (num < (9*60+59)) {
			tmpnum = num / 60 * 100;
			tmpnum = tmpnum + num - tmpnum/100*60;
			num = tmpnum;
			tchk[0]=1;
		} else {
			tmpnum = num / 60 * 10;
			tmpnum = tmpnum + num/10 - tmpnum/10*6;
			num = tmpnum;
			tchk[1]=1;
		}
		
		
	}
	
	ind[0]=num/100;
	ind[1]=num/10-ind[0]*10;
	ind[2]=num - ind[0]*100 - ind[1]*10;
	if (ind[0]==0)  {
		ind[0]=10;
		if (ind[1]==0) ind[1]=10;
	}	
	
}	

	
void main(void)
{
	
	CLK->PCKENR1 = CLK_PCKENR1_TIM4+CLK_PCKENR1_TIM2;
	CLK->PCKENR2 = CLK_PCKENR2_AWU;//0b01110111;
	
	CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV8);
	
	TIM4_TimeBaseInit(TIM4_PRESCALER_8, 249);
  TIM4_ClearFlag(TIM4_FLAG_UPDATE);
	TIM4_ITConfig(TIM4_IT_UPDATE, ENABLE);
  TIM4->IER |= (uint8_t)TIM4_IT_UPDATE;
	
	TIM2_TimeBaseInit(TIM2_PRESCALER_32, 50);
  TIM2_ClearFlag(TIM2_FLAG_UPDATE);
	TIM2_ITConfig(TIM2_IT_UPDATE, ENABLE);
  TIM2->IER |= (uint8_t)TIM2_IT_UPDATE;
	
	//для выхода из сна!
	EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOA,EXTI_SENSITIVITY_FALL_ONLY);	
	EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOB,EXTI_SENSITIVITY_RISE_ONLY);	
	
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

  GPIO_Init(GPIOA,GPIO_PIN_2,GPIO_MODE_IN_PU_IT);//кнопки
	GPIO_Init(GPIOB,GPIO_PIN_5,GPIO_MODE_IN_FL_IT);//кнопки
	
	GPIO_Init(GPIOD,GPIO_PIN_4,GPIO_MODE_OUT_PP_LOW_SLOW);//пищалка
	
	GPIO_Init(GPIOD,GPIO_PIN_2|GPIO_PIN_3|GPIO_PIN_5|GPIO_PIN_6,GPIO_MODE_OUT_PP_HIGH_SLOW);//индикатор
	GPIO_Init(GPIOA,GPIO_PIN_1,GPIO_MODE_OUT_PP_HIGH_SLOW);//
	GPIO_Init(GPIOB,GPIO_PIN_4,GPIO_MODE_OUT_PP_HIGH_SLOW);//
	GPIO_Init(GPIOC,GPIO_PIN_3|GPIO_PIN_4|GPIO_PIN_5|GPIO_PIN_6|GPIO_PIN_7,GPIO_MODE_OUT_PP_HIGH_SLOW);
	
	TIM4_Cmd(DISABLE);
	TIM2_Cmd(DISABLE);
	
	
	OFF1;OFF2;OFF3;
	AON;BON;CON;DON;EON;GON;FON;TON;
	
	halt();

	/* Enable TIM4 */
	TIM4_Cmd(ENABLE);
	TIM2_Cmd(ENABLE);
	
	meny1=1;
	
	sleeptime=30;
	/* Infinite loop */
  while (1)
  {
	  /*
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
		
		*/
		
		if (kn[0] == KNLONG)
	  {
			kn[0]=0;
			meny++;
			meny1=0;
			timeon=0;
			secon=0;
    }	
		if(meny>3)
		{
			meny=1;
		}
		
		if(meny!=menyold)
		{
			meny1=1;
			if (meny==2) meny1=oldtimer;
			if (meny==3) meny1=oldgames;
			
			menyold1=meny1+1;
	  }
		
		if (kn[0] == KNONE) 
		{
			meny1++;
			kn[0]=0;
			
		}
		if (meny==3) if(meny1>3) meny1=1;
		if (meny==1) if(meny1>3) meny1=1;
		if (meny==2) if(meny1>6) meny1=1;
		
		init:
		if(meny1!=menyold1)
		{
			  ind[0]=10;
				ind[1]=10;
				ind[2]=10;
				
				tchk[0]=0;
				tchk[1]=0;
				tchk[2]=0;
				
				secon=0;
				timeon=0;
			  
			if(meny==1)
			{ 
					ind[0]=0;///secundomer
					ind[1]=0;
					ind[2]=0;
			}

			if (meny==2) {
				if (meny1==1) timer = 300;
				if (meny1==2) timer = 600;
				if (meny1==3) timer = 900;
				if (meny1==4) timer = 1200;
				if (meny1==5) timer = 1500;
				if (meny1==6) timer = 1800;
				
				oldtimer = meny1;
				
				shownumber(timer,1);
			}
			
			if(meny==3)
			{
			  tchk[2]=1;
				if (meny1==1 ) {
					//лото!!!
					ind[0]=11;//L
					ind[1]=14;//--
					ind[2]=14;//--
					
					{
						u8 i;
						for (i=0;i<99;i++) loto[i]=i+1;
					}	
					lotonum =90;
					timer=3;
				}
				if (meny1==2 ) {
					//кубик!!!
					ind[0]=12;//K
					ind[1]=10;//--
					ind[2]=14;//--
				}
				if (meny1==3 ) {
					//бомба!!!
					ind[0]=6;//Б
					ind[1]=14;//--
					ind[2]=14;//--
				}
				
				//ind[0]=10;
				oldgames = meny1;
		  }
	  }	
				
		if (kn[1] == KNONE) {
			kn[1]=0;
			if (meny==3 && meny1==2) {
				//кубик
				ind[2]=myrand(6);
				sleeptime = 30;
				BEEP_Init(BEEP_FREQUENCY_2KHZ);			
			  BEEP_Cmd(ENABLE);
			  Delay(100);
			  BEEP_Cmd(DISABLE);
			}
			
			if (meny==3 && meny1==3 && timeon==0) {
				//бомба
				BEEP_Init(BEEP_FREQUENCY_4KHZ);			
				BEEP_Cmd(ENABLE);
				Delay(300);
				BEEP_Cmd(DISABLE);
				
				timeon=1;
				timer = 15+myrand(15);
				//shownumber(timer);
				//ind[2]=myrand(5);
			}
			
			if((meny==2) || (meny==3 && meny1==1))	{ //таймер старт стоп
				if (timeon) timeon=0;else timeon=1;
			}	
			
			if (meny==1) {
				if (secon) secon=0;else {
					if (secundomer==0) sleeptime = 180;
					secon=1;
				}	
			}
			
		}
		
		if (kn[1] == KNLONG) {
			kn[1]=0;
		
			if (meny==1) {
				secundomer=0;
				secon=0;
					ind[0]=0;///secundomer
					ind[1]=0;
					ind[2]=0;
			}		
		}
		
		if (meny==2 && timer==0) {//время вышло. пищим!
				BEEP_Init(BEEP_FREQUENCY_4KHZ);			
				BEEP_Cmd(ENABLE);
				Delay(300);
				BEEP_Cmd(DISABLE);
				Delay(300);
				BEEP_Cmd(ENABLE);
				Delay(300);
				BEEP_Cmd(DISABLE);
				//menyold1=meny1+1;
				//goto init;
				timer=10;
				timeon=1;
				
		}
		
		if (meny1==3 && meny==3 && timer==0) {//время вышло. пищим!
				BEEP_Init(BEEP_FREQUENCY_2KHZ);			
				BEEP_Cmd(ENABLE);
				Delay(700);
				BEEP_Cmd(DISABLE);
				Delay(300);
				BEEP_Cmd(ENABLE);
				Delay(100);
				BEEP_Cmd(DISABLE);
				menyold1=meny1+1;
				timeon=0;
				timerpisk=0;
				timer=10;
				goto init;
		}
		
		if (meny1==3 && meny==3 && timerpisk) {//время вышло. пищим!
				BEEP_Init(BEEP_FREQUENCY_1KHZ);			
				BEEP_Cmd(ENABLE);
				Delay(100);
				BEEP_Cmd(DISABLE);
				timerpisk=0;
		}
		
		
		///////loto
		if(timer==0 && meny==3 && meny1==1) {
			u8 j,z;
			timer=3;
			
			j = myrand(lotonum);
			
			sleeptime = 30;
			
			shownumber(loto[j-1],0);
			
			for(z=j-1;z<99;z++) loto[z]=loto[z+1];
			
			//shownumber(myrand(99));
			ind[0]=11;
			lotonum--;
			
			BEEP_Init(BEEP_FREQUENCY_4KHZ);			
			BEEP_Cmd(ENABLE);
			Delay(300);
			BEEP_Cmd(DISABLE);
			
			
			if (lotonum==0) {
				BEEP_Init(BEEP_FREQUENCY_2KHZ);			
				BEEP_Cmd(ENABLE);
				Delay(100);
				BEEP_Cmd(DISABLE);
				Delay(200);
				BEEP_Init(BEEP_FREQUENCY_1KHZ);			
				BEEP_Cmd(ENABLE);
				Delay(100);
				BEEP_Cmd(DISABLE);
				//опять в начало
				timer=3;
				timeon=0;
				meny1=1;
				menyold1=2;
				goto init;
			}
		}///loto		
		
		if (sleeptime==0 && timeon==0 && secon==0)
		{
			//disableInterrupts();//это запрещает прерывать основную программу! но не убирает внешние прерывания на выход из сна!
			
			OFF1;OFF2;OFF3;
			AON;BON;CON;DON;EON;GON;FON;TON;

			
			mhalt();
			Delay(KNTIMETWO);
			sleeptime=30;
			kn[0]=0;
			kn[1]=0;
			
		}
		
		//enableInterrupts();
		
		menyold=meny;
		menyold1=meny1;
		timerold=timer;
		////////////////////////////////////////////////////////conec/
  }

}
 
void knint(u8 knum, u8 zn,u8 pin) {
	//будет отслеживать только изменение состояния кнопки
	if (knstatus[knum] && ((zn&pin) == 0)) {//кнопку нажали
		knstatus[knum] = zn&pin;
		if (kn[knum]>=KNONE) return; //еще не обработали предыдущее нажатие в основном цикле пропустим это нажатие

		if (kn[knum]<(KNONE-1)) kn[knum]++;//колво нажатий плюс один
		
		if (kn[knum]==1) {
			kntime[knum] = KNTIMELONG;//первый раз начнм замер времени
		}
		
		if (kn[knum]==2) {
			if (kntime[knum] > (KNTIMELONG-KNTIMETWO) ) kn[knum] = KNTWO;
			else kn[knum] = KNONE;
		}
	}
	
	if ((kn[knum]==1) && (kntime[knum]==0)) {
		kn[knum]=KNLONG;
	}
	
	if ((kn[knum]==1) && (kntime[knum]<(KNTIMELONG-KNTIMETWO)) && zn&pin) {
		kn[knum]=KNONE;
	}	
	
	knstatus[knum] = zn&pin;
	
	if (sleeptime==0 && kn[knum]>= KNONE) {
		kn[knum]=0;
		sleeptime=30;
	}	
	
	
}	 
 
 INTERRUPT_HANDLER(EXTI_PORTA_IRQHandler, 6)
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
INTERRUPT_HANDLER(EXTI_PORTB_IRQHandler, 6)
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

u16 tchktime=0;

INTERRUPT_HANDLER(TIM4_UPD_OVF_IRQHandler, 23)
 {
  /* In order to detect unexpected events during development,
     it is recommended to set a breakpoint on the following instruction.
  */
	
	//милисекунды
	if (timedelay) timedelay--;
	
	if (tchktime) tchktime--;
	
	{  //-------обработка кнопок
		u8 i,pa,pb;
		
		if(kndtime) kndtime--;
		if (kndtime==0) {
			//опрос кнопок редко для избежания дребезга
			kndtime = KNDTIME;
			
			pa = GPIOA->IDR;//GPIO_ReadInputData(GPIOA);
			pb = ~(GPIOB->IDR);//_ReadInputData(GPIOB);
			knint(0, pa, GPIO_PIN_2);
			knint(1, pb, GPIO_PIN_5);
		}
		for (i=0;i<KNNUM;i++) if(kntime[i]) kntime[i]--;
	}
		
	if (tchktime==0) {
		tchktime = 500;
		
		if (timeon || secon) {
			if (tchkmig) tchkmig=0; else tchkmig=1;
		}	else tchkmig=1;
		
	}
		
	if (timesec==0)
	{
		//секунды
		timesec=999;
			
		if(secon==1)
		{
			if (secundomer<998) {
				secundomer++;
				if (meny==1) shownumber(secundomer,1);
			}
			
			if (secundomer>999L*60) secon=0;
		}	
		
   	
		if (timeon){ 
			if(timer) {
				timer--;
				timerpisk=1;
				if (meny==2) shownumber(timer,1);
			}
		}
		
		if (sleeptime) sleeptime--;
		
		
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
	
	/*
	OFF1;
	OFF2;
	OFF3;
	
	if (numind<3) {
		if (sleeptime) cifra(ind[numind]);else cifra(10);
		
		if (tchk[numind] * tchkmig) TON;
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
	
	*/
	
	OFF1;
	OFF2;
	OFF3;
	ALLOFF

	if (numind<8) {
		cifraS(numind);
		//if (tchk[numind]) TON;
	}	
	
	
	numind++;
	//яркость!
	if (secon==1 && secundomer < 30) {
		if (numind==20) numind=0;
		sleeptime=30;
	}
	else if (secon==1 && secundomer < 180) {
		if (numind==30) numind=0;
		sleeptime=30;
	}
	else if (sleeptime < 10) {
		if (numind==16) numind=0;
	}
	else if (numind==8) numind=0;
	
 }