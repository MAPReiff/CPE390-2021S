      .global main
main:
      mov   r0, #0
      ldr   r1, =#3000000000  @ slower than mov but can use large rnumbers such as 1 billion up to int limit ~4.3billion [pc, #1124]

loop:
      add   r0, r0, #1    @ r0=r0+1
      cmp   r0, r1        @ First run of the loop: N=1   Z=0   V=1   C=0
      bne   loop          @ branch until negative     blt would also work (branch if less than) but has a limit up about 2 billion
      bx    lr
