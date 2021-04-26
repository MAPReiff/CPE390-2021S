.global main
main:
  mov r1, #2
  add r1, r1, #0
  cmp r1, #1
  @ bge 1
  bge    0x105ac
  bx lr

1:
  bx lr
  //0100 1111
  @ 10568:e2811000