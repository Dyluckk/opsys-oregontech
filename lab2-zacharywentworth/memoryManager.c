/****************************************************************************
* Author:                   Zachary Wentworth
* Date Created:             APR. 13, 2017
* Last Modification Date:   APR. 13, 2017
* Lab Number:               CST352 Lab 2
* Filename:                 memoryMananger.c
*
* Description:              program used to manage memory allocation in the 
*                           form of free and busy blocks
****************************************************************************/

#include <stdio.h>
#include "memoryManager.h"

#define MEM_SIZE 2048
#define MIN_SIZE 48
#define FREE_HASH 0x5ed7
#define FREE_HEADER_SIZE 24
#define BUSY_HASH 0x5ed8
#define BUSY_HEADER_SIZE 8

typedef struct free_header {
    int hash; //indicator to determine block is in fact free
    int size;
    struct free_header* next; //ptr to the next free block
    struct free_header* prev; //ptr to the previous free block
} free_header;

typedef struct busy_header {
    int hash; //inficator to determine block is in fact busy
    int size;
} busy_header;

static int g_memory_area[MEM_SIZE/sizeof(int)]; // memory array
static char *g_memory = (char *)g_memory_area;  // pointer to the memory array
static free_header* free_list_ptr = NULL;       // free list pointer

/****************************************************************************
* next_block, gets next free block header by moving the pointer based
* on the block size
* Arguements: free_header of the block
* Thread Safety: NONE
* Return Values: next freeblock
****************************************************************************/
free_header* next_block(free_header *block) {
    char *ptr = (char *)block;
    ptr += block->size;

    return (free_header*)ptr;
}

/****************************************************************************
* prev_block, gets next free block header by moving the pointer based
* on the block size
* Arguements: free_header of the block
* Thread Safety: NONE
* Return Values: previous block
****************************************************************************/
free_header* prev_block(free_header *block) {
    char *ptr = (char *)block;
    ptr -= block->size;

    return (free_header*)ptr;
}

/****************************************************************************
* end_header, creates the end header for free blocks
* Arguements: free_header of the block
* Thread Safety: NONE
* Return Values: end_header ptr
***************************************************************************/
free_header* end_header(free_header *block) {
    char *ptr = (char*)block;
    ptr += block->size - sizeof(free_header);

    return (free_header*)ptr;
}

/****************************************************************************
* finds free block using the first fit method
* Arguements: free_header of the block
* Thread Safety: NONE
* Return Values: previous block
*****************************************************************************/
free_header* find_free(int size) {
    free_header* current = free_list_ptr;

    /* iterate through free list to find first-fit */  
    do {
        /* check free hash */
        if(current->hash == FREE_HASH)
           if(current->size >= size ) return current;          

        /* move to next free header */
        if (current->next != NULL)  current = current->next;        

        /* no free blocks available */
        return NULL;
        
    } while(current->next != NULL);
}

busy_header* create_busy_block(free_header* block, int size) {
    busy_header* new_busy_block = NULL;

    /* invalidate the hash of the free_blocks end_header */
    free_header* old_end_header = end_header(block);
    old_end_header->hash = 0;

    /* block should be split if remainder
     * after split is >= to 48 */
    if(block->size - size >= MIN_SIZE ) { 
        /* resize the free_block */
        block->size -= size;
        /* get and initialize new end_header for the split free_block */
        free_header* new_end_header = end_header(block);
        new_end_header->size = block->size;
        new_end_header->hash = FREE_HASH;
        new_end_header->next = NULL;
        new_end_header->prev = NULL;    
        /* move ptr to starting address of the new busy block being created */
        new_busy_block = 
            (busy_header*)((char*)(new_end_header + sizeof(free_header)));  
    }
    /* override the free_block */
    else {
        new_busy_block = (busy_header*)block;        
    }   

    /* initialize busy_header members */
    new_busy_block->size = size;
    new_busy_block->hash = BUSY_HASH;
    
    return new_busy_block; 
}

void my_mem_init() {
    /* setup initial free_block based on g_memory */
    free_header *free_block = (free_header*)g_memory;    
    
    /* init top header */
    free_block->hash = FREE_HASH;;     
    free_block->size = MEM_SIZE;
    free_block->next = NULL;
    free_block->prev = NULL;
    
    /* set free_list_ptr */
    free_list_ptr = free_block;
    
    /* init end header */
    free_block = end_header(free_block);
    free_block->hash = FREE_HASH;
    free_block->size = MEM_SIZE;
    free_block->next = NULL;
    free_block->prev = NULL;
}

/****************************************************************************
* malloc function
* Arguements: the requestested memory size from the user
* Thread Safety: NONE
* Return Values: 
****************************************************************************/
void *my_malloc(int size) {
    busy_header* requested_block = NULL;
    
    /*---- Set size in memory ---------------------------------------------*/
    /* add the 8 bytes of the busy header */ 
    int true_size = size + BUSY_HEADER_SIZE;
   
    /* size must be greater than 48 */
    if(true_size < MIN_SIZE) true_size = MIN_SIZE;
 
    /* align size to multiple of 8 */
    if(true_size % 8 != 0) 
        true_size = (true_size + 8) - (true_size % 8);
    /* check if size is greater than size of memory */
    if(true_size > MEM_SIZE) return NULL;

    /*---- Find available free block & create busy block ------------------*/
    free_header* new_block = find_free(true_size);     
    /* requested size is not available */    
    if(new_block == NULL) return NULL;   
    
    /* create the new busy block */
    requested_block = create_busy_block(new_block, true_size);

    /* set address to return to the data portion of the busy block */
    requested_block = 
        (busy_header*)((char*)(requested_block + sizeof(busy_header*)));   

    //returns a pointer to the data block of memory of that busy block
    return requested_block;
}

void my_free(void *ptr) {

}

void my_print_mem() {
    free_header * travel_ptr = (free_header*)g_memory;
    /* print column headers */
    printf("Address    Size    Busy    Next Free  Prev\n");
    int i = 0; 
    /* traverse and print out memory */
    do {
        /* out of bounds */
        if((travel_ptr->size > MEM_SIZE) || (travel_ptr->size <= 0))
            break;
        /* print free block */
        if(travel_ptr->hash == FREE_HASH) {
            printf("%p  0x%x    no      %p      %p\n", 
                   travel_ptr, travel_ptr->size, 
                   travel_ptr->next, travel_ptr->prev);
        }
        /* print busy block */
        else { 
            printf("%p  0x%x    yes\n",
                   travel_ptr, travel_ptr->size);
        } 
        //printf("%d\n",i);
        //i++;

        //if(i == 3) break;
    } while ((travel_ptr = next_block(travel_ptr)) != NULL);
      
      
//      free_header* travel = (free_header*)g_memory;  
//      printf("%p%s", travel, "   ");
//      printf("0x%x", travel->size); 
    
//      if(travel->hash == FREE_HASH) {
//        printf("   no      ");
//    }
//    else {
//        printf("   yes     ");
//    }
//    
//    if(travel->next != NULL) {
//       printf("0x%p\n", travel->next);
//    }
//    else {
//        printf("\n");
//    }
}

//TODO ref block helper
//TODO split helper
// busy block must be 48> bytes

