      .global main
main:
      mov     r0, #250      @ immediate mode
      mov     r0, r1        @ register to register
      ldr     r0, [r1]      @ indirect load memory location r1
      ldr     r0, [r1, #4]  @ ??? load memory location r1+4
      ldr     r0, =0XFFFFF  @ [pc, #1240]

      ldr     r0, [r1, r2]  @ go to memory location r1+r2?
      ldr     r0, [r1], #4  @ autoincrememnt    first load memory location r1, then r1=r1+4
      ldr     r0, [sp, #4!] @ first sp=sp+4, then load memory location sp into r0

      add     r0, r1, r2
      add     r0, r1, #33
      add     r0, r1, r2 lsl 16

      ldr     r0, [sp, #4!]
      @ same as
      add     r1, #4
      ldr     r0, [r1]