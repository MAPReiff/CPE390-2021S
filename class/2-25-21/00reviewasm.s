        .global main

main:
        mov     r0, #20         @ sets register 0 to the number 25
        mov     r1, #52         @ sets register 1 to 52
        add     r0, r0, r1      @ sets r0 to r0+r1
        bx lr                   @ return        on intel, you would use ret instead of bx lr