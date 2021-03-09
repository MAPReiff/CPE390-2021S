@ I pledge my honor that I have abided by the Stevens Honor System - Mitchell Reiff
        .global _Z3sumii
_Z3sumii:
        mov     r2, r0          @ set r2 to r0 to free up r0 (is this necessary in such a basic use case?)
        sub     r3, r1, r2      @ set r2 to r1-r2 for number of times to run
        mov     r4, r2          @ base case

1:
        add     r4, r4, #1      @ r4=r4+1
        add     r2, r2, r4      @ r2=r2+r4 OR r2=r2+r2+1
        subs    r3, r3, #1      @ r3=r3-1 and compare
        bne     1b              @ branch back if not equal
        mov     r0, r2          @ r0=r2 for returning to cpp
        bx      lr
