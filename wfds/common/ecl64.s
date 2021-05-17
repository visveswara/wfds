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
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	leaq	-32(%rbp), %rdi
	callq	__ZN5ecl64C1Ev
	movl	$0, -4(%rbp)
	leaq	-32(%rbp), %rdi
	callq	__ZN5ecl64D1Ev
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
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

.subsections_via_symbols
