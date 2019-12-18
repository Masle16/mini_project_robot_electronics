/*
 * core_portme.c
 *
 *  Created on: 5 Dec 2019
 *      Author: mathi
 */

/***********/
/* include */
/***********/
#include <stdio.h>
#include <stdlib.h>
#include "core_portme.h"
#include "xparameters.h"
#include "xscutimer.h"

/***********/
/* defines */
/***********/
#define TIMER_DEVICE_ID		XPAR_XSCUTIMER_0_DEVICE_ID
#define TIMER_LOAD_VALUE	0xFFFFFFE
#define START_COUNTER		0
#define STOP_COUNTER		1

#define NSECS_PER_SEC 		667000000/2
#define CORETIMETYPE 		unsigned int
#define TIMER_RES_DIVIDER 	40
#define EE_TICKS_PER_SEC 	(NSECS_PER_SEC / TIMER_RES_DIVIDER)

/********************/
/* global variables */
/********************/
unsigned int start_time_val, stop_time_val;

/*************/
/* instances */
/*************/
XScuTimer Timer;

/******************/
/*  functions     */
/******************/

// get timer value
unsigned int get_timer_value(unsigned int timer_intr_id, unsigned int mode) {
	int status;
	XScuTimer_Config *config_ptr;
	volatile unsigned int cnt_value = 0;
	XScuTimer *timer_instance_ptr = &Timer;

	if (mode == 0) {
		// initialize the private timer so that is ready to use
		config_ptr = XScuTimer_LookupConfig(timer_intr_id);
		status = XScuTimer_CfgInitialize(timer_instance_ptr, config_ptr, config_ptr->BaseAddr);
		if (status != XST_SUCCESS) { return XST_FAILURE; }

		// load the timer prescaler register
		XScuTimer_SetPrescaler(timer_instance_ptr, TIMER_RES_DIVIDER);

		// load the timer counter register
		XScuTimer_Start(timer_instance_ptr);
		cnt_value = XScuTimer_GetCounterValue(timer_instance_ptr);
	}
	else {
		// read stop value and stop the timer counter
		cnt_value = XScuTimer_GetCounterValue(timer_instance_ptr);
		XScuTimer_Stop(timer_instance_ptr);
	}
	return cnt_value;
}

// get start time by reading the ARM CPU private timer counter
void start_timer(void) { stop_time_val = get_timer_value(TIMER_DEVICE_ID, START_COUNTER); }

// get stop time by reading the ARM CPU private timer counter
void stop_timer(void) { stop_time_val = get_timer_value(TIMER_DEVICE_ID, STOP_COUNTER); }

// get elapsed time
unsigned int get_time(void) {
	unsigned int elapsed = start_time_val - stop_time_val;
	return elapsed;
}

// convert to seconds
double time_in_secs(unsigned int ticks) {
	double retval = (double)ticks / (double)EE_TICKS_PER_SEC;
	return retval;
}

// convert to seconds
