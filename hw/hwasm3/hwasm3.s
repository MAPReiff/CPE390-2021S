            .global main
main:
            mov     r3, #0x0a       @ prob 1
            mul     r2, r3, r3      @ prob 2
          
          
            @ mul     r2, #2          @ prob 3
            mov     r2, #0xC8       @ prob 3 MODIFIED BY ME CAUSE THE GIVEN ONE IS MISSING AN ARG
            ldr     r1, =0xff000000
            ands    r2, r2, r1      @ prob 4
            sub     r2, #2          @ prob 5
            cmp     r1, #3          @ prob 6
            orr     r1, #0x1d       @ prob 7
            eors    r1, #0x1d       @ prob 8
            mvn     r2, #4          @ prob 8
            bics    r1, r2          @ prob 9

            bx      lr