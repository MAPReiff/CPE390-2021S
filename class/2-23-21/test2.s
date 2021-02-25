@Right to left on arm, left to right on intel (but can change based on who's standard you are using even on the same CPU)
    global main

main:
    mov     r0, #5          @puts a 5 in register 0
    mov     r1, #7          @puts a 7 in register 1
    add     r2, r0, r1      @r2 = r0 + r1       c = a + b
    bx      lr              @return