@ r1= val2 + 3 + val3 - val1
.section .data
val1: .word -60
val2: .word 11
val3: .word 16

.section .text
.globl _start
_start:
ldr r1, =val3
ldrh r1, [r1]
add r1, #3
ldr r2, =val2
ldrh r2, [r2]
add r1, r1, r2

ldr r2, =val1
ldrsh r2, [r2]
sub r1, r1, r2

mov r7, #1
svc #0
.end
