        .global main

main:
        mov     r0, #20         @ sets register 0 to the number 25
        mov     r1, #52         @ sets register 1 to 52
        add     r0, r0, r1      @ sets r0 to r0+r1

        ldr     r0, =0xFFFFFFFF     @ ldr is big, twice as slow as mov
                                    @ pseudo instruction, will load the number from somwhere relative to pc
                    @   11111111 11111111 11111111 11111111       32 1s
                    @   00000000 00000000 00000000 00000000
                    @   ===================================
                    @ 1 00000000 00000000 00000000 00000000
        add     r0, #1
        subs    r0, #1              @ subtract with s flag
        bx lr                   @ return        on intel, you would use ret instead of bx lr