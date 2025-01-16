section .data

section .text

global _start

_start:
	MOV eax, 1
	MOV ebx, 2
	ADD eax, ebx ; syntax is ADD [destination], [source]
	MOV eax, 1
	INT 80h
	
