	.global	_Z3addii
_Z3addii:
	@ add your assembly code here.  Don't forget to return from your subroutine
  mov   r0, #2        @ set r0 to 2
  mov   r1, #3        @ set r1 to 3
  add   r0, r0, r1    @ r0 = r0+r1
  bx    lr            @ return