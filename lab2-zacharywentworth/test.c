#include <stdio.h>
#include "memoryManager.h"

int main(int argc, char* argv[])
{
    void* ptr1 = NULL;
    void* ptr2 = NULL;
    void* ptr3 = NULL;
    //init memory
    my_mem_init();
    /* print mem */
    //my_print_mem();
   
    //printf("%s\n", "after allocation");
    ptr1 = my_malloc(50);
    //printf("%p\n", ptr);
    ptr2 = my_malloc(90);
    //printf("%p\n", ptr);
    my_print_mem(); 
    my_free(ptr1);
    printf("free the 90\n");
    my_print_mem();

}
