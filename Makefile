CC = gcc
CFLAGS = -Wall -Wextra -O0 -std=c99 -g 
EXEC = fpm

all: $(EXEC)

fpm: fpm.o

fpm.o:
	$(CC) -o fpm.o -c fpm.c $(CFLAGS)

clean:
	rm -rf *.o
	rm -rf *~

mrproper: clean
	rm -rf $(EXEC)
