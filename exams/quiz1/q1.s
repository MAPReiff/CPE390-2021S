.global main
main:
mov r0, #0x1b
mov r1, #0x2c
push {r0,r1}     @SP= 

add r2, r0, #12
sub r3, r1, #13
push {r2,r3}     @SP= 

mov r3, #27
pop {r2,r3}      @SP= 

pop {r0,r1}     @SP= 

bx  lr