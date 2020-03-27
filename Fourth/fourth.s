.section .data 
   x: .word 0 
   y: .word 0

.section .text
.globl _start
_start: 
   ldr r1, =x
   ldr r1, [r1]

   cmp r1, #0 @compares r1 to 0
   bne elsepart  
   


   mov r2, #1
   ldr r3, =y
   str r2, [r3]

elsepart:
   mov r7, #1
   svc #0
.end
