/***************************************************************/
/* Author      : Ibrahim Diab                                  */
/* File Name   : STM32F103x.h                                  */
/* Description : Global Definitions for stm32f103X series MCUs */
/***************************************************************/

#ifndef STM32F103X_h
#define STM32F103X_h

#if MCU == STM32F103C6

/****** It must be Set manually according to RCC peripheral values in Rcc_config  *******/

// RCC_SYS_FRQ is the frequency of the internal RC oscillator in Hz
#define SYSTEM_CLOCK_FREQUENCY  8000000

// RCC_AHB_FRQ is the frequency of the AHB bus in Hz.
#define RCC_AHB_CLK_FRQ         8000000

// RCC_APB1_FRQ is the frequency of the APB1 bus in Hz.
#define RCC_APB1_CLK_FRQ        8000000

// RCC_APB2_FRQ is the frequency of the APB2 bus in Hz.
#define RCC_APB2_CLK_FRQ        8000000

#define RCC_ADC_CLK_FRQ         4000000

#define RCC_TIM1_CLK_FRQ        8000000

#define RCC_TIMX_CLK_RFQ        8000000

#define NUM_OF_ADC_SUPPORTED    3
#define NO_GPT_SUPPORTED        3
#define NO_EXTI_SUPPORTED       5

#endif

#endif //STM32F103X_h
