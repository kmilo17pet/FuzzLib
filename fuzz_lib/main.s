	.file	"main.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.comm	controller, 61, 5
	.comm	controllerinputs, 16, 4
	.comm	controlleroutputs, 16, 4
	.comm	MFin, 168, 6
	.comm	MFout, 168, 6
	.globl	rules
	.data
	.align 64
rules:
	.word	0
	.word	1
	.word	-32766
	.word	1
	.word	4
	.word	-32764
	.word	0
	.word	1
	.word	-32766
	.word	1
	.word	1
	.word	0
	.word	2
	.word	-32766
	.word	1
	.word	4
	.word	-32764
	.word	0
	.word	1
	.word	-32766
	.word	1
	.word	3
	.word	0
	.word	3
	.word	-32766
	.word	1
	.word	4
	.word	-32764
	.word	0
	.word	2
	.space 6
	.word	0
	.word	1
	.word	-32766
	.word	1
	.word	5
	.word	-32764
	.word	0
	.word	1
	.space 6
	.word	0
	.word	2
	.word	-32766
	.word	1
	.word	5
	.word	-32764
	.word	0
	.word	2
	.space 6
	.word	0
	.word	3
	.word	-32766
	.word	1
	.word	5
	.word	-32764
	.word	0
	.word	3
	.space 6
	.word	0
	.word	1
	.word	-32766
	.word	1
	.word	6
	.word	-32764
	.word	0
	.word	2
	.space 6
	.word	0
	.word	2
	.word	-32766
	.word	1
	.word	6
	.word	-32764
	.word	0
	.word	3
	.space 6
	.word	0
	.word	3
	.word	-32766
	.word	1
	.word	6
	.word	-32764
	.word	0
	.word	3
	.space 6
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC8:
	.ascii "Error evaluatig rules\0"
.LC9:
	.ascii "\15\12 ut=%g  vt=%g\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB7:
	.file 1 "main.c"
	.loc 1 28 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	.seh_stackalloc	160
	.seh_endprologue
	.loc 1 28 0
	call	__main
	.loc 1 29 0
	movl	.LC0(%rip), %eax
	movl	%eax, -16(%rbp)
	movl	.LC1(%rip), %eax
	movl	%eax, -12(%rbp)
	.loc 1 30 0
	movl	.LC2(%rip), %eax
	movl	%eax, -32(%rbp)
	movl	.LC2(%rip), %eax
	movl	%eax, -28(%rbp)
	.loc 1 32 0
	movss	.LC3(%rip), %xmm3
	movss	.LC4(%rip), %xmm2
	movl	$0, %edx
	leaq	controllerinputs(%rip), %rax
	movq	%rax, %rcx
	call	FuzzAddIO
	.loc 1 33 0
	movss	.LC3(%rip), %xmm3
	movss	.LC4(%rip), %xmm2
	movl	$1, %edx
	leaq	controllerinputs(%rip), %rax
	movq	%rax, %rcx
	call	FuzzAddIO
	.loc 1 35 0
	movss	.LC3(%rip), %xmm3
	movss	.LC4(%rip), %xmm2
	movl	$0, %edx
	leaq	controlleroutputs(%rip), %rax
	movq	%rax, %rcx
	call	FuzzAddIO
	.loc 1 36 0
	movss	.LC3(%rip), %xmm3
	movss	.LC4(%rip), %xmm2
	movl	$1, %edx
	leaq	controlleroutputs(%rip), %rax
	movq	%rax, %rcx
	call	FuzzAddIO
	.loc 1 38 0
	movl	.LC2(%rip), %eax
	movl	%eax, 56(%rsp)
	movl	.LC2(%rip), %eax
	movl	%eax, 48(%rsp)
	movl	.LC5(%rip), %eax
	movl	%eax, 40(%rsp)
	movl	.LC4(%rip), %eax
	movl	%eax, 32(%rsp)
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %edx
	leaq	MFin(%rip), %rax
	movq	%rax, %rcx
	call	FuzzAddMF
	.loc 1 39 0
	movl	.LC2(%rip), %eax
	movl	%eax, 56(%rsp)
	movl	.LC6(%rip), %eax
	movl	%eax, 48(%rsp)
	movl	.LC2(%rip), %eax
	movl	%eax, 40(%rsp)
	movl	.LC5(%rip), %eax
	movl	%eax, 32(%rsp)
	movl	$0, %r9d
	movl	$1, %r8d
	movl	$0, %edx
	leaq	MFin(%rip), %rax
	movq	%rax, %rcx
	call	FuzzAddMF
	.loc 1 40 0
	movl	.LC2(%rip), %eax
	movl	%eax, 56(%rsp)
	movl	.LC3(%rip), %eax
	movl	%eax, 48(%rsp)
	movl	.LC6(%rip), %eax
	movl	%eax, 40(%rsp)
	movl	.LC2(%rip), %eax
	movl	%eax, 32(%rsp)
	movl	$0, %r9d
	movl	$2, %r8d
	movl	$0, %edx
	leaq	MFin(%rip), %rax
	movq	%rax, %rcx
	call	FuzzAddMF
	.loc 1 41 0
	movl	.LC2(%rip), %eax
	movl	%eax, 56(%rsp)
	movl	.LC2(%rip), %eax
	movl	%eax, 48(%rsp)
	movl	.LC5(%rip), %eax
	movl	%eax, 40(%rsp)
	movl	.LC4(%rip), %eax
	movl	%eax, 32(%rsp)
	movl	$0, %r9d
	movl	$3, %r8d
	movl	$1, %edx
	leaq	MFin(%rip), %rax
	movq	%rax, %rcx
	call	FuzzAddMF
	.loc 1 42 0
	movl	.LC2(%rip), %eax
	movl	%eax, 56(%rsp)
	movl	.LC6(%rip), %eax
	movl	%eax, 48(%rsp)
	movl	.LC2(%rip), %eax
	movl	%eax, 40(%rsp)
	movl	.LC5(%rip), %eax
	movl	%eax, 32(%rsp)
	movl	$0, %r9d
	movl	$4, %r8d
	movl	$1, %edx
	leaq	MFin(%rip), %rax
	movq	%rax, %rcx
	call	FuzzAddMF
	.loc 1 43 0
	movl	.LC2(%rip), %eax
	movl	%eax, 56(%rsp)
	movl	.LC3(%rip), %eax
	movl	%eax, 48(%rsp)
	movl	.LC6(%rip), %eax
	movl	%eax, 40(%rsp)
	movl	.LC2(%rip), %eax
	movl	%eax, 32(%rsp)
	movl	$0, %r9d
	movl	$5, %r8d
	movl	$1, %edx
	leaq	MFin(%rip), %rax
	movq	%rax, %rcx
	call	FuzzAddMF
	.loc 1 45 0
	movl	.LC2(%rip), %eax
	movl	%eax, 56(%rsp)
	movl	.LC2(%rip), %eax
	movl	%eax, 48(%rsp)
	movl	.LC5(%rip), %eax
	movl	%eax, 40(%rsp)
	movl	.LC4(%rip), %eax
	movl	%eax, 32(%rsp)
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %edx
	leaq	MFout(%rip), %rax
	movq	%rax, %rcx
	call	FuzzAddMF
	.loc 1 46 0
	movl	.LC2(%rip), %eax
	movl	%eax, 56(%rsp)
	movl	.LC6(%rip), %eax
	movl	%eax, 48(%rsp)
	movl	.LC2(%rip), %eax
	movl	%eax, 40(%rsp)
	movl	.LC5(%rip), %eax
	movl	%eax, 32(%rsp)
	movl	$0, %r9d
	movl	$1, %r8d
	movl	$0, %edx
	leaq	MFout(%rip), %rax
	movq	%rax, %rcx
	call	FuzzAddMF
	.loc 1 47 0
	movl	.LC2(%rip), %eax
	movl	%eax, 56(%rsp)
	movl	.LC3(%rip), %eax
	movl	%eax, 48(%rsp)
	movl	.LC6(%rip), %eax
	movl	%eax, 40(%rsp)
	movl	.LC2(%rip), %eax
	movl	%eax, 32(%rsp)
	movl	$0, %r9d
	movl	$2, %r8d
	movl	$0, %edx
	leaq	MFout(%rip), %rax
	movq	%rax, %rcx
	call	FuzzAddMF
	.loc 1 49 0
	movl	.LC2(%rip), %eax
	movl	%eax, 56(%rsp)
	movl	.LC2(%rip), %eax
	movl	%eax, 48(%rsp)
	movl	.LC5(%rip), %eax
	movl	%eax, 40(%rsp)
	movl	.LC4(%rip), %eax
	movl	%eax, 32(%rsp)
	movl	$0, %r9d
	movl	$3, %r8d
	movl	$1, %edx
	leaq	MFout(%rip), %rax
	movq	%rax, %rcx
	call	FuzzAddMF
	.loc 1 50 0
	movl	.LC2(%rip), %eax
	movl	%eax, 56(%rsp)
	movl	.LC6(%rip), %eax
	movl	%eax, 48(%rsp)
	movl	.LC2(%rip), %eax
	movl	%eax, 40(%rsp)
	movl	.LC5(%rip), %eax
	movl	%eax, 32(%rsp)
	movl	$0, %r9d
	movl	$4, %r8d
	movl	$1, %edx
	leaq	MFout(%rip), %rax
	movq	%rax, %rcx
	call	FuzzAddMF
	.loc 1 51 0
	movl	.LC2(%rip), %eax
	movl	%eax, 56(%rsp)
	movl	.LC3(%rip), %eax
	movl	%eax, 48(%rsp)
	movl	.LC6(%rip), %eax
	movl	%eax, 40(%rsp)
	movl	.LC2(%rip), %eax
	movl	%eax, 32(%rsp)
	movl	$0, %r9d
	movl	$5, %r8d
	movl	$1, %edx
	leaq	MFout(%rip), %rax
	movq	%rax, %rcx
	call	FuzzAddMF
	.loc 1 53 0
	movl	$6, 96(%rsp)
	leaq	MFout(%rip), %rax
	movq	%rax, 88(%rsp)
	movl	$6, 80(%rsp)
	leaq	MFin(%rip), %rax
	movq	%rax, 72(%rsp)
	movl	$2, 64(%rsp)
	leaq	controlleroutputs(%rip), %rax
	movq	%rax, 56(%rsp)
	movl	$2, 48(%rsp)
	leaq	controllerinputs(%rip), %rax
	movq	%rax, 40(%rsp)
	movq	.refptr.FuzzMax(%rip), %rax
	movq	%rax, 32(%rsp)
	movq	.refptr.FuzzMin(%rip), %r9
	movss	.LC7(%rip), %xmm2
	movl	$0, %edx
	leaq	controller(%rip), %rax
	movq	%rax, %rcx
	call	FuzzFisSetup
	.loc 1 54 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	leaq	controller(%rip), %rax
	movq	%rax, %rcx
	call	FuzzFuzz
	.loc 1 55 0
	movl	$9, %r8d
	leaq	rules(%rip), %rdx
	leaq	controller(%rip), %rax
	movq	%rax, %rcx
	call	FuzzyIS
	cmpl	$-1, %eax
	jne	.L2
	.loc 1 56 0
	leaq	.LC8(%rip), %rcx
	call	perror
.L2:
	.loc 1 58 0
	movl	$0, %edx
	leaq	controller(%rip), %rax
	movq	%rax, %rcx
	call	FuzzDeFuzz
	movd	%xmm0, %eax
	movl	%eax, -32(%rbp)
	.loc 1 59 0
	movl	$1, %edx
	leaq	controller(%rip), %rax
	movq	%rax, %rcx
	call	FuzzDeFuzz
	movd	%xmm0, %eax
	movl	%eax, -28(%rbp)
	.loc 1 60 0
	movss	-28(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm1
	movss	-32(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	%xmm1, %rax
	movq	%rax, %rdx
	movq	%rdx, -40(%rbp)
	movsd	-40(%rbp), %xmm1
	movq	%rax, %rdx
	movq	%xmm0, %rax
	movq	%rax, %rcx
	movq	%rcx, -40(%rbp)
	movsd	-40(%rbp), %xmm0
	movapd	%xmm1, %xmm2
	movq	%rdx, %r8
	movapd	%xmm0, %xmm1
	movq	%rax, %rdx
	leaq	.LC9(%rip), %rcx
	call	printf
	.loc 1 61 0
	movl	$0, %eax
	.loc 1 62 0
	addq	$160, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.seh_endproc
	.section .rdata,"dr"
	.align 4
.LC0:
	.long	3196059648
	.align 4
.LC1:
	.long	1036831949
	.align 4
.LC2:
	.long	0
	.align 4
.LC3:
	.long	1073741824
	.align 4
.LC4:
	.long	3221225472
	.align 4
.LC5:
	.long	3212836864
	.align 4
.LC6:
	.long	1065353216
	.align 4
.LC7:
	.long	1008981770
	.text
.Letext0:
	.file 2 "fuzzfis.h"
	.section	.debug_info,"dr"
.Ldebug_info0:
	.long	0x5bd
	.word	0x4
	.secrel32	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.ascii "GNU C 4.9.3 -mtune=generic -march=x86-64 -g\0"
	.byte	0x1
	.ascii "main.c\0"
	.ascii "/cygdrive/d/GDrive/Proyects/libs/c/fuzz_lib\0"
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.secrel32	.Ldebug_line0
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
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
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
	.ascii "long int\0"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "long unsigned int\0"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.ascii "long long int\0"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "sizetype\0"
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
	.long	0x144
	.uleb128 0x4
	.byte	0x4
	.byte	0x2
	.byte	0x36
	.long	0x1bf
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
	.long	0x16f
	.uleb128 0x4
	.byte	0x4
	.byte	0x2
	.byte	0x37
	.long	0x1ec
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
	.long	0x1d0
	.uleb128 0x3
	.ascii "FuzzMethod\0"
	.byte	0x2
	.byte	0x3d
	.long	0x215
	.uleb128 0x6
	.byte	0x8
	.long	0x21b
	.uleb128 0x7
	.long	0x15c
	.long	0x22f
	.uleb128 0x8
	.long	0x15c
	.uleb128 0x8
	.long	0x15c
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.byte	0x2
	.byte	0x3f
	.long	0x252
	.uleb128 0xa
	.ascii "xmin\0"
	.byte	0x2
	.byte	0x40
	.long	0x15c
	.byte	0
	.uleb128 0xa
	.ascii "xmax\0"
	.byte	0x2
	.byte	0x40
	.long	0x15c
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.ascii "FuzzIO_t\0"
	.byte	0x2
	.byte	0x41
	.long	0x22f
	.uleb128 0x9
	.byte	0x1c
	.byte	0x2
	.byte	0x46
	.long	0x2b4
	.uleb128 0xa
	.ascii "ioindex\0"
	.byte	0x2
	.byte	0x47
	.long	0x8f
	.byte	0
	.uleb128 0xa
	.ascii "tag\0"
	.byte	0x2
	.byte	0x48
	.long	0x8f
	.byte	0x1
	.uleb128 0xa
	.ascii "shape\0"
	.byte	0x2
	.byte	0x49
	.long	0x1bf
	.byte	0x4
	.uleb128 0xa
	.ascii "points\0"
	.byte	0x2
	.byte	0x4a
	.long	0x2b4
	.byte	0x8
	.uleb128 0xa
	.ascii "fuzzval\0"
	.byte	0x2
	.byte	0x4b
	.long	0x15c
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.long	0x15c
	.long	0x2c4
	.uleb128 0xc
	.long	0x114
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.ascii "FuzzMF_t\0"
	.byte	0x2
	.byte	0x4c
	.long	0x262
	.uleb128 0x9
	.byte	0x3d
	.byte	0x2
	.byte	0x4f
	.long	0x3ab
	.uleb128 0xa
	.ascii "type\0"
	.byte	0x2
	.byte	0x50
	.long	0x1ec
	.byte	0
	.uleb128 0xa
	.ascii "input\0"
	.byte	0x2
	.byte	0x51
	.long	0x3ab
	.byte	0x4
	.uleb128 0xa
	.ascii "output\0"
	.byte	0x2
	.byte	0x52
	.long	0x3ab
	.byte	0xc
	.uleb128 0xa
	.ascii "inputmf\0"
	.byte	0x2
	.byte	0x53
	.long	0x3b1
	.byte	0x14
	.uleb128 0xa
	.ascii "outputmf\0"
	.byte	0x2
	.byte	0x54
	.long	0x3b1
	.byte	0x1c
	.uleb128 0xa
	.ascii "rule_cols\0"
	.byte	0x2
	.byte	0x55
	.long	0x8f
	.byte	0x24
	.uleb128 0xa
	.ascii "ninputs\0"
	.byte	0x2
	.byte	0x56
	.long	0x8f
	.byte	0x25
	.uleb128 0xa
	.ascii "noutputs\0"
	.byte	0x2
	.byte	0x57
	.long	0x8f
	.byte	0x26
	.uleb128 0xa
	.ascii "nmfinputs\0"
	.byte	0x2
	.byte	0x58
	.long	0x8f
	.byte	0x27
	.uleb128 0xa
	.ascii "nmfoutputs\0"
	.byte	0x2
	.byte	0x59
	.long	0x8f
	.byte	0x28
	.uleb128 0xa
	.ascii "res\0"
	.byte	0x2
	.byte	0x5a
	.long	0x15c
	.byte	0x29
	.uleb128 0xa
	.ascii "FuzzAND\0"
	.byte	0x2
	.byte	0x5b
	.long	0x203
	.byte	0x2d
	.uleb128 0xa
	.ascii "FuzzOR\0"
	.byte	0x2
	.byte	0x5b
	.long	0x203
	.byte	0x35
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x252
	.uleb128 0x6
	.byte	0x8
	.long	0x2c4
	.uleb128 0x3
	.ascii "FuzzFIS_t\0"
	.byte	0x2
	.byte	0x5c
	.long	0x2d4
	.uleb128 0x4
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.long	0x3de
	.uleb128 0x5
	.ascii "error\0"
	.sleb128 0
	.uleb128 0x5
	.ascii "de\0"
	.sleb128 1
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.long	0x3f1
	.uleb128 0x5
	.ascii "ut\0"
	.sleb128 0
	.uleb128 0x5
	.ascii "vt\0"
	.sleb128 1
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.long	0x43a
	.uleb128 0x5
	.ascii "eNegative\0"
	.sleb128 0
	.uleb128 0x5
	.ascii "eZero\0"
	.sleb128 1
	.uleb128 0x5
	.ascii "ePositive\0"
	.sleb128 2
	.uleb128 0x5
	.ascii "dNegative\0"
	.sleb128 3
	.uleb128 0x5
	.ascii "dZero\0"
	.sleb128 4
	.uleb128 0x5
	.ascii "dPositive\0"
	.sleb128 5
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.long	0x483
	.uleb128 0x5
	.ascii "uNegative\0"
	.sleb128 0
	.uleb128 0x5
	.ascii "uZero\0"
	.sleb128 1
	.uleb128 0x5
	.ascii "uPositive\0"
	.sleb128 2
	.uleb128 0x5
	.ascii "vNegative\0"
	.sleb128 3
	.uleb128 0x5
	.ascii "vZero\0"
	.sleb128 4
	.uleb128 0x5
	.ascii "vPositive\0"
	.sleb128 5
	.byte	0
	.uleb128 0xd
	.ascii "main\0"
	.byte	0x1
	.byte	0x1c
	.long	0xc3
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x4d5
	.uleb128 0xe
	.ascii "crisp_inputs\0"
	.byte	0x1
	.byte	0x1d
	.long	0x4d5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xe
	.ascii "crisp_outputs\0"
	.byte	0x1
	.byte	0x1e
	.long	0x4d5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0xb
	.long	0x15c
	.long	0x4e5
	.uleb128 0xc
	.long	0x114
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.ascii "controller\0"
	.byte	0x1
	.byte	0x5
	.long	0x3b7
	.uleb128 0x9
	.byte	0x3
	.quad	controller
	.uleb128 0xb
	.long	0x252
	.long	0x511
	.uleb128 0xc
	.long	0x114
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.ascii "controllerinputs\0"
	.byte	0x1
	.byte	0x6
	.long	0x501
	.uleb128 0x9
	.byte	0x3
	.quad	controllerinputs
	.uleb128 0xf
	.ascii "controlleroutputs\0"
	.byte	0x1
	.byte	0x7
	.long	0x501
	.uleb128 0x9
	.byte	0x3
	.quad	controlleroutputs
	.uleb128 0xb
	.long	0x2c4
	.long	0x566
	.uleb128 0xc
	.long	0x114
	.byte	0x5
	.byte	0
	.uleb128 0xf
	.ascii "MFin\0"
	.byte	0x1
	.byte	0x8
	.long	0x556
	.uleb128 0x9
	.byte	0x3
	.quad	MFin
	.uleb128 0xf
	.ascii "MFout\0"
	.byte	0x1
	.byte	0x9
	.long	0x556
	.uleb128 0x9
	.byte	0x3
	.quad	MFout
	.uleb128 0xb
	.long	0xa0
	.long	0x5a9
	.uleb128 0xc
	.long	0x114
	.byte	0x8
	.uleb128 0xc
	.long	0x114
	.byte	0xa
	.byte	0
	.uleb128 0xf
	.ascii "rules\0"
	.byte	0x1
	.byte	0x10
	.long	0x593
	.uleb128 0x9
	.byte	0x3
	.quad	rules
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
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
	.def	FuzzAddIO;	.scl	2;	.type	32;	.endef
	.def	FuzzAddMF;	.scl	2;	.type	32;	.endef
	.def	FuzzFisSetup;	.scl	2;	.type	32;	.endef
	.def	FuzzFuzz;	.scl	2;	.type	32;	.endef
	.def	FuzzyIS;	.scl	2;	.type	32;	.endef
	.def	perror;	.scl	2;	.type	32;	.endef
	.def	FuzzDeFuzz;	.scl	2;	.type	32;	.endef
	.def	printf;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.FuzzMin, "dr"
	.globl	.refptr.FuzzMin
	.linkonce	discard
.refptr.FuzzMin:
	.quad	FuzzMin
	.section	.rdata$.refptr.FuzzMax, "dr"
	.globl	.refptr.FuzzMax
	.linkonce	discard
.refptr.FuzzMax:
	.quad	FuzzMax
