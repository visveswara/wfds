	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15, 4
	.globl	__ZN5ecl64C2Ev          ## -- Begin function _ZN5ecl64C2Ev
	.p2align	4, 0x90
__ZN5ecl64C2Ev:                         ## @_ZN5ecl64C2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	$0, (%rax)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5ecl64C1Ev          ## -- Begin function _ZN5ecl64C1Ev
	.p2align	4, 0x90
__ZN5ecl64C1Ev:                         ## @_ZN5ecl64C1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZN5ecl64C2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5ecl64D2Ev          ## -- Begin function _ZN5ecl64D2Ev
	.p2align	4, 0x90
__ZN5ecl64D2Ev:                         ## @_ZN5ecl64D2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5ecl64D1Ev          ## -- Begin function _ZN5ecl64D1Ev
	.p2align	4, 0x90
__ZN5ecl64D1Ev:                         ## @_ZN5ecl64D1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZN5ecl64D2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5ecl647combineEyy   ## -- Begin function _ZN5ecl647combineEyy
	.p2align	4, 0x90
__ZN5ecl647combineEyy:                  ## @_ZN5ecl647combineEyy
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, -8(%rbp)
	movq	%rcx, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5ecl644highEo       ## -- Begin function _ZN5ecl644highEo
	.p2align	4, 0x90
__ZN5ecl644highEo:                      ## @_ZN5ecl644highEo
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rsi, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rdi, -24(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5ecl643lowEo        ## -- Begin function _ZN5ecl643lowEo
	.p2align	4, 0x90
__ZN5ecl643lowEo:                       ## @_ZN5ecl643lowEo
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rsi, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rdi, -24(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%rax, -48(%rbp)
	callq	__ZNSt3__114numeric_limitsIyE3maxEv
	movq	%rax, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	andq	%rcx, %rax
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__114numeric_limitsIyE3maxEv
__ZNSt3__114numeric_limitsIyE3maxEv:    ## @_ZNSt3__114numeric_limitsIyE3maxEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__123__libcpp_numeric_limitsIyLb1EE3maxEv
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5ecl643valEo        ## -- Begin function _ZN5ecl643valEo
	.p2align	4, 0x90
__ZN5ecl643valEo:                       ## @_ZN5ecl643valEo
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rsi, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rdi, -24(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, -56(%rbp)
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rdx
	callq	__ZN5ecl644highEo
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5ecl643seqEo        ## -- Begin function _ZN5ecl643seqEo
	.p2align	4, 0x90
__ZN5ecl643seqEo:                       ## @_ZN5ecl643seqEo
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rsi, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rdi, -24(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, -56(%rbp)
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rdx
	callq	__ZN5ecl643lowEo
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5ecl646activeEo     ## -- Begin function _ZN5ecl646activeEo
	.p2align	4, 0x90
__ZN5ecl646activeEo:                    ## @_ZN5ecl646activeEo
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rsi, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rdi, -24(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%rax, -48(%rbp)
	movb	-48(%rbp), %r8b
	andb	$1, %r8b
	andb	$1, %r8b
	movzbl	%r8b, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5ecl643CLLEv        ## -- Begin function _ZN5ecl643CLLEv
	.p2align	4, 0x90
__ZN5ecl643CLLEv:                       ## @_ZN5ecl643CLLEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rcx, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5ecl643CVLEo        ## -- Begin function _ZN5ecl643CVLEo
	.p2align	4, 0x90
__ZN5ecl643CVLEo:                       ## @_ZN5ecl643CVLEo
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rsi, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rdi, -24(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movaps	(%rax), %xmm0
	movaps	-48(%rbp), %xmm1
	pcmpeqb	%xmm1, %xmm0
	pmovmskb	%xmm0, %r8d
	subl	$65535, %r8d            ## imm = 0xFFFF
	sete	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5ecl643CSCEoyb      ## -- Begin function _ZN5ecl643CSCEoyb
	.p2align	4, 0x90
__ZN5ecl643CSCEoyb:                     ## @_ZN5ecl643CSCEoyb
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$168, %rsp
	.cfi_offset %rbx, -24
                                        ## kill: def $r8b killed $r8b killed $r8d
	movq	%rsi, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdi, -40(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rax, -64(%rbp)
	movq	%rcx, -72(%rbp)
	andb	$1, %r8b
	movb	%r8b, -73(%rbp)
	movq	-40(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	-112(%rbp), %rsi
	movq	-104(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rax, -168(%rbp)        ## 8-byte Spill
	callq	__ZN5ecl643seqEo
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	andq	$1, %rax
	movb	-73(%rbp), %r8b
	andb	$1, %r8b
	movzbl	%r8b, %r9d
	movl	%r9d, %ecx
	cmpq	%rcx, %rax
	jne	LBB13_2
## %bb.1:
	movq	-88(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -120(%rbp)
	jmp	LBB13_3
LBB13_2:
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -120(%rbp)
LBB13_3:
	movq	-120(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-168(%rbp), %rdi        ## 8-byte Reload
	callq	__ZN5ecl647combineEyy
	movq	%rax, -160(%rbp)
	movq	%rdx, -152(%rbp)
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rcx
	movq	%rcx, -136(%rbp)
	movq	%rax, -144(%rbp)
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	-144(%rbp), %rbx
	movq	-136(%rbp), %rcx
	movq	-168(%rbp), %rsi        ## 8-byte Reload
	lock		cmpxchg16b	(%rsi)
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %r9d
	movq	%rax, -176(%rbp)        ## 8-byte Spill
	movl	%r9d, %eax
	addq	$168, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN10snapshot64C2Ei    ## -- Begin function _ZN10snapshot64C2Ei
	.p2align	4, 0x90
__ZN10snapshot64C2Ei:                   ## @_ZN10snapshot64C2Ei
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %ecx
	movl	%ecx, (%rax)
	movl	$0, 4(%rax)
	movslq	(%rax), %rdx
	movq	%rax, -40(%rbp)         ## 8-byte Spill
	movq	%rdx, %rax
	movl	$8, %edx
	mulq	%rdx
	seto	%r8b
	movq	$-1, %rdi
	cmovoq	%rdi, %rax
	movq	%rax, %rdi
	movb	%r8b, -41(%rbp)         ## 1-byte Spill
	callq	__Znam
	movq	-40(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, 8(%rdi)
	movslq	(%rdi), %rax
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	movl	$16, %r9d
	mulq	%r9
	seto	%r8b
	addq	$16, %rax
	setb	%r10b
	orb	%r10b, %r8b
	testb	$1, %r8b
	movq	$-1, %r9
	cmovneq	%r9, %rax
	movq	%rax, %rdi
	callq	__Znam
	movq	-56(%rbp), %rdi         ## 8-byte Reload
	movq	%rdi, 8(%rax)
	movq	%rax, %r9
	addq	$16, %r9
	cmpq	$0, %rdi
	movq	%rax, -64(%rbp)         ## 8-byte Spill
	movq	%r9, -72(%rbp)          ## 8-byte Spill
	je	LBB14_4
## %bb.1:
	movq	-56(%rbp), %rax         ## 8-byte Reload
	shlq	$4, %rax
	movq	-72(%rbp), %rcx         ## 8-byte Reload
	addq	%rax, %rcx
	movq	-72(%rbp), %rax         ## 8-byte Reload
	movq	%rcx, -80(%rbp)         ## 8-byte Spill
	movq	%rax, -88(%rbp)         ## 8-byte Spill
LBB14_2:                                ## =>This Inner Loop Header: Depth=1
Ltmp0:
	movq	-88(%rbp), %rax         ## 8-byte Reload
	movq	%rax, %rdi
	movq	%rax, -96(%rbp)         ## 8-byte Spill
	callq	__ZN5ecl64C1Ev
Ltmp1:
	jmp	LBB14_3
LBB14_3:                                ##   in Loop: Header=BB14_2 Depth=1
	movq	-96(%rbp), %rax         ## 8-byte Reload
	addq	$16, %rax
	movq	-80(%rbp), %rcx         ## 8-byte Reload
	cmpq	%rcx, %rax
	movq	%rax, -88(%rbp)         ## 8-byte Spill
	jne	LBB14_2
LBB14_4:
	movq	-40(%rbp), %rax         ## 8-byte Reload
	movq	-72(%rbp), %rcx         ## 8-byte Reload
	movq	%rcx, 16(%rax)
	movl	$0, -32(%rbp)
LBB14_5:                                ## =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	movq	-40(%rbp), %rcx         ## 8-byte Reload
	cmpl	(%rcx), %eax
	jge	LBB14_11
## %bb.6:                               ##   in Loop: Header=BB14_5 Depth=1
	movq	-40(%rbp), %rax         ## 8-byte Reload
	movq	8(%rax), %rcx
	movslq	-32(%rbp), %rdx
	movq	$0, (%rcx,%rdx,8)
## %bb.7:                               ##   in Loop: Header=BB14_5 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	LBB14_5
LBB14_8:
Ltmp2:
                                        ## kill: def $edx killed $edx killed $rdx
	movq	%rax, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	-72(%rbp), %rax         ## 8-byte Reload
	movq	-96(%rbp), %rcx         ## 8-byte Reload
	cmpq	%rcx, %rax
	movq	%rcx, -104(%rbp)        ## 8-byte Spill
	je	LBB14_10
LBB14_9:                                ## =>This Inner Loop Header: Depth=1
	movq	-104(%rbp), %rax        ## 8-byte Reload
	addq	$-16, %rax
	movq	%rax, %rdi
	movq	%rax, -112(%rbp)        ## 8-byte Spill
	callq	__ZN5ecl64D1Ev
	movq	-112(%rbp), %rax        ## 8-byte Reload
	movq	-72(%rbp), %rcx         ## 8-byte Reload
	cmpq	%rcx, %rax
	movq	%rax, -104(%rbp)        ## 8-byte Spill
	jne	LBB14_9
LBB14_10:
	movq	-64(%rbp), %rdi         ## 8-byte Reload
	callq	__ZdaPv
	jmp	LBB14_12
LBB14_11:
	addq	$112, %rsp
	popq	%rbp
	retq
LBB14_12:
	movq	-24(%rbp), %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table14:
Lexception0:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	255                     ## @TType Encoding = omit
	.byte	1                       ## Call site Encoding = uleb128
	.uleb128 Lcst_end0-Lcst_begin0
Lcst_begin0:
	.uleb128 Lfunc_begin0-Lfunc_begin0 ## >> Call Site 1 <<
	.uleb128 Ltmp0-Lfunc_begin0     ##   Call between Lfunc_begin0 and Ltmp0
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp0-Lfunc_begin0     ## >> Call Site 2 <<
	.uleb128 Ltmp1-Ltmp0            ##   Call between Ltmp0 and Ltmp1
	.uleb128 Ltmp2-Lfunc_begin0     ##     jumps to Ltmp2
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp1-Lfunc_begin0     ## >> Call Site 3 <<
	.uleb128 Lfunc_end0-Ltmp1       ##   Call between Ltmp1 and Lfunc_end0
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lcst_end0:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN10snapshot64C1Ei    ## -- Begin function _ZN10snapshot64C1Ei
	.p2align	4, 0x90
__ZN10snapshot64C1Ei:                   ## @_ZN10snapshot64C1Ei
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	__ZN10snapshot64C2Ei
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN10snapshot64D2Ev    ## -- Begin function _ZN10snapshot64D2Ev
	.p2align	4, 0x90
__ZN10snapshot64D2Ev:                   ## @_ZN10snapshot64D2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	cmpq	$0, %rcx
	movq	%rax, -16(%rbp)         ## 8-byte Spill
	movq	%rcx, -24(%rbp)         ## 8-byte Spill
	je	LBB16_2
## %bb.1:
	movq	-24(%rbp), %rax         ## 8-byte Reload
	movq	%rax, %rdi
	callq	__ZdaPv
LBB16_2:
	movq	-16(%rbp), %rax         ## 8-byte Reload
	movq	16(%rax), %rcx
	cmpq	$0, %rcx
	movq	%rcx, -32(%rbp)         ## 8-byte Spill
	je	LBB16_6
## %bb.3:
	movq	-32(%rbp), %rax         ## 8-byte Reload
	addq	$-16, %rax
	movq	-32(%rbp), %rcx         ## 8-byte Reload
	movq	-8(%rcx), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movq	-32(%rbp), %rdx         ## 8-byte Reload
	cmpq	%rcx, %rdx
	movq	%rax, -40(%rbp)         ## 8-byte Spill
	movq	%rcx, -48(%rbp)         ## 8-byte Spill
	je	LBB16_5
LBB16_4:                                ## =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax         ## 8-byte Reload
	addq	$-16, %rax
	movq	%rax, %rdi
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	callq	__ZN5ecl64D1Ev
	movq	-56(%rbp), %rax         ## 8-byte Reload
	movq	-32(%rbp), %rcx         ## 8-byte Reload
	cmpq	%rcx, %rax
	movq	%rax, -48(%rbp)         ## 8-byte Spill
	jne	LBB16_4
LBB16_5:
	movq	-40(%rbp), %rdi         ## 8-byte Reload
	callq	__ZdaPv
LBB16_6:
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN10snapshot64D1Ev    ## -- Begin function _ZN10snapshot64D1Ev
	.p2align	4, 0x90
__ZN10snapshot64D1Ev:                   ## @_ZN10snapshot64D1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZN10snapshot64D2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN10snapshot647refreshEi ## -- Begin function _ZN10snapshot647refreshEi
	.p2align	4, 0x90
__ZN10snapshot647refreshEi:             ## @_ZN10snapshot647refreshEi
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rcx
	movslq	-12(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movq	%rcx, %rdi
	movq	%rax, -88(%rbp)         ## 8-byte Spill
	callq	__ZN5ecl643CLLEv
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, -24(%rbp)
	movq	%rax, -32(%rbp)
	movq	$0, -56(%rbp)
	movb	$0, -57(%rbp)
	movq	-88(%rbp), %rax         ## 8-byte Reload
	movq	16(%rax), %rcx
	movslq	-12(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	-56(%rbp), %r8
	movb	-57(%rbp), %r9b
	movq	%rdi, -72(%rbp)
	movq	%rdx, -80(%rbp)
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rdx
	andb	$1, %r9b
	movq	%rcx, %rdi
	movq	%r8, %rcx
	movzbl	%r9b, %r8d
	callq	__ZN5ecl643CSCEoyb
	andb	$1, %al
	movzbl	%al, %eax
	addq	$96, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN10snapshot648transferEii ## -- Begin function _ZN10snapshot648transferEii
	.p2align	4, 0x90
__ZN10snapshot648transferEii:           ## @_ZN10snapshot648transferEii
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rcx
	movslq	-20(%rbp), %rdi
	shlq	$4, %rdi
	addq	%rdi, %rcx
	movq	%rcx, %rdi
	movq	%rax, -104(%rbp)        ## 8-byte Spill
	callq	__ZN5ecl643CLLEv
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	movq	%rax, -48(%rbp)
	movq	-104(%rbp), %rax        ## 8-byte Reload
	movq	8(%rax), %rcx
	movslq	-20(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movq	%rcx, -72(%rbp)
	movl	4(%rax), %esi
	cmpl	-24(%rbp), %esi
	jne	LBB19_2
## %bb.1:
	movq	$1, -80(%rbp)
	movq	-104(%rbp), %rax        ## 8-byte Reload
	movq	16(%rax), %rcx
	movslq	-20(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %r8
	testq	%r8, %r8
	setne	%r9b
	movq	%rsi, -88(%rbp)
	movq	%rdx, -96(%rbp)
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rdx
	movzbl	%r9b, %r10d
	andl	$1, %r10d
	movq	%rdi, -112(%rbp)        ## 8-byte Spill
	movq	%rcx, %rdi
	movq	-112(%rbp), %rcx        ## 8-byte Reload
	movl	%r10d, %r8d
	callq	__ZN5ecl643CSCEoyb
	andb	$1, %al
	movb	%al, -1(%rbp)
	jmp	LBB19_3
LBB19_2:
	movb	$1, -1(%rbp)
LBB19_3:
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$112, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN10snapshot645writeEiy ## -- Begin function _ZN10snapshot645writeEiy
	.p2align	4, 0x90
__ZN10snapshot645writeEiy:              ## @_ZN10snapshot645writeEiy
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	8(%rax), %rdx
	movslq	-12(%rbp), %rdi
	movq	%rcx, (%rdx,%rdi,8)
	movl	4(%rax), %esi
	movl	%esi, -28(%rbp)
	movl	-28(%rbp), %esi
	movq	%rax, -40(%rbp)         ## 8-byte Spill
	movl	%esi, %eax
	cltd
	movl	$2, %esi
	idivl	%esi
	cmpl	$1, %edx
	jne	LBB20_4
## %bb.1:
	movl	-12(%rbp), %esi
	movl	-28(%rbp), %edx
	movq	-40(%rbp), %rdi         ## 8-byte Reload
	callq	__ZN10snapshot648transferEii
	testb	$1, %al
	jne	LBB20_3
## %bb.2:
	movl	-12(%rbp), %esi
	movl	-28(%rbp), %edx
	movq	-40(%rbp), %rdi         ## 8-byte Reload
	callq	__ZN10snapshot648transferEii
LBB20_3:
	jmp	LBB20_4
LBB20_4:
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN10snapshot644scanEv ## -- Begin function _ZN10snapshot644scanEv
	.p2align	4, 0x90
__ZN10snapshot644scanEv:                ## @_ZN10snapshot644scanEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movslq	(%rax), %rcx
	movq	%rax, -104(%rbp)        ## 8-byte Spill
	movq	%rcx, %rax
	movl	$8, %ecx
	mulq	%rcx
	seto	%sil
	movq	$-1, %rcx
	cmovoq	%rcx, %rax
	movq	%rax, %rdi
	movb	%sil, -105(%rbp)        ## 1-byte Spill
	callq	__Znam
	movq	%rax, -16(%rbp)
	movl	$0, -20(%rbp)
LBB21_1:                                ## =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movq	-104(%rbp), %rcx        ## 8-byte Reload
	cmpl	(%rcx), %eax
	jge	LBB21_6
## %bb.2:                               ##   in Loop: Header=BB21_1 Depth=1
	movl	-20(%rbp), %esi
	movq	-104(%rbp), %rdi        ## 8-byte Reload
	callq	__ZN10snapshot647refreshEi
	testb	$1, %al
	jne	LBB21_4
## %bb.3:                               ##   in Loop: Header=BB21_1 Depth=1
	movl	-20(%rbp), %esi
	movq	-104(%rbp), %rdi        ## 8-byte Reload
	callq	__ZN10snapshot647refreshEi
LBB21_4:                                ##   in Loop: Header=BB21_1 Depth=1
	jmp	LBB21_5
LBB21_5:                                ##   in Loop: Header=BB21_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	LBB21_1
LBB21_6:
	movq	-104(%rbp), %rax        ## 8-byte Reload
	movl	4(%rax), %ecx
	movl	%ecx, -24(%rbp)
	movl	-24(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, 4(%rax)
	movl	$0, -28(%rbp)
LBB21_7:                                ## =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movq	-104(%rbp), %rcx        ## 8-byte Reload
	cmpl	(%rcx), %eax
	jge	LBB21_10
## %bb.8:                               ##   in Loop: Header=BB21_7 Depth=1
	movq	-104(%rbp), %rax        ## 8-byte Reload
	movq	8(%rax), %rcx
	movslq	-28(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movq	-16(%rbp), %rdx
	movslq	-28(%rbp), %rsi
	movq	%rcx, (%rdx,%rsi,8)
## %bb.9:                               ##   in Loop: Header=BB21_7 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB21_7
LBB21_10:
	movl	-24(%rbp), %eax
	addl	$2, %eax
	movq	-104(%rbp), %rcx        ## 8-byte Reload
	movl	%eax, 4(%rcx)
	movl	$0, -32(%rbp)
LBB21_11:                               ## =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	movq	-104(%rbp), %rcx        ## 8-byte Reload
	cmpl	(%rcx), %eax
	jge	LBB21_16
## %bb.12:                              ##   in Loop: Header=BB21_11 Depth=1
	movq	-104(%rbp), %rax        ## 8-byte Reload
	movq	16(%rax), %rcx
	movslq	-32(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movq	%rcx, %rdi
	callq	__ZN5ecl643CLLEv
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	movq	%rax, -48(%rbp)
	movq	-104(%rbp), %rax        ## 8-byte Reload
	movq	16(%rax), %rcx
	movslq	-32(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	%rsi, -72(%rbp)
	movq	%rdx, -80(%rbp)
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	%rcx, %rdi
	callq	__ZN5ecl646activeEo
	testb	$1, %al
	jne	LBB21_13
	jmp	LBB21_14
LBB21_13:                               ##   in Loop: Header=BB21_11 Depth=1
	movq	-104(%rbp), %rax        ## 8-byte Reload
	movq	16(%rax), %rcx
	movslq	-32(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	%rsi, -88(%rbp)
	movq	%rdx, -96(%rbp)
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rdx
	movq	%rcx, %rdi
	callq	__ZN5ecl643valEo
	movq	-16(%rbp), %rcx
	movslq	-32(%rbp), %rdx
	movq	%rax, (%rcx,%rdx,8)
LBB21_14:                               ##   in Loop: Header=BB21_11 Depth=1
	jmp	LBB21_15
LBB21_15:                               ##   in Loop: Header=BB21_11 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	LBB21_11
LBB21_16:
	movq	-16(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	$0, -4(%rbp)
	movl	$5, -8(%rbp)
	movl	$24, %edi
	callq	__Znwm
	movq	%rax, %rcx
	movq	%rax, %rdx
	movl	-8(%rbp), %esi
Ltmp3:
	movq	%rax, %rdi
	movq	%rcx, -56(%rbp)         ## 8-byte Spill
	movq	%rdx, -64(%rbp)         ## 8-byte Spill
	callq	__ZN10snapshot64C1Ei
Ltmp4:
	jmp	LBB22_1
LBB22_1:
	movq	-64(%rbp), %rax         ## 8-byte Reload
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	__ZN10snapshot644scanEv
	movq	%rax, -40(%rbp)
	leaq	L_.str(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	$0, -44(%rbp)
LBB22_2:                                ## =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	LBB22_6
## %bb.3:                               ##   in Loop: Header=BB22_2 Depth=1
	movq	-40(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movq	(%rax,%rcx,8), %rsi
	leaq	L_.str.1(%rip), %rdi
	movb	$0, %al
	callq	_printf
## %bb.4:                               ##   in Loop: Header=BB22_2 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	LBB22_2
LBB22_5:
Ltmp5:
                                        ## kill: def $edx killed $edx killed $rdx
	movq	%rax, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	-56(%rbp), %rdi         ## 8-byte Reload
	callq	__ZdlPv
	jmp	LBB22_7
LBB22_6:
	leaq	L_.str.2(%rip), %rdi
	movb	$0, %al
	callq	_printf
	xorl	%ecx, %ecx
	movl	%eax, -68(%rbp)         ## 4-byte Spill
	movl	%ecx, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
LBB22_7:
	movq	-24(%rbp), %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table22:
Lexception1:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	255                     ## @TType Encoding = omit
	.byte	1                       ## Call site Encoding = uleb128
	.uleb128 Lcst_end1-Lcst_begin1
Lcst_begin1:
	.uleb128 Lfunc_begin1-Lfunc_begin1 ## >> Call Site 1 <<
	.uleb128 Ltmp3-Lfunc_begin1     ##   Call between Lfunc_begin1 and Ltmp3
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp3-Lfunc_begin1     ## >> Call Site 2 <<
	.uleb128 Ltmp4-Ltmp3            ##   Call between Ltmp3 and Ltmp4
	.uleb128 Ltmp5-Lfunc_begin1     ##     jumps to Ltmp5
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp4-Lfunc_begin1     ## >> Call Site 3 <<
	.uleb128 Lfunc_end1-Ltmp4       ##   Call between Ltmp4 and Lfunc_end1
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lcst_end1:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__123__libcpp_numeric_limitsIyLb1EE3maxEv
__ZNSt3__123__libcpp_numeric_limitsIyLb1EE3maxEv: ## @_ZNSt3__123__libcpp_numeric_limitsIyLb1EE3maxEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	$-1, %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"[ "

L_.str.1:                               ## @.str.1
	.asciz	"%llu "

L_.str.2:                               ## @.str.2
	.asciz	"]\n"


.subsections_via_symbols
