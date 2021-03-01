	.arch armv6
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"test.cc"
	.text
	.align	2
	.global	_Z5counti
	.arch armv6
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z5counti, %function
_Z5counti:
	.fnstart
.LFB1534:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bic	r0, r0, r0, asr #31
	bx	lr
	.cantunwind
	.fnend
	.size	_Z5counti, .-_Z5counti
	.align	2
	.global	_Z9countDowni
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z9countDowni, %function
_Z9countDowni:
	.fnstart
.LFB1535:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r3, #0
	cmp	r0, r3
	movge	r0, r3
	bx	lr
	.cantunwind
	.fnend
	.size	_Z9countDowni, .-_Z9countDowni
	.align	2
	.global	_Z3sumii
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z3sumii, %function
_Z3sumii:
	.fnstart
.LFB1536:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, r1
	bx	lr
	.cantunwind
	.fnend
	.size	_Z3sumii, .-_Z3sumii
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu vfp
	.type	main, %function
main:
	.fnstart
.LFB1537:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #0
	bx	lr
	.cantunwind
	.fnend
	.size	main, .-main
	.align	2
	.syntax unified
	.arm
	.fpu vfp
	.type	_GLOBAL__sub_I__Z5counti, %function
_GLOBAL__sub_I__Z5counti:
	.fnstart
.LFB2018:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L10
	mov	r0, r4
	bl	_ZNSt8ios_base4InitC1Ev
	mov	r0, r4
	ldr	r2, .L10+4
	ldr	r1, .L10+8
	pop	{r4, lr}
	b	__aeabi_atexit
.L11:
	.align	2
.L10:
	.word	.LANCHOR0
	.word	__dso_handle
	.word	_ZNSt8ios_base4InitD1Ev
	.cantunwind
	.fnend
	.size	_GLOBAL__sub_I__Z5counti, .-_GLOBAL__sub_I__Z5counti
	.section	.init_array,"aw"
	.align	2
	.word	_GLOBAL__sub_I__Z5counti
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	_ZStL8__ioinit, %object
	.size	_ZStL8__ioinit, 1
_ZStL8__ioinit:
	.space	1
	.hidden	__dso_handle
	.ident	"GCC: (Raspbian 8.3.0-6+rpi1) 8.3.0"
	.section	.note.GNU-stack,"",%progbits
