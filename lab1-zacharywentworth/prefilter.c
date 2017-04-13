#include <stdio.h>
#include <string.h>
#include <unistd.h>

#define MAX_BUFFER 256

/****************************************************************************
* Main prefilter
* Arguements: num args, argv contain [./prefilter, filter char]
* Thread Safety: NONE
* Return Values: 0 (success), -1 (fail)
****************************************************************************/
int main(int argc, char *argv[] )
{
    if(argc >= 2) {
        char filterOn = *argv[1];
        char userInput[MAX_BUFFER];

        while(fgets(userInput, sizeof(userInput), stdin) != NULL) {
            char *ret = strchr(userInput, *argv[1]);
            fprintf(stderr, "%d pre %d: %s", getpid(), filterOn, userInput);
            //check if ret is NULL to NOT include blank lines
            if(ret != NULL) {
                fprintf(stderr, "%d rest %d: %s", getpid(), filterOn, ret);
                fprintf(stdout, "%s\n", ret);
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
