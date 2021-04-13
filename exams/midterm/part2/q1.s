      .global main
main:
  mov r0, #5
  mov r1, #2
  mov r2, #1

1:
  mul r2, r2, r0
  sub r0, #1
  cmp r0, r1
  bge 1b
  mov r0, r2
  bx  lr