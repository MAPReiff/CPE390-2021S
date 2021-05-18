      .global main
main:
      ldr     r0, =0x451ABCD3
      lsr     r0, #4

      ldr     r0, =0x3456ABCD
      ror     r0, #4