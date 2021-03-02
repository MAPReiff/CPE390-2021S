      .global main
main:
      ldr   r0, =#3000000000

loop:
      subs   r0, r0, #1    @ r0=r0-1
      @ cmp   r0, #0      not needed as subs will compare to zero on it's own
      bne   loop
      bx    lr
      @ even though it is one less instcurction to compare and subtrast at once
      @ it may not be any faster, but it will be more power efficient