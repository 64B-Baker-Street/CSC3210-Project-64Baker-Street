@ arithmetic1 program
.section .data
.section .text
.globl _start
_start:
	mov r1, #10
	mov r2, #11
	mov r3, #7
	mov r4, #2

	mul r3, r4, r3
	add r1, r2, r1
	sub r1, r1, r3

	mov r7, #1
	svc #0
.end
