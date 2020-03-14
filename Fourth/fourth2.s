@ Fourth.asm - Computes if (x == 0) y =1;

.section .data
    x: .word 0 @32bit int in memory
    y: .word 0

.section .text
.globl _start
_start:
    ldr r1, =x      @load mem ref x in r1
    ldr r1, [r1]    @load mem val x in r1

    cmp r1, #0      @compare r1 to 0
    bne elsebit
    
    mov r2, #1
    ldr r3, =y
    str r2, [r3]
elsebit:
    mov r7, #1
    svc #0
.end
