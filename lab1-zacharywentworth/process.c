#include <stdio.h>
#include <stdlib.h>
#include <unistd.h> /* for fork */
#include <sys/types.h> /* for pid_t */
#include <sys/wait.h> /* for wait */

void checkFork(int rc);
void throwError(int err);

int main (int argc, char *argv[])
{
    int  pidPrefilter = 0;
    int  pidPostfilter = 0;
    char prefilterChar[2] = {0};
    char postfilterChar[2] = {0};
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
        prefilterChar[0] = *argv[1];
        postfilterChar[0] = *argv[2];
    
        command = malloc(sizeof(char *) * argc - 1);
        int i;
        for(i = 0; i < argc - 3; i++)
        {
            command[i] = argv[i+3];
        }//for loop to get the command and letters

    } 

    if(pipe(pipe1) == -1) throwError(1);
    if(pipe(pipe2) == -1) throwError(2);

    int pidCommand = fork();
    checkFork(pidCommand);
    //is child
    if (pidCommand == 0) {
        if(dup2(pipe1[1], STDOUT_FILENO) == -1) throwError(3);
        if(close(pipe1[0]) == -1) throwError(4);       
        printf("its cmd");
        if(execvp(command[0], command) == -1) throwError(5);
    }
    if(close(pipe1[1])== -1) throwError(6);

    //child for prefilter
    pidPrefilter = fork();
    checkFork(pidPrefilter);
    if(pidPrefilter == 0) {
        if(dup2(pipe1[0], 0) == -1) throwError(7);
        if(dup2(pipe2[1], 1) == -1) throwError(8);
        if(close(pipe2[0])== -1) throwError(9);
        //execute prefilter
        printf("its pre");
        if(execl("./prefilter", "prefilter",  prefilterChar, (char *)0) == -1) throwError(10);
    }    
    if(close(pipe2[1]) == -1) throwError(11);    
    
    //child for postfilter
    pidPostfilter = fork();
    checkFork(pidPostfilter);

    if(pidPostfilter == 0) {
        if(dup2(pipe2[0], 0) == -1) throwError(12);
//      if(close(pipe2[1]) == -1) throwError(13);
        //execute postfilter
        printf("its post");
        if(execl("./postfilter", "postfilter", postfilterChar, (char *)0) == -1) throwError(14);
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
void throwError(int err) {
    printf("%d\n", err);
    perror("The following error occured");//error
    exit(1);
}
