section .data
	EXIT 			equ 	60
	EXIT_SUCCESS 	equ		0
	num1 			dw 		0x1234
	num2 			dw 		0xFEDC
	dif				dd 		0
section .text
	global _start
_start:
	mov ax, 0				; clear ax
	mov bx, 0				; clear bx
	mov ax, word[num1]		; add num1 to ax
	sub ax, word[num2]		; subtract num2 from ax
	sbb bx, 0				; carry to bx
	mov word[dif], ax		; add ax (lower 16) to sum
	mov word[dif+2], bx		; add bx (upper 16) to sum
	
	mov rax, EXIT
	mov rdi, EXIT_SUCCESS
