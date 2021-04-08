      .global main
main:
      mov     r0, #5
      mov     r2, #0
1:
      mov     r2, r0
      subs    r0, #1
      bne     1b
      bx      lr 