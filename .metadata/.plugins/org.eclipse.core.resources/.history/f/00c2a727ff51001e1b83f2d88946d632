/************************************************************************************/
/* Author      : Ibrahim Diab                                                       */
/* File Name   : GPT_private.h                                                      */
/* Description : Private addresses for GPT (General Purpose Timers) module in STM32 */
/************************************************************************************/
#ifndef GPT_PRIVATE_H
#define GPT_PRIVATE_H


#define TIMER_FREE                  1   // Timer status: Free/Unused
#define TIMER_USED                  0   // Timer status: Used

#define TIMER_PRESCALER_AUTO        0   // Prescaler setting: Auto calculate prescaler with 1 micro per tick
#define TIMER_PRESCALER_MANUAL      1   // Prescaler setting: Manual as the cfg prescaler value

#define TIMER_INTERVAL_SINGLE       0   // Timer interval mode: Single
#define TIMER_INTERVAL_PERIODIC     1   // Timer interval mode: Periodic


volatile void (*TimerCallBcak[NO_GPT_SUPPORTED])(void) = {NULL};   // Array of timer callback function pointers

volatile uint8 TimerIntervalMode[NO_GPT_SUPPORTED];                // Array to hold timer mode status [periodic,single] 
volatile uint32 TimerMilliSecHold[NO_GPT_SUPPORTED];               // Array to hold millisecond counts for timers
volatile uint32 NoMilliSecPeriodic[NO_GPT_SUPPORTED];              // Array to re assign counter after each periodic cycle
volatile uint32 Tick;                                              // Variable to save ticks counter for Tick Timer

typedef struct
{
    volatile uint32 CR1;            // Control Register 1
    volatile uint32 CR2;            // Control Register 2
    volatile uint32 SMCR;           // Slave Mode Control Register
    volatile uint32 DIER;           // DMA/Interrupt Enable Register
    volatile uint32 SR;             // Status Register
    volatile uint32 EGR;            // Event Generation Register
    volatile uint32 CCMR1;          // Capture/Compare Mode Register 1
    volatile uint32 CCMR2;          // Capture/Compare Mode Register 2
    volatile uint32 CCER;           // Capture/Compare Enable Register
    volatile uint32 CNT;            // Counter Value Register
    volatile uint32 PSC;            // Prescaler Value Register
    volatile uint32 ARR;            // Auto-Reload Register
    volatile uint32 RESERVED1;      // Reserved space
    volatile uint32 CCR1;           // Capture/Compare Register 1
    volatile uint32 CCR2;           // Capture/Compare Register 2
    volatile uint32 CCR3;           // Capture/Compare Register 3
    volatile uint32 CCR4;           // Capture/Compare Register 4
    volatile uint32 RESERVED2;      // Reserved space
    volatile uint32 DCR;            // DMA Control Register
    volatile uint32 DMAR;           // DMA Address Register
} Timer_t;


volatile Timer_t *Timer[NO_GPT_SUPPORTED]=
{
    (volatile Timer_t*)0x40000000,   // Timer 2
    (volatile Timer_t*)0x40000400,   // Timer 3
    (volatile Timer_t*)0x40000800    // Timer 4
};

// Function to set and calculate prescaler value as 1 microsecond per 1 tick.
void setPrescaler(uint8 Timerx);
void updateTimTicks();



#endif // GPT_PRIVATE_H
