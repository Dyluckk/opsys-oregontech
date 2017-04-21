/****************************************************************************
* Author:                   Zachary Wentworth
* Date Created:             APR. 13, 2017
* Last Modification Date:   APR. 21, 2017
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
* next_block, gets next block header by moving the pointer based
* on the block size
* Arguements: free_header of the block
* Thread Safety: NONE
* Return Values: free_header* of the next free block
****************************************************************************/
static free_header* next_block(free_header *block) {
    char *ptr = (char *)block;
    ptr += block->size;

    return (free_header*)ptr;
}

/****************************************************************************
* prev_block, gets the previous block header by moving the pointer based
* on the block size
* Arguements: free_header of the block
* Thread Safety: NONE
* Return Values: free_header* of the previous block
****************************************************************************/
static free_header* prev_free_block(free_header *block) {
    char *ptr = (char*)block;

    /* get free head of above block */
    ptr -= sizeof(free_header);
    free_header* prev_ptr = (free_header*)ptr;

    /* check if free block */
    if (prev_ptr->hash != FREE_HASH)
       return NULL;

    /* get size, to get top */
    int above_size = prev_ptr->size;

    /* move back to block */
    ptr += sizeof(free_header);

    /* get top */
    ptr -= above_size;

    return (free_header*)ptr;
}

/****************************************************************************
* end_header, gets the end header for free blocks
* Arguements: free_header of the block
* Thread Safety: NONE
* Return Values: free_header* to the end_header
***************************************************************************/
static free_header* end_header(free_header *block) {
    char *ptr = (char*)block;
    ptr += block->size - sizeof(free_header);

    return (free_header*)ptr;
}

/****************************************************************************
* finds free block using the first fit method
* Arguements: free_header of the block
* Thread Safety: NONE
* Return Values: if block is available free_header* for block is returned,
*                if finding a suitable block fails NULL is returned
*****************************************************************************/
static free_header* find_free(int size) {
    free_header* current = free_list_ptr;
    /* iterate through free list to find first-fit */
    do {
        /* check free hash */
        if (current->hash == FREE_HASH)
           if (current->size >= size ) return current;

        /* move to next free header */
        if (current->next != NULL)  current = current->next;

        /* no free blocks available */
        return NULL;

    } while (current->next != NULL);
}

/****************************************************************************
* reconnects free list after allocating or freeing a block
* Arguements: NONE
* Thread Safety: NONE
* Return Values: NONE
*****************************************************************************/
static void repair_free_list() {
    free_header * current_ptr = (free_header*)g_memory;
    free_header * travel_ptr = NULL;
    int end_of_mem = 0;
    /* find first free block */
    while (current_ptr->hash != FREE_HASH) {
        current_ptr = next_block(current_ptr);
        /* no free blocks found, no need to repair */
        if ((current_ptr->size > MEM_SIZE) || (current_ptr->size <= 0))
            return;
    }

    /* set free_list_ptr to new top */
    free_list_ptr = current_ptr;

    /* set ptrs to NULL */
    current_ptr->next = NULL;
    current_ptr->prev = NULL;
    free_header* end_ptr = end_header(current_ptr);
    end_ptr->next = NULL;
    end_ptr->prev = NULL;

    travel_ptr = next_block(current_ptr);

    /* connect free blocks in linked list */
    do {
        /* check if current out of bounds */
        if ((current_ptr->size > MEM_SIZE) || (current_ptr->size <= 0))
            break;

        /* find next free */
        do {
            /* check bounds */
            if ((travel_ptr->size > MEM_SIZE) || (travel_ptr->size <= 0)) {
                end_of_mem = 1;
                break;
            }
            /* found free block */
            if (travel_ptr->hash == FREE_HASH )
                break;

            /* not found, check next block */
            travel_ptr = next_block(travel_ptr);

        } while (1);

        /* finished repair */
        if (end_of_mem) break;

        /* attach next and prev */
        current_ptr->next = travel_ptr;
        travel_ptr->prev = current_ptr;
        /* copy meta-data to end headers */
        free_header* end_current = end_header(current_ptr);
        free_header* end_travel = end_header(travel_ptr);
        end_current->next = current_ptr->next;
        end_travel->prev = travel_ptr->prev;

        /* move current to travel */
        current_ptr = travel_ptr;
        /* move travel to next */
        travel_ptr = next_block(current_ptr);

    } while (1);
}

/****************************************************************************
* creates_busy_block, creates a busy block using a free block and the
*  requested size
* Arguements: free_header* to the free block being set to a busy block,
*             int requested size
* Thread Safety: NONE
* Return Values: busy_header*, the new busy block
*****************************************************************************/
static busy_header* create_busy_block(free_header* block, int size) {
    busy_header* new_busy_block = NULL;

    /* invalidate the hash of the free_blocks end_header */
    free_header* old_end_header = end_header(block);
    old_end_header->hash = 0;

    /* block should be split if remainder
     * after split is >= to 48 */
    if (block->size - size >= MIN_SIZE ) {
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
            (busy_header*)((char*)(new_end_header) + sizeof(free_header));
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

/****************************************************************************
* my_mem_init, initializes memory for use in malloc
* Arguements: NONE
* Thread Safety: NONE
* Return Values: NONE
*****************************************************************************/
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
* my_malloc, a custom malloc function
* Arguements: int the requestested memory size from the user
* Thread Safety: NONE
* Return Values: void* to the data portion of the busy block or NULL if
                 size not available within the free list
****************************************************************************/
void* my_malloc(int size) {
    busy_header* requested_block = NULL;

    /*---- Set size in memory ---------------------------------------------*/
    /* add the 8 bytes of the busy header */
    int true_size = size + BUSY_HEADER_SIZE;

    /* size must be greater than 48 */
    if (true_size < MIN_SIZE) true_size = MIN_SIZE;

    /* align size to multiple of 8 */
    if (true_size % 8 != 0)
        true_size = (true_size + 8) - (true_size % 8);
    /* check if size is greater than size of memory */
    if (true_size > MEM_SIZE) return NULL;

    /*---- Find available free block & create busy block ------------------*/
    free_header* new_block = find_free(true_size);
    /* requested size is not available */
    if (new_block == NULL) return NULL;

    /* create the new busy block */
    requested_block = create_busy_block(new_block, true_size);

    /* Fix free list (reattach ptrs) */
    repair_free_list();

    /* set address to return to the data portion of the busy block */
    requested_block =
        (busy_header*)((char*)(requested_block) + sizeof(busy_header));

    //returns a pointer to the data block of memory of that busy block
    return requested_block;
}

/****************************************************************************
* my_validate, scans entire memory region and look for meta data corruption
* Arguements: NONE
* Thread Safety: NONE
* Return Values: 0 if no corruption, -1 if corruption
****************************************************************************/
int my_validate() {
  free_header * travel_ptr = (free_header*)g_memory;
    /* go through list */
    do {
        /* out of bounds */
        if ((travel_ptr->size > MEM_SIZE) || (travel_ptr->size <= 0)) break;

        /* if invalid header print error and return */
        if (travel_ptr->hash == FREE_HASH || travel_ptr->hash == BUSY_HASH)
            travel_ptr = next_block(travel_ptr);
        else {
            fprintf(stderr, "meta data corruption\n");
            return -1;
        }

    } while (travel_ptr != NULL);

    return 0;
}

/****************************************************************************
* coalesce, merges adjacent free blocks
* Arguements: free_header* to the block attempting to coalesce
* Thread Safety: NONE
* Return Values: NONE
****************************************************************************/
static void coalesce(free_header* ptr) {
    /* ptrs used to look at the above and below blocks in memory */
    free_header* top_ptr = ptr;
    free_header* end_ptr = end_header(top_ptr);
    /* check if free block above is available */
    free_header* above_block = prev_free_block(top_ptr);

    if (above_block != NULL && above_block->hash == FREE_HASH) {
        /* invalidate hash of old end header and old top of newly freed */
        free_header* old_end = end_header(above_block);
        old_end->hash = 0;
        top_ptr->hash = 0;
        /* set the new size of the above header being coalesced */
        above_block->size += top_ptr->size;
        /* set the new end header of the above header that was coalesced */
        free_header* new_end = end_ptr;
        new_end->hash = FREE_HASH;
        new_end->size = above_block->size;
        /* set new top */
        top_ptr = above_block;
    }

    /* check if free block below is available */
    free_header* below_block = next_block(top_ptr);
    if (below_block->hash == FREE_HASH) {
        /* invalidate top header of below & end of current free block */
        free_header* old_end = end_header(top_ptr);
        below_block->hash = 0;
        old_end->hash = 0;
        /* set the new size of the current free block */
        top_ptr->size += below_block->size;
        /* set the new end header of the below header that was coalesced */
        free_header* new_end = end_header(below_block);
        new_end->size = top_ptr->size;
        new_end->hash = FREE_HASH;
        new_end->next = NULL;
        new_end->prev = NULL;
    }
}

/****************************************************************************
* my_free, frees busy blocks and turns them into free blocks
* Arguements: void* to the data region of a busy block to be freed
* Thread Safety: NONE
* Return Values: NONE
****************************************************************************/
void my_free(void *ptr) {
    /*---- Convert busy block to a free block -----------------------------*/
    /* move ptr to blocks busy header location */
    busy_header* busy_block = (busy_header*)ptr;
    busy_block = (busy_header*)((char*)(busy_block) - sizeof(busy_header));

    //ptr = (busy_header*)ptr;
    /* save size of the busy block to temp */
    int busy_size = busy_block->size;
    /* set the top header of the newly freed block */
    free_header* free_block = (free_header*)busy_block;
    free_block->hash = FREE_HASH;
    free_block->size = busy_size;
    free_block->next = NULL;
    free_block->prev = NULL;
    /* set the end header of the newly freed block */
    free_header* new_end_header = end_header(free_block);
    new_end_header->hash = free_block->hash;
    new_end_header->size = free_block->size;
    new_end_header->next = free_block->next;
    new_end_header->prev = free_block->prev;

    /*---- Attempt to coalesce --------------------------------------------*/
    coalesce((free_header*)free_block);

    /*---- Fix free list (reattach ptrs) ----------------------------------*/
    repair_free_list();
}

/****************************************************************************
* my_print_mem, prints the meta data for all blocks in memory address order
* Arguements: NONE
* Thread Safety: NONE
* Return Values: NONE
****************************************************************************/
void my_print_mem() {
    free_header * travel_ptr = (free_header*)g_memory;
    /* print column headers */
    printf("Address    Size    Busy    NextFree    PrevFree\n");
    /* traverse and print out memory */
    do {
        /* out of bounds */
        if ((travel_ptr->size > MEM_SIZE) || (travel_ptr->size <= 0))
            break;
        /* print free block */
        if (travel_ptr->hash == FREE_HASH) {
            printf("%*p", 8, travel_ptr);
            if (travel_ptr->size < 256) printf("%*s", 5, "0x");
            else printf("%*s", 4, "0x");
            printf("%*x", 2, travel_ptr->size);
            printf("%*s", 8, "no");
            if (travel_ptr->next == NULL) printf("%*s", 12,"0x000000");
            else printf("%*p", 12, travel_ptr->next);

            if (travel_ptr->prev == NULL)printf("%*s\n", 12,"0x000000");
            else printf("%*p\n", 12, travel_ptr->prev);

        }
        /* print busy block */
        else {
            printf("%*p", 8, travel_ptr);
            if (travel_ptr->size < 256) printf("%*s", 5, "0x");
            else printf("%*s", 4, "0x");
            printf("%*x", 2, travel_ptr->size);
            printf("%*s\n", 8, "yes");
        }

        travel_ptr = next_block(travel_ptr);

    } while (travel_ptr != NULL);
}
