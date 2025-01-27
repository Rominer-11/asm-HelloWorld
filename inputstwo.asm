; ask user name
; say hello

section .data
	MOne: db "Give me a number: "
	MOne_L: equ $ - MOne
	MTwo: db "That number plus two is... "
	MTwo_L: equ $ - MTwo

section .bss
	number_V resb 255

section .text
	global _start
_start:
	mov eax, 4
	mov ebx, 1
	mov ecx, MOne
	mov edx, MOne_L
	int 80h 

	mov eax, 3
	mov ebx, 0
	mov ecx, number_V ; variable to input into
	mov edx, 255 ; size of the variable
	int 80h ;

	mov eax, 4
	mov ebx, 1
	mov ecx, MTwo
	mov edx, MTwo_L
	int 80h

	mov eax, number_V
	mov ebx, 2
	add eax, ebx
	mov [number_V], eax

	mov eax, 4
	mov ebx, 1
	mov ecx, number_V
	mov edx, 255
	int 80h ; print sum

	mov eax, 1
	mov ebx, 0
	int 80h ; exit system call
