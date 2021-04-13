
      .global main_Z5sumav

_Z5sumav:
        push {r4, r5, r6}
        mov r6, #0
1:
        ldr r3, [r0]
        add r0, #4
        ldr r4, [r1]
        add r5, r3, r5
        div r5, #2
        add r6, r5
        subs r2, #1
        bne 1b
        pop {r4, r5, r6}
        bx lr