/****************************************************************************
* Author:				           Zachary Wentworth
* Date Created:            APR. 6, 2017
* Last Modification Date:	 APR. 13, 2017
* Lab Number:	             CST352 Lab 1
* Filename:				         postfilter.c
*
* Description:             program used to postfilter strings based on a char
*                          delimeter
****************************************************************************/

#include <stdio.h>
#include <string.h>
#include <unistd.h>

#define MAX_BUFFER 256

/****************************************************************************
* Main postfilter
* Arguements: num args, argv contain [./prefilter, filter char]
* Thread Safety: NONE
* Return Values: 0 (success), -1 (fail)
****************************************************************************/
int main(int argc, char *argv[])
{
    if(argc >= 2) {
        char filterOn = *argv[1];
        char userInput[MAX_BUFFER];

        while(fgets(userInput, sizeof(userInput), stdin) != NULL) {
            char *ret = strrchr(userInput, filterOn);//use this one to get the other end of string
            fprintf(stderr, "%d post %d: %s", getpid(), filterOn, userInput);
            //check if ret is NULL to NOT include blank lines
            if(ret != NULL) {
                //retain up to filter character
                *(ret + 1) = 0;
                fprintf(stderr, "%d rest %d: %s\n", getpid(), filterOn, userInput);
                fprintf(stdout, "%s\n", userInput);
            }
            else {
                fprintf(stderr, "%d rest %d: \n", getpid(), filterOn);
            }
        }
    }
    else {
        fprintf(stderr, "You must provide an argument to filter on\n");
        return -1;
    }
    return 0;
}
