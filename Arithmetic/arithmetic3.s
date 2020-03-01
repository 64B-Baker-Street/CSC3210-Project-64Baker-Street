@ Arithmetic3.s
@ r1 = val3+3+val2-val1

.section .data

val1: .word -60
val2: .word 11
val3: .word 16

.section .text
.globl _start
_start:
    ldr r1, =val2   @load the reference of val2 in r1
    ldrh r1, [r1]   @load the value of r1 in r1

    add r1, #3      @add 3 to r1

    ldr r2, =val3   @laod the reference of val3
    ldrh r2, [r2]   @load the value of r2 in r2

    add r1, r1, r2

    ldr r3, =val1   @load the reference of val1
    ldrsh r3, [r3]  @load r3 as a signed halfword

    sub r1, r1, r3  @ r1 = r1 - r3 

    mov r7, #1
    svc #0
.end
