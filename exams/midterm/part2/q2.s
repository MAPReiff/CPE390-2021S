      .global main
main:
  mov r3, #1
1:
    ldr r2, [r0]
    mul r4, r2, r2

    ldr r4, [r0]
    add r0, #4
    add r3, #1      @index + 1  
    cmp r3, r1 
    ble 1b
  