@second program: c = a+b
.section .data
a: .word 2 @32-bit variable at reference a
b: .word 5
c: .word 0

.section .text
.globl _start
_start:
    ldr r1, =a       @ load reference a into r1
    ldr r1, [r1]     @ load the value of a into r1

    ldr r2, =b       @ load reference b into r2
    ldr r2, [r2]     @ load the value of b into r2

    add r1, r1, r2   @ add r1 to r2 -> r1

    ldr r2, =c       @ load reference c into r2
    str r1, [r2]     @store r1 into memory reference c

    mov r7, #1
    svc #0
.end
