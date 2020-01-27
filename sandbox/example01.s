	.file	"example01.cpp"
	.text
	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.text
	.globl	main
	.type	main, @function
main:
.LFB1838:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1838
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	$1, -64(%rbp)
	movq	-64(%rbp), %rax
	addq	%rax, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rdi
.LEHB0:
	call	_ZNSolsEl@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	movq	-64(%rbp), %rax
	salq	$32, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSolsEl@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
.LEHE0:
	leaq	-73(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIlEC1Ev
	movq	$1, -72(%rbp)
	leaq	-73(%rbp), %rcx
	leaq	-72(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
.LEHB1:
	call	_ZNSt6vectorIlSaIlEEC1EmRKlRKS0_
.LEHE1:
	leaq	-73(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIlED1Ev
	leaq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIlSaIlEEixEm
	movq	(%rax), %rax
	salq	$32, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rdi
.LEHB2:
	call	_ZNSolsEl@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
.LEHE2:
	movl	$0, %ebx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIlSaIlEED1Ev
	movl	%ebx, %eax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L5
	jmp	.L8
.L6:
	movq	%rax, %rbx
	leaq	-73(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIlED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB3:
	call	_Unwind_Resume@PLT
.L7:
	movq	%rax, %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIlSaIlEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE3:
.L8:
	call	__stack_chk_fail@PLT
.L5:
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1838:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA1838:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1838-.LLSDACSB1838
.LLSDACSB1838:
	.uleb128 .LEHB0-.LFB1838
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1838
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L6-.LFB1838
	.uleb128 0
	.uleb128 .LEHB2-.LFB1838
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L7-.LFB1838
	.uleb128 0
	.uleb128 .LEHB3-.LFB1838
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE1838:
	.text
	.size	main, .-main
	.section	.text._ZNSaIlEC2Ev,"axG",@progbits,_ZNSaIlEC5Ev,comdat
	.align 2
	.weak	_ZNSaIlEC2Ev
	.type	_ZNSaIlEC2Ev, @function
_ZNSaIlEC2Ev:
.LFB2080:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIlEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2080:
	.size	_ZNSaIlEC2Ev, .-_ZNSaIlEC2Ev
	.weak	_ZNSaIlEC1Ev
	.set	_ZNSaIlEC1Ev,_ZNSaIlEC2Ev
	.section	.text._ZNSaIlED2Ev,"axG",@progbits,_ZNSaIlED5Ev,comdat
	.align 2
	.weak	_ZNSaIlED2Ev
	.type	_ZNSaIlED2Ev, @function
_ZNSaIlED2Ev:
.LFB2083:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIlED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2083:
	.size	_ZNSaIlED2Ev, .-_ZNSaIlED2Ev
	.weak	_ZNSaIlED1Ev
	.set	_ZNSaIlED1Ev,_ZNSaIlED2Ev
	.section	.text._ZNSt6vectorIlSaIlEEC2EmRKlRKS0_,"axG",@progbits,_ZNSt6vectorIlSaIlEEC5EmRKlRKS0_,comdat
	.align 2
	.weak	_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_
	.type	_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_, @function
_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_:
.LFB2086:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2086
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB4:
	call	_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_
.LEHE4:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB5:
	call	_ZNSt6vectorIlSaIlEE18_M_fill_initializeEmRKl
.LEHE5:
	jmp	.L14
.L13:
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIlSaIlEED2Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB6:
	call	_Unwind_Resume@PLT
.LEHE6:
.L14:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2086:
	.section	.gcc_except_table
.LLSDA2086:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2086-.LLSDACSB2086
.LLSDACSB2086:
	.uleb128 .LEHB4-.LFB2086
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB2086
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L13-.LFB2086
	.uleb128 0
	.uleb128 .LEHB6-.LFB2086
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSE2086:
	.section	.text._ZNSt6vectorIlSaIlEEC2EmRKlRKS0_,"axG",@progbits,_ZNSt6vectorIlSaIlEEC5EmRKlRKS0_,comdat
	.size	_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_, .-_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_
	.weak	_ZNSt6vectorIlSaIlEEC1EmRKlRKS0_
	.set	_ZNSt6vectorIlSaIlEEC1EmRKlRKS0_,_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_
	.section	.text._ZNSt6vectorIlSaIlEED2Ev,"axG",@progbits,_ZNSt6vectorIlSaIlEED5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorIlSaIlEED2Ev
	.type	_ZNSt6vectorIlSaIlEED2Ev, @function
_ZNSt6vectorIlSaIlEED2Ev:
.LFB2089:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2089
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIPllEvT_S1_RSaIT0_E
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIlSaIlEED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2089:
	.section	.gcc_except_table
.LLSDA2089:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2089-.LLSDACSB2089
.LLSDACSB2089:
.LLSDACSE2089:
	.section	.text._ZNSt6vectorIlSaIlEED2Ev,"axG",@progbits,_ZNSt6vectorIlSaIlEED5Ev,comdat
	.size	_ZNSt6vectorIlSaIlEED2Ev, .-_ZNSt6vectorIlSaIlEED2Ev
	.weak	_ZNSt6vectorIlSaIlEED1Ev
	.set	_ZNSt6vectorIlSaIlEED1Ev,_ZNSt6vectorIlSaIlEED2Ev
	.section	.text._ZNSt6vectorIlSaIlEEixEm,"axG",@progbits,_ZNSt6vectorIlSaIlEEixEm,comdat
	.align 2
	.weak	_ZNSt6vectorIlSaIlEEixEm
	.type	_ZNSt6vectorIlSaIlEEixEm, @function
_ZNSt6vectorIlSaIlEEixEm:
.LFB2091:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2091:
	.size	_ZNSt6vectorIlSaIlEEixEm, .-_ZNSt6vectorIlSaIlEEixEm
	.section	.text._ZN9__gnu_cxx13new_allocatorIlEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIlEC5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIlEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIlEC2Ev, @function
_ZN9__gnu_cxx13new_allocatorIlEC2Ev:
.LFB2205:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2205:
	.size	_ZN9__gnu_cxx13new_allocatorIlEC2Ev, .-_ZN9__gnu_cxx13new_allocatorIlEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIlEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIlEC1Ev,_ZN9__gnu_cxx13new_allocatorIlEC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorIlED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIlED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIlED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIlED2Ev, @function
_ZN9__gnu_cxx13new_allocatorIlED2Ev:
.LFB2208:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2208:
	.size	_ZN9__gnu_cxx13new_allocatorIlED2Ev, .-_ZN9__gnu_cxx13new_allocatorIlED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIlED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIlED1Ev,_ZN9__gnu_cxx13new_allocatorIlED2Ev
	.section	.text._ZNSt12_Vector_baseIlSaIlEE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseIlSaIlEE12_Vector_implD5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIlSaIlEE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseIlSaIlEE12_Vector_implD2Ev, @function
_ZNSt12_Vector_baseIlSaIlEE12_Vector_implD2Ev:
.LFB2212:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIlED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2212:
	.size	_ZNSt12_Vector_baseIlSaIlEE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseIlSaIlEE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseIlSaIlEE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseIlSaIlEE12_Vector_implD1Ev,_ZNSt12_Vector_baseIlSaIlEE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_,"axG",@progbits,_ZNSt12_Vector_baseIlSaIlEEC5EmRKS0_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_
	.type	_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_, @function
_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_:
.LFB2214:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2214
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIlSaIlEE12_Vector_implC1ERKS0_
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB7:
	call	_ZNSt12_Vector_baseIlSaIlEE17_M_create_storageEm
.LEHE7:
	jmp	.L24
.L23:
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIlSaIlEE12_Vector_implD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB8:
	call	_Unwind_Resume@PLT
.LEHE8:
.L24:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2214:
	.section	.gcc_except_table
.LLSDA2214:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2214-.LLSDACSB2214
.LLSDACSB2214:
	.uleb128 .LEHB7-.LFB2214
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L23-.LFB2214
	.uleb128 0
	.uleb128 .LEHB8-.LFB2214
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSE2214:
	.section	.text._ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_,"axG",@progbits,_ZNSt12_Vector_baseIlSaIlEEC5EmRKS0_,comdat
	.size	_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_, .-_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_
	.weak	_ZNSt12_Vector_baseIlSaIlEEC1EmRKS0_
	.set	_ZNSt12_Vector_baseIlSaIlEEC1EmRKS0_,_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_
	.section	.text._ZNSt12_Vector_baseIlSaIlEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIlSaIlEED5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIlSaIlEED2Ev
	.type	_ZNSt12_Vector_baseIlSaIlEED2Ev, @function
_ZNSt12_Vector_baseIlSaIlEED2Ev:
.LFB2217:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2217
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIlSaIlEE12_Vector_implD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2217:
	.section	.gcc_except_table
.LLSDA2217:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2217-.LLSDACSB2217
.LLSDACSB2217:
.LLSDACSE2217:
	.section	.text._ZNSt12_Vector_baseIlSaIlEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIlSaIlEED5Ev,comdat
	.size	_ZNSt12_Vector_baseIlSaIlEED2Ev, .-_ZNSt12_Vector_baseIlSaIlEED2Ev
	.weak	_ZNSt12_Vector_baseIlSaIlEED1Ev
	.set	_ZNSt12_Vector_baseIlSaIlEED1Ev,_ZNSt12_Vector_baseIlSaIlEED2Ev
	.section	.text._ZNSt6vectorIlSaIlEE18_M_fill_initializeEmRKl,"axG",@progbits,_ZNSt6vectorIlSaIlEE18_M_fill_initializeEmRKl,comdat
	.align 2
	.weak	_ZNSt6vectorIlSaIlEE18_M_fill_initializeEmRKl
	.type	_ZNSt6vectorIlSaIlEE18_M_fill_initializeEmRKl, @function
_ZNSt6vectorIlSaIlEE18_M_fill_initializeEmRKl:
.LFB2219:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	call	_ZSt24__uninitialized_fill_n_aIPlmllET_S1_T0_RKT1_RSaIT2_E
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2219:
	.size	_ZNSt6vectorIlSaIlEE18_M_fill_initializeEmRKl, .-_ZNSt6vectorIlSaIlEE18_M_fill_initializeEmRKl
	.section	.text._ZNSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv, @function
_ZNSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv:
.LFB2220:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2220:
	.size	_ZNSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv
	.section	.text._ZSt8_DestroyIPllEvT_S1_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIPllEvT_S1_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIPllEvT_S1_RSaIT0_E
	.type	_ZSt8_DestroyIPllEvT_S1_RSaIT0_E, @function
_ZSt8_DestroyIPllEvT_S1_RSaIT0_E:
.LFB2221:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIPlEvT_S1_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2221:
	.size	_ZSt8_DestroyIPllEvT_S1_RSaIT0_E, .-_ZSt8_DestroyIPllEvT_S1_RSaIT0_E
	.section	.text._ZNSt12_Vector_baseIlSaIlEE12_Vector_implC2ERKS0_,"axG",@progbits,_ZNSt12_Vector_baseIlSaIlEE12_Vector_implC5ERKS0_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIlSaIlEE12_Vector_implC2ERKS0_
	.type	_ZNSt12_Vector_baseIlSaIlEE12_Vector_implC2ERKS0_, @function
_ZNSt12_Vector_baseIlSaIlEE12_Vector_implC2ERKS0_:
.LFB2258:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSaIlEC2ERKS_
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2258:
	.size	_ZNSt12_Vector_baseIlSaIlEE12_Vector_implC2ERKS0_, .-_ZNSt12_Vector_baseIlSaIlEE12_Vector_implC2ERKS0_
	.weak	_ZNSt12_Vector_baseIlSaIlEE12_Vector_implC1ERKS0_
	.set	_ZNSt12_Vector_baseIlSaIlEE12_Vector_implC1ERKS0_,_ZNSt12_Vector_baseIlSaIlEE12_Vector_implC2ERKS0_
	.section	.text._ZNSt12_Vector_baseIlSaIlEE17_M_create_storageEm,"axG",@progbits,_ZNSt12_Vector_baseIlSaIlEE17_M_create_storageEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIlSaIlEE17_M_create_storageEm
	.type	_ZNSt12_Vector_baseIlSaIlEE17_M_create_storageEm, @function
_ZNSt12_Vector_baseIlSaIlEE17_M_create_storageEm:
.LFB2260:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2260:
	.size	_ZNSt12_Vector_baseIlSaIlEE17_M_create_storageEm, .-_ZNSt12_Vector_baseIlSaIlEE17_M_create_storageEm
	.section	.text._ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm,"axG",@progbits,_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm
	.type	_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm, @function
_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm:
.LFB2261:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L34
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIlEE10deallocateERS0_Plm
.L34:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2261:
	.size	_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm, .-_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm
	.section	.text._ZSt24__uninitialized_fill_n_aIPlmllET_S1_T0_RKT1_RSaIT2_E,"axG",@progbits,_ZSt24__uninitialized_fill_n_aIPlmllET_S1_T0_RKT1_RSaIT2_E,comdat
	.weak	_ZSt24__uninitialized_fill_n_aIPlmllET_S1_T0_RKT1_RSaIT2_E
	.type	_ZSt24__uninitialized_fill_n_aIPlmllET_S1_T0_RKT1_RSaIT2_E, @function
_ZSt24__uninitialized_fill_n_aIPlmllET_S1_T0_RKT1_RSaIT2_E:
.LFB2262:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt20uninitialized_fill_nIPlmlET_S1_T0_RKT1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2262:
	.size	_ZSt24__uninitialized_fill_n_aIPlmllET_S1_T0_RKT1_RSaIT2_E, .-_ZSt24__uninitialized_fill_n_aIPlmllET_S1_T0_RKT1_RSaIT2_E
	.section	.text._ZSt8_DestroyIPlEvT_S1_,"axG",@progbits,_ZSt8_DestroyIPlEvT_S1_,comdat
	.weak	_ZSt8_DestroyIPlEvT_S1_
	.type	_ZSt8_DestroyIPlEvT_S1_, @function
_ZSt8_DestroyIPlEvT_S1_:
.LFB2263:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Destroy_auxILb1EE9__destroyIPlEEvT_S3_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2263:
	.size	_ZSt8_DestroyIPlEvT_S1_, .-_ZSt8_DestroyIPlEvT_S1_
	.section	.text._ZNSaIlEC2ERKS_,"axG",@progbits,_ZNSaIlEC5ERKS_,comdat
	.align 2
	.weak	_ZNSaIlEC2ERKS_
	.type	_ZNSaIlEC2ERKS_, @function
_ZNSaIlEC2ERKS_:
.LFB2299:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIlEC2ERKS1_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2299:
	.size	_ZNSaIlEC2ERKS_, .-_ZNSaIlEC2ERKS_
	.weak	_ZNSaIlEC1ERKS_
	.set	_ZNSaIlEC1ERKS_,_ZNSaIlEC2ERKS_
	.section	.text._ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm
	.type	_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm, @function
_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm:
.LFB2301:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L40
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIlEE8allocateERS0_m
	jmp	.L42
.L40:
	movl	$0, %eax
.L42:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2301:
	.size	_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm, .-_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm
	.section	.text._ZNSt16allocator_traitsISaIlEE10deallocateERS0_Plm,"axG",@progbits,_ZNSt16allocator_traitsISaIlEE10deallocateERS0_Plm,comdat
	.weak	_ZNSt16allocator_traitsISaIlEE10deallocateERS0_Plm
	.type	_ZNSt16allocator_traitsISaIlEE10deallocateERS0_Plm, @function
_ZNSt16allocator_traitsISaIlEE10deallocateERS0_Plm:
.LFB2302:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIlE10deallocateEPlm
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2302:
	.size	_ZNSt16allocator_traitsISaIlEE10deallocateERS0_Plm, .-_ZNSt16allocator_traitsISaIlEE10deallocateERS0_Plm
	.section	.text._ZSt20uninitialized_fill_nIPlmlET_S1_T0_RKT1_,"axG",@progbits,_ZSt20uninitialized_fill_nIPlmlET_S1_T0_RKT1_,comdat
	.weak	_ZSt20uninitialized_fill_nIPlmlET_S1_T0_RKT1_
	.type	_ZSt20uninitialized_fill_nIPlmlET_S1_T0_RKT1_, @function
_ZSt20uninitialized_fill_nIPlmlET_S1_T0_RKT1_:
.LFB2303:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movb	$1, -1(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPlmlEET_S3_T0_RKT1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2303:
	.size	_ZSt20uninitialized_fill_nIPlmlET_S1_T0_RKT1_, .-_ZSt20uninitialized_fill_nIPlmlET_S1_T0_RKT1_
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIPlEEvT_S3_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIPlEEvT_S3_,comdat
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIPlEEvT_S3_
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIPlEEvT_S3_, @function
_ZNSt12_Destroy_auxILb1EE9__destroyIPlEEvT_S3_:
.LFB2304:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2304:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIPlEEvT_S3_, .-_ZNSt12_Destroy_auxILb1EE9__destroyIPlEEvT_S3_
	.section	.text._ZN9__gnu_cxx13new_allocatorIlEC2ERKS1_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIlEC5ERKS1_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIlEC2ERKS1_
	.type	_ZN9__gnu_cxx13new_allocatorIlEC2ERKS1_, @function
_ZN9__gnu_cxx13new_allocatorIlEC2ERKS1_:
.LFB2339:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2339:
	.size	_ZN9__gnu_cxx13new_allocatorIlEC2ERKS1_, .-_ZN9__gnu_cxx13new_allocatorIlEC2ERKS1_
	.weak	_ZN9__gnu_cxx13new_allocatorIlEC1ERKS1_
	.set	_ZN9__gnu_cxx13new_allocatorIlEC1ERKS1_,_ZN9__gnu_cxx13new_allocatorIlEC2ERKS1_
	.section	.text._ZNSt16allocator_traitsISaIlEE8allocateERS0_m,"axG",@progbits,_ZNSt16allocator_traitsISaIlEE8allocateERS0_m,comdat
	.weak	_ZNSt16allocator_traitsISaIlEE8allocateERS0_m
	.type	_ZNSt16allocator_traitsISaIlEE8allocateERS0_m, @function
_ZNSt16allocator_traitsISaIlEE8allocateERS0_m:
.LFB2341:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIlE8allocateEmPKv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2341:
	.size	_ZNSt16allocator_traitsISaIlEE8allocateERS0_m, .-_ZNSt16allocator_traitsISaIlEE8allocateERS0_m
	.section	.text._ZN9__gnu_cxx13new_allocatorIlE10deallocateEPlm,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIlE10deallocateEPlm,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIlE10deallocateEPlm
	.type	_ZN9__gnu_cxx13new_allocatorIlE10deallocateEPlm, @function
_ZN9__gnu_cxx13new_allocatorIlE10deallocateEPlm:
.LFB2342:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdlPv@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2342:
	.size	_ZN9__gnu_cxx13new_allocatorIlE10deallocateEPlm, .-_ZN9__gnu_cxx13new_allocatorIlE10deallocateEPlm
	.section	.text._ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPlmlEET_S3_T0_RKT1_,"axG",@progbits,_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPlmlEET_S3_T0_RKT1_,comdat
	.weak	_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPlmlEET_S3_T0_RKT1_
	.type	_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPlmlEET_S3_T0_RKT1_, @function
_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPlmlEET_S3_T0_RKT1_:
.LFB2343:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt6fill_nIPlmlET_S1_T0_RKT1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2343:
	.size	_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPlmlEET_S3_T0_RKT1_, .-_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPlmlEET_S3_T0_RKT1_
	.section	.text._ZN9__gnu_cxx13new_allocatorIlE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIlE8allocateEmPKv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIlE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorIlE8allocateEmPKv, @function
_ZN9__gnu_cxx13new_allocatorIlE8allocateEmPKv:
.LFB2369:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx13new_allocatorIlE8max_sizeEv
	cmpq	%rax, -16(%rbp)
	seta	%al
	testb	%al, %al
	je	.L54
	call	_ZSt17__throw_bad_allocv@PLT
.L54:
	movq	-16(%rbp), %rax
	salq	$3, %rax
	movq	%rax, %rdi
	call	_Znwm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2369:
	.size	_ZN9__gnu_cxx13new_allocatorIlE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorIlE8allocateEmPKv
	.section	.text._ZSt6fill_nIPlmlET_S1_T0_RKT1_,"axG",@progbits,_ZSt6fill_nIPlmlET_S1_T0_RKT1_,comdat
	.weak	_ZSt6fill_nIPlmlET_S1_T0_RKT1_
	.type	_ZSt6fill_nIPlmlET_S1_T0_RKT1_, @function
_ZSt6fill_nIPlmlET_S1_T0_RKT1_:
.LFB2370:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPlET_S1_
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	_ZSt10__fill_n_aIPlmlEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES6_T0_RKS4_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2370:
	.size	_ZSt6fill_nIPlmlET_S1_T0_RKT1_, .-_ZSt6fill_nIPlmlET_S1_T0_RKT1_
	.section	.text._ZNK9__gnu_cxx13new_allocatorIlE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIlE8max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorIlE8max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIlE8max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorIlE8max_sizeEv:
.LFB2379:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movabsq	$2305843009213693951, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2379:
	.size	_ZNK9__gnu_cxx13new_allocatorIlE8max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIlE8max_sizeEv
	.section	.text._ZSt12__niter_baseIPlET_S1_,"axG",@progbits,_ZSt12__niter_baseIPlET_S1_,comdat
	.weak	_ZSt12__niter_baseIPlET_S1_
	.type	_ZSt12__niter_baseIPlET_S1_, @function
_ZSt12__niter_baseIPlET_S1_:
.LFB2380:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2380:
	.size	_ZSt12__niter_baseIPlET_S1_, .-_ZSt12__niter_baseIPlET_S1_
	.section	.text._ZSt10__fill_n_aIPlmlEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES6_T0_RKS4_,"axG",@progbits,_ZSt10__fill_n_aIPlmlEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES6_T0_RKS4_,comdat
	.weak	_ZSt10__fill_n_aIPlmlEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES6_T0_RKS4_
	.type	_ZSt10__fill_n_aIPlmlEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES6_T0_RKS4_, @function
_ZSt10__fill_n_aIPlmlEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES6_T0_RKS4_:
.LFB2381:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
.L64:
	cmpq	$0, -16(%rbp)
	je	.L63
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	subq	$1, -16(%rbp)
	addq	$8, -24(%rbp)
	jmp	.L64
.L63:
	movq	-24(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2381:
	.size	_ZSt10__fill_n_aIPlmlEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES6_T0_RKS4_, .-_ZSt10__fill_n_aIPlmlEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES6_T0_RKS4_
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB2384:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L68
	cmpl	$65535, -8(%rbp)
	jne	.L68
	leaq	_ZStL8__ioinit(%rip), %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZStL8__ioinit(%rip), %rsi
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	__cxa_atexit@PLT
.L68:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2384:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB2385:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2385:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
