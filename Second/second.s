
@ second program: c = a + b
.section .data
a: .word 2
b: .word 5
c: .word 0
.section .text
.globl _start
_start:
  ldr r1, =a          @loads memory address a into r1
  ldr r1, [r1]        @loads the value of a into r1
  ldr r2, =b          @loads memory address b into r2
  ldr r2, [r2]        @loads the value of b into r2
  add r1,r1,r2        @add r1 to r2 and store in r1
  ldr r2, =c          @loads the memory address of c into r2
  str r1, [r2]        @store r1 into memory c

  mov r7, #1          @exit call
  svc #0
.end 
