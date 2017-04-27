#include "userMode.h"
#include <machine_def.h>

int main() {
    prints("this lab is fun");
    printi(2);
    
    char buff[256];
    gets(buff);
    prints(buff);

    int val;
    val = geti();
    printi(val);

    halt();

    prints("if you made it here halt is broken");
}
