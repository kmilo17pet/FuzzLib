	.file	"main.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.comm	controller, 61, 5
	.comm	controllerinputs, 24, 4
	.comm	controlleroutputs, 24, 4
	.comm	MFin, 240, 6
	.comm	MFout, 240, 6
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
	.word	6
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
	.word	6
	.word	0
	.word	3
	.word	-32766
	.word	1
	.word	4
	.word	-32764
	.word	0
	.word	2
	.word	-32766
	.word	1
	.word	5
	.word	0
	.word	1
	.word	-32766
	.word	1
	.word	5
	.word	-32764
	.word	0
	.word	1
	.word	-32766
	.word	1
	.word	6
	.word	0
	.word	2
	.word	-32766
	.word	1
	.word	5
	.word	-32764
	.word	0
	.word	2
	.word	-32766
	.word	1
	.word	5
	.word	0
	.word	3
	.word	-32766
	.word	1
	.word	5
	.word	-32764
	.word	0
	.word	3
	.word	-32766
	.word	1
	.word	4
	.word	0
	.word	1
	.word	-32766
	.word	1
	.word	6
	.word	-32764
	.word	0
	.word	2
	.word	-32766
	.word	1
	.word	5
	.word	0
	.word	2
	.word	-32766
	.word	1
	.word	6
	.word	-32764
	.word	0
	.word	3
	.word	-32766
	.word	1
	.word	4
	.word	0
	.word	3
	.word	-32766
	.word	1
	.word	6
	.word	-32764
	.word	0
	.word	3
	.word	-32766
	.word	1
	.word	4
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC9:
	.ascii "Error evaluatig rules\0"
.LC10:
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
	addq	$-128, %rsp
	.seh_stackalloc	128
	.seh_endprologue
	.loc 1 28 0
	call	__main
	.loc 1 30 0
	movss	.LC0(%rip), %xmm3
	movss	.LC1(%rip), %xmm2
	movl	$0, %edx
	leaq	controllerinputs(%rip), %rax
	movq	%rax, %rcx
	call	FuzzAddIO
	.loc 1 31 0
	movss	.LC0(%rip), %xmm3
	movss	.LC1(%rip), %xmm2
	movl	$1, %edx
	leaq	controllerinputs(%rip), %rax
	movq	%rax, %rcx
	call	FuzzAddIO
	.loc 1 33 0
	movss	.LC0(%rip), %xmm3
	movss	.LC1(%rip), %xmm2
	movl	$0, %edx
	leaq	controlleroutputs(%rip), %rax
	movq	%rax, %rcx
	call	FuzzAddIO
	.loc 1 34 0
	movss	.LC2(%rip), %xmm3
	movss	.LC3(%rip), %xmm2
	movl	$1, %edx
	leaq	controlleroutputs(%rip), %rax
	movq	%rax, %rcx
	call	FuzzAddIO
	.loc 1 37 0
	movl	.LC4(%rip), %eax
	movl	%eax, 56(%rsp)
	movl	.LC4(%rip), %eax
	movl	%eax, 48(%rsp)
	movl	.LC3(%rip), %eax
	movl	%eax, 40(%rsp)
	movl	.LC1(%rip), %eax
	movl	%eax, 32(%rsp)
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %edx
	leaq	MFin(%rip), %rax
	movq	%rax, %rcx
	call	FuzzAddMF
	.loc 1 38 0
	movl	.LC4(%rip), %eax
	movl	%eax, 56(%rsp)
	movl	.LC2(%rip), %eax
	movl	%eax, 48(%rsp)
	movl	.LC4(%rip), %eax
	movl	%eax, 40(%rsp)
	movl	.LC3(%rip), %eax
	movl	%eax, 32(%rsp)
	movl	$0, %r9d
	movl	$1, %r8d
	movl	$0, %edx
	leaq	MFin(%rip), %rax
	movq	%rax, %rcx
	call	FuzzAddMF
	.loc 1 39 0
	movl	.LC4(%rip), %eax
	movl	%eax, 56(%rsp)
	movl	.LC0(%rip), %eax
	movl	%eax, 48(%rsp)
	movl	.LC2(%rip), %eax
	movl	%eax, 40(%rsp)
	movl	.LC4(%rip), %eax
	movl	%eax, 32(%rsp)
	movl	$0, %r9d
	movl	$2, %r8d
	movl	$0, %edx
	leaq	MFin(%rip), %rax
	movq	%rax, %rcx
	call	FuzzAddMF
	.loc 1 40 0
	movl	.LC4(%rip), %eax
	movl	%eax, 56(%rsp)
	movl	.LC4(%rip), %eax
	movl	%eax, 48(%rsp)
	movl	.LC3(%rip), %eax
	movl	%eax, 40(%rsp)
	movl	.LC1(%rip), %eax
	movl	%eax, 32(%rsp)
	movl	$0, %r9d
	movl	$3, %r8d
	movl	$1, %edx
	leaq	MFin(%rip), %rax
	movq	%rax, %rcx
	call	FuzzAddMF
	.loc 1 41 0
	movl	.LC4(%rip), %eax
	movl	%eax, 56(%rsp)
	movl	.LC2(%rip), %eax
	movl	%eax, 48(%rsp)
	movl	.LC4(%rip), %eax
	movl	%eax, 40(%rsp)
	movl	.LC3(%rip), %eax
	movl	%eax, 32(%rsp)
	movl	$0, %r9d
	movl	$4, %r8d
	movl	$1, %edx
	leaq	MFin(%rip), %rax
	movq	%rax, %rcx
	call	FuzzAddMF
	.loc 1 42 0
	movl	.LC4(%rip), %eax
	movl	%eax, 56(%rsp)
	movl	.LC0(%rip), %eax
	movl	%eax, 48(%rsp)
	movl	.LC2(%rip), %eax
	movl	%eax, 40(%rsp)
	movl	.LC4(%rip), %eax
	movl	%eax, 32(%rsp)
	movl	$0, %r9d
	movl	$5, %r8d
	movl	$1, %edx
	leaq	MFin(%rip), %rax
	movq	%rax, %rcx
	call	FuzzAddMF
	.loc 1 45 0
	movl	.LC4(%rip), %eax
	movl	%eax, 56(%rsp)
	movl	.LC4(%rip), %eax
	movl	%eax, 48(%rsp)
	movl	.LC3(%rip), %eax
	movl	%eax, 40(%rsp)
	movl	.LC1(%rip), %eax
	movl	%eax, 32(%rsp)
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %edx
	leaq	MFout(%rip), %rax
	movq	%rax, %rcx
	call	FuzzAddMF
	.loc 1 46 0
	movl	.LC4(%rip), %eax
	movl	%eax, 56(%rsp)
	movl	.LC2(%rip), %eax
	movl	%eax, 48(%rsp)
	movl	.LC4(%rip), %eax
	movl	%eax, 40(%rsp)
	movl	.LC3(%rip), %eax
	movl	%eax, 32(%rsp)
	movl	$0, %r9d
	movl	$1, %r8d
	movl	$0, %edx
	leaq	MFout(%rip), %rax
	movq	%rax, %rcx
	call	FuzzAddMF
	.loc 1 47 0
	movl	.LC4(%rip), %eax
	movl	%eax, 56(%rsp)
	movl	.LC0(%rip), %eax
	movl	%eax, 48(%rsp)
	movl	.LC2(%rip), %eax
	movl	%eax, 40(%rsp)
	movl	.LC4(%rip), %eax
	movl	%eax, 32(%rsp)
	movl	$0, %r9d
	movl	$2, %r8d
	movl	$0, %edx
	leaq	MFout(%rip), %rax
	movq	%rax, %rcx
	call	FuzzAddMF
	.loc 1 49 0
	movl	.LC4(%rip), %eax
	movl	%eax, 56(%rsp)
	movl	.LC4(%rip), %eax
	movl	%eax, 48(%rsp)
	movl	.LC5(%rip), %eax
	movl	%eax, 40(%rsp)
	movl	.LC3(%rip), %eax
	movl	%eax, 32(%rsp)
	movl	$0, %r9d
	movl	$3, %r8d
	movl	$1, %edx
	leaq	MFout(%rip), %rax
	movq	%rax, %rcx
	call	FuzzAddMF
	.loc 1 50 0
	movl	.LC4(%rip), %eax
	movl	%eax, 56(%rsp)
	movl	.LC6(%rip), %eax
	movl	%eax, 48(%rsp)
	movl	.LC4(%rip), %eax
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
	movl	.LC4(%rip), %eax
	movl	%eax, 56(%rsp)
	movl	.LC2(%rip), %eax
	movl	%eax, 48(%rsp)
	movl	.LC6(%rip), %eax
	movl	%eax, 40(%rsp)
	movl	.LC4(%rip), %eax
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
	movl	$100, %r8d
	movl	$0, %edx
	leaq	controller(%rip), %rax
	movq	%rax, %rcx
	call	FuzzFisSetup
	.loc 1 55 0
	leaq	controllerinputs(%rip), %rdx
	movl	.LC7(%rip), %eax
	movl	%eax, 8(%rdx)
	.loc 1 56 0
	leaq	controllerinputs(%rip), %rdx
	movl	.LC8(%rip), %eax
	movl	%eax, 20(%rdx)
	.loc 1 57 0
	leaq	controller(%rip), %rax
	movq	%rax, %rcx
	call	FuzzFuzz
	.loc 1 58 0
	movl	$9, %r8d
	leaq	rules(%rip), %rdx
	leaq	controller(%rip), %rax
	movq	%rax, %rcx
	call	FuzzyIS
	cmpl	$-1, %eax
	jne	.L2
	.loc 1 59 0
	leaq	.LC9(%rip), %rcx
	call	perror
.L2:
	.loc 1 61 0
	leaq	controller(%rip), %rax
	movq	%rax, %rcx
	call	FuzzDeFuzz
	.loc 1 63 0
	leaq	controlleroutputs(%rip), %rax
	movss	20(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm1
	leaq	controlleroutputs(%rip), %rax
	movss	8(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	%xmm1, %rax
	movq	%rax, %rdx
	movq	%rdx, -8(%rbp)
	movsd	-8(%rbp), %xmm1
	movq	%rax, %rdx
	movq	%xmm0, %rax
	movq	%rax, %rcx
	movq	%rcx, -8(%rbp)
	movsd	-8(%rbp), %xmm0
	movapd	%xmm1, %xmm2
	movq	%rdx, %r8
	movapd	%xmm0, %xmm1
	movq	%rax, %rdx
	leaq	.LC10(%rip), %rcx
	call	printf
	.loc 1 64 0
	movl	$0, %eax
	.loc 1 65 0
	subq	$-128, %rsp
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
	.long	1073741824
	.align 4
.LC1:
	.long	3221225472
	.align 4
.LC2:
	.long	1065353216
	.align 4
.LC3:
	.long	3212836864
	.align 4
.LC4:
	.long	0
	.align 4
.LC5:
	.long	3204448256
	.align 4
.LC6:
	.long	1056964608
	.align 4
.LC7:
	.long	3196059648
	.align 4
.LC8:
	.long	1036831949
	.text
.Letext0:
	.file 2 "fuzzfis.h"
	.section	.debug_info,"dr"
.Ldebug_info0:
	.long	0x5c5
	.word	0x4
	.secrel32	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.ascii "GNU C 4.9.3 -mtune=generic -march=x86-64 -g\0"
	.byte	0x1
	.ascii "main.c\0"
	.ascii "/cygdrive/d/GDrive/Proyects/FuzzLib/fuzz_lib\0"
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
	.byte	0x30
	.long	0x145
	.uleb128 0x4
	.byte	0x4
	.byte	0x2
	.byte	0x31
	.long	0x1c0
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
	.byte	0x31
	.long	0x170
	.uleb128 0x4
	.byte	0x4
	.byte	0x2
	.byte	0x32
	.long	0x1ed
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
	.long	0x1d1
	.uleb128 0x3
	.ascii "SugenoFcn\0"
	.byte	0x2
	.byte	0x38
	.long	0x215
	.uleb128 0x6
	.byte	0x8
	.long	0x21b
	.uleb128 0x7
	.long	0x15d
	.long	0x22a
	.uleb128 0x8
	.long	0x22a
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x15d
	.uleb128 0x3
	.ascii "FuzzMethod\0"
	.byte	0x2
	.byte	0x39
	.long	0x242
	.uleb128 0x6
	.byte	0x8
	.long	0x248
	.uleb128 0x7
	.long	0x15d
	.long	0x25c
	.uleb128 0x8
	.long	0x15d
	.uleb128 0x8
	.long	0x15d
	.byte	0
	.uleb128 0x9
	.byte	0xc
	.byte	0x2
	.byte	0x3b
	.long	0x28d
	.uleb128 0xa
	.ascii "xmin\0"
	.byte	0x2
	.byte	0x3c
	.long	0x15d
	.byte	0
	.uleb128 0xa
	.ascii "xmax\0"
	.byte	0x2
	.byte	0x3c
	.long	0x15d
	.byte	0x4
	.uleb128 0xa
	.ascii "value\0"
	.byte	0x2
	.byte	0x3d
	.long	0x15d
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.ascii "FuzzIO_t\0"
	.byte	0x2
	.byte	0x3e
	.long	0x25c
	.uleb128 0x9
	.byte	0x28
	.byte	0x2
	.byte	0x43
	.long	0x2f9
	.uleb128 0xa
	.ascii "ioindex\0"
	.byte	0x2
	.byte	0x44
	.long	0x90
	.byte	0
	.uleb128 0xa
	.ascii "tag\0"
	.byte	0x2
	.byte	0x45
	.long	0x90
	.byte	0x1
	.uleb128 0xa
	.ascii "shape\0"
	.byte	0x2
	.byte	0x46
	.long	0x1c0
	.byte	0x4
	.uleb128 0xa
	.ascii "g\0"
	.byte	0x2
	.byte	0x47
	.long	0x204
	.byte	0x8
	.uleb128 0xa
	.ascii "points\0"
	.byte	0x2
	.byte	0x48
	.long	0x2f9
	.byte	0x10
	.uleb128 0xa
	.ascii "fuzzval\0"
	.byte	0x2
	.byte	0x49
	.long	0x15d
	.byte	0x20
	.byte	0
	.uleb128 0xb
	.long	0x15d
	.long	0x309
	.uleb128 0xc
	.long	0x115
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.ascii "FuzzMF_t\0"
	.byte	0x2
	.byte	0x4a
	.long	0x29d
	.uleb128 0x9
	.byte	0x3d
	.byte	0x2
	.byte	0x4d
	.long	0x3f7
	.uleb128 0xa
	.ascii "type\0"
	.byte	0x2
	.byte	0x4e
	.long	0x1ed
	.byte	0
	.uleb128 0xa
	.ascii "input\0"
	.byte	0x2
	.byte	0x4f
	.long	0x3f7
	.byte	0x4
	.uleb128 0xa
	.ascii "output\0"
	.byte	0x2
	.byte	0x50
	.long	0x3f7
	.byte	0xc
	.uleb128 0xa
	.ascii "inputmf\0"
	.byte	0x2
	.byte	0x51
	.long	0x3fd
	.byte	0x14
	.uleb128 0xa
	.ascii "outputmf\0"
	.byte	0x2
	.byte	0x52
	.long	0x3fd
	.byte	0x1c
	.uleb128 0xa
	.ascii "rule_cols\0"
	.byte	0x2
	.byte	0x53
	.long	0x90
	.byte	0x24
	.uleb128 0xa
	.ascii "ninputs\0"
	.byte	0x2
	.byte	0x54
	.long	0x90
	.byte	0x25
	.uleb128 0xa
	.ascii "noutputs\0"
	.byte	0x2
	.byte	0x55
	.long	0x90
	.byte	0x26
	.uleb128 0xa
	.ascii "nmfinputs\0"
	.byte	0x2
	.byte	0x56
	.long	0x90
	.byte	0x27
	.uleb128 0xa
	.ascii "nmfoutputs\0"
	.byte	0x2
	.byte	0x57
	.long	0x90
	.byte	0x28
	.uleb128 0xa
	.ascii "evalpoints\0"
	.byte	0x2
	.byte	0x58
	.long	0xcb
	.byte	0x29
	.uleb128 0xa
	.ascii "FuzzAND\0"
	.byte	0x2
	.byte	0x59
	.long	0x230
	.byte	0x2d
	.uleb128 0xa
	.ascii "FuzzOR\0"
	.byte	0x2
	.byte	0x59
	.long	0x230
	.byte	0x35
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x28d
	.uleb128 0x6
	.byte	0x8
	.long	0x309
	.uleb128 0x3
	.ascii "FuzzFIS_t\0"
	.byte	0x2
	.byte	0x5a
	.long	0x319
	.uleb128 0x4
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.long	0x42a
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
	.long	0x43d
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
	.long	0x486
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
	.long	0x4cf
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
	.long	0xc4
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xe
	.ascii "controller\0"
	.byte	0x1
	.byte	0x5
	.long	0x403
	.uleb128 0x9
	.byte	0x3
	.quad	controller
	.uleb128 0xb
	.long	0x28d
	.long	0x519
	.uleb128 0xc
	.long	0x115
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.ascii "controllerinputs\0"
	.byte	0x1
	.byte	0x6
	.long	0x509
	.uleb128 0x9
	.byte	0x3
	.quad	controllerinputs
	.uleb128 0xe
	.ascii "controlleroutputs\0"
	.byte	0x1
	.byte	0x7
	.long	0x509
	.uleb128 0x9
	.byte	0x3
	.quad	controlleroutputs
	.uleb128 0xb
	.long	0x309
	.long	0x56e
	.uleb128 0xc
	.long	0x115
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.ascii "MFin\0"
	.byte	0x1
	.byte	0x8
	.long	0x55e
	.uleb128 0x9
	.byte	0x3
	.quad	MFin
	.uleb128 0xe
	.ascii "MFout\0"
	.byte	0x1
	.byte	0x9
	.long	0x55e
	.uleb128 0x9
	.byte	0x3
	.quad	MFout
	.uleb128 0xb
	.long	0xa1
	.long	0x5b1
	.uleb128 0xc
	.long	0x115
	.byte	0x8
	.uleb128 0xc
	.long	0x115
	.byte	0xa
	.byte	0
	.uleb128 0xe
	.ascii "rules\0"
	.byte	0x1
	.byte	0x10
	.long	0x59b
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
	.byte	0
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
