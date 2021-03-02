      .global _Z3sumi
_Z3sumi:                  @ name came from compling 02sumation.cc as asm file and getting the name from there
    mov     r2, r0        @ r0 is is the input, so it will not be a fixed ammount but given from cpp
    mov     r1, #1
    mov     r0, #0
1:
      add   r0, r1        @ r0=r0+r1
      add   r1, r1, #1    
      cmp   r1, r2
      ble   1b            @ go back to last `1` if equal to
      mov   r0, r1        @ put r1 into r0, as cpp will take the value of r0 as the final value
      bx    lr
