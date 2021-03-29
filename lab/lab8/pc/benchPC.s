	.file	"benchPC.cc"
	.text
	.p2align 4
	.globl	_Z15readOneLocationPji
	.type	_Z15readOneLocationPji, @function
_Z15readOneLocationPji:
.LFB2424:
	.cfi_startproc
	testl	%esi, %esi
	jle	.L3
	movl	(%rdi), %eax
	ret
	.p2align 4,,10
	.p2align 3
.L3:
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE2424:
	.size	_Z15readOneLocationPji, .-_Z15readOneLocationPji
	.p2align 4
	.globl	_Z9readArrayPji
	.type	_Z9readArrayPji, @function
_Z9readArrayPji:
.LFB2425:
	.cfi_startproc
	testl	%esi, %esi
	jle	.L7
	movslq	%esi, %rsi
	movl	(%rdi,%rsi,4), %eax
	ret
	.p2align 4,,10
	.p2align 3
.L7:
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE2425:
	.size	_Z9readArrayPji, .-_Z9readArrayPji
	.p2align 4
	.globl	_Z10writeArrayPji
	.type	_Z10writeArrayPji, @function
_Z10writeArrayPji:
.LFB2426:
	.cfi_startproc
	testl	%esi, %esi
	jle	.L9
	movslq	%esi, %rsi
	movl	$0, (%rdi,%rsi,4)
.L9:
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE2426:
	.size	_Z10writeArrayPji, .-_Z10writeArrayPji
	.p2align 4
	.globl	_Z2b3j
	.type	_Z2b3j, @function
_Z2b3j:
.LFB2430:
	.cfi_startproc
	testl	%edi, %edi
	je	.L13
	xorl	%eax, %eax
	xorl	%r8d, %r8d
	.p2align 4,,10
	.p2align 3
.L12:
	addl	%eax, %r8d
	addl	$1, %eax
	cmpl	%eax, %edi
	jne	.L12
	movl	%r8d, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L13:
	xorl	%r8d, %r8d
	movl	%r8d, %eax
	ret
	.cfi_endproc
.LFE2430:
	.size	_Z2b3j, .-_Z2b3j
	.p2align 4
	.globl	_Z2b4j
	.type	_Z2b4j, @function
_Z2b4j:
.LFB2432:
	.cfi_startproc
	xorl	%eax, %eax
	testl	%edi, %edi
	je	.L18
	.p2align 4,,10
	.p2align 3
.L17:
	addl	%edi, %eax
	subl	$1, %edi
	jne	.L17
	ret
	.p2align 4,,10
	.p2align 3
.L18:
	ret
	.cfi_endproc
.LFE2432:
	.size	_Z2b4j, .-_Z2b4j
	.p2align 4
	.globl	_Z2b5j
	.type	_Z2b5j, @function
_Z2b5j:
.LFB2433:
	.cfi_startproc
	testl	%edi, %edi
	je	.L23
	addl	$1, %edi
	movl	$1, %eax
	movl	$1, %r8d
	.p2align 4,,10
	.p2align 3
.L22:
	imull	%eax, %r8d
	addl	$1, %eax
	cmpl	%eax, %edi
	jne	.L22
	movl	%r8d, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L23:
	movl	$1, %r8d
	movl	%r8d, %eax
	ret
	.cfi_endproc
.LFE2433:
	.size	_Z2b5j, .-_Z2b5j
	.p2align 4
	.globl	_Z2b6j
	.type	_Z2b6j, @function
_Z2b6j:
.LFB2434:
	.cfi_startproc
	testl	%edi, %edi
	je	.L28
	addl	$1, %edi
	movl	$1, %ecx
	movl	$100200301, %eax
	.p2align 4,,10
	.p2align 3
.L27:
	xorl	%edx, %edx
	divl	%ecx
	addl	$1, %ecx
	cmpl	%ecx, %edi
	jne	.L27
	ret
	.p2align 4,,10
	.p2align 3
.L28:
	movl	$100200301, %eax
	ret
	.cfi_endproc
.LFE2434:
	.size	_Z2b6j, .-_Z2b6j
	.p2align 4
	.globl	_Z2b7j
	.type	_Z2b7j, @function
_Z2b7j:
.LFB2435:
	.cfi_startproc
	testl	%edi, %edi
	je	.L33
	addl	$1, %edi
	movl	$1, %edx
	xorl	%r8d, %r8d
	.p2align 4,,10
	.p2align 3
.L32:
	movl	%edx, %eax
	movl	%edx, %ecx
	addl	$1, %edx
	imulq	$701575699, %rax, %rax
	shrq	$46, %rax
	imull	$100301, %eax, %eax
	subl	%eax, %ecx
	addl	%ecx, %r8d
	cmpl	%edx, %edi
	jne	.L32
	movl	%r8d, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L33:
	xorl	%r8d, %r8d
	movl	%r8d, %eax
	ret
	.cfi_endproc
.LFE2435:
	.size	_Z2b7j, .-_Z2b7j
	.p2align 4
	.globl	_Z6array2Pjj
	.type	_Z6array2Pjj, @function
_Z6array2Pjj:
.LFB2437:
	.cfi_startproc
	movl	%esi, %edx
	movl	%esi, %ecx
	subl	$1, %edx
	je	.L38
	movl	%edx, %edx
	salq	$2, %rdx
	leaq	-4(%rdi,%rdx), %rsi
	leaq	(%rdi,%rdx), %rax
	leal	-2(%rcx), %edx
	salq	$2, %rdx
	subq	%rdx, %rsi
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L37:
	movl	(%rax), %ecx
	subq	$4, %rax
	addq	%rcx, %rdx
	cmpq	%rsi, %rax
	jne	.L37
	movl	(%rdi), %eax
	addq	%rdx, %rax
	ret
	.p2align 4,,10
	.p2align 3
.L38:
	movl	(%rdi), %eax
	xorl	%edx, %edx
	addq	%rdx, %rax
	ret
	.cfi_endproc
.LFE2437:
	.size	_Z6array2Pjj, .-_Z6array2Pjj
	.p2align 4
	.globl	_Z6array3Pjj
	.type	_Z6array3Pjj, @function
_Z6array3Pjj:
.LFB2438:
	.cfi_startproc
	testl	%esi, %esi
	je	.L46
	movl	%esi, %eax
	movl	%esi, %edx
	xorl	%r8d, %r8d
	leaq	(%rdi,%rax,4), %rcx
	andl	$1, %edx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L43:
	testl	%edx, %edx
	jne	.L42
	movl	(%rcx), %edi
	addq	%rdi, %r8
.L42:
	addl	$1, %eax
	cmpl	%esi, %eax
	jne	.L43
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L45:
	testl	%edx, %edx
	je	.L44
	movl	(%rcx), %edi
	addq	%rdi, %r8
.L44:
	addl	$1, %eax
	cmpl	%esi, %eax
	jne	.L45
	movq	%r8, %rax
	ret
	.p2align 4,,10
	.p2align 3
.L46:
	xorl	%r8d, %r8d
	movq	%r8, %rax
	ret
	.cfi_endproc
.LFE2438:
	.size	_Z6array3Pjj, .-_Z6array3Pjj
	.p2align 4
	.globl	_Z6array4Pjj
	.type	_Z6array4Pjj, @function
_Z6array4Pjj:
.LFB2439:
	.cfi_startproc
	testl	%esi, %esi
	je	.L72
	leal	-1(%rsi), %eax
	movq	%rdi, %rdx
	shrl	$2, %eax
	salq	$4, %rax
	leaq	16(%rdi,%rax), %r8
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L58:
	movl	(%rdx), %ecx
	addq	$16, %rdx
	addq	%rcx, %rax
	cmpq	%rdx, %r8
	jne	.L58
	cmpl	$1, %esi
	je	.L73
	leal	-2(%rsi), %ecx
	leaq	4(%rdi), %rdx
	shrl	$2, %ecx
	salq	$4, %rcx
	leaq	20(%rdi,%rcx), %r8
	.p2align 4,,10
	.p2align 3
.L61:
	movl	(%rdx), %ecx
	addq	$16, %rdx
	addq	%rcx, %rax
	cmpq	%r8, %rdx
	jne	.L61
	cmpl	$2, %esi
	jbe	.L59
	leal	-3(%rsi), %ecx
	leaq	8(%rdi), %rdx
	shrl	$2, %ecx
	salq	$4, %rcx
	leaq	24(%rdi,%rcx), %r8
	.p2align 4,,10
	.p2align 3
.L63:
	movl	(%rdx), %ecx
	addq	$16, %rdx
	addq	%rcx, %rax
	cmpq	%rdx, %r8
	jne	.L63
.L59:
	cmpl	$3, %esi
	jbe	.L74
	subl	$4, %esi
	leaq	12(%rdi), %rdx
	shrl	$2, %esi
	salq	$4, %rsi
	leaq	28(%rdi,%rsi), %rsi
	.p2align 4,,10
	.p2align 3
.L64:
	movl	(%rdx), %ecx
	addq	$16, %rdx
	addq	%rcx, %rax
	cmpq	%rdx, %rsi
	jne	.L64
	ret
	.p2align 4,,10
	.p2align 3
.L72:
	xorl	%eax, %eax
	ret
.L73:
	ret
.L74:
	ret
	.cfi_endproc
.LFE2439:
	.size	_Z6array4Pjj, .-_Z6array4Pjj
	.p2align 4
	.globl	_Z6array5Pjj
	.type	_Z6array5Pjj, @function
_Z6array5Pjj:
.LFB2440:
	.cfi_startproc
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	.p2align 4,,10
	.p2align 3
.L78:
	cmpl	%ecx, %esi
	jbe	.L76
	movl	%ecx, %eax
	.p2align 4,,10
	.p2align 3
.L77:
	movl	%eax, %edx
	addl	$32, %eax
	movl	(%rdi,%rdx,4), %edx
	addq	%rdx, %r8
	cmpl	%eax, %esi
	ja	.L77
.L76:
	addl	$1, %ecx
	cmpl	$32, %ecx
	jne	.L78
	movq	%r8, %rax
	ret
	.cfi_endproc
.LFE2440:
	.size	_Z6array5Pjj, .-_Z6array5Pjj
	.p2align 4
	.globl	_Z6array6Pjj
	.type	_Z6array6Pjj, @function
_Z6array6Pjj:
.LFB2441:
	.cfi_startproc
	movl	%esi, %ecx
	xorl	%r8d, %r8d
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L84:
	cmpl	%esi, %ecx
	jbe	.L82
	movl	%esi, %eax
	.p2align 4,,10
	.p2align 3
.L83:
	movl	%eax, %edx
	addl	$1024, %eax
	movl	(%rdi,%rdx,4), %edx
	addq	%rdx, %r8
	cmpl	%eax, %ecx
	ja	.L83
.L82:
	addl	$1, %esi
	cmpl	$1024, %esi
	jne	.L84
	movq	%r8, %rax
	ret
	.cfi_endproc
.LFE2441:
	.size	_Z6array6Pjj, .-_Z6array6Pjj
	.p2align 4
	.globl	_Z2b1j
	.type	_Z2b1j, @function
_Z2b1j:
.LFB2427:
	.cfi_startproc
	testl	%edi, %edi
	je	.L95
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%edi, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	xorl	%ebx, %ebx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	.p2align 4,,10
	.p2align 3
.L89:
	call	_Z1fv@PLT
	addl	$1, %ebx
	cmpl	%ebp, %ebx
	jne	.L89
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L95:
	.cfi_restore 3
	.cfi_restore 6
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE2427:
	.size	_Z2b1j, .-_Z2b1j
	.p2align 4
	.globl	_Z2b2j
	.type	_Z2b2j, @function
_Z2b2j:
.LFB2429:
	.cfi_startproc
	testl	%edi, %edi
	je	.L106
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%edi, %ebx
	.p2align 4,,10
	.p2align 3
.L100:
	call	_Z1fv@PLT
	subl	$1, %ebx
	jne	.L100
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L106:
	.cfi_restore 3
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE2429:
	.size	_Z2b2j, .-_Z2b2j
	.p2align 4
	.globl	_Z3b1bj
	.type	_Z3b1bj, @function
_Z3b1bj:
.LFB2428:
	.cfi_startproc
	testl	%edi, %edi
	je	.L117
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%edi, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	xorl	%ebx, %ebx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	.p2align 4,,10
	.p2align 3
.L111:
	movl	%ebx, %r8d
	movl	%ebx, %edi
	movl	$7, %ecx
	movl	$5, %edx
	movl	$3, %esi
	addl	$1, %ebx
	call	_Z1fiiiii@PLT
	cmpl	%ebp, %ebx
	jne	.L111
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L117:
	.cfi_restore 3
	.cfi_restore 6
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE2428:
	.size	_Z3b1bj, .-_Z3b1bj
	.p2align 4
	.globl	_Z3b3bm
	.type	_Z3b3bm, @function
_Z3b3bm:
.LFB2431:
	.cfi_startproc
	testq	%rdi, %rdi
	je	.L123
	xorl	%eax, %eax
	xorl	%r8d, %r8d
	.p2align 4,,10
	.p2align 3
.L122:
	addq	%rax, %r8
	addq	$1, %rax
	cmpq	%rdi, %rax
	jne	.L122
	movq	%r8, %rax
	ret
	.p2align 4,,10
	.p2align 3
.L123:
	xorl	%r8d, %r8d
	movq	%r8, %rax
	ret
	.cfi_endproc
.LFE2431:
	.size	_Z3b3bm, .-_Z3b3bm
	.p2align 4
	.globl	_Z6array1PKjj
	.type	_Z6array1PKjj, @function
_Z6array1PKjj:
.LFB2436:
	.cfi_startproc
	testl	%esi, %esi
	je	.L128
	leal	-1(%rsi), %eax
	leaq	4(%rdi,%rax,4), %rcx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L127:
	movl	(%rdi), %edx
	addq	$4, %rdi
	addq	%rdx, %rax
	cmpq	%rcx, %rdi
	jne	.L127
	ret
	.p2align 4,,10
	.p2align 3
.L128:
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE2436:
	.size	_Z6array1PKjj, .-_Z6array1PKjj
	.section	.text._Z10benchmark1IPFjjEEvPKcT_jj,"axG",@progbits,_Z10benchmark1IPFjjEEvPKcT_jj,comdat
	.p2align 4
	.weak	_Z10benchmark1IPFjjEEvPKcT_jj
	.type	_Z10benchmark1IPFjjEEvPKcT_jj, @function
_Z10benchmark1IPFjjEEvPKcT_jj:
.LFB2702:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	%ecx, %eax
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	movq	%rsi, 16(%rsp)
	movl	%edx, 24(%rsp)
	movl	%ecx, 28(%rsp)
	movq	%fs:40, %rcx
	movq	%rcx, 40(%rsp)
	xorl	%ecx, %ecx
	testl	%eax, %eax
	je	.L130
	movq	%rdi, %r14
	xorl	%r13d, %r13d
	leaq	39(%rsp), %r15
	leaq	_ZSt4cout(%rip), %rbx
	jmp	.L134
	.p2align 4,,10
	.p2align 3
.L132:
	movq	%r14, %rdi
	call	strlen@PLT
	movq	%r14, %rsi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.L133:
	movq	(%rbx), %rax
	movq	%r12, %rsi
	movq	%rbx, %rdi
	addl	$1, %r13d
	movq	-24(%rax), %rax
	movq	$18, 16(%rbx,%rax)
	call	_ZNSo9_M_insertImEERSoT_@PLT
	movl	$1, %edx
	movq	%r15, %rsi
	movb	$9, 39(%rsp)
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	8(%rsp), %rsi
	movq	%rax, %rdi
	subq	%rbp, %rsi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movl	$1, %edx
	movq	%r15, %rsi
	movb	$10, 39(%rsp)
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	cmpl	%r13d, 28(%rsp)
	je	.L130
.L134:
	call	clock@PLT
	movl	24(%rsp), %edi
	movq	%rax, %rbp
	movq	16(%rsp), %rax
	call	*%rax
	movl	%eax, %r12d
	call	clock@PLT
	movq	%rax, 8(%rsp)
	movq	(%rbx), %rax
	movq	-24(%rax), %rdx
	movq	$12, 16(%rbx,%rdx)
	testq	%r14, %r14
	jne	.L132
	movq	-24(%rax), %rdi
	addq	%rbx, %rdi
	movl	32(%rdi), %esi
	orl	$1, %esi
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
	jmp	.L133
	.p2align 4,,10
	.p2align 3
.L130:
	movq	40(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L141
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L141:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE2702:
	.size	_Z10benchmark1IPFjjEEvPKcT_jj, .-_Z10benchmark1IPFjjEEvPKcT_jj
	.section	.text._Z10benchmark2IPFjPjiEEvPKcT_jjj,"axG",@progbits,_Z10benchmark2IPFjPjiEEvPKcT_jjj,comdat
	.p2align 4
	.weak	_Z10benchmark2IPFjPjiEEvPKcT_jjj
	.type	_Z10benchmark2IPFjPjiEEvPKcT_jjj, @function
_Z10benchmark2IPFjPjiEEvPKcT_jjj:
.LFB2704:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rsi, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%ecx, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%edx, %ebx
	movq	%rbx, %r13
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	movq	%rdi, 24(%rsp)
	leaq	0(,%rbx,4), %rdi
	movl	%r8d, 36(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 56(%rsp)
	xorl	%eax, %eax
	call	_Znam@PLT
	movq	%rax, %rbp
	xorl	%eax, %eax
	testl	%ebx, %ebx
	je	.L146
	.p2align 4,,10
	.p2align 3
.L147:
	movl	%eax, 0(%rbp,%rax,4)
	addq	$1, %rax
	cmpq	%rax, %rbx
	jne	.L147
.L146:
	leaq	55(%rsp), %rax
	movl	$0, 32(%rsp)
	movq	%rax, 40(%rsp)
	movl	36(%rsp), %eax
	testl	%eax, %eax
	je	.L152
	.p2align 4,,10
	.p2align 3
.L153:
	call	clock@PLT
	movq	%rax, 8(%rsp)
	testl	%r12d, %r12d
	je	.L155
	xorl	%r15d, %r15d
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L149:
	movl	%r13d, %esi
	movq	%rbp, %rdi
	addl	$1, %r15d
	call	*%r14
	addl	%eax, %ebx
	cmpl	%r15d, %r12d
	jne	.L149
.L148:
	call	clock@PLT
	leaq	_ZSt4cout(%rip), %rcx
	cmpq	$0, 24(%rsp)
	movq	%rax, 16(%rsp)
	movq	(%rcx), %rax
	movq	-24(%rax), %rdx
	movq	$12, 16(%rcx,%rdx)
	je	.L161
	movq	24(%rsp), %r15
	movq	%r15, %rdi
	call	strlen@PLT
	movq	%r15, %rsi
	leaq	_ZSt4cout(%rip), %rdi
	movq	%rax, %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.L151:
	leaq	_ZSt4cout(%rip), %rdx
	movq	%rbx, %rsi
	movq	(%rdx), %rax
	movq	%rdx, %rdi
	movq	-24(%rax), %rax
	movq	$18, 16(%rdx,%rax)
	call	_ZNSo9_M_insertImEERSoT_@PLT
	movq	40(%rsp), %rbx
	movl	$1, %edx
	movb	$9, 55(%rsp)
	movq	%rax, %rdi
	movq	%rbx, %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rax, %rdi
	movq	16(%rsp), %rax
	subq	8(%rsp), %rax
	movq	%rax, %rsi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movl	$1, %edx
	movq	%rbx, %rsi
	movb	$10, 55(%rsp)
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	addl	$1, 32(%rsp)
	movl	32(%rsp), %eax
	cmpl	36(%rsp), %eax
	jne	.L153
.L152:
	movq	56(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L162
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbp, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	_ZdaPv@PLT
	.p2align 4,,10
	.p2align 3
.L161:
	.cfi_restore_state
	movq	-24(%rax), %rdi
	addq	%rcx, %rdi
	movl	32(%rdi), %esi
	orl	$1, %esi
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
	jmp	.L151
	.p2align 4,,10
	.p2align 3
.L155:
	xorl	%ebx, %ebx
	jmp	.L148
.L162:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE2704:
	.size	_Z10benchmark2IPFjPjiEEvPKcT_jjj, .-_Z10benchmark2IPFjPjiEEvPKcT_jjj
	.section	.text._Z10benchmark2IPFmPjjEEvPKcT_jjj,"axG",@progbits,_Z10benchmark2IPFmPjjEEvPKcT_jjj,comdat
	.p2align 4
	.weak	_Z10benchmark2IPFmPjjEEvPKcT_jjj
	.type	_Z10benchmark2IPFmPjjEEvPKcT_jjj, @function
_Z10benchmark2IPFmPjjEEvPKcT_jjj:
.LFB2706:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rsi, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%ecx, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%edx, %ebx
	movq	%rbx, %r13
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	movq	%rdi, 24(%rsp)
	leaq	0(,%rbx,4), %rdi
	movl	%r8d, 36(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 56(%rsp)
	xorl	%eax, %eax
	call	_Znam@PLT
	movq	%rax, %rbp
	xorl	%eax, %eax
	testl	%ebx, %ebx
	je	.L167
	.p2align 4,,10
	.p2align 3
.L168:
	movl	%eax, 0(%rbp,%rax,4)
	addq	$1, %rax
	cmpq	%rax, %rbx
	jne	.L168
.L167:
	leaq	55(%rsp), %rax
	movl	$0, 32(%rsp)
	movq	%rax, 40(%rsp)
	movl	36(%rsp), %eax
	testl	%eax, %eax
	je	.L173
	.p2align 4,,10
	.p2align 3
.L174:
	call	clock@PLT
	movq	%rax, 8(%rsp)
	testl	%r12d, %r12d
	je	.L176
	xorl	%r15d, %r15d
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L170:
	movl	%r13d, %esi
	movq	%rbp, %rdi
	addl	$1, %r15d
	call	*%r14
	addl	%eax, %ebx
	cmpl	%r15d, %r12d
	jne	.L170
.L169:
	call	clock@PLT
	leaq	_ZSt4cout(%rip), %rcx
	cmpq	$0, 24(%rsp)
	movq	%rax, 16(%rsp)
	movq	(%rcx), %rax
	movq	-24(%rax), %rdx
	movq	$12, 16(%rcx,%rdx)
	je	.L182
	movq	24(%rsp), %r15
	movq	%r15, %rdi
	call	strlen@PLT
	movq	%r15, %rsi
	leaq	_ZSt4cout(%rip), %rdi
	movq	%rax, %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.L172:
	leaq	_ZSt4cout(%rip), %rdx
	movq	%rbx, %rsi
	movq	(%rdx), %rax
	movq	%rdx, %rdi
	movq	-24(%rax), %rax
	movq	$18, 16(%rdx,%rax)
	call	_ZNSo9_M_insertImEERSoT_@PLT
	movq	40(%rsp), %rbx
	movl	$1, %edx
	movb	$9, 55(%rsp)
	movq	%rax, %rdi
	movq	%rbx, %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rax, %rdi
	movq	16(%rsp), %rax
	subq	8(%rsp), %rax
	movq	%rax, %rsi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movl	$1, %edx
	movq	%rbx, %rsi
	movb	$10, 55(%rsp)
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	addl	$1, 32(%rsp)
	movl	32(%rsp), %eax
	cmpl	36(%rsp), %eax
	jne	.L174
.L173:
	movq	56(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L183
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbp, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	_ZdaPv@PLT
	.p2align 4,,10
	.p2align 3
.L182:
	.cfi_restore_state
	movq	-24(%rax), %rdi
	addq	%rcx, %rdi
	movl	32(%rdi), %esi
	orl	$1, %esi
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
	jmp	.L172
	.p2align 4,,10
	.p2align 3
.L176:
	xorl	%ebx, %ebx
	jmp	.L169
.L183:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE2706:
	.size	_Z10benchmark2IPFmPjjEEvPKcT_jjj, .-_Z10benchmark2IPFmPjjEEvPKcT_jjj
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"b1"
.LC1:
	.string	"b1b"
.LC2:
	.string	"b2"
.LC3:
	.string	"b3"
.LC4:
	.string	"b3b"
.LC5:
	.string	"b4"
.LC6:
	.string	"b5"
.LC7:
	.string	"b6"
.LC8:
	.string	"b7"
.LC9:
	.string	"readOneLocation"
.LC10:
	.string	"readArray"
.LC11:
	.string	"writeArray"
.LC12:
	.string	"array1"
.LC13:
	.string	"array2"
.LC14:
	.string	"array3"
.LC15:
	.string	"array4"
.LC16:
	.string	"array5"
.LC17:
	.string	"array6"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB2444:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	$5, %ecx
	movl	$2000000000, %edx
	leaq	_Z2b1j(%rip), %rsi
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	leaq	.LC0(%rip), %rdi
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movl	$5, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	leaq	_ZSt4cout(%rip), %rbx
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	leaq	23(%rsp), %r12
	call	_Z10benchmark1IPFjjEEvPKcT_jj
	movl	$5, %ecx
	movl	$2000000000, %edx
	leaq	_Z3b1bj(%rip), %rsi
	leaq	.LC1(%rip), %rdi
	call	_Z10benchmark1IPFjjEEvPKcT_jj
	movl	$5, %ecx
	movl	$2000000000, %edx
	leaq	_Z2b2j(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	call	_Z10benchmark1IPFjjEEvPKcT_jj
	movl	$5, %ecx
	leaq	.LC3(%rip), %rdi
	movl	$2000000000, %edx
	leaq	_Z2b3j(%rip), %rsi
	call	_Z10benchmark1IPFjjEEvPKcT_jj
	movl	$2000000000, %edi
	call	_Z3b3bm
	movq	%rax, %r14
	.p2align 4,,10
	.p2align 3
.L185:
	call	clock@PLT
	movq	%rax, %r15
	call	clock@PLT
	movl	$3, %edx
	leaq	.LC4(%rip), %rsi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	$12, 16(%rbx,%rax)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%rbx), %rax
	movq	%r14, %rsi
	movq	%rbx, %rdi
	movq	-24(%rax), %rax
	movq	$18, 16(%rbx,%rax)
	call	_ZNSo9_M_insertImEERSoT_@PLT
	movl	$1, %edx
	movq	%r12, %rsi
	movb	$9, 23(%rsp)
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbp, %rsi
	subq	%r15, %rsi
	movq	%rax, %rdi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movl	$1, %edx
	movq	%r12, %rsi
	movb	$10, 23(%rsp)
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	subl	$1, %r13d
	jne	.L185
	movl	$5, %ecx
	movl	$2000000000, %edx
	leaq	_Z2b4j(%rip), %rsi
	leaq	.LC5(%rip), %rdi
	call	_Z10benchmark1IPFjjEEvPKcT_jj
	movl	$5, %ecx
	movl	$2000000000, %edx
	leaq	_Z2b5j(%rip), %rsi
	leaq	.LC6(%rip), %rdi
	call	_Z10benchmark1IPFjjEEvPKcT_jj
	movl	$5, %ecx
	movl	$2000000000, %edx
	leaq	_Z2b6j(%rip), %rsi
	leaq	.LC7(%rip), %rdi
	call	_Z10benchmark1IPFjjEEvPKcT_jj
	movl	$5, %ecx
	movl	$2000000000, %edx
	leaq	_Z2b7j(%rip), %rsi
	leaq	.LC8(%rip), %rdi
	call	_Z10benchmark1IPFjjEEvPKcT_jj
	movl	$5, %r8d
	movl	$40, %ecx
	movl	$10000000, %edx
	leaq	_Z15readOneLocationPji(%rip), %rsi
	leaq	.LC9(%rip), %rdi
	call	_Z10benchmark2IPFjPjiEEvPKcT_jjj
	movl	$5, %r8d
	movl	$40, %ecx
	movl	$10000000, %edx
	leaq	_Z9readArrayPji(%rip), %rsi
	leaq	.LC10(%rip), %rdi
	call	_Z10benchmark2IPFjPjiEEvPKcT_jjj
	movl	$5, %r8d
	movl	$40, %ecx
	movl	$10000000, %edx
	leaq	_Z10writeArrayPji(%rip), %rsi
	leaq	.LC11(%rip), %rdi
	call	_Z10benchmark2IPFjPjiEEvPKcT_jjj
	movl	$40000000, %edi
	call	_Znam@PLT
	movq	%rax, %r14
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L186:
	movl	%eax, (%r14,%rax,4)
	addq	$1, %rax
	cmpq	$10000000, %rax
	jne	.L186
	movl	$5, 12(%rsp)
	leaq	_ZSt4cout(%rip), %r15
	.p2align 4,,10
	.p2align 3
.L187:
	call	clock@PLT
	movl	$10000000, %esi
	movq	%r14, %rdi
	movq	%rax, %r13
	call	_Z6array1PKjj
	movq	%rax, %rbp
	call	clock@PLT
	movl	$6, %edx
	leaq	.LC12(%rip), %rsi
	movq	%r15, %rdi
	movq	%rax, (%rsp)
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	$12, 16(%rbx,%rax)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%rbx), %rax
	leal	0(%rbp,%rbp,4), %esi
	movq	%r15, %rdi
	sall	$3, %esi
	movq	-24(%rax), %rax
	movq	$18, 16(%rbx,%rax)
	call	_ZNSo9_M_insertImEERSoT_@PLT
	movl	$1, %edx
	movq	%r12, %rsi
	movb	$9, 23(%rsp)
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%rsp), %rsi
	movq	%rax, %rdi
	subq	%r13, %rsi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movl	$1, %edx
	movq	%r12, %rsi
	movb	$10, 23(%rsp)
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	subl	$1, 12(%rsp)
	jne	.L187
	movq	%r14, %rdi
	call	_ZdaPv@PLT
	movl	$5, %r8d
	movl	$40, %ecx
	movl	$10000000, %edx
	leaq	_Z6array2Pjj(%rip), %rsi
	leaq	.LC13(%rip), %rdi
	call	_Z10benchmark2IPFmPjjEEvPKcT_jjj
	movl	$5, %r8d
	movl	$40, %ecx
	movl	$10000000, %edx
	leaq	_Z6array3Pjj(%rip), %rsi
	leaq	.LC14(%rip), %rdi
	call	_Z10benchmark2IPFmPjjEEvPKcT_jjj
	movl	$5, %r8d
	movl	$40, %ecx
	movl	$10000000, %edx
	leaq	_Z6array4Pjj(%rip), %rsi
	leaq	.LC15(%rip), %rdi
	call	_Z10benchmark2IPFmPjjEEvPKcT_jjj
	movl	$5, %r8d
	movl	$40, %ecx
	movl	$10000000, %edx
	leaq	_Z6array5Pjj(%rip), %rsi
	leaq	.LC16(%rip), %rdi
	call	_Z10benchmark2IPFmPjjEEvPKcT_jjj
	movl	$5, %r8d
	movl	$40, %ecx
	movl	$10000000, %edx
	leaq	_Z6array6Pjj(%rip), %rsi
	leaq	.LC17(%rip), %rdi
	call	_Z10benchmark2IPFmPjjEEvPKcT_jjj
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L193
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L193:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE2444:
	.size	main, .-main
	.p2align 4
	.type	_GLOBAL__sub_I__Z15readOneLocationPji, @function
_GLOBAL__sub_I__Z15readOneLocationPji:
.LFB2964:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	leaq	_ZStL8__ioinit(%rip), %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZStL8__ioinit(%rip), %rsi
	jmp	__cxa_atexit@PLT
	.cfi_endproc
.LFE2964:
	.size	_GLOBAL__sub_I__Z15readOneLocationPji, .-_GLOBAL__sub_I__Z15readOneLocationPji
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z15readOneLocationPji
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.ident	"GCC: (GNU) 10.2.0"
	.section	.note.GNU-stack,"",@progbits
