section .data
	char DB 'A'
	list DB 1, 2, 3, 4, -1 ; You need to make your own null terminator. Here it is -1.
	string DB "ABA", 0 

	; A string is really just a list. The zero is a null terminator at the last entry in the list.

section .text

global _start

_start:
	MOV bl, [string]
	MOV eax, 1
	INT 80h
