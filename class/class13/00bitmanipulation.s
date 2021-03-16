      .global main
main
/*
      at the lowest, circuit levelm the computer is built ofut of
      CMOS Complemntary Metal Oxide Semiconductor

      N-channel MOSFET      bring the gate HIGH, bring the other side LOW     NOT
                            we prefer N-channel
      
      P-channel MOSFET      bring the gate HIGH, bring the side HIGH

      NAND  (NOT AND)
      NOR   (NOT OR)

      NAND-flash

      AND = NOT NAND      AND = NOT NOT AND

                        Truth Table
      A       B       AND       NAND        OR        NOR       XOR (eor)
      0       0       0         1           0         1         0
      0       1       0         1           1         0         1
      1       0       0         1           1         0         1
      1       1       1         0           1         1         0






 */
      mov     r0, #3        @000000000000000011     not the right number of 0's
      mov     r1, #5        @000000000000000101

      and     r3, r0, r1    @000000000000000001
      orr     r3, r0, r1    @000000000000000111 = 7
      eor     r4, r0, r1    @000000000000000110 = 6
      mvn     r5, r0        @111111111111111100 = ???    move and negate (NOT)

/*
      2s complement
      1111111111111111111111111111100
      0000000000000000000000000000011
      0000000000000000000000000000001 +
      ===============================
      0000000000000000000000000000100 = 4
      
      the number is -4

      111111111111111111111110110 =?
      000000000000000000000001001 = 9
      000000000000000000000001010 = 10  number = -10

      WHEN THE HIGH/LEADING BIT IS 1, THE NUMBER IS NEGATIVE

      10000001
      01111110 = 2+4+8+16+32+64 = 126
      00000001 +
      ========
      01111111

      0   0000
      1   0001
      2   0010
      3
      4
      5
      6
      7
      8
      9   1001
      A   1010
      B   1011
      C   1100
      D   1101
      E   1110
      F   1111

*/

      bx      lr