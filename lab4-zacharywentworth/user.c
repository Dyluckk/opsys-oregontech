#pragma stack_size 1024
#include "userlib.h"

int main()
{
    prints("Printed from trap\n");
    printi(10);
    prints("\n");

    // NOTE: getl is unreliable because it is implemented with INP and
    // output is implemented with pio_term. The two inputs have a race 
    // condition
    //char buff[256];
    //prints("Enter a string: ");
    //getl(buff);
    //prints("Entered: ");
    //prints(buff);
    //prints("\n");

    halt();

    return 0;
}
