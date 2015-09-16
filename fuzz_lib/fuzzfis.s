	.file	"fuzzfis.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.globl	FuzzFisSetup
	.def	FuzzFisSetup;	.scl	2;	.type	32;	.endef
	.seh_proc	FuzzFisSetup
FuzzFisSetup:
.LFB7:
	.file 1 "fuzzfis.c"
	.loc 1 7 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movss	%xmm2, 32(%rbp)
	movq	%r9, 40(%rbp)
	movl	64(%rbp), %r8d
	movl	80(%rbp), %ecx
	movl	96(%rbp), %edx
	movl	112(%rbp), %eax
	movb	%r8b, -4(%rbp)
	movb	%cl, -8(%rbp)
	movb	%dl, -12(%rbp)
	movb	%al, -16(%rbp)
	.loc 1 8 0
	movq	16(%rbp), %rax
	movl	24(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 9 0
	movq	16(%rbp), %rdx
	movl	32(%rbp), %eax
	movl	%eax, 41(%rdx)
	.loc 1 10 0
	movq	16(%rbp), %rax
	movzbl	-4(%rbp), %edx
	movb	%dl, 37(%rax)
	.loc 1 11 0
	movq	16(%rbp), %rax
	movzbl	-8(%rbp), %edx
	movb	%dl, 38(%rax)
	.loc 1 12 0
	movq	16(%rbp), %rax
	movzbl	-12(%rbp), %edx
	movb	%dl, 39(%rax)
	.loc 1 13 0
	movq	16(%rbp), %rax
	movzbl	-16(%rbp), %edx
	movb	%dl, 40(%rax)
	.loc 1 14 0
	movq	16(%rbp), %rax
	movq	40(%rbp), %rdx
	movq	%rdx, 45(%rax)
	.loc 1 15 0
	movq	16(%rbp), %rax
	movq	48(%rbp), %rdx
	movq	%rdx, 53(%rax)
	.loc 1 16 0
	movq	16(%rbp), %rax
	movq	56(%rbp), %rdx
	movq	%rdx, 4(%rax)
	.loc 1 17 0
	movq	16(%rbp), %rax
	movq	72(%rbp), %rdx
	movq	%rdx, 12(%rax)
	.loc 1 18 0
	movq	16(%rbp), %rax
	movq	88(%rbp), %rdx
	movq	%rdx, 20(%rax)
	.loc 1 19 0
	movq	16(%rbp), %rax
	movq	104(%rbp), %rdx
	movq	%rdx, 28(%rax)
	.loc 1 20 0
	movzbl	-4(%rbp), %edx
	movzbl	-8(%rbp), %eax
	addl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	-1(%rax), %edx
	movq	16(%rbp), %rax
	movb	%dl, 36(%rax)
	.loc 1 21 0
	addq	$16, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.seh_endproc
	.globl	FuzzAddMF
	.def	FuzzAddMF;	.scl	2;	.type	32;	.endef
	.seh_proc	FuzzAddMF
FuzzAddMF:
.LFB8:
	.loc 1 23 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, %eax
	movl	%r8d, %edx
	movl	%r9d, 40(%rbp)
	movb	%al, 24(%rbp)
	movb	%dl, 32(%rbp)
	.loc 1 24 0
	movzbl	32(%rbp), %eax
	salq	$2, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	movq	16(%rbp), %rax
	addq	%rax, %rdx
	movl	40(%rbp), %eax
	movl	%eax, 4(%rdx)
	.loc 1 25 0
	movzbl	32(%rbp), %eax
	salq	$2, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	movq	16(%rbp), %rax
	addq	%rax, %rdx
	movzbl	24(%rbp), %eax
	movb	%al, (%rdx)
	.loc 1 26 0
	movzbl	32(%rbp), %eax
	salq	$2, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	movq	16(%rbp), %rax
	addq	%rax, %rdx
	movl	48(%rbp), %eax
	movl	%eax, 8(%rdx)
	.loc 1 27 0
	movzbl	32(%rbp), %eax
	salq	$2, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	movq	16(%rbp), %rax
	addq	%rax, %rdx
	movl	56(%rbp), %eax
	movl	%eax, 12(%rdx)
	.loc 1 28 0
	movzbl	32(%rbp), %eax
	salq	$2, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	movq	16(%rbp), %rax
	addq	%rax, %rdx
	movl	64(%rbp), %eax
	movl	%eax, 16(%rdx)
	.loc 1 29 0
	movzbl	32(%rbp), %eax
	salq	$2, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	movq	16(%rbp), %rax
	addq	%rax, %rdx
	movl	72(%rbp), %eax
	movl	%eax, 20(%rdx)
	.loc 1 30 0
	movzbl	32(%rbp), %eax
	salq	$2, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	movq	16(%rbp), %rax
	addq	%rax, %rdx
	movl	.LC0(%rip), %eax
	movl	%eax, 24(%rdx)
	.loc 1 31 0
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.seh_endproc
	.globl	FuzzAddIO
	.def	FuzzAddIO;	.scl	2;	.type	32;	.endef
	.seh_proc	FuzzAddIO
FuzzAddIO:
.LFB9:
	.loc 1 33 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, %eax
	movss	%xmm2, 32(%rbp)
	movss	%xmm3, 40(%rbp)
	movb	%al, 24(%rbp)
	.loc 1 34 0
	movzbl	24(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	movq	16(%rbp), %rax
	addq	%rax, %rdx
	movl	32(%rbp), %eax
	movl	%eax, (%rdx)
	.loc 1 35 0
	movzbl	24(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	movq	16(%rbp), %rax
	addq	%rax, %rdx
	movl	40(%rbp), %eax
	movl	%eax, 4(%rdx)
	.loc 1 36 0
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.seh_endproc
	.globl	FuzzFuzz
	.def	FuzzFuzz;	.scl	2;	.type	32;	.endef
	.seh_proc	FuzzFuzz
FuzzFuzz:
.LFB10:
	.loc 1 38 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$72, %rsp
	.seh_stackalloc	72
	.cfi_def_cfa_offset 96
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.cfi_def_cfa 6, -32
	.seh_endprologue
	movq	%rcx, -32(%rbp)
	movq	%rdx, -24(%rbp)
	.loc 1 40 0
	movb	$0, -65(%rbp)
	jmp	.L5
.L10:
	.loc 1 41 0
	movzbl	-65(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movq	-32(%rbp), %rax
	movq	4(%rax), %rax
	movzbl	-65(%rbp), %edx
	salq	$3, %rdx
	addq	%rdx, %rax
	movss	4(%rax), %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L6
	.loc 1 41 0 is_stmt 0 discriminator 1
	movzbl	-65(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	4(%rax), %rax
	movzbl	-65(%rbp), %ecx
	salq	$3, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	movl	%eax, (%rdx)
.L6:
	.loc 1 42 0 is_stmt 1
	movzbl	-65(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	movq	-32(%rbp), %rax
	movq	4(%rax), %rax
	movzbl	-65(%rbp), %edx
	salq	$3, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	ucomiss	%xmm1, %xmm0
	jbe	.L8
	.loc 1 42 0 is_stmt 0 discriminator 1
	movzbl	-65(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	4(%rax), %rax
	movzbl	-65(%rbp), %ecx
	salq	$3, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	movl	%eax, (%rdx)
.L8:
	.loc 1 40 0 is_stmt 1 discriminator 2
	movzbl	-65(%rbp), %eax
	addl	$1, %eax
	movb	%al, -65(%rbp)
.L5:
	.loc 1 40 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax
	movzbl	37(%rax), %eax
	cmpb	-65(%rbp), %al
	ja	.L10
	.loc 1 44 0 is_stmt 1
	movb	$0, -65(%rbp)
	jmp	.L11
.L12:
	.loc 1 45 0 discriminator 3
	movq	-32(%rbp), %rax
	movq	20(%rax), %rdx
	movzbl	-65(%rbp), %eax
	salq	$2, %rax
	leaq	0(,%rax,8), %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	leaq	(%rdx,%rax), %rbx
	.loc 1 47 0 discriminator 3
	movq	-32(%rbp), %rax
	movq	20(%rax), %rdx
	movzbl	-65(%rbp), %eax
	salq	$2, %rax
	leaq	0(,%rax,8), %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	%rdx, %rax
	leaq	8(%rax), %r9
	.loc 1 46 0 discriminator 3
	movq	-32(%rbp), %rax
	movq	20(%rax), %rdx
	movzbl	-65(%rbp), %eax
	salq	$2, %rax
	leaq	0(,%rax,8), %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 45 0 discriminator 3
	movl	(%rax), %edx
	movq	-32(%rbp), %rax
	movq	20(%rax), %rcx
	movzbl	-65(%rbp), %eax
	salq	$2, %rax
	leaq	0(,%rax,8), %r8
	subq	%rax, %r8
	movq	%r8, %rax
	addq	%rcx, %rax
	movl	4(%rax), %eax
	movq	%r9, %r8
	movl	%edx, -84(%rbp)
	movss	-84(%rbp), %xmm1
	movl	%eax, %ecx
	call	__fuzz_mf
	movd	%xmm0, %eax
	movl	%eax, 24(%rbx)
	.loc 1 44 0 discriminator 3
	movzbl	-65(%rbp), %eax
	addl	$1, %eax
	movb	%al, -65(%rbp)
.L11:
	.loc 1 44 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax
	movzbl	39(%rax), %eax
	cmpb	-65(%rbp), %al
	ja	.L12
	.loc 1 49 0 is_stmt 1
	addq	$72, %rsp
	popq	%rbx
	.cfi_restore 3
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, -56
	ret
	.cfi_endproc
.LFE10:
	.seh_endproc
	.globl	ParseFuzzValue
	.def	ParseFuzzValue;	.scl	2;	.type	32;	.endef
	.seh_proc	ParseFuzzValue
ParseFuzzValue:
.LFB11:
	.loc 1 51 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, %eax
	movw	%ax, 24(%rbp)
	.loc 1 53 0
	movzwl	24(%rbp), %eax
	shrw	$15, %ax
	movb	%al, -1(%rbp)
	cmpb	$0, -1(%rbp)
	je	.L16
	.loc 1 53 0 is_stmt 0 discriminator 1
	movzwl	24(%rbp), %eax
	negl	%eax
	movw	%ax, 24(%rbp)
.L16:
	.loc 1 54 0 is_stmt 1
	movswq	24(%rbp), %rax
	salq	$2, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	leaq	-28(%rax), %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	movl	24(%rax), %eax
	movl	%eax, -8(%rbp)
	.loc 1 55 0
	movss	-8(%rbp), %xmm0
	movss	.LC1(%rip), %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L27
	.loc 1 55 0 is_stmt 0 discriminator 1
	movl	.LC1(%rip), %eax
	jmp	.L19
.L27:
	.loc 1 55 0 discriminator 2
	pxor	%xmm0, %xmm0
	ucomiss	-8(%rbp), %xmm0
	jbe	.L28
	.loc 1 55 0 discriminator 4
	movl	.LC0(%rip), %eax
	jmp	.L19
.L28:
	.loc 1 55 0 discriminator 5
	movl	-8(%rbp), %eax
.L19:
	.loc 1 55 0 discriminator 8
	movl	%eax, -8(%rbp)
	.loc 1 56 0 is_stmt 1 discriminator 8
	cmpb	$0, -1(%rbp)
	je	.L23
	.loc 1 56 0 is_stmt 0 discriminator 1
	movss	.LC1(%rip), %xmm0
	subss	-8(%rbp), %xmm0
	movd	%xmm0, %eax
	jmp	.L24
.L23:
	.loc 1 57 0 is_stmt 1
	movl	-8(%rbp), %eax
.L24:
	movl	%eax, -20(%rbp)
	movss	-20(%rbp), %xmm0
	.loc 1 58 0
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.seh_endproc
	.globl	FuzzyIS
	.def	FuzzyIS;	.scl	2;	.type	32;	.endef
	.seh_proc	FuzzyIS
FuzzyIS:
.LFB12:
	.loc 1 60 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$88, %rsp
	.seh_stackalloc	88
	.cfi_def_cfa_offset 112
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.cfi_def_cfa 6, -16
	.seh_endprologue
	movq	%rcx, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movl	%r8d, %eax
	movb	%al, 0(%rbp)
	.loc 1 64 0
	movb	$0, -51(%rbp)
	.loc 1 65 0
	movb	$0, -61(%rbp)
	.loc 1 66 0
	movw	$0, -64(%rbp)
	.loc 1 67 0
	movb	$0, -65(%rbp)
	.loc 1 68 0
	movw	$0, -68(%rbp)
	.loc 1 70 0
	movl	.LC0(%rip), %eax
	movl	%eax, -60(%rbp)
	.loc 1 73 0
	movb	$0, -49(%rbp)
	jmp	.L30
.L52:
	.loc 1 74 0
	movb	$0, -51(%rbp)
	.loc 1 75 0
	movw	$-1, -54(%rbp)
	.loc 1 76 0
	movl	.LC0(%rip), %eax
	movl	%eax, -60(%rbp)
	.loc 1 77 0
	movb	$0, -50(%rbp)
	jmp	.L31
.L51:
	.loc 1 78 0
	movzbl	-49(%rbp), %edx
	movq	-16(%rbp), %rax
	movzbl	36(%rax), %eax
	movzbl	%al, %eax
	imull	%eax, %edx
	movzbl	-50(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -72(%rbp)
	.loc 1 79 0
	cmpb	$0, -51(%rbp)
	jne	.L32
	.loc 1 80 0
	movl	-72(%rbp), %eax
	leaq	(%rax,%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movb	%al, -61(%rbp)
	.loc 1 81 0
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %eax
	leaq	(%rax,%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -64(%rbp)
	.loc 1 82 0
	movl	-72(%rbp), %eax
	addl	$2, %eax
	movl	%eax, %eax
	leaq	(%rax,%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -74(%rbp)
	.loc 1 83 0
	movswl	-54(%rbp), %eax
	cmpl	$-32765, %eax
	je	.L34
	cmpl	$-1, %eax
	je	.L35
	cmpl	$-32766, %eax
	jne	.L53
	.loc 1 85 0
	movq	-16(%rbp), %rax
	movq	45(%rax), %rbx
	movswl	-64(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	20(%rax), %rax
	movq	%rax, %rcx
	call	ParseFuzzValue
	movl	-60(%rbp), %eax
	movaps	%xmm0, %xmm1
	movl	%eax, -84(%rbp)
	movss	-84(%rbp), %xmm0
	call	*%rbx
	movd	%xmm0, %eax
	movl	%eax, -60(%rbp)
	.loc 1 86 0
	jmp	.L37
.L34:
	.loc 1 88 0
	movq	-16(%rbp), %rax
	movq	53(%rax), %rbx
	movswl	-64(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	20(%rax), %rax
	movq	%rax, %rcx
	call	ParseFuzzValue
	movl	-60(%rbp), %eax
	movaps	%xmm0, %xmm1
	movl	%eax, -84(%rbp)
	movss	-84(%rbp), %xmm0
	call	*%rbx
	movd	%xmm0, %eax
	movl	%eax, -60(%rbp)
	.loc 1 89 0
	jmp	.L37
.L35:
	.loc 1 91 0
	movswl	-64(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	20(%rax), %rax
	movq	%rax, %rcx
	call	ParseFuzzValue
	movd	%xmm0, %eax
	movl	%eax, -60(%rbp)
	.loc 1 92 0
	jmp	.L37
.L53:
	.loc 1 94 0
	movl	$-1, %eax
	jmp	.L38
.L37:
	.loc 1 98 0
	movq	-16(%rbp), %rax
	movzbl	37(%rax), %eax
	cmpb	-61(%rbp), %al
	jnb	.L39
	.loc 1 98 0 is_stmt 0 discriminator 1
	movl	$-1, %eax
	jmp	.L38
.L39:
	.loc 1 100 0 is_stmt 1
	cmpw	$-32766, -74(%rbp)
	je	.L40
	.loc 1 100 0 is_stmt 0 discriminator 1
	cmpw	$-32765, -74(%rbp)
	jne	.L41
.L40:
	.loc 1 101 0 is_stmt 1
	movzwl	-74(%rbp), %eax
	movw	%ax, -54(%rbp)
	.loc 1 102 0
	movb	$0, -51(%rbp)
	.loc 1 103 0
	addb	$2, -50(%rbp)
	.loc 1 104 0
	jmp	.L42
.L41:
	.loc 1 106 0
	cmpw	$-32764, -74(%rbp)
	jne	.L43
	.loc 1 107 0
	movb	$2, -51(%rbp)
	.loc 1 108 0
	addb	$2, -50(%rbp)
	.loc 1 109 0
	jmp	.L42
.L43:
	.loc 1 111 0
	movl	$-1, %eax
	jmp	.L38
.L32:
	.loc 1 113 0
	cmpb	$2, -51(%rbp)
	jne	.L42
	.loc 1 114 0
	movl	-72(%rbp), %eax
	leaq	(%rax,%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movb	%al, -65(%rbp)
	.loc 1 115 0
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %eax
	leaq	(%rax,%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -68(%rbp)
	.loc 1 117 0
	movq	-16(%rbp), %rax
	movzbl	38(%rax), %eax
	cmpb	$1, %al
	jbe	.L44
	.loc 1 117 0 is_stmt 0 discriminator 1
	movl	-72(%rbp), %eax
	addl	$2, %eax
	movl	%eax, %eax
	leaq	(%rax,%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	jmp	.L45
.L44:
	.loc 1 117 0 discriminator 2
	movl	$-1, %eax
.L45:
	.loc 1 117 0 discriminator 4
	movw	%ax, -74(%rbp)
	.loc 1 118 0 is_stmt 1 discriminator 4
	addb	$2, -50(%rbp)
	.loc 1 119 0 discriminator 4
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L47
	cmpl	$1, %eax
	je	.L55
	.loc 1 119 0 is_stmt 0
	jmp	.L54
.L47:
	.loc 1 121 0 is_stmt 1
	movq	-16(%rbp), %rax
	movq	28(%rax), %rdx
	movswq	-68(%rbp), %rax
	salq	$2, %rax
	leaq	0(,%rax,8), %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	leaq	(%rdx,%rax), %rbx
	movq	-16(%rbp), %rax
	movq	28(%rax), %rdx
	movswq	-68(%rbp), %rax
	salq	$2, %rax
	leaq	0(,%rax,8), %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	%rdx, %rax
	movl	24(%rax), %eax
	movl	-60(%rbp), %edx
	movl	%edx, -84(%rbp)
	movss	-84(%rbp), %xmm1
	movl	%eax, -84(%rbp)
	movss	-84(%rbp), %xmm0
	call	FuzzMax
	movd	%xmm0, %eax
	movl	%eax, 24(%rbx)
	.loc 1 122 0
	jmp	.L49
.L54:
	.loc 1 125 0
	movl	$-1, %eax
	jmp	.L38
.L55:
	.loc 1 124 0
	nop
.L49:
	.loc 1 128 0
	cmpw	$-32766, -74(%rbp)
	je	.L42
	jmp	.L50
.L42:
	.loc 1 77 0 discriminator 2
	movzbl	-50(%rbp), %eax
	addl	$1, %eax
	movb	%al, -50(%rbp)
.L31:
	.loc 1 77 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax
	movzbl	36(%rax), %eax
	cmpb	-50(%rbp), %al
	ja	.L51
.L50:
	.loc 1 73 0 is_stmt 1 discriminator 2
	movzbl	-49(%rbp), %eax
	addl	$1, %eax
	movb	%al, -49(%rbp)
.L30:
	.loc 1 73 0 is_stmt 0 discriminator 1
	movzbl	-49(%rbp), %eax
	cmpb	0(%rbp), %al
	jb	.L52
	.loc 1 132 0 is_stmt 1
	movl	$0, %eax
.L38:
	.loc 1 133 0
	addq	$88, %rsp
	popq	%rbx
	.cfi_restore 3
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, -72
	ret
	.cfi_endproc
.LFE12:
	.seh_endproc
	.globl	FuzzDeFuzz
	.def	FuzzDeFuzz;	.scl	2;	.type	32;	.endef
	.seh_proc	FuzzDeFuzz
FuzzDeFuzz:
.LFB13:
	.loc 1 135 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	.seh_stackalloc	96
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, %eax
	movb	%al, 24(%rbp)
	.loc 1 144 0
	movl	.LC0(%rip), %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -24(%rbp)
	.loc 1 146 0
	movl	$0, -4(%rbp)
	jmp	.L57
.L58:
	.loc 1 146 0 is_stmt 0 discriminator 3
	movq	16(%rbp), %rax
	movq	28(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	0(,%rax,8), %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	%rdx, %rax
	movl	24(%rax), %eax
	movl	-20(%rbp), %edx
	movl	%edx, -52(%rbp)
	movss	-52(%rbp), %xmm1
	movl	%eax, -52(%rbp)
	movss	-52(%rbp), %xmm0
	call	FuzzMax
	movd	%xmm0, %eax
	movl	%eax, -20(%rbp)
	addl	$1, -4(%rbp)
.L57:
	.loc 1 146 0 discriminator 1
	movq	16(%rbp), %rax
	movzbl	40(%rax), %eax
	movzbl	%al, %eax
	cmpl	-4(%rbp), %eax
	jg	.L58
	.loc 1 147 0 is_stmt 1
	movq	16(%rbp), %rax
	movq	12(%rax), %rax
	movzbl	24(%rbp), %edx
	salq	$3, %rdx
	addq	%rdx, %rax
	movss	4(%rax), %xmm0
	movq	16(%rbp), %rax
	movq	12(%rax), %rax
	movzbl	24(%rbp), %edx
	salq	$3, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	subss	%xmm1, %xmm0
	movq	16(%rbp), %rax
	movss	41(%rax), %xmm1
	divss	%xmm1, %xmm0
	movss	.LC1(%rip), %xmm1
	addss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -32(%rbp)
	.loc 1 148 0
	movl	$0, -4(%rbp)
	jmp	.L59
.L71:
	.loc 1 149 0
	movq	16(%rbp), %rax
	movq	12(%rax), %rax
	movzbl	24(%rbp), %edx
	salq	$3, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2ss	-4(%rbp), %xmm0
	movq	16(%rbp), %rax
	movss	41(%rax), %xmm2
	mulss	%xmm2, %xmm0
	addss	%xmm0, %xmm1
	movd	%xmm1, %eax
	movl	%eax, -12(%rbp)
	.loc 1 150 0
	movq	16(%rbp), %rax
	movq	12(%rax), %rax
	movzbl	24(%rbp), %edx
	salq	$3, %rdx
	addq	%rdx, %rax
	movss	4(%rax), %xmm1
	movss	-12(%rbp), %xmm0
	ucomiss	%xmm1, %xmm0
	jbe	.L60
	.loc 1 150 0 is_stmt 0 discriminator 1
	movq	16(%rbp), %rax
	movq	12(%rax), %rax
	movzbl	24(%rbp), %edx
	salq	$3, %rdx
	addq	%rdx, %rax
	movl	4(%rax), %eax
	movl	%eax, -12(%rbp)
.L60:
	.loc 1 151 0 is_stmt 1
	movl	.LC0(%rip), %eax
	movl	%eax, -16(%rbp)
	.loc 1 152 0
	movl	$0, -8(%rbp)
	jmp	.L62
.L67:
	.loc 1 153 0
	movq	16(%rbp), %rax
	movq	28(%rax), %rdx
	movl	-8(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	0(,%rax,8), %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	24(%rbp), %al
	jne	.L63
	.loc 1 154 0
	movq	16(%rbp), %rax
	movq	28(%rax), %rdx
	movl	-8(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	0(,%rax,8), %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	%rdx, %rax
	leaq	8(%rax), %r8
	movq	16(%rbp), %rax
	movq	28(%rax), %rdx
	movl	-8(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	0(,%rax,8), %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	%rdx, %rax
	movl	4(%rax), %eax
	movl	-12(%rbp), %edx
	movl	%edx, -52(%rbp)
	movss	-52(%rbp), %xmm1
	movl	%eax, %ecx
	call	__fuzz_mf
	movd	%xmm0, %eax
	movl	%eax, -36(%rbp)
	.loc 1 155 0
	movq	16(%rbp), %rax
	movq	28(%rax), %rdx
	movl	-8(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	0(,%rax,8), %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	%rdx, %rax
	movl	24(%rax), %eax
	movl	%eax, -40(%rbp)
	.loc 1 156 0
	movss	-36(%rbp), %xmm0
	ucomiss	-40(%rbp), %xmm0
	jbe	.L76
	.loc 1 156 0 is_stmt 0 discriminator 1
	movl	-40(%rbp), %eax
	jmp	.L66
.L76:
	.loc 1 156 0 discriminator 2
	movl	-36(%rbp), %eax
.L66:
	.loc 1 156 0 discriminator 4
	movl	-16(%rbp), %edx
	movl	%eax, -52(%rbp)
	movss	-52(%rbp), %xmm1
	movl	%edx, -52(%rbp)
	movss	-52(%rbp), %xmm0
	call	FuzzMax
	movd	%xmm0, %eax
	movl	%eax, -16(%rbp)
.L63:
	.loc 1 152 0 is_stmt 1 discriminator 2
	addl	$1, -8(%rbp)
.L62:
	.loc 1 152 0 is_stmt 0 discriminator 1
	movq	16(%rbp), %rax
	movzbl	40(%rax), %eax
	movzbl	%al, %eax
	cmpl	-8(%rbp), %eax
	jg	.L67
	.loc 1 159 0 is_stmt 1
	movss	-12(%rbp), %xmm0
	mulss	-16(%rbp), %xmm0
	movss	-28(%rbp), %xmm1
	addss	%xmm0, %xmm1
	movd	%xmm1, %eax
	movl	%eax, -28(%rbp)
	.loc 1 160 0
	movss	-24(%rbp), %xmm0
	addss	-16(%rbp), %xmm0
	movd	%xmm0, %eax
	movl	%eax, -24(%rbp)
	.loc 1 161 0
	movq	16(%rbp), %rax
	movq	12(%rax), %rax
	movzbl	24(%rbp), %edx
	salq	$3, %rdx
	addq	%rdx, %rax
	movss	4(%rax), %xmm1
	movss	-12(%rbp), %xmm0
	ucomiss	%xmm1, %xmm0
	jb	.L77
	jmp	.L70
.L77:
	.loc 1 148 0 discriminator 2
	addl	$1, -4(%rbp)
.L59:
	.loc 1 148 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jl	.L71
.L70:
	.loc 1 163 0 is_stmt 1
	movss	-28(%rbp), %xmm0
	divss	-24(%rbp), %xmm0
	.loc 1 164 0
	addq	$96, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.seh_endproc
	.globl	__fuzz_mf
	.def	__fuzz_mf;	.scl	2;	.type	32;	.endef
	.seh_proc	__fuzz_mf
__fuzz_mf:
.LFB14:
	.loc 1 166 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	.seh_stackalloc	80
	movaps	%xmm6, -16(%rbp)
	.seh_savexmm	%xmm6, 64
	.cfi_offset 23, -32
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movss	%xmm1, 24(%rbp)
	movq	%r8, 32(%rbp)
	.loc 1 167 0
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	.loc 1 168 0
	movq	32(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -24(%rbp)
	.loc 1 169 0
	movq	32(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -28(%rbp)
	.loc 1 170 0
	movq	32(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, -32(%rbp)
	.loc 1 171 0
	cmpl	$7, 16(%rbp)
	ja	.L79
	movl	16(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L81(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L81(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L81:
	.long	.L80-.L81
	.long	.L82-.L81
	.long	.L83-.L81
	.long	.L84-.L81
	.long	.L85-.L81
	.long	.L86-.L81
	.long	.L87-.L81
	.long	.L88-.L81
	.text
.L80:
	.loc 1 173 0
	movss	-28(%rbp), %xmm0
	subss	24(%rbp), %xmm0
	movss	-28(%rbp), %xmm1
	subss	-24(%rbp), %xmm1
	movaps	%xmm0, %xmm2
	divss	%xmm1, %xmm2
	movss	24(%rbp), %xmm0
	subss	-20(%rbp), %xmm0
	movss	-24(%rbp), %xmm1
	subss	-20(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	call	FuzzMin
	pxor	%xmm1, %xmm1
	call	FuzzMax
	movd	%xmm0, %eax
	jmp	.L89
.L82:
	.loc 1 175 0
	movss	-32(%rbp), %xmm0
	subss	24(%rbp), %xmm0
	movss	-32(%rbp), %xmm1
	subss	-28(%rbp), %xmm1
	movaps	%xmm0, %xmm6
	divss	%xmm1, %xmm6
	movss	24(%rbp), %xmm0
	subss	-20(%rbp), %xmm0
	movss	-24(%rbp), %xmm1
	subss	-20(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movss	.LC1(%rip), %xmm1
	call	FuzzMin
	movaps	%xmm6, %xmm1
	call	FuzzMin
	pxor	%xmm1, %xmm1
	call	FuzzMax
	movd	%xmm0, %eax
	jmp	.L89
.L83:
	.loc 1 177 0
	movss	24(%rbp), %xmm0
	subss	-24(%rbp), %xmm0
	divss	-20(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movabsq	$4611686018427387904, %rax
	movq	%rax, -40(%rbp)
	movsd	-40(%rbp), %xmm1
	call	pow
	movapd	%xmm0, %xmm1
	movsd	.LC3(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	call	exp
	cvtsd2ss	%xmm0, %xmm3
	movd	%xmm3, %eax
	jmp	.L89
.L84:
	.loc 1 179 0
	movss	-20(%rbp), %xmm1
	movss	.LC4(%rip), %xmm0
	xorps	%xmm0, %xmm1
	movss	24(%rbp), %xmm0
	subss	-28(%rbp), %xmm0
	mulss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	call	exp
	movapd	%xmm0, %xmm1
	movsd	.LC5(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	.LC5(%rip), %xmm1
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm4
	movd	%xmm4, %eax
	jmp	.L89
.L85:
	.loc 1 181 0
	movss	-20(%rbp), %xmm0
	ucomiss	24(%rbp), %xmm0
	jb	.L126
	.loc 1 181 0 is_stmt 0 discriminator 1
	movl	.LC1(%rip), %eax
	jmp	.L89
.L126:
	.loc 1 182 0 is_stmt 1
	movss	24(%rbp), %xmm0
	ucomiss	-20(%rbp), %xmm0
	jb	.L92
	.loc 1 182 0 is_stmt 0 discriminator 1
	movss	-20(%rbp), %xmm0
	addss	-24(%rbp), %xmm0
	movss	.LC6(%rip), %xmm1
	divss	%xmm1, %xmm0
	ucomiss	24(%rbp), %xmm0
	jb	.L92
	.loc 1 182 0 discriminator 2
	movss	24(%rbp), %xmm0
	subss	-20(%rbp), %xmm0
	movss	-24(%rbp), %xmm1
	subss	-20(%rbp), %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movabsq	$4611686018427387904, %rax
	movq	%rax, -40(%rbp)
	movsd	-40(%rbp), %xmm1
	call	pow
	addsd	%xmm0, %xmm0
	movsd	.LC5(%rip), %xmm1
	subsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm5
	movd	%xmm5, %eax
	jmp	.L89
.L92:
	.loc 1 183 0 is_stmt 1
	movss	-24(%rbp), %xmm0
	ucomiss	24(%rbp), %xmm0
	jb	.L95
	.loc 1 183 0 is_stmt 0 discriminator 1
	movss	-20(%rbp), %xmm0
	addss	-24(%rbp), %xmm0
	movss	.LC6(%rip), %xmm1
	divss	%xmm1, %xmm0
	movss	24(%rbp), %xmm1
	ucomiss	%xmm0, %xmm1
	jb	.L95
	.loc 1 183 0 discriminator 2
	movss	24(%rbp), %xmm0
	subss	-24(%rbp), %xmm0
	movss	-24(%rbp), %xmm1
	subss	-20(%rbp), %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movabsq	$4611686018427387904, %rax
	movq	%rax, -40(%rbp)
	movsd	-40(%rbp), %xmm1
	call	pow
	addsd	%xmm0, %xmm0
	cvtsd2ss	%xmm0, %xmm3
	movd	%xmm3, %eax
	jmp	.L89
.L95:
	.loc 1 184 0 is_stmt 1
	movss	24(%rbp), %xmm0
	ucomiss	-24(%rbp), %xmm0
	jb	.L127
	.loc 1 184 0 is_stmt 0 discriminator 1
	movl	.LC0(%rip), %eax
	jmp	.L89
.L127:
	.loc 1 185 0 is_stmt 1
	movl	.LC0(%rip), %eax
	jmp	.L89
.L86:
	.loc 1 187 0
	movss	-20(%rbp), %xmm0
	ucomiss	24(%rbp), %xmm0
	jb	.L128
	.loc 1 187 0 is_stmt 0 discriminator 1
	movl	.LC0(%rip), %eax
	jmp	.L89
.L128:
	.loc 1 188 0 is_stmt 1
	movss	24(%rbp), %xmm0
	ucomiss	-20(%rbp), %xmm0
	jb	.L102
	.loc 1 188 0 is_stmt 0 discriminator 1
	movss	-20(%rbp), %xmm0
	addss	-24(%rbp), %xmm0
	movss	.LC6(%rip), %xmm1
	divss	%xmm1, %xmm0
	ucomiss	24(%rbp), %xmm0
	jb	.L102
	.loc 1 188 0 discriminator 2
	movss	24(%rbp), %xmm0
	subss	-20(%rbp), %xmm0
	movss	-24(%rbp), %xmm1
	subss	-20(%rbp), %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movabsq	$4611686018427387904, %rax
	movq	%rax, -40(%rbp)
	movsd	-40(%rbp), %xmm1
	call	pow
	addsd	%xmm0, %xmm0
	cvtsd2ss	%xmm0, %xmm4
	movd	%xmm4, %eax
	jmp	.L89
.L102:
	.loc 1 189 0 is_stmt 1
	movss	-24(%rbp), %xmm0
	ucomiss	24(%rbp), %xmm0
	jb	.L105
	.loc 1 189 0 is_stmt 0 discriminator 1
	movss	-20(%rbp), %xmm0
	addss	-24(%rbp), %xmm0
	movss	.LC6(%rip), %xmm1
	divss	%xmm1, %xmm0
	movss	24(%rbp), %xmm1
	ucomiss	%xmm0, %xmm1
	jb	.L105
	.loc 1 189 0 discriminator 2
	movss	24(%rbp), %xmm0
	subss	-24(%rbp), %xmm0
	movss	-24(%rbp), %xmm1
	subss	-20(%rbp), %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movabsq	$4611686018427387904, %rax
	movq	%rax, -40(%rbp)
	movsd	-40(%rbp), %xmm1
	call	pow
	addsd	%xmm0, %xmm0
	movsd	.LC5(%rip), %xmm1
	subsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm5
	movd	%xmm5, %eax
	jmp	.L89
.L105:
	.loc 1 190 0 is_stmt 1
	movss	24(%rbp), %xmm0
	ucomiss	-24(%rbp), %xmm0
	jb	.L129
	.loc 1 190 0 is_stmt 0 discriminator 1
	movl	.LC1(%rip), %eax
	jmp	.L89
.L129:
	.loc 1 191 0 is_stmt 1
	movl	.LC0(%rip), %eax
	jmp	.L89
.L87:
	.loc 1 193 0
	movss	-24(%rbp), %xmm0
	addss	%xmm0, %xmm0
	cvtss2sd	%xmm0, %xmm2
	movss	24(%rbp), %xmm0
	subss	-28(%rbp), %xmm0
	divss	-20(%rbp), %xmm0
	movss	.LC7(%rip), %xmm1
	andps	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movapd	%xmm2, %xmm1
	call	pow
	movapd	%xmm0, %xmm1
	movsd	.LC5(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	.LC5(%rip), %xmm1
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm3
	movd	%xmm3, %eax
	jmp	.L89
.L88:
	.loc 1 195 0
	movss	24(%rbp), %xmm0
	ucomiss	-20(%rbp), %xmm0
	jp	.L110
	movss	24(%rbp), %xmm0
	ucomiss	-20(%rbp), %xmm0
	jne	.L110
	.loc 1 195 0 is_stmt 0 discriminator 1
	movl	.LC1(%rip), %eax
	jmp	.L89
.L110:
	.loc 1 195 0 discriminator 2
	movl	.LC0(%rip), %eax
	jmp	.L89
.L79:
	.loc 1 197 0 is_stmt 1
	movl	.LC0(%rip), %eax
.L89:
	movl	%eax, -40(%rbp)
	movss	-40(%rbp), %xmm0
	.loc 1 199 0
	movaps	-16(%rbp), %xmm6
	addq	$80, %rsp
	.cfi_restore 23
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.seh_endproc
	.globl	FuzzMin
	.def	FuzzMin;	.scl	2;	.type	32;	.endef
	.seh_proc	FuzzMin
FuzzMin:
.LFB15:
	.loc 1 201 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movss	%xmm0, 16(%rbp)
	movss	%xmm1, 24(%rbp)
	.loc 1 202 0
	movss	24(%rbp), %xmm0
	ucomiss	16(%rbp), %xmm0
	jbe	.L142
	.loc 1 202 0 is_stmt 0 discriminator 1
	movl	16(%rbp), %eax
	jmp	.L133
.L142:
	.loc 1 202 0 discriminator 2
	movl	24(%rbp), %eax
.L133:
	.loc 1 202 0 discriminator 4
	movl	%eax, -4(%rbp)
	.loc 1 203 0 is_stmt 1 discriminator 4
	pxor	%xmm0, %xmm0
	ucomiss	-4(%rbp), %xmm0
	jbe	.L134
	.loc 1 203 0 is_stmt 0 discriminator 1
	movl	.LC0(%rip), %eax
	movl	%eax, -4(%rbp)
.L134:
	.loc 1 204 0 is_stmt 1
	movss	-4(%rbp), %xmm0
	movss	.LC1(%rip), %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L136
	.loc 1 204 0 is_stmt 0 discriminator 1
	movl	.LC1(%rip), %eax
	movl	%eax, -4(%rbp)
.L136:
	.loc 1 205 0 is_stmt 1
	movl	-4(%rbp), %eax
	movl	%eax, -20(%rbp)
	movss	-20(%rbp), %xmm0
	.loc 1 206 0
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.seh_endproc
	.globl	FuzzMax
	.def	FuzzMax;	.scl	2;	.type	32;	.endef
	.seh_proc	FuzzMax
FuzzMax:
.LFB16:
	.loc 1 208 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movss	%xmm0, 16(%rbp)
	movss	%xmm1, 24(%rbp)
	.loc 1 209 0
	movss	16(%rbp), %xmm0
	ucomiss	24(%rbp), %xmm0
	jbe	.L155
	.loc 1 209 0 is_stmt 0 discriminator 1
	movl	16(%rbp), %eax
	jmp	.L146
.L155:
	.loc 1 209 0 discriminator 2
	movl	24(%rbp), %eax
.L146:
	.loc 1 209 0 discriminator 4
	movl	%eax, -4(%rbp)
	.loc 1 210 0 is_stmt 1 discriminator 4
	pxor	%xmm0, %xmm0
	ucomiss	-4(%rbp), %xmm0
	jbe	.L147
	.loc 1 210 0 is_stmt 0 discriminator 1
	movl	.LC0(%rip), %eax
	movl	%eax, -4(%rbp)
.L147:
	.loc 1 211 0 is_stmt 1
	movss	-4(%rbp), %xmm0
	movss	.LC1(%rip), %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L149
	.loc 1 211 0 is_stmt 0 discriminator 1
	movl	.LC1(%rip), %eax
	movl	%eax, -4(%rbp)
.L149:
	.loc 1 212 0 is_stmt 1
	movl	-4(%rbp), %eax
	movl	%eax, -20(%rbp)
	movss	-20(%rbp), %xmm0
	.loc 1 213 0
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.seh_endproc
	.globl	FuzzProd
	.def	FuzzProd;	.scl	2;	.type	32;	.endef
	.seh_proc	FuzzProd
FuzzProd:
.LFB17:
	.loc 1 215 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movss	%xmm0, 16(%rbp)
	movss	%xmm1, 24(%rbp)
	.loc 1 216 0
	movss	16(%rbp), %xmm0
	mulss	24(%rbp), %xmm0
	movd	%xmm0, %eax
	movl	%eax, -4(%rbp)
	.loc 1 217 0
	pxor	%xmm0, %xmm0
	ucomiss	-4(%rbp), %xmm0
	jbe	.L157
	.loc 1 217 0 is_stmt 0 discriminator 1
	movl	.LC0(%rip), %eax
	movl	%eax, -4(%rbp)
.L157:
	.loc 1 218 0 is_stmt 1
	movss	-4(%rbp), %xmm0
	movss	.LC1(%rip), %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L159
	.loc 1 218 0 is_stmt 0 discriminator 1
	movl	.LC1(%rip), %eax
	movl	%eax, -4(%rbp)
.L159:
	.loc 1 219 0 is_stmt 1
	movl	-4(%rbp), %eax
	movl	%eax, -20(%rbp)
	movss	-20(%rbp), %xmm0
	.loc 1 220 0
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.seh_endproc
	.globl	FuzzProbOR
	.def	FuzzProbOR;	.scl	2;	.type	32;	.endef
	.seh_proc	FuzzProbOR
FuzzProbOR:
.LFB18:
	.loc 1 222 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movss	%xmm0, 16(%rbp)
	movss	%xmm1, 24(%rbp)
	.loc 1 223 0
	movss	16(%rbp), %xmm0
	addss	24(%rbp), %xmm0
	movss	16(%rbp), %xmm1
	mulss	24(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movd	%xmm0, %eax
	movl	%eax, -4(%rbp)
	.loc 1 224 0
	pxor	%xmm0, %xmm0
	ucomiss	-4(%rbp), %xmm0
	jbe	.L165
	.loc 1 224 0 is_stmt 0 discriminator 1
	movl	.LC0(%rip), %eax
	movl	%eax, -4(%rbp)
.L165:
	.loc 1 225 0 is_stmt 1
	movss	-4(%rbp), %xmm0
	movss	.LC1(%rip), %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L167
	.loc 1 225 0 is_stmt 0 discriminator 1
	movl	.LC1(%rip), %eax
	movl	%eax, -4(%rbp)
.L167:
	.loc 1 226 0 is_stmt 1
	movl	-4(%rbp), %eax
	movl	%eax, -20(%rbp)
	movss	-20(%rbp), %xmm0
	.loc 1 227 0
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.seh_endproc
	.section .rdata,"dr"
	.align 4
.LC0:
	.long	0
	.align 4
.LC1:
	.long	1065353216
	.align 8
.LC3:
	.long	0
	.long	-1075838976
	.align 16
.LC4:
	.long	2147483648
	.long	0
	.long	0
	.long	0
	.align 8
.LC5:
	.long	0
	.long	1072693248
	.align 4
.LC6:
	.long	1073741824
	.align 16
.LC7:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.text
.Letext0:
	.file 2 "fuzzfis.h"
	.section	.debug_info,"dr"
.Ldebug_info0:
	.long	0xa55
	.word	0x4
	.secrel32	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.ascii "GNU C 4.9.3 -mtune=generic -march=x86-64 -g\0"
	.byte	0x1
	.ascii "fuzzfis.c\0"
	.ascii "/cygdrive/d/GDrive/Proyects/libs/c/fuzz_lib\0"
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.secrel32	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.ascii "long int\0"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "long unsigned int\0"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "signed char\0"
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.ascii "short int\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.ascii "long long int\0"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "sizetype\0"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "long long unsigned int\0"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.ascii "double\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.ascii "float\0"
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.ascii "long double\0"
	.uleb128 0x3
	.ascii "fuzz_real_t\0"
	.byte	0x2
	.byte	0x35
	.long	0x147
	.uleb128 0x4
	.byte	0x4
	.byte	0x2
	.byte	0x36
	.long	0x1c2
	.uleb128 0x5
	.ascii "trimf\0"
	.sleb128 0
	.uleb128 0x5
	.ascii "trapmf\0"
	.sleb128 1
	.uleb128 0x5
	.ascii "gaussmf\0"
	.sleb128 2
	.uleb128 0x5
	.ascii "sigmf\0"
	.sleb128 3
	.uleb128 0x5
	.ascii "zmf\0"
	.sleb128 4
	.uleb128 0x5
	.ascii "smf\0"
	.sleb128 5
	.uleb128 0x5
	.ascii "gbellmf\0"
	.sleb128 6
	.uleb128 0x5
	.ascii "singletonmf\0"
	.sleb128 7
	.byte	0
	.uleb128 0x3
	.ascii "fuzz_mf_t\0"
	.byte	0x2
	.byte	0x36
	.long	0x172
	.uleb128 0x4
	.byte	0x4
	.byte	0x2
	.byte	0x37
	.long	0x1ef
	.uleb128 0x5
	.ascii "Mamdani\0"
	.sleb128 0
	.uleb128 0x5
	.ascii "Sugeno\0"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.ascii "fuzz_fis_type_t\0"
	.byte	0x2
	.byte	0x37
	.long	0x1d3
	.uleb128 0x3
	.ascii "FuzzMethod\0"
	.byte	0x2
	.byte	0x3d
	.long	0x218
	.uleb128 0x6
	.byte	0x8
	.long	0x21e
	.uleb128 0x7
	.long	0x15f
	.long	0x232
	.uleb128 0x8
	.long	0x15f
	.uleb128 0x8
	.long	0x15f
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.byte	0x2
	.byte	0x3f
	.long	0x255
	.uleb128 0xa
	.ascii "xmin\0"
	.byte	0x2
	.byte	0x40
	.long	0x15f
	.byte	0
	.uleb128 0xa
	.ascii "xmax\0"
	.byte	0x2
	.byte	0x40
	.long	0x15f
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.ascii "FuzzIO_t\0"
	.byte	0x2
	.byte	0x41
	.long	0x232
	.uleb128 0x9
	.byte	0x1c
	.byte	0x2
	.byte	0x46
	.long	0x2b7
	.uleb128 0xa
	.ascii "ioindex\0"
	.byte	0x2
	.byte	0x47
	.long	0xc9
	.byte	0
	.uleb128 0xa
	.ascii "tag\0"
	.byte	0x2
	.byte	0x48
	.long	0xc9
	.byte	0x1
	.uleb128 0xa
	.ascii "shape\0"
	.byte	0x2
	.byte	0x49
	.long	0x1c2
	.byte	0x4
	.uleb128 0xa
	.ascii "points\0"
	.byte	0x2
	.byte	0x4a
	.long	0x2b7
	.byte	0x8
	.uleb128 0xa
	.ascii "fuzzval\0"
	.byte	0x2
	.byte	0x4b
	.long	0x15f
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.long	0x15f
	.long	0x2c7
	.uleb128 0xc
	.long	0x10f
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.ascii "FuzzMF_t\0"
	.byte	0x2
	.byte	0x4c
	.long	0x265
	.uleb128 0x9
	.byte	0x3d
	.byte	0x2
	.byte	0x4f
	.long	0x3ae
	.uleb128 0xa
	.ascii "type\0"
	.byte	0x2
	.byte	0x50
	.long	0x1ef
	.byte	0
	.uleb128 0xa
	.ascii "input\0"
	.byte	0x2
	.byte	0x51
	.long	0x3ae
	.byte	0x4
	.uleb128 0xa
	.ascii "output\0"
	.byte	0x2
	.byte	0x52
	.long	0x3ae
	.byte	0xc
	.uleb128 0xa
	.ascii "inputmf\0"
	.byte	0x2
	.byte	0x53
	.long	0x3b4
	.byte	0x14
	.uleb128 0xa
	.ascii "outputmf\0"
	.byte	0x2
	.byte	0x54
	.long	0x3b4
	.byte	0x1c
	.uleb128 0xa
	.ascii "rule_cols\0"
	.byte	0x2
	.byte	0x55
	.long	0xc9
	.byte	0x24
	.uleb128 0xa
	.ascii "ninputs\0"
	.byte	0x2
	.byte	0x56
	.long	0xc9
	.byte	0x25
	.uleb128 0xa
	.ascii "noutputs\0"
	.byte	0x2
	.byte	0x57
	.long	0xc9
	.byte	0x26
	.uleb128 0xa
	.ascii "nmfinputs\0"
	.byte	0x2
	.byte	0x58
	.long	0xc9
	.byte	0x27
	.uleb128 0xa
	.ascii "nmfoutputs\0"
	.byte	0x2
	.byte	0x59
	.long	0xc9
	.byte	0x28
	.uleb128 0xa
	.ascii "res\0"
	.byte	0x2
	.byte	0x5a
	.long	0x15f
	.byte	0x29
	.uleb128 0xa
	.ascii "FuzzAND\0"
	.byte	0x2
	.byte	0x5b
	.long	0x206
	.byte	0x2d
	.uleb128 0xa
	.ascii "FuzzOR\0"
	.byte	0x2
	.byte	0x5b
	.long	0x206
	.byte	0x35
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x255
	.uleb128 0x6
	.byte	0x8
	.long	0x2c7
	.uleb128 0x3
	.ascii "FuzzFIS_t\0"
	.byte	0x2
	.byte	0x5c
	.long	0x2d7
	.uleb128 0xd
	.ascii "FuzzFisSetup\0"
	.byte	0x1
	.byte	0x4
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x4e4
	.uleb128 0xe
	.ascii "obj\0"
	.byte	0x1
	.byte	0x4
	.long	0x4e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.ascii "type\0"
	.byte	0x1
	.byte	0x4
	.long	0x1ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xe
	.ascii "universe_resolution\0"
	.byte	0x1
	.byte	0x4
	.long	0x15f
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0xe
	.ascii "AND_Method\0"
	.byte	0x1
	.byte	0x5
	.long	0x206
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0xe
	.ascii "OR_Method\0"
	.byte	0x1
	.byte	0x5
	.long	0x206
	.uleb128 0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0xe
	.ascii "inputs\0"
	.byte	0x1
	.byte	0x6
	.long	0x3ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0xe
	.ascii "nins\0"
	.byte	0x1
	.byte	0x6
	.long	0xc9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.ascii "outputs\0"
	.byte	0x1
	.byte	0x6
	.long	0x3ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 56
	.uleb128 0xe
	.ascii "nouts\0"
	.byte	0x1
	.byte	0x6
	.long	0xc9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.ascii "mfinputs\0"
	.byte	0x1
	.byte	0x7
	.long	0x3b4
	.uleb128 0x3
	.byte	0x91
	.sleb128 72
	.uleb128 0xe
	.ascii "nmfins\0"
	.byte	0x1
	.byte	0x7
	.long	0xc9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xe
	.ascii "mfoutputs\0"
	.byte	0x1
	.byte	0x7
	.long	0x3b4
	.uleb128 0x3
	.byte	0x91
	.sleb128 88
	.uleb128 0xe
	.ascii "nmfouts\0"
	.byte	0x1
	.byte	0x7
	.long	0xc9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3ba
	.uleb128 0xd
	.ascii "FuzzAddMF\0"
	.byte	0x1
	.byte	0x17
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x57e
	.uleb128 0xe
	.ascii "mfvar\0"
	.byte	0x1
	.byte	0x17
	.long	0x3b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.ascii "iotag\0"
	.byte	0x1
	.byte	0x17
	.long	0xc9
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xe
	.ascii "mftag\0"
	.byte	0x1
	.byte	0x17
	.long	0xc9
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0xe
	.ascii "shape\0"
	.byte	0x1
	.byte	0x17
	.long	0x1c2
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0xe
	.ascii "a\0"
	.byte	0x1
	.byte	0x17
	.long	0x15f
	.uleb128 0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0xe
	.ascii "b\0"
	.byte	0x1
	.byte	0x17
	.long	0x15f
	.uleb128 0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0xe
	.ascii "c\0"
	.byte	0x1
	.byte	0x17
	.long	0x15f
	.uleb128 0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0xe
	.ascii "d\0"
	.byte	0x1
	.byte	0x17
	.long	0x15f
	.uleb128 0x2
	.byte	0x91
	.sleb128 56
	.byte	0
	.uleb128 0xd
	.ascii "FuzzAddIO\0"
	.byte	0x1
	.byte	0x21
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x5de
	.uleb128 0xe
	.ascii "iovar\0"
	.byte	0x1
	.byte	0x21
	.long	0x3ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.ascii "tag\0"
	.byte	0x1
	.byte	0x21
	.long	0xc9
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xe
	.ascii "umin\0"
	.byte	0x1
	.byte	0x21
	.long	0x15f
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0xe
	.ascii "umax\0"
	.byte	0x1
	.byte	0x21
	.long	0x15f
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.byte	0
	.uleb128 0xf
	.ascii "FuzzFuzz\0"
	.byte	0x1
	.byte	0x26
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x62c
	.uleb128 0xe
	.ascii "obj\0"
	.byte	0x1
	.byte	0x26
	.long	0x4e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.ascii "inputs\0"
	.byte	0x1
	.byte	0x26
	.long	0x62c
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x10
	.ascii "i\0"
	.byte	0x1
	.byte	0x27
	.long	0xc9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x15f
	.uleb128 0x11
	.ascii "ParseFuzzValue\0"
	.byte	0x1
	.byte	0x33
	.long	0x15f
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x698
	.uleb128 0xe
	.ascii "mfio\0"
	.byte	0x1
	.byte	0x33
	.long	0x3b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.ascii "index\0"
	.byte	0x1
	.byte	0x33
	.long	0xda
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x10
	.ascii "not\0"
	.byte	0x1
	.byte	0x34
	.long	0xc9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x10
	.ascii "y\0"
	.byte	0x1
	.byte	0x36
	.long	0x15f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.ascii "FuzzyIS\0"
	.byte	0x1
	.byte	0x3c
	.long	0xe7
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x7c5
	.uleb128 0xe
	.ascii "obj\0"
	.byte	0x1
	.byte	0x3c
	.long	0x4e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.ascii "rules\0"
	.byte	0x1
	.byte	0x3c
	.long	0x7c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xe
	.ascii "n\0"
	.byte	0x1
	.byte	0x3c
	.long	0xc9
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x10
	.ascii "i\0"
	.byte	0x1
	.byte	0x3d
	.long	0xc9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x10
	.ascii "j\0"
	.byte	0x1
	.byte	0x3d
	.long	0xc9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x10
	.ascii "RULESTATE\0"
	.byte	0x1
	.byte	0x40
	.long	0xc9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -35
	.uleb128 0x10
	.ascii "input_index\0"
	.byte	0x1
	.byte	0x41
	.long	0xc9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -45
	.uleb128 0x10
	.ascii "mfinput_index\0"
	.byte	0x1
	.byte	0x42
	.long	0xda
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x10
	.ascii "output_index\0"
	.byte	0x1
	.byte	0x43
	.long	0xc9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.uleb128 0x10
	.ascii "mfoutput_index\0"
	.byte	0x1
	.byte	0x44
	.long	0xda
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x10
	.ascii "conector\0"
	.byte	0x1
	.byte	0x45
	.long	0xda
	.uleb128 0x2
	.byte	0x91
	.sleb128 -58
	.uleb128 0x10
	.ascii "last_conector\0"
	.byte	0x1
	.byte	0x45
	.long	0xda
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x10
	.ascii "rule_strength\0"
	.byte	0x1
	.byte	0x46
	.long	0x15f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x10
	.ascii "index\0"
	.byte	0x1
	.byte	0x47
	.long	0xee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x7cb
	.uleb128 0x13
	.long	0xda
	.uleb128 0x12
	.ascii "FuzzDeFuzz\0"
	.byte	0x1
	.byte	0x87
	.long	0x15f
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x8ae
	.uleb128 0xe
	.ascii "obj\0"
	.byte	0x1
	.byte	0x87
	.long	0x4e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.ascii "tag\0"
	.byte	0x1
	.byte	0x87
	.long	0xc9
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x10
	.ascii "i\0"
	.byte	0x1
	.byte	0x88
	.long	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.ascii "j\0"
	.byte	0x1
	.byte	0x88
	.long	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.ascii "n\0"
	.byte	0x1
	.byte	0x88
	.long	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.ascii "y\0"
	.byte	0x1
	.byte	0x89
	.long	0x15f
	.uleb128 0x10
	.ascii "x\0"
	.byte	0x1
	.byte	0x8a
	.long	0x15f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x10
	.ascii "z\0"
	.byte	0x1
	.byte	0x8b
	.long	0x15f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x10
	.ascii "outfuzzval\0"
	.byte	0x1
	.byte	0x8c
	.long	0x15f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x10
	.ascii "fx\0"
	.byte	0x1
	.byte	0x8d
	.long	0x15f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x10
	.ascii "maxval\0"
	.byte	0x1
	.byte	0x8e
	.long	0x15f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x10
	.ascii "intfx\0"
	.byte	0x1
	.byte	0x8f
	.long	0x15f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.ascii "intxfx\0"
	.byte	0x1
	.byte	0x8f
	.long	0x15f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x12
	.ascii "__fuzz_mf\0"
	.byte	0x1
	.byte	0xa6
	.long	0x15f
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x930
	.uleb128 0xe
	.ascii "mf\0"
	.byte	0x1
	.byte	0xa6
	.long	0x1c2
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.ascii "x\0"
	.byte	0x1
	.byte	0xa6
	.long	0x15f
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xe
	.ascii "points\0"
	.byte	0x1
	.byte	0xa6
	.long	0x62c
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x10
	.ascii "a\0"
	.byte	0x1
	.byte	0xa7
	.long	0x15f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x10
	.ascii "b\0"
	.byte	0x1
	.byte	0xa8
	.long	0x15f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.ascii "c\0"
	.byte	0x1
	.byte	0xa9
	.long	0x15f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x10
	.ascii "d\0"
	.byte	0x1
	.byte	0xaa
	.long	0x15f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x11
	.ascii "FuzzMin\0"
	.byte	0x1
	.byte	0xc9
	.long	0x15f
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x97a
	.uleb128 0xe
	.ascii "a\0"
	.byte	0x1
	.byte	0xc9
	.long	0x15f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.ascii "b\0"
	.byte	0x1
	.byte	0xc9
	.long	0x15f
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x10
	.ascii "y\0"
	.byte	0x1
	.byte	0xca
	.long	0x15f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.ascii "FuzzMax\0"
	.byte	0x1
	.byte	0xd0
	.long	0x15f
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x9c4
	.uleb128 0xe
	.ascii "a\0"
	.byte	0x1
	.byte	0xd0
	.long	0x15f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.ascii "b\0"
	.byte	0x1
	.byte	0xd0
	.long	0x15f
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x10
	.ascii "y\0"
	.byte	0x1
	.byte	0xd1
	.long	0x15f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.ascii "FuzzProd\0"
	.byte	0x1
	.byte	0xd7
	.long	0x15f
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0xa0f
	.uleb128 0xe
	.ascii "a\0"
	.byte	0x1
	.byte	0xd7
	.long	0x15f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.ascii "b\0"
	.byte	0x1
	.byte	0xd7
	.long	0x15f
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x10
	.ascii "y\0"
	.byte	0x1
	.byte	0xd8
	.long	0x15f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x15
	.ascii "FuzzProbOR\0"
	.byte	0x1
	.byte	0xde
	.long	0x15f
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xe
	.ascii "a\0"
	.byte	0x1
	.byte	0xde
	.long	0x15f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.ascii "b\0"
	.byte	0x1
	.byte	0xde
	.long	0x15f
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x10
	.ascii "y\0"
	.byte	0x1
	.byte	0xdf
	.long	0x15f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.section	.debug_abbrev,"dr"
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"dr"
	.long	0x2c
	.word	0x2
	.secrel32	.Ldebug_info0
	.byte	0x8
	.byte	0
	.word	0
	.word	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"dr"
.Ldebug_line0:
	.section	.debug_str,"dr"
	.ident	"GCC: (GNU) 4.9.3"
	.def	pow;	.scl	2;	.type	32;	.endef
	.def	exp;	.scl	2;	.type	32;	.endef
