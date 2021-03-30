      .global _Z9incstringPc
      @ r0 = address of the first letter
_Z9incstringPc:



      ldrb    r1, [r0]    @ will read one byte into r1 = "00000068"     68 is h in hex
      cmp     r1, #0      @ is this byte = 0?
      beq     out
      add     r1, #1      @ up r1 by 1
      strb    r1, [r0], #1    @ store byte back AND up r0 by 1 cause 1 byte


out:
      bx      lr