	.globl main
main:
       mov   r0, #5
@       mov   r3, #1

@ loop:
@   cmp r0, #1
@   mulgt r3, r0, r3
@   subgt r0, r0, #1
@   bgt loop
      mov   r1, r0        @move r0 (a) into r1
      mov   r2, #1        @set r2 as 1 to start

4:
     cmp    r1, #1
     mul    r2, r1, r2    @r2=r1*r2
     sub    r1, r1, #1    @r1=r1-1
     bgt    4b
     mov    r0, r2
     bx     lr