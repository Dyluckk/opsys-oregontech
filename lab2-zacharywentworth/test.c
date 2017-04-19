#include <stdio.h>
#include "memoryManager.h"

int main(int argc, char* argv[])
{
    //initilize memory
    //TODO check to make sure this is called before calling other functions
    my_mem_init();
    my_print_mem(); 
}
