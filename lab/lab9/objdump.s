
1001:     file format elf32-littlearm


Disassembly of section .init:

0001037c <_init>:
   1037c:	e92d4008 	push	{r3, lr}
   10380:	eb00002c 	bl	10438 <call_weak_fn>
   10384:	e8bd8008 	pop	{r3, pc}

Disassembly of section .plt:

00010388 <.plt>:
   10388:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
   1038c:	e59fe004 	ldr	lr, [pc, #4]	; 10398 <.plt+0x10>
   10390:	e08fe00e 	add	lr, pc, lr
   10394:	e5bef008 	ldr	pc, [lr, #8]!
   10398:	00011c68 	.word	0x00011c68

0001039c <strcmp@plt>:
   1039c:	e28fc600 	add	ip, pc, #0, 12
   103a0:	e28cca11 	add	ip, ip, #69632	; 0x11000
   103a4:	e5bcfc68 	ldr	pc, [ip, #3176]!	; 0xc68

000103a8 <printf@plt>:
   103a8:	e28fc600 	add	ip, pc, #0, 12
   103ac:	e28cca11 	add	ip, ip, #69632	; 0x11000
   103b0:	e5bcfc60 	ldr	pc, [ip, #3168]!	; 0xc60

000103b4 <puts@plt>:
   103b4:	e28fc600 	add	ip, pc, #0, 12
   103b8:	e28cca11 	add	ip, ip, #69632	; 0x11000
   103bc:	e5bcfc58 	ldr	pc, [ip, #3160]!	; 0xc58

000103c0 <__libc_start_main@plt>:
   103c0:	e28fc600 	add	ip, pc, #0, 12
   103c4:	e28cca11 	add	ip, ip, #69632	; 0x11000
   103c8:	e5bcfc50 	ldr	pc, [ip, #3152]!	; 0xc50

000103cc <__gmon_start__@plt>:
   103cc:	e28fc600 	add	ip, pc, #0, 12
   103d0:	e28cca11 	add	ip, ip, #69632	; 0x11000
   103d4:	e5bcfc48 	ldr	pc, [ip, #3144]!	; 0xc48

000103d8 <exit@plt>:
   103d8:	e28fc600 	add	ip, pc, #0, 12
   103dc:	e28cca11 	add	ip, ip, #69632	; 0x11000
   103e0:	e5bcfc40 	ldr	pc, [ip, #3136]!	; 0xc40

000103e4 <__isoc99_scanf@plt>:
   103e4:	e28fc600 	add	ip, pc, #0, 12
   103e8:	e28cca11 	add	ip, ip, #69632	; 0x11000
   103ec:	e5bcfc38 	ldr	pc, [ip, #3128]!	; 0xc38

000103f0 <abort@plt>:
   103f0:	e28fc600 	add	ip, pc, #0, 12
   103f4:	e28cca11 	add	ip, ip, #69632	; 0x11000
   103f8:	e5bcfc30 	ldr	pc, [ip, #3120]!	; 0xc30

Disassembly of section .text:

000103fc <_start>:
   103fc:	e3a0b000 	mov	fp, #0
   10400:	e3a0e000 	mov	lr, #0
   10404:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
   10408:	e1a0200d 	mov	r2, sp
   1040c:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
   10410:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
   10414:	e59fc010 	ldr	ip, [pc, #16]	; 1042c <_start+0x30>
   10418:	e52dc004 	push	{ip}		; (str ip, [sp, #-4]!)
   1041c:	e59f000c 	ldr	r0, [pc, #12]	; 10430 <_start+0x34>
   10420:	e59f300c 	ldr	r3, [pc, #12]	; 10434 <_start+0x38>
   10424:	ebffffe5 	bl	103c0 <__libc_start_main@plt>
   10428:	ebfffff0 	bl	103f0 <abort@plt>
   1042c:	00010708 	.word	0x00010708
   10430:	0001064c 	.word	0x0001064c
   10434:	000106a8 	.word	0x000106a8

00010438 <call_weak_fn>:
   10438:	e59f3014 	ldr	r3, [pc, #20]	; 10454 <call_weak_fn+0x1c>
   1043c:	e59f2014 	ldr	r2, [pc, #20]	; 10458 <call_weak_fn+0x20>
   10440:	e08f3003 	add	r3, pc, r3
   10444:	e7932002 	ldr	r2, [r3, r2]
   10448:	e3520000 	cmp	r2, #0
   1044c:	012fff1e 	bxeq	lr
   10450:	eaffffdd 	b	103cc <__gmon_start__@plt>
   10454:	00011bb8 	.word	0x00011bb8
   10458:	0000002c 	.word	0x0000002c

0001045c <deregister_tm_clones>:
   1045c:	e59f0018 	ldr	r0, [pc, #24]	; 1047c <deregister_tm_clones+0x20>
   10460:	e59f3018 	ldr	r3, [pc, #24]	; 10480 <deregister_tm_clones+0x24>
   10464:	e1530000 	cmp	r3, r0
   10468:	012fff1e 	bxeq	lr
   1046c:	e59f3010 	ldr	r3, [pc, #16]	; 10484 <deregister_tm_clones+0x28>
   10470:	e3530000 	cmp	r3, #0
   10474:	012fff1e 	bxeq	lr
   10478:	e12fff13 	bx	r3
   1047c:	00022038 	.word	0x00022038
   10480:	00022038 	.word	0x00022038
   10484:	00000000 	.word	0x00000000

00010488 <register_tm_clones>:
   10488:	e59f0024 	ldr	r0, [pc, #36]	; 104b4 <register_tm_clones+0x2c>
   1048c:	e59f1024 	ldr	r1, [pc, #36]	; 104b8 <register_tm_clones+0x30>
   10490:	e0411000 	sub	r1, r1, r0
   10494:	e1a01141 	asr	r1, r1, #2
   10498:	e0811fa1 	add	r1, r1, r1, lsr #31
   1049c:	e1b010c1 	asrs	r1, r1, #1
   104a0:	012fff1e 	bxeq	lr
   104a4:	e59f3010 	ldr	r3, [pc, #16]	; 104bc <register_tm_clones+0x34>
   104a8:	e3530000 	cmp	r3, #0
   104ac:	012fff1e 	bxeq	lr
   104b0:	e12fff13 	bx	r3
   104b4:	00022038 	.word	0x00022038
   104b8:	00022038 	.word	0x00022038
   104bc:	00000000 	.word	0x00000000

000104c0 <__do_global_dtors_aux>:
   104c0:	e92d4010 	push	{r4, lr}
   104c4:	e59f4018 	ldr	r4, [pc, #24]	; 104e4 <__do_global_dtors_aux+0x24>
   104c8:	e5d43000 	ldrb	r3, [r4]
   104cc:	e3530000 	cmp	r3, #0
   104d0:	18bd8010 	popne	{r4, pc}
   104d4:	ebffffe0 	bl	1045c <deregister_tm_clones>
   104d8:	e3a03001 	mov	r3, #1
   104dc:	e5c43000 	strb	r3, [r4]
   104e0:	e8bd8010 	pop	{r4, pc}
   104e4:	00022038 	.word	0x00022038

000104e8 <frame_dummy>:
   104e8:	eaffffe6 	b	10488 <register_tm_clones>

000104ec <explode_bomb>:
   104ec:	e92d4010 	push	{r4, lr}
   104f0:	e59f0008 	ldr	r0, [pc, #8]	; 10500 <explode_bomb+0x14>
   104f4:	ebffffae 	bl	103b4 <puts@plt>
   104f8:	e3a00000 	mov	r0, #0
   104fc:	ebffffb5 	bl	103d8 <exit@plt>
   10500:	00010718 	.word	0x00010718

00010504 <phase1>:
   10504:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
   10508:	e24dd00c 	sub	sp, sp, #12
   1050c:	e28d1004 	add	r1, sp, #4
   10510:	e59f0020 	ldr	r0, [pc, #32]	; 10538 <phase1+0x34>
   10514:	ebffffb2 	bl	103e4 <__isoc99_scanf@plt>
   10518:	e59f301c 	ldr	r3, [pc, #28]	; 1053c <phase1+0x38>
   1051c:	e59d2004 	ldr	r2, [sp, #4]
   10520:	e1520003 	cmp	r2, r3
   10524:	1a000002 	bne	10534 <phase1+0x30>
   10528:	e3a00000 	mov	r0, #0
   1052c:	e28dd00c 	add	sp, sp, #12
   10530:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)
   10534:	ebffffec 	bl	104ec <explode_bomb>
   10538:	00010e20 	.word	0x00010e20
   1053c:	00001917 	.word	0x00001917

00010540 <phase2>:
   10540:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
   10544:	e24dd00c 	sub	sp, sp, #12
   10548:	e1a0200d 	mov	r2, sp
   1054c:	e28d1004 	add	r1, sp, #4
   10550:	e59f003c 	ldr	r0, [pc, #60]	; 10594 <phase2+0x54>
   10554:	ebffffa2 	bl	103e4 <__isoc99_scanf@plt>
   10558:	e59d2004 	ldr	r2, [sp, #4]
   1055c:	e59f3034 	ldr	r3, [pc, #52]	; 10598 <phase2+0x58>
   10560:	e1520003 	cmp	r2, r3
   10564:	1a000008 	bne	1058c <phase2+0x4c>
   10568:	e59d3004 	ldr	r3, [sp, #4]
   1056c:	e59d2000 	ldr	r2, [sp]
   10570:	e0833002 	add	r3, r3, r2
   10574:	e59f2020 	ldr	r2, [pc, #32]	; 1059c <phase2+0x5c>
   10578:	e1530002 	cmp	r3, r2
   1057c:	1a000003 	bne	10590 <phase2+0x50>
   10580:	e3a00000 	mov	r0, #0
   10584:	e28dd00c 	add	sp, sp, #12
   10588:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)
   1058c:	ebffffd6 	bl	104ec <explode_bomb>
   10590:	ebffffd5 	bl	104ec <explode_bomb>
   10594:	00010e24 	.word	0x00010e24
   10598:	00001c65 	.word	0x00001c65
   1059c:	000003c9 	.word	0x000003c9

000105a0 <phase3>:
   105a0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
   105a4:	e24ddf41 	sub	sp, sp, #260	; 0x104
   105a8:	e1a0100d 	mov	r1, sp
   105ac:	e59f0024 	ldr	r0, [pc, #36]	; 105d8 <phase3+0x38>
   105b0:	ebffff8b 	bl	103e4 <__isoc99_scanf@plt>
   105b4:	e59f1020 	ldr	r1, [pc, #32]	; 105dc <phase3+0x3c>
   105b8:	e1a0000d 	mov	r0, sp
   105bc:	ebffff76 	bl	1039c <strcmp@plt>
   105c0:	e3500000 	cmp	r0, #0
   105c4:	1a000002 	bne	105d4 <phase3+0x34>
   105c8:	e3a00000 	mov	r0, #0
   105cc:	e28ddf41 	add	sp, sp, #260	; 0x104
   105d0:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)
   105d4:	ebffffc4 	bl	104ec <explode_bomb>
   105d8:	00010e2c 	.word	0x00010e2c
   105dc:	00010738 	.word	0x00010738

000105e0 <phase4>:
   105e0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
   105e4:	e24dd00c 	sub	sp, sp, #12
   105e8:	e28d1004 	add	r1, sp, #4
   105ec:	e59f004c 	ldr	r0, [pc, #76]	; 10640 <phase4+0x60>
   105f0:	ebffff7b 	bl	103e4 <__isoc99_scanf@plt>
   105f4:	e59d0004 	ldr	r0, [sp, #4]
   105f8:	e3500000 	cmp	r0, #0
   105fc:	da00000e 	ble	1063c <phase4+0x5c>
   10600:	e3a01000 	mov	r1, #0
   10604:	e1a03001 	mov	r3, r1
   10608:	e2832001 	add	r2, r3, #1
   1060c:	e0811003 	add	r1, r1, r3
   10610:	e1a03002 	mov	r3, r2
   10614:	e1520000 	cmp	r2, r0
   10618:	1afffffa 	bne	10608 <phase4+0x28>
   1061c:	e59f3020 	ldr	r3, [pc, #32]	; 10644 <phase4+0x64>
   10620:	e1510003 	cmp	r1, r3
   10624:	1a000004 	bne	1063c <phase4+0x5c>
   10628:	e59f0018 	ldr	r0, [pc, #24]	; 10648 <phase4+0x68>
   1062c:	ebffff60 	bl	103b4 <puts@plt>
   10630:	e3a00000 	mov	r0, #0
   10634:	e28dd00c 	add	sp, sp, #12
   10638:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)
   1063c:	ebffffaa 	bl	104ec <explode_bomb>
   10640:	00010e20 	.word	0x00010e20
   10644:	00c3b004 	.word	0x00c3b004
   10648:	00010758 	.word	0x00010758

0001064c <main>:
   1064c:	e92d4070 	push	{r4, r5, r6, lr}
   10650:	e59f5048 	ldr	r5, [pc, #72]	; 106a0 <main+0x54>
   10654:	e59f4048 	ldr	r4, [pc, #72]	; 106a4 <main+0x58>
   10658:	e1a01005 	mov	r1, r5
   1065c:	e1a00004 	mov	r0, r4
   10660:	ebffff50 	bl	103a8 <printf@plt>
   10664:	ebffffa6 	bl	10504 <phase1>
   10668:	e2851d05 	add	r1, r5, #320	; 0x140
   1066c:	e1a00004 	mov	r0, r4
   10670:	ebffff4c 	bl	103a8 <printf@plt>
   10674:	ebffffb1 	bl	10540 <phase2>
   10678:	e2851f57 	add	r1, r5, #348	; 0x15c
   1067c:	e1a00004 	mov	r0, r4
   10680:	ebffff48 	bl	103a8 <printf@plt>
   10684:	ebffffc5 	bl	105a0 <phase3>
   10688:	e2851d06 	add	r1, r5, #384	; 0x180
   1068c:	e1a00004 	mov	r0, r4
   10690:	ebffff44 	bl	103a8 <printf@plt>
   10694:	ebffffd1 	bl	105e0 <phase4>
   10698:	e3a00000 	mov	r0, #0
   1069c:	e8bd8070 	pop	{r4, r5, r6, pc}
   106a0:	00010e34 	.word	0x00010e34
   106a4:	00010fd8 	.word	0x00010fd8

000106a8 <__libc_csu_init>:
   106a8:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
   106ac:	e1a07000 	mov	r7, r0
   106b0:	e59f6048 	ldr	r6, [pc, #72]	; 10700 <__libc_csu_init+0x58>
   106b4:	e59f5048 	ldr	r5, [pc, #72]	; 10704 <__libc_csu_init+0x5c>
   106b8:	e08f6006 	add	r6, pc, r6
   106bc:	e08f5005 	add	r5, pc, r5
   106c0:	e0466005 	sub	r6, r6, r5
   106c4:	e1a08001 	mov	r8, r1
   106c8:	e1a09002 	mov	r9, r2
   106cc:	ebffff2a 	bl	1037c <_init>
   106d0:	e1b06146 	asrs	r6, r6, #2
   106d4:	08bd87f0 	popeq	{r4, r5, r6, r7, r8, r9, sl, pc}
   106d8:	e3a04000 	mov	r4, #0
   106dc:	e2844001 	add	r4, r4, #1
   106e0:	e4953004 	ldr	r3, [r5], #4
   106e4:	e1a02009 	mov	r2, r9
   106e8:	e1a01008 	mov	r1, r8
   106ec:	e1a00007 	mov	r0, r7
   106f0:	e12fff33 	blx	r3
   106f4:	e1560004 	cmp	r6, r4
   106f8:	1afffff7 	bne	106dc <__libc_csu_init+0x34>
   106fc:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
   10700:	00011854 	.word	0x00011854
   10704:	0001184c 	.word	0x0001184c

00010708 <__libc_csu_fini>:
   10708:	e12fff1e 	bx	lr

Disassembly of section .fini:

0001070c <_fini>:
   1070c:	e92d4008 	push	{r3, lr}
   10710:	e8bd8008 	pop	{r3, pc}
