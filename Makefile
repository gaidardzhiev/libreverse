CC=gcc
CFLAGS=-Wall -g
BINS=libreverse_test libreverse.so runtime_libtest
all: $(BINS)

libreverse.o: libreverse.c reverse.h
	$(CC) $(CFLAGSS) -c libreverse.c

libreverse.so: libreverse.c reverse.h
	$(CC) $(CFLAGS) -fPIC -shared -o $@ libreverse.c -lc

libreverse_test: libreverse_test.c libreverse.o
	$(CC) $(CFLAGS) -o $@ $^

runtime_libtest: libreverse_test.c
	$(CC) $(CFLAGS) -o $@ $^ -L. -lreverse
clean:
	rm *.o $(BINS)
