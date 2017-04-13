#include <stdio.h>
#include <string.h>
int main(int argc, char * argv[])
{
    if(argc >= 2) {
        char string[256];
        while(fgets(string, sizeof(string), stdin) != NULL) {
            char * pch = strrchr(string, *argv[1]);//use this one to get the other end of string

            fprintf(stderr, "%d post %s: %s", getpid(), argv[1], string);
            if(pch != NULL) {
                pch++;//increment
                *pch = 0;//set it to null
                fprintf(stderr, "%d rest %s: %s\n", getpid(), argv[1], string);
                fprintf(stdout, "%s\n", string);
            }
            else {
                fprintf(stderr, "%d rest %s: \n", getpid(), argv[1]);
            }
        }
    }
    else {
        fprintf(stderr, "Not enough arguements\n");
    }
    return 0;
}

