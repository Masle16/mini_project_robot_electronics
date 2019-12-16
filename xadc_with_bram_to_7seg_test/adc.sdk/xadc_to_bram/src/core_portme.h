/*
 * core_portme.h
 *
 *  Created on: 5 Dec 2019
 *      Author: mathi
 */

#ifndef SRC_CORE_PORTME_H_
#define SRC_CORE_PORTME_H_

#include <time.h>

/* DEFINES */

// define to 1 if the platform support floating point
#ifndef HAS_FLOAT
  #define HAS_FLOAT 1
#endif

// Define to 1 if platform has the time.h header file,
#ifndef HAS_TIME_H
  #define HAS_TIME_H 0
#endif


// Define to 1 if platform has the time.h header file,
#ifndef USE_CLOCK
  #define USE_CLOCK 0
#endif

// Define to 1 if the platform has stdio.h.
#ifndef HAS_STDIO
  #define HAS_STDIO 1
#endif

//Define to 1 if the platform has stdio.h and implements the printf function.
#ifndef HAS_PRINTF
  #define HAS_PRINTF 1
#endif

/* COMPILER SETUP */
#ifndef COMPILER_VERSION
 	 #ifdef __GNUC__
 	 	 #define COMPILER_VERSION "GCC"__VERSION__
 	 #else
 	 	 #define COMPILER_VERSION "Not set"
	#endif
#endif

#ifndef COMPILER_FLAGS
	#define COMPILER_FLAGS "Not set"
#endif

#ifndef MEM_LOCATION
	#define MEM_LOCATION "STACK"
#endif

/*************/
/* functions */
/*************/

unsigned int get_timer_value(unsigned int timer_intr_id, unsigned int mode);
void start_timer(void);
void stop_timer(void);
unsigned int get_time(void);
double time_in_secs(unsigned int ticks);

#endif /* SRC_CORE_PORTME_H_ */
