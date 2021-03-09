.global main
main:
    @sp=0x7fbfc050
    push    {r4,r5}     @ twice as fast as 2 seperate pushes, as the pi is 64bit but running in 32bit
    @sp=0x7fbfc048
    mov     r4, #22
    push    {r4,r5,r6,r7}
    @sp=0x7fbfc038      @16bytes in hex = 10

    mov     r4, #32
    mov     r5, #209

    pop     {r4,r5,r6,r7}
    @sp=0x7fbfc048
    pop     {r4,r5}
    @sp=0x7fbfc040
    bx      lr

    @examples of popping multiple registers...
    push    {r4-r8}
    push    {r4, r6-r8}