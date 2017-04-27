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
#pragma systrap systrap

#include <syscodes.h>
#include <machine_def.h>

/* args required by syscalls */
typedef struct {
    int op;
    int param1;
    int param2;
} io_blk_t;

void my_trap_routine(io_blk_t* io);
int validate_args(io_blk_t* io);
int check_limits(io_blk_t* io);

/****************************************************************************
* Description: tests the syscall interface
* Arguements: NONE
* Thread Safety: NONE
* Return Values: NONE
****************************************************************************/
int startup__()
{
    io_blk_t io_blk;

    int bp;
    int high_mem;
    int *stack_size;

    // Set the BP leaving enough room for our stack
    bp = asm2("PUSHREG", SP_REG);
    bp += 64;
    asm2("POPREG", BP_REG, bp);

    // Load user.slb into memory
    io_blk.op = EXEC_CALL;
    io_blk.param1 = "user.slb";
    io_blk.param2 = 0;
    asm("INP", &io_blk);
    while (io_blk.op >= 0)
    {
    }

    // Set the LP leaving 1000 bytes of stack space
    stack_size = io_blk.param2;
    high_mem = io_blk.param2 + *stack_size;
    asm2("POPREG", LP_REG, high_mem);

    // Set SP and FP
    // NOTE: FP must be set LAST!
    high_mem = io_blk.param2 + 4 - bp;
    asm("DUP", high_mem);
    asm2("POPREG", FP_REG);
    asm2("POPREG", SP_REG);

    // Execute user.slb
    asm2("JMPUSER", 8);
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
    io = io_temp;

    temp_param1 = io->param1;
    io_temp = (char*)io->param1;
    io_temp += bp;
    io->param1 = io_temp;

    /* validate args after adjusting addresses, reset on fail */
    if( validate_args(io) != 0 ) {
        io->param2 = -1;
        io->param1 = temp_param1;
        io = temp;
        return;
    }

    /* call asm based on op passed in io */
    if ( io->op == PRINTS_CALL ) {
        asm("OUTS", io->param1);
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
    else if ( io->op == EXIT_CALL ) {
        asm("HALT");
        io->param2 = 0;
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
    if( io->op == PRINTS_CALL ) return check_limits(io);
    if( io->op == GETI_CALL)  return check_limits(io);
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
