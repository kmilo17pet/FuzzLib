	.file	"main.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC33:
	.ascii "\15\12 %g   %g\0"
	.section	.text.unlikely,"x"
.LCOLDB34:
	.section	.text.startup,"x"
.LHOTB34:
	.p2align 4,,15
	.section	.text.unlikely,"x"
.Ltext_cold0:
	.section	.text.startup,"x"
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB7:
	.file 1 "main.c"
	.loc 1 45 0
	.cfi_startproc
.LVL0:
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rdi
	.seh_pushreg	%rdi
	.cfi_def_cfa_offset 24
	.cfi_offset 5, -24
	pushq	%rsi
	.seh_pushreg	%rsi
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$280, %rsp
	.seh_stackalloc	280
	.cfi_def_cfa_offset 320
	movaps	%xmm6, 112(%rsp)
	.seh_savexmm	%xmm6, 112
	movaps	%xmm7, 128(%rsp)
	.seh_savexmm	%xmm7, 128
	movaps	%xmm8, 144(%rsp)
	.seh_savexmm	%xmm8, 144
	movaps	%xmm9, 160(%rsp)
	.seh_savexmm	%xmm9, 160
	movaps	%xmm10, 176(%rsp)
	.seh_savexmm	%xmm10, 176
	movaps	%xmm11, 192(%rsp)
	.seh_savexmm	%xmm11, 192
	movaps	%xmm12, 208(%rsp)
	.seh_savexmm	%xmm12, 208
	movaps	%xmm13, 224(%rsp)
	.seh_savexmm	%xmm13, 224
	movaps	%xmm14, 240(%rsp)
	.seh_savexmm	%xmm14, 240
	movaps	%xmm15, 256(%rsp)
	.seh_savexmm	%xmm15, 256
	.cfi_offset 23, -208
	.cfi_offset 24, -192
	.cfi_offset 25, -176
	.cfi_offset 26, -160
	.cfi_offset 27, -144
	.cfi_offset 28, -128
	.cfi_offset 29, -112
	.cfi_offset 30, -96
	.cfi_offset 31, -80
	.cfi_offset 32, -64
	.seh_endprologue
	.loc 1 47 0
	leaq	flexnav_inputs(%rip), %rdi
	.loc 1 51 0
	leaq	flexnav_outputs(%rip), %rbp
	.loc 1 54 0
	leaq	MFin(%rip), %rbx
	.loc 1 45 0
	call	__main
.LVL1:
	.loc 1 47 0
	pxor	%xmm2, %xmm2
	xorl	%edx, %edx
	movq	%rdi, %rcx
	movss	.LC0(%rip), %xmm3
	.loc 1 54 0
	pxor	%xmm6, %xmm6
	.loc 1 67 0
	leaq	MFout(%rip), %rsi
	.loc 1 47 0
	call	FuzzAddIO
.LVL2:
	.loc 1 48 0
	pxor	%xmm2, %xmm2
	movq	%rdi, %rcx
	movss	.LC2(%rip), %xmm3
	movl	$1, %edx
	call	FuzzAddIO
.LVL3:
	.loc 1 49 0
	pxor	%xmm2, %xmm2
	movq	%rdi, %rcx
	movss	.LC2(%rip), %xmm3
	movl	$2, %edx
	call	FuzzAddIO
.LVL4:
	.loc 1 50 0
	pxor	%xmm2, %xmm2
	movq	%rdi, %rcx
	movss	.LC3(%rip), %xmm3
	movl	$3, %edx
	call	FuzzAddIO
.LVL5:
	.loc 1 51 0
	pxor	%xmm2, %xmm2
	xorl	%edx, %edx
	movq	%rbp, %rcx
	movss	.LC4(%rip), %xmm3
	call	FuzzAddIO
.LVL6:
	.loc 1 52 0
	pxor	%xmm2, %xmm2
	movq	%rbp, %rcx
	movss	.LC4(%rip), %xmm3
	movl	$1, %edx
	call	FuzzAddIO
.LVL7:
	.loc 1 54 0
	movss	.LC5(%rip), %xmm8
	xorl	%r9d, %r9d
	movss	%xmm6, 56(%rsp)
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movss	%xmm8, 48(%rsp)
	movq	%rbx, %rcx
	movl	$0xbe4ccccd, 32(%rsp)
	movss	%xmm6, 40(%rsp)
	call	FuzzAddMF
.LVL8:
	.loc 1 55 0
	movss	.LC7(%rip), %xmm10
	xorl	%r9d, %r9d
	movss	%xmm6, 56(%rsp)
	xorl	%edx, %edx
	movq	%rbx, %rcx
	movss	%xmm10, 48(%rsp)
	movl	$0x3e800000, 40(%rsp)
	movl	$0x3dcccccd, 32(%rsp)
	movl	$1, %r8d
	call	FuzzAddMF
.LVL9:
	.loc 1 56 0
	movss	.LC0(%rip), %xmm9
	xorl	%r9d, %r9d
	movss	%xmm6, 56(%rsp)
	xorl	%edx, %edx
	movq	%rbx, %rcx
	movss	%xmm9, 40(%rsp)
	movl	$0x3f333333, 48(%rsp)
	movl	$0x3e99999a, 32(%rsp)
	movl	$2, %r8d
	call	FuzzAddMF
.LVL10:
	.loc 1 57 0
	movss	.LC12(%rip), %xmm15
	xorl	%r9d, %r9d
	movss	%xmm6, 56(%rsp)
	movq	%rbx, %rcx
	movl	$0xbf800000, 32(%rsp)
	movss	%xmm15, 48(%rsp)
	movl	$3, %r8d
	movl	$1, %edx
	movss	%xmm6, 40(%rsp)
	call	FuzzAddMF
.LVL11:
	.loc 1 58 0
	movss	.LC4(%rip), %xmm7
	xorl	%r9d, %r9d
	movss	.LC14(%rip), %xmm14
	movq	%rbx, %rcx
	movss	.LC15(%rip), %xmm13
	movl	$4, %r8d
	movss	%xmm6, 56(%rsp)
	movl	$1, %edx
	movss	%xmm14, 48(%rsp)
	movss	%xmm13, 40(%rsp)
	movss	%xmm7, 32(%rsp)
	call	FuzzAddMF
.LVL12:
	.loc 1 59 0
	movss	.LC2(%rip), %xmm11
	xorl	%r9d, %r9d
	movss	.LC16(%rip), %xmm12
	movq	%rbx, %rcx
	movss	%xmm6, 56(%rsp)
	movl	$0x40400000, 32(%rsp)
	movl	$5, %r8d
	movss	%xmm12, 48(%rsp)
	movl	$1, %edx
	movss	%xmm11, 40(%rsp)
	call	FuzzAddMF
.LVL13:
	.loc 1 60 0
	movss	%xmm6, 56(%rsp)
	xorl	%r9d, %r9d
	movq	%rbx, %rcx
	movss	%xmm15, 48(%rsp)
	movl	$0xc0000000, 32(%rsp)
	movl	$6, %r8d
	movss	%xmm6, 40(%rsp)
	movl	$2, %edx
	call	FuzzAddMF
.LVL14:
	.loc 1 61 0
	movss	%xmm6, 56(%rsp)
	xorl	%r9d, %r9d
	movq	%rbx, %rcx
	movss	%xmm14, 48(%rsp)
	movl	$7, %r8d
	movl	$2, %edx
	movss	%xmm13, 40(%rsp)
	movss	%xmm7, 32(%rsp)
	call	FuzzAddMF
.LVL15:
	.loc 1 62 0
	movss	%xmm6, 56(%rsp)
	xorl	%r9d, %r9d
	movq	%rbx, %rcx
	movss	%xmm12, 48(%rsp)
	movl	$0x40400000, 32(%rsp)
	movl	$8, %r8d
	movss	%xmm11, 40(%rsp)
	movl	$2, %edx
	call	FuzzAddMF
.LVL16:
	.loc 1 63 0
	movss	%xmm6, 56(%rsp)
	movq	%rbx, %rcx
	movl	$0x41000000, 48(%rsp)
	movss	%xmm6, 40(%rsp)
	movl	$0xc1000000, 32(%rsp)
	xorl	%r9d, %r9d
	movl	$9, %r8d
	movl	$3, %edx
	call	FuzzAddMF
.LVL17:
	.loc 1 64 0
	movss	%xmm6, 56(%rsp)
	xorl	%r9d, %r9d
	movq	%rbx, %rcx
	movss	%xmm11, 32(%rsp)
	movl	$0x41700000, 48(%rsp)
	movl	$0x41200000, 40(%rsp)
	movl	$10, %r8d
	movl	$3, %edx
	call	FuzzAddMF
.LVL18:
	.loc 1 65 0
	movss	%xmm6, 56(%rsp)
	xorl	%r9d, %r9d
	movq	%rbx, %rcx
	movl	$0x41e00000, 48(%rsp)
	movl	$0x41a00000, 40(%rsp)
	movl	$11, %r8d
	movl	$0x41400000, 32(%rsp)
	movl	$3, %edx
	call	FuzzAddMF
.LVL19:
	.loc 1 67 0
	movss	.LC25(%rip), %xmm14
	xorl	%r9d, %r9d
	movss	%xmm6, 56(%rsp)
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movss	%xmm10, 48(%rsp)
	movq	%rsi, %rcx
	movss	%xmm6, 40(%rsp)
	movss	%xmm14, 32(%rsp)
	call	FuzzAddMF
.LVL20:
	.loc 1 68 0
	movss	.LC26(%rip), %xmm13
	xorl	%r9d, %r9d
	movss	%xmm6, 56(%rsp)
	xorl	%edx, %edx
	movq	%rsi, %rcx
	movss	%xmm13, 48(%rsp)
	movl	$1, %r8d
	movss	%xmm9, 40(%rsp)
	movss	%xmm8, 32(%rsp)
	call	FuzzAddMF
.LVL21:
	.loc 1 69 0
	movss	.LC27(%rip), %xmm12
	xorl	%r9d, %r9d
	movss	.LC28(%rip), %xmm11
	xorl	%edx, %edx
	movss	%xmm6, 56(%rsp)
	movq	%rsi, %rcx
	movl	$2, %r8d
	movss	%xmm12, 48(%rsp)
	movss	%xmm7, 40(%rsp)
	movss	%xmm11, 32(%rsp)
	call	FuzzAddMF
.LVL22:
	.loc 1 70 0
	movss	%xmm6, 56(%rsp)
	xorl	%r9d, %r9d
	movq	%rsi, %rcx
	movss	%xmm10, 48(%rsp)
	movl	$3, %r8d
	movl	$1, %edx
	movss	%xmm6, 40(%rsp)
	movss	%xmm14, 32(%rsp)
	call	FuzzAddMF
.LVL23:
	.loc 1 71 0
	movss	%xmm6, 56(%rsp)
	xorl	%r9d, %r9d
	movq	%rsi, %rcx
	movss	%xmm13, 48(%rsp)
	movl	$4, %r8d
	movl	$1, %edx
	movss	%xmm9, 40(%rsp)
	movss	%xmm8, 32(%rsp)
	call	FuzzAddMF
.LVL24:
	.loc 1 72 0
	movss	%xmm6, 56(%rsp)
	xorl	%r9d, %r9d
	movq	%rsi, %rcx
	movss	%xmm12, 48(%rsp)
	movl	$5, %r8d
	movl	$1, %edx
	movss	%xmm7, 40(%rsp)
	movss	%xmm11, 32(%rsp)
	call	FuzzAddMF
.LVL25:
	.loc 1 75 0
	movq	.refptr.FuzzMax(%rip), %rax
	movq	%rbx, 72(%rsp)
	leaq	flexnav(%rip), %rbx
	leaq	FuzzMin(%rip), %r9
	xorl	%edx, %edx
	movl	$100, %r8d
	movq	%rbx, %rcx
	movl	$6, 96(%rsp)
	movq	%rsi, 88(%rsp)
	movq	%rax, 32(%rsp)
	movl	$12, 80(%rsp)
	movl	$2, 64(%rsp)
	movq	%rbp, 56(%rsp)
	movl	$4, 48(%rsp)
	movq	%rdi, 40(%rsp)
	call	FuzzFisSetup
.LVL26:
	.loc 1 83 0
	movq	%rbx, %rcx
	.loc 1 78 0
	movl	$0x3ea9fbe7, 8+flexnav_inputs(%rip)
	.loc 1 79 0
	movl	$0x3fc3d70a, 20+flexnav_inputs(%rip)
	.loc 1 80 0
	movl	$0x40600000, 32+flexnav_inputs(%rip)
	.loc 1 81 0
	movl	$0x40cb851f, 44+flexnav_inputs(%rip)
	.loc 1 83 0
	call	FuzzFuzz
.LVL27:
	.loc 1 84 0
	leaq	flexnav_Rules(%rip), %rdx
	movl	$15, %r8d
	movq	%rbx, %rcx
	call	FuzzyIS
.LVL28:
	.loc 1 87 0
	movq	%rbx, %rcx
	call	FuzzDeFuzz
.LVL29:
	.loc 1 90 0
	pxor	%xmm1, %xmm1
	leaq	.LC33(%rip), %rcx
	pxor	%xmm0, %xmm0
	cvtss2sd	20+flexnav_outputs(%rip), %xmm1
	cvtss2sd	8+flexnav_outputs(%rip), %xmm0
	movapd	%xmm1, %xmm2
	movq	%xmm1, %r8
	movq	%xmm0, %rdx
	movapd	%xmm0, %xmm1
	call	printf
	nop
.LVL30:
	.loc 1 93 0
	movaps	112(%rsp), %xmm6
	xorl	%eax, %eax
	movaps	128(%rsp), %xmm7
	movaps	144(%rsp), %xmm8
	movaps	160(%rsp), %xmm9
	movaps	176(%rsp), %xmm10
	movaps	192(%rsp), %xmm11
	movaps	208(%rsp), %xmm12
	movaps	224(%rsp), %xmm13
	movaps	240(%rsp), %xmm14
	movaps	256(%rsp), %xmm15
	addq	$280, %rsp
	.cfi_restore 32
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_restore 23
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 32
	popq	%rsi
	.cfi_restore 4
	.cfi_def_cfa_offset 24
	popq	%rdi
	.cfi_restore 5
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE7:
	.seh_endproc
	.section	.text.unlikely,"x"
.LCOLDE34:
	.section	.text.startup,"x"
.LHOTE34:
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
	.comm	MFout, 240, 6
	.comm	MFin, 480, 6
	.comm	flexnav_outputs, 24, 4
	.comm	flexnav_inputs, 48, 5
	.comm	flexnav, 61, 5
	.section .rdata,"dr"
	.align 4
.LC0:
	.long	1056964608
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
.LC7:
	.long	1053609165
	.align 4
.LC12:
	.long	1073741824
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
	.text
.Letext0:
	.section	.text.unlikely,"x"
.Letext_cold0:
	.file 2 "fuzzfis.h"
	.file 3 "/usr/include/stdio.h"
	.section	.debug_info,"dr"
.Ldebug_info0:
	.long	0xf42
	.word	0x4
	.secrel32	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.ascii "GNU C 4.9.3 -mtune=generic -march=x86-64 -g -O3\0"
	.byte	0x1
	.ascii "main.c\0"
	.ascii "/cygdrive/e/GDrive/Proyects/FuzzLib/fuzz_lib\0"
	.secrel32	.Ldebug_ranges0+0
	.quad	0
	.secrel32	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.ascii "float\0"
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
	.long	0x105
	.uleb128 0x3
	.byte	0x8
	.long	0x136
	.uleb128 0x4
	.long	0x105
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "long long unsigned int\0"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.ascii "double\0"
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.ascii "long double\0"
	.uleb128 0x5
	.ascii "fuzz_real_t\0"
	.byte	0x2
	.byte	0x30
	.long	0x81
	.uleb128 0x6
	.byte	0x4
	.byte	0x2
	.byte	0x31
	.long	0x1f5
	.uleb128 0x7
	.ascii "trimf\0"
	.sleb128 0
	.uleb128 0x7
	.ascii "trapmf\0"
	.sleb128 1
	.uleb128 0x7
	.ascii "gbellmf\0"
	.sleb128 2
	.uleb128 0x7
	.ascii "gaussmf\0"
	.sleb128 3
	.uleb128 0x7
	.ascii "gauss2mf\0"
	.sleb128 4
	.uleb128 0x7
	.ascii "sigmf\0"
	.sleb128 5
	.uleb128 0x7
	.ascii "dsigmf\0"
	.sleb128 6
	.uleb128 0x7
	.ascii "psigmf\0"
	.sleb128 7
	.uleb128 0x7
	.ascii "pimf\0"
	.sleb128 8
	.uleb128 0x7
	.ascii "smf\0"
	.sleb128 9
	.uleb128 0x7
	.ascii "zmf\0"
	.sleb128 10
	.uleb128 0x7
	.ascii "singletonmf\0"
	.sleb128 11
	.byte	0
	.uleb128 0x5
	.ascii "fuzz_mf_t\0"
	.byte	0x2
	.byte	0x31
	.long	0x181
	.uleb128 0x6
	.byte	0x4
	.byte	0x2
	.byte	0x32
	.long	0x222
	.uleb128 0x7
	.ascii "Mamdani\0"
	.sleb128 0
	.uleb128 0x7
	.ascii "Sugeno\0"
	.sleb128 1
	.byte	0
	.uleb128 0x5
	.ascii "fuzz_fis_type_t\0"
	.byte	0x2
	.byte	0x32
	.long	0x206
	.uleb128 0x5
	.ascii "SugenoFcn\0"
	.byte	0x2
	.byte	0x38
	.long	0x24a
	.uleb128 0x3
	.byte	0x8
	.long	0x250
	.uleb128 0x8
	.long	0x16e
	.long	0x25f
	.uleb128 0x9
	.long	0x25f
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x16e
	.uleb128 0x5
	.ascii "FuzzMethod\0"
	.byte	0x2
	.byte	0x39
	.long	0x277
	.uleb128 0x3
	.byte	0x8
	.long	0x27d
	.uleb128 0x8
	.long	0x16e
	.long	0x291
	.uleb128 0x9
	.long	0x16e
	.uleb128 0x9
	.long	0x16e
	.byte	0
	.uleb128 0xa
	.byte	0xc
	.byte	0x2
	.byte	0x3b
	.long	0x2c2
	.uleb128 0xb
	.ascii "xmin\0"
	.byte	0x2
	.byte	0x3c
	.long	0x16e
	.byte	0
	.uleb128 0xb
	.ascii "xmax\0"
	.byte	0x2
	.byte	0x3c
	.long	0x16e
	.byte	0x4
	.uleb128 0xb
	.ascii "value\0"
	.byte	0x2
	.byte	0x3d
	.long	0x16e
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.ascii "FuzzIO_t\0"
	.byte	0x2
	.byte	0x3e
	.long	0x291
	.uleb128 0xa
	.byte	0x28
	.byte	0x2
	.byte	0x43
	.long	0x32e
	.uleb128 0xb
	.ascii "ioindex\0"
	.byte	0x2
	.byte	0x44
	.long	0x99
	.byte	0
	.uleb128 0xb
	.ascii "tag\0"
	.byte	0x2
	.byte	0x45
	.long	0x99
	.byte	0x1
	.uleb128 0xb
	.ascii "shape\0"
	.byte	0x2
	.byte	0x46
	.long	0x1f5
	.byte	0x4
	.uleb128 0xb
	.ascii "g\0"
	.byte	0x2
	.byte	0x47
	.long	0x239
	.byte	0x8
	.uleb128 0xb
	.ascii "points\0"
	.byte	0x2
	.byte	0x48
	.long	0x32e
	.byte	0x10
	.uleb128 0xb
	.ascii "fuzzval\0"
	.byte	0x2
	.byte	0x49
	.long	0x16e
	.byte	0x20
	.byte	0
	.uleb128 0xc
	.long	0x16e
	.long	0x33e
	.uleb128 0xd
	.long	0x11e
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.ascii "FuzzMF_t\0"
	.byte	0x2
	.byte	0x4a
	.long	0x2d2
	.uleb128 0xa
	.byte	0x3d
	.byte	0x2
	.byte	0x4d
	.long	0x42c
	.uleb128 0xb
	.ascii "type\0"
	.byte	0x2
	.byte	0x4e
	.long	0x222
	.byte	0
	.uleb128 0xb
	.ascii "input\0"
	.byte	0x2
	.byte	0x4f
	.long	0x42c
	.byte	0x4
	.uleb128 0xb
	.ascii "output\0"
	.byte	0x2
	.byte	0x50
	.long	0x42c
	.byte	0xc
	.uleb128 0xb
	.ascii "inputmf\0"
	.byte	0x2
	.byte	0x51
	.long	0x432
	.byte	0x14
	.uleb128 0xb
	.ascii "outputmf\0"
	.byte	0x2
	.byte	0x52
	.long	0x432
	.byte	0x1c
	.uleb128 0xb
	.ascii "rule_cols\0"
	.byte	0x2
	.byte	0x53
	.long	0x99
	.byte	0x24
	.uleb128 0xb
	.ascii "ninputs\0"
	.byte	0x2
	.byte	0x54
	.long	0x99
	.byte	0x25
	.uleb128 0xb
	.ascii "noutputs\0"
	.byte	0x2
	.byte	0x55
	.long	0x99
	.byte	0x26
	.uleb128 0xb
	.ascii "nmfinputs\0"
	.byte	0x2
	.byte	0x56
	.long	0x99
	.byte	0x27
	.uleb128 0xb
	.ascii "nmfoutputs\0"
	.byte	0x2
	.byte	0x57
	.long	0x99
	.byte	0x28
	.uleb128 0xb
	.ascii "evalpoints\0"
	.byte	0x2
	.byte	0x58
	.long	0xd4
	.byte	0x29
	.uleb128 0xb
	.ascii "FuzzAND\0"
	.byte	0x2
	.byte	0x59
	.long	0x265
	.byte	0x2d
	.uleb128 0xb
	.ascii "FuzzOR\0"
	.byte	0x2
	.byte	0x59
	.long	0x265
	.byte	0x35
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2c2
	.uleb128 0x3
	.byte	0x8
	.long	0x33e
	.uleb128 0x5
	.ascii "FuzzFIS_t\0"
	.byte	0x2
	.byte	0x5a
	.long	0x34e
	.uleb128 0x6
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.long	0x468
	.uleb128 0x7
	.ascii "wt\0"
	.sleb128 0
	.uleb128 0x7
	.ascii "dax\0"
	.sleb128 1
	.uleb128 0x7
	.ascii "day\0"
	.sleb128 2
	.uleb128 0x7
	.ascii "ae\0"
	.sleb128 3
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.long	0x481
	.uleb128 0x7
	.ascii "phit\0"
	.sleb128 0
	.uleb128 0x7
	.ascii "thetat\0"
	.sleb128 1
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.long	0x4f5
	.uleb128 0x7
	.ascii "wtSLOW\0"
	.sleb128 0
	.uleb128 0x7
	.ascii "wtMED\0"
	.sleb128 1
	.uleb128 0x7
	.ascii "wtFAST\0"
	.sleb128 2
	.uleb128 0x7
	.ascii "daxLOW\0"
	.sleb128 3
	.uleb128 0x7
	.ascii "daxMED\0"
	.sleb128 4
	.uleb128 0x7
	.ascii "daxHIGH\0"
	.sleb128 5
	.uleb128 0x7
	.ascii "dayLOW\0"
	.sleb128 6
	.uleb128 0x7
	.ascii "dayMED\0"
	.sleb128 7
	.uleb128 0x7
	.ascii "dayHIGH\0"
	.sleb128 8
	.uleb128 0x7
	.ascii "aeLOW\0"
	.sleb128 9
	.uleb128 0x7
	.ascii "aeMED\0"
	.sleb128 10
	.uleb128 0x7
	.ascii "aeHIGH\0"
	.sleb128 11
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.long	0x548
	.uleb128 0x7
	.ascii "phitGYRO\0"
	.sleb128 0
	.uleb128 0x7
	.ascii "phitBOTH\0"
	.sleb128 1
	.uleb128 0x7
	.ascii "phitACCEL\0"
	.sleb128 2
	.uleb128 0x7
	.ascii "thetatGYRO\0"
	.sleb128 3
	.uleb128 0x7
	.ascii "thetatBOTH\0"
	.sleb128 4
	.uleb128 0x7
	.ascii "thetatACCEL\0"
	.sleb128 5
	.byte	0
	.uleb128 0xe
	.ascii "main\0"
	.byte	0x1
	.byte	0x2d
	.long	0xcd
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0xd12
	.uleb128 0xf
	.ascii "argc\0"
	.byte	0x1
	.byte	0x2d
	.long	0xcd
	.secrel32	.LLST0
	.uleb128 0xf
	.ascii "argv\0"
	.byte	0x1
	.byte	0x2d
	.long	0xd12
	.secrel32	.LLST1
	.uleb128 0x10
	.quad	.LVL2
	.long	0xe14
	.long	0x5bb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x63
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x81
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x8
	.byte	0xf4
	.uleb128 0x81
	.byte	0x4
	.long	0x3f000000
	.byte	0
	.uleb128 0x10
	.quad	.LVL3
	.long	0xe14
	.long	0x5ec
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x63
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x81
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x8
	.byte	0xf4
	.uleb128 0x81
	.byte	0x4
	.long	0x40a00000
	.byte	0
	.uleb128 0x10
	.quad	.LVL4
	.long	0xe14
	.long	0x61d
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x63
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x81
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x8
	.byte	0xf4
	.uleb128 0x81
	.byte	0x4
	.long	0x40a00000
	.byte	0
	.uleb128 0x10
	.quad	.LVL5
	.long	0xe14
	.long	0x64e
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x63
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x81
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x8
	.byte	0xf4
	.uleb128 0x81
	.byte	0x4
	.long	0x41a00000
	.byte	0
	.uleb128 0x10
	.quad	.LVL6
	.long	0xe14
	.long	0x67f
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x63
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x81
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x8
	.byte	0xf4
	.uleb128 0x81
	.byte	0x4
	.long	0x3f800000
	.byte	0
	.uleb128 0x10
	.quad	.LVL7
	.long	0xe14
	.long	0x6b0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x63
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x81
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x8
	.byte	0xf4
	.uleb128 0x81
	.byte	0x4
	.long	0x3f800000
	.byte	0
	.uleb128 0x10
	.quad	.LVL8
	.long	0xe3a
	.long	0x6ff
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 32
	.uleb128 0x8
	.byte	0xf4
	.uleb128 0x81
	.byte	0x4
	.long	0xbe4ccccd
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 40
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x81
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 48
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x81
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 56
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x81
	.byte	0
	.uleb128 0x10
	.quad	.LVL9
	.long	0xe3a
	.long	0x752
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 32
	.uleb128 0x8
	.byte	0xf4
	.uleb128 0x81
	.byte	0x4
	.long	0x3dcccccd
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 40
	.uleb128 0x8
	.byte	0xf4
	.uleb128 0x81
	.byte	0x4
	.long	0x3e800000
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 48
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x1b
	.uleb128 0x81
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 56
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x81
	.byte	0
	.uleb128 0x10
	.quad	.LVL10
	.long	0xe3a
	.long	0x7a5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 32
	.uleb128 0x8
	.byte	0xf4
	.uleb128 0x81
	.byte	0x4
	.long	0x3e99999a
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 40
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x81
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 48
	.uleb128 0x8
	.byte	0xf4
	.uleb128 0x81
	.byte	0x4
	.long	0x3f333333
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 56
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x81
	.byte	0
	.uleb128 0x10
	.quad	.LVL11
	.long	0xe3a
	.long	0x7f4
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 32
	.uleb128 0x8
	.byte	0xf4
	.uleb128 0x81
	.byte	0x4
	.long	0xbf800000
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 40
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x81
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 48
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x20
	.uleb128 0x81
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 56
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x81
	.byte	0
	.uleb128 0x10
	.quad	.LVL12
	.long	0xe3a
	.long	0x83f
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 32
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x81
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 40
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x1e
	.uleb128 0x81
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 48
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x1f
	.uleb128 0x81
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 56
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x81
	.byte	0
	.uleb128 0x10
	.quad	.LVL13
	.long	0xe3a
	.long	0x88e
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 32
	.uleb128 0x8
	.byte	0xf4
	.uleb128 0x81
	.byte	0x4
	.long	0x40400000
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 40
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x1c
	.uleb128 0x81
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 48
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x1d
	.uleb128 0x81
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 56
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x81
	.byte	0
	.uleb128 0x10
	.quad	.LVL14
	.long	0xe3a
	.long	0x8dd
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x1
	.byte	0x36
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 32
	.uleb128 0x8
	.byte	0xf4
	.uleb128 0x81
	.byte	0x4
	.long	0xc0000000
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 40
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x81
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 48
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x20
	.uleb128 0x81
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 56
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x81
	.byte	0
	.uleb128 0x10
	.quad	.LVL15
	.long	0xe3a
	.long	0x928
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 32
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x81
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 40
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x1e
	.uleb128 0x81
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 48
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x1f
	.uleb128 0x81
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 56
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x81
	.byte	0
	.uleb128 0x10
	.quad	.LVL16
	.long	0xe3a
	.long	0x977
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 32
	.uleb128 0x8
	.byte	0xf4
	.uleb128 0x81
	.byte	0x4
	.long	0x40400000
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 40
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x1c
	.uleb128 0x81
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 48
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x1d
	.uleb128 0x81
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 56
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x81
	.byte	0
	.uleb128 0x10
	.quad	.LVL17
	.long	0xe3a
	.long	0x9ca
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x1
	.byte	0x39
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 32
	.uleb128 0x8
	.byte	0xf4
	.uleb128 0x81
	.byte	0x4
	.long	0xc1000000
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 40
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x81
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 48
	.uleb128 0x8
	.byte	0xf4
	.uleb128 0x81
	.byte	0x4
	.long	0x41000000
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 56
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x81
	.byte	0
	.uleb128 0x10
	.quad	.LVL18
	.long	0xe3a
	.long	0xa1d
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x1
	.byte	0x3a
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 32
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x1c
	.uleb128 0x81
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 40
	.uleb128 0x8
	.byte	0xf4
	.uleb128 0x81
	.byte	0x4
	.long	0x41200000
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 48
	.uleb128 0x8
	.byte	0xf4
	.uleb128 0x81
	.byte	0x4
	.long	0x41700000
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 56
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x81
	.byte	0
	.uleb128 0x10
	.quad	.LVL19
	.long	0xe3a
	.long	0xa74
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x1
	.byte	0x3b
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 32
	.uleb128 0x8
	.byte	0xf4
	.uleb128 0x81
	.byte	0x4
	.long	0x41400000
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 40
	.uleb128 0x8
	.byte	0xf4
	.uleb128 0x81
	.byte	0x4
	.long	0x41a00000
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 48
	.uleb128 0x8
	.byte	0xf4
	.uleb128 0x81
	.byte	0x4
	.long	0x41e00000
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 56
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x81
	.byte	0
	.uleb128 0x10
	.quad	.LVL20
	.long	0xe3a
	.long	0xabf
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 32
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x1f
	.uleb128 0x81
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 40
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x81
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 48
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x1b
	.uleb128 0x81
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 56
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x81
	.byte	0
	.uleb128 0x10
	.quad	.LVL21
	.long	0xe3a
	.long	0xb0a
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 32
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x81
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 40
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x81
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 48
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x1e
	.uleb128 0x81
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 56
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x81
	.byte	0
	.uleb128 0x10
	.quad	.LVL22
	.long	0xe3a
	.long	0xb55
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 32
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x1c
	.uleb128 0x81
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 40
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x81
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 48
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x1d
	.uleb128 0x81
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 56
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x81
	.byte	0
	.uleb128 0x10
	.quad	.LVL23
	.long	0xe3a
	.long	0xba0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 32
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x1f
	.uleb128 0x81
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 40
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x81
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 48
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x1b
	.uleb128 0x81
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 56
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x81
	.byte	0
	.uleb128 0x10
	.quad	.LVL24
	.long	0xe3a
	.long	0xbeb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 32
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x81
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 40
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x81
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 48
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x1e
	.uleb128 0x81
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 56
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x81
	.byte	0
	.uleb128 0x10
	.quad	.LVL25
	.long	0xe3a
	.long	0xc36
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 32
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x1c
	.uleb128 0x81
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 40
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x81
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 48
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x1d
	.uleb128 0x81
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 56
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x81
	.byte	0
	.uleb128 0x10
	.quad	.LVL26
	.long	0xe74
	.long	0xc9c
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 40
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 48
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x77
	.sleb128 56
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x3
	.byte	0x77
	.sleb128 64
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x11
	.uleb128 0x3
	.byte	0x77
	.sleb128 72
	.uleb128 0x9
	.byte	0x3
	.quad	MFin
	.uleb128 0x11
	.uleb128 0x3
	.byte	0x77
	.sleb128 80
	.uleb128 0x1
	.byte	0x3c
	.uleb128 0x11
	.uleb128 0x3
	.byte	0x77
	.sleb128 88
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x3
	.byte	0x77
	.sleb128 96
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x10
	.quad	.LVL27
	.long	0xed0
	.long	0xcb4
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.quad	.LVL28
	.long	0xee6
	.long	0xcde
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	flexnav_Rules
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x1
	.byte	0x3f
	.byte	0
	.uleb128 0x10
	.quad	.LVL29
	.long	0xf14
	.long	0xcf6
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.quad	.LVL30
	.long	0xf30
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC33
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x12a
	.uleb128 0x14
	.ascii "flexnav\0"
	.byte	0x1
	.byte	0xd
	.long	0x438
	.uleb128 0x9
	.byte	0x3
	.quad	flexnav
	.uleb128 0xc
	.long	0x2c2
	.long	0xd41
	.uleb128 0xd
	.long	0x11e
	.byte	0x3
	.byte	0
	.uleb128 0x14
	.ascii "flexnav_inputs\0"
	.byte	0x1
	.byte	0xf
	.long	0xd31
	.uleb128 0x9
	.byte	0x3
	.quad	flexnav_inputs
	.uleb128 0xc
	.long	0x2c2
	.long	0xd71
	.uleb128 0xd
	.long	0x11e
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.ascii "flexnav_outputs\0"
	.byte	0x1
	.byte	0x10
	.long	0xd61
	.uleb128 0x9
	.byte	0x3
	.quad	flexnav_outputs
	.uleb128 0xc
	.long	0x33e
	.long	0xda2
	.uleb128 0xd
	.long	0x11e
	.byte	0xb
	.byte	0
	.uleb128 0x14
	.ascii "MFin\0"
	.byte	0x1
	.byte	0x12
	.long	0xd92
	.uleb128 0x9
	.byte	0x3
	.quad	MFin
	.uleb128 0xc
	.long	0x33e
	.long	0xdc8
	.uleb128 0xd
	.long	0x11e
	.byte	0x5
	.byte	0
	.uleb128 0x14
	.ascii "MFout\0"
	.byte	0x1
	.byte	0x13
	.long	0xdb8
	.uleb128 0x9
	.byte	0x3
	.quad	MFout
	.uleb128 0xc
	.long	0xaa
	.long	0xdf5
	.uleb128 0xd
	.long	0x11e
	.byte	0xe
	.uleb128 0xd
	.long	0x11e
	.byte	0x10
	.byte	0
	.uleb128 0x14
	.ascii "flexnav_Rules\0"
	.byte	0x1
	.byte	0x1b
	.long	0xddf
	.uleb128 0x9
	.byte	0x3
	.quad	flexnav_Rules
	.uleb128 0x15
	.ascii "FuzzAddIO\0"
	.byte	0x2
	.byte	0x6b
	.long	0xe3a
	.uleb128 0x9
	.long	0x42c
	.uleb128 0x9
	.long	0x99
	.uleb128 0x9
	.long	0x16e
	.uleb128 0x9
	.long	0x16e
	.byte	0
	.uleb128 0x15
	.ascii "FuzzAddMF\0"
	.byte	0x2
	.byte	0x6c
	.long	0xe74
	.uleb128 0x9
	.long	0x432
	.uleb128 0x9
	.long	0x99
	.uleb128 0x9
	.long	0x99
	.uleb128 0x9
	.long	0x1f5
	.uleb128 0x9
	.long	0x16e
	.uleb128 0x9
	.long	0x16e
	.uleb128 0x9
	.long	0x16e
	.uleb128 0x9
	.long	0x16e
	.byte	0
	.uleb128 0x15
	.ascii "FuzzFisSetup\0"
	.byte	0x2
	.byte	0x63
	.long	0xeca
	.uleb128 0x9
	.long	0xeca
	.uleb128 0x9
	.long	0x222
	.uleb128 0x9
	.long	0xd4
	.uleb128 0x9
	.long	0x265
	.uleb128 0x9
	.long	0x265
	.uleb128 0x9
	.long	0x42c
	.uleb128 0x9
	.long	0x99
	.uleb128 0x9
	.long	0x42c
	.uleb128 0x9
	.long	0x99
	.uleb128 0x9
	.long	0x432
	.uleb128 0x9
	.long	0x99
	.uleb128 0x9
	.long	0x432
	.uleb128 0x9
	.long	0x99
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x438
	.uleb128 0x15
	.ascii "FuzzFuzz\0"
	.byte	0x2
	.byte	0x68
	.long	0xee6
	.uleb128 0x9
	.long	0xeca
	.byte	0
	.uleb128 0x16
	.ascii "FuzzyIS\0"
	.byte	0x2
	.byte	0x6a
	.long	0xcd
	.long	0xf09
	.uleb128 0x9
	.long	0xeca
	.uleb128 0x9
	.long	0xf09
	.uleb128 0x9
	.long	0x99
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xf0f
	.uleb128 0x4
	.long	0xaa
	.uleb128 0x16
	.ascii "FuzzDeFuzz\0"
	.byte	0x2
	.byte	0x72
	.long	0xcd
	.long	0xf30
	.uleb128 0x9
	.long	0xeca
	.byte	0
	.uleb128 0x17
	.ascii "printf\0"
	.byte	0x3
	.byte	0xb5
	.long	0xcd
	.uleb128 0x9
	.long	0x130
	.uleb128 0x18
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
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"dr"
.Ldebug_loc0:
.LLST0:
	.quad	.LVL0
	.quad	.LVL1-1
	.word	0x1
	.byte	0x52
	.quad	.LVL1-1
	.quad	.LFE7
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL0
	.quad	.LVL1-1
	.word	0x1
	.byte	0x51
	.quad	.LVL1-1
	.quad	.LFE7
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
	.section	.debug_aranges,"dr"
	.long	0x2c
	.word	0x2
	.secrel32	.Ldebug_info0
	.byte	0x8
	.byte	0
	.word	0
	.word	0
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.quad	0
	.quad	0
	.section	.debug_ranges,"dr"
.Ldebug_ranges0:
	.quad	.LFB7
	.quad	.LFE7
	.quad	0
	.quad	0
	.section	.debug_line,"dr"
.Ldebug_line0:
	.section	.debug_str,"dr"
	.ident	"GCC: (GNU) 4.9.3"
	.def	FuzzAddIO;	.scl	2;	.type	32;	.endef
	.def	FuzzAddMF;	.scl	2;	.type	32;	.endef
	.def	FuzzMin;	.scl	2;	.type	32;	.endef
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
