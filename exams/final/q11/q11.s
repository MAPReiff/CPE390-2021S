      .global main
main:

      ldr     r4, =0x12480010
      ldr     r5, =0xFABC1234

      push    {r4, r5}
      