      .global main
main:
      ldr     r1, =0xFFFFFF3F
      and     r2, r1 @answer is 0xbefff52c    3204445484

      ldr     r1, =0xFFFFFF3F
      eor     r2, #0x00000030