@ ControlStructure1.s - converting (x <= 3) ? (x--) : (x=x-2); into assembly

.section .data
x: .word 1

.section .text
.globl _start
_start: 
    ldr r1, =x      @ load the reference of x into r1
    ldr r1, [r1]    @ load the value of x into r1

    cmp r1, #3
    bcs else        @ branch if r1 > 3

    sub r1, #1      @ if r1 <= #3
    ldr r2, =x      @ load the reference of x into r2
    str r1, [r2]    @ store r1 in x
    b endif
else:               @ if r1 > #3
    sub r1, #2

endif:              @ end if regardless
    mov r7, #1
    svc #0
.end
