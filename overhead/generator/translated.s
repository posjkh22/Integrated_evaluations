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
	subq	$272, %rsp              # imm = 0x110
	callq	init_monitor
	movl	$65537, %edi            # imm = 0x10001
	callq	enqueue_signature
	leaq	-240(%rbp), %rdi
	movl	$0, -208(%rbp)
	movq	$100, -112(%rbp)
	movl	$0, -204(%rbp)
	xorl	%esi, %esi
	callq	gettimeofday
# BB#1:
	movl	$65538, %edi            # imm = 0x10002
	callq	enqueue_signature
	movl	$1, -88(%rbp)
# BB#2:
	movl	$65539, %edi            # imm = 0x10003
	callq	enqueue_signature
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI0_2(%rip), %xmm2   # xmm2 = mem[0],zero
	movsd	%xmm2, T
	movsd	%xmm1, T1
	movsd	%xmm0, T2
	movq	-112(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	$1, -88(%rbp)
	movl	$1, -84(%rbp)
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
	movl	$65540, %edi            # imm = 0x10004
	callq	enqueue_signature
	movsd	.LCPI0_3(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI0_4(%rip), %xmm1   # xmm1 = mem[0],zero
	movq	$0, -200(%rbp)
	imulq	$12, -48(%rbp), %rax
	movq	%rax, -192(%rbp)
	imulq	$14, -48(%rbp), %rax
	movq	%rax, -184(%rbp)
	imulq	$345, -48(%rbp), %rax   # imm = 0x159
	movq	%rax, -176(%rbp)
	imulq	$210, -48(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-48(%rbp), %rax
	shlq	$5, %rax
	movq	%rax, -160(%rbp)
	imulq	$899, -48(%rbp), %rax   # imm = 0x383
	movq	%rax, -152(%rbp)
	imulq	$616, -48(%rbp), %rax   # imm = 0x268
	movq	%rax, -144(%rbp)
	movq	$0, -136(%rbp)
	imulq	$93, -48(%rbp), %rax
	movq	%rax, -128(%rbp)
	movsd	%xmm1, -80(%rbp)
	movsd	%xmm0, -72(%rbp)
	movsd	%xmm0, -64(%rbp)
	movsd	%xmm0, -56(%rbp)
	movq	$1, -8(%rbp)
.LBB0_4:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$65541, %edi            # imm = 0x10005
	callq	enqueue_signature
	movq	-8(%rbp), %rax
	cmpq	-200(%rbp), %rax
	jg	.LBB0_7
# BB#5:                                 #   in Loop: Header=BB0_4 Depth=2
	movl	$65542, %edi            # imm = 0x10006
	callq	enqueue_signature
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-72(%rbp), %xmm0
	addsd	-64(%rbp), %xmm0
	subsd	-56(%rbp), %xmm0
	mulsd	T, %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-72(%rbp), %xmm0
	subsd	-64(%rbp), %xmm0
	addsd	-56(%rbp), %xmm0
	mulsd	T, %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-72(%rbp), %xmm0
	addsd	-64(%rbp), %xmm0
	addsd	-56(%rbp), %xmm0
	mulsd	T, %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%xmm0, %rcx
	xorq	%rax, %rcx
	movq	%rcx, %xmm0
	addsd	-72(%rbp), %xmm0
	addsd	-64(%rbp), %xmm0
	addsd	-56(%rbp), %xmm0
	mulsd	T, %xmm0
	movsd	%xmm0, -56(%rbp)
# BB#6:                                 #   in Loop: Header=BB0_4 Depth=2
	movl	$65543, %edi            # imm = 0x10007
	callq	enqueue_signature
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_4
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=1
	movl	$65544, %edi            # imm = 0x10008
	callq	enqueue_signature
	movsd	.LCPI0_3(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI0_4(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	%xmm1, E1+8
	movsd	%xmm0, E1+16
	movsd	%xmm0, E1+24
	movsd	%xmm0, E1+32
	movq	$1, -8(%rbp)
.LBB0_8:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$65545, %edi            # imm = 0x10009
	callq	enqueue_signature
	movq	-8(%rbp), %rax
	cmpq	-192(%rbp), %rax
	jg	.LBB0_11
# BB#9:                                 #   in Loop: Header=BB0_8 Depth=2
	movl	$65546, %edi            # imm = 0x1000A
	callq	enqueue_signature
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
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
	movl	$65547, %edi            # imm = 0x1000B
	callq	enqueue_signature
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_8
.LBB0_11:                               #   in Loop: Header=BB0_3 Depth=1
	movl	$65548, %edi            # imm = 0x1000C
	callq	enqueue_signature
	movq	$1, -8(%rbp)
.LBB0_12:                               #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$65549, %edi            # imm = 0x1000D
	callq	enqueue_signature
	movq	-8(%rbp), %rax
	cmpq	-184(%rbp), %rax
	jg	.LBB0_15
# BB#13:                                #   in Loop: Header=BB0_12 Depth=2
	movl	$65550, %edi            # imm = 0x1000E
	callq	enqueue_signature_with_call
	movabsq	$E1, %rdi
	callq	PA
# BB#14:                                #   in Loop: Header=BB0_12 Depth=2
	movl	$65551, %edi            # imm = 0x1000F
	callq	enqueue_signature
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_12
.LBB0_15:                               #   in Loop: Header=BB0_3 Depth=1
	movl	$65552, %edi            # imm = 0x10010
	callq	enqueue_signature
	movl	$1, J
	movq	$1, -8(%rbp)
.LBB0_16:                               #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$65553, %edi            # imm = 0x10011
	callq	enqueue_signature
	movq	-8(%rbp), %rax
	cmpq	-176(%rbp), %rax
	jg	.LBB0_28
# BB#17:                                #   in Loop: Header=BB0_16 Depth=2
	movl	$65554, %edi            # imm = 0x10012
	callq	enqueue_signature
	cmpl	$1, J
	jne	.LBB0_19
# BB#18:                                #   in Loop: Header=BB0_16 Depth=2
	movl	$65555, %edi            # imm = 0x10013
	callq	enqueue_signature
	movl	$2, J
	jmp	.LBB0_20
.LBB0_19:                               #   in Loop: Header=BB0_16 Depth=2
	movl	$65556, %edi            # imm = 0x10014
	callq	enqueue_signature
	movl	$3, J
.LBB0_20:                               #   in Loop: Header=BB0_16 Depth=2
	movl	$65557, %edi            # imm = 0x10015
	callq	enqueue_signature
	cmpl	$2, J
	jle	.LBB0_22
# BB#21:                                #   in Loop: Header=BB0_16 Depth=2
	movl	$65558, %edi            # imm = 0x10016
	callq	enqueue_signature
	movl	$0, J
	jmp	.LBB0_23
.LBB0_22:                               #   in Loop: Header=BB0_16 Depth=2
	movl	$65559, %edi            # imm = 0x10017
	callq	enqueue_signature
	movl	$1, J
.LBB0_23:                               #   in Loop: Header=BB0_16 Depth=2
	movl	$65560, %edi            # imm = 0x10018
	callq	enqueue_signature
	cmpl	$1, J
	jge	.LBB0_25
# BB#24:                                #   in Loop: Header=BB0_16 Depth=2
	movl	$65561, %edi            # imm = 0x10019
	callq	enqueue_signature
	movl	$1, J
	jmp	.LBB0_26
.LBB0_25:                               #   in Loop: Header=BB0_16 Depth=2
	movl	$65562, %edi            # imm = 0x1001A
	callq	enqueue_signature
	movl	$0, J
.LBB0_26:                               #   in Loop: Header=BB0_16 Depth=2
	movl	$65563, %edi            # imm = 0x1001B
	callq	enqueue_signature
# BB#27:                                #   in Loop: Header=BB0_16 Depth=2
	movl	$65564, %edi            # imm = 0x1001C
	callq	enqueue_signature
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_16
.LBB0_28:                               #   in Loop: Header=BB0_3 Depth=1
	movl	$65565, %edi            # imm = 0x1001D
	callq	enqueue_signature
	movl	$1, J
	movl	$2, K
	movl	$3, L
	movq	$1, -8(%rbp)
.LBB0_29:                               #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$65566, %edi            # imm = 0x1001E
	callq	enqueue_signature
	movq	-8(%rbp), %rax
	cmpq	-168(%rbp), %rax
	jg	.LBB0_32
# BB#30:                                #   in Loop: Header=BB0_29 Depth=2
	movl	$65567, %edi            # imm = 0x1001F
	callq	enqueue_signature
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
	movl	L, %eax
	subl	K, %eax
	movl	K, %ecx
	addl	J, %ecx
	imull	%eax, %ecx
	movl	%ecx, L
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
	movl	$65568, %edi            # imm = 0x10020
	callq	enqueue_signature
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_29
.LBB0_32:                               #   in Loop: Header=BB0_3 Depth=1
	movl	$65569, %edi            # imm = 0x10021
	callq	enqueue_signature
	movsd	.LCPI0_5(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm0, -40(%rbp)
	movq	$1, -8(%rbp)
.LBB0_33:                               #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$65570, %edi            # imm = 0x10022
	callq	enqueue_signature
	movq	-8(%rbp), %rax
	cmpq	-160(%rbp), %rax
	jg	.LBB0_46
# BB#34:                                #   in Loop: Header=BB0_33 Depth=2
	movl	$65571, %edi            # imm = 0x10023
	callq	enqueue_signature
	movsd	T, %xmm0                # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	movsd	T2, %xmm0               # xmm0 = mem[0],zero
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	sin
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
# BB#35:                                #   in Loop: Header=BB0_33 Depth=2
	movl	$65572, %edi            # imm = 0x10024
	callq	enqueue_signature
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	-32(%rbp), %xmm0        # 8-byte Folded Reload
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	cos
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
# BB#36:                                #   in Loop: Header=BB0_33 Depth=2
	movl	$65573, %edi            # imm = 0x10025
	callq	enqueue_signature
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	-32(%rbp), %xmm0        # 8-byte Folded Reload
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-40(%rbp), %xmm0
	callq	cos
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
# BB#37:                                #   in Loop: Header=BB0_33 Depth=2
	movl	$65574, %edi            # imm = 0x10026
	callq	enqueue_signature
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-40(%rbp), %xmm0
	callq	cos
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
# BB#38:                                #   in Loop: Header=BB0_33 Depth=2
	movl	$65575, %edi            # imm = 0x10027
	callq	enqueue_signature
	movsd	.LCPI0_4(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	-96(%rbp), %xmm1        # 8-byte Folded Reload
	subsd	%xmm0, %xmm1
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	callq	atan
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
# BB#39:                                #   in Loop: Header=BB0_33 Depth=2
	movl	$65576, %edi            # imm = 0x10028
	callq	enqueue_signature
	movsd	-104(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	-16(%rbp), %xmm0        # 8-byte Folded Reload
	movsd	%xmm0, -24(%rbp)
	movsd	T, %xmm0                # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	movsd	T2, %xmm0               # xmm0 = mem[0],zero
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	sin
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
# BB#40:                                #   in Loop: Header=BB0_33 Depth=2
	movl	$65577, %edi            # imm = 0x10029
	callq	enqueue_signature
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	-32(%rbp), %xmm0        # 8-byte Folded Reload
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	cos
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
# BB#41:                                #   in Loop: Header=BB0_33 Depth=2
	movl	$65578, %edi            # imm = 0x1002A
	callq	enqueue_signature
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	-32(%rbp), %xmm0        # 8-byte Folded Reload
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-40(%rbp), %xmm0
	callq	cos
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
# BB#42:                                #   in Loop: Header=BB0_33 Depth=2
	movl	$65579, %edi            # imm = 0x1002B
	callq	enqueue_signature
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-40(%rbp), %xmm0
	callq	cos
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
# BB#43:                                #   in Loop: Header=BB0_33 Depth=2
	movl	$65580, %edi            # imm = 0x1002C
	callq	enqueue_signature
	movsd	.LCPI0_4(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	-96(%rbp), %xmm1        # 8-byte Folded Reload
	subsd	%xmm0, %xmm1
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	callq	atan
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
# BB#44:                                #   in Loop: Header=BB0_33 Depth=2
	movl	$65581, %edi            # imm = 0x1002D
	callq	enqueue_signature
	movsd	-104(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	-16(%rbp), %xmm0        # 8-byte Folded Reload
	movsd	%xmm0, -40(%rbp)
# BB#45:                                #   in Loop: Header=BB0_33 Depth=2
	movl	$65582, %edi            # imm = 0x1002E
	callq	enqueue_signature
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_33
.LBB0_46:                               #   in Loop: Header=BB0_3 Depth=1
	movl	$65583, %edi            # imm = 0x1002F
	callq	enqueue_signature
	movsd	.LCPI0_4(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm0, -40(%rbp)
	movsd	%xmm0, -120(%rbp)
	movq	$1, -8(%rbp)
.LBB0_47:                               #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$65584, %edi            # imm = 0x10030
	callq	enqueue_signature
	movq	-8(%rbp), %rax
	cmpq	-152(%rbp), %rax
	jg	.LBB0_50
# BB#48:                                #   in Loop: Header=BB0_47 Depth=2
	movl	$65585, %edi            # imm = 0x10031
	callq	enqueue_signature_with_call
	leaq	-120(%rbp), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	P3
# BB#49:                                #   in Loop: Header=BB0_47 Depth=2
	movl	$65586, %edi            # imm = 0x10032
	callq	enqueue_signature
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_47
.LBB0_50:                               #   in Loop: Header=BB0_3 Depth=1
	movl	$65587, %edi            # imm = 0x10033
	callq	enqueue_signature
	movsd	.LCPI0_6(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI0_4(%rip), %xmm2   # xmm2 = mem[0],zero
	movl	$1, J
	movl	$2, K
	movl	$3, L
	movsd	%xmm2, E1+8
	movsd	%xmm1, E1+16
	movsd	%xmm0, E1+24
	movq	$1, -8(%rbp)
.LBB0_51:                               #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$65588, %edi            # imm = 0x10034
	callq	enqueue_signature
	movq	-8(%rbp), %rax
	cmpq	-144(%rbp), %rax
	jg	.LBB0_54
# BB#52:                                #   in Loop: Header=BB0_51 Depth=2
	movl	$65589, %edi            # imm = 0x10035
	callq	enqueue_signature_with_call
	callq	P0
# BB#53:                                #   in Loop: Header=BB0_51 Depth=2
	movl	$65590, %edi            # imm = 0x10036
	callq	enqueue_signature
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_51
.LBB0_54:                               #   in Loop: Header=BB0_3 Depth=1
	movl	$65591, %edi            # imm = 0x10037
	callq	enqueue_signature
	movl	$2, J
	movl	$3, K
	movq	$1, -8(%rbp)
.LBB0_55:                               #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$65592, %edi            # imm = 0x10038
	callq	enqueue_signature
	movq	-8(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jg	.LBB0_58
# BB#56:                                #   in Loop: Header=BB0_55 Depth=2
	movl	$65593, %edi            # imm = 0x10039
	callq	enqueue_signature
	movl	J, %eax
	addl	K, %eax
	movl	%eax, J
	movl	J, %eax
	addl	K, %eax
	movl	%eax, K
	movl	K, %eax
	subl	J, %eax
	movl	%eax, J
	movl	K, %eax
	subl	J, %eax
	subl	J, %eax
	movl	%eax, K
# BB#57:                                #   in Loop: Header=BB0_55 Depth=2
	movl	$65594, %edi            # imm = 0x1003A
	callq	enqueue_signature
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_55
.LBB0_58:                               #   in Loop: Header=BB0_3 Depth=1
	movl	$65595, %edi            # imm = 0x1003B
	callq	enqueue_signature
	movsd	.LCPI0_7(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
	movq	$1, -8(%rbp)
.LBB0_59:                               #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$65596, %edi            # imm = 0x1003C
	callq	enqueue_signature
	movq	-8(%rbp), %rax
	cmpq	-128(%rbp), %rax
	jg	.LBB0_65
# BB#60:                                #   in Loop: Header=BB0_59 Depth=2
	movl	$65597, %edi            # imm = 0x1003D
	callq	enqueue_signature
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	log
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
# BB#61:                                #   in Loop: Header=BB0_59 Depth=2
	movl	$65598, %edi            # imm = 0x1003E
	callq	enqueue_signature
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	T1, %xmm0
	callq	exp
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
# BB#62:                                #   in Loop: Header=BB0_59 Depth=2
	movl	$65599, %edi            # imm = 0x1003F
	callq	enqueue_signature
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
# BB#63:                                #   in Loop: Header=BB0_59 Depth=2
	movl	$65600, %edi            # imm = 0x10040
	callq	enqueue_signature
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
# BB#64:                                #   in Loop: Header=BB0_59 Depth=2
	movl	$65601, %edi            # imm = 0x10041
	callq	enqueue_signature
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_59
.LBB0_65:                               #   in Loop: Header=BB0_3 Depth=1
	movl	$65602, %edi            # imm = 0x10042
	callq	enqueue_signature
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	cmpl	-88(%rbp), %eax
	jg	.LBB0_67
# BB#66:                                #   in Loop: Header=BB0_3 Depth=1
	movl	$65603, %edi            # imm = 0x10043
	callq	enqueue_signature
	jmp	.LBB0_3
.LBB0_67:
	movl	$65604, %edi            # imm = 0x10044
	callq	enqueue_signature
	leaq	-224(%rbp), %rdi
	xorl	%esi, %esi
	callq	gettimeofday
# BB#68:
	movl	$65605, %edi            # imm = 0x10045
	callq	enqueue_signature
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	printf
# BB#69:
	movl	$65606, %edi            # imm = 0x10046
	callq	enqueue_signature
	movabsq	$.L.str.1, %rdi
	movq	-224(%rbp), %rax
	subq	-240(%rbp), %rax
	imulq	$1000000, %rax, %rax    # imm = 0xF4240
	movq	-216(%rbp), %rsi
	subq	-232(%rbp), %rsi
	addq	%rax, %rsi
	movb	$0, %al
	callq	printf
# BB#70:
	movl	$65607, %edi            # imm = 0x10047
	callq	enqueue_signature_with_remainder_process
	xorl	%eax, %eax
	addq	$272, %rsp              # imm = 0x110
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
.Lcfi3:
	.cfi_def_cfa_offset 16
.Lcfi4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi5:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
.Lcfi6:
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movl	$196609, %edi           # imm = 0x30001
	callq	enqueue_signature
	movq	%rbx, -16(%rbp)
	movl	$0, J
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	movl	$196610, %edi           # imm = 0x30002
	callq	enqueue_signature
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-16(%rbp), %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movq	-16(%rbp), %rcx
	addsd	16(%rcx), %xmm0
	movq	-16(%rbp), %rcx
	addsd	24(%rcx), %xmm0
	movq	-16(%rbp), %rcx
	subsd	32(%rcx), %xmm0
	mulsd	T, %xmm0
	movq	-16(%rbp), %rcx
	movsd	%xmm0, 8(%rcx)
	movq	-16(%rbp), %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movq	-16(%rbp), %rcx
	addsd	16(%rcx), %xmm0
	movq	-16(%rbp), %rcx
	subsd	24(%rcx), %xmm0
	movq	-16(%rbp), %rcx
	addsd	32(%rcx), %xmm0
	mulsd	T, %xmm0
	movq	-16(%rbp), %rcx
	movsd	%xmm0, 16(%rcx)
	movq	-16(%rbp), %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movq	-16(%rbp), %rcx
	subsd	16(%rcx), %xmm0
	movq	-16(%rbp), %rcx
	addsd	24(%rcx), %xmm0
	movq	-16(%rbp), %rcx
	addsd	32(%rcx), %xmm0
	mulsd	T, %xmm0
	movq	-16(%rbp), %rcx
	movsd	%xmm0, 24(%rcx)
	movq	-16(%rbp), %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movq	%xmm0, %rcx
	xorq	%rax, %rcx
	movq	%rcx, %xmm0
	movq	-16(%rbp), %rax
	addsd	16(%rax), %xmm0
	movq	-16(%rbp), %rax
	addsd	24(%rax), %xmm0
	movq	-16(%rbp), %rax
	addsd	32(%rax), %xmm0
	divsd	T2, %xmm0
	movq	-16(%rbp), %rax
	movsd	%xmm0, 32(%rax)
	movl	J, %eax
	addl	$1, %eax
	movl	%eax, J
	cmpl	$6, J
	jge	.LBB1_3
# BB#2:                                 #   in Loop: Header=BB1_1 Depth=1
	movl	$196611, %edi           # imm = 0x30003
	callq	enqueue_signature
	jmp	.LBB1_1
.LBB1_3:
	movl	$196612, %edi           # imm = 0x30004
	callq	enqueue_signature_with_return
	addq	$8, %rsp
	popq	%rbx
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
.Lcfi7:
	.cfi_def_cfa_offset 16
.Lcfi8:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi9:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$56, %rsp
.Lcfi10:
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movsd	%xmm1, -40(%rbp)        # 8-byte Spill
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movl	$458753, %edi           # imm = 0x70001
	callq	enqueue_signature_with_return
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	movq	%rbx, -48(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -16(%rbp)
	movsd	T, %xmm0                # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	addsd	-16(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -24(%rbp)
	movsd	T, %xmm0                # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	addsd	-16(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -16(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-16(%rbp), %xmm0
	divsd	T2, %xmm0
	movq	-48(%rbp), %rax
	movsd	%xmm0, (%rax)
	addq	$56, %rsp
	popq	%rbx
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
.Lcfi11:
	.cfi_def_cfa_offset 16
.Lcfi12:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi13:
	.cfi_def_cfa_register %rbp
	movl	$524289, %edi           # imm = 0x80001
	callq	enqueue_signature_with_return
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
.Lcfi14:
	.cfi_def_cfa_offset 16
	callq	init_monitor
	movl	$1, %edi
	callq	enqueue_signature
	movl	$1, %edi
	callq	enqueue_signature_with_call
	movl	$1, %edi
	callq	enqueue_signature_with_return
	movl	$1, %edi
	callq	enqueue_signature_with_remainder_process
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


	.ident	"clang version 5.0.0 (tags/RELEASE_500/final)"
	.section	".note.GNU-stack","",@progbits
