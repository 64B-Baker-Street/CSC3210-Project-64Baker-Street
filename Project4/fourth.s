@ Fourth Program
@ This program computes the foolowing if statement construct:
	@ intx;
	@ inty;
	@ if(x == 0)
	@ y = 1;
.section .data
x: .word 0
y: .word 0
.section .text
.globl _start
_start:
	ldr r1, =x	@ load the memory address of x into r1
	ldr r1, [r1]	@ load the value x into r1
	cmp r1, #0
	beq thenpart	@ branch (jump) if true (Z==1) to the thenpart
	b endofif	@ branch (jump) if flase to the end of IF statement body
thenpart:
	mov r2, #1
	ldr r3, =y	@ load the memory address of y into r3
	ldr r2, [r3]	@ load r2 register value into y memory address
endofif:
	mov r7, #1	@ Program Termination: exit syscall
	svc #0		@ Program Termination: wake kernel
	.end
