/****************************************************************************
* Author:                   Zachary Wentworth
* Date Created:             APR. 13, 2017
* Last Modification Date:   APR. 21, 2017
* Lab Number:               CST352 Lab 2
* Filename:                 test.c
*
* Description:              test file for memoryManager
****************************************************************************/
#include <stdio.h>
#include "memoryManager.h"

int main(int argc, char* argv[])
{
    void* ptr1 = NULL;
    void* ptr2 = NULL;
    void* ptr3 = NULL;

    my_mem_init();

    ptr1 = my_malloc(50);
    ptr2 = my_malloc(90);
    ptr3 = my_malloc(200);
    my_print_mem();
    my_validate();
    my_free(ptr1);
    printf("free ptr1 ------------------------------------- \n");
    my_print_mem();
    my_validate();
    printf("free ptr2 ------------------------------------- \n");
    my_free(ptr2);
    my_print_mem();
    my_validate();
    printf("free ptr3 ------------------------------------- \n");
    my_free(ptr3);
    my_print_mem();
    my_validate();

    ptr2 = my_malloc(3000);

    //TODO not returns null but steps out of bounds somehow
    for (int i = 0; i < 42; i++) {
        ptr3 = my_malloc(48);
        printf("%d\n", i);
        if (ptr3 == NULL)
        printf(" allocating 48 ------------------------------------- \n");
        my_print_mem();
        my_validate();
    }

    return 0;
}
