
all: test.o aces_sstack.o
	gcc -o test test.o aces_sstack.o

aces_sstack.o: aces_sstack.c
	gcc -c aces_sstack.c

test.o: test.c
	gcc -c test.c


clean:
	rm -f *.o test
