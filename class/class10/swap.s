main:
    mov     r0, #23
    mov     r1, #34

    mov     r2, r0
    mov     r0, r1
    mov     r1, r2      @ swaps the register values using a 3rd register

    add     r0, r0, r1  @r0=r0+r1
    sub     r1, r0, r1  @r1=old r0
    sub     r0, r0, r1  @r0=old r1
    @ this swapped them in the same numbe rof clock cycles without a 3rd register!!

    eor     r0, r0, r1  @r0=r0 XOR r1
    eor     r1, r0, r1  @r1=r0
    eor     r0, r0, r1  @r0=old r1