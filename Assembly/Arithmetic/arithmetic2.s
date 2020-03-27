@second program: c = a+b
.section .data
val1: .word 6 @32-bit variable at reference val1
val2: .word 11
val3: .word 16

.section .text
.globl _start
_start:
    ldr r1, =val2 @ load reference of val2 in r1
    ldr r1, [r1]  @ fetch the value of val2 from reference in r1

    ldr r2, =val3 @ load reference of val3 in r2
    ldr r2, [r2]  @ fetch the value of val3 from reference in r2

    add r1, r1, #9 @ r1 = r1 + 9
    add r1, r1, r2 @ r1 = r1 + r2

    ldr r2, =val1 @ load reference of val1 in r2
    ldr r2, [r2]  @ fetch the value of val1 from reference in r2

    sub r1, r1, r2 @ r1 = r1 - r2

    mov r7, #1
    svc #0
.end
