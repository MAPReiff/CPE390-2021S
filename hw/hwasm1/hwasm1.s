      .global main
main:
      mov     r0, #5      @ assign 5 to reg0

1:
      add     r0, r0, #3  @ r0=r0+3
      cmp     r0, #35     @ compare r0 and 35
      bne     1b          @ branch back if not equal to 35
      bx      lr          @ return
