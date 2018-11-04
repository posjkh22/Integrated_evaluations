	.text
	.file	"whetstone.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function main
.LCPI0_0:
	.quad	4611686018427387904     # double 2
.LCPI0_1:
	.quad	4602681070972460597     # double 0.50024999999999997
.LCPI0_2:
	.quad	4602678368812684175     # double 0.499975
.LCPI0_3:
	.quad	-4616189618054758400    # double -1
.LCPI0_4:
	.quad	4607182418800017408     # double 1
.LCPI0_5:
	.quad	4602678819172646912     # double 0.5
.LCPI0_6:
	.quad	4613937818241073152     # double 3
.LCPI0_7:
	.quad	4604930618986332160     # double 0.75
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi0:
	.cfi_def_cfa_offset 16
.Lcfi1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi2:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$264, %rsp              # imm = 0x108
.Lcfi3:
	.cfi_offset %rbx, -40
.Lcfi4:
	.cfi_offset %r14, -32
.Lcfi5:
	.cfi_offset %r15, -24
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65538, %edx            # imm = 0x10002
	xorl	%ecx, %ecx
	callq	update_signature
	leaq	-264(%rbp), %rdi
	movl	$0, -232(%rbp)
	movq	$100, -136(%rbp)
	movl	$0, -228(%rbp)
	xorl	%esi, %esi
	callq	gettimeofday
# BB#1:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65538, %edx            # imm = 0x10002
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$1, -112(%rbp)
	movl	$65539, %edx            # imm = 0x10003
	xorl	%ecx, %ecx
	callq	update_signature
# BB#2:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65539, %edx            # imm = 0x10003
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI0_2(%rip), %xmm2   # xmm2 = mem[0],zero
	movsd	%xmm2, T
	movsd	%xmm1, T1
	movsd	%xmm0, T2
	movq	-136(%rbp), %rax
	movq	%rax, -72(%rbp)
	movl	$1, -112(%rbp)
	movl	$1, -108(%rbp)
	movl	$65540, %edx            # imm = 0x10004
	xorl	%ecx, %ecx
	callq	update_signature
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
                                        #     Child Loop BB0_8 Depth 2
                                        #     Child Loop BB0_12 Depth 2
                                        #     Child Loop BB0_16 Depth 2
                                        #     Child Loop BB0_29 Depth 2
                                        #     Child Loop BB0_33 Depth 2
                                        #     Child Loop BB0_47 Depth 2
                                        #     Child Loop BB0_51 Depth 2
                                        #     Child Loop BB0_55 Depth 2
                                        #     Child Loop BB0_59 Depth 2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65540, %edx            # imm = 0x10004
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	$0, -224(%rbp)
	imulq	$12, -72(%rbp), %rax
	movq	%rax, -216(%rbp)
	imulq	$14, -72(%rbp), %rax
	movq	%rax, -208(%rbp)
	imulq	$345, -72(%rbp), %rax   # imm = 0x159
	movq	%rax, -200(%rbp)
	imulq	$210, -72(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-72(%rbp), %rbx
	shlq	$5, %rbx
	movl	$65541, %edx            # imm = 0x10005
	xorl	%ecx, %ecx
	callq	update_signature
	movsd	.LCPI0_3(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI0_4(%rip), %xmm1   # xmm1 = mem[0],zero
	movq	%rbx, -184(%rbp)
	imulq	$899, -72(%rbp), %rax   # imm = 0x383
	movq	%rax, -176(%rbp)
	imulq	$616, -72(%rbp), %rax   # imm = 0x268
	movq	%rax, -168(%rbp)
	movq	$0, -160(%rbp)
	imulq	$93, -72(%rbp), %rax
	movq	%rax, -152(%rbp)
	movsd	%xmm1, -104(%rbp)
	movsd	%xmm0, -96(%rbp)
	movsd	%xmm0, -88(%rbp)
	movsd	%xmm0, -80(%rbp)
	movq	$1, -32(%rbp)
.LBB0_4:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65541, %edx            # imm = 0x10005
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-32(%rbp), %r14
	movq	-224(%rbp), %rbx
	movl	$65542, %edx            # imm = 0x10006
	movl	$65544, %ecx            # imm = 0x10008
	callq	update_signature
	cmpq	%rbx, %r14
	jg	.LBB0_7
# BB#5:                                 #   in Loop: Header=BB0_4 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65542, %edx            # imm = 0x10006
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-96(%rbp), %xmm0
	addsd	-88(%rbp), %xmm0
	subsd	-80(%rbp), %xmm0
	mulsd	T, %xmm0
	movsd	%xmm0, -104(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-96(%rbp), %xmm0
	subsd	-88(%rbp), %xmm0
	addsd	-80(%rbp), %xmm0
	mulsd	T, %xmm0
	movsd	%xmm0, -96(%rbp)
	movl	$65543, %edx            # imm = 0x10007
	xorl	%ecx, %ecx
	callq	update_signature
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-96(%rbp), %xmm0
	addsd	-88(%rbp), %xmm0
	addsd	-80(%rbp), %xmm0
	mulsd	T, %xmm0
	movsd	%xmm0, -88(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%xmm0, %rcx
	xorq	%rax, %rcx
	movq	%rcx, %xmm0
	addsd	-96(%rbp), %xmm0
	addsd	-88(%rbp), %xmm0
	addsd	-80(%rbp), %xmm0
	mulsd	T, %xmm0
	movsd	%xmm0, -80(%rbp)
# BB#6:                                 #   in Loop: Header=BB0_4 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65543, %edx            # imm = 0x10007
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	movl	$65541, %edx            # imm = 0x10005
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB0_4
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65544, %edx            # imm = 0x10008
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movsd	.LCPI0_3(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI0_4(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	%xmm1, E1+8
	movsd	%xmm0, E1+16
	movsd	%xmm0, E1+24
	movsd	%xmm0, E1+32
	movq	$1, -32(%rbp)
	movl	$65545, %edx            # imm = 0x10009
	xorl	%ecx, %ecx
	callq	update_signature
.LBB0_8:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65545, %edx            # imm = 0x10009
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-32(%rbp), %r14
	movq	-216(%rbp), %rbx
	movl	$65546, %edx            # imm = 0x1000A
	movl	$65548, %ecx            # imm = 0x1000C
	callq	update_signature
	cmpq	%rbx, %r14
	jg	.LBB0_11
# BB#9:                                 #   in Loop: Header=BB0_8 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65546, %edx            # imm = 0x1000A
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movsd	E1+8, %xmm0             # xmm0 = mem[0],zero
	addsd	E1+16, %xmm0
	addsd	E1+24, %xmm0
	subsd	E1+32, %xmm0
	mulsd	T, %xmm0
	movsd	%xmm0, E1+8
	movsd	E1+8, %xmm0             # xmm0 = mem[0],zero
	addsd	E1+16, %xmm0
	subsd	E1+24, %xmm0
	addsd	E1+32, %xmm0
	mulsd	T, %xmm0
	movsd	%xmm0, E1+16
	movl	$65547, %edx            # imm = 0x1000B
	xorl	%ecx, %ecx
	callq	update_signature
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movsd	E1+8, %xmm0             # xmm0 = mem[0],zero
	subsd	E1+16, %xmm0
	addsd	E1+24, %xmm0
	addsd	E1+32, %xmm0
	mulsd	T, %xmm0
	movsd	%xmm0, E1+24
	movsd	E1+8, %xmm0             # xmm0 = mem[0],zero
	movq	%xmm0, %rcx
	xorq	%rax, %rcx
	movq	%rcx, %xmm0
	addsd	E1+16, %xmm0
	addsd	E1+24, %xmm0
	addsd	E1+32, %xmm0
	mulsd	T, %xmm0
	movsd	%xmm0, E1+32
# BB#10:                                #   in Loop: Header=BB0_8 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65547, %edx            # imm = 0x1000B
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	movl	$65545, %edx            # imm = 0x10009
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB0_8
.LBB0_11:                               #   in Loop: Header=BB0_3 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65548, %edx            # imm = 0x1000C
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	$1, -32(%rbp)
	movl	$65549, %edx            # imm = 0x1000D
	xorl	%ecx, %ecx
	callq	update_signature
.LBB0_12:                               #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65549, %edx            # imm = 0x1000D
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-32(%rbp), %r14
	movq	-208(%rbp), %rbx
	movl	$65550, %edx            # imm = 0x1000E
	movl	$65552, %ecx            # imm = 0x10010
	callq	update_signature
	cmpq	%rbx, %r14
	jg	.LBB0_15
# BB#13:                                #   in Loop: Header=BB0_12 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65550, %edx            # imm = 0x1000E
	callq	verify_signature
	movabsq	$E1, %rdi
	callq	PA
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65551, %edx            # imm = 0x1000F
	xorl	%ecx, %ecx
	callq	update_signature
# BB#14:                                #   in Loop: Header=BB0_12 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65551, %edx            # imm = 0x1000F
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	movl	$65549, %edx            # imm = 0x1000D
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB0_12
.LBB0_15:                               #   in Loop: Header=BB0_3 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65552, %edx            # imm = 0x10010
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$1, J
	movq	$1, -32(%rbp)
	movl	$65553, %edx            # imm = 0x10011
	xorl	%ecx, %ecx
	callq	update_signature
.LBB0_16:                               #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65553, %edx            # imm = 0x10011
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-32(%rbp), %r14
	movq	-200(%rbp), %rbx
	movl	$65554, %edx            # imm = 0x10012
	movl	$65565, %ecx            # imm = 0x1001D
	callq	update_signature
	cmpq	%rbx, %r14
	jg	.LBB0_28
# BB#17:                                #   in Loop: Header=BB0_16 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65554, %edx            # imm = 0x10012
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	J, %ebx
	movl	$65555, %edx            # imm = 0x10013
	movl	$65556, %ecx            # imm = 0x10014
	callq	update_signature
	cmpl	$1, %ebx
	jne	.LBB0_19
# BB#18:                                #   in Loop: Header=BB0_16 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65555, %edx            # imm = 0x10013
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$2, J
	movl	$65557, %edx            # imm = 0x10015
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB0_20
.LBB0_19:                               #   in Loop: Header=BB0_16 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65556, %edx            # imm = 0x10014
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$3, J
	movl	$65557, %edx            # imm = 0x10015
	xorl	%ecx, %ecx
	callq	update_signature
.LBB0_20:                               #   in Loop: Header=BB0_16 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65557, %edx            # imm = 0x10015
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	J, %ebx
	movl	$65558, %edx            # imm = 0x10016
	movl	$65559, %ecx            # imm = 0x10017
	callq	update_signature
	cmpl	$2, %ebx
	jle	.LBB0_22
# BB#21:                                #   in Loop: Header=BB0_16 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65558, %edx            # imm = 0x10016
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$0, J
	movl	$65560, %edx            # imm = 0x10018
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB0_23
.LBB0_22:                               #   in Loop: Header=BB0_16 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65559, %edx            # imm = 0x10017
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$1, J
	movl	$65560, %edx            # imm = 0x10018
	xorl	%ecx, %ecx
	callq	update_signature
.LBB0_23:                               #   in Loop: Header=BB0_16 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65560, %edx            # imm = 0x10018
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	J, %ebx
	movl	$65561, %edx            # imm = 0x10019
	movl	$65562, %ecx            # imm = 0x1001A
	callq	update_signature
	cmpl	$1, %ebx
	jge	.LBB0_25
# BB#24:                                #   in Loop: Header=BB0_16 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65561, %edx            # imm = 0x10019
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$1, J
	movl	$65563, %edx            # imm = 0x1001B
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB0_26
.LBB0_25:                               #   in Loop: Header=BB0_16 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65562, %edx            # imm = 0x1001A
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$0, J
	movl	$65563, %edx            # imm = 0x1001B
	xorl	%ecx, %ecx
	callq	update_signature
.LBB0_26:                               #   in Loop: Header=BB0_16 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65563, %edx            # imm = 0x1001B
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65564, %edx            # imm = 0x1001C
	xorl	%ecx, %ecx
	callq	update_signature
# BB#27:                                #   in Loop: Header=BB0_16 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65564, %edx            # imm = 0x1001C
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	movl	$65553, %edx            # imm = 0x10011
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB0_16
.LBB0_28:                               #   in Loop: Header=BB0_3 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65565, %edx            # imm = 0x1001D
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$1, J
	movl	$2, K
	movl	$3, L
	movq	$1, -32(%rbp)
	movl	$65566, %edx            # imm = 0x1001E
	xorl	%ecx, %ecx
	callq	update_signature
.LBB0_29:                               #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65566, %edx            # imm = 0x1001E
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-32(%rbp), %r14
	movq	-192(%rbp), %rbx
	movl	$65567, %edx            # imm = 0x1001F
	movl	$65569, %ecx            # imm = 0x10021
	callq	update_signature
	cmpq	%rbx, %r14
	jg	.LBB0_32
# BB#30:                                #   in Loop: Header=BB0_29 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65567, %edx            # imm = 0x1001F
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	J, %eax
	movl	K, %ecx
	subl	J, %ecx
	imull	%eax, %ecx
	movl	L, %eax
	subl	K, %eax
	imull	%ecx, %eax
	movl	%eax, J
	movl	L, %eax
	imull	K, %eax
	movl	L, %ecx
	subl	J, %ecx
	imull	K, %ecx
	subl	%ecx, %eax
	movl	%eax, K
	movl	L, %r15d
	subl	K, %r15d
	movl	K, %r14d
	movl	J, %ebx
	movl	$65568, %edx            # imm = 0x10020
	xorl	%ecx, %ecx
	callq	update_signature
	addl	%r14d, %ebx
	imull	%r15d, %ebx
	movl	%ebx, L
	movl	J, %eax
	addl	K, %eax
	addl	L, %eax
	cvtsi2sdl	%eax, %xmm0
	movl	L, %eax
	subl	$1, %eax
	cltq
	movsd	%xmm0, E1(,%rax,8)
	movl	J, %eax
	imull	K, %eax
	imull	L, %eax
	cvtsi2sdl	%eax, %xmm0
	movl	K, %eax
	subl	$1, %eax
	cltq
	movsd	%xmm0, E1(,%rax,8)
# BB#31:                                #   in Loop: Header=BB0_29 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65568, %edx            # imm = 0x10020
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	movl	$65566, %edx            # imm = 0x1001E
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB0_29
.LBB0_32:                               #   in Loop: Header=BB0_3 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65569, %edx            # imm = 0x10021
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movsd	.LCPI0_5(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movsd	%xmm0, -64(%rbp)
	movq	$1, -32(%rbp)
	movl	$65570, %edx            # imm = 0x10022
	xorl	%ecx, %ecx
	callq	update_signature
.LBB0_33:                               #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65570, %edx            # imm = 0x10022
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-32(%rbp), %r14
	movq	-184(%rbp), %rbx
	movl	$65571, %edx            # imm = 0x10023
	movl	$65583, %ecx            # imm = 0x1002F
	callq	update_signature
	cmpq	%rbx, %r14
	jg	.LBB0_46
# BB#34:                                #   in Loop: Header=BB0_33 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65571, %edx            # imm = 0x10023
	callq	verify_signature
	movabsq	$main_run_signature_1, %rbx
	movabsq	$main_run_signature_2, %r14
	movsd	T, %xmm0                # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	movsd	T2, %xmm0               # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	sin
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	$65572, %edx            # imm = 0x10024
	xorl	%ecx, %ecx
	callq	update_signature
# BB#35:                                #   in Loop: Header=BB0_33 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65572, %edx            # imm = 0x10024
	callq	verify_signature
	movabsq	$main_run_signature_1, %rbx
	movabsq	$main_run_signature_2, %r14
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	-56(%rbp), %xmm0        # 8-byte Folded Reload
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	cos
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	$65573, %edx            # imm = 0x10025
	xorl	%ecx, %ecx
	callq	update_signature
# BB#36:                                #   in Loop: Header=BB0_33 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65573, %edx            # imm = 0x10025
	callq	verify_signature
	movabsq	$main_run_signature_1, %rbx
	movabsq	$main_run_signature_2, %r14
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	-56(%rbp), %xmm0        # 8-byte Folded Reload
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-64(%rbp), %xmm0
	callq	cos
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	$65574, %edx            # imm = 0x10026
	xorl	%ecx, %ecx
	callq	update_signature
# BB#37:                                #   in Loop: Header=BB0_33 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65574, %edx            # imm = 0x10026
	callq	verify_signature
	movabsq	$main_run_signature_1, %rbx
	movabsq	$main_run_signature_2, %r14
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-64(%rbp), %xmm0
	callq	cos
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	$65575, %edx            # imm = 0x10027
	xorl	%ecx, %ecx
	callq	update_signature
# BB#38:                                #   in Loop: Header=BB0_33 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65575, %edx            # imm = 0x10027
	callq	verify_signature
	movsd	.LCPI0_4(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	-120(%rbp), %xmm1       # 8-byte Folded Reload
	subsd	%xmm0, %xmm1
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	callq	atan
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65576, %edx            # imm = 0x10028
	xorl	%ecx, %ecx
	callq	update_signature
# BB#39:                                #   in Loop: Header=BB0_33 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65576, %edx            # imm = 0x10028
	callq	verify_signature
	movabsq	$main_run_signature_1, %rbx
	movabsq	$main_run_signature_2, %r14
	movsd	-128(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	-40(%rbp), %xmm0        # 8-byte Folded Reload
	movsd	%xmm0, -48(%rbp)
	movsd	T, %xmm0                # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	movsd	T2, %xmm0               # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	sin
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	$65577, %edx            # imm = 0x10029
	xorl	%ecx, %ecx
	callq	update_signature
# BB#40:                                #   in Loop: Header=BB0_33 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65577, %edx            # imm = 0x10029
	callq	verify_signature
	movabsq	$main_run_signature_1, %rbx
	movabsq	$main_run_signature_2, %r14
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	-56(%rbp), %xmm0        # 8-byte Folded Reload
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	cos
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	$65578, %edx            # imm = 0x1002A
	xorl	%ecx, %ecx
	callq	update_signature
# BB#41:                                #   in Loop: Header=BB0_33 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65578, %edx            # imm = 0x1002A
	callq	verify_signature
	movabsq	$main_run_signature_1, %rbx
	movabsq	$main_run_signature_2, %r14
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	-56(%rbp), %xmm0        # 8-byte Folded Reload
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-64(%rbp), %xmm0
	callq	cos
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	$65579, %edx            # imm = 0x1002B
	xorl	%ecx, %ecx
	callq	update_signature
# BB#42:                                #   in Loop: Header=BB0_33 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65579, %edx            # imm = 0x1002B
	callq	verify_signature
	movabsq	$main_run_signature_1, %rbx
	movabsq	$main_run_signature_2, %r14
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-64(%rbp), %xmm0
	callq	cos
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	$65580, %edx            # imm = 0x1002C
	xorl	%ecx, %ecx
	callq	update_signature
# BB#43:                                #   in Loop: Header=BB0_33 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65580, %edx            # imm = 0x1002C
	callq	verify_signature
	movsd	.LCPI0_4(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	-120(%rbp), %xmm1       # 8-byte Folded Reload
	subsd	%xmm0, %xmm1
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	callq	atan
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65581, %edx            # imm = 0x1002D
	xorl	%ecx, %ecx
	callq	update_signature
# BB#44:                                #   in Loop: Header=BB0_33 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65581, %edx            # imm = 0x1002D
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movsd	-128(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	-40(%rbp), %xmm0        # 8-byte Folded Reload
	movsd	%xmm0, -64(%rbp)
	movl	$65582, %edx            # imm = 0x1002E
	xorl	%ecx, %ecx
	callq	update_signature
# BB#45:                                #   in Loop: Header=BB0_33 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65582, %edx            # imm = 0x1002E
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	movl	$65570, %edx            # imm = 0x10022
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB0_33
.LBB0_46:                               #   in Loop: Header=BB0_3 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65583, %edx            # imm = 0x1002F
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movsd	.LCPI0_4(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movsd	%xmm0, -64(%rbp)
	movsd	%xmm0, -144(%rbp)
	movq	$1, -32(%rbp)
	movl	$65584, %edx            # imm = 0x10030
	xorl	%ecx, %ecx
	callq	update_signature
.LBB0_47:                               #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65584, %edx            # imm = 0x10030
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-32(%rbp), %r14
	movq	-176(%rbp), %rbx
	movl	$65585, %edx            # imm = 0x10031
	movl	$65587, %ecx            # imm = 0x10033
	callq	update_signature
	cmpq	%rbx, %r14
	jg	.LBB0_50
# BB#48:                                #   in Loop: Header=BB0_47 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65585, %edx            # imm = 0x10031
	callq	verify_signature
	leaq	-144(%rbp), %rdi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	P3
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65586, %edx            # imm = 0x10032
	xorl	%ecx, %ecx
	callq	update_signature
# BB#49:                                #   in Loop: Header=BB0_47 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65586, %edx            # imm = 0x10032
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	movl	$65584, %edx            # imm = 0x10030
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB0_47
.LBB0_50:                               #   in Loop: Header=BB0_3 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65587, %edx            # imm = 0x10033
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movsd	.LCPI0_6(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI0_4(%rip), %xmm2   # xmm2 = mem[0],zero
	movl	$1, J
	movl	$2, K
	movl	$3, L
	movsd	%xmm2, E1+8
	movsd	%xmm1, E1+16
	movsd	%xmm0, E1+24
	movq	$1, -32(%rbp)
	movl	$65588, %edx            # imm = 0x10034
	xorl	%ecx, %ecx
	callq	update_signature
.LBB0_51:                               #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65588, %edx            # imm = 0x10034
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-32(%rbp), %r14
	movq	-168(%rbp), %rbx
	movl	$65589, %edx            # imm = 0x10035
	movl	$65591, %ecx            # imm = 0x10037
	callq	update_signature
	cmpq	%rbx, %r14
	jg	.LBB0_54
# BB#52:                                #   in Loop: Header=BB0_51 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65589, %edx            # imm = 0x10035
	callq	verify_signature
	callq	P0
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65590, %edx            # imm = 0x10036
	xorl	%ecx, %ecx
	callq	update_signature
# BB#53:                                #   in Loop: Header=BB0_51 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65590, %edx            # imm = 0x10036
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	movl	$65588, %edx            # imm = 0x10034
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB0_51
.LBB0_54:                               #   in Loop: Header=BB0_3 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65591, %edx            # imm = 0x10037
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$2, J
	movl	$3, K
	movq	$1, -32(%rbp)
	movl	$65592, %edx            # imm = 0x10038
	xorl	%ecx, %ecx
	callq	update_signature
.LBB0_55:                               #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65592, %edx            # imm = 0x10038
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-32(%rbp), %r14
	movq	-160(%rbp), %rbx
	movl	$65593, %edx            # imm = 0x10039
	movl	$65595, %ecx            # imm = 0x1003B
	callq	update_signature
	cmpq	%rbx, %r14
	jg	.LBB0_58
# BB#56:                                #   in Loop: Header=BB0_55 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65593, %edx            # imm = 0x10039
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	J, %eax
	addl	K, %eax
	movl	%eax, J
	movl	J, %eax
	addl	K, %eax
	movl	%eax, K
	movl	K, %ebx
	movl	$65594, %edx            # imm = 0x1003A
	xorl	%ecx, %ecx
	callq	update_signature
	subl	J, %ebx
	movl	%ebx, J
	movl	K, %eax
	subl	J, %eax
	subl	J, %eax
	movl	%eax, K
# BB#57:                                #   in Loop: Header=BB0_55 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65594, %edx            # imm = 0x1003A
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	movl	$65592, %edx            # imm = 0x10038
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB0_55
.LBB0_58:                               #   in Loop: Header=BB0_3 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65595, %edx            # imm = 0x1003B
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movsd	.LCPI0_7(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movq	$1, -32(%rbp)
	movl	$65596, %edx            # imm = 0x1003C
	xorl	%ecx, %ecx
	callq	update_signature
.LBB0_59:                               #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65596, %edx            # imm = 0x1003C
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-32(%rbp), %r14
	movq	-152(%rbp), %rbx
	movl	$65597, %edx            # imm = 0x1003D
	movl	$65602, %ecx            # imm = 0x10042
	callq	update_signature
	cmpq	%rbx, %r14
	jg	.LBB0_65
# BB#60:                                #   in Loop: Header=BB0_59 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65597, %edx            # imm = 0x1003D
	callq	verify_signature
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	log
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65598, %edx            # imm = 0x1003E
	xorl	%ecx, %ecx
	callq	update_signature
# BB#61:                                #   in Loop: Header=BB0_59 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65598, %edx            # imm = 0x1003E
	callq	verify_signature
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	T1, %xmm0
	callq	exp
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65599, %edx            # imm = 0x1003F
	xorl	%ecx, %ecx
	callq	update_signature
# BB#62:                                #   in Loop: Header=BB0_59 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65599, %edx            # imm = 0x1003F
	callq	verify_signature
	movabsq	$main_run_signature_1, %rbx
	movabsq	$main_run_signature_2, %r14
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	$65600, %edx            # imm = 0x10040
	xorl	%ecx, %ecx
	callq	update_signature
# BB#63:                                #   in Loop: Header=BB0_59 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65600, %edx            # imm = 0x10040
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movl	$65601, %edx            # imm = 0x10041
	xorl	%ecx, %ecx
	callq	update_signature
# BB#64:                                #   in Loop: Header=BB0_59 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65601, %edx            # imm = 0x10041
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	movl	$65596, %edx            # imm = 0x1003C
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB0_59
.LBB0_65:                               #   in Loop: Header=BB0_3 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65602, %edx            # imm = 0x10042
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-108(%rbp), %ebx
	addl	$1, %ebx
	movl	%ebx, -108(%rbp)
	movl	-112(%rbp), %r14d
	movl	$65603, %edx            # imm = 0x10043
	movl	$65604, %ecx            # imm = 0x10044
	callq	update_signature
	cmpl	%r14d, %ebx
	jg	.LBB0_67
# BB#66:                                #   in Loop: Header=BB0_3 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65603, %edx            # imm = 0x10043
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65540, %edx            # imm = 0x10004
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB0_3
.LBB0_67:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65604, %edx            # imm = 0x10044
	callq	verify_signature
	leaq	-248(%rbp), %rdi
	xorl	%esi, %esi
	callq	gettimeofday
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65605, %edx            # imm = 0x10045
	xorl	%ecx, %ecx
	callq	update_signature
# BB#68:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65605, %edx            # imm = 0x10045
	callq	verify_signature
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	printf
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65606, %edx            # imm = 0x10046
	xorl	%ecx, %ecx
	callq	update_signature
# BB#69:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65606, %edx            # imm = 0x10046
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-248(%rbp), %rax
	subq	-264(%rbp), %rax
	imulq	$1000000, %rax, %rbx    # imm = 0xF4240
	movl	$65607, %edx            # imm = 0x10047
	xorl	%ecx, %ecx
	callq	update_signature
	movabsq	$.L.str.1, %rdi
	movq	-240(%rbp), %rsi
	subq	-256(%rbp), %rsi
	addq	%rbx, %rsi
	movb	$0, %al
	callq	printf
# BB#70:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65607, %edx            # imm = 0x10047
	callq	verify_signature
	movl	$65607, %edi            # imm = 0x10047
	callq	exit_with_remainder_process
	xorl	%eax, %eax
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.globl	PA                      # -- Begin function PA
	.p2align	4, 0x90
	.type	PA,@function
PA:                                     # @PA
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi6:
	.cfi_def_cfa_offset 16
.Lcfi7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi8:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$main_run_signature_1, %rax
	movabsq	$main_run_signature_2, %rsi
	movq	%rdi, -8(%rbp)
	movl	$0, J
	movq	%rax, %rdi
	movl	$196610, %edx           # imm = 0x30002
	xorl	%ecx, %ecx
	callq	update_signature
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$196610, %edx           # imm = 0x30002
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	addsd	16(%rax), %xmm0
	movq	-8(%rbp), %rax
	addsd	24(%rax), %xmm0
	movq	-8(%rbp), %rax
	subsd	32(%rax), %xmm0
	mulsd	T, %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	addsd	16(%rax), %xmm0
	movq	-8(%rbp), %rax
	subsd	24(%rax), %xmm0
	movq	-8(%rbp), %rax
	addsd	32(%rax), %xmm0
	mulsd	T, %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	movl	$196611, %edx           # imm = 0x30003
	movl	$196612, %ecx           # imm = 0x30004
	callq	update_signature
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-8(%rbp), %rcx
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	16(%rcx), %xmm0
	movq	-8(%rbp), %rcx
	addsd	24(%rcx), %xmm0
	movq	-8(%rbp), %rcx
	addsd	32(%rcx), %xmm0
	mulsd	T, %xmm0
	movq	-8(%rbp), %rcx
	movsd	%xmm0, 24(%rcx)
	movq	-8(%rbp), %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movq	%xmm0, %rcx
	xorq	%rax, %rcx
	movq	%rcx, %xmm0
	movq	-8(%rbp), %rax
	addsd	16(%rax), %xmm0
	movq	-8(%rbp), %rax
	addsd	24(%rax), %xmm0
	movq	-8(%rbp), %rax
	addsd	32(%rax), %xmm0
	divsd	T2, %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 32(%rax)
	movl	J, %eax
	addl	$1, %eax
	movl	%eax, J
	cmpl	$6, J
	jge	.LBB1_3
# BB#2:                                 #   in Loop: Header=BB1_1 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$196611, %edx           # imm = 0x30003
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$196610, %edx           # imm = 0x30002
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB1_1
.LBB1_3:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$196612, %edx           # imm = 0x30004
	callq	verify_signature
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	PA, .Lfunc_end1-PA
	.cfi_endproc
                                        # -- End function
	.globl	P3                      # -- Begin function P3
	.p2align	4, 0x90
	.type	P3,@function
P3:                                     # @P3
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi9:
	.cfi_def_cfa_offset 16
.Lcfi10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi11:
	.cfi_def_cfa_register %rbp
	movsd	%xmm0, -40(%rbp)
	movsd	%xmm1, -32(%rbp)
	movq	%rdi, -24(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -16(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	movsd	T, %xmm0                # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	addsd	-8(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -16(%rbp)
	movsd	T, %xmm0                # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	addsd	-8(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -8(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-8(%rbp), %xmm0
	divsd	T2, %xmm0
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	P3, .Lfunc_end2-P3
	.cfi_endproc
                                        # -- End function
	.globl	P0                      # -- Begin function P0
	.p2align	4, 0x90
	.type	P0,@function
P0:                                     # @P0
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi12:
	.cfi_def_cfa_offset 16
.Lcfi13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi14:
	.cfi_def_cfa_register %rbp
	movslq	K, %rax
	movsd	E1(,%rax,8), %xmm0      # xmm0 = mem[0],zero
	movslq	J, %rax
	movsd	%xmm0, E1(,%rax,8)
	movslq	L, %rax
	movsd	E1(,%rax,8), %xmm0      # xmm0 = mem[0],zero
	movslq	K, %rax
	movsd	%xmm0, E1(,%rax,8)
	movslq	J, %rax
	movsd	E1(,%rax,8), %xmm0      # xmm0 = mem[0],zero
	movslq	L, %rax
	movsd	%xmm0, E1(,%rax,8)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	P0, .Lfunc_end3-P0
	.cfi_endproc
                                        # -- End function
	.globl	CallcheckerSet          # -- Begin function CallcheckerSet
	.p2align	4, 0x90
	.type	CallcheckerSet,@function
CallcheckerSet:                         # @CallcheckerSet
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Lcfi15:
	.cfi_def_cfa_offset 16
	callq	init_monitor
	movl	$CallcheckerSet_signature_1, %edi
	movl	$CallcheckerSet_signature_1, %esi
	movl	$1, %edx
	movl	$1, %ecx
	callq	update_signature
	movl	$CallcheckerSet_signature_1, %edi
	movl	$CallcheckerSet_signature_1, %esi
	movl	$1, %edx
	callq	verify_signature
	movl	$1, %edi
	callq	enqueue_signature_with_return
	movl	$1, %edi
	callq	exit_with_remainder_process
	popq	%rax
	retq
.Lfunc_end4:
	.size	CallcheckerSet, .Lfunc_end4-CallcheckerSet
	.cfi_endproc
                                        # -- End function
	.type	T,@object               # @T
	.comm	T,8,8
	.type	T1,@object              # @T1
	.comm	T1,8,8
	.type	T2,@object              # @T2
	.comm	T2,8,8
	.type	E1,@object              # @E1
	.comm	E1,40,16
	.type	J,@object               # @J
	.comm	J,4,4
	.type	K,@object               # @K
	.comm	K,4,4
	.type	L,@object               # @L
	.comm	L,4,4
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	" [target has finished!]\n"
	.size	.L.str, 25

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	" [target] %ld\n"
	.size	.L.str.1, 15

	.type	main_run_signature_1,@object # @main_run_signature_1
	.bss
	.globl	main_run_signature_1
	.p2align	2
main_run_signature_1:
	.long	0                       # 0x0
	.size	main_run_signature_1, 4

	.type	main_run_signature_2,@object # @main_run_signature_2
	.globl	main_run_signature_2
	.p2align	2
main_run_signature_2:
	.long	0                       # 0x0
	.size	main_run_signature_2, 4

	.type	main_signature_1,@object # @main_signature_1
	.globl	main_signature_1
	.p2align	2
main_signature_1:
	.long	0                       # 0x0
	.size	main_signature_1, 4

	.type	main_signature_2,@object # @main_signature_2
	.globl	main_signature_2
	.p2align	2
main_signature_2:
	.long	0                       # 0x0
	.size	main_signature_2, 4

	.type	gettimeofday_signature_1,@object # @gettimeofday_signature_1
	.globl	gettimeofday_signature_1
	.p2align	2
gettimeofday_signature_1:
	.long	0                       # 0x0
	.size	gettimeofday_signature_1, 4

	.type	gettimeofday_signature_2,@object # @gettimeofday_signature_2
	.globl	gettimeofday_signature_2
	.p2align	2
gettimeofday_signature_2:
	.long	0                       # 0x0
	.size	gettimeofday_signature_2, 4

	.type	PA_signature_1,@object  # @PA_signature_1
	.globl	PA_signature_1
	.p2align	2
PA_signature_1:
	.long	0                       # 0x0
	.size	PA_signature_1, 4

	.type	PA_signature_2,@object  # @PA_signature_2
	.globl	PA_signature_2
	.p2align	2
PA_signature_2:
	.long	0                       # 0x0
	.size	PA_signature_2, 4

	.type	atan_signature_1,@object # @atan_signature_1
	.globl	atan_signature_1
	.p2align	2
atan_signature_1:
	.long	0                       # 0x0
	.size	atan_signature_1, 4

	.type	atan_signature_2,@object # @atan_signature_2
	.globl	atan_signature_2
	.p2align	2
atan_signature_2:
	.long	0                       # 0x0
	.size	atan_signature_2, 4

	.type	sin_signature_1,@object # @sin_signature_1
	.globl	sin_signature_1
	.p2align	2
sin_signature_1:
	.long	0                       # 0x0
	.size	sin_signature_1, 4

	.type	sin_signature_2,@object # @sin_signature_2
	.globl	sin_signature_2
	.p2align	2
sin_signature_2:
	.long	0                       # 0x0
	.size	sin_signature_2, 4

	.type	cos_signature_1,@object # @cos_signature_1
	.globl	cos_signature_1
	.p2align	2
cos_signature_1:
	.long	0                       # 0x0
	.size	cos_signature_1, 4

	.type	cos_signature_2,@object # @cos_signature_2
	.globl	cos_signature_2
	.p2align	2
cos_signature_2:
	.long	0                       # 0x0
	.size	cos_signature_2, 4

	.type	P3_signature_1,@object  # @P3_signature_1
	.globl	P3_signature_1
	.p2align	2
P3_signature_1:
	.long	0                       # 0x0
	.size	P3_signature_1, 4

	.type	P3_signature_2,@object  # @P3_signature_2
	.globl	P3_signature_2
	.p2align	2
P3_signature_2:
	.long	0                       # 0x0
	.size	P3_signature_2, 4

	.type	P0_signature_1,@object  # @P0_signature_1
	.globl	P0_signature_1
	.p2align	2
P0_signature_1:
	.long	0                       # 0x0
	.size	P0_signature_1, 4

	.type	P0_signature_2,@object  # @P0_signature_2
	.globl	P0_signature_2
	.p2align	2
P0_signature_2:
	.long	0                       # 0x0
	.size	P0_signature_2, 4

	.type	sqrt_signature_1,@object # @sqrt_signature_1
	.globl	sqrt_signature_1
	.p2align	2
sqrt_signature_1:
	.long	0                       # 0x0
	.size	sqrt_signature_1, 4

	.type	sqrt_signature_2,@object # @sqrt_signature_2
	.globl	sqrt_signature_2
	.p2align	2
sqrt_signature_2:
	.long	0                       # 0x0
	.size	sqrt_signature_2, 4

	.type	exp_signature_1,@object # @exp_signature_1
	.globl	exp_signature_1
	.p2align	2
exp_signature_1:
	.long	0                       # 0x0
	.size	exp_signature_1, 4

	.type	exp_signature_2,@object # @exp_signature_2
	.globl	exp_signature_2
	.p2align	2
exp_signature_2:
	.long	0                       # 0x0
	.size	exp_signature_2, 4

	.type	log_signature_1,@object # @log_signature_1
	.globl	log_signature_1
	.p2align	2
log_signature_1:
	.long	0                       # 0x0
	.size	log_signature_1, 4

	.type	log_signature_2,@object # @log_signature_2
	.globl	log_signature_2
	.p2align	2
log_signature_2:
	.long	0                       # 0x0
	.size	log_signature_2, 4

	.type	printf_signature_1,@object # @printf_signature_1
	.globl	printf_signature_1
	.p2align	2
printf_signature_1:
	.long	0                       # 0x0
	.size	printf_signature_1, 4

	.type	printf_signature_2,@object # @printf_signature_2
	.globl	printf_signature_2
	.p2align	2
printf_signature_2:
	.long	0                       # 0x0
	.size	printf_signature_2, 4

	.type	init_monitor_signature_1,@object # @init_monitor_signature_1
	.globl	init_monitor_signature_1
	.p2align	2
init_monitor_signature_1:
	.long	0                       # 0x0
	.size	init_monitor_signature_1, 4

	.type	init_monitor_signature_2,@object # @init_monitor_signature_2
	.globl	init_monitor_signature_2
	.p2align	2
init_monitor_signature_2:
	.long	0                       # 0x0
	.size	init_monitor_signature_2, 4

	.type	update_signature_signature_1,@object # @update_signature_signature_1
	.globl	update_signature_signature_1
	.p2align	2
update_signature_signature_1:
	.long	0                       # 0x0
	.size	update_signature_signature_1, 4

	.type	update_signature_signature_2,@object # @update_signature_signature_2
	.globl	update_signature_signature_2
	.p2align	2
update_signature_signature_2:
	.long	0                       # 0x0
	.size	update_signature_signature_2, 4

	.type	verify_signature_signature_1,@object # @verify_signature_signature_1
	.globl	verify_signature_signature_1
	.p2align	2
verify_signature_signature_1:
	.long	0                       # 0x0
	.size	verify_signature_signature_1, 4

	.type	verify_signature_signature_2,@object # @verify_signature_signature_2
	.globl	verify_signature_signature_2
	.p2align	2
verify_signature_signature_2:
	.long	0                       # 0x0
	.size	verify_signature_signature_2, 4

	.type	enqueue_signature_with_return_signature_1,@object # @enqueue_signature_with_return_signature_1
	.globl	enqueue_signature_with_return_signature_1
	.p2align	2
enqueue_signature_with_return_signature_1:
	.long	0                       # 0x0
	.size	enqueue_signature_with_return_signature_1, 4

	.type	enqueue_signature_with_return_signature_2,@object # @enqueue_signature_with_return_signature_2
	.globl	enqueue_signature_with_return_signature_2
	.p2align	2
enqueue_signature_with_return_signature_2:
	.long	0                       # 0x0
	.size	enqueue_signature_with_return_signature_2, 4

	.type	exit_with_remainder_process_signature_1,@object # @exit_with_remainder_process_signature_1
	.globl	exit_with_remainder_process_signature_1
	.p2align	2
exit_with_remainder_process_signature_1:
	.long	0                       # 0x0
	.size	exit_with_remainder_process_signature_1, 4

	.type	exit_with_remainder_process_signature_2,@object # @exit_with_remainder_process_signature_2
	.globl	exit_with_remainder_process_signature_2
	.p2align	2
exit_with_remainder_process_signature_2:
	.long	0                       # 0x0
	.size	exit_with_remainder_process_signature_2, 4

	.type	update_signature2_signature_1,@object # @update_signature2_signature_1
	.globl	update_signature2_signature_1
	.p2align	2
update_signature2_signature_1:
	.long	0                       # 0x0
	.size	update_signature2_signature_1, 4

	.type	update_signature2_signature_2,@object # @update_signature2_signature_2
	.globl	update_signature2_signature_2
	.p2align	2
update_signature2_signature_2:
	.long	0                       # 0x0
	.size	update_signature2_signature_2, 4

	.type	update_signature3_signature_1,@object # @update_signature3_signature_1
	.globl	update_signature3_signature_1
	.p2align	2
update_signature3_signature_1:
	.long	0                       # 0x0
	.size	update_signature3_signature_1, 4

	.type	update_signature3_signature_2,@object # @update_signature3_signature_2
	.globl	update_signature3_signature_2
	.p2align	2
update_signature3_signature_2:
	.long	0                       # 0x0
	.size	update_signature3_signature_2, 4

	.type	CallcheckerSet_signature_1,@object # @CallcheckerSet_signature_1
	.globl	CallcheckerSet_signature_1
	.p2align	2
CallcheckerSet_signature_1:
	.long	0                       # 0x0
	.size	CallcheckerSet_signature_1, 4

	.type	CallcheckerSet_signature_2,@object # @CallcheckerSet_signature_2
	.globl	CallcheckerSet_signature_2
	.p2align	2
CallcheckerSet_signature_2:
	.long	0                       # 0x0
	.size	CallcheckerSet_signature_2, 4


	.ident	"clang version 5.0.0 (tags/RELEASE_500/final)"
	.section	".note.GNU-stack","",@progbits
