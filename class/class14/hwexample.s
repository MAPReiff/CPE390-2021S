      mov     r0, #246      @r0=______
      mov     r1, #17       @r1=______
      and     r2, r0, r1    @r2=______
      orr     r3, r0, r1    @r3=______
      eor     r4, r3, r1    @r4=______
      mvn     r5, r0        @r5=______

/*
convert decimal to binary
        256 128 64  32  16  8 4 2 1
246         1   1   1   1   0 1 1 0         does not fit in 256, so ignore. 1111 0110

129         1   0   0   0   0 0 0 1         1000 0001   00000081

138         1   0   0   0   1 0 1 0                     0000008a

99              1   1   0   0 0 1 1
 */
      mov     r0, #6
      lsl     r0, #5      @ same as multiplying by 2^5; 6*2^5 = 192
      lsr     r0, #5      @ same as dividing by 2^5; 6/2^5=6

      lsr     r0, #3      @ r0=0      here you lose the bits
      lsl     r0, #3      @ r0=0      cant get the bits back`

      mov     r0, #52     @ 110100
      lsl     r0, #31     @ 000000000000000000000000000000
      lsr     r0, #31     @ r0=0

      ldr     r0, #0xFE2C1033 @ 0011 000    multiple sof 4 have the last 2 bits = 00
      lsr     r0, #2        @ first shift right, wiping out the right 2
      lsl     r0, #2        @ then left shift

      @ ldr     r0, =0xFFFFFFC  @ 1100
      @ and     r0, #0xFFFFFFFC @ 1100
      @ bit clear = r1 AND NOT val
      bic     r0, #3        @ 0011

      ldr     r0, #0xFE2C1036 @ 0110 0000 1000
      bic     r0, #7        @ wipes out last 3 bits 111

      mov     r0, #197      @ 1100 0101   odd so rightmost is a 1
      and     r0, #1        @ keep only the rightmost bit (number mod 2)

      mov     r0, #197      @ 1100 0101
      bic     r0, #1        @ kep everything BUT the rightmost bit
                            @ 1100 0100
      
      ldr     r0, =0xABCDE1234
      @ want to wipe out rightmost 5 bits   11111 = ???
      @ 1
      @ 11
      @ 111
      @ 1111
      @ 11111
      @ 1 1111    0x1F
      @ lsr     r0, #5
      @ lsl     r0, #5
      bic     r0, #5      @ does the same as the 2 lines above in 1 line!

@ De Morgan's Law:  NOT A AND NOT B     =     NOT (A OR B)      =     A NOR B
@                   NOT A OR NOT B      =     NOT (A AND B)     =     A NAND B
@                   NOT(NOT A AND NOT B)      =     A OR B