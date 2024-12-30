section .data
	num DD 5 ; Puts value 5 in memory
		 ; Memory address = num
		 ; DB = byte, DW = 16bit, DD = 32bit

section .text
global _start

_start:
	MOV eax, 1 ; move the value 1 into eax
	MOV ebx, [num] ; move the value at num into ebx
	INT 80h ; ends program with status code in ebx
