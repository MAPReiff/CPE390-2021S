	.globl main
main:
      mov   r0, #10           @dummy starting value
      mov   r2, r0            @move r0 into r2
      mov   r0, #1            @set r0 to 1
      
      @ sub   r1, r0, #1        @r=r0-1 number of times to loop

1:
      add   r0, r0, #1        @r0=r0+1
      cmp   r0, r2            @compare
      bne   1b                @if not equal go back
      bx    lr