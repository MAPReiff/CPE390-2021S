Disassembly of section .init:

00010470 <_init>:
   10470:	e92d4008 	push	{r3, lr}
   10474:	eb000072 	bl	10644 <call_weak_fn>
   10478:	e8bd8008 	pop	{r3, pc}

Disassembly of section .plt:

0001047c <.plt>:
   1047c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
   10480:	e59fe004 	ldr	lr, [pc, #4]	; 1048c <.plt+0x10>
   10484:	e08fe00e 	add	lr, pc, lr
   10488:	e5bef008 	ldr	pc, [lr, #8]!
   1048c:	00010b74 	.word	0x00010b74

00010490 <raise@plt>:
   10490:	e28fc600 	add	ip, pc, #0, 12
   10494:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   10498:	e5bcfb74 	ldr	pc, [ip, #2932]!	; 0xb74

0001049c <strcmp@plt>:
   1049c:	e28fc600 	add	ip, pc, #0, 12
   104a0:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   104a4:	e5bcfb6c 	ldr	pc, [ip, #2924]!	; 0xb6c

000104a8 <strtol@plt>:
   104a8:	e28fc600 	add	ip, pc, #0, 12
   104ac:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   104b0:	e5bcfb64 	ldr	pc, [ip, #2916]!	; 0xb64

000104b4 <printf@plt>:
   104b4:	e28fc600 	add	ip, pc, #0, 12
   104b8:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   104bc:	e5bcfb5c 	ldr	pc, [ip, #2908]!	; 0xb5c

000104c0 <read@plt>:
   104c0:	e28fc600 	add	ip, pc, #0, 12
   104c4:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   104c8:	e5bcfb54 	ldr	pc, [ip, #2900]!	; 0xb54

000104cc <__libc_start_main@plt>:
   104cc:	e28fc600 	add	ip, pc, #0, 12
   104d0:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   104d4:	e5bcfb4c 	ldr	pc, [ip, #2892]!	; 0xb4c

000104d8 <__gmon_start__@plt>:
   104d8:	e28fc600 	add	ip, pc, #0, 12
   104dc:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   104e0:	e5bcfb44 	ldr	pc, [ip, #2884]!	; 0xb44

000104e4 <open@plt>:
   104e4:	e28fc600 	add	ip, pc, #0, 12
   104e8:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   104ec:	e5bcfb3c 	ldr	pc, [ip, #2876]!	; 0xb3c

000104f0 <sqrt@plt>:
   104f0:	e28fc600 	add	ip, pc, #0, 12
   104f4:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   104f8:	e5bcfb34 	ldr	pc, [ip, #2868]!	; 0xb34

000104fc <memset@plt>:
   104fc:	e28fc600 	add	ip, pc, #0, 12
   10500:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   10504:	e5bcfb2c 	ldr	pc, [ip, #2860]!	; 0xb2c

00010508 <abort@plt>:
   10508:	e28fc600 	add	ip, pc, #0, 12
   1050c:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   10510:	e5bcfb24 	ldr	pc, [ip, #2852]!	; 0xb24

00010514 <close@plt>:
   10514:	e28fc600 	add	ip, pc, #0, 12
   10518:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   1051c:	e5bcfb1c 	ldr	pc, [ip, #2844]!	; 0xb1c

Disassembly of section .text:

00010520 <main>:
   10520:	e92d4010 	push	{r4, lr}
   10524:	e24dd008 	sub	sp, sp, #8
   10528:	e3a03003 	mov	r3, #3
   1052c:	e59f00b0 	ldr	r0, [pc, #176]	; 105e4 <main+0xc4>
   10530:	e58d3004 	str	r3, [sp, #4]
   10534:	eb0000d0 	bl	1087c <foo>
   10538:	e59f00a8 	ldr	r0, [pc, #168]	; 105e8 <main+0xc8>
   1053c:	eb0000ce 	bl	1087c <foo>
   10540:	e59f00a4 	ldr	r0, [pc, #164]	; 105ec <main+0xcc>
   10544:	eb0000cc 	bl	1087c <foo>
   10548:	e59f00a0 	ldr	r0, [pc, #160]	; 105f0 <main+0xd0>
   1054c:	eb0000ca 	bl	1087c <foo>
   10550:	e59f009c 	ldr	r0, [pc, #156]	; 105f4 <main+0xd4>
   10554:	eb0000c8 	bl	1087c <foo>
   10558:	e59f0098 	ldr	r0, [pc, #152]	; 105f8 <main+0xd8>
   1055c:	eb0000c6 	bl	1087c <foo>
   10560:	e59d3004 	ldr	r3, [sp, #4]
   10564:	e3530001 	cmp	r3, #1
   10568:	da00000f 	ble	105ac <main+0x8c>
   1056c:	e3a01000 	mov	r1, #0
   10570:	e59f0084 	ldr	r0, [pc, #132]	; 105fc <main+0xdc>
   10574:	ebffffda 	bl	104e4 <open@plt>
   10578:	e2504000 	subs	r4, r0, #0
   1057c:	ba000016 	blt	105dc <main+0xbc>
   10580:	eb00005c 	bl	106f8 <licenseCheck>
   10584:	e3500000 	cmp	r0, #0
   10588:	0a00000f 	beq	105cc <main+0xac>
   1058c:	e3a02006 	mov	r2, #6
   10590:	e3a01008 	mov	r1, #8
   10594:	e1a00004 	mov	r0, r4
   10598:	eb000069 	bl	10744 <licenseCheck2>
   1059c:	e3500000 	cmp	r0, #0
   105a0:	0a00000b 	beq	105d4 <main+0xb4>
   105a4:	e1a00004 	mov	r0, r4
   105a8:	ebffffd9 	bl	10514 <close@plt>
   105ac:	e59f004c 	ldr	r0, [pc, #76]	; 10600 <main+0xe0>
   105b0:	eb00009f 	bl	10834 <countPrimes>
   105b4:	e1a01000 	mov	r1, r0
   105b8:	e59f0044 	ldr	r0, [pc, #68]	; 10604 <main+0xe4>
   105bc:	ebffffbc 	bl	104b4 <printf@plt>
   105c0:	e3a00000 	mov	r0, #0
   105c4:	e28dd008 	add	sp, sp, #8
   105c8:	e8bd8010 	pop	{r4, pc}
   105cc:	e3e00001 	mvn	r0, #1
   105d0:	eafffffb 	b	105c4 <main+0xa4>
   105d4:	e3e00002 	mvn	r0, #2
   105d8:	eafffff9 	b	105c4 <main+0xa4>
   105dc:	e3e00000 	mvn	r0, #0
   105e0:	eafffff7 	b	105c4 <main+0xa4>
   105e4:	0baede11 	.word	0x0baede11
   105e8:	304b9d7a 	.word	0x304b9d7a
   105ec:	14823262 	.word	0x14823262
   105f0:	340e1444 	.word	0x340e1444
   105f4:	2feeb83f 	.word	0x2feeb83f
   105f8:	33517fd0 	.word	0x33517fd0
   105fc:	00010c24 	.word	0x00010c24
   10600:	000f4240 	.word	0x000f4240
   10604:	00010c30 	.word	0x00010c30

00010608 <_start>:
   10608:	e3a0b000 	mov	fp, #0
   1060c:	e3a0e000 	mov	lr, #0
   10610:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
   10614:	e1a0200d 	mov	r2, sp
   10618:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
   1061c:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
   10620:	e59fc010 	ldr	ip, [pc, #16]	; 10638 <_start+0x30>
   10624:	e52dc004 	push	{ip}		; (str ip, [sp, #-4]!)
   10628:	e59f000c 	ldr	r0, [pc, #12]	; 1063c <_start+0x34>
   1062c:	e59f300c 	ldr	r3, [pc, #12]	; 10640 <_start+0x38>
   10630:	ebffffa5 	bl	104cc <__libc_start_main@plt>
   10634:	ebffffb3 	bl	10508 <abort@plt>
   10638:	00010b00 	.word	0x00010b00
   1063c:	00010520 	.word	0x00010520
   10640:	00010aa0 	.word	0x00010aa0

00010644 <call_weak_fn>:
   10644:	e59f3014 	ldr	r3, [pc, #20]	; 10660 <call_weak_fn+0x1c>
   10648:	e59f2014 	ldr	r2, [pc, #20]	; 10664 <call_weak_fn+0x20>
   1064c:	e08f3003 	add	r3, pc, r3
   10650:	e7932002 	ldr	r2, [r3, r2]
   10654:	e3520000 	cmp	r2, #0
   10658:	012fff1e 	bxeq	lr
   1065c:	eaffff9d 	b	104d8 <__gmon_start__@plt>
   10660:	000109ac 	.word	0x000109ac
   10664:	0000003c 	.word	0x0000003c

00010668 <deregister_tm_clones>:
   10668:	e59f0018 	ldr	r0, [pc, #24]	; 10688 <deregister_tm_clones+0x20>
   1066c:	e59f3018 	ldr	r3, [pc, #24]	; 1068c <deregister_tm_clones+0x24>
   10670:	e1530000 	cmp	r3, r0
   10674:	012fff1e 	bxeq	lr
   10678:	e59f3010 	ldr	r3, [pc, #16]	; 10690 <deregister_tm_clones+0x28>
   1067c:	e3530000 	cmp	r3, #0
   10680:	012fff1e 	bxeq	lr
   10684:	e12fff13 	bx	r3
   10688:	00021048 	.word	0x00021048
   1068c:	00021048 	.word	0x00021048
   10690:	00000000 	.word	0x00000000

00010694 <register_tm_clones>:
   10694:	e59f0024 	ldr	r0, [pc, #36]	; 106c0 <register_tm_clones+0x2c>
   10698:	e59f1024 	ldr	r1, [pc, #36]	; 106c4 <register_tm_clones+0x30>
   1069c:	e0411000 	sub	r1, r1, r0
   106a0:	e1a01141 	asr	r1, r1, #2
   106a4:	e0811fa1 	add	r1, r1, r1, lsr #31
   106a8:	e1b010c1 	asrs	r1, r1, #1
   106ac:	012fff1e 	bxeq	lr
   106b0:	e59f3010 	ldr	r3, [pc, #16]	; 106c8 <register_tm_clones+0x34>
   106b4:	e3530000 	cmp	r3, #0
   106b8:	012fff1e 	bxeq	lr
   106bc:	e12fff13 	bx	r3
   106c0:	00021048 	.word	0x00021048
   106c4:	00021048 	.word	0x00021048
   106c8:	00000000 	.word	0x00000000

000106cc <__do_global_dtors_aux>:
   106cc:	e92d4010 	push	{r4, lr}
   106d0:	e59f4018 	ldr	r4, [pc, #24]	; 106f0 <__do_global_dtors_aux+0x24>
   106d4:	e5d43000 	ldrb	r3, [r4]
   106d8:	e3530000 	cmp	r3, #0
   106dc:	18bd8010 	popne	{r4, pc}
   106e0:	ebffffe0 	bl	10668 <deregister_tm_clones>
   106e4:	e3a03001 	mov	r3, #1
   106e8:	e5c43000 	strb	r3, [r4]
   106ec:	e8bd8010 	pop	{r4, pc}
   106f0:	00021048 	.word	0x00021048

000106f4 <frame_dummy>:
   106f4:	eaffffe6 	b	10694 <register_tm_clones>

000106f8 <licenseCheck>:
   106f8:	e92d4010 	push	{r4, lr}
   106fc:	e24dd008 	sub	sp, sp, #8
   10700:	e3a04000 	mov	r4, #0
   10704:	e1a0100d 	mov	r1, sp
   10708:	e3a02004 	mov	r2, #4
   1070c:	e58d4004 	str	r4, [sp, #4]
   10710:	e58d4000 	str	r4, [sp]
   10714:	ebffff69 	bl	104c0 <read@plt>
   10718:	e1a01004 	mov	r1, r4
   1071c:	e1a0000d 	mov	r0, sp
   10720:	e3a0200a 	mov	r2, #10
   10724:	ebffff5f 	bl	104a8 <strtol@plt>
   10728:	e59f3010 	ldr	r3, [pc, #16]	; 10740 <licenseCheck+0x48>
   1072c:	e0400003 	sub	r0, r0, r3
   10730:	e16f0f10 	clz	r0, r0
   10734:	e1a002a0 	lsr	r0, r0, #5
   10738:	e28dd008 	add	sp, sp, #8
   1073c:	e8bd8010 	pop	{r4, pc}
   10740:	00001209 	.word	0x00001209

00010744 <licenseCheck2>:
   10744:	e92d4070 	push	{r4, r5, r6, lr}
   10748:	e24ddc01 	sub	sp, sp, #256	; 0x100
   1074c:	e1a05000 	mov	r5, r0
   10750:	e1a04001 	mov	r4, r1
   10754:	e1a06002 	mov	r6, r2
   10758:	e1a0000d 	mov	r0, sp
   1075c:	e3a02c01 	mov	r2, #256	; 0x100
   10760:	e3a01000 	mov	r1, #0
   10764:	ebffff64 	bl	104fc <memset@plt>
   10768:	e1a02006 	mov	r2, r6
   1076c:	e1a0100d 	mov	r1, sp
   10770:	e1a00005 	mov	r0, r5
   10774:	ebffff51 	bl	104c0 <read@plt>
   10778:	e59f1018 	ldr	r1, [pc, #24]	; 10798 <licenseCheck2+0x54>
   1077c:	e1a0000d 	mov	r0, sp
   10780:	e0811004 	add	r1, r1, r4
   10784:	ebffff44 	bl	1049c <strcmp@plt>
   10788:	e16f0f10 	clz	r0, r0
   1078c:	e1a002a0 	lsr	r0, r0, #5
   10790:	e28ddc01 	add	sp, sp, #256	; 0x100
   10794:	e8bd8070 	pop	{r4, r5, r6, pc}
   10798:	00010b10 	.word	0x00010b10

0001079c <isPrime>:
   1079c:	ee070a90 	vmov	s15, r0
   107a0:	e92d4070 	push	{r4, r5, r6, lr}
   107a4:	e1a05000 	mov	r5, r0
   107a8:	ed2d8b02 	vpush	{d8}
   107ac:	eeb80b67 	vcvt.f64.u32	d0, s15
   107b0:	eeb50b40 	vcmp.f64	d0, #0.0
   107b4:	eeb18bc0 	vsqrt.f64	d8, d0
   107b8:	eef1fa10 	vmrs	APSR_nzcv, fpscr
   107bc:	4a000019 	bmi	10828 <isPrime+0x8c>
   107c0:	eefc7bc8 	vcvt.u32.f64	s15, d8
   107c4:	ee176a90 	vmov	r6, s15
   107c8:	e3560002 	cmp	r6, #2
   107cc:	9a00000f 	bls	10810 <isPrime+0x74>
   107d0:	e59f1058 	ldr	r1, [pc, #88]	; 10830 <isPrime+0x94>
   107d4:	e0813591 	umull	r3, r1, r1, r5
   107d8:	e1a010a1 	lsr	r1, r1, #1
   107dc:	e0811081 	add	r1, r1, r1, lsl #1
   107e0:	e0551001 	subs	r1, r5, r1
   107e4:	0a00000c 	beq	1081c <isPrime+0x80>
   107e8:	e3a04003 	mov	r4, #3
   107ec:	ea000002 	b	107fc <isPrime+0x60>
   107f0:	eb00009e 	bl	10a70 <__aeabi_uidivmod>
   107f4:	e3510000 	cmp	r1, #0
   107f8:	0a000007 	beq	1081c <isPrime+0x80>
   107fc:	e2844002 	add	r4, r4, #2
   10800:	e1560004 	cmp	r6, r4
   10804:	e1a00005 	mov	r0, r5
   10808:	e1a01004 	mov	r1, r4
   1080c:	2afffff7 	bcs	107f0 <isPrime+0x54>
   10810:	ecbd8b02 	vpop	{d8}
   10814:	e3a00001 	mov	r0, #1
   10818:	e8bd8070 	pop	{r4, r5, r6, pc}
   1081c:	ecbd8b02 	vpop	{d8}
   10820:	e1a00001 	mov	r0, r1
   10824:	e8bd8070 	pop	{r4, r5, r6, pc}
   10828:	ebffff30 	bl	104f0 <sqrt@plt>
   1082c:	eaffffe3 	b	107c0 <isPrime+0x24>
   10830:	aaaaaaab 	.word	0xaaaaaaab

00010834 <countPrimes>:
   10834:	e3500002 	cmp	r0, #2
   10838:	e92d4070 	push	{r4, r5, r6, lr}
   1083c:	9a00000b 	bls	10870 <countPrimes+0x3c>
   10840:	e1a05000 	mov	r5, r0
   10844:	e3a04003 	mov	r4, #3
   10848:	e3a06001 	mov	r6, #1
   1084c:	e1a00004 	mov	r0, r4
   10850:	ebffffd1 	bl	1079c <isPrime>
   10854:	e2844002 	add	r4, r4, #2
   10858:	e3500000 	cmp	r0, #0
   1085c:	12866001 	addne	r6, r6, #1
   10860:	e1550004 	cmp	r5, r4
   10864:	2afffff8 	bcs	1084c <countPrimes+0x18>
   10868:	e1a00006 	mov	r0, r6
   1086c:	e8bd8070 	pop	{r4, r5, r6, pc}
   10870:	e3a06001 	mov	r6, #1
   10874:	e1a00006 	mov	r0, r6
   10878:	e8bd8070 	pop	{r4, r5, r6, pc}

0001087c <foo>:
   1087c:	e3a00000 	mov	r0, #0
   10880:	e12fff1e 	bx	lr

00010884 <__udivsi3>:
   10884:	e2512001 	subs	r2, r1, #1
   10888:	012fff1e 	bxeq	lr
   1088c:	3a000074 	bcc	10a64 <__udivsi3+0x1e0>
   10890:	e1500001 	cmp	r0, r1
   10894:	9a00006b 	bls	10a48 <__udivsi3+0x1c4>
   10898:	e1110002 	tst	r1, r2
   1089c:	0a00006c 	beq	10a54 <__udivsi3+0x1d0>
   108a0:	e16f3f10 	clz	r3, r0
   108a4:	e16f2f11 	clz	r2, r1
   108a8:	e0423003 	sub	r3, r2, r3
   108ac:	e273301f 	rsbs	r3, r3, #31
   108b0:	10833083 	addne	r3, r3, r3, lsl #1
   108b4:	e3a02000 	mov	r2, #0
   108b8:	108ff103 	addne	pc, pc, r3, lsl #2
   108bc:	e1a00000 	nop			; (mov r0, r0)
   108c0:	e1500f81 	cmp	r0, r1, lsl #31
   108c4:	e0a22002 	adc	r2, r2, r2
   108c8:	20400f81 	subcs	r0, r0, r1, lsl #31
   108cc:	e1500f01 	cmp	r0, r1, lsl #30
   108d0:	e0a22002 	adc	r2, r2, r2
   108d4:	20400f01 	subcs	r0, r0, r1, lsl #30
   108d8:	e1500e81 	cmp	r0, r1, lsl #29
   108dc:	e0a22002 	adc	r2, r2, r2
   108e0:	20400e81 	subcs	r0, r0, r1, lsl #29
   108e4:	e1500e01 	cmp	r0, r1, lsl #28
   108e8:	e0a22002 	adc	r2, r2, r2
   108ec:	20400e01 	subcs	r0, r0, r1, lsl #28
   108f0:	e1500d81 	cmp	r0, r1, lsl #27
   108f4:	e0a22002 	adc	r2, r2, r2
   108f8:	20400d81 	subcs	r0, r0, r1, lsl #27
   108fc:	e1500d01 	cmp	r0, r1, lsl #26
   10900:	e0a22002 	adc	r2, r2, r2
   10904:	20400d01 	subcs	r0, r0, r1, lsl #26
   10908:	e1500c81 	cmp	r0, r1, lsl #25
   1090c:	e0a22002 	adc	r2, r2, r2
   10910:	20400c81 	subcs	r0, r0, r1, lsl #25
   10914:	e1500c01 	cmp	r0, r1, lsl #24
   10918:	e0a22002 	adc	r2, r2, r2
   1091c:	20400c01 	subcs	r0, r0, r1, lsl #24
   10920:	e1500b81 	cmp	r0, r1, lsl #23
   10924:	e0a22002 	adc	r2, r2, r2
   10928:	20400b81 	subcs	r0, r0, r1, lsl #23
   1092c:	e1500b01 	cmp	r0, r1, lsl #22
   10930:	e0a22002 	adc	r2, r2, r2
   10934:	20400b01 	subcs	r0, r0, r1, lsl #22
   10938:	e1500a81 	cmp	r0, r1, lsl #21
   1093c:	e0a22002 	adc	r2, r2, r2
   10940:	20400a81 	subcs	r0, r0, r1, lsl #21
   10944:	e1500a01 	cmp	r0, r1, lsl #20
   10948:	e0a22002 	adc	r2, r2, r2
   1094c:	20400a01 	subcs	r0, r0, r1, lsl #20
   10950:	e1500981 	cmp	r0, r1, lsl #19
   10954:	e0a22002 	adc	r2, r2, r2
   10958:	20400981 	subcs	r0, r0, r1, lsl #19
   1095c:	e1500901 	cmp	r0, r1, lsl #18
   10960:	e0a22002 	adc	r2, r2, r2
   10964:	20400901 	subcs	r0, r0, r1, lsl #18
   10968:	e1500881 	cmp	r0, r1, lsl #17
   1096c:	e0a22002 	adc	r2, r2, r2
   10970:	20400881 	subcs	r0, r0, r1, lsl #17
   10974:	e1500801 	cmp	r0, r1, lsl #16
   10978:	e0a22002 	adc	r2, r2, r2
   1097c:	20400801 	subcs	r0, r0, r1, lsl #16
   10980:	e1500781 	cmp	r0, r1, lsl #15
   10984:	e0a22002 	adc	r2, r2, r2
   10988:	20400781 	subcs	r0, r0, r1, lsl #15
   1098c:	e1500701 	cmp	r0, r1, lsl #14
   10990:	e0a22002 	adc	r2, r2, r2
   10994:	20400701 	subcs	r0, r0, r1, lsl #14
   10998:	e1500681 	cmp	r0, r1, lsl #13
   1099c:	e0a22002 	adc	r2, r2, r2
   109a0:	20400681 	subcs	r0, r0, r1, lsl #13
   109a4:	e1500601 	cmp	r0, r1, lsl #12
   109a8:	e0a22002 	adc	r2, r2, r2
   109ac:	20400601 	subcs	r0, r0, r1, lsl #12
   109b0:	e1500581 	cmp	r0, r1, lsl #11
   109b4:	e0a22002 	adc	r2, r2, r2
   109b8:	20400581 	subcs	r0, r0, r1, lsl #11
   109bc:	e1500501 	cmp	r0, r1, lsl #10
   109c0:	e0a22002 	adc	r2, r2, r2
   109c4:	20400501 	subcs	r0, r0, r1, lsl #10
   109c8:	e1500481 	cmp	r0, r1, lsl #9
   109cc:	e0a22002 	adc	r2, r2, r2
   109d0:	20400481 	subcs	r0, r0, r1, lsl #9
   109d4:	e1500401 	cmp	r0, r1, lsl #8
   109d8:	e0a22002 	adc	r2, r2, r2
   109dc:	20400401 	subcs	r0, r0, r1, lsl #8
   109e0:	e1500381 	cmp	r0, r1, lsl #7
   109e4:	e0a22002 	adc	r2, r2, r2
   109e8:	20400381 	subcs	r0, r0, r1, lsl #7
   109ec:	e1500301 	cmp	r0, r1, lsl #6
   109f0:	e0a22002 	adc	r2, r2, r2
   109f4:	20400301 	subcs	r0, r0, r1, lsl #6
   109f8:	e1500281 	cmp	r0, r1, lsl #5
   109fc:	e0a22002 	adc	r2, r2, r2
   10a00:	20400281 	subcs	r0, r0, r1, lsl #5
   10a04:	e1500201 	cmp	r0, r1, lsl #4
   10a08:	e0a22002 	adc	r2, r2, r2
   10a0c:	20400201 	subcs	r0, r0, r1, lsl #4
   10a10:	e1500181 	cmp	r0, r1, lsl #3
   10a14:	e0a22002 	adc	r2, r2, r2
   10a18:	20400181 	subcs	r0, r0, r1, lsl #3
   10a1c:	e1500101 	cmp	r0, r1, lsl #2
   10a20:	e0a22002 	adc	r2, r2, r2
   10a24:	20400101 	subcs	r0, r0, r1, lsl #2
   10a28:	e1500081 	cmp	r0, r1, lsl #1
   10a2c:	e0a22002 	adc	r2, r2, r2
   10a30:	20400081 	subcs	r0, r0, r1, lsl #1
   10a34:	e1500001 	cmp	r0, r1
   10a38:	e0a22002 	adc	r2, r2, r2
   10a3c:	20400001 	subcs	r0, r0, r1
   10a40:	e1a00002 	mov	r0, r2
   10a44:	e12fff1e 	bx	lr
   10a48:	03a00001 	moveq	r0, #1
   10a4c:	13a00000 	movne	r0, #0
   10a50:	e12fff1e 	bx	lr
   10a54:	e16f2f11 	clz	r2, r1
   10a58:	e262201f 	rsb	r2, r2, #31
   10a5c:	e1a00230 	lsr	r0, r0, r2
   10a60:	e12fff1e 	bx	lr
   10a64:	e3500000 	cmp	r0, #0
   10a68:	13e00000 	mvnne	r0, #0
   10a6c:	ea000007 	b	10a90 <__aeabi_idiv0>

00010a70 <__aeabi_uidivmod>:
   10a70:	e3510000 	cmp	r1, #0
   10a74:	0afffffa 	beq	10a64 <__udivsi3+0x1e0>
   10a78:	e92d4003 	push	{r0, r1, lr}
   10a7c:	ebffff80 	bl	10884 <__udivsi3>
   10a80:	e8bd4006 	pop	{r1, r2, lr}
   10a84:	e0030092 	mul	r3, r2, r0
   10a88:	e0411003 	sub	r1, r1, r3
   10a8c:	e12fff1e 	bx	lr

00010a90 <__aeabi_idiv0>:
   10a90:	e92d4002 	push	{r1, lr}
   10a94:	e3a00008 	mov	r0, #8
   10a98:	ebfffe7c 	bl	10490 <raise@plt>
   10a9c:	e8bd8002 	pop	{r1, pc}

00010aa0 <__libc_csu_init>:
   10aa0:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
   10aa4:	e1a07000 	mov	r7, r0
   10aa8:	e59f6048 	ldr	r6, [pc, #72]	; 10af8 <__libc_csu_init+0x58>
   10aac:	e59f5048 	ldr	r5, [pc, #72]	; 10afc <__libc_csu_init+0x5c>
   10ab0:	e08f6006 	add	r6, pc, r6
   10ab4:	e08f5005 	add	r5, pc, r5
   10ab8:	e0466005 	sub	r6, r6, r5
   10abc:	e1a08001 	mov	r8, r1
   10ac0:	e1a09002 	mov	r9, r2
   10ac4:	ebfffe69 	bl	10470 <_init>
   10ac8:	e1b06146 	asrs	r6, r6, #2
   10acc:	08bd87f0 	popeq	{r4, r5, r6, r7, r8, r9, sl, pc}
   10ad0:	e3a04000 	mov	r4, #0
   10ad4:	e2844001 	add	r4, r4, #1
   10ad8:	e4953004 	ldr	r3, [r5], #4
   10adc:	e1a02009 	mov	r2, r9
   10ae0:	e1a01008 	mov	r1, r8
   10ae4:	e1a00007 	mov	r0, r7
   10ae8:	e12fff33 	blx	r3
   10aec:	e1560004 	cmp	r6, r4
   10af0:	1afffff7 	bne	10ad4 <__libc_csu_init+0x34>
   10af4:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
   10af8:	00010454 	.word	0x00010454
   10afc:	0001044c 	.word	0x0001044c

00010b00 <__libc_csu_fini>:
   10b00:	e12fff1e 	bx	lr

Disassembly of section .fini:

00010b04 <_fini>:
   10b04:	e92d4008 	push	{r3, lr}
   10b08:	e8bd8008 	pop	{r3, pc}