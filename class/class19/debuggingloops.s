      .global main
main:
      mov     r0, #0
      mov     r2, #0
1:
      add     r2, r0
      add     r0, #1
      cmp     r0, #192
      bne     1b
      mov     r0, r2
      bx      lr