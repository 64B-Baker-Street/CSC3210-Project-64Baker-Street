.section .text
a: .word -2
.section .text
.globl _start
_start:
mov r0, #0x1
mov r1, #0xFFFFFFFF
mov r2, #0xFF
mov r3, #0x101
mov r4,#0x400
ldr r5, =a
ldrsh r5, [r5]

mov r7, #1
svc #0
.end
