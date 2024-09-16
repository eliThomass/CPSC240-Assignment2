section .data
	EXIT			equ		60
	EXIT_SUCCESS	equ 	0
	num1			dw		0xFEDC	; 65,244
	num2			dw		0x1234	; 4660
	sum				dd		0
section .text
	global _start
_start:
	mov ax, 0				; clearing ax & bx register
	mov bx, 0				
	mov ax, word[num1]		; adding num1 to ax
	add ax, word[num2]		; adding num2 to ax, overflow
	adc bx, 0				; adding carry to bx
	mov word[sum], ax		; adding ax (lower 16 bits) to sum
	mov word[sum+2], bx		; adding bx (upper 16 bits) to sum

	mov rax, EXIT
	mov rdi, EXIT_SUCCESS
	syscall
