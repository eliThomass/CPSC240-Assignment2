section .data
	EXIT 			equ 	60
	EXIT_SUCCESS 	equ		0
	num1 			dw 		0x1234
	num2 			dw 		0xFEDC
	dif				dd 		0
section .text
	global _start
_start:
	mov ax, 0
	mov bx, 0
	mov ax, word[num1]
	sub ax, word[num2]
	sbb bx, 0
	mov word[dif], ax
	mov word[dif+2], bx
	
	mov rax, EXIT
	mov rdi, EXIT_SUCCESS
