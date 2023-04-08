
fuzz_url_cfi:	file format elf64-x86-64

Disassembly of section .text:

0000000000204f20 <_start>:
  204f20: f3 0f 1e fa                  	endbr64
  204f24: 31 ed                        	xorl	%ebp, %ebp
  204f26: 49 89 d1                     	movq	%rdx, %r9
  204f29: 5e                           	popq	%rsi
  204f2a: 48 89 e2                     	movq	%rsp, %rdx
  204f2d: 48 83 e4 f0                  	andq	$-16, %rsp
  204f31: 50                           	pushq	%rax
  204f32: 54                           	pushq	%rsp
  204f33: 4c 8d 05 56 43 00 00         	leaq	17238(%rip), %r8        # 0x209290 <__libc_csu_fini>
  204f3a: 48 8d 0d df 42 00 00         	leaq	17119(%rip), %rcx       # 0x209220 <__libc_csu_init>
  204f41: 48 8d 3d 38 01 00 00         	leaq	312(%rip), %rdi         # 0x205080 <main>
  204f48: ff 15 32 71 00 00            	callq	*28978(%rip)            # 0x20c080 <write+0x20c080>
  204f4e: f4                           	hlt
  204f4f: 90                           	nop

0000000000204f50 <_dl_relocate_static_pie>:
  204f50: f3 0f 1e fa                  	endbr64
  204f54: c3                           	retq
  204f55: cc                           	int3
  204f56: cc                           	int3
  204f57: cc                           	int3
  204f58: cc                           	int3
  204f59: cc                           	int3
  204f5a: cc                           	int3
  204f5b: cc                           	int3
  204f5c: cc                           	int3
  204f5d: cc                           	int3
  204f5e: cc                           	int3
  204f5f: cc                           	int3

0000000000204f60 <deregister_tm_clones>:
  204f60: b8 00 d1 20 00               	movl	$2150656, %eax          # imm = 0x20D100
  204f65: 48 3d 00 d1 20 00            	cmpq	$2150656, %rax          # imm = 0x20D100
  204f6b: 74 13                        	je	0x204f80 <deregister_tm_clones+0x20>
  204f6d: b8 00 00 00 00               	movl	$0, %eax
  204f72: 48 85 c0                     	testq	%rax, %rax
  204f75: 74 09                        	je	0x204f80 <deregister_tm_clones+0x20>
  204f77: bf 00 d1 20 00               	movl	$2150656, %edi          # imm = 0x20D100
  204f7c: ff e0                        	jmpq	*%rax
  204f7e: 66 90                        	nop
  204f80: c3                           	retq
  204f81: 66 66 2e 0f 1f 84 00 00 00 00 00     	nopw	%cs:(%rax,%rax)
  204f8c: 0f 1f 40 00                  	nopl	(%rax)

0000000000204f90 <register_tm_clones>:
  204f90: be 00 d1 20 00               	movl	$2150656, %esi          # imm = 0x20D100
  204f95: 48 81 ee 00 d1 20 00         	subq	$2150656, %rsi          # imm = 0x20D100
  204f9c: 48 89 f0                     	movq	%rsi, %rax
  204f9f: 48 c1 ee 3f                  	shrq	$63, %rsi
  204fa3: 48 c1 f8 03                  	sarq	$3, %rax
  204fa7: 48 01 c6                     	addq	%rax, %rsi
  204faa: 48 d1 fe                     	sarq	%rsi
  204fad: 74 11                        	je	0x204fc0 <register_tm_clones+0x30>
  204faf: b8 00 00 00 00               	movl	$0, %eax
  204fb4: 48 85 c0                     	testq	%rax, %rax
  204fb7: 74 07                        	je	0x204fc0 <register_tm_clones+0x30>
  204fb9: bf 00 d1 20 00               	movl	$2150656, %edi          # imm = 0x20D100
  204fbe: ff e0                        	jmpq	*%rax
  204fc0: c3                           	retq
  204fc1: 66 66 2e 0f 1f 84 00 00 00 00 00     	nopw	%cs:(%rax,%rax)
  204fcc: 0f 1f 40 00                  	nopl	(%rax)

0000000000204fd0 <__do_global_dtors_aux>:
  204fd0: f3 0f 1e fa                  	endbr64
  204fd4: 80 3d e5 82 00 00 00         	cmpb	$0, 33509(%rip)         # 0x20d2c0 <completed.8061>
  204fdb: 75 13                        	jne	0x204ff0 <__do_global_dtors_aux+0x20>
  204fdd: 55                           	pushq	%rbp
  204fde: 48 89 e5                     	movq	%rsp, %rbp
  204fe1: e8 7a ff ff ff               	callq	0x204f60 <deregister_tm_clones>
  204fe6: c6 05 d3 82 00 00 01         	movb	$1, 33491(%rip)         # 0x20d2c0 <completed.8061>
  204fed: 5d                           	popq	%rbp
  204fee: c3                           	retq
  204fef: 90                           	nop
  204ff0: c3                           	retq
  204ff1: 66 66 2e 0f 1f 84 00 00 00 00 00     	nopw	%cs:(%rax,%rax)
  204ffc: 0f 1f 40 00                  	nopl	(%rax)

0000000000205000 <frame_dummy>:
  205000: f3 0f 1e fa                  	endbr64
  205004: eb 8a                        	jmp	0x204f90 <register_tm_clones>
  205006: cc                           	int3
  205007: cc                           	int3
  205008: cc                           	int3
  205009: cc                           	int3
  20500a: cc                           	int3
  20500b: cc                           	int3
  20500c: cc                           	int3
  20500d: cc                           	int3
  20500e: cc                           	int3
  20500f: cc                           	int3

0000000000205010 <__asan_poison_memory_region>:
  205010: c3                           	retq
  205011: 66 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%rax,%rax)

0000000000205020 <__asan_unpoison_memory_region>:
  205020: c3                           	retq
  205021: 66 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%rax,%rax)

0000000000205030 <__decide_deferred_forkserver>:
  205030: 50                           	pushq	%rax
  205031: 48 8d 3d 47 d0 ff ff         	leaq	-12217(%rip), %rdi      # 0x20207f <_IO_stdin_used+0x31f>
  205038: e8 03 5b 00 00               	callq	0x20ab40 <getenv@plt>
  20503d: 48 85 c0                     	testq	%rax, %rax
  205040: 74 10                        	je	0x205052 <__decide_deferred_forkserver+0x22>
  205042: 48 8d 3d 9c d2 ff ff         	leaq	-11620(%rip), %rdi      # 0x2022e5 <_IO_stdin_used+0x585>
  205049: e8 02 5b 00 00               	callq	0x20ab50 <unsetenv@plt>
  20504e: 85 c0                        	testl	%eax, %eax
  205050: 75 02                        	jne	0x205054 <__decide_deferred_forkserver+0x24>
  205052: 58                           	popq	%rax
  205053: c3                           	retq
  205054: 48 8d 3d a1 d9 ff ff         	leaq	-9823(%rip), %rdi       # 0x2029fc <_IO_stdin_used+0xc9c>
  20505b: e8 00 5b 00 00               	callq	0x20ab60 <perror@plt>
  205060: e8 0b 5b 00 00               	callq	0x20ab70 <abort@plt>
  205065: 66 66 2e 0f 1f 84 00 00 00 00 00     	nopw	%cs:(%rax,%rax)

0000000000205070 <LLVMFuzzerMutate>:
  205070: 31 c0                        	xorl	%eax, %eax
  205072: c3                           	retq
  205073: 66 66 66 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

0000000000205080 <main>:
  205080: 55                           	pushq	%rbp
  205081: 41 57                        	pushq	%r15
  205083: 41 56                        	pushq	%r14
  205085: 41 54                        	pushq	%r12
  205087: 53                           	pushq	%rbx
  205088: 48 83 ec 50                  	subq	$80, %rsp
  20508c: 48 89 f3                     	movq	%rsi, %rbx
  20508f: 41 89 ff                     	movl	%edi, %r15d
  205092: 89 7c 24 04                  	movl	%edi, 4(%rsp)
  205096: 48 89 74 24 08               	movq	%rsi, 8(%rsp)
  20509b: 83 ff 02                     	cmpl	$2, %edi
  20509e: 7c 19                        	jl	0x2050b9 <main+0x39>
  2050a0: 48 8b 7b 08                  	movq	8(%rbx), %rdi
  2050a4: 48 8d 35 4f d3 ff ff         	leaq	-11441(%rip), %rsi      # 0x2023fa <_IO_stdin_used+0x69a>
  2050ab: ba 02 00 00 00               	movl	$2, %edx
  2050b0: e8 cb 5a 00 00               	callq	0x20ab80 <strncmp@plt>
  2050b5: 85 c0                        	testl	%eax, %eax
  2050b7: 75 14                        	jne	0x2050cd <main+0x4d>
  2050b9: 48 8b 13                     	movq	(%rbx), %rdx
  2050bc: 48 8d 3d f2 d3 ff ff         	leaq	-11278(%rip), %rdi      # 0x2024b5 <_IO_stdin_used+0x755>
  2050c3: 48 89 d6                     	movq	%rdx, %rsi
  2050c6: 31 c0                        	xorl	%eax, %eax
  2050c8: e8 c3 5a 00 00               	callq	0x20ab90 <printf@plt>
  2050cd: 48 8d 3d 51 d6 ff ff         	leaq	-10671(%rip), %rdi      # 0x202725 <_IO_stdin_used+0x9c5>
  2050d4: e8 67 5a 00 00               	callq	0x20ab40 <getenv@plt>
  2050d9: 48 85 c0                     	testq	%rax, %rax
  2050dc: 0f 85 30 02 00 00            	jne	0x205312 <main+0x292>
  2050e2: 4c 8b 25 a7 6f 00 00         	movq	28583(%rip), %r12       # 0x20c090 <write+0x20c090>
  2050e9: 49 8b 1c 24                  	movq	(%r12), %rbx
  2050ed: 48 89 1d d4 81 00 00         	movq	%rbx, 33236(%rip)       # 0x20d2c8 <output_file>
  2050f4: 48 8d 3d 29 d3 ff ff         	leaq	-11479(%rip), %rdi      # 0x202424 <_IO_stdin_used+0x6c4>
  2050fb: e8 40 5a 00 00               	callq	0x20ab40 <getenv@plt>
  205100: 48 85 c0                     	testq	%rax, %rax
  205103: 74 22                        	je	0x205127 <main+0xa7>
  205105: 48 8d 35 46 ce ff ff         	leaq	-12730(%rip), %rsi      # 0x201f52 <_IO_stdin_used+0x1f2>
  20510c: 48 89 c7                     	movq	%rax, %rdi
  20510f: 48 89 da                     	movq	%rbx, %rdx
  205112: e8 89 5a 00 00               	callq	0x20aba0 <freopen@plt>
  205117: 48 85 c0                     	testq	%rax, %rax
  20511a: 0f 84 b8 03 00 00            	je	0x2054d8 <main+0x458>
  205120: 48 89 05 a1 81 00 00         	movq	%rax, 33185(%rip)       # 0x20d2c8 <output_file>
  205127: 48 8d 3d 36 cc ff ff         	leaq	-13258(%rip), %rdi      # 0x201d64 <_IO_stdin_used+0x4>
  20512e: e8 0d 5a 00 00               	callq	0x20ab40 <getenv@plt>
  205133: 48 85 c0                     	testq	%rax, %rax
  205136: 0f 84 dc 00 00 00            	je	0x205218 <main+0x198>
  20513c: 48 89 c7                     	movq	%rax, %rdi
  20513f: 31 f6                        	xorl	%esi, %esi
  205141: ba 0a 00 00 00               	movl	$10, %edx
  205146: e8 65 5a 00 00               	callq	0x20abb0 <strtol@plt>
  20514b: 48 89 c3                     	movq	%rax, %rbx
  20514e: f6 c3 02                     	testb	$2, %bl
  205151: 0f 84 81 00 00 00            	je	0x2051d8 <main+0x158>
  205157: 48 8b 3d 6a 81 00 00         	movq	33130(%rip), %rdi       # 0x20d2c8 <output_file>
  20515e: e8 5d 5a 00 00               	callq	0x20abc0 <fileno@plt>
  205163: 41 89 c6                     	movl	%eax, %r14d
  205166: 89 c7                        	movl	%eax, %edi
  205168: e8 63 5a 00 00               	callq	0x20abd0 <dup@plt>
  20516d: 85 c0                        	testl	%eax, %eax
  20516f: 0f 8e 7d 03 00 00            	jle	0x2054f2 <main+0x472>
  205175: 89 c5                        	movl	%eax, %ebp
  205177: 48 8d 35 54 d1 ff ff         	leaq	-11948(%rip), %rsi      # 0x2022d2 <_IO_stdin_used+0x572>
  20517e: 89 c7                        	movl	%eax, %edi
  205180: e8 5b 5a 00 00               	callq	0x20abe0 <fdopen@plt>
  205185: 48 85 c0                     	testq	%rax, %rax
  205188: 0f 84 64 03 00 00            	je	0x2054f2 <main+0x472>
  20518e: 48 83 3d 02 6f 00 00 00      	cmpq	$0, 28418(%rip)         # 0x20c098 <write+0x20c098>
  205196: 74 40                        	je	0x2051d8 <main+0x158>
  205198: 89 ef                        	movl	%ebp, %edi
  20519a: e8 51 5a 00 00               	callq	0x20abf0 <__sanitizer_set_report_fd@plt>
  20519f: 48 8d 3d a3 d2 ff ff         	leaq	-11613(%rip), %rdi      # 0x202449 <_IO_stdin_used+0x6e9>
  2051a6: 48 8d 35 25 d1 ff ff         	leaq	-11995(%rip), %rsi      # 0x2022d2 <_IO_stdin_used+0x572>
  2051ad: e8 4e 5a 00 00               	callq	0x20ac00 <fopen@plt>
  2051b2: 48 85 c0                     	testq	%rax, %rax
  2051b5: 0f 84 37 03 00 00            	je	0x2054f2 <main+0x472>
  2051bb: 48 89 c5                     	movq	%rax, %rbp
  2051be: 48 89 c7                     	movq	%rax, %rdi
  2051c1: e8 fa 59 00 00               	callq	0x20abc0 <fileno@plt>
  2051c6: 89 c7                        	movl	%eax, %edi
  2051c8: 44 89 f6                     	movl	%r14d, %esi
  2051cb: e8 40 5a 00 00               	callq	0x20ac10 <dup2@plt>
  2051d0: 48 89 ef                     	movq	%rbp, %rdi
  2051d3: e8 48 5a 00 00               	callq	0x20ac20 <fclose@plt>
  2051d8: f6 c3 01                     	testb	$1, %bl
  2051db: 74 3b                        	je	0x205218 <main+0x198>
  2051dd: 48 8d 3d 65 d2 ff ff         	leaq	-11675(%rip), %rdi      # 0x202449 <_IO_stdin_used+0x6e9>
  2051e4: 48 8d 35 e7 d0 ff ff         	leaq	-12057(%rip), %rsi      # 0x2022d2 <_IO_stdin_used+0x572>
  2051eb: e8 10 5a 00 00               	callq	0x20ac00 <fopen@plt>
  2051f0: 48 85 c0                     	testq	%rax, %rax
  2051f3: 0f 84 f9 02 00 00            	je	0x2054f2 <main+0x472>
  2051f9: 48 89 c3                     	movq	%rax, %rbx
  2051fc: 48 89 c7                     	movq	%rax, %rdi
  2051ff: e8 bc 59 00 00               	callq	0x20abc0 <fileno@plt>
  205204: 89 c7                        	movl	%eax, %edi
  205206: be 01 00 00 00               	movl	$1, %esi
  20520b: e8 00 5a 00 00               	callq	0x20ac10 <dup2@plt>
  205210: 48 89 df                     	movq	%rbx, %rdi
  205213: e8 08 5a 00 00               	callq	0x20ac20 <fclose@plt>
  205218: 48 83 3d 80 6e 00 00 00      	cmpq	$0, 28288(%rip)         # 0x20c0a0 <write+0x20c0a0>
  205220: 0f 85 47 01 00 00            	jne	0x20536d <main+0x2ed>
  205226: 0f 57 c0                     	xorps	%xmm0, %xmm0
  205229: 0f 11 44 24 37               	movups	%xmm0, 55(%rsp)
  20522e: 0f 11 44 24 27               	movups	%xmm0, 39(%rsp)
  205233: 0f 11 44 24 40               	movups	%xmm0, 64(%rsp)
  205238: 0f 28 05 81 d8 ff ff         	movaps	-10111(%rip), %xmm0     # 0x202ac0 <AFL_PERSISTENT>
  20523f: 0f 29 44 24 10               	movaps	%xmm0, 16(%rsp)
  205244: 48 b8 53 54 45 4e 54 23 23 00	movabsq	$9890469182264403, %rax # imm = 0x2323544E455453
  20524e: 48 89 44 24 1f               	movq	%rax, 31(%rsp)
  205253: 0f 28 05 86 d8 ff ff         	movaps	-10106(%rip), %xmm0     # 0x202ae0 <AFL_DEFER_FORKSVR>
  20525a: 0f 29 44 24 30               	movaps	%xmm0, 48(%rsp)
  20525f: 0f 10 05 84 d8 ff ff         	movups	-10108(%rip), %xmm0     # 0x202aea <AFL_DEFER_FORKSVR+0xa>
  205266: 0f 11 44 24 3a               	movups	%xmm0, 58(%rsp)
  20526b: 41 be ff ff ff 7f            	movl	$2147483647, %r14d      # imm = 0x7FFFFFFF
  205271: 41 83 ff 02                  	cmpl	$2, %r15d
  205275: 0f 85 44 01 00 00            	jne	0x2053bf <main+0x33f>
  20527b: 48 8b 6c 24 08               	movq	8(%rsp), %rbp
  205280: 48 8b 5d 08                  	movq	8(%rbp), %rbx
  205284: 48 8d 35 36 ce ff ff         	leaq	-12746(%rip), %rsi      # 0x2020c1 <_IO_stdin_used+0x361>
  20528b: 48 89 df                     	movq	%rbx, %rdi
  20528e: e8 ad 59 00 00               	callq	0x20ac40 <strcmp@plt>
  205293: 85 c0                        	testl	%eax, %eax
  205295: 74 1f                        	je	0x2052b6 <main+0x236>
  205297: 80 3b 2d                     	cmpb	$45, (%rbx)
  20529a: 75 41                        	jne	0x2052dd <main+0x25d>
  20529c: 48 ff c3                     	incq	%rbx
  20529f: 48 89 df                     	movq	%rbx, %rdi
  2052a2: 31 f6                        	xorl	%esi, %esi
  2052a4: ba 0a 00 00 00               	movl	$10, %edx
  2052a9: e8 02 59 00 00               	callq	0x20abb0 <strtol@plt>
  2052ae: 49 89 c6                     	movq	%rax, %r14
  2052b1: e9 3c 01 00 00               	jmp	0x2053f2 <main+0x372>
  2052b6: 48 8d 05 03 7e 00 00         	leaq	32259(%rip), %rax       # 0x20d0c0 <__afl_sharedmem_fuzzing>
  2052bd: c7 00 00 00 00 00            	movl	$0, (%rax)
  2052c3: 31 c0                        	xorl	%eax, %eax
  2052c5: e8 86 05 00 00               	callq	0x205850 <__afl_manual_init>
  2052ca: 8b 7c 24 04                  	movl	4(%rsp), %edi
  2052ce: 48 8b 74 24 08               	movq	8(%rsp), %rsi
  2052d3: e8 48 02 00 00               	callq	0x205520 <ExecuteFilesOnyByOne>
  2052d8: e9 ec 01 00 00               	jmp	0x2054c9 <main+0x449>
  2052dd: 48 89 df                     	movq	%rbx, %rdi
  2052e0: 31 f6                        	xorl	%esi, %esi
  2052e2: ba 0a 00 00 00               	movl	$10, %edx
  2052e7: e8 c4 58 00 00               	callq	0x20abb0 <strtol@plt>
  2052ec: 49 89 c6                     	movq	%rax, %r14
  2052ef: 45 85 f6                     	testl	%r14d, %r14d
  2052f2: 0f 8e c2 00 00 00            	jle	0x2053ba <main+0x33a>
  2052f8: 48 8b 75 00                  	movq	(%rbp), %rsi
  2052fc: 48 8d 3d 6c cc ff ff         	leaq	-13204(%rip), %rdi      # 0x201f6f <_IO_stdin_used+0x20f>
  205303: 44 89 f2                     	movl	%r14d, %edx
  205306: 31 c0                        	xorl	%eax, %eax
  205308: e8 83 58 00 00               	callq	0x20ab90 <printf@plt>
  20530d: e9 e9 00 00 00               	jmp	0x2053fb <main+0x37b>
  205312: e8 39 59 00 00               	callq	0x20ac50 <getpid@plt>
  205317: 48 8d 15 d3 ce ff ff         	leaq	-12589(%rip), %rdx      # 0x2021f1 <_IO_stdin_used+0x491>
  20531e: 48 8d 5c 24 10               	leaq	16(%rsp), %rbx
  205323: be 40 00 00 00               	movl	$64, %esi
  205328: 48 89 df                     	movq	%rbx, %rdi
  20532b: 89 c1                        	movl	%eax, %ecx
  20532d: 31 c0                        	xorl	%eax, %eax
  20532f: e8 2c 59 00 00               	callq	0x20ac60 <snprintf@plt>
  205334: 48 89 df                     	movq	%rbx, %rdi
  205337: e8 34 59 00 00               	callq	0x20ac70 <system@plt>
  20533c: 48 8b 05 4d 6d 00 00         	movq	27981(%rip), %rax       # 0x20c090 <write+0x20c090>
  205343: 48 8b 18                     	movq	(%rax), %rbx
  205346: e8 05 59 00 00               	callq	0x20ac50 <getpid@plt>
  20534b: 48 8d 35 43 cd ff ff         	leaq	-12989(%rip), %rsi      # 0x202095 <_IO_stdin_used+0x335>
  205352: 48 89 df                     	movq	%rbx, %rdi
  205355: 89 c2                        	movl	%eax, %edx
  205357: 31 c0                        	xorl	%eax, %eax
  205359: e8 22 59 00 00               	callq	0x20ac80 <fprintf@plt>
  20535e: bf 01 00 00 00               	movl	$1, %edi
  205363: e8 28 59 00 00               	callq	0x20ac90 <sleep@plt>
  205368: e9 75 fd ff ff               	jmp	0x2050e2 <main+0x62>
  20536d: 49 8b 0c 24                  	movq	(%r12), %rcx
  205371: 48 8d 3d 48 d4 ff ff         	leaq	-11192(%rip), %rdi      # 0x2027c0 <_IO_stdin_used+0xa60>
  205378: be 21 00 00 00               	movl	$33, %esi
  20537d: ba 01 00 00 00               	movl	$1, %edx
  205382: e8 19 59 00 00               	callq	0x20aca0 <fwrite@plt>
  205387: 48 8d 7c 24 04               	leaq	4(%rsp), %rdi
  20538c: 48 8d 74 24 08               	leaq	8(%rsp), %rsi
  205391: e8 9a 58 00 00               	callq	0x20ac30 <LLVMFuzzerInitialize@plt>
  205396: 49 8b 0c 24                  	movq	(%r12), %rcx
  20539a: 48 8d 3d 13 cd ff ff         	leaq	-13037(%rip), %rdi      # 0x2020b4 <_IO_stdin_used+0x354>
  2053a1: be 0c 00 00 00               	movl	$12, %esi
  2053a6: ba 01 00 00 00               	movl	$1, %edx
  2053ab: e8 f0 58 00 00               	callq	0x20aca0 <fwrite@plt>
  2053b0: 44 8b 7c 24 04               	movl	4(%rsp), %r15d
  2053b5: e9 6c fe ff ff               	jmp	0x205226 <main+0x1a6>
  2053ba: 44 8b 7c 24 04               	movl	4(%rsp), %r15d
  2053bf: 41 83 ff 02                  	cmpl	$2, %r15d
  2053c3: 7c 2d                        	jl	0x2053f2 <main+0x372>
  2053c5: 48 8d 05 f4 7c 00 00         	leaq	31988(%rip), %rax       # 0x20d0c0 <__afl_sharedmem_fuzzing>
  2053cc: c7 00 00 00 00 00            	movl	$0, (%rax)
  2053d2: 75 0c                        	jne	0x2053e0 <main+0x360>
  2053d4: 31 c0                        	xorl	%eax, %eax
  2053d6: e8 75 04 00 00               	callq	0x205850 <__afl_manual_init>
  2053db: 44 8b 7c 24 04               	movl	4(%rsp), %r15d
  2053e0: 48 8b 74 24 08               	movq	8(%rsp), %rsi
  2053e5: 44 89 ff                     	movl	%r15d, %edi
  2053e8: e8 33 01 00 00               	callq	0x205520 <ExecuteFilesOnyByOne>
  2053ed: e9 d7 00 00 00               	jmp	0x2054c9 <main+0x449>
  2053f2: 45 85 f6                     	testl	%r14d, %r14d
  2053f5: 0f 8e fc 00 00 00            	jle	0x2054f7 <main+0x477>
  2053fb: 31 c0                        	xorl	%eax, %eax
  2053fd: e8 4e 04 00 00               	callq	0x205850 <__afl_manual_init>
  205402: 48 8d 7c 24 10               	leaq	16(%rsp), %rdi
  205407: be 04 00 00 00               	movl	$4, %esi
  20540c: e8 6f 56 00 00               	callq	0x20aa80 <LLVMFuzzerTestOneInput>
  205411: 4c 8d 3d 18 7f 20 00         	leaq	2129688(%rip), %r15     # 0x40d330 <__afl_fuzz_ptr>
  205418: 49 8b 3f                     	movq	(%r15), %rdi
  20541b: be 00 00 10 00               	movl	$1048576, %esi          # imm = 0x100000
  205420: e8 eb fb ff ff               	callq	0x205010 <__asan_poison_memory_region>
  205425: 44 89 f7                     	movl	%r14d, %edi
  205428: e8 43 03 00 00               	callq	0x205770 <__afl_persistent_loop>
  20542d: 48 83 3d 73 6c 00 00 00      	cmpq	$0, 27763(%rip)         # 0x20c0a8 <write+0x20c0a8>
  205435: 74 66                        	je	0x20549d <main+0x41d>
  205437: 85 c0                        	testl	%eax, %eax
  205439: 0f 84 8a 00 00 00            	je	0x2054c9 <main+0x449>
  20543f: 31 db                        	xorl	%ebx, %ebx
  205441: 4c 8d 25 88 7c 00 00         	leaq	31880(%rip), %r12       # 0x20d0d0 <__afl_fuzz_len>
  205448: eb 2b                        	jmp	0x205475 <main+0x3f5>
  20544a: 66 0f 1f 44 00 00            	nopw	(%rax,%rax)
  205450: 49 8b 3f                     	movq	(%r15), %rdi
  205453: 48 01 ef                     	addq	%rbp, %rdi
  205456: e8 b5 fb ff ff               	callq	0x205010 <__asan_poison_memory_region>
  20545b: 49 8b 3f                     	movq	(%r15), %rdi
  20545e: 48 89 ee                     	movq	%rbp, %rsi
  205461: e8 1a 56 00 00               	callq	0x20aa80 <LLVMFuzzerTestOneInput>
  205466: 48 89 eb                     	movq	%rbp, %rbx
  205469: 44 89 f7                     	movl	%r14d, %edi
  20546c: e8 ff 02 00 00               	callq	0x205770 <__afl_persistent_loop>
  205471: 85 c0                        	testl	%eax, %eax
  205473: 74 54                        	je	0x2054c9 <main+0x449>
  205475: 49 8b 04 24                  	movq	(%r12), %rax
  205479: 8b 28                        	movl	(%rax), %ebp
  20547b: 48 85 ed                     	testq	%rbp, %rbp
  20547e: 74 e9                        	je	0x205469 <main+0x3e9>
  205480: 48 89 de                     	movq	%rbx, %rsi
  205483: 48 29 ee                     	subq	%rbp, %rsi
  205486: 77 c8                        	ja	0x205450 <main+0x3d0>
  205488: 73 d1                        	jae	0x20545b <main+0x3db>
  20548a: 48 89 ee                     	movq	%rbp, %rsi
  20548d: 48 29 de                     	subq	%rbx, %rsi
  205490: 49 03 1f                     	addq	(%r15), %rbx
  205493: 48 89 df                     	movq	%rbx, %rdi
  205496: e8 85 fb ff ff               	callq	0x205020 <__asan_unpoison_memory_region>
  20549b: eb be                        	jmp	0x20545b <main+0x3db>
  20549d: 85 c0                        	testl	%eax, %eax
  20549f: 74 28                        	je	0x2054c9 <main+0x449>
  2054a1: 48 8d 1d 28 7c 00 00         	leaq	31784(%rip), %rbx       # 0x20d0d0 <__afl_fuzz_len>
  2054a8: 0f 1f 84 00 00 00 00 00      	nopl	(%rax,%rax)
  2054b0: 49 8b 3f                     	movq	(%r15), %rdi
  2054b3: 48 8b 03                     	movq	(%rbx), %rax
  2054b6: 8b 30                        	movl	(%rax), %esi
  2054b8: e8 c3 55 00 00               	callq	0x20aa80 <LLVMFuzzerTestOneInput>
  2054bd: 44 89 f7                     	movl	%r14d, %edi
  2054c0: e8 ab 02 00 00               	callq	0x205770 <__afl_persistent_loop>
  2054c5: 85 c0                        	testl	%eax, %eax
  2054c7: 75 e7                        	jne	0x2054b0 <main+0x430>
  2054c9: 31 c0                        	xorl	%eax, %eax
  2054cb: 48 83 c4 50                  	addq	$80, %rsp
  2054cf: 5b                           	popq	%rbx
  2054d0: 41 5c                        	popq	%r12
  2054d2: 41 5e                        	popq	%r14
  2054d4: 41 5f                        	popq	%r15
  2054d6: 5d                           	popq	%rbp
  2054d7: c3                           	retq
  2054d8: 49 8b 0c 24                  	movq	(%r12), %rcx
  2054dc: 48 8d 3d 4c d5 ff ff         	leaq	-10932(%rip), %rdi      # 0x202a2f <_IO_stdin_used+0xccf>
  2054e3: be 42 00 00 00               	movl	$66, %esi
  2054e8: ba 01 00 00 00               	movl	$1, %edx
  2054ed: e8 ae 57 00 00               	callq	0x20aca0 <fwrite@plt>
  2054f2: e8 79 56 00 00               	callq	0x20ab70 <abort@plt>
  2054f7: 48 8d 3d 7c cc ff ff         	leaq	-13188(%rip), %rdi      # 0x20217a <_IO_stdin_used+0x41a>
  2054fe: 48 8d 35 1b d5 ff ff         	leaq	-10981(%rip), %rsi      # 0x202a20 <_IO_stdin_used+0xcc0>
  205505: 48 8d 0d b7 cb ff ff         	leaq	-13385(%rip), %rcx      # 0x2020c3 <_IO_stdin_used+0x363>
  20550c: ba 42 01 00 00               	movl	$322, %edx              # imm = 0x142
  205511: e8 9a 57 00 00               	callq	0x20acb0 <__assert_fail@plt>
  205516: 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)

0000000000205520 <ExecuteFilesOnyByOne>:
  205520: 55                           	pushq	%rbp
  205521: 41 57                        	pushq	%r15
  205523: 41 56                        	pushq	%r14
  205525: 41 55                        	pushq	%r13
  205527: 41 54                        	pushq	%r12
  205529: 53                           	pushq	%rbx
  20552a: 50                           	pushq	%rax
  20552b: 49 89 f6                     	movq	%rsi, %r14
  20552e: 89 fd                        	movl	%edi, %ebp
  205530: bf 00 00 10 00               	movl	$1048576, %edi          # imm = 0x100000
  205535: e8 86 57 00 00               	callq	0x20acc0 <malloc@plt>
  20553a: 48 89 c3                     	movq	%rax, %rbx
  20553d: be 00 00 10 00               	movl	$1048576, %esi          # imm = 0x100000
  205542: 48 89 c7                     	movq	%rax, %rdi
  205545: e8 c6 fa ff ff               	callq	0x205010 <__asan_poison_memory_region>
  20554a: 83 fd 02                     	cmpl	$2, %ebp
  20554d: 0f 8c ed 00 00 00            	jl	0x205640 <ExecuteFilesOnyByOne+0x120>
  205553: 89 e8                        	movl	%ebp, %eax
  205555: 48 89 04 24                  	movq	%rax, (%rsp)
  205559: 41 bf 01 00 00 00            	movl	$1, %r15d
  20555f: 45 31 ed                     	xorl	%r13d, %r13d
  205562: eb 19                        	jmp	0x20557d <ExecuteFilesOnyByOne+0x5d>
  205564: 66 66 66 2e 0f 1f 84 00 00 00 00 00  	nopw	%cs:(%rax,%rax)
  205570: 49 ff c7                     	incq	%r15
  205573: 4c 39 3c 24                  	cmpq	%r15, (%rsp)
  205577: 0f 84 c3 00 00 00            	je	0x205640 <ExecuteFilesOnyByOne+0x120>
  20557d: 4b 8b 2c fe                  	movq	(%r14,%r15,8), %rbp
  205581: 48 89 ef                     	movq	%rbp, %rdi
  205584: 48 8d 35 36 cb ff ff         	leaq	-13514(%rip), %rsi      # 0x2020c1 <_IO_stdin_used+0x361>
  20558b: e8 b0 56 00 00               	callq	0x20ac40 <strcmp@plt>
  205590: 41 bc 00 00 00 00            	movl	$0, %r12d
  205596: 85 c0                        	testl	%eax, %eax
  205598: 74 14                        	je	0x2055ae <ExecuteFilesOnyByOne+0x8e>
  20559a: 48 89 ef                     	movq	%rbp, %rdi
  20559d: 31 f6                        	xorl	%esi, %esi
  20559f: 31 c0                        	xorl	%eax, %eax
  2055a1: e8 2a 57 00 00               	callq	0x20acd0 <open@plt>
  2055a6: 41 89 c4                     	movl	%eax, %r12d
  2055a9: 83 f8 ff                     	cmpl	$-1, %eax
  2055ac: 74 c2                        	je	0x205570 <ExecuteFilesOnyByOne+0x50>
  2055ae: b9 00 00 10 00               	movl	$1048576, %ecx          # imm = 0x100000
  2055b3: 31 ff                        	xorl	%edi, %edi
  2055b5: 44 89 e6                     	movl	%r12d, %esi
  2055b8: 48 89 da                     	movq	%rbx, %rdx
  2055bb: 31 c0                        	xorl	%eax, %eax
  2055bd: e8 1e 57 00 00               	callq	0x20ace0 <syscall@plt>
  2055c2: 48 85 c0                     	testq	%rax, %rax
  2055c5: 7e 63                        	jle	0x20562a <ExecuteFilesOnyByOne+0x10a>
  2055c7: 48 89 c5                     	movq	%rax, %rbp
  2055ca: 48 89 c6                     	movq	%rax, %rsi
  2055cd: 4c 29 ee                     	subq	%r13, %rsi
  2055d0: 7d 1e                        	jge	0x2055f0 <ExecuteFilesOnyByOne+0xd0>
  2055d2: 48 8d 3c 2b                  	leaq	(%rbx,%rbp), %rdi
  2055d6: 49 29 ed                     	subq	%rbp, %r13
  2055d9: 4c 89 ee                     	movq	%r13, %rsi
  2055dc: e8 2f fa ff ff               	callq	0x205010 <__asan_poison_memory_region>
  2055e1: eb 18                        	jmp	0x2055fb <ExecuteFilesOnyByOne+0xdb>
  2055e3: 66 66 66 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
  2055f0: 49 01 dd                     	addq	%rbx, %r13
  2055f3: 4c 89 ef                     	movq	%r13, %rdi
  2055f6: e8 25 fa ff ff               	callq	0x205020 <__asan_unpoison_memory_region>
  2055fb: 4b 8b 14 fe                  	movq	(%r14,%r15,8), %rdx
  2055ff: 48 8d 3d 6e ce ff ff         	leaq	-12690(%rip), %rdi      # 0x202474 <_IO_stdin_used+0x714>
  205606: 48 89 ee                     	movq	%rbp, %rsi
  205609: 31 c0                        	xorl	%eax, %eax
  20560b: e8 80 55 00 00               	callq	0x20ab90 <printf@plt>
  205610: 48 89 df                     	movq	%rbx, %rdi
  205613: 48 89 ee                     	movq	%rbp, %rsi
  205616: e8 65 54 00 00               	callq	0x20aa80 <LLVMFuzzerTestOneInput>
  20561b: 48 8d 3d db cd ff ff         	leaq	-12837(%rip), %rdi      # 0x2023fd <_IO_stdin_used+0x69d>
  205622: e8 c9 56 00 00               	callq	0x20acf0 <puts@plt>
  205627: 49 89 ed                     	movq	%rbp, %r13
  20562a: 45 85 e4                     	testl	%r12d, %r12d
  20562d: 0f 8e 3d ff ff ff            	jle	0x205570 <ExecuteFilesOnyByOne+0x50>
  205633: 44 89 e7                     	movl	%r12d, %edi
  205636: e8 c5 56 00 00               	callq	0x20ad00 <close@plt>
  20563b: e9 30 ff ff ff               	jmp	0x205570 <ExecuteFilesOnyByOne+0x50>
  205640: 48 89 df                     	movq	%rbx, %rdi
  205643: 48 83 c4 08                  	addq	$8, %rsp
  205647: 5b                           	popq	%rbx
  205648: 41 5c                        	popq	%r12
  20564a: 41 5d                        	popq	%r13
  20564c: 41 5e                        	popq	%r14
  20564e: 41 5f                        	popq	%r15
  205650: 5d                           	popq	%rbp
  205651: e9 ba 56 00 00               	jmp	0x20ad10 <free@plt>
  205656: cc                           	int3
  205657: cc                           	int3
  205658: cc                           	int3
  205659: cc                           	int3
  20565a: cc                           	int3
  20565b: cc                           	int3
  20565c: cc                           	int3
  20565d: cc                           	int3
  20565e: cc                           	int3
  20565f: cc                           	int3

0000000000205660 <__afl_trace>:
  205660: 53                           	pushq	%rbx
  205661: 89 fb                        	movl	%edi, %ebx
  205663: 64 48 8b 04 25 00 00 00 00   	movq	%fs:0, %rax
  20566c: 48 8d 80 90 ff ff ff         	leaq	-112(%rax), %rax
  205673: 0f b7 08                     	movzwl	(%rax), %ecx
  205676: 89 da                        	movl	%ebx, %edx
  205678: d1 ea                        	shrl	%edx
  20567a: 66 89 10                     	movw	%dx, (%rax)
  20567d: 48 8d 05 44 7a 00 00         	leaq	31300(%rip), %rax       # 0x20d0c8 <__afl_area_ptr>
  205684: 48 8b 00                     	movq	(%rax), %rax
  205687: 31 d9                        	xorl	%ebx, %ecx
  205689: 8a 14 08                     	movb	(%rax,%rcx), %dl
  20568c: 80 c2 01                     	addb	$1, %dl
  20568f: 80 d2 00                     	adcb	$0, %dl
  205692: 88 14 08                     	movb	%dl, (%rax,%rcx)
  205695: 5b                           	popq	%rbx
  205696: c3                           	retq
  205697: 66 0f 1f 84 00 00 00 00 00   	nopw	(%rax,%rax)

00000000002056a0 <write_error_with_location>:
  2056a0: 55                           	pushq	%rbp
  2056a1: 41 57                        	pushq	%r15
  2056a3: 41 56                        	pushq	%r14
  2056a5: 41 55                        	pushq	%r13
  2056a7: 41 54                        	pushq	%r12
  2056a9: 53                           	pushq	%rbx
  2056aa: 48 81 ec 08 10 00 00         	subq	$4104, %rsp             # imm = 0x1008
  2056b1: 41 89 d6                     	movl	%edx, %r14d
  2056b4: 49 89 f4                     	movq	%rsi, %r12
  2056b7: 49 89 ff                     	movq	%rdi, %r15
  2056ba: 48 8d 3d bf ca ff ff         	leaq	-13633(%rip), %rdi      # 0x202180 <_IO_stdin_used+0x420>
  2056c1: e8 7a 54 00 00               	callq	0x20ab40 <getenv@plt>
  2056c6: 48 89 c5                     	movq	%rax, %rbp
  2056c9: e8 52 56 00 00               	callq	0x20ad20 <__errno_location@plt>
  2056ce: 8b 38                        	movl	(%rax), %edi
  2056d0: e8 5b 56 00 00               	callq	0x20ad30 <strerror@plt>
  2056d5: 48 89 c3                     	movq	%rax, %rbx
  2056d8: 48 85 ed                     	testq	%rbp, %rbp
  2056db: 74 58                        	je	0x205735 <write_error_with_location+0x95>
  2056dd: 48 8d 15 43 cb ff ff         	leaq	-13501(%rip), %rdx      # 0x202227 <_IO_stdin_used+0x4c7>
  2056e4: 49 89 e5                     	movq	%rsp, %r13
  2056e7: be 00 10 00 00               	movl	$4096, %esi             # imm = 0x1000
  2056ec: 4c 89 ef                     	movq	%r13, %rdi
  2056ef: 48 89 e9                     	movq	%rbp, %rcx
  2056f2: 31 c0                        	xorl	%eax, %eax
  2056f4: e8 67 55 00 00               	callq	0x20ac60 <snprintf@plt>
  2056f9: 48 8d 35 b9 cc ff ff         	leaq	-13127(%rip), %rsi      # 0x2023b9 <_IO_stdin_used+0x659>
  205700: 4c 89 ef                     	movq	%r13, %rdi
  205703: e8 f8 54 00 00               	callq	0x20ac00 <fopen@plt>
  205708: 48 85 c0                     	testq	%rax, %rax
  20570b: 74 28                        	je	0x205735 <write_error_with_location+0x95>
  20570d: 48 89 c5                     	movq	%rax, %rbp
  205710: 48 8d 35 a4 cc ff ff         	leaq	-13148(%rip), %rsi      # 0x2023bb <_IO_stdin_used+0x65b>
  205717: 48 89 c7                     	movq	%rax, %rdi
  20571a: 4c 89 e2                     	movq	%r12, %rdx
  20571d: 44 89 f1                     	movl	%r14d, %ecx
  205720: 4d 89 f8                     	movq	%r15, %r8
  205723: 49 89 d9                     	movq	%rbx, %r9
  205726: 31 c0                        	xorl	%eax, %eax
  205728: e8 53 55 00 00               	callq	0x20ac80 <fprintf@plt>
  20572d: 48 89 ef                     	movq	%rbp, %rdi
  205730: e8 eb 54 00 00               	callq	0x20ac20 <fclose@plt>
  205735: 48 8b 05 54 69 00 00         	movq	26964(%rip), %rax       # 0x20c090 <write+0x20c090>
  20573c: 48 8b 38                     	movq	(%rax), %rdi
  20573f: 48 8d 35 75 cc ff ff         	leaq	-13195(%rip), %rsi      # 0x2023bb <_IO_stdin_used+0x65b>
  205746: 4c 89 e2                     	movq	%r12, %rdx
  205749: 44 89 f1                     	movl	%r14d, %ecx
  20574c: 4d 89 f8                     	movq	%r15, %r8
  20574f: 49 89 d9                     	movq	%rbx, %r9
  205752: 31 c0                        	xorl	%eax, %eax
  205754: 48 81 c4 08 10 00 00         	addq	$4104, %rsp             # imm = 0x1008
  20575b: 5b                           	popq	%rbx
  20575c: 41 5c                        	popq	%r12
  20575e: 41 5d                        	popq	%r13
  205760: 41 5e                        	popq	%r14
  205762: 41 5f                        	popq	%r15
  205764: 5d                           	popq	%rbp
  205765: e9 16 55 00 00               	jmp	0x20ac80 <fprintf@plt>
  20576a: 66 0f 1f 44 00 00            	nopw	(%rax,%rax)

0000000000205770 <__afl_persistent_loop>:
  205770: 41 56                        	pushq	%r14
  205772: 53                           	pushq	%rbx
  205773: 50                           	pushq	%rax
  205774: 8a 0d 62 7b 20 00            	movb	2128738(%rip), %cl      # 0x40d2dc <is_persistent>
  20577a: 80 3d 53 7b 20 00 00         	cmpb	$0, 2128723(%rip)       # 0x40d2d4 <__afl_persistent_loop.first_pass>
  205781: 74 49                        	je	0x2057cc <__afl_persistent_loop+0x5c>
  205783: 31 c0                        	xorl	%eax, %eax
  205785: 84 c9                        	testb	%cl, %cl
  205787: 0f 84 98 00 00 00            	je	0x205825 <__afl_persistent_loop+0xb5>
  20578d: ff 0d 45 7b 20 00            	decl	2128709(%rip)           # 0x40d2d8 <__afl_persistent_loop.cycle_cnt>
  205793: 0f 84 94 00 00 00            	je	0x20582d <__afl_persistent_loop+0xbd>
  205799: bf 13 00 00 00               	movl	$19, %edi
  20579e: e8 9d 55 00 00               	callq	0x20ad40 <raise@plt>
  2057a3: 48 8d 05 1e 79 00 00         	leaq	31006(%rip), %rax       # 0x20d0c8 <__afl_area_ptr>
  2057aa: 48 8b 00                     	movq	(%rax), %rax
  2057ad: c6 00 01                     	movb	$1, (%rax)
  2057b0: 64 48 8b 04 25 00 00 00 00   	movq	%fs:0, %rax
  2057b9: 48 8d 80 90 ff ff ff         	leaq	-112(%rax), %rax
  2057c0: 0f 57 c0                     	xorps	%xmm0, %xmm0
  2057c3: 0f 29 40 10                  	movaps	%xmm0, 16(%rax)
  2057c7: 0f 29 00                     	movaps	%xmm0, (%rax)
  2057ca: eb 4d                        	jmp	0x205819 <__afl_persistent_loop+0xa9>
  2057cc: 89 fb                        	movl	%edi, %ebx
  2057ce: 84 c9                        	testb	%cl, %cl
  2057d0: 74 3a                        	je	0x20580c <__afl_persistent_loop+0x9c>
  2057d2: 4c 8d 35 ef 78 00 00         	leaq	30959(%rip), %r14       # 0x20d0c8 <__afl_area_ptr>
  2057d9: 49 8b 3e                     	movq	(%r14), %rdi
  2057dc: 48 8d 05 f5 78 00 00         	leaq	30965(%rip), %rax       # 0x20d0d8 <__afl_map_size>
  2057e3: 8b 10                        	movl	(%rax), %edx
  2057e5: 31 f6                        	xorl	%esi, %esi
  2057e7: e8 64 55 00 00               	callq	0x20ad50 <memset@plt>
  2057ec: 49 8b 06                     	movq	(%r14), %rax
  2057ef: c6 00 01                     	movb	$1, (%rax)
  2057f2: 64 48 8b 04 25 00 00 00 00   	movq	%fs:0, %rax
  2057fb: 48 8d 80 90 ff ff ff         	leaq	-112(%rax), %rax
  205802: 0f 57 c0                     	xorps	%xmm0, %xmm0
  205805: 0f 29 40 10                  	movaps	%xmm0, 16(%rax)
  205809: 0f 29 00                     	movaps	%xmm0, (%rax)
  20580c: 89 1d c6 7a 20 00            	movl	%ebx, 2128582(%rip)     # 0x40d2d8 <__afl_persistent_loop.cycle_cnt>
  205812: c6 05 bb 7a 20 00 01         	movb	$1, 2128571(%rip)       # 0x40d2d4 <__afl_persistent_loop.first_pass>
  205819: c6 05 c0 7a 20 00 00         	movb	$0, 2128576(%rip)       # 0x40d2e0 <__afl_selective_coverage_temp>
  205820: b8 01 00 00 00               	movl	$1, %eax
  205825: 48 83 c4 08                  	addq	$8, %rsp
  205829: 5b                           	popq	%rbx
  20582a: 41 5e                        	popq	%r14
  20582c: c3                           	retq
  20582d: 48 8b 0d ac 78 00 00         	movq	30892(%rip), %rcx       # 0x20d0e0 <__afl_area_ptr_dummy>
  205834: 48 8d 15 8d 78 00 00         	leaq	30861(%rip), %rdx       # 0x20d0c8 <__afl_area_ptr>
  20583b: 48 89 0a                     	movq	%rcx, (%rdx)
  20583e: 48 83 c4 08                  	addq	$8, %rsp
  205842: 5b                           	popq	%rbx
  205843: 41 5e                        	popq	%r14
  205845: c3                           	retq
  205846: 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)

0000000000205850 <__afl_manual_init>:
  205850: 55                           	pushq	%rbp
  205851: 41 57                        	pushq	%r15
  205853: 41 56                        	pushq	%r14
  205855: 41 55                        	pushq	%r13
  205857: 41 54                        	pushq	%r12
  205859: 53                           	pushq	%rbx
  20585a: 48 81 ec a8 00 00 00         	subq	$168, %rsp
  205861: 48 8d 3d 7a cf ff ff         	leaq	-12422(%rip), %rdi      # 0x2027e2 <_IO_stdin_used+0xa82>
  205868: e8 d3 52 00 00               	callq	0x20ab40 <getenv@plt>
  20586d: 48 85 c0                     	testq	%rax, %rax
  205870: 74 3f                        	je	0x2058b1 <__afl_manual_init+0x61>
  205872: c6 05 68 7a 20 00 01         	movb	$1, 2128488(%rip)       # 0x40d2e1 <__afl_manual_init.init_done>
  205879: c6 05 5c 7a 20 00 00         	movb	$0, 2128476(%rip)       # 0x40d2dc <is_persistent>
  205880: 48 8d 05 39 78 00 00         	leaq	30777(%rip), %rax       # 0x20d0c0 <__afl_sharedmem_fuzzing>
  205887: c7 00 00 00 00 00            	movl	$0, (%rax)
  20588d: 48 8d 05 34 78 00 00         	leaq	30772(%rip), %rax       # 0x20d0c8 <__afl_area_ptr>
  205894: 48 83 38 00                  	cmpq	$0, (%rax)
  205898: 75 0a                        	jne	0x2058a4 <__afl_manual_init+0x54>
  20589a: 48 8b 0d 3f 78 00 00         	movq	30783(%rip), %rcx       # 0x20d0e0 <__afl_area_ptr_dummy>
  2058a1: 48 89 08                     	movq	%rcx, (%rax)
  2058a4: 80 3d 3d 7a 20 00 01         	cmpb	$1, 2128445(%rip)       # 0x40d2e8 <__afl_debug>
  2058ab: 0f 84 e3 01 00 00            	je	0x205a94 <__afl_manual_init+0x244>
  2058b1: 80 3d 29 7a 20 00 00         	cmpb	$0, 2128425(%rip)       # 0x40d2e1 <__afl_manual_init.init_done>
  2058b8: 0f 85 84 03 00 00            	jne	0x205c42 <__afl_manual_init+0x3f2>
  2058be: 48 8d 05 3f 7a 20 00         	leaq	2128447(%rip), %rax     # 0x40d304 <__afl_already_initialized_forkserver>
  2058c5: 83 38 00                     	cmpl	$0, (%rax)
  2058c8: 0f 85 6d 03 00 00            	jne	0x205c3b <__afl_manual_init+0x3eb>
  2058ce: c7 00 01 00 00 00            	movl	$1, (%rax)
  2058d4: 31 ed                        	xorl	%ebp, %ebp
  2058d6: 48 8d 54 24 10               	leaq	16(%rsp), %rdx
  2058db: bf 0f 00 00 00               	movl	$15, %edi
  2058e0: 31 f6                        	xorl	%esi, %esi
  2058e2: e8 79 54 00 00               	callq	0x20ad60 <sigaction@plt>
  2058e7: 48 8b 44 24 10               	movq	16(%rsp), %rax
  2058ec: 48 89 05 4d 7a 20 00         	movq	%rax, 2128461(%rip)     # 0x40d340 <old_sigterm_handler>
  2058f3: 48 8d 35 c6 37 00 00         	leaq	14278(%rip), %rsi       # 0x2090c0 <at_exit>
  2058fa: bf 0f 00 00 00               	movl	$15, %edi
  2058ff: e8 6c 54 00 00               	callq	0x20ad70 <signal@plt>
  205904: 48 8d 05 05 7a 20 00         	leaq	2128389(%rip), %rax     # 0x40d310 <__afl_cmp_map>
  20590b: 48 83 38 00                  	cmpq	$0, (%rax)
  20590f: 75 15                        	jne	0x205926 <__afl_manual_init+0xd6>
  205911: 48 8d 3d c2 c7 ff ff         	leaq	-14398(%rip), %rdi      # 0x2020da <_IO_stdin_used+0x37a>
  205918: e8 23 52 00 00               	callq	0x20ab40 <getenv@plt>
  20591d: 48 85 c0                     	testq	%rax, %rax
  205920: 0f 84 2e 03 00 00            	je	0x205c54 <__afl_manual_init+0x404>
  205926: bf 11 00 00 00               	movl	$17, %edi
  20592b: 31 f6                        	xorl	%esi, %esi
  20592d: e8 3e 54 00 00               	callq	0x20ad70 <signal@plt>
  205932: 49 89 c6                     	movq	%rax, %r14
  205935: 48 8d 05 9c 77 00 00         	leaq	30620(%rip), %rax       # 0x20d0d8 <__afl_map_size>
  20593c: 8b 00                        	movl	(%rax), %eax
  20593e: 3d 00 00 80 00               	cmpl	$8388608, %eax          # imm = 0x800000
  205943: 77 17                        	ja	0x20595c <__afl_manual_init+0x10c>
  205945: 8d 0c 00                     	leal	(%rax,%rax), %ecx
  205948: 83 c1 fe                     	addl	$-2, %ecx
  20594b: 81 c9 00 00 00 40            	orl	$1073741824, %ecx       # imm = 0x40000000
  205951: 83 f8 02                     	cmpl	$2, %eax
  205954: bd 00 00 00 40               	movl	$1073741824, %ebp       # imm = 0x40000000
  205959: 0f 43 e9                     	cmovael	%ecx, %ebp
  20595c: 4c 8d 3d d5 79 20 00         	leaq	2128341(%rip), %r15     # 0x40d338 <__afl_dictionary_len>
  205963: 4c 8d 25 be 79 20 00         	leaq	2128318(%rip), %r12     # 0x40d328 <__afl_dictionary>
  20596a: 89 e8                        	movl	%ebp, %eax
  20596c: 0d 00 00 00 10               	orl	$268435456, %eax        # imm = 0x10000000
  205971: 49 83 3c 24 00               	cmpq	$0, (%r12)
  205976: 0f 44 c5                     	cmovel	%ebp, %eax
  205979: 41 83 3f 00                  	cmpl	$0, (%r15)
  20597d: 0f 44 c5                     	cmovel	%ebp, %eax
  205980: 48 8d 1d 39 77 00 00         	leaq	30521(%rip), %rbx       # 0x20d0c0 <__afl_sharedmem_fuzzing>
  205987: 89 c1                        	movl	%eax, %ecx
  205989: 81 c9 00 00 00 01            	orl	$16777216, %ecx         # imm = 0x1000000
  20598f: 83 3b 00                     	cmpl	$0, (%rbx)
  205992: 0f 44 c8                     	cmovel	%eax, %ecx
  205995: 89 c8                        	movl	%ecx, %eax
  205997: 0d 01 00 00 82               	orl	$2181038081, %eax       # imm = 0x82000001
  20599c: 85 c9                        	testl	%ecx, %ecx
  20599e: 0f 44 c1                     	cmovel	%ecx, %eax
  2059a1: 89 44 24 08                  	movl	%eax, 8(%rsp)
  2059a5: 48 8d 74 24 08               	leaq	8(%rsp), %rsi
  2059aa: ba 04 00 00 00               	movl	$4, %edx
  2059af: bf c7 00 00 00               	movl	$199, %edi
  2059b4: e8 c7 53 00 00               	callq	0x20ad80 <write@plt>
  2059b9: 48 83 f8 04                  	cmpq	$4, %rax
  2059bd: 0f 85 78 02 00 00            	jne	0x205c3b <__afl_manual_init+0x3eb>
  2059c3: 83 3b 00                     	cmpl	$0, (%rbx)
  2059c6: 75 17                        	jne	0x2059df <__afl_manual_init+0x18f>
  2059c8: 31 c0                        	xorl	%eax, %eax
  2059ca: 41 83 3f 00                  	cmpl	$0, (%r15)
  2059ce: 0f 84 04 04 00 00            	je	0x205dd8 <__afl_manual_init+0x588>
  2059d4: 49 83 3c 24 00               	cmpq	$0, (%r12)
  2059d9: 0f 84 f7 00 00 00            	je	0x205ad6 <__afl_manual_init+0x286>
  2059df: 48 8d 74 24 04               	leaq	4(%rsp), %rsi
  2059e4: ba 04 00 00 00               	movl	$4, %edx
  2059e9: bf c6 00 00 00               	movl	$198, %edi
  2059ee: e8 9d 53 00 00               	callq	0x20ad90 <read@plt>
  2059f3: 48 83 f8 04                  	cmpq	$4, %rax
  2059f7: 0f 85 8a 06 00 00            	jne	0x206087 <__afl_manual_init+0x837>
  2059fd: 80 3d e4 78 20 00 00         	cmpb	$0, 2128100(%rip)       # 0x40d2e8 <__afl_debug>
  205a04: 0f 85 d3 03 00 00            	jne	0x205ddd <__afl_manual_init+0x58d>
  205a0a: 44 8b 6c 24 04               	movl	4(%rsp), %r13d
  205a0f: 44 89 eb                     	movl	%r13d, %ebx
  205a12: f7 d3                        	notl	%ebx
  205a14: f7 c3 01 00 00 81            	testl	$2164260865, %ebx       # imm = 0x81000001
  205a1a: 75 05                        	jne	0x205a21 <__afl_manual_init+0x1d1>
  205a1c: e8 cf 36 00 00               	callq	0x2090f0 <__afl_map_shm_fuzz>
  205a21: f7 c3 01 00 00 90            	testl	$2415919105, %ebx       # imm = 0x90000001
  205a27: 0f 85 99 00 00 00            	jne	0x205ac6 <__afl_manual_init+0x276>
  205a2d: 41 8b 1f                     	movl	(%r15), %ebx
  205a30: 85 db                        	testl	%ebx, %ebx
  205a32: 0f 84 8e 00 00 00            	je	0x205ac6 <__afl_manual_init+0x276>
  205a38: 49 83 3c 24 00               	cmpq	$0, (%r12)
  205a3d: 0f 84 83 00 00 00            	je	0x205ac6 <__afl_manual_init+0x276>
  205a43: 89 5c 24 0c                  	movl	%ebx, 12(%rsp)
  205a47: 48 8d 74 24 0c               	leaq	12(%rsp), %rsi
  205a4c: ba 04 00 00 00               	movl	$4, %edx
  205a51: bf c7 00 00 00               	movl	$199, %edi
  205a56: e8 25 53 00 00               	callq	0x20ad80 <write@plt>
  205a5b: 48 83 f8 04                  	cmpq	$4, %rax
  205a5f: 0f 85 18 07 00 00            	jne	0x20617d <__afl_manual_init+0x92d>
  205a65: 31 ed                        	xorl	%ebp, %ebp
  205a67: 66 0f 1f 84 00 00 00 00 00   	nopw	(%rax,%rax)
  205a70: 89 ee                        	movl	%ebp, %esi
  205a72: 49 03 34 24                  	addq	(%r12), %rsi
  205a76: 89 da                        	movl	%ebx, %edx
  205a78: bf c7 00 00 00               	movl	$199, %edi
  205a7d: e8 fe 52 00 00               	callq	0x20ad80 <write@plt>
  205a82: 85 c0                        	testl	%eax, %eax
  205a84: 0f 8e 07 06 00 00            	jle	0x206091 <__afl_manual_init+0x841>
  205a8a: 01 c5                        	addl	%eax, %ebp
  205a8c: 29 c3                        	subl	%eax, %ebx
  205a8e: 75 e0                        	jne	0x205a70 <__afl_manual_init+0x220>
  205a90: 31 c0                        	xorl	%eax, %eax
  205a92: eb 42                        	jmp	0x205ad6 <__afl_manual_init+0x286>
  205a94: 48 8b 05 f5 65 00 00         	movq	26101(%rip), %rax       # 0x20c090 <write+0x20c090>
  205a9b: 48 8b 08                     	movq	(%rax), %rcx
  205a9e: 48 8d 3d fc c4 ff ff         	leaq	-15108(%rip), %rdi      # 0x201fa1 <_IO_stdin_used+0x241>
  205aa5: be 4c 00 00 00               	movl	$76, %esi
  205aaa: ba 01 00 00 00               	movl	$1, %edx
  205aaf: e8 ec 51 00 00               	callq	0x20aca0 <fwrite@plt>
  205ab4: 80 3d 26 78 20 00 00         	cmpb	$0, 2127910(%rip)       # 0x40d2e1 <__afl_manual_init.init_done>
  205abb: 0f 84 fd fd ff ff            	je	0x2058be <__afl_manual_init+0x6e>
  205ac1: e9 7c 01 00 00               	jmp	0x205c42 <__afl_manual_init+0x3f2>
  205ac6: 48 8d 0d 63 78 20 00         	leaq	2127971(%rip), %rcx     # 0x40d330 <__afl_fuzz_ptr>
  205acd: 31 c0                        	xorl	%eax, %eax
  205acf: 48 83 39 00                  	cmpq	$0, (%rcx)
  205ad3: 0f 94 c0                     	sete	%al
  205ad6: 31 ed                        	xorl	%ebp, %ebp
  205ad8: 4c 8d 7c 24 04               	leaq	4(%rsp), %r15
  205add: 48 8d 5c 24 0c               	leaq	12(%rsp), %rbx
  205ae2: 4c 8d 25 5f 78 20 00         	leaq	2127967(%rip), %r12     # 0x40d348 <child_pid>
  205ae9: 85 c0                        	testl	%eax, %eax
  205aeb: 0f 85 af 00 00 00            	jne	0x205ba0 <__afl_manual_init+0x350>
  205af1: eb 7b                        	jmp	0x205b6e <__afl_manual_init+0x31e>
  205af3: 66 66 66 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
  205b00: ba 04 00 00 00               	movl	$4, %edx
  205b05: bf c7 00 00 00               	movl	$199, %edi
  205b0a: 4c 89 e6                     	movq	%r12, %rsi
  205b0d: e8 6e 52 00 00               	callq	0x20ad80 <write@plt>
  205b12: 48 83 f8 04                  	cmpq	$4, %rax
  205b16: 0f 85 cb 04 00 00            	jne	0x205fe7 <__afl_manual_init+0x797>
  205b1c: 8b 3d 26 78 20 00            	movl	2127910(%rip), %edi     # 0x40d348 <child_pid>
  205b22: 31 d2                        	xorl	%edx, %edx
  205b24: 80 3d b1 77 20 00 00         	cmpb	$0, 2127793(%rip)       # 0x40d2dc <is_persistent>
  205b2b: 0f 95 c2                     	setne	%dl
  205b2e: 01 d2                        	addl	%edx, %edx
  205b30: 48 89 de                     	movq	%rbx, %rsi
  205b33: e8 68 52 00 00               	callq	0x20ada0 <waitpid@plt>
  205b38: 85 c0                        	testl	%eax, %eax
  205b3a: 0f 88 c9 04 00 00            	js	0x206009 <__afl_manual_init+0x7b9>
  205b40: 0f b6 6c 24 0c               	movzbl	12(%rsp), %ebp
  205b45: ba 04 00 00 00               	movl	$4, %edx
  205b4a: bf c7 00 00 00               	movl	$199, %edi
  205b4f: 48 89 de                     	movq	%rbx, %rsi
  205b52: e8 29 52 00 00               	callq	0x20ad80 <write@plt>
  205b57: 48 83 f8 04                  	cmpq	$4, %rax
  205b5b: 0f 85 ca 04 00 00            	jne	0x20602b <__afl_manual_init+0x7db>
  205b61: 83 fd 7f                     	cmpl	$127, %ebp
  205b64: 40 0f 94 c5                  	sete	%bpl
  205b68: 31 c0                        	xorl	%eax, %eax
  205b6a: 85 c0                        	testl	%eax, %eax
  205b6c: 75 32                        	jne	0x205ba0 <__afl_manual_init+0x350>
  205b6e: ba 04 00 00 00               	movl	$4, %edx
  205b73: bf c6 00 00 00               	movl	$198, %edi
  205b78: 4c 89 fe                     	movq	%r15, %rsi
  205b7b: e8 10 52 00 00               	callq	0x20ad90 <read@plt>
  205b80: 48 83 f8 04                  	cmpq	$4, %rax
  205b84: 0f 85 fd 04 00 00            	jne	0x206087 <__afl_manual_init+0x837>
  205b8a: 44 8b 6c 24 04               	movl	4(%rsp), %r13d
  205b8f: 40 84 ed                     	testb	%bpl, %bpl
  205b92: 75 11                        	jne	0x205ba5 <__afl_manual_init+0x355>
  205b94: eb 3a                        	jmp	0x205bd0 <__afl_manual_init+0x380>
  205b96: 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)
  205ba0: 40 84 ed                     	testb	%bpl, %bpl
  205ba3: 74 2b                        	je	0x205bd0 <__afl_manual_init+0x380>
  205ba5: 45 85 ed                     	testl	%r13d, %r13d
  205ba8: 74 26                        	je	0x205bd0 <__afl_manual_init+0x380>
  205baa: 8b 3d 98 77 20 00            	movl	2127768(%rip), %edi     # 0x40d348 <child_pid>
  205bb0: 48 89 de                     	movq	%rbx, %rsi
  205bb3: 31 d2                        	xorl	%edx, %edx
  205bb5: e8 e6 51 00 00               	callq	0x20ada0 <waitpid@plt>
  205bba: 85 c0                        	testl	%eax, %eax
  205bbc: 79 32                        	jns	0x205bf0 <__afl_manual_init+0x3a0>
  205bbe: e9 ac 04 00 00               	jmp	0x20606f <__afl_manual_init+0x81f>
  205bc3: 66 66 66 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
  205bd0: 40 84 ed                     	testb	%bpl, %bpl
  205bd3: 74 1b                        	je	0x205bf0 <__afl_manual_init+0x3a0>
  205bd5: 8b 3d 6d 77 20 00            	movl	2127725(%rip), %edi     # 0x40d348 <child_pid>
  205bdb: be 12 00 00 00               	movl	$18, %esi
  205be0: e8 cb 51 00 00               	callq	0x20adb0 <kill@plt>
  205be5: e9 16 ff ff ff               	jmp	0x205b00 <__afl_manual_init+0x2b0>
  205bea: 66 0f 1f 44 00 00            	nopw	(%rax,%rax)
  205bf0: e8 cb 51 00 00               	callq	0x20adc0 <fork@plt>
  205bf5: 89 05 4d 77 20 00            	movl	%eax, 2127693(%rip)     # 0x40d348 <child_pid>
  205bfb: 85 c0                        	testl	%eax, %eax
  205bfd: 0f 88 4a 04 00 00            	js	0x20604d <__afl_manual_init+0x7fd>
  205c03: 0f 85 f7 fe ff ff            	jne	0x205b00 <__afl_manual_init+0x2b0>
  205c09: bf 11 00 00 00               	movl	$17, %edi
  205c0e: 4c 89 f6                     	movq	%r14, %rsi
  205c11: e8 5a 51 00 00               	callq	0x20ad70 <signal@plt>
  205c16: 48 8b 35 23 77 20 00         	movq	2127651(%rip), %rsi     # 0x40d340 <old_sigterm_handler>
  205c1d: bf 0f 00 00 00               	movl	$15, %edi
  205c22: e8 49 51 00 00               	callq	0x20ad70 <signal@plt>
  205c27: bf c6 00 00 00               	movl	$198, %edi
  205c2c: e8 cf 50 00 00               	callq	0x20ad00 <close@plt>
  205c31: bf c7 00 00 00               	movl	$199, %edi
  205c36: e8 c5 50 00 00               	callq	0x20ad00 <close@plt>
  205c3b: c6 05 9f 76 20 00 01         	movb	$1, 2127519(%rip)       # 0x40d2e1 <__afl_manual_init.init_done>
  205c42: 48 81 c4 a8 00 00 00         	addq	$168, %rsp
  205c49: 5b                           	popq	%rbx
  205c4a: 41 5c                        	popq	%r12
  205c4c: 41 5d                        	popq	%r13
  205c4e: 41 5e                        	popq	%r14
  205c50: 41 5f                        	popq	%r15
  205c52: 5d                           	popq	%rbp
  205c53: c3                           	retq
  205c54: 48 8d 3d c5 c4 ff ff         	leaq	-15163(%rip), %rdi      # 0x202120 <_IO_stdin_used+0x3c0>
  205c5b: 31 f6                        	xorl	%esi, %esi
  205c5d: 31 c0                        	xorl	%eax, %eax
  205c5f: e8 6c 50 00 00               	callq	0x20acd0 <open@plt>
  205c64: 89 05 e2 76 20 00            	movl	%eax, 2127586(%rip)     # 0x40d34c <afl_snapshot_dev_fd>
  205c6a: 85 c0                        	testl	%eax, %eax
  205c6c: 0f 88 b4 fc ff ff            	js	0x205926 <__afl_manual_init+0xd6>
  205c72: bf 11 00 00 00               	movl	$17, %edi
  205c77: 31 f6                        	xorl	%esi, %esi
  205c79: e8 f2 50 00 00               	callq	0x20ad70 <signal@plt>
  205c7e: 49 89 c6                     	movq	%rax, %r14
  205c81: 48 8d 1d 38 74 00 00         	leaq	29752(%rip), %rbx       # 0x20d0c0 <__afl_sharedmem_fuzzing>
  205c88: 31 c0                        	xorl	%eax, %eax
  205c8a: 83 3b 00                     	cmpl	$0, (%rbx)
  205c8d: 0f 95 c0                     	setne	%al
  205c90: c1 e0 18                     	shll	$24, %eax
  205c93: 0d 01 00 00 a2               	orl	$2717908993, %eax       # imm = 0xA2000001
  205c98: 48 8d 0d 39 74 00 00         	leaq	29753(%rip), %rcx       # 0x20d0d8 <__afl_map_size>
  205c9f: 8b 09                        	movl	(%rcx), %ecx
  205ca1: 81 f9 00 00 80 00            	cmpl	$8388608, %ecx          # imm = 0x800000
  205ca7: 77 1c                        	ja	0x205cc5 <__afl_manual_init+0x475>
  205ca9: 8d 14 09                     	leal	(%rcx,%rcx), %edx
  205cac: 81 c2 fe ff ff 1f            	addl	$536870910, %edx        # imm = 0x1FFFFFFE
  205cb2: 81 ca 00 00 00 40            	orl	$1073741824, %edx       # imm = 0x40000000
  205cb8: 83 f9 02                     	cmpl	$2, %ecx
  205cbb: b9 00 00 00 40               	movl	$1073741824, %ecx       # imm = 0x40000000
  205cc0: 0f 43 ca                     	cmovael	%edx, %ecx
  205cc3: 09 c8                        	orl	%ecx, %eax
  205cc5: 4c 8d 3d 6c 76 20 00         	leaq	2127468(%rip), %r15     # 0x40d338 <__afl_dictionary_len>
  205ccc: 4c 8d 25 55 76 20 00         	leaq	2127445(%rip), %r12     # 0x40d328 <__afl_dictionary>
  205cd3: 89 c1                        	movl	%eax, %ecx
  205cd5: 81 c9 00 00 00 10            	orl	$268435456, %ecx        # imm = 0x10000000
  205cdb: 49 83 3c 24 00               	cmpq	$0, (%r12)
  205ce0: 0f 44 c8                     	cmovel	%eax, %ecx
  205ce3: 41 83 3f 00                  	cmpl	$0, (%r15)
  205ce7: 0f 44 c8                     	cmovel	%eax, %ecx
  205cea: 89 0d 60 76 20 00            	movl	%ecx, 2127456(%rip)     # 0x40d350 <__afl_start_snapshots.tmp>
  205cf0: 48 8d 35 59 76 20 00         	leaq	2127449(%rip), %rsi     # 0x40d350 <__afl_start_snapshots.tmp>
  205cf7: ba 04 00 00 00               	movl	$4, %edx
  205cfc: bf c7 00 00 00               	movl	$199, %edi
  205d01: e8 7a 50 00 00               	callq	0x20ad80 <write@plt>
  205d06: 48 83 f8 04                  	cmpq	$4, %rax
  205d0a: 0f 85 2b ff ff ff            	jne	0x205c3b <__afl_manual_init+0x3eb>
  205d10: 83 3b 00                     	cmpl	$0, (%rbx)
  205d13: 75 17                        	jne	0x205d2c <__afl_manual_init+0x4dc>
  205d15: 31 c0                        	xorl	%eax, %eax
  205d17: 41 83 3f 00                  	cmpl	$0, (%r15)
  205d1b: 0f 84 8b 02 00 00            	je	0x205fac <__afl_manual_init+0x75c>
  205d21: 49 83 3c 24 00               	cmpq	$0, (%r12)
  205d26: 0f 84 f7 00 00 00            	je	0x205e23 <__afl_manual_init+0x5d3>
  205d2c: 48 8d 74 24 08               	leaq	8(%rsp), %rsi
  205d31: ba 04 00 00 00               	movl	$4, %edx
  205d36: bf c6 00 00 00               	movl	$198, %edi
  205d3b: e8 50 50 00 00               	callq	0x20ad90 <read@plt>
  205d40: 48 83 f8 04                  	cmpq	$4, %rax
  205d44: 0f 85 53 04 00 00            	jne	0x20619d <__afl_manual_init+0x94d>
  205d4a: 80 3d 97 75 20 00 00         	cmpb	$0, 2127255(%rip)       # 0x40d2e8 <__afl_debug>
  205d51: 0f 85 5a 02 00 00            	jne	0x205fb1 <__afl_manual_init+0x761>
  205d57: 44 8b 6c 24 08               	movl	8(%rsp), %r13d
  205d5c: 44 89 eb                     	movl	%r13d, %ebx
  205d5f: f7 d3                        	notl	%ebx
  205d61: f7 c3 01 00 00 81            	testl	$2164260865, %ebx       # imm = 0x81000001
  205d67: 75 05                        	jne	0x205d6e <__afl_manual_init+0x51e>
  205d69: e8 82 33 00 00               	callq	0x2090f0 <__afl_map_shm_fuzz>
  205d6e: f7 c3 01 00 00 90            	testl	$2415919105, %ebx       # imm = 0x90000001
  205d74: 0f 85 99 00 00 00            	jne	0x205e13 <__afl_manual_init+0x5c3>
  205d7a: 41 8b 1f                     	movl	(%r15), %ebx
  205d7d: 85 db                        	testl	%ebx, %ebx
  205d7f: 0f 84 8e 00 00 00            	je	0x205e13 <__afl_manual_init+0x5c3>
  205d85: 49 83 3c 24 00               	cmpq	$0, (%r12)
  205d8a: 0f 84 83 00 00 00            	je	0x205e13 <__afl_manual_init+0x5c3>
  205d90: 89 5c 24 04                  	movl	%ebx, 4(%rsp)
  205d94: 48 8d 74 24 04               	leaq	4(%rsp), %rsi
  205d99: ba 04 00 00 00               	movl	$4, %edx
  205d9e: bf c7 00 00 00               	movl	$199, %edi
  205da3: e8 d8 4f 00 00               	callq	0x20ad80 <write@plt>
  205da8: 48 83 f8 04                  	cmpq	$4, %rax
  205dac: 0f 85 cb 03 00 00            	jne	0x20617d <__afl_manual_init+0x92d>
  205db2: 31 ed                        	xorl	%ebp, %ebp
  205db4: 89 ee                        	movl	%ebp, %esi
  205db6: 49 03 34 24                  	addq	(%r12), %rsi
  205dba: 89 da                        	movl	%ebx, %edx
  205dbc: bf c7 00 00 00               	movl	$199, %edi
  205dc1: e8 ba 4f 00 00               	callq	0x20ad80 <write@plt>
  205dc6: 85 c0                        	testl	%eax, %eax
  205dc8: 0f 8e c3 02 00 00            	jle	0x206091 <__afl_manual_init+0x841>
  205dce: 01 c5                        	addl	%eax, %ebp
  205dd0: 29 c3                        	subl	%eax, %ebx
  205dd2: 75 e0                        	jne	0x205db4 <__afl_manual_init+0x564>
  205dd4: 31 c0                        	xorl	%eax, %eax
  205dd6: eb 4b                        	jmp	0x205e23 <__afl_manual_init+0x5d3>
  205dd8: e9 f9 fc ff ff               	jmp	0x205ad6 <__afl_manual_init+0x286>
  205ddd: 48 8b 05 ac 62 00 00         	movq	25260(%rip), %rax       # 0x20c090 <write+0x20c090>
  205de4: 48 8b 38                     	movq	(%rax), %rdi
  205de7: 44 8b 6c 24 04               	movl	4(%rsp), %r13d
  205dec: 48 8d 35 e9 c5 ff ff         	leaq	-14871(%rip), %rsi      # 0x2023dc <_IO_stdin_used+0x67c>
  205df3: 44 89 ea                     	movl	%r13d, %edx
  205df6: 31 c0                        	xorl	%eax, %eax
  205df8: e8 83 4e 00 00               	callq	0x20ac80 <fprintf@plt>
  205dfd: 44 89 eb                     	movl	%r13d, %ebx
  205e00: f7 d3                        	notl	%ebx
  205e02: f7 c3 01 00 00 81            	testl	$2164260865, %ebx       # imm = 0x81000001
  205e08: 0f 84 0e fc ff ff            	je	0x205a1c <__afl_manual_init+0x1cc>
  205e0e: e9 0e fc ff ff               	jmp	0x205a21 <__afl_manual_init+0x1d1>
  205e13: 48 8d 0d 16 75 20 00         	leaq	2127126(%rip), %rcx     # 0x40d330 <__afl_fuzz_ptr>
  205e1a: 31 c0                        	xorl	%eax, %eax
  205e1c: 48 83 39 00                  	cmpq	$0, (%rcx)
  205e20: 0f 94 c0                     	sete	%al
  205e23: 31 ed                        	xorl	%ebp, %ebp
  205e25: 4c 8d 7c 24 08               	leaq	8(%rsp), %r15
  205e2a: 48 8d 5c 24 04               	leaq	4(%rsp), %rbx
  205e2f: 4c 8d 25 12 75 20 00         	leaq	2127122(%rip), %r12     # 0x40d348 <child_pid>
  205e36: 85 c0                        	testl	%eax, %eax
  205e38: 0f 85 92 00 00 00            	jne	0x205ed0 <__afl_manual_init+0x680>
  205e3e: eb 65                        	jmp	0x205ea5 <__afl_manual_init+0x655>
  205e40: ba 04 00 00 00               	movl	$4, %edx
  205e45: bf c7 00 00 00               	movl	$199, %edi
  205e4a: 4c 89 e6                     	movq	%r12, %rsi
  205e4d: e8 2e 4f 00 00               	callq	0x20ad80 <write@plt>
  205e52: 48 83 f8 04                  	cmpq	$4, %rax
  205e56: 0f 85 55 02 00 00            	jne	0x2060b1 <__afl_manual_init+0x861>
  205e5c: 8b 3d e6 74 20 00            	movl	2127078(%rip), %edi     # 0x40d348 <child_pid>
  205e62: 48 89 de                     	movq	%rbx, %rsi
  205e65: ba 02 00 00 00               	movl	$2, %edx
  205e6a: e8 31 4f 00 00               	callq	0x20ada0 <waitpid@plt>
  205e6f: 85 c0                        	testl	%eax, %eax
  205e71: 0f 88 5c 02 00 00            	js	0x2060d3 <__afl_manual_init+0x883>
  205e77: 0f b6 6c 24 04               	movzbl	4(%rsp), %ebp
  205e7c: ba 04 00 00 00               	movl	$4, %edx
  205e81: bf c7 00 00 00               	movl	$199, %edi
  205e86: 48 89 de                     	movq	%rbx, %rsi
  205e89: e8 f2 4e 00 00               	callq	0x20ad80 <write@plt>
  205e8e: 48 83 f8 04                  	cmpq	$4, %rax
  205e92: 0f 85 5d 02 00 00            	jne	0x2060f5 <__afl_manual_init+0x8a5>
  205e98: 83 fd 7f                     	cmpl	$127, %ebp
  205e9b: 40 0f 94 c5                  	sete	%bpl
  205e9f: 31 c0                        	xorl	%eax, %eax
  205ea1: 85 c0                        	testl	%eax, %eax
  205ea3: 75 2b                        	jne	0x205ed0 <__afl_manual_init+0x680>
  205ea5: ba 04 00 00 00               	movl	$4, %edx
  205eaa: bf c6 00 00 00               	movl	$198, %edi
  205eaf: 4c 89 fe                     	movq	%r15, %rsi
  205eb2: e8 d9 4e 00 00               	callq	0x20ad90 <read@plt>
  205eb7: 48 83 f8 04                  	cmpq	$4, %rax
  205ebb: 0f 85 9a 02 00 00            	jne	0x20615b <__afl_manual_init+0x90b>
  205ec1: 44 8b 6c 24 08               	movl	8(%rsp), %r13d
  205ec6: 40 84 ed                     	testb	%bpl, %bpl
  205ec9: 75 0a                        	jne	0x205ed5 <__afl_manual_init+0x685>
  205ecb: eb 26                        	jmp	0x205ef3 <__afl_manual_init+0x6a3>
  205ecd: 0f 1f 00                     	nopl	(%rax)
  205ed0: 40 84 ed                     	testb	%bpl, %bpl
  205ed3: 74 1e                        	je	0x205ef3 <__afl_manual_init+0x6a3>
  205ed5: 45 85 ed                     	testl	%r13d, %r13d
  205ed8: 74 19                        	je	0x205ef3 <__afl_manual_init+0x6a3>
  205eda: 8b 3d 68 74 20 00            	movl	2126952(%rip), %edi     # 0x40d348 <child_pid>
  205ee0: 48 89 de                     	movq	%rbx, %rsi
  205ee3: 31 d2                        	xorl	%edx, %edx
  205ee5: e8 b6 4e 00 00               	callq	0x20ada0 <waitpid@plt>
  205eea: 85 c0                        	testl	%eax, %eax
  205eec: 79 22                        	jns	0x205f10 <__afl_manual_init+0x6c0>
  205eee: e9 46 02 00 00               	jmp	0x206139 <__afl_manual_init+0x8e9>
  205ef3: 40 84 ed                     	testb	%bpl, %bpl
  205ef6: 74 18                        	je	0x205f10 <__afl_manual_init+0x6c0>
  205ef8: 8b 3d 4a 74 20 00            	movl	2126922(%rip), %edi     # 0x40d348 <child_pid>
  205efe: be 12 00 00 00               	movl	$18, %esi
  205f03: e8 a8 4e 00 00               	callq	0x20adb0 <kill@plt>
  205f08: e9 33 ff ff ff               	jmp	0x205e40 <__afl_manual_init+0x5f0>
  205f0d: 0f 1f 00                     	nopl	(%rax)
  205f10: e8 ab 4e 00 00               	callq	0x20adc0 <fork@plt>
  205f15: 89 05 2d 74 20 00            	movl	%eax, 2126893(%rip)     # 0x40d348 <child_pid>
  205f1b: 85 c0                        	testl	%eax, %eax
  205f1d: 0f 88 f4 01 00 00            	js	0x206117 <__afl_manual_init+0x8c7>
  205f23: 0f 85 17 ff ff ff            	jne	0x205e40 <__afl_manual_init+0x5f0>
  205f29: bf 11 00 00 00               	movl	$17, %edi
  205f2e: 4c 89 f6                     	movq	%r14, %rsi
  205f31: e8 3a 4e 00 00               	callq	0x20ad70 <signal@plt>
  205f36: 48 8b 35 03 74 20 00         	movq	2126851(%rip), %rsi     # 0x40d340 <old_sigterm_handler>
  205f3d: bf 0f 00 00 00               	movl	$15, %edi
  205f42: e8 29 4e 00 00               	callq	0x20ad70 <signal@plt>
  205f47: bf c6 00 00 00               	movl	$198, %edi
  205f4c: e8 af 4d 00 00               	callq	0x20ad00 <close@plt>
  205f51: bf c7 00 00 00               	movl	$199, %edi
  205f56: e8 a5 4d 00 00               	callq	0x20ad00 <close@plt>
  205f5b: 8b 3d eb 73 20 00            	movl	2126827(%rip), %edi     # 0x40d34c <afl_snapshot_dev_fd>
  205f61: be 05 19 ad 80               	movl	$2158827781, %esi       # imm = 0x80AD1905
  205f66: ba 1d 00 00 00               	movl	$29, %edx
  205f6b: 31 c0                        	xorl	%eax, %eax
  205f6d: e8 5e 4e 00 00               	callq	0x20add0 <ioctl@plt>
  205f72: 85 c0                        	testl	%eax, %eax
  205f74: 75 0a                        	jne	0x205f80 <__afl_manual_init+0x730>
  205f76: bf 13 00 00 00               	movl	$19, %edi
  205f7b: e8 c0 4d 00 00               	callq	0x20ad40 <raise@plt>
  205f80: 48 8d 05 41 71 00 00         	leaq	28993(%rip), %rax       # 0x20d0c8 <__afl_area_ptr>
  205f87: 48 8b 00                     	movq	(%rax), %rax
  205f8a: c6 00 01                     	movb	$1, (%rax)
  205f8d: 64 48 8b 04 25 00 00 00 00   	movq	%fs:0, %rax
  205f96: 48 8d 80 90 ff ff ff         	leaq	-112(%rax), %rax
  205f9d: 0f 57 c0                     	xorps	%xmm0, %xmm0
  205fa0: 0f 29 40 10                  	movaps	%xmm0, 16(%rax)
  205fa4: 0f 29 00                     	movaps	%xmm0, (%rax)
  205fa7: e9 8f fc ff ff               	jmp	0x205c3b <__afl_manual_init+0x3eb>
  205fac: e9 72 fe ff ff               	jmp	0x205e23 <__afl_manual_init+0x5d3>
  205fb1: 48 8b 05 d8 60 00 00         	movq	24792(%rip), %rax       # 0x20c090 <write+0x20c090>
  205fb8: 48 8b 38                     	movq	(%rax), %rdi
  205fbb: 44 8b 6c 24 08               	movl	8(%rsp), %r13d
  205fc0: 48 8d 35 15 c4 ff ff         	leaq	-15339(%rip), %rsi      # 0x2023dc <_IO_stdin_used+0x67c>
  205fc7: 44 89 ea                     	movl	%r13d, %edx
  205fca: 31 c0                        	xorl	%eax, %eax
  205fcc: e8 af 4c 00 00               	callq	0x20ac80 <fprintf@plt>
  205fd1: 44 89 eb                     	movl	%r13d, %ebx
  205fd4: f7 d3                        	notl	%ebx
  205fd6: f7 c3 01 00 00 81            	testl	$2164260865, %ebx       # imm = 0x81000001
  205fdc: 0f 84 87 fd ff ff            	je	0x205d69 <__afl_manual_init+0x519>
  205fe2: e9 87 fd ff ff               	jmp	0x205d6e <__afl_manual_init+0x51e>
  205fe7: 48 8d 3d 21 c3 ff ff         	leaq	-15583(%rip), %rdi      # 0x20230f <_IO_stdin_used+0x5af>
  205fee: 48 8d 35 3a c0 ff ff         	leaq	-16326(%rip), %rsi      # 0x20202f <_IO_stdin_used+0x2cf>
  205ff5: ba a6 04 00 00               	movl	$1190, %edx             # imm = 0x4A6
  205ffa: e8 a1 f6 ff ff               	callq	0x2056a0 <write_error_with_location>
  205fff: bf 01 00 00 00               	movl	$1, %edi
  206004: e8 d7 4d 00 00               	callq	0x20ade0 <_exit@plt>
  206009: 48 8d 3d 0f c2 ff ff         	leaq	-15857(%rip), %rdi      # 0x20221f <_IO_stdin_used+0x4bf>
  206010: 48 8d 35 18 c0 ff ff         	leaq	-16360(%rip), %rsi      # 0x20202f <_IO_stdin_used+0x2cf>
  206017: ba ad 04 00 00               	movl	$1197, %edx             # imm = 0x4AD
  20601c: e8 7f f6 ff ff               	callq	0x2056a0 <write_error_with_location>
  206021: bf 01 00 00 00               	movl	$1, %edi
  206026: e8 b5 4d 00 00               	callq	0x20ade0 <_exit@plt>
  20602b: 48 8d 3d da c0 ff ff         	leaq	-16166(%rip), %rdi      # 0x20210c <_IO_stdin_used+0x3ac>
  206032: 48 8d 35 f6 bf ff ff         	leaq	-16394(%rip), %rsi      # 0x20202f <_IO_stdin_used+0x2cf>
  206039: ba bc 04 00 00               	movl	$1212, %edx             # imm = 0x4BC
  20603e: e8 5d f6 ff ff               	callq	0x2056a0 <write_error_with_location>
  206043: bf 01 00 00 00               	movl	$1, %edi
  206048: e8 93 4d 00 00               	callq	0x20ade0 <_exit@plt>
  20604d: 48 8d 3d af c7 ff ff         	leaq	-14417(%rip), %rdi      # 0x202803 <_IO_stdin_used+0xaa3>
  206054: 48 8d 35 d4 bf ff ff         	leaq	-16428(%rip), %rsi      # 0x20202f <_IO_stdin_used+0x2cf>
  20605b: ba 84 04 00 00               	movl	$1156, %edx             # imm = 0x484
  206060: e8 3b f6 ff ff               	callq	0x2056a0 <write_error_with_location>
  206065: bf 01 00 00 00               	movl	$1, %edi
  20606a: e8 71 4d 00 00               	callq	0x20ade0 <_exit@plt>
  20606f: 48 8d 3d 6c c8 ff ff         	leaq	-14228(%rip), %rdi      # 0x2028e2 <_IO_stdin_used+0xb82>
  206076: 48 8d 35 b2 bf ff ff         	leaq	-16462(%rip), %rsi      # 0x20202f <_IO_stdin_used+0x2cf>
  20607d: ba 76 04 00 00               	movl	$1142, %edx             # imm = 0x476
  206082: e8 19 f6 ff ff               	callq	0x2056a0 <write_error_with_location>
  206087: bf 01 00 00 00               	movl	$1, %edi
  20608c: e8 4f 4d 00 00               	callq	0x20ade0 <_exit@plt>
  206091: 48 8d 35 52 c0 ff ff         	leaq	-16302(%rip), %rsi      # 0x2020ea <_IO_stdin_used+0x38a>
  206098: ba 21 00 00 00               	movl	$33, %edx
  20609d: bf 02 00 00 00               	movl	$2, %edi
  2060a2: e8 d9 4c 00 00               	callq	0x20ad80 <write@plt>
  2060a7: bf 01 00 00 00               	movl	$1, %edi
  2060ac: e8 2f 4d 00 00               	callq	0x20ade0 <_exit@plt>
  2060b1: 48 8d 3d 57 c2 ff ff         	leaq	-15785(%rip), %rdi      # 0x20230f <_IO_stdin_used+0x5af>
  2060b8: 48 8d 35 70 bf ff ff         	leaq	-16528(%rip), %rsi      # 0x20202f <_IO_stdin_used+0x2cf>
  2060bf: ba a7 03 00 00               	movl	$935, %edx              # imm = 0x3A7
  2060c4: e8 d7 f5 ff ff               	callq	0x2056a0 <write_error_with_location>
  2060c9: bf 01 00 00 00               	movl	$1, %edi
  2060ce: e8 0d 4d 00 00               	callq	0x20ade0 <_exit@plt>
  2060d3: 48 8d 3d 45 c1 ff ff         	leaq	-16059(%rip), %rdi      # 0x20221f <_IO_stdin_used+0x4bf>
  2060da: 48 8d 35 4e bf ff ff         	leaq	-16562(%rip), %rsi      # 0x20202f <_IO_stdin_used+0x2cf>
  2060e1: ba ae 03 00 00               	movl	$942, %edx              # imm = 0x3AE
  2060e6: e8 b5 f5 ff ff               	callq	0x2056a0 <write_error_with_location>
  2060eb: bf 01 00 00 00               	movl	$1, %edi
  2060f0: e8 eb 4c 00 00               	callq	0x20ade0 <_exit@plt>
  2060f5: 48 8d 3d 10 c0 ff ff         	leaq	-16368(%rip), %rdi      # 0x20210c <_IO_stdin_used+0x3ac>
  2060fc: 48 8d 35 2c bf ff ff         	leaq	-16596(%rip), %rsi      # 0x20202f <_IO_stdin_used+0x2cf>
  206103: ba bd 03 00 00               	movl	$957, %edx              # imm = 0x3BD
  206108: e8 93 f5 ff ff               	callq	0x2056a0 <write_error_with_location>
  20610d: bf 01 00 00 00               	movl	$1, %edi
  206112: e8 c9 4c 00 00               	callq	0x20ade0 <_exit@plt>
  206117: 48 8d 3d e5 c6 ff ff         	leaq	-14619(%rip), %rdi      # 0x202803 <_IO_stdin_used+0xaa3>
  20611e: 48 8d 35 0a bf ff ff         	leaq	-16630(%rip), %rsi      # 0x20202f <_IO_stdin_used+0x2cf>
  206125: ba 7a 03 00 00               	movl	$890, %edx              # imm = 0x37A
  20612a: e8 71 f5 ff ff               	callq	0x2056a0 <write_error_with_location>
  20612f: bf 01 00 00 00               	movl	$1, %edi
  206134: e8 a7 4c 00 00               	callq	0x20ade0 <_exit@plt>
  206139: 48 8d 3d a2 c7 ff ff         	leaq	-14430(%rip), %rdi      # 0x2028e2 <_IO_stdin_used+0xb82>
  206140: 48 8d 35 e8 be ff ff         	leaq	-16664(%rip), %rsi      # 0x20202f <_IO_stdin_used+0x2cf>
  206147: ba 6c 03 00 00               	movl	$876, %edx              # imm = 0x36C
  20614c: e8 4f f5 ff ff               	callq	0x2056a0 <write_error_with_location>
  206151: bf 01 00 00 00               	movl	$1, %edi
  206156: e8 85 4c 00 00               	callq	0x20ade0 <_exit@plt>
  20615b: 48 8d 3d 1e c1 ff ff         	leaq	-16098(%rip), %rdi      # 0x202280 <_IO_stdin_used+0x520>
  206162: 48 8d 35 c6 be ff ff         	leaq	-16698(%rip), %rsi      # 0x20202f <_IO_stdin_used+0x2cf>
  206169: ba 42 03 00 00               	movl	$834, %edx              # imm = 0x342
  20616e: e8 2d f5 ff ff               	callq	0x2056a0 <write_error_with_location>
  206173: bf 01 00 00 00               	movl	$1, %edi
  206178: e8 63 4c 00 00               	callq	0x20ade0 <_exit@plt>
  20617d: 48 8d 35 0e c0 ff ff         	leaq	-16370(%rip), %rsi      # 0x202192 <_IO_stdin_used+0x432>
  206184: ba 25 00 00 00               	movl	$37, %edx
  206189: bf 02 00 00 00               	movl	$2, %edi
  20618e: e8 ed 4b 00 00               	callq	0x20ad80 <write@plt>
  206193: bf 01 00 00 00               	movl	$1, %edi
  206198: e8 43 4c 00 00               	callq	0x20ade0 <_exit@plt>
  20619d: 48 8d 3d 63 bc ff ff         	leaq	-17309(%rip), %rdi      # 0x201e07 <_IO_stdin_used+0xa7>
  2061a4: 48 8d 35 84 be ff ff         	leaq	-16764(%rip), %rsi      # 0x20202f <_IO_stdin_used+0x2cf>
  2061ab: ba f8 02 00 00               	movl	$760, %edx              # imm = 0x2F8
  2061b0: e8 eb f4 ff ff               	callq	0x2056a0 <write_error_with_location>
  2061b5: bf 01 00 00 00               	movl	$1, %edi
  2061ba: e8 21 4c 00 00               	callq	0x20ade0 <_exit@plt>
  2061bf: 90                           	nop

00000000002061c0 <__afl_auto_init>:
  2061c0: 50                           	pushq	%rax
  2061c1: 48 8d 05 24 71 20 00         	leaq	2126116(%rip), %rax     # 0x40d2ec <__afl_already_initialized_init>
  2061c8: 83 38 00                     	cmpl	$0, (%rax)
  2061cb: 75 28                        	jne	0x2061f5 <__afl_auto_init+0x35>
  2061cd: c7 00 01 00 00 00            	movl	$1, (%rax)
  2061d3: 48 8d 3d 08 c6 ff ff         	leaq	-14840(%rip), %rdi      # 0x2027e2 <_IO_stdin_used+0xa82>
  2061da: e8 61 49 00 00               	callq	0x20ab40 <getenv@plt>
  2061df: 48 85 c0                     	testq	%rax, %rax
  2061e2: 75 11                        	jne	0x2061f5 <__afl_auto_init+0x35>
  2061e4: 48 8d 3d fa c0 ff ff         	leaq	-16134(%rip), %rdi      # 0x2022e5 <_IO_stdin_used+0x585>
  2061eb: e8 50 49 00 00               	callq	0x20ab40 <getenv@plt>
  2061f0: 48 85 c0                     	testq	%rax, %rax
  2061f3: 74 02                        	je	0x2061f7 <__afl_auto_init+0x37>
  2061f5: 58                           	popq	%rax
  2061f6: c3                           	retq
  2061f7: 58                           	popq	%rax
  2061f8: e9 53 f6 ff ff               	jmp	0x205850 <__afl_manual_init>
  2061fd: 0f 1f 00                     	nopl	(%rax)

0000000000206200 <__early_forkserver>:
  206200: 50                           	pushq	%rax
  206201: 48 8d 3d 25 c5 ff ff         	leaq	-15067(%rip), %rdi      # 0x20272d <_IO_stdin_used+0x9cd>
  206208: e8 33 49 00 00               	callq	0x20ab40 <getenv@plt>
  20620d: 48 85 c0                     	testq	%rax, %rax
  206210: 74 34                        	je	0x206246 <__early_forkserver+0x46>
  206212: 48 8d 05 d3 70 20 00         	leaq	2126035(%rip), %rax     # 0x40d2ec <__afl_already_initialized_init>
  206219: 83 38 00                     	cmpl	$0, (%rax)
  20621c: 75 28                        	jne	0x206246 <__early_forkserver+0x46>
  20621e: c7 00 01 00 00 00            	movl	$1, (%rax)
  206224: 48 8d 3d b7 c5 ff ff         	leaq	-14921(%rip), %rdi      # 0x2027e2 <_IO_stdin_used+0xa82>
  20622b: e8 10 49 00 00               	callq	0x20ab40 <getenv@plt>
  206230: 48 85 c0                     	testq	%rax, %rax
  206233: 75 11                        	jne	0x206246 <__early_forkserver+0x46>
  206235: 48 8d 3d a9 c0 ff ff         	leaq	-16215(%rip), %rdi      # 0x2022e5 <_IO_stdin_used+0x585>
  20623c: e8 ff 48 00 00               	callq	0x20ab40 <getenv@plt>
  206241: 48 85 c0                     	testq	%rax, %rax
  206244: 74 02                        	je	0x206248 <__early_forkserver+0x48>
  206246: 58                           	popq	%rax
  206247: c3                           	retq
  206248: 58                           	popq	%rax
  206249: e9 02 f6 ff ff               	jmp	0x205850 <__afl_manual_init>
  20624e: 66 90                        	nop

0000000000206250 <__afl_auto_early>:
  206250: 50                           	pushq	%rax
  206251: 48 8d 3d 7c c0 ff ff         	leaq	-16260(%rip), %rdi      # 0x2022d4 <_IO_stdin_used+0x574>
  206258: e8 e3 48 00 00               	callq	0x20ab40 <getenv@plt>
  20625d: 48 85 c0                     	testq	%rax, %rax
  206260: 0f 95 05 75 70 20 00         	setne	2125941(%rip)           # 0x40d2dc <is_persistent>
  206267: 48 8d 3d 74 c5 ff ff         	leaq	-14988(%rip), %rdi      # 0x2027e2 <_IO_stdin_used+0xa82>
  20626e: e8 cd 48 00 00               	callq	0x20ab40 <getenv@plt>
  206273: 48 85 c0                     	testq	%rax, %rax
  206276: 74 02                        	je	0x20627a <__afl_auto_early+0x2a>
  206278: 58                           	popq	%rax
  206279: c3                           	retq
  20627a: 58                           	popq	%rax
  20627b: eb 03                        	jmp	0x206280 <__afl_map_shm>
  20627d: 0f 1f 00                     	nopl	(%rax)

0000000000206280 <__afl_map_shm>:
  206280: 55                           	pushq	%rbp
  206281: 41 57                        	pushq	%r15
  206283: 41 56                        	pushq	%r14
  206285: 41 55                        	pushq	%r13
  206287: 41 54                        	pushq	%r12
  206289: 53                           	pushq	%rbx
  20628a: 50                           	pushq	%rax
  20628b: 48 8d 05 76 70 20 00         	leaq	2125942(%rip), %rax     # 0x40d308 <__afl_already_initialized_shm>
  206292: 83 38 00                     	cmpl	$0, (%rax)
  206295: 0f 85 48 04 00 00            	jne	0x2066e3 <__afl_map_shm+0x463>
  20629b: c7 00 01 00 00 00            	movl	$1, (%rax)
  2062a1: 4c 8d 35 20 6e 00 00         	leaq	28192(%rip), %r14       # 0x20d0c8 <__afl_area_ptr>
  2062a8: 49 83 3e 00                  	cmpq	$0, (%r14)
  2062ac: 75 0a                        	jne	0x2062b8 <__afl_map_shm+0x38>
  2062ae: 48 8b 05 2b 6e 00 00         	movq	28203(%rip), %rax       # 0x20d0e0 <__afl_area_ptr_dummy>
  2062b5: 49 89 06                     	movq	%rax, (%r14)
  2062b8: 48 8d 3d 2f bd ff ff         	leaq	-17105(%rip), %rdi      # 0x201fee <_IO_stdin_used+0x28e>
  2062bf: e8 7c 48 00 00               	callq	0x20ab40 <getenv@plt>
  2062c4: 49 89 c5                     	movq	%rax, %r13
  2062c7: 4c 8d 3d 26 70 20 00         	leaq	2125862(%rip), %r15     # 0x40d2f4 <__afl_final_loc>
  2062ce: 41 8b 2f                     	movl	(%r15), %ebp
  2062d1: 85 ed                        	testl	%ebp, %ebp
  2062d3: 74 5b                        	je	0x206330 <__afl_map_shm+0xb0>
  2062d5: ff c5                        	incl	%ebp
  2062d7: 41 89 2f                     	movl	%ebp, (%r15)
  2062da: 48 8d 05 f7 6d 00 00         	leaq	28151(%rip), %rax       # 0x20d0d8 <__afl_map_size>
  2062e1: 89 28                        	movl	%ebp, (%rax)
  2062e3: 48 8d 3d 45 c0 ff ff         	leaq	-16315(%rip), %rdi      # 0x20232f <_IO_stdin_used+0x5cf>
  2062ea: e8 51 48 00 00               	callq	0x20ab40 <getenv@plt>
  2062ef: 48 85 c0                     	testq	%rax, %rax
  2062f2: 0f 85 af 05 00 00            	jne	0x2068a7 <__afl_map_shm+0x627>
  2062f8: 81 fd 01 00 01 00            	cmpl	$65537, %ebp            # imm = 0x10001
  2062fe: 72 45                        	jb	0x206345 <__afl_map_shm+0xc5>
  206300: 48 8d 3d 60 c1 ff ff         	leaq	-16032(%rip), %rdi      # 0x202467 <_IO_stdin_used+0x707>
  206307: e8 34 48 00 00               	callq	0x20ab40 <getenv@plt>
  20630c: 48 85 c0                     	testq	%rax, %rax
  20630f: 0f 84 19 02 00 00            	je	0x20652e <__afl_map_shm+0x2ae>
  206315: 48 89 c7                     	movq	%rax, %rdi
  206318: 31 f6                        	xorl	%esi, %esi
  20631a: ba 0a 00 00 00               	movl	$10, %edx
  20631f: e8 8c 48 00 00               	callq	0x20abb0 <strtol@plt>
  206324: 41 8b 2f                     	movl	(%r15), %ebp
  206327: 39 e8                        	cmpl	%ebp, %eax
  206329: 73 1a                        	jae	0x206345 <__afl_map_shm+0xc5>
  20632b: e9 08 02 00 00               	jmp	0x206538 <__afl_map_shm+0x2b8>
  206330: 48 8d 3d f8 bf ff ff         	leaq	-16392(%rip), %rdi      # 0x20232f <_IO_stdin_used+0x5cf>
  206337: e8 04 48 00 00               	callq	0x20ab40 <getenv@plt>
  20633c: 48 85 c0                     	testq	%rax, %rax
  20633f: 0f 85 b0 05 00 00            	jne	0x2068f5 <__afl_map_shm+0x675>
  206345: 4d 85 ed                     	testq	%r13, %r13
  206348: 0f 85 a6 00 00 00            	jne	0x2063f4 <__afl_map_shm+0x174>
  20634e: 48 8d 05 7b 6f 00 00         	leaq	28539(%rip), %rax       # 0x20d2d0 <__afl_area_initial>
  206355: 48 39 05 84 6d 00 00         	cmpq	%rax, 28036(%rip)       # 0x20d0e0 <__afl_area_ptr_dummy>
  20635c: 0f 85 92 00 00 00            	jne	0x2063f4 <__afl_map_shm+0x174>
  206362: 48 8d 3d fe c0 ff ff         	leaq	-16130(%rip), %rdi      # 0x202467 <_IO_stdin_used+0x707>
  206369: e8 d2 47 00 00               	callq	0x20ab40 <getenv@plt>
  20636e: 48 85 c0                     	testq	%rax, %rax
  206371: 74 45                        	je	0x2063b8 <__afl_map_shm+0x138>
  206373: 48 89 c7                     	movq	%rax, %rdi
  206376: 31 f6                        	xorl	%esi, %esi
  206378: ba 0a 00 00 00               	movl	$10, %edx
  20637d: e8 2e 48 00 00               	callq	0x20abb0 <strtol@plt>
  206382: 48 89 c5                     	movq	%rax, %rbp
  206385: 81 fd 01 00 20 00            	cmpl	$2097153, %ebp          # imm = 0x200001
  20638b: 72 2b                        	jb	0x2063b8 <__afl_map_shm+0x138>
  20638d: 48 8d 05 44 6d 00 00         	leaq	27972(%rip), %rax       # 0x20d0d8 <__afl_map_size>
  206394: 89 28                        	movl	%ebp, (%rax)
  206396: 89 ef                        	movl	%ebp, %edi
  206398: e8 23 49 00 00               	callq	0x20acc0 <malloc@plt>
  20639d: 48 89 05 3c 6d 00 00         	movq	%rax, 27964(%rip)       # 0x20d0e0 <__afl_area_ptr_dummy>
  2063a4: 48 85 c0                     	testq	%rax, %rax
  2063a7: 0f 84 65 05 00 00            	je	0x206912 <__afl_map_shm+0x692>
  2063ad: 80 3d 34 6f 20 00 01         	cmpb	$1, 2125620(%rip)       # 0x40d2e8 <__afl_debug>
  2063b4: 75 4b                        	jne	0x206401 <__afl_map_shm+0x181>
  2063b6: eb 1b                        	jmp	0x2063d3 <__afl_map_shm+0x153>
  2063b8: 48 8d 05 19 6d 00 00         	leaq	27929(%rip), %rax       # 0x20d0d8 <__afl_map_size>
  2063bf: c7 00 00 00 20 00            	movl	$2097152, (%rax)        # imm = 0x200000
  2063c5: bd 00 00 20 00               	movl	$2097152, %ebp          # imm = 0x200000
  2063ca: 80 3d 17 6f 20 00 01         	cmpb	$1, 2125591(%rip)       # 0x40d2e8 <__afl_debug>
  2063d1: 75 2e                        	jne	0x206401 <__afl_map_shm+0x181>
  2063d3: 48 8b 05 b6 5c 00 00         	movq	23734(%rip), %rax       # 0x20c090 <write+0x20c090>
  2063da: 48 8b 38                     	movq	(%rax), %rdi
  2063dd: 48 8b 0d fc 6c 00 00         	movq	27900(%rip), %rcx       # 0x20d0e0 <__afl_area_ptr_dummy>
  2063e4: 48 8d 35 a4 c0 ff ff         	leaq	-16220(%rip), %rsi      # 0x20248f <_IO_stdin_used+0x72f>
  2063eb: 89 ea                        	movl	%ebp, %edx
  2063ed: 31 c0                        	xorl	%eax, %eax
  2063ef: e8 8c 48 00 00               	callq	0x20ac80 <fprintf@plt>
  2063f4: 80 3d ed 6e 20 00 01         	cmpb	$1, 2125549(%rip)       # 0x40d2e8 <__afl_debug>
  2063fb: 0f 84 c4 03 00 00            	je	0x2067c5 <__afl_map_shm+0x545>
  206401: 49 8b 06                     	movq	(%r14), %rax
  206404: 48 85 c0                     	testq	%rax, %rax
  206407: 0f 94 c3                     	sete	%bl
  20640a: 48 8d 0d bf 6e 00 00         	leaq	28351(%rip), %rcx       # 0x20d2d0 <__afl_area_initial>
  206411: 48 39 c8                     	cmpq	%rcx, %rax
  206414: 0f 94 c2                     	sete	%dl
  206417: 08 da                        	orb	%bl, %dl
  206419: 4d 85 ed                     	testq	%r13, %r13
  20641c: 74 3c                        	je	0x20645a <__afl_map_shm+0x1da>
  20641e: 48 8b 2d bb 6c 00 00         	movq	27835(%rip), %rbp       # 0x20d0e0 <__afl_area_ptr_dummy>
  206425: 48 39 e8                     	cmpq	%rbp, %rax
  206428: 0f 94 c1                     	sete	%cl
  20642b: 08 ca                        	orb	%cl, %dl
  20642d: 0f 85 4e 01 00 00            	jne	0x206581 <__afl_map_shm+0x301>
  206433: 48 8d 0d be 6e 20 00         	leaq	2125502(%rip), %rcx     # 0x40d2f8 <__afl_map_addr>
  20643a: 48 8b 39                     	movq	(%rcx), %rdi
  20643d: 48 85 ff                     	testq	%rdi, %rdi
  206440: 0f 84 30 01 00 00            	je	0x206576 <__afl_map_shm+0x2f6>
  206446: 41 8b 37                     	movl	(%r15), %esi
  206449: e8 a2 49 00 00               	callq	0x20adf0 <munmap@plt>
  20644e: 48 8b 2d 8b 6c 00 00         	movq	27787(%rip), %rbp       # 0x20d0e0 <__afl_area_ptr_dummy>
  206455: e9 24 01 00 00               	jmp	0x20657e <__afl_map_shm+0x2fe>
  20645a: 48 8d 2d 97 6e 20 00         	leaq	2125463(%rip), %rbp     # 0x40d2f8 <__afl_map_addr>
  206461: 48 8b 7d 00                  	movq	(%rbp), %rdi
  206465: 48 85 ff                     	testq	%rdi, %rdi
  206468: 0f 95 c3                     	setne	%bl
  20646b: 20 da                        	andb	%bl, %dl
  20646d: 80 fa 01                     	cmpb	$1, %dl
  206470: 75 5e                        	jne	0x2064d0 <__afl_map_shm+0x250>
  206472: 48 8d 05 5f 6c 00 00         	leaq	27743(%rip), %rax       # 0x20d0d8 <__afl_map_size>
  206479: 8b 30                        	movl	(%rax), %esi
  20647b: ba 03 00 00 00               	movl	$3, %edx
  206480: b9 21 00 10 00               	movl	$1048609, %ecx          # imm = 0x100021
  206485: 41 b8 ff ff ff ff            	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
  20648b: 45 31 c9                     	xorl	%r9d, %r9d
  20648e: e8 6d 49 00 00               	callq	0x20ae00 <mmap@plt>
  206493: 49 89 06                     	movq	%rax, (%r14)
  206496: 48 83 f8 ff                  	cmpq	$-1, %rax
  20649a: 0f 85 5b 01 00 00            	jne	0x2065fb <__afl_map_shm+0x37b>
  2064a0: 48 8b 05 e9 5b 00 00         	movq	23529(%rip), %rax       # 0x20c090 <write+0x20c090>
  2064a7: 48 8b 38                     	movq	(%rax), %rdi
  2064aa: 48 8b 55 00                  	movq	(%rbp), %rdx
  2064ae: 48 8d 35 78 ba ff ff         	leaq	-17800(%rip), %rsi      # 0x201f2d <_IO_stdin_used+0x1cd>
  2064b5: 31 c0                        	xorl	%eax, %eax
  2064b7: e8 c4 47 00 00               	callq	0x20ac80 <fprintf@plt>
  2064bc: bf 04 00 00 00               	movl	$4, %edi
  2064c1: e8 2a 2d 00 00               	callq	0x2091f0 <send_forkserver_error>
  2064c6: bf 01 00 00 00               	movl	$1, %edi
  2064cb: e8 40 49 00 00               	callq	0x20ae10 <exit@plt>
  2064d0: 41 8b 2f                     	movl	(%r15), %ebp
  2064d3: 4c 8d 25 fe 6b 00 00         	leaq	27646(%rip), %r12       # 0x20d0d8 <__afl_map_size>
  2064da: 41 3b 2c 24                  	cmpl	(%r12), %ebp
  2064de: 0f 86 17 01 00 00            	jbe	0x2065fb <__afl_map_shm+0x37b>
  2064e4: 48 8b 3d f5 6b 00 00         	movq	27637(%rip), %rdi       # 0x20d0e0 <__afl_area_ptr_dummy>
  2064eb: 48 39 cf                     	cmpq	%rcx, %rdi
  2064ee: 74 08                        	je	0x2064f8 <__afl_map_shm+0x278>
  2064f0: e8 1b 48 00 00               	callq	0x20ad10 <free@plt>
  2064f5: 41 8b 2f                     	movl	(%r15), %ebp
  2064f8: 89 ef                        	movl	%ebp, %edi
  2064fa: e8 c1 47 00 00               	callq	0x20acc0 <malloc@plt>
  2064ff: 48 89 05 da 6b 00 00         	movq	%rax, 27610(%rip)       # 0x20d0e0 <__afl_area_ptr_dummy>
  206506: 49 89 06                     	movq	%rax, (%r14)
  206509: 41 89 2c 24                  	movl	%ebp, (%r12)
  20650d: 48 85 c0                     	testq	%rax, %rax
  206510: 0f 85 e5 00 00 00            	jne	0x2065fb <__afl_map_shm+0x37b>
  206516: 48 8b 05 73 5b 00 00         	movq	23411(%rip), %rax       # 0x20c090 <write+0x20c090>
  20651d: 48 8b 38                     	movq	(%rax), %rdi
  206520: 48 8d 35 6f bd ff ff         	leaq	-17041(%rip), %rsi      # 0x202296 <_IO_stdin_used+0x536>
  206527: 89 ea                        	movl	%ebp, %edx
  206529: e9 f7 03 00 00               	jmp	0x206925 <__afl_map_shm+0x6a5>
  20652e: 31 c0                        	xorl	%eax, %eax
  206530: 39 e8                        	cmpl	%ebp, %eax
  206532: 0f 83 0d fe ff ff            	jae	0x206345 <__afl_map_shm+0xc5>
  206538: 48 8d 3d d4 be ff ff         	leaq	-16684(%rip), %rdi      # 0x202413 <_IO_stdin_used+0x6b3>
  20653f: e8 fc 45 00 00               	callq	0x20ab40 <getenv@plt>
  206544: 81 fd 01 00 80 00            	cmpl	$8388609, %ebp          # imm = 0x800001
  20654a: 0f 82 a2 01 00 00            	jb	0x2066f2 <__afl_map_shm+0x472>
  206550: 48 85 c0                     	testq	%rax, %rax
  206553: 0f 84 fe 02 00 00            	je	0x206857 <__afl_map_shm+0x5d7>
  206559: 4d 85 ed                     	testq	%r13, %r13
  20655c: 0f 84 e3 fd ff ff            	je	0x206345 <__afl_map_shm+0xc5>
  206562: bf 01 00 00 00               	movl	$1, %edi
  206567: e8 84 2c 00 00               	callq	0x2091f0 <send_forkserver_error>
  20656c: bf ff ff ff ff               	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
  206571: e8 9a 48 00 00               	callq	0x20ae10 <exit@plt>
  206576: 48 89 c7                     	movq	%rax, %rdi
  206579: e8 92 47 00 00               	callq	0x20ad10 <free@plt>
  20657e: 49 89 2e                     	movq	%rbp, (%r14)
  206581: 4c 89 ef                     	movq	%r13, %rdi
  206584: 31 f6                        	xorl	%esi, %esi
  206586: ba 0a 00 00 00               	movl	$10, %edx
  20658b: e8 20 46 00 00               	callq	0x20abb0 <strtol@plt>
  206590: 48 89 c5                     	movq	%rax, %rbp
  206593: 48 8d 05 3e 6b 00 00         	leaq	27454(%rip), %rax       # 0x20d0d8 <__afl_map_size>
  20659a: 81 38 01 00 01 00            	cmpl	$65537, (%rax)          # imm = 0x10001
  2065a0: 72 2f                        	jb	0x2065d1 <__afl_map_shm+0x351>
  2065a2: 48 8d 3d be be ff ff         	leaq	-16706(%rip), %rdi      # 0x202467 <_IO_stdin_used+0x707>
  2065a9: e8 92 45 00 00               	callq	0x20ab40 <getenv@plt>
  2065ae: 48 85 c0                     	testq	%rax, %rax
  2065b1: 0f 84 fb 02 00 00            	je	0x2068b2 <__afl_map_shm+0x632>
  2065b7: 48 89 c7                     	movq	%rax, %rdi
  2065ba: 31 f6                        	xorl	%esi, %esi
  2065bc: ba 0a 00 00 00               	movl	$10, %edx
  2065c1: e8 ea 45 00 00               	callq	0x20abb0 <strtol@plt>
  2065c6: a9 00 00 ff ff               	testl	$4294901760, %eax       # imm = 0xFFFF0000
  2065cb: 0f 84 e1 02 00 00            	je	0x2068b2 <__afl_map_shm+0x632>
  2065d1: 48 8d 1d 20 6d 20 00         	leaq	2125088(%rip), %rbx     # 0x40d2f8 <__afl_map_addr>
  2065d8: 48 8b 33                     	movq	(%rbx), %rsi
  2065db: 89 ef                        	movl	%ebp, %edi
  2065dd: 31 d2                        	xorl	%edx, %edx
  2065df: e8 3c 48 00 00               	callq	0x20ae20 <shmat@plt>
  2065e4: 49 89 06                     	movq	%rax, (%r14)
  2065e7: 48 8d 48 01                  	leaq	1(%rax), %rcx
  2065eb: 48 83 f9 01                  	cmpq	$1, %rcx
  2065ef: 0f 86 8a 02 00 00            	jbe	0x20687f <__afl_map_shm+0x5ff>
  2065f5: c6 00 01                     	movb	$1, (%rax)
  2065f8: 49 8b 06                     	movq	(%r14), %rax
  2065fb: 48 89 05 e6 6a 00 00         	movq	%rax, 27366(%rip)       # 0x20d0e8 <__afl_area_ptr_backup>
  206602: 80 3d df 6c 20 00 01         	cmpb	$1, 2125023(%rip)       # 0x40d2e8 <__afl_debug>
  206609: 0f 84 0b 01 00 00            	je	0x20671a <__afl_map_shm+0x49a>
  20660f: 48 8d 1d 02 6d 20 00         	leaq	2125058(%rip), %rbx     # 0x40d318 <__afl_selective_coverage>
  206616: 83 3b 00                     	cmpl	$0, (%rbx)
  206619: 74 35                        	je	0x206650 <__afl_map_shm+0x3d0>
  20661b: 48 8d 05 b6 6a 00 00         	leaq	27318(%rip), %rax       # 0x20d0d8 <__afl_map_size>
  206622: 8b 38                        	movl	(%rax), %edi
  206624: 81 ff 01 00 20 00            	cmpl	$2097153, %edi          # imm = 0x200001
  20662a: 72 24                        	jb	0x206650 <__afl_map_shm+0x3d0>
  20662c: e8 8f 46 00 00               	callq	0x20acc0 <malloc@plt>
  206631: 48 89 05 a8 6a 00 00         	movq	%rax, 27304(%rip)       # 0x20d0e0 <__afl_area_ptr_dummy>
  206638: 48 85 c0                     	testq	%rax, %rax
  20663b: 0f 84 eb 01 00 00            	je	0x20682c <__afl_map_shm+0x5ac>
  206641: 48 8d 0d f4 6c 20 00         	leaq	2125044(%rip), %rcx     # 0x40d33c <__afl_selective_coverage_start_off>
  206648: 83 39 00                     	cmpl	$0, (%rcx)
  20664b: 74 03                        	je	0x206650 <__afl_map_shm+0x3d0>
  20664d: 49 89 06                     	movq	%rax, (%r14)
  206650: 48 8d 3d 91 c3 ff ff         	leaq	-15471(%rip), %rdi      # 0x2029e8 <_IO_stdin_used+0xc88>
  206657: e8 e4 44 00 00               	callq	0x20ab40 <getenv@plt>
  20665c: 48 89 c3                     	movq	%rax, %rbx
  20665f: 80 3d 82 6c 20 00 01         	cmpb	$1, 2124930(%rip)       # 0x40d2e8 <__afl_debug>
  206666: 0f 84 25 01 00 00            	je	0x206791 <__afl_map_shm+0x511>
  20666c: 48 85 db                     	testq	%rbx, %rbx
  20666f: 74 72                        	je	0x2066e3 <__afl_map_shm+0x463>
  206671: 48 8d 3d d1 bd ff ff         	leaq	-16943(%rip), %rdi      # 0x202449 <_IO_stdin_used+0x6e9>
  206678: be 01 00 00 00               	movl	$1, %esi
  20667d: 31 c0                        	xorl	%eax, %eax
  20667f: e8 4c 46 00 00               	callq	0x20acd0 <open@plt>
  206684: 89 05 6e 6a 00 00            	movl	%eax, 27246(%rip)       # 0x20d0f8 <__afl_dummy_fd+0x4>
  20668a: 85 c0                        	testl	%eax, %eax
  20668c: 79 1a                        	jns	0x2066a8 <__afl_map_shm+0x428>
  20668e: 48 8d 3d 5f 6a 00 00         	leaq	27231(%rip), %rdi       # 0x20d0f4 <__afl_dummy_fd>
  206695: e8 96 47 00 00               	callq	0x20ae30 <pipe@plt>
  20669a: 85 c0                        	testl	%eax, %eax
  20669c: 79 0a                        	jns	0x2066a8 <__afl_map_shm+0x428>
  20669e: c7 05 50 6a 00 00 01 00 00 00	movl	$1, 27216(%rip)         # 0x20d0f8 <__afl_dummy_fd+0x4>
  2066a8: 48 89 df                     	movq	%rbx, %rdi
  2066ab: 31 f6                        	xorl	%esi, %esi
  2066ad: ba 0a 00 00 00               	movl	$10, %edx
  2066b2: e8 f9 44 00 00               	callq	0x20abb0 <strtol@plt>
  2066b7: 89 c7                        	movl	%eax, %edi
  2066b9: 31 f6                        	xorl	%esi, %esi
  2066bb: 31 d2                        	xorl	%edx, %edx
  2066bd: e8 5e 47 00 00               	callq	0x20ae20 <shmat@plt>
  2066c2: 48 8d 0d 47 6c 20 00         	leaq	2124871(%rip), %rcx     # 0x40d310 <__afl_cmp_map>
  2066c9: 48 89 01                     	movq	%rax, (%rcx)
  2066cc: 48 8d 0d 4d 6c 20 00         	leaq	2124877(%rip), %rcx     # 0x40d320 <__afl_cmp_map_backup>
  2066d3: 48 89 01                     	movq	%rax, (%rcx)
  2066d6: 48 ff c0                     	incq	%rax
  2066d9: 48 83 f8 01                  	cmpq	$1, %rax
  2066dd: 0f 86 b1 01 00 00            	jbe	0x206894 <__afl_map_shm+0x614>
  2066e3: 48 83 c4 08                  	addq	$8, %rsp
  2066e7: 5b                           	popq	%rbx
  2066e8: 41 5c                        	popq	%r12
  2066ea: 41 5d                        	popq	%r13
  2066ec: 41 5e                        	popq	%r14
  2066ee: 41 5f                        	popq	%r15
  2066f0: 5d                           	popq	%rbp
  2066f1: c3                           	retq
  2066f2: 48 85 c0                     	testq	%rax, %rax
  2066f5: 0f 85 4a fc ff ff            	jne	0x206345 <__afl_map_shm+0xc5>
  2066fb: 48 8b 05 8e 59 00 00         	movq	22926(%rip), %rax       # 0x20c090 <write+0x20c090>
  206702: 48 8b 38                     	movq	(%rax), %rdi
  206705: 48 8d 35 35 bc ff ff         	leaq	-17355(%rip), %rsi      # 0x202341 <_IO_stdin_used+0x5e1>
  20670c: 89 ea                        	movl	%ebp, %edx
  20670e: 31 c0                        	xorl	%eax, %eax
  206710: e8 6b 45 00 00               	callq	0x20ac80 <fprintf@plt>
  206715: e9 2b fc ff ff               	jmp	0x206345 <__afl_map_shm+0xc5>
  20671a: 4d 85 ed                     	testq	%r13, %r13
  20671d: 48 8b 0d 6c 59 00 00         	movq	22892(%rip), %rcx       # 0x20c090 <write+0x20c090>
  206724: 48 8b 39                     	movq	(%rcx), %rdi
  206727: 48 8d 15 ef bc ff ff         	leaq	-17169(%rip), %rdx      # 0x20241d <_IO_stdin_used+0x6bd>
  20672e: 49 0f 45 d5                  	cmovneq	%r13, %rdx
  206732: 4c 8b 0d a7 69 00 00         	movq	27047(%rip), %r9        # 0x20d0e0 <__afl_area_ptr_dummy>
  206739: 4c 8d 15 b8 6b 20 00         	leaq	2124728(%rip), %r10     # 0x40d2f8 <__afl_map_addr>
  206740: 41 8b 1f                     	movl	(%r15), %ebx
  206743: 48 8d 0d 8e 69 00 00         	leaq	27022(%rip), %rcx       # 0x20d0d8 <__afl_map_size>
  20674a: 8b 29                        	movl	(%rcx), %ebp
  20674c: 48 8d 35 b5 c0 ff ff         	leaq	-16203(%rip), %rsi      # 0x202808 <_IO_stdin_used+0xaa8>
  206753: 4c 8d 05 76 6b 00 00         	leaq	27510(%rip), %r8        # 0x20d2d0 <__afl_area_initial>
  20675a: 48 89 c1                     	movq	%rax, %rcx
  20675d: 31 c0                        	xorl	%eax, %eax
  20675f: 68 00 00 80 00               	pushq	$8388608                # imm = 0x800000
  206764: 68 00 00 80 00               	pushq	$8388608                # imm = 0x800000
  206769: 55                           	pushq	%rbp
  20676a: 53                           	pushq	%rbx
  20676b: 68 00 00 01 00               	pushq	$65536                  # imm = 0x10000
  206770: 41 ff 32                     	pushq	(%r10)
  206773: e8 08 45 00 00               	callq	0x20ac80 <fprintf@plt>
  206778: 48 83 c4 30                  	addq	$48, %rsp
  20677c: 48 8d 1d 95 6b 20 00         	leaq	2124693(%rip), %rbx     # 0x40d318 <__afl_selective_coverage>
  206783: 83 3b 00                     	cmpl	$0, (%rbx)
  206786: 0f 85 8f fe ff ff            	jne	0x20661b <__afl_map_shm+0x39b>
  20678c: e9 bf fe ff ff               	jmp	0x206650 <__afl_map_shm+0x3d0>
  206791: 48 8b 05 f8 58 00 00         	movq	22776(%rip), %rax       # 0x20c090 <write+0x20c090>
  206798: 48 8b 38                     	movq	(%rax), %rdi
  20679b: 48 85 db                     	testq	%rbx, %rbx
  20679e: 48 8d 15 78 bc ff ff         	leaq	-17288(%rip), %rdx      # 0x20241d <_IO_stdin_used+0x6bd>
  2067a5: 48 0f 45 d3                  	cmovneq	%rbx, %rdx
  2067a9: 48 8d 35 a3 b8 ff ff         	leaq	-18269(%rip), %rsi      # 0x202053 <_IO_stdin_used+0x2f3>
  2067b0: 31 c0                        	xorl	%eax, %eax
  2067b2: e8 c9 44 00 00               	callq	0x20ac80 <fprintf@plt>
  2067b7: 48 85 db                     	testq	%rbx, %rbx
  2067ba: 0f 85 b1 fe ff ff            	jne	0x206671 <__afl_map_shm+0x3f1>
  2067c0: e9 1e ff ff ff               	jmp	0x2066e3 <__afl_map_shm+0x463>
  2067c5: 4d 85 ed                     	testq	%r13, %r13
  2067c8: 48 8b 05 c1 58 00 00         	movq	22721(%rip), %rax       # 0x20c090 <write+0x20c090>
  2067cf: 48 8b 38                     	movq	(%rax), %rdi
  2067d2: 48 8d 15 44 bc ff ff         	leaq	-17340(%rip), %rdx      # 0x20241d <_IO_stdin_used+0x6bd>
  2067d9: 49 0f 45 d5                  	cmovneq	%r13, %rdx
  2067dd: 49 8b 0e                     	movq	(%r14), %rcx
  2067e0: 4c 8b 0d f9 68 00 00         	movq	26873(%rip), %r9        # 0x20d0e0 <__afl_area_ptr_dummy>
  2067e7: 4c 8d 15 0a 6b 20 00         	leaq	2124554(%rip), %r10     # 0x40d2f8 <__afl_map_addr>
  2067ee: 41 8b 1f                     	movl	(%r15), %ebx
  2067f1: 48 8d 05 e0 68 00 00         	leaq	26848(%rip), %rax       # 0x20d0d8 <__afl_map_size>
  2067f8: 8b 28                        	movl	(%rax), %ebp
  2067fa: 48 8d 35 fd c0 ff ff         	leaq	-16131(%rip), %rsi      # 0x2028fe <_IO_stdin_used+0xb9e>
  206801: 4c 8d 05 c8 6a 00 00         	leaq	27336(%rip), %r8        # 0x20d2d0 <__afl_area_initial>
  206808: 31 c0                        	xorl	%eax, %eax
  20680a: 68 00 00 80 00               	pushq	$8388608                # imm = 0x800000
  20680f: 68 00 00 80 00               	pushq	$8388608                # imm = 0x800000
  206814: 55                           	pushq	%rbp
  206815: 53                           	pushq	%rbx
  206816: 68 00 00 01 00               	pushq	$65536                  # imm = 0x10000
  20681b: 41 ff 32                     	pushq	(%r10)
  20681e: e8 5d 44 00 00               	callq	0x20ac80 <fprintf@plt>
  206823: 48 83 c4 30                  	addq	$48, %rsp
  206827: e9 d5 fb ff ff               	jmp	0x206401 <__afl_map_shm+0x181>
  20682c: 48 8b 05 5d 58 00 00         	movq	22621(%rip), %rax       # 0x20c090 <write+0x20c090>
  206833: 48 8b 08                     	movq	(%rax), %rcx
  206836: 48 8d 3d 82 c1 ff ff         	leaq	-15998(%rip), %rdi      # 0x2029bf <_IO_stdin_used+0xc5f>
  20683d: be 28 00 00 00               	movl	$40, %esi
  206842: ba 01 00 00 00               	movl	$1, %edx
  206847: e8 54 44 00 00               	callq	0x20aca0 <fwrite@plt>
  20684c: c7 03 00 00 00 00            	movl	$0, (%rbx)
  206852: e9 f9 fd ff ff               	jmp	0x206650 <__afl_map_shm+0x3d0>
  206857: 48 8b 05 32 58 00 00         	movq	22578(%rip), %rax       # 0x20c090 <write+0x20c090>
  20685e: 48 8b 38                     	movq	(%rax), %rdi
  206861: 48 8d 35 15 b5 ff ff         	leaq	-19179(%rip), %rsi      # 0x201d7d <_IO_stdin_used+0x1d>
  206868: 89 ea                        	movl	%ebp, %edx
  20686a: 31 c0                        	xorl	%eax, %eax
  20686c: e8 0f 44 00 00               	callq	0x20ac80 <fprintf@plt>
  206871: 4d 85 ed                     	testq	%r13, %r13
  206874: 0f 84 cb fa ff ff            	je	0x206345 <__afl_map_shm+0xc5>
  20687a: e9 e3 fc ff ff               	jmp	0x206562 <__afl_map_shm+0x2e2>
  20687f: 48 83 3b 00                  	cmpq	$0, (%rbx)
  206883: 75 41                        	jne	0x2068c6 <__afl_map_shm+0x646>
  206885: c7 44 24 04 8f 08 00 f8      	movl	$4160751759, 4(%rsp)    # imm = 0xF800088F
  20688d: 48 8d 74 24 04               	leaq	4(%rsp), %rsi
  206892: eb 3c                        	jmp	0x2068d0 <__afl_map_shm+0x650>
  206894: 48 8d 3d 47 b5 ff ff         	leaq	-19129(%rip), %rdi      # 0x201de2 <_IO_stdin_used+0x82>
  20689b: e8 c0 42 00 00               	callq	0x20ab60 <perror@plt>
  2068a0: bf 04 00 00 00               	movl	$4, %edi
  2068a5: eb 10                        	jmp	0x2068b7 <__afl_map_shm+0x637>
  2068a7: 48 8d 3d e0 b8 ff ff         	leaq	-18208(%rip), %rdi      # 0x20218e <_IO_stdin_used+0x42e>
  2068ae: 89 ee                        	movl	%ebp, %esi
  2068b0: eb 4f                        	jmp	0x206901 <__afl_map_shm+0x681>
  2068b2: bf 01 00 00 00               	movl	$1, %edi
  2068b7: e8 34 29 00 00               	callq	0x2091f0 <send_forkserver_error>
  2068bc: bf 01 00 00 00               	movl	$1, %edi
  2068c1: e8 1a 45 00 00               	callq	0x20ade0 <_exit@plt>
  2068c6: c7 04 24 8f 02 00 f8         	movl	$4160750223, (%rsp)     # imm = 0xF800028F
  2068cd: 48 89 e6                     	movq	%rsp, %rsi
  2068d0: ba 04 00 00 00               	movl	$4, %edx
  2068d5: bf c7 00 00 00               	movl	$199, %edi
  2068da: e8 a1 44 00 00               	callq	0x20ad80 <write@plt>
  2068df: 48 8d 3d 3b ba ff ff         	leaq	-17861(%rip), %rdi      # 0x202321 <_IO_stdin_used+0x5c1>
  2068e6: e8 75 42 00 00               	callq	0x20ab60 <perror@plt>
  2068eb: bf 01 00 00 00               	movl	$1, %edi
  2068f0: e8 eb 44 00 00               	callq	0x20ade0 <_exit@plt>
  2068f5: 48 8d 3d 92 b8 ff ff         	leaq	-18286(%rip), %rdi      # 0x20218e <_IO_stdin_used+0x42e>
  2068fc: be 00 00 01 00               	movl	$65536, %esi            # imm = 0x10000
  206901: 31 c0                        	xorl	%eax, %eax
  206903: e8 88 42 00 00               	callq	0x20ab90 <printf@plt>
  206908: bf ff ff ff ff               	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
  20690d: e8 fe 44 00 00               	callq	0x20ae10 <exit@plt>
  206912: 48 8b 05 77 57 00 00         	movq	22391(%rip), %rax       # 0x20c090 <write+0x20c090>
  206919: 48 8b 38                     	movq	(%rax), %rdi
  20691c: 48 8d 35 73 b9 ff ff         	leaq	-18061(%rip), %rsi      # 0x202296 <_IO_stdin_used+0x536>
  206923: 89 ea                        	movl	%ebp, %edx
  206925: 31 c0                        	xorl	%eax, %eax
  206927: e8 54 43 00 00               	callq	0x20ac80 <fprintf@plt>
  20692c: bf ff ff ff ff               	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
  206931: e8 da 44 00 00               	callq	0x20ae10 <exit@plt>
  206936: 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)

0000000000206940 <__afl_auto_second>:
  206940: 41 56                        	pushq	%r14
  206942: 53                           	pushq	%rbx
  206943: 50                           	pushq	%rax
  206944: 48 8d 05 a5 69 20 00         	leaq	2124197(%rip), %rax     # 0x40d2f0 <__afl_already_initialized_second>
  20694b: 83 38 00                     	cmpl	$0, (%rax)
  20694e: 74 08                        	je	0x206958 <__afl_auto_second+0x18>
  206950: 48 83 c4 08                  	addq	$8, %rsp
  206954: 5b                           	popq	%rbx
  206955: 41 5e                        	popq	%r14
  206957: c3                           	retq
  206958: c7 00 01 00 00 00            	movl	$1, (%rax)
  20695e: 48 8d 3d 64 bf ff ff         	leaq	-16540(%rip), %rdi      # 0x2028c9 <_IO_stdin_used+0xb69>
  206965: e8 d6 41 00 00               	callq	0x20ab40 <getenv@plt>
  20696a: 48 85 c0                     	testq	%rax, %rax
  20696d: 0f 85 9d 00 00 00            	jne	0x206a10 <__afl_auto_second+0xd0>
  206973: 48 8d 3d 68 be ff ff         	leaq	-16792(%rip), %rdi      # 0x2027e2 <_IO_stdin_used+0xa82>
  20697a: e8 c1 41 00 00               	callq	0x20ab40 <getenv@plt>
  20697f: 48 85 c0                     	testq	%rax, %rax
  206982: 75 cc                        	jne	0x206950 <__afl_auto_second+0x10>
  206984: 48 8d 1d 69 69 20 00         	leaq	2124137(%rip), %rbx     # 0x40d2f4 <__afl_final_loc>
  20698b: 83 3b 00                     	cmpl	$0, (%rbx)
  20698e: 74 c0                        	je	0x206950 <__afl_auto_second+0x10>
  206990: 4c 8d 35 31 67 00 00         	leaq	26417(%rip), %r14       # 0x20d0c8 <__afl_area_ptr>
  206997: 49 8b 3e                     	movq	(%r14), %rdi
  20699a: 48 85 ff                     	testq	%rdi, %rdi
  20699d: 74 11                        	je	0x2069b0 <__afl_auto_second+0x70>
  20699f: 48 8d 05 2a 69 00 00         	leaq	26922(%rip), %rax       # 0x20d2d0 <__afl_area_initial>
  2069a6: 48 39 c7                     	cmpq	%rax, %rdi
  2069a9: 74 05                        	je	0x2069b0 <__afl_auto_second+0x70>
  2069ab: e8 60 43 00 00               	callq	0x20ad10 <free@plt>
  2069b0: 48 8d 05 41 69 20 00         	leaq	2124097(%rip), %rax     # 0x40d2f8 <__afl_map_addr>
  2069b7: 48 8b 38                     	movq	(%rax), %rdi
  2069ba: 48 85 ff                     	testq	%rdi, %rdi
  2069bd: 74 2a                        	je	0x2069e9 <__afl_auto_second+0xa9>
  2069bf: 8b 33                        	movl	(%rbx), %esi
  2069c1: ba 03 00 00 00               	movl	$3, %edx
  2069c6: b9 21 00 10 00               	movl	$1048609, %ecx          # imm = 0x100021
  2069cb: 41 b8 ff ff ff ff            	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
  2069d1: 45 31 c9                     	xorl	%r9d, %r9d
  2069d4: e8 27 44 00 00               	callq	0x20ae00 <mmap@plt>
  2069d9: 48 8d 48 01                  	leaq	1(%rax), %rcx
  2069dd: 48 83 f9 02                  	cmpq	$2, %rcx
  2069e1: 0f 82 69 ff ff ff            	jb	0x206950 <__afl_auto_second+0x10>
  2069e7: eb 15                        	jmp	0x2069fe <__afl_auto_second+0xbe>
  2069e9: 8b 3b                        	movl	(%rbx), %edi
  2069eb: e8 d0 42 00 00               	callq	0x20acc0 <malloc@plt>
  2069f0: 48 8d 48 01                  	leaq	1(%rax), %rcx
  2069f4: 48 83 f9 02                  	cmpq	$2, %rcx
  2069f8: 0f 82 52 ff ff ff            	jb	0x206950 <__afl_auto_second+0x10>
  2069fe: 49 89 06                     	movq	%rax, (%r14)
  206a01: 48 89 05 e0 66 00 00         	movq	%rax, 26336(%rip)       # 0x20d0e8 <__afl_area_ptr_backup>
  206a08: 48 83 c4 08                  	addq	$8, %rsp
  206a0c: 5b                           	popq	%rbx
  206a0d: 41 5e                        	popq	%r14
  206a0f: c3                           	retq
  206a10: c6 05 d1 68 20 00 01         	movb	$1, 2123985(%rip)       # 0x40d2e8 <__afl_debug>
  206a17: 48 8b 05 72 56 00 00         	movq	22130(%rip), %rax       # 0x20c090 <write+0x20c090>
  206a1e: 48 8b 08                     	movq	(%rax), %rcx
  206a21: 48 8d 3d d1 b8 ff ff         	leaq	-18223(%rip), %rdi      # 0x2022f9 <_IO_stdin_used+0x599>
  206a28: be 15 00 00 00               	movl	$21, %esi
  206a2d: ba 01 00 00 00               	movl	$1, %edx
  206a32: e8 69 42 00 00               	callq	0x20aca0 <fwrite@plt>
  206a37: 48 8d 3d a4 bd ff ff         	leaq	-16988(%rip), %rdi      # 0x2027e2 <_IO_stdin_used+0xa82>
  206a3e: e8 fd 40 00 00               	callq	0x20ab40 <getenv@plt>
  206a43: 48 85 c0                     	testq	%rax, %rax
  206a46: 0f 84 38 ff ff ff            	je	0x206984 <__afl_auto_second+0x44>
  206a4c: e9 ff fe ff ff               	jmp	0x206950 <__afl_auto_second+0x10>
  206a51: 66 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%rax,%rax)

0000000000206a60 <__afl_auto_first>:
  206a60: 50                           	pushq	%rax
  206a61: 48 8d 05 98 68 20 00         	leaq	2123928(%rip), %rax     # 0x40d300 <__afl_already_initialized_first>
  206a68: 83 38 00                     	cmpl	$0, (%rax)
  206a6b: 74 02                        	je	0x206a6f <__afl_auto_first+0xf>
  206a6d: 58                           	popq	%rax
  206a6e: c3                           	retq
  206a6f: c7 00 01 00 00 00            	movl	$1, (%rax)
  206a75: 48 8d 3d 66 bd ff ff         	leaq	-17050(%rip), %rdi      # 0x2027e2 <_IO_stdin_used+0xa82>
  206a7c: e8 bf 40 00 00               	callq	0x20ab40 <getenv@plt>
  206a81: 48 85 c0                     	testq	%rax, %rax
  206a84: 75 e7                        	jne	0x206a6d <__afl_auto_first+0xd>
  206a86: bf 00 00 20 00               	movl	$2097152, %edi          # imm = 0x200000
  206a8b: e8 30 42 00 00               	callq	0x20acc0 <malloc@plt>
  206a90: 48 8d 48 01                  	leaq	1(%rax), %rcx
  206a94: 48 83 f9 02                  	cmpq	$2, %rcx
  206a98: 72 d3                        	jb	0x206a6d <__afl_auto_first+0xd>
  206a9a: 48 8d 0d 27 66 00 00         	leaq	26151(%rip), %rcx       # 0x20d0c8 <__afl_area_ptr>
  206aa1: 48 89 01                     	movq	%rax, (%rcx)
  206aa4: 48 89 05 3d 66 00 00         	movq	%rax, 26173(%rip)       # 0x20d0e8 <__afl_area_ptr_backup>
  206aab: 58                           	popq	%rax
  206aac: c3                           	retq
  206aad: 0f 1f 00                     	nopl	(%rax)

0000000000206ab0 <__sanitizer_cov_trace_pc_guard>:
  206ab0: 48 8d 05 11 66 00 00         	leaq	26129(%rip), %rax       # 0x20d0c8 <__afl_area_ptr>
  206ab7: 48 8b 00                     	movq	(%rax), %rax
  206aba: 8b 0f                        	movl	(%rdi), %ecx
  206abc: fe 04 08                     	incb	(%rax,%rcx)
  206abf: c3                           	retq

0000000000206ac0 <__sanitizer_cov_trace_pc_guard_init>:
  206ac0: 41 57                        	pushq	%r15
  206ac2: 41 56                        	pushq	%r14
  206ac4: 41 55                        	pushq	%r13
  206ac6: 41 54                        	pushq	%r12
  206ac8: 53                           	pushq	%rbx
  206ac9: 49 89 f6                     	movq	%rsi, %r14
  206acc: 48 89 fb                     	movq	%rdi, %rbx
  206acf: 80 3d 12 68 20 00 01         	cmpb	$1, 2123794(%rip)       # 0x40d2e8 <__afl_debug>
  206ad6: 0f 84 95 01 00 00            	je	0x206c71 <__sanitizer_cov_trace_pc_guard_init+0x1b1>
  206adc: 4c 39 f3                     	cmpq	%r14, %rbx
  206adf: 74 05                        	je	0x206ae6 <__sanitizer_cov_trace_pc_guard_init+0x26>
  206ae1: 83 3b 00                     	cmpl	$0, (%rbx)
  206ae4: 74 0a                        	je	0x206af0 <__sanitizer_cov_trace_pc_guard_init+0x30>
  206ae6: 5b                           	popq	%rbx
  206ae7: 41 5c                        	popq	%r12
  206ae9: 41 5d                        	popq	%r13
  206aeb: 41 5e                        	popq	%r14
  206aed: 41 5f                        	popq	%r15
  206aef: c3                           	retq
  206af0: 48 8d 05 0d 68 20 00         	leaq	2123789(%rip), %rax     # 0x40d304 <__afl_already_initialized_forkserver>
  206af7: 83 38 00                     	cmpl	$0, (%rax)
  206afa: 74 52                        	je	0x206b4e <__sanitizer_cov_trace_pc_guard_init+0x8e>
  206afc: 48 8d 3d 50 b9 ff ff         	leaq	-18096(%rip), %rdi      # 0x202453 <_IO_stdin_used+0x6f3>
  206b03: e8 38 40 00 00               	callq	0x20ab40 <getenv@plt>
  206b08: 48 85 c0                     	testq	%rax, %rax
  206b0b: 0f 84 74 02 00 00            	je	0x206d85 <__sanitizer_cov_trace_pc_guard_init+0x2c5>
  206b11: 4c 39 f3                     	cmpq	%r14, %rbx
  206b14: 73 38                        	jae	0x206b4e <__sanitizer_cov_trace_pc_guard_init+0x8e>
  206b16: 8b 05 d4 65 00 00            	movl	26068(%rip), %eax       # 0x20d0f0 <__sanitizer_cov_trace_pc_guard_init.offset>
  206b1c: 48 8d 0d d1 67 20 00         	leaq	2123729(%rip), %rcx     # 0x40d2f4 <__afl_final_loc>
  206b23: eb 10                        	jmp	0x206b35 <__sanitizer_cov_trace_pc_guard_init+0x75>
  206b25: 66 66 2e 0f 1f 84 00 00 00 00 00     	nopw	%cs:(%rax,%rax)
  206b30: 4c 39 f3                     	cmpq	%r14, %rbx
  206b33: 73 13                        	jae	0x206b48 <__sanitizer_cov_trace_pc_guard_init+0x88>
  206b35: 89 03                        	movl	%eax, (%rbx)
  206b37: 48 83 c3 04                  	addq	$4, %rbx
  206b3b: ff c0                        	incl	%eax
  206b3d: 3b 01                        	cmpl	(%rcx), %eax
  206b3f: 72 ef                        	jb	0x206b30 <__sanitizer_cov_trace_pc_guard_init+0x70>
  206b41: b8 04 00 00 00               	movl	$4, %eax
  206b46: eb e8                        	jmp	0x206b30 <__sanitizer_cov_trace_pc_guard_init+0x70>
  206b48: 89 05 a2 65 00 00            	movl	%eax, 26018(%rip)       # 0x20d0f0 <__sanitizer_cov_trace_pc_guard_init.offset>
  206b4e: 48 8d 3d 7e bd ff ff         	leaq	-17026(%rip), %rdi      # 0x2028d3 <_IO_stdin_used+0xb73>
  206b55: e8 e6 3f 00 00               	callq	0x20ab40 <getenv@plt>
  206b5a: 48 85 c0                     	testq	%rax, %rax
  206b5d: 74 34                        	je	0x206b93 <__sanitizer_cov_trace_pc_guard_init+0xd3>
  206b5f: 48 89 c7                     	movq	%rax, %rdi
  206b62: 31 f6                        	xorl	%esi, %esi
  206b64: ba 0a 00 00 00               	movl	$10, %edx
  206b69: e8 42 40 00 00               	callq	0x20abb0 <strtol@plt>
  206b6e: 89 c1                        	movl	%eax, %ecx
  206b70: 83 c1 9b                     	addl	$-101, %ecx
  206b73: 83 f9 9b                     	cmpl	$-101, %ecx
  206b76: 77 20                        	ja	0x206b98 <__sanitizer_cov_trace_pc_guard_init+0xd8>
  206b78: 48 8b 05 11 55 00 00         	movq	21777(%rip), %rax       # 0x20c090 <write+0x20c090>
  206b7f: 48 8b 08                     	movq	(%rax), %rcx
  206b82: 48 8d 3d 72 b4 ff ff         	leaq	-19342(%rip), %rdi      # 0x201ffb <_IO_stdin_used+0x29b>
  206b89: be 33 00 00 00               	movl	$51, %esi
  206b8e: e9 08 02 00 00               	jmp	0x206d9b <__sanitizer_cov_trace_pc_guard_init+0x2db>
  206b93: b8 64 00 00 00               	movl	$100, %eax
  206b98: 4c 8d 3d 55 67 20 00         	leaq	2123605(%rip), %r15     # 0x40d2f4 <__afl_final_loc>
  206b9f: 41 8b 0f                     	movl	(%r15), %ecx
  206ba2: ff c1                        	incl	%ecx
  206ba4: 41 89 0f                     	movl	%ecx, (%r15)
  206ba7: 89 0b                        	movl	%ecx, (%rbx)
  206ba9: 48 83 c3 04                  	addq	$4, %rbx
  206bad: 4c 39 f3                     	cmpq	%r14, %rbx
  206bb0: 73 60                        	jae	0x206c12 <__sanitizer_cov_trace_pc_guard_init+0x152>
  206bb2: 41 89 c4                     	movl	%eax, %r12d
  206bb5: 49 bd 0b d7 a3 70 3d 0a d7 a3	movabsq	$-6640827866535438581, %r13 # imm = 0xA3D70A3D70A3D70B
  206bbf: eb 1a                        	jmp	0x206bdb <__sanitizer_cov_trace_pc_guard_init+0x11b>
  206bc1: 66 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%rax,%rax)
  206bd0: 89 03                        	movl	%eax, (%rbx)
  206bd2: 48 83 c3 04                  	addq	$4, %rbx
  206bd6: 4c 39 f3                     	cmpq	%r14, %rbx
  206bd9: 73 37                        	jae	0x206c12 <__sanitizer_cov_trace_pc_guard_init+0x152>
  206bdb: e8 60 42 00 00               	callq	0x20ae40 <random@plt>
  206be0: 48 89 c1                     	movq	%rax, %rcx
  206be3: 49 f7 ed                     	imulq	%r13
  206be6: 48 01 ca                     	addq	%rcx, %rdx
  206be9: 48 89 d0                     	movq	%rdx, %rax
  206bec: 48 c1 e8 3f                  	shrq	$63, %rax
  206bf0: 48 c1 fa 06                  	sarq	$6, %rdx
  206bf4: 48 01 c2                     	addq	%rax, %rdx
  206bf7: 48 6b c2 64                  	imulq	$100, %rdx, %rax
  206bfb: 48 29 c1                     	subq	%rax, %rcx
  206bfe: b8 04 00 00 00               	movl	$4, %eax
  206c03: 4c 39 e1                     	cmpq	%r12, %rcx
  206c06: 7d c8                        	jge	0x206bd0 <__sanitizer_cov_trace_pc_guard_init+0x110>
  206c08: 41 8b 07                     	movl	(%r15), %eax
  206c0b: ff c0                        	incl	%eax
  206c0d: 41 89 07                     	movl	%eax, (%r15)
  206c10: eb be                        	jmp	0x206bd0 <__sanitizer_cov_trace_pc_guard_init+0x110>
  206c12: 80 3d cf 66 20 00 01         	cmpb	$1, 2123471(%rip)       # 0x40d2e8 <__afl_debug>
  206c19: 0f 84 13 01 00 00            	je	0x206d32 <__sanitizer_cov_trace_pc_guard_init+0x272>
  206c1f: 48 8d 1d e2 66 20 00         	leaq	2123490(%rip), %rbx     # 0x40d308 <__afl_already_initialized_shm>
  206c26: 83 3b 00                     	cmpl	$0, (%rbx)
  206c29: 0f 84 b7 fe ff ff            	je	0x206ae6 <__sanitizer_cov_trace_pc_guard_init+0x26>
  206c2f: 41 8b 17                     	movl	(%r15), %edx
  206c32: 4c 8d 35 9f 64 00 00         	leaq	25759(%rip), %r14       # 0x20d0d8 <__afl_map_size>
  206c39: 41 2b 16                     	subl	(%r14), %edx
  206c3c: 0f 86 a4 fe ff ff            	jbe	0x206ae6 <__sanitizer_cov_trace_pc_guard_init+0x26>
  206c42: 80 3d 9f 66 20 00 01         	cmpb	$1, 2123423(%rip)       # 0x40d2e8 <__afl_debug>
  206c49: 0f 84 13 01 00 00            	je	0x206d62 <__sanitizer_cov_trace_pc_guard_init+0x2a2>
  206c4f: 48 8d 3d 98 b3 ff ff         	leaq	-19560(%rip), %rdi      # 0x201fee <_IO_stdin_used+0x28e>
  206c56: e8 e5 3e 00 00               	callq	0x20ab40 <getenv@plt>
  206c5b: 4c 8d 3d 66 64 00 00         	leaq	25702(%rip), %r15       # 0x20d0c8 <__afl_area_ptr>
  206c62: 49 8b 3f                     	movq	(%r15), %rdi
  206c65: 48 85 c0                     	testq	%rax, %rax
  206c68: 74 47                        	je	0x206cb1 <__sanitizer_cov_trace_pc_guard_init+0x1f1>
  206c6a: e8 e1 41 00 00               	callq	0x20ae50 <shmdt@plt>
  206c6f: eb 6e                        	jmp	0x206cdf <__sanitizer_cov_trace_pc_guard_init+0x21f>
  206c71: 48 8b 05 18 54 00 00         	movq	21528(%rip), %rax       # 0x20c090 <write+0x20c090>
  206c78: 48 8b 38                     	movq	(%rax), %rdi
  206c7b: 4d 89 f0                     	movq	%r14, %r8
  206c7e: 49 29 d8                     	subq	%rbx, %r8
  206c81: 49 c1 f8 02                  	sarq	$2, %r8
  206c85: 48 8d 05 78 66 20 00         	leaq	2123384(%rip), %rax     # 0x40d304 <__afl_already_initialized_forkserver>
  206c8c: 44 8b 08                     	movl	(%rax), %r9d
  206c8f: 48 8d 35 9e b5 ff ff         	leaq	-19042(%rip), %rsi      # 0x202234 <_IO_stdin_used+0x4d4>
  206c96: 48 89 da                     	movq	%rbx, %rdx
  206c99: 4c 89 f1                     	movq	%r14, %rcx
  206c9c: 31 c0                        	xorl	%eax, %eax
  206c9e: e8 dd 3f 00 00               	callq	0x20ac80 <fprintf@plt>
  206ca3: 4c 39 f3                     	cmpq	%r14, %rbx
  206ca6: 0f 85 35 fe ff ff            	jne	0x206ae1 <__sanitizer_cov_trace_pc_guard_init+0x21>
  206cac: e9 35 fe ff ff               	jmp	0x206ae6 <__sanitizer_cov_trace_pc_guard_init+0x26>
  206cb1: 48 85 ff                     	testq	%rdi, %rdi
  206cb4: 0f 95 c0                     	setne	%al
  206cb7: 48 8d 0d 12 66 00 00         	leaq	26130(%rip), %rcx       # 0x20d2d0 <__afl_area_initial>
  206cbe: 48 39 cf                     	cmpq	%rcx, %rdi
  206cc1: 0f 95 c1                     	setne	%cl
  206cc4: 84 c8                        	testb	%cl, %al
  206cc6: 75 17                        	jne	0x206cdf <__sanitizer_cov_trace_pc_guard_init+0x21f>
  206cc8: 48 8d 05 29 66 20 00         	leaq	2123305(%rip), %rax     # 0x40d2f8 <__afl_map_addr>
  206ccf: 48 8b 38                     	movq	(%rax), %rdi
  206cd2: 48 85 ff                     	testq	%rdi, %rdi
  206cd5: 74 08                        	je	0x206cdf <__sanitizer_cov_trace_pc_guard_init+0x21f>
  206cd7: 41 8b 36                     	movl	(%r14), %esi
  206cda: e8 11 41 00 00               	callq	0x20adf0 <munmap@plt>
  206cdf: 48 8b 05 fa 63 00 00         	movq	25594(%rip), %rax       # 0x20d0e0 <__afl_area_ptr_dummy>
  206ce6: 49 89 07                     	movq	%rax, (%r15)
  206ce9: 48 8d 3d f8 bc ff ff         	leaq	-17160(%rip), %rdi      # 0x2029e8 <_IO_stdin_used+0xc88>
  206cf0: e8 4b 3e 00 00               	callq	0x20ab40 <getenv@plt>
  206cf5: 48 85 c0                     	testq	%rax, %rax
  206cf8: 74 24                        	je	0x206d1e <__sanitizer_cov_trace_pc_guard_init+0x25e>
  206cfa: 4c 8d 35 0f 66 20 00         	leaq	2123279(%rip), %r14     # 0x40d310 <__afl_cmp_map>
  206d01: 49 8b 3e                     	movq	(%r14), %rdi
  206d04: e8 47 41 00 00               	callq	0x20ae50 <shmdt@plt>
  206d09: 49 c7 06 00 00 00 00         	movq	$0, (%r14)
  206d10: 48 8d 05 09 66 20 00         	leaq	2123273(%rip), %rax     # 0x40d320 <__afl_cmp_map_backup>
  206d17: 48 c7 00 00 00 00 00         	movq	$0, (%rax)
  206d1e: c7 03 00 00 00 00            	movl	$0, (%rbx)
  206d24: 5b                           	popq	%rbx
  206d25: 41 5c                        	popq	%r12
  206d27: 41 5d                        	popq	%r13
  206d29: 41 5e                        	popq	%r14
  206d2b: 41 5f                        	popq	%r15
  206d2d: e9 4e f5 ff ff               	jmp	0x206280 <__afl_map_shm>
  206d32: 48 8b 05 57 53 00 00         	movq	21335(%rip), %rax       # 0x20c090 <write+0x20c090>
  206d39: 48 8b 38                     	movq	(%rax), %rdi
  206d3c: 41 8b 17                     	movl	(%r15), %edx
  206d3f: 48 8d 35 2c bd ff ff         	leaq	-17108(%rip), %rsi      # 0x202a72 <_IO_stdin_used+0xd12>
  206d46: 31 c0                        	xorl	%eax, %eax
  206d48: e8 33 3f 00 00               	callq	0x20ac80 <fprintf@plt>
  206d4d: 48 8d 1d b4 65 20 00         	leaq	2123188(%rip), %rbx     # 0x40d308 <__afl_already_initialized_shm>
  206d54: 83 3b 00                     	cmpl	$0, (%rbx)
  206d57: 0f 85 d2 fe ff ff            	jne	0x206c2f <__sanitizer_cov_trace_pc_guard_init+0x16f>
  206d5d: e9 84 fd ff ff               	jmp	0x206ae6 <__sanitizer_cov_trace_pc_guard_init+0x26>
  206d62: 48 8b 05 27 53 00 00         	movq	21287(%rip), %rax       # 0x20c090 <write+0x20c090>
  206d69: 48 8b 38                     	movq	(%rax), %rdi
  206d6c: 48 8d 35 90 b4 ff ff         	leaq	-19312(%rip), %rsi      # 0x202203 <_IO_stdin_used+0x4a3>
  206d73: 31 c0                        	xorl	%eax, %eax
  206d75: e8 06 3f 00 00               	callq	0x20ac80 <fprintf@plt>
  206d7a: 83 3b 00                     	cmpl	$0, (%rbx)
  206d7d: 0f 85 cc fe ff ff            	jne	0x206c4f <__sanitizer_cov_trace_pc_guard_init+0x18f>
  206d83: eb 9f                        	jmp	0x206d24 <__sanitizer_cov_trace_pc_guard_init+0x264>
  206d85: 48 8b 05 04 53 00 00         	movq	21252(%rip), %rax       # 0x20c090 <write+0x20c090>
  206d8c: 48 8b 08                     	movq	(%rax), %rcx
  206d8f: 48 8d 3d a9 b0 ff ff         	leaq	-20311(%rip), %rdi      # 0x201e3f <_IO_stdin_used+0xdf>
  206d96: be ed 00 00 00               	movl	$237, %esi
  206d9b: ba 01 00 00 00               	movl	$1, %edx
  206da0: e8 fb 3e 00 00               	callq	0x20aca0 <fwrite@plt>
  206da5: e8 c6 3d 00 00               	callq	0x20ab70 <abort@plt>
  206daa: 66 0f 1f 44 00 00            	nopw	(%rax,%rax)

0000000000206db0 <__cmplog_ins_hook1>:
  206db0: 53                           	pushq	%rbx
  206db1: 40 38 f7                     	cmpb	%sil, %dil
  206db4: 0f 84 27 01 00 00            	je	0x206ee1 <__cmplog_ins_hook1+0x131>
  206dba: 4c 8d 05 4f 65 20 00         	leaq	2123087(%rip), %r8      # 0x40d310 <__afl_cmp_map>
  206dc1: 4d 8b 08                     	movq	(%r8), %r9
  206dc4: 4d 85 c9                     	testq	%r9, %r9
  206dc7: 0f 84 14 01 00 00            	je	0x206ee1 <__cmplog_ins_hook1+0x131>
  206dcd: 49 ba 00 00 00 00 00 00 20 00	movabsq	$9007199254740992, %r10 # imm = 0x20000000000000
  206dd7: 48 8b 44 24 08               	movq	8(%rsp), %rax
  206ddc: 48 c1 c0 20                  	rolq	$32, %rax
  206de0: 48 b9 a2 d5 ec c5 74 b1 3a c7	movabsq	$-4090762196417718878, %rcx # imm = 0xC73AB174C5ECD5A2
  206dea: 48 31 c1                     	xorq	%rax, %rcx
  206ded: 49 89 cb                     	movq	%rcx, %r11
  206df0: 49 c1 c3 18                  	rolq	$24, %r11
  206df4: 49 31 cb                     	xorq	%rcx, %r11
  206df7: 48 c1 c1 31                  	rolq	$49, %rcx
  206dfb: 49 31 cb                     	xorq	%rcx, %r11
  206dfe: 48 b9 25 df 98 1e 65 1c b2 9f	movabsq	$-6939452855193903323, %rcx # imm = 0x9FB21C651E98DF25
  206e08: 4c 0f af d9                  	imulq	%rcx, %r11
  206e0c: 4c 89 d8                     	movq	%r11, %rax
  206e0f: 48 c1 e8 23                  	shrq	$35, %rax
  206e13: 48 83 c0 08                  	addq	$8, %rax
  206e17: 4c 31 d8                     	xorq	%r11, %rax
  206e1a: 48 0f af c1                  	imulq	%rcx, %rax
  206e1e: 48 89 c1                     	movq	%rax, %rcx
  206e21: 48 c1 e9 1c                  	shrq	$28, %rcx
  206e25: 31 c1                        	xorl	%eax, %ecx
  206e27: 44 0f b7 d9                  	movzwl	%cx, %r11d
  206e2b: 4b 8b 1c d9                  	movq	(%r9,%r11,8), %rbx
  206e2f: 48 b9 00 00 00 00 00 00 60 00	movabsq	$27021597764222976, %rcx # imm = 0x60000000000000
  206e39: 48 21 d9                     	andq	%rbx, %rcx
  206e3c: 4c 39 d1                     	cmpq	%r10, %rcx
  206e3f: 75 1e                        	jne	0x206e5f <__cmplog_ins_hook1+0xaf>
  206e41: 8d 4b 01                     	leal	1(%rbx), %ecx
  206e44: 81 e1 ff ff ff 00            	andl	$16777215, %ecx         # imm = 0xFFFFFF
  206e4a: 48 89 d8                     	movq	%rbx, %rax
  206e4d: 48 25 00 00 00 ff            	andq	$-16777216, %rax        # imm = 0xFF000000
  206e53: 48 09 c8                     	orq	%rcx, %rax
  206e56: 4b 89 04 d9                  	movq	%rax, (%r9,%r11,8)
  206e5a: 83 e3 1f                     	andl	$31, %ebx
  206e5d: eb 3d                        	jmp	0x206e9c <__cmplog_ins_hook1+0xec>
  206e5f: 48 b9 ff ff ff ff ff ff 9f ff	movabsq	$-27021597764222977, %rcx # imm = 0xFF9FFFFFFFFFFFFF
  206e69: 48 21 cb                     	andq	%rcx, %rbx
  206e6c: 4c 09 d3                     	orq	%r10, %rbx
  206e6f: 4b 89 1c d9                  	movq	%rbx, (%r9,%r11,8)
  206e73: 49 8b 00                     	movq	(%r8), %rax
  206e76: 48 c7 c1 00 00 00 ff         	movq	$-16777216, %rcx        # imm = 0xFF000000
  206e7d: 4a 23 0c d8                  	andq	(%rax,%r11,8), %rcx
  206e81: 48 83 c9 01                  	orq	$1, %rcx
  206e85: 4a 89 0c d8                  	movq	%rcx, (%rax,%r11,8)
  206e89: 49 8b 00                     	movq	(%r8), %rax
  206e8c: 48 b9 ff ff ff ff ff ff e0 ff	movabsq	$-8725724278030337, %rcx # imm = 0xFFE0FFFFFFFFFFFF
  206e96: 4a 21 0c d8                  	andq	%rcx, (%rax,%r11,8)
  206e9a: 31 db                        	xorl	%ebx, %ebx
  206e9c: 49 8b 00                     	movq	(%r8), %rax
  206e9f: 80 e2 0f                     	andb	$15, %dl
  206ea2: 0f b6 ca                     	movzbl	%dl, %ecx
  206ea5: 48 c1 e1 37                  	shlq	$55, %rcx
  206ea9: 48 ba ff ff ff ff ff ff 7f f8	movabsq	$-540431955284459521, %rdx # imm = 0xF87FFFFFFFFFFFFF
  206eb3: 4a 23 14 d8                  	andq	(%rax,%r11,8), %rdx
  206eb7: 48 09 ca                     	orq	%rcx, %rdx
  206eba: 4a 89 14 d8                  	movq	%rdx, (%rax,%r11,8)
  206ebe: 40 0f b6 c7                  	movzbl	%dil, %eax
  206ec2: 49 c1 e3 0a                  	shlq	$10, %r11
  206ec6: 4d 03 18                     	addq	(%r8), %r11
  206ec9: 48 c1 e3 05                  	shlq	$5, %rbx
  206ecd: 4a 89 84 1b 00 00 08 00      	movq	%rax, 524288(%rbx,%r11)
  206ed5: 40 0f b6 c6                  	movzbl	%sil, %eax
  206ed9: 4a 89 84 1b 08 00 08 00      	movq	%rax, 524296(%rbx,%r11)
  206ee1: 5b                           	popq	%rbx
  206ee2: c3                           	retq
  206ee3: 66 66 66 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

0000000000206ef0 <__cmplog_ins_hook2>:
  206ef0: 66 39 f7                     	cmpw	%si, %di
  206ef3: 0f 84 5e 01 00 00            	je	0x207057 <__cmplog_ins_hook2+0x167>
  206ef9: 4c 8d 05 10 64 20 00         	leaq	2122768(%rip), %r8      # 0x40d310 <__afl_cmp_map>
  206f00: 4d 8b 08                     	movq	(%r8), %r9
  206f03: 4d 85 c9                     	testq	%r9, %r9
  206f06: 0f 84 4b 01 00 00            	je	0x207057 <__cmplog_ins_hook2+0x167>
  206f0c: 49 ba 00 00 00 00 00 00 20 00	movabsq	$9007199254740992, %r10 # imm = 0x20000000000000
  206f16: 48 8b 04 24                  	movq	(%rsp), %rax
  206f1a: 48 c1 c0 20                  	rolq	$32, %rax
  206f1e: 48 b9 a2 d5 ec c5 74 b1 3a c7	movabsq	$-4090762196417718878, %rcx # imm = 0xC73AB174C5ECD5A2
  206f28: 48 31 c1                     	xorq	%rax, %rcx
  206f2b: 49 89 cb                     	movq	%rcx, %r11
  206f2e: 49 c1 c3 18                  	rolq	$24, %r11
  206f32: 49 31 cb                     	xorq	%rcx, %r11
  206f35: 48 c1 c1 31                  	rolq	$49, %rcx
  206f39: 49 31 cb                     	xorq	%rcx, %r11
  206f3c: 48 b9 25 df 98 1e 65 1c b2 9f	movabsq	$-6939452855193903323, %rcx # imm = 0x9FB21C651E98DF25
  206f46: 4c 0f af d9                  	imulq	%rcx, %r11
  206f4a: 4c 89 d8                     	movq	%r11, %rax
  206f4d: 48 c1 e8 23                  	shrq	$35, %rax
  206f51: 48 83 c0 08                  	addq	$8, %rax
  206f55: 4c 31 d8                     	xorq	%r11, %rax
  206f58: 48 0f af c1                  	imulq	%rcx, %rax
  206f5c: 48 89 c1                     	movq	%rax, %rcx
  206f5f: 48 c1 e9 1c                  	shrq	$28, %rcx
  206f63: 31 c1                        	xorl	%eax, %ecx
  206f65: 44 0f b7 d9                  	movzwl	%cx, %r11d
  206f69: 4b 8b 04 d9                  	movq	(%r9,%r11,8), %rax
  206f6d: 48 b9 00 00 00 00 00 00 60 00	movabsq	$27021597764222976, %rcx # imm = 0x60000000000000
  206f77: 48 21 c1                     	andq	%rax, %rcx
  206f7a: 4c 39 d1                     	cmpq	%r10, %rcx
  206f7d: 75 3c                        	jne	0x206fbb <__cmplog_ins_hook2+0xcb>
  206f7f: 41 89 c2                     	movl	%eax, %r10d
  206f82: 41 81 e2 ff ff ff 00         	andl	$16777215, %r10d        # imm = 0xFFFFFF
  206f89: 8d 48 01                     	leal	1(%rax), %ecx
  206f8c: 81 e1 ff ff ff 00            	andl	$16777215, %ecx         # imm = 0xFFFFFF
  206f92: 48 25 00 00 00 ff            	andq	$-16777216, %rax        # imm = 0xFF000000
  206f98: 48 09 c8                     	orq	%rcx, %rax
  206f9b: 4b 89 04 d9                  	movq	%rax, (%r9,%r11,8)
  206f9f: 4d 8b 08                     	movq	(%r8), %r9
  206fa2: 4b 8b 04 d9                  	movq	(%r9,%r11,8), %rax
  206fa6: 48 b9 00 00 00 00 00 00 1f 00	movabsq	$8725724278030336, %rcx # imm = 0x1F000000000000
  206fb0: 48 85 c8                     	testq	%rcx, %rax
  206fb3: 75 5b                        	jne	0x207010 <__cmplog_ins_hook2+0x120>
  206fb5: 4f 8d 0c d9                  	leaq	(%r9,%r11,8), %r9
  206fb9: eb 38                        	jmp	0x206ff3 <__cmplog_ins_hook2+0x103>
  206fbb: 48 b9 ff ff ff ff ff ff 9f ff	movabsq	$-27021597764222977, %rcx # imm = 0xFF9FFFFFFFFFFFFF
  206fc5: 48 21 c8                     	andq	%rcx, %rax
  206fc8: 4c 09 d0                     	orq	%r10, %rax
  206fcb: 4b 89 04 d9                  	movq	%rax, (%r9,%r11,8)
  206fcf: 49 8b 00                     	movq	(%r8), %rax
  206fd2: 48 c7 c1 00 00 00 ff         	movq	$-16777216, %rcx        # imm = 0xFF000000
  206fd9: 4a 23 0c d8                  	andq	(%rax,%r11,8), %rcx
  206fdd: 48 83 c9 01                  	orq	$1, %rcx
  206fe1: 4a 89 0c d8                  	movq	%rcx, (%rax,%r11,8)
  206fe5: 49 8b 00                     	movq	(%r8), %rax
  206fe8: 4e 8d 0c d8                  	leaq	(%rax,%r11,8), %r9
  206fec: 4a 8b 04 d8                  	movq	(%rax,%r11,8), %rax
  206ff0: 45 31 d2                     	xorl	%r10d, %r10d
  206ff3: 48 b9 ff ff ff ff ff ff e0 ff	movabsq	$-8725724278030337, %rcx # imm = 0xFFE0FFFFFFFFFFFF
  206ffd: 48 21 c1                     	andq	%rax, %rcx
  207000: 48 b8 00 00 00 00 00 00 01 00	movabsq	$281474976710656, %rax  # imm = 0x1000000000000
  20700a: 48 09 c8                     	orq	%rcx, %rax
  20700d: 49 89 01                     	movq	%rax, (%r9)
  207010: 49 8b 00                     	movq	(%r8), %rax
  207013: 80 e2 0f                     	andb	$15, %dl
  207016: 0f b6 ca                     	movzbl	%dl, %ecx
  207019: 48 ba ff ff ff ff ff ff 7f f8	movabsq	$-540431955284459521, %rdx # imm = 0xF87FFFFFFFFFFFFF
  207023: 4a 23 14 d8                  	andq	(%rax,%r11,8), %rdx
  207027: 48 c1 e1 37                  	shlq	$55, %rcx
  20702b: 48 09 ca                     	orq	%rcx, %rdx
  20702e: 4a 89 14 d8                  	movq	%rdx, (%rax,%r11,8)
  207032: 41 83 e2 1f                  	andl	$31, %r10d
  207036: 0f b7 c7                     	movzwl	%di, %eax
  207039: 49 c1 e3 0a                  	shlq	$10, %r11
  20703d: 4d 03 18                     	addq	(%r8), %r11
  207040: 49 c1 e2 05                  	shlq	$5, %r10
  207044: 4b 89 84 1a 00 00 08 00      	movq	%rax, 524288(%r10,%r11)
  20704c: 0f b7 c6                     	movzwl	%si, %eax
  20704f: 4b 89 84 1a 08 00 08 00      	movq	%rax, 524296(%r10,%r11)
  207057: c3                           	retq
  207058: 0f 1f 84 00 00 00 00 00      	nopl	(%rax,%rax)

0000000000207060 <__cmplog_ins_hook4>:
  207060: 53                           	pushq	%rbx
  207061: 39 f7                        	cmpl	%esi, %edi
  207063: 0f 84 5f 01 00 00            	je	0x2071c8 <__cmplog_ins_hook4+0x168>
  207069: 4c 8d 0d a0 62 20 00         	leaq	2122400(%rip), %r9      # 0x40d310 <__afl_cmp_map>
  207070: 4d 8b 11                     	movq	(%r9), %r10
  207073: 4d 85 d2                     	testq	%r10, %r10
  207076: 0f 84 4c 01 00 00            	je	0x2071c8 <__cmplog_ins_hook4+0x168>
  20707c: 49 bb 00 00 00 00 00 00 20 00	movabsq	$9007199254740992, %r11 # imm = 0x20000000000000
  207086: 49 b8 00 00 00 00 00 00 03 00	movabsq	$844424930131968, %r8   # imm = 0x3000000000000
  207090: 48 8b 44 24 08               	movq	8(%rsp), %rax
  207095: 48 c1 c0 20                  	rolq	$32, %rax
  207099: 48 b9 a2 d5 ec c5 74 b1 3a c7	movabsq	$-4090762196417718878, %rcx # imm = 0xC73AB174C5ECD5A2
  2070a3: 48 31 c1                     	xorq	%rax, %rcx
  2070a6: 48 89 c8                     	movq	%rcx, %rax
  2070a9: 48 c1 c0 18                  	rolq	$24, %rax
  2070ad: 48 31 c8                     	xorq	%rcx, %rax
  2070b0: 48 c1 c1 31                  	rolq	$49, %rcx
  2070b4: 48 31 c8                     	xorq	%rcx, %rax
  2070b7: 48 b9 25 df 98 1e 65 1c b2 9f	movabsq	$-6939452855193903323, %rcx # imm = 0x9FB21C651E98DF25
  2070c1: 48 0f af c1                  	imulq	%rcx, %rax
  2070c5: 48 89 c3                     	movq	%rax, %rbx
  2070c8: 48 c1 eb 23                  	shrq	$35, %rbx
  2070cc: 48 83 c3 08                  	addq	$8, %rbx
  2070d0: 48 31 c3                     	xorq	%rax, %rbx
  2070d3: 48 0f af d9                  	imulq	%rcx, %rbx
  2070d7: 48 89 d8                     	movq	%rbx, %rax
  2070da: 48 c1 e8 1c                  	shrq	$28, %rax
  2070de: 31 d8                        	xorl	%ebx, %eax
  2070e0: 0f b7 c8                     	movzwl	%ax, %ecx
  2070e3: 49 8b 04 ca                  	movq	(%r10,%rcx,8), %rax
  2070e7: 48 bb 00 00 00 00 00 00 60 00	movabsq	$27021597764222976, %rbx # imm = 0x60000000000000
  2070f1: 48 21 c3                     	andq	%rax, %rbx
  2070f4: 4c 39 db                     	cmpq	%r11, %rbx
  2070f7: 75 3f                        	jne	0x207138 <__cmplog_ins_hook4+0xd8>
  2070f9: 41 89 c3                     	movl	%eax, %r11d
  2070fc: 41 81 e3 ff ff ff 00         	andl	$16777215, %r11d        # imm = 0xFFFFFF
  207103: 8d 58 01                     	leal	1(%rax), %ebx
  207106: 81 e3 ff ff ff 00            	andl	$16777215, %ebx         # imm = 0xFFFFFF
  20710c: 48 25 00 00 00 ff            	andq	$-16777216, %rax        # imm = 0xFF000000
  207112: 48 09 d8                     	orq	%rbx, %rax
  207115: 49 89 04 ca                  	movq	%rax, (%r10,%rcx,8)
  207119: 4d 8b 11                     	movq	(%r9), %r10
  20711c: 49 8b 04 ca                  	movq	(%r10,%rcx,8), %rax
  207120: 48 bb 00 00 00 00 00 00 1f 00	movabsq	$8725724278030336, %rbx # imm = 0x1F000000000000
  20712a: 48 21 c3                     	andq	%rax, %rbx
  20712d: 4c 39 c3                     	cmpq	%r8, %rbx
  207130: 73 51                        	jae	0x207183 <__cmplog_ins_hook4+0x123>
  207132: 4d 8d 14 ca                  	leaq	(%r10,%rcx,8), %r10
  207136: eb 38                        	jmp	0x207170 <__cmplog_ins_hook4+0x110>
  207138: 48 bb ff ff ff ff ff ff 9f ff	movabsq	$-27021597764222977, %rbx # imm = 0xFF9FFFFFFFFFFFFF
  207142: 48 21 d8                     	andq	%rbx, %rax
  207145: 4c 09 d8                     	orq	%r11, %rax
  207148: 49 89 04 ca                  	movq	%rax, (%r10,%rcx,8)
  20714c: 49 8b 01                     	movq	(%r9), %rax
  20714f: 48 c7 c3 00 00 00 ff         	movq	$-16777216, %rbx        # imm = 0xFF000000
  207156: 48 23 1c c8                  	andq	(%rax,%rcx,8), %rbx
  20715a: 48 83 cb 01                  	orq	$1, %rbx
  20715e: 48 89 1c c8                  	movq	%rbx, (%rax,%rcx,8)
  207162: 49 8b 01                     	movq	(%r9), %rax
  207165: 4c 8d 14 c8                  	leaq	(%rax,%rcx,8), %r10
  207169: 48 8b 04 c8                  	movq	(%rax,%rcx,8), %rax
  20716d: 45 31 db                     	xorl	%r11d, %r11d
  207170: 48 bb ff ff ff ff ff ff e0 ff	movabsq	$-8725724278030337, %rbx # imm = 0xFFE0FFFFFFFFFFFF
  20717a: 48 21 c3                     	andq	%rax, %rbx
  20717d: 4c 09 c3                     	orq	%r8, %rbx
  207180: 49 89 1a                     	movq	%rbx, (%r10)
  207183: 49 8b 01                     	movq	(%r9), %rax
  207186: 80 e2 0f                     	andb	$15, %dl
  207189: 0f b6 d2                     	movzbl	%dl, %edx
  20718c: 48 bb ff ff ff ff ff ff 7f f8	movabsq	$-540431955284459521, %rbx # imm = 0xF87FFFFFFFFFFFFF
  207196: 48 23 1c c8                  	andq	(%rax,%rcx,8), %rbx
  20719a: 48 c1 e2 37                  	shlq	$55, %rdx
  20719e: 48 09 d3                     	orq	%rdx, %rbx
  2071a1: 48 89 1c c8                  	movq	%rbx, (%rax,%rcx,8)
  2071a5: 41 83 e3 1f                  	andl	$31, %r11d
  2071a9: 89 f8                        	movl	%edi, %eax
  2071ab: 48 c1 e1 0a                  	shlq	$10, %rcx
  2071af: 49 03 09                     	addq	(%r9), %rcx
  2071b2: 49 c1 e3 05                  	shlq	$5, %r11
  2071b6: 49 89 84 0b 00 00 08 00      	movq	%rax, 524288(%r11,%rcx)
  2071be: 89 f0                        	movl	%esi, %eax
  2071c0: 49 89 84 0b 08 00 08 00      	movq	%rax, 524296(%r11,%rcx)
  2071c8: 5b                           	popq	%rbx
  2071c9: c3                           	retq
  2071ca: 66 0f 1f 44 00 00            	nopw	(%rax,%rax)

00000000002071d0 <__cmplog_ins_hook8>:
  2071d0: 53                           	pushq	%rbx
  2071d1: 48 39 f7                     	cmpq	%rsi, %rdi
  2071d4: 0f 84 5b 01 00 00            	je	0x207335 <__cmplog_ins_hook8+0x165>
  2071da: 4c 8d 0d 2f 61 20 00         	leaq	2122031(%rip), %r9      # 0x40d310 <__afl_cmp_map>
  2071e1: 4d 8b 11                     	movq	(%r9), %r10
  2071e4: 4d 85 d2                     	testq	%r10, %r10
  2071e7: 0f 84 48 01 00 00            	je	0x207335 <__cmplog_ins_hook8+0x165>
  2071ed: 49 bb 00 00 00 00 00 00 20 00	movabsq	$9007199254740992, %r11 # imm = 0x20000000000000
  2071f7: 49 b8 00 00 00 00 00 00 07 00	movabsq	$1970324836974592, %r8  # imm = 0x7000000000000
  207201: 48 8b 44 24 08               	movq	8(%rsp), %rax
  207206: 48 c1 c0 20                  	rolq	$32, %rax
  20720a: 48 b9 a2 d5 ec c5 74 b1 3a c7	movabsq	$-4090762196417718878, %rcx # imm = 0xC73AB174C5ECD5A2
  207214: 48 31 c1                     	xorq	%rax, %rcx
  207217: 48 89 c8                     	movq	%rcx, %rax
  20721a: 48 c1 c0 18                  	rolq	$24, %rax
  20721e: 48 31 c8                     	xorq	%rcx, %rax
  207221: 48 c1 c1 31                  	rolq	$49, %rcx
  207225: 48 31 c8                     	xorq	%rcx, %rax
  207228: 48 b9 25 df 98 1e 65 1c b2 9f	movabsq	$-6939452855193903323, %rcx # imm = 0x9FB21C651E98DF25
  207232: 48 0f af c1                  	imulq	%rcx, %rax
  207236: 48 89 c3                     	movq	%rax, %rbx
  207239: 48 c1 eb 23                  	shrq	$35, %rbx
  20723d: 48 83 c3 08                  	addq	$8, %rbx
  207241: 48 31 c3                     	xorq	%rax, %rbx
  207244: 48 0f af d9                  	imulq	%rcx, %rbx
  207248: 48 89 d8                     	movq	%rbx, %rax
  20724b: 48 c1 e8 1c                  	shrq	$28, %rax
  20724f: 31 d8                        	xorl	%ebx, %eax
  207251: 0f b7 c8                     	movzwl	%ax, %ecx
  207254: 49 8b 04 ca                  	movq	(%r10,%rcx,8), %rax
  207258: 48 bb 00 00 00 00 00 00 60 00	movabsq	$27021597764222976, %rbx # imm = 0x60000000000000
  207262: 48 21 c3                     	andq	%rax, %rbx
  207265: 4c 39 db                     	cmpq	%r11, %rbx
  207268: 75 3f                        	jne	0x2072a9 <__cmplog_ins_hook8+0xd9>
  20726a: 41 89 c3                     	movl	%eax, %r11d
  20726d: 41 81 e3 ff ff ff 00         	andl	$16777215, %r11d        # imm = 0xFFFFFF
  207274: 8d 58 01                     	leal	1(%rax), %ebx
  207277: 81 e3 ff ff ff 00            	andl	$16777215, %ebx         # imm = 0xFFFFFF
  20727d: 48 25 00 00 00 ff            	andq	$-16777216, %rax        # imm = 0xFF000000
  207283: 48 09 d8                     	orq	%rbx, %rax
  207286: 49 89 04 ca                  	movq	%rax, (%r10,%rcx,8)
  20728a: 4d 8b 11                     	movq	(%r9), %r10
  20728d: 49 8b 04 ca                  	movq	(%r10,%rcx,8), %rax
  207291: 48 bb 00 00 00 00 00 00 1f 00	movabsq	$8725724278030336, %rbx # imm = 0x1F000000000000
  20729b: 48 21 c3                     	andq	%rax, %rbx
  20729e: 4c 39 c3                     	cmpq	%r8, %rbx
  2072a1: 73 51                        	jae	0x2072f4 <__cmplog_ins_hook8+0x124>
  2072a3: 4d 8d 14 ca                  	leaq	(%r10,%rcx,8), %r10
  2072a7: eb 38                        	jmp	0x2072e1 <__cmplog_ins_hook8+0x111>
  2072a9: 48 bb ff ff ff ff ff ff 9f ff	movabsq	$-27021597764222977, %rbx # imm = 0xFF9FFFFFFFFFFFFF
  2072b3: 48 21 d8                     	andq	%rbx, %rax
  2072b6: 4c 09 d8                     	orq	%r11, %rax
  2072b9: 49 89 04 ca                  	movq	%rax, (%r10,%rcx,8)
  2072bd: 49 8b 01                     	movq	(%r9), %rax
  2072c0: 48 c7 c3 00 00 00 ff         	movq	$-16777216, %rbx        # imm = 0xFF000000
  2072c7: 48 23 1c c8                  	andq	(%rax,%rcx,8), %rbx
  2072cb: 48 83 cb 01                  	orq	$1, %rbx
  2072cf: 48 89 1c c8                  	movq	%rbx, (%rax,%rcx,8)
  2072d3: 49 8b 01                     	movq	(%r9), %rax
  2072d6: 4c 8d 14 c8                  	leaq	(%rax,%rcx,8), %r10
  2072da: 48 8b 04 c8                  	movq	(%rax,%rcx,8), %rax
  2072de: 45 31 db                     	xorl	%r11d, %r11d
  2072e1: 48 bb ff ff ff ff ff ff e0 ff	movabsq	$-8725724278030337, %rbx # imm = 0xFFE0FFFFFFFFFFFF
  2072eb: 48 21 c3                     	andq	%rax, %rbx
  2072ee: 4c 09 c3                     	orq	%r8, %rbx
  2072f1: 49 89 1a                     	movq	%rbx, (%r10)
  2072f4: 49 8b 01                     	movq	(%r9), %rax
  2072f7: 80 e2 0f                     	andb	$15, %dl
  2072fa: 0f b6 d2                     	movzbl	%dl, %edx
  2072fd: 48 c1 e2 37                  	shlq	$55, %rdx
  207301: 48 bb ff ff ff ff ff ff 7f f8	movabsq	$-540431955284459521, %rbx # imm = 0xF87FFFFFFFFFFFFF
  20730b: 48 23 1c c8                  	andq	(%rax,%rcx,8), %rbx
  20730f: 48 09 d3                     	orq	%rdx, %rbx
  207312: 48 89 1c c8                  	movq	%rbx, (%rax,%rcx,8)
  207316: 48 c1 e1 0a                  	shlq	$10, %rcx
  20731a: 49 03 09                     	addq	(%r9), %rcx
  20731d: 41 83 e3 1f                  	andl	$31, %r11d
  207321: 49 c1 e3 05                  	shlq	$5, %r11
  207325: 49 89 bc 0b 00 00 08 00      	movq	%rdi, 524288(%r11,%rcx)
  20732d: 49 89 b4 0b 08 00 08 00      	movq	%rsi, 524296(%r11,%rcx)
  207335: 5b                           	popq	%rbx
  207336: c3                           	retq
  207337: 66 0f 1f 84 00 00 00 00 00   	nopw	(%rax,%rax)

0000000000207340 <__cmplog_ins_hookN>:
  207340: 55                           	pushq	%rbp
  207341: 41 57                        	pushq	%r15
  207343: 41 56                        	pushq	%r14
  207345: 53                           	pushq	%rbx
  207346: 4c 8d 15 c3 5f 20 00         	leaq	2121667(%rip), %r10     # 0x40d310 <__afl_cmp_map>
  20734d: 4d 8b 32                     	movq	(%r10), %r14
  207350: 4d 85 f6                     	testq	%r14, %r14
  207353: 0f 84 78 01 00 00            	je	0x2074d1 <__cmplog_ins_hookN+0x191>
  207359: 48 89 f0                     	movq	%rsi, %rax
  20735c: 48 31 c8                     	xorq	%rcx, %rax
  20735f: 48 89 fb                     	movq	%rdi, %rbx
  207362: 48 31 d3                     	xorq	%rdx, %rbx
  207365: 48 09 c3                     	orq	%rax, %rbx
  207368: 0f 84 63 01 00 00            	je	0x2074d1 <__cmplog_ins_hookN+0x191>
  20736e: 49 bb 00 00 00 00 00 00 20 00	movabsq	$9007199254740992, %r11 # imm = 0x20000000000000
  207378: 48 8b 44 24 20               	movq	32(%rsp), %rax
  20737d: 48 c1 c0 20                  	rolq	$32, %rax
  207381: 48 bb a2 d5 ec c5 74 b1 3a c7	movabsq	$-4090762196417718878, %rbx # imm = 0xC73AB174C5ECD5A2
  20738b: 48 31 c3                     	xorq	%rax, %rbx
  20738e: 49 89 df                     	movq	%rbx, %r15
  207391: 49 c1 c7 18                  	rolq	$24, %r15
  207395: 49 31 df                     	xorq	%rbx, %r15
  207398: 48 c1 c3 31                  	rolq	$49, %rbx
  20739c: 49 31 df                     	xorq	%rbx, %r15
  20739f: 48 bb 25 df 98 1e 65 1c b2 9f	movabsq	$-6939452855193903323, %rbx # imm = 0x9FB21C651E98DF25
  2073a9: 4c 0f af fb                  	imulq	%rbx, %r15
  2073ad: 4c 89 f8                     	movq	%r15, %rax
  2073b0: 48 c1 e8 23                  	shrq	$35, %rax
  2073b4: 48 83 c0 08                  	addq	$8, %rax
  2073b8: 4c 31 f8                     	xorq	%r15, %rax
  2073bb: 48 0f af c3                  	imulq	%rbx, %rax
  2073bf: 48 89 c3                     	movq	%rax, %rbx
  2073c2: 48 c1 eb 1c                  	shrq	$28, %rbx
  2073c6: 31 c3                        	xorl	%eax, %ebx
  2073c8: 44 0f b7 fb                  	movzwl	%bx, %r15d
  2073cc: 4b 8b 1c fe                  	movq	(%r14,%r15,8), %rbx
  2073d0: 48 b8 00 00 00 00 00 00 60 00	movabsq	$27021597764222976, %rax # imm = 0x60000000000000
  2073da: 48 21 d8                     	andq	%rbx, %rax
  2073dd: 4c 39 d8                     	cmpq	%r11, %rax
  2073e0: 75 3f                        	jne	0x207421 <__cmplog_ins_hookN+0xe1>
  2073e2: 41 89 db                     	movl	%ebx, %r11d
  2073e5: 41 81 e3 ff ff ff 00         	andl	$16777215, %r11d        # imm = 0xFFFFFF
  2073ec: 8d 43 01                     	leal	1(%rbx), %eax
  2073ef: 25 ff ff ff 00               	andl	$16777215, %eax         # imm = 0xFFFFFF
  2073f4: 48 81 e3 00 00 00 ff         	andq	$-16777216, %rbx        # imm = 0xFF000000
  2073fb: 48 09 c3                     	orq	%rax, %rbx
  2073fe: 4b 89 1c fe                  	movq	%rbx, (%r14,%r15,8)
  207402: 4d 8b 32                     	movq	(%r10), %r14
  207405: 4b 8b 1c fe                  	movq	(%r14,%r15,8), %rbx
  207409: 48 89 d8                     	movq	%rbx, %rax
  20740c: 48 c1 e8 30                  	shrq	$48, %rax
  207410: 83 e0 1f                     	andl	$31, %eax
  207413: 41 0f b6 e9                  	movzbl	%r9b, %ebp
  207417: 39 e8                        	cmpl	%ebp, %eax
  207419: 73 5d                        	jae	0x207478 <__cmplog_ins_hookN+0x138>
  20741b: 4f 8d 34 fe                  	leaq	(%r14,%r15,8), %r14
  20741f: eb 38                        	jmp	0x207459 <__cmplog_ins_hookN+0x119>
  207421: 48 b8 ff ff ff ff ff ff 9f ff	movabsq	$-27021597764222977, %rax # imm = 0xFF9FFFFFFFFFFFFF
  20742b: 48 21 c3                     	andq	%rax, %rbx
  20742e: 4c 09 db                     	orq	%r11, %rbx
  207431: 4b 89 1c fe                  	movq	%rbx, (%r14,%r15,8)
  207435: 49 8b 02                     	movq	(%r10), %rax
  207438: 48 c7 c3 00 00 00 ff         	movq	$-16777216, %rbx        # imm = 0xFF000000
  20743f: 4a 23 1c f8                  	andq	(%rax,%r15,8), %rbx
  207443: 48 83 cb 01                  	orq	$1, %rbx
  207447: 4a 89 1c f8                  	movq	%rbx, (%rax,%r15,8)
  20744b: 49 8b 02                     	movq	(%r10), %rax
  20744e: 4e 8d 34 f8                  	leaq	(%rax,%r15,8), %r14
  207452: 4a 8b 1c f8                  	movq	(%rax,%r15,8), %rbx
  207456: 45 31 db                     	xorl	%r11d, %r11d
  207459: 44 89 c8                     	movl	%r9d, %eax
  20745c: 24 1f                        	andb	$31, %al
  20745e: 0f b6 c0                     	movzbl	%al, %eax
  207461: 48 c1 e0 30                  	shlq	$48, %rax
  207465: 48 bd ff ff ff ff ff ff e0 ff	movabsq	$-8725724278030337, %rbp # imm = 0xFFE0FFFFFFFFFFFF
  20746f: 48 21 dd                     	andq	%rbx, %rbp
  207472: 48 09 c5                     	orq	%rax, %rbp
  207475: 49 89 2e                     	movq	%rbp, (%r14)
  207478: 49 8b 02                     	movq	(%r10), %rax
  20747b: 41 80 e0 0f                  	andb	$15, %r8b
  20747f: 41 0f b6 e8                  	movzbl	%r8b, %ebp
  207483: 48 c1 e5 37                  	shlq	$55, %rbp
  207487: 48 bb ff ff ff ff ff ff 7f f8	movabsq	$-540431955284459521, %rbx # imm = 0xF87FFFFFFFFFFFFF
  207491: 4a 23 1c f8                  	andq	(%rax,%r15,8), %rbx
  207495: 48 09 eb                     	orq	%rbp, %rbx
  207498: 4a 89 1c f8                  	movq	%rbx, (%rax,%r15,8)
  20749c: 41 83 e3 1f                  	andl	$31, %r11d
  2074a0: 49 c1 e7 0a                  	shlq	$10, %r15
  2074a4: 4d 03 3a                     	addq	(%r10), %r15
  2074a7: 49 c1 e3 05                  	shlq	$5, %r11
  2074ab: 4b 89 bc 3b 00 00 08 00      	movq	%rdi, 524288(%r11,%r15)
  2074b3: 4b 89 94 3b 08 00 08 00      	movq	%rdx, 524296(%r11,%r15)
  2074bb: 41 80 f9 08                  	cmpb	$8, %r9b
  2074bf: 72 10                        	jb	0x2074d1 <__cmplog_ins_hookN+0x191>
  2074c1: 4b 89 b4 3b 10 00 08 00      	movq	%rsi, 524304(%r11,%r15)
  2074c9: 4b 89 8c 3b 18 00 08 00      	movq	%rcx, 524312(%r11,%r15)
  2074d1: 5b                           	popq	%rbx
  2074d2: 41 5e                        	popq	%r14
  2074d4: 41 5f                        	popq	%r15
  2074d6: 5d                           	popq	%rbp
  2074d7: c3                           	retq
  2074d8: 0f 1f 84 00 00 00 00 00      	nopl	(%rax,%rax)

00000000002074e0 <__cmplog_ins_hook16>:
  2074e0: 41 57                        	pushq	%r15
  2074e2: 41 56                        	pushq	%r14
  2074e4: 53                           	pushq	%rbx
  2074e5: 4c 8d 15 24 5e 20 00         	leaq	2121252(%rip), %r10     # 0x40d310 <__afl_cmp_map>
  2074ec: 4d 8b 32                     	movq	(%r10), %r14
  2074ef: 4d 85 f6                     	testq	%r14, %r14
  2074f2: 0f 84 5b 01 00 00            	je	0x207653 <__cmplog_ins_hook16+0x173>
  2074f8: 49 bb 00 00 00 00 00 00 20 00	movabsq	$9007199254740992, %r11 # imm = 0x20000000000000
  207502: 49 b9 00 00 00 00 00 00 0f 00	movabsq	$4222124650659840, %r9  # imm = 0xF000000000000
  20750c: 48 8b 44 24 18               	movq	24(%rsp), %rax
  207511: 48 c1 c0 20                  	rolq	$32, %rax
  207515: 48 bb a2 d5 ec c5 74 b1 3a c7	movabsq	$-4090762196417718878, %rbx # imm = 0xC73AB174C5ECD5A2
  20751f: 48 31 c3                     	xorq	%rax, %rbx
  207522: 49 89 df                     	movq	%rbx, %r15
  207525: 49 c1 c7 18                  	rolq	$24, %r15
  207529: 49 31 df                     	xorq	%rbx, %r15
  20752c: 48 c1 c3 31                  	rolq	$49, %rbx
  207530: 49 31 df                     	xorq	%rbx, %r15
  207533: 48 bb 25 df 98 1e 65 1c b2 9f	movabsq	$-6939452855193903323, %rbx # imm = 0x9FB21C651E98DF25
  20753d: 4c 0f af fb                  	imulq	%rbx, %r15
  207541: 4c 89 f8                     	movq	%r15, %rax
  207544: 48 c1 e8 23                  	shrq	$35, %rax
  207548: 48 83 c0 08                  	addq	$8, %rax
  20754c: 4c 31 f8                     	xorq	%r15, %rax
  20754f: 48 0f af c3                  	imulq	%rbx, %rax
  207553: 48 89 c3                     	movq	%rax, %rbx
  207556: 48 c1 eb 1c                  	shrq	$28, %rbx
  20755a: 31 c3                        	xorl	%eax, %ebx
  20755c: 44 0f b7 fb                  	movzwl	%bx, %r15d
  207560: 4b 8b 1c fe                  	movq	(%r14,%r15,8), %rbx
  207564: 48 b8 00 00 00 00 00 00 60 00	movabsq	$27021597764222976, %rax # imm = 0x60000000000000
  20756e: 48 21 d8                     	andq	%rbx, %rax
  207571: 4c 39 d8                     	cmpq	%r11, %rax
  207574: 75 3f                        	jne	0x2075b5 <__cmplog_ins_hook16+0xd5>
  207576: 41 89 db                     	movl	%ebx, %r11d
  207579: 41 81 e3 ff ff ff 00         	andl	$16777215, %r11d        # imm = 0xFFFFFF
  207580: 8d 43 01                     	leal	1(%rbx), %eax
  207583: 25 ff ff ff 00               	andl	$16777215, %eax         # imm = 0xFFFFFF
  207588: 48 81 e3 00 00 00 ff         	andq	$-16777216, %rbx        # imm = 0xFF000000
  20758f: 48 09 c3                     	orq	%rax, %rbx
  207592: 4b 89 1c fe                  	movq	%rbx, (%r14,%r15,8)
  207596: 4d 8b 32                     	movq	(%r10), %r14
  207599: 4b 8b 1c fe                  	movq	(%r14,%r15,8), %rbx
  20759d: 48 b8 00 00 00 00 00 00 1f 00	movabsq	$8725724278030336, %rax # imm = 0x1F000000000000
  2075a7: 48 21 d8                     	andq	%rbx, %rax
  2075aa: 4c 39 c8                     	cmpq	%r9, %rax
  2075ad: 73 51                        	jae	0x207600 <__cmplog_ins_hook16+0x120>
  2075af: 4f 8d 34 fe                  	leaq	(%r14,%r15,8), %r14
  2075b3: eb 38                        	jmp	0x2075ed <__cmplog_ins_hook16+0x10d>
  2075b5: 48 b8 ff ff ff ff ff ff 9f ff	movabsq	$-27021597764222977, %rax # imm = 0xFF9FFFFFFFFFFFFF
  2075bf: 48 21 c3                     	andq	%rax, %rbx
  2075c2: 4c 09 db                     	orq	%r11, %rbx
  2075c5: 4b 89 1c fe                  	movq	%rbx, (%r14,%r15,8)
  2075c9: 49 8b 02                     	movq	(%r10), %rax
  2075cc: 48 c7 c3 00 00 00 ff         	movq	$-16777216, %rbx        # imm = 0xFF000000
  2075d3: 4a 23 1c f8                  	andq	(%rax,%r15,8), %rbx
  2075d7: 48 83 cb 01                  	orq	$1, %rbx
  2075db: 4a 89 1c f8                  	movq	%rbx, (%rax,%r15,8)
  2075df: 49 8b 02                     	movq	(%r10), %rax
  2075e2: 4e 8d 34 f8                  	leaq	(%rax,%r15,8), %r14
  2075e6: 4a 8b 1c f8                  	movq	(%rax,%r15,8), %rbx
  2075ea: 45 31 db                     	xorl	%r11d, %r11d
  2075ed: 48 b8 ff ff ff ff ff ff e0 ff	movabsq	$-8725724278030337, %rax # imm = 0xFFE0FFFFFFFFFFFF
  2075f7: 48 21 d8                     	andq	%rbx, %rax
  2075fa: 4c 09 c8                     	orq	%r9, %rax
  2075fd: 49 89 06                     	movq	%rax, (%r14)
  207600: 4d 8b 0a                     	movq	(%r10), %r9
  207603: 41 80 e0 0f                  	andb	$15, %r8b
  207607: 41 0f b6 d8                  	movzbl	%r8b, %ebx
  20760b: 48 b8 ff ff ff ff ff ff 7f f8	movabsq	$-540431955284459521, %rax # imm = 0xF87FFFFFFFFFFFFF
  207615: 4b 23 04 f9                  	andq	(%r9,%r15,8), %rax
  207619: 48 c1 e3 37                  	shlq	$55, %rbx
  20761d: 48 09 d8                     	orq	%rbx, %rax
  207620: 4b 89 04 f9                  	movq	%rax, (%r9,%r15,8)
  207624: 41 83 e3 1f                  	andl	$31, %r11d
  207628: 49 c1 e7 0a                  	shlq	$10, %r15
  20762c: 4d 03 3a                     	addq	(%r10), %r15
  20762f: 49 c1 e3 05                  	shlq	$5, %r11
  207633: 4b 89 bc 3b 00 00 08 00      	movq	%rdi, 524288(%r11,%r15)
  20763b: 4b 89 94 3b 08 00 08 00      	movq	%rdx, 524296(%r11,%r15)
  207643: 4b 89 b4 3b 10 00 08 00      	movq	%rsi, 524304(%r11,%r15)
  20764b: 4b 89 8c 3b 18 00 08 00      	movq	%rcx, 524312(%r11,%r15)
  207653: 5b                           	popq	%rbx
  207654: 41 5e                        	popq	%r14
  207656: 41 5f                        	popq	%r15
  207658: c3                           	retq
  207659: 0f 1f 80 00 00 00 00         	nopl	(%rax)

0000000000207660 <__sanitizer_cov_trace_cmp1>:
  207660: 40 38 f7                     	cmpb	%sil, %dil
  207663: 0f 84 15 01 00 00            	je	0x20777e <__sanitizer_cov_trace_cmp1+0x11e>
  207669: 4c 8d 05 a0 5c 20 00         	leaq	2120864(%rip), %r8      # 0x40d310 <__afl_cmp_map>
  207670: 4d 8b 10                     	movq	(%r8), %r10
  207673: 4d 85 d2                     	testq	%r10, %r10
  207676: 0f 84 02 01 00 00            	je	0x20777e <__sanitizer_cov_trace_cmp1+0x11e>
  20767c: 49 b9 00 00 00 00 00 00 20 00	movabsq	$9007199254740992, %r9  # imm = 0x20000000000000
  207686: 48 8b 04 24                  	movq	(%rsp), %rax
  20768a: 48 c1 c0 20                  	rolq	$32, %rax
  20768e: 48 ba a2 d5 ec c5 74 b1 3a c7	movabsq	$-4090762196417718878, %rdx # imm = 0xC73AB174C5ECD5A2
  207698: 48 31 c2                     	xorq	%rax, %rdx
  20769b: 48 89 d1                     	movq	%rdx, %rcx
  20769e: 48 c1 c1 18                  	rolq	$24, %rcx
  2076a2: 48 31 d1                     	xorq	%rdx, %rcx
  2076a5: 48 c1 c2 31                  	rolq	$49, %rdx
  2076a9: 48 31 d1                     	xorq	%rdx, %rcx
  2076ac: 48 ba 25 df 98 1e 65 1c b2 9f	movabsq	$-6939452855193903323, %rdx # imm = 0x9FB21C651E98DF25
  2076b6: 48 0f af ca                  	imulq	%rdx, %rcx
  2076ba: 48 89 c8                     	movq	%rcx, %rax
  2076bd: 48 c1 e8 23                  	shrq	$35, %rax
  2076c1: 48 83 c0 08                  	addq	$8, %rax
  2076c5: 48 31 c8                     	xorq	%rcx, %rax
  2076c8: 48 0f af c2                  	imulq	%rdx, %rax
  2076cc: 48 89 c1                     	movq	%rax, %rcx
  2076cf: 48 c1 e9 1c                  	shrq	$28, %rcx
  2076d3: 31 c1                        	xorl	%eax, %ecx
  2076d5: 44 0f b7 d9                  	movzwl	%cx, %r11d
  2076d9: 4b 8b 14 da                  	movq	(%r10,%r11,8), %rdx
  2076dd: 48 b9 00 00 00 00 00 00 60 00	movabsq	$27021597764222976, %rcx # imm = 0x60000000000000
  2076e7: 48 21 d1                     	andq	%rdx, %rcx
  2076ea: 4c 39 c9                     	cmpq	%r9, %rcx
  2076ed: 75 1e                        	jne	0x20770d <__sanitizer_cov_trace_cmp1+0xad>
  2076ef: 8d 4a 01                     	leal	1(%rdx), %ecx
  2076f2: 81 e1 ff ff ff 00            	andl	$16777215, %ecx         # imm = 0xFFFFFF
  2076f8: 48 89 d0                     	movq	%rdx, %rax
  2076fb: 48 25 00 00 00 ff            	andq	$-16777216, %rax        # imm = 0xFF000000
  207701: 48 09 c8                     	orq	%rcx, %rax
  207704: 4b 89 04 da                  	movq	%rax, (%r10,%r11,8)
  207708: 83 e2 1f                     	andl	$31, %edx
  20770b: eb 3d                        	jmp	0x20774a <__sanitizer_cov_trace_cmp1+0xea>
  20770d: 48 b9 ff ff ff ff ff ff 9f ff	movabsq	$-27021597764222977, %rcx # imm = 0xFF9FFFFFFFFFFFFF
  207717: 48 21 ca                     	andq	%rcx, %rdx
  20771a: 4c 09 ca                     	orq	%r9, %rdx
  20771d: 4b 89 14 da                  	movq	%rdx, (%r10,%r11,8)
  207721: 49 8b 00                     	movq	(%r8), %rax
  207724: 48 c7 c1 00 00 00 ff         	movq	$-16777216, %rcx        # imm = 0xFF000000
  20772b: 4a 23 0c d8                  	andq	(%rax,%r11,8), %rcx
  20772f: 48 83 c9 01                  	orq	$1, %rcx
  207733: 4a 89 0c d8                  	movq	%rcx, (%rax,%r11,8)
  207737: 49 8b 00                     	movq	(%r8), %rax
  20773a: 48 b9 ff ff ff ff ff ff e0 ff	movabsq	$-8725724278030337, %rcx # imm = 0xFFE0FFFFFFFFFFFF
  207744: 4a 21 0c d8                  	andq	%rcx, (%rax,%r11,8)
  207748: 31 d2                        	xorl	%edx, %edx
  20774a: 49 8b 00                     	movq	(%r8), %rax
  20774d: 48 b9 ff ff ff ff ff ff 7f f8	movabsq	$-540431955284459521, %rcx # imm = 0xF87FFFFFFFFFFFFF
  207757: 4a 21 0c d8                  	andq	%rcx, (%rax,%r11,8)
  20775b: 40 0f b6 c7                  	movzbl	%dil, %eax
  20775f: 49 c1 e3 0a                  	shlq	$10, %r11
  207763: 4d 03 18                     	addq	(%r8), %r11
  207766: 48 c1 e2 05                  	shlq	$5, %rdx
  20776a: 4a 89 84 1a 00 00 08 00      	movq	%rax, 524288(%rdx,%r11)
  207772: 40 0f b6 c6                  	movzbl	%sil, %eax
  207776: 4a 89 84 1a 08 00 08 00      	movq	%rax, 524296(%rdx,%r11)
  20777e: c3                           	retq
  20777f: 90                           	nop

0000000000207780 <__sanitizer_cov_trace_const_cmp1>:
  207780: 40 38 f7                     	cmpb	%sil, %dil
  207783: 0f 84 15 01 00 00            	je	0x20789e <__sanitizer_cov_trace_const_cmp1+0x11e>
  207789: 4c 8d 05 80 5b 20 00         	leaq	2120576(%rip), %r8      # 0x40d310 <__afl_cmp_map>
  207790: 4d 8b 10                     	movq	(%r8), %r10
  207793: 4d 85 d2                     	testq	%r10, %r10
  207796: 0f 84 02 01 00 00            	je	0x20789e <__sanitizer_cov_trace_const_cmp1+0x11e>
  20779c: 49 b9 00 00 00 00 00 00 20 00	movabsq	$9007199254740992, %r9  # imm = 0x20000000000000
  2077a6: 48 8b 04 24                  	movq	(%rsp), %rax
  2077aa: 48 c1 c0 20                  	rolq	$32, %rax
  2077ae: 48 ba a2 d5 ec c5 74 b1 3a c7	movabsq	$-4090762196417718878, %rdx # imm = 0xC73AB174C5ECD5A2
  2077b8: 48 31 c2                     	xorq	%rax, %rdx
  2077bb: 48 89 d1                     	movq	%rdx, %rcx
  2077be: 48 c1 c1 18                  	rolq	$24, %rcx
  2077c2: 48 31 d1                     	xorq	%rdx, %rcx
  2077c5: 48 c1 c2 31                  	rolq	$49, %rdx
  2077c9: 48 31 d1                     	xorq	%rdx, %rcx
  2077cc: 48 ba 25 df 98 1e 65 1c b2 9f	movabsq	$-6939452855193903323, %rdx # imm = 0x9FB21C651E98DF25
  2077d6: 48 0f af ca                  	imulq	%rdx, %rcx
  2077da: 48 89 c8                     	movq	%rcx, %rax
  2077dd: 48 c1 e8 23                  	shrq	$35, %rax
  2077e1: 48 83 c0 08                  	addq	$8, %rax
  2077e5: 48 31 c8                     	xorq	%rcx, %rax
  2077e8: 48 0f af c2                  	imulq	%rdx, %rax
  2077ec: 48 89 c1                     	movq	%rax, %rcx
  2077ef: 48 c1 e9 1c                  	shrq	$28, %rcx
  2077f3: 31 c1                        	xorl	%eax, %ecx
  2077f5: 44 0f b7 d9                  	movzwl	%cx, %r11d
  2077f9: 4b 8b 14 da                  	movq	(%r10,%r11,8), %rdx
  2077fd: 48 b9 00 00 00 00 00 00 60 00	movabsq	$27021597764222976, %rcx # imm = 0x60000000000000
  207807: 48 21 d1                     	andq	%rdx, %rcx
  20780a: 4c 39 c9                     	cmpq	%r9, %rcx
  20780d: 75 1e                        	jne	0x20782d <__sanitizer_cov_trace_const_cmp1+0xad>
  20780f: 8d 4a 01                     	leal	1(%rdx), %ecx
  207812: 81 e1 ff ff ff 00            	andl	$16777215, %ecx         # imm = 0xFFFFFF
  207818: 48 89 d0                     	movq	%rdx, %rax
  20781b: 48 25 00 00 00 ff            	andq	$-16777216, %rax        # imm = 0xFF000000
  207821: 48 09 c8                     	orq	%rcx, %rax
  207824: 4b 89 04 da                  	movq	%rax, (%r10,%r11,8)
  207828: 83 e2 1f                     	andl	$31, %edx
  20782b: eb 3d                        	jmp	0x20786a <__sanitizer_cov_trace_const_cmp1+0xea>
  20782d: 48 b9 ff ff ff ff ff ff 9f ff	movabsq	$-27021597764222977, %rcx # imm = 0xFF9FFFFFFFFFFFFF
  207837: 48 21 ca                     	andq	%rcx, %rdx
  20783a: 4c 09 ca                     	orq	%r9, %rdx
  20783d: 4b 89 14 da                  	movq	%rdx, (%r10,%r11,8)
  207841: 49 8b 00                     	movq	(%r8), %rax
  207844: 48 c7 c1 00 00 00 ff         	movq	$-16777216, %rcx        # imm = 0xFF000000
  20784b: 4a 23 0c d8                  	andq	(%rax,%r11,8), %rcx
  20784f: 48 83 c9 01                  	orq	$1, %rcx
  207853: 4a 89 0c d8                  	movq	%rcx, (%rax,%r11,8)
  207857: 49 8b 00                     	movq	(%r8), %rax
  20785a: 48 b9 ff ff ff ff ff ff e0 ff	movabsq	$-8725724278030337, %rcx # imm = 0xFFE0FFFFFFFFFFFF
  207864: 4a 21 0c d8                  	andq	%rcx, (%rax,%r11,8)
  207868: 31 d2                        	xorl	%edx, %edx
  20786a: 49 8b 00                     	movq	(%r8), %rax
  20786d: 48 b9 ff ff ff ff ff ff 7f f8	movabsq	$-540431955284459521, %rcx # imm = 0xF87FFFFFFFFFFFFF
  207877: 4a 21 0c d8                  	andq	%rcx, (%rax,%r11,8)
  20787b: 40 0f b6 c7                  	movzbl	%dil, %eax
  20787f: 49 c1 e3 0a                  	shlq	$10, %r11
  207883: 4d 03 18                     	addq	(%r8), %r11
  207886: 48 c1 e2 05                  	shlq	$5, %rdx
  20788a: 4a 89 84 1a 00 00 08 00      	movq	%rax, 524288(%rdx,%r11)
  207892: 40 0f b6 c6                  	movzbl	%sil, %eax
  207896: 4a 89 84 1a 08 00 08 00      	movq	%rax, 524296(%rdx,%r11)
  20789e: c3                           	retq
  20789f: 90                           	nop

00000000002078a0 <__sanitizer_cov_trace_cmp2>:
  2078a0: 31 d2                        	xorl	%edx, %edx
  2078a2: e9 49 f6 ff ff               	jmp	0x206ef0 <__cmplog_ins_hook2>
  2078a7: 66 0f 1f 84 00 00 00 00 00   	nopw	(%rax,%rax)

00000000002078b0 <__sanitizer_cov_trace_const_cmp2>:
  2078b0: 31 d2                        	xorl	%edx, %edx
  2078b2: e9 39 f6 ff ff               	jmp	0x206ef0 <__cmplog_ins_hook2>
  2078b7: 66 0f 1f 84 00 00 00 00 00   	nopw	(%rax,%rax)

00000000002078c0 <__sanitizer_cov_trace_cmp4>:
  2078c0: 39 f7                        	cmpl	%esi, %edi
  2078c2: 0f 84 52 01 00 00            	je	0x207a1a <__sanitizer_cov_trace_cmp4+0x15a>
  2078c8: 4c 8d 0d 41 5a 20 00         	leaq	2120257(%rip), %r9      # 0x40d310 <__afl_cmp_map>
  2078cf: 4d 8b 11                     	movq	(%r9), %r10
  2078d2: 4d 85 d2                     	testq	%r10, %r10
  2078d5: 0f 84 3f 01 00 00            	je	0x207a1a <__sanitizer_cov_trace_cmp4+0x15a>
  2078db: 49 bb 00 00 00 00 00 00 20 00	movabsq	$9007199254740992, %r11 # imm = 0x20000000000000
  2078e5: 49 b8 00 00 00 00 00 00 03 00	movabsq	$844424930131968, %r8   # imm = 0x3000000000000
  2078ef: 48 8b 0c 24                  	movq	(%rsp), %rcx
  2078f3: 48 c1 c1 20                  	rolq	$32, %rcx
  2078f7: 48 ba a2 d5 ec c5 74 b1 3a c7	movabsq	$-4090762196417718878, %rdx # imm = 0xC73AB174C5ECD5A2
  207901: 48 31 ca                     	xorq	%rcx, %rdx
  207904: 48 89 d0                     	movq	%rdx, %rax
  207907: 48 c1 c0 18                  	rolq	$24, %rax
  20790b: 48 31 d0                     	xorq	%rdx, %rax
  20790e: 48 c1 c2 31                  	rolq	$49, %rdx
  207912: 48 31 d0                     	xorq	%rdx, %rax
  207915: 48 ba 25 df 98 1e 65 1c b2 9f	movabsq	$-6939452855193903323, %rdx # imm = 0x9FB21C651E98DF25
  20791f: 48 0f af c2                  	imulq	%rdx, %rax
  207923: 48 89 c1                     	movq	%rax, %rcx
  207926: 48 c1 e9 23                  	shrq	$35, %rcx
  20792a: 48 83 c1 08                  	addq	$8, %rcx
  20792e: 48 31 c1                     	xorq	%rax, %rcx
  207931: 48 0f af ca                  	imulq	%rdx, %rcx
  207935: 48 89 c8                     	movq	%rcx, %rax
  207938: 48 c1 e8 1c                  	shrq	$28, %rax
  20793c: 31 c8                        	xorl	%ecx, %eax
  20793e: 0f b7 d0                     	movzwl	%ax, %edx
  207941: 49 8b 0c d2                  	movq	(%r10,%rdx,8), %rcx
  207945: 48 b8 00 00 00 00 00 00 60 00	movabsq	$27021597764222976, %rax # imm = 0x60000000000000
  20794f: 48 21 c8                     	andq	%rcx, %rax
  207952: 4c 39 d8                     	cmpq	%r11, %rax
  207955: 75 3f                        	jne	0x207996 <__sanitizer_cov_trace_cmp4+0xd6>
  207957: 89 c8                        	movl	%ecx, %eax
  207959: 25 ff ff ff 00               	andl	$16777215, %eax         # imm = 0xFFFFFF
  20795e: 44 8d 59 01                  	leal	1(%rcx), %r11d
  207962: 41 81 e3 ff ff ff 00         	andl	$16777215, %r11d        # imm = 0xFFFFFF
  207969: 48 81 e1 00 00 00 ff         	andq	$-16777216, %rcx        # imm = 0xFF000000
  207970: 4c 09 d9                     	orq	%r11, %rcx
  207973: 49 89 0c d2                  	movq	%rcx, (%r10,%rdx,8)
  207977: 4d 8b 19                     	movq	(%r9), %r11
  20797a: 4d 8b 14 d3                  	movq	(%r11,%rdx,8), %r10
  20797e: 48 b9 00 00 00 00 00 00 1f 00	movabsq	$8725724278030336, %rcx # imm = 0x1F000000000000
  207988: 4c 21 d1                     	andq	%r10, %rcx
  20798b: 4c 39 c1                     	cmpq	%r8, %rcx
  20798e: 73 57                        	jae	0x2079e7 <__sanitizer_cov_trace_cmp4+0x127>
  207990: 4d 8d 1c d3                  	leaq	(%r11,%rdx,8), %r11
  207994: eb 37                        	jmp	0x2079cd <__sanitizer_cov_trace_cmp4+0x10d>
  207996: 48 b8 ff ff ff ff ff ff 9f ff	movabsq	$-27021597764222977, %rax # imm = 0xFF9FFFFFFFFFFFFF
  2079a0: 48 21 c1                     	andq	%rax, %rcx
  2079a3: 4c 09 d9                     	orq	%r11, %rcx
  2079a6: 49 89 0c d2                  	movq	%rcx, (%r10,%rdx,8)
  2079aa: 49 8b 01                     	movq	(%r9), %rax
  2079ad: 48 c7 c1 00 00 00 ff         	movq	$-16777216, %rcx        # imm = 0xFF000000
  2079b4: 48 23 0c d0                  	andq	(%rax,%rdx,8), %rcx
  2079b8: 48 83 c9 01                  	orq	$1, %rcx
  2079bc: 48 89 0c d0                  	movq	%rcx, (%rax,%rdx,8)
  2079c0: 49 8b 01                     	movq	(%r9), %rax
  2079c3: 4c 8d 1c d0                  	leaq	(%rax,%rdx,8), %r11
  2079c7: 4c 8b 14 d0                  	movq	(%rax,%rdx,8), %r10
  2079cb: 31 c0                        	xorl	%eax, %eax
  2079cd: 48 b9 ff ff ff ff ff ff e0 ff	movabsq	$-8725724278030337, %rcx # imm = 0xFFE0FFFFFFFFFFFF
  2079d7: 4c 21 d1                     	andq	%r10, %rcx
  2079da: 4c 09 c1                     	orq	%r8, %rcx
  2079dd: 49 89 0b                     	movq	%rcx, (%r11)
  2079e0: 4d 8b 19                     	movq	(%r9), %r11
  2079e3: 4d 8b 14 d3                  	movq	(%r11,%rdx,8), %r10
  2079e7: 48 b9 ff ff ff ff ff ff 7f f8	movabsq	$-540431955284459521, %rcx # imm = 0xF87FFFFFFFFFFFFF
  2079f1: 4c 21 d1                     	andq	%r10, %rcx
  2079f4: 49 89 0c d3                  	movq	%rcx, (%r11,%rdx,8)
  2079f8: 83 e0 1f                     	andl	$31, %eax
  2079fb: 89 f9                        	movl	%edi, %ecx
  2079fd: 48 c1 e2 0a                  	shlq	$10, %rdx
  207a01: 49 03 11                     	addq	(%r9), %rdx
  207a04: 48 c1 e0 05                  	shlq	$5, %rax
  207a08: 48 89 8c 10 00 00 08 00      	movq	%rcx, 524288(%rax,%rdx)
  207a10: 89 f1                        	movl	%esi, %ecx
  207a12: 48 89 8c 10 08 00 08 00      	movq	%rcx, 524296(%rax,%rdx)
  207a1a: c3                           	retq
  207a1b: 0f 1f 44 00 00               	nopl	(%rax,%rax)

0000000000207a20 <__sanitizer_cov_trace_const_cmp4>:
  207a20: 39 f7                        	cmpl	%esi, %edi
  207a22: 0f 84 52 01 00 00            	je	0x207b7a <__sanitizer_cov_trace_const_cmp4+0x15a>
  207a28: 4c 8d 0d e1 58 20 00         	leaq	2119905(%rip), %r9      # 0x40d310 <__afl_cmp_map>
  207a2f: 4d 8b 11                     	movq	(%r9), %r10
  207a32: 4d 85 d2                     	testq	%r10, %r10
  207a35: 0f 84 3f 01 00 00            	je	0x207b7a <__sanitizer_cov_trace_const_cmp4+0x15a>
  207a3b: 49 bb 00 00 00 00 00 00 20 00	movabsq	$9007199254740992, %r11 # imm = 0x20000000000000
  207a45: 49 b8 00 00 00 00 00 00 03 00	movabsq	$844424930131968, %r8   # imm = 0x3000000000000
  207a4f: 48 8b 0c 24                  	movq	(%rsp), %rcx
  207a53: 48 c1 c1 20                  	rolq	$32, %rcx
  207a57: 48 ba a2 d5 ec c5 74 b1 3a c7	movabsq	$-4090762196417718878, %rdx # imm = 0xC73AB174C5ECD5A2
  207a61: 48 31 ca                     	xorq	%rcx, %rdx
  207a64: 48 89 d0                     	movq	%rdx, %rax
  207a67: 48 c1 c0 18                  	rolq	$24, %rax
  207a6b: 48 31 d0                     	xorq	%rdx, %rax
  207a6e: 48 c1 c2 31                  	rolq	$49, %rdx
  207a72: 48 31 d0                     	xorq	%rdx, %rax
  207a75: 48 ba 25 df 98 1e 65 1c b2 9f	movabsq	$-6939452855193903323, %rdx # imm = 0x9FB21C651E98DF25
  207a7f: 48 0f af c2                  	imulq	%rdx, %rax
  207a83: 48 89 c1                     	movq	%rax, %rcx
  207a86: 48 c1 e9 23                  	shrq	$35, %rcx
  207a8a: 48 83 c1 08                  	addq	$8, %rcx
  207a8e: 48 31 c1                     	xorq	%rax, %rcx
  207a91: 48 0f af ca                  	imulq	%rdx, %rcx
  207a95: 48 89 c8                     	movq	%rcx, %rax
  207a98: 48 c1 e8 1c                  	shrq	$28, %rax
  207a9c: 31 c8                        	xorl	%ecx, %eax
  207a9e: 0f b7 d0                     	movzwl	%ax, %edx
  207aa1: 49 8b 0c d2                  	movq	(%r10,%rdx,8), %rcx
  207aa5: 48 b8 00 00 00 00 00 00 60 00	movabsq	$27021597764222976, %rax # imm = 0x60000000000000
  207aaf: 48 21 c8                     	andq	%rcx, %rax
  207ab2: 4c 39 d8                     	cmpq	%r11, %rax
  207ab5: 75 3f                        	jne	0x207af6 <__sanitizer_cov_trace_const_cmp4+0xd6>
  207ab7: 89 c8                        	movl	%ecx, %eax
  207ab9: 25 ff ff ff 00               	andl	$16777215, %eax         # imm = 0xFFFFFF
  207abe: 44 8d 59 01                  	leal	1(%rcx), %r11d
  207ac2: 41 81 e3 ff ff ff 00         	andl	$16777215, %r11d        # imm = 0xFFFFFF
  207ac9: 48 81 e1 00 00 00 ff         	andq	$-16777216, %rcx        # imm = 0xFF000000
  207ad0: 4c 09 d9                     	orq	%r11, %rcx
  207ad3: 49 89 0c d2                  	movq	%rcx, (%r10,%rdx,8)
  207ad7: 4d 8b 19                     	movq	(%r9), %r11
  207ada: 4d 8b 14 d3                  	movq	(%r11,%rdx,8), %r10
  207ade: 48 b9 00 00 00 00 00 00 1f 00	movabsq	$8725724278030336, %rcx # imm = 0x1F000000000000
  207ae8: 4c 21 d1                     	andq	%r10, %rcx
  207aeb: 4c 39 c1                     	cmpq	%r8, %rcx
  207aee: 73 57                        	jae	0x207b47 <__sanitizer_cov_trace_const_cmp4+0x127>
  207af0: 4d 8d 1c d3                  	leaq	(%r11,%rdx,8), %r11
  207af4: eb 37                        	jmp	0x207b2d <__sanitizer_cov_trace_const_cmp4+0x10d>
  207af6: 48 b8 ff ff ff ff ff ff 9f ff	movabsq	$-27021597764222977, %rax # imm = 0xFF9FFFFFFFFFFFFF
  207b00: 48 21 c1                     	andq	%rax, %rcx
  207b03: 4c 09 d9                     	orq	%r11, %rcx
  207b06: 49 89 0c d2                  	movq	%rcx, (%r10,%rdx,8)
  207b0a: 49 8b 01                     	movq	(%r9), %rax
  207b0d: 48 c7 c1 00 00 00 ff         	movq	$-16777216, %rcx        # imm = 0xFF000000
  207b14: 48 23 0c d0                  	andq	(%rax,%rdx,8), %rcx
  207b18: 48 83 c9 01                  	orq	$1, %rcx
  207b1c: 48 89 0c d0                  	movq	%rcx, (%rax,%rdx,8)
  207b20: 49 8b 01                     	movq	(%r9), %rax
  207b23: 4c 8d 1c d0                  	leaq	(%rax,%rdx,8), %r11
  207b27: 4c 8b 14 d0                  	movq	(%rax,%rdx,8), %r10
  207b2b: 31 c0                        	xorl	%eax, %eax
  207b2d: 48 b9 ff ff ff ff ff ff e0 ff	movabsq	$-8725724278030337, %rcx # imm = 0xFFE0FFFFFFFFFFFF
  207b37: 4c 21 d1                     	andq	%r10, %rcx
  207b3a: 4c 09 c1                     	orq	%r8, %rcx
  207b3d: 49 89 0b                     	movq	%rcx, (%r11)
  207b40: 4d 8b 19                     	movq	(%r9), %r11
  207b43: 4d 8b 14 d3                  	movq	(%r11,%rdx,8), %r10
  207b47: 48 b9 ff ff ff ff ff ff 7f f8	movabsq	$-540431955284459521, %rcx # imm = 0xF87FFFFFFFFFFFFF
  207b51: 4c 21 d1                     	andq	%r10, %rcx
  207b54: 49 89 0c d3                  	movq	%rcx, (%r11,%rdx,8)
  207b58: 83 e0 1f                     	andl	$31, %eax
  207b5b: 89 f9                        	movl	%edi, %ecx
  207b5d: 48 c1 e2 0a                  	shlq	$10, %rdx
  207b61: 49 03 11                     	addq	(%r9), %rdx
  207b64: 48 c1 e0 05                  	shlq	$5, %rax
  207b68: 48 89 8c 10 00 00 08 00      	movq	%rcx, 524288(%rax,%rdx)
  207b70: 89 f1                        	movl	%esi, %ecx
  207b72: 48 89 8c 10 08 00 08 00      	movq	%rcx, 524296(%rax,%rdx)
  207b7a: c3                           	retq
  207b7b: 0f 1f 44 00 00               	nopl	(%rax,%rax)

0000000000207b80 <__sanitizer_cov_trace_cmp8>:
  207b80: 48 39 f7                     	cmpq	%rsi, %rdi
  207b83: 0f 84 4e 01 00 00            	je	0x207cd7 <__sanitizer_cov_trace_cmp8+0x157>
  207b89: 4c 8d 0d 80 57 20 00         	leaq	2119552(%rip), %r9      # 0x40d310 <__afl_cmp_map>
  207b90: 4d 8b 11                     	movq	(%r9), %r10
  207b93: 4d 85 d2                     	testq	%r10, %r10
  207b96: 0f 84 3b 01 00 00            	je	0x207cd7 <__sanitizer_cov_trace_cmp8+0x157>
  207b9c: 49 bb 00 00 00 00 00 00 20 00	movabsq	$9007199254740992, %r11 # imm = 0x20000000000000
  207ba6: 49 b8 00 00 00 00 00 00 07 00	movabsq	$1970324836974592, %r8  # imm = 0x7000000000000
  207bb0: 48 8b 04 24                  	movq	(%rsp), %rax
  207bb4: 48 c1 c0 20                  	rolq	$32, %rax
  207bb8: 48 ba a2 d5 ec c5 74 b1 3a c7	movabsq	$-4090762196417718878, %rdx # imm = 0xC73AB174C5ECD5A2
  207bc2: 48 31 c2                     	xorq	%rax, %rdx
  207bc5: 48 89 d1                     	movq	%rdx, %rcx
  207bc8: 48 c1 c1 18                  	rolq	$24, %rcx
  207bcc: 48 31 d1                     	xorq	%rdx, %rcx
  207bcf: 48 c1 c2 31                  	rolq	$49, %rdx
  207bd3: 48 31 d1                     	xorq	%rdx, %rcx
  207bd6: 48 ba 25 df 98 1e 65 1c b2 9f	movabsq	$-6939452855193903323, %rdx # imm = 0x9FB21C651E98DF25
  207be0: 48 0f af ca                  	imulq	%rdx, %rcx
  207be4: 48 89 c8                     	movq	%rcx, %rax
  207be7: 48 c1 e8 23                  	shrq	$35, %rax
  207beb: 48 83 c0 08                  	addq	$8, %rax
  207bef: 48 31 c8                     	xorq	%rcx, %rax
  207bf2: 48 0f af c2                  	imulq	%rdx, %rax
  207bf6: 48 89 c1                     	movq	%rax, %rcx
  207bf9: 48 c1 e9 1c                  	shrq	$28, %rcx
  207bfd: 31 c1                        	xorl	%eax, %ecx
  207bff: 0f b7 d1                     	movzwl	%cx, %edx
  207c02: 49 8b 04 d2                  	movq	(%r10,%rdx,8), %rax
  207c06: 48 b9 00 00 00 00 00 00 60 00	movabsq	$27021597764222976, %rcx # imm = 0x60000000000000
  207c10: 48 21 c1                     	andq	%rax, %rcx
  207c13: 4c 39 d9                     	cmpq	%r11, %rcx
  207c16: 75 3f                        	jne	0x207c57 <__sanitizer_cov_trace_cmp8+0xd7>
  207c18: 89 c1                        	movl	%eax, %ecx
  207c1a: 81 e1 ff ff ff 00            	andl	$16777215, %ecx         # imm = 0xFFFFFF
  207c20: 44 8d 58 01                  	leal	1(%rax), %r11d
  207c24: 41 81 e3 ff ff ff 00         	andl	$16777215, %r11d        # imm = 0xFFFFFF
  207c2b: 48 25 00 00 00 ff            	andq	$-16777216, %rax        # imm = 0xFF000000
  207c31: 4c 09 d8                     	orq	%r11, %rax
  207c34: 49 89 04 d2                  	movq	%rax, (%r10,%rdx,8)
  207c38: 4d 8b 19                     	movq	(%r9), %r11
  207c3b: 4d 8b 14 d3                  	movq	(%r11,%rdx,8), %r10
  207c3f: 48 b8 00 00 00 00 00 00 1f 00	movabsq	$8725724278030336, %rax # imm = 0x1F000000000000
  207c49: 4c 21 d0                     	andq	%r10, %rax
  207c4c: 4c 39 c0                     	cmpq	%r8, %rax
  207c4f: 73 57                        	jae	0x207ca8 <__sanitizer_cov_trace_cmp8+0x128>
  207c51: 4d 8d 1c d3                  	leaq	(%r11,%rdx,8), %r11
  207c55: eb 37                        	jmp	0x207c8e <__sanitizer_cov_trace_cmp8+0x10e>
  207c57: 48 b9 ff ff ff ff ff ff 9f ff	movabsq	$-27021597764222977, %rcx # imm = 0xFF9FFFFFFFFFFFFF
  207c61: 48 21 c8                     	andq	%rcx, %rax
  207c64: 4c 09 d8                     	orq	%r11, %rax
  207c67: 49 89 04 d2                  	movq	%rax, (%r10,%rdx,8)
  207c6b: 49 8b 01                     	movq	(%r9), %rax
  207c6e: 48 c7 c1 00 00 00 ff         	movq	$-16777216, %rcx        # imm = 0xFF000000
  207c75: 48 23 0c d0                  	andq	(%rax,%rdx,8), %rcx
  207c79: 48 83 c9 01                  	orq	$1, %rcx
  207c7d: 48 89 0c d0                  	movq	%rcx, (%rax,%rdx,8)
  207c81: 49 8b 09                     	movq	(%r9), %rcx
  207c84: 4c 8d 1c d1                  	leaq	(%rcx,%rdx,8), %r11
  207c88: 4c 8b 14 d1                  	movq	(%rcx,%rdx,8), %r10
  207c8c: 31 c9                        	xorl	%ecx, %ecx
  207c8e: 48 b8 ff ff ff ff ff ff e0 ff	movabsq	$-8725724278030337, %rax # imm = 0xFFE0FFFFFFFFFFFF
  207c98: 4c 21 d0                     	andq	%r10, %rax
  207c9b: 4c 09 c0                     	orq	%r8, %rax
  207c9e: 49 89 03                     	movq	%rax, (%r11)
  207ca1: 4d 8b 19                     	movq	(%r9), %r11
  207ca4: 4d 8b 14 d3                  	movq	(%r11,%rdx,8), %r10
  207ca8: 48 b8 ff ff ff ff ff ff 7f f8	movabsq	$-540431955284459521, %rax # imm = 0xF87FFFFFFFFFFFFF
  207cb2: 4c 21 d0                     	andq	%r10, %rax
  207cb5: 49 89 04 d3                  	movq	%rax, (%r11,%rdx,8)
  207cb9: 48 c1 e2 0a                  	shlq	$10, %rdx
  207cbd: 49 03 11                     	addq	(%r9), %rdx
  207cc0: 83 e1 1f                     	andl	$31, %ecx
  207cc3: 48 c1 e1 05                  	shlq	$5, %rcx
  207cc7: 48 89 bc 11 00 00 08 00      	movq	%rdi, 524288(%rcx,%rdx)
  207ccf: 48 89 b4 11 08 00 08 00      	movq	%rsi, 524296(%rcx,%rdx)
  207cd7: c3                           	retq
  207cd8: 0f 1f 84 00 00 00 00 00      	nopl	(%rax,%rax)

0000000000207ce0 <__sanitizer_cov_trace_const_cmp8>:
  207ce0: 48 39 f7                     	cmpq	%rsi, %rdi
  207ce3: 0f 84 4e 01 00 00            	je	0x207e37 <__sanitizer_cov_trace_const_cmp8+0x157>
  207ce9: 4c 8d 0d 20 56 20 00         	leaq	2119200(%rip), %r9      # 0x40d310 <__afl_cmp_map>
  207cf0: 4d 8b 11                     	movq	(%r9), %r10
  207cf3: 4d 85 d2                     	testq	%r10, %r10
  207cf6: 0f 84 3b 01 00 00            	je	0x207e37 <__sanitizer_cov_trace_const_cmp8+0x157>
  207cfc: 49 bb 00 00 00 00 00 00 20 00	movabsq	$9007199254740992, %r11 # imm = 0x20000000000000
  207d06: 49 b8 00 00 00 00 00 00 07 00	movabsq	$1970324836974592, %r8  # imm = 0x7000000000000
  207d10: 48 8b 04 24                  	movq	(%rsp), %rax
  207d14: 48 c1 c0 20                  	rolq	$32, %rax
  207d18: 48 ba a2 d5 ec c5 74 b1 3a c7	movabsq	$-4090762196417718878, %rdx # imm = 0xC73AB174C5ECD5A2
  207d22: 48 31 c2                     	xorq	%rax, %rdx
  207d25: 48 89 d1                     	movq	%rdx, %rcx
  207d28: 48 c1 c1 18                  	rolq	$24, %rcx
  207d2c: 48 31 d1                     	xorq	%rdx, %rcx
  207d2f: 48 c1 c2 31                  	rolq	$49, %rdx
  207d33: 48 31 d1                     	xorq	%rdx, %rcx
  207d36: 48 ba 25 df 98 1e 65 1c b2 9f	movabsq	$-6939452855193903323, %rdx # imm = 0x9FB21C651E98DF25
  207d40: 48 0f af ca                  	imulq	%rdx, %rcx
  207d44: 48 89 c8                     	movq	%rcx, %rax
  207d47: 48 c1 e8 23                  	shrq	$35, %rax
  207d4b: 48 83 c0 08                  	addq	$8, %rax
  207d4f: 48 31 c8                     	xorq	%rcx, %rax
  207d52: 48 0f af c2                  	imulq	%rdx, %rax
  207d56: 48 89 c1                     	movq	%rax, %rcx
  207d59: 48 c1 e9 1c                  	shrq	$28, %rcx
  207d5d: 31 c1                        	xorl	%eax, %ecx
  207d5f: 0f b7 d1                     	movzwl	%cx, %edx
  207d62: 49 8b 04 d2                  	movq	(%r10,%rdx,8), %rax
  207d66: 48 b9 00 00 00 00 00 00 60 00	movabsq	$27021597764222976, %rcx # imm = 0x60000000000000
  207d70: 48 21 c1                     	andq	%rax, %rcx
  207d73: 4c 39 d9                     	cmpq	%r11, %rcx
  207d76: 75 3f                        	jne	0x207db7 <__sanitizer_cov_trace_const_cmp8+0xd7>
  207d78: 89 c1                        	movl	%eax, %ecx
  207d7a: 81 e1 ff ff ff 00            	andl	$16777215, %ecx         # imm = 0xFFFFFF
  207d80: 44 8d 58 01                  	leal	1(%rax), %r11d
  207d84: 41 81 e3 ff ff ff 00         	andl	$16777215, %r11d        # imm = 0xFFFFFF
  207d8b: 48 25 00 00 00 ff            	andq	$-16777216, %rax        # imm = 0xFF000000
  207d91: 4c 09 d8                     	orq	%r11, %rax
  207d94: 49 89 04 d2                  	movq	%rax, (%r10,%rdx,8)
  207d98: 4d 8b 19                     	movq	(%r9), %r11
  207d9b: 4d 8b 14 d3                  	movq	(%r11,%rdx,8), %r10
  207d9f: 48 b8 00 00 00 00 00 00 1f 00	movabsq	$8725724278030336, %rax # imm = 0x1F000000000000
  207da9: 4c 21 d0                     	andq	%r10, %rax
  207dac: 4c 39 c0                     	cmpq	%r8, %rax
  207daf: 73 57                        	jae	0x207e08 <__sanitizer_cov_trace_const_cmp8+0x128>
  207db1: 4d 8d 1c d3                  	leaq	(%r11,%rdx,8), %r11
  207db5: eb 37                        	jmp	0x207dee <__sanitizer_cov_trace_const_cmp8+0x10e>
  207db7: 48 b9 ff ff ff ff ff ff 9f ff	movabsq	$-27021597764222977, %rcx # imm = 0xFF9FFFFFFFFFFFFF
  207dc1: 48 21 c8                     	andq	%rcx, %rax
  207dc4: 4c 09 d8                     	orq	%r11, %rax
  207dc7: 49 89 04 d2                  	movq	%rax, (%r10,%rdx,8)
  207dcb: 49 8b 01                     	movq	(%r9), %rax
  207dce: 48 c7 c1 00 00 00 ff         	movq	$-16777216, %rcx        # imm = 0xFF000000
  207dd5: 48 23 0c d0                  	andq	(%rax,%rdx,8), %rcx
  207dd9: 48 83 c9 01                  	orq	$1, %rcx
  207ddd: 48 89 0c d0                  	movq	%rcx, (%rax,%rdx,8)
  207de1: 49 8b 09                     	movq	(%r9), %rcx
  207de4: 4c 8d 1c d1                  	leaq	(%rcx,%rdx,8), %r11
  207de8: 4c 8b 14 d1                  	movq	(%rcx,%rdx,8), %r10
  207dec: 31 c9                        	xorl	%ecx, %ecx
  207dee: 48 b8 ff ff ff ff ff ff e0 ff	movabsq	$-8725724278030337, %rax # imm = 0xFFE0FFFFFFFFFFFF
  207df8: 4c 21 d0                     	andq	%r10, %rax
  207dfb: 4c 09 c0                     	orq	%r8, %rax
  207dfe: 49 89 03                     	movq	%rax, (%r11)
  207e01: 4d 8b 19                     	movq	(%r9), %r11
  207e04: 4d 8b 14 d3                  	movq	(%r11,%rdx,8), %r10
  207e08: 48 b8 ff ff ff ff ff ff 7f f8	movabsq	$-540431955284459521, %rax # imm = 0xF87FFFFFFFFFFFFF
  207e12: 4c 21 d0                     	andq	%r10, %rax
  207e15: 49 89 04 d3                  	movq	%rax, (%r11,%rdx,8)
  207e19: 48 c1 e2 0a                  	shlq	$10, %rdx
  207e1d: 49 03 11                     	addq	(%r9), %rdx
  207e20: 83 e1 1f                     	andl	$31, %ecx
  207e23: 48 c1 e1 05                  	shlq	$5, %rcx
  207e27: 48 89 bc 11 00 00 08 00      	movq	%rdi, 524288(%rcx,%rdx)
  207e2f: 48 89 b4 11 08 00 08 00      	movq	%rsi, 524296(%rcx,%rdx)
  207e37: c3                           	retq
  207e38: 0f 1f 84 00 00 00 00 00      	nopl	(%rax,%rax)

0000000000207e40 <__sanitizer_cov_trace_cmp16>:
  207e40: 41 56                        	pushq	%r14
  207e42: 53                           	pushq	%rbx
  207e43: 4c 8d 0d c6 54 20 00         	leaq	2118854(%rip), %r9      # 0x40d310 <__afl_cmp_map>
  207e4a: 4d 8b 19                     	movq	(%r9), %r11
  207e4d: 4d 85 db                     	testq	%r11, %r11
  207e50: 0f 84 4f 01 00 00            	je	0x207fa5 <__sanitizer_cov_trace_cmp16+0x165>
  207e56: 49 ba 00 00 00 00 00 00 20 00	movabsq	$9007199254740992, %r10 # imm = 0x20000000000000
  207e60: 49 b8 00 00 00 00 00 00 0f 00	movabsq	$4222124650659840, %r8  # imm = 0xF000000000000
  207e6a: 48 8b 44 24 10               	movq	16(%rsp), %rax
  207e6f: 48 c1 c0 20                  	rolq	$32, %rax
  207e73: 48 bb a2 d5 ec c5 74 b1 3a c7	movabsq	$-4090762196417718878, %rbx # imm = 0xC73AB174C5ECD5A2
  207e7d: 48 31 c3                     	xorq	%rax, %rbx
  207e80: 49 89 de                     	movq	%rbx, %r14
  207e83: 49 c1 c6 18                  	rolq	$24, %r14
  207e87: 49 31 de                     	xorq	%rbx, %r14
  207e8a: 48 c1 c3 31                  	rolq	$49, %rbx
  207e8e: 49 31 de                     	xorq	%rbx, %r14
  207e91: 48 bb 25 df 98 1e 65 1c b2 9f	movabsq	$-6939452855193903323, %rbx # imm = 0x9FB21C651E98DF25
  207e9b: 4c 0f af f3                  	imulq	%rbx, %r14
  207e9f: 4c 89 f0                     	movq	%r14, %rax
  207ea2: 48 c1 e8 23                  	shrq	$35, %rax
  207ea6: 48 83 c0 08                  	addq	$8, %rax
  207eaa: 4c 31 f0                     	xorq	%r14, %rax
  207ead: 48 0f af c3                  	imulq	%rbx, %rax
  207eb1: 48 89 c3                     	movq	%rax, %rbx
  207eb4: 48 c1 eb 1c                  	shrq	$28, %rbx
  207eb8: 31 c3                        	xorl	%eax, %ebx
  207eba: 44 0f b7 f3                  	movzwl	%bx, %r14d
  207ebe: 4b 8b 1c f3                  	movq	(%r11,%r14,8), %rbx
  207ec2: 48 b8 00 00 00 00 00 00 60 00	movabsq	$27021597764222976, %rax # imm = 0x60000000000000
  207ecc: 48 21 d8                     	andq	%rbx, %rax
  207ecf: 4c 39 d0                     	cmpq	%r10, %rax
  207ed2: 75 3f                        	jne	0x207f13 <__sanitizer_cov_trace_cmp16+0xd3>
  207ed4: 41 89 da                     	movl	%ebx, %r10d
  207ed7: 41 81 e2 ff ff ff 00         	andl	$16777215, %r10d        # imm = 0xFFFFFF
  207ede: 8d 43 01                     	leal	1(%rbx), %eax
  207ee1: 25 ff ff ff 00               	andl	$16777215, %eax         # imm = 0xFFFFFF
  207ee6: 48 81 e3 00 00 00 ff         	andq	$-16777216, %rbx        # imm = 0xFF000000
  207eed: 48 09 c3                     	orq	%rax, %rbx
  207ef0: 4b 89 1c f3                  	movq	%rbx, (%r11,%r14,8)
  207ef4: 49 8b 19                     	movq	(%r9), %rbx
  207ef7: 4e 8b 1c f3                  	movq	(%rbx,%r14,8), %r11
  207efb: 48 b8 00 00 00 00 00 00 1f 00	movabsq	$8725724278030336, %rax # imm = 0x1F000000000000
  207f05: 4c 21 d8                     	andq	%r11, %rax
  207f08: 4c 39 c0                     	cmpq	%r8, %rax
  207f0b: 73 58                        	jae	0x207f65 <__sanitizer_cov_trace_cmp16+0x125>
  207f0d: 4a 8d 1c f3                  	leaq	(%rbx,%r14,8), %rbx
  207f11: eb 38                        	jmp	0x207f4b <__sanitizer_cov_trace_cmp16+0x10b>
  207f13: 48 b8 ff ff ff ff ff ff 9f ff	movabsq	$-27021597764222977, %rax # imm = 0xFF9FFFFFFFFFFFFF
  207f1d: 48 21 c3                     	andq	%rax, %rbx
  207f20: 4c 09 d3                     	orq	%r10, %rbx
  207f23: 4b 89 1c f3                  	movq	%rbx, (%r11,%r14,8)
  207f27: 49 8b 01                     	movq	(%r9), %rax
  207f2a: 48 c7 c3 00 00 00 ff         	movq	$-16777216, %rbx        # imm = 0xFF000000
  207f31: 4a 23 1c f0                  	andq	(%rax,%r14,8), %rbx
  207f35: 48 83 cb 01                  	orq	$1, %rbx
  207f39: 4a 89 1c f0                  	movq	%rbx, (%rax,%r14,8)
  207f3d: 49 8b 01                     	movq	(%r9), %rax
  207f40: 4a 8d 1c f0                  	leaq	(%rax,%r14,8), %rbx
  207f44: 4e 8b 1c f0                  	movq	(%rax,%r14,8), %r11
  207f48: 45 31 d2                     	xorl	%r10d, %r10d
  207f4b: 48 b8 ff ff ff ff ff ff e0 ff	movabsq	$-8725724278030337, %rax # imm = 0xFFE0FFFFFFFFFFFF
  207f55: 4c 21 d8                     	andq	%r11, %rax
  207f58: 4c 09 c0                     	orq	%r8, %rax
  207f5b: 48 89 03                     	movq	%rax, (%rbx)
  207f5e: 49 8b 19                     	movq	(%r9), %rbx
  207f61: 4e 8b 1c f3                  	movq	(%rbx,%r14,8), %r11
  207f65: 48 b8 ff ff ff ff ff ff 7f f8	movabsq	$-540431955284459521, %rax # imm = 0xF87FFFFFFFFFFFFF
  207f6f: 4c 21 d8                     	andq	%r11, %rax
  207f72: 4a 89 04 f3                  	movq	%rax, (%rbx,%r14,8)
  207f76: 41 83 e2 1f                  	andl	$31, %r10d
  207f7a: 49 c1 e6 0a                  	shlq	$10, %r14
  207f7e: 4d 03 31                     	addq	(%r9), %r14
  207f81: 49 c1 e2 05                  	shlq	$5, %r10
  207f85: 4b 89 bc 32 00 00 08 00      	movq	%rdi, 524288(%r10,%r14)
  207f8d: 4b 89 94 32 08 00 08 00      	movq	%rdx, 524296(%r10,%r14)
  207f95: 4b 89 b4 32 10 00 08 00      	movq	%rsi, 524304(%r10,%r14)
  207f9d: 4b 89 8c 32 18 00 08 00      	movq	%rcx, 524312(%r10,%r14)
  207fa5: 5b                           	popq	%rbx
  207fa6: 41 5e                        	popq	%r14
  207fa8: c3                           	retq
  207fa9: 0f 1f 80 00 00 00 00         	nopl	(%rax)

0000000000207fb0 <__sanitizer_cov_trace_const_cmp16>:
  207fb0: 41 56                        	pushq	%r14
  207fb2: 53                           	pushq	%rbx
  207fb3: 4c 8d 0d 56 53 20 00         	leaq	2118486(%rip), %r9      # 0x40d310 <__afl_cmp_map>
  207fba: 4d 8b 19                     	movq	(%r9), %r11
  207fbd: 4d 85 db                     	testq	%r11, %r11
  207fc0: 0f 84 4f 01 00 00            	je	0x208115 <__sanitizer_cov_trace_const_cmp16+0x165>
  207fc6: 49 ba 00 00 00 00 00 00 20 00	movabsq	$9007199254740992, %r10 # imm = 0x20000000000000
  207fd0: 49 b8 00 00 00 00 00 00 0f 00	movabsq	$4222124650659840, %r8  # imm = 0xF000000000000
  207fda: 48 8b 44 24 10               	movq	16(%rsp), %rax
  207fdf: 48 c1 c0 20                  	rolq	$32, %rax
  207fe3: 48 bb a2 d5 ec c5 74 b1 3a c7	movabsq	$-4090762196417718878, %rbx # imm = 0xC73AB174C5ECD5A2
  207fed: 48 31 c3                     	xorq	%rax, %rbx
  207ff0: 49 89 de                     	movq	%rbx, %r14
  207ff3: 49 c1 c6 18                  	rolq	$24, %r14
  207ff7: 49 31 de                     	xorq	%rbx, %r14
  207ffa: 48 c1 c3 31                  	rolq	$49, %rbx
  207ffe: 49 31 de                     	xorq	%rbx, %r14
  208001: 48 bb 25 df 98 1e 65 1c b2 9f	movabsq	$-6939452855193903323, %rbx # imm = 0x9FB21C651E98DF25
  20800b: 4c 0f af f3                  	imulq	%rbx, %r14
  20800f: 4c 89 f0                     	movq	%r14, %rax
  208012: 48 c1 e8 23                  	shrq	$35, %rax
  208016: 48 83 c0 08                  	addq	$8, %rax
  20801a: 4c 31 f0                     	xorq	%r14, %rax
  20801d: 48 0f af c3                  	imulq	%rbx, %rax
  208021: 48 89 c3                     	movq	%rax, %rbx
  208024: 48 c1 eb 1c                  	shrq	$28, %rbx
  208028: 31 c3                        	xorl	%eax, %ebx
  20802a: 44 0f b7 f3                  	movzwl	%bx, %r14d
  20802e: 4b 8b 1c f3                  	movq	(%r11,%r14,8), %rbx
  208032: 48 b8 00 00 00 00 00 00 60 00	movabsq	$27021597764222976, %rax # imm = 0x60000000000000
  20803c: 48 21 d8                     	andq	%rbx, %rax
  20803f: 4c 39 d0                     	cmpq	%r10, %rax
  208042: 75 3f                        	jne	0x208083 <__sanitizer_cov_trace_const_cmp16+0xd3>
  208044: 41 89 da                     	movl	%ebx, %r10d
  208047: 41 81 e2 ff ff ff 00         	andl	$16777215, %r10d        # imm = 0xFFFFFF
  20804e: 8d 43 01                     	leal	1(%rbx), %eax
  208051: 25 ff ff ff 00               	andl	$16777215, %eax         # imm = 0xFFFFFF
  208056: 48 81 e3 00 00 00 ff         	andq	$-16777216, %rbx        # imm = 0xFF000000
  20805d: 48 09 c3                     	orq	%rax, %rbx
  208060: 4b 89 1c f3                  	movq	%rbx, (%r11,%r14,8)
  208064: 49 8b 19                     	movq	(%r9), %rbx
  208067: 4e 8b 1c f3                  	movq	(%rbx,%r14,8), %r11
  20806b: 48 b8 00 00 00 00 00 00 1f 00	movabsq	$8725724278030336, %rax # imm = 0x1F000000000000
  208075: 4c 21 d8                     	andq	%r11, %rax
  208078: 4c 39 c0                     	cmpq	%r8, %rax
  20807b: 73 58                        	jae	0x2080d5 <__sanitizer_cov_trace_const_cmp16+0x125>
  20807d: 4a 8d 1c f3                  	leaq	(%rbx,%r14,8), %rbx
  208081: eb 38                        	jmp	0x2080bb <__sanitizer_cov_trace_const_cmp16+0x10b>
  208083: 48 b8 ff ff ff ff ff ff 9f ff	movabsq	$-27021597764222977, %rax # imm = 0xFF9FFFFFFFFFFFFF
  20808d: 48 21 c3                     	andq	%rax, %rbx
  208090: 4c 09 d3                     	orq	%r10, %rbx
  208093: 4b 89 1c f3                  	movq	%rbx, (%r11,%r14,8)
  208097: 49 8b 01                     	movq	(%r9), %rax
  20809a: 48 c7 c3 00 00 00 ff         	movq	$-16777216, %rbx        # imm = 0xFF000000
  2080a1: 4a 23 1c f0                  	andq	(%rax,%r14,8), %rbx
  2080a5: 48 83 cb 01                  	orq	$1, %rbx
  2080a9: 4a 89 1c f0                  	movq	%rbx, (%rax,%r14,8)
  2080ad: 49 8b 01                     	movq	(%r9), %rax
  2080b0: 4a 8d 1c f0                  	leaq	(%rax,%r14,8), %rbx
  2080b4: 4e 8b 1c f0                  	movq	(%rax,%r14,8), %r11
  2080b8: 45 31 d2                     	xorl	%r10d, %r10d
  2080bb: 48 b8 ff ff ff ff ff ff e0 ff	movabsq	$-8725724278030337, %rax # imm = 0xFFE0FFFFFFFFFFFF
  2080c5: 4c 21 d8                     	andq	%r11, %rax
  2080c8: 4c 09 c0                     	orq	%r8, %rax
  2080cb: 48 89 03                     	movq	%rax, (%rbx)
  2080ce: 49 8b 19                     	movq	(%r9), %rbx
  2080d1: 4e 8b 1c f3                  	movq	(%rbx,%r14,8), %r11
  2080d5: 48 b8 ff ff ff ff ff ff 7f f8	movabsq	$-540431955284459521, %rax # imm = 0xF87FFFFFFFFFFFFF
  2080df: 4c 21 d8                     	andq	%r11, %rax
  2080e2: 4a 89 04 f3                  	movq	%rax, (%rbx,%r14,8)
  2080e6: 41 83 e2 1f                  	andl	$31, %r10d
  2080ea: 49 c1 e6 0a                  	shlq	$10, %r14
  2080ee: 4d 03 31                     	addq	(%r9), %r14
  2080f1: 49 c1 e2 05                  	shlq	$5, %r10
  2080f5: 4b 89 bc 32 00 00 08 00      	movq	%rdi, 524288(%r10,%r14)
  2080fd: 4b 89 94 32 08 00 08 00      	movq	%rdx, 524296(%r10,%r14)
  208105: 4b 89 b4 32 10 00 08 00      	movq	%rsi, 524304(%r10,%r14)
  20810d: 4b 89 8c 32 18 00 08 00      	movq	%rcx, 524312(%r10,%r14)
  208115: 5b                           	popq	%rbx
  208116: 41 5e                        	popq	%r14
  208118: c3                           	retq
  208119: 0f 1f 80 00 00 00 00         	nopl	(%rax)

0000000000208120 <__sanitizer_cov_trace_switch>:
  208120: 55                           	pushq	%rbp
  208121: 41 57                        	pushq	%r15
  208123: 41 56                        	pushq	%r14
  208125: 41 55                        	pushq	%r13
  208127: 41 54                        	pushq	%r12
  208129: 53                           	pushq	%rbx
  20812a: 4c 8d 25 df 51 20 00         	leaq	2118111(%rip), %r12     # 0x40d310 <__afl_cmp_map>
  208131: 49 8b 2c 24                  	movq	(%r12), %rbp
  208135: 48 85 ed                     	testq	%rbp, %rbp
  208138: 0f 84 a0 01 00 00            	je	0x2082de <__sanitizer_cov_trace_switch+0x1be>
  20813e: 48 83 3e 00                  	cmpq	$0, (%rsi)
  208142: 0f 84 96 01 00 00            	je	0x2082de <__sanitizer_cov_trace_switch+0x1be>
  208148: 49 ba 25 df 98 1e 65 1c b2 9f	movabsq	$-6939452855193903323, %r10 # imm = 0x9FB21C651E98DF25
  208152: 49 b9 00 00 00 00 00 00 20 00	movabsq	$9007199254740992, %r9  # imm = 0x20000000000000
  20815c: 49 b8 00 00 00 00 00 00 07 00	movabsq	$1970324836974592, %r8  # imm = 0x7000000000000
  208166: 4c 8b 6c 24 30               	movq	48(%rsp), %r13
  20816b: 31 c9                        	xorl	%ecx, %ecx
  20816d: e9 b9 00 00 00               	jmp	0x20822b <__sanitizer_cov_trace_switch+0x10b>
  208172: 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00    	nopw	%cs:(%rax,%rax)
  208180: 48 b8 ff ff ff ff ff ff 9f ff	movabsq	$-27021597764222977, %rax # imm = 0xFF9FFFFFFFFFFFFF
  20818a: 49 21 c7                     	andq	%rax, %r15
  20818d: 4d 09 cf                     	orq	%r9, %r15
  208190: 4e 89 7c f5 00               	movq	%r15, (%rbp,%r14,8)
  208195: 49 8b 04 24                  	movq	(%r12), %rax
  208199: 4a 8b 14 f0                  	movq	(%rax,%r14,8), %rdx
  20819d: 48 c7 c5 00 00 00 ff         	movq	$-16777216, %rbp        # imm = 0xFF000000
  2081a4: 48 21 ea                     	andq	%rbp, %rdx
  2081a7: 48 83 ca 01                  	orq	$1, %rdx
  2081ab: 4a 89 14 f0                  	movq	%rdx, (%rax,%r14,8)
  2081af: 49 8b 04 24                  	movq	(%r12), %rax
  2081b3: 4a 8d 1c f0                  	leaq	(%rax,%r14,8), %rbx
  2081b7: 4a 8b 2c f0                  	movq	(%rax,%r14,8), %rbp
  2081bb: 45 31 db                     	xorl	%r11d, %r11d
  2081be: 48 b8 ff ff ff ff ff ff e0 ff	movabsq	$-8725724278030337, %rax # imm = 0xFFE0FFFFFFFFFFFF
  2081c8: 48 21 c5                     	andq	%rax, %rbp
  2081cb: 4c 09 c5                     	orq	%r8, %rbp
  2081ce: 48 89 2b                     	movq	%rbp, (%rbx)
  2081d1: 49 8b 04 24                  	movq	(%r12), %rax
  2081d5: 4a 8b 14 f0                  	movq	(%rax,%r14,8), %rdx
  2081d9: 48 bb ff ff ff ff ff ff 7f f8	movabsq	$-540431955284459521, %rbx # imm = 0xF87FFFFFFFFFFFFF
  2081e3: 48 21 da                     	andq	%rbx, %rdx
  2081e6: 48 bb 00 00 00 00 00 00 80 00	movabsq	$36028797018963968, %rbx # imm = 0x80000000000000
  2081f0: 48 09 da                     	orq	%rbx, %rdx
  2081f3: 4a 89 14 f0                  	movq	%rdx, (%rax,%r14,8)
  2081f7: 41 83 e3 1f                  	andl	$31, %r11d
  2081fb: 49 8b 2c 24                  	movq	(%r12), %rbp
  2081ff: 49 c1 e6 0a                  	shlq	$10, %r14
  208203: 49 01 ee                     	addq	%rbp, %r14
  208206: 49 c1 e3 05                  	shlq	$5, %r11
  20820a: 4b 89 bc 33 00 00 08 00      	movq	%rdi, 524288(%r11,%r14)
  208212: 48 8b 44 ce 10               	movq	16(%rsi,%rcx,8), %rax
  208217: 4b 89 84 33 08 00 08 00      	movq	%rax, 524296(%r11,%r14)
  20821f: 48 ff c1                     	incq	%rcx
  208222: 48 3b 0e                     	cmpq	(%rsi), %rcx
  208225: 0f 83 b3 00 00 00            	jae	0x2082de <__sanitizer_cov_trace_switch+0x1be>
  20822b: 4a 8d 14 29                  	leaq	(%rcx,%r13), %rdx
  20822f: 48 c1 c2 20                  	rolq	$32, %rdx
  208233: 48 b8 a2 d5 ec c5 74 b1 3a c7	movabsq	$-4090762196417718878, %rax # imm = 0xC73AB174C5ECD5A2
  20823d: 48 31 c2                     	xorq	%rax, %rdx
  208240: 48 89 d3                     	movq	%rdx, %rbx
  208243: 48 c1 c3 18                  	rolq	$24, %rbx
  208247: 48 31 d3                     	xorq	%rdx, %rbx
  20824a: 48 c1 c2 31                  	rolq	$49, %rdx
  20824e: 48 31 d3                     	xorq	%rdx, %rbx
  208251: 49 0f af da                  	imulq	%r10, %rbx
  208255: 48 89 d8                     	movq	%rbx, %rax
  208258: 48 c1 e8 23                  	shrq	$35, %rax
  20825c: 48 83 c0 08                  	addq	$8, %rax
  208260: 48 31 d8                     	xorq	%rbx, %rax
  208263: 49 0f af c2                  	imulq	%r10, %rax
  208267: 48 89 c2                     	movq	%rax, %rdx
  20826a: 48 c1 ea 1c                  	shrq	$28, %rdx
  20826e: 31 c2                        	xorl	%eax, %edx
  208270: 44 0f b7 f2                  	movzwl	%dx, %r14d
  208274: 4e 8b 7c f5 00               	movq	(%rbp,%r14,8), %r15
  208279: 4c 89 f8                     	movq	%r15, %rax
  20827c: 48 ba 00 00 00 00 00 00 60 00	movabsq	$27021597764222976, %rdx # imm = 0x60000000000000
  208286: 48 21 d0                     	andq	%rdx, %rax
  208289: 4c 39 c8                     	cmpq	%r9, %rax
  20828c: 0f 85 ee fe ff ff            	jne	0x208180 <__sanitizer_cov_trace_switch+0x60>
  208292: 45 89 fb                     	movl	%r15d, %r11d
  208295: 41 81 e3 ff ff ff 00         	andl	$16777215, %r11d        # imm = 0xFFFFFF
  20829c: 41 8d 47 01                  	leal	1(%r15), %eax
  2082a0: 25 ff ff ff 00               	andl	$16777215, %eax         # imm = 0xFFFFFF
  2082a5: 49 81 e7 00 00 00 ff         	andq	$-16777216, %r15        # imm = 0xFF000000
  2082ac: 49 09 c7                     	orq	%rax, %r15
  2082af: 4e 89 7c f5 00               	movq	%r15, (%rbp,%r14,8)
  2082b4: 49 8b 1c 24                  	movq	(%r12), %rbx
  2082b8: 4a 8b 2c f3                  	movq	(%rbx,%r14,8), %rbp
  2082bc: 48 89 e8                     	movq	%rbp, %rax
  2082bf: 48 ba 00 00 00 00 00 00 1f 00	movabsq	$8725724278030336, %rdx # imm = 0x1F000000000000
  2082c9: 48 21 d0                     	andq	%rdx, %rax
  2082cc: 4c 39 c0                     	cmpq	%r8, %rax
  2082cf: 0f 83 fc fe ff ff            	jae	0x2081d1 <__sanitizer_cov_trace_switch+0xb1>
  2082d5: 4a 8d 1c f3                  	leaq	(%rbx,%r14,8), %rbx
  2082d9: e9 e0 fe ff ff               	jmp	0x2081be <__sanitizer_cov_trace_switch+0x9e>
  2082de: 5b                           	popq	%rbx
  2082df: 41 5c                        	popq	%r12
  2082e1: 41 5d                        	popq	%r13
  2082e3: 41 5e                        	popq	%r14
  2082e5: 41 5f                        	popq	%r15
  2082e7: 5d                           	popq	%rbp
  2082e8: c3                           	retq
  2082e9: 0f 1f 80 00 00 00 00         	nopl	(%rax)

00000000002082f0 <__asan_region_is_poisoned>:
  2082f0: 31 c0                        	xorl	%eax, %eax
  2082f2: c3                           	retq
  2082f3: 66 66 66 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

0000000000208300 <__cmplog_rtn_hook_strn>:
  208300: 55                           	pushq	%rbp
  208301: 41 57                        	pushq	%r15
  208303: 41 56                        	pushq	%r14
  208305: 41 55                        	pushq	%r13
  208307: 41 54                        	pushq	%r12
  208309: 53                           	pushq	%rbx
  20830a: 50                           	pushq	%rax
  20830b: 48 85 d2                     	testq	%rdx, %rdx
  20830e: 0f 84 82 01 00 00            	je	0x208496 <__cmplog_rtn_hook_strn+0x196>
  208314: 48 8d 05 f5 4f 20 00         	leaq	2117621(%rip), %rax     # 0x40d310 <__afl_cmp_map>
  20831b: 48 83 38 00                  	cmpq	$0, (%rax)
  20831f: 0f 84 71 01 00 00            	je	0x208496 <__cmplog_rtn_hook_strn+0x196>
  208325: 49 89 f6                     	movq	%rsi, %r14
  208328: 49 89 ff                     	movq	%rdi, %r15
  20832b: 48 83 fa 1f                  	cmpq	$31, %rdx
  20832f: 41 bc 1f 00 00 00            	movl	$31, %r12d
  208335: 4c 0f 42 e2                  	cmovbq	%rdx, %r12
  208339: 4c 89 e6                     	movq	%r12, %rsi
  20833c: e8 1f 2b 00 00               	callq	0x20ae60 <strnlen@plt>
  208341: 48 89 c3                     	movq	%rax, %rbx
  208344: 41 89 dd                     	movl	%ebx, %r13d
  208347: 83 fb 1e                     	cmpl	$30, %ebx
  20834a: 7f 7c                        	jg	0x2083c8 <__cmplog_rtn_hook_strn+0xc8>
  20834c: 45 31 ed                     	xorl	%r13d, %r13d
  20834f: 4d 85 ff                     	testq	%r15, %r15
  208352: 74 74                        	je	0x2083c8 <__cmplog_rtn_hook_strn+0xc8>
  208354: 48 c1 e3 20                  	shlq	$32, %rbx
  208358: 48 b8 00 00 00 00 01 00 00 00	movabsq	$4294967296, %rax       # imm = 0x100000000
  208362: 48 01 c3                     	addq	%rax, %rbx
  208365: 48 c1 fb 20                  	sarq	$32, %rbx
  208369: 4c 89 ff                     	movq	%r15, %rdi
  20836c: 48 89 de                     	movq	%rbx, %rsi
  20836f: e8 7c ff ff ff               	callq	0x2082f0 <__asan_region_is_poisoned>
  208374: 48 85 c0                     	testq	%rax, %rax
  208377: 75 4f                        	jne	0x2083c8 <__cmplog_rtn_hook_strn+0xc8>
  208379: 8b 35 79 4d 00 00            	movl	19833(%rip), %esi       # 0x20d0f8 <__afl_dummy_fd+0x4>
  20837f: 45 31 ed                     	xorl	%r13d, %r13d
  208382: bf 01 00 00 00               	movl	$1, %edi
  208387: 4c 89 fa                     	movq	%r15, %rdx
  20838a: 48 89 d9                     	movq	%rbx, %rcx
  20838d: 31 c0                        	xorl	%eax, %eax
  20838f: e8 4c 29 00 00               	callq	0x20ace0 <syscall@plt>
  208394: 48 85 c0                     	testq	%rax, %rax
  208397: 7e 2f                        	jle	0x2083c8 <__cmplog_rtn_hook_strn+0xc8>
  208399: 48 89 c5                     	movq	%rax, %rbp
  20839c: 48 39 d8                     	cmpq	%rbx, %rax
  20839f: 77 27                        	ja	0x2083c8 <__cmplog_rtn_hook_strn+0xc8>
  2083a1: bf 1e 00 00 00               	movl	$30, %edi
  2083a6: e8 c5 2a 00 00               	callq	0x20ae70 <sysconf@plt>
  2083ab: 48 89 c1                     	movq	%rax, %rcx
  2083ae: 48 f7 d9                     	negq	%rcx
  2083b1: 4c 21 f9                     	andq	%r15, %rcx
  2083b4: 48 01 c1                     	addq	%rax, %rcx
  2083b7: 4c 01 fb                     	addq	%r15, %rbx
  2083ba: 89 c8                        	movl	%ecx, %eax
  2083bc: 44 29 f8                     	subl	%r15d, %eax
  2083bf: 48 39 d9                     	cmpq	%rbx, %rcx
  2083c2: 0f 46 e8                     	cmovbel	%eax, %ebp
  2083c5: 41 89 ed                     	movl	%ebp, %r13d
  2083c8: 4c 89 f7                     	movq	%r14, %rdi
  2083cb: 4c 89 e6                     	movq	%r12, %rsi
  2083ce: e8 8d 2a 00 00               	callq	0x20ae60 <strnlen@plt>
  2083d3: 48 89 c3                     	movq	%rax, %rbx
  2083d6: 41 89 dc                     	movl	%ebx, %r12d
  2083d9: 83 fb 1e                     	cmpl	$30, %ebx
  2083dc: 4c 8d 05 2d 4f 20 00         	leaq	2117421(%rip), %r8      # 0x40d310 <__afl_cmp_map>
  2083e3: 0f 8f 9e 00 00 00            	jg	0x208487 <__cmplog_rtn_hook_strn+0x187>
  2083e9: 45 31 e4                     	xorl	%r12d, %r12d
  2083ec: 4d 85 ff                     	testq	%r15, %r15
  2083ef: 0f 84 92 00 00 00            	je	0x208487 <__cmplog_rtn_hook_strn+0x187>
  2083f5: 48 c1 e3 20                  	shlq	$32, %rbx
  2083f9: 48 b8 00 00 00 00 01 00 00 00	movabsq	$4294967296, %rax       # imm = 0x100000000
  208403: 48 01 c3                     	addq	%rax, %rbx
  208406: 48 c1 fb 20                  	sarq	$32, %rbx
  20840a: 4c 89 ff                     	movq	%r15, %rdi
  20840d: 48 89 de                     	movq	%rbx, %rsi
  208410: e8 db fe ff ff               	callq	0x2082f0 <__asan_region_is_poisoned>
  208415: 4c 8d 05 f4 4e 20 00         	leaq	2117364(%rip), %r8      # 0x40d310 <__afl_cmp_map>
  20841c: 48 85 c0                     	testq	%rax, %rax
  20841f: 75 66                        	jne	0x208487 <__cmplog_rtn_hook_strn+0x187>
  208421: 8b 35 d1 4c 00 00            	movl	19665(%rip), %esi       # 0x20d0f8 <__afl_dummy_fd+0x4>
  208427: 45 31 e4                     	xorl	%r12d, %r12d
  20842a: bf 01 00 00 00               	movl	$1, %edi
  20842f: 4c 89 fa                     	movq	%r15, %rdx
  208432: 48 89 d9                     	movq	%rbx, %rcx
  208435: 31 c0                        	xorl	%eax, %eax
  208437: e8 a4 28 00 00               	callq	0x20ace0 <syscall@plt>
  20843c: 48 85 c0                     	testq	%rax, %rax
  20843f: 7e 3f                        	jle	0x208480 <__cmplog_rtn_hook_strn+0x180>
  208441: 48 89 c5                     	movq	%rax, %rbp
  208444: 48 39 d8                     	cmpq	%rbx, %rax
  208447: 4c 8d 05 c2 4e 20 00         	leaq	2117314(%rip), %r8      # 0x40d310 <__afl_cmp_map>
  20844e: 77 37                        	ja	0x208487 <__cmplog_rtn_hook_strn+0x187>
  208450: bf 1e 00 00 00               	movl	$30, %edi
  208455: e8 16 2a 00 00               	callq	0x20ae70 <sysconf@plt>
  20845a: 4c 8d 05 af 4e 20 00         	leaq	2117295(%rip), %r8      # 0x40d310 <__afl_cmp_map>
  208461: 48 89 c1                     	movq	%rax, %rcx
  208464: 48 f7 d9                     	negq	%rcx
  208467: 4c 21 f9                     	andq	%r15, %rcx
  20846a: 48 01 c1                     	addq	%rax, %rcx
  20846d: 4c 01 fb                     	addq	%r15, %rbx
  208470: 89 c8                        	movl	%ecx, %eax
  208472: 44 29 f8                     	subl	%r15d, %eax
  208475: 48 39 d9                     	cmpq	%rbx, %rcx
  208478: 0f 46 e8                     	cmovbel	%eax, %ebp
  20847b: 41 89 ec                     	movl	%ebp, %r12d
  20847e: eb 07                        	jmp	0x208487 <__cmplog_rtn_hook_strn+0x187>
  208480: 4c 8d 05 89 4e 20 00         	leaq	2117257(%rip), %r8      # 0x40d310 <__afl_cmp_map>
  208487: 45 39 e5                     	cmpl	%r12d, %r13d
  20848a: 44 89 e0                     	movl	%r12d, %eax
  20848d: 41 0f 4f c5                  	cmovgl	%r13d, %eax
  208491: 83 f8 02                     	cmpl	$2, %eax
  208494: 7d 0f                        	jge	0x2084a5 <__cmplog_rtn_hook_strn+0x1a5>
  208496: 48 83 c4 08                  	addq	$8, %rsp
  20849a: 5b                           	popq	%rbx
  20849b: 41 5c                        	popq	%r12
  20849d: 41 5d                        	popq	%r13
  20849f: 41 5e                        	popq	%r14
  2084a1: 41 5f                        	popq	%r15
  2084a3: 5d                           	popq	%rbp
  2084a4: c3                           	retq
  2084a5: 48 8b 4c 24 38               	movq	56(%rsp), %rcx
  2084aa: 48 c1 c1 20                  	rolq	$32, %rcx
  2084ae: 48 ba a2 d5 ec c5 74 b1 3a c7	movabsq	$-4090762196417718878, %rdx # imm = 0xC73AB174C5ECD5A2
  2084b8: 48 31 ca                     	xorq	%rcx, %rdx
  2084bb: 48 89 d6                     	movq	%rdx, %rsi
  2084be: 48 c1 c6 18                  	rolq	$24, %rsi
  2084c2: 48 31 d6                     	xorq	%rdx, %rsi
  2084c5: 48 c1 c2 31                  	rolq	$49, %rdx
  2084c9: 48 b9 00 00 00 00 00 00 40 00	movabsq	$18014398509481984, %rcx # imm = 0x40000000000000
  2084d3: 48 31 d6                     	xorq	%rdx, %rsi
  2084d6: 48 ba 25 df 98 1e 65 1c b2 9f	movabsq	$-6939452855193903323, %rdx # imm = 0x9FB21C651E98DF25
  2084e0: 48 0f af f2                  	imulq	%rdx, %rsi
  2084e4: 48 89 f7                     	movq	%rsi, %rdi
  2084e7: 48 c1 ef 23                  	shrq	$35, %rdi
  2084eb: 48 83 c7 08                  	addq	$8, %rdi
  2084ef: 48 31 f7                     	xorq	%rsi, %rdi
  2084f2: 48 0f af fa                  	imulq	%rdx, %rdi
  2084f6: 48 89 fa                     	movq	%rdi, %rdx
  2084f9: 48 c1 ea 1c                  	shrq	$28, %rdx
  2084fd: 31 fa                        	xorl	%edi, %edx
  2084ff: 0f b7 da                     	movzwl	%dx, %ebx
  208502: 49 8b 10                     	movq	(%r8), %rdx
  208505: 48 8b 34 da                  	movq	(%rdx,%rbx,8), %rsi
  208509: 48 bf 00 00 00 00 00 00 60 00	movabsq	$27021597764222976, %rdi # imm = 0x60000000000000
  208513: 48 21 f7                     	andq	%rsi, %rdi
  208516: 48 39 cf                     	cmpq	%rcx, %rdi
  208519: 75 3a                        	jne	0x208555 <__cmplog_rtn_hook_strn+0x255>
  20851b: 89 f5                        	movl	%esi, %ebp
  20851d: 81 e5 ff ff ff 00            	andl	$16777215, %ebp         # imm = 0xFFFFFF
  208523: 8d 4e 01                     	leal	1(%rsi), %ecx
  208526: 81 e1 ff ff ff 00            	andl	$16777215, %ecx         # imm = 0xFFFFFF
  20852c: 48 81 e6 00 00 00 ff         	andq	$-16777216, %rsi        # imm = 0xFF000000
  208533: 48 09 ce                     	orq	%rcx, %rsi
  208536: 48 89 34 da                  	movq	%rsi, (%rdx,%rbx,8)
  20853a: 49 8b 10                     	movq	(%r8), %rdx
  20853d: 48 8b 0c da                  	movq	(%rdx,%rbx,8), %rcx
  208541: 48 89 ce                     	movq	%rcx, %rsi
  208544: 48 c1 ee 30                  	shrq	$48, %rsi
  208548: 83 e6 1f                     	andl	$31, %esi
  20854b: 39 c6                        	cmpl	%eax, %esi
  20854d: 73 5a                        	jae	0x2085a9 <__cmplog_rtn_hook_strn+0x2a9>
  20854f: 48 8d 14 da                  	leaq	(%rdx,%rbx,8), %rdx
  208553: eb 37                        	jmp	0x20858c <__cmplog_rtn_hook_strn+0x28c>
  208555: 48 bf ff ff ff ff ff ff 9f ff	movabsq	$-27021597764222977, %rdi # imm = 0xFF9FFFFFFFFFFFFF
  20855f: 48 21 fe                     	andq	%rdi, %rsi
  208562: 48 09 ce                     	orq	%rcx, %rsi
  208565: 48 89 34 da                  	movq	%rsi, (%rdx,%rbx,8)
  208569: 49 8b 08                     	movq	(%r8), %rcx
  20856c: 48 c7 c2 00 00 00 ff         	movq	$-16777216, %rdx        # imm = 0xFF000000
  208573: 48 23 14 d9                  	andq	(%rcx,%rbx,8), %rdx
  208577: 48 83 ca 01                  	orq	$1, %rdx
  20857b: 48 89 14 d9                  	movq	%rdx, (%rcx,%rbx,8)
  20857f: 49 8b 08                     	movq	(%r8), %rcx
  208582: 48 8d 14 d9                  	leaq	(%rcx,%rbx,8), %rdx
  208586: 48 8b 0c d9                  	movq	(%rcx,%rbx,8), %rcx
  20858a: 31 ed                        	xorl	%ebp, %ebp
  20858c: 8d 70 ff                     	leal	-1(%rax), %esi
  20858f: 83 e6 1f                     	andl	$31, %esi
  208592: 48 c1 e6 30                  	shlq	$48, %rsi
  208596: 48 bf ff ff ff ff ff ff e0 ff	movabsq	$-8725724278030337, %rdi # imm = 0xFFE0FFFFFFFFFFFF
  2085a0: 48 21 cf                     	andq	%rcx, %rdi
  2085a3: 48 09 f7                     	orq	%rsi, %rdi
  2085a6: 48 89 3a                     	movq	%rdi, (%rdx)
  2085a9: 48 c1 e3 0a                  	shlq	$10, %rbx
  2085ad: 49 03 18                     	addq	(%r8), %rbx
  2085b0: 83 e5 07                     	andl	$7, %ebp
  2085b3: 34 80                        	xorb	$-128, %al
  2085b5: 48 c1 e5 06                  	shlq	$6, %rbp
  2085b9: 48 8d 3c 2b                  	leaq	(%rbx,%rbp), %rdi
  2085bd: 48 81 c7 00 00 08 00         	addq	$524288, %rdi           # imm = 0x80000
  2085c4: 88 84 1d 1f 00 08 00         	movb	%al, 524319(%rbp,%rbx)
  2085cb: 88 84 1d 3f 00 08 00         	movb	%al, 524351(%rbp,%rbx)
  2085d2: 49 63 d5                     	movslq	%r13d, %rdx
  2085d5: 4c 89 fe                     	movq	%r15, %rsi
  2085d8: e8 a3 28 00 00               	callq	0x20ae80 <memcpy@plt>
  2085dd: 48 8d 3c 2b                  	leaq	(%rbx,%rbp), %rdi
  2085e1: 48 81 c7 20 00 08 00         	addq	$524320, %rdi           # imm = 0x80020
  2085e8: 49 63 d4                     	movslq	%r12d, %rdx
  2085eb: 4c 89 f6                     	movq	%r14, %rsi
  2085ee: 48 83 c4 08                  	addq	$8, %rsp
  2085f2: 5b                           	popq	%rbx
  2085f3: 41 5c                        	popq	%r12
  2085f5: 41 5d                        	popq	%r13
  2085f7: 41 5e                        	popq	%r14
  2085f9: 41 5f                        	popq	%r15
  2085fb: 5d                           	popq	%rbp
  2085fc: e9 7f 28 00 00               	jmp	0x20ae80 <memcpy@plt>
  208601: 66 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%rax,%rax)

0000000000208610 <__cmplog_rtn_hook_str>:
  208610: 55                           	pushq	%rbp
  208611: 41 57                        	pushq	%r15
  208613: 41 56                        	pushq	%r14
  208615: 41 55                        	pushq	%r13
  208617: 41 54                        	pushq	%r12
  208619: 53                           	pushq	%rbx
  20861a: 48 83 ec 18                  	subq	$24, %rsp
  20861e: 4c 8d 3d eb 4c 20 00         	leaq	2116843(%rip), %r15     # 0x40d310 <__afl_cmp_map>
  208625: 49 8b 2f                     	movq	(%r15), %rbp
  208628: 48 85 ed                     	testq	%rbp, %rbp
  20862b: 74 44                        	je	0x208671 <__cmplog_rtn_hook_str+0x61>
  20862d: 49 89 fc                     	movq	%rdi, %r12
  208630: 48 85 ff                     	testq	%rdi, %rdi
  208633: 74 3c                        	je	0x208671 <__cmplog_rtn_hook_str+0x61>
  208635: 48 89 f3                     	movq	%rsi, %rbx
  208638: 48 85 f6                     	testq	%rsi, %rsi
  20863b: 74 34                        	je	0x208671 <__cmplog_rtn_hook_str+0x61>
  20863d: be 1e 00 00 00               	movl	$30, %esi
  208642: 4c 89 e7                     	movq	%r12, %rdi
  208645: e8 16 28 00 00               	callq	0x20ae60 <strnlen@plt>
  20864a: 49 89 c5                     	movq	%rax, %r13
  20864d: 44 8d 70 01                  	leal	1(%rax), %r14d
  208651: be 1e 00 00 00               	movl	$30, %esi
  208656: 48 89 df                     	movq	%rbx, %rdi
  208659: e8 02 28 00 00               	callq	0x20ae60 <strnlen@plt>
  20865e: 44 8d 48 01                  	leal	1(%rax), %r9d
  208662: 45 39 ce                     	cmpl	%r9d, %r14d
  208665: 44 89 c9                     	movl	%r9d, %ecx
  208668: 41 0f 4f ce                  	cmovgl	%r14d, %ecx
  20866c: 83 f9 03                     	cmpl	$3, %ecx
  20866f: 7d 0f                        	jge	0x208680 <__cmplog_rtn_hook_str+0x70>
  208671: 48 83 c4 18                  	addq	$24, %rsp
  208675: 5b                           	popq	%rbx
  208676: 41 5c                        	popq	%r12
  208678: 41 5d                        	popq	%r13
  20867a: 41 5e                        	popq	%r14
  20867c: 41 5f                        	popq	%r15
  20867e: 5d                           	popq	%rbp
  20867f: c3                           	retq
  208680: 4d 89 ea                     	movq	%r13, %r10
  208683: 48 89 5c 24 10               	movq	%rbx, 16(%rsp)
  208688: 49 b8 00 00 00 00 00 00 40 00	movabsq	$18014398509481984, %r8 # imm = 0x40000000000000
  208692: 48 8b 74 24 48               	movq	72(%rsp), %rsi
  208697: 48 c1 c6 20                  	rolq	$32, %rsi
  20869b: 48 bf a2 d5 ec c5 74 b1 3a c7	movabsq	$-4090762196417718878, %rdi # imm = 0xC73AB174C5ECD5A2
  2086a5: 48 31 f7                     	xorq	%rsi, %rdi
  2086a8: 48 89 fa                     	movq	%rdi, %rdx
  2086ab: 48 c1 c2 18                  	rolq	$24, %rdx
  2086af: 48 31 fa                     	xorq	%rdi, %rdx
  2086b2: 48 c1 c7 31                  	rolq	$49, %rdi
  2086b6: 48 31 fa                     	xorq	%rdi, %rdx
  2086b9: 48 bf 25 df 98 1e 65 1c b2 9f	movabsq	$-6939452855193903323, %rdi # imm = 0x9FB21C651E98DF25
  2086c3: 48 0f af d7                  	imulq	%rdi, %rdx
  2086c7: 48 89 d6                     	movq	%rdx, %rsi
  2086ca: 48 c1 ee 23                  	shrq	$35, %rsi
  2086ce: 48 83 c6 08                  	addq	$8, %rsi
  2086d2: 48 31 d6                     	xorq	%rdx, %rsi
  2086d5: 48 0f af f7                  	imulq	%rdi, %rsi
  2086d9: 48 89 f2                     	movq	%rsi, %rdx
  2086dc: 48 c1 ea 1c                  	shrq	$28, %rdx
  2086e0: 31 f2                        	xorl	%esi, %edx
  2086e2: 44 0f b7 ea                  	movzwl	%dx, %r13d
  2086e6: 4a 8b 74 ed 00               	movq	(%rbp,%r13,8), %rsi
  2086eb: 48 ba 00 00 00 00 00 00 60 00	movabsq	$27021597764222976, %rdx # imm = 0x60000000000000
  2086f5: 48 21 f2                     	andq	%rsi, %rdx
  2086f8: 4c 39 c2                     	cmpq	%r8, %rdx
  2086fb: 44 89 4c 24 0c               	movl	%r9d, 12(%rsp)
  208700: 75 43                        	jne	0x208745 <__cmplog_rtn_hook_str+0x135>
  208702: 4c 89 ff                     	movq	%r15, %rdi
  208705: 41 89 f7                     	movl	%esi, %r15d
  208708: 41 81 e7 ff ff ff 00         	andl	$16777215, %r15d        # imm = 0xFFFFFF
  20870f: 8d 56 01                     	leal	1(%rsi), %edx
  208712: 81 e2 ff ff ff 00            	andl	$16777215, %edx         # imm = 0xFFFFFF
  208718: 48 81 e6 00 00 00 ff         	andq	$-16777216, %rsi        # imm = 0xFF000000
  20871f: 48 09 d6                     	orq	%rdx, %rsi
  208722: 4a 89 74 ed 00               	movq	%rsi, (%rbp,%r13,8)
  208727: 48 89 fd                     	movq	%rdi, %rbp
  20872a: 48 8b 37                     	movq	(%rdi), %rsi
  20872d: 4a 8b 14 ee                  	movq	(%rsi,%r13,8), %rdx
  208731: 48 89 d7                     	movq	%rdx, %rdi
  208734: 48 c1 ef 30                  	shrq	$48, %rdi
  208738: 83 e7 1f                     	andl	$31, %edi
  20873b: 39 cf                        	cmpl	%ecx, %edi
  20873d: 73 5e                        	jae	0x20879d <__cmplog_rtn_hook_str+0x18d>
  20873f: 4a 8d 34 ee                  	leaq	(%rsi,%r13,8), %rsi
  208743: eb 3c                        	jmp	0x208781 <__cmplog_rtn_hook_str+0x171>
  208745: 48 ba ff ff ff ff ff ff 9f ff	movabsq	$-27021597764222977, %rdx # imm = 0xFF9FFFFFFFFFFFFF
  20874f: 48 21 d6                     	andq	%rdx, %rsi
  208752: 4c 09 c6                     	orq	%r8, %rsi
  208755: 4a 89 74 ed 00               	movq	%rsi, (%rbp,%r13,8)
  20875a: 49 8b 17                     	movq	(%r15), %rdx
  20875d: 48 c7 c6 00 00 00 ff         	movq	$-16777216, %rsi        # imm = 0xFF000000
  208764: 4a 23 34 ea                  	andq	(%rdx,%r13,8), %rsi
  208768: 48 83 ce 01                  	orq	$1, %rsi
  20876c: 4a 89 34 ea                  	movq	%rsi, (%rdx,%r13,8)
  208770: 4c 89 fd                     	movq	%r15, %rbp
  208773: 49 8b 17                     	movq	(%r15), %rdx
  208776: 4a 8d 34 ea                  	leaq	(%rdx,%r13,8), %rsi
  20877a: 4a 8b 14 ea                  	movq	(%rdx,%r13,8), %rdx
  20877e: 45 31 ff                     	xorl	%r15d, %r15d
  208781: ff c9                        	decl	%ecx
  208783: 83 e1 1f                     	andl	$31, %ecx
  208786: 48 c1 e1 30                  	shlq	$48, %rcx
  20878a: 48 bf ff ff ff ff ff ff e0 ff	movabsq	$-8725724278030337, %rdi # imm = 0xFFE0FFFFFFFFFFFF
  208794: 48 21 d7                     	andq	%rdx, %rdi
  208797: 48 09 cf                     	orq	%rcx, %rdi
  20879a: 48 89 3e                     	movq	%rdi, (%rsi)
  20879d: 49 c1 e5 0a                  	shlq	$10, %r13
  2087a1: 4c 03 6d 00                  	addq	(%rbp), %r13
  2087a5: 41 83 e7 07                  	andl	$7, %r15d
  2087a9: 41 80 c2 81                  	addb	$-127, %r10b
  2087ad: 49 c1 e7 06                  	shlq	$6, %r15
  2087b1: 4b 8d 3c 2f                  	leaq	(%r15,%r13), %rdi
  2087b5: 48 81 c7 00 00 08 00         	addq	$524288, %rdi           # imm = 0x80000
  2087bc: 47 88 94 2f 1f 00 08 00      	movb	%r10b, 524319(%r15,%r13)
  2087c4: 04 81                        	addb	$-127, %al
  2087c6: 43 88 84 2f 3f 00 08 00      	movb	%al, 524351(%r15,%r13)
  2087ce: 49 63 d6                     	movslq	%r14d, %rdx
  2087d1: 4c 89 e6                     	movq	%r12, %rsi
  2087d4: e8 a7 26 00 00               	callq	0x20ae80 <memcpy@plt>
  2087d9: 4b 8d 3c 2f                  	leaq	(%r15,%r13), %rdi
  2087dd: 48 81 c7 20 00 08 00         	addq	$524320, %rdi           # imm = 0x80020
  2087e4: 48 63 54 24 0c               	movslq	12(%rsp), %rdx
  2087e9: 48 8b 74 24 10               	movq	16(%rsp), %rsi
  2087ee: 48 83 c4 18                  	addq	$24, %rsp
  2087f2: 5b                           	popq	%rbx
  2087f3: 41 5c                        	popq	%r12
  2087f5: 41 5d                        	popq	%r13
  2087f7: 41 5e                        	popq	%r14
  2087f9: 41 5f                        	popq	%r15
  2087fb: 5d                           	popq	%rbp
  2087fc: e9 7f 26 00 00               	jmp	0x20ae80 <memcpy@plt>
  208801: 66 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%rax,%rax)

0000000000208810 <__cmplog_rtn_hook>:
  208810: 55                           	pushq	%rbp
  208811: 41 57                        	pushq	%r15
  208813: 41 56                        	pushq	%r14
  208815: 41 55                        	pushq	%r13
  208817: 41 54                        	pushq	%r12
  208819: 53                           	pushq	%rbx
  20881a: 50                           	pushq	%rax
  20881b: 48 85 ff                     	testq	%rdi, %rdi
  20881e: 0f 84 c4 01 00 00            	je	0x2089e8 <__cmplog_rtn_hook+0x1d8>
  208824: 4c 8d 2d e5 4a 20 00         	leaq	2116325(%rip), %r13     # 0x40d310 <__afl_cmp_map>
  20882b: 49 83 7d 00 00               	cmpq	$0, (%r13)
  208830: 0f 84 b2 01 00 00            	je	0x2089e8 <__cmplog_rtn_hook+0x1d8>
  208836: 49 89 f6                     	movq	%rsi, %r14
  208839: 48 89 fb                     	movq	%rdi, %rbx
  20883c: be 1f 00 00 00               	movl	$31, %esi
  208841: e8 aa fa ff ff               	callq	0x2082f0 <__asan_region_is_poisoned>
  208846: 48 85 c0                     	testq	%rax, %rax
  208849: 0f 85 99 01 00 00            	jne	0x2089e8 <__cmplog_rtn_hook+0x1d8>
  20884f: 8b 35 a3 48 00 00            	movl	18595(%rip), %esi       # 0x20d0f8 <__afl_dummy_fd+0x4>
  208855: bf 01 00 00 00               	movl	$1, %edi
  20885a: b9 1f 00 00 00               	movl	$31, %ecx
  20885f: 48 89 da                     	movq	%rbx, %rdx
  208862: 31 c0                        	xorl	%eax, %eax
  208864: e8 77 24 00 00               	callq	0x20ace0 <syscall@plt>
  208869: 49 89 c7                     	movq	%rax, %r15
  20886c: 48 83 c0 e0                  	addq	$-32, %rax
  208870: 48 83 f8 e1                  	cmpq	$-31, %rax
  208874: 0f 82 6e 01 00 00            	jb	0x2089e8 <__cmplog_rtn_hook+0x1d8>
  20887a: bf 1e 00 00 00               	movl	$30, %edi
  20887f: e8 ec 25 00 00               	callq	0x20ae70 <sysconf@plt>
  208884: 48 89 c1                     	movq	%rax, %rcx
  208887: 48 f7 d9                     	negq	%rcx
  20888a: 48 21 d9                     	andq	%rbx, %rcx
  20888d: 48 01 c1                     	addq	%rax, %rcx
  208890: 48 8d 43 1f                  	leaq	31(%rbx), %rax
  208894: 89 ca                        	movl	%ecx, %edx
  208896: 29 da                        	subl	%ebx, %edx
  208898: 48 39 c1                     	cmpq	%rax, %rcx
  20889b: 44 0f 46 fa                  	cmovbel	%edx, %r15d
  20889f: 4d 85 f6                     	testq	%r14, %r14
  2088a2: 0f 84 40 01 00 00            	je	0x2089e8 <__cmplog_rtn_hook+0x1d8>
  2088a8: 45 85 ff                     	testl	%r15d, %r15d
  2088ab: 0f 8e 37 01 00 00            	jle	0x2089e8 <__cmplog_rtn_hook+0x1d8>
  2088b1: be 1f 00 00 00               	movl	$31, %esi
  2088b6: 4c 89 f7                     	movq	%r14, %rdi
  2088b9: e8 32 fa ff ff               	callq	0x2082f0 <__asan_region_is_poisoned>
  2088be: 48 85 c0                     	testq	%rax, %rax
  2088c1: 0f 85 21 01 00 00            	jne	0x2089e8 <__cmplog_rtn_hook+0x1d8>
  2088c7: 8b 35 2b 48 00 00            	movl	18475(%rip), %esi       # 0x20d0f8 <__afl_dummy_fd+0x4>
  2088cd: bf 01 00 00 00               	movl	$1, %edi
  2088d2: b9 1f 00 00 00               	movl	$31, %ecx
  2088d7: 4c 89 f2                     	movq	%r14, %rdx
  2088da: 31 c0                        	xorl	%eax, %eax
  2088dc: e8 ff 23 00 00               	callq	0x20ace0 <syscall@plt>
  2088e1: 49 89 c4                     	movq	%rax, %r12
  2088e4: 48 83 c0 e0                  	addq	$-32, %rax
  2088e8: 48 83 f8 e1                  	cmpq	$-31, %rax
  2088ec: 0f 82 f6 00 00 00            	jb	0x2089e8 <__cmplog_rtn_hook+0x1d8>
  2088f2: bf 1e 00 00 00               	movl	$30, %edi
  2088f7: e8 74 25 00 00               	callq	0x20ae70 <sysconf@plt>
  2088fc: 48 89 c1                     	movq	%rax, %rcx
  2088ff: 48 f7 d9                     	negq	%rcx
  208902: 4c 21 f1                     	andq	%r14, %rcx
  208905: 48 01 c1                     	addq	%rax, %rcx
  208908: 49 8d 46 1f                  	leaq	31(%r14), %rax
  20890c: 89 ca                        	movl	%ecx, %edx
  20890e: 44 29 f2                     	subl	%r14d, %edx
  208911: 48 39 c1                     	cmpq	%rax, %rcx
  208914: 44 0f 46 e2                  	cmovbel	%edx, %r12d
  208918: 45 85 e4                     	testl	%r12d, %r12d
  20891b: 0f 8e c7 00 00 00            	jle	0x2089e8 <__cmplog_rtn_hook+0x1d8>
  208921: 45 39 e7                     	cmpl	%r12d, %r15d
  208924: 45 0f 42 e7                  	cmovbl	%r15d, %r12d
  208928: 41 83 fc 1f                  	cmpl	$31, %r12d
  20892c: b8 1f 00 00 00               	movl	$31, %eax
  208931: 41 0f 42 c4                  	cmovbl	%r12d, %eax
  208935: 48 8b 4c 24 38               	movq	56(%rsp), %rcx
  20893a: 48 c1 c1 20                  	rolq	$32, %rcx
  20893e: 48 ba a2 d5 ec c5 74 b1 3a c7	movabsq	$-4090762196417718878, %rdx # imm = 0xC73AB174C5ECD5A2
  208948: 48 31 ca                     	xorq	%rcx, %rdx
  20894b: 48 89 d6                     	movq	%rdx, %rsi
  20894e: 48 c1 c6 18                  	rolq	$24, %rsi
  208952: 48 31 d6                     	xorq	%rdx, %rsi
  208955: 48 c1 c2 31                  	rolq	$49, %rdx
  208959: 48 b9 00 00 00 00 00 00 40 00	movabsq	$18014398509481984, %rcx # imm = 0x40000000000000
  208963: 48 31 d6                     	xorq	%rdx, %rsi
  208966: 48 ba 25 df 98 1e 65 1c b2 9f	movabsq	$-6939452855193903323, %rdx # imm = 0x9FB21C651E98DF25
  208970: 48 0f af f2                  	imulq	%rdx, %rsi
  208974: 48 89 f7                     	movq	%rsi, %rdi
  208977: 48 c1 ef 23                  	shrq	$35, %rdi
  20897b: 48 83 c7 08                  	addq	$8, %rdi
  20897f: 48 31 f7                     	xorq	%rsi, %rdi
  208982: 48 0f af fa                  	imulq	%rdx, %rdi
  208986: 48 89 fa                     	movq	%rdi, %rdx
  208989: 48 c1 ea 1c                  	shrq	$28, %rdx
  20898d: 31 fa                        	xorl	%edi, %edx
  20898f: 44 0f b7 e2                  	movzwl	%dx, %r12d
  208993: 49 8b 55 00                  	movq	(%r13), %rdx
  208997: 4a 8b 34 e2                  	movq	(%rdx,%r12,8), %rsi
  20899b: 48 bf 00 00 00 00 00 00 60 00	movabsq	$27021597764222976, %rdi # imm = 0x60000000000000
  2089a5: 48 21 f7                     	andq	%rsi, %rdi
  2089a8: 48 39 cf                     	cmpq	%rcx, %rdi
  2089ab: 75 4a                        	jne	0x2089f7 <__cmplog_rtn_hook+0x1e7>
  2089ad: 89 f5                        	movl	%esi, %ebp
  2089af: 81 e5 ff ff ff 00            	andl	$16777215, %ebp         # imm = 0xFFFFFF
  2089b5: 8d 4e 01                     	leal	1(%rsi), %ecx
  2089b8: 81 e1 ff ff ff 00            	andl	$16777215, %ecx         # imm = 0xFFFFFF
  2089be: 48 81 e6 00 00 00 ff         	andq	$-16777216, %rsi        # imm = 0xFF000000
  2089c5: 48 09 ce                     	orq	%rcx, %rsi
  2089c8: 4a 89 34 e2                  	movq	%rsi, (%rdx,%r12,8)
  2089cc: 49 8b 55 00                  	movq	(%r13), %rdx
  2089d0: 4a 8b 0c e2                  	movq	(%rdx,%r12,8), %rcx
  2089d4: 48 89 ce                     	movq	%rcx, %rsi
  2089d7: 48 c1 ee 30                  	shrq	$48, %rsi
  2089db: 83 e6 1f                     	andl	$31, %esi
  2089de: 39 c6                        	cmpl	%eax, %esi
  2089e0: 73 6b                        	jae	0x208a4d <__cmplog_rtn_hook+0x23d>
  2089e2: 4a 8d 14 e2                  	leaq	(%rdx,%r12,8), %rdx
  2089e6: eb 48                        	jmp	0x208a30 <__cmplog_rtn_hook+0x220>
  2089e8: 48 83 c4 08                  	addq	$8, %rsp
  2089ec: 5b                           	popq	%rbx
  2089ed: 41 5c                        	popq	%r12
  2089ef: 41 5d                        	popq	%r13
  2089f1: 41 5e                        	popq	%r14
  2089f3: 41 5f                        	popq	%r15
  2089f5: 5d                           	popq	%rbp
  2089f6: c3                           	retq
  2089f7: 48 bf ff ff ff ff ff ff 9f ff	movabsq	$-27021597764222977, %rdi # imm = 0xFF9FFFFFFFFFFFFF
  208a01: 48 21 fe                     	andq	%rdi, %rsi
  208a04: 48 09 ce                     	orq	%rcx, %rsi
  208a07: 4a 89 34 e2                  	movq	%rsi, (%rdx,%r12,8)
  208a0b: 49 8b 4d 00                  	movq	(%r13), %rcx
  208a0f: 48 c7 c2 00 00 00 ff         	movq	$-16777216, %rdx        # imm = 0xFF000000
  208a16: 4a 23 14 e1                  	andq	(%rcx,%r12,8), %rdx
  208a1a: 48 83 ca 01                  	orq	$1, %rdx
  208a1e: 4a 89 14 e1                  	movq	%rdx, (%rcx,%r12,8)
  208a22: 49 8b 4d 00                  	movq	(%r13), %rcx
  208a26: 4a 8d 14 e1                  	leaq	(%rcx,%r12,8), %rdx
  208a2a: 4a 8b 0c e1                  	movq	(%rcx,%r12,8), %rcx
  208a2e: 31 ed                        	xorl	%ebp, %ebp
  208a30: 8d 70 ff                     	leal	-1(%rax), %esi
  208a33: 83 e6 1f                     	andl	$31, %esi
  208a36: 48 c1 e6 30                  	shlq	$48, %rsi
  208a3a: 48 bf ff ff ff ff ff ff e0 ff	movabsq	$-8725724278030337, %rdi # imm = 0xFFE0FFFFFFFFFFFF
  208a44: 48 21 cf                     	andq	%rcx, %rdi
  208a47: 48 09 f7                     	orq	%rsi, %rdi
  208a4a: 48 89 3a                     	movq	%rdi, (%rdx)
  208a4d: 49 c1 e4 0a                  	shlq	$10, %r12
  208a51: 4d 03 65 00                  	addq	(%r13), %r12
  208a55: 83 e5 07                     	andl	$7, %ebp
  208a58: 48 c1 e5 06                  	shlq	$6, %rbp
  208a5c: 49 8d 3c 2c                  	leaq	(%r12,%rbp), %rdi
  208a60: 48 81 c7 00 00 08 00         	addq	$524288, %rdi           # imm = 0x80000
  208a67: 42 88 84 25 1f 00 08 00      	movb	%al, 524319(%rbp,%r12)
  208a6f: 42 88 84 25 3f 00 08 00      	movb	%al, 524351(%rbp,%r12)
  208a77: 41 89 c7                     	movl	%eax, %r15d
  208a7a: 48 89 de                     	movq	%rbx, %rsi
  208a7d: 4c 89 fa                     	movq	%r15, %rdx
  208a80: e8 fb 23 00 00               	callq	0x20ae80 <memcpy@plt>
  208a85: 49 8d 3c 2c                  	leaq	(%r12,%rbp), %rdi
  208a89: 48 81 c7 20 00 08 00         	addq	$524320, %rdi           # imm = 0x80020
  208a90: 4c 89 f6                     	movq	%r14, %rsi
  208a93: 4c 89 fa                     	movq	%r15, %rdx
  208a96: 48 83 c4 08                  	addq	$8, %rsp
  208a9a: 5b                           	popq	%rbx
  208a9b: 41 5c                        	popq	%r12
  208a9d: 41 5d                        	popq	%r13
  208a9f: 41 5e                        	popq	%r14
  208aa1: 41 5f                        	popq	%r15
  208aa3: 5d                           	popq	%rbp
  208aa4: e9 d7 23 00 00               	jmp	0x20ae80 <memcpy@plt>
  208aa9: 0f 1f 80 00 00 00 00         	nopl	(%rax)

0000000000208ab0 <__cmplog_rtn_hook_n>:
  208ab0: e9 5b fd ff ff               	jmp	0x208810 <__cmplog_rtn_hook>
  208ab5: 66 66 2e 0f 1f 84 00 00 00 00 00     	nopw	%cs:(%rax,%rax)

0000000000208ac0 <__cmplog_rtn_gcc_stdstring_cstring>:
  208ac0: 41 57                        	pushq	%r15
  208ac2: 41 56                        	pushq	%r14
  208ac4: 53                           	pushq	%rbx
  208ac5: 48 85 ff                     	testq	%rdi, %rdi
  208ac8: 0f 84 f4 00 00 00            	je	0x208bc2 <__cmplog_rtn_gcc_stdstring_cstring+0x102>
  208ace: 48 8d 05 3b 48 20 00         	leaq	2115643(%rip), %rax     # 0x40d310 <__afl_cmp_map>
  208ad5: 48 83 38 00                  	cmpq	$0, (%rax)
  208ad9: 0f 84 e3 00 00 00            	je	0x208bc2 <__cmplog_rtn_gcc_stdstring_cstring+0x102>
  208adf: 49 89 f6                     	movq	%rsi, %r14
  208ae2: 48 89 fb                     	movq	%rdi, %rbx
  208ae5: be 20 00 00 00               	movl	$32, %esi
  208aea: e8 01 f8 ff ff               	callq	0x2082f0 <__asan_region_is_poisoned>
  208aef: 48 85 c0                     	testq	%rax, %rax
  208af2: 0f 85 ca 00 00 00            	jne	0x208bc2 <__cmplog_rtn_gcc_stdstring_cstring+0x102>
  208af8: 8b 35 fa 45 00 00            	movl	17914(%rip), %esi       # 0x20d0f8 <__afl_dummy_fd+0x4>
  208afe: bf 01 00 00 00               	movl	$1, %edi
  208b03: b9 20 00 00 00               	movl	$32, %ecx
  208b08: 48 89 da                     	movq	%rbx, %rdx
  208b0b: 31 c0                        	xorl	%eax, %eax
  208b0d: e8 ce 21 00 00               	callq	0x20ace0 <syscall@plt>
  208b12: 49 89 c7                     	movq	%rax, %r15
  208b15: 48 83 c0 df                  	addq	$-33, %rax
  208b19: 48 83 f8 e0                  	cmpq	$-32, %rax
  208b1d: 0f 82 9f 00 00 00            	jb	0x208bc2 <__cmplog_rtn_gcc_stdstring_cstring+0x102>
  208b23: bf 1e 00 00 00               	movl	$30, %edi
  208b28: e8 43 23 00 00               	callq	0x20ae70 <sysconf@plt>
  208b2d: 48 89 c1                     	movq	%rax, %rcx
  208b30: 48 f7 d9                     	negq	%rcx
  208b33: 48 21 d9                     	andq	%rbx, %rcx
  208b36: 48 01 c1                     	addq	%rax, %rcx
  208b39: 48 8d 43 20                  	leaq	32(%rbx), %rax
  208b3d: 89 ca                        	movl	%ecx, %edx
  208b3f: 29 da                        	subl	%ebx, %edx
  208b41: 48 39 c1                     	cmpq	%rax, %rcx
  208b44: 44 0f 46 fa                  	cmovbel	%edx, %r15d
  208b48: 4d 85 f6                     	testq	%r14, %r14
  208b4b: 74 75                        	je	0x208bc2 <__cmplog_rtn_gcc_stdstring_cstring+0x102>
  208b4d: 45 85 ff                     	testl	%r15d, %r15d
  208b50: 7e 70                        	jle	0x208bc2 <__cmplog_rtn_gcc_stdstring_cstring+0x102>
  208b52: be 20 00 00 00               	movl	$32, %esi
  208b57: 4c 89 f7                     	movq	%r14, %rdi
  208b5a: e8 91 f7 ff ff               	callq	0x2082f0 <__asan_region_is_poisoned>
  208b5f: 48 85 c0                     	testq	%rax, %rax
  208b62: 75 5e                        	jne	0x208bc2 <__cmplog_rtn_gcc_stdstring_cstring+0x102>
  208b64: 8b 35 8e 45 00 00            	movl	17806(%rip), %esi       # 0x20d0f8 <__afl_dummy_fd+0x4>
  208b6a: bf 01 00 00 00               	movl	$1, %edi
  208b6f: b9 20 00 00 00               	movl	$32, %ecx
  208b74: 4c 89 f2                     	movq	%r14, %rdx
  208b77: 31 c0                        	xorl	%eax, %eax
  208b79: e8 62 21 00 00               	callq	0x20ace0 <syscall@plt>
  208b7e: 49 89 c7                     	movq	%rax, %r15
  208b81: 48 83 c0 df                  	addq	$-33, %rax
  208b85: 48 83 f8 e0                  	cmpq	$-32, %rax
  208b89: 72 37                        	jb	0x208bc2 <__cmplog_rtn_gcc_stdstring_cstring+0x102>
  208b8b: bf 1e 00 00 00               	movl	$30, %edi
  208b90: e8 db 22 00 00               	callq	0x20ae70 <sysconf@plt>
  208b95: 48 89 c1                     	movq	%rax, %rcx
  208b98: 48 f7 d9                     	negq	%rcx
  208b9b: 4c 21 f1                     	andq	%r14, %rcx
  208b9e: 48 01 c1                     	addq	%rax, %rcx
  208ba1: 49 8d 46 20                  	leaq	32(%r14), %rax
  208ba5: 89 ca                        	movl	%ecx, %edx
  208ba7: 44 29 f2                     	subl	%r14d, %edx
  208baa: 48 39 c1                     	cmpq	%rax, %rcx
  208bad: 44 0f 46 fa                  	cmovbel	%edx, %r15d
  208bb1: 45 85 ff                     	testl	%r15d, %r15d
  208bb4: 7e 0c                        	jle	0x208bc2 <__cmplog_rtn_gcc_stdstring_cstring+0x102>
  208bb6: 83 7b 08 0f                  	cmpl	$15, 8(%rbx)
  208bba: 77 0c                        	ja	0x208bc8 <__cmplog_rtn_gcc_stdstring_cstring+0x108>
  208bbc: 48 83 c3 10                  	addq	$16, %rbx
  208bc0: eb 09                        	jmp	0x208bcb <__cmplog_rtn_gcc_stdstring_cstring+0x10b>
  208bc2: 5b                           	popq	%rbx
  208bc3: 41 5e                        	popq	%r14
  208bc5: 41 5f                        	popq	%r15
  208bc7: c3                           	retq
  208bc8: 48 8b 1b                     	movq	(%rbx), %rbx
  208bcb: 48 89 df                     	movq	%rbx, %rdi
  208bce: 4c 89 f6                     	movq	%r14, %rsi
  208bd1: 5b                           	popq	%rbx
  208bd2: 41 5e                        	popq	%r14
  208bd4: 41 5f                        	popq	%r15
  208bd6: e9 35 fc ff ff               	jmp	0x208810 <__cmplog_rtn_hook>
  208bdb: 0f 1f 44 00 00               	nopl	(%rax,%rax)

0000000000208be0 <__cmplog_rtn_gcc_stdstring_stdstring>:
  208be0: 41 57                        	pushq	%r15
  208be2: 41 56                        	pushq	%r14
  208be4: 53                           	pushq	%rbx
  208be5: 48 85 ff                     	testq	%rdi, %rdi
  208be8: 0f 84 f4 00 00 00            	je	0x208ce2 <__cmplog_rtn_gcc_stdstring_stdstring+0x102>
  208bee: 48 8d 05 1b 47 20 00         	leaq	2115355(%rip), %rax     # 0x40d310 <__afl_cmp_map>
  208bf5: 48 83 38 00                  	cmpq	$0, (%rax)
  208bf9: 0f 84 e3 00 00 00            	je	0x208ce2 <__cmplog_rtn_gcc_stdstring_stdstring+0x102>
  208bff: 49 89 f6                     	movq	%rsi, %r14
  208c02: 48 89 fb                     	movq	%rdi, %rbx
  208c05: be 20 00 00 00               	movl	$32, %esi
  208c0a: e8 e1 f6 ff ff               	callq	0x2082f0 <__asan_region_is_poisoned>
  208c0f: 48 85 c0                     	testq	%rax, %rax
  208c12: 0f 85 ca 00 00 00            	jne	0x208ce2 <__cmplog_rtn_gcc_stdstring_stdstring+0x102>
  208c18: 8b 35 da 44 00 00            	movl	17626(%rip), %esi       # 0x20d0f8 <__afl_dummy_fd+0x4>
  208c1e: bf 01 00 00 00               	movl	$1, %edi
  208c23: b9 20 00 00 00               	movl	$32, %ecx
  208c28: 48 89 da                     	movq	%rbx, %rdx
  208c2b: 31 c0                        	xorl	%eax, %eax
  208c2d: e8 ae 20 00 00               	callq	0x20ace0 <syscall@plt>
  208c32: 49 89 c7                     	movq	%rax, %r15
  208c35: 48 83 c0 df                  	addq	$-33, %rax
  208c39: 48 83 f8 e0                  	cmpq	$-32, %rax
  208c3d: 0f 82 9f 00 00 00            	jb	0x208ce2 <__cmplog_rtn_gcc_stdstring_stdstring+0x102>
  208c43: bf 1e 00 00 00               	movl	$30, %edi
  208c48: e8 23 22 00 00               	callq	0x20ae70 <sysconf@plt>
  208c4d: 48 89 c1                     	movq	%rax, %rcx
  208c50: 48 f7 d9                     	negq	%rcx
  208c53: 48 21 d9                     	andq	%rbx, %rcx
  208c56: 48 01 c1                     	addq	%rax, %rcx
  208c59: 48 8d 43 20                  	leaq	32(%rbx), %rax
  208c5d: 89 ca                        	movl	%ecx, %edx
  208c5f: 29 da                        	subl	%ebx, %edx
  208c61: 48 39 c1                     	cmpq	%rax, %rcx
  208c64: 44 0f 46 fa                  	cmovbel	%edx, %r15d
  208c68: 4d 85 f6                     	testq	%r14, %r14
  208c6b: 74 75                        	je	0x208ce2 <__cmplog_rtn_gcc_stdstring_stdstring+0x102>
  208c6d: 45 85 ff                     	testl	%r15d, %r15d
  208c70: 7e 70                        	jle	0x208ce2 <__cmplog_rtn_gcc_stdstring_stdstring+0x102>
  208c72: be 20 00 00 00               	movl	$32, %esi
  208c77: 4c 89 f7                     	movq	%r14, %rdi
  208c7a: e8 71 f6 ff ff               	callq	0x2082f0 <__asan_region_is_poisoned>
  208c7f: 48 85 c0                     	testq	%rax, %rax
  208c82: 75 5e                        	jne	0x208ce2 <__cmplog_rtn_gcc_stdstring_stdstring+0x102>
  208c84: 8b 35 6e 44 00 00            	movl	17518(%rip), %esi       # 0x20d0f8 <__afl_dummy_fd+0x4>
  208c8a: bf 01 00 00 00               	movl	$1, %edi
  208c8f: b9 20 00 00 00               	movl	$32, %ecx
  208c94: 4c 89 f2                     	movq	%r14, %rdx
  208c97: 31 c0                        	xorl	%eax, %eax
  208c99: e8 42 20 00 00               	callq	0x20ace0 <syscall@plt>
  208c9e: 49 89 c7                     	movq	%rax, %r15
  208ca1: 48 83 c0 df                  	addq	$-33, %rax
  208ca5: 48 83 f8 e0                  	cmpq	$-32, %rax
  208ca9: 72 37                        	jb	0x208ce2 <__cmplog_rtn_gcc_stdstring_stdstring+0x102>
  208cab: bf 1e 00 00 00               	movl	$30, %edi
  208cb0: e8 bb 21 00 00               	callq	0x20ae70 <sysconf@plt>
  208cb5: 48 89 c1                     	movq	%rax, %rcx
  208cb8: 48 f7 d9                     	negq	%rcx
  208cbb: 4c 21 f1                     	andq	%r14, %rcx
  208cbe: 48 01 c1                     	addq	%rax, %rcx
  208cc1: 49 8d 46 20                  	leaq	32(%r14), %rax
  208cc5: 89 ca                        	movl	%ecx, %edx
  208cc7: 44 29 f2                     	subl	%r14d, %edx
  208cca: 48 39 c1                     	cmpq	%rax, %rcx
  208ccd: 44 0f 46 fa                  	cmovbel	%edx, %r15d
  208cd1: 45 85 ff                     	testl	%r15d, %r15d
  208cd4: 7e 0c                        	jle	0x208ce2 <__cmplog_rtn_gcc_stdstring_stdstring+0x102>
  208cd6: 83 7b 08 0f                  	cmpl	$15, 8(%rbx)
  208cda: 77 0c                        	ja	0x208ce8 <__cmplog_rtn_gcc_stdstring_stdstring+0x108>
  208cdc: 48 83 c3 10                  	addq	$16, %rbx
  208ce0: eb 09                        	jmp	0x208ceb <__cmplog_rtn_gcc_stdstring_stdstring+0x10b>
  208ce2: 5b                           	popq	%rbx
  208ce3: 41 5e                        	popq	%r14
  208ce5: 41 5f                        	popq	%r15
  208ce7: c3                           	retq
  208ce8: 48 8b 1b                     	movq	(%rbx), %rbx
  208ceb: 41 83 7e 08 0f               	cmpl	$15, 8(%r14)
  208cf0: 77 06                        	ja	0x208cf8 <__cmplog_rtn_gcc_stdstring_stdstring+0x118>
  208cf2: 49 83 c6 10                  	addq	$16, %r14
  208cf6: eb 03                        	jmp	0x208cfb <__cmplog_rtn_gcc_stdstring_stdstring+0x11b>
  208cf8: 4d 8b 36                     	movq	(%r14), %r14
  208cfb: 48 89 df                     	movq	%rbx, %rdi
  208cfe: 4c 89 f6                     	movq	%r14, %rsi
  208d01: 5b                           	popq	%rbx
  208d02: 41 5e                        	popq	%r14
  208d04: 41 5f                        	popq	%r15
  208d06: e9 05 fb ff ff               	jmp	0x208810 <__cmplog_rtn_hook>
  208d0b: 0f 1f 44 00 00               	nopl	(%rax,%rax)

0000000000208d10 <__cmplog_rtn_llvm_stdstring_cstring>:
  208d10: 41 57                        	pushq	%r15
  208d12: 41 56                        	pushq	%r14
  208d14: 53                           	pushq	%rbx
  208d15: 48 85 ff                     	testq	%rdi, %rdi
  208d18: 0f 84 f2 00 00 00            	je	0x208e10 <__cmplog_rtn_llvm_stdstring_cstring+0x100>
  208d1e: 48 8d 05 eb 45 20 00         	leaq	2115051(%rip), %rax     # 0x40d310 <__afl_cmp_map>
  208d25: 48 83 38 00                  	cmpq	$0, (%rax)
  208d29: 0f 84 e1 00 00 00            	je	0x208e10 <__cmplog_rtn_llvm_stdstring_cstring+0x100>
  208d2f: 49 89 f6                     	movq	%rsi, %r14
  208d32: 48 89 fb                     	movq	%rdi, %rbx
  208d35: be 20 00 00 00               	movl	$32, %esi
  208d3a: e8 b1 f5 ff ff               	callq	0x2082f0 <__asan_region_is_poisoned>
  208d3f: 48 85 c0                     	testq	%rax, %rax
  208d42: 0f 85 c8 00 00 00            	jne	0x208e10 <__cmplog_rtn_llvm_stdstring_cstring+0x100>
  208d48: 8b 35 aa 43 00 00            	movl	17322(%rip), %esi       # 0x20d0f8 <__afl_dummy_fd+0x4>
  208d4e: bf 01 00 00 00               	movl	$1, %edi
  208d53: b9 20 00 00 00               	movl	$32, %ecx
  208d58: 48 89 da                     	movq	%rbx, %rdx
  208d5b: 31 c0                        	xorl	%eax, %eax
  208d5d: e8 7e 1f 00 00               	callq	0x20ace0 <syscall@plt>
  208d62: 49 89 c7                     	movq	%rax, %r15
  208d65: 48 83 c0 df                  	addq	$-33, %rax
  208d69: 48 83 f8 e0                  	cmpq	$-32, %rax
  208d6d: 0f 82 9d 00 00 00            	jb	0x208e10 <__cmplog_rtn_llvm_stdstring_cstring+0x100>
  208d73: bf 1e 00 00 00               	movl	$30, %edi
  208d78: e8 f3 20 00 00               	callq	0x20ae70 <sysconf@plt>
  208d7d: 48 89 c1                     	movq	%rax, %rcx
  208d80: 48 f7 d9                     	negq	%rcx
  208d83: 48 21 d9                     	andq	%rbx, %rcx
  208d86: 48 01 c1                     	addq	%rax, %rcx
  208d89: 48 8d 43 20                  	leaq	32(%rbx), %rax
  208d8d: 89 ca                        	movl	%ecx, %edx
  208d8f: 29 da                        	subl	%ebx, %edx
  208d91: 48 39 c1                     	cmpq	%rax, %rcx
  208d94: 44 0f 46 fa                  	cmovbel	%edx, %r15d
  208d98: 4d 85 f6                     	testq	%r14, %r14
  208d9b: 74 73                        	je	0x208e10 <__cmplog_rtn_llvm_stdstring_cstring+0x100>
  208d9d: 45 85 ff                     	testl	%r15d, %r15d
  208da0: 7e 6e                        	jle	0x208e10 <__cmplog_rtn_llvm_stdstring_cstring+0x100>
  208da2: be 20 00 00 00               	movl	$32, %esi
  208da7: 4c 89 f7                     	movq	%r14, %rdi
  208daa: e8 41 f5 ff ff               	callq	0x2082f0 <__asan_region_is_poisoned>
  208daf: 48 85 c0                     	testq	%rax, %rax
  208db2: 75 5c                        	jne	0x208e10 <__cmplog_rtn_llvm_stdstring_cstring+0x100>
  208db4: 8b 35 3e 43 00 00            	movl	17214(%rip), %esi       # 0x20d0f8 <__afl_dummy_fd+0x4>
  208dba: bf 01 00 00 00               	movl	$1, %edi
  208dbf: b9 20 00 00 00               	movl	$32, %ecx
  208dc4: 4c 89 f2                     	movq	%r14, %rdx
  208dc7: 31 c0                        	xorl	%eax, %eax
  208dc9: e8 12 1f 00 00               	callq	0x20ace0 <syscall@plt>
  208dce: 49 89 c7                     	movq	%rax, %r15
  208dd1: 48 83 c0 df                  	addq	$-33, %rax
  208dd5: 48 83 f8 e0                  	cmpq	$-32, %rax
  208dd9: 72 35                        	jb	0x208e10 <__cmplog_rtn_llvm_stdstring_cstring+0x100>
  208ddb: bf 1e 00 00 00               	movl	$30, %edi
  208de0: e8 8b 20 00 00               	callq	0x20ae70 <sysconf@plt>
  208de5: 48 89 c1                     	movq	%rax, %rcx
  208de8: 48 f7 d9                     	negq	%rcx
  208deb: 4c 21 f1                     	andq	%r14, %rcx
  208dee: 48 01 c1                     	addq	%rax, %rcx
  208df1: 49 8d 46 20                  	leaq	32(%r14), %rax
  208df5: 89 ca                        	movl	%ecx, %edx
  208df7: 44 29 f2                     	subl	%r14d, %edx
  208dfa: 48 39 c1                     	cmpq	%rax, %rcx
  208dfd: 44 0f 46 fa                  	cmovbel	%edx, %r15d
  208e01: 45 85 ff                     	testl	%r15d, %r15d
  208e04: 7e 0a                        	jle	0x208e10 <__cmplog_rtn_llvm_stdstring_cstring+0x100>
  208e06: f6 03 01                     	testb	$1, (%rbx)
  208e09: 75 0b                        	jne	0x208e16 <__cmplog_rtn_llvm_stdstring_cstring+0x106>
  208e0b: 48 ff c3                     	incq	%rbx
  208e0e: eb 0a                        	jmp	0x208e1a <__cmplog_rtn_llvm_stdstring_cstring+0x10a>
  208e10: 5b                           	popq	%rbx
  208e11: 41 5e                        	popq	%r14
  208e13: 41 5f                        	popq	%r15
  208e15: c3                           	retq
  208e16: 48 8b 5b 10                  	movq	16(%rbx), %rbx
  208e1a: 48 89 df                     	movq	%rbx, %rdi
  208e1d: 4c 89 f6                     	movq	%r14, %rsi
  208e20: 5b                           	popq	%rbx
  208e21: 41 5e                        	popq	%r14
  208e23: 41 5f                        	popq	%r15
  208e25: e9 e6 f9 ff ff               	jmp	0x208810 <__cmplog_rtn_hook>
  208e2a: 66 0f 1f 44 00 00            	nopw	(%rax,%rax)

0000000000208e30 <__cmplog_rtn_llvm_stdstring_stdstring>:
  208e30: 41 57                        	pushq	%r15
  208e32: 41 56                        	pushq	%r14
  208e34: 53                           	pushq	%rbx
  208e35: 48 85 ff                     	testq	%rdi, %rdi
  208e38: 0f 84 f2 00 00 00            	je	0x208f30 <__cmplog_rtn_llvm_stdstring_stdstring+0x100>
  208e3e: 48 8d 05 cb 44 20 00         	leaq	2114763(%rip), %rax     # 0x40d310 <__afl_cmp_map>
  208e45: 48 83 38 00                  	cmpq	$0, (%rax)
  208e49: 0f 84 e1 00 00 00            	je	0x208f30 <__cmplog_rtn_llvm_stdstring_stdstring+0x100>
  208e4f: 49 89 f6                     	movq	%rsi, %r14
  208e52: 48 89 fb                     	movq	%rdi, %rbx
  208e55: be 20 00 00 00               	movl	$32, %esi
  208e5a: e8 91 f4 ff ff               	callq	0x2082f0 <__asan_region_is_poisoned>
  208e5f: 48 85 c0                     	testq	%rax, %rax
  208e62: 0f 85 c8 00 00 00            	jne	0x208f30 <__cmplog_rtn_llvm_stdstring_stdstring+0x100>
  208e68: 8b 35 8a 42 00 00            	movl	17034(%rip), %esi       # 0x20d0f8 <__afl_dummy_fd+0x4>
  208e6e: bf 01 00 00 00               	movl	$1, %edi
  208e73: b9 20 00 00 00               	movl	$32, %ecx
  208e78: 48 89 da                     	movq	%rbx, %rdx
  208e7b: 31 c0                        	xorl	%eax, %eax
  208e7d: e8 5e 1e 00 00               	callq	0x20ace0 <syscall@plt>
  208e82: 49 89 c7                     	movq	%rax, %r15
  208e85: 48 83 c0 df                  	addq	$-33, %rax
  208e89: 48 83 f8 e0                  	cmpq	$-32, %rax
  208e8d: 0f 82 9d 00 00 00            	jb	0x208f30 <__cmplog_rtn_llvm_stdstring_stdstring+0x100>
  208e93: bf 1e 00 00 00               	movl	$30, %edi
  208e98: e8 d3 1f 00 00               	callq	0x20ae70 <sysconf@plt>
  208e9d: 48 89 c1                     	movq	%rax, %rcx
  208ea0: 48 f7 d9                     	negq	%rcx
  208ea3: 48 21 d9                     	andq	%rbx, %rcx
  208ea6: 48 01 c1                     	addq	%rax, %rcx
  208ea9: 48 8d 43 20                  	leaq	32(%rbx), %rax
  208ead: 89 ca                        	movl	%ecx, %edx
  208eaf: 29 da                        	subl	%ebx, %edx
  208eb1: 48 39 c1                     	cmpq	%rax, %rcx
  208eb4: 44 0f 46 fa                  	cmovbel	%edx, %r15d
  208eb8: 4d 85 f6                     	testq	%r14, %r14
  208ebb: 74 73                        	je	0x208f30 <__cmplog_rtn_llvm_stdstring_stdstring+0x100>
  208ebd: 45 85 ff                     	testl	%r15d, %r15d
  208ec0: 7e 6e                        	jle	0x208f30 <__cmplog_rtn_llvm_stdstring_stdstring+0x100>
  208ec2: be 20 00 00 00               	movl	$32, %esi
  208ec7: 4c 89 f7                     	movq	%r14, %rdi
  208eca: e8 21 f4 ff ff               	callq	0x2082f0 <__asan_region_is_poisoned>
  208ecf: 48 85 c0                     	testq	%rax, %rax
  208ed2: 75 5c                        	jne	0x208f30 <__cmplog_rtn_llvm_stdstring_stdstring+0x100>
  208ed4: 8b 35 1e 42 00 00            	movl	16926(%rip), %esi       # 0x20d0f8 <__afl_dummy_fd+0x4>
  208eda: bf 01 00 00 00               	movl	$1, %edi
  208edf: b9 20 00 00 00               	movl	$32, %ecx
  208ee4: 4c 89 f2                     	movq	%r14, %rdx
  208ee7: 31 c0                        	xorl	%eax, %eax
  208ee9: e8 f2 1d 00 00               	callq	0x20ace0 <syscall@plt>
  208eee: 49 89 c7                     	movq	%rax, %r15
  208ef1: 48 83 c0 df                  	addq	$-33, %rax
  208ef5: 48 83 f8 e0                  	cmpq	$-32, %rax
  208ef9: 72 35                        	jb	0x208f30 <__cmplog_rtn_llvm_stdstring_stdstring+0x100>
  208efb: bf 1e 00 00 00               	movl	$30, %edi
  208f00: e8 6b 1f 00 00               	callq	0x20ae70 <sysconf@plt>
  208f05: 48 89 c1                     	movq	%rax, %rcx
  208f08: 48 f7 d9                     	negq	%rcx
  208f0b: 4c 21 f1                     	andq	%r14, %rcx
  208f0e: 48 01 c1                     	addq	%rax, %rcx
  208f11: 49 8d 46 20                  	leaq	32(%r14), %rax
  208f15: 89 ca                        	movl	%ecx, %edx
  208f17: 44 29 f2                     	subl	%r14d, %edx
  208f1a: 48 39 c1                     	cmpq	%rax, %rcx
  208f1d: 44 0f 46 fa                  	cmovbel	%edx, %r15d
  208f21: 45 85 ff                     	testl	%r15d, %r15d
  208f24: 7e 0a                        	jle	0x208f30 <__cmplog_rtn_llvm_stdstring_stdstring+0x100>
  208f26: f6 03 01                     	testb	$1, (%rbx)
  208f29: 75 0b                        	jne	0x208f36 <__cmplog_rtn_llvm_stdstring_stdstring+0x106>
  208f2b: 48 ff c3                     	incq	%rbx
  208f2e: eb 0a                        	jmp	0x208f3a <__cmplog_rtn_llvm_stdstring_stdstring+0x10a>
  208f30: 5b                           	popq	%rbx
  208f31: 41 5e                        	popq	%r14
  208f33: 41 5f                        	popq	%r15
  208f35: c3                           	retq
  208f36: 48 8b 5b 10                  	movq	16(%rbx), %rbx
  208f3a: 41 f6 06 01                  	testb	$1, (%r14)
  208f3e: 75 05                        	jne	0x208f45 <__cmplog_rtn_llvm_stdstring_stdstring+0x115>
  208f40: 49 ff c6                     	incq	%r14
  208f43: eb 04                        	jmp	0x208f49 <__cmplog_rtn_llvm_stdstring_stdstring+0x119>
  208f45: 4d 8b 76 10                  	movq	16(%r14), %r14
  208f49: 48 89 df                     	movq	%rbx, %rdi
  208f4c: 4c 89 f6                     	movq	%r14, %rsi
  208f4f: 5b                           	popq	%rbx
  208f50: 41 5e                        	popq	%r14
  208f52: 41 5f                        	popq	%r15
  208f54: e9 b7 f8 ff ff               	jmp	0x208810 <__cmplog_rtn_hook>
  208f59: 0f 1f 80 00 00 00 00         	nopl	(%rax)

0000000000208f60 <__afl_coverage_off>:
  208f60: 48 8d 05 b1 43 20 00         	leaq	2114481(%rip), %rax     # 0x40d318 <__afl_selective_coverage>
  208f67: 83 38 00                     	cmpl	$0, (%rax)
  208f6a: 74 1f                        	je	0x208f8b <__afl_coverage_off+0x2b>
  208f6c: 48 8b 05 6d 41 00 00         	movq	16749(%rip), %rax       # 0x20d0e0 <__afl_area_ptr_dummy>
  208f73: 48 8d 0d 4e 41 00 00         	leaq	16718(%rip), %rcx       # 0x20d0c8 <__afl_area_ptr>
  208f7a: 48 89 01                     	movq	%rax, (%rcx)
  208f7d: 48 8d 05 8c 43 20 00         	leaq	2114444(%rip), %rax     # 0x40d310 <__afl_cmp_map>
  208f84: 48 c7 00 00 00 00 00         	movq	$0, (%rax)
  208f8b: c3                           	retq
  208f8c: 0f 1f 40 00                  	nopl	(%rax)

0000000000208f90 <__afl_coverage_on>:
  208f90: 48 8d 05 81 43 20 00         	leaq	2114433(%rip), %rax     # 0x40d318 <__afl_selective_coverage>
  208f97: 83 38 00                     	cmpl	$0, (%rax)
  208f9a: 74 33                        	je	0x208fcf <__afl_coverage_on+0x3f>
  208f9c: f6 05 3d 43 20 00 01         	testb	$1, 2114365(%rip)       # 0x40d2e0 <__afl_selective_coverage_temp>
  208fa3: 75 2a                        	jne	0x208fcf <__afl_coverage_on+0x3f>
  208fa5: 48 8b 05 3c 41 00 00         	movq	16700(%rip), %rax       # 0x20d0e8 <__afl_area_ptr_backup>
  208fac: 48 8d 0d 15 41 00 00         	leaq	16661(%rip), %rcx       # 0x20d0c8 <__afl_area_ptr>
  208fb3: 48 89 01                     	movq	%rax, (%rcx)
  208fb6: 48 8d 05 63 43 20 00         	leaq	2114403(%rip), %rax     # 0x40d320 <__afl_cmp_map_backup>
  208fbd: 48 8b 00                     	movq	(%rax), %rax
  208fc0: 48 85 c0                     	testq	%rax, %rax
  208fc3: 74 0a                        	je	0x208fcf <__afl_coverage_on+0x3f>
  208fc5: 48 8d 0d 44 43 20 00         	leaq	2114372(%rip), %rcx     # 0x40d310 <__afl_cmp_map>
  208fcc: 48 89 01                     	movq	%rax, (%rcx)
  208fcf: c3                           	retq

0000000000208fd0 <__afl_coverage_discard>:
  208fd0: 53                           	pushq	%rbx
  208fd1: 48 8b 1d 10 41 00 00         	movq	16656(%rip), %rbx       # 0x20d0e8 <__afl_area_ptr_backup>
  208fd8: 48 8d 05 f9 40 00 00         	leaq	16633(%rip), %rax       # 0x20d0d8 <__afl_map_size>
  208fdf: 8b 10                        	movl	(%rax), %edx
  208fe1: 48 89 df                     	movq	%rbx, %rdi
  208fe4: 31 f6                        	xorl	%esi, %esi
  208fe6: e8 65 1d 00 00               	callq	0x20ad50 <memset@plt>
  208feb: c6 03 01                     	movb	$1, (%rbx)
  208fee: 48 8d 05 1b 43 20 00         	leaq	2114331(%rip), %rax     # 0x40d310 <__afl_cmp_map>
  208ff5: 48 8b 38                     	movq	(%rax), %rdi
  208ff8: 48 85 ff                     	testq	%rdi, %rdi
  208ffb: 74 0d                        	je	0x20900a <__afl_coverage_discard+0x3a>
  208ffd: ba 00 00 08 04               	movl	$67633152, %edx         # imm = 0x4080000
  209002: 31 f6                        	xorl	%esi, %esi
  209004: 5b                           	popq	%rbx
  209005: e9 46 1d 00 00               	jmp	0x20ad50 <memset@plt>
  20900a: 5b                           	popq	%rbx
  20900b: c3                           	retq
  20900c: 0f 1f 40 00                  	nopl	(%rax)

0000000000209010 <__afl_coverage_skip>:
  209010: 53                           	pushq	%rbx
  209011: 48 8b 1d d0 40 00 00         	movq	16592(%rip), %rbx       # 0x20d0e8 <__afl_area_ptr_backup>
  209018: 48 8d 05 b9 40 00 00         	leaq	16569(%rip), %rax       # 0x20d0d8 <__afl_map_size>
  20901f: 8b 10                        	movl	(%rax), %edx
  209021: 48 89 df                     	movq	%rbx, %rdi
  209024: 31 f6                        	xorl	%esi, %esi
  209026: e8 25 1d 00 00               	callq	0x20ad50 <memset@plt>
  20902b: c6 03 01                     	movb	$1, (%rbx)
  20902e: 48 8d 1d db 42 20 00         	leaq	2114267(%rip), %rbx     # 0x40d310 <__afl_cmp_map>
  209035: 48 8b 3b                     	movq	(%rbx), %rdi
  209038: 48 85 ff                     	testq	%rdi, %rdi
  20903b: 74 0c                        	je	0x209049 <__afl_coverage_skip+0x39>
  20903d: ba 00 00 08 04               	movl	$67633152, %edx         # imm = 0x4080000
  209042: 31 f6                        	xorl	%esi, %esi
  209044: e8 07 1d 00 00               	callq	0x20ad50 <memset@plt>
  209049: 80 3d 8c 42 20 00 00         	cmpb	$0, 2114188(%rip)       # 0x40d2dc <is_persistent>
  209050: 74 2d                        	je	0x20907f <__afl_coverage_skip+0x6f>
  209052: 48 8d 05 bf 42 20 00         	leaq	2114239(%rip), %rax     # 0x40d318 <__afl_selective_coverage>
  209059: 83 38 00                     	cmpl	$0, (%rax)
  20905c: 74 21                        	je	0x20907f <__afl_coverage_skip+0x6f>
  20905e: 48 8b 05 7b 40 00 00         	movq	16507(%rip), %rax       # 0x20d0e0 <__afl_area_ptr_dummy>
  209065: 48 8d 0d 5c 40 00 00         	leaq	16476(%rip), %rcx       # 0x20d0c8 <__afl_area_ptr>
  20906c: 48 89 01                     	movq	%rax, (%rcx)
  20906f: 48 c7 03 00 00 00 00         	movq	$0, (%rbx)
  209076: c6 05 63 42 20 00 01         	movb	$1, 2114147(%rip)       # 0x40d2e0 <__afl_selective_coverage_temp>
  20907d: 5b                           	popq	%rbx
  20907e: c3                           	retq
  20907f: 31 ff                        	xorl	%edi, %edi
  209081: e8 8a 1d 00 00               	callq	0x20ae10 <exit@plt>
  209086: 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)

0000000000209090 <__afl_coverage_interesting>:
  209090: 48 8d 05 31 40 00 00         	leaq	16433(%rip), %rax       # 0x20d0c8 <__afl_area_ptr>
  209097: 48 8b 00                     	movq	(%rax), %rax
  20909a: 89 f1                        	movl	%esi, %ecx
  20909c: 40 88 3c 08                  	movb	%dil, (%rax,%rcx)
  2090a0: c3                           	retq
  2090a1: 66 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%rax,%rax)

00000000002090b0 <__afl_set_persistent_mode>:
  2090b0: 40 88 3d 25 42 20 00         	movb	%dil, 2114085(%rip)     # 0x40d2dc <is_persistent>
  2090b7: c3                           	retq
  2090b8: 0f 1f 84 00 00 00 00 00      	nopl	(%rax,%rax)

00000000002090c0 <at_exit>:
  2090c0: 50                           	pushq	%rax
  2090c1: 8b 3d 81 42 20 00            	movl	2114177(%rip), %edi     # 0x40d348 <child_pid>
  2090c7: 85 ff                        	testl	%edi, %edi
  2090c9: 7e 14                        	jle	0x2090df <at_exit+0x1f>
  2090cb: be 09 00 00 00               	movl	$9, %esi
  2090d0: e8 db 1c 00 00               	callq	0x20adb0 <kill@plt>
  2090d5: c7 05 69 42 20 00 ff ff ff ff	movl	$4294967295, 2114153(%rip) # imm = 0xFFFFFFFF
                                                                        # 0x40d348 <child_pid>
  2090df: 31 ff                        	xorl	%edi, %edi
  2090e1: e8 fa 1c 00 00               	callq	0x20ade0 <_exit@plt>
  2090e6: 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)

00000000002090f0 <__afl_map_shm_fuzz>:
  2090f0: 53                           	pushq	%rbx
  2090f1: 48 8d 3d 3a 90 ff ff         	leaq	-28614(%rip), %rdi      # 0x202132 <_IO_stdin_used+0x3d2>
  2090f8: e8 43 1a 00 00               	callq	0x20ab40 <getenv@plt>
  2090fd: 48 89 c3                     	movq	%rax, %rbx
  209100: 80 3d e1 41 20 00 01         	cmpb	$1, 2114017(%rip)       # 0x40d2e8 <__afl_debug>
  209107: 74 50                        	je	0x209159 <__afl_map_shm_fuzz+0x69>
  209109: 48 85 db                     	testq	%rbx, %rbx
  20910c: 74 76                        	je	0x209184 <__afl_map_shm_fuzz+0x94>
  20910e: 48 89 df                     	movq	%rbx, %rdi
  209111: 31 f6                        	xorl	%esi, %esi
  209113: ba 0a 00 00 00               	movl	$10, %edx
  209118: e8 93 1a 00 00               	callq	0x20abb0 <strtol@plt>
  20911d: 89 c7                        	movl	%eax, %edi
  20911f: 31 f6                        	xorl	%esi, %esi
  209121: 31 d2                        	xorl	%edx, %edx
  209123: e8 f8 1c 00 00               	callq	0x20ae20 <shmat@plt>
  209128: 48 8d 48 01                  	leaq	1(%rax), %rcx
  20912c: 48 83 f9 01                  	cmpq	$1, %rcx
  209130: 0f 86 91 00 00 00            	jbe	0x2091c7 <__afl_map_shm_fuzz+0xd7>
  209136: 48 8d 0d 93 3f 00 00         	leaq	16275(%rip), %rcx       # 0x20d0d0 <__afl_fuzz_len>
  20913d: 48 89 01                     	movq	%rax, (%rcx)
  209140: 48 83 c0 04                  	addq	$4, %rax
  209144: 48 8d 0d e5 41 20 00         	leaq	2114021(%rip), %rcx     # 0x40d330 <__afl_fuzz_ptr>
  20914b: 48 89 01                     	movq	%rax, (%rcx)
  20914e: 80 3d 93 41 20 00 01         	cmpb	$1, 2113939(%rip)       # 0x40d2e8 <__afl_debug>
  209155: 74 4f                        	je	0x2091a6 <__afl_map_shm_fuzz+0xb6>
  209157: 5b                           	popq	%rbx
  209158: c3                           	retq
  209159: 48 8b 05 30 2f 00 00         	movq	12080(%rip), %rax       # 0x20c090 <write+0x20c090>
  209160: 48 8b 38                     	movq	(%rax), %rdi
  209163: 48 85 db                     	testq	%rbx, %rbx
  209166: 48 8d 15 0d 8f ff ff         	leaq	-28915(%rip), %rdx      # 0x20207a <_IO_stdin_used+0x31a>
  20916d: 48 0f 45 d3                  	cmovneq	%rbx, %rdx
  209171: 48 8d 35 dd 8d ff ff         	leaq	-29219(%rip), %rsi      # 0x201f55 <_IO_stdin_used+0x1f5>
  209178: 31 c0                        	xorl	%eax, %eax
  20917a: e8 01 1b 00 00               	callq	0x20ac80 <fprintf@plt>
  20917f: 48 85 db                     	testq	%rbx, %rbx
  209182: 75 8a                        	jne	0x20910e <__afl_map_shm_fuzz+0x1e>
  209184: 48 8b 05 05 2f 00 00         	movq	12037(%rip), %rax       # 0x20c090 <write+0x20c090>
  20918b: 48 8b 08                     	movq	(%rax), %rcx
  20918e: 48 8d 3d af 8f ff ff         	leaq	-28753(%rip), %rdi      # 0x202144 <_IO_stdin_used+0x3e4>
  209195: be 35 00 00 00               	movl	$53, %esi
  20919a: ba 01 00 00 00               	movl	$1, %edx
  20919f: e8 fc 1a 00 00               	callq	0x20aca0 <fwrite@plt>
  2091a4: eb 2d                        	jmp	0x2091d3 <__afl_map_shm_fuzz+0xe3>
  2091a6: 48 8b 05 e3 2e 00 00         	movq	12003(%rip), %rax       # 0x20c090 <write+0x20c090>
  2091ad: 48 8b 08                     	movq	(%rax), %rcx
  2091b0: 48 8d 3d 8b 95 ff ff         	leaq	-27253(%rip), %rdi      # 0x202742 <_IO_stdin_used+0x9e2>
  2091b7: be 2e 00 00 00               	movl	$46, %esi
  2091bc: ba 01 00 00 00               	movl	$1, %edx
  2091c1: 5b                           	popq	%rbx
  2091c2: e9 d9 1a 00 00               	jmp	0x20aca0 <fwrite@plt>
  2091c7: 48 8d 3d 4a 8c ff ff         	leaq	-29622(%rip), %rdi      # 0x201e18 <_IO_stdin_used+0xb8>
  2091ce: e8 8d 19 00 00               	callq	0x20ab60 <perror@plt>
  2091d3: bf 04 00 00 00               	movl	$4, %edi
  2091d8: e8 13 00 00 00               	callq	0x2091f0 <send_forkserver_error>
  2091dd: bf 01 00 00 00               	movl	$1, %edi
  2091e2: e8 29 1c 00 00               	callq	0x20ae10 <exit@plt>
  2091e7: 66 0f 1f 84 00 00 00 00 00   	nopw	(%rax,%rax)

00000000002091f0 <send_forkserver_error>:
  2091f0: 50                           	pushq	%rax
  2091f1: 0f b7 c7                     	movzwl	%di, %eax
  2091f4: c1 e0 08                     	shll	$8, %eax
  2091f7: 0d 8f 00 00 f8               	orl	$4160749711, %eax       # imm = 0xF800008F
  2091fc: 89 44 24 04                  	movl	%eax, 4(%rsp)
  209200: 48 8d 74 24 04               	leaq	4(%rsp), %rsi
  209205: ba 04 00 00 00               	movl	$4, %edx
  20920a: bf c7 00 00 00               	movl	$199, %edi
  20920f: e8 6c 1b 00 00               	callq	0x20ad80 <write@plt>
  209214: 58                           	popq	%rax
  209215: c3                           	retq
  209216: cc                           	int3
  209217: cc                           	int3
  209218: cc                           	int3
  209219: cc                           	int3
  20921a: cc                           	int3
  20921b: cc                           	int3
  20921c: cc                           	int3
  20921d: cc                           	int3
  20921e: cc                           	int3
  20921f: cc                           	int3

0000000000209220 <__libc_csu_init>:
  209220: f3 0f 1e fa                  	endbr64
  209224: 41 57                        	pushq	%r15
  209226: 4c 8d 3d 6b 2c 00 00         	leaq	11371(%rip), %r15       # 0x20be98 <__init_array_start>
  20922d: 41 56                        	pushq	%r14
  20922f: 49 89 d6                     	movq	%rdx, %r14
  209232: 41 55                        	pushq	%r13
  209234: 49 89 f5                     	movq	%rsi, %r13
  209237: 41 54                        	pushq	%r12
  209239: 41 89 fc                     	movl	%edi, %r12d
  20923c: 55                           	pushq	%rbp
  20923d: 48 8d 2d 8c 2c 00 00         	leaq	11404(%rip), %rbp       # 0x20bed0 <_DYNAMIC>
  209244: 53                           	pushq	%rbx
  209245: 4c 29 fd                     	subq	%r15, %rbp
  209248: 48 83 ec 08                  	subq	$8, %rsp
  20924c: e8 af 18 00 00               	callq	0x20ab00 <_init>
  209251: 48 c1 fd 03                  	sarq	$3, %rbp
  209255: 74 1f                        	je	0x209276 <__libc_csu_init+0x56>
  209257: 31 db                        	xorl	%ebx, %ebx
  209259: 0f 1f 80 00 00 00 00         	nopl	(%rax)
  209260: 4c 89 f2                     	movq	%r14, %rdx
  209263: 4c 89 ee                     	movq	%r13, %rsi
  209266: 44 89 e7                     	movl	%r12d, %edi
  209269: 41 ff 14 df                  	callq	*(%r15,%rbx,8)
  20926d: 48 83 c3 01                  	addq	$1, %rbx
  209271: 48 39 dd                     	cmpq	%rbx, %rbp
  209274: 75 ea                        	jne	0x209260 <__libc_csu_init+0x40>
  209276: 48 83 c4 08                  	addq	$8, %rsp
  20927a: 5b                           	popq	%rbx
  20927b: 5d                           	popq	%rbp
  20927c: 41 5c                        	popq	%r12
  20927e: 41 5d                        	popq	%r13
  209280: 41 5e                        	popq	%r14
  209282: 41 5f                        	popq	%r15
  209284: c3                           	retq
  209285: 66 66 2e 0f 1f 84 00 00 00 00 00     	nopw	%cs:(%rax,%rax)

0000000000209290 <__libc_csu_fini>:
  209290: f3 0f 1e fa                  	endbr64
  209294: c3                           	retq
  209295: cc                           	int3
  209296: cc                           	int3
  209297: cc                           	int3
  209298: cc                           	int3
  209299: cc                           	int3
  20929a: cc                           	int3
  20929b: cc                           	int3
  20929c: cc                           	int3
  20929d: cc                           	int3
  20929e: cc                           	int3
  20929f: cc                           	int3

00000000002092a0 <http_parser_url_init>:
  2092a0: 55                           	pushq	%rbp
  2092a1: 48 89 e5                     	movq	%rsp, %rbp
  2092a4: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  2092ad: 48 8b 0d 14 3e 00 00         	movq	15892(%rip), %rcx       # 0x20d0c8 <__afl_area_ptr>
  2092b4: 48 35 05 79 00 00            	xorq	$30981, %rax            # imm = 0x7905
  2092ba: 8a 14 01                     	movb	(%rcx,%rax), %dl
  2092bd: 80 c2 01                     	addb	$1, %dl
  2092c0: 80 d2 00                     	adcb	$0, %dl
  2092c3: 88 14 01                     	movb	%dl, (%rcx,%rax)
  2092c6: 64 c7 04 25 90 ff ff ff 82 3c 00 00  	movl	$15490, %fs:-112 # imm = 0x3C82
  2092d2: 0f 57 c0                     	xorps	%xmm0, %xmm0
  2092d5: 0f 11 47 10                  	movups	%xmm0, 16(%rdi)
  2092d9: 0f 11 07                     	movups	%xmm0, (%rdi)
  2092dc: 5d                           	popq	%rbp
  2092dd: c3                           	retq
  2092de: cc                           	int3
  2092df: cc                           	int3

00000000002092e0 <http_parser_parse_url>:
  2092e0: 55                           	pushq	%rbp
  2092e1: 48 89 e5                     	movq	%rsp, %rbp
  2092e4: 41 57                        	pushq	%r15
  2092e6: 41 56                        	pushq	%r14
  2092e8: 41 55                        	pushq	%r13
  2092ea: 41 54                        	pushq	%r12
  2092ec: 53                           	pushq	%rbx
  2092ed: 48 83 ec 28                  	subq	$40, %rsp
  2092f1: 48 85 f6                     	testq	%rsi, %rsi
  2092f4: 0f 84 26 0e 00 00            	je	0x20a120 <http_parser_parse_url+0xe40>
  2092fa: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  209303: 4c 8b 05 be 3d 00 00         	movq	15806(%rip), %r8        # 0x20d0c8 <__afl_area_ptr>
  20930a: 48 35 ba 49 00 00            	xorq	$18874, %rax            # imm = 0x49BA
  209310: 41 8a 1c 00                  	movb	(%r8,%rax), %bl
  209314: 80 c3 01                     	addb	$1, %bl
  209317: 80 d3 00                     	adcb	$0, %bl
  20931a: 41 88 1c 00                  	movb	%bl, (%r8,%rax)
  20931e: 64 c7 04 25 90 ff ff ff dd 24 00 00  	movl	$9437, %fs:-112 # imm = 0x24DD
  20932a: c7 01 00 00 00 00            	movl	$0, (%rcx)
  209330: 48 85 f6                     	testq	%rsi, %rsi
  209333: 0f 8e 70 03 00 00            	jle	0x2096a9 <http_parser_parse_url+0x3c9>
  209339: 48 89 4d c8                  	movq	%rcx, -56(%rbp)
  20933d: 31 c0                        	xorl	%eax, %eax
  20933f: 89 55 c4                     	movl	%edx, -60(%rbp)
  209342: 85 d2                        	testl	%edx, %edx
  209344: 0f 95 c0                     	setne	%al
  209347: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  209350: 48 8b 15 71 3d 00 00         	movq	15729(%rip), %rdx       # 0x20d0c8 <__afl_area_ptr>
  209357: 48 81 f1 f0 b6 00 00         	xorq	$46832, %rcx            # imm = 0xB6F0
  20935e: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  209361: 80 c3 01                     	addb	$1, %bl
  209364: 80 d3 00                     	adcb	$0, %bl
  209367: 48 89 75 b8                  	movq	%rsi, -72(%rbp)
  20936b: 4c 8d 3c 37                  	leaq	(%rdi,%rsi), %r15
  20936f: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  209372: 64 c7 04 25 90 ff ff ff 78 5b 00 00  	movl	$23416, %fs:-112 # imm = 0x5B78
  20937e: 8d 04 85 14 00 00 00         	leal	20(,%rax,4), %eax
  209385: 41 bd 07 00 00 00            	movl	$7, %r13d
  20938b: 45 31 e4                     	xorl	%r12d, %r12d
  20938e: c7 45 d4 00 00 00 00         	movl	$0, -44(%rbp)
  209395: c7 45 d0 00 00 00 00         	movl	$0, -48(%rbp)
  20939c: e9 a7 00 00 00               	jmp	0x209448 <http_parser_parse_url+0x168>
  2093a1: 66 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%rax,%rax)
  2093b0: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  2093b9: 48 8b 35 08 3d 00 00         	movq	15624(%rip), %rsi       # 0x20d0c8 <__afl_area_ptr>
  2093c0: 48 81 f2 47 30 00 00         	xorq	$12359, %rdx            # imm = 0x3047
  2093c7: 0f b6 1c 16                  	movzbl	(%rsi,%rdx), %ebx
  2093cb: 80 c3 01                     	addb	$1, %bl
  2093ce: 80 d3 00                     	adcb	$0, %bl
  2093d1: 88 1c 16                     	movb	%bl, (%rsi,%rdx)
  2093d4: 64 c7 04 25 90 ff ff ff 23 18 00 00  	movl	$6179, %fs:-112 # imm = 0x1823
  2093e0: 89 ca                        	movl	%ecx, %edx
  2093e2: 48 8b 75 c8                  	movq	-56(%rbp), %rsi
  2093e6: 66 44 89 64 96 04            	movw	%r12w, 4(%rsi,%rdx,4)
  2093ec: 66 c7 44 96 06 01 00         	movw	$1, 6(%rsi,%rdx,4)
  2093f3: 8b 55 d4                     	movl	-44(%rbp), %edx
  2093f6: 0f ab ca                     	btsl	%ecx, %edx
  2093f9: 89 55 d4                     	movl	%edx, -44(%rbp)
  2093fc: 66 89 16                     	movw	%dx, (%rsi)
  2093ff: 41 89 cd                     	movl	%ecx, %r13d
  209402: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20940b: 48 8b 15 b6 3c 00 00         	movq	15542(%rip), %rdx       # 0x20d0c8 <__afl_area_ptr>
  209412: 48 81 f1 a5 d8 00 00         	xorq	$55461, %rcx            # imm = 0xD8A5
  209419: 0f b6 1c 0a                  	movzbl	(%rdx,%rcx), %ebx
  20941d: 80 c3 01                     	addb	$1, %bl
  209420: 80 d3 00                     	adcb	$0, %bl
  209423: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  209426: 64 c7 04 25 90 ff ff ff 52 6c 00 00  	movl	$27730, %fs:-112 # imm = 0x6C52
  209432: 4c 89 f7                     	movq	%r14, %rdi
  209435: 4b 8d 0c 26                  	leaq	(%r14,%r12), %rcx
  209439: 48 ff c1                     	incq	%rcx
  20943c: 49 ff c4                     	incq	%r12
  20943f: 4c 39 f9                     	cmpq	%r15, %rcx
  209442: 0f 83 e2 01 00 00            	jae	0x20962a <http_parser_parse_url+0x34a>
  209448: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  209451: 48 8b 15 70 3c 00 00         	movq	15472(%rip), %rdx       # 0x20d0c8 <__afl_area_ptr>
  209458: 48 81 f1 d2 ac 00 00         	xorq	$44242, %rcx            # imm = 0xACD2
  20945f: 0f b6 1c 0a                  	movzbl	(%rdx,%rcx), %ebx
  209463: 80 c3 01                     	addb	$1, %bl
  209466: 80 d3 00                     	adcb	$0, %bl
  209469: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20946c: 64 c7 04 25 90 ff ff ff 69 56 00 00  	movl	$22121, %fs:-112 # imm = 0x5669
  209478: 49 89 fe                     	movq	%rdi, %r14
  20947b: 42 0f be 34 27               	movsbl	(%rdi,%r12), %esi
  209480: 89 c7                        	movl	%eax, %edi
  209482: e8 39 0f 00 00               	callq	0x20a3c0 <parse_url_char>
  209487: 8d 50 ff                     	leal	-1(%rax), %edx
  20948a: 83 fa 1e                     	cmpl	$30, %edx
  20948d: 0f 87 93 0e 00 00            	ja	0x20a326 <http_parser_parse_url+0x1046>
  209493: 31 c9                        	xorl	%ecx, %ecx
  209495: ff 24 d5 08 2b 20 00         	jmpq	*2108168(,%rdx,8)
  20949c: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  2094a5: 48 8b 15 1c 3c 00 00         	movq	15388(%rip), %rdx       # 0x20d0c8 <__afl_area_ptr>
  2094ac: 48 81 f1 bc b2 00 00         	xorq	$45756, %rcx            # imm = 0xB2BC
  2094b3: 0f b6 1c 0a                  	movzbl	(%rdx,%rcx), %ebx
  2094b7: 80 c3 01                     	addb	$1, %bl
  2094ba: 80 d3 00                     	adcb	$0, %bl
  2094bd: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  2094c0: 64 c7 04 25 90 ff ff ff 5e 59 00 00  	movl	$22878, %fs:-112 # imm = 0x595E
  2094cc: c7 45 d0 01 00 00 00         	movl	$1, -48(%rbp)
  2094d3: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  2094dc: 48 8b 15 e5 3b 00 00         	movq	15333(%rip), %rdx       # 0x20d0c8 <__afl_area_ptr>
  2094e3: 48 81 f1 a7 16 00 00         	xorq	$5799, %rcx             # imm = 0x16A7
  2094ea: 0f b6 1c 0a                  	movzbl	(%rdx,%rcx), %ebx
  2094ee: 80 c3 01                     	addb	$1, %bl
  2094f1: 80 d3 00                     	adcb	$0, %bl
  2094f4: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  2094f7: 64 c7 04 25 90 ff ff ff 53 0b 00 00  	movl	$2899, %fs:-112 # imm = 0xB53
  209503: b9 01 00 00 00               	movl	$1, %ecx
  209508: e9 a3 00 00 00               	jmp	0x2095b0 <http_parser_parse_url+0x2d0>
  20950d: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  209516: 48 8b 15 ab 3b 00 00         	movq	15275(%rip), %rdx       # 0x20d0c8 <__afl_area_ptr>
  20951d: 48 81 f1 0c d0 00 00         	xorq	$53260, %rcx            # imm = 0xD00C
  209524: 0f b6 1c 0a                  	movzbl	(%rdx,%rcx), %ebx
  209528: 80 c3 01                     	addb	$1, %bl
  20952b: 80 d3 00                     	adcb	$0, %bl
  20952e: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  209531: 64 c7 04 25 90 ff ff ff 06 68 00 00  	movl	$26630, %fs:-112 # imm = 0x6806
  20953d: b9 03 00 00 00               	movl	$3, %ecx
  209542: eb 6c                        	jmp	0x2095b0 <http_parser_parse_url+0x2d0>
  209544: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20954d: 48 8b 15 74 3b 00 00         	movq	15220(%rip), %rdx       # 0x20d0c8 <__afl_area_ptr>
  209554: 48 81 f1 28 ef 00 00         	xorq	$61224, %rcx            # imm = 0xEF28
  20955b: 0f b6 1c 0a                  	movzbl	(%rdx,%rcx), %ebx
  20955f: 80 c3 01                     	addb	$1, %bl
  209562: 80 d3 00                     	adcb	$0, %bl
  209565: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  209568: 64 c7 04 25 90 ff ff ff 94 77 00 00  	movl	$30612, %fs:-112 # imm = 0x7794
  209574: b9 04 00 00 00               	movl	$4, %ecx
  209579: eb 35                        	jmp	0x2095b0 <http_parser_parse_url+0x2d0>
  20957b: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  209584: 48 8b 15 3d 3b 00 00         	movq	15165(%rip), %rdx       # 0x20d0c8 <__afl_area_ptr>
  20958b: 48 81 f1 3a b1 00 00         	xorq	$45370, %rcx            # imm = 0xB13A
  209592: 0f b6 1c 0a                  	movzbl	(%rdx,%rcx), %ebx
  209596: 80 c3 01                     	addb	$1, %bl
  209599: 80 d3 00                     	adcb	$0, %bl
  20959c: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20959f: 64 c7 04 25 90 ff ff ff 9d 58 00 00  	movl	$22685, %fs:-112 # imm = 0x589D
  2095ab: b9 05 00 00 00               	movl	$5, %ecx
  2095b0: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  2095b9: 48 8b 35 08 3b 00 00         	movq	15112(%rip), %rsi       # 0x20d0c8 <__afl_area_ptr>
  2095c0: 48 81 f2 e8 3f 00 00         	xorq	$16360, %rdx            # imm = 0x3FE8
  2095c7: 0f b6 1c 16                  	movzbl	(%rsi,%rdx), %ebx
  2095cb: 80 c3 01                     	addb	$1, %bl
  2095ce: 80 d3 00                     	adcb	$0, %bl
  2095d1: 88 1c 16                     	movb	%bl, (%rsi,%rdx)
  2095d4: 64 c7 04 25 90 ff ff ff f4 1f 00 00  	movl	$8180, %fs:-112 # imm = 0x1FF4
  2095e0: 44 39 e9                     	cmpl	%r13d, %ecx
  2095e3: 0f 85 c7 fd ff ff            	jne	0x2093b0 <http_parser_parse_url+0xd0>
  2095e9: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  2095f2: 48 8b 15 cf 3a 00 00         	movq	15055(%rip), %rdx       # 0x20d0c8 <__afl_area_ptr>
  2095f9: 48 81 f1 a9 8f 00 00         	xorq	$36777, %rcx            # imm = 0x8FA9
  209600: 0f b6 1c 0a                  	movzbl	(%rdx,%rcx), %ebx
  209604: 80 c3 01                     	addb	$1, %bl
  209607: 80 d3 00                     	adcb	$0, %bl
  20960a: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20960d: 64 c7 04 25 90 ff ff ff d4 47 00 00  	movl	$18388, %fs:-112 # imm = 0x47D4
  209619: 44 89 e9                     	movl	%r13d, %ecx
  20961c: 48 8b 55 c8                  	movq	-56(%rbp), %rdx
  209620: 66 ff 44 8a 06               	incw	6(%rdx,%rcx,4)
  209625: e9 d8 fd ff ff               	jmp	0x209402 <http_parser_parse_url+0x122>
  20962a: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  209633: 48 8b 0d 8e 3a 00 00         	movq	14990(%rip), %rcx       # 0x20d0c8 <__afl_area_ptr>
  20963a: 48 35 20 d2 00 00            	xorq	$53792, %rax            # imm = 0xD220
  209640: 8a 14 01                     	movb	(%rcx,%rax), %dl
  209643: 80 c2 01                     	addb	$1, %dl
  209646: 80 d2 00                     	adcb	$0, %dl
  209649: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20964c: 64 c7 04 25 90 ff ff ff 10 69 00 00  	movl	$26896, %fs:-112 # imm = 0x6910
  209658: 44 8b 6d d4                  	movl	-44(%rbp), %r13d
  20965c: 44 89 e8                     	movl	%r13d, %eax
  20965f: 83 e0 03                     	andl	$3, %eax
  209662: 66 83 f8 01                  	cmpw	$1, %ax
  209666: 0f 84 b4 0a 00 00            	je	0x20a120 <http_parser_parse_url+0xe40>
  20966c: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  209675: 48 8b 0d 4c 3a 00 00         	movq	14924(%rip), %rcx       # 0x20d0c8 <__afl_area_ptr>
  20967c: 48 35 e6 b2 00 00            	xorq	$45798, %rax            # imm = 0xB2E6
  209682: 8a 14 01                     	movb	(%rcx,%rax), %dl
  209685: 80 c2 01                     	addb	$1, %dl
  209688: 80 d2 00                     	adcb	$0, %dl
  20968b: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20968e: 64 c7 04 25 90 ff ff ff 73 59 00 00  	movl	$22899, %fs:-112 # imm = 0x5973
  20969a: 41 f6 c5 02                  	testb	$2, %r13b
  20969e: 75 44                        	jne	0x2096e4 <http_parser_parse_url+0x404>
  2096a0: 4c 8b 65 c8                  	movq	-56(%rbp), %r12
  2096a4: e9 0e 0a 00 00               	jmp	0x20a0b7 <http_parser_parse_url+0xdd7>
  2096a9: 31 c0                        	xorl	%eax, %eax
  2096ab: 85 d2                        	testl	%edx, %edx
  2096ad: 0f 95 c0                     	setne	%al
  2096b0: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  2096b9: 48 8b 15 08 3a 00 00         	movq	14856(%rip), %rdx       # 0x20d0c8 <__afl_area_ptr>
  2096c0: 48 81 f1 f6 4d 00 00         	xorq	$19958, %rcx            # imm = 0x4DF6
  2096c7: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  2096ca: 80 c3 01                     	addb	$1, %bl
  2096cd: 80 d3 00                     	adcb	$0, %bl
  2096d0: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  2096d3: 64 c7 04 25 90 ff ff ff fb 26 00 00  	movl	$9979, %fs:-112 # imm = 0x26FB
  2096df: e9 41 0a 00 00               	jmp	0x20a125 <http_parser_parse_url+0xe45>
  2096e4: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  2096ed: 48 8b 0d d4 39 00 00         	movq	14804(%rip), %rcx       # 0x20d0c8 <__afl_area_ptr>
  2096f4: 48 35 44 65 00 00            	xorq	$25924, %rax            # imm = 0x6544
  2096fa: 8a 14 01                     	movb	(%rcx,%rax), %dl
  2096fd: 80 c2 01                     	addb	$1, %dl
  209700: 80 d2 00                     	adcb	$0, %dl
  209703: 88 14 01                     	movb	%dl, (%rcx,%rax)
  209706: 64 c7 04 25 90 ff ff ff a2 32 00 00  	movl	$12962, %fs:-112 # imm = 0x32A2
  209712: 4c 8b 65 c8                  	movq	-56(%rbp), %r12
  209716: 41 0f b7 4c 24 08            	movzwl	8(%r12), %ecx
  20971c: 45 0f b7 5c 24 0a            	movzwl	10(%r12), %r11d
  209722: 31 c0                        	xorl	%eax, %eax
  209724: 83 7d d0 00                  	cmpl	$0, -48(%rbp)
  209728: 0f 94 c0                     	sete	%al
  20972b: 66 41 c7 44 24 0a 00 00      	movw	$0, 10(%r12)
  209733: 44 8d 04 00                  	leal	(%rax,%rax), %r8d
  209737: 41 83 c0 02                  	addl	$2, %r8d
  20973b: 4d 85 db                     	testq	%r11, %r11
  20973e: 0f 84 02 09 00 00            	je	0x20a046 <http_parser_parse_url+0xd66>
  209744: 49 01 cb                     	addq	%rcx, %r11
  209747: 49 01 fb                     	addq	%rdi, %r11
  20974a: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  209753: 48 8b 15 6e 39 00 00         	movq	14702(%rip), %rdx       # 0x20d0c8 <__afl_area_ptr>
  20975a: 48 35 5a 76 00 00            	xorq	$30298, %rax            # imm = 0x765A
  209760: 8a 1c 02                     	movb	(%rdx,%rax), %bl
  209763: 80 c3 01                     	addb	$1, %bl
  209766: 80 d3 00                     	adcb	$0, %bl
  209769: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20976c: 64 c7 04 25 90 ff ff ff 2d 3b 00 00  	movl	$15149, %fs:-112 # imm = 0x3B2D
  209778: 45 31 d2                     	xorl	%r10d, %r10d
  20977b: 49 b9 01 03 00 00 00 00 00 04	movabsq	$288230376151712513, %r9 # imm = 0x400000000000301
  209785: e9 8b 00 00 00               	jmp	0x209815 <http_parser_parse_url+0x535>
  20978a: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  209793: 48 8b 15 2e 39 00 00         	movq	14638(%rip), %rdx       # 0x20d0c8 <__afl_area_ptr>
  20979a: 48 35 9a 6d 00 00            	xorq	$28058, %rax            # imm = 0x6D9A
  2097a0: 0f b6 1c 02                  	movzbl	(%rdx,%rax), %ebx
  2097a4: 80 c3 01                     	addb	$1, %bl
  2097a7: 80 d3 00                     	adcb	$0, %bl
  2097aa: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  2097ad: 64 c7 04 25 90 ff ff ff cd 36 00 00  	movl	$14029, %fs:-112 # imm = 0x36CD
  2097b9: 41 ff c2                     	incl	%r10d
  2097bc: 66 45 89 54 24 0a            	movw	%r10w, 10(%r12)
  2097c2: be 07 00 00 00               	movl	$7, %esi
  2097c7: 66 0f 1f 84 00 00 00 00 00   	nopw	(%rax,%rax)
  2097d0: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  2097d9: 48 8b 15 e8 38 00 00         	movq	14568(%rip), %rdx       # 0x20d0c8 <__afl_area_ptr>
  2097e0: 48 35 4d 8d 00 00            	xorq	$36173, %rax            # imm = 0x8D4D
  2097e6: 0f b6 1c 02                  	movzbl	(%rdx,%rax), %ebx
  2097ea: 80 c3 01                     	addb	$1, %bl
  2097ed: 80 d3 00                     	adcb	$0, %bl
  2097f0: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  2097f3: 64 c7 04 25 90 ff ff ff a6 46 00 00  	movl	$18086, %fs:-112 # imm = 0x46A6
  2097ff: 49 8d 04 0e                  	leaq	(%r14,%rcx), %rax
  209803: 48 ff c0                     	incq	%rax
  209806: 48 ff c1                     	incq	%rcx
  209809: 41 89 f0                     	movl	%esi, %r8d
  20980c: 4c 39 d8                     	cmpq	%r11, %rax
  20980f: 0f 83 34 08 00 00            	jae	0x20a049 <http_parser_parse_url+0xd69>
  209815: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20981e: 48 8b 15 a3 38 00 00         	movq	14499(%rip), %rdx       # 0x20d0c8 <__afl_area_ptr>
  209825: 48 35 d5 de 00 00            	xorq	$57045, %rax            # imm = 0xDED5
  20982b: 0f b6 1c 02                  	movzbl	(%rdx,%rax), %ebx
  20982f: 80 c3 01                     	addb	$1, %bl
  209832: 80 d3 00                     	adcb	$0, %bl
  209835: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  209838: 64 c7 04 25 90 ff ff ff 6a 6f 00 00  	movl	$28522, %fs:-112 # imm = 0x6F6A
  209844: 41 8d 50 fe                  	leal	-2(%r8), %edx
  209848: 83 fa 0a                     	cmpl	$10, %edx
  20984b: 0f 87 cf 08 00 00            	ja	0x20a120 <http_parser_parse_url+0xe40>
  209851: 41 0f b6 04 0e               	movzbl	(%r14,%rcx), %eax
  209856: ff 24 d5 00 2c 20 00         	jmpq	*2108416(,%rdx,8)
  20985d: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  209866: 48 8b 35 5b 38 00 00         	movq	14427(%rip), %rsi       # 0x20d0c8 <__afl_area_ptr>
  20986d: 48 81 f2 2a 49 00 00         	xorq	$18730, %rdx            # imm = 0x492A
  209874: 0f b6 1c 16                  	movzbl	(%rsi,%rdx), %ebx
  209878: 80 c3 01                     	addb	$1, %bl
  20987b: 80 d3 00                     	adcb	$0, %bl
  20987e: 88 1c 16                     	movb	%bl, (%rsi,%rdx)
  209881: 64 c7 04 25 90 ff ff ff 95 24 00 00  	movl	$9365, %fs:-112 # imm = 0x2495
  20988d: be 04 00 00 00               	movl	$4, %esi
  209892: 3c 40                        	cmpb	$64, %al
  209894: 0f 84 36 ff ff ff            	je	0x2097d0 <http_parser_parse_url+0x4f0>
  20989a: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  2098a3: 48 8b 35 1e 38 00 00         	movq	14366(%rip), %rsi       # 0x20d0c8 <__afl_area_ptr>
  2098aa: 48 81 f2 0e 59 00 00         	xorq	$22798, %rdx            # imm = 0x590E
  2098b1: 0f b6 1c 16                  	movzbl	(%rsi,%rdx), %ebx
  2098b5: 80 c3 01                     	addb	$1, %bl
  2098b8: 80 d3 00                     	adcb	$0, %bl
  2098bb: 88 1c 16                     	movb	%bl, (%rsi,%rdx)
  2098be: 64 c7 04 25 90 ff ff ff 87 2c 00 00  	movl	$11399, %fs:-112 # imm = 0x2C87
  2098ca: 8d 50 d0                     	leal	-48(%rax), %edx
  2098cd: 80 fa 0a                     	cmpb	$10, %dl
  2098d0: 72 56                        	jb	0x209928 <http_parser_parse_url+0x648>
  2098d2: 89 c2                        	movl	%eax, %edx
  2098d4: 80 ca 20                     	orb	$32, %dl
  2098d7: 80 c2 9f                     	addb	$-97, %dl
  2098da: 80 fa 1a                     	cmpb	$26, %dl
  2098dd: 72 49                        	jb	0x209928 <http_parser_parse_url+0x648>
  2098df: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  2098e8: 48 8b 35 d9 37 00 00         	movq	14297(%rip), %rsi       # 0x20d0c8 <__afl_area_ptr>
  2098ef: 48 81 f2 a4 ca 00 00         	xorq	$51876, %rdx            # imm = 0xCAA4
  2098f6: 0f b6 1c 16                  	movzbl	(%rsi,%rdx), %ebx
  2098fa: 80 c3 01                     	addb	$1, %bl
  2098fd: 80 d3 00                     	adcb	$0, %bl
  209900: 88 1c 16                     	movb	%bl, (%rsi,%rdx)
  209903: 64 c7 04 25 90 ff ff ff 52 65 00 00  	movl	$25938, %fs:-112 # imm = 0x6552
  20990f: 04 df                        	addb	$-33, %al
  209911: 3c 5d                        	cmpb	$93, %al
  209913: 0f 87 07 08 00 00            	ja	0x20a120 <http_parser_parse_url+0xe40>
  209919: 0f b6 d0                     	movzbl	%al, %edx
  20991c: b8 01 00 00 00               	movl	$1, %eax
  209921: ff 24 d5 58 2c 20 00         	jmpq	*2108504(,%rdx,8)
  209928: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  209931: 48 8b 15 90 37 00 00         	movq	14224(%rip), %rdx       # 0x20d0c8 <__afl_area_ptr>
  209938: 48 35 d2 36 00 00            	xorq	$14034, %rax            # imm = 0x36D2
  20993e: 0f b6 1c 02                  	movzbl	(%rdx,%rax), %ebx
  209942: 80 c3 01                     	addb	$1, %bl
  209945: 80 d3 00                     	adcb	$0, %bl
  209948: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20994b: 64 c7 04 25 90 ff ff ff 69 1b 00 00  	movl	$7017, %fs:-112 # imm = 0x1B69
  209957: 41 83 f8 03                  	cmpl	$3, %r8d
  20995b: 0f 85 64 05 00 00            	jne	0x209ec5 <http_parser_parse_url+0xbe5>
  209961: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20996a: 48 8b 15 57 37 00 00         	movq	14167(%rip), %rdx       # 0x20d0c8 <__afl_area_ptr>
  209971: 48 35 31 52 00 00            	xorq	$21041, %rax            # imm = 0x5231
  209977: 0f b6 1c 02                  	movzbl	(%rdx,%rax), %ebx
  20997b: 80 c3 01                     	addb	$1, %bl
  20997e: 80 d3 00                     	adcb	$0, %bl
  209981: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  209984: 64 c7 04 25 90 ff ff ff 18 29 00 00  	movl	$10520, %fs:-112 # imm = 0x2918
  209990: 41 0f b7 44 24 1e            	movzwl	30(%r12), %eax
  209996: e9 6a 05 00 00               	jmp	0x209f05 <http_parser_parse_url+0xc25>
  20999b: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  2099a4: 48 8b 35 1d 37 00 00         	movq	14109(%rip), %rsi       # 0x20d0c8 <__afl_area_ptr>
  2099ab: 48 81 f2 79 1a 00 00         	xorq	$6777, %rdx             # imm = 0x1A79
  2099b2: 0f b6 1c 16                  	movzbl	(%rsi,%rdx), %ebx
  2099b6: 80 c3 01                     	addb	$1, %bl
  2099b9: 80 d3 00                     	adcb	$0, %bl
  2099bc: 88 1c 16                     	movb	%bl, (%rsi,%rdx)
  2099bf: 64 c7 04 25 90 ff ff ff 3c 0d 00 00  	movl	$3388, %fs:-112 # imm = 0xD3C
  2099cb: 04 d0                        	addb	$-48, %al
  2099cd: 3c 0a                        	cmpb	$10, %al
  2099cf: 0f 83 4b 07 00 00            	jae	0x20a120 <http_parser_parse_url+0xe40>
  2099d5: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  2099de: 48 8b 15 e3 36 00 00         	movq	14051(%rip), %rdx       # 0x20d0c8 <__afl_area_ptr>
  2099e5: 48 35 7f 68 00 00            	xorq	$26751, %rax            # imm = 0x687F
  2099eb: 0f b6 1c 02                  	movzbl	(%rdx,%rax), %ebx
  2099ef: 80 c3 01                     	addb	$1, %bl
  2099f2: 80 d3 00                     	adcb	$0, %bl
  2099f5: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  2099f8: 64 c7 04 25 90 ff ff ff 3f 34 00 00  	movl	$13375, %fs:-112 # imm = 0x343F
  209a04: 41 83 f8 0c                  	cmpl	$12, %r8d
  209a08: 0f 85 65 04 00 00            	jne	0x209e73 <http_parser_parse_url+0xb93>
  209a0e: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  209a17: 48 8b 15 aa 36 00 00         	movq	13994(%rip), %rdx       # 0x20d0c8 <__afl_area_ptr>
  209a1e: 48 35 b8 0c 00 00            	xorq	$3256, %rax             # imm = 0xCB8
  209a24: 0f b6 1c 02                  	movzbl	(%rdx,%rax), %ebx
  209a28: 80 c3 01                     	addb	$1, %bl
  209a2b: 80 d3 00                     	adcb	$0, %bl
  209a2e: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  209a31: 64 c7 04 25 90 ff ff ff 5c 06 00 00  	movl	$1628, %fs:-112 # imm = 0x65C
  209a3d: 41 0f b7 44 24 0e            	movzwl	14(%r12), %eax
  209a43: e9 6b 04 00 00               	jmp	0x209eb3 <http_parser_parse_url+0xbd3>
  209a48: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  209a51: 48 8b 35 70 36 00 00         	movq	13936(%rip), %rsi       # 0x20d0c8 <__afl_area_ptr>
  209a58: 48 81 f2 46 02 00 00         	xorq	$582, %rdx              # imm = 0x246
  209a5f: 0f b6 1c 16                  	movzbl	(%rsi,%rdx), %ebx
  209a63: 80 c3 01                     	addb	$1, %bl
  209a66: 80 d3 00                     	adcb	$0, %bl
  209a69: 88 1c 16                     	movb	%bl, (%rsi,%rdx)
  209a6c: 64 c7 04 25 90 ff ff ff 23 01 00 00  	movl	$291, %fs:-112  # imm = 0x123
  209a78: be 05 00 00 00               	movl	$5, %esi
  209a7d: 3c 5b                        	cmpb	$91, %al
  209a7f: 0f 84 4b fd ff ff            	je	0x2097d0 <http_parser_parse_url+0x4f0>
  209a85: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  209a8e: 48 8b 35 33 36 00 00         	movq	13875(%rip), %rsi       # 0x20d0c8 <__afl_area_ptr>
  209a95: 48 81 f2 9e 4f 00 00         	xorq	$20382, %rdx            # imm = 0x4F9E
  209a9c: 0f b6 1c 16                  	movzbl	(%rsi,%rdx), %ebx
  209aa0: 80 c3 01                     	addb	$1, %bl
  209aa3: 80 d3 00                     	adcb	$0, %bl
  209aa6: 88 1c 16                     	movb	%bl, (%rsi,%rdx)
  209aa9: 64 c7 04 25 90 ff ff ff cf 27 00 00  	movl	$10191, %fs:-112 # imm = 0x27CF
  209ab5: 8d 50 d0                     	leal	-48(%rax), %edx
  209ab8: 80 fa 0a                     	cmpb	$10, %dl
  209abb: 72 5e                        	jb	0x209b1b <http_parser_parse_url+0x83b>
  209abd: 89 c2                        	movl	%eax, %edx
  209abf: 80 ca 20                     	orb	$32, %dl
  209ac2: 80 c2 9f                     	addb	$-97, %dl
  209ac5: 80 fa 1a                     	cmpb	$26, %dl
  209ac8: 72 51                        	jb	0x209b1b <http_parser_parse_url+0x83b>
  209aca: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  209ad3: 48 8b 35 ee 35 00 00         	movq	13806(%rip), %rsi       # 0x20d0c8 <__afl_area_ptr>
  209ada: 48 81 f2 53 0b 00 00         	xorq	$2899, %rdx             # imm = 0xB53
  209ae1: 0f b6 1c 16                  	movzbl	(%rsi,%rdx), %ebx
  209ae5: 80 c3 01                     	addb	$1, %bl
  209ae8: 80 d3 00                     	adcb	$0, %bl
  209aeb: 88 1c 16                     	movb	%bl, (%rsi,%rdx)
  209aee: 64 c7 04 25 90 ff ff ff a9 05 00 00  	movl	$1449, %fs:-112 # imm = 0x5A9
  209afa: 04 d3                        	addb	$-45, %al
  209afc: 3c 32                        	cmpb	$50, %al
  209afe: 0f 87 1c 06 00 00            	ja	0x20a120 <http_parser_parse_url+0xe40>
  209b04: 0f b6 c0                     	movzbl	%al, %eax
  209b07: 48 ba 03 00 00 00 00 00 04 00	movabsq	$1125899906842627, %rdx # imm = 0x4000000000003
  209b11: 48 0f a3 c2                  	btq	%rax, %rdx
  209b15: 0f 83 05 06 00 00            	jae	0x20a120 <http_parser_parse_url+0xe40>
  209b1b: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  209b24: 48 8b 15 9d 35 00 00         	movq	13725(%rip), %rdx       # 0x20d0c8 <__afl_area_ptr>
  209b2b: 48 35 31 d2 00 00            	xorq	$53809, %rax            # imm = 0xD231
  209b31: 0f b6 1c 02                  	movzbl	(%rdx,%rax), %ebx
  209b35: 80 c3 01                     	addb	$1, %bl
  209b38: 80 d3 00                     	adcb	$0, %bl
  209b3b: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  209b3e: 64 c7 04 25 90 ff ff ff 18 69 00 00  	movl	$26904, %fs:-112 # imm = 0x6918
  209b4a: 66 41 89 4c 24 08            	movw	%cx, 8(%r12)
  209b50: e9 92 00 00 00               	jmp	0x209be7 <http_parser_parse_url+0x907>
  209b55: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  209b5e: 48 8b 35 63 35 00 00         	movq	13667(%rip), %rsi       # 0x20d0c8 <__afl_area_ptr>
  209b65: 48 81 f2 46 1c 00 00         	xorq	$7238, %rdx             # imm = 0x1C46
  209b6c: 0f b6 1c 16                  	movzbl	(%rsi,%rdx), %ebx
  209b70: 80 c3 01                     	addb	$1, %bl
  209b73: 80 d3 00                     	adcb	$0, %bl
  209b76: 88 1c 16                     	movb	%bl, (%rsi,%rdx)
  209b79: 64 c7 04 25 90 ff ff ff 23 0e 00 00  	movl	$3619, %fs:-112 # imm = 0xE23
  209b85: 8d 50 d0                     	leal	-48(%rax), %edx
  209b88: 80 fa 0a                     	cmpb	$10, %dl
  209b8b: 72 5a                        	jb	0x209be7 <http_parser_parse_url+0x907>
  209b8d: 89 c2                        	movl	%eax, %edx
  209b8f: 80 ca 20                     	orb	$32, %dl
  209b92: 80 c2 9f                     	addb	$-97, %dl
  209b95: 80 fa 1a                     	cmpb	$26, %dl
  209b98: 72 4d                        	jb	0x209be7 <http_parser_parse_url+0x907>
  209b9a: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  209ba3: 48 8b 35 1e 35 00 00         	movq	13598(%rip), %rsi       # 0x20d0c8 <__afl_area_ptr>
  209baa: 48 81 f2 5a ae 00 00         	xorq	$44634, %rdx            # imm = 0xAE5A
  209bb1: 0f b6 1c 16                  	movzbl	(%rsi,%rdx), %ebx
  209bb5: 80 c3 01                     	addb	$1, %bl
  209bb8: 80 d3 00                     	adcb	$0, %bl
  209bbb: 88 1c 16                     	movb	%bl, (%rsi,%rdx)
  209bbe: 64 c7 04 25 90 ff ff ff 2d 57 00 00  	movl	$22317, %fs:-112 # imm = 0x572D
  209bca: 8d 50 d3                     	leal	-45(%rax), %edx
  209bcd: 80 fa 02                     	cmpb	$2, %dl
  209bd0: 72 15                        	jb	0x209be7 <http_parser_parse_url+0x907>
  209bd2: be 0b 00 00 00               	movl	$11, %esi
  209bd7: 3c 3a                        	cmpb	$58, %al
  209bd9: 0f 84 f1 fb ff ff            	je	0x2097d0 <http_parser_parse_url+0x4f0>
  209bdf: 3c 5f                        	cmpb	$95, %al
  209be1: 0f 85 39 05 00 00            	jne	0x20a120 <http_parser_parse_url+0xe40>
  209be7: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  209bf0: 48 8b 15 d1 34 00 00         	movq	13521(%rip), %rdx       # 0x20d0c8 <__afl_area_ptr>
  209bf7: 48 35 9f e0 00 00            	xorq	$57503, %rax            # imm = 0xE09F
  209bfd: 0f b6 1c 02                  	movzbl	(%rdx,%rax), %ebx
  209c01: 80 c3 01                     	addb	$1, %bl
  209c04: 80 d3 00                     	adcb	$0, %bl
  209c07: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  209c0a: 64 c7 04 25 90 ff ff ff 4f 70 00 00  	movl	$28751, %fs:-112 # imm = 0x704F
  209c16: 41 ff c2                     	incl	%r10d
  209c19: 66 45 89 54 24 0a            	movw	%r10w, 10(%r12)
  209c1f: be 06 00 00 00               	movl	$6, %esi
  209c24: e9 a7 fb ff ff               	jmp	0x2097d0 <http_parser_parse_url+0x4f0>
  209c29: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  209c32: 48 8b 35 8f 34 00 00         	movq	13455(%rip), %rsi       # 0x20d0c8 <__afl_area_ptr>
  209c39: 48 81 f2 fc 7d 00 00         	xorq	$32252, %rdx            # imm = 0x7DFC
  209c40: 0f b6 1c 16                  	movzbl	(%rsi,%rdx), %ebx
  209c44: 80 c3 01                     	addb	$1, %bl
  209c47: 80 d3 00                     	adcb	$0, %bl
  209c4a: 88 1c 16                     	movb	%bl, (%rsi,%rdx)
  209c4d: 64 c7 04 25 90 ff ff ff fe 3e 00 00  	movl	$16126, %fs:-112 # imm = 0x3EFE
  209c59: be 08 00 00 00               	movl	$8, %esi
  209c5e: 3c 5d                        	cmpb	$93, %al
  209c60: 0f 84 6a fb ff ff            	je	0x2097d0 <http_parser_parse_url+0x4f0>
  209c66: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  209c6f: 48 8b 35 52 34 00 00         	movq	13394(%rip), %rsi       # 0x20d0c8 <__afl_area_ptr>
  209c76: 48 81 f2 1b 76 00 00         	xorq	$30235, %rdx            # imm = 0x761B
  209c7d: 0f b6 1c 16                  	movzbl	(%rsi,%rdx), %ebx
  209c81: 80 c3 01                     	addb	$1, %bl
  209c84: 80 d3 00                     	adcb	$0, %bl
  209c87: 88 1c 16                     	movb	%bl, (%rsi,%rdx)
  209c8a: 64 c7 04 25 90 ff ff ff 0d 3b 00 00  	movl	$15117, %fs:-112 # imm = 0x3B0D
  209c96: 8d 50 d0                     	leal	-48(%rax), %edx
  209c99: 80 fa 0a                     	cmpb	$10, %dl
  209c9c: 0f 82 ad 02 00 00            	jb	0x209f4f <http_parser_parse_url+0xc6f>
  209ca2: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  209cab: 48 8b 35 16 34 00 00         	movq	13334(%rip), %rsi       # 0x20d0c8 <__afl_area_ptr>
  209cb2: 48 81 f2 f6 f1 00 00         	xorq	$61942, %rdx            # imm = 0xF1F6
  209cb9: 0f b6 1c 16                  	movzbl	(%rsi,%rdx), %ebx
  209cbd: 80 c3 01                     	addb	$1, %bl
  209cc0: 80 d3 00                     	adcb	$0, %bl
  209cc3: 88 1c 16                     	movb	%bl, (%rsi,%rdx)
  209cc6: 64 c7 04 25 90 ff ff ff fb 78 00 00  	movl	$30971, %fs:-112 # imm = 0x78FB
  209cd2: 89 c2                        	movl	%eax, %edx
  209cd4: 80 ca 20                     	orb	$32, %dl
  209cd7: 80 fa 61                     	cmpb	$97, %dl
  209cda: 0f 82 37 02 00 00            	jb	0x209f17 <http_parser_parse_url+0xc37>
  209ce0: 64 48 63 34 25 90 ff ff ff   	movslq	%fs:-112, %rsi
  209ce9: 4c 8b 3d d8 33 00 00         	movq	13272(%rip), %r15       # 0x20d0c8 <__afl_area_ptr>
  209cf0: 48 81 f6 8b 83 00 00         	xorq	$33675, %rsi            # imm = 0x838B
  209cf7: 41 0f b6 1c 37               	movzbl	(%r15,%rsi), %ebx
  209cfc: 80 c3 01                     	addb	$1, %bl
  209cff: 80 d3 00                     	adcb	$0, %bl
  209d02: 41 88 1c 37                  	movb	%bl, (%r15,%rsi)
  209d06: 64 c7 04 25 90 ff ff ff c5 41 00 00  	movl	$16837, %fs:-112 # imm = 0x41C5
  209d12: 80 fa 67                     	cmpb	$103, %dl
  209d15: 0f 82 34 02 00 00            	jb	0x209f4f <http_parser_parse_url+0xc6f>
  209d1b: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  209d24: 48 8b 35 9d 33 00 00         	movq	13213(%rip), %rsi       # 0x20d0c8 <__afl_area_ptr>
  209d2b: 48 81 f2 a2 25 00 00         	xorq	$9634, %rdx             # imm = 0x25A2
  209d32: 0f b6 1c 16                  	movzbl	(%rsi,%rdx), %ebx
  209d36: 80 c3 01                     	addb	$1, %bl
  209d39: 80 d3 00                     	adcb	$0, %bl
  209d3c: 88 1c 16                     	movb	%bl, (%rsi,%rdx)
  209d3f: 64 c7 04 25 90 ff ff ff d1 12 00 00  	movl	$4817, %fs:-112 # imm = 0x12D1
  209d4b: e9 f7 01 00 00               	jmp	0x209f47 <http_parser_parse_url+0xc67>
  209d50: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  209d59: 48 8b 35 68 33 00 00         	movq	13160(%rip), %rsi       # 0x20d0c8 <__afl_area_ptr>
  209d60: 48 81 f2 a6 c7 00 00         	xorq	$51110, %rdx            # imm = 0xC7A6
  209d67: 0f b6 1c 16                  	movzbl	(%rsi,%rdx), %ebx
  209d6b: 80 c3 01                     	addb	$1, %bl
  209d6e: 80 d3 00                     	adcb	$0, %bl
  209d71: 88 1c 16                     	movb	%bl, (%rsi,%rdx)
  209d74: 64 c7 04 25 90 ff ff ff d3 63 00 00  	movl	$25555, %fs:-112 # imm = 0x63D3
  209d80: be 0b 00 00 00               	movl	$11, %esi
  209d85: 3c 3a                        	cmpb	$58, %al
  209d87: 0f 84 43 fa ff ff            	je	0x2097d0 <http_parser_parse_url+0x4f0>
  209d8d: e9 8e 03 00 00               	jmp	0x20a120 <http_parser_parse_url+0xe40>
  209d92: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  209d9b: 48 8b 35 26 33 00 00         	movq	13094(%rip), %rsi       # 0x20d0c8 <__afl_area_ptr>
  209da2: 48 81 f2 09 96 00 00         	xorq	$38409, %rdx            # imm = 0x9609
  209da9: 0f b6 1c 16                  	movzbl	(%rsi,%rdx), %ebx
  209dad: 80 c3 01                     	addb	$1, %bl
  209db0: 80 d3 00                     	adcb	$0, %bl
  209db3: 88 1c 16                     	movb	%bl, (%rsi,%rdx)
  209db6: 64 c7 04 25 90 ff ff ff 04 4b 00 00  	movl	$19204, %fs:-112 # imm = 0x4B04
  209dc2: be 08 00 00 00               	movl	$8, %esi
  209dc7: 3c 5d                        	cmpb	$93, %al
  209dc9: 0f 84 01 fa ff ff            	je	0x2097d0 <http_parser_parse_url+0x4f0>
  209dcf: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  209dd8: 48 8b 35 e9 32 00 00         	movq	13033(%rip), %rsi       # 0x20d0c8 <__afl_area_ptr>
  209ddf: 48 81 f2 6b 1c 00 00         	xorq	$7275, %rdx             # imm = 0x1C6B
  209de6: 0f b6 1c 16                  	movzbl	(%rsi,%rdx), %ebx
  209dea: 80 c3 01                     	addb	$1, %bl
  209ded: 80 d3 00                     	adcb	$0, %bl
  209df0: 88 1c 16                     	movb	%bl, (%rsi,%rdx)
  209df3: 64 c7 04 25 90 ff ff ff 35 0e 00 00  	movl	$3637, %fs:-112 # imm = 0xE35
  209dff: 8d 50 d0                     	leal	-48(%rax), %edx
  209e02: be 0a 00 00 00               	movl	$10, %esi
  209e07: 80 fa 0a                     	cmpb	$10, %dl
  209e0a: 0f 82 f9 01 00 00            	jb	0x20a009 <http_parser_parse_url+0xd29>
  209e10: 89 c2                        	movl	%eax, %edx
  209e12: 80 ca 20                     	orb	$32, %dl
  209e15: 80 c2 9f                     	addb	$-97, %dl
  209e18: 80 fa 1a                     	cmpb	$26, %dl
  209e1b: 0f 82 e8 01 00 00            	jb	0x20a009 <http_parser_parse_url+0xd29>
  209e21: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  209e2a: 48 8b 3d 97 32 00 00         	movq	12951(%rip), %rdi       # 0x20d0c8 <__afl_area_ptr>
  209e31: 48 81 f2 3a 9f 00 00         	xorq	$40762, %rdx            # imm = 0x9F3A
  209e38: 0f b6 1c 17                  	movzbl	(%rdi,%rdx), %ebx
  209e3c: 80 c3 01                     	addb	$1, %bl
  209e3f: 80 d3 00                     	adcb	$0, %bl
  209e42: 88 1c 17                     	movb	%bl, (%rdi,%rdx)
  209e45: 64 c7 04 25 90 ff ff ff 9d 4f 00 00  	movl	$20381, %fs:-112 # imm = 0x4F9D
  209e51: 8d 50 db                     	leal	-37(%rax), %edx
  209e54: 80 fa 3a                     	cmpb	$58, %dl
  209e57: 77 0d                        	ja	0x209e66 <http_parser_parse_url+0xb86>
  209e59: 0f b6 d2                     	movzbl	%dl, %edx
  209e5c: 49 0f a3 d1                  	btq	%rdx, %r9
  209e60: 0f 82 a3 01 00 00            	jb	0x20a009 <http_parser_parse_url+0xd29>
  209e66: 3c 7e                        	cmpb	$126, %al
  209e68: 0f 84 9b 01 00 00            	je	0x20a009 <http_parser_parse_url+0xd29>
  209e6e: e9 ad 02 00 00               	jmp	0x20a120 <http_parser_parse_url+0xe40>
  209e73: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  209e7c: 48 8b 15 45 32 00 00         	movq	12869(%rip), %rdx       # 0x20d0c8 <__afl_area_ptr>
  209e83: 48 35 29 22 00 00            	xorq	$8745, %rax             # imm = 0x2229
  209e89: 0f b6 1c 02                  	movzbl	(%rdx,%rax), %ebx
  209e8d: 80 c3 01                     	addb	$1, %bl
  209e90: 80 d3 00                     	adcb	$0, %bl
  209e93: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  209e96: 64 c7 04 25 90 ff ff ff 14 11 00 00  	movl	$4372, %fs:-112 # imm = 0x1114
  209ea2: 66 41 89 4c 24 0c            	movw	%cx, 12(%r12)
  209ea8: 41 83 cd 04                  	orl	$4, %r13d
  209eac: 66 45 89 2c 24               	movw	%r13w, (%r12)
  209eb1: 31 c0                        	xorl	%eax, %eax
  209eb3: ff c0                        	incl	%eax
  209eb5: 66 41 89 44 24 0e            	movw	%ax, 14(%r12)
  209ebb: be 0c 00 00 00               	movl	$12, %esi
  209ec0: e9 0b f9 ff ff               	jmp	0x2097d0 <http_parser_parse_url+0x4f0>
  209ec5: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  209ece: 48 8b 15 f3 31 00 00         	movq	12787(%rip), %rdx       # 0x20d0c8 <__afl_area_ptr>
  209ed5: 48 35 23 79 00 00            	xorq	$31011, %rax            # imm = 0x7923
  209edb: 0f b6 1c 02                  	movzbl	(%rdx,%rax), %ebx
  209edf: 80 c3 01                     	addb	$1, %bl
  209ee2: 80 d3 00                     	adcb	$0, %bl
  209ee5: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  209ee8: 64 c7 04 25 90 ff ff ff 91 3c 00 00  	movl	$15505, %fs:-112 # imm = 0x3C91
  209ef4: 66 41 89 4c 24 1c            	movw	%cx, 28(%r12)
  209efa: 41 83 cd 40                  	orl	$64, %r13d
  209efe: 66 45 89 2c 24               	movw	%r13w, (%r12)
  209f03: 31 c0                        	xorl	%eax, %eax
  209f05: ff c0                        	incl	%eax
  209f07: 66 41 89 44 24 1e            	movw	%ax, 30(%r12)
  209f0d: be 03 00 00 00               	movl	$3, %esi
  209f12: e9 b9 f8 ff ff               	jmp	0x2097d0 <http_parser_parse_url+0x4f0>
  209f17: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  209f20: 48 8b 35 a1 31 00 00         	movq	12705(%rip), %rsi       # 0x20d0c8 <__afl_area_ptr>
  209f27: 48 81 f2 6e 73 00 00         	xorq	$29550, %rdx            # imm = 0x736E
  209f2e: 0f b6 1c 16                  	movzbl	(%rsi,%rdx), %ebx
  209f32: 80 c3 01                     	addb	$1, %bl
  209f35: 80 d3 00                     	adcb	$0, %bl
  209f38: 88 1c 16                     	movb	%bl, (%rsi,%rdx)
  209f3b: 64 c7 04 25 90 ff ff ff b7 39 00 00  	movl	$14775, %fs:-112 # imm = 0x39B7
  209f47: 3c 2e                        	cmpb	$46, %al
  209f49: 74 04                        	je	0x209f4f <http_parser_parse_url+0xc6f>
  209f4b: 3c 3a                        	cmpb	$58, %al
  209f4d: 75 73                        	jne	0x209fc2 <http_parser_parse_url+0xce2>
  209f4f: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  209f58: 48 8b 15 69 31 00 00         	movq	12649(%rip), %rdx       # 0x20d0c8 <__afl_area_ptr>
  209f5f: 48 35 07 71 00 00            	xorq	$28935, %rax            # imm = 0x7107
  209f65: 0f b6 1c 02                  	movzbl	(%rdx,%rax), %ebx
  209f69: 80 c3 01                     	addb	$1, %bl
  209f6c: 80 d3 00                     	adcb	$0, %bl
  209f6f: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  209f72: 64 c7 04 25 90 ff ff ff 83 38 00 00  	movl	$14467, %fs:-112 # imm = 0x3883
  209f7e: 41 83 f8 07                  	cmpl	$7, %r8d
  209f82: 0f 84 02 f8 ff ff            	je	0x20978a <http_parser_parse_url+0x4aa>
  209f88: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  209f91: 48 8b 15 30 31 00 00         	movq	12592(%rip), %rdx       # 0x20d0c8 <__afl_area_ptr>
  209f98: 48 35 66 9a 00 00            	xorq	$39526, %rax            # imm = 0x9A66
  209f9e: 0f b6 1c 02                  	movzbl	(%rdx,%rax), %ebx
  209fa2: 80 c3 01                     	addb	$1, %bl
  209fa5: 80 d3 00                     	adcb	$0, %bl
  209fa8: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  209fab: 64 c7 04 25 90 ff ff ff 33 4d 00 00  	movl	$19763, %fs:-112 # imm = 0x4D33
  209fb7: 66 41 89 4c 24 08            	movw	%cx, 8(%r12)
  209fbd: e9 c8 f7 ff ff               	jmp	0x20978a <http_parser_parse_url+0x4aa>
  209fc2: 64 48 63 14 25 90 ff ff ff   	movslq	%fs:-112, %rdx
  209fcb: 48 8b 35 f6 30 00 00         	movq	12534(%rip), %rsi       # 0x20d0c8 <__afl_area_ptr>
  209fd2: 48 81 f2 12 1d 00 00         	xorq	$7442, %rdx             # imm = 0x1D12
  209fd9: 0f b6 1c 16                  	movzbl	(%rsi,%rdx), %ebx
  209fdd: 80 c3 01                     	addb	$1, %bl
  209fe0: 80 d3 00                     	adcb	$0, %bl
  209fe3: 88 1c 16                     	movb	%bl, (%rsi,%rdx)
  209fe6: 64 c7 04 25 90 ff ff ff 89 0e 00 00  	movl	$3721, %fs:-112 # imm = 0xE89
  209ff2: 41 83 f8 07                  	cmpl	$7, %r8d
  209ff6: 0f 85 24 01 00 00            	jne	0x20a120 <http_parser_parse_url+0xe40>
  209ffc: be 09 00 00 00               	movl	$9, %esi
  20a001: 3c 25                        	cmpb	$37, %al
  20a003: 0f 85 17 01 00 00            	jne	0x20a120 <http_parser_parse_url+0xe40>
  20a009: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20a012: 48 8b 15 af 30 00 00         	movq	12463(%rip), %rdx       # 0x20d0c8 <__afl_area_ptr>
  20a019: 48 35 f9 d8 00 00            	xorq	$55545, %rax            # imm = 0xD8F9
  20a01f: 0f b6 1c 02                  	movzbl	(%rdx,%rax), %ebx
  20a023: 80 c3 01                     	addb	$1, %bl
  20a026: 80 d3 00                     	adcb	$0, %bl
  20a029: 88 1c 02                     	movb	%bl, (%rdx,%rax)
  20a02c: 64 c7 04 25 90 ff ff ff 7c 6c 00 00  	movl	$27772, %fs:-112 # imm = 0x6C7C
  20a038: 41 ff c2                     	incl	%r10d
  20a03b: 66 45 89 54 24 0a            	movw	%r10w, 10(%r12)
  20a041: e9 8a f7 ff ff               	jmp	0x2097d0 <http_parser_parse_url+0x4f0>
  20a046: 44 89 c6                     	movl	%r8d, %esi
  20a049: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20a052: 48 8b 0d 6f 30 00 00         	movq	12399(%rip), %rcx       # 0x20d0c8 <__afl_area_ptr>
  20a059: 48 35 36 07 00 00            	xorq	$1846, %rax             # imm = 0x736
  20a05f: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20a062: 80 c2 01                     	addb	$1, %dl
  20a065: 80 d2 00                     	adcb	$0, %dl
  20a068: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20a06b: 64 c7 04 25 90 ff ff ff 9b 03 00 00  	movl	$923, %fs:-112  # imm = 0x39B
  20a077: 83 c6 fe                     	addl	$-2, %esi
  20a07a: 83 fe 0a                     	cmpl	$10, %esi
  20a07d: 73 38                        	jae	0x20a0b7 <http_parser_parse_url+0xdd7>
  20a07f: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20a088: 48 8b 0d 39 30 00 00         	movq	12345(%rip), %rcx       # 0x20d0c8 <__afl_area_ptr>
  20a08f: 48 35 de 0a 00 00            	xorq	$2782, %rax             # imm = 0xADE
  20a095: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20a098: 80 c2 01                     	addb	$1, %dl
  20a09b: 80 d2 00                     	adcb	$0, %dl
  20a09e: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20a0a1: 64 c7 04 25 90 ff ff ff 6f 05 00 00  	movl	$1391, %fs:-112 # imm = 0x56F
  20a0ad: b8 af 03 00 00               	movl	$943, %eax              # imm = 0x3AF
  20a0b2: 0f a3 f0                     	btl	%esi, %eax
  20a0b5: 72 69                        	jb	0x20a120 <http_parser_parse_url+0xe40>
  20a0b7: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20a0c0: 48 8b 0d 01 30 00 00         	movq	12289(%rip), %rcx       # 0x20d0c8 <__afl_area_ptr>
  20a0c7: 48 35 cd 6d 00 00            	xorq	$28109, %rax            # imm = 0x6DCD
  20a0cd: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20a0d0: 80 c2 01                     	addb	$1, %dl
  20a0d3: 80 d2 00                     	adcb	$0, %dl
  20a0d6: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20a0d9: 64 c7 04 25 90 ff ff ff e6 36 00 00  	movl	$14054, %fs:-112 # imm = 0x36E6
  20a0e5: 83 7d c4 00                  	cmpl	$0, -60(%rbp)
  20a0e9: 74 78                        	je	0x20a163 <http_parser_parse_url+0xe83>
  20a0eb: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20a0f4: 48 8b 0d cd 2f 00 00         	movq	12237(%rip), %rcx       # 0x20d0c8 <__afl_area_ptr>
  20a0fb: 48 35 ce 76 00 00            	xorq	$30414, %rax            # imm = 0x76CE
  20a101: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20a104: 80 c2 01                     	addb	$1, %dl
  20a107: 80 d2 00                     	adcb	$0, %dl
  20a10a: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20a10d: 64 c7 04 25 90 ff ff ff 67 3b 00 00  	movl	$15207, %fs:-112 # imm = 0x3B67
  20a119: 66 41 83 fd 06               	cmpw	$6, %r13w
  20a11e: 74 79                        	je	0x20a199 <http_parser_parse_url+0xeb9>
  20a120: b8 01 00 00 00               	movl	$1, %eax
  20a125: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20a12e: 48 8b 15 93 2f 00 00         	movq	12179(%rip), %rdx       # 0x20d0c8 <__afl_area_ptr>
  20a135: 48 81 f1 fa 33 00 00         	xorq	$13306, %rcx            # imm = 0x33FA
  20a13c: 8a 1c 0a                     	movb	(%rdx,%rcx), %bl
  20a13f: 80 c3 01                     	addb	$1, %bl
  20a142: 80 d3 00                     	adcb	$0, %bl
  20a145: 88 1c 0a                     	movb	%bl, (%rdx,%rcx)
  20a148: 64 c7 04 25 90 ff ff ff fd 19 00 00  	movl	$6653, %fs:-112 # imm = 0x19FD
  20a154: 48 83 c4 28                  	addq	$40, %rsp
  20a158: 5b                           	popq	%rbx
  20a159: 41 5c                        	popq	%r12
  20a15b: 41 5d                        	popq	%r13
  20a15d: 41 5e                        	popq	%r14
  20a15f: 41 5f                        	popq	%r15
  20a161: 5d                           	popq	%rbp
  20a162: c3                           	retq
  20a163: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20a16c: 48 8b 0d 55 2f 00 00         	movq	12117(%rip), %rcx       # 0x20d0c8 <__afl_area_ptr>
  20a173: 48 35 82 17 00 00            	xorq	$6018, %rax             # imm = 0x1782
  20a179: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20a17c: 80 c2 01                     	addb	$1, %dl
  20a17f: 80 d2 00                     	adcb	$0, %dl
  20a182: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20a185: 64 c7 04 25 90 ff ff ff c1 0b 00 00  	movl	$3009, %fs:-112 # imm = 0xBC1
  20a191: 31 c0                        	xorl	%eax, %eax
  20a193: 41 f6 c5 04                  	testb	$4, %r13b
  20a197: 74 8c                        	je	0x20a125 <http_parser_parse_url+0xe45>
  20a199: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20a1a2: 48 8b 0d 1f 2f 00 00         	movq	12063(%rip), %rcx       # 0x20d0c8 <__afl_area_ptr>
  20a1a9: 48 35 bf 00 00 00            	xorq	$191, %rax
  20a1af: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20a1b2: 80 c2 01                     	addb	$1, %dl
  20a1b5: 80 d2 00                     	adcb	$0, %dl
  20a1b8: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20a1bb: 64 c7 04 25 90 ff ff ff 5f 00 00 00  	movl	$95, %fs:-112
  20a1c7: 41 0f b7 54 24 0c            	movzwl	12(%r12), %edx
  20a1cd: 41 0f b7 4c 24 0e            	movzwl	14(%r12), %ecx
  20a1d3: 48 8d 04 11                  	leaq	(%rcx,%rdx), %rax
  20a1d7: 48 3b 45 b8                  	cmpq	-72(%rbp), %rax
  20a1db: 0f 87 8c 01 00 00            	ja	0x20a36d <http_parser_parse_url+0x108d>
  20a1e1: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20a1ea: 48 8b 35 d7 2e 00 00         	movq	11991(%rip), %rsi       # 0x20d0c8 <__afl_area_ptr>
  20a1f1: 48 35 1e c8 00 00            	xorq	$51230, %rax            # imm = 0xC81E
  20a1f7: 8a 1c 06                     	movb	(%rsi,%rax), %bl
  20a1fa: 80 c3 01                     	addb	$1, %bl
  20a1fd: 80 d3 00                     	adcb	$0, %bl
  20a200: 88 1c 06                     	movb	%bl, (%rsi,%rax)
  20a203: 64 c7 04 25 90 ff ff ff 0f 64 00 00  	movl	$25615, %fs:-112 # imm = 0x640F
  20a20f: 31 c0                        	xorl	%eax, %eax
  20a211: 66 85 c9                     	testw	%cx, %cx
  20a214: 0f 84 d0 00 00 00            	je	0x20a2ea <http_parser_parse_url+0x100a>
  20a21a: 49 01 d6                     	addq	%rdx, %r14
  20a21d: 4c 01 f1                     	addq	%r14, %rcx
  20a220: 31 d2                        	xorl	%edx, %edx
  20a222: 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00    	nopw	%cs:(%rax,%rax)
  20a230: 64 48 63 34 25 90 ff ff ff   	movslq	%fs:-112, %rsi
  20a239: 48 8b 3d 88 2e 00 00         	movq	11912(%rip), %rdi       # 0x20d0c8 <__afl_area_ptr>
  20a240: 48 81 f6 31 07 00 00         	xorq	$1841, %rsi             # imm = 0x731
  20a247: 0f b6 1c 37                  	movzbl	(%rdi,%rsi), %ebx
  20a24b: 80 c3 01                     	addb	$1, %bl
  20a24e: 80 d3 00                     	adcb	$0, %bl
  20a251: 88 1c 37                     	movb	%bl, (%rdi,%rsi)
  20a254: 64 c7 04 25 90 ff ff ff 98 03 00 00  	movl	$920, %fs:-112  # imm = 0x398
  20a260: 48 8d 14 92                  	leaq	(%rdx,%rdx,4), %rdx
  20a264: 49 0f be 36                  	movsbq	(%r14), %rsi
  20a268: 48 8d 14 56                  	leaq	(%rsi,%rdx,2), %rdx
  20a26c: 48 83 c2 d0                  	addq	$-48, %rdx
  20a270: 48 81 fa ff ff 00 00         	cmpq	$65535, %rdx            # imm = 0xFFFF
  20a277: 0f 87 a3 fe ff ff            	ja	0x20a120 <http_parser_parse_url+0xe40>
  20a27d: 49 ff c6                     	incq	%r14
  20a280: 64 48 63 34 25 90 ff ff ff   	movslq	%fs:-112, %rsi
  20a289: 48 8b 3d 38 2e 00 00         	movq	11832(%rip), %rdi       # 0x20d0c8 <__afl_area_ptr>
  20a290: 48 81 f6 49 55 00 00         	xorq	$21833, %rsi            # imm = 0x5549
  20a297: 0f b6 1c 37                  	movzbl	(%rdi,%rsi), %ebx
  20a29b: 80 c3 01                     	addb	$1, %bl
  20a29e: 80 d3 00                     	adcb	$0, %bl
  20a2a1: 88 1c 37                     	movb	%bl, (%rdi,%rsi)
  20a2a4: 64 c7 04 25 90 ff ff ff a4 2a 00 00  	movl	$10916, %fs:-112 # imm = 0x2AA4
  20a2b0: 49 39 ce                     	cmpq	%rcx, %r14
  20a2b3: 0f 82 77 ff ff ff            	jb	0x20a230 <http_parser_parse_url+0xf50>
  20a2b9: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20a2c2: 48 8b 35 ff 2d 00 00         	movq	11775(%rip), %rsi       # 0x20d0c8 <__afl_area_ptr>
  20a2c9: 48 81 f1 2d 73 00 00         	xorq	$29485, %rcx            # imm = 0x732D
  20a2d0: 8a 1c 0e                     	movb	(%rsi,%rcx), %bl
  20a2d3: 80 c3 01                     	addb	$1, %bl
  20a2d6: 80 d3 00                     	adcb	$0, %bl
  20a2d9: 88 1c 0e                     	movb	%bl, (%rsi,%rcx)
  20a2dc: 64 c7 04 25 90 ff ff ff 96 39 00 00  	movl	$14742, %fs:-112 # imm = 0x3996
  20a2e8: eb 02                        	jmp	0x20a2ec <http_parser_parse_url+0x100c>
  20a2ea: 31 d2                        	xorl	%edx, %edx
  20a2ec: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20a2f5: 48 8b 35 cc 2d 00 00         	movq	11724(%rip), %rsi       # 0x20d0c8 <__afl_area_ptr>
  20a2fc: 48 81 f1 3c 3e 00 00         	xorq	$15932, %rcx            # imm = 0x3E3C
  20a303: 8a 1c 0e                     	movb	(%rsi,%rcx), %bl
  20a306: 80 c3 01                     	addb	$1, %bl
  20a309: 80 d3 00                     	adcb	$0, %bl
  20a30c: 88 1c 0e                     	movb	%bl, (%rsi,%rcx)
  20a30f: 64 c7 04 25 90 ff ff ff 1e 1f 00 00  	movl	$7966, %fs:-112 # imm = 0x1F1E
  20a31b: 66 41 89 54 24 02            	movw	%dx, 2(%r12)
  20a321: e9 ff fd ff ff               	jmp	0x20a125 <http_parser_parse_url+0xe45>
  20a326: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20a32f: 48 8b 0d 92 2d 00 00         	movq	11666(%rip), %rcx       # 0x20d0c8 <__afl_area_ptr>
  20a336: 48 35 28 a2 00 00            	xorq	$41512, %rax            # imm = 0xA228
  20a33c: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20a33f: 80 c2 01                     	addb	$1, %dl
  20a342: 80 d2 00                     	adcb	$0, %dl
  20a345: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20a348: 64 c7 04 25 90 ff ff ff 14 51 00 00  	movl	$20756, %fs:-112 # imm = 0x5114
  20a354: bf f3 1d 20 00               	movl	$2104819, %edi          # imm = 0x201DF3
  20a359: be 6c 20 20 00               	movl	$2105452, %esi          # imm = 0x20206C
  20a35e: b9 71 27 20 00               	movl	$2107249, %ecx          # imm = 0x202771
  20a363: ba b0 09 00 00               	movl	$2480, %edx             # imm = 0x9B0
  20a368: e8 43 09 00 00               	callq	0x20acb0 <__assert_fail@plt>
  20a36d: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20a376: 48 8b 0d 4b 2d 00 00         	movq	11595(%rip), %rcx       # 0x20d0c8 <__afl_area_ptr>
  20a37d: 48 35 6b bb 00 00            	xorq	$47979, %rax            # imm = 0xBB6B
  20a383: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20a386: 80 c2 01                     	addb	$1, %dl
  20a389: 80 d2 00                     	adcb	$0, %dl
  20a38c: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20a38f: 64 c7 04 25 90 ff ff ff b5 5d 00 00  	movl	$23989, %fs:-112 # imm = 0x5DB5
  20a39b: bf b8 21 20 00               	movl	$2105784, %edi          # imm = 0x2021B8
  20a3a0: be 6c 20 20 00               	movl	$2105452, %esi          # imm = 0x20206C
  20a3a5: b9 71 27 20 00               	movl	$2107249, %ecx          # imm = 0x202771
  20a3aa: ba df 09 00 00               	movl	$2527, %edx             # imm = 0x9DF
  20a3af: e8 fc 08 00 00               	callq	0x20acb0 <__assert_fail@plt>
  20a3b4: cc                           	int3
  20a3b5: cc                           	int3
  20a3b6: cc                           	int3
  20a3b7: cc                           	int3
  20a3b8: cc                           	int3
  20a3b9: cc                           	int3
  20a3ba: cc                           	int3
  20a3bb: cc                           	int3
  20a3bc: cc                           	int3
  20a3bd: cc                           	int3
  20a3be: cc                           	int3
  20a3bf: cc                           	int3

000000000020a3c0 <parse_url_char>:
  20a3c0: 55                           	pushq	%rbp
  20a3c1: 48 89 e5                     	movq	%rsp, %rbp
  20a3c4: b8 01 00 00 00               	movl	$1, %eax
  20a3c9: 40 80 fe 20                  	cmpb	$32, %sil
  20a3cd: 77 45                        	ja	0x20a414 <parse_url_char+0x54>
  20a3cf: 40 0f b6 ce                  	movzbl	%sil, %ecx
  20a3d3: 48 ba 00 24 00 00 01 00 00 00	movabsq	$4294976512, %rdx       # imm = 0x100002400
  20a3dd: 48 0f a3 ca                  	btq	%rcx, %rdx
  20a3e1: 73 31                        	jae	0x20a414 <parse_url_char+0x54>
  20a3e3: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20a3ec: 48 8b 35 d5 2c 00 00         	movq	11477(%rip), %rsi       # 0x20d0c8 <__afl_area_ptr>
  20a3f3: 48 81 f1 16 03 00 00         	xorq	$790, %rcx              # imm = 0x316
  20a3fa: 8a 14 0e                     	movb	(%rsi,%rcx), %dl
  20a3fd: 80 c2 01                     	addb	$1, %dl
  20a400: 80 d2 00                     	adcb	$0, %dl
  20a403: 88 14 0e                     	movb	%dl, (%rsi,%rcx)
  20a406: 64 c7 04 25 90 ff ff ff 8b 01 00 00  	movl	$395, %fs:-112  # imm = 0x18B
  20a412: 5d                           	popq	%rbp
  20a413: c3                           	retq
  20a414: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20a41d: 4c 8b 05 a4 2c 00 00         	movq	11428(%rip), %r8        # 0x20d0c8 <__afl_area_ptr>
  20a424: 48 81 f1 cb ca 00 00         	xorq	$51915, %rcx            # imm = 0xCACB
  20a42b: 41 8a 14 08                  	movb	(%r8,%rcx), %dl
  20a42f: 80 c2 01                     	addb	$1, %dl
  20a432: 80 d2 00                     	adcb	$0, %dl
  20a435: 41 88 14 08                  	movb	%dl, (%r8,%rcx)
  20a439: 64 c7 04 25 90 ff ff ff 65 65 00 00  	movl	$25957, %fs:-112 # imm = 0x6565
  20a445: 83 c7 ec                     	addl	$-20, %edi
  20a448: 83 ff 0b                     	cmpl	$11, %edi
  20a44b: 0f 87 8f 02 00 00            	ja	0x20a6e0 <parse_url_char+0x320>
  20a451: 40 0f b6 d6                  	movzbl	%sil, %edx
  20a455: ff 24 fd 48 2f 20 00         	jmpq	*2109256(,%rdi,8)
  20a45c: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20a465: 48 8b 0d 5c 2c 00 00         	movq	11356(%rip), %rcx       # 0x20d0c8 <__afl_area_ptr>
  20a46c: 48 35 fd 27 00 00            	xorq	$10237, %rax            # imm = 0x27FD
  20a472: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20a475: 80 c2 01                     	addb	$1, %dl
  20a478: 80 d2 00                     	adcb	$0, %dl
  20a47b: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20a47e: 64 c7 04 25 90 ff ff ff fe 13 00 00  	movl	$5118, %fs:-112 # imm = 0x13FE
  20a48a: 40 80 fe 40                  	cmpb	$64, %sil
  20a48e: 0f 84 db 05 00 00            	je	0x20aa6f <parse_url_char+0x6af>
  20a494: 40 80 fe 3f                  	cmpb	$63, %sil
  20a498: 0f 84 61 05 00 00            	je	0x20a9ff <parse_url_char+0x63f>
  20a49e: 40 80 fe 2f                  	cmpb	$47, %sil
  20a4a2: 0f 85 bd 02 00 00            	jne	0x20a765 <parse_url_char+0x3a5>
  20a4a8: e9 8a 05 00 00               	jmp	0x20aa37 <parse_url_char+0x677>
  20a4ad: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20a4b6: 48 8b 3d 0b 2c 00 00         	movq	11275(%rip), %rdi       # 0x20d0c8 <__afl_area_ptr>
  20a4bd: 48 35 8a 1f 00 00            	xorq	$8074, %rax             # imm = 0x1F8A
  20a4c3: 8a 0c 07                     	movb	(%rdi,%rax), %cl
  20a4c6: 80 c1 01                     	addb	$1, %cl
  20a4c9: 80 d1 00                     	adcb	$0, %cl
  20a4cc: 88 0c 07                     	movb	%cl, (%rdi,%rax)
  20a4cf: 64 c7 04 25 90 ff ff ff c5 0f 00 00  	movl	$4037, %fs:-112 # imm = 0xFC5
  20a4db: 48 89 d0                     	movq	%rdx, %rax
  20a4de: 48 c1 e8 03                  	shrq	$3, %rax
  20a4e2: 0f b6 80 a0 32 20 00         	movzbl	2110112(%rax), %eax
  20a4e9: 89 f1                        	movl	%esi, %ecx
  20a4eb: 80 e1 07                     	andb	$7, %cl
  20a4ee: 41 b8 01 00 00 00            	movl	$1, %r8d
  20a4f4: bf 01 00 00 00               	movl	$1, %edi
  20a4f9: d3 e7                        	shll	%cl, %edi
  20a4fb: 21 c7                        	andl	%eax, %edi
  20a4fd: 83 e2 80                     	andl	$-128, %edx
  20a500: b8 1d 00 00 00               	movl	$29, %eax
  20a505: 09 fa                        	orl	%edi, %edx
  20a507: 0f 85 d6 fe ff ff            	jne	0x20a3e3 <parse_url_char+0x23>
  20a50d: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20a516: 48 8b 0d ab 2b 00 00         	movq	11179(%rip), %rcx       # 0x20d0c8 <__afl_area_ptr>
  20a51d: 48 35 7a 91 00 00            	xorq	$37242, %rax            # imm = 0x917A
  20a523: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20a526: 80 c2 01                     	addb	$1, %dl
  20a529: 80 d2 00                     	adcb	$0, %dl
  20a52c: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20a52f: 64 c7 04 25 90 ff ff ff bd 48 00 00  	movl	$18621, %fs:-112 # imm = 0x48BD
  20a53b: 40 80 fe 23                  	cmpb	$35, %sil
  20a53f: b8 1e 00 00 00               	movl	$30, %eax
  20a544: 44 0f 44 c0                  	cmovel	%eax, %r8d
  20a548: 40 80 fe 3f                  	cmpb	$63, %sil
  20a54c: b8 1d 00 00 00               	movl	$29, %eax
  20a551: 41 0f 45 c0                  	cmovnel	%r8d, %eax
  20a555: e9 89 fe ff ff               	jmp	0x20a3e3 <parse_url_char+0x23>
  20a55a: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20a563: 48 8b 0d 5e 2b 00 00         	movq	11102(%rip), %rcx       # 0x20d0c8 <__afl_area_ptr>
  20a56a: 48 35 2d c3 00 00            	xorq	$49965, %rax            # imm = 0xC32D
  20a570: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20a573: 80 c2 01                     	addb	$1, %dl
  20a576: 80 d2 00                     	adcb	$0, %dl
  20a579: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20a57c: 64 c7 04 25 90 ff ff ff 96 61 00 00  	movl	$24982, %fs:-112 # imm = 0x6196
  20a588: b8 1b 00 00 00               	movl	$27, %eax
  20a58d: 40 80 fe 2a                  	cmpb	$42, %sil
  20a591: 0f 84 4c fe ff ff            	je	0x20a3e3 <parse_url_char+0x23>
  20a597: 40 80 fe 2f                  	cmpb	$47, %sil
  20a59b: 0f 84 42 fe ff ff            	je	0x20a3e3 <parse_url_char+0x23>
  20a5a1: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20a5aa: 48 8b 0d 17 2b 00 00         	movq	11031(%rip), %rcx       # 0x20d0c8 <__afl_area_ptr>
  20a5b1: 48 35 f2 a7 00 00            	xorq	$42994, %rax            # imm = 0xA7F2
  20a5b7: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20a5ba: 80 c2 01                     	addb	$1, %dl
  20a5bd: 80 d2 00                     	adcb	$0, %dl
  20a5c0: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20a5c3: 64 c7 04 25 90 ff ff ff f9 53 00 00  	movl	$21497, %fs:-112 # imm = 0x53F9
  20a5cf: 40 80 ce 20                  	orb	$32, %sil
  20a5d3: 40 80 c6 9f                  	addb	$-97, %sil
  20a5d7: b8 15 00 00 00               	movl	$21, %eax
  20a5dc: 40 80 fe 1a                  	cmpb	$26, %sil
  20a5e0: 0f 82 fd fd ff ff            	jb	0x20a3e3 <parse_url_char+0x23>
  20a5e6: e9 f5 00 00 00               	jmp	0x20a6e0 <parse_url_char+0x320>
  20a5eb: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20a5f4: 48 8b 0d cd 2a 00 00         	movq	10957(%rip), %rcx       # 0x20d0c8 <__afl_area_ptr>
  20a5fb: 48 35 27 09 00 00            	xorq	$2343, %rax             # imm = 0x927
  20a601: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20a604: 80 c2 01                     	addb	$1, %dl
  20a607: 80 d2 00                     	adcb	$0, %dl
  20a60a: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20a60d: 64 c7 04 25 90 ff ff ff 93 04 00 00  	movl	$1171, %fs:-112 # imm = 0x493
  20a619: 89 f1                        	movl	%esi, %ecx
  20a61b: 80 c9 20                     	orb	$32, %cl
  20a61e: 80 c1 9f                     	addb	$-97, %cl
  20a621: b8 15 00 00 00               	movl	$21, %eax
  20a626: 80 f9 1a                     	cmpb	$26, %cl
  20a629: 0f 82 b4 fd ff ff            	jb	0x20a3e3 <parse_url_char+0x23>
  20a62f: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20a638: 48 8b 0d 89 2a 00 00         	movq	10889(%rip), %rcx       # 0x20d0c8 <__afl_area_ptr>
  20a63f: 48 35 e2 a5 00 00            	xorq	$42466, %rax            # imm = 0xA5E2
  20a645: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20a648: 80 c2 01                     	addb	$1, %dl
  20a64b: 80 d2 00                     	adcb	$0, %dl
  20a64e: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20a651: 64 c7 04 25 90 ff ff ff f1 52 00 00  	movl	$21233, %fs:-112 # imm = 0x52F1
  20a65d: b8 16 00 00 00               	movl	$22, %eax
  20a662: 40 80 fe 3a                  	cmpb	$58, %sil
  20a666: 0f 84 77 fd ff ff            	je	0x20a3e3 <parse_url_char+0x23>
  20a66c: eb 72                        	jmp	0x20a6e0 <parse_url_char+0x320>
  20a66e: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20a677: 48 8b 0d 4a 2a 00 00         	movq	10826(%rip), %rcx       # 0x20d0c8 <__afl_area_ptr>
  20a67e: 48 35 fa b3 00 00            	xorq	$46074, %rax            # imm = 0xB3FA
  20a684: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20a687: 80 c2 01                     	addb	$1, %dl
  20a68a: 80 d2 00                     	adcb	$0, %dl
  20a68d: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20a690: 64 c7 04 25 90 ff ff ff fd 59 00 00  	movl	$23037, %fs:-112 # imm = 0x59FD
  20a69c: b8 17 00 00 00               	movl	$23, %eax
  20a6a1: eb 33                        	jmp	0x20a6d6 <parse_url_char+0x316>
  20a6a3: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20a6ac: 48 8b 0d 15 2a 00 00         	movq	10773(%rip), %rcx       # 0x20d0c8 <__afl_area_ptr>
  20a6b3: 48 35 be 03 00 00            	xorq	$958, %rax              # imm = 0x3BE
  20a6b9: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20a6bc: 80 c2 01                     	addb	$1, %dl
  20a6bf: 80 d2 00                     	adcb	$0, %dl
  20a6c2: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20a6c5: 64 c7 04 25 90 ff ff ff df 01 00 00  	movl	$479, %fs:-112  # imm = 0x1DF
  20a6d1: b8 18 00 00 00               	movl	$24, %eax
  20a6d6: 40 80 fe 2f                  	cmpb	$47, %sil
  20a6da: 0f 84 03 fd ff ff            	je	0x20a3e3 <parse_url_char+0x23>
  20a6e0: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20a6e9: 48 8b 0d d8 29 00 00         	movq	10712(%rip), %rcx       # 0x20d0c8 <__afl_area_ptr>
  20a6f0: 48 35 8b 7f 00 00            	xorq	$32651, %rax            # imm = 0x7F8B
  20a6f6: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20a6f9: 80 c2 01                     	addb	$1, %dl
  20a6fc: 80 d2 00                     	adcb	$0, %dl
  20a6ff: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20a702: 64 c7 04 25 90 ff ff ff c5 3f 00 00  	movl	$16325, %fs:-112 # imm = 0x3FC5
  20a70e: b8 01 00 00 00               	movl	$1, %eax
  20a713: e9 cb fc ff ff               	jmp	0x20a3e3 <parse_url_char+0x23>
  20a718: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20a721: 48 8b 3d a0 29 00 00         	movq	10656(%rip), %rdi       # 0x20d0c8 <__afl_area_ptr>
  20a728: 48 81 f1 b6 94 00 00         	xorq	$38070, %rcx            # imm = 0x94B6
  20a72f: 8a 14 0f                     	movb	(%rdi,%rcx), %dl
  20a732: 80 c2 01                     	addb	$1, %dl
  20a735: 80 d2 00                     	adcb	$0, %dl
  20a738: 88 14 0f                     	movb	%dl, (%rdi,%rcx)
  20a73b: 64 c7 04 25 90 ff ff ff 5b 4a 00 00  	movl	$19035, %fs:-112 # imm = 0x4A5B
  20a747: 40 80 fe 2f                  	cmpb	$47, %sil
  20a74b: 0f 84 e6 02 00 00            	je	0x20aa37 <parse_url_char+0x677>
  20a751: 40 80 fe 3f                  	cmpb	$63, %sil
  20a755: 0f 84 a4 02 00 00            	je	0x20a9ff <parse_url_char+0x63f>
  20a75b: 40 80 fe 40                  	cmpb	$64, %sil
  20a75f: 0f 84 7e fc ff ff            	je	0x20a3e3 <parse_url_char+0x23>
  20a765: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20a76e: 48 8b 0d 53 29 00 00         	movq	10579(%rip), %rcx       # 0x20d0c8 <__afl_area_ptr>
  20a775: 48 35 de 3f 00 00            	xorq	$16350, %rax            # imm = 0x3FDE
  20a77b: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20a77e: 80 c2 01                     	addb	$1, %dl
  20a781: 80 d2 00                     	adcb	$0, %dl
  20a784: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20a787: 64 c7 04 25 90 ff ff ff ef 1f 00 00  	movl	$8175, %fs:-112 # imm = 0x1FEF
  20a793: 8d 4e d0                     	leal	-48(%rsi), %ecx
  20a796: b8 19 00 00 00               	movl	$25, %eax
  20a79b: 80 f9 0a                     	cmpb	$10, %cl
  20a79e: 0f 82 3f fc ff ff            	jb	0x20a3e3 <parse_url_char+0x23>
  20a7a4: 89 f1                        	movl	%esi, %ecx
  20a7a6: 80 c9 20                     	orb	$32, %cl
  20a7a9: 80 c1 9f                     	addb	$-97, %cl
  20a7ac: 80 f9 1a                     	cmpb	$26, %cl
  20a7af: 0f 82 2e fc ff ff            	jb	0x20a3e3 <parse_url_char+0x23>
  20a7b5: 64 48 63 0c 25 90 ff ff ff   	movslq	%fs:-112, %rcx
  20a7be: 48 8b 3d 03 29 00 00         	movq	10499(%rip), %rdi       # 0x20d0c8 <__afl_area_ptr>
  20a7c5: 48 81 f1 de fe 00 00         	xorq	$65246, %rcx            # imm = 0xFEDE
  20a7cc: 8a 14 0f                     	movb	(%rdi,%rcx), %dl
  20a7cf: 80 c2 01                     	addb	$1, %dl
  20a7d2: 80 d2 00                     	adcb	$0, %dl
  20a7d5: 88 14 0f                     	movb	%dl, (%rdi,%rcx)
  20a7d8: 64 c7 04 25 90 ff ff ff 6f 7f 00 00  	movl	$32623, %fs:-112 # imm = 0x7F6F
  20a7e4: 8d 4e df                     	leal	-33(%rsi), %ecx
  20a7e7: 80 f9 5d                     	cmpb	$93, %cl
  20a7ea: 0f 87 f0 fe ff ff            	ja	0x20a6e0 <parse_url_char+0x320>
  20a7f0: 0f b6 c9                     	movzbl	%cl, %ecx
  20a7f3: ff 24 cd a8 2f 20 00         	jmpq	*2109352(,%rcx,8)
  20a7fa: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20a803: 48 8b 3d be 28 00 00         	movq	10430(%rip), %rdi       # 0x20d0c8 <__afl_area_ptr>
  20a80a: 48 35 4c a8 00 00            	xorq	$43084, %rax            # imm = 0xA84C
  20a810: 8a 0c 07                     	movb	(%rdi,%rax), %cl
  20a813: 80 c1 01                     	addb	$1, %cl
  20a816: 80 d1 00                     	adcb	$0, %cl
  20a819: 88 0c 07                     	movb	%cl, (%rdi,%rax)
  20a81c: 64 c7 04 25 90 ff ff ff 26 54 00 00  	movl	$21542, %fs:-112 # imm = 0x5426
  20a828: 48 89 d0                     	movq	%rdx, %rax
  20a82b: 48 c1 e8 03                  	shrq	$3, %rax
  20a82f: 0f b6 80 a0 32 20 00         	movzbl	2110112(%rax), %eax
  20a836: 89 f1                        	movl	%esi, %ecx
  20a838: 80 e1 07                     	andb	$7, %cl
  20a83b: 41 b8 01 00 00 00            	movl	$1, %r8d
  20a841: bf 01 00 00 00               	movl	$1, %edi
  20a846: d3 e7                        	shll	%cl, %edi
  20a848: 21 c7                        	andl	%eax, %edi
  20a84a: 83 e2 80                     	andl	$-128, %edx
  20a84d: b8 1b 00 00 00               	movl	$27, %eax
  20a852: 09 fa                        	orl	%edi, %edx
  20a854: 0f 85 89 fb ff ff            	jne	0x20a3e3 <parse_url_char+0x23>
  20a85a: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20a863: 48 8b 0d 5e 28 00 00         	movq	10334(%rip), %rcx       # 0x20d0c8 <__afl_area_ptr>
  20a86a: 48 35 71 c4 00 00            	xorq	$50289, %rax            # imm = 0xC471
  20a870: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20a873: 80 c2 01                     	addb	$1, %dl
  20a876: 80 d2 00                     	adcb	$0, %dl
  20a879: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20a87c: 64 c7 04 25 90 ff ff ff 38 62 00 00  	movl	$25144, %fs:-112 # imm = 0x6238
  20a888: 40 80 fe 23                  	cmpb	$35, %sil
  20a88c: b8 1e 00 00 00               	movl	$30, %eax
  20a891: 44 0f 44 c0                  	cmovel	%eax, %r8d
  20a895: 40 80 fe 3f                  	cmpb	$63, %sil
  20a899: b8 1c 00 00 00               	movl	$28, %eax
  20a89e: 41 0f 45 c0                  	cmovnel	%r8d, %eax
  20a8a2: e9 3c fb ff ff               	jmp	0x20a3e3 <parse_url_char+0x23>
  20a8a7: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20a8b0: 48 8b 3d 11 28 00 00         	movq	10257(%rip), %rdi       # 0x20d0c8 <__afl_area_ptr>
  20a8b7: 48 35 f6 a3 00 00            	xorq	$41974, %rax            # imm = 0xA3F6
  20a8bd: 8a 0c 07                     	movb	(%rdi,%rax), %cl
  20a8c0: 80 c1 01                     	addb	$1, %cl
  20a8c3: 80 d1 00                     	adcb	$0, %cl
  20a8c6: 88 0c 07                     	movb	%cl, (%rdi,%rax)
  20a8c9: 64 c7 04 25 90 ff ff ff fb 51 00 00  	movl	$20987, %fs:-112 # imm = 0x51FB
  20a8d5: 48 89 d0                     	movq	%rdx, %rax
  20a8d8: 48 c1 e8 03                  	shrq	$3, %rax
  20a8dc: 0f b6 80 a0 32 20 00         	movzbl	2110112(%rax), %eax
  20a8e3: 89 f1                        	movl	%esi, %ecx
  20a8e5: 80 e1 07                     	andb	$7, %cl
  20a8e8: 41 b8 01 00 00 00            	movl	$1, %r8d
  20a8ee: bf 01 00 00 00               	movl	$1, %edi
  20a8f3: d3 e7                        	shll	%cl, %edi
  20a8f5: 21 c7                        	andl	%eax, %edi
  20a8f7: 83 e2 80                     	andl	$-128, %edx
  20a8fa: b8 1f 00 00 00               	movl	$31, %eax
  20a8ff: 09 fa                        	orl	%edi, %edx
  20a901: 0f 85 dc fa ff ff            	jne	0x20a3e3 <parse_url_char+0x23>
  20a907: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20a910: 48 8b 0d b1 27 00 00         	movq	10161(%rip), %rcx       # 0x20d0c8 <__afl_area_ptr>
  20a917: 48 35 dd 7b 00 00            	xorq	$31709, %rax            # imm = 0x7BDD
  20a91d: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20a920: 80 c2 01                     	addb	$1, %dl
  20a923: 80 d2 00                     	adcb	$0, %dl
  20a926: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20a929: 40 80 fe 23                  	cmpb	$35, %sil
  20a92d: b8 1f 00 00 00               	movl	$31, %eax
  20a932: 44 0f 44 c0                  	cmovel	%eax, %r8d
  20a936: 64 c7 04 25 90 ff ff ff ee 3d 00 00  	movl	$15854, %fs:-112 # imm = 0x3DEE
  20a942: 40 80 fe 3f                  	cmpb	$63, %sil
  20a946: 44 0f 44 c0                  	cmovel	%eax, %r8d
  20a94a: 44 89 c0                     	movl	%r8d, %eax
  20a94d: e9 91 fa ff ff               	jmp	0x20a3e3 <parse_url_char+0x23>
  20a952: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20a95b: 48 8b 3d 66 27 00 00         	movq	10086(%rip), %rdi       # 0x20d0c8 <__afl_area_ptr>
  20a962: 48 35 17 41 00 00            	xorq	$16663, %rax            # imm = 0x4117
  20a968: 8a 0c 07                     	movb	(%rdi,%rax), %cl
  20a96b: 80 c1 01                     	addb	$1, %cl
  20a96e: 80 d1 00                     	adcb	$0, %cl
  20a971: 88 0c 07                     	movb	%cl, (%rdi,%rax)
  20a974: 64 c7 04 25 90 ff ff ff 8b 20 00 00  	movl	$8331, %fs:-112 # imm = 0x208B
  20a980: 48 89 d0                     	movq	%rdx, %rax
  20a983: 48 c1 e8 03                  	shrq	$3, %rax
  20a987: 0f b6 80 a0 32 20 00         	movzbl	2110112(%rax), %eax
  20a98e: 89 f1                        	movl	%esi, %ecx
  20a990: 80 e1 07                     	andb	$7, %cl
  20a993: 41 b8 01 00 00 00            	movl	$1, %r8d
  20a999: bf 01 00 00 00               	movl	$1, %edi
  20a99e: d3 e7                        	shll	%cl, %edi
  20a9a0: 21 c7                        	andl	%eax, %edi
  20a9a2: 83 e2 80                     	andl	$-128, %edx
  20a9a5: b8 1f 00 00 00               	movl	$31, %eax
  20a9aa: 09 fa                        	orl	%edi, %edx
  20a9ac: 0f 85 31 fa ff ff            	jne	0x20a3e3 <parse_url_char+0x23>
  20a9b2: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20a9bb: 48 8b 0d 06 27 00 00         	movq	9990(%rip), %rcx        # 0x20d0c8 <__afl_area_ptr>
  20a9c2: 48 35 47 2f 00 00            	xorq	$12103, %rax            # imm = 0x2F47
  20a9c8: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20a9cb: 80 c2 01                     	addb	$1, %dl
  20a9ce: 80 d2 00                     	adcb	$0, %dl
  20a9d1: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20a9d4: 64 c7 04 25 90 ff ff ff a3 17 00 00  	movl	$6051, %fs:-112 # imm = 0x17A3
  20a9e0: 40 80 fe 23                  	cmpb	$35, %sil
  20a9e4: b8 1e 00 00 00               	movl	$30, %eax
  20a9e9: 44 0f 44 c0                  	cmovel	%eax, %r8d
  20a9ed: 40 80 fe 3f                  	cmpb	$63, %sil
  20a9f1: b8 1f 00 00 00               	movl	$31, %eax
  20a9f6: 41 0f 45 c0                  	cmovnel	%r8d, %eax
  20a9fa: e9 e4 f9 ff ff               	jmp	0x20a3e3 <parse_url_char+0x23>
  20a9ff: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20aa08: 48 8b 0d b9 26 00 00         	movq	9913(%rip), %rcx        # 0x20d0c8 <__afl_area_ptr>
  20aa0f: 48 35 ce 29 00 00            	xorq	$10702, %rax            # imm = 0x29CE
  20aa15: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20aa18: 80 c2 01                     	addb	$1, %dl
  20aa1b: 80 d2 00                     	adcb	$0, %dl
  20aa1e: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20aa21: 64 c7 04 25 90 ff ff ff e7 14 00 00  	movl	$5351, %fs:-112 # imm = 0x14E7
  20aa2d: b8 1c 00 00 00               	movl	$28, %eax
  20aa32: e9 ac f9 ff ff               	jmp	0x20a3e3 <parse_url_char+0x23>
  20aa37: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20aa40: 48 8b 0d 81 26 00 00         	movq	9857(%rip), %rcx        # 0x20d0c8 <__afl_area_ptr>
  20aa47: 48 35 c8 ba 00 00            	xorq	$47816, %rax            # imm = 0xBAC8
  20aa4d: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20aa50: 80 c2 01                     	addb	$1, %dl
  20aa53: 80 d2 00                     	adcb	$0, %dl
  20aa56: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20aa59: 64 c7 04 25 90 ff ff ff 64 5d 00 00  	movl	$23908, %fs:-112 # imm = 0x5D64
  20aa65: b8 1b 00 00 00               	movl	$27, %eax
  20aa6a: e9 74 f9 ff ff               	jmp	0x20a3e3 <parse_url_char+0x23>
  20aa6f: b8 1a 00 00 00               	movl	$26, %eax
  20aa74: e9 6a f9 ff ff               	jmp	0x20a3e3 <parse_url_char+0x23>
  20aa79: cc                           	int3
  20aa7a: cc                           	int3
  20aa7b: cc                           	int3
  20aa7c: cc                           	int3
  20aa7d: cc                           	int3
  20aa7e: cc                           	int3
  20aa7f: cc                           	int3

000000000020aa80 <LLVMFuzzerTestOneInput>:
  20aa80: 55                           	pushq	%rbp
  20aa81: 48 89 e5                     	movq	%rsp, %rbp
  20aa84: 41 57                        	pushq	%r15
  20aa86: 41 56                        	pushq	%r14
  20aa88: 53                           	pushq	%rbx
  20aa89: 48 83 ec 28                  	subq	$40, %rsp
  20aa8d: 49 89 f6                     	movq	%rsi, %r14
  20aa90: 48 89 fb                     	movq	%rdi, %rbx
  20aa93: 64 48 63 04 25 90 ff ff ff   	movslq	%fs:-112, %rax
  20aa9c: 48 8b 0d 25 26 00 00         	movq	9765(%rip), %rcx        # 0x20d0c8 <__afl_area_ptr>
  20aaa3: 48 35 ef 5d 00 00            	xorq	$24047, %rax            # imm = 0x5DEF
  20aaa9: 8a 14 01                     	movb	(%rcx,%rax), %dl
  20aaac: 80 c2 01                     	addb	$1, %dl
  20aaaf: 80 d2 00                     	adcb	$0, %dl
  20aab2: 88 14 01                     	movb	%dl, (%rcx,%rax)
  20aab5: 64 c7 04 25 90 ff ff ff f7 2e 00 00  	movl	$12023, %fs:-112 # imm = 0x2EF7
  20aac1: 4c 8d 7d c8                  	leaq	-56(%rbp), %r15
  20aac5: 4c 89 ff                     	movq	%r15, %rdi
  20aac8: e8 d3 e7 ff ff               	callq	0x2092a0 <http_parser_url_init>
  20aacd: 48 89 df                     	movq	%rbx, %rdi
  20aad0: 4c 89 f6                     	movq	%r14, %rsi
  20aad3: 31 d2                        	xorl	%edx, %edx
  20aad5: 4c 89 f9                     	movq	%r15, %rcx
  20aad8: e8 03 e8 ff ff               	callq	0x2092e0 <http_parser_parse_url>
  20aadd: 48 89 df                     	movq	%rbx, %rdi
  20aae0: 4c 89 f6                     	movq	%r14, %rsi
  20aae3: ba 01 00 00 00               	movl	$1, %edx
  20aae8: 4c 89 f9                     	movq	%r15, %rcx
  20aaeb: e8 f0 e7 ff ff               	callq	0x2092e0 <http_parser_parse_url>
  20aaf0: 31 c0                        	xorl	%eax, %eax
  20aaf2: 48 83 c4 28                  	addq	$40, %rsp
  20aaf6: 5b                           	popq	%rbx
  20aaf7: 41 5e                        	popq	%r14
  20aaf9: 41 5f                        	popq	%r15
  20aafb: 5d                           	popq	%rbp
  20aafc: c3                           	retq

Disassembly of section .init:

000000000020ab00 <_init>:
  20ab00: f3 0f 1e fa                  	endbr64
  20ab04: 48 83 ec 08                  	subq	$8, %rsp
  20ab08: 48 8b 05 79 15 00 00         	movq	5497(%rip), %rax        # 0x20c088 <write+0x20c088>
  20ab0f: 48 85 c0                     	testq	%rax, %rax
  20ab12: 74 02                        	je	0x20ab16 <_init+0x16>
  20ab14: ff d0                        	callq	*%rax
  20ab16: 48 83 c4 08                  	addq	$8, %rsp
  20ab1a: c3                           	retq

Disassembly of section .fini:

000000000020ab1c <_fini>:
  20ab1c: f3 0f 1e fa                  	endbr64
  20ab20: 48 83 ec 08                  	subq	$8, %rsp
  20ab24: 48 83 c4 08                  	addq	$8, %rsp
  20ab28: c3                           	retq

Disassembly of section .plt:

000000000020ab30 <.plt>:
  20ab30: ff 35 d2 25 00 00            	pushq	9682(%rip)              # 0x20d108 <_GLOBAL_OFFSET_TABLE_+0x8>
  20ab36: ff 25 d4 25 00 00            	jmpq	*9684(%rip)             # 0x20d110 <_GLOBAL_OFFSET_TABLE_+0x10>
  20ab3c: 0f 1f 40 00                  	nopl	(%rax)

000000000020ab40 <getenv@plt>:
  20ab40: ff 25 d2 25 00 00            	jmpq	*9682(%rip)             # 0x20d118 <_GLOBAL_OFFSET_TABLE_+0x18>
  20ab46: 68 00 00 00 00               	pushq	$0
  20ab4b: e9 e0 ff ff ff               	jmp	0x20ab30 <.plt>

000000000020ab50 <unsetenv@plt>:
  20ab50: ff 25 ca 25 00 00            	jmpq	*9674(%rip)             # 0x20d120 <_GLOBAL_OFFSET_TABLE_+0x20>
  20ab56: 68 01 00 00 00               	pushq	$1
  20ab5b: e9 d0 ff ff ff               	jmp	0x20ab30 <.plt>

000000000020ab60 <perror@plt>:
  20ab60: ff 25 c2 25 00 00            	jmpq	*9666(%rip)             # 0x20d128 <_GLOBAL_OFFSET_TABLE_+0x28>
  20ab66: 68 02 00 00 00               	pushq	$2
  20ab6b: e9 c0 ff ff ff               	jmp	0x20ab30 <.plt>

000000000020ab70 <abort@plt>:
  20ab70: ff 25 ba 25 00 00            	jmpq	*9658(%rip)             # 0x20d130 <_GLOBAL_OFFSET_TABLE_+0x30>
  20ab76: 68 03 00 00 00               	pushq	$3
  20ab7b: e9 b0 ff ff ff               	jmp	0x20ab30 <.plt>

000000000020ab80 <strncmp@plt>:
  20ab80: ff 25 b2 25 00 00            	jmpq	*9650(%rip)             # 0x20d138 <_GLOBAL_OFFSET_TABLE_+0x38>
  20ab86: 68 04 00 00 00               	pushq	$4
  20ab8b: e9 a0 ff ff ff               	jmp	0x20ab30 <.plt>

000000000020ab90 <printf@plt>:
  20ab90: ff 25 aa 25 00 00            	jmpq	*9642(%rip)             # 0x20d140 <_GLOBAL_OFFSET_TABLE_+0x40>
  20ab96: 68 05 00 00 00               	pushq	$5
  20ab9b: e9 90 ff ff ff               	jmp	0x20ab30 <.plt>

000000000020aba0 <freopen@plt>:
  20aba0: ff 25 a2 25 00 00            	jmpq	*9634(%rip)             # 0x20d148 <_GLOBAL_OFFSET_TABLE_+0x48>
  20aba6: 68 06 00 00 00               	pushq	$6
  20abab: e9 80 ff ff ff               	jmp	0x20ab30 <.plt>

000000000020abb0 <strtol@plt>:
  20abb0: ff 25 9a 25 00 00            	jmpq	*9626(%rip)             # 0x20d150 <_GLOBAL_OFFSET_TABLE_+0x50>
  20abb6: 68 07 00 00 00               	pushq	$7
  20abbb: e9 70 ff ff ff               	jmp	0x20ab30 <.plt>

000000000020abc0 <fileno@plt>:
  20abc0: ff 25 92 25 00 00            	jmpq	*9618(%rip)             # 0x20d158 <_GLOBAL_OFFSET_TABLE_+0x58>
  20abc6: 68 08 00 00 00               	pushq	$8
  20abcb: e9 60 ff ff ff               	jmp	0x20ab30 <.plt>

000000000020abd0 <dup@plt>:
  20abd0: ff 25 8a 25 00 00            	jmpq	*9610(%rip)             # 0x20d160 <_GLOBAL_OFFSET_TABLE_+0x60>
  20abd6: 68 09 00 00 00               	pushq	$9
  20abdb: e9 50 ff ff ff               	jmp	0x20ab30 <.plt>

000000000020abe0 <fdopen@plt>:
  20abe0: ff 25 82 25 00 00            	jmpq	*9602(%rip)             # 0x20d168 <_GLOBAL_OFFSET_TABLE_+0x68>
  20abe6: 68 0a 00 00 00               	pushq	$10
  20abeb: e9 40 ff ff ff               	jmp	0x20ab30 <.plt>

000000000020abf0 <__sanitizer_set_report_fd@plt>:
  20abf0: ff 25 7a 25 00 00            	jmpq	*9594(%rip)             # 0x20d170 <_GLOBAL_OFFSET_TABLE_+0x70>
  20abf6: 68 0b 00 00 00               	pushq	$11
  20abfb: e9 30 ff ff ff               	jmp	0x20ab30 <.plt>

000000000020ac00 <fopen@plt>:
  20ac00: ff 25 72 25 00 00            	jmpq	*9586(%rip)             # 0x20d178 <_GLOBAL_OFFSET_TABLE_+0x78>
  20ac06: 68 0c 00 00 00               	pushq	$12
  20ac0b: e9 20 ff ff ff               	jmp	0x20ab30 <.plt>

000000000020ac10 <dup2@plt>:
  20ac10: ff 25 6a 25 00 00            	jmpq	*9578(%rip)             # 0x20d180 <_GLOBAL_OFFSET_TABLE_+0x80>
  20ac16: 68 0d 00 00 00               	pushq	$13
  20ac1b: e9 10 ff ff ff               	jmp	0x20ab30 <.plt>

000000000020ac20 <fclose@plt>:
  20ac20: ff 25 62 25 00 00            	jmpq	*9570(%rip)             # 0x20d188 <_GLOBAL_OFFSET_TABLE_+0x88>
  20ac26: 68 0e 00 00 00               	pushq	$14
  20ac2b: e9 00 ff ff ff               	jmp	0x20ab30 <.plt>

000000000020ac30 <LLVMFuzzerInitialize@plt>:
  20ac30: ff 25 5a 25 00 00            	jmpq	*9562(%rip)             # 0x20d190 <_GLOBAL_OFFSET_TABLE_+0x90>
  20ac36: 68 0f 00 00 00               	pushq	$15
  20ac3b: e9 f0 fe ff ff               	jmp	0x20ab30 <.plt>

000000000020ac40 <strcmp@plt>:
  20ac40: ff 25 52 25 00 00            	jmpq	*9554(%rip)             # 0x20d198 <_GLOBAL_OFFSET_TABLE_+0x98>
  20ac46: 68 10 00 00 00               	pushq	$16
  20ac4b: e9 e0 fe ff ff               	jmp	0x20ab30 <.plt>

000000000020ac50 <getpid@plt>:
  20ac50: ff 25 4a 25 00 00            	jmpq	*9546(%rip)             # 0x20d1a0 <_GLOBAL_OFFSET_TABLE_+0xa0>
  20ac56: 68 11 00 00 00               	pushq	$17
  20ac5b: e9 d0 fe ff ff               	jmp	0x20ab30 <.plt>

000000000020ac60 <snprintf@plt>:
  20ac60: ff 25 42 25 00 00            	jmpq	*9538(%rip)             # 0x20d1a8 <_GLOBAL_OFFSET_TABLE_+0xa8>
  20ac66: 68 12 00 00 00               	pushq	$18
  20ac6b: e9 c0 fe ff ff               	jmp	0x20ab30 <.plt>

000000000020ac70 <system@plt>:
  20ac70: ff 25 3a 25 00 00            	jmpq	*9530(%rip)             # 0x20d1b0 <_GLOBAL_OFFSET_TABLE_+0xb0>
  20ac76: 68 13 00 00 00               	pushq	$19
  20ac7b: e9 b0 fe ff ff               	jmp	0x20ab30 <.plt>

000000000020ac80 <fprintf@plt>:
  20ac80: ff 25 32 25 00 00            	jmpq	*9522(%rip)             # 0x20d1b8 <_GLOBAL_OFFSET_TABLE_+0xb8>
  20ac86: 68 14 00 00 00               	pushq	$20
  20ac8b: e9 a0 fe ff ff               	jmp	0x20ab30 <.plt>

000000000020ac90 <sleep@plt>:
  20ac90: ff 25 2a 25 00 00            	jmpq	*9514(%rip)             # 0x20d1c0 <_GLOBAL_OFFSET_TABLE_+0xc0>
  20ac96: 68 15 00 00 00               	pushq	$21
  20ac9b: e9 90 fe ff ff               	jmp	0x20ab30 <.plt>

000000000020aca0 <fwrite@plt>:
  20aca0: ff 25 22 25 00 00            	jmpq	*9506(%rip)             # 0x20d1c8 <_GLOBAL_OFFSET_TABLE_+0xc8>
  20aca6: 68 16 00 00 00               	pushq	$22
  20acab: e9 80 fe ff ff               	jmp	0x20ab30 <.plt>

000000000020acb0 <__assert_fail@plt>:
  20acb0: ff 25 1a 25 00 00            	jmpq	*9498(%rip)             # 0x20d1d0 <_GLOBAL_OFFSET_TABLE_+0xd0>
  20acb6: 68 17 00 00 00               	pushq	$23
  20acbb: e9 70 fe ff ff               	jmp	0x20ab30 <.plt>

000000000020acc0 <malloc@plt>:
  20acc0: ff 25 12 25 00 00            	jmpq	*9490(%rip)             # 0x20d1d8 <_GLOBAL_OFFSET_TABLE_+0xd8>
  20acc6: 68 18 00 00 00               	pushq	$24
  20accb: e9 60 fe ff ff               	jmp	0x20ab30 <.plt>

000000000020acd0 <open@plt>:
  20acd0: ff 25 0a 25 00 00            	jmpq	*9482(%rip)             # 0x20d1e0 <_GLOBAL_OFFSET_TABLE_+0xe0>
  20acd6: 68 19 00 00 00               	pushq	$25
  20acdb: e9 50 fe ff ff               	jmp	0x20ab30 <.plt>

000000000020ace0 <syscall@plt>:
  20ace0: ff 25 02 25 00 00            	jmpq	*9474(%rip)             # 0x20d1e8 <_GLOBAL_OFFSET_TABLE_+0xe8>
  20ace6: 68 1a 00 00 00               	pushq	$26
  20aceb: e9 40 fe ff ff               	jmp	0x20ab30 <.plt>

000000000020acf0 <puts@plt>:
  20acf0: ff 25 fa 24 00 00            	jmpq	*9466(%rip)             # 0x20d1f0 <_GLOBAL_OFFSET_TABLE_+0xf0>
  20acf6: 68 1b 00 00 00               	pushq	$27
  20acfb: e9 30 fe ff ff               	jmp	0x20ab30 <.plt>

000000000020ad00 <close@plt>:
  20ad00: ff 25 f2 24 00 00            	jmpq	*9458(%rip)             # 0x20d1f8 <_GLOBAL_OFFSET_TABLE_+0xf8>
  20ad06: 68 1c 00 00 00               	pushq	$28
  20ad0b: e9 20 fe ff ff               	jmp	0x20ab30 <.plt>

000000000020ad10 <free@plt>:
  20ad10: ff 25 ea 24 00 00            	jmpq	*9450(%rip)             # 0x20d200 <_GLOBAL_OFFSET_TABLE_+0x100>
  20ad16: 68 1d 00 00 00               	pushq	$29
  20ad1b: e9 10 fe ff ff               	jmp	0x20ab30 <.plt>

000000000020ad20 <__errno_location@plt>:
  20ad20: ff 25 e2 24 00 00            	jmpq	*9442(%rip)             # 0x20d208 <_GLOBAL_OFFSET_TABLE_+0x108>
  20ad26: 68 1e 00 00 00               	pushq	$30
  20ad2b: e9 00 fe ff ff               	jmp	0x20ab30 <.plt>

000000000020ad30 <strerror@plt>:
  20ad30: ff 25 da 24 00 00            	jmpq	*9434(%rip)             # 0x20d210 <_GLOBAL_OFFSET_TABLE_+0x110>
  20ad36: 68 1f 00 00 00               	pushq	$31
  20ad3b: e9 f0 fd ff ff               	jmp	0x20ab30 <.plt>

000000000020ad40 <raise@plt>:
  20ad40: ff 25 d2 24 00 00            	jmpq	*9426(%rip)             # 0x20d218 <_GLOBAL_OFFSET_TABLE_+0x118>
  20ad46: 68 20 00 00 00               	pushq	$32
  20ad4b: e9 e0 fd ff ff               	jmp	0x20ab30 <.plt>

000000000020ad50 <memset@plt>:
  20ad50: ff 25 ca 24 00 00            	jmpq	*9418(%rip)             # 0x20d220 <_GLOBAL_OFFSET_TABLE_+0x120>
  20ad56: 68 21 00 00 00               	pushq	$33
  20ad5b: e9 d0 fd ff ff               	jmp	0x20ab30 <.plt>

000000000020ad60 <sigaction@plt>:
  20ad60: ff 25 c2 24 00 00            	jmpq	*9410(%rip)             # 0x20d228 <_GLOBAL_OFFSET_TABLE_+0x128>
  20ad66: 68 22 00 00 00               	pushq	$34
  20ad6b: e9 c0 fd ff ff               	jmp	0x20ab30 <.plt>

000000000020ad70 <signal@plt>:
  20ad70: ff 25 ba 24 00 00            	jmpq	*9402(%rip)             # 0x20d230 <_GLOBAL_OFFSET_TABLE_+0x130>
  20ad76: 68 23 00 00 00               	pushq	$35
  20ad7b: e9 b0 fd ff ff               	jmp	0x20ab30 <.plt>

000000000020ad80 <write@plt>:
  20ad80: ff 25 b2 24 00 00            	jmpq	*9394(%rip)             # 0x20d238 <_GLOBAL_OFFSET_TABLE_+0x138>
  20ad86: 68 24 00 00 00               	pushq	$36
  20ad8b: e9 a0 fd ff ff               	jmp	0x20ab30 <.plt>

000000000020ad90 <read@plt>:
  20ad90: ff 25 aa 24 00 00            	jmpq	*9386(%rip)             # 0x20d240 <_GLOBAL_OFFSET_TABLE_+0x140>
  20ad96: 68 25 00 00 00               	pushq	$37
  20ad9b: e9 90 fd ff ff               	jmp	0x20ab30 <.plt>

000000000020ada0 <waitpid@plt>:
  20ada0: ff 25 a2 24 00 00            	jmpq	*9378(%rip)             # 0x20d248 <_GLOBAL_OFFSET_TABLE_+0x148>
  20ada6: 68 26 00 00 00               	pushq	$38
  20adab: e9 80 fd ff ff               	jmp	0x20ab30 <.plt>

000000000020adb0 <kill@plt>:
  20adb0: ff 25 9a 24 00 00            	jmpq	*9370(%rip)             # 0x20d250 <_GLOBAL_OFFSET_TABLE_+0x150>
  20adb6: 68 27 00 00 00               	pushq	$39
  20adbb: e9 70 fd ff ff               	jmp	0x20ab30 <.plt>

000000000020adc0 <fork@plt>:
  20adc0: ff 25 92 24 00 00            	jmpq	*9362(%rip)             # 0x20d258 <_GLOBAL_OFFSET_TABLE_+0x158>
  20adc6: 68 28 00 00 00               	pushq	$40
  20adcb: e9 60 fd ff ff               	jmp	0x20ab30 <.plt>

000000000020add0 <ioctl@plt>:
  20add0: ff 25 8a 24 00 00            	jmpq	*9354(%rip)             # 0x20d260 <_GLOBAL_OFFSET_TABLE_+0x160>
  20add6: 68 29 00 00 00               	pushq	$41
  20addb: e9 50 fd ff ff               	jmp	0x20ab30 <.plt>

000000000020ade0 <_exit@plt>:
  20ade0: ff 25 82 24 00 00            	jmpq	*9346(%rip)             # 0x20d268 <_GLOBAL_OFFSET_TABLE_+0x168>
  20ade6: 68 2a 00 00 00               	pushq	$42
  20adeb: e9 40 fd ff ff               	jmp	0x20ab30 <.plt>

000000000020adf0 <munmap@plt>:
  20adf0: ff 25 7a 24 00 00            	jmpq	*9338(%rip)             # 0x20d270 <_GLOBAL_OFFSET_TABLE_+0x170>
  20adf6: 68 2b 00 00 00               	pushq	$43
  20adfb: e9 30 fd ff ff               	jmp	0x20ab30 <.plt>

000000000020ae00 <mmap@plt>:
  20ae00: ff 25 72 24 00 00            	jmpq	*9330(%rip)             # 0x20d278 <_GLOBAL_OFFSET_TABLE_+0x178>
  20ae06: 68 2c 00 00 00               	pushq	$44
  20ae0b: e9 20 fd ff ff               	jmp	0x20ab30 <.plt>

000000000020ae10 <exit@plt>:
  20ae10: ff 25 6a 24 00 00            	jmpq	*9322(%rip)             # 0x20d280 <_GLOBAL_OFFSET_TABLE_+0x180>
  20ae16: 68 2d 00 00 00               	pushq	$45
  20ae1b: e9 10 fd ff ff               	jmp	0x20ab30 <.plt>

000000000020ae20 <shmat@plt>:
  20ae20: ff 25 62 24 00 00            	jmpq	*9314(%rip)             # 0x20d288 <_GLOBAL_OFFSET_TABLE_+0x188>
  20ae26: 68 2e 00 00 00               	pushq	$46
  20ae2b: e9 00 fd ff ff               	jmp	0x20ab30 <.plt>

000000000020ae30 <pipe@plt>:
  20ae30: ff 25 5a 24 00 00            	jmpq	*9306(%rip)             # 0x20d290 <_GLOBAL_OFFSET_TABLE_+0x190>
  20ae36: 68 2f 00 00 00               	pushq	$47
  20ae3b: e9 f0 fc ff ff               	jmp	0x20ab30 <.plt>

000000000020ae40 <random@plt>:
  20ae40: ff 25 52 24 00 00            	jmpq	*9298(%rip)             # 0x20d298 <_GLOBAL_OFFSET_TABLE_+0x198>
  20ae46: 68 30 00 00 00               	pushq	$48
  20ae4b: e9 e0 fc ff ff               	jmp	0x20ab30 <.plt>

000000000020ae50 <shmdt@plt>:
  20ae50: ff 25 4a 24 00 00            	jmpq	*9290(%rip)             # 0x20d2a0 <_GLOBAL_OFFSET_TABLE_+0x1a0>
  20ae56: 68 31 00 00 00               	pushq	$49
  20ae5b: e9 d0 fc ff ff               	jmp	0x20ab30 <.plt>

000000000020ae60 <strnlen@plt>:
  20ae60: ff 25 42 24 00 00            	jmpq	*9282(%rip)             # 0x20d2a8 <_GLOBAL_OFFSET_TABLE_+0x1a8>
  20ae66: 68 32 00 00 00               	pushq	$50
  20ae6b: e9 c0 fc ff ff               	jmp	0x20ab30 <.plt>

000000000020ae70 <sysconf@plt>:
  20ae70: ff 25 3a 24 00 00            	jmpq	*9274(%rip)             # 0x20d2b0 <_GLOBAL_OFFSET_TABLE_+0x1b0>
  20ae76: 68 33 00 00 00               	pushq	$51
  20ae7b: e9 b0 fc ff ff               	jmp	0x20ab30 <.plt>

000000000020ae80 <memcpy@plt>:
  20ae80: ff 25 32 24 00 00            	jmpq	*9266(%rip)             # 0x20d2b8 <_GLOBAL_OFFSET_TABLE_+0x1b8>
  20ae86: 68 34 00 00 00               	pushq	$52
  20ae8b: e9 a0 fc ff ff               	jmp	0x20ab30 <.plt>
