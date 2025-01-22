section .data ; this is basically compiler info
	message: db "Hello world!"
	messageLen: equ $ - message ;equ means replace any occurance with this value
				; the dollar sign and dash get message length

section .bss ; vars

section .text ; actual code
	global _start: ;causes code to start at start

_start:
	mov eax, 4 ; eax is the syscall register
	mov ebx, 1 ; ebx tells the kernel where to output to (1 here is the terminal)
	mov ecx, message
	mov edx, messageLen
	int 80h ; call the kernel

	mov eax, 1 ; calls exit 
	mov ebx, 0 ;
	int 80h
