      .global _Z1fPii
_Z1fPii:

      @r0 is array a[] and r1 is int 4
      mov     r3, #0

1:
      ldr     r2, [r0], #4
      add     r3, r3, r2
      sub     r1, r1, #1
      cmp     r1, #0
      bne     1b
      mul     r3, r3, r3
      lsr     r3,  #5
      mov     r0, r3
      bx      lr