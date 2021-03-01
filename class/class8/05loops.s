        .global main
main:
        mov     r0, #0

1:
        add     r0, r0, #1          @ counting up;  immediate mode
        @ if (r0 < 100)             normie cpp
        cmp     r0, #5              @ compare r0 and 5
        bne     1b                  @ branch if not equal to `1` before *(can also do 1f to got to the next `1` set)
        bx      lr


@ 1:            @theoretical second 1
