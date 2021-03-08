	.globl main
main:                 @2 inputs a=r0 and b=r1
      mov   r0, #3        @dummy input
      mov   r1, #5        @dummy input

      mov   r2, r0        @put a into r2
      sub   r3, r1, r2    @r3=b-a number of times to loop
      mov   r4, r2        @base case

3:
      add   r4, r4, #1    @r4=r4+1
      add   r2, r4, r2    @r2=r2+r4 OR r2=r2+r2+1
      subs  r3, r3, #1    @r3=r3-1 take one from coutn and compare to zero
      bne   3b            @if not equal and branch back
      mov   r0, r2        @move r2 into r0 to return
      bx    lr