#include "sched.h"
#include <syscodes.h>
#include <machine_def.h>
#include "mymalloc.h"
#include <string.h>
#include "queue.h"
#include <timer.h>

#define READY 2
#define BUSY  1
#define FREE  0

#define SIZE 10
#define NULL 0

static pcb_t* g_pcb;
static pcb_t os_pcb;
static queue_t processes;

isr_call_frame_t *g_isr;

/****************************************************************************
 * Description: initializes the scheduler
 * Arguements: NONE
 * Thread Safety: NONE
 * Return Values: NONE
 ****************************************************************************/
void sched_init() {
    processes = Q_Init(SIZE);

    os_pcb.status = BUSY;
    os_pcb.wakeup = 0;

    g_pcb = &os_pcb;
}

/****************************************************************************
 * Description: find a free process
 * Arguements: NONE
 * Thread Safety: NONE
 * Return Values: NONE
 ****************************************************************************/
static pcb_t* find_open_slot() {
    pcb_t *find_free;

    find_free = (pcb_t*)my_malloc(sizeof(pcb_t));
    if(find_free == NULL) return NULL;

    return find_free;
}

/****************************************************************************
 * Description: exectutes scheduler
 * Arguements: char* filename
 * Thread Safety: NONE
 * Return Values: int - success value (-1 fail) (0 success)
 ****************************************************************************/
int sched_exec(char *filename) {

    io_blk_t io_blk;

    int initSize;
    pcb_t* pcb;
    pcb = find_open_slot();
    
    /* if no free processes return -1 if failure */
    if(pcb == NULL) return -1;

    pcb->isr.BP = (int)my_get_largest(&initSize);
    if(pcb->isr.BP == NULL) return -1;

    pcb->isr.LP = pcb->isr.BP + initSize;
    asm2("POPREG", BP_REG, pcb->isr.BP);
    asm2("POPREG", LP_REG, pcb->isr.LP);

    // Load user.slb into memory
    io_blk.op = EXEC_CALL;
    io_blk.param1 = (int)filename;
    io_blk.param2 = 0;
    asm("INP", &io_blk);
    while (io_blk.op >= 0)
    {
    }

    if(Q_Enqueue(processes, (void*)pcb) != 0) return -1;
 
    pcb->isr.SP = io_blk.param2 - pcb->isr.BP;
    pcb->isr.FP = io_blk.param2 - pcb->isr.BP;
    pcb->isr.LP = io_blk.param2 + *((int*)io_blk.param2);
    pcb->isr.IP = 8;
    pcb->isr.FLAG = FL_USER_MODE;

    pcb->status = READY;
    pcb->wakeup = 0;

    asm2("POPREG", LP_REG, pcb->isr.LP);
    my_set_limit((int*)pcb->isr.BP, (int*)pcb->isr.LP);
}

/****************************************************************************
 * Description: set up and queue timer interrupt
 * Arguements: NONE
 * Thread Safety: NONE
 * Return Values: NONE
 ****************************************************************************/
void timer_isr() {
    g_isr = asm2("PUSHREG", SP_REG);
    g_isr--;

    g_pcb->status = READY;

    if(g_pcb != &os_pcb) Q_Enqueue(processes, (void*)g_pcb);

    preemptive(g_isr);

    asm("RTI");
}

/****************************************************************************
 * Description: preemptive behaviour
 * Arguements: NONE
 * Thread Safety: NONE
 * Return Values: NONE
 ****************************************************************************/
void preemptive(isr_call_frame_t* isr) {
    g_pcb->isr.BP = isr->BP;
    g_pcb->isr.SP = isr->SP;
    g_pcb->isr.LP = isr->LP;
    g_pcb->isr.IP = isr->IP;
    g_pcb->isr.FLAG = isr->FLAG;
    g_pcb->isr.FP = isr->FP;

    g_pcb = next_process();
    g_pcb->status = BUSY;

    isr->BP = g_pcb->isr.BP;
    isr->SP = g_pcb->isr.SP;
    isr->LP = g_pcb->isr.LP;
    isr->IP = g_pcb->isr.IP;
    isr->FP = g_pcb->isr.FP;
    isr->FLAG = g_pcb->isr.FLAG;
}

/****************************************************************************
 * Description: find an open process
 * Arguements: NONE
 * Thread Safety: NONE
 * Return Values: NONE
 ****************************************************************************/
static pcb_t* next_process() {
    pcb_t* pcb_temp;

    pcb_temp = (pcb_t*)Q_Dequeue(processes);

    if(pcb_temp == 0) return &os_pcb;

    while(pcb_temp->wakeup > * ((int*)TIMER_TIME)) {
        Q_Enqueue(processes, pcb_temp);
        pcb_temp = (pcb_t*)Q_Dequeue(processes);
    }

    return pcb_temp;
}

/****************************************************************************
 * Description: schedule an exit
 * Arguements: NONE
 * Thread Safety: NONE
 * Return Values: NONE
 ****************************************************************************/
void sched_exit(isr_call_frame_t* isr) {
    pcb_t *temp = g_pcb;

    if(temp == &os_pcb) { 
        asm("HALT");
    }
    else { 
        preemptive(isr);
        my_free((void*)temp);
    } 
}

/****************************************************************************
 * Description: schedule a yield
 * Arguements: NONE
 * Thread Safety: NONE
 * Return Values: NONE
 ****************************************************************************/
void sched_yield(isr_call_frame_t* isr) {
    if(g_pcb != &os_pcb) {
        Q_Enqueue(processes, (void*)g_pcb);
    }

    preemptive(isr);
}

/****************************************************************************
 * Description: schedule a sleep
 * Arguements: NONE
 * Thread Safety: NONE
 * Return Values: NONE
 ****************************************************************************/
void sched_sleep(isr_call_frame_t* isr, int dur) {
    int total = dur + *((int*)TIMER_TIME);
    g_pcb->wakeup = total;

    Q_Enqueue(processes, (void*)g_pcb);
    preemptive(isr);
}

