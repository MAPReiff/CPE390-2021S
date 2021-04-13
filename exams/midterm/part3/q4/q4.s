      push    {r4, r5, r6, r7, r8}
      mov   r3, #0
      lsl   r1, #1 @ number of pairs
      ldr   r4, [r0]
      ldr   r5, [r0, #4]

1:
  @ need to do loop part
      add   r6, r4, r5
      sub   r7, r4, r5
      mul   r8, r6, r7
      add   r3, r3, r8
