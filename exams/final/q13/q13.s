	.arch armv6
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"q13.cc"
	.text
	.section	.rodata
	.align	2
	.type	_ZStL19piecewise_construct, %object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.space	1
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,4
	.text
	.align	2
	.global	_Z3mmmPdi
	.arch armv6
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z3mmmPdi, %function
_Z3mmmPdi:
	.fnstart
.LFB1512:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #60
	str	r0, [fp, #-56]
	str	r1, [fp, #-60]
	mov	r2, #0
	mov	r3, #0
	strd	r2, [fp, #-12]
	mov	r2, #0
	mov	r3, #0
	strd	r2, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-24]
.L3:
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-60]
	cmp	r2, r3
	bge	.L2
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #3
	ldr	r2, [fp, #-56]
	add	r3, r2, r3
	vldr.64	d7, [r3]
	vldr.64	d6, [fp, #-12]
	vadd.f64	d7, d6, d7
	vstr.64	d7, [fp, #-12]
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
	b	.L3
.L2:
	ldr	r3, [fp, #-60]
	vmov	s15, r3	@ int
	vcvt.f64.s32	d6, s15
	vldr.64	d5, [fp, #-12]
	vdiv.f64	d7, d5, d6
	vstr.64	d7, [fp, #-12]
	ldr	r3, [fp, #-60]
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L4
	ldr	r3, [fp, #-60]
	lsr	r2, r3, #31
	add	r3, r2, r3
	asr	r3, r3, #1
	lsl	r3, r3, #3
	ldr	r2, [fp, #-56]
	add	r3, r2, r3
	ldrd	r2, [r3]
	strd	r2, [fp, #-36]
	ldr	r3, [fp, #-60]
	lsr	r2, r3, #31
	add	r3, r2, r3
	asr	r3, r3, #1
	sub	r3, r3, #-536870911
	lsl	r3, r3, #3
	ldr	r2, [fp, #-56]
	add	r3, r2, r3
	ldrd	r2, [r3]
	strd	r2, [fp, #-44]
	vldr.64	d6, [fp, #-36]
	vldr.64	d7, [fp, #-44]
	vadd.f64	d6, d6, d7
	vldr.64	d5, .L7
	vdiv.f64	d7, d6, d5
	vstr.64	d7, [fp, #-20]
	b	.L5
.L4:
	ldr	r3, [fp, #-60]
	lsr	r2, r3, #31
	add	r3, r2, r3
	asr	r3, r3, #1
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-48]
	lsl	r3, r3, #3
	ldr	r2, [fp, #-56]
	add	r3, r2, r3
	ldrd	r2, [r3]
	strd	r2, [fp, #-20]
.L5:
	vldr.64	d6, [fp, #-12]
	vldr.64	d7, [fp, #-20]
	vsub.f64	d7, d6, d7
	vmov.f64	d0, d7
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L8:
	.align	3
.L7:
	.word	0
	.word	1073741824
	.cantunwind
	.fnend
	.size	_Z3mmmPdi, .-_Z3mmmPdi
	.section	.rodata
	.align	3
.LC0:
	.word	0
	.word	1074266112
	.word	0
	.word	1074790400
	.word	0
	.word	1075052544
	.word	0
	.word	1075314688
	.word	0
	.word	1075970048
	.align	3
.LC1:
	.word	0
	.word	1074266112
	.word	0
	.word	1074790400
	.word	0
	.word	1075052544
	.word	0
	.word	1075314688
	.word	0
	.word	1075576832
	.word	0
	.word	1075970048
	.text
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu vfp
	.type	main, %function
main:
	.fnstart
.LFB1513:
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #88
	sub	sp, sp, #88
	ldr	r3, .L11
	sub	ip, fp, #44
	mov	lr, r3
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1}
	stm	ip, {r0, r1}
	sub	r3, fp, #44
	mov	r1, #5
	mov	r0, r3
	bl	_Z3mmmPdi
	vmov.f64	d7, d0
	vmov.f64	d0, d7
	ldr	r0, .L11+4
	bl	_ZNSolsEd
	mov	r3, r0
	mov	r1, #10
	mov	r0, r3
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	ldr	r3, .L11+8
	sub	ip, fp, #92
	mov	lr, r3
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1, r2, r3}
	stm	ip, {r0, r1, r2, r3}
	sub	r3, fp, #92
	mov	r1, #6
	mov	r0, r3
	bl	_Z3mmmPdi
	vmov.f64	d7, d0
	vmov.f64	d0, d7
	ldr	r0, .L11+4
	bl	_ZNSolsEd
	mov	r3, r0
	mov	r1, #10
	mov	r0, r3
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L12:
	.align	2
.L11:
	.word	.LC0
	.word	_ZSt4cout
	.word	.LC1
	.fnend
	.size	main, .-main
	.align	2
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z41__static_initialization_and_destruction_0ii, %function
_Z41__static_initialization_and_destruction_0ii:
	.fnstart
.LFB1996:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, [fp, #-8]
	cmp	r3, #1
	bne	.L15
	ldr	r3, [fp, #-12]
	ldr	r2, .L16
	cmp	r3, r2
	bne	.L15
	ldr	r0, .L16+4
	bl	_ZNSt8ios_base4InitC1Ev
	ldr	r2, .L16+8
	ldr	r1, .L16+12
	ldr	r0, .L16+4
	bl	__aeabi_atexit
.L15:
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L17:
	.align	2
.L16:
	.word	65535
	.word	_ZStL8__ioinit
	.word	__dso_handle
	.word	_ZNSt8ios_base4InitD1Ev
	.cantunwind
	.fnend
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.align	2
	.syntax unified
	.arm
	.fpu vfp
	.type	_GLOBAL__sub_I__Z3mmmPdi, %function
_GLOBAL__sub_I__Z3mmmPdi:
	.fnstart
.LFB1997:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	ldr	r1, .L19
	mov	r0, #1
	bl	_Z41__static_initialization_and_destruction_0ii
	pop	{fp, pc}
.L20:
	.align	2
.L19:
	.word	65535
	.cantunwind
	.fnend
	.size	_GLOBAL__sub_I__Z3mmmPdi, .-_GLOBAL__sub_I__Z3mmmPdi
	.section	.init_array,"aw"
	.align	2
	.word	_GLOBAL__sub_I__Z3mmmPdi
	.hidden	__dso_handle
	.ident	"GCC: (Raspbian 8.3.0-6+rpi1) 8.3.0"
	.section	.note.GNU-stack,"",%progbits
