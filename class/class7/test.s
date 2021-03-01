    .global main

main:
    mov     r0, #0      @mov 0 into register r0
    mov     r10, #23    @mov 23 into register r10

    @ loading and storing to/from memory is MUCH SLOWER than registers
    @ ldr     r2, x
    @ add     r2, #1
    @ str     r2, x

    @ if we rote each instruction to add from/to memory, it would be MUCH bigger and MUCH MUCH slower
    @ add

    bx      lr          @return to the caller


x:
    .word 0x1234ABCF

y:


z:

