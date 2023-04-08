
./fuzz_parser_icall:	file format elf64-x86-64

Disassembly of section .text:

0000000000205720 <_start>:
  205720: f3 0f 1e fa                  	endbr64
  205724: 31 ed                        	xorl	%ebp, %ebp
  205726: 49 89 d1                     	movq	%rdx, %r9
  205729: 5e                           	popq	%rsi
  20572a: 48 89 e2                     	movq	%rsp, %rdx
  20572d: 48 83 e4 f0                  	andq	$-16, %rsp
  205731: 50                           	pushq	%rax
  205732: 54                           	pushq	%rsp
  205733: 4c 8d 05 56 43 00 00         	leaq	17238(%rip), %r8        # 0x209a90 <__libc_csu_fini>
  20573a: 48 8d 0d df 42 00 00         	leaq	17119(%rip), %rcx       # 0x209a20 <__libc_csu_init>
  205741: 48 8d 3d 38 01 00 00         	leaq	312(%rip), %rdi         # 0x205880 <main>
  205748: ff 15 62 e5 00 00            	callq	*58722(%rip)            # 0x213cb0 <write+0x213cb0>
  20574e: f4                           	hlt
  20574f: 90                           	nop

0000000000205750 <_dl_relocate_static_pie>:
  205750: f3 0f 1e fa                  	endbr64
  205754: c3                           	retq
  205755: cc                           	int3
  205756: cc                           	int3
  205757: cc                           	int3
  205758: cc                           	int3
  205759: cc                           	int3
  20575a: cc                           	int3
  20575b: cc                           	int3
  20575c: cc                           	int3
  20575d: cc                           	int3
  20575e: cc                           	int3
  20575f: cc                           	int3

0000000000205760 <deregister_tm_clones>:
  205760: b8 30 4d 21 00               	movl	$2182448, %eax          # imm = 0x214D30
  205765: 48 3d 30 4d 21 00            	cmpq	$2182448, %rax          # imm = 0x214D30
  20576b: 74 13                        	je	0x205780 <deregister_tm_clones+0x20>
  20576d: b8 00 00 00 00               	movl	$0, %eax
  205772: 48 85 c0                     	testq	%rax, %rax
  205775: 74 09                        	je	0x205780 <deregister_tm_clones+0x20>
  205777: bf 30 4d 21 00               	movl	$2182448, %edi          # imm = 0x214D30
  20577c: ff e0                        	jmpq	*%rax
  20577e: 66 90                        	nop
  205780: c3                           	retq
  205781: 66 66 2e 0f 1f 84 00 00 00 00 00     	nopw	%cs:(%rax,%rax)
  20578c: 0f 1f 40 00                  	nopl	(%rax)

0000000000205790 <register_tm_clones>:
  205790: be 30 4d 21 00               	movl	$2182448, %esi          # imm = 0x214D30
  205795: 48 81 ee 30 4d 21 00         	subq	$2182448, %rsi          # imm = 0x214D30
  20579c: 48 89 f0                     	movq	%rsi, %rax
  20579f: 48 c1 ee 3f                  	shrq	$63, %rsi
  2057a3: 48 c1 f8 03                  	sarq	$3, %rax
  2057a7: 48 01 c6                     	addq	%rax, %rsi
  2057aa: 48 d1 fe                     	sarq	%rsi
  2057ad: 74 11                        	je	0x2057c0 <register_tm_clones+0x30>
  2057af: b8 00 00 00 00               	movl	$0, %eax
  2057b4: 48 85 c0                     	testq	%rax, %rax
  2057b7: 74 07                        	je	0x2057c0 <register_tm_clones+0x30>
  2057b9: bf 30 4d 21 00               	movl	$2182448, %edi          # imm = 0x214D30
  2057be: ff e0                        	jmpq	*%rax
  2057c0: c3                           	retq
  2057c1: 66 66 2e 0f 1f 84 00 00 00 00 00     	nopw	%cs:(%rax,%rax)
  2057cc: 0f 1f 40 00                  	nopl	(%rax)

00000000002057d0 <__do_global_dtors_aux>:
  2057d0: f3 0f 1e fa                  	endbr64
  2057d4: 80 3d 15 f7 00 00 00         	cmpb	$0, 63253(%rip)         # 0x214ef0 <completed.8061>
  2057db: 75 13                        	jne	0x2057f0 <__do_global_dtors_aux+0x20>
  2057dd: 55                           	pushq	%rbp
  2057de: 48 89 e5                     	movq	%rsp, %rbp
  2057e1: e8 7a ff ff ff               	callq	0x205760 <deregister_tm_clones>
  2057e6: c6 05 03 f7 00 00 01         	movb	$1, 63235(%rip)         # 0x214ef0 <completed.8061>
  2057ed: 5d                           	popq	%rbp
  2057ee: c3                           	retq
  2057ef: 90                           	nop
  2057f0: c3                           	retq
  2057f1: 66 66 2e 0f 1f 84 00 00 00 00 00     	nopw	%cs:(%rax,%rax)
  2057fc: 0f 1f 40 00                  	nopl	(%rax)

0000000000205800 <frame_dummy>:
  205800: f3 0f 1e fa                  	endbr64
  205804: eb 8a                        	jmp	0x205790 <register_tm_clones>
  205806: cc                           	int3
  205807: cc                           	int3
  205808: cc                           	int3
  205809: cc                           	int3
  20580a: cc                           	int3
  20580b: cc                           	int3
  20580c: cc                           	int3
  20580d: cc                           	int3
  20580e: cc                           	int3
  20580f: cc                           	int3

0000000000205810 <__asan_poison_memory_region>:
  205810: c3                           	retq
  205811: 66 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%rax,%rax)

0000000000205820 <__asan_unpoison_memory_region>:
  205820: c3                           	retq
  205821: 66 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%rax,%rax)

0000000000205830 <__decide_deferred_forkserver>:
  205830: 50                           	pushq	%rax
  205831: 48 8d 3d c1 c8 ff ff         	leaq	-14143(%rip), %rdi      # 0x2020f9 <_IO_stdin_used+0x399>
  205838: e8 33 cf 00 00               	callq	0x212770 <getenv@plt>
  20583d: 48 85 c0                     	testq	%rax, %rax
  205840: 74 10                        	je	0x205852 <__decide_deferred_forkserver+0x22>
  205842: 48 8d 3d db cb ff ff         	leaq	-13349(%rip), %rdi      # 0x202424 <_IO_stdin_used+0x6c4>
  205849: e8 32 cf 00 00               	callq	0x212780 <unsetenv@plt>
  20584e: 85 c0                        	testl	%eax, %eax
  205850: 75 02                        	jne	0x205854 <__decide_deferred_forkserver+0x24>
  205852: 58                           	popq	%rax
  205853: c3                           	retq
  205854: 48 8d 3d 29 d4 ff ff         	leaq	-11223(%rip), %rdi      # 0x202c84 <_IO_stdin_used+0xf24>
  20585b: e8 30 cf 00 00               	callq	0x212790 <perror@plt>
  205860: e8 3b cf 00 00               	callq	0x2127a0 <abort@plt>
  205865: 66 66 2e 0f 1f 84 00 00 00 00 00     	nopw	%cs:(%rax,%rax)

0000000000205870 <LLVMFuzzerMutate>:
  205870: 31 c0                        	xorl	%eax, %eax
  205872: c3                           	retq
  205873: 66 66 66 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

0000000000205880 <main>:
  205880: 55                           	pushq	%rbp
  205881: 41 57                        	pushq	%r15
  205883: 41 56                        	pushq	%r14
  205885: 41 54                        	pushq	%r12
  205887: 53                           	pushq	%rbx
  205888: 48 83 ec 50                  	subq	$80, %rsp
  20588c: 48 89 f3                     	movq	%rsi, %rbx
  20588f: 41 89 ff                     	movl	%edi, %r15d
  205892: 89 7c 24 04                  	movl	%edi, 4(%rsp)
  205896: 48 89 74 24 08               	movq	%rsi, 8(%rsp)
  20589b: 83 ff 02                     	cmpl	$2, %edi
  20589e: 7c 19                        	jl	0x2058b9 <main+0x39>
  2058a0: 48 8b 7b 08                  	movq	8(%rbx), %rdi
  2058a4: 48 8d 35 dd cc ff ff         	leaq	-13091(%rip), %rsi      # 0x202588 <_IO_stdin_used+0x828>
  2058ab: ba 02 00 00 00               	movl	$2, %edx
  2058b0: e8 fb ce 00 00               	callq	0x2127b0 <strncmp@plt>
  2058b5: 85 c0                        	testl	%eax, %eax
  2058b7: 75 14                        	jne	0x2058cd <main+0x4d>
  2058b9: 48 8b 13                     	movq	(%rbx), %rdx
  2058bc: 48 8d 3d 8d ce ff ff         	leaq	-12659(%rip), %rdi      # 0x202750 <_IO_stdin_used+0x9f0>
  2058c3: 48 89 d6                     	movq	%rdx, %rsi
  2058c6: 31 c0                        	xorl	%eax, %eax
  2058c8: e8 f3 ce 00 00               	callq	0x2127c0 <printf@plt>
  2058cd: 48 8d 3d ec d0 ff ff         	leaq	-12052(%rip), %rdi      # 0x2029c0 <_IO_stdin_used+0xc60>
  2058d4: e8 97 ce 00 00               	callq	0x212770 <getenv@plt>
  2058d9: 48 85 c0                     	testq	%rax, %rax
  2058dc: 0f 85 30 02 00 00            	jne	0x205b12 <main+0x292>
  2058e2: 4c 8b 25 d7 e3 00 00         	movq	58327(%rip), %r12       # 0x213cc0 <write+0x213cc0>
  2058e9: 49 8b 1c 24                  	movq	(%r12), %rbx
  2058ed: 48 89 1d 04 f6 00 00         	movq	%rbx, 62980(%rip)       # 0x214ef8 <output_file>
  2058f4: 48 8d 3d 13 cd ff ff         	leaq	-13037(%rip), %rdi      # 0x20260e <_IO_stdin_used+0x8ae>
  2058fb: e8 70 ce 00 00               	callq	0x212770 <getenv@plt>
  205900: 48 85 c0                     	testq	%rax, %rax
  205903: 74 22                        	je	0x205927 <main+0xa7>
  205905: 48 8d 35 5f c6 ff ff         	leaq	-14753(%rip), %rsi      # 0x201f6b <_IO_stdin_used+0x20b>
  20590c: 48 89 c7                     	movq	%rax, %rdi
  20590f: 48 89 da                     	movq	%rbx, %rdx
  205912: e8 b9 ce 00 00               	callq	0x2127d0 <freopen@plt>
  205917: 48 85 c0                     	testq	%rax, %rax
  20591a: 0f 84 b8 03 00 00            	je	0x205cd8 <main+0x458>
  205920: 48 89 05 d1 f5 00 00         	movq	%rax, 62929(%rip)       # 0x214ef8 <output_file>
  205927: 48 8d 3d 36 c4 ff ff         	leaq	-15306(%rip), %rdi      # 0x201d64 <_IO_stdin_used+0x4>
  20592e: e8 3d ce 00 00               	callq	0x212770 <getenv@plt>
  205933: 48 85 c0                     	testq	%rax, %rax
  205936: 0f 84 dc 00 00 00            	je	0x205a18 <main+0x198>
  20593c: 48 89 c7                     	movq	%rax, %rdi
  20593f: 31 f6                        	xorl	%esi, %esi
  205941: ba 0a 00 00 00               	movl	$10, %edx
  205946: e8 95 ce 00 00               	callq	0x2127e0 <strtol@plt>
  20594b: 48 89 c3                     	movq	%rax, %rbx
  20594e: f6 c3 02                     	testb	$2, %bl
  205951: 0f 84 81 00 00 00            	je	0x2059d8 <main+0x158>
  205957: 48 8b 3d 9a f5 00 00         	movq	62874(%rip), %rdi       # 0x214ef8 <output_file>
  20595e: e8 8d ce 00 00               	callq	0x2127f0 <fileno@plt>
  205963: 41 89 c6                     	movl	%eax, %r14d
  205966: 89 c7                        	movl	%eax, %edi
  205968: e8 93 ce 00 00               	callq	0x212800 <dup@plt>
  20596d: 85 c0                        	testl	%eax, %eax
  20596f: 0f 8e 7d 03 00 00            	jle	0x205cf2 <main+0x472>
  205975: 89 c5                        	movl	%eax, %ebp
  205977: 48 8d 35 93 ca ff ff         	leaq	-13677(%rip), %rsi      # 0x202411 <_IO_stdin_used+0x6b1>
  20597e: 89 c7                        	movl	%eax, %edi
  205980: e8 8b ce 00 00               	callq	0x212810 <fdopen@plt>
  205985: 48 85 c0                     	testq	%rax, %rax
  205988: 0f 84 64 03 00 00            	je	0x205cf2 <main+0x472>
  20598e: 48 83 3d 32 e3 00 00 00      	cmpq	$0, 58162(%rip)         # 0x213cc8 <write+0x213cc8>
  205996: 74 40                        	je	0x2059d8 <main+0x158>
  205998: 89 ef                        	movl	%ebp, %edi
  20599a: e8 81 ce 00 00               	callq	0x212820 <__sanitizer_set_report_fd@plt>
  20599f: 48 8d 3d 8d cc ff ff         	leaq	-13171(%rip), %rdi      # 0x202633 <_IO_stdin_used+0x8d3>
  2059a6: 48 8d 35 64 ca ff ff         	leaq	-13724(%rip), %rsi      # 0x202411 <_IO_stdin_used+0x6b1>
  2059ad: e8 7e ce 00 00               	callq	0x212830 <fopen@plt>
  2059b2: 48 85 c0                     	testq	%rax, %rax
  2059b5: 0f 84 37 03 00 00            	je	0x205cf2 <main+0x472>
  2059bb: 48 89 c5                     	movq	%rax, %rbp
  2059be: 48 89 c7                     	movq	%rax, %rdi
  2059c1: e8 2a ce 00 00               	callq	0x2127f0 <fileno@plt>
  2059c6: 89 c7                        	movl	%eax, %edi
  2059c8: 44 89 f6                     	movl	%r14d, %esi
  2059cb: e8 70 ce 00 00               	callq	0x212840 <dup2@plt>
  2059d0: 48 89 ef                     	movq	%rbp, %rdi
  2059d3: e8 78 ce 00 00               	callq	0x212850 <fclose@plt>
  2059d8: f6 c3 01                     	testb	$1, %bl
  2059db: 74 3b                        	je	0x205a18 <main+0x198>
  2059dd: 48 8d 3d 4f cc ff ff         	leaq	-13233(%rip), %rdi      # 0x202633 <_IO_stdin_used+0x8d3>
  2059e4: 48 8d 35 26 ca ff ff         	leaq	-13786(%rip), %rsi      # 0x202411 <_IO_stdin_used+0x6b1>
  2059eb: e8 40 ce 00 00               	callq	0x212830 <fopen@plt>
  2059f0: 48 85 c0                     	testq	%rax, %rax
  2059f3: 0f 84 f9 02 00 00            	je	0x205cf2 <main+0x472>
  2059f9: 48 89 c3                     	movq	%rax, %rbx
  2059fc: 48 89 c7                     	movq	%rax, %rdi
  2059ff: e8 ec cd 00 00               	callq	0x2127f0 <fileno@plt>
  205a04: 89 c7                        	movl	%eax, %edi
  205a06: be 01 00 00 00               	movl	$1, %esi
  205a0b: e8 30 ce 00 00               	callq	0x212840 <dup2@plt>
  205a10: 48 89 df                     	movq	%rbx, %rdi
  205a13: e8 38 ce 00 00               	callq	0x212850 <fclose@plt>
  205a18: 48 83 3d b0 e2 00 00 00      	cmpq	$0, 58032(%rip)         # 0x213cd0 <write+0x213cd0>
  205a20: 0f 85 47 01 00 00            	jne	0x205b6d <main+0x2ed>
  205a26: 0f 57 c0                     	xorps	%xmm0, %xmm0
  205a29: 0f 11 44 24 37               	movups	%xmm0, 55(%rsp)
  205a2e: 0f 11 44 24 27               	movups	%xmm0, 39(%rsp)
  205a33: 0f 11 44 24 40               	movups	%xmm0, 64(%rsp)
  205a38: 0f 28 05 01 d3 ff ff         	movaps	-11519(%rip), %xmm0     # 0x202d40 <AFL_PERSISTENT>
  205a3f: 0f 29 44 24 10               	movaps	%xmm0, 16(%rsp)
  205a44: 48 b8 53 54 45 4e 54 23 23 00	movabsq	$9890469182264403, %rax # imm = 0x2323544E455453
  205a4e: 48 89 44 24 1f               	movq	%rax, 31(%rsp)
  205a53: 0f 28 05 06 d3 ff ff         	movaps	-11514(%rip), %xmm0     # 0x202d60 <AFL_DEFER_FORKSVR>
  205a5a: 0f 29 44 24 30               	movaps	%xmm0, 48(%rsp)
  205a5f: 0f 10 05 04 d3 ff ff         	movups	-11516(%rip), %xmm0     # 0x202d6a <AFL_DEFER_FORKSVR+0xa>
  205a66: 0f 11 44 24 3a               	movups	%xmm0, 58(%rsp)
  205a6b: 41 be ff ff ff 7f            	movl	$2147483647, %r14d      # imm = 0x7FFFFFFF
  205a71: 41 83 ff 02                  	cmpl	$2, %r15d
  205a75: 0f 85 44 01 00 00            	jne	0x205bbf <main+0x33f>
  205a7b: 48 8b 6c 24 08               	movq	8(%rsp), %rbp
  205a80: 48 8b 5d 08                  	movq	8(%rbp), %rbx
  205a84: 48 8d 35 b0 c6 ff ff         	leaq	-14672(%rip), %rsi      # 0x20213b <_IO_stdin_used+0x3db>
  205a8b: 48 89 df                     	movq	%rbx, %rdi
  205a8e: e8 dd cd 00 00               	callq	0x212870 <strcmp@plt>
  205a93: 85 c0                        	testl	%eax, %eax
  205a95: 74 1f                        	je	0x205ab6 <main+0x236>
  205a97: 80 3b 2d                     	cmpb	$45, (%rbx)
  205a9a: 75 41                        	jne	0x205add <main+0x25d>
  205a9c: 48 ff c3                     	incq	%rbx
  205a9f: 48 89 df                     	movq	%rbx, %rdi
  205aa2: 31 f6                        	xorl	%esi, %esi
  205aa4: ba 0a 00 00 00               	movl	$10, %edx
  205aa9: e8 32 cd 00 00               	callq	0x2127e0 <strtol@plt>
  205aae: 49 89 c6                     	movq	%rax, %r14
  205ab1: e9 3c 01 00 00               	jmp	0x205bf2 <main+0x372>
  205ab6: 48 8d 05 33 f2 00 00         	leaq	62003(%rip), %rax       # 0x214cf0 <__afl_sharedmem_fuzzing>
  205abd: c7 00 00 00 00 00            	movl	$0, (%rax)
  205ac3: 31 c0                        	xorl	%eax, %eax
  205ac5: e8 86 05 00 00               	callq	0x206050 <__afl_manual_init>
  205aca: 8b 7c 24 04                  	movl	4(%rsp), %edi
  205ace: 48 8b 74 24 08               	movq	8(%rsp), %rsi
  205ad3: e8 48 02 00 00               	callq	0x205d20 <ExecuteFilesOnyByOne>
  205ad8: e9 ec 01 00 00               	jmp	0x205cc9 <main+0x449>
  205add: 48 89 df                     	movq	%rbx, %rdi
  205ae0: 31 f6                        	xorl	%esi, %esi
  205ae2: ba 0a 00 00 00               	movl	$10, %edx
  205ae7: e8 f4 cc 00 00               	callq	0x2127e0 <strtol@plt>
  205aec: 49 89 c6                     	movq	%rax, %r14
  205aef: 45 85 f6                     	testl	%r14d, %r14d
  205af2: 0f 8e c2 00 00 00            	jle	0x205bba <main+0x33a>
  205af8: 48 8b 75 00                  	movq	(%rbp), %rsi
  205afc: 48 8d 3d a0 c4 ff ff         	leaq	-15200(%rip), %rdi      # 0x201fa3 <_IO_stdin_used+0x243>
  205b03: 44 89 f2                     	movl	%r14d, %edx
  205b06: 31 c0                        	xorl	%eax, %eax
  205b08: e8 b3 cc 00 00               	callq	0x2127c0 <printf@plt>
  205b0d: e9 e9 00 00 00               	jmp	0x205bfb <main+0x37b>
  205b12: e8 69 cd 00 00               	callq	0x212880 <getpid@plt>
  205b17: 48 8d 15 28 c7 ff ff         	leaq	-14552(%rip), %rdx      # 0x202246 <_IO_stdin_used+0x4e6>
  205b1e: 48 8d 5c 24 10               	leaq	16(%rsp), %rbx
  205b23: be 40 00 00 00               	movl	$64, %esi
  205b28: 48 89 df                     	movq	%rbx, %rdi
  205b2b: 89 c1                        	movl	%eax, %ecx
  205b2d: 31 c0                        	xorl	%eax, %eax
  205b2f: e8 5c cd 00 00               	callq	0x212890 <snprintf@plt>
  205b34: 48 89 df                     	movq	%rbx, %rdi
  205b37: e8 64 cd 00 00               	callq	0x2128a0 <system@plt>
  205b3c: 48 8b 05 7d e1 00 00         	movq	57725(%rip), %rax       # 0x213cc0 <write+0x213cc0>
  205b43: 48 8b 18                     	movq	(%rax), %rbx
  205b46: e8 35 cd 00 00               	callq	0x212880 <getpid@plt>
  205b4b: 48 8d 35 bd c5 ff ff         	leaq	-14915(%rip), %rsi      # 0x20210f <_IO_stdin_used+0x3af>
  205b52: 48 89 df                     	movq	%rbx, %rdi
  205b55: 89 c2                        	movl	%eax, %edx
  205b57: 31 c0                        	xorl	%eax, %eax
  205b59: e8 52 cd 00 00               	callq	0x2128b0 <fprintf@plt>
  205b5e: bf 01 00 00 00               	movl	$1, %edi
  205b63: e8 58 cd 00 00               	callq	0x2128c0 <sleep@plt>
  205b68: e9 75 fd ff ff               	jmp	0x2058e2 <main+0x62>
  205b6d: 49 8b 0c 24                  	movq	(%r12), %rcx
  205b71: 48 8d 3d b5 ce ff ff         	leaq	-12619(%rip), %rdi      # 0x202a2d <_IO_stdin_used+0xccd>
  205b78: be 21 00 00 00               	movl	$33, %esi
  205b7d: ba 01 00 00 00               	movl	$1, %edx
  205b82: e8 49 cd 00 00               	callq	0x2128d0 <fwrite@plt>
  205b87: 48 8d 7c 24 04               	leaq	4(%rsp), %rdi
  205b8c: 48 8d 74 24 08               	leaq	8(%rsp), %rsi
  205b91: e8 ca cc 00 00               	callq	0x212860 <LLVMFuzzerInitialize@plt>
  205b96: 49 8b 0c 24                  	movq	(%r12), %rcx
  205b9a: 48 8d 3d 8d c5 ff ff         	leaq	-14963(%rip), %rdi      # 0x20212e <_IO_stdin_used+0x3ce>
  205ba1: be 0c 00 00 00               	movl	$12, %esi
  205ba6: ba 01 00 00 00               	movl	$1, %edx
  205bab: e8 20 cd 00 00               	callq	0x2128d0 <fwrite@plt>
  205bb0: 44 8b 7c 24 04               	movl	4(%rsp), %r15d
  205bb5: e9 6c fe ff ff               	jmp	0x205a26 <main+0x1a6>
  205bba: 44 8b 7c 24 04               	movl	4(%rsp), %r15d
  205bbf: 41 83 ff 02                  	cmpl	$2, %r15d
  205bc3: 7c 2d                        	jl	0x205bf2 <main+0x372>
  205bc5: 48 8d 05 24 f1 00 00         	leaq	61732(%rip), %rax       # 0x214cf0 <__afl_sharedmem_fuzzing>
  205bcc: c7 00 00 00 00 00            	movl	$0, (%rax)
  205bd2: 75 0c                        	jne	0x205be0 <main+0x360>
  205bd4: 31 c0                        	xorl	%eax, %eax
  205bd6: e8 75 04 00 00               	callq	0x206050 <__afl_manual_init>
  205bdb: 44 8b 7c 24 04               	movl	4(%rsp), %r15d
  205be0: 48 8b 74 24 08               	movq	8(%rsp), %rsi
  205be5: 44 89 ff                     	movl	%r15d, %edi
  205be8: e8 33 01 00 00               	callq	0x205d20 <ExecuteFilesOnyByOne>
  205bed: e9 d7 00 00 00               	jmp	0x205cc9 <main+0x449>
  205bf2: 45 85 f6                     	testl	%r14d, %r14d
  205bf5: 0f 8e fc 00 00 00            	jle	0x205cf7 <main+0x477>
  205bfb: 31 c0                        	xorl	%eax, %eax
  205bfd: e8 4e 04 00 00               	callq	0x206050 <__afl_manual_init>
  205c02: 48 8d 7c 24 10               	leaq	16(%rsp), %rdi
  205c07: be 04 00 00 00               	movl	$4, %esi
  205c0c: e8 af ca 00 00               	callq	0x2126c0 <LLVMFuzzerTestOneInput>
  205c11: 4c 8d 3d 48 f3 20 00         	leaq	2159432(%rip), %r15     # 0x414f60 <__afl_fuzz_ptr>
  205c18: 49 8b 3f                     	movq	(%r15), %rdi
  205c1b: be 00 00 10 00               	movl	$1048576, %esi          # imm = 0x100000
  205c20: e8 eb fb ff ff               	callq	0x205810 <__asan_poison_memory_region>
  205c25: 44 89 f7                     	movl	%r14d, %edi
  205c28: e8 43 03 00 00               	callq	0x205f70 <__afl_persistent_loop>
  205c2d: 48 83 3d a3 e0 00 00 00      	cmpq	$0, 57507(%rip)         # 0x213cd8 <write+0x213cd8>
  205c35: 74 66                        	je	0x205c9d <main+0x41d>
  205c37: 85 c0                        	testl	%eax, %eax
  205c39: 0f 84 8a 00 00 00            	je	0x205cc9 <main+0x449>
  205c3f: 31 db                        	xorl	%ebx, %ebx
  205c41: 4c 8d 25 b8 f0 00 00         	leaq	61624(%rip), %r12       # 0x214d00 <__afl_fuzz_len>
  205c48: eb 2b                        	jmp	0x205c75 <main+0x3f5>
  205c4a: 66 0f 1f 44 00 00            	nopw	(%rax,%rax)
  205c50: 49 8b 3f                     	movq	(%r15), %rdi
  205c53: 48 01 ef                     	addq	%rbp, %rdi
  205c56: e8 b5 fb ff ff               	callq	0x205810 <__asan_poison_memory_region>
  205c5b: 49 8b 3f                     	movq	(%r15), %rdi
  205c5e: 48 89 ee                     	movq	%rbp, %rsi
  205c61: e8 5a ca 00 00               	callq	0x2126c0 <LLVMFuzzerTestOneInput>
  205c66: 48 89 eb                     	movq	%rbp, %rbx
  205c69: 44 89 f7                     	movl	%r14d, %edi
  205c6c: e8 ff 02 00 00               	callq	0x205f70 <__afl_persistent_loop>
  205c71: 85 c0                        	testl	%eax, %eax
  205c73: 74 54                        	je	0x205cc9 <main+0x449>
  205c75: 49 8b 04 24                  	movq	(%r12), %rax
  205c79: 8b 28                        	movl	(%rax), %ebp
  205c7b: 48 85 ed                     	testq	%rbp, %rbp
  205c7e: 74 e9                        	je	0x205c69 <main+0x3e9>
  205c80: 48 89 de                     	movq	%rbx, %rsi
  205c83: 48 29 ee                     	subq	%rbp, %rsi
  205c86: 77 c8                        	ja	0x205c50 <main+0x3d0>
  205c88: 73 d1                        	jae	0x205c5b <main+0x3db>
  205c8a: 48 89 ee                     	movq	%rbp, %rsi
  205c8d: 48 29 de                     	subq	%rbx, %rsi
  205c90: 49 03 1f                     	addq	(%r15), %rbx
  205c93: 48 89 df                     	movq	%rbx, %rdi
  205c96: e8 85 fb ff ff               	callq	0x205820 <__asan_unpoison_memory_region>
  205c9b: eb be                        	jmp	0x205c5b <main+0x3db>
  205c9d: 85 c0                        	testl	%eax, %eax
  205c9f: 74 28                        	je	0x205cc9 <main+0x449>
  205ca1: 48 8d 1d 58 f0 00 00         	leaq	61528(%rip), %rbx       # 0x214d00 <__afl_fuzz_len>
  205ca8: 0f 1f 84 00 00 00 00 00      	nopl	(%rax,%rax)
  205cb0: 49 8b 3f                     	movq	(%r15), %rdi
  205cb3: 48 8b 03                     	movq	(%rbx), %rax
  205cb6: 8b 30                        	movl	(%rax), %esi
  205cb8: e8 03 ca 00 00               	callq	0x2126c0 <LLVMFuzzerTestOneInput>
  205cbd: 44 89 f7                     	movl	%r14d, %edi
  205cc0: e8 ab 02 00 00               	callq	0x205f70 <__afl_persistent_loop>
  205cc5: 85 c0                        	testl	%eax, %eax
  205cc7: 75 e7                        	jne	0x205cb0 <main+0x430>
  205cc9: 31 c0                        	xorl	%eax, %eax
  205ccb: 48 83 c4 50                  	addq	$80, %rsp
  205ccf: 5b                           	popq	%rbx
  205cd0: 41 5c                        	popq	%r12
  205cd2: 41 5e                        	popq	%r14
  205cd4: 41 5f                        	popq	%r15
  205cd6: 5d                           	popq	%rbp
  205cd7: c3                           	retq
  205cd8: 49 8b 0c 24                  	movq	(%r12), %rcx
  205cdc: 48 8d 3d d4 cf ff ff         	leaq	-12332(%rip), %rdi      # 0x202cb7 <_IO_stdin_used+0xf57>
  205ce3: be 42 00 00 00               	movl	$66, %esi
  205ce8: ba 01 00 00 00               	movl	$1, %edx
  205ced: e8 de cb 00 00               	callq	0x2128d0 <fwrite@plt>
  205cf2: e8 a9 ca 00 00               	callq	0x2127a0 <abort@plt>
  205cf7: 48 8d 3d fd c4 ff ff         	leaq	-15107(%rip), %rdi      # 0x2021fb <_IO_stdin_used+0x49b>
  205cfe: 48 8d 35 a3 cf ff ff         	leaq	-12381(%rip), %rsi      # 0x202ca8 <_IO_stdin_used+0xf48>
  205d05: 48 8d 0d 31 c4 ff ff         	leaq	-15311(%rip), %rcx      # 0x20213d <_IO_stdin_used+0x3dd>
  205d0c: ba 42 01 00 00               	movl	$322, %edx              # imm = 0x142
  205d11: e8 ca cb 00 00               	callq	0x2128e0 <__assert_fail@plt>
  205d16: 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)

0000000000205d20 <ExecuteFilesOnyByOne>:
  205d20: 55                           	pushq	%rbp
  205d21: 41 57                        	pushq	%r15
  205d23: 41 56                        	pushq	%r14
  205d25: 41 55                        	pushq	%r13
  205d27: 41 54                        	pushq	%r12
  205d29: 53                           	pushq	%rbx
  205d2a: 50                           	pushq	%rax
  205d2b: 49 89 f6                     	movq	%rsi, %r14
  205d2e: 89 fd                        	movl	%edi, %ebp
  205d30: bf 00 00 10 00               	movl	$1048576, %edi          # imm = 0x100000
  205d35: e8 b6 cb 00 00               	callq	0x2128f0 <malloc@plt>
  205d3a: 48 89 c3                     	movq	%rax, %rbx
  205d3d: be 00 00 10 00               	movl	$1048576, %esi          # imm = 0x100000
  205d42: 48 89 c7                     	movq	%rax, %rdi
  205d45: e8 c6 fa ff ff               	callq	0x205810 <__asan_poison_memory_region>
  205d4a: 83 fd 02                     	cmpl	$2, %ebp
  205d4d: 0f 8c ed 00 00 00            	jl	0x205e40 <ExecuteFilesOnyByOne+0x120>
  205d53: 89 e8                        	movl	%ebp, %eax
  205d55: 48 89 04 24                  	movq	%rax, (%rsp)
  205d59: 41 bf 01 00 00 00            	movl	$1, %r15d
  205d5f: 45 31 ed                     	xorl	%r13d, %r13d
  205d62: eb 19                        	jmp	0x205d7d <ExecuteFilesOnyByOne+0x5d>
  205d64: 66 66 66 2e 0f 1f 84 00 00 00 00 00  	nopw	%cs:(%rax,%rax)
  205d70: 49 ff c7                     	incq	%r15
  205d73: 4c 39 3c 24                  	cmpq	%r15, (%rsp)
  205d77: 0f 84 c3 00 00 00            	je	0x205e40 <ExecuteFilesOnyByOne+0x120>
  205d7d: 4b 8b 2c fe                  	movq	(%r14,%r15,8), %rbp
  205d81: 48 89 ef                     	movq	%rbp, %rdi
  205d84: 48 8d 35 b0 c3 ff ff         	leaq	-15440(%rip), %rsi      # 0x20213b <_IO_stdin_used+0x3db>
  205d8b: e8 e0 ca 00 00               	callq	0x212870 <strcmp@plt>
  205d90: 41 bc 00 00 00 00            	movl	$0, %r12d
  205d96: 85 c0                        	testl	%eax, %eax
  205d98: 74 14                        	je	0x205dae <ExecuteFilesOnyByOne+0x8e>
  205d9a: 48 89 ef                     	movq	%rbp, %rdi
  205d9d: 31 f6                        	xorl	%esi, %esi
  205d9f: 31 c0                        	xorl	%eax, %eax
  205da1: e8 5a cb 00 00               	callq	0x212900 <open@plt>
  205da6: 41 89 c4                     	movl	%eax, %r12d
  205da9: 83 f8 ff                     	cmpl	$-1, %eax
  205dac: 74 c2                        	je	0x205d70 <ExecuteFilesOnyByOne+0x50>
  205dae: b9 00 00 10 00               	movl	$1048576, %ecx          # imm = 0x100000
  205db3: 31 ff                        	xorl	%edi, %edi
  205db5: 44 89 e6                     	movl	%r12d, %esi
  205db8: 48 89 da                     	movq	%rbx, %rdx
  205dbb: 31 c0                        	xorl	%eax, %eax
  205dbd: e8 4e cb 00 00               	callq	0x212910 <syscall@plt>
  205dc2: 48 85 c0                     	testq	%rax, %rax
  205dc5: 7e 63                        	jle	0x205e2a <ExecuteFilesOnyByOne+0x10a>
  205dc7: 48 89 c5                     	movq	%rax, %rbp
  205dca: 48 89 c6                     	movq	%rax, %rsi
  205dcd: 4c 29 ee                     	subq	%r13, %rsi
  205dd0: 7d 1e                        	jge	0x205df0 <ExecuteFilesOnyByOne+0xd0>
  205dd2: 48 8d 3c 2b                  	leaq	(%rbx,%rbp), %rdi
  205dd6: 49 29 ed                     	subq	%rbp, %r13
  205dd9: 4c 89 ee                     	movq	%r13, %rsi
  205ddc: e8 2f fa ff ff               	callq	0x205810 <__asan_poison_memory_region>
  205de1: eb 18                        	jmp	0x205dfb <ExecuteFilesOnyByOne+0xdb>
  205de3: 66 66 66 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
  205df0: 49 01 dd                     	addq	%rbx, %r13
  205df3: 4c 89 ef                     	movq	%r13, %rdi
  205df6: e8 25 fa ff ff               	callq	0x205820 <__asan_unpoison_memory_region>
  205dfb: 4b 8b 14 fe                  	movq	(%r14,%r15,8), %rdx
  205dff: 48 8d 3d a4 c8 ff ff         	leaq	-14172(%rip), %rdi      # 0x2026aa <_IO_stdin_used+0x94a>
  205e06: 48 89 ee                     	movq	%rbp, %rsi
  205e09: 31 c0                        	xorl	%eax, %eax
  205e0b: e8 b0 c9 00 00               	callq	0x2127c0 <printf@plt>
  205e10: 48 89 df                     	movq	%rbx, %rdi
  205e13: 48 89 ee                     	movq	%rbp, %rsi
  205e16: e8 a5 c8 00 00               	callq	0x2126c0 <LLVMFuzzerTestOneInput>
  205e1b: 48 8d 3d 6d c7 ff ff         	leaq	-14483(%rip), %rdi      # 0x20258f <_IO_stdin_used+0x82f>
  205e22: e8 f9 ca 00 00               	callq	0x212920 <puts@plt>
  205e27: 49 89 ed                     	movq	%rbp, %r13
  205e2a: 45 85 e4                     	testl	%r12d, %r12d
  205e2d: 0f 8e 3d ff ff ff            	jle	0x205d70 <ExecuteFilesOnyByOne+0x50>
  205e33: 44 89 e7                     	movl	%r12d, %edi
  205e36: e8 f5 ca 00 00               	callq	0x212930 <close@plt>
  205e3b: e9 30 ff ff ff               	jmp	0x205d70 <ExecuteFilesOnyByOne+0x50>
  205e40: 48 89 df                     	movq	%rbx, %rdi
  205e43: 48 83 c4 08                  	addq	$8, %rsp
  205e47: 5b                           	popq	%rbx
  205e48: 41 5c                        	popq	%r12
  205e4a: 41 5d                        	popq	%r13
  205e4c: 41 5e                        	popq	%r14
  205e4e: 41 5f                        	popq	%r15
  205e50: 5d                           	popq	%rbp
  205e51: e9 ea ca 00 00               	jmp	0x212940 <free@plt>
  205e56: cc                           	int3
  205e57: cc                           	int3
  205e58: cc                           	int3
  205e59: cc                           	int3
  205e5a: cc                           	int3
  205e5b: cc                           	int3
  205e5c: cc                           	int3
  205e5d: cc                           	int3
  205e5e: cc                           	int3
  205e5f: cc                           	int3

0000000000205e60 <__afl_trace>:
  205e60: 53                           	pushq	%rbx
  205e61: 89 fb                        	movl	%edi, %ebx
  205e63: 64 48 8b 04 25 00 00 00 00   	movq	%fs:0, %rax
  205e6c: 48 8d 80 90 ff ff ff         	leaq	-112(%rax), %rax
  205e73: 0f b7 08                     	movzwl	(%rax), %ecx
  205e76: 89 da                        	movl	%ebx, %edx
  205e78: d1 ea                        	shrl	%edx
  205e7a: 66 89 10                     	movw	%dx, (%rax)
  205e7d: 48 8d 05 74 ee 00 00         	leaq	61044(%rip), %rax       # 0x214cf8 <__afl_area_ptr>
  205e84: 48 8b 00                     	movq	(%rax), %rax
  205e87: 31 d9                        	xorl	%ebx, %ecx
  205e89: 8a 14 08                     	movb	(%rax,%rcx), %dl
  205e8c: 80 c2 01                     	addb	$1, %dl
  205e8f: 80 d2 00                     	adcb	$0, %dl
  205e92: 88 14 08                     	movb	%dl, (%rax,%rcx)
  205e95: 5b                           	popq	%rbx
  205e96: c3                           	retq
  205e97: 66 0f 1f 84 00 00 00 00 00   	nopw	(%rax,%rax)

0000000000205ea0 <write_error_with_location>:
  205ea0: 55                           	pushq	%rbp
  205ea1: 41 57                        	pushq	%r15
  205ea3: 41 56                        	pushq	%r14
  205ea5: 41 55                        	pushq	%r13
  205ea7: 41 54                        	pushq	%r12
  205ea9: 53                           	pushq	%rbx
  205eaa: 48 81 ec 08 10 00 00         	subq	$4104, %rsp             # imm = 0x1008
  205eb1: 41 89 d6                     	movl	%edx, %r14d
  205eb4: 49 89 f4                     	movq	%rsi, %r12
  205eb7: 49 89 ff                     	movq	%rdi, %r15
  205eba: 48 8d 3d 40 c3 ff ff         	leaq	-15552(%rip), %rdi      # 0x202201 <_IO_stdin_used+0x4a1>
  205ec1: e8 aa c8 00 00               	callq	0x212770 <getenv@plt>
  205ec6: 48 89 c5                     	movq	%rax, %rbp
  205ec9: e8 82 ca 00 00               	callq	0x212950 <__errno_location@plt>
  205ece: 8b 38                        	movl	(%rax), %edi
  205ed0: e8 8b ca 00 00               	callq	0x212960 <strerror@plt>
  205ed5: 48 89 c3                     	movq	%rax, %rbx
  205ed8: 48 85 ed                     	testq	%rbp, %rbp
  205edb: 74 58                        	je	0x205f35 <write_error_with_location+0x95>
  205edd: 48 8d 15 dc c3 ff ff         	leaq	-15396(%rip), %rdx      # 0x2022c0 <_IO_stdin_used+0x560>
  205ee4: 49 89 e5                     	movq	%rsp, %r13
  205ee7: be 00 10 00 00               	movl	$4096, %esi             # imm = 0x1000
  205eec: 4c 89 ef                     	movq	%r13, %rdi
  205eef: 48 89 e9                     	movq	%rbp, %rcx
  205ef2: 31 c0                        	xorl	%eax, %eax
  205ef4: e8 97 c9 00 00               	callq	0x212890 <snprintf@plt>
  205ef9: 48 8d 35 2e c6 ff ff         	leaq	-14802(%rip), %rsi      # 0x20252e <_IO_stdin_used+0x7ce>
  205f00: 4c 89 ef                     	movq	%r13, %rdi
  205f03: e8 28 c9 00 00               	callq	0x212830 <fopen@plt>
  205f08: 48 85 c0                     	testq	%rax, %rax
  205f0b: 74 28                        	je	0x205f35 <write_error_with_location+0x95>
  205f0d: 48 89 c5                     	movq	%rax, %rbp
  205f10: 48 8d 35 19 c6 ff ff         	leaq	-14823(%rip), %rsi      # 0x202530 <_IO_stdin_used+0x7d0>
  205f17: 48 89 c7                     	movq	%rax, %rdi
  205f1a: 4c 89 e2                     	movq	%r12, %rdx
  205f1d: 44 89 f1                     	movl	%r14d, %ecx
  205f20: 4d 89 f8                     	movq	%r15, %r8
  205f23: 49 89 d9                     	movq	%rbx, %r9
  205f26: 31 c0                        	xorl	%eax, %eax
  205f28: e8 83 c9 00 00               	callq	0x2128b0 <fprintf@plt>
  205f2d: 48 89 ef                     	movq	%rbp, %rdi
  205f30: e8 1b c9 00 00               	callq	0x212850 <fclose@plt>
  205f35: 48 8b 05 84 dd 00 00         	movq	56708(%rip), %rax       # 0x213cc0 <write+0x213cc0>
  205f3c: 48 8b 38                     	movq	(%rax), %rdi
  205f3f: 48 8d 35 ea c5 ff ff         	leaq	-14870(%rip), %rsi      # 0x202530 <_IO_stdin_used+0x7d0>
  205f46: 4c 89 e2                     	movq	%r12, %rdx
  205f49: 44 89 f1                     	movl	%r14d, %ecx
  205f4c: 4d 89 f8                     	movq	%r15, %r8
  205f4f: 49 89 d9                     	movq	%rbx, %r9
  205f52: 31 c0                        	xorl	%eax, %eax
  205f54: 48 81 c4 08 10 00 00         	addq	$4104, %rsp             # imm = 0x1008
  205f5b: 5b                           	popq	%rbx
  205f5c: 41 5c                        	popq	%r12
  205f5e: 41 5d                        	popq	%r13
  205f60: 41 5e                        	popq	%r14
  205f62: 41 5f                        	popq	%r15
  205f64: 5d                           	popq	%rbp
  205f65: e9 46 c9 00 00               	jmp	0x2128b0 <fprintf@plt>
  205f6a: 66 0f 1f 44 00 00            	nopw	(%rax,%rax)

0000000000205f70 <__afl_persistent_loop>:
  205f70: 41 56                        	pushq	%r14
  205f72: 53                           	pushq	%rbx
  205f73: 50                           	pushq	%rax
  205f74: 8a 0d 92 ef 20 00            	movb	2158482(%rip), %cl      # 0x414f0c <is_persistent>
  205f7a: 80 3d 83 ef 20 00 00         	cmpb	$0, 2158467(%rip)       # 0x414f04 <__afl_persistent_loop.first_pass>
  205f81: 74 49                        	je	0x205fcc <__afl_persistent_loop+0x5c>
  205f83: 31 c0                        	xorl	%eax, %eax
  205f85: 84 c9                        	testb	%cl, %cl
  205f87: 0f 84 98 00 00 00            	je	0x206025 <__afl_persistent_loop+0xb5>
  205f8d: ff 0d 75 ef 20 00            	decl	2158453(%rip)           # 0x414f08 <__afl_persistent_loop.cycle_cnt>
  205f93: 0f 84 94 00 00 00            	je	0x20602d <__afl_persistent_loop+0xbd>
  205f99: bf 13 00 00 00               	movl	$19, %edi
  205f9e: e8 cd c9 00 00               	callq	0x212970 <raise@plt>
  205fa3: 48 8d 05 4e ed 00 00         	leaq	60750(%rip), %rax       # 0x214cf8 <__afl_area_ptr>
  205faa: 48 8b 00                     	movq	(%rax), %rax
  205fad: c6 00 01                     	movb	$1, (%rax)
  205fb0: 64 48 8b 04 25 00 00 00 00   	movq	%fs:0, %rax
  205fb9: 48 8d 80 90 ff ff ff         	leaq	-112(%rax), %rax
  205fc0: 0f 57 c0                     	xorps	%xmm0, %xmm0
  205fc3: 0f 29 40 10                  	movaps	%xmm0, 16(%rax)
  205fc7: 0f 29 00                     	movaps	%xmm0, (%rax)
  205fca: eb 4d                        	jmp	0x206019 <__afl_persistent_loop+0xa9>
  205fcc: 89 fb                        	movl	%edi, %ebx
  205fce: 84 c9                        	testb	%cl, %cl
  205fd0: 74 3a                        	je	0x20600c <__afl_persistent_loop+0x9c>
  205fd2: 4c 8d 35 1f ed 00 00         	leaq	60703(%rip), %r14       # 0x214cf8 <__afl_area_ptr>
  205fd9: 49 8b 3e                     	movq	(%r14), %rdi
  205fdc: 48 8d 05 25 ed 00 00         	leaq	60709(%rip), %rax       # 0x214d08 <__afl_map_size>
  205fe3: 8b 10                        	movl	(%rax), %edx
  205fe5: 31 f6                        	xorl	%esi, %esi
  205fe7: e8 94 c9 00 00               	callq	0x212980 <memset@plt>
  205fec: 49 8b 06                     	movq	(%r14), %rax
  205fef: c6 00 01                     	movb	$1, (%rax)
  205ff2: 64 48 8b 04 25 00 00 00 00   	movq	%fs:0, %rax
  205ffb: 48 8d 80 90 ff ff ff         	leaq	-112(%rax), %rax
  206002: 0f 57 c0                     	xorps	%xmm0, %xmm0
  206005: 0f 29 40 10                  	movaps	%xmm0, 16(%rax)
  206009: 0f 29 00                     	movaps	%xmm0, (%rax)
  20600c: 89 1d f6 ee 20 00            	movl	%ebx, 2158326(%rip)     # 0x414f08 <__afl_persistent_loop.cycle_cnt>
  206012: c6 05 eb ee 20 00 01         	movb	$1, 2158315(%rip)       # 0x414f04 <__afl_persistent_loop.first_pass>
  206019: c6 05 f0 ee 20 00 00         	movb	$0, 2158320(%rip)       # 0x414f10 <__afl_selective_coverage_temp>
  206020: b8 01 00 00 00               	movl	$1, %eax
  206025: 48 83 c4 08                  	addq	$8, %rsp
  206029: 5b                           	popq	%rbx
  20602a: 41 5e                        	popq	%r14
  20602c: c3                           	retq
  20602d: 48 8b 0d dc ec 00 00         	movq	60636(%rip), %rcx       # 0x214d10 <__afl_area_ptr_dummy>
  206034: 48 8d 15 bd ec 00 00         	leaq	60605(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20603b: 48 89 0a                     	movq	%rcx, (%rdx)
  20603e: 48 83 c4 08                  	addq	$8, %rsp
  206042: 5b                           	popq	%rbx
  206043: 41 5e                        	popq	%r14
  206045: c3                           	retq
  206046: 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)

0000000000206050 <__afl_manual_init>:
  206050: 55                           	pushq	%rbp
  206051: 41 57                        	pushq	%r15
  206053: 41 56                        	pushq	%r14
  206055: 41 55                        	pushq	%r13
  206057: 41 54                        	pushq	%r12
  206059: 53                           	pushq	%rbx
  20605a: 48 81 ec a8 00 00 00         	subq	$168, %rsp
  206061: 48 8d 3d e7 c9 ff ff         	leaq	-13849(%rip), %rdi      # 0x202a4f <_IO_stdin_used+0xcef>
  206068: e8 03 c7 00 00               	callq	0x212770 <getenv@plt>
  20606d: 48 85 c0                     	testq	%rax, %rax
  206070: 74 3f                        	je	0x2060b1 <__afl_manual_init+0x61>
  206072: c6 05 98 ee 20 00 01         	movb	$1, 2158232(%rip)       # 0x414f11 <__afl_manual_init.init_done>
  206079: c6 05 8c ee 20 00 00         	movb	$0, 2158220(%rip)       # 0x414f0c <is_persistent>
  206080: 48 8d 05 69 ec 00 00         	leaq	60521(%rip), %rax       # 0x214cf0 <__afl_sharedmem_fuzzing>
  206087: c7 00 00 00 00 00            	movl	$0, (%rax)
  20608d: 48 8d 05 64 ec 00 00         	leaq	60516(%rip), %rax       # 0x214cf8 <__afl_area_ptr>
  206094: 48 83 38 00                  	cmpq	$0, (%rax)
  206098: 75 0a                        	jne	0x2060a4 <__afl_manual_init+0x54>
  20609a: 48 8b 0d 6f ec 00 00         	movq	60527(%rip), %rcx       # 0x214d10 <__afl_area_ptr_dummy>
  2060a1: 48 89 08                     	movq	%rcx, (%rax)
  2060a4: 80 3d 6d ee 20 00 01         	cmpb	$1, 2158189(%rip)       # 0x414f18 <__afl_debug>
  2060ab: 0f 84 e3 01 00 00            	je	0x206294 <__afl_manual_init+0x244>
  2060b1: 80 3d 59 ee 20 00 00         	cmpb	$0, 2158169(%rip)       # 0x414f11 <__afl_manual_init.init_done>
  2060b8: 0f 85 84 03 00 00            	jne	0x206442 <__afl_manual_init+0x3f2>
  2060be: 48 8d 05 6f ee 20 00         	leaq	2158191(%rip), %rax     # 0x414f34 <__afl_already_initialized_forkserver>
  2060c5: 83 38 00                     	cmpl	$0, (%rax)
  2060c8: 0f 85 6d 03 00 00            	jne	0x20643b <__afl_manual_init+0x3eb>
  2060ce: c7 00 01 00 00 00            	movl	$1, (%rax)
  2060d4: 31 ed                        	xorl	%ebp, %ebp
  2060d6: 48 8d 54 24 10               	leaq	16(%rsp), %rdx
  2060db: bf 0f 00 00 00               	movl	$15, %edi
  2060e0: 31 f6                        	xorl	%esi, %esi
  2060e2: e8 a9 c8 00 00               	callq	0x212990 <sigaction@plt>
  2060e7: 48 8b 44 24 10               	movq	16(%rsp), %rax
  2060ec: 48 89 05 7d ee 20 00         	movq	%rax, 2158205(%rip)     # 0x414f70 <old_sigterm_handler>
  2060f3: 48 8d 35 c6 37 00 00         	leaq	14278(%rip), %rsi       # 0x2098c0 <at_exit>
  2060fa: bf 0f 00 00 00               	movl	$15, %edi
  2060ff: e8 9c c8 00 00               	callq	0x2129a0 <signal@plt>
  206104: 48 8d 05 35 ee 20 00         	leaq	2158133(%rip), %rax     # 0x414f40 <__afl_cmp_map>
  20610b: 48 83 38 00                  	cmpq	$0, (%rax)
  20610f: 75 15                        	jne	0x206126 <__afl_manual_init+0xd6>
  206111: 48 8d 3d 3c c0 ff ff         	leaq	-16324(%rip), %rdi      # 0x202154 <_IO_stdin_used+0x3f4>
  206118: e8 53 c6 00 00               	callq	0x212770 <getenv@plt>
  20611d: 48 85 c0                     	testq	%rax, %rax
  206120: 0f 84 2e 03 00 00            	je	0x206454 <__afl_manual_init+0x404>
  206126: bf 11 00 00 00               	movl	$17, %edi
  20612b: 31 f6                        	xorl	%esi, %esi
  20612d: e8 6e c8 00 00               	callq	0x2129a0 <signal@plt>
  206132: 49 89 c6                     	movq	%rax, %r14
  206135: 48 8d 05 cc eb 00 00         	leaq	60364(%rip), %rax       # 0x214d08 <__afl_map_size>
  20613c: 8b 00                        	movl	(%rax), %eax
  20613e: 3d 00 00 80 00               	cmpl	$8388608, %eax          # imm = 0x800000
  206143: 77 17                        	ja	0x20615c <__afl_manual_init+0x10c>
  206145: 8d 0c 00                     	leal	(%rax,%rax), %ecx
  206148: 83 c1 fe                     	addl	$-2, %ecx
  20614b: 81 c9 00 00 00 40            	orl	$1073741824, %ecx       # imm = 0x40000000
  206151: 83 f8 02                     	cmpl	$2, %eax
  206154: bd 00 00 00 40               	movl	$1073741824, %ebp       # imm = 0x40000000
  206159: 0f 43 e9                     	cmovael	%ecx, %ebp
  20615c: 4c 8d 3d 05 ee 20 00         	leaq	2158085(%rip), %r15     # 0x414f68 <__afl_dictionary_len>
  206163: 4c 8d 25 ee ed 20 00         	leaq	2158062(%rip), %r12     # 0x414f58 <__afl_dictionary>
  20616a: 89 e8                        	movl	%ebp, %eax
  20616c: 0d 00 00 00 10               	orl	$268435456, %eax        # imm = 0x10000000
  206171: 49 83 3c 24 00               	cmpq	$0, (%r12)
  206176: 0f 44 c5                     	cmovel	%ebp, %eax
  206179: 41 83 3f 00                  	cmpl	$0, (%r15)
  20617d: 0f 44 c5                     	cmovel	%ebp, %eax
  206180: 48 8d 1d 69 eb 00 00         	leaq	60265(%rip), %rbx       # 0x214cf0 <__afl_sharedmem_fuzzing>
  206187: 89 c1                        	movl	%eax, %ecx
  206189: 81 c9 00 00 00 01            	orl	$16777216, %ecx         # imm = 0x1000000
  20618f: 83 3b 00                     	cmpl	$0, (%rbx)
  206192: 0f 44 c8                     	cmovel	%eax, %ecx
  206195: 89 c8                        	movl	%ecx, %eax
  206197: 0d 01 00 00 82               	orl	$2181038081, %eax       # imm = 0x82000001
  20619c: 85 c9                        	testl	%ecx, %ecx
  20619e: 0f 44 c1                     	cmovel	%ecx, %eax
  2061a1: 89 44 24 08                  	movl	%eax, 8(%rsp)
  2061a5: 48 8d 74 24 08               	leaq	8(%rsp), %rsi
  2061aa: ba 04 00 00 00               	movl	$4, %edx
  2061af: bf c7 00 00 00               	movl	$199, %edi
  2061b4: e8 f7 c7 00 00               	callq	0x2129b0 <write@plt>
  2061b9: 48 83 f8 04                  	cmpq	$4, %rax
  2061bd: 0f 85 78 02 00 00            	jne	0x20643b <__afl_manual_init+0x3eb>
  2061c3: 83 3b 00                     	cmpl	$0, (%rbx)
  2061c6: 75 17                        	jne	0x2061df <__afl_manual_init+0x18f>
  2061c8: 31 c0                        	xorl	%eax, %eax
  2061ca: 41 83 3f 00                  	cmpl	$0, (%r15)
  2061ce: 0f 84 04 04 00 00            	je	0x2065d8 <__afl_manual_init+0x588>
  2061d4: 49 83 3c 24 00               	cmpq	$0, (%r12)
  2061d9: 0f 84 f7 00 00 00            	je	0x2062d6 <__afl_manual_init+0x286>
  2061df: 48 8d 74 24 04               	leaq	4(%rsp), %rsi
  2061e4: ba 04 00 00 00               	movl	$4, %edx
  2061e9: bf c6 00 00 00               	movl	$198, %edi
  2061ee: e8 cd c7 00 00               	callq	0x2129c0 <read@plt>
  2061f3: 48 83 f8 04                  	cmpq	$4, %rax
  2061f7: 0f 85 8a 06 00 00            	jne	0x206887 <__afl_manual_init+0x837>
  2061fd: 80 3d 14 ed 20 00 00         	cmpb	$0, 2157844(%rip)       # 0x414f18 <__afl_debug>
  206204: 0f 85 d3 03 00 00            	jne	0x2065dd <__afl_manual_init+0x58d>
  20620a: 44 8b 6c 24 04               	movl	4(%rsp), %r13d
  20620f: 44 89 eb                     	movl	%r13d, %ebx
  206212: f7 d3                        	notl	%ebx
  206214: f7 c3 01 00 00 81            	testl	$2164260865, %ebx       # imm = 0x81000001
  20621a: 75 05                        	jne	0x206221 <__afl_manual_init+0x1d1>
  20621c: e8 cf 36 00 00               	callq	0x2098f0 <__afl_map_shm_fuzz>
  206221: f7 c3 01 00 00 90            	testl	$2415919105, %ebx       # imm = 0x90000001
  206227: 0f 85 99 00 00 00            	jne	0x2062c6 <__afl_manual_init+0x276>
  20622d: 41 8b 1f                     	movl	(%r15), %ebx
  206230: 85 db                        	testl	%ebx, %ebx
  206232: 0f 84 8e 00 00 00            	je	0x2062c6 <__afl_manual_init+0x276>
  206238: 49 83 3c 24 00               	cmpq	$0, (%r12)
  20623d: 0f 84 83 00 00 00            	je	0x2062c6 <__afl_manual_init+0x276>
  206243: 89 5c 24 0c                  	movl	%ebx, 12(%rsp)
  206247: 48 8d 74 24 0c               	leaq	12(%rsp), %rsi
  20624c: ba 04 00 00 00               	movl	$4, %edx
  206251: bf c7 00 00 00               	movl	$199, %edi
  206256: e8 55 c7 00 00               	callq	0x2129b0 <write@plt>
  20625b: 48 83 f8 04                  	cmpq	$4, %rax
  20625f: 0f 85 18 07 00 00            	jne	0x20697d <__afl_manual_init+0x92d>
  206265: 31 ed                        	xorl	%ebp, %ebp
  206267: 66 0f 1f 84 00 00 00 00 00   	nopw	(%rax,%rax)
  206270: 89 ee                        	movl	%ebp, %esi
  206272: 49 03 34 24                  	addq	(%r12), %rsi
  206276: 89 da                        	movl	%ebx, %edx
  206278: bf c7 00 00 00               	movl	$199, %edi
  20627d: e8 2e c7 00 00               	callq	0x2129b0 <write@plt>
  206282: 85 c0                        	testl	%eax, %eax
  206284: 0f 8e 07 06 00 00            	jle	0x206891 <__afl_manual_init+0x841>
  20628a: 01 c5                        	addl	%eax, %ebp
  20628c: 29 c3                        	subl	%eax, %ebx
  20628e: 75 e0                        	jne	0x206270 <__afl_manual_init+0x220>
  206290: 31 c0                        	xorl	%eax, %eax
  206292: eb 42                        	jmp	0x2062d6 <__afl_manual_init+0x286>
  206294: 48 8b 05 25 da 00 00         	movq	55845(%rip), %rax       # 0x213cc0 <write+0x213cc0>
  20629b: 48 8b 08                     	movq	(%rax), %rcx
  20629e: 48 8d 3d 30 bd ff ff         	leaq	-17104(%rip), %rdi      # 0x201fd5 <_IO_stdin_used+0x275>
  2062a5: be 4c 00 00 00               	movl	$76, %esi
  2062aa: ba 01 00 00 00               	movl	$1, %edx
  2062af: e8 1c c6 00 00               	callq	0x2128d0 <fwrite@plt>
  2062b4: 80 3d 56 ec 20 00 00         	cmpb	$0, 2157654(%rip)       # 0x414f11 <__afl_manual_init.init_done>
  2062bb: 0f 84 fd fd ff ff            	je	0x2060be <__afl_manual_init+0x6e>
  2062c1: e9 7c 01 00 00               	jmp	0x206442 <__afl_manual_init+0x3f2>
  2062c6: 48 8d 0d 93 ec 20 00         	leaq	2157715(%rip), %rcx     # 0x414f60 <__afl_fuzz_ptr>
  2062cd: 31 c0                        	xorl	%eax, %eax
  2062cf: 48 83 39 00                  	cmpq	$0, (%rcx)
  2062d3: 0f 94 c0                     	sete	%al
  2062d6: 31 ed                        	xorl	%ebp, %ebp
  2062d8: 4c 8d 7c 24 04               	leaq	4(%rsp), %r15
  2062dd: 48 8d 5c 24 0c               	leaq	12(%rsp), %rbx
  2062e2: 4c 8d 25 8f ec 20 00         	leaq	2157711(%rip), %r12     # 0x414f78 <child_pid>
  2062e9: 85 c0                        	testl	%eax, %eax
  2062eb: 0f 85 af 00 00 00            	jne	0x2063a0 <__afl_manual_init+0x350>
  2062f1: eb 7b                        	jmp	0x20636e <__afl_manual_init+0x31e>
  2062f3: 66 66 66 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
  206300: ba 04 00 00 00               	movl	$4, %edx
  206305: bf c7 00 00 00               	movl	$199, %edi
  20630a: 4c 89 e6                     	movq	%r12, %rsi
  20630d: e8 9e c6 00 00               	callq	0x2129b0 <write@plt>
  206312: 48 83 f8 04                  	cmpq	$4, %rax
  206316: 0f 85 cb 04 00 00            	jne	0x2067e7 <__afl_manual_init+0x797>
  20631c: 8b 3d 56 ec 20 00            	movl	2157654(%rip), %edi     # 0x414f78 <child_pid>
  206322: 31 d2                        	xorl	%edx, %edx
  206324: 80 3d e1 eb 20 00 00         	cmpb	$0, 2157537(%rip)       # 0x414f0c <is_persistent>
  20632b: 0f 95 c2                     	setne	%dl
  20632e: 01 d2                        	addl	%edx, %edx
  206330: 48 89 de                     	movq	%rbx, %rsi
  206333: e8 98 c6 00 00               	callq	0x2129d0 <waitpid@plt>
  206338: 85 c0                        	testl	%eax, %eax
  20633a: 0f 88 c9 04 00 00            	js	0x206809 <__afl_manual_init+0x7b9>
  206340: 0f b6 6c 24 0c               	movzbl	12(%rsp), %ebp
  206345: ba 04 00 00 00               	movl	$4, %edx
  20634a: bf c7 00 00 00               	movl	$199, %edi
  20634f: 48 89 de                     	movq	%rbx, %rsi
  206352: e8 59 c6 00 00               	callq	0x2129b0 <write@plt>
  206357: 48 83 f8 04                  	cmpq	$4, %rax
  20635b: 0f 85 ca 04 00 00            	jne	0x20682b <__afl_manual_init+0x7db>
  206361: 83 fd 7f                     	cmpl	$127, %ebp
  206364: 40 0f 94 c5                  	sete	%bpl
  206368: 31 c0                        	xorl	%eax, %eax
  20636a: 85 c0                        	testl	%eax, %eax
  20636c: 75 32                        	jne	0x2063a0 <__afl_manual_init+0x350>
  20636e: ba 04 00 00 00               	movl	$4, %edx
  206373: bf c6 00 00 00               	movl	$198, %edi
  206378: 4c 89 fe                     	movq	%r15, %rsi
  20637b: e8 40 c6 00 00               	callq	0x2129c0 <read@plt>
  206380: 48 83 f8 04                  	cmpq	$4, %rax
  206384: 0f 85 fd 04 00 00            	jne	0x206887 <__afl_manual_init+0x837>
  20638a: 44 8b 6c 24 04               	movl	4(%rsp), %r13d
  20638f: 40 84 ed                     	testb	%bpl, %bpl
  206392: 75 11                        	jne	0x2063a5 <__afl_manual_init+0x355>
  206394: eb 3a                        	jmp	0x2063d0 <__afl_manual_init+0x380>
  206396: 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)
  2063a0: 40 84 ed                     	testb	%bpl, %bpl
  2063a3: 74 2b                        	je	0x2063d0 <__afl_manual_init+0x380>
  2063a5: 45 85 ed                     	testl	%r13d, %r13d
  2063a8: 74 26                        	je	0x2063d0 <__afl_manual_init+0x380>
  2063aa: 8b 3d c8 eb 20 00            	movl	2157512(%rip), %edi     # 0x414f78 <child_pid>
  2063b0: 48 89 de                     	movq	%rbx, %rsi
  2063b3: 31 d2                        	xorl	%edx, %edx
  2063b5: e8 16 c6 00 00               	callq	0x2129d0 <waitpid@plt>
  2063ba: 85 c0                        	testl	%eax, %eax
  2063bc: 79 32                        	jns	0x2063f0 <__afl_manual_init+0x3a0>
  2063be: e9 ac 04 00 00               	jmp	0x20686f <__afl_manual_init+0x81f>
  2063c3: 66 66 66 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
  2063d0: 40 84 ed                     	testb	%bpl, %bpl
  2063d3: 74 1b                        	je	0x2063f0 <__afl_manual_init+0x3a0>
  2063d5: 8b 3d 9d eb 20 00            	movl	2157469(%rip), %edi     # 0x414f78 <child_pid>
  2063db: be 12 00 00 00               	movl	$18, %esi
  2063e0: e8 fb c5 00 00               	callq	0x2129e0 <kill@plt>
  2063e5: e9 16 ff ff ff               	jmp	0x206300 <__afl_manual_init+0x2b0>
  2063ea: 66 0f 1f 44 00 00            	nopw	(%rax,%rax)
  2063f0: e8 fb c5 00 00               	callq	0x2129f0 <fork@plt>
  2063f5: 89 05 7d eb 20 00            	movl	%eax, 2157437(%rip)     # 0x414f78 <child_pid>
  2063fb: 85 c0                        	testl	%eax, %eax
  2063fd: 0f 88 4a 04 00 00            	js	0x20684d <__afl_manual_init+0x7fd>
  206403: 0f 85 f7 fe ff ff            	jne	0x206300 <__afl_manual_init+0x2b0>
  206409: bf 11 00 00 00               	movl	$17, %edi
  20640e: 4c 89 f6                     	movq	%r14, %rsi
  206411: e8 8a c5 00 00               	callq	0x2129a0 <signal@plt>
  206416: 48 8b 35 53 eb 20 00         	movq	2157395(%rip), %rsi     # 0x414f70 <old_sigterm_handler>
  20641d: bf 0f 00 00 00               	movl	$15, %edi
  206422: e8 79 c5 00 00               	callq	0x2129a0 <signal@plt>
  206427: bf c6 00 00 00               	movl	$198, %edi
  20642c: e8 ff c4 00 00               	callq	0x212930 <close@plt>
  206431: bf c7 00 00 00               	movl	$199, %edi
  206436: e8 f5 c4 00 00               	callq	0x212930 <close@plt>
  20643b: c6 05 cf ea 20 00 01         	movb	$1, 2157263(%rip)       # 0x414f11 <__afl_manual_init.init_done>
  206442: 48 81 c4 a8 00 00 00         	addq	$168, %rsp
  206449: 5b                           	popq	%rbx
  20644a: 41 5c                        	popq	%r12
  20644c: 41 5d                        	popq	%r13
  20644e: 41 5e                        	popq	%r14
  206450: 41 5f                        	popq	%r15
  206452: 5d                           	popq	%rbp
  206453: c3                           	retq
  206454: 48 8d 3d 3f bd ff ff         	leaq	-17089(%rip), %rdi      # 0x20219a <_IO_stdin_used+0x43a>
  20645b: 31 f6                        	xorl	%esi, %esi
  20645d: 31 c0                        	xorl	%eax, %eax
  20645f: e8 9c c4 00 00               	callq	0x212900 <open@plt>
  206464: 89 05 12 eb 20 00            	movl	%eax, 2157330(%rip)     # 0x414f7c <afl_snapshot_dev_fd>
  20646a: 85 c0                        	testl	%eax, %eax
  20646c: 0f 88 b4 fc ff ff            	js	0x206126 <__afl_manual_init+0xd6>
  206472: bf 11 00 00 00               	movl	$17, %edi
  206477: 31 f6                        	xorl	%esi, %esi
  206479: e8 22 c5 00 00               	callq	0x2129a0 <signal@plt>
  20647e: 49 89 c6                     	movq	%rax, %r14
  206481: 48 8d 1d 68 e8 00 00         	leaq	59496(%rip), %rbx       # 0x214cf0 <__afl_sharedmem_fuzzing>
  206488: 31 c0                        	xorl	%eax, %eax
  20648a: 83 3b 00                     	cmpl	$0, (%rbx)
  20648d: 0f 95 c0                     	setne	%al
  206490: c1 e0 18                     	shll	$24, %eax
  206493: 0d 01 00 00 a2               	orl	$2717908993, %eax       # imm = 0xA2000001
  206498: 48 8d 0d 69 e8 00 00         	leaq	59497(%rip), %rcx       # 0x214d08 <__afl_map_size>
  20649f: 8b 09                        	movl	(%rcx), %ecx
  2064a1: 81 f9 00 00 80 00            	cmpl	$8388608, %ecx          # imm = 0x800000
  2064a7: 77 1c                        	ja	0x2064c5 <__afl_manual_init+0x475>
  2064a9: 8d 14 09                     	leal	(%rcx,%rcx), %edx
  2064ac: 81 c2 fe ff ff 1f            	addl	$536870910, %edx        # imm = 0x1FFFFFFE
  2064b2: 81 ca 00 00 00 40            	orl	$1073741824, %edx       # imm = 0x40000000
  2064b8: 83 f9 02                     	cmpl	$2, %ecx
  2064bb: b9 00 00 00 40               	movl	$1073741824, %ecx       # imm = 0x40000000
  2064c0: 0f 43 ca                     	cmovael	%edx, %ecx
  2064c3: 09 c8                        	orl	%ecx, %eax
  2064c5: 4c 8d 3d 9c ea 20 00         	leaq	2157212(%rip), %r15     # 0x414f68 <__afl_dictionary_len>
  2064cc: 4c 8d 25 85 ea 20 00         	leaq	2157189(%rip), %r12     # 0x414f58 <__afl_dictionary>
  2064d3: 89 c1                        	movl	%eax, %ecx
  2064d5: 81 c9 00 00 00 10            	orl	$268435456, %ecx        # imm = 0x10000000
  2064db: 49 83 3c 24 00               	cmpq	$0, (%r12)
  2064e0: 0f 44 c8                     	cmovel	%eax, %ecx
  2064e3: 41 83 3f 00                  	cmpl	$0, (%r15)
  2064e7: 0f 44 c8                     	cmovel	%eax, %ecx
  2064ea: 89 0d 90 ea 20 00            	movl	%ecx, 2157200(%rip)     # 0x414f80 <__afl_start_snapshots.tmp>
  2064f0: 48 8d 35 89 ea 20 00         	leaq	2157193(%rip), %rsi     # 0x414f80 <__afl_start_snapshots.tmp>
  2064f7: ba 04 00 00 00               	movl	$4, %edx
  2064fc: bf c7 00 00 00               	movl	$199, %edi
  206501: e8 aa c4 00 00               	callq	0x2129b0 <write@plt>
  206506: 48 83 f8 04                  	cmpq	$4, %rax
  20650a: 0f 85 2b ff ff ff            	jne	0x20643b <__afl_manual_init+0x3eb>
  206510: 83 3b 00                     	cmpl	$0, (%rbx)
  206513: 75 17                        	jne	0x20652c <__afl_manual_init+0x4dc>
  206515: 31 c0                        	xorl	%eax, %eax
  206517: 41 83 3f 00                  	cmpl	$0, (%r15)
  20651b: 0f 84 8b 02 00 00            	je	0x2067ac <__afl_manual_init+0x75c>
  206521: 49 83 3c 24 00               	cmpq	$0, (%r12)
  206526: 0f 84 f7 00 00 00            	je	0x206623 <__afl_manual_init+0x5d3>
  20652c: 48 8d 74 24 08               	leaq	8(%rsp), %rsi
  206531: ba 04 00 00 00               	movl	$4, %edx
  206536: bf c6 00 00 00               	movl	$198, %edi
  20653b: e8 80 c4 00 00               	callq	0x2129c0 <read@plt>
  206540: 48 83 f8 04                  	cmpq	$4, %rax
  206544: 0f 85 53 04 00 00            	jne	0x20699d <__afl_manual_init+0x94d>
  20654a: 80 3d c7 e9 20 00 00         	cmpb	$0, 2156999(%rip)       # 0x414f18 <__afl_debug>
  206551: 0f 85 5a 02 00 00            	jne	0x2067b1 <__afl_manual_init+0x761>
  206557: 44 8b 6c 24 08               	movl	8(%rsp), %r13d
  20655c: 44 89 eb                     	movl	%r13d, %ebx
  20655f: f7 d3                        	notl	%ebx
  206561: f7 c3 01 00 00 81            	testl	$2164260865, %ebx       # imm = 0x81000001
  206567: 75 05                        	jne	0x20656e <__afl_manual_init+0x51e>
  206569: e8 82 33 00 00               	callq	0x2098f0 <__afl_map_shm_fuzz>
  20656e: f7 c3 01 00 00 90            	testl	$2415919105, %ebx       # imm = 0x90000001
  206574: 0f 85 99 00 00 00            	jne	0x206613 <__afl_manual_init+0x5c3>
  20657a: 41 8b 1f                     	movl	(%r15), %ebx
  20657d: 85 db                        	testl	%ebx, %ebx
  20657f: 0f 84 8e 00 00 00            	je	0x206613 <__afl_manual_init+0x5c3>
  206585: 49 83 3c 24 00               	cmpq	$0, (%r12)
  20658a: 0f 84 83 00 00 00            	je	0x206613 <__afl_manual_init+0x5c3>
  206590: 89 5c 24 04                  	movl	%ebx, 4(%rsp)
  206594: 48 8d 74 24 04               	leaq	4(%rsp), %rsi
  206599: ba 04 00 00 00               	movl	$4, %edx
  20659e: bf c7 00 00 00               	movl	$199, %edi
  2065a3: e8 08 c4 00 00               	callq	0x2129b0 <write@plt>
  2065a8: 48 83 f8 04                  	cmpq	$4, %rax
  2065ac: 0f 85 cb 03 00 00            	jne	0x20697d <__afl_manual_init+0x92d>
  2065b2: 31 ed                        	xorl	%ebp, %ebp
  2065b4: 89 ee                        	movl	%ebp, %esi
  2065b6: 49 03 34 24                  	addq	(%r12), %rsi
  2065ba: 89 da                        	movl	%ebx, %edx
  2065bc: bf c7 00 00 00               	movl	$199, %edi
  2065c1: e8 ea c3 00 00               	callq	0x2129b0 <write@plt>
  2065c6: 85 c0                        	testl	%eax, %eax
  2065c8: 0f 8e c3 02 00 00            	jle	0x206891 <__afl_manual_init+0x841>
  2065ce: 01 c5                        	addl	%eax, %ebp
  2065d0: 29 c3                        	subl	%eax, %ebx
  2065d2: 75 e0                        	jne	0x2065b4 <__afl_manual_init+0x564>
  2065d4: 31 c0                        	xorl	%eax, %eax
  2065d6: eb 4b                        	jmp	0x206623 <__afl_manual_init+0x5d3>
  2065d8: e9 f9 fc ff ff               	jmp	0x2062d6 <__afl_manual_init+0x286>
  2065dd: 48 8b 05 dc d6 00 00         	movq	55004(%rip), %rax       # 0x213cc0 <write+0x213cc0>
  2065e4: 48 8b 38                     	movq	(%rax), %rdi
  2065e7: 44 8b 6c 24 04               	movl	4(%rsp), %r13d
  2065ec: 48 8d 35 5e bf ff ff         	leaq	-16546(%rip), %rsi      # 0x202551 <_IO_stdin_used+0x7f1>
  2065f3: 44 89 ea                     	movl	%r13d, %edx
  2065f6: 31 c0                        	xorl	%eax, %eax
  2065f8: e8 b3 c2 00 00               	callq	0x2128b0 <fprintf@plt>
  2065fd: 44 89 eb                     	movl	%r13d, %ebx
  206600: f7 d3                        	notl	%ebx
  206602: f7 c3 01 00 00 81            	testl	$2164260865, %ebx       # imm = 0x81000001
  206608: 0f 84 0e fc ff ff            	je	0x20621c <__afl_manual_init+0x1cc>
  20660e: e9 0e fc ff ff               	jmp	0x206221 <__afl_manual_init+0x1d1>
  206613: 48 8d 0d 46 e9 20 00         	leaq	2156870(%rip), %rcx     # 0x414f60 <__afl_fuzz_ptr>
  20661a: 31 c0                        	xorl	%eax, %eax
  20661c: 48 83 39 00                  	cmpq	$0, (%rcx)
  206620: 0f 94 c0                     	sete	%al
  206623: 31 ed                        	xorl	%ebp, %ebp
  206625: 4c 8d 7c 24 08               	leaq	8(%rsp), %r15
  20662a: 48 8d 5c 24 04               	leaq	4(%rsp), %rbx
  20662f: 4c 8d 25 42 e9 20 00         	leaq	2156866(%rip), %r12     # 0x414f78 <child_pid>
  206636: 85 c0                        	testl	%eax, %eax
  206638: 0f 85 92 00 00 00            	jne	0x2066d0 <__afl_manual_init+0x680>
  20663e: eb 65                        	jmp	0x2066a5 <__afl_manual_init+0x655>
  206640: ba 04 00 00 00               	movl	$4, %edx
  206645: bf c7 00 00 00               	movl	$199, %edi
  20664a: 4c 89 e6                     	movq	%r12, %rsi
  20664d: e8 5e c3 00 00               	callq	0x2129b0 <write@plt>
  206652: 48 83 f8 04                  	cmpq	$4, %rax
  206656: 0f 85 55 02 00 00            	jne	0x2068b1 <__afl_manual_init+0x861>
  20665c: 8b 3d 16 e9 20 00            	movl	2156822(%rip), %edi     # 0x414f78 <child_pid>
  206662: 48 89 de                     	movq	%rbx, %rsi
  206665: ba 02 00 00 00               	movl	$2, %edx
  20666a: e8 61 c3 00 00               	callq	0x2129d0 <waitpid@plt>
  20666f: 85 c0                        	testl	%eax, %eax
  206671: 0f 88 5c 02 00 00            	js	0x2068d3 <__afl_manual_init+0x883>
  206677: 0f b6 6c 24 04               	movzbl	4(%rsp), %ebp
  20667c: ba 04 00 00 00               	movl	$4, %edx
  206681: bf c7 00 00 00               	movl	$199, %edi
  206686: 48 89 de                     	movq	%rbx, %rsi
  206689: e8 22 c3 00 00               	callq	0x2129b0 <write@plt>
  20668e: 48 83 f8 04                  	cmpq	$4, %rax
  206692: 0f 85 5d 02 00 00            	jne	0x2068f5 <__afl_manual_init+0x8a5>
  206698: 83 fd 7f                     	cmpl	$127, %ebp
  20669b: 40 0f 94 c5                  	sete	%bpl
  20669f: 31 c0                        	xorl	%eax, %eax
  2066a1: 85 c0                        	testl	%eax, %eax
  2066a3: 75 2b                        	jne	0x2066d0 <__afl_manual_init+0x680>
  2066a5: ba 04 00 00 00               	movl	$4, %edx
  2066aa: bf c6 00 00 00               	movl	$198, %edi
  2066af: 4c 89 fe                     	movq	%r15, %rsi
  2066b2: e8 09 c3 00 00               	callq	0x2129c0 <read@plt>
  2066b7: 48 83 f8 04                  	cmpq	$4, %rax
  2066bb: 0f 85 9a 02 00 00            	jne	0x20695b <__afl_manual_init+0x90b>
  2066c1: 44 8b 6c 24 08               	movl	8(%rsp), %r13d
  2066c6: 40 84 ed                     	testb	%bpl, %bpl
  2066c9: 75 0a                        	jne	0x2066d5 <__afl_manual_init+0x685>
  2066cb: eb 26                        	jmp	0x2066f3 <__afl_manual_init+0x6a3>
  2066cd: 0f 1f 00                     	nopl	(%rax)
  2066d0: 40 84 ed                     	testb	%bpl, %bpl
  2066d3: 74 1e                        	je	0x2066f3 <__afl_manual_init+0x6a3>
  2066d5: 45 85 ed                     	testl	%r13d, %r13d
  2066d8: 74 19                        	je	0x2066f3 <__afl_manual_init+0x6a3>
  2066da: 8b 3d 98 e8 20 00            	movl	2156696(%rip), %edi     # 0x414f78 <child_pid>
  2066e0: 48 89 de                     	movq	%rbx, %rsi
  2066e3: 31 d2                        	xorl	%edx, %edx
  2066e5: e8 e6 c2 00 00               	callq	0x2129d0 <waitpid@plt>
  2066ea: 85 c0                        	testl	%eax, %eax
  2066ec: 79 22                        	jns	0x206710 <__afl_manual_init+0x6c0>
  2066ee: e9 46 02 00 00               	jmp	0x206939 <__afl_manual_init+0x8e9>
  2066f3: 40 84 ed                     	testb	%bpl, %bpl
  2066f6: 74 18                        	je	0x206710 <__afl_manual_init+0x6c0>
  2066f8: 8b 3d 7a e8 20 00            	movl	2156666(%rip), %edi     # 0x414f78 <child_pid>
  2066fe: be 12 00 00 00               	movl	$18, %esi
  206703: e8 d8 c2 00 00               	callq	0x2129e0 <kill@plt>
  206708: e9 33 ff ff ff               	jmp	0x206640 <__afl_manual_init+0x5f0>
  20670d: 0f 1f 00                     	nopl	(%rax)
  206710: e8 db c2 00 00               	callq	0x2129f0 <fork@plt>
  206715: 89 05 5d e8 20 00            	movl	%eax, 2156637(%rip)     # 0x414f78 <child_pid>
  20671b: 85 c0                        	testl	%eax, %eax
  20671d: 0f 88 f4 01 00 00            	js	0x206917 <__afl_manual_init+0x8c7>
  206723: 0f 85 17 ff ff ff            	jne	0x206640 <__afl_manual_init+0x5f0>
  206729: bf 11 00 00 00               	movl	$17, %edi
  20672e: 4c 89 f6                     	movq	%r14, %rsi
  206731: e8 6a c2 00 00               	callq	0x2129a0 <signal@plt>
  206736: 48 8b 35 33 e8 20 00         	movq	2156595(%rip), %rsi     # 0x414f70 <old_sigterm_handler>
  20673d: bf 0f 00 00 00               	movl	$15, %edi
  206742: e8 59 c2 00 00               	callq	0x2129a0 <signal@plt>
  206747: bf c6 00 00 00               	movl	$198, %edi
  20674c: e8 df c1 00 00               	callq	0x212930 <close@plt>
  206751: bf c7 00 00 00               	movl	$199, %edi
  206756: e8 d5 c1 00 00               	callq	0x212930 <close@plt>
  20675b: 8b 3d 1b e8 20 00            	movl	2156571(%rip), %edi     # 0x414f7c <afl_snapshot_dev_fd>
  206761: be 05 19 ad 80               	movl	$2158827781, %esi       # imm = 0x80AD1905
  206766: ba 1d 00 00 00               	movl	$29, %edx
  20676b: 31 c0                        	xorl	%eax, %eax
  20676d: e8 8e c2 00 00               	callq	0x212a00 <ioctl@plt>
  206772: 85 c0                        	testl	%eax, %eax
  206774: 75 0a                        	jne	0x206780 <__afl_manual_init+0x730>
  206776: bf 13 00 00 00               	movl	$19, %edi
  20677b: e8 f0 c1 00 00               	callq	0x212970 <raise@plt>
  206780: 48 8d 05 71 e5 00 00         	leaq	58737(%rip), %rax       # 0x214cf8 <__afl_area_ptr>
  206787: 48 8b 00                     	movq	(%rax), %rax
  20678a: c6 00 01                     	movb	$1, (%rax)
  20678d: 64 48 8b 04 25 00 00 00 00   	movq	%fs:0, %rax
  206796: 48 8d 80 90 ff ff ff         	leaq	-112(%rax), %rax
  20679d: 0f 57 c0                     	xorps	%xmm0, %xmm0
  2067a0: 0f 29 40 10                  	movaps	%xmm0, 16(%rax)
  2067a4: 0f 29 00                     	movaps	%xmm0, (%rax)
  2067a7: e9 8f fc ff ff               	jmp	0x20643b <__afl_manual_init+0x3eb>
  2067ac: e9 72 fe ff ff               	jmp	0x206623 <__afl_manual_init+0x5d3>
  2067b1: 48 8b 05 08 d5 00 00         	movq	54536(%rip), %rax       # 0x213cc0 <write+0x213cc0>
  2067b8: 48 8b 38                     	movq	(%rax), %rdi
  2067bb: 44 8b 6c 24 08               	movl	8(%rsp), %r13d
  2067c0: 48 8d 35 8a bd ff ff         	leaq	-17014(%rip), %rsi      # 0x202551 <_IO_stdin_used+0x7f1>
  2067c7: 44 89 ea                     	movl	%r13d, %edx
  2067ca: 31 c0                        	xorl	%eax, %eax
  2067cc: e8 df c0 00 00               	callq	0x2128b0 <fprintf@plt>
  2067d1: 44 89 eb                     	movl	%r13d, %ebx
  2067d4: f7 d3                        	notl	%ebx
  2067d6: f7 c3 01 00 00 81            	testl	$2164260865, %ebx       # imm = 0x81000001
  2067dc: 0f 84 87 fd ff ff            	je	0x206569 <__afl_manual_init+0x519>
  2067e2: e9 87 fd ff ff               	jmp	0x20656e <__afl_manual_init+0x51e>
  2067e7: 48 8d 3d 70 bc ff ff         	leaq	-17296(%rip), %rdi      # 0x20245e <_IO_stdin_used+0x6fe>
  2067ee: 48 8d 35 75 b8 ff ff         	leaq	-18315(%rip), %rsi      # 0x20206a <_IO_stdin_used+0x30a>
  2067f5: ba a6 04 00 00               	movl	$1190, %edx             # imm = 0x4A6
  2067fa: e8 a1 f6 ff ff               	callq	0x205ea0 <write_error_with_location>
  2067ff: bf 01 00 00 00               	movl	$1, %edi
  206804: e8 07 c2 00 00               	callq	0x212a10 <_exit@plt>
  206809: 48 8d 3d 64 ba ff ff         	leaq	-17820(%rip), %rdi      # 0x202274 <_IO_stdin_used+0x514>
  206810: 48 8d 35 53 b8 ff ff         	leaq	-18349(%rip), %rsi      # 0x20206a <_IO_stdin_used+0x30a>
  206817: ba ad 04 00 00               	movl	$1197, %edx             # imm = 0x4AD
  20681c: e8 7f f6 ff ff               	callq	0x205ea0 <write_error_with_location>
  206821: bf 01 00 00 00               	movl	$1, %edi
  206826: e8 e5 c1 00 00               	callq	0x212a10 <_exit@plt>
  20682b: 48 8d 3d 54 b9 ff ff         	leaq	-18092(%rip), %rdi      # 0x202186 <_IO_stdin_used+0x426>
  206832: 48 8d 35 31 b8 ff ff         	leaq	-18383(%rip), %rsi      # 0x20206a <_IO_stdin_used+0x30a>
  206839: ba bc 04 00 00               	movl	$1212, %edx             # imm = 0x4BC
  20683e: e8 5d f6 ff ff               	callq	0x205ea0 <write_error_with_location>
  206843: bf 01 00 00 00               	movl	$1, %edi
  206848: e8 c3 c1 00 00               	callq	0x212a10 <_exit@plt>
  20684d: 48 8d 3d 1c c2 ff ff         	leaq	-15844(%rip), %rdi      # 0x202a70 <_IO_stdin_used+0xd10>
  206854: 48 8d 35 0f b8 ff ff         	leaq	-18417(%rip), %rsi      # 0x20206a <_IO_stdin_used+0x30a>
  20685b: ba 84 04 00 00               	movl	$1156, %edx             # imm = 0x484
  206860: e8 3b f6 ff ff               	callq	0x205ea0 <write_error_with_location>
  206865: bf 01 00 00 00               	movl	$1, %edi
  20686a: e8 a1 c1 00 00               	callq	0x212a10 <_exit@plt>
  20686f: 48 8d 3d d9 c2 ff ff         	leaq	-15655(%rip), %rdi      # 0x202b4f <_IO_stdin_used+0xdef>
  206876: 48 8d 35 ed b7 ff ff         	leaq	-18451(%rip), %rsi      # 0x20206a <_IO_stdin_used+0x30a>
  20687d: ba 76 04 00 00               	movl	$1142, %edx             # imm = 0x476
  206882: e8 19 f6 ff ff               	callq	0x205ea0 <write_error_with_location>
  206887: bf 01 00 00 00               	movl	$1, %edi
  20688c: e8 7f c1 00 00               	callq	0x212a10 <_exit@plt>
  206891: 48 8d 35 cc b8 ff ff         	leaq	-18228(%rip), %rsi      # 0x202164 <_IO_stdin_used+0x404>
  206898: ba 21 00 00 00               	movl	$33, %edx
  20689d: bf 02 00 00 00               	movl	$2, %edi
  2068a2: e8 09 c1 00 00               	callq	0x2129b0 <write@plt>
  2068a7: bf 01 00 00 00               	movl	$1, %edi
  2068ac: e8 5f c1 00 00               	callq	0x212a10 <_exit@plt>
  2068b1: 48 8d 3d a6 bb ff ff         	leaq	-17498(%rip), %rdi      # 0x20245e <_IO_stdin_used+0x6fe>
  2068b8: 48 8d 35 ab b7 ff ff         	leaq	-18517(%rip), %rsi      # 0x20206a <_IO_stdin_used+0x30a>
  2068bf: ba a7 03 00 00               	movl	$935, %edx              # imm = 0x3A7
  2068c4: e8 d7 f5 ff ff               	callq	0x205ea0 <write_error_with_location>
  2068c9: bf 01 00 00 00               	movl	$1, %edi
  2068ce: e8 3d c1 00 00               	callq	0x212a10 <_exit@plt>
  2068d3: 48 8d 3d 9a b9 ff ff         	leaq	-18022(%rip), %rdi      # 0x202274 <_IO_stdin_used+0x514>
  2068da: 48 8d 35 89 b7 ff ff         	leaq	-18551(%rip), %rsi      # 0x20206a <_IO_stdin_used+0x30a>
  2068e1: ba ae 03 00 00               	movl	$942, %edx              # imm = 0x3AE
  2068e6: e8 b5 f5 ff ff               	callq	0x205ea0 <write_error_with_location>
  2068eb: bf 01 00 00 00               	movl	$1, %edi
  2068f0: e8 1b c1 00 00               	callq	0x212a10 <_exit@plt>
  2068f5: 48 8d 3d 8a b8 ff ff         	leaq	-18294(%rip), %rdi      # 0x202186 <_IO_stdin_used+0x426>
  2068fc: 48 8d 35 67 b7 ff ff         	leaq	-18585(%rip), %rsi      # 0x20206a <_IO_stdin_used+0x30a>
  206903: ba bd 03 00 00               	movl	$957, %edx              # imm = 0x3BD
  206908: e8 93 f5 ff ff               	callq	0x205ea0 <write_error_with_location>
  20690d: bf 01 00 00 00               	movl	$1, %edi
  206912: e8 f9 c0 00 00               	callq	0x212a10 <_exit@plt>
  206917: 48 8d 3d 52 c1 ff ff         	leaq	-16046(%rip), %rdi      # 0x202a70 <_IO_stdin_used+0xd10>
  20691e: 48 8d 35 45 b7 ff ff         	leaq	-18619(%rip), %rsi      # 0x20206a <_IO_stdin_used+0x30a>
  206925: ba 7a 03 00 00               	movl	$890, %edx              # imm = 0x37A
  20692a: e8 71 f5 ff ff               	callq	0x205ea0 <write_error_with_location>
  20692f: bf 01 00 00 00               	movl	$1, %edi
  206934: e8 d7 c0 00 00               	callq	0x212a10 <_exit@plt>
  206939: 48 8d 3d 0f c2 ff ff         	leaq	-15857(%rip), %rdi      # 0x202b4f <_IO_stdin_used+0xdef>
  206940: 48 8d 35 23 b7 ff ff         	leaq	-18653(%rip), %rsi      # 0x20206a <_IO_stdin_used+0x30a>
  206947: ba 6c 03 00 00               	movl	$876, %edx              # imm = 0x36C
  20694c: e8 4f f5 ff ff               	callq	0x205ea0 <write_error_with_location>
  206951: bf 01 00 00 00               	movl	$1, %edi
  206956: e8 b5 c0 00 00               	callq	0x212a10 <_exit@plt>
  20695b: 48 8d 3d 50 ba ff ff         	leaq	-17840(%rip), %rdi      # 0x2023b2 <_IO_stdin_used+0x652>
  206962: 48 8d 35 01 b7 ff ff         	leaq	-18687(%rip), %rsi      # 0x20206a <_IO_stdin_used+0x30a>
  206969: ba 42 03 00 00               	movl	$834, %edx              # imm = 0x342
  20696e: e8 2d f5 ff ff               	callq	0x205ea0 <write_error_with_location>
  206973: bf 01 00 00 00               	movl	$1, %edi
  206978: e8 93 c0 00 00               	callq	0x212a10 <_exit@plt>
  20697d: 48 8d 35 9c b8 ff ff         	leaq	-18276(%rip), %rsi      # 0x202220 <_IO_stdin_used+0x4c0>
  206984: ba 25 00 00 00               	movl	$37, %edx
  206989: bf 02 00 00 00               	movl	$2, %edi
  20698e: e8 1d c0 00 00               	callq	0x2129b0 <write@plt>
  206993: bf 01 00 00 00               	movl	$1, %edi
  206998: e8 73 c0 00 00               	callq	0x212a10 <_exit@plt>
  20699d: 48 8d 3d 4f b4 ff ff         	leaq	-19377(%rip), %rdi      # 0x201df3 <_IO_stdin_used+0x93>
  2069a4: 48 8d 35 bf b6 ff ff         	leaq	-18753(%rip), %rsi      # 0x20206a <_IO_stdin_used+0x30a>
  2069ab: ba f8 02 00 00               	movl	$760, %edx              # imm = 0x2F8
  2069b0: e8 eb f4 ff ff               	callq	0x205ea0 <write_error_with_location>
  2069b5: bf 01 00 00 00               	movl	$1, %edi
  2069ba: e8 51 c0 00 00               	callq	0x212a10 <_exit@plt>
  2069bf: 90                           	nop

00000000002069c0 <__afl_auto_init>:
  2069c0: 50                           	pushq	%rax
  2069c1: 48 8d 05 54 e5 20 00         	leaq	2155860(%rip), %rax     # 0x414f1c <__afl_already_initialized_init>
  2069c8: 83 38 00                     	cmpl	$0, (%rax)
  2069cb: 75 28                        	jne	0x2069f5 <__afl_auto_init+0x35>
  2069cd: c7 00 01 00 00 00            	movl	$1, (%rax)
  2069d3: 48 8d 3d 75 c0 ff ff         	leaq	-16267(%rip), %rdi      # 0x202a4f <_IO_stdin_used+0xcef>
  2069da: e8 91 bd 00 00               	callq	0x212770 <getenv@plt>
  2069df: 48 85 c0                     	testq	%rax, %rax
  2069e2: 75 11                        	jne	0x2069f5 <__afl_auto_init+0x35>
  2069e4: 48 8d 3d 39 ba ff ff         	leaq	-17863(%rip), %rdi      # 0x202424 <_IO_stdin_used+0x6c4>
  2069eb: e8 80 bd 00 00               	callq	0x212770 <getenv@plt>
  2069f0: 48 85 c0                     	testq	%rax, %rax
  2069f3: 74 02                        	je	0x2069f7 <__afl_auto_init+0x37>
  2069f5: 58                           	popq	%rax
  2069f6: c3                           	retq
  2069f7: 58                           	popq	%rax
  2069f8: e9 53 f6 ff ff               	jmp	0x206050 <__afl_manual_init>
  2069fd: 0f 1f 00                     	nopl	(%rax)

0000000000206a00 <__early_forkserver>:
  206a00: 50                           	pushq	%rax
  206a01: 48 8d 3d c0 bf ff ff         	leaq	-16448(%rip), %rdi      # 0x2029c8 <_IO_stdin_used+0xc68>
  206a08: e8 63 bd 00 00               	callq	0x212770 <getenv@plt>
  206a0d: 48 85 c0                     	testq	%rax, %rax
  206a10: 74 34                        	je	0x206a46 <__early_forkserver+0x46>
  206a12: 48 8d 05 03 e5 20 00         	leaq	2155779(%rip), %rax     # 0x414f1c <__afl_already_initialized_init>
  206a19: 83 38 00                     	cmpl	$0, (%rax)
  206a1c: 75 28                        	jne	0x206a46 <__early_forkserver+0x46>
  206a1e: c7 00 01 00 00 00            	movl	$1, (%rax)
  206a24: 48 8d 3d 24 c0 ff ff         	leaq	-16348(%rip), %rdi      # 0x202a4f <_IO_stdin_used+0xcef>
  206a2b: e8 40 bd 00 00               	callq	0x212770 <getenv@plt>
  206a30: 48 85 c0                     	testq	%rax, %rax
  206a33: 75 11                        	jne	0x206a46 <__early_forkserver+0x46>
  206a35: 48 8d 3d e8 b9 ff ff         	leaq	-17944(%rip), %rdi      # 0x202424 <_IO_stdin_used+0x6c4>
  206a3c: e8 2f bd 00 00               	callq	0x212770 <getenv@plt>
  206a41: 48 85 c0                     	testq	%rax, %rax
  206a44: 74 02                        	je	0x206a48 <__early_forkserver+0x48>
  206a46: 58                           	popq	%rax
  206a47: c3                           	retq
  206a48: 58                           	popq	%rax
  206a49: e9 02 f6 ff ff               	jmp	0x206050 <__afl_manual_init>
  206a4e: 66 90                        	nop

0000000000206a50 <__afl_auto_early>:
  206a50: 50                           	pushq	%rax
  206a51: 48 8d 3d bb b9 ff ff         	leaq	-17989(%rip), %rdi      # 0x202413 <_IO_stdin_used+0x6b3>
  206a58: e8 13 bd 00 00               	callq	0x212770 <getenv@plt>
  206a5d: 48 85 c0                     	testq	%rax, %rax
  206a60: 0f 95 05 a5 e4 20 00         	setne	2155685(%rip)           # 0x414f0c <is_persistent>
  206a67: 48 8d 3d e1 bf ff ff         	leaq	-16415(%rip), %rdi      # 0x202a4f <_IO_stdin_used+0xcef>
  206a6e: e8 fd bc 00 00               	callq	0x212770 <getenv@plt>
  206a73: 48 85 c0                     	testq	%rax, %rax
  206a76: 74 02                        	je	0x206a7a <__afl_auto_early+0x2a>
  206a78: 58                           	popq	%rax
  206a79: c3                           	retq
  206a7a: 58                           	popq	%rax
  206a7b: eb 03                        	jmp	0x206a80 <__afl_map_shm>
  206a7d: 0f 1f 00                     	nopl	(%rax)

0000000000206a80 <__afl_map_shm>:
  206a80: 55                           	pushq	%rbp
  206a81: 41 57                        	pushq	%r15
  206a83: 41 56                        	pushq	%r14
  206a85: 41 55                        	pushq	%r13
  206a87: 41 54                        	pushq	%r12
  206a89: 53                           	pushq	%rbx
  206a8a: 50                           	pushq	%rax
  206a8b: 48 8d 05 a6 e4 20 00         	leaq	2155686(%rip), %rax     # 0x414f38 <__afl_already_initialized_shm>
  206a92: 83 38 00                     	cmpl	$0, (%rax)
  206a95: 0f 85 48 04 00 00            	jne	0x206ee3 <__afl_map_shm+0x463>
  206a9b: c7 00 01 00 00 00            	movl	$1, (%rax)
  206aa1: 4c 8d 35 50 e2 00 00         	leaq	57936(%rip), %r14       # 0x214cf8 <__afl_area_ptr>
  206aa8: 49 83 3e 00                  	cmpq	$0, (%r14)
  206aac: 75 0a                        	jne	0x206ab8 <__afl_map_shm+0x38>
  206aae: 48 8b 05 5b e2 00 00         	movq	57947(%rip), %rax       # 0x214d10 <__afl_area_ptr_dummy>
  206ab5: 49 89 06                     	movq	%rax, (%r14)
  206ab8: 48 8d 3d 63 b5 ff ff         	leaq	-19101(%rip), %rdi      # 0x202022 <_IO_stdin_used+0x2c2>
  206abf: e8 ac bc 00 00               	callq	0x212770 <getenv@plt>
  206ac4: 49 89 c5                     	movq	%rax, %r13
  206ac7: 4c 8d 3d 56 e4 20 00         	leaq	2155606(%rip), %r15     # 0x414f24 <__afl_final_loc>
  206ace: 41 8b 2f                     	movl	(%r15), %ebp
  206ad1: 85 ed                        	testl	%ebp, %ebp
  206ad3: 74 5b                        	je	0x206b30 <__afl_map_shm+0xb0>
  206ad5: ff c5                        	incl	%ebp
  206ad7: 41 89 2f                     	movl	%ebp, (%r15)
  206ada: 48 8d 05 27 e2 00 00         	leaq	57895(%rip), %rax       # 0x214d08 <__afl_map_size>
  206ae1: 89 28                        	movl	%ebp, (%rax)
  206ae3: 48 8d 3d b5 b9 ff ff         	leaq	-17995(%rip), %rdi      # 0x20249f <_IO_stdin_used+0x73f>
  206aea: e8 81 bc 00 00               	callq	0x212770 <getenv@plt>
  206aef: 48 85 c0                     	testq	%rax, %rax
  206af2: 0f 85 af 05 00 00            	jne	0x2070a7 <__afl_map_shm+0x627>
  206af8: 81 fd 01 00 01 00            	cmpl	$65537, %ebp            # imm = 0x10001
  206afe: 72 45                        	jb	0x206b45 <__afl_map_shm+0xc5>
  206b00: 48 8d 3d 4a bb ff ff         	leaq	-17590(%rip), %rdi      # 0x202651 <_IO_stdin_used+0x8f1>
  206b07: e8 64 bc 00 00               	callq	0x212770 <getenv@plt>
  206b0c: 48 85 c0                     	testq	%rax, %rax
  206b0f: 0f 84 19 02 00 00            	je	0x206d2e <__afl_map_shm+0x2ae>
  206b15: 48 89 c7                     	movq	%rax, %rdi
  206b18: 31 f6                        	xorl	%esi, %esi
  206b1a: ba 0a 00 00 00               	movl	$10, %edx
  206b1f: e8 bc bc 00 00               	callq	0x2127e0 <strtol@plt>
  206b24: 41 8b 2f                     	movl	(%r15), %ebp
  206b27: 39 e8                        	cmpl	%ebp, %eax
  206b29: 73 1a                        	jae	0x206b45 <__afl_map_shm+0xc5>
  206b2b: e9 08 02 00 00               	jmp	0x206d38 <__afl_map_shm+0x2b8>
  206b30: 48 8d 3d 68 b9 ff ff         	leaq	-18072(%rip), %rdi      # 0x20249f <_IO_stdin_used+0x73f>
  206b37: e8 34 bc 00 00               	callq	0x212770 <getenv@plt>
  206b3c: 48 85 c0                     	testq	%rax, %rax
  206b3f: 0f 85 b0 05 00 00            	jne	0x2070f5 <__afl_map_shm+0x675>
  206b45: 4d 85 ed                     	testq	%r13, %r13
  206b48: 0f 85 a6 00 00 00            	jne	0x206bf4 <__afl_map_shm+0x174>
  206b4e: 48 8d 05 ab e3 00 00         	leaq	58283(%rip), %rax       # 0x214f00 <__afl_area_initial>
  206b55: 48 39 05 b4 e1 00 00         	cmpq	%rax, 57780(%rip)       # 0x214d10 <__afl_area_ptr_dummy>
  206b5c: 0f 85 92 00 00 00            	jne	0x206bf4 <__afl_map_shm+0x174>
  206b62: 48 8d 3d e8 ba ff ff         	leaq	-17688(%rip), %rdi      # 0x202651 <_IO_stdin_used+0x8f1>
  206b69: e8 02 bc 00 00               	callq	0x212770 <getenv@plt>
  206b6e: 48 85 c0                     	testq	%rax, %rax
  206b71: 74 45                        	je	0x206bb8 <__afl_map_shm+0x138>
  206b73: 48 89 c7                     	movq	%rax, %rdi
  206b76: 31 f6                        	xorl	%esi, %esi
  206b78: ba 0a 00 00 00               	movl	$10, %edx
  206b7d: e8 5e bc 00 00               	callq	0x2127e0 <strtol@plt>
  206b82: 48 89 c5                     	movq	%rax, %rbp
  206b85: 81 fd 01 00 20 00            	cmpl	$2097153, %ebp          # imm = 0x200001
  206b8b: 72 2b                        	jb	0x206bb8 <__afl_map_shm+0x138>
  206b8d: 48 8d 05 74 e1 00 00         	leaq	57716(%rip), %rax       # 0x214d08 <__afl_map_size>
  206b94: 89 28                        	movl	%ebp, (%rax)
  206b96: 89 ef                        	movl	%ebp, %edi
  206b98: e8 53 bd 00 00               	callq	0x2128f0 <malloc@plt>
  206b9d: 48 89 05 6c e1 00 00         	movq	%rax, 57708(%rip)       # 0x214d10 <__afl_area_ptr_dummy>
  206ba4: 48 85 c0                     	testq	%rax, %rax
  206ba7: 0f 84 65 05 00 00            	je	0x207112 <__afl_map_shm+0x692>
  206bad: 80 3d 64 e3 20 00 01         	cmpb	$1, 2155364(%rip)       # 0x414f18 <__afl_debug>
  206bb4: 75 4b                        	jne	0x206c01 <__afl_map_shm+0x181>
  206bb6: eb 1b                        	jmp	0x206bd3 <__afl_map_shm+0x153>
  206bb8: 48 8d 05 49 e1 00 00         	leaq	57673(%rip), %rax       # 0x214d08 <__afl_map_size>
  206bbf: c7 00 00 00 20 00            	movl	$2097152, (%rax)        # imm = 0x200000
  206bc5: bd 00 00 20 00               	movl	$2097152, %ebp          # imm = 0x200000
  206bca: 80 3d 47 e3 20 00 01         	cmpb	$1, 2155335(%rip)       # 0x414f18 <__afl_debug>
  206bd1: 75 2e                        	jne	0x206c01 <__afl_map_shm+0x181>
  206bd3: 48 8b 05 e6 d0 00 00         	movq	53478(%rip), %rax       # 0x213cc0 <write+0x213cc0>
  206bda: 48 8b 38                     	movq	(%rax), %rdi
  206bdd: 48 8b 0d 2c e1 00 00         	movq	57644(%rip), %rcx       # 0x214d10 <__afl_area_ptr_dummy>
  206be4: 48 8d 35 da ba ff ff         	leaq	-17702(%rip), %rsi      # 0x2026c5 <_IO_stdin_used+0x965>
  206beb: 89 ea                        	movl	%ebp, %edx
  206bed: 31 c0                        	xorl	%eax, %eax
  206bef: e8 bc bc 00 00               	callq	0x2128b0 <fprintf@plt>
  206bf4: 80 3d 1d e3 20 00 01         	cmpb	$1, 2155293(%rip)       # 0x414f18 <__afl_debug>
  206bfb: 0f 84 c4 03 00 00            	je	0x206fc5 <__afl_map_shm+0x545>
  206c01: 49 8b 06                     	movq	(%r14), %rax
  206c04: 48 85 c0                     	testq	%rax, %rax
  206c07: 0f 94 c3                     	sete	%bl
  206c0a: 48 8d 0d ef e2 00 00         	leaq	58095(%rip), %rcx       # 0x214f00 <__afl_area_initial>
  206c11: 48 39 c8                     	cmpq	%rcx, %rax
  206c14: 0f 94 c2                     	sete	%dl
  206c17: 08 da                        	orb	%bl, %dl
  206c19: 4d 85 ed                     	testq	%r13, %r13
  206c1c: 74 3c                        	je	0x206c5a <__afl_map_shm+0x1da>
  206c1e: 48 8b 2d eb e0 00 00         	movq	57579(%rip), %rbp       # 0x214d10 <__afl_area_ptr_dummy>
  206c25: 48 39 e8                     	cmpq	%rbp, %rax
  206c28: 0f 94 c1                     	sete	%cl
  206c2b: 08 ca                        	orb	%cl, %dl
  206c2d: 0f 85 4e 01 00 00            	jne	0x206d81 <__afl_map_shm+0x301>
  206c33: 48 8d 0d ee e2 20 00         	leaq	2155246(%rip), %rcx     # 0x414f28 <__afl_map_addr>
  206c3a: 48 8b 39                     	movq	(%rcx), %rdi
  206c3d: 48 85 ff                     	testq	%rdi, %rdi
  206c40: 0f 84 30 01 00 00            	je	0x206d76 <__afl_map_shm+0x2f6>
  206c46: 41 8b 37                     	movl	(%r15), %esi
  206c49: e8 d2 bd 00 00               	callq	0x212a20 <munmap@plt>
  206c4e: 48 8b 2d bb e0 00 00         	movq	57531(%rip), %rbp       # 0x214d10 <__afl_area_ptr_dummy>
  206c55: e9 24 01 00 00               	jmp	0x206d7e <__afl_map_shm+0x2fe>
  206c5a: 48 8d 2d c7 e2 20 00         	leaq	2155207(%rip), %rbp     # 0x414f28 <__afl_map_addr>
  206c61: 48 8b 7d 00                  	movq	(%rbp), %rdi
  206c65: 48 85 ff                     	testq	%rdi, %rdi
  206c68: 0f 95 c3                     	setne	%bl
  206c6b: 20 da                        	andb	%bl, %dl
  206c6d: 80 fa 01                     	cmpb	$1, %dl
  206c70: 75 5e                        	jne	0x206cd0 <__afl_map_shm+0x250>
  206c72: 48 8d 05 8f e0 00 00         	leaq	57487(%rip), %rax       # 0x214d08 <__afl_map_size>
  206c79: 8b 30                        	movl	(%rax), %esi
  206c7b: ba 03 00 00 00               	movl	$3, %edx
  206c80: b9 21 00 10 00               	movl	$1048609, %ecx          # imm = 0x100021
  206c85: 41 b8 ff ff ff ff            	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
  206c8b: 45 31 c9                     	xorl	%r9d, %r9d
  206c8e: e8 9d bd 00 00               	callq	0x212a30 <mmap@plt>
  206c93: 49 89 06                     	movq	%rax, (%r14)
  206c96: 48 83 f8 ff                  	cmpq	$-1, %rax
  206c9a: 0f 85 5b 01 00 00            	jne	0x206dfb <__afl_map_shm+0x37b>
  206ca0: 48 8b 05 19 d0 00 00         	movq	53273(%rip), %rax       # 0x213cc0 <write+0x213cc0>
  206ca7: 48 8b 38                     	movq	(%rax), %rdi
  206caa: 48 8b 55 00                  	movq	(%rbp), %rdx
  206cae: 48 8d 35 83 b2 ff ff         	leaq	-19837(%rip), %rsi      # 0x201f38 <_IO_stdin_used+0x1d8>
  206cb5: 31 c0                        	xorl	%eax, %eax
  206cb7: e8 f4 bb 00 00               	callq	0x2128b0 <fprintf@plt>
  206cbc: bf 04 00 00 00               	movl	$4, %edi
  206cc1: e8 2a 2d 00 00               	callq	0x2099f0 <send_forkserver_error>
  206cc6: bf 01 00 00 00               	movl	$1, %edi
  206ccb: e8 70 bd 00 00               	callq	0x212a40 <exit@plt>
  206cd0: 41 8b 2f                     	movl	(%r15), %ebp
  206cd3: 4c 8d 25 2e e0 00 00         	leaq	57390(%rip), %r12       # 0x214d08 <__afl_map_size>
  206cda: 41 3b 2c 24                  	cmpl	(%r12), %ebp
  206cde: 0f 86 17 01 00 00            	jbe	0x206dfb <__afl_map_shm+0x37b>
  206ce4: 48 8b 3d 25 e0 00 00         	movq	57381(%rip), %rdi       # 0x214d10 <__afl_area_ptr_dummy>
  206ceb: 48 39 cf                     	cmpq	%rcx, %rdi
  206cee: 74 08                        	je	0x206cf8 <__afl_map_shm+0x278>
  206cf0: e8 4b bc 00 00               	callq	0x212940 <free@plt>
  206cf5: 41 8b 2f                     	movl	(%r15), %ebp
  206cf8: 89 ef                        	movl	%ebp, %edi
  206cfa: e8 f1 bb 00 00               	callq	0x2128f0 <malloc@plt>
  206cff: 48 89 05 0a e0 00 00         	movq	%rax, 57354(%rip)       # 0x214d10 <__afl_area_ptr_dummy>
  206d06: 49 89 06                     	movq	%rax, (%r14)
  206d09: 41 89 2c 24                  	movl	%ebp, (%r12)
  206d0d: 48 85 c0                     	testq	%rax, %rax
  206d10: 0f 85 e5 00 00 00            	jne	0x206dfb <__afl_map_shm+0x37b>
  206d16: 48 8b 05 a3 cf 00 00         	movq	53155(%rip), %rax       # 0x213cc0 <write+0x213cc0>
  206d1d: 48 8b 38                     	movq	(%rax), %rdi
  206d20: 48 8d 35 a1 b6 ff ff         	leaq	-18783(%rip), %rsi      # 0x2023c8 <_IO_stdin_used+0x668>
  206d27: 89 ea                        	movl	%ebp, %edx
  206d29: e9 f7 03 00 00               	jmp	0x207125 <__afl_map_shm+0x6a5>
  206d2e: 31 c0                        	xorl	%eax, %eax
  206d30: 39 e8                        	cmpl	%ebp, %eax
  206d32: 0f 83 0d fe ff ff            	jae	0x206b45 <__afl_map_shm+0xc5>
  206d38: 48 8d 3d ab b8 ff ff         	leaq	-18261(%rip), %rdi      # 0x2025ea <_IO_stdin_used+0x88a>
  206d3f: e8 2c ba 00 00               	callq	0x212770 <getenv@plt>
  206d44: 81 fd 01 00 80 00            	cmpl	$8388609, %ebp          # imm = 0x800001
  206d4a: 0f 82 a2 01 00 00            	jb	0x206ef2 <__afl_map_shm+0x472>
  206d50: 48 85 c0                     	testq	%rax, %rax
  206d53: 0f 84 fe 02 00 00            	je	0x207057 <__afl_map_shm+0x5d7>
  206d59: 4d 85 ed                     	testq	%r13, %r13
  206d5c: 0f 84 e3 fd ff ff            	je	0x206b45 <__afl_map_shm+0xc5>
  206d62: bf 01 00 00 00               	movl	$1, %edi
  206d67: e8 84 2c 00 00               	callq	0x2099f0 <send_forkserver_error>
  206d6c: bf ff ff ff ff               	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
  206d71: e8 ca bc 00 00               	callq	0x212a40 <exit@plt>
  206d76: 48 89 c7                     	movq	%rax, %rdi
  206d79: e8 c2 bb 00 00               	callq	0x212940 <free@plt>
  206d7e: 49 89 2e                     	movq	%rbp, (%r14)
  206d81: 4c 89 ef                     	movq	%r13, %rdi
  206d84: 31 f6                        	xorl	%esi, %esi
  206d86: ba 0a 00 00 00               	movl	$10, %edx
  206d8b: e8 50 ba 00 00               	callq	0x2127e0 <strtol@plt>
  206d90: 48 89 c5                     	movq	%rax, %rbp
  206d93: 48 8d 05 6e df 00 00         	leaq	57198(%rip), %rax       # 0x214d08 <__afl_map_size>
  206d9a: 81 38 01 00 01 00            	cmpl	$65537, (%rax)          # imm = 0x10001
  206da0: 72 2f                        	jb	0x206dd1 <__afl_map_shm+0x351>
  206da2: 48 8d 3d a8 b8 ff ff         	leaq	-18264(%rip), %rdi      # 0x202651 <_IO_stdin_used+0x8f1>
  206da9: e8 c2 b9 00 00               	callq	0x212770 <getenv@plt>
  206dae: 48 85 c0                     	testq	%rax, %rax
  206db1: 0f 84 fb 02 00 00            	je	0x2070b2 <__afl_map_shm+0x632>
  206db7: 48 89 c7                     	movq	%rax, %rdi
  206dba: 31 f6                        	xorl	%esi, %esi
  206dbc: ba 0a 00 00 00               	movl	$10, %edx
  206dc1: e8 1a ba 00 00               	callq	0x2127e0 <strtol@plt>
  206dc6: a9 00 00 ff ff               	testl	$4294901760, %eax       # imm = 0xFFFF0000
  206dcb: 0f 84 e1 02 00 00            	je	0x2070b2 <__afl_map_shm+0x632>
  206dd1: 48 8d 1d 50 e1 20 00         	leaq	2154832(%rip), %rbx     # 0x414f28 <__afl_map_addr>
  206dd8: 48 8b 33                     	movq	(%rbx), %rsi
  206ddb: 89 ef                        	movl	%ebp, %edi
  206ddd: 31 d2                        	xorl	%edx, %edx
  206ddf: e8 6c bc 00 00               	callq	0x212a50 <shmat@plt>
  206de4: 49 89 06                     	movq	%rax, (%r14)
  206de7: 48 8d 48 01                  	leaq	1(%rax), %rcx
  206deb: 48 83 f9 01                  	cmpq	$1, %rcx
  206def: 0f 86 8a 02 00 00            	jbe	0x20707f <__afl_map_shm+0x5ff>
  206df5: c6 00 01                     	movb	$1, (%rax)
  206df8: 49 8b 06                     	movq	(%r14), %rax
  206dfb: 48 89 05 16 df 00 00         	movq	%rax, 57110(%rip)       # 0x214d18 <__afl_area_ptr_backup>
  206e02: 80 3d 0f e1 20 00 01         	cmpb	$1, 2154767(%rip)       # 0x414f18 <__afl_debug>
  206e09: 0f 84 0b 01 00 00            	je	0x206f1a <__afl_map_shm+0x49a>
  206e0f: 48 8d 1d 32 e1 20 00         	leaq	2154802(%rip), %rbx     # 0x414f48 <__afl_selective_coverage>
  206e16: 83 3b 00                     	cmpl	$0, (%rbx)
  206e19: 74 35                        	je	0x206e50 <__afl_map_shm+0x3d0>
  206e1b: 48 8d 05 e6 de 00 00         	leaq	57062(%rip), %rax       # 0x214d08 <__afl_map_size>
  206e22: 8b 38                        	movl	(%rax), %edi
  206e24: 81 ff 01 00 20 00            	cmpl	$2097153, %edi          # imm = 0x200001
  206e2a: 72 24                        	jb	0x206e50 <__afl_map_shm+0x3d0>
  206e2c: e8 bf ba 00 00               	callq	0x2128f0 <malloc@plt>
  206e31: 48 89 05 d8 de 00 00         	movq	%rax, 57048(%rip)       # 0x214d10 <__afl_area_ptr_dummy>
  206e38: 48 85 c0                     	testq	%rax, %rax
  206e3b: 0f 84 eb 01 00 00            	je	0x20702c <__afl_map_shm+0x5ac>
  206e41: 48 8d 0d 24 e1 20 00         	leaq	2154788(%rip), %rcx     # 0x414f6c <__afl_selective_coverage_start_off>
  206e48: 83 39 00                     	cmpl	$0, (%rcx)
  206e4b: 74 03                        	je	0x206e50 <__afl_map_shm+0x3d0>
  206e4d: 49 89 06                     	movq	%rax, (%r14)
  206e50: 48 8d 3d fe bd ff ff         	leaq	-16898(%rip), %rdi      # 0x202c55 <_IO_stdin_used+0xef5>
  206e57: e8 14 b9 00 00               	callq	0x212770 <getenv@plt>
  206e5c: 48 89 c3                     	movq	%rax, %rbx
  206e5f: 80 3d b2 e0 20 00 01         	cmpb	$1, 2154674(%rip)       # 0x414f18 <__afl_debug>
  206e66: 0f 84 25 01 00 00            	je	0x206f91 <__afl_map_shm+0x511>
  206e6c: 48 85 db                     	testq	%rbx, %rbx
  206e6f: 74 72                        	je	0x206ee3 <__afl_map_shm+0x463>
  206e71: 48 8d 3d bb b7 ff ff         	leaq	-18501(%rip), %rdi      # 0x202633 <_IO_stdin_used+0x8d3>
  206e78: be 01 00 00 00               	movl	$1, %esi
  206e7d: 31 c0                        	xorl	%eax, %eax
  206e7f: e8 7c ba 00 00               	callq	0x212900 <open@plt>
  206e84: 89 05 9e de 00 00            	movl	%eax, 56990(%rip)       # 0x214d28 <__afl_dummy_fd+0x4>
  206e8a: 85 c0                        	testl	%eax, %eax
  206e8c: 79 1a                        	jns	0x206ea8 <__afl_map_shm+0x428>
  206e8e: 48 8d 3d 8f de 00 00         	leaq	56975(%rip), %rdi       # 0x214d24 <__afl_dummy_fd>
  206e95: e8 c6 bb 00 00               	callq	0x212a60 <pipe@plt>
  206e9a: 85 c0                        	testl	%eax, %eax
  206e9c: 79 0a                        	jns	0x206ea8 <__afl_map_shm+0x428>
  206e9e: c7 05 80 de 00 00 01 00 00 00	movl	$1, 56960(%rip)         # 0x214d28 <__afl_dummy_fd+0x4>
  206ea8: 48 89 df                     	movq	%rbx, %rdi
  206eab: 31 f6                        	xorl	%esi, %esi
  206ead: ba 0a 00 00 00               	movl	$10, %edx
  206eb2: e8 29 b9 00 00               	callq	0x2127e0 <strtol@plt>
  206eb7: 89 c7                        	movl	%eax, %edi
  206eb9: 31 f6                        	xorl	%esi, %esi
  206ebb: 31 d2                        	xorl	%edx, %edx
  206ebd: e8 8e bb 00 00               	callq	0x212a50 <shmat@plt>
  206ec2: 48 8d 0d 77 e0 20 00         	leaq	2154615(%rip), %rcx     # 0x414f40 <__afl_cmp_map>
  206ec9: 48 89 01                     	movq	%rax, (%rcx)
  206ecc: 48 8d 0d 7d e0 20 00         	leaq	2154621(%rip), %rcx     # 0x414f50 <__afl_cmp_map_backup>
  206ed3: 48 89 01                     	movq	%rax, (%rcx)
  206ed6: 48 ff c0                     	incq	%rax
  206ed9: 48 83 f8 01                  	cmpq	$1, %rax
  206edd: 0f 86 b1 01 00 00            	jbe	0x207094 <__afl_map_shm+0x614>
  206ee3: 48 83 c4 08                  	addq	$8, %rsp
  206ee7: 5b                           	popq	%rbx
  206ee8: 41 5c                        	popq	%r12
  206eea: 41 5d                        	popq	%r13
  206eec: 41 5e                        	popq	%r14
  206eee: 41 5f                        	popq	%r15
  206ef0: 5d                           	popq	%rbp
  206ef1: c3                           	retq
  206ef2: 48 85 c0                     	testq	%rax, %rax
  206ef5: 0f 85 4a fc ff ff            	jne	0x206b45 <__afl_map_shm+0xc5>
  206efb: 48 8b 05 be cd 00 00         	movq	52670(%rip), %rax       # 0x213cc0 <write+0x213cc0>
  206f02: 48 8b 38                     	movq	(%rax), %rdi
  206f05: 48 8d 35 a5 b5 ff ff         	leaq	-19035(%rip), %rsi      # 0x2024b1 <_IO_stdin_used+0x751>
  206f0c: 89 ea                        	movl	%ebp, %edx
  206f0e: 31 c0                        	xorl	%eax, %eax
  206f10: e8 9b b9 00 00               	callq	0x2128b0 <fprintf@plt>
  206f15: e9 2b fc ff ff               	jmp	0x206b45 <__afl_map_shm+0xc5>
  206f1a: 4d 85 ed                     	testq	%r13, %r13
  206f1d: 48 8b 0d 9c cd 00 00         	movq	52636(%rip), %rcx       # 0x213cc0 <write+0x213cc0>
  206f24: 48 8b 39                     	movq	(%rcx), %rdi
  206f27: 48 8d 15 c6 b6 ff ff         	leaq	-18746(%rip), %rdx      # 0x2025f4 <_IO_stdin_used+0x894>
  206f2e: 49 0f 45 d5                  	cmovneq	%r13, %rdx
  206f32: 4c 8b 0d d7 dd 00 00         	movq	56791(%rip), %r9        # 0x214d10 <__afl_area_ptr_dummy>
  206f39: 4c 8d 15 e8 df 20 00         	leaq	2154472(%rip), %r10     # 0x414f28 <__afl_map_addr>
  206f40: 41 8b 1f                     	movl	(%r15), %ebx
  206f43: 48 8d 0d be dd 00 00         	leaq	56766(%rip), %rcx       # 0x214d08 <__afl_map_size>
  206f4a: 8b 29                        	movl	(%rcx), %ebp
  206f4c: 48 8d 35 22 bb ff ff         	leaq	-17630(%rip), %rsi      # 0x202a75 <_IO_stdin_used+0xd15>
  206f53: 4c 8d 05 a6 df 00 00         	leaq	57254(%rip), %r8        # 0x214f00 <__afl_area_initial>
  206f5a: 48 89 c1                     	movq	%rax, %rcx
  206f5d: 31 c0                        	xorl	%eax, %eax
  206f5f: 68 00 00 80 00               	pushq	$8388608                # imm = 0x800000
  206f64: 68 00 00 80 00               	pushq	$8388608                # imm = 0x800000
  206f69: 55                           	pushq	%rbp
  206f6a: 53                           	pushq	%rbx
  206f6b: 68 00 00 01 00               	pushq	$65536                  # imm = 0x10000
  206f70: 41 ff 32                     	pushq	(%r10)
  206f73: e8 38 b9 00 00               	callq	0x2128b0 <fprintf@plt>
  206f78: 48 83 c4 30                  	addq	$48, %rsp
  206f7c: 48 8d 1d c5 df 20 00         	leaq	2154437(%rip), %rbx     # 0x414f48 <__afl_selective_coverage>
  206f83: 83 3b 00                     	cmpl	$0, (%rbx)
  206f86: 0f 85 8f fe ff ff            	jne	0x206e1b <__afl_map_shm+0x39b>
  206f8c: e9 bf fe ff ff               	jmp	0x206e50 <__afl_map_shm+0x3d0>
  206f91: 48 8b 05 28 cd 00 00         	movq	52520(%rip), %rax       # 0x213cc0 <write+0x213cc0>
  206f98: 48 8b 38                     	movq	(%rax), %rdi
  206f9b: 48 85 db                     	testq	%rbx, %rbx
  206f9e: 48 8d 15 4f b6 ff ff         	leaq	-18865(%rip), %rdx      # 0x2025f4 <_IO_stdin_used+0x894>
  206fa5: 48 0f 45 d3                  	cmovneq	%rbx, %rdx
  206fa9: 48 8d 35 de b0 ff ff         	leaq	-20258(%rip), %rsi      # 0x20208e <_IO_stdin_used+0x32e>
  206fb0: 31 c0                        	xorl	%eax, %eax
  206fb2: e8 f9 b8 00 00               	callq	0x2128b0 <fprintf@plt>
  206fb7: 48 85 db                     	testq	%rbx, %rbx
  206fba: 0f 85 b1 fe ff ff            	jne	0x206e71 <__afl_map_shm+0x3f1>
  206fc0: e9 1e ff ff ff               	jmp	0x206ee3 <__afl_map_shm+0x463>
  206fc5: 4d 85 ed                     	testq	%r13, %r13
  206fc8: 48 8b 05 f1 cc 00 00         	movq	52465(%rip), %rax       # 0x213cc0 <write+0x213cc0>
  206fcf: 48 8b 38                     	movq	(%rax), %rdi
  206fd2: 48 8d 15 1b b6 ff ff         	leaq	-18917(%rip), %rdx      # 0x2025f4 <_IO_stdin_used+0x894>
  206fd9: 49 0f 45 d5                  	cmovneq	%r13, %rdx
  206fdd: 49 8b 0e                     	movq	(%r14), %rcx
  206fe0: 4c 8b 0d 29 dd 00 00         	movq	56617(%rip), %r9        # 0x214d10 <__afl_area_ptr_dummy>
  206fe7: 4c 8d 15 3a df 20 00         	leaq	2154298(%rip), %r10     # 0x414f28 <__afl_map_addr>
  206fee: 41 8b 1f                     	movl	(%r15), %ebx
  206ff1: 48 8d 05 10 dd 00 00         	leaq	56592(%rip), %rax       # 0x214d08 <__afl_map_size>
  206ff8: 8b 28                        	movl	(%rax), %ebp
  206ffa: 48 8d 35 6a bb ff ff         	leaq	-17558(%rip), %rsi      # 0x202b6b <_IO_stdin_used+0xe0b>
  207001: 4c 8d 05 f8 de 00 00         	leaq	57080(%rip), %r8        # 0x214f00 <__afl_area_initial>
  207008: 31 c0                        	xorl	%eax, %eax
  20700a: 68 00 00 80 00               	pushq	$8388608                # imm = 0x800000
  20700f: 68 00 00 80 00               	pushq	$8388608                # imm = 0x800000
  207014: 55                           	pushq	%rbp
  207015: 53                           	pushq	%rbx
  207016: 68 00 00 01 00               	pushq	$65536                  # imm = 0x10000
  20701b: 41 ff 32                     	pushq	(%r10)
  20701e: e8 8d b8 00 00               	callq	0x2128b0 <fprintf@plt>
  207023: 48 83 c4 30                  	addq	$48, %rsp
  207027: e9 d5 fb ff ff               	jmp	0x206c01 <__afl_map_shm+0x181>
  20702c: 48 8b 05 8d cc 00 00         	movq	52365(%rip), %rax       # 0x213cc0 <write+0x213cc0>
  207033: 48 8b 08                     	movq	(%rax), %rcx
  207036: 48 8d 3d ef bb ff ff         	leaq	-17425(%rip), %rdi      # 0x202c2c <_IO_stdin_used+0xecc>
  20703d: be 28 00 00 00               	movl	$40, %esi
  207042: ba 01 00 00 00               	movl	$1, %edx
  207047: e8 84 b8 00 00               	callq	0x2128d0 <fwrite@plt>
  20704c: c7 03 00 00 00 00            	movl	$0, (%rbx)
  207052: e9 f9 fd ff ff               	jmp	0x206e50 <__afl_map_shm+0x3d0>
  207057: 48 8b 05 62 cc 00 00         	movq	52322(%rip), %rax       # 0x213cc0 <write+0x213cc0>
  20705e: 48 8b 38                     	movq	(%rax), %rdi
  207061: 48 8d 35 15 ad ff ff         	leaq	-21227(%rip), %rsi      # 0x201d7d <_IO_stdin_used+0x1d>
  207068: 89 ea                        	movl	%ebp, %edx
  20706a: 31 c0                        	xorl	%eax, %eax
  20706c: e8 3f b8 00 00               	callq	0x2128b0 <fprintf@plt>
  207071: 4d 85 ed                     	testq	%r13, %r13
  207074: 0f 84 cb fa ff ff            	je	0x206b45 <__afl_map_shm+0xc5>
  20707a: e9 e3 fc ff ff               	jmp	0x206d62 <__afl_map_shm+0x2e2>
  20707f: 48 83 3b 00                  	cmpq	$0, (%rbx)
  207083: 75 41                        	jne	0x2070c6 <__afl_map_shm+0x646>
  207085: c7 44 24 04 8f 08 00 f8      	movl	$4160751759, 4(%rsp)    # imm = 0xF800088F
  20708d: 48 8d 74 24 04               	leaq	4(%rsp), %rsi
  207092: eb 3c                        	jmp	0x2070d0 <__afl_map_shm+0x650>
  207094: 48 8d 3d 47 ad ff ff         	leaq	-21177(%rip), %rdi      # 0x201de2 <_IO_stdin_used+0x82>
  20709b: e8 f0 b6 00 00               	callq	0x212790 <perror@plt>
  2070a0: bf 04 00 00 00               	movl	$4, %edi
  2070a5: eb 10                        	jmp	0x2070b7 <__afl_map_shm+0x637>
  2070a7: 48 8d 3d 61 b1 ff ff         	leaq	-20127(%rip), %rdi      # 0x20220f <_IO_stdin_used+0x4af>
  2070ae: 89 ee                        	movl	%ebp, %esi
  2070b0: eb 4f                        	jmp	0x207101 <__afl_map_shm+0x681>
  2070b2: bf 01 00 00 00               	movl	$1, %edi
  2070b7: e8 34 29 00 00               	callq	0x2099f0 <send_forkserver_error>
  2070bc: bf 01 00 00 00               	movl	$1, %edi
  2070c1: e8 4a b9 00 00               	callq	0x212a10 <_exit@plt>
  2070c6: c7 04 24 8f 02 00 f8         	movl	$4160750223, (%rsp)     # imm = 0xF800028F
  2070cd: 48 89 e6                     	movq	%rsp, %rsi
  2070d0: ba 04 00 00 00               	movl	$4, %edx
  2070d5: bf c7 00 00 00               	movl	$199, %edi
  2070da: e8 d1 b8 00 00               	callq	0x2129b0 <write@plt>
  2070df: 48 8d 3d 8a b3 ff ff         	leaq	-19574(%rip), %rdi      # 0x202470 <_IO_stdin_used+0x710>
  2070e6: e8 a5 b6 00 00               	callq	0x212790 <perror@plt>
  2070eb: bf 01 00 00 00               	movl	$1, %edi
  2070f0: e8 1b b9 00 00               	callq	0x212a10 <_exit@plt>
  2070f5: 48 8d 3d 13 b1 ff ff         	leaq	-20205(%rip), %rdi      # 0x20220f <_IO_stdin_used+0x4af>
  2070fc: be 00 00 01 00               	movl	$65536, %esi            # imm = 0x10000
  207101: 31 c0                        	xorl	%eax, %eax
  207103: e8 b8 b6 00 00               	callq	0x2127c0 <printf@plt>
  207108: bf ff ff ff ff               	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
  20710d: e8 2e b9 00 00               	callq	0x212a40 <exit@plt>
  207112: 48 8b 05 a7 cb 00 00         	movq	52135(%rip), %rax       # 0x213cc0 <write+0x213cc0>
  207119: 48 8b 38                     	movq	(%rax), %rdi
  20711c: 48 8d 35 a5 b2 ff ff         	leaq	-19803(%rip), %rsi      # 0x2023c8 <_IO_stdin_used+0x668>
  207123: 89 ea                        	movl	%ebp, %edx
  207125: 31 c0                        	xorl	%eax, %eax
  207127: e8 84 b7 00 00               	callq	0x2128b0 <fprintf@plt>
  20712c: bf ff ff ff ff               	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
  207131: e8 0a b9 00 00               	callq	0x212a40 <exit@plt>
  207136: 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)

0000000000207140 <__afl_auto_second>:
  207140: 41 56                        	pushq	%r14
  207142: 53                           	pushq	%rbx
  207143: 50                           	pushq	%rax
  207144: 48 8d 05 d5 dd 20 00         	leaq	2153941(%rip), %rax     # 0x414f20 <__afl_already_initialized_second>
  20714b: 83 38 00                     	cmpl	$0, (%rax)
  20714e: 74 08                        	je	0x207158 <__afl_auto_second+0x18>
  207150: 48 83 c4 08                  	addq	$8, %rsp
  207154: 5b                           	popq	%rbx
  207155: 41 5e                        	popq	%r14
  207157: c3                           	retq
  207158: c7 00 01 00 00 00            	movl	$1, (%rax)
  20715e: 48 8d 3d d1 b9 ff ff         	leaq	-17967(%rip), %rdi      # 0x202b36 <_IO_stdin_used+0xdd6>
  207165: e8 06 b6 00 00               	callq	0x212770 <getenv@plt>
  20716a: 48 85 c0                     	testq	%rax, %rax
  20716d: 0f 85 9d 00 00 00            	jne	0x207210 <__afl_auto_second+0xd0>
  207173: 48 8d 3d d5 b8 ff ff         	leaq	-18219(%rip), %rdi      # 0x202a4f <_IO_stdin_used+0xcef>
  20717a: e8 f1 b5 00 00               	callq	0x212770 <getenv@plt>
  20717f: 48 85 c0                     	testq	%rax, %rax
  207182: 75 cc                        	jne	0x207150 <__afl_auto_second+0x10>
  207184: 48 8d 1d 99 dd 20 00         	leaq	2153881(%rip), %rbx     # 0x414f24 <__afl_final_loc>
  20718b: 83 3b 00                     	cmpl	$0, (%rbx)
  20718e: 74 c0                        	je	0x207150 <__afl_auto_second+0x10>
  207190: 4c 8d 35 61 db 00 00         	leaq	56161(%rip), %r14       # 0x214cf8 <__afl_area_ptr>
  207197: 49 8b 3e                     	movq	(%r14), %rdi
  20719a: 48 85 ff                     	testq	%rdi, %rdi
  20719d: 74 11                        	je	0x2071b0 <__afl_auto_second+0x70>
  20719f: 48 8d 05 5a dd 00 00         	leaq	56666(%rip), %rax       # 0x214f00 <__afl_area_initial>
  2071a6: 48 39 c7                     	cmpq	%rax, %rdi
  2071a9: 74 05                        	je	0x2071b0 <__afl_auto_second+0x70>
  2071ab: e8 90 b7 00 00               	callq	0x212940 <free@plt>
  2071b0: 48 8d 05 71 dd 20 00         	leaq	2153841(%rip), %rax     # 0x414f28 <__afl_map_addr>
  2071b7: 48 8b 38                     	movq	(%rax), %rdi
  2071ba: 48 85 ff                     	testq	%rdi, %rdi
  2071bd: 74 2a                        	je	0x2071e9 <__afl_auto_second+0xa9>
  2071bf: 8b 33                        	movl	(%rbx), %esi
  2071c1: ba 03 00 00 00               	movl	$3, %edx
  2071c6: b9 21 00 10 00               	movl	$1048609, %ecx          # imm = 0x100021
  2071cb: 41 b8 ff ff ff ff            	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
  2071d1: 45 31 c9                     	xorl	%r9d, %r9d
  2071d4: e8 57 b8 00 00               	callq	0x212a30 <mmap@plt>
  2071d9: 48 8d 48 01                  	leaq	1(%rax), %rcx
  2071dd: 48 83 f9 02                  	cmpq	$2, %rcx
  2071e1: 0f 82 69 ff ff ff            	jb	0x207150 <__afl_auto_second+0x10>
  2071e7: eb 15                        	jmp	0x2071fe <__afl_auto_second+0xbe>
  2071e9: 8b 3b                        	movl	(%rbx), %edi
  2071eb: e8 00 b7 00 00               	callq	0x2128f0 <malloc@plt>
  2071f0: 48 8d 48 01                  	leaq	1(%rax), %rcx
  2071f4: 48 83 f9 02                  	cmpq	$2, %rcx
  2071f8: 0f 82 52 ff ff ff            	jb	0x207150 <__afl_auto_second+0x10>
  2071fe: 49 89 06                     	movq	%rax, (%r14)
  207201: 48 89 05 10 db 00 00         	movq	%rax, 56080(%rip)       # 0x214d18 <__afl_area_ptr_backup>
  207208: 48 83 c4 08                  	addq	$8, %rsp
  20720c: 5b                           	popq	%rbx
  20720d: 41 5e                        	popq	%r14
  20720f: c3                           	retq
  207210: c6 05 01 dd 20 00 01         	movb	$1, 2153729(%rip)       # 0x414f18 <__afl_debug>
  207217: 48 8b 05 a2 ca 00 00         	movq	51874(%rip), %rax       # 0x213cc0 <write+0x213cc0>
  20721e: 48 8b 08                     	movq	(%rax), %rcx
  207221: 48 8d 3d 10 b2 ff ff         	leaq	-19952(%rip), %rdi      # 0x202438 <_IO_stdin_used+0x6d8>
  207228: be 15 00 00 00               	movl	$21, %esi
  20722d: ba 01 00 00 00               	movl	$1, %edx
  207232: e8 99 b6 00 00               	callq	0x2128d0 <fwrite@plt>
  207237: 48 8d 3d 11 b8 ff ff         	leaq	-18415(%rip), %rdi      # 0x202a4f <_IO_stdin_used+0xcef>
  20723e: e8 2d b5 00 00               	callq	0x212770 <getenv@plt>
  207243: 48 85 c0                     	testq	%rax, %rax
  207246: 0f 84 38 ff ff ff            	je	0x207184 <__afl_auto_second+0x44>
  20724c: e9 ff fe ff ff               	jmp	0x207150 <__afl_auto_second+0x10>
  207251: 66 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%rax,%rax)

0000000000207260 <__afl_auto_first>:
  207260: 50                           	pushq	%rax
  207261: 48 8d 05 c8 dc 20 00         	leaq	2153672(%rip), %rax     # 0x414f30 <__afl_already_initialized_first>
  207268: 83 38 00                     	cmpl	$0, (%rax)
  20726b: 74 02                        	je	0x20726f <__afl_auto_first+0xf>
  20726d: 58                           	popq	%rax
  20726e: c3                           	retq
  20726f: c7 00 01 00 00 00            	movl	$1, (%rax)
  207275: 48 8d 3d d3 b7 ff ff         	leaq	-18477(%rip), %rdi      # 0x202a4f <_IO_stdin_used+0xcef>
  20727c: e8 ef b4 00 00               	callq	0x212770 <getenv@plt>
  207281: 48 85 c0                     	testq	%rax, %rax
  207284: 75 e7                        	jne	0x20726d <__afl_auto_first+0xd>
  207286: bf 00 00 20 00               	movl	$2097152, %edi          # imm = 0x200000
  20728b: e8 60 b6 00 00               	callq	0x2128f0 <malloc@plt>
  207290: 48 8d 48 01                  	leaq	1(%rax), %rcx
  207294: 48 83 f9 02                  	cmpq	$2, %rcx
  207298: 72 d3                        	jb	0x20726d <__afl_auto_first+0xd>
  20729a: 48 8d 0d 57 da 00 00         	leaq	55895(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  2072a1: 48 89 01                     	movq	%rax, (%rcx)
  2072a4: 48 89 05 6d da 00 00         	movq	%rax, 55917(%rip)       # 0x214d18 <__afl_area_ptr_backup>
  2072ab: 58                           	popq	%rax
  2072ac: c3                           	retq
  2072ad: 0f 1f 00                     	nopl	(%rax)

00000000002072b0 <__sanitizer_cov_trace_pc_guard>:
  2072b0: 48 8d 05 41 da 00 00         	leaq	55873(%rip), %rax       # 0x214cf8 <__afl_area_ptr>
  2072b7: 48 8b 00                     	movq	(%rax), %rax
  2072ba: 8b 0f                        	movl	(%rdi), %ecx
  2072bc: fe 04 08                     	incb	(%rax,%rcx)
  2072bf: c3                           	retq

00000000002072c0 <__sanitizer_cov_trace_pc_guard_init>:
  2072c0: 41 57                        	pushq	%r15
  2072c2: 41 56                        	pushq	%r14
  2072c4: 41 55                        	pushq	%r13
  2072c6: 41 54                        	pushq	%r12
  2072c8: 53                           	pushq	%rbx
  2072c9: 49 89 f6                     	movq	%rsi, %r14
  2072cc: 48 89 fb                     	movq	%rdi, %rbx
  2072cf: 80 3d 42 dc 20 00 01         	cmpb	$1, 2153538(%rip)       # 0x414f18 <__afl_debug>
  2072d6: 0f 84 95 01 00 00            	je	0x207471 <__sanitizer_cov_trace_pc_guard_init+0x1b1>
  2072dc: 4c 39 f3                     	cmpq	%r14, %rbx
  2072df: 74 05                        	je	0x2072e6 <__sanitizer_cov_trace_pc_guard_init+0x26>
  2072e1: 83 3b 00                     	cmpl	$0, (%rbx)
  2072e4: 74 0a                        	je	0x2072f0 <__sanitizer_cov_trace_pc_guard_init+0x30>
  2072e6: 5b                           	popq	%rbx
  2072e7: 41 5c                        	popq	%r12
  2072e9: 41 5d                        	popq	%r13
  2072eb: 41 5e                        	popq	%r14
  2072ed: 41 5f                        	popq	%r15
  2072ef: c3                           	retq
  2072f0: 48 8d 05 3d dc 20 00         	leaq	2153533(%rip), %rax     # 0x414f34 <__afl_already_initialized_forkserver>
  2072f7: 83 38 00                     	cmpl	$0, (%rax)
  2072fa: 74 52                        	je	0x20734e <__sanitizer_cov_trace_pc_guard_init+0x8e>
  2072fc: 48 8d 3d 3a b3 ff ff         	leaq	-19654(%rip), %rdi      # 0x20263d <_IO_stdin_used+0x8dd>
  207303: e8 68 b4 00 00               	callq	0x212770 <getenv@plt>
  207308: 48 85 c0                     	testq	%rax, %rax
  20730b: 0f 84 74 02 00 00            	je	0x207585 <__sanitizer_cov_trace_pc_guard_init+0x2c5>
  207311: 4c 39 f3                     	cmpq	%r14, %rbx
  207314: 73 38                        	jae	0x20734e <__sanitizer_cov_trace_pc_guard_init+0x8e>
  207316: 8b 05 04 da 00 00            	movl	55812(%rip), %eax       # 0x214d20 <__sanitizer_cov_trace_pc_guard_init.offset>
  20731c: 48 8d 0d 01 dc 20 00         	leaq	2153473(%rip), %rcx     # 0x414f24 <__afl_final_loc>
  207323: eb 10                        	jmp	0x207335 <__sanitizer_cov_trace_pc_guard_init+0x75>
  207325: 66 66 2e 0f 1f 84 00 00 00 00 00     	nopw	%cs:(%rax,%rax)
  207330: 4c 39 f3                     	cmpq	%r14, %rbx
  207333: 73 13                        	jae	0x207348 <__sanitizer_cov_trace_pc_guard_init+0x88>
  207335: 89 03                        	movl	%eax, (%rbx)
  207337: 48 83 c3 04                  	addq	$4, %rbx
  20733b: ff c0                        	incl	%eax
  20733d: 3b 01                        	cmpl	(%rcx), %eax
  20733f: 72 ef                        	jb	0x207330 <__sanitizer_cov_trace_pc_guard_init+0x70>
  207341: b8 04 00 00 00               	movl	$4, %eax
  207346: eb e8                        	jmp	0x207330 <__sanitizer_cov_trace_pc_guard_init+0x70>
  207348: 89 05 d2 d9 00 00            	movl	%eax, 55762(%rip)       # 0x214d20 <__sanitizer_cov_trace_pc_guard_init.offset>
  20734e: 48 8d 3d eb b7 ff ff         	leaq	-18453(%rip), %rdi      # 0x202b40 <_IO_stdin_used+0xde0>
  207355: e8 16 b4 00 00               	callq	0x212770 <getenv@plt>
  20735a: 48 85 c0                     	testq	%rax, %rax
  20735d: 74 34                        	je	0x207393 <__sanitizer_cov_trace_pc_guard_init+0xd3>
  20735f: 48 89 c7                     	movq	%rax, %rdi
  207362: 31 f6                        	xorl	%esi, %esi
  207364: ba 0a 00 00 00               	movl	$10, %edx
  207369: e8 72 b4 00 00               	callq	0x2127e0 <strtol@plt>
  20736e: 89 c1                        	movl	%eax, %ecx
  207370: 83 c1 9b                     	addl	$-101, %ecx
  207373: 83 f9 9b                     	cmpl	$-101, %ecx
  207376: 77 20                        	ja	0x207398 <__sanitizer_cov_trace_pc_guard_init+0xd8>
  207378: 48 8b 05 41 c9 00 00         	movq	51521(%rip), %rax       # 0x213cc0 <write+0x213cc0>
  20737f: 48 8b 08                     	movq	(%rax), %rcx
  207382: 48 8d 3d ad ac ff ff         	leaq	-21331(%rip), %rdi      # 0x202036 <_IO_stdin_used+0x2d6>
  207389: be 33 00 00 00               	movl	$51, %esi
  20738e: e9 08 02 00 00               	jmp	0x20759b <__sanitizer_cov_trace_pc_guard_init+0x2db>
  207393: b8 64 00 00 00               	movl	$100, %eax
  207398: 4c 8d 3d 85 db 20 00         	leaq	2153349(%rip), %r15     # 0x414f24 <__afl_final_loc>
  20739f: 41 8b 0f                     	movl	(%r15), %ecx
  2073a2: ff c1                        	incl	%ecx
  2073a4: 41 89 0f                     	movl	%ecx, (%r15)
  2073a7: 89 0b                        	movl	%ecx, (%rbx)
  2073a9: 48 83 c3 04                  	addq	$4, %rbx
  2073ad: 4c 39 f3                     	cmpq	%r14, %rbx
  2073b0: 73 60                        	jae	0x207412 <__sanitizer_cov_trace_pc_guard_init+0x152>
  2073b2: 41 89 c4                     	movl	%eax, %r12d
  2073b5: 49 bd 0b d7 a3 70 3d 0a d7 a3	movabsq	$-6640827866535438581, %r13 # imm = 0xA3D70A3D70A3D70B
  2073bf: eb 1a                        	jmp	0x2073db <__sanitizer_cov_trace_pc_guard_init+0x11b>
  2073c1: 66 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%rax,%rax)
  2073d0: 89 03                        	movl	%eax, (%rbx)
  2073d2: 48 83 c3 04                  	addq	$4, %rbx
  2073d6: 4c 39 f3                     	cmpq	%r14, %rbx
  2073d9: 73 37                        	jae	0x207412 <__sanitizer_cov_trace_pc_guard_init+0x152>
  2073db: e8 90 b6 00 00               	callq	0x212a70 <random@plt>
  2073e0: 48 89 c1                     	movq	%rax, %rcx
  2073e3: 49 f7 ed                     	imulq	%r13
  2073e6: 48 01 ca                     	addq	%rcx, %rdx
  2073e9: 48 89 d0                     	movq	%rdx, %rax
  2073ec: 48 c1 e8 3f                  	shrq	$63, %rax
  2073f0: 48 c1 fa 06                  	sarq	$6, %rdx
  2073f4: 48 01 c2                     	addq	%rax, %rdx
  2073f7: 48 6b c2 64                  	imulq	$100, %rdx, %rax
  2073fb: 48 29 c1                     	subq	%rax, %rcx
  2073fe: b8 04 00 00 00               	movl	$4, %eax
  207403: 4c 39 e1                     	cmpq	%r12, %rcx
  207406: 7d c8                        	jge	0x2073d0 <__sanitizer_cov_trace_pc_guard_init+0x110>
  207408: 41 8b 07                     	movl	(%r15), %eax
  20740b: ff c0                        	incl	%eax
  20740d: 41 89 07                     	movl	%eax, (%r15)
  207410: eb be                        	jmp	0x2073d0 <__sanitizer_cov_trace_pc_guard_init+0x110>
  207412: 80 3d ff da 20 00 01         	cmpb	$1, 2153215(%rip)       # 0x414f18 <__afl_debug>
  207419: 0f 84 13 01 00 00            	je	0x207532 <__sanitizer_cov_trace_pc_guard_init+0x272>
  20741f: 48 8d 1d 12 db 20 00         	leaq	2153234(%rip), %rbx     # 0x414f38 <__afl_already_initialized_shm>
  207426: 83 3b 00                     	cmpl	$0, (%rbx)
  207429: 0f 84 b7 fe ff ff            	je	0x2072e6 <__sanitizer_cov_trace_pc_guard_init+0x26>
  20742f: 41 8b 17                     	movl	(%r15), %edx
  207432: 4c 8d 35 cf d8 00 00         	leaq	55503(%rip), %r14       # 0x214d08 <__afl_map_size>
  207439: 41 2b 16                     	subl	(%r14), %edx
  20743c: 0f 86 a4 fe ff ff            	jbe	0x2072e6 <__sanitizer_cov_trace_pc_guard_init+0x26>
  207442: 80 3d cf da 20 00 01         	cmpb	$1, 2153167(%rip)       # 0x414f18 <__afl_debug>
  207449: 0f 84 13 01 00 00            	je	0x207562 <__sanitizer_cov_trace_pc_guard_init+0x2a2>
  20744f: 48 8d 3d cc ab ff ff         	leaq	-21556(%rip), %rdi      # 0x202022 <_IO_stdin_used+0x2c2>
  207456: e8 15 b3 00 00               	callq	0x212770 <getenv@plt>
  20745b: 4c 8d 3d 96 d8 00 00         	leaq	55446(%rip), %r15       # 0x214cf8 <__afl_area_ptr>
  207462: 49 8b 3f                     	movq	(%r15), %rdi
  207465: 48 85 c0                     	testq	%rax, %rax
  207468: 74 47                        	je	0x2074b1 <__sanitizer_cov_trace_pc_guard_init+0x1f1>
  20746a: e8 11 b6 00 00               	callq	0x212a80 <shmdt@plt>
  20746f: eb 6e                        	jmp	0x2074df <__sanitizer_cov_trace_pc_guard_init+0x21f>
  207471: 48 8b 05 48 c8 00 00         	movq	51272(%rip), %rax       # 0x213cc0 <write+0x213cc0>
  207478: 48 8b 38                     	movq	(%rax), %rdi
  20747b: 4d 89 f0                     	movq	%r14, %r8
  20747e: 49 29 d8                     	subq	%rbx, %r8
  207481: 49 c1 f8 02                  	sarq	$2, %r8
  207485: 48 8d 05 a8 da 20 00         	leaq	2153128(%rip), %rax     # 0x414f34 <__afl_already_initialized_forkserver>
  20748c: 44 8b 08                     	movl	(%rax), %r9d
  20748f: 48 8d 35 d0 ae ff ff         	leaq	-20784(%rip), %rsi      # 0x202366 <_IO_stdin_used+0x606>
  207496: 48 89 da                     	movq	%rbx, %rdx
  207499: 4c 89 f1                     	movq	%r14, %rcx
  20749c: 31 c0                        	xorl	%eax, %eax
  20749e: e8 0d b4 00 00               	callq	0x2128b0 <fprintf@plt>
  2074a3: 4c 39 f3                     	cmpq	%r14, %rbx
  2074a6: 0f 85 35 fe ff ff            	jne	0x2072e1 <__sanitizer_cov_trace_pc_guard_init+0x21>
  2074ac: e9 35 fe ff ff               	jmp	0x2072e6 <__sanitizer_cov_trace_pc_guard_init+0x26>
  2074b1: 48 85 ff                     	testq	%rdi, %rdi
  2074b4: 0f 95 c0                     	setne	%al
  2074b7: 48 8d 0d 42 da 00 00         	leaq	55874(%rip), %rcx       # 0x214f00 <__afl_area_initial>
  2074be: 48 39 cf                     	cmpq	%rcx, %rdi
  2074c1: 0f 95 c1                     	setne	%cl
  2074c4: 84 c8                        	testb	%cl, %al
  2074c6: 75 17                        	jne	0x2074df <__sanitizer_cov_trace_pc_guard_init+0x21f>
  2074c8: 48 8d 05 59 da 20 00         	leaq	2153049(%rip), %rax     # 0x414f28 <__afl_map_addr>
  2074cf: 48 8b 38                     	movq	(%rax), %rdi
  2074d2: 48 85 ff                     	testq	%rdi, %rdi
  2074d5: 74 08                        	je	0x2074df <__sanitizer_cov_trace_pc_guard_init+0x21f>
  2074d7: 41 8b 36                     	movl	(%r14), %esi
  2074da: e8 41 b5 00 00               	callq	0x212a20 <munmap@plt>
  2074df: 48 8b 05 2a d8 00 00         	movq	55338(%rip), %rax       # 0x214d10 <__afl_area_ptr_dummy>
  2074e6: 49 89 07                     	movq	%rax, (%r15)
  2074e9: 48 8d 3d 65 b7 ff ff         	leaq	-18587(%rip), %rdi      # 0x202c55 <_IO_stdin_used+0xef5>
  2074f0: e8 7b b2 00 00               	callq	0x212770 <getenv@plt>
  2074f5: 48 85 c0                     	testq	%rax, %rax
  2074f8: 74 24                        	je	0x20751e <__sanitizer_cov_trace_pc_guard_init+0x25e>
  2074fa: 4c 8d 35 3f da 20 00         	leaq	2153023(%rip), %r14     # 0x414f40 <__afl_cmp_map>
  207501: 49 8b 3e                     	movq	(%r14), %rdi
  207504: e8 77 b5 00 00               	callq	0x212a80 <shmdt@plt>
  207509: 49 c7 06 00 00 00 00         	movq	$0, (%r14)
  207510: 48 8d 05 39 da 20 00         	leaq	2153017(%rip), %rax     # 0x414f50 <__afl_cmp_map_backup>
  207517: 48 c7 00 00 00 00 00         	movq	$0, (%rax)
  20751e: c7 03 00 00 00 00            	movl	$0, (%rbx)
  207524: 5b                           	popq	%rbx
  207525: 41 5c                        	popq	%r12
  207527: 41 5d                        	popq	%r13
  207529: 41 5e                        	popq	%r14
  20752b: 41 5f                        	popq	%r15
  20752d: e9 4e f5 ff ff               	jmp	0x206a80 <__afl_map_shm>
  207532: 48 8b 05 87 c7 00 00         	movq	51079(%rip), %rax       # 0x213cc0 <write+0x213cc0>
  207539: 48 8b 38                     	movq	(%rax), %rdi
  20753c: 41 8b 17                     	movl	(%r15), %edx
  20753f: 48 8d 35 b4 b7 ff ff         	leaq	-18508(%rip), %rsi      # 0x202cfa <_IO_stdin_used+0xf9a>
  207546: 31 c0                        	xorl	%eax, %eax
  207548: e8 63 b3 00 00               	callq	0x2128b0 <fprintf@plt>
  20754d: 48 8d 1d e4 d9 20 00         	leaq	2152932(%rip), %rbx     # 0x414f38 <__afl_already_initialized_shm>
  207554: 83 3b 00                     	cmpl	$0, (%rbx)
  207557: 0f 85 d2 fe ff ff            	jne	0x20742f <__sanitizer_cov_trace_pc_guard_init+0x16f>
  20755d: e9 84 fd ff ff               	jmp	0x2072e6 <__sanitizer_cov_trace_pc_guard_init+0x26>
  207562: 48 8b 05 57 c7 00 00         	movq	51031(%rip), %rax       # 0x213cc0 <write+0x213cc0>
  207569: 48 8b 38                     	movq	(%rax), %rdi
  20756c: 48 8d 35 e5 ac ff ff         	leaq	-21275(%rip), %rsi      # 0x202258 <_IO_stdin_used+0x4f8>
  207573: 31 c0                        	xorl	%eax, %eax
  207575: e8 36 b3 00 00               	callq	0x2128b0 <fprintf@plt>
  20757a: 83 3b 00                     	cmpl	$0, (%rbx)
  20757d: 0f 85 cc fe ff ff            	jne	0x20744f <__sanitizer_cov_trace_pc_guard_init+0x18f>
  207583: eb 9f                        	jmp	0x207524 <__sanitizer_cov_trace_pc_guard_init+0x264>
  207585: 48 8b 05 34 c7 00 00         	movq	50996(%rip), %rax       # 0x213cc0 <write+0x213cc0>
  20758c: 48 8b 08                     	movq	(%rax), %rcx
  20758f: 48 8d 3d b4 a8 ff ff         	leaq	-22348(%rip), %rdi      # 0x201e4a <_IO_stdin_used+0xea>
  207596: be ed 00 00 00               	movl	$237, %esi
  20759b: ba 01 00 00 00               	movl	$1, %edx
  2075a0: e8 2b b3 00 00               	callq	0x2128d0 <fwrite@plt>
  2075a5: e8 f6 b1 00 00               	callq	0x2127a0 <abort@plt>
  2075aa: 66 0f 1f 44 00 00            	nopw	(%rax,%rax)

00000000002075b0 <__cmplog_ins_hook1>:
  2075b0: 53                           	pushq	%rbx
  2075b1: 40 38 f7                     	cmpb	%sil, %dil
  2075b4: 0f 84 27 01 00 00            	je	0x2076e1 <__cmplog_ins_hook1+0x131>
  2075ba: 4c 8d 05 7f d9 20 00         	leaq	2152831(%rip), %r8      # 0x414f40 <__afl_cmp_map>
  2075c1: 4d 8b 08                     	movq	(%r8), %r9
  2075c4: 4d 85 c9                     	testq	%r9, %r9
  2075c7: 0f 84 14 01 00 00            	je	0x2076e1 <__cmplog_ins_hook1+0x131>
  2075cd: 49 ba 00 00 00 00 00 00 20 00	movabsq	$9007199254740992, %r10 # imm = 0x20000000000000
  2075d7: 48 8b 44 24 08               	movq	8(%rsp), %rax
  2075dc: 48 c1 c0 20                  	rolq	$32, %rax
  2075e0: 48 b9 a2 d5 ec c5 74 b1 3a c7	movabsq	$-4090762196417718878, %rcx # imm = 0xC73AB174C5ECD5A2
  2075ea: 48 31 c1                     	xorq	%rax, %rcx
  2075ed: 49 89 cb                     	movq	%rcx, %r11
  2075f0: 49 c1 c3 18                  	rolq	$24, %r11
  2075f4: 49 31 cb                     	xorq	%rcx, %r11
  2075f7: 48 c1 c1 31                  	rolq	$49, %rcx
  2075fb: 49 31 cb                     	xorq	%rcx, %r11
  2075fe: 48 b9 25 df 98 1e 65 1c b2 9f	movabsq	$-6939452855193903323, %rcx # imm = 0x9FB21C651E98DF25
  207608: 4c 0f af d9                  	imulq	%rcx, %r11
  20760c: 4c 89 d8                     	movq	%r11, %rax
  20760f: 48 c1 e8 23                  	shrq	$35, %rax
  207613: 48 83 c0 08                  	addq	$8, %rax
  207617: 4c 31 d8                     	xorq	%r11, %rax
  20761a: 48 0f af c1                  	imulq	%rcx, %rax
  20761e: 48 89 c1                     	movq	%rax, %rcx
  207621: 48 c1 e9 1c                  	shrq	$28, %rcx
  207625: 31 c1                        	xorl	%eax, %ecx
  207627: 44 0f b7 d9                  	movzwl	%cx, %r11d
  20762b: 4b 8b 1c d9                  	movq	(%r9,%r11,8), %rbx
  20762f: 48 b9 00 00 00 00 00 00 60 00	movabsq	$27021597764222976, %rcx # imm = 0x60000000000000
  207639: 48 21 d9                     	andq	%rbx, %rcx
  20763c: 4c 39 d1                     	cmpq	%r10, %rcx
  20763f: 75 1e                        	jne	0x20765f <__cmplog_ins_hook1+0xaf>
  207641: 8d 4b 01                     	leal	1(%rbx), %ecx
  207644: 81 e1 ff ff ff 00            	andl	$16777215, %ecx         # imm = 0xFFFFFF
  20764a: 48 89 d8                     	movq	%rbx, %rax
  20764d: 48 25 00 00 00 ff            	andq	$-16777216, %rax        # imm = 0xFF000000
  207653: 48 09 c8                     	orq	%rcx, %rax
  207656: 4b 89 04 d9                  	movq	%rax, (%r9,%r11,8)
  20765a: 83 e3 1f                     	andl	$31, %ebx
  20765d: eb 3d                        	jmp	0x20769c <__cmplog_ins_hook1+0xec>
  20765f: 48 b9 ff ff ff ff ff ff 9f ff	movabsq	$-27021597764222977, %rcx # imm = 0xFF9FFFFFFFFFFFFF
  207669: 48 21 cb                     	andq	%rcx, %rbx
  20766c: 4c 09 d3                     	orq	%r10, %rbx
  20766f: 4b 89 1c d9                  	movq	%rbx, (%r9,%r11,8)
  207673: 49 8b 00                     	movq	(%r8), %rax
  207676: 48 c7 c1 00 00 00 ff         	movq	$-16777216, %rcx        # imm = 0xFF000000
  20767d: 4a 23 0c d8                  	andq	(%rax,%r11,8), %rcx
  207681: 48 83 c9 01                  	orq	$1, %rcx
  207685: 4a 89 0c d8                  	movq	%rcx, (%rax,%r11,8)
  207689: 49 8b 00                     	movq	(%r8), %rax
  20768c: 48 b9 ff ff ff ff ff ff e0 ff	movabsq	$-8725724278030337, %rcx # imm = 0xFFE0FFFFFFFFFFFF
  207696: 4a 21 0c d8                  	andq	%rcx, (%rax,%r11,8)
  20769a: 31 db                        	xorl	%ebx, %ebx
  20769c: 49 8b 00                     	movq	(%r8), %rax
  20769f: 80 e2 0f                     	andb	$15, %dl
  2076a2: 0f b6 ca                     	movzbl	%dl, %ecx
  2076a5: 48 c1 e1 37                  	shlq	$55, %rcx
  2076a9: 48 ba ff ff ff ff ff ff 7f f8	movabsq	$-540431955284459521, %rdx # imm = 0xF87FFFFFFFFFFFFF
  2076b3: 4a 23 14 d8                  	andq	(%rax,%r11,8), %rdx
  2076b7: 48 09 ca                     	orq	%rcx, %rdx
  2076ba: 4a 89 14 d8                  	movq	%rdx, (%rax,%r11,8)
  2076be: 40 0f b6 c7                  	movzbl	%dil, %eax
  2076c2: 49 c1 e3 0a                  	shlq	$10, %r11
  2076c6: 4d 03 18                     	addq	(%r8), %r11
  2076c9: 48 c1 e3 05                  	shlq	$5, %rbx
  2076cd: 4a 89 84 1b 00 00 08 00      	movq	%rax, 524288(%rbx,%r11)
  2076d5: 40 0f b6 c6                  	movzbl	%sil, %eax
  2076d9: 4a 89 84 1b 08 00 08 00      	movq	%rax, 524296(%rbx,%r11)
  2076e1: 5b                           	popq	%rbx
  2076e2: c3                           	retq
  2076e3: 66 66 66 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

00000000002076f0 <__cmplog_ins_hook2>:
  2076f0: 66 39 f7                     	cmpw	%si, %di
  2076f3: 0f 84 5e 01 00 00            	je	0x207857 <__cmplog_ins_hook2+0x167>
  2076f9: 4c 8d 05 40 d8 20 00         	leaq	2152512(%rip), %r8      # 0x414f40 <__afl_cmp_map>
  207700: 4d 8b 08                     	movq	(%r8), %r9
  207703: 4d 85 c9                     	testq	%r9, %r9
  207706: 0f 84 4b 01 00 00            	je	0x207857 <__cmplog_ins_hook2+0x167>
  20770c: 49 ba 00 00 00 00 00 00 20 00	movabsq	$9007199254740992, %r10 # imm = 0x20000000000000
  207716: 48 8b 04 24                  	movq	(%rsp), %rax
  20771a: 48 c1 c0 20                  	rolq	$32, %rax
  20771e: 48 b9 a2 d5 ec c5 74 b1 3a c7	movabsq	$-4090762196417718878, %rcx # imm = 0xC73AB174C5ECD5A2
  207728: 48 31 c1                     	xorq	%rax, %rcx
  20772b: 49 89 cb                     	movq	%rcx, %r11
  20772e: 49 c1 c3 18                  	rolq	$24, %r11
  207732: 49 31 cb                     	xorq	%rcx, %r11
  207735: 48 c1 c1 31                  	rolq	$49, %rcx
  207739: 49 31 cb                     	xorq	%rcx, %r11
  20773c: 48 b9 25 df 98 1e 65 1c b2 9f	movabsq	$-6939452855193903323, %rcx # imm = 0x9FB21C651E98DF25
  207746: 4c 0f af d9                  	imulq	%rcx, %r11
  20774a: 4c 89 d8                     	movq	%r11, %rax
  20774d: 48 c1 e8 23                  	shrq	$35, %rax
  207751: 48 83 c0 08                  	addq	$8, %rax
  207755: 4c 31 d8                     	xorq	%r11, %rax
  207758: 48 0f af c1                  	imulq	%rcx, %rax
  20775c: 48 89 c1                     	movq	%rax, %rcx
  20775f: 48 c1 e9 1c                  	shrq	$28, %rcx
  207763: 31 c1                        	xorl	%eax, %ecx
  207765: 44 0f b7 d9                  	movzwl	%cx, %r11d
  207769: 4b 8b 04 d9                  	movq	(%r9,%r11,8), %rax
  20776d: 48 b9 00 00 00 00 00 00 60 00	movabsq	$27021597764222976, %rcx # imm = 0x60000000000000
  207777: 48 21 c1                     	andq	%rax, %rcx
  20777a: 4c 39 d1                     	cmpq	%r10, %rcx
  20777d: 75 3c                        	jne	0x2077bb <__cmplog_ins_hook2+0xcb>
  20777f: 41 89 c2                     	movl	%eax, %r10d
  207782: 41 81 e2 ff ff ff 00         	andl	$16777215, %r10d        # imm = 0xFFFFFF
  207789: 8d 48 01                     	leal	1(%rax), %ecx
  20778c: 81 e1 ff ff ff 00            	andl	$16777215, %ecx         # imm = 0xFFFFFF
  207792: 48 25 00 00 00 ff            	andq	$-16777216, %rax        # imm = 0xFF000000
  207798: 48 09 c8                     	orq	%rcx, %rax
  20779b: 4b 89 04 d9                  	movq	%rax, (%r9,%r11,8)
  20779f: 4d 8b 08                     	movq	(%r8), %r9
  2077a2: 4b 8b 04 d9                  	movq	(%r9,%r11,8), %rax
  2077a6: 48 b9 00 00 00 00 00 00 1f 00	movabsq	$8725724278030336, %rcx # imm = 0x1F000000000000
  2077b0: 48 85 c8                     	testq	%rcx, %rax
  2077b3: 75 5b                        	jne	0x207810 <__cmplog_ins_hook2+0x120>
  2077b5: 4f 8d 0c d9                  	leaq	(%r9,%r11,8), %r9
  2077b9: eb 38                        	jmp	0x2077f3 <__cmplog_ins_hook2+0x103>
  2077bb: 48 b9 ff ff ff ff ff ff 9f ff	movabsq	$-27021597764222977, %rcx # imm = 0xFF9FFFFFFFFFFFFF
  2077c5: 48 21 c8                     	andq	%rcx, %rax
  2077c8: 4c 09 d0                     	orq	%r10, %rax
  2077cb: 4b 89 04 d9                  	movq	%rax, (%r9,%r11,8)
  2077cf: 49 8b 00                     	movq	(%r8), %rax
  2077d2: 48 c7 c1 00 00 00 ff         	movq	$-16777216, %rcx        # imm = 0xFF000000
  2077d9: 4a 23 0c d8                  	andq	(%rax,%r11,8), %rcx
  2077dd: 48 83 c9 01                  	orq	$1, %rcx
  2077e1: 4a 89 0c d8                  	movq	%rcx, (%rax,%r11,8)
  2077e5: 49 8b 00                     	movq	(%r8), %rax
  2077e8: 4e 8d 0c d8                  	leaq	(%rax,%r11,8), %r9
  2077ec: 4a 8b 04 d8                  	movq	(%rax,%r11,8), %rax
  2077f0: 45 31 d2                     	xorl	%r10d, %r10d
  2077f3: 48 b9 ff ff ff ff ff ff e0 ff	movabsq	$-8725724278030337, %rcx # imm = 0xFFE0FFFFFFFFFFFF
  2077fd: 48 21 c1                     	andq	%rax, %rcx
  207800: 48 b8 00 00 00 00 00 00 01 00	movabsq	$281474976710656, %rax  # imm = 0x1000000000000
  20780a: 48 09 c8                     	orq	%rcx, %rax
  20780d: 49 89 01                     	movq	%rax, (%r9)
  207810: 49 8b 00                     	movq	(%r8), %rax
  207813: 80 e2 0f                     	andb	$15, %dl
  207816: 0f b6 ca                     	movzbl	%dl, %ecx
  207819: 48 ba ff ff ff ff ff ff 7f f8	movabsq	$-540431955284459521, %rdx # imm = 0xF87FFFFFFFFFFFFF
  207823: 4a 23 14 d8                  	andq	(%rax,%r11,8), %rdx
  207827: 48 c1 e1 37                  	shlq	$55, %rcx
  20782b: 48 09 ca                     	orq	%rcx, %rdx
  20782e: 4a 89 14 d8                  	movq	%rdx, (%rax,%r11,8)
  207832: 41 83 e2 1f                  	andl	$31, %r10d
  207836: 0f b7 c7                     	movzwl	%di, %eax
  207839: 49 c1 e3 0a                  	shlq	$10, %r11
  20783d: 4d 03 18                     	addq	(%r8), %r11
  207840: 49 c1 e2 05                  	shlq	$5, %r10
  207844: 4b 89 84 1a 00 00 08 00      	movq	%rax, 524288(%r10,%r11)
  20784c: 0f b7 c6                     	movzwl	%si, %eax
  20784f: 4b 89 84 1a 08 00 08 00      	movq	%rax, 524296(%r10,%r11)
  207857: c3                           	retq
  207858: 0f 1f 84 00 00 00 00 00      	nopl	(%rax,%rax)

0000000000207860 <__cmplog_ins_hook4>:
  207860: 53                           	pushq	%rbx
  207861: 39 f7                        	cmpl	%esi, %edi
  207863: 0f 84 5f 01 00 00            	je	0x2079c8 <__cmplog_ins_hook4+0x168>
  207869: 4c 8d 0d d0 d6 20 00         	leaq	2152144(%rip), %r9      # 0x414f40 <__afl_cmp_map>
  207870: 4d 8b 11                     	movq	(%r9), %r10
  207873: 4d 85 d2                     	testq	%r10, %r10
  207876: 0f 84 4c 01 00 00            	je	0x2079c8 <__cmplog_ins_hook4+0x168>
  20787c: 49 bb 00 00 00 00 00 00 20 00	movabsq	$9007199254740992, %r11 # imm = 0x20000000000000
  207886: 49 b8 00 00 00 00 00 00 03 00	movabsq	$844424930131968, %r8   # imm = 0x3000000000000
  207890: 48 8b 44 24 08               	movq	8(%rsp), %rax
  207895: 48 c1 c0 20                  	rolq	$32, %rax
  207899: 48 b9 a2 d5 ec c5 74 b1 3a c7	movabsq	$-4090762196417718878, %rcx # imm = 0xC73AB174C5ECD5A2
  2078a3: 48 31 c1                     	xorq	%rax, %rcx
  2078a6: 48 89 c8                     	movq	%rcx, %rax
  2078a9: 48 c1 c0 18                  	rolq	$24, %rax
  2078ad: 48 31 c8                     	xorq	%rcx, %rax
  2078b0: 48 c1 c1 31                  	rolq	$49, %rcx
  2078b4: 48 31 c8                     	xorq	%rcx, %rax
  2078b7: 48 b9 25 df 98 1e 65 1c b2 9f	movabsq	$-6939452855193903323, %rcx # imm = 0x9FB21C651E98DF25
  2078c1: 48 0f af c1                  	imulq	%rcx, %rax
  2078c5: 48 89 c3                     	movq	%rax, %rbx
  2078c8: 48 c1 eb 23                  	shrq	$35, %rbx
  2078cc: 48 83 c3 08                  	addq	$8, %rbx
  2078d0: 48 31 c3                     	xorq	%rax, %rbx
  2078d3: 48 0f af d9                  	imulq	%rcx, %rbx
  2078d7: 48 89 d8                     	movq	%rbx, %rax
  2078da: 48 c1 e8 1c                  	shrq	$28, %rax
  2078de: 31 d8                        	xorl	%ebx, %eax
  2078e0: 0f b7 c8                     	movzwl	%ax, %ecx
  2078e3: 49 8b 04 ca                  	movq	(%r10,%rcx,8), %rax
  2078e7: 48 bb 00 00 00 00 00 00 60 00	movabsq	$27021597764222976, %rbx # imm = 0x60000000000000
  2078f1: 48 21 c3                     	andq	%rax, %rbx
  2078f4: 4c 39 db                     	cmpq	%r11, %rbx
  2078f7: 75 3f                        	jne	0x207938 <__cmplog_ins_hook4+0xd8>
  2078f9: 41 89 c3                     	movl	%eax, %r11d
  2078fc: 41 81 e3 ff ff ff 00         	andl	$16777215, %r11d        # imm = 0xFFFFFF
  207903: 8d 58 01                     	leal	1(%rax), %ebx
  207906: 81 e3 ff ff ff 00            	andl	$16777215, %ebx         # imm = 0xFFFFFF
  20790c: 48 25 00 00 00 ff            	andq	$-16777216, %rax        # imm = 0xFF000000
  207912: 48 09 d8                     	orq	%rbx, %rax
  207915: 49 89 04 ca                  	movq	%rax, (%r10,%rcx,8)
  207919: 4d 8b 11                     	movq	(%r9), %r10
  20791c: 49 8b 04 ca                  	movq	(%r10,%rcx,8), %rax
  207920: 48 bb 00 00 00 00 00 00 1f 00	movabsq	$8725724278030336, %rbx # imm = 0x1F000000000000
  20792a: 48 21 c3                     	andq	%rax, %rbx
  20792d: 4c 39 c3                     	cmpq	%r8, %rbx
  207930: 73 51                        	jae	0x207983 <__cmplog_ins_hook4+0x123>
  207932: 4d 8d 14 ca                  	leaq	(%r10,%rcx,8), %r10
  207936: eb 38                        	jmp	0x207970 <__cmplog_ins_hook4+0x110>
  207938: 48 bb ff ff ff ff ff ff 9f ff	movabsq	$-27021597764222977, %rbx # imm = 0xFF9FFFFFFFFFFFFF
  207942: 48 21 d8                     	andq	%rbx, %rax
  207945: 4c 09 d8                     	orq	%r11, %rax
  207948: 49 89 04 ca                  	movq	%rax, (%r10,%rcx,8)
  20794c: 49 8b 01                     	movq	(%r9), %rax
  20794f: 48 c7 c3 00 00 00 ff         	movq	$-16777216, %rbx        # imm = 0xFF000000
  207956: 48 23 1c c8                  	andq	(%rax,%rcx,8), %rbx
  20795a: 48 83 cb 01                  	orq	$1, %rbx
  20795e: 48 89 1c c8                  	movq	%rbx, (%rax,%rcx,8)
  207962: 49 8b 01                     	movq	(%r9), %rax
  207965: 4c 8d 14 c8                  	leaq	(%rax,%rcx,8), %r10
  207969: 48 8b 04 c8                  	movq	(%rax,%rcx,8), %rax
  20796d: 45 31 db                     	xorl	%r11d, %r11d
  207970: 48 bb ff ff ff ff ff ff e0 ff	movabsq	$-8725724278030337, %rbx # imm = 0xFFE0FFFFFFFFFFFF
  20797a: 48 21 c3                     	andq	%rax, %rbx
  20797d: 4c 09 c3                     	orq	%r8, %rbx
  207980: 49 89 1a                     	movq	%rbx, (%r10)
  207983: 49 8b 01                     	movq	(%r9), %rax
  207986: 80 e2 0f                     	andb	$15, %dl
  207989: 0f b6 d2                     	movzbl	%dl, %edx
  20798c: 48 bb ff ff ff ff ff ff 7f f8	movabsq	$-540431955284459521, %rbx # imm = 0xF87FFFFFFFFFFFFF
  207996: 48 23 1c c8                  	andq	(%rax,%rcx,8), %rbx
  20799a: 48 c1 e2 37                  	shlq	$55, %rdx
  20799e: 48 09 d3                     	orq	%rdx, %rbx
  2079a1: 48 89 1c c8                  	movq	%rbx, (%rax,%rcx,8)
  2079a5: 41 83 e3 1f                  	andl	$31, %r11d
  2079a9: 89 f8                        	movl	%edi, %eax
  2079ab: 48 c1 e1 0a                  	shlq	$10, %rcx
  2079af: 49 03 09                     	addq	(%r9), %rcx
  2079b2: 49 c1 e3 05                  	shlq	$5, %r11
  2079b6: 49 89 84 0b 00 00 08 00      	movq	%rax, 524288(%r11,%rcx)
  2079be: 89 f0                        	movl	%esi, %eax
  2079c0: 49 89 84 0b 08 00 08 00      	movq	%rax, 524296(%r11,%rcx)
  2079c8: 5b                           	popq	%rbx
  2079c9: c3                           	retq
  2079ca: 66 0f 1f 44 00 00            	nopw	(%rax,%rax)

00000000002079d0 <__cmplog_ins_hook8>:
  2079d0: 53                           	pushq	%rbx
  2079d1: 48 39 f7                     	cmpq	%rsi, %rdi
  2079d4: 0f 84 5b 01 00 00            	je	0x207b35 <__cmplog_ins_hook8+0x165>
  2079da: 4c 8d 0d 5f d5 20 00         	leaq	2151775(%rip), %r9      # 0x414f40 <__afl_cmp_map>
  2079e1: 4d 8b 11                     	movq	(%r9), %r10
  2079e4: 4d 85 d2                     	testq	%r10, %r10
  2079e7: 0f 84 48 01 00 00            	je	0x207b35 <__cmplog_ins_hook8+0x165>
  2079ed: 49 bb 00 00 00 00 00 00 20 00	movabsq	$9007199254740992, %r11 # imm = 0x20000000000000
  2079f7: 49 b8 00 00 00 00 00 00 07 00	movabsq	$1970324836974592, %r8  # imm = 0x7000000000000
  207a01: 48 8b 44 24 08               	movq	8(%rsp), %rax
  207a06: 48 c1 c0 20                  	rolq	$32, %rax
  207a0a: 48 b9 a2 d5 ec c5 74 b1 3a c7	movabsq	$-4090762196417718878, %rcx # imm = 0xC73AB174C5ECD5A2
  207a14: 48 31 c1                     	xorq	%rax, %rcx
  207a17: 48 89 c8                     	movq	%rcx, %rax
  207a1a: 48 c1 c0 18                  	rolq	$24, %rax
  207a1e: 48 31 c8                     	xorq	%rcx, %rax
  207a21: 48 c1 c1 31                  	rolq	$49, %rcx
  207a25: 48 31 c8                     	xorq	%rcx, %rax
  207a28: 48 b9 25 df 98 1e 65 1c b2 9f	movabsq	$-6939452855193903323, %rcx # imm = 0x9FB21C651E98DF25
  207a32: 48 0f af c1                  	imulq	%rcx, %rax
  207a36: 48 89 c3                     	movq	%rax, %rbx
  207a39: 48 c1 eb 23                  	shrq	$35, %rbx
  207a3d: 48 83 c3 08                  	addq	$8, %rbx
  207a41: 48 31 c3                     	xorq	%rax, %rbx
  207a44: 48 0f af d9                  	imulq	%rcx, %rbx
  207a48: 48 89 d8                     	movq	%rbx, %rax
  207a4b: 48 c1 e8 1c                  	shrq	$28, %rax
  207a4f: 31 d8                        	xorl	%ebx, %eax
  207a51: 0f b7 c8                     	movzwl	%ax, %ecx
  207a54: 49 8b 04 ca                  	movq	(%r10,%rcx,8), %rax
  207a58: 48 bb 00 00 00 00 00 00 60 00	movabsq	$27021597764222976, %rbx # imm = 0x60000000000000
  207a62: 48 21 c3                     	andq	%rax, %rbx
  207a65: 4c 39 db                     	cmpq	%r11, %rbx
  207a68: 75 3f                        	jne	0x207aa9 <__cmplog_ins_hook8+0xd9>
  207a6a: 41 89 c3                     	movl	%eax, %r11d
  207a6d: 41 81 e3 ff ff ff 00         	andl	$16777215, %r11d        # imm = 0xFFFFFF
  207a74: 8d 58 01                     	leal	1(%rax), %ebx
  207a77: 81 e3 ff ff ff 00            	andl	$16777215, %ebx         # imm = 0xFFFFFF
  207a7d: 48 25 00 00 00 ff            	andq	$-16777216, %rax        # imm = 0xFF000000
  207a83: 48 09 d8                     	orq	%rbx, %rax
  207a86: 49 89 04 ca                  	movq	%rax, (%r10,%rcx,8)
  207a8a: 4d 8b 11                     	movq	(%r9), %r10
  207a8d: 49 8b 04 ca                  	movq	(%r10,%rcx,8), %rax
  207a91: 48 bb 00 00 00 00 00 00 1f 00	movabsq	$8725724278030336, %rbx # imm = 0x1F000000000000
  207a9b: 48 21 c3                     	andq	%rax, %rbx
  207a9e: 4c 39 c3                     	cmpq	%r8, %rbx
  207aa1: 73 51                        	jae	0x207af4 <__cmplog_ins_hook8+0x124>
  207aa3: 4d 8d 14 ca                  	leaq	(%r10,%rcx,8), %r10
  207aa7: eb 38                        	jmp	0x207ae1 <__cmplog_ins_hook8+0x111>
  207aa9: 48 bb ff ff ff ff ff ff 9f ff	movabsq	$-27021597764222977, %rbx # imm = 0xFF9FFFFFFFFFFFFF
  207ab3: 48 21 d8                     	andq	%rbx, %rax
  207ab6: 4c 09 d8                     	orq	%r11, %rax
  207ab9: 49 89 04 ca                  	movq	%rax, (%r10,%rcx,8)
  207abd: 49 8b 01                     	movq	(%r9), %rax
  207ac0: 48 c7 c3 00 00 00 ff         	movq	$-16777216, %rbx        # imm = 0xFF000000
  207ac7: 48 23 1c c8                  	andq	(%rax,%rcx,8), %rbx
  207acb: 48 83 cb 01                  	orq	$1, %rbx
  207acf: 48 89 1c c8                  	movq	%rbx, (%rax,%rcx,8)
  207ad3: 49 8b 01                     	movq	(%r9), %rax
  207ad6: 4c 8d 14 c8                  	leaq	(%rax,%rcx,8), %r10
  207ada: 48 8b 04 c8                  	movq	(%rax,%rcx,8), %rax
  207ade: 45 31 db                     	xorl	%r11d, %r11d
  207ae1: 48 bb ff ff ff ff ff ff e0 ff	movabsq	$-8725724278030337, %rbx # imm = 0xFFE0FFFFFFFFFFFF
  207aeb: 48 21 c3                     	andq	%rax, %rbx
  207aee: 4c 09 c3                     	orq	%r8, %rbx
  207af1: 49 89 1a                     	movq	%rbx, (%r10)
  207af4: 49 8b 01                     	movq	(%r9), %rax
  207af7: 80 e2 0f                     	andb	$15, %dl
  207afa: 0f b6 d2                     	movzbl	%dl, %edx
  207afd: 48 c1 e2 37                  	shlq	$55, %rdx
  207b01: 48 bb ff ff ff ff ff ff 7f f8	movabsq	$-540431955284459521, %rbx # imm = 0xF87FFFFFFFFFFFFF
  207b0b: 48 23 1c c8                  	andq	(%rax,%rcx,8), %rbx
  207b0f: 48 09 d3                     	orq	%rdx, %rbx
  207b12: 48 89 1c c8                  	movq	%rbx, (%rax,%rcx,8)
  207b16: 48 c1 e1 0a                  	shlq	$10, %rcx
  207b1a: 49 03 09                     	addq	(%r9), %rcx
  207b1d: 41 83 e3 1f                  	andl	$31, %r11d
  207b21: 49 c1 e3 05                  	shlq	$5, %r11
  207b25: 49 89 bc 0b 00 00 08 00      	movq	%rdi, 524288(%r11,%rcx)
  207b2d: 49 89 b4 0b 08 00 08 00      	movq	%rsi, 524296(%r11,%rcx)
  207b35: 5b                           	popq	%rbx
  207b36: c3                           	retq
  207b37: 66 0f 1f 84 00 00 00 00 00   	nopw	(%rax,%rax)

0000000000207b40 <__cmplog_ins_hookN>:
  207b40: 55                           	pushq	%rbp
  207b41: 41 57                        	pushq	%r15
  207b43: 41 56                        	pushq	%r14
  207b45: 53                           	pushq	%rbx
  207b46: 4c 8d 15 f3 d3 20 00         	leaq	2151411(%rip), %r10     # 0x414f40 <__afl_cmp_map>
  207b4d: 4d 8b 32                     	movq	(%r10), %r14
  207b50: 4d 85 f6                     	testq	%r14, %r14
  207b53: 0f 84 78 01 00 00            	je	0x207cd1 <__cmplog_ins_hookN+0x191>
  207b59: 48 89 f0                     	movq	%rsi, %rax
  207b5c: 48 31 c8                     	xorq	%rcx, %rax
  207b5f: 48 89 fb                     	movq	%rdi, %rbx
  207b62: 48 31 d3                     	xorq	%rdx, %rbx
  207b65: 48 09 c3                     	orq	%rax, %rbx
  207b68: 0f 84 63 01 00 00            	je	0x207cd1 <__cmplog_ins_hookN+0x191>
  207b6e: 49 bb 00 00 00 00 00 00 20 00	movabsq	$9007199254740992, %r11 # imm = 0x20000000000000
  207b78: 48 8b 44 24 20               	movq	32(%rsp), %rax
  207b7d: 48 c1 c0 20                  	rolq	$32, %rax
  207b81: 48 bb a2 d5 ec c5 74 b1 3a c7	movabsq	$-4090762196417718878, %rbx # imm = 0xC73AB174C5ECD5A2
  207b8b: 48 31 c3                     	xorq	%rax, %rbx
  207b8e: 49 89 df                     	movq	%rbx, %r15
  207b91: 49 c1 c7 18                  	rolq	$24, %r15
  207b95: 49 31 df                     	xorq	%rbx, %r15
  207b98: 48 c1 c3 31                  	rolq	$49, %rbx
  207b9c: 49 31 df                     	xorq	%rbx, %r15
  207b9f: 48 bb 25 df 98 1e 65 1c b2 9f	movabsq	$-6939452855193903323, %rbx # imm = 0x9FB21C651E98DF25
  207ba9: 4c 0f af fb                  	imulq	%rbx, %r15
  207bad: 4c 89 f8                     	movq	%r15, %rax
  207bb0: 48 c1 e8 23                  	shrq	$35, %rax
  207bb4: 48 83 c0 08                  	addq	$8, %rax
  207bb8: 4c 31 f8                     	xorq	%r15, %rax
  207bbb: 48 0f af c3                  	imulq	%rbx, %rax
  207bbf: 48 89 c3                     	movq	%rax, %rbx
  207bc2: 48 c1 eb 1c                  	shrq	$28, %rbx
  207bc6: 31 c3                        	xorl	%eax, %ebx
  207bc8: 44 0f b7 fb                  	movzwl	%bx, %r15d
  207bcc: 4b 8b 1c fe                  	movq	(%r14,%r15,8), %rbx
  207bd0: 48 b8 00 00 00 00 00 00 60 00	movabsq	$27021597764222976, %rax # imm = 0x60000000000000
  207bda: 48 21 d8                     	andq	%rbx, %rax
  207bdd: 4c 39 d8                     	cmpq	%r11, %rax
  207be0: 75 3f                        	jne	0x207c21 <__cmplog_ins_hookN+0xe1>
  207be2: 41 89 db                     	movl	%ebx, %r11d
  207be5: 41 81 e3 ff ff ff 00         	andl	$16777215, %r11d        # imm = 0xFFFFFF
  207bec: 8d 43 01                     	leal	1(%rbx), %eax
  207bef: 25 ff ff ff 00               	andl	$16777215, %eax         # imm = 0xFFFFFF
  207bf4: 48 81 e3 00 00 00 ff         	andq	$-16777216, %rbx        # imm = 0xFF000000
  207bfb: 48 09 c3                     	orq	%rax, %rbx
  207bfe: 4b 89 1c fe                  	movq	%rbx, (%r14,%r15,8)
  207c02: 4d 8b 32                     	movq	(%r10), %r14
  207c05: 4b 8b 1c fe                  	movq	(%r14,%r15,8), %rbx
  207c09: 48 89 d8                     	movq	%rbx, %rax
  207c0c: 48 c1 e8 30                  	shrq	$48, %rax
  207c10: 83 e0 1f                     	andl	$31, %eax
  207c13: 41 0f b6 e9                  	movzbl	%r9b, %ebp
  207c17: 39 e8                        	cmpl	%ebp, %eax
  207c19: 73 5d                        	jae	0x207c78 <__cmplog_ins_hookN+0x138>
  207c1b: 4f 8d 34 fe                  	leaq	(%r14,%r15,8), %r14
  207c1f: eb 38                        	jmp	0x207c59 <__cmplog_ins_hookN+0x119>
  207c21: 48 b8 ff ff ff ff ff ff 9f ff	movabsq	$-27021597764222977, %rax # imm = 0xFF9FFFFFFFFFFFFF
  207c2b: 48 21 c3                     	andq	%rax, %rbx
  207c2e: 4c 09 db                     	orq	%r11, %rbx
  207c31: 4b 89 1c fe                  	movq	%rbx, (%r14,%r15,8)
  207c35: 49 8b 02                     	movq	(%r10), %rax
  207c38: 48 c7 c3 00 00 00 ff         	movq	$-16777216, %rbx        # imm = 0xFF000000
  207c3f: 4a 23 1c f8                  	andq	(%rax,%r15,8), %rbx
  207c43: 48 83 cb 01                  	orq	$1, %rbx
  207c47: 4a 89 1c f8                  	movq	%rbx, (%rax,%r15,8)
  207c4b: 49 8b 02                     	movq	(%r10), %rax
  207c4e: 4e 8d 34 f8                  	leaq	(%rax,%r15,8), %r14
  207c52: 4a 8b 1c f8                  	movq	(%rax,%r15,8), %rbx
  207c56: 45 31 db                     	xorl	%r11d, %r11d
  207c59: 44 89 c8                     	movl	%r9d, %eax
  207c5c: 24 1f                        	andb	$31, %al
  207c5e: 0f b6 c0                     	movzbl	%al, %eax
  207c61: 48 c1 e0 30                  	shlq	$48, %rax
  207c65: 48 bd ff ff ff ff ff ff e0 ff	movabsq	$-8725724278030337, %rbp # imm = 0xFFE0FFFFFFFFFFFF
  207c6f: 48 21 dd                     	andq	%rbx, %rbp
  207c72: 48 09 c5                     	orq	%rax, %rbp
  207c75: 49 89 2e                     	movq	%rbp, (%r14)
  207c78: 49 8b 02                     	movq	(%r10), %rax
  207c7b: 41 80 e0 0f                  	andb	$15, %r8b
  207c7f: 41 0f b6 e8                  	movzbl	%r8b, %ebp
  207c83: 48 c1 e5 37                  	shlq	$55, %rbp
  207c87: 48 bb ff ff ff ff ff ff 7f f8	movabsq	$-540431955284459521, %rbx # imm = 0xF87FFFFFFFFFFFFF
  207c91: 4a 23 1c f8                  	andq	(%rax,%r15,8), %rbx
  207c95: 48 09 eb                     	orq	%rbp, %rbx
  207c98: 4a 89 1c f8                  	movq	%rbx, (%rax,%r15,8)
  207c9c: 41 83 e3 1f                  	andl	$31, %r11d
  207ca0: 49 c1 e7 0a                  	shlq	$10, %r15
  207ca4: 4d 03 3a                     	addq	(%r10), %r15
  207ca7: 49 c1 e3 05                  	shlq	$5, %r11
  207cab: 4b 89 bc 3b 00 00 08 00      	movq	%rdi, 524288(%r11,%r15)
  207cb3: 4b 89 94 3b 08 00 08 00      	movq	%rdx, 524296(%r11,%r15)
  207cbb: 41 80 f9 08                  	cmpb	$8, %r9b
  207cbf: 72 10                        	jb	0x207cd1 <__cmplog_ins_hookN+0x191>
  207cc1: 4b 89 b4 3b 10 00 08 00      	movq	%rsi, 524304(%r11,%r15)
  207cc9: 4b 89 8c 3b 18 00 08 00      	movq	%rcx, 524312(%r11,%r15)
  207cd1: 5b                           	popq	%rbx
  207cd2: 41 5e                        	popq	%r14
  207cd4: 41 5f                        	popq	%r15
  207cd6: 5d                           	popq	%rbp
  207cd7: c3                           	retq
  207cd8: 0f 1f 84 00 00 00 00 00      	nopl	(%rax,%rax)

0000000000207ce0 <__cmplog_ins_hook16>:
  207ce0: 41 57                        	pushq	%r15
  207ce2: 41 56                        	pushq	%r14
  207ce4: 53                           	pushq	%rbx
  207ce5: 4c 8d 15 54 d2 20 00         	leaq	2150996(%rip), %r10     # 0x414f40 <__afl_cmp_map>
  207cec: 4d 8b 32                     	movq	(%r10), %r14
  207cef: 4d 85 f6                     	testq	%r14, %r14
  207cf2: 0f 84 5b 01 00 00            	je	0x207e53 <__cmplog_ins_hook16+0x173>
  207cf8: 49 bb 00 00 00 00 00 00 20 00	movabsq	$9007199254740992, %r11 # imm = 0x20000000000000
  207d02: 49 b9 00 00 00 00 00 00 0f 00	movabsq	$4222124650659840, %r9  # imm = 0xF000000000000
  207d0c: 48 8b 44 24 18               	movq	24(%rsp), %rax
  207d11: 48 c1 c0 20                  	rolq	$32, %rax
  207d15: 48 bb a2 d5 ec c5 74 b1 3a c7	movabsq	$-4090762196417718878, %rbx # imm = 0xC73AB174C5ECD5A2
  207d1f: 48 31 c3                     	xorq	%rax, %rbx
  207d22: 49 89 df                     	movq	%rbx, %r15
  207d25: 49 c1 c7 18                  	rolq	$24, %r15
  207d29: 49 31 df                     	xorq	%rbx, %r15
  207d2c: 48 c1 c3 31                  	rolq	$49, %rbx
  207d30: 49 31 df                     	xorq	%rbx, %r15
  207d33: 48 bb 25 df 98 1e 65 1c b2 9f	movabsq	$-6939452855193903323, %rbx # imm = 0x9FB21C651E98DF25
  207d3d: 4c 0f af fb                  	imulq	%rbx, %r15
  207d41: 4c 89 f8                     	movq	%r15, %rax
  207d44: 48 c1 e8 23                  	shrq	$35, %rax
  207d48: 48 83 c0 08                  	addq	$8, %rax
  207d4c: 4c 31 f8                     	xorq	%r15, %rax
  207d4f: 48 0f af c3                  	imulq	%rbx, %rax
  207d53: 48 89 c3                     	movq	%rax, %rbx
  207d56: 48 c1 eb 1c                  	shrq	$28, %rbx
  207d5a: 31 c3                        	xorl	%eax, %ebx
  207d5c: 44 0f b7 fb                  	movzwl	%bx, %r15d
  207d60: 4b 8b 1c fe                  	movq	(%r14,%r15,8), %rbx
  207d64: 48 b8 00 00 00 00 00 00 60 00	movabsq	$27021597764222976, %rax # imm = 0x60000000000000
  207d6e: 48 21 d8                     	andq	%rbx, %rax
  207d71: 4c 39 d8                     	cmpq	%r11, %rax
  207d74: 75 3f                        	jne	0x207db5 <__cmplog_ins_hook16+0xd5>
  207d76: 41 89 db                     	movl	%ebx, %r11d
  207d79: 41 81 e3 ff ff ff 00         	andl	$16777215, %r11d        # imm = 0xFFFFFF
  207d80: 8d 43 01                     	leal	1(%rbx), %eax
  207d83: 25 ff ff ff 00               	andl	$16777215, %eax         # imm = 0xFFFFFF
  207d88: 48 81 e3 00 00 00 ff         	andq	$-16777216, %rbx        # imm = 0xFF000000
  207d8f: 48 09 c3                     	orq	%rax, %rbx
  207d92: 4b 89 1c fe                  	movq	%rbx, (%r14,%r15,8)
  207d96: 4d 8b 32                     	movq	(%r10), %r14
  207d99: 4b 8b 1c fe                  	movq	(%r14,%r15,8), %rbx
  207d9d: 48 b8 00 00 00 00 00 00 1f 00	movabsq	$8725724278030336, %rax # imm = 0x1F000000000000
  207da7: 48 21 d8                     	andq	%rbx, %rax
  207daa: 4c 39 c8                     	cmpq	%r9, %rax
  207dad: 73 51                        	jae	0x207e00 <__cmplog_ins_hook16+0x120>
  207daf: 4f 8d 34 fe                  	leaq	(%r14,%r15,8), %r14
  207db3: eb 38                        	jmp	0x207ded <__cmplog_ins_hook16+0x10d>
  207db5: 48 b8 ff ff ff ff ff ff 9f ff	movabsq	$-27021597764222977, %rax # imm = 0xFF9FFFFFFFFFFFFF
  207dbf: 48 21 c3                     	andq	%rax, %rbx
  207dc2: 4c 09 db                     	orq	%r11, %rbx
  207dc5: 4b 89 1c fe                  	movq	%rbx, (%r14,%r15,8)
  207dc9: 49 8b 02                     	movq	(%r10), %rax
  207dcc: 48 c7 c3 00 00 00 ff         	movq	$-16777216, %rbx        # imm = 0xFF000000
  207dd3: 4a 23 1c f8                  	andq	(%rax,%r15,8), %rbx
  207dd7: 48 83 cb 01                  	orq	$1, %rbx
  207ddb: 4a 89 1c f8                  	movq	%rbx, (%rax,%r15,8)
  207ddf: 49 8b 02                     	movq	(%r10), %rax
  207de2: 4e 8d 34 f8                  	leaq	(%rax,%r15,8), %r14
  207de6: 4a 8b 1c f8                  	movq	(%rax,%r15,8), %rbx
  207dea: 45 31 db                     	xorl	%r11d, %r11d
  207ded: 48 b8 ff ff ff ff ff ff e0 ff	movabsq	$-8725724278030337, %rax # imm = 0xFFE0FFFFFFFFFFFF
  207df7: 48 21 d8                     	andq	%rbx, %rax
  207dfa: 4c 09 c8                     	orq	%r9, %rax
  207dfd: 49 89 06                     	movq	%rax, (%r14)
  207e00: 4d 8b 0a                     	movq	(%r10), %r9
  207e03: 41 80 e0 0f                  	andb	$15, %r8b
  207e07: 41 0f b6 d8                  	movzbl	%r8b, %ebx
  207e0b: 48 b8 ff ff ff ff ff ff 7f f8	movabsq	$-540431955284459521, %rax # imm = 0xF87FFFFFFFFFFFFF
  207e15: 4b 23 04 f9                  	andq	(%r9,%r15,8), %rax
  207e19: 48 c1 e3 37                  	shlq	$55, %rbx
  207e1d: 48 09 d8                     	orq	%rbx, %rax
  207e20: 4b 89 04 f9                  	movq	%rax, (%r9,%r15,8)
  207e24: 41 83 e3 1f                  	andl	$31, %r11d
  207e28: 49 c1 e7 0a                  	shlq	$10, %r15
  207e2c: 4d 03 3a                     	addq	(%r10), %r15
  207e2f: 49 c1 e3 05                  	shlq	$5, %r11
  207e33: 4b 89 bc 3b 00 00 08 00      	movq	%rdi, 524288(%r11,%r15)
  207e3b: 4b 89 94 3b 08 00 08 00      	movq	%rdx, 524296(%r11,%r15)
  207e43: 4b 89 b4 3b 10 00 08 00      	movq	%rsi, 524304(%r11,%r15)
  207e4b: 4b 89 8c 3b 18 00 08 00      	movq	%rcx, 524312(%r11,%r15)
  207e53: 5b                           	popq	%rbx
  207e54: 41 5e                        	popq	%r14
  207e56: 41 5f                        	popq	%r15
  207e58: c3                           	retq
  207e59: 0f 1f 80 00 00 00 00         	nopl	(%rax)

0000000000207e60 <__sanitizer_cov_trace_cmp1>:
  207e60: 40 38 f7                     	cmpb	%sil, %dil
  207e63: 0f 84 15 01 00 00            	je	0x207f7e <__sanitizer_cov_trace_cmp1+0x11e>
  207e69: 4c 8d 05 d0 d0 20 00         	leaq	2150608(%rip), %r8      # 0x414f40 <__afl_cmp_map>
  207e70: 4d 8b 10                     	movq	(%r8), %r10
  207e73: 4d 85 d2                     	testq	%r10, %r10
  207e76: 0f 84 02 01 00 00            	je	0x207f7e <__sanitizer_cov_trace_cmp1+0x11e>
  207e7c: 49 b9 00 00 00 00 00 00 20 00	movabsq	$9007199254740992, %r9  # imm = 0x20000000000000
  207e86: 48 8b 04 24                  	movq	(%rsp), %rax
  207e8a: 48 c1 c0 20                  	rolq	$32, %rax
  207e8e: 48 ba a2 d5 ec c5 74 b1 3a c7	movabsq	$-4090762196417718878, %rdx # imm = 0xC73AB174C5ECD5A2
  207e98: 48 31 c2                     	xorq	%rax, %rdx
  207e9b: 48 89 d1                     	movq	%rdx, %rcx
  207e9e: 48 c1 c1 18                  	rolq	$24, %rcx
  207ea2: 48 31 d1                     	xorq	%rdx, %rcx
  207ea5: 48 c1 c2 31                  	rolq	$49, %rdx
  207ea9: 48 31 d1                     	xorq	%rdx, %rcx
  207eac: 48 ba 25 df 98 1e 65 1c b2 9f	movabsq	$-6939452855193903323, %rdx # imm = 0x9FB21C651E98DF25
  207eb6: 48 0f af ca                  	imulq	%rdx, %rcx
  207eba: 48 89 c8                     	movq	%rcx, %rax
  207ebd: 48 c1 e8 23                  	shrq	$35, %rax
  207ec1: 48 83 c0 08                  	addq	$8, %rax
  207ec5: 48 31 c8                     	xorq	%rcx, %rax
  207ec8: 48 0f af c2                  	imulq	%rdx, %rax
  207ecc: 48 89 c1                     	movq	%rax, %rcx
  207ecf: 48 c1 e9 1c                  	shrq	$28, %rcx
  207ed3: 31 c1                        	xorl	%eax, %ecx
  207ed5: 44 0f b7 d9                  	movzwl	%cx, %r11d
  207ed9: 4b 8b 14 da                  	movq	(%r10,%r11,8), %rdx
  207edd: 48 b9 00 00 00 00 00 00 60 00	movabsq	$27021597764222976, %rcx # imm = 0x60000000000000
  207ee7: 48 21 d1                     	andq	%rdx, %rcx
  207eea: 4c 39 c9                     	cmpq	%r9, %rcx
  207eed: 75 1e                        	jne	0x207f0d <__sanitizer_cov_trace_cmp1+0xad>
  207eef: 8d 4a 01                     	leal	1(%rdx), %ecx
  207ef2: 81 e1 ff ff ff 00            	andl	$16777215, %ecx         # imm = 0xFFFFFF
  207ef8: 48 89 d0                     	movq	%rdx, %rax
  207efb: 48 25 00 00 00 ff            	andq	$-16777216, %rax        # imm = 0xFF000000
  207f01: 48 09 c8                     	orq	%rcx, %rax
  207f04: 4b 89 04 da                  	movq	%rax, (%r10,%r11,8)
  207f08: 83 e2 1f                     	andl	$31, %edx
  207f0b: eb 3d                        	jmp	0x207f4a <__sanitizer_cov_trace_cmp1+0xea>
  207f0d: 48 b9 ff ff ff ff ff ff 9f ff	movabsq	$-27021597764222977, %rcx # imm = 0xFF9FFFFFFFFFFFFF
  207f17: 48 21 ca                     	andq	%rcx, %rdx
  207f1a: 4c 09 ca                     	orq	%r9, %rdx
  207f1d: 4b 89 14 da                  	movq	%rdx, (%r10,%r11,8)
  207f21: 49 8b 00                     	movq	(%r8), %rax
  207f24: 48 c7 c1 00 00 00 ff         	movq	$-16777216, %rcx        # imm = 0xFF000000
  207f2b: 4a 23 0c d8                  	andq	(%rax,%r11,8), %rcx
  207f2f: 48 83 c9 01                  	orq	$1, %rcx
  207f33: 4a 89 0c d8                  	movq	%rcx, (%rax,%r11,8)
  207f37: 49 8b 00                     	movq	(%r8), %rax
  207f3a: 48 b9 ff ff ff ff ff ff e0 ff	movabsq	$-8725724278030337, %rcx # imm = 0xFFE0FFFFFFFFFFFF
  207f44: 4a 21 0c d8                  	andq	%rcx, (%rax,%r11,8)
  207f48: 31 d2                        	xorl	%edx, %edx
  207f4a: 49 8b 00                     	movq	(%r8), %rax
  207f4d: 48 b9 ff ff ff ff ff ff 7f f8	movabsq	$-540431955284459521, %rcx # imm = 0xF87FFFFFFFFFFFFF
  207f57: 4a 21 0c d8                  	andq	%rcx, (%rax,%r11,8)
  207f5b: 40 0f b6 c7                  	movzbl	%dil, %eax
  207f5f: 49 c1 e3 0a                  	shlq	$10, %r11
  207f63: 4d 03 18                     	addq	(%r8), %r11
  207f66: 48 c1 e2 05                  	shlq	$5, %rdx
  207f6a: 4a 89 84 1a 00 00 08 00      	movq	%rax, 524288(%rdx,%r11)
  207f72: 40 0f b6 c6                  	movzbl	%sil, %eax
  207f76: 4a 89 84 1a 08 00 08 00      	movq	%rax, 524296(%rdx,%r11)
  207f7e: c3                           	retq
  207f7f: 90                           	nop

0000000000207f80 <__sanitizer_cov_trace_const_cmp1>:
  207f80: 40 38 f7                     	cmpb	%sil, %dil
  207f83: 0f 84 15 01 00 00            	je	0x20809e <__sanitizer_cov_trace_const_cmp1+0x11e>
  207f89: 4c 8d 05 b0 cf 20 00         	leaq	2150320(%rip), %r8      # 0x414f40 <__afl_cmp_map>
  207f90: 4d 8b 10                     	movq	(%r8), %r10
  207f93: 4d 85 d2                     	testq	%r10, %r10
  207f96: 0f 84 02 01 00 00            	je	0x20809e <__sanitizer_cov_trace_const_cmp1+0x11e>
  207f9c: 49 b9 00 00 00 00 00 00 20 00	movabsq	$9007199254740992, %r9  # imm = 0x20000000000000
  207fa6: 48 8b 04 24                  	movq	(%rsp), %rax
  207faa: 48 c1 c0 20                  	rolq	$32, %rax
  207fae: 48 ba a2 d5 ec c5 74 b1 3a c7	movabsq	$-4090762196417718878, %rdx # imm = 0xC73AB174C5ECD5A2
  207fb8: 48 31 c2                     	xorq	%rax, %rdx
  207fbb: 48 89 d1                     	movq	%rdx, %rcx
  207fbe: 48 c1 c1 18                  	rolq	$24, %rcx
  207fc2: 48 31 d1                     	xorq	%rdx, %rcx
  207fc5: 48 c1 c2 31                  	rolq	$49, %rdx
  207fc9: 48 31 d1                     	xorq	%rdx, %rcx
  207fcc: 48 ba 25 df 98 1e 65 1c b2 9f	movabsq	$-6939452855193903323, %rdx # imm = 0x9FB21C651E98DF25
  207fd6: 48 0f af ca                  	imulq	%rdx, %rcx
  207fda: 48 89 c8                     	movq	%rcx, %rax
  207fdd: 48 c1 e8 23                  	shrq	$35, %rax
  207fe1: 48 83 c0 08                  	addq	$8, %rax
  207fe5: 48 31 c8                     	xorq	%rcx, %rax
  207fe8: 48 0f af c2                  	imulq	%rdx, %rax
  207fec: 48 89 c1                     	movq	%rax, %rcx
  207fef: 48 c1 e9 1c                  	shrq	$28, %rcx
  207ff3: 31 c1                        	xorl	%eax, %ecx
  207ff5: 44 0f b7 d9                  	movzwl	%cx, %r11d
  207ff9: 4b 8b 14 da                  	movq	(%r10,%r11,8), %rdx
  207ffd: 48 b9 00 00 00 00 00 00 60 00	movabsq	$27021597764222976, %rcx # imm = 0x60000000000000
  208007: 48 21 d1                     	andq	%rdx, %rcx
  20800a: 4c 39 c9                     	cmpq	%r9, %rcx
  20800d: 75 1e                        	jne	0x20802d <__sanitizer_cov_trace_const_cmp1+0xad>
  20800f: 8d 4a 01                     	leal	1(%rdx), %ecx
  208012: 81 e1 ff ff ff 00            	andl	$16777215, %ecx         # imm = 0xFFFFFF
  208018: 48 89 d0                     	movq	%rdx, %rax
  20801b: 48 25 00 00 00 ff            	andq	$-16777216, %rax        # imm = 0xFF000000
  208021: 48 09 c8                     	orq	%rcx, %rax
  208024: 4b 89 04 da                  	movq	%rax, (%r10,%r11,8)
  208028: 83 e2 1f                     	andl	$31, %edx
  20802b: eb 3d                        	jmp	0x20806a <__sanitizer_cov_trace_const_cmp1+0xea>
  20802d: 48 b9 ff ff ff ff ff ff 9f ff	movabsq	$-27021597764222977, %rcx # imm = 0xFF9FFFFFFFFFFFFF
  208037: 48 21 ca                     	andq	%rcx, %rdx
  20803a: 4c 09 ca                     	orq	%r9, %rdx
  20803d: 4b 89 14 da                  	movq	%rdx, (%r10,%r11,8)
  208041: 49 8b 00                     	movq	(%r8), %rax
  208044: 48 c7 c1 00 00 00 ff         	movq	$-16777216, %rcx        # imm = 0xFF000000
  20804b: 4a 23 0c d8                  	andq	(%rax,%r11,8), %rcx
  20804f: 48 83 c9 01                  	orq	$1, %rcx
  208053: 4a 89 0c d8                  	movq	%rcx, (%rax,%r11,8)
  208057: 49 8b 00                     	movq	(%r8), %rax
  20805a: 48 b9 ff ff ff ff ff ff e0 ff	movabsq	$-8725724278030337, %rcx # imm = 0xFFE0FFFFFFFFFFFF
  208064: 4a 21 0c d8                  	andq	%rcx, (%rax,%r11,8)
  208068: 31 d2                        	xorl	%edx, %edx
  20806a: 49 8b 00                     	movq	(%r8), %rax
  20806d: 48 b9 ff ff ff ff ff ff 7f f8	movabsq	$-540431955284459521, %rcx # imm = 0xF87FFFFFFFFFFFFF
  208077: 4a 21 0c d8                  	andq	%rcx, (%rax,%r11,8)
  20807b: 40 0f b6 c7                  	movzbl	%dil, %eax
  20807f: 49 c1 e3 0a                  	shlq	$10, %r11
  208083: 4d 03 18                     	addq	(%r8), %r11
  208086: 48 c1 e2 05                  	shlq	$5, %rdx
  20808a: 4a 89 84 1a 00 00 08 00      	movq	%rax, 524288(%rdx,%r11)
  208092: 40 0f b6 c6                  	movzbl	%sil, %eax
  208096: 4a 89 84 1a 08 00 08 00      	movq	%rax, 524296(%rdx,%r11)
  20809e: c3                           	retq
  20809f: 90                           	nop

00000000002080a0 <__sanitizer_cov_trace_cmp2>:
  2080a0: 31 d2                        	xorl	%edx, %edx
  2080a2: e9 49 f6 ff ff               	jmp	0x2076f0 <__cmplog_ins_hook2>
  2080a7: 66 0f 1f 84 00 00 00 00 00   	nopw	(%rax,%rax)

00000000002080b0 <__sanitizer_cov_trace_const_cmp2>:
  2080b0: 31 d2                        	xorl	%edx, %edx
  2080b2: e9 39 f6 ff ff               	jmp	0x2076f0 <__cmplog_ins_hook2>
  2080b7: 66 0f 1f 84 00 00 00 00 00   	nopw	(%rax,%rax)

00000000002080c0 <__sanitizer_cov_trace_cmp4>:
  2080c0: 39 f7                        	cmpl	%esi, %edi
  2080c2: 0f 84 52 01 00 00            	je	0x20821a <__sanitizer_cov_trace_cmp4+0x15a>
  2080c8: 4c 8d 0d 71 ce 20 00         	leaq	2150001(%rip), %r9      # 0x414f40 <__afl_cmp_map>
  2080cf: 4d 8b 11                     	movq	(%r9), %r10
  2080d2: 4d 85 d2                     	testq	%r10, %r10
  2080d5: 0f 84 3f 01 00 00            	je	0x20821a <__sanitizer_cov_trace_cmp4+0x15a>
  2080db: 49 bb 00 00 00 00 00 00 20 00	movabsq	$9007199254740992, %r11 # imm = 0x20000000000000
  2080e5: 49 b8 00 00 00 00 00 00 03 00	movabsq	$844424930131968, %r8   # imm = 0x3000000000000
  2080ef: 48 8b 0c 24                  	movq	(%rsp), %rcx
  2080f3: 48 c1 c1 20                  	rolq	$32, %rcx
  2080f7: 48 ba a2 d5 ec c5 74 b1 3a c7	movabsq	$-4090762196417718878, %rdx # imm = 0xC73AB174C5ECD5A2
  208101: 48 31 ca                     	xorq	%rcx, %rdx
  208104: 48 89 d0                     	movq	%rdx, %rax
  208107: 48 c1 c0 18                  	rolq	$24, %rax
  20810b: 48 31 d0                     	xorq	%rdx, %rax
  20810e: 48 c1 c2 31                  	rolq	$49, %rdx
  208112: 48 31 d0                     	xorq	%rdx, %rax
  208115: 48 ba 25 df 98 1e 65 1c b2 9f	movabsq	$-6939452855193903323, %rdx # imm = 0x9FB21C651E98DF25
  20811f: 48 0f af c2                  	imulq	%rdx, %rax
  208123: 48 89 c1                     	movq	%rax, %rcx
  208126: 48 c1 e9 23                  	shrq	$35, %rcx
  20812a: 48 83 c1 08                  	addq	$8, %rcx
  20812e: 48 31 c1                     	xorq	%rax, %rcx
  208131: 48 0f af ca                  	imulq	%rdx, %rcx
  208135: 48 89 c8                     	movq	%rcx, %rax
  208138: 48 c1 e8 1c                  	shrq	$28, %rax
  20813c: 31 c8                        	xorl	%ecx, %eax
  20813e: 0f b7 d0                     	movzwl	%ax, %edx
  208141: 49 8b 0c d2                  	movq	(%r10,%rdx,8), %rcx
  208145: 48 b8 00 00 00 00 00 00 60 00	movabsq	$27021597764222976, %rax # imm = 0x60000000000000
  20814f: 48 21 c8                     	andq	%rcx, %rax
  208152: 4c 39 d8                     	cmpq	%r11, %rax
  208155: 75 3f                        	jne	0x208196 <__sanitizer_cov_trace_cmp4+0xd6>
  208157: 89 c8                        	movl	%ecx, %eax
  208159: 25 ff ff ff 00               	andl	$16777215, %eax         # imm = 0xFFFFFF
  20815e: 44 8d 59 01                  	leal	1(%rcx), %r11d
  208162: 41 81 e3 ff ff ff 00         	andl	$16777215, %r11d        # imm = 0xFFFFFF
  208169: 48 81 e1 00 00 00 ff         	andq	$-16777216, %rcx        # imm = 0xFF000000
  208170: 4c 09 d9                     	orq	%r11, %rcx
  208173: 49 89 0c d2                  	movq	%rcx, (%r10,%rdx,8)
  208177: 4d 8b 19                     	movq	(%r9), %r11
  20817a: 4d 8b 14 d3                  	movq	(%r11,%rdx,8), %r10
  20817e: 48 b9 00 00 00 00 00 00 1f 00	movabsq	$8725724278030336, %rcx # imm = 0x1F000000000000
  208188: 4c 21 d1                     	andq	%r10, %rcx
  20818b: 4c 39 c1                     	cmpq	%r8, %rcx
  20818e: 73 57                        	jae	0x2081e7 <__sanitizer_cov_trace_cmp4+0x127>
  208190: 4d 8d 1c d3                  	leaq	(%r11,%rdx,8), %r11
  208194: eb 37                        	jmp	0x2081cd <__sanitizer_cov_trace_cmp4+0x10d>
  208196: 48 b8 ff ff ff ff ff ff 9f ff	movabsq	$-27021597764222977, %rax # imm = 0xFF9FFFFFFFFFFFFF
  2081a0: 48 21 c1                     	andq	%rax, %rcx
  2081a3: 4c 09 d9                     	orq	%r11, %rcx
  2081a6: 49 89 0c d2                  	movq	%rcx, (%r10,%rdx,8)
  2081aa: 49 8b 01                     	movq	(%r9), %rax
  2081ad: 48 c7 c1 00 00 00 ff         	movq	$-16777216, %rcx        # imm = 0xFF000000
  2081b4: 48 23 0c d0                  	andq	(%rax,%rdx,8), %rcx
  2081b8: 48 83 c9 01                  	orq	$1, %rcx
  2081bc: 48 89 0c d0                  	movq	%rcx, (%rax,%rdx,8)
  2081c0: 49 8b 01                     	movq	(%r9), %rax
  2081c3: 4c 8d 1c d0                  	leaq	(%rax,%rdx,8), %r11
  2081c7: 4c 8b 14 d0                  	movq	(%rax,%rdx,8), %r10
  2081cb: 31 c0                        	xorl	%eax, %eax
  2081cd: 48 b9 ff ff ff ff ff ff e0 ff	movabsq	$-8725724278030337, %rcx # imm = 0xFFE0FFFFFFFFFFFF
  2081d7: 4c 21 d1                     	andq	%r10, %rcx
  2081da: 4c 09 c1                     	orq	%r8, %rcx
  2081dd: 49 89 0b                     	movq	%rcx, (%r11)
  2081e0: 4d 8b 19                     	movq	(%r9), %r11
  2081e3: 4d 8b 14 d3                  	movq	(%r11,%rdx,8), %r10
  2081e7: 48 b9 ff ff ff ff ff ff 7f f8	movabsq	$-540431955284459521, %rcx # imm = 0xF87FFFFFFFFFFFFF
  2081f1: 4c 21 d1                     	andq	%r10, %rcx
  2081f4: 49 89 0c d3                  	movq	%rcx, (%r11,%rdx,8)
  2081f8: 83 e0 1f                     	andl	$31, %eax
  2081fb: 89 f9                        	movl	%edi, %ecx
  2081fd: 48 c1 e2 0a                  	shlq	$10, %rdx
  208201: 49 03 11                     	addq	(%r9), %rdx
  208204: 48 c1 e0 05                  	shlq	$5, %rax
  208208: 48 89 8c 10 00 00 08 00      	movq	%rcx, 524288(%rax,%rdx)
  208210: 89 f1                        	movl	%esi, %ecx
  208212: 48 89 8c 10 08 00 08 00      	movq	%rcx, 524296(%rax,%rdx)
  20821a: c3                           	retq
  20821b: 0f 1f 44 00 00               	nopl	(%rax,%rax)

0000000000208220 <__sanitizer_cov_trace_const_cmp4>:
  208220: 39 f7                        	cmpl	%esi, %edi
  208222: 0f 84 52 01 00 00            	je	0x20837a <__sanitizer_cov_trace_const_cmp4+0x15a>
  208228: 4c 8d 0d 11 cd 20 00         	leaq	2149649(%rip), %r9      # 0x414f40 <__afl_cmp_map>
  20822f: 4d 8b 11                     	movq	(%r9), %r10
  208232: 4d 85 d2                     	testq	%r10, %r10
  208235: 0f 84 3f 01 00 00            	je	0x20837a <__sanitizer_cov_trace_const_cmp4+0x15a>
  20823b: 49 bb 00 00 00 00 00 00 20 00	movabsq	$9007199254740992, %r11 # imm = 0x20000000000000
  208245: 49 b8 00 00 00 00 00 00 03 00	movabsq	$844424930131968, %r8   # imm = 0x3000000000000
  20824f: 48 8b 0c 24                  	movq	(%rsp), %rcx
  208253: 48 c1 c1 20                  	rolq	$32, %rcx
  208257: 48 ba a2 d5 ec c5 74 b1 3a c7	movabsq	$-4090762196417718878, %rdx # imm = 0xC73AB174C5ECD5A2
  208261: 48 31 ca                     	xorq	%rcx, %rdx
  208264: 48 89 d0                     	movq	%rdx, %rax
  208267: 48 c1 c0 18                  	rolq	$24, %rax
  20826b: 48 31 d0                     	xorq	%rdx, %rax
  20826e: 48 c1 c2 31                  	rolq	$49, %rdx
  208272: 48 31 d0                     	xorq	%rdx, %rax
  208275: 48 ba 25 df 98 1e 65 1c b2 9f	movabsq	$-6939452855193903323, %rdx # imm = 0x9FB21C651E98DF25
  20827f: 48 0f af c2                  	imulq	%rdx, %rax
  208283: 48 89 c1                     	movq	%rax, %rcx
  208286: 48 c1 e9 23                  	shrq	$35, %rcx
  20828a: 48 83 c1 08                  	addq	$8, %rcx
  20828e: 48 31 c1                     	xorq	%rax, %rcx
  208291: 48 0f af ca                  	imulq	%rdx, %rcx
  208295: 48 89 c8                     	movq	%rcx, %rax
  208298: 48 c1 e8 1c                  	shrq	$28, %rax
  20829c: 31 c8                        	xorl	%ecx, %eax
  20829e: 0f b7 d0                     	movzwl	%ax, %edx
  2082a1: 49 8b 0c d2                  	movq	(%r10,%rdx,8), %rcx
  2082a5: 48 b8 00 00 00 00 00 00 60 00	movabsq	$27021597764222976, %rax # imm = 0x60000000000000
  2082af: 48 21 c8                     	andq	%rcx, %rax
  2082b2: 4c 39 d8                     	cmpq	%r11, %rax
  2082b5: 75 3f                        	jne	0x2082f6 <__sanitizer_cov_trace_const_cmp4+0xd6>
  2082b7: 89 c8                        	movl	%ecx, %eax
  2082b9: 25 ff ff ff 00               	andl	$16777215, %eax         # imm = 0xFFFFFF
  2082be: 44 8d 59 01                  	leal	1(%rcx), %r11d
  2082c2: 41 81 e3 ff ff ff 00         	andl	$16777215, %r11d        # imm = 0xFFFFFF
  2082c9: 48 81 e1 00 00 00 ff         	andq	$-16777216, %rcx        # imm = 0xFF000000
  2082d0: 4c 09 d9                     	orq	%r11, %rcx
  2082d3: 49 89 0c d2                  	movq	%rcx, (%r10,%rdx,8)
  2082d7: 4d 8b 19                     	movq	(%r9), %r11
  2082da: 4d 8b 14 d3                  	movq	(%r11,%rdx,8), %r10
  2082de: 48 b9 00 00 00 00 00 00 1f 00	movabsq	$8725724278030336, %rcx # imm = 0x1F000000000000
  2082e8: 4c 21 d1                     	andq	%r10, %rcx
  2082eb: 4c 39 c1                     	cmpq	%r8, %rcx
  2082ee: 73 57                        	jae	0x208347 <__sanitizer_cov_trace_const_cmp4+0x127>
  2082f0: 4d 8d 1c d3                  	leaq	(%r11,%rdx,8), %r11
  2082f4: eb 37                        	jmp	0x20832d <__sanitizer_cov_trace_const_cmp4+0x10d>
  2082f6: 48 b8 ff ff ff ff ff ff 9f ff	movabsq	$-27021597764222977, %rax # imm = 0xFF9FFFFFFFFFFFFF
  208300: 48 21 c1                     	andq	%rax, %rcx
  208303: 4c 09 d9                     	orq	%r11, %rcx
  208306: 49 89 0c d2                  	movq	%rcx, (%r10,%rdx,8)
  20830a: 49 8b 01                     	movq	(%r9), %rax
  20830d: 48 c7 c1 00 00 00 ff         	movq	$-16777216, %rcx        # imm = 0xFF000000
  208314: 48 23 0c d0                  	andq	(%rax,%rdx,8), %rcx
  208318: 48 83 c9 01                  	orq	$1, %rcx
  20831c: 48 89 0c d0                  	movq	%rcx, (%rax,%rdx,8)
  208320: 49 8b 01                     	movq	(%r9), %rax
  208323: 4c 8d 1c d0                  	leaq	(%rax,%rdx,8), %r11
  208327: 4c 8b 14 d0                  	movq	(%rax,%rdx,8), %r10
  20832b: 31 c0                        	xorl	%eax, %eax
  20832d: 48 b9 ff ff ff ff ff ff e0 ff	movabsq	$-8725724278030337, %rcx # imm = 0xFFE0FFFFFFFFFFFF
  208337: 4c 21 d1                     	andq	%r10, %rcx
  20833a: 4c 09 c1                     	orq	%r8, %rcx
  20833d: 49 89 0b                     	movq	%rcx, (%r11)
  208340: 4d 8b 19                     	movq	(%r9), %r11
  208343: 4d 8b 14 d3                  	movq	(%r11,%rdx,8), %r10
  208347: 48 b9 ff ff ff ff ff ff 7f f8	movabsq	$-540431955284459521, %rcx # imm = 0xF87FFFFFFFFFFFFF
  208351: 4c 21 d1                     	andq	%r10, %rcx
  208354: 49 89 0c d3                  	movq	%rcx, (%r11,%rdx,8)
  208358: 83 e0 1f                     	andl	$31, %eax
  20835b: 89 f9                        	movl	%edi, %ecx
  20835d: 48 c1 e2 0a                  	shlq	$10, %rdx
  208361: 49 03 11                     	addq	(%r9), %rdx
  208364: 48 c1 e0 05                  	shlq	$5, %rax
  208368: 48 89 8c 10 00 00 08 00      	movq	%rcx, 524288(%rax,%rdx)
  208370: 89 f1                        	movl	%esi, %ecx
  208372: 48 89 8c 10 08 00 08 00      	movq	%rcx, 524296(%rax,%rdx)
  20837a: c3                           	retq
  20837b: 0f 1f 44 00 00               	nopl	(%rax,%rax)

0000000000208380 <__sanitizer_cov_trace_cmp8>:
  208380: 48 39 f7                     	cmpq	%rsi, %rdi
  208383: 0f 84 4e 01 00 00            	je	0x2084d7 <__sanitizer_cov_trace_cmp8+0x157>
  208389: 4c 8d 0d b0 cb 20 00         	leaq	2149296(%rip), %r9      # 0x414f40 <__afl_cmp_map>
  208390: 4d 8b 11                     	movq	(%r9), %r10
  208393: 4d 85 d2                     	testq	%r10, %r10
  208396: 0f 84 3b 01 00 00            	je	0x2084d7 <__sanitizer_cov_trace_cmp8+0x157>
  20839c: 49 bb 00 00 00 00 00 00 20 00	movabsq	$9007199254740992, %r11 # imm = 0x20000000000000
  2083a6: 49 b8 00 00 00 00 00 00 07 00	movabsq	$1970324836974592, %r8  # imm = 0x7000000000000
  2083b0: 48 8b 04 24                  	movq	(%rsp), %rax
  2083b4: 48 c1 c0 20                  	rolq	$32, %rax
  2083b8: 48 ba a2 d5 ec c5 74 b1 3a c7	movabsq	$-4090762196417718878, %rdx # imm = 0xC73AB174C5ECD5A2
  2083c2: 48 31 c2                     	xorq	%rax, %rdx
  2083c5: 48 89 d1                     	movq	%rdx, %rcx
  2083c8: 48 c1 c1 18                  	rolq	$24, %rcx
  2083cc: 48 31 d1                     	xorq	%rdx, %rcx
  2083cf: 48 c1 c2 31                  	rolq	$49, %rdx
  2083d3: 48 31 d1                     	xorq	%rdx, %rcx
  2083d6: 48 ba 25 df 98 1e 65 1c b2 9f	movabsq	$-6939452855193903323, %rdx # imm = 0x9FB21C651E98DF25
  2083e0: 48 0f af ca                  	imulq	%rdx, %rcx
  2083e4: 48 89 c8                     	movq	%rcx, %rax
  2083e7: 48 c1 e8 23                  	shrq	$35, %rax
  2083eb: 48 83 c0 08                  	addq	$8, %rax
  2083ef: 48 31 c8                     	xorq	%rcx, %rax
  2083f2: 48 0f af c2                  	imulq	%rdx, %rax
  2083f6: 48 89 c1                     	movq	%rax, %rcx
  2083f9: 48 c1 e9 1c                  	shrq	$28, %rcx
  2083fd: 31 c1                        	xorl	%eax, %ecx
  2083ff: 0f b7 d1                     	movzwl	%cx, %edx
  208402: 49 8b 04 d2                  	movq	(%r10,%rdx,8), %rax
  208406: 48 b9 00 00 00 00 00 00 60 00	movabsq	$27021597764222976, %rcx # imm = 0x60000000000000
  208410: 48 21 c1                     	andq	%rax, %rcx
  208413: 4c 39 d9                     	cmpq	%r11, %rcx
  208416: 75 3f                        	jne	0x208457 <__sanitizer_cov_trace_cmp8+0xd7>
  208418: 89 c1                        	movl	%eax, %ecx
  20841a: 81 e1 ff ff ff 00            	andl	$16777215, %ecx         # imm = 0xFFFFFF
  208420: 44 8d 58 01                  	leal	1(%rax), %r11d
  208424: 41 81 e3 ff ff ff 00         	andl	$16777215, %r11d        # imm = 0xFFFFFF
  20842b: 48 25 00 00 00 ff            	andq	$-16777216, %rax        # imm = 0xFF000000
  208431: 4c 09 d8                     	orq	%r11, %rax
  208434: 49 89 04 d2                  	movq	%rax, (%r10,%rdx,8)
  208438: 4d 8b 19                     	movq	(%r9), %r11
  20843b: 4d 8b 14 d3                  	movq	(%r11,%rdx,8), %r10
  20843f: 48 b8 00 00 00 00 00 00 1f 00	movabsq	$8725724278030336, %rax # imm = 0x1F000000000000
  208449: 4c 21 d0                     	andq	%r10, %rax
  20844c: 4c 39 c0                     	cmpq	%r8, %rax
  20844f: 73 57                        	jae	0x2084a8 <__sanitizer_cov_trace_cmp8+0x128>
  208451: 4d 8d 1c d3                  	leaq	(%r11,%rdx,8), %r11
  208455: eb 37                        	jmp	0x20848e <__sanitizer_cov_trace_cmp8+0x10e>
  208457: 48 b9 ff ff ff ff ff ff 9f ff	movabsq	$-27021597764222977, %rcx # imm = 0xFF9FFFFFFFFFFFFF
  208461: 48 21 c8                     	andq	%rcx, %rax
  208464: 4c 09 d8                     	orq	%r11, %rax
  208467: 49 89 04 d2                  	movq	%rax, (%r10,%rdx,8)
  20846b: 49 8b 01                     	movq	(%r9), %rax
  20846e: 48 c7 c1 00 00 00 ff         	movq	$-16777216, %rcx        # imm = 0xFF000000
  208475: 48 23 0c d0                  	andq	(%rax,%rdx,8), %rcx
  208479: 48 83 c9 01                  	orq	$1, %rcx
  20847d: 48 89 0c d0                  	movq	%rcx, (%rax,%rdx,8)
  208481: 49 8b 09                     	movq	(%r9), %rcx
  208484: 4c 8d 1c d1                  	leaq	(%rcx,%rdx,8), %r11
  208488: 4c 8b 14 d1                  	movq	(%rcx,%rdx,8), %r10
  20848c: 31 c9                        	xorl	%ecx, %ecx
  20848e: 48 b8 ff ff ff ff ff ff e0 ff	movabsq	$-8725724278030337, %rax # imm = 0xFFE0FFFFFFFFFFFF
  208498: 4c 21 d0                     	andq	%r10, %rax
  20849b: 4c 09 c0                     	orq	%r8, %rax
  20849e: 49 89 03                     	movq	%rax, (%r11)
  2084a1: 4d 8b 19                     	movq	(%r9), %r11
  2084a4: 4d 8b 14 d3                  	movq	(%r11,%rdx,8), %r10
  2084a8: 48 b8 ff ff ff ff ff ff 7f f8	movabsq	$-540431955284459521, %rax # imm = 0xF87FFFFFFFFFFFFF
  2084b2: 4c 21 d0                     	andq	%r10, %rax
  2084b5: 49 89 04 d3                  	movq	%rax, (%r11,%rdx,8)
  2084b9: 48 c1 e2 0a                  	shlq	$10, %rdx
  2084bd: 49 03 11                     	addq	(%r9), %rdx
  2084c0: 83 e1 1f                     	andl	$31, %ecx
  2084c3: 48 c1 e1 05                  	shlq	$5, %rcx
  2084c7: 48 89 bc 11 00 00 08 00      	movq	%rdi, 524288(%rcx,%rdx)
  2084cf: 48 89 b4 11 08 00 08 00      	movq	%rsi, 524296(%rcx,%rdx)
  2084d7: c3                           	retq
  2084d8: 0f 1f 84 00 00 00 00 00      	nopl	(%rax,%rax)

00000000002084e0 <__sanitizer_cov_trace_const_cmp8>:
  2084e0: 48 39 f7                     	cmpq	%rsi, %rdi
  2084e3: 0f 84 4e 01 00 00            	je	0x208637 <__sanitizer_cov_trace_const_cmp8+0x157>
  2084e9: 4c 8d 0d 50 ca 20 00         	leaq	2148944(%rip), %r9      # 0x414f40 <__afl_cmp_map>
  2084f0: 4d 8b 11                     	movq	(%r9), %r10
  2084f3: 4d 85 d2                     	testq	%r10, %r10
  2084f6: 0f 84 3b 01 00 00            	je	0x208637 <__sanitizer_cov_trace_const_cmp8+0x157>
  2084fc: 49 bb 00 00 00 00 00 00 20 00	movabsq	$9007199254740992, %r11 # imm = 0x20000000000000
  208506: 49 b8 00 00 00 00 00 00 07 00	movabsq	$1970324836974592, %r8  # imm = 0x7000000000000
  208510: 48 8b 04 24                  	movq	(%rsp), %rax
  208514: 48 c1 c0 20                  	rolq	$32, %rax
  208518: 48 ba a2 d5 ec c5 74 b1 3a c7	movabsq	$-4090762196417718878, %rdx # imm = 0xC73AB174C5ECD5A2
  208522: 48 31 c2                     	xorq	%rax, %rdx
  208525: 48 89 d1                     	movq	%rdx, %rcx
  208528: 48 c1 c1 18                  	rolq	$24, %rcx
  20852c: 48 31 d1                     	xorq	%rdx, %rcx
  20852f: 48 c1 c2 31                  	rolq	$49, %rdx
  208533: 48 31 d1                     	xorq	%rdx, %rcx
  208536: 48 ba 25 df 98 1e 65 1c b2 9f	movabsq	$-6939452855193903323, %rdx # imm = 0x9FB21C651E98DF25
  208540: 48 0f af ca                  	imulq	%rdx, %rcx
  208544: 48 89 c8                     	movq	%rcx, %rax
  208547: 48 c1 e8 23                  	shrq	$35, %rax
  20854b: 48 83 c0 08                  	addq	$8, %rax
  20854f: 48 31 c8                     	xorq	%rcx, %rax
  208552: 48 0f af c2                  	imulq	%rdx, %rax
  208556: 48 89 c1                     	movq	%rax, %rcx
  208559: 48 c1 e9 1c                  	shrq	$28, %rcx
  20855d: 31 c1                        	xorl	%eax, %ecx
  20855f: 0f b7 d1                     	movzwl	%cx, %edx
  208562: 49 8b 04 d2                  	movq	(%r10,%rdx,8), %rax
  208566: 48 b9 00 00 00 00 00 00 60 00	movabsq	$27021597764222976, %rcx # imm = 0x60000000000000
  208570: 48 21 c1                     	andq	%rax, %rcx
  208573: 4c 39 d9                     	cmpq	%r11, %rcx
  208576: 75 3f                        	jne	0x2085b7 <__sanitizer_cov_trace_const_cmp8+0xd7>
  208578: 89 c1                        	movl	%eax, %ecx
  20857a: 81 e1 ff ff ff 00            	andl	$16777215, %ecx         # imm = 0xFFFFFF
  208580: 44 8d 58 01                  	leal	1(%rax), %r11d
  208584: 41 81 e3 ff ff ff 00         	andl	$16777215, %r11d        # imm = 0xFFFFFF
  20858b: 48 25 00 00 00 ff            	andq	$-16777216, %rax        # imm = 0xFF000000
  208591: 4c 09 d8                     	orq	%r11, %rax
  208594: 49 89 04 d2                  	movq	%rax, (%r10,%rdx,8)
  208598: 4d 8b 19                     	movq	(%r9), %r11
  20859b: 4d 8b 14 d3                  	movq	(%r11,%rdx,8), %r10
  20859f: 48 b8 00 00 00 00 00 00 1f 00	movabsq	$8725724278030336, %rax # imm = 0x1F000000000000
  2085a9: 4c 21 d0                     	andq	%r10, %rax
  2085ac: 4c 39 c0                     	cmpq	%r8, %rax
  2085af: 73 57                        	jae	0x208608 <__sanitizer_cov_trace_const_cmp8+0x128>
  2085b1: 4d 8d 1c d3                  	leaq	(%r11,%rdx,8), %r11
  2085b5: eb 37                        	jmp	0x2085ee <__sanitizer_cov_trace_const_cmp8+0x10e>
  2085b7: 48 b9 ff ff ff ff ff ff 9f ff	movabsq	$-27021597764222977, %rcx # imm = 0xFF9FFFFFFFFFFFFF
  2085c1: 48 21 c8                     	andq	%rcx, %rax
  2085c4: 4c 09 d8                     	orq	%r11, %rax
  2085c7: 49 89 04 d2                  	movq	%rax, (%r10,%rdx,8)
  2085cb: 49 8b 01                     	movq	(%r9), %rax
  2085ce: 48 c7 c1 00 00 00 ff         	movq	$-16777216, %rcx        # imm = 0xFF000000
  2085d5: 48 23 0c d0                  	andq	(%rax,%rdx,8), %rcx
  2085d9: 48 83 c9 01                  	orq	$1, %rcx
  2085dd: 48 89 0c d0                  	movq	%rcx, (%rax,%rdx,8)
  2085e1: 49 8b 09                     	movq	(%r9), %rcx
  2085e4: 4c 8d 1c d1                  	leaq	(%rcx,%rdx,8), %r11
  2085e8: 4c 8b 14 d1                  	movq	(%rcx,%rdx,8), %r10
  2085ec: 31 c9                        	xorl	%ecx, %ecx
  2085ee: 48 b8 ff ff ff ff ff ff e0 ff	movabsq	$-8725724278030337, %rax # imm = 0xFFE0FFFFFFFFFFFF
  2085f8: 4c 21 d0                     	andq	%r10, %rax
  2085fb: 4c 09 c0                     	orq	%r8, %rax
  2085fe: 49 89 03                     	movq	%rax, (%r11)
  208601: 4d 8b 19                     	movq	(%r9), %r11
  208604: 4d 8b 14 d3                  	movq	(%r11,%rdx,8), %r10
  208608: 48 b8 ff ff ff ff ff ff 7f f8	movabsq	$-540431955284459521, %rax # imm = 0xF87FFFFFFFFFFFFF
  208612: 4c 21 d0                     	andq	%r10, %rax
  208615: 49 89 04 d3                  	movq	%rax, (%r11,%rdx,8)
  208619: 48 c1 e2 0a                  	shlq	$10, %rdx
  20861d: 49 03 11                     	addq	(%r9), %rdx
  208620: 83 e1 1f                     	andl	$31, %ecx
  208623: 48 c1 e1 05                  	shlq	$5, %rcx
  208627: 48 89 bc 11 00 00 08 00      	movq	%rdi, 524288(%rcx,%rdx)
  20862f: 48 89 b4 11 08 00 08 00      	movq	%rsi, 524296(%rcx,%rdx)
  208637: c3                           	retq
  208638: 0f 1f 84 00 00 00 00 00      	nopl	(%rax,%rax)

0000000000208640 <__sanitizer_cov_trace_cmp16>:
  208640: 41 56                        	pushq	%r14
  208642: 53                           	pushq	%rbx
  208643: 4c 8d 0d f6 c8 20 00         	leaq	2148598(%rip), %r9      # 0x414f40 <__afl_cmp_map>
  20864a: 4d 8b 19                     	movq	(%r9), %r11
  20864d: 4d 85 db                     	testq	%r11, %r11
  208650: 0f 84 4f 01 00 00            	je	0x2087a5 <__sanitizer_cov_trace_cmp16+0x165>
  208656: 49 ba 00 00 00 00 00 00 20 00	movabsq	$9007199254740992, %r10 # imm = 0x20000000000000
  208660: 49 b8 00 00 00 00 00 00 0f 00	movabsq	$4222124650659840, %r8  # imm = 0xF000000000000
  20866a: 48 8b 44 24 10               	movq	16(%rsp), %rax
  20866f: 48 c1 c0 20                  	rolq	$32, %rax
  208673: 48 bb a2 d5 ec c5 74 b1 3a c7	movabsq	$-4090762196417718878, %rbx # imm = 0xC73AB174C5ECD5A2
  20867d: 48 31 c3                     	xorq	%rax, %rbx
  208680: 49 89 de                     	movq	%rbx, %r14
  208683: 49 c1 c6 18                  	rolq	$24, %r14
  208687: 49 31 de                     	xorq	%rbx, %r14
  20868a: 48 c1 c3 31                  	rolq	$49, %rbx
  20868e: 49 31 de                     	xorq	%rbx, %r14
  208691: 48 bb 25 df 98 1e 65 1c b2 9f	movabsq	$-6939452855193903323, %rbx # imm = 0x9FB21C651E98DF25
  20869b: 4c 0f af f3                  	imulq	%rbx, %r14
  20869f: 4c 89 f0                     	movq	%r14, %rax
  2086a2: 48 c1 e8 23                  	shrq	$35, %rax
  2086a6: 48 83 c0 08                  	addq	$8, %rax
  2086aa: 4c 31 f0                     	xorq	%r14, %rax
  2086ad: 48 0f af c3                  	imulq	%rbx, %rax
  2086b1: 48 89 c3                     	movq	%rax, %rbx
  2086b4: 48 c1 eb 1c                  	shrq	$28, %rbx
  2086b8: 31 c3                        	xorl	%eax, %ebx
  2086ba: 44 0f b7 f3                  	movzwl	%bx, %r14d
  2086be: 4b 8b 1c f3                  	movq	(%r11,%r14,8), %rbx
  2086c2: 48 b8 00 00 00 00 00 00 60 00	movabsq	$27021597764222976, %rax # imm = 0x60000000000000
  2086cc: 48 21 d8                     	andq	%rbx, %rax
  2086cf: 4c 39 d0                     	cmpq	%r10, %rax
  2086d2: 75 3f                        	jne	0x208713 <__sanitizer_cov_trace_cmp16+0xd3>
  2086d4: 41 89 da                     	movl	%ebx, %r10d
  2086d7: 41 81 e2 ff ff ff 00         	andl	$16777215, %r10d        # imm = 0xFFFFFF
  2086de: 8d 43 01                     	leal	1(%rbx), %eax
  2086e1: 25 ff ff ff 00               	andl	$16777215, %eax         # imm = 0xFFFFFF
  2086e6: 48 81 e3 00 00 00 ff         	andq	$-16777216, %rbx        # imm = 0xFF000000
  2086ed: 48 09 c3                     	orq	%rax, %rbx
  2086f0: 4b 89 1c f3                  	movq	%rbx, (%r11,%r14,8)
  2086f4: 49 8b 19                     	movq	(%r9), %rbx
  2086f7: 4e 8b 1c f3                  	movq	(%rbx,%r14,8), %r11
  2086fb: 48 b8 00 00 00 00 00 00 1f 00	movabsq	$8725724278030336, %rax # imm = 0x1F000000000000
  208705: 4c 21 d8                     	andq	%r11, %rax
  208708: 4c 39 c0                     	cmpq	%r8, %rax
  20870b: 73 58                        	jae	0x208765 <__sanitizer_cov_trace_cmp16+0x125>
  20870d: 4a 8d 1c f3                  	leaq	(%rbx,%r14,8), %rbx
  208711: eb 38                        	jmp	0x20874b <__sanitizer_cov_trace_cmp16+0x10b>
  208713: 48 b8 ff ff ff ff ff ff 9f ff	movabsq	$-27021597764222977, %rax # imm = 0xFF9FFFFFFFFFFFFF
  20871d: 48 21 c3                     	andq	%rax, %rbx
  208720: 4c 09 d3                     	orq	%r10, %rbx
  208723: 4b 89 1c f3                  	movq	%rbx, (%r11,%r14,8)
  208727: 49 8b 01                     	movq	(%r9), %rax
  20872a: 48 c7 c3 00 00 00 ff         	movq	$-16777216, %rbx        # imm = 0xFF000000
  208731: 4a 23 1c f0                  	andq	(%rax,%r14,8), %rbx
  208735: 48 83 cb 01                  	orq	$1, %rbx
  208739: 4a 89 1c f0                  	movq	%rbx, (%rax,%r14,8)
  20873d: 49 8b 01                     	movq	(%r9), %rax
  208740: 4a 8d 1c f0                  	leaq	(%rax,%r14,8), %rbx
  208744: 4e 8b 1c f0                  	movq	(%rax,%r14,8), %r11
  208748: 45 31 d2                     	xorl	%r10d, %r10d
  20874b: 48 b8 ff ff ff ff ff ff e0 ff	movabsq	$-8725724278030337, %rax # imm = 0xFFE0FFFFFFFFFFFF
  208755: 4c 21 d8                     	andq	%r11, %rax
  208758: 4c 09 c0                     	orq	%r8, %rax
  20875b: 48 89 03                     	movq	%rax, (%rbx)
  20875e: 49 8b 19                     	movq	(%r9), %rbx
  208761: 4e 8b 1c f3                  	movq	(%rbx,%r14,8), %r11
  208765: 48 b8 ff ff ff ff ff ff 7f f8	movabsq	$-540431955284459521, %rax # imm = 0xF87FFFFFFFFFFFFF
  20876f: 4c 21 d8                     	andq	%r11, %rax
  208772: 4a 89 04 f3                  	movq	%rax, (%rbx,%r14,8)
  208776: 41 83 e2 1f                  	andl	$31, %r10d
  20877a: 49 c1 e6 0a                  	shlq	$10, %r14
  20877e: 4d 03 31                     	addq	(%r9), %r14
  208781: 49 c1 e2 05                  	shlq	$5, %r10
  208785: 4b 89 bc 32 00 00 08 00      	movq	%rdi, 524288(%r10,%r14)
  20878d: 4b 89 94 32 08 00 08 00      	movq	%rdx, 524296(%r10,%r14)
  208795: 4b 89 b4 32 10 00 08 00      	movq	%rsi, 524304(%r10,%r14)
  20879d: 4b 89 8c 32 18 00 08 00      	movq	%rcx, 524312(%r10,%r14)
  2087a5: 5b                           	popq	%rbx
  2087a6: 41 5e                        	popq	%r14
  2087a8: c3                           	retq
  2087a9: 0f 1f 80 00 00 00 00         	nopl	(%rax)

00000000002087b0 <__sanitizer_cov_trace_const_cmp16>:
  2087b0: 41 56                        	pushq	%r14
  2087b2: 53                           	pushq	%rbx
  2087b3: 4c 8d 0d 86 c7 20 00         	leaq	2148230(%rip), %r9      # 0x414f40 <__afl_cmp_map>
  2087ba: 4d 8b 19                     	movq	(%r9), %r11
  2087bd: 4d 85 db                     	testq	%r11, %r11
  2087c0: 0f 84 4f 01 00 00            	je	0x208915 <__sanitizer_cov_trace_const_cmp16+0x165>
  2087c6: 49 ba 00 00 00 00 00 00 20 00	movabsq	$9007199254740992, %r10 # imm = 0x20000000000000
  2087d0: 49 b8 00 00 00 00 00 00 0f 00	movabsq	$4222124650659840, %r8  # imm = 0xF000000000000
  2087da: 48 8b 44 24 10               	movq	16(%rsp), %rax
  2087df: 48 c1 c0 20                  	rolq	$32, %rax
  2087e3: 48 bb a2 d5 ec c5 74 b1 3a c7	movabsq	$-4090762196417718878, %rbx # imm = 0xC73AB174C5ECD5A2
  2087ed: 48 31 c3                     	xorq	%rax, %rbx
  2087f0: 49 89 de                     	movq	%rbx, %r14
  2087f3: 49 c1 c6 18                  	rolq	$24, %r14
  2087f7: 49 31 de                     	xorq	%rbx, %r14
  2087fa: 48 c1 c3 31                  	rolq	$49, %rbx
  2087fe: 49 31 de                     	xorq	%rbx, %r14
  208801: 48 bb 25 df 98 1e 65 1c b2 9f	movabsq	$-6939452855193903323, %rbx # imm = 0x9FB21C651E98DF25
  20880b: 4c 0f af f3                  	imulq	%rbx, %r14
  20880f: 4c 89 f0                     	movq	%r14, %rax
  208812: 48 c1 e8 23                  	shrq	$35, %rax
  208816: 48 83 c0 08                  	addq	$8, %rax
  20881a: 4c 31 f0                     	xorq	%r14, %rax
  20881d: 48 0f af c3                  	imulq	%rbx, %rax
  208821: 48 89 c3                     	movq	%rax, %rbx
  208824: 48 c1 eb 1c                  	shrq	$28, %rbx
  208828: 31 c3                        	xorl	%eax, %ebx
  20882a: 44 0f b7 f3                  	movzwl	%bx, %r14d
  20882e: 4b 8b 1c f3                  	movq	(%r11,%r14,8), %rbx
  208832: 48 b8 00 00 00 00 00 00 60 00	movabsq	$27021597764222976, %rax # imm = 0x60000000000000
  20883c: 48 21 d8                     	andq	%rbx, %rax
  20883f: 4c 39 d0                     	cmpq	%r10, %rax
  208842: 75 3f                        	jne	0x208883 <__sanitizer_cov_trace_const_cmp16+0xd3>
  208844: 41 89 da                     	movl	%ebx, %r10d
  208847: 41 81 e2 ff ff ff 00         	andl	$16777215, %r10d        # imm = 0xFFFFFF
  20884e: 8d 43 01                     	leal	1(%rbx), %eax
  208851: 25 ff ff ff 00               	andl	$16777215, %eax         # imm = 0xFFFFFF
  208856: 48 81 e3 00 00 00 ff         	andq	$-16777216, %rbx        # imm = 0xFF000000
  20885d: 48 09 c3                     	orq	%rax, %rbx
  208860: 4b 89 1c f3                  	movq	%rbx, (%r11,%r14,8)
  208864: 49 8b 19                     	movq	(%r9), %rbx
  208867: 4e 8b 1c f3                  	movq	(%rbx,%r14,8), %r11
  20886b: 48 b8 00 00 00 00 00 00 1f 00	movabsq	$8725724278030336, %rax # imm = 0x1F000000000000
  208875: 4c 21 d8                     	andq	%r11, %rax
  208878: 4c 39 c0                     	cmpq	%r8, %rax
  20887b: 73 58                        	jae	0x2088d5 <__sanitizer_cov_trace_const_cmp16+0x125>
  20887d: 4a 8d 1c f3                  	leaq	(%rbx,%r14,8), %rbx
  208881: eb 38                        	jmp	0x2088bb <__sanitizer_cov_trace_const_cmp16+0x10b>
  208883: 48 b8 ff ff ff ff ff ff 9f ff	movabsq	$-27021597764222977, %rax # imm = 0xFF9FFFFFFFFFFFFF
  20888d: 48 21 c3                     	andq	%rax, %rbx
  208890: 4c 09 d3                     	orq	%r10, %rbx
  208893: 4b 89 1c f3                  	movq	%rbx, (%r11,%r14,8)
  208897: 49 8b 01                     	movq	(%r9), %rax
  20889a: 48 c7 c3 00 00 00 ff         	movq	$-16777216, %rbx        # imm = 0xFF000000
  2088a1: 4a 23 1c f0                  	andq	(%rax,%r14,8), %rbx
  2088a5: 48 83 cb 01                  	orq	$1, %rbx
  2088a9: 4a 89 1c f0                  	movq	%rbx, (%rax,%r14,8)
  2088ad: 49 8b 01                     	movq	(%r9), %rax
  2088b0: 4a 8d 1c f0                  	leaq	(%rax,%r14,8), %rbx
  2088b4: 4e 8b 1c f0                  	movq	(%rax,%r14,8), %r11
  2088b8: 45 31 d2                     	xorl	%r10d, %r10d
  2088bb: 48 b8 ff ff ff ff ff ff e0 ff	movabsq	$-8725724278030337, %rax # imm = 0xFFE0FFFFFFFFFFFF
  2088c5: 4c 21 d8                     	andq	%r11, %rax
  2088c8: 4c 09 c0                     	orq	%r8, %rax
  2088cb: 48 89 03                     	movq	%rax, (%rbx)
  2088ce: 49 8b 19                     	movq	(%r9), %rbx
  2088d1: 4e 8b 1c f3                  	movq	(%rbx,%r14,8), %r11
  2088d5: 48 b8 ff ff ff ff ff ff 7f f8	movabsq	$-540431955284459521, %rax # imm = 0xF87FFFFFFFFFFFFF
  2088df: 4c 21 d8                     	andq	%r11, %rax
  2088e2: 4a 89 04 f3                  	movq	%rax, (%rbx,%r14,8)
  2088e6: 41 83 e2 1f                  	andl	$31, %r10d
  2088ea: 49 c1 e6 0a                  	shlq	$10, %r14
  2088ee: 4d 03 31                     	addq	(%r9), %r14
  2088f1: 49 c1 e2 05                  	shlq	$5, %r10
  2088f5: 4b 89 bc 32 00 00 08 00      	movq	%rdi, 524288(%r10,%r14)
  2088fd: 4b 89 94 32 08 00 08 00      	movq	%rdx, 524296(%r10,%r14)
  208905: 4b 89 b4 32 10 00 08 00      	movq	%rsi, 524304(%r10,%r14)
  20890d: 4b 89 8c 32 18 00 08 00      	movq	%rcx, 524312(%r10,%r14)
  208915: 5b                           	popq	%rbx
  208916: 41 5e                        	popq	%r14
  208918: c3                           	retq
  208919: 0f 1f 80 00 00 00 00         	nopl	(%rax)

0000000000208920 <__sanitizer_cov_trace_switch>:
  208920: 55                           	pushq	%rbp
  208921: 41 57                        	pushq	%r15
  208923: 41 56                        	pushq	%r14
  208925: 41 55                        	pushq	%r13
  208927: 41 54                        	pushq	%r12
  208929: 53                           	pushq	%rbx
  20892a: 4c 8d 25 0f c6 20 00         	leaq	2147855(%rip), %r12     # 0x414f40 <__afl_cmp_map>
  208931: 49 8b 2c 24                  	movq	(%r12), %rbp
  208935: 48 85 ed                     	testq	%rbp, %rbp
  208938: 0f 84 a0 01 00 00            	je	0x208ade <__sanitizer_cov_trace_switch+0x1be>
  20893e: 48 83 3e 00                  	cmpq	$0, (%rsi)
  208942: 0f 84 96 01 00 00            	je	0x208ade <__sanitizer_cov_trace_switch+0x1be>
  208948: 49 ba 25 df 98 1e 65 1c b2 9f	movabsq	$-6939452855193903323, %r10 # imm = 0x9FB21C651E98DF25
  208952: 49 b9 00 00 00 00 00 00 20 00	movabsq	$9007199254740992, %r9  # imm = 0x20000000000000
  20895c: 49 b8 00 00 00 00 00 00 07 00	movabsq	$1970324836974592, %r8  # imm = 0x7000000000000
  208966: 4c 8b 6c 24 30               	movq	48(%rsp), %r13
  20896b: 31 c9                        	xorl	%ecx, %ecx
  20896d: e9 b9 00 00 00               	jmp	0x208a2b <__sanitizer_cov_trace_switch+0x10b>
  208972: 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00    	nopw	%cs:(%rax,%rax)
  208980: 48 b8 ff ff ff ff ff ff 9f ff	movabsq	$-27021597764222977, %rax # imm = 0xFF9FFFFFFFFFFFFF
  20898a: 49 21 c7                     	andq	%rax, %r15
  20898d: 4d 09 cf                     	orq	%r9, %r15
  208990: 4e 89 7c f5 00               	movq	%r15, (%rbp,%r14,8)
  208995: 49 8b 04 24                  	movq	(%r12), %rax
  208999: 4a 8b 14 f0                  	movq	(%rax,%r14,8), %rdx
  20899d: 48 c7 c5 00 00 00 ff         	movq	$-16777216, %rbp        # imm = 0xFF000000
  2089a4: 48 21 ea                     	andq	%rbp, %rdx
  2089a7: 48 83 ca 01                  	orq	$1, %rdx
  2089ab: 4a 89 14 f0                  	movq	%rdx, (%rax,%r14,8)
  2089af: 49 8b 04 24                  	movq	(%r12), %rax
  2089b3: 4a 8d 1c f0                  	leaq	(%rax,%r14,8), %rbx
  2089b7: 4a 8b 2c f0                  	movq	(%rax,%r14,8), %rbp
  2089bb: 45 31 db                     	xorl	%r11d, %r11d
  2089be: 48 b8 ff ff ff ff ff ff e0 ff	movabsq	$-8725724278030337, %rax # imm = 0xFFE0FFFFFFFFFFFF
  2089c8: 48 21 c5                     	andq	%rax, %rbp
  2089cb: 4c 09 c5                     	orq	%r8, %rbp
  2089ce: 48 89 2b                     	movq	%rbp, (%rbx)
  2089d1: 49 8b 04 24                  	movq	(%r12), %rax
  2089d5: 4a 8b 14 f0                  	movq	(%rax,%r14,8), %rdx
  2089d9: 48 bb ff ff ff ff ff ff 7f f8	movabsq	$-540431955284459521, %rbx # imm = 0xF87FFFFFFFFFFFFF
  2089e3: 48 21 da                     	andq	%rbx, %rdx
  2089e6: 48 bb 00 00 00 00 00 00 80 00	movabsq	$36028797018963968, %rbx # imm = 0x80000000000000
  2089f0: 48 09 da                     	orq	%rbx, %rdx
  2089f3: 4a 89 14 f0                  	movq	%rdx, (%rax,%r14,8)
  2089f7: 41 83 e3 1f                  	andl	$31, %r11d
  2089fb: 49 8b 2c 24                  	movq	(%r12), %rbp
  2089ff: 49 c1 e6 0a                  	shlq	$10, %r14
  208a03: 49 01 ee                     	addq	%rbp, %r14
  208a06: 49 c1 e3 05                  	shlq	$5, %r11
  208a0a: 4b 89 bc 33 00 00 08 00      	movq	%rdi, 524288(%r11,%r14)
  208a12: 48 8b 44 ce 10               	movq	16(%rsi,%rcx,8), %rax
  208a17: 4b 89 84 33 08 00 08 00      	movq	%rax, 524296(%r11,%r14)
  208a1f: 48 ff c1                     	incq	%rcx
  208a22: 48 3b 0e                     	cmpq	(%rsi), %rcx
  208a25: 0f 83 b3 00 00 00            	jae	0x208ade <__sanitizer_cov_trace_switch+0x1be>
  208a2b: 4a 8d 14 29                  	leaq	(%rcx,%r13), %rdx
  208a2f: 48 c1 c2 20                  	rolq	$32, %rdx
  208a33: 48 b8 a2 d5 ec c5 74 b1 3a c7	movabsq	$-4090762196417718878, %rax # imm = 0xC73AB174C5ECD5A2
  208a3d: 48 31 c2                     	xorq	%rax, %rdx
  208a40: 48 89 d3                     	movq	%rdx, %rbx
  208a43: 48 c1 c3 18                  	rolq	$24, %rbx
  208a47: 48 31 d3                     	xorq	%rdx, %rbx
  208a4a: 48 c1 c2 31                  	rolq	$49, %rdx
  208a4e: 48 31 d3                     	xorq	%rdx, %rbx
  208a51: 49 0f af da                  	imulq	%r10, %rbx
  208a55: 48 89 d8                     	movq	%rbx, %rax
  208a58: 48 c1 e8 23                  	shrq	$35, %rax
  208a5c: 48 83 c0 08                  	addq	$8, %rax
  208a60: 48 31 d8                     	xorq	%rbx, %rax
  208a63: 49 0f af c2                  	imulq	%r10, %rax
  208a67: 48 89 c2                     	movq	%rax, %rdx
  208a6a: 48 c1 ea 1c                  	shrq	$28, %rdx
  208a6e: 31 c2                        	xorl	%eax, %edx
  208a70: 44 0f b7 f2                  	movzwl	%dx, %r14d
  208a74: 4e 8b 7c f5 00               	movq	(%rbp,%r14,8), %r15
  208a79: 4c 89 f8                     	movq	%r15, %rax
  208a7c: 48 ba 00 00 00 00 00 00 60 00	movabsq	$27021597764222976, %rdx # imm = 0x60000000000000
  208a86: 48 21 d0                     	andq	%rdx, %rax
  208a89: 4c 39 c8                     	cmpq	%r9, %rax
  208a8c: 0f 85 ee fe ff ff            	jne	0x208980 <__sanitizer_cov_trace_switch+0x60>
  208a92: 45 89 fb                     	movl	%r15d, %r11d
  208a95: 41 81 e3 ff ff ff 00         	andl	$16777215, %r11d        # imm = 0xFFFFFF
  208a9c: 41 8d 47 01                  	leal	1(%r15), %eax
  208aa0: 25 ff ff ff 00               	andl	$16777215, %eax         # imm = 0xFFFFFF
  208aa5: 49 81 e7 00 00 00 ff         	andq	$-16777216, %r15        # imm = 0xFF000000
  208aac: 49 09 c7                     	orq	%rax, %r15
  208aaf: 4e 89 7c f5 00               	movq	%r15, (%rbp,%r14,8)
  208ab4: 49 8b 1c 24                  	movq	(%r12), %rbx
  208ab8: 4a 8b 2c f3                  	movq	(%rbx,%r14,8), %rbp
  208abc: 48 89 e8                     	movq	%rbp, %rax
  208abf: 48 ba 00 00 00 00 00 00 1f 00	movabsq	$8725724278030336, %rdx # imm = 0x1F000000000000
  208ac9: 48 21 d0                     	andq	%rdx, %rax
  208acc: 4c 39 c0                     	cmpq	%r8, %rax
  208acf: 0f 83 fc fe ff ff            	jae	0x2089d1 <__sanitizer_cov_trace_switch+0xb1>
  208ad5: 4a 8d 1c f3                  	leaq	(%rbx,%r14,8), %rbx
  208ad9: e9 e0 fe ff ff               	jmp	0x2089be <__sanitizer_cov_trace_switch+0x9e>
  208ade: 5b                           	popq	%rbx
  208adf: 41 5c                        	popq	%r12
  208ae1: 41 5d                        	popq	%r13
  208ae3: 41 5e                        	popq	%r14
  208ae5: 41 5f                        	popq	%r15
  208ae7: 5d                           	popq	%rbp
  208ae8: c3                           	retq
  208ae9: 0f 1f 80 00 00 00 00         	nopl	(%rax)

0000000000208af0 <__asan_region_is_poisoned>:
  208af0: 31 c0                        	xorl	%eax, %eax
  208af2: c3                           	retq
  208af3: 66 66 66 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

0000000000208b00 <__cmplog_rtn_hook_strn>:
  208b00: 55                           	pushq	%rbp
  208b01: 41 57                        	pushq	%r15
  208b03: 41 56                        	pushq	%r14
  208b05: 41 55                        	pushq	%r13
  208b07: 41 54                        	pushq	%r12
  208b09: 53                           	pushq	%rbx
  208b0a: 50                           	pushq	%rax
  208b0b: 48 85 d2                     	testq	%rdx, %rdx
  208b0e: 0f 84 82 01 00 00            	je	0x208c96 <__cmplog_rtn_hook_strn+0x196>
  208b14: 48 8d 05 25 c4 20 00         	leaq	2147365(%rip), %rax     # 0x414f40 <__afl_cmp_map>
  208b1b: 48 83 38 00                  	cmpq	$0, (%rax)
  208b1f: 0f 84 71 01 00 00            	je	0x208c96 <__cmplog_rtn_hook_strn+0x196>
  208b25: 49 89 f6                     	movq	%rsi, %r14
  208b28: 49 89 ff                     	movq	%rdi, %r15
  208b2b: 48 83 fa 1f                  	cmpq	$31, %rdx
  208b2f: 41 bc 1f 00 00 00            	movl	$31, %r12d
  208b35: 4c 0f 42 e2                  	cmovbq	%rdx, %r12
  208b39: 4c 89 e6                     	movq	%r12, %rsi
  208b3c: e8 4f 9f 00 00               	callq	0x212a90 <strnlen@plt>
  208b41: 48 89 c3                     	movq	%rax, %rbx
  208b44: 41 89 dd                     	movl	%ebx, %r13d
  208b47: 83 fb 1e                     	cmpl	$30, %ebx
  208b4a: 7f 7c                        	jg	0x208bc8 <__cmplog_rtn_hook_strn+0xc8>
  208b4c: 45 31 ed                     	xorl	%r13d, %r13d
  208b4f: 4d 85 ff                     	testq	%r15, %r15
  208b52: 74 74                        	je	0x208bc8 <__cmplog_rtn_hook_strn+0xc8>
  208b54: 48 c1 e3 20                  	shlq	$32, %rbx
  208b58: 48 b8 00 00 00 00 01 00 00 00	movabsq	$4294967296, %rax       # imm = 0x100000000
  208b62: 48 01 c3                     	addq	%rax, %rbx
  208b65: 48 c1 fb 20                  	sarq	$32, %rbx
  208b69: 4c 89 ff                     	movq	%r15, %rdi
  208b6c: 48 89 de                     	movq	%rbx, %rsi
  208b6f: e8 7c ff ff ff               	callq	0x208af0 <__asan_region_is_poisoned>
  208b74: 48 85 c0                     	testq	%rax, %rax
  208b77: 75 4f                        	jne	0x208bc8 <__cmplog_rtn_hook_strn+0xc8>
  208b79: 8b 35 a9 c1 00 00            	movl	49577(%rip), %esi       # 0x214d28 <__afl_dummy_fd+0x4>
  208b7f: 45 31 ed                     	xorl	%r13d, %r13d
  208b82: bf 01 00 00 00               	movl	$1, %edi
  208b87: 4c 89 fa                     	movq	%r15, %rdx
  208b8a: 48 89 d9                     	movq	%rbx, %rcx
  208b8d: 31 c0                        	xorl	%eax, %eax
  208b8f: e8 7c 9d 00 00               	callq	0x212910 <syscall@plt>
  208b94: 48 85 c0                     	testq	%rax, %rax
  208b97: 7e 2f                        	jle	0x208bc8 <__cmplog_rtn_hook_strn+0xc8>
  208b99: 48 89 c5                     	movq	%rax, %rbp
  208b9c: 48 39 d8                     	cmpq	%rbx, %rax
  208b9f: 77 27                        	ja	0x208bc8 <__cmplog_rtn_hook_strn+0xc8>
  208ba1: bf 1e 00 00 00               	movl	$30, %edi
  208ba6: e8 f5 9e 00 00               	callq	0x212aa0 <sysconf@plt>
  208bab: 48 89 c1                     	movq	%rax, %rcx
  208bae: 48 f7 d9                     	negq	%rcx
  208bb1: 4c 21 f9                     	andq	%r15, %rcx
  208bb4: 48 01 c1                     	addq	%rax, %rcx
  208bb7: 4c 01 fb                     	addq	%r15, %rbx
  208bba: 89 c8                        	movl	%ecx, %eax
  208bbc: 44 29 f8                     	subl	%r15d, %eax
  208bbf: 48 39 d9                     	cmpq	%rbx, %rcx
  208bc2: 0f 46 e8                     	cmovbel	%eax, %ebp
  208bc5: 41 89 ed                     	movl	%ebp, %r13d
  208bc8: 4c 89 f7                     	movq	%r14, %rdi
  208bcb: 4c 89 e6                     	movq	%r12, %rsi
  208bce: e8 bd 9e 00 00               	callq	0x212a90 <strnlen@plt>
  208bd3: 48 89 c3                     	movq	%rax, %rbx
  208bd6: 41 89 dc                     	movl	%ebx, %r12d
  208bd9: 83 fb 1e                     	cmpl	$30, %ebx
  208bdc: 4c 8d 05 5d c3 20 00         	leaq	2147165(%rip), %r8      # 0x414f40 <__afl_cmp_map>
  208be3: 0f 8f 9e 00 00 00            	jg	0x208c87 <__cmplog_rtn_hook_strn+0x187>
  208be9: 45 31 e4                     	xorl	%r12d, %r12d
  208bec: 4d 85 ff                     	testq	%r15, %r15
  208bef: 0f 84 92 00 00 00            	je	0x208c87 <__cmplog_rtn_hook_strn+0x187>
  208bf5: 48 c1 e3 20                  	shlq	$32, %rbx
  208bf9: 48 b8 00 00 00 00 01 00 00 00	movabsq	$4294967296, %rax       # imm = 0x100000000
  208c03: 48 01 c3                     	addq	%rax, %rbx
  208c06: 48 c1 fb 20                  	sarq	$32, %rbx
  208c0a: 4c 89 ff                     	movq	%r15, %rdi
  208c0d: 48 89 de                     	movq	%rbx, %rsi
  208c10: e8 db fe ff ff               	callq	0x208af0 <__asan_region_is_poisoned>
  208c15: 4c 8d 05 24 c3 20 00         	leaq	2147108(%rip), %r8      # 0x414f40 <__afl_cmp_map>
  208c1c: 48 85 c0                     	testq	%rax, %rax
  208c1f: 75 66                        	jne	0x208c87 <__cmplog_rtn_hook_strn+0x187>
  208c21: 8b 35 01 c1 00 00            	movl	49409(%rip), %esi       # 0x214d28 <__afl_dummy_fd+0x4>
  208c27: 45 31 e4                     	xorl	%r12d, %r12d
  208c2a: bf 01 00 00 00               	movl	$1, %edi
  208c2f: 4c 89 fa                     	movq	%r15, %rdx
  208c32: 48 89 d9                     	movq	%rbx, %rcx
  208c35: 31 c0                        	xorl	%eax, %eax
  208c37: e8 d4 9c 00 00               	callq	0x212910 <syscall@plt>
  208c3c: 48 85 c0                     	testq	%rax, %rax
  208c3f: 7e 3f                        	jle	0x208c80 <__cmplog_rtn_hook_strn+0x180>
  208c41: 48 89 c5                     	movq	%rax, %rbp
  208c44: 48 39 d8                     	cmpq	%rbx, %rax
  208c47: 4c 8d 05 f2 c2 20 00         	leaq	2147058(%rip), %r8      # 0x414f40 <__afl_cmp_map>
  208c4e: 77 37                        	ja	0x208c87 <__cmplog_rtn_hook_strn+0x187>
  208c50: bf 1e 00 00 00               	movl	$30, %edi
  208c55: e8 46 9e 00 00               	callq	0x212aa0 <sysconf@plt>
  208c5a: 4c 8d 05 df c2 20 00         	leaq	2147039(%rip), %r8      # 0x414f40 <__afl_cmp_map>
  208c61: 48 89 c1                     	movq	%rax, %rcx
  208c64: 48 f7 d9                     	negq	%rcx
  208c67: 4c 21 f9                     	andq	%r15, %rcx
  208c6a: 48 01 c1                     	addq	%rax, %rcx
  208c6d: 4c 01 fb                     	addq	%r15, %rbx
  208c70: 89 c8                        	movl	%ecx, %eax
  208c72: 44 29 f8                     	subl	%r15d, %eax
  208c75: 48 39 d9                     	cmpq	%rbx, %rcx
  208c78: 0f 46 e8                     	cmovbel	%eax, %ebp
  208c7b: 41 89 ec                     	movl	%ebp, %r12d
  208c7e: eb 07                        	jmp	0x208c87 <__cmplog_rtn_hook_strn+0x187>
  208c80: 4c 8d 05 b9 c2 20 00         	leaq	2147001(%rip), %r8      # 0x414f40 <__afl_cmp_map>
  208c87: 45 39 e5                     	cmpl	%r12d, %r13d
  208c8a: 44 89 e0                     	movl	%r12d, %eax
  208c8d: 41 0f 4f c5                  	cmovgl	%r13d, %eax
  208c91: 83 f8 02                     	cmpl	$2, %eax
  208c94: 7d 0f                        	jge	0x208ca5 <__cmplog_rtn_hook_strn+0x1a5>
  208c96: 48 83 c4 08                  	addq	$8, %rsp
  208c9a: 5b                           	popq	%rbx
  208c9b: 41 5c                        	popq	%r12
  208c9d: 41 5d                        	popq	%r13
  208c9f: 41 5e                        	popq	%r14
  208ca1: 41 5f                        	popq	%r15
  208ca3: 5d                           	popq	%rbp
  208ca4: c3                           	retq
  208ca5: 48 8b 4c 24 38               	movq	56(%rsp), %rcx
  208caa: 48 c1 c1 20                  	rolq	$32, %rcx
  208cae: 48 ba a2 d5 ec c5 74 b1 3a c7	movabsq	$-4090762196417718878, %rdx # imm = 0xC73AB174C5ECD5A2
  208cb8: 48 31 ca                     	xorq	%rcx, %rdx
  208cbb: 48 89 d6                     	movq	%rdx, %rsi
  208cbe: 48 c1 c6 18                  	rolq	$24, %rsi
  208cc2: 48 31 d6                     	xorq	%rdx, %rsi
  208cc5: 48 c1 c2 31                  	rolq	$49, %rdx
  208cc9: 48 b9 00 00 00 00 00 00 40 00	movabsq	$18014398509481984, %rcx # imm = 0x40000000000000
  208cd3: 48 31 d6                     	xorq	%rdx, %rsi
  208cd6: 48 ba 25 df 98 1e 65 1c b2 9f	movabsq	$-6939452855193903323, %rdx # imm = 0x9FB21C651E98DF25
  208ce0: 48 0f af f2                  	imulq	%rdx, %rsi
  208ce4: 48 89 f7                     	movq	%rsi, %rdi
  208ce7: 48 c1 ef 23                  	shrq	$35, %rdi
  208ceb: 48 83 c7 08                  	addq	$8, %rdi
  208cef: 48 31 f7                     	xorq	%rsi, %rdi
  208cf2: 48 0f af fa                  	imulq	%rdx, %rdi
  208cf6: 48 89 fa                     	movq	%rdi, %rdx
  208cf9: 48 c1 ea 1c                  	shrq	$28, %rdx
  208cfd: 31 fa                        	xorl	%edi, %edx
  208cff: 0f b7 da                     	movzwl	%dx, %ebx
  208d02: 49 8b 10                     	movq	(%r8), %rdx
  208d05: 48 8b 34 da                  	movq	(%rdx,%rbx,8), %rsi
  208d09: 48 bf 00 00 00 00 00 00 60 00	movabsq	$27021597764222976, %rdi # imm = 0x60000000000000
  208d13: 48 21 f7                     	andq	%rsi, %rdi
  208d16: 48 39 cf                     	cmpq	%rcx, %rdi
  208d19: 75 3a                        	jne	0x208d55 <__cmplog_rtn_hook_strn+0x255>
  208d1b: 89 f5                        	movl	%esi, %ebp
  208d1d: 81 e5 ff ff ff 00            	andl	$16777215, %ebp         # imm = 0xFFFFFF
  208d23: 8d 4e 01                     	leal	1(%rsi), %ecx
  208d26: 81 e1 ff ff ff 00            	andl	$16777215, %ecx         # imm = 0xFFFFFF
  208d2c: 48 81 e6 00 00 00 ff         	andq	$-16777216, %rsi        # imm = 0xFF000000
  208d33: 48 09 ce                     	orq	%rcx, %rsi
  208d36: 48 89 34 da                  	movq	%rsi, (%rdx,%rbx,8)
  208d3a: 49 8b 10                     	movq	(%r8), %rdx
  208d3d: 48 8b 0c da                  	movq	(%rdx,%rbx,8), %rcx
  208d41: 48 89 ce                     	movq	%rcx, %rsi
  208d44: 48 c1 ee 30                  	shrq	$48, %rsi
  208d48: 83 e6 1f                     	andl	$31, %esi
  208d4b: 39 c6                        	cmpl	%eax, %esi
  208d4d: 73 5a                        	jae	0x208da9 <__cmplog_rtn_hook_strn+0x2a9>
  208d4f: 48 8d 14 da                  	leaq	(%rdx,%rbx,8), %rdx
  208d53: eb 37                        	jmp	0x208d8c <__cmplog_rtn_hook_strn+0x28c>
  208d55: 48 bf ff ff ff ff ff ff 9f ff	movabsq	$-27021597764222977, %rdi # imm = 0xFF9FFFFFFFFFFFFF
  208d5f: 48 21 fe                     	andq	%rdi, %rsi
  208d62: 48 09 ce                     	orq	%rcx, %rsi
  208d65: 48 89 34 da                  	movq	%rsi, (%rdx,%rbx,8)
  208d69: 49 8b 08                     	movq	(%r8), %rcx
  208d6c: 48 c7 c2 00 00 00 ff         	movq	$-16777216, %rdx        # imm = 0xFF000000
  208d73: 48 23 14 d9                  	andq	(%rcx,%rbx,8), %rdx
  208d77: 48 83 ca 01                  	orq	$1, %rdx
  208d7b: 48 89 14 d9                  	movq	%rdx, (%rcx,%rbx,8)
  208d7f: 49 8b 08                     	movq	(%r8), %rcx
  208d82: 48 8d 14 d9                  	leaq	(%rcx,%rbx,8), %rdx
  208d86: 48 8b 0c d9                  	movq	(%rcx,%rbx,8), %rcx
  208d8a: 31 ed                        	xorl	%ebp, %ebp
  208d8c: 8d 70 ff                     	leal	-1(%rax), %esi
  208d8f: 83 e6 1f                     	andl	$31, %esi
  208d92: 48 c1 e6 30                  	shlq	$48, %rsi
  208d96: 48 bf ff ff ff ff ff ff e0 ff	movabsq	$-8725724278030337, %rdi # imm = 0xFFE0FFFFFFFFFFFF
  208da0: 48 21 cf                     	andq	%rcx, %rdi
  208da3: 48 09 f7                     	orq	%rsi, %rdi
  208da6: 48 89 3a                     	movq	%rdi, (%rdx)
  208da9: 48 c1 e3 0a                  	shlq	$10, %rbx
  208dad: 49 03 18                     	addq	(%r8), %rbx
  208db0: 83 e5 07                     	andl	$7, %ebp
  208db3: 34 80                        	xorb	$-128, %al
  208db5: 48 c1 e5 06                  	shlq	$6, %rbp
  208db9: 48 8d 3c 2b                  	leaq	(%rbx,%rbp), %rdi
  208dbd: 48 81 c7 00 00 08 00         	addq	$524288, %rdi           # imm = 0x80000
  208dc4: 88 84 1d 1f 00 08 00         	movb	%al, 524319(%rbp,%rbx)
  208dcb: 88 84 1d 3f 00 08 00         	movb	%al, 524351(%rbp,%rbx)
  208dd2: 49 63 d5                     	movslq	%r13d, %rdx
  208dd5: 4c 89 fe                     	movq	%r15, %rsi
  208dd8: e8 d3 9c 00 00               	callq	0x212ab0 <memcpy@plt>
  208ddd: 48 8d 3c 2b                  	leaq	(%rbx,%rbp), %rdi
  208de1: 48 81 c7 20 00 08 00         	addq	$524320, %rdi           # imm = 0x80020
  208de8: 49 63 d4                     	movslq	%r12d, %rdx
  208deb: 4c 89 f6                     	movq	%r14, %rsi
  208dee: 48 83 c4 08                  	addq	$8, %rsp
  208df2: 5b                           	popq	%rbx
  208df3: 41 5c                        	popq	%r12
  208df5: 41 5d                        	popq	%r13
  208df7: 41 5e                        	popq	%r14
  208df9: 41 5f                        	popq	%r15
  208dfb: 5d                           	popq	%rbp
  208dfc: e9 af 9c 00 00               	jmp	0x212ab0 <memcpy@plt>
  208e01: 66 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%rax,%rax)

0000000000208e10 <__cmplog_rtn_hook_str>:
  208e10: 55                           	pushq	%rbp
  208e11: 41 57                        	pushq	%r15
  208e13: 41 56                        	pushq	%r14
  208e15: 41 55                        	pushq	%r13
  208e17: 41 54                        	pushq	%r12
  208e19: 53                           	pushq	%rbx
  208e1a: 48 83 ec 18                  	subq	$24, %rsp
  208e1e: 4c 8d 3d 1b c1 20 00         	leaq	2146587(%rip), %r15     # 0x414f40 <__afl_cmp_map>
  208e25: 49 8b 2f                     	movq	(%r15), %rbp
  208e28: 48 85 ed                     	testq	%rbp, %rbp
  208e2b: 74 44                        	je	0x208e71 <__cmplog_rtn_hook_str+0x61>
  208e2d: 49 89 fc                     	movq	%rdi, %r12
  208e30: 48 85 ff                     	testq	%rdi, %rdi
  208e33: 74 3c                        	je	0x208e71 <__cmplog_rtn_hook_str+0x61>
  208e35: 48 89 f3                     	movq	%rsi, %rbx
  208e38: 48 85 f6                     	testq	%rsi, %rsi
  208e3b: 74 34                        	je	0x208e71 <__cmplog_rtn_hook_str+0x61>
  208e3d: be 1e 00 00 00               	movl	$30, %esi
  208e42: 4c 89 e7                     	movq	%r12, %rdi
  208e45: e8 46 9c 00 00               	callq	0x212a90 <strnlen@plt>
  208e4a: 49 89 c5                     	movq	%rax, %r13
  208e4d: 44 8d 70 01                  	leal	1(%rax), %r14d
  208e51: be 1e 00 00 00               	movl	$30, %esi
  208e56: 48 89 df                     	movq	%rbx, %rdi
  208e59: e8 32 9c 00 00               	callq	0x212a90 <strnlen@plt>
  208e5e: 44 8d 48 01                  	leal	1(%rax), %r9d
  208e62: 45 39 ce                     	cmpl	%r9d, %r14d
  208e65: 44 89 c9                     	movl	%r9d, %ecx
  208e68: 41 0f 4f ce                  	cmovgl	%r14d, %ecx
  208e6c: 83 f9 03                     	cmpl	$3, %ecx
  208e6f: 7d 0f                        	jge	0x208e80 <__cmplog_rtn_hook_str+0x70>
  208e71: 48 83 c4 18                  	addq	$24, %rsp
  208e75: 5b                           	popq	%rbx
  208e76: 41 5c                        	popq	%r12
  208e78: 41 5d                        	popq	%r13
  208e7a: 41 5e                        	popq	%r14
  208e7c: 41 5f                        	popq	%r15
  208e7e: 5d                           	popq	%rbp
  208e7f: c3                           	retq
  208e80: 4d 89 ea                     	movq	%r13, %r10
  208e83: 48 89 5c 24 10               	movq	%rbx, 16(%rsp)
  208e88: 49 b8 00 00 00 00 00 00 40 00	movabsq	$18014398509481984, %r8 # imm = 0x40000000000000
  208e92: 48 8b 74 24 48               	movq	72(%rsp), %rsi
  208e97: 48 c1 c6 20                  	rolq	$32, %rsi
  208e9b: 48 bf a2 d5 ec c5 74 b1 3a c7	movabsq	$-4090762196417718878, %rdi # imm = 0xC73AB174C5ECD5A2
  208ea5: 48 31 f7                     	xorq	%rsi, %rdi
  208ea8: 48 89 fa                     	movq	%rdi, %rdx
  208eab: 48 c1 c2 18                  	rolq	$24, %rdx
  208eaf: 48 31 fa                     	xorq	%rdi, %rdx
  208eb2: 48 c1 c7 31                  	rolq	$49, %rdi
  208eb6: 48 31 fa                     	xorq	%rdi, %rdx
  208eb9: 48 bf 25 df 98 1e 65 1c b2 9f	movabsq	$-6939452855193903323, %rdi # imm = 0x9FB21C651E98DF25
  208ec3: 48 0f af d7                  	imulq	%rdi, %rdx
  208ec7: 48 89 d6                     	movq	%rdx, %rsi
  208eca: 48 c1 ee 23                  	shrq	$35, %rsi
  208ece: 48 83 c6 08                  	addq	$8, %rsi
  208ed2: 48 31 d6                     	xorq	%rdx, %rsi
  208ed5: 48 0f af f7                  	imulq	%rdi, %rsi
  208ed9: 48 89 f2                     	movq	%rsi, %rdx
  208edc: 48 c1 ea 1c                  	shrq	$28, %rdx
  208ee0: 31 f2                        	xorl	%esi, %edx
  208ee2: 44 0f b7 ea                  	movzwl	%dx, %r13d
  208ee6: 4a 8b 74 ed 00               	movq	(%rbp,%r13,8), %rsi
  208eeb: 48 ba 00 00 00 00 00 00 60 00	movabsq	$27021597764222976, %rdx # imm = 0x60000000000000
  208ef5: 48 21 f2                     	andq	%rsi, %rdx
  208ef8: 4c 39 c2                     	cmpq	%r8, %rdx
  208efb: 44 89 4c 24 0c               	movl	%r9d, 12(%rsp)
  208f00: 75 43                        	jne	0x208f45 <__cmplog_rtn_hook_str+0x135>
  208f02: 4c 89 ff                     	movq	%r15, %rdi
  208f05: 41 89 f7                     	movl	%esi, %r15d
  208f08: 41 81 e7 ff ff ff 00         	andl	$16777215, %r15d        # imm = 0xFFFFFF
  208f0f: 8d 56 01                     	leal	1(%rsi), %edx
  208f12: 81 e2 ff ff ff 00            	andl	$16777215, %edx         # imm = 0xFFFFFF
  208f18: 48 81 e6 00 00 00 ff         	andq	$-16777216, %rsi        # imm = 0xFF000000
  208f1f: 48 09 d6                     	orq	%rdx, %rsi
  208f22: 4a 89 74 ed 00               	movq	%rsi, (%rbp,%r13,8)
  208f27: 48 89 fd                     	movq	%rdi, %rbp
  208f2a: 48 8b 37                     	movq	(%rdi), %rsi
  208f2d: 4a 8b 14 ee                  	movq	(%rsi,%r13,8), %rdx
  208f31: 48 89 d7                     	movq	%rdx, %rdi
  208f34: 48 c1 ef 30                  	shrq	$48, %rdi
  208f38: 83 e7 1f                     	andl	$31, %edi
  208f3b: 39 cf                        	cmpl	%ecx, %edi
  208f3d: 73 5e                        	jae	0x208f9d <__cmplog_rtn_hook_str+0x18d>
  208f3f: 4a 8d 34 ee                  	leaq	(%rsi,%r13,8), %rsi
  208f43: eb 3c                        	jmp	0x208f81 <__cmplog_rtn_hook_str+0x171>
  208f45: 48 ba ff ff ff ff ff ff 9f ff	movabsq	$-27021597764222977, %rdx # imm = 0xFF9FFFFFFFFFFFFF
  208f4f: 48 21 d6                     	andq	%rdx, %rsi
  208f52: 4c 09 c6                     	orq	%r8, %rsi
  208f55: 4a 89 74 ed 00               	movq	%rsi, (%rbp,%r13,8)
  208f5a: 49 8b 17                     	movq	(%r15), %rdx
  208f5d: 48 c7 c6 00 00 00 ff         	movq	$-16777216, %rsi        # imm = 0xFF000000
  208f64: 4a 23 34 ea                  	andq	(%rdx,%r13,8), %rsi
  208f68: 48 83 ce 01                  	orq	$1, %rsi
  208f6c: 4a 89 34 ea                  	movq	%rsi, (%rdx,%r13,8)
  208f70: 4c 89 fd                     	movq	%r15, %rbp
  208f73: 49 8b 17                     	movq	(%r15), %rdx
  208f76: 4a 8d 34 ea                  	leaq	(%rdx,%r13,8), %rsi
  208f7a: 4a 8b 14 ea                  	movq	(%rdx,%r13,8), %rdx
  208f7e: 45 31 ff                     	xorl	%r15d, %r15d
  208f81: ff c9                        	decl	%ecx
  208f83: 83 e1 1f                     	andl	$31, %ecx
  208f86: 48 c1 e1 30                  	shlq	$48, %rcx
  208f8a: 48 bf ff ff ff ff ff ff e0 ff	movabsq	$-8725724278030337, %rdi # imm = 0xFFE0FFFFFFFFFFFF
  208f94: 48 21 d7                     	andq	%rdx, %rdi
  208f97: 48 09 cf                     	orq	%rcx, %rdi
  208f9a: 48 89 3e                     	movq	%rdi, (%rsi)
  208f9d: 49 c1 e5 0a                  	shlq	$10, %r13
  208fa1: 4c 03 6d 00                  	addq	(%rbp), %r13
  208fa5: 41 83 e7 07                  	andl	$7, %r15d
  208fa9: 41 80 c2 81                  	addb	$-127, %r10b
  208fad: 49 c1 e7 06                  	shlq	$6, %r15
  208fb1: 4b 8d 3c 2f                  	leaq	(%r15,%r13), %rdi
  208fb5: 48 81 c7 00 00 08 00         	addq	$524288, %rdi           # imm = 0x80000
  208fbc: 47 88 94 2f 1f 00 08 00      	movb	%r10b, 524319(%r15,%r13)
  208fc4: 04 81                        	addb	$-127, %al
  208fc6: 43 88 84 2f 3f 00 08 00      	movb	%al, 524351(%r15,%r13)
  208fce: 49 63 d6                     	movslq	%r14d, %rdx
  208fd1: 4c 89 e6                     	movq	%r12, %rsi
  208fd4: e8 d7 9a 00 00               	callq	0x212ab0 <memcpy@plt>
  208fd9: 4b 8d 3c 2f                  	leaq	(%r15,%r13), %rdi
  208fdd: 48 81 c7 20 00 08 00         	addq	$524320, %rdi           # imm = 0x80020
  208fe4: 48 63 54 24 0c               	movslq	12(%rsp), %rdx
  208fe9: 48 8b 74 24 10               	movq	16(%rsp), %rsi
  208fee: 48 83 c4 18                  	addq	$24, %rsp
  208ff2: 5b                           	popq	%rbx
  208ff3: 41 5c                        	popq	%r12
  208ff5: 41 5d                        	popq	%r13
  208ff7: 41 5e                        	popq	%r14
  208ff9: 41 5f                        	popq	%r15
  208ffb: 5d                           	popq	%rbp
  208ffc: e9 af 9a 00 00               	jmp	0x212ab0 <memcpy@plt>
  209001: 66 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%rax,%rax)

0000000000209010 <__cmplog_rtn_hook>:
  209010: 55                           	pushq	%rbp
  209011: 41 57                        	pushq	%r15
  209013: 41 56                        	pushq	%r14
  209015: 41 55                        	pushq	%r13
  209017: 41 54                        	pushq	%r12
  209019: 53                           	pushq	%rbx
  20901a: 50                           	pushq	%rax
  20901b: 48 85 ff                     	testq	%rdi, %rdi
  20901e: 0f 84 c4 01 00 00            	je	0x2091e8 <__cmplog_rtn_hook+0x1d8>
  209024: 4c 8d 2d 15 bf 20 00         	leaq	2146069(%rip), %r13     # 0x414f40 <__afl_cmp_map>
  20902b: 49 83 7d 00 00               	cmpq	$0, (%r13)
  209030: 0f 84 b2 01 00 00            	je	0x2091e8 <__cmplog_rtn_hook+0x1d8>
  209036: 49 89 f6                     	movq	%rsi, %r14
  209039: 48 89 fb                     	movq	%rdi, %rbx
  20903c: be 1f 00 00 00               	movl	$31, %esi
  209041: e8 aa fa ff ff               	callq	0x208af0 <__asan_region_is_poisoned>
  209046: 48 85 c0                     	testq	%rax, %rax
  209049: 0f 85 99 01 00 00            	jne	0x2091e8 <__cmplog_rtn_hook+0x1d8>
  20904f: 8b 35 d3 bc 00 00            	movl	48339(%rip), %esi       # 0x214d28 <__afl_dummy_fd+0x4>
  209055: bf 01 00 00 00               	movl	$1, %edi
  20905a: b9 1f 00 00 00               	movl	$31, %ecx
  20905f: 48 89 da                     	movq	%rbx, %rdx
  209062: 31 c0                        	xorl	%eax, %eax
  209064: e8 a7 98 00 00               	callq	0x212910 <syscall@plt>
  209069: 49 89 c7                     	movq	%rax, %r15
  20906c: 48 83 c0 e0                  	addq	$-32, %rax
  209070: 48 83 f8 e1                  	cmpq	$-31, %rax
  209074: 0f 82 6e 01 00 00            	jb	0x2091e8 <__cmplog_rtn_hook+0x1d8>
  20907a: bf 1e 00 00 00               	movl	$30, %edi
  20907f: e8 1c 9a 00 00               	callq	0x212aa0 <sysconf@plt>
  209084: 48 89 c1                     	movq	%rax, %rcx
  209087: 48 f7 d9                     	negq	%rcx
  20908a: 48 21 d9                     	andq	%rbx, %rcx
  20908d: 48 01 c1                     	addq	%rax, %rcx
  209090: 48 8d 43 1f                  	leaq	31(%rbx), %rax
  209094: 89 ca                        	movl	%ecx, %edx
  209096: 29 da                        	subl	%ebx, %edx
  209098: 48 39 c1                     	cmpq	%rax, %rcx
  20909b: 44 0f 46 fa                  	cmovbel	%edx, %r15d
  20909f: 4d 85 f6                     	testq	%r14, %r14
  2090a2: 0f 84 40 01 00 00            	je	0x2091e8 <__cmplog_rtn_hook+0x1d8>
  2090a8: 45 85 ff                     	testl	%r15d, %r15d
  2090ab: 0f 8e 37 01 00 00            	jle	0x2091e8 <__cmplog_rtn_hook+0x1d8>
  2090b1: be 1f 00 00 00               	movl	$31, %esi
  2090b6: 4c 89 f7                     	movq	%r14, %rdi
  2090b9: e8 32 fa ff ff               	callq	0x208af0 <__asan_region_is_poisoned>
  2090be: 48 85 c0                     	testq	%rax, %rax
  2090c1: 0f 85 21 01 00 00            	jne	0x2091e8 <__cmplog_rtn_hook+0x1d8>
  2090c7: 8b 35 5b bc 00 00            	movl	48219(%rip), %esi       # 0x214d28 <__afl_dummy_fd+0x4>
  2090cd: bf 01 00 00 00               	movl	$1, %edi
  2090d2: b9 1f 00 00 00               	movl	$31, %ecx
  2090d7: 4c 89 f2                     	movq	%r14, %rdx
  2090da: 31 c0                        	xorl	%eax, %eax
  2090dc: e8 2f 98 00 00               	callq	0x212910 <syscall@plt>
  2090e1: 49 89 c4                     	movq	%rax, %r12
  2090e4: 48 83 c0 e0                  	addq	$-32, %rax
  2090e8: 48 83 f8 e1                  	cmpq	$-31, %rax
  2090ec: 0f 82 f6 00 00 00            	jb	0x2091e8 <__cmplog_rtn_hook+0x1d8>
  2090f2: bf 1e 00 00 00               	movl	$30, %edi
  2090f7: e8 a4 99 00 00               	callq	0x212aa0 <sysconf@plt>
  2090fc: 48 89 c1                     	movq	%rax, %rcx
  2090ff: 48 f7 d9                     	negq	%rcx
  209102: 4c 21 f1                     	andq	%r14, %rcx
  209105: 48 01 c1                     	addq	%rax, %rcx
  209108: 49 8d 46 1f                  	leaq	31(%r14), %rax
  20910c: 89 ca                        	movl	%ecx, %edx
  20910e: 44 29 f2                     	subl	%r14d, %edx
  209111: 48 39 c1                     	cmpq	%rax, %rcx
  209114: 44 0f 46 e2                  	cmovbel	%edx, %r12d
  209118: 45 85 e4                     	testl	%r12d, %r12d
  20911b: 0f 8e c7 00 00 00            	jle	0x2091e8 <__cmplog_rtn_hook+0x1d8>
  209121: 45 39 e7                     	cmpl	%r12d, %r15d
  209124: 45 0f 42 e7                  	cmovbl	%r15d, %r12d
  209128: 41 83 fc 1f                  	cmpl	$31, %r12d
  20912c: b8 1f 00 00 00               	movl	$31, %eax
  209131: 41 0f 42 c4                  	cmovbl	%r12d, %eax
  209135: 48 8b 4c 24 38               	movq	56(%rsp), %rcx
  20913a: 48 c1 c1 20                  	rolq	$32, %rcx
  20913e: 48 ba a2 d5 ec c5 74 b1 3a c7	movabsq	$-4090762196417718878, %rdx # imm = 0xC73AB174C5ECD5A2
  209148: 48 31 ca                     	xorq	%rcx, %rdx
  20914b: 48 89 d6                     	movq	%rdx, %rsi
  20914e: 48 c1 c6 18                  	rolq	$24, %rsi
  209152: 48 31 d6                     	xorq	%rdx, %rsi
  209155: 48 c1 c2 31                  	rolq	$49, %rdx
  209159: 48 b9 00 00 00 00 00 00 40 00	movabsq	$18014398509481984, %rcx # imm = 0x40000000000000
  209163: 48 31 d6                     	xorq	%rdx, %rsi
  209166: 48 ba 25 df 98 1e 65 1c b2 9f	movabsq	$-6939452855193903323, %rdx # imm = 0x9FB21C651E98DF25
  209170: 48 0f af f2                  	imulq	%rdx, %rsi
  209174: 48 89 f7                     	movq	%rsi, %rdi
  209177: 48 c1 ef 23                  	shrq	$35, %rdi
  20917b: 48 83 c7 08                  	addq	$8, %rdi
  20917f: 48 31 f7                     	xorq	%rsi, %rdi
  209182: 48 0f af fa                  	imulq	%rdx, %rdi
  209186: 48 89 fa                     	movq	%rdi, %rdx
  209189: 48 c1 ea 1c                  	shrq	$28, %rdx
  20918d: 31 fa                        	xorl	%edi, %edx
  20918f: 44 0f b7 e2                  	movzwl	%dx, %r12d
  209193: 49 8b 55 00                  	movq	(%r13), %rdx
  209197: 4a 8b 34 e2                  	movq	(%rdx,%r12,8), %rsi
  20919b: 48 bf 00 00 00 00 00 00 60 00	movabsq	$27021597764222976, %rdi # imm = 0x60000000000000
  2091a5: 48 21 f7                     	andq	%rsi, %rdi
  2091a8: 48 39 cf                     	cmpq	%rcx, %rdi
  2091ab: 75 4a                        	jne	0x2091f7 <__cmplog_rtn_hook+0x1e7>
  2091ad: 89 f5                        	movl	%esi, %ebp
  2091af: 81 e5 ff ff ff 00            	andl	$16777215, %ebp         # imm = 0xFFFFFF
  2091b5: 8d 4e 01                     	leal	1(%rsi), %ecx
  2091b8: 81 e1 ff ff ff 00            	andl	$16777215, %ecx         # imm = 0xFFFFFF
  2091be: 48 81 e6 00 00 00 ff         	andq	$-16777216, %rsi        # imm = 0xFF000000
  2091c5: 48 09 ce                     	orq	%rcx, %rsi
  2091c8: 4a 89 34 e2                  	movq	%rsi, (%rdx,%r12,8)
  2091cc: 49 8b 55 00                  	movq	(%r13), %rdx
  2091d0: 4a 8b 0c e2                  	movq	(%rdx,%r12,8), %rcx
  2091d4: 48 89 ce                     	movq	%rcx, %rsi
  2091d7: 48 c1 ee 30                  	shrq	$48, %rsi
  2091db: 83 e6 1f                     	andl	$31, %esi
  2091de: 39 c6                        	cmpl	%eax, %esi
  2091e0: 73 6b                        	jae	0x20924d <__cmplog_rtn_hook+0x23d>
  2091e2: 4a 8d 14 e2                  	leaq	(%rdx,%r12,8), %rdx
  2091e6: eb 48                        	jmp	0x209230 <__cmplog_rtn_hook+0x220>
  2091e8: 48 83 c4 08                  	addq	$8, %rsp
  2091ec: 5b                           	popq	%rbx
  2091ed: 41 5c                        	popq	%r12
  2091ef: 41 5d                        	popq	%r13
  2091f1: 41 5e                        	popq	%r14
  2091f3: 41 5f                        	popq	%r15
  2091f5: 5d                           	popq	%rbp
  2091f6: c3                           	retq
  2091f7: 48 bf ff ff ff ff ff ff 9f ff	movabsq	$-27021597764222977, %rdi # imm = 0xFF9FFFFFFFFFFFFF
  209201: 48 21 fe                     	andq	%rdi, %rsi
  209204: 48 09 ce                     	orq	%rcx, %rsi
  209207: 4a 89 34 e2                  	movq	%rsi, (%rdx,%r12,8)
  20920b: 49 8b 4d 00                  	movq	(%r13), %rcx
  20920f: 48 c7 c2 00 00 00 ff         	movq	$-16777216, %rdx        # imm = 0xFF000000
  209216: 4a 23 14 e1                  	andq	(%rcx,%r12,8), %rdx
  20921a: 48 83 ca 01                  	orq	$1, %rdx
  20921e: 4a 89 14 e1                  	movq	%rdx, (%rcx,%r12,8)
  209222: 49 8b 4d 00                  	movq	(%r13), %rcx
  209226: 4a 8d 14 e1                  	leaq	(%rcx,%r12,8), %rdx
  20922a: 4a 8b 0c e1                  	movq	(%rcx,%r12,8), %rcx
  20922e: 31 ed                        	xorl	%ebp, %ebp
  209230: 8d 70 ff                     	leal	-1(%rax), %esi
  209233: 83 e6 1f                     	andl	$31, %esi
  209236: 48 c1 e6 30                  	shlq	$48, %rsi
  20923a: 48 bf ff ff ff ff ff ff e0 ff	movabsq	$-8725724278030337, %rdi # imm = 0xFFE0FFFFFFFFFFFF
  209244: 48 21 cf                     	andq	%rcx, %rdi
  209247: 48 09 f7                     	orq	%rsi, %rdi
  20924a: 48 89 3a                     	movq	%rdi, (%rdx)
  20924d: 49 c1 e4 0a                  	shlq	$10, %r12
  209251: 4d 03 65 00                  	addq	(%r13), %r12
  209255: 83 e5 07                     	andl	$7, %ebp
  209258: 48 c1 e5 06                  	shlq	$6, %rbp
  20925c: 49 8d 3c 2c                  	leaq	(%r12,%rbp), %rdi
  209260: 48 81 c7 00 00 08 00         	addq	$524288, %rdi           # imm = 0x80000
  209267: 42 88 84 25 1f 00 08 00      	movb	%al, 524319(%rbp,%r12)
  20926f: 42 88 84 25 3f 00 08 00      	movb	%al, 524351(%rbp,%r12)
  209277: 41 89 c7                     	movl	%eax, %r15d
  20927a: 48 89 de                     	movq	%rbx, %rsi
  20927d: 4c 89 fa                     	movq	%r15, %rdx
  209280: e8 2b 98 00 00               	callq	0x212ab0 <memcpy@plt>
  209285: 49 8d 3c 2c                  	leaq	(%r12,%rbp), %rdi
  209289: 48 81 c7 20 00 08 00         	addq	$524320, %rdi           # imm = 0x80020
  209290: 4c 89 f6                     	movq	%r14, %rsi
  209293: 4c 89 fa                     	movq	%r15, %rdx
  209296: 48 83 c4 08                  	addq	$8, %rsp
  20929a: 5b                           	popq	%rbx
  20929b: 41 5c                        	popq	%r12
  20929d: 41 5d                        	popq	%r13
  20929f: 41 5e                        	popq	%r14
  2092a1: 41 5f                        	popq	%r15
  2092a3: 5d                           	popq	%rbp
  2092a4: e9 07 98 00 00               	jmp	0x212ab0 <memcpy@plt>
  2092a9: 0f 1f 80 00 00 00 00         	nopl	(%rax)

00000000002092b0 <__cmplog_rtn_hook_n>:
  2092b0: e9 5b fd ff ff               	jmp	0x209010 <__cmplog_rtn_hook>
  2092b5: 66 66 2e 0f 1f 84 00 00 00 00 00     	nopw	%cs:(%rax,%rax)

00000000002092c0 <__cmplog_rtn_gcc_stdstring_cstring>:
  2092c0: 41 57                        	pushq	%r15
  2092c2: 41 56                        	pushq	%r14
  2092c4: 53                           	pushq	%rbx
  2092c5: 48 85 ff                     	testq	%rdi, %rdi
  2092c8: 0f 84 f4 00 00 00            	je	0x2093c2 <__cmplog_rtn_gcc_stdstring_cstring+0x102>
  2092ce: 48 8d 05 6b bc 20 00         	leaq	2145387(%rip), %rax     # 0x414f40 <__afl_cmp_map>
  2092d5: 48 83 38 00                  	cmpq	$0, (%rax)
  2092d9: 0f 84 e3 00 00 00            	je	0x2093c2 <__cmplog_rtn_gcc_stdstring_cstring+0x102>
  2092df: 49 89 f6                     	movq	%rsi, %r14
  2092e2: 48 89 fb                     	movq	%rdi, %rbx
  2092e5: be 20 00 00 00               	movl	$32, %esi
  2092ea: e8 01 f8 ff ff               	callq	0x208af0 <__asan_region_is_poisoned>
  2092ef: 48 85 c0                     	testq	%rax, %rax
  2092f2: 0f 85 ca 00 00 00            	jne	0x2093c2 <__cmplog_rtn_gcc_stdstring_cstring+0x102>
  2092f8: 8b 35 2a ba 00 00            	movl	47658(%rip), %esi       # 0x214d28 <__afl_dummy_fd+0x4>
  2092fe: bf 01 00 00 00               	movl	$1, %edi
  209303: b9 20 00 00 00               	movl	$32, %ecx
  209308: 48 89 da                     	movq	%rbx, %rdx
  20930b: 31 c0                        	xorl	%eax, %eax
  20930d: e8 fe 95 00 00               	callq	0x212910 <syscall@plt>
  209312: 49 89 c7                     	movq	%rax, %r15
  209315: 48 83 c0 df                  	addq	$-33, %rax
  209319: 48 83 f8 e0                  	cmpq	$-32, %rax
  20931d: 0f 82 9f 00 00 00            	jb	0x2093c2 <__cmplog_rtn_gcc_stdstring_cstring+0x102>
  209323: bf 1e 00 00 00               	movl	$30, %edi
  209328: e8 73 97 00 00               	callq	0x212aa0 <sysconf@plt>
  20932d: 48 89 c1                     	movq	%rax, %rcx
  209330: 48 f7 d9                     	negq	%rcx
  209333: 48 21 d9                     	andq	%rbx, %rcx
  209336: 48 01 c1                     	addq	%rax, %rcx
  209339: 48 8d 43 20                  	leaq	32(%rbx), %rax
  20933d: 89 ca                        	movl	%ecx, %edx
  20933f: 29 da                        	subl	%ebx, %edx
  209341: 48 39 c1                     	cmpq	%rax, %rcx
  209344: 44 0f 46 fa                  	cmovbel	%edx, %r15d
  209348: 4d 85 f6                     	testq	%r14, %r14
  20934b: 74 75                        	je	0x2093c2 <__cmplog_rtn_gcc_stdstring_cstring+0x102>
  20934d: 45 85 ff                     	testl	%r15d, %r15d
  209350: 7e 70                        	jle	0x2093c2 <__cmplog_rtn_gcc_stdstring_cstring+0x102>
  209352: be 20 00 00 00               	movl	$32, %esi
  209357: 4c 89 f7                     	movq	%r14, %rdi
  20935a: e8 91 f7 ff ff               	callq	0x208af0 <__asan_region_is_poisoned>
  20935f: 48 85 c0                     	testq	%rax, %rax
  209362: 75 5e                        	jne	0x2093c2 <__cmplog_rtn_gcc_stdstring_cstring+0x102>
  209364: 8b 35 be b9 00 00            	movl	47550(%rip), %esi       # 0x214d28 <__afl_dummy_fd+0x4>
  20936a: bf 01 00 00 00               	movl	$1, %edi
  20936f: b9 20 00 00 00               	movl	$32, %ecx
  209374: 4c 89 f2                     	movq	%r14, %rdx
  209377: 31 c0                        	xorl	%eax, %eax
  209379: e8 92 95 00 00               	callq	0x212910 <syscall@plt>
  20937e: 49 89 c7                     	movq	%rax, %r15
  209381: 48 83 c0 df                  	addq	$-33, %rax
  209385: 48 83 f8 e0                  	cmpq	$-32, %rax
  209389: 72 37                        	jb	0x2093c2 <__cmplog_rtn_gcc_stdstring_cstring+0x102>
  20938b: bf 1e 00 00 00               	movl	$30, %edi
  209390: e8 0b 97 00 00               	callq	0x212aa0 <sysconf@plt>
  209395: 48 89 c1                     	movq	%rax, %rcx
  209398: 48 f7 d9                     	negq	%rcx
  20939b: 4c 21 f1                     	andq	%r14, %rcx
  20939e: 48 01 c1                     	addq	%rax, %rcx
  2093a1: 49 8d 46 20                  	leaq	32(%r14), %rax
  2093a5: 89 ca                        	movl	%ecx, %edx
  2093a7: 44 29 f2                     	subl	%r14d, %edx
  2093aa: 48 39 c1                     	cmpq	%rax, %rcx
  2093ad: 44 0f 46 fa                  	cmovbel	%edx, %r15d
  2093b1: 45 85 ff                     	testl	%r15d, %r15d
  2093b4: 7e 0c                        	jle	0x2093c2 <__cmplog_rtn_gcc_stdstring_cstring+0x102>
  2093b6: 83 7b 08 0f                  	cmpl	$15, 8(%rbx)
  2093ba: 77 0c                        	ja	0x2093c8 <__cmplog_rtn_gcc_stdstring_cstring+0x108>
  2093bc: 48 83 c3 10                  	addq	$16, %rbx
  2093c0: eb 09                        	jmp	0x2093cb <__cmplog_rtn_gcc_stdstring_cstring+0x10b>
  2093c2: 5b                           	popq	%rbx
  2093c3: 41 5e                        	popq	%r14
  2093c5: 41 5f                        	popq	%r15
  2093c7: c3                           	retq
  2093c8: 48 8b 1b                     	movq	(%rbx), %rbx
  2093cb: 48 89 df                     	movq	%rbx, %rdi
  2093ce: 4c 89 f6                     	movq	%r14, %rsi
  2093d1: 5b                           	popq	%rbx
  2093d2: 41 5e                        	popq	%r14
  2093d4: 41 5f                        	popq	%r15
  2093d6: e9 35 fc ff ff               	jmp	0x209010 <__cmplog_rtn_hook>
  2093db: 0f 1f 44 00 00               	nopl	(%rax,%rax)

00000000002093e0 <__cmplog_rtn_gcc_stdstring_stdstring>:
  2093e0: 41 57                        	pushq	%r15
  2093e2: 41 56                        	pushq	%r14
  2093e4: 53                           	pushq	%rbx
  2093e5: 48 85 ff                     	testq	%rdi, %rdi
  2093e8: 0f 84 f4 00 00 00            	je	0x2094e2 <__cmplog_rtn_gcc_stdstring_stdstring+0x102>
  2093ee: 48 8d 05 4b bb 20 00         	leaq	2145099(%rip), %rax     # 0x414f40 <__afl_cmp_map>
  2093f5: 48 83 38 00                  	cmpq	$0, (%rax)
  2093f9: 0f 84 e3 00 00 00            	je	0x2094e2 <__cmplog_rtn_gcc_stdstring_stdstring+0x102>
  2093ff: 49 89 f6                     	movq	%rsi, %r14
  209402: 48 89 fb                     	movq	%rdi, %rbx
  209405: be 20 00 00 00               	movl	$32, %esi
  20940a: e8 e1 f6 ff ff               	callq	0x208af0 <__asan_region_is_poisoned>
  20940f: 48 85 c0                     	testq	%rax, %rax
  209412: 0f 85 ca 00 00 00            	jne	0x2094e2 <__cmplog_rtn_gcc_stdstring_stdstring+0x102>
  209418: 8b 35 0a b9 00 00            	movl	47370(%rip), %esi       # 0x214d28 <__afl_dummy_fd+0x4>
  20941e: bf 01 00 00 00               	movl	$1, %edi
  209423: b9 20 00 00 00               	movl	$32, %ecx
  209428: 48 89 da                     	movq	%rbx, %rdx
  20942b: 31 c0                        	xorl	%eax, %eax
  20942d: e8 de 94 00 00               	callq	0x212910 <syscall@plt>
  209432: 49 89 c7                     	movq	%rax, %r15
  209435: 48 83 c0 df                  	addq	$-33, %rax
  209439: 48 83 f8 e0                  	cmpq	$-32, %rax
  20943d: 0f 82 9f 00 00 00            	jb	0x2094e2 <__cmplog_rtn_gcc_stdstring_stdstring+0x102>
  209443: bf 1e 00 00 00               	movl	$30, %edi
  209448: e8 53 96 00 00               	callq	0x212aa0 <sysconf@plt>
  20944d: 48 89 c1                     	movq	%rax, %rcx
  209450: 48 f7 d9                     	negq	%rcx
  209453: 48 21 d9                     	andq	%rbx, %rcx
  209456: 48 01 c1                     	addq	%rax, %rcx
  209459: 48 8d 43 20                  	leaq	32(%rbx), %rax
  20945d: 89 ca                        	movl	%ecx, %edx
  20945f: 29 da                        	subl	%ebx, %edx
  209461: 48 39 c1                     	cmpq	%rax, %rcx
  209464: 44 0f 46 fa                  	cmovbel	%edx, %r15d
  209468: 4d 85 f6                     	testq	%r14, %r14
  20946b: 74 75                        	je	0x2094e2 <__cmplog_rtn_gcc_stdstring_stdstring+0x102>
  20946d: 45 85 ff                     	testl	%r15d, %r15d
  209470: 7e 70                        	jle	0x2094e2 <__cmplog_rtn_gcc_stdstring_stdstring+0x102>
  209472: be 20 00 00 00               	movl	$32, %esi
  209477: 4c 89 f7                     	movq	%r14, %rdi
  20947a: e8 71 f6 ff ff               	callq	0x208af0 <__asan_region_is_poisoned>
  20947f: 48 85 c0                     	testq	%rax, %rax
  209482: 75 5e                        	jne	0x2094e2 <__cmplog_rtn_gcc_stdstring_stdstring+0x102>
  209484: 8b 35 9e b8 00 00            	movl	47262(%rip), %esi       # 0x214d28 <__afl_dummy_fd+0x4>
  20948a: bf 01 00 00 00               	movl	$1, %edi
  20948f: b9 20 00 00 00               	movl	$32, %ecx
  209494: 4c 89 f2                     	movq	%r14, %rdx
  209497: 31 c0                        	xorl	%eax, %eax
  209499: e8 72 94 00 00               	callq	0x212910 <syscall@plt>
  20949e: 49 89 c7                     	movq	%rax, %r15
  2094a1: 48 83 c0 df                  	addq	$-33, %rax
  2094a5: 48 83 f8 e0                  	cmpq	$-32, %rax
  2094a9: 72 37                        	jb	0x2094e2 <__cmplog_rtn_gcc_stdstring_stdstring+0x102>
  2094ab: bf 1e 00 00 00               	movl	$30, %edi
  2094b0: e8 eb 95 00 00               	callq	0x212aa0 <sysconf@plt>
  2094b5: 48 89 c1                     	movq	%rax, %rcx
  2094b8: 48 f7 d9                     	negq	%rcx
  2094bb: 4c 21 f1                     	andq	%r14, %rcx
  2094be: 48 01 c1                     	addq	%rax, %rcx
  2094c1: 49 8d 46 20                  	leaq	32(%r14), %rax
  2094c5: 89 ca                        	movl	%ecx, %edx
  2094c7: 44 29 f2                     	subl	%r14d, %edx
  2094ca: 48 39 c1                     	cmpq	%rax, %rcx
  2094cd: 44 0f 46 fa                  	cmovbel	%edx, %r15d
  2094d1: 45 85 ff                     	testl	%r15d, %r15d
  2094d4: 7e 0c                        	jle	0x2094e2 <__cmplog_rtn_gcc_stdstring_stdstring+0x102>
  2094d6: 83 7b 08 0f                  	cmpl	$15, 8(%rbx)
  2094da: 77 0c                        	ja	0x2094e8 <__cmplog_rtn_gcc_stdstring_stdstring+0x108>
  2094dc: 48 83 c3 10                  	addq	$16, %rbx
  2094e0: eb 09                        	jmp	0x2094eb <__cmplog_rtn_gcc_stdstring_stdstring+0x10b>
  2094e2: 5b                           	popq	%rbx
  2094e3: 41 5e                        	popq	%r14
  2094e5: 41 5f                        	popq	%r15
  2094e7: c3                           	retq
  2094e8: 48 8b 1b                     	movq	(%rbx), %rbx
  2094eb: 41 83 7e 08 0f               	cmpl	$15, 8(%r14)
  2094f0: 77 06                        	ja	0x2094f8 <__cmplog_rtn_gcc_stdstring_stdstring+0x118>
  2094f2: 49 83 c6 10                  	addq	$16, %r14
  2094f6: eb 03                        	jmp	0x2094fb <__cmplog_rtn_gcc_stdstring_stdstring+0x11b>
  2094f8: 4d 8b 36                     	movq	(%r14), %r14
  2094fb: 48 89 df                     	movq	%rbx, %rdi
  2094fe: 4c 89 f6                     	movq	%r14, %rsi
  209501: 5b                           	popq	%rbx
  209502: 41 5e                        	popq	%r14
  209504: 41 5f                        	popq	%r15
  209506: e9 05 fb ff ff               	jmp	0x209010 <__cmplog_rtn_hook>
  20950b: 0f 1f 44 00 00               	nopl	(%rax,%rax)

0000000000209510 <__cmplog_rtn_llvm_stdstring_cstring>:
  209510: 41 57                        	pushq	%r15
  209512: 41 56                        	pushq	%r14
  209514: 53                           	pushq	%rbx
  209515: 48 85 ff                     	testq	%rdi, %rdi
  209518: 0f 84 f2 00 00 00            	je	0x209610 <__cmplog_rtn_llvm_stdstring_cstring+0x100>
  20951e: 48 8d 05 1b ba 20 00         	leaq	2144795(%rip), %rax     # 0x414f40 <__afl_cmp_map>
  209525: 48 83 38 00                  	cmpq	$0, (%rax)
  209529: 0f 84 e1 00 00 00            	je	0x209610 <__cmplog_rtn_llvm_stdstring_cstring+0x100>
  20952f: 49 89 f6                     	movq	%rsi, %r14
  209532: 48 89 fb                     	movq	%rdi, %rbx
  209535: be 20 00 00 00               	movl	$32, %esi
  20953a: e8 b1 f5 ff ff               	callq	0x208af0 <__asan_region_is_poisoned>
  20953f: 48 85 c0                     	testq	%rax, %rax
  209542: 0f 85 c8 00 00 00            	jne	0x209610 <__cmplog_rtn_llvm_stdstring_cstring+0x100>
  209548: 8b 35 da b7 00 00            	movl	47066(%rip), %esi       # 0x214d28 <__afl_dummy_fd+0x4>
  20954e: bf 01 00 00 00               	movl	$1, %edi
  209553: b9 20 00 00 00               	movl	$32, %ecx
  209558: 48 89 da                     	movq	%rbx, %rdx
  20955b: 31 c0                        	xorl	%eax, %eax
  20955d: e8 ae 93 00 00               	callq	0x212910 <syscall@plt>
  209562: 49 89 c7                     	movq	%rax, %r15
  209565: 48 83 c0 df                  	addq	$-33, %rax
  209569: 48 83 f8 e0                  	cmpq	$-32, %rax
  20956d: 0f 82 9d 00 00 00            	jb	0x209610 <__cmplog_rtn_llvm_stdstring_cstring+0x100>
  209573: bf 1e 00 00 00               	movl	$30, %edi
  209578: e8 23 95 00 00               	callq	0x212aa0 <sysconf@plt>
  20957d: 48 89 c1                     	movq	%rax, %rcx
  209580: 48 f7 d9                     	negq	%rcx
  209583: 48 21 d9                     	andq	%rbx, %rcx
  209586: 48 01 c1                     	addq	%rax, %rcx
  209589: 48 8d 43 20                  	leaq	32(%rbx), %rax
  20958d: 89 ca                        	movl	%ecx, %edx
  20958f: 29 da                        	subl	%ebx, %edx
  209591: 48 39 c1                     	cmpq	%rax, %rcx
  209594: 44 0f 46 fa                  	cmovbel	%edx, %r15d
  209598: 4d 85 f6                     	testq	%r14, %r14
  20959b: 74 73                        	je	0x209610 <__cmplog_rtn_llvm_stdstring_cstring+0x100>
  20959d: 45 85 ff                     	testl	%r15d, %r15d
  2095a0: 7e 6e                        	jle	0x209610 <__cmplog_rtn_llvm_stdstring_cstring+0x100>
  2095a2: be 20 00 00 00               	movl	$32, %esi
  2095a7: 4c 89 f7                     	movq	%r14, %rdi
  2095aa: e8 41 f5 ff ff               	callq	0x208af0 <__asan_region_is_poisoned>
  2095af: 48 85 c0                     	testq	%rax, %rax
  2095b2: 75 5c                        	jne	0x209610 <__cmplog_rtn_llvm_stdstring_cstring+0x100>
  2095b4: 8b 35 6e b7 00 00            	movl	46958(%rip), %esi       # 0x214d28 <__afl_dummy_fd+0x4>
  2095ba: bf 01 00 00 00               	movl	$1, %edi
  2095bf: b9 20 00 00 00               	movl	$32, %ecx
  2095c4: 4c 89 f2                     	movq	%r14, %rdx
  2095c7: 31 c0                        	xorl	%eax, %eax
  2095c9: e8 42 93 00 00               	callq	0x212910 <syscall@plt>
  2095ce: 49 89 c7                     	movq	%rax, %r15
  2095d1: 48 83 c0 df                  	addq	$-33, %rax
  2095d5: 48 83 f8 e0                  	cmpq	$-32, %rax
  2095d9: 72 35                        	jb	0x209610 <__cmplog_rtn_llvm_stdstring_cstring+0x100>
  2095db: bf 1e 00 00 00               	movl	$30, %edi
  2095e0: e8 bb 94 00 00               	callq	0x212aa0 <sysconf@plt>
  2095e5: 48 89 c1                     	movq	%rax, %rcx
  2095e8: 48 f7 d9                     	negq	%rcx
  2095eb: 4c 21 f1                     	andq	%r14, %rcx
  2095ee: 48 01 c1                     	addq	%rax, %rcx
  2095f1: 49 8d 46 20                  	leaq	32(%r14), %rax
  2095f5: 89 ca                        	movl	%ecx, %edx
  2095f7: 44 29 f2                     	subl	%r14d, %edx
  2095fa: 48 39 c1                     	cmpq	%rax, %rcx
  2095fd: 44 0f 46 fa                  	cmovbel	%edx, %r15d
  209601: 45 85 ff                     	testl	%r15d, %r15d
  209604: 7e 0a                        	jle	0x209610 <__cmplog_rtn_llvm_stdstring_cstring+0x100>
  209606: f6 03 01                     	testb	$1, (%rbx)
  209609: 75 0b                        	jne	0x209616 <__cmplog_rtn_llvm_stdstring_cstring+0x106>
  20960b: 48 ff c3                     	incq	%rbx
  20960e: eb 0a                        	jmp	0x20961a <__cmplog_rtn_llvm_stdstring_cstring+0x10a>
  209610: 5b                           	popq	%rbx
  209611: 41 5e                        	popq	%r14
  209613: 41 5f                        	popq	%r15
  209615: c3                           	retq
  209616: 48 8b 5b 10                  	movq	16(%rbx), %rbx
  20961a: 48 89 df                     	movq	%rbx, %rdi
  20961d: 4c 89 f6                     	movq	%r14, %rsi
  209620: 5b                           	popq	%rbx
  209621: 41 5e                        	popq	%r14
  209623: 41 5f                        	popq	%r15
  209625: e9 e6 f9 ff ff               	jmp	0x209010 <__cmplog_rtn_hook>
  20962a: 66 0f 1f 44 00 00            	nopw	(%rax,%rax)

0000000000209630 <__cmplog_rtn_llvm_stdstring_stdstring>:
  209630: 41 57                        	pushq	%r15
  209632: 41 56                        	pushq	%r14
  209634: 53                           	pushq	%rbx
  209635: 48 85 ff                     	testq	%rdi, %rdi
  209638: 0f 84 f2 00 00 00            	je	0x209730 <__cmplog_rtn_llvm_stdstring_stdstring+0x100>
  20963e: 48 8d 05 fb b8 20 00         	leaq	2144507(%rip), %rax     # 0x414f40 <__afl_cmp_map>
  209645: 48 83 38 00                  	cmpq	$0, (%rax)
  209649: 0f 84 e1 00 00 00            	je	0x209730 <__cmplog_rtn_llvm_stdstring_stdstring+0x100>
  20964f: 49 89 f6                     	movq	%rsi, %r14
  209652: 48 89 fb                     	movq	%rdi, %rbx
  209655: be 20 00 00 00               	movl	$32, %esi
  20965a: e8 91 f4 ff ff               	callq	0x208af0 <__asan_region_is_poisoned>
  20965f: 48 85 c0                     	testq	%rax, %rax
  209662: 0f 85 c8 00 00 00            	jne	0x209730 <__cmplog_rtn_llvm_stdstring_stdstring+0x100>
  209668: 8b 35 ba b6 00 00            	movl	46778(%rip), %esi       # 0x214d28 <__afl_dummy_fd+0x4>
  20966e: bf 01 00 00 00               	movl	$1, %edi
  209673: b9 20 00 00 00               	movl	$32, %ecx
  209678: 48 89 da                     	movq	%rbx, %rdx
  20967b: 31 c0                        	xorl	%eax, %eax
  20967d: e8 8e 92 00 00               	callq	0x212910 <syscall@plt>
  209682: 49 89 c7                     	movq	%rax, %r15
  209685: 48 83 c0 df                  	addq	$-33, %rax
  209689: 48 83 f8 e0                  	cmpq	$-32, %rax
  20968d: 0f 82 9d 00 00 00            	jb	0x209730 <__cmplog_rtn_llvm_stdstring_stdstring+0x100>
  209693: bf 1e 00 00 00               	movl	$30, %edi
  209698: e8 03 94 00 00               	callq	0x212aa0 <sysconf@plt>
  20969d: 48 89 c1                     	movq	%rax, %rcx
  2096a0: 48 f7 d9                     	negq	%rcx
  2096a3: 48 21 d9                     	andq	%rbx, %rcx
  2096a6: 48 01 c1                     	addq	%rax, %rcx
  2096a9: 48 8d 43 20                  	leaq	32(%rbx), %rax
  2096ad: 89 ca                        	movl	%ecx, %edx
  2096af: 29 da                        	subl	%ebx, %edx
  2096b1: 48 39 c1                     	cmpq	%rax, %rcx
  2096b4: 44 0f 46 fa                  	cmovbel	%edx, %r15d
  2096b8: 4d 85 f6                     	testq	%r14, %r14
  2096bb: 74 73                        	je	0x209730 <__cmplog_rtn_llvm_stdstring_stdstring+0x100>
  2096bd: 45 85 ff                     	testl	%r15d, %r15d
  2096c0: 7e 6e                        	jle	0x209730 <__cmplog_rtn_llvm_stdstring_stdstring+0x100>
  2096c2: be 20 00 00 00               	movl	$32, %esi
  2096c7: 4c 89 f7                     	movq	%r14, %rdi
  2096ca: e8 21 f4 ff ff               	callq	0x208af0 <__asan_region_is_poisoned>
  2096cf: 48 85 c0                     	testq	%rax, %rax
  2096d2: 75 5c                        	jne	0x209730 <__cmplog_rtn_llvm_stdstring_stdstring+0x100>
  2096d4: 8b 35 4e b6 00 00            	movl	46670(%rip), %esi       # 0x214d28 <__afl_dummy_fd+0x4>
  2096da: bf 01 00 00 00               	movl	$1, %edi
  2096df: b9 20 00 00 00               	movl	$32, %ecx
  2096e4: 4c 89 f2                     	movq	%r14, %rdx
  2096e7: 31 c0                        	xorl	%eax, %eax
  2096e9: e8 22 92 00 00               	callq	0x212910 <syscall@plt>
  2096ee: 49 89 c7                     	movq	%rax, %r15
  2096f1: 48 83 c0 df                  	addq	$-33, %rax
  2096f5: 48 83 f8 e0                  	cmpq	$-32, %rax
  2096f9: 72 35                        	jb	0x209730 <__cmplog_rtn_llvm_stdstring_stdstring+0x100>
  2096fb: bf 1e 00 00 00               	movl	$30, %edi
  209700: e8 9b 93 00 00               	callq	0x212aa0 <sysconf@plt>
  209705: 48 89 c1                     	movq	%rax, %rcx
  209708: 48 f7 d9                     	negq	%rcx
  20970b: 4c 21 f1                     	andq	%r14, %rcx
  20970e: 48 01 c1                     	addq	%rax, %rcx
  209711: 49 8d 46 20                  	leaq	32(%r14), %rax
  209715: 89 ca                        	movl	%ecx, %edx
  209717: 44 29 f2                     	subl	%r14d, %edx
  20971a: 48 39 c1                     	cmpq	%rax, %rcx
  20971d: 44 0f 46 fa                  	cmovbel	%edx, %r15d
  209721: 45 85 ff                     	testl	%r15d, %r15d
  209724: 7e 0a                        	jle	0x209730 <__cmplog_rtn_llvm_stdstring_stdstring+0x100>
  209726: f6 03 01                     	testb	$1, (%rbx)
  209729: 75 0b                        	jne	0x209736 <__cmplog_rtn_llvm_stdstring_stdstring+0x106>
  20972b: 48 ff c3                     	incq	%rbx
  20972e: eb 0a                        	jmp	0x20973a <__cmplog_rtn_llvm_stdstring_stdstring+0x10a>
  209730: 5b                           	popq	%rbx
  209731: 41 5e                        	popq	%r14
  209733: 41 5f                        	popq	%r15
  209735: c3                           	retq
  209736: 48 8b 5b 10                  	movq	16(%rbx), %rbx
  20973a: 41 f6 06 01                  	testb	$1, (%r14)
  20973e: 75 05                        	jne	0x209745 <__cmplog_rtn_llvm_stdstring_stdstring+0x115>
  209740: 49 ff c6                     	incq	%r14
  209743: eb 04                        	jmp	0x209749 <__cmplog_rtn_llvm_stdstring_stdstring+0x119>
  209745: 4d 8b 76 10                  	movq	16(%r14), %r14
  209749: 48 89 df                     	movq	%rbx, %rdi
  20974c: 4c 89 f6                     	movq	%r14, %rsi
  20974f: 5b                           	popq	%rbx
  209750: 41 5e                        	popq	%r14
  209752: 41 5f                        	popq	%r15
  209754: e9 b7 f8 ff ff               	jmp	0x209010 <__cmplog_rtn_hook>
  209759: 0f 1f 80 00 00 00 00         	nopl	(%rax)

0000000000209760 <__afl_coverage_off>:
  209760: 48 8d 05 e1 b7 20 00         	leaq	2144225(%rip), %rax     # 0x414f48 <__afl_selective_coverage>
  209767: 83 38 00                     	cmpl	$0, (%rax)
  20976a: 74 1f                        	je	0x20978b <__afl_coverage_off+0x2b>
  20976c: 48 8b 05 9d b5 00 00         	movq	46493(%rip), %rax       # 0x214d10 <__afl_area_ptr_dummy>
  209773: 48 8d 0d 7e b5 00 00         	leaq	46462(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20977a: 48 89 01                     	movq	%rax, (%rcx)
  20977d: 48 8d 05 bc b7 20 00         	leaq	2144188(%rip), %rax     # 0x414f40 <__afl_cmp_map>
  209784: 48 c7 00 00 00 00 00         	movq	$0, (%rax)
  20978b: c3                           	retq
  20978c: 0f 1f 40 00                  	nopl	(%rax)

0000000000209790 <__afl_coverage_on>:
  209790: 48 8d 05 b1 b7 20 00         	leaq	2144177(%rip), %rax     # 0x414f48 <__afl_selective_coverage>
  209797: 83 38 00                     	cmpl	$0, (%rax)
  20979a: 74 33                        	je	0x2097cf <__afl_coverage_on+0x3f>
  20979c: f6 05 6d b7 20 00 01         	testb	$1, 2144109(%rip)       # 0x414f10 <__afl_selective_coverage_temp>
  2097a3: 75 2a                        	jne	0x2097cf <__afl_coverage_on+0x3f>
  2097a5: 48 8b 05 6c b5 00 00         	movq	46444(%rip), %rax       # 0x214d18 <__afl_area_ptr_backup>
  2097ac: 48 8d 0d 45 b5 00 00         	leaq	46405(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  2097b3: 48 89 01                     	movq	%rax, (%rcx)
  2097b6: 48 8d 05 93 b7 20 00         	leaq	2144147(%rip), %rax     # 0x414f50 <__afl_cmp_map_backup>
  2097bd: 48 8b 00                     	movq	(%rax), %rax
  2097c0: 48 85 c0                     	testq	%rax, %rax
  2097c3: 74 0a                        	je	0x2097cf <__afl_coverage_on+0x3f>
  2097c5: 48 8d 0d 74 b7 20 00         	leaq	2144116(%rip), %rcx     # 0x414f40 <__afl_cmp_map>
  2097cc: 48 89 01                     	movq	%rax, (%rcx)
  2097cf: c3                           	retq

00000000002097d0 <__afl_coverage_discard>:
  2097d0: 53                           	pushq	%rbx
  2097d1: 48 8b 1d 40 b5 00 00         	movq	46400(%rip), %rbx       # 0x214d18 <__afl_area_ptr_backup>
  2097d8: 48 8d 05 29 b5 00 00         	leaq	46377(%rip), %rax       # 0x214d08 <__afl_map_size>
  2097df: 8b 10                        	movl	(%rax), %edx
  2097e1: 48 89 df                     	movq	%rbx, %rdi
  2097e4: 31 f6                        	xorl	%esi, %esi
  2097e6: e8 95 91 00 00               	callq	0x212980 <memset@plt>
  2097eb: c6 03 01                     	movb	$1, (%rbx)
  2097ee: 48 8d 05 4b b7 20 00         	leaq	2144075(%rip), %rax     # 0x414f40 <__afl_cmp_map>
  2097f5: 48 8b 38                     	movq	(%rax), %rdi
  2097f8: 48 85 ff                     	testq	%rdi, %rdi
  2097fb: 74 0d                        	je	0x20980a <__afl_coverage_discard+0x3a>
  2097fd: ba 00 00 08 04               	movl	$67633152, %edx         # imm = 0x4080000
  209802: 31 f6                        	xorl	%esi, %esi
  209804: 5b                           	popq	%rbx
  209805: e9 76 91 00 00               	jmp	0x212980 <memset@plt>
  20980a: 5b                           	popq	%rbx
  20980b: c3                           	retq
  20980c: 0f 1f 40 00                  	nopl	(%rax)

0000000000209810 <__afl_coverage_skip>:
  209810: 53                           	pushq	%rbx
  209811: 48 8b 1d 00 b5 00 00         	movq	46336(%rip), %rbx       # 0x214d18 <__afl_area_ptr_backup>
  209818: 48 8d 05 e9 b4 00 00         	leaq	46313(%rip), %rax       # 0x214d08 <__afl_map_size>
  20981f: 8b 10                        	movl	(%rax), %edx
  209821: 48 89 df                     	movq	%rbx, %rdi
  209824: 31 f6                        	xorl	%esi, %esi
  209826: e8 55 91 00 00               	callq	0x212980 <memset@plt>
  20982b: c6 03 01                     	movb	$1, (%rbx)
  20982e: 48 8d 1d 0b b7 20 00         	leaq	2144011(%rip), %rbx     # 0x414f40 <__afl_cmp_map>
  209835: 48 8b 3b                     	movq	(%rbx), %rdi
  209838: 48 85 ff                     	testq	%rdi, %rdi
  20983b: 74 0c                        	je	0x209849 <__afl_coverage_skip+0x39>
  20983d: ba 00 00 08 04               	movl	$67633152, %edx         # imm = 0x4080000
  209842: 31 f6                        	xorl	%esi, %esi
  209844: e8 37 91 00 00               	callq	0x212980 <memset@plt>
  209849: 80 3d bc b6 20 00 00         	cmpb	$0, 2143932(%rip)       # 0x414f0c <is_persistent>
  209850: 74 2d                        	je	0x20987f <__afl_coverage_skip+0x6f>
  209852: 48 8d 05 ef b6 20 00         	leaq	2143983(%rip), %rax     # 0x414f48 <__afl_selective_coverage>
  209859: 83 38 00                     	cmpl	$0, (%rax)
  20985c: 74 21                        	je	0x20987f <__afl_coverage_skip+0x6f>
  20985e: 48 8b 05 ab b4 00 00         	movq	46251(%rip), %rax       # 0x214d10 <__afl_area_ptr_dummy>
  209865: 48 8d 0d 8c b4 00 00         	leaq	46220(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20986c: 48 89 01                     	movq	%rax, (%rcx)
  20986f: 48 c7 03 00 00 00 00         	movq	$0, (%rbx)
  209876: c6 05 93 b6 20 00 01         	movb	$1, 2143891(%rip)       # 0x414f10 <__afl_selective_coverage_temp>
  20987d: 5b                           	popq	%rbx
  20987e: c3                           	retq
  20987f: 31 ff                        	xorl	%edi, %edi
  209881: e8 ba 91 00 00               	callq	0x212a40 <exit@plt>
  209886: 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)

0000000000209890 <__afl_coverage_interesting>:
  209890: 48 8d 05 61 b4 00 00         	leaq	46177(%rip), %rax       # 0x214cf8 <__afl_area_ptr>
  209897: 48 8b 00                     	movq	(%rax), %rax
  20989a: 89 f1                        	movl	%esi, %ecx
  20989c: 40 88 3c 08                  	movb	%dil, (%rax,%rcx)
  2098a0: c3                           	retq
  2098a1: 66 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%rax,%rax)

00000000002098b0 <__afl_set_persistent_mode>:
  2098b0: 40 88 3d 55 b6 20 00         	movb	%dil, 2143829(%rip)     # 0x414f0c <is_persistent>
  2098b7: c3                           	retq
  2098b8: 0f 1f 84 00 00 00 00 00      	nopl	(%rax,%rax)

00000000002098c0 <at_exit>:
  2098c0: 50                           	pushq	%rax
  2098c1: 8b 3d b1 b6 20 00            	movl	2143921(%rip), %edi     # 0x414f78 <child_pid>
  2098c7: 85 ff                        	testl	%edi, %edi
  2098c9: 7e 14                        	jle	0x2098df <at_exit+0x1f>
  2098cb: be 09 00 00 00               	movl	$9, %esi
  2098d0: e8 0b 91 00 00               	callq	0x2129e0 <kill@plt>
  2098d5: c7 05 99 b6 20 00 ff ff ff ff	movl	$4294967295, 2143897(%rip) # imm = 0xFFFFFFFF
                                                                        # 0x414f78 <child_pid>
  2098df: 31 ff                        	xorl	%edi, %edi
  2098e1: e8 2a 91 00 00               	callq	0x212a10 <_exit@plt>
  2098e6: 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)

00000000002098f0 <__afl_map_shm_fuzz>:
  2098f0: 53                           	pushq	%rbx
  2098f1: 48 8d 3d b4 88 ff ff         	leaq	-30540(%rip), %rdi      # 0x2021ac <_IO_stdin_used+0x44c>
  2098f8: e8 73 8e 00 00               	callq	0x212770 <getenv@plt>
  2098fd: 48 89 c3                     	movq	%rax, %rbx
  209900: 80 3d 11 b6 20 00 01         	cmpb	$1, 2143761(%rip)       # 0x414f18 <__afl_debug>
  209907: 74 50                        	je	0x209959 <__afl_map_shm_fuzz+0x69>
  209909: 48 85 db                     	testq	%rbx, %rbx
  20990c: 74 76                        	je	0x209984 <__afl_map_shm_fuzz+0x94>
  20990e: 48 89 df                     	movq	%rbx, %rdi
  209911: 31 f6                        	xorl	%esi, %esi
  209913: ba 0a 00 00 00               	movl	$10, %edx
  209918: e8 c3 8e 00 00               	callq	0x2127e0 <strtol@plt>
  20991d: 89 c7                        	movl	%eax, %edi
  20991f: 31 f6                        	xorl	%esi, %esi
  209921: 31 d2                        	xorl	%edx, %edx
  209923: e8 28 91 00 00               	callq	0x212a50 <shmat@plt>
  209928: 48 8d 48 01                  	leaq	1(%rax), %rcx
  20992c: 48 83 f9 01                  	cmpq	$1, %rcx
  209930: 0f 86 91 00 00 00            	jbe	0x2099c7 <__afl_map_shm_fuzz+0xd7>
  209936: 48 8d 0d c3 b3 00 00         	leaq	46019(%rip), %rcx       # 0x214d00 <__afl_fuzz_len>
  20993d: 48 89 01                     	movq	%rax, (%rcx)
  209940: 48 83 c0 04                  	addq	$4, %rax
  209944: 48 8d 0d 15 b6 20 00         	leaq	2143765(%rip), %rcx     # 0x414f60 <__afl_fuzz_ptr>
  20994b: 48 89 01                     	movq	%rax, (%rcx)
  20994e: 80 3d c3 b5 20 00 01         	cmpb	$1, 2143683(%rip)       # 0x414f18 <__afl_debug>
  209955: 74 4f                        	je	0x2099a6 <__afl_map_shm_fuzz+0xb6>
  209957: 5b                           	popq	%rbx
  209958: c3                           	retq
  209959: 48 8b 05 60 a3 00 00         	movq	41824(%rip), %rax       # 0x213cc0 <write+0x213cc0>
  209960: 48 8b 38                     	movq	(%rax), %rdi
  209963: 48 85 db                     	testq	%rbx, %rbx
  209966: 48 8d 15 4d 87 ff ff         	leaq	-30899(%rip), %rdx      # 0x2020ba <_IO_stdin_used+0x35a>
  20996d: 48 0f 45 d3                  	cmovneq	%rbx, %rdx
  209971: 48 8d 35 f6 85 ff ff         	leaq	-31242(%rip), %rsi      # 0x201f6e <_IO_stdin_used+0x20e>
  209978: 31 c0                        	xorl	%eax, %eax
  20997a: e8 31 8f 00 00               	callq	0x2128b0 <fprintf@plt>
  20997f: 48 85 db                     	testq	%rbx, %rbx
  209982: 75 8a                        	jne	0x20990e <__afl_map_shm_fuzz+0x1e>
  209984: 48 8b 05 35 a3 00 00         	movq	41781(%rip), %rax       # 0x213cc0 <write+0x213cc0>
  20998b: 48 8b 08                     	movq	(%rax), %rcx
  20998e: 48 8d 3d 29 88 ff ff         	leaq	-30679(%rip), %rdi      # 0x2021be <_IO_stdin_used+0x45e>
  209995: be 35 00 00 00               	movl	$53, %esi
  20999a: ba 01 00 00 00               	movl	$1, %edx
  20999f: e8 2c 8f 00 00               	callq	0x2128d0 <fwrite@plt>
  2099a4: eb 2d                        	jmp	0x2099d3 <__afl_map_shm_fuzz+0xe3>
  2099a6: 48 8b 05 13 a3 00 00         	movq	41747(%rip), %rax       # 0x213cc0 <write+0x213cc0>
  2099ad: 48 8b 08                     	movq	(%rax), %rcx
  2099b0: 48 8d 3d 26 90 ff ff         	leaq	-28634(%rip), %rdi      # 0x2029dd <_IO_stdin_used+0xc7d>
  2099b7: be 2e 00 00 00               	movl	$46, %esi
  2099bc: ba 01 00 00 00               	movl	$1, %edx
  2099c1: 5b                           	popq	%rbx
  2099c2: e9 09 8f 00 00               	jmp	0x2128d0 <fwrite@plt>
  2099c7: 48 8d 3d 36 84 ff ff         	leaq	-31690(%rip), %rdi      # 0x201e04 <_IO_stdin_used+0xa4>
  2099ce: e8 bd 8d 00 00               	callq	0x212790 <perror@plt>
  2099d3: bf 04 00 00 00               	movl	$4, %edi
  2099d8: e8 13 00 00 00               	callq	0x2099f0 <send_forkserver_error>
  2099dd: bf 01 00 00 00               	movl	$1, %edi
  2099e2: e8 59 90 00 00               	callq	0x212a40 <exit@plt>
  2099e7: 66 0f 1f 84 00 00 00 00 00   	nopw	(%rax,%rax)

00000000002099f0 <send_forkserver_error>:
  2099f0: 50                           	pushq	%rax
  2099f1: 0f b7 c7                     	movzwl	%di, %eax
  2099f4: c1 e0 08                     	shll	$8, %eax
  2099f7: 0d 8f 00 00 f8               	orl	$4160749711, %eax       # imm = 0xF800008F
  2099fc: 89 44 24 04                  	movl	%eax, 4(%rsp)
  209a00: 48 8d 74 24 04               	leaq	4(%rsp), %rsi
  209a05: ba 04 00 00 00               	movl	$4, %edx
  209a0a: bf c7 00 00 00               	movl	$199, %edi
  209a0f: e8 9c 8f 00 00               	callq	0x2129b0 <write@plt>
  209a14: 58                           	popq	%rax
  209a15: c3                           	retq
  209a16: cc                           	int3
  209a17: cc                           	int3
  209a18: cc                           	int3
  209a19: cc                           	int3
  209a1a: cc                           	int3
  209a1b: cc                           	int3
  209a1c: cc                           	int3
  209a1d: cc                           	int3
  209a1e: cc                           	int3
  209a1f: cc                           	int3

0000000000209a20 <__libc_csu_init>:
  209a20: f3 0f 1e fa                  	endbr64
  209a24: 41 57                        	pushq	%r15
  209a26: 4c 8d 3d 9b a0 00 00         	leaq	41115(%rip), %r15       # 0x213ac8 <__init_array_start>
  209a2d: 41 56                        	pushq	%r14
  209a2f: 49 89 d6                     	movq	%rdx, %r14
  209a32: 41 55                        	pushq	%r13
  209a34: 49 89 f5                     	movq	%rsi, %r13
  209a37: 41 54                        	pushq	%r12
  209a39: 41 89 fc                     	movl	%edi, %r12d
  209a3c: 55                           	pushq	%rbp
  209a3d: 48 8d 2d bc a0 00 00         	leaq	41148(%rip), %rbp       # 0x213b00 <_DYNAMIC>
  209a44: 53                           	pushq	%rbx
  209a45: 4c 29 fd                     	subq	%r15, %rbp
  209a48: 48 83 ec 08                  	subq	$8, %rsp
  209a4c: e8 e3 8c 00 00               	callq	0x212734 <_init>
  209a51: 48 c1 fd 03                  	sarq	$3, %rbp
  209a55: 74 1f                        	je	0x209a76 <__libc_csu_init+0x56>
  209a57: 31 db                        	xorl	%ebx, %ebx
  209a59: 0f 1f 80 00 00 00 00         	nopl	(%rax)
  209a60: 4c 89 f2                     	movq	%r14, %rdx
  209a63: 4c 89 ee                     	movq	%r13, %rsi
  209a66: 44 89 e7                     	movl	%r12d, %edi
  209a69: 41 ff 14 df                  	callq	*(%r15,%rbx,8)
  209a6d: 48 83 c3 01                  	addq	$1, %rbx
  209a71: 48 39 dd                     	cmpq	%rbx, %rbp
  209a74: 75 ea                        	jne	0x209a60 <__libc_csu_init+0x40>
  209a76: 48 83 c4 08                  	addq	$8, %rsp
  209a7a: 5b                           	popq	%rbx
  209a7b: 5d                           	popq	%rbp
  209a7c: 41 5c                        	popq	%r12
  209a7e: 41 5d                        	popq	%r13
  209a80: 41 5e                        	popq	%r14
  209a82: 41 5f                        	popq	%r15
  209a84: c3                           	retq
  209a85: 66 66 2e 0f 1f 84 00 00 00 00 00     	nopw	%cs:(%rax,%rax)

0000000000209a90 <__libc_csu_fini>:
  209a90: f3 0f 1e fa                  	endbr64
  209a94: c3                           	retq
  209a95: cc                           	int3
  209a96: cc                           	int3
  209a97: cc                           	int3
  209a98: cc                           	int3
  209a99: cc                           	int3
  209a9a: cc                           	int3
  209a9b: cc                           	int3
  209a9c: cc                           	int3
  209a9d: cc                           	int3
  209a9e: cc                           	int3
  209a9f: cc                           	int3

0000000000209aa0 <http_parser_execute>:
  209aa0: 55                           	pushq	%rbp
  209aa1: 48 89 e5                     	movq	%rsp, %rbp
  209aa4: 41 57                        	pushq	%r15
  209aa6: 41 56                        	pushq	%r14
  209aa8: 41 55                        	pushq	%r13
  209aaa: 41 54                        	pushq	%r12
  209aac: 53                           	pushq	%rbx
  209aad: 48 81 ec 88 00 00 00         	subq	$136, %rsp
  209ab4: 44 8b 77 14                  	movl	20(%rdi), %r14d
  209ab8: 41 f7 c6 00 00 00 7f         	testl	$2130706432, %r14d      # imm = 0x7F000000
  209abf: 74 46                        	je	0x209b07 <http_parser_execute+0x67>
  209ac1: 45 31 ff                     	xorl	%r15d, %r15d
  209ac4: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  209acd: 48 8b 0d 24 b2 00 00         	movq	45604(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  209ad4: 48 35 95 b4 00 00            	xorq	$46229, %rax            # imm = 0xB495
  209ada: 8a 14 01                     	movb	(%rcx,%rax), %dl
  209add: 80 c2 01                     	addb	$1, %dl
  209ae0: 80 d2 00                     	adcb	$0, %dl
  209ae3: 88 14 01                     	movb	%dl, (%rcx,%rax)
  209ae6: 64 c7 04 25 90 ff ff ff 4a 5a 00 00  	movl	$23114, %fs:-112 # imm = 0x5A4A
  209af2: 4c 89 f8                     	movq	%r15, %rax
  209af5: 48 81 c4 88 00 00 00         	addq	$136, %rsp
  209afc: 5b                           	popq	%rbx
  209afd: 41 5c                        	popq	%r12
  209aff: 41 5d                        	popq	%r13
  209b01: 41 5e                        	popq	%r14
  209b03: 41 5f                        	popq	%r15
  209b05: 5d                           	popq	%rbp
  209b06: c3                           	retq
  209b07: 49 89 cf                     	movq	%rcx, %r15
  209b0a: 49 89 d3                     	movq	%rdx, %r11
  209b0d: 49 89 f0                     	movq	%rsi, %r8
  209b10: 49 89 fd                     	movq	%rdi, %r13
  209b13: 8b 07                        	movl	(%rdi), %eax
  209b15: 44 8b 57 04                  	movl	4(%rdi), %r10d
  209b19: 89 45 8c                     	movl	%eax, -116(%rbp)
  209b1c: c1 e8 0a                     	shrl	$10, %eax
  209b1f: 83 e0 7f                     	andl	$127, %eax
  209b22: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  209b2b: 48 8b 15 c6 b1 00 00         	movq	45510(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  209b32: 48 81 f1 92 85 00 00         	xorq	$34194, %rcx            # imm = 0x8592
  209b39: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  209b3c: 80 c3 01                     	addb	$1, %bl
  209b3f: 80 d3 00                     	adcb	$0, %bl
  209b42: 48 8d 77 14                  	leaq	20(%rdi), %rsi
  209b46: 48 89 75 d0                  	movq	%rsi, -48(%rbp)
  209b4a: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  209b4d: 64 c7 04 25 90 ff ff ff c9 42 00 00  	movl	$17097, %fs:-112 # imm = 0x42C9
  209b59: 4d 85 ff                     	testq	%r15, %r15
  209b5c: 0f 84 27 5b 00 00            	je	0x20f689 <http_parser_execute+0x5be9>
  209b62: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  209b6b: 48 8b 15 86 b1 00 00         	movq	45446(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  209b72: 48 81 f1 2b c5 00 00         	xorq	$50475, %rcx            # imm = 0xC52B
  209b79: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  209b7c: 80 c3 01                     	addb	$1, %bl
  209b7f: 80 d3 00                     	adcb	$0, %bl
  209b82: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  209b85: 64 c7 04 25 90 ff ff ff 95 62 00 00  	movl	$25237, %fs:-112 # imm = 0x6295
  209b91: 31 d2                        	xorl	%edx, %edx
  209b93: 83 f8 2d                     	cmpl	$45, %eax
  209b96: be 00 00 00 00               	movl	$0, %esi
  209b9b: 49 0f 44 f3                  	cmoveq	%r11, %rsi
  209b9f: 83 f8 32                     	cmpl	$50, %eax
  209ba2: bf 00 00 00 00               	movl	$0, %edi
  209ba7: 49 0f 44 fb                  	cmoveq	%r11, %rdi
  209bab: 8d 48 eb                     	leal	-21(%rax), %ecx
  209bae: 83 f9 0b                     	cmpl	$11, %ecx
  209bb1: 4c 89 45 b8                  	movq	%r8, -72(%rbp)
  209bb5: 48 89 b5 60 ff ff ff         	movq	%rsi, -160(%rbp)
  209bbc: 48 89 7d 80                  	movq	%rdi, -128(%rbp)
  209bc0: 0f 83 7d 5c 00 00            	jae	0x20f843 <http_parser_execute+0x5da3>
  209bc6: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  209bcf: 48 8b 15 22 b1 00 00         	movq	45346(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  209bd6: 48 81 f1 4f a9 00 00         	xorq	$43343, %rcx            # imm = 0xA94F
  209bdd: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  209be0: 80 c3 01                     	addb	$1, %bl
  209be3: 80 d3 00                     	adcb	$0, %bl
  209be6: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  209be9: 64 c7 04 25 90 ff ff ff a7 54 00 00  	movl	$21671, %fs:-112 # imm = 0x54A7
  209bf5: 31 d2                        	xorl	%edx, %edx
  209bf7: 4c 89 d9                     	movq	%r11, %rcx
  209bfa: 48 89 8d 78 ff ff ff         	movq	%rcx, -136(%rbp)
  209c01: 48 89 95 70 ff ff ff         	movq	%rdx, -144(%rbp)
  209c08: 4d 8d 4d 04                  	leaq	4(%r13), %r9
  209c0c: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  209c15: 48 8b 15 dc b0 00 00         	movq	45276(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  209c1c: 48 81 f1 ea 95 00 00         	xorq	$38378, %rcx            # imm = 0x95EA
  209c23: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  209c26: 80 c3 01                     	addb	$1, %bl
  209c29: 80 d3 00                     	adcb	$0, %bl
  209c2c: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  209c2f: 64 c7 04 25 90 ff ff ff f5 4a 00 00  	movl	$19189, %fs:-112 # imm = 0x4AF5
  209c3b: 4b 8d 0c 3b                  	leaq	(%r11,%r15), %rcx
  209c3f: 48 89 4d 90                  	movq	%rcx, -112(%rbp)
  209c43: 4b 8d 0c 3b                  	leaq	(%r11,%r15), %rcx
  209c47: 48 ff c9                     	decq	%rcx
  209c4a: 48 89 8d 50 ff ff ff         	movq	%rcx, -176(%rbp)
  209c51: 31 c9                        	xorl	%ecx, %ecx
  209c53: 48 89 4d 98                  	movq	%rcx, -104(%rbp)
  209c57: 44 89 f1                     	movl	%r14d, %ecx
  209c5a: 48 89 4d a8                  	movq	%rcx, -88(%rbp)
  209c5e: 44 89 75 c8                  	movl	%r14d, -56(%rbp)
  209c62: 44 89 75 cc                  	movl	%r14d, -52(%rbp)
  209c66: 4d 89 dc                     	movq	%r11, %r12
  209c69: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  209c72: 48 8b 15 7f b0 00 00         	movq	45183(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  209c79: 48 81 f1 d4 e4 00 00         	xorq	$58580, %rcx            # imm = 0xE4D4
  209c80: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  209c83: 80 c3 01                     	addb	$1, %bl
  209c86: 80 d3 00                     	adcb	$0, %bl
  209c89: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  209c8c: 64 c7 04 25 90 ff ff ff 6a 72 00 00  	movl	$29290, %fs:-112 # imm = 0x726A
  209c98: 41 8a 0c 24                  	movb	(%r12), %cl
  209c9c: 83 f8 3b                     	cmpl	$59, %eax
  209c9f: 73 3f                        	jae	0x209ce0 <http_parser_execute+0x240>
  209ca1: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  209caa: 48 8b 35 47 b0 00 00         	movq	45127(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  209cb1: 48 81 f2 86 da 00 00         	xorq	$55942, %rdx            # imm = 0xDA86
  209cb8: 8a 1c 16                     	movb	(%rsi,%rdx), %bl
  209cbb: 80 c3 01                     	addb	$1, %bl
  209cbe: 80 d3 00                     	adcb	$0, %bl
  209cc1: 88 1c 16                     	movb	%bl, (%rsi,%rdx)
  209cc4: 64 c7 04 25 90 ff ff ff 43 6d 00 00  	movl	$27971, %fs:-112 # imm = 0x6D43
  209cd0: 41 ff c2                     	incl	%r10d
  209cd3: 44 3b 15 52 b0 00 00         	cmpl	45138(%rip), %r10d      # 0x214d2c <max_header_size>
  209cda: 0f 87 11 68 00 00            	ja	0x2104f1 <http_parser_execute+0x6a51>
  209ce0: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  209ce9: 48 8b 35 08 b0 00 00         	movq	45064(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  209cf0: 48 81 f2 1d cf 00 00         	xorq	$53021, %rdx            # imm = 0xCF1D
  209cf7: 8a 1c 16                     	movb	(%rsi,%rdx), %bl
  209cfa: 80 c3 01                     	addb	$1, %bl
  209cfd: 80 d3 00                     	adcb	$0, %bl
  209d00: 88 1c 16                     	movb	%bl, (%rsi,%rdx)
  209d03: 64 c7 04 25 90 ff ff ff 8e 67 00 00  	movl	$26510, %fs:-112 # imm = 0x678E
  209d0f: 8d 70 ff                     	leal	-1(%rax), %esi
  209d12: 83 fe 3f                     	cmpl	$63, %esi
  209d15: 0f 87 50 75 00 00            	ja	0x21126b <http_parser_execute+0x77cb>
  209d1b: ba 06 00 00 00               	movl	$6, %edx
  209d20: ff 24 f5 88 2d 20 00         	jmpq	*2108808(,%rsi,8)
  209d27: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  209d30: 48 8b 15 c1 af 00 00         	movq	44993(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  209d37: 48 35 44 90 00 00            	xorq	$36932, %rax            # imm = 0x9044
  209d3d: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  209d40: 80 c3 01                     	addb	$1, %bl
  209d43: 80 d3 00                     	adcb	$0, %bl
  209d46: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  209d49: 64 c7 04 25 90 ff ff ff 22 48 00 00  	movl	$18466, %fs:-112 # imm = 0x4822
  209d55: ba 02 00 00 00               	movl	$2, %edx
  209d5a: 80 f9 0a                     	cmpb	$10, %cl
  209d5d: 0f 84 ff 44 00 00            	je	0x20e262 <http_parser_execute+0x47c2>
  209d63: 80 f9 0d                     	cmpb	$13, %cl
  209d66: 0f 84 f6 44 00 00            	je	0x20e262 <http_parser_execute+0x47c2>
  209d6c: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  209d75: 48 8b 15 7c af 00 00         	movq	44924(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  209d7c: 48 35 85 0b 00 00            	xorq	$2949, %rax             # imm = 0xB85
  209d82: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  209d85: 80 c3 01                     	addb	$1, %bl
  209d88: 80 d3 00                     	adcb	$0, %bl
  209d8b: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  209d8e: 64 c7 04 25 90 ff ff ff c2 05 00 00  	movl	$1474, %fs:-112 # imm = 0x5C2
  209d9a: 41 8b 55 00                  	movl	(%r13), %edx
  209d9e: 89 d0                        	movl	%edx, %eax
  209da0: 25 03 fc ff df               	andl	$3758095363, %eax       # imm = 0xDFFFFC03
  209da5: 41 89 45 00                  	movl	%eax, (%r13)
  209da9: 49 c7 45 08 ff ff ff ff      	movq	$-1, 8(%r13)
  209db1: 80 f9 48                     	cmpb	$72, %cl
  209db4: 0f 84 27 39 00 00            	je	0x20d6e1 <http_parser_execute+0x3c41>
  209dba: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  209dc3: 48 8b 35 2e af 00 00         	movq	44846(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  209dca: 48 35 d4 d4 00 00            	xorq	$54484, %rax            # imm = 0xD4D4
  209dd0: 8a 1c 06                     	movb	(%rsi,%rax), %bl
  209dd3: 80 c3 01                     	addb	$1, %bl
  209dd6: 80 d3 00                     	adcb	$0, %bl
  209dd9: 88 1c 06                     	movb	%bl, (%rsi,%rax)
  209ddc: 64 c7 04 25 90 ff ff ff 6a 6a 00 00  	movl	$27242, %fs:-112 # imm = 0x6A6A
  209de8: 81 e2 00 fc ff df            	andl	$3758095360, %edx       # imm = 0xDFFFFC00
  209dee: b8 12 00 00 00               	movl	$18, %eax
  209df3: e9 4d 04 00 00               	jmp	0x20a245 <http_parser_execute+0x7a5>
  209df8: 44 89 75 c0                  	movl	%r14d, -64(%rbp)
  209dfc: 4c 89 bd 68 ff ff ff         	movq	%r15, -152(%rbp)
  209e03: 45 89 d6                     	movl	%r10d, %r14d
  209e06: 4c 89 4d a0                  	movq	%r9, -96(%rbp)
  209e0a: 4c 89 5d b0                  	movq	%r11, -80(%rbp)
  209e0e: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  209e17: 48 8b 0d da ae 00 00         	movq	44762(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  209e1e: 48 35 83 1b 00 00            	xorq	$7043, %rax             # imm = 0x1B83
  209e24: 8a 14 01                     	movb	(%rcx,%rax), %dl
  209e27: 80 c2 01                     	addb	$1, %dl
  209e2a: 80 d2 00                     	adcb	$0, %dl
  209e2d: 88 14 01                     	movb	%dl, (%rcx,%rax)
  209e30: 64 c7 04 25 90 ff ff ff c1 0d 00 00  	movl	$3521, %fs:-112 # imm = 0xDC1
  209e3c: 45 8b 55 00                  	movl	(%r13), %r10d
  209e40: 45 89 d0                     	movl	%r10d, %r8d
  209e43: 41 c1 e8 11                  	shrl	$17, %r8d
  209e47: 41 83 e0 7f                  	andl	$127, %r8d
  209e4b: 44 8b 0d da ae 00 00         	movl	44762(%rip), %r9d       # 0x214d2c <max_header_size>
  209e52: b8 32 00 00 00               	movl	$50, %eax
  209e57: 4c 3b 65 90                  	cmpq	-112(%rbp), %r12
  209e5b: 0f 84 07 37 00 00            	je	0x20d568 <http_parser_execute+0x3ac8>
  209e61: 4d 89 e3                     	movq	%r12, %r11
  209e64: e9 e3 05 00 00               	jmp	0x20a44c <http_parser_execute+0x9ac>
  209e69: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  209e72: 48 8b 15 7f ae 00 00         	movq	44671(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  209e79: 48 35 34 82 00 00            	xorq	$33332, %rax            # imm = 0x8234
  209e7f: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  209e82: 80 c3 01                     	addb	$1, %bl
  209e85: 80 d3 00                     	adcb	$0, %bl
  209e88: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  209e8b: 48 8b 85 70 ff ff ff         	movq	-144(%rbp), %rax
  209e92: 48 85 c0                     	testq	%rax, %rax
  209e95: 49 0f 44 c4                  	cmoveq	%r12, %rax
  209e99: 48 89 85 70 ff ff ff         	movq	%rax, -144(%rbp)
  209ea0: 64 c7 04 25 90 ff ff ff 1a 41 00 00  	movl	$16666, %fs:-112 # imm = 0x411A
  209eac: 41 80 65 03 e0               	andb	$-32, 3(%r13)
  209eb1: b8 10 00 00 00               	movl	$16, %eax
  209eb6: 80 f9 0a                     	cmpb	$10, %cl
  209eb9: 0f 84 01 18 00 00            	je	0x20b6c0 <http_parser_execute+0x1c20>
  209ebf: 80 f9 0d                     	cmpb	$13, %cl
  209ec2: 0f 84 f8 17 00 00            	je	0x20b6c0 <http_parser_execute+0x1c20>
  209ec8: e9 90 43 00 00               	jmp	0x20e25d <http_parser_execute+0x47bd>
  209ecd: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  209ed6: 48 8b 15 1b ae 00 00         	movq	44571(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  209edd: 48 35 ed 81 00 00            	xorq	$33261, %rax            # imm = 0x81ED
  209ee3: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  209ee6: 80 c3 01                     	addb	$1, %bl
  209ee9: 80 d3 00                     	adcb	$0, %bl
  209eec: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  209eef: 64 c7 04 25 90 ff ff ff f6 40 00 00  	movl	$16630, %fs:-112 # imm = 0x40F6
  209efb: ba 2e 00 00 00               	movl	$46, %edx
  209f00: 80 f9 09                     	cmpb	$9, %cl
  209f03: 0f 84 59 43 00 00            	je	0x20e262 <http_parser_execute+0x47c2>
  209f09: 80 f9 20                     	cmpb	$32, %cl
  209f0c: 0f 84 50 43 00 00            	je	0x20e262 <http_parser_execute+0x47c2>
  209f12: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  209f1b: 48 8b 15 d6 ad 00 00         	movq	44502(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  209f22: 48 35 73 6c 00 00            	xorq	$27763, %rax            # imm = 0x6C73
  209f28: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  209f2b: 80 c3 01                     	addb	$1, %bl
  209f2e: 80 d3 00                     	adcb	$0, %bl
  209f31: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  209f34: 64 c7 04 25 90 ff ff ff 39 36 00 00  	movl	$13881, %fs:-112 # imm = 0x3639
  209f40: 41 8b 55 00                  	movl	(%r13), %edx
  209f44: 89 d6                        	movl	%edx, %esi
  209f46: c1 ee 11                     	shrl	$17, %esi
  209f49: 83 e6 7f                     	andl	$127, %esi
  209f4c: 83 c6 f6                     	addl	$-10, %esi
  209f4f: 83 fe 10                     	cmpl	$16, %esi
  209f52: 0f 87 1a 15 00 00            	ja	0x20b472 <http_parser_execute+0x19d2>
  209f58: b8 08 00 00 00               	movl	$8, %eax
  209f5d: ff 24 f5 88 2f 20 00         	jmpq	*2109320(,%rsi,8)
  209f64: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  209f6d: 48 8b 35 84 ad 00 00         	movq	44420(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  209f74: 48 35 53 be 00 00            	xorq	$48723, %rax            # imm = 0xBE53
  209f7a: 8a 1c 06                     	movb	(%rsi,%rax), %bl
  209f7d: 80 c3 01                     	addb	$1, %bl
  209f80: 80 d3 00                     	adcb	$0, %bl
  209f83: 88 1c 06                     	movb	%bl, (%rsi,%rax)
  209f86: 64 c7 04 25 90 ff ff ff 29 5f 00 00  	movl	$24361, %fs:-112 # imm = 0x5F29
  209f92: b8 04 00 00 00               	movl	$4, %eax
  209f97: e9 a1 14 00 00               	jmp	0x20b43d <http_parser_execute+0x199d>
  209f9c: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  209fa5: 48 8b 15 4c ad 00 00         	movq	44364(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  209fac: 48 35 77 71 00 00            	xorq	$29047, %rax            # imm = 0x7177
  209fb2: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  209fb5: 80 c3 01                     	addb	$1, %bl
  209fb8: 80 d3 00                     	adcb	$0, %bl
  209fbb: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  209fbe: 64 c7 04 25 90 ff ff ff bb 38 00 00  	movl	$14523, %fs:-112 # imm = 0x38BB
  209fca: 0f be d1                     	movsbl	%cl, %edx
  209fcd: 8d 41 d0                     	leal	-48(%rcx), %eax
  209fd0: 3c 0a                        	cmpb	$10, %al
  209fd2: 0f 82 9f 35 00 00            	jb	0x20d577 <http_parser_execute+0x3ad7>
  209fd8: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  209fe1: 48 8b 35 10 ad 00 00         	movq	44304(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  209fe8: 48 35 78 5a 00 00            	xorq	$23160, %rax            # imm = 0x5A78
  209fee: 8a 1c 06                     	movb	(%rsi,%rax), %bl
  209ff1: 80 c3 01                     	addb	$1, %bl
  209ff4: 80 d3 00                     	adcb	$0, %bl
  209ff7: 88 1c 06                     	movb	%bl, (%rsi,%rax)
  209ffa: 64 c7 04 25 90 ff ff ff 3c 2d 00 00  	movl	$11580, %fs:-112 # imm = 0x2D3C
  20a006: b8 0f 00 00 00               	movl	$15, %eax
  20a00b: 83 fa 0a                     	cmpl	$10, %edx
  20a00e: 0f 84 ac 16 00 00            	je	0x20b6c0 <http_parser_execute+0x1c20>
  20a014: 83 fa 0d                     	cmpl	$13, %edx
  20a017: 0f 84 a3 16 00 00            	je	0x20b6c0 <http_parser_execute+0x1c20>
  20a01d: e9 ac 36 00 00               	jmp	0x20d6ce <http_parser_execute+0x3c2e>
  20a022: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20a02b: 48 8b 15 c6 ac 00 00         	movq	44230(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20a032: 48 35 27 80 00 00            	xorq	$32807, %rax            # imm = 0x8027
  20a038: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20a03b: 80 c3 01                     	addb	$1, %bl
  20a03e: 80 d3 00                     	adcb	$0, %bl
  20a041: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20a044: 64 c7 04 25 90 ff ff ff 13 40 00 00  	movl	$16403, %fs:-112 # imm = 0x4013
  20a050: 49 8b 45 08                  	movq	8(%r13), %rax
  20a054: 48 8b 55 90                  	movq	-112(%rbp), %rdx
  20a058: 4c 29 e2                     	subq	%r12, %rdx
  20a05b: 48 39 d0                     	cmpq	%rdx, %rax
  20a05e: 48 0f 42 d0                  	cmovbq	%rax, %rdx
  20a062: 48 8d 70 01                  	leaq	1(%rax), %rsi
  20a066: 48 83 fe 01                  	cmpq	$1, %rsi
  20a06a: 0f 86 b4 71 00 00            	jbe	0x211224 <http_parser_execute+0x7784>
  20a070: 64 48 63 34 25 90 ff ff ff   	movslq	%fs:-112, %rsi
  20a079: 48 8b 3d 78 ac 00 00         	movq	44152(%rip), %rdi       # 0x214cf8 <__afl_area_ptr>
  20a080: 48 81 f6 45 36 00 00         	xorq	$13893, %rsi            # imm = 0x3645
  20a087: 8a 1c 37                     	movb	(%rdi,%rsi), %bl
  20a08a: 80 c3 01                     	addb	$1, %bl
  20a08d: 80 d3 00                     	adcb	$0, %bl
  20a090: 88 1c 37                     	movb	%bl, (%rdi,%rsi)
  20a093: 48 8b 75 98                  	movq	-104(%rbp), %rsi
  20a097: 48 85 f6                     	testq	%rsi, %rsi
  20a09a: 49 0f 44 f4                  	cmoveq	%r12, %rsi
  20a09e: 48 89 75 98                  	movq	%rsi, -104(%rbp)
  20a0a2: 64 c7 04 25 90 ff ff ff 22 1b 00 00  	movl	$6946, %fs:-112 # imm = 0x1B22
  20a0ae: 49 01 d4                     	addq	%rdx, %r12
  20a0b1: 49 ff cc                     	decq	%r12
  20a0b4: 48 29 d0                     	subq	%rdx, %rax
  20a0b7: 49 89 45 08                  	movq	%rax, 8(%r13)
  20a0bb: 0f 85 1f 35 00 00            	jne	0x20d5e0 <http_parser_execute+0x3b40>
  20a0c1: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20a0ca: 48 8b 15 27 ac 00 00         	movq	44071(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20a0d1: 48 35 7e 68 00 00            	xorq	$26750, %rax            # imm = 0x687E
  20a0d7: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20a0da: 80 c3 01                     	addb	$1, %bl
  20a0dd: 80 d3 00                     	adcb	$0, %bl
  20a0e0: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20a0e3: 64 c7 04 25 90 ff ff ff 3f 34 00 00  	movl	$13375, %fs:-112 # imm = 0x343F
  20a0ef: 41 f7 c6 00 00 00 7f         	testl	$2130706432, %r14d      # imm = 0x7F000000
  20a0f6: 0f 85 b6 71 00 00            	jne	0x2112b2 <http_parser_execute+0x7812>
  20a0fc: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20a105: 48 8b 15 ec ab 00 00         	movq	44012(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20a10c: 48 35 40 d2 00 00            	xorq	$53824, %rax            # imm = 0xD240
  20a112: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20a115: 80 c3 01                     	addb	$1, %bl
  20a118: 80 d3 00                     	adcb	$0, %bl
  20a11b: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20a11e: 64 c7 04 25 90 ff ff ff 20 69 00 00  	movl	$26912, %fs:-112 # imm = 0x6920
  20a12a: b8 40 00 00 00               	movl	$64, %eax
  20a12f: 48 83 7d 98 00               	cmpq	$0, -104(%rbp)
  20a134: 74 3e                        	je	0x20a174 <http_parser_execute+0x6d4>
  20a136: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  20a13f: 48 8b 35 b2 ab 00 00         	movq	43954(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20a146: 48 81 f2 19 86 00 00         	xorq	$34329, %rdx            # imm = 0x8619
  20a14d: 8a 1c 16                     	movb	(%rsi,%rdx), %bl
  20a150: 80 c3 01                     	addb	$1, %bl
  20a153: 80 d3 00                     	adcb	$0, %bl
  20a156: 88 1c 16                     	movb	%bl, (%rsi,%rdx)
  20a159: 64 c7 04 25 90 ff ff ff 0c 43 00 00  	movl	$17164, %fs:-112 # imm = 0x430C
  20a165: 48 8b 55 b8                  	movq	-72(%rbp), %rdx
  20a169: 48 83 7a 30 00               	cmpq	$0, 48(%rdx)
  20a16e: 0f 85 e1 55 00 00            	jne	0x20f755 <http_parser_execute+0x5cb5>
  20a174: 31 d2                        	xorl	%edx, %edx
  20a176: 48 89 55 98                  	movq	%rdx, -104(%rbp)
  20a17a: e9 41 15 00 00               	jmp	0x20b6c0 <http_parser_execute+0x1c20>
  20a17f: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20a188: 48 8b 15 69 ab 00 00         	movq	43881(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20a18f: 48 35 3f f4 00 00            	xorq	$62527, %rax            # imm = 0xF43F
  20a195: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20a198: 80 c3 01                     	addb	$1, %bl
  20a19b: 80 d3 00                     	adcb	$0, %bl
  20a19e: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20a1a1: 64 c7 04 25 90 ff ff ff 1f 7a 00 00  	movl	$31263, %fs:-112 # imm = 0x7A1F
  20a1ad: 80 f9 20                     	cmpb	$32, %cl
  20a1b0: 74 09                        	je	0x20a1bb <http_parser_execute+0x71b>
  20a1b2: 80 f9 09                     	cmpb	$9, %cl
  20a1b5: 0f 85 9c 10 00 00            	jne	0x20b257 <http_parser_execute+0x17b7>
  20a1bb: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20a1c4: 48 8b 15 2d ab 00 00         	movq	43821(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20a1cb: 48 35 f5 52 00 00            	xorq	$21237, %rax            # imm = 0x52F5
  20a1d1: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20a1d4: 80 c3 01                     	addb	$1, %bl
  20a1d7: 80 d3 00                     	adcb	$0, %bl
  20a1da: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20a1dd: 64 c7 04 25 90 ff ff ff 7a 29 00 00  	movl	$10618, %fs:-112 # imm = 0x297A
  20a1e9: 41 8b 55 00                  	movl	(%r13), %edx
  20a1ed: 89 d6                        	movl	%edx, %esi
  20a1ef: 81 e6 00 00 fe 00            	andl	$16646144, %esi         # imm = 0xFE0000
  20a1f5: b8 31 00 00 00               	movl	$49, %eax
  20a1fa: 81 fe 00 00 16 00            	cmpl	$1441792, %esi          # imm = 0x160000
  20a200: 0f 85 ba 14 00 00            	jne	0x20b6c0 <http_parser_execute+0x1c20>
  20a206: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20a20f: 48 8b 35 e2 aa 00 00         	movq	43746(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20a216: 48 35 62 5c 00 00            	xorq	$23650, %rax            # imm = 0x5C62
  20a21c: 8a 1c 06                     	movb	(%rsi,%rax), %bl
  20a21f: 80 c3 01                     	addb	$1, %bl
  20a222: 80 d3 00                     	adcb	$0, %bl
  20a225: 88 1c 06                     	movb	%bl, (%rsi,%rax)
  20a228: 64 c7 04 25 90 ff ff ff 31 2e 00 00  	movl	$11825, %fs:-112 # imm = 0x2E31
  20a234: 81 e2 ff ff 01 ff            	andl	$4278321151, %edx       # imm = 0xFF01FFFF
  20a23a: 81 ca 00 00 18 00            	orl	$1572864, %edx          # imm = 0x180000
  20a240: b8 31 00 00 00               	movl	$49, %eax
  20a245: 41 89 55 00                  	movl	%edx, (%r13)
  20a249: e9 72 14 00 00               	jmp	0x20b6c0 <http_parser_execute+0x1c20>
  20a24e: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20a257: 48 8b 15 9a aa 00 00         	movq	43674(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20a25e: 48 35 2b 9b 00 00            	xorq	$39723, %rax            # imm = 0x9B2B
  20a264: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20a267: 80 c3 01                     	addb	$1, %bl
  20a26a: 80 d3 00                     	adcb	$0, %bl
  20a26d: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20a270: 64 c7 04 25 90 ff ff ff 95 4d 00 00  	movl	$19861, %fs:-112 # imm = 0x4D95
  20a27c: b8 39 00 00 00               	movl	$57, %eax
  20a281: 80 f9 0a                     	cmpb	$10, %cl
  20a284: 0f 84 36 14 00 00            	je	0x20b6c0 <http_parser_execute+0x1c20>
  20a28a: e9 33 19 00 00               	jmp	0x20bbc2 <http_parser_execute+0x2122>
  20a28f: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20a298: 48 8b 15 59 aa 00 00         	movq	43609(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20a29f: 48 35 60 39 00 00            	xorq	$14688, %rax            # imm = 0x3960
  20a2a5: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20a2a8: 80 c3 01                     	addb	$1, %bl
  20a2ab: 80 d3 00                     	adcb	$0, %bl
  20a2ae: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20a2b1: 64 c7 04 25 90 ff ff ff b0 1c 00 00  	movl	$7344, %fs:-112 # imm = 0x1CB0
  20a2bd: 41 8b 45 00                  	movl	(%r13), %eax
  20a2c1: a8 40                        	testb	$64, %al
  20a2c3: 0f 85 b4 00 00 00            	jne	0x20a37d <http_parser_execute+0x8dd>
  20a2c9: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  20a2d2: 48 8b 35 1f aa 00 00         	movq	43551(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20a2d9: 48 81 f2 80 00 00 00         	xorq	$128, %rdx
  20a2e0: 8a 1c 16                     	movb	(%rsi,%rdx), %bl
  20a2e3: 80 c3 01                     	addb	$1, %bl
  20a2e6: 80 d3 00                     	adcb	$0, %bl
  20a2e9: 88 1c 16                     	movb	%bl, (%rsi,%rdx)
  20a2ec: 64 c7 04 25 90 ff ff ff 40 00 00 00  	movl	$64, %fs:-112
  20a2f8: 89 c2                        	movl	%eax, %edx
  20a2fa: f7 d2                        	notl	%edx
  20a2fc: f7 c2 00 02 00 20            	testl	$536871424, %edx        # imm = 0x20000200
  20a302: 0f 85 6d 12 00 00            	jne	0x20b575 <http_parser_execute+0x1ad5>
  20a308: 64 48 63 34 25 90 ff ff ff   	movslq	%fs:-112, %rsi
  20a311: 48 8b 3d e0 a9 00 00         	movq	43488(%rip), %rdi       # 0x214cf8 <__afl_area_ptr>
  20a318: 48 81 f6 13 2d 00 00         	xorq	$11539, %rsi            # imm = 0x2D13
  20a31f: 8a 1c 37                     	movb	(%rdi,%rsi), %bl
  20a322: 80 c3 01                     	addb	$1, %bl
  20a325: 80 d3 00                     	adcb	$0, %bl
  20a328: 88 1c 37                     	movb	%bl, (%rdi,%rsi)
  20a32b: 64 c7 04 25 90 ff ff ff 89 16 00 00  	movl	$5769, %fs:-112 # imm = 0x1689
  20a337: a8 04                        	testb	$4, %al
  20a339: 0f 85 fa 11 00 00            	jne	0x20b539 <http_parser_execute+0x1a99>
  20a33f: 64 48 63 34 25 90 ff ff ff   	movslq	%fs:-112, %rsi
  20a348: 48 8b 3d a9 a9 00 00         	movq	43433(%rip), %rdi       # 0x214cf8 <__afl_area_ptr>
  20a34f: 48 81 f6 f5 b3 00 00         	xorq	$46069, %rsi            # imm = 0xB3F5
  20a356: 8a 1c 37                     	movb	(%rdi,%rsi), %bl
  20a359: 80 c3 01                     	addb	$1, %bl
  20a35c: 80 d3 00                     	adcb	$0, %bl
  20a35f: 88 1c 37                     	movb	%bl, (%rdi,%rsi)
  20a362: 64 c7 04 25 90 ff ff ff fa 59 00 00  	movl	$23034, %fs:-112 # imm = 0x59FA
  20a36e: 83 7d 8c 00                  	cmpl	$0, -116(%rbp)
  20a372: 0f 88 fd 11 00 00            	js	0x20b575 <http_parser_execute+0x1ad5>
  20a378: e9 56 5e 00 00               	jmp	0x2101d3 <http_parser_execute+0x6733>
  20a37d: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  20a386: 48 8b 35 6b a9 00 00         	movq	43371(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20a38d: 48 81 f2 59 fc 00 00         	xorq	$64601, %rdx            # imm = 0xFC59
  20a394: 8a 1c 16                     	movb	(%rsi,%rdx), %bl
  20a397: 80 c3 01                     	addb	$1, %bl
  20a39a: 80 d3 00                     	adcb	$0, %bl
  20a39d: 88 1c 16                     	movb	%bl, (%rsi,%rdx)
  20a3a0: 64 c7 04 25 90 ff ff ff 2c 7e 00 00  	movl	$32300, %fs:-112 # imm = 0x7E2C
  20a3ac: 41 f7 c6 00 00 00 7f         	testl	$2130706432, %r14d      # imm = 0x7F000000
  20a3b3: 0f 85 18 70 00 00            	jne	0x2113d1 <http_parser_execute+0x7931>
  20a3b9: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  20a3c2: 48 8b 35 2f a9 00 00         	movq	43311(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20a3c9: 48 81 f2 40 69 00 00         	xorq	$26944, %rdx            # imm = 0x6940
  20a3d0: 8a 1c 16                     	movb	(%rsi,%rdx), %bl
  20a3d3: 80 c3 01                     	addb	$1, %bl
  20a3d6: 80 d3 00                     	adcb	$0, %bl
  20a3d9: 88 1c 16                     	movb	%bl, (%rsi,%rdx)
  20a3dc: 64 c7 04 25 90 ff ff ff a0 34 00 00  	movl	$13472, %fs:-112 # imm = 0x34A0
  20a3e8: 48 8b 55 b8                  	movq	-72(%rbp), %rdx
  20a3ec: 48 83 7a 48 00               	cmpq	$0, 72(%rdx)
  20a3f1: 0f 85 dc 53 00 00            	jne	0x20f7d3 <http_parser_execute+0x5d33>
  20a3f7: b8 40 00 00 00               	movl	$64, %eax
  20a3fc: e9 bf 12 00 00               	jmp	0x20b6c0 <http_parser_execute+0x1c20>
  20a401: 41 89 f8                     	movl	%edi, %r8d
  20a404: 66 66 66 2e 0f 1f 84 00 00 00 00 00  	nopw	%cs:(%rax,%rax)
  20a410: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20a419: 48 8b 15 d8 a8 00 00         	movq	43224(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20a420: 48 81 f1 0b b3 00 00         	xorq	$45835, %rcx            # imm = 0xB30B
  20a427: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20a42a: 80 c3 01                     	addb	$1, %bl
  20a42d: 80 d3 00                     	adcb	$0, %bl
  20a430: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20a433: 64 c7 04 25 90 ff ff ff 85 59 00 00  	movl	$22917, %fs:-112 # imm = 0x5985
  20a43f: 49 ff c3                     	incq	%r11
  20a442: 4c 3b 5d 90                  	cmpq	-112(%rbp), %r11
  20a446: 0f 84 40 14 00 00            	je	0x20b88c <http_parser_execute+0x1dec>
  20a44c: 44 89 c7                     	movl	%r8d, %edi
  20a44f: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20a458: 48 8b 35 99 a8 00 00         	movq	43161(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20a45f: 48 81 f1 d2 fe 00 00         	xorq	$65234, %rcx            # imm = 0xFED2
  20a466: 8a 1c 0e                     	movb	(%rsi,%rcx), %bl
  20a469: 80 c3 01                     	addb	$1, %bl
  20a46c: 80 d3 00                     	adcb	$0, %bl
  20a46f: 88 1c 0e                     	movb	%bl, (%rsi,%rcx)
  20a472: 64 c7 04 25 90 ff ff ff 69 7f 00 00  	movl	$32617, %fs:-112 # imm = 0x7F69
  20a47e: 49 0f be 0b                  	movsbq	(%r11), %rcx
  20a482: 48 83 f9 0a                  	cmpq	$10, %rcx
  20a486: 0f 84 53 0e 00 00            	je	0x20b2df <http_parser_execute+0x183f>
  20a48c: 80 f9 0d                     	cmpb	$13, %cl
  20a48f: 0f 84 5d 13 00 00            	je	0x20b7f2 <http_parser_execute+0x1d52>
  20a495: 64 48 63 34 25 90 ff ff ff   	movslq	%fs:-112, %rsi
  20a49e: 48 8b 1d 53 a8 00 00         	movq	43091(%rip), %rbx       # 0x214cf8 <__afl_area_ptr>
  20a4a5: 48 81 f6 46 1a 00 00         	xorq	$6726, %rsi             # imm = 0x1A46
  20a4ac: 8a 14 33                     	movb	(%rbx,%rsi), %dl
  20a4af: 80 c2 01                     	addb	$1, %dl
  20a4b2: 80 d2 00                     	adcb	$0, %dl
  20a4b5: 88 14 33                     	movb	%dl, (%rbx,%rsi)
  20a4b8: 64 c7 04 25 90 ff ff ff 23 0d 00 00  	movl	$3363, %fs:-112 # imm = 0xD23
  20a4c4: 83 7d 8c 00                  	cmpl	$0, -116(%rbp)
  20a4c8: 78 46                        	js	0x20a510 <http_parser_execute+0xa70>
  20a4ca: 80 f9 09                     	cmpb	$9, %cl
  20a4cd: 74 41                        	je	0x20a510 <http_parser_execute+0xa70>
  20a4cf: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  20a4d8: 48 8b 35 19 a8 00 00         	movq	43033(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20a4df: 48 81 f2 c9 79 00 00         	xorq	$31177, %rdx            # imm = 0x79C9
  20a4e6: 8a 1c 16                     	movb	(%rsi,%rdx), %bl
  20a4e9: 80 c3 01                     	addb	$1, %bl
  20a4ec: 80 d3 00                     	adcb	$0, %bl
  20a4ef: 88 1c 16                     	movb	%bl, (%rsi,%rdx)
  20a4f2: 64 c7 04 25 90 ff ff ff e4 3c 00 00  	movl	$15588, %fs:-112 # imm = 0x3CE4
  20a4fe: 80 f9 20                     	cmpb	$32, %cl
  20a501: 0f 82 d1 53 00 00            	jb	0x20f8d8 <http_parser_execute+0x5e38>
  20a507: 80 f9 7f                     	cmpb	$127, %cl
  20a50a: 0f 84 c8 53 00 00            	je	0x20f8d8 <http_parser_execute+0x5e38>
  20a510: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  20a519: 48 8b 35 d8 a7 00 00         	movq	42968(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20a520: 48 81 f2 e6 9a 00 00         	xorq	$39654, %rdx            # imm = 0x9AE6
  20a527: 8a 1c 16                     	movb	(%rsi,%rdx), %bl
  20a52a: 80 c3 01                     	addb	$1, %bl
  20a52d: 80 d3 00                     	adcb	$0, %bl
  20a530: 88 1c 16                     	movb	%bl, (%rsi,%rdx)
  20a533: 64 c7 04 25 90 ff ff ff 73 4d 00 00  	movl	$19827, %fs:-112 # imm = 0x4D73
  20a53f: 45 31 c0                     	xorl	%r8d, %r8d
  20a542: 83 ff 1a                     	cmpl	$26, %edi
  20a545: 0f 87 c5 fe ff ff            	ja	0x20a410 <http_parser_execute+0x970>
  20a54b: 0f b6 f1                     	movzbl	%cl, %esi
  20a54e: 48 83 ce 20                  	orq	$32, %rsi
  20a552: 89 fa                        	movl	%edi, %edx
  20a554: ff 24 d5 30 30 20 00         	jmpq	*2109488(,%rdx,8)
  20a55b: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  20a564: 48 8b 35 8d a7 00 00         	movq	42893(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20a56b: 48 81 f2 c5 da 00 00         	xorq	$56005, %rdx            # imm = 0xDAC5
  20a572: 8a 1c 16                     	movb	(%rsi,%rdx), %bl
  20a575: 80 c3 01                     	addb	$1, %bl
  20a578: 80 d3 00                     	adcb	$0, %bl
  20a57b: 88 1c 16                     	movb	%bl, (%rsi,%rdx)
  20a57e: 64 c7 04 25 90 ff ff ff 62 6d 00 00  	movl	$28002, %fs:-112 # imm = 0x6D62
  20a58a: 80 f9 20                     	cmpb	$32, %cl
  20a58d: 0f 84 6e fe ff ff            	je	0x20a401 <http_parser_execute+0x961>
  20a593: 80 f9 2c                     	cmpb	$44, %cl
  20a596: 0f 85 fc 03 00 00            	jne	0x20a998 <http_parser_execute+0xef8>
  20a59c: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20a5a5: 48 8b 15 4c a7 00 00         	movq	42828(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20a5ac: 48 81 f1 ef d2 00 00         	xorq	$53999, %rcx            # imm = 0xD2EF
  20a5b3: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20a5b6: 80 c3 01                     	addb	$1, %bl
  20a5b9: 80 d3 00                     	adcb	$0, %bl
  20a5bc: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20a5bf: 64 c7 04 25 90 ff ff ff 77 69 00 00  	movl	$26999, %fs:-112 # imm = 0x6977
  20a5cb: 83 ff 1a                     	cmpl	$26, %edi
  20a5ce: 0f 84 7f 0b 00 00            	je	0x20b153 <http_parser_execute+0x16b3>
  20a5d4: 83 ff 19                     	cmpl	$25, %edi
  20a5d7: 0f 84 41 0b 00 00            	je	0x20b11e <http_parser_execute+0x167e>
  20a5dd: 83 ff 18                     	cmpl	$24, %edi
  20a5e0: 0f 85 a0 0b 00 00            	jne	0x20b186 <http_parser_execute+0x16e6>
  20a5e6: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20a5ef: 48 8b 15 02 a7 00 00         	movq	42754(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20a5f6: 48 81 f1 74 49 00 00         	xorq	$18804, %rcx            # imm = 0x4974
  20a5fd: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20a600: 80 c3 01                     	addb	$1, %bl
  20a603: 80 d3 00                     	adcb	$0, %bl
  20a606: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20a609: 64 c7 04 25 90 ff ff ff ba 24 00 00  	movl	$9402, %fs:-112 # imm = 0x24BA
  20a615: 41 83 ca 08                  	orl	$8, %r10d
  20a619: e9 68 0b 00 00               	jmp	0x20b186 <http_parser_execute+0x16e6>
  20a61e: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20a627: 48 8b 15 ca a6 00 00         	movq	42698(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20a62e: 48 81 f1 a0 e6 00 00         	xorq	$59040, %rcx            # imm = 0xE6A0
  20a635: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20a638: 80 c3 01                     	addb	$1, %bl
  20a63b: 80 d3 00                     	adcb	$0, %bl
  20a63e: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20a641: 64 c7 04 25 90 ff ff ff 50 73 00 00  	movl	$29520, %fs:-112 # imm = 0x7350
  20a64d: 41 8d 8a 00 00 00 01         	leal	16777216(%r10), %ecx
  20a654: 81 e1 00 00 00 1f            	andl	$520093696, %ecx        # imm = 0x1F000000
  20a65a: 41 81 e2 ff ff ff e0         	andl	$3774873599, %r10d      # imm = 0xE0FFFFFF
  20a661: 41 09 ca                     	orl	%ecx, %r10d
  20a664: 45 89 55 00                  	movl	%r10d, (%r13)
  20a668: 41 b8 16 00 00 00            	movl	$22, %r8d
  20a66e: 81 f9 00 00 00 07            	cmpl	$117440512, %ecx        # imm = 0x7000000
  20a674: 0f 87 96 fd ff ff            	ja	0x20a410 <http_parser_execute+0x970>
  20a67a: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  20a683: 48 8b 3d 6e a6 00 00         	movq	42606(%rip), %rdi       # 0x214cf8 <__afl_area_ptr>
  20a68a: 48 81 f2 62 93 00 00         	xorq	$37730, %rdx            # imm = 0x9362
  20a691: 8a 1c 17                     	movb	(%rdi,%rdx), %bl
  20a694: 80 c3 01                     	addb	$1, %bl
  20a697: 80 d3 00                     	adcb	$0, %bl
  20a69a: 88 1c 17                     	movb	%bl, (%rdi,%rdx)
  20a69d: 64 c7 04 25 90 ff ff ff b1 49 00 00  	movl	$18865, %fs:-112 # imm = 0x49B1
  20a6a9: 89 ca                        	movl	%ecx, %edx
  20a6ab: 48 c1 ea 18                  	shrq	$24, %rdx
  20a6af: 40 3a b2 fb 25 20 00         	cmpb	2106875(%rdx), %sil
  20a6b6: 0f 85 54 fd ff ff            	jne	0x20a410 <http_parser_execute+0x970>
  20a6bc: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  20a6c5: 48 8b 35 2c a6 00 00         	movq	42540(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20a6cc: 48 81 f2 69 0a 00 00         	xorq	$2665, %rdx             # imm = 0xA69
  20a6d3: 8a 1c 16                     	movb	(%rsi,%rdx), %bl
  20a6d6: 80 c3 01                     	addb	$1, %bl
  20a6d9: 80 d3 00                     	adcb	$0, %bl
  20a6dc: 88 1c 16                     	movb	%bl, (%rsi,%rdx)
  20a6df: 64 c7 04 25 90 ff ff ff 34 05 00 00  	movl	$1332, %fs:-112 # imm = 0x534
  20a6eb: 31 d2                        	xorl	%edx, %edx
  20a6ed: 81 f9 00 00 00 06            	cmpl	$100663296, %ecx        # imm = 0x6000000
  20a6f3: 0f 94 c2                     	sete	%dl
  20a6f6: 44 8d 04 92                  	leal	(%rdx,%rdx,4), %r8d
  20a6fa: 41 83 c0 15                  	addl	$21, %r8d
  20a6fe: e9 0d fd ff ff               	jmp	0x20a410 <http_parser_execute+0x970>
  20a703: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20a70c: 48 8b 15 e5 a5 00 00         	movq	42469(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20a713: 48 81 f1 c0 72 00 00         	xorq	$29376, %rcx            # imm = 0x72C0
  20a71a: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20a71d: 80 c3 01                     	addb	$1, %bl
  20a720: 80 d3 00                     	adcb	$0, %bl
  20a723: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20a726: 64 c7 04 25 90 ff ff ff 60 39 00 00  	movl	$14688, %fs:-112 # imm = 0x3960
  20a732: 40 80 fe 6a                  	cmpb	$106, %sil
  20a736: 0f 8f e8 08 00 00            	jg	0x20b024 <http_parser_execute+0x1584>
  20a73c: 40 80 fe 20                  	cmpb	$32, %sil
  20a740: 0f 84 cc 0a 00 00            	je	0x20b212 <http_parser_execute+0x1772>
  20a746: 40 80 fe 63                  	cmpb	$99, %sil
  20a74a: 0f 85 7b 0a 00 00            	jne	0x20b1cb <http_parser_execute+0x172b>
  20a750: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20a759: 48 8b 15 98 a5 00 00         	movq	42392(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20a760: 48 81 f1 74 32 00 00         	xorq	$12916, %rcx            # imm = 0x3274
  20a767: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20a76a: 80 c3 01                     	addb	$1, %bl
  20a76d: 80 d3 00                     	adcb	$0, %bl
  20a770: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20a773: 64 c7 04 25 90 ff ff ff 3a 19 00 00  	movl	$6458, %fs:-112 # imm = 0x193A
  20a77f: 41 b8 14 00 00 00            	movl	$20, %r8d
  20a785: e9 86 fc ff ff               	jmp	0x20a410 <http_parser_execute+0x970>
  20a78a: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  20a793: 48 8b 35 5e a5 00 00         	movq	42334(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20a79a: 48 81 f2 2c 8b 00 00         	xorq	$35628, %rdx            # imm = 0x8B2C
  20a7a1: 8a 1c 16                     	movb	(%rsi,%rdx), %bl
  20a7a4: 80 c3 01                     	addb	$1, %bl
  20a7a7: 80 d3 00                     	adcb	$0, %bl
  20a7aa: 88 1c 16                     	movb	%bl, (%rsi,%rdx)
  20a7ad: 64 c7 04 25 90 ff ff ff 96 45 00 00  	movl	$17814, %fs:-112 # imm = 0x4596
  20a7b9: 41 b8 16 00 00 00            	movl	$22, %r8d
  20a7bf: 80 f9 2c                     	cmpb	$44, %cl
  20a7c2: 0f 85 48 fc ff ff            	jne	0x20a410 <http_parser_execute+0x970>
  20a7c8: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20a7d1: 48 8b 15 20 a5 00 00         	movq	42272(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20a7d8: 48 81 f1 f9 7b 00 00         	xorq	$31737, %rcx            # imm = 0x7BF9
  20a7df: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20a7e2: 80 c3 01                     	addb	$1, %bl
  20a7e5: 80 d3 00                     	adcb	$0, %bl
  20a7e8: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20a7eb: 64 c7 04 25 90 ff ff ff fc 3d 00 00  	movl	$15868, %fs:-112 # imm = 0x3DFC
  20a7f7: e9 b9 09 00 00               	jmp	0x20b1b5 <http_parser_execute+0x1715>
  20a7fc: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  20a805: 48 8b 35 ec a4 00 00         	movq	42220(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20a80c: 48 81 f2 93 db 00 00         	xorq	$56211, %rdx            # imm = 0xDB93
  20a813: 8a 1c 16                     	movb	(%rsi,%rdx), %bl
  20a816: 80 c3 01                     	addb	$1, %bl
  20a819: 80 d3 00                     	adcb	$0, %bl
  20a81c: 88 1c 16                     	movb	%bl, (%rsi,%rdx)
  20a81f: 64 c7 04 25 90 ff ff ff c9 6d 00 00  	movl	$28105, %fs:-112 # imm = 0x6DC9
  20a82b: 41 b8 0c 00 00 00            	movl	$12, %r8d
  20a831: 80 f9 20                     	cmpb	$32, %cl
  20a834: 0f 84 d6 fb ff ff            	je	0x20a410 <http_parser_execute+0x970>
  20a83a: e9 81 56 00 00               	jmp	0x20fec0 <http_parser_execute+0x6420>
  20a83f: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  20a848: 48 8b 35 a9 a4 00 00         	movq	42153(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20a84f: 48 81 f2 f4 84 00 00         	xorq	$34036, %rdx            # imm = 0x84F4
  20a856: 8a 1c 16                     	movb	(%rsi,%rdx), %bl
  20a859: 80 c3 01                     	addb	$1, %bl
  20a85c: 80 d3 00                     	adcb	$0, %bl
  20a85f: 88 1c 16                     	movb	%bl, (%rsi,%rdx)
  20a862: 64 c7 04 25 90 ff ff ff 7a 42 00 00  	movl	$17018, %fs:-112 # imm = 0x427A
  20a86e: 41 b8 11 00 00 00            	movl	$17, %r8d
  20a874: 80 f9 2c                     	cmpb	$44, %cl
  20a877: 0f 85 93 fb ff ff            	jne	0x20a410 <http_parser_execute+0x970>
  20a87d: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20a886: 48 8b 15 6b a4 00 00         	movq	42091(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20a88d: 48 81 f1 55 cd 00 00         	xorq	$52565, %rcx            # imm = 0xCD55
  20a894: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20a897: 80 c3 01                     	addb	$1, %bl
  20a89a: 80 d3 00                     	adcb	$0, %bl
  20a89d: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20a8a0: 64 c7 04 25 90 ff ff ff aa 66 00 00  	movl	$26282, %fs:-112 # imm = 0x66AA
  20a8ac: 41 81 e2 ff ff ff e0         	andl	$3774873599, %r10d      # imm = 0xE0FFFFFF
  20a8b3: 45 89 55 00                  	movl	%r10d, (%r13)
  20a8b7: 41 b8 0f 00 00 00            	movl	$15, %r8d
  20a8bd: e9 4e fb ff ff               	jmp	0x20a410 <http_parser_execute+0x970>
  20a8c2: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  20a8cb: 48 8b 35 26 a4 00 00         	movq	42022(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20a8d2: 48 81 f2 ad de 00 00         	xorq	$57005, %rdx            # imm = 0xDEAD
  20a8d9: 8a 1c 16                     	movb	(%rsi,%rdx), %bl
  20a8dc: 80 c3 01                     	addb	$1, %bl
  20a8df: 80 d3 00                     	adcb	$0, %bl
  20a8e2: 88 1c 16                     	movb	%bl, (%rsi,%rdx)
  20a8e5: 64 c7 04 25 90 ff ff ff 56 6f 00 00  	movl	$28502, %fs:-112 # imm = 0x6F56
  20a8f1: 41 b8 0c 00 00 00            	movl	$12, %r8d
  20a8f7: 80 f9 20                     	cmpb	$32, %cl
  20a8fa: 0f 84 10 fb ff ff            	je	0x20a410 <http_parser_execute+0x970>
  20a900: e9 5d 03 00 00               	jmp	0x20ac62 <http_parser_execute+0x11c2>
  20a905: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20a90e: 48 8b 15 e3 a3 00 00         	movq	41955(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20a915: 48 81 f1 cb 4a 00 00         	xorq	$19147, %rcx            # imm = 0x4ACB
  20a91c: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20a91f: 80 c3 01                     	addb	$1, %bl
  20a922: 80 d3 00                     	adcb	$0, %bl
  20a925: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20a928: 64 c7 04 25 90 ff ff ff 65 25 00 00  	movl	$9573, %fs:-112 # imm = 0x2565
  20a934: 40 80 fe 20                  	cmpb	$32, %sil
  20a938: 0f 84 34 07 00 00            	je	0x20b072 <http_parser_execute+0x15d2>
  20a93e: 41 b8 10 00 00 00            	movl	$16, %r8d
  20a944: 40 80 fe 63                  	cmpb	$99, %sil
  20a948: 0f 84 c2 fa ff ff            	je	0x20a410 <http_parser_execute+0x970>
  20a94e: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20a957: 48 8b 15 9a a3 00 00         	movq	41882(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20a95e: 48 81 f1 42 a1 00 00         	xorq	$41282, %rcx            # imm = 0xA142
  20a965: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20a968: 80 c3 01                     	addb	$1, %bl
  20a96b: 80 d3 00                     	adcb	$0, %bl
  20a96e: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20a971: 64 c7 04 25 90 ff ff ff a1 50 00 00  	movl	$20641, %fs:-112 # imm = 0x50A1
  20a97d: 41 b8 11 00 00 00            	movl	$17, %r8d
  20a983: 80 be 50 38 20 00 00         	cmpb	$0, 2111568(%rsi)
  20a98a: 0f 85 80 fa ff ff            	jne	0x20a410 <http_parser_execute+0x970>
  20a990: 45 31 c0                     	xorl	%r8d, %r8d
  20a993: e9 e0 06 00 00               	jmp	0x20b078 <http_parser_execute+0x15d8>
  20a998: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20a9a1: 48 8b 15 50 a3 00 00         	movq	41808(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20a9a8: 48 81 f1 f9 67 00 00         	xorq	$26617, %rcx            # imm = 0x67F9
  20a9af: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20a9b2: 80 c3 01                     	addb	$1, %bl
  20a9b5: 80 d3 00                     	adcb	$0, %bl
  20a9b8: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20a9bb: 64 c7 04 25 90 ff ff ff fc 33 00 00  	movl	$13308, %fs:-112 # imm = 0x33FC
  20a9c7: 41 b8 16 00 00 00            	movl	$22, %r8d
  20a9cd: e9 3e fa ff ff               	jmp	0x20a410 <http_parser_execute+0x970>
  20a9d2: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  20a9db: 48 8b 35 16 a3 00 00         	movq	41750(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20a9e2: 48 81 f2 25 f0 00 00         	xorq	$61477, %rdx            # imm = 0xF025
  20a9e9: 8a 1c 16                     	movb	(%rsi,%rdx), %bl
  20a9ec: 80 c3 01                     	addb	$1, %bl
  20a9ef: 80 d3 00                     	adcb	$0, %bl
  20a9f2: 88 1c 16                     	movb	%bl, (%rsi,%rdx)
  20a9f5: 64 c7 04 25 90 ff ff ff 12 78 00 00  	movl	$30738, %fs:-112 # imm = 0x7812
  20aa01: 48 8b 75 90                  	movq	-112(%rbp), %rsi
  20aa05: 4c 29 de                     	subq	%r11, %rsi
  20aa08: 4c 39 ce                     	cmpq	%r9, %rsi
  20aa0b: 49 0f 43 f1                  	cmovaeq	%r9, %rsi
  20aa0f: 48 85 f6                     	testq	%rsi, %rsi
  20aa12: 0f 84 c6 06 00 00            	je	0x20b0de <http_parser_execute+0x163e>
  20aa18: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  20aa21: 48 8b 1d d0 a2 00 00         	movq	41680(%rip), %rbx       # 0x214cf8 <__afl_area_ptr>
  20aa28: 48 81 f2 74 9d 00 00         	xorq	$40308, %rdx            # imm = 0x9D74
  20aa2f: 40 8a 3c 13                  	movb	(%rbx,%rdx), %dil
  20aa33: 40 80 c7 01                  	addb	$1, %dil
  20aa37: 40 80 d7 00                  	adcb	$0, %dil
  20aa3b: 4d 8d 3c 33                  	leaq	(%r11,%rsi), %r15
  20aa3f: 4c 89 bd 58 ff ff ff         	movq	%r15, -168(%rbp)
  20aa46: 40 88 3c 13                  	movb	%dil, (%rbx,%rdx)
  20aa4a: 64 c7 04 25 90 ff ff ff ba 4e 00 00  	movl	$20154, %fs:-112 # imm = 0x4EBA
  20aa56: 83 7d 8c 00                  	cmpl	$0, -116(%rbp)
  20aa5a: 0f 88 3a 01 00 00            	js	0x20ab9a <http_parser_execute+0x10fa>
  20aa60: 48 ff ce                     	decq	%rsi
  20aa63: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  20aa6c: 48 8b 3d 85 a2 00 00         	movq	41605(%rip), %rdi       # 0x214cf8 <__afl_area_ptr>
  20aa73: 48 81 f2 b3 c0 00 00         	xorq	$49331, %rdx            # imm = 0xC0B3
  20aa7a: 0f b6 1c 17                  	movzbl	(%rdi,%rdx), %ebx
  20aa7e: 80 c3 01                     	addb	$1, %bl
  20aa81: 80 d3 00                     	adcb	$0, %bl
  20aa84: 88 1c 17                     	movb	%bl, (%rdi,%rdx)
  20aa87: 64 c7 04 25 90 ff ff ff 59 60 00 00  	movl	$24665, %fs:-112 # imm = 0x6059
  20aa93: 80 f9 09                     	cmpb	$9, %cl
  20aa96: 74 54                        	je	0x20aaec <http_parser_execute+0x104c>
  20aa98: 80 f9 0a                     	cmpb	$10, %cl
  20aa9b: 0f 84 0b 06 00 00            	je	0x20b0ac <http_parser_execute+0x160c>
  20aaa1: 80 f9 0d                     	cmpb	$13, %cl
  20aaa4: 0f 84 02 06 00 00            	je	0x20b0ac <http_parser_execute+0x160c>
  20aaaa: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  20aab3: 48 8b 3d 3e a2 00 00         	movq	41534(%rip), %rdi       # 0x214cf8 <__afl_area_ptr>
  20aaba: 48 81 f2 41 59 00 00         	xorq	$22849, %rdx            # imm = 0x5941
  20aac1: 0f b6 1c 17                  	movzbl	(%rdi,%rdx), %ebx
  20aac5: 80 c3 01                     	addb	$1, %bl
  20aac8: 80 d3 00                     	adcb	$0, %bl
  20aacb: 88 1c 17                     	movb	%bl, (%rdi,%rdx)
  20aace: 64 c7 04 25 90 ff ff ff a0 2c 00 00  	movl	$11424, %fs:-112 # imm = 0x2CA0
  20aada: 80 f9 20                     	cmpb	$32, %cl
  20aadd: 0f 82 31 50 00 00            	jb	0x20fb14 <http_parser_execute+0x6074>
  20aae3: 80 f9 7f                     	cmpb	$127, %cl
  20aae6: 0f 84 28 50 00 00            	je	0x20fb14 <http_parser_execute+0x6074>
  20aaec: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20aaf5: 48 8b 15 fc a1 00 00         	movq	41468(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20aafc: 48 81 f1 86 03 00 00         	xorq	$902, %rcx              # imm = 0x386
  20ab03: 0f b6 1c 0a                  	movzbl	(%rdx,%rcx), %ebx
  20ab07: 80 c3 01                     	addb	$1, %bl
  20ab0a: 80 d3 00                     	adcb	$0, %bl
  20ab0d: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20ab10: 64 c7 04 25 90 ff ff ff c3 01 00 00  	movl	$451, %fs:-112  # imm = 0x1C3
  20ab1c: 48 85 f6                     	testq	%rsi, %rsi
  20ab1f: 0f 84 f3 00 00 00            	je	0x20ac18 <http_parser_execute+0x1178>
  20ab25: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20ab2e: 48 8b 15 c3 a1 00 00         	movq	41411(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20ab35: 48 81 f1 0d 6f 00 00         	xorq	$28429, %rcx            # imm = 0x6F0D
  20ab3c: 0f b6 1c 0a                  	movzbl	(%rdx,%rcx), %ebx
  20ab40: 80 c3 01                     	addb	$1, %bl
  20ab43: 80 d3 00                     	adcb	$0, %bl
  20ab46: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20ab49: 64 c7 04 25 90 ff ff ff 86 37 00 00  	movl	$14214, %fs:-112 # imm = 0x3786
  20ab55: 41 0f b6 4b 01               	movzbl	1(%r11), %ecx
  20ab5a: 49 ff c3                     	incq	%r11
  20ab5d: e9 fe fe ff ff               	jmp	0x20aa60 <http_parser_execute+0xfc0>
  20ab62: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20ab6b: 48 8b 15 86 a1 00 00         	movq	41350(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20ab72: 48 81 f1 b4 04 00 00         	xorq	$1204, %rcx             # imm = 0x4B4
  20ab79: 0f b6 1c 0a                  	movzbl	(%rdx,%rcx), %ebx
  20ab7d: 80 c3 01                     	addb	$1, %bl
  20ab80: 80 d3 00                     	adcb	$0, %bl
  20ab83: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20ab86: 64 c7 04 25 90 ff ff ff 5a 02 00 00  	movl	$602, %fs:-112  # imm = 0x25A
  20ab92: 41 0f b6 4b 01               	movzbl	1(%r11), %ecx
  20ab97: 49 ff c3                     	incq	%r11
  20ab9a: 48 ff ce                     	decq	%rsi
  20ab9d: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  20aba6: 48 8b 3d 4b a1 00 00         	movq	41291(%rip), %rdi       # 0x214cf8 <__afl_area_ptr>
  20abad: 48 81 f2 91 17 00 00         	xorq	$6033, %rdx             # imm = 0x1791
  20abb4: 0f b6 1c 17                  	movzbl	(%rdi,%rdx), %ebx
  20abb8: 80 c3 01                     	addb	$1, %bl
  20abbb: 80 d3 00                     	adcb	$0, %bl
  20abbe: 88 1c 17                     	movb	%bl, (%rdi,%rdx)
  20abc1: 64 c7 04 25 90 ff ff ff c8 0b 00 00  	movl	$3016, %fs:-112 # imm = 0xBC8
  20abcd: 80 f9 0a                     	cmpb	$10, %cl
  20abd0: 0f 84 d6 04 00 00            	je	0x20b0ac <http_parser_execute+0x160c>
  20abd6: 80 f9 0d                     	cmpb	$13, %cl
  20abd9: 0f 84 cd 04 00 00            	je	0x20b0ac <http_parser_execute+0x160c>
  20abdf: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20abe8: 48 8b 15 09 a1 00 00         	movq	41225(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20abef: 48 81 f1 22 55 00 00         	xorq	$21794, %rcx            # imm = 0x5522
  20abf6: 0f b6 1c 0a                  	movzbl	(%rdx,%rcx), %ebx
  20abfa: 80 c3 01                     	addb	$1, %bl
  20abfd: 80 d3 00                     	adcb	$0, %bl
  20ac00: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20ac03: 64 c7 04 25 90 ff ff ff 91 2a 00 00  	movl	$10897, %fs:-112 # imm = 0x2A91
  20ac0f: 48 85 f6                     	testq	%rsi, %rsi
  20ac12: 0f 85 4a ff ff ff            	jne	0x20ab62 <http_parser_execute+0x10c2>
  20ac18: 4c 8b 9d 58 ff ff ff         	movq	-168(%rbp), %r11
  20ac1f: e9 ba 04 00 00               	jmp	0x20b0de <http_parser_execute+0x163e>
  20ac24: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  20ac2d: 48 8b 35 c4 a0 00 00         	movq	41156(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20ac34: 48 81 f2 b8 03 00 00         	xorq	$952, %rdx              # imm = 0x3B8
  20ac3b: 8a 1c 16                     	movb	(%rsi,%rdx), %bl
  20ac3e: 80 c3 01                     	addb	$1, %bl
  20ac41: 80 d3 00                     	adcb	$0, %bl
  20ac44: 88 1c 16                     	movb	%bl, (%rsi,%rdx)
  20ac47: 64 c7 04 25 90 ff ff ff dc 01 00 00  	movl	$476, %fs:-112  # imm = 0x1DC
  20ac53: 41 b8 0a 00 00 00            	movl	$10, %r8d
  20ac59: 80 f9 20                     	cmpb	$32, %cl
  20ac5c: 0f 84 ae f7 ff ff            	je	0x20a410 <http_parser_execute+0x970>
  20ac62: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  20ac6b: 48 8b 35 86 a0 00 00         	movq	41094(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20ac72: 48 81 f2 cb 96 00 00         	xorq	$38603, %rdx            # imm = 0x96CB
  20ac79: 8a 1c 16                     	movb	(%rsi,%rdx), %bl
  20ac7c: 80 c3 01                     	addb	$1, %bl
  20ac7f: 80 d3 00                     	adcb	$0, %bl
  20ac82: 88 1c 16                     	movb	%bl, (%rsi,%rdx)
  20ac85: 64 c7 04 25 90 ff ff ff 65 4b 00 00  	movl	$19301, %fs:-112 # imm = 0x4B65
  20ac91: 8d 51 c6                     	leal	-58(%rcx), %edx
  20ac94: 80 fa f5                     	cmpb	$-11, %dl
  20ac97: 0f 86 29 5c 00 00            	jbe	0x2108c6 <http_parser_execute+0x6e26>
  20ac9d: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  20aca6: 48 8b 35 4b a0 00 00         	movq	41035(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20acad: 48 81 f2 0d f2 00 00         	xorq	$61965, %rdx            # imm = 0xF20D
  20acb4: 8a 1c 16                     	movb	(%rsi,%rdx), %bl
  20acb7: 80 c3 01                     	addb	$1, %bl
  20acba: 80 d3 00                     	adcb	$0, %bl
  20acbd: 88 1c 16                     	movb	%bl, (%rsi,%rdx)
  20acc0: 64 c7 04 25 90 ff ff ff 06 79 00 00  	movl	$30982, %fs:-112 # imm = 0x7906
  20accc: 49 8b 75 08                  	movq	8(%r13), %rsi
  20acd0: 48 ba 99 99 99 99 99 99 99 19	movabsq	$1844674407370955161, %rdx # imm = 0x1999999999999999
  20acda: 48 39 d6                     	cmpq	%rdx, %rsi
  20acdd: 0f 83 13 5c 00 00            	jae	0x2108f6 <http_parser_execute+0x6e56>
  20ace3: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  20acec: 48 8b 3d 05 a0 00 00         	movq	40965(%rip), %rdi       # 0x214cf8 <__afl_area_ptr>
  20acf3: 48 81 f2 98 74 00 00         	xorq	$29848, %rdx            # imm = 0x7498
  20acfa: 8a 1c 17                     	movb	(%rdi,%rdx), %bl
  20acfd: 80 c3 01                     	addb	$1, %bl
  20ad00: 80 d3 00                     	adcb	$0, %bl
  20ad03: 88 1c 17                     	movb	%bl, (%rdi,%rdx)
  20ad06: 64 c7 04 25 90 ff ff ff 4c 3a 00 00  	movl	$14924, %fs:-112 # imm = 0x3A4C
  20ad12: 48 8d 14 b6                  	leaq	(%rsi,%rsi,4), %rdx
  20ad16: 48 8d 0c 51                  	leaq	(%rcx,%rdx,2), %rcx
  20ad1a: 48 83 c1 d0                  	addq	$-48, %rcx
  20ad1e: 49 89 4d 08                  	movq	%rcx, 8(%r13)
  20ad22: 41 b8 0b 00 00 00            	movl	$11, %r8d
  20ad28: e9 e3 f6 ff ff               	jmp	0x20a410 <http_parser_execute+0x970>
  20ad2d: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20ad36: 48 8b 15 bb 9f 00 00         	movq	40891(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20ad3d: 48 81 f1 c4 56 00 00         	xorq	$22212, %rcx            # imm = 0x56C4
  20ad44: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20ad47: 80 c3 01                     	addb	$1, %bl
  20ad4a: 80 d3 00                     	adcb	$0, %bl
  20ad4d: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20ad50: 64 c7 04 25 90 ff ff ff 62 2b 00 00  	movl	$11106, %fs:-112 # imm = 0x2B62
  20ad5c: 41 8d 8a 00 00 00 01         	leal	16777216(%r10), %ecx
  20ad63: 81 e1 00 00 00 1f            	andl	$520093696, %ecx        # imm = 0x1F000000
  20ad69: 41 81 e2 ff ff ff e0         	andl	$3774873599, %r10d      # imm = 0xE0FFFFFF
  20ad70: 41 09 ca                     	orl	%ecx, %r10d
  20ad73: 45 89 55 00                  	movl	%r10d, (%r13)
  20ad77: 41 b8 16 00 00 00            	movl	$22, %r8d
  20ad7d: 81 f9 00 00 00 0a            	cmpl	$167772160, %ecx        # imm = 0xA000000
  20ad83: 0f 87 87 f6 ff ff            	ja	0x20a410 <http_parser_execute+0x970>
  20ad89: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  20ad92: 48 8b 3d 5f 9f 00 00         	movq	40799(%rip), %rdi       # 0x214cf8 <__afl_area_ptr>
  20ad99: 48 81 f2 66 08 00 00         	xorq	$2150, %rdx             # imm = 0x866
  20ada0: 8a 1c 17                     	movb	(%rdi,%rdx), %bl
  20ada3: 80 c3 01                     	addb	$1, %bl
  20ada6: 80 d3 00                     	adcb	$0, %bl
  20ada9: 88 1c 17                     	movb	%bl, (%rdi,%rdx)
  20adac: 64 c7 04 25 90 ff ff ff 33 04 00 00  	movl	$1075, %fs:-112 # imm = 0x433
  20adb8: 89 ca                        	movl	%ecx, %edx
  20adba: 48 c1 ea 18                  	shrq	$24, %rdx
  20adbe: 40 3a b2 2b 1e 20 00         	cmpb	2104875(%rdx), %sil
  20adc5: 0f 85 45 f6 ff ff            	jne	0x20a410 <http_parser_execute+0x970>
  20adcb: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  20add4: 48 8b 35 1d 9f 00 00         	movq	40733(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20addb: 48 81 f2 f2 45 00 00         	xorq	$17906, %rdx            # imm = 0x45F2
  20ade2: 8a 1c 16                     	movb	(%rsi,%rdx), %bl
  20ade5: 80 c3 01                     	addb	$1, %bl
  20ade8: 80 d3 00                     	adcb	$0, %bl
  20adeb: 88 1c 16                     	movb	%bl, (%rsi,%rdx)
  20adee: 64 c7 04 25 90 ff ff ff f9 22 00 00  	movl	$8953, %fs:-112 # imm = 0x22F9
  20adfa: 31 d2                        	xorl	%edx, %edx
  20adfc: 81 f9 00 00 00 09            	cmpl	$150994944, %ecx        # imm = 0x9000000
  20ae02: 0f 94 c2                     	sete	%dl
  20ae05: 44 8d 04 92                  	leal	(%rdx,%rdx,4), %r8d
  20ae09: 41 83 c0 13                  	addl	$19, %r8d
  20ae0d: e9 fe f5 ff ff               	jmp	0x20a410 <http_parser_execute+0x970>
  20ae12: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20ae1b: 48 8b 15 d6 9e 00 00         	movq	40662(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20ae22: 48 81 f1 87 9d 00 00         	xorq	$40327, %rcx            # imm = 0x9D87
  20ae29: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20ae2c: 80 c3 01                     	addb	$1, %bl
  20ae2f: 80 d3 00                     	adcb	$0, %bl
  20ae32: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20ae35: 64 c7 04 25 90 ff ff ff c3 4e 00 00  	movl	$20163, %fs:-112 # imm = 0x4EC3
  20ae41: 41 8d 8a 00 00 00 01         	leal	16777216(%r10), %ecx
  20ae48: 81 e1 00 00 00 1f            	andl	$520093696, %ecx        # imm = 0x1F000000
  20ae4e: 41 81 e2 ff ff ff e0         	andl	$3774873599, %r10d      # imm = 0xE0FFFFFF
  20ae55: 41 09 ca                     	orl	%ecx, %r10d
  20ae58: 45 89 55 00                  	movl	%r10d, (%r13)
  20ae5c: 41 b8 11 00 00 00            	movl	$17, %r8d
  20ae62: 81 f9 00 00 00 07            	cmpl	$117440512, %ecx        # imm = 0x7000000
  20ae68: 0f 87 a2 f5 ff ff            	ja	0x20a410 <http_parser_execute+0x970>
  20ae6e: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  20ae77: 48 8b 3d 7a 9e 00 00         	movq	40570(%rip), %rdi       # 0x214cf8 <__afl_area_ptr>
  20ae7e: 48 81 f2 b9 ce 00 00         	xorq	$52921, %rdx            # imm = 0xCEB9
  20ae85: 8a 1c 17                     	movb	(%rdi,%rdx), %bl
  20ae88: 80 c3 01                     	addb	$1, %bl
  20ae8b: 80 d3 00                     	adcb	$0, %bl
  20ae8e: 88 1c 17                     	movb	%bl, (%rdi,%rdx)
  20ae91: 64 c7 04 25 90 ff ff ff 5c 67 00 00  	movl	$26460, %fs:-112 # imm = 0x675C
  20ae9d: 89 ca                        	movl	%ecx, %edx
  20ae9f: 48 c1 ea 18                  	shrq	$24, %rdx
  20aea3: 40 3a b2 4e 24 20 00         	cmpb	2106446(%rdx), %sil
  20aeaa: 0f 85 60 f5 ff ff            	jne	0x20a410 <http_parser_execute+0x970>
  20aeb0: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  20aeb9: 48 8b 35 38 9e 00 00         	movq	40504(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20aec0: 48 81 f2 6a d0 00 00         	xorq	$53354, %rdx            # imm = 0xD06A
  20aec7: 8a 1c 16                     	movb	(%rsi,%rdx), %bl
  20aeca: 80 c3 01                     	addb	$1, %bl
  20aecd: 80 d3 00                     	adcb	$0, %bl
  20aed0: 88 1c 16                     	movb	%bl, (%rsi,%rdx)
  20aed3: 64 c7 04 25 90 ff ff ff 35 68 00 00  	movl	$26677, %fs:-112 # imm = 0x6835
  20aedf: 81 f9 00 00 00 06            	cmpl	$100663296, %ecx        # imm = 0x6000000
  20aee5: b9 17 00 00 00               	movl	$23, %ecx
  20aeea: 41 b8 10 00 00 00            	movl	$16, %r8d
  20aef0: 44 0f 44 c1                  	cmovel	%ecx, %r8d
  20aef4: e9 17 f5 ff ff               	jmp	0x20a410 <http_parser_execute+0x970>
  20aef9: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20af02: 48 8b 15 ef 9d 00 00         	movq	40431(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20af09: 48 81 f1 e1 f0 00 00         	xorq	$61665, %rcx            # imm = 0xF0E1
  20af10: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20af13: 80 c3 01                     	addb	$1, %bl
  20af16: 80 d3 00                     	adcb	$0, %bl
  20af19: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20af1c: 64 c7 04 25 90 ff ff ff 70 78 00 00  	movl	$30832, %fs:-112 # imm = 0x7870
  20af28: 41 8d 8a 00 00 00 01         	leal	16777216(%r10), %ecx
  20af2f: 81 e1 00 00 00 1f            	andl	$520093696, %ecx        # imm = 0x1F000000
  20af35: 41 81 e2 ff ff ff e0         	andl	$3774873599, %r10d      # imm = 0xE0FFFFFF
  20af3c: 41 09 ca                     	orl	%ecx, %r10d
  20af3f: 45 89 55 00                  	movl	%r10d, (%r13)
  20af43: 41 b8 16 00 00 00            	movl	$22, %r8d
  20af49: 81 f9 00 00 00 05            	cmpl	$83886080, %ecx         # imm = 0x5000000
  20af4f: 0f 87 bb f4 ff ff            	ja	0x20a410 <http_parser_execute+0x970>
  20af55: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  20af5e: 48 8b 3d 93 9d 00 00         	movq	40339(%rip), %rdi       # 0x214cf8 <__afl_area_ptr>
  20af65: 48 81 f2 82 a1 00 00         	xorq	$41346, %rdx            # imm = 0xA182
  20af6c: 8a 1c 17                     	movb	(%rdi,%rdx), %bl
  20af6f: 80 c3 01                     	addb	$1, %bl
  20af72: 80 d3 00                     	adcb	$0, %bl
  20af75: 88 1c 17                     	movb	%bl, (%rdi,%rdx)
  20af78: 64 c7 04 25 90 ff ff ff c1 50 00 00  	movl	$20673, %fs:-112 # imm = 0x50C1
  20af84: 89 ca                        	movl	%ecx, %edx
  20af86: 48 c1 ea 18                  	shrq	$24, %rdx
  20af8a: 40 3a b2 ee 20 20 00         	cmpb	2105582(%rdx), %sil
  20af91: 0f 85 79 f4 ff ff            	jne	0x20a410 <http_parser_execute+0x970>
  20af97: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  20afa0: 48 8b 35 51 9d 00 00         	movq	40273(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20afa7: 48 81 f2 85 f7 00 00         	xorq	$63365, %rdx            # imm = 0xF785
  20afae: 8a 1c 16                     	movb	(%rsi,%rdx), %bl
  20afb1: 80 c3 01                     	addb	$1, %bl
  20afb4: 80 d3 00                     	adcb	$0, %bl
  20afb7: 88 1c 16                     	movb	%bl, (%rsi,%rdx)
  20afba: 64 c7 04 25 90 ff ff ff c2 7b 00 00  	movl	$31682, %fs:-112 # imm = 0x7BC2
  20afc6: 31 d2                        	xorl	%edx, %edx
  20afc8: 81 f9 00 00 00 04            	cmpl	$67108864, %ecx         # imm = 0x4000000
  20afce: 0f 94 c2                     	sete	%dl
  20afd1: 44 8d 04 92                  	leal	(%rdx,%rdx,4), %r8d
  20afd5: 41 83 c0 14                  	addl	$20, %r8d
  20afd9: e9 32 f4 ff ff               	jmp	0x20a410 <http_parser_execute+0x970>
  20afde: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  20afe7: 48 8b 35 0a 9d 00 00         	movq	40202(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20afee: 48 81 f2 de 3b 00 00         	xorq	$15326, %rdx            # imm = 0x3BDE
  20aff5: 8a 1c 16                     	movb	(%rsi,%rdx), %bl
  20aff8: 80 c3 01                     	addb	$1, %bl
  20affb: 80 d3 00                     	adcb	$0, %bl
  20affe: 88 1c 16                     	movb	%bl, (%rsi,%rdx)
  20b001: 64 c7 04 25 90 ff ff ff ef 1d 00 00  	movl	$7663, %fs:-112 # imm = 0x1DEF
  20b00d: 80 f9 20                     	cmpb	$32, %cl
  20b010: b9 17 00 00 00               	movl	$23, %ecx
  20b015: 41 b8 11 00 00 00            	movl	$17, %r8d
  20b01b: 44 0f 44 c1                  	cmovel	%ecx, %r8d
  20b01f: e9 ec f3 ff ff               	jmp	0x20a410 <http_parser_execute+0x970>
  20b024: 40 80 fe 6b                  	cmpb	$107, %sil
  20b028: 0f 84 1e 02 00 00            	je	0x20b24c <http_parser_execute+0x17ac>
  20b02e: 40 80 fe 75                  	cmpb	$117, %sil
  20b032: 0f 85 93 01 00 00            	jne	0x20b1cb <http_parser_execute+0x172b>
  20b038: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20b041: 48 8b 15 b0 9c 00 00         	movq	40112(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20b048: 48 81 f1 5f 98 00 00         	xorq	$39007, %rcx            # imm = 0x985F
  20b04f: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20b052: 80 c3 01                     	addb	$1, %bl
  20b055: 80 d3 00                     	adcb	$0, %bl
  20b058: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20b05b: 64 c7 04 25 90 ff ff ff 2f 4c 00 00  	movl	$19503, %fs:-112 # imm = 0x4C2F
  20b067: 41 b8 15 00 00 00            	movl	$21, %r8d
  20b06d: e9 9e f3 ff ff               	jmp	0x20a410 <http_parser_execute+0x970>
  20b072: 41 b8 0f 00 00 00            	movl	$15, %r8d
  20b078: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20b081: 48 8b 15 70 9c 00 00         	movq	40048(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20b088: 48 81 f1 73 bc 00 00         	xorq	$48243, %rcx            # imm = 0xBC73
  20b08f: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20b092: 80 c3 01                     	addb	$1, %bl
  20b095: 80 d3 00                     	adcb	$0, %bl
  20b098: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20b09b: 64 c7 04 25 90 ff ff ff 39 5e 00 00  	movl	$24121, %fs:-112 # imm = 0x5E39
  20b0a7: e9 64 f3 ff ff               	jmp	0x20a410 <http_parser_execute+0x970>
  20b0ac: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20b0b5: 48 8b 15 3c 9c 00 00         	movq	39996(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20b0bc: 48 81 f1 1b 23 00 00         	xorq	$8987, %rcx             # imm = 0x231B
  20b0c3: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20b0c6: 80 c3 01                     	addb	$1, %bl
  20b0c9: 80 d3 00                     	adcb	$0, %bl
  20b0cc: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20b0cf: 64 c7 04 25 90 ff ff ff 8d 11 00 00  	movl	$4493, %fs:-112 # imm = 0x118D
  20b0db: 49 ff cb                     	decq	%r11
  20b0de: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20b0e7: 48 8b 15 0a 9c 00 00         	movq	39946(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20b0ee: 48 81 f1 d8 7c 00 00         	xorq	$31960, %rcx            # imm = 0x7CD8
  20b0f5: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20b0f8: 80 c3 01                     	addb	$1, %bl
  20b0fb: 80 d3 00                     	adcb	$0, %bl
  20b0fe: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20b101: 64 c7 04 25 90 ff ff ff 6c 3e 00 00  	movl	$15980, %fs:-112 # imm = 0x3E6C
  20b10d: 31 c9                        	xorl	%ecx, %ecx
  20b10f: 4c 3b 5d 90                  	cmpq	-112(%rbp), %r11
  20b113: 0f 94 c1                     	sete	%cl
  20b116: 49 29 cb                     	subq	%rcx, %r11
  20b119: e9 f2 f2 ff ff               	jmp	0x20a410 <http_parser_execute+0x970>
  20b11e: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20b127: 48 8b 15 ca 9b 00 00         	movq	39882(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20b12e: 48 81 f1 62 0c 00 00         	xorq	$3170, %rcx             # imm = 0xC62
  20b135: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20b138: 80 c3 01                     	addb	$1, %bl
  20b13b: 80 d3 00                     	adcb	$0, %bl
  20b13e: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20b141: 64 c7 04 25 90 ff ff ff 31 06 00 00  	movl	$1585, %fs:-112 # imm = 0x631
  20b14d: 41 83 ca 10                  	orl	$16, %r10d
  20b151: eb 33                        	jmp	0x20b186 <http_parser_execute+0x16e6>
  20b153: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20b15c: 48 8b 15 95 9b 00 00         	movq	39829(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20b163: 48 81 f1 e3 85 00 00         	xorq	$34275, %rcx            # imm = 0x85E3
  20b16a: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20b16d: 80 c3 01                     	addb	$1, %bl
  20b170: 80 d3 00                     	adcb	$0, %bl
  20b173: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20b176: 64 c7 04 25 90 ff ff ff f1 42 00 00  	movl	$17137, %fs:-112 # imm = 0x42F1
  20b182: 41 83 ca 20                  	orl	$32, %r10d
  20b186: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20b18f: 48 8b 15 62 9b 00 00         	movq	39778(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20b196: 48 81 f1 6a 97 00 00         	xorq	$38762, %rcx            # imm = 0x976A
  20b19d: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20b1a0: 80 c3 01                     	addb	$1, %bl
  20b1a3: 80 d3 00                     	adcb	$0, %bl
  20b1a6: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20b1a9: 64 c7 04 25 90 ff ff ff b5 4b 00 00  	movl	$19381, %fs:-112 # imm = 0x4BB5
  20b1b5: 41 81 e2 ff ff ff e0         	andl	$3774873599, %r10d      # imm = 0xE0FFFFFF
  20b1bc: 45 89 55 00                  	movl	%r10d, (%r13)
  20b1c0: 41 b8 12 00 00 00            	movl	$18, %r8d
  20b1c6: e9 45 f2 ff ff               	jmp	0x20a410 <http_parser_execute+0x970>
  20b1cb: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20b1d4: 48 8b 15 1d 9b 00 00         	movq	39709(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20b1db: 48 81 f1 82 5e 00 00         	xorq	$24194, %rcx            # imm = 0x5E82
  20b1e2: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20b1e5: 80 c3 01                     	addb	$1, %bl
  20b1e8: 80 d3 00                     	adcb	$0, %bl
  20b1eb: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20b1ee: 64 c7 04 25 90 ff ff ff 41 2f 00 00  	movl	$12097, %fs:-112 # imm = 0x2F41
  20b1fa: 41 b8 16 00 00 00            	movl	$22, %r8d
  20b200: 80 be 50 38 20 00 00         	cmpb	$0, 2111568(%rsi)
  20b207: 0f 85 03 f2 ff ff            	jne	0x20a410 <http_parser_execute+0x970>
  20b20d: 45 31 c0                     	xorl	%r8d, %r8d
  20b210: eb 06                        	jmp	0x20b218 <http_parser_execute+0x1778>
  20b212: 41 b8 12 00 00 00            	movl	$18, %r8d
  20b218: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20b221: 48 8b 15 d0 9a 00 00         	movq	39632(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20b228: 48 81 f1 b0 6b 00 00         	xorq	$27568, %rcx            # imm = 0x6BB0
  20b22f: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20b232: 80 c3 01                     	addb	$1, %bl
  20b235: 80 d3 00                     	adcb	$0, %bl
  20b238: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20b23b: 64 c7 04 25 90 ff ff ff d8 35 00 00  	movl	$13784, %fs:-112 # imm = 0x35D8
  20b247: e9 c4 f1 ff ff               	jmp	0x20a410 <http_parser_execute+0x970>
  20b24c: 41 b8 13 00 00 00            	movl	$19, %r8d
  20b252: e9 b9 f1 ff ff               	jmp	0x20a410 <http_parser_execute+0x970>
  20b257: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20b260: 48 8b 15 91 9a 00 00         	movq	39569(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20b267: 48 35 a5 1e 00 00            	xorq	$7845, %rax             # imm = 0x1EA5
  20b26d: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20b270: 80 c3 01                     	addb	$1, %bl
  20b273: 80 d3 00                     	adcb	$0, %bl
  20b276: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20b279: 64 c7 04 25 90 ff ff ff 52 0f 00 00  	movl	$3922, %fs:-112 # imm = 0xF52
  20b285: 41 8b 55 00                  	movl	(%r13), %edx
  20b289: 89 d0                        	movl	%edx, %eax
  20b28b: c1 e8 11                     	shrl	$17, %eax
  20b28e: 83 e0 7f                     	andl	$127, %eax
  20b291: 83 c0 e9                     	addl	$-23, %eax
  20b294: 83 f8 03                     	cmpl	$3, %eax
  20b297: 0f 87 4b 05 00 00            	ja	0x20b7e8 <http_parser_execute+0x1d48>
  20b29d: ff 24 c5 10 30 20 00         	jmpq	*2109456(,%rax,8)
  20b2a4: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20b2ad: 48 8b 35 44 9a 00 00         	movq	39492(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20b2b4: 48 35 34 30 00 00            	xorq	$12340, %rax            # imm = 0x3034
  20b2ba: 8a 1c 06                     	movb	(%rsi,%rax), %bl
  20b2bd: 80 c3 01                     	addb	$1, %bl
  20b2c0: 80 d3 00                     	adcb	$0, %bl
  20b2c3: 88 1c 06                     	movb	%bl, (%rsi,%rax)
  20b2c6: 64 c7 04 25 90 ff ff ff 1a 18 00 00  	movl	$6170, %fs:-112 # imm = 0x181A
  20b2d2: 83 ca 04                     	orl	$4, %edx
  20b2d5: b8 2c 00 00 00               	movl	$44, %eax
  20b2da: e9 66 ef ff ff               	jmp	0x20a245 <http_parser_execute+0x7a5>
  20b2df: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20b2e8: 48 8b 0d 09 9a 00 00         	movq	39433(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20b2ef: 48 35 e7 f9 00 00            	xorq	$63975, %rax            # imm = 0xF9E7
  20b2f5: 8a 1c 01                     	movb	(%rcx,%rax), %bl
  20b2f8: 80 c3 01                     	addb	$1, %bl
  20b2fb: 80 d3 00                     	adcb	$0, %bl
  20b2fe: 88 1c 01                     	movb	%bl, (%rcx,%rax)
  20b301: 64 c7 04 25 90 ff ff ff f3 7c 00 00  	movl	$31987, %fs:-112 # imm = 0x7CF3
  20b30d: 44 89 d8                     	movl	%r11d, %eax
  20b310: 44 29 e0                     	subl	%r12d, %eax
  20b313: 41 01 c6                     	addl	%eax, %r14d
  20b316: 44 89 f2                     	movl	%r14d, %edx
  20b319: 45 39 ce                     	cmpl	%r9d, %r14d
  20b31c: 0f 87 33 57 00 00            	ja	0x210a55 <http_parser_execute+0x6fb5>
  20b322: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20b32b: 48 8b 0d c6 99 00 00         	movq	39366(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20b332: 48 35 15 33 00 00            	xorq	$13077, %rax            # imm = 0x3315
  20b338: 8a 1c 01                     	movb	(%rcx,%rax), %bl
  20b33b: 80 c3 01                     	addb	$1, %bl
  20b33e: 80 d3 00                     	adcb	$0, %bl
  20b341: 88 1c 01                     	movb	%bl, (%rcx,%rax)
  20b344: 64 c7 04 25 90 ff ff ff 8a 19 00 00  	movl	$6538, %fs:-112 # imm = 0x198A
  20b350: 83 e7 7f                     	andl	$127, %edi
  20b353: c1 e7 11                     	shll	$17, %edi
  20b356: 41 81 e2 ff ff 01 ff         	andl	$4278321151, %r10d      # imm = 0xFF01FFFF
  20b35d: 41 09 fa                     	orl	%edi, %r10d
  20b360: 45 89 55 00                  	movl	%r10d, (%r13)
  20b364: f7 45 c0 00 00 00 7f         	testl	$2130706432, -64(%rbp)  # imm = 0x7F000000
  20b36b: 4c 8b 4d a0                  	movq	-96(%rbp), %r9
  20b36f: 4c 8b bd 68 ff ff ff         	movq	-152(%rbp), %r15
  20b376: 0f 85 6c 61 00 00            	jne	0x2114e8 <http_parser_execute+0x7a48>
  20b37c: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20b385: 48 8b 0d 6c 99 00 00         	movq	39276(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20b38c: 48 35 5d db 00 00            	xorq	$56157, %rax            # imm = 0xDB5D
  20b392: 8a 1c 01                     	movb	(%rcx,%rax), %bl
  20b395: 80 c3 01                     	addb	$1, %bl
  20b398: 80 d3 00                     	adcb	$0, %bl
  20b39b: 88 1c 01                     	movb	%bl, (%rcx,%rax)
  20b39e: 64 c7 04 25 90 ff ff ff ae 6d 00 00  	movl	$28078, %fs:-112 # imm = 0x6DAE
  20b3aa: b1 0a                        	movb	$10, %cl
  20b3ac: b8 34 00 00 00               	movl	$52, %eax
  20b3b1: 48 83 7d 80 00               	cmpq	$0, -128(%rbp)
  20b3b6: 0f 85 38 03 00 00            	jne	0x20b6f4 <http_parser_execute+0x1c54>
  20b3bc: 31 f6                        	xorl	%esi, %esi
  20b3be: 48 89 75 80                  	movq	%rsi, -128(%rbp)
  20b3c2: 4d 89 dc                     	movq	%r11, %r12
  20b3c5: 4c 8b 5d b0                  	movq	-80(%rbp), %r11
  20b3c9: 41 89 d2                     	movl	%edx, %r10d
  20b3cc: 44 8b 75 c0                  	movl	-64(%rbp), %r14d
  20b3d0: e9 eb 02 00 00               	jmp	0x20b6c0 <http_parser_execute+0x1c20>
  20b3d5: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20b3de: 48 8b 35 13 99 00 00         	movq	39187(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20b3e5: 48 35 88 df 00 00            	xorq	$57224, %rax            # imm = 0xDF88
  20b3eb: 8a 1c 06                     	movb	(%rsi,%rax), %bl
  20b3ee: 80 c3 01                     	addb	$1, %bl
  20b3f1: 80 d3 00                     	adcb	$0, %bl
  20b3f4: 88 1c 06                     	movb	%bl, (%rsi,%rax)
  20b3f7: 64 c7 04 25 90 ff ff ff c4 6f 00 00  	movl	$28612, %fs:-112 # imm = 0x6FC4
  20b403: b8 20 00 00 00               	movl	$32, %eax
  20b408: eb 33                        	jmp	0x20b43d <http_parser_execute+0x199d>
  20b40a: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20b413: 48 8b 35 de 98 00 00         	movq	39134(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20b41a: 48 35 10 03 00 00            	xorq	$784, %rax              # imm = 0x310
  20b420: 8a 1c 06                     	movb	(%rsi,%rax), %bl
  20b423: 80 c3 01                     	addb	$1, %bl
  20b426: 80 d3 00                     	adcb	$0, %bl
  20b429: 88 1c 06                     	movb	%bl, (%rsi,%rax)
  20b42c: 64 c7 04 25 90 ff ff ff 88 01 00 00  	movl	$392, %fs:-112  # imm = 0x188
  20b438: b8 10 00 00 00               	movl	$16, %eax
  20b43d: 64 48 63 34 25 90 ff ff ff   	movslq	%fs:-112, %rsi
  20b446: 48 8b 3d ab 98 00 00         	movq	39083(%rip), %rdi       # 0x214cf8 <__afl_area_ptr>
  20b44d: 48 81 f6 8e cb 00 00         	xorq	$52110, %rsi            # imm = 0xCB8E
  20b454: 8a 1c 37                     	movb	(%rdi,%rsi), %bl
  20b457: 80 c3 01                     	addb	$1, %bl
  20b45a: 80 d3 00                     	adcb	$0, %bl
  20b45d: 88 1c 37                     	movb	%bl, (%rdi,%rsi)
  20b460: 64 c7 04 25 90 ff ff ff c7 65 00 00  	movl	$26055, %fs:-112 # imm = 0x65C7
  20b46c: 09 c2                        	orl	%eax, %edx
  20b46e: 41 89 55 00                  	movl	%edx, (%r13)
  20b472: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20b47b: 48 8b 35 76 98 00 00         	movq	39030(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20b482: 48 35 13 f0 00 00            	xorq	$61459, %rax            # imm = 0xF013
  20b488: 8a 1c 06                     	movb	(%rsi,%rax), %bl
  20b48b: 80 c3 01                     	addb	$1, %bl
  20b48e: 80 d3 00                     	adcb	$0, %bl
  20b491: 88 1c 06                     	movb	%bl, (%rsi,%rax)
  20b494: 64 c7 04 25 90 ff ff ff 09 78 00 00  	movl	$30729, %fs:-112 # imm = 0x7809
  20b4a0: 48 8b 7d 80                  	movq	-128(%rbp), %rdi
  20b4a4: 48 85 ff                     	testq	%rdi, %rdi
  20b4a7: 49 0f 44 fc                  	cmoveq	%r12, %rdi
  20b4ab: 41 f7 c6 00 00 00 7f         	testl	$2130706432, %r14d      # imm = 0x7F000000
  20b4b2: 0f 85 88 5e 00 00            	jne	0x211340 <http_parser_execute+0x78a0>
  20b4b8: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20b4c1: 48 8b 35 30 98 00 00         	movq	38960(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20b4c8: 48 35 57 ad 00 00            	xorq	$44375, %rax            # imm = 0xAD57
  20b4ce: 8a 1c 06                     	movb	(%rsi,%rax), %bl
  20b4d1: 80 c3 01                     	addb	$1, %bl
  20b4d4: 80 d3 00                     	adcb	$0, %bl
  20b4d7: 88 1c 06                     	movb	%bl, (%rsi,%rax)
  20b4da: 64 c7 04 25 90 ff ff ff ab 56 00 00  	movl	$22187, %fs:-112 # imm = 0x56AB
  20b4e6: b8 2c 00 00 00               	movl	$44, %eax
  20b4eb: 48 85 ff                     	testq	%rdi, %rdi
  20b4ee: 74 3e                        	je	0x20b52e <http_parser_execute+0x1a8e>
  20b4f0: 64 48 63 34 25 90 ff ff ff   	movslq	%fs:-112, %rsi
  20b4f9: 48 8b 3d f8 97 00 00         	movq	38904(%rip), %rdi       # 0x214cf8 <__afl_area_ptr>
  20b500: 48 81 f6 9e 83 00 00         	xorq	$33694, %rsi            # imm = 0x839E
  20b507: 8a 1c 37                     	movb	(%rdi,%rsi), %bl
  20b50a: 80 c3 01                     	addb	$1, %bl
  20b50d: 80 d3 00                     	adcb	$0, %bl
  20b510: 88 1c 37                     	movb	%bl, (%rdi,%rsi)
  20b513: 64 c7 04 25 90 ff ff ff cf 41 00 00  	movl	$16847, %fs:-112 # imm = 0x41CF
  20b51f: 48 8b 75 b8                  	movq	-72(%rbp), %rsi
  20b523: 48 83 7e 20 00               	cmpq	$0, 32(%rsi)
  20b528: 0f 85 65 42 00 00            	jne	0x20f793 <http_parser_execute+0x5cf3>
  20b52e: 31 d2                        	xorl	%edx, %edx
  20b530: 48 89 55 80                  	movq	%rdx, -128(%rbp)
  20b534: e9 87 01 00 00               	jmp	0x20b6c0 <http_parser_execute+0x1c20>
  20b539: 64 48 63 34 25 90 ff ff ff   	movslq	%fs:-112, %rsi
  20b542: 48 8b 3d af 97 00 00         	movq	38831(%rip), %rdi       # 0x214cf8 <__afl_area_ptr>
  20b549: 48 81 f6 a9 d7 00 00         	xorq	$55209, %rsi            # imm = 0xD7A9
  20b550: 8a 1c 37                     	movb	(%rdi,%rsi), %bl
  20b553: 80 c3 01                     	addb	$1, %bl
  20b556: 80 d3 00                     	adcb	$0, %bl
  20b559: 88 1c 37                     	movb	%bl, (%rdi,%rsi)
  20b55c: 64 c7 04 25 90 ff ff ff d4 6b 00 00  	movl	$27604, %fs:-112 # imm = 0x6BD4
  20b568: f7 45 8c 00 00 00 40         	testl	$1073741824, -116(%rbp) # imm = 0x40000000
  20b56f: 0f 84 2e 4c 00 00            	je	0x2101a3 <http_parser_execute+0x6703>
  20b575: 64 48 63 34 25 90 ff ff ff   	movslq	%fs:-112, %rsi
  20b57e: 48 8b 3d 73 97 00 00         	movq	38771(%rip), %rdi       # 0x214cf8 <__afl_area_ptr>
  20b585: 48 81 f6 0c 6f 00 00         	xorq	$28428, %rsi            # imm = 0x6F0C
  20b58c: 8a 1c 37                     	movb	(%rdi,%rsi), %bl
  20b58f: 80 c3 01                     	addb	$1, %bl
  20b592: 80 d3 00                     	adcb	$0, %bl
  20b595: 88 1c 37                     	movb	%bl, (%rdi,%rsi)
  20b598: 64 c7 04 25 90 ff ff ff 86 37 00 00  	movl	$14214, %fs:-112 # imm = 0x3786
  20b5a4: f6 c2 a0                     	testb	$-96, %dl
  20b5a7: 75 4d                        	jne	0x20b5f6 <http_parser_execute+0x1b56>
  20b5a9: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  20b5b2: 48 8b 35 3f 97 00 00         	movq	38719(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20b5b9: 48 81 f2 3f 06 00 00         	xorq	$1599, %rdx             # imm = 0x63F
  20b5c0: 8a 1c 16                     	movb	(%rsi,%rdx), %bl
  20b5c3: 80 c3 01                     	addb	$1, %bl
  20b5c6: 80 d3 00                     	adcb	$0, %bl
  20b5c9: 88 1c 16                     	movb	%bl, (%rsi,%rdx)
  20b5cc: 64 c7 04 25 90 ff ff ff 1f 03 00 00  	movl	$799, %fs:-112  # imm = 0x31F
  20b5d8: a8 03                        	testb	$3, %al
  20b5da: 0f 94 c0                     	sete	%al
  20b5dd: 66 41 83 fe 65               	cmpw	$101, %r14w
  20b5e2: 0f 94 c2                     	sete	%dl
  20b5e5: 08 c2                        	orb	%al, %dl
  20b5e7: 0f b6 c2                     	movzbl	%dl, %eax
  20b5ea: c1 e0 1f                     	shll	$31, %eax
  20b5ed: 41 81 e6 ff ff ff 7f         	andl	$2147483647, %r14d      # imm = 0x7FFFFFFF
  20b5f4: eb 50                        	jmp	0x20b646 <http_parser_execute+0x1ba6>
  20b5f6: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20b5ff: 48 8b 15 f2 96 00 00         	movq	38642(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20b606: 48 35 c8 d6 00 00            	xorq	$54984, %rax            # imm = 0xD6C8
  20b60c: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20b60f: 80 c3 01                     	addb	$1, %bl
  20b612: 80 d3 00                     	adcb	$0, %bl
  20b615: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20b618: 64 c7 04 25 90 ff ff ff 64 6b 00 00  	movl	$27492, %fs:-112 # imm = 0x6B64
  20b624: 44 89 f0                     	movl	%r14d, %eax
  20b627: 25 00 00 ff 00               	andl	$16711680, %eax         # imm = 0xFF0000
  20b62c: 31 d2                        	xorl	%edx, %edx
  20b62e: 3d 00 00 05 00               	cmpl	$327680, %eax           # imm = 0x50000
  20b633: 0f 94 c2                     	sete	%dl
  20b636: c1 e2 1f                     	shll	$31, %edx
  20b639: 41 81 e6 ff ff ff 7f         	andl	$2147483647, %r14d      # imm = 0x7FFFFFFF
  20b640: 44 89 f0                     	movl	%r14d, %eax
  20b643: 41 89 d6                     	movl	%edx, %r14d
  20b646: 44 09 f0                     	orl	%r14d, %eax
  20b649: 48 8b 55 d0                  	movq	-48(%rbp), %rdx
  20b64d: 89 02                        	movl	%eax, (%rdx)
  20b64f: 48 8b 45 b8                  	movq	-72(%rbp), %rax
  20b653: 48 83 78 28 00               	cmpq	$0, 40(%rax)
  20b658: 0f 85 ba 5d 00 00            	jne	0x211418 <http_parser_execute+0x7978>
  20b65e: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20b667: 48 8b 15 8a 96 00 00         	movq	38538(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20b66e: 48 35 00 f9 00 00            	xorq	$63744, %rax            # imm = 0xF900
  20b674: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20b677: 80 c3 01                     	addb	$1, %bl
  20b67a: 80 d3 00                     	adcb	$0, %bl
  20b67d: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20b680: 64 c7 04 25 90 ff ff ff 80 7c 00 00  	movl	$31872, %fs:-112 # imm = 0x7C80
  20b68c: 48 8b 45 d0                  	movq	-48(%rbp), %rax
  20b690: 44 8b 30                     	movl	(%rax), %r14d
  20b693: b8 3a 00 00 00               	movl	$58, %eax
  20b698: 41 f7 c6 00 00 00 7f         	testl	$2130706432, %r14d      # imm = 0x7F000000
  20b69f: 0f 85 7e 47 00 00            	jne	0x20fe23 <http_parser_execute+0x6383>
  20b6a5: 44 89 f2                     	movl	%r14d, %edx
  20b6a8: 48 89 55 a8                  	movq	%rdx, -88(%rbp)
  20b6ac: 44 89 75 c8                  	movl	%r14d, -56(%rbp)
  20b6b0: 44 89 75 cc                  	movl	%r14d, -52(%rbp)
  20b6b4: 66 66 66 2e 0f 1f 84 00 00 00 00 00  	nopw	%cs:(%rax,%rax)
  20b6c0: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  20b6c9: 48 8b 35 28 96 00 00         	movq	38440(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20b6d0: 48 81 f2 9a fa 00 00         	xorq	$64154, %rdx            # imm = 0xFA9A
  20b6d7: 8a 1c 16                     	movb	(%rsi,%rdx), %bl
  20b6da: 80 c3 01                     	addb	$1, %bl
  20b6dd: 80 d3 00                     	adcb	$0, %bl
  20b6e0: 88 1c 16                     	movb	%bl, (%rsi,%rdx)
  20b6e3: 64 c7 04 25 90 ff ff ff 4d 7d 00 00  	movl	$32077, %fs:-112 # imm = 0x7D4D
  20b6ef: e9 1b e6 ff ff               	jmp	0x209d0f <http_parser_execute+0x26f>
  20b6f4: 64 48 63 34 25 90 ff ff ff   	movslq	%fs:-112, %rsi
  20b6fd: 48 8b 3d f4 95 00 00         	movq	38388(%rip), %rdi       # 0x214cf8 <__afl_area_ptr>
  20b704: 48 81 f6 42 3f 00 00         	xorq	$16194, %rsi            # imm = 0x3F42
  20b70b: 8a 1c 37                     	movb	(%rdi,%rsi), %bl
  20b70e: 80 c3 01                     	addb	$1, %bl
  20b711: 80 d3 00                     	adcb	$0, %bl
  20b714: 88 1c 37                     	movb	%bl, (%rdi,%rsi)
  20b717: 64 c7 04 25 90 ff ff ff a1 1f 00 00  	movl	$8097, %fs:-112 # imm = 0x1FA1
  20b723: 48 8b 75 b8                  	movq	-72(%rbp), %rsi
  20b727: 48 83 7e 20 00               	cmpq	$0, 32(%rsi)
  20b72c: 0f 85 09 42 00 00            	jne	0x20f93b <http_parser_execute+0x5e9b>
  20b732: e9 85 fc ff ff               	jmp	0x20b3bc <http_parser_execute+0x191c>
  20b737: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20b740: 48 8b 35 b1 95 00 00         	movq	38321(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20b747: 48 35 10 63 00 00            	xorq	$25360, %rax            # imm = 0x6310
  20b74d: 8a 1c 06                     	movb	(%rsi,%rax), %bl
  20b750: 80 c3 01                     	addb	$1, %bl
  20b753: 80 d3 00                     	adcb	$0, %bl
  20b756: 88 1c 06                     	movb	%bl, (%rsi,%rax)
  20b759: 64 c7 04 25 90 ff ff ff 88 31 00 00  	movl	$12680, %fs:-112 # imm = 0x3188
  20b765: 83 ca 08                     	orl	$8, %edx
  20b768: b8 2c 00 00 00               	movl	$44, %eax
  20b76d: e9 d3 ea ff ff               	jmp	0x20a245 <http_parser_execute+0x7a5>
  20b772: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20b77b: 48 8b 35 76 95 00 00         	movq	38262(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20b782: 48 35 70 70 00 00            	xorq	$28784, %rax            # imm = 0x7070
  20b788: 8a 1c 06                     	movb	(%rsi,%rax), %bl
  20b78b: 80 c3 01                     	addb	$1, %bl
  20b78e: 80 d3 00                     	adcb	$0, %bl
  20b791: 88 1c 06                     	movb	%bl, (%rsi,%rax)
  20b794: 64 c7 04 25 90 ff ff ff 38 38 00 00  	movl	$14392, %fs:-112 # imm = 0x3838
  20b7a0: 83 ca 10                     	orl	$16, %edx
  20b7a3: b8 2c 00 00 00               	movl	$44, %eax
  20b7a8: e9 98 ea ff ff               	jmp	0x20a245 <http_parser_execute+0x7a5>
  20b7ad: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20b7b6: 48 8b 35 3b 95 00 00         	movq	38203(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20b7bd: 48 35 bd 4c 00 00            	xorq	$19645, %rax            # imm = 0x4CBD
  20b7c3: 8a 1c 06                     	movb	(%rsi,%rax), %bl
  20b7c6: 80 c3 01                     	addb	$1, %bl
  20b7c9: 80 d3 00                     	adcb	$0, %bl
  20b7cc: 88 1c 06                     	movb	%bl, (%rsi,%rax)
  20b7cf: 64 c7 04 25 90 ff ff ff 5e 26 00 00  	movl	$9822, %fs:-112 # imm = 0x265E
  20b7db: 83 ca 20                     	orl	$32, %edx
  20b7de: b8 2c 00 00 00               	movl	$44, %eax
  20b7e3: e9 5d ea ff ff               	jmp	0x20a245 <http_parser_execute+0x7a5>
  20b7e8: b8 2c 00 00 00               	movl	$44, %eax
  20b7ed: e9 ce fe ff ff               	jmp	0x20b6c0 <http_parser_execute+0x1c20>
  20b7f2: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20b7fb: 48 8b 0d f6 94 00 00         	movq	38134(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20b802: 48 35 f5 50 00 00            	xorq	$20725, %rax            # imm = 0x50F5
  20b808: 8a 1c 01                     	movb	(%rcx,%rax), %bl
  20b80b: 80 c3 01                     	addb	$1, %bl
  20b80e: 80 d3 00                     	adcb	$0, %bl
  20b811: 88 1c 01                     	movb	%bl, (%rcx,%rax)
  20b814: 64 c7 04 25 90 ff ff ff 7a 28 00 00  	movl	$10362, %fs:-112 # imm = 0x287A
  20b820: 89 f8                        	movl	%edi, %eax
  20b822: 83 e0 7f                     	andl	$127, %eax
  20b825: c1 e0 11                     	shll	$17, %eax
  20b828: 41 81 e2 ff ff 01 ff         	andl	$4278321151, %r10d      # imm = 0xFF01FFFF
  20b82f: 41 09 c2                     	orl	%eax, %r10d
  20b832: 45 89 55 00                  	movl	%r10d, (%r13)
  20b836: f7 45 c0 00 00 00 7f         	testl	$2130706432, -64(%rbp)  # imm = 0x7F000000
  20b83d: 0f 85 5e 5c 00 00            	jne	0x2114a1 <http_parser_execute+0x7a01>
  20b843: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20b84c: 48 8b 0d a5 94 00 00         	movq	38053(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20b853: 48 35 74 4f 00 00            	xorq	$20340, %rax            # imm = 0x4F74
  20b859: 8a 1c 01                     	movb	(%rcx,%rax), %bl
  20b85c: 80 c3 01                     	addb	$1, %bl
  20b85f: 80 d3 00                     	adcb	$0, %bl
  20b862: 88 1c 01                     	movb	%bl, (%rcx,%rax)
  20b865: 64 c7 04 25 90 ff ff ff ba 27 00 00  	movl	$10170, %fs:-112 # imm = 0x27BA
  20b871: b8 34 00 00 00               	movl	$52, %eax
  20b876: 45 31 c0                     	xorl	%r8d, %r8d
  20b879: 48 83 7d 80 00               	cmpq	$0, -128(%rbp)
  20b87e: 0f 85 f8 02 00 00            	jne	0x20bb7c <http_parser_execute+0x20dc>
  20b884: 31 c9                        	xorl	%ecx, %ecx
  20b886: 48 89 4d 80                  	movq	%rcx, -128(%rbp)
  20b88a: eb 0e                        	jmp	0x20b89a <http_parser_execute+0x1dfa>
  20b88c: 44 89 c7                     	movl	%r8d, %edi
  20b88f: 4c 8b 5d 90                  	movq	-112(%rbp), %r11
  20b893: 49 c7 c0 ff ff ff ff         	movq	$-1, %r8
  20b89a: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20b8a3: 48 8b 15 4e 94 00 00         	movq	37966(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20b8aa: 48 81 f1 a0 35 00 00         	xorq	$13728, %rcx            # imm = 0x35A0
  20b8b1: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20b8b4: 80 c3 01                     	addb	$1, %bl
  20b8b7: 80 d3 00                     	adcb	$0, %bl
  20b8ba: 4c 89 e6                     	movq	%r12, %rsi
  20b8bd: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20b8c0: 64 c7 04 25 90 ff ff ff d0 1a 00 00  	movl	$6864, %fs:-112 # imm = 0x1AD0
  20b8cc: 83 e7 7f                     	andl	$127, %edi
  20b8cf: c1 e7 11                     	shll	$17, %edi
  20b8d2: 41 81 e2 ff ff 01 ff         	andl	$4278321151, %r10d      # imm = 0xFF01FFFF
  20b8d9: 41 09 fa                     	orl	%edi, %r10d
  20b8dc: 45 89 55 00                  	movl	%r10d, (%r13)
  20b8e0: 4d 89 dc                     	movq	%r11, %r12
  20b8e3: 4d 01 c4                     	addq	%r8, %r12
  20b8e6: 44 89 e1                     	movl	%r12d, %ecx
  20b8e9: 29 f1                        	subl	%esi, %ecx
  20b8eb: 45 89 f2                     	movl	%r14d, %r10d
  20b8ee: 41 01 ca                     	addl	%ecx, %r10d
  20b8f1: 45 39 ca                     	cmpl	%r9d, %r10d
  20b8f4: 0f 87 5a 50 00 00            	ja	0x210954 <http_parser_execute+0x6eb4>
  20b8fa: 4c 8b 5d b0                  	movq	-80(%rbp), %r11
  20b8fe: 4c 8b 4d a0                  	movq	-96(%rbp), %r9
  20b902: 4c 8b bd 68 ff ff ff         	movq	-152(%rbp), %r15
  20b909: 44 8b 75 c0                  	movl	-64(%rbp), %r14d
  20b90d: e9 8e 29 00 00               	jmp	0x20e2a0 <http_parser_execute+0x4800>
  20b912: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  20b91b: 48 8b 35 d6 93 00 00         	movq	37846(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20b922: 48 81 f2 a6 1f 00 00         	xorq	$8102, %rdx             # imm = 0x1FA6
  20b929: 8a 1c 16                     	movb	(%rsi,%rdx), %bl
  20b92c: 80 c3 01                     	addb	$1, %bl
  20b92f: 80 d3 00                     	adcb	$0, %bl
  20b932: 88 1c 16                     	movb	%bl, (%rsi,%rdx)
  20b935: 64 c7 04 25 90 ff ff ff d3 0f 00 00  	movl	$4051, %fs:-112 # imm = 0xFD3
  20b941: 0f be f1                     	movsbl	%cl, %esi
  20b944: 83 fe 0a                     	cmpl	$10, %esi
  20b947: 0f 84 90 01 00 00            	je	0x20badd <http_parser_execute+0x203d>
  20b94d: 83 fe 0d                     	cmpl	$13, %esi
  20b950: 0f 84 87 01 00 00            	je	0x20badd <http_parser_execute+0x203d>
  20b956: 83 fe 20                     	cmpl	$32, %esi
  20b959: 0f 85 76 02 00 00            	jne	0x20bbd5 <http_parser_execute+0x2135>
  20b95f: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20b968: 48 8b 0d 89 93 00 00         	movq	37769(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20b96f: 48 35 0b 84 00 00            	xorq	$33803, %rax            # imm = 0x840B
  20b975: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20b978: 80 c2 01                     	addb	$1, %dl
  20b97b: 80 d2 00                     	adcb	$0, %dl
  20b97e: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20b981: 64 c7 04 25 90 ff ff ff 05 42 00 00  	movl	$16901, %fs:-112 # imm = 0x4205
  20b98d: 41 f7 c6 00 00 00 7f         	testl	$2130706432, %r14d      # imm = 0x7F000000
  20b994: 0f 85 b1 5c 00 00            	jne	0x21164b <http_parser_execute+0x7bab>
  20b99a: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20b9a3: 48 8b 0d 4e 93 00 00         	movq	37710(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20b9aa: 48 35 9d 37 00 00            	xorq	$14237, %rax            # imm = 0x379D
  20b9b0: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20b9b3: 80 c2 01                     	addb	$1, %dl
  20b9b6: 80 d2 00                     	adcb	$0, %dl
  20b9b9: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20b9bc: 64 c7 04 25 90 ff ff ff ce 1b 00 00  	movl	$7118, %fs:-112 # imm = 0x1BCE
  20b9c8: b8 20 00 00 00               	movl	$32, %eax
  20b9cd: 48 83 bd 78 ff ff ff 00      	cmpq	$0, -136(%rbp)
  20b9d5: 0f 84 93 01 00 00            	je	0x20bb6e <http_parser_execute+0x20ce>
  20b9db: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20b9e4: 48 8b 15 0d 93 00 00         	movq	37645(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20b9eb: 48 81 f1 27 38 00 00         	xorq	$14375, %rcx            # imm = 0x3827
  20b9f2: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20b9f5: 80 c3 01                     	addb	$1, %bl
  20b9f8: 80 d3 00                     	adcb	$0, %bl
  20b9fb: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20b9fe: 64 c7 04 25 90 ff ff ff 13 1c 00 00  	movl	$7187, %fs:-112 # imm = 0x1C13
  20ba0a: 48 8b 4d b8                  	movq	-72(%rbp), %rcx
  20ba0e: 48 83 79 08 00               	cmpq	$0, 8(%rcx)
  20ba13: 0f 85 c9 43 00 00            	jne	0x20fde2 <http_parser_execute+0x6342>
  20ba19: e9 50 01 00 00               	jmp	0x20bb6e <http_parser_execute+0x20ce>
  20ba1e: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  20ba27: 48 8b 35 ca 92 00 00         	movq	37578(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20ba2e: 48 81 f2 3c d7 00 00         	xorq	$55100, %rdx            # imm = 0xD73C
  20ba35: 8a 1c 16                     	movb	(%rsi,%rdx), %bl
  20ba38: 80 c3 01                     	addb	$1, %bl
  20ba3b: 80 d3 00                     	adcb	$0, %bl
  20ba3e: 88 1c 16                     	movb	%bl, (%rsi,%rdx)
  20ba41: 64 c7 04 25 90 ff ff ff 9e 6b 00 00  	movl	$27550, %fs:-112 # imm = 0x6B9E
  20ba4d: 0f be f1                     	movsbl	%cl, %esi
  20ba50: 83 fe 20                     	cmpl	$32, %esi
  20ba53: 77 14                        	ja	0x20ba69 <http_parser_execute+0x1fc9>
  20ba55: 48 b9 00 24 00 00 01 00 00 00	movabsq	$4294976512, %rcx       # imm = 0x100002400
  20ba5f: 48 0f a3 f1                  	btq	%rsi, %rcx
  20ba63: 0f 82 bc 44 00 00            	jb	0x20ff25 <http_parser_execute+0x6485>
  20ba69: 4c 89 e1                     	movq	%r12, %rcx
  20ba6c: 45 89 f4                     	movl	%r14d, %r12d
  20ba6f: 4d 89 ce                     	movq	%r9, %r14
  20ba72: 4c 89 ad 68 ff ff ff         	movq	%r13, -152(%rbp)
  20ba79: 48 89 4d c0                  	movq	%rcx, -64(%rbp)
  20ba7d: 45 89 d5                     	movl	%r10d, %r13d
  20ba80: 4c 89 5d b0                  	movq	%r11, -80(%rbp)
  20ba84: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20ba8d: 48 8b 15 64 92 00 00         	movq	37476(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20ba94: 48 81 f1 48 75 00 00         	xorq	$30024, %rcx            # imm = 0x7548
  20ba9b: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20ba9e: 80 c3 01                     	addb	$1, %bl
  20baa1: 80 d3 00                     	adcb	$0, %bl
  20baa4: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20baa7: 64 c7 04 25 90 ff ff ff a4 3a 00 00  	movl	$15012, %fs:-112 # imm = 0x3AA4
  20bab3: 89 c7                        	movl	%eax, %edi
  20bab5: e8 a6 63 00 00               	callq	0x211e60 <parse_url_char>
  20baba: 83 f8 01                     	cmpl	$1, %eax
  20babd: 0f 84 4f 50 00 00            	je	0x210b12 <http_parser_execute+0x7072>
  20bac3: 4c 8b 5d b0                  	movq	-80(%rbp), %r11
  20bac7: 45 89 ea                     	movl	%r13d, %r10d
  20baca: 48 8b 4d c0                  	movq	-64(%rbp), %rcx
  20bace: 4c 8b ad 68 ff ff ff         	movq	-152(%rbp), %r13
  20bad5: 4d 89 f1                     	movq	%r14, %r9
  20bad8: e9 6d 01 00 00               	jmp	0x20bc4a <http_parser_execute+0x21aa>
  20badd: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20bae6: 48 8b 15 0b 92 00 00         	movq	37387(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20baed: 48 35 96 1b 00 00            	xorq	$7062, %rax             # imm = 0x1B96
  20baf3: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20baf6: 80 c3 01                     	addb	$1, %bl
  20baf9: 80 d3 00                     	adcb	$0, %bl
  20bafc: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20baff: 64 c7 04 25 90 ff ff ff cb 0d 00 00  	movl	$3531, %fs:-112 # imm = 0xDCB
  20bb0b: 41 c7 45 10 00 00 09 00      	movl	$589824, 16(%r13)       # imm = 0x90000
  20bb13: 31 d2                        	xorl	%edx, %edx
  20bb15: 80 f9 0d                     	cmpb	$13, %cl
  20bb18: 0f 94 c0                     	sete	%al
  20bb1b: 41 f7 c6 00 00 00 7f         	testl	$2130706432, %r14d      # imm = 0x7F000000
  20bb22: 0f 85 07 5a 00 00            	jne	0x21152f <http_parser_execute+0x7a8f>
  20bb28: 88 c2                        	movb	%al, %dl
  20bb2a: b8 2c 00 00 00               	movl	$44, %eax
  20bb2f: 29 d0                        	subl	%edx, %eax
  20bb31: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20bb3a: 48 8b 15 b7 91 00 00         	movq	37303(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20bb41: 48 81 f1 6d 21 00 00         	xorq	$8557, %rcx             # imm = 0x216D
  20bb48: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20bb4b: 80 c3 01                     	addb	$1, %bl
  20bb4e: 80 d3 00                     	adcb	$0, %bl
  20bb51: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20bb54: 64 c7 04 25 90 ff ff ff b6 10 00 00  	movl	$4278, %fs:-112 # imm = 0x10B6
  20bb60: 48 83 bd 78 ff ff ff 00      	cmpq	$0, -136(%rbp)
  20bb68: 0f 85 e7 00 00 00            	jne	0x20bc55 <http_parser_execute+0x21b5>
  20bb6e: 31 c9                        	xorl	%ecx, %ecx
  20bb70: 48 89 8d 78 ff ff ff         	movq	%rcx, -136(%rbp)
  20bb77: e9 24 27 00 00               	jmp	0x20e2a0 <http_parser_execute+0x4800>
  20bb7c: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20bb85: 48 8b 35 6c 91 00 00         	movq	37228(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20bb8c: 48 81 f1 32 e0 00 00         	xorq	$57394, %rcx            # imm = 0xE032
  20bb93: 8a 1c 0e                     	movb	(%rsi,%rcx), %bl
  20bb96: 80 c3 01                     	addb	$1, %bl
  20bb99: 80 d3 00                     	adcb	$0, %bl
  20bb9c: 88 1c 0e                     	movb	%bl, (%rsi,%rcx)
  20bb9f: 64 c7 04 25 90 ff ff ff 19 70 00 00  	movl	$28697, %fs:-112 # imm = 0x7019
  20bbab: 48 8b 4d b8                  	movq	-72(%rbp), %rcx
  20bbaf: 48 83 79 20 00               	cmpq	$0, 32(%rcx)
  20bbb4: 0f 85 51 3d 00 00            	jne	0x20f90b <http_parser_execute+0x5e6b>
  20bbba: 45 31 c0                     	xorl	%r8d, %r8d
  20bbbd: e9 c2 fc ff ff               	jmp	0x20b884 <http_parser_execute+0x1de4>
  20bbc2: 80 f9 0d                     	cmpb	$13, %cl
  20bbc5: 0f 85 1f 1a 00 00            	jne	0x20d5ea <http_parser_execute+0x3b4a>
  20bbcb: ba 39 00 00 00               	movl	$57, %edx
  20bbd0: e9 8d 26 00 00               	jmp	0x20e262 <http_parser_execute+0x47c2>
  20bbd5: 4c 89 e1                     	movq	%r12, %rcx
  20bbd8: 45 89 f4                     	movl	%r14d, %r12d
  20bbdb: 4c 89 4d a0                  	movq	%r9, -96(%rbp)
  20bbdf: 4c 89 ad 68 ff ff ff         	movq	%r13, -152(%rbp)
  20bbe6: 48 89 4d c0                  	movq	%rcx, -64(%rbp)
  20bbea: 45 89 d6                     	movl	%r10d, %r14d
  20bbed: 4c 8b 6d d0                  	movq	-48(%rbp), %r13
  20bbf1: 4c 89 5d b0                  	movq	%r11, -80(%rbp)
  20bbf5: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20bbfe: 48 8b 15 f3 90 00 00         	movq	37107(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20bc05: 48 81 f1 6c 51 00 00         	xorq	$20844, %rcx            # imm = 0x516C
  20bc0c: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20bc0f: 80 c3 01                     	addb	$1, %bl
  20bc12: 80 d3 00                     	adcb	$0, %bl
  20bc15: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20bc18: 64 c7 04 25 90 ff ff ff b6 28 00 00  	movl	$10422, %fs:-112 # imm = 0x28B6
  20bc24: 89 c7                        	movl	%eax, %edi
  20bc26: e8 35 62 00 00               	callq	0x211e60 <parse_url_char>
  20bc2b: 83 f8 01                     	cmpl	$1, %eax
  20bc2e: 0f 84 35 4f 00 00            	je	0x210b69 <http_parser_execute+0x70c9>
  20bc34: 4c 8b 5d b0                  	movq	-80(%rbp), %r11
  20bc38: 45 89 f2                     	movl	%r14d, %r10d
  20bc3b: 48 8b 4d c0                  	movq	-64(%rbp), %rcx
  20bc3f: 4c 8b ad 68 ff ff ff         	movq	-152(%rbp), %r13
  20bc46: 4c 8b 4d a0                  	movq	-96(%rbp), %r9
  20bc4a: 45 89 e6                     	movl	%r12d, %r14d
  20bc4d: 49 89 cc                     	movq	%rcx, %r12
  20bc50: e9 4b 26 00 00               	jmp	0x20e2a0 <http_parser_execute+0x4800>
  20bc55: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20bc5e: 48 8b 15 93 90 00 00         	movq	37011(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20bc65: 48 81 f1 1e e8 00 00         	xorq	$59422, %rcx            # imm = 0xE81E
  20bc6c: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20bc6f: 80 c3 01                     	addb	$1, %bl
  20bc72: 80 d3 00                     	adcb	$0, %bl
  20bc75: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20bc78: 64 c7 04 25 90 ff ff ff 0f 74 00 00  	movl	$29711, %fs:-112 # imm = 0x740F
  20bc84: 48 8b 4d b8                  	movq	-72(%rbp), %rcx
  20bc88: 48 83 79 08 00               	cmpq	$0, 8(%rcx)
  20bc8d: 0f 85 4d 3e 00 00            	jne	0x20fae0 <http_parser_execute+0x6040>
  20bc93: e9 d6 fe ff ff               	jmp	0x20bb6e <http_parser_execute+0x20ce>
  20bc98: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20bca1: 48 8b 15 50 90 00 00         	movq	36944(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20bca8: 48 35 6b 57 00 00            	xorq	$22379, %rax            # imm = 0x576B
  20bcae: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20bcb1: 80 c3 01                     	addb	$1, %bl
  20bcb4: 80 d3 00                     	adcb	$0, %bl
  20bcb7: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20bcba: 64 c7 04 25 90 ff ff ff b5 2b 00 00  	movl	$11189, %fs:-112 # imm = 0x2BB5
  20bcc6: 41 f6 45 00 04               	testb	$4, (%r13)
  20bccb: 0f 84 24 5b 00 00            	je	0x2117f5 <http_parser_execute+0x7d55>
  20bcd1: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20bcda: 48 8b 15 17 90 00 00         	movq	36887(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20bce1: 48 35 3d 32 00 00            	xorq	$12861, %rax            # imm = 0x323D
  20bce7: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20bcea: 80 c3 01                     	addb	$1, %bl
  20bced: 80 d3 00                     	adcb	$0, %bl
  20bcf0: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20bcf3: 64 c7 04 25 90 ff ff ff 1e 19 00 00  	movl	$6430, %fs:-112 # imm = 0x191E
  20bcff: b8 38 00 00 00               	movl	$56, %eax
  20bd04: 80 f9 0d                     	cmpb	$13, %cl
  20bd07: 0f 84 93 25 00 00            	je	0x20e2a0 <http_parser_execute+0x4800>
  20bd0d: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20bd16: 48 8b 15 db 8f 00 00         	movq	36827(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20bd1d: 48 35 f2 26 00 00            	xorq	$9970, %rax             # imm = 0x26F2
  20bd23: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20bd26: 80 c3 01                     	addb	$1, %bl
  20bd29: 80 d3 00                     	adcb	$0, %bl
  20bd2c: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20bd2f: 64 c7 04 25 90 ff ff ff 79 13 00 00  	movl	$4985, %fs:-112 # imm = 0x1379
  20bd3b: 0f b6 c1                     	movzbl	%cl, %eax
  20bd3e: 48 0f be 80 50 39 20 00      	movsbq	2111824(%rax), %rax
  20bd46: 48 83 f8 ff                  	cmpq	$-1, %rax
  20bd4a: 0f 84 3b 2b 00 00            	je	0x20e88b <http_parser_execute+0x4deb>
  20bd50: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20bd59: 48 8b 15 98 8f 00 00         	movq	36760(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20bd60: 48 81 f1 46 50 00 00         	xorq	$20550, %rcx            # imm = 0x5046
  20bd67: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20bd6a: 80 c3 01                     	addb	$1, %bl
  20bd6d: 80 d3 00                     	adcb	$0, %bl
  20bd70: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20bd73: 64 c7 04 25 90 ff ff ff 23 28 00 00  	movl	$10275, %fs:-112 # imm = 0x2823
  20bd7f: 49 8b 4d 08                  	movq	8(%r13), %rcx
  20bd83: 48 ba fe ff ff ff ff ff ff 0f	movabsq	$1152921504606846974, %rdx # imm = 0xFFFFFFFFFFFFFFE
  20bd8d: 48 39 d1                     	cmpq	%rdx, %rcx
  20bd90: 0f 87 33 54 00 00            	ja	0x2111c9 <http_parser_execute+0x7729>
  20bd96: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  20bd9f: 48 8b 35 52 8f 00 00         	movq	36690(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20bda6: 48 81 f2 f5 d0 00 00         	xorq	$53493, %rdx            # imm = 0xD0F5
  20bdad: 8a 1c 16                     	movb	(%rsi,%rdx), %bl
  20bdb0: 80 c3 01                     	addb	$1, %bl
  20bdb3: 80 d3 00                     	adcb	$0, %bl
  20bdb6: 88 1c 16                     	movb	%bl, (%rsi,%rdx)
  20bdb9: 64 c7 04 25 90 ff ff ff 7a 68 00 00  	movl	$26746, %fs:-112 # imm = 0x687A
  20bdc5: 48 c1 e1 04                  	shlq	$4, %rcx
  20bdc9: 48 01 c1                     	addq	%rax, %rcx
  20bdcc: 49 89 4d 08                  	movq	%rcx, 8(%r13)
  20bdd0: b8 36 00 00 00               	movl	$54, %eax
  20bdd5: e9 c6 24 00 00               	jmp	0x20e2a0 <http_parser_execute+0x4800>
  20bdda: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20bde3: 48 8b 15 0e 8f 00 00         	movq	36622(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20bdea: 48 35 dc 2b 00 00            	xorq	$11228, %rax            # imm = 0x2BDC
  20bdf0: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20bdf3: 80 c3 01                     	addb	$1, %bl
  20bdf6: 80 d3 00                     	adcb	$0, %bl
  20bdf9: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20bdfc: 64 c7 04 25 90 ff ff ff ee 15 00 00  	movl	$5614, %fs:-112 # imm = 0x15EE
  20be08: 8d 51 f7                     	leal	-9(%rcx), %edx
  20be0b: 80 fa 17                     	cmpb	$23, %dl
  20be0e: 77 47                        	ja	0x20be57 <http_parser_execute+0x23b7>
  20be10: b8 2e 00 00 00               	movl	$46, %eax
  20be15: 0f b6 d2                     	movzbl	%dl, %edx
  20be18: ff 24 d5 08 31 20 00         	jmpq	*2109704(,%rdx,8)
  20be1f: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20be28: 48 8b 0d c9 8e 00 00         	movq	36553(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20be2f: 48 35 4c 26 00 00            	xorq	$9804, %rax             # imm = 0x264C
  20be35: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20be38: 80 c2 01                     	addb	$1, %dl
  20be3b: 80 d2 00                     	adcb	$0, %dl
  20be3e: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20be41: 64 c7 04 25 90 ff ff ff 26 13 00 00  	movl	$4902, %fs:-112 # imm = 0x1326
  20be4d: b8 30 00 00 00               	movl	$48, %eax
  20be52: e9 49 24 00 00               	jmp	0x20e2a0 <http_parser_execute+0x4800>
  20be57: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20be60: 48 8b 15 91 8e 00 00         	movq	36497(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20be67: 48 35 38 e3 00 00            	xorq	$58168, %rax            # imm = 0xE338
  20be6d: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20be70: 80 c3 01                     	addb	$1, %bl
  20be73: 80 d3 00                     	adcb	$0, %bl
  20be76: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20be79: 64 c7 04 25 90 ff ff ff 9c 71 00 00  	movl	$29084, %fs:-112 # imm = 0x719C
  20be85: 48 8b 45 80                  	movq	-128(%rbp), %rax
  20be89: 48 85 c0                     	testq	%rax, %rax
  20be8c: 49 0f 44 c4                  	cmoveq	%r12, %rax
  20be90: 48 89 45 80                  	movq	%rax, -128(%rbp)
  20be94: 41 8b 55 00                  	movl	(%r13), %edx
  20be98: 89 d0                        	movl	%edx, %eax
  20be9a: 25 ff ff ff e0               	andl	$3774873599, %eax       # imm = 0xE0FFFFFF
  20be9f: 41 89 45 00                  	movl	%eax, (%r13)
  20bea3: 89 d6                        	movl	%edx, %esi
  20bea5: c1 ee 11                     	shrl	$17, %esi
  20bea8: 83 e6 7f                     	andl	$127, %esi
  20beab: b8 32 00 00 00               	movl	$50, %eax
  20beb0: 83 c6 f7                     	addl	$-9, %esi
  20beb3: 83 fe 09                     	cmpl	$9, %esi
  20beb6: 0f 87 ab 2b 00 00            	ja	0x20ea67 <http_parser_execute+0x4fc7>
  20bebc: 89 cb                        	movl	%ecx, %ebx
  20bebe: 80 cb 20                     	orb	$32, %bl
  20bec1: ff 24 f5 c8 31 20 00         	jmpq	*2109896(,%rsi,8)
  20bec8: 64 48 63 3c 25 90 ff ff ff   	movslq	%fs:-112, %rdi
  20bed1: 48 8b 35 20 8e 00 00         	movq	36384(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20bed8: 48 81 f7 a3 0f 00 00         	xorq	$4003, %rdi             # imm = 0xFA3
  20bedf: 8a 0c 3e                     	movb	(%rsi,%rdi), %cl
  20bee2: 80 c1 01                     	addb	$1, %cl
  20bee5: 80 d1 00                     	adcb	$0, %cl
  20bee8: 88 0c 3e                     	movb	%cl, (%rsi,%rdi)
  20beeb: 64 c7 04 25 90 ff ff ff d1 07 00 00  	movl	$2001, %fs:-112 # imm = 0x7D1
  20bef7: 80 fb 63                     	cmpb	$99, %bl
  20befa: 0f 84 db 2f 00 00            	je	0x20eedb <http_parser_execute+0x543b>
  20bf00: 80 fb 75                     	cmpb	$117, %bl
  20bf03: 0f 84 16 30 00 00            	je	0x20ef1f <http_parser_execute+0x547f>
  20bf09: 80 fb 6b                     	cmpb	$107, %bl
  20bf0c: 0f 85 51 30 00 00            	jne	0x20ef63 <http_parser_execute+0x54c3>
  20bf12: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20bf1b: 48 8b 35 d6 8d 00 00         	movq	36310(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20bf22: 48 81 f1 3f f6 00 00         	xorq	$63039, %rcx            # imm = 0xF63F
  20bf29: 8a 1c 0e                     	movb	(%rsi,%rcx), %bl
  20bf2c: 80 c3 01                     	addb	$1, %bl
  20bf2f: 80 d3 00                     	adcb	$0, %bl
  20bf32: 88 1c 0e                     	movb	%bl, (%rsi,%rcx)
  20bf35: 64 c7 04 25 90 ff ff ff 1f 7b 00 00  	movl	$31519, %fs:-112 # imm = 0x7B1F
  20bf41: 81 e2 ff ff 01 e0            	andl	$3758227455, %edx       # imm = 0xE001FFFF
  20bf47: 81 ca 00 00 26 00            	orl	$2490368, %edx          # imm = 0x260000
  20bf4d: 41 89 55 00                  	movl	%edx, (%r13)
  20bf51: e9 4a 23 00 00               	jmp	0x20e2a0 <http_parser_execute+0x4800>
  20bf56: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20bf5f: 48 8b 0d 92 8d 00 00         	movq	36242(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20bf66: 48 35 9b 91 00 00            	xorq	$37275, %rax            # imm = 0x919B
  20bf6c: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20bf6f: 80 c2 01                     	addb	$1, %dl
  20bf72: 80 d2 00                     	adcb	$0, %dl
  20bf75: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20bf78: 64 c7 04 25 90 ff ff ff cd 48 00 00  	movl	$18637, %fs:-112 # imm = 0x48CD
  20bf84: b8 30 00 00 00               	movl	$48, %eax
  20bf89: e9 12 23 00 00               	jmp	0x20e2a0 <http_parser_execute+0x4800>
  20bf8e: b8 22 00 00 00               	movl	$34, %eax
  20bf93: e9 08 23 00 00               	jmp	0x20e2a0 <http_parser_execute+0x4800>
  20bf98: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20bfa1: 48 8b 15 50 8d 00 00         	movq	36176(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20bfa8: 48 35 32 85 00 00            	xorq	$34098, %rax            # imm = 0x8532
  20bfae: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20bfb1: 80 c3 01                     	addb	$1, %bl
  20bfb4: 80 d3 00                     	adcb	$0, %bl
  20bfb7: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20bfba: 64 c7 04 25 90 ff ff ff 99 42 00 00  	movl	$17049, %fs:-112 # imm = 0x4299
  20bfc6: 8d 41 c6                     	leal	-58(%rcx), %eax
  20bfc9: 3c f5                        	cmpb	$-11, %al
  20bfcb: 0f 86 77 4d 00 00            	jbe	0x210d48 <http_parser_execute+0x72a8>
  20bfd1: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20bfda: 48 8b 15 17 8d 00 00         	movq	36119(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20bfe1: 48 35 43 81 00 00            	xorq	$33091, %rax            # imm = 0x8143
  20bfe7: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20bfea: 80 c3 01                     	addb	$1, %bl
  20bfed: 80 d3 00                     	adcb	$0, %bl
  20bff0: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20bff3: 64 c7 04 25 90 ff ff ff a1 40 00 00  	movl	$16545, %fs:-112 # imm = 0x40A1
  20bfff: 0f b6 c1                     	movzbl	%cl, %eax
  20c002: 83 c0 d0                     	addl	$-48, %eax
  20c005: 66 41 89 45 10               	movw	%ax, 16(%r13)
  20c00a: b8 28 00 00 00               	movl	$40, %eax
  20c00f: e9 8c 22 00 00               	jmp	0x20e2a0 <http_parser_execute+0x4800>
  20c014: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20c01d: 48 8b 15 d4 8c 00 00         	movq	36052(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20c024: 48 35 70 98 00 00            	xorq	$39024, %rax            # imm = 0x9870
  20c02a: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20c02d: 80 c3 01                     	addb	$1, %bl
  20c030: 80 d3 00                     	adcb	$0, %bl
  20c033: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20c036: 64 c7 04 25 90 ff ff ff 38 4c 00 00  	movl	$19512, %fs:-112 # imm = 0x4C38
  20c042: b8 14 00 00 00               	movl	$20, %eax
  20c047: 80 f9 20                     	cmpb	$32, %cl
  20c04a: 0f 84 50 22 00 00            	je	0x20e2a0 <http_parser_execute+0x4800>
  20c050: 44 89 f6                     	movl	%r14d, %esi
  20c053: 45 89 d6                     	movl	%r10d, %r14d
  20c056: 4c 89 4d a0                  	movq	%r9, -96(%rbp)
  20c05a: 4c 89 5d b0                  	movq	%r11, -80(%rbp)
  20c05e: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20c067: 48 8b 15 8a 8c 00 00         	movq	35978(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20c06e: 48 35 d7 ea 00 00            	xorq	$60119, %rax            # imm = 0xEAD7
  20c074: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20c077: 80 c3 01                     	addb	$1, %bl
  20c07a: 80 d3 00                     	adcb	$0, %bl
  20c07d: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20c080: 64 c7 04 25 90 ff ff ff 6b 75 00 00  	movl	$30059, %fs:-112 # imm = 0x756B
  20c08c: 48 8b 85 78 ff ff ff         	movq	-136(%rbp), %rax
  20c093: 48 85 c0                     	testq	%rax, %rax
  20c096: 49 0f 44 c4                  	cmoveq	%r12, %rax
  20c09a: 48 89 85 78 ff ff ff         	movq	%rax, -136(%rbp)
  20c0a1: 89 f3                        	movl	%esi, %ebx
  20c0a3: 89 f0                        	movl	%esi, %eax
  20c0a5: 25 00 00 ff 00               	andl	$16711680, %eax         # imm = 0xFF0000
  20c0aa: 31 d2                        	xorl	%edx, %edx
  20c0ac: 3d 00 00 05 00               	cmpl	$327680, %eax           # imm = 0x50000
  20c0b1: 0f 94 c2                     	sete	%dl
  20c0b4: 8d 3c 95 14 00 00 00         	leal	20(,%rdx,4), %edi
  20c0bb: 0f be f1                     	movsbl	%cl, %esi
  20c0be: e8 9d 5d 00 00               	callq	0x211e60 <parse_url_char>
  20c0c3: 83 f8 01                     	cmpl	$1, %eax
  20c0c6: 0f 84 22 50 00 00            	je	0x2110ee <http_parser_execute+0x764e>
  20c0cc: 4c 8b 5d b0                  	movq	-80(%rbp), %r11
  20c0d0: 4c 8b 4d a0                  	movq	-96(%rbp), %r9
  20c0d4: 45 89 f2                     	movl	%r14d, %r10d
  20c0d7: 41 89 de                     	movl	%ebx, %r14d
  20c0da: e9 c1 21 00 00               	jmp	0x20e2a0 <http_parser_execute+0x4800>
  20c0df: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20c0e8: 48 8b 15 09 8c 00 00         	movq	35849(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20c0ef: 48 35 ce 70 00 00            	xorq	$28878, %rax            # imm = 0x70CE
  20c0f5: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20c0f8: 80 c3 01                     	addb	$1, %bl
  20c0fb: 80 d3 00                     	adcb	$0, %bl
  20c0fe: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20c101: 64 c7 04 25 90 ff ff ff 67 38 00 00  	movl	$14439, %fs:-112 # imm = 0x3867
  20c10d: b8 33 00 00 00               	movl	$51, %eax
  20c112: 80 f9 0a                     	cmpb	$10, %cl
  20c115: 0f 84 85 21 00 00            	je	0x20e2a0 <http_parser_execute+0x4800>
  20c11b: e9 78 4c 00 00               	jmp	0x210d98 <http_parser_execute+0x72f8>
  20c120: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20c129: 48 8b 0d c8 8b 00 00         	movq	35784(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20c130: 48 35 76 73 00 00            	xorq	$29558, %rax            # imm = 0x7376
  20c136: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20c139: 80 c2 01                     	addb	$1, %dl
  20c13c: 80 d2 00                     	adcb	$0, %dl
  20c13f: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20c142: 64 c7 04 25 90 ff ff ff bb 39 00 00  	movl	$14779, %fs:-112 # imm = 0x39BB
  20c14e: b8 07 00 00 00               	movl	$7, %eax
  20c153: e9 48 21 00 00               	jmp	0x20e2a0 <http_parser_execute+0x4800>
  20c158: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20c161: 48 8b 15 90 8b 00 00         	movq	35728(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20c168: 48 35 8e b3 00 00            	xorq	$45966, %rax            # imm = 0xB38E
  20c16e: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20c171: 80 c3 01                     	addb	$1, %bl
  20c174: 80 d3 00                     	adcb	$0, %bl
  20c177: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20c17a: 64 c7 04 25 90 ff ff ff c7 59 00 00  	movl	$22983, %fs:-112 # imm = 0x59C7
  20c186: b8 0b 00 00 00               	movl	$11, %eax
  20c18b: 80 f9 2e                     	cmpb	$46, %cl
  20c18e: 0f 84 0c 21 00 00            	je	0x20e2a0 <http_parser_execute+0x4800>
  20c194: e9 4f 4c 00 00               	jmp	0x210de8 <http_parser_execute+0x7348>
  20c199: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20c1a2: 48 8b 15 4f 8b 00 00         	movq	35663(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20c1a9: 48 35 3d 79 00 00            	xorq	$31037, %rax            # imm = 0x793D
  20c1af: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20c1b2: 80 c3 01                     	addb	$1, %bl
  20c1b5: 80 d3 00                     	adcb	$0, %bl
  20c1b8: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20c1bb: 64 c7 04 25 90 ff ff ff 9e 3c 00 00  	movl	$15518, %fs:-112 # imm = 0x3C9E
  20c1c7: 8d 41 d0                     	leal	-48(%rcx), %eax
  20c1ca: 3c 0a                        	cmpb	$10, %al
  20c1cc: 0f 83 d5 1f 00 00            	jae	0x20e1a7 <http_parser_execute+0x4707>
  20c1d2: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20c1db: 48 8b 15 16 8b 00 00         	movq	35606(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20c1e2: 48 35 36 c9 00 00            	xorq	$51510, %rax            # imm = 0xC936
  20c1e8: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20c1eb: 80 c3 01                     	addb	$1, %bl
  20c1ee: 80 d3 00                     	adcb	$0, %bl
  20c1f1: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20c1f4: 64 c7 04 25 90 ff ff ff 9b 64 00 00  	movl	$25755, %fs:-112 # imm = 0x649B
  20c200: 0f b6 c1                     	movzbl	%cl, %eax
  20c203: 05 d0 ff 00 00               	addl	$65488, %eax            # imm = 0xFFD0
  20c208: 0f b7 c0                     	movzwl	%ax, %eax
  20c20b: 48 8b 55 a8                  	movq	-88(%rbp), %rdx
  20c20f: 81 e2 00 00 ff ff            	andl	$4294901760, %edx       # imm = 0xFFFF0000
  20c215: 09 c2                        	orl	%eax, %edx
  20c217: 48 8b 45 d0                  	movq	-48(%rbp), %rax
  20c21b: 89 10                        	movl	%edx, (%rax)
  20c21d: b8 0e 00 00 00               	movl	$14, %eax
  20c222: 89 d1                        	movl	%edx, %ecx
  20c224: 89 55 cc                     	movl	%edx, -52(%rbp)
  20c227: 89 55 c8                     	movl	%edx, -56(%rbp)
  20c22a: 48 89 55 a8                  	movq	%rdx, -88(%rbp)
  20c22e: 41 89 d6                     	movl	%edx, %r14d
  20c231: e9 6a 20 00 00               	jmp	0x20e2a0 <http_parser_execute+0x4800>
  20c236: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20c23f: 48 8b 0d b2 8a 00 00         	movq	35506(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20c246: 48 35 3c 17 00 00            	xorq	$5948, %rax             # imm = 0x173C
  20c24c: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20c24f: 80 c2 01                     	addb	$1, %dl
  20c252: 80 d2 00                     	adcb	$0, %dl
  20c255: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20c258: 64 c7 04 25 90 ff ff ff 9e 0b 00 00  	movl	$2974, %fs:-112 # imm = 0xB9E
  20c264: b8 2c 00 00 00               	movl	$44, %eax
  20c269: e9 32 20 00 00               	jmp	0x20e2a0 <http_parser_execute+0x4800>
  20c26e: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20c277: 48 8b 15 7a 8a 00 00         	movq	35450(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20c27e: 48 35 5f 37 00 00            	xorq	$14175, %rax            # imm = 0x375F
  20c284: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20c287: 80 c3 01                     	addb	$1, %bl
  20c28a: 80 d3 00                     	adcb	$0, %bl
  20c28d: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20c290: 64 c7 04 25 90 ff ff ff af 1b 00 00  	movl	$7087, %fs:-112 # imm = 0x1BAF
  20c29c: 84 c9                        	testb	%cl, %cl
  20c29e: 0f 84 92 4b 00 00            	je	0x210e36 <http_parser_execute+0x7396>
  20c2a4: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20c2ad: 48 8b 15 44 8a 00 00         	movq	35396(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20c2b4: 48 35 82 b4 00 00            	xorq	$46210, %rax            # imm = 0xB482
  20c2ba: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20c2bd: 80 c3 01                     	addb	$1, %bl
  20c2c0: 80 d3 00                     	adcb	$0, %bl
  20c2c3: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20c2c6: 64 c7 04 25 90 ff ff ff 41 5a 00 00  	movl	$23105, %fs:-112 # imm = 0x5A41
  20c2d2: 44 89 f0                     	movl	%r14d, %eax
  20c2d5: c1 e8 10                     	shrl	$16, %eax
  20c2d8: 0f b6 c0                     	movzbl	%al, %eax
  20c2db: 48 8b 3c c5 20 37 20 00      	movq	2111264(,%rax,8), %rdi
  20c2e3: 45 8b 45 00                  	movl	(%r13), %r8d
  20c2e7: 44 89 c6                     	movl	%r8d, %esi
  20c2ea: c1 ee 18                     	shrl	$24, %esi
  20c2ed: 83 e6 1f                     	andl	$31, %esi
  20c2f0: 80 f9 20                     	cmpb	$32, %cl
  20c2f3: 75 38                        	jne	0x20c32d <http_parser_execute+0x288d>
  20c2f5: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20c2fe: 48 8b 1d f3 89 00 00         	movq	35315(%rip), %rbx       # 0x214cf8 <__afl_area_ptr>
  20c305: 48 35 ae ae 00 00            	xorq	$44718, %rax            # imm = 0xAEAE
  20c30b: 8a 14 03                     	movb	(%rbx,%rax), %dl
  20c30e: 80 c2 01                     	addb	$1, %dl
  20c311: 80 d2 00                     	adcb	$0, %dl
  20c314: 88 14 03                     	movb	%dl, (%rbx,%rax)
  20c317: 64 c7 04 25 90 ff ff ff 57 57 00 00  	movl	$22359, %fs:-112 # imm = 0x5757
  20c323: 80 3c 37 00                  	cmpb	$0, (%rdi,%rsi)
  20c327: 0f 84 a8 25 00 00            	je	0x20e8d5 <http_parser_execute+0x4e35>
  20c32d: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20c336: 48 8b 15 bb 89 00 00         	movq	35259(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20c33d: 48 35 be 75 00 00            	xorq	$30142, %rax            # imm = 0x75BE
  20c343: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20c346: 80 c3 01                     	addb	$1, %bl
  20c349: 80 d3 00                     	adcb	$0, %bl
  20c34c: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20c34f: 64 c7 04 25 90 ff ff ff df 3a 00 00  	movl	$15071, %fs:-112 # imm = 0x3ADF
  20c35b: b8 13 00 00 00               	movl	$19, %eax
  20c360: 3a 0c 37                     	cmpb	(%rdi,%rsi), %cl
  20c363: 0f 84 d1 32 00 00            	je	0x20f63a <http_parser_execute+0x5b9a>
  20c369: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  20c372: 48 8b 3d 7f 89 00 00         	movq	35199(%rip), %rdi       # 0x214cf8 <__afl_area_ptr>
  20c379: 48 81 f2 53 b8 00 00         	xorq	$47187, %rdx            # imm = 0xB853
  20c380: 8a 1c 17                     	movb	(%rdi,%rdx), %bl
  20c383: 80 c3 01                     	addb	$1, %bl
  20c386: 80 d3 00                     	adcb	$0, %bl
  20c389: 88 1c 17                     	movb	%bl, (%rdi,%rdx)
  20c38c: 64 c7 04 25 90 ff ff ff 29 5c 00 00  	movl	$23593, %fs:-112 # imm = 0x5C29
  20c398: 80 f9 2d                     	cmpb	$45, %cl
  20c39b: 74 0c                        	je	0x20c3a9 <http_parser_execute+0x2909>
  20c39d: 8d 51 bf                     	leal	-65(%rcx), %edx
  20c3a0: 80 fa 19                     	cmpb	$25, %dl
  20c3a3: 0f 87 2c 44 00 00            	ja	0x2107d5 <http_parser_execute+0x6d35>
  20c3a9: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  20c3b2: 48 8b 3d 3f 89 00 00         	movq	35135(%rip), %rdi       # 0x214cf8 <__afl_area_ptr>
  20c3b9: 48 81 f2 80 ad 00 00         	xorq	$44416, %rdx            # imm = 0xAD80
  20c3c0: 8a 1c 17                     	movb	(%rdi,%rdx), %bl
  20c3c3: 80 c3 01                     	addb	$1, %bl
  20c3c6: 80 d3 00                     	adcb	$0, %bl
  20c3c9: 0f be c9                     	movsbl	%cl, %ecx
  20c3cc: 88 1c 17                     	movb	%bl, (%rdi,%rdx)
  20c3cf: 64 c7 04 25 90 ff ff ff c0 56 00 00  	movl	$22208, %fs:-112 # imm = 0x56C0
  20c3db: 44 89 f2                     	movl	%r14d, %edx
  20c3de: 81 e2 00 00 ff 00            	andl	$16711680, %edx         # imm = 0xFF0000
  20c3e4: c1 e6 08                     	shll	$8, %esi
  20c3e7: 09 d6                        	orl	%edx, %esi
  20c3e9: 09 ce                        	orl	%ecx, %esi
  20c3eb: 81 fe 4e 01 0a 00            	cmpl	$655694, %esi           # imm = 0xA014E
  20c3f1: 0f 8e e8 24 00 00            	jle	0x20e8df <http_parser_execute+0x4e3f>
  20c3f7: 81 fe 52 02 0f 00            	cmpl	$983634, %esi           # imm = 0xF0252
  20c3fd: 0f 8f e8 27 00 00            	jg	0x20ebeb <http_parser_execute+0x514b>
  20c403: 81 fe 40 03 0a 00            	cmpl	$656192, %esi           # imm = 0xA0340
  20c409: 0f 8e 83 29 00 00            	jle	0x20ed92 <http_parser_execute+0x52f2>
  20c40f: 81 fe 41 03 0a 00            	cmpl	$656193, %esi           # imm = 0xA0341
  20c415: 0f 84 a1 2f 00 00            	je	0x20f3bc <http_parser_execute+0x591c>
  20c41b: 81 fe 50 04 0c 00            	cmpl	$787536, %esi           # imm = 0xC0450
  20c421: 0f 84 ce 2f 00 00            	je	0x20f3f5 <http_parser_execute+0x5955>
  20c427: 81 fe 42 02 0f 00            	cmpl	$983618, %esi           # imm = 0xF0242
  20c42d: 0f 85 ec 47 00 00            	jne	0x210c1f <http_parser_execute+0x717f>
  20c433: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20c43c: 48 8b 15 b5 88 00 00         	movq	34997(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20c443: 48 81 f1 26 b5 00 00         	xorq	$46374, %rcx            # imm = 0xB526
  20c44a: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20c44d: 80 c3 01                     	addb	$1, %bl
  20c450: 80 d3 00                     	adcb	$0, %bl
  20c453: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20c456: 64 c7 04 25 90 ff ff ff 93 5a 00 00  	movl	$23187, %fs:-112 # imm = 0x5A93
  20c462: b9 00 00 12 00               	movl	$1179648, %ecx          # imm = 0x120000
  20c467: e9 7f 31 00 00               	jmp	0x20f5eb <http_parser_execute+0x5b4b>
  20c46c: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20c475: 48 8b 0d 7c 88 00 00         	movq	34940(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20c47c: 48 35 93 d0 00 00            	xorq	$53395, %rax            # imm = 0xD093
  20c482: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20c485: 80 c2 01                     	addb	$1, %dl
  20c488: 80 d2 00                     	adcb	$0, %dl
  20c48b: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20c48e: 64 c7 04 25 90 ff ff ff 49 68 00 00  	movl	$26697, %fs:-112 # imm = 0x6849
  20c49a: b8 24 00 00 00               	movl	$36, %eax
  20c49f: e9 fc 1d 00 00               	jmp	0x20e2a0 <http_parser_execute+0x4800>
  20c4a4: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20c4ad: 48 8b 0d 44 88 00 00         	movq	34884(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20c4b4: 48 35 12 3b 00 00            	xorq	$15122, %rax            # imm = 0x3B12
  20c4ba: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20c4bd: 80 c2 01                     	addb	$1, %dl
  20c4c0: 80 d2 00                     	adcb	$0, %dl
  20c4c3: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20c4c6: 64 c7 04 25 90 ff ff ff 89 1d 00 00  	movl	$7561, %fs:-112 # imm = 0x1D89
  20c4d2: b8 26 00 00 00               	movl	$38, %eax
  20c4d7: e9 c4 1d 00 00               	jmp	0x20e2a0 <http_parser_execute+0x4800>
  20c4dc: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20c4e5: 48 8b 15 0c 88 00 00         	movq	34828(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20c4ec: 48 35 5b ea 00 00            	xorq	$59995, %rax            # imm = 0xEA5B
  20c4f2: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20c4f5: 80 c3 01                     	addb	$1, %bl
  20c4f8: 80 d3 00                     	adcb	$0, %bl
  20c4fb: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20c4fe: 64 c7 04 25 90 ff ff ff 2d 75 00 00  	movl	$29997, %fs:-112 # imm = 0x752D
  20c50a: b8 01 00 00 00               	movl	$1, %eax
  20c50f: 80 f9 0a                     	cmpb	$10, %cl
  20c512: 0f 84 88 1d 00 00            	je	0x20e2a0 <http_parser_execute+0x4800>
  20c518: 80 f9 0d                     	cmpb	$13, %cl
  20c51b: 0f 84 7f 1d 00 00            	je	0x20e2a0 <http_parser_execute+0x4800>
  20c521: e9 bd 41 00 00               	jmp	0x2106e3 <http_parser_execute+0x6c43>
  20c526: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20c52f: 48 8b 15 c2 87 00 00         	movq	34754(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20c536: 48 35 fc 93 00 00            	xorq	$37884, %rax            # imm = 0x93FC
  20c53c: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20c53f: 80 c3 01                     	addb	$1, %bl
  20c542: 80 d3 00                     	adcb	$0, %bl
  20c545: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20c548: 64 c7 04 25 90 ff ff ff fe 49 00 00  	movl	$18942, %fs:-112 # imm = 0x49FE
  20c554: 80 f9 54                     	cmpb	$84, %cl
  20c557: 0f 85 8b 1c 00 00            	jne	0x20e1e8 <http_parser_execute+0x4748>
  20c55d: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20c566: 48 8b 0d 8b 87 00 00         	movq	34699(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20c56d: 48 35 df 05 00 00            	xorq	$1503, %rax             # imm = 0x5DF
  20c573: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20c576: 80 c2 01                     	addb	$1, %dl
  20c579: 80 d2 00                     	adcb	$0, %dl
  20c57c: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20c57f: 64 c7 04 25 90 ff ff ff ef 02 00 00  	movl	$751, %fs:-112  # imm = 0x2EF
  20c58b: 41 8b 45 00                  	movl	(%r13), %eax
  20c58f: 83 e0 fc                     	andl	$-4, %eax
  20c592: 83 c8 01                     	orl	$1, %eax
  20c595: 41 89 45 00                  	movl	%eax, (%r13)
  20c599: b8 06 00 00 00               	movl	$6, %eax
  20c59e: e9 fd 1c 00 00               	jmp	0x20e2a0 <http_parser_execute+0x4800>
  20c5a3: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20c5ac: 48 8b 15 45 87 00 00         	movq	34629(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20c5b3: 48 35 5d f2 00 00            	xorq	$62045, %rax            # imm = 0xF25D
  20c5b9: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20c5bc: 80 c3 01                     	addb	$1, %bl
  20c5bf: 80 d3 00                     	adcb	$0, %bl
  20c5c2: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20c5c5: 64 c7 04 25 90 ff ff ff 2e 79 00 00  	movl	$31022, %fs:-112 # imm = 0x792E
  20c5d1: b8 04 00 00 00               	movl	$4, %eax
  20c5d6: 80 f9 0a                     	cmpb	$10, %cl
  20c5d9: 0f 84 c1 1c 00 00            	je	0x20e2a0 <http_parser_execute+0x4800>
  20c5df: 80 f9 0d                     	cmpb	$13, %cl
  20c5e2: 0f 84 b8 1c 00 00            	je	0x20e2a0 <http_parser_execute+0x4800>
  20c5e8: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20c5f1: 48 8b 15 00 87 00 00         	movq	34560(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20c5f8: 48 35 85 08 00 00            	xorq	$2181, %rax             # imm = 0x885
  20c5fe: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20c601: 80 c3 01                     	addb	$1, %bl
  20c604: 80 d3 00                     	adcb	$0, %bl
  20c607: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20c60a: 64 c7 04 25 90 ff ff ff 42 04 00 00  	movl	$1090, %fs:-112 # imm = 0x442
  20c616: 41 8b 45 00                  	movl	(%r13), %eax
  20c61a: 89 c2                        	movl	%eax, %edx
  20c61c: 81 e2 03 fc ff df            	andl	$3758095363, %edx       # imm = 0xDFFFFC03
  20c622: 41 89 55 00                  	movl	%edx, (%r13)
  20c626: 49 c7 45 08 ff ff ff ff      	movq	$-1, 8(%r13)
  20c62e: 80 f9 48                     	cmpb	$72, %cl
  20c631: 0f 85 ee 41 00 00            	jne	0x210825 <http_parser_execute+0x6d85>
  20c637: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20c640: 48 8b 15 b1 86 00 00         	movq	34481(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20c647: 48 81 f1 56 5f 00 00         	xorq	$24406, %rcx            # imm = 0x5F56
  20c64e: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20c651: 80 c3 01                     	addb	$1, %bl
  20c654: 80 d3 00                     	adcb	$0, %bl
  20c657: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20c65a: 64 c7 04 25 90 ff ff ff ab 2f 00 00  	movl	$12203, %fs:-112 # imm = 0x2FAB
  20c666: 44 8b 75 cc                  	movl	-52(%rbp), %r14d
  20c66a: 41 f7 c6 00 00 00 7f         	testl	$2130706432, %r14d      # imm = 0x7F000000
  20c671: 0f 85 8b 54 00 00            	jne	0x211b02 <http_parser_execute+0x8062>
  20c677: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20c680: 48 8b 15 71 86 00 00         	movq	34417(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20c687: 48 81 f1 1c 86 00 00         	xorq	$34332, %rcx            # imm = 0x861C
  20c68e: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20c691: 80 c3 01                     	addb	$1, %bl
  20c694: 80 d3 00                     	adcb	$0, %bl
  20c697: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20c69a: 64 c7 04 25 90 ff ff ff 0e 43 00 00  	movl	$17166, %fs:-112 # imm = 0x430E
  20c6a6: 48 8b 4d b8                  	movq	-72(%rbp), %rcx
  20c6aa: 48 83 39 00                  	cmpq	$0, (%rcx)
  20c6ae: 0f 85 3a 39 00 00            	jne	0x20ffee <http_parser_execute+0x654e>
  20c6b4: b8 05 00 00 00               	movl	$5, %eax
  20c6b9: e9 49 2c 00 00               	jmp	0x20f307 <http_parser_execute+0x5867>
  20c6be: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20c6c7: 48 8b 0d 2a 86 00 00         	movq	34346(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20c6ce: 48 35 07 65 00 00            	xorq	$25863, %rax            # imm = 0x6507
  20c6d4: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20c6d7: 80 c2 01                     	addb	$1, %dl
  20c6da: 80 d2 00                     	adcb	$0, %dl
  20c6dd: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20c6e0: 64 c7 04 25 90 ff ff ff 83 32 00 00  	movl	$12931, %fs:-112 # imm = 0x3283
  20c6ec: b8 08 00 00 00               	movl	$8, %eax
  20c6f1: e9 aa 1b 00 00               	jmp	0x20e2a0 <http_parser_execute+0x4800>
  20c6f6: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20c6ff: 48 8b 0d f2 85 00 00         	movq	34290(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20c706: 48 35 57 2c 00 00            	xorq	$11351, %rax            # imm = 0x2C57
  20c70c: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20c70f: 80 c2 01                     	addb	$1, %dl
  20c712: 80 d2 00                     	adcb	$0, %dl
  20c715: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20c718: 64 c7 04 25 90 ff ff ff 2b 16 00 00  	movl	$5675, %fs:-112 # imm = 0x162B
  20c724: b8 09 00 00 00               	movl	$9, %eax
  20c729: e9 72 1b 00 00               	jmp	0x20e2a0 <http_parser_execute+0x4800>
  20c72e: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20c737: 48 8b 15 ba 85 00 00         	movq	34234(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20c73e: 48 35 75 1d 00 00            	xorq	$7541, %rax             # imm = 0x1D75
  20c744: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20c747: 80 c3 01                     	addb	$1, %bl
  20c74a: 80 d3 00                     	adcb	$0, %bl
  20c74d: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20c750: 64 c7 04 25 90 ff ff ff ba 0e 00 00  	movl	$3770, %fs:-112 # imm = 0xEBA
  20c75c: 8d 41 c6                     	leal	-58(%rcx), %eax
  20c75f: 3c f5                        	cmpb	$-11, %al
  20c761: 0f 86 45 45 00 00            	jbe	0x210cac <http_parser_execute+0x720c>
  20c767: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20c770: 48 8b 15 81 85 00 00         	movq	34177(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20c777: 48 35 e8 09 00 00            	xorq	$2536, %rax             # imm = 0x9E8
  20c77d: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20c780: 80 c3 01                     	addb	$1, %bl
  20c783: 80 d3 00                     	adcb	$0, %bl
  20c786: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20c789: 64 c7 04 25 90 ff ff ff f4 04 00 00  	movl	$1268, %fs:-112 # imm = 0x4F4
  20c795: 0f b6 c1                     	movzbl	%cl, %eax
  20c798: 83 c0 d0                     	addl	$-48, %eax
  20c79b: 66 41 89 45 12               	movw	%ax, 18(%r13)
  20c7a0: b8 0c 00 00 00               	movl	$12, %eax
  20c7a5: e9 f6 1a 00 00               	jmp	0x20e2a0 <http_parser_execute+0x4800>
  20c7aa: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20c7b3: 48 8b 15 3e 85 00 00         	movq	34110(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20c7ba: 48 35 98 37 00 00            	xorq	$14232, %rax            # imm = 0x3798
  20c7c0: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20c7c3: 80 c3 01                     	addb	$1, %bl
  20c7c6: 80 d3 00                     	adcb	$0, %bl
  20c7c9: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20c7cc: 64 c7 04 25 90 ff ff ff cc 1b 00 00  	movl	$7116, %fs:-112 # imm = 0x1BCC
  20c7d8: b8 0d 00 00 00               	movl	$13, %eax
  20c7dd: 80 f9 20                     	cmpb	$32, %cl
  20c7e0: 0f 84 ba 1a 00 00            	je	0x20e2a0 <http_parser_execute+0x4800>
  20c7e6: e9 7e 46 00 00               	jmp	0x210e69 <http_parser_execute+0x73c9>
  20c7eb: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20c7f4: 48 8b 15 fd 84 00 00         	movq	34045(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20c7fb: 48 35 4a e8 00 00            	xorq	$59466, %rax            # imm = 0xE84A
  20c801: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20c804: 80 c3 01                     	addb	$1, %bl
  20c807: 80 d3 00                     	adcb	$0, %bl
  20c80a: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20c80d: 64 c7 04 25 90 ff ff ff 25 74 00 00  	movl	$29733, %fs:-112 # imm = 0x7425
  20c819: 80 f9 0a                     	cmpb	$10, %cl
  20c81c: 0f 84 96 1c 00 00            	je	0x20e4b8 <http_parser_execute+0x4a18>
  20c822: b8 10 00 00 00               	movl	$16, %eax
  20c827: 80 f9 0d                     	cmpb	$13, %cl
  20c82a: 0f 85 70 1a 00 00            	jne	0x20e2a0 <http_parser_execute+0x4800>
  20c830: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20c839: 48 8b 0d b8 84 00 00         	movq	33976(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20c840: 48 35 cb 3f 00 00            	xorq	$16331, %rax            # imm = 0x3FCB
  20c846: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20c849: 80 c2 01                     	addb	$1, %dl
  20c84c: 80 d2 00                     	adcb	$0, %dl
  20c84f: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20c852: 64 c7 04 25 90 ff ff ff e5 1f 00 00  	movl	$8165, %fs:-112 # imm = 0x1FE5
  20c85e: f7 45 a8 00 00 00 7f         	testl	$2130706432, -88(%rbp)  # imm = 0x7F000000
  20c865: 0f 85 de 52 00 00            	jne	0x211b49 <http_parser_execute+0x80a9>
  20c86b: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20c874: 48 8b 0d 7d 84 00 00         	movq	33917(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20c87b: 48 35 76 5e 00 00            	xorq	$24182, %rax            # imm = 0x5E76
  20c881: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20c884: 80 c2 01                     	addb	$1, %dl
  20c887: 80 d2 00                     	adcb	$0, %dl
  20c88a: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20c88d: 64 c7 04 25 90 ff ff ff 3b 2f 00 00  	movl	$12091, %fs:-112 # imm = 0x2F3B
  20c899: b8 11 00 00 00               	movl	$17, %eax
  20c89e: 48 83 bd 70 ff ff ff 00      	cmpq	$0, -144(%rbp)
  20c8a6: 0f 85 b9 22 00 00            	jne	0x20eb65 <http_parser_execute+0x50c5>
  20c8ac: 31 c9                        	xorl	%ecx, %ecx
  20c8ae: 48 89 8d 70 ff ff ff         	movq	%rcx, -144(%rbp)
  20c8b5: 48 8b 4d a8                  	movq	-88(%rbp), %rcx
  20c8b9: 89 ca                        	movl	%ecx, %edx
  20c8bb: 89 4d c8                     	movl	%ecx, -56(%rbp)
  20c8be: 41 89 ce                     	movl	%ecx, %r14d
  20c8c1: e9 da 19 00 00               	jmp	0x20e2a0 <http_parser_execute+0x4800>
  20c8c6: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20c8cf: 48 8b 15 22 84 00 00         	movq	33826(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20c8d6: 48 35 cc 96 00 00            	xorq	$38604, %rax            # imm = 0x96CC
  20c8dc: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20c8df: 80 c3 01                     	addb	$1, %bl
  20c8e2: 80 d3 00                     	adcb	$0, %bl
  20c8e5: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20c8e8: 64 c7 04 25 90 ff ff ff 66 4b 00 00  	movl	$19302, %fs:-112 # imm = 0x4B66
  20c8f4: b8 12 00 00 00               	movl	$18, %eax
  20c8f9: 80 f9 0a                     	cmpb	$10, %cl
  20c8fc: 0f 84 9e 19 00 00            	je	0x20e2a0 <http_parser_execute+0x4800>
  20c902: 80 f9 0d                     	cmpb	$13, %cl
  20c905: 0f 84 95 19 00 00            	je	0x20e2a0 <http_parser_execute+0x4800>
  20c90b: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20c914: 48 8b 15 dd 83 00 00         	movq	33757(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20c91b: 48 35 c3 64 00 00            	xorq	$25795, %rax            # imm = 0x64C3
  20c921: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20c924: 80 c3 01                     	addb	$1, %bl
  20c927: 80 d3 00                     	adcb	$0, %bl
  20c92a: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20c92d: 64 c7 04 25 90 ff ff ff 61 32 00 00  	movl	$12897, %fs:-112 # imm = 0x3261
  20c939: 41 8b 45 00                  	movl	(%r13), %eax
  20c93d: 89 c2                        	movl	%eax, %edx
  20c93f: 81 e2 03 fc ff df            	andl	$3758095363, %edx       # imm = 0xDFFFFC03
  20c945: 41 89 55 00                  	movl	%edx, (%r13)
  20c949: 49 c7 45 08 ff ff ff ff      	movq	$-1, 8(%r13)
  20c951: 89 ca                        	movl	%ecx, %edx
  20c953: 80 ca 20                     	orb	$32, %dl
  20c956: 80 c2 85                     	addb	$-123, %dl
  20c959: 80 fa e5                     	cmpb	$-27, %dl
  20c95c: 0f 86 e6 47 00 00            	jbe	0x211148 <http_parser_execute+0x76a8>
  20c962: 0f be d1                     	movsbl	%cl, %edx
  20c965: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20c96e: 48 8b 35 83 83 00 00         	movq	33667(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20c975: 48 81 f1 90 91 00 00         	xorq	$37264, %rcx            # imm = 0x9190
  20c97c: 8a 1c 0e                     	movb	(%rsi,%rcx), %bl
  20c97f: 80 c3 01                     	addb	$1, %bl
  20c982: 80 d3 00                     	adcb	$0, %bl
  20c985: 88 1c 0e                     	movb	%bl, (%rsi,%rcx)
  20c988: 64 c7 04 25 90 ff ff ff c8 48 00 00  	movl	$18632, %fs:-112 # imm = 0x48C8
  20c994: 44 89 f1                     	movl	%r14d, %ecx
  20c997: 81 e1 ff ff 00 ff            	andl	$4278255615, %ecx       # imm = 0xFF00FFFF
  20c99d: 89 4d cc                     	movl	%ecx, -52(%rbp)
  20c9a0: 41 89 4d 14                  	movl	%ecx, 20(%r13)
  20c9a4: 25 03 fc ff c0               	andl	$3238001667, %eax       # imm = 0xC0FFFC03
  20c9a9: 0d 00 00 00 01               	orl	$16777216, %eax         # imm = 0x1000000
  20c9ae: 41 89 45 00                  	movl	%eax, (%r13)
  20c9b2: 83 c2 bf                     	addl	$-65, %edx
  20c9b5: 83 fa 14                     	cmpl	$20, %edx
  20c9b8: 0f 87 11 42 00 00            	ja	0x210bcf <http_parser_execute+0x712f>
  20c9be: b9 00 00 13 00               	movl	$1245184, %ecx          # imm = 0x130000
  20c9c3: ff 24 d5 28 33 20 00         	jmpq	*2110248(,%rdx,8)
  20c9ca: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20c9d3: 48 8b 15 1e 83 00 00         	movq	33566(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20c9da: 48 81 f1 87 de 00 00         	xorq	$56967, %rcx            # imm = 0xDE87
  20c9e1: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20c9e4: 80 c3 01                     	addb	$1, %bl
  20c9e7: 80 d3 00                     	adcb	$0, %bl
  20c9ea: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20c9ed: 64 c7 04 25 90 ff ff ff 43 6f 00 00  	movl	$28483, %fs:-112 # imm = 0x6F43
  20c9f9: b9 00 00 10 00               	movl	$1048576, %ecx          # imm = 0x100000
  20c9fe: e9 45 28 00 00               	jmp	0x20f248 <http_parser_execute+0x57a8>
  20ca03: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20ca0c: 48 8b 0d e5 82 00 00         	movq	33509(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20ca13: 48 35 3a 52 00 00            	xorq	$21050, %rax            # imm = 0x523A
  20ca19: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20ca1c: 80 c2 01                     	addb	$1, %dl
  20ca1f: 80 d2 00                     	adcb	$0, %dl
  20ca22: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20ca25: 64 c7 04 25 90 ff ff ff 1d 29 00 00  	movl	$10525, %fs:-112 # imm = 0x291D
  20ca31: 41 8b 4d 00                  	movl	(%r13), %ecx
  20ca35: f6 c1 04                     	testb	$4, %cl
  20ca38: 0f 84 fe 4d 00 00            	je	0x21183c <http_parser_execute+0x7d9c>
  20ca3e: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20ca47: 48 8b 15 aa 82 00 00         	movq	33450(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20ca4e: 48 35 f3 33 00 00            	xorq	$13299, %rax            # imm = 0x33F3
  20ca54: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20ca57: 80 c3 01                     	addb	$1, %bl
  20ca5a: 80 d3 00                     	adcb	$0, %bl
  20ca5d: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20ca60: 64 c7 04 25 90 ff ff ff f9 19 00 00  	movl	$6649, %fs:-112 # imm = 0x19F9
  20ca6c: 49 83 7d 08 00               	cmpq	$0, 8(%r13)
  20ca71: 0f 85 a9 4c 00 00            	jne	0x211720 <http_parser_execute+0x7c80>
  20ca77: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20ca80: 48 8b 15 71 82 00 00         	movq	33393(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20ca87: 48 35 35 83 00 00            	xorq	$33589, %rax            # imm = 0x8335
  20ca8d: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20ca90: 80 c3 01                     	addb	$1, %bl
  20ca93: 80 d3 00                     	adcb	$0, %bl
  20ca96: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20ca99: 64 c7 04 25 90 ff ff ff 9a 41 00 00  	movl	$16794, %fs:-112 # imm = 0x419A
  20caa5: 41 f7 c6 00 00 00 7f         	testl	$2130706432, %r14d      # imm = 0x7F000000
  20caac: 0f 85 b5 4c 00 00            	jne	0x211767 <http_parser_execute+0x7cc7>
  20cab2: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20cabb: 48 8b 15 36 82 00 00         	movq	33334(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20cac2: 48 35 23 31 00 00            	xorq	$12579, %rax            # imm = 0x3123
  20cac8: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20cacb: 80 c3 01                     	addb	$1, %bl
  20cace: 80 d3 00                     	adcb	$0, %bl
  20cad1: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20cad4: 64 c7 04 25 90 ff ff ff 91 18 00 00  	movl	$6289, %fs:-112 # imm = 0x1891
  20cae0: b8 3d 00 00 00               	movl	$61, %eax
  20cae5: 48 83 7d 98 00               	cmpq	$0, -104(%rbp)
  20caea: 0f 85 56 1a 00 00            	jne	0x20e546 <http_parser_execute+0x4aa6>
  20caf0: 31 c9                        	xorl	%ecx, %ecx
  20caf2: 48 89 4d 98                  	movq	%rcx, -104(%rbp)
  20caf6: e9 a5 17 00 00               	jmp	0x20e2a0 <http_parser_execute+0x4800>
  20cafb: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20cb04: 48 8b 15 ed 81 00 00         	movq	33261(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20cb0b: 48 35 73 3c 00 00            	xorq	$15475, %rax            # imm = 0x3C73
  20cb11: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20cb14: 80 c3 01                     	addb	$1, %bl
  20cb17: 80 d3 00                     	adcb	$0, %bl
  20cb1a: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20cb1d: 64 c7 04 25 90 ff ff ff 39 1e 00 00  	movl	$7737, %fs:-112 # imm = 0x1E39
  20cb29: 8d 41 c6                     	leal	-58(%rcx), %eax
  20cb2c: 3c f5                        	cmpb	$-11, %al
  20cb2e: 0f 86 c6 41 00 00            	jbe	0x210cfa <http_parser_execute+0x725a>
  20cb34: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20cb3d: 48 8b 15 b4 81 00 00         	movq	33204(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20cb44: 48 35 d2 3b 00 00            	xorq	$15314, %rax            # imm = 0x3BD2
  20cb4a: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20cb4d: 80 c3 01                     	addb	$1, %bl
  20cb50: 80 d3 00                     	adcb	$0, %bl
  20cb53: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20cb56: 64 c7 04 25 90 ff ff ff e9 1d 00 00  	movl	$7657, %fs:-112 # imm = 0x1DE9
  20cb62: 0f b6 c1                     	movzbl	%cl, %eax
  20cb65: 83 c0 d0                     	addl	$-48, %eax
  20cb68: 66 41 89 45 10               	movw	%ax, 16(%r13)
  20cb6d: b8 0a 00 00 00               	movl	$10, %eax
  20cb72: e9 29 17 00 00               	jmp	0x20e2a0 <http_parser_execute+0x4800>
  20cb77: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20cb80: 48 8b 0d 71 81 00 00         	movq	33137(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20cb87: 48 35 5f b7 00 00            	xorq	$46943, %rax            # imm = 0xB75F
  20cb8d: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20cb90: 80 c2 01                     	addb	$1, %dl
  20cb93: 80 d2 00                     	adcb	$0, %dl
  20cb96: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20cb99: 64 c7 04 25 90 ff ff ff af 5b 00 00  	movl	$23471, %fs:-112 # imm = 0x5BAF
  20cba5: b8 23 00 00 00               	movl	$35, %eax
  20cbaa: e9 f1 16 00 00               	jmp	0x20e2a0 <http_parser_execute+0x4800>
  20cbaf: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20cbb8: 48 8b 0d 39 81 00 00         	movq	33081(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20cbbf: 48 35 c9 26 00 00            	xorq	$9929, %rax             # imm = 0x26C9
  20cbc5: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20cbc8: 80 c2 01                     	addb	$1, %dl
  20cbcb: 80 d2 00                     	adcb	$0, %dl
  20cbce: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20cbd1: 64 c7 04 25 90 ff ff ff 64 13 00 00  	movl	$4964, %fs:-112 # imm = 0x1364
  20cbdd: 41 8b 4d 00                  	movl	(%r13), %ecx
  20cbe1: f6 c1 04                     	testb	$4, %cl
  20cbe4: 0f 84 99 4c 00 00            	je	0x211883 <http_parser_execute+0x7de3>
  20cbea: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20cbf3: 48 8b 15 fe 80 00 00         	movq	33022(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20cbfa: 48 35 7c 70 00 00            	xorq	$28796, %rax            # imm = 0x707C
  20cc00: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20cc03: 80 c3 01                     	addb	$1, %bl
  20cc06: 80 d3 00                     	adcb	$0, %bl
  20cc09: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20cc0c: 64 c7 04 25 90 ff ff ff 3e 38 00 00  	movl	$14398, %fs:-112 # imm = 0x383E
  20cc18: 41 c7 45 04 00 00 00 00      	movl	$0, 4(%r13)
  20cc20: b8 3b 00 00 00               	movl	$59, %eax
  20cc25: 49 83 7d 08 00               	cmpq	$0, 8(%r13)
  20cc2a: 75 3a                        	jne	0x20cc66 <http_parser_execute+0x31c6>
  20cc2c: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20cc35: 48 8b 15 bc 80 00 00         	movq	32956(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20cc3c: 48 35 0c 6b 00 00            	xorq	$27404, %rax            # imm = 0x6B0C
  20cc42: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20cc45: 80 c3 01                     	addb	$1, %bl
  20cc48: 80 d3 00                     	adcb	$0, %bl
  20cc4b: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20cc4e: 64 c7 04 25 90 ff ff ff 86 35 00 00  	movl	$13702, %fs:-112 # imm = 0x3586
  20cc5a: 83 c9 40                     	orl	$64, %ecx
  20cc5d: 41 89 4d 00                  	movl	%ecx, (%r13)
  20cc61: b8 2c 00 00 00               	movl	$44, %eax
  20cc66: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  20cc6f: 48 8b 35 82 80 00 00         	movq	32898(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20cc76: 48 81 f2 bc 8b 00 00         	xorq	$35772, %rdx            # imm = 0x8BBC
  20cc7d: 8a 1c 16                     	movb	(%rsi,%rdx), %bl
  20cc80: 80 c3 01                     	addb	$1, %bl
  20cc83: 80 d3 00                     	adcb	$0, %bl
  20cc86: 88 1c 16                     	movb	%bl, (%rsi,%rdx)
  20cc89: 64 c7 04 25 90 ff ff ff de 45 00 00  	movl	$17886, %fs:-112 # imm = 0x45DE
  20cc95: 41 f7 c6 00 00 00 7f         	testl	$2130706432, %r14d      # imm = 0x7F000000
  20cc9c: 0f 85 37 4a 00 00            	jne	0x2116d9 <http_parser_execute+0x7c39>
  20cca2: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  20ccab: 48 8b 35 46 80 00 00         	movq	32838(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20ccb2: 48 81 f2 a2 9e 00 00         	xorq	$40610, %rdx            # imm = 0x9EA2
  20ccb9: 8a 1c 16                     	movb	(%rsi,%rdx), %bl
  20ccbc: 80 c3 01                     	addb	$1, %bl
  20ccbf: 80 d3 00                     	adcb	$0, %bl
  20ccc2: 88 1c 16                     	movb	%bl, (%rsi,%rdx)
  20ccc5: 64 c7 04 25 90 ff ff ff 51 4f 00 00  	movl	$20305, %fs:-112 # imm = 0x4F51
  20ccd1: 48 8b 55 b8                  	movq	-72(%rbp), %rdx
  20ccd5: 48 83 7a 40 00               	cmpq	$0, 64(%rdx)
  20ccda: 0f 85 62 2f 00 00            	jne	0x20fc42 <http_parser_execute+0x61a2>
  20cce0: e9 0b 05 00 00               	jmp	0x20d1f0 <http_parser_execute+0x3750>
  20cce5: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20ccee: 48 8b 15 03 80 00 00         	movq	32771(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20ccf5: 48 35 4e 22 00 00            	xorq	$8782, %rax             # imm = 0x224E
  20ccfb: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20ccfe: 80 c3 01                     	addb	$1, %bl
  20cd01: 80 d3 00                     	adcb	$0, %bl
  20cd04: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20cd07: 64 c7 04 25 90 ff ff ff 27 11 00 00  	movl	$4391, %fs:-112 # imm = 0x1127
  20cd13: b8 2b 00 00 00               	movl	$43, %eax
  20cd18: 80 f9 0d                     	cmpb	$13, %cl
  20cd1b: 0f 84 7f 15 00 00            	je	0x20e2a0 <http_parser_execute+0x4800>
  20cd21: 80 f9 0a                     	cmpb	$10, %cl
  20cd24: 0f 85 0a 3a 00 00            	jne	0x210734 <http_parser_execute+0x6c94>
  20cd2a: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20cd33: 48 8b 0d be 7f 00 00         	movq	32702(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20cd3a: 48 35 7c 4c 00 00            	xorq	$19580, %rax            # imm = 0x4C7C
  20cd40: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20cd43: 80 c2 01                     	addb	$1, %dl
  20cd46: 80 d2 00                     	adcb	$0, %dl
  20cd49: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20cd4c: 64 c7 04 25 90 ff ff ff 3e 26 00 00  	movl	$9790, %fs:-112 # imm = 0x263E
  20cd58: b8 2c 00 00 00               	movl	$44, %eax
  20cd5d: e9 3e 15 00 00               	jmp	0x20e2a0 <http_parser_execute+0x4800>
  20cd62: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20cd6b: 48 8b 15 86 7f 00 00         	movq	32646(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20cd72: 48 35 57 d6 00 00            	xorq	$54871, %rax            # imm = 0xD657
  20cd78: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20cd7b: 80 c3 01                     	addb	$1, %bl
  20cd7e: 80 d3 00                     	adcb	$0, %bl
  20cd81: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20cd84: 64 c7 04 25 90 ff ff ff 2b 6b 00 00  	movl	$27435, %fs:-112 # imm = 0x6B2B
  20cd90: b8 2c 00 00 00               	movl	$44, %eax
  20cd95: 80 f9 0a                     	cmpb	$10, %cl
  20cd98: 0f 84 02 15 00 00            	je	0x20e2a0 <http_parser_execute+0x4800>
  20cd9e: e9 17 41 00 00               	jmp	0x210eba <http_parser_execute+0x741a>
  20cda3: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20cdac: 48 8b 0d 45 7f 00 00         	movq	32581(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20cdb3: 48 35 ec c6 00 00            	xorq	$50924, %rax            # imm = 0xC6EC
  20cdb9: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20cdbc: 80 c2 01                     	addb	$1, %dl
  20cdbf: 80 d2 00                     	adcb	$0, %dl
  20cdc2: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20cdc5: 64 c7 04 25 90 ff ff ff 76 63 00 00  	movl	$25462, %fs:-112 # imm = 0x6376
  20cdd1: 8b 05 55 7f 00 00            	movl	32597(%rip), %eax       # 0x214d2c <max_header_size>
  20cdd7: 48 89 45 c0                  	movq	%rax, -64(%rbp)
  20cddb: 4c 89 e1                     	movq	%r12, %rcx
  20cdde: 4c 3b 65 90                  	cmpq	-112(%rbp), %r12
  20cde2: 0f 85 f8 09 00 00            	jne	0x20d7e0 <http_parser_execute+0x3d40>
  20cde8: 4c 8b 65 90                  	movq	-112(%rbp), %r12
  20cdec: e9 18 19 00 00               	jmp	0x20e709 <http_parser_execute+0x4c69>
  20cdf1: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20cdfa: 48 8b 15 f7 7e 00 00         	movq	32503(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20ce01: 48 35 38 e2 00 00            	xorq	$57912, %rax            # imm = 0xE238
  20ce07: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20ce0a: 80 c3 01                     	addb	$1, %bl
  20ce0d: 80 d3 00                     	adcb	$0, %bl
  20ce10: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20ce13: 64 c7 04 25 90 ff ff ff 1c 71 00 00  	movl	$28956, %fs:-112 # imm = 0x711C
  20ce1f: 41 f6 45 00 04               	testb	$4, (%r13)
  20ce24: 0f 84 a0 4a 00 00            	je	0x2118ca <http_parser_execute+0x7e2a>
  20ce2a: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20ce33: 48 8b 15 be 7e 00 00         	movq	32446(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20ce3a: 48 35 b7 c2 00 00            	xorq	$49847, %rax            # imm = 0xC2B7
  20ce40: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20ce43: 80 c3 01                     	addb	$1, %bl
  20ce46: 80 d3 00                     	adcb	$0, %bl
  20ce49: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20ce4c: 64 c7 04 25 90 ff ff ff 5b 61 00 00  	movl	$24923, %fs:-112 # imm = 0x615B
  20ce58: 31 c0                        	xorl	%eax, %eax
  20ce5a: 80 f9 0d                     	cmpb	$13, %cl
  20ce5d: 0f 94 c0                     	sete	%al
  20ce60: 83 c0 37                     	addl	$55, %eax
  20ce63: e9 38 14 00 00               	jmp	0x20e2a0 <http_parser_execute+0x4800>
  20ce68: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20ce71: 48 8b 0d 80 7e 00 00         	movq	32384(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20ce78: 48 35 4d 6f 00 00            	xorq	$28493, %rax            # imm = 0x6F4D
  20ce7e: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20ce81: 80 c2 01                     	addb	$1, %dl
  20ce84: 80 d2 00                     	adcb	$0, %dl
  20ce87: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20ce8a: 64 c7 04 25 90 ff ff ff a6 37 00 00  	movl	$14246, %fs:-112 # imm = 0x37A6
  20ce96: 49 8b 4d 08                  	movq	8(%r13), %rcx
  20ce9a: 48 8b 55 90                  	movq	-112(%rbp), %rdx
  20ce9e: 4c 29 e2                     	subq	%r12, %rdx
  20cea1: 48 39 d1                     	cmpq	%rdx, %rcx
  20cea4: 48 0f 42 d1                  	cmovbq	%rcx, %rdx
  20cea8: 41 f6 45 00 04               	testb	$4, (%r13)
  20cead: 0f 84 5e 4a 00 00            	je	0x211911 <http_parser_execute+0x7e71>
  20ceb3: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20cebc: 48 8b 35 35 7e 00 00         	movq	32309(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20cec3: 48 35 05 9b 00 00            	xorq	$39685, %rax            # imm = 0x9B05
  20cec9: 8a 1c 06                     	movb	(%rsi,%rax), %bl
  20cecc: 80 c3 01                     	addb	$1, %bl
  20cecf: 80 d3 00                     	adcb	$0, %bl
  20ced2: 88 1c 06                     	movb	%bl, (%rsi,%rax)
  20ced5: 64 c7 04 25 90 ff ff ff 82 4d 00 00  	movl	$19842, %fs:-112 # imm = 0x4D82
  20cee1: 48 8d 41 01                  	leaq	1(%rcx), %rax
  20cee5: 48 83 f8 01                  	cmpq	$1, %rax
  20cee9: 0f 86 15 47 00 00            	jbe	0x211604 <http_parser_execute+0x7b64>
  20ceef: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20cef8: 48 8b 35 f9 7d 00 00         	movq	32249(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20ceff: 48 35 6e 06 00 00            	xorq	$1646, %rax             # imm = 0x66E
  20cf05: 8a 1c 06                     	movb	(%rsi,%rax), %bl
  20cf08: 80 c3 01                     	addb	$1, %bl
  20cf0b: 80 d3 00                     	adcb	$0, %bl
  20cf0e: 88 1c 06                     	movb	%bl, (%rsi,%rax)
  20cf11: 64 c7 04 25 90 ff ff ff 37 03 00 00  	movl	$823, %fs:-112  # imm = 0x337
  20cf1d: 48 8b 45 98                  	movq	-104(%rbp), %rax
  20cf21: 48 85 c0                     	testq	%rax, %rax
  20cf24: 49 0f 44 c4                  	cmoveq	%r12, %rax
  20cf28: 48 89 45 98                  	movq	%rax, -104(%rbp)
  20cf2c: 31 c0                        	xorl	%eax, %eax
  20cf2e: 48 29 d1                     	subq	%rdx, %rcx
  20cf31: 49 89 4d 08                  	movq	%rcx, 8(%r13)
  20cf35: 4e 8d 64 22 ff               	leaq	-1(%rdx,%r12), %r12
  20cf3a: 0f 94 c0                     	sete	%al
  20cf3d: 83 c0 3b                     	addl	$59, %eax
  20cf40: e9 5b 13 00 00               	jmp	0x20e2a0 <http_parser_execute+0x4800>
  20cf45: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20cf4e: 48 8b 0d a3 7d 00 00         	movq	32163(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20cf55: 48 35 7a 5b 00 00            	xorq	$23418, %rax            # imm = 0x5B7A
  20cf5b: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20cf5e: 80 c2 01                     	addb	$1, %dl
  20cf61: 80 d2 00                     	adcb	$0, %dl
  20cf64: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20cf67: 64 c7 04 25 90 ff ff ff bd 2d 00 00  	movl	$11709, %fs:-112 # imm = 0x2DBD
  20cf73: 48 8b 45 98                  	movq	-104(%rbp), %rax
  20cf77: 48 85 c0                     	testq	%rax, %rax
  20cf7a: 49 0f 44 c4                  	cmoveq	%r12, %rax
  20cf7e: 48 89 45 98                  	movq	%rax, -104(%rbp)
  20cf82: b8 3f 00 00 00               	movl	$63, %eax
  20cf87: 4c 8b a5 50 ff ff ff         	movq	-176(%rbp), %r12
  20cf8e: e9 0d 13 00 00               	jmp	0x20e2a0 <http_parser_execute+0x4800>
  20cf93: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20cf9c: 48 8b 0d 55 7d 00 00         	movq	32085(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20cfa3: 48 35 17 ee 00 00            	xorq	$60951, %rax            # imm = 0xEE17
  20cfa9: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20cfac: 80 c2 01                     	addb	$1, %dl
  20cfaf: 80 d2 00                     	adcb	$0, %dl
  20cfb2: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20cfb5: 64 c7 04 25 90 ff ff ff 0b 77 00 00  	movl	$30475, %fs:-112 # imm = 0x770B
  20cfc1: 41 8b 4d 00                  	movl	(%r13), %ecx
  20cfc5: f6 c1 03                     	testb	$3, %cl
  20cfc8: ba 12 00 00 00               	movl	$18, %edx
  20cfcd: b8 04 00 00 00               	movl	$4, %eax
  20cfd2: 0f 44 c2                     	cmovel	%edx, %eax
  20cfd5: 41 f7 c6 00 00 00 7f         	testl	$2130706432, %r14d      # imm = 0x7F000000
  20cfdc: 0f 85 b0 46 00 00            	jne	0x211692 <http_parser_execute+0x7bf2>
  20cfe2: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  20cfeb: 48 8b 35 06 7d 00 00         	movq	32006(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20cff2: 48 81 f2 f6 06 00 00         	xorq	$1782, %rdx             # imm = 0x6F6
  20cff9: 8a 1c 16                     	movb	(%rsi,%rdx), %bl
  20cffc: 80 c3 01                     	addb	$1, %bl
  20cfff: 80 d3 00                     	adcb	$0, %bl
  20d002: 88 1c 16                     	movb	%bl, (%rsi,%rdx)
  20d005: 64 c7 04 25 90 ff ff ff 7b 03 00 00  	movl	$891, %fs:-112  # imm = 0x37B
  20d011: 48 8b 55 b8                  	movq	-72(%rbp), %rdx
  20d015: 48 83 7a 38 00               	cmpq	$0, 56(%rdx)
  20d01a: 0f 85 f1 2b 00 00            	jne	0x20fc11 <http_parser_execute+0x6171>
  20d020: 4d 89 f8                     	movq	%r15, %r8
  20d023: 44 89 f7                     	movl	%r14d, %edi
  20d026: 4d 89 e6                     	movq	%r12, %r14
  20d029: 45 89 d7                     	movl	%r10d, %r15d
  20d02c: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  20d035: 48 8b 35 bc 7c 00 00         	movq	31932(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20d03c: 48 81 f2 5f ff 00 00         	xorq	$65375, %rdx            # imm = 0xFF5F
  20d043: 8a 1c 16                     	movb	(%rsi,%rdx), %bl
  20d046: 80 c3 01                     	addb	$1, %bl
  20d049: 80 d3 00                     	adcb	$0, %bl
  20d04c: 88 1c 16                     	movb	%bl, (%rsi,%rdx)
  20d04f: 64 c7 04 25 90 ff ff ff af 7f 00 00  	movl	$32687, %fs:-112 # imm = 0x7FAF
  20d05b: 85 ff                        	testl	%edi, %edi
  20d05d: 0f 88 24 43 00 00            	js	0x211387 <http_parser_execute+0x78e7>
  20d063: 89 fa                        	movl	%edi, %edx
  20d065: 45 89 fa                     	movl	%r15d, %r10d
  20d068: 4d 89 f4                     	movq	%r14, %r12
  20d06b: 4d 89 c7                     	movq	%r8, %r15
  20d06e: 41 89 fe                     	movl	%edi, %r14d
  20d071: e9 2a 12 00 00               	jmp	0x20e2a0 <http_parser_execute+0x4800>
  20d076: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20d07f: 48 8b 0d 72 7c 00 00         	movq	31858(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20d086: 48 35 97 66 00 00            	xorq	$26263, %rax            # imm = 0x6697
  20d08c: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20d08f: 80 c2 01                     	addb	$1, %dl
  20d092: 80 d2 00                     	adcb	$0, %dl
  20d095: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20d098: 64 c7 04 25 90 ff ff ff 4b 33 00 00  	movl	$13131, %fs:-112 # imm = 0x334B
  20d0a4: 41 c7 45 04 00 00 00 00      	movl	$0, 4(%r13)
  20d0ac: 41 8b 7d 00                  	movl	(%r13), %edi
  20d0b0: b0 01                        	movb	$1, %al
  20d0b2: 40 f6 c7 04                  	testb	$4, %dil
  20d0b6: 75 3c                        	jne	0x20d0f4 <http_parser_execute+0x3654>
  20d0b8: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20d0c1: 48 8b 0d 30 7c 00 00         	movq	31792(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20d0c8: 48 35 a1 d5 00 00            	xorq	$54689, %rax            # imm = 0xD5A1
  20d0ce: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20d0d1: 80 c2 01                     	addb	$1, %dl
  20d0d4: 80 d2 00                     	adcb	$0, %dl
  20d0d7: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20d0da: 64 c7 04 25 90 ff ff ff d0 6a 00 00  	movl	$27344, %fs:-112 # imm = 0x6AD0
  20d0e6: 49 8b 45 08                  	movq	8(%r13), %rax
  20d0ea: 48 ff c8                     	decq	%rax
  20d0ed: 48 83 f8 fe                  	cmpq	$-2, %rax
  20d0f1: 0f 92 c0                     	setb	%al
  20d0f4: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20d0fd: 48 8b 15 f4 7b 00 00         	movq	31732(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20d104: 48 81 f1 80 74 00 00         	xorq	$29824, %rcx            # imm = 0x7480
  20d10b: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20d10e: 80 c3 01                     	addb	$1, %bl
  20d111: 80 d3 00                     	adcb	$0, %bl
  20d114: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20d117: 64 c7 04 25 90 ff ff ff 40 3a 00 00  	movl	$14912, %fs:-112 # imm = 0x3A40
  20d123: 45 85 f6                     	testl	%r14d, %r14d
  20d126: 0f 88 b5 11 00 00            	js	0x20e2e1 <http_parser_execute+0x4841>
  20d12c: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20d135: 48 8b 0d bc 7b 00 00         	movq	31676(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20d13c: 48 35 43 e4 00 00            	xorq	$58435, %rax            # imm = 0xE443
  20d142: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20d145: 80 c2 01                     	addb	$1, %dl
  20d148: 80 d2 00                     	adcb	$0, %dl
  20d14b: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20d14e: 64 c7 04 25 90 ff ff ff 21 72 00 00  	movl	$29217, %fs:-112 # imm = 0x7221
  20d15a: f7 c7 00 01 00 00            	testl	$256, %edi              # imm = 0x100
  20d160: 0f 84 ff 11 00 00            	je	0x20e365 <http_parser_execute+0x48c5>
  20d166: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20d16f: 48 8b 0d 82 7b 00 00         	movq	31618(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20d176: 48 35 9d 10 00 00            	xorq	$4253, %rax             # imm = 0x109D
  20d17c: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20d17f: 80 c2 01                     	addb	$1, %dl
  20d182: 80 d2 00                     	adcb	$0, %dl
  20d185: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20d188: 64 c7 04 25 90 ff ff ff 4e 08 00 00  	movl	$2126, %fs:-112 # imm = 0x84E
  20d194: 40 f6 c7 03                  	testb	$3, %dil
  20d198: b9 12 00 00 00               	movl	$18, %ecx
  20d19d: b8 04 00 00 00               	movl	$4, %eax
  20d1a2: 0f 44 c1                     	cmovel	%ecx, %eax
  20d1a5: 41 f7 c6 00 00 00 7f         	testl	$2130706432, %r14d      # imm = 0x7F000000
  20d1ac: 0f 85 b3 4a 00 00            	jne	0x211c65 <http_parser_execute+0x81c5>
  20d1b2: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20d1bb: 48 8b 15 36 7b 00 00         	movq	31542(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20d1c2: 48 81 f1 7b 43 00 00         	xorq	$17275, %rcx            # imm = 0x437B
  20d1c9: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20d1cc: 80 c3 01                     	addb	$1, %bl
  20d1cf: 80 d3 00                     	adcb	$0, %bl
  20d1d2: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20d1d5: 64 c7 04 25 90 ff ff ff bd 21 00 00  	movl	$8637, %fs:-112 # imm = 0x21BD
  20d1e1: 48 8b 4d b8                  	movq	-72(%rbp), %rcx
  20d1e5: 48 83 79 38 00               	cmpq	$0, 56(%rcx)
  20d1ea: 0f 85 3c 2e 00 00            	jne	0x21002c <http_parser_execute+0x658c>
  20d1f0: 45 31 d2                     	xorl	%r10d, %r10d
  20d1f3: e9 a8 10 00 00               	jmp	0x20e2a0 <http_parser_execute+0x4800>
  20d1f8: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20d201: 48 8b 15 f0 7a 00 00         	movq	31472(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20d208: 48 35 e9 fd 00 00            	xorq	$65001, %rax            # imm = 0xFDE9
  20d20e: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20d211: 80 c3 01                     	addb	$1, %bl
  20d214: 80 d3 00                     	adcb	$0, %bl
  20d217: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20d21a: 64 c7 04 25 90 ff ff ff f4 7e 00 00  	movl	$32500, %fs:-112 # imm = 0x7EF4
  20d226: b8 29 00 00 00               	movl	$41, %eax
  20d22b: 80 f9 2e                     	cmpb	$46, %cl
  20d22e: 0f 84 6c 10 00 00            	je	0x20e2a0 <http_parser_execute+0x4800>
  20d234: e9 d1 3c 00 00               	jmp	0x210f0a <http_parser_execute+0x746a>
  20d239: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20d242: 48 8b 0d af 7a 00 00         	movq	31407(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20d249: 48 35 45 a5 00 00            	xorq	$42309, %rax            # imm = 0xA545
  20d24f: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20d252: 80 c2 01                     	addb	$1, %dl
  20d255: 80 d2 00                     	adcb	$0, %dl
  20d258: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20d25b: 64 c7 04 25 90 ff ff ff a2 52 00 00  	movl	$21154, %fs:-112 # imm = 0x52A2
  20d267: b8 24 00 00 00               	movl	$36, %eax
  20d26c: e9 2f 10 00 00               	jmp	0x20e2a0 <http_parser_execute+0x4800>
  20d271: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20d27a: 48 8b 15 77 7a 00 00         	movq	31351(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20d281: 48 35 74 02 00 00            	xorq	$628, %rax              # imm = 0x274
  20d287: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20d28a: 80 c3 01                     	addb	$1, %bl
  20d28d: 80 d3 00                     	adcb	$0, %bl
  20d290: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20d293: 64 c7 04 25 90 ff ff ff 3a 01 00 00  	movl	$314, %fs:-112  # imm = 0x13A
  20d29f: 8d 41 c6                     	leal	-58(%rcx), %eax
  20d2a2: 3c f5                        	cmpb	$-11, %al
  20d2a4: 0f 86 b0 3c 00 00            	jbe	0x210f5a <http_parser_execute+0x74ba>
  20d2aa: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20d2b3: 48 8b 15 3e 7a 00 00         	movq	31294(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20d2ba: 48 35 ff 39 00 00            	xorq	$14847, %rax            # imm = 0x39FF
  20d2c0: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20d2c3: 80 c3 01                     	addb	$1, %bl
  20d2c6: 80 d3 00                     	adcb	$0, %bl
  20d2c9: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20d2cc: 64 c7 04 25 90 ff ff ff ff 1c 00 00  	movl	$7423, %fs:-112 # imm = 0x1CFF
  20d2d8: 0f b6 c1                     	movzbl	%cl, %eax
  20d2db: 83 c0 d0                     	addl	$-48, %eax
  20d2de: 66 41 89 45 12               	movw	%ax, 18(%r13)
  20d2e3: b8 2a 00 00 00               	movl	$42, %eax
  20d2e8: e9 b3 0f 00 00               	jmp	0x20e2a0 <http_parser_execute+0x4800>
  20d2ed: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20d2f6: 48 8b 15 fb 79 00 00         	movq	31227(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20d2fd: 48 35 af 4f 00 00            	xorq	$20399, %rax            # imm = 0x4FAF
  20d303: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20d306: 80 c3 01                     	addb	$1, %bl
  20d309: 80 d3 00                     	adcb	$0, %bl
  20d30c: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20d30f: 64 c7 04 25 90 ff ff ff d7 27 00 00  	movl	$10199, %fs:-112 # imm = 0x27D7
  20d31b: 41 83 fa 01                  	cmpl	$1, %r10d
  20d31f: 0f 85 33 46 00 00            	jne	0x211958 <http_parser_execute+0x7eb8>
  20d325: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20d32e: 48 8b 15 c3 79 00 00         	movq	31171(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20d335: 48 35 5c f9 00 00            	xorq	$63836, %rax            # imm = 0xF95C
  20d33b: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20d33e: 80 c3 01                     	addb	$1, %bl
  20d341: 80 d3 00                     	adcb	$0, %bl
  20d344: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20d347: 64 c7 04 25 90 ff ff ff ae 7c 00 00  	movl	$31918, %fs:-112 # imm = 0x7CAE
  20d353: 41 f6 45 00 04               	testb	$4, (%r13)
  20d358: 0f 84 41 46 00 00            	je	0x21199f <http_parser_execute+0x7eff>
  20d35e: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20d367: 48 8b 15 8a 79 00 00         	movq	31114(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20d36e: 48 35 d4 1f 00 00            	xorq	$8148, %rax             # imm = 0x1FD4
  20d374: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20d377: 80 c3 01                     	addb	$1, %bl
  20d37a: 80 d3 00                     	adcb	$0, %bl
  20d37d: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20d380: 64 c7 04 25 90 ff ff ff ea 0f 00 00  	movl	$4074, %fs:-112 # imm = 0xFEA
  20d38c: 0f b6 c1                     	movzbl	%cl, %eax
  20d38f: 48 0f be 80 50 39 20 00      	movsbq	2111824(%rax), %rax
  20d397: 48 83 f8 ff                  	cmpq	$-1, %rax
  20d39b: 0f 84 b1 38 00 00            	je	0x210c52 <http_parser_execute+0x71b2>
  20d3a1: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20d3aa: 48 8b 15 47 79 00 00         	movq	31047(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20d3b1: 48 81 f1 2d 3c 00 00         	xorq	$15405, %rcx            # imm = 0x3C2D
  20d3b8: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20d3bb: 80 c3 01                     	addb	$1, %bl
  20d3be: 80 d3 00                     	adcb	$0, %bl
  20d3c1: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20d3c4: 64 c7 04 25 90 ff ff ff 16 1e 00 00  	movl	$7702, %fs:-112 # imm = 0x1E16
  20d3d0: 49 89 45 08                  	movq	%rax, 8(%r13)
  20d3d4: 41 ba 01 00 00 00            	movl	$1, %r10d
  20d3da: b8 36 00 00 00               	movl	$54, %eax
  20d3df: e9 bc 0e 00 00               	jmp	0x20e2a0 <http_parser_execute+0x4800>
  20d3e4: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20d3ed: 48 8b 0d 04 79 00 00         	movq	30980(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20d3f4: 48 35 71 b5 00 00            	xorq	$46449, %rax            # imm = 0xB571
  20d3fa: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20d3fd: 80 c2 01                     	addb	$1, %dl
  20d400: 80 d2 00                     	adcb	$0, %dl
  20d403: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20d406: 64 c7 04 25 90 ff ff ff b8 5a 00 00  	movl	$23224, %fs:-112 # imm = 0x5AB8
  20d412: 41 8b 45 00                  	movl	(%r13), %eax
  20d416: a8 04                        	testb	$4, %al
  20d418: 0f 84 90 43 00 00            	je	0x2117ae <http_parser_execute+0x7d0e>
  20d41e: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20d427: 48 8b 15 ca 78 00 00         	movq	30922(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20d42e: 48 81 f1 95 46 00 00         	xorq	$18069, %rcx            # imm = 0x4695
  20d435: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20d438: 80 c3 01                     	addb	$1, %bl
  20d43b: 80 d3 00                     	adcb	$0, %bl
  20d43e: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20d441: 64 c7 04 25 90 ff ff ff 4a 23 00 00  	movl	$9034, %fs:-112 # imm = 0x234A
  20d44d: 41 c7 01 00 00 00 00         	movl	$0, (%r9)
  20d454: 41 f7 c6 00 00 00 7f         	testl	$2130706432, %r14d      # imm = 0x7F000000
  20d45b: 0f 85 85 45 00 00            	jne	0x2119e6 <http_parser_execute+0x7f46>
  20d461: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20d46a: 48 8b 15 87 78 00 00         	movq	30855(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20d471: 48 81 f1 0f 61 00 00         	xorq	$24847, %rcx            # imm = 0x610F
  20d478: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20d47b: 80 c3 01                     	addb	$1, %bl
  20d47e: 80 d3 00                     	adcb	$0, %bl
  20d481: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20d484: 64 c7 04 25 90 ff ff ff 87 30 00 00  	movl	$12423, %fs:-112 # imm = 0x3087
  20d490: 48 8b 4d b8                  	movq	-72(%rbp), %rcx
  20d494: 48 83 79 48 00               	cmpq	$0, 72(%rcx)
  20d499: 0f 85 e0 27 00 00            	jne	0x20fc7f <http_parser_execute+0x61df>
  20d49f: 45 31 d2                     	xorl	%r10d, %r10d
  20d4a2: b8 35 00 00 00               	movl	$53, %eax
  20d4a7: e9 f4 0d 00 00               	jmp	0x20e2a0 <http_parser_execute+0x4800>
  20d4ac: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20d4b5: 48 8b 0d 3c 78 00 00         	movq	30780(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20d4bc: 48 35 75 c0 00 00            	xorq	$49269, %rax            # imm = 0xC075
  20d4c2: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20d4c5: 80 c2 01                     	addb	$1, %dl
  20d4c8: 80 d2 00                     	adcb	$0, %dl
  20d4cb: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20d4ce: 64 c7 04 25 90 ff ff ff 3a 60 00 00  	movl	$24634, %fs:-112 # imm = 0x603A
  20d4da: b8 27 00 00 00               	movl	$39, %eax
  20d4df: e9 bc 0d 00 00               	jmp	0x20e2a0 <http_parser_execute+0x4800>
  20d4e4: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20d4ed: 48 8b 15 04 78 00 00         	movq	30724(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20d4f4: 48 35 a4 87 00 00            	xorq	$34724, %rax            # imm = 0x87A4
  20d4fa: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20d4fd: 80 c3 01                     	addb	$1, %bl
  20d500: 80 d3 00                     	adcb	$0, %bl
  20d503: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20d506: 64 c7 04 25 90 ff ff ff d2 43 00 00  	movl	$17362, %fs:-112 # imm = 0x43D2
  20d512: 0f be c1                     	movsbl	%cl, %eax
  20d515: 83 f8 20                     	cmpl	$32, %eax
  20d518: 0f 84 82 0d 00 00            	je	0x20e2a0 <http_parser_execute+0x4800>
  20d51e: 83 f8 49                     	cmpl	$73, %eax
  20d521: 0f 84 62 10 00 00            	je	0x20e589 <http_parser_execute+0x4ae9>
  20d527: 83 f8 48                     	cmpl	$72, %eax
  20d52a: 0f 85 dc 30 00 00            	jne	0x21060c <http_parser_execute+0x6b6c>
  20d530: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20d539: 48 8b 0d b8 77 00 00         	movq	30648(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20d540: 48 35 4b 58 00 00            	xorq	$22603, %rax            # imm = 0x584B
  20d546: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20d549: 80 c2 01                     	addb	$1, %dl
  20d54c: 80 d2 00                     	adcb	$0, %dl
  20d54f: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20d552: 64 c7 04 25 90 ff ff ff 25 2c 00 00  	movl	$11301, %fs:-112 # imm = 0x2C25
  20d55e: b8 21 00 00 00               	movl	$33, %eax
  20d563: e9 38 0d 00 00               	jmp	0x20e2a0 <http_parser_execute+0x4800>
  20d568: 4c 8b 5d 90                  	movq	-112(%rbp), %r11
  20d56c: 4d 89 dc                     	movq	%r11, %r12
  20d56f: 44 89 c7                     	movl	%r8d, %edi
  20d572: e9 1c e3 ff ff               	jmp	0x20b893 <http_parser_execute+0x1df3>
  20d577: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20d580: 48 8b 0d 71 77 00 00         	movq	30577(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20d587: 48 35 a8 78 00 00            	xorq	$30888, %rax            # imm = 0x78A8
  20d58d: 8a 1c 01                     	movb	(%rcx,%rax), %bl
  20d590: 80 c3 01                     	addb	$1, %bl
  20d593: 80 d3 00                     	adcb	$0, %bl
  20d596: 88 1c 01                     	movb	%bl, (%rcx,%rax)
  20d599: 64 c7 04 25 90 ff ff ff 54 3c 00 00  	movl	$15444, %fs:-112 # imm = 0x3C54
  20d5a5: 48 8b 75 a8                  	movq	-88(%rbp), %rsi
  20d5a9: 8d 04 b6                     	leal	(%rsi,%rsi,4), %eax
  20d5ac: 81 e6 00 00 ff ff            	andl	$4294901760, %esi       # imm = 0xFFFF0000
  20d5b2: 8d 04 42                     	leal	(%rdx,%rax,2), %eax
  20d5b5: 05 d0 ff 00 00               	addl	$65488, %eax            # imm = 0xFFD0
  20d5ba: 0f b7 c8                     	movzwl	%ax, %ecx
  20d5bd: 41 89 f6                     	movl	%esi, %r14d
  20d5c0: 41 09 ce                     	orl	%ecx, %r14d
  20d5c3: 48 8b 45 d0                  	movq	-48(%rbp), %rax
  20d5c7: 44 89 30                     	movl	%r14d, (%rax)
  20d5ca: b8 0e 00 00 00               	movl	$14, %eax
  20d5cf: 81 f9 e8 03 00 00            	cmpl	$1000, %ecx             # imm = 0x3E8
  20d5d5: 0f 82 71 0c 00 00            	jb	0x20e24c <http_parser_execute+0x47ac>
  20d5db: e9 ca 39 00 00               	jmp	0x210faa <http_parser_execute+0x750a>
  20d5e0: ba 3e 00 00 00               	movl	$62, %edx
  20d5e5: e9 78 0c 00 00               	jmp	0x20e262 <http_parser_execute+0x47c2>
  20d5ea: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20d5f3: 48 8b 15 fe 76 00 00         	movq	30462(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20d5fa: 48 35 85 af 00 00            	xorq	$44933, %rax            # imm = 0xAF85
  20d600: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20d603: 80 c3 01                     	addb	$1, %bl
  20d606: 80 d3 00                     	adcb	$0, %bl
  20d609: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20d60c: 64 c7 04 25 90 ff ff ff c2 57 00 00  	movl	$22466, %fs:-112 # imm = 0x57C2
  20d618: 0f b6 c1                     	movzbl	%cl, %eax
  20d61b: 0f be 88 50 38 20 00         	movsbl	2111568(%rax), %ecx
  20d622: 85 c9                        	testl	%ecx, %ecx
  20d624: 0f 84 d0 39 00 00            	je	0x210ffa <http_parser_execute+0x755a>
  20d62a: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20d633: 48 8b 15 be 76 00 00         	movq	30398(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20d63a: 48 35 ae 60 00 00            	xorq	$24750, %rax            # imm = 0x60AE
  20d640: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20d643: 80 c3 01                     	addb	$1, %bl
  20d646: 80 d3 00                     	adcb	$0, %bl
  20d649: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20d64c: 64 c7 04 25 90 ff ff ff 57 30 00 00  	movl	$12375, %fs:-112 # imm = 0x3057
  20d658: 48 8b 85 60 ff ff ff         	movq	-160(%rbp), %rax
  20d65f: 48 85 c0                     	testq	%rax, %rax
  20d662: 49 0f 44 c4                  	cmoveq	%r12, %rax
  20d666: 48 89 85 60 ff ff ff         	movq	%rax, -160(%rbp)
  20d66d: 41 8b 45 00                  	movl	(%r13), %eax
  20d671: 89 c2                        	movl	%eax, %edx
  20d673: 81 e2 ff ff ff e0            	andl	$3774873599, %edx       # imm = 0xE0FFFFFF
  20d679: 41 89 55 00                  	movl	%edx, (%r13)
  20d67d: 83 c1 9d                     	addl	$-99, %ecx
  20d680: 83 f9 12                     	cmpl	$18, %ecx
  20d683: 0f 87 0c 11 00 00            	ja	0x20e795 <http_parser_execute+0x4cf5>
  20d689: ff 24 cd 90 32 20 00         	jmpq	*2110096(,%rcx,8)
  20d690: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20d699: 48 8b 15 58 76 00 00         	movq	30296(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20d6a0: 48 81 f1 32 da 00 00         	xorq	$55858, %rcx            # imm = 0xDA32
  20d6a7: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20d6aa: 80 c3 01                     	addb	$1, %bl
  20d6ad: 80 d3 00                     	adcb	$0, %bl
  20d6b0: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20d6b3: 64 c7 04 25 90 ff ff ff 19 6d 00 00  	movl	$27929, %fs:-112 # imm = 0x6D19
  20d6bf: 25 ff ff 01 e0               	andl	$3758227455, %eax       # imm = 0xE001FFFF
  20d6c4: 0d 00 00 02 00               	orl	$131072, %eax           # imm = 0x20000
  20d6c9: e9 af 11 00 00               	jmp	0x20e87d <http_parser_execute+0x4ddd>
  20d6ce: 83 fa 20                     	cmpl	$32, %edx
  20d6d1: 0f 85 95 27 00 00            	jne	0x20fe6c <http_parser_execute+0x63cc>
  20d6d7: ba 0f 00 00 00               	movl	$15, %edx
  20d6dc: e9 81 0b 00 00               	jmp	0x20e262 <http_parser_execute+0x47c2>
  20d6e1: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20d6ea: 48 8b 0d 07 76 00 00         	movq	30215(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20d6f1: 48 35 88 5a 00 00            	xorq	$23176, %rax            # imm = 0x5A88
  20d6f7: 8a 1c 01                     	movb	(%rcx,%rax), %bl
  20d6fa: 80 c3 01                     	addb	$1, %bl
  20d6fd: 80 d3 00                     	adcb	$0, %bl
  20d700: 88 1c 01                     	movb	%bl, (%rcx,%rax)
  20d703: 64 c7 04 25 90 ff ff ff 44 2d 00 00  	movl	$11588, %fs:-112 # imm = 0x2D44
  20d70f: 44 8b 75 cc                  	movl	-52(%rbp), %r14d
  20d713: 41 f7 c6 00 00 00 7f         	testl	$2130706432, %r14d      # imm = 0x7F000000
  20d71a: 0f 85 0d 43 00 00            	jne	0x211a2d <http_parser_execute+0x7f8d>
  20d720: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20d729: 48 8b 0d c8 75 00 00         	movq	30152(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20d730: 48 35 e9 fc 00 00            	xorq	$64745, %rax            # imm = 0xFCE9
  20d736: 8a 1c 01                     	movb	(%rcx,%rax), %bl
  20d739: 80 c3 01                     	addb	$1, %bl
  20d73c: 80 d3 00                     	adcb	$0, %bl
  20d73f: 88 1c 01                     	movb	%bl, (%rcx,%rax)
  20d742: 64 c7 04 25 90 ff ff ff 74 7e 00 00  	movl	$32372, %fs:-112 # imm = 0x7E74
  20d74e: 48 8b 45 b8                  	movq	-72(%rbp), %rax
  20d752: 48 83 38 00                  	cmpq	$0, (%rax)
  20d756: 0f 85 61 25 00 00            	jne	0x20fcbd <http_parser_execute+0x621d>
  20d75c: b8 03 00 00 00               	movl	$3, %eax
  20d761: e9 a1 1b 00 00               	jmp	0x20f307 <http_parser_execute+0x5867>
  20d766: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20d76f: 48 8b 35 82 75 00 00         	movq	30082(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20d776: 48 35 22 d6 00 00            	xorq	$54818, %rax            # imm = 0xD622
  20d77c: 8a 14 06                     	movb	(%rsi,%rax), %dl
  20d77f: 80 c2 01                     	addb	$1, %dl
  20d782: 80 d2 00                     	adcb	$0, %dl
  20d785: 88 14 06                     	movb	%dl, (%rsi,%rax)
  20d788: 64 c7 04 25 90 ff ff ff 11 6b 00 00  	movl	$27409, %fs:-112 # imm = 0x6B11
  20d794: 41 81 e2 ff ff 01 ff         	andl	$4278321151, %r10d      # imm = 0xFF01FFFF
  20d79b: 45 89 55 00                  	movl	%r10d, (%r13)
  20d79f: 45 89 f2                     	movl	%r14d, %r10d
  20d7a2: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20d7ab: 48 8b 15 46 75 00 00         	movq	30022(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20d7b2: 48 35 bd fb 00 00            	xorq	$64445, %rax            # imm = 0xFBBD
  20d7b8: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20d7bb: 80 c3 01                     	addb	$1, %bl
  20d7be: 80 d3 00                     	adcb	$0, %bl
  20d7c1: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20d7c4: 64 c7 04 25 90 ff ff ff de 7d 00 00  	movl	$32222, %fs:-112 # imm = 0x7DDE
  20d7d0: 48 ff c1                     	incq	%rcx
  20d7d3: 48 3b 4d 90                  	cmpq	-112(%rbp), %rcx
  20d7d7: 45 89 c6                     	movl	%r8d, %r14d
  20d7da: 0f 84 fb 0e 00 00            	je	0x20e6db <http_parser_execute+0x4c3b>
  20d7e0: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20d7e9: 48 8b 35 08 75 00 00         	movq	29960(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20d7f0: 48 35 8f 61 00 00            	xorq	$24975, %rax            # imm = 0x618F
  20d7f6: 8a 1c 06                     	movb	(%rsi,%rax), %bl
  20d7f9: 80 c3 01                     	addb	$1, %bl
  20d7fc: 80 d3 00                     	adcb	$0, %bl
  20d7ff: 88 1c 06                     	movb	%bl, (%rsi,%rax)
  20d802: 64 c7 04 25 90 ff ff ff c7 30 00 00  	movl	$12487, %fs:-112 # imm = 0x30C7
  20d80e: 0f b6 39                     	movzbl	(%rcx), %edi
  20d811: 0f be b7 50 38 20 00         	movsbl	2111568(%rdi), %esi
  20d818: 85 f6                        	testl	%esi, %esi
  20d81a: 0f 84 b6 0d 00 00            	je	0x20e5d6 <http_parser_execute+0x4b36>
  20d820: 45 89 f0                     	movl	%r14d, %r8d
  20d823: 45 89 d6                     	movl	%r10d, %r14d
  20d826: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20d82f: 48 8b 1d c2 74 00 00         	movq	29890(%rip), %rbx       # 0x214cf8 <__afl_area_ptr>
  20d836: 48 35 af 2f 00 00            	xorq	$12207, %rax            # imm = 0x2FAF
  20d83c: 8a 14 03                     	movb	(%rbx,%rax), %dl
  20d83f: 80 c2 01                     	addb	$1, %dl
  20d842: 80 d2 00                     	adcb	$0, %dl
  20d845: 88 14 03                     	movb	%dl, (%rbx,%rax)
  20d848: 64 c7 04 25 90 ff ff ff d7 17 00 00  	movl	$6103, %fs:-112 # imm = 0x17D7
  20d854: 45 8b 55 00                  	movl	(%r13), %r10d
  20d858: 44 89 d0                     	movl	%r10d, %eax
  20d85b: c1 e8 11                     	shrl	$17, %eax
  20d85e: 83 e0 7f                     	andl	$127, %eax
  20d861: 83 f8 0e                     	cmpl	$14, %eax
  20d864: 0f 87 51 42 00 00            	ja	0x211abb <http_parser_execute+0x801b>
  20d86a: ff 24 c5 18 32 20 00         	jmpq	*2109976(,%rax,8)
  20d871: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20d87a: 48 8b 15 77 74 00 00         	movq	29815(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20d881: 48 35 a5 2b 00 00            	xorq	$11173, %rax            # imm = 0x2BA5
  20d887: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20d88a: 80 c3 01                     	addb	$1, %bl
  20d88d: 80 d3 00                     	adcb	$0, %bl
  20d890: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20d893: 64 c7 04 25 90 ff ff ff d2 15 00 00  	movl	$5586, %fs:-112 # imm = 0x15D2
  20d89f: 40 80 ff 20                  	cmpb	$32, %dil
  20d8a3: 0f 84 f6 fe ff ff            	je	0x20d79f <http_parser_execute+0x3cff>
  20d8a9: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20d8b2: 48 8b 15 3f 74 00 00         	movq	29759(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20d8b9: 48 35 d2 f7 00 00            	xorq	$63442, %rax            # imm = 0xF7D2
  20d8bf: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20d8c2: 80 c3 01                     	addb	$1, %bl
  20d8c5: 80 d3 00                     	adcb	$0, %bl
  20d8c8: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20d8cb: 64 c7 04 25 90 ff ff ff e9 7b 00 00  	movl	$31721, %fs:-112 # imm = 0x7BE9
  20d8d7: e9 b8 fe ff ff               	jmp	0x20d794 <http_parser_execute+0x3cf4>
  20d8dc: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20d8e5: 48 8b 3d 0c 74 00 00         	movq	29708(%rip), %rdi       # 0x214cf8 <__afl_area_ptr>
  20d8ec: 48 35 03 c4 00 00            	xorq	$50179, %rax            # imm = 0xC403
  20d8f2: 8a 14 07                     	movb	(%rdi,%rax), %dl
  20d8f5: 80 c2 01                     	addb	$1, %dl
  20d8f8: 80 d2 00                     	adcb	$0, %dl
  20d8fb: 88 14 07                     	movb	%dl, (%rdi,%rax)
  20d8fe: 41 8d 82 00 00 00 01         	leal	16777216(%r10), %eax
  20d905: 25 00 00 00 1f               	andl	$520093696, %eax        # imm = 0x1F000000
  20d90a: 41 81 e2 ff ff 01 e0         	andl	$3758227455, %r10d      # imm = 0xE001FFFF
  20d911: 31 d2                        	xorl	%edx, %edx
  20d913: 40 80 fe 6e                  	cmpb	$110, %sil
  20d917: be 00 00 06 00               	movl	$393216, %esi           # imm = 0x60000
  20d91c: 0f 45 f2                     	cmovnel	%edx, %esi
  20d91f: 64 c7 04 25 90 ff ff ff 01 62 00 00  	movl	$25089, %fs:-112 # imm = 0x6201
  20d92b: 44 09 d6                     	orl	%r10d, %esi
  20d92e: 09 c6                        	orl	%eax, %esi
  20d930: 41 89 75 00                  	movl	%esi, (%r13)
  20d934: e9 66 fe ff ff               	jmp	0x20d79f <http_parser_execute+0x3cff>
  20d939: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20d942: 48 8b 3d af 73 00 00         	movq	29615(%rip), %rdi       # 0x214cf8 <__afl_area_ptr>
  20d949: 48 35 99 de 00 00            	xorq	$56985, %rax            # imm = 0xDE99
  20d94f: 8a 14 07                     	movb	(%rdi,%rax), %dl
  20d952: 80 c2 01                     	addb	$1, %dl
  20d955: 80 d2 00                     	adcb	$0, %dl
  20d958: 88 14 07                     	movb	%dl, (%rdi,%rax)
  20d95b: 64 c7 04 25 90 ff ff ff 4c 6f 00 00  	movl	$28492, %fs:-112 # imm = 0x6F4C
  20d967: 41 8d 82 00 00 00 01         	leal	16777216(%r10), %eax
  20d96e: 25 00 00 00 1f               	andl	$520093696, %eax        # imm = 0x1F000000
  20d973: 41 81 e2 ff ff ff e0         	andl	$3774873599, %r10d      # imm = 0xE0FFFFFF
  20d97a: 41 09 c2                     	orl	%eax, %r10d
  20d97d: 45 89 55 00                  	movl	%r10d, (%r13)
  20d981: 83 fe 74                     	cmpl	$116, %esi
  20d984: 0f 84 a9 07 00 00            	je	0x20e133 <http_parser_execute+0x4693>
  20d98a: 83 fe 6e                     	cmpl	$110, %esi
  20d98d: 0f 85 e1 07 00 00            	jne	0x20e174 <http_parser_execute+0x46d4>
  20d993: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20d99c: 48 8b 35 55 73 00 00         	movq	29525(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20d9a3: 48 35 e6 92 00 00            	xorq	$37606, %rax            # imm = 0x92E6
  20d9a9: 8a 14 06                     	movb	(%rsi,%rax), %dl
  20d9ac: 80 c2 01                     	addb	$1, %dl
  20d9af: 80 d2 00                     	adcb	$0, %dl
  20d9b2: 88 14 06                     	movb	%dl, (%rsi,%rax)
  20d9b5: 64 c7 04 25 90 ff ff ff 73 49 00 00  	movl	$18803, %fs:-112 # imm = 0x4973
  20d9c1: 41 81 e2 ff ff 01 ff         	andl	$4278321151, %r10d      # imm = 0xFF01FFFF
  20d9c8: 41 81 ca 00 00 08 00         	orl	$524288, %r10d          # imm = 0x80000
  20d9cf: e9 c7 fd ff ff               	jmp	0x20d79b <http_parser_execute+0x3cfb>
  20d9d4: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20d9dd: 48 8b 3d 14 73 00 00         	movq	29460(%rip), %rdi       # 0x214cf8 <__afl_area_ptr>
  20d9e4: 48 35 85 d5 00 00            	xorq	$54661, %rax            # imm = 0xD585
  20d9ea: 8a 14 07                     	movb	(%rdi,%rax), %dl
  20d9ed: 80 c2 01                     	addb	$1, %dl
  20d9f0: 80 d2 00                     	adcb	$0, %dl
  20d9f3: 88 14 07                     	movb	%dl, (%rdi,%rax)
  20d9f6: 64 c7 04 25 90 ff ff ff c2 6a 00 00  	movl	$27330, %fs:-112 # imm = 0x6AC2
  20da02: 41 8d ba 00 00 00 01         	leal	16777216(%r10), %edi
  20da09: 81 e7 00 00 00 1f            	andl	$520093696, %edi        # imm = 0x1F000000
  20da0f: 41 81 e2 ff ff ff e0         	andl	$3774873599, %r10d      # imm = 0xE0FFFFFF
  20da16: 41 09 fa                     	orl	%edi, %r10d
  20da19: 45 89 55 00                  	movl	%r10d, (%r13)
  20da1d: 81 ff 00 00 00 0a            	cmpl	$167772160, %edi        # imm = 0xA000000
  20da23: 0f 87 3e 06 00 00            	ja	0x20e067 <http_parser_execute+0x45c7>
  20da29: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20da32: 4c 89 cb                     	movq	%r9, %rbx
  20da35: 4c 8b 0d bc 72 00 00         	movq	29372(%rip), %r9        # 0x214cf8 <__afl_area_ptr>
  20da3c: 48 35 8e 5a 00 00            	xorq	$23182, %rax            # imm = 0x5A8E
  20da42: 41 8a 14 01                  	movb	(%r9,%rax), %dl
  20da46: 80 c2 01                     	addb	$1, %dl
  20da49: 80 d2 00                     	adcb	$0, %dl
  20da4c: 41 88 14 01                  	movb	%dl, (%r9,%rax)
  20da50: 49 89 d9                     	movq	%rbx, %r9
  20da53: 64 c7 04 25 90 ff ff ff 47 2d 00 00  	movl	$11591, %fs:-112 # imm = 0x2D47
  20da5f: 89 f8                        	movl	%edi, %eax
  20da61: 48 c1 e8 18                  	shrq	$24, %rax
  20da65: 40 3a b0 e3 20 20 00         	cmpb	2105571(%rax), %sil
  20da6c: 0f 85 f5 05 00 00            	jne	0x20e067 <http_parser_execute+0x45c7>
  20da72: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20da7b: 48 8b 35 76 72 00 00         	movq	29302(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20da82: 48 35 fd 81 00 00            	xorq	$33277, %rax            # imm = 0x81FD
  20da88: 8a 14 06                     	movb	(%rsi,%rax), %dl
  20da8b: 80 c2 01                     	addb	$1, %dl
  20da8e: 80 d2 00                     	adcb	$0, %dl
  20da91: 88 14 06                     	movb	%dl, (%rsi,%rax)
  20da94: 64 c7 04 25 90 ff ff ff fe 40 00 00  	movl	$16638, %fs:-112 # imm = 0x40FE
  20daa0: 81 ff 00 00 00 09            	cmpl	$150994944, %edi        # imm = 0x9000000
  20daa6: 0f 85 f3 fc ff ff            	jne	0x20d79f <http_parser_execute+0x3cff>
  20daac: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20dab5: 48 8b 35 3c 72 00 00         	movq	29244(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20dabc: 48 35 68 81 00 00            	xorq	$33128, %rax            # imm = 0x8168
  20dac2: 8a 14 06                     	movb	(%rsi,%rax), %dl
  20dac5: 80 c2 01                     	addb	$1, %dl
  20dac8: 80 d2 00                     	adcb	$0, %dl
  20dacb: 88 14 06                     	movb	%dl, (%rsi,%rax)
  20dace: 64 c7 04 25 90 ff ff ff b4 40 00 00  	movl	$16564, %fs:-112 # imm = 0x40B4
  20dada: e9 06 01 00 00               	jmp	0x20dbe5 <http_parser_execute+0x4145>
  20dadf: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20dae8: 48 8b 3d 09 72 00 00         	movq	29193(%rip), %rdi       # 0x214cf8 <__afl_area_ptr>
  20daef: 48 35 58 fb 00 00            	xorq	$64344, %rax            # imm = 0xFB58
  20daf5: 8a 14 07                     	movb	(%rdi,%rax), %dl
  20daf8: 80 c2 01                     	addb	$1, %dl
  20dafb: 80 d2 00                     	adcb	$0, %dl
  20dafe: 88 14 07                     	movb	%dl, (%rdi,%rax)
  20db01: 64 c7 04 25 90 ff ff ff ac 7d 00 00  	movl	$32172, %fs:-112 # imm = 0x7DAC
  20db0d: 41 8d ba 00 00 00 01         	leal	16777216(%r10), %edi
  20db14: 81 e7 00 00 00 1f            	andl	$520093696, %edi        # imm = 0x1F000000
  20db1a: 41 81 e2 ff ff ff e0         	andl	$3774873599, %r10d      # imm = 0xE0FFFFFF
  20db21: 41 09 fa                     	orl	%edi, %r10d
  20db24: 45 89 55 00                  	movl	%r10d, (%r13)
  20db28: 81 ff 00 00 00 10            	cmpl	$268435456, %edi        # imm = 0x10000000
  20db2e: 0f 87 66 05 00 00            	ja	0x20e09a <http_parser_execute+0x45fa>
  20db34: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20db3d: 4c 89 cb                     	movq	%r9, %rbx
  20db40: 4c 8b 0d b1 71 00 00         	movq	29105(%rip), %r9        # 0x214cf8 <__afl_area_ptr>
  20db47: 48 35 6a 67 00 00            	xorq	$26474, %rax            # imm = 0x676A
  20db4d: 41 8a 14 01                  	movb	(%r9,%rax), %dl
  20db51: 80 c2 01                     	addb	$1, %dl
  20db54: 80 d2 00                     	adcb	$0, %dl
  20db57: 41 88 14 01                  	movb	%dl, (%r9,%rax)
  20db5b: 49 89 d9                     	movq	%rbx, %r9
  20db5e: 64 c7 04 25 90 ff ff ff b5 33 00 00  	movl	$13237, %fs:-112 # imm = 0x33B5
  20db6a: 89 f8                        	movl	%edi, %eax
  20db6c: 48 c1 e8 18                  	shrq	$24, %rax
  20db70: 40 3a b0 88 1f 20 00         	cmpb	2105224(%rax), %sil
  20db77: 0f 85 1d 05 00 00            	jne	0x20e09a <http_parser_execute+0x45fa>
  20db7d: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20db86: 48 8b 35 6b 71 00 00         	movq	29035(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20db8d: 48 35 b4 5c 00 00            	xorq	$23732, %rax            # imm = 0x5CB4
  20db93: 8a 14 06                     	movb	(%rsi,%rax), %dl
  20db96: 80 c2 01                     	addb	$1, %dl
  20db99: 80 d2 00                     	adcb	$0, %dl
  20db9c: 88 14 06                     	movb	%dl, (%rsi,%rax)
  20db9f: 64 c7 04 25 90 ff ff ff 5a 2e 00 00  	movl	$11866, %fs:-112 # imm = 0x2E5A
  20dbab: 81 ff 00 00 00 0f            	cmpl	$251658240, %edi        # imm = 0xF000000
  20dbb1: 0f 85 e8 fb ff ff            	jne	0x20d79f <http_parser_execute+0x3cff>
  20dbb7: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20dbc0: 48 8b 35 31 71 00 00         	movq	28977(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20dbc7: 48 35 48 f6 00 00            	xorq	$63048, %rax            # imm = 0xF648
  20dbcd: 8a 14 06                     	movb	(%rsi,%rax), %dl
  20dbd0: 80 c2 01                     	addb	$1, %dl
  20dbd3: 80 d2 00                     	adcb	$0, %dl
  20dbd6: 88 14 06                     	movb	%dl, (%rsi,%rax)
  20dbd9: 64 c7 04 25 90 ff ff ff 24 7b 00 00  	movl	$31524, %fs:-112 # imm = 0x7B24
  20dbe5: 41 81 e2 ff ff 01 ff         	andl	$4278321151, %r10d      # imm = 0xFF01FFFF
  20dbec: 41 81 ca 00 00 12 00         	orl	$1179648, %r10d         # imm = 0x120000
  20dbf3: e9 a3 fb ff ff               	jmp	0x20d79b <http_parser_execute+0x3cfb>
  20dbf8: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20dc01: 48 8b 3d f0 70 00 00         	movq	28912(%rip), %rdi       # 0x214cf8 <__afl_area_ptr>
  20dc08: 48 35 89 58 00 00            	xorq	$22665, %rax            # imm = 0x5889
  20dc0e: 8a 14 07                     	movb	(%rdi,%rax), %dl
  20dc11: 80 c2 01                     	addb	$1, %dl
  20dc14: 80 d2 00                     	adcb	$0, %dl
  20dc17: 88 14 07                     	movb	%dl, (%rdi,%rax)
  20dc1a: 64 c7 04 25 90 ff ff ff 44 2c 00 00  	movl	$11332, %fs:-112 # imm = 0x2C44
  20dc26: 41 8d ba 00 00 00 01         	leal	16777216(%r10), %edi
  20dc2d: 81 e7 00 00 00 1f            	andl	$520093696, %edi        # imm = 0x1F000000
  20dc33: 41 81 e2 ff ff ff e0         	andl	$3774873599, %r10d      # imm = 0xE0FFFFFF
  20dc3a: 41 09 fa                     	orl	%edi, %r10d
  20dc3d: 45 89 55 00                  	movl	%r10d, (%r13)
  20dc41: 81 ff 00 00 00 11            	cmpl	$285212672, %edi        # imm = 0x11000000
  20dc47: 0f 87 80 04 00 00            	ja	0x20e0cd <http_parser_execute+0x462d>
  20dc4d: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20dc56: 4c 89 cb                     	movq	%r9, %rbx
  20dc59: 4c 8b 0d 98 70 00 00         	movq	28824(%rip), %r9        # 0x214cf8 <__afl_area_ptr>
  20dc60: 48 35 c0 b5 00 00            	xorq	$46528, %rax            # imm = 0xB5C0
  20dc66: 41 8a 14 01                  	movb	(%r9,%rax), %dl
  20dc6a: 80 c2 01                     	addb	$1, %dl
  20dc6d: 80 d2 00                     	adcb	$0, %dl
  20dc70: 41 88 14 01                  	movb	%dl, (%r9,%rax)
  20dc74: 49 89 d9                     	movq	%rbx, %r9
  20dc77: 64 c7 04 25 90 ff ff ff e0 5a 00 00  	movl	$23264, %fs:-112 # imm = 0x5AE0
  20dc83: 89 f8                        	movl	%edi, %eax
  20dc85: 48 c1 e8 18                  	shrq	$24, %rax
  20dc89: 40 3a b0 7e 24 20 00         	cmpb	2106494(%rax), %sil
  20dc90: 0f 85 37 04 00 00            	jne	0x20e0cd <http_parser_execute+0x462d>
  20dc96: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20dc9f: 48 8b 35 52 70 00 00         	movq	28754(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20dca6: 48 35 15 35 00 00            	xorq	$13589, %rax            # imm = 0x3515
  20dcac: 8a 14 06                     	movb	(%rsi,%rax), %dl
  20dcaf: 80 c2 01                     	addb	$1, %dl
  20dcb2: 80 d2 00                     	adcb	$0, %dl
  20dcb5: 88 14 06                     	movb	%dl, (%rsi,%rax)
  20dcb8: 64 c7 04 25 90 ff ff ff 8a 1a 00 00  	movl	$6794, %fs:-112 # imm = 0x1A8A
  20dcc4: 81 ff 00 00 00 10            	cmpl	$268435456, %edi        # imm = 0x10000000
  20dcca: 0f 85 cf fa ff ff            	jne	0x20d79f <http_parser_execute+0x3cff>
  20dcd0: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20dcd9: 48 8b 35 18 70 00 00         	movq	28696(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20dce0: 48 35 b6 37 00 00            	xorq	$14262, %rax            # imm = 0x37B6
  20dce6: 8a 14 06                     	movb	(%rsi,%rax), %dl
  20dce9: 80 c2 01                     	addb	$1, %dl
  20dcec: 80 d2 00                     	adcb	$0, %dl
  20dcef: 88 14 06                     	movb	%dl, (%rsi,%rax)
  20dcf2: 64 c7 04 25 90 ff ff ff db 1b 00 00  	movl	$7131, %fs:-112 # imm = 0x1BDB
  20dcfe: 41 81 e2 ff ff 01 df         	andl	$3741450239, %r10d      # imm = 0xDF01FFFF
  20dd05: 41 81 ca 00 00 1a 20         	orl	$538574848, %r10d       # imm = 0x201A0000
  20dd0c: e9 8a fa ff ff               	jmp	0x20d79b <http_parser_execute+0x3cfb>
  20dd11: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20dd1a: 48 8b 3d d7 6f 00 00         	movq	28631(%rip), %rdi       # 0x214cf8 <__afl_area_ptr>
  20dd21: 48 35 25 9c 00 00            	xorq	$39973, %rax            # imm = 0x9C25
  20dd27: 8a 14 07                     	movb	(%rdi,%rax), %dl
  20dd2a: 80 c2 01                     	addb	$1, %dl
  20dd2d: 80 d2 00                     	adcb	$0, %dl
  20dd30: 88 14 07                     	movb	%dl, (%rdi,%rax)
  20dd33: 64 c7 04 25 90 ff ff ff 12 4e 00 00  	movl	$19986, %fs:-112 # imm = 0x4E12
  20dd3f: 41 8d ba 00 00 00 01         	leal	16777216(%r10), %edi
  20dd46: 81 e7 00 00 00 1f            	andl	$520093696, %edi        # imm = 0x1F000000
  20dd4c: 41 81 e2 ff ff ff e0         	andl	$3774873599, %r10d      # imm = 0xE0FFFFFF
  20dd53: 41 09 fa                     	orl	%edi, %r10d
  20dd56: 45 89 55 00                  	movl	%r10d, (%r13)
  20dd5a: 81 ff 00 00 00 07            	cmpl	$117440512, %edi        # imm = 0x7000000
  20dd60: 0f 87 00 fa ff ff            	ja	0x20d766 <http_parser_execute+0x3cc6>
  20dd66: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20dd6f: 4c 89 cb                     	movq	%r9, %rbx
  20dd72: 4c 8b 0d 7f 6f 00 00         	movq	28543(%rip), %r9        # 0x214cf8 <__afl_area_ptr>
  20dd79: 48 35 95 67 00 00            	xorq	$26517, %rax            # imm = 0x6795
  20dd7f: 41 8a 14 01                  	movb	(%r9,%rax), %dl
  20dd83: 80 c2 01                     	addb	$1, %dl
  20dd86: 80 d2 00                     	adcb	$0, %dl
  20dd89: 41 88 14 01                  	movb	%dl, (%r9,%rax)
  20dd8d: 49 89 d9                     	movq	%rbx, %r9
  20dd90: 64 c7 04 25 90 ff ff ff ca 33 00 00  	movl	$13258, %fs:-112 # imm = 0x33CA
  20dd9c: 89 f8                        	movl	%edi, %eax
  20dd9e: 48 c1 e8 18                  	shrq	$24, %rax
  20dda2: 40 3a b0 fb 25 20 00         	cmpb	2106875(%rax), %sil
  20dda9: 0f 85 b7 f9 ff ff            	jne	0x20d766 <http_parser_execute+0x3cc6>
  20ddaf: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20ddb8: 48 8b 35 39 6f 00 00         	movq	28473(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20ddbf: 48 35 3d 47 00 00            	xorq	$18237, %rax            # imm = 0x473D
  20ddc5: 8a 14 06                     	movb	(%rsi,%rax), %dl
  20ddc8: 80 c2 01                     	addb	$1, %dl
  20ddcb: 80 d2 00                     	adcb	$0, %dl
  20ddce: 88 14 06                     	movb	%dl, (%rsi,%rax)
  20ddd1: 64 c7 04 25 90 ff ff ff 9e 23 00 00  	movl	$9118, %fs:-112 # imm = 0x239E
  20dddd: 81 ff 00 00 00 06            	cmpl	$100663296, %edi        # imm = 0x6000000
  20dde3: 0f 85 b6 f9 ff ff            	jne	0x20d79f <http_parser_execute+0x3cff>
  20dde9: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20ddf2: 48 8b 35 ff 6e 00 00         	movq	28415(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20ddf9: 48 35 20 42 00 00            	xorq	$16928, %rax            # imm = 0x4220
  20ddff: 8a 14 06                     	movb	(%rsi,%rax), %dl
  20de02: 80 c2 01                     	addb	$1, %dl
  20de05: 80 d2 00                     	adcb	$0, %dl
  20de08: 88 14 06                     	movb	%dl, (%rsi,%rax)
  20de0b: 64 c7 04 25 90 ff ff ff 10 21 00 00  	movl	$8464, %fs:-112 # imm = 0x2110
  20de17: 41 81 e2 ff ff 01 ff         	andl	$4278321151, %r10d      # imm = 0xFF01FFFF
  20de1e: 41 81 ca 00 00 1c 00         	orl	$1835008, %r10d         # imm = 0x1C0000
  20de25: e9 71 f9 ff ff               	jmp	0x20d79b <http_parser_execute+0x3cfb>
  20de2a: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20de33: 48 8b 15 be 6e 00 00         	movq	28350(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20de3a: 48 35 bb a7 00 00            	xorq	$42939, %rax            # imm = 0xA7BB
  20de40: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20de43: 80 c3 01                     	addb	$1, %bl
  20de46: 80 d3 00                     	adcb	$0, %bl
  20de49: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20de4c: 64 c7 04 25 90 ff ff ff dd 53 00 00  	movl	$21469, %fs:-112 # imm = 0x53DD
  20de58: 48 8b 45 90                  	movq	-112(%rbp), %rax
  20de5c: 48 29 c8                     	subq	%rcx, %rax
  20de5f: 48 8b 55 c0                  	movq	-64(%rbp), %rdx
  20de63: 48 39 d0                     	cmpq	%rdx, %rax
  20de66: 48 0f 43 c2                  	cmovaeq	%rdx, %rax
  20de6a: 48 01 c8                     	addq	%rcx, %rax
  20de6d: 48 ff c1                     	incq	%rcx
  20de70: 48 89 ce                     	movq	%rcx, %rsi
  20de73: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  20de7c: 48 8b 3d 75 6e 00 00         	movq	28277(%rip), %rdi       # 0x214cf8 <__afl_area_ptr>
  20de83: 48 81 f2 43 dc 00 00         	xorq	$56387, %rdx            # imm = 0xDC43
  20de8a: 0f b6 1c 17                  	movzbl	(%rdi,%rdx), %ebx
  20de8e: 80 c3 01                     	addb	$1, %bl
  20de91: 80 d3 00                     	adcb	$0, %bl
  20de94: 48 89 f1                     	movq	%rsi, %rcx
  20de97: 88 1c 17                     	movb	%bl, (%rdi,%rdx)
  20de9a: 64 c7 04 25 90 ff ff ff 21 6e 00 00  	movl	$28193, %fs:-112 # imm = 0x6E21
  20dea6: 48 39 c6                     	cmpq	%rax, %rsi
  20dea9: 73 40                        	jae	0x20deeb <http_parser_execute+0x444b>
  20deab: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  20deb4: 48 8b 35 3d 6e 00 00         	movq	28221(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20debb: 48 81 f2 06 80 00 00         	xorq	$32774, %rdx            # imm = 0x8006
  20dec2: 0f b6 1c 16                  	movzbl	(%rsi,%rdx), %ebx
  20dec6: 80 c3 01                     	addb	$1, %bl
  20dec9: 80 d3 00                     	adcb	$0, %bl
  20decc: 88 1c 16                     	movb	%bl, (%rsi,%rdx)
  20decf: 64 c7 04 25 90 ff ff ff 03 40 00 00  	movl	$16387, %fs:-112 # imm = 0x4003
  20dedb: 0f b6 11                     	movzbl	(%rcx), %edx
  20dede: 48 8d 71 01                  	leaq	1(%rcx), %rsi
  20dee2: 80 ba 50 38 20 00 00         	cmpb	$0, 2111568(%rdx)
  20dee9: 75 88                        	jne	0x20de73 <http_parser_execute+0x43d3>
  20deeb: 48 ff c9                     	decq	%rcx
  20deee: e9 ac f8 ff ff               	jmp	0x20d79f <http_parser_execute+0x3cff>
  20def3: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20defc: 48 8b 3d f5 6d 00 00         	movq	28149(%rip), %rdi       # 0x214cf8 <__afl_area_ptr>
  20df03: 48 35 1a 9c 00 00            	xorq	$39962, %rax            # imm = 0x9C1A
  20df09: 8a 14 07                     	movb	(%rdi,%rax), %dl
  20df0c: 80 c2 01                     	addb	$1, %dl
  20df0f: 80 d2 00                     	adcb	$0, %dl
  20df12: 88 14 07                     	movb	%dl, (%rdi,%rax)
  20df15: 64 c7 04 25 90 ff ff ff 0d 4e 00 00  	movl	$19981, %fs:-112 # imm = 0x4E0D
  20df21: 41 8d 82 00 00 00 01         	leal	16777216(%r10), %eax
  20df28: 25 00 00 00 1f               	andl	$520093696, %eax        # imm = 0x1F000000
  20df2d: 41 81 e2 ff ff 01 e0         	andl	$3758227455, %r10d      # imm = 0xE001FFFF
  20df34: 31 d2                        	xorl	%edx, %edx
  20df36: 40 80 fe 6f                  	cmpb	$111, %sil
  20df3a: 0f 94 c2                     	sete	%dl
  20df3d: c1 e2 12                     	shll	$18, %edx
  20df40: 44 09 d2                     	orl	%r10d, %edx
  20df43: 09 c2                        	orl	%eax, %edx
  20df45: 41 89 55 00                  	movl	%edx, (%r13)
  20df49: e9 51 f8 ff ff               	jmp	0x20d79f <http_parser_execute+0x3cff>
  20df4e: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20df57: 48 8b 3d 9a 6d 00 00         	movq	28058(%rip), %rdi       # 0x214cf8 <__afl_area_ptr>
  20df5e: 48 35 f5 09 00 00            	xorq	$2549, %rax             # imm = 0x9F5
  20df64: 8a 14 07                     	movb	(%rdi,%rax), %dl
  20df67: 80 c2 01                     	addb	$1, %dl
  20df6a: 80 d2 00                     	adcb	$0, %dl
  20df6d: 88 14 07                     	movb	%dl, (%rdi,%rax)
  20df70: 64 c7 04 25 90 ff ff ff fa 04 00 00  	movl	$1274, %fs:-112 # imm = 0x4FA
  20df7c: 41 8d ba 00 00 00 01         	leal	16777216(%r10), %edi
  20df83: 81 e7 00 00 00 1f            	andl	$520093696, %edi        # imm = 0x1F000000
  20df89: 41 81 e2 ff ff ff e0         	andl	$3774873599, %r10d      # imm = 0xE0FFFFFF
  20df90: 41 09 fa                     	orl	%edi, %r10d
  20df93: 45 89 55 00                  	movl	%r10d, (%r13)
  20df97: 81 ff 00 00 00 0e            	cmpl	$234881024, %edi        # imm = 0xE000000
  20df9d: 0f 87 5d 01 00 00            	ja	0x20e100 <http_parser_execute+0x4660>
  20dfa3: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20dfac: 4c 89 cb                     	movq	%r9, %rbx
  20dfaf: 4c 8b 0d 42 6d 00 00         	movq	27970(%rip), %r9        # 0x214cf8 <__afl_area_ptr>
  20dfb6: 48 35 14 30 00 00            	xorq	$12308, %rax            # imm = 0x3014
  20dfbc: 41 8a 14 01                  	movb	(%r9,%rax), %dl
  20dfc0: 80 c2 01                     	addb	$1, %dl
  20dfc3: 80 d2 00                     	adcb	$0, %dl
  20dfc6: 41 88 14 01                  	movb	%dl, (%r9,%rax)
  20dfca: 49 89 d9                     	movq	%rbx, %r9
  20dfcd: 64 c7 04 25 90 ff ff ff 0a 18 00 00  	movl	$6154, %fs:-112 # imm = 0x180A
  20dfd9: 89 f8                        	movl	%edi, %eax
  20dfdb: 48 c1 e8 18                  	shrq	$24, %rax
  20dfdf: 40 3a b0 cd 22 20 00         	cmpb	2106061(%rax), %sil
  20dfe6: 0f 85 14 01 00 00            	jne	0x20e100 <http_parser_execute+0x4660>
  20dfec: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20dff5: 48 8b 35 fc 6c 00 00         	movq	27900(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20dffc: 48 35 fb 12 00 00            	xorq	$4859, %rax             # imm = 0x12FB
  20e002: 8a 14 06                     	movb	(%rsi,%rax), %dl
  20e005: 80 c2 01                     	addb	$1, %dl
  20e008: 80 d2 00                     	adcb	$0, %dl
  20e00b: 88 14 06                     	movb	%dl, (%rsi,%rax)
  20e00e: 64 c7 04 25 90 ff ff ff 7d 09 00 00  	movl	$2429, %fs:-112 # imm = 0x97D
  20e01a: 81 ff 00 00 00 0d            	cmpl	$218103808, %edi        # imm = 0xD000000
  20e020: 0f 85 79 f7 ff ff            	jne	0x20d79f <http_parser_execute+0x3cff>
  20e026: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20e02f: 48 8b 35 c2 6c 00 00         	movq	27842(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20e036: 48 35 8e b6 00 00            	xorq	$46734, %rax            # imm = 0xB68E
  20e03c: 8a 14 06                     	movb	(%rsi,%rax), %dl
  20e03f: 80 c2 01                     	addb	$1, %dl
  20e042: 80 d2 00                     	adcb	$0, %dl
  20e045: 88 14 06                     	movb	%dl, (%rsi,%rax)
  20e048: 64 c7 04 25 90 ff ff ff 47 5b 00 00  	movl	$23367, %fs:-112 # imm = 0x5B47
  20e054: 41 81 e2 ff ff 01 ff         	andl	$4278321151, %r10d      # imm = 0xFF01FFFF
  20e05b: 41 81 ca 00 00 14 00         	orl	$1310720, %r10d         # imm = 0x140000
  20e062: e9 34 f7 ff ff               	jmp	0x20d79b <http_parser_execute+0x3cfb>
  20e067: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20e070: 48 8b 35 81 6c 00 00         	movq	27777(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20e077: 48 35 30 16 00 00            	xorq	$5680, %rax             # imm = 0x1630
  20e07d: 8a 14 06                     	movb	(%rsi,%rax), %dl
  20e080: 80 c2 01                     	addb	$1, %dl
  20e083: 80 d2 00                     	adcb	$0, %dl
  20e086: 88 14 06                     	movb	%dl, (%rsi,%rax)
  20e089: 64 c7 04 25 90 ff ff ff 18 0b 00 00  	movl	$2840, %fs:-112 # imm = 0xB18
  20e095: e9 fa f6 ff ff               	jmp	0x20d794 <http_parser_execute+0x3cf4>
  20e09a: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20e0a3: 48 8b 35 4e 6c 00 00         	movq	27726(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20e0aa: 48 35 42 2d 00 00            	xorq	$11586, %rax            # imm = 0x2D42
  20e0b0: 8a 14 06                     	movb	(%rsi,%rax), %dl
  20e0b3: 80 c2 01                     	addb	$1, %dl
  20e0b6: 80 d2 00                     	adcb	$0, %dl
  20e0b9: 88 14 06                     	movb	%dl, (%rsi,%rax)
  20e0bc: 64 c7 04 25 90 ff ff ff a1 16 00 00  	movl	$5793, %fs:-112 # imm = 0x16A1
  20e0c8: e9 c7 f6 ff ff               	jmp	0x20d794 <http_parser_execute+0x3cf4>
  20e0cd: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20e0d6: 48 8b 35 1b 6c 00 00         	movq	27675(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20e0dd: 48 35 9a 36 00 00            	xorq	$13978, %rax            # imm = 0x369A
  20e0e3: 8a 14 06                     	movb	(%rsi,%rax), %dl
  20e0e6: 80 c2 01                     	addb	$1, %dl
  20e0e9: 80 d2 00                     	adcb	$0, %dl
  20e0ec: 88 14 06                     	movb	%dl, (%rsi,%rax)
  20e0ef: 64 c7 04 25 90 ff ff ff 4d 1b 00 00  	movl	$6989, %fs:-112 # imm = 0x1B4D
  20e0fb: e9 94 f6 ff ff               	jmp	0x20d794 <http_parser_execute+0x3cf4>
  20e100: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20e109: 48 8b 35 e8 6b 00 00         	movq	27624(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20e110: 48 35 d5 2d 00 00            	xorq	$11733, %rax            # imm = 0x2DD5
  20e116: 8a 14 06                     	movb	(%rsi,%rax), %dl
  20e119: 80 c2 01                     	addb	$1, %dl
  20e11c: 80 d2 00                     	adcb	$0, %dl
  20e11f: 88 14 06                     	movb	%dl, (%rsi,%rax)
  20e122: 64 c7 04 25 90 ff ff ff ea 16 00 00  	movl	$5866, %fs:-112 # imm = 0x16EA
  20e12e: e9 61 f6 ff ff               	jmp	0x20d794 <http_parser_execute+0x3cf4>
  20e133: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20e13c: 48 8b 35 b5 6b 00 00         	movq	27573(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20e143: 48 35 41 a8 00 00            	xorq	$43073, %rax            # imm = 0xA841
  20e149: 8a 14 06                     	movb	(%rsi,%rax), %dl
  20e14c: 80 c2 01                     	addb	$1, %dl
  20e14f: 80 d2 00                     	adcb	$0, %dl
  20e152: 88 14 06                     	movb	%dl, (%rsi,%rax)
  20e155: 64 c7 04 25 90 ff ff ff 20 54 00 00  	movl	$21536, %fs:-112 # imm = 0x5420
  20e161: 41 81 e2 ff ff 01 ff         	andl	$4278321151, %r10d      # imm = 0xFF01FFFF
  20e168: 41 81 ca 00 00 0c 00         	orl	$786432, %r10d          # imm = 0xC0000
  20e16f: e9 27 f6 ff ff               	jmp	0x20d79b <http_parser_execute+0x3cfb>
  20e174: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20e17d: 48 8b 35 74 6b 00 00         	movq	27508(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20e184: 48 35 87 e3 00 00            	xorq	$58247, %rax            # imm = 0xE387
  20e18a: 8a 14 06                     	movb	(%rsi,%rax), %dl
  20e18d: 80 c2 01                     	addb	$1, %dl
  20e190: 80 d2 00                     	adcb	$0, %dl
  20e193: 88 14 06                     	movb	%dl, (%rsi,%rax)
  20e196: 64 c7 04 25 90 ff ff ff c3 71 00 00  	movl	$29123, %fs:-112 # imm = 0x71C3
  20e1a2: e9 ed f5 ff ff               	jmp	0x20d794 <http_parser_execute+0x3cf4>
  20e1a7: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20e1b0: 48 8b 15 41 6b 00 00         	movq	27457(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20e1b7: 48 35 b3 46 00 00            	xorq	$18099, %rax            # imm = 0x46B3
  20e1bd: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20e1c0: 80 c3 01                     	addb	$1, %bl
  20e1c3: 80 d3 00                     	adcb	$0, %bl
  20e1c6: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20e1c9: 64 c7 04 25 90 ff ff ff 59 23 00 00  	movl	$9049, %fs:-112 # imm = 0x2359
  20e1d5: b8 0d 00 00 00               	movl	$13, %eax
  20e1da: 80 f9 20                     	cmpb	$32, %cl
  20e1dd: 0f 84 bd 00 00 00            	je	0x20e2a0 <http_parser_execute+0x4800>
  20e1e3: e9 9c 25 00 00               	jmp	0x210784 <http_parser_execute+0x6ce4>
  20e1e8: 80 f9 45                     	cmpb	$69, %cl
  20e1eb: 0f 85 ac 2e 00 00            	jne	0x21109d <http_parser_execute+0x75fd>
  20e1f1: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20e1fa: 48 8b 0d f7 6a 00 00         	movq	27383(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20e201: 48 35 83 36 00 00            	xorq	$13955, %rax            # imm = 0x3683
  20e207: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20e20a: 80 c2 01                     	addb	$1, %dl
  20e20d: 80 d2 00                     	adcb	$0, %dl
  20e210: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20e213: 64 c7 04 25 90 ff ff ff 41 1b 00 00  	movl	$6977, %fs:-112 # imm = 0x1B41
  20e21f: 44 8b 75 cc                  	movl	-52(%rbp), %r14d
  20e223: 41 81 e6 ff ff 00 ff         	andl	$4278255615, %r14d      # imm = 0xFF00FFFF
  20e22a: 41 81 ce 00 00 02 00         	orl	$131072, %r14d          # imm = 0x20000
  20e231: 45 89 75 14                  	movl	%r14d, 20(%r13)
  20e235: b8 fc ff ff e0               	movl	$3774873596, %eax       # imm = 0xE0FFFFFC
  20e23a: 41 23 45 00                  	andl	(%r13), %eax
  20e23e: 0d 00 00 00 02               	orl	$33554432, %eax         # imm = 0x2000000
  20e243: 41 89 45 00                  	movl	%eax, (%r13)
  20e247: b8 13 00 00 00               	movl	$19, %eax
  20e24c: 44 89 f1                     	movl	%r14d, %ecx
  20e24f: 48 89 4d a8                  	movq	%rcx, -88(%rbp)
  20e253: 44 89 75 c8                  	movl	%r14d, -56(%rbp)
  20e257: 44 89 75 cc                  	movl	%r14d, -52(%rbp)
  20e25b: eb 43                        	jmp	0x20e2a0 <http_parser_execute+0x4800>
  20e25d: ba 10 00 00 00               	movl	$16, %edx
  20e262: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20e26b: 48 8b 0d 86 6a 00 00         	movq	27270(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20e272: 48 35 09 ef 00 00            	xorq	$61193, %rax            # imm = 0xEF09
  20e278: 8a 1c 01                     	movb	(%rcx,%rax), %bl
  20e27b: 80 c3 01                     	addb	$1, %bl
  20e27e: 80 d3 00                     	adcb	$0, %bl
  20e281: 88 1c 01                     	movb	%bl, (%rcx,%rax)
  20e284: 64 c7 04 25 90 ff ff ff 84 77 00 00  	movl	$30596, %fs:-112 # imm = 0x7784
  20e290: 89 d0                        	movl	%edx, %eax
  20e292: 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00    	nopw	%cs:(%rax,%rax)
  20e2a0: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20e2a9: 48 8b 15 48 6a 00 00         	movq	27208(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20e2b0: 48 81 f1 25 22 00 00         	xorq	$8741, %rcx             # imm = 0x2225
  20e2b7: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20e2ba: 80 c3 01                     	addb	$1, %bl
  20e2bd: 80 d3 00                     	adcb	$0, %bl
  20e2c0: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20e2c3: 64 c7 04 25 90 ff ff ff 12 11 00 00  	movl	$4370, %fs:-112 # imm = 0x1112
  20e2cf: 49 ff c4                     	incq	%r12
  20e2d2: 4c 3b 65 90                  	cmpq	-112(%rbp), %r12
  20e2d6: 0f 85 8d b9 ff ff            	jne	0x209c69 <http_parser_execute+0x1c9>
  20e2dc: e9 9f 16 00 00               	jmp	0x20f980 <http_parser_execute+0x5ee0>
  20e2e1: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20e2ea: 48 8b 15 07 6a 00 00         	movq	27143(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20e2f1: 48 81 f1 5f 4a 00 00         	xorq	$19039, %rcx            # imm = 0x4A5F
  20e2f8: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20e2fb: 80 c3 01                     	addb	$1, %bl
  20e2fe: 80 d3 00                     	adcb	$0, %bl
  20e301: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20e304: 64 c7 04 25 90 ff ff ff 2f 25 00 00  	movl	$9519, %fs:-112 # imm = 0x252F
  20e310: 44 89 f1                     	movl	%r14d, %ecx
  20e313: 81 e1 00 00 ff 00            	andl	$16711680, %ecx         # imm = 0xFF0000
  20e319: 81 f9 00 00 05 00            	cmpl	$327680, %ecx           # imm = 0x50000
  20e31f: 0f 84 12 22 00 00            	je	0x210537 <http_parser_execute+0x6a97>
  20e325: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20e32e: 48 8b 15 c3 69 00 00         	movq	27075(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20e335: 48 81 f1 ec 76 00 00         	xorq	$30444, %rcx            # imm = 0x76EC
  20e33c: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20e33f: 80 c3 01                     	addb	$1, %bl
  20e342: 80 d3 00                     	adcb	$0, %bl
  20e345: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20e348: 64 c7 04 25 90 ff ff ff 76 3b 00 00  	movl	$15222, %fs:-112 # imm = 0x3B76
  20e354: f7 c7 00 01 00 00            	testl	$256, %edi              # imm = 0x100
  20e35a: 0f 94 c1                     	sete	%cl
  20e35d: 84 c1                        	testb	%al, %cl
  20e35f: 0f 84 d2 21 00 00            	je	0x210537 <http_parser_execute+0x6a97>
  20e365: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20e36e: 48 8b 0d 83 69 00 00         	movq	27011(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20e375: 48 35 c9 04 00 00            	xorq	$1225, %rax             # imm = 0x4C9
  20e37b: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20e37e: 80 c2 01                     	addb	$1, %dl
  20e381: 80 d2 00                     	adcb	$0, %dl
  20e384: 45 31 d2                     	xorl	%r10d, %r10d
  20e387: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20e38a: 64 c7 04 25 90 ff ff ff 64 02 00 00  	movl	$612, %fs:-112  # imm = 0x264
  20e396: b8 35 00 00 00               	movl	$53, %eax
  20e39b: 40 f6 c7 04                  	testb	$4, %dil
  20e39f: 0f 85 fb fe ff ff            	jne	0x20e2a0 <http_parser_execute+0x4800>
  20e3a5: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20e3ae: 48 8b 0d 43 69 00 00         	movq	26947(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20e3b5: 48 35 f8 b8 00 00            	xorq	$47352, %rax            # imm = 0xB8F8
  20e3bb: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20e3be: 80 c2 01                     	addb	$1, %dl
  20e3c1: 80 d2 00                     	adcb	$0, %dl
  20e3c4: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20e3c7: 64 c7 04 25 90 ff ff ff 7c 5c 00 00  	movl	$23676, %fs:-112 # imm = 0x5C7C
  20e3d3: f7 c7 00 00 00 20            	testl	$536870912, %edi        # imm = 0x20000000
  20e3d9: 0f 85 75 05 00 00            	jne	0x20e954 <http_parser_execute+0x4eb4>
  20e3df: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20e3e8: 48 8b 0d 09 69 00 00         	movq	26889(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20e3ef: 48 35 57 3c 00 00            	xorq	$15447, %rax            # imm = 0x3C57
  20e3f5: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20e3f8: 80 c2 01                     	addb	$1, %dl
  20e3fb: 80 d2 00                     	adcb	$0, %dl
  20e3fe: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20e401: 64 c7 04 25 90 ff ff ff 2b 1e 00 00  	movl	$7723, %fs:-112 # imm = 0x1E2B
  20e40d: 49 8b 4d 08                  	movq	8(%r13), %rcx
  20e411: 48 83 f9 ff                  	cmpq	$-1, %rcx
  20e415: 0f 84 17 09 00 00            	je	0x20ed32 <http_parser_execute+0x5292>
  20e41b: b8 3e 00 00 00               	movl	$62, %eax
  20e420: 48 85 c9                     	testq	%rcx, %rcx
  20e423: 0f 85 77 fe ff ff            	jne	0x20e2a0 <http_parser_execute+0x4800>
  20e429: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20e432: 48 8b 0d bf 68 00 00         	movq	26815(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20e439: 48 35 86 aa 00 00            	xorq	$43654, %rax            # imm = 0xAA86
  20e43f: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20e442: 80 c2 01                     	addb	$1, %dl
  20e445: 80 d2 00                     	adcb	$0, %dl
  20e448: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20e44b: 64 c7 04 25 90 ff ff ff 43 55 00 00  	movl	$21827, %fs:-112 # imm = 0x5543
  20e457: 40 f6 c7 03                  	testb	$3, %dil
  20e45b: b9 12 00 00 00               	movl	$18, %ecx
  20e460: b8 04 00 00 00               	movl	$4, %eax
  20e465: 0f 44 c1                     	cmovel	%ecx, %eax
  20e468: 41 f7 c6 00 00 00 7f         	testl	$2130706432, %r14d      # imm = 0x7F000000
  20e46f: 0f 85 c5 38 00 00            	jne	0x211d3a <http_parser_execute+0x829a>
  20e475: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20e47e: 48 8b 15 73 68 00 00         	movq	26739(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20e485: 48 81 f1 7f da 00 00         	xorq	$55935, %rcx            # imm = 0xDA7F
  20e48c: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20e48f: 80 c3 01                     	addb	$1, %bl
  20e492: 80 d3 00                     	adcb	$0, %bl
  20e495: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20e498: 64 c7 04 25 90 ff ff ff 3f 6d 00 00  	movl	$27967, %fs:-112 # imm = 0x6D3F
  20e4a4: 48 8b 4d b8                  	movq	-72(%rbp), %rcx
  20e4a8: 48 83 79 38 00               	cmpq	$0, 56(%rcx)
  20e4ad: 0f 85 14 1f 00 00            	jne	0x2103c7 <http_parser_execute+0x6927>
  20e4b3: e9 e8 fd ff ff               	jmp	0x20e2a0 <http_parser_execute+0x4800>
  20e4b8: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20e4c1: 48 8b 0d 30 68 00 00         	movq	26672(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20e4c8: 48 35 89 23 00 00            	xorq	$9097, %rax             # imm = 0x2389
  20e4ce: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20e4d1: 80 c2 01                     	addb	$1, %dl
  20e4d4: 80 d2 00                     	adcb	$0, %dl
  20e4d7: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20e4da: 64 c7 04 25 90 ff ff ff c4 11 00 00  	movl	$4548, %fs:-112 # imm = 0x11C4
  20e4e6: f7 45 c8 00 00 00 7f         	testl	$2130706432, -56(%rbp)  # imm = 0x7F000000
  20e4ed: 0f 85 9d 36 00 00            	jne	0x211b90 <http_parser_execute+0x80f0>
  20e4f3: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20e4fc: 48 8b 0d f5 67 00 00         	movq	26613(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20e503: 48 35 fb bb 00 00            	xorq	$48123, %rax            # imm = 0xBBFB
  20e509: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20e50c: 80 c2 01                     	addb	$1, %dl
  20e50f: 80 d2 00                     	adcb	$0, %dl
  20e512: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20e515: 64 c7 04 25 90 ff ff ff fd 5d 00 00  	movl	$24061, %fs:-112 # imm = 0x5DFD
  20e521: b8 2c 00 00 00               	movl	$44, %eax
  20e526: 48 83 bd 70 ff ff ff 00      	cmpq	$0, -144(%rbp)
  20e52e: 0f 85 74 06 00 00            	jne	0x20eba8 <http_parser_execute+0x5108>
  20e534: 31 c9                        	xorl	%ecx, %ecx
  20e536: 48 89 8d 70 ff ff ff         	movq	%rcx, -144(%rbp)
  20e53d: 44 8b 75 c8                  	movl	-56(%rbp), %r14d
  20e541: e9 5a fd ff ff               	jmp	0x20e2a0 <http_parser_execute+0x4800>
  20e546: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  20e54f: 48 8b 35 a2 67 00 00         	movq	26530(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20e556: 48 81 f2 9f 93 00 00         	xorq	$37791, %rdx            # imm = 0x939F
  20e55d: 8a 1c 16                     	movb	(%rsi,%rdx), %bl
  20e560: 80 c3 01                     	addb	$1, %bl
  20e563: 80 d3 00                     	adcb	$0, %bl
  20e566: 88 1c 16                     	movb	%bl, (%rsi,%rdx)
  20e569: 64 c7 04 25 90 ff ff ff cf 49 00 00  	movl	$18895, %fs:-112 # imm = 0x49CF
  20e575: 48 8b 55 b8                  	movq	-72(%rbp), %rdx
  20e579: 48 83 7a 30 00               	cmpq	$0, 48(%rdx)
  20e57e: 0f 85 ed 19 00 00            	jne	0x20ff71 <http_parser_execute+0x64d1>
  20e584: e9 67 e5 ff ff               	jmp	0x20caf0 <http_parser_execute+0x3050>
  20e589: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20e592: 48 8b 0d 5f 67 00 00         	movq	26463(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20e599: 48 35 28 de 00 00            	xorq	$56872, %rax            # imm = 0xDE28
  20e59f: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20e5a2: 80 c2 01                     	addb	$1, %dl
  20e5a5: 80 d2 00                     	adcb	$0, %dl
  20e5a8: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20e5ab: 64 c7 04 25 90 ff ff ff 14 6f 00 00  	movl	$28436, %fs:-112 # imm = 0x6F14
  20e5b7: 44 89 f1                     	movl	%r14d, %ecx
  20e5ba: 81 e1 00 00 ff 00            	andl	$16711680, %ecx         # imm = 0xFF0000
  20e5c0: b8 25 00 00 00               	movl	$37, %eax
  20e5c5: 81 f9 00 00 21 00            	cmpl	$2162688, %ecx          # imm = 0x210000
  20e5cb: 0f 84 cf fc ff ff            	je	0x20e2a0 <http_parser_execute+0x4800>
  20e5d1: e9 36 20 00 00               	jmp	0x21060c <http_parser_execute+0x6b6c>
  20e5d6: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20e5df: 48 8b 15 12 67 00 00         	movq	26386(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20e5e6: 48 35 d3 bf 00 00            	xorq	$49107, %rax            # imm = 0xBFD3
  20e5ec: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20e5ef: 80 c3 01                     	addb	$1, %bl
  20e5f2: 80 d3 00                     	adcb	$0, %bl
  20e5f5: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20e5f8: 64 c7 04 25 90 ff ff ff e9 5f 00 00  	movl	$24553, %fs:-112 # imm = 0x5FE9
  20e604: 89 c8                        	movl	%ecx, %eax
  20e606: 44 29 e0                     	subl	%r12d, %eax
  20e609: 41 01 c2                     	addl	%eax, %r10d
  20e60c: 44 3b 55 c0                  	cmpl	-64(%rbp), %r10d
  20e610: 0f 87 6f 2b 00 00            	ja	0x211185 <http_parser_execute+0x76e5>
  20e616: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20e61f: 48 8b 15 d2 66 00 00         	movq	26322(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20e626: 48 35 f0 f2 00 00            	xorq	$62192, %rax            # imm = 0xF2F0
  20e62c: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20e62f: 80 c3 01                     	addb	$1, %bl
  20e632: 80 d3 00                     	adcb	$0, %bl
  20e635: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20e638: 64 c7 04 25 90 ff ff ff 78 79 00 00  	movl	$31096, %fs:-112 # imm = 0x7978
  20e644: 40 80 ff 3a                  	cmpb	$58, %dil
  20e648: 0f 85 25 22 00 00            	jne	0x210873 <http_parser_execute+0x6dd3>
  20e64e: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20e657: 48 8b 15 9a 66 00 00         	movq	26266(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20e65e: 48 35 97 2a 00 00            	xorq	$10903, %rax            # imm = 0x2A97
  20e664: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20e667: 80 c3 01                     	addb	$1, %bl
  20e66a: 80 d3 00                     	adcb	$0, %bl
  20e66d: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20e670: 64 c7 04 25 90 ff ff ff 4b 15 00 00  	movl	$5451, %fs:-112 # imm = 0x154B
  20e67c: 41 f7 c6 00 00 00 7f         	testl	$2130706432, %r14d      # imm = 0x7F000000
  20e683: 0f 85 23 36 00 00            	jne	0x211cac <http_parser_execute+0x820c>
  20e689: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20e692: 48 8b 15 5f 66 00 00         	movq	26207(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20e699: 48 35 5e ef 00 00            	xorq	$61278, %rax            # imm = 0xEF5E
  20e69f: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20e6a2: 80 c3 01                     	addb	$1, %bl
  20e6a5: 80 d3 00                     	adcb	$0, %bl
  20e6a8: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20e6ab: 64 c7 04 25 90 ff ff ff af 77 00 00  	movl	$30639, %fs:-112 # imm = 0x77AF
  20e6b7: b8 2e 00 00 00               	movl	$46, %eax
  20e6bc: 48 83 bd 60 ff ff ff 00      	cmpq	$0, -160(%rbp)
  20e6c4: 0f 85 8a 05 00 00            	jne	0x20ec54 <http_parser_execute+0x51b4>
  20e6ca: 31 d2                        	xorl	%edx, %edx
  20e6cc: 48 89 95 60 ff ff ff         	movq	%rdx, -160(%rbp)
  20e6d3: 49 89 cc                     	movq	%rcx, %r12
  20e6d6: e9 c5 fb ff ff               	jmp	0x20e2a0 <http_parser_execute+0x4800>
  20e6db: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20e6e4: 48 8b 0d 0d 66 00 00         	movq	26125(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20e6eb: 48 35 21 3e 00 00            	xorq	$15905, %rax            # imm = 0x3E21
  20e6f1: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20e6f4: 80 c2 01                     	addb	$1, %dl
  20e6f7: 80 d2 00                     	adcb	$0, %dl
  20e6fa: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20e6fd: 64 c7 04 25 90 ff ff ff 10 1f 00 00  	movl	$7952, %fs:-112 # imm = 0x1F10
  20e709: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20e712: 48 8b 0d df 65 00 00         	movq	26079(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20e719: 48 35 56 61 00 00            	xorq	$24918, %rax            # imm = 0x6156
  20e71f: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20e722: 80 c2 01                     	addb	$1, %dl
  20e725: 80 d2 00                     	adcb	$0, %dl
  20e728: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20e72b: 64 c7 04 25 90 ff ff ff ab 30 00 00  	movl	$12459, %fs:-112 # imm = 0x30AB
  20e737: 48 8b b5 50 ff ff ff         	movq	-176(%rbp), %rsi
  20e73e: 89 f0                        	movl	%esi, %eax
  20e740: 44 29 e0                     	subl	%r12d, %eax
  20e743: 41 01 c2                     	addl	%eax, %r10d
  20e746: b8 2d 00 00 00               	movl	$45, %eax
  20e74b: 44 3b 55 c0                  	cmpl	-64(%rbp), %r10d
  20e74f: 0f 87 f5 28 00 00            	ja	0x21104a <http_parser_execute+0x75aa>
  20e755: 49 89 f4                     	movq	%rsi, %r12
  20e758: e9 43 fb ff ff               	jmp	0x20e2a0 <http_parser_execute+0x4800>
  20e75d: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20e766: 48 8b 0d 8b 65 00 00         	movq	25995(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20e76d: 48 35 2e a8 00 00            	xorq	$43054, %rax            # imm = 0xA82E
  20e773: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20e776: 80 c2 01                     	addb	$1, %dl
  20e779: 80 d2 00                     	adcb	$0, %dl
  20e77c: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20e77f: 64 c7 04 25 90 ff ff ff 17 54 00 00  	movl	$21527, %fs:-112 # imm = 0x5417
  20e78b: b8 2f 00 00 00               	movl	$47, %eax
  20e790: e9 0b fb ff ff               	jmp	0x20e2a0 <http_parser_execute+0x4800>
  20e795: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20e79e: 48 8b 15 53 65 00 00         	movq	25939(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20e7a5: 48 81 f1 94 55 00 00         	xorq	$21908, %rcx            # imm = 0x5594
  20e7ac: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20e7af: 80 c3 01                     	addb	$1, %bl
  20e7b2: 80 d3 00                     	adcb	$0, %bl
  20e7b5: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20e7b8: 64 c7 04 25 90 ff ff ff ca 2a 00 00  	movl	$10954, %fs:-112 # imm = 0x2ACA
  20e7c4: 25 ff ff 01 e0               	andl	$3758227455, %eax       # imm = 0xE001FFFF
  20e7c9: e9 af 00 00 00               	jmp	0x20e87d <http_parser_execute+0x4ddd>
  20e7ce: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20e7d7: 48 8b 15 1a 65 00 00         	movq	25882(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20e7de: 48 81 f1 b7 db 00 00         	xorq	$56247, %rcx            # imm = 0xDBB7
  20e7e5: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20e7e8: 80 c3 01                     	addb	$1, %bl
  20e7eb: 80 d3 00                     	adcb	$0, %bl
  20e7ee: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20e7f1: 64 c7 04 25 90 ff ff ff db 6d 00 00  	movl	$28123, %fs:-112 # imm = 0x6DDB
  20e7fd: 25 ff ff 01 e0               	andl	$3758227455, %eax       # imm = 0xE001FFFF
  20e802: 0d 00 00 0a 00               	orl	$655360, %eax           # imm = 0xA0000
  20e807: eb 74                        	jmp	0x20e87d <http_parser_execute+0x4ddd>
  20e809: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20e812: 48 8b 15 df 64 00 00         	movq	25823(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20e819: 48 81 f1 02 d5 00 00         	xorq	$54530, %rcx            # imm = 0xD502
  20e820: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20e823: 80 c3 01                     	addb	$1, %bl
  20e826: 80 d3 00                     	adcb	$0, %bl
  20e829: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20e82c: 64 c7 04 25 90 ff ff ff 81 6a 00 00  	movl	$27265, %fs:-112 # imm = 0x6A81
  20e838: 25 ff ff 01 e0               	andl	$3758227455, %eax       # imm = 0xE001FFFF
  20e83d: 0d 00 00 0e 00               	orl	$917504, %eax           # imm = 0xE0000
  20e842: eb 39                        	jmp	0x20e87d <http_parser_execute+0x4ddd>
  20e844: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20e84d: 48 8b 15 a4 64 00 00         	movq	25764(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20e854: 48 81 f1 70 27 00 00         	xorq	$10096, %rcx            # imm = 0x2770
  20e85b: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20e85e: 80 c3 01                     	addb	$1, %bl
  20e861: 80 d3 00                     	adcb	$0, %bl
  20e864: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20e867: 64 c7 04 25 90 ff ff ff b8 13 00 00  	movl	$5048, %fs:-112 # imm = 0x13B8
  20e873: 25 ff ff 01 e0               	andl	$3758227455, %eax       # imm = 0xE001FFFF
  20e878: 0d 00 00 10 00               	orl	$1048576, %eax          # imm = 0x100000
  20e87d: 41 89 45 00                  	movl	%eax, (%r13)
  20e881: b8 2d 00 00 00               	movl	$45, %eax
  20e886: e9 15 fa ff ff               	jmp	0x20e2a0 <http_parser_execute+0x4800>
  20e88b: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20e894: 48 8b 15 5d 64 00 00         	movq	25693(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20e89b: 48 35 80 2c 00 00            	xorq	$11392, %rax            # imm = 0x2C80
  20e8a1: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20e8a4: 80 c3 01                     	addb	$1, %bl
  20e8a7: 80 d3 00                     	adcb	$0, %bl
  20e8aa: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20e8ad: 64 c7 04 25 90 ff ff ff 40 16 00 00  	movl	$5696, %fs:-112 # imm = 0x1640
  20e8b9: b8 37 00 00 00               	movl	$55, %eax
  20e8be: 80 f9 20                     	cmpb	$32, %cl
  20e8c1: 0f 84 d9 f9 ff ff            	je	0x20e2a0 <http_parser_execute+0x4800>
  20e8c7: 80 f9 3b                     	cmpb	$59, %cl
  20e8ca: 0f 84 d0 f9 ff ff            	je	0x20e2a0 <http_parser_execute+0x4800>
  20e8d0: e9 da 21 00 00               	jmp	0x210aaf <http_parser_execute+0x700f>
  20e8d5: b8 14 00 00 00               	movl	$20, %eax
  20e8da: e9 5b 0d 00 00               	jmp	0x20f63a <http_parser_execute+0x5b9a>
  20e8df: 81 fe 47 01 05 00            	cmpl	$328007, %esi           # imm = 0x50147
  20e8e5: 0f 8e ac 03 00 00            	jle	0x20ec97 <http_parser_execute+0x51f7>
  20e8eb: 81 fe 48 01 09 00            	cmpl	$590152, %esi           # imm = 0x90148
  20e8f1: 0f 8e ec 04 00 00            	jle	0x20ede3 <http_parser_execute+0x5343>
  20e8f7: 81 fe 49 01 09 00            	cmpl	$590153, %esi           # imm = 0x90149
  20e8fd: 0f 84 2b 0b 00 00            	je	0x20f42e <http_parser_execute+0x598e>
  20e903: 81 fe 2d 01 0a 00            	cmpl	$655661, %esi           # imm = 0xA012D
  20e909: 0f 84 58 0b 00 00            	je	0x20f467 <http_parser_execute+0x59c7>
  20e90f: 81 fe 45 01 0a 00            	cmpl	$655685, %esi           # imm = 0xA0145
  20e915: 0f 85 04 23 00 00            	jne	0x210c1f <http_parser_execute+0x717f>
  20e91b: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20e924: 48 8b 15 cd 63 00 00         	movq	25549(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20e92b: 48 81 f1 a7 05 00 00         	xorq	$1447, %rcx             # imm = 0x5A7
  20e932: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20e935: 80 c3 01                     	addb	$1, %bl
  20e938: 80 d3 00                     	adcb	$0, %bl
  20e93b: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20e93e: 64 c7 04 25 90 ff ff ff d3 02 00 00  	movl	$723, %fs:-112  # imm = 0x2D3
  20e94a: b9 00 00 17 00               	movl	$1507328, %ecx          # imm = 0x170000
  20e94f: e9 97 0c 00 00               	jmp	0x20f5eb <http_parser_execute+0x5b4b>
  20e954: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20e95d: 48 8b 0d 94 63 00 00         	movq	25492(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20e964: 48 35 af be 00 00            	xorq	$48815, %rax            # imm = 0xBEAF
  20e96a: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20e96d: 80 c2 01                     	addb	$1, %dl
  20e970: 80 d2 00                     	adcb	$0, %dl
  20e973: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20e976: 64 c7 04 25 90 ff ff ff 57 5f 00 00  	movl	$24407, %fs:-112 # imm = 0x5F57
  20e982: b8 3f 00 00 00               	movl	$63, %eax
  20e987: 40 f6 c7 03                  	testb	$3, %dil
  20e98b: 0f 85 0f f9 ff ff            	jne	0x20e2a0 <http_parser_execute+0x4800>
  20e991: 83 7d 8c 00                  	cmpl	$0, -116(%rbp)
  20e995: 0f 88 05 f9 ff ff            	js	0x20e2a0 <http_parser_execute+0x4800>
  20e99b: e9 08 20 00 00               	jmp	0x2109a8 <http_parser_execute+0x6f08>
  20e9a0: 64 48 63 34 25 90 ff ff ff   	movslq	%fs:-112, %rsi
  20e9a9: 48 8b 3d 48 63 00 00         	movq	25416(%rip), %rdi       # 0x214cf8 <__afl_area_ptr>
  20e9b0: 48 81 f6 9f 94 00 00         	xorq	$38047, %rsi            # imm = 0x949F
  20e9b7: 8a 1c 37                     	movb	(%rdi,%rsi), %bl
  20e9ba: 80 c3 01                     	addb	$1, %bl
  20e9bd: 80 d3 00                     	adcb	$0, %bl
  20e9c0: 88 1c 37                     	movb	%bl, (%rdi,%rsi)
  20e9c3: 64 c7 04 25 90 ff ff ff 4f 4a 00 00  	movl	$19023, %fs:-112 # imm = 0x4A4F
  20e9cf: 8d 71 c6                     	leal	-58(%rcx), %esi
  20e9d2: 40 80 fe f5                  	cmpb	$-11, %sil
  20e9d6: 0f 86 04 28 00 00            	jbe	0x2111e0 <http_parser_execute+0x7740>
  20e9dc: 64 48 63 34 25 90 ff ff ff   	movslq	%fs:-112, %rsi
  20e9e5: 48 8b 3d 0c 63 00 00         	movq	25356(%rip), %rdi       # 0x214cf8 <__afl_area_ptr>
  20e9ec: 48 81 f6 f2 ee 00 00         	xorq	$61170, %rsi            # imm = 0xEEF2
  20e9f3: 8a 1c 37                     	movb	(%rdi,%rsi), %bl
  20e9f6: 80 c3 01                     	addb	$1, %bl
  20e9f9: 80 d3 00                     	adcb	$0, %bl
  20e9fc: 88 1c 37                     	movb	%bl, (%rdi,%rsi)
  20e9ff: 64 c7 04 25 90 ff ff ff 79 77 00 00  	movl	$30585, %fs:-112 # imm = 0x7779
  20ea0b: f7 c2 00 02 00 00            	testl	$512, %edx              # imm = 0x200
  20ea11: 0f 85 ee 1f 00 00            	jne	0x210a05 <http_parser_execute+0x6f65>
  20ea17: 64 48 63 34 25 90 ff ff ff   	movslq	%fs:-112, %rsi
  20ea20: 48 8b 3d d1 62 00 00         	movq	25297(%rip), %rdi       # 0x214cf8 <__afl_area_ptr>
  20ea27: 48 81 f6 e2 35 00 00         	xorq	$13794, %rsi            # imm = 0x35E2
  20ea2e: 8a 1c 37                     	movb	(%rdi,%rsi), %bl
  20ea31: 80 c3 01                     	addb	$1, %bl
  20ea34: 80 d3 00                     	adcb	$0, %bl
  20ea37: 48 0f be c9                  	movsbq	%cl, %rcx
  20ea3b: 88 1c 37                     	movb	%bl, (%rdi,%rsi)
  20ea3e: 64 c7 04 25 90 ff ff ff f1 1a 00 00  	movl	$6897, %fs:-112 # imm = 0x1AF1
  20ea4a: 48 83 c1 d0                  	addq	$-48, %rcx
  20ea4e: 49 89 4d 08                  	movq	%rcx, 8(%r13)
  20ea52: 81 e2 ff fd 01 e0            	andl	$3758226943, %edx       # imm = 0xE001FDFF
  20ea58: 81 ca 00 02 16 00            	orl	$1442304, %edx          # imm = 0x160200
  20ea5e: 41 89 55 00                  	movl	%edx, (%r13)
  20ea62: e9 39 f8 ff ff               	jmp	0x20e2a0 <http_parser_execute+0x4800>
  20ea67: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20ea70: 48 8b 35 81 62 00 00         	movq	25217(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20ea77: 48 81 f1 ec 95 00 00         	xorq	$38380, %rcx            # imm = 0x95EC
  20ea7e: 8a 1c 0e                     	movb	(%rsi,%rcx), %bl
  20ea81: 80 c3 01                     	addb	$1, %bl
  20ea84: 80 d3 00                     	adcb	$0, %bl
  20ea87: 88 1c 0e                     	movb	%bl, (%rsi,%rcx)
  20ea8a: 64 c7 04 25 90 ff ff ff f6 4a 00 00  	movl	$19190, %fs:-112 # imm = 0x4AF6
  20ea96: 81 e2 ff ff 01 e0            	andl	$3758227455, %edx       # imm = 0xE001FFFF
  20ea9c: 41 89 55 00                  	movl	%edx, (%r13)
  20eaa0: e9 fb f7 ff ff               	jmp	0x20e2a0 <http_parser_execute+0x4800>
  20eaa5: 64 48 63 3c 25 90 ff ff ff   	movslq	%fs:-112, %rdi
  20eaae: 48 8b 35 43 62 00 00         	movq	25155(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20eab5: 48 81 f7 c3 73 00 00         	xorq	$29635, %rdi            # imm = 0x73C3
  20eabc: 8a 0c 3e                     	movb	(%rsi,%rdi), %cl
  20eabf: 80 c1 01                     	addb	$1, %cl
  20eac2: 80 d1 00                     	adcb	$0, %cl
  20eac5: 88 0c 3e                     	movb	%cl, (%rsi,%rdi)
  20eac8: 64 c7 04 25 90 ff ff ff e1 39 00 00  	movl	$14817, %fs:-112 # imm = 0x39E1
  20ead4: 81 e2 ff ff 01 e0            	andl	$3758227455, %edx       # imm = 0xE001FFFF
  20eada: 80 fb 63                     	cmpb	$99, %bl
  20eadd: 0f 85 11 02 00 00            	jne	0x20ecf4 <http_parser_execute+0x5254>
  20eae3: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20eaec: 48 8b 35 05 62 00 00         	movq	25093(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20eaf3: 48 81 f1 89 0e 00 00         	xorq	$3721, %rcx             # imm = 0xE89
  20eafa: 8a 1c 0e                     	movb	(%rsi,%rcx), %bl
  20eafd: 80 c3 01                     	addb	$1, %bl
  20eb00: 80 d3 00                     	adcb	$0, %bl
  20eb03: 88 1c 0e                     	movb	%bl, (%rsi,%rcx)
  20eb06: 64 c7 04 25 90 ff ff ff 44 07 00 00  	movl	$1860, %fs:-112 # imm = 0x744
  20eb12: 81 ca 00 00 20 00            	orl	$2097152, %edx          # imm = 0x200000
  20eb18: 41 89 55 00                  	movl	%edx, (%r13)
  20eb1c: e9 7f f7 ff ff               	jmp	0x20e2a0 <http_parser_execute+0x4800>
  20eb21: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20eb2a: 48 8b 35 c7 61 00 00         	movq	25031(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20eb31: 48 81 f1 65 e5 00 00         	xorq	$58725, %rcx            # imm = 0xE565
  20eb38: 8a 1c 0e                     	movb	(%rsi,%rcx), %bl
  20eb3b: 80 c3 01                     	addb	$1, %bl
  20eb3e: 80 d3 00                     	adcb	$0, %bl
  20eb41: 88 1c 0e                     	movb	%bl, (%rsi,%rcx)
  20eb44: 64 c7 04 25 90 ff ff ff b2 72 00 00  	movl	$29362, %fs:-112 # imm = 0x72B2
  20eb50: 81 e2 7f ff 01 e0            	andl	$3758227327, %edx       # imm = 0xE001FF7F
  20eb56: 81 ca 80 00 00 00            	orl	$128, %edx
  20eb5c: 41 89 55 00                  	movl	%edx, (%r13)
  20eb60: e9 3b f7 ff ff               	jmp	0x20e2a0 <http_parser_execute+0x4800>
  20eb65: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20eb6e: 48 8b 15 83 61 00 00         	movq	24963(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20eb75: 48 81 f1 b7 d9 00 00         	xorq	$55735, %rcx            # imm = 0xD9B7
  20eb7c: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20eb7f: 80 c3 01                     	addb	$1, %bl
  20eb82: 80 d3 00                     	adcb	$0, %bl
  20eb85: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20eb88: 64 c7 04 25 90 ff ff ff db 6c 00 00  	movl	$27867, %fs:-112 # imm = 0x6CDB
  20eb94: 48 8b 4d b8                  	movq	-72(%rbp), %rcx
  20eb98: 48 83 79 10 00               	cmpq	$0, 16(%rcx)
  20eb9d: 0f 85 61 17 00 00            	jne	0x210304 <http_parser_execute+0x6864>
  20eba3: e9 04 dd ff ff               	jmp	0x20c8ac <http_parser_execute+0x2e0c>
  20eba8: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20ebb1: 48 8b 15 40 61 00 00         	movq	24896(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20ebb8: 48 81 f1 67 c8 00 00         	xorq	$51303, %rcx            # imm = 0xC867
  20ebbf: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20ebc2: 80 c3 01                     	addb	$1, %bl
  20ebc5: 80 d3 00                     	adcb	$0, %bl
  20ebc8: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20ebcb: 64 c7 04 25 90 ff ff ff 33 64 00 00  	movl	$25651, %fs:-112 # imm = 0x6433
  20ebd7: 48 8b 4d b8                  	movq	-72(%rbp), %rcx
  20ebdb: 48 83 79 10 00               	cmpq	$0, 16(%rcx)
  20ebe0: 0f 85 5f 17 00 00            	jne	0x210345 <http_parser_execute+0x68a5>
  20ebe6: e9 49 f9 ff ff               	jmp	0x20e534 <http_parser_execute+0x4a94>
  20ebeb: 81 fe 41 02 14 00            	cmpl	$1311297, %esi          # imm = 0x140241
  20ebf1: 0f 8e 3d 02 00 00            	jle	0x20ee34 <http_parser_execute+0x5394>
  20ebf7: 81 fe 42 02 14 00            	cmpl	$1311298, %esi          # imm = 0x140242
  20ebfd: 0f 84 9d 08 00 00            	je	0x20f4a0 <http_parser_execute+0x5a00>
  20ec03: 81 fe 45 01 1a 00            	cmpl	$1704261, %esi          # imm = 0x1A0145
  20ec09: 0f 84 ca 08 00 00            	je	0x20f4d9 <http_parser_execute+0x5a39>
  20ec0f: 81 fe 4f 01 1a 00            	cmpl	$1704271, %esi          # imm = 0x1A014F
  20ec15: 0f 85 04 20 00 00            	jne	0x210c1f <http_parser_execute+0x717f>
  20ec1b: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20ec24: 48 8b 15 cd 60 00 00         	movq	24781(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20ec2b: 48 81 f1 08 af 00 00         	xorq	$44808, %rcx            # imm = 0xAF08
  20ec32: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20ec35: 80 c3 01                     	addb	$1, %bl
  20ec38: 80 d3 00                     	adcb	$0, %bl
  20ec3b: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20ec3e: 64 c7 04 25 90 ff ff ff 84 57 00 00  	movl	$22404, %fs:-112 # imm = 0x5784
  20ec4a: b9 00 00 21 00               	movl	$2162688, %ecx          # imm = 0x210000
  20ec4f: e9 97 09 00 00               	jmp	0x20f5eb <http_parser_execute+0x5b4b>
  20ec54: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  20ec5d: 48 8b 35 94 60 00 00         	movq	24724(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20ec64: 48 81 f2 90 33 00 00         	xorq	$13200, %rdx            # imm = 0x3390
  20ec6b: 8a 1c 16                     	movb	(%rsi,%rdx), %bl
  20ec6e: 80 c3 01                     	addb	$1, %bl
  20ec71: 80 d3 00                     	adcb	$0, %bl
  20ec74: 88 1c 16                     	movb	%bl, (%rsi,%rdx)
  20ec77: 64 c7 04 25 90 ff ff ff c8 19 00 00  	movl	$6600, %fs:-112 # imm = 0x19C8
  20ec83: 48 8b 55 b8                  	movq	-72(%rbp), %rdx
  20ec87: 48 83 7a 18 00               	cmpq	$0, 24(%rdx)
  20ec8c: 0f 85 f4 16 00 00            	jne	0x210386 <http_parser_execute+0x68e6>
  20ec92: e9 33 fa ff ff               	jmp	0x20e6ca <http_parser_execute+0x4c2a>
  20ec97: 81 fe 54 01 03 00            	cmpl	$196948, %esi           # imm = 0x30154
  20ec9d: 0f 8f e2 01 00 00            	jg	0x20ee85 <http_parser_execute+0x53e5>
  20eca3: 81 fe 41 01 03 00            	cmpl	$196929, %esi           # imm = 0x30141
  20eca9: 0f 84 63 08 00 00            	je	0x20f512 <http_parser_execute+0x5a72>
  20ecaf: 81 fe 52 01 03 00            	cmpl	$196946, %esi           # imm = 0x30152
  20ecb5: 0f 85 64 1f 00 00            	jne	0x210c1f <http_parser_execute+0x717f>
  20ecbb: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20ecc4: 48 8b 15 2d 60 00 00         	movq	24621(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20eccb: 48 81 f1 9b dd 00 00         	xorq	$56731, %rcx            # imm = 0xDD9B
  20ecd2: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20ecd5: 80 c3 01                     	addb	$1, %bl
  20ecd8: 80 d3 00                     	adcb	$0, %bl
  20ecdb: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20ecde: 64 c7 04 25 90 ff ff ff cd 6e 00 00  	movl	$28365, %fs:-112 # imm = 0x6ECD
  20ecea: b9 00 00 0c 00               	movl	$786432, %ecx           # imm = 0xC0000
  20ecef: e9 f7 08 00 00               	jmp	0x20f5eb <http_parser_execute+0x5b4b>
  20ecf4: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20ecfd: 48 8b 35 f4 5f 00 00         	movq	24564(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20ed04: 48 81 f1 1e 0d 00 00         	xorq	$3358, %rcx             # imm = 0xD1E
  20ed0b: 8a 1c 0e                     	movb	(%rsi,%rcx), %bl
  20ed0e: 80 c3 01                     	addb	$1, %bl
  20ed11: 80 d3 00                     	adcb	$0, %bl
  20ed14: 88 1c 0e                     	movb	%bl, (%rsi,%rcx)
  20ed17: 64 c7 04 25 90 ff ff ff 8f 06 00 00  	movl	$1679, %fs:-112 # imm = 0x68F
  20ed23: 81 ca 00 00 22 00            	orl	$2228224, %edx          # imm = 0x220000
  20ed29: 41 89 55 00                  	movl	%edx, (%r13)
  20ed2d: e9 6e f5 ff ff               	jmp	0x20e2a0 <http_parser_execute+0x4800>
  20ed32: 89 7d c0                     	movl	%edi, -64(%rbp)
  20ed35: 4c 89 4d a0                  	movq	%r9, -96(%rbp)
  20ed39: 4c 89 5d b0                  	movq	%r11, -80(%rbp)
  20ed3d: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20ed46: 48 8b 0d ab 5f 00 00         	movq	24491(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20ed4d: 48 35 64 6f 00 00            	xorq	$28516, %rax            # imm = 0x6F64
  20ed53: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20ed56: 80 c2 01                     	addb	$1, %dl
  20ed59: 80 d2 00                     	adcb	$0, %dl
  20ed5c: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20ed5f: 64 c7 04 25 90 ff ff ff b2 37 00 00  	movl	$14258, %fs:-112 # imm = 0x37B2
  20ed6b: 4c 89 ef                     	movq	%r13, %rdi
  20ed6e: e8 ad 37 00 00               	callq	0x212520 <http_message_needs_eof>
  20ed73: 89 c1                        	movl	%eax, %ecx
  20ed75: b8 3f 00 00 00               	movl	$63, %eax
  20ed7a: 85 c9                        	testl	%ecx, %ecx
  20ed7c: 0f 84 95 05 00 00            	je	0x20f317 <http_parser_execute+0x5877>
  20ed82: 4c 8b 5d b0                  	movq	-80(%rbp), %r11
  20ed86: 4c 8b 4d a0                  	movq	-96(%rbp), %r9
  20ed8a: 45 31 d2                     	xorl	%r10d, %r10d
  20ed8d: e9 0e f5 ff ff               	jmp	0x20e2a0 <http_parser_execute+0x4800>
  20ed92: 81 fe 4f 01 0a 00            	cmpl	$655695, %esi           # imm = 0xA014F
  20ed98: 0f 84 ad 07 00 00            	je	0x20f54b <http_parser_execute+0x5aab>
  20ed9e: 81 fe 41 02 0a 00            	cmpl	$655937, %esi           # imm = 0xA0241
  20eda4: 0f 85 75 1e 00 00            	jne	0x210c1f <http_parser_execute+0x717f>
  20edaa: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20edb3: 48 8b 15 3e 5f 00 00         	movq	24382(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20edba: 48 81 f1 d4 5b 00 00         	xorq	$23508, %rcx            # imm = 0x5BD4
  20edc1: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20edc4: 80 c3 01                     	addb	$1, %bl
  20edc7: 80 d3 00                     	adcb	$0, %bl
  20edca: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20edcd: 64 c7 04 25 90 ff ff ff ea 2d 00 00  	movl	$11754, %fs:-112 # imm = 0x2DEA
  20edd9: b9 00 00 15 00               	movl	$1376256, %ecx          # imm = 0x150000
  20edde: e9 08 08 00 00               	jmp	0x20f5eb <http_parser_execute+0x5b4b>
  20ede3: 81 fe 48 01 05 00            	cmpl	$328008, %esi           # imm = 0x50148
  20ede9: 0f 84 92 07 00 00            	je	0x20f581 <http_parser_execute+0x5ae1>
  20edef: 81 fe 50 02 05 00            	cmpl	$328272, %esi           # imm = 0x50250
  20edf5: 0f 85 24 1e 00 00            	jne	0x210c1f <http_parser_execute+0x717f>
  20edfb: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20ee04: 48 8b 15 ed 5e 00 00         	movq	24301(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20ee0b: 48 81 f1 02 ea 00 00         	xorq	$59906, %rcx            # imm = 0xEA02
  20ee12: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20ee15: 80 c3 01                     	addb	$1, %bl
  20ee18: 80 d3 00                     	adcb	$0, %bl
  20ee1b: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20ee1e: 64 c7 04 25 90 ff ff ff 01 75 00 00  	movl	$29953, %fs:-112 # imm = 0x7501
  20ee2a: b9 00 00 08 00               	movl	$524288, %ecx           # imm = 0x80000
  20ee2f: e9 b7 07 00 00               	jmp	0x20f5eb <http_parser_execute+0x5b4b>
  20ee34: 81 fe 53 02 0f 00            	cmpl	$983635, %esi           # imm = 0xF0253
  20ee3a: 0f 84 77 07 00 00            	je	0x20f5b7 <http_parser_execute+0x5b17>
  20ee40: 81 fe 49 03 0f 00            	cmpl	$983881, %esi           # imm = 0xF0349
  20ee46: 0f 85 d3 1d 00 00            	jne	0x210c1f <http_parser_execute+0x717f>
  20ee4c: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20ee55: 48 8b 15 9c 5e 00 00         	movq	24220(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20ee5c: 48 81 f1 39 93 00 00         	xorq	$37689, %rcx            # imm = 0x9339
  20ee63: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20ee66: 80 c3 01                     	addb	$1, %bl
  20ee69: 80 d3 00                     	adcb	$0, %bl
  20ee6c: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20ee6f: 64 c7 04 25 90 ff ff ff 9c 49 00 00  	movl	$18844, %fs:-112 # imm = 0x499C
  20ee7b: b9 00 00 20 00               	movl	$2097152, %ecx          # imm = 0x200000
  20ee80: e9 66 07 00 00               	jmp	0x20f5eb <http_parser_execute+0x5b4b>
  20ee85: b9 00 00 04 00               	movl	$262144, %ecx           # imm = 0x40000
  20ee8a: 81 fe 55 01 03 00            	cmpl	$196949, %esi           # imm = 0x30155
  20ee90: 0f 84 55 07 00 00            	je	0x20f5eb <http_parser_execute+0x5b4b>
  20ee96: 81 fe 52 02 04 00            	cmpl	$262738, %esi           # imm = 0x40252
  20ee9c: 0f 85 7d 1d 00 00            	jne	0x210c1f <http_parser_execute+0x717f>
  20eea2: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20eeab: 48 8b 15 46 5e 00 00         	movq	24134(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20eeb2: 48 81 f1 d0 49 00 00         	xorq	$18896, %rcx            # imm = 0x49D0
  20eeb9: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20eebc: 80 c3 01                     	addb	$1, %bl
  20eebf: 80 d3 00                     	adcb	$0, %bl
  20eec2: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20eec5: 64 c7 04 25 90 ff ff ff e8 24 00 00  	movl	$9448, %fs:-112 # imm = 0x24E8
  20eed1: b9 00 00 1d 00               	movl	$1900544, %ecx          # imm = 0x1D0000
  20eed6: e9 10 07 00 00               	jmp	0x20f5eb <http_parser_execute+0x5b4b>
  20eedb: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20eee4: 48 8b 35 0d 5e 00 00         	movq	24077(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20eeeb: 48 81 f1 06 f5 00 00         	xorq	$62726, %rcx            # imm = 0xF506
  20eef2: 8a 1c 0e                     	movb	(%rsi,%rcx), %bl
  20eef5: 80 c3 01                     	addb	$1, %bl
  20eef8: 80 d3 00                     	adcb	$0, %bl
  20eefb: 88 1c 0e                     	movb	%bl, (%rsi,%rcx)
  20eefe: 64 c7 04 25 90 ff ff ff 83 7a 00 00  	movl	$31363, %fs:-112 # imm = 0x7A83
  20ef0a: 81 e2 ff ff 01 e0            	andl	$3758227455, %edx       # imm = 0xE001FFFF
  20ef10: 81 ca 00 00 28 00            	orl	$2621440, %edx          # imm = 0x280000
  20ef16: 41 89 55 00                  	movl	%edx, (%r13)
  20ef1a: e9 81 f3 ff ff               	jmp	0x20e2a0 <http_parser_execute+0x4800>
  20ef1f: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20ef28: 48 8b 35 c9 5d 00 00         	movq	24009(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20ef2f: 48 81 f1 fa db 00 00         	xorq	$56314, %rcx            # imm = 0xDBFA
  20ef36: 8a 1c 0e                     	movb	(%rsi,%rcx), %bl
  20ef39: 80 c3 01                     	addb	$1, %bl
  20ef3c: 80 d3 00                     	adcb	$0, %bl
  20ef3f: 88 1c 0e                     	movb	%bl, (%rsi,%rcx)
  20ef42: 64 c7 04 25 90 ff ff ff fd 6d 00 00  	movl	$28157, %fs:-112 # imm = 0x6DFD
  20ef4e: 81 e2 ff ff 01 e0            	andl	$3758227455, %edx       # imm = 0xE001FFFF
  20ef54: 81 ca 00 00 2a 00            	orl	$2752512, %edx          # imm = 0x2A0000
  20ef5a: 41 89 55 00                  	movl	%edx, (%r13)
  20ef5e: e9 3d f3 ff ff               	jmp	0x20e2a0 <http_parser_execute+0x4800>
  20ef63: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20ef6c: 48 8b 35 85 5d 00 00         	movq	23941(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20ef73: 48 81 f1 ca 0d 00 00         	xorq	$3530, %rcx             # imm = 0xDCA
  20ef7a: 8a 1c 0e                     	movb	(%rsi,%rcx), %bl
  20ef7d: 80 c3 01                     	addb	$1, %bl
  20ef80: 80 d3 00                     	adcb	$0, %bl
  20ef83: 88 1c 0e                     	movb	%bl, (%rsi,%rcx)
  20ef86: 64 c7 04 25 90 ff ff ff e5 06 00 00  	movl	$1765, %fs:-112 # imm = 0x6E5
  20ef92: 81 e2 ff ff 01 e0            	andl	$3758227455, %edx       # imm = 0xE001FFFF
  20ef98: 81 ca 00 00 2c 00            	orl	$2883584, %edx          # imm = 0x2C0000
  20ef9e: 41 89 55 00                  	movl	%edx, (%r13)
  20efa2: e9 f9 f2 ff ff               	jmp	0x20e2a0 <http_parser_execute+0x4800>
  20efa7: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20efb0: 48 8b 15 41 5d 00 00         	movq	23873(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20efb7: 48 81 f1 4c 78 00 00         	xorq	$30796, %rcx            # imm = 0x784C
  20efbe: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20efc1: 80 c3 01                     	addb	$1, %bl
  20efc4: 80 d3 00                     	adcb	$0, %bl
  20efc7: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20efca: 64 c7 04 25 90 ff ff ff 26 3c 00 00  	movl	$15398, %fs:-112 # imm = 0x3C26
  20efd6: b9 00 00 05 00               	movl	$327680, %ecx           # imm = 0x50000
  20efdb: e9 68 02 00 00               	jmp	0x20f248 <http_parser_execute+0x57a8>
  20efe0: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20efe9: 48 8b 15 08 5d 00 00         	movq	23816(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20eff0: 48 81 f1 48 49 00 00         	xorq	$18760, %rcx            # imm = 0x4948
  20eff7: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20effa: 80 c3 01                     	addb	$1, %bl
  20effd: 80 d3 00                     	adcb	$0, %bl
  20f000: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20f003: 64 c7 04 25 90 ff ff ff a4 24 00 00  	movl	$9380, %fs:-112 # imm = 0x24A4
  20f00f: b9 00 00 01 00               	movl	$65536, %ecx            # imm = 0x10000
  20f014: e9 2f 02 00 00               	jmp	0x20f248 <http_parser_execute+0x57a8>
  20f019: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20f022: 48 8b 15 cf 5c 00 00         	movq	23759(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20f029: 48 81 f1 41 9e 00 00         	xorq	$40513, %rcx            # imm = 0x9E41
  20f030: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20f033: 80 c3 01                     	addb	$1, %bl
  20f036: 80 d3 00                     	adcb	$0, %bl
  20f039: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20f03c: 64 c7 04 25 90 ff ff ff 20 4f 00 00  	movl	$20256, %fs:-112 # imm = 0x4F20
  20f048: b9 00 00 02 00               	movl	$131072, %ecx           # imm = 0x20000
  20f04d: e9 f6 01 00 00               	jmp	0x20f248 <http_parser_execute+0x57a8>
  20f052: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20f05b: 48 8b 15 96 5c 00 00         	movq	23702(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20f062: 48 81 f1 3a 41 00 00         	xorq	$16698, %rcx            # imm = 0x413A
  20f069: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20f06c: 80 c3 01                     	addb	$1, %bl
  20f06f: 80 d3 00                     	adcb	$0, %bl
  20f072: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20f075: 64 c7 04 25 90 ff ff ff 9d 20 00 00  	movl	$8349, %fs:-112 # imm = 0x209D
  20f081: b9 00 00 09 00               	movl	$589824, %ecx           # imm = 0x90000
  20f086: e9 bd 01 00 00               	jmp	0x20f248 <http_parser_execute+0x57a8>
  20f08b: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20f094: 48 8b 15 5d 5c 00 00         	movq	23645(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20f09b: 48 81 f1 74 43 00 00         	xorq	$17268, %rcx            # imm = 0x4374
  20f0a2: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20f0a5: 80 c3 01                     	addb	$1, %bl
  20f0a8: 80 d3 00                     	adcb	$0, %bl
  20f0ab: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20f0ae: 64 c7 04 25 90 ff ff ff ba 21 00 00  	movl	$8634, %fs:-112 # imm = 0x21BA
  20f0ba: b9 00 00 0a 00               	movl	$655360, %ecx           # imm = 0xA0000
  20f0bf: e9 84 01 00 00               	jmp	0x20f248 <http_parser_execute+0x57a8>
  20f0c4: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20f0cd: 48 8b 15 24 5c 00 00         	movq	23588(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20f0d4: 48 81 f1 5a 17 00 00         	xorq	$5978, %rcx             # imm = 0x175A
  20f0db: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20f0de: 80 c3 01                     	addb	$1, %bl
  20f0e1: 80 d3 00                     	adcb	$0, %bl
  20f0e4: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20f0e7: 64 c7 04 25 90 ff ff ff ad 0b 00 00  	movl	$2989, %fs:-112 # imm = 0xBAD
  20f0f3: b9 00 00 19 00               	movl	$1638400, %ecx          # imm = 0x190000
  20f0f8: e9 4b 01 00 00               	jmp	0x20f248 <http_parser_execute+0x57a8>
  20f0fd: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20f106: 48 8b 15 eb 5b 00 00         	movq	23531(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20f10d: 48 81 f1 49 42 00 00         	xorq	$16969, %rcx            # imm = 0x4249
  20f114: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20f117: 80 c3 01                     	addb	$1, %bl
  20f11a: 80 d3 00                     	adcb	$0, %bl
  20f11d: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20f120: 64 c7 04 25 90 ff ff ff 24 21 00 00  	movl	$8484, %fs:-112 # imm = 0x2124
  20f12c: b9 00 00 06 00               	movl	$393216, %ecx           # imm = 0x60000
  20f131: e9 12 01 00 00               	jmp	0x20f248 <http_parser_execute+0x57a8>
  20f136: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20f13f: 48 8b 15 b2 5b 00 00         	movq	23474(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20f146: 48 81 f1 cc 24 00 00         	xorq	$9420, %rcx             # imm = 0x24CC
  20f14d: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20f150: 80 c3 01                     	addb	$1, %bl
  20f153: 80 d3 00                     	adcb	$0, %bl
  20f156: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20f159: 64 c7 04 25 90 ff ff ff 66 12 00 00  	movl	$4710, %fs:-112 # imm = 0x1266
  20f165: b9 00 00 03 00               	movl	$196608, %ecx           # imm = 0x30000
  20f16a: e9 d9 00 00 00               	jmp	0x20f248 <http_parser_execute+0x57a8>
  20f16f: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20f178: 48 8b 15 79 5b 00 00         	movq	23417(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20f17f: 48 81 f1 3e d8 00 00         	xorq	$55358, %rcx            # imm = 0xD83E
  20f186: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20f189: 80 c3 01                     	addb	$1, %bl
  20f18c: 80 d3 00                     	adcb	$0, %bl
  20f18f: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20f192: 64 c7 04 25 90 ff ff ff 1f 6c 00 00  	movl	$27679, %fs:-112 # imm = 0x6C1F
  20f19e: b9 00 00 14 00               	movl	$1310720, %ecx          # imm = 0x140000
  20f1a3: e9 a0 00 00 00               	jmp	0x20f248 <http_parser_execute+0x57a8>
  20f1a8: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20f1b1: 48 8b 15 40 5b 00 00         	movq	23360(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20f1b8: 48 81 f1 41 f0 00 00         	xorq	$61505, %rcx            # imm = 0xF041
  20f1bf: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20f1c2: 80 c3 01                     	addb	$1, %bl
  20f1c5: 80 d3 00                     	adcb	$0, %bl
  20f1c8: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20f1cb: 64 c7 04 25 90 ff ff ff 20 78 00 00  	movl	$30752, %fs:-112 # imm = 0x7820
  20f1d7: b9 00 00 1a 00               	movl	$1703936, %ecx          # imm = 0x1A0000
  20f1dc: eb 6a                        	jmp	0x20f248 <http_parser_execute+0x57a8>
  20f1de: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20f1e7: 48 8b 15 0a 5b 00 00         	movq	23306(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20f1ee: 48 81 f1 eb 44 00 00         	xorq	$17643, %rcx            # imm = 0x44EB
  20f1f5: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20f1f8: 80 c3 01                     	addb	$1, %bl
  20f1fb: 80 d3 00                     	adcb	$0, %bl
  20f1fe: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20f201: 64 c7 04 25 90 ff ff ff 75 22 00 00  	movl	$8821, %fs:-112 # imm = 0x2275
  20f20d: b9 00 00 07 00               	movl	$458752, %ecx           # imm = 0x70000
  20f212: eb 34                        	jmp	0x20f248 <http_parser_execute+0x57a8>
  20f214: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20f21d: 48 8b 15 d4 5a 00 00         	movq	23252(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20f224: 48 81 f1 12 5f 00 00         	xorq	$24338, %rcx            # imm = 0x5F12
  20f22b: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20f22e: 80 c3 01                     	addb	$1, %bl
  20f231: 80 d3 00                     	adcb	$0, %bl
  20f234: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20f237: 64 c7 04 25 90 ff ff ff 89 2f 00 00  	movl	$12169, %fs:-112 # imm = 0x2F89
  20f243: b9 00 00 0f 00               	movl	$983040, %ecx           # imm = 0xF0000
  20f248: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  20f251: 48 8b 35 a0 5a 00 00         	movq	23200(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20f258: 48 81 f2 98 12 00 00         	xorq	$4760, %rdx             # imm = 0x1298
  20f25f: 8a 1c 16                     	movb	(%rsi,%rdx), %bl
  20f262: 80 c3 01                     	addb	$1, %bl
  20f265: 80 d3 00                     	adcb	$0, %bl
  20f268: 88 1c 16                     	movb	%bl, (%rsi,%rdx)
  20f26b: 64 c7 04 25 90 ff ff ff 4c 09 00 00  	movl	$2380, %fs:-112 # imm = 0x94C
  20f277: 8b 55 cc                     	movl	-52(%rbp), %edx
  20f27a: 09 ca                        	orl	%ecx, %edx
  20f27c: 48 8b 4d d0                  	movq	-48(%rbp), %rcx
  20f280: 89 55 cc                     	movl	%edx, -52(%rbp)
  20f283: 89 11                        	movl	%edx, (%rcx)
  20f285: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20f28e: 48 8b 15 63 5a 00 00         	movq	23139(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20f295: 48 81 f1 7e 56 00 00         	xorq	$22142, %rcx            # imm = 0x567E
  20f29c: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20f29f: 80 c3 01                     	addb	$1, %bl
  20f2a2: 80 d3 00                     	adcb	$0, %bl
  20f2a5: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20f2a8: 64 c7 04 25 90 ff ff ff 3f 2b 00 00  	movl	$11071, %fs:-112 # imm = 0x2B3F
  20f2b4: 44 8b 75 cc                  	movl	-52(%rbp), %r14d
  20f2b8: 41 f7 c6 00 00 00 7f         	testl	$2130706432, %r14d      # imm = 0x7F000000
  20f2bf: 0f 85 12 29 00 00            	jne	0x211bd7 <http_parser_execute+0x8137>
  20f2c5: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20f2ce: 48 8b 15 23 5a 00 00         	movq	23075(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20f2d5: 48 81 f1 30 f3 00 00         	xorq	$62256, %rcx            # imm = 0xF330
  20f2dc: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20f2df: 80 c3 01                     	addb	$1, %bl
  20f2e2: 80 d3 00                     	adcb	$0, %bl
  20f2e5: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20f2e8: 64 c7 04 25 90 ff ff ff 98 79 00 00  	movl	$31128, %fs:-112 # imm = 0x7998
  20f2f4: 48 8b 4d b8                  	movq	-72(%rbp), %rcx
  20f2f8: 48 83 39 00                  	cmpq	$0, (%rcx)
  20f2fc: 0f 85 ae 0c 00 00            	jne	0x20ffb0 <http_parser_execute+0x6510>
  20f302: b8 13 00 00 00               	movl	$19, %eax
  20f307: 44 89 f1                     	movl	%r14d, %ecx
  20f30a: 48 89 4d a8                  	movq	%rcx, -88(%rbp)
  20f30e: 44 89 75 c8                  	movl	%r14d, -56(%rbp)
  20f312: e9 89 ef ff ff               	jmp	0x20e2a0 <http_parser_execute+0x4800>
  20f317: 44 89 f7                     	movl	%r14d, %edi
  20f31a: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20f323: 48 8b 0d ce 59 00 00         	movq	22990(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20f32a: 48 35 9b f3 00 00            	xorq	$62363, %rax            # imm = 0xF39B
  20f330: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20f333: 80 c2 01                     	addb	$1, %dl
  20f336: 80 d2 00                     	adcb	$0, %dl
  20f339: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20f33c: 64 c7 04 25 90 ff ff ff cd 79 00 00  	movl	$31181, %fs:-112 # imm = 0x79CD
  20f348: f6 45 c0 03                  	testb	$3, -64(%rbp)
  20f34c: b9 12 00 00 00               	movl	$18, %ecx
  20f351: b8 04 00 00 00               	movl	$4, %eax
  20f356: 0f 44 c1                     	cmovel	%ecx, %eax
  20f359: 41 f7 c6 00 00 00 7f         	testl	$2130706432, %r14d      # imm = 0x7F000000
  20f360: 0f 85 1b 2a 00 00            	jne	0x211d81 <http_parser_execute+0x82e1>
  20f366: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20f36f: 48 8b 15 82 59 00 00         	movq	22914(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20f376: 48 81 f1 e6 6a 00 00         	xorq	$27366, %rcx            # imm = 0x6AE6
  20f37d: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20f380: 80 c3 01                     	addb	$1, %bl
  20f383: 80 d3 00                     	adcb	$0, %bl
  20f386: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20f389: 64 c7 04 25 90 ff ff ff 73 35 00 00  	movl	$13683, %fs:-112 # imm = 0x3573
  20f395: 48 8b 4d b8                  	movq	-72(%rbp), %rcx
  20f399: 48 83 79 38 00               	cmpq	$0, 56(%rcx)
  20f39e: 0f 85 b8 12 00 00            	jne	0x21065c <http_parser_execute+0x6bbc>
  20f3a4: 4d 89 e6                     	movq	%r12, %r14
  20f3a7: 89 fe                        	movl	%edi, %esi
  20f3a9: 4c 8b 5d b0                  	movq	-80(%rbp), %r11
  20f3ad: 45 31 d2                     	xorl	%r10d, %r10d
  20f3b0: 4c 8b 4d a0                  	movq	-96(%rbp), %r9
  20f3b4: 41 89 fe                     	movl	%edi, %r14d
  20f3b7: e9 e4 ee ff ff               	jmp	0x20e2a0 <http_parser_execute+0x4800>
  20f3bc: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20f3c5: 48 8b 15 2c 59 00 00         	movq	22828(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20f3cc: 48 81 f1 f2 8d 00 00         	xorq	$36338, %rcx            # imm = 0x8DF2
  20f3d3: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20f3d6: 80 c3 01                     	addb	$1, %bl
  20f3d9: 80 d3 00                     	adcb	$0, %bl
  20f3dc: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20f3df: 64 c7 04 25 90 ff ff ff f9 46 00 00  	movl	$18169, %fs:-112 # imm = 0x46F9
  20f3eb: b9 00 00 1e 00               	movl	$1966080, %ecx          # imm = 0x1E0000
  20f3f0: e9 f6 01 00 00               	jmp	0x20f5eb <http_parser_execute+0x5b4b>
  20f3f5: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20f3fe: 48 8b 15 f3 58 00 00         	movq	22771(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20f405: 48 81 f1 a1 30 00 00         	xorq	$12449, %rcx            # imm = 0x30A1
  20f40c: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20f40f: 80 c3 01                     	addb	$1, %bl
  20f412: 80 d3 00                     	adcb	$0, %bl
  20f415: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20f418: 64 c7 04 25 90 ff ff ff 50 18 00 00  	movl	$6224, %fs:-112 # imm = 0x1850
  20f424: b9 00 00 0d 00               	movl	$851968, %ecx           # imm = 0xD0000
  20f429: e9 bd 01 00 00               	jmp	0x20f5eb <http_parser_execute+0x5b4b>
  20f42e: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20f437: 48 8b 15 ba 58 00 00         	movq	22714(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20f43e: 48 81 f1 1d ad 00 00         	xorq	$44317, %rcx            # imm = 0xAD1D
  20f445: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20f448: 80 c3 01                     	addb	$1, %bl
  20f44b: 80 d3 00                     	adcb	$0, %bl
  20f44e: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20f451: 64 c7 04 25 90 ff ff ff 8e 56 00 00  	movl	$22158, %fs:-112 # imm = 0x568E
  20f45d: b9 00 00 1f 00               	movl	$2031616, %ecx          # imm = 0x1F0000
  20f462: e9 84 01 00 00               	jmp	0x20f5eb <http_parser_execute+0x5b4b>
  20f467: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20f470: 48 8b 15 81 58 00 00         	movq	22657(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20f477: 48 81 f1 a4 bd 00 00         	xorq	$48548, %rcx            # imm = 0xBDA4
  20f47e: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20f481: 80 c3 01                     	addb	$1, %bl
  20f484: 80 d3 00                     	adcb	$0, %bl
  20f487: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20f48a: 64 c7 04 25 90 ff ff ff d2 5e 00 00  	movl	$24274, %fs:-112 # imm = 0x5ED2
  20f496: b9 00 00 18 00               	movl	$1572864, %ecx          # imm = 0x180000
  20f49b: e9 4b 01 00 00               	jmp	0x20f5eb <http_parser_execute+0x5b4b>
  20f4a0: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20f4a9: 48 8b 15 48 58 00 00         	movq	22600(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20f4b0: 48 81 f1 0a 56 00 00         	xorq	$22026, %rcx            # imm = 0x560A
  20f4b7: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20f4ba: 80 c3 01                     	addb	$1, %bl
  20f4bd: 80 d3 00                     	adcb	$0, %bl
  20f4c0: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20f4c3: 64 c7 04 25 90 ff ff ff 05 2b 00 00  	movl	$11013, %fs:-112 # imm = 0x2B05
  20f4cf: b9 00 00 11 00               	movl	$1114112, %ecx          # imm = 0x110000
  20f4d4: e9 12 01 00 00               	jmp	0x20f5eb <http_parser_execute+0x5b4b>
  20f4d9: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20f4e2: 48 8b 15 0f 58 00 00         	movq	22543(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20f4e9: 48 81 f1 a3 1c 00 00         	xorq	$7331, %rcx             # imm = 0x1CA3
  20f4f0: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20f4f3: 80 c3 01                     	addb	$1, %bl
  20f4f6: 80 d3 00                     	adcb	$0, %bl
  20f4f9: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20f4fc: 64 c7 04 25 90 ff ff ff 51 0e 00 00  	movl	$3665, %fs:-112 # imm = 0xE51
  20f508: b9 00 00 0e 00               	movl	$917504, %ecx           # imm = 0xE0000
  20f50d: e9 d9 00 00 00               	jmp	0x20f5eb <http_parser_execute+0x5b4b>
  20f512: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20f51b: 48 8b 15 d6 57 00 00         	movq	22486(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20f522: 48 81 f1 76 79 00 00         	xorq	$31094, %rcx            # imm = 0x7976
  20f529: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20f52c: 80 c3 01                     	addb	$1, %bl
  20f52f: 80 d3 00                     	adcb	$0, %bl
  20f532: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20f535: 64 c7 04 25 90 ff ff ff bb 3c 00 00  	movl	$15547, %fs:-112 # imm = 0x3CBB
  20f541: b9 00 00 1c 00               	movl	$1835008, %ecx          # imm = 0x1C0000
  20f546: e9 a0 00 00 00               	jmp	0x20f5eb <http_parser_execute+0x5b4b>
  20f54b: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20f554: 48 8b 15 9d 57 00 00         	movq	22429(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20f55b: 48 81 f1 64 7d 00 00         	xorq	$32100, %rcx            # imm = 0x7D64
  20f562: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20f565: 80 c3 01                     	addb	$1, %bl
  20f568: 80 d3 00                     	adcb	$0, %bl
  20f56b: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20f56e: 64 c7 04 25 90 ff ff ff b2 3e 00 00  	movl	$16050, %fs:-112 # imm = 0x3EB2
  20f57a: b9 00 00 0b 00               	movl	$720896, %ecx           # imm = 0xB0000
  20f57f: eb 6a                        	jmp	0x20f5eb <http_parser_execute+0x5b4b>
  20f581: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20f58a: 48 8b 15 67 57 00 00         	movq	22375(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20f591: 48 81 f1 17 fe 00 00         	xorq	$65047, %rcx            # imm = 0xFE17
  20f598: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20f59b: 80 c3 01                     	addb	$1, %bl
  20f59e: 80 d3 00                     	adcb	$0, %bl
  20f5a1: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20f5a4: 64 c7 04 25 90 ff ff ff 0b 7f 00 00  	movl	$32523, %fs:-112 # imm = 0x7F0B
  20f5b0: b9 00 00 16 00               	movl	$1441792, %ecx          # imm = 0x160000
  20f5b5: eb 34                        	jmp	0x20f5eb <http_parser_execute+0x5b4b>
  20f5b7: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20f5c0: 48 8b 15 31 57 00 00         	movq	22321(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20f5c7: 48 81 f1 2e 1d 00 00         	xorq	$7470, %rcx             # imm = 0x1D2E
  20f5ce: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20f5d1: 80 c3 01                     	addb	$1, %bl
  20f5d4: 80 d3 00                     	adcb	$0, %bl
  20f5d7: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20f5da: 64 c7 04 25 90 ff ff ff 97 0e 00 00  	movl	$3735, %fs:-112 # imm = 0xE97
  20f5e6: b9 00 00 1b 00               	movl	$1769472, %ecx          # imm = 0x1B0000
  20f5eb: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  20f5f4: 48 8b 35 fd 56 00 00         	movq	22269(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20f5fb: 48 81 f2 83 87 00 00         	xorq	$34691, %rdx            # imm = 0x8783
  20f602: 8a 1c 16                     	movb	(%rsi,%rdx), %bl
  20f605: 80 c3 01                     	addb	$1, %bl
  20f608: 80 d3 00                     	adcb	$0, %bl
  20f60b: 88 1c 16                     	movb	%bl, (%rsi,%rdx)
  20f60e: 64 c7 04 25 90 ff ff ff c1 43 00 00  	movl	$17345, %fs:-112 # imm = 0x43C1
  20f61a: 41 81 e6 ff ff 00 ff         	andl	$4278255615, %r14d      # imm = 0xFF00FFFF
  20f621: 41 09 ce                     	orl	%ecx, %r14d
  20f624: 48 8b 4d d0                  	movq	-48(%rbp), %rcx
  20f628: 44 89 31                     	movl	%r14d, (%rcx)
  20f62b: 44 89 75 cc                  	movl	%r14d, -52(%rbp)
  20f62f: 44 89 f1                     	movl	%r14d, %ecx
  20f632: 48 89 4d a8                  	movq	%rcx, -88(%rbp)
  20f636: 44 89 75 c8                  	movl	%r14d, -56(%rbp)
  20f63a: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20f643: 48 8b 15 ae 56 00 00         	movq	22190(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20f64a: 48 81 f1 ab da 00 00         	xorq	$55979, %rcx            # imm = 0xDAAB
  20f651: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20f654: 80 c3 01                     	addb	$1, %bl
  20f657: 80 d3 00                     	adcb	$0, %bl
  20f65a: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20f65d: 64 c7 04 25 90 ff ff ff 55 6d 00 00  	movl	$27989, %fs:-112 # imm = 0x6D55
  20f669: 41 8d 88 00 00 00 01         	leal	16777216(%r8), %ecx
  20f670: 81 e1 00 00 00 1f            	andl	$520093696, %ecx        # imm = 0x1F000000
  20f676: 41 81 e0 ff ff ff e0         	andl	$3774873599, %r8d       # imm = 0xE0FFFFFF
  20f67d: 41 09 c8                     	orl	%ecx, %r8d
  20f680: 45 89 45 00                  	movl	%r8d, (%r13)
  20f684: e9 17 ec ff ff               	jmp	0x20e2a0 <http_parser_execute+0x4800>
  20f689: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20f692: 48 8b 15 5f 56 00 00         	movq	22111(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20f699: 48 81 f1 34 53 00 00         	xorq	$21300, %rcx            # imm = 0x5334
  20f6a0: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20f6a3: 80 c3 01                     	addb	$1, %bl
  20f6a6: 80 d3 00                     	adcb	$0, %bl
  20f6a9: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20f6ac: 64 c7 04 25 90 ff ff ff 9a 29 00 00  	movl	$10650, %fs:-112 # imm = 0x299A
  20f6b8: 83 f8 3f                     	cmpl	$63, %eax
  20f6bb: 0f 87 c9 01 00 00            	ja	0x20f88a <http_parser_execute+0x5dea>
  20f6c1: 89 c0                        	movl	%eax, %eax
  20f6c3: b9 16 00 04 00               	movl	$262166, %ecx           # imm = 0x40016
  20f6c8: 48 0f a3 c1                  	btq	%rax, %rcx
  20f6cc: 0f 82 ef a3 ff ff            	jb	0x209ac1 <http_parser_execute+0x21>
  20f6d2: 48 83 f8 3f                  	cmpq	$63, %rax
  20f6d6: 0f 85 ae 01 00 00            	jne	0x20f88a <http_parser_execute+0x5dea>
  20f6dc: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20f6e5: 48 8b 0d 0c 56 00 00         	movq	22028(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20f6ec: 48 35 6b d0 00 00            	xorq	$53355, %rax            # imm = 0xD06B
  20f6f2: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20f6f5: 80 c2 01                     	addb	$1, %dl
  20f6f8: 80 d2 00                     	adcb	$0, %dl
  20f6fb: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20f6fe: 64 c7 04 25 90 ff ff ff 35 68 00 00  	movl	$26677, %fs:-112 # imm = 0x6835
  20f70a: 49 83 78 38 00               	cmpq	$0, 56(%r8)
  20f70f: 0f 84 ac a3 ff ff            	je	0x209ac1 <http_parser_execute+0x21>
  20f715: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20f71e: 48 8b 0d d3 55 00 00         	movq	21971(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20f725: 48 35 4f 31 00 00            	xorq	$12623, %rax            # imm = 0x314F
  20f72b: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20f72e: 80 c2 01                     	addb	$1, %dl
  20f731: 80 d2 00                     	adcb	$0, %dl
  20f734: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20f737: 64 c7 04 25 90 ff ff ff a7 18 00 00  	movl	$6311, %fs:-112 # imm = 0x18A7
  20f743: 8b 45 8c                     	movl	-116(%rbp), %eax
  20f746: 25 ff 03 fe ff               	andl	$4294837247, %eax       # imm = 0xFFFE03FF
  20f74b: 0d 00 fc 00 00               	orl	$64512, %eax            # imm = 0xFC00
  20f750: e9 b7 00 00 00               	jmp	0x20f80c <http_parser_execute+0x5d6c>
  20f755: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20f75e: 48 8b 0d 93 55 00 00         	movq	21907(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20f765: 48 35 9a a9 00 00            	xorq	$43418, %rax            # imm = 0xA99A
  20f76b: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20f76e: 80 c2 01                     	addb	$1, %dl
  20f771: 80 d2 00                     	adcb	$0, %dl
  20f774: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20f777: 64 c7 04 25 90 ff ff ff cd 54 00 00  	movl	$21709, %fs:-112 # imm = 0x54CD
  20f783: b8 ff 03 fe ff               	movl	$4294837247, %eax       # imm = 0xFFFE03FF
  20f788: 41 23 45 00                  	andl	(%r13), %eax
  20f78c: 0d 00 00 01 00               	orl	$65536, %eax            # imm = 0x10000
  20f791: eb 79                        	jmp	0x20f80c <http_parser_execute+0x5d6c>
  20f793: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20f79c: 48 8b 0d 55 55 00 00         	movq	21845(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20f7a3: 48 35 2f 9c 00 00            	xorq	$39983, %rax            # imm = 0x9C2F
  20f7a9: 8a 1c 01                     	movb	(%rcx,%rax), %bl
  20f7ac: 80 c3 01                     	addb	$1, %bl
  20f7af: 80 d3 00                     	adcb	$0, %bl
  20f7b2: 88 1c 01                     	movb	%bl, (%rcx,%rax)
  20f7b5: 64 c7 04 25 90 ff ff ff 17 4e 00 00  	movl	$19991, %fs:-112 # imm = 0x4E17
  20f7c1: 81 e2 ff 03 fe ff            	andl	$4294837247, %edx       # imm = 0xFFFE03FF
  20f7c7: 81 ca 00 b0 00 00            	orl	$45056, %edx            # imm = 0xB000
  20f7cd: 41 89 55 00                  	movl	%edx, (%r13)
  20f7d1: eb 3d                        	jmp	0x20f810 <http_parser_execute+0x5d70>
  20f7d3: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20f7dc: 48 8b 15 15 55 00 00         	movq	21781(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20f7e3: 48 81 f1 4a 4c 00 00         	xorq	$19530, %rcx            # imm = 0x4C4A
  20f7ea: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20f7ed: 80 c3 01                     	addb	$1, %bl
  20f7f0: 80 d3 00                     	adcb	$0, %bl
  20f7f3: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20f7f6: 64 c7 04 25 90 ff ff ff 25 26 00 00  	movl	$9765, %fs:-112 # imm = 0x2625
  20f802: 25 ff 03 fe ff               	andl	$4294837247, %eax       # imm = 0xFFFE03FF
  20f807: 0d 00 00 01 00               	orl	$65536, %eax            # imm = 0x10000
  20f80c: 41 89 45 00                  	movl	%eax, (%r13)
  20f810: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20f819: 48 8b 0d d8 54 00 00         	movq	21720(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20f820: 48 35 59 7a 00 00            	xorq	$31321, %rax            # imm = 0x7A59
  20f826: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20f829: 80 c2 01                     	addb	$1, %dl
  20f82c: 80 d2 00                     	adcb	$0, %dl
  20f82f: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20f832: 64 c7 04 25 90 ff ff ff 2c 3d 00 00  	movl	$15660, %fs:-112 # imm = 0x3D2C
  20f83e: 67 0f b9 40 02               	ud1l 2(%eax), %eax
  20f843: b9 00 00 00 00               	movl	$0, %ecx
  20f848: 83 f8 10                     	cmpl	$16, %eax
  20f84b: 0f 85 a9 a3 ff ff            	jne	0x209bfa <http_parser_execute+0x15a>
  20f851: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20f85a: 48 8b 15 97 54 00 00         	movq	21655(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20f861: 48 81 f1 54 7c 00 00         	xorq	$31828, %rcx            # imm = 0x7C54
  20f868: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20f86b: 80 c3 01                     	addb	$1, %bl
  20f86e: 80 d3 00                     	adcb	$0, %bl
  20f871: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20f874: 64 c7 04 25 90 ff ff ff 2a 3e 00 00  	movl	$15914, %fs:-112 # imm = 0x3E2A
  20f880: 31 c9                        	xorl	%ecx, %ecx
  20f882: 4c 89 da                     	movq	%r11, %rdx
  20f885: e9 70 a3 ff ff               	jmp	0x209bfa <http_parser_execute+0x15a>
  20f88a: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20f893: 48 8b 0d 5e 54 00 00         	movq	21598(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20f89a: 48 35 74 d5 00 00            	xorq	$54644, %rax            # imm = 0xD574
  20f8a0: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20f8a3: 80 c2 01                     	addb	$1, %dl
  20f8a6: 80 d2 00                     	adcb	$0, %dl
  20f8a9: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20f8ac: 64 c7 04 25 90 ff ff ff ba 6a 00 00  	movl	$27322, %fs:-112 # imm = 0x6ABA
  20f8b8: 41 81 e6 ff ff ff 80         	andl	$2164260863, %r14d      # imm = 0x80FFFFFF
  20f8bf: 41 81 ce 00 00 00 0b         	orl	$184549376, %r14d       # imm = 0xB000000
  20f8c6: 48 8b 45 d0                  	movq	-48(%rbp), %rax
  20f8ca: 44 89 30                     	movl	%r14d, (%rax)
  20f8cd: 41 bf 01 00 00 00            	movl	$1, %r15d
  20f8d3: e9 ec a1 ff ff               	jmp	0x209ac4 <http_parser_execute+0x24>
  20f8d8: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20f8e1: 48 8b 0d 10 54 00 00         	movq	21520(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20f8e8: 48 35 b9 13 00 00            	xorq	$5049, %rax             # imm = 0x13B9
  20f8ee: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20f8f1: 80 c2 01                     	addb	$1, %dl
  20f8f4: 80 d2 00                     	adcb	$0, %dl
  20f8f7: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20f8fa: 64 c7 04 25 90 ff ff ff dc 09 00 00  	movl	$2524, %fs:-112 # imm = 0x9DC
  20f906: e9 37 02 00 00               	jmp	0x20fb42 <http_parser_execute+0x60a2>
  20f90b: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20f914: 48 8b 0d dd 53 00 00         	movq	21469(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20f91b: 48 35 3b 99 00 00            	xorq	$39227, %rax            # imm = 0x993B
  20f921: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20f924: 80 c2 01                     	addb	$1, %dl
  20f927: 80 d2 00                     	adcb	$0, %dl
  20f92a: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20f92d: 64 c7 04 25 90 ff ff ff 9d 4c 00 00  	movl	$19613, %fs:-112 # imm = 0x4C9D
  20f939: eb 2e                        	jmp	0x20f969 <http_parser_execute+0x5ec9>
  20f93b: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20f944: 48 8b 0d ad 53 00 00         	movq	21421(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20f94b: 48 35 2d ba 00 00            	xorq	$47661, %rax            # imm = 0xBA2D
  20f951: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20f954: 80 c2 01                     	addb	$1, %dl
  20f957: 80 d2 00                     	adcb	$0, %dl
  20f95a: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20f95d: 64 c7 04 25 90 ff ff ff 16 5d 00 00  	movl	$23830, %fs:-112 # imm = 0x5D16
  20f969: 41 81 e2 ff 03 fe ff         	andl	$4294837247, %r10d      # imm = 0xFFFE03FF
  20f970: 41 81 ca 00 d0 00 00         	orl	$53248, %r10d           # imm = 0xD000
  20f977: 45 89 55 00                  	movl	%r10d, (%r13)
  20f97b: e9 90 fe ff ff               	jmp	0x20f810 <http_parser_execute+0x5d70>
  20f980: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20f989: 48 8b 15 68 53 00 00         	movq	21352(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20f990: 48 81 f1 0c ba 00 00         	xorq	$47628, %rcx            # imm = 0xBA0C
  20f997: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20f99a: 80 c3 01                     	addb	$1, %bl
  20f99d: 80 d3 00                     	adcb	$0, %bl
  20f9a0: 31 f6                        	xorl	%esi, %esi
  20f9a2: 4c 8b 45 98                  	movq	-104(%rbp), %r8
  20f9a6: 4d 85 c0                     	testq	%r8, %r8
  20f9a9: 40 0f 95 c6                  	setne	%sil
  20f9ad: 4c 8b 8d 70 ff ff ff         	movq	-144(%rbp), %r9
  20f9b4: 49 83 f9 01                  	cmpq	$1, %r9
  20f9b8: 83 de ff                     	sbbl	$-1, %esi
  20f9bb: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20f9be: 4c 8b 9d 78 ff ff ff         	movq	-136(%rbp), %r11
  20f9c5: 49 83 fb 01                  	cmpq	$1, %r11
  20f9c9: 83 de ff                     	sbbl	$-1, %esi
  20f9cc: 64 c7 04 25 90 ff ff ff 06 5d 00 00  	movl	$23814, %fs:-112 # imm = 0x5D06
  20f9d8: 4c 8b 75 80                  	movq	-128(%rbp), %r14
  20f9dc: 49 83 fe 01                  	cmpq	$1, %r14
  20f9e0: 83 de ff                     	sbbl	$-1, %esi
  20f9e3: 48 8b bd 60 ff ff ff         	movq	-160(%rbp), %rdi
  20f9ea: 48 83 ff 01                  	cmpq	$1, %rdi
  20f9ee: 83 de ff                     	sbbl	$-1, %esi
  20f9f1: 83 fe 02                     	cmpl	$2, %esi
  20f9f4: 0f 83 7c 1b 00 00            	jae	0x211576 <http_parser_execute+0x7ad6>
  20f9fa: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20fa03: 48 8b 15 ee 52 00 00         	movq	21230(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20fa0a: 48 81 f1 6a 61 00 00         	xorq	$24938, %rcx            # imm = 0x616A
  20fa11: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20fa14: 80 c3 01                     	addb	$1, %bl
  20fa17: 80 d3 00                     	adcb	$0, %bl
  20fa1a: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20fa1d: 64 c7 04 25 90 ff ff ff b5 30 00 00  	movl	$12469, %fs:-112 # imm = 0x30B5
  20fa29: f7 45 cc 00 00 00 7f         	testl	$2130706432, -52(%rbp)  # imm = 0x7F000000
  20fa30: 48 8b 75 b8                  	movq	-72(%rbp), %rsi
  20fa34: 0f 85 83 1b 00 00            	jne	0x2115bd <http_parser_execute+0x7b1d>
  20fa3a: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20fa43: 48 8b 15 ae 52 00 00         	movq	21166(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20fa4a: 48 81 f1 be 0a 00 00         	xorq	$2750, %rcx             # imm = 0xABE
  20fa51: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20fa54: 80 c3 01                     	addb	$1, %bl
  20fa57: 80 d3 00                     	adcb	$0, %bl
  20fa5a: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20fa5d: 64 c7 04 25 90 ff ff ff 5f 05 00 00  	movl	$1375, %fs:-112 # imm = 0x55F
  20fa69: 48 85 ff                     	testq	%rdi, %rdi
  20fa6c: 0f 84 8e 02 00 00            	je	0x20fd00 <http_parser_execute+0x6260>
  20fa72: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20fa7b: 48 8b 15 76 52 00 00         	movq	21110(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20fa82: 48 81 f1 76 be 00 00         	xorq	$48758, %rcx            # imm = 0xBE76
  20fa89: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20fa8c: 80 c3 01                     	addb	$1, %bl
  20fa8f: 80 d3 00                     	adcb	$0, %bl
  20fa92: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20fa95: 64 c7 04 25 90 ff ff ff 3b 5f 00 00  	movl	$24379, %fs:-112 # imm = 0x5F3B
  20faa1: 48 83 7e 18 00               	cmpq	$0, 24(%rsi)
  20faa6: 0f 84 54 02 00 00            	je	0x20fd00 <http_parser_execute+0x6260>
  20faac: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20fab5: 48 8b 15 3c 52 00 00         	movq	21052(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20fabc: 48 81 f1 19 22 00 00         	xorq	$8729, %rcx             # imm = 0x2219
  20fac3: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20fac6: 80 c3 01                     	addb	$1, %bl
  20fac9: 80 d3 00                     	adcb	$0, %bl
  20facc: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20facf: 64 c7 04 25 90 ff ff ff 0c 11 00 00  	movl	$4364, %fs:-112 # imm = 0x110C
  20fadb: e9 f7 09 00 00               	jmp	0x2104d7 <http_parser_execute+0x6a37>
  20fae0: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20fae9: 48 8b 15 08 52 00 00         	movq	21000(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20faf0: 48 81 f1 0a 63 00 00         	xorq	$25354, %rcx            # imm = 0x630A
  20faf7: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20fafa: 80 c3 01                     	addb	$1, %bl
  20fafd: 80 d3 00                     	adcb	$0, %bl
  20fb00: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20fb03: 64 c7 04 25 90 ff ff ff 85 31 00 00  	movl	$12677, %fs:-112 # imm = 0x3185
  20fb0f: e9 c6 09 00 00               	jmp	0x2104da <http_parser_execute+0x6a3a>
  20fb14: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20fb1d: 48 8b 0d d4 51 00 00         	movq	20948(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20fb24: 48 35 d2 b6 00 00            	xorq	$46802, %rax            # imm = 0xB6D2
  20fb2a: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20fb2d: 80 c2 01                     	addb	$1, %dl
  20fb30: 80 d2 00                     	adcb	$0, %dl
  20fb33: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20fb36: 64 c7 04 25 90 ff ff ff 69 5b 00 00  	movl	$23401, %fs:-112 # imm = 0x5B69
  20fb42: 45 89 f2                     	movl	%r14d, %r10d
  20fb45: 48 8b 45 a0                  	movq	-96(%rbp), %rax
  20fb49: 44 89 30                     	movl	%r14d, (%rax)
  20fb4c: 44 8b 75 c0                  	movl	-64(%rbp), %r14d
  20fb50: 41 81 e6 ff ff ff 80         	andl	$2164260863, %r14d      # imm = 0x80FFFFFF
  20fb57: 41 81 ce 00 00 00 18         	orl	$402653184, %r14d       # imm = 0x18000000
  20fb5e: 48 8b 45 d0                  	movq	-48(%rbp), %rax
  20fb62: 44 89 30                     	movl	%r14d, (%rax)
  20fb65: b8 32 00 00 00               	movl	$50, %eax
  20fb6a: 4d 89 dc                     	movq	%r11, %r12
  20fb6d: 4c 8b 5d b0                  	movq	-80(%rbp), %r11
  20fb71: 41 f7 c6 00 00 00 7f         	testl	$2130706432, %r14d      # imm = 0x7F000000
  20fb78: 75 44                        	jne	0x20fbbe <http_parser_execute+0x611e>
  20fb7a: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20fb83: 48 8b 15 6e 51 00 00         	movq	20846(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20fb8a: 48 81 f1 66 5c 00 00         	xorq	$23654, %rcx            # imm = 0x5C66
  20fb91: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20fb94: 80 c3 01                     	addb	$1, %bl
  20fb97: 80 d3 00                     	adcb	$0, %bl
  20fb9a: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20fb9d: 64 c7 04 25 90 ff ff ff 33 2e 00 00  	movl	$11827, %fs:-112 # imm = 0x2E33
  20fba9: 41 81 e6 ff ff ff 80         	andl	$2164260863, %r14d      # imm = 0x80FFFFFF
  20fbb0: 41 81 ce 00 00 00 20         	orl	$536870912, %r14d       # imm = 0x20000000
  20fbb7: 48 8b 4d d0                  	movq	-48(%rbp), %rcx
  20fbbb: 44 89 31                     	movl	%r14d, (%rcx)
  20fbbe: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20fbc7: 48 8b 15 2a 51 00 00         	movq	20778(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20fbce: 48 81 f1 7d 94 00 00         	xorq	$38013, %rcx            # imm = 0x947D
  20fbd5: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20fbd8: 80 c3 01                     	addb	$1, %bl
  20fbdb: 80 d3 00                     	adcb	$0, %bl
  20fbde: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20fbe1: 64 c7 04 25 90 ff ff ff 3e 4a 00 00  	movl	$19006, %fs:-112 # imm = 0x4A3E
  20fbed: 45 89 55 04                  	movl	%r10d, 4(%r13)
  20fbf1: 83 e0 7f                     	andl	$127, %eax
  20fbf4: b9 ff 03 fe ff               	movl	$4294837247, %ecx       # imm = 0xFFFE03FF
  20fbf9: 41 23 4d 00                  	andl	(%r13), %ecx
  20fbfd: c1 e0 0a                     	shll	$10, %eax
  20fc00: 09 c1                        	orl	%eax, %ecx
  20fc02: 41 89 4d 00                  	movl	%ecx, (%r13)
  20fc06: 4d 29 dc                     	subq	%r11, %r12
  20fc09: 4d 89 e7                     	movq	%r12, %r15
  20fc0c: e9 b3 9e ff ff               	jmp	0x209ac4 <http_parser_execute+0x24>
  20fc11: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  20fc1a: 48 8b 35 d7 50 00 00         	movq	20695(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20fc21: 48 81 f2 c8 c6 00 00         	xorq	$50888, %rdx            # imm = 0xC6C8
  20fc28: 8a 1c 16                     	movb	(%rsi,%rdx), %bl
  20fc2b: 80 c3 01                     	addb	$1, %bl
  20fc2e: 80 d3 00                     	adcb	$0, %bl
  20fc31: 88 1c 16                     	movb	%bl, (%rsi,%rdx)
  20fc34: 64 c7 04 25 90 ff ff ff 64 63 00 00  	movl	$25444, %fs:-112 # imm = 0x6364
  20fc40: eb 2f                        	jmp	0x20fc71 <http_parser_execute+0x61d1>
  20fc42: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  20fc4b: 48 8b 35 a6 50 00 00         	movq	20646(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  20fc52: 48 81 f2 51 48 00 00         	xorq	$18513, %rdx            # imm = 0x4851
  20fc59: 8a 1c 16                     	movb	(%rsi,%rdx), %bl
  20fc5c: 80 c3 01                     	addb	$1, %bl
  20fc5f: 80 d3 00                     	adcb	$0, %bl
  20fc62: 88 1c 16                     	movb	%bl, (%rsi,%rdx)
  20fc65: 64 c7 04 25 90 ff ff ff 28 24 00 00  	movl	$9256, %fs:-112 # imm = 0x2428
  20fc71: c1 e0 0a                     	shll	$10, %eax
  20fc74: 81 e1 ff 03 fe ff            	andl	$4294837247, %ecx       # imm = 0xFFFE03FF
  20fc7a: e9 67 08 00 00               	jmp	0x2104e6 <http_parser_execute+0x6a46>
  20fc7f: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20fc88: 48 8b 15 69 50 00 00         	movq	20585(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20fc8f: 48 81 f1 1d 4d 00 00         	xorq	$19741, %rcx            # imm = 0x4D1D
  20fc96: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20fc99: 80 c3 01                     	addb	$1, %bl
  20fc9c: 80 d3 00                     	adcb	$0, %bl
  20fc9f: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20fca2: 64 c7 04 25 90 ff ff ff 8e 26 00 00  	movl	$9870, %fs:-112 # imm = 0x268E
  20fcae: 25 ff 03 fe ff               	andl	$4294837247, %eax       # imm = 0xFFFE03FF
  20fcb3: 0d 00 d4 00 00               	orl	$54272, %eax            # imm = 0xD400
  20fcb8: e9 4f fb ff ff               	jmp	0x20f80c <http_parser_execute+0x5d6c>
  20fcbd: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20fcc6: 48 8b 0d 2b 50 00 00         	movq	20523(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20fccd: 48 35 a3 d3 00 00            	xorq	$54179, %rax            # imm = 0xD3A3
  20fcd3: 8a 1c 01                     	movb	(%rcx,%rax), %bl
  20fcd6: 80 c3 01                     	addb	$1, %bl
  20fcd9: 80 d3 00                     	adcb	$0, %bl
  20fcdc: 88 1c 01                     	movb	%bl, (%rcx,%rax)
  20fcdf: 64 c7 04 25 90 ff ff ff d1 69 00 00  	movl	$27089, %fs:-112 # imm = 0x69D1
  20fceb: 81 e2 03 00 fe df            	andl	$3757965315, %edx       # imm = 0xDFFE0003
  20fcf1: 81 ca 00 0c 00 00            	orl	$3072, %edx             # imm = 0xC00
  20fcf7: 41 89 55 00                  	movl	%edx, (%r13)
  20fcfb: e9 10 fb ff ff               	jmp	0x20f810 <http_parser_execute+0x5d70>
  20fd00: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20fd09: 48 8b 15 e8 4f 00 00         	movq	20456(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20fd10: 48 81 f1 37 17 00 00         	xorq	$5943, %rcx             # imm = 0x1737
  20fd17: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20fd1a: 80 c3 01                     	addb	$1, %bl
  20fd1d: 80 d3 00                     	adcb	$0, %bl
  20fd20: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20fd23: 64 c7 04 25 90 ff ff ff 9b 0b 00 00  	movl	$2971, %fs:-112 # imm = 0xB9B
  20fd2f: f7 45 cc 00 00 00 7f         	testl	$2130706432, -52(%rbp)  # imm = 0x7F000000
  20fd36: 0f 85 38 1d 00 00            	jne	0x211a74 <http_parser_execute+0x7fd4>
  20fd3c: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20fd45: 48 8b 15 ac 4f 00 00         	movq	20396(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20fd4c: 48 81 f1 a1 a0 00 00         	xorq	$41121, %rcx            # imm = 0xA0A1
  20fd53: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20fd56: 80 c3 01                     	addb	$1, %bl
  20fd59: 80 d3 00                     	adcb	$0, %bl
  20fd5c: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20fd5f: 64 c7 04 25 90 ff ff ff 50 50 00 00  	movl	$20560, %fs:-112 # imm = 0x5050
  20fd6b: 4d 85 f6                     	testq	%r14, %r14
  20fd6e: 0f 84 fb 02 00 00            	je	0x21006f <http_parser_execute+0x65cf>
  20fd74: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20fd7d: 48 8b 15 74 4f 00 00         	movq	20340(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20fd84: 48 81 f1 e4 3d 00 00         	xorq	$15844, %rcx            # imm = 0x3DE4
  20fd8b: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20fd8e: 80 c3 01                     	addb	$1, %bl
  20fd91: 80 d3 00                     	adcb	$0, %bl
  20fd94: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20fd97: 64 c7 04 25 90 ff ff ff f2 1e 00 00  	movl	$7922, %fs:-112 # imm = 0x1EF2
  20fda3: 48 83 7e 20 00               	cmpq	$0, 32(%rsi)
  20fda8: 0f 84 c1 02 00 00            	je	0x21006f <http_parser_execute+0x65cf>
  20fdae: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20fdb7: 48 8b 15 3a 4f 00 00         	movq	20282(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20fdbe: 48 81 f1 24 a0 00 00         	xorq	$40996, %rcx            # imm = 0xA024
  20fdc5: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20fdc8: 80 c3 01                     	addb	$1, %bl
  20fdcb: 80 d3 00                     	adcb	$0, %bl
  20fdce: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20fdd1: 64 c7 04 25 90 ff ff ff 12 50 00 00  	movl	$20498, %fs:-112 # imm = 0x5012
  20fddd: e9 f5 06 00 00               	jmp	0x2104d7 <http_parser_execute+0x6a37>
  20fde2: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20fdeb: 48 8b 0d 06 4f 00 00         	movq	20230(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20fdf2: 48 35 47 a3 00 00            	xorq	$41799, %rax            # imm = 0xA347
  20fdf8: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20fdfb: 80 c2 01                     	addb	$1, %dl
  20fdfe: 80 d2 00                     	adcb	$0, %dl
  20fe01: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20fe04: 64 c7 04 25 90 ff ff ff a3 51 00 00  	movl	$20899, %fs:-112 # imm = 0x51A3
  20fe10: b8 ff 03 fe ff               	movl	$4294837247, %eax       # imm = 0xFFFE03FF
  20fe15: 41 23 45 00                  	andl	(%r13), %eax
  20fe19: 0d 00 80 00 00               	orl	$32768, %eax            # imm = 0x8000
  20fe1e: e9 e9 f9 ff ff               	jmp	0x20f80c <http_parser_execute+0x5d6c>
  20fe23: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20fe2c: 48 8b 0d c5 4e 00 00         	movq	20165(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20fe33: 48 35 5b d7 00 00            	xorq	$55131, %rax            # imm = 0xD75B
  20fe39: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20fe3c: 80 c2 01                     	addb	$1, %dl
  20fe3f: 80 d2 00                     	adcb	$0, %dl
  20fe42: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20fe45: 64 c7 04 25 90 ff ff ff ad 6b 00 00  	movl	$27565, %fs:-112 # imm = 0x6BAD
  20fe51: 45 89 55 04                  	movl	%r10d, 4(%r13)
  20fe55: b8 ff 03 fe ff               	movl	$4294837247, %eax       # imm = 0xFFFE03FF
  20fe5a: 41 23 45 00                  	andl	(%r13), %eax
  20fe5e: 0d 00 e8 00 00               	orl	$59392, %eax            # imm = 0xE800
  20fe63: 41 89 45 00                  	movl	%eax, (%r13)
  20fe67: e9 9a fd ff ff               	jmp	0x20fc06 <http_parser_execute+0x6166>
  20fe6c: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20fe75: 48 8b 0d 7c 4e 00 00         	movq	20092(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20fe7c: 48 35 33 18 00 00            	xorq	$6195, %rax             # imm = 0x1833
  20fe82: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20fe85: 80 c2 01                     	addb	$1, %dl
  20fe88: 80 d2 00                     	adcb	$0, %dl
  20fe8b: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20fe8e: 64 c7 04 25 90 ff ff ff 19 0c 00 00  	movl	$3097, %fs:-112 # imm = 0xC19
  20fe9a: 45 89 11                     	movl	%r10d, (%r9)
  20fe9d: 48 8b 4d a8                  	movq	-88(%rbp), %rcx
  20fea1: 81 e1 ff ff ff 80            	andl	$2164260863, %ecx       # imm = 0x80FFFFFF
  20fea7: 81 c9 00 00 00 0f            	orl	$251658240, %ecx        # imm = 0xF000000
  20fead: 48 8b 45 d0                  	movq	-48(%rbp), %rax
  20feb1: 89 08                        	movl	%ecx, (%rax)
  20feb3: b8 0e 00 00 00               	movl	$14, %eax
  20feb8: 41 89 ce                     	movl	%ecx, %r14d
  20febb: e9 b1 fc ff ff               	jmp	0x20fb71 <http_parser_execute+0x60d1>
  20fec0: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20fec9: 48 8b 0d 28 4e 00 00         	movq	20008(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  20fed0: 48 35 6e a0 00 00            	xorq	$41070, %rax            # imm = 0xA06E
  20fed6: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20fed9: 80 c2 01                     	addb	$1, %dl
  20fedc: 80 d2 00                     	adcb	$0, %dl
  20fedf: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20fee2: 64 c7 04 25 90 ff ff ff 37 50 00 00  	movl	$20535, %fs:-112 # imm = 0x5037
  20feee: 45 89 f7                     	movl	%r14d, %r15d
  20fef1: 45 89 75 04                  	movl	%r14d, 4(%r13)
  20fef5: 44 8b 75 c0                  	movl	-64(%rbp), %r14d
  20fef9: 41 81 e6 ff ff ff 80         	andl	$2164260863, %r14d      # imm = 0x80FFFFFF
  20ff00: 41 81 ce 00 00 00 19         	orl	$419430400, %r14d       # imm = 0x19000000
  20ff07: 45 89 75 14                  	movl	%r14d, 20(%r13)
  20ff0b: 41 81 e2 ff ff 01 ff         	andl	$4278321151, %r10d      # imm = 0xFF01FFFF
  20ff12: 41 81 ca 00 00 18 00         	orl	$1572864, %r10d         # imm = 0x180000
  20ff19: 45 89 55 00                  	movl	%r10d, (%r13)
  20ff1d: 45 89 fa                     	movl	%r15d, %r10d
  20ff20: e9 40 fc ff ff               	jmp	0x20fb65 <http_parser_execute+0x60c5>
  20ff25: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20ff2e: 48 8b 15 c3 4d 00 00         	movq	19907(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20ff35: 48 81 f1 3f bb 00 00         	xorq	$47935, %rcx            # imm = 0xBB3F
  20ff3c: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20ff3f: 80 c3 01                     	addb	$1, %bl
  20ff42: 80 d3 00                     	adcb	$0, %bl
  20ff45: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20ff48: 64 c7 04 25 90 ff ff ff 9f 5d 00 00  	movl	$23967, %fs:-112 # imm = 0x5D9F
  20ff54: 45 89 11                     	movl	%r10d, (%r9)
  20ff57: 41 81 e6 ff ff ff 80         	andl	$2164260863, %r14d      # imm = 0x80FFFFFF
  20ff5e: 41 81 ce 00 00 00 11         	orl	$285212672, %r14d       # imm = 0x11000000
  20ff65: 48 8b 4d d0                  	movq	-48(%rbp), %rcx
  20ff69: 44 89 31                     	movl	%r14d, (%rcx)
  20ff6c: e9 00 fc ff ff               	jmp	0x20fb71 <http_parser_execute+0x60d1>
  20ff71: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20ff7a: 48 8b 15 77 4d 00 00         	movq	19831(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20ff81: 48 35 95 42 00 00            	xorq	$17045, %rax            # imm = 0x4295
  20ff87: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  20ff8a: 80 c3 01                     	addb	$1, %bl
  20ff8d: 80 d3 00                     	adcb	$0, %bl
  20ff90: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20ff93: 64 c7 04 25 90 ff ff ff 4a 21 00 00  	movl	$8522, %fs:-112 # imm = 0x214A
  20ff9f: 81 e1 ff 03 fe ff            	andl	$4294837247, %ecx       # imm = 0xFFFE03FF
  20ffa5: 81 c9 00 f4 00 00            	orl	$62464, %ecx            # imm = 0xF400
  20ffab: e9 38 05 00 00               	jmp	0x2104e8 <http_parser_execute+0x6a48>
  20ffb0: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20ffb9: 48 8b 15 38 4d 00 00         	movq	19768(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20ffc0: 48 81 f1 96 e5 00 00         	xorq	$58774, %rcx            # imm = 0xE596
  20ffc7: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20ffca: 80 c3 01                     	addb	$1, %bl
  20ffcd: 80 d3 00                     	adcb	$0, %bl
  20ffd0: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20ffd3: 64 c7 04 25 90 ff ff ff cb 72 00 00  	movl	$29387, %fs:-112 # imm = 0x72CB
  20ffdf: 25 03 00 fe c1               	andl	$3254648835, %eax       # imm = 0xC1FE0003
  20ffe4: 0d 00 4c 00 00               	orl	$19456, %eax            # imm = 0x4C00
  20ffe9: e9 1e f8 ff ff               	jmp	0x20f80c <http_parser_execute+0x5d6c>
  20ffee: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20fff7: 48 8b 15 fa 4c 00 00         	movq	19706(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  20fffe: 48 81 f1 d5 c9 00 00         	xorq	$51669, %rcx            # imm = 0xC9D5
  210005: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  210008: 80 c3 01                     	addb	$1, %bl
  21000b: 80 d3 00                     	adcb	$0, %bl
  21000e: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  210011: 64 c7 04 25 90 ff ff ff ea 64 00 00  	movl	$25834, %fs:-112 # imm = 0x64EA
  21001d: 25 03 00 fe df               	andl	$3757965315, %eax       # imm = 0xDFFE0003
  210022: 0d 00 14 00 00               	orl	$5120, %eax             # imm = 0x1400
  210027: e9 e0 f7 ff ff               	jmp	0x20f80c <http_parser_execute+0x5d6c>
  21002c: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  210035: 48 8b 15 bc 4c 00 00         	movq	19644(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  21003c: 48 81 f1 60 19 00 00         	xorq	$6496, %rcx             # imm = 0x1960
  210043: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  210046: 80 c3 01                     	addb	$1, %bl
  210049: 80 d3 00                     	adcb	$0, %bl
  21004c: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  21004f: 64 c7 04 25 90 ff ff ff b0 0c 00 00  	movl	$3248, %fs:-112 # imm = 0xCB0
  21005b: c1 e0 0a                     	shll	$10, %eax
  21005e: 81 e7 ff 03 fe ff            	andl	$4294837247, %edi       # imm = 0xFFFE03FF
  210064: 09 c7                        	orl	%eax, %edi
  210066: 41 89 7d 00                  	movl	%edi, (%r13)
  21006a: e9 a1 f7 ff ff               	jmp	0x20f810 <http_parser_execute+0x5d70>
  21006f: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  210078: 48 8b 15 79 4c 00 00         	movq	19577(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  21007f: 48 81 f1 5b 59 00 00         	xorq	$22875, %rcx            # imm = 0x595B
  210086: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  210089: 80 c3 01                     	addb	$1, %bl
  21008c: 80 d3 00                     	adcb	$0, %bl
  21008f: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  210092: 64 c7 04 25 90 ff ff ff ad 2c 00 00  	movl	$11437, %fs:-112 # imm = 0x2CAD
  21009e: 8b 7d cc                     	movl	-52(%rbp), %edi
  2100a1: f7 c7 00 00 00 7f            	testl	$2130706432, %edi       # imm = 0x7F000000
  2100a7: 0f 85 71 1b 00 00            	jne	0x211c1e <http_parser_execute+0x817e>
  2100ad: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  2100b6: 48 8b 15 3b 4c 00 00         	movq	19515(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  2100bd: 48 81 f1 e6 79 00 00         	xorq	$31206, %rcx            # imm = 0x79E6
  2100c4: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  2100c7: 80 c3 01                     	addb	$1, %bl
  2100ca: 80 d3 00                     	adcb	$0, %bl
  2100cd: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  2100d0: 64 c7 04 25 90 ff ff ff f3 3c 00 00  	movl	$15603, %fs:-112 # imm = 0x3CF3
  2100dc: 4d 85 db                     	testq	%r11, %r11
  2100df: 0f 84 3e 01 00 00            	je	0x210223 <http_parser_execute+0x6783>
  2100e5: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  2100ee: 48 8b 15 03 4c 00 00         	movq	19459(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  2100f5: 48 81 f1 57 8c 00 00         	xorq	$35927, %rcx            # imm = 0x8C57
  2100fc: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  2100ff: 80 c3 01                     	addb	$1, %bl
  210102: 80 d3 00                     	adcb	$0, %bl
  210105: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  210108: 64 c7 04 25 90 ff ff ff 2b 46 00 00  	movl	$17963, %fs:-112 # imm = 0x462B
  210114: 48 83 7e 08 00               	cmpq	$0, 8(%rsi)
  210119: 0f 84 04 01 00 00            	je	0x210223 <http_parser_execute+0x6783>
  21011f: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  210128: 48 8b 15 c9 4b 00 00         	movq	19401(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  21012f: 48 81 f1 42 9d 00 00         	xorq	$40258, %rcx            # imm = 0x9D42
  210136: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  210139: 80 c3 01                     	addb	$1, %bl
  21013c: 80 d3 00                     	adcb	$0, %bl
  21013f: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  210142: 64 c7 04 25 90 ff ff ff a1 4e 00 00  	movl	$20129, %fs:-112 # imm = 0x4EA1
  21014e: e9 84 03 00 00               	jmp	0x2104d7 <http_parser_execute+0x6a37>
  210153: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  21015c: 48 8b 0d 95 4b 00 00         	movq	19349(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  210163: 48 35 7e 27 00 00            	xorq	$10110, %rax            # imm = 0x277E
  210169: 8a 14 01                     	movb	(%rcx,%rax), %dl
  21016c: 80 c2 01                     	addb	$1, %dl
  21016f: 80 d2 00                     	adcb	$0, %dl
  210172: 88 14 01                     	movb	%dl, (%rcx,%rax)
  210175: 64 c7 04 25 90 ff ff ff bf 13 00 00  	movl	$5055, %fs:-112 # imm = 0x13BF
  210181: 45 89 11                     	movl	%r10d, (%r9)
  210184: 41 81 e6 ff ff ff 80         	andl	$2164260863, %r14d      # imm = 0x80FFFFFF
  21018b: 41 81 ce 00 00 00 19         	orl	$419430400, %r14d       # imm = 0x19000000
  210192: 48 8b 45 d0                  	movq	-48(%rbp), %rax
  210196: 44 89 30                     	movl	%r14d, (%rax)
  210199: b8 30 00 00 00               	movl	$48, %eax
  21019e: e9 ce f9 ff ff               	jmp	0x20fb71 <http_parser_execute+0x60d1>
  2101a3: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  2101ac: 48 8b 0d 45 4b 00 00         	movq	19269(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  2101b3: 48 35 dc 73 00 00            	xorq	$29660, %rax            # imm = 0x73DC
  2101b9: 8a 14 01                     	movb	(%rcx,%rax), %dl
  2101bc: 80 c2 01                     	addb	$1, %dl
  2101bf: 80 d2 00                     	adcb	$0, %dl
  2101c2: 88 14 01                     	movb	%dl, (%rcx,%rax)
  2101c5: 64 c7 04 25 90 ff ff ff ee 39 00 00  	movl	$14830, %fs:-112 # imm = 0x39EE
  2101d1: eb 2e                        	jmp	0x210201 <http_parser_execute+0x6761>
  2101d3: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  2101dc: 48 8b 0d 15 4b 00 00         	movq	19221(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  2101e3: 48 35 c2 1f 00 00            	xorq	$8130, %rax             # imm = 0x1FC2
  2101e9: 8a 14 01                     	movb	(%rcx,%rax), %dl
  2101ec: 80 c2 01                     	addb	$1, %dl
  2101ef: 80 d2 00                     	adcb	$0, %dl
  2101f2: 88 14 01                     	movb	%dl, (%rcx,%rax)
  2101f5: 64 c7 04 25 90 ff ff ff e1 0f 00 00  	movl	$4065, %fs:-112 # imm = 0xFE1
  210201: 45 89 11                     	movl	%r10d, (%r9)
  210204: 41 81 e6 ff ff ff 80         	andl	$2164260863, %r14d      # imm = 0x80FFFFFF
  21020b: 41 81 ce 00 00 00 1a         	orl	$436207616, %r14d       # imm = 0x1A000000
  210212: 48 8b 45 d0                  	movq	-48(%rbp), %rax
  210216: 44 89 30                     	movl	%r14d, (%rax)
  210219: b8 39 00 00 00               	movl	$57, %eax
  21021e: e9 4e f9 ff ff               	jmp	0x20fb71 <http_parser_execute+0x60d1>
  210223: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  21022c: 48 8b 15 c5 4a 00 00         	movq	19141(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  210233: 48 81 f1 34 58 00 00         	xorq	$22580, %rcx            # imm = 0x5834
  21023a: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  21023d: 80 c3 01                     	addb	$1, %bl
  210240: 80 d3 00                     	adcb	$0, %bl
  210243: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  210246: 64 c7 04 25 90 ff ff ff 1a 2c 00 00  	movl	$11290, %fs:-112 # imm = 0x2C1A
  210252: f7 c7 00 00 00 7f            	testl	$2130706432, %edi       # imm = 0x7F000000
  210258: 0f 85 95 1a 00 00            	jne	0x211cf3 <http_parser_execute+0x8253>
  21025e: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  210267: 48 8b 15 8a 4a 00 00         	movq	19082(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  21026e: 48 81 f1 19 03 00 00         	xorq	$793, %rcx              # imm = 0x319
  210275: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  210278: 80 c3 01                     	addb	$1, %bl
  21027b: 80 d3 00                     	adcb	$0, %bl
  21027e: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  210281: 64 c7 04 25 90 ff ff ff 8c 01 00 00  	movl	$396, %fs:-112  # imm = 0x18C
  21028d: 4d 85 c0                     	testq	%r8, %r8
  210290: 0f 84 65 01 00 00            	je	0x2103fb <http_parser_execute+0x695b>
  210296: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  21029f: 48 8b 15 52 4a 00 00         	movq	19026(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  2102a6: 48 81 f1 d5 70 00 00         	xorq	$28885, %rcx            # imm = 0x70D5
  2102ad: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  2102b0: 80 c3 01                     	addb	$1, %bl
  2102b3: 80 d3 00                     	adcb	$0, %bl
  2102b6: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  2102b9: 64 c7 04 25 90 ff ff ff 6a 38 00 00  	movl	$14442, %fs:-112 # imm = 0x386A
  2102c5: 48 83 7e 30 00               	cmpq	$0, 48(%rsi)
  2102ca: 0f 84 2b 01 00 00            	je	0x2103fb <http_parser_execute+0x695b>
  2102d0: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  2102d9: 48 8b 15 18 4a 00 00         	movq	18968(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  2102e0: 48 81 f1 7a 9e 00 00         	xorq	$40570, %rcx            # imm = 0x9E7A
  2102e7: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  2102ea: 80 c3 01                     	addb	$1, %bl
  2102ed: 80 d3 00                     	adcb	$0, %bl
  2102f0: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  2102f3: 64 c7 04 25 90 ff ff ff 3d 4f 00 00  	movl	$20285, %fs:-112 # imm = 0x4F3D
  2102ff: e9 d3 01 00 00               	jmp	0x2104d7 <http_parser_execute+0x6a37>
  210304: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  21030d: 48 8b 0d e4 49 00 00         	movq	18916(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  210314: 48 35 aa 5e 00 00            	xorq	$24234, %rax            # imm = 0x5EAA
  21031a: 8a 14 01                     	movb	(%rcx,%rax), %dl
  21031d: 80 c2 01                     	addb	$1, %dl
  210320: 80 d2 00                     	adcb	$0, %dl
  210323: 88 14 01                     	movb	%dl, (%rcx,%rax)
  210326: 64 c7 04 25 90 ff ff ff 55 2f 00 00  	movl	$12117, %fs:-112 # imm = 0x2F55
  210332: b8 ff 03 fe ff               	movl	$4294837247, %eax       # imm = 0xFFFE03FF
  210337: 41 23 45 00                  	andl	(%r13), %eax
  21033b: 0d 00 44 00 00               	orl	$17408, %eax            # imm = 0x4400
  210340: e9 c7 f4 ff ff               	jmp	0x20f80c <http_parser_execute+0x5d6c>
  210345: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  21034e: 48 8b 0d a3 49 00 00         	movq	18851(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  210355: 48 35 a1 e0 00 00            	xorq	$57505, %rax            # imm = 0xE0A1
  21035b: 8a 14 01                     	movb	(%rcx,%rax), %dl
  21035e: 80 c2 01                     	addb	$1, %dl
  210361: 80 d2 00                     	adcb	$0, %dl
  210364: 88 14 01                     	movb	%dl, (%rcx,%rax)
  210367: 64 c7 04 25 90 ff ff ff 50 70 00 00  	movl	$28752, %fs:-112 # imm = 0x7050
  210373: b8 ff 03 fe ff               	movl	$4294837247, %eax       # imm = 0xFFFE03FF
  210378: 41 23 45 00                  	andl	(%r13), %eax
  21037c: 0d 00 b0 00 00               	orl	$45056, %eax            # imm = 0xB000
  210381: e9 86 f4 ff ff               	jmp	0x20f80c <http_parser_execute+0x5d6c>
  210386: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  21038f: 48 8b 0d 62 49 00 00         	movq	18786(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  210396: 48 35 01 75 00 00            	xorq	$29953, %rax            # imm = 0x7501
  21039c: 8a 14 01                     	movb	(%rcx,%rax), %dl
  21039f: 80 c2 01                     	addb	$1, %dl
  2103a2: 80 d2 00                     	adcb	$0, %dl
  2103a5: 88 14 01                     	movb	%dl, (%rcx,%rax)
  2103a8: 64 c7 04 25 90 ff ff ff 80 3a 00 00  	movl	$14976, %fs:-112 # imm = 0x3A80
  2103b4: b8 ff 03 fe ff               	movl	$4294837247, %eax       # imm = 0xFFFE03FF
  2103b9: 41 23 45 00                  	andl	(%r13), %eax
  2103bd: 0d 00 b8 00 00               	orl	$47104, %eax            # imm = 0xB800
  2103c2: e9 45 f4 ff ff               	jmp	0x20f80c <http_parser_execute+0x5d6c>
  2103c7: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  2103d0: 48 8b 15 21 49 00 00         	movq	18721(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  2103d7: 48 81 f1 42 40 00 00         	xorq	$16450, %rcx            # imm = 0x4042
  2103de: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  2103e1: 80 c3 01                     	addb	$1, %bl
  2103e4: 80 d3 00                     	adcb	$0, %bl
  2103e7: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  2103ea: 64 c7 04 25 90 ff ff ff 21 20 00 00  	movl	$8225, %fs:-112 # imm = 0x2021
  2103f6: e9 60 fc ff ff               	jmp	0x21005b <http_parser_execute+0x65bb>
  2103fb: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  210404: 48 8b 15 ed 48 00 00         	movq	18669(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  21040b: 48 81 f1 5f 14 00 00         	xorq	$5215, %rcx             # imm = 0x145F
  210412: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  210415: 80 c3 01                     	addb	$1, %bl
  210418: 80 d3 00                     	adcb	$0, %bl
  21041b: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  21041e: 64 c7 04 25 90 ff ff ff 2f 0a 00 00  	movl	$2607, %fs:-112 # imm = 0xA2F
  21042a: f7 c7 00 00 00 7f            	testl	$2130706432, %edi       # imm = 0x7F000000
  210430: 0f 85 92 19 00 00            	jne	0x211dc8 <http_parser_execute+0x8328>
  210436: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  21043f: 48 8b 15 b2 48 00 00         	movq	18610(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  210446: 48 81 f1 8f 8b 00 00         	xorq	$35727, %rcx            # imm = 0x8B8F
  21044d: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  210450: 80 c3 01                     	addb	$1, %bl
  210453: 80 d3 00                     	adcb	$0, %bl
  210456: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  210459: 64 c7 04 25 90 ff ff ff c7 45 00 00  	movl	$17863, %fs:-112 # imm = 0x45C7
  210465: 4d 85 c9                     	testq	%r9, %r9
  210468: 0f 84 28 02 00 00            	je	0x210696 <http_parser_execute+0x6bf6>
  21046e: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  210477: 48 8b 15 7a 48 00 00         	movq	18554(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  21047e: 48 81 f1 04 70 00 00         	xorq	$28676, %rcx            # imm = 0x7004
  210485: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  210488: 80 c3 01                     	addb	$1, %bl
  21048b: 80 d3 00                     	adcb	$0, %bl
  21048e: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  210491: 64 c7 04 25 90 ff ff ff 02 38 00 00  	movl	$14338, %fs:-112 # imm = 0x3802
  21049d: 48 83 7e 10 00               	cmpq	$0, 16(%rsi)
  2104a2: 0f 84 ee 01 00 00            	je	0x210696 <http_parser_execute+0x6bf6>
  2104a8: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  2104b1: 48 8b 15 40 48 00 00         	movq	18496(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  2104b8: 48 81 f1 68 18 00 00         	xorq	$6248, %rcx             # imm = 0x1868
  2104bf: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  2104c2: 80 c3 01                     	addb	$1, %bl
  2104c5: 80 d3 00                     	adcb	$0, %bl
  2104c8: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  2104cb: 64 c7 04 25 90 ff ff ff 34 0c 00 00  	movl	$3124, %fs:-112 # imm = 0xC34
  2104d7: 83 e0 7f                     	andl	$127, %eax
  2104da: c1 e0 0a                     	shll	$10, %eax
  2104dd: b9 ff 03 fe ff               	movl	$4294837247, %ecx       # imm = 0xFFFE03FF
  2104e2: 41 23 4d 00                  	andl	(%r13), %ecx
  2104e6: 09 c1                        	orl	%eax, %ecx
  2104e8: 41 89 4d 00                  	movl	%ecx, (%r13)
  2104ec: e9 1f f3 ff ff               	jmp	0x20f810 <http_parser_execute+0x5d70>
  2104f1: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  2104fa: 48 8b 15 f7 47 00 00         	movq	18423(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  210501: 48 81 f1 3f 80 00 00         	xorq	$32831, %rcx            # imm = 0x803F
  210508: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  21050b: 80 c3 01                     	addb	$1, %bl
  21050e: 80 d3 00                     	adcb	$0, %bl
  210511: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  210514: 64 c7 04 25 90 ff ff ff 1f 40 00 00  	movl	$16415, %fs:-112 # imm = 0x401F
  210520: 44 8b 75 cc                  	movl	-52(%rbp), %r14d
  210524: 41 81 e6 ff ff ff 80         	andl	$2164260863, %r14d      # imm = 0x80FFFFFF
  21052b: 41 81 ce 00 00 00 0c         	orl	$201326592, %r14d       # imm = 0xC000000
  210532: e9 2e fa ff ff               	jmp	0x20ff65 <http_parser_execute+0x64c5>
  210537: 44 89 f6                     	movl	%r14d, %esi
  21053a: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  210543: 48 8b 0d ae 47 00 00         	movq	18350(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  21054a: 48 35 5e b0 00 00            	xorq	$45150, %rax            # imm = 0xB05E
  210550: 8a 14 01                     	movb	(%rcx,%rax), %dl
  210553: 80 c2 01                     	addb	$1, %dl
  210556: 80 d2 00                     	adcb	$0, %dl
  210559: 88 14 01                     	movb	%dl, (%rcx,%rax)
  21055c: 64 c7 04 25 90 ff ff ff 2f 58 00 00  	movl	$22575, %fs:-112 # imm = 0x582F
  210568: 40 f6 c7 03                  	testb	$3, %dil
  21056c: b9 12 00 00 00               	movl	$18, %ecx
  210571: b8 04 00 00 00               	movl	$4, %eax
  210576: 0f 44 c1                     	cmovel	%ecx, %eax
  210579: 41 f7 c6 00 00 00 7f         	testl	$2130706432, %r14d      # imm = 0x7F000000
  210580: 0f 85 89 18 00 00            	jne	0x211e0f <http_parser_execute+0x836f>
  210586: 41 89 f8                     	movl	%edi, %r8d
  210589: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  210592: 48 8b 15 5f 47 00 00         	movq	18271(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  210599: 48 81 f1 aa ec 00 00         	xorq	$60586, %rcx            # imm = 0xECAA
  2105a0: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  2105a3: 80 c3 01                     	addb	$1, %bl
  2105a6: 80 d3 00                     	adcb	$0, %bl
  2105a9: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  2105ac: 64 c7 04 25 90 ff ff ff 55 76 00 00  	movl	$30293, %fs:-112 # imm = 0x7655
  2105b8: 48 8b 4d b8                  	movq	-72(%rbp), %rcx
  2105bc: 48 83 79 38 00               	cmpq	$0, 56(%rcx)
  2105c1: 0f 84 84 0e 00 00            	je	0x21144b <http_parser_execute+0x79ab>
  2105c7: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  2105d0: 48 8b 15 21 47 00 00         	movq	18209(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  2105d7: 48 81 f1 39 aa 00 00         	xorq	$43577, %rcx            # imm = 0xAA39
  2105de: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  2105e1: 80 c3 01                     	addb	$1, %bl
  2105e4: 80 d3 00                     	adcb	$0, %bl
  2105e7: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  2105ea: 64 c7 04 25 90 ff ff ff 1c 55 00 00  	movl	$21788, %fs:-112 # imm = 0x551C
  2105f6: c1 e0 0a                     	shll	$10, %eax
  2105f9: 41 81 e0 ff 03 fe ff         	andl	$4294837247, %r8d       # imm = 0xFFFE03FF
  210600: 41 09 c0                     	orl	%eax, %r8d
  210603: 45 89 45 00                  	movl	%r8d, (%r13)
  210607: e9 04 f2 ff ff               	jmp	0x20f810 <http_parser_execute+0x5d70>
  21060c: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  210615: 48 8b 0d dc 46 00 00         	movq	18140(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  21061c: 48 35 18 36 00 00            	xorq	$13848, %rax            # imm = 0x3618
  210622: 8a 14 01                     	movb	(%rcx,%rax), %dl
  210625: 80 c2 01                     	addb	$1, %dl
  210628: 80 d2 00                     	adcb	$0, %dl
  21062b: 88 14 01                     	movb	%dl, (%rcx,%rax)
  21062e: 64 c7 04 25 90 ff ff ff 0c 1b 00 00  	movl	$6924, %fs:-112 # imm = 0x1B0C
  21063a: 45 89 11                     	movl	%r10d, (%r9)
  21063d: 41 81 e6 ff ff ff 80         	andl	$2164260863, %r14d      # imm = 0x80FFFFFF
  210644: 41 81 ce 00 00 00 1c         	orl	$469762048, %r14d       # imm = 0x1C000000
  21064b: 48 8b 45 d0                  	movq	-48(%rbp), %rax
  21064f: 44 89 30                     	movl	%r14d, (%rax)
  210652: b8 20 00 00 00               	movl	$32, %eax
  210657: e9 15 f5 ff ff               	jmp	0x20fb71 <http_parser_execute+0x60d1>
  21065c: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  210665: 48 8b 15 8c 46 00 00         	movq	18060(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  21066c: 48 81 f1 bb 2a 00 00         	xorq	$10939, %rcx            # imm = 0x2ABB
  210673: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  210676: 80 c3 01                     	addb	$1, %bl
  210679: 80 d3 00                     	adcb	$0, %bl
  21067c: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  21067f: 64 c7 04 25 90 ff ff ff 5d 15 00 00  	movl	$5469, %fs:-112 # imm = 0x155D
  21068b: c1 e0 0a                     	shll	$10, %eax
  21068e: 8b 4d c0                     	movl	-64(%rbp), %ecx
  210691: e9 de f5 ff ff               	jmp	0x20fc74 <http_parser_execute+0x61d4>
  210696: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  21069f: 48 8b 15 52 46 00 00         	movq	18002(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  2106a6: 48 81 f1 31 b4 00 00         	xorq	$46129, %rcx            # imm = 0xB431
  2106ad: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  2106b0: 80 c3 01                     	addb	$1, %bl
  2106b3: 80 d3 00                     	adcb	$0, %bl
  2106b6: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  2106b9: 64 c7 04 25 90 ff ff ff 18 5a 00 00  	movl	$23064, %fs:-112 # imm = 0x5A18
  2106c5: 45 89 55 04                  	movl	%r10d, 4(%r13)
  2106c9: 83 e0 7f                     	andl	$127, %eax
  2106cc: c1 e0 0a                     	shll	$10, %eax
  2106cf: b9 ff 03 fe ff               	movl	$4294837247, %ecx       # imm = 0xFFFE03FF
  2106d4: 41 23 4d 00                  	andl	(%r13), %ecx
  2106d8: 09 c1                        	orl	%eax, %ecx
  2106da: 41 89 4d 00                  	movl	%ecx, (%r13)
  2106de: e9 e1 93 ff ff               	jmp	0x209ac4 <http_parser_execute+0x24>
  2106e3: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  2106ec: 48 8b 0d 05 46 00 00         	movq	17925(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  2106f3: 48 35 2a 2f 00 00            	xorq	$12074, %rax            # imm = 0x2F2A
  2106f9: 8a 14 01                     	movb	(%rcx,%rax), %dl
  2106fc: 80 c2 01                     	addb	$1, %dl
  2106ff: 80 d2 00                     	adcb	$0, %dl
  210702: 88 14 01                     	movb	%dl, (%rcx,%rax)
  210705: 64 c7 04 25 90 ff ff ff 95 17 00 00  	movl	$6037, %fs:-112 # imm = 0x1795
  210711: 44 8b 75 cc                  	movl	-52(%rbp), %r14d
  210715: 41 81 e6 ff ff ff 80         	andl	$2164260863, %r14d      # imm = 0x80FFFFFF
  21071c: 41 81 ce 00 00 00 0d         	orl	$218103808, %r14d       # imm = 0xD000000
  210723: 48 8b 45 d0                  	movq	-48(%rbp), %rax
  210727: 44 89 30                     	movl	%r14d, (%rax)
  21072a: b8 01 00 00 00               	movl	$1, %eax
  21072f: e9 3d f4 ff ff               	jmp	0x20fb71 <http_parser_execute+0x60d1>
  210734: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  21073d: 48 8b 0d b4 45 00 00         	movq	17844(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  210744: 48 35 e6 11 00 00            	xorq	$4582, %rax             # imm = 0x11E6
  21074a: 8a 14 01                     	movb	(%rcx,%rax), %dl
  21074d: 80 c2 01                     	addb	$1, %dl
  210750: 80 d2 00                     	adcb	$0, %dl
  210753: 88 14 01                     	movb	%dl, (%rcx,%rax)
  210756: 64 c7 04 25 90 ff ff ff f3 08 00 00  	movl	$2291, %fs:-112 # imm = 0x8F3
  210762: 45 89 11                     	movl	%r10d, (%r9)
  210765: 41 81 e6 ff ff ff 80         	andl	$2164260863, %r14d      # imm = 0x80FFFFFF
  21076c: 41 81 ce 00 00 00 0e         	orl	$234881024, %r14d       # imm = 0xE000000
  210773: 48 8b 45 d0                  	movq	-48(%rbp), %rax
  210777: 44 89 30                     	movl	%r14d, (%rax)
  21077a: b8 2a 00 00 00               	movl	$42, %eax
  21077f: e9 ed f3 ff ff               	jmp	0x20fb71 <http_parser_execute+0x60d1>
  210784: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  21078d: 48 8b 0d 64 45 00 00         	movq	17764(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  210794: 48 35 00 3c 00 00            	xorq	$15360, %rax            # imm = 0x3C00
  21079a: 8a 14 01                     	movb	(%rcx,%rax), %dl
  21079d: 80 c2 01                     	addb	$1, %dl
  2107a0: 80 d2 00                     	adcb	$0, %dl
  2107a3: 88 14 01                     	movb	%dl, (%rcx,%rax)
  2107a6: 64 c7 04 25 90 ff ff ff 00 1e 00 00  	movl	$7680, %fs:-112 # imm = 0x1E00
  2107b2: 45 89 11                     	movl	%r10d, (%r9)
  2107b5: 48 8b 4d a8                  	movq	-88(%rbp), %rcx
  2107b9: 81 e1 ff ff ff 80            	andl	$2164260863, %ecx       # imm = 0x80FFFFFF
  2107bf: 81 c9 00 00 00 0f            	orl	$251658240, %ecx        # imm = 0xF000000
  2107c5: 48 8b 45 d0                  	movq	-48(%rbp), %rax
  2107c9: 89 08                        	movl	%ecx, (%rax)
  2107cb: b8 0d 00 00 00               	movl	$13, %eax
  2107d0: e9 e3 f6 ff ff               	jmp	0x20feb8 <http_parser_execute+0x6418>
  2107d5: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  2107de: 48 8b 0d 13 45 00 00         	movq	17683(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  2107e5: 48 35 d6 c0 00 00            	xorq	$49366, %rax            # imm = 0xC0D6
  2107eb: 8a 14 01                     	movb	(%rcx,%rax), %dl
  2107ee: 80 c2 01                     	addb	$1, %dl
  2107f1: 80 d2 00                     	adcb	$0, %dl
  2107f4: 88 14 01                     	movb	%dl, (%rcx,%rax)
  2107f7: 64 c7 04 25 90 ff ff ff 6b 60 00 00  	movl	$24683, %fs:-112 # imm = 0x606B
  210803: 45 89 11                     	movl	%r10d, (%r9)
  210806: 41 81 e6 ff ff ff 80         	andl	$2164260863, %r14d      # imm = 0x80FFFFFF
  21080d: 41 81 ce 00 00 00 10         	orl	$268435456, %r14d       # imm = 0x10000000
  210814: 48 8b 45 d0                  	movq	-48(%rbp), %rax
  210818: 44 89 30                     	movl	%r14d, (%rax)
  21081b: b8 13 00 00 00               	movl	$19, %eax
  210820: e9 4c f3 ff ff               	jmp	0x20fb71 <http_parser_execute+0x60d1>
  210825: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  21082e: 48 8b 0d c3 44 00 00         	movq	17603(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  210835: 48 35 84 68 00 00            	xorq	$26756, %rax            # imm = 0x6884
  21083b: 8a 14 01                     	movb	(%rcx,%rax), %dl
  21083e: 80 c2 01                     	addb	$1, %dl
  210841: 80 d2 00                     	adcb	$0, %dl
  210844: 88 14 01                     	movb	%dl, (%rcx,%rax)
  210847: 64 c7 04 25 90 ff ff ff 42 34 00 00  	movl	$13378, %fs:-112 # imm = 0x3442
  210853: 48 8b 4d a8                  	movq	-88(%rbp), %rcx
  210857: 81 e1 ff ff ff 80            	andl	$2164260863, %ecx       # imm = 0x80FFFFFF
  21085d: 81 c9 00 00 00 1c            	orl	$469762048, %ecx        # imm = 0x1C000000
  210863: 48 8b 45 d0                  	movq	-48(%rbp), %rax
  210867: 89 08                        	movl	%ecx, (%rax)
  210869: b8 04 00 00 00               	movl	$4, %eax
  21086e: e9 45 f6 ff ff               	jmp	0x20feb8 <http_parser_execute+0x6418>
  210873: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  21087c: 48 8b 15 75 44 00 00         	movq	17525(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  210883: 48 35 e7 ae 00 00            	xorq	$44775, %rax            # imm = 0xAEE7
  210889: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  21088c: 80 c3 01                     	addb	$1, %bl
  21088f: 80 d3 00                     	adcb	$0, %bl
  210892: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  210895: 64 c7 04 25 90 ff ff ff 73 57 00 00  	movl	$22387, %fs:-112 # imm = 0x5773
  2108a1: 45 89 11                     	movl	%r10d, (%r9)
  2108a4: 41 81 e6 ff ff ff 80         	andl	$2164260863, %r14d      # imm = 0x80FFFFFF
  2108ab: 41 81 ce 00 00 00 18         	orl	$402653184, %r14d       # imm = 0x18000000
  2108b2: 48 8b 45 d0                  	movq	-48(%rbp), %rax
  2108b6: 44 89 30                     	movl	%r14d, (%rax)
  2108b9: b8 2d 00 00 00               	movl	$45, %eax
  2108be: 49 89 cc                     	movq	%rcx, %r12
  2108c1: e9 ab f2 ff ff               	jmp	0x20fb71 <http_parser_execute+0x60d1>
  2108c6: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  2108cf: 48 8b 0d 22 44 00 00         	movq	17442(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  2108d6: 48 35 18 6a 00 00            	xorq	$27160, %rax            # imm = 0x6A18
  2108dc: 8a 14 01                     	movb	(%rcx,%rax), %dl
  2108df: 80 c2 01                     	addb	$1, %dl
  2108e2: 80 d2 00                     	adcb	$0, %dl
  2108e5: 88 14 01                     	movb	%dl, (%rcx,%rax)
  2108e8: 64 c7 04 25 90 ff ff ff 0c 35 00 00  	movl	$13580, %fs:-112 # imm = 0x350C
  2108f4: eb 2e                        	jmp	0x210924 <http_parser_execute+0x6e84>
  2108f6: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  2108ff: 48 8b 0d f2 43 00 00         	movq	17394(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  210906: 48 35 d8 dc 00 00            	xorq	$56536, %rax            # imm = 0xDCD8
  21090c: 8a 14 01                     	movb	(%rcx,%rax), %dl
  21090f: 80 c2 01                     	addb	$1, %dl
  210912: 80 d2 00                     	adcb	$0, %dl
  210915: 88 14 01                     	movb	%dl, (%rcx,%rax)
  210918: 64 c7 04 25 90 ff ff ff 6c 6e 00 00  	movl	$28268, %fs:-112 # imm = 0x6E6C
  210924: 45 89 f7                     	movl	%r14d, %r15d
  210927: 45 89 75 04                  	movl	%r14d, 4(%r13)
  21092b: 44 8b 75 c0                  	movl	-64(%rbp), %r14d
  21092f: 41 81 e6 ff ff ff 80         	andl	$2164260863, %r14d      # imm = 0x80FFFFFF
  210936: 41 81 ce 00 00 00 19         	orl	$419430400, %r14d       # imm = 0x19000000
  21093d: 45 89 75 14                  	movl	%r14d, 20(%r13)
  210941: 41 81 e2 ff ff 01 ff         	andl	$4278321151, %r10d      # imm = 0xFF01FFFF
  210948: 41 81 ca 00 00 16 00         	orl	$1441792, %r10d         # imm = 0x160000
  21094f: e9 c5 f5 ff ff               	jmp	0x20ff19 <http_parser_execute+0x6479>
  210954: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  21095d: 48 8b 15 94 43 00 00         	movq	17300(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  210964: 48 81 f1 85 48 00 00         	xorq	$18565, %rcx            # imm = 0x4885
  21096b: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  21096e: 80 c3 01                     	addb	$1, %bl
  210971: 80 d3 00                     	adcb	$0, %bl
  210974: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  210977: 64 c7 04 25 90 ff ff ff 42 24 00 00  	movl	$9282, %fs:-112 # imm = 0x2442
  210983: 48 8b 4d a0                  	movq	-96(%rbp), %rcx
  210987: 44 89 11                     	movl	%r10d, (%rcx)
  21098a: 44 8b 75 c0                  	movl	-64(%rbp), %r14d
  21098e: 41 81 e6 ff ff ff 80         	andl	$2164260863, %r14d      # imm = 0x80FFFFFF
  210995: 41 81 ce 00 00 00 0c         	orl	$201326592, %r14d       # imm = 0xC000000
  21099c: 48 8b 4d d0                  	movq	-48(%rbp), %rcx
  2109a0: 44 89 31                     	movl	%r14d, (%rcx)
  2109a3: e9 c5 f1 ff ff               	jmp	0x20fb6d <http_parser_execute+0x60cd>
  2109a8: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  2109b1: 48 8b 0d 40 43 00 00         	movq	17216(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  2109b8: 48 35 5f dd 00 00            	xorq	$56671, %rax            # imm = 0xDD5F
  2109be: 8a 14 01                     	movb	(%rcx,%rax), %dl
  2109c1: 80 c2 01                     	addb	$1, %dl
  2109c4: 80 d2 00                     	adcb	$0, %dl
  2109c7: 88 14 01                     	movb	%dl, (%rcx,%rax)
  2109ca: 64 c7 04 25 90 ff ff ff af 6e 00 00  	movl	$28335, %fs:-112 # imm = 0x6EAF
  2109d6: 41 81 e6 ff ff ff 80         	andl	$2164260863, %r14d      # imm = 0x80FFFFFF
  2109dd: 41 81 ce 00 00 00 21         	orl	$553648128, %r14d       # imm = 0x21000000
  2109e4: 45 89 75 14                  	movl	%r14d, 20(%r13)
  2109e8: 41 c7 45 04 00 00 00 00      	movl	$0, 4(%r13)
  2109f0: 81 e7 ff 03 fe ff            	andl	$4294837247, %edi       # imm = 0xFFFE03FF
  2109f6: 81 cf 00 e8 00 00            	orl	$59392, %edi            # imm = 0xE800
  2109fc: 41 89 7d 00                  	movl	%edi, (%r13)
  210a00: e9 01 f2 ff ff               	jmp	0x20fc06 <http_parser_execute+0x6166>
  210a05: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  210a0e: 48 8b 0d e3 42 00 00         	movq	17123(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  210a15: 48 35 6d c4 00 00            	xorq	$50285, %rax            # imm = 0xC46D
  210a1b: 8a 14 01                     	movb	(%rcx,%rax), %dl
  210a1e: 80 c2 01                     	addb	$1, %dl
  210a21: 80 d2 00                     	adcb	$0, %dl
  210a24: 88 14 01                     	movb	%dl, (%rcx,%rax)
  210a27: 64 c7 04 25 90 ff ff ff 36 62 00 00  	movl	$25142, %fs:-112 # imm = 0x6236
  210a33: 45 89 11                     	movl	%r10d, (%r9)
  210a36: 41 81 e6 ff ff ff 80         	andl	$2164260863, %r14d      # imm = 0x80FFFFFF
  210a3d: 41 81 ce 00 00 00 1a         	orl	$436207616, %r14d       # imm = 0x1A000000
  210a44: 48 8b 45 d0                  	movq	-48(%rbp), %rax
  210a48: 44 89 30                     	movl	%r14d, (%rax)
  210a4b: b8 32 00 00 00               	movl	$50, %eax
  210a50: e9 1c f1 ff ff               	jmp	0x20fb71 <http_parser_execute+0x60d1>
  210a55: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  210a5e: 48 8b 0d 93 42 00 00         	movq	17043(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  210a65: 48 35 93 30 00 00            	xorq	$12435, %rax            # imm = 0x3093
  210a6b: 8a 1c 01                     	movb	(%rcx,%rax), %bl
  210a6e: 80 c3 01                     	addb	$1, %bl
  210a71: 80 d3 00                     	adcb	$0, %bl
  210a74: 88 1c 01                     	movb	%bl, (%rcx,%rax)
  210a77: 64 c7 04 25 90 ff ff ff 49 18 00 00  	movl	$6217, %fs:-112 # imm = 0x1849
  210a83: 41 89 d2                     	movl	%edx, %r10d
  210a86: 48 8b 45 a0                  	movq	-96(%rbp), %rax
  210a8a: 89 10                        	movl	%edx, (%rax)
  210a8c: 44 8b 75 c0                  	movl	-64(%rbp), %r14d
  210a90: 41 81 e6 ff ff ff 80         	andl	$2164260863, %r14d      # imm = 0x80FFFFFF
  210a97: 41 81 ce 00 00 00 0c         	orl	$201326592, %r14d       # imm = 0xC000000
  210a9e: 48 8b 45 d0                  	movq	-48(%rbp), %rax
  210aa2: 44 89 30                     	movl	%r14d, (%rax)
  210aa5: b8 34 00 00 00               	movl	$52, %eax
  210aaa: e9 bb f0 ff ff               	jmp	0x20fb6a <http_parser_execute+0x60ca>
  210aaf: 44 89 f6                     	movl	%r14d, %esi
  210ab2: 4d 89 e6                     	movq	%r12, %r14
  210ab5: 45 89 d7                     	movl	%r10d, %r15d
  210ab8: 4c 8b 65 d0                  	movq	-48(%rbp), %r12
  210abc: b8 00 00 00 1b               	movl	$452984832, %eax        # imm = 0x1B000000
  210ac1: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  210aca: 48 8b 15 27 42 00 00         	movq	16935(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  210ad1: 48 81 f1 1b 1f 00 00         	xorq	$7963, %rcx             # imm = 0x1F1B
  210ad8: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  210adb: 80 c3 01                     	addb	$1, %bl
  210ade: 80 d3 00                     	adcb	$0, %bl
  210ae1: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  210ae4: 64 c7 04 25 90 ff ff ff 8d 0f 00 00  	movl	$3981, %fs:-112 # imm = 0xF8D
  210af0: 45 89 fa                     	movl	%r15d, %r10d
  210af3: 45 89 39                     	movl	%r15d, (%r9)
  210af6: 81 e6 ff ff ff 80            	andl	$2164260863, %esi       # imm = 0x80FFFFFF
  210afc: 09 c6                        	orl	%eax, %esi
  210afe: 41 89 34 24                  	movl	%esi, (%r12)
  210b02: b8 36 00 00 00               	movl	$54, %eax
  210b07: 4d 89 f4                     	movq	%r14, %r12
  210b0a: 41 89 f6                     	movl	%esi, %r14d
  210b0d: e9 5f f0 ff ff               	jmp	0x20fb71 <http_parser_execute+0x60d1>
  210b12: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  210b1b: 48 8b 0d d6 41 00 00         	movq	16854(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  210b22: 48 35 0c ab 00 00            	xorq	$43788, %rax            # imm = 0xAB0C
  210b28: 8a 14 01                     	movb	(%rcx,%rax), %dl
  210b2b: 80 c2 01                     	addb	$1, %dl
  210b2e: 80 d2 00                     	adcb	$0, %dl
  210b31: 88 14 01                     	movb	%dl, (%rcx,%rax)
  210b34: 64 c7 04 25 90 ff ff ff 86 55 00 00  	movl	$21894, %fs:-112 # imm = 0x5586
  210b40: 45 89 2e                     	movl	%r13d, (%r14)
  210b43: 45 89 e6                     	movl	%r12d, %r14d
  210b46: 41 81 e6 ff ff ff 80         	andl	$2164260863, %r14d      # imm = 0x80FFFFFF
  210b4d: 41 81 ce 00 00 00 11         	orl	$285212672, %r14d       # imm = 0x11000000
  210b54: 48 8b 45 d0                  	movq	-48(%rbp), %rax
  210b58: 44 89 30                     	movl	%r14d, (%rax)
  210b5b: b8 01 00 00 00               	movl	$1, %eax
  210b60: 4c 8b 5d b0                  	movq	-80(%rbp), %r11
  210b64: 45 89 ea                     	movl	%r13d, %r10d
  210b67: eb 56                        	jmp	0x210bbf <http_parser_execute+0x711f>
  210b69: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  210b72: 48 8b 0d 7f 41 00 00         	movq	16767(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  210b79: 48 35 68 83 00 00            	xorq	$33640, %rax            # imm = 0x8368
  210b7f: 8a 14 01                     	movb	(%rcx,%rax), %dl
  210b82: 80 c2 01                     	addb	$1, %dl
  210b85: 80 d2 00                     	adcb	$0, %dl
  210b88: 88 14 01                     	movb	%dl, (%rcx,%rax)
  210b8b: 64 c7 04 25 90 ff ff ff b4 41 00 00  	movl	$16820, %fs:-112 # imm = 0x41B4
  210b97: 48 8b 45 a0                  	movq	-96(%rbp), %rax
  210b9b: 44 89 30                     	movl	%r14d, (%rax)
  210b9e: 41 81 e4 ff ff ff 80         	andl	$2164260863, %r12d      # imm = 0x80FFFFFF
  210ba5: 41 81 cc 00 00 00 11         	orl	$285212672, %r12d       # imm = 0x11000000
  210bac: 45 89 65 00                  	movl	%r12d, (%r13)
  210bb0: b8 01 00 00 00               	movl	$1, %eax
  210bb5: 4c 8b 5d b0                  	movq	-80(%rbp), %r11
  210bb9: 45 89 f2                     	movl	%r14d, %r10d
  210bbc: 45 89 e6                     	movl	%r12d, %r14d
  210bbf: 4c 8b 65 c0                  	movq	-64(%rbp), %r12
  210bc3: 4c 8b ad 68 ff ff ff         	movq	-152(%rbp), %r13
  210bca: e9 a2 ef ff ff               	jmp	0x20fb71 <http_parser_execute+0x60d1>
  210bcf: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  210bd8: 48 8b 0d 19 41 00 00         	movq	16665(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  210bdf: 48 35 a1 b6 00 00            	xorq	$46753, %rax            # imm = 0xB6A1
  210be5: 8a 14 01                     	movb	(%rcx,%rax), %dl
  210be8: 80 c2 01                     	addb	$1, %dl
  210beb: 80 d2 00                     	adcb	$0, %dl
  210bee: 88 14 01                     	movb	%dl, (%rcx,%rax)
  210bf1: 64 c7 04 25 90 ff ff ff 50 5b 00 00  	movl	$23376, %fs:-112 # imm = 0x5B50
  210bfd: 45 89 11                     	movl	%r10d, (%r9)
  210c00: 41 81 e6 ff ff 00 80         	andl	$2147549183, %r14d      # imm = 0x8000FFFF
  210c07: 41 81 ce 00 00 00 10         	orl	$268435456, %r14d       # imm = 0x10000000
  210c0e: 48 8b 45 d0                  	movq	-48(%rbp), %rax
  210c12: 44 89 30                     	movl	%r14d, (%rax)
  210c15: b8 12 00 00 00               	movl	$18, %eax
  210c1a: e9 52 ef ff ff               	jmp	0x20fb71 <http_parser_execute+0x60d1>
  210c1f: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  210c28: 48 8b 0d c9 40 00 00         	movq	16585(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  210c2f: 48 35 fb bd 00 00            	xorq	$48635, %rax            # imm = 0xBDFB
  210c35: 8a 14 01                     	movb	(%rcx,%rax), %dl
  210c38: 80 c2 01                     	addb	$1, %dl
  210c3b: 80 d2 00                     	adcb	$0, %dl
  210c3e: 88 14 01                     	movb	%dl, (%rcx,%rax)
  210c41: 64 c7 04 25 90 ff ff ff fd 5e 00 00  	movl	$24317, %fs:-112 # imm = 0x5EFD
  210c4d: e9 b1 fb ff ff               	jmp	0x210803 <http_parser_execute+0x6d63>
  210c52: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  210c5b: 48 8b 0d 96 40 00 00         	movq	16534(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  210c62: 48 35 1d c6 00 00            	xorq	$50717, %rax            # imm = 0xC61D
  210c68: 8a 14 01                     	movb	(%rcx,%rax), %dl
  210c6b: 80 c2 01                     	addb	$1, %dl
  210c6e: 80 d2 00                     	adcb	$0, %dl
  210c71: 88 14 01                     	movb	%dl, (%rcx,%rax)
  210c74: 64 c7 04 25 90 ff ff ff 0e 63 00 00  	movl	$25358, %fs:-112 # imm = 0x630E
  210c80: 41 c7 01 01 00 00 00         	movl	$1, (%r9)
  210c87: 41 81 e6 ff ff ff 80         	andl	$2164260863, %r14d      # imm = 0x80FFFFFF
  210c8e: 41 81 ce 00 00 00 1b         	orl	$452984832, %r14d       # imm = 0x1B000000
  210c95: 48 8b 45 d0                  	movq	-48(%rbp), %rax
  210c99: 44 89 30                     	movl	%r14d, (%rax)
  210c9c: 41 ba 01 00 00 00            	movl	$1, %r10d
  210ca2: b8 35 00 00 00               	movl	$53, %eax
  210ca7: e9 c5 ee ff ff               	jmp	0x20fb71 <http_parser_execute+0x60d1>
  210cac: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  210cb5: 48 8b 0d 3c 40 00 00         	movq	16444(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  210cbc: 48 35 3b 98 00 00            	xorq	$38971, %rax            # imm = 0x983B
  210cc2: 8a 14 01                     	movb	(%rcx,%rax), %dl
  210cc5: 80 c2 01                     	addb	$1, %dl
  210cc8: 80 d2 00                     	adcb	$0, %dl
  210ccb: 88 14 01                     	movb	%dl, (%rcx,%rax)
  210cce: 64 c7 04 25 90 ff ff ff 1d 4c 00 00  	movl	$19485, %fs:-112 # imm = 0x4C1D
  210cda: 48 8b 4d a8                  	movq	-88(%rbp), %rcx
  210cde: 81 e1 ff ff ff 80            	andl	$2164260863, %ecx       # imm = 0x80FFFFFF
  210ce4: 81 c9 00 00 00 0e            	orl	$234881024, %ecx        # imm = 0xE000000
  210cea: 48 8b 45 d0                  	movq	-48(%rbp), %rax
  210cee: 89 08                        	movl	%ecx, (%rax)
  210cf0: b8 0b 00 00 00               	movl	$11, %eax
  210cf5: e9 be f1 ff ff               	jmp	0x20feb8 <http_parser_execute+0x6418>
  210cfa: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  210d03: 48 8b 0d ee 3f 00 00         	movq	16366(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  210d0a: 48 35 7a 7d 00 00            	xorq	$32122, %rax            # imm = 0x7D7A
  210d10: 8a 14 01                     	movb	(%rcx,%rax), %dl
  210d13: 80 c2 01                     	addb	$1, %dl
  210d16: 80 d2 00                     	adcb	$0, %dl
  210d19: 88 14 01                     	movb	%dl, (%rcx,%rax)
  210d1c: 64 c7 04 25 90 ff ff ff bd 3e 00 00  	movl	$16061, %fs:-112 # imm = 0x3EBD
  210d28: 48 8b 4d a8                  	movq	-88(%rbp), %rcx
  210d2c: 81 e1 ff ff ff 80            	andl	$2164260863, %ecx       # imm = 0x80FFFFFF
  210d32: 81 c9 00 00 00 0e            	orl	$234881024, %ecx        # imm = 0xE000000
  210d38: 48 8b 45 d0                  	movq	-48(%rbp), %rax
  210d3c: 89 08                        	movl	%ecx, (%rax)
  210d3e: b8 09 00 00 00               	movl	$9, %eax
  210d43: e9 70 f1 ff ff               	jmp	0x20feb8 <http_parser_execute+0x6418>
  210d48: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  210d51: 48 8b 0d a0 3f 00 00         	movq	16288(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  210d58: 48 35 47 6d 00 00            	xorq	$27975, %rax            # imm = 0x6D47
  210d5e: 8a 14 01                     	movb	(%rcx,%rax), %dl
  210d61: 80 c2 01                     	addb	$1, %dl
  210d64: 80 d2 00                     	adcb	$0, %dl
  210d67: 88 14 01                     	movb	%dl, (%rcx,%rax)
  210d6a: 64 c7 04 25 90 ff ff ff a3 36 00 00  	movl	$13987, %fs:-112 # imm = 0x36A3
  210d76: 45 89 11                     	movl	%r10d, (%r9)
  210d79: 41 81 e6 ff ff ff 80         	andl	$2164260863, %r14d      # imm = 0x80FFFFFF
  210d80: 41 81 ce 00 00 00 0e         	orl	$234881024, %r14d       # imm = 0xE000000
  210d87: 48 8b 45 d0                  	movq	-48(%rbp), %rax
  210d8b: 44 89 30                     	movl	%r14d, (%rax)
  210d8e: b8 27 00 00 00               	movl	$39, %eax
  210d93: e9 d9 ed ff ff               	jmp	0x20fb71 <http_parser_execute+0x60d1>
  210d98: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  210da1: 48 8b 0d 50 3f 00 00         	movq	16208(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  210da8: 48 35 4a d3 00 00            	xorq	$54090, %rax            # imm = 0xD34A
  210dae: 8a 14 01                     	movb	(%rcx,%rax), %dl
  210db1: 80 c2 01                     	addb	$1, %dl
  210db4: 80 d2 00                     	adcb	$0, %dl
  210db7: 88 14 01                     	movb	%dl, (%rcx,%rax)
  210dba: 64 c7 04 25 90 ff ff ff a5 69 00 00  	movl	$27045, %fs:-112 # imm = 0x69A5
  210dc6: 45 89 11                     	movl	%r10d, (%r9)
  210dc9: 41 81 e6 ff ff ff 80         	andl	$2164260863, %r14d      # imm = 0x80FFFFFF
  210dd0: 41 81 ce 00 00 00 17         	orl	$385875968, %r14d       # imm = 0x17000000
  210dd7: 48 8b 45 d0                  	movq	-48(%rbp), %rax
  210ddb: 44 89 30                     	movl	%r14d, (%rax)
  210dde: b8 34 00 00 00               	movl	$52, %eax
  210de3: e9 89 ed ff ff               	jmp	0x20fb71 <http_parser_execute+0x60d1>
  210de8: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  210df1: 48 8b 0d 00 3f 00 00         	movq	16128(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  210df8: 48 35 42 2a 00 00            	xorq	$10818, %rax            # imm = 0x2A42
  210dfe: 8a 14 01                     	movb	(%rcx,%rax), %dl
  210e01: 80 c2 01                     	addb	$1, %dl
  210e04: 80 d2 00                     	adcb	$0, %dl
  210e07: 88 14 01                     	movb	%dl, (%rcx,%rax)
  210e0a: 64 c7 04 25 90 ff ff ff 21 15 00 00  	movl	$5409, %fs:-112 # imm = 0x1521
  210e16: 48 8b 4d a8                  	movq	-88(%rbp), %rcx
  210e1a: 81 e1 ff ff ff 80            	andl	$2164260863, %ecx       # imm = 0x80FFFFFF
  210e20: 81 c9 00 00 00 0e            	orl	$234881024, %ecx        # imm = 0xE000000
  210e26: 48 8b 45 d0                  	movq	-48(%rbp), %rax
  210e2a: 89 08                        	movl	%ecx, (%rax)
  210e2c: b8 0a 00 00 00               	movl	$10, %eax
  210e31: e9 82 f0 ff ff               	jmp	0x20feb8 <http_parser_execute+0x6418>
  210e36: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  210e3f: 48 8b 0d b2 3e 00 00         	movq	16050(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  210e46: 48 35 24 87 00 00            	xorq	$34596, %rax            # imm = 0x8724
  210e4c: 8a 14 01                     	movb	(%rcx,%rax), %dl
  210e4f: 80 c2 01                     	addb	$1, %dl
  210e52: 80 d2 00                     	adcb	$0, %dl
  210e55: 88 14 01                     	movb	%dl, (%rcx,%rax)
  210e58: 64 c7 04 25 90 ff ff ff 92 43 00 00  	movl	$17298, %fs:-112 # imm = 0x4392
  210e64: e9 9a f9 ff ff               	jmp	0x210803 <http_parser_execute+0x6d63>
  210e69: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  210e72: 48 8b 0d 7f 3e 00 00         	movq	15999(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  210e79: 48 35 dc bd 00 00            	xorq	$48604, %rax            # imm = 0xBDDC
  210e7f: 8a 14 01                     	movb	(%rcx,%rax), %dl
  210e82: 80 c2 01                     	addb	$1, %dl
  210e85: 80 d2 00                     	adcb	$0, %dl
  210e88: 88 14 01                     	movb	%dl, (%rcx,%rax)
  210e8b: 64 c7 04 25 90 ff ff ff ee 5e 00 00  	movl	$24302, %fs:-112 # imm = 0x5EEE
  210e97: 45 89 11                     	movl	%r10d, (%r9)
  210e9a: 48 8b 4d a8                  	movq	-88(%rbp), %rcx
  210e9e: 81 e1 ff ff ff 80            	andl	$2164260863, %ecx       # imm = 0x80FFFFFF
  210ea4: 81 c9 00 00 00 0e            	orl	$234881024, %ecx        # imm = 0xE000000
  210eaa: 48 8b 45 d0                  	movq	-48(%rbp), %rax
  210eae: 89 08                        	movl	%ecx, (%rax)
  210eb0: b8 0c 00 00 00               	movl	$12, %eax
  210eb5: e9 fe ef ff ff               	jmp	0x20feb8 <http_parser_execute+0x6418>
  210eba: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  210ec3: 48 8b 0d 2e 3e 00 00         	movq	15918(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  210eca: 48 35 a7 dc 00 00            	xorq	$56487, %rax            # imm = 0xDCA7
  210ed0: 8a 14 01                     	movb	(%rcx,%rax), %dl
  210ed3: 80 c2 01                     	addb	$1, %dl
  210ed6: 80 d2 00                     	adcb	$0, %dl
  210ed9: 88 14 01                     	movb	%dl, (%rcx,%rax)
  210edc: 64 c7 04 25 90 ff ff ff 53 6e 00 00  	movl	$28243, %fs:-112 # imm = 0x6E53
  210ee8: 45 89 11                     	movl	%r10d, (%r9)
  210eeb: 41 81 e6 ff ff ff 80         	andl	$2164260863, %r14d      # imm = 0x80FFFFFF
  210ef2: 41 81 ce 00 00 00 17         	orl	$385875968, %r14d       # imm = 0x17000000
  210ef9: 48 8b 45 d0                  	movq	-48(%rbp), %rax
  210efd: 44 89 30                     	movl	%r14d, (%rax)
  210f00: b8 2b 00 00 00               	movl	$43, %eax
  210f05: e9 67 ec ff ff               	jmp	0x20fb71 <http_parser_execute+0x60d1>
  210f0a: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  210f13: 48 8b 0d de 3d 00 00         	movq	15838(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  210f1a: 48 35 3a 7b 00 00            	xorq	$31546, %rax            # imm = 0x7B3A
  210f20: 8a 14 01                     	movb	(%rcx,%rax), %dl
  210f23: 80 c2 01                     	addb	$1, %dl
  210f26: 80 d2 00                     	adcb	$0, %dl
  210f29: 88 14 01                     	movb	%dl, (%rcx,%rax)
  210f2c: 64 c7 04 25 90 ff ff ff 9d 3d 00 00  	movl	$15773, %fs:-112 # imm = 0x3D9D
  210f38: 45 89 11                     	movl	%r10d, (%r9)
  210f3b: 41 81 e6 ff ff ff 80         	andl	$2164260863, %r14d      # imm = 0x80FFFFFF
  210f42: 41 81 ce 00 00 00 0e         	orl	$234881024, %r14d       # imm = 0xE000000
  210f49: 48 8b 45 d0                  	movq	-48(%rbp), %rax
  210f4d: 44 89 30                     	movl	%r14d, (%rax)
  210f50: b8 28 00 00 00               	movl	$40, %eax
  210f55: e9 17 ec ff ff               	jmp	0x20fb71 <http_parser_execute+0x60d1>
  210f5a: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  210f63: 48 8b 0d 8e 3d 00 00         	movq	15758(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  210f6a: 48 35 f9 d7 00 00            	xorq	$55289, %rax            # imm = 0xD7F9
  210f70: 8a 14 01                     	movb	(%rcx,%rax), %dl
  210f73: 80 c2 01                     	addb	$1, %dl
  210f76: 80 d2 00                     	adcb	$0, %dl
  210f79: 88 14 01                     	movb	%dl, (%rcx,%rax)
  210f7c: 64 c7 04 25 90 ff ff ff fc 6b 00 00  	movl	$27644, %fs:-112 # imm = 0x6BFC
  210f88: 45 89 11                     	movl	%r10d, (%r9)
  210f8b: 41 81 e6 ff ff ff 80         	andl	$2164260863, %r14d      # imm = 0x80FFFFFF
  210f92: 41 81 ce 00 00 00 0e         	orl	$234881024, %r14d       # imm = 0xE000000
  210f99: 48 8b 45 d0                  	movq	-48(%rbp), %rax
  210f9d: 44 89 30                     	movl	%r14d, (%rax)
  210fa0: b8 29 00 00 00               	movl	$41, %eax
  210fa5: e9 c7 eb ff ff               	jmp	0x20fb71 <http_parser_execute+0x60d1>
  210faa: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  210fb3: 48 8b 0d 3e 3d 00 00         	movq	15678(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  210fba: 48 35 f0 8b 00 00            	xorq	$35824, %rax            # imm = 0x8BF0
  210fc0: 8a 14 01                     	movb	(%rcx,%rax), %dl
  210fc3: 80 c2 01                     	addb	$1, %dl
  210fc6: 80 d2 00                     	adcb	$0, %dl
  210fc9: 88 14 01                     	movb	%dl, (%rcx,%rax)
  210fcc: 64 c7 04 25 90 ff ff ff f8 45 00 00  	movl	$17912, %fs:-112 # imm = 0x45F8
  210fd8: 45 89 11                     	movl	%r10d, (%r9)
  210fdb: 41 81 e6 ff ff ff 80         	andl	$2164260863, %r14d      # imm = 0x80FFFFFF
  210fe2: 41 81 ce 00 00 00 0f         	orl	$251658240, %r14d       # imm = 0xF000000
  210fe9: 48 8b 45 d0                  	movq	-48(%rbp), %rax
  210fed: 44 89 30                     	movl	%r14d, (%rax)
  210ff0: b8 0e 00 00 00               	movl	$14, %eax
  210ff5: e9 77 eb ff ff               	jmp	0x20fb71 <http_parser_execute+0x60d1>
  210ffa: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  211003: 48 8b 0d ee 3c 00 00         	movq	15598(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  21100a: 48 35 d3 4b 00 00            	xorq	$19411, %rax            # imm = 0x4BD3
  211010: 8a 14 01                     	movb	(%rcx,%rax), %dl
  211013: 80 c2 01                     	addb	$1, %dl
  211016: 80 d2 00                     	adcb	$0, %dl
  211019: 88 14 01                     	movb	%dl, (%rcx,%rax)
  21101c: 64 c7 04 25 90 ff ff ff e9 25 00 00  	movl	$9705, %fs:-112 # imm = 0x25E9
  211028: 45 89 11                     	movl	%r10d, (%r9)
  21102b: 41 81 e6 ff ff ff 80         	andl	$2164260863, %r14d      # imm = 0x80FFFFFF
  211032: 41 81 ce 00 00 00 18         	orl	$402653184, %r14d       # imm = 0x18000000
  211039: 48 8b 45 d0                  	movq	-48(%rbp), %rax
  21103d: 44 89 30                     	movl	%r14d, (%rax)
  211040: b8 2c 00 00 00               	movl	$44, %eax
  211045: e9 27 eb ff ff               	jmp	0x20fb71 <http_parser_execute+0x60d1>
  21104a: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  211053: 48 8b 0d 9e 3c 00 00         	movq	15518(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  21105a: 48 35 5d 07 00 00            	xorq	$1885, %rax             # imm = 0x75D
  211060: 8a 14 01                     	movb	(%rcx,%rax), %dl
  211063: 80 c2 01                     	addb	$1, %dl
  211066: 80 d2 00                     	adcb	$0, %dl
  211069: 88 14 01                     	movb	%dl, (%rcx,%rax)
  21106c: 64 c7 04 25 90 ff ff ff ae 03 00 00  	movl	$942, %fs:-112  # imm = 0x3AE
  211078: 45 89 11                     	movl	%r10d, (%r9)
  21107b: 41 81 e6 ff ff ff 80         	andl	$2164260863, %r14d      # imm = 0x80FFFFFF
  211082: 41 81 ce 00 00 00 0c         	orl	$201326592, %r14d       # imm = 0xC000000
  211089: 48 8b 45 d0                  	movq	-48(%rbp), %rax
  21108d: 44 89 30                     	movl	%r14d, (%rax)
  211090: b8 2d 00 00 00               	movl	$45, %eax
  211095: 49 89 f4                     	movq	%rsi, %r12
  211098: e9 d4 ea ff ff               	jmp	0x20fb71 <http_parser_execute+0x60d1>
  21109d: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  2110a6: 48 8b 0d 4b 3c 00 00         	movq	15435(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  2110ad: 48 35 49 8e 00 00            	xorq	$36425, %rax            # imm = 0x8E49
  2110b3: 8a 14 01                     	movb	(%rcx,%rax), %dl
  2110b6: 80 c2 01                     	addb	$1, %dl
  2110b9: 80 d2 00                     	adcb	$0, %dl
  2110bc: 88 14 01                     	movb	%dl, (%rcx,%rax)
  2110bf: 64 c7 04 25 90 ff ff ff 24 47 00 00  	movl	$18212, %fs:-112 # imm = 0x4724
  2110cb: 44 8b 75 cc                  	movl	-52(%rbp), %r14d
  2110cf: 41 81 e6 ff ff ff 80         	andl	$2164260863, %r14d      # imm = 0x80FFFFFF
  2110d6: 41 81 ce 00 00 00 1c         	orl	$469762048, %r14d       # imm = 0x1C000000
  2110dd: 48 8b 45 d0                  	movq	-48(%rbp), %rax
  2110e1: 44 89 30                     	movl	%r14d, (%rax)
  2110e4: b8 03 00 00 00               	movl	$3, %eax
  2110e9: e9 83 ea ff ff               	jmp	0x20fb71 <http_parser_execute+0x60d1>
  2110ee: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  2110f7: 48 8b 0d fa 3b 00 00         	movq	15354(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  2110fe: 48 35 52 8d 00 00            	xorq	$36178, %rax            # imm = 0x8D52
  211104: 8a 14 01                     	movb	(%rcx,%rax), %dl
  211107: 80 c2 01                     	addb	$1, %dl
  21110a: 80 d2 00                     	adcb	$0, %dl
  21110d: 88 14 01                     	movb	%dl, (%rcx,%rax)
  211110: 64 c7 04 25 90 ff ff ff a9 46 00 00  	movl	$18089, %fs:-112 # imm = 0x46A9
  21111c: 45 89 f2                     	movl	%r14d, %r10d
  21111f: 48 8b 45 a0                  	movq	-96(%rbp), %rax
  211123: 44 89 30                     	movl	%r14d, (%rax)
  211126: 41 89 de                     	movl	%ebx, %r14d
  211129: 41 81 e6 ff ff ff 80         	andl	$2164260863, %r14d      # imm = 0x80FFFFFF
  211130: 41 81 ce 00 00 00 11         	orl	$285212672, %r14d       # imm = 0x11000000
  211137: 48 8b 45 d0                  	movq	-48(%rbp), %rax
  21113b: 44 89 30                     	movl	%r14d, (%rax)
  21113e: b8 01 00 00 00               	movl	$1, %eax
  211143: e9 25 ea ff ff               	jmp	0x20fb6d <http_parser_execute+0x60cd>
  211148: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  211151: 48 8b 0d a0 3b 00 00         	movq	15264(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  211158: 48 35 ab 45 00 00            	xorq	$17835, %rax            # imm = 0x45AB
  21115e: 8a 14 01                     	movb	(%rcx,%rax), %dl
  211161: 80 c2 01                     	addb	$1, %dl
  211164: 80 d2 00                     	adcb	$0, %dl
  211167: 88 14 01                     	movb	%dl, (%rcx,%rax)
  21116a: 64 c7 04 25 90 ff ff ff d5 22 00 00  	movl	$8917, %fs:-112 # imm = 0x22D5
  211176: 45 89 11                     	movl	%r10d, (%r9)
  211179: 41 81 e6 ff ff ff 80         	andl	$2164260863, %r14d      # imm = 0x80FFFFFF
  211180: e9 82 fa ff ff               	jmp	0x210c07 <http_parser_execute+0x7167>
  211185: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  21118e: 48 8b 15 63 3b 00 00         	movq	15203(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  211195: 48 35 89 50 00 00            	xorq	$20617, %rax            # imm = 0x5089
  21119b: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  21119e: 80 c3 01                     	addb	$1, %bl
  2111a1: 80 d3 00                     	adcb	$0, %bl
  2111a4: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  2111a7: 64 c7 04 25 90 ff ff ff 44 28 00 00  	movl	$10308, %fs:-112 # imm = 0x2844
  2111b3: 45 89 11                     	movl	%r10d, (%r9)
  2111b6: 41 81 e6 ff ff ff 80         	andl	$2164260863, %r14d      # imm = 0x80FFFFFF
  2111bd: 41 81 ce 00 00 00 0c         	orl	$201326592, %r14d       # imm = 0xC000000
  2111c4: e9 e9 f6 ff ff               	jmp	0x2108b2 <http_parser_execute+0x6e12>
  2111c9: 44 89 f6                     	movl	%r14d, %esi
  2111cc: 4d 89 e6                     	movq	%r12, %r14
  2111cf: 45 89 d7                     	movl	%r10d, %r15d
  2111d2: 4c 8b 65 d0                  	movq	-48(%rbp), %r12
  2111d6: b8 00 00 00 19               	movl	$419430400, %eax        # imm = 0x19000000
  2111db: e9 e1 f8 ff ff               	jmp	0x210ac1 <http_parser_execute+0x7021>
  2111e0: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  2111e9: 48 8b 0d 08 3b 00 00         	movq	15112(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  2111f0: 48 35 4e a1 00 00            	xorq	$41294, %rax            # imm = 0xA14E
  2111f6: 8a 14 01                     	movb	(%rcx,%rax), %dl
  2111f9: 80 c2 01                     	addb	$1, %dl
  2111fc: 80 d2 00                     	adcb	$0, %dl
  2111ff: 88 14 01                     	movb	%dl, (%rcx,%rax)
  211202: 64 c7 04 25 90 ff ff ff a7 50 00 00  	movl	$20647, %fs:-112 # imm = 0x50A7
  21120e: 45 89 11                     	movl	%r10d, (%r9)
  211211: 41 81 e6 ff ff ff 80         	andl	$2164260863, %r14d      # imm = 0x80FFFFFF
  211218: 41 81 ce 00 00 00 19         	orl	$419430400, %r14d       # imm = 0x19000000
  21121f: e9 20 f8 ff ff               	jmp	0x210a44 <http_parser_execute+0x6fa4>
  211224: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  21122d: 48 8b 0d c4 3a 00 00         	movq	15044(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  211234: 48 35 61 2e 00 00            	xorq	$11873, %rax            # imm = 0x2E61
  21123a: 8a 14 01                     	movb	(%rcx,%rax), %dl
  21123d: 80 c2 01                     	addb	$1, %dl
  211240: 80 d2 00                     	adcb	$0, %dl
  211243: 88 14 01                     	movb	%dl, (%rcx,%rax)
  211246: 64 c7 04 25 90 ff ff ff 30 17 00 00  	movl	$5936, %fs:-112 # imm = 0x1730
  211252: bf 7c 22 20 00               	movl	$2105980, %edi          # imm = 0x20227C
  211257: be a7 20 20 00               	movl	$2105511, %esi          # imm = 0x2020A7
  21125c: b9 eb 26 20 00               	movl	$2107115, %ecx          # imm = 0x2026EB
  211261: ba 9e 07 00 00               	movl	$1950, %edx             # imm = 0x79E
  211266: e8 75 16 00 00               	callq	0x2128e0 <__assert_fail@plt>
  21126b: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  211274: 48 8b 0d 7d 3a 00 00         	movq	14973(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  21127b: 48 35 4d bc 00 00            	xorq	$48205, %rax            # imm = 0xBC4D
  211281: 8a 14 01                     	movb	(%rcx,%rax), %dl
  211284: 80 c2 01                     	addb	$1, %dl
  211287: 80 d2 00                     	adcb	$0, %dl
  21128a: 88 14 01                     	movb	%dl, (%rcx,%rax)
  21128d: 64 c7 04 25 90 ff ff ff 26 5e 00 00  	movl	$24102, %fs:-112 # imm = 0x5E26
  211299: bf c1 25 20 00               	movl	$2106817, %edi          # imm = 0x2025C1
  21129e: be a7 20 20 00               	movl	$2105511, %esi          # imm = 0x2020A7
  2112a3: b9 eb 26 20 00               	movl	$2107115, %ecx          # imm = 0x2026EB
  2112a8: ba 47 08 00 00               	movl	$2119, %edx             # imm = 0x847
  2112ad: e8 2e 16 00 00               	callq	0x2128e0 <__assert_fail@plt>
  2112b2: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  2112bb: 48 8b 0d 36 3a 00 00         	movq	14902(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  2112c2: 48 35 08 c6 00 00            	xorq	$50696, %rax            # imm = 0xC608
  2112c8: 8a 14 01                     	movb	(%rcx,%rax), %dl
  2112cb: 80 c2 01                     	addb	$1, %dl
  2112ce: 80 d2 00                     	adcb	$0, %dl
  2112d1: 88 14 01                     	movb	%dl, (%rcx,%rax)
  2112d4: 64 c7 04 25 90 ff ff ff 04 63 00 00  	movl	$25348, %fs:-112 # imm = 0x6304
  2112e0: bf bf 20 20 00               	movl	$2105535, %edi          # imm = 0x2020BF
  2112e5: be a7 20 20 00               	movl	$2105511, %esi          # imm = 0x2020A7
  2112ea: b9 eb 26 20 00               	movl	$2107115, %ecx          # imm = 0x2026EB
  2112ef: ba b5 07 00 00               	movl	$1973, %edx             # imm = 0x7B5
  2112f4: e8 e7 15 00 00               	callq	0x2128e0 <__assert_fail@plt>
  2112f9: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  211302: 48 8b 0d ef 39 00 00         	movq	14831(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  211309: 48 35 71 75 00 00            	xorq	$30065, %rax            # imm = 0x7571
  21130f: 8a 14 01                     	movb	(%rcx,%rax), %dl
  211312: 80 c2 01                     	addb	$1, %dl
  211315: 80 d2 00                     	adcb	$0, %dl
  211318: 88 14 01                     	movb	%dl, (%rcx,%rax)
  21131b: 64 c7 04 25 90 ff ff ff b8 3a 00 00  	movl	$15032, %fs:-112 # imm = 0x3AB8
  211327: bf 69 2c 20 00               	movl	$2108521, %edi          # imm = 0x202C69
  21132c: be a7 20 20 00               	movl	$2105511, %esi          # imm = 0x2020A7
  211331: b9 eb 26 20 00               	movl	$2107115, %ecx          # imm = 0x2026EB
  211336: ba fe 05 00 00               	movl	$1534, %edx             # imm = 0x5FE
  21133b: e8 a0 15 00 00               	callq	0x2128e0 <__assert_fail@plt>
  211340: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  211349: 48 8b 0d a8 39 00 00         	movq	14760(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  211350: 48 35 f5 8b 00 00            	xorq	$35829, %rax            # imm = 0x8BF5
  211356: 8a 14 01                     	movb	(%rcx,%rax), %dl
  211359: 80 c2 01                     	addb	$1, %dl
  21135c: 80 d2 00                     	adcb	$0, %dl
  21135f: 88 14 01                     	movb	%dl, (%rcx,%rax)
  211362: 64 c7 04 25 90 ff ff ff fa 45 00 00  	movl	$17914, %fs:-112 # imm = 0x45FA
  21136e: bf bf 20 20 00               	movl	$2105535, %edi          # imm = 0x2020BF
  211373: be a7 20 20 00               	movl	$2105511, %esi          # imm = 0x2020A7
  211378: b9 eb 26 20 00               	movl	$2107115, %ecx          # imm = 0x2026EB
  21137d: ba fe 06 00 00               	movl	$1790, %edx             # imm = 0x6FE
  211382: e8 59 15 00 00               	callq	0x2128e0 <__assert_fail@plt>
  211387: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  211390: 48 8b 35 61 39 00 00         	movq	14689(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  211397: 48 81 f2 4f 3e 00 00         	xorq	$15951, %rdx            # imm = 0x3E4F
  21139e: 8a 1c 16                     	movb	(%rsi,%rdx), %bl
  2113a1: 80 c3 01                     	addb	$1, %bl
  2113a4: 80 d3 00                     	adcb	$0, %bl
  2113a7: 88 1c 16                     	movb	%bl, (%rsi,%rdx)
  2113aa: 64 c7 04 25 90 ff ff ff 27 1f 00 00  	movl	$7975, %fs:-112 # imm = 0x1F27
  2113b6: 45 89 7d 04                  	movl	%r15d, 4(%r13)
  2113ba: c1 e0 0a                     	shll	$10, %eax
  2113bd: 81 e1 ff 03 fe ff            	andl	$4294837247, %ecx       # imm = 0xFFFE03FF
  2113c3: 09 c1                        	orl	%eax, %ecx
  2113c5: 41 89 4d 00                  	movl	%ecx, (%r13)
  2113c9: 4d 89 f7                     	movq	%r14, %r15
  2113cc: e9 c5 00 00 00               	jmp	0x211496 <http_parser_execute+0x79f6>
  2113d1: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  2113da: 48 8b 0d 17 39 00 00         	movq	14615(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  2113e1: 48 35 b6 4a 00 00            	xorq	$19126, %rax            # imm = 0x4AB6
  2113e7: 8a 14 01                     	movb	(%rcx,%rax), %dl
  2113ea: 80 c2 01                     	addb	$1, %dl
  2113ed: 80 d2 00                     	adcb	$0, %dl
  2113f0: 88 14 01                     	movb	%dl, (%rcx,%rax)
  2113f3: 64 c7 04 25 90 ff ff ff 5b 25 00 00  	movl	$9563, %fs:-112 # imm = 0x255B
  2113ff: bf bf 20 20 00               	movl	$2105535, %edi          # imm = 0x2020BF
  211404: be a7 20 20 00               	movl	$2105511, %esi          # imm = 0x2020A7
  211409: b9 eb 26 20 00               	movl	$2107115, %ecx          # imm = 0x2026EB
  21140e: ba 0a 07 00 00               	movl	$1802, %edx             # imm = 0x70A
  211413: e8 c8 14 00 00               	callq	0x2128e0 <__assert_fail@plt>
  211418: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  211421: 48 8b 0d d0 38 00 00         	movq	14544(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  211428: 48 35 4d a4 00 00            	xorq	$42061, %rax            # imm = 0xA44D
  21142e: 8a 14 01                     	movb	(%rcx,%rax), %dl
  211431: 80 c2 01                     	addb	$1, %dl
  211434: 80 d2 00                     	adcb	$0, %dl
  211437: 88 14 01                     	movb	%dl, (%rcx,%rax)
  21143a: 64 c7 04 25 90 ff ff ff 26 52 00 00  	movl	$21030, %fs:-112 # imm = 0x5226
  211446: e9 c5 e3 ff ff               	jmp	0x20f810 <http_parser_execute+0x5d70>
  21144b: 4d 89 e7                     	movq	%r12, %r15
  21144e: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  211457: 48 8b 15 9a 38 00 00         	movq	14490(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  21145e: 48 81 f1 dd db 00 00         	xorq	$56285, %rcx            # imm = 0xDBDD
  211465: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  211468: 80 c3 01                     	addb	$1, %bl
  21146b: 80 d3 00                     	adcb	$0, %bl
  21146e: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  211471: 64 c7 04 25 90 ff ff ff ee 6d 00 00  	movl	$28142, %fs:-112 # imm = 0x6DEE
  21147d: 41 c7 45 04 00 00 00 00      	movl	$0, 4(%r13)
  211485: c1 e0 0a                     	shll	$10, %eax
  211488: 41 81 e0 ff 03 fe ff         	andl	$4294837247, %r8d       # imm = 0xFFFE03FF
  21148f: 41 09 c0                     	orl	%eax, %r8d
  211492: 45 89 45 00                  	movl	%r8d, (%r13)
  211496: 4d 29 df                     	subq	%r11, %r15
  211499: 49 ff c7                     	incq	%r15
  21149c: e9 23 86 ff ff               	jmp	0x209ac4 <http_parser_execute+0x24>
  2114a1: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  2114aa: 48 8b 0d 47 38 00 00         	movq	14407(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  2114b1: 48 35 67 f2 00 00            	xorq	$62055, %rax            # imm = 0xF267
  2114b7: 8a 14 01                     	movb	(%rcx,%rax), %dl
  2114ba: 80 c2 01                     	addb	$1, %dl
  2114bd: 80 d2 00                     	adcb	$0, %dl
  2114c0: 88 14 01                     	movb	%dl, (%rcx,%rax)
  2114c3: 64 c7 04 25 90 ff ff ff 33 79 00 00  	movl	$31027, %fs:-112 # imm = 0x7933
  2114cf: bf bf 20 20 00               	movl	$2105535, %edi          # imm = 0x2020BF
  2114d4: be a7 20 20 00               	movl	$2105511, %esi          # imm = 0x2020A7
  2114d9: b9 eb 26 20 00               	movl	$2107115, %ecx          # imm = 0x2026EB
  2114de: ba d3 05 00 00               	movl	$1491, %edx             # imm = 0x5D3
  2114e3: e8 f8 13 00 00               	callq	0x2128e0 <__assert_fail@plt>
  2114e8: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  2114f1: 48 8b 0d 00 38 00 00         	movq	14336(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  2114f8: 48 35 25 0b 00 00            	xorq	$2853, %rax             # imm = 0xB25
  2114fe: 8a 14 01                     	movb	(%rcx,%rax), %dl
  211501: 80 c2 01                     	addb	$1, %dl
  211504: 80 d2 00                     	adcb	$0, %dl
  211507: 88 14 01                     	movb	%dl, (%rcx,%rax)
  21150a: 64 c7 04 25 90 ff ff ff 92 05 00 00  	movl	$1426, %fs:-112 # imm = 0x592
  211516: bf bf 20 20 00               	movl	$2105535, %edi          # imm = 0x2020BF
  21151b: be a7 20 20 00               	movl	$2105511, %esi          # imm = 0x2020A7
  211520: b9 eb 26 20 00               	movl	$2107115, %ecx          # imm = 0x2026EB
  211525: ba db 05 00 00               	movl	$1499, %edx             # imm = 0x5DB
  21152a: e8 b1 13 00 00               	callq	0x2128e0 <__assert_fail@plt>
  21152f: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  211538: 48 8b 0d b9 37 00 00         	movq	14265(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  21153f: 48 35 d9 47 00 00            	xorq	$18393, %rax            # imm = 0x47D9
  211545: 8a 14 01                     	movb	(%rcx,%rax), %dl
  211548: 80 c2 01                     	addb	$1, %dl
  21154b: 80 d2 00                     	adcb	$0, %dl
  21154e: 88 14 01                     	movb	%dl, (%rcx,%rax)
  211551: 64 c7 04 25 90 ff ff ff ec 23 00 00  	movl	$9196, %fs:-112 # imm = 0x23EC
  21155d: bf bf 20 20 00               	movl	$2105535, %edi          # imm = 0x2020BF
  211562: be a7 20 20 00               	movl	$2105511, %esi          # imm = 0x2020A7
  211567: b9 eb 26 20 00               	movl	$2107115, %ecx          # imm = 0x2026EB
  21156c: ba 3d 04 00 00               	movl	$1085, %edx             # imm = 0x43D
  211571: e8 6a 13 00 00               	callq	0x2128e0 <__assert_fail@plt>
  211576: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  21157f: 48 8b 0d 72 37 00 00         	movq	14194(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  211586: 48 35 59 d8 00 00            	xorq	$55385, %rax            # imm = 0xD859
  21158c: 8a 14 01                     	movb	(%rcx,%rax), %dl
  21158f: 80 c2 01                     	addb	$1, %dl
  211592: 80 d2 00                     	adcb	$0, %dl
  211595: 88 14 01                     	movb	%dl, (%rcx,%rax)
  211598: 64 c7 04 25 90 ff ff ff 2c 6c 00 00  	movl	$27692, %fs:-112 # imm = 0x6C2C
  2115a4: bf dc 22 20 00               	movl	$2106076, %edi          # imm = 0x2022DC
  2115a9: be a7 20 20 00               	movl	$2105511, %esi          # imm = 0x2020A7
  2115ae: b9 eb 26 20 00               	movl	$2107115, %ecx          # imm = 0x2026EB
  2115b3: ba 5b 08 00 00               	movl	$2139, %edx             # imm = 0x85B
  2115b8: e8 23 13 00 00               	callq	0x2128e0 <__assert_fail@plt>
  2115bd: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  2115c6: 48 8b 0d 2b 37 00 00         	movq	14123(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  2115cd: 48 35 61 ff 00 00            	xorq	$65377, %rax            # imm = 0xFF61
  2115d3: 8a 14 01                     	movb	(%rcx,%rax), %dl
  2115d6: 80 c2 01                     	addb	$1, %dl
  2115d9: 80 d2 00                     	adcb	$0, %dl
  2115dc: 88 14 01                     	movb	%dl, (%rcx,%rax)
  2115df: 64 c7 04 25 90 ff ff ff b0 7f 00 00  	movl	$32688, %fs:-112 # imm = 0x7FB0
  2115eb: bf bf 20 20 00               	movl	$2105535, %edi          # imm = 0x2020BF
  2115f0: be a7 20 20 00               	movl	$2105511, %esi          # imm = 0x2020A7
  2115f5: b9 eb 26 20 00               	movl	$2107115, %ecx          # imm = 0x2026EB
  2115fa: ba 5d 08 00 00               	movl	$2141, %edx             # imm = 0x85D
  2115ff: e8 dc 12 00 00               	callq	0x2128e0 <__assert_fail@plt>
  211604: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  21160d: 48 8b 0d e4 36 00 00         	movq	14052(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  211614: 48 35 92 d4 00 00            	xorq	$54418, %rax            # imm = 0xD492
  21161a: 8a 14 01                     	movb	(%rcx,%rax), %dl
  21161d: 80 c2 01                     	addb	$1, %dl
  211620: 80 d2 00                     	adcb	$0, %dl
  211623: 88 14 01                     	movb	%dl, (%rcx,%rax)
  211626: 64 c7 04 25 90 ff ff ff 49 6a 00 00  	movl	$27209, %fs:-112 # imm = 0x6A49
  211632: bf 7c 22 20 00               	movl	$2105980, %edi          # imm = 0x20227C
  211637: be a7 20 20 00               	movl	$2105511, %esi          # imm = 0x2020A7
  21163c: b9 eb 26 20 00               	movl	$2107115, %ecx          # imm = 0x2026EB
  211641: ba 25 08 00 00               	movl	$2085, %edx             # imm = 0x825
  211646: e8 95 12 00 00               	callq	0x2128e0 <__assert_fail@plt>
  21164b: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  211654: 48 8b 0d 9d 36 00 00         	movq	13981(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  21165b: 48 35 bd 7e 00 00            	xorq	$32445, %rax            # imm = 0x7EBD
  211661: 8a 14 01                     	movb	(%rcx,%rax), %dl
  211664: 80 c2 01                     	addb	$1, %dl
  211667: 80 d2 00                     	adcb	$0, %dl
  21166a: 88 14 01                     	movb	%dl, (%rcx,%rax)
  21166d: 64 c7 04 25 90 ff ff ff 5e 3f 00 00  	movl	$16222, %fs:-112 # imm = 0x3F5E
  211679: bf bf 20 20 00               	movl	$2105535, %edi          # imm = 0x2020BF
  21167e: be a7 20 20 00               	movl	$2105511, %esi          # imm = 0x2020A7
  211683: b9 eb 26 20 00               	movl	$2107115, %ecx          # imm = 0x2026EB
  211688: ba 34 04 00 00               	movl	$1076, %edx             # imm = 0x434
  21168d: e8 4e 12 00 00               	callq	0x2128e0 <__assert_fail@plt>
  211692: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  21169b: 48 8b 0d 56 36 00 00         	movq	13910(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  2116a2: 48 35 9b 04 00 00            	xorq	$1179, %rax             # imm = 0x49B
  2116a8: 8a 14 01                     	movb	(%rcx,%rax), %dl
  2116ab: 80 c2 01                     	addb	$1, %dl
  2116ae: 80 d2 00                     	adcb	$0, %dl
  2116b1: 88 14 01                     	movb	%dl, (%rcx,%rax)
  2116b4: 64 c7 04 25 90 ff ff ff 4d 02 00 00  	movl	$589, %fs:-112  # imm = 0x24D
  2116c0: bf bf 20 20 00               	movl	$2105535, %edi          # imm = 0x2020BF
  2116c5: be a7 20 20 00               	movl	$2105511, %esi          # imm = 0x2020A7
  2116ca: b9 eb 26 20 00               	movl	$2107115, %ecx          # imm = 0x2026EB
  2116cf: ba c5 07 00 00               	movl	$1989, %edx             # imm = 0x7C5
  2116d4: e8 07 12 00 00               	callq	0x2128e0 <__assert_fail@plt>
  2116d9: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  2116e2: 48 8b 0d 0f 36 00 00         	movq	13839(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  2116e9: 48 35 a0 af 00 00            	xorq	$44960, %rax            # imm = 0xAFA0
  2116ef: 8a 14 01                     	movb	(%rcx,%rax), %dl
  2116f2: 80 c2 01                     	addb	$1, %dl
  2116f5: 80 d2 00                     	adcb	$0, %dl
  2116f8: 88 14 01                     	movb	%dl, (%rcx,%rax)
  2116fb: 64 c7 04 25 90 ff ff ff d0 57 00 00  	movl	$22480, %fs:-112 # imm = 0x57D0
  211707: bf bf 20 20 00               	movl	$2105535, %edi          # imm = 0x2020BF
  21170c: be a7 20 20 00               	movl	$2105511, %esi          # imm = 0x2020A7
  211711: b9 eb 26 20 00               	movl	$2107115, %ecx          # imm = 0x2026EB
  211716: ba 1a 08 00 00               	movl	$2074, %edx             # imm = 0x81A
  21171b: e8 c0 11 00 00               	callq	0x2128e0 <__assert_fail@plt>
  211720: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  211729: 48 8b 0d c8 35 00 00         	movq	13768(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  211730: 48 35 00 74 00 00            	xorq	$29696, %rax            # imm = 0x7400
  211736: 8a 14 01                     	movb	(%rcx,%rax), %dl
  211739: 80 c2 01                     	addb	$1, %dl
  21173c: 80 d2 00                     	adcb	$0, %dl
  21173f: 88 14 01                     	movb	%dl, (%rcx,%rax)
  211742: 64 c7 04 25 90 ff ff ff 00 3a 00 00  	movl	$14848, %fs:-112 # imm = 0x3A00
  21174e: bf a5 25 20 00               	movl	$2106789, %edi          # imm = 0x2025A5
  211753: be a7 20 20 00               	movl	$2105511, %esi          # imm = 0x2020A7
  211758: b9 eb 26 20 00               	movl	$2107115, %ecx          # imm = 0x2026EB
  21175d: ba 37 08 00 00               	movl	$2103, %edx             # imm = 0x837
  211762: e8 79 11 00 00               	callq	0x2128e0 <__assert_fail@plt>
  211767: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  211770: 48 8b 0d 81 35 00 00         	movq	13697(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  211777: 48 35 2a 98 00 00            	xorq	$38954, %rax            # imm = 0x982A
  21177d: 8a 14 01                     	movb	(%rcx,%rax), %dl
  211780: 80 c2 01                     	addb	$1, %dl
  211783: 80 d2 00                     	adcb	$0, %dl
  211786: 88 14 01                     	movb	%dl, (%rcx,%rax)
  211789: 64 c7 04 25 90 ff ff ff 15 4c 00 00  	movl	$19477, %fs:-112 # imm = 0x4C15
  211795: bf bf 20 20 00               	movl	$2105535, %edi          # imm = 0x2020BF
  21179a: be a7 20 20 00               	movl	$2105511, %esi          # imm = 0x2020A7
  21179f: b9 eb 26 20 00               	movl	$2107115, %ecx          # imm = 0x2026EB
  2117a4: ba 3a 08 00 00               	movl	$2106, %edx             # imm = 0x83A
  2117a9: e8 32 11 00 00               	callq	0x2128e0 <__assert_fail@plt>
  2117ae: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  2117b7: 48 8b 0d 3a 35 00 00         	movq	13626(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  2117be: 48 35 fe cd 00 00            	xorq	$52734, %rax            # imm = 0xCDFE
  2117c4: 8a 14 01                     	movb	(%rcx,%rax), %dl
  2117c7: 80 c2 01                     	addb	$1, %dl
  2117ca: 80 d2 00                     	adcb	$0, %dl
  2117cd: 88 14 01                     	movb	%dl, (%rcx,%rax)
  2117d0: 64 c7 04 25 90 ff ff ff ff 66 00 00  	movl	$26367, %fs:-112 # imm = 0x66FF
  2117dc: bf 7a 26 20 00               	movl	$2107002, %edi          # imm = 0x20267A
  2117e1: be a7 20 20 00               	movl	$2105511, %esi          # imm = 0x2020A7
  2117e6: b9 eb 26 20 00               	movl	$2107115, %ecx          # imm = 0x2026EB
  2117eb: ba 3e 08 00 00               	movl	$2110, %edx             # imm = 0x83E
  2117f0: e8 eb 10 00 00               	callq	0x2128e0 <__assert_fail@plt>
  2117f5: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  2117fe: 48 8b 0d f3 34 00 00         	movq	13555(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  211805: 48 35 4e 0a 00 00            	xorq	$2638, %rax             # imm = 0xA4E
  21180b: 8a 14 01                     	movb	(%rcx,%rax), %dl
  21180e: 80 c2 01                     	addb	$1, %dl
  211811: 80 d2 00                     	adcb	$0, %dl
  211814: 88 14 01                     	movb	%dl, (%rcx,%rax)
  211817: 64 c7 04 25 90 ff ff ff 27 05 00 00  	movl	$1319, %fs:-112 # imm = 0x527
  211823: bf 7a 26 20 00               	movl	$2107002, %edi          # imm = 0x20267A
  211828: be a7 20 20 00               	movl	$2105511, %esi          # imm = 0x2020A7
  21182d: b9 eb 26 20 00               	movl	$2107115, %ecx          # imm = 0x2026EB
  211832: ba e0 07 00 00               	movl	$2016, %edx             # imm = 0x7E0
  211837: e8 a4 10 00 00               	callq	0x2128e0 <__assert_fail@plt>
  21183c: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  211845: 48 8b 0d ac 34 00 00         	movq	13484(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  21184c: 48 35 b8 f1 00 00            	xorq	$61880, %rax            # imm = 0xF1B8
  211852: 8a 14 01                     	movb	(%rcx,%rax), %dl
  211855: 80 c2 01                     	addb	$1, %dl
  211858: 80 d2 00                     	adcb	$0, %dl
  21185b: 88 14 01                     	movb	%dl, (%rcx,%rax)
  21185e: 64 c7 04 25 90 ff ff ff dc 78 00 00  	movl	$30940, %fs:-112 # imm = 0x78DC
  21186a: bf 7a 26 20 00               	movl	$2107002, %edi          # imm = 0x20267A
  21186f: be a7 20 20 00               	movl	$2105511, %esi          # imm = 0x2020A7
  211874: b9 eb 26 20 00               	movl	$2107115, %ecx          # imm = 0x2026EB
  211879: ba 36 08 00 00               	movl	$2102, %edx             # imm = 0x836
  21187e: e8 5d 10 00 00               	callq	0x2128e0 <__assert_fail@plt>
  211883: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  21188c: 48 8b 0d 65 34 00 00         	movq	13413(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  211893: 48 35 8c f8 00 00            	xorq	$63628, %rax            # imm = 0xF88C
  211899: 8a 14 01                     	movb	(%rcx,%rax), %dl
  21189c: 80 c2 01                     	addb	$1, %dl
  21189f: 80 d2 00                     	adcb	$0, %dl
  2118a2: 88 14 01                     	movb	%dl, (%rcx,%rax)
  2118a5: 64 c7 04 25 90 ff ff ff 46 7c 00 00  	movl	$31814, %fs:-112 # imm = 0x7C46
  2118b1: bf 7a 26 20 00               	movl	$2107002, %edi          # imm = 0x20267A
  2118b6: be a7 20 20 00               	movl	$2105511, %esi          # imm = 0x2020A7
  2118bb: b9 eb 26 20 00               	movl	$2107115, %ecx          # imm = 0x2026EB
  2118c0: ba 0e 08 00 00               	movl	$2062, %edx             # imm = 0x80E
  2118c5: e8 16 10 00 00               	callq	0x2128e0 <__assert_fail@plt>
  2118ca: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  2118d3: 48 8b 0d 1e 34 00 00         	movq	13342(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  2118da: 48 35 5a aa 00 00            	xorq	$43610, %rax            # imm = 0xAA5A
  2118e0: 8a 14 01                     	movb	(%rcx,%rax), %dl
  2118e3: 80 c2 01                     	addb	$1, %dl
  2118e6: 80 d2 00                     	adcb	$0, %dl
  2118e9: 88 14 01                     	movb	%dl, (%rcx,%rax)
  2118ec: 64 c7 04 25 90 ff ff ff 2d 55 00 00  	movl	$21805, %fs:-112 # imm = 0x552D
  2118f8: bf 7a 26 20 00               	movl	$2107002, %edi          # imm = 0x20267A
  2118fd: be a7 20 20 00               	movl	$2105511, %esi          # imm = 0x2020A7
  211902: b9 eb 26 20 00               	movl	$2107115, %ecx          # imm = 0x2026EB
  211907: ba 03 08 00 00               	movl	$2051, %edx             # imm = 0x803
  21190c: e8 cf 0f 00 00               	callq	0x2128e0 <__assert_fail@plt>
  211911: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  21191a: 48 8b 0d d7 33 00 00         	movq	13271(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  211921: 48 35 07 99 00 00            	xorq	$39175, %rax            # imm = 0x9907
  211927: 8a 14 01                     	movb	(%rcx,%rax), %dl
  21192a: 80 c2 01                     	addb	$1, %dl
  21192d: 80 d2 00                     	adcb	$0, %dl
  211930: 88 14 01                     	movb	%dl, (%rcx,%rax)
  211933: 64 c7 04 25 90 ff ff ff 83 4c 00 00  	movl	$19587, %fs:-112 # imm = 0x4C83
  21193f: bf 7a 26 20 00               	movl	$2107002, %edi          # imm = 0x20267A
  211944: be a7 20 20 00               	movl	$2105511, %esi          # imm = 0x2020A7
  211949: b9 eb 26 20 00               	movl	$2107115, %ecx          # imm = 0x2026EB
  21194e: ba 23 08 00 00               	movl	$2083, %edx             # imm = 0x823
  211953: e8 88 0f 00 00               	callq	0x2128e0 <__assert_fail@plt>
  211958: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  211961: 48 8b 0d 90 33 00 00         	movq	13200(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  211968: 48 35 99 54 00 00            	xorq	$21657, %rax            # imm = 0x5499
  21196e: 8a 14 01                     	movb	(%rcx,%rax), %dl
  211971: 80 c2 01                     	addb	$1, %dl
  211974: 80 d2 00                     	adcb	$0, %dl
  211977: 88 14 01                     	movb	%dl, (%rcx,%rax)
  21197a: 64 c7 04 25 90 ff ff ff 4c 2a 00 00  	movl	$10828, %fs:-112 # imm = 0x2A4C
  211986: bf 36 1e 20 00               	movl	$2104886, %edi          # imm = 0x201E36
  21198b: be a7 20 20 00               	movl	$2105511, %esi          # imm = 0x2020A7
  211990: b9 eb 26 20 00               	movl	$2107115, %ecx          # imm = 0x2026EB
  211995: ba ce 07 00 00               	movl	$1998, %edx             # imm = 0x7CE
  21199a: e8 41 0f 00 00               	callq	0x2128e0 <__assert_fail@plt>
  21199f: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  2119a8: 48 8b 0d 49 33 00 00         	movq	13129(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  2119af: 48 35 d7 df 00 00            	xorq	$57303, %rax            # imm = 0xDFD7
  2119b5: 8a 14 01                     	movb	(%rcx,%rax), %dl
  2119b8: 80 c2 01                     	addb	$1, %dl
  2119bb: 80 d2 00                     	adcb	$0, %dl
  2119be: 88 14 01                     	movb	%dl, (%rcx,%rax)
  2119c1: 64 c7 04 25 90 ff ff ff eb 6f 00 00  	movl	$28651, %fs:-112 # imm = 0x6FEB
  2119cd: bf 7a 26 20 00               	movl	$2107002, %edi          # imm = 0x20267A
  2119d2: be a7 20 20 00               	movl	$2105511, %esi          # imm = 0x2020A7
  2119d7: b9 eb 26 20 00               	movl	$2107115, %ecx          # imm = 0x2026EB
  2119dc: ba cf 07 00 00               	movl	$1999, %edx             # imm = 0x7CF
  2119e1: e8 fa 0e 00 00               	callq	0x2128e0 <__assert_fail@plt>
  2119e6: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  2119ef: 48 8b 0d 02 33 00 00         	movq	13058(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  2119f6: 48 35 a2 e5 00 00            	xorq	$58786, %rax            # imm = 0xE5A2
  2119fc: 8a 14 01                     	movb	(%rcx,%rax), %dl
  2119ff: 80 c2 01                     	addb	$1, %dl
  211a02: 80 d2 00                     	adcb	$0, %dl
  211a05: 88 14 01                     	movb	%dl, (%rcx,%rax)
  211a08: 64 c7 04 25 90 ff ff ff d1 72 00 00  	movl	$29393, %fs:-112 # imm = 0x72D1
  211a14: bf bf 20 20 00               	movl	$2105535, %edi          # imm = 0x2020BF
  211a19: be a7 20 20 00               	movl	$2105511, %esi          # imm = 0x2020A7
  211a1e: b9 eb 26 20 00               	movl	$2107115, %ecx          # imm = 0x2026EB
  211a23: ba 43 08 00 00               	movl	$2115, %edx             # imm = 0x843
  211a28: e8 b3 0e 00 00               	callq	0x2128e0 <__assert_fail@plt>
  211a2d: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  211a36: 48 8b 0d bb 32 00 00         	movq	12987(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  211a3d: 48 35 c2 3f 00 00            	xorq	$16322, %rax            # imm = 0x3FC2
  211a43: 8a 14 01                     	movb	(%rcx,%rax), %dl
  211a46: 80 c2 01                     	addb	$1, %dl
  211a49: 80 d2 00                     	adcb	$0, %dl
  211a4c: 88 14 01                     	movb	%dl, (%rcx,%rax)
  211a4f: 64 c7 04 25 90 ff ff ff e1 1f 00 00  	movl	$8161, %fs:-112 # imm = 0x1FE1
  211a5b: bf bf 20 20 00               	movl	$2105535, %edi          # imm = 0x2020BF
  211a60: be a7 20 20 00               	movl	$2105511, %esi          # imm = 0x2020A7
  211a65: b9 eb 26 20 00               	movl	$2107115, %ecx          # imm = 0x2026EB
  211a6a: ba e6 02 00 00               	movl	$742, %edx              # imm = 0x2E6
  211a6f: e8 6c 0e 00 00               	callq	0x2128e0 <__assert_fail@plt>
  211a74: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  211a7d: 48 8b 0d 74 32 00 00         	movq	12916(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  211a84: 48 35 17 2b 00 00            	xorq	$11031, %rax            # imm = 0x2B17
  211a8a: 8a 14 01                     	movb	(%rcx,%rax), %dl
  211a8d: 80 c2 01                     	addb	$1, %dl
  211a90: 80 d2 00                     	adcb	$0, %dl
  211a93: 88 14 01                     	movb	%dl, (%rcx,%rax)
  211a96: 64 c7 04 25 90 ff ff ff 8b 15 00 00  	movl	$5515, %fs:-112 # imm = 0x158B
  211aa2: bf bf 20 20 00               	movl	$2105535, %edi          # imm = 0x2020BF
  211aa7: be a7 20 20 00               	movl	$2105511, %esi          # imm = 0x2020A7
  211aac: b9 eb 26 20 00               	movl	$2107115, %ecx          # imm = 0x2026EB
  211ab1: ba 5e 08 00 00               	movl	$2142, %edx             # imm = 0x85E
  211ab6: e8 25 0e 00 00               	callq	0x2128e0 <__assert_fail@plt>
  211abb: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  211ac4: 48 8b 0d 2d 32 00 00         	movq	12845(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  211acb: 48 35 a4 34 00 00            	xorq	$13476, %rax            # imm = 0x34A4
  211ad1: 8a 14 01                     	movb	(%rcx,%rax), %dl
  211ad4: 80 c2 01                     	addb	$1, %dl
  211ad7: 80 d2 00                     	adcb	$0, %dl
  211ada: 88 14 01                     	movb	%dl, (%rcx,%rax)
  211add: 64 c7 04 25 90 ff ff ff 52 1a 00 00  	movl	$6738, %fs:-112 # imm = 0x1A52
  211ae9: bf 5e 26 20 00               	movl	$2106974, %edi          # imm = 0x20265E
  211aee: be a7 20 20 00               	movl	$2105511, %esi          # imm = 0x2020A7
  211af3: b9 eb 26 20 00               	movl	$2107115, %ecx          # imm = 0x2026EB
  211af8: ba 5a 05 00 00               	movl	$1370, %edx             # imm = 0x55A
  211afd: e8 de 0d 00 00               	callq	0x2128e0 <__assert_fail@plt>
  211b02: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  211b0b: 48 8b 0d e6 31 00 00         	movq	12774(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  211b12: 48 35 b5 45 00 00            	xorq	$17845, %rax            # imm = 0x45B5
  211b18: 8a 14 01                     	movb	(%rcx,%rax), %dl
  211b1b: 80 c2 01                     	addb	$1, %dl
  211b1e: 80 d2 00                     	adcb	$0, %dl
  211b21: 88 14 01                     	movb	%dl, (%rcx,%rax)
  211b24: 64 c7 04 25 90 ff ff ff da 22 00 00  	movl	$8922, %fs:-112 # imm = 0x22DA
  211b30: bf bf 20 20 00               	movl	$2105535, %edi          # imm = 0x2020BF
  211b35: be a7 20 20 00               	movl	$2105511, %esi          # imm = 0x2020A7
  211b3a: b9 eb 26 20 00               	movl	$2107115, %ecx          # imm = 0x2026EB
  211b3f: ba 10 03 00 00               	movl	$784, %edx              # imm = 0x310
  211b44: e8 97 0d 00 00               	callq	0x2128e0 <__assert_fail@plt>
  211b49: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  211b52: 48 8b 0d 9f 31 00 00         	movq	12703(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  211b59: 48 35 a4 25 00 00            	xorq	$9636, %rax             # imm = 0x25A4
  211b5f: 8a 14 01                     	movb	(%rcx,%rax), %dl
  211b62: 80 c2 01                     	addb	$1, %dl
  211b65: 80 d2 00                     	adcb	$0, %dl
  211b68: 88 14 01                     	movb	%dl, (%rcx,%rax)
  211b6b: 64 c7 04 25 90 ff ff ff d2 12 00 00  	movl	$4818, %fs:-112 # imm = 0x12D2
  211b77: bf bf 20 20 00               	movl	$2105535, %edi          # imm = 0x2020BF
  211b7c: be a7 20 20 00               	movl	$2105511, %esi          # imm = 0x2020A7
  211b81: b9 eb 26 20 00               	movl	$2107115, %ecx          # imm = 0x2026EB
  211b86: ba 8e 03 00 00               	movl	$910, %edx              # imm = 0x38E
  211b8b: e8 50 0d 00 00               	callq	0x2128e0 <__assert_fail@plt>
  211b90: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  211b99: 48 8b 0d 58 31 00 00         	movq	12632(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  211ba0: 48 35 7f 9e 00 00            	xorq	$40575, %rax            # imm = 0x9E7F
  211ba6: 8a 14 01                     	movb	(%rcx,%rax), %dl
  211ba9: 80 c2 01                     	addb	$1, %dl
  211bac: 80 d2 00                     	adcb	$0, %dl
  211baf: 88 14 01                     	movb	%dl, (%rcx,%rax)
  211bb2: 64 c7 04 25 90 ff ff ff 3f 4f 00 00  	movl	$20287, %fs:-112 # imm = 0x4F3F
  211bbe: bf bf 20 20 00               	movl	$2105535, %edi          # imm = 0x2020BF
  211bc3: be a7 20 20 00               	movl	$2105511, %esi          # imm = 0x2020A7
  211bc8: b9 eb 26 20 00               	movl	$2107115, %ecx          # imm = 0x2026EB
  211bcd: ba 94 03 00 00               	movl	$916, %edx              # imm = 0x394
  211bd2: e8 09 0d 00 00               	callq	0x2128e0 <__assert_fail@plt>
  211bd7: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  211be0: 48 8b 0d 11 31 00 00         	movq	12561(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  211be7: 48 35 83 29 00 00            	xorq	$10627, %rax            # imm = 0x2983
  211bed: 8a 14 01                     	movb	(%rcx,%rax), %dl
  211bf0: 80 c2 01                     	addb	$1, %dl
  211bf3: 80 d2 00                     	adcb	$0, %dl
  211bf6: 88 14 01                     	movb	%dl, (%rcx,%rax)
  211bf9: 64 c7 04 25 90 ff ff ff c1 14 00 00  	movl	$5313, %fs:-112 # imm = 0x14C1
  211c05: bf bf 20 20 00               	movl	$2105535, %edi          # imm = 0x2020BF
  211c0a: be a7 20 20 00               	movl	$2105511, %esi          # imm = 0x2020A7
  211c0f: b9 eb 26 20 00               	movl	$2107115, %ecx          # imm = 0x2026EB
  211c14: ba c6 03 00 00               	movl	$966, %edx              # imm = 0x3C6
  211c19: e8 c2 0c 00 00               	callq	0x2128e0 <__assert_fail@plt>
  211c1e: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  211c27: 48 8b 0d ca 30 00 00         	movq	12490(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  211c2e: 48 35 9c 9d 00 00            	xorq	$40348, %rax            # imm = 0x9D9C
  211c34: 8a 14 01                     	movb	(%rcx,%rax), %dl
  211c37: 80 c2 01                     	addb	$1, %dl
  211c3a: 80 d2 00                     	adcb	$0, %dl
  211c3d: 88 14 01                     	movb	%dl, (%rcx,%rax)
  211c40: 64 c7 04 25 90 ff ff ff ce 4e 00 00  	movl	$20174, %fs:-112 # imm = 0x4ECE
  211c4c: bf bf 20 20 00               	movl	$2105535, %edi          # imm = 0x2020BF
  211c51: be a7 20 20 00               	movl	$2105511, %esi          # imm = 0x2020A7
  211c56: b9 eb 26 20 00               	movl	$2107115, %ecx          # imm = 0x2026EB
  211c5b: ba 5f 08 00 00               	movl	$2143, %edx             # imm = 0x85F
  211c60: e8 7b 0c 00 00               	callq	0x2128e0 <__assert_fail@plt>
  211c65: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  211c6e: 48 8b 0d 83 30 00 00         	movq	12419(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  211c75: 48 35 e8 1c 00 00            	xorq	$7400, %rax             # imm = 0x1CE8
  211c7b: 8a 14 01                     	movb	(%rcx,%rax), %dl
  211c7e: 80 c2 01                     	addb	$1, %dl
  211c81: 80 d2 00                     	adcb	$0, %dl
  211c84: 88 14 01                     	movb	%dl, (%rcx,%rax)
  211c87: 64 c7 04 25 90 ff ff ff 74 0e 00 00  	movl	$3700, %fs:-112 # imm = 0xE74
  211c93: bf bf 20 20 00               	movl	$2105535, %edi          # imm = 0x2020BF
  211c98: be a7 20 20 00               	movl	$2105511, %esi          # imm = 0x2020A7
  211c9d: b9 eb 26 20 00               	movl	$2107115, %ecx          # imm = 0x2026EB
  211ca2: ba 66 07 00 00               	movl	$1894, %edx             # imm = 0x766
  211ca7: e8 34 0c 00 00               	callq	0x2128e0 <__assert_fail@plt>
  211cac: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  211cb5: 48 8b 0d 3c 30 00 00         	movq	12348(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  211cbc: 48 35 3d f0 00 00            	xorq	$61501, %rax            # imm = 0xF03D
  211cc2: 8a 14 01                     	movb	(%rcx,%rax), %dl
  211cc5: 80 c2 01                     	addb	$1, %dl
  211cc8: 80 d2 00                     	adcb	$0, %dl
  211ccb: 88 14 01                     	movb	%dl, (%rcx,%rax)
  211cce: 64 c7 04 25 90 ff ff ff 1e 78 00 00  	movl	$30750, %fs:-112 # imm = 0x781E
  211cda: bf bf 20 20 00               	movl	$2105535, %edi          # imm = 0x2020BF
  211cdf: be a7 20 20 00               	movl	$2105511, %esi          # imm = 0x2020A7
  211ce4: b9 eb 26 20 00               	movl	$2107115, %ecx          # imm = 0x2026EB
  211ce9: ba 69 05 00 00               	movl	$1385, %edx             # imm = 0x569
  211cee: e8 ed 0b 00 00               	callq	0x2128e0 <__assert_fail@plt>
  211cf3: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  211cfc: 48 8b 0d f5 2f 00 00         	movq	12277(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  211d03: 48 35 f3 a7 00 00            	xorq	$42995, %rax            # imm = 0xA7F3
  211d09: 8a 14 01                     	movb	(%rcx,%rax), %dl
  211d0c: 80 c2 01                     	addb	$1, %dl
  211d0f: 80 d2 00                     	adcb	$0, %dl
  211d12: 88 14 01                     	movb	%dl, (%rcx,%rax)
  211d15: 64 c7 04 25 90 ff ff ff f9 53 00 00  	movl	$21497, %fs:-112 # imm = 0x53F9
  211d21: bf bf 20 20 00               	movl	$2105535, %edi          # imm = 0x2020BF
  211d26: be a7 20 20 00               	movl	$2105511, %esi          # imm = 0x2020A7
  211d2b: b9 eb 26 20 00               	movl	$2107115, %ecx          # imm = 0x2026EB
  211d30: ba 60 08 00 00               	movl	$2144, %edx             # imm = 0x860
  211d35: e8 a6 0b 00 00               	callq	0x2128e0 <__assert_fail@plt>
  211d3a: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  211d43: 48 8b 0d ae 2f 00 00         	movq	12206(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  211d4a: 48 35 b1 fb 00 00            	xorq	$64433, %rax            # imm = 0xFBB1
  211d50: 8a 14 01                     	movb	(%rcx,%rax), %dl
  211d53: 80 c2 01                     	addb	$1, %dl
  211d56: 80 d2 00                     	adcb	$0, %dl
  211d59: 88 14 01                     	movb	%dl, (%rcx,%rax)
  211d5c: 64 c7 04 25 90 ff ff ff d8 7d 00 00  	movl	$32216, %fs:-112 # imm = 0x7DD8
  211d68: bf bf 20 20 00               	movl	$2105535, %edi          # imm = 0x2020BF
  211d6d: be a7 20 20 00               	movl	$2105511, %esi          # imm = 0x2020A7
  211d72: b9 eb 26 20 00               	movl	$2107115, %ecx          # imm = 0x2026EB
  211d77: ba 85 07 00 00               	movl	$1925, %edx             # imm = 0x785
  211d7c: e8 5f 0b 00 00               	callq	0x2128e0 <__assert_fail@plt>
  211d81: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  211d8a: 48 8b 0d 67 2f 00 00         	movq	12135(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  211d91: 48 35 35 27 00 00            	xorq	$10037, %rax            # imm = 0x2735
  211d97: 8a 14 01                     	movb	(%rcx,%rax), %dl
  211d9a: 80 c2 01                     	addb	$1, %dl
  211d9d: 80 d2 00                     	adcb	$0, %dl
  211da0: 88 14 01                     	movb	%dl, (%rcx,%rax)
  211da3: 64 c7 04 25 90 ff ff ff 9a 13 00 00  	movl	$5018, %fs:-112 # imm = 0x139A
  211daf: bf bf 20 20 00               	movl	$2105535, %edi          # imm = 0x2020BF
  211db4: be a7 20 20 00               	movl	$2105511, %esi          # imm = 0x2020A7
  211db9: b9 eb 26 20 00               	movl	$2107115, %ecx          # imm = 0x2026EB
  211dbe: ba 8d 07 00 00               	movl	$1933, %edx             # imm = 0x78D
  211dc3: e8 18 0b 00 00               	callq	0x2128e0 <__assert_fail@plt>
  211dc8: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  211dd1: 48 8b 0d 20 2f 00 00         	movq	12064(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  211dd8: 48 35 34 1c 00 00            	xorq	$7220, %rax             # imm = 0x1C34
  211dde: 8a 14 01                     	movb	(%rcx,%rax), %dl
  211de1: 80 c2 01                     	addb	$1, %dl
  211de4: 80 d2 00                     	adcb	$0, %dl
  211de7: 88 14 01                     	movb	%dl, (%rcx,%rax)
  211dea: 64 c7 04 25 90 ff ff ff 1a 0e 00 00  	movl	$3610, %fs:-112 # imm = 0xE1A
  211df6: bf bf 20 20 00               	movl	$2105535, %edi          # imm = 0x2020BF
  211dfb: be a7 20 20 00               	movl	$2105511, %esi          # imm = 0x2020A7
  211e00: b9 eb 26 20 00               	movl	$2107115, %ecx          # imm = 0x2026EB
  211e05: ba 61 08 00 00               	movl	$2145, %edx             # imm = 0x861
  211e0a: e8 d1 0a 00 00               	callq	0x2128e0 <__assert_fail@plt>
  211e0f: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  211e18: 48 8b 0d d9 2e 00 00         	movq	11993(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  211e1f: 48 35 2f 73 00 00            	xorq	$29487, %rax            # imm = 0x732F
  211e25: 8a 14 01                     	movb	(%rcx,%rax), %dl
  211e28: 80 c2 01                     	addb	$1, %dl
  211e2b: 80 d2 00                     	adcb	$0, %dl
  211e2e: 88 14 01                     	movb	%dl, (%rcx,%rax)
  211e31: 64 c7 04 25 90 ff ff ff 97 39 00 00  	movl	$14743, %fs:-112 # imm = 0x3997
  211e3d: bf bf 20 20 00               	movl	$2105535, %edi          # imm = 0x2020BF
  211e42: be a7 20 20 00               	movl	$2105511, %esi          # imm = 0x2020A7
  211e47: b9 eb 26 20 00               	movl	$2107115, %ecx          # imm = 0x2026EB
  211e4c: ba 60 07 00 00               	movl	$1888, %edx             # imm = 0x760
  211e51: e8 8a 0a 00 00               	callq	0x2128e0 <__assert_fail@plt>
  211e56: cc                           	int3
  211e57: cc                           	int3
  211e58: cc                           	int3
  211e59: cc                           	int3
  211e5a: cc                           	int3
  211e5b: cc                           	int3
  211e5c: cc                           	int3
  211e5d: cc                           	int3
  211e5e: cc                           	int3
  211e5f: cc                           	int3

0000000000211e60 <parse_url_char>:
  211e60: 55                           	pushq	%rbp
  211e61: 48 89 e5                     	movq	%rsp, %rbp
  211e64: b8 01 00 00 00               	movl	$1, %eax
  211e69: 40 80 fe 20                  	cmpb	$32, %sil
  211e6d: 77 45                        	ja	0x211eb4 <parse_url_char+0x54>
  211e6f: 40 0f b6 ce                  	movzbl	%sil, %ecx
  211e73: 48 ba 00 24 00 00 01 00 00 00	movabsq	$4294976512, %rdx       # imm = 0x100002400
  211e7d: 48 0f a3 ca                  	btq	%rcx, %rdx
  211e81: 73 31                        	jae	0x211eb4 <parse_url_char+0x54>
  211e83: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  211e8c: 48 8b 35 65 2e 00 00         	movq	11877(%rip), %rsi       # 0x214cf8 <__afl_area_ptr>
  211e93: 48 81 f1 04 3e 00 00         	xorq	$15876, %rcx            # imm = 0x3E04
  211e9a: 8a 14 0e                     	movb	(%rsi,%rcx), %dl
  211e9d: 80 c2 01                     	addb	$1, %dl
  211ea0: 80 d2 00                     	adcb	$0, %dl
  211ea3: 88 14 0e                     	movb	%dl, (%rsi,%rcx)
  211ea6: 64 c7 04 25 90 ff ff ff 02 1f 00 00  	movl	$7938, %fs:-112 # imm = 0x1F02
  211eb2: 5d                           	popq	%rbp
  211eb3: c3                           	retq
  211eb4: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  211ebd: 4c 8b 05 34 2e 00 00         	movq	11828(%rip), %r8        # 0x214cf8 <__afl_area_ptr>
  211ec4: 48 81 f1 a2 55 00 00         	xorq	$21922, %rcx            # imm = 0x55A2
  211ecb: 41 8a 14 08                  	movb	(%r8,%rcx), %dl
  211ecf: 80 c2 01                     	addb	$1, %dl
  211ed2: 80 d2 00                     	adcb	$0, %dl
  211ed5: 41 88 14 08                  	movb	%dl, (%r8,%rcx)
  211ed9: 64 c7 04 25 90 ff ff ff d1 2a 00 00  	movl	$10961, %fs:-112 # imm = 0x2AD1
  211ee5: 83 c7 ec                     	addl	$-20, %edi
  211ee8: 83 ff 0b                     	cmpl	$11, %edi
  211eeb: 0f 87 8f 02 00 00            	ja	0x212180 <parse_url_char+0x320>
  211ef1: 40 0f b6 d6                  	movzbl	%sil, %edx
  211ef5: ff 24 fd d0 33 20 00         	jmpq	*2110416(,%rdi,8)
  211efc: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  211f05: 48 8b 0d ec 2d 00 00         	movq	11756(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  211f0c: 48 35 f7 2e 00 00            	xorq	$12023, %rax            # imm = 0x2EF7
  211f12: 8a 14 01                     	movb	(%rcx,%rax), %dl
  211f15: 80 c2 01                     	addb	$1, %dl
  211f18: 80 d2 00                     	adcb	$0, %dl
  211f1b: 88 14 01                     	movb	%dl, (%rcx,%rax)
  211f1e: 64 c7 04 25 90 ff ff ff 7b 17 00 00  	movl	$6011, %fs:-112 # imm = 0x177B
  211f2a: 40 80 fe 40                  	cmpb	$64, %sil
  211f2e: 0f 84 db 05 00 00            	je	0x21250f <parse_url_char+0x6af>
  211f34: 40 80 fe 3f                  	cmpb	$63, %sil
  211f38: 0f 84 61 05 00 00            	je	0x21249f <parse_url_char+0x63f>
  211f3e: 40 80 fe 2f                  	cmpb	$47, %sil
  211f42: 0f 85 bd 02 00 00            	jne	0x212205 <parse_url_char+0x3a5>
  211f48: e9 8a 05 00 00               	jmp	0x2124d7 <parse_url_char+0x677>
  211f4d: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  211f56: 48 8b 3d 9b 2d 00 00         	movq	11675(%rip), %rdi       # 0x214cf8 <__afl_area_ptr>
  211f5d: 48 35 aa 86 00 00            	xorq	$34474, %rax            # imm = 0x86AA
  211f63: 8a 0c 07                     	movb	(%rdi,%rax), %cl
  211f66: 80 c1 01                     	addb	$1, %cl
  211f69: 80 d1 00                     	adcb	$0, %cl
  211f6c: 88 0c 07                     	movb	%cl, (%rdi,%rax)
  211f6f: 64 c7 04 25 90 ff ff ff 55 43 00 00  	movl	$17237, %fs:-112 # imm = 0x4355
  211f7b: 48 89 d0                     	movq	%rdx, %rax
  211f7e: 48 c1 e8 03                  	shrq	$3, %rax
  211f82: 0f b6 80 30 38 20 00         	movzbl	2111536(%rax), %eax
  211f89: 89 f1                        	movl	%esi, %ecx
  211f8b: 80 e1 07                     	andb	$7, %cl
  211f8e: 41 b8 01 00 00 00            	movl	$1, %r8d
  211f94: bf 01 00 00 00               	movl	$1, %edi
  211f99: d3 e7                        	shll	%cl, %edi
  211f9b: 21 c7                        	andl	%eax, %edi
  211f9d: 83 e2 80                     	andl	$-128, %edx
  211fa0: b8 1d 00 00 00               	movl	$29, %eax
  211fa5: 09 fa                        	orl	%edi, %edx
  211fa7: 0f 85 d6 fe ff ff            	jne	0x211e83 <parse_url_char+0x23>
  211fad: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  211fb6: 48 8b 0d 3b 2d 00 00         	movq	11579(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  211fbd: 48 35 3f 2f 00 00            	xorq	$12095, %rax            # imm = 0x2F3F
  211fc3: 8a 14 01                     	movb	(%rcx,%rax), %dl
  211fc6: 80 c2 01                     	addb	$1, %dl
  211fc9: 80 d2 00                     	adcb	$0, %dl
  211fcc: 88 14 01                     	movb	%dl, (%rcx,%rax)
  211fcf: 64 c7 04 25 90 ff ff ff 9f 17 00 00  	movl	$6047, %fs:-112 # imm = 0x179F
  211fdb: 40 80 fe 23                  	cmpb	$35, %sil
  211fdf: b8 1e 00 00 00               	movl	$30, %eax
  211fe4: 44 0f 44 c0                  	cmovel	%eax, %r8d
  211fe8: 40 80 fe 3f                  	cmpb	$63, %sil
  211fec: b8 1d 00 00 00               	movl	$29, %eax
  211ff1: 41 0f 45 c0                  	cmovnel	%r8d, %eax
  211ff5: e9 89 fe ff ff               	jmp	0x211e83 <parse_url_char+0x23>
  211ffa: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  212003: 48 8b 0d ee 2c 00 00         	movq	11502(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  21200a: 48 35 b1 3b 00 00            	xorq	$15281, %rax            # imm = 0x3BB1
  212010: 8a 14 01                     	movb	(%rcx,%rax), %dl
  212013: 80 c2 01                     	addb	$1, %dl
  212016: 80 d2 00                     	adcb	$0, %dl
  212019: 88 14 01                     	movb	%dl, (%rcx,%rax)
  21201c: 64 c7 04 25 90 ff ff ff d8 1d 00 00  	movl	$7640, %fs:-112 # imm = 0x1DD8
  212028: b8 1b 00 00 00               	movl	$27, %eax
  21202d: 40 80 fe 2a                  	cmpb	$42, %sil
  212031: 0f 84 4c fe ff ff            	je	0x211e83 <parse_url_char+0x23>
  212037: 40 80 fe 2f                  	cmpb	$47, %sil
  21203b: 0f 84 42 fe ff ff            	je	0x211e83 <parse_url_char+0x23>
  212041: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  21204a: 48 8b 0d a7 2c 00 00         	movq	11431(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  212051: 48 35 f7 2e 00 00            	xorq	$12023, %rax            # imm = 0x2EF7
  212057: 8a 14 01                     	movb	(%rcx,%rax), %dl
  21205a: 80 c2 01                     	addb	$1, %dl
  21205d: 80 d2 00                     	adcb	$0, %dl
  212060: 88 14 01                     	movb	%dl, (%rcx,%rax)
  212063: 64 c7 04 25 90 ff ff ff 7b 17 00 00  	movl	$6011, %fs:-112 # imm = 0x177B
  21206f: 40 80 ce 20                  	orb	$32, %sil
  212073: 40 80 c6 9f                  	addb	$-97, %sil
  212077: b8 15 00 00 00               	movl	$21, %eax
  21207c: 40 80 fe 1a                  	cmpb	$26, %sil
  212080: 0f 82 fd fd ff ff            	jb	0x211e83 <parse_url_char+0x23>
  212086: e9 f5 00 00 00               	jmp	0x212180 <parse_url_char+0x320>
  21208b: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  212094: 48 8b 0d 5d 2c 00 00         	movq	11357(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  21209b: 48 35 89 00 00 00            	xorq	$137, %rax
  2120a1: 8a 14 01                     	movb	(%rcx,%rax), %dl
  2120a4: 80 c2 01                     	addb	$1, %dl
  2120a7: 80 d2 00                     	adcb	$0, %dl
  2120aa: 88 14 01                     	movb	%dl, (%rcx,%rax)
  2120ad: 64 c7 04 25 90 ff ff ff 44 00 00 00  	movl	$68, %fs:-112
  2120b9: 89 f1                        	movl	%esi, %ecx
  2120bb: 80 c9 20                     	orb	$32, %cl
  2120be: 80 c1 9f                     	addb	$-97, %cl
  2120c1: b8 15 00 00 00               	movl	$21, %eax
  2120c6: 80 f9 1a                     	cmpb	$26, %cl
  2120c9: 0f 82 b4 fd ff ff            	jb	0x211e83 <parse_url_char+0x23>
  2120cf: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  2120d8: 48 8b 0d 19 2c 00 00         	movq	11289(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  2120df: 48 35 99 3d 00 00            	xorq	$15769, %rax            # imm = 0x3D99
  2120e5: 8a 14 01                     	movb	(%rcx,%rax), %dl
  2120e8: 80 c2 01                     	addb	$1, %dl
  2120eb: 80 d2 00                     	adcb	$0, %dl
  2120ee: 88 14 01                     	movb	%dl, (%rcx,%rax)
  2120f1: 64 c7 04 25 90 ff ff ff cc 1e 00 00  	movl	$7884, %fs:-112 # imm = 0x1ECC
  2120fd: b8 16 00 00 00               	movl	$22, %eax
  212102: 40 80 fe 3a                  	cmpb	$58, %sil
  212106: 0f 84 77 fd ff ff            	je	0x211e83 <parse_url_char+0x23>
  21210c: eb 72                        	jmp	0x212180 <parse_url_char+0x320>
  21210e: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  212117: 48 8b 0d da 2b 00 00         	movq	11226(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  21211e: 48 35 8b 53 00 00            	xorq	$21387, %rax            # imm = 0x538B
  212124: 8a 14 01                     	movb	(%rcx,%rax), %dl
  212127: 80 c2 01                     	addb	$1, %dl
  21212a: 80 d2 00                     	adcb	$0, %dl
  21212d: 88 14 01                     	movb	%dl, (%rcx,%rax)
  212130: 64 c7 04 25 90 ff ff ff c5 29 00 00  	movl	$10693, %fs:-112 # imm = 0x29C5
  21213c: b8 17 00 00 00               	movl	$23, %eax
  212141: eb 33                        	jmp	0x212176 <parse_url_char+0x316>
  212143: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  21214c: 48 8b 0d a5 2b 00 00         	movq	11173(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  212153: 48 35 9e fe 00 00            	xorq	$65182, %rax            # imm = 0xFE9E
  212159: 8a 14 01                     	movb	(%rcx,%rax), %dl
  21215c: 80 c2 01                     	addb	$1, %dl
  21215f: 80 d2 00                     	adcb	$0, %dl
  212162: 88 14 01                     	movb	%dl, (%rcx,%rax)
  212165: 64 c7 04 25 90 ff ff ff 4f 7f 00 00  	movl	$32591, %fs:-112 # imm = 0x7F4F
  212171: b8 18 00 00 00               	movl	$24, %eax
  212176: 40 80 fe 2f                  	cmpb	$47, %sil
  21217a: 0f 84 03 fd ff ff            	je	0x211e83 <parse_url_char+0x23>
  212180: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  212189: 48 8b 0d 68 2b 00 00         	movq	11112(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  212190: 48 35 09 91 00 00            	xorq	$37129, %rax            # imm = 0x9109
  212196: 8a 14 01                     	movb	(%rcx,%rax), %dl
  212199: 80 c2 01                     	addb	$1, %dl
  21219c: 80 d2 00                     	adcb	$0, %dl
  21219f: 88 14 01                     	movb	%dl, (%rcx,%rax)
  2121a2: 64 c7 04 25 90 ff ff ff 84 48 00 00  	movl	$18564, %fs:-112 # imm = 0x4884
  2121ae: b8 01 00 00 00               	movl	$1, %eax
  2121b3: e9 cb fc ff ff               	jmp	0x211e83 <parse_url_char+0x23>
  2121b8: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  2121c1: 48 8b 3d 30 2b 00 00         	movq	11056(%rip), %rdi       # 0x214cf8 <__afl_area_ptr>
  2121c8: 48 81 f1 44 ae 00 00         	xorq	$44612, %rcx            # imm = 0xAE44
  2121cf: 8a 14 0f                     	movb	(%rdi,%rcx), %dl
  2121d2: 80 c2 01                     	addb	$1, %dl
  2121d5: 80 d2 00                     	adcb	$0, %dl
  2121d8: 88 14 0f                     	movb	%dl, (%rdi,%rcx)
  2121db: 64 c7 04 25 90 ff ff ff 22 57 00 00  	movl	$22306, %fs:-112 # imm = 0x5722
  2121e7: 40 80 fe 2f                  	cmpb	$47, %sil
  2121eb: 0f 84 e6 02 00 00            	je	0x2124d7 <parse_url_char+0x677>
  2121f1: 40 80 fe 3f                  	cmpb	$63, %sil
  2121f5: 0f 84 a4 02 00 00            	je	0x21249f <parse_url_char+0x63f>
  2121fb: 40 80 fe 40                  	cmpb	$64, %sil
  2121ff: 0f 84 7e fc ff ff            	je	0x211e83 <parse_url_char+0x23>
  212205: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  21220e: 48 8b 0d e3 2a 00 00         	movq	10979(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  212215: 48 35 d4 35 00 00            	xorq	$13780, %rax            # imm = 0x35D4
  21221b: 8a 14 01                     	movb	(%rcx,%rax), %dl
  21221e: 80 c2 01                     	addb	$1, %dl
  212221: 80 d2 00                     	adcb	$0, %dl
  212224: 88 14 01                     	movb	%dl, (%rcx,%rax)
  212227: 64 c7 04 25 90 ff ff ff ea 1a 00 00  	movl	$6890, %fs:-112 # imm = 0x1AEA
  212233: 8d 4e d0                     	leal	-48(%rsi), %ecx
  212236: b8 19 00 00 00               	movl	$25, %eax
  21223b: 80 f9 0a                     	cmpb	$10, %cl
  21223e: 0f 82 3f fc ff ff            	jb	0x211e83 <parse_url_char+0x23>
  212244: 89 f1                        	movl	%esi, %ecx
  212246: 80 c9 20                     	orb	$32, %cl
  212249: 80 c1 9f                     	addb	$-97, %cl
  21224c: 80 f9 1a                     	cmpb	$26, %cl
  21224f: 0f 82 2e fc ff ff            	jb	0x211e83 <parse_url_char+0x23>
  212255: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  21225e: 48 8b 3d 93 2a 00 00         	movq	10899(%rip), %rdi       # 0x214cf8 <__afl_area_ptr>
  212265: 48 81 f1 1d 20 00 00         	xorq	$8221, %rcx             # imm = 0x201D
  21226c: 8a 14 0f                     	movb	(%rdi,%rcx), %dl
  21226f: 80 c2 01                     	addb	$1, %dl
  212272: 80 d2 00                     	adcb	$0, %dl
  212275: 88 14 0f                     	movb	%dl, (%rdi,%rcx)
  212278: 64 c7 04 25 90 ff ff ff 0e 10 00 00  	movl	$4110, %fs:-112 # imm = 0x100E
  212284: 8d 4e df                     	leal	-33(%rsi), %ecx
  212287: 80 f9 5d                     	cmpb	$93, %cl
  21228a: 0f 87 f0 fe ff ff            	ja	0x212180 <parse_url_char+0x320>
  212290: 0f b6 c9                     	movzbl	%cl, %ecx
  212293: ff 24 cd 30 34 20 00         	jmpq	*2110512(,%rcx,8)
  21229a: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  2122a3: 48 8b 3d 4e 2a 00 00         	movq	10830(%rip), %rdi       # 0x214cf8 <__afl_area_ptr>
  2122aa: 48 35 f1 48 00 00            	xorq	$18673, %rax            # imm = 0x48F1
  2122b0: 8a 0c 07                     	movb	(%rdi,%rax), %cl
  2122b3: 80 c1 01                     	addb	$1, %cl
  2122b6: 80 d1 00                     	adcb	$0, %cl
  2122b9: 88 0c 07                     	movb	%cl, (%rdi,%rax)
  2122bc: 64 c7 04 25 90 ff ff ff 78 24 00 00  	movl	$9336, %fs:-112 # imm = 0x2478
  2122c8: 48 89 d0                     	movq	%rdx, %rax
  2122cb: 48 c1 e8 03                  	shrq	$3, %rax
  2122cf: 0f b6 80 30 38 20 00         	movzbl	2111536(%rax), %eax
  2122d6: 89 f1                        	movl	%esi, %ecx
  2122d8: 80 e1 07                     	andb	$7, %cl
  2122db: 41 b8 01 00 00 00            	movl	$1, %r8d
  2122e1: bf 01 00 00 00               	movl	$1, %edi
  2122e6: d3 e7                        	shll	%cl, %edi
  2122e8: 21 c7                        	andl	%eax, %edi
  2122ea: 83 e2 80                     	andl	$-128, %edx
  2122ed: b8 1b 00 00 00               	movl	$27, %eax
  2122f2: 09 fa                        	orl	%edi, %edx
  2122f4: 0f 85 89 fb ff ff            	jne	0x211e83 <parse_url_char+0x23>
  2122fa: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  212303: 48 8b 0d ee 29 00 00         	movq	10734(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  21230a: 48 35 6e 02 00 00            	xorq	$622, %rax              # imm = 0x26E
  212310: 8a 14 01                     	movb	(%rcx,%rax), %dl
  212313: 80 c2 01                     	addb	$1, %dl
  212316: 80 d2 00                     	adcb	$0, %dl
  212319: 88 14 01                     	movb	%dl, (%rcx,%rax)
  21231c: 64 c7 04 25 90 ff ff ff 37 01 00 00  	movl	$311, %fs:-112  # imm = 0x137
  212328: 40 80 fe 23                  	cmpb	$35, %sil
  21232c: b8 1e 00 00 00               	movl	$30, %eax
  212331: 44 0f 44 c0                  	cmovel	%eax, %r8d
  212335: 40 80 fe 3f                  	cmpb	$63, %sil
  212339: b8 1c 00 00 00               	movl	$28, %eax
  21233e: 41 0f 45 c0                  	cmovnel	%r8d, %eax
  212342: e9 3c fb ff ff               	jmp	0x211e83 <parse_url_char+0x23>
  212347: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  212350: 48 8b 3d a1 29 00 00         	movq	10657(%rip), %rdi       # 0x214cf8 <__afl_area_ptr>
  212357: 48 35 32 fd 00 00            	xorq	$64818, %rax            # imm = 0xFD32
  21235d: 8a 0c 07                     	movb	(%rdi,%rax), %cl
  212360: 80 c1 01                     	addb	$1, %cl
  212363: 80 d1 00                     	adcb	$0, %cl
  212366: 88 0c 07                     	movb	%cl, (%rdi,%rax)
  212369: 64 c7 04 25 90 ff ff ff 99 7e 00 00  	movl	$32409, %fs:-112 # imm = 0x7E99
  212375: 48 89 d0                     	movq	%rdx, %rax
  212378: 48 c1 e8 03                  	shrq	$3, %rax
  21237c: 0f b6 80 30 38 20 00         	movzbl	2111536(%rax), %eax
  212383: 89 f1                        	movl	%esi, %ecx
  212385: 80 e1 07                     	andb	$7, %cl
  212388: 41 b8 01 00 00 00            	movl	$1, %r8d
  21238e: bf 01 00 00 00               	movl	$1, %edi
  212393: d3 e7                        	shll	%cl, %edi
  212395: 21 c7                        	andl	%eax, %edi
  212397: 83 e2 80                     	andl	$-128, %edx
  21239a: b8 1f 00 00 00               	movl	$31, %eax
  21239f: 09 fa                        	orl	%edi, %edx
  2123a1: 0f 85 dc fa ff ff            	jne	0x211e83 <parse_url_char+0x23>
  2123a7: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  2123b0: 48 8b 0d 41 29 00 00         	movq	10561(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  2123b7: 48 35 61 e3 00 00            	xorq	$58209, %rax            # imm = 0xE361
  2123bd: 8a 14 01                     	movb	(%rcx,%rax), %dl
  2123c0: 80 c2 01                     	addb	$1, %dl
  2123c3: 80 d2 00                     	adcb	$0, %dl
  2123c6: 88 14 01                     	movb	%dl, (%rcx,%rax)
  2123c9: 40 80 fe 23                  	cmpb	$35, %sil
  2123cd: b8 1f 00 00 00               	movl	$31, %eax
  2123d2: 44 0f 44 c0                  	cmovel	%eax, %r8d
  2123d6: 64 c7 04 25 90 ff ff ff b0 71 00 00  	movl	$29104, %fs:-112 # imm = 0x71B0
  2123e2: 40 80 fe 3f                  	cmpb	$63, %sil
  2123e6: 44 0f 44 c0                  	cmovel	%eax, %r8d
  2123ea: 44 89 c0                     	movl	%r8d, %eax
  2123ed: e9 91 fa ff ff               	jmp	0x211e83 <parse_url_char+0x23>
  2123f2: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  2123fb: 48 8b 3d f6 28 00 00         	movq	10486(%rip), %rdi       # 0x214cf8 <__afl_area_ptr>
  212402: 48 35 e7 c9 00 00            	xorq	$51687, %rax            # imm = 0xC9E7
  212408: 8a 0c 07                     	movb	(%rdi,%rax), %cl
  21240b: 80 c1 01                     	addb	$1, %cl
  21240e: 80 d1 00                     	adcb	$0, %cl
  212411: 88 0c 07                     	movb	%cl, (%rdi,%rax)
  212414: 64 c7 04 25 90 ff ff ff f3 64 00 00  	movl	$25843, %fs:-112 # imm = 0x64F3
  212420: 48 89 d0                     	movq	%rdx, %rax
  212423: 48 c1 e8 03                  	shrq	$3, %rax
  212427: 0f b6 80 30 38 20 00         	movzbl	2111536(%rax), %eax
  21242e: 89 f1                        	movl	%esi, %ecx
  212430: 80 e1 07                     	andb	$7, %cl
  212433: 41 b8 01 00 00 00            	movl	$1, %r8d
  212439: bf 01 00 00 00               	movl	$1, %edi
  21243e: d3 e7                        	shll	%cl, %edi
  212440: 21 c7                        	andl	%eax, %edi
  212442: 83 e2 80                     	andl	$-128, %edx
  212445: b8 1f 00 00 00               	movl	$31, %eax
  21244a: 09 fa                        	orl	%edi, %edx
  21244c: 0f 85 31 fa ff ff            	jne	0x211e83 <parse_url_char+0x23>
  212452: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  21245b: 48 8b 0d 96 28 00 00         	movq	10390(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  212462: 48 35 9b 89 00 00            	xorq	$35227, %rax            # imm = 0x899B
  212468: 8a 14 01                     	movb	(%rcx,%rax), %dl
  21246b: 80 c2 01                     	addb	$1, %dl
  21246e: 80 d2 00                     	adcb	$0, %dl
  212471: 88 14 01                     	movb	%dl, (%rcx,%rax)
  212474: 64 c7 04 25 90 ff ff ff cd 44 00 00  	movl	$17613, %fs:-112 # imm = 0x44CD
  212480: 40 80 fe 23                  	cmpb	$35, %sil
  212484: b8 1e 00 00 00               	movl	$30, %eax
  212489: 44 0f 44 c0                  	cmovel	%eax, %r8d
  21248d: 40 80 fe 3f                  	cmpb	$63, %sil
  212491: b8 1f 00 00 00               	movl	$31, %eax
  212496: 41 0f 45 c0                  	cmovnel	%r8d, %eax
  21249a: e9 e4 f9 ff ff               	jmp	0x211e83 <parse_url_char+0x23>
  21249f: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  2124a8: 48 8b 0d 49 28 00 00         	movq	10313(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  2124af: 48 35 a9 d8 00 00            	xorq	$55465, %rax            # imm = 0xD8A9
  2124b5: 8a 14 01                     	movb	(%rcx,%rax), %dl
  2124b8: 80 c2 01                     	addb	$1, %dl
  2124bb: 80 d2 00                     	adcb	$0, %dl
  2124be: 88 14 01                     	movb	%dl, (%rcx,%rax)
  2124c1: 64 c7 04 25 90 ff ff ff 54 6c 00 00  	movl	$27732, %fs:-112 # imm = 0x6C54
  2124cd: b8 1c 00 00 00               	movl	$28, %eax
  2124d2: e9 ac f9 ff ff               	jmp	0x211e83 <parse_url_char+0x23>
  2124d7: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  2124e0: 48 8b 0d 11 28 00 00         	movq	10257(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  2124e7: 48 35 62 e3 00 00            	xorq	$58210, %rax            # imm = 0xE362
  2124ed: 8a 14 01                     	movb	(%rcx,%rax), %dl
  2124f0: 80 c2 01                     	addb	$1, %dl
  2124f3: 80 d2 00                     	adcb	$0, %dl
  2124f6: 88 14 01                     	movb	%dl, (%rcx,%rax)
  2124f9: 64 c7 04 25 90 ff ff ff b1 71 00 00  	movl	$29105, %fs:-112 # imm = 0x71B1
  212505: b8 1b 00 00 00               	movl	$27, %eax
  21250a: e9 74 f9 ff ff               	jmp	0x211e83 <parse_url_char+0x23>
  21250f: b8 1a 00 00 00               	movl	$26, %eax
  212514: e9 6a f9 ff ff               	jmp	0x211e83 <parse_url_char+0x23>
  212519: cc                           	int3
  21251a: cc                           	int3
  21251b: cc                           	int3
  21251c: cc                           	int3
  21251d: cc                           	int3
  21251e: cc                           	int3
  21251f: cc                           	int3

0000000000212520 <http_message_needs_eof>:
  212520: 55                           	pushq	%rbp
  212521: 48 89 e5                     	movq	%rsp, %rbp
  212524: 8b 37                        	movl	(%rdi), %esi
  212526: 40 f6 c6 03                  	testb	$3, %sil
  21252a: 0f 84 e5 00 00 00            	je	0x212615 <http_message_needs_eof+0xf5>
  212530: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  212539: 48 8b 15 b8 27 00 00         	movq	10168(%rip), %rdx       # 0x214cf8 <__afl_area_ptr>
  212540: 48 35 59 ca 00 00            	xorq	$51801, %rax            # imm = 0xCA59
  212546: 8a 0c 02                     	movb	(%rdx,%rax), %cl
  212549: 80 c1 01                     	addb	$1, %cl
  21254c: 80 d1 00                     	adcb	$0, %cl
  21254f: 88 0c 02                     	movb	%cl, (%rdx,%rax)
  212552: 64 c7 04 25 90 ff ff ff 2c 65 00 00  	movl	$25900, %fs:-112 # imm = 0x652C
  21255e: 0f b7 57 14                  	movzwl	20(%rdi), %edx
  212562: 45 31 c0                     	xorl	%r8d, %r8d
  212565: 81 fa 30 01 00 00            	cmpl	$304, %edx              # imm = 0x130
  21256b: 0f 84 a7 00 00 00            	je	0x212618 <http_message_needs_eof+0xf8>
  212571: 81 fa cc 00 00 00            	cmpl	$204, %edx
  212577: 0f 84 9b 00 00 00            	je	0x212618 <http_message_needs_eof+0xf8>
  21257d: 83 c2 9c                     	addl	$-100, %edx
  212580: 83 fa 64                     	cmpl	$100, %edx
  212583: 0f 82 8f 00 00 00            	jb	0x212618 <http_message_needs_eof+0xf8>
  212589: 89 f1                        	movl	%esi, %ecx
  21258b: 81 e1 00 01 00 00            	andl	$256, %ecx              # imm = 0x100
  212591: 0f 85 81 00 00 00            	jne	0x212618 <http_message_needs_eof+0xf8>
  212597: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  2125a0: 48 8b 0d 51 27 00 00         	movq	10065(%rip), %rcx       # 0x214cf8 <__afl_area_ptr>
  2125a7: 48 35 25 50 00 00            	xorq	$20517, %rax            # imm = 0x5025
  2125ad: 8a 14 01                     	movb	(%rcx,%rax), %dl
  2125b0: 80 c2 01                     	addb	$1, %dl
  2125b3: 80 d2 00                     	adcb	$0, %dl
  2125b6: 88 14 01                     	movb	%dl, (%rcx,%rax)
  2125b9: 64 c7 04 25 90 ff ff ff 12 28 00 00  	movl	$10258, %fs:-112 # imm = 0x2812
  2125c5: 89 f0                        	movl	%esi, %eax
  2125c7: 25 04 00 00 20               	andl	$536870916, %eax        # imm = 0x20000004
  2125cc: 3d 00 00 00 20               	cmpl	$536870912, %eax        # imm = 0x20000000
  2125d1: 41 0f 94 c0                  	sete	%r8b
  2125d5: 74 41                        	je	0x212618 <http_message_needs_eof+0xf8>
  2125d7: 83 e6 04                     	andl	$4, %esi
  2125da: 75 3c                        	jne	0x212618 <http_message_needs_eof+0xf8>
  2125dc: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  2125e5: 48 8b 0d 0c 27 00 00         	movq	9996(%rip), %rcx        # 0x214cf8 <__afl_area_ptr>
  2125ec: 48 35 4d a2 00 00            	xorq	$41549, %rax            # imm = 0xA24D
  2125f2: 8a 14 01                     	movb	(%rcx,%rax), %dl
  2125f5: 80 c2 01                     	addb	$1, %dl
  2125f8: 80 d2 00                     	adcb	$0, %dl
  2125fb: 88 14 01                     	movb	%dl, (%rcx,%rax)
  2125fe: 64 c7 04 25 90 ff ff ff 26 51 00 00  	movl	$20774, %fs:-112 # imm = 0x5126
  21260a: 48 83 7f 08 ff               	cmpq	$-1, 8(%rdi)
  21260f: 41 0f 94 c0                  	sete	%r8b
  212613: eb 03                        	jmp	0x212618 <http_message_needs_eof+0xf8>
  212615: 45 31 c0                     	xorl	%r8d, %r8d
  212618: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  212621: 48 8b 15 d0 26 00 00         	movq	9936(%rip), %rdx        # 0x214cf8 <__afl_area_ptr>
  212628: 48 81 f1 12 d8 00 00         	xorq	$55314, %rcx            # imm = 0xD812
  21262f: 8a 04 0a                     	movb	(%rdx,%rcx), %al
  212632: 04 01                        	addb	$1, %al
  212634: 14 00                        	adcb	$0, %al
  212636: 88 04 0a                     	movb	%al, (%rdx,%rcx)
  212639: 64 c7 04 25 90 ff ff ff 09 6c 00 00  	movl	$27657, %fs:-112 # imm = 0x6C09
  212645: 41 0f b6 c0                  	movzbl	%r8b, %eax
  212649: 5d                           	popq	%rbp
  21264a: c3                           	retq
  21264b: cc                           	int3
  21264c: cc                           	int3
  21264d: cc                           	int3
  21264e: cc                           	int3
  21264f: cc                           	int3

0000000000212650 <http_parser_init>:
  212650: 55                           	pushq	%rbp
  212651: 48 89 e5                     	movq	%rsp, %rbp
  212654: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  21265d: 48 8b 0d 94 26 00 00         	movq	9876(%rip), %rcx        # 0x214cf8 <__afl_area_ptr>
  212664: 48 35 e8 c8 00 00            	xorq	$51432, %rax            # imm = 0xC8E8
  21266a: 8a 14 01                     	movb	(%rcx,%rax), %dl
  21266d: 80 c2 01                     	addb	$1, %dl
  212670: 80 d2 00                     	adcb	$0, %dl
  212673: 88 14 01                     	movb	%dl, (%rcx,%rax)
  212676: 64 c7 04 25 90 ff ff ff 74 64 00 00  	movl	$25716, %fs:-112 # imm = 0x6474
  212682: 0f 57 c0                     	xorps	%xmm0, %xmm0
  212685: 0f 11 07                     	movups	%xmm0, (%rdi)
  212688: 48 c7 47 10 00 00 00 00      	movq	$0, 16(%rdi)
  212690: 89 f0                        	movl	%esi, %eax
  212692: 83 e0 03                     	andl	$3, %eax
  212695: 31 c9                        	xorl	%ecx, %ecx
  212697: 83 fe 01                     	cmpl	$1, %esi
  21269a: 0f 94 c1                     	sete	%cl
  21269d: c1 e1 0b                     	shll	$11, %ecx
  2126a0: 81 c1 00 08 00 00            	addl	$2048, %ecx             # imm = 0x800
  2126a6: 85 f6                        	testl	%esi, %esi
  2126a8: ba 00 48 00 00               	movl	$18432, %edx            # imm = 0x4800
  2126ad: 0f 45 d1                     	cmovnel	%ecx, %edx
  2126b0: 09 c2                        	orl	%eax, %edx
  2126b2: 89 17                        	movl	%edx, (%rdi)
  2126b4: 5d                           	popq	%rbp
  2126b5: c3                           	retq
  2126b6: cc                           	int3
  2126b7: cc                           	int3
  2126b8: cc                           	int3
  2126b9: cc                           	int3
  2126ba: cc                           	int3
  2126bb: cc                           	int3
  2126bc: cc                           	int3
  2126bd: cc                           	int3
  2126be: cc                           	int3
  2126bf: cc                           	int3

00000000002126c0 <LLVMFuzzerTestOneInput>:
  2126c0: 55                           	pushq	%rbp
  2126c1: 48 89 e5                     	movq	%rsp, %rbp
  2126c4: 41 57                        	pushq	%r15
  2126c6: 41 56                        	pushq	%r14
  2126c8: 53                           	pushq	%rbx
  2126c9: 48 83 ec 28                  	subq	$40, %rsp
  2126cd: 49 89 f6                     	movq	%rsi, %r14
  2126d0: 49 89 ff                     	movq	%rdi, %r15
  2126d3: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  2126dc: 48 8b 0d 15 26 00 00         	movq	9749(%rip), %rcx        # 0x214cf8 <__afl_area_ptr>
  2126e3: 48 35 2b 88 00 00            	xorq	$34859, %rax            # imm = 0x882B
  2126e9: 8a 14 01                     	movb	(%rcx,%rax), %dl
  2126ec: 80 c2 01                     	addb	$1, %dl
  2126ef: 80 d2 00                     	adcb	$0, %dl
  2126f2: 88 14 01                     	movb	%dl, (%rcx,%rax)
  2126f5: 64 c7 04 25 90 ff ff ff 15 44 00 00  	movl	$17429, %fs:-112 # imm = 0x4415
  212701: 48 8d 5d c8                  	leaq	-56(%rbp), %rbx
  212705: 48 89 df                     	movq	%rbx, %rdi
  212708: be 02 00 00 00               	movl	$2, %esi
  21270d: e8 3e ff ff ff               	callq	0x212650 <http_parser_init>
  212712: be 50 3a 20 00               	movl	$2112080, %esi          # imm = 0x203A50
  212717: 48 89 df                     	movq	%rbx, %rdi
  21271a: 4c 89 fa                     	movq	%r15, %rdx
  21271d: 4c 89 f1                     	movq	%r14, %rcx
  212720: e8 7b 73 ff ff               	callq	0x209aa0 <http_parser_execute>
  212725: 31 c0                        	xorl	%eax, %eax
  212727: 48 83 c4 28                  	addq	$40, %rsp
  21272b: 5b                           	popq	%rbx
  21272c: 41 5e                        	popq	%r14
  21272e: 41 5f                        	popq	%r15
  212730: 5d                           	popq	%rbp
  212731: c3                           	retq

Disassembly of section .init:

0000000000212734 <_init>:
  212734: f3 0f 1e fa                  	endbr64
  212738: 48 83 ec 08                  	subq	$8, %rsp
  21273c: 48 8b 05 75 15 00 00         	movq	5493(%rip), %rax        # 0x213cb8 <write+0x213cb8>
  212743: 48 85 c0                     	testq	%rax, %rax
  212746: 74 02                        	je	0x21274a <_init+0x16>
  212748: ff d0                        	callq	*%rax
  21274a: 48 83 c4 08                  	addq	$8, %rsp
  21274e: c3                           	retq

Disassembly of section .fini:

0000000000212750 <_fini>:
  212750: f3 0f 1e fa                  	endbr64
  212754: 48 83 ec 08                  	subq	$8, %rsp
  212758: 48 83 c4 08                  	addq	$8, %rsp
  21275c: c3                           	retq

Disassembly of section .plt:

0000000000212760 <.plt>:
  212760: ff 35 d2 25 00 00            	pushq	9682(%rip)              # 0x214d38 <_GLOBAL_OFFSET_TABLE_+0x8>
  212766: ff 25 d4 25 00 00            	jmpq	*9684(%rip)             # 0x214d40 <_GLOBAL_OFFSET_TABLE_+0x10>
  21276c: 0f 1f 40 00                  	nopl	(%rax)

0000000000212770 <getenv@plt>:
  212770: ff 25 d2 25 00 00            	jmpq	*9682(%rip)             # 0x214d48 <_GLOBAL_OFFSET_TABLE_+0x18>
  212776: 68 00 00 00 00               	pushq	$0
  21277b: e9 e0 ff ff ff               	jmp	0x212760 <.plt>

0000000000212780 <unsetenv@plt>:
  212780: ff 25 ca 25 00 00            	jmpq	*9674(%rip)             # 0x214d50 <_GLOBAL_OFFSET_TABLE_+0x20>
  212786: 68 01 00 00 00               	pushq	$1
  21278b: e9 d0 ff ff ff               	jmp	0x212760 <.plt>

0000000000212790 <perror@plt>:
  212790: ff 25 c2 25 00 00            	jmpq	*9666(%rip)             # 0x214d58 <_GLOBAL_OFFSET_TABLE_+0x28>
  212796: 68 02 00 00 00               	pushq	$2
  21279b: e9 c0 ff ff ff               	jmp	0x212760 <.plt>

00000000002127a0 <abort@plt>:
  2127a0: ff 25 ba 25 00 00            	jmpq	*9658(%rip)             # 0x214d60 <_GLOBAL_OFFSET_TABLE_+0x30>
  2127a6: 68 03 00 00 00               	pushq	$3
  2127ab: e9 b0 ff ff ff               	jmp	0x212760 <.plt>

00000000002127b0 <strncmp@plt>:
  2127b0: ff 25 b2 25 00 00            	jmpq	*9650(%rip)             # 0x214d68 <_GLOBAL_OFFSET_TABLE_+0x38>
  2127b6: 68 04 00 00 00               	pushq	$4
  2127bb: e9 a0 ff ff ff               	jmp	0x212760 <.plt>

00000000002127c0 <printf@plt>:
  2127c0: ff 25 aa 25 00 00            	jmpq	*9642(%rip)             # 0x214d70 <_GLOBAL_OFFSET_TABLE_+0x40>
  2127c6: 68 05 00 00 00               	pushq	$5
  2127cb: e9 90 ff ff ff               	jmp	0x212760 <.plt>

00000000002127d0 <freopen@plt>:
  2127d0: ff 25 a2 25 00 00            	jmpq	*9634(%rip)             # 0x214d78 <_GLOBAL_OFFSET_TABLE_+0x48>
  2127d6: 68 06 00 00 00               	pushq	$6
  2127db: e9 80 ff ff ff               	jmp	0x212760 <.plt>

00000000002127e0 <strtol@plt>:
  2127e0: ff 25 9a 25 00 00            	jmpq	*9626(%rip)             # 0x214d80 <_GLOBAL_OFFSET_TABLE_+0x50>
  2127e6: 68 07 00 00 00               	pushq	$7
  2127eb: e9 70 ff ff ff               	jmp	0x212760 <.plt>

00000000002127f0 <fileno@plt>:
  2127f0: ff 25 92 25 00 00            	jmpq	*9618(%rip)             # 0x214d88 <_GLOBAL_OFFSET_TABLE_+0x58>
  2127f6: 68 08 00 00 00               	pushq	$8
  2127fb: e9 60 ff ff ff               	jmp	0x212760 <.plt>

0000000000212800 <dup@plt>:
  212800: ff 25 8a 25 00 00            	jmpq	*9610(%rip)             # 0x214d90 <_GLOBAL_OFFSET_TABLE_+0x60>
  212806: 68 09 00 00 00               	pushq	$9
  21280b: e9 50 ff ff ff               	jmp	0x212760 <.plt>

0000000000212810 <fdopen@plt>:
  212810: ff 25 82 25 00 00            	jmpq	*9602(%rip)             # 0x214d98 <_GLOBAL_OFFSET_TABLE_+0x68>
  212816: 68 0a 00 00 00               	pushq	$10
  21281b: e9 40 ff ff ff               	jmp	0x212760 <.plt>

0000000000212820 <__sanitizer_set_report_fd@plt>:
  212820: ff 25 7a 25 00 00            	jmpq	*9594(%rip)             # 0x214da0 <_GLOBAL_OFFSET_TABLE_+0x70>
  212826: 68 0b 00 00 00               	pushq	$11
  21282b: e9 30 ff ff ff               	jmp	0x212760 <.plt>

0000000000212830 <fopen@plt>:
  212830: ff 25 72 25 00 00            	jmpq	*9586(%rip)             # 0x214da8 <_GLOBAL_OFFSET_TABLE_+0x78>
  212836: 68 0c 00 00 00               	pushq	$12
  21283b: e9 20 ff ff ff               	jmp	0x212760 <.plt>

0000000000212840 <dup2@plt>:
  212840: ff 25 6a 25 00 00            	jmpq	*9578(%rip)             # 0x214db0 <_GLOBAL_OFFSET_TABLE_+0x80>
  212846: 68 0d 00 00 00               	pushq	$13
  21284b: e9 10 ff ff ff               	jmp	0x212760 <.plt>

0000000000212850 <fclose@plt>:
  212850: ff 25 62 25 00 00            	jmpq	*9570(%rip)             # 0x214db8 <_GLOBAL_OFFSET_TABLE_+0x88>
  212856: 68 0e 00 00 00               	pushq	$14
  21285b: e9 00 ff ff ff               	jmp	0x212760 <.plt>

0000000000212860 <LLVMFuzzerInitialize@plt>:
  212860: ff 25 5a 25 00 00            	jmpq	*9562(%rip)             # 0x214dc0 <_GLOBAL_OFFSET_TABLE_+0x90>
  212866: 68 0f 00 00 00               	pushq	$15
  21286b: e9 f0 fe ff ff               	jmp	0x212760 <.plt>

0000000000212870 <strcmp@plt>:
  212870: ff 25 52 25 00 00            	jmpq	*9554(%rip)             # 0x214dc8 <_GLOBAL_OFFSET_TABLE_+0x98>
  212876: 68 10 00 00 00               	pushq	$16
  21287b: e9 e0 fe ff ff               	jmp	0x212760 <.plt>

0000000000212880 <getpid@plt>:
  212880: ff 25 4a 25 00 00            	jmpq	*9546(%rip)             # 0x214dd0 <_GLOBAL_OFFSET_TABLE_+0xa0>
  212886: 68 11 00 00 00               	pushq	$17
  21288b: e9 d0 fe ff ff               	jmp	0x212760 <.plt>

0000000000212890 <snprintf@plt>:
  212890: ff 25 42 25 00 00            	jmpq	*9538(%rip)             # 0x214dd8 <_GLOBAL_OFFSET_TABLE_+0xa8>
  212896: 68 12 00 00 00               	pushq	$18
  21289b: e9 c0 fe ff ff               	jmp	0x212760 <.plt>

00000000002128a0 <system@plt>:
  2128a0: ff 25 3a 25 00 00            	jmpq	*9530(%rip)             # 0x214de0 <_GLOBAL_OFFSET_TABLE_+0xb0>
  2128a6: 68 13 00 00 00               	pushq	$19
  2128ab: e9 b0 fe ff ff               	jmp	0x212760 <.plt>

00000000002128b0 <fprintf@plt>:
  2128b0: ff 25 32 25 00 00            	jmpq	*9522(%rip)             # 0x214de8 <_GLOBAL_OFFSET_TABLE_+0xb8>
  2128b6: 68 14 00 00 00               	pushq	$20
  2128bb: e9 a0 fe ff ff               	jmp	0x212760 <.plt>

00000000002128c0 <sleep@plt>:
  2128c0: ff 25 2a 25 00 00            	jmpq	*9514(%rip)             # 0x214df0 <_GLOBAL_OFFSET_TABLE_+0xc0>
  2128c6: 68 15 00 00 00               	pushq	$21
  2128cb: e9 90 fe ff ff               	jmp	0x212760 <.plt>

00000000002128d0 <fwrite@plt>:
  2128d0: ff 25 22 25 00 00            	jmpq	*9506(%rip)             # 0x214df8 <_GLOBAL_OFFSET_TABLE_+0xc8>
  2128d6: 68 16 00 00 00               	pushq	$22
  2128db: e9 80 fe ff ff               	jmp	0x212760 <.plt>

00000000002128e0 <__assert_fail@plt>:
  2128e0: ff 25 1a 25 00 00            	jmpq	*9498(%rip)             # 0x214e00 <_GLOBAL_OFFSET_TABLE_+0xd0>
  2128e6: 68 17 00 00 00               	pushq	$23
  2128eb: e9 70 fe ff ff               	jmp	0x212760 <.plt>

00000000002128f0 <malloc@plt>:
  2128f0: ff 25 12 25 00 00            	jmpq	*9490(%rip)             # 0x214e08 <_GLOBAL_OFFSET_TABLE_+0xd8>
  2128f6: 68 18 00 00 00               	pushq	$24
  2128fb: e9 60 fe ff ff               	jmp	0x212760 <.plt>

0000000000212900 <open@plt>:
  212900: ff 25 0a 25 00 00            	jmpq	*9482(%rip)             # 0x214e10 <_GLOBAL_OFFSET_TABLE_+0xe0>
  212906: 68 19 00 00 00               	pushq	$25
  21290b: e9 50 fe ff ff               	jmp	0x212760 <.plt>

0000000000212910 <syscall@plt>:
  212910: ff 25 02 25 00 00            	jmpq	*9474(%rip)             # 0x214e18 <_GLOBAL_OFFSET_TABLE_+0xe8>
  212916: 68 1a 00 00 00               	pushq	$26
  21291b: e9 40 fe ff ff               	jmp	0x212760 <.plt>

0000000000212920 <puts@plt>:
  212920: ff 25 fa 24 00 00            	jmpq	*9466(%rip)             # 0x214e20 <_GLOBAL_OFFSET_TABLE_+0xf0>
  212926: 68 1b 00 00 00               	pushq	$27
  21292b: e9 30 fe ff ff               	jmp	0x212760 <.plt>

0000000000212930 <close@plt>:
  212930: ff 25 f2 24 00 00            	jmpq	*9458(%rip)             # 0x214e28 <_GLOBAL_OFFSET_TABLE_+0xf8>
  212936: 68 1c 00 00 00               	pushq	$28
  21293b: e9 20 fe ff ff               	jmp	0x212760 <.plt>

0000000000212940 <free@plt>:
  212940: ff 25 ea 24 00 00            	jmpq	*9450(%rip)             # 0x214e30 <_GLOBAL_OFFSET_TABLE_+0x100>
  212946: 68 1d 00 00 00               	pushq	$29
  21294b: e9 10 fe ff ff               	jmp	0x212760 <.plt>

0000000000212950 <__errno_location@plt>:
  212950: ff 25 e2 24 00 00            	jmpq	*9442(%rip)             # 0x214e38 <_GLOBAL_OFFSET_TABLE_+0x108>
  212956: 68 1e 00 00 00               	pushq	$30
  21295b: e9 00 fe ff ff               	jmp	0x212760 <.plt>

0000000000212960 <strerror@plt>:
  212960: ff 25 da 24 00 00            	jmpq	*9434(%rip)             # 0x214e40 <_GLOBAL_OFFSET_TABLE_+0x110>
  212966: 68 1f 00 00 00               	pushq	$31
  21296b: e9 f0 fd ff ff               	jmp	0x212760 <.plt>

0000000000212970 <raise@plt>:
  212970: ff 25 d2 24 00 00            	jmpq	*9426(%rip)             # 0x214e48 <_GLOBAL_OFFSET_TABLE_+0x118>
  212976: 68 20 00 00 00               	pushq	$32
  21297b: e9 e0 fd ff ff               	jmp	0x212760 <.plt>

0000000000212980 <memset@plt>:
  212980: ff 25 ca 24 00 00            	jmpq	*9418(%rip)             # 0x214e50 <_GLOBAL_OFFSET_TABLE_+0x120>
  212986: 68 21 00 00 00               	pushq	$33
  21298b: e9 d0 fd ff ff               	jmp	0x212760 <.plt>

0000000000212990 <sigaction@plt>:
  212990: ff 25 c2 24 00 00            	jmpq	*9410(%rip)             # 0x214e58 <_GLOBAL_OFFSET_TABLE_+0x128>
  212996: 68 22 00 00 00               	pushq	$34
  21299b: e9 c0 fd ff ff               	jmp	0x212760 <.plt>

00000000002129a0 <signal@plt>:
  2129a0: ff 25 ba 24 00 00            	jmpq	*9402(%rip)             # 0x214e60 <_GLOBAL_OFFSET_TABLE_+0x130>
  2129a6: 68 23 00 00 00               	pushq	$35
  2129ab: e9 b0 fd ff ff               	jmp	0x212760 <.plt>

00000000002129b0 <write@plt>:
  2129b0: ff 25 b2 24 00 00            	jmpq	*9394(%rip)             # 0x214e68 <_GLOBAL_OFFSET_TABLE_+0x138>
  2129b6: 68 24 00 00 00               	pushq	$36
  2129bb: e9 a0 fd ff ff               	jmp	0x212760 <.plt>

00000000002129c0 <read@plt>:
  2129c0: ff 25 aa 24 00 00            	jmpq	*9386(%rip)             # 0x214e70 <_GLOBAL_OFFSET_TABLE_+0x140>
  2129c6: 68 25 00 00 00               	pushq	$37
  2129cb: e9 90 fd ff ff               	jmp	0x212760 <.plt>

00000000002129d0 <waitpid@plt>:
  2129d0: ff 25 a2 24 00 00            	jmpq	*9378(%rip)             # 0x214e78 <_GLOBAL_OFFSET_TABLE_+0x148>
  2129d6: 68 26 00 00 00               	pushq	$38
  2129db: e9 80 fd ff ff               	jmp	0x212760 <.plt>

00000000002129e0 <kill@plt>:
  2129e0: ff 25 9a 24 00 00            	jmpq	*9370(%rip)             # 0x214e80 <_GLOBAL_OFFSET_TABLE_+0x150>
  2129e6: 68 27 00 00 00               	pushq	$39
  2129eb: e9 70 fd ff ff               	jmp	0x212760 <.plt>

00000000002129f0 <fork@plt>:
  2129f0: ff 25 92 24 00 00            	jmpq	*9362(%rip)             # 0x214e88 <_GLOBAL_OFFSET_TABLE_+0x158>
  2129f6: 68 28 00 00 00               	pushq	$40
  2129fb: e9 60 fd ff ff               	jmp	0x212760 <.plt>

0000000000212a00 <ioctl@plt>:
  212a00: ff 25 8a 24 00 00            	jmpq	*9354(%rip)             # 0x214e90 <_GLOBAL_OFFSET_TABLE_+0x160>
  212a06: 68 29 00 00 00               	pushq	$41
  212a0b: e9 50 fd ff ff               	jmp	0x212760 <.plt>

0000000000212a10 <_exit@plt>:
  212a10: ff 25 82 24 00 00            	jmpq	*9346(%rip)             # 0x214e98 <_GLOBAL_OFFSET_TABLE_+0x168>
  212a16: 68 2a 00 00 00               	pushq	$42
  212a1b: e9 40 fd ff ff               	jmp	0x212760 <.plt>

0000000000212a20 <munmap@plt>:
  212a20: ff 25 7a 24 00 00            	jmpq	*9338(%rip)             # 0x214ea0 <_GLOBAL_OFFSET_TABLE_+0x170>
  212a26: 68 2b 00 00 00               	pushq	$43
  212a2b: e9 30 fd ff ff               	jmp	0x212760 <.plt>

0000000000212a30 <mmap@plt>:
  212a30: ff 25 72 24 00 00            	jmpq	*9330(%rip)             # 0x214ea8 <_GLOBAL_OFFSET_TABLE_+0x178>
  212a36: 68 2c 00 00 00               	pushq	$44
  212a3b: e9 20 fd ff ff               	jmp	0x212760 <.plt>

0000000000212a40 <exit@plt>:
  212a40: ff 25 6a 24 00 00            	jmpq	*9322(%rip)             # 0x214eb0 <_GLOBAL_OFFSET_TABLE_+0x180>
  212a46: 68 2d 00 00 00               	pushq	$45
  212a4b: e9 10 fd ff ff               	jmp	0x212760 <.plt>

0000000000212a50 <shmat@plt>:
  212a50: ff 25 62 24 00 00            	jmpq	*9314(%rip)             # 0x214eb8 <_GLOBAL_OFFSET_TABLE_+0x188>
  212a56: 68 2e 00 00 00               	pushq	$46
  212a5b: e9 00 fd ff ff               	jmp	0x212760 <.plt>

0000000000212a60 <pipe@plt>:
  212a60: ff 25 5a 24 00 00            	jmpq	*9306(%rip)             # 0x214ec0 <_GLOBAL_OFFSET_TABLE_+0x190>
  212a66: 68 2f 00 00 00               	pushq	$47
  212a6b: e9 f0 fc ff ff               	jmp	0x212760 <.plt>

0000000000212a70 <random@plt>:
  212a70: ff 25 52 24 00 00            	jmpq	*9298(%rip)             # 0x214ec8 <_GLOBAL_OFFSET_TABLE_+0x198>
  212a76: 68 30 00 00 00               	pushq	$48
  212a7b: e9 e0 fc ff ff               	jmp	0x212760 <.plt>

0000000000212a80 <shmdt@plt>:
  212a80: ff 25 4a 24 00 00            	jmpq	*9290(%rip)             # 0x214ed0 <_GLOBAL_OFFSET_TABLE_+0x1a0>
  212a86: 68 31 00 00 00               	pushq	$49
  212a8b: e9 d0 fc ff ff               	jmp	0x212760 <.plt>

0000000000212a90 <strnlen@plt>:
  212a90: ff 25 42 24 00 00            	jmpq	*9282(%rip)             # 0x214ed8 <_GLOBAL_OFFSET_TABLE_+0x1a8>
  212a96: 68 32 00 00 00               	pushq	$50
  212a9b: e9 c0 fc ff ff               	jmp	0x212760 <.plt>

0000000000212aa0 <sysconf@plt>:
  212aa0: ff 25 3a 24 00 00            	jmpq	*9274(%rip)             # 0x214ee0 <_GLOBAL_OFFSET_TABLE_+0x1b0>
  212aa6: 68 33 00 00 00               	pushq	$51
  212aab: e9 b0 fc ff ff               	jmp	0x212760 <.plt>

0000000000212ab0 <memcpy@plt>:
  212ab0: ff 25 32 24 00 00            	jmpq	*9266(%rip)             # 0x214ee8 <_GLOBAL_OFFSET_TABLE_+0x1b8>
  212ab6: 68 34 00 00 00               	pushq	$52
  212abb: e9 a0 fc ff ff               	jmp	0x212760 <.plt>
