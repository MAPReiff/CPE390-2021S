	.globl main
main:
      mov   r0, #10         @dummy starting value
      mov   r2, r0          @put r0 into r2

2:
      subs  r2, r2, #1      @r0=r0-1 and compare
      bne   2b              @if not zero go back
      bx    lr