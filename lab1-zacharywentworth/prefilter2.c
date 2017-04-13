#include <stdio.h>
#include <string.h>
#include <sys/types.h> 
#include <unistd.h>

#define MAX_BUFFER 128

int main (int argc, char *argv[])
{
        //the filter char is located in argv[1]
        //check if an argument was passed
        int acceptArg = 0;
        char userInput[128];
        char filterOn = NULL;

        if(argc != 2) {
            acceptArg = 0;   
        } 
        else {
            filterOn = *argv[1];
            acceptArg = 1;
        }     

        //no arguement was passed
        if(acceptArg == 0) {
            fprintf(stderr, "You must provide an argument to filter on\n");
            return 1;
        }
        else { 
            while ( fgets(userInput, sizeof(userInput), stdin) != NULL ) {
                char *ret;        
                ret = strchr(userInput, filterOn);
            
                if(ret != NULL) {
                    fprintf(stderr, "%d pre %d: %s\n", getpid(), filterOn, userInput);
                    fprintf(stdout, "%s", ret);
                } 
                else {
                    fprintf(stderr, "%d rest:\n", getpid());
                } 
            }
        }    

        return 0;
}
