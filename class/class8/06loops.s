        .global main
main:
@ even better way           only 200 things     fewer instruction suse less power (and usually faster but not always). 100% going to be better for power
        mov r0, #100
1:
        subs    r0, #1             @ the s flag on sub will auto compare the two! It sets the flags
        bge     1b                  
        bx      lr



@ better than slow way      300 things
        mov     r0, #100

1:
        sub     r0, #1
        cmp     r0, #0
        bge     1b                  @ branch if greater than or equal to, go back to 1
        bx      lr






@ slow way                  400 things
        mov     r0, #100            @ start at 100

1:
        cmp     r0, #0              @ compare r0 to 0
        beq     2f                  @ branch if equal to label 2
        sub     r0, #1              @ sub 1 from r0
        b       1b                  @ loop back for start of 1


2:
        bx      lr