.section .data 
Val1: .word 6
Val2: .word 11
Val3: .word 16

.section .text
.globl _start
_start:
  ldr r1, =Val2
  ldr r1, [r1]
  ldr r2, =Val3
ldr r2, [r2]

  add r1, r1, #9
  add r1, r1, r2 @adds 9 and val3 to r1

  ldr r2, =Val1
  ldr r2, [r2]  @changed r2 because previous  no longer needed

  sub r1, r1, r2

  mov r7, #1
  svc #0
.end
