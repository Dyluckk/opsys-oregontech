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
    
    int total = 0;
    int i;
    for(i = 0; i < 50; i++) {
        printi(total);
        total = 2 + 2;
    }

    halt();
}
