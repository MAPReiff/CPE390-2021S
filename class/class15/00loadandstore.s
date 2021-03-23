      .global _Z3sumPKii
      @ r0= the address of x[0] in memory
      @ r1=n (the length var)
_Z3sumPKii:
      mov     r3, #0

1:    @ count down from r1 value to zero
      ldr     r2, [r0]    @ load address r0
      add     r0, #4      @ add 4 to address (next int)
      add     r3, r2      @ r3=r3+r2

      subs    r1, #1      @ 3 2 1 0 -1
      bgt     1b          @ branch if greater than 

      mov     r0, r3      @set r0 = r3 to return
      bx      lr

      .global _Z4zeroPii
_Z4zeroPii:
      mov     r2, #0

1:
      str     r2, [r0]    @ store r2 into that memory location
      add     r0, #4

      subs    r1, #1
      bge     1b
      bx      lr






     