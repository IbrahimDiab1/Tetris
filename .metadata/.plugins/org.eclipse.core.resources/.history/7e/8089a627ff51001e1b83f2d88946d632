/*************************************************************************************/
/* Author      : Ibrahim Diab                                                        */
/* File Name   : GPT_interface.h                                                     */
/* Description : Interfacing macros for GPT (General Purpose Timers) module in STM32 */
/*************************************************************************************/
#ifndef GPT_INTERFACE_H
#define GPT_INTERFACE_H

#define TICK_TIMER_ID   (Timer2)
#define MILLI_SEC       (1)

typedef enum
{
    Timer2,
    Timer3,
    Timer4
} TimerNUM;    // Enumeration of available timers in MCU

typedef enum 
{
    UPCounter,
    DownCounter,
    CenterAligned
} TimerDir_t;    // Enumeration of timer counting directions

typedef struct
{
    uint16 Prescaler;           // Timer prescaler value
    TimerDir_t Direction;       // Timer counting direction
    uint8 AutoReloadBuffer;     // Auto-reload buffer [ENABLED, DISABLED]
} TimerConfig_t;    // Configuration structure for timer settings


// Initialize the General-Purpose Timer (GPT) with the specified configuration.
void GPT_init(TimerNUM Timerx, TimerConfig_t* TimerxCfg);

// TO initialize Specific Timer to work as Tick counting
void GPT_initTickTimer(uint16 TickMillisecond);

// Returns Ticks counter if timer was initialized as Tick Counting
uint32 GPT_getTicks();

// Delay the execution for the specified number of microseconds using the given timer.
void GPT_delayMicroSec(TimerNUM Timerx, uint32 NoMicroSec);

// Delay the execution for the specified number of milliseconds using the given timer.
void GPT_delayMilliSec(TimerNUM Timerx, uint32 NoMilliSec);

// Set a single-shot timer interval using the specified timer and execute the provided callback function
void GPT_setIntervalSingleMicroSec(TimerNUM Timerx, uint16 NoMicroSec, void (*ptr)(void));

// Set a periodic timer interval using the specified timer and execute the provided callback function
void GPT_setIntervalPeriodicMicroSec(TimerNUM Timerx, uint16 NoMicroSec, void (*ptr)(void));

// Set a single-shot timer interval in milliseconds using the specified timer.
void GPT_setIntervalSingleMilliSec(TimerNUM Timerx, uint16 NoMilliSec, void (*ptr)(void));

// Set a periodic timer interval in milliseconds using the specified timer.
void GPT_setIntervalPeriodicMilliSec(TimerNUM Timerx, uint16 NoMilliSec, void (*ptr)(void));

// Stop the interval timer on the specified timer instance.
void GPT_stopInterval(TimerNUM Timerx);

// Returns 1 if the timer is free, 0 if it is in use.
uint8 GPT_isTimerFree(TimerNUM Timerx);

// Get the elapsed time in microseconds since the timer started counting.
uint16 GPT_getElapsedTime(TimerNUM Timerx);

// Returns the remaining time in microseconds.
uint16 GPT_getRemainingTime(TimerNUM Timerx);



#endif // GPT_INTERFACE_H

