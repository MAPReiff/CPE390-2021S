main:
      mov     r0, #255      @ immediate mode (0...255)
      mov     r0, #65536    @ immediate mode (0...255) lsl 16
      mov     r0, r1

      ldr     r0, =#1231241212  @ load full 32-bit number
                                @ really, ldr r0, [pc, #1230]

      @ all arithmetic are general 3 operand instructions
      add     r0, r1, r2        @ r0 = r1 + r2
      sub     r0, r1, r2        @ r0=r1-r2

      lsl     r0, r1, r2        @ r0 = r1 << r2
      lsr     r0, r1, r2        @ r0 = r1 >> r2

      mul     r0, r1, r2        @ r0 = r1*r2
      @ mul??   r0, r1, r2, r3    @64-bit result? DONT NEED TO MEMORIZE!

      mov     r1, #8
      mov     r2, #7
      @ adding the s bit
      adds    r0, r1, r2        @ r0 = r1 + r2 BUT ALSO sets N=, Z=, C=, V=
                                @ N is negative, Z is zero result, C is carry, V is
                                @ NOT POSSIBLE FOR N and Z to both be 1 as a negative zero aint a thing!
      @ N=0, Z=0
      @ FFFFFFFF + 1  would wrap arround and overflow?
      @ 7FFFFFFF + 1 
      sub     r0, #15     @r0=0
      @ N=0, Z=0    THIS INSTRUCTION DOES NOT CHANGE THE FLAGS

      subs    r0, #1      @ r0 = FFFFFFF
      @ N=1, Z=0

      ble     place       @ will it go?
                          @ yes it will! branch will go as r0 is negative

      cmp     r0, r1      @ r0-r1
      @ N=1, Z=0
      addgt   r3, r2      @ add if greater then!!!!! like a built in if statment. this will only add if the condition is true! In this case it would if N is false