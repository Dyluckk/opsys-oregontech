/*************************************************************
 * Author:        Philip Howard
 * Filename:      prod_cons.h
 * Date Created:  5/4/2016
 * Modifications: 
 **************************************************************
 *
 * Lab/Assignment: Lab 5 - Producer Consumer
 * 
 * Overview:
 *    This program is a producer-consumer application. 
 *    The producers read text files and send the text, one line at a time,
 *    to the consumers. The consumers print the test along with a 
 *    thread-id to identify which thread printed each line.
 *
 * Input:
 *    Command line arguments are used to specify the number of consumers and
 *    the filenames of the files to be read by producers. One producer will 
 *    be started for each filename.
 *
 * Output:
 *    The lines of text from the collected input files.
 *    Note: If there are multiple consumers, there is no guarantee as to the 
 *    order of the output lines.
 *
 * NOTE: this is PSEUDO-CODE, and it will have to be turned into real code
 * to complete this lab.
 ************************************************************/

#include <stdio.h>
#include <stdlib.h>

#include "ts_queue.h"
#include "prod_cons.h"

#include <pthread.h>

typedef struct arguments_s {
    queue_t* producer_queue;
    char* filename;
} arguments_t;

void* call_producer(void* args);
void* call_consumer(void* args);

int main(int argc, char **argv)
{
    int n_consumers;
    int n_producers = argc -2;
    int ii;
    int error;
    queue_t queue;

    if (argc < 3)
    {
        fprintf(stderr, "Must specify the number of threads "
                        "and at least one file\n");
        return 1;
    }

    n_consumers = atoi(argv[1]);
    if (n_consumers < 1)
    {
        fprintf(stderr, "Must specify the number of threads "
                        "and at least one file\n");
        return 1;
    }

    queue = Q_Init();
    
    if(queue == NULL) {
        fprintf(stderr, "initialization of queue failed");                         
        return 1;
    }

    pthread_t consumer_thread[n_consumers];
    pthread_t producer_thread[n_producers];
    arguments_t args[n_producers]; 

    /* create consumer threads */
    for (ii=0; ii<n_consumers; ii++)
    {
        /* check if create failed for consumer */
        error = pthread_create(&consumer_thread[ii], NULL, call_consumer, 
                (void*)&queue);
        
        if(error != 0) {
            fprintf(stderr, "Thread creation for the consumers failed\n");
            return 1;
        }
    }

    /* create producer threads */
    for (ii=2; ii<argc; ii++)
    {
        args[ii-2].producer_queue = &queue;
        args[ii-2].filename = argv[ii];
        error = pthread_create(&producer_thread[ii-2], NULL, call_producer,
                (void*)&args[ii-2]);
        if(error != 0) {
            fprintf(stderr, "Thread creation for the producers failed\n");
            return 1;
        }
    }

    /* join producer threads */
    for (ii=2; ii<argc; ii++)
    {
        error = pthread_join(producer_thread[ii-2], NULL);
        if(error != 0) {
            fprintf(stderr, "Thread joining for producers failed\n");
            return 1;
        }
    }
    
    /* check if queue closed */
    error = Q_Close(queue);
    if(error == -1) {
        fprintf(stderr, "Queue failed to close correctly");
        return 1;
    }

    /* join consumer threads */
    for (ii=0; ii<n_consumers; ii++)
    {
        error = pthread_join(consumer_thread[ii], NULL);
        if(error != 0) {
            fprintf(stderr, "Thread joining for consumers failed\n");
            return 1;
        }
    }
    
    Q_Destroy(queue);

    return 0;
}

void* call_producer(void* args) {
    arguments_t* real_args = (arguments_t*)args;
    return producer(*real_args->producer_queue, real_args->filename);
}

void* call_consumer(void* args) {
    queue_t* real_queue = (queue_t*)args;
    return consumer(*real_queue);
}
