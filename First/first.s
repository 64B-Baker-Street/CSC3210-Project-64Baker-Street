@ first program
.section .data
.section .text
.globl _start
_start:
	mov r1, #5 ;move 5 into register 1
	sub r1, r1, #1 ;subtract 1 from register 1 and store value into register 1
	add r1, r1, #4 ;add 4 to register 1 and store value into register 1

	mov r7, #1
	svc #0
.end
