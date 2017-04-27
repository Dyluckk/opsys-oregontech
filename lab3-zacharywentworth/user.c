/****************************************************************************
* Author:                   Zachary Wentworth
* Date Created:             APR. 20, 2017
* Last Modification Date:   APR. 27, 2017
* Lab Number:               CST352 Lab 3
* Filename:                 user.c
*
* Description:              test file
****************************************************************************/
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
