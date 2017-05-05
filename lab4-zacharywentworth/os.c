// test the syscall interface

#pragma feature inp
#pragma feature pio_term

#include <machine_def.h>

#include "oslib.h"
#include "userlib.h"
#include "pio.h"

int do_systrap(io_blk_t *io_blk)
{
    int bp;
    char *ptr;
    int lp;

    bp = asm2("PUSHREG", BP_REG);
    lp = asm2("PUSHREG", LP_REG);

    ptr = (char *)io_blk;
    ptr += bp;
    io_blk = (io_blk_t*)ptr;
    
    /* check if io_blk is valid */
    if((int)io_blk < bp || (int)io_blk > lp) {
        return;
    }

    io_blk->buff += bp;

    if (io_blk->op == PRINTS_CALL)
    {
        if((int)io_blk->buff < bp || (int)io_blk->buff > lp) return;
        if(((int)io_blk->buff + io_blk->status) > lp) return;
        if(io_blk->status < 0) return;

        setupInterrupt(io_blk);
    } else if (io_blk->op == EXIT_CALL) {
        asm("HALT");
    }

    io_blk->buff -= bp;
    ptr -= bp;
    io_blk = (io_blk_t*)ptr;
}
#pragma systrap systrap
int systrap(io_blk_t *io_blk)
{
    do_systrap(io_blk);

    asm("RTI");
}

#pragma startup startup__
int startup__()
{
    io_blk_t io_blk;

    int bp;
    int high_mem;
    int *stack_size;

    pio_setup();

    // Set the BP leaving enough room for our stack
    bp = asm2("PUSHREG", SP_REG);
    bp += 64;
    asm2("POPREG", BP_REG, bp);

    // Load user.slb into memory
    io_blk.op = EXEC_CALL;
    io_blk.buff = "user.slb";
    io_blk.status = 0;
    asm("INP", &io_blk);
    while (io_blk.op >= 0)
    {
    }

    // Set the LP leaving 1000 bytes of stack space
    stack_size = io_blk.status;
    high_mem = io_blk.status + *stack_size;
    asm2("POPREG", LP_REG, high_mem);

    // Set SP and FP
    // NOTE: FP must be set LAST!
    high_mem = io_blk.status + 4 - bp;
    asm("DUP", high_mem);
    asm2("POPREG", FP_REG);
    asm2("POPREG", SP_REG);

    // Execute user.slb
    asm2("JMPUSER", 8); 
    asm("HALT");
}
