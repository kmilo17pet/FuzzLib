	.file	"fuzzfis.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.globl	FuzzFisSetup
	.def	FuzzFisSetup;	.scl	2;	.type	32;	.endef
	.seh_proc	FuzzFisSetup
FuzzFisSetup:
.LFB0:
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
	movl	%r8d, 32(%rbp)
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
	movq	16(%rbp), %rax
	movl	32(%rbp), %edx
	movl	%edx, 41(%rax)
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
.LFE0:
	.seh_endproc
	.globl	FuzzAddMF
	.def	FuzzAddMF;	.scl	2;	.type	32;	.endef
	.seh_proc	FuzzAddMF
FuzzAddMF:
.LFB1:
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
	movzbl	32(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	addq	%rax, %rdx
	movl	40(%rbp), %eax
	movl	%eax, 4(%rdx)
	.loc 1 25 0
	movzbl	32(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	addq	%rax, %rdx
	movzbl	24(%rbp), %eax
	movb	%al, (%rdx)
	.loc 1 26 0
	movzbl	32(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	addq	%rax, %rdx
	movl	48(%rbp), %eax
	movl	%eax, 16(%rdx)
	.loc 1 27 0
	movzbl	32(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	addq	%rax, %rdx
	movl	56(%rbp), %eax
	movl	%eax, 20(%rdx)
	.loc 1 28 0
	movzbl	32(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	addq	%rax, %rdx
	movl	64(%rbp), %eax
	movl	%eax, 24(%rdx)
	.loc 1 29 0
	movzbl	32(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	addq	%rax, %rdx
	movl	72(%rbp), %eax
	movl	%eax, 28(%rdx)
	.loc 1 30 0
	movzbl	32(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	addq	%rax, %rdx
	movl	.LC0(%rip), %eax
	movl	%eax, 32(%rdx)
	.loc 1 31 0
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.seh_endproc
	.globl	FuzzAddOutputFunction
	.def	FuzzAddOutputFunction;	.scl	2;	.type	32;	.endef
	.seh_proc	FuzzAddOutputFunction
FuzzAddOutputFunction:
.LFB2:
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
	movl	%r8d, %edx
	movq	%r9, 40(%rbp)
	movb	%al, 24(%rbp)
	movb	%dl, 32(%rbp)
	.loc 1 34 0
	movzbl	32(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	addq	%rax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, 8(%rdx)
	.loc 1 35 0
	movzbl	32(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	addq	%rax, %rdx
	movzbl	24(%rbp), %eax
	movb	%al, (%rdx)
	.loc 1 36 0
	movzbl	32(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	addq	%rax, %rdx
	movl	.LC0(%rip), %eax
	movl	%eax, 32(%rdx)
	.loc 1 37 0
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.seh_endproc
	.globl	FuzzAddIO
	.def	FuzzAddIO;	.scl	2;	.type	32;	.endef
	.seh_proc	FuzzAddIO
FuzzAddIO:
.LFB3:
	.loc 1 39 0
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
	.loc 1 40 0
	movzbl	24(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	addq	%rax, %rdx
	movl	32(%rbp), %eax
	movl	%eax, (%rdx)
	.loc 1 41 0
	movzbl	24(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	addq	%rax, %rdx
	movl	40(%rbp), %eax
	movl	%eax, 4(%rdx)
	.loc 1 42 0
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.seh_endproc
	.globl	FuzzFuzz
	.def	FuzzFuzz;	.scl	2;	.type	32;	.endef
	.seh_proc	FuzzFuzz
FuzzFuzz:
.LFB4:
	.loc 1 44 0
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
	.loc 1 46 0
	movb	$0, -65(%rbp)
	jmp	.L6
.L11:
	.loc 1 47 0
	movq	-32(%rbp), %rax
	movq	4(%rax), %rcx
	movzbl	-65(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movss	8(%rax), %xmm0
	movq	-32(%rbp), %rax
	movq	4(%rax), %rcx
	movzbl	-65(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movss	4(%rax), %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L7
	.loc 1 47 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax
	movq	4(%rax), %rcx
	movzbl	-65(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	4(%rax), %r8
	movzbl	-65(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%r8, %rax
	movl	4(%rax), %eax
	movl	%eax, 8(%rcx)
.L7:
	.loc 1 48 0 is_stmt 1
	movq	-32(%rbp), %rax
	movq	4(%rax), %rcx
	movzbl	-65(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movss	8(%rax), %xmm1
	movq	-32(%rbp), %rax
	movq	4(%rax), %rcx
	movzbl	-65(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movss	(%rax), %xmm0
	ucomiss	%xmm1, %xmm0
	jbe	.L9
	.loc 1 48 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax
	movq	4(%rax), %rcx
	movzbl	-65(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	4(%rax), %r8
	movzbl	-65(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%r8, %rax
	movl	(%rax), %eax
	movl	%eax, 8(%rcx)
.L9:
	.loc 1 46 0 is_stmt 1 discriminator 2
	movzbl	-65(%rbp), %eax
	addl	$1, %eax
	movb	%al, -65(%rbp)
.L6:
	.loc 1 46 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax
	movzbl	37(%rax), %eax
	cmpb	-65(%rbp), %al
	ja	.L11
	.loc 1 50 0 is_stmt 1
	movb	$0, -65(%rbp)
	jmp	.L12
.L13:
	.loc 1 51 0 discriminator 3
	movq	-32(%rbp), %rax
	movq	20(%rax), %rcx
	movzbl	-65(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rbx
	.loc 1 53 0 discriminator 3
	movq	-32(%rbp), %rax
	movq	20(%rax), %rcx
	movzbl	-65(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	leaq	16(%rax), %r9
	.loc 1 52 0 discriminator 3
	movq	-32(%rbp), %rax
	movq	4(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	20(%rax), %r8
	movzbl	-65(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%r8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	.loc 1 51 0 discriminator 3
	movl	8(%rax), %ecx
	movq	-32(%rbp), %rax
	movq	20(%rax), %r8
	movzbl	-65(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%r8, %rax
	movl	4(%rax), %eax
	movq	%r9, %r8
	movl	%ecx, -84(%rbp)
	movss	-84(%rbp), %xmm1
	movl	%eax, %ecx
	call	__fuzz_mf
	movd	%xmm0, %eax
	movl	%eax, 32(%rbx)
	.loc 1 50 0 discriminator 3
	movzbl	-65(%rbp), %eax
	addl	$1, %eax
	movb	%al, -65(%rbp)
.L12:
	.loc 1 50 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax
	movzbl	39(%rax), %eax
	cmpb	-65(%rbp), %al
	ja	.L13
	.loc 1 56 0 is_stmt 1
	addq	$72, %rsp
	popq	%rbx
	.cfi_restore 3
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, -56
	ret
	.cfi_endproc
.LFE4:
	.seh_endproc
	.globl	ParseFuzzValue
	.def	ParseFuzzValue;	.scl	2;	.type	32;	.endef
	.seh_proc	ParseFuzzValue
ParseFuzzValue:
.LFB5:
	.loc 1 58 0
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
	.loc 1 60 0
	movzwl	24(%rbp), %eax
	shrw	$15, %ax
	movb	%al, -1(%rbp)
	cmpb	$0, -1(%rbp)
	je	.L17
	.loc 1 60 0 is_stmt 0 discriminator 1
	movzwl	24(%rbp), %eax
	negl	%eax
	movw	%ax, 24(%rbp)
.L17:
	.loc 1 61 0 is_stmt 1
	movswq	24(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-40(%rax), %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	movl	32(%rax), %eax
	movl	%eax, -8(%rbp)
	.loc 1 62 0
	movss	-8(%rbp), %xmm0
	movss	.LC1(%rip), %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L28
	.loc 1 62 0 is_stmt 0 discriminator 1
	movl	.LC1(%rip), %eax
	jmp	.L20
.L28:
	.loc 1 62 0 discriminator 2
	pxor	%xmm0, %xmm0
	ucomiss	-8(%rbp), %xmm0
	jbe	.L29
	.loc 1 62 0 discriminator 4
	movl	.LC0(%rip), %eax
	jmp	.L20
.L29:
	.loc 1 62 0 discriminator 5
	movl	-8(%rbp), %eax
.L20:
	.loc 1 62 0 discriminator 8
	movl	%eax, -8(%rbp)
	.loc 1 63 0 is_stmt 1 discriminator 8
	cmpb	$0, -1(%rbp)
	je	.L24
	.loc 1 63 0 is_stmt 0 discriminator 1
	movss	.LC1(%rip), %xmm0
	subss	-8(%rbp), %xmm0
	movd	%xmm0, %eax
	jmp	.L25
.L24:
	.loc 1 64 0 is_stmt 1
	movl	-8(%rbp), %eax
.L25:
	movl	%eax, -20(%rbp)
	movss	-20(%rbp), %xmm0
	.loc 1 65 0
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.seh_endproc
	.globl	FuzzyIS
	.def	FuzzyIS;	.scl	2;	.type	32;	.endef
	.seh_proc	FuzzyIS
FuzzyIS:
.LFB6:
	.loc 1 67 0
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
	.loc 1 71 0
	movb	$0, -51(%rbp)
	.loc 1 72 0
	movb	$0, -61(%rbp)
	.loc 1 73 0
	movw	$0, -64(%rbp)
	.loc 1 74 0
	movb	$0, -65(%rbp)
	.loc 1 75 0
	movw	$0, -68(%rbp)
	.loc 1 77 0
	movl	.LC0(%rip), %eax
	movl	%eax, -60(%rbp)
	.loc 1 80 0
	movb	$0, -49(%rbp)
	jmp	.L31
.L53:
	.loc 1 81 0
	movb	$0, -51(%rbp)
	.loc 1 82 0
	movw	$-1, -54(%rbp)
	.loc 1 83 0
	movl	.LC0(%rip), %eax
	movl	%eax, -60(%rbp)
	.loc 1 84 0
	movb	$0, -50(%rbp)
	jmp	.L32
.L52:
	.loc 1 85 0
	movzbl	-49(%rbp), %edx
	movq	-16(%rbp), %rax
	movzbl	36(%rax), %eax
	movzbl	%al, %eax
	imull	%eax, %edx
	movzbl	-50(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -72(%rbp)
	.loc 1 86 0
	cmpb	$0, -51(%rbp)
	jne	.L33
	.loc 1 87 0
	movl	-72(%rbp), %eax
	leaq	(%rax,%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movb	%al, -61(%rbp)
	.loc 1 88 0
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %eax
	leaq	(%rax,%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -64(%rbp)
	.loc 1 89 0
	movl	-72(%rbp), %eax
	addl	$2, %eax
	movl	%eax, %eax
	leaq	(%rax,%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -74(%rbp)
	.loc 1 90 0
	movswl	-54(%rbp), %eax
	cmpl	$-32765, %eax
	je	.L35
	cmpl	$-1, %eax
	je	.L36
	cmpl	$-32766, %eax
	jne	.L54
	.loc 1 92 0
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
	.loc 1 93 0
	jmp	.L38
.L35:
	.loc 1 95 0
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
	.loc 1 96 0
	jmp	.L38
.L36:
	.loc 1 98 0
	movswl	-64(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	20(%rax), %rax
	movq	%rax, %rcx
	call	ParseFuzzValue
	movd	%xmm0, %eax
	movl	%eax, -60(%rbp)
	.loc 1 99 0
	jmp	.L38
.L54:
	.loc 1 101 0
	movl	$-1, %eax
	jmp	.L39
.L38:
	.loc 1 105 0
	movq	-16(%rbp), %rax
	movzbl	37(%rax), %eax
	cmpb	-61(%rbp), %al
	jnb	.L40
	.loc 1 105 0 is_stmt 0 discriminator 1
	movl	$-1, %eax
	jmp	.L39
.L40:
	.loc 1 107 0 is_stmt 1
	cmpw	$-32766, -74(%rbp)
	je	.L41
	.loc 1 107 0 is_stmt 0 discriminator 1
	cmpw	$-32765, -74(%rbp)
	jne	.L42
.L41:
	.loc 1 108 0 is_stmt 1
	movzwl	-74(%rbp), %eax
	movw	%ax, -54(%rbp)
	.loc 1 109 0
	movb	$0, -51(%rbp)
	.loc 1 110 0
	addb	$2, -50(%rbp)
	.loc 1 111 0
	jmp	.L43
.L42:
	.loc 1 113 0
	cmpw	$-32764, -74(%rbp)
	jne	.L44
	.loc 1 114 0
	movb	$2, -51(%rbp)
	.loc 1 115 0
	addb	$2, -50(%rbp)
	.loc 1 116 0
	jmp	.L43
.L44:
	.loc 1 118 0
	movl	$-1, %eax
	jmp	.L39
.L33:
	.loc 1 120 0
	cmpb	$2, -51(%rbp)
	jne	.L43
	.loc 1 121 0
	movl	-72(%rbp), %eax
	leaq	(%rax,%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movb	%al, -65(%rbp)
	.loc 1 122 0
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %eax
	leaq	(%rax,%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	subl	$1, %eax
	movw	%ax, -68(%rbp)
	.loc 1 123 0
	movq	-16(%rbp), %rax
	movzbl	38(%rax), %eax
	cmpb	$1, %al
	jbe	.L45
	.loc 1 123 0 is_stmt 0 discriminator 1
	movl	-72(%rbp), %eax
	addl	$2, %eax
	movl	%eax, %eax
	leaq	(%rax,%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	jmp	.L46
.L45:
	.loc 1 123 0 discriminator 2
	movl	$-1, %eax
.L46:
	.loc 1 123 0 discriminator 4
	movw	%ax, -74(%rbp)
	.loc 1 124 0 is_stmt 1 discriminator 4
	addb	$2, -50(%rbp)
	.loc 1 125 0 discriminator 4
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L48
	cmpl	$1, %eax
	je	.L56
	.loc 1 125 0 is_stmt 0
	jmp	.L55
.L48:
	.loc 1 127 0 is_stmt 1
	movq	-16(%rbp), %rax
	movq	28(%rax), %rcx
	movswq	-68(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rbx
	movq	-16(%rbp), %rax
	movq	28(%rax), %rcx
	movswq	-68(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movl	32(%rax), %eax
	movl	-60(%rbp), %edx
	movl	%edx, -84(%rbp)
	movss	-84(%rbp), %xmm1
	movl	%eax, -84(%rbp)
	movss	-84(%rbp), %xmm0
	call	FuzzMax
	movd	%xmm0, %eax
	movl	%eax, 32(%rbx)
	.loc 1 128 0
	jmp	.L50
.L55:
	.loc 1 132 0
	movl	$-1, %eax
	jmp	.L39
.L56:
	.loc 1 131 0
	nop
.L50:
	.loc 1 135 0
	cmpw	$-32766, -74(%rbp)
	je	.L43
	jmp	.L51
.L43:
	.loc 1 84 0 discriminator 2
	movzbl	-50(%rbp), %eax
	addl	$1, %eax
	movb	%al, -50(%rbp)
.L32:
	.loc 1 84 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax
	movzbl	36(%rax), %eax
	cmpb	-50(%rbp), %al
	ja	.L52
.L51:
	.loc 1 80 0 is_stmt 1 discriminator 2
	movzbl	-49(%rbp), %eax
	addl	$1, %eax
	movb	%al, -49(%rbp)
.L31:
	.loc 1 80 0 is_stmt 0 discriminator 1
	movzbl	-49(%rbp), %eax
	cmpb	0(%rbp), %al
	jb	.L53
	.loc 1 139 0 is_stmt 1
	movl	$0, %eax
.L39:
	.loc 1 140 0
	addq	$88, %rsp
	popq	%rbx
	.cfi_restore 3
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, -72
	ret
	.cfi_endproc
.LFE6:
	.seh_endproc
	.globl	FuzzDeFuzz
	.def	FuzzDeFuzz;	.scl	2;	.type	32;	.endef
	.seh_proc	FuzzDeFuzz
FuzzDeFuzz:
.LFB7:
	.loc 1 142 0
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
	.loc 1 150 0
	movb	$0, -25(%rbp)
	jmp	.L58
.L74:
	.loc 1 151 0
	movl	.LC0(%rip), %eax
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -20(%rbp)
	.loc 1 152 0
	movq	16(%rbp), %rax
	movq	12(%rax), %rcx
	movzbl	-25(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movss	4(%rax), %xmm0
	movq	16(%rbp), %rax
	movq	12(%rax), %rcx
	movzbl	-25(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movss	(%rax), %xmm1
	subss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	movq	16(%rbp), %rax
	movl	41(%rax), %eax
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L59
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rax, %xmm0
	jmp	.L60
.L59:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L60:
	divss	%xmm0, %xmm1
	movd	%xmm1, %eax
	movl	%eax, -32(%rbp)
	.loc 1 153 0
	movl	$0, -4(%rbp)
	jmp	.L61
.L73:
	.loc 1 154 0
	movq	16(%rbp), %rax
	movq	12(%rax), %rcx
	movzbl	-25(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movss	(%rax), %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2ss	-4(%rbp), %xmm0
	mulss	-32(%rbp), %xmm0
	addss	%xmm0, %xmm1
	movd	%xmm1, %eax
	movl	%eax, -12(%rbp)
	.loc 1 155 0
	movq	16(%rbp), %rax
	movq	12(%rax), %rcx
	movzbl	-25(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movss	4(%rax), %xmm1
	movss	-12(%rbp), %xmm0
	ucomiss	%xmm1, %xmm0
	jbe	.L62
	.loc 1 155 0 is_stmt 0 discriminator 1
	movq	16(%rbp), %rax
	movq	12(%rax), %rcx
	movzbl	-25(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movl	4(%rax), %eax
	movl	%eax, -12(%rbp)
.L62:
	.loc 1 156 0 is_stmt 1
	movl	.LC0(%rip), %eax
	movl	%eax, -16(%rbp)
	.loc 1 157 0
	movl	$0, -8(%rbp)
	jmp	.L64
.L69:
	.loc 1 158 0
	movq	16(%rbp), %rax
	movq	28(%rax), %rcx
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	cmpb	-25(%rbp), %al
	jne	.L65
	.loc 1 159 0
	movq	16(%rbp), %rax
	movq	28(%rax), %rcx
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	leaq	16(%rax), %r8
	movq	16(%rbp), %rax
	movq	28(%rax), %rcx
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movl	4(%rax), %eax
	movl	-12(%rbp), %edx
	movl	%edx, -52(%rbp)
	movss	-52(%rbp), %xmm1
	movl	%eax, %ecx
	call	__fuzz_mf
	movd	%xmm0, %eax
	movl	%eax, -36(%rbp)
	.loc 1 160 0
	movq	16(%rbp), %rax
	movq	28(%rax), %rcx
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movss	32(%rax), %xmm1
	movss	-36(%rbp), %xmm0
	ucomiss	%xmm1, %xmm0
	jbe	.L78
	.loc 1 160 0 is_stmt 0 discriminator 1
	movq	16(%rbp), %rax
	movq	28(%rax), %rcx
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movl	32(%rax), %eax
	jmp	.L68
.L78:
	.loc 1 160 0 discriminator 2
	movl	-36(%rbp), %eax
.L68:
	.loc 1 160 0 discriminator 4
	movl	-16(%rbp), %edx
	movl	%eax, -52(%rbp)
	movss	-52(%rbp), %xmm1
	movl	%edx, -52(%rbp)
	movss	-52(%rbp), %xmm0
	call	FuzzMax
	movd	%xmm0, %eax
	movl	%eax, -16(%rbp)
.L65:
	.loc 1 157 0 is_stmt 1 discriminator 2
	addl	$1, -8(%rbp)
.L64:
	.loc 1 157 0 is_stmt 0 discriminator 1
	movq	16(%rbp), %rax
	movzbl	40(%rax), %eax
	movzbl	%al, %eax
	cmpl	-8(%rbp), %eax
	jg	.L69
	.loc 1 163 0 is_stmt 1
	movss	-12(%rbp), %xmm0
	mulss	-16(%rbp), %xmm0
	movss	-24(%rbp), %xmm1
	addss	%xmm0, %xmm1
	movd	%xmm1, %eax
	movl	%eax, -24(%rbp)
	.loc 1 164 0
	movss	-20(%rbp), %xmm0
	addss	-16(%rbp), %xmm0
	movd	%xmm0, %eax
	movl	%eax, -20(%rbp)
	.loc 1 165 0
	movq	16(%rbp), %rax
	movq	12(%rax), %rcx
	movzbl	-25(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movss	4(%rax), %xmm1
	movss	-12(%rbp), %xmm0
	ucomiss	%xmm1, %xmm0
	jb	.L79
	jmp	.L72
.L79:
	.loc 1 153 0 discriminator 2
	addl	$1, -4(%rbp)
.L61:
	.loc 1 153 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %edx
	movq	16(%rbp), %rax
	movl	41(%rax), %eax
	addl	$1, %eax
	cmpl	%eax, %edx
	jb	.L73
.L72:
	.loc 1 167 0 is_stmt 1 discriminator 2
	movq	16(%rbp), %rax
	movq	12(%rax), %rcx
	movzbl	-25(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	movss	-24(%rbp), %xmm0
	divss	-20(%rbp), %xmm0
	movd	%xmm0, %eax
	movl	%eax, 8(%rdx)
	.loc 1 150 0 discriminator 2
	movzbl	-25(%rbp), %eax
	addl	$1, %eax
	movb	%al, -25(%rbp)
.L58:
	.loc 1 150 0 is_stmt 0 discriminator 1
	movq	16(%rbp), %rax
	movzbl	38(%rax), %eax
	cmpb	-25(%rbp), %al
	ja	.L74
	.loc 1 169 0 is_stmt 1
	addq	$96, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.seh_endproc
	.globl	__fuzz_mf
	.def	__fuzz_mf;	.scl	2;	.type	32;	.endef
	.seh_proc	__fuzz_mf
__fuzz_mf:
.LFB8:
	.loc 1 171 0
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
	movaps	%xmm6, -16(%rbp)
	.seh_savexmm	%xmm6, 80
	.cfi_offset 23, -32
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movss	%xmm1, 24(%rbp)
	movq	%r8, 32(%rbp)
	.loc 1 174 0
	cmpl	$11, 16(%rbp)
	ja	.L81
	movl	16(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L83(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L83(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L83:
	.long	.L82-.L83
	.long	.L84-.L83
	.long	.L85-.L83
	.long	.L86-.L83
	.long	.L87-.L83
	.long	.L88-.L83
	.long	.L89-.L83
	.long	.L90-.L83
	.long	.L91-.L83
	.long	.L92-.L83
	.long	.L93-.L83
	.long	.L94-.L83
	.text
.L82:
	.loc 1 176 0
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	.loc 1 177 0
	movq	32(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -24(%rbp)
	.loc 1 178 0
	movq	32(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -28(%rbp)
	.loc 1 179 0
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
	jmp	.L95
.L84:
	.loc 1 181 0
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	.loc 1 182 0
	movq	32(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -24(%rbp)
	.loc 1 183 0
	movq	32(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -28(%rbp)
	.loc 1 184 0
	movq	32(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, -32(%rbp)
	.loc 1 185 0
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
	jmp	.L95
.L85:
	.loc 1 187 0
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	.loc 1 188 0
	movq	32(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -24(%rbp)
	.loc 1 189 0
	movss	-24(%rbp), %xmm0
	addss	%xmm0, %xmm0
	cvtss2sd	%xmm0, %xmm2
	movss	24(%rbp), %xmm0
	subss	-28(%rbp), %xmm0
	divss	-20(%rbp), %xmm0
	movss	.LC2(%rip), %xmm1
	andps	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movapd	%xmm2, %xmm1
	call	pow
	movapd	%xmm0, %xmm1
	movsd	.LC3(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	.LC3(%rip), %xmm1
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm3
	movd	%xmm3, %eax
	jmp	.L95
.L86:
	.loc 1 191 0
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	.loc 1 192 0
	movq	32(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -24(%rbp)
	.loc 1 193 0
	movss	24(%rbp), %xmm0
	subss	-24(%rbp), %xmm0
	divss	-20(%rbp), %xmm0
	movd	%xmm0, %eax
	movl	%eax, -36(%rbp)
	.loc 1 194 0
	cvtss2sd	-36(%rbp), %xmm0
	movsd	.LC4(%rip), %xmm1
	mulsd	%xmm0, %xmm1
	cvtss2sd	-36(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	call	exp
	cvtsd2ss	%xmm0, %xmm4
	movd	%xmm4, %eax
	jmp	.L95
.L87:
	.loc 1 196 0
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	.loc 1 197 0
	movq	32(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -24(%rbp)
	.loc 1 198 0
	movq	32(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -28(%rbp)
	.loc 1 199 0
	movq	32(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, -32(%rbp)
	.loc 1 200 0
	movss	-24(%rbp), %xmm0
	ucomiss	24(%rbp), %xmm0
	jb	.L140
	.loc 1 200 0 is_stmt 0 discriminator 1
	movl	.LC1(%rip), %eax
	jmp	.L98
.L140:
	.loc 1 200 0 discriminator 2
	movl	.LC0(%rip), %eax
.L98:
	.loc 1 200 0 discriminator 4
	movl	%eax, -40(%rbp)
	.loc 1 201 0 is_stmt 1 discriminator 4
	movss	24(%rbp), %xmm0
	subss	-24(%rbp), %xmm0
	movd	%xmm0, %eax
	movl	%eax, -44(%rbp)
	.loc 1 202 0 discriminator 4
	movss	-44(%rbp), %xmm1
	movss	.LC5(%rip), %xmm0
	xorps	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	mulss	-44(%rbp), %xmm1
	movss	-20(%rbp), %xmm0
	addss	%xmm0, %xmm0
	mulss	-20(%rbp), %xmm0
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	call	exp
	movapd	%xmm0, %xmm1
	cvtss2sd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movss	.LC1(%rip), %xmm0
	subss	-40(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm5
	movss	%xmm5, -36(%rbp)
	.loc 1 203 0 discriminator 4
	movss	24(%rbp), %xmm0
	ucomiss	-32(%rbp), %xmm0
	jb	.L141
	.loc 1 203 0 is_stmt 0 discriminator 1
	movl	.LC1(%rip), %eax
	jmp	.L101
.L141:
	.loc 1 203 0 discriminator 2
	movl	.LC0(%rip), %eax
.L101:
	.loc 1 203 0 discriminator 4
	movl	%eax, -40(%rbp)
	.loc 1 204 0 is_stmt 1 discriminator 4
	movss	24(%rbp), %xmm0
	subss	-32(%rbp), %xmm0
	movd	%xmm0, %eax
	movl	%eax, -44(%rbp)
	.loc 1 205 0 discriminator 4
	movss	-44(%rbp), %xmm1
	movss	.LC5(%rip), %xmm0
	xorps	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	mulss	-44(%rbp), %xmm1
	movss	-28(%rbp), %xmm0
	addss	%xmm0, %xmm0
	mulss	-28(%rbp), %xmm0
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	call	exp
	movapd	%xmm0, %xmm1
	cvtss2sd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movss	.LC1(%rip), %xmm0
	subss	-40(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	cvtss2sd	-36(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm3
	movss	%xmm3, -36(%rbp)
	.loc 1 206 0 discriminator 4
	movl	-36(%rbp), %eax
	jmp	.L95
.L88:
	.loc 1 208 0
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	.loc 1 209 0
	movq	32(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -24(%rbp)
	.loc 1 210 0
	movss	-20(%rbp), %xmm1
	movss	.LC5(%rip), %xmm0
	xorps	%xmm0, %xmm1
	movss	24(%rbp), %xmm0
	subss	-24(%rbp), %xmm0
	mulss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	call	exp
	movapd	%xmm0, %xmm1
	movsd	.LC3(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	.LC3(%rip), %xmm1
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm4
	movd	%xmm4, %eax
	jmp	.L95
.L89:
	.loc 1 212 0
	movq	32(%rbp), %rdx
	movl	24(%rbp), %eax
	movq	%rdx, %r8
	movl	%eax, -56(%rbp)
	movss	-56(%rbp), %xmm1
	movl	$5, %ecx
	call	__fuzz_mf
	movaps	%xmm0, %xmm6
	movq	32(%rbp), %rax
	leaq	8(%rax), %rdx
	movl	24(%rbp), %eax
	movq	%rdx, %r8
	movl	%eax, -56(%rbp)
	movss	-56(%rbp), %xmm1
	movl	$5, %ecx
	call	__fuzz_mf
	subss	%xmm0, %xmm6
	movaps	%xmm6, %xmm0
	movss	.LC2(%rip), %xmm1
	andps	%xmm1, %xmm0
	movd	%xmm0, %eax
	jmp	.L95
.L90:
	.loc 1 214 0
	movq	32(%rbp), %rdx
	movl	24(%rbp), %eax
	movq	%rdx, %r8
	movl	%eax, -56(%rbp)
	movss	-56(%rbp), %xmm1
	movl	$5, %ecx
	call	__fuzz_mf
	movaps	%xmm0, %xmm6
	movq	32(%rbp), %rax
	leaq	8(%rax), %rdx
	movl	24(%rbp), %eax
	movq	%rdx, %r8
	movl	%eax, -56(%rbp)
	movss	-56(%rbp), %xmm1
	movl	$5, %ecx
	call	__fuzz_mf
	mulss	%xmm0, %xmm6
	movd	%xmm6, %eax
	jmp	.L95
.L91:
	.loc 1 216 0
	movq	32(%rbp), %rdx
	movl	24(%rbp), %eax
	movq	%rdx, %r8
	movl	%eax, -56(%rbp)
	movss	-56(%rbp), %xmm1
	movl	$9, %ecx
	call	__fuzz_mf
	movaps	%xmm0, %xmm6
	movq	32(%rbp), %rax
	leaq	8(%rax), %rdx
	movl	24(%rbp), %eax
	movq	%rdx, %r8
	movl	%eax, -56(%rbp)
	movss	-56(%rbp), %xmm1
	movl	$10, %ecx
	call	__fuzz_mf
	mulss	%xmm0, %xmm6
	movd	%xmm6, %eax
	jmp	.L95
.L92:
	.loc 1 218 0
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	.loc 1 219 0
	movq	32(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -24(%rbp)
	.loc 1 220 0
	movss	-20(%rbp), %xmm0
	ucomiss	24(%rbp), %xmm0
	jb	.L142
	.loc 1 220 0 is_stmt 0 discriminator 1
	movl	.LC0(%rip), %eax
	jmp	.L95
.L142:
	.loc 1 221 0 is_stmt 1
	movss	24(%rbp), %xmm0
	ucomiss	-20(%rbp), %xmm0
	jb	.L104
	.loc 1 221 0 is_stmt 0 discriminator 1
	movss	-20(%rbp), %xmm0
	addss	-24(%rbp), %xmm0
	movss	.LC6(%rip), %xmm1
	divss	%xmm1, %xmm0
	ucomiss	24(%rbp), %xmm0
	jb	.L104
	.loc 1 222 0 is_stmt 1
	movss	24(%rbp), %xmm0
	subss	-20(%rbp), %xmm0
	movss	-24(%rbp), %xmm1
	subss	-20(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movd	%xmm0, %eax
	movl	%eax, -36(%rbp)
	.loc 1 223 0
	cvtss2sd	-36(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	addsd	%xmm0, %xmm1
	cvtss2sd	-36(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm5
	movd	%xmm5, %eax
	jmp	.L95
.L104:
	.loc 1 225 0
	movss	-24(%rbp), %xmm0
	ucomiss	24(%rbp), %xmm0
	jb	.L107
	.loc 1 225 0 is_stmt 0 discriminator 1
	movss	-20(%rbp), %xmm0
	addss	-24(%rbp), %xmm0
	movss	.LC6(%rip), %xmm1
	divss	%xmm1, %xmm0
	movss	24(%rbp), %xmm1
	ucomiss	%xmm0, %xmm1
	jb	.L107
	.loc 1 226 0 is_stmt 1
	movss	24(%rbp), %xmm0
	subss	-24(%rbp), %xmm0
	movss	-24(%rbp), %xmm1
	subss	-20(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movd	%xmm0, %eax
	movl	%eax, -36(%rbp)
	.loc 1 227 0
	cvtss2sd	-36(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	addsd	%xmm0, %xmm1
	cvtss2sd	-36(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	.LC3(%rip), %xmm1
	subsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm3
	movd	%xmm3, %eax
	jmp	.L95
.L107:
	.loc 1 229 0
	movss	24(%rbp), %xmm0
	ucomiss	-24(%rbp), %xmm0
	jb	.L143
	.loc 1 229 0 is_stmt 0 discriminator 1
	movl	.LC1(%rip), %eax
	jmp	.L95
.L143:
	.loc 1 230 0 is_stmt 1
	movl	.LC0(%rip), %eax
	jmp	.L95
.L93:
	.loc 1 232 0
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	.loc 1 233 0
	movq	32(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -24(%rbp)
	.loc 1 234 0
	movss	-20(%rbp), %xmm0
	ucomiss	24(%rbp), %xmm0
	jb	.L144
	.loc 1 234 0 is_stmt 0 discriminator 1
	movl	.LC1(%rip), %eax
	jmp	.L95
.L144:
	.loc 1 235 0 is_stmt 1
	movss	24(%rbp), %xmm0
	ucomiss	-20(%rbp), %xmm0
	jb	.L114
	.loc 1 235 0 is_stmt 0 discriminator 1
	movss	-20(%rbp), %xmm0
	addss	-24(%rbp), %xmm0
	movss	.LC6(%rip), %xmm1
	divss	%xmm1, %xmm0
	ucomiss	24(%rbp), %xmm0
	jb	.L114
	.loc 1 235 0 discriminator 2
	movss	24(%rbp), %xmm0
	subss	-20(%rbp), %xmm0
	movss	-24(%rbp), %xmm1
	subss	-20(%rbp), %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movabsq	$4611686018427387904, %rax
	movq	%rax, -56(%rbp)
	movsd	-56(%rbp), %xmm1
	call	pow
	addsd	%xmm0, %xmm0
	movsd	.LC3(%rip), %xmm1
	subsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm4
	movd	%xmm4, %eax
	jmp	.L95
.L114:
	.loc 1 236 0 is_stmt 1
	movss	-24(%rbp), %xmm0
	ucomiss	24(%rbp), %xmm0
	jb	.L117
	.loc 1 236 0 is_stmt 0 discriminator 1
	movss	-20(%rbp), %xmm0
	addss	-24(%rbp), %xmm0
	movss	.LC6(%rip), %xmm1
	divss	%xmm1, %xmm0
	movss	24(%rbp), %xmm1
	ucomiss	%xmm0, %xmm1
	jb	.L117
	.loc 1 236 0 discriminator 2
	movss	24(%rbp), %xmm0
	subss	-24(%rbp), %xmm0
	movss	-24(%rbp), %xmm1
	subss	-20(%rbp), %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movabsq	$4611686018427387904, %rax
	movq	%rax, -56(%rbp)
	movsd	-56(%rbp), %xmm1
	call	pow
	addsd	%xmm0, %xmm0
	cvtsd2ss	%xmm0, %xmm5
	movd	%xmm5, %eax
	jmp	.L95
.L117:
	.loc 1 237 0 is_stmt 1
	movss	24(%rbp), %xmm0
	ucomiss	-24(%rbp), %xmm0
	jb	.L145
	.loc 1 237 0 is_stmt 0 discriminator 1
	movl	.LC0(%rip), %eax
	jmp	.L95
.L145:
	.loc 1 238 0 is_stmt 1
	movl	.LC0(%rip), %eax
	jmp	.L95
.L94:
	.loc 1 240 0
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	.loc 1 241 0
	movss	24(%rbp), %xmm0
	ucomiss	-20(%rbp), %xmm0
	jp	.L122
	movss	24(%rbp), %xmm0
	ucomiss	-20(%rbp), %xmm0
	jne	.L122
	.loc 1 241 0 is_stmt 0 discriminator 1
	movl	.LC1(%rip), %eax
	jmp	.L95
.L122:
	.loc 1 241 0 discriminator 2
	movl	.LC0(%rip), %eax
	jmp	.L95
.L81:
	.loc 1 243 0 is_stmt 1
	movl	.LC0(%rip), %eax
.L95:
	movl	%eax, -56(%rbp)
	movss	-56(%rbp), %xmm0
	.loc 1 245 0
	movaps	-16(%rbp), %xmm6
	addq	$96, %rsp
	.cfi_restore 23
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.seh_endproc
	.globl	FuzzMin
	.def	FuzzMin;	.scl	2;	.type	32;	.endef
	.seh_proc	FuzzMin
FuzzMin:
.LFB9:
	.loc 1 247 0
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
	.loc 1 248 0
	movss	24(%rbp), %xmm0
	ucomiss	16(%rbp), %xmm0
	jbe	.L158
	.loc 1 248 0 is_stmt 0 discriminator 1
	movl	16(%rbp), %eax
	jmp	.L149
.L158:
	.loc 1 248 0 discriminator 2
	movl	24(%rbp), %eax
.L149:
	.loc 1 248 0 discriminator 4
	movl	%eax, -4(%rbp)
	.loc 1 249 0 is_stmt 1 discriminator 4
	pxor	%xmm0, %xmm0
	ucomiss	-4(%rbp), %xmm0
	jbe	.L150
	.loc 1 249 0 is_stmt 0 discriminator 1
	movl	.LC0(%rip), %eax
	movl	%eax, -4(%rbp)
.L150:
	.loc 1 250 0 is_stmt 1
	movss	-4(%rbp), %xmm0
	movss	.LC1(%rip), %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L152
	.loc 1 250 0 is_stmt 0 discriminator 1
	movl	.LC1(%rip), %eax
	movl	%eax, -4(%rbp)
.L152:
	.loc 1 251 0 is_stmt 1
	movl	-4(%rbp), %eax
	movl	%eax, -20(%rbp)
	movss	-20(%rbp), %xmm0
	.loc 1 252 0
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.seh_endproc
	.globl	FuzzMax
	.def	FuzzMax;	.scl	2;	.type	32;	.endef
	.seh_proc	FuzzMax
FuzzMax:
.LFB10:
	.loc 1 254 0
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
	.loc 1 255 0
	movss	16(%rbp), %xmm0
	ucomiss	24(%rbp), %xmm0
	jbe	.L171
	.loc 1 255 0 is_stmt 0 discriminator 1
	movl	16(%rbp), %eax
	jmp	.L162
.L171:
	.loc 1 255 0 discriminator 2
	movl	24(%rbp), %eax
.L162:
	.loc 1 255 0 discriminator 4
	movl	%eax, -4(%rbp)
	.loc 1 256 0 is_stmt 1 discriminator 4
	pxor	%xmm0, %xmm0
	ucomiss	-4(%rbp), %xmm0
	jbe	.L163
	.loc 1 256 0 is_stmt 0 discriminator 1
	movl	.LC0(%rip), %eax
	movl	%eax, -4(%rbp)
.L163:
	.loc 1 257 0 is_stmt 1
	movss	-4(%rbp), %xmm0
	movss	.LC1(%rip), %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L165
	.loc 1 257 0 is_stmt 0 discriminator 1
	movl	.LC1(%rip), %eax
	movl	%eax, -4(%rbp)
.L165:
	.loc 1 258 0 is_stmt 1
	movl	-4(%rbp), %eax
	movl	%eax, -20(%rbp)
	movss	-20(%rbp), %xmm0
	.loc 1 259 0
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.seh_endproc
	.globl	FuzzProd
	.def	FuzzProd;	.scl	2;	.type	32;	.endef
	.seh_proc	FuzzProd
FuzzProd:
.LFB11:
	.loc 1 261 0
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
	.loc 1 262 0
	movss	16(%rbp), %xmm0
	mulss	24(%rbp), %xmm0
	movd	%xmm0, %eax
	movl	%eax, -4(%rbp)
	.loc 1 263 0
	pxor	%xmm0, %xmm0
	ucomiss	-4(%rbp), %xmm0
	jbe	.L173
	.loc 1 263 0 is_stmt 0 discriminator 1
	movl	.LC0(%rip), %eax
	movl	%eax, -4(%rbp)
.L173:
	.loc 1 264 0 is_stmt 1
	movss	-4(%rbp), %xmm0
	movss	.LC1(%rip), %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L175
	.loc 1 264 0 is_stmt 0 discriminator 1
	movl	.LC1(%rip), %eax
	movl	%eax, -4(%rbp)
.L175:
	.loc 1 265 0 is_stmt 1
	movl	-4(%rbp), %eax
	movl	%eax, -20(%rbp)
	movss	-20(%rbp), %xmm0
	.loc 1 266 0
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.seh_endproc
	.globl	FuzzProbOR
	.def	FuzzProbOR;	.scl	2;	.type	32;	.endef
	.seh_proc	FuzzProbOR
FuzzProbOR:
.LFB12:
	.loc 1 268 0
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
	.loc 1 269 0
	movss	16(%rbp), %xmm0
	addss	24(%rbp), %xmm0
	movss	16(%rbp), %xmm1
	mulss	24(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movd	%xmm0, %eax
	movl	%eax, -4(%rbp)
	.loc 1 270 0
	pxor	%xmm0, %xmm0
	ucomiss	-4(%rbp), %xmm0
	jbe	.L181
	.loc 1 270 0 is_stmt 0 discriminator 1
	movl	.LC0(%rip), %eax
	movl	%eax, -4(%rbp)
.L181:
	.loc 1 271 0 is_stmt 1
	movss	-4(%rbp), %xmm0
	movss	.LC1(%rip), %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L183
	.loc 1 271 0 is_stmt 0 discriminator 1
	movl	.LC1(%rip), %eax
	movl	%eax, -4(%rbp)
.L183:
	.loc 1 272 0 is_stmt 1
	movl	-4(%rbp), %eax
	movl	%eax, -20(%rbp)
	movss	-20(%rbp), %xmm0
	.loc 1 273 0
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.seh_endproc
	.section .rdata,"dr"
	.align 4
.LC0:
	.long	0
	.align 4
.LC1:
	.long	1065353216
	.align 16
.LC2:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.align 8
.LC3:
	.long	0
	.long	1072693248
	.align 8
.LC4:
	.long	0
	.long	-1075838976
	.align 16
.LC5:
	.long	2147483648
	.long	0
	.long	0
	.long	0
	.align 4
.LC6:
	.long	1073741824
	.text
.Letext0:
	.file 2 "fuzzfis.h"
	.section	.debug_info,"dr"
.Ldebug_info0:
	.long	0xb0f
	.word	0x4
	.secrel32	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.ascii "GNU C 4.9.3 -mtune=generic -march=x86-64 -g\0"
	.byte	0x1
	.ascii "fuzzfis.c\0"
	.ascii "/cygdrive/e/GDrive/Proyects/FuzzLib/fuzz_lib\0"
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
	.byte	0x30
	.long	0x148
	.uleb128 0x4
	.byte	0x4
	.byte	0x2
	.byte	0x31
	.long	0x1e7
	.uleb128 0x5
	.ascii "trimf\0"
	.sleb128 0
	.uleb128 0x5
	.ascii "trapmf\0"
	.sleb128 1
	.uleb128 0x5
	.ascii "gbellmf\0"
	.sleb128 2
	.uleb128 0x5
	.ascii "gaussmf\0"
	.sleb128 3
	.uleb128 0x5
	.ascii "gauss2mf\0"
	.sleb128 4
	.uleb128 0x5
	.ascii "sigmf\0"
	.sleb128 5
	.uleb128 0x5
	.ascii "dsigmf\0"
	.sleb128 6
	.uleb128 0x5
	.ascii "psigmf\0"
	.sleb128 7
	.uleb128 0x5
	.ascii "pimf\0"
	.sleb128 8
	.uleb128 0x5
	.ascii "smf\0"
	.sleb128 9
	.uleb128 0x5
	.ascii "zmf\0"
	.sleb128 10
	.uleb128 0x5
	.ascii "singletonmf\0"
	.sleb128 11
	.byte	0
	.uleb128 0x3
	.ascii "fuzz_mf_t\0"
	.byte	0x2
	.byte	0x31
	.long	0x173
	.uleb128 0x4
	.byte	0x4
	.byte	0x2
	.byte	0x32
	.long	0x214
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
	.byte	0x32
	.long	0x1f8
	.uleb128 0x3
	.ascii "SugenoFcn\0"
	.byte	0x2
	.byte	0x38
	.long	0x23c
	.uleb128 0x6
	.byte	0x8
	.long	0x242
	.uleb128 0x7
	.long	0x160
	.long	0x251
	.uleb128 0x8
	.long	0x251
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x160
	.uleb128 0x3
	.ascii "FuzzMethod\0"
	.byte	0x2
	.byte	0x39
	.long	0x269
	.uleb128 0x6
	.byte	0x8
	.long	0x26f
	.uleb128 0x7
	.long	0x160
	.long	0x283
	.uleb128 0x8
	.long	0x160
	.uleb128 0x8
	.long	0x160
	.byte	0
	.uleb128 0x9
	.byte	0xc
	.byte	0x2
	.byte	0x3b
	.long	0x2b4
	.uleb128 0xa
	.ascii "xmin\0"
	.byte	0x2
	.byte	0x3c
	.long	0x160
	.byte	0
	.uleb128 0xa
	.ascii "xmax\0"
	.byte	0x2
	.byte	0x3c
	.long	0x160
	.byte	0x4
	.uleb128 0xa
	.ascii "value\0"
	.byte	0x2
	.byte	0x3d
	.long	0x160
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.ascii "FuzzIO_t\0"
	.byte	0x2
	.byte	0x3e
	.long	0x283
	.uleb128 0x9
	.byte	0x28
	.byte	0x2
	.byte	0x43
	.long	0x320
	.uleb128 0xa
	.ascii "ioindex\0"
	.byte	0x2
	.byte	0x44
	.long	0xca
	.byte	0
	.uleb128 0xa
	.ascii "tag\0"
	.byte	0x2
	.byte	0x45
	.long	0xca
	.byte	0x1
	.uleb128 0xa
	.ascii "shape\0"
	.byte	0x2
	.byte	0x46
	.long	0x1e7
	.byte	0x4
	.uleb128 0xa
	.ascii "g\0"
	.byte	0x2
	.byte	0x47
	.long	0x22b
	.byte	0x8
	.uleb128 0xa
	.ascii "points\0"
	.byte	0x2
	.byte	0x48
	.long	0x320
	.byte	0x10
	.uleb128 0xa
	.ascii "fuzzval\0"
	.byte	0x2
	.byte	0x49
	.long	0x160
	.byte	0x20
	.byte	0
	.uleb128 0xb
	.long	0x160
	.long	0x330
	.uleb128 0xc
	.long	0x110
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.ascii "FuzzMF_t\0"
	.byte	0x2
	.byte	0x4a
	.long	0x2c4
	.uleb128 0x9
	.byte	0x3d
	.byte	0x2
	.byte	0x4d
	.long	0x417
	.uleb128 0xa
	.ascii "type\0"
	.byte	0x2
	.byte	0x4e
	.long	0x214
	.byte	0
	.uleb128 0xa
	.ascii "input\0"
	.byte	0x2
	.byte	0x4f
	.long	0x417
	.byte	0x4
	.uleb128 0xa
	.ascii "output\0"
	.byte	0x2
	.byte	0x50
	.long	0x417
	.byte	0xc
	.uleb128 0xa
	.ascii "inputmf\0"
	.byte	0x2
	.byte	0x51
	.long	0x41d
	.byte	0x14
	.uleb128 0xa
	.ascii "outputmf\0"
	.byte	0x2
	.byte	0x52
	.long	0x41d
	.byte	0x1c
	.uleb128 0xa
	.ascii "rule_cols\0"
	.byte	0x2
	.byte	0x53
	.long	0xca
	.byte	0x24
	.uleb128 0xa
	.ascii "ninputs\0"
	.byte	0x2
	.byte	0x54
	.long	0xca
	.byte	0x25
	.uleb128 0xa
	.ascii "noutputs\0"
	.byte	0x2
	.byte	0x55
	.long	0xca
	.byte	0x26
	.uleb128 0xa
	.ascii "nmfinputs\0"
	.byte	0x2
	.byte	0x56
	.long	0xca
	.byte	0x27
	.uleb128 0xa
	.ascii "nmfoutputs\0"
	.byte	0x2
	.byte	0x57
	.long	0xca
	.byte	0x28
	.uleb128 0xd
	.secrel32	.LASF0
	.byte	0x2
	.byte	0x58
	.long	0xef
	.byte	0x29
	.uleb128 0xa
	.ascii "FuzzAND\0"
	.byte	0x2
	.byte	0x59
	.long	0x257
	.byte	0x2d
	.uleb128 0xa
	.ascii "FuzzOR\0"
	.byte	0x2
	.byte	0x59
	.long	0x257
	.byte	0x35
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2b4
	.uleb128 0x6
	.byte	0x8
	.long	0x330
	.uleb128 0x3
	.ascii "FuzzFIS_t\0"
	.byte	0x2
	.byte	0x5a
	.long	0x340
	.uleb128 0xe
	.ascii "FuzzFisSetup\0"
	.byte	0x1
	.byte	0x4
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x53d
	.uleb128 0xf
	.ascii "obj\0"
	.byte	0x1
	.byte	0x4
	.long	0x53d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xf
	.ascii "type\0"
	.byte	0x1
	.byte	0x4
	.long	0x214
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x10
	.secrel32	.LASF0
	.byte	0x1
	.byte	0x4
	.long	0xef
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0xf
	.ascii "AND_Method\0"
	.byte	0x1
	.byte	0x5
	.long	0x257
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0xf
	.ascii "OR_Method\0"
	.byte	0x1
	.byte	0x5
	.long	0x257
	.uleb128 0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0xf
	.ascii "inputs\0"
	.byte	0x1
	.byte	0x6
	.long	0x417
	.uleb128 0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0xf
	.ascii "nins\0"
	.byte	0x1
	.byte	0x6
	.long	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xf
	.ascii "outputs\0"
	.byte	0x1
	.byte	0x6
	.long	0x417
	.uleb128 0x2
	.byte	0x91
	.sleb128 56
	.uleb128 0xf
	.ascii "nouts\0"
	.byte	0x1
	.byte	0x6
	.long	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.ascii "mfinputs\0"
	.byte	0x1
	.byte	0x7
	.long	0x41d
	.uleb128 0x3
	.byte	0x91
	.sleb128 72
	.uleb128 0xf
	.ascii "nmfins\0"
	.byte	0x1
	.byte	0x7
	.long	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xf
	.ascii "mfoutputs\0"
	.byte	0x1
	.byte	0x7
	.long	0x41d
	.uleb128 0x3
	.byte	0x91
	.sleb128 88
	.uleb128 0xf
	.ascii "nmfouts\0"
	.byte	0x1
	.byte	0x7
	.long	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x423
	.uleb128 0xe
	.ascii "FuzzAddMF\0"
	.byte	0x1
	.byte	0x17
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x5d7
	.uleb128 0xf
	.ascii "mfvar\0"
	.byte	0x1
	.byte	0x17
	.long	0x41d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xf
	.ascii "iotag\0"
	.byte	0x1
	.byte	0x17
	.long	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xf
	.ascii "mftag\0"
	.byte	0x1
	.byte	0x17
	.long	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0xf
	.ascii "shape\0"
	.byte	0x1
	.byte	0x17
	.long	0x1e7
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0xf
	.ascii "a\0"
	.byte	0x1
	.byte	0x17
	.long	0x160
	.uleb128 0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0xf
	.ascii "b\0"
	.byte	0x1
	.byte	0x17
	.long	0x160
	.uleb128 0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0xf
	.ascii "c\0"
	.byte	0x1
	.byte	0x17
	.long	0x160
	.uleb128 0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0xf
	.ascii "d\0"
	.byte	0x1
	.byte	0x17
	.long	0x160
	.uleb128 0x2
	.byte	0x91
	.sleb128 56
	.byte	0
	.uleb128 0xe
	.ascii "FuzzAddOutputFunction\0"
	.byte	0x1
	.byte	0x21
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x645
	.uleb128 0xf
	.ascii "mfvar\0"
	.byte	0x1
	.byte	0x21
	.long	0x41d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xf
	.ascii "iotag\0"
	.byte	0x1
	.byte	0x21
	.long	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xf
	.ascii "mftag\0"
	.byte	0x1
	.byte	0x21
	.long	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0xf
	.ascii "fcn\0"
	.byte	0x1
	.byte	0x21
	.long	0x22b
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.byte	0
	.uleb128 0xe
	.ascii "FuzzAddIO\0"
	.byte	0x1
	.byte	0x27
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x6a5
	.uleb128 0xf
	.ascii "iovar\0"
	.byte	0x1
	.byte	0x27
	.long	0x417
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xf
	.ascii "tag\0"
	.byte	0x1
	.byte	0x27
	.long	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xf
	.ascii "umin\0"
	.byte	0x1
	.byte	0x27
	.long	0x160
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0xf
	.ascii "umax\0"
	.byte	0x1
	.byte	0x27
	.long	0x160
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.byte	0
	.uleb128 0x11
	.ascii "FuzzFuzz\0"
	.byte	0x1
	.byte	0x2c
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x6e2
	.uleb128 0xf
	.ascii "obj\0"
	.byte	0x1
	.byte	0x2c
	.long	0x53d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x12
	.ascii "i\0"
	.byte	0x1
	.byte	0x2d
	.long	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.byte	0
	.uleb128 0x13
	.ascii "ParseFuzzValue\0"
	.byte	0x1
	.byte	0x3a
	.long	0x160
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x748
	.uleb128 0xf
	.ascii "mfio\0"
	.byte	0x1
	.byte	0x3a
	.long	0x41d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xf
	.ascii "index\0"
	.byte	0x1
	.byte	0x3a
	.long	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x12
	.ascii "not\0"
	.byte	0x1
	.byte	0x3b
	.long	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x12
	.ascii "y\0"
	.byte	0x1
	.byte	0x3d
	.long	0x160
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x14
	.ascii "FuzzyIS\0"
	.byte	0x1
	.byte	0x43
	.long	0xe8
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x875
	.uleb128 0xf
	.ascii "obj\0"
	.byte	0x1
	.byte	0x43
	.long	0x53d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xf
	.ascii "rules\0"
	.byte	0x1
	.byte	0x43
	.long	0x875
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xf
	.ascii "n\0"
	.byte	0x1
	.byte	0x43
	.long	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x12
	.ascii "i\0"
	.byte	0x1
	.byte	0x44
	.long	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x12
	.ascii "j\0"
	.byte	0x1
	.byte	0x44
	.long	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x12
	.ascii "RULESTATE\0"
	.byte	0x1
	.byte	0x47
	.long	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -35
	.uleb128 0x12
	.ascii "input_index\0"
	.byte	0x1
	.byte	0x48
	.long	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -45
	.uleb128 0x12
	.ascii "mfinput_index\0"
	.byte	0x1
	.byte	0x49
	.long	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x12
	.ascii "output_index\0"
	.byte	0x1
	.byte	0x4a
	.long	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.uleb128 0x12
	.ascii "mfoutput_index\0"
	.byte	0x1
	.byte	0x4b
	.long	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x12
	.ascii "conector\0"
	.byte	0x1
	.byte	0x4c
	.long	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -58
	.uleb128 0x12
	.ascii "last_conector\0"
	.byte	0x1
	.byte	0x4c
	.long	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x12
	.ascii "rule_strength\0"
	.byte	0x1
	.byte	0x4d
	.long	0x160
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x12
	.ascii "index\0"
	.byte	0x1
	.byte	0x4e
	.long	0xef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x87b
	.uleb128 0x15
	.long	0xdb
	.uleb128 0x14
	.ascii "FuzzDeFuzz\0"
	.byte	0x1
	.byte	0x8e
	.long	0xe8
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x931
	.uleb128 0xf
	.ascii "obj\0"
	.byte	0x1
	.byte	0x8e
	.long	0x53d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x12
	.ascii "i\0"
	.byte	0x1
	.byte	0x8f
	.long	0xe8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.ascii "j\0"
	.byte	0x1
	.byte	0x8f
	.long	0xe8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.ascii "x\0"
	.byte	0x1
	.byte	0x90
	.long	0x160
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x12
	.ascii "z\0"
	.byte	0x1
	.byte	0x91
	.long	0x160
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x12
	.ascii "fx\0"
	.byte	0x1
	.byte	0x92
	.long	0x160
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x12
	.ascii "intfx\0"
	.byte	0x1
	.byte	0x93
	.long	0x160
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.ascii "intxfx\0"
	.byte	0x1
	.byte	0x93
	.long	0x160
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.ascii "res\0"
	.byte	0x1
	.byte	0x94
	.long	0x160
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x12
	.ascii "tag\0"
	.byte	0x1
	.byte	0x95
	.long	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.byte	0
	.uleb128 0x14
	.ascii "__fuzz_mf\0"
	.byte	0x1
	.byte	0xab
	.long	0x160
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x9e2
	.uleb128 0xf
	.ascii "mf\0"
	.byte	0x1
	.byte	0xab
	.long	0x1e7
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xf
	.ascii "x\0"
	.byte	0x1
	.byte	0xab
	.long	0x160
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xf
	.ascii "points\0"
	.byte	0x1
	.byte	0xab
	.long	0x251
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x12
	.ascii "a\0"
	.byte	0x1
	.byte	0xac
	.long	0x160
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.ascii "b\0"
	.byte	0x1
	.byte	0xac
	.long	0x160
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.ascii "c\0"
	.byte	0x1
	.byte	0xac
	.long	0x160
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x12
	.ascii "d\0"
	.byte	0x1
	.byte	0xac
	.long	0x160
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x12
	.ascii "temp\0"
	.byte	0x1
	.byte	0xad
	.long	0x160
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x12
	.ascii "temp1\0"
	.byte	0x1
	.byte	0xad
	.long	0x160
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x12
	.ascii "temp2\0"
	.byte	0x1
	.byte	0xad
	.long	0x160
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x13
	.ascii "FuzzMin\0"
	.byte	0x1
	.byte	0xf7
	.long	0x160
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0xa2c
	.uleb128 0xf
	.ascii "a\0"
	.byte	0x1
	.byte	0xf7
	.long	0x160
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xf
	.ascii "b\0"
	.byte	0x1
	.byte	0xf7
	.long	0x160
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x12
	.ascii "y\0"
	.byte	0x1
	.byte	0xf8
	.long	0x160
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.ascii "FuzzMax\0"
	.byte	0x1
	.byte	0xfe
	.long	0x160
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0xa76
	.uleb128 0xf
	.ascii "a\0"
	.byte	0x1
	.byte	0xfe
	.long	0x160
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xf
	.ascii "b\0"
	.byte	0x1
	.byte	0xfe
	.long	0x160
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x12
	.ascii "y\0"
	.byte	0x1
	.byte	0xff
	.long	0x160
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x16
	.ascii "FuzzProd\0"
	.byte	0x1
	.word	0x105
	.long	0x160
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0xac5
	.uleb128 0x17
	.ascii "a\0"
	.byte	0x1
	.word	0x105
	.long	0x160
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.ascii "b\0"
	.byte	0x1
	.word	0x105
	.long	0x160
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x18
	.ascii "y\0"
	.byte	0x1
	.word	0x106
	.long	0x160
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x19
	.ascii "FuzzProbOR\0"
	.byte	0x1
	.word	0x10c
	.long	0x160
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x17
	.ascii "a\0"
	.byte	0x1
	.word	0x10c
	.long	0x160
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.ascii "b\0"
	.byte	0x1
	.word	0x10c
	.long	0x160
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x18
	.ascii "y\0"
	.byte	0x1
	.word	0x10d
	.long	0x160
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
.LASF0:
	.ascii "evalpoints\0"
	.ident	"GCC: (GNU) 4.9.3"
	.def	pow;	.scl	2;	.type	32;	.endef
	.def	exp;	.scl	2;	.type	32;	.endef
