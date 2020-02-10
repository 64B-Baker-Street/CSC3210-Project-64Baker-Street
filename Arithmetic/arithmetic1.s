@ arithmetic1 program
@ author Joseph
.section .data
.section .text
.globl _start
_start:
	mov r1, #10 ;move 10 to register 1
	mov r2, #11 ;move 11 to register 2
	mov r3, #7 ;move 7 to register 3
	mov r4, #2 ;move 2 to register 4

	mul r3, r4, r3 ;multiply register 3 to register 4 and store result in register 3
	add r1, r2, r1 ;add register 1 to register 2 and store result in register 1
	sub r1, r1, r3 ;subtract register 3 from register 1 and store result in register 1

	mov r7, #1
	svc #0
.end
