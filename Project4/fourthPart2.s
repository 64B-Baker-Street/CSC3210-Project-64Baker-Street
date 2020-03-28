.section .data
x: .word 0
y: .word 0
.section .text
.globl _start
_start:
	ldr r1, =x	@ load the memory address of x into r1
	ldr r1, [r1]	@ load the value x into r1
	cmp r1, #0
	bne elsebit
	mov r2, #1
	ldr r3, =y	@ load the memory address of y into r3
	str r2, [r3]	@ load r2 register value into y memory address
elsebit:
	mov r7, #1	@ Program Termination: exit syscall
	svc #0		@ Program Termination: wake kernel
	.end
