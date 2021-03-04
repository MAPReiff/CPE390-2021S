      .global main
main:
      push    {r4}      @store r4 --> [sp]    sp=sp-4 (stack grew)
      push    {r5}

      mov r4, #2        @do stuff to r4

      pop     {r4}      @pop back orginal value
      pop     {r5}
      bx      lr


      @ if you push mor ethan one at atime {r4, r5} then you must pop them together as well