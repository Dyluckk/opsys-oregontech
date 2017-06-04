/****************************************************************************
* Author:                   Zachary Wentworth
* Date Created:             APR. 20, 2017
* Last Modification Date:   APR. 27, 2017
* Lab Number:               CST352 Lab 3
* Filename:                 userMode.h
*
* Description:              user accesible syscalls
****************************************************************************/
int prints(char *string);
int printi(int value);
int geti();
int gets(char *buff);
int halt();
int yield();
int exec(char* filename);
int sleep(int dur);
int get_time();
