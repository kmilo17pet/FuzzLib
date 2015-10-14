	.file	"main.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.comm	flexnav, 61, 5
	.comm	flexnav_inputs, 48, 5
	.comm	flexnav_outputs, 24, 4
	.comm	MFin, 480, 6
	.comm	MFout, 240, 6
	.globl	flexnav_Rules
	.data
	.align 64
flexnav_Rules:
	.word	0
	.word	-1
	.word	-32764
	.word	0
	.word	1
	.word	-32766
	.word	1
	.word	4
	.space 18
	.word	1
	.word	6
	.word	-32764
	.word	1
	.word	4
	.space 24
	.word	2
	.word	9
	.word	-32764
	.word	1
	.word	4
	.space 24
	.word	3
	.word	12
	.word	-32764
	.word	0
	.word	1
	.word	-32766
	.word	1
	.word	4
	.space 18
	.word	0
	.word	1
	.word	-32766
	.word	1
	.word	4
	.word	-32766
	.word	3
	.word	10
	.word	-32764
	.word	0
	.word	3
	.space 12
	.word	0
	.word	1
	.word	-32766
	.word	2
	.word	7
	.word	-32766
	.word	3
	.word	10
	.word	-32764
	.word	1
	.word	6
	.space 12
	.word	0
	.word	1
	.word	-32766
	.word	1
	.word	4
	.word	-32766
	.word	3
	.word	11
	.word	-32764
	.word	0
	.word	2
	.space 12
	.word	0
	.word	1
	.word	-32766
	.word	2
	.word	7
	.word	-32766
	.word	3
	.word	11
	.word	-32764
	.word	1
	.word	5
	.space 12
	.word	0
	.word	1
	.word	-32766
	.word	1
	.word	5
	.word	-32766
	.word	3
	.word	10
	.word	-32764
	.word	0
	.word	2
	.space 12
	.word	0
	.word	1
	.word	-32766
	.word	2
	.word	8
	.word	-32766
	.word	3
	.word	10
	.word	-32764
	.word	1
	.word	5
	.space 12
	.word	0
	.word	2
	.word	-32766
	.word	1
	.word	4
	.word	-32766
	.word	3
	.word	10
	.word	-32764
	.word	0
	.word	2
	.space 12
	.word	0
	.word	2
	.word	-32766
	.word	2
	.word	7
	.word	-32766
	.word	3
	.word	10
	.word	-32764
	.word	1
	.word	5
	.space 12
	.word	0
	.word	2
	.word	-32766
	.word	1
	.word	-4
	.word	-32764
	.word	0
	.word	1
	.space 18
	.word	0
	.word	2
	.word	-32766
	.word	2
	.word	-7
	.word	-32764
	.word	1
	.word	4
	.space 18
	.word	0
	.word	2
	.word	-32766
	.word	3
	.word	-10
	.word	-32764
	.word	0
	.word	1
	.word	-32766
	.word	1
	.word	4
	.space 12
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC33:
	.ascii "\15\12 %g   %g\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB7:
	.file 1 "main.c"
	.loc 1 38 0
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
	movl	%ecx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	.loc 1 38 0
	call	__main
	.loc 1 40 0
	movss	.LC0(%rip), %xmm3
	pxor	%xmm2, %xmm2
	movl	$0, %edx
	leaq	flexnav_inputs(%rip), %rax
	movq	%rax, %rcx
	call	FuzzAddIO
	.loc 1 41 0
	movss	.LC2(%rip), %xmm3
	pxor	%xmm2, %xmm2
	movl	$1, %edx
	leaq	flexnav_inputs(%rip), %rax
	movq	%rax, %rcx
	call	FuzzAddIO
	.loc 1 42 0
	movss	.LC2(%rip), %xmm3
	pxor	%xmm2, %xmm2
	movl	$2, %edx
	leaq	flexnav_inputs(%rip), %rax
	movq	%rax, %rcx
	call	FuzzAddIO
	.loc 1 43 0
	movss	.LC3(%rip), %xmm3
	pxor	%xmm2, %xmm2
	movl	$3, %edx
	leaq	flexnav_inputs(%rip), %rax
	movq	%rax, %rcx
	call	FuzzAddIO
	.loc 1 44 0
	movss	.LC4(%rip), %xmm3
	pxor	%xmm2, %xmm2
	movl	$0, %edx
	leaq	flexnav_outputs(%rip), %rax
	movq	%rax, %rcx
	call	FuzzAddIO
	.loc 1 45 0
	movss	.LC4(%rip), %xmm3
	pxor	%xmm2, %xmm2
	movl	$1, %edx
	leaq	flexnav_outputs(%rip), %rax
	movq	%rax, %rcx
	call	FuzzAddIO
	.loc 1 47 0
	movl	.LC1(%rip), %eax
	movl	%eax, 56(%rsp)
	movl	.LC5(%rip), %eax
	movl	%eax, 48(%rsp)
	movl	.LC1(%rip), %eax
	movl	%eax, 40(%rsp)
	movl	.LC6(%rip), %eax
	movl	%eax, 32(%rsp)
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %edx
	leaq	MFin(%rip), %rax
	movq	%rax, %rcx
	call	FuzzAddMF
	.loc 1 48 0
	movl	.LC1(%rip), %eax
	movl	%eax, 56(%rsp)
	movl	.LC7(%rip), %eax
	movl	%eax, 48(%rsp)
	movl	.LC8(%rip), %eax
	movl	%eax, 40(%rsp)
	movl	.LC9(%rip), %eax
	movl	%eax, 32(%rsp)
	movl	$0, %r9d
	movl	$1, %r8d
	movl	$0, %edx
	leaq	MFin(%rip), %rax
	movq	%rax, %rcx
	call	FuzzAddMF
	.loc 1 49 0
	movl	.LC1(%rip), %eax
	movl	%eax, 56(%rsp)
	movl	.LC10(%rip), %eax
	movl	%eax, 48(%rsp)
	movl	.LC0(%rip), %eax
	movl	%eax, 40(%rsp)
	movl	.LC11(%rip), %eax
	movl	%eax, 32(%rsp)
	movl	$0, %r9d
	movl	$2, %r8d
	movl	$0, %edx
	leaq	MFin(%rip), %rax
	movq	%rax, %rcx
	call	FuzzAddMF
	.loc 1 50 0
	movl	.LC1(%rip), %eax
	movl	%eax, 56(%rsp)
	movl	.LC12(%rip), %eax
	movl	%eax, 48(%rsp)
	movl	.LC1(%rip), %eax
	movl	%eax, 40(%rsp)
	movl	.LC13(%rip), %eax
	movl	%eax, 32(%rsp)
	movl	$0, %r9d
	movl	$3, %r8d
	movl	$1, %edx
	leaq	MFin(%rip), %rax
	movq	%rax, %rcx
	call	FuzzAddMF
	.loc 1 51 0
	movl	.LC1(%rip), %eax
	movl	%eax, 56(%rsp)
	movl	.LC14(%rip), %eax
	movl	%eax, 48(%rsp)
	movl	.LC15(%rip), %eax
	movl	%eax, 40(%rsp)
	movl	.LC4(%rip), %eax
	movl	%eax, 32(%rsp)
	movl	$0, %r9d
	movl	$4, %r8d
	movl	$1, %edx
	leaq	MFin(%rip), %rax
	movq	%rax, %rcx
	call	FuzzAddMF
	.loc 1 52 0
	movl	.LC1(%rip), %eax
	movl	%eax, 56(%rsp)
	movl	.LC16(%rip), %eax
	movl	%eax, 48(%rsp)
	movl	.LC2(%rip), %eax
	movl	%eax, 40(%rsp)
	movl	.LC17(%rip), %eax
	movl	%eax, 32(%rsp)
	movl	$0, %r9d
	movl	$5, %r8d
	movl	$1, %edx
	leaq	MFin(%rip), %rax
	movq	%rax, %rcx
	call	FuzzAddMF
	.loc 1 53 0
	movl	.LC1(%rip), %eax
	movl	%eax, 56(%rsp)
	movl	.LC12(%rip), %eax
	movl	%eax, 48(%rsp)
	movl	.LC1(%rip), %eax
	movl	%eax, 40(%rsp)
	movl	.LC18(%rip), %eax
	movl	%eax, 32(%rsp)
	movl	$0, %r9d
	movl	$6, %r8d
	movl	$2, %edx
	leaq	MFin(%rip), %rax
	movq	%rax, %rcx
	call	FuzzAddMF
	.loc 1 54 0
	movl	.LC1(%rip), %eax
	movl	%eax, 56(%rsp)
	movl	.LC14(%rip), %eax
	movl	%eax, 48(%rsp)
	movl	.LC15(%rip), %eax
	movl	%eax, 40(%rsp)
	movl	.LC4(%rip), %eax
	movl	%eax, 32(%rsp)
	movl	$0, %r9d
	movl	$7, %r8d
	movl	$2, %edx
	leaq	MFin(%rip), %rax
	movq	%rax, %rcx
	call	FuzzAddMF
	.loc 1 55 0
	movl	.LC1(%rip), %eax
	movl	%eax, 56(%rsp)
	movl	.LC16(%rip), %eax
	movl	%eax, 48(%rsp)
	movl	.LC2(%rip), %eax
	movl	%eax, 40(%rsp)
	movl	.LC17(%rip), %eax
	movl	%eax, 32(%rsp)
	movl	$0, %r9d
	movl	$8, %r8d
	movl	$2, %edx
	leaq	MFin(%rip), %rax
	movq	%rax, %rcx
	call	FuzzAddMF
	.loc 1 56 0
	movl	.LC1(%rip), %eax
	movl	%eax, 56(%rsp)
	movl	.LC19(%rip), %eax
	movl	%eax, 48(%rsp)
	movl	.LC1(%rip), %eax
	movl	%eax, 40(%rsp)
	movl	.LC20(%rip), %eax
	movl	%eax, 32(%rsp)
	movl	$0, %r9d
	movl	$9, %r8d
	movl	$3, %edx
	leaq	MFin(%rip), %rax
	movq	%rax, %rcx
	call	FuzzAddMF
	.loc 1 57 0
	movl	.LC1(%rip), %eax
	movl	%eax, 56(%rsp)
	movl	.LC21(%rip), %eax
	movl	%eax, 48(%rsp)
	movl	.LC22(%rip), %eax
	movl	%eax, 40(%rsp)
	movl	.LC2(%rip), %eax
	movl	%eax, 32(%rsp)
	movl	$0, %r9d
	movl	$10, %r8d
	movl	$3, %edx
	leaq	MFin(%rip), %rax
	movq	%rax, %rcx
	call	FuzzAddMF
	.loc 1 58 0
	movl	.LC1(%rip), %eax
	movl	%eax, 56(%rsp)
	movl	.LC23(%rip), %eax
	movl	%eax, 48(%rsp)
	movl	.LC3(%rip), %eax
	movl	%eax, 40(%rsp)
	movl	.LC24(%rip), %eax
	movl	%eax, 32(%rsp)
	movl	$0, %r9d
	movl	$11, %r8d
	movl	$3, %edx
	leaq	MFin(%rip), %rax
	movq	%rax, %rcx
	call	FuzzAddMF
	.loc 1 60 0
	movl	.LC1(%rip), %eax
	movl	%eax, 56(%rsp)
	movl	.LC7(%rip), %eax
	movl	%eax, 48(%rsp)
	movl	.LC1(%rip), %eax
	movl	%eax, 40(%rsp)
	movl	.LC25(%rip), %eax
	movl	%eax, 32(%rsp)
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %edx
	leaq	MFout(%rip), %rax
	movq	%rax, %rcx
	call	FuzzAddMF
	.loc 1 61 0
	movl	.LC1(%rip), %eax
	movl	%eax, 56(%rsp)
	movl	.LC26(%rip), %eax
	movl	%eax, 48(%rsp)
	movl	.LC0(%rip), %eax
	movl	%eax, 40(%rsp)
	movl	.LC5(%rip), %eax
	movl	%eax, 32(%rsp)
	movl	$0, %r9d
	movl	$1, %r8d
	movl	$0, %edx
	leaq	MFout(%rip), %rax
	movq	%rax, %rcx
	call	FuzzAddMF
	.loc 1 62 0
	movl	.LC1(%rip), %eax
	movl	%eax, 56(%rsp)
	movl	.LC27(%rip), %eax
	movl	%eax, 48(%rsp)
	movl	.LC4(%rip), %eax
	movl	%eax, 40(%rsp)
	movl	.LC28(%rip), %eax
	movl	%eax, 32(%rsp)
	movl	$0, %r9d
	movl	$2, %r8d
	movl	$0, %edx
	leaq	MFout(%rip), %rax
	movq	%rax, %rcx
	call	FuzzAddMF
	.loc 1 63 0
	movl	.LC1(%rip), %eax
	movl	%eax, 56(%rsp)
	movl	.LC7(%rip), %eax
	movl	%eax, 48(%rsp)
	movl	.LC1(%rip), %eax
	movl	%eax, 40(%rsp)
	movl	.LC25(%rip), %eax
	movl	%eax, 32(%rsp)
	movl	$0, %r9d
	movl	$3, %r8d
	movl	$1, %edx
	leaq	MFout(%rip), %rax
	movq	%rax, %rcx
	call	FuzzAddMF
	.loc 1 64 0
	movl	.LC1(%rip), %eax
	movl	%eax, 56(%rsp)
	movl	.LC26(%rip), %eax
	movl	%eax, 48(%rsp)
	movl	.LC0(%rip), %eax
	movl	%eax, 40(%rsp)
	movl	.LC5(%rip), %eax
	movl	%eax, 32(%rsp)
	movl	$0, %r9d
	movl	$4, %r8d
	movl	$1, %edx
	leaq	MFout(%rip), %rax
	movq	%rax, %rcx
	call	FuzzAddMF
	.loc 1 65 0
	movl	.LC1(%rip), %eax
	movl	%eax, 56(%rsp)
	movl	.LC27(%rip), %eax
	movl	%eax, 48(%rsp)
	movl	.LC4(%rip), %eax
	movl	%eax, 40(%rsp)
	movl	.LC28(%rip), %eax
	movl	%eax, 32(%rsp)
	movl	$0, %r9d
	movl	$5, %r8d
	movl	$1, %edx
	leaq	MFout(%rip), %rax
	movq	%rax, %rcx
	call	FuzzAddMF
	.loc 1 68 0
	movl	$6, 96(%rsp)
	leaq	MFout(%rip), %rax
	movq	%rax, 88(%rsp)
	movl	$12, 80(%rsp)
	leaq	MFin(%rip), %rax
	movq	%rax, 72(%rsp)
	movl	$2, 64(%rsp)
	leaq	flexnav_outputs(%rip), %rax
	movq	%rax, 56(%rsp)
	movl	$4, 48(%rsp)
	leaq	flexnav_inputs(%rip), %rax
	movq	%rax, 40(%rsp)
	movq	.refptr.FuzzMax(%rip), %rax
	movq	%rax, 32(%rsp)
	movq	.refptr.FuzzMin(%rip), %r9
	movl	$100, %r8d
	movl	$0, %edx
	leaq	flexnav(%rip), %rax
	movq	%rax, %rcx
	call	FuzzFisSetup
	.loc 1 71 0
	leaq	flexnav_inputs(%rip), %rdx
	movl	.LC29(%rip), %eax
	movl	%eax, 8(%rdx)
	.loc 1 72 0
	leaq	flexnav_inputs(%rip), %rdx
	movl	.LC30(%rip), %eax
	movl	%eax, 20(%rdx)
	.loc 1 73 0
	leaq	flexnav_inputs(%rip), %rdx
	movl	.LC31(%rip), %eax
	movl	%eax, 32(%rdx)
	.loc 1 74 0
	leaq	flexnav_inputs(%rip), %rdx
	movl	.LC32(%rip), %eax
	movl	%eax, 44(%rdx)
	.loc 1 76 0
	leaq	flexnav(%rip), %rax
	movq	%rax, %rcx
	call	FuzzFuzz
	.loc 1 77 0
	movl	$15, %r8d
	leaq	flexnav_Rules(%rip), %rdx
	leaq	flexnav(%rip), %rax
	movq	%rax, %rcx
	call	FuzzyIS
	.loc 1 80 0
	leaq	flexnav(%rip), %rax
	movq	%rax, %rcx
	call	FuzzDeFuzz
	.loc 1 83 0
	leaq	flexnav_outputs(%rip), %rax
	movss	20(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm1
	leaq	flexnav_outputs(%rip), %rax
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
	leaq	.LC33(%rip), %rcx
	call	printf
	.loc 1 85 0
	movl	$0, %eax
	.loc 1 86 0
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
	.long	1056964608
	.align 4
.LC1:
	.long	0
	.align 4
.LC2:
	.long	1084227584
	.align 4
.LC3:
	.long	1101004800
	.align 4
.LC4:
	.long	1065353216
	.align 4
.LC5:
	.long	1045220557
	.align 4
.LC6:
	.long	3192704205
	.align 4
.LC7:
	.long	1053609165
	.align 4
.LC8:
	.long	1048576000
	.align 4
.LC9:
	.long	1036831949
	.align 4
.LC10:
	.long	1060320051
	.align 4
.LC11:
	.long	1050253722
	.align 4
.LC12:
	.long	1073741824
	.align 4
.LC13:
	.long	3212836864
	.align 4
.LC14:
	.long	1082130432
	.align 4
.LC15:
	.long	1075838976
	.align 4
.LC16:
	.long	1088421888
	.align 4
.LC17:
	.long	1077936128
	.align 4
.LC18:
	.long	3221225472
	.align 4
.LC19:
	.long	1090519040
	.align 4
.LC20:
	.long	3238002688
	.align 4
.LC21:
	.long	1097859072
	.align 4
.LC22:
	.long	1092616192
	.align 4
.LC23:
	.long	1105199104
	.align 4
.LC24:
	.long	1094713344
	.align 4
.LC25:
	.long	3201092813
	.align 4
.LC26:
	.long	1061997773
	.align 4
.LC27:
	.long	1068708659
	.align 4
.LC28:
	.long	1058642330
	.align 4
.LC29:
	.long	1051327463
	.align 4
.LC30:
	.long	1069799178
	.align 4
.LC31:
	.long	1080033280
	.align 4
.LC32:
	.long	1087079711
	.text
.Letext0:
	.file 2 "fuzzfis.h"
	.section	.debug_info,"dr"
.Ldebug_info0:
	.long	0x67d
	.word	0x4
	.secrel32	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.ascii "GNU C 4.9.3 -mtune=generic -march=x86-64 -g\0"
	.byte	0x1
	.ascii "main.c\0"
	.ascii "/cygdrive/e/GDrive/Proyects/FuzzLib/fuzz_lib\0"
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
	.uleb128 0x3
	.byte	0x8
	.long	0xfc
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
	.uleb128 0x4
	.ascii "fuzz_real_t\0"
	.byte	0x2
	.byte	0x30
	.long	0x14b
	.uleb128 0x5
	.byte	0x4
	.byte	0x2
	.byte	0x31
	.long	0x1ea
	.uleb128 0x6
	.ascii "trimf\0"
	.sleb128 0
	.uleb128 0x6
	.ascii "trapmf\0"
	.sleb128 1
	.uleb128 0x6
	.ascii "gbellmf\0"
	.sleb128 2
	.uleb128 0x6
	.ascii "gaussmf\0"
	.sleb128 3
	.uleb128 0x6
	.ascii "gauss2mf\0"
	.sleb128 4
	.uleb128 0x6
	.ascii "sigmf\0"
	.sleb128 5
	.uleb128 0x6
	.ascii "dsigmf\0"
	.sleb128 6
	.uleb128 0x6
	.ascii "psigmf\0"
	.sleb128 7
	.uleb128 0x6
	.ascii "pimf\0"
	.sleb128 8
	.uleb128 0x6
	.ascii "smf\0"
	.sleb128 9
	.uleb128 0x6
	.ascii "zmf\0"
	.sleb128 10
	.uleb128 0x6
	.ascii "singletonmf\0"
	.sleb128 11
	.byte	0
	.uleb128 0x4
	.ascii "fuzz_mf_t\0"
	.byte	0x2
	.byte	0x31
	.long	0x176
	.uleb128 0x5
	.byte	0x4
	.byte	0x2
	.byte	0x32
	.long	0x217
	.uleb128 0x6
	.ascii "Mamdani\0"
	.sleb128 0
	.uleb128 0x6
	.ascii "Sugeno\0"
	.sleb128 1
	.byte	0
	.uleb128 0x4
	.ascii "fuzz_fis_type_t\0"
	.byte	0x2
	.byte	0x32
	.long	0x1fb
	.uleb128 0x4
	.ascii "SugenoFcn\0"
	.byte	0x2
	.byte	0x38
	.long	0x23f
	.uleb128 0x3
	.byte	0x8
	.long	0x245
	.uleb128 0x7
	.long	0x163
	.long	0x254
	.uleb128 0x8
	.long	0x254
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x163
	.uleb128 0x4
	.ascii "FuzzMethod\0"
	.byte	0x2
	.byte	0x39
	.long	0x26c
	.uleb128 0x3
	.byte	0x8
	.long	0x272
	.uleb128 0x7
	.long	0x163
	.long	0x286
	.uleb128 0x8
	.long	0x163
	.uleb128 0x8
	.long	0x163
	.byte	0
	.uleb128 0x9
	.byte	0xc
	.byte	0x2
	.byte	0x3b
	.long	0x2b7
	.uleb128 0xa
	.ascii "xmin\0"
	.byte	0x2
	.byte	0x3c
	.long	0x163
	.byte	0
	.uleb128 0xa
	.ascii "xmax\0"
	.byte	0x2
	.byte	0x3c
	.long	0x163
	.byte	0x4
	.uleb128 0xa
	.ascii "value\0"
	.byte	0x2
	.byte	0x3d
	.long	0x163
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.ascii "FuzzIO_t\0"
	.byte	0x2
	.byte	0x3e
	.long	0x286
	.uleb128 0x9
	.byte	0x28
	.byte	0x2
	.byte	0x43
	.long	0x323
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
	.long	0x1ea
	.byte	0x4
	.uleb128 0xa
	.ascii "g\0"
	.byte	0x2
	.byte	0x47
	.long	0x22e
	.byte	0x8
	.uleb128 0xa
	.ascii "points\0"
	.byte	0x2
	.byte	0x48
	.long	0x323
	.byte	0x10
	.uleb128 0xa
	.ascii "fuzzval\0"
	.byte	0x2
	.byte	0x49
	.long	0x163
	.byte	0x20
	.byte	0
	.uleb128 0xb
	.long	0x163
	.long	0x333
	.uleb128 0xc
	.long	0x115
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.ascii "FuzzMF_t\0"
	.byte	0x2
	.byte	0x4a
	.long	0x2c7
	.uleb128 0x9
	.byte	0x3d
	.byte	0x2
	.byte	0x4d
	.long	0x421
	.uleb128 0xa
	.ascii "type\0"
	.byte	0x2
	.byte	0x4e
	.long	0x217
	.byte	0
	.uleb128 0xa
	.ascii "input\0"
	.byte	0x2
	.byte	0x4f
	.long	0x421
	.byte	0x4
	.uleb128 0xa
	.ascii "output\0"
	.byte	0x2
	.byte	0x50
	.long	0x421
	.byte	0xc
	.uleb128 0xa
	.ascii "inputmf\0"
	.byte	0x2
	.byte	0x51
	.long	0x427
	.byte	0x14
	.uleb128 0xa
	.ascii "outputmf\0"
	.byte	0x2
	.byte	0x52
	.long	0x427
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
	.long	0x25a
	.byte	0x2d
	.uleb128 0xa
	.ascii "FuzzOR\0"
	.byte	0x2
	.byte	0x59
	.long	0x25a
	.byte	0x35
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2b7
	.uleb128 0x3
	.byte	0x8
	.long	0x333
	.uleb128 0x4
	.ascii "FuzzFIS_t\0"
	.byte	0x2
	.byte	0x5a
	.long	0x343
	.uleb128 0x5
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.long	0x45d
	.uleb128 0x6
	.ascii "wt\0"
	.sleb128 0
	.uleb128 0x6
	.ascii "dax\0"
	.sleb128 1
	.uleb128 0x6
	.ascii "day\0"
	.sleb128 2
	.uleb128 0x6
	.ascii "ae\0"
	.sleb128 3
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.long	0x476
	.uleb128 0x6
	.ascii "phit\0"
	.sleb128 0
	.uleb128 0x6
	.ascii "thetat\0"
	.sleb128 1
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.long	0x4ea
	.uleb128 0x6
	.ascii "wtSLOW\0"
	.sleb128 0
	.uleb128 0x6
	.ascii "wtMED\0"
	.sleb128 1
	.uleb128 0x6
	.ascii "wtFAST\0"
	.sleb128 2
	.uleb128 0x6
	.ascii "daxLOW\0"
	.sleb128 3
	.uleb128 0x6
	.ascii "daxMED\0"
	.sleb128 4
	.uleb128 0x6
	.ascii "daxHIGH\0"
	.sleb128 5
	.uleb128 0x6
	.ascii "dayLOW\0"
	.sleb128 6
	.uleb128 0x6
	.ascii "dayMED\0"
	.sleb128 7
	.uleb128 0x6
	.ascii "dayHIGH\0"
	.sleb128 8
	.uleb128 0x6
	.ascii "aeLOW\0"
	.sleb128 9
	.uleb128 0x6
	.ascii "aeMED\0"
	.sleb128 10
	.uleb128 0x6
	.ascii "aeHIGH\0"
	.sleb128 11
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.long	0x53d
	.uleb128 0x6
	.ascii "phitGYRO\0"
	.sleb128 0
	.uleb128 0x6
	.ascii "phitBOTH\0"
	.sleb128 1
	.uleb128 0x6
	.ascii "phitACCEL\0"
	.sleb128 2
	.uleb128 0x6
	.ascii "thetatGYRO\0"
	.sleb128 3
	.uleb128 0x6
	.ascii "thetatBOTH\0"
	.sleb128 4
	.uleb128 0x6
	.ascii "thetatACCEL\0"
	.sleb128 5
	.byte	0
	.uleb128 0xd
	.ascii "main\0"
	.byte	0x1
	.byte	0x26
	.long	0xc4
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x57e
	.uleb128 0xe
	.ascii "argc\0"
	.byte	0x1
	.byte	0x26
	.long	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.ascii "argv\0"
	.byte	0x1
	.byte	0x26
	.long	0x57e
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x121
	.uleb128 0xf
	.ascii "flexnav\0"
	.byte	0x1
	.byte	0x6
	.long	0x42d
	.uleb128 0x9
	.byte	0x3
	.quad	flexnav
	.uleb128 0xb
	.long	0x2b7
	.long	0x5ad
	.uleb128 0xc
	.long	0x115
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.ascii "flexnav_inputs\0"
	.byte	0x1
	.byte	0x8
	.long	0x59d
	.uleb128 0x9
	.byte	0x3
	.quad	flexnav_inputs
	.uleb128 0xb
	.long	0x2b7
	.long	0x5dd
	.uleb128 0xc
	.long	0x115
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.ascii "flexnav_outputs\0"
	.byte	0x1
	.byte	0x9
	.long	0x5cd
	.uleb128 0x9
	.byte	0x3
	.quad	flexnav_outputs
	.uleb128 0xb
	.long	0x333
	.long	0x60e
	.uleb128 0xc
	.long	0x115
	.byte	0xb
	.byte	0
	.uleb128 0xf
	.ascii "MFin\0"
	.byte	0x1
	.byte	0xb
	.long	0x5fe
	.uleb128 0x9
	.byte	0x3
	.quad	MFin
	.uleb128 0xb
	.long	0x333
	.long	0x634
	.uleb128 0xc
	.long	0x115
	.byte	0x5
	.byte	0
	.uleb128 0xf
	.ascii "MFout\0"
	.byte	0x1
	.byte	0xc
	.long	0x624
	.uleb128 0x9
	.byte	0x3
	.quad	MFout
	.uleb128 0xb
	.long	0xa1
	.long	0x661
	.uleb128 0xc
	.long	0x115
	.byte	0xe
	.uleb128 0xc
	.long	0x115
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.ascii "flexnav_Rules\0"
	.byte	0x1
	.byte	0x14
	.long	0x64b
	.uleb128 0x9
	.byte	0x3
	.quad	flexnav_Rules
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
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
