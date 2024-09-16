section .data
	EXIT			equ		60
	EXIT_SUCCESS	equ 	0
	num1			dw		0xFEDC	; 65,244
	num2			dw		0x1234	; 4660
	sum				dd		0
section .text
	global _start
_start:
	mov ax, word[num1]
	add ax, word[num2]
	mov word[sum], ax
	
	mov rax, EXIT
	mov rdi, EXIT_SUCCESS
	syscall
