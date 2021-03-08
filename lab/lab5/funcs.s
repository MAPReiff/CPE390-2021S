	.globl _Z5counti
_Z5counti:
      mov   r2, r0            @move r0 into r2
      mov   r0, #1            @set r0 to 1
1:
      add   r0, r0, #1        @r0=r0+1
      cmp   r0, r2            @compare
      bne   1b                @if not equal go back
      bx    lr
	
  
  .globl _Z9countDowni
_Z9countDowni:
      mov   r0, r2          @put r0 into r2

2:
      subs  r0, r0, #1      @r0=r0-1 and compare
      bne   2b              @if not zero go back
      bx    lr


	.globl _Z3sumii
_Z3sumii:                 @2 inputs a=r0 and b=r1
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


	.globl _Z4facti
_Z4facti:
      mov   r1, r0        @move r0 (a) into r1
      mov   r2, #1        @set r2 as 1 to start

4:
     cmp    r1, #1        @compare r1 and 1
     mul    r2, r1, r2    @r2=r1*r2
     sub    r1, r1, #1    @r1=r1-1
     bgt    4b            @branch back if greater than (from the cmp above)
     mov    r0, r2        @move value into r0 to return
     bx     lr
