	.globl _Z6setBitii
_Z6setBitii:
      mov     r2, #1        @ set r2 to 1
      lsl     r2, r1        @ logical shift left, shift r1 to r2
      orr     r0, r0, r2    @ logical or, r0 destination, r0 and r2 hold operands
      bx      lr

	.globl _Z8clearBitii
_Z8clearBitii:
      mov     r2, #1
      lsl     r2, r1
      bic     r0, r0, r2    @ bit clear, r0 destination, r0 and r2 operands
      bx      lr

	.globl _Z4flipii
_Z4flipii:
      mov     r2, #1
      lsl     r2, r1
      eor     r0, r0, r2    @ logical exclusive or, r0 destination, r0 and r2 as operands
      bx      lr

	.globl _Z11replaceBitsiii
_Z11replaceBitsiii:
      and     r0, r0, r1    @ logical and, r0 destination, r0 and r1 as operands
      orr     r0, r0, r2    @ logical or, r0 destination, r0 and r2 as operands
      bx      lr

	.globl _Z10buildColoriii
_Z10buildColoriii:
      lsl     r0, #16       @ logical shift r0 by 16
      lsl     r1, #8        @ logical shift r1 by 8
      orr     r0, r1        @ logical or r0 and r1
      orr     r0, r2        @ logical or r0 and r2
      bx      lr