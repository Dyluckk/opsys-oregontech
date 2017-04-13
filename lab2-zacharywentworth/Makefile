##**************************************
## Makefile
##
## Build routine for a memory allocator
##
## Author: Zachary Wentworth
## zachary.wentworth@oit.edu
##
## Date: APR. 14, 2017
##

COPTS=-Wall -g -c  -O0 -std=c99

all: memoryAllocator

clean:
	rm -f $(OBJS)
	rm -f memoryAllocator.o
	rm -f memoryAllocator

.c.o:
	gcc $(COPTS) $? -o $@

memoryAllocator: memoryAllocator.o


