      @ sp = 7fffc0b8

main:
      push    {r5, r6}      @what does this do?
      @ sp = sp -4
      @ str r6, [sp]    stores r6 to stakc pointer
      @ sp = sp -4
      @ str r5, [sp]    same as above

      @ sp = 7fffc0b0   this is two 4s less than starting sp value

      mov     r5, #23   @ 00  00  00  17
      mov     r6, #32
      push    {r5, r6}
      /*
        In gdb, what command would display the memory at the stack pointer?
            x $sp       displays the memory at location sp
            x/x $sp     display in hex
            x/d $sp     display in decimal
       */

      pop     {r5, r6}


      pop     {r5, r6}      @what does this do?
      @ sp = 7fffc0b8       2 push and 2 pop => back to orginal

      /*
      
                     0 1 2 3     4 5 6 7
      7fffc0b0:      r5_____     r6_____           at this point we dont know cause nothing was moved to r5 & r6
      7fffc0a8:      17000000     _______
      
       */