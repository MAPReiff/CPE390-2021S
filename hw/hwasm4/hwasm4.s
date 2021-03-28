            .global main
main:
        mov r0, #3
        mov r1, #4
        push {r0,r1}        @q1

        add r2, r0, #4
        sub r3, r1, #1
        push {r2,r3}        @q2

        mov r3, #99
        pop {r2,r3}         @q3

        pop {r0,r1}

        bx  lr