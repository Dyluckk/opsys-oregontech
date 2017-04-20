#include <stdio.h>
#include "memoryManager.h"

int main(int argc, char* argv[])
{
    void* ptr = NULL;
    //init memory
    my_mem_init();
    /* print mem */
    my_print_mem();
   
    printf("%s\n", "after allocation");
    ptr = my_malloc(50);
    printf("%p\n", ptr);
    ptr = my_malloc(90);
    printf("%p\n", ptr);
    my_print_mem();  
}
