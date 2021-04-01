
.global f
f:
  mov r0, #3
  ldr r1, =0x91234567
  and r2, r0, r1    @r2=          

  lsl r3, r2, #4    @r3=          

  orr r2, r2, r3    @r2=          
  lsr r0, #1
  lsl r0, #3        @r2=          
  cmp r0, #8      @Z=          
  addgt r1, r0, r0    @r1=          
  bx    lr  @pc=          

.global main
main:
  bl    f   @pc=          

                      @lr=          

  bx    lr
