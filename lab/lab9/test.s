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
	.file	"test.cc"
	.text
	.section	.rodata
	.align	2
	.type	_ZL5INT32, %object
	.size	_ZL5INT32, 4
_ZL5INT32:
	.word	1221
	.global	STRING
	.data
	.align	2
	.type	STRING, %object
	.size	STRING, 5
STRING:
	.ascii	"test\000"
	.section	.rodata
	.align	2
	.type	_ZL8msg_done, %object
	.size	_ZL8msg_done, 77
_ZL8msg_done:
	.ascii	"Your skill and expertise has foiled my plans. Congr"
	.ascii	"ats on defusing my bomb!\012\000"
	.align	2
	.type	_ZL6msg_ex, %object
	.size	_ZL6msg_ex, 30
_ZL6msg_ex:
	.ascii	"BOOM!\012The bomb has blown up.\012\000"
	.text
	.align	2
	.global	_Z12explode_bombv
	.arch armv6
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z12explode_bombv, %function
_Z12explode_bombv:
	.fnstart
.LFB13:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	ldr	r0, .L2
	bl	puts
	mov	r0, #0
	bl	exit
.L3:
	.align	2
.L2:
	.word	_ZL6msg_ex
	.fnend
	.size	_Z12explode_bombv, .-_Z12explode_bombv
	.section	.rodata
	.align	2
.LC0:
	.ascii	" %d\000"
	.text
	.align	2
	.global	_Z6phase1v
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z6phase1v, %function
_Z6phase1v:
	.fnstart
.LFB14:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #8
	sub	sp, sp, #8
	sub	r3, fp, #8
	mov	r1, r3
	ldr	r0, .L7
	bl	scanf
	ldr	r3, [fp, #-8]
	ldr	r2, .L7+4
	cmp	r3, r2
	beq	.L5
	bl	_Z12explode_bombv
.L5:
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L8:
	.align	2
.L7:
	.word	.LC0
	.word	1221
	.fnend
	.size	_Z6phase1v, .-_Z6phase1v
	.section	.rodata
	.align	2
.LC1:
	.ascii	" %d %d\000"
	.text
	.align	2
	.global	_Z6phase2v
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z6phase2v, %function
_Z6phase2v:
	.fnstart
.LFB15:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #8
	sub	sp, sp, #8
	sub	r2, fp, #12
	sub	r3, fp, #8
	mov	r1, r3
	ldr	r0, .L13
	bl	scanf
	ldr	r3, [fp, #-8]
	ldr	r2, .L13+4
	cmp	r3, r2
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L10
	bl	_Z12explode_bombv
.L10:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	ldr	r2, .L13+4
	cmp	r3, r2
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L11
	bl	_Z12explode_bombv
.L11:
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L14:
	.align	2
.L13:
	.word	.LC1
	.word	1221
	.fnend
	.size	_Z6phase2v, .-_Z6phase2v
	.section	.rodata
	.align	2
.LC2:
	.ascii	" %[^\012]\000"
	.text
	.align	2
	.global	_Z6phase3v
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z6phase3v, %function
_Z6phase3v:
	.fnstart
.LFB16:
	@ args = 0, pretend = 0, frame = 256
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #256
	sub	sp, sp, #256
	sub	r3, fp, #260
	mov	r1, r3
	ldr	r0, .L18
	bl	scanf
	sub	r3, fp, #260
	ldr	r1, .L18+4
	mov	r0, r3
	bl	strcmp
	mov	r3, r0
	cmp	r3, #0
	beq	.L16
	bl	_Z12explode_bombv
.L16:
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L19:
	.align	2
.L18:
	.word	.LC2
	.word	STRING
	.fnend
	.size	_Z6phase3v, .-_Z6phase3v
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu vfp
	.type	main, %function
main:
	.fnstart
.LFB17:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	bl	_Z6phase1v
	mov	r3, #0
	mov	r0, r3
	pop	{fp, pc}
	.fnend
	.size	main, .-main
	.ident	"GCC: (Raspbian 8.3.0-6+rpi1) 8.3.0"
	.section	.note.GNU-stack,"",%progbits
