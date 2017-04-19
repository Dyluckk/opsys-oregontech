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
OBJS=memoryManager.o \
     test.o

all: test

clean:
	rm -f $(OBJS)
	rm -f test
	rm -f *.o
	rm -f *~
	rm -f *#

.c.o:
	gcc $(COPTS) $? -o $@

test.o: test.c memoryManager.h
	gcc $(COPTS) test.c -o $@

memoryManager.o: memoryManager.c memoryManager.h
	gcc $(COPTS) memoryManager.c -o $@

test: $(OBJS)
	gcc $(OBJS) -o test


