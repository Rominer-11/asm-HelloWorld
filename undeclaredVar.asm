section .bss
	num RESB 3 ;Reserves 3 bytes of memory

section .text

global _start

_start:
	MOV bl, 1
	MOV [num], bl ;we are moving data into the previously reserved space. We must first move the data into a register because assembly does not understand size of memory.
	MOV [num + 1], bl
	MOV [num + 2], bl ;moving bl into the third reserved byte
	MOV eax, 1
	INT 80h
