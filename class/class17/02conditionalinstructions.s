main:
      mov     r0, #4
      mov     r1, #5
      add     r2, r1, r0      @ r2=9
      subs    r2, #8          @ r2 = 1      N=0, Z=0
      addgt   r3, r1, r1      @ Conditions are met, so add will happen r3=5+5
      @ r3 = 10

      sublt   r2, #2
      @ r2 = ?