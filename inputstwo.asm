; ask user name
; say hello

section .data
	MOne db "Give me a one digit number: "
	MOne_L equ $ - MOne
	MTwo db "That number plus two is... "
	MTwo_L equ $ - MTwo

section .bss
	number_V resb 1

section .text
	global _start
_start:
	mov eax, 4
	mov ebx, 1
	mov ecx, MOne
	mov edx, MOne_L
	int 80h ; prints msg one 

	mov eax, 3
	mov ebx, 0
	mov ecx, number_V ; variable to input into
	mov edx, 255 ; size of the variable
	int 80h ; input variable

	mov eax, 4
	mov ebx, 1
	mov ecx, number_V
	inc ecx
	push ecx
	mov ecx, esp
	mov edx, 128
	int 80h ; prints out num

	mov eax, 1
	mov ebx, 0
	int 80h ; exit system call
