      .global main
main:
      mov     r0, #0

x:
      add     r0, #1
      cmp     r0, #10
      bne     x