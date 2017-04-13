#include <stdio.h>
#include <string.h>
int main(int argc, char * argv[] )
{
    if(argc >= 2)
    {
        char string[256];
        while(fgets(string, sizeof(string), stdin) != NULL)
        {
            char * pch = strchr(string, *argv[1]);//get the string

            fprintf(stderr, "%d pre %s: %s", getpid(), argv[1], string);//print the current
            if(pch != NULL)
            {
                fprintf(stderr, "%d rest %s: %s", getpid(), argv[1], pch);//print what it is after
                fprintf(stdout, "%s", pch);        
            }
            else
            {
                fprintf(stderr, "%d rest %s: \n", getpid(), argv[1]);//error
            }
        }
    }
    else
    {
        fprintf(stderr, "Not enough arguements\n");
    }
    return 0;
}

