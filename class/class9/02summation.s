      @ .global main
      .global _Z3sumi
@ main:
_Z3sumi:                  @ name came from compling 02sumation.cc as asm file and getting the name from there
    mov     r0, #1
    mov     r1, #0
1:
      add   r1, r0        @ r1=r1+r0
      add   r0, r0, #1    
      cmp   r0, #100
      ble   1b            @ go back to last `1` if equal to
      mov   r0, r1        @ put r1 into r0, as cpp will take the value of r0 as the final value
      bx    lr
