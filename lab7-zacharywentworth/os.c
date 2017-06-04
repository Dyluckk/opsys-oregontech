/****************************************************************************
* Author:                   Zachary Wentworth
* Date Created:             APR. 20, 2017
* Last Modification Date:   APR. 27, 2017
* Lab Number:               CST352 Lab 3
* Filename:                 os.c
*
* Description:              OS executable
****************************************************************************/
#pragma feature inp
#pragma startup startup__
//#pragma systrap systrap

#include <syscodes.h>
#include <machine_def.h>
#include <timer.h>
#include <pio_term.h>

#include "mymalloc.h"
#include "sched.h"
#include "userMode.h"
#include "ioBlock.h"

#define INTERVAL_COUNT 200000

#define OS_STACK_SIZE 1000
#define OS_PAD 64

void my_trap_routine(io_blk_t* io);
int validate_args(io_blk_t* io);
int check_limits(io_blk_t* io);
void systrap(io_blk_t *io);


int g_I_Vectors[16];

isr_call_frame_t* os_isr;

/****************************************************************************
* Description: tests the syscall interface
* Arguements: NONE
* Thread Safety: NONE
* Return Values: NONE
****************************************************************************/
int startup__()
{
    int base;
    int limit;
    int size;


    /* init mem manager */
    base = asm2("PUSHREG", SP_REG);
    base += OS_STACK_SIZE;
    limit = asm2("PUSHREG", LP_REG);
    size = limit - base - OS_PAD;
    my_mem_init((void*)base, size);

    sched_init();

    /* configure the vectors */
    g_I_Vectors[1] = (int)systrap;
    g_I_Vectors[TIMER_VECTOR] = (int)timer_isr;
    asm2("POPREG", IVEC_REG, g_I_Vectors);

    /* set up interrupts */
    int* timerCsr = (int*)TIMER_CSR;
    *timerCsr |= TIMER_CSR_IE; 
    
    /* set up instruction per interrupt */
    int* timerLimit = (int*)TIMER_LIMIT;
    *timerLimit = INTERVAL_COUNT;

    sched_exec("user3.slb");
    
    int i;
    for(i = 0; i < INTERVAL_COUNT; i++) {}
    asm("HALT");
}

/****************************************************************************
* Description: executes stackl operations based on called op
* Arguements: @io_blk_t* io stuct
* Thread Safety: NONE
* Return Values: NONE
****************************************************************************/
void my_trap_routine(io_blk_t* io) {
    /* adjust address from "user address" to "OS" address */
    int bp;
    bp = asm2("PUSHREG", BP_REG);
    io_blk_t* temp = io;
    int temp_param1;
    char* io_temp;

    io_temp = (char*)io;
    io_temp += bp;
    io = (io_blk_t*)io_temp;

    temp_param1 = io->param1;
    io_temp = (char*)io->param1;
    io_temp += bp;
    io->param1 = (int)io_temp;

    /* validate args after adjusting addresses, reset on fail */
    if( validate_args(io) != 0 ) {
        io->param2 = -1;
        io->param1 = temp_param1;
        io = temp;
        return;
    }

    /* call asm based on op passed in io */
    if ( io->op == PRINTS_CALL ) {
        asm("INP", io);
        io->param2 = 0;
    }
    else if ( io->op == GETI_CALL) {
        asm("INP", io);
        io->param2 = 0;
    }
    else if ( io->op == GETL_CALL) {
        asm("INP", io);
        io->param2 = 0;
    }
    else if(io->op == EXEC_CALL) {
        sched_exec(io->param1);
        io->op |= 0x80000000;
        io->param2 = 0;
    }
    else if ( io->op == EXIT_CALL ) {
        sched_exit(os_isr);
        io->param2 = 0;
    }
    else if (io->op == YIELD_CALL ){
        sched_yield(os_isr);
        io->param2 = 0;
    }
    else if (io->op == SLEEP_CALL) {
        sched_sleep(os_isr, io->param1);
        io->param2 = 0;
    }
    else if (io->op == TIME_CALL) {
        io->param2 = *((int*)TIMER_TIME);
    }
    else {
        io->param2 = -1;
    }

    io = temp;
}

/****************************************************************************
* Description: used for systrap calls, alias for TRAP
* Arguements: @io_blk_t* io stuct
* Thread Safety: NONE
* Return Values: NONE
****************************************************************************/
void systrap(io_blk_t* io) {
    os_isr = asm2("PUSHREG", SP_REG); 
    os_isr--;

    my_trap_routine(io);
    asm("RTI");
}

/****************************************************************************
* Description: checks for valid opcodes, and address of param1
* Arguements: @io_blk_t* io stuct
* Thread Safety: NONE
* Return Values: 0 if success, -1 if fail
****************************************************************************/
int validate_args(io_blk_t* io) {
    if( io->op == EXIT_CALL ) return 0;
    if( io->op == YIELD_CALL ) return 0;
    if( io->op == SLEEP_CALL && io->param1 > 0) return 0;
    if( io->op == TIME_CALL) return 0;
    if( io->op == PRINTS_CALL ) return check_limits(io);
    if( io->op == GETI_CALL)  return check_limits(io);
    if( io->op == EXEC_CALL) return check_limits(io);
    if( io->op == GETL_CALL ) return check_limits(io);

    return -1;
}

/****************************************************************************
* Description: checks if parm1 is within bounds
* Arguements: @io_blk_t* io stuct
* Thread Safety: NONE
* Return Values: 0 if valid, -1 if invalid
****************************************************************************/
int check_limits(io_blk_t* io) {
    /* init base and limit ptrs */
    int lp;
    lp = asm2("PUSHREG", LP_REG);
    int bp;
    bp = asm2("PUSHREG", BP_REG);

    /* check address ranges */
    if( io->param1 > bp && io->param1 < lp ) return 0;
    /* invalid */
    return -1;
}
