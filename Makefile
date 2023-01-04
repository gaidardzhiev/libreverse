CC=gcc
CFLAGS=-Wall -g

all: libreverse_test

libreverse.o: libreverse.c reverse.h
	$(CC) $(CFLAGSS) -c libreverse.c

libreverse_test: libreverse_test.c libreverse.o
	$(CC) $(CFLAGS) -o $@ $^
