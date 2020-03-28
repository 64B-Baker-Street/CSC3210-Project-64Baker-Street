.section .data
x: .word 1
.section .text
.globl _start
_start:
	ldr r1, =x	@ load the memory address of x into r1
	ldr r1, [r1]	@ load the value x into r1
	cmp r1, #3
	bcs else
	sub r1, #1	@ subtract 1 from r1 if r1 <=3
	ldr r2, =x	@ load the memory address of x into r2
	str r1, [r2]	@ store r1 in x
	b endif
else:
	sub r1, #2
endif:
	mov r7, #1	@ Prgoram Termination: exit syscall
	svc #0		@ Program Termination: wake kernel
	.end
