/****************************************************************************
* Author:                   Zachary Wentworth
* Date Created:             APR. 20, 2017
* Last Modification Date:   APR. 27, 2017
* Lab Number:               CST352 Lab 3
* Filename:                 userMode.c
*
* Description:              UserMode executable
****************************************************************************/
#pragma feature inp

#include "userMode.h"
#include <syscodes.h>
#include <machine_def.h>
#include <string.h>
#include "ioBlock.h"

void syscall(io_blk_t* io);
int validate_args(io_blk_t* io);
int check_limits(io_blk_t* io);

/****************************************************************************
* Description: Prints strings
* Arguements: @char*: the string to be printed
* Thread Safety: NONE
* Return Values: 0 if success, -1 if fail
****************************************************************************/
int prints(char *string) {
    /* init struct */
    io_blk_t io;
    io.op = PRINTS_CALL;
    io.param1 = (int)string;

    syscall(&io);

    /* param2 holds success value 0 or -1 */
    return io.param2;
}

/****************************************************************************
* Description: Prints int vals
* Arguements: @int: the int to be printed
* Thread Safety: NONE
* Return Values: 0 if success, -1 if fail
****************************************************************************/
int printi(int value) {
    /* init struct */
    io_blk_t io;
    io.op = PRINTS_CALL;
    /* convert int passed to char */
    char buff[20];
    itostr(value, buff);
    io.param1 = (int)buff;

    syscall(&io);
}

/****************************************************************************
* Description: get int from input
* Arguements: NONE
* Thread Safety: NONE
* Return Values: 0 if success, -1 if fail
****************************************************************************/
int geti() {
    /* init struct */
    io_blk_t io;
    io.op = GETI_CALL;
    /* int value used to store returned int after syscall completes */
    int val = 0;
    io.param1 = (int)&val;

    syscall(&io);

    /* return stored val if GETI_CALL is successful */
    if (io.param2 == 0) return val;
    /* fail case */
    return -1;
}

/****************************************************************************
* Description: get string from input
* Arguements: @char* buffer
* Thread Safety: NONE
* Return Values: 0 if success, -1 if fail
****************************************************************************/
int gets(char *buff) {
    /* init struct */
    io_blk_t io;
    io.op = GETL_CALL;
    io.param1 = (int)buff;

    syscall(&io);

    return io.param2;
}

/****************************************************************************
* Description: halts
* Arguements: NONE
* Thread Safety: NONE
* Return Values: param2 return val
****************************************************************************/
int halt() {
    /* init struct */
    io_blk_t io;
    io.op = EXIT_CALL;

    syscall(&io);

    return io.param2;
}

/****************************************************************************
* Description: exec
* Arguements: NONE
* Thread Safety: NONE
* Return Values: param2 return val
****************************************************************************/
int exec(char* filename) {
    io_blk_t io;
    io.op = EXEC_CALL;
    io.param1 = (int)filename;

    syscall(&io);

    return io.param2;
}

/****************************************************************************
* Description: yields
* Arguements: NONE
* Thread Safety: NONE
* Return Values: param2 return val
****************************************************************************/
int yield() {
    io_blk_t io;
    io.op = YIELD_CALL;

    syscall(&io);

    return io.param2;
}

/****************************************************************************
* Description: sleeps
* Arguements: NONE
* Thread Safety: NONE
* Return Values: param2 return val
****************************************************************************/
int sleep(int dur) {
    io_blk_t io;
    io.op = SLEEP_CALL;

    io.param1 = dur;

    syscall(&io);

    return io.param2;
}

/****************************************************************************
* Description: gets time
* Arguements: NONE
* Thread Safety: NONE
* Return Values: param2 return vall
****************************************************************************/
int get_time() {
    io_blk_t io;
    io.op = TIME_CALL;

    syscall(&io);

    return io.param2;
}

/****************************************************************************
* Description: used to call trap routine
* Arguements: @io_blk_t* io stuct
* Thread Safety: NONE
* Return Values: NONE
****************************************************************************/
void syscall(io_blk_t* io) {
    if( validate_args(io) == 0 ) {
        /* if input op */
        if( io->op == GETL_CALL || io->op == GETI_CALL || io->op == EXEC_CALL
                || io->op == PRINTS_CALL ) { 
            asm("TRAP");
            while(io->op >= 0) { 
                yield(); 
            }
            /* reset ptr to user mode */
            int bp;
            bp = asm2("PUSHREG", BP_REG);
            io->param1 = (int)((char*)io->param1) + bp;
        }
        else {
            asm("TRAP");
        }
    }

    else
        io->param2 = -1;
}

/****************************************************************************
* Description: checks for valid opcodes, and address of param1
* Arguements: @io_blk_t* io stuct
* Thread Safety: NONE
* Return Values: 0 on success, -1 on failure
****************************************************************************/
int validate_args(io_blk_t* io) {
    if( io->op == EXIT_CALL ) return 0;
    if( io->op == YIELD_CALL ) return 0;
    if( io->op == SLEEP_CALL && io->param1 > 0 ) return 0;
    if( io->op == TIME_CALL) return 0;
    if( io->op == PRINTS_CALL ) return check_limits(io);
    if( io->op == GETI_CALL)  return check_limits(io);
    if( io->op == GETL_CALL ) return check_limits(io);
    if( io->op == EXEC_CALL ) return check_limits(io);
    
    return -1;
}

/****************************************************************************
* Description: checks if param is within bounds of lp and bp
* Arguements: @io_blk_t* io stuct
* Thread Safety: NONE
* Return Values: 0 if valid, -1 if invalid
****************************************************************************/
int check_limits(io_blk_t* io) {
    /* init base and limit ptrs */
    int lp;
    int bp;
    lp = asm2("PUSHREG", LP_REG);
    bp = asm2("PUSHREG", BP_REG);

    /* check address ranges */
    if( io->param1 > 0 && io->param1 < (lp - bp) ) return 0;
    /* invalid */
    return -1;
}
