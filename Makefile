CC = gcc
LD = ld
#LD = $(CC)
LIB = /usr/lib/x86_64-linux-gnu/
CCOPT = -pg
LDOPT = -L$(LIB) -lc --dynamic-linker /lib64/ld-linux-x86-64.so.2

DIST = a.out
all: a b main
	$(LD) -o $(DIST) a.o b.o main.o \
	$(LIB)crt1.o		\
	$(LIB)crti.o		\
	$(LIB)crtn.o		\
	$(LDOPT)

a: a.c a.h
	$(CC) -o a.o -c a.c $(CCOPT)

b: b.c b.h
	$(CC) -o b.o -c b.c $(CCOPT)

main: main.c
	$(CC) -o main.o -c main.c $(CCOPT)

clean:
	rm *.o $(DIST)
