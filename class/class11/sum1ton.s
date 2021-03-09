      .global _Z7sum1toni
_Z7sum1toni:
      @r0 = n
      mov     r2, #0
      cmp     r0, #0
      blt     2f          @if less than go to 2 forward
      mov     r1, #1      @start with 1

1:
      add     r2, r1      @sum=sum+i
      add     r1, #1      @count up
      cmp     r1, r0      @to n
      ble     1b          @branch if lessthan or equal to
      mov     r0, r2

2:
      @ would need to pop reg before return if using r4 and up
      bx      lr