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

void my_mem_init() {
    free_header *free_block = (free_header*)g_memory;    
    //init top header
    free_block->hash = FREE_HASH;;     
    free_block->size = MEM_SIZE;
    free_block->next = NULL;
    free_block->prev = NULL;
    //init end header
    free_block = end_header(free_block);
    free_block->hash = 0x5ED7;
    free_block->size = FREE_HASH;
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
    

    //return NULL if <48 avail
    
    //returns a pointer to a block of memory of that size.
}

void my_free(void *ptr) {

}

void my_print_mem() {

    //TODO: loop throught blocks

    printf("Address    Size    Busy    Next Free\n");
    free_header* travel = (free_header*)g_memory;  
    printf("%p%s", travel, "   ");
    printf("0x%x", travel->size); 
    
    if(travel->hash == FREE_HASH) {
        printf("   no      ");
    }
    else {
        printf("   yes     ");
    }
    
    if(travel->next != NULL) {
        printf("0x%p\n", travel->next);
    }
    else {
        printf("\n");
    }
}

/****************************************************************************
 * end_header, creates the end header for free blocks
 * Arguements: free_header of the block
 * Thread Safety: NONE
 * Return Values: end_header ptr 
 ****************************************************************************/
free_header *end_header(free_header *block) {
    char *ptr = (char*)block;
    ptr += block->size - sizeof(free_header);
   
    return (free_header*)ptr;
}

/****************************************************************************
 * next_block, gets next free block header by moving the pointer based
 * on the block size
 * Arguements: free_header of the block
 * Thread Safety: NONE
 * Return Values: next freeblock
 *****************************************************************************/
free_header *next_block(free_header *block) {
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
 *****************************************************************************/
free_header *prev_block(free_header *block) {
    char *ptr = (char *)block;
    ptr -= block->size;

    return (free_header*)ptr;
}

//TODO find free block
//TODO ref block helper
//TODO split helper
// busy block must be 48> bytes

