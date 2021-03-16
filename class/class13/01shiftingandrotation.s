      .global main
main
      ldr     r0, =0xDEADBEEF   @ 1101 1110 1010 1101 1011 1110 1110 1111
      ldr     r1, =0x900FE2C1   @ 1001 0000 0000 1111 1110 0010 1100 0001
      and     r2, r0, r1        @ 1001 0000 0000 1101 1010 0010 1100 0001
                                @ 0x900DA2C1
      
      orr     r3, r0, r1        @ r3=
      xor     r4, r0, r1        @ r4=

      lsl     r0, #1            @ 1011 1101 0101 1011 0111 1101 1101 1110     logical shift left
      @ 92    920     in decimal, left shift multiplies by 10
      @ in hex, lsl multiplies by 2 to the power of #

      @ express in hex
      lsl     r1, #3            @ r1=

      mov     r0, #22
      lsl     r0, #4            @ r0=

      mov     r0, #11           @ 000000001011 = 11
      lsr     r0, #1            @ 000000000101 = 5
                                @ logical shift right (divides instead of multiple)
                                @ since 11 is odd, it will truncate

      ldr     r0, 0xFFFFFFFFE   @ =-2?
      asl     r0, #13           @ -2*8=-16      asl keeps sign bit, lsl does not    arithmatic shift

      ror     r0, #1
      @ rol     r0, #31     DOES NOT EXIST ON ARM v7

      bx      lr