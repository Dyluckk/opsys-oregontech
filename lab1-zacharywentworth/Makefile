##**************************************
## Makefile
##
## Build routine for prefilter, postfilter, and process
##
## Author: Zachary Wentworth
## zachary.wentworth@oit.edu
##
## Date: APR. 6, 2017
##

COPTS=-Wall -g -c  -O0 -std=c99

all: prefilter\
	postfilter\
	process

clean:
	rm -f $(OBJS)
	rm -f prefilter.o
	rm -f postfilter.o
	rm -f process.o
	rm -f prefilter
	rm -f postfilter
	rm -f process

.c.o:
	gcc $(COPTS) $? -o $@

prefilter: prefilter.o
	gcc prefilter.o -o prefilter

postfiler: postfilter.o
	gcc postfilter.o -o postfilter

process: process.o
	gcc process.o -o process
