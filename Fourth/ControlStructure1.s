.section .data
   x: .word 1

.section .text
.globl _start
_start:
  ldr r1, =x
  ldr r1, [r1]

  cmp r1, #3
  bcs elsepart
  
  sub r1, #1
  ldr r2, =x
  str r1, [r2]
  b end
elsepart:
sub r1, #2

end: 
mov r7, #1
svc #0
.end
