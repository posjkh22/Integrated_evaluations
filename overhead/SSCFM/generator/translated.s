	.text
	.file	"llvm-link"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function main
.LCPI0_0:
	.quad	-4594234569871327232    # double -30
.LCPI0_1:
	.quad	4629700416936869888     # double 32
.LCPI0_2:
	.quad	-4601271444289093632    # double -10.5
.LCPI0_3:
	.quad	4607182418800017408     # double 1
.LCPI0_4:
	.quad	4625478292286210048     # double 17
.LCPI0_5:
	.quad	-4606619468846596096    # double -4.5
.LCPI0_6:
	.quad	-4593953094894616576    # double -31
.LCPI0_7:
	.quad	4626885667169763328     # double 22
.LCPI0_8:
	.quad	-4608308318706860032    # double -3.5
.LCPI0_9:
	.quad	-4593249407452839936    # double -35
.LCPI0_10:
	.quad	-4599470004438145434    # double -13.699999999999999
.LCPI0_11:
	.quad	4622945017495814144     # double 12
.LCPI0_12:
	.quad	4617315517961601024     # double 5
.LCPI0_13:
	.quad	4623136420479977390     # double 12.34
.LCPI0_14:
	.quad	-4596036009722275430    # double -23.600000000000001
.LCPI0_15:
	.quad	4618441417868443648     # double 6
.LCPI0_16:
	.quad	-4588894285875684311    # double -67.890000000000001
.LCPI0_17:
	.quad	4629981891913580544     # double 34
.LCPI0_18:
	.quad	4620130267728707584     # double 7.5
.LCPI0_19:
	.quad	4621070394150921175     # double 8.6699999999999999
.LCPI0_20:
	.quad	4625196817309499392     # double 16
.LCPI0_21:
	.quad	4617653287933653811     # double 5.2999999999999998
.LCPI0_22:
	.quad	-4613037098315599053    # double -1.7
.LCPI0_23:
	.quad	4645040803167600640     # double 360
.LCPI0_24:
	.quad	4517329193108106637     # double 9.9999999999999995E-7
.LCPI0_25:
	.quad	4611686018427387904     # double 2
.LCPI0_26:
	.quad	4616189618054758400     # double 4
.LCPI0_27:
	.quad	4640537203540230144     # double 180
.LCPI0_28:
	.quad	4663055201677082624     # double 5760
.LCPI0_29:
	.quad	4562254508917369340     # double 0.001
.LCPI0_30:
	.quad	4621819117588971520     # double 10
.LCPI0_31:
	.quad	4624633867356078080     # double 15
.LCPI0_32:
	.quad	4598175219545276416     # double 0.25
.LCPI0_33:
	.quad	-4616189618054758400    # double -1
.LCPI0_34:
	.quad	-4606056518893174784    # double -5
.LCPI0_35:
	.quad	4603669611090668421     # double 0.60999999999999999
.LCPI0_36:
	.quad	4601796113645682295     # double 0.45100000000000001
.LCPI0_37:
	.quad	-4600427019358961664    # double -12
.LCPI0_38:
	.quad	4631530004285489152     # double 45
.LCPI0_39:
	.quad	-4602678819172646912    # double -8
.LCPI0_40:
	.quad	4613937818241073152     # double 3
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
	subq	$160, %rsp
	callq	init_monitor
	movl	$65537, %edi            # imm = 0x10001
	callq	enqueue_signature
	leaq	-152(%rbp), %rdi
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI0_2(%rip), %xmm2   # xmm2 = mem[0],zero
	movsd	.LCPI0_3(%rip), %xmm3   # xmm3 = mem[0],zero
	movl	$0, -116(%rbp)
	movsd	%xmm3, -40(%rbp)
	movsd	%xmm2, -32(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm0, -16(%rbp)
	movq	$1072497001, -56(%rbp)  # imm = 0x3FED0169
	movq	$0, -160(%rbp)
	xorl	%esi, %esi
	callq	gettimeofday
# BB#1:
	movl	$65538, %edi            # imm = 0x10002
	callq	enqueue_signature_with_call
	leaq	-8(%rbp), %rdi
	leaq	-96(%rbp), %rsi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-16(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	SolveCubic
# BB#2:
	movl	$65539, %edi            # imm = 0x10003
	callq	enqueue_signature
	movl	$0, -4(%rbp)
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movl	$65540, %edi            # imm = 0x10004
	callq	enqueue_signature
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB0_6
# BB#4:                                 #   in Loop: Header=BB0_3 Depth=1
	movl	$65541, %edi            # imm = 0x10005
	callq	enqueue_signature
	movsd	.LCPI0_3(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
# BB#5:                                 #   in Loop: Header=BB0_3 Depth=1
	movl	$65542, %edi            # imm = 0x10006
	callq	enqueue_signature
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_3
.LBB0_6:
	movl	$65543, %edi            # imm = 0x10007
	callq	enqueue_signature_with_call
	leaq	-8(%rbp), %rdi
	leaq	-96(%rbp), %rsi
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI0_4(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI0_5(%rip), %xmm2   # xmm2 = mem[0],zero
	movsd	%xmm2, -32(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-16(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	SolveCubic
# BB#7:
	movl	$65544, %edi            # imm = 0x10008
	callq	enqueue_signature
	movl	$0, -4(%rbp)
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	movl	$65545, %edi            # imm = 0x10009
	callq	enqueue_signature
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB0_11
# BB#9:                                 #   in Loop: Header=BB0_8 Depth=1
	movl	$65546, %edi            # imm = 0x1000A
	callq	enqueue_signature
	movsd	.LCPI0_3(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
# BB#10:                                #   in Loop: Header=BB0_8 Depth=1
	movl	$65547, %edi            # imm = 0x1000B
	callq	enqueue_signature
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_8
.LBB0_11:
	movl	$65548, %edi            # imm = 0x1000C
	callq	enqueue_signature_with_call
	leaq	-8(%rbp), %rdi
	leaq	-96(%rbp), %rsi
	movsd	.LCPI0_6(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI0_7(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI0_8(%rip), %xmm2   # xmm2 = mem[0],zero
	movsd	%xmm2, -32(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-16(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	SolveCubic
# BB#12:
	movl	$65549, %edi            # imm = 0x1000D
	callq	enqueue_signature
	movl	$0, -4(%rbp)
.LBB0_13:                               # =>This Inner Loop Header: Depth=1
	movl	$65550, %edi            # imm = 0x1000E
	callq	enqueue_signature
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB0_16
# BB#14:                                #   in Loop: Header=BB0_13 Depth=1
	movl	$65551, %edi            # imm = 0x1000F
	callq	enqueue_signature
	movsd	.LCPI0_3(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
# BB#15:                                #   in Loop: Header=BB0_13 Depth=1
	movl	$65552, %edi            # imm = 0x10010
	callq	enqueue_signature
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_13
.LBB0_16:
	movl	$65553, %edi            # imm = 0x10011
	callq	enqueue_signature_with_call
	leaq	-8(%rbp), %rdi
	leaq	-96(%rbp), %rsi
	movsd	.LCPI0_9(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI0_3(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI0_10(%rip), %xmm2  # xmm2 = mem[0],zero
	movsd	%xmm2, -32(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-16(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	SolveCubic
# BB#17:
	movl	$65554, %edi            # imm = 0x10012
	callq	enqueue_signature
	movl	$0, -4(%rbp)
.LBB0_18:                               # =>This Inner Loop Header: Depth=1
	movl	$65555, %edi            # imm = 0x10013
	callq	enqueue_signature
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB0_21
# BB#19:                                #   in Loop: Header=BB0_18 Depth=1
	movl	$65556, %edi            # imm = 0x10014
	callq	enqueue_signature
	movsd	.LCPI0_40(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
# BB#20:                                #   in Loop: Header=BB0_18 Depth=1
	movl	$65557, %edi            # imm = 0x10015
	callq	enqueue_signature
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_18
.LBB0_21:
	movl	$65558, %edi            # imm = 0x10016
	callq	enqueue_signature_with_call
	leaq	-8(%rbp), %rdi
	leaq	-96(%rbp), %rsi
	movsd	.LCPI0_11(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI0_12(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	.LCPI0_13(%rip), %xmm2  # xmm2 = mem[0],zero
	movsd	%xmm2, -32(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-16(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	SolveCubic
# BB#22:
	movl	$65559, %edi            # imm = 0x10017
	callq	enqueue_signature
	movl	$0, -4(%rbp)
.LBB0_23:                               # =>This Inner Loop Header: Depth=1
	movl	$65560, %edi            # imm = 0x10018
	callq	enqueue_signature
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB0_26
# BB#24:                                #   in Loop: Header=BB0_23 Depth=1
	movl	$65561, %edi            # imm = 0x10019
	callq	enqueue_signature
	movsd	.LCPI0_39(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
# BB#25:                                #   in Loop: Header=BB0_23 Depth=1
	movl	$65562, %edi            # imm = 0x1001A
	callq	enqueue_signature
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_23
.LBB0_26:
	movl	$65563, %edi            # imm = 0x1001B
	callq	enqueue_signature_with_call
	leaq	-8(%rbp), %rdi
	leaq	-96(%rbp), %rsi
	movsd	.LCPI0_14(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI0_15(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	.LCPI0_16(%rip), %xmm2  # xmm2 = mem[0],zero
	movsd	%xmm2, -32(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-16(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	SolveCubic
# BB#27:
	movl	$65564, %edi            # imm = 0x1001C
	callq	enqueue_signature
	movl	$0, -4(%rbp)
.LBB0_28:                               # =>This Inner Loop Header: Depth=1
	movl	$65565, %edi            # imm = 0x1001D
	callq	enqueue_signature
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB0_31
# BB#29:                                #   in Loop: Header=BB0_28 Depth=1
	movl	$65566, %edi            # imm = 0x1001E
	callq	enqueue_signature
	movsd	.LCPI0_38(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
# BB#30:                                #   in Loop: Header=BB0_28 Depth=1
	movl	$65567, %edi            # imm = 0x1001F
	callq	enqueue_signature
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_28
.LBB0_31:
	movl	$65568, %edi            # imm = 0x10020
	callq	enqueue_signature_with_call
	leaq	-8(%rbp), %rdi
	leaq	-96(%rbp), %rsi
	movsd	.LCPI0_17(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI0_18(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	.LCPI0_19(%rip), %xmm2  # xmm2 = mem[0],zero
	movsd	%xmm2, -32(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-16(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	SolveCubic
# BB#32:
	movl	$65569, %edi            # imm = 0x10021
	callq	enqueue_signature
	movl	$0, -4(%rbp)
.LBB0_33:                               # =>This Inner Loop Header: Depth=1
	movl	$65570, %edi            # imm = 0x10022
	callq	enqueue_signature
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB0_36
# BB#34:                                #   in Loop: Header=BB0_33 Depth=1
	movl	$65571, %edi            # imm = 0x10023
	callq	enqueue_signature
	movsd	.LCPI0_37(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
# BB#35:                                #   in Loop: Header=BB0_33 Depth=1
	movl	$65572, %edi            # imm = 0x10024
	callq	enqueue_signature
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_33
.LBB0_36:
	movl	$65573, %edi            # imm = 0x10025
	callq	enqueue_signature_with_call
	leaq	-8(%rbp), %rdi
	leaq	-96(%rbp), %rsi
	movsd	.LCPI0_20(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI0_21(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	.LCPI0_22(%rip), %xmm2  # xmm2 = mem[0],zero
	movsd	%xmm2, -32(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-16(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	SolveCubic
# BB#37:
	movl	$65574, %edi            # imm = 0x10026
	callq	enqueue_signature
	movl	$0, -4(%rbp)
.LBB0_38:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_40 Depth 2
                                        #       Child Loop BB0_42 Depth 3
                                        #         Child Loop BB0_44 Depth 4
                                        #           Child Loop BB0_46 Depth 5
	movl	$65575, %edi            # imm = 0x10027
	callq	enqueue_signature
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB0_57
# BB#39:                                #   in Loop: Header=BB0_38 Depth=1
	movl	$65576, %edi            # imm = 0x10028
	callq	enqueue_signature
	movsd	.LCPI0_3(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
.LBB0_40:                               #   Parent Loop BB0_38 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_42 Depth 3
                                        #         Child Loop BB0_44 Depth 4
                                        #           Child Loop BB0_46 Depth 5
	movl	$65577, %edi            # imm = 0x10029
	callq	enqueue_signature
	movsd	.LCPI0_30(%rip), %xmm0  # xmm0 = mem[0],zero
	ucomisd	-40(%rbp), %xmm0
	jbe	.LBB0_55
# BB#41:                                #   in Loop: Header=BB0_40 Depth=2
	movl	$65578, %edi            # imm = 0x1002A
	callq	enqueue_signature
	movsd	.LCPI0_30(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
.LBB0_42:                               #   Parent Loop BB0_38 Depth=1
                                        #     Parent Loop BB0_40 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_44 Depth 4
                                        #           Child Loop BB0_46 Depth 5
	movl	$65579, %edi            # imm = 0x1002B
	callq	enqueue_signature
	xorps	%xmm0, %xmm0
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_53
# BB#43:                                #   in Loop: Header=BB0_42 Depth=3
	movl	$65580, %edi            # imm = 0x1002C
	callq	enqueue_signature
	movsd	.LCPI0_12(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
.LBB0_44:                               #   Parent Loop BB0_38 Depth=1
                                        #     Parent Loop BB0_40 Depth=2
                                        #       Parent Loop BB0_42 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_46 Depth 5
	movl	$65581, %edi            # imm = 0x1002D
	callq	enqueue_signature
	movsd	.LCPI0_31(%rip), %xmm0  # xmm0 = mem[0],zero
	ucomisd	-24(%rbp), %xmm0
	jbe	.LBB0_51
# BB#45:                                #   in Loop: Header=BB0_44 Depth=4
	movl	$65582, %edi            # imm = 0x1002E
	callq	enqueue_signature
	movsd	.LCPI0_33(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	%xmm0, -16(%rbp)
.LBB0_46:                               #   Parent Loop BB0_38 Depth=1
                                        #     Parent Loop BB0_40 Depth=2
                                        #       Parent Loop BB0_42 Depth=3
                                        #         Parent Loop BB0_44 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movl	$65583, %edi            # imm = 0x1002F
	callq	enqueue_signature
	movsd	.LCPI0_34(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_49
# BB#47:                                #   in Loop: Header=BB0_46 Depth=5
	movl	$65584, %edi            # imm = 0x10030
	callq	enqueue_signature_with_call
	leaq	-8(%rbp), %rdi
	leaq	-96(%rbp), %rsi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-16(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	SolveCubic
# BB#48:                                #   in Loop: Header=BB0_46 Depth=5
	movl	$65585, %edi            # imm = 0x10031
	callq	enqueue_signature
	movsd	.LCPI0_36(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -16(%rbp)
	jmp	.LBB0_46
.LBB0_49:                               #   in Loop: Header=BB0_44 Depth=4
	movl	$65586, %edi            # imm = 0x10032
	callq	enqueue_signature
# BB#50:                                #   in Loop: Header=BB0_44 Depth=4
	movl	$65587, %edi            # imm = 0x10033
	callq	enqueue_signature
	movsd	.LCPI0_35(%rip), %xmm0  # xmm0 = mem[0],zero
	addsd	-24(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	jmp	.LBB0_44
.LBB0_51:                               #   in Loop: Header=BB0_42 Depth=3
	movl	$65588, %edi            # imm = 0x10034
	callq	enqueue_signature
# BB#52:                                #   in Loop: Header=BB0_42 Depth=3
	movl	$65589, %edi            # imm = 0x10035
	callq	enqueue_signature
	movsd	.LCPI0_32(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -32(%rbp)
	jmp	.LBB0_42
.LBB0_53:                               #   in Loop: Header=BB0_40 Depth=2
	movl	$65590, %edi            # imm = 0x10036
	callq	enqueue_signature
# BB#54:                                #   in Loop: Header=BB0_40 Depth=2
	movl	$65591, %edi            # imm = 0x10037
	callq	enqueue_signature
	movsd	.LCPI0_3(%rip), %xmm0   # xmm0 = mem[0],zero
	addsd	-40(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	jmp	.LBB0_40
.LBB0_55:                               #   in Loop: Header=BB0_38 Depth=1
	movl	$65592, %edi            # imm = 0x10038
	callq	enqueue_signature
# BB#56:                                #   in Loop: Header=BB0_38 Depth=1
	movl	$65593, %edi            # imm = 0x10039
	callq	enqueue_signature
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_38
.LBB0_57:
	movl	$65594, %edi            # imm = 0x1003A
	callq	enqueue_signature
	movl	$0, -4(%rbp)
.LBB0_58:                               # =>This Inner Loop Header: Depth=1
	movl	$65595, %edi            # imm = 0x1003B
	callq	enqueue_signature
	cmpl	$100000, -4(%rbp)       # imm = 0x186A0
	jge	.LBB0_61
# BB#59:                                #   in Loop: Header=BB0_58 Depth=1
	movl	$65596, %edi            # imm = 0x1003C
	callq	enqueue_signature_with_call
	leaq	-112(%rbp), %rsi
	movslq	-4(%rbp), %rdi
	callq	usqrt
# BB#60:                                #   in Loop: Header=BB0_58 Depth=1
	movl	$65597, %edi            # imm = 0x1003D
	callq	enqueue_signature
	movl	-4(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_58
.LBB0_61:
	movl	$65598, %edi            # imm = 0x1003E
	callq	enqueue_signature
	movq	$1072497001, -56(%rbp)  # imm = 0x3FED0169
.LBB0_62:                               # =>This Inner Loop Header: Depth=1
	movl	$65599, %edi            # imm = 0x1003F
	callq	enqueue_signature
	cmpq	$1072513385, -56(%rbp)  # imm = 0x3FED4169
	jae	.LBB0_65
# BB#63:                                #   in Loop: Header=BB0_62 Depth=1
	movl	$65600, %edi            # imm = 0x10040
	callq	enqueue_signature_with_call
	leaq	-112(%rbp), %rsi
	movq	-56(%rbp), %rdi
	callq	usqrt
# BB#64:                                #   in Loop: Header=BB0_62 Depth=1
	movl	$65601, %edi            # imm = 0x10041
	callq	enqueue_signature
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB0_62
.LBB0_65:
	movl	$65602, %edi            # imm = 0x10042
	callq	enqueue_signature
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -48(%rbp)
.LBB0_66:                               # =>This Inner Loop Header: Depth=1
	movl	$65603, %edi            # imm = 0x10043
	callq	enqueue_signature
	movsd	.LCPI0_23(%rip), %xmm0  # xmm0 = mem[0],zero
	ucomisd	-48(%rbp), %xmm0
	jb	.LBB0_70
# BB#67:                                #   in Loop: Header=BB0_66 Depth=1
	movl	$65604, %edi            # imm = 0x10044
	callq	enqueue_signature
	movsd	.LCPI0_3(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	atan
# BB#68:                                #   in Loop: Header=BB0_66 Depth=1
	movl	$65605, %edi            # imm = 0x10045
	callq	enqueue_signature
# BB#69:                                #   in Loop: Header=BB0_66 Depth=1
	movl	$65606, %edi            # imm = 0x10046
	callq	enqueue_signature
	movsd	.LCPI0_29(%rip), %xmm0  # xmm0 = mem[0],zero
	addsd	-48(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	jmp	.LBB0_66
.LBB0_70:
	movl	$65607, %edi            # imm = 0x10047
	callq	enqueue_signature
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -48(%rbp)
.LBB0_71:                               # =>This Inner Loop Header: Depth=1
	movl	$65608, %edi            # imm = 0x10048
	callq	enqueue_signature
	movsd	.LCPI0_3(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -64(%rbp)        # 8-byte Spill
	callq	atan
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
# BB#72:                                #   in Loop: Header=BB0_71 Depth=1
	movl	$65609, %edi            # imm = 0x10049
	callq	enqueue_signature
	movsd	.LCPI0_24(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI0_25(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	.LCPI0_26(%rip), %xmm2  # xmm2 = mem[0],zero
	mulsd	-104(%rbp), %xmm2       # 8-byte Folded Reload
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	ucomisd	-64(%rbp), %xmm2        # 8-byte Folded Reload
	jb	.LBB0_77
# BB#73:                                #   in Loop: Header=BB0_71 Depth=1
	movl	$65610, %edi            # imm = 0x1004A
	callq	enqueue_signature
	movsd	.LCPI0_3(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI0_27(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	-48(%rbp), %xmm1
	callq	atan
# BB#74:                                #   in Loop: Header=BB0_71 Depth=1
	movl	$65611, %edi            # imm = 0x1004B
	callq	enqueue_signature
# BB#75:                                #   in Loop: Header=BB0_71 Depth=1
	movl	$65612, %edi            # imm = 0x1004C
	callq	enqueue_signature
	movsd	.LCPI0_3(%rip), %xmm0   # xmm0 = mem[0],zero
	callq	atan
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
# BB#76:                                #   in Loop: Header=BB0_71 Depth=1
	movl	$65613, %edi            # imm = 0x1004D
	callq	enqueue_signature
	movsd	.LCPI0_28(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI0_26(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	-64(%rbp), %xmm1        # 8-byte Folded Reload
	divsd	%xmm0, %xmm1
	addsd	-48(%rbp), %xmm1
	movsd	%xmm1, -48(%rbp)
	jmp	.LBB0_71
.LBB0_77:
	movl	$65614, %edi            # imm = 0x1004E
	callq	enqueue_signature
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	printf
# BB#78:
	movl	$65615, %edi            # imm = 0x1004F
	callq	enqueue_signature
	leaq	-136(%rbp), %rdi
	xorl	%esi, %esi
	callq	gettimeofday
# BB#79:
	movl	$65616, %edi            # imm = 0x10050
	callq	enqueue_signature
	movabsq	$.L.str.1, %rdi
	movq	-136(%rbp), %rax
	subq	-152(%rbp), %rax
	imulq	$1000000, %rax, %rax    # imm = 0xF4240
	movq	-128(%rbp), %rsi
	subq	-144(%rbp), %rsi
	addq	%rax, %rsi
	movb	$0, %al
	callq	printf
# BB#80:
	movl	$65617, %edi            # imm = 0x10051
	callq	enqueue_signature_with_remainder_process
	movl	$1, is_signature_queue_full
	xorl	%eax, %eax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function rad2deg
.LCPI1_0:
	.quad	4607182418800017408     # double 1
.LCPI1_1:
	.quad	4640537203540230144     # double 180
.LCPI1_2:
	.quad	4616189618054758400     # double 4
	.text
	.globl	rad2deg
	.p2align	4, 0x90
	.type	rad2deg,@function
rad2deg:                                # @rad2deg
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
	subq	$32, %rsp
	movsd	%xmm0, -8(%rbp)         # 8-byte Spill
	movl	$327681, %edi           # imm = 0x50001
	callq	enqueue_signature
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	-8(%rbp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	%xmm2, -24(%rbp)
	mulsd	-24(%rbp), %xmm1
	movsd	%xmm1, -8(%rbp)         # 8-byte Spill
	callq	atan
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
# BB#1:
	movl	$327682, %edi           # imm = 0x50002
	callq	enqueue_signature_with_return
	movsd	.LCPI1_2(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	-16(%rbp), %xmm1        # 8-byte Folded Reload
	movsd	-8(%rbp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	rad2deg, .Lfunc_end1-rad2deg
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function deg2rad
.LCPI2_0:
	.quad	4607182418800017408     # double 1
.LCPI2_1:
	.quad	4640537203540230144     # double 180
.LCPI2_2:
	.quad	4616189618054758400     # double 4
	.text
	.globl	deg2rad
	.p2align	4, 0x90
	.type	deg2rad,@function
deg2rad:                                # @deg2rad
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
	movsd	%xmm0, -8(%rbp)         # 8-byte Spill
	movl	$393217, %edi           # imm = 0x60001
	callq	enqueue_signature
	movsd	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, -16(%rbp)
	callq	atan
	movsd	%xmm0, -8(%rbp)         # 8-byte Spill
# BB#1:
	movl	$393218, %edi           # imm = 0x60002
	callq	enqueue_signature_with_return
	movsd	.LCPI2_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI2_2(%rip), %xmm0   # xmm0 = mem[0],zero
	mulsd	-8(%rbp), %xmm0         # 8-byte Folded Reload
	mulsd	-16(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	deg2rad, .Lfunc_end2-deg2rad
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function SolveCubic
.LCPI3_0:
	.long	3225419776              # float -3
.LCPI3_1:
	.long	1091567616              # float 9
.LCPI3_2:
	.long	1104674816              # float 27
.LCPI3_3:
	.long	1113063424              # float 54
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI3_4:
	.quad	9223372036854775807     # double NaN
	.quad	9223372036854775807     # double NaN
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI3_5:
	.quad	4599676419421066581     # double 0.33333333333333331
.LCPI3_6:
	.quad	4613937818241073152     # double 3
.LCPI3_7:
	.quad	-4611686018427387904    # double -2
.LCPI3_8:
	.quad	4607182418800017408     # double 1
.LCPI3_9:
	.quad	4611686018427387904     # double 2
.LCPI3_10:
	.quad	4616189618054758400     # double 4
.LCPI3_11:
	.quad	0                       # double 0
	.text
	.globl	SolveCubic
	.p2align	4, 0x90
	.type	SolveCubic,@function
SolveCubic:                             # @SolveCubic
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
	pushq	%r14
	pushq	%rbx
	subq	$336, %rsp              # imm = 0x150
.Lcfi12:
	.cfi_offset %rbx, -32
.Lcfi13:
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movsd	%xmm3, -32(%rbp)        # 8-byte Spill
	movsd	%xmm2, -48(%rbp)        # 8-byte Spill
	movsd	%xmm1, -64(%rbp)        # 8-byte Spill
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	movl	$458753, %edi           # imm = 0x70001
	callq	enqueue_signature
	movsd	-152(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -312(%rbp)
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -304(%rbp)
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -296(%rbp)
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -288(%rbp)
	movq	%rbx, -128(%rbp)
	movq	%r14, -56(%rbp)
	movsd	-304(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-312(%rbp), %xmm1       # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -280(%rbp)
	fldl	-280(%rbp)
	fstpt	-112(%rbp)
	movsd	-296(%rbp), %xmm0       # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -272(%rbp)
	fldl	-272(%rbp)
	fstpt	-352(%rbp)
	movsd	-288(%rbp), %xmm0       # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -264(%rbp)
	fldl	-264(%rbp)
	fstpt	-336(%rbp)
	fldt	-112(%rbp)
	fld	%st(0)
	fmul	%st(1)
	fldt	-352(%rbp)
	flds	.LCPI3_0(%rip)
	fmul	%st(1)
	faddp	%st(2)
	flds	.LCPI3_1(%rip)
	fdivr	%st(0), %st(2)
	fxch	%st(2)
	fstpt	-96(%rbp)
	fld	%st(2)
	fadd	%st(3)
	fmul	%st(3)
	fmul	%st(3)
	fxch	%st(3)
	fmulp	%st(2)
	fmulp	%st(1)
	fsubrp	%st(1)
	fldt	-336(%rbp)
	flds	.LCPI3_2(%rip)
	fmulp	%st(1)
	faddp	%st(1)
	flds	.LCPI3_3(%rip)
	fdivrp	%st(1)
	fstpt	-144(%rbp)
	fldt	-144(%rbp)
	fmul	%st(0), %st(0)
	fldt	-96(%rbp)
	fld	%st(0)
	fmul	%st(1)
	fmulp	%st(1)
	fsubrp	%st(1)
	fstpl	-256(%rbp)
	movsd	-256(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)
	xorps	%xmm0, %xmm0
	ucomisd	-120(%rbp), %xmm0
	jb	.LBB3_12
# BB#1:
	movl	$458754, %edi           # imm = 0x70002
	callq	enqueue_signature
	movq	-128(%rbp), %rax
	movl	$3, (%rax)
	fldt	-144(%rbp)
	fstpt	-32(%rbp)               # 10-byte Folded Spill
	fldt	-96(%rbp)
	fld	%st(0)
	fmul	%st(1)
	fmulp	%st(1)
	fstpl	-232(%rbp)
	movsd	-232(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	sqrt
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
# BB#2:
	movl	$458755, %edi           # imm = 0x70003
	callq	enqueue_signature
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -224(%rbp)
	fldl	-224(%rbp)
	fldt	-32(%rbp)               # 10-byte Folded Reload
	fdivp	%st(1)
	fstpl	-216(%rbp)
	movsd	-216(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	acos
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
# BB#3:
	movl	$458756, %edi           # imm = 0x70004
	callq	enqueue_signature
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)
	fldt	-96(%rbp)
	fstpl	-208(%rbp)
	movsd	-208(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	sqrt
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
# BB#4:
	movl	$458757, %edi           # imm = 0x70005
	callq	enqueue_signature
	movsd	.LCPI3_6(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI3_7(%rip), %xmm0   # xmm0 = mem[0],zero
	mulsd	-32(%rbp), %xmm0        # 8-byte Folded Reload
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	callq	cos
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
# BB#5:
	movl	$458758, %edi           # imm = 0x70006
	callq	enqueue_signature
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	-48(%rbp), %xmm0        # 8-byte Folded Reload
	movsd	%xmm0, -200(%rbp)
	fldl	-200(%rbp)
	fldt	-112(%rbp)
	flds	.LCPI3_0(%rip)
	fdivrp	%st(1)
	faddp	%st(1)
	movq	-56(%rbp), %rax
	fstpl	(%rax)
	fldt	-96(%rbp)
	fstpl	-192(%rbp)
	movsd	-192(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	sqrt
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
# BB#6:
	movl	$458759, %edi           # imm = 0x70007
	callq	enqueue_signature
	movsd	.LCPI3_8(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI3_7(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	-32(%rbp), %xmm1        # 8-byte Folded Reload
	movsd	%xmm1, -32(%rbp)        # 8-byte Spill
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -48(%rbp)        # 8-byte Spill
	callq	atan
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
# BB#7:
	movl	$458760, %edi           # imm = 0x70008
	callq	enqueue_signature
	movsd	.LCPI3_6(%rip), %xmm3   # xmm3 = mem[0],zero
	movsd	.LCPI3_9(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI3_10(%rip), %xmm2  # xmm2 = mem[0],zero
	mulsd	-64(%rbp), %xmm2        # 8-byte Folded Reload
	mulsd	%xmm1, %xmm2
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm2, %xmm0
	divsd	%xmm3, %xmm0
	callq	cos
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
# BB#8:
	movl	$458761, %edi           # imm = 0x70009
	callq	enqueue_signature
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	-48(%rbp), %xmm0        # 8-byte Folded Reload
	movsd	%xmm0, -184(%rbp)
	fldl	-184(%rbp)
	fldt	-112(%rbp)
	flds	.LCPI3_0(%rip)
	fdivrp	%st(1)
	faddp	%st(1)
	movq	-56(%rbp), %rax
	fstpl	8(%rax)
	fldt	-96(%rbp)
	fstpl	-176(%rbp)
	movsd	-176(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	sqrt
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
# BB#9:
	movl	$458762, %edi           # imm = 0x7000A
	callq	enqueue_signature
	movsd	.LCPI3_8(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI3_7(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	-32(%rbp), %xmm1        # 8-byte Folded Reload
	movsd	%xmm1, -32(%rbp)        # 8-byte Spill
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -48(%rbp)        # 8-byte Spill
	callq	atan
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
# BB#10:
	movl	$458763, %edi           # imm = 0x7000B
	callq	enqueue_signature
	movsd	.LCPI3_6(%rip), %xmm2   # xmm2 = mem[0],zero
	movsd	.LCPI3_10(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	-64(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	mulsd	%xmm1, %xmm3
	mulsd	%xmm1, %xmm3
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm3, %xmm0
	divsd	%xmm2, %xmm0
	callq	cos
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
# BB#11:
	movl	$458764, %edi           # imm = 0x7000C
	callq	enqueue_signature
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	-48(%rbp), %xmm0        # 8-byte Folded Reload
	movsd	%xmm0, -168(%rbp)
	fldl	-168(%rbp)
	fldt	-112(%rbp)
	flds	.LCPI3_0(%rip)
	fdivrp	%st(1)
	faddp	%st(1)
	fstpl	-160(%rbp)
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	jmp	.LBB3_16
.LBB3_12:
	movl	$458765, %edi           # imm = 0x7000D
	callq	enqueue_signature
	movq	-128(%rbp), %rax
	movl	$1, (%rax)
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	sqrt
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
# BB#13:
	movl	$458766, %edi           # imm = 0x7000E
	callq	enqueue_signature
	fldt	-144(%rbp)
	fstpl	-248(%rbp)
	movsd	-248(%rbp), %xmm0       # xmm0 = mem[0],zero
	movaps	.LCPI3_4(%rip), %xmm1   # xmm1 = [nan,nan]
	pand	%xmm0, %xmm1
	movaps	%xmm1, -48(%rbp)        # 16-byte Spill
# BB#14:
	movl	$458767, %edi           # imm = 0x7000F
	callq	enqueue_signature
	movsd	.LCPI3_5(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	-48(%rbp), %xmm0        # 16-byte Folded Reload
	callq	pow
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
# BB#15:
	movl	$458768, %edi           # imm = 0x70010
	callq	enqueue_signature
	movq	-56(%rbp), %rax
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, (%rax)
	fldt	-96(%rbp)
	movq	-56(%rbp), %rax
	fldl	(%rax)
	fdivr	%st(0), %st(1)
	faddp	%st(1)
	fstpl	(%rax)
	fldt	-144(%rbp)
	fldz
	fucompi	%st(1)
	fstp	%st(0)
	movl	$1, %eax
	movl	$-1, %ecx
	cmoval	%eax, %ecx
	cvtsi2sdl	%ecx, %xmm0
	movq	-56(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, (%rax)
	fldt	-112(%rbp)
	flds	.LCPI3_0(%rip)
	fdivrp	%st(1)
	movq	-56(%rbp), %rax
	fldl	(%rax)
	faddp	%st(1)
	fstpl	-240(%rbp)
	movsd	-240(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, (%rax)
.LBB3_16:
	movl	$458769, %edi           # imm = 0x70011
	callq	enqueue_signature_with_return
	addq	$336, %rsp              # imm = 0x150
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	SolveCubic, .Lfunc_end3-SolveCubic
	.cfi_endproc
                                        # -- End function
	.globl	usqrt                   # -- Begin function usqrt
	.p2align	4, 0x90
	.type	usqrt,@function
usqrt:                                  # @usqrt
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi14:
	.cfi_def_cfa_offset 16
.Lcfi15:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi16:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$48, %rsp
.Lcfi17:
	.cfi_offset %rbx, -32
.Lcfi18:
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$851969, %edi           # imm = 0xD0001
	callq	enqueue_signature
	movq	%rbx, -56(%rbp)
	movq	%r14, -64(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -20(%rbp)
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	movl	$851970, %edi           # imm = 0xD0002
	callq	enqueue_signature
	cmpl	$32, -20(%rbp)
	jge	.LBB4_6
# BB#2:                                 #   in Loop: Header=BB4_1 Depth=1
	movl	$851971, %edi           # imm = 0xD0003
	callq	enqueue_signature
	movl	$3221225472, %eax       # imm = 0xC0000000
	movq	-40(%rbp), %rcx
	shlq	$2, %rcx
	andq	-56(%rbp), %rax
	shrq	$30, %rax
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	shlq	$2, %rax
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jb	.LBB4_4
# BB#3:                                 #   in Loop: Header=BB4_1 Depth=1
	movl	$851972, %edi           # imm = 0xD0004
	callq	enqueue_signature
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -40(%rbp)
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
.LBB4_4:                                #   in Loop: Header=BB4_1 Depth=1
	movl	$851973, %edi           # imm = 0xD0005
	callq	enqueue_signature
# BB#5:                                 #   in Loop: Header=BB4_1 Depth=1
	movl	$851974, %edi           # imm = 0xD0006
	callq	enqueue_signature
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB4_1
.LBB4_6:
	movl	$851975, %edi           # imm = 0xD0007
	callq	enqueue_signature
	movq	-64(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, (%rax)
# BB#7:
	movl	$851976, %edi           # imm = 0xD0008
	callq	enqueue_signature_with_return
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end4:
	.size	usqrt, .Lfunc_end4-usqrt
	.cfi_endproc
                                        # -- End function
	.globl	CallcheckerSet          # -- Begin function CallcheckerSet
	.p2align	4, 0x90
	.type	CallcheckerSet,@function
CallcheckerSet:                         # @CallcheckerSet
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Lcfi19:
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
.Lfunc_end5:
	.size	CallcheckerSet, .Lfunc_end5-CallcheckerSet
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	" [target finished!]\n"
	.size	.L.str, 21

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	" [target] Execution Time: %ld\n"
	.size	.L.str.1, 31


	.ident	"clang version 5.0.0 (tags/RELEASE_500/final)"
	.ident	"clang version 5.0.0 (tags/RELEASE_500/final)"
	.ident	"clang version 5.0.0 (tags/RELEASE_500/final)"
	.ident	"clang version 5.0.0 (tags/RELEASE_500/final)"
	.section	".note.GNU-stack","",@progbits
