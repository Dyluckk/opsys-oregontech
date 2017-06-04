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
    exec("user.slb");
    exec("user2.slb");

    halt();
    return 0;
}
