.global f
f:
  mov   r0, #3
  ldr   r1, =0x91234567
  and   r2, r0, r1


  lsl   r3, r2, #4

  orr   r2, r2, r3

  lsr   r0, #1

  lsl   r0, #3

  cmp   r0, #8

  addgt r1, r0, r0

  bx    lr

  .global main
main:
  bl  f
  bx  lr