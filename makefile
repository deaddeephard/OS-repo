make:
	yasm -f elf64 -o Assignment0.o Assignment0.asm
	gcc -static -o Assignment0 Assignment0.o
run:
	./Assignment0
