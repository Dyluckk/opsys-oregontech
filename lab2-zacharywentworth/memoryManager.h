/****************************************************************************
* Author:                   Zachary Wentworth
* Date Created:             APR. 13, 2017
* Last Modification Date:   APR. 21, 2017
* Lab Number:               CST352 Lab 2
* Filename:                 memoryMananger.h
*
* Description:              Header file for memoryManager 
****************************************************************************/
#pragma once

void my_mem_init();
void *my_malloc(int size);
void my_free(void *ptr);
void my_print_mem();
int my_validate();
