#include <stdio.h>
#include <stdlib.h>
#include <unistd.h> /* for fork */
#include <sys/types.h> /* for pid_t */
#include <sys/wait.h> /* for wait */

void checkFork(int rc);
void throwError();

int main (int argc, char *argv[])
{
    int  pidPrefilter = 0;
    int  pidPostfilter = 0;
    char prefilterChar = NULL;
    char postfilterChar = NULL;
    int  pipe1[2];
    int  pipe2[2];
    char ** command = 0;
    int status;

    if(argc < 4) {
        fprintf(stderr, "process <x> <y> <command>\n");
        return -1;
    } 
    else {
        //char value for filter passed in through cmd line args
        prefilterChar = *argv[1];
        postfilterChar = *argv[2];

        printf("%c", prefilterChar);
        printf("%c", postfilterChar); 
    
        command = malloc(sizeof(char *) * argc - 1);
        int i;
        for(i = 0; i < argc - 3; i++)
        {
            command[i] = argv[i+3];
        }//for loop to get the command and letters

    } 

    if(pipe(pipe1) == -1) throwError();
    if(pipe(pipe2) == -1) throwError();

    int pidCommand = fork();
    checkFork(pidCommand);
    //is child
    if (pidCommand == 0) {
        if(dup2(pipe1[1], 1) == -1) throwError();
        if(close(pipe1[0]) == -1) throwError();       
        if(execvp(command[0], command) == -1) throwError();
    }
    if(close(pipe1[1])== -1) throwError();

    //child for prefilter
    pidPrefilter = fork();
    checkFork(pidPrefilter);
    if(pidPrefilter == 0) {
        if(dup2(pipe1[0], 0) == -1) throwError();
        if(dup2(pipe2[1], 1) == -1) throwError();
        if(close(pipe2[0])== -1) throwError();
        //execute prefilter
        if(execl("./prefilter", "prefilter",  prefilterChar, (char *)0) == -1) throwError();
    }    
    if(close(pipe2[1]) == -1) throwError();
    
    //child for postfilter
    pidPostfilter = fork();
    checkFork(pidPostfilter);

    if(pidPostfilter == 0) {
        if(dup2(pipe2[0], 0) == -1) throwError();
        if(close(pipe2[1]) == -1) throwError();
        //execute postfilter
        if(execl("./postfilter", "postfilter", postfilterChar, (char *)0) == -1) throwError();
    }

    int i = 0;
    for(i = 0; i< 3; i++) {       
        if (wait(&status) == -1) { 
            perror("waitpid");
            exit(EXIT_FAILURE);
        }
    }

    //free allocated memory
    free(command);
    
    return 0;
}

//function used to check fork errors
void checkFork(int rc) {
    if (rc < 0)
    {
        fprintf(stderr, "fork failed");
        exit(1);
    }
}

//function for throw print erros
void throwError() {
    perror("The following error occured");//error
    exit(1);
}
