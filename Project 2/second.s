.section data
a: .word 2	@32 bit variable a in memory
b: .word 5	@32 bit variable b in memory
c: .word 0	@32 bit variable c in memory
.section .text
.globl _start
_start:
	ldr r1, =a	@load the memory address of a into register 1
	ldr r1, [r1]	@load the value of a into register 1
	ldr r2, =b	@load the memory address of b into register 2
	ldr r2, [r2]	@load the the value b into register 2
	add r1, r1, r2	@add value within register 1 to register 2 and store the result in register 1
	ldr r2, =c	@load the memory address of c into register 2
	str r1, [r2]	@store register 1 into memory c
	
	mov r7, #1	@Program Termination: exit syscall
	svc #0		@Program Termination: wake kernel
.end
