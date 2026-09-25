	.file	"practica_one_time_pad.c"
# GNU C23 (GCC) version 16.2.1 20260810 (x86_64-pc-linux-gnu)
#	compiled by GNU C version 16.2.1 20260810, GMP version 6.3.0, MPFR version 4.2.2, MPC version 1.4.1, isl version isl-0.28-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"1a1617451a411517490b061b0f08535404044e17450c1c45326222420a00340006544816170b54030b55020d530046"
	.align 8
.LC1:
	.string	"184f184f0a081a000016071a00010017090b00100416010054530e060c52301b0c000a131304430e0a0640"
	.align 8
.LC2:
	.string	"09001a5248041b04490a4f060b07550601115953150c010007000604134f2b4f01481a0417115348"
	.align 8
.LC3:
	.string	"7926114506151f1159461b1d0b025454010850120617014542104b08104c35061a4e48201b00520f0c1400170e"
	.align 8
.LC4:
	.string	"0c3c5547071713174e0b0a1b1a445018090b5353110c5216044505015904685a5542010d1a0c4f084f1a0044430d0a005200000007171d54124b"
	.align 8
.LC5:
	.string	"1a001c4e480c1f0b490808551e1645070d0b5400450252071d474b020b4f2e1b1d00010f560659040a070d1649190d4b"
	.align 8
.LC6:
	.string	"0d0710003d32560c5346211a4e550000091747161143140a06001f040b473c1b1044480002114105040640"
	.align 8
.LC7:
	.string	"1c02054c0718130000080a12020d47110606455306021c45174f06150b4f34060645480f131157091d1e4e1745171d1749071c4d"
	.align 8
.LC8:
	.string	"103b55530d02031749121655070a541104094914000d1100544918450c4e3d0a07551c081a0c5a030b5b"
	.align 8
.LC9:
	.string	"120a1050010f1145410a03551d0b46001f0452164516020115540e0159492a4f14441e0805004448"
	.align 8
.LC10:
	.string	"793b024f48151f0845461f140a444907480b4f074510170601520e4959552a0a5541480f1312000d0a0c4e0141170045541a08065c"
	.align 8
.LC11:
	.string	"163b55530d020317491216551e1645070d0b54004502520b11574b161c54790013000b0917094c0301120b170e"
	.align 8
.LC12:
	.string	"100021000c04000c43031c550d054e54010b43010002010054530e060c52301b0c001e141a0b45140e17070849000100535d"
	.align 8
.LC13:
	.string	"793b1d451a04560c53460e550d1d42111a4553160616000c00594b161249350306001b0919175407081040"
.LC14:
	.string	"Mensajes cifrados:"
.LC15:
	.string	"Message %d \n"
.LC16:
	.string	"Original: "
.LC17:
	.string	"Bytes: "
.LC18:
	.string	"\n\n\n\n"
.LC19:
	.string	"%d "
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$17792, %rsp	#,
# practica_one_time_pad.c:31: {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp124
	movq	%rax, -8(%rbp)	# tmp124, D.4626
	xorl	%eax, %eax	# tmp124
# practica_one_time_pad.c:33: 	const uint8_t* ciphertexts_hex[NUM_MSGS]= {
	leaq	.LC0(%rip), %rax	#, tmp125
	movq	%rax, -17744(%rbp)	# tmp125, ciphertexts_hex[0]
	leaq	.LC1(%rip), %rax	#, tmp126
	movq	%rax, -17736(%rbp)	# tmp126, ciphertexts_hex[1]
	leaq	.LC2(%rip), %rax	#, tmp127
	movq	%rax, -17728(%rbp)	# tmp127, ciphertexts_hex[2]
	leaq	.LC3(%rip), %rax	#, tmp128
	movq	%rax, -17720(%rbp)	# tmp128, ciphertexts_hex[3]
	leaq	.LC4(%rip), %rax	#, tmp129
	movq	%rax, -17712(%rbp)	# tmp129, ciphertexts_hex[4]
	leaq	.LC5(%rip), %rax	#, tmp130
	movq	%rax, -17704(%rbp)	# tmp130, ciphertexts_hex[5]
	leaq	.LC6(%rip), %rax	#, tmp131
	movq	%rax, -17696(%rbp)	# tmp131, ciphertexts_hex[6]
	leaq	.LC7(%rip), %rax	#, tmp132
	movq	%rax, -17688(%rbp)	# tmp132, ciphertexts_hex[7]
	leaq	.LC8(%rip), %rax	#, tmp133
	movq	%rax, -17680(%rbp)	# tmp133, ciphertexts_hex[8]
	leaq	.LC9(%rip), %rax	#, tmp134
	movq	%rax, -17672(%rbp)	# tmp134, ciphertexts_hex[9]
	leaq	.LC10(%rip), %rax	#, tmp135
	movq	%rax, -17664(%rbp)	# tmp135, ciphertexts_hex[10]
	leaq	.LC11(%rip), %rax	#, tmp136
	movq	%rax, -17656(%rbp)	# tmp136, ciphertexts_hex[11]
	leaq	.LC12(%rip), %rax	#, tmp137
	movq	%rax, -17648(%rbp)	# tmp137, ciphertexts_hex[12]
	leaq	.LC13(%rip), %rax	#, tmp138
	movq	%rax, -17640(%rbp)	# tmp138, ciphertexts_hex[13]
# practica_one_time_pad.c:51: 	int chances_of_key[NUM_MSGS][MAX_MSG_BYTES] = {0};	
	leaq	-14016(%rbp), %rax	#, tmp139
	movl	$14000, %edx	#, tmp140
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp139,
	call	memset@PLT	#
# practica_one_time_pad.c:53: 	printf("Mensajes cifrados:\n");
	leaq	.LC14(%rip), %rax	#, tmp143
	movq	%rax, %rdi	# tmp143,
	call	puts@PLT	#
# practica_one_time_pad.c:54: 	for (i=0; i<NUM_MSGS; i++)
	movq	$0, -17776(%rbp)	#, i
# practica_one_time_pad.c:54: 	for (i=0; i<NUM_MSGS; i++)
	jmp	.L2	#
.L3:
# practica_one_time_pad.c:56: 		ciphertexts_len[i] = strlen(ciphertexts_hex[i]) / 2;
	movq	-17776(%rbp), %rax	# i, tmp144
	movq	-17744(%rbp,%rax,8), %rax	# ciphertexts_hex[i_25], _1
# practica_one_time_pad.c:56: 		ciphertexts_len[i] = strlen(ciphertexts_hex[i]) / 2;
	movq	%rax, %rdi	# _1,
	call	strlen@PLT	#
# practica_one_time_pad.c:56: 		ciphertexts_len[i] = strlen(ciphertexts_hex[i]) / 2;
	shrq	%rax	# _2
	movq	%rax, %rdx	# _2, _3
# practica_one_time_pad.c:56: 		ciphertexts_len[i] = strlen(ciphertexts_hex[i]) / 2;
	movq	-17776(%rbp), %rax	# i, tmp145
	movq	%rdx, -17632(%rbp,%rax,8)	# _3, ciphertexts_len[i_25]
# practica_one_time_pad.c:58:         	printf("Message %d \n", i);
	movq	-17776(%rbp), %rax	# i, tmp146
	leaq	.LC15(%rip), %rdx	#, tmp147
	movq	%rax, %rsi	# tmp146,
	movq	%rdx, %rdi	# tmp147,
	movl	$0, %eax	#,
	call	printf@PLT	#
# practica_one_time_pad.c:59: 		printf("Original: ");
	leaq	.LC16(%rip), %rax	#, tmp148
	movq	%rax, %rdi	# tmp148,
	movl	$0, %eax	#,
	call	printf@PLT	#
# practica_one_time_pad.c:60: 		print_string_char(ciphertexts_hex[i], ciphertexts_len[i]*2);
	movq	-17776(%rbp), %rax	# i, tmp149
	movq	-17632(%rbp,%rax,8), %rax	# ciphertexts_len[i_25], _4
# practica_one_time_pad.c:60: 		print_string_char(ciphertexts_hex[i], ciphertexts_len[i]*2);
	leaq	(%rax,%rax), %rdx	#, _5
	movq	-17776(%rbp), %rax	# i, tmp150
	movq	-17744(%rbp,%rax,8), %rax	# ciphertexts_hex[i_25], _6
	movq	%rdx, %rsi	# _5,
	movq	%rax, %rdi	# _6,
	call	print_string_char	#
# practica_one_time_pad.c:62: 		hex_string_to_bytes(ciphertexts_hex[i], ciphertexts_bytes[i], ciphertexts_len[i]*2);
	movq	-17776(%rbp), %rax	# i, tmp151
	movq	-17632(%rbp,%rax,8), %rax	# ciphertexts_len[i_25], _7
# practica_one_time_pad.c:62: 		hex_string_to_bytes(ciphertexts_hex[i], ciphertexts_bytes[i], ciphertexts_len[i]*2);
	leaq	(%rax,%rax), %rdx	#, _8
# practica_one_time_pad.c:62: 		hex_string_to_bytes(ciphertexts_hex[i], ciphertexts_bytes[i], ciphertexts_len[i]*2);
	leaq	-17520(%rbp), %rcx	#, tmp152
	movq	-17776(%rbp), %rax	# i, tmp154
	imulq	$250, %rax, %rax	#, tmp154, tmp153
	addq	%rax, %rcx	# tmp153, _9
# practica_one_time_pad.c:62: 		hex_string_to_bytes(ciphertexts_hex[i], ciphertexts_bytes[i], ciphertexts_len[i]*2);
	movq	-17776(%rbp), %rax	# i, tmp155
	movq	-17744(%rbp,%rax,8), %rax	# ciphertexts_hex[i_25], _10
# practica_one_time_pad.c:62: 		hex_string_to_bytes(ciphertexts_hex[i], ciphertexts_bytes[i], ciphertexts_len[i]*2);
	movq	%rcx, %rsi	# _9,
	movq	%rax, %rdi	# _10,
	call	hex_string_to_bytes	#
# practica_one_time_pad.c:64:         	printf("Bytes: ");
	leaq	.LC17(%rip), %rax	#, tmp156
	movq	%rax, %rdi	# tmp156,
	movl	$0, %eax	#,
	call	printf@PLT	#
# practica_one_time_pad.c:65:         	print_string_int(ciphertexts_bytes[i], ciphertexts_len[i]);
	movq	-17776(%rbp), %rax	# i, tmp157
	movq	-17632(%rbp,%rax,8), %rax	# ciphertexts_len[i_25], _11
# practica_one_time_pad.c:65:         	print_string_int(ciphertexts_bytes[i], ciphertexts_len[i]);
	leaq	-17520(%rbp), %rcx	#, tmp158
	movq	-17776(%rbp), %rdx	# i, tmp160
	imulq	$250, %rdx, %rdx	#, tmp160, tmp159
	addq	%rcx, %rdx	# tmp158, _12
# practica_one_time_pad.c:65:         	print_string_int(ciphertexts_bytes[i], ciphertexts_len[i]);
	movq	%rax, %rsi	# _11,
	movq	%rdx, %rdi	# _12,
	call	print_string_int	#
# practica_one_time_pad.c:54: 	for (i=0; i<NUM_MSGS; i++)
	addq	$1, -17776(%rbp)	#, i
.L2:
# practica_one_time_pad.c:54: 	for (i=0; i<NUM_MSGS; i++)
	cmpq	$13, -17776(%rbp)	#, i
	jbe	.L3	#,
# practica_one_time_pad.c:69: 	size_t max_len = array_max_value(ciphertexts_len, NUM_MSGS);	
	leaq	-17632(%rbp), %rax	#, tmp161
	movl	$14, %esi	#,
	movq	%rax, %rdi	# tmp161,
	call	array_max_value	#
	movq	%rax, -17768(%rbp)	# tmp162, max_len
# practica_one_time_pad.c:70: 	uint8_t* key = malloc(max_len*sizeof(uint8_t));
	movq	-17768(%rbp), %rax	# max_len, tmp163
	movq	%rax, %rdi	# tmp163,
	call	malloc@PLT	#
	movq	%rax, -17760(%rbp)	# tmp164, key
# practica_one_time_pad.c:74: 	for (i = 0; i < NUM_MSGS; i++)
	movq	$0, -17776(%rbp)	#, i
# practica_one_time_pad.c:74: 	for (i = 0; i < NUM_MSGS; i++)
	jmp	.L4	#
.L5:
# practica_one_time_pad.c:76: 		find_key(ciphertexts_bytes, chances_of_key, ciphertexts_len, i);
	movq	-17776(%rbp), %rax	# i, tmp165
	movl	%eax, %ecx	# tmp165, _13
	leaq	-17632(%rbp), %rdx	#, tmp166
	leaq	-14016(%rbp), %rsi	#, tmp167
	leaq	-17520(%rbp), %rax	#, tmp168
	movq	%rax, %rdi	# tmp168,
	call	find_key	#
# practica_one_time_pad.c:74: 	for (i = 0; i < NUM_MSGS; i++)
	addq	$1, -17776(%rbp)	#, i
.L4:
# practica_one_time_pad.c:74: 	for (i = 0; i < NUM_MSGS; i++)
	cmpq	$13, -17776(%rbp)	#, i
	jbe	.L5	#,
# practica_one_time_pad.c:79: 	printf("\n\n\n\n\n");
	leaq	.LC18(%rip), %rax	#, tmp169
	movq	%rax, %rdi	# tmp169,
	call	puts@PLT	#
# practica_one_time_pad.c:81: 	for (i = 0; i < NUM_MSGS; i++)
	movq	$0, -17776(%rbp)	#, i
# practica_one_time_pad.c:81: 	for (i = 0; i < NUM_MSGS; i++)
	jmp	.L6	#
.L9:
# practica_one_time_pad.c:83: 		for (int j = 0; j < ciphertexts_len[i]; j++)
	movl	$0, -17780(%rbp)	#, j
# practica_one_time_pad.c:83: 		for (int j = 0; j < ciphertexts_len[i]; j++)
	jmp	.L7	#
.L8:
# practica_one_time_pad.c:85: 			printf("%d ", chances_of_key[i][j]);
	movl	-17780(%rbp), %eax	# j, tmp171
	cltq
	movq	-17776(%rbp), %rdx	# i, tmp172
	imulq	$250, %rdx, %rdx	#, tmp172, tmp173
	addq	%rdx, %rax	# tmp173, tmp174
	movl	-14016(%rbp,%rax,4), %eax	# chances_of_key[i_27][j_30], _14
	leaq	.LC19(%rip), %rdx	#, tmp175
	movl	%eax, %esi	# _14,
	movq	%rdx, %rdi	# tmp175,
	movl	$0, %eax	#,
	call	printf@PLT	#
# practica_one_time_pad.c:83: 		for (int j = 0; j < ciphertexts_len[i]; j++)
	addl	$1, -17780(%rbp)	#, j
.L7:
# practica_one_time_pad.c:83: 		for (int j = 0; j < ciphertexts_len[i]; j++)
	movl	-17780(%rbp), %eax	# j, tmp176
	movslq	%eax, %rdx	# tmp176, _15
# practica_one_time_pad.c:83: 		for (int j = 0; j < ciphertexts_len[i]; j++)
	movq	-17776(%rbp), %rax	# i, tmp177
	movq	-17632(%rbp,%rax,8), %rax	# ciphertexts_len[i_27], _16
# practica_one_time_pad.c:83: 		for (int j = 0; j < ciphertexts_len[i]; j++)
	cmpq	%rax, %rdx	# _16, _15
	jb	.L8	#,
# practica_one_time_pad.c:87: 		printf("\n");
	movl	$10, %edi	#,
	call	putchar@PLT	#
# practica_one_time_pad.c:81: 	for (i = 0; i < NUM_MSGS; i++)
	addq	$1, -17776(%rbp)	#, i
.L6:
# practica_one_time_pad.c:81: 	for (i = 0; i < NUM_MSGS; i++)
	cmpq	$13, -17776(%rbp)	#, i
	jbe	.L9	#,
# practica_one_time_pad.c:90: 	printf("\n\n\n\n\n");
	leaq	.LC18(%rip), %rax	#, tmp178
	movq	%rax, %rdi	# tmp178,
	call	puts@PLT	#
# practica_one_time_pad.c:92: 	for (i = 0; i < max_len; i++)
	movq	$0, -17776(%rbp)	#, i
# practica_one_time_pad.c:92: 	for (i = 0; i < max_len; i++)
	jmp	.L10	#
.L11:
# practica_one_time_pad.c:94: 		create_key(ciphertexts_bytes, chances_of_key, key, ciphertexts_len, i);
	movq	-17776(%rbp), %rax	# i, tmp179
	movl	%eax, %edi	# tmp179, _17
	leaq	-17632(%rbp), %rcx	#, tmp180
	movq	-17760(%rbp), %rdx	# key, tmp181
	leaq	-14016(%rbp), %rsi	#, tmp182
	leaq	-17520(%rbp), %rax	#, tmp183
	movl	%edi, %r8d	# _17,
	movq	%rax, %rdi	# tmp183,
	call	create_key	#
# practica_one_time_pad.c:95: 		printf("%c", key[i]);
	movq	-17760(%rbp), %rdx	# key, tmp184
	movq	-17776(%rbp), %rax	# i, tmp185
	addq	%rdx, %rax	# tmp184, _18
	movzbl	(%rax), %eax	# *_18, _19
# practica_one_time_pad.c:95: 		printf("%c", key[i]);
	movzbl	%al, %eax	# _19, _20
	movl	%eax, %edi	# _20,
	call	putchar@PLT	#
# practica_one_time_pad.c:92: 	for (i = 0; i < max_len; i++)
	addq	$1, -17776(%rbp)	#, i
.L10:
# practica_one_time_pad.c:92: 	for (i = 0; i < max_len; i++)
	movq	-17776(%rbp), %rax	# i, tmp186
	cmpq	-17768(%rbp), %rax	# max_len, tmp186
	jb	.L11	#,
# practica_one_time_pad.c:98: 	printf("\n\n\n\n\n");
	leaq	.LC18(%rip), %rax	#, tmp187
	movq	%rax, %rdi	# tmp187,
	call	puts@PLT	#
# practica_one_time_pad.c:100: 	for (i = 0; i < NUM_MSGS; i++)
	movq	$0, -17776(%rbp)	#, i
# practica_one_time_pad.c:100: 	for (i = 0; i < NUM_MSGS; i++)
	jmp	.L12	#
.L13:
# practica_one_time_pad.c:102: 		uint8_t *tmp = malloc(ciphertexts_len[i] * sizeof(uint8_t));
	movq	-17776(%rbp), %rax	# i, tmp188
	movq	-17632(%rbp,%rax,8), %rax	# ciphertexts_len[i_29], _21
	movq	%rax, %rdi	# _21,
	call	malloc@PLT	#
	movq	%rax, -17752(%rbp)	# tmp189, tmp
# practica_one_time_pad.c:103: 		xor_bytes(ciphertexts_bytes[i], key, tmp, ciphertexts_len[i]);
	movq	-17776(%rbp), %rax	# i, tmp190
	movq	-17632(%rbp,%rax,8), %rcx	# ciphertexts_len[i_29], _22
# practica_one_time_pad.c:103: 		xor_bytes(ciphertexts_bytes[i], key, tmp, ciphertexts_len[i]);
	leaq	-17520(%rbp), %rdx	#, tmp191
	movq	-17776(%rbp), %rax	# i, tmp193
	imulq	$250, %rax, %rax	#, tmp193, tmp192
	leaq	(%rdx,%rax), %rdi	#, _23
# practica_one_time_pad.c:103: 		xor_bytes(ciphertexts_bytes[i], key, tmp, ciphertexts_len[i]);
	movq	-17752(%rbp), %rdx	# tmp, tmp194
	movq	-17760(%rbp), %rax	# key, tmp195
	movq	%rax, %rsi	# tmp195,
	call	xor_bytes	#
# practica_one_time_pad.c:104: 		print_string_char(tmp, ciphertexts_len[i]);
	movq	-17776(%rbp), %rax	# i, tmp196
	movq	-17632(%rbp,%rax,8), %rdx	# ciphertexts_len[i_29], _24
	movq	-17752(%rbp), %rax	# tmp, tmp197
	movq	%rdx, %rsi	# _24,
	movq	%rax, %rdi	# tmp197,
	call	print_string_char	#
# practica_one_time_pad.c:105: 		free(tmp);
	movq	-17752(%rbp), %rax	# tmp, tmp198
	movq	%rax, %rdi	# tmp198,
	call	free@PLT	#
# practica_one_time_pad.c:100: 	for (i = 0; i < NUM_MSGS; i++)
	addq	$1, -17776(%rbp)	#, i
.L12:
# practica_one_time_pad.c:100: 	for (i = 0; i < NUM_MSGS; i++)
	cmpq	$13, -17776(%rbp)	#, i
	jbe	.L13	#,
# practica_one_time_pad.c:108: 	free(key);
	movq	-17760(%rbp), %rax	# key, tmp199
	movq	%rax, %rdi	# tmp199,
	call	free@PLT	#
# practica_one_time_pad.c:109: 	return 0;    
	movl	$0, %eax	#, _67
# practica_one_time_pad.c:110: }
	movq	-8(%rbp), %rdx	# D.4626, tmp201
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp201
	je	.L15	#,
	call	__stack_chk_fail@PLT	#
.L15:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.globl	hex_to_int
	.type	hex_to_int, @function
hex_to_int:
.LFB7:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movb	%dil, -1(%rbp)	# c, c
# practica_one_time_pad.c:114:     	if (c>='0' && c<='9') //'0'-'9'
	cmpb	$47, -1(%rbp)	#, c
	jbe	.L17	#,
# practica_one_time_pad.c:114:     	if (c>='0' && c<='9') //'0'-'9'
	cmpb	$57, -1(%rbp)	#, c
	ja	.L17	#,
# practica_one_time_pad.c:115:     		return (c - '0');
	movzbl	-1(%rbp), %eax	# c, _1
	subl	$48, %eax	#, _4
	jmp	.L18	#
.L17:
# practica_one_time_pad.c:116:     	else if (c>='a' && c<='f') //'a'-'f'
	cmpb	$96, -1(%rbp)	#, c
	jbe	.L19	#,
# practica_one_time_pad.c:116:     	else if (c>='a' && c<='f') //'a'-'f'
	cmpb	$102, -1(%rbp)	#, c
	ja	.L19	#,
# practica_one_time_pad.c:117:     		return (c - 'a' + 10);
	movzbl	-1(%rbp), %eax	# c, _2
	subl	$87, %eax	#, _4
	jmp	.L18	#
.L19:
# practica_one_time_pad.c:118:     	else if (c>='A' && c<='F') //'A'-'F'
	cmpb	$64, -1(%rbp)	#, c
	jbe	.L20	#,
# practica_one_time_pad.c:118:     	else if (c>='A' && c<='F') //'A'-'F'
	cmpb	$70, -1(%rbp)	#, c
	ja	.L20	#,
# practica_one_time_pad.c:119:     		return (c - 'A' + 10);
	movzbl	-1(%rbp), %eax	# c, _3
	subl	$55, %eax	#, _4
	jmp	.L18	#
.L20:
# practica_one_time_pad.c:121:     		return -1; 	
	movl	$-1, %eax	#, _4
.L18:
# practica_one_time_pad.c:122: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	hex_to_int, .-hex_to_int
	.globl	hex_pair_to_byte
	.type	hex_pair_to_byte, @function
hex_pair_to_byte:
.LFB8:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$8, %rsp	#,
	.cfi_offset 3, -24
	movb	%dil, -9(%rbp)	# c, c
	movb	%sil, -10(%rbp)	# d, d
# practica_one_time_pad.c:126:     return (uint8_t)((hex_to_int(c) << 4) | hex_to_int(d));
	movzbl	-9(%rbp), %eax	# c, tmp106
	movl	%eax, %edi	# tmp106,
	call	hex_to_int	#
# practica_one_time_pad.c:126:     return (uint8_t)((hex_to_int(c) << 4) | hex_to_int(d));
	sall	$4, %eax	#, _2
	movl	%eax, %ebx	# _2, _3
# practica_one_time_pad.c:126:     return (uint8_t)((hex_to_int(c) << 4) | hex_to_int(d));
	movzbl	-10(%rbp), %eax	# d, tmp107
	movl	%eax, %edi	# tmp107,
	call	hex_to_int	#
# practica_one_time_pad.c:126:     return (uint8_t)((hex_to_int(c) << 4) | hex_to_int(d));
	orl	%ebx, %eax	# _3, _6
# practica_one_time_pad.c:127: }
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8:
	.size	hex_pair_to_byte, .-hex_pair_to_byte
	.globl	hex_string_to_bytes
	.type	hex_string_to_bytes, @function
hex_string_to_bytes:
.LFB9:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -32(%rbp)	# hex, hex
	movq	%rsi, -40(%rbp)	# bytes, bytes
	movq	%rdx, -48(%rbp)	# hex_len, hex_len
# practica_one_time_pad.c:131:     for (size_t i = 0; i < hex_len; i += 2) {
	movq	$0, -16(%rbp)	#, i
# practica_one_time_pad.c:131:     for (size_t i = 0; i < hex_len; i += 2) {
	jmp	.L24	#
.L25:
# practica_one_time_pad.c:132:         bytes[i / 2] = hex_pair_to_byte(hex[i], hex[i + 1]);
	movq	-16(%rbp), %rax	# i, tmp108
	leaq	1(%rax), %rdx	#, _1
# practica_one_time_pad.c:132:         bytes[i / 2] = hex_pair_to_byte(hex[i], hex[i + 1]);
	movq	-32(%rbp), %rax	# hex, tmp109
	addq	%rdx, %rax	# _1, _2
	movzbl	(%rax), %eax	# *_2, _3
# practica_one_time_pad.c:132:         bytes[i / 2] = hex_pair_to_byte(hex[i], hex[i + 1]);
	movl	%eax, %esi	# _3, _4
# practica_one_time_pad.c:132:         bytes[i / 2] = hex_pair_to_byte(hex[i], hex[i + 1]);
	movq	-32(%rbp), %rdx	# hex, tmp110
	movq	-16(%rbp), %rax	# i, tmp111
	addq	%rdx, %rax	# tmp110, _5
	movzbl	(%rax), %eax	# *_5, _6
# practica_one_time_pad.c:132:         bytes[i / 2] = hex_pair_to_byte(hex[i], hex[i + 1]);
	movl	%eax, %ecx	# _6, _7
# practica_one_time_pad.c:132:         bytes[i / 2] = hex_pair_to_byte(hex[i], hex[i + 1]);
	movq	-16(%rbp), %rax	# i, tmp112
	shrq	%rax	# tmp112
	movq	%rax, %rdx	# tmp112, _8
# practica_one_time_pad.c:132:         bytes[i / 2] = hex_pair_to_byte(hex[i], hex[i + 1]);
	movq	-40(%rbp), %rax	# bytes, tmp113
	leaq	(%rdx,%rax), %rbx	#, _9
# practica_one_time_pad.c:132:         bytes[i / 2] = hex_pair_to_byte(hex[i], hex[i + 1]);
	movzbl	%sil, %edx	# _4, tmp114
	movzbl	%cl, %eax	# _7, tmp115
	movl	%edx, %esi	# tmp114,
	movl	%eax, %edi	# tmp115,
	call	hex_pair_to_byte	#
# practica_one_time_pad.c:132:         bytes[i / 2] = hex_pair_to_byte(hex[i], hex[i + 1]);
	movb	%al, (%rbx)	# _10, *_9
# practica_one_time_pad.c:131:     for (size_t i = 0; i < hex_len; i += 2) {
	addq	$2, -16(%rbp)	#, i
.L24:
# practica_one_time_pad.c:131:     for (size_t i = 0; i < hex_len; i += 2) {
	movq	-16(%rbp), %rax	# i, tmp116
	cmpq	-48(%rbp), %rax	# hex_len, tmp116
	jb	.L25	#,
# practica_one_time_pad.c:134: }
	nop	
	nop	
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE9:
	.size	hex_string_to_bytes, .-hex_string_to_bytes
	.globl	print_string_int
	.type	print_string_int, @function
print_string_int:
.LFB10:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# a, a
	movq	%rsi, -32(%rbp)	# len, len
# practica_one_time_pad.c:138: 	for (size_t i = 0; i < len; i++) {
	movq	$0, -8(%rbp)	#, i
# practica_one_time_pad.c:138: 	for (size_t i = 0; i < len; i++) {
	jmp	.L27	#
.L28:
# practica_one_time_pad.c:139: 		printf("%d ", a[i]);
	movq	-24(%rbp), %rdx	# a, tmp101
	movq	-8(%rbp), %rax	# i, tmp102
	addq	%rdx, %rax	# tmp101, _1
	movzbl	(%rax), %eax	# *_1, _2
# practica_one_time_pad.c:139: 		printf("%d ", a[i]);
	movzbl	%al, %eax	# _2, _3
	leaq	.LC19(%rip), %rdx	#, tmp103
	movl	%eax, %esi	# _3,
	movq	%rdx, %rdi	# tmp103,
	movl	$0, %eax	#,
	call	printf@PLT	#
# practica_one_time_pad.c:138: 	for (size_t i = 0; i < len; i++) {
	addq	$1, -8(%rbp)	#, i
.L27:
# practica_one_time_pad.c:138: 	for (size_t i = 0; i < len; i++) {
	movq	-8(%rbp), %rax	# i, tmp104
	cmpq	-32(%rbp), %rax	# len, tmp104
	jb	.L28	#,
# practica_one_time_pad.c:141: 	putchar('\n');
	movl	$10, %edi	#,
	call	putchar@PLT	#
# practica_one_time_pad.c:142: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE10:
	.size	print_string_int, .-print_string_int
	.globl	print_string_char
	.type	print_string_char, @function
print_string_char:
.LFB11:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# a, a
	movq	%rsi, -32(%rbp)	# len, len
# practica_one_time_pad.c:146: 	for (size_t i = 0; i < len; i++) {
	movq	$0, -8(%rbp)	#, i
# practica_one_time_pad.c:146: 	for (size_t i = 0; i < len; i++) {
	jmp	.L30	#
.L31:
# practica_one_time_pad.c:147: 		putchar(a[i]);
	movq	-24(%rbp), %rdx	# a, tmp101
	movq	-8(%rbp), %rax	# i, tmp102
	addq	%rdx, %rax	# tmp101, _1
	movzbl	(%rax), %eax	# *_1, _2
# practica_one_time_pad.c:147: 		putchar(a[i]);
	movzbl	%al, %eax	# _2, _3
	movl	%eax, %edi	# _3,
	call	putchar@PLT	#
# practica_one_time_pad.c:146: 	for (size_t i = 0; i < len; i++) {
	addq	$1, -8(%rbp)	#, i
.L30:
# practica_one_time_pad.c:146: 	for (size_t i = 0; i < len; i++) {
	movq	-8(%rbp), %rax	# i, tmp103
	cmpq	-32(%rbp), %rax	# len, tmp103
	jb	.L31	#,
# practica_one_time_pad.c:149: 	putchar('\n');
	movl	$10, %edi	#,
	call	putchar@PLT	#
# practica_one_time_pad.c:150: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE11:
	.size	print_string_char, .-print_string_char
	.globl	print_printable_char
	.type	print_printable_char, @function
print_printable_char:
.LFB12:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# a, a
	movq	%rsi, -32(%rbp)	# len, len
# practica_one_time_pad.c:154:     for (size_t i = 0; i < len; i++) {
	movq	$0, -8(%rbp)	#, i
# practica_one_time_pad.c:154:     for (size_t i = 0; i < len; i++) {
	jmp	.L33	#
.L36:
# practica_one_time_pad.c:155:         if (isprint(a[i])) {
	call	__ctype_b_loc@PLT	#
# practica_one_time_pad.c:155:         if (isprint(a[i])) {
	movq	(%rax), %rax	# *_1, _2
	movq	-24(%rbp), %rcx	# a, tmp111
	movq	-8(%rbp), %rdx	# i, tmp112
	addq	%rcx, %rdx	# tmp111, _3
	movzbl	(%rdx), %edx	# *_3, _4
	movzbl	%dl, %edx	# _4, _5
	addq	%rdx, %rdx	# _6
	addq	%rdx, %rax	# _6, _7
	movzwl	(%rax), %eax	# *_7, _8
	movzwl	%ax, %eax	# _8, _9
	andl	$16384, %eax	#, _10
# practica_one_time_pad.c:155:         if (isprint(a[i])) {
	testl	%eax, %eax	# _10
	je	.L34	#,
# practica_one_time_pad.c:156:             putchar(a[i]);
	movq	-24(%rbp), %rdx	# a, tmp113
	movq	-8(%rbp), %rax	# i, tmp114
	addq	%rdx, %rax	# tmp113, _11
	movzbl	(%rax), %eax	# *_11, _12
# practica_one_time_pad.c:156:             putchar(a[i]);
	movzbl	%al, %eax	# _12, _13
	movl	%eax, %edi	# _13,
	call	putchar@PLT	#
	jmp	.L35	#
.L34:
# practica_one_time_pad.c:158:             putchar('*');
	movl	$42, %edi	#,
	call	putchar@PLT	#
.L35:
# practica_one_time_pad.c:154:     for (size_t i = 0; i < len; i++) {
	addq	$1, -8(%rbp)	#, i
.L33:
# practica_one_time_pad.c:154:     for (size_t i = 0; i < len; i++) {
	movq	-8(%rbp), %rax	# i, tmp115
	cmpq	-32(%rbp), %rax	# len, tmp115
	jb	.L36	#,
# practica_one_time_pad.c:161:     putchar('\n');
	movl	$10, %edi	#,
	call	putchar@PLT	#
# practica_one_time_pad.c:162: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE12:
	.size	print_printable_char, .-print_printable_char
	.globl	xor_bytes
	.type	xor_bytes, @function
xor_bytes:
.LFB13:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# str1, str1
	movq	%rsi, -32(%rbp)	# str2, str2
	movq	%rdx, -40(%rbp)	# out, out
	movq	%rcx, -48(%rbp)	# len, len
# practica_one_time_pad.c:166:     for (size_t i = 0; i < len; i++) {
	movq	$0, -8(%rbp)	#, i
# practica_one_time_pad.c:166:     for (size_t i = 0; i < len; i++) {
	jmp	.L38	#
.L39:
# practica_one_time_pad.c:167:         out[i] = str1[i] ^ str2[i];
	movq	-24(%rbp), %rdx	# str1, tmp104
	movq	-8(%rbp), %rax	# i, tmp105
	addq	%rdx, %rax	# tmp104, _1
	movzbl	(%rax), %esi	# *_1, _2
# practica_one_time_pad.c:167:         out[i] = str1[i] ^ str2[i];
	movq	-32(%rbp), %rdx	# str2, tmp106
	movq	-8(%rbp), %rax	# i, tmp107
	addq	%rdx, %rax	# tmp106, _3
	movzbl	(%rax), %ecx	# *_3, _4
# practica_one_time_pad.c:167:         out[i] = str1[i] ^ str2[i];
	movq	-40(%rbp), %rdx	# out, tmp108
	movq	-8(%rbp), %rax	# i, tmp109
	addq	%rdx, %rax	# tmp108, _5
# practica_one_time_pad.c:167:         out[i] = str1[i] ^ str2[i];
	xorl	%ecx, %esi	# _4, _2
	movl	%esi, %edx	# _2, _6
	movb	%dl, (%rax)	# _6, *_5
# practica_one_time_pad.c:166:     for (size_t i = 0; i < len; i++) {
	addq	$1, -8(%rbp)	#, i
.L38:
# practica_one_time_pad.c:166:     for (size_t i = 0; i < len; i++) {
	movq	-8(%rbp), %rax	# i, tmp110
	cmpq	-48(%rbp), %rax	# len, tmp110
	jb	.L39	#,
# practica_one_time_pad.c:169: }
	nop	
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE13:
	.size	xor_bytes, .-xor_bytes
	.globl	array_max_value
	.type	array_max_value, @function
array_max_value:
.LFB14:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# a, a
	movq	%rsi, -32(%rbp)	# len, len
# practica_one_time_pad.c:173: 	size_t temp_max = a[0];
	movq	-24(%rbp), %rax	# a, tmp103
	movq	(%rax), %rax	# *a_7(D), tmp104
	movq	%rax, -16(%rbp)	# tmp104, temp_max
# practica_one_time_pad.c:174: 	for (size_t i = 1; i < len; i++) {
	movq	$1, -8(%rbp)	#, i
# practica_one_time_pad.c:174: 	for (size_t i = 1; i < len; i++) {
	jmp	.L41	#
.L42:
# practica_one_time_pad.c:175: 		temp_max = MAX_VAL(a[i], temp_max);
	movq	-8(%rbp), %rax	# i, tmp105
	leaq	0(,%rax,8), %rdx	#, _1
	movq	-24(%rbp), %rax	# a, tmp106
	addq	%rdx, %rax	# _1, _2
	movq	(%rax), %rax	# *_2, _3
# practica_one_time_pad.c:175: 		temp_max = MAX_VAL(a[i], temp_max);
	movq	-16(%rbp), %rdx	# temp_max, tmp108
	cmpq	%rax, %rdx	# _3, tmp108
	cmovnb	%rdx, %rax	# tmp108,, temp_max_12
	movq	%rax, -16(%rbp)	# temp_max_12, temp_max
# practica_one_time_pad.c:174: 	for (size_t i = 1; i < len; i++) {
	addq	$1, -8(%rbp)	#, i
.L41:
# practica_one_time_pad.c:174: 	for (size_t i = 1; i < len; i++) {
	movq	-8(%rbp), %rax	# i, tmp109
	cmpq	-32(%rbp), %rax	# len, tmp109
	jb	.L42	#,
# practica_one_time_pad.c:177: 	return temp_max;
	movq	-16(%rbp), %rax	# temp_max, _11
# practica_one_time_pad.c:178: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE14:
	.size	array_max_value, .-array_max_value
	.globl	find_key
	.type	find_key, @function
find_key:
.LFB15:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# bytes, bytes
	movq	%rsi, -48(%rbp)	# chances, chances
	movq	%rdx, -56(%rbp)	# len, len
	movl	%ecx, -60(%rbp)	# i, i
# practica_one_time_pad.c:183: 	for (int v = 0; v < NUM_MSGS; v++)
	movl	$0, -20(%rbp)	#, v
# practica_one_time_pad.c:183: 	for (int v = 0; v < NUM_MSGS; v++)
	jmp	.L45	#
.L48:
# practica_one_time_pad.c:185: 		if (v == i) {
	movl	-20(%rbp), %eax	# v, tmp113
	cmpl	-60(%rbp), %eax	# i, tmp113
	je	.L49	#,
# practica_one_time_pad.c:189: 			size_t shortest = (len[v] < len[i]) ? len[v] : len[i];
	movl	-60(%rbp), %eax	# i, tmp114
	cltq
	leaq	0(,%rax,8), %rdx	#, _2
	movq	-56(%rbp), %rax	# len, tmp115
	addq	%rdx, %rax	# _2, _3
	movq	(%rax), %rdx	# *_3, _4
# practica_one_time_pad.c:189: 			size_t shortest = (len[v] < len[i]) ? len[v] : len[i];
	movl	-20(%rbp), %eax	# v, tmp116
	cltq
	leaq	0(,%rax,8), %rcx	#, _6
	movq	-56(%rbp), %rax	# len, tmp117
	addq	%rcx, %rax	# _6, _7
	movq	(%rax), %rax	# *_7, _8
# practica_one_time_pad.c:189: 			size_t shortest = (len[v] < len[i]) ? len[v] : len[i];
	cmpq	%rax, %rdx	# _8, _4
	cmovbe	%rdx, %rax	# _4,, shortest_23
	movq	%rax, -16(%rbp)	# shortest_23, shortest
# practica_one_time_pad.c:190: 			uint8_t *xor_result = malloc(shortest * sizeof(uint8_t));
	movq	-16(%rbp), %rax	# shortest, tmp119
	movq	%rax, %rdi	# tmp119,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp120, xor_result
# practica_one_time_pad.c:191: 			xor_bytes(bytes[v], bytes[i], xor_result, shortest);
	movl	-60(%rbp), %eax	# i, tmp121
	cltq
	imulq	$250, %rax, %rdx	#, _9, _10
	movq	-40(%rbp), %rax	# bytes, tmp122
	leaq	(%rdx,%rax), %rsi	#, _11
# practica_one_time_pad.c:191: 			xor_bytes(bytes[v], bytes[i], xor_result, shortest);
	movl	-20(%rbp), %eax	# v, tmp123
	cltq
	imulq	$250, %rax, %rdx	#, _12, _13
	movq	-40(%rbp), %rax	# bytes, tmp124
	leaq	(%rdx,%rax), %rdi	#, _14
# practica_one_time_pad.c:191: 			xor_bytes(bytes[v], bytes[i], xor_result, shortest);
	movq	-16(%rbp), %rdx	# shortest, tmp125
	movq	-8(%rbp), %rax	# xor_result, tmp126
	movq	%rdx, %rcx	# tmp125,
	movq	%rax, %rdx	# tmp126,
	call	xor_bytes	#
# practica_one_time_pad.c:192: 			search_result(chances, xor_result, i, shortest);
	movq	-16(%rbp), %rax	# shortest, tmp127
	movl	%eax, %ecx	# tmp127, _15
	movl	-60(%rbp), %edx	# i, tmp128
	movq	-8(%rbp), %rsi	# xor_result, tmp129
	movq	-48(%rbp), %rax	# chances, tmp130
	movq	%rax, %rdi	# tmp130,
	call	search_result	#
# practica_one_time_pad.c:193: 			free(xor_result);
	movq	-8(%rbp), %rax	# xor_result, tmp131
	movq	%rax, %rdi	# tmp131,
	call	free@PLT	#
	jmp	.L47	#
.L49:
# practica_one_time_pad.c:186: 			continue;
	nop	
.L47:
# practica_one_time_pad.c:183: 	for (int v = 0; v < NUM_MSGS; v++)
	addl	$1, -20(%rbp)	#, v
.L45:
# practica_one_time_pad.c:183: 	for (int v = 0; v < NUM_MSGS; v++)
	cmpl	$13, -20(%rbp)	#, v
	jle	.L48	#,
# practica_one_time_pad.c:196: }
	nop	
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE15:
	.size	find_key, .-find_key
	.globl	search_result
	.type	search_result, @function
search_result:
.LFB16:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# chances, chances
	movq	%rsi, -32(%rbp)	# result, result
	movl	%edx, -36(%rbp)	# i, i
	movl	%ecx, -40(%rbp)	# len, len
# practica_one_time_pad.c:200: 	for (int w = 0; w < len; w++)
	movl	$0, -4(%rbp)	#, w
# practica_one_time_pad.c:200: 	for (int w = 0; w < len; w++)
	jmp	.L51	#
.L53:
# practica_one_time_pad.c:202: 		if (is_a_character(result[w])) {
	movl	-4(%rbp), %eax	# w, tmp110
	movslq	%eax, %rdx	# tmp110, _1
	movq	-32(%rbp), %rax	# result, tmp111
	addq	%rdx, %rax	# _1, _2
# practica_one_time_pad.c:202: 		if (is_a_character(result[w])) {
	movzbl	(%rax), %eax	# *_2, _3
	movzbl	%al, %eax	# _3, tmp112
	movl	%eax, %edi	# tmp112,
	call	is_a_character	#
# practica_one_time_pad.c:202: 		if (is_a_character(result[w])) {
	testl	%eax, %eax	# _4
	je	.L52	#,
# practica_one_time_pad.c:203: 			chances[i][w] += 1;
	movl	-36(%rbp), %eax	# i, tmp113
	cltq
	imulq	$1000, %rax, %rdx	#, _5, _6
	movq	-24(%rbp), %rax	# chances, tmp114
	addq	%rax, %rdx	# tmp114, _7
# practica_one_time_pad.c:203: 			chances[i][w] += 1;
	movl	-4(%rbp), %eax	# w, tmp116
	cltq
	movl	(%rdx,%rax,4), %eax	# (*_7)[w_13], _8
# practica_one_time_pad.c:203: 			chances[i][w] += 1;
	movl	-36(%rbp), %edx	# i, tmp117
	movslq	%edx, %rdx	# tmp117, _9
	imulq	$1000, %rdx, %rcx	#, _9, _10
	movq	-24(%rbp), %rdx	# chances, tmp118
	addq	%rcx, %rdx	# _10, _11
# practica_one_time_pad.c:203: 			chances[i][w] += 1;
	leal	1(%rax), %ecx	#, _12
	movl	-4(%rbp), %eax	# w, tmp120
	cltq
	movl	%ecx, (%rdx,%rax,4)	# _12, (*_11)[w_13]
.L52:
# practica_one_time_pad.c:200: 	for (int w = 0; w < len; w++)
	addl	$1, -4(%rbp)	#, w
.L51:
# practica_one_time_pad.c:200: 	for (int w = 0; w < len; w++)
	movl	-4(%rbp), %eax	# w, tmp121
	cmpl	-40(%rbp), %eax	# len, tmp121
	jl	.L53	#,
# practica_one_time_pad.c:206: }
	nop	
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE16:
	.size	search_result, .-search_result
	.globl	is_a_character
	.type	is_a_character, @function
is_a_character:
.LFB17:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movb	%dil, -1(%rbp)	# c, c
# practica_one_time_pad.c:210:     	if ((c>='a' && c<='z') || (c>='A' && c<='Z'))
	cmpb	$96, -1(%rbp)	#, c
	jbe	.L55	#,
# practica_one_time_pad.c:210:     	if ((c>='a' && c<='z') || (c>='A' && c<='Z'))
	cmpb	$122, -1(%rbp)	#, c
	jbe	.L56	#,
.L55:
# practica_one_time_pad.c:210:     	if ((c>='a' && c<='z') || (c>='A' && c<='Z'))
	cmpb	$64, -1(%rbp)	#, c
	jbe	.L57	#,
# practica_one_time_pad.c:210:     	if ((c>='a' && c<='z') || (c>='A' && c<='Z'))
	cmpb	$90, -1(%rbp)	#, c
	ja	.L57	#,
.L56:
# practica_one_time_pad.c:211:     		return 1;
	movl	$1, %eax	#, _1
	jmp	.L58	#
.L57:
# practica_one_time_pad.c:212:     	return 0;
	movl	$0, %eax	#, _1
.L58:
# practica_one_time_pad.c:213: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE17:
	.size	is_a_character, .-is_a_character
	.globl	create_key
	.type	create_key, @function
create_key:
.LFB18:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -24(%rbp)	# bytes, bytes
	movq	%rsi, -32(%rbp)	# chances, chances
	movq	%rdx, -40(%rbp)	# key, key
	movq	%rcx, -48(%rbp)	# len, len
	movl	%r8d, -52(%rbp)	# column, column
# practica_one_time_pad.c:218: 	int highest_chance = 0;
	movl	$0, -12(%rbp)	#, highest_chance
# practica_one_time_pad.c:219: 	int best_row = 0;
	movl	$0, -8(%rbp)	#, best_row
# practica_one_time_pad.c:220: 	for (int row = 0; row < NUM_MSGS; row++)
	movl	$0, -4(%rbp)	#, row
# practica_one_time_pad.c:220: 	for (int row = 0; row < NUM_MSGS; row++)
	jmp	.L60	#
.L63:
# practica_one_time_pad.c:222: 		if (chances[row][column] == 0)
	movl	-4(%rbp), %eax	# row, tmp118
	cltq
	imulq	$1000, %rax, %rdx	#, _1, _2
	movq	-32(%rbp), %rax	# chances, tmp119
	addq	%rax, %rdx	# tmp119, _3
# practica_one_time_pad.c:222: 		if (chances[row][column] == 0)
	movl	-52(%rbp), %eax	# column, tmp121
	cltq
	movl	(%rdx,%rax,4), %eax	# (*_3)[column_31(D)], _4
# practica_one_time_pad.c:222: 		if (chances[row][column] == 0)
	testl	%eax, %eax	# _4
	je	.L64	#,
# practica_one_time_pad.c:224: 		if (len[row] > column) {
	movl	-4(%rbp), %eax	# row, tmp122
	cltq
	leaq	0(,%rax,8), %rdx	#, _6
	movq	-48(%rbp), %rax	# len, tmp123
	addq	%rdx, %rax	# _6, _7
	movq	(%rax), %rax	# *_7, _8
# practica_one_time_pad.c:224: 		if (len[row] > column) {
	movl	-52(%rbp), %edx	# column, tmp124
	movslq	%edx, %rdx	# tmp124, _9
# practica_one_time_pad.c:224: 		if (len[row] > column) {
	cmpq	%rax, %rdx	# _8, _9
	jnb	.L62	#,
# practica_one_time_pad.c:225: 			if (chances[row][column] > highest_chance) {
	movl	-4(%rbp), %eax	# row, tmp125
	cltq
	imulq	$1000, %rax, %rdx	#, _10, _11
	movq	-32(%rbp), %rax	# chances, tmp126
	addq	%rax, %rdx	# tmp126, _12
# practica_one_time_pad.c:225: 			if (chances[row][column] > highest_chance) {
	movl	-52(%rbp), %eax	# column, tmp128
	cltq
	movl	(%rdx,%rax,4), %eax	# (*_12)[column_31(D)], _13
# practica_one_time_pad.c:225: 			if (chances[row][column] > highest_chance) {
	cmpl	%eax, -12(%rbp)	# _13, highest_chance
	jge	.L62	#,
# practica_one_time_pad.c:226: 				highest_chance = chances[row][column];
	movl	-4(%rbp), %eax	# row, tmp129
	cltq
	imulq	$1000, %rax, %rdx	#, _14, _15
	movq	-32(%rbp), %rax	# chances, tmp130
	addq	%rax, %rdx	# tmp130, _16
# practica_one_time_pad.c:226: 				highest_chance = chances[row][column];
	movl	-52(%rbp), %eax	# column, tmp132
	cltq
	movl	(%rdx,%rax,4), %eax	# (*_16)[column_31(D)], tmp133
	movl	%eax, -12(%rbp)	# tmp133, highest_chance
# practica_one_time_pad.c:227: 				best_row = row;
	movl	-4(%rbp), %eax	# row, tmp134
	movl	%eax, -8(%rbp)	# tmp134, best_row
	jmp	.L62	#
.L64:
# practica_one_time_pad.c:223: 			continue;
	nop	
.L62:
# practica_one_time_pad.c:220: 	for (int row = 0; row < NUM_MSGS; row++)
	addl	$1, -4(%rbp)	#, row
.L60:
# practica_one_time_pad.c:220: 	for (int row = 0; row < NUM_MSGS; row++)
	cmpl	$13, -4(%rbp)	#, row
	jle	.L63	#,
# practica_one_time_pad.c:231: 	xor_c_with_space(key, bytes[best_row][column], column);
	movl	-8(%rbp), %eax	# best_row, tmp135
	cltq
	imulq	$250, %rax, %rdx	#, _17, _18
	movq	-24(%rbp), %rax	# bytes, tmp136
	addq	%rax, %rdx	# tmp136, _19
# practica_one_time_pad.c:231: 	xor_c_with_space(key, bytes[best_row][column], column);
	movl	-52(%rbp), %eax	# column, tmp138
	cltq
	movzbl	(%rdx,%rax), %eax	# (*_19)[column_31(D)], _20
# practica_one_time_pad.c:231: 	xor_c_with_space(key, bytes[best_row][column], column);
	movl	-52(%rbp), %edx	# column, tmp139
	movzbl	%al, %ecx	# _20, tmp140
	movq	-40(%rbp), %rax	# key, tmp141
	movl	%ecx, %esi	# tmp140,
	movq	%rax, %rdi	# tmp141,
	call	xor_c_with_space	#
# practica_one_time_pad.c:232: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE18:
	.size	create_key, .-create_key
	.globl	xor_c_with_space
	.type	xor_c_with_space, @function
xor_c_with_space:
.LFB19:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# key, key
	movb	%sil, -9(%rbp)	# c, c
	movl	%edx, -16(%rbp)	# column, column
# practica_one_time_pad.c:236: 	key[column] = c ^ ' ';
	movl	-16(%rbp), %eax	# column, tmp101
	movslq	%eax, %rdx	# tmp101, _1
	movq	-8(%rbp), %rax	# key, tmp102
	addq	%rdx, %rax	# _1, _2
# practica_one_time_pad.c:236: 	key[column] = c ^ ' ';
	movzbl	-9(%rbp), %edx	# c, tmp103
	xorl	$32, %edx	#, _3
	movb	%dl, (%rax)	# _3, *_2
# practica_one_time_pad.c:237: }
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE19:
	.size	xor_c_with_space, .-xor_c_with_space
	.ident	"GCC: (GNU) 16.2.1 20260810"
	.section	.note.GNU-stack,"",@progbits
