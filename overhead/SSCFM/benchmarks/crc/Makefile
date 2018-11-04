

default: execute bitcode

execute: is_signature_queue_full.o crc_32.o
	gcc -o crc is_signature_queue_full.o crc_32.o

is_signature_queue_full.o:
	gcc -c is_signature_queue_full.c

crc_32.o: crc_32.c
	gcc -c crc_32.c

bitcode: crc_32.c
	clang -emit-llvm -c crc_32.c -o crc.bc

clean:
	rm -rf crc output* *.bc
