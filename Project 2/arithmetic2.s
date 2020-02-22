.section .data
val1: .word 6
val2: .word 11
val3: .word 16
.section .text
.globl _start
_start:
	ldr r1, =val2		@ load the memory address of val2 into register 1
	ldr r1, [r1]		@ load the value of val2 into register 1
	ldr r2, =val3		@ load the memory address of val3 into register 2
	ldr r2, [r2]		@ load the value of val3 into register 2
	
	add r1, r1, #9		@ add the value of register 1 to 9, and store the result in register 1
	add r1, r1, r2		@ add the value of register 1 to register 2, and store the result in register 1
	
	ldr r2, =val1		@ load the memory address of val1 into register 2
	ldr r2, [r2]		@ load the value of val1 into register 2
	
	sub r1, r1, r2		@ subtract the value of register 2 from register 1, and store the result in register 1
	
	mov r7, #1
	svc #0
.end
