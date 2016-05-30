	.file	"first.c"
	.section	.rodata
.LC0:
	.string	"I am a simple "
.LC1:
	.string	"computer."
	.align 8
.LC2:
	.string	"My favorite number is %d because it is first.\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$1, -4(%rbp)
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC1, %edi
	call	puts
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (GNU) 6.1.1 20160501"
	.section	.note.GNU-stack,"",@progbits
