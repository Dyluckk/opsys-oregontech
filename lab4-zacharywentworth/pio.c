#pragma feature pio_term
#pragma interrupt interrupt
#include <machine_def.h>
#include <pio_term.h>

#include "oslib.h"
#include "pio.h"

typedef struct {
    int chars_to_print;
    char* print_ptr;
    io_blk_t* blk;
} inter_blk_t;

inter_blk_t interrupt_state;

// Write your PIO Terminal driver here
const char* pio_t_iir = PIO_T_IIR;
const char* pio_t_xdr = PIO_T_XDR;
const char* pio_t_ier = PIO_T_IER;

/****************************************************************************
* Description: configure the PIO Device driver
* Arguements: NONE
* Thread Safety: NONE
* Return Values: NONE
****************************************************************************/
void pio_setup() {
    interrupt_state.chars_to_print = 0;
    interrupt_state.print_ptr = 0;
    interrupt_state.blk = 0;
}

/****************************************************************************
* Description: send interrupt
* Arguements: NONE
* Thread Safety: NONE
* Return Values: NONE
****************************************************************************/
void send() {
    /* check if in transmit mode for interrupts */
    while((*pio_t_iir & PIO_T_IID_XMIT) == 0) {}

    *pio_t_xdr = *interrupt_state.print_ptr;
    /* next character */
    interrupt_state.print_ptr++;
    /* decrement characters left to print */
    interrupt_state.chars_to_print--;
}

/****************************************************************************
* Description: set up interrupt bfore send
* Arguements: @io_blk_t* io_blk
* Thread Safety: NONE
* Return Values: NONE
****************************************************************************/
void setupInterrupt(io_blk_t* io_blk) {
    interrupt_state.print_ptr = io_blk->buff;
    interrupt_state.chars_to_print = io_blk->status;
    interrupt_state.blk = io_blk;

    /* enabling interrupt to occur */
    *pio_t_ier |= (char)PIO_T_IE_XMIT;

    send();
}

/****************************************************************************
* Description: interrupt routine
* Arguements: NONE
* Thread Safety: NONE
* Return Values: NONE
****************************************************************************/
void my_interrupt_routine() {
    /* check if in transmit mode */
    if((*pio_t_ier & PIO_T_IE_XMIT) != 0) {
        if(interrupt_state.chars_to_print == 0) {
            /* disable interrupts */
            *pio_t_ier &= ~(char)PIO_T_IE_XMIT;
            interrupt_state.blk->op |= 0x80000000;
        }
        else {
            send();
        }
    
    }
}

/****************************************************************************
* Description: Call to my_interrupt routine
* Arguements: NONE
* Thread Safety: NONE
* Return Values: NONE
****************************************************************************/
void interrupt() {
    my_interrupt_routine();
    asm("RTI");
}
