#pragma once

#include "ioBlock.h"

typedef struct isr_call_frame_s
{
    int SP;
    int FLAG;
    int BP;
    int LP;
    int IP;
    int FP;
} isr_call_frame_t;

typedef struct pcb_s 
{
    isr_call_frame_t isr;
    int status;
    int wakeup;
} pcb_t;

void sched_init();
static pcb_t* find_open_slot();
int sched_exec(char* filename);
void timer_isr();
static void preemptive(isr_call_frame_t* isr);
static pcb_t* next_process();
void sched_exit(isr_call_frame_t* isr);
void sched_yield(isr_call_frame_t* isr);
void sched_sleep(isr_call_frame_t* isr, int dur);
