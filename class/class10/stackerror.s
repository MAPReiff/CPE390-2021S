@ THIS WILL ERROR OUT!

.global main
main:
      mov   r0, #100

1:
      push  {r4}

      subs  r0, #1
      bne   1b

      pop   {r4}
      bx    lr