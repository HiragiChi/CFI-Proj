
test_g:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	f3 0f 1e fa          	endbr64 
  401004:	48 83 ec 08          	sub    $0x8,%rsp
  401008:	48 8b 05 e9 cf 4b 00 	mov    0x4bcfe9(%rip),%rax        # 8bdff8 <__gmon_start__>
  40100f:	48 85 c0             	test   %rax,%rax
  401012:	74 02                	je     401016 <_init+0x16>
  401014:	ff d0                	callq  *%rax
  401016:	48 83 c4 08          	add    $0x8,%rsp
  40101a:	c3                   	retq   

Disassembly of section .plt:

0000000000401020 <.plt>:
  401020:	ff 35 e2 cf 4b 00    	pushq  0x4bcfe2(%rip)        # 8be008 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	ff 25 e4 cf 4b 00    	jmpq   *0x4bcfe4(%rip)        # 8be010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401030 <free@plt>:
  401030:	ff 25 e2 cf 4b 00    	jmpq   *0x4bcfe2(%rip)        # 8be018 <free@GLIBC_2.2.5>
  401036:	68 00 00 00 00       	pushq  $0x0
  40103b:	e9 e0 ff ff ff       	jmpq   401020 <.plt>

0000000000401040 <abort@plt>:
  401040:	ff 25 da cf 4b 00    	jmpq   *0x4bcfda(%rip)        # 8be020 <abort@GLIBC_2.2.5>
  401046:	68 01 00 00 00       	pushq  $0x1
  40104b:	e9 d0 ff ff ff       	jmpq   401020 <.plt>

0000000000401050 <strcpy@plt>:
  401050:	ff 25 d2 cf 4b 00    	jmpq   *0x4bcfd2(%rip)        # 8be028 <strcpy@GLIBC_2.2.5>
  401056:	68 02 00 00 00       	pushq  $0x2
  40105b:	e9 c0 ff ff ff       	jmpq   401020 <.plt>

0000000000401060 <puts@plt>:
  401060:	ff 25 ca cf 4b 00    	jmpq   *0x4bcfca(%rip)        # 8be030 <puts@GLIBC_2.2.5>
  401066:	68 03 00 00 00       	pushq  $0x3
  40106b:	e9 b0 ff ff ff       	jmpq   401020 <.plt>

0000000000401070 <strlen@plt>:
  401070:	ff 25 c2 cf 4b 00    	jmpq   *0x4bcfc2(%rip)        # 8be038 <strlen@GLIBC_2.2.5>
  401076:	68 04 00 00 00       	pushq  $0x4
  40107b:	e9 a0 ff ff ff       	jmpq   401020 <.plt>

0000000000401080 <printf@plt>:
  401080:	ff 25 ba cf 4b 00    	jmpq   *0x4bcfba(%rip)        # 8be040 <printf@GLIBC_2.2.5>
  401086:	68 05 00 00 00       	pushq  $0x5
  40108b:	e9 90 ff ff ff       	jmpq   401020 <.plt>

0000000000401090 <__assert_fail@plt>:
  401090:	ff 25 b2 cf 4b 00    	jmpq   *0x4bcfb2(%rip)        # 8be048 <__assert_fail@GLIBC_2.2.5>
  401096:	68 06 00 00 00       	pushq  $0x6
  40109b:	e9 80 ff ff ff       	jmpq   401020 <.plt>

00000000004010a0 <memset@plt>:
  4010a0:	ff 25 aa cf 4b 00    	jmpq   *0x4bcfaa(%rip)        # 8be050 <memset@GLIBC_2.2.5>
  4010a6:	68 07 00 00 00       	pushq  $0x7
  4010ab:	e9 70 ff ff ff       	jmpq   401020 <.plt>

00000000004010b0 <fputc@plt>:
  4010b0:	ff 25 a2 cf 4b 00    	jmpq   *0x4bcfa2(%rip)        # 8be058 <fputc@GLIBC_2.2.5>
  4010b6:	68 08 00 00 00       	pushq  $0x8
  4010bb:	e9 60 ff ff ff       	jmpq   401020 <.plt>

00000000004010c0 <memchr@plt>:
  4010c0:	ff 25 9a cf 4b 00    	jmpq   *0x4bcf9a(%rip)        # 8be060 <memchr@GLIBC_2.2.5>
  4010c6:	68 09 00 00 00       	pushq  $0x9
  4010cb:	e9 50 ff ff ff       	jmpq   401020 <.plt>

00000000004010d0 <memcmp@plt>:
  4010d0:	ff 25 92 cf 4b 00    	jmpq   *0x4bcf92(%rip)        # 8be068 <memcmp@GLIBC_2.2.5>
  4010d6:	68 0a 00 00 00       	pushq  $0xa
  4010db:	e9 40 ff ff ff       	jmpq   401020 <.plt>

00000000004010e0 <strcmp@plt>:
  4010e0:	ff 25 8a cf 4b 00    	jmpq   *0x4bcf8a(%rip)        # 8be070 <strcmp@GLIBC_2.2.5>
  4010e6:	68 0b 00 00 00       	pushq  $0xb
  4010eb:	e9 30 ff ff ff       	jmpq   401020 <.plt>

00000000004010f0 <fprintf@plt>:
  4010f0:	ff 25 82 cf 4b 00    	jmpq   *0x4bcf82(%rip)        # 8be078 <fprintf@GLIBC_2.2.5>
  4010f6:	68 0c 00 00 00       	pushq  $0xc
  4010fb:	e9 20 ff ff ff       	jmpq   401020 <.plt>

0000000000401100 <memcpy@plt>:
  401100:	ff 25 7a cf 4b 00    	jmpq   *0x4bcf7a(%rip)        # 8be080 <memcpy@GLIBC_2.14>
  401106:	68 0d 00 00 00       	pushq  $0xd
  40110b:	e9 10 ff ff ff       	jmpq   401020 <.plt>

0000000000401110 <malloc@plt>:
  401110:	ff 25 72 cf 4b 00    	jmpq   *0x4bcf72(%rip)        # 8be088 <malloc@GLIBC_2.2.5>
  401116:	68 0e 00 00 00       	pushq  $0xe
  40111b:	e9 00 ff ff ff       	jmpq   401020 <.plt>

0000000000401120 <fflush@plt>:
  401120:	ff 25 6a cf 4b 00    	jmpq   *0x4bcf6a(%rip)        # 8be090 <fflush@GLIBC_2.2.5>
  401126:	68 0f 00 00 00       	pushq  $0xf
  40112b:	e9 f0 fe ff ff       	jmpq   401020 <.plt>

0000000000401130 <strcat@plt>:
  401130:	ff 25 62 cf 4b 00    	jmpq   *0x4bcf62(%rip)        # 8be098 <strcat@GLIBC_2.2.5>
  401136:	68 10 00 00 00       	pushq  $0x10
  40113b:	e9 e0 fe ff ff       	jmpq   401020 <.plt>

0000000000401140 <sprintf@plt>:
  401140:	ff 25 5a cf 4b 00    	jmpq   *0x4bcf5a(%rip)        # 8be0a0 <sprintf@GLIBC_2.2.5>
  401146:	68 11 00 00 00       	pushq  $0x11
  40114b:	e9 d0 fe ff ff       	jmpq   401020 <.plt>

0000000000401150 <exit@plt>:
  401150:	ff 25 52 cf 4b 00    	jmpq   *0x4bcf52(%rip)        # 8be0a8 <exit@GLIBC_2.2.5>
  401156:	68 12 00 00 00       	pushq  $0x12
  40115b:	e9 c0 fe ff ff       	jmpq   401020 <.plt>

Disassembly of section .text:

0000000000401160 <_start>:
  401160:	f3 0f 1e fa          	endbr64 
  401164:	31 ed                	xor    %ebp,%ebp
  401166:	49 89 d1             	mov    %rdx,%r9
  401169:	5e                   	pop    %rsi
  40116a:	48 89 e2             	mov    %rsp,%rdx
  40116d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  401171:	50                   	push   %rax
  401172:	54                   	push   %rsp
  401173:	49 c7 c0 c0 eb 40 00 	mov    $0x40ebc0,%r8
  40117a:	48 c7 c1 50 eb 40 00 	mov    $0x40eb50,%rcx
  401181:	48 c7 c7 c0 e0 40 00 	mov    $0x40e0c0,%rdi
  401188:	ff 15 62 ce 4b 00    	callq  *0x4bce62(%rip)        # 8bdff0 <__libc_start_main@GLIBC_2.2.5>
  40118e:	f4                   	hlt    
  40118f:	90                   	nop

0000000000401190 <_dl_relocate_static_pie>:
  401190:	f3 0f 1e fa          	endbr64 
  401194:	c3                   	retq   
  401195:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40119c:	00 00 00 
  40119f:	90                   	nop

00000000004011a0 <deregister_tm_clones>:
  4011a0:	b8 08 b7 8c 00       	mov    $0x8cb708,%eax
  4011a5:	48 3d 08 b7 8c 00    	cmp    $0x8cb708,%rax
  4011ab:	74 13                	je     4011c0 <deregister_tm_clones+0x20>
  4011ad:	b8 00 00 00 00       	mov    $0x0,%eax
  4011b2:	48 85 c0             	test   %rax,%rax
  4011b5:	74 09                	je     4011c0 <deregister_tm_clones+0x20>
  4011b7:	bf 08 b7 8c 00       	mov    $0x8cb708,%edi
  4011bc:	ff e0                	jmpq   *%rax
  4011be:	66 90                	xchg   %ax,%ax
  4011c0:	c3                   	retq   
  4011c1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4011c8:	00 00 00 00 
  4011cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004011d0 <register_tm_clones>:
  4011d0:	be 08 b7 8c 00       	mov    $0x8cb708,%esi
  4011d5:	48 81 ee 08 b7 8c 00 	sub    $0x8cb708,%rsi
  4011dc:	48 89 f0             	mov    %rsi,%rax
  4011df:	48 c1 ee 3f          	shr    $0x3f,%rsi
  4011e3:	48 c1 f8 03          	sar    $0x3,%rax
  4011e7:	48 01 c6             	add    %rax,%rsi
  4011ea:	48 d1 fe             	sar    %rsi
  4011ed:	74 11                	je     401200 <register_tm_clones+0x30>
  4011ef:	b8 00 00 00 00       	mov    $0x0,%eax
  4011f4:	48 85 c0             	test   %rax,%rax
  4011f7:	74 07                	je     401200 <register_tm_clones+0x30>
  4011f9:	bf 08 b7 8c 00       	mov    $0x8cb708,%edi
  4011fe:	ff e0                	jmpq   *%rax
  401200:	c3                   	retq   
  401201:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401208:	00 00 00 00 
  40120c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401210 <__do_global_dtors_aux>:
  401210:	f3 0f 1e fa          	endbr64 
  401214:	80 3d 2d a5 4c 00 00 	cmpb   $0x0,0x4ca52d(%rip)        # 8cb748 <completed.8061>
  40121b:	75 13                	jne    401230 <__do_global_dtors_aux+0x20>
  40121d:	55                   	push   %rbp
  40121e:	48 89 e5             	mov    %rsp,%rbp
  401221:	e8 7a ff ff ff       	callq  4011a0 <deregister_tm_clones>
  401226:	c6 05 1b a5 4c 00 01 	movb   $0x1,0x4ca51b(%rip)        # 8cb748 <completed.8061>
  40122d:	5d                   	pop    %rbp
  40122e:	c3                   	retq   
  40122f:	90                   	nop
  401230:	c3                   	retq   
  401231:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401238:	00 00 00 00 
  40123c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401240 <frame_dummy>:
  401240:	f3 0f 1e fa          	endbr64 
  401244:	eb 8a                	jmp    4011d0 <register_tm_clones>
  401246:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40124d:	00 00 00 

0000000000401250 <http_parser_execute>:
  401250:	55                   	push   %rbp
  401251:	48 89 e5             	mov    %rsp,%rbp
  401254:	48 81 ec d0 01 00 00 	sub    $0x1d0,%rsp
  40125b:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
  40125f:	48 89 75 e8          	mov    %rsi,-0x18(%rbp)
  401263:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
  401267:	48 89 4d d8          	mov    %rcx,-0x28(%rbp)
  40126b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40126f:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  401273:	48 c7 45 c0 00 00 00 	movq   $0x0,-0x40(%rbp)
  40127a:	00 
  40127b:	48 c7 45 b8 00 00 00 	movq   $0x0,-0x48(%rbp)
  401282:	00 
  401283:	48 c7 45 b0 00 00 00 	movq   $0x0,-0x50(%rbp)
  40128a:	00 
  40128b:	48 c7 45 a8 00 00 00 	movq   $0x0,-0x58(%rbp)
  401292:	00 
  401293:	48 c7 45 a0 00 00 00 	movq   $0x0,-0x60(%rbp)
  40129a:	00 
  40129b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40129f:	8b 00                	mov    (%rax),%eax
  4012a1:	c1 e8 0a             	shr    $0xa,%eax
  4012a4:	83 e0 7f             	and    $0x7f,%eax
  4012a7:	89 45 9c             	mov    %eax,-0x64(%rbp)
  4012aa:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4012ae:	8b 00                	mov    (%rax),%eax
  4012b0:	c1 e8 1f             	shr    $0x1f,%eax
  4012b3:	89 45 98             	mov    %eax,-0x68(%rbp)
  4012b6:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4012ba:	8b 00                	mov    (%rax),%eax
  4012bc:	c1 e8 1e             	shr    $0x1e,%eax
  4012bf:	83 e0 01             	and    $0x1,%eax
  4012c2:	89 45 94             	mov    %eax,-0x6c(%rbp)
  4012c5:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4012c9:	8b 40 04             	mov    0x4(%rax),%eax
  4012cc:	89 45 90             	mov    %eax,-0x70(%rbp)
  4012cf:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4012d3:	8b 40 14             	mov    0x14(%rax),%eax
  4012d6:	c1 e8 18             	shr    $0x18,%eax
  4012d9:	83 e0 7f             	and    $0x7f,%eax
  4012dc:	83 f8 00             	cmp    $0x0,%eax
  4012df:	0f 84 0d 00 00 00    	je     4012f2 <http_parser_execute+0xa2>
  4012e5:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
  4012ec:	00 
  4012ed:	e9 c1 65 00 00       	jmpq   4078b3 <http_parser_execute+0x6663>
  4012f2:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
  4012f7:	0f 85 cf 01 00 00    	jne    4014cc <http_parser_execute+0x27c>
  4012fd:	8b 45 9c             	mov    -0x64(%rbp),%eax
  401300:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%rbp)
  401306:	83 c0 ff             	add    $0xffffffff,%eax
  401309:	83 e8 02             	sub    $0x2,%eax
  40130c:	0f 82 7b 01 00 00    	jb     40148d <http_parser_execute+0x23d>
  401312:	e9 00 00 00 00       	jmpq   401317 <http_parser_execute+0xc7>
  401317:	8b 85 24 ff ff ff    	mov    -0xdc(%rbp),%eax
  40131d:	83 e8 04             	sub    $0x4,%eax
  401320:	0f 84 67 01 00 00    	je     40148d <http_parser_execute+0x23d>
  401326:	e9 00 00 00 00       	jmpq   40132b <http_parser_execute+0xdb>
  40132b:	8b 85 24 ff ff ff    	mov    -0xdc(%rbp),%eax
  401331:	83 e8 12             	sub    $0x12,%eax
  401334:	0f 84 53 01 00 00    	je     40148d <http_parser_execute+0x23d>
  40133a:	e9 00 00 00 00       	jmpq   40133f <http_parser_execute+0xef>
  40133f:	8b 85 24 ff ff ff    	mov    -0xdc(%rbp),%eax
  401345:	83 e8 3f             	sub    $0x3f,%eax
  401348:	0f 85 4c 01 00 00    	jne    40149a <http_parser_execute+0x24a>
  40134e:	e9 00 00 00 00       	jmpq   401353 <http_parser_execute+0x103>
  401353:	e9 00 00 00 00       	jmpq   401358 <http_parser_execute+0x108>
  401358:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40135c:	8b 40 14             	mov    0x14(%rax),%eax
  40135f:	c1 e8 18             	shr    $0x18,%eax
  401362:	83 e0 7f             	and    $0x7f,%eax
  401365:	83 f8 00             	cmp    $0x0,%eax
  401368:	0f 85 05 00 00 00    	jne    401373 <http_parser_execute+0x123>
  40136e:	e9 28 00 00 00       	jmpq   40139b <http_parser_execute+0x14b>
  401373:	48 bf a0 06 41 00 00 	movabs $0x4106a0,%rdi
  40137a:	00 00 00 
  40137d:	48 be c4 06 41 00 00 	movabs $0x4106c4,%rsi
  401384:	00 00 00 
  401387:	ba 9f 02 00 00       	mov    $0x29f,%edx
  40138c:	48 b9 d2 06 41 00 00 	movabs $0x4106d2,%rcx
  401393:	00 00 00 
  401396:	e8 f5 fc ff ff       	callq  401090 <__assert_fail@plt>
  40139b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40139f:	48 83 78 38 00       	cmpq   $0x0,0x38(%rax)
  4013a4:	0f 95 c0             	setne  %al
  4013a7:	34 ff                	xor    $0xff,%al
  4013a9:	34 ff                	xor    $0xff,%al
  4013ab:	24 01                	and    $0x1,%al
  4013ad:	0f b6 c0             	movzbl %al,%eax
  4013b0:	48 98                	cltq   
  4013b2:	48 83 f8 00          	cmp    $0x0,%rax
  4013b6:	0f 84 bf 00 00 00    	je     40147b <http_parser_execute+0x22b>
  4013bc:	8b 55 9c             	mov    -0x64(%rbp),%edx
  4013bf:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4013c3:	8b 08                	mov    (%rax),%ecx
  4013c5:	83 e2 7f             	and    $0x7f,%edx
  4013c8:	c1 e2 0a             	shl    $0xa,%edx
  4013cb:	81 e1 ff 03 fe ff    	and    $0xfffe03ff,%ecx
  4013d1:	09 d1                	or     %edx,%ecx
  4013d3:	89 08                	mov    %ecx,(%rax)
  4013d5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4013d9:	48 8b 40 38          	mov    0x38(%rax),%rax
  4013dd:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  4013e1:	ff d0                	callq  *%rax
  4013e3:	89 c1                	mov    %eax,%ecx
  4013e5:	31 c0                	xor    %eax,%eax
  4013e7:	39 c8                	cmp    %ecx,%eax
  4013e9:	0f 95 c0             	setne  %al
  4013ec:	34 ff                	xor    $0xff,%al
  4013ee:	34 ff                	xor    $0xff,%al
  4013f0:	24 01                	and    $0x1,%al
  4013f2:	0f b6 c0             	movzbl %al,%eax
  4013f5:	48 98                	cltq   
  4013f7:	48 83 f8 00          	cmp    $0x0,%rax
  4013fb:	0f 84 2a 00 00 00    	je     40142b <http_parser_execute+0x1db>
  401401:	e9 00 00 00 00       	jmpq   401406 <http_parser_execute+0x1b6>
  401406:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  401409:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40140d:	89 48 04             	mov    %ecx,0x4(%rax)
  401410:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401414:	8b 48 14             	mov    0x14(%rax),%ecx
  401417:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  40141d:	81 c9 00 00 00 07    	or     $0x7000000,%ecx
  401423:	89 48 14             	mov    %ecx,0x14(%rax)
  401426:	e9 00 00 00 00       	jmpq   40142b <http_parser_execute+0x1db>
  40142b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40142f:	8b 00                	mov    (%rax),%eax
  401431:	c1 e8 0a             	shr    $0xa,%eax
  401434:	83 e0 7f             	and    $0x7f,%eax
  401437:	89 45 9c             	mov    %eax,-0x64(%rbp)
  40143a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40143e:	8b 40 14             	mov    0x14(%rax),%eax
  401441:	c1 e8 18             	shr    $0x18,%eax
  401444:	83 e0 7f             	and    $0x7f,%eax
  401447:	83 f8 00             	cmp    $0x0,%eax
  40144a:	0f 95 c0             	setne  %al
  40144d:	34 ff                	xor    $0xff,%al
  40144f:	34 ff                	xor    $0xff,%al
  401451:	24 01                	and    $0x1,%al
  401453:	0f b6 c0             	movzbl %al,%eax
  401456:	48 98                	cltq   
  401458:	48 83 f8 00          	cmp    $0x0,%rax
  40145c:	0f 84 14 00 00 00    	je     401476 <http_parser_execute+0x226>
  401462:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  401466:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  40146a:	48 29 c8             	sub    %rcx,%rax
  40146d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401471:	e9 3d 64 00 00       	jmpq   4078b3 <http_parser_execute+0x6663>
  401476:	e9 00 00 00 00       	jmpq   40147b <http_parser_execute+0x22b>
  40147b:	e9 00 00 00 00       	jmpq   401480 <http_parser_execute+0x230>
  401480:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
  401487:	00 
  401488:	e9 26 64 00 00       	jmpq   4078b3 <http_parser_execute+0x6663>
  40148d:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
  401494:	00 
  401495:	e9 19 64 00 00       	jmpq   4078b3 <http_parser_execute+0x6663>
  40149a:	e9 00 00 00 00       	jmpq   40149f <http_parser_execute+0x24f>
  40149f:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  4014a2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4014a6:	89 48 04             	mov    %ecx,0x4(%rax)
  4014a9:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4014ad:	8b 48 14             	mov    0x14(%rax),%ecx
  4014b0:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  4014b6:	81 c9 00 00 00 0b    	or     $0xb000000,%ecx
  4014bc:	89 48 14             	mov    %ecx,0x14(%rax)
  4014bf:	48 c7 45 f8 01 00 00 	movq   $0x1,-0x8(%rbp)
  4014c6:	00 
  4014c7:	e9 e7 63 00 00       	jmpq   4078b3 <http_parser_execute+0x6663>
  4014cc:	83 7d 9c 2d          	cmpl   $0x2d,-0x64(%rbp)
  4014d0:	0f 85 08 00 00 00    	jne    4014de <http_parser_execute+0x28e>
  4014d6:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4014da:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  4014de:	83 7d 9c 32          	cmpl   $0x32,-0x64(%rbp)
  4014e2:	0f 85 08 00 00 00    	jne    4014f0 <http_parser_execute+0x2a0>
  4014e8:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4014ec:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
  4014f0:	8b 45 9c             	mov    -0x64(%rbp),%eax
  4014f3:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%rbp)
  4014f9:	83 e8 10             	sub    $0x10,%eax
  4014fc:	0f 84 29 00 00 00    	je     40152b <http_parser_execute+0x2db>
  401502:	e9 00 00 00 00       	jmpq   401507 <http_parser_execute+0x2b7>
  401507:	8b 85 20 ff ff ff    	mov    -0xe0(%rbp),%eax
  40150d:	83 c0 eb             	add    $0xffffffeb,%eax
  401510:	83 e8 0a             	sub    $0xa,%eax
  401513:	0f 87 1f 00 00 00    	ja     401538 <http_parser_execute+0x2e8>
  401519:	e9 00 00 00 00       	jmpq   40151e <http_parser_execute+0x2ce>
  40151e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  401522:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  401526:	e9 12 00 00 00       	jmpq   40153d <http_parser_execute+0x2ed>
  40152b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40152f:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
  401533:	e9 05 00 00 00       	jmpq   40153d <http_parser_execute+0x2ed>
  401538:	e9 00 00 00 00       	jmpq   40153d <http_parser_execute+0x2ed>
  40153d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  401541:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  401545:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  401549:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  40154d:	48 03 4d d8          	add    -0x28(%rbp),%rcx
  401551:	48 39 c8             	cmp    %rcx,%rax
  401554:	0f 84 8a 5b 00 00    	je     4070e4 <http_parser_execute+0x5e94>
  40155a:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  40155e:	8a 00                	mov    (%rax),%al
  401560:	88 45 d6             	mov    %al,-0x2a(%rbp)
  401563:	83 7d 9c 3a          	cmpl   $0x3a,-0x64(%rbp)
  401567:	0f 87 64 00 00 00    	ja     4015d1 <http_parser_execute+0x381>
  40156d:	e9 00 00 00 00       	jmpq   401572 <http_parser_execute+0x322>
  401572:	8b 45 90             	mov    -0x70(%rbp),%eax
  401575:	83 c0 01             	add    $0x1,%eax
  401578:	89 45 90             	mov    %eax,-0x70(%rbp)
  40157b:	8b 45 90             	mov    -0x70(%rbp),%eax
  40157e:	3b 04 25 c0 e0 8b 00 	cmp    0x8be0c0,%eax
  401585:	0f 97 c0             	seta   %al
  401588:	34 ff                	xor    $0xff,%al
  40158a:	34 ff                	xor    $0xff,%al
  40158c:	24 01                	and    $0x1,%al
  40158e:	0f b6 c0             	movzbl %al,%eax
  401591:	48 98                	cltq   
  401593:	48 83 f8 00          	cmp    $0x0,%rax
  401597:	0f 84 2a 00 00 00    	je     4015c7 <http_parser_execute+0x377>
  40159d:	e9 00 00 00 00       	jmpq   4015a2 <http_parser_execute+0x352>
  4015a2:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  4015a5:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4015a9:	89 48 04             	mov    %ecx,0x4(%rax)
  4015ac:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4015b0:	8b 48 14             	mov    0x14(%rax),%ecx
  4015b3:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  4015b9:	81 c9 00 00 00 0c    	or     $0xc000000,%ecx
  4015bf:	89 48 14             	mov    %ecx,0x14(%rax)
  4015c2:	e9 75 62 00 00       	jmpq   40783c <http_parser_execute+0x65ec>
  4015c7:	e9 00 00 00 00       	jmpq   4015cc <http_parser_execute+0x37c>
  4015cc:	e9 00 00 00 00       	jmpq   4015d1 <http_parser_execute+0x381>
  4015d1:	e9 00 00 00 00       	jmpq   4015d6 <http_parser_execute+0x386>
  4015d6:	8b 45 9c             	mov    -0x64(%rbp),%eax
  4015d9:	83 c0 ff             	add    $0xffffffff,%eax
  4015dc:	89 c1                	mov    %eax,%ecx
  4015de:	48 89 8d 18 ff ff ff 	mov    %rcx,-0xe8(%rbp)
  4015e5:	83 e8 3f             	sub    $0x3f,%eax
  4015e8:	0f 87 b8 5a 00 00    	ja     4070a6 <http_parser_execute+0x5e56>
  4015ee:	48 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%rax
  4015f5:	48 8b 04 c5 10 f0 40 	mov    0x40f010(,%rax,8),%rax
  4015fc:	00 
  4015fd:	ff e0                	jmpq   *%rax
  4015ff:	0f be 4d d6          	movsbl -0x2a(%rbp),%ecx
  401603:	b0 01                	mov    $0x1,%al
  401605:	83 f9 0d             	cmp    $0xd,%ecx
  401608:	88 85 17 ff ff ff    	mov    %al,-0xe9(%rbp)
  40160e:	0f 84 10 00 00 00    	je     401624 <http_parser_execute+0x3d4>
  401614:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  401618:	83 f8 0a             	cmp    $0xa,%eax
  40161b:	0f 94 c0             	sete   %al
  40161e:	88 85 17 ff ff ff    	mov    %al,-0xe9(%rbp)
  401624:	8a 85 17 ff ff ff    	mov    -0xe9(%rbp),%al
  40162a:	34 ff                	xor    $0xff,%al
  40162c:	34 ff                	xor    $0xff,%al
  40162e:	24 01                	and    $0x1,%al
  401630:	0f b6 c0             	movzbl %al,%eax
  401633:	48 98                	cltq   
  401635:	48 83 f8 00          	cmp    $0x0,%rax
  401639:	0f 84 05 00 00 00    	je     401644 <http_parser_execute+0x3f4>
  40163f:	e9 8a 5a 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  401644:	e9 00 00 00 00       	jmpq   401649 <http_parser_execute+0x3f9>
  401649:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  40164c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401650:	89 48 04             	mov    %ecx,0x4(%rax)
  401653:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401657:	8b 48 14             	mov    0x14(%rax),%ecx
  40165a:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  401660:	81 c9 00 00 00 0d    	or     $0xd000000,%ecx
  401666:	89 48 14             	mov    %ecx,0x14(%rax)
  401669:	e9 ce 61 00 00       	jmpq   40783c <http_parser_execute+0x65ec>
  40166e:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  401672:	83 f8 0d             	cmp    $0xd,%eax
  401675:	0f 84 0d 00 00 00    	je     401688 <http_parser_execute+0x438>
  40167b:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  40167f:	83 f8 0a             	cmp    $0xa,%eax
  401682:	0f 85 05 00 00 00    	jne    40168d <http_parser_execute+0x43d>
  401688:	e9 41 5a 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  40168d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401691:	8b 08                	mov    (%rax),%ecx
  401693:	81 e1 03 fc ff ff    	and    $0xfffffc03,%ecx
  401699:	83 c9 00             	or     $0x0,%ecx
  40169c:	89 08                	mov    %ecx,(%rax)
  40169e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4016a2:	8b 08                	mov    (%rax),%ecx
  4016a4:	81 e1 ff ff ff df    	and    $0xdfffffff,%ecx
  4016aa:	83 c9 00             	or     $0x0,%ecx
  4016ad:	89 08                	mov    %ecx,(%rax)
  4016af:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4016b3:	48 c7 40 08 ff ff ff 	movq   $0xffffffffffffffff,0x8(%rax)
  4016ba:	ff 
  4016bb:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  4016bf:	83 f8 48             	cmp    $0x48,%eax
  4016c2:	0f 85 36 01 00 00    	jne    4017fe <http_parser_execute+0x5ae>
  4016c8:	c7 45 9c 03 00 00 00 	movl   $0x3,-0x64(%rbp)
  4016cf:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4016d3:	8b 40 14             	mov    0x14(%rax),%eax
  4016d6:	c1 e8 18             	shr    $0x18,%eax
  4016d9:	83 e0 7f             	and    $0x7f,%eax
  4016dc:	83 f8 00             	cmp    $0x0,%eax
  4016df:	0f 85 05 00 00 00    	jne    4016ea <http_parser_execute+0x49a>
  4016e5:	e9 28 00 00 00       	jmpq   401712 <http_parser_execute+0x4c2>
  4016ea:	48 bf a0 06 41 00 00 	movabs $0x4106a0,%rdi
  4016f1:	00 00 00 
  4016f4:	48 be c4 06 41 00 00 	movabs $0x4106c4,%rsi
  4016fb:	00 00 00 
  4016fe:	ba e6 02 00 00       	mov    $0x2e6,%edx
  401703:	48 b9 d2 06 41 00 00 	movabs $0x4106d2,%rcx
  40170a:	00 00 00 
  40170d:	e8 7e f9 ff ff       	callq  401090 <__assert_fail@plt>
  401712:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401716:	48 83 38 00          	cmpq   $0x0,(%rax)
  40171a:	0f 95 c0             	setne  %al
  40171d:	34 ff                	xor    $0xff,%al
  40171f:	34 ff                	xor    $0xff,%al
  401721:	24 01                	and    $0x1,%al
  401723:	0f b6 c0             	movzbl %al,%eax
  401726:	48 98                	cltq   
  401728:	48 83 f8 00          	cmp    $0x0,%rax
  40172c:	0f 84 c2 00 00 00    	je     4017f4 <http_parser_execute+0x5a4>
  401732:	8b 55 9c             	mov    -0x64(%rbp),%edx
  401735:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401739:	8b 08                	mov    (%rax),%ecx
  40173b:	83 e2 7f             	and    $0x7f,%edx
  40173e:	c1 e2 0a             	shl    $0xa,%edx
  401741:	81 e1 ff 03 fe ff    	and    $0xfffe03ff,%ecx
  401747:	09 d1                	or     %edx,%ecx
  401749:	89 08                	mov    %ecx,(%rax)
  40174b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40174f:	48 8b 00             	mov    (%rax),%rax
  401752:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  401756:	ff d0                	callq  *%rax
  401758:	89 c1                	mov    %eax,%ecx
  40175a:	31 c0                	xor    %eax,%eax
  40175c:	39 c8                	cmp    %ecx,%eax
  40175e:	0f 95 c0             	setne  %al
  401761:	34 ff                	xor    $0xff,%al
  401763:	34 ff                	xor    $0xff,%al
  401765:	24 01                	and    $0x1,%al
  401767:	0f b6 c0             	movzbl %al,%eax
  40176a:	48 98                	cltq   
  40176c:	48 83 f8 00          	cmp    $0x0,%rax
  401770:	0f 84 2a 00 00 00    	je     4017a0 <http_parser_execute+0x550>
  401776:	e9 00 00 00 00       	jmpq   40177b <http_parser_execute+0x52b>
  40177b:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  40177e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401782:	89 48 04             	mov    %ecx,0x4(%rax)
  401785:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401789:	8b 48 14             	mov    0x14(%rax),%ecx
  40178c:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  401792:	81 c9 00 00 00 01    	or     $0x1000000,%ecx
  401798:	89 48 14             	mov    %ecx,0x14(%rax)
  40179b:	e9 00 00 00 00       	jmpq   4017a0 <http_parser_execute+0x550>
  4017a0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4017a4:	8b 00                	mov    (%rax),%eax
  4017a6:	c1 e8 0a             	shr    $0xa,%eax
  4017a9:	83 e0 7f             	and    $0x7f,%eax
  4017ac:	89 45 9c             	mov    %eax,-0x64(%rbp)
  4017af:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4017b3:	8b 40 14             	mov    0x14(%rax),%eax
  4017b6:	c1 e8 18             	shr    $0x18,%eax
  4017b9:	83 e0 7f             	and    $0x7f,%eax
  4017bc:	83 f8 00             	cmp    $0x0,%eax
  4017bf:	0f 95 c0             	setne  %al
  4017c2:	34 ff                	xor    $0xff,%al
  4017c4:	34 ff                	xor    $0xff,%al
  4017c6:	24 01                	and    $0x1,%al
  4017c8:	0f b6 c0             	movzbl %al,%eax
  4017cb:	48 98                	cltq   
  4017cd:	48 83 f8 00          	cmp    $0x0,%rax
  4017d1:	0f 84 18 00 00 00    	je     4017ef <http_parser_execute+0x59f>
  4017d7:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  4017db:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  4017df:	48 29 c8             	sub    %rcx,%rax
  4017e2:	48 83 c0 01          	add    $0x1,%rax
  4017e6:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4017ea:	e9 c4 60 00 00       	jmpq   4078b3 <http_parser_execute+0x6663>
  4017ef:	e9 00 00 00 00       	jmpq   4017f4 <http_parser_execute+0x5a4>
  4017f4:	e9 00 00 00 00       	jmpq   4017f9 <http_parser_execute+0x5a9>
  4017f9:	e9 1a 00 00 00       	jmpq   401818 <http_parser_execute+0x5c8>
  4017fe:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401802:	8b 08                	mov    (%rax),%ecx
  401804:	83 e1 fc             	and    $0xfffffffc,%ecx
  401807:	83 c9 00             	or     $0x0,%ecx
  40180a:	89 08                	mov    %ecx,(%rax)
  40180c:	c7 45 9c 12 00 00 00 	movl   $0x12,-0x64(%rbp)
  401813:	e9 be fd ff ff       	jmpq   4015d6 <http_parser_execute+0x386>
  401818:	e9 b1 58 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  40181d:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  401821:	83 f8 54             	cmp    $0x54,%eax
  401824:	0f 85 1a 00 00 00    	jne    401844 <http_parser_execute+0x5f4>
  40182a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40182e:	8b 08                	mov    (%rax),%ecx
  401830:	83 e1 fc             	and    $0xfffffffc,%ecx
  401833:	83 c9 01             	or     $0x1,%ecx
  401836:	89 08                	mov    %ecx,(%rax)
  401838:	c7 45 9c 06 00 00 00 	movl   $0x6,-0x64(%rbp)
  40183f:	e9 88 00 00 00       	jmpq   4018cc <http_parser_execute+0x67c>
  401844:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  401848:	83 f8 45             	cmp    $0x45,%eax
  40184b:	0f 95 c0             	setne  %al
  40184e:	34 ff                	xor    $0xff,%al
  401850:	34 ff                	xor    $0xff,%al
  401852:	24 01                	and    $0x1,%al
  401854:	0f b6 c0             	movzbl %al,%eax
  401857:	48 98                	cltq   
  401859:	48 83 f8 00          	cmp    $0x0,%rax
  40185d:	0f 84 2a 00 00 00    	je     40188d <http_parser_execute+0x63d>
  401863:	e9 00 00 00 00       	jmpq   401868 <http_parser_execute+0x618>
  401868:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  40186b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40186f:	89 48 04             	mov    %ecx,0x4(%rax)
  401872:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401876:	8b 48 14             	mov    0x14(%rax),%ecx
  401879:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  40187f:	81 c9 00 00 00 1c    	or     $0x1c000000,%ecx
  401885:	89 48 14             	mov    %ecx,0x14(%rax)
  401888:	e9 af 5f 00 00       	jmpq   40783c <http_parser_execute+0x65ec>
  40188d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401891:	8b 08                	mov    (%rax),%ecx
  401893:	83 e1 fc             	and    $0xfffffffc,%ecx
  401896:	83 c9 00             	or     $0x0,%ecx
  401899:	89 08                	mov    %ecx,(%rax)
  40189b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40189f:	8b 48 14             	mov    0x14(%rax),%ecx
  4018a2:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  4018a8:	81 c9 00 00 02 00    	or     $0x20000,%ecx
  4018ae:	89 48 14             	mov    %ecx,0x14(%rax)
  4018b1:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4018b5:	8b 08                	mov    (%rax),%ecx
  4018b7:	81 e1 ff ff ff e0    	and    $0xe0ffffff,%ecx
  4018bd:	81 c9 00 00 00 02    	or     $0x2000000,%ecx
  4018c3:	89 08                	mov    %ecx,(%rax)
  4018c5:	c7 45 9c 13 00 00 00 	movl   $0x13,-0x64(%rbp)
  4018cc:	e9 fd 57 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  4018d1:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  4018d5:	83 f8 0d             	cmp    $0xd,%eax
  4018d8:	0f 84 0d 00 00 00    	je     4018eb <http_parser_execute+0x69b>
  4018de:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  4018e2:	83 f8 0a             	cmp    $0xa,%eax
  4018e5:	0f 85 05 00 00 00    	jne    4018f0 <http_parser_execute+0x6a0>
  4018eb:	e9 de 57 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  4018f0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4018f4:	8b 08                	mov    (%rax),%ecx
  4018f6:	81 e1 03 fc ff ff    	and    $0xfffffc03,%ecx
  4018fc:	83 c9 00             	or     $0x0,%ecx
  4018ff:	89 08                	mov    %ecx,(%rax)
  401901:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401905:	8b 08                	mov    (%rax),%ecx
  401907:	81 e1 ff ff ff df    	and    $0xdfffffff,%ecx
  40190d:	83 c9 00             	or     $0x0,%ecx
  401910:	89 08                	mov    %ecx,(%rax)
  401912:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401916:	48 c7 40 08 ff ff ff 	movq   $0xffffffffffffffff,0x8(%rax)
  40191d:	ff 
  40191e:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  401922:	83 f8 48             	cmp    $0x48,%eax
  401925:	0f 85 0c 00 00 00    	jne    401937 <http_parser_execute+0x6e7>
  40192b:	c7 45 9c 05 00 00 00 	movl   $0x5,-0x64(%rbp)
  401932:	e9 2a 00 00 00       	jmpq   401961 <http_parser_execute+0x711>
  401937:	e9 00 00 00 00       	jmpq   40193c <http_parser_execute+0x6ec>
  40193c:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  40193f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401943:	89 48 04             	mov    %ecx,0x4(%rax)
  401946:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40194a:	8b 48 14             	mov    0x14(%rax),%ecx
  40194d:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  401953:	81 c9 00 00 00 1c    	or     $0x1c000000,%ecx
  401959:	89 48 14             	mov    %ecx,0x14(%rax)
  40195c:	e9 db 5e 00 00       	jmpq   40783c <http_parser_execute+0x65ec>
  401961:	e9 00 00 00 00       	jmpq   401966 <http_parser_execute+0x716>
  401966:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40196a:	8b 40 14             	mov    0x14(%rax),%eax
  40196d:	c1 e8 18             	shr    $0x18,%eax
  401970:	83 e0 7f             	and    $0x7f,%eax
  401973:	83 f8 00             	cmp    $0x0,%eax
  401976:	0f 85 05 00 00 00    	jne    401981 <http_parser_execute+0x731>
  40197c:	e9 28 00 00 00       	jmpq   4019a9 <http_parser_execute+0x759>
  401981:	48 bf a0 06 41 00 00 	movabs $0x4106a0,%rdi
  401988:	00 00 00 
  40198b:	48 be c4 06 41 00 00 	movabs $0x4106c4,%rsi
  401992:	00 00 00 
  401995:	ba 10 03 00 00       	mov    $0x310,%edx
  40199a:	48 b9 d2 06 41 00 00 	movabs $0x4106d2,%rcx
  4019a1:	00 00 00 
  4019a4:	e8 e7 f6 ff ff       	callq  401090 <__assert_fail@plt>
  4019a9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4019ad:	48 83 38 00          	cmpq   $0x0,(%rax)
  4019b1:	0f 95 c0             	setne  %al
  4019b4:	34 ff                	xor    $0xff,%al
  4019b6:	34 ff                	xor    $0xff,%al
  4019b8:	24 01                	and    $0x1,%al
  4019ba:	0f b6 c0             	movzbl %al,%eax
  4019bd:	48 98                	cltq   
  4019bf:	48 83 f8 00          	cmp    $0x0,%rax
  4019c3:	0f 84 c2 00 00 00    	je     401a8b <http_parser_execute+0x83b>
  4019c9:	8b 55 9c             	mov    -0x64(%rbp),%edx
  4019cc:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4019d0:	8b 08                	mov    (%rax),%ecx
  4019d2:	83 e2 7f             	and    $0x7f,%edx
  4019d5:	c1 e2 0a             	shl    $0xa,%edx
  4019d8:	81 e1 ff 03 fe ff    	and    $0xfffe03ff,%ecx
  4019de:	09 d1                	or     %edx,%ecx
  4019e0:	89 08                	mov    %ecx,(%rax)
  4019e2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4019e6:	48 8b 00             	mov    (%rax),%rax
  4019e9:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  4019ed:	ff d0                	callq  *%rax
  4019ef:	89 c1                	mov    %eax,%ecx
  4019f1:	31 c0                	xor    %eax,%eax
  4019f3:	39 c8                	cmp    %ecx,%eax
  4019f5:	0f 95 c0             	setne  %al
  4019f8:	34 ff                	xor    $0xff,%al
  4019fa:	34 ff                	xor    $0xff,%al
  4019fc:	24 01                	and    $0x1,%al
  4019fe:	0f b6 c0             	movzbl %al,%eax
  401a01:	48 98                	cltq   
  401a03:	48 83 f8 00          	cmp    $0x0,%rax
  401a07:	0f 84 2a 00 00 00    	je     401a37 <http_parser_execute+0x7e7>
  401a0d:	e9 00 00 00 00       	jmpq   401a12 <http_parser_execute+0x7c2>
  401a12:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  401a15:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401a19:	89 48 04             	mov    %ecx,0x4(%rax)
  401a1c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401a20:	8b 48 14             	mov    0x14(%rax),%ecx
  401a23:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  401a29:	81 c9 00 00 00 01    	or     $0x1000000,%ecx
  401a2f:	89 48 14             	mov    %ecx,0x14(%rax)
  401a32:	e9 00 00 00 00       	jmpq   401a37 <http_parser_execute+0x7e7>
  401a37:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401a3b:	8b 00                	mov    (%rax),%eax
  401a3d:	c1 e8 0a             	shr    $0xa,%eax
  401a40:	83 e0 7f             	and    $0x7f,%eax
  401a43:	89 45 9c             	mov    %eax,-0x64(%rbp)
  401a46:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401a4a:	8b 40 14             	mov    0x14(%rax),%eax
  401a4d:	c1 e8 18             	shr    $0x18,%eax
  401a50:	83 e0 7f             	and    $0x7f,%eax
  401a53:	83 f8 00             	cmp    $0x0,%eax
  401a56:	0f 95 c0             	setne  %al
  401a59:	34 ff                	xor    $0xff,%al
  401a5b:	34 ff                	xor    $0xff,%al
  401a5d:	24 01                	and    $0x1,%al
  401a5f:	0f b6 c0             	movzbl %al,%eax
  401a62:	48 98                	cltq   
  401a64:	48 83 f8 00          	cmp    $0x0,%rax
  401a68:	0f 84 18 00 00 00    	je     401a86 <http_parser_execute+0x836>
  401a6e:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  401a72:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  401a76:	48 29 c8             	sub    %rcx,%rax
  401a79:	48 83 c0 01          	add    $0x1,%rax
  401a7d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401a81:	e9 2d 5e 00 00       	jmpq   4078b3 <http_parser_execute+0x6663>
  401a86:	e9 00 00 00 00       	jmpq   401a8b <http_parser_execute+0x83b>
  401a8b:	e9 00 00 00 00       	jmpq   401a90 <http_parser_execute+0x840>
  401a90:	e9 39 56 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  401a95:	e9 00 00 00 00       	jmpq   401a9a <http_parser_execute+0x84a>
  401a9a:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  401a9e:	83 f8 54             	cmp    $0x54,%eax
  401aa1:	0f 84 2a 00 00 00    	je     401ad1 <http_parser_execute+0x881>
  401aa7:	e9 00 00 00 00       	jmpq   401aac <http_parser_execute+0x85c>
  401aac:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  401aaf:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401ab3:	89 48 04             	mov    %ecx,0x4(%rax)
  401ab6:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401aba:	8b 48 14             	mov    0x14(%rax),%ecx
  401abd:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  401ac3:	81 c9 00 00 00 1e    	or     $0x1e000000,%ecx
  401ac9:	89 48 14             	mov    %ecx,0x14(%rax)
  401acc:	e9 6b 5d 00 00       	jmpq   40783c <http_parser_execute+0x65ec>
  401ad1:	e9 00 00 00 00       	jmpq   401ad6 <http_parser_execute+0x886>
  401ad6:	c7 45 9c 06 00 00 00 	movl   $0x6,-0x64(%rbp)
  401add:	e9 ec 55 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  401ae2:	e9 00 00 00 00       	jmpq   401ae7 <http_parser_execute+0x897>
  401ae7:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  401aeb:	83 f8 54             	cmp    $0x54,%eax
  401aee:	0f 84 2a 00 00 00    	je     401b1e <http_parser_execute+0x8ce>
  401af4:	e9 00 00 00 00       	jmpq   401af9 <http_parser_execute+0x8a9>
  401af9:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  401afc:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401b00:	89 48 04             	mov    %ecx,0x4(%rax)
  401b03:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401b07:	8b 48 14             	mov    0x14(%rax),%ecx
  401b0a:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  401b10:	81 c9 00 00 00 1e    	or     $0x1e000000,%ecx
  401b16:	89 48 14             	mov    %ecx,0x14(%rax)
  401b19:	e9 1e 5d 00 00       	jmpq   40783c <http_parser_execute+0x65ec>
  401b1e:	e9 00 00 00 00       	jmpq   401b23 <http_parser_execute+0x8d3>
  401b23:	c7 45 9c 07 00 00 00 	movl   $0x7,-0x64(%rbp)
  401b2a:	e9 9f 55 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  401b2f:	e9 00 00 00 00       	jmpq   401b34 <http_parser_execute+0x8e4>
  401b34:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  401b38:	83 f8 50             	cmp    $0x50,%eax
  401b3b:	0f 84 2a 00 00 00    	je     401b6b <http_parser_execute+0x91b>
  401b41:	e9 00 00 00 00       	jmpq   401b46 <http_parser_execute+0x8f6>
  401b46:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  401b49:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401b4d:	89 48 04             	mov    %ecx,0x4(%rax)
  401b50:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401b54:	8b 48 14             	mov    0x14(%rax),%ecx
  401b57:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  401b5d:	81 c9 00 00 00 1e    	or     $0x1e000000,%ecx
  401b63:	89 48 14             	mov    %ecx,0x14(%rax)
  401b66:	e9 d1 5c 00 00       	jmpq   40783c <http_parser_execute+0x65ec>
  401b6b:	e9 00 00 00 00       	jmpq   401b70 <http_parser_execute+0x920>
  401b70:	c7 45 9c 08 00 00 00 	movl   $0x8,-0x64(%rbp)
  401b77:	e9 52 55 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  401b7c:	e9 00 00 00 00       	jmpq   401b81 <http_parser_execute+0x931>
  401b81:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  401b85:	83 f8 2f             	cmp    $0x2f,%eax
  401b88:	0f 84 2a 00 00 00    	je     401bb8 <http_parser_execute+0x968>
  401b8e:	e9 00 00 00 00       	jmpq   401b93 <http_parser_execute+0x943>
  401b93:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  401b96:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401b9a:	89 48 04             	mov    %ecx,0x4(%rax)
  401b9d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401ba1:	8b 48 14             	mov    0x14(%rax),%ecx
  401ba4:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  401baa:	81 c9 00 00 00 1e    	or     $0x1e000000,%ecx
  401bb0:	89 48 14             	mov    %ecx,0x14(%rax)
  401bb3:	e9 84 5c 00 00       	jmpq   40783c <http_parser_execute+0x65ec>
  401bb8:	e9 00 00 00 00       	jmpq   401bbd <http_parser_execute+0x96d>
  401bbd:	c7 45 9c 09 00 00 00 	movl   $0x9,-0x64(%rbp)
  401bc4:	e9 05 55 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  401bc9:	0f be 4d d6          	movsbl -0x2a(%rbp),%ecx
  401bcd:	31 c0                	xor    %eax,%eax
  401bcf:	83 f9 30             	cmp    $0x30,%ecx
  401bd2:	88 85 16 ff ff ff    	mov    %al,-0xea(%rbp)
  401bd8:	0f 8c 10 00 00 00    	jl     401bee <http_parser_execute+0x99e>
  401bde:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  401be2:	83 f8 39             	cmp    $0x39,%eax
  401be5:	0f 9e c0             	setle  %al
  401be8:	88 85 16 ff ff ff    	mov    %al,-0xea(%rbp)
  401bee:	8a 85 16 ff ff ff    	mov    -0xea(%rbp),%al
  401bf4:	34 ff                	xor    $0xff,%al
  401bf6:	34 ff                	xor    $0xff,%al
  401bf8:	34 ff                	xor    $0xff,%al
  401bfa:	24 01                	and    $0x1,%al
  401bfc:	0f b6 c0             	movzbl %al,%eax
  401bff:	48 98                	cltq   
  401c01:	48 83 f8 00          	cmp    $0x0,%rax
  401c05:	0f 84 2a 00 00 00    	je     401c35 <http_parser_execute+0x9e5>
  401c0b:	e9 00 00 00 00       	jmpq   401c10 <http_parser_execute+0x9c0>
  401c10:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  401c13:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401c17:	89 48 04             	mov    %ecx,0x4(%rax)
  401c1a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401c1e:	8b 48 14             	mov    0x14(%rax),%ecx
  401c21:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  401c27:	81 c9 00 00 00 0e    	or     $0xe000000,%ecx
  401c2d:	89 48 14             	mov    %ecx,0x14(%rax)
  401c30:	e9 07 5c 00 00       	jmpq   40783c <http_parser_execute+0x65ec>
  401c35:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  401c39:	83 e8 30             	sub    $0x30,%eax
  401c3c:	66 89 c1             	mov    %ax,%cx
  401c3f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401c43:	66 89 48 10          	mov    %cx,0x10(%rax)
  401c47:	c7 45 9c 0a 00 00 00 	movl   $0xa,-0x64(%rbp)
  401c4e:	e9 7b 54 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  401c53:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  401c57:	83 f8 2e             	cmp    $0x2e,%eax
  401c5a:	0f 95 c0             	setne  %al
  401c5d:	34 ff                	xor    $0xff,%al
  401c5f:	34 ff                	xor    $0xff,%al
  401c61:	24 01                	and    $0x1,%al
  401c63:	0f b6 c0             	movzbl %al,%eax
  401c66:	48 98                	cltq   
  401c68:	48 83 f8 00          	cmp    $0x0,%rax
  401c6c:	0f 84 2a 00 00 00    	je     401c9c <http_parser_execute+0xa4c>
  401c72:	e9 00 00 00 00       	jmpq   401c77 <http_parser_execute+0xa27>
  401c77:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  401c7a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401c7e:	89 48 04             	mov    %ecx,0x4(%rax)
  401c81:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401c85:	8b 48 14             	mov    0x14(%rax),%ecx
  401c88:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  401c8e:	81 c9 00 00 00 0e    	or     $0xe000000,%ecx
  401c94:	89 48 14             	mov    %ecx,0x14(%rax)
  401c97:	e9 a0 5b 00 00       	jmpq   40783c <http_parser_execute+0x65ec>
  401c9c:	c7 45 9c 0b 00 00 00 	movl   $0xb,-0x64(%rbp)
  401ca3:	e9 26 54 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  401ca8:	0f be 4d d6          	movsbl -0x2a(%rbp),%ecx
  401cac:	31 c0                	xor    %eax,%eax
  401cae:	83 f9 30             	cmp    $0x30,%ecx
  401cb1:	88 85 15 ff ff ff    	mov    %al,-0xeb(%rbp)
  401cb7:	0f 8c 10 00 00 00    	jl     401ccd <http_parser_execute+0xa7d>
  401cbd:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  401cc1:	83 f8 39             	cmp    $0x39,%eax
  401cc4:	0f 9e c0             	setle  %al
  401cc7:	88 85 15 ff ff ff    	mov    %al,-0xeb(%rbp)
  401ccd:	8a 85 15 ff ff ff    	mov    -0xeb(%rbp),%al
  401cd3:	34 ff                	xor    $0xff,%al
  401cd5:	34 ff                	xor    $0xff,%al
  401cd7:	34 ff                	xor    $0xff,%al
  401cd9:	24 01                	and    $0x1,%al
  401cdb:	0f b6 c0             	movzbl %al,%eax
  401cde:	48 98                	cltq   
  401ce0:	48 83 f8 00          	cmp    $0x0,%rax
  401ce4:	0f 84 2a 00 00 00    	je     401d14 <http_parser_execute+0xac4>
  401cea:	e9 00 00 00 00       	jmpq   401cef <http_parser_execute+0xa9f>
  401cef:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  401cf2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401cf6:	89 48 04             	mov    %ecx,0x4(%rax)
  401cf9:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401cfd:	8b 48 14             	mov    0x14(%rax),%ecx
  401d00:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  401d06:	81 c9 00 00 00 0e    	or     $0xe000000,%ecx
  401d0c:	89 48 14             	mov    %ecx,0x14(%rax)
  401d0f:	e9 28 5b 00 00       	jmpq   40783c <http_parser_execute+0x65ec>
  401d14:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  401d18:	83 e8 30             	sub    $0x30,%eax
  401d1b:	66 89 c1             	mov    %ax,%cx
  401d1e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401d22:	66 89 48 12          	mov    %cx,0x12(%rax)
  401d26:	c7 45 9c 0c 00 00 00 	movl   $0xc,-0x64(%rbp)
  401d2d:	e9 9c 53 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  401d32:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  401d36:	83 f8 20             	cmp    $0x20,%eax
  401d39:	0f 95 c0             	setne  %al
  401d3c:	34 ff                	xor    $0xff,%al
  401d3e:	34 ff                	xor    $0xff,%al
  401d40:	24 01                	and    $0x1,%al
  401d42:	0f b6 c0             	movzbl %al,%eax
  401d45:	48 98                	cltq   
  401d47:	48 83 f8 00          	cmp    $0x0,%rax
  401d4b:	0f 84 2a 00 00 00    	je     401d7b <http_parser_execute+0xb2b>
  401d51:	e9 00 00 00 00       	jmpq   401d56 <http_parser_execute+0xb06>
  401d56:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  401d59:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401d5d:	89 48 04             	mov    %ecx,0x4(%rax)
  401d60:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401d64:	8b 48 14             	mov    0x14(%rax),%ecx
  401d67:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  401d6d:	81 c9 00 00 00 0e    	or     $0xe000000,%ecx
  401d73:	89 48 14             	mov    %ecx,0x14(%rax)
  401d76:	e9 c1 5a 00 00       	jmpq   40783c <http_parser_execute+0x65ec>
  401d7b:	c7 45 9c 0d 00 00 00 	movl   $0xd,-0x64(%rbp)
  401d82:	e9 47 53 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  401d87:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  401d8b:	83 f8 30             	cmp    $0x30,%eax
  401d8e:	0f 8c 0d 00 00 00    	jl     401da1 <http_parser_execute+0xb51>
  401d94:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  401d98:	83 f8 39             	cmp    $0x39,%eax
  401d9b:	0f 8e 3c 00 00 00    	jle    401ddd <http_parser_execute+0xb8d>
  401da1:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  401da5:	83 f8 20             	cmp    $0x20,%eax
  401da8:	0f 85 05 00 00 00    	jne    401db3 <http_parser_execute+0xb63>
  401dae:	e9 1b 53 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  401db3:	e9 00 00 00 00       	jmpq   401db8 <http_parser_execute+0xb68>
  401db8:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  401dbb:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401dbf:	89 48 04             	mov    %ecx,0x4(%rax)
  401dc2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401dc6:	8b 48 14             	mov    0x14(%rax),%ecx
  401dc9:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  401dcf:	81 c9 00 00 00 0f    	or     $0xf000000,%ecx
  401dd5:	89 48 14             	mov    %ecx,0x14(%rax)
  401dd8:	e9 5f 5a 00 00       	jmpq   40783c <http_parser_execute+0x65ec>
  401ddd:	0f be 55 d6          	movsbl -0x2a(%rbp),%edx
  401de1:	83 ea 30             	sub    $0x30,%edx
  401de4:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401de8:	8b 48 14             	mov    0x14(%rax),%ecx
  401deb:	81 e2 ff ff 00 00    	and    $0xffff,%edx
  401df1:	81 e1 00 00 ff ff    	and    $0xffff0000,%ecx
  401df7:	09 d1                	or     %edx,%ecx
  401df9:	89 48 14             	mov    %ecx,0x14(%rax)
  401dfc:	c7 45 9c 0e 00 00 00 	movl   $0xe,-0x64(%rbp)
  401e03:	e9 c6 52 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  401e08:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  401e0c:	83 f8 30             	cmp    $0x30,%eax
  401e0f:	0f 8c 0d 00 00 00    	jl     401e22 <http_parser_execute+0xbd2>
  401e15:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  401e19:	83 f8 39             	cmp    $0x39,%eax
  401e1c:	0f 8e 87 00 00 00    	jle    401ea9 <http_parser_execute+0xc59>
  401e22:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  401e26:	89 85 10 ff ff ff    	mov    %eax,-0xf0(%rbp)
  401e2c:	83 e8 0a             	sub    $0xa,%eax
  401e2f:	0f 84 39 00 00 00    	je     401e6e <http_parser_execute+0xc1e>
  401e35:	e9 00 00 00 00       	jmpq   401e3a <http_parser_execute+0xbea>
  401e3a:	8b 85 10 ff ff ff    	mov    -0xf0(%rbp),%eax
  401e40:	83 e8 0d             	sub    $0xd,%eax
  401e43:	0f 84 25 00 00 00    	je     401e6e <http_parser_execute+0xc1e>
  401e49:	e9 00 00 00 00       	jmpq   401e4e <http_parser_execute+0xbfe>
  401e4e:	8b 85 10 ff ff ff    	mov    -0xf0(%rbp),%eax
  401e54:	83 e8 20             	sub    $0x20,%eax
  401e57:	0f 85 1d 00 00 00    	jne    401e7a <http_parser_execute+0xc2a>
  401e5d:	e9 00 00 00 00       	jmpq   401e62 <http_parser_execute+0xc12>
  401e62:	c7 45 9c 0f 00 00 00 	movl   $0xf,-0x64(%rbp)
  401e69:	e9 36 00 00 00       	jmpq   401ea4 <http_parser_execute+0xc54>
  401e6e:	c7 45 9c 0f 00 00 00 	movl   $0xf,-0x64(%rbp)
  401e75:	e9 5c f7 ff ff       	jmpq   4015d6 <http_parser_execute+0x386>
  401e7a:	e9 00 00 00 00       	jmpq   401e7f <http_parser_execute+0xc2f>
  401e7f:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  401e82:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401e86:	89 48 04             	mov    %ecx,0x4(%rax)
  401e89:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401e8d:	8b 48 14             	mov    0x14(%rax),%ecx
  401e90:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  401e96:	81 c9 00 00 00 0f    	or     $0xf000000,%ecx
  401e9c:	89 48 14             	mov    %ecx,0x14(%rax)
  401e9f:	e9 98 59 00 00       	jmpq   40783c <http_parser_execute+0x65ec>
  401ea4:	e9 25 52 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  401ea9:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401ead:	8b 48 14             	mov    0x14(%rax),%ecx
  401eb0:	81 e1 ff ff 00 00    	and    $0xffff,%ecx
  401eb6:	6b d1 0a             	imul   $0xa,%ecx,%edx
  401eb9:	8b 48 14             	mov    0x14(%rax),%ecx
  401ebc:	81 e2 ff ff 00 00    	and    $0xffff,%edx
  401ec2:	81 e1 00 00 ff ff    	and    $0xffff0000,%ecx
  401ec8:	09 d1                	or     %edx,%ecx
  401eca:	89 48 14             	mov    %ecx,0x14(%rax)
  401ecd:	0f be 4d d6          	movsbl -0x2a(%rbp),%ecx
  401ed1:	83 e9 30             	sub    $0x30,%ecx
  401ed4:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401ed8:	8b 50 14             	mov    0x14(%rax),%edx
  401edb:	81 e2 ff ff 00 00    	and    $0xffff,%edx
  401ee1:	01 ca                	add    %ecx,%edx
  401ee3:	8b 48 14             	mov    0x14(%rax),%ecx
  401ee6:	81 e2 ff ff 00 00    	and    $0xffff,%edx
  401eec:	81 e1 00 00 ff ff    	and    $0xffff0000,%ecx
  401ef2:	09 d1                	or     %edx,%ecx
  401ef4:	89 48 14             	mov    %ecx,0x14(%rax)
  401ef7:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401efb:	8b 40 14             	mov    0x14(%rax),%eax
  401efe:	25 ff ff 00 00       	and    $0xffff,%eax
  401f03:	3d e7 03 00 00       	cmp    $0x3e7,%eax
  401f08:	0f 9f c0             	setg   %al
  401f0b:	34 ff                	xor    $0xff,%al
  401f0d:	34 ff                	xor    $0xff,%al
  401f0f:	24 01                	and    $0x1,%al
  401f11:	0f b6 c0             	movzbl %al,%eax
  401f14:	48 98                	cltq   
  401f16:	48 83 f8 00          	cmp    $0x0,%rax
  401f1a:	0f 84 2a 00 00 00    	je     401f4a <http_parser_execute+0xcfa>
  401f20:	e9 00 00 00 00       	jmpq   401f25 <http_parser_execute+0xcd5>
  401f25:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  401f28:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401f2c:	89 48 04             	mov    %ecx,0x4(%rax)
  401f2f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401f33:	8b 48 14             	mov    0x14(%rax),%ecx
  401f36:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  401f3c:	81 c9 00 00 00 0f    	or     $0xf000000,%ecx
  401f42:	89 48 14             	mov    %ecx,0x14(%rax)
  401f45:	e9 f2 58 00 00       	jmpq   40783c <http_parser_execute+0x65ec>
  401f4a:	e9 7f 51 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  401f4f:	e9 00 00 00 00       	jmpq   401f54 <http_parser_execute+0xd04>
  401f54:	48 83 7d a0 00       	cmpq   $0x0,-0x60(%rbp)
  401f59:	0f 85 08 00 00 00    	jne    401f67 <http_parser_execute+0xd17>
  401f5f:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  401f63:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
  401f67:	e9 00 00 00 00       	jmpq   401f6c <http_parser_execute+0xd1c>
  401f6c:	c7 45 9c 10 00 00 00 	movl   $0x10,-0x64(%rbp)
  401f73:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401f77:	8b 08                	mov    (%rax),%ecx
  401f79:	81 e1 ff ff ff e0    	and    $0xe0ffffff,%ecx
  401f7f:	83 c9 00             	or     $0x0,%ecx
  401f82:	89 08                	mov    %ecx,(%rax)
  401f84:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  401f88:	83 f8 0d             	cmp    $0xd,%eax
  401f8b:	0f 84 0d 00 00 00    	je     401f9e <http_parser_execute+0xd4e>
  401f91:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  401f95:	83 f8 0a             	cmp    $0xa,%eax
  401f98:	0f 85 05 00 00 00    	jne    401fa3 <http_parser_execute+0xd53>
  401f9e:	e9 33 f6 ff ff       	jmpq   4015d6 <http_parser_execute+0x386>
  401fa3:	e9 26 51 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  401fa8:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  401fac:	83 f8 0d             	cmp    $0xd,%eax
  401faf:	0f 85 5a 01 00 00    	jne    40210f <http_parser_execute+0xebf>
  401fb5:	c7 45 9c 11 00 00 00 	movl   $0x11,-0x64(%rbp)
  401fbc:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401fc0:	8b 40 14             	mov    0x14(%rax),%eax
  401fc3:	c1 e8 18             	shr    $0x18,%eax
  401fc6:	83 e0 7f             	and    $0x7f,%eax
  401fc9:	83 f8 00             	cmp    $0x0,%eax
  401fcc:	0f 85 05 00 00 00    	jne    401fd7 <http_parser_execute+0xd87>
  401fd2:	e9 28 00 00 00       	jmpq   401fff <http_parser_execute+0xdaf>
  401fd7:	48 bf a0 06 41 00 00 	movabs $0x4106a0,%rdi
  401fde:	00 00 00 
  401fe1:	48 be c4 06 41 00 00 	movabs $0x4106c4,%rsi
  401fe8:	00 00 00 
  401feb:	ba 8e 03 00 00       	mov    $0x38e,%edx
  401ff0:	48 b9 d2 06 41 00 00 	movabs $0x4106d2,%rcx
  401ff7:	00 00 00 
  401ffa:	e8 91 f0 ff ff       	callq  401090 <__assert_fail@plt>
  401fff:	48 83 7d a0 00       	cmpq   $0x0,-0x60(%rbp)
  402004:	0f 84 fb 00 00 00    	je     402105 <http_parser_execute+0xeb5>
  40200a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40200e:	48 83 78 10 00       	cmpq   $0x0,0x10(%rax)
  402013:	0f 95 c0             	setne  %al
  402016:	34 ff                	xor    $0xff,%al
  402018:	34 ff                	xor    $0xff,%al
  40201a:	24 01                	and    $0x1,%al
  40201c:	0f b6 c0             	movzbl %al,%eax
  40201f:	48 98                	cltq   
  402021:	48 83 f8 00          	cmp    $0x0,%rax
  402025:	0f 84 d2 00 00 00    	je     4020fd <http_parser_execute+0xead>
  40202b:	8b 55 9c             	mov    -0x64(%rbp),%edx
  40202e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402032:	8b 08                	mov    (%rax),%ecx
  402034:	83 e2 7f             	and    $0x7f,%edx
  402037:	c1 e2 0a             	shl    $0xa,%edx
  40203a:	81 e1 ff 03 fe ff    	and    $0xfffe03ff,%ecx
  402040:	09 d1                	or     %edx,%ecx
  402042:	89 08                	mov    %ecx,(%rax)
  402044:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402048:	48 8b 40 10          	mov    0x10(%rax),%rax
  40204c:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  402050:	48 8b 75 a0          	mov    -0x60(%rbp),%rsi
  402054:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  402058:	48 8b 4d a0          	mov    -0x60(%rbp),%rcx
  40205c:	48 29 ca             	sub    %rcx,%rdx
  40205f:	ff d0                	callq  *%rax
  402061:	89 c1                	mov    %eax,%ecx
  402063:	31 c0                	xor    %eax,%eax
  402065:	39 c8                	cmp    %ecx,%eax
  402067:	0f 95 c0             	setne  %al
  40206a:	34 ff                	xor    $0xff,%al
  40206c:	34 ff                	xor    $0xff,%al
  40206e:	24 01                	and    $0x1,%al
  402070:	0f b6 c0             	movzbl %al,%eax
  402073:	48 98                	cltq   
  402075:	48 83 f8 00          	cmp    $0x0,%rax
  402079:	0f 84 2a 00 00 00    	je     4020a9 <http_parser_execute+0xe59>
  40207f:	e9 00 00 00 00       	jmpq   402084 <http_parser_execute+0xe34>
  402084:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  402087:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40208b:	89 48 04             	mov    %ecx,0x4(%rax)
  40208e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402092:	8b 48 14             	mov    0x14(%rax),%ecx
  402095:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  40209b:	81 c9 00 00 00 08    	or     $0x8000000,%ecx
  4020a1:	89 48 14             	mov    %ecx,0x14(%rax)
  4020a4:	e9 00 00 00 00       	jmpq   4020a9 <http_parser_execute+0xe59>
  4020a9:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4020ad:	8b 00                	mov    (%rax),%eax
  4020af:	c1 e8 0a             	shr    $0xa,%eax
  4020b2:	83 e0 7f             	and    $0x7f,%eax
  4020b5:	89 45 9c             	mov    %eax,-0x64(%rbp)
  4020b8:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4020bc:	8b 40 14             	mov    0x14(%rax),%eax
  4020bf:	c1 e8 18             	shr    $0x18,%eax
  4020c2:	83 e0 7f             	and    $0x7f,%eax
  4020c5:	83 f8 00             	cmp    $0x0,%eax
  4020c8:	0f 95 c0             	setne  %al
  4020cb:	34 ff                	xor    $0xff,%al
  4020cd:	34 ff                	xor    $0xff,%al
  4020cf:	24 01                	and    $0x1,%al
  4020d1:	0f b6 c0             	movzbl %al,%eax
  4020d4:	48 98                	cltq   
  4020d6:	48 83 f8 00          	cmp    $0x0,%rax
  4020da:	0f 84 18 00 00 00    	je     4020f8 <http_parser_execute+0xea8>
  4020e0:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  4020e4:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  4020e8:	48 29 c8             	sub    %rcx,%rax
  4020eb:	48 83 c0 01          	add    $0x1,%rax
  4020ef:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4020f3:	e9 bb 57 00 00       	jmpq   4078b3 <http_parser_execute+0x6663>
  4020f8:	e9 00 00 00 00       	jmpq   4020fd <http_parser_execute+0xead>
  4020fd:	48 c7 45 a0 00 00 00 	movq   $0x0,-0x60(%rbp)
  402104:	00 
  402105:	e9 00 00 00 00       	jmpq   40210a <http_parser_execute+0xeba>
  40210a:	e9 bf 4f 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  40210f:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  402113:	83 f8 0a             	cmp    $0xa,%eax
  402116:	0f 85 5a 01 00 00    	jne    402276 <http_parser_execute+0x1026>
  40211c:	c7 45 9c 2c 00 00 00 	movl   $0x2c,-0x64(%rbp)
  402123:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402127:	8b 40 14             	mov    0x14(%rax),%eax
  40212a:	c1 e8 18             	shr    $0x18,%eax
  40212d:	83 e0 7f             	and    $0x7f,%eax
  402130:	83 f8 00             	cmp    $0x0,%eax
  402133:	0f 85 05 00 00 00    	jne    40213e <http_parser_execute+0xeee>
  402139:	e9 28 00 00 00       	jmpq   402166 <http_parser_execute+0xf16>
  40213e:	48 bf a0 06 41 00 00 	movabs $0x4106a0,%rdi
  402145:	00 00 00 
  402148:	48 be c4 06 41 00 00 	movabs $0x4106c4,%rsi
  40214f:	00 00 00 
  402152:	ba 94 03 00 00       	mov    $0x394,%edx
  402157:	48 b9 d2 06 41 00 00 	movabs $0x4106d2,%rcx
  40215e:	00 00 00 
  402161:	e8 2a ef ff ff       	callq  401090 <__assert_fail@plt>
  402166:	48 83 7d a0 00       	cmpq   $0x0,-0x60(%rbp)
  40216b:	0f 84 fb 00 00 00    	je     40226c <http_parser_execute+0x101c>
  402171:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402175:	48 83 78 10 00       	cmpq   $0x0,0x10(%rax)
  40217a:	0f 95 c0             	setne  %al
  40217d:	34 ff                	xor    $0xff,%al
  40217f:	34 ff                	xor    $0xff,%al
  402181:	24 01                	and    $0x1,%al
  402183:	0f b6 c0             	movzbl %al,%eax
  402186:	48 98                	cltq   
  402188:	48 83 f8 00          	cmp    $0x0,%rax
  40218c:	0f 84 d2 00 00 00    	je     402264 <http_parser_execute+0x1014>
  402192:	8b 55 9c             	mov    -0x64(%rbp),%edx
  402195:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402199:	8b 08                	mov    (%rax),%ecx
  40219b:	83 e2 7f             	and    $0x7f,%edx
  40219e:	c1 e2 0a             	shl    $0xa,%edx
  4021a1:	81 e1 ff 03 fe ff    	and    $0xfffe03ff,%ecx
  4021a7:	09 d1                	or     %edx,%ecx
  4021a9:	89 08                	mov    %ecx,(%rax)
  4021ab:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4021af:	48 8b 40 10          	mov    0x10(%rax),%rax
  4021b3:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  4021b7:	48 8b 75 a0          	mov    -0x60(%rbp),%rsi
  4021bb:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  4021bf:	48 8b 4d a0          	mov    -0x60(%rbp),%rcx
  4021c3:	48 29 ca             	sub    %rcx,%rdx
  4021c6:	ff d0                	callq  *%rax
  4021c8:	89 c1                	mov    %eax,%ecx
  4021ca:	31 c0                	xor    %eax,%eax
  4021cc:	39 c8                	cmp    %ecx,%eax
  4021ce:	0f 95 c0             	setne  %al
  4021d1:	34 ff                	xor    $0xff,%al
  4021d3:	34 ff                	xor    $0xff,%al
  4021d5:	24 01                	and    $0x1,%al
  4021d7:	0f b6 c0             	movzbl %al,%eax
  4021da:	48 98                	cltq   
  4021dc:	48 83 f8 00          	cmp    $0x0,%rax
  4021e0:	0f 84 2a 00 00 00    	je     402210 <http_parser_execute+0xfc0>
  4021e6:	e9 00 00 00 00       	jmpq   4021eb <http_parser_execute+0xf9b>
  4021eb:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  4021ee:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4021f2:	89 48 04             	mov    %ecx,0x4(%rax)
  4021f5:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4021f9:	8b 48 14             	mov    0x14(%rax),%ecx
  4021fc:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  402202:	81 c9 00 00 00 08    	or     $0x8000000,%ecx
  402208:	89 48 14             	mov    %ecx,0x14(%rax)
  40220b:	e9 00 00 00 00       	jmpq   402210 <http_parser_execute+0xfc0>
  402210:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402214:	8b 00                	mov    (%rax),%eax
  402216:	c1 e8 0a             	shr    $0xa,%eax
  402219:	83 e0 7f             	and    $0x7f,%eax
  40221c:	89 45 9c             	mov    %eax,-0x64(%rbp)
  40221f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402223:	8b 40 14             	mov    0x14(%rax),%eax
  402226:	c1 e8 18             	shr    $0x18,%eax
  402229:	83 e0 7f             	and    $0x7f,%eax
  40222c:	83 f8 00             	cmp    $0x0,%eax
  40222f:	0f 95 c0             	setne  %al
  402232:	34 ff                	xor    $0xff,%al
  402234:	34 ff                	xor    $0xff,%al
  402236:	24 01                	and    $0x1,%al
  402238:	0f b6 c0             	movzbl %al,%eax
  40223b:	48 98                	cltq   
  40223d:	48 83 f8 00          	cmp    $0x0,%rax
  402241:	0f 84 18 00 00 00    	je     40225f <http_parser_execute+0x100f>
  402247:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  40224b:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  40224f:	48 29 c8             	sub    %rcx,%rax
  402252:	48 83 c0 01          	add    $0x1,%rax
  402256:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40225a:	e9 54 56 00 00       	jmpq   4078b3 <http_parser_execute+0x6663>
  40225f:	e9 00 00 00 00       	jmpq   402264 <http_parser_execute+0x1014>
  402264:	48 c7 45 a0 00 00 00 	movq   $0x0,-0x60(%rbp)
  40226b:	00 
  40226c:	e9 00 00 00 00       	jmpq   402271 <http_parser_execute+0x1021>
  402271:	e9 58 4e 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  402276:	e9 53 4e 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  40227b:	e9 00 00 00 00       	jmpq   402280 <http_parser_execute+0x1030>
  402280:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  402284:	83 f8 0a             	cmp    $0xa,%eax
  402287:	0f 84 2a 00 00 00    	je     4022b7 <http_parser_execute+0x1067>
  40228d:	e9 00 00 00 00       	jmpq   402292 <http_parser_execute+0x1042>
  402292:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  402295:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402299:	89 48 04             	mov    %ecx,0x4(%rax)
  40229c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4022a0:	8b 48 14             	mov    0x14(%rax),%ecx
  4022a3:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  4022a9:	81 c9 00 00 00 1e    	or     $0x1e000000,%ecx
  4022af:	89 48 14             	mov    %ecx,0x14(%rax)
  4022b2:	e9 85 55 00 00       	jmpq   40783c <http_parser_execute+0x65ec>
  4022b7:	e9 00 00 00 00       	jmpq   4022bc <http_parser_execute+0x106c>
  4022bc:	c7 45 9c 2c 00 00 00 	movl   $0x2c,-0x64(%rbp)
  4022c3:	e9 06 4e 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  4022c8:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  4022cc:	83 f8 0d             	cmp    $0xd,%eax
  4022cf:	0f 84 0d 00 00 00    	je     4022e2 <http_parser_execute+0x1092>
  4022d5:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  4022d9:	83 f8 0a             	cmp    $0xa,%eax
  4022dc:	0f 85 05 00 00 00    	jne    4022e7 <http_parser_execute+0x1097>
  4022e2:	e9 e7 4d 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  4022e7:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4022eb:	8b 08                	mov    (%rax),%ecx
  4022ed:	81 e1 03 fc ff ff    	and    $0xfffffc03,%ecx
  4022f3:	83 c9 00             	or     $0x0,%ecx
  4022f6:	89 08                	mov    %ecx,(%rax)
  4022f8:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4022fc:	8b 08                	mov    (%rax),%ecx
  4022fe:	81 e1 ff ff ff df    	and    $0xdfffffff,%ecx
  402304:	83 c9 00             	or     $0x0,%ecx
  402307:	89 08                	mov    %ecx,(%rax)
  402309:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40230d:	48 c7 40 08 ff ff ff 	movq   $0xffffffffffffffff,0x8(%rax)
  402314:	ff 
  402315:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  402319:	83 c8 20             	or     $0x20,%eax
  40231c:	0f b6 c8             	movzbl %al,%ecx
  40231f:	31 c0                	xor    %eax,%eax
  402321:	83 f9 61             	cmp    $0x61,%ecx
  402324:	88 85 0f ff ff ff    	mov    %al,-0xf1(%rbp)
  40232a:	0f 8c 16 00 00 00    	jl     402346 <http_parser_execute+0x10f6>
  402330:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  402334:	83 c8 20             	or     $0x20,%eax
  402337:	0f b6 c0             	movzbl %al,%eax
  40233a:	83 f8 7a             	cmp    $0x7a,%eax
  40233d:	0f 9e c0             	setle  %al
  402340:	88 85 0f ff ff ff    	mov    %al,-0xf1(%rbp)
  402346:	8a 85 0f ff ff ff    	mov    -0xf1(%rbp),%al
  40234c:	34 ff                	xor    $0xff,%al
  40234e:	34 ff                	xor    $0xff,%al
  402350:	34 ff                	xor    $0xff,%al
  402352:	24 01                	and    $0x1,%al
  402354:	0f b6 c0             	movzbl %al,%eax
  402357:	48 98                	cltq   
  402359:	48 83 f8 00          	cmp    $0x0,%rax
  40235d:	0f 84 2a 00 00 00    	je     40238d <http_parser_execute+0x113d>
  402363:	e9 00 00 00 00       	jmpq   402368 <http_parser_execute+0x1118>
  402368:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  40236b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40236f:	89 48 04             	mov    %ecx,0x4(%rax)
  402372:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402376:	8b 48 14             	mov    0x14(%rax),%ecx
  402379:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  40237f:	81 c9 00 00 00 10    	or     $0x10000000,%ecx
  402385:	89 48 14             	mov    %ecx,0x14(%rax)
  402388:	e9 af 54 00 00       	jmpq   40783c <http_parser_execute+0x65ec>
  40238d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402391:	8b 48 14             	mov    0x14(%rax),%ecx
  402394:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  40239a:	89 48 14             	mov    %ecx,0x14(%rax)
  40239d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4023a1:	8b 08                	mov    (%rax),%ecx
  4023a3:	81 e1 ff ff ff e0    	and    $0xe0ffffff,%ecx
  4023a9:	81 c9 00 00 00 01    	or     $0x1000000,%ecx
  4023af:	89 08                	mov    %ecx,(%rax)
  4023b1:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  4023b5:	83 c0 bf             	add    $0xffffffbf,%eax
  4023b8:	89 c1                	mov    %eax,%ecx
  4023ba:	48 89 8d 00 ff ff ff 	mov    %rcx,-0x100(%rbp)
  4023c1:	83 e8 14             	sub    $0x14,%eax
  4023c4:	0f 87 a3 01 00 00    	ja     40256d <http_parser_execute+0x131d>
  4023ca:	48 8b 85 00 ff ff ff 	mov    -0x100(%rbp),%rax
  4023d1:	48 8b 04 c5 f0 f4 40 	mov    0x40f4f0(,%rax,8),%rax
  4023d8:	00 
  4023d9:	ff e0                	jmpq   *%rax
  4023db:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4023df:	8b 48 14             	mov    0x14(%rax),%ecx
  4023e2:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  4023e8:	81 c9 00 00 13 00    	or     $0x130000,%ecx
  4023ee:	89 48 14             	mov    %ecx,0x14(%rax)
  4023f1:	e9 a1 01 00 00       	jmpq   402597 <http_parser_execute+0x1347>
  4023f6:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4023fa:	8b 48 14             	mov    0x14(%rax),%ecx
  4023fd:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  402403:	81 c9 00 00 10 00    	or     $0x100000,%ecx
  402409:	89 48 14             	mov    %ecx,0x14(%rax)
  40240c:	e9 86 01 00 00       	jmpq   402597 <http_parser_execute+0x1347>
  402411:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402415:	8b 48 14             	mov    0x14(%rax),%ecx
  402418:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  40241e:	81 c9 00 00 05 00    	or     $0x50000,%ecx
  402424:	89 48 14             	mov    %ecx,0x14(%rax)
  402427:	e9 6b 01 00 00       	jmpq   402597 <http_parser_execute+0x1347>
  40242c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402430:	8b 48 14             	mov    0x14(%rax),%ecx
  402433:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  402439:	83 c9 00             	or     $0x0,%ecx
  40243c:	89 48 14             	mov    %ecx,0x14(%rax)
  40243f:	e9 53 01 00 00       	jmpq   402597 <http_parser_execute+0x1347>
  402444:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402448:	8b 48 14             	mov    0x14(%rax),%ecx
  40244b:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  402451:	81 c9 00 00 01 00    	or     $0x10000,%ecx
  402457:	89 48 14             	mov    %ecx,0x14(%rax)
  40245a:	e9 38 01 00 00       	jmpq   402597 <http_parser_execute+0x1347>
  40245f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402463:	8b 48 14             	mov    0x14(%rax),%ecx
  402466:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  40246c:	81 c9 00 00 02 00    	or     $0x20000,%ecx
  402472:	89 48 14             	mov    %ecx,0x14(%rax)
  402475:	e9 1d 01 00 00       	jmpq   402597 <http_parser_execute+0x1347>
  40247a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40247e:	8b 48 14             	mov    0x14(%rax),%ecx
  402481:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  402487:	81 c9 00 00 09 00    	or     $0x90000,%ecx
  40248d:	89 48 14             	mov    %ecx,0x14(%rax)
  402490:	e9 02 01 00 00       	jmpq   402597 <http_parser_execute+0x1347>
  402495:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402499:	8b 48 14             	mov    0x14(%rax),%ecx
  40249c:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  4024a2:	81 c9 00 00 0a 00    	or     $0xa0000,%ecx
  4024a8:	89 48 14             	mov    %ecx,0x14(%rax)
  4024ab:	e9 e7 00 00 00       	jmpq   402597 <http_parser_execute+0x1347>
  4024b0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4024b4:	8b 48 14             	mov    0x14(%rax),%ecx
  4024b7:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  4024bd:	81 c9 00 00 19 00    	or     $0x190000,%ecx
  4024c3:	89 48 14             	mov    %ecx,0x14(%rax)
  4024c6:	e9 cc 00 00 00       	jmpq   402597 <http_parser_execute+0x1347>
  4024cb:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4024cf:	8b 48 14             	mov    0x14(%rax),%ecx
  4024d2:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  4024d8:	81 c9 00 00 06 00    	or     $0x60000,%ecx
  4024de:	89 48 14             	mov    %ecx,0x14(%rax)
  4024e1:	e9 b1 00 00 00       	jmpq   402597 <http_parser_execute+0x1347>
  4024e6:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4024ea:	8b 48 14             	mov    0x14(%rax),%ecx
  4024ed:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  4024f3:	81 c9 00 00 03 00    	or     $0x30000,%ecx
  4024f9:	89 48 14             	mov    %ecx,0x14(%rax)
  4024fc:	e9 96 00 00 00       	jmpq   402597 <http_parser_execute+0x1347>
  402501:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402505:	8b 48 14             	mov    0x14(%rax),%ecx
  402508:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  40250e:	81 c9 00 00 14 00    	or     $0x140000,%ecx
  402514:	89 48 14             	mov    %ecx,0x14(%rax)
  402517:	e9 7b 00 00 00       	jmpq   402597 <http_parser_execute+0x1347>
  40251c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402520:	8b 48 14             	mov    0x14(%rax),%ecx
  402523:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  402529:	81 c9 00 00 1a 00    	or     $0x1a0000,%ecx
  40252f:	89 48 14             	mov    %ecx,0x14(%rax)
  402532:	e9 60 00 00 00       	jmpq   402597 <http_parser_execute+0x1347>
  402537:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40253b:	8b 48 14             	mov    0x14(%rax),%ecx
  40253e:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  402544:	81 c9 00 00 07 00    	or     $0x70000,%ecx
  40254a:	89 48 14             	mov    %ecx,0x14(%rax)
  40254d:	e9 45 00 00 00       	jmpq   402597 <http_parser_execute+0x1347>
  402552:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402556:	8b 48 14             	mov    0x14(%rax),%ecx
  402559:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  40255f:	81 c9 00 00 0f 00    	or     $0xf0000,%ecx
  402565:	89 48 14             	mov    %ecx,0x14(%rax)
  402568:	e9 2a 00 00 00       	jmpq   402597 <http_parser_execute+0x1347>
  40256d:	e9 00 00 00 00       	jmpq   402572 <http_parser_execute+0x1322>
  402572:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  402575:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402579:	89 48 04             	mov    %ecx,0x4(%rax)
  40257c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402580:	8b 48 14             	mov    0x14(%rax),%ecx
  402583:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  402589:	81 c9 00 00 00 10    	or     $0x10000000,%ecx
  40258f:	89 48 14             	mov    %ecx,0x14(%rax)
  402592:	e9 a5 52 00 00       	jmpq   40783c <http_parser_execute+0x65ec>
  402597:	c7 45 9c 13 00 00 00 	movl   $0x13,-0x64(%rbp)
  40259e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4025a2:	8b 40 14             	mov    0x14(%rax),%eax
  4025a5:	c1 e8 18             	shr    $0x18,%eax
  4025a8:	83 e0 7f             	and    $0x7f,%eax
  4025ab:	83 f8 00             	cmp    $0x0,%eax
  4025ae:	0f 85 05 00 00 00    	jne    4025b9 <http_parser_execute+0x1369>
  4025b4:	e9 28 00 00 00       	jmpq   4025e1 <http_parser_execute+0x1391>
  4025b9:	48 bf a0 06 41 00 00 	movabs $0x4106a0,%rdi
  4025c0:	00 00 00 
  4025c3:	48 be c4 06 41 00 00 	movabs $0x4106c4,%rsi
  4025ca:	00 00 00 
  4025cd:	ba c6 03 00 00       	mov    $0x3c6,%edx
  4025d2:	48 b9 d2 06 41 00 00 	movabs $0x4106d2,%rcx
  4025d9:	00 00 00 
  4025dc:	e8 af ea ff ff       	callq  401090 <__assert_fail@plt>
  4025e1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4025e5:	48 83 38 00          	cmpq   $0x0,(%rax)
  4025e9:	0f 95 c0             	setne  %al
  4025ec:	34 ff                	xor    $0xff,%al
  4025ee:	34 ff                	xor    $0xff,%al
  4025f0:	24 01                	and    $0x1,%al
  4025f2:	0f b6 c0             	movzbl %al,%eax
  4025f5:	48 98                	cltq   
  4025f7:	48 83 f8 00          	cmp    $0x0,%rax
  4025fb:	0f 84 c2 00 00 00    	je     4026c3 <http_parser_execute+0x1473>
  402601:	8b 55 9c             	mov    -0x64(%rbp),%edx
  402604:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402608:	8b 08                	mov    (%rax),%ecx
  40260a:	83 e2 7f             	and    $0x7f,%edx
  40260d:	c1 e2 0a             	shl    $0xa,%edx
  402610:	81 e1 ff 03 fe ff    	and    $0xfffe03ff,%ecx
  402616:	09 d1                	or     %edx,%ecx
  402618:	89 08                	mov    %ecx,(%rax)
  40261a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40261e:	48 8b 00             	mov    (%rax),%rax
  402621:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  402625:	ff d0                	callq  *%rax
  402627:	89 c1                	mov    %eax,%ecx
  402629:	31 c0                	xor    %eax,%eax
  40262b:	39 c8                	cmp    %ecx,%eax
  40262d:	0f 95 c0             	setne  %al
  402630:	34 ff                	xor    $0xff,%al
  402632:	34 ff                	xor    $0xff,%al
  402634:	24 01                	and    $0x1,%al
  402636:	0f b6 c0             	movzbl %al,%eax
  402639:	48 98                	cltq   
  40263b:	48 83 f8 00          	cmp    $0x0,%rax
  40263f:	0f 84 2a 00 00 00    	je     40266f <http_parser_execute+0x141f>
  402645:	e9 00 00 00 00       	jmpq   40264a <http_parser_execute+0x13fa>
  40264a:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  40264d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402651:	89 48 04             	mov    %ecx,0x4(%rax)
  402654:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402658:	8b 48 14             	mov    0x14(%rax),%ecx
  40265b:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  402661:	81 c9 00 00 00 01    	or     $0x1000000,%ecx
  402667:	89 48 14             	mov    %ecx,0x14(%rax)
  40266a:	e9 00 00 00 00       	jmpq   40266f <http_parser_execute+0x141f>
  40266f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402673:	8b 00                	mov    (%rax),%eax
  402675:	c1 e8 0a             	shr    $0xa,%eax
  402678:	83 e0 7f             	and    $0x7f,%eax
  40267b:	89 45 9c             	mov    %eax,-0x64(%rbp)
  40267e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402682:	8b 40 14             	mov    0x14(%rax),%eax
  402685:	c1 e8 18             	shr    $0x18,%eax
  402688:	83 e0 7f             	and    $0x7f,%eax
  40268b:	83 f8 00             	cmp    $0x0,%eax
  40268e:	0f 95 c0             	setne  %al
  402691:	34 ff                	xor    $0xff,%al
  402693:	34 ff                	xor    $0xff,%al
  402695:	24 01                	and    $0x1,%al
  402697:	0f b6 c0             	movzbl %al,%eax
  40269a:	48 98                	cltq   
  40269c:	48 83 f8 00          	cmp    $0x0,%rax
  4026a0:	0f 84 18 00 00 00    	je     4026be <http_parser_execute+0x146e>
  4026a6:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  4026aa:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  4026ae:	48 29 c8             	sub    %rcx,%rax
  4026b1:	48 83 c0 01          	add    $0x1,%rax
  4026b5:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4026b9:	e9 f5 51 00 00       	jmpq   4078b3 <http_parser_execute+0x6663>
  4026be:	e9 00 00 00 00       	jmpq   4026c3 <http_parser_execute+0x1473>
  4026c3:	e9 00 00 00 00       	jmpq   4026c8 <http_parser_execute+0x1478>
  4026c8:	e9 01 4a 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  4026cd:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  4026d1:	83 f8 00             	cmp    $0x0,%eax
  4026d4:	0f 94 c0             	sete   %al
  4026d7:	34 ff                	xor    $0xff,%al
  4026d9:	34 ff                	xor    $0xff,%al
  4026db:	24 01                	and    $0x1,%al
  4026dd:	0f b6 c0             	movzbl %al,%eax
  4026e0:	48 98                	cltq   
  4026e2:	48 83 f8 00          	cmp    $0x0,%rax
  4026e6:	0f 84 2a 00 00 00    	je     402716 <http_parser_execute+0x14c6>
  4026ec:	e9 00 00 00 00       	jmpq   4026f1 <http_parser_execute+0x14a1>
  4026f1:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  4026f4:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4026f8:	89 48 04             	mov    %ecx,0x4(%rax)
  4026fb:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4026ff:	8b 48 14             	mov    0x14(%rax),%ecx
  402702:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  402708:	81 c9 00 00 00 10    	or     $0x10000000,%ecx
  40270e:	89 48 14             	mov    %ecx,0x14(%rax)
  402711:	e9 26 51 00 00       	jmpq   40783c <http_parser_execute+0x65ec>
  402716:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40271a:	8b 40 14             	mov    0x14(%rax),%eax
  40271d:	c1 e8 10             	shr    $0x10,%eax
  402720:	25 ff 00 00 00       	and    $0xff,%eax
  402725:	89 c0                	mov    %eax,%eax
  402727:	48 8b 04 c5 d0 e0 8b 	mov    0x8be0d0(,%rax,8),%rax
  40272e:	00 
  40272f:	48 89 45 88          	mov    %rax,-0x78(%rbp)
  402733:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  402737:	83 f8 20             	cmp    $0x20,%eax
  40273a:	0f 85 2b 00 00 00    	jne    40276b <http_parser_execute+0x151b>
  402740:	48 8b 45 88          	mov    -0x78(%rbp),%rax
  402744:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  402748:	8b 09                	mov    (%rcx),%ecx
  40274a:	c1 e9 18             	shr    $0x18,%ecx
  40274d:	83 e1 1f             	and    $0x1f,%ecx
  402750:	89 c9                	mov    %ecx,%ecx
  402752:	0f be 04 08          	movsbl (%rax,%rcx,1),%eax
  402756:	83 f8 00             	cmp    $0x0,%eax
  402759:	0f 85 0c 00 00 00    	jne    40276b <http_parser_execute+0x151b>
  40275f:	c7 45 9c 14 00 00 00 	movl   $0x14,-0x64(%rbp)
  402766:	e9 70 04 00 00       	jmpq   402bdb <http_parser_execute+0x198b>
  40276b:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  40276f:	48 8b 4d 88          	mov    -0x78(%rbp),%rcx
  402773:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  402777:	8b 12                	mov    (%rdx),%edx
  402779:	c1 ea 18             	shr    $0x18,%edx
  40277c:	83 e2 1f             	and    $0x1f,%edx
  40277f:	89 d2                	mov    %edx,%edx
  402781:	0f be 0c 11          	movsbl (%rcx,%rdx,1),%ecx
  402785:	39 c8                	cmp    %ecx,%eax
  402787:	0f 85 05 00 00 00    	jne    402792 <http_parser_execute+0x1542>
  40278d:	e9 44 04 00 00       	jmpq   402bd6 <http_parser_execute+0x1986>
  402792:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  402796:	83 f8 41             	cmp    $0x41,%eax
  402799:	0f 8c 0d 00 00 00    	jl     4027ac <http_parser_execute+0x155c>
  40279f:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  4027a3:	83 f8 5a             	cmp    $0x5a,%eax
  4027a6:	0f 8e 0d 00 00 00    	jle    4027b9 <http_parser_execute+0x1569>
  4027ac:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  4027b0:	83 f8 2d             	cmp    $0x2d,%eax
  4027b3:	0f 85 ee 03 00 00    	jne    402ba7 <http_parser_execute+0x1957>
  4027b9:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  4027bd:	0f b7 41 16          	movzwl 0x16(%rcx),%eax
  4027c1:	c1 e0 10             	shl    $0x10,%eax
  4027c4:	0f b7 49 02          	movzwl 0x2(%rcx),%ecx
  4027c8:	09 c8                	or     %ecx,%eax
  4027ca:	25 00 1f ff 00       	and    $0xff1f00,%eax
  4027cf:	0f be 4d d6          	movsbl -0x2a(%rbp),%ecx
  4027d3:	09 c8                	or     %ecx,%eax
  4027d5:	89 85 fc fe ff ff    	mov    %eax,-0x104(%rbp)
  4027db:	2d 41 01 03 00       	sub    $0x30141,%eax
  4027e0:	0f 84 ac 01 00 00    	je     402992 <http_parser_execute+0x1742>
  4027e6:	e9 00 00 00 00       	jmpq   4027eb <http_parser_execute+0x159b>
  4027eb:	8b 85 fc fe ff ff    	mov    -0x104(%rbp),%eax
  4027f1:	2d 52 01 03 00       	sub    $0x30152,%eax
  4027f6:	0f 84 b1 01 00 00    	je     4029ad <http_parser_execute+0x175d>
  4027fc:	e9 00 00 00 00       	jmpq   402801 <http_parser_execute+0x15b1>
  402801:	8b 85 fc fe ff ff    	mov    -0x104(%rbp),%eax
  402807:	2d 55 01 03 00       	sub    $0x30155,%eax
  40280c:	0f 84 65 01 00 00    	je     402977 <http_parser_execute+0x1727>
  402812:	e9 00 00 00 00       	jmpq   402817 <http_parser_execute+0x15c7>
  402817:	8b 85 fc fe ff ff    	mov    -0x104(%rbp),%eax
  40281d:	2d 52 02 04 00       	sub    $0x40252,%eax
  402822:	0f 84 a0 01 00 00    	je     4029c8 <http_parser_execute+0x1778>
  402828:	e9 00 00 00 00       	jmpq   40282d <http_parser_execute+0x15dd>
  40282d:	8b 85 fc fe ff ff    	mov    -0x104(%rbp),%eax
  402833:	2d 48 01 05 00       	sub    $0x50148,%eax
  402838:	0f 84 a5 01 00 00    	je     4029e3 <http_parser_execute+0x1793>
  40283e:	e9 00 00 00 00       	jmpq   402843 <http_parser_execute+0x15f3>
  402843:	8b 85 fc fe ff ff    	mov    -0x104(%rbp),%eax
  402849:	2d 50 02 05 00       	sub    $0x50250,%eax
  40284e:	0f 84 aa 01 00 00    	je     4029fe <http_parser_execute+0x17ae>
  402854:	e9 00 00 00 00       	jmpq   402859 <http_parser_execute+0x1609>
  402859:	8b 85 fc fe ff ff    	mov    -0x104(%rbp),%eax
  40285f:	2d 49 01 09 00       	sub    $0x90149,%eax
  402864:	0f 84 a2 02 00 00    	je     402b0c <http_parser_execute+0x18bc>
  40286a:	e9 00 00 00 00       	jmpq   40286f <http_parser_execute+0x161f>
  40286f:	8b 85 fc fe ff ff    	mov    -0x104(%rbp),%eax
  402875:	2d 2d 01 0a 00       	sub    $0xa012d,%eax
  40287a:	0f 84 cf 01 00 00    	je     402a4f <http_parser_execute+0x17ff>
  402880:	e9 00 00 00 00       	jmpq   402885 <http_parser_execute+0x1635>
  402885:	8b 85 fc fe ff ff    	mov    -0x104(%rbp),%eax
  40288b:	2d 45 01 0a 00       	sub    $0xa0145,%eax
  402890:	0f 84 9e 01 00 00    	je     402a34 <http_parser_execute+0x17e4>
  402896:	e9 00 00 00 00       	jmpq   40289b <http_parser_execute+0x164b>
  40289b:	8b 85 fc fe ff ff    	mov    -0x104(%rbp),%eax
  4028a1:	2d 4f 01 0a 00       	sub    $0xa014f,%eax
  4028a6:	0f 84 6d 01 00 00    	je     402a19 <http_parser_execute+0x17c9>
  4028ac:	e9 00 00 00 00       	jmpq   4028b1 <http_parser_execute+0x1661>
  4028b1:	8b 85 fc fe ff ff    	mov    -0x104(%rbp),%eax
  4028b7:	2d 41 02 0a 00       	sub    $0xa0241,%eax
  4028bc:	0f 84 a8 01 00 00    	je     402a6a <http_parser_execute+0x181a>
  4028c2:	e9 00 00 00 00       	jmpq   4028c7 <http_parser_execute+0x1677>
  4028c7:	8b 85 fc fe ff ff    	mov    -0x104(%rbp),%eax
  4028cd:	2d 41 03 0a 00       	sub    $0xa0341,%eax
  4028d2:	0f 84 ad 01 00 00    	je     402a85 <http_parser_execute+0x1835>
  4028d8:	e9 00 00 00 00       	jmpq   4028dd <http_parser_execute+0x168d>
  4028dd:	8b 85 fc fe ff ff    	mov    -0x104(%rbp),%eax
  4028e3:	2d 50 04 0c 00       	sub    $0xc0450,%eax
  4028e8:	0f 84 03 02 00 00    	je     402af1 <http_parser_execute+0x18a1>
  4028ee:	e9 00 00 00 00       	jmpq   4028f3 <http_parser_execute+0x16a3>
  4028f3:	8b 85 fc fe ff ff    	mov    -0x104(%rbp),%eax
  4028f9:	2d 42 02 0f 00       	sub    $0xf0242,%eax
  4028fe:	0f 84 3e 02 00 00    	je     402b42 <http_parser_execute+0x18f2>
  402904:	e9 00 00 00 00       	jmpq   402909 <http_parser_execute+0x16b9>
  402909:	8b 85 fc fe ff ff    	mov    -0x104(%rbp),%eax
  40290f:	2d 53 02 0f 00       	sub    $0xf0253,%eax
  402914:	0f 84 0d 02 00 00    	je     402b27 <http_parser_execute+0x18d7>
  40291a:	e9 00 00 00 00       	jmpq   40291f <http_parser_execute+0x16cf>
  40291f:	8b 85 fc fe ff ff    	mov    -0x104(%rbp),%eax
  402925:	2d 49 03 0f 00       	sub    $0xf0349,%eax
  40292a:	0f 84 2d 02 00 00    	je     402b5d <http_parser_execute+0x190d>
  402930:	e9 00 00 00 00       	jmpq   402935 <http_parser_execute+0x16e5>
  402935:	8b 85 fc fe ff ff    	mov    -0x104(%rbp),%eax
  40293b:	2d 42 02 14 00       	sub    $0x140242,%eax
  402940:	0f 84 90 01 00 00    	je     402ad6 <http_parser_execute+0x1886>
  402946:	e9 00 00 00 00       	jmpq   40294b <http_parser_execute+0x16fb>
  40294b:	8b 85 fc fe ff ff    	mov    -0x104(%rbp),%eax
  402951:	2d 45 01 1a 00       	sub    $0x1a0145,%eax
  402956:	0f 84 44 01 00 00    	je     402aa0 <http_parser_execute+0x1850>
  40295c:	e9 00 00 00 00       	jmpq   402961 <http_parser_execute+0x1711>
  402961:	8b 85 fc fe ff ff    	mov    -0x104(%rbp),%eax
  402967:	2d 4f 01 1a 00       	sub    $0x1a014f,%eax
  40296c:	0f 84 49 01 00 00    	je     402abb <http_parser_execute+0x186b>
  402972:	e9 01 02 00 00       	jmpq   402b78 <http_parser_execute+0x1928>
  402977:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40297b:	8b 48 14             	mov    0x14(%rax),%ecx
  40297e:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  402984:	81 c9 00 00 04 00    	or     $0x40000,%ecx
  40298a:	89 48 14             	mov    %ecx,0x14(%rax)
  40298d:	e9 10 02 00 00       	jmpq   402ba2 <http_parser_execute+0x1952>
  402992:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402996:	8b 48 14             	mov    0x14(%rax),%ecx
  402999:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  40299f:	81 c9 00 00 1c 00    	or     $0x1c0000,%ecx
  4029a5:	89 48 14             	mov    %ecx,0x14(%rax)
  4029a8:	e9 f5 01 00 00       	jmpq   402ba2 <http_parser_execute+0x1952>
  4029ad:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4029b1:	8b 48 14             	mov    0x14(%rax),%ecx
  4029b4:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  4029ba:	81 c9 00 00 0c 00    	or     $0xc0000,%ecx
  4029c0:	89 48 14             	mov    %ecx,0x14(%rax)
  4029c3:	e9 da 01 00 00       	jmpq   402ba2 <http_parser_execute+0x1952>
  4029c8:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4029cc:	8b 48 14             	mov    0x14(%rax),%ecx
  4029cf:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  4029d5:	81 c9 00 00 1d 00    	or     $0x1d0000,%ecx
  4029db:	89 48 14             	mov    %ecx,0x14(%rax)
  4029de:	e9 bf 01 00 00       	jmpq   402ba2 <http_parser_execute+0x1952>
  4029e3:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4029e7:	8b 48 14             	mov    0x14(%rax),%ecx
  4029ea:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  4029f0:	81 c9 00 00 16 00    	or     $0x160000,%ecx
  4029f6:	89 48 14             	mov    %ecx,0x14(%rax)
  4029f9:	e9 a4 01 00 00       	jmpq   402ba2 <http_parser_execute+0x1952>
  4029fe:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402a02:	8b 48 14             	mov    0x14(%rax),%ecx
  402a05:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  402a0b:	81 c9 00 00 08 00    	or     $0x80000,%ecx
  402a11:	89 48 14             	mov    %ecx,0x14(%rax)
  402a14:	e9 89 01 00 00       	jmpq   402ba2 <http_parser_execute+0x1952>
  402a19:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402a1d:	8b 48 14             	mov    0x14(%rax),%ecx
  402a20:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  402a26:	81 c9 00 00 0b 00    	or     $0xb0000,%ecx
  402a2c:	89 48 14             	mov    %ecx,0x14(%rax)
  402a2f:	e9 6e 01 00 00       	jmpq   402ba2 <http_parser_execute+0x1952>
  402a34:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402a38:	8b 48 14             	mov    0x14(%rax),%ecx
  402a3b:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  402a41:	81 c9 00 00 17 00    	or     $0x170000,%ecx
  402a47:	89 48 14             	mov    %ecx,0x14(%rax)
  402a4a:	e9 53 01 00 00       	jmpq   402ba2 <http_parser_execute+0x1952>
  402a4f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402a53:	8b 48 14             	mov    0x14(%rax),%ecx
  402a56:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  402a5c:	81 c9 00 00 18 00    	or     $0x180000,%ecx
  402a62:	89 48 14             	mov    %ecx,0x14(%rax)
  402a65:	e9 38 01 00 00       	jmpq   402ba2 <http_parser_execute+0x1952>
  402a6a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402a6e:	8b 48 14             	mov    0x14(%rax),%ecx
  402a71:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  402a77:	81 c9 00 00 15 00    	or     $0x150000,%ecx
  402a7d:	89 48 14             	mov    %ecx,0x14(%rax)
  402a80:	e9 1d 01 00 00       	jmpq   402ba2 <http_parser_execute+0x1952>
  402a85:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402a89:	8b 48 14             	mov    0x14(%rax),%ecx
  402a8c:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  402a92:	81 c9 00 00 1e 00    	or     $0x1e0000,%ecx
  402a98:	89 48 14             	mov    %ecx,0x14(%rax)
  402a9b:	e9 02 01 00 00       	jmpq   402ba2 <http_parser_execute+0x1952>
  402aa0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402aa4:	8b 48 14             	mov    0x14(%rax),%ecx
  402aa7:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  402aad:	81 c9 00 00 0e 00    	or     $0xe0000,%ecx
  402ab3:	89 48 14             	mov    %ecx,0x14(%rax)
  402ab6:	e9 e7 00 00 00       	jmpq   402ba2 <http_parser_execute+0x1952>
  402abb:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402abf:	8b 48 14             	mov    0x14(%rax),%ecx
  402ac2:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  402ac8:	81 c9 00 00 21 00    	or     $0x210000,%ecx
  402ace:	89 48 14             	mov    %ecx,0x14(%rax)
  402ad1:	e9 cc 00 00 00       	jmpq   402ba2 <http_parser_execute+0x1952>
  402ad6:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402ada:	8b 48 14             	mov    0x14(%rax),%ecx
  402add:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  402ae3:	81 c9 00 00 11 00    	or     $0x110000,%ecx
  402ae9:	89 48 14             	mov    %ecx,0x14(%rax)
  402aec:	e9 b1 00 00 00       	jmpq   402ba2 <http_parser_execute+0x1952>
  402af1:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402af5:	8b 48 14             	mov    0x14(%rax),%ecx
  402af8:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  402afe:	81 c9 00 00 0d 00    	or     $0xd0000,%ecx
  402b04:	89 48 14             	mov    %ecx,0x14(%rax)
  402b07:	e9 96 00 00 00       	jmpq   402ba2 <http_parser_execute+0x1952>
  402b0c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402b10:	8b 48 14             	mov    0x14(%rax),%ecx
  402b13:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  402b19:	81 c9 00 00 1f 00    	or     $0x1f0000,%ecx
  402b1f:	89 48 14             	mov    %ecx,0x14(%rax)
  402b22:	e9 7b 00 00 00       	jmpq   402ba2 <http_parser_execute+0x1952>
  402b27:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402b2b:	8b 48 14             	mov    0x14(%rax),%ecx
  402b2e:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  402b34:	81 c9 00 00 1b 00    	or     $0x1b0000,%ecx
  402b3a:	89 48 14             	mov    %ecx,0x14(%rax)
  402b3d:	e9 60 00 00 00       	jmpq   402ba2 <http_parser_execute+0x1952>
  402b42:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402b46:	8b 48 14             	mov    0x14(%rax),%ecx
  402b49:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  402b4f:	81 c9 00 00 12 00    	or     $0x120000,%ecx
  402b55:	89 48 14             	mov    %ecx,0x14(%rax)
  402b58:	e9 45 00 00 00       	jmpq   402ba2 <http_parser_execute+0x1952>
  402b5d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402b61:	8b 48 14             	mov    0x14(%rax),%ecx
  402b64:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  402b6a:	81 c9 00 00 20 00    	or     $0x200000,%ecx
  402b70:	89 48 14             	mov    %ecx,0x14(%rax)
  402b73:	e9 2a 00 00 00       	jmpq   402ba2 <http_parser_execute+0x1952>
  402b78:	e9 00 00 00 00       	jmpq   402b7d <http_parser_execute+0x192d>
  402b7d:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  402b80:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402b84:	89 48 04             	mov    %ecx,0x4(%rax)
  402b87:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402b8b:	8b 48 14             	mov    0x14(%rax),%ecx
  402b8e:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  402b94:	81 c9 00 00 00 10    	or     $0x10000000,%ecx
  402b9a:	89 48 14             	mov    %ecx,0x14(%rax)
  402b9d:	e9 9a 4c 00 00       	jmpq   40783c <http_parser_execute+0x65ec>
  402ba2:	e9 2a 00 00 00       	jmpq   402bd1 <http_parser_execute+0x1981>
  402ba7:	e9 00 00 00 00       	jmpq   402bac <http_parser_execute+0x195c>
  402bac:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  402baf:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402bb3:	89 48 04             	mov    %ecx,0x4(%rax)
  402bb6:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402bba:	8b 48 14             	mov    0x14(%rax),%ecx
  402bbd:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  402bc3:	81 c9 00 00 00 10    	or     $0x10000000,%ecx
  402bc9:	89 48 14             	mov    %ecx,0x14(%rax)
  402bcc:	e9 6b 4c 00 00       	jmpq   40783c <http_parser_execute+0x65ec>
  402bd1:	e9 00 00 00 00       	jmpq   402bd6 <http_parser_execute+0x1986>
  402bd6:	e9 00 00 00 00       	jmpq   402bdb <http_parser_execute+0x198b>
  402bdb:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402bdf:	8b 10                	mov    (%rax),%edx
  402be1:	c1 ea 18             	shr    $0x18,%edx
  402be4:	83 e2 1f             	and    $0x1f,%edx
  402be7:	83 c2 01             	add    $0x1,%edx
  402bea:	8b 08                	mov    (%rax),%ecx
  402bec:	83 e2 1f             	and    $0x1f,%edx
  402bef:	c1 e2 18             	shl    $0x18,%edx
  402bf2:	81 e1 ff ff ff e0    	and    $0xe0ffffff,%ecx
  402bf8:	09 d1                	or     %edx,%ecx
  402bfa:	89 08                	mov    %ecx,(%rax)
  402bfc:	e9 cd 44 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  402c01:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  402c05:	83 f8 20             	cmp    $0x20,%eax
  402c08:	0f 85 05 00 00 00    	jne    402c13 <http_parser_execute+0x19c3>
  402c0e:	e9 bb 44 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  402c13:	e9 00 00 00 00       	jmpq   402c18 <http_parser_execute+0x19c8>
  402c18:	48 83 7d b0 00       	cmpq   $0x0,-0x50(%rbp)
  402c1d:	0f 85 08 00 00 00    	jne    402c2b <http_parser_execute+0x19db>
  402c23:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  402c27:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  402c2b:	e9 00 00 00 00       	jmpq   402c30 <http_parser_execute+0x19e0>
  402c30:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402c34:	8b 40 14             	mov    0x14(%rax),%eax
  402c37:	c1 e8 10             	shr    $0x10,%eax
  402c3a:	25 ff 00 00 00       	and    $0xff,%eax
  402c3f:	83 f8 05             	cmp    $0x5,%eax
  402c42:	0f 85 07 00 00 00    	jne    402c4f <http_parser_execute+0x19ff>
  402c48:	c7 45 9c 18 00 00 00 	movl   $0x18,-0x64(%rbp)
  402c4f:	8b 7d 9c             	mov    -0x64(%rbp),%edi
  402c52:	0f be 75 d6          	movsbl -0x2a(%rbp),%esi
  402c56:	e8 65 4c 00 00       	callq  4078c0 <parse_url_char>
  402c5b:	89 45 9c             	mov    %eax,-0x64(%rbp)
  402c5e:	83 7d 9c 01          	cmpl   $0x1,-0x64(%rbp)
  402c62:	0f 94 c0             	sete   %al
  402c65:	34 ff                	xor    $0xff,%al
  402c67:	34 ff                	xor    $0xff,%al
  402c69:	24 01                	and    $0x1,%al
  402c6b:	0f b6 c0             	movzbl %al,%eax
  402c6e:	48 98                	cltq   
  402c70:	48 83 f8 00          	cmp    $0x0,%rax
  402c74:	0f 84 2a 00 00 00    	je     402ca4 <http_parser_execute+0x1a54>
  402c7a:	e9 00 00 00 00       	jmpq   402c7f <http_parser_execute+0x1a2f>
  402c7f:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  402c82:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402c86:	89 48 04             	mov    %ecx,0x4(%rax)
  402c89:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402c8d:	8b 48 14             	mov    0x14(%rax),%ecx
  402c90:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  402c96:	81 c9 00 00 00 11    	or     $0x11000000,%ecx
  402c9c:	89 48 14             	mov    %ecx,0x14(%rax)
  402c9f:	e9 98 4b 00 00       	jmpq   40783c <http_parser_execute+0x65ec>
  402ca4:	e9 25 44 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  402ca9:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  402cad:	89 85 f8 fe ff ff    	mov    %eax,-0x108(%rbp)
  402cb3:	83 e8 0a             	sub    $0xa,%eax
  402cb6:	0f 84 2d 00 00 00    	je     402ce9 <http_parser_execute+0x1a99>
  402cbc:	e9 00 00 00 00       	jmpq   402cc1 <http_parser_execute+0x1a71>
  402cc1:	8b 85 f8 fe ff ff    	mov    -0x108(%rbp),%eax
  402cc7:	83 e8 0d             	sub    $0xd,%eax
  402cca:	0f 84 19 00 00 00    	je     402ce9 <http_parser_execute+0x1a99>
  402cd0:	e9 00 00 00 00       	jmpq   402cd5 <http_parser_execute+0x1a85>
  402cd5:	8b 85 f8 fe ff ff    	mov    -0x108(%rbp),%eax
  402cdb:	83 e8 20             	sub    $0x20,%eax
  402cde:	0f 85 2f 00 00 00    	jne    402d13 <http_parser_execute+0x1ac3>
  402ce4:	e9 00 00 00 00       	jmpq   402ce9 <http_parser_execute+0x1a99>
  402ce9:	e9 00 00 00 00       	jmpq   402cee <http_parser_execute+0x1a9e>
  402cee:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  402cf1:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402cf5:	89 48 04             	mov    %ecx,0x4(%rax)
  402cf8:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402cfc:	8b 48 14             	mov    0x14(%rax),%ecx
  402cff:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  402d05:	81 c9 00 00 00 11    	or     $0x11000000,%ecx
  402d0b:	89 48 14             	mov    %ecx,0x14(%rax)
  402d0e:	e9 29 4b 00 00       	jmpq   40783c <http_parser_execute+0x65ec>
  402d13:	8b 7d 9c             	mov    -0x64(%rbp),%edi
  402d16:	0f be 75 d6          	movsbl -0x2a(%rbp),%esi
  402d1a:	e8 a1 4b 00 00       	callq  4078c0 <parse_url_char>
  402d1f:	89 45 9c             	mov    %eax,-0x64(%rbp)
  402d22:	83 7d 9c 01          	cmpl   $0x1,-0x64(%rbp)
  402d26:	0f 94 c0             	sete   %al
  402d29:	34 ff                	xor    $0xff,%al
  402d2b:	34 ff                	xor    $0xff,%al
  402d2d:	24 01                	and    $0x1,%al
  402d2f:	0f b6 c0             	movzbl %al,%eax
  402d32:	48 98                	cltq   
  402d34:	48 83 f8 00          	cmp    $0x0,%rax
  402d38:	0f 84 2a 00 00 00    	je     402d68 <http_parser_execute+0x1b18>
  402d3e:	e9 00 00 00 00       	jmpq   402d43 <http_parser_execute+0x1af3>
  402d43:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  402d46:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402d4a:	89 48 04             	mov    %ecx,0x4(%rax)
  402d4d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402d51:	8b 48 14             	mov    0x14(%rax),%ecx
  402d54:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  402d5a:	81 c9 00 00 00 11    	or     $0x11000000,%ecx
  402d60:	89 48 14             	mov    %ecx,0x14(%rax)
  402d63:	e9 d4 4a 00 00       	jmpq   40783c <http_parser_execute+0x65ec>
  402d68:	e9 00 00 00 00       	jmpq   402d6d <http_parser_execute+0x1b1d>
  402d6d:	e9 5c 43 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  402d72:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  402d76:	89 85 f4 fe ff ff    	mov    %eax,-0x10c(%rbp)
  402d7c:	83 e8 0a             	sub    $0xa,%eax
  402d7f:	0f 84 87 01 00 00    	je     402f0c <http_parser_execute+0x1cbc>
  402d85:	e9 00 00 00 00       	jmpq   402d8a <http_parser_execute+0x1b3a>
  402d8a:	8b 85 f4 fe ff ff    	mov    -0x10c(%rbp),%eax
  402d90:	83 e8 0d             	sub    $0xd,%eax
  402d93:	0f 84 73 01 00 00    	je     402f0c <http_parser_execute+0x1cbc>
  402d99:	e9 00 00 00 00       	jmpq   402d9e <http_parser_execute+0x1b4e>
  402d9e:	8b 85 f4 fe ff ff    	mov    -0x10c(%rbp),%eax
  402da4:	83 e8 20             	sub    $0x20,%eax
  402da7:	0f 85 dd 02 00 00    	jne    40308a <http_parser_execute+0x1e3a>
  402dad:	e9 00 00 00 00       	jmpq   402db2 <http_parser_execute+0x1b62>
  402db2:	c7 45 9c 20 00 00 00 	movl   $0x20,-0x64(%rbp)
  402db9:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402dbd:	8b 40 14             	mov    0x14(%rax),%eax
  402dc0:	c1 e8 18             	shr    $0x18,%eax
  402dc3:	83 e0 7f             	and    $0x7f,%eax
  402dc6:	83 f8 00             	cmp    $0x0,%eax
  402dc9:	0f 85 05 00 00 00    	jne    402dd4 <http_parser_execute+0x1b84>
  402dcf:	e9 28 00 00 00       	jmpq   402dfc <http_parser_execute+0x1bac>
  402dd4:	48 bf a0 06 41 00 00 	movabs $0x4106a0,%rdi
  402ddb:	00 00 00 
  402dde:	48 be c4 06 41 00 00 	movabs $0x4106c4,%rsi
  402de5:	00 00 00 
  402de8:	ba 34 04 00 00       	mov    $0x434,%edx
  402ded:	48 b9 d2 06 41 00 00 	movabs $0x4106d2,%rcx
  402df4:	00 00 00 
  402df7:	e8 94 e2 ff ff       	callq  401090 <__assert_fail@plt>
  402dfc:	48 83 7d b0 00       	cmpq   $0x0,-0x50(%rbp)
  402e01:	0f 84 fb 00 00 00    	je     402f02 <http_parser_execute+0x1cb2>
  402e07:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402e0b:	48 83 78 08 00       	cmpq   $0x0,0x8(%rax)
  402e10:	0f 95 c0             	setne  %al
  402e13:	34 ff                	xor    $0xff,%al
  402e15:	34 ff                	xor    $0xff,%al
  402e17:	24 01                	and    $0x1,%al
  402e19:	0f b6 c0             	movzbl %al,%eax
  402e1c:	48 98                	cltq   
  402e1e:	48 83 f8 00          	cmp    $0x0,%rax
  402e22:	0f 84 d2 00 00 00    	je     402efa <http_parser_execute+0x1caa>
  402e28:	8b 55 9c             	mov    -0x64(%rbp),%edx
  402e2b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402e2f:	8b 08                	mov    (%rax),%ecx
  402e31:	83 e2 7f             	and    $0x7f,%edx
  402e34:	c1 e2 0a             	shl    $0xa,%edx
  402e37:	81 e1 ff 03 fe ff    	and    $0xfffe03ff,%ecx
  402e3d:	09 d1                	or     %edx,%ecx
  402e3f:	89 08                	mov    %ecx,(%rax)
  402e41:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402e45:	48 8b 40 08          	mov    0x8(%rax),%rax
  402e49:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  402e4d:	48 8b 75 b0          	mov    -0x50(%rbp),%rsi
  402e51:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  402e55:	48 8b 4d b0          	mov    -0x50(%rbp),%rcx
  402e59:	48 29 ca             	sub    %rcx,%rdx
  402e5c:	ff d0                	callq  *%rax
  402e5e:	89 c1                	mov    %eax,%ecx
  402e60:	31 c0                	xor    %eax,%eax
  402e62:	39 c8                	cmp    %ecx,%eax
  402e64:	0f 95 c0             	setne  %al
  402e67:	34 ff                	xor    $0xff,%al
  402e69:	34 ff                	xor    $0xff,%al
  402e6b:	24 01                	and    $0x1,%al
  402e6d:	0f b6 c0             	movzbl %al,%eax
  402e70:	48 98                	cltq   
  402e72:	48 83 f8 00          	cmp    $0x0,%rax
  402e76:	0f 84 2a 00 00 00    	je     402ea6 <http_parser_execute+0x1c56>
  402e7c:	e9 00 00 00 00       	jmpq   402e81 <http_parser_execute+0x1c31>
  402e81:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  402e84:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402e88:	89 48 04             	mov    %ecx,0x4(%rax)
  402e8b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402e8f:	8b 48 14             	mov    0x14(%rax),%ecx
  402e92:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  402e98:	81 c9 00 00 00 02    	or     $0x2000000,%ecx
  402e9e:	89 48 14             	mov    %ecx,0x14(%rax)
  402ea1:	e9 00 00 00 00       	jmpq   402ea6 <http_parser_execute+0x1c56>
  402ea6:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402eaa:	8b 00                	mov    (%rax),%eax
  402eac:	c1 e8 0a             	shr    $0xa,%eax
  402eaf:	83 e0 7f             	and    $0x7f,%eax
  402eb2:	89 45 9c             	mov    %eax,-0x64(%rbp)
  402eb5:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402eb9:	8b 40 14             	mov    0x14(%rax),%eax
  402ebc:	c1 e8 18             	shr    $0x18,%eax
  402ebf:	83 e0 7f             	and    $0x7f,%eax
  402ec2:	83 f8 00             	cmp    $0x0,%eax
  402ec5:	0f 95 c0             	setne  %al
  402ec8:	34 ff                	xor    $0xff,%al
  402eca:	34 ff                	xor    $0xff,%al
  402ecc:	24 01                	and    $0x1,%al
  402ece:	0f b6 c0             	movzbl %al,%eax
  402ed1:	48 98                	cltq   
  402ed3:	48 83 f8 00          	cmp    $0x0,%rax
  402ed7:	0f 84 18 00 00 00    	je     402ef5 <http_parser_execute+0x1ca5>
  402edd:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  402ee1:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  402ee5:	48 29 c8             	sub    %rcx,%rax
  402ee8:	48 83 c0 01          	add    $0x1,%rax
  402eec:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  402ef0:	e9 be 49 00 00       	jmpq   4078b3 <http_parser_execute+0x6663>
  402ef5:	e9 00 00 00 00       	jmpq   402efa <http_parser_execute+0x1caa>
  402efa:	48 c7 45 b0 00 00 00 	movq   $0x0,-0x50(%rbp)
  402f01:	00 
  402f02:	e9 00 00 00 00       	jmpq   402f07 <http_parser_execute+0x1cb7>
  402f07:	e9 d8 01 00 00       	jmpq   4030e4 <http_parser_execute+0x1e94>
  402f0c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402f10:	66 c7 40 10 00 00    	movw   $0x0,0x10(%rax)
  402f16:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402f1a:	66 c7 40 12 09 00    	movw   $0x9,0x12(%rax)
  402f20:	0f be 55 d6          	movsbl -0x2a(%rbp),%edx
  402f24:	b8 2c 00 00 00       	mov    $0x2c,%eax
  402f29:	b9 2b 00 00 00       	mov    $0x2b,%ecx
  402f2e:	83 fa 0d             	cmp    $0xd,%edx
  402f31:	0f 44 c1             	cmove  %ecx,%eax
  402f34:	89 45 9c             	mov    %eax,-0x64(%rbp)
  402f37:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402f3b:	8b 40 14             	mov    0x14(%rax),%eax
  402f3e:	c1 e8 18             	shr    $0x18,%eax
  402f41:	83 e0 7f             	and    $0x7f,%eax
  402f44:	83 f8 00             	cmp    $0x0,%eax
  402f47:	0f 85 05 00 00 00    	jne    402f52 <http_parser_execute+0x1d02>
  402f4d:	e9 28 00 00 00       	jmpq   402f7a <http_parser_execute+0x1d2a>
  402f52:	48 bf a0 06 41 00 00 	movabs $0x4106a0,%rdi
  402f59:	00 00 00 
  402f5c:	48 be c4 06 41 00 00 	movabs $0x4106c4,%rsi
  402f63:	00 00 00 
  402f66:	ba 3d 04 00 00       	mov    $0x43d,%edx
  402f6b:	48 b9 d2 06 41 00 00 	movabs $0x4106d2,%rcx
  402f72:	00 00 00 
  402f75:	e8 16 e1 ff ff       	callq  401090 <__assert_fail@plt>
  402f7a:	48 83 7d b0 00       	cmpq   $0x0,-0x50(%rbp)
  402f7f:	0f 84 fb 00 00 00    	je     403080 <http_parser_execute+0x1e30>
  402f85:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402f89:	48 83 78 08 00       	cmpq   $0x0,0x8(%rax)
  402f8e:	0f 95 c0             	setne  %al
  402f91:	34 ff                	xor    $0xff,%al
  402f93:	34 ff                	xor    $0xff,%al
  402f95:	24 01                	and    $0x1,%al
  402f97:	0f b6 c0             	movzbl %al,%eax
  402f9a:	48 98                	cltq   
  402f9c:	48 83 f8 00          	cmp    $0x0,%rax
  402fa0:	0f 84 d2 00 00 00    	je     403078 <http_parser_execute+0x1e28>
  402fa6:	8b 55 9c             	mov    -0x64(%rbp),%edx
  402fa9:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402fad:	8b 08                	mov    (%rax),%ecx
  402faf:	83 e2 7f             	and    $0x7f,%edx
  402fb2:	c1 e2 0a             	shl    $0xa,%edx
  402fb5:	81 e1 ff 03 fe ff    	and    $0xfffe03ff,%ecx
  402fbb:	09 d1                	or     %edx,%ecx
  402fbd:	89 08                	mov    %ecx,(%rax)
  402fbf:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402fc3:	48 8b 40 08          	mov    0x8(%rax),%rax
  402fc7:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  402fcb:	48 8b 75 b0          	mov    -0x50(%rbp),%rsi
  402fcf:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  402fd3:	48 8b 4d b0          	mov    -0x50(%rbp),%rcx
  402fd7:	48 29 ca             	sub    %rcx,%rdx
  402fda:	ff d0                	callq  *%rax
  402fdc:	89 c1                	mov    %eax,%ecx
  402fde:	31 c0                	xor    %eax,%eax
  402fe0:	39 c8                	cmp    %ecx,%eax
  402fe2:	0f 95 c0             	setne  %al
  402fe5:	34 ff                	xor    $0xff,%al
  402fe7:	34 ff                	xor    $0xff,%al
  402fe9:	24 01                	and    $0x1,%al
  402feb:	0f b6 c0             	movzbl %al,%eax
  402fee:	48 98                	cltq   
  402ff0:	48 83 f8 00          	cmp    $0x0,%rax
  402ff4:	0f 84 2a 00 00 00    	je     403024 <http_parser_execute+0x1dd4>
  402ffa:	e9 00 00 00 00       	jmpq   402fff <http_parser_execute+0x1daf>
  402fff:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  403002:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  403006:	89 48 04             	mov    %ecx,0x4(%rax)
  403009:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40300d:	8b 48 14             	mov    0x14(%rax),%ecx
  403010:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  403016:	81 c9 00 00 00 02    	or     $0x2000000,%ecx
  40301c:	89 48 14             	mov    %ecx,0x14(%rax)
  40301f:	e9 00 00 00 00       	jmpq   403024 <http_parser_execute+0x1dd4>
  403024:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  403028:	8b 00                	mov    (%rax),%eax
  40302a:	c1 e8 0a             	shr    $0xa,%eax
  40302d:	83 e0 7f             	and    $0x7f,%eax
  403030:	89 45 9c             	mov    %eax,-0x64(%rbp)
  403033:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  403037:	8b 40 14             	mov    0x14(%rax),%eax
  40303a:	c1 e8 18             	shr    $0x18,%eax
  40303d:	83 e0 7f             	and    $0x7f,%eax
  403040:	83 f8 00             	cmp    $0x0,%eax
  403043:	0f 95 c0             	setne  %al
  403046:	34 ff                	xor    $0xff,%al
  403048:	34 ff                	xor    $0xff,%al
  40304a:	24 01                	and    $0x1,%al
  40304c:	0f b6 c0             	movzbl %al,%eax
  40304f:	48 98                	cltq   
  403051:	48 83 f8 00          	cmp    $0x0,%rax
  403055:	0f 84 18 00 00 00    	je     403073 <http_parser_execute+0x1e23>
  40305b:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  40305f:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  403063:	48 29 c8             	sub    %rcx,%rax
  403066:	48 83 c0 01          	add    $0x1,%rax
  40306a:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40306e:	e9 40 48 00 00       	jmpq   4078b3 <http_parser_execute+0x6663>
  403073:	e9 00 00 00 00       	jmpq   403078 <http_parser_execute+0x1e28>
  403078:	48 c7 45 b0 00 00 00 	movq   $0x0,-0x50(%rbp)
  40307f:	00 
  403080:	e9 00 00 00 00       	jmpq   403085 <http_parser_execute+0x1e35>
  403085:	e9 5a 00 00 00       	jmpq   4030e4 <http_parser_execute+0x1e94>
  40308a:	8b 7d 9c             	mov    -0x64(%rbp),%edi
  40308d:	0f be 75 d6          	movsbl -0x2a(%rbp),%esi
  403091:	e8 2a 48 00 00       	callq  4078c0 <parse_url_char>
  403096:	89 45 9c             	mov    %eax,-0x64(%rbp)
  403099:	83 7d 9c 01          	cmpl   $0x1,-0x64(%rbp)
  40309d:	0f 94 c0             	sete   %al
  4030a0:	34 ff                	xor    $0xff,%al
  4030a2:	34 ff                	xor    $0xff,%al
  4030a4:	24 01                	and    $0x1,%al
  4030a6:	0f b6 c0             	movzbl %al,%eax
  4030a9:	48 98                	cltq   
  4030ab:	48 83 f8 00          	cmp    $0x0,%rax
  4030af:	0f 84 2a 00 00 00    	je     4030df <http_parser_execute+0x1e8f>
  4030b5:	e9 00 00 00 00       	jmpq   4030ba <http_parser_execute+0x1e6a>
  4030ba:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  4030bd:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4030c1:	89 48 04             	mov    %ecx,0x4(%rax)
  4030c4:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4030c8:	8b 48 14             	mov    0x14(%rax),%ecx
  4030cb:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  4030d1:	81 c9 00 00 00 11    	or     $0x11000000,%ecx
  4030d7:	89 48 14             	mov    %ecx,0x14(%rax)
  4030da:	e9 5d 47 00 00       	jmpq   40783c <http_parser_execute+0x65ec>
  4030df:	e9 00 00 00 00       	jmpq   4030e4 <http_parser_execute+0x1e94>
  4030e4:	e9 e5 3f 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  4030e9:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  4030ed:	89 85 f0 fe ff ff    	mov    %eax,-0x110(%rbp)
  4030f3:	83 e8 20             	sub    $0x20,%eax
  4030f6:	0f 84 2d 00 00 00    	je     403129 <http_parser_execute+0x1ed9>
  4030fc:	e9 00 00 00 00       	jmpq   403101 <http_parser_execute+0x1eb1>
  403101:	8b 85 f0 fe ff ff    	mov    -0x110(%rbp),%eax
  403107:	83 e8 48             	sub    $0x48,%eax
  40310a:	0f 84 1e 00 00 00    	je     40312e <http_parser_execute+0x1ede>
  403110:	e9 00 00 00 00       	jmpq   403115 <http_parser_execute+0x1ec5>
  403115:	8b 85 f0 fe ff ff    	mov    -0x110(%rbp),%eax
  40311b:	83 e8 49             	sub    $0x49,%eax
  40311e:	0f 84 16 00 00 00    	je     40313a <http_parser_execute+0x1eea>
  403124:	e9 3a 00 00 00       	jmpq   403163 <http_parser_execute+0x1f13>
  403129:	e9 5f 00 00 00       	jmpq   40318d <http_parser_execute+0x1f3d>
  40312e:	c7 45 9c 21 00 00 00 	movl   $0x21,-0x64(%rbp)
  403135:	e9 53 00 00 00       	jmpq   40318d <http_parser_execute+0x1f3d>
  40313a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40313e:	8b 40 14             	mov    0x14(%rax),%eax
  403141:	c1 e8 10             	shr    $0x10,%eax
  403144:	25 ff 00 00 00       	and    $0xff,%eax
  403149:	83 f8 21             	cmp    $0x21,%eax
  40314c:	0f 85 0c 00 00 00    	jne    40315e <http_parser_execute+0x1f0e>
  403152:	c7 45 9c 25 00 00 00 	movl   $0x25,-0x64(%rbp)
  403159:	e9 2f 00 00 00       	jmpq   40318d <http_parser_execute+0x1f3d>
  40315e:	e9 00 00 00 00       	jmpq   403163 <http_parser_execute+0x1f13>
  403163:	e9 00 00 00 00       	jmpq   403168 <http_parser_execute+0x1f18>
  403168:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  40316b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40316f:	89 48 04             	mov    %ecx,0x4(%rax)
  403172:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  403176:	8b 48 14             	mov    0x14(%rax),%ecx
  403179:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  40317f:	81 c9 00 00 00 1c    	or     $0x1c000000,%ecx
  403185:	89 48 14             	mov    %ecx,0x14(%rax)
  403188:	e9 af 46 00 00       	jmpq   40783c <http_parser_execute+0x65ec>
  40318d:	e9 3c 3f 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  403192:	e9 00 00 00 00       	jmpq   403197 <http_parser_execute+0x1f47>
  403197:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  40319b:	83 f8 54             	cmp    $0x54,%eax
  40319e:	0f 84 2a 00 00 00    	je     4031ce <http_parser_execute+0x1f7e>
  4031a4:	e9 00 00 00 00       	jmpq   4031a9 <http_parser_execute+0x1f59>
  4031a9:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  4031ac:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4031b0:	89 48 04             	mov    %ecx,0x4(%rax)
  4031b3:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4031b7:	8b 48 14             	mov    0x14(%rax),%ecx
  4031ba:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  4031c0:	81 c9 00 00 00 1e    	or     $0x1e000000,%ecx
  4031c6:	89 48 14             	mov    %ecx,0x14(%rax)
  4031c9:	e9 6e 46 00 00       	jmpq   40783c <http_parser_execute+0x65ec>
  4031ce:	e9 00 00 00 00       	jmpq   4031d3 <http_parser_execute+0x1f83>
  4031d3:	c7 45 9c 22 00 00 00 	movl   $0x22,-0x64(%rbp)
  4031da:	e9 ef 3e 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  4031df:	e9 00 00 00 00       	jmpq   4031e4 <http_parser_execute+0x1f94>
  4031e4:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  4031e8:	83 f8 54             	cmp    $0x54,%eax
  4031eb:	0f 84 2a 00 00 00    	je     40321b <http_parser_execute+0x1fcb>
  4031f1:	e9 00 00 00 00       	jmpq   4031f6 <http_parser_execute+0x1fa6>
  4031f6:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  4031f9:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4031fd:	89 48 04             	mov    %ecx,0x4(%rax)
  403200:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  403204:	8b 48 14             	mov    0x14(%rax),%ecx
  403207:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  40320d:	81 c9 00 00 00 1e    	or     $0x1e000000,%ecx
  403213:	89 48 14             	mov    %ecx,0x14(%rax)
  403216:	e9 21 46 00 00       	jmpq   40783c <http_parser_execute+0x65ec>
  40321b:	e9 00 00 00 00       	jmpq   403220 <http_parser_execute+0x1fd0>
  403220:	c7 45 9c 23 00 00 00 	movl   $0x23,-0x64(%rbp)
  403227:	e9 a2 3e 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  40322c:	e9 00 00 00 00       	jmpq   403231 <http_parser_execute+0x1fe1>
  403231:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  403235:	83 f8 50             	cmp    $0x50,%eax
  403238:	0f 84 2a 00 00 00    	je     403268 <http_parser_execute+0x2018>
  40323e:	e9 00 00 00 00       	jmpq   403243 <http_parser_execute+0x1ff3>
  403243:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  403246:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40324a:	89 48 04             	mov    %ecx,0x4(%rax)
  40324d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  403251:	8b 48 14             	mov    0x14(%rax),%ecx
  403254:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  40325a:	81 c9 00 00 00 1e    	or     $0x1e000000,%ecx
  403260:	89 48 14             	mov    %ecx,0x14(%rax)
  403263:	e9 d4 45 00 00       	jmpq   40783c <http_parser_execute+0x65ec>
  403268:	e9 00 00 00 00       	jmpq   40326d <http_parser_execute+0x201d>
  40326d:	c7 45 9c 24 00 00 00 	movl   $0x24,-0x64(%rbp)
  403274:	e9 55 3e 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  403279:	e9 00 00 00 00       	jmpq   40327e <http_parser_execute+0x202e>
  40327e:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  403282:	83 f8 43             	cmp    $0x43,%eax
  403285:	0f 84 2a 00 00 00    	je     4032b5 <http_parser_execute+0x2065>
  40328b:	e9 00 00 00 00       	jmpq   403290 <http_parser_execute+0x2040>
  403290:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  403293:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  403297:	89 48 04             	mov    %ecx,0x4(%rax)
  40329a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40329e:	8b 48 14             	mov    0x14(%rax),%ecx
  4032a1:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  4032a7:	81 c9 00 00 00 1e    	or     $0x1e000000,%ecx
  4032ad:	89 48 14             	mov    %ecx,0x14(%rax)
  4032b0:	e9 87 45 00 00       	jmpq   40783c <http_parser_execute+0x65ec>
  4032b5:	e9 00 00 00 00       	jmpq   4032ba <http_parser_execute+0x206a>
  4032ba:	c7 45 9c 26 00 00 00 	movl   $0x26,-0x64(%rbp)
  4032c1:	e9 08 3e 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  4032c6:	e9 00 00 00 00       	jmpq   4032cb <http_parser_execute+0x207b>
  4032cb:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  4032cf:	83 f8 45             	cmp    $0x45,%eax
  4032d2:	0f 84 2a 00 00 00    	je     403302 <http_parser_execute+0x20b2>
  4032d8:	e9 00 00 00 00       	jmpq   4032dd <http_parser_execute+0x208d>
  4032dd:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  4032e0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4032e4:	89 48 04             	mov    %ecx,0x4(%rax)
  4032e7:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4032eb:	8b 48 14             	mov    0x14(%rax),%ecx
  4032ee:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  4032f4:	81 c9 00 00 00 1e    	or     $0x1e000000,%ecx
  4032fa:	89 48 14             	mov    %ecx,0x14(%rax)
  4032fd:	e9 3a 45 00 00       	jmpq   40783c <http_parser_execute+0x65ec>
  403302:	e9 00 00 00 00       	jmpq   403307 <http_parser_execute+0x20b7>
  403307:	c7 45 9c 24 00 00 00 	movl   $0x24,-0x64(%rbp)
  40330e:	e9 bb 3d 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  403313:	e9 00 00 00 00       	jmpq   403318 <http_parser_execute+0x20c8>
  403318:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  40331c:	83 f8 2f             	cmp    $0x2f,%eax
  40331f:	0f 84 2a 00 00 00    	je     40334f <http_parser_execute+0x20ff>
  403325:	e9 00 00 00 00       	jmpq   40332a <http_parser_execute+0x20da>
  40332a:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  40332d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  403331:	89 48 04             	mov    %ecx,0x4(%rax)
  403334:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  403338:	8b 48 14             	mov    0x14(%rax),%ecx
  40333b:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  403341:	81 c9 00 00 00 1e    	or     $0x1e000000,%ecx
  403347:	89 48 14             	mov    %ecx,0x14(%rax)
  40334a:	e9 ed 44 00 00       	jmpq   40783c <http_parser_execute+0x65ec>
  40334f:	e9 00 00 00 00       	jmpq   403354 <http_parser_execute+0x2104>
  403354:	c7 45 9c 27 00 00 00 	movl   $0x27,-0x64(%rbp)
  40335b:	e9 6e 3d 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  403360:	0f be 4d d6          	movsbl -0x2a(%rbp),%ecx
  403364:	31 c0                	xor    %eax,%eax
  403366:	83 f9 30             	cmp    $0x30,%ecx
  403369:	88 85 ef fe ff ff    	mov    %al,-0x111(%rbp)
  40336f:	0f 8c 10 00 00 00    	jl     403385 <http_parser_execute+0x2135>
  403375:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  403379:	83 f8 39             	cmp    $0x39,%eax
  40337c:	0f 9e c0             	setle  %al
  40337f:	88 85 ef fe ff ff    	mov    %al,-0x111(%rbp)
  403385:	8a 85 ef fe ff ff    	mov    -0x111(%rbp),%al
  40338b:	34 ff                	xor    $0xff,%al
  40338d:	34 ff                	xor    $0xff,%al
  40338f:	34 ff                	xor    $0xff,%al
  403391:	24 01                	and    $0x1,%al
  403393:	0f b6 c0             	movzbl %al,%eax
  403396:	48 98                	cltq   
  403398:	48 83 f8 00          	cmp    $0x0,%rax
  40339c:	0f 84 2a 00 00 00    	je     4033cc <http_parser_execute+0x217c>
  4033a2:	e9 00 00 00 00       	jmpq   4033a7 <http_parser_execute+0x2157>
  4033a7:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  4033aa:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4033ae:	89 48 04             	mov    %ecx,0x4(%rax)
  4033b1:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4033b5:	8b 48 14             	mov    0x14(%rax),%ecx
  4033b8:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  4033be:	81 c9 00 00 00 0e    	or     $0xe000000,%ecx
  4033c4:	89 48 14             	mov    %ecx,0x14(%rax)
  4033c7:	e9 70 44 00 00       	jmpq   40783c <http_parser_execute+0x65ec>
  4033cc:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  4033d0:	83 e8 30             	sub    $0x30,%eax
  4033d3:	66 89 c1             	mov    %ax,%cx
  4033d6:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4033da:	66 89 48 10          	mov    %cx,0x10(%rax)
  4033de:	c7 45 9c 28 00 00 00 	movl   $0x28,-0x64(%rbp)
  4033e5:	e9 e4 3c 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  4033ea:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  4033ee:	83 f8 2e             	cmp    $0x2e,%eax
  4033f1:	0f 95 c0             	setne  %al
  4033f4:	34 ff                	xor    $0xff,%al
  4033f6:	34 ff                	xor    $0xff,%al
  4033f8:	24 01                	and    $0x1,%al
  4033fa:	0f b6 c0             	movzbl %al,%eax
  4033fd:	48 98                	cltq   
  4033ff:	48 83 f8 00          	cmp    $0x0,%rax
  403403:	0f 84 2a 00 00 00    	je     403433 <http_parser_execute+0x21e3>
  403409:	e9 00 00 00 00       	jmpq   40340e <http_parser_execute+0x21be>
  40340e:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  403411:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  403415:	89 48 04             	mov    %ecx,0x4(%rax)
  403418:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40341c:	8b 48 14             	mov    0x14(%rax),%ecx
  40341f:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  403425:	81 c9 00 00 00 0e    	or     $0xe000000,%ecx
  40342b:	89 48 14             	mov    %ecx,0x14(%rax)
  40342e:	e9 09 44 00 00       	jmpq   40783c <http_parser_execute+0x65ec>
  403433:	c7 45 9c 29 00 00 00 	movl   $0x29,-0x64(%rbp)
  40343a:	e9 8f 3c 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  40343f:	0f be 4d d6          	movsbl -0x2a(%rbp),%ecx
  403443:	31 c0                	xor    %eax,%eax
  403445:	83 f9 30             	cmp    $0x30,%ecx
  403448:	88 85 ee fe ff ff    	mov    %al,-0x112(%rbp)
  40344e:	0f 8c 10 00 00 00    	jl     403464 <http_parser_execute+0x2214>
  403454:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  403458:	83 f8 39             	cmp    $0x39,%eax
  40345b:	0f 9e c0             	setle  %al
  40345e:	88 85 ee fe ff ff    	mov    %al,-0x112(%rbp)
  403464:	8a 85 ee fe ff ff    	mov    -0x112(%rbp),%al
  40346a:	34 ff                	xor    $0xff,%al
  40346c:	34 ff                	xor    $0xff,%al
  40346e:	34 ff                	xor    $0xff,%al
  403470:	24 01                	and    $0x1,%al
  403472:	0f b6 c0             	movzbl %al,%eax
  403475:	48 98                	cltq   
  403477:	48 83 f8 00          	cmp    $0x0,%rax
  40347b:	0f 84 2a 00 00 00    	je     4034ab <http_parser_execute+0x225b>
  403481:	e9 00 00 00 00       	jmpq   403486 <http_parser_execute+0x2236>
  403486:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  403489:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40348d:	89 48 04             	mov    %ecx,0x4(%rax)
  403490:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  403494:	8b 48 14             	mov    0x14(%rax),%ecx
  403497:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  40349d:	81 c9 00 00 00 0e    	or     $0xe000000,%ecx
  4034a3:	89 48 14             	mov    %ecx,0x14(%rax)
  4034a6:	e9 91 43 00 00       	jmpq   40783c <http_parser_execute+0x65ec>
  4034ab:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  4034af:	83 e8 30             	sub    $0x30,%eax
  4034b2:	66 89 c1             	mov    %ax,%cx
  4034b5:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4034b9:	66 89 48 12          	mov    %cx,0x12(%rax)
  4034bd:	c7 45 9c 2a 00 00 00 	movl   $0x2a,-0x64(%rbp)
  4034c4:	e9 05 3c 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  4034c9:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  4034cd:	83 f8 0d             	cmp    $0xd,%eax
  4034d0:	0f 85 0c 00 00 00    	jne    4034e2 <http_parser_execute+0x2292>
  4034d6:	c7 45 9c 2b 00 00 00 	movl   $0x2b,-0x64(%rbp)
  4034dd:	e9 ec 3b 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  4034e2:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  4034e6:	83 f8 0a             	cmp    $0xa,%eax
  4034e9:	0f 85 0c 00 00 00    	jne    4034fb <http_parser_execute+0x22ab>
  4034ef:	c7 45 9c 2c 00 00 00 	movl   $0x2c,-0x64(%rbp)
  4034f6:	e9 d3 3b 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  4034fb:	e9 00 00 00 00       	jmpq   403500 <http_parser_execute+0x22b0>
  403500:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  403503:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  403507:	89 48 04             	mov    %ecx,0x4(%rax)
  40350a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40350e:	8b 48 14             	mov    0x14(%rax),%ecx
  403511:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  403517:	81 c9 00 00 00 0e    	or     $0xe000000,%ecx
  40351d:	89 48 14             	mov    %ecx,0x14(%rax)
  403520:	e9 17 43 00 00       	jmpq   40783c <http_parser_execute+0x65ec>
  403525:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  403529:	83 f8 0a             	cmp    $0xa,%eax
  40352c:	0f 95 c0             	setne  %al
  40352f:	34 ff                	xor    $0xff,%al
  403531:	34 ff                	xor    $0xff,%al
  403533:	24 01                	and    $0x1,%al
  403535:	0f b6 c0             	movzbl %al,%eax
  403538:	48 98                	cltq   
  40353a:	48 83 f8 00          	cmp    $0x0,%rax
  40353e:	0f 84 2a 00 00 00    	je     40356e <http_parser_execute+0x231e>
  403544:	e9 00 00 00 00       	jmpq   403549 <http_parser_execute+0x22f9>
  403549:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  40354c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  403550:	89 48 04             	mov    %ecx,0x4(%rax)
  403553:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  403557:	8b 48 14             	mov    0x14(%rax),%ecx
  40355a:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  403560:	81 c9 00 00 00 17    	or     $0x17000000,%ecx
  403566:	89 48 14             	mov    %ecx,0x14(%rax)
  403569:	e9 ce 42 00 00       	jmpq   40783c <http_parser_execute+0x65ec>
  40356e:	c7 45 9c 2c 00 00 00 	movl   $0x2c,-0x64(%rbp)
  403575:	e9 54 3b 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  40357a:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  40357e:	83 f8 0d             	cmp    $0xd,%eax
  403581:	0f 85 0c 00 00 00    	jne    403593 <http_parser_execute+0x2343>
  403587:	c7 45 9c 39 00 00 00 	movl   $0x39,-0x64(%rbp)
  40358e:	e9 3b 3b 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  403593:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  403597:	83 f8 0a             	cmp    $0xa,%eax
  40359a:	0f 85 0c 00 00 00    	jne    4035ac <http_parser_execute+0x235c>
  4035a0:	c7 45 9c 39 00 00 00 	movl   $0x39,-0x64(%rbp)
  4035a7:	e9 2a e0 ff ff       	jmpq   4015d6 <http_parser_execute+0x386>
  4035ac:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  4035b0:	83 f8 20             	cmp    $0x20,%eax
  4035b3:	0f 85 0d 00 00 00    	jne    4035c6 <http_parser_execute+0x2376>
  4035b9:	31 c0                	xor    %eax,%eax
  4035bb:	89 85 e8 fe ff ff    	mov    %eax,-0x118(%rbp)
  4035c1:	e9 12 00 00 00       	jmpq   4035d8 <http_parser_execute+0x2388>
  4035c6:	0f b6 45 d6          	movzbl -0x2a(%rbp),%eax
  4035ca:	0f be 04 05 a0 04 41 	movsbl 0x4104a0(,%rax,1),%eax
  4035d1:	00 
  4035d2:	89 85 e8 fe ff ff    	mov    %eax,-0x118(%rbp)
  4035d8:	8b 85 e8 fe ff ff    	mov    -0x118(%rbp),%eax
  4035de:	88 45 d7             	mov    %al,-0x29(%rbp)
  4035e1:	80 7d d7 00          	cmpb   $0x0,-0x29(%rbp)
  4035e5:	0f 95 c0             	setne  %al
  4035e8:	34 ff                	xor    $0xff,%al
  4035ea:	34 ff                	xor    $0xff,%al
  4035ec:	34 ff                	xor    $0xff,%al
  4035ee:	24 01                	and    $0x1,%al
  4035f0:	0f b6 c0             	movzbl %al,%eax
  4035f3:	48 98                	cltq   
  4035f5:	48 83 f8 00          	cmp    $0x0,%rax
  4035f9:	0f 84 2a 00 00 00    	je     403629 <http_parser_execute+0x23d9>
  4035ff:	e9 00 00 00 00       	jmpq   403604 <http_parser_execute+0x23b4>
  403604:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  403607:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40360b:	89 48 04             	mov    %ecx,0x4(%rax)
  40360e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  403612:	8b 48 14             	mov    0x14(%rax),%ecx
  403615:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  40361b:	81 c9 00 00 00 18    	or     $0x18000000,%ecx
  403621:	89 48 14             	mov    %ecx,0x14(%rax)
  403624:	e9 13 42 00 00       	jmpq   40783c <http_parser_execute+0x65ec>
  403629:	e9 00 00 00 00       	jmpq   40362e <http_parser_execute+0x23de>
  40362e:	48 83 7d c0 00       	cmpq   $0x0,-0x40(%rbp)
  403633:	0f 85 08 00 00 00    	jne    403641 <http_parser_execute+0x23f1>
  403639:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  40363d:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  403641:	e9 00 00 00 00       	jmpq   403646 <http_parser_execute+0x23f6>
  403646:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40364a:	8b 08                	mov    (%rax),%ecx
  40364c:	81 e1 ff ff ff e0    	and    $0xe0ffffff,%ecx
  403652:	89 08                	mov    %ecx,(%rax)
  403654:	c7 45 9c 2d 00 00 00 	movl   $0x2d,-0x64(%rbp)
  40365b:	0f be 45 d7          	movsbl -0x29(%rbp),%eax
  40365f:	83 c0 9d             	add    $0xffffff9d,%eax
  403662:	89 c1                	mov    %eax,%ecx
  403664:	48 89 8d e0 fe ff ff 	mov    %rcx,-0x120(%rbp)
  40366b:	83 e8 12             	sub    $0x12,%eax
  40366e:	0f 87 75 00 00 00    	ja     4036e9 <http_parser_execute+0x2499>
  403674:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
  40367b:	48 8b 04 c5 58 f4 40 	mov    0x40f458(,%rax,8),%rax
  403682:	00 
  403683:	ff e0                	jmpq   *%rax
  403685:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  403689:	8b 08                	mov    (%rax),%ecx
  40368b:	81 e1 ff ff 01 ff    	and    $0xff01ffff,%ecx
  403691:	81 c9 00 00 02 00    	or     $0x20000,%ecx
  403697:	89 08                	mov    %ecx,(%rax)
  403699:	e9 5c 00 00 00       	jmpq   4036fa <http_parser_execute+0x24aa>
  40369e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4036a2:	8b 08                	mov    (%rax),%ecx
  4036a4:	81 e1 ff ff 01 ff    	and    $0xff01ffff,%ecx
  4036aa:	81 c9 00 00 0a 00    	or     $0xa0000,%ecx
  4036b0:	89 08                	mov    %ecx,(%rax)
  4036b2:	e9 43 00 00 00       	jmpq   4036fa <http_parser_execute+0x24aa>
  4036b7:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4036bb:	8b 08                	mov    (%rax),%ecx
  4036bd:	81 e1 ff ff 01 ff    	and    $0xff01ffff,%ecx
  4036c3:	81 c9 00 00 0e 00    	or     $0xe0000,%ecx
  4036c9:	89 08                	mov    %ecx,(%rax)
  4036cb:	e9 2a 00 00 00       	jmpq   4036fa <http_parser_execute+0x24aa>
  4036d0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4036d4:	8b 08                	mov    (%rax),%ecx
  4036d6:	81 e1 ff ff 01 ff    	and    $0xff01ffff,%ecx
  4036dc:	81 c9 00 00 10 00    	or     $0x100000,%ecx
  4036e2:	89 08                	mov    %ecx,(%rax)
  4036e4:	e9 11 00 00 00       	jmpq   4036fa <http_parser_execute+0x24aa>
  4036e9:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4036ed:	8b 08                	mov    (%rax),%ecx
  4036ef:	81 e1 ff ff 01 ff    	and    $0xff01ffff,%ecx
  4036f5:	83 c9 00             	or     $0x0,%ecx
  4036f8:	89 08                	mov    %ecx,(%rax)
  4036fa:	e9 cf 39 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  4036ff:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  403703:	48 89 45 80          	mov    %rax,-0x80(%rbp)
  403707:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  40370b:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  40370f:	48 03 4d d8          	add    -0x28(%rbp),%rcx
  403713:	48 39 c8             	cmp    %rcx,%rax
  403716:	0f 84 5d 06 00 00    	je     403d79 <http_parser_execute+0x2b29>
  40371c:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  403720:	8a 00                	mov    (%rax),%al
  403722:	88 45 d6             	mov    %al,-0x2a(%rbp)
  403725:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  403729:	83 f8 20             	cmp    $0x20,%eax
  40372c:	0f 85 0d 00 00 00    	jne    40373f <http_parser_execute+0x24ef>
  403732:	31 c0                	xor    %eax,%eax
  403734:	89 85 dc fe ff ff    	mov    %eax,-0x124(%rbp)
  40373a:	e9 12 00 00 00       	jmpq   403751 <http_parser_execute+0x2501>
  40373f:	0f b6 45 d6          	movzbl -0x2a(%rbp),%eax
  403743:	0f be 04 05 a0 04 41 	movsbl 0x4104a0(,%rax,1),%eax
  40374a:	00 
  40374b:	89 85 dc fe ff ff    	mov    %eax,-0x124(%rbp)
  403751:	8b 85 dc fe ff ff    	mov    -0x124(%rbp),%eax
  403757:	88 45 d7             	mov    %al,-0x29(%rbp)
  40375a:	80 7d d7 00          	cmpb   $0x0,-0x29(%rbp)
  40375e:	0f 85 05 00 00 00    	jne    403769 <http_parser_execute+0x2519>
  403764:	e9 10 06 00 00       	jmpq   403d79 <http_parser_execute+0x2b29>
  403769:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40376d:	8b 00                	mov    (%rax),%eax
  40376f:	c1 e8 11             	shr    $0x11,%eax
  403772:	83 e0 7f             	and    $0x7f,%eax
  403775:	89 c1                	mov    %eax,%ecx
  403777:	48 89 8d d0 fe ff ff 	mov    %rcx,-0x130(%rbp)
  40377e:	83 e8 0e             	sub    $0xe,%eax
  403781:	0f 87 b4 05 00 00    	ja     403d3b <http_parser_execute+0x2aeb>
  403787:	48 8b 85 d0 fe ff ff 	mov    -0x130(%rbp),%rax
  40378e:	48 8b 04 c5 e0 f3 40 	mov    0x40f3e0(,%rax,8),%rax
  403795:	00 
  403796:	ff e0                	jmpq   *%rax
  403798:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40379c:	48 03 45 d8          	add    -0x28(%rbp),%rax
  4037a0:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
  4037a4:	48 29 c8             	sub    %rcx,%rax
  4037a7:	48 89 85 78 ff ff ff 	mov    %rax,-0x88(%rbp)
  4037ae:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  4037b2:	48 89 85 c8 fe ff ff 	mov    %rax,-0x138(%rbp)
  4037b9:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
  4037c0:	8b 0c 25 c0 e0 8b 00 	mov    0x8be0c0,%ecx
  4037c7:	48 39 c8             	cmp    %rcx,%rax
  4037ca:	0f 83 13 00 00 00    	jae    4037e3 <http_parser_execute+0x2593>
  4037d0:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
  4037d7:	48 89 85 c0 fe ff ff 	mov    %rax,-0x140(%rbp)
  4037de:	e9 0e 00 00 00       	jmpq   4037f1 <http_parser_execute+0x25a1>
  4037e3:	8b 04 25 c0 e0 8b 00 	mov    0x8be0c0,%eax
  4037ea:	48 89 85 c0 fe ff ff 	mov    %rax,-0x140(%rbp)
  4037f1:	48 8b 85 c8 fe ff ff 	mov    -0x138(%rbp),%rax
  4037f8:	48 8b 8d c0 fe ff ff 	mov    -0x140(%rbp),%rcx
  4037ff:	48 01 c8             	add    %rcx,%rax
  403802:	48 89 85 70 ff ff ff 	mov    %rax,-0x90(%rbp)
  403809:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
  40380d:	48 83 c1 01          	add    $0x1,%rcx
  403811:	31 c0                	xor    %eax,%eax
  403813:	48 3b 8d 70 ff ff ff 	cmp    -0x90(%rbp),%rcx
  40381a:	88 85 bf fe ff ff    	mov    %al,-0x141(%rbp)
  403820:	0f 83 46 00 00 00    	jae    40386c <http_parser_execute+0x261c>
  403826:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  40382a:	0f be 40 01          	movsbl 0x1(%rax),%eax
  40382e:	83 f8 20             	cmp    $0x20,%eax
  403831:	0f 85 0d 00 00 00    	jne    403844 <http_parser_execute+0x25f4>
  403837:	31 c0                	xor    %eax,%eax
  403839:	89 85 b8 fe ff ff    	mov    %eax,-0x148(%rbp)
  40383f:	e9 16 00 00 00       	jmpq   40385a <http_parser_execute+0x260a>
  403844:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  403848:	0f b6 40 01          	movzbl 0x1(%rax),%eax
  40384c:	0f be 04 05 a0 04 41 	movsbl 0x4104a0(,%rax,1),%eax
  403853:	00 
  403854:	89 85 b8 fe ff ff    	mov    %eax,-0x148(%rbp)
  40385a:	8b 85 b8 fe ff ff    	mov    -0x148(%rbp),%eax
  403860:	83 f8 00             	cmp    $0x0,%eax
  403863:	0f 95 c0             	setne  %al
  403866:	88 85 bf fe ff ff    	mov    %al,-0x141(%rbp)
  40386c:	8a 85 bf fe ff ff    	mov    -0x141(%rbp),%al
  403872:	a8 01                	test   $0x1,%al
  403874:	0f 85 05 00 00 00    	jne    40387f <http_parser_execute+0x262f>
  40387a:	e9 11 00 00 00       	jmpq   403890 <http_parser_execute+0x2640>
  40387f:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  403883:	48 83 c0 01          	add    $0x1,%rax
  403887:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  40388b:	e9 79 ff ff ff       	jmpq   403809 <http_parser_execute+0x25b9>
  403890:	e9 ce 04 00 00       	jmpq   403d63 <http_parser_execute+0x2b13>
  403895:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  403899:	8b 10                	mov    (%rax),%edx
  40389b:	c1 ea 18             	shr    $0x18,%edx
  40389e:	83 e2 1f             	and    $0x1f,%edx
  4038a1:	83 c2 01             	add    $0x1,%edx
  4038a4:	8b 08                	mov    (%rax),%ecx
  4038a6:	83 e2 1f             	and    $0x1f,%edx
  4038a9:	c1 e2 18             	shl    $0x18,%edx
  4038ac:	81 e1 ff ff ff e0    	and    $0xe0ffffff,%ecx
  4038b2:	09 d1                	or     %edx,%ecx
  4038b4:	89 08                	mov    %ecx,(%rax)
  4038b6:	0f be 4d d7          	movsbl -0x29(%rbp),%ecx
  4038ba:	31 d2                	xor    %edx,%edx
  4038bc:	b8 02 00 00 00       	mov    $0x2,%eax
  4038c1:	83 f9 6f             	cmp    $0x6f,%ecx
  4038c4:	0f 44 d0             	cmove  %eax,%edx
  4038c7:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4038cb:	8b 08                	mov    (%rax),%ecx
  4038cd:	83 e2 7f             	and    $0x7f,%edx
  4038d0:	c1 e2 11             	shl    $0x11,%edx
  4038d3:	81 e1 ff ff 01 ff    	and    $0xff01ffff,%ecx
  4038d9:	09 d1                	or     %edx,%ecx
  4038db:	89 08                	mov    %ecx,(%rax)
  4038dd:	e9 81 04 00 00       	jmpq   403d63 <http_parser_execute+0x2b13>
  4038e2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4038e6:	8b 10                	mov    (%rax),%edx
  4038e8:	c1 ea 18             	shr    $0x18,%edx
  4038eb:	83 e2 1f             	and    $0x1f,%edx
  4038ee:	83 c2 01             	add    $0x1,%edx
  4038f1:	8b 08                	mov    (%rax),%ecx
  4038f3:	83 e2 1f             	and    $0x1f,%edx
  4038f6:	c1 e2 18             	shl    $0x18,%edx
  4038f9:	81 e1 ff ff ff e0    	and    $0xe0ffffff,%ecx
  4038ff:	09 d1                	or     %edx,%ecx
  403901:	89 08                	mov    %ecx,(%rax)
  403903:	0f be 4d d7          	movsbl -0x29(%rbp),%ecx
  403907:	31 d2                	xor    %edx,%edx
  403909:	b8 03 00 00 00       	mov    $0x3,%eax
  40390e:	83 f9 6e             	cmp    $0x6e,%ecx
  403911:	0f 44 d0             	cmove  %eax,%edx
  403914:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  403918:	8b 08                	mov    (%rax),%ecx
  40391a:	83 e2 7f             	and    $0x7f,%edx
  40391d:	c1 e2 11             	shl    $0x11,%edx
  403920:	81 e1 ff ff 01 ff    	and    $0xff01ffff,%ecx
  403926:	09 d1                	or     %edx,%ecx
  403928:	89 08                	mov    %ecx,(%rax)
  40392a:	e9 34 04 00 00       	jmpq   403d63 <http_parser_execute+0x2b13>
  40392f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  403933:	8b 08                	mov    (%rax),%ecx
  403935:	89 ca                	mov    %ecx,%edx
  403937:	c1 ea 18             	shr    $0x18,%edx
  40393a:	83 c2 01             	add    $0x1,%edx
  40393d:	83 e2 1f             	and    $0x1f,%edx
  403940:	c1 e2 18             	shl    $0x18,%edx
  403943:	81 e1 ff ff ff e0    	and    $0xe0ffffff,%ecx
  403949:	09 d1                	or     %edx,%ecx
  40394b:	89 08                	mov    %ecx,(%rax)
  40394d:	0f be 45 d7          	movsbl -0x29(%rbp),%eax
  403951:	89 85 b4 fe ff ff    	mov    %eax,-0x14c(%rbp)
  403957:	83 e8 6e             	sub    $0x6e,%eax
  40395a:	0f 84 19 00 00 00    	je     403979 <http_parser_execute+0x2729>
  403960:	e9 00 00 00 00       	jmpq   403965 <http_parser_execute+0x2715>
  403965:	8b 85 b4 fe ff ff    	mov    -0x14c(%rbp),%eax
  40396b:	83 e8 74             	sub    $0x74,%eax
  40396e:	0f 84 1e 00 00 00    	je     403992 <http_parser_execute+0x2742>
  403974:	e9 32 00 00 00       	jmpq   4039ab <http_parser_execute+0x275b>
  403979:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40397d:	8b 08                	mov    (%rax),%ecx
  40397f:	81 e1 ff ff 01 ff    	and    $0xff01ffff,%ecx
  403985:	81 c9 00 00 08 00    	or     $0x80000,%ecx
  40398b:	89 08                	mov    %ecx,(%rax)
  40398d:	e9 2a 00 00 00       	jmpq   4039bc <http_parser_execute+0x276c>
  403992:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  403996:	8b 08                	mov    (%rax),%ecx
  403998:	81 e1 ff ff 01 ff    	and    $0xff01ffff,%ecx
  40399e:	81 c9 00 00 0c 00    	or     $0xc0000,%ecx
  4039a4:	89 08                	mov    %ecx,(%rax)
  4039a6:	e9 11 00 00 00       	jmpq   4039bc <http_parser_execute+0x276c>
  4039ab:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4039af:	8b 08                	mov    (%rax),%ecx
  4039b1:	81 e1 ff ff 01 ff    	and    $0xff01ffff,%ecx
  4039b7:	83 c9 00             	or     $0x0,%ecx
  4039ba:	89 08                	mov    %ecx,(%rax)
  4039bc:	e9 a2 03 00 00       	jmpq   403d63 <http_parser_execute+0x2b13>
  4039c1:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4039c5:	8b 10                	mov    (%rax),%edx
  4039c7:	c1 ea 18             	shr    $0x18,%edx
  4039ca:	83 e2 1f             	and    $0x1f,%edx
  4039cd:	83 c2 01             	add    $0x1,%edx
  4039d0:	8b 08                	mov    (%rax),%ecx
  4039d2:	83 e2 1f             	and    $0x1f,%edx
  4039d5:	c1 e2 18             	shl    $0x18,%edx
  4039d8:	81 e1 ff ff ff e0    	and    $0xe0ffffff,%ecx
  4039de:	09 d1                	or     %edx,%ecx
  4039e0:	89 08                	mov    %ecx,(%rax)
  4039e2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4039e6:	8b 00                	mov    (%rax),%eax
  4039e8:	c1 e8 18             	shr    $0x18,%eax
  4039eb:	83 e0 1f             	and    $0x1f,%eax
  4039ee:	89 c0                	mov    %eax,%eax
  4039f0:	48 83 f8 0a          	cmp    $0xa,%rax
  4039f4:	0f 87 22 00 00 00    	ja     403a1c <http_parser_execute+0x27cc>
  4039fa:	0f be 45 d7          	movsbl -0x29(%rbp),%eax
  4039fe:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  403a02:	8b 09                	mov    (%rcx),%ecx
  403a04:	c1 e9 18             	shr    $0x18,%ecx
  403a07:	83 e1 1f             	and    $0x1f,%ecx
  403a0a:	89 c9                	mov    %ecx,%ecx
  403a0c:	0f be 0c 0d e7 31 41 	movsbl 0x4131e7(,%rcx,1),%ecx
  403a13:	00 
  403a14:	39 c8                	cmp    %ecx,%eax
  403a16:	0f 84 16 00 00 00    	je     403a32 <http_parser_execute+0x27e2>
  403a1c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  403a20:	8b 08                	mov    (%rax),%ecx
  403a22:	81 e1 ff ff 01 ff    	and    $0xff01ffff,%ecx
  403a28:	83 c9 00             	or     $0x0,%ecx
  403a2b:	89 08                	mov    %ecx,(%rax)
  403a2d:	e9 31 00 00 00       	jmpq   403a63 <http_parser_execute+0x2813>
  403a32:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  403a36:	8b 00                	mov    (%rax),%eax
  403a38:	c1 e8 18             	shr    $0x18,%eax
  403a3b:	83 e0 1f             	and    $0x1f,%eax
  403a3e:	89 c0                	mov    %eax,%eax
  403a40:	48 83 f8 09          	cmp    $0x9,%rax
  403a44:	0f 85 14 00 00 00    	jne    403a5e <http_parser_execute+0x280e>
  403a4a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  403a4e:	8b 08                	mov    (%rax),%ecx
  403a50:	81 e1 ff ff 01 ff    	and    $0xff01ffff,%ecx
  403a56:	81 c9 00 00 12 00    	or     $0x120000,%ecx
  403a5c:	89 08                	mov    %ecx,(%rax)
  403a5e:	e9 00 00 00 00       	jmpq   403a63 <http_parser_execute+0x2813>
  403a63:	e9 fb 02 00 00       	jmpq   403d63 <http_parser_execute+0x2b13>
  403a68:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  403a6c:	8b 10                	mov    (%rax),%edx
  403a6e:	c1 ea 18             	shr    $0x18,%edx
  403a71:	83 e2 1f             	and    $0x1f,%edx
  403a74:	83 c2 01             	add    $0x1,%edx
  403a77:	8b 08                	mov    (%rax),%ecx
  403a79:	83 e2 1f             	and    $0x1f,%edx
  403a7c:	c1 e2 18             	shl    $0x18,%edx
  403a7f:	81 e1 ff ff ff e0    	and    $0xe0ffffff,%ecx
  403a85:	09 d1                	or     %edx,%ecx
  403a87:	89 08                	mov    %ecx,(%rax)
  403a89:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  403a8d:	8b 00                	mov    (%rax),%eax
  403a8f:	c1 e8 18             	shr    $0x18,%eax
  403a92:	83 e0 1f             	and    $0x1f,%eax
  403a95:	89 c0                	mov    %eax,%eax
  403a97:	48 83 f8 10          	cmp    $0x10,%rax
  403a9b:	0f 87 22 00 00 00    	ja     403ac3 <http_parser_execute+0x2873>
  403aa1:	0f be 45 d7          	movsbl -0x29(%rbp),%eax
  403aa5:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  403aa9:	8b 09                	mov    (%rcx),%ecx
  403aab:	c1 e9 18             	shr    $0x18,%ecx
  403aae:	83 e1 1f             	and    $0x1f,%ecx
  403ab1:	89 c9                	mov    %ecx,%ecx
  403ab3:	0f be 0c 0d 30 07 41 	movsbl 0x410730(,%rcx,1),%ecx
  403aba:	00 
  403abb:	39 c8                	cmp    %ecx,%eax
  403abd:	0f 84 16 00 00 00    	je     403ad9 <http_parser_execute+0x2889>
  403ac3:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  403ac7:	8b 08                	mov    (%rax),%ecx
  403ac9:	81 e1 ff ff 01 ff    	and    $0xff01ffff,%ecx
  403acf:	83 c9 00             	or     $0x0,%ecx
  403ad2:	89 08                	mov    %ecx,(%rax)
  403ad4:	e9 31 00 00 00       	jmpq   403b0a <http_parser_execute+0x28ba>
  403ad9:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  403add:	8b 00                	mov    (%rax),%eax
  403adf:	c1 e8 18             	shr    $0x18,%eax
  403ae2:	83 e0 1f             	and    $0x1f,%eax
  403ae5:	89 c0                	mov    %eax,%eax
  403ae7:	48 83 f8 0f          	cmp    $0xf,%rax
  403aeb:	0f 85 14 00 00 00    	jne    403b05 <http_parser_execute+0x28b5>
  403af1:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  403af5:	8b 08                	mov    (%rax),%ecx
  403af7:	81 e1 ff ff 01 ff    	and    $0xff01ffff,%ecx
  403afd:	81 c9 00 00 12 00    	or     $0x120000,%ecx
  403b03:	89 08                	mov    %ecx,(%rax)
  403b05:	e9 00 00 00 00       	jmpq   403b0a <http_parser_execute+0x28ba>
  403b0a:	e9 54 02 00 00       	jmpq   403d63 <http_parser_execute+0x2b13>
  403b0f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  403b13:	8b 10                	mov    (%rax),%edx
  403b15:	c1 ea 18             	shr    $0x18,%edx
  403b18:	83 e2 1f             	and    $0x1f,%edx
  403b1b:	83 c2 01             	add    $0x1,%edx
  403b1e:	8b 08                	mov    (%rax),%ecx
  403b20:	83 e2 1f             	and    $0x1f,%edx
  403b23:	c1 e2 18             	shl    $0x18,%edx
  403b26:	81 e1 ff ff ff e0    	and    $0xe0ffffff,%ecx
  403b2c:	09 d1                	or     %edx,%ecx
  403b2e:	89 08                	mov    %ecx,(%rax)
  403b30:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  403b34:	8b 00                	mov    (%rax),%eax
  403b36:	c1 e8 18             	shr    $0x18,%eax
  403b39:	83 e0 1f             	and    $0x1f,%eax
  403b3c:	89 c0                	mov    %eax,%eax
  403b3e:	48 83 f8 0e          	cmp    $0xe,%rax
  403b42:	0f 87 22 00 00 00    	ja     403b6a <http_parser_execute+0x291a>
  403b48:	0f be 45 d7          	movsbl -0x29(%rbp),%eax
  403b4c:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  403b50:	8b 09                	mov    (%rcx),%ecx
  403b52:	c1 e9 18             	shr    $0x18,%ecx
  403b55:	83 e1 1f             	and    $0x1f,%ecx
  403b58:	89 c9                	mov    %ecx,%ecx
  403b5a:	0f be 0c 0d 41 07 41 	movsbl 0x410741(,%rcx,1),%ecx
  403b61:	00 
  403b62:	39 c8                	cmp    %ecx,%eax
  403b64:	0f 84 16 00 00 00    	je     403b80 <http_parser_execute+0x2930>
  403b6a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  403b6e:	8b 08                	mov    (%rax),%ecx
  403b70:	81 e1 ff ff 01 ff    	and    $0xff01ffff,%ecx
  403b76:	83 c9 00             	or     $0x0,%ecx
  403b79:	89 08                	mov    %ecx,(%rax)
  403b7b:	e9 31 00 00 00       	jmpq   403bb1 <http_parser_execute+0x2961>
  403b80:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  403b84:	8b 00                	mov    (%rax),%eax
  403b86:	c1 e8 18             	shr    $0x18,%eax
  403b89:	83 e0 1f             	and    $0x1f,%eax
  403b8c:	89 c0                	mov    %eax,%eax
  403b8e:	48 83 f8 0d          	cmp    $0xd,%rax
  403b92:	0f 85 14 00 00 00    	jne    403bac <http_parser_execute+0x295c>
  403b98:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  403b9c:	8b 08                	mov    (%rax),%ecx
  403b9e:	81 e1 ff ff 01 ff    	and    $0xff01ffff,%ecx
  403ba4:	81 c9 00 00 14 00    	or     $0x140000,%ecx
  403baa:	89 08                	mov    %ecx,(%rax)
  403bac:	e9 00 00 00 00       	jmpq   403bb1 <http_parser_execute+0x2961>
  403bb1:	e9 ad 01 00 00       	jmpq   403d63 <http_parser_execute+0x2b13>
  403bb6:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  403bba:	8b 10                	mov    (%rax),%edx
  403bbc:	c1 ea 18             	shr    $0x18,%edx
  403bbf:	83 e2 1f             	and    $0x1f,%edx
  403bc2:	83 c2 01             	add    $0x1,%edx
  403bc5:	8b 08                	mov    (%rax),%ecx
  403bc7:	83 e2 1f             	and    $0x1f,%edx
  403bca:	c1 e2 18             	shl    $0x18,%edx
  403bcd:	81 e1 ff ff ff e0    	and    $0xe0ffffff,%ecx
  403bd3:	09 d1                	or     %edx,%ecx
  403bd5:	89 08                	mov    %ecx,(%rax)
  403bd7:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  403bdb:	8b 00                	mov    (%rax),%eax
  403bdd:	c1 e8 18             	shr    $0x18,%eax
  403be0:	83 e0 1f             	and    $0x1f,%eax
  403be3:	89 c0                	mov    %eax,%eax
  403be5:	48 83 f8 11          	cmp    $0x11,%rax
  403be9:	0f 87 22 00 00 00    	ja     403c11 <http_parser_execute+0x29c1>
  403bef:	0f be 45 d7          	movsbl -0x29(%rbp),%eax
  403bf3:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  403bf7:	8b 09                	mov    (%rcx),%ecx
  403bf9:	c1 e9 18             	shr    $0x18,%ecx
  403bfc:	83 e1 1f             	and    $0x1f,%ecx
  403bff:	89 c9                	mov    %ecx,%ecx
  403c01:	0f be 0c 0d c5 14 41 	movsbl 0x4114c5(,%rcx,1),%ecx
  403c08:	00 
  403c09:	39 c8                	cmp    %ecx,%eax
  403c0b:	0f 84 16 00 00 00    	je     403c27 <http_parser_execute+0x29d7>
  403c11:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  403c15:	8b 08                	mov    (%rax),%ecx
  403c17:	81 e1 ff ff 01 ff    	and    $0xff01ffff,%ecx
  403c1d:	83 c9 00             	or     $0x0,%ecx
  403c20:	89 08                	mov    %ecx,(%rax)
  403c22:	e9 45 00 00 00       	jmpq   403c6c <http_parser_execute+0x2a1c>
  403c27:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  403c2b:	8b 00                	mov    (%rax),%eax
  403c2d:	c1 e8 18             	shr    $0x18,%eax
  403c30:	83 e0 1f             	and    $0x1f,%eax
  403c33:	89 c0                	mov    %eax,%eax
  403c35:	48 83 f8 10          	cmp    $0x10,%rax
  403c39:	0f 85 28 00 00 00    	jne    403c67 <http_parser_execute+0x2a17>
  403c3f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  403c43:	8b 08                	mov    (%rax),%ecx
  403c45:	81 e1 ff ff 01 ff    	and    $0xff01ffff,%ecx
  403c4b:	81 c9 00 00 1a 00    	or     $0x1a0000,%ecx
  403c51:	89 08                	mov    %ecx,(%rax)
  403c53:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  403c57:	8b 08                	mov    (%rax),%ecx
  403c59:	81 e1 ff ff ff df    	and    $0xdfffffff,%ecx
  403c5f:	81 c9 00 00 00 20    	or     $0x20000000,%ecx
  403c65:	89 08                	mov    %ecx,(%rax)
  403c67:	e9 00 00 00 00       	jmpq   403c6c <http_parser_execute+0x2a1c>
  403c6c:	e9 f2 00 00 00       	jmpq   403d63 <http_parser_execute+0x2b13>
  403c71:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  403c75:	8b 10                	mov    (%rax),%edx
  403c77:	c1 ea 18             	shr    $0x18,%edx
  403c7a:	83 e2 1f             	and    $0x1f,%edx
  403c7d:	83 c2 01             	add    $0x1,%edx
  403c80:	8b 08                	mov    (%rax),%ecx
  403c82:	83 e2 1f             	and    $0x1f,%edx
  403c85:	c1 e2 18             	shl    $0x18,%edx
  403c88:	81 e1 ff ff ff e0    	and    $0xe0ffffff,%ecx
  403c8e:	09 d1                	or     %edx,%ecx
  403c90:	89 08                	mov    %ecx,(%rax)
  403c92:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  403c96:	8b 00                	mov    (%rax),%eax
  403c98:	c1 e8 18             	shr    $0x18,%eax
  403c9b:	83 e0 1f             	and    $0x1f,%eax
  403c9e:	89 c0                	mov    %eax,%eax
  403ca0:	48 83 f8 07          	cmp    $0x7,%rax
  403ca4:	0f 87 22 00 00 00    	ja     403ccc <http_parser_execute+0x2a7c>
  403caa:	0f be 45 d7          	movsbl -0x29(%rbp),%eax
  403cae:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  403cb2:	8b 09                	mov    (%rcx),%ecx
  403cb4:	c1 e9 18             	shr    $0x18,%ecx
  403cb7:	83 e1 1f             	and    $0x1f,%ecx
  403cba:	89 c9                	mov    %ecx,%ecx
  403cbc:	0f be 0c 0d 50 07 41 	movsbl 0x410750(,%rcx,1),%ecx
  403cc3:	00 
  403cc4:	39 c8                	cmp    %ecx,%eax
  403cc6:	0f 84 16 00 00 00    	je     403ce2 <http_parser_execute+0x2a92>
  403ccc:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  403cd0:	8b 08                	mov    (%rax),%ecx
  403cd2:	81 e1 ff ff 01 ff    	and    $0xff01ffff,%ecx
  403cd8:	83 c9 00             	or     $0x0,%ecx
  403cdb:	89 08                	mov    %ecx,(%rax)
  403cdd:	e9 31 00 00 00       	jmpq   403d13 <http_parser_execute+0x2ac3>
  403ce2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  403ce6:	8b 00                	mov    (%rax),%eax
  403ce8:	c1 e8 18             	shr    $0x18,%eax
  403ceb:	83 e0 1f             	and    $0x1f,%eax
  403cee:	89 c0                	mov    %eax,%eax
  403cf0:	48 83 f8 06          	cmp    $0x6,%rax
  403cf4:	0f 85 14 00 00 00    	jne    403d0e <http_parser_execute+0x2abe>
  403cfa:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  403cfe:	8b 08                	mov    (%rax),%ecx
  403d00:	81 e1 ff ff 01 ff    	and    $0xff01ffff,%ecx
  403d06:	81 c9 00 00 1c 00    	or     $0x1c0000,%ecx
  403d0c:	89 08                	mov    %ecx,(%rax)
  403d0e:	e9 00 00 00 00       	jmpq   403d13 <http_parser_execute+0x2ac3>
  403d13:	e9 4b 00 00 00       	jmpq   403d63 <http_parser_execute+0x2b13>
  403d18:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  403d1c:	83 f8 20             	cmp    $0x20,%eax
  403d1f:	0f 84 11 00 00 00    	je     403d36 <http_parser_execute+0x2ae6>
  403d25:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  403d29:	8b 08                	mov    (%rax),%ecx
  403d2b:	81 e1 ff ff 01 ff    	and    $0xff01ffff,%ecx
  403d31:	83 c9 00             	or     $0x0,%ecx
  403d34:	89 08                	mov    %ecx,(%rax)
  403d36:	e9 28 00 00 00       	jmpq   403d63 <http_parser_execute+0x2b13>
  403d3b:	48 bf 58 07 41 00 00 	movabs $0x410758,%rdi
  403d42:	00 00 00 
  403d45:	48 be c4 06 41 00 00 	movabs $0x4106c4,%rsi
  403d4c:	00 00 00 
  403d4f:	ba 5a 05 00 00       	mov    $0x55a,%edx
  403d54:	48 b9 d2 06 41 00 00 	movabs $0x4106d2,%rcx
  403d5b:	00 00 00 
  403d5e:	e8 2d d3 ff ff       	callq  401090 <__assert_fail@plt>
  403d63:	e9 00 00 00 00       	jmpq   403d68 <http_parser_execute+0x2b18>
  403d68:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  403d6c:	48 83 c0 01          	add    $0x1,%rax
  403d70:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  403d74:	e9 8e f9 ff ff       	jmpq   403707 <http_parser_execute+0x24b7>
  403d79:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  403d7d:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  403d81:	48 03 4d d8          	add    -0x28(%rbp),%rcx
  403d85:	48 39 c8             	cmp    %rcx,%rax
  403d88:	0f 85 73 00 00 00    	jne    403e01 <http_parser_execute+0x2bb1>
  403d8e:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  403d92:	48 83 c0 ff          	add    $0xffffffffffffffff,%rax
  403d96:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  403d9a:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  403d9e:	48 8b 4d 80          	mov    -0x80(%rbp),%rcx
  403da2:	48 29 c8             	sub    %rcx,%rax
  403da5:	03 45 90             	add    -0x70(%rbp),%eax
  403da8:	89 45 90             	mov    %eax,-0x70(%rbp)
  403dab:	8b 45 90             	mov    -0x70(%rbp),%eax
  403dae:	3b 04 25 c0 e0 8b 00 	cmp    0x8be0c0,%eax
  403db5:	0f 97 c0             	seta   %al
  403db8:	34 ff                	xor    $0xff,%al
  403dba:	34 ff                	xor    $0xff,%al
  403dbc:	24 01                	and    $0x1,%al
  403dbe:	0f b6 c0             	movzbl %al,%eax
  403dc1:	48 98                	cltq   
  403dc3:	48 83 f8 00          	cmp    $0x0,%rax
  403dc7:	0f 84 2a 00 00 00    	je     403df7 <http_parser_execute+0x2ba7>
  403dcd:	e9 00 00 00 00       	jmpq   403dd2 <http_parser_execute+0x2b82>
  403dd2:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  403dd5:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  403dd9:	89 48 04             	mov    %ecx,0x4(%rax)
  403ddc:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  403de0:	8b 48 14             	mov    0x14(%rax),%ecx
  403de3:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  403de9:	81 c9 00 00 00 0c    	or     $0xc000000,%ecx
  403def:	89 48 14             	mov    %ecx,0x14(%rax)
  403df2:	e9 45 3a 00 00       	jmpq   40783c <http_parser_execute+0x65ec>
  403df7:	e9 00 00 00 00       	jmpq   403dfc <http_parser_execute+0x2bac>
  403dfc:	e9 cd 32 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  403e01:	e9 00 00 00 00       	jmpq   403e06 <http_parser_execute+0x2bb6>
  403e06:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  403e0a:	48 8b 4d 80          	mov    -0x80(%rbp),%rcx
  403e0e:	48 29 c8             	sub    %rcx,%rax
  403e11:	03 45 90             	add    -0x70(%rbp),%eax
  403e14:	89 45 90             	mov    %eax,-0x70(%rbp)
  403e17:	8b 45 90             	mov    -0x70(%rbp),%eax
  403e1a:	3b 04 25 c0 e0 8b 00 	cmp    0x8be0c0,%eax
  403e21:	0f 97 c0             	seta   %al
  403e24:	34 ff                	xor    $0xff,%al
  403e26:	34 ff                	xor    $0xff,%al
  403e28:	24 01                	and    $0x1,%al
  403e2a:	0f b6 c0             	movzbl %al,%eax
  403e2d:	48 98                	cltq   
  403e2f:	48 83 f8 00          	cmp    $0x0,%rax
  403e33:	0f 84 2a 00 00 00    	je     403e63 <http_parser_execute+0x2c13>
  403e39:	e9 00 00 00 00       	jmpq   403e3e <http_parser_execute+0x2bee>
  403e3e:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  403e41:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  403e45:	89 48 04             	mov    %ecx,0x4(%rax)
  403e48:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  403e4c:	8b 48 14             	mov    0x14(%rax),%ecx
  403e4f:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  403e55:	81 c9 00 00 00 0c    	or     $0xc000000,%ecx
  403e5b:	89 48 14             	mov    %ecx,0x14(%rax)
  403e5e:	e9 d9 39 00 00       	jmpq   40783c <http_parser_execute+0x65ec>
  403e63:	e9 00 00 00 00       	jmpq   403e68 <http_parser_execute+0x2c18>
  403e68:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  403e6c:	83 f8 3a             	cmp    $0x3a,%eax
  403e6f:	0f 85 5a 01 00 00    	jne    403fcf <http_parser_execute+0x2d7f>
  403e75:	c7 45 9c 2e 00 00 00 	movl   $0x2e,-0x64(%rbp)
  403e7c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  403e80:	8b 40 14             	mov    0x14(%rax),%eax
  403e83:	c1 e8 18             	shr    $0x18,%eax
  403e86:	83 e0 7f             	and    $0x7f,%eax
  403e89:	83 f8 00             	cmp    $0x0,%eax
  403e8c:	0f 85 05 00 00 00    	jne    403e97 <http_parser_execute+0x2c47>
  403e92:	e9 28 00 00 00       	jmpq   403ebf <http_parser_execute+0x2c6f>
  403e97:	48 bf a0 06 41 00 00 	movabs $0x4106a0,%rdi
  403e9e:	00 00 00 
  403ea1:	48 be c4 06 41 00 00 	movabs $0x4106c4,%rsi
  403ea8:	00 00 00 
  403eab:	ba 69 05 00 00       	mov    $0x569,%edx
  403eb0:	48 b9 d2 06 41 00 00 	movabs $0x4106d2,%rcx
  403eb7:	00 00 00 
  403eba:	e8 d1 d1 ff ff       	callq  401090 <__assert_fail@plt>
  403ebf:	48 83 7d c0 00       	cmpq   $0x0,-0x40(%rbp)
  403ec4:	0f 84 fb 00 00 00    	je     403fc5 <http_parser_execute+0x2d75>
  403eca:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  403ece:	48 83 78 18 00       	cmpq   $0x0,0x18(%rax)
  403ed3:	0f 95 c0             	setne  %al
  403ed6:	34 ff                	xor    $0xff,%al
  403ed8:	34 ff                	xor    $0xff,%al
  403eda:	24 01                	and    $0x1,%al
  403edc:	0f b6 c0             	movzbl %al,%eax
  403edf:	48 98                	cltq   
  403ee1:	48 83 f8 00          	cmp    $0x0,%rax
  403ee5:	0f 84 d2 00 00 00    	je     403fbd <http_parser_execute+0x2d6d>
  403eeb:	8b 55 9c             	mov    -0x64(%rbp),%edx
  403eee:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  403ef2:	8b 08                	mov    (%rax),%ecx
  403ef4:	83 e2 7f             	and    $0x7f,%edx
  403ef7:	c1 e2 0a             	shl    $0xa,%edx
  403efa:	81 e1 ff 03 fe ff    	and    $0xfffe03ff,%ecx
  403f00:	09 d1                	or     %edx,%ecx
  403f02:	89 08                	mov    %ecx,(%rax)
  403f04:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  403f08:	48 8b 40 18          	mov    0x18(%rax),%rax
  403f0c:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  403f10:	48 8b 75 c0          	mov    -0x40(%rbp),%rsi
  403f14:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  403f18:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  403f1c:	48 29 ca             	sub    %rcx,%rdx
  403f1f:	ff d0                	callq  *%rax
  403f21:	89 c1                	mov    %eax,%ecx
  403f23:	31 c0                	xor    %eax,%eax
  403f25:	39 c8                	cmp    %ecx,%eax
  403f27:	0f 95 c0             	setne  %al
  403f2a:	34 ff                	xor    $0xff,%al
  403f2c:	34 ff                	xor    $0xff,%al
  403f2e:	24 01                	and    $0x1,%al
  403f30:	0f b6 c0             	movzbl %al,%eax
  403f33:	48 98                	cltq   
  403f35:	48 83 f8 00          	cmp    $0x0,%rax
  403f39:	0f 84 2a 00 00 00    	je     403f69 <http_parser_execute+0x2d19>
  403f3f:	e9 00 00 00 00       	jmpq   403f44 <http_parser_execute+0x2cf4>
  403f44:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  403f47:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  403f4b:	89 48 04             	mov    %ecx,0x4(%rax)
  403f4e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  403f52:	8b 48 14             	mov    0x14(%rax),%ecx
  403f55:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  403f5b:	81 c9 00 00 00 03    	or     $0x3000000,%ecx
  403f61:	89 48 14             	mov    %ecx,0x14(%rax)
  403f64:	e9 00 00 00 00       	jmpq   403f69 <http_parser_execute+0x2d19>
  403f69:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  403f6d:	8b 00                	mov    (%rax),%eax
  403f6f:	c1 e8 0a             	shr    $0xa,%eax
  403f72:	83 e0 7f             	and    $0x7f,%eax
  403f75:	89 45 9c             	mov    %eax,-0x64(%rbp)
  403f78:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  403f7c:	8b 40 14             	mov    0x14(%rax),%eax
  403f7f:	c1 e8 18             	shr    $0x18,%eax
  403f82:	83 e0 7f             	and    $0x7f,%eax
  403f85:	83 f8 00             	cmp    $0x0,%eax
  403f88:	0f 95 c0             	setne  %al
  403f8b:	34 ff                	xor    $0xff,%al
  403f8d:	34 ff                	xor    $0xff,%al
  403f8f:	24 01                	and    $0x1,%al
  403f91:	0f b6 c0             	movzbl %al,%eax
  403f94:	48 98                	cltq   
  403f96:	48 83 f8 00          	cmp    $0x0,%rax
  403f9a:	0f 84 18 00 00 00    	je     403fb8 <http_parser_execute+0x2d68>
  403fa0:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  403fa4:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  403fa8:	48 29 c8             	sub    %rcx,%rax
  403fab:	48 83 c0 01          	add    $0x1,%rax
  403faf:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  403fb3:	e9 fb 38 00 00       	jmpq   4078b3 <http_parser_execute+0x6663>
  403fb8:	e9 00 00 00 00       	jmpq   403fbd <http_parser_execute+0x2d6d>
  403fbd:	48 c7 45 c0 00 00 00 	movq   $0x0,-0x40(%rbp)
  403fc4:	00 
  403fc5:	e9 00 00 00 00       	jmpq   403fca <http_parser_execute+0x2d7a>
  403fca:	e9 ff 30 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  403fcf:	e9 00 00 00 00       	jmpq   403fd4 <http_parser_execute+0x2d84>
  403fd4:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  403fd7:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  403fdb:	89 48 04             	mov    %ecx,0x4(%rax)
  403fde:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  403fe2:	8b 48 14             	mov    0x14(%rax),%ecx
  403fe5:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  403feb:	81 c9 00 00 00 18    	or     $0x18000000,%ecx
  403ff1:	89 48 14             	mov    %ecx,0x14(%rax)
  403ff4:	e9 43 38 00 00       	jmpq   40783c <http_parser_execute+0x65ec>
  403ff9:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  403ffd:	83 f8 20             	cmp    $0x20,%eax
  404000:	0f 84 0d 00 00 00    	je     404013 <http_parser_execute+0x2dc3>
  404006:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  40400a:	83 f8 09             	cmp    $0x9,%eax
  40400d:	0f 85 05 00 00 00    	jne    404018 <http_parser_execute+0x2dc8>
  404013:	e9 b6 30 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  404018:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  40401c:	83 f8 0d             	cmp    $0xd,%eax
  40401f:	0f 85 0c 00 00 00    	jne    404031 <http_parser_execute+0x2de1>
  404025:	c7 45 9c 2f 00 00 00 	movl   $0x2f,-0x64(%rbp)
  40402c:	e9 9d 30 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  404031:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  404035:	83 f8 0a             	cmp    $0xa,%eax
  404038:	0f 85 0c 00 00 00    	jne    40404a <http_parser_execute+0x2dfa>
  40403e:	c7 45 9c 30 00 00 00 	movl   $0x30,-0x64(%rbp)
  404045:	e9 84 30 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  40404a:	e9 00 00 00 00       	jmpq   40404f <http_parser_execute+0x2dff>
  40404f:	e9 00 00 00 00       	jmpq   404054 <http_parser_execute+0x2e04>
  404054:	48 83 7d b8 00       	cmpq   $0x0,-0x48(%rbp)
  404059:	0f 85 08 00 00 00    	jne    404067 <http_parser_execute+0x2e17>
  40405f:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  404063:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
  404067:	e9 00 00 00 00       	jmpq   40406c <http_parser_execute+0x2e1c>
  40406c:	c7 45 9c 32 00 00 00 	movl   $0x32,-0x64(%rbp)
  404073:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  404077:	8b 08                	mov    (%rax),%ecx
  404079:	81 e1 ff ff ff e0    	and    $0xe0ffffff,%ecx
  40407f:	89 08                	mov    %ecx,(%rax)
  404081:	8a 45 d6             	mov    -0x2a(%rbp),%al
  404084:	0c 20                	or     $0x20,%al
  404086:	88 45 d7             	mov    %al,-0x29(%rbp)
  404089:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40408d:	8b 00                	mov    (%rax),%eax
  40408f:	c1 e8 11             	shr    $0x11,%eax
  404092:	83 e0 7f             	and    $0x7f,%eax
  404095:	83 c0 f7             	add    $0xfffffff7,%eax
  404098:	89 c1                	mov    %eax,%ecx
  40409a:	48 89 8d a8 fe ff ff 	mov    %rcx,-0x158(%rbp)
  4040a1:	83 e8 09             	sub    $0x9,%eax
  4040a4:	0f 87 3c 02 00 00    	ja     4042e6 <http_parser_execute+0x3096>
  4040aa:	48 8b 85 a8 fe ff ff 	mov    -0x158(%rbp),%rax
  4040b1:	48 8b 04 c5 90 f3 40 	mov    0x40f390(,%rax,8),%rax
  4040b8:	00 
  4040b9:	ff e0                	jmpq   *%rax
  4040bb:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4040bf:	8b 10                	mov    (%rax),%edx
  4040c1:	c1 ea 02             	shr    $0x2,%edx
  4040c4:	81 e2 ff 00 00 00    	and    $0xff,%edx
  4040ca:	83 ca 20             	or     $0x20,%edx
  4040cd:	8b 08                	mov    (%rax),%ecx
  4040cf:	81 e2 ff 00 00 00    	and    $0xff,%edx
  4040d5:	c1 e2 02             	shl    $0x2,%edx
  4040d8:	81 e1 03 fc ff ff    	and    $0xfffffc03,%ecx
  4040de:	09 d1                	or     %edx,%ecx
  4040e0:	89 08                	mov    %ecx,(%rax)
  4040e2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4040e6:	8b 08                	mov    (%rax),%ecx
  4040e8:	81 e1 ff ff 01 ff    	and    $0xff01ffff,%ecx
  4040ee:	83 c9 00             	or     $0x0,%ecx
  4040f1:	89 08                	mov    %ecx,(%rax)
  4040f3:	e9 ff 01 00 00       	jmpq   4042f7 <http_parser_execute+0x30a7>
  4040f8:	0f be 4d d7          	movsbl -0x29(%rbp),%ecx
  4040fc:	b8 63 00 00 00       	mov    $0x63,%eax
  404101:	39 c8                	cmp    %ecx,%eax
  404103:	0f 85 19 00 00 00    	jne    404122 <http_parser_execute+0x2ed2>
  404109:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40410d:	8b 08                	mov    (%rax),%ecx
  40410f:	81 e1 ff ff 01 ff    	and    $0xff01ffff,%ecx
  404115:	81 c9 00 00 20 00    	or     $0x200000,%ecx
  40411b:	89 08                	mov    %ecx,(%rax)
  40411d:	e9 14 00 00 00       	jmpq   404136 <http_parser_execute+0x2ee6>
  404122:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  404126:	8b 08                	mov    (%rax),%ecx
  404128:	81 e1 ff ff 01 ff    	and    $0xff01ffff,%ecx
  40412e:	81 c9 00 00 22 00    	or     $0x220000,%ecx
  404134:	89 08                	mov    %ecx,(%rax)
  404136:	e9 bc 01 00 00       	jmpq   4042f7 <http_parser_execute+0x30a7>
  40413b:	e9 b7 01 00 00       	jmpq   4042f7 <http_parser_execute+0x30a7>
  404140:	0f be 4d d6          	movsbl -0x2a(%rbp),%ecx
  404144:	31 c0                	xor    %eax,%eax
  404146:	83 f9 30             	cmp    $0x30,%ecx
  404149:	88 85 a7 fe ff ff    	mov    %al,-0x159(%rbp)
  40414f:	0f 8c 10 00 00 00    	jl     404165 <http_parser_execute+0x2f15>
  404155:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  404159:	83 f8 39             	cmp    $0x39,%eax
  40415c:	0f 9e c0             	setle  %al
  40415f:	88 85 a7 fe ff ff    	mov    %al,-0x159(%rbp)
  404165:	8a 85 a7 fe ff ff    	mov    -0x159(%rbp),%al
  40416b:	34 ff                	xor    $0xff,%al
  40416d:	34 ff                	xor    $0xff,%al
  40416f:	34 ff                	xor    $0xff,%al
  404171:	24 01                	and    $0x1,%al
  404173:	0f b6 c0             	movzbl %al,%eax
  404176:	48 98                	cltq   
  404178:	48 83 f8 00          	cmp    $0x0,%rax
  40417c:	0f 84 2a 00 00 00    	je     4041ac <http_parser_execute+0x2f5c>
  404182:	e9 00 00 00 00       	jmpq   404187 <http_parser_execute+0x2f37>
  404187:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  40418a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40418e:	89 48 04             	mov    %ecx,0x4(%rax)
  404191:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  404195:	8b 48 14             	mov    0x14(%rax),%ecx
  404198:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  40419e:	81 c9 00 00 00 19    	or     $0x19000000,%ecx
  4041a4:	89 48 14             	mov    %ecx,0x14(%rax)
  4041a7:	e9 90 36 00 00       	jmpq   40783c <http_parser_execute+0x65ec>
  4041ac:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4041b0:	8b 00                	mov    (%rax),%eax
  4041b2:	c1 e8 02             	shr    $0x2,%eax
  4041b5:	25 ff 00 00 00       	and    $0xff,%eax
  4041ba:	25 80 00 00 00       	and    $0x80,%eax
  4041bf:	83 f8 00             	cmp    $0x0,%eax
  4041c2:	0f 84 2a 00 00 00    	je     4041f2 <http_parser_execute+0x2fa2>
  4041c8:	e9 00 00 00 00       	jmpq   4041cd <http_parser_execute+0x2f7d>
  4041cd:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  4041d0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4041d4:	89 48 04             	mov    %ecx,0x4(%rax)
  4041d7:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4041db:	8b 48 14             	mov    0x14(%rax),%ecx
  4041de:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  4041e4:	81 c9 00 00 00 1a    	or     $0x1a000000,%ecx
  4041ea:	89 48 14             	mov    %ecx,0x14(%rax)
  4041ed:	e9 4a 36 00 00       	jmpq   40783c <http_parser_execute+0x65ec>
  4041f2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4041f6:	8b 10                	mov    (%rax),%edx
  4041f8:	c1 ea 02             	shr    $0x2,%edx
  4041fb:	81 e2 ff 00 00 00    	and    $0xff,%edx
  404201:	81 ca 80 00 00 00    	or     $0x80,%edx
  404207:	8b 08                	mov    (%rax),%ecx
  404209:	81 e2 ff 00 00 00    	and    $0xff,%edx
  40420f:	c1 e2 02             	shl    $0x2,%edx
  404212:	81 e1 03 fc ff ff    	and    $0xfffffc03,%ecx
  404218:	09 d1                	or     %edx,%ecx
  40421a:	89 08                	mov    %ecx,(%rax)
  40421c:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  404220:	83 e8 30             	sub    $0x30,%eax
  404223:	48 63 c8             	movslq %eax,%rcx
  404226:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40422a:	48 89 48 08          	mov    %rcx,0x8(%rax)
  40422e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  404232:	8b 08                	mov    (%rax),%ecx
  404234:	81 e1 ff ff 01 ff    	and    $0xff01ffff,%ecx
  40423a:	81 c9 00 00 16 00    	or     $0x160000,%ecx
  404240:	89 08                	mov    %ecx,(%rax)
  404242:	e9 b0 00 00 00       	jmpq   4042f7 <http_parser_execute+0x30a7>
  404247:	e9 ab 00 00 00       	jmpq   4042f7 <http_parser_execute+0x30a7>
  40424c:	0f be 45 d7          	movsbl -0x29(%rbp),%eax
  404250:	83 f8 6b             	cmp    $0x6b,%eax
  404253:	0f 85 19 00 00 00    	jne    404272 <http_parser_execute+0x3022>
  404259:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40425d:	8b 08                	mov    (%rax),%ecx
  40425f:	81 e1 ff ff 01 ff    	and    $0xff01ffff,%ecx
  404265:	81 c9 00 00 26 00    	or     $0x260000,%ecx
  40426b:	89 08                	mov    %ecx,(%rax)
  40426d:	e9 6a 00 00 00       	jmpq   4042dc <http_parser_execute+0x308c>
  404272:	0f be 45 d7          	movsbl -0x29(%rbp),%eax
  404276:	83 f8 63             	cmp    $0x63,%eax
  404279:	0f 85 19 00 00 00    	jne    404298 <http_parser_execute+0x3048>
  40427f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  404283:	8b 08                	mov    (%rax),%ecx
  404285:	81 e1 ff ff 01 ff    	and    $0xff01ffff,%ecx
  40428b:	81 c9 00 00 28 00    	or     $0x280000,%ecx
  404291:	89 08                	mov    %ecx,(%rax)
  404293:	e9 3f 00 00 00       	jmpq   4042d7 <http_parser_execute+0x3087>
  404298:	0f be 45 d7          	movsbl -0x29(%rbp),%eax
  40429c:	83 f8 75             	cmp    $0x75,%eax
  40429f:	0f 85 19 00 00 00    	jne    4042be <http_parser_execute+0x306e>
  4042a5:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4042a9:	8b 08                	mov    (%rax),%ecx
  4042ab:	81 e1 ff ff 01 ff    	and    $0xff01ffff,%ecx
  4042b1:	81 c9 00 00 2a 00    	or     $0x2a0000,%ecx
  4042b7:	89 08                	mov    %ecx,(%rax)
  4042b9:	e9 14 00 00 00       	jmpq   4042d2 <http_parser_execute+0x3082>
  4042be:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4042c2:	8b 08                	mov    (%rax),%ecx
  4042c4:	81 e1 ff ff 01 ff    	and    $0xff01ffff,%ecx
  4042ca:	81 c9 00 00 2c 00    	or     $0x2c0000,%ecx
  4042d0:	89 08                	mov    %ecx,(%rax)
  4042d2:	e9 00 00 00 00       	jmpq   4042d7 <http_parser_execute+0x3087>
  4042d7:	e9 00 00 00 00       	jmpq   4042dc <http_parser_execute+0x308c>
  4042dc:	e9 16 00 00 00       	jmpq   4042f7 <http_parser_execute+0x30a7>
  4042e1:	e9 11 00 00 00       	jmpq   4042f7 <http_parser_execute+0x30a7>
  4042e6:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4042ea:	8b 08                	mov    (%rax),%ecx
  4042ec:	81 e1 ff ff 01 ff    	and    $0xff01ffff,%ecx
  4042f2:	83 c9 00             	or     $0x0,%ecx
  4042f5:	89 08                	mov    %ecx,(%rax)
  4042f7:	e9 d2 2d 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  4042fc:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  404300:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
  404307:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40430b:	8b 00                	mov    (%rax),%eax
  40430d:	c1 e8 11             	shr    $0x11,%eax
  404310:	83 e0 7f             	and    $0x7f,%eax
  404313:	89 85 64 ff ff ff    	mov    %eax,-0x9c(%rbp)
  404319:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  40431d:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  404321:	48 03 4d d8          	add    -0x28(%rbp),%rcx
  404325:	48 39 c8             	cmp    %rcx,%rax
  404328:	0f 84 d6 0c 00 00    	je     405004 <http_parser_execute+0x3db4>
  40432e:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  404332:	8a 00                	mov    (%rax),%al
  404334:	88 45 d6             	mov    %al,-0x2a(%rbp)
  404337:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  40433b:	83 f8 0d             	cmp    $0xd,%eax
  40433e:	0f 85 76 01 00 00    	jne    4044ba <http_parser_execute+0x326a>
  404344:	c7 45 9c 34 00 00 00 	movl   $0x34,-0x64(%rbp)
  40434b:	8b 95 64 ff ff ff    	mov    -0x9c(%rbp),%edx
  404351:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  404355:	8b 08                	mov    (%rax),%ecx
  404357:	83 e2 7f             	and    $0x7f,%edx
  40435a:	c1 e2 11             	shl    $0x11,%edx
  40435d:	81 e1 ff ff 01 ff    	and    $0xff01ffff,%ecx
  404363:	09 d1                	or     %edx,%ecx
  404365:	89 08                	mov    %ecx,(%rax)
  404367:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40436b:	8b 40 14             	mov    0x14(%rax),%eax
  40436e:	c1 e8 18             	shr    $0x18,%eax
  404371:	83 e0 7f             	and    $0x7f,%eax
  404374:	83 f8 00             	cmp    $0x0,%eax
  404377:	0f 85 05 00 00 00    	jne    404382 <http_parser_execute+0x3132>
  40437d:	e9 28 00 00 00       	jmpq   4043aa <http_parser_execute+0x315a>
  404382:	48 bf a0 06 41 00 00 	movabs $0x4106a0,%rdi
  404389:	00 00 00 
  40438c:	48 be c4 06 41 00 00 	movabs $0x4106c4,%rsi
  404393:	00 00 00 
  404396:	ba d3 05 00 00       	mov    $0x5d3,%edx
  40439b:	48 b9 d2 06 41 00 00 	movabs $0x4106d2,%rcx
  4043a2:	00 00 00 
  4043a5:	e8 e6 cc ff ff       	callq  401090 <__assert_fail@plt>
  4043aa:	48 83 7d b8 00       	cmpq   $0x0,-0x48(%rbp)
  4043af:	0f 84 fb 00 00 00    	je     4044b0 <http_parser_execute+0x3260>
  4043b5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4043b9:	48 83 78 20 00       	cmpq   $0x0,0x20(%rax)
  4043be:	0f 95 c0             	setne  %al
  4043c1:	34 ff                	xor    $0xff,%al
  4043c3:	34 ff                	xor    $0xff,%al
  4043c5:	24 01                	and    $0x1,%al
  4043c7:	0f b6 c0             	movzbl %al,%eax
  4043ca:	48 98                	cltq   
  4043cc:	48 83 f8 00          	cmp    $0x0,%rax
  4043d0:	0f 84 d2 00 00 00    	je     4044a8 <http_parser_execute+0x3258>
  4043d6:	8b 55 9c             	mov    -0x64(%rbp),%edx
  4043d9:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4043dd:	8b 08                	mov    (%rax),%ecx
  4043df:	83 e2 7f             	and    $0x7f,%edx
  4043e2:	c1 e2 0a             	shl    $0xa,%edx
  4043e5:	81 e1 ff 03 fe ff    	and    $0xfffe03ff,%ecx
  4043eb:	09 d1                	or     %edx,%ecx
  4043ed:	89 08                	mov    %ecx,(%rax)
  4043ef:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4043f3:	48 8b 40 20          	mov    0x20(%rax),%rax
  4043f7:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  4043fb:	48 8b 75 b8          	mov    -0x48(%rbp),%rsi
  4043ff:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  404403:	48 8b 4d b8          	mov    -0x48(%rbp),%rcx
  404407:	48 29 ca             	sub    %rcx,%rdx
  40440a:	ff d0                	callq  *%rax
  40440c:	89 c1                	mov    %eax,%ecx
  40440e:	31 c0                	xor    %eax,%eax
  404410:	39 c8                	cmp    %ecx,%eax
  404412:	0f 95 c0             	setne  %al
  404415:	34 ff                	xor    $0xff,%al
  404417:	34 ff                	xor    $0xff,%al
  404419:	24 01                	and    $0x1,%al
  40441b:	0f b6 c0             	movzbl %al,%eax
  40441e:	48 98                	cltq   
  404420:	48 83 f8 00          	cmp    $0x0,%rax
  404424:	0f 84 2a 00 00 00    	je     404454 <http_parser_execute+0x3204>
  40442a:	e9 00 00 00 00       	jmpq   40442f <http_parser_execute+0x31df>
  40442f:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  404432:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  404436:	89 48 04             	mov    %ecx,0x4(%rax)
  404439:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40443d:	8b 48 14             	mov    0x14(%rax),%ecx
  404440:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  404446:	81 c9 00 00 00 04    	or     $0x4000000,%ecx
  40444c:	89 48 14             	mov    %ecx,0x14(%rax)
  40444f:	e9 00 00 00 00       	jmpq   404454 <http_parser_execute+0x3204>
  404454:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  404458:	8b 00                	mov    (%rax),%eax
  40445a:	c1 e8 0a             	shr    $0xa,%eax
  40445d:	83 e0 7f             	and    $0x7f,%eax
  404460:	89 45 9c             	mov    %eax,-0x64(%rbp)
  404463:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  404467:	8b 40 14             	mov    0x14(%rax),%eax
  40446a:	c1 e8 18             	shr    $0x18,%eax
  40446d:	83 e0 7f             	and    $0x7f,%eax
  404470:	83 f8 00             	cmp    $0x0,%eax
  404473:	0f 95 c0             	setne  %al
  404476:	34 ff                	xor    $0xff,%al
  404478:	34 ff                	xor    $0xff,%al
  40447a:	24 01                	and    $0x1,%al
  40447c:	0f b6 c0             	movzbl %al,%eax
  40447f:	48 98                	cltq   
  404481:	48 83 f8 00          	cmp    $0x0,%rax
  404485:	0f 84 18 00 00 00    	je     4044a3 <http_parser_execute+0x3253>
  40448b:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  40448f:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  404493:	48 29 c8             	sub    %rcx,%rax
  404496:	48 83 c0 01          	add    $0x1,%rax
  40449a:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40449e:	e9 10 34 00 00       	jmpq   4078b3 <http_parser_execute+0x6663>
  4044a3:	e9 00 00 00 00       	jmpq   4044a8 <http_parser_execute+0x3258>
  4044a8:	48 c7 45 b8 00 00 00 	movq   $0x0,-0x48(%rbp)
  4044af:	00 
  4044b0:	e9 00 00 00 00       	jmpq   4044b5 <http_parser_execute+0x3265>
  4044b5:	e9 4a 0b 00 00       	jmpq   405004 <http_parser_execute+0x3db4>
  4044ba:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  4044be:	83 f8 0a             	cmp    $0xa,%eax
  4044c1:	0f 85 d7 01 00 00    	jne    40469e <http_parser_execute+0x344e>
  4044c7:	c7 45 9c 34 00 00 00 	movl   $0x34,-0x64(%rbp)
  4044ce:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  4044d2:	48 8b 8d 68 ff ff ff 	mov    -0x98(%rbp),%rcx
  4044d9:	48 29 c8             	sub    %rcx,%rax
  4044dc:	03 45 90             	add    -0x70(%rbp),%eax
  4044df:	89 45 90             	mov    %eax,-0x70(%rbp)
  4044e2:	8b 45 90             	mov    -0x70(%rbp),%eax
  4044e5:	3b 04 25 c0 e0 8b 00 	cmp    0x8be0c0,%eax
  4044ec:	0f 97 c0             	seta   %al
  4044ef:	34 ff                	xor    $0xff,%al
  4044f1:	34 ff                	xor    $0xff,%al
  4044f3:	24 01                	and    $0x1,%al
  4044f5:	0f b6 c0             	movzbl %al,%eax
  4044f8:	48 98                	cltq   
  4044fa:	48 83 f8 00          	cmp    $0x0,%rax
  4044fe:	0f 84 2a 00 00 00    	je     40452e <http_parser_execute+0x32de>
  404504:	e9 00 00 00 00       	jmpq   404509 <http_parser_execute+0x32b9>
  404509:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  40450c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  404510:	89 48 04             	mov    %ecx,0x4(%rax)
  404513:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  404517:	8b 48 14             	mov    0x14(%rax),%ecx
  40451a:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  404520:	81 c9 00 00 00 0c    	or     $0xc000000,%ecx
  404526:	89 48 14             	mov    %ecx,0x14(%rax)
  404529:	e9 0e 33 00 00       	jmpq   40783c <http_parser_execute+0x65ec>
  40452e:	e9 00 00 00 00       	jmpq   404533 <http_parser_execute+0x32e3>
  404533:	8b 95 64 ff ff ff    	mov    -0x9c(%rbp),%edx
  404539:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40453d:	8b 08                	mov    (%rax),%ecx
  40453f:	83 e2 7f             	and    $0x7f,%edx
  404542:	c1 e2 11             	shl    $0x11,%edx
  404545:	81 e1 ff ff 01 ff    	and    $0xff01ffff,%ecx
  40454b:	09 d1                	or     %edx,%ecx
  40454d:	89 08                	mov    %ecx,(%rax)
  40454f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  404553:	8b 40 14             	mov    0x14(%rax),%eax
  404556:	c1 e8 18             	shr    $0x18,%eax
  404559:	83 e0 7f             	and    $0x7f,%eax
  40455c:	83 f8 00             	cmp    $0x0,%eax
  40455f:	0f 85 05 00 00 00    	jne    40456a <http_parser_execute+0x331a>
  404565:	e9 28 00 00 00       	jmpq   404592 <http_parser_execute+0x3342>
  40456a:	48 bf a0 06 41 00 00 	movabs $0x4106a0,%rdi
  404571:	00 00 00 
  404574:	48 be c4 06 41 00 00 	movabs $0x4106c4,%rsi
  40457b:	00 00 00 
  40457e:	ba db 05 00 00       	mov    $0x5db,%edx
  404583:	48 b9 d2 06 41 00 00 	movabs $0x4106d2,%rcx
  40458a:	00 00 00 
  40458d:	e8 fe ca ff ff       	callq  401090 <__assert_fail@plt>
  404592:	48 83 7d b8 00       	cmpq   $0x0,-0x48(%rbp)
  404597:	0f 84 f7 00 00 00    	je     404694 <http_parser_execute+0x3444>
  40459d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4045a1:	48 83 78 20 00       	cmpq   $0x0,0x20(%rax)
  4045a6:	0f 95 c0             	setne  %al
  4045a9:	34 ff                	xor    $0xff,%al
  4045ab:	34 ff                	xor    $0xff,%al
  4045ad:	24 01                	and    $0x1,%al
  4045af:	0f b6 c0             	movzbl %al,%eax
  4045b2:	48 98                	cltq   
  4045b4:	48 83 f8 00          	cmp    $0x0,%rax
  4045b8:	0f 84 ce 00 00 00    	je     40468c <http_parser_execute+0x343c>
  4045be:	8b 55 9c             	mov    -0x64(%rbp),%edx
  4045c1:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4045c5:	8b 08                	mov    (%rax),%ecx
  4045c7:	83 e2 7f             	and    $0x7f,%edx
  4045ca:	c1 e2 0a             	shl    $0xa,%edx
  4045cd:	81 e1 ff 03 fe ff    	and    $0xfffe03ff,%ecx
  4045d3:	09 d1                	or     %edx,%ecx
  4045d5:	89 08                	mov    %ecx,(%rax)
  4045d7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4045db:	48 8b 40 20          	mov    0x20(%rax),%rax
  4045df:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  4045e3:	48 8b 75 b8          	mov    -0x48(%rbp),%rsi
  4045e7:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  4045eb:	48 8b 4d b8          	mov    -0x48(%rbp),%rcx
  4045ef:	48 29 ca             	sub    %rcx,%rdx
  4045f2:	ff d0                	callq  *%rax
  4045f4:	89 c1                	mov    %eax,%ecx
  4045f6:	31 c0                	xor    %eax,%eax
  4045f8:	39 c8                	cmp    %ecx,%eax
  4045fa:	0f 95 c0             	setne  %al
  4045fd:	34 ff                	xor    $0xff,%al
  4045ff:	34 ff                	xor    $0xff,%al
  404601:	24 01                	and    $0x1,%al
  404603:	0f b6 c0             	movzbl %al,%eax
  404606:	48 98                	cltq   
  404608:	48 83 f8 00          	cmp    $0x0,%rax
  40460c:	0f 84 2a 00 00 00    	je     40463c <http_parser_execute+0x33ec>
  404612:	e9 00 00 00 00       	jmpq   404617 <http_parser_execute+0x33c7>
  404617:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  40461a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40461e:	89 48 04             	mov    %ecx,0x4(%rax)
  404621:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  404625:	8b 48 14             	mov    0x14(%rax),%ecx
  404628:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  40462e:	81 c9 00 00 00 04    	or     $0x4000000,%ecx
  404634:	89 48 14             	mov    %ecx,0x14(%rax)
  404637:	e9 00 00 00 00       	jmpq   40463c <http_parser_execute+0x33ec>
  40463c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  404640:	8b 00                	mov    (%rax),%eax
  404642:	c1 e8 0a             	shr    $0xa,%eax
  404645:	83 e0 7f             	and    $0x7f,%eax
  404648:	89 45 9c             	mov    %eax,-0x64(%rbp)
  40464b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40464f:	8b 40 14             	mov    0x14(%rax),%eax
  404652:	c1 e8 18             	shr    $0x18,%eax
  404655:	83 e0 7f             	and    $0x7f,%eax
  404658:	83 f8 00             	cmp    $0x0,%eax
  40465b:	0f 95 c0             	setne  %al
  40465e:	34 ff                	xor    $0xff,%al
  404660:	34 ff                	xor    $0xff,%al
  404662:	24 01                	and    $0x1,%al
  404664:	0f b6 c0             	movzbl %al,%eax
  404667:	48 98                	cltq   
  404669:	48 83 f8 00          	cmp    $0x0,%rax
  40466d:	0f 84 14 00 00 00    	je     404687 <http_parser_execute+0x3437>
  404673:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  404677:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  40467b:	48 29 c8             	sub    %rcx,%rax
  40467e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  404682:	e9 2c 32 00 00       	jmpq   4078b3 <http_parser_execute+0x6663>
  404687:	e9 00 00 00 00       	jmpq   40468c <http_parser_execute+0x343c>
  40468c:	48 c7 45 b8 00 00 00 	movq   $0x0,-0x48(%rbp)
  404693:	00 
  404694:	e9 00 00 00 00       	jmpq   404699 <http_parser_execute+0x3449>
  404699:	e9 38 cf ff ff       	jmpq   4015d6 <http_parser_execute+0x386>
  40469e:	83 7d 98 00          	cmpl   $0x0,-0x68(%rbp)
  4046a2:	0f 85 6b 00 00 00    	jne    404713 <http_parser_execute+0x34c3>
  4046a8:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  4046ac:	83 f8 0d             	cmp    $0xd,%eax
  4046af:	0f 84 5e 00 00 00    	je     404713 <http_parser_execute+0x34c3>
  4046b5:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  4046b9:	83 f8 0a             	cmp    $0xa,%eax
  4046bc:	0f 84 51 00 00 00    	je     404713 <http_parser_execute+0x34c3>
  4046c2:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  4046c6:	83 f8 09             	cmp    $0x9,%eax
  4046c9:	0f 84 44 00 00 00    	je     404713 <http_parser_execute+0x34c3>
  4046cf:	0f b6 45 d6          	movzbl -0x2a(%rbp),%eax
  4046d3:	83 f8 1f             	cmp    $0x1f,%eax
  4046d6:	0f 8e 0d 00 00 00    	jle    4046e9 <http_parser_execute+0x3499>
  4046dc:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  4046e0:	83 f8 7f             	cmp    $0x7f,%eax
  4046e3:	0f 85 2a 00 00 00    	jne    404713 <http_parser_execute+0x34c3>
  4046e9:	e9 00 00 00 00       	jmpq   4046ee <http_parser_execute+0x349e>
  4046ee:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  4046f1:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4046f5:	89 48 04             	mov    %ecx,0x4(%rax)
  4046f8:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4046fc:	8b 48 14             	mov    0x14(%rax),%ecx
  4046ff:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  404705:	81 c9 00 00 00 18    	or     $0x18000000,%ecx
  40470b:	89 48 14             	mov    %ecx,0x14(%rax)
  40470e:	e9 29 31 00 00       	jmpq   40783c <http_parser_execute+0x65ec>
  404713:	8a 45 d6             	mov    -0x2a(%rbp),%al
  404716:	0c 20                	or     $0x20,%al
  404718:	88 45 d7             	mov    %al,-0x29(%rbp)
  40471b:	8b 85 64 ff ff ff    	mov    -0x9c(%rbp),%eax
  404721:	48 89 85 98 fe ff ff 	mov    %rax,-0x168(%rbp)
  404728:	48 83 e8 1a          	sub    $0x1a,%rax
  40472c:	0f 87 ab 08 00 00    	ja     404fdd <http_parser_execute+0x3d8d>
  404732:	48 8b 85 98 fe ff ff 	mov    -0x168(%rbp),%rax
  404739:	48 8b 04 c5 b8 f2 40 	mov    0x40f2b8(,%rax,8),%rax
  404740:	00 
  404741:	ff e0                	jmpq   *%rax
  404743:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  404747:	48 03 45 d8          	add    -0x28(%rbp),%rax
  40474b:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
  40474f:	48 29 c8             	sub    %rcx,%rax
  404752:	48 89 85 58 ff ff ff 	mov    %rax,-0xa8(%rbp)
  404759:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  40475d:	48 89 85 90 fe ff ff 	mov    %rax,-0x170(%rbp)
  404764:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
  40476b:	8b 0c 25 c0 e0 8b 00 	mov    0x8be0c0,%ecx
  404772:	48 39 c8             	cmp    %rcx,%rax
  404775:	0f 83 13 00 00 00    	jae    40478e <http_parser_execute+0x353e>
  40477b:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
  404782:	48 89 85 88 fe ff ff 	mov    %rax,-0x178(%rbp)
  404789:	e9 0e 00 00 00       	jmpq   40479c <http_parser_execute+0x354c>
  40478e:	8b 04 25 c0 e0 8b 00 	mov    0x8be0c0,%eax
  404795:	48 89 85 88 fe ff ff 	mov    %rax,-0x178(%rbp)
  40479c:	48 8b 85 90 fe ff ff 	mov    -0x170(%rbp),%rax
  4047a3:	48 8b 8d 88 fe ff ff 	mov    -0x178(%rbp),%rcx
  4047aa:	48 01 c8             	add    %rcx,%rax
  4047ad:	48 89 85 50 ff ff ff 	mov    %rax,-0xb0(%rbp)
  4047b4:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  4047b8:	48 3b 85 50 ff ff ff 	cmp    -0xb0(%rbp),%rax
  4047bf:	0f 84 bf 00 00 00    	je     404884 <http_parser_execute+0x3634>
  4047c5:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  4047c9:	8a 00                	mov    (%rax),%al
  4047cb:	88 45 d6             	mov    %al,-0x2a(%rbp)
  4047ce:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  4047d2:	83 f8 0d             	cmp    $0xd,%eax
  4047d5:	0f 84 0d 00 00 00    	je     4047e8 <http_parser_execute+0x3598>
  4047db:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  4047df:	83 f8 0a             	cmp    $0xa,%eax
  4047e2:	0f 85 11 00 00 00    	jne    4047f9 <http_parser_execute+0x35a9>
  4047e8:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  4047ec:	48 83 c0 ff          	add    $0xffffffffffffffff,%rax
  4047f0:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  4047f4:	e9 8b 00 00 00       	jmpq   404884 <http_parser_execute+0x3634>
  4047f9:	83 7d 98 00          	cmpl   $0x0,-0x68(%rbp)
  4047fd:	0f 85 6b 00 00 00    	jne    40486e <http_parser_execute+0x361e>
  404803:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  404807:	83 f8 0d             	cmp    $0xd,%eax
  40480a:	0f 84 5e 00 00 00    	je     40486e <http_parser_execute+0x361e>
  404810:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  404814:	83 f8 0a             	cmp    $0xa,%eax
  404817:	0f 84 51 00 00 00    	je     40486e <http_parser_execute+0x361e>
  40481d:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  404821:	83 f8 09             	cmp    $0x9,%eax
  404824:	0f 84 44 00 00 00    	je     40486e <http_parser_execute+0x361e>
  40482a:	0f b6 45 d6          	movzbl -0x2a(%rbp),%eax
  40482e:	83 f8 1f             	cmp    $0x1f,%eax
  404831:	0f 8e 0d 00 00 00    	jle    404844 <http_parser_execute+0x35f4>
  404837:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  40483b:	83 f8 7f             	cmp    $0x7f,%eax
  40483e:	0f 85 2a 00 00 00    	jne    40486e <http_parser_execute+0x361e>
  404844:	e9 00 00 00 00       	jmpq   404849 <http_parser_execute+0x35f9>
  404849:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  40484c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  404850:	89 48 04             	mov    %ecx,0x4(%rax)
  404853:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  404857:	8b 48 14             	mov    0x14(%rax),%ecx
  40485a:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  404860:	81 c9 00 00 00 18    	or     $0x18000000,%ecx
  404866:	89 48 14             	mov    %ecx,0x14(%rax)
  404869:	e9 ce 2f 00 00       	jmpq   40783c <http_parser_execute+0x65ec>
  40486e:	e9 00 00 00 00       	jmpq   404873 <http_parser_execute+0x3623>
  404873:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  404877:	48 83 c0 01          	add    $0x1,%rax
  40487b:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  40487f:	e9 30 ff ff ff       	jmpq   4047b4 <http_parser_execute+0x3564>
  404884:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  404888:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  40488c:	48 03 4d d8          	add    -0x28(%rbp),%rcx
  404890:	48 39 c8             	cmp    %rcx,%rax
  404893:	0f 85 0c 00 00 00    	jne    4048a5 <http_parser_execute+0x3655>
  404899:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  40489d:	48 83 c0 ff          	add    $0xffffffffffffffff,%rax
  4048a1:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  4048a5:	e9 44 07 00 00       	jmpq   404fee <http_parser_execute+0x3d9e>
  4048aa:	48 bf 74 07 41 00 00 	movabs $0x410774,%rdi
  4048b1:	00 00 00 
  4048b4:	48 be c4 06 41 00 00 	movabs $0x4106c4,%rsi
  4048bb:	00 00 00 
  4048be:	ba fe 05 00 00       	mov    $0x5fe,%edx
  4048c3:	48 b9 d2 06 41 00 00 	movabs $0x4106d2,%rcx
  4048ca:	00 00 00 
  4048cd:	e8 be c7 ff ff       	callq  401090 <__assert_fail@plt>
  4048d2:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  4048d6:	83 f8 20             	cmp    $0x20,%eax
  4048d9:	0f 85 05 00 00 00    	jne    4048e4 <http_parser_execute+0x3694>
  4048df:	e9 0a 07 00 00       	jmpq   404fee <http_parser_execute+0x3d9e>
  4048e4:	c7 85 64 ff ff ff 0b 	movl   $0xb,-0x9c(%rbp)
  4048eb:	00 00 00 
  4048ee:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  4048f2:	83 f8 20             	cmp    $0x20,%eax
  4048f5:	0f 85 0f 00 00 00    	jne    40490a <http_parser_execute+0x36ba>
  4048fb:	c7 85 64 ff ff ff 0c 	movl   $0xc,-0x9c(%rbp)
  404902:	00 00 00 
  404905:	e9 e4 06 00 00       	jmpq   404fee <http_parser_execute+0x3d9e>
  40490a:	0f be 4d d6          	movsbl -0x2a(%rbp),%ecx
  40490e:	31 c0                	xor    %eax,%eax
  404910:	83 f9 30             	cmp    $0x30,%ecx
  404913:	88 85 87 fe ff ff    	mov    %al,-0x179(%rbp)
  404919:	0f 8c 10 00 00 00    	jl     40492f <http_parser_execute+0x36df>
  40491f:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  404923:	83 f8 39             	cmp    $0x39,%eax
  404926:	0f 9e c0             	setle  %al
  404929:	88 85 87 fe ff ff    	mov    %al,-0x179(%rbp)
  40492f:	8a 85 87 fe ff ff    	mov    -0x179(%rbp),%al
  404935:	34 ff                	xor    $0xff,%al
  404937:	34 ff                	xor    $0xff,%al
  404939:	34 ff                	xor    $0xff,%al
  40493b:	24 01                	and    $0x1,%al
  40493d:	0f b6 c0             	movzbl %al,%eax
  404940:	48 98                	cltq   
  404942:	48 83 f8 00          	cmp    $0x0,%rax
  404946:	0f 84 46 00 00 00    	je     404992 <http_parser_execute+0x3742>
  40494c:	e9 00 00 00 00       	jmpq   404951 <http_parser_execute+0x3701>
  404951:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  404954:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  404958:	89 48 04             	mov    %ecx,0x4(%rax)
  40495b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40495f:	8b 48 14             	mov    0x14(%rax),%ecx
  404962:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  404968:	81 c9 00 00 00 19    	or     $0x19000000,%ecx
  40496e:	89 48 14             	mov    %ecx,0x14(%rax)
  404971:	8b 95 64 ff ff ff    	mov    -0x9c(%rbp),%edx
  404977:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40497b:	8b 08                	mov    (%rax),%ecx
  40497d:	83 e2 7f             	and    $0x7f,%edx
  404980:	c1 e2 11             	shl    $0x11,%edx
  404983:	81 e1 ff ff 01 ff    	and    $0xff01ffff,%ecx
  404989:	09 d1                	or     %edx,%ecx
  40498b:	89 08                	mov    %ecx,(%rax)
  40498d:	e9 aa 2e 00 00       	jmpq   40783c <http_parser_execute+0x65ec>
  404992:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  404996:	48 8b 40 08          	mov    0x8(%rax),%rax
  40499a:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
  4049a1:	48 6b 85 48 ff ff ff 	imul   $0xa,-0xb8(%rbp),%rax
  4049a8:	0a 
  4049a9:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
  4049b0:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  4049b4:	83 e8 30             	sub    $0x30,%eax
  4049b7:	48 98                	cltq   
  4049b9:	48 03 85 48 ff ff ff 	add    -0xb8(%rbp),%rax
  4049c0:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
  4049c7:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  4049cb:	48 b8 98 99 99 99 99 	movabs $0x1999999999999998,%rax
  4049d2:	99 99 19 
  4049d5:	48 3b 41 08          	cmp    0x8(%rcx),%rax
  4049d9:	0f 92 c0             	setb   %al
  4049dc:	34 ff                	xor    $0xff,%al
  4049de:	34 ff                	xor    $0xff,%al
  4049e0:	24 01                	and    $0x1,%al
  4049e2:	0f b6 c0             	movzbl %al,%eax
  4049e5:	48 98                	cltq   
  4049e7:	48 83 f8 00          	cmp    $0x0,%rax
  4049eb:	0f 84 46 00 00 00    	je     404a37 <http_parser_execute+0x37e7>
  4049f1:	e9 00 00 00 00       	jmpq   4049f6 <http_parser_execute+0x37a6>
  4049f6:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  4049f9:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4049fd:	89 48 04             	mov    %ecx,0x4(%rax)
  404a00:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  404a04:	8b 48 14             	mov    0x14(%rax),%ecx
  404a07:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  404a0d:	81 c9 00 00 00 19    	or     $0x19000000,%ecx
  404a13:	89 48 14             	mov    %ecx,0x14(%rax)
  404a16:	8b 95 64 ff ff ff    	mov    -0x9c(%rbp),%edx
  404a1c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  404a20:	8b 08                	mov    (%rax),%ecx
  404a22:	83 e2 7f             	and    $0x7f,%edx
  404a25:	c1 e2 11             	shl    $0x11,%edx
  404a28:	81 e1 ff ff 01 ff    	and    $0xff01ffff,%ecx
  404a2e:	09 d1                	or     %edx,%ecx
  404a30:	89 08                	mov    %ecx,(%rax)
  404a32:	e9 05 2e 00 00       	jmpq   40783c <http_parser_execute+0x65ec>
  404a37:	48 8b 8d 48 ff ff ff 	mov    -0xb8(%rbp),%rcx
  404a3e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  404a42:	48 89 48 08          	mov    %rcx,0x8(%rax)
  404a46:	e9 a3 05 00 00       	jmpq   404fee <http_parser_execute+0x3d9e>
  404a4b:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  404a4f:	83 f8 20             	cmp    $0x20,%eax
  404a52:	0f 85 05 00 00 00    	jne    404a5d <http_parser_execute+0x380d>
  404a58:	e9 91 05 00 00       	jmpq   404fee <http_parser_execute+0x3d9e>
  404a5d:	e9 00 00 00 00       	jmpq   404a62 <http_parser_execute+0x3812>
  404a62:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  404a65:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  404a69:	89 48 04             	mov    %ecx,0x4(%rax)
  404a6c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  404a70:	8b 48 14             	mov    0x14(%rax),%ecx
  404a73:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  404a79:	81 c9 00 00 00 19    	or     $0x19000000,%ecx
  404a7f:	89 48 14             	mov    %ecx,0x14(%rax)
  404a82:	8b 95 64 ff ff ff    	mov    -0x9c(%rbp),%edx
  404a88:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  404a8c:	8b 08                	mov    (%rax),%ecx
  404a8e:	83 e2 7f             	and    $0x7f,%edx
  404a91:	c1 e2 11             	shl    $0x11,%edx
  404a94:	81 e1 ff ff 01 ff    	and    $0xff01ffff,%ecx
  404a9a:	09 d1                	or     %edx,%ecx
  404a9c:	89 08                	mov    %ecx,(%rax)
  404a9e:	e9 99 2d 00 00       	jmpq   40783c <http_parser_execute+0x65ec>
  404aa3:	0f be 4d d7          	movsbl -0x29(%rbp),%ecx
  404aa7:	b8 63 00 00 00       	mov    $0x63,%eax
  404aac:	39 c8                	cmp    %ecx,%eax
  404aae:	0f 85 0f 00 00 00    	jne    404ac3 <http_parser_execute+0x3873>
  404ab4:	c7 85 64 ff ff ff 10 	movl   $0x10,-0x9c(%rbp)
  404abb:	00 00 00 
  404abe:	e9 73 00 00 00       	jmpq   404b36 <http_parser_execute+0x38e6>
  404ac3:	0f be 45 d7          	movsbl -0x29(%rbp),%eax
  404ac7:	83 f8 20             	cmp    $0x20,%eax
  404aca:	0f 85 0f 00 00 00    	jne    404adf <http_parser_execute+0x388f>
  404ad0:	31 c0                	xor    %eax,%eax
  404ad2:	a8 01                	test   $0x1,%al
  404ad4:	0f 85 1a 00 00 00    	jne    404af4 <http_parser_execute+0x38a4>
  404ada:	e9 24 00 00 00       	jmpq   404b03 <http_parser_execute+0x38b3>
  404adf:	0f b6 45 d7          	movzbl -0x29(%rbp),%eax
  404ae3:	0f be 04 05 a0 04 41 	movsbl 0x4104a0(,%rax,1),%eax
  404aea:	00 
  404aeb:	83 f8 00             	cmp    $0x0,%eax
  404aee:	0f 84 0f 00 00 00    	je     404b03 <http_parser_execute+0x38b3>
  404af4:	c7 85 64 ff ff ff 11 	movl   $0x11,-0x9c(%rbp)
  404afb:	00 00 00 
  404afe:	e9 2e 00 00 00       	jmpq   404b31 <http_parser_execute+0x38e1>
  404b03:	0f be 45 d7          	movsbl -0x29(%rbp),%eax
  404b07:	83 f8 20             	cmp    $0x20,%eax
  404b0a:	0f 84 0d 00 00 00    	je     404b1d <http_parser_execute+0x38cd>
  404b10:	0f be 45 d7          	movsbl -0x29(%rbp),%eax
  404b14:	83 f8 09             	cmp    $0x9,%eax
  404b17:	0f 85 05 00 00 00    	jne    404b22 <http_parser_execute+0x38d2>
  404b1d:	e9 0a 00 00 00       	jmpq   404b2c <http_parser_execute+0x38dc>
  404b22:	c7 85 64 ff ff ff 00 	movl   $0x0,-0x9c(%rbp)
  404b29:	00 00 00 
  404b2c:	e9 00 00 00 00       	jmpq   404b31 <http_parser_execute+0x38e1>
  404b31:	e9 00 00 00 00       	jmpq   404b36 <http_parser_execute+0x38e6>
  404b36:	e9 b3 04 00 00       	jmpq   404fee <http_parser_execute+0x3d9e>
  404b3b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  404b3f:	8b 10                	mov    (%rax),%edx
  404b41:	c1 ea 18             	shr    $0x18,%edx
  404b44:	83 e2 1f             	and    $0x1f,%edx
  404b47:	83 c2 01             	add    $0x1,%edx
  404b4a:	8b 08                	mov    (%rax),%ecx
  404b4c:	83 e2 1f             	and    $0x1f,%edx
  404b4f:	c1 e2 18             	shl    $0x18,%edx
  404b52:	81 e1 ff ff ff e0    	and    $0xe0ffffff,%ecx
  404b58:	09 d1                	or     %edx,%ecx
  404b5a:	89 08                	mov    %ecx,(%rax)
  404b5c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  404b60:	8b 00                	mov    (%rax),%eax
  404b62:	c1 e8 18             	shr    $0x18,%eax
  404b65:	83 e0 1f             	and    $0x1f,%eax
  404b68:	89 c0                	mov    %eax,%eax
  404b6a:	48 83 f8 07          	cmp    $0x7,%rax
  404b6e:	0f 87 22 00 00 00    	ja     404b96 <http_parser_execute+0x3946>
  404b74:	0f be 45 d7          	movsbl -0x29(%rbp),%eax
  404b78:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  404b7c:	8b 09                	mov    (%rcx),%ecx
  404b7e:	c1 e9 18             	shr    $0x18,%ecx
  404b81:	83 e1 1f             	and    $0x1f,%ecx
  404b84:	89 c9                	mov    %ecx,%ecx
  404b86:	0f be 0c 0d 75 5e 41 	movsbl 0x415e75(,%rcx,1),%ecx
  404b8d:	00 
  404b8e:	39 c8                	cmp    %ecx,%eax
  404b90:	0f 84 0f 00 00 00    	je     404ba5 <http_parser_execute+0x3955>
  404b96:	c7 85 64 ff ff ff 11 	movl   $0x11,-0x9c(%rbp)
  404b9d:	00 00 00 
  404ba0:	e9 27 00 00 00       	jmpq   404bcc <http_parser_execute+0x397c>
  404ba5:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  404ba9:	8b 00                	mov    (%rax),%eax
  404bab:	c1 e8 18             	shr    $0x18,%eax
  404bae:	83 e0 1f             	and    $0x1f,%eax
  404bb1:	89 c0                	mov    %eax,%eax
  404bb3:	48 83 f8 06          	cmp    $0x6,%rax
  404bb7:	0f 85 0a 00 00 00    	jne    404bc7 <http_parser_execute+0x3977>
  404bbd:	c7 85 64 ff ff ff 17 	movl   $0x17,-0x9c(%rbp)
  404bc4:	00 00 00 
  404bc7:	e9 00 00 00 00       	jmpq   404bcc <http_parser_execute+0x397c>
  404bcc:	e9 1d 04 00 00       	jmpq   404fee <http_parser_execute+0x3d9e>
  404bd1:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  404bd5:	83 f8 2c             	cmp    $0x2c,%eax
  404bd8:	0f 85 1b 00 00 00    	jne    404bf9 <http_parser_execute+0x39a9>
  404bde:	c7 85 64 ff ff ff 0f 	movl   $0xf,-0x9c(%rbp)
  404be5:	00 00 00 
  404be8:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  404bec:	8b 08                	mov    (%rax),%ecx
  404bee:	81 e1 ff ff ff e0    	and    $0xe0ffffff,%ecx
  404bf4:	83 c9 00             	or     $0x0,%ecx
  404bf7:	89 08                	mov    %ecx,(%rax)
  404bf9:	e9 f0 03 00 00       	jmpq   404fee <http_parser_execute+0x3d9e>
  404bfe:	0f be 45 d7          	movsbl -0x29(%rbp),%eax
  404c02:	83 f8 6b             	cmp    $0x6b,%eax
  404c05:	0f 85 0f 00 00 00    	jne    404c1a <http_parser_execute+0x39ca>
  404c0b:	c7 85 64 ff ff ff 13 	movl   $0x13,-0x9c(%rbp)
  404c12:	00 00 00 
  404c15:	e9 b5 00 00 00       	jmpq   404ccf <http_parser_execute+0x3a7f>
  404c1a:	0f be 45 d7          	movsbl -0x29(%rbp),%eax
  404c1e:	83 f8 63             	cmp    $0x63,%eax
  404c21:	0f 85 0f 00 00 00    	jne    404c36 <http_parser_execute+0x39e6>
  404c27:	c7 85 64 ff ff ff 14 	movl   $0x14,-0x9c(%rbp)
  404c2e:	00 00 00 
  404c31:	e9 94 00 00 00       	jmpq   404cca <http_parser_execute+0x3a7a>
  404c36:	0f be 45 d7          	movsbl -0x29(%rbp),%eax
  404c3a:	83 f8 75             	cmp    $0x75,%eax
  404c3d:	0f 85 0f 00 00 00    	jne    404c52 <http_parser_execute+0x3a02>
  404c43:	c7 85 64 ff ff ff 15 	movl   $0x15,-0x9c(%rbp)
  404c4a:	00 00 00 
  404c4d:	e9 73 00 00 00       	jmpq   404cc5 <http_parser_execute+0x3a75>
  404c52:	0f be 45 d7          	movsbl -0x29(%rbp),%eax
  404c56:	83 f8 20             	cmp    $0x20,%eax
  404c59:	0f 85 0f 00 00 00    	jne    404c6e <http_parser_execute+0x3a1e>
  404c5f:	31 c0                	xor    %eax,%eax
  404c61:	a8 01                	test   $0x1,%al
  404c63:	0f 85 1a 00 00 00    	jne    404c83 <http_parser_execute+0x3a33>
  404c69:	e9 24 00 00 00       	jmpq   404c92 <http_parser_execute+0x3a42>
  404c6e:	0f b6 45 d7          	movzbl -0x29(%rbp),%eax
  404c72:	0f be 04 05 a0 04 41 	movsbl 0x4104a0(,%rax,1),%eax
  404c79:	00 
  404c7a:	83 f8 00             	cmp    $0x0,%eax
  404c7d:	0f 84 0f 00 00 00    	je     404c92 <http_parser_execute+0x3a42>
  404c83:	c7 85 64 ff ff ff 16 	movl   $0x16,-0x9c(%rbp)
  404c8a:	00 00 00 
  404c8d:	e9 2e 00 00 00       	jmpq   404cc0 <http_parser_execute+0x3a70>
  404c92:	0f be 45 d7          	movsbl -0x29(%rbp),%eax
  404c96:	83 f8 20             	cmp    $0x20,%eax
  404c99:	0f 84 0d 00 00 00    	je     404cac <http_parser_execute+0x3a5c>
  404c9f:	0f be 45 d7          	movsbl -0x29(%rbp),%eax
  404ca3:	83 f8 09             	cmp    $0x9,%eax
  404ca6:	0f 85 05 00 00 00    	jne    404cb1 <http_parser_execute+0x3a61>
  404cac:	e9 0a 00 00 00       	jmpq   404cbb <http_parser_execute+0x3a6b>
  404cb1:	c7 85 64 ff ff ff 00 	movl   $0x0,-0x9c(%rbp)
  404cb8:	00 00 00 
  404cbb:	e9 00 00 00 00       	jmpq   404cc0 <http_parser_execute+0x3a70>
  404cc0:	e9 00 00 00 00       	jmpq   404cc5 <http_parser_execute+0x3a75>
  404cc5:	e9 00 00 00 00       	jmpq   404cca <http_parser_execute+0x3a7a>
  404cca:	e9 00 00 00 00       	jmpq   404ccf <http_parser_execute+0x3a7f>
  404ccf:	e9 1a 03 00 00       	jmpq   404fee <http_parser_execute+0x3d9e>
  404cd4:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  404cd8:	8b 10                	mov    (%rax),%edx
  404cda:	c1 ea 18             	shr    $0x18,%edx
  404cdd:	83 e2 1f             	and    $0x1f,%edx
  404ce0:	83 c2 01             	add    $0x1,%edx
  404ce3:	8b 08                	mov    (%rax),%ecx
  404ce5:	83 e2 1f             	and    $0x1f,%edx
  404ce8:	c1 e2 18             	shl    $0x18,%edx
  404ceb:	81 e1 ff ff ff e0    	and    $0xe0ffffff,%ecx
  404cf1:	09 d1                	or     %edx,%ecx
  404cf3:	89 08                	mov    %ecx,(%rax)
  404cf5:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  404cf9:	8b 00                	mov    (%rax),%eax
  404cfb:	c1 e8 18             	shr    $0x18,%eax
  404cfe:	83 e0 1f             	and    $0x1f,%eax
  404d01:	89 c0                	mov    %eax,%eax
  404d03:	48 83 f8 0a          	cmp    $0xa,%rax
  404d07:	0f 87 22 00 00 00    	ja     404d2f <http_parser_execute+0x3adf>
  404d0d:	0f be 45 d7          	movsbl -0x29(%rbp),%eax
  404d11:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  404d15:	8b 09                	mov    (%rcx),%ecx
  404d17:	c1 e9 18             	shr    $0x18,%ecx
  404d1a:	83 e1 1f             	and    $0x1f,%ecx
  404d1d:	89 c9                	mov    %ecx,%ecx
  404d1f:	0f be 0c 0d 8f 07 41 	movsbl 0x41078f(,%rcx,1),%ecx
  404d26:	00 
  404d27:	39 c8                	cmp    %ecx,%eax
  404d29:	0f 84 0f 00 00 00    	je     404d3e <http_parser_execute+0x3aee>
  404d2f:	c7 85 64 ff ff ff 16 	movl   $0x16,-0x9c(%rbp)
  404d36:	00 00 00 
  404d39:	e9 27 00 00 00       	jmpq   404d65 <http_parser_execute+0x3b15>
  404d3e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  404d42:	8b 00                	mov    (%rax),%eax
  404d44:	c1 e8 18             	shr    $0x18,%eax
  404d47:	83 e0 1f             	and    $0x1f,%eax
  404d4a:	89 c0                	mov    %eax,%eax
  404d4c:	48 83 f8 09          	cmp    $0x9,%rax
  404d50:	0f 85 0a 00 00 00    	jne    404d60 <http_parser_execute+0x3b10>
  404d56:	c7 85 64 ff ff ff 18 	movl   $0x18,-0x9c(%rbp)
  404d5d:	00 00 00 
  404d60:	e9 00 00 00 00       	jmpq   404d65 <http_parser_execute+0x3b15>
  404d65:	e9 84 02 00 00       	jmpq   404fee <http_parser_execute+0x3d9e>
  404d6a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  404d6e:	8b 10                	mov    (%rax),%edx
  404d70:	c1 ea 18             	shr    $0x18,%edx
  404d73:	83 e2 1f             	and    $0x1f,%edx
  404d76:	83 c2 01             	add    $0x1,%edx
  404d79:	8b 08                	mov    (%rax),%ecx
  404d7b:	83 e2 1f             	and    $0x1f,%edx
  404d7e:	c1 e2 18             	shl    $0x18,%edx
  404d81:	81 e1 ff ff ff e0    	and    $0xe0ffffff,%ecx
  404d87:	09 d1                	or     %edx,%ecx
  404d89:	89 08                	mov    %ecx,(%rax)
  404d8b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  404d8f:	8b 00                	mov    (%rax),%eax
  404d91:	c1 e8 18             	shr    $0x18,%eax
  404d94:	83 e0 1f             	and    $0x1f,%eax
  404d97:	89 c0                	mov    %eax,%eax
  404d99:	48 83 f8 05          	cmp    $0x5,%rax
  404d9d:	0f 87 22 00 00 00    	ja     404dc5 <http_parser_execute+0x3b75>
  404da3:	0f be 45 d7          	movsbl -0x29(%rbp),%eax
  404da7:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  404dab:	8b 09                	mov    (%rcx),%ecx
  404dad:	c1 e9 18             	shr    $0x18,%ecx
  404db0:	83 e1 1f             	and    $0x1f,%ecx
  404db3:	89 c9                	mov    %ecx,%ecx
  404db5:	0f be 0c 0d 9a 07 41 	movsbl 0x41079a(,%rcx,1),%ecx
  404dbc:	00 
  404dbd:	39 c8                	cmp    %ecx,%eax
  404dbf:	0f 84 0f 00 00 00    	je     404dd4 <http_parser_execute+0x3b84>
  404dc5:	c7 85 64 ff ff ff 16 	movl   $0x16,-0x9c(%rbp)
  404dcc:	00 00 00 
  404dcf:	e9 27 00 00 00       	jmpq   404dfb <http_parser_execute+0x3bab>
  404dd4:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  404dd8:	8b 00                	mov    (%rax),%eax
  404dda:	c1 e8 18             	shr    $0x18,%eax
  404ddd:	83 e0 1f             	and    $0x1f,%eax
  404de0:	89 c0                	mov    %eax,%eax
  404de2:	48 83 f8 04          	cmp    $0x4,%rax
  404de6:	0f 85 0a 00 00 00    	jne    404df6 <http_parser_execute+0x3ba6>
  404dec:	c7 85 64 ff ff ff 19 	movl   $0x19,-0x9c(%rbp)
  404df3:	00 00 00 
  404df6:	e9 00 00 00 00       	jmpq   404dfb <http_parser_execute+0x3bab>
  404dfb:	e9 ee 01 00 00       	jmpq   404fee <http_parser_execute+0x3d9e>
  404e00:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  404e04:	8b 10                	mov    (%rax),%edx
  404e06:	c1 ea 18             	shr    $0x18,%edx
  404e09:	83 e2 1f             	and    $0x1f,%edx
  404e0c:	83 c2 01             	add    $0x1,%edx
  404e0f:	8b 08                	mov    (%rax),%ecx
  404e11:	83 e2 1f             	and    $0x1f,%edx
  404e14:	c1 e2 18             	shl    $0x18,%edx
  404e17:	81 e1 ff ff ff e0    	and    $0xe0ffffff,%ecx
  404e1d:	09 d1                	or     %edx,%ecx
  404e1f:	89 08                	mov    %ecx,(%rax)
  404e21:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  404e25:	8b 00                	mov    (%rax),%eax
  404e27:	c1 e8 18             	shr    $0x18,%eax
  404e2a:	83 e0 1f             	and    $0x1f,%eax
  404e2d:	89 c0                	mov    %eax,%eax
  404e2f:	48 83 f8 07          	cmp    $0x7,%rax
  404e33:	0f 87 22 00 00 00    	ja     404e5b <http_parser_execute+0x3c0b>
  404e39:	0f be 45 d7          	movsbl -0x29(%rbp),%eax
  404e3d:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  404e41:	8b 09                	mov    (%rcx),%ecx
  404e43:	c1 e9 18             	shr    $0x18,%ecx
  404e46:	83 e1 1f             	and    $0x1f,%ecx
  404e49:	89 c9                	mov    %ecx,%ecx
  404e4b:	0f be 0c 0d 50 07 41 	movsbl 0x410750(,%rcx,1),%ecx
  404e52:	00 
  404e53:	39 c8                	cmp    %ecx,%eax
  404e55:	0f 84 0f 00 00 00    	je     404e6a <http_parser_execute+0x3c1a>
  404e5b:	c7 85 64 ff ff ff 16 	movl   $0x16,-0x9c(%rbp)
  404e62:	00 00 00 
  404e65:	e9 27 00 00 00       	jmpq   404e91 <http_parser_execute+0x3c41>
  404e6a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  404e6e:	8b 00                	mov    (%rax),%eax
  404e70:	c1 e8 18             	shr    $0x18,%eax
  404e73:	83 e0 1f             	and    $0x1f,%eax
  404e76:	89 c0                	mov    %eax,%eax
  404e78:	48 83 f8 06          	cmp    $0x6,%rax
  404e7c:	0f 85 0a 00 00 00    	jne    404e8c <http_parser_execute+0x3c3c>
  404e82:	c7 85 64 ff ff ff 1a 	movl   $0x1a,-0x9c(%rbp)
  404e89:	00 00 00 
  404e8c:	e9 00 00 00 00       	jmpq   404e91 <http_parser_execute+0x3c41>
  404e91:	e9 58 01 00 00       	jmpq   404fee <http_parser_execute+0x3d9e>
  404e96:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  404e9a:	83 f8 2c             	cmp    $0x2c,%eax
  404e9d:	0f 85 1b 00 00 00    	jne    404ebe <http_parser_execute+0x3c6e>
  404ea3:	c7 85 64 ff ff ff 12 	movl   $0x12,-0x9c(%rbp)
  404eaa:	00 00 00 
  404ead:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  404eb1:	8b 08                	mov    (%rax),%ecx
  404eb3:	81 e1 ff ff ff e0    	and    $0xe0ffffff,%ecx
  404eb9:	83 c9 00             	or     $0x0,%ecx
  404ebc:	89 08                	mov    %ecx,(%rax)
  404ebe:	e9 2b 01 00 00       	jmpq   404fee <http_parser_execute+0x3d9e>
  404ec3:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  404ec7:	83 f8 20             	cmp    $0x20,%eax
  404eca:	0f 84 0a 00 00 00    	je     404eda <http_parser_execute+0x3c8a>
  404ed0:	c7 85 64 ff ff ff 11 	movl   $0x11,-0x9c(%rbp)
  404ed7:	00 00 00 
  404eda:	e9 0f 01 00 00       	jmpq   404fee <http_parser_execute+0x3d9e>
  404edf:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  404ee3:	83 f8 2c             	cmp    $0x2c,%eax
  404ee6:	0f 85 d0 00 00 00    	jne    404fbc <http_parser_execute+0x3d6c>
  404eec:	83 bd 64 ff ff ff 18 	cmpl   $0x18,-0x9c(%rbp)
  404ef3:	0f 85 2c 00 00 00    	jne    404f25 <http_parser_execute+0x3cd5>
  404ef9:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  404efd:	8b 10                	mov    (%rax),%edx
  404eff:	c1 ea 02             	shr    $0x2,%edx
  404f02:	81 e2 ff 00 00 00    	and    $0xff,%edx
  404f08:	83 ca 02             	or     $0x2,%edx
  404f0b:	8b 08                	mov    (%rax),%ecx
  404f0d:	81 e2 ff 00 00 00    	and    $0xff,%edx
  404f13:	c1 e2 02             	shl    $0x2,%edx
  404f16:	81 e1 03 fc ff ff    	and    $0xfffffc03,%ecx
  404f1c:	09 d1                	or     %edx,%ecx
  404f1e:	89 08                	mov    %ecx,(%rax)
  404f20:	e9 77 00 00 00       	jmpq   404f9c <http_parser_execute+0x3d4c>
  404f25:	83 bd 64 ff ff ff 19 	cmpl   $0x19,-0x9c(%rbp)
  404f2c:	0f 85 2c 00 00 00    	jne    404f5e <http_parser_execute+0x3d0e>
  404f32:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  404f36:	8b 10                	mov    (%rax),%edx
  404f38:	c1 ea 02             	shr    $0x2,%edx
  404f3b:	81 e2 ff 00 00 00    	and    $0xff,%edx
  404f41:	83 ca 04             	or     $0x4,%edx
  404f44:	8b 08                	mov    (%rax),%ecx
  404f46:	81 e2 ff 00 00 00    	and    $0xff,%edx
  404f4c:	c1 e2 02             	shl    $0x2,%edx
  404f4f:	81 e1 03 fc ff ff    	and    $0xfffffc03,%ecx
  404f55:	09 d1                	or     %edx,%ecx
  404f57:	89 08                	mov    %ecx,(%rax)
  404f59:	e9 39 00 00 00       	jmpq   404f97 <http_parser_execute+0x3d47>
  404f5e:	83 bd 64 ff ff ff 1a 	cmpl   $0x1a,-0x9c(%rbp)
  404f65:	0f 85 27 00 00 00    	jne    404f92 <http_parser_execute+0x3d42>
  404f6b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  404f6f:	8b 10                	mov    (%rax),%edx
  404f71:	c1 ea 02             	shr    $0x2,%edx
  404f74:	81 e2 ff 00 00 00    	and    $0xff,%edx
  404f7a:	83 ca 08             	or     $0x8,%edx
  404f7d:	8b 08                	mov    (%rax),%ecx
  404f7f:	81 e2 ff 00 00 00    	and    $0xff,%edx
  404f85:	c1 e2 02             	shl    $0x2,%edx
  404f88:	81 e1 03 fc ff ff    	and    $0xfffffc03,%ecx
  404f8e:	09 d1                	or     %edx,%ecx
  404f90:	89 08                	mov    %ecx,(%rax)
  404f92:	e9 00 00 00 00       	jmpq   404f97 <http_parser_execute+0x3d47>
  404f97:	e9 00 00 00 00       	jmpq   404f9c <http_parser_execute+0x3d4c>
  404f9c:	c7 85 64 ff ff ff 12 	movl   $0x12,-0x9c(%rbp)
  404fa3:	00 00 00 
  404fa6:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  404faa:	8b 08                	mov    (%rax),%ecx
  404fac:	81 e1 ff ff ff e0    	and    $0xe0ffffff,%ecx
  404fb2:	83 c9 00             	or     $0x0,%ecx
  404fb5:	89 08                	mov    %ecx,(%rax)
  404fb7:	e9 1c 00 00 00       	jmpq   404fd8 <http_parser_execute+0x3d88>
  404fbc:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  404fc0:	83 f8 20             	cmp    $0x20,%eax
  404fc3:	0f 84 0a 00 00 00    	je     404fd3 <http_parser_execute+0x3d83>
  404fc9:	c7 85 64 ff ff ff 16 	movl   $0x16,-0x9c(%rbp)
  404fd0:	00 00 00 
  404fd3:	e9 00 00 00 00       	jmpq   404fd8 <http_parser_execute+0x3d88>
  404fd8:	e9 11 00 00 00       	jmpq   404fee <http_parser_execute+0x3d9e>
  404fdd:	c7 45 9c 32 00 00 00 	movl   $0x32,-0x64(%rbp)
  404fe4:	c7 85 64 ff ff ff 00 	movl   $0x0,-0x9c(%rbp)
  404feb:	00 00 00 
  404fee:	e9 00 00 00 00       	jmpq   404ff3 <http_parser_execute+0x3da3>
  404ff3:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  404ff7:	48 83 c0 01          	add    $0x1,%rax
  404ffb:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  404fff:	e9 15 f3 ff ff       	jmpq   404319 <http_parser_execute+0x30c9>
  405004:	8b 95 64 ff ff ff    	mov    -0x9c(%rbp),%edx
  40500a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40500e:	8b 08                	mov    (%rax),%ecx
  405010:	83 e2 7f             	and    $0x7f,%edx
  405013:	c1 e2 11             	shl    $0x11,%edx
  405016:	81 e1 ff ff 01 ff    	and    $0xff01ffff,%ecx
  40501c:	09 d1                	or     %edx,%ecx
  40501e:	89 08                	mov    %ecx,(%rax)
  405020:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  405024:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  405028:	48 03 4d d8          	add    -0x28(%rbp),%rcx
  40502c:	48 39 c8             	cmp    %rcx,%rax
  40502f:	0f 85 0c 00 00 00    	jne    405041 <http_parser_execute+0x3df1>
  405035:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  405039:	48 83 c0 ff          	add    $0xffffffffffffffff,%rax
  40503d:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  405041:	e9 00 00 00 00       	jmpq   405046 <http_parser_execute+0x3df6>
  405046:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  40504a:	48 8b 8d 68 ff ff ff 	mov    -0x98(%rbp),%rcx
  405051:	48 29 c8             	sub    %rcx,%rax
  405054:	03 45 90             	add    -0x70(%rbp),%eax
  405057:	89 45 90             	mov    %eax,-0x70(%rbp)
  40505a:	8b 45 90             	mov    -0x70(%rbp),%eax
  40505d:	3b 04 25 c0 e0 8b 00 	cmp    0x8be0c0,%eax
  405064:	0f 97 c0             	seta   %al
  405067:	34 ff                	xor    $0xff,%al
  405069:	34 ff                	xor    $0xff,%al
  40506b:	24 01                	and    $0x1,%al
  40506d:	0f b6 c0             	movzbl %al,%eax
  405070:	48 98                	cltq   
  405072:	48 83 f8 00          	cmp    $0x0,%rax
  405076:	0f 84 2a 00 00 00    	je     4050a6 <http_parser_execute+0x3e56>
  40507c:	e9 00 00 00 00       	jmpq   405081 <http_parser_execute+0x3e31>
  405081:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  405084:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  405088:	89 48 04             	mov    %ecx,0x4(%rax)
  40508b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40508f:	8b 48 14             	mov    0x14(%rax),%ecx
  405092:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  405098:	81 c9 00 00 00 0c    	or     $0xc000000,%ecx
  40509e:	89 48 14             	mov    %ecx,0x14(%rax)
  4050a1:	e9 96 27 00 00       	jmpq   40783c <http_parser_execute+0x65ec>
  4050a6:	e9 00 00 00 00       	jmpq   4050ab <http_parser_execute+0x3e5b>
  4050ab:	e9 1e 20 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  4050b0:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  4050b4:	83 f8 0a             	cmp    $0xa,%eax
  4050b7:	0f 95 c0             	setne  %al
  4050ba:	34 ff                	xor    $0xff,%al
  4050bc:	34 ff                	xor    $0xff,%al
  4050be:	24 01                	and    $0x1,%al
  4050c0:	0f b6 c0             	movzbl %al,%eax
  4050c3:	48 98                	cltq   
  4050c5:	48 83 f8 00          	cmp    $0x0,%rax
  4050c9:	0f 84 2a 00 00 00    	je     4050f9 <http_parser_execute+0x3ea9>
  4050cf:	e9 00 00 00 00       	jmpq   4050d4 <http_parser_execute+0x3e84>
  4050d4:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  4050d7:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4050db:	89 48 04             	mov    %ecx,0x4(%rax)
  4050de:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4050e2:	8b 48 14             	mov    0x14(%rax),%ecx
  4050e5:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  4050eb:	81 c9 00 00 00 17    	or     $0x17000000,%ecx
  4050f1:	89 48 14             	mov    %ecx,0x14(%rax)
  4050f4:	e9 43 27 00 00       	jmpq   40783c <http_parser_execute+0x65ec>
  4050f9:	c7 45 9c 33 00 00 00 	movl   $0x33,-0x64(%rbp)
  405100:	e9 c9 1f 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  405105:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  405109:	83 f8 20             	cmp    $0x20,%eax
  40510c:	0f 84 0d 00 00 00    	je     40511f <http_parser_execute+0x3ecf>
  405112:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  405116:	83 f8 09             	cmp    $0x9,%eax
  405119:	0f 85 35 00 00 00    	jne    405154 <http_parser_execute+0x3f04>
  40511f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  405123:	8b 00                	mov    (%rax),%eax
  405125:	c1 e8 11             	shr    $0x11,%eax
  405128:	83 e0 7f             	and    $0x7f,%eax
  40512b:	83 f8 0b             	cmp    $0xb,%eax
  40512e:	0f 85 14 00 00 00    	jne    405148 <http_parser_execute+0x3ef8>
  405134:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  405138:	8b 08                	mov    (%rax),%ecx
  40513a:	81 e1 ff ff 01 ff    	and    $0xff01ffff,%ecx
  405140:	81 c9 00 00 18 00    	or     $0x180000,%ecx
  405146:	89 08                	mov    %ecx,(%rax)
  405148:	c7 45 9c 31 00 00 00 	movl   $0x31,-0x64(%rbp)
  40514f:	e9 82 c4 ff ff       	jmpq   4015d6 <http_parser_execute+0x386>
  405154:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  405158:	8b 00                	mov    (%rax),%eax
  40515a:	c1 e8 11             	shr    $0x11,%eax
  40515d:	83 e0 7f             	and    $0x7f,%eax
  405160:	83 c0 e9             	add    $0xffffffe9,%eax
  405163:	89 c1                	mov    %eax,%ecx
  405165:	48 89 8d 78 fe ff ff 	mov    %rcx,-0x188(%rbp)
  40516c:	83 e8 03             	sub    $0x3,%eax
  40516f:	0f 87 c1 00 00 00    	ja     405236 <http_parser_execute+0x3fe6>
  405175:	48 8b 85 78 fe ff ff 	mov    -0x188(%rbp),%rax
  40517c:	48 8b 04 c5 98 f2 40 	mov    0x40f298(,%rax,8),%rax
  405183:	00 
  405184:	ff e0                	jmpq   *%rax
  405186:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40518a:	8b 10                	mov    (%rax),%edx
  40518c:	c1 ea 02             	shr    $0x2,%edx
  40518f:	81 e2 ff 00 00 00    	and    $0xff,%edx
  405195:	83 ca 02             	or     $0x2,%edx
  405198:	8b 08                	mov    (%rax),%ecx
  40519a:	81 e2 ff 00 00 00    	and    $0xff,%edx
  4051a0:	c1 e2 02             	shl    $0x2,%edx
  4051a3:	81 e1 03 fc ff ff    	and    $0xfffffc03,%ecx
  4051a9:	09 d1                	or     %edx,%ecx
  4051ab:	89 08                	mov    %ecx,(%rax)
  4051ad:	e9 89 00 00 00       	jmpq   40523b <http_parser_execute+0x3feb>
  4051b2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4051b6:	8b 10                	mov    (%rax),%edx
  4051b8:	c1 ea 02             	shr    $0x2,%edx
  4051bb:	81 e2 ff 00 00 00    	and    $0xff,%edx
  4051c1:	83 ca 04             	or     $0x4,%edx
  4051c4:	8b 08                	mov    (%rax),%ecx
  4051c6:	81 e2 ff 00 00 00    	and    $0xff,%edx
  4051cc:	c1 e2 02             	shl    $0x2,%edx
  4051cf:	81 e1 03 fc ff ff    	and    $0xfffffc03,%ecx
  4051d5:	09 d1                	or     %edx,%ecx
  4051d7:	89 08                	mov    %ecx,(%rax)
  4051d9:	e9 5d 00 00 00       	jmpq   40523b <http_parser_execute+0x3feb>
  4051de:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4051e2:	8b 10                	mov    (%rax),%edx
  4051e4:	c1 ea 02             	shr    $0x2,%edx
  4051e7:	81 e2 ff 00 00 00    	and    $0xff,%edx
  4051ed:	83 ca 01             	or     $0x1,%edx
  4051f0:	8b 08                	mov    (%rax),%ecx
  4051f2:	81 e2 ff 00 00 00    	and    $0xff,%edx
  4051f8:	c1 e2 02             	shl    $0x2,%edx
  4051fb:	81 e1 03 fc ff ff    	and    $0xfffffc03,%ecx
  405201:	09 d1                	or     %edx,%ecx
  405203:	89 08                	mov    %ecx,(%rax)
  405205:	e9 31 00 00 00       	jmpq   40523b <http_parser_execute+0x3feb>
  40520a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40520e:	8b 10                	mov    (%rax),%edx
  405210:	c1 ea 02             	shr    $0x2,%edx
  405213:	81 e2 ff 00 00 00    	and    $0xff,%edx
  405219:	83 ca 08             	or     $0x8,%edx
  40521c:	8b 08                	mov    (%rax),%ecx
  40521e:	81 e2 ff 00 00 00    	and    $0xff,%edx
  405224:	c1 e2 02             	shl    $0x2,%edx
  405227:	81 e1 03 fc ff ff    	and    $0xfffffc03,%ecx
  40522d:	09 d1                	or     %edx,%ecx
  40522f:	89 08                	mov    %ecx,(%rax)
  405231:	e9 05 00 00 00       	jmpq   40523b <http_parser_execute+0x3feb>
  405236:	e9 00 00 00 00       	jmpq   40523b <http_parser_execute+0x3feb>
  40523b:	c7 45 9c 2c 00 00 00 	movl   $0x2c,-0x64(%rbp)
  405242:	e9 8f c3 ff ff       	jmpq   4015d6 <http_parser_execute+0x386>
  405247:	e9 00 00 00 00       	jmpq   40524c <http_parser_execute+0x3ffc>
  40524c:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  405250:	83 f8 0a             	cmp    $0xa,%eax
  405253:	0f 84 2a 00 00 00    	je     405283 <http_parser_execute+0x4033>
  405259:	e9 00 00 00 00       	jmpq   40525e <http_parser_execute+0x400e>
  40525e:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  405261:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  405265:	89 48 04             	mov    %ecx,0x4(%rax)
  405268:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40526c:	8b 48 14             	mov    0x14(%rax),%ecx
  40526f:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  405275:	81 c9 00 00 00 1e    	or     $0x1e000000,%ecx
  40527b:	89 48 14             	mov    %ecx,0x14(%rax)
  40527e:	e9 b9 25 00 00       	jmpq   40783c <http_parser_execute+0x65ec>
  405283:	e9 00 00 00 00       	jmpq   405288 <http_parser_execute+0x4038>
  405288:	c7 45 9c 30 00 00 00 	movl   $0x30,-0x64(%rbp)
  40528f:	e9 3a 1e 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  405294:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  405298:	83 f8 20             	cmp    $0x20,%eax
  40529b:	0f 84 0d 00 00 00    	je     4052ae <http_parser_execute+0x405e>
  4052a1:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  4052a5:	83 f8 09             	cmp    $0x9,%eax
  4052a8:	0f 85 0c 00 00 00    	jne    4052ba <http_parser_execute+0x406a>
  4052ae:	c7 45 9c 2e 00 00 00 	movl   $0x2e,-0x64(%rbp)
  4052b5:	e9 14 1e 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  4052ba:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4052be:	8b 00                	mov    (%rax),%eax
  4052c0:	c1 e8 11             	shr    $0x11,%eax
  4052c3:	83 e0 7f             	and    $0x7f,%eax
  4052c6:	83 c0 f6             	add    $0xfffffff6,%eax
  4052c9:	89 c1                	mov    %eax,%ecx
  4052cb:	48 89 8d 70 fe ff ff 	mov    %rcx,-0x190(%rbp)
  4052d2:	83 e8 10             	sub    $0x10,%eax
  4052d5:	0f 87 eb 00 00 00    	ja     4053c6 <http_parser_execute+0x4176>
  4052db:	48 8b 85 70 fe ff ff 	mov    -0x190(%rbp),%rax
  4052e2:	48 8b 04 c5 10 f2 40 	mov    0x40f210(,%rax,8),%rax
  4052e9:	00 
  4052ea:	ff e0                	jmpq   *%rax
  4052ec:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4052f0:	8b 10                	mov    (%rax),%edx
  4052f2:	c1 ea 02             	shr    $0x2,%edx
  4052f5:	81 e2 ff 00 00 00    	and    $0xff,%edx
  4052fb:	83 ca 02             	or     $0x2,%edx
  4052fe:	8b 08                	mov    (%rax),%ecx
  405300:	81 e2 ff 00 00 00    	and    $0xff,%edx
  405306:	c1 e2 02             	shl    $0x2,%edx
  405309:	81 e1 03 fc ff ff    	and    $0xfffffc03,%ecx
  40530f:	09 d1                	or     %edx,%ecx
  405311:	89 08                	mov    %ecx,(%rax)
  405313:	e9 b3 00 00 00       	jmpq   4053cb <http_parser_execute+0x417b>
  405318:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40531c:	8b 10                	mov    (%rax),%edx
  40531e:	c1 ea 02             	shr    $0x2,%edx
  405321:	81 e2 ff 00 00 00    	and    $0xff,%edx
  405327:	83 ca 04             	or     $0x4,%edx
  40532a:	8b 08                	mov    (%rax),%ecx
  40532c:	81 e2 ff 00 00 00    	and    $0xff,%edx
  405332:	c1 e2 02             	shl    $0x2,%edx
  405335:	81 e1 03 fc ff ff    	and    $0xfffffc03,%ecx
  40533b:	09 d1                	or     %edx,%ecx
  40533d:	89 08                	mov    %ecx,(%rax)
  40533f:	e9 87 00 00 00       	jmpq   4053cb <http_parser_execute+0x417b>
  405344:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  405348:	8b 10                	mov    (%rax),%edx
  40534a:	c1 ea 02             	shr    $0x2,%edx
  40534d:	81 e2 ff 00 00 00    	and    $0xff,%edx
  405353:	83 ca 08             	or     $0x8,%edx
  405356:	8b 08                	mov    (%rax),%ecx
  405358:	81 e2 ff 00 00 00    	and    $0xff,%edx
  40535e:	c1 e2 02             	shl    $0x2,%edx
  405361:	81 e1 03 fc ff ff    	and    $0xfffffc03,%ecx
  405367:	09 d1                	or     %edx,%ecx
  405369:	89 08                	mov    %ecx,(%rax)
  40536b:	e9 5b 00 00 00       	jmpq   4053cb <http_parser_execute+0x417b>
  405370:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  405374:	8b 10                	mov    (%rax),%edx
  405376:	c1 ea 02             	shr    $0x2,%edx
  405379:	81 e2 ff 00 00 00    	and    $0xff,%edx
  40537f:	83 ca 01             	or     $0x1,%edx
  405382:	8b 08                	mov    (%rax),%ecx
  405384:	81 e2 ff 00 00 00    	and    $0xff,%edx
  40538a:	c1 e2 02             	shl    $0x2,%edx
  40538d:	81 e1 03 fc ff ff    	and    $0xfffffc03,%ecx
  405393:	09 d1                	or     %edx,%ecx
  405395:	89 08                	mov    %ecx,(%rax)
  405397:	e9 2f 00 00 00       	jmpq   4053cb <http_parser_execute+0x417b>
  40539c:	e9 00 00 00 00       	jmpq   4053a1 <http_parser_execute+0x4151>
  4053a1:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  4053a4:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4053a8:	89 48 04             	mov    %ecx,0x4(%rax)
  4053ab:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4053af:	8b 48 14             	mov    0x14(%rax),%ecx
  4053b2:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  4053b8:	81 c9 00 00 00 19    	or     $0x19000000,%ecx
  4053be:	89 48 14             	mov    %ecx,0x14(%rax)
  4053c1:	e9 76 24 00 00       	jmpq   40783c <http_parser_execute+0x65ec>
  4053c6:	e9 00 00 00 00       	jmpq   4053cb <http_parser_execute+0x417b>
  4053cb:	e9 00 00 00 00       	jmpq   4053d0 <http_parser_execute+0x4180>
  4053d0:	48 83 7d b8 00       	cmpq   $0x0,-0x48(%rbp)
  4053d5:	0f 85 08 00 00 00    	jne    4053e3 <http_parser_execute+0x4193>
  4053db:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  4053df:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
  4053e3:	e9 00 00 00 00       	jmpq   4053e8 <http_parser_execute+0x4198>
  4053e8:	c7 45 9c 2c 00 00 00 	movl   $0x2c,-0x64(%rbp)
  4053ef:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4053f3:	8b 40 14             	mov    0x14(%rax),%eax
  4053f6:	c1 e8 18             	shr    $0x18,%eax
  4053f9:	83 e0 7f             	and    $0x7f,%eax
  4053fc:	83 f8 00             	cmp    $0x0,%eax
  4053ff:	0f 85 05 00 00 00    	jne    40540a <http_parser_execute+0x41ba>
  405405:	e9 28 00 00 00       	jmpq   405432 <http_parser_execute+0x41e2>
  40540a:	48 bf a0 06 41 00 00 	movabs $0x4106a0,%rdi
  405411:	00 00 00 
  405414:	48 be c4 06 41 00 00 	movabs $0x4106c4,%rsi
  40541b:	00 00 00 
  40541e:	ba fe 06 00 00       	mov    $0x6fe,%edx
  405423:	48 b9 d2 06 41 00 00 	movabs $0x4106d2,%rcx
  40542a:	00 00 00 
  40542d:	e8 5e bc ff ff       	callq  401090 <__assert_fail@plt>
  405432:	48 83 7d b8 00       	cmpq   $0x0,-0x48(%rbp)
  405437:	0f 84 f7 00 00 00    	je     405534 <http_parser_execute+0x42e4>
  40543d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  405441:	48 83 78 20 00       	cmpq   $0x0,0x20(%rax)
  405446:	0f 95 c0             	setne  %al
  405449:	34 ff                	xor    $0xff,%al
  40544b:	34 ff                	xor    $0xff,%al
  40544d:	24 01                	and    $0x1,%al
  40544f:	0f b6 c0             	movzbl %al,%eax
  405452:	48 98                	cltq   
  405454:	48 83 f8 00          	cmp    $0x0,%rax
  405458:	0f 84 ce 00 00 00    	je     40552c <http_parser_execute+0x42dc>
  40545e:	8b 55 9c             	mov    -0x64(%rbp),%edx
  405461:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  405465:	8b 08                	mov    (%rax),%ecx
  405467:	83 e2 7f             	and    $0x7f,%edx
  40546a:	c1 e2 0a             	shl    $0xa,%edx
  40546d:	81 e1 ff 03 fe ff    	and    $0xfffe03ff,%ecx
  405473:	09 d1                	or     %edx,%ecx
  405475:	89 08                	mov    %ecx,(%rax)
  405477:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40547b:	48 8b 40 20          	mov    0x20(%rax),%rax
  40547f:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  405483:	48 8b 75 b8          	mov    -0x48(%rbp),%rsi
  405487:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  40548b:	48 8b 4d b8          	mov    -0x48(%rbp),%rcx
  40548f:	48 29 ca             	sub    %rcx,%rdx
  405492:	ff d0                	callq  *%rax
  405494:	89 c1                	mov    %eax,%ecx
  405496:	31 c0                	xor    %eax,%eax
  405498:	39 c8                	cmp    %ecx,%eax
  40549a:	0f 95 c0             	setne  %al
  40549d:	34 ff                	xor    $0xff,%al
  40549f:	34 ff                	xor    $0xff,%al
  4054a1:	24 01                	and    $0x1,%al
  4054a3:	0f b6 c0             	movzbl %al,%eax
  4054a6:	48 98                	cltq   
  4054a8:	48 83 f8 00          	cmp    $0x0,%rax
  4054ac:	0f 84 2a 00 00 00    	je     4054dc <http_parser_execute+0x428c>
  4054b2:	e9 00 00 00 00       	jmpq   4054b7 <http_parser_execute+0x4267>
  4054b7:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  4054ba:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4054be:	89 48 04             	mov    %ecx,0x4(%rax)
  4054c1:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4054c5:	8b 48 14             	mov    0x14(%rax),%ecx
  4054c8:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  4054ce:	81 c9 00 00 00 04    	or     $0x4000000,%ecx
  4054d4:	89 48 14             	mov    %ecx,0x14(%rax)
  4054d7:	e9 00 00 00 00       	jmpq   4054dc <http_parser_execute+0x428c>
  4054dc:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4054e0:	8b 00                	mov    (%rax),%eax
  4054e2:	c1 e8 0a             	shr    $0xa,%eax
  4054e5:	83 e0 7f             	and    $0x7f,%eax
  4054e8:	89 45 9c             	mov    %eax,-0x64(%rbp)
  4054eb:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4054ef:	8b 40 14             	mov    0x14(%rax),%eax
  4054f2:	c1 e8 18             	shr    $0x18,%eax
  4054f5:	83 e0 7f             	and    $0x7f,%eax
  4054f8:	83 f8 00             	cmp    $0x0,%eax
  4054fb:	0f 95 c0             	setne  %al
  4054fe:	34 ff                	xor    $0xff,%al
  405500:	34 ff                	xor    $0xff,%al
  405502:	24 01                	and    $0x1,%al
  405504:	0f b6 c0             	movzbl %al,%eax
  405507:	48 98                	cltq   
  405509:	48 83 f8 00          	cmp    $0x0,%rax
  40550d:	0f 84 14 00 00 00    	je     405527 <http_parser_execute+0x42d7>
  405513:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  405517:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  40551b:	48 29 c8             	sub    %rcx,%rax
  40551e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  405522:	e9 8c 23 00 00       	jmpq   4078b3 <http_parser_execute+0x6663>
  405527:	e9 00 00 00 00       	jmpq   40552c <http_parser_execute+0x42dc>
  40552c:	48 c7 45 b8 00 00 00 	movq   $0x0,-0x48(%rbp)
  405533:	00 
  405534:	e9 00 00 00 00       	jmpq   405539 <http_parser_execute+0x42e9>
  405539:	e9 98 c0 ff ff       	jmpq   4015d6 <http_parser_execute+0x386>
  40553e:	e9 00 00 00 00       	jmpq   405543 <http_parser_execute+0x42f3>
  405543:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  405547:	83 f8 0a             	cmp    $0xa,%eax
  40554a:	0f 84 2a 00 00 00    	je     40557a <http_parser_execute+0x432a>
  405550:	e9 00 00 00 00       	jmpq   405555 <http_parser_execute+0x4305>
  405555:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  405558:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40555c:	89 48 04             	mov    %ecx,0x4(%rax)
  40555f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  405563:	8b 48 14             	mov    0x14(%rax),%ecx
  405566:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  40556c:	81 c9 00 00 00 1e    	or     $0x1e000000,%ecx
  405572:	89 48 14             	mov    %ecx,0x14(%rax)
  405575:	e9 c2 22 00 00       	jmpq   40783c <http_parser_execute+0x65ec>
  40557a:	e9 00 00 00 00       	jmpq   40557f <http_parser_execute+0x432f>
  40557f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  405583:	8b 00                	mov    (%rax),%eax
  405585:	c1 e8 02             	shr    $0x2,%eax
  405588:	25 ff 00 00 00       	and    $0xff,%eax
  40558d:	83 e0 10             	and    $0x10,%eax
  405590:	83 f8 00             	cmp    $0x0,%eax
  405593:	0f 84 34 01 00 00    	je     4056cd <http_parser_execute+0x447d>
  405599:	c7 45 9c 40 00 00 00 	movl   $0x40,-0x64(%rbp)
  4055a0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4055a4:	8b 40 14             	mov    0x14(%rax),%eax
  4055a7:	c1 e8 18             	shr    $0x18,%eax
  4055aa:	83 e0 7f             	and    $0x7f,%eax
  4055ad:	83 f8 00             	cmp    $0x0,%eax
  4055b0:	0f 85 05 00 00 00    	jne    4055bb <http_parser_execute+0x436b>
  4055b6:	e9 28 00 00 00       	jmpq   4055e3 <http_parser_execute+0x4393>
  4055bb:	48 bf a0 06 41 00 00 	movabs $0x4106a0,%rdi
  4055c2:	00 00 00 
  4055c5:	48 be c4 06 41 00 00 	movabs $0x4106c4,%rsi
  4055cc:	00 00 00 
  4055cf:	ba 0a 07 00 00       	mov    $0x70a,%edx
  4055d4:	48 b9 d2 06 41 00 00 	movabs $0x4106d2,%rcx
  4055db:	00 00 00 
  4055de:	e8 ad ba ff ff       	callq  401090 <__assert_fail@plt>
  4055e3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4055e7:	48 83 78 48 00       	cmpq   $0x0,0x48(%rax)
  4055ec:	0f 95 c0             	setne  %al
  4055ef:	34 ff                	xor    $0xff,%al
  4055f1:	34 ff                	xor    $0xff,%al
  4055f3:	24 01                	and    $0x1,%al
  4055f5:	0f b6 c0             	movzbl %al,%eax
  4055f8:	48 98                	cltq   
  4055fa:	48 83 f8 00          	cmp    $0x0,%rax
  4055fe:	0f 84 bf 00 00 00    	je     4056c3 <http_parser_execute+0x4473>
  405604:	8b 55 9c             	mov    -0x64(%rbp),%edx
  405607:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40560b:	8b 08                	mov    (%rax),%ecx
  40560d:	83 e2 7f             	and    $0x7f,%edx
  405610:	c1 e2 0a             	shl    $0xa,%edx
  405613:	81 e1 ff 03 fe ff    	and    $0xfffe03ff,%ecx
  405619:	09 d1                	or     %edx,%ecx
  40561b:	89 08                	mov    %ecx,(%rax)
  40561d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  405621:	48 8b 40 48          	mov    0x48(%rax),%rax
  405625:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  405629:	ff d0                	callq  *%rax
  40562b:	89 c1                	mov    %eax,%ecx
  40562d:	31 c0                	xor    %eax,%eax
  40562f:	39 c8                	cmp    %ecx,%eax
  405631:	0f 95 c0             	setne  %al
  405634:	34 ff                	xor    $0xff,%al
  405636:	34 ff                	xor    $0xff,%al
  405638:	24 01                	and    $0x1,%al
  40563a:	0f b6 c0             	movzbl %al,%eax
  40563d:	48 98                	cltq   
  40563f:	48 83 f8 00          	cmp    $0x0,%rax
  405643:	0f 84 2a 00 00 00    	je     405673 <http_parser_execute+0x4423>
  405649:	e9 00 00 00 00       	jmpq   40564e <http_parser_execute+0x43fe>
  40564e:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  405651:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  405655:	89 48 04             	mov    %ecx,0x4(%rax)
  405658:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40565c:	8b 48 14             	mov    0x14(%rax),%ecx
  40565f:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  405665:	81 c9 00 00 00 0a    	or     $0xa000000,%ecx
  40566b:	89 48 14             	mov    %ecx,0x14(%rax)
  40566e:	e9 00 00 00 00       	jmpq   405673 <http_parser_execute+0x4423>
  405673:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  405677:	8b 00                	mov    (%rax),%eax
  405679:	c1 e8 0a             	shr    $0xa,%eax
  40567c:	83 e0 7f             	and    $0x7f,%eax
  40567f:	89 45 9c             	mov    %eax,-0x64(%rbp)
  405682:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  405686:	8b 40 14             	mov    0x14(%rax),%eax
  405689:	c1 e8 18             	shr    $0x18,%eax
  40568c:	83 e0 7f             	and    $0x7f,%eax
  40568f:	83 f8 00             	cmp    $0x0,%eax
  405692:	0f 95 c0             	setne  %al
  405695:	34 ff                	xor    $0xff,%al
  405697:	34 ff                	xor    $0xff,%al
  405699:	24 01                	and    $0x1,%al
  40569b:	0f b6 c0             	movzbl %al,%eax
  40569e:	48 98                	cltq   
  4056a0:	48 83 f8 00          	cmp    $0x0,%rax
  4056a4:	0f 84 14 00 00 00    	je     4056be <http_parser_execute+0x446e>
  4056aa:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  4056ae:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  4056b2:	48 29 c8             	sub    %rcx,%rax
  4056b5:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4056b9:	e9 f5 21 00 00       	jmpq   4078b3 <http_parser_execute+0x6663>
  4056be:	e9 00 00 00 00       	jmpq   4056c3 <http_parser_execute+0x4473>
  4056c3:	e9 00 00 00 00       	jmpq   4056c8 <http_parser_execute+0x4478>
  4056c8:	e9 09 bf ff ff       	jmpq   4015d6 <http_parser_execute+0x386>
  4056cd:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4056d1:	8b 00                	mov    (%rax),%eax
  4056d3:	c1 e8 1d             	shr    $0x1d,%eax
  4056d6:	83 e0 01             	and    $0x1,%eax
  4056d9:	83 f8 01             	cmp    $0x1,%eax
  4056dc:	0f 85 ad 00 00 00    	jne    40578f <http_parser_execute+0x453f>
  4056e2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4056e6:	8b 00                	mov    (%rax),%eax
  4056e8:	c1 e8 02             	shr    $0x2,%eax
  4056eb:	25 ff 00 00 00       	and    $0xff,%eax
  4056f0:	25 80 00 00 00       	and    $0x80,%eax
  4056f5:	83 f8 00             	cmp    $0x0,%eax
  4056f8:	0f 84 91 00 00 00    	je     40578f <http_parser_execute+0x453f>
  4056fe:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  405702:	8b 00                	mov    (%rax),%eax
  405704:	c1 e8 02             	shr    $0x2,%eax
  405707:	25 ff 00 00 00       	and    $0xff,%eax
  40570c:	83 e0 01             	and    $0x1,%eax
  40570f:	83 f8 00             	cmp    $0x0,%eax
  405712:	0f 84 39 00 00 00    	je     405751 <http_parser_execute+0x4501>
  405718:	83 7d 94 00          	cmpl   $0x0,-0x6c(%rbp)
  40571c:	0f 85 2a 00 00 00    	jne    40574c <http_parser_execute+0x44fc>
  405722:	e9 00 00 00 00       	jmpq   405727 <http_parser_execute+0x44d7>
  405727:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  40572a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40572e:	89 48 04             	mov    %ecx,0x4(%rax)
  405731:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  405735:	8b 48 14             	mov    0x14(%rax),%ecx
  405738:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  40573e:	81 c9 00 00 00 1a    	or     $0x1a000000,%ecx
  405744:	89 48 14             	mov    %ecx,0x14(%rax)
  405747:	e9 f0 20 00 00       	jmpq   40783c <http_parser_execute+0x65ec>
  40574c:	e9 39 00 00 00       	jmpq   40578a <http_parser_execute+0x453a>
  405751:	83 7d 98 00          	cmpl   $0x0,-0x68(%rbp)
  405755:	0f 85 2a 00 00 00    	jne    405785 <http_parser_execute+0x4535>
  40575b:	e9 00 00 00 00       	jmpq   405760 <http_parser_execute+0x4510>
  405760:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  405763:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  405767:	89 48 04             	mov    %ecx,0x4(%rax)
  40576a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40576e:	8b 48 14             	mov    0x14(%rax),%ecx
  405771:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  405777:	81 c9 00 00 00 1a    	or     $0x1a000000,%ecx
  40577d:	89 48 14             	mov    %ecx,0x14(%rax)
  405780:	e9 b7 20 00 00       	jmpq   40783c <http_parser_execute+0x65ec>
  405785:	e9 00 00 00 00       	jmpq   40578a <http_parser_execute+0x453a>
  40578a:	e9 00 00 00 00       	jmpq   40578f <http_parser_execute+0x453f>
  40578f:	c7 45 9c 3a 00 00 00 	movl   $0x3a,-0x64(%rbp)
  405796:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40579a:	8b 00                	mov    (%rax),%eax
  40579c:	c1 e8 02             	shr    $0x2,%eax
  40579f:	25 ff 00 00 00       	and    $0xff,%eax
  4057a4:	83 e0 20             	and    $0x20,%eax
  4057a7:	83 f8 00             	cmp    $0x0,%eax
  4057aa:	0f 84 74 00 00 00    	je     405824 <http_parser_execute+0x45d4>
  4057b0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4057b4:	8b 00                	mov    (%rax),%eax
  4057b6:	c1 e8 02             	shr    $0x2,%eax
  4057b9:	25 ff 00 00 00       	and    $0xff,%eax
  4057be:	83 e0 08             	and    $0x8,%eax
  4057c1:	83 f8 00             	cmp    $0x0,%eax
  4057c4:	0f 84 5a 00 00 00    	je     405824 <http_parser_execute+0x45d4>
  4057ca:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4057ce:	8b 08                	mov    (%rax),%ecx
  4057d0:	83 e1 03             	and    $0x3,%ecx
  4057d3:	b0 01                	mov    $0x1,%al
  4057d5:	83 f9 00             	cmp    $0x0,%ecx
  4057d8:	88 85 6f fe ff ff    	mov    %al,-0x191(%rbp)
  4057de:	0f 84 18 00 00 00    	je     4057fc <http_parser_execute+0x45ac>
  4057e4:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4057e8:	8b 40 14             	mov    0x14(%rax),%eax
  4057eb:	25 ff ff 00 00       	and    $0xffff,%eax
  4057f0:	83 f8 65             	cmp    $0x65,%eax
  4057f3:	0f 94 c0             	sete   %al
  4057f6:	88 85 6f fe ff ff    	mov    %al,-0x191(%rbp)
  4057fc:	8a 85 6f fe ff ff    	mov    -0x191(%rbp),%al
  405802:	24 01                	and    $0x1,%al
  405804:	0f b6 d0             	movzbl %al,%edx
  405807:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40580b:	8b 48 14             	mov    0x14(%rax),%ecx
  40580e:	83 e2 01             	and    $0x1,%edx
  405811:	c1 e2 1f             	shl    $0x1f,%edx
  405814:	81 e1 ff ff ff 7f    	and    $0x7fffffff,%ecx
  40581a:	09 d1                	or     %edx,%ecx
  40581c:	89 48 14             	mov    %ecx,0x14(%rax)
  40581f:	e9 32 00 00 00       	jmpq   405856 <http_parser_execute+0x4606>
  405824:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  405828:	8b 40 14             	mov    0x14(%rax),%eax
  40582b:	c1 e8 10             	shr    $0x10,%eax
  40582e:	25 ff 00 00 00       	and    $0xff,%eax
  405833:	83 f8 05             	cmp    $0x5,%eax
  405836:	0f 94 c0             	sete   %al
  405839:	24 01                	and    $0x1,%al
  40583b:	0f b6 d0             	movzbl %al,%edx
  40583e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  405842:	8b 48 14             	mov    0x14(%rax),%ecx
  405845:	83 e2 01             	and    $0x1,%edx
  405848:	c1 e2 1f             	shl    $0x1f,%edx
  40584b:	81 e1 ff ff ff 7f    	and    $0x7fffffff,%ecx
  405851:	09 d1                	or     %edx,%ecx
  405853:	89 48 14             	mov    %ecx,0x14(%rax)
  405856:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40585a:	48 83 78 28 00       	cmpq   $0x0,0x28(%rax)
  40585f:	0f 84 f8 00 00 00    	je     40595d <http_parser_execute+0x470d>
  405865:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  405869:	48 8b 40 28          	mov    0x28(%rax),%rax
  40586d:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  405871:	ff d0                	callq  *%rax
  405873:	89 c1                	mov    %eax,%ecx
  405875:	89 8d 68 fe ff ff    	mov    %ecx,-0x198(%rbp)
  40587b:	85 c0                	test   %eax,%eax
  40587d:	0f 84 2d 00 00 00    	je     4058b0 <http_parser_execute+0x4660>
  405883:	e9 00 00 00 00       	jmpq   405888 <http_parser_execute+0x4638>
  405888:	8b 85 68 fe ff ff    	mov    -0x198(%rbp),%eax
  40588e:	83 e8 01             	sub    $0x1,%eax
  405891:	0f 84 34 00 00 00    	je     4058cb <http_parser_execute+0x467b>
  405897:	e9 00 00 00 00       	jmpq   40589c <http_parser_execute+0x464c>
  40589c:	8b 85 68 fe ff ff    	mov    -0x198(%rbp),%eax
  4058a2:	83 e8 02             	sub    $0x2,%eax
  4058a5:	0f 84 0a 00 00 00    	je     4058b5 <http_parser_execute+0x4665>
  4058ab:	e9 47 00 00 00       	jmpq   4058f7 <http_parser_execute+0x46a7>
  4058b0:	e9 a3 00 00 00       	jmpq   405958 <http_parser_execute+0x4708>
  4058b5:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4058b9:	8b 48 14             	mov    0x14(%rax),%ecx
  4058bc:	81 e1 ff ff ff 7f    	and    $0x7fffffff,%ecx
  4058c2:	81 c9 00 00 00 80    	or     $0x80000000,%ecx
  4058c8:	89 48 14             	mov    %ecx,0x14(%rax)
  4058cb:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4058cf:	8b 10                	mov    (%rax),%edx
  4058d1:	c1 ea 02             	shr    $0x2,%edx
  4058d4:	81 e2 ff 00 00 00    	and    $0xff,%edx
  4058da:	83 ca 40             	or     $0x40,%edx
  4058dd:	8b 08                	mov    (%rax),%ecx
  4058df:	81 e2 ff 00 00 00    	and    $0xff,%edx
  4058e5:	c1 e2 02             	shl    $0x2,%edx
  4058e8:	81 e1 03 fc ff ff    	and    $0xfffffc03,%ecx
  4058ee:	09 d1                	or     %edx,%ecx
  4058f0:	89 08                	mov    %ecx,(%rax)
  4058f2:	e9 61 00 00 00       	jmpq   405958 <http_parser_execute+0x4708>
  4058f7:	e9 00 00 00 00       	jmpq   4058fc <http_parser_execute+0x46ac>
  4058fc:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  4058ff:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  405903:	89 48 04             	mov    %ecx,0x4(%rax)
  405906:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40590a:	8b 48 14             	mov    0x14(%rax),%ecx
  40590d:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  405913:	81 c9 00 00 00 05    	or     $0x5000000,%ecx
  405919:	89 48 14             	mov    %ecx,0x14(%rax)
  40591c:	e9 00 00 00 00       	jmpq   405921 <http_parser_execute+0x46d1>
  405921:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  405924:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  405928:	89 48 04             	mov    %ecx,0x4(%rax)
  40592b:	8b 55 9c             	mov    -0x64(%rbp),%edx
  40592e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  405932:	8b 08                	mov    (%rax),%ecx
  405934:	83 e2 7f             	and    $0x7f,%edx
  405937:	c1 e2 0a             	shl    $0xa,%edx
  40593a:	81 e1 ff 03 fe ff    	and    $0xfffe03ff,%ecx
  405940:	09 d1                	or     %edx,%ecx
  405942:	89 08                	mov    %ecx,(%rax)
  405944:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  405948:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  40594c:	48 29 c8             	sub    %rcx,%rax
  40594f:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  405953:	e9 5b 1f 00 00       	jmpq   4078b3 <http_parser_execute+0x6663>
  405958:	e9 00 00 00 00       	jmpq   40595d <http_parser_execute+0x470d>
  40595d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  405961:	8b 40 14             	mov    0x14(%rax),%eax
  405964:	c1 e8 18             	shr    $0x18,%eax
  405967:	83 e0 7f             	and    $0x7f,%eax
  40596a:	83 f8 00             	cmp    $0x0,%eax
  40596d:	0f 84 3c 00 00 00    	je     4059af <http_parser_execute+0x475f>
  405973:	e9 00 00 00 00       	jmpq   405978 <http_parser_execute+0x4728>
  405978:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  40597b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40597f:	89 48 04             	mov    %ecx,0x4(%rax)
  405982:	8b 55 9c             	mov    -0x64(%rbp),%edx
  405985:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  405989:	8b 08                	mov    (%rax),%ecx
  40598b:	83 e2 7f             	and    $0x7f,%edx
  40598e:	c1 e2 0a             	shl    $0xa,%edx
  405991:	81 e1 ff 03 fe ff    	and    $0xfffe03ff,%ecx
  405997:	09 d1                	or     %edx,%ecx
  405999:	89 08                	mov    %ecx,(%rax)
  40599b:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  40599f:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  4059a3:	48 29 c8             	sub    %rcx,%rax
  4059a6:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4059aa:	e9 04 1f 00 00       	jmpq   4078b3 <http_parser_execute+0x6663>
  4059af:	e9 22 bc ff ff       	jmpq   4015d6 <http_parser_execute+0x386>
  4059b4:	e9 00 00 00 00       	jmpq   4059b9 <http_parser_execute+0x4769>
  4059b9:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  4059bd:	83 f8 0a             	cmp    $0xa,%eax
  4059c0:	0f 84 2a 00 00 00    	je     4059f0 <http_parser_execute+0x47a0>
  4059c6:	e9 00 00 00 00       	jmpq   4059cb <http_parser_execute+0x477b>
  4059cb:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  4059ce:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4059d2:	89 48 04             	mov    %ecx,0x4(%rax)
  4059d5:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4059d9:	8b 48 14             	mov    0x14(%rax),%ecx
  4059dc:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  4059e2:	81 c9 00 00 00 1e    	or     $0x1e000000,%ecx
  4059e8:	89 48 14             	mov    %ecx,0x14(%rax)
  4059eb:	e9 4c 1e 00 00       	jmpq   40783c <http_parser_execute+0x65ec>
  4059f0:	e9 00 00 00 00       	jmpq   4059f5 <http_parser_execute+0x47a5>
  4059f5:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4059f9:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%rax)
  405a00:	c7 45 90 00 00 00 00 	movl   $0x0,-0x70(%rbp)
  405a07:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  405a0b:	8b 08                	mov    (%rax),%ecx
  405a0d:	c1 e9 02             	shr    $0x2,%ecx
  405a10:	81 e1 ff 00 00 00    	and    $0xff,%ecx
  405a16:	83 e1 01             	and    $0x1,%ecx
  405a19:	b0 01                	mov    $0x1,%al
  405a1b:	83 f9 00             	cmp    $0x0,%ecx
  405a1e:	88 85 67 fe ff ff    	mov    %al,-0x199(%rbp)
  405a24:	0f 85 35 00 00 00    	jne    405a5f <http_parser_execute+0x480f>
  405a2a:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  405a2e:	31 c0                	xor    %eax,%eax
  405a30:	48 83 79 08 00       	cmpq   $0x0,0x8(%rcx)
  405a35:	88 85 66 fe ff ff    	mov    %al,-0x19a(%rbp)
  405a3b:	0f 86 12 00 00 00    	jbe    405a53 <http_parser_execute+0x4803>
  405a41:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  405a45:	48 83 78 08 ff       	cmpq   $0xffffffffffffffff,0x8(%rax)
  405a4a:	0f 95 c0             	setne  %al
  405a4d:	88 85 66 fe ff ff    	mov    %al,-0x19a(%rbp)
  405a53:	8a 85 66 fe ff ff    	mov    -0x19a(%rbp),%al
  405a59:	88 85 67 fe ff ff    	mov    %al,-0x199(%rbp)
  405a5f:	8a 85 67 fe ff ff    	mov    -0x199(%rbp),%al
  405a65:	24 01                	and    $0x1,%al
  405a67:	0f b6 c0             	movzbl %al,%eax
  405a6a:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%rbp)
  405a70:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  405a74:	8b 40 14             	mov    0x14(%rax),%eax
  405a77:	c1 e8 1f             	shr    $0x1f,%eax
  405a7a:	83 f8 00             	cmp    $0x0,%eax
  405a7d:	0f 84 fa 01 00 00    	je     405c7d <http_parser_execute+0x4a2d>
  405a83:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  405a87:	8b 40 14             	mov    0x14(%rax),%eax
  405a8a:	c1 e8 10             	shr    $0x10,%eax
  405a8d:	25 ff 00 00 00       	and    $0xff,%eax
  405a92:	83 f8 05             	cmp    $0x5,%eax
  405a95:	0f 84 27 00 00 00    	je     405ac2 <http_parser_execute+0x4872>
  405a9b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  405a9f:	8b 00                	mov    (%rax),%eax
  405aa1:	c1 e8 02             	shr    $0x2,%eax
  405aa4:	25 ff 00 00 00       	and    $0xff,%eax
  405aa9:	83 e0 40             	and    $0x40,%eax
  405aac:	83 f8 00             	cmp    $0x0,%eax
  405aaf:	0f 85 0d 00 00 00    	jne    405ac2 <http_parser_execute+0x4872>
  405ab5:	83 bd 44 ff ff ff 00 	cmpl   $0x0,-0xbc(%rbp)
  405abc:	0f 85 bb 01 00 00    	jne    405c7d <http_parser_execute+0x4a2d>
  405ac2:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  405ac6:	e8 05 23 00 00       	callq  407dd0 <http_should_keep_alive>
  405acb:	83 f8 00             	cmp    $0x0,%eax
  405ace:	0f 84 24 00 00 00    	je     405af8 <http_parser_execute+0x48a8>
  405ad4:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  405ad8:	8b 10                	mov    (%rax),%edx
  405ada:	83 e2 03             	and    $0x3,%edx
  405add:	b8 04 00 00 00       	mov    $0x4,%eax
  405ae2:	b9 12 00 00 00       	mov    $0x12,%ecx
  405ae7:	83 fa 00             	cmp    $0x0,%edx
  405aea:	0f 44 c1             	cmove  %ecx,%eax
  405aed:	89 85 60 fe ff ff    	mov    %eax,-0x1a0(%rbp)
  405af3:	e9 10 00 00 00       	jmpq   405b08 <http_parser_execute+0x48b8>
  405af8:	b8 01 00 00 00       	mov    $0x1,%eax
  405afd:	89 85 60 fe ff ff    	mov    %eax,-0x1a0(%rbp)
  405b03:	e9 00 00 00 00       	jmpq   405b08 <http_parser_execute+0x48b8>
  405b08:	8b 85 60 fe ff ff    	mov    -0x1a0(%rbp),%eax
  405b0e:	89 45 9c             	mov    %eax,-0x64(%rbp)
  405b11:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  405b15:	8b 40 14             	mov    0x14(%rax),%eax
  405b18:	c1 e8 18             	shr    $0x18,%eax
  405b1b:	83 e0 7f             	and    $0x7f,%eax
  405b1e:	83 f8 00             	cmp    $0x0,%eax
  405b21:	0f 85 05 00 00 00    	jne    405b2c <http_parser_execute+0x48dc>
  405b27:	e9 28 00 00 00       	jmpq   405b54 <http_parser_execute+0x4904>
  405b2c:	48 bf a0 06 41 00 00 	movabs $0x4106a0,%rdi
  405b33:	00 00 00 
  405b36:	48 be c4 06 41 00 00 	movabs $0x4106c4,%rsi
  405b3d:	00 00 00 
  405b40:	ba 60 07 00 00       	mov    $0x760,%edx
  405b45:	48 b9 d2 06 41 00 00 	movabs $0x4106d2,%rcx
  405b4c:	00 00 00 
  405b4f:	e8 3c b5 ff ff       	callq  401090 <__assert_fail@plt>
  405b54:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  405b58:	48 83 78 38 00       	cmpq   $0x0,0x38(%rax)
  405b5d:	0f 95 c0             	setne  %al
  405b60:	34 ff                	xor    $0xff,%al
  405b62:	34 ff                	xor    $0xff,%al
  405b64:	24 01                	and    $0x1,%al
  405b66:	0f b6 c0             	movzbl %al,%eax
  405b69:	48 98                	cltq   
  405b6b:	48 83 f8 00          	cmp    $0x0,%rax
  405b6f:	0f 84 c3 00 00 00    	je     405c38 <http_parser_execute+0x49e8>
  405b75:	8b 55 9c             	mov    -0x64(%rbp),%edx
  405b78:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  405b7c:	8b 08                	mov    (%rax),%ecx
  405b7e:	83 e2 7f             	and    $0x7f,%edx
  405b81:	c1 e2 0a             	shl    $0xa,%edx
  405b84:	81 e1 ff 03 fe ff    	and    $0xfffe03ff,%ecx
  405b8a:	09 d1                	or     %edx,%ecx
  405b8c:	89 08                	mov    %ecx,(%rax)
  405b8e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  405b92:	48 8b 40 38          	mov    0x38(%rax),%rax
  405b96:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  405b9a:	ff d0                	callq  *%rax
  405b9c:	89 c1                	mov    %eax,%ecx
  405b9e:	31 c0                	xor    %eax,%eax
  405ba0:	39 c8                	cmp    %ecx,%eax
  405ba2:	0f 95 c0             	setne  %al
  405ba5:	34 ff                	xor    $0xff,%al
  405ba7:	34 ff                	xor    $0xff,%al
  405ba9:	24 01                	and    $0x1,%al
  405bab:	0f b6 c0             	movzbl %al,%eax
  405bae:	48 98                	cltq   
  405bb0:	48 83 f8 00          	cmp    $0x0,%rax
  405bb4:	0f 84 2a 00 00 00    	je     405be4 <http_parser_execute+0x4994>
  405bba:	e9 00 00 00 00       	jmpq   405bbf <http_parser_execute+0x496f>
  405bbf:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  405bc2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  405bc6:	89 48 04             	mov    %ecx,0x4(%rax)
  405bc9:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  405bcd:	8b 48 14             	mov    0x14(%rax),%ecx
  405bd0:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  405bd6:	81 c9 00 00 00 07    	or     $0x7000000,%ecx
  405bdc:	89 48 14             	mov    %ecx,0x14(%rax)
  405bdf:	e9 00 00 00 00       	jmpq   405be4 <http_parser_execute+0x4994>
  405be4:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  405be8:	8b 00                	mov    (%rax),%eax
  405bea:	c1 e8 0a             	shr    $0xa,%eax
  405bed:	83 e0 7f             	and    $0x7f,%eax
  405bf0:	89 45 9c             	mov    %eax,-0x64(%rbp)
  405bf3:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  405bf7:	8b 40 14             	mov    0x14(%rax),%eax
  405bfa:	c1 e8 18             	shr    $0x18,%eax
  405bfd:	83 e0 7f             	and    $0x7f,%eax
  405c00:	83 f8 00             	cmp    $0x0,%eax
  405c03:	0f 95 c0             	setne  %al
  405c06:	34 ff                	xor    $0xff,%al
  405c08:	34 ff                	xor    $0xff,%al
  405c0a:	24 01                	and    $0x1,%al
  405c0c:	0f b6 c0             	movzbl %al,%eax
  405c0f:	48 98                	cltq   
  405c11:	48 83 f8 00          	cmp    $0x0,%rax
  405c15:	0f 84 18 00 00 00    	je     405c33 <http_parser_execute+0x49e3>
  405c1b:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  405c1f:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  405c23:	48 29 c8             	sub    %rcx,%rax
  405c26:	48 83 c0 01          	add    $0x1,%rax
  405c2a:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  405c2e:	e9 80 1c 00 00       	jmpq   4078b3 <http_parser_execute+0x6663>
  405c33:	e9 00 00 00 00       	jmpq   405c38 <http_parser_execute+0x49e8>
  405c38:	e9 00 00 00 00       	jmpq   405c3d <http_parser_execute+0x49ed>
  405c3d:	e9 00 00 00 00       	jmpq   405c42 <http_parser_execute+0x49f2>
  405c42:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  405c45:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  405c49:	89 48 04             	mov    %ecx,0x4(%rax)
  405c4c:	8b 55 9c             	mov    -0x64(%rbp),%edx
  405c4f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  405c53:	8b 08                	mov    (%rax),%ecx
  405c55:	83 e2 7f             	and    $0x7f,%edx
  405c58:	c1 e2 0a             	shl    $0xa,%edx
  405c5b:	81 e1 ff 03 fe ff    	and    $0xfffe03ff,%ecx
  405c61:	09 d1                	or     %edx,%ecx
  405c63:	89 08                	mov    %ecx,(%rax)
  405c65:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  405c69:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  405c6d:	48 29 c8             	sub    %rcx,%rax
  405c70:	48 83 c0 01          	add    $0x1,%rax
  405c74:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  405c78:	e9 36 1c 00 00       	jmpq   4078b3 <http_parser_execute+0x6663>
  405c7d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  405c81:	8b 00                	mov    (%rax),%eax
  405c83:	c1 e8 02             	shr    $0x2,%eax
  405c86:	25 ff 00 00 00       	and    $0xff,%eax
  405c8b:	83 e0 40             	and    $0x40,%eax
  405c8e:	83 f8 00             	cmp    $0x0,%eax
  405c91:	0f 84 80 01 00 00    	je     405e17 <http_parser_execute+0x4bc7>
  405c97:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  405c9b:	e8 30 21 00 00       	callq  407dd0 <http_should_keep_alive>
  405ca0:	83 f8 00             	cmp    $0x0,%eax
  405ca3:	0f 84 24 00 00 00    	je     405ccd <http_parser_execute+0x4a7d>
  405ca9:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  405cad:	8b 10                	mov    (%rax),%edx
  405caf:	83 e2 03             	and    $0x3,%edx
  405cb2:	b8 04 00 00 00       	mov    $0x4,%eax
  405cb7:	b9 12 00 00 00       	mov    $0x12,%ecx
  405cbc:	83 fa 00             	cmp    $0x0,%edx
  405cbf:	0f 44 c1             	cmove  %ecx,%eax
  405cc2:	89 85 5c fe ff ff    	mov    %eax,-0x1a4(%rbp)
  405cc8:	e9 10 00 00 00       	jmpq   405cdd <http_parser_execute+0x4a8d>
  405ccd:	b8 01 00 00 00       	mov    $0x1,%eax
  405cd2:	89 85 5c fe ff ff    	mov    %eax,-0x1a4(%rbp)
  405cd8:	e9 00 00 00 00       	jmpq   405cdd <http_parser_execute+0x4a8d>
  405cdd:	8b 85 5c fe ff ff    	mov    -0x1a4(%rbp),%eax
  405ce3:	89 45 9c             	mov    %eax,-0x64(%rbp)
  405ce6:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  405cea:	8b 40 14             	mov    0x14(%rax),%eax
  405ced:	c1 e8 18             	shr    $0x18,%eax
  405cf0:	83 e0 7f             	and    $0x7f,%eax
  405cf3:	83 f8 00             	cmp    $0x0,%eax
  405cf6:	0f 85 05 00 00 00    	jne    405d01 <http_parser_execute+0x4ab1>
  405cfc:	e9 28 00 00 00       	jmpq   405d29 <http_parser_execute+0x4ad9>
  405d01:	48 bf a0 06 41 00 00 	movabs $0x4106a0,%rdi
  405d08:	00 00 00 
  405d0b:	48 be c4 06 41 00 00 	movabs $0x4106c4,%rsi
  405d12:	00 00 00 
  405d15:	ba 66 07 00 00       	mov    $0x766,%edx
  405d1a:	48 b9 d2 06 41 00 00 	movabs $0x4106d2,%rcx
  405d21:	00 00 00 
  405d24:	e8 67 b3 ff ff       	callq  401090 <__assert_fail@plt>
  405d29:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  405d2d:	48 83 78 38 00       	cmpq   $0x0,0x38(%rax)
  405d32:	0f 95 c0             	setne  %al
  405d35:	34 ff                	xor    $0xff,%al
  405d37:	34 ff                	xor    $0xff,%al
  405d39:	24 01                	and    $0x1,%al
  405d3b:	0f b6 c0             	movzbl %al,%eax
  405d3e:	48 98                	cltq   
  405d40:	48 83 f8 00          	cmp    $0x0,%rax
  405d44:	0f 84 c3 00 00 00    	je     405e0d <http_parser_execute+0x4bbd>
  405d4a:	8b 55 9c             	mov    -0x64(%rbp),%edx
  405d4d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  405d51:	8b 08                	mov    (%rax),%ecx
  405d53:	83 e2 7f             	and    $0x7f,%edx
  405d56:	c1 e2 0a             	shl    $0xa,%edx
  405d59:	81 e1 ff 03 fe ff    	and    $0xfffe03ff,%ecx
  405d5f:	09 d1                	or     %edx,%ecx
  405d61:	89 08                	mov    %ecx,(%rax)
  405d63:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  405d67:	48 8b 40 38          	mov    0x38(%rax),%rax
  405d6b:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  405d6f:	ff d0                	callq  *%rax
  405d71:	89 c1                	mov    %eax,%ecx
  405d73:	31 c0                	xor    %eax,%eax
  405d75:	39 c8                	cmp    %ecx,%eax
  405d77:	0f 95 c0             	setne  %al
  405d7a:	34 ff                	xor    $0xff,%al
  405d7c:	34 ff                	xor    $0xff,%al
  405d7e:	24 01                	and    $0x1,%al
  405d80:	0f b6 c0             	movzbl %al,%eax
  405d83:	48 98                	cltq   
  405d85:	48 83 f8 00          	cmp    $0x0,%rax
  405d89:	0f 84 2a 00 00 00    	je     405db9 <http_parser_execute+0x4b69>
  405d8f:	e9 00 00 00 00       	jmpq   405d94 <http_parser_execute+0x4b44>
  405d94:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  405d97:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  405d9b:	89 48 04             	mov    %ecx,0x4(%rax)
  405d9e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  405da2:	8b 48 14             	mov    0x14(%rax),%ecx
  405da5:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  405dab:	81 c9 00 00 00 07    	or     $0x7000000,%ecx
  405db1:	89 48 14             	mov    %ecx,0x14(%rax)
  405db4:	e9 00 00 00 00       	jmpq   405db9 <http_parser_execute+0x4b69>
  405db9:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  405dbd:	8b 00                	mov    (%rax),%eax
  405dbf:	c1 e8 0a             	shr    $0xa,%eax
  405dc2:	83 e0 7f             	and    $0x7f,%eax
  405dc5:	89 45 9c             	mov    %eax,-0x64(%rbp)
  405dc8:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  405dcc:	8b 40 14             	mov    0x14(%rax),%eax
  405dcf:	c1 e8 18             	shr    $0x18,%eax
  405dd2:	83 e0 7f             	and    $0x7f,%eax
  405dd5:	83 f8 00             	cmp    $0x0,%eax
  405dd8:	0f 95 c0             	setne  %al
  405ddb:	34 ff                	xor    $0xff,%al
  405ddd:	34 ff                	xor    $0xff,%al
  405ddf:	24 01                	and    $0x1,%al
  405de1:	0f b6 c0             	movzbl %al,%eax
  405de4:	48 98                	cltq   
  405de6:	48 83 f8 00          	cmp    $0x0,%rax
  405dea:	0f 84 18 00 00 00    	je     405e08 <http_parser_execute+0x4bb8>
  405df0:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  405df4:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  405df8:	48 29 c8             	sub    %rcx,%rax
  405dfb:	48 83 c0 01          	add    $0x1,%rax
  405dff:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  405e03:	e9 ab 1a 00 00       	jmpq   4078b3 <http_parser_execute+0x6663>
  405e08:	e9 00 00 00 00       	jmpq   405e0d <http_parser_execute+0x4bbd>
  405e0d:	e9 00 00 00 00       	jmpq   405e12 <http_parser_execute+0x4bc2>
  405e12:	e9 20 04 00 00       	jmpq   406237 <http_parser_execute+0x4fe7>
  405e17:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  405e1b:	8b 00                	mov    (%rax),%eax
  405e1d:	c1 e8 02             	shr    $0x2,%eax
  405e20:	25 ff 00 00 00       	and    $0xff,%eax
  405e25:	83 e0 01             	and    $0x1,%eax
  405e28:	83 f8 00             	cmp    $0x0,%eax
  405e2b:	0f 84 0c 00 00 00    	je     405e3d <http_parser_execute+0x4bed>
  405e31:	c7 45 9c 35 00 00 00 	movl   $0x35,-0x64(%rbp)
  405e38:	e9 f5 03 00 00       	jmpq   406232 <http_parser_execute+0x4fe2>
  405e3d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  405e41:	8b 00                	mov    (%rax),%eax
  405e43:	c1 e8 1d             	shr    $0x1d,%eax
  405e46:	83 e0 01             	and    $0x1,%eax
  405e49:	83 f8 01             	cmp    $0x1,%eax
  405e4c:	0f 85 89 00 00 00    	jne    405edb <http_parser_execute+0x4c8b>
  405e52:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  405e56:	8b 00                	mov    (%rax),%eax
  405e58:	83 e0 03             	and    $0x3,%eax
  405e5b:	83 f8 00             	cmp    $0x0,%eax
  405e5e:	0f 85 6b 00 00 00    	jne    405ecf <http_parser_execute+0x4c7f>
  405e64:	83 7d 98 00          	cmpl   $0x0,-0x68(%rbp)
  405e68:	0f 85 61 00 00 00    	jne    405ecf <http_parser_execute+0x4c7f>
  405e6e:	e9 00 00 00 00       	jmpq   405e73 <http_parser_execute+0x4c23>
  405e73:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  405e76:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  405e7a:	89 48 04             	mov    %ecx,0x4(%rax)
  405e7d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  405e81:	8b 48 14             	mov    0x14(%rax),%ecx
  405e84:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  405e8a:	81 c9 00 00 00 21    	or     $0x21000000,%ecx
  405e90:	89 48 14             	mov    %ecx,0x14(%rax)
  405e93:	e9 00 00 00 00       	jmpq   405e98 <http_parser_execute+0x4c48>
  405e98:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  405e9b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  405e9f:	89 48 04             	mov    %ecx,0x4(%rax)
  405ea2:	8b 55 9c             	mov    -0x64(%rbp),%edx
  405ea5:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  405ea9:	8b 08                	mov    (%rax),%ecx
  405eab:	83 e2 7f             	and    $0x7f,%edx
  405eae:	c1 e2 0a             	shl    $0xa,%edx
  405eb1:	81 e1 ff 03 fe ff    	and    $0xfffe03ff,%ecx
  405eb7:	09 d1                	or     %edx,%ecx
  405eb9:	89 08                	mov    %ecx,(%rax)
  405ebb:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  405ebf:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  405ec3:	48 29 c8             	sub    %rcx,%rax
  405ec6:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  405eca:	e9 e4 19 00 00       	jmpq   4078b3 <http_parser_execute+0x6663>
  405ecf:	c7 45 9c 3f 00 00 00 	movl   $0x3f,-0x64(%rbp)
  405ed6:	e9 52 03 00 00       	jmpq   40622d <http_parser_execute+0x4fdd>
  405edb:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  405edf:	48 83 78 08 00       	cmpq   $0x0,0x8(%rax)
  405ee4:	0f 85 80 01 00 00    	jne    40606a <http_parser_execute+0x4e1a>
  405eea:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  405eee:	e8 dd 1e 00 00       	callq  407dd0 <http_should_keep_alive>
  405ef3:	83 f8 00             	cmp    $0x0,%eax
  405ef6:	0f 84 24 00 00 00    	je     405f20 <http_parser_execute+0x4cd0>
  405efc:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  405f00:	8b 10                	mov    (%rax),%edx
  405f02:	83 e2 03             	and    $0x3,%edx
  405f05:	b8 04 00 00 00       	mov    $0x4,%eax
  405f0a:	b9 12 00 00 00       	mov    $0x12,%ecx
  405f0f:	83 fa 00             	cmp    $0x0,%edx
  405f12:	0f 44 c1             	cmove  %ecx,%eax
  405f15:	89 85 58 fe ff ff    	mov    %eax,-0x1a8(%rbp)
  405f1b:	e9 10 00 00 00       	jmpq   405f30 <http_parser_execute+0x4ce0>
  405f20:	b8 01 00 00 00       	mov    $0x1,%eax
  405f25:	89 85 58 fe ff ff    	mov    %eax,-0x1a8(%rbp)
  405f2b:	e9 00 00 00 00       	jmpq   405f30 <http_parser_execute+0x4ce0>
  405f30:	8b 85 58 fe ff ff    	mov    -0x1a8(%rbp),%eax
  405f36:	89 45 9c             	mov    %eax,-0x64(%rbp)
  405f39:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  405f3d:	8b 40 14             	mov    0x14(%rax),%eax
  405f40:	c1 e8 18             	shr    $0x18,%eax
  405f43:	83 e0 7f             	and    $0x7f,%eax
  405f46:	83 f8 00             	cmp    $0x0,%eax
  405f49:	0f 85 05 00 00 00    	jne    405f54 <http_parser_execute+0x4d04>
  405f4f:	e9 28 00 00 00       	jmpq   405f7c <http_parser_execute+0x4d2c>
  405f54:	48 bf a0 06 41 00 00 	movabs $0x4106a0,%rdi
  405f5b:	00 00 00 
  405f5e:	48 be c4 06 41 00 00 	movabs $0x4106c4,%rsi
  405f65:	00 00 00 
  405f68:	ba 85 07 00 00       	mov    $0x785,%edx
  405f6d:	48 b9 d2 06 41 00 00 	movabs $0x4106d2,%rcx
  405f74:	00 00 00 
  405f77:	e8 14 b1 ff ff       	callq  401090 <__assert_fail@plt>
  405f7c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  405f80:	48 83 78 38 00       	cmpq   $0x0,0x38(%rax)
  405f85:	0f 95 c0             	setne  %al
  405f88:	34 ff                	xor    $0xff,%al
  405f8a:	34 ff                	xor    $0xff,%al
  405f8c:	24 01                	and    $0x1,%al
  405f8e:	0f b6 c0             	movzbl %al,%eax
  405f91:	48 98                	cltq   
  405f93:	48 83 f8 00          	cmp    $0x0,%rax
  405f97:	0f 84 c3 00 00 00    	je     406060 <http_parser_execute+0x4e10>
  405f9d:	8b 55 9c             	mov    -0x64(%rbp),%edx
  405fa0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  405fa4:	8b 08                	mov    (%rax),%ecx
  405fa6:	83 e2 7f             	and    $0x7f,%edx
  405fa9:	c1 e2 0a             	shl    $0xa,%edx
  405fac:	81 e1 ff 03 fe ff    	and    $0xfffe03ff,%ecx
  405fb2:	09 d1                	or     %edx,%ecx
  405fb4:	89 08                	mov    %ecx,(%rax)
  405fb6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  405fba:	48 8b 40 38          	mov    0x38(%rax),%rax
  405fbe:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  405fc2:	ff d0                	callq  *%rax
  405fc4:	89 c1                	mov    %eax,%ecx
  405fc6:	31 c0                	xor    %eax,%eax
  405fc8:	39 c8                	cmp    %ecx,%eax
  405fca:	0f 95 c0             	setne  %al
  405fcd:	34 ff                	xor    $0xff,%al
  405fcf:	34 ff                	xor    $0xff,%al
  405fd1:	24 01                	and    $0x1,%al
  405fd3:	0f b6 c0             	movzbl %al,%eax
  405fd6:	48 98                	cltq   
  405fd8:	48 83 f8 00          	cmp    $0x0,%rax
  405fdc:	0f 84 2a 00 00 00    	je     40600c <http_parser_execute+0x4dbc>
  405fe2:	e9 00 00 00 00       	jmpq   405fe7 <http_parser_execute+0x4d97>
  405fe7:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  405fea:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  405fee:	89 48 04             	mov    %ecx,0x4(%rax)
  405ff1:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  405ff5:	8b 48 14             	mov    0x14(%rax),%ecx
  405ff8:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  405ffe:	81 c9 00 00 00 07    	or     $0x7000000,%ecx
  406004:	89 48 14             	mov    %ecx,0x14(%rax)
  406007:	e9 00 00 00 00       	jmpq   40600c <http_parser_execute+0x4dbc>
  40600c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  406010:	8b 00                	mov    (%rax),%eax
  406012:	c1 e8 0a             	shr    $0xa,%eax
  406015:	83 e0 7f             	and    $0x7f,%eax
  406018:	89 45 9c             	mov    %eax,-0x64(%rbp)
  40601b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40601f:	8b 40 14             	mov    0x14(%rax),%eax
  406022:	c1 e8 18             	shr    $0x18,%eax
  406025:	83 e0 7f             	and    $0x7f,%eax
  406028:	83 f8 00             	cmp    $0x0,%eax
  40602b:	0f 95 c0             	setne  %al
  40602e:	34 ff                	xor    $0xff,%al
  406030:	34 ff                	xor    $0xff,%al
  406032:	24 01                	and    $0x1,%al
  406034:	0f b6 c0             	movzbl %al,%eax
  406037:	48 98                	cltq   
  406039:	48 83 f8 00          	cmp    $0x0,%rax
  40603d:	0f 84 18 00 00 00    	je     40605b <http_parser_execute+0x4e0b>
  406043:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  406047:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  40604b:	48 29 c8             	sub    %rcx,%rax
  40604e:	48 83 c0 01          	add    $0x1,%rax
  406052:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  406056:	e9 58 18 00 00       	jmpq   4078b3 <http_parser_execute+0x6663>
  40605b:	e9 00 00 00 00       	jmpq   406060 <http_parser_execute+0x4e10>
  406060:	e9 00 00 00 00       	jmpq   406065 <http_parser_execute+0x4e15>
  406065:	e9 be 01 00 00       	jmpq   406228 <http_parser_execute+0x4fd8>
  40606a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40606e:	48 83 78 08 ff       	cmpq   $0xffffffffffffffff,0x8(%rax)
  406073:	0f 84 0c 00 00 00    	je     406085 <http_parser_execute+0x4e35>
  406079:	c7 45 9c 3e 00 00 00 	movl   $0x3e,-0x64(%rbp)
  406080:	e9 9e 01 00 00       	jmpq   406223 <http_parser_execute+0x4fd3>
  406085:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  406089:	e8 f2 1d 00 00       	callq  407e80 <http_message_needs_eof>
  40608e:	83 f8 00             	cmp    $0x0,%eax
  406091:	0f 85 80 01 00 00    	jne    406217 <http_parser_execute+0x4fc7>
  406097:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  40609b:	e8 30 1d 00 00       	callq  407dd0 <http_should_keep_alive>
  4060a0:	83 f8 00             	cmp    $0x0,%eax
  4060a3:	0f 84 24 00 00 00    	je     4060cd <http_parser_execute+0x4e7d>
  4060a9:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4060ad:	8b 10                	mov    (%rax),%edx
  4060af:	83 e2 03             	and    $0x3,%edx
  4060b2:	b8 04 00 00 00       	mov    $0x4,%eax
  4060b7:	b9 12 00 00 00       	mov    $0x12,%ecx
  4060bc:	83 fa 00             	cmp    $0x0,%edx
  4060bf:	0f 44 c1             	cmove  %ecx,%eax
  4060c2:	89 85 54 fe ff ff    	mov    %eax,-0x1ac(%rbp)
  4060c8:	e9 10 00 00 00       	jmpq   4060dd <http_parser_execute+0x4e8d>
  4060cd:	b8 01 00 00 00       	mov    $0x1,%eax
  4060d2:	89 85 54 fe ff ff    	mov    %eax,-0x1ac(%rbp)
  4060d8:	e9 00 00 00 00       	jmpq   4060dd <http_parser_execute+0x4e8d>
  4060dd:	8b 85 54 fe ff ff    	mov    -0x1ac(%rbp),%eax
  4060e3:	89 45 9c             	mov    %eax,-0x64(%rbp)
  4060e6:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4060ea:	8b 40 14             	mov    0x14(%rax),%eax
  4060ed:	c1 e8 18             	shr    $0x18,%eax
  4060f0:	83 e0 7f             	and    $0x7f,%eax
  4060f3:	83 f8 00             	cmp    $0x0,%eax
  4060f6:	0f 85 05 00 00 00    	jne    406101 <http_parser_execute+0x4eb1>
  4060fc:	e9 28 00 00 00       	jmpq   406129 <http_parser_execute+0x4ed9>
  406101:	48 bf a0 06 41 00 00 	movabs $0x4106a0,%rdi
  406108:	00 00 00 
  40610b:	48 be c4 06 41 00 00 	movabs $0x4106c4,%rsi
  406112:	00 00 00 
  406115:	ba 8d 07 00 00       	mov    $0x78d,%edx
  40611a:	48 b9 d2 06 41 00 00 	movabs $0x4106d2,%rcx
  406121:	00 00 00 
  406124:	e8 67 af ff ff       	callq  401090 <__assert_fail@plt>
  406129:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40612d:	48 83 78 38 00       	cmpq   $0x0,0x38(%rax)
  406132:	0f 95 c0             	setne  %al
  406135:	34 ff                	xor    $0xff,%al
  406137:	34 ff                	xor    $0xff,%al
  406139:	24 01                	and    $0x1,%al
  40613b:	0f b6 c0             	movzbl %al,%eax
  40613e:	48 98                	cltq   
  406140:	48 83 f8 00          	cmp    $0x0,%rax
  406144:	0f 84 c3 00 00 00    	je     40620d <http_parser_execute+0x4fbd>
  40614a:	8b 55 9c             	mov    -0x64(%rbp),%edx
  40614d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  406151:	8b 08                	mov    (%rax),%ecx
  406153:	83 e2 7f             	and    $0x7f,%edx
  406156:	c1 e2 0a             	shl    $0xa,%edx
  406159:	81 e1 ff 03 fe ff    	and    $0xfffe03ff,%ecx
  40615f:	09 d1                	or     %edx,%ecx
  406161:	89 08                	mov    %ecx,(%rax)
  406163:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  406167:	48 8b 40 38          	mov    0x38(%rax),%rax
  40616b:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  40616f:	ff d0                	callq  *%rax
  406171:	89 c1                	mov    %eax,%ecx
  406173:	31 c0                	xor    %eax,%eax
  406175:	39 c8                	cmp    %ecx,%eax
  406177:	0f 95 c0             	setne  %al
  40617a:	34 ff                	xor    $0xff,%al
  40617c:	34 ff                	xor    $0xff,%al
  40617e:	24 01                	and    $0x1,%al
  406180:	0f b6 c0             	movzbl %al,%eax
  406183:	48 98                	cltq   
  406185:	48 83 f8 00          	cmp    $0x0,%rax
  406189:	0f 84 2a 00 00 00    	je     4061b9 <http_parser_execute+0x4f69>
  40618f:	e9 00 00 00 00       	jmpq   406194 <http_parser_execute+0x4f44>
  406194:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  406197:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40619b:	89 48 04             	mov    %ecx,0x4(%rax)
  40619e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4061a2:	8b 48 14             	mov    0x14(%rax),%ecx
  4061a5:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  4061ab:	81 c9 00 00 00 07    	or     $0x7000000,%ecx
  4061b1:	89 48 14             	mov    %ecx,0x14(%rax)
  4061b4:	e9 00 00 00 00       	jmpq   4061b9 <http_parser_execute+0x4f69>
  4061b9:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4061bd:	8b 00                	mov    (%rax),%eax
  4061bf:	c1 e8 0a             	shr    $0xa,%eax
  4061c2:	83 e0 7f             	and    $0x7f,%eax
  4061c5:	89 45 9c             	mov    %eax,-0x64(%rbp)
  4061c8:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4061cc:	8b 40 14             	mov    0x14(%rax),%eax
  4061cf:	c1 e8 18             	shr    $0x18,%eax
  4061d2:	83 e0 7f             	and    $0x7f,%eax
  4061d5:	83 f8 00             	cmp    $0x0,%eax
  4061d8:	0f 95 c0             	setne  %al
  4061db:	34 ff                	xor    $0xff,%al
  4061dd:	34 ff                	xor    $0xff,%al
  4061df:	24 01                	and    $0x1,%al
  4061e1:	0f b6 c0             	movzbl %al,%eax
  4061e4:	48 98                	cltq   
  4061e6:	48 83 f8 00          	cmp    $0x0,%rax
  4061ea:	0f 84 18 00 00 00    	je     406208 <http_parser_execute+0x4fb8>
  4061f0:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  4061f4:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  4061f8:	48 29 c8             	sub    %rcx,%rax
  4061fb:	48 83 c0 01          	add    $0x1,%rax
  4061ff:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  406203:	e9 ab 16 00 00       	jmpq   4078b3 <http_parser_execute+0x6663>
  406208:	e9 00 00 00 00       	jmpq   40620d <http_parser_execute+0x4fbd>
  40620d:	e9 00 00 00 00       	jmpq   406212 <http_parser_execute+0x4fc2>
  406212:	e9 07 00 00 00       	jmpq   40621e <http_parser_execute+0x4fce>
  406217:	c7 45 9c 3f 00 00 00 	movl   $0x3f,-0x64(%rbp)
  40621e:	e9 00 00 00 00       	jmpq   406223 <http_parser_execute+0x4fd3>
  406223:	e9 00 00 00 00       	jmpq   406228 <http_parser_execute+0x4fd8>
  406228:	e9 00 00 00 00       	jmpq   40622d <http_parser_execute+0x4fdd>
  40622d:	e9 00 00 00 00       	jmpq   406232 <http_parser_execute+0x4fe2>
  406232:	e9 00 00 00 00       	jmpq   406237 <http_parser_execute+0x4fe7>
  406237:	e9 92 0e 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  40623c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  406240:	48 8b 40 08          	mov    0x8(%rax),%rax
  406244:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  406248:	48 03 4d d8          	add    -0x28(%rbp),%rcx
  40624c:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  406250:	48 29 d1             	sub    %rdx,%rcx
  406253:	48 39 c8             	cmp    %rcx,%rax
  406256:	0f 83 14 00 00 00    	jae    406270 <http_parser_execute+0x5020>
  40625c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  406260:	48 8b 40 08          	mov    0x8(%rax),%rax
  406264:	48 89 85 48 fe ff ff 	mov    %rax,-0x1b8(%rbp)
  40626b:	e9 16 00 00 00       	jmpq   406286 <http_parser_execute+0x5036>
  406270:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  406274:	48 03 45 d8          	add    -0x28(%rbp),%rax
  406278:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
  40627c:	48 29 c8             	sub    %rcx,%rax
  40627f:	48 89 85 48 fe ff ff 	mov    %rax,-0x1b8(%rbp)
  406286:	48 8b 85 48 fe ff ff 	mov    -0x1b8(%rbp),%rax
  40628d:	48 89 85 38 ff ff ff 	mov    %rax,-0xc8(%rbp)
  406294:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  406298:	48 83 78 08 00       	cmpq   $0x0,0x8(%rax)
  40629d:	0f 84 14 00 00 00    	je     4062b7 <http_parser_execute+0x5067>
  4062a3:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4062a7:	48 83 78 08 ff       	cmpq   $0xffffffffffffffff,0x8(%rax)
  4062ac:	0f 84 05 00 00 00    	je     4062b7 <http_parser_execute+0x5067>
  4062b2:	e9 28 00 00 00       	jmpq   4062df <http_parser_execute+0x508f>
  4062b7:	48 bf a0 07 41 00 00 	movabs $0x4107a0,%rdi
  4062be:	00 00 00 
  4062c1:	48 be c4 06 41 00 00 	movabs $0x4106c4,%rsi
  4062c8:	00 00 00 
  4062cb:	ba 9e 07 00 00       	mov    $0x79e,%edx
  4062d0:	48 b9 d2 06 41 00 00 	movabs $0x4106d2,%rcx
  4062d7:	00 00 00 
  4062da:	e8 b1 ad ff ff       	callq  401090 <__assert_fail@plt>
  4062df:	e9 00 00 00 00       	jmpq   4062e4 <http_parser_execute+0x5094>
  4062e4:	48 83 7d a8 00       	cmpq   $0x0,-0x58(%rbp)
  4062e9:	0f 85 08 00 00 00    	jne    4062f7 <http_parser_execute+0x50a7>
  4062ef:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  4062f3:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  4062f7:	e9 00 00 00 00       	jmpq   4062fc <http_parser_execute+0x50ac>
  4062fc:	48 8b 95 38 ff ff ff 	mov    -0xc8(%rbp),%rdx
  406303:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  406307:	48 8b 48 08          	mov    0x8(%rax),%rcx
  40630b:	48 29 d1             	sub    %rdx,%rcx
  40630e:	48 89 48 08          	mov    %rcx,0x8(%rax)
  406312:	48 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%rax
  406319:	48 83 e8 01          	sub    $0x1,%rax
  40631d:	48 03 45 c8          	add    -0x38(%rbp),%rax
  406321:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  406325:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  406329:	48 83 78 08 00       	cmpq   $0x0,0x8(%rax)
  40632e:	0f 85 5a 01 00 00    	jne    40648e <http_parser_execute+0x523e>
  406334:	c7 45 9c 40 00 00 00 	movl   $0x40,-0x64(%rbp)
  40633b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40633f:	8b 40 14             	mov    0x14(%rax),%eax
  406342:	c1 e8 18             	shr    $0x18,%eax
  406345:	83 e0 7f             	and    $0x7f,%eax
  406348:	83 f8 00             	cmp    $0x0,%eax
  40634b:	0f 85 05 00 00 00    	jne    406356 <http_parser_execute+0x5106>
  406351:	e9 28 00 00 00       	jmpq   40637e <http_parser_execute+0x512e>
  406356:	48 bf a0 06 41 00 00 	movabs $0x4106a0,%rdi
  40635d:	00 00 00 
  406360:	48 be c4 06 41 00 00 	movabs $0x4106c4,%rsi
  406367:	00 00 00 
  40636a:	ba b5 07 00 00       	mov    $0x7b5,%edx
  40636f:	48 b9 d2 06 41 00 00 	movabs $0x4106d2,%rcx
  406376:	00 00 00 
  406379:	e8 12 ad ff ff       	callq  401090 <__assert_fail@plt>
  40637e:	48 83 7d a8 00       	cmpq   $0x0,-0x58(%rbp)
  406383:	0f 84 fb 00 00 00    	je     406484 <http_parser_execute+0x5234>
  406389:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40638d:	48 83 78 30 00       	cmpq   $0x0,0x30(%rax)
  406392:	0f 95 c0             	setne  %al
  406395:	34 ff                	xor    $0xff,%al
  406397:	34 ff                	xor    $0xff,%al
  406399:	24 01                	and    $0x1,%al
  40639b:	0f b6 c0             	movzbl %al,%eax
  40639e:	48 98                	cltq   
  4063a0:	48 83 f8 00          	cmp    $0x0,%rax
  4063a4:	0f 84 d2 00 00 00    	je     40647c <http_parser_execute+0x522c>
  4063aa:	8b 55 9c             	mov    -0x64(%rbp),%edx
  4063ad:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4063b1:	8b 08                	mov    (%rax),%ecx
  4063b3:	83 e2 7f             	and    $0x7f,%edx
  4063b6:	c1 e2 0a             	shl    $0xa,%edx
  4063b9:	81 e1 ff 03 fe ff    	and    $0xfffe03ff,%ecx
  4063bf:	09 d1                	or     %edx,%ecx
  4063c1:	89 08                	mov    %ecx,(%rax)
  4063c3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4063c7:	48 8b 40 30          	mov    0x30(%rax),%rax
  4063cb:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  4063cf:	48 8b 75 a8          	mov    -0x58(%rbp),%rsi
  4063d3:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  4063d7:	48 8b 4d a8          	mov    -0x58(%rbp),%rcx
  4063db:	48 29 ca             	sub    %rcx,%rdx
  4063de:	48 83 c2 01          	add    $0x1,%rdx
  4063e2:	ff d0                	callq  *%rax
  4063e4:	89 c1                	mov    %eax,%ecx
  4063e6:	31 c0                	xor    %eax,%eax
  4063e8:	39 c8                	cmp    %ecx,%eax
  4063ea:	0f 95 c0             	setne  %al
  4063ed:	34 ff                	xor    $0xff,%al
  4063ef:	34 ff                	xor    $0xff,%al
  4063f1:	24 01                	and    $0x1,%al
  4063f3:	0f b6 c0             	movzbl %al,%eax
  4063f6:	48 98                	cltq   
  4063f8:	48 83 f8 00          	cmp    $0x0,%rax
  4063fc:	0f 84 2a 00 00 00    	je     40642c <http_parser_execute+0x51dc>
  406402:	e9 00 00 00 00       	jmpq   406407 <http_parser_execute+0x51b7>
  406407:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  40640a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40640e:	89 48 04             	mov    %ecx,0x4(%rax)
  406411:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  406415:	8b 48 14             	mov    0x14(%rax),%ecx
  406418:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  40641e:	81 c9 00 00 00 06    	or     $0x6000000,%ecx
  406424:	89 48 14             	mov    %ecx,0x14(%rax)
  406427:	e9 00 00 00 00       	jmpq   40642c <http_parser_execute+0x51dc>
  40642c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  406430:	8b 00                	mov    (%rax),%eax
  406432:	c1 e8 0a             	shr    $0xa,%eax
  406435:	83 e0 7f             	and    $0x7f,%eax
  406438:	89 45 9c             	mov    %eax,-0x64(%rbp)
  40643b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40643f:	8b 40 14             	mov    0x14(%rax),%eax
  406442:	c1 e8 18             	shr    $0x18,%eax
  406445:	83 e0 7f             	and    $0x7f,%eax
  406448:	83 f8 00             	cmp    $0x0,%eax
  40644b:	0f 95 c0             	setne  %al
  40644e:	34 ff                	xor    $0xff,%al
  406450:	34 ff                	xor    $0xff,%al
  406452:	24 01                	and    $0x1,%al
  406454:	0f b6 c0             	movzbl %al,%eax
  406457:	48 98                	cltq   
  406459:	48 83 f8 00          	cmp    $0x0,%rax
  40645d:	0f 84 14 00 00 00    	je     406477 <http_parser_execute+0x5227>
  406463:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  406467:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  40646b:	48 29 c8             	sub    %rcx,%rax
  40646e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  406472:	e9 3c 14 00 00       	jmpq   4078b3 <http_parser_execute+0x6663>
  406477:	e9 00 00 00 00       	jmpq   40647c <http_parser_execute+0x522c>
  40647c:	48 c7 45 a8 00 00 00 	movq   $0x0,-0x58(%rbp)
  406483:	00 
  406484:	e9 00 00 00 00       	jmpq   406489 <http_parser_execute+0x5239>
  406489:	e9 48 b1 ff ff       	jmpq   4015d6 <http_parser_execute+0x386>
  40648e:	e9 3b 0c 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  406493:	e9 00 00 00 00       	jmpq   406498 <http_parser_execute+0x5248>
  406498:	48 83 7d a8 00       	cmpq   $0x0,-0x58(%rbp)
  40649d:	0f 85 08 00 00 00    	jne    4064ab <http_parser_execute+0x525b>
  4064a3:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  4064a7:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  4064ab:	e9 00 00 00 00       	jmpq   4064b0 <http_parser_execute+0x5260>
  4064b0:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4064b4:	48 03 45 d8          	add    -0x28(%rbp),%rax
  4064b8:	48 83 c0 ff          	add    $0xffffffffffffffff,%rax
  4064bc:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  4064c0:	e9 09 0c 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  4064c5:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  4064c9:	e8 02 19 00 00       	callq  407dd0 <http_should_keep_alive>
  4064ce:	83 f8 00             	cmp    $0x0,%eax
  4064d1:	0f 84 24 00 00 00    	je     4064fb <http_parser_execute+0x52ab>
  4064d7:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4064db:	8b 10                	mov    (%rax),%edx
  4064dd:	83 e2 03             	and    $0x3,%edx
  4064e0:	b8 04 00 00 00       	mov    $0x4,%eax
  4064e5:	b9 12 00 00 00       	mov    $0x12,%ecx
  4064ea:	83 fa 00             	cmp    $0x0,%edx
  4064ed:	0f 44 c1             	cmove  %ecx,%eax
  4064f0:	89 85 44 fe ff ff    	mov    %eax,-0x1bc(%rbp)
  4064f6:	e9 10 00 00 00       	jmpq   40650b <http_parser_execute+0x52bb>
  4064fb:	b8 01 00 00 00       	mov    $0x1,%eax
  406500:	89 85 44 fe ff ff    	mov    %eax,-0x1bc(%rbp)
  406506:	e9 00 00 00 00       	jmpq   40650b <http_parser_execute+0x52bb>
  40650b:	8b 85 44 fe ff ff    	mov    -0x1bc(%rbp),%eax
  406511:	89 45 9c             	mov    %eax,-0x64(%rbp)
  406514:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  406518:	8b 40 14             	mov    0x14(%rax),%eax
  40651b:	c1 e8 18             	shr    $0x18,%eax
  40651e:	83 e0 7f             	and    $0x7f,%eax
  406521:	83 f8 00             	cmp    $0x0,%eax
  406524:	0f 85 05 00 00 00    	jne    40652f <http_parser_execute+0x52df>
  40652a:	e9 28 00 00 00       	jmpq   406557 <http_parser_execute+0x5307>
  40652f:	48 bf a0 06 41 00 00 	movabs $0x4106a0,%rdi
  406536:	00 00 00 
  406539:	48 be c4 06 41 00 00 	movabs $0x4106c4,%rsi
  406540:	00 00 00 
  406543:	ba c5 07 00 00       	mov    $0x7c5,%edx
  406548:	48 b9 d2 06 41 00 00 	movabs $0x4106d2,%rcx
  40654f:	00 00 00 
  406552:	e8 39 ab ff ff       	callq  401090 <__assert_fail@plt>
  406557:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40655b:	48 83 78 38 00       	cmpq   $0x0,0x38(%rax)
  406560:	0f 95 c0             	setne  %al
  406563:	34 ff                	xor    $0xff,%al
  406565:	34 ff                	xor    $0xff,%al
  406567:	24 01                	and    $0x1,%al
  406569:	0f b6 c0             	movzbl %al,%eax
  40656c:	48 98                	cltq   
  40656e:	48 83 f8 00          	cmp    $0x0,%rax
  406572:	0f 84 c3 00 00 00    	je     40663b <http_parser_execute+0x53eb>
  406578:	8b 55 9c             	mov    -0x64(%rbp),%edx
  40657b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40657f:	8b 08                	mov    (%rax),%ecx
  406581:	83 e2 7f             	and    $0x7f,%edx
  406584:	c1 e2 0a             	shl    $0xa,%edx
  406587:	81 e1 ff 03 fe ff    	and    $0xfffe03ff,%ecx
  40658d:	09 d1                	or     %edx,%ecx
  40658f:	89 08                	mov    %ecx,(%rax)
  406591:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  406595:	48 8b 40 38          	mov    0x38(%rax),%rax
  406599:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  40659d:	ff d0                	callq  *%rax
  40659f:	89 c1                	mov    %eax,%ecx
  4065a1:	31 c0                	xor    %eax,%eax
  4065a3:	39 c8                	cmp    %ecx,%eax
  4065a5:	0f 95 c0             	setne  %al
  4065a8:	34 ff                	xor    $0xff,%al
  4065aa:	34 ff                	xor    $0xff,%al
  4065ac:	24 01                	and    $0x1,%al
  4065ae:	0f b6 c0             	movzbl %al,%eax
  4065b1:	48 98                	cltq   
  4065b3:	48 83 f8 00          	cmp    $0x0,%rax
  4065b7:	0f 84 2a 00 00 00    	je     4065e7 <http_parser_execute+0x5397>
  4065bd:	e9 00 00 00 00       	jmpq   4065c2 <http_parser_execute+0x5372>
  4065c2:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  4065c5:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4065c9:	89 48 04             	mov    %ecx,0x4(%rax)
  4065cc:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4065d0:	8b 48 14             	mov    0x14(%rax),%ecx
  4065d3:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  4065d9:	81 c9 00 00 00 07    	or     $0x7000000,%ecx
  4065df:	89 48 14             	mov    %ecx,0x14(%rax)
  4065e2:	e9 00 00 00 00       	jmpq   4065e7 <http_parser_execute+0x5397>
  4065e7:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4065eb:	8b 00                	mov    (%rax),%eax
  4065ed:	c1 e8 0a             	shr    $0xa,%eax
  4065f0:	83 e0 7f             	and    $0x7f,%eax
  4065f3:	89 45 9c             	mov    %eax,-0x64(%rbp)
  4065f6:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4065fa:	8b 40 14             	mov    0x14(%rax),%eax
  4065fd:	c1 e8 18             	shr    $0x18,%eax
  406600:	83 e0 7f             	and    $0x7f,%eax
  406603:	83 f8 00             	cmp    $0x0,%eax
  406606:	0f 95 c0             	setne  %al
  406609:	34 ff                	xor    $0xff,%al
  40660b:	34 ff                	xor    $0xff,%al
  40660d:	24 01                	and    $0x1,%al
  40660f:	0f b6 c0             	movzbl %al,%eax
  406612:	48 98                	cltq   
  406614:	48 83 f8 00          	cmp    $0x0,%rax
  406618:	0f 84 18 00 00 00    	je     406636 <http_parser_execute+0x53e6>
  40661e:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  406622:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  406626:	48 29 c8             	sub    %rcx,%rax
  406629:	48 83 c0 01          	add    $0x1,%rax
  40662d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  406631:	e9 7d 12 00 00       	jmpq   4078b3 <http_parser_execute+0x6663>
  406636:	e9 00 00 00 00       	jmpq   40663b <http_parser_execute+0x53eb>
  40663b:	e9 00 00 00 00       	jmpq   406640 <http_parser_execute+0x53f0>
  406640:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  406644:	8b 40 14             	mov    0x14(%rax),%eax
  406647:	c1 e8 1f             	shr    $0x1f,%eax
  40664a:	83 f8 00             	cmp    $0x0,%eax
  40664d:	0f 84 40 00 00 00    	je     406693 <http_parser_execute+0x5443>
  406653:	e9 00 00 00 00       	jmpq   406658 <http_parser_execute+0x5408>
  406658:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  40665b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40665f:	89 48 04             	mov    %ecx,0x4(%rax)
  406662:	8b 55 9c             	mov    -0x64(%rbp),%edx
  406665:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  406669:	8b 08                	mov    (%rax),%ecx
  40666b:	83 e2 7f             	and    $0x7f,%edx
  40666e:	c1 e2 0a             	shl    $0xa,%edx
  406671:	81 e1 ff 03 fe ff    	and    $0xfffe03ff,%ecx
  406677:	09 d1                	or     %edx,%ecx
  406679:	89 08                	mov    %ecx,(%rax)
  40667b:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  40667f:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  406683:	48 29 c8             	sub    %rcx,%rax
  406686:	48 83 c0 01          	add    $0x1,%rax
  40668a:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40668e:	e9 20 12 00 00       	jmpq   4078b3 <http_parser_execute+0x6663>
  406693:	e9 36 0a 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  406698:	83 7d 90 01          	cmpl   $0x1,-0x70(%rbp)
  40669c:	0f 85 05 00 00 00    	jne    4066a7 <http_parser_execute+0x5457>
  4066a2:	e9 28 00 00 00       	jmpq   4066cf <http_parser_execute+0x547f>
  4066a7:	48 bf e4 07 41 00 00 	movabs $0x4107e4,%rdi
  4066ae:	00 00 00 
  4066b1:	48 be c4 06 41 00 00 	movabs $0x4106c4,%rsi
  4066b8:	00 00 00 
  4066bb:	ba ce 07 00 00       	mov    $0x7ce,%edx
  4066c0:	48 b9 d2 06 41 00 00 	movabs $0x4106d2,%rcx
  4066c7:	00 00 00 
  4066ca:	e8 c1 a9 ff ff       	callq  401090 <__assert_fail@plt>
  4066cf:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4066d3:	8b 00                	mov    (%rax),%eax
  4066d5:	c1 e8 02             	shr    $0x2,%eax
  4066d8:	25 ff 00 00 00       	and    $0xff,%eax
  4066dd:	83 e0 01             	and    $0x1,%eax
  4066e0:	83 f8 00             	cmp    $0x0,%eax
  4066e3:	0f 84 05 00 00 00    	je     4066ee <http_parser_execute+0x549e>
  4066e9:	e9 28 00 00 00       	jmpq   406716 <http_parser_execute+0x54c6>
  4066ee:	48 bf ef 07 41 00 00 	movabs $0x4107ef,%rdi
  4066f5:	00 00 00 
  4066f8:	48 be c4 06 41 00 00 	movabs $0x4106c4,%rsi
  4066ff:	00 00 00 
  406702:	ba cf 07 00 00       	mov    $0x7cf,%edx
  406707:	48 b9 d2 06 41 00 00 	movabs $0x4106d2,%rcx
  40670e:	00 00 00 
  406711:	e8 7a a9 ff ff       	callq  401090 <__assert_fail@plt>
  406716:	0f b6 45 d6          	movzbl -0x2a(%rbp),%eax
  40671a:	8a 04 05 a0 05 41 00 	mov    0x4105a0(,%rax,1),%al
  406721:	88 45 d5             	mov    %al,-0x2b(%rbp)
  406724:	0f be 45 d5          	movsbl -0x2b(%rbp),%eax
  406728:	83 f8 ff             	cmp    $0xffffffff,%eax
  40672b:	0f 94 c0             	sete   %al
  40672e:	34 ff                	xor    $0xff,%al
  406730:	34 ff                	xor    $0xff,%al
  406732:	24 01                	and    $0x1,%al
  406734:	0f b6 c0             	movzbl %al,%eax
  406737:	48 98                	cltq   
  406739:	48 83 f8 00          	cmp    $0x0,%rax
  40673d:	0f 84 2a 00 00 00    	je     40676d <http_parser_execute+0x551d>
  406743:	e9 00 00 00 00       	jmpq   406748 <http_parser_execute+0x54f8>
  406748:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  40674b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40674f:	89 48 04             	mov    %ecx,0x4(%rax)
  406752:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  406756:	8b 48 14             	mov    0x14(%rax),%ecx
  406759:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  40675f:	81 c9 00 00 00 1b    	or     $0x1b000000,%ecx
  406765:	89 48 14             	mov    %ecx,0x14(%rax)
  406768:	e9 cf 10 00 00       	jmpq   40783c <http_parser_execute+0x65ec>
  40676d:	48 0f be 4d d5       	movsbq -0x2b(%rbp),%rcx
  406772:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  406776:	48 89 48 08          	mov    %rcx,0x8(%rax)
  40677a:	c7 45 9c 36 00 00 00 	movl   $0x36,-0x64(%rbp)
  406781:	e9 48 09 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  406786:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40678a:	8b 00                	mov    (%rax),%eax
  40678c:	c1 e8 02             	shr    $0x2,%eax
  40678f:	25 ff 00 00 00       	and    $0xff,%eax
  406794:	83 e0 01             	and    $0x1,%eax
  406797:	83 f8 00             	cmp    $0x0,%eax
  40679a:	0f 84 05 00 00 00    	je     4067a5 <http_parser_execute+0x5555>
  4067a0:	e9 28 00 00 00       	jmpq   4067cd <http_parser_execute+0x557d>
  4067a5:	48 bf ef 07 41 00 00 	movabs $0x4107ef,%rdi
  4067ac:	00 00 00 
  4067af:	48 be c4 06 41 00 00 	movabs $0x4106c4,%rsi
  4067b6:	00 00 00 
  4067b9:	ba e0 07 00 00       	mov    $0x7e0,%edx
  4067be:	48 b9 d2 06 41 00 00 	movabs $0x4106d2,%rcx
  4067c5:	00 00 00 
  4067c8:	e8 c3 a8 ff ff       	callq  401090 <__assert_fail@plt>
  4067cd:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  4067d1:	83 f8 0d             	cmp    $0xd,%eax
  4067d4:	0f 85 0c 00 00 00    	jne    4067e6 <http_parser_execute+0x5596>
  4067da:	c7 45 9c 38 00 00 00 	movl   $0x38,-0x64(%rbp)
  4067e1:	e9 e8 08 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  4067e6:	0f b6 45 d6          	movzbl -0x2a(%rbp),%eax
  4067ea:	8a 04 05 a0 05 41 00 	mov    0x4105a0(,%rax,1),%al
  4067f1:	88 45 d5             	mov    %al,-0x2b(%rbp)
  4067f4:	0f be 45 d5          	movsbl -0x2b(%rbp),%eax
  4067f8:	83 f8 ff             	cmp    $0xffffffff,%eax
  4067fb:	0f 85 50 00 00 00    	jne    406851 <http_parser_execute+0x5601>
  406801:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  406805:	83 f8 3b             	cmp    $0x3b,%eax
  406808:	0f 84 0d 00 00 00    	je     40681b <http_parser_execute+0x55cb>
  40680e:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  406812:	83 f8 20             	cmp    $0x20,%eax
  406815:	0f 85 0c 00 00 00    	jne    406827 <http_parser_execute+0x55d7>
  40681b:	c7 45 9c 37 00 00 00 	movl   $0x37,-0x64(%rbp)
  406822:	e9 a7 08 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  406827:	e9 00 00 00 00       	jmpq   40682c <http_parser_execute+0x55dc>
  40682c:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  40682f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  406833:	89 48 04             	mov    %ecx,0x4(%rax)
  406836:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40683a:	8b 48 14             	mov    0x14(%rax),%ecx
  40683d:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  406843:	81 c9 00 00 00 1b    	or     $0x1b000000,%ecx
  406849:	89 48 14             	mov    %ecx,0x14(%rax)
  40684c:	e9 eb 0f 00 00       	jmpq   40783c <http_parser_execute+0x65ec>
  406851:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  406855:	48 8b 40 08          	mov    0x8(%rax),%rax
  406859:	48 89 85 30 ff ff ff 	mov    %rax,-0xd0(%rbp)
  406860:	48 8b 85 30 ff ff ff 	mov    -0xd0(%rbp),%rax
  406867:	48 c1 e0 04          	shl    $0x4,%rax
  40686b:	48 89 85 30 ff ff ff 	mov    %rax,-0xd0(%rbp)
  406872:	48 0f be 45 d5       	movsbq -0x2b(%rbp),%rax
  406877:	48 03 85 30 ff ff ff 	add    -0xd0(%rbp),%rax
  40687e:	48 89 85 30 ff ff ff 	mov    %rax,-0xd0(%rbp)
  406885:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  406889:	48 b8 fe ff ff ff ff 	movabs $0xffffffffffffffe,%rax
  406890:	ff ff 0f 
  406893:	48 3b 41 08          	cmp    0x8(%rcx),%rax
  406897:	0f 92 c0             	setb   %al
  40689a:	34 ff                	xor    $0xff,%al
  40689c:	34 ff                	xor    $0xff,%al
  40689e:	24 01                	and    $0x1,%al
  4068a0:	0f b6 c0             	movzbl %al,%eax
  4068a3:	48 98                	cltq   
  4068a5:	48 83 f8 00          	cmp    $0x0,%rax
  4068a9:	0f 84 2a 00 00 00    	je     4068d9 <http_parser_execute+0x5689>
  4068af:	e9 00 00 00 00       	jmpq   4068b4 <http_parser_execute+0x5664>
  4068b4:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  4068b7:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4068bb:	89 48 04             	mov    %ecx,0x4(%rax)
  4068be:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4068c2:	8b 48 14             	mov    0x14(%rax),%ecx
  4068c5:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  4068cb:	81 c9 00 00 00 19    	or     $0x19000000,%ecx
  4068d1:	89 48 14             	mov    %ecx,0x14(%rax)
  4068d4:	e9 63 0f 00 00       	jmpq   40783c <http_parser_execute+0x65ec>
  4068d9:	48 8b 8d 30 ff ff ff 	mov    -0xd0(%rbp),%rcx
  4068e0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4068e4:	48 89 48 08          	mov    %rcx,0x8(%rax)
  4068e8:	e9 e1 07 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  4068ed:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4068f1:	8b 00                	mov    (%rax),%eax
  4068f3:	c1 e8 02             	shr    $0x2,%eax
  4068f6:	25 ff 00 00 00       	and    $0xff,%eax
  4068fb:	83 e0 01             	and    $0x1,%eax
  4068fe:	83 f8 00             	cmp    $0x0,%eax
  406901:	0f 84 05 00 00 00    	je     40690c <http_parser_execute+0x56bc>
  406907:	e9 28 00 00 00       	jmpq   406934 <http_parser_execute+0x56e4>
  40690c:	48 bf ef 07 41 00 00 	movabs $0x4107ef,%rdi
  406913:	00 00 00 
  406916:	48 be c4 06 41 00 00 	movabs $0x4106c4,%rsi
  40691d:	00 00 00 
  406920:	ba 03 08 00 00       	mov    $0x803,%edx
  406925:	48 b9 d2 06 41 00 00 	movabs $0x4106d2,%rcx
  40692c:	00 00 00 
  40692f:	e8 5c a7 ff ff       	callq  401090 <__assert_fail@plt>
  406934:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  406938:	83 f8 0d             	cmp    $0xd,%eax
  40693b:	0f 85 0c 00 00 00    	jne    40694d <http_parser_execute+0x56fd>
  406941:	c7 45 9c 38 00 00 00 	movl   $0x38,-0x64(%rbp)
  406948:	e9 81 07 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  40694d:	e9 7c 07 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  406952:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  406956:	8b 00                	mov    (%rax),%eax
  406958:	c1 e8 02             	shr    $0x2,%eax
  40695b:	25 ff 00 00 00       	and    $0xff,%eax
  406960:	83 e0 01             	and    $0x1,%eax
  406963:	83 f8 00             	cmp    $0x0,%eax
  406966:	0f 84 05 00 00 00    	je     406971 <http_parser_execute+0x5721>
  40696c:	e9 28 00 00 00       	jmpq   406999 <http_parser_execute+0x5749>
  406971:	48 bf ef 07 41 00 00 	movabs $0x4107ef,%rdi
  406978:	00 00 00 
  40697b:	48 be c4 06 41 00 00 	movabs $0x4106c4,%rsi
  406982:	00 00 00 
  406985:	ba 0e 08 00 00       	mov    $0x80e,%edx
  40698a:	48 b9 d2 06 41 00 00 	movabs $0x4106d2,%rcx
  406991:	00 00 00 
  406994:	e8 f7 a6 ff ff       	callq  401090 <__assert_fail@plt>
  406999:	e9 00 00 00 00       	jmpq   40699e <http_parser_execute+0x574e>
  40699e:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  4069a2:	83 f8 0a             	cmp    $0xa,%eax
  4069a5:	0f 84 2a 00 00 00    	je     4069d5 <http_parser_execute+0x5785>
  4069ab:	e9 00 00 00 00       	jmpq   4069b0 <http_parser_execute+0x5760>
  4069b0:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  4069b3:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4069b7:	89 48 04             	mov    %ecx,0x4(%rax)
  4069ba:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4069be:	8b 48 14             	mov    0x14(%rax),%ecx
  4069c1:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  4069c7:	81 c9 00 00 00 1e    	or     $0x1e000000,%ecx
  4069cd:	89 48 14             	mov    %ecx,0x14(%rax)
  4069d0:	e9 67 0e 00 00       	jmpq   40783c <http_parser_execute+0x65ec>
  4069d5:	e9 00 00 00 00       	jmpq   4069da <http_parser_execute+0x578a>
  4069da:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4069de:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%rax)
  4069e5:	c7 45 90 00 00 00 00 	movl   $0x0,-0x70(%rbp)
  4069ec:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4069f0:	48 83 78 08 00       	cmpq   $0x0,0x8(%rax)
  4069f5:	0f 85 33 00 00 00    	jne    406a2e <http_parser_execute+0x57de>
  4069fb:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4069ff:	8b 10                	mov    (%rax),%edx
  406a01:	c1 ea 02             	shr    $0x2,%edx
  406a04:	81 e2 ff 00 00 00    	and    $0xff,%edx
  406a0a:	83 ca 10             	or     $0x10,%edx
  406a0d:	8b 08                	mov    (%rax),%ecx
  406a0f:	81 e2 ff 00 00 00    	and    $0xff,%edx
  406a15:	c1 e2 02             	shl    $0x2,%edx
  406a18:	81 e1 03 fc ff ff    	and    $0xfffffc03,%ecx
  406a1e:	09 d1                	or     %edx,%ecx
  406a20:	89 08                	mov    %ecx,(%rax)
  406a22:	c7 45 9c 2c 00 00 00 	movl   $0x2c,-0x64(%rbp)
  406a29:	e9 07 00 00 00       	jmpq   406a35 <http_parser_execute+0x57e5>
  406a2e:	c7 45 9c 3b 00 00 00 	movl   $0x3b,-0x64(%rbp)
  406a35:	e9 00 00 00 00       	jmpq   406a3a <http_parser_execute+0x57ea>
  406a3a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  406a3e:	8b 40 14             	mov    0x14(%rax),%eax
  406a41:	c1 e8 18             	shr    $0x18,%eax
  406a44:	83 e0 7f             	and    $0x7f,%eax
  406a47:	83 f8 00             	cmp    $0x0,%eax
  406a4a:	0f 85 05 00 00 00    	jne    406a55 <http_parser_execute+0x5805>
  406a50:	e9 28 00 00 00       	jmpq   406a7d <http_parser_execute+0x582d>
  406a55:	48 bf a0 06 41 00 00 	movabs $0x4106a0,%rdi
  406a5c:	00 00 00 
  406a5f:	48 be c4 06 41 00 00 	movabs $0x4106c4,%rsi
  406a66:	00 00 00 
  406a69:	ba 1a 08 00 00       	mov    $0x81a,%edx
  406a6e:	48 b9 d2 06 41 00 00 	movabs $0x4106d2,%rcx
  406a75:	00 00 00 
  406a78:	e8 13 a6 ff ff       	callq  401090 <__assert_fail@plt>
  406a7d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  406a81:	48 83 78 40 00       	cmpq   $0x0,0x40(%rax)
  406a86:	0f 95 c0             	setne  %al
  406a89:	34 ff                	xor    $0xff,%al
  406a8b:	34 ff                	xor    $0xff,%al
  406a8d:	24 01                	and    $0x1,%al
  406a8f:	0f b6 c0             	movzbl %al,%eax
  406a92:	48 98                	cltq   
  406a94:	48 83 f8 00          	cmp    $0x0,%rax
  406a98:	0f 84 c3 00 00 00    	je     406b61 <http_parser_execute+0x5911>
  406a9e:	8b 55 9c             	mov    -0x64(%rbp),%edx
  406aa1:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  406aa5:	8b 08                	mov    (%rax),%ecx
  406aa7:	83 e2 7f             	and    $0x7f,%edx
  406aaa:	c1 e2 0a             	shl    $0xa,%edx
  406aad:	81 e1 ff 03 fe ff    	and    $0xfffe03ff,%ecx
  406ab3:	09 d1                	or     %edx,%ecx
  406ab5:	89 08                	mov    %ecx,(%rax)
  406ab7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  406abb:	48 8b 40 40          	mov    0x40(%rax),%rax
  406abf:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  406ac3:	ff d0                	callq  *%rax
  406ac5:	89 c1                	mov    %eax,%ecx
  406ac7:	31 c0                	xor    %eax,%eax
  406ac9:	39 c8                	cmp    %ecx,%eax
  406acb:	0f 95 c0             	setne  %al
  406ace:	34 ff                	xor    $0xff,%al
  406ad0:	34 ff                	xor    $0xff,%al
  406ad2:	24 01                	and    $0x1,%al
  406ad4:	0f b6 c0             	movzbl %al,%eax
  406ad7:	48 98                	cltq   
  406ad9:	48 83 f8 00          	cmp    $0x0,%rax
  406add:	0f 84 2a 00 00 00    	je     406b0d <http_parser_execute+0x58bd>
  406ae3:	e9 00 00 00 00       	jmpq   406ae8 <http_parser_execute+0x5898>
  406ae8:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  406aeb:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  406aef:	89 48 04             	mov    %ecx,0x4(%rax)
  406af2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  406af6:	8b 48 14             	mov    0x14(%rax),%ecx
  406af9:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  406aff:	81 c9 00 00 00 09    	or     $0x9000000,%ecx
  406b05:	89 48 14             	mov    %ecx,0x14(%rax)
  406b08:	e9 00 00 00 00       	jmpq   406b0d <http_parser_execute+0x58bd>
  406b0d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  406b11:	8b 00                	mov    (%rax),%eax
  406b13:	c1 e8 0a             	shr    $0xa,%eax
  406b16:	83 e0 7f             	and    $0x7f,%eax
  406b19:	89 45 9c             	mov    %eax,-0x64(%rbp)
  406b1c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  406b20:	8b 40 14             	mov    0x14(%rax),%eax
  406b23:	c1 e8 18             	shr    $0x18,%eax
  406b26:	83 e0 7f             	and    $0x7f,%eax
  406b29:	83 f8 00             	cmp    $0x0,%eax
  406b2c:	0f 95 c0             	setne  %al
  406b2f:	34 ff                	xor    $0xff,%al
  406b31:	34 ff                	xor    $0xff,%al
  406b33:	24 01                	and    $0x1,%al
  406b35:	0f b6 c0             	movzbl %al,%eax
  406b38:	48 98                	cltq   
  406b3a:	48 83 f8 00          	cmp    $0x0,%rax
  406b3e:	0f 84 18 00 00 00    	je     406b5c <http_parser_execute+0x590c>
  406b44:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  406b48:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  406b4c:	48 29 c8             	sub    %rcx,%rax
  406b4f:	48 83 c0 01          	add    $0x1,%rax
  406b53:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  406b57:	e9 57 0d 00 00       	jmpq   4078b3 <http_parser_execute+0x6663>
  406b5c:	e9 00 00 00 00       	jmpq   406b61 <http_parser_execute+0x5911>
  406b61:	e9 00 00 00 00       	jmpq   406b66 <http_parser_execute+0x5916>
  406b66:	e9 63 05 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  406b6b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  406b6f:	48 8b 40 08          	mov    0x8(%rax),%rax
  406b73:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  406b77:	48 03 4d d8          	add    -0x28(%rbp),%rcx
  406b7b:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  406b7f:	48 29 d1             	sub    %rdx,%rcx
  406b82:	48 39 c8             	cmp    %rcx,%rax
  406b85:	0f 83 14 00 00 00    	jae    406b9f <http_parser_execute+0x594f>
  406b8b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  406b8f:	48 8b 40 08          	mov    0x8(%rax),%rax
  406b93:	48 89 85 38 fe ff ff 	mov    %rax,-0x1c8(%rbp)
  406b9a:	e9 16 00 00 00       	jmpq   406bb5 <http_parser_execute+0x5965>
  406b9f:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  406ba3:	48 03 45 d8          	add    -0x28(%rbp),%rax
  406ba7:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
  406bab:	48 29 c8             	sub    %rcx,%rax
  406bae:	48 89 85 38 fe ff ff 	mov    %rax,-0x1c8(%rbp)
  406bb5:	48 8b 85 38 fe ff ff 	mov    -0x1c8(%rbp),%rax
  406bbc:	48 89 85 28 ff ff ff 	mov    %rax,-0xd8(%rbp)
  406bc3:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  406bc7:	8b 00                	mov    (%rax),%eax
  406bc9:	c1 e8 02             	shr    $0x2,%eax
  406bcc:	25 ff 00 00 00       	and    $0xff,%eax
  406bd1:	83 e0 01             	and    $0x1,%eax
  406bd4:	83 f8 00             	cmp    $0x0,%eax
  406bd7:	0f 84 05 00 00 00    	je     406be2 <http_parser_execute+0x5992>
  406bdd:	e9 28 00 00 00       	jmpq   406c0a <http_parser_execute+0x59ba>
  406be2:	48 bf ef 07 41 00 00 	movabs $0x4107ef,%rdi
  406be9:	00 00 00 
  406bec:	48 be c4 06 41 00 00 	movabs $0x4106c4,%rsi
  406bf3:	00 00 00 
  406bf6:	ba 23 08 00 00       	mov    $0x823,%edx
  406bfb:	48 b9 d2 06 41 00 00 	movabs $0x4106d2,%rcx
  406c02:	00 00 00 
  406c05:	e8 86 a4 ff ff       	callq  401090 <__assert_fail@plt>
  406c0a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  406c0e:	48 83 78 08 00       	cmpq   $0x0,0x8(%rax)
  406c13:	0f 84 14 00 00 00    	je     406c2d <http_parser_execute+0x59dd>
  406c19:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  406c1d:	48 83 78 08 ff       	cmpq   $0xffffffffffffffff,0x8(%rax)
  406c22:	0f 84 05 00 00 00    	je     406c2d <http_parser_execute+0x59dd>
  406c28:	e9 28 00 00 00       	jmpq   406c55 <http_parser_execute+0x5a05>
  406c2d:	48 bf a0 07 41 00 00 	movabs $0x4107a0,%rdi
  406c34:	00 00 00 
  406c37:	48 be c4 06 41 00 00 	movabs $0x4106c4,%rsi
  406c3e:	00 00 00 
  406c41:	ba 25 08 00 00       	mov    $0x825,%edx
  406c46:	48 b9 d2 06 41 00 00 	movabs $0x4106d2,%rcx
  406c4d:	00 00 00 
  406c50:	e8 3b a4 ff ff       	callq  401090 <__assert_fail@plt>
  406c55:	e9 00 00 00 00       	jmpq   406c5a <http_parser_execute+0x5a0a>
  406c5a:	48 83 7d a8 00       	cmpq   $0x0,-0x58(%rbp)
  406c5f:	0f 85 08 00 00 00    	jne    406c6d <http_parser_execute+0x5a1d>
  406c65:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  406c69:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  406c6d:	e9 00 00 00 00       	jmpq   406c72 <http_parser_execute+0x5a22>
  406c72:	48 8b 95 28 ff ff ff 	mov    -0xd8(%rbp),%rdx
  406c79:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  406c7d:	48 8b 48 08          	mov    0x8(%rax),%rcx
  406c81:	48 29 d1             	sub    %rdx,%rcx
  406c84:	48 89 48 08          	mov    %rcx,0x8(%rax)
  406c88:	48 8b 85 28 ff ff ff 	mov    -0xd8(%rbp),%rax
  406c8f:	48 83 e8 01          	sub    $0x1,%rax
  406c93:	48 03 45 c8          	add    -0x38(%rbp),%rax
  406c97:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  406c9b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  406c9f:	48 83 78 08 00       	cmpq   $0x0,0x8(%rax)
  406ca4:	0f 85 07 00 00 00    	jne    406cb1 <http_parser_execute+0x5a61>
  406caa:	c7 45 9c 3c 00 00 00 	movl   $0x3c,-0x64(%rbp)
  406cb1:	e9 18 04 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  406cb6:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  406cba:	8b 00                	mov    (%rax),%eax
  406cbc:	c1 e8 02             	shr    $0x2,%eax
  406cbf:	25 ff 00 00 00       	and    $0xff,%eax
  406cc4:	83 e0 01             	and    $0x1,%eax
  406cc7:	83 f8 00             	cmp    $0x0,%eax
  406cca:	0f 84 05 00 00 00    	je     406cd5 <http_parser_execute+0x5a85>
  406cd0:	e9 28 00 00 00       	jmpq   406cfd <http_parser_execute+0x5aad>
  406cd5:	48 bf ef 07 41 00 00 	movabs $0x4107ef,%rdi
  406cdc:	00 00 00 
  406cdf:	48 be c4 06 41 00 00 	movabs $0x4106c4,%rsi
  406ce6:	00 00 00 
  406ce9:	ba 36 08 00 00       	mov    $0x836,%edx
  406cee:	48 b9 d2 06 41 00 00 	movabs $0x4106d2,%rcx
  406cf5:	00 00 00 
  406cf8:	e8 93 a3 ff ff       	callq  401090 <__assert_fail@plt>
  406cfd:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  406d01:	48 83 78 08 00       	cmpq   $0x0,0x8(%rax)
  406d06:	0f 85 05 00 00 00    	jne    406d11 <http_parser_execute+0x5ac1>
  406d0c:	e9 28 00 00 00       	jmpq   406d39 <http_parser_execute+0x5ae9>
  406d11:	48 bf 09 08 41 00 00 	movabs $0x410809,%rdi
  406d18:	00 00 00 
  406d1b:	48 be c4 06 41 00 00 	movabs $0x4106c4,%rsi
  406d22:	00 00 00 
  406d25:	ba 37 08 00 00       	mov    $0x837,%edx
  406d2a:	48 b9 d2 06 41 00 00 	movabs $0x4106d2,%rcx
  406d31:	00 00 00 
  406d34:	e8 57 a3 ff ff       	callq  401090 <__assert_fail@plt>
  406d39:	e9 00 00 00 00       	jmpq   406d3e <http_parser_execute+0x5aee>
  406d3e:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  406d42:	83 f8 0d             	cmp    $0xd,%eax
  406d45:	0f 84 2a 00 00 00    	je     406d75 <http_parser_execute+0x5b25>
  406d4b:	e9 00 00 00 00       	jmpq   406d50 <http_parser_execute+0x5b00>
  406d50:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  406d53:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  406d57:	89 48 04             	mov    %ecx,0x4(%rax)
  406d5a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  406d5e:	8b 48 14             	mov    0x14(%rax),%ecx
  406d61:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  406d67:	81 c9 00 00 00 1e    	or     $0x1e000000,%ecx
  406d6d:	89 48 14             	mov    %ecx,0x14(%rax)
  406d70:	e9 c7 0a 00 00       	jmpq   40783c <http_parser_execute+0x65ec>
  406d75:	e9 00 00 00 00       	jmpq   406d7a <http_parser_execute+0x5b2a>
  406d7a:	c7 45 9c 3d 00 00 00 	movl   $0x3d,-0x64(%rbp)
  406d81:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  406d85:	8b 40 14             	mov    0x14(%rax),%eax
  406d88:	c1 e8 18             	shr    $0x18,%eax
  406d8b:	83 e0 7f             	and    $0x7f,%eax
  406d8e:	83 f8 00             	cmp    $0x0,%eax
  406d91:	0f 85 05 00 00 00    	jne    406d9c <http_parser_execute+0x5b4c>
  406d97:	e9 28 00 00 00       	jmpq   406dc4 <http_parser_execute+0x5b74>
  406d9c:	48 bf a0 06 41 00 00 	movabs $0x4106a0,%rdi
  406da3:	00 00 00 
  406da6:	48 be c4 06 41 00 00 	movabs $0x4106c4,%rsi
  406dad:	00 00 00 
  406db0:	ba 3a 08 00 00       	mov    $0x83a,%edx
  406db5:	48 b9 d2 06 41 00 00 	movabs $0x4106d2,%rcx
  406dbc:	00 00 00 
  406dbf:	e8 cc a2 ff ff       	callq  401090 <__assert_fail@plt>
  406dc4:	48 83 7d a8 00       	cmpq   $0x0,-0x58(%rbp)
  406dc9:	0f 84 fb 00 00 00    	je     406eca <http_parser_execute+0x5c7a>
  406dcf:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  406dd3:	48 83 78 30 00       	cmpq   $0x0,0x30(%rax)
  406dd8:	0f 95 c0             	setne  %al
  406ddb:	34 ff                	xor    $0xff,%al
  406ddd:	34 ff                	xor    $0xff,%al
  406ddf:	24 01                	and    $0x1,%al
  406de1:	0f b6 c0             	movzbl %al,%eax
  406de4:	48 98                	cltq   
  406de6:	48 83 f8 00          	cmp    $0x0,%rax
  406dea:	0f 84 d2 00 00 00    	je     406ec2 <http_parser_execute+0x5c72>
  406df0:	8b 55 9c             	mov    -0x64(%rbp),%edx
  406df3:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  406df7:	8b 08                	mov    (%rax),%ecx
  406df9:	83 e2 7f             	and    $0x7f,%edx
  406dfc:	c1 e2 0a             	shl    $0xa,%edx
  406dff:	81 e1 ff 03 fe ff    	and    $0xfffe03ff,%ecx
  406e05:	09 d1                	or     %edx,%ecx
  406e07:	89 08                	mov    %ecx,(%rax)
  406e09:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  406e0d:	48 8b 40 30          	mov    0x30(%rax),%rax
  406e11:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  406e15:	48 8b 75 a8          	mov    -0x58(%rbp),%rsi
  406e19:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  406e1d:	48 8b 4d a8          	mov    -0x58(%rbp),%rcx
  406e21:	48 29 ca             	sub    %rcx,%rdx
  406e24:	ff d0                	callq  *%rax
  406e26:	89 c1                	mov    %eax,%ecx
  406e28:	31 c0                	xor    %eax,%eax
  406e2a:	39 c8                	cmp    %ecx,%eax
  406e2c:	0f 95 c0             	setne  %al
  406e2f:	34 ff                	xor    $0xff,%al
  406e31:	34 ff                	xor    $0xff,%al
  406e33:	24 01                	and    $0x1,%al
  406e35:	0f b6 c0             	movzbl %al,%eax
  406e38:	48 98                	cltq   
  406e3a:	48 83 f8 00          	cmp    $0x0,%rax
  406e3e:	0f 84 2a 00 00 00    	je     406e6e <http_parser_execute+0x5c1e>
  406e44:	e9 00 00 00 00       	jmpq   406e49 <http_parser_execute+0x5bf9>
  406e49:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  406e4c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  406e50:	89 48 04             	mov    %ecx,0x4(%rax)
  406e53:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  406e57:	8b 48 14             	mov    0x14(%rax),%ecx
  406e5a:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  406e60:	81 c9 00 00 00 06    	or     $0x6000000,%ecx
  406e66:	89 48 14             	mov    %ecx,0x14(%rax)
  406e69:	e9 00 00 00 00       	jmpq   406e6e <http_parser_execute+0x5c1e>
  406e6e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  406e72:	8b 00                	mov    (%rax),%eax
  406e74:	c1 e8 0a             	shr    $0xa,%eax
  406e77:	83 e0 7f             	and    $0x7f,%eax
  406e7a:	89 45 9c             	mov    %eax,-0x64(%rbp)
  406e7d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  406e81:	8b 40 14             	mov    0x14(%rax),%eax
  406e84:	c1 e8 18             	shr    $0x18,%eax
  406e87:	83 e0 7f             	and    $0x7f,%eax
  406e8a:	83 f8 00             	cmp    $0x0,%eax
  406e8d:	0f 95 c0             	setne  %al
  406e90:	34 ff                	xor    $0xff,%al
  406e92:	34 ff                	xor    $0xff,%al
  406e94:	24 01                	and    $0x1,%al
  406e96:	0f b6 c0             	movzbl %al,%eax
  406e99:	48 98                	cltq   
  406e9b:	48 83 f8 00          	cmp    $0x0,%rax
  406e9f:	0f 84 18 00 00 00    	je     406ebd <http_parser_execute+0x5c6d>
  406ea5:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  406ea9:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  406ead:	48 29 c8             	sub    %rcx,%rax
  406eb0:	48 83 c0 01          	add    $0x1,%rax
  406eb4:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  406eb8:	e9 f6 09 00 00       	jmpq   4078b3 <http_parser_execute+0x6663>
  406ebd:	e9 00 00 00 00       	jmpq   406ec2 <http_parser_execute+0x5c72>
  406ec2:	48 c7 45 a8 00 00 00 	movq   $0x0,-0x58(%rbp)
  406ec9:	00 
  406eca:	e9 00 00 00 00       	jmpq   406ecf <http_parser_execute+0x5c7f>
  406ecf:	e9 fa 01 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  406ed4:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  406ed8:	8b 00                	mov    (%rax),%eax
  406eda:	c1 e8 02             	shr    $0x2,%eax
  406edd:	25 ff 00 00 00       	and    $0xff,%eax
  406ee2:	83 e0 01             	and    $0x1,%eax
  406ee5:	83 f8 00             	cmp    $0x0,%eax
  406ee8:	0f 84 05 00 00 00    	je     406ef3 <http_parser_execute+0x5ca3>
  406eee:	e9 28 00 00 00       	jmpq   406f1b <http_parser_execute+0x5ccb>
  406ef3:	48 bf ef 07 41 00 00 	movabs $0x4107ef,%rdi
  406efa:	00 00 00 
  406efd:	48 be c4 06 41 00 00 	movabs $0x4106c4,%rsi
  406f04:	00 00 00 
  406f07:	ba 3e 08 00 00       	mov    $0x83e,%edx
  406f0c:	48 b9 d2 06 41 00 00 	movabs $0x4106d2,%rcx
  406f13:	00 00 00 
  406f16:	e8 75 a1 ff ff       	callq  401090 <__assert_fail@plt>
  406f1b:	e9 00 00 00 00       	jmpq   406f20 <http_parser_execute+0x5cd0>
  406f20:	0f be 45 d6          	movsbl -0x2a(%rbp),%eax
  406f24:	83 f8 0a             	cmp    $0xa,%eax
  406f27:	0f 84 2a 00 00 00    	je     406f57 <http_parser_execute+0x5d07>
  406f2d:	e9 00 00 00 00       	jmpq   406f32 <http_parser_execute+0x5ce2>
  406f32:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  406f35:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  406f39:	89 48 04             	mov    %ecx,0x4(%rax)
  406f3c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  406f40:	8b 48 14             	mov    0x14(%rax),%ecx
  406f43:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  406f49:	81 c9 00 00 00 1e    	or     $0x1e000000,%ecx
  406f4f:	89 48 14             	mov    %ecx,0x14(%rax)
  406f52:	e9 e5 08 00 00       	jmpq   40783c <http_parser_execute+0x65ec>
  406f57:	e9 00 00 00 00       	jmpq   406f5c <http_parser_execute+0x5d0c>
  406f5c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  406f60:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%rax)
  406f67:	c7 45 90 00 00 00 00 	movl   $0x0,-0x70(%rbp)
  406f6e:	c7 45 9c 35 00 00 00 	movl   $0x35,-0x64(%rbp)
  406f75:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  406f79:	8b 40 14             	mov    0x14(%rax),%eax
  406f7c:	c1 e8 18             	shr    $0x18,%eax
  406f7f:	83 e0 7f             	and    $0x7f,%eax
  406f82:	83 f8 00             	cmp    $0x0,%eax
  406f85:	0f 85 05 00 00 00    	jne    406f90 <http_parser_execute+0x5d40>
  406f8b:	e9 28 00 00 00       	jmpq   406fb8 <http_parser_execute+0x5d68>
  406f90:	48 bf a0 06 41 00 00 	movabs $0x4106a0,%rdi
  406f97:	00 00 00 
  406f9a:	48 be c4 06 41 00 00 	movabs $0x4106c4,%rsi
  406fa1:	00 00 00 
  406fa4:	ba 43 08 00 00       	mov    $0x843,%edx
  406fa9:	48 b9 d2 06 41 00 00 	movabs $0x4106d2,%rcx
  406fb0:	00 00 00 
  406fb3:	e8 d8 a0 ff ff       	callq  401090 <__assert_fail@plt>
  406fb8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  406fbc:	48 83 78 48 00       	cmpq   $0x0,0x48(%rax)
  406fc1:	0f 95 c0             	setne  %al
  406fc4:	34 ff                	xor    $0xff,%al
  406fc6:	34 ff                	xor    $0xff,%al
  406fc8:	24 01                	and    $0x1,%al
  406fca:	0f b6 c0             	movzbl %al,%eax
  406fcd:	48 98                	cltq   
  406fcf:	48 83 f8 00          	cmp    $0x0,%rax
  406fd3:	0f 84 c3 00 00 00    	je     40709c <http_parser_execute+0x5e4c>
  406fd9:	8b 55 9c             	mov    -0x64(%rbp),%edx
  406fdc:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  406fe0:	8b 08                	mov    (%rax),%ecx
  406fe2:	83 e2 7f             	and    $0x7f,%edx
  406fe5:	c1 e2 0a             	shl    $0xa,%edx
  406fe8:	81 e1 ff 03 fe ff    	and    $0xfffe03ff,%ecx
  406fee:	09 d1                	or     %edx,%ecx
  406ff0:	89 08                	mov    %ecx,(%rax)
  406ff2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  406ff6:	48 8b 40 48          	mov    0x48(%rax),%rax
  406ffa:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  406ffe:	ff d0                	callq  *%rax
  407000:	89 c1                	mov    %eax,%ecx
  407002:	31 c0                	xor    %eax,%eax
  407004:	39 c8                	cmp    %ecx,%eax
  407006:	0f 95 c0             	setne  %al
  407009:	34 ff                	xor    $0xff,%al
  40700b:	34 ff                	xor    $0xff,%al
  40700d:	24 01                	and    $0x1,%al
  40700f:	0f b6 c0             	movzbl %al,%eax
  407012:	48 98                	cltq   
  407014:	48 83 f8 00          	cmp    $0x0,%rax
  407018:	0f 84 2a 00 00 00    	je     407048 <http_parser_execute+0x5df8>
  40701e:	e9 00 00 00 00       	jmpq   407023 <http_parser_execute+0x5dd3>
  407023:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  407026:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40702a:	89 48 04             	mov    %ecx,0x4(%rax)
  40702d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  407031:	8b 48 14             	mov    0x14(%rax),%ecx
  407034:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  40703a:	81 c9 00 00 00 0a    	or     $0xa000000,%ecx
  407040:	89 48 14             	mov    %ecx,0x14(%rax)
  407043:	e9 00 00 00 00       	jmpq   407048 <http_parser_execute+0x5df8>
  407048:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40704c:	8b 00                	mov    (%rax),%eax
  40704e:	c1 e8 0a             	shr    $0xa,%eax
  407051:	83 e0 7f             	and    $0x7f,%eax
  407054:	89 45 9c             	mov    %eax,-0x64(%rbp)
  407057:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40705b:	8b 40 14             	mov    0x14(%rax),%eax
  40705e:	c1 e8 18             	shr    $0x18,%eax
  407061:	83 e0 7f             	and    $0x7f,%eax
  407064:	83 f8 00             	cmp    $0x0,%eax
  407067:	0f 95 c0             	setne  %al
  40706a:	34 ff                	xor    $0xff,%al
  40706c:	34 ff                	xor    $0xff,%al
  40706e:	24 01                	and    $0x1,%al
  407070:	0f b6 c0             	movzbl %al,%eax
  407073:	48 98                	cltq   
  407075:	48 83 f8 00          	cmp    $0x0,%rax
  407079:	0f 84 18 00 00 00    	je     407097 <http_parser_execute+0x5e47>
  40707f:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  407083:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  407087:	48 29 c8             	sub    %rcx,%rax
  40708a:	48 83 c0 01          	add    $0x1,%rax
  40708e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  407092:	e9 1c 08 00 00       	jmpq   4078b3 <http_parser_execute+0x6663>
  407097:	e9 00 00 00 00       	jmpq   40709c <http_parser_execute+0x5e4c>
  40709c:	e9 00 00 00 00       	jmpq   4070a1 <http_parser_execute+0x5e51>
  4070a1:	e9 28 00 00 00       	jmpq   4070ce <http_parser_execute+0x5e7e>
  4070a6:	48 bf 25 08 41 00 00 	movabs $0x410825,%rdi
  4070ad:	00 00 00 
  4070b0:	48 be c4 06 41 00 00 	movabs $0x4106c4,%rsi
  4070b7:	00 00 00 
  4070ba:	ba 47 08 00 00       	mov    $0x847,%edx
  4070bf:	48 b9 d2 06 41 00 00 	movabs $0x4106d2,%rcx
  4070c6:	00 00 00 
  4070c9:	e8 c2 9f ff ff       	callq  401090 <__assert_fail@plt>
  4070ce:	e9 00 00 00 00       	jmpq   4070d3 <http_parser_execute+0x5e83>
  4070d3:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  4070d7:	48 83 c0 01          	add    $0x1,%rax
  4070db:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  4070df:	e9 61 a4 ff ff       	jmpq   401545 <http_parser_execute+0x2f5>
  4070e4:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
  4070e8:	31 c0                	xor    %eax,%eax
  4070ea:	b9 01 00 00 00       	mov    $0x1,%ecx
  4070ef:	48 83 fa 00          	cmp    $0x0,%rdx
  4070f3:	0f 45 c1             	cmovne %ecx,%eax
  4070f6:	48 8b 75 b8          	mov    -0x48(%rbp),%rsi
  4070fa:	31 c9                	xor    %ecx,%ecx
  4070fc:	ba 01 00 00 00       	mov    $0x1,%edx
  407101:	48 83 fe 00          	cmp    $0x0,%rsi
  407105:	0f 45 ca             	cmovne %edx,%ecx
  407108:	01 c8                	add    %ecx,%eax
  40710a:	48 8b 75 b0          	mov    -0x50(%rbp),%rsi
  40710e:	31 c9                	xor    %ecx,%ecx
  407110:	ba 01 00 00 00       	mov    $0x1,%edx
  407115:	48 83 fe 00          	cmp    $0x0,%rsi
  407119:	0f 45 ca             	cmovne %edx,%ecx
  40711c:	01 c8                	add    %ecx,%eax
  40711e:	48 8b 75 a8          	mov    -0x58(%rbp),%rsi
  407122:	31 c9                	xor    %ecx,%ecx
  407124:	ba 01 00 00 00       	mov    $0x1,%edx
  407129:	48 83 fe 00          	cmp    $0x0,%rsi
  40712d:	0f 45 ca             	cmovne %edx,%ecx
  407130:	01 c8                	add    %ecx,%eax
  407132:	48 8b 75 a0          	mov    -0x60(%rbp),%rsi
  407136:	31 c9                	xor    %ecx,%ecx
  407138:	ba 01 00 00 00       	mov    $0x1,%edx
  40713d:	48 83 fe 00          	cmp    $0x0,%rsi
  407141:	0f 45 ca             	cmovne %edx,%ecx
  407144:	01 c8                	add    %ecx,%eax
  407146:	83 f8 01             	cmp    $0x1,%eax
  407149:	0f 8f 05 00 00 00    	jg     407154 <http_parser_execute+0x5f04>
  40714f:	e9 28 00 00 00       	jmpq   40717c <http_parser_execute+0x5f2c>
  407154:	48 bf 3c 08 41 00 00 	movabs $0x41083c,%rdi
  40715b:	00 00 00 
  40715e:	48 be c4 06 41 00 00 	movabs $0x4106c4,%rsi
  407165:	00 00 00 
  407168:	ba 5b 08 00 00       	mov    $0x85b,%edx
  40716d:	48 b9 d2 06 41 00 00 	movabs $0x4106d2,%rcx
  407174:	00 00 00 
  407177:	e8 14 9f ff ff       	callq  401090 <__assert_fail@plt>
  40717c:	e9 00 00 00 00       	jmpq   407181 <http_parser_execute+0x5f31>
  407181:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  407185:	8b 40 14             	mov    0x14(%rax),%eax
  407188:	c1 e8 18             	shr    $0x18,%eax
  40718b:	83 e0 7f             	and    $0x7f,%eax
  40718e:	83 f8 00             	cmp    $0x0,%eax
  407191:	0f 85 05 00 00 00    	jne    40719c <http_parser_execute+0x5f4c>
  407197:	e9 28 00 00 00       	jmpq   4071c4 <http_parser_execute+0x5f74>
  40719c:	48 bf a0 06 41 00 00 	movabs $0x4106a0,%rdi
  4071a3:	00 00 00 
  4071a6:	48 be c4 06 41 00 00 	movabs $0x4106c4,%rsi
  4071ad:	00 00 00 
  4071b0:	ba 5d 08 00 00       	mov    $0x85d,%edx
  4071b5:	48 b9 d2 06 41 00 00 	movabs $0x4106d2,%rcx
  4071bc:	00 00 00 
  4071bf:	e8 cc 9e ff ff       	callq  401090 <__assert_fail@plt>
  4071c4:	48 83 7d c0 00       	cmpq   $0x0,-0x40(%rbp)
  4071c9:	0f 84 f7 00 00 00    	je     4072c6 <http_parser_execute+0x6076>
  4071cf:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4071d3:	48 83 78 18 00       	cmpq   $0x0,0x18(%rax)
  4071d8:	0f 95 c0             	setne  %al
  4071db:	34 ff                	xor    $0xff,%al
  4071dd:	34 ff                	xor    $0xff,%al
  4071df:	24 01                	and    $0x1,%al
  4071e1:	0f b6 c0             	movzbl %al,%eax
  4071e4:	48 98                	cltq   
  4071e6:	48 83 f8 00          	cmp    $0x0,%rax
  4071ea:	0f 84 ce 00 00 00    	je     4072be <http_parser_execute+0x606e>
  4071f0:	8b 55 9c             	mov    -0x64(%rbp),%edx
  4071f3:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4071f7:	8b 08                	mov    (%rax),%ecx
  4071f9:	83 e2 7f             	and    $0x7f,%edx
  4071fc:	c1 e2 0a             	shl    $0xa,%edx
  4071ff:	81 e1 ff 03 fe ff    	and    $0xfffe03ff,%ecx
  407205:	09 d1                	or     %edx,%ecx
  407207:	89 08                	mov    %ecx,(%rax)
  407209:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40720d:	48 8b 40 18          	mov    0x18(%rax),%rax
  407211:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  407215:	48 8b 75 c0          	mov    -0x40(%rbp),%rsi
  407219:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  40721d:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  407221:	48 29 ca             	sub    %rcx,%rdx
  407224:	ff d0                	callq  *%rax
  407226:	89 c1                	mov    %eax,%ecx
  407228:	31 c0                	xor    %eax,%eax
  40722a:	39 c8                	cmp    %ecx,%eax
  40722c:	0f 95 c0             	setne  %al
  40722f:	34 ff                	xor    $0xff,%al
  407231:	34 ff                	xor    $0xff,%al
  407233:	24 01                	and    $0x1,%al
  407235:	0f b6 c0             	movzbl %al,%eax
  407238:	48 98                	cltq   
  40723a:	48 83 f8 00          	cmp    $0x0,%rax
  40723e:	0f 84 2a 00 00 00    	je     40726e <http_parser_execute+0x601e>
  407244:	e9 00 00 00 00       	jmpq   407249 <http_parser_execute+0x5ff9>
  407249:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  40724c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  407250:	89 48 04             	mov    %ecx,0x4(%rax)
  407253:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  407257:	8b 48 14             	mov    0x14(%rax),%ecx
  40725a:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  407260:	81 c9 00 00 00 03    	or     $0x3000000,%ecx
  407266:	89 48 14             	mov    %ecx,0x14(%rax)
  407269:	e9 00 00 00 00       	jmpq   40726e <http_parser_execute+0x601e>
  40726e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  407272:	8b 00                	mov    (%rax),%eax
  407274:	c1 e8 0a             	shr    $0xa,%eax
  407277:	83 e0 7f             	and    $0x7f,%eax
  40727a:	89 45 9c             	mov    %eax,-0x64(%rbp)
  40727d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  407281:	8b 40 14             	mov    0x14(%rax),%eax
  407284:	c1 e8 18             	shr    $0x18,%eax
  407287:	83 e0 7f             	and    $0x7f,%eax
  40728a:	83 f8 00             	cmp    $0x0,%eax
  40728d:	0f 95 c0             	setne  %al
  407290:	34 ff                	xor    $0xff,%al
  407292:	34 ff                	xor    $0xff,%al
  407294:	24 01                	and    $0x1,%al
  407296:	0f b6 c0             	movzbl %al,%eax
  407299:	48 98                	cltq   
  40729b:	48 83 f8 00          	cmp    $0x0,%rax
  40729f:	0f 84 14 00 00 00    	je     4072b9 <http_parser_execute+0x6069>
  4072a5:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  4072a9:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  4072ad:	48 29 c8             	sub    %rcx,%rax
  4072b0:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4072b4:	e9 fa 05 00 00       	jmpq   4078b3 <http_parser_execute+0x6663>
  4072b9:	e9 00 00 00 00       	jmpq   4072be <http_parser_execute+0x606e>
  4072be:	48 c7 45 c0 00 00 00 	movq   $0x0,-0x40(%rbp)
  4072c5:	00 
  4072c6:	e9 00 00 00 00       	jmpq   4072cb <http_parser_execute+0x607b>
  4072cb:	e9 00 00 00 00       	jmpq   4072d0 <http_parser_execute+0x6080>
  4072d0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4072d4:	8b 40 14             	mov    0x14(%rax),%eax
  4072d7:	c1 e8 18             	shr    $0x18,%eax
  4072da:	83 e0 7f             	and    $0x7f,%eax
  4072dd:	83 f8 00             	cmp    $0x0,%eax
  4072e0:	0f 85 05 00 00 00    	jne    4072eb <http_parser_execute+0x609b>
  4072e6:	e9 28 00 00 00       	jmpq   407313 <http_parser_execute+0x60c3>
  4072eb:	48 bf a0 06 41 00 00 	movabs $0x4106a0,%rdi
  4072f2:	00 00 00 
  4072f5:	48 be c4 06 41 00 00 	movabs $0x4106c4,%rsi
  4072fc:	00 00 00 
  4072ff:	ba 5e 08 00 00       	mov    $0x85e,%edx
  407304:	48 b9 d2 06 41 00 00 	movabs $0x4106d2,%rcx
  40730b:	00 00 00 
  40730e:	e8 7d 9d ff ff       	callq  401090 <__assert_fail@plt>
  407313:	48 83 7d b8 00       	cmpq   $0x0,-0x48(%rbp)
  407318:	0f 84 f7 00 00 00    	je     407415 <http_parser_execute+0x61c5>
  40731e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  407322:	48 83 78 20 00       	cmpq   $0x0,0x20(%rax)
  407327:	0f 95 c0             	setne  %al
  40732a:	34 ff                	xor    $0xff,%al
  40732c:	34 ff                	xor    $0xff,%al
  40732e:	24 01                	and    $0x1,%al
  407330:	0f b6 c0             	movzbl %al,%eax
  407333:	48 98                	cltq   
  407335:	48 83 f8 00          	cmp    $0x0,%rax
  407339:	0f 84 ce 00 00 00    	je     40740d <http_parser_execute+0x61bd>
  40733f:	8b 55 9c             	mov    -0x64(%rbp),%edx
  407342:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  407346:	8b 08                	mov    (%rax),%ecx
  407348:	83 e2 7f             	and    $0x7f,%edx
  40734b:	c1 e2 0a             	shl    $0xa,%edx
  40734e:	81 e1 ff 03 fe ff    	and    $0xfffe03ff,%ecx
  407354:	09 d1                	or     %edx,%ecx
  407356:	89 08                	mov    %ecx,(%rax)
  407358:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40735c:	48 8b 40 20          	mov    0x20(%rax),%rax
  407360:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  407364:	48 8b 75 b8          	mov    -0x48(%rbp),%rsi
  407368:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  40736c:	48 8b 4d b8          	mov    -0x48(%rbp),%rcx
  407370:	48 29 ca             	sub    %rcx,%rdx
  407373:	ff d0                	callq  *%rax
  407375:	89 c1                	mov    %eax,%ecx
  407377:	31 c0                	xor    %eax,%eax
  407379:	39 c8                	cmp    %ecx,%eax
  40737b:	0f 95 c0             	setne  %al
  40737e:	34 ff                	xor    $0xff,%al
  407380:	34 ff                	xor    $0xff,%al
  407382:	24 01                	and    $0x1,%al
  407384:	0f b6 c0             	movzbl %al,%eax
  407387:	48 98                	cltq   
  407389:	48 83 f8 00          	cmp    $0x0,%rax
  40738d:	0f 84 2a 00 00 00    	je     4073bd <http_parser_execute+0x616d>
  407393:	e9 00 00 00 00       	jmpq   407398 <http_parser_execute+0x6148>
  407398:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  40739b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40739f:	89 48 04             	mov    %ecx,0x4(%rax)
  4073a2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4073a6:	8b 48 14             	mov    0x14(%rax),%ecx
  4073a9:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  4073af:	81 c9 00 00 00 04    	or     $0x4000000,%ecx
  4073b5:	89 48 14             	mov    %ecx,0x14(%rax)
  4073b8:	e9 00 00 00 00       	jmpq   4073bd <http_parser_execute+0x616d>
  4073bd:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4073c1:	8b 00                	mov    (%rax),%eax
  4073c3:	c1 e8 0a             	shr    $0xa,%eax
  4073c6:	83 e0 7f             	and    $0x7f,%eax
  4073c9:	89 45 9c             	mov    %eax,-0x64(%rbp)
  4073cc:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4073d0:	8b 40 14             	mov    0x14(%rax),%eax
  4073d3:	c1 e8 18             	shr    $0x18,%eax
  4073d6:	83 e0 7f             	and    $0x7f,%eax
  4073d9:	83 f8 00             	cmp    $0x0,%eax
  4073dc:	0f 95 c0             	setne  %al
  4073df:	34 ff                	xor    $0xff,%al
  4073e1:	34 ff                	xor    $0xff,%al
  4073e3:	24 01                	and    $0x1,%al
  4073e5:	0f b6 c0             	movzbl %al,%eax
  4073e8:	48 98                	cltq   
  4073ea:	48 83 f8 00          	cmp    $0x0,%rax
  4073ee:	0f 84 14 00 00 00    	je     407408 <http_parser_execute+0x61b8>
  4073f4:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  4073f8:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  4073fc:	48 29 c8             	sub    %rcx,%rax
  4073ff:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  407403:	e9 ab 04 00 00       	jmpq   4078b3 <http_parser_execute+0x6663>
  407408:	e9 00 00 00 00       	jmpq   40740d <http_parser_execute+0x61bd>
  40740d:	48 c7 45 b8 00 00 00 	movq   $0x0,-0x48(%rbp)
  407414:	00 
  407415:	e9 00 00 00 00       	jmpq   40741a <http_parser_execute+0x61ca>
  40741a:	e9 00 00 00 00       	jmpq   40741f <http_parser_execute+0x61cf>
  40741f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  407423:	8b 40 14             	mov    0x14(%rax),%eax
  407426:	c1 e8 18             	shr    $0x18,%eax
  407429:	83 e0 7f             	and    $0x7f,%eax
  40742c:	83 f8 00             	cmp    $0x0,%eax
  40742f:	0f 85 05 00 00 00    	jne    40743a <http_parser_execute+0x61ea>
  407435:	e9 28 00 00 00       	jmpq   407462 <http_parser_execute+0x6212>
  40743a:	48 bf a0 06 41 00 00 	movabs $0x4106a0,%rdi
  407441:	00 00 00 
  407444:	48 be c4 06 41 00 00 	movabs $0x4106c4,%rsi
  40744b:	00 00 00 
  40744e:	ba 5f 08 00 00       	mov    $0x85f,%edx
  407453:	48 b9 d2 06 41 00 00 	movabs $0x4106d2,%rcx
  40745a:	00 00 00 
  40745d:	e8 2e 9c ff ff       	callq  401090 <__assert_fail@plt>
  407462:	48 83 7d b0 00       	cmpq   $0x0,-0x50(%rbp)
  407467:	0f 84 f7 00 00 00    	je     407564 <http_parser_execute+0x6314>
  40746d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  407471:	48 83 78 08 00       	cmpq   $0x0,0x8(%rax)
  407476:	0f 95 c0             	setne  %al
  407479:	34 ff                	xor    $0xff,%al
  40747b:	34 ff                	xor    $0xff,%al
  40747d:	24 01                	and    $0x1,%al
  40747f:	0f b6 c0             	movzbl %al,%eax
  407482:	48 98                	cltq   
  407484:	48 83 f8 00          	cmp    $0x0,%rax
  407488:	0f 84 ce 00 00 00    	je     40755c <http_parser_execute+0x630c>
  40748e:	8b 55 9c             	mov    -0x64(%rbp),%edx
  407491:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  407495:	8b 08                	mov    (%rax),%ecx
  407497:	83 e2 7f             	and    $0x7f,%edx
  40749a:	c1 e2 0a             	shl    $0xa,%edx
  40749d:	81 e1 ff 03 fe ff    	and    $0xfffe03ff,%ecx
  4074a3:	09 d1                	or     %edx,%ecx
  4074a5:	89 08                	mov    %ecx,(%rax)
  4074a7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4074ab:	48 8b 40 08          	mov    0x8(%rax),%rax
  4074af:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  4074b3:	48 8b 75 b0          	mov    -0x50(%rbp),%rsi
  4074b7:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  4074bb:	48 8b 4d b0          	mov    -0x50(%rbp),%rcx
  4074bf:	48 29 ca             	sub    %rcx,%rdx
  4074c2:	ff d0                	callq  *%rax
  4074c4:	89 c1                	mov    %eax,%ecx
  4074c6:	31 c0                	xor    %eax,%eax
  4074c8:	39 c8                	cmp    %ecx,%eax
  4074ca:	0f 95 c0             	setne  %al
  4074cd:	34 ff                	xor    $0xff,%al
  4074cf:	34 ff                	xor    $0xff,%al
  4074d1:	24 01                	and    $0x1,%al
  4074d3:	0f b6 c0             	movzbl %al,%eax
  4074d6:	48 98                	cltq   
  4074d8:	48 83 f8 00          	cmp    $0x0,%rax
  4074dc:	0f 84 2a 00 00 00    	je     40750c <http_parser_execute+0x62bc>
  4074e2:	e9 00 00 00 00       	jmpq   4074e7 <http_parser_execute+0x6297>
  4074e7:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  4074ea:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4074ee:	89 48 04             	mov    %ecx,0x4(%rax)
  4074f1:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4074f5:	8b 48 14             	mov    0x14(%rax),%ecx
  4074f8:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  4074fe:	81 c9 00 00 00 02    	or     $0x2000000,%ecx
  407504:	89 48 14             	mov    %ecx,0x14(%rax)
  407507:	e9 00 00 00 00       	jmpq   40750c <http_parser_execute+0x62bc>
  40750c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  407510:	8b 00                	mov    (%rax),%eax
  407512:	c1 e8 0a             	shr    $0xa,%eax
  407515:	83 e0 7f             	and    $0x7f,%eax
  407518:	89 45 9c             	mov    %eax,-0x64(%rbp)
  40751b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40751f:	8b 40 14             	mov    0x14(%rax),%eax
  407522:	c1 e8 18             	shr    $0x18,%eax
  407525:	83 e0 7f             	and    $0x7f,%eax
  407528:	83 f8 00             	cmp    $0x0,%eax
  40752b:	0f 95 c0             	setne  %al
  40752e:	34 ff                	xor    $0xff,%al
  407530:	34 ff                	xor    $0xff,%al
  407532:	24 01                	and    $0x1,%al
  407534:	0f b6 c0             	movzbl %al,%eax
  407537:	48 98                	cltq   
  407539:	48 83 f8 00          	cmp    $0x0,%rax
  40753d:	0f 84 14 00 00 00    	je     407557 <http_parser_execute+0x6307>
  407543:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  407547:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  40754b:	48 29 c8             	sub    %rcx,%rax
  40754e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  407552:	e9 5c 03 00 00       	jmpq   4078b3 <http_parser_execute+0x6663>
  407557:	e9 00 00 00 00       	jmpq   40755c <http_parser_execute+0x630c>
  40755c:	48 c7 45 b0 00 00 00 	movq   $0x0,-0x50(%rbp)
  407563:	00 
  407564:	e9 00 00 00 00       	jmpq   407569 <http_parser_execute+0x6319>
  407569:	e9 00 00 00 00       	jmpq   40756e <http_parser_execute+0x631e>
  40756e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  407572:	8b 40 14             	mov    0x14(%rax),%eax
  407575:	c1 e8 18             	shr    $0x18,%eax
  407578:	83 e0 7f             	and    $0x7f,%eax
  40757b:	83 f8 00             	cmp    $0x0,%eax
  40757e:	0f 85 05 00 00 00    	jne    407589 <http_parser_execute+0x6339>
  407584:	e9 28 00 00 00       	jmpq   4075b1 <http_parser_execute+0x6361>
  407589:	48 bf a0 06 41 00 00 	movabs $0x4106a0,%rdi
  407590:	00 00 00 
  407593:	48 be c4 06 41 00 00 	movabs $0x4106c4,%rsi
  40759a:	00 00 00 
  40759d:	ba 60 08 00 00       	mov    $0x860,%edx
  4075a2:	48 b9 d2 06 41 00 00 	movabs $0x4106d2,%rcx
  4075a9:	00 00 00 
  4075ac:	e8 df 9a ff ff       	callq  401090 <__assert_fail@plt>
  4075b1:	48 83 7d a8 00       	cmpq   $0x0,-0x58(%rbp)
  4075b6:	0f 84 f7 00 00 00    	je     4076b3 <http_parser_execute+0x6463>
  4075bc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4075c0:	48 83 78 30 00       	cmpq   $0x0,0x30(%rax)
  4075c5:	0f 95 c0             	setne  %al
  4075c8:	34 ff                	xor    $0xff,%al
  4075ca:	34 ff                	xor    $0xff,%al
  4075cc:	24 01                	and    $0x1,%al
  4075ce:	0f b6 c0             	movzbl %al,%eax
  4075d1:	48 98                	cltq   
  4075d3:	48 83 f8 00          	cmp    $0x0,%rax
  4075d7:	0f 84 ce 00 00 00    	je     4076ab <http_parser_execute+0x645b>
  4075dd:	8b 55 9c             	mov    -0x64(%rbp),%edx
  4075e0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4075e4:	8b 08                	mov    (%rax),%ecx
  4075e6:	83 e2 7f             	and    $0x7f,%edx
  4075e9:	c1 e2 0a             	shl    $0xa,%edx
  4075ec:	81 e1 ff 03 fe ff    	and    $0xfffe03ff,%ecx
  4075f2:	09 d1                	or     %edx,%ecx
  4075f4:	89 08                	mov    %ecx,(%rax)
  4075f6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4075fa:	48 8b 40 30          	mov    0x30(%rax),%rax
  4075fe:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  407602:	48 8b 75 a8          	mov    -0x58(%rbp),%rsi
  407606:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  40760a:	48 8b 4d a8          	mov    -0x58(%rbp),%rcx
  40760e:	48 29 ca             	sub    %rcx,%rdx
  407611:	ff d0                	callq  *%rax
  407613:	89 c1                	mov    %eax,%ecx
  407615:	31 c0                	xor    %eax,%eax
  407617:	39 c8                	cmp    %ecx,%eax
  407619:	0f 95 c0             	setne  %al
  40761c:	34 ff                	xor    $0xff,%al
  40761e:	34 ff                	xor    $0xff,%al
  407620:	24 01                	and    $0x1,%al
  407622:	0f b6 c0             	movzbl %al,%eax
  407625:	48 98                	cltq   
  407627:	48 83 f8 00          	cmp    $0x0,%rax
  40762b:	0f 84 2a 00 00 00    	je     40765b <http_parser_execute+0x640b>
  407631:	e9 00 00 00 00       	jmpq   407636 <http_parser_execute+0x63e6>
  407636:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  407639:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40763d:	89 48 04             	mov    %ecx,0x4(%rax)
  407640:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  407644:	8b 48 14             	mov    0x14(%rax),%ecx
  407647:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  40764d:	81 c9 00 00 00 06    	or     $0x6000000,%ecx
  407653:	89 48 14             	mov    %ecx,0x14(%rax)
  407656:	e9 00 00 00 00       	jmpq   40765b <http_parser_execute+0x640b>
  40765b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40765f:	8b 00                	mov    (%rax),%eax
  407661:	c1 e8 0a             	shr    $0xa,%eax
  407664:	83 e0 7f             	and    $0x7f,%eax
  407667:	89 45 9c             	mov    %eax,-0x64(%rbp)
  40766a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40766e:	8b 40 14             	mov    0x14(%rax),%eax
  407671:	c1 e8 18             	shr    $0x18,%eax
  407674:	83 e0 7f             	and    $0x7f,%eax
  407677:	83 f8 00             	cmp    $0x0,%eax
  40767a:	0f 95 c0             	setne  %al
  40767d:	34 ff                	xor    $0xff,%al
  40767f:	34 ff                	xor    $0xff,%al
  407681:	24 01                	and    $0x1,%al
  407683:	0f b6 c0             	movzbl %al,%eax
  407686:	48 98                	cltq   
  407688:	48 83 f8 00          	cmp    $0x0,%rax
  40768c:	0f 84 14 00 00 00    	je     4076a6 <http_parser_execute+0x6456>
  407692:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  407696:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  40769a:	48 29 c8             	sub    %rcx,%rax
  40769d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4076a1:	e9 0d 02 00 00       	jmpq   4078b3 <http_parser_execute+0x6663>
  4076a6:	e9 00 00 00 00       	jmpq   4076ab <http_parser_execute+0x645b>
  4076ab:	48 c7 45 a8 00 00 00 	movq   $0x0,-0x58(%rbp)
  4076b2:	00 
  4076b3:	e9 00 00 00 00       	jmpq   4076b8 <http_parser_execute+0x6468>
  4076b8:	e9 00 00 00 00       	jmpq   4076bd <http_parser_execute+0x646d>
  4076bd:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4076c1:	8b 40 14             	mov    0x14(%rax),%eax
  4076c4:	c1 e8 18             	shr    $0x18,%eax
  4076c7:	83 e0 7f             	and    $0x7f,%eax
  4076ca:	83 f8 00             	cmp    $0x0,%eax
  4076cd:	0f 85 05 00 00 00    	jne    4076d8 <http_parser_execute+0x6488>
  4076d3:	e9 28 00 00 00       	jmpq   407700 <http_parser_execute+0x64b0>
  4076d8:	48 bf a0 06 41 00 00 	movabs $0x4106a0,%rdi
  4076df:	00 00 00 
  4076e2:	48 be c4 06 41 00 00 	movabs $0x4106c4,%rsi
  4076e9:	00 00 00 
  4076ec:	ba 61 08 00 00       	mov    $0x861,%edx
  4076f1:	48 b9 d2 06 41 00 00 	movabs $0x4106d2,%rcx
  4076f8:	00 00 00 
  4076fb:	e8 90 99 ff ff       	callq  401090 <__assert_fail@plt>
  407700:	48 83 7d a0 00       	cmpq   $0x0,-0x60(%rbp)
  407705:	0f 84 f7 00 00 00    	je     407802 <http_parser_execute+0x65b2>
  40770b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40770f:	48 83 78 10 00       	cmpq   $0x0,0x10(%rax)
  407714:	0f 95 c0             	setne  %al
  407717:	34 ff                	xor    $0xff,%al
  407719:	34 ff                	xor    $0xff,%al
  40771b:	24 01                	and    $0x1,%al
  40771d:	0f b6 c0             	movzbl %al,%eax
  407720:	48 98                	cltq   
  407722:	48 83 f8 00          	cmp    $0x0,%rax
  407726:	0f 84 ce 00 00 00    	je     4077fa <http_parser_execute+0x65aa>
  40772c:	8b 55 9c             	mov    -0x64(%rbp),%edx
  40772f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  407733:	8b 08                	mov    (%rax),%ecx
  407735:	83 e2 7f             	and    $0x7f,%edx
  407738:	c1 e2 0a             	shl    $0xa,%edx
  40773b:	81 e1 ff 03 fe ff    	and    $0xfffe03ff,%ecx
  407741:	09 d1                	or     %edx,%ecx
  407743:	89 08                	mov    %ecx,(%rax)
  407745:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  407749:	48 8b 40 10          	mov    0x10(%rax),%rax
  40774d:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  407751:	48 8b 75 a0          	mov    -0x60(%rbp),%rsi
  407755:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  407759:	48 8b 4d a0          	mov    -0x60(%rbp),%rcx
  40775d:	48 29 ca             	sub    %rcx,%rdx
  407760:	ff d0                	callq  *%rax
  407762:	89 c1                	mov    %eax,%ecx
  407764:	31 c0                	xor    %eax,%eax
  407766:	39 c8                	cmp    %ecx,%eax
  407768:	0f 95 c0             	setne  %al
  40776b:	34 ff                	xor    $0xff,%al
  40776d:	34 ff                	xor    $0xff,%al
  40776f:	24 01                	and    $0x1,%al
  407771:	0f b6 c0             	movzbl %al,%eax
  407774:	48 98                	cltq   
  407776:	48 83 f8 00          	cmp    $0x0,%rax
  40777a:	0f 84 2a 00 00 00    	je     4077aa <http_parser_execute+0x655a>
  407780:	e9 00 00 00 00       	jmpq   407785 <http_parser_execute+0x6535>
  407785:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  407788:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40778c:	89 48 04             	mov    %ecx,0x4(%rax)
  40778f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  407793:	8b 48 14             	mov    0x14(%rax),%ecx
  407796:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  40779c:	81 c9 00 00 00 08    	or     $0x8000000,%ecx
  4077a2:	89 48 14             	mov    %ecx,0x14(%rax)
  4077a5:	e9 00 00 00 00       	jmpq   4077aa <http_parser_execute+0x655a>
  4077aa:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4077ae:	8b 00                	mov    (%rax),%eax
  4077b0:	c1 e8 0a             	shr    $0xa,%eax
  4077b3:	83 e0 7f             	and    $0x7f,%eax
  4077b6:	89 45 9c             	mov    %eax,-0x64(%rbp)
  4077b9:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4077bd:	8b 40 14             	mov    0x14(%rax),%eax
  4077c0:	c1 e8 18             	shr    $0x18,%eax
  4077c3:	83 e0 7f             	and    $0x7f,%eax
  4077c6:	83 f8 00             	cmp    $0x0,%eax
  4077c9:	0f 95 c0             	setne  %al
  4077cc:	34 ff                	xor    $0xff,%al
  4077ce:	34 ff                	xor    $0xff,%al
  4077d0:	24 01                	and    $0x1,%al
  4077d2:	0f b6 c0             	movzbl %al,%eax
  4077d5:	48 98                	cltq   
  4077d7:	48 83 f8 00          	cmp    $0x0,%rax
  4077db:	0f 84 14 00 00 00    	je     4077f5 <http_parser_execute+0x65a5>
  4077e1:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  4077e5:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  4077e9:	48 29 c8             	sub    %rcx,%rax
  4077ec:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4077f0:	e9 be 00 00 00       	jmpq   4078b3 <http_parser_execute+0x6663>
  4077f5:	e9 00 00 00 00       	jmpq   4077fa <http_parser_execute+0x65aa>
  4077fa:	48 c7 45 a0 00 00 00 	movq   $0x0,-0x60(%rbp)
  407801:	00 
  407802:	e9 00 00 00 00       	jmpq   407807 <http_parser_execute+0x65b7>
  407807:	e9 00 00 00 00       	jmpq   40780c <http_parser_execute+0x65bc>
  40780c:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  40780f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  407813:	89 48 04             	mov    %ecx,0x4(%rax)
  407816:	8b 55 9c             	mov    -0x64(%rbp),%edx
  407819:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40781d:	8b 08                	mov    (%rax),%ecx
  40781f:	83 e2 7f             	and    $0x7f,%edx
  407822:	c1 e2 0a             	shl    $0xa,%edx
  407825:	81 e1 ff 03 fe ff    	and    $0xfffe03ff,%ecx
  40782b:	09 d1                	or     %edx,%ecx
  40782d:	89 08                	mov    %ecx,(%rax)
  40782f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  407833:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  407837:	e9 77 00 00 00       	jmpq   4078b3 <http_parser_execute+0x6663>
  40783c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  407840:	8b 40 14             	mov    0x14(%rax),%eax
  407843:	c1 e8 18             	shr    $0x18,%eax
  407846:	83 e0 7f             	and    $0x7f,%eax
  407849:	83 f8 00             	cmp    $0x0,%eax
  40784c:	0f 85 2a 00 00 00    	jne    40787c <http_parser_execute+0x662c>
  407852:	e9 00 00 00 00       	jmpq   407857 <http_parser_execute+0x6607>
  407857:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  40785a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40785e:	89 48 04             	mov    %ecx,0x4(%rax)
  407861:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  407865:	8b 48 14             	mov    0x14(%rax),%ecx
  407868:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  40786e:	81 c9 00 00 00 20    	or     $0x20000000,%ecx
  407874:	89 48 14             	mov    %ecx,0x14(%rax)
  407877:	e9 00 00 00 00       	jmpq   40787c <http_parser_execute+0x662c>
  40787c:	e9 00 00 00 00       	jmpq   407881 <http_parser_execute+0x6631>
  407881:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  407884:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  407888:	89 48 04             	mov    %ecx,0x4(%rax)
  40788b:	8b 55 9c             	mov    -0x64(%rbp),%edx
  40788e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  407892:	8b 08                	mov    (%rax),%ecx
  407894:	83 e2 7f             	and    $0x7f,%edx
  407897:	c1 e2 0a             	shl    $0xa,%edx
  40789a:	81 e1 ff 03 fe ff    	and    $0xfffe03ff,%ecx
  4078a0:	09 d1                	or     %edx,%ecx
  4078a2:	89 08                	mov    %ecx,(%rax)
  4078a4:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  4078a8:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  4078ac:	48 29 c8             	sub    %rcx,%rax
  4078af:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4078b3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4078b7:	48 81 c4 d0 01 00 00 	add    $0x1d0,%rsp
  4078be:	5d                   	pop    %rbp
  4078bf:	c3                   	retq   

00000000004078c0 <parse_url_char>:
  4078c0:	55                   	push   %rbp
  4078c1:	48 89 e5             	mov    %rsp,%rbp
  4078c4:	40 88 f0             	mov    %sil,%al
  4078c7:	89 7d f8             	mov    %edi,-0x8(%rbp)
  4078ca:	88 45 f7             	mov    %al,-0x9(%rbp)
  4078cd:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  4078d1:	83 f8 20             	cmp    $0x20,%eax
  4078d4:	0f 84 1a 00 00 00    	je     4078f4 <parse_url_char+0x34>
  4078da:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  4078de:	83 f8 0d             	cmp    $0xd,%eax
  4078e1:	0f 84 0d 00 00 00    	je     4078f4 <parse_url_char+0x34>
  4078e7:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  4078eb:	83 f8 0a             	cmp    $0xa,%eax
  4078ee:	0f 85 0c 00 00 00    	jne    407900 <parse_url_char+0x40>
  4078f4:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
  4078fb:	e9 ca 04 00 00       	jmpq   407dca <parse_url_char+0x50a>
  407900:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  407904:	83 f8 09             	cmp    $0x9,%eax
  407907:	0f 84 0d 00 00 00    	je     40791a <parse_url_char+0x5a>
  40790d:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  407911:	83 f8 0c             	cmp    $0xc,%eax
  407914:	0f 85 0c 00 00 00    	jne    407926 <parse_url_char+0x66>
  40791a:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
  407921:	e9 a4 04 00 00       	jmpq   407dca <parse_url_char+0x50a>
  407926:	8b 45 f8             	mov    -0x8(%rbp),%eax
  407929:	83 c0 ec             	add    $0xffffffec,%eax
  40792c:	89 c1                	mov    %eax,%ecx
  40792e:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
  407932:	83 e8 0b             	sub    $0xb,%eax
  407935:	0f 87 83 04 00 00    	ja     407dbe <parse_url_char+0x4fe>
  40793b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40793f:	48 8b 04 c5 98 f5 40 	mov    0x40f598(,%rax,8),%rax
  407946:	00 
  407947:	ff e0                	jmpq   *%rax
  407949:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  40794d:	83 f8 2f             	cmp    $0x2f,%eax
  407950:	0f 84 0d 00 00 00    	je     407963 <parse_url_char+0xa3>
  407956:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  40795a:	83 f8 2a             	cmp    $0x2a,%eax
  40795d:	0f 85 0c 00 00 00    	jne    40796f <parse_url_char+0xaf>
  407963:	c7 45 fc 1b 00 00 00 	movl   $0x1b,-0x4(%rbp)
  40796a:	e9 5b 04 00 00       	jmpq   407dca <parse_url_char+0x50a>
  40796f:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  407973:	83 c8 20             	or     $0x20,%eax
  407976:	0f b6 c0             	movzbl %al,%eax
  407979:	83 f8 61             	cmp    $0x61,%eax
  40797c:	0f 8c 1f 00 00 00    	jl     4079a1 <parse_url_char+0xe1>
  407982:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  407986:	83 c8 20             	or     $0x20,%eax
  407989:	0f b6 c0             	movzbl %al,%eax
  40798c:	83 f8 7a             	cmp    $0x7a,%eax
  40798f:	0f 8f 0c 00 00 00    	jg     4079a1 <parse_url_char+0xe1>
  407995:	c7 45 fc 15 00 00 00 	movl   $0x15,-0x4(%rbp)
  40799c:	e9 29 04 00 00       	jmpq   407dca <parse_url_char+0x50a>
  4079a1:	e9 1d 04 00 00       	jmpq   407dc3 <parse_url_char+0x503>
  4079a6:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  4079aa:	83 c8 20             	or     $0x20,%eax
  4079ad:	0f b6 c0             	movzbl %al,%eax
  4079b0:	83 f8 61             	cmp    $0x61,%eax
  4079b3:	0f 8c 1e 00 00 00    	jl     4079d7 <parse_url_char+0x117>
  4079b9:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  4079bd:	83 c8 20             	or     $0x20,%eax
  4079c0:	0f b6 c0             	movzbl %al,%eax
  4079c3:	83 f8 7a             	cmp    $0x7a,%eax
  4079c6:	0f 8f 0b 00 00 00    	jg     4079d7 <parse_url_char+0x117>
  4079cc:	8b 45 f8             	mov    -0x8(%rbp),%eax
  4079cf:	89 45 fc             	mov    %eax,-0x4(%rbp)
  4079d2:	e9 f3 03 00 00       	jmpq   407dca <parse_url_char+0x50a>
  4079d7:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  4079db:	83 f8 3a             	cmp    $0x3a,%eax
  4079de:	0f 85 0c 00 00 00    	jne    4079f0 <parse_url_char+0x130>
  4079e4:	c7 45 fc 16 00 00 00 	movl   $0x16,-0x4(%rbp)
  4079eb:	e9 da 03 00 00       	jmpq   407dca <parse_url_char+0x50a>
  4079f0:	e9 ce 03 00 00       	jmpq   407dc3 <parse_url_char+0x503>
  4079f5:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  4079f9:	83 f8 2f             	cmp    $0x2f,%eax
  4079fc:	0f 85 0c 00 00 00    	jne    407a0e <parse_url_char+0x14e>
  407a02:	c7 45 fc 17 00 00 00 	movl   $0x17,-0x4(%rbp)
  407a09:	e9 bc 03 00 00       	jmpq   407dca <parse_url_char+0x50a>
  407a0e:	e9 b0 03 00 00       	jmpq   407dc3 <parse_url_char+0x503>
  407a13:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  407a17:	83 f8 2f             	cmp    $0x2f,%eax
  407a1a:	0f 85 0c 00 00 00    	jne    407a2c <parse_url_char+0x16c>
  407a20:	c7 45 fc 18 00 00 00 	movl   $0x18,-0x4(%rbp)
  407a27:	e9 9e 03 00 00       	jmpq   407dca <parse_url_char+0x50a>
  407a2c:	e9 92 03 00 00       	jmpq   407dc3 <parse_url_char+0x503>
  407a31:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  407a35:	83 f8 40             	cmp    $0x40,%eax
  407a38:	0f 85 0c 00 00 00    	jne    407a4a <parse_url_char+0x18a>
  407a3e:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
  407a45:	e9 80 03 00 00       	jmpq   407dca <parse_url_char+0x50a>
  407a4a:	e9 00 00 00 00       	jmpq   407a4f <parse_url_char+0x18f>
  407a4f:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  407a53:	83 f8 2f             	cmp    $0x2f,%eax
  407a56:	0f 85 0c 00 00 00    	jne    407a68 <parse_url_char+0x1a8>
  407a5c:	c7 45 fc 1b 00 00 00 	movl   $0x1b,-0x4(%rbp)
  407a63:	e9 62 03 00 00       	jmpq   407dca <parse_url_char+0x50a>
  407a68:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  407a6c:	83 f8 3f             	cmp    $0x3f,%eax
  407a6f:	0f 85 0c 00 00 00    	jne    407a81 <parse_url_char+0x1c1>
  407a75:	c7 45 fc 1c 00 00 00 	movl   $0x1c,-0x4(%rbp)
  407a7c:	e9 49 03 00 00       	jmpq   407dca <parse_url_char+0x50a>
  407a81:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  407a85:	83 f8 40             	cmp    $0x40,%eax
  407a88:	0f 85 0c 00 00 00    	jne    407a9a <parse_url_char+0x1da>
  407a8e:	c7 45 fc 1a 00 00 00 	movl   $0x1a,-0x4(%rbp)
  407a95:	e9 30 03 00 00       	jmpq   407dca <parse_url_char+0x50a>
  407a9a:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  407a9e:	83 c8 20             	or     $0x20,%eax
  407aa1:	0f b6 c0             	movzbl %al,%eax
  407aa4:	83 f8 61             	cmp    $0x61,%eax
  407aa7:	0f 8c 13 00 00 00    	jl     407ac0 <parse_url_char+0x200>
  407aad:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  407ab1:	83 c8 20             	or     $0x20,%eax
  407ab4:	0f b6 c0             	movzbl %al,%eax
  407ab7:	83 f8 7a             	cmp    $0x7a,%eax
  407aba:	0f 8e 11 01 00 00    	jle    407bd1 <parse_url_char+0x311>
  407ac0:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  407ac4:	83 f8 30             	cmp    $0x30,%eax
  407ac7:	0f 8c 0d 00 00 00    	jl     407ada <parse_url_char+0x21a>
  407acd:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  407ad1:	83 f8 39             	cmp    $0x39,%eax
  407ad4:	0f 8e f7 00 00 00    	jle    407bd1 <parse_url_char+0x311>
  407ada:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  407ade:	83 f8 2d             	cmp    $0x2d,%eax
  407ae1:	0f 84 ea 00 00 00    	je     407bd1 <parse_url_char+0x311>
  407ae7:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  407aeb:	83 f8 5f             	cmp    $0x5f,%eax
  407aee:	0f 84 dd 00 00 00    	je     407bd1 <parse_url_char+0x311>
  407af4:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  407af8:	83 f8 2e             	cmp    $0x2e,%eax
  407afb:	0f 84 d0 00 00 00    	je     407bd1 <parse_url_char+0x311>
  407b01:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  407b05:	83 f8 21             	cmp    $0x21,%eax
  407b08:	0f 84 c3 00 00 00    	je     407bd1 <parse_url_char+0x311>
  407b0e:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  407b12:	83 f8 7e             	cmp    $0x7e,%eax
  407b15:	0f 84 b6 00 00 00    	je     407bd1 <parse_url_char+0x311>
  407b1b:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  407b1f:	83 f8 2a             	cmp    $0x2a,%eax
  407b22:	0f 84 a9 00 00 00    	je     407bd1 <parse_url_char+0x311>
  407b28:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  407b2c:	83 f8 27             	cmp    $0x27,%eax
  407b2f:	0f 84 9c 00 00 00    	je     407bd1 <parse_url_char+0x311>
  407b35:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  407b39:	83 f8 28             	cmp    $0x28,%eax
  407b3c:	0f 84 8f 00 00 00    	je     407bd1 <parse_url_char+0x311>
  407b42:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  407b46:	83 f8 29             	cmp    $0x29,%eax
  407b49:	0f 84 82 00 00 00    	je     407bd1 <parse_url_char+0x311>
  407b4f:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  407b53:	83 f8 25             	cmp    $0x25,%eax
  407b56:	0f 84 75 00 00 00    	je     407bd1 <parse_url_char+0x311>
  407b5c:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  407b60:	83 f8 3b             	cmp    $0x3b,%eax
  407b63:	0f 84 68 00 00 00    	je     407bd1 <parse_url_char+0x311>
  407b69:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  407b6d:	83 f8 3a             	cmp    $0x3a,%eax
  407b70:	0f 84 5b 00 00 00    	je     407bd1 <parse_url_char+0x311>
  407b76:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  407b7a:	83 f8 26             	cmp    $0x26,%eax
  407b7d:	0f 84 4e 00 00 00    	je     407bd1 <parse_url_char+0x311>
  407b83:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  407b87:	83 f8 3d             	cmp    $0x3d,%eax
  407b8a:	0f 84 41 00 00 00    	je     407bd1 <parse_url_char+0x311>
  407b90:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  407b94:	83 f8 2b             	cmp    $0x2b,%eax
  407b97:	0f 84 34 00 00 00    	je     407bd1 <parse_url_char+0x311>
  407b9d:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  407ba1:	83 f8 24             	cmp    $0x24,%eax
  407ba4:	0f 84 27 00 00 00    	je     407bd1 <parse_url_char+0x311>
  407baa:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  407bae:	83 f8 2c             	cmp    $0x2c,%eax
  407bb1:	0f 84 1a 00 00 00    	je     407bd1 <parse_url_char+0x311>
  407bb7:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  407bbb:	83 f8 5b             	cmp    $0x5b,%eax
  407bbe:	0f 84 0d 00 00 00    	je     407bd1 <parse_url_char+0x311>
  407bc4:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  407bc8:	83 f8 5d             	cmp    $0x5d,%eax
  407bcb:	0f 85 0c 00 00 00    	jne    407bdd <parse_url_char+0x31d>
  407bd1:	c7 45 fc 19 00 00 00 	movl   $0x19,-0x4(%rbp)
  407bd8:	e9 ed 01 00 00       	jmpq   407dca <parse_url_char+0x50a>
  407bdd:	e9 e1 01 00 00       	jmpq   407dc3 <parse_url_char+0x503>
  407be2:	0f b6 45 f7          	movzbl -0x9(%rbp),%eax
  407be6:	c1 e8 03             	shr    $0x3,%eax
  407be9:	89 c0                	mov    %eax,%eax
  407beb:	0f b6 04 05 80 04 41 	movzbl 0x410480(,%rax,1),%eax
  407bf2:	00 
  407bf3:	0f b6 4d f7          	movzbl -0x9(%rbp),%ecx
  407bf7:	83 e1 07             	and    $0x7,%ecx
  407bfa:	ba 01 00 00 00       	mov    $0x1,%edx
  407bff:	d3 e2                	shl    %cl,%edx
  407c01:	89 d1                	mov    %edx,%ecx
  407c03:	21 c8                	and    %ecx,%eax
  407c05:	83 f8 00             	cmp    $0x0,%eax
  407c08:	0f 84 0b 00 00 00    	je     407c19 <parse_url_char+0x359>
  407c0e:	8b 45 f8             	mov    -0x8(%rbp),%eax
  407c11:	89 45 fc             	mov    %eax,-0x4(%rbp)
  407c14:	e9 b1 01 00 00       	jmpq   407dca <parse_url_char+0x50a>
  407c19:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  407c1d:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  407c20:	83 e8 23             	sub    $0x23,%eax
  407c23:	0f 84 22 00 00 00    	je     407c4b <parse_url_char+0x38b>
  407c29:	e9 00 00 00 00       	jmpq   407c2e <parse_url_char+0x36e>
  407c2e:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  407c31:	83 e8 3f             	sub    $0x3f,%eax
  407c34:	0f 85 1d 00 00 00    	jne    407c57 <parse_url_char+0x397>
  407c3a:	e9 00 00 00 00       	jmpq   407c3f <parse_url_char+0x37f>
  407c3f:	c7 45 fc 1c 00 00 00 	movl   $0x1c,-0x4(%rbp)
  407c46:	e9 7f 01 00 00       	jmpq   407dca <parse_url_char+0x50a>
  407c4b:	c7 45 fc 1e 00 00 00 	movl   $0x1e,-0x4(%rbp)
  407c52:	e9 73 01 00 00       	jmpq   407dca <parse_url_char+0x50a>
  407c57:	e9 67 01 00 00       	jmpq   407dc3 <parse_url_char+0x503>
  407c5c:	0f b6 45 f7          	movzbl -0x9(%rbp),%eax
  407c60:	c1 e8 03             	shr    $0x3,%eax
  407c63:	89 c0                	mov    %eax,%eax
  407c65:	0f b6 04 05 80 04 41 	movzbl 0x410480(,%rax,1),%eax
  407c6c:	00 
  407c6d:	0f b6 4d f7          	movzbl -0x9(%rbp),%ecx
  407c71:	83 e1 07             	and    $0x7,%ecx
  407c74:	ba 01 00 00 00       	mov    $0x1,%edx
  407c79:	d3 e2                	shl    %cl,%edx
  407c7b:	89 d1                	mov    %edx,%ecx
  407c7d:	21 c8                	and    %ecx,%eax
  407c7f:	83 f8 00             	cmp    $0x0,%eax
  407c82:	0f 84 0c 00 00 00    	je     407c94 <parse_url_char+0x3d4>
  407c88:	c7 45 fc 1d 00 00 00 	movl   $0x1d,-0x4(%rbp)
  407c8f:	e9 36 01 00 00       	jmpq   407dca <parse_url_char+0x50a>
  407c94:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  407c98:	89 45 e0             	mov    %eax,-0x20(%rbp)
  407c9b:	83 e8 23             	sub    $0x23,%eax
  407c9e:	0f 84 22 00 00 00    	je     407cc6 <parse_url_char+0x406>
  407ca4:	e9 00 00 00 00       	jmpq   407ca9 <parse_url_char+0x3e9>
  407ca9:	8b 45 e0             	mov    -0x20(%rbp),%eax
  407cac:	83 e8 3f             	sub    $0x3f,%eax
  407caf:	0f 85 1d 00 00 00    	jne    407cd2 <parse_url_char+0x412>
  407cb5:	e9 00 00 00 00       	jmpq   407cba <parse_url_char+0x3fa>
  407cba:	c7 45 fc 1d 00 00 00 	movl   $0x1d,-0x4(%rbp)
  407cc1:	e9 04 01 00 00       	jmpq   407dca <parse_url_char+0x50a>
  407cc6:	c7 45 fc 1e 00 00 00 	movl   $0x1e,-0x4(%rbp)
  407ccd:	e9 f8 00 00 00       	jmpq   407dca <parse_url_char+0x50a>
  407cd2:	e9 ec 00 00 00       	jmpq   407dc3 <parse_url_char+0x503>
  407cd7:	0f b6 45 f7          	movzbl -0x9(%rbp),%eax
  407cdb:	c1 e8 03             	shr    $0x3,%eax
  407cde:	89 c0                	mov    %eax,%eax
  407ce0:	0f b6 04 05 80 04 41 	movzbl 0x410480(,%rax,1),%eax
  407ce7:	00 
  407ce8:	0f b6 4d f7          	movzbl -0x9(%rbp),%ecx
  407cec:	83 e1 07             	and    $0x7,%ecx
  407cef:	ba 01 00 00 00       	mov    $0x1,%edx
  407cf4:	d3 e2                	shl    %cl,%edx
  407cf6:	89 d1                	mov    %edx,%ecx
  407cf8:	21 c8                	and    %ecx,%eax
  407cfa:	83 f8 00             	cmp    $0x0,%eax
  407cfd:	0f 84 0c 00 00 00    	je     407d0f <parse_url_char+0x44f>
  407d03:	c7 45 fc 1f 00 00 00 	movl   $0x1f,-0x4(%rbp)
  407d0a:	e9 bb 00 00 00       	jmpq   407dca <parse_url_char+0x50a>
  407d0f:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  407d13:	89 45 dc             	mov    %eax,-0x24(%rbp)
  407d16:	83 e8 23             	sub    $0x23,%eax
  407d19:	0f 84 22 00 00 00    	je     407d41 <parse_url_char+0x481>
  407d1f:	e9 00 00 00 00       	jmpq   407d24 <parse_url_char+0x464>
  407d24:	8b 45 dc             	mov    -0x24(%rbp),%eax
  407d27:	83 e8 3f             	sub    $0x3f,%eax
  407d2a:	0f 85 1c 00 00 00    	jne    407d4c <parse_url_char+0x48c>
  407d30:	e9 00 00 00 00       	jmpq   407d35 <parse_url_char+0x475>
  407d35:	c7 45 fc 1f 00 00 00 	movl   $0x1f,-0x4(%rbp)
  407d3c:	e9 89 00 00 00       	jmpq   407dca <parse_url_char+0x50a>
  407d41:	8b 45 f8             	mov    -0x8(%rbp),%eax
  407d44:	89 45 fc             	mov    %eax,-0x4(%rbp)
  407d47:	e9 7e 00 00 00       	jmpq   407dca <parse_url_char+0x50a>
  407d4c:	e9 72 00 00 00       	jmpq   407dc3 <parse_url_char+0x503>
  407d51:	0f b6 45 f7          	movzbl -0x9(%rbp),%eax
  407d55:	c1 e8 03             	shr    $0x3,%eax
  407d58:	89 c0                	mov    %eax,%eax
  407d5a:	0f b6 04 05 80 04 41 	movzbl 0x410480(,%rax,1),%eax
  407d61:	00 
  407d62:	0f b6 4d f7          	movzbl -0x9(%rbp),%ecx
  407d66:	83 e1 07             	and    $0x7,%ecx
  407d69:	ba 01 00 00 00       	mov    $0x1,%edx
  407d6e:	d3 e2                	shl    %cl,%edx
  407d70:	89 d1                	mov    %edx,%ecx
  407d72:	21 c8                	and    %ecx,%eax
  407d74:	83 f8 00             	cmp    $0x0,%eax
  407d77:	0f 84 0b 00 00 00    	je     407d88 <parse_url_char+0x4c8>
  407d7d:	8b 45 f8             	mov    -0x8(%rbp),%eax
  407d80:	89 45 fc             	mov    %eax,-0x4(%rbp)
  407d83:	e9 42 00 00 00       	jmpq   407dca <parse_url_char+0x50a>
  407d88:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  407d8c:	89 45 d8             	mov    %eax,-0x28(%rbp)
  407d8f:	83 e8 23             	sub    $0x23,%eax
  407d92:	0f 84 16 00 00 00    	je     407dae <parse_url_char+0x4ee>
  407d98:	e9 00 00 00 00       	jmpq   407d9d <parse_url_char+0x4dd>
  407d9d:	8b 45 d8             	mov    -0x28(%rbp),%eax
  407da0:	83 e8 3f             	sub    $0x3f,%eax
  407da3:	0f 85 10 00 00 00    	jne    407db9 <parse_url_char+0x4f9>
  407da9:	e9 00 00 00 00       	jmpq   407dae <parse_url_char+0x4ee>
  407dae:	8b 45 f8             	mov    -0x8(%rbp),%eax
  407db1:	89 45 fc             	mov    %eax,-0x4(%rbp)
  407db4:	e9 11 00 00 00       	jmpq   407dca <parse_url_char+0x50a>
  407db9:	e9 05 00 00 00       	jmpq   407dc3 <parse_url_char+0x503>
  407dbe:	e9 00 00 00 00       	jmpq   407dc3 <parse_url_char+0x503>
  407dc3:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
  407dca:	8b 45 fc             	mov    -0x4(%rbp),%eax
  407dcd:	5d                   	pop    %rbp
  407dce:	c3                   	retq   
  407dcf:	90                   	nop

0000000000407dd0 <http_should_keep_alive>:
  407dd0:	55                   	push   %rbp
  407dd1:	48 89 e5             	mov    %rsp,%rbp
  407dd4:	48 83 ec 10          	sub    $0x10,%rsp
  407dd8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
  407ddc:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  407de0:	0f b7 40 10          	movzwl 0x10(%rax),%eax
  407de4:	83 f8 00             	cmp    $0x0,%eax
  407de7:	0f 8e 3c 00 00 00    	jle    407e29 <http_should_keep_alive+0x59>
  407ded:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  407df1:	0f b7 40 12          	movzwl 0x12(%rax),%eax
  407df5:	83 f8 00             	cmp    $0x0,%eax
  407df8:	0f 8e 2b 00 00 00    	jle    407e29 <http_should_keep_alive+0x59>
  407dfe:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  407e02:	8b 00                	mov    (%rax),%eax
  407e04:	c1 e8 02             	shr    $0x2,%eax
  407e07:	25 ff 00 00 00       	and    $0xff,%eax
  407e0c:	83 e0 04             	and    $0x4,%eax
  407e0f:	83 f8 00             	cmp    $0x0,%eax
  407e12:	0f 84 0c 00 00 00    	je     407e24 <http_should_keep_alive+0x54>
  407e18:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  407e1f:	e9 49 00 00 00       	jmpq   407e6d <http_should_keep_alive+0x9d>
  407e24:	e9 2b 00 00 00       	jmpq   407e54 <http_should_keep_alive+0x84>
  407e29:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  407e2d:	8b 00                	mov    (%rax),%eax
  407e2f:	c1 e8 02             	shr    $0x2,%eax
  407e32:	25 ff 00 00 00       	and    $0xff,%eax
  407e37:	83 e0 02             	and    $0x2,%eax
  407e3a:	83 f8 00             	cmp    $0x0,%eax
  407e3d:	0f 85 0c 00 00 00    	jne    407e4f <http_should_keep_alive+0x7f>
  407e43:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  407e4a:	e9 1e 00 00 00       	jmpq   407e6d <http_should_keep_alive+0x9d>
  407e4f:	e9 00 00 00 00       	jmpq   407e54 <http_should_keep_alive+0x84>
  407e54:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  407e58:	e8 23 00 00 00       	callq  407e80 <http_message_needs_eof>
  407e5d:	83 f8 00             	cmp    $0x0,%eax
  407e60:	0f 95 c0             	setne  %al
  407e63:	34 ff                	xor    $0xff,%al
  407e65:	24 01                	and    $0x1,%al
  407e67:	0f b6 c0             	movzbl %al,%eax
  407e6a:	89 45 fc             	mov    %eax,-0x4(%rbp)
  407e6d:	8b 45 fc             	mov    -0x4(%rbp),%eax
  407e70:	48 83 c4 10          	add    $0x10,%rsp
  407e74:	5d                   	pop    %rbp
  407e75:	c3                   	retq   
  407e76:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  407e7d:	00 00 00 

0000000000407e80 <http_message_needs_eof>:
  407e80:	55                   	push   %rbp
  407e81:	48 89 e5             	mov    %rsp,%rbp
  407e84:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
  407e88:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  407e8c:	8b 00                	mov    (%rax),%eax
  407e8e:	83 e0 03             	and    $0x3,%eax
  407e91:	83 f8 00             	cmp    $0x0,%eax
  407e94:	0f 85 0c 00 00 00    	jne    407ea6 <http_message_needs_eof+0x26>
  407e9a:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  407ea1:	e9 e8 00 00 00       	jmpq   407f8e <http_message_needs_eof+0x10e>
  407ea6:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  407eaa:	8b 40 14             	mov    0x14(%rax),%eax
  407ead:	25 ff ff 00 00       	and    $0xffff,%eax
  407eb2:	b9 64 00 00 00       	mov    $0x64,%ecx
  407eb7:	99                   	cltd   
  407eb8:	f7 f9                	idiv   %ecx
  407eba:	83 f8 01             	cmp    $0x1,%eax
  407ebd:	0f 84 48 00 00 00    	je     407f0b <http_message_needs_eof+0x8b>
  407ec3:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  407ec7:	8b 40 14             	mov    0x14(%rax),%eax
  407eca:	25 ff ff 00 00       	and    $0xffff,%eax
  407ecf:	3d cc 00 00 00       	cmp    $0xcc,%eax
  407ed4:	0f 84 31 00 00 00    	je     407f0b <http_message_needs_eof+0x8b>
  407eda:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  407ede:	8b 40 14             	mov    0x14(%rax),%eax
  407ee1:	25 ff ff 00 00       	and    $0xffff,%eax
  407ee6:	3d 30 01 00 00       	cmp    $0x130,%eax
  407eeb:	0f 84 1a 00 00 00    	je     407f0b <http_message_needs_eof+0x8b>
  407ef1:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  407ef5:	8b 00                	mov    (%rax),%eax
  407ef7:	c1 e8 02             	shr    $0x2,%eax
  407efa:	25 ff 00 00 00       	and    $0xff,%eax
  407eff:	83 e0 40             	and    $0x40,%eax
  407f02:	83 f8 00             	cmp    $0x0,%eax
  407f05:	0f 84 0c 00 00 00    	je     407f17 <http_message_needs_eof+0x97>
  407f0b:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  407f12:	e9 77 00 00 00       	jmpq   407f8e <http_message_needs_eof+0x10e>
  407f17:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  407f1b:	8b 00                	mov    (%rax),%eax
  407f1d:	c1 e8 1d             	shr    $0x1d,%eax
  407f20:	83 e0 01             	and    $0x1,%eax
  407f23:	83 f8 01             	cmp    $0x1,%eax
  407f26:	0f 85 26 00 00 00    	jne    407f52 <http_message_needs_eof+0xd2>
  407f2c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  407f30:	8b 00                	mov    (%rax),%eax
  407f32:	c1 e8 02             	shr    $0x2,%eax
  407f35:	25 ff 00 00 00       	and    $0xff,%eax
  407f3a:	83 e0 01             	and    $0x1,%eax
  407f3d:	83 f8 00             	cmp    $0x0,%eax
  407f40:	0f 85 0c 00 00 00    	jne    407f52 <http_message_needs_eof+0xd2>
  407f46:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
  407f4d:	e9 3c 00 00 00       	jmpq   407f8e <http_message_needs_eof+0x10e>
  407f52:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  407f56:	8b 00                	mov    (%rax),%eax
  407f58:	c1 e8 02             	shr    $0x2,%eax
  407f5b:	25 ff 00 00 00       	and    $0xff,%eax
  407f60:	83 e0 01             	and    $0x1,%eax
  407f63:	83 f8 00             	cmp    $0x0,%eax
  407f66:	0f 85 0f 00 00 00    	jne    407f7b <http_message_needs_eof+0xfb>
  407f6c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  407f70:	48 83 78 08 ff       	cmpq   $0xffffffffffffffff,0x8(%rax)
  407f75:	0f 84 0c 00 00 00    	je     407f87 <http_message_needs_eof+0x107>
  407f7b:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  407f82:	e9 07 00 00 00       	jmpq   407f8e <http_message_needs_eof+0x10e>
  407f87:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
  407f8e:	8b 45 fc             	mov    -0x4(%rbp),%eax
  407f91:	5d                   	pop    %rbp
  407f92:	c3                   	retq   
  407f93:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  407f9a:	00 00 00 
  407f9d:	0f 1f 00             	nopl   (%rax)

0000000000407fa0 <http_method_str>:
  407fa0:	55                   	push   %rbp
  407fa1:	48 89 e5             	mov    %rsp,%rbp
  407fa4:	89 7d fc             	mov    %edi,-0x4(%rbp)
  407fa7:	8b 45 fc             	mov    -0x4(%rbp),%eax
  407faa:	48 83 f8 22          	cmp    $0x22,%rax
  407fae:	0f 83 14 00 00 00    	jae    407fc8 <http_method_str+0x28>
  407fb4:	8b 45 fc             	mov    -0x4(%rbp),%eax
  407fb7:	48 8b 04 c5 d0 e0 8b 	mov    0x8be0d0(,%rax,8),%rax
  407fbe:	00 
  407fbf:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  407fc3:	e9 13 00 00 00       	jmpq   407fdb <http_method_str+0x3b>
  407fc8:	48 b8 c0 08 41 00 00 	movabs $0x4108c0,%rax
  407fcf:	00 00 00 
  407fd2:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  407fd6:	e9 00 00 00 00       	jmpq   407fdb <http_method_str+0x3b>
  407fdb:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  407fdf:	5d                   	pop    %rbp
  407fe0:	c3                   	retq   
  407fe1:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  407fe8:	00 00 00 
  407feb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000407ff0 <http_status_str>:
  407ff0:	55                   	push   %rbp
  407ff1:	48 89 e5             	mov    %rsp,%rbp
  407ff4:	89 7d f4             	mov    %edi,-0xc(%rbp)
  407ff7:	8b 45 f4             	mov    -0xc(%rbp),%eax
  407ffa:	83 c0 9c             	add    $0xffffff9c,%eax
  407ffd:	89 c1                	mov    %eax,%ecx
  407fff:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
  408003:	2d 9b 01 00 00       	sub    $0x19b,%eax
  408008:	0f 87 6f 04 00 00    	ja     40847d <http_status_str+0x48d>
  40800e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  408012:	48 8b 04 c5 f8 f5 40 	mov    0x40f5f8(,%rax,8),%rax
  408019:	00 
  40801a:	ff e0                	jmpq   *%rax
  40801c:	48 b8 ca 08 41 00 00 	movabs $0x4108ca,%rax
  408023:	00 00 00 
  408026:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40802a:	e9 5c 04 00 00       	jmpq   40848b <http_status_str+0x49b>
  40802f:	48 b8 d3 08 41 00 00 	movabs $0x4108d3,%rax
  408036:	00 00 00 
  408039:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40803d:	e9 49 04 00 00       	jmpq   40848b <http_status_str+0x49b>
  408042:	48 b8 e7 08 41 00 00 	movabs $0x4108e7,%rax
  408049:	00 00 00 
  40804c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  408050:	e9 36 04 00 00       	jmpq   40848b <http_status_str+0x49b>
  408055:	48 b8 fa 59 41 00 00 	movabs $0x4159fa,%rax
  40805c:	00 00 00 
  40805f:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  408063:	e9 23 04 00 00       	jmpq   40848b <http_status_str+0x49b>
  408068:	48 b8 f2 08 41 00 00 	movabs $0x4108f2,%rax
  40806f:	00 00 00 
  408072:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  408076:	e9 10 04 00 00       	jmpq   40848b <http_status_str+0x49b>
  40807b:	48 b8 fa 08 41 00 00 	movabs $0x4108fa,%rax
  408082:	00 00 00 
  408085:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  408089:	e9 fd 03 00 00       	jmpq   40848b <http_status_str+0x49b>
  40808e:	48 b8 03 09 41 00 00 	movabs $0x410903,%rax
  408095:	00 00 00 
  408098:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40809c:	e9 ea 03 00 00       	jmpq   40848b <http_status_str+0x49b>
  4080a1:	48 b8 21 09 41 00 00 	movabs $0x410921,%rax
  4080a8:	00 00 00 
  4080ab:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4080af:	e9 d7 03 00 00       	jmpq   40848b <http_status_str+0x49b>
  4080b4:	48 b8 2c 09 41 00 00 	movabs $0x41092c,%rax
  4080bb:	00 00 00 
  4080be:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4080c2:	e9 c4 03 00 00       	jmpq   40848b <http_status_str+0x49b>
  4080c7:	48 b8 3a 09 41 00 00 	movabs $0x41093a,%rax
  4080ce:	00 00 00 
  4080d1:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4080d5:	e9 b1 03 00 00       	jmpq   40848b <http_status_str+0x49b>
  4080da:	48 b8 4a 09 41 00 00 	movabs $0x41094a,%rax
  4080e1:	00 00 00 
  4080e4:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4080e8:	e9 9e 03 00 00       	jmpq   40848b <http_status_str+0x49b>
  4080ed:	48 b8 57 09 41 00 00 	movabs $0x410957,%rax
  4080f4:	00 00 00 
  4080f7:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4080fb:	e9 8b 03 00 00       	jmpq   40848b <http_status_str+0x49b>
  408100:	48 b8 68 09 41 00 00 	movabs $0x410968,%rax
  408107:	00 00 00 
  40810a:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40810e:	e9 78 03 00 00       	jmpq   40848b <http_status_str+0x49b>
  408113:	48 b8 70 09 41 00 00 	movabs $0x410970,%rax
  40811a:	00 00 00 
  40811d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  408121:	e9 65 03 00 00       	jmpq   40848b <http_status_str+0x49b>
  408126:	48 b8 81 09 41 00 00 	movabs $0x410981,%rax
  40812d:	00 00 00 
  408130:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  408134:	e9 52 03 00 00       	jmpq   40848b <http_status_str+0x49b>
  408139:	48 b8 12 0a 41 00 00 	movabs $0x410a12,%rax
  408140:	00 00 00 
  408143:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  408147:	e9 3f 03 00 00       	jmpq   40848b <http_status_str+0x49b>
  40814c:	48 b8 93 09 41 00 00 	movabs $0x410993,%rax
  408153:	00 00 00 
  408156:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40815a:	e9 2c 03 00 00       	jmpq   40848b <http_status_str+0x49b>
  40815f:	48 b8 9d 09 41 00 00 	movabs $0x41099d,%rax
  408166:	00 00 00 
  408169:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40816d:	e9 19 03 00 00       	jmpq   40848b <http_status_str+0x49b>
  408172:	48 b8 aa 09 41 00 00 	movabs $0x4109aa,%rax
  408179:	00 00 00 
  40817c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  408180:	e9 06 03 00 00       	jmpq   40848b <http_status_str+0x49b>
  408185:	48 b8 b4 09 41 00 00 	movabs $0x4109b4,%rax
  40818c:	00 00 00 
  40818f:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  408193:	e9 f3 02 00 00       	jmpq   40848b <http_status_str+0x49b>
  408198:	48 b8 c7 09 41 00 00 	movabs $0x4109c7,%rax
  40819f:	00 00 00 
  4081a2:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4081a6:	e9 e0 02 00 00       	jmpq   40848b <http_status_str+0x49b>
  4081ab:	48 b8 da 09 41 00 00 	movabs $0x4109da,%rax
  4081b2:	00 00 00 
  4081b5:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4081b9:	e9 cd 02 00 00       	jmpq   40848b <http_status_str+0x49b>
  4081be:	48 b8 e6 09 41 00 00 	movabs $0x4109e6,%rax
  4081c5:	00 00 00 
  4081c8:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4081cc:	e9 ba 02 00 00       	jmpq   40848b <http_status_str+0x49b>
  4081d1:	48 b8 f3 09 41 00 00 	movabs $0x4109f3,%rax
  4081d8:	00 00 00 
  4081db:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4081df:	e9 a7 02 00 00       	jmpq   40848b <http_status_str+0x49b>
  4081e4:	48 b8 04 0a 41 00 00 	movabs $0x410a04,%rax
  4081eb:	00 00 00 
  4081ee:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4081f2:	e9 94 02 00 00       	jmpq   40848b <http_status_str+0x49b>
  4081f7:	48 b8 0e 0a 41 00 00 	movabs $0x410a0e,%rax
  4081fe:	00 00 00 
  408201:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  408205:	e9 81 02 00 00       	jmpq   40848b <http_status_str+0x49b>
  40820a:	48 b8 18 0a 41 00 00 	movabs $0x410a18,%rax
  408211:	00 00 00 
  408214:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  408218:	e9 6e 02 00 00       	jmpq   40848b <http_status_str+0x49b>
  40821d:	48 b8 2b 0a 41 00 00 	movabs $0x410a2b,%rax
  408224:	00 00 00 
  408227:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40822b:	e9 5b 02 00 00       	jmpq   40848b <http_status_str+0x49b>
  408230:	48 b8 3a 0a 41 00 00 	movabs $0x410a3a,%rax
  408237:	00 00 00 
  40823a:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40823e:	e9 48 02 00 00       	jmpq   40848b <http_status_str+0x49b>
  408243:	48 b8 58 0a 41 00 00 	movabs $0x410a58,%rax
  40824a:	00 00 00 
  40824d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  408251:	e9 35 02 00 00       	jmpq   40848b <http_status_str+0x49b>
  408256:	48 b8 68 0a 41 00 00 	movabs $0x410a68,%rax
  40825d:	00 00 00 
  408260:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  408264:	e9 22 02 00 00       	jmpq   40848b <http_status_str+0x49b>
  408269:	48 b8 71 0a 41 00 00 	movabs $0x410a71,%rax
  408270:	00 00 00 
  408273:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  408277:	e9 0f 02 00 00       	jmpq   40848b <http_status_str+0x49b>
  40827c:	48 b8 76 0a 41 00 00 	movabs $0x410a76,%rax
  408283:	00 00 00 
  408286:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40828a:	e9 fc 01 00 00       	jmpq   40848b <http_status_str+0x49b>
  40828f:	48 b8 86 0a 41 00 00 	movabs $0x410a86,%rax
  408296:	00 00 00 
  408299:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40829d:	e9 e9 01 00 00       	jmpq   40848b <http_status_str+0x49b>
  4082a2:	48 b8 9a 0a 41 00 00 	movabs $0x410a9a,%rax
  4082a9:	00 00 00 
  4082ac:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4082b0:	e9 d6 01 00 00       	jmpq   40848b <http_status_str+0x49b>
  4082b5:	48 b8 ac 0a 41 00 00 	movabs $0x410aac,%rax
  4082bc:	00 00 00 
  4082bf:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4082c3:	e9 c3 01 00 00       	jmpq   40848b <http_status_str+0x49b>
  4082c8:	48 b8 b9 0a 41 00 00 	movabs $0x410ab9,%rax
  4082cf:	00 00 00 
  4082d2:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4082d6:	e9 b0 01 00 00       	jmpq   40848b <http_status_str+0x49b>
  4082db:	48 b8 d0 0a 41 00 00 	movabs $0x410ad0,%rax
  4082e2:	00 00 00 
  4082e5:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4082e9:	e9 9d 01 00 00       	jmpq   40848b <http_status_str+0x49b>
  4082ee:	48 b8 e6 0a 41 00 00 	movabs $0x410ae6,%rax
  4082f5:	00 00 00 
  4082f8:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4082fc:	e9 8a 01 00 00       	jmpq   40848b <http_status_str+0x49b>
  408301:	48 b8 f9 0a 41 00 00 	movabs $0x410af9,%rax
  408308:	00 00 00 
  40830b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40830f:	e9 77 01 00 00       	jmpq   40848b <http_status_str+0x49b>
  408314:	48 b8 0d 0b 41 00 00 	movabs $0x410b0d,%rax
  40831b:	00 00 00 
  40831e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  408322:	e9 64 01 00 00       	jmpq   40848b <http_status_str+0x49b>
  408327:	48 b8 22 0b 41 00 00 	movabs $0x410b22,%rax
  40832e:	00 00 00 
  408331:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  408335:	e9 51 01 00 00       	jmpq   40848b <http_status_str+0x49b>
  40833a:	48 b8 29 0b 41 00 00 	movabs $0x410b29,%rax
  408341:	00 00 00 
  408344:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  408348:	e9 3e 01 00 00       	jmpq   40848b <http_status_str+0x49b>
  40834d:	48 b8 3b 0b 41 00 00 	movabs $0x410b3b,%rax
  408354:	00 00 00 
  408357:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40835b:	e9 2b 01 00 00       	jmpq   40848b <http_status_str+0x49b>
  408360:	48 b8 4c 0b 41 00 00 	movabs $0x410b4c,%rax
  408367:	00 00 00 
  40836a:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40836e:	e9 18 01 00 00       	jmpq   40848b <http_status_str+0x49b>
  408373:	48 b8 62 0b 41 00 00 	movabs $0x410b62,%rax
  40837a:	00 00 00 
  40837d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  408381:	e9 05 01 00 00       	jmpq   40848b <http_status_str+0x49b>
  408386:	48 b8 74 0b 41 00 00 	movabs $0x410b74,%rax
  40838d:	00 00 00 
  408390:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  408394:	e9 f2 00 00 00       	jmpq   40848b <http_status_str+0x49b>
  408399:	48 b8 94 0b 41 00 00 	movabs $0x410b94,%rax
  4083a0:	00 00 00 
  4083a3:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4083a7:	e9 df 00 00 00       	jmpq   40848b <http_status_str+0x49b>
  4083ac:	48 b8 b2 0b 41 00 00 	movabs $0x410bb2,%rax
  4083b3:	00 00 00 
  4083b6:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4083ba:	e9 cc 00 00 00       	jmpq   40848b <http_status_str+0x49b>
  4083bf:	48 b8 c8 0b 41 00 00 	movabs $0x410bc8,%rax
  4083c6:	00 00 00 
  4083c9:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4083cd:	e9 b9 00 00 00       	jmpq   40848b <http_status_str+0x49b>
  4083d2:	48 b8 d8 0b 41 00 00 	movabs $0x410bd8,%rax
  4083d9:	00 00 00 
  4083dc:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4083e0:	e9 a6 00 00 00       	jmpq   40848b <http_status_str+0x49b>
  4083e5:	48 b8 e4 0b 41 00 00 	movabs $0x410be4,%rax
  4083ec:	00 00 00 
  4083ef:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4083f3:	e9 93 00 00 00       	jmpq   40848b <http_status_str+0x49b>
  4083f8:	48 b8 f8 0b 41 00 00 	movabs $0x410bf8,%rax
  4083ff:	00 00 00 
  408402:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  408406:	e9 80 00 00 00       	jmpq   40848b <http_status_str+0x49b>
  40840b:	48 b8 08 0c 41 00 00 	movabs $0x410c08,%rax
  408412:	00 00 00 
  408415:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  408419:	e9 6d 00 00 00       	jmpq   40848b <http_status_str+0x49b>
  40841e:	48 b8 23 0c 41 00 00 	movabs $0x410c23,%rax
  408425:	00 00 00 
  408428:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40842c:	e9 5a 00 00 00       	jmpq   40848b <http_status_str+0x49b>
  408431:	48 b8 3b 0c 41 00 00 	movabs $0x410c3b,%rax
  408438:	00 00 00 
  40843b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40843f:	e9 47 00 00 00       	jmpq   40848b <http_status_str+0x49b>
  408444:	48 b8 50 0c 41 00 00 	movabs $0x410c50,%rax
  40844b:	00 00 00 
  40844e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  408452:	e9 34 00 00 00       	jmpq   40848b <http_status_str+0x49b>
  408457:	48 b8 5e 0c 41 00 00 	movabs $0x410c5e,%rax
  40845e:	00 00 00 
  408461:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  408465:	e9 21 00 00 00       	jmpq   40848b <http_status_str+0x49b>
  40846a:	48 b8 6b 0c 41 00 00 	movabs $0x410c6b,%rax
  408471:	00 00 00 
  408474:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  408478:	e9 0e 00 00 00       	jmpq   40848b <http_status_str+0x49b>
  40847d:	48 b8 c0 08 41 00 00 	movabs $0x4108c0,%rax
  408484:	00 00 00 
  408487:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40848b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40848f:	5d                   	pop    %rbp
  408490:	c3                   	retq   
  408491:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  408498:	00 00 00 
  40849b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004084a0 <http_parser_init>:
  4084a0:	55                   	push   %rbp
  4084a1:	48 89 e5             	mov    %rsp,%rbp
  4084a4:	48 83 ec 20          	sub    $0x20,%rsp
  4084a8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4084ac:	89 75 f4             	mov    %esi,-0xc(%rbp)
  4084af:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4084b3:	48 8b 40 18          	mov    0x18(%rax),%rax
  4084b7:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  4084bb:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  4084bf:	31 f6                	xor    %esi,%esi
  4084c1:	ba 20 00 00 00       	mov    $0x20,%edx
  4084c6:	e8 d5 8b ff ff       	callq  4010a0 <memset@plt>
  4084cb:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  4084cf:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4084d3:	48 89 48 18          	mov    %rcx,0x18(%rax)
  4084d7:	8b 55 f4             	mov    -0xc(%rbp),%edx
  4084da:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4084de:	8b 08                	mov    (%rax),%ecx
  4084e0:	83 e2 03             	and    $0x3,%edx
  4084e3:	83 e1 fc             	and    $0xfffffffc,%ecx
  4084e6:	09 d1                	or     %edx,%ecx
  4084e8:	89 08                	mov    %ecx,(%rax)
  4084ea:	83 7d f4 00          	cmpl   $0x0,-0xc(%rbp)
  4084ee:	0f 85 0d 00 00 00    	jne    408501 <http_parser_init+0x61>
  4084f4:	b8 12 00 00 00       	mov    $0x12,%eax
  4084f9:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  4084fc:	e9 16 00 00 00       	jmpq   408517 <http_parser_init+0x77>
  408501:	8b 55 f4             	mov    -0xc(%rbp),%edx
  408504:	b8 02 00 00 00       	mov    $0x2,%eax
  408509:	b9 04 00 00 00       	mov    $0x4,%ecx
  40850e:	83 fa 01             	cmp    $0x1,%edx
  408511:	0f 44 c1             	cmove  %ecx,%eax
  408514:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  408517:	8b 55 e4             	mov    -0x1c(%rbp),%edx
  40851a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40851e:	8b 08                	mov    (%rax),%ecx
  408520:	83 e2 7f             	and    $0x7f,%edx
  408523:	c1 e2 0a             	shl    $0xa,%edx
  408526:	81 e1 ff 03 fe ff    	and    $0xfffe03ff,%ecx
  40852c:	09 d1                	or     %edx,%ecx
  40852e:	89 08                	mov    %ecx,(%rax)
  408530:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  408534:	8b 48 14             	mov    0x14(%rax),%ecx
  408537:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  40853d:	83 c9 00             	or     $0x0,%ecx
  408540:	89 48 14             	mov    %ecx,0x14(%rax)
  408543:	48 83 c4 20          	add    $0x20,%rsp
  408547:	5d                   	pop    %rbp
  408548:	c3                   	retq   
  408549:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000408550 <http_parser_settings_init>:
  408550:	55                   	push   %rbp
  408551:	48 89 e5             	mov    %rsp,%rbp
  408554:	48 83 ec 10          	sub    $0x10,%rsp
  408558:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40855c:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  408560:	31 f6                	xor    %esi,%esi
  408562:	ba 50 00 00 00       	mov    $0x50,%edx
  408567:	e8 34 8b ff ff       	callq  4010a0 <memset@plt>
  40856c:	48 83 c4 10          	add    $0x10,%rsp
  408570:	5d                   	pop    %rbp
  408571:	c3                   	retq   
  408572:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  408579:	00 00 00 
  40857c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000408580 <http_errno_name>:
  408580:	55                   	push   %rbp
  408581:	48 89 e5             	mov    %rsp,%rbp
  408584:	48 83 ec 10          	sub    $0x10,%rsp
  408588:	89 7d fc             	mov    %edi,-0x4(%rbp)
  40858b:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40858e:	48 83 f8 22          	cmp    $0x22,%rax
  408592:	0f 83 05 00 00 00    	jae    40859d <http_errno_name+0x1d>
  408598:	e9 28 00 00 00       	jmpq   4085c5 <http_errno_name+0x45>
  40859d:	48 bf 8b 0c 41 00 00 	movabs $0x410c8b,%rdi
  4085a4:	00 00 00 
  4085a7:	48 be c4 06 41 00 00 	movabs $0x4106c4,%rsi
  4085ae:	00 00 00 
  4085b1:	ba c3 08 00 00       	mov    $0x8c3,%edx
  4085b6:	48 b9 ba 0c 41 00 00 	movabs $0x410cba,%rcx
  4085bd:	00 00 00 
  4085c0:	e8 cb 8a ff ff       	callq  401090 <__assert_fail@plt>
  4085c5:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4085c8:	89 c1                	mov    %eax,%ecx
  4085ca:	48 b8 e0 e1 8b 00 00 	movabs $0x8be1e0,%rax
  4085d1:	00 00 00 
  4085d4:	48 c1 e1 04          	shl    $0x4,%rcx
  4085d8:	48 01 c8             	add    %rcx,%rax
  4085db:	48 8b 00             	mov    (%rax),%rax
  4085de:	48 83 c4 10          	add    $0x10,%rsp
  4085e2:	5d                   	pop    %rbp
  4085e3:	c3                   	retq   
  4085e4:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4085eb:	00 00 00 
  4085ee:	66 90                	xchg   %ax,%ax

00000000004085f0 <http_errno_description>:
  4085f0:	55                   	push   %rbp
  4085f1:	48 89 e5             	mov    %rsp,%rbp
  4085f4:	48 83 ec 10          	sub    $0x10,%rsp
  4085f8:	89 7d fc             	mov    %edi,-0x4(%rbp)
  4085fb:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4085fe:	48 83 f8 22          	cmp    $0x22,%rax
  408602:	0f 83 05 00 00 00    	jae    40860d <http_errno_description+0x1d>
  408608:	e9 28 00 00 00       	jmpq   408635 <http_errno_description+0x45>
  40860d:	48 bf 8b 0c 41 00 00 	movabs $0x410c8b,%rdi
  408614:	00 00 00 
  408617:	48 be c4 06 41 00 00 	movabs $0x4106c4,%rsi
  40861e:	00 00 00 
  408621:	ba c9 08 00 00       	mov    $0x8c9,%edx
  408626:	48 b9 e7 0c 41 00 00 	movabs $0x410ce7,%rcx
  40862d:	00 00 00 
  408630:	e8 5b 8a ff ff       	callq  401090 <__assert_fail@plt>
  408635:	8b 45 fc             	mov    -0x4(%rbp),%eax
  408638:	89 c1                	mov    %eax,%ecx
  40863a:	48 b8 e0 e1 8b 00 00 	movabs $0x8be1e0,%rax
  408641:	00 00 00 
  408644:	48 c1 e1 04          	shl    $0x4,%rcx
  408648:	48 01 c8             	add    %rcx,%rax
  40864b:	48 8b 40 08          	mov    0x8(%rax),%rax
  40864f:	48 83 c4 10          	add    $0x10,%rsp
  408653:	5d                   	pop    %rbp
  408654:	c3                   	retq   
  408655:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40865c:	00 00 00 
  40865f:	90                   	nop

0000000000408660 <http_parser_url_init>:
  408660:	55                   	push   %rbp
  408661:	48 89 e5             	mov    %rsp,%rbp
  408664:	48 83 ec 10          	sub    $0x10,%rsp
  408668:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40866c:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  408670:	31 f6                	xor    %esi,%esi
  408672:	ba 20 00 00 00       	mov    $0x20,%edx
  408677:	e8 24 8a ff ff       	callq  4010a0 <memset@plt>
  40867c:	48 83 c4 10          	add    $0x10,%rsp
  408680:	5d                   	pop    %rbp
  408681:	c3                   	retq   
  408682:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  408689:	00 00 00 
  40868c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000408690 <http_parser_parse_url>:
  408690:	55                   	push   %rbp
  408691:	48 89 e5             	mov    %rsp,%rbp
  408694:	48 83 ec 70          	sub    $0x70,%rsp
  408698:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
  40869c:	48 89 75 e8          	mov    %rsi,-0x18(%rbp)
  4086a0:	89 55 e4             	mov    %edx,-0x1c(%rbp)
  4086a3:	48 89 4d d8          	mov    %rcx,-0x28(%rbp)
  4086a7:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%rbp)
  4086ae:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
  4086b3:	0f 85 0c 00 00 00    	jne    4086c5 <http_parser_parse_url+0x35>
  4086b9:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
  4086c0:	e9 32 03 00 00       	jmpq   4089f7 <http_parser_parse_url+0x367>
  4086c5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4086c9:	66 c7 00 00 00       	movw   $0x0,(%rax)
  4086ce:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4086d2:	66 c7 40 02 00 00    	movw   $0x0,0x2(%rax)
  4086d8:	8b 55 e4             	mov    -0x1c(%rbp),%edx
  4086db:	b8 14 00 00 00       	mov    $0x14,%eax
  4086e0:	b9 18 00 00 00       	mov    $0x18,%ecx
  4086e5:	83 fa 00             	cmp    $0x0,%edx
  4086e8:	0f 45 c1             	cmovne %ecx,%eax
  4086eb:	89 45 d4             	mov    %eax,-0x2c(%rbp)
  4086ee:	c7 45 c0 07 00 00 00 	movl   $0x7,-0x40(%rbp)
  4086f5:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4086f9:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  4086fd:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  408701:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  408705:	48 03 4d e8          	add    -0x18(%rbp),%rcx
  408709:	48 39 c8             	cmp    %rcx,%rax
  40870c:	0f 83 2c 01 00 00    	jae    40883e <http_parser_parse_url+0x1ae>
  408712:	8b 7d d4             	mov    -0x2c(%rbp),%edi
  408715:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  408719:	0f be 30             	movsbl (%rax),%esi
  40871c:	e8 9f f1 ff ff       	callq  4078c0 <parse_url_char>
  408721:	89 45 d4             	mov    %eax,-0x2c(%rbp)
  408724:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  408727:	83 c0 ff             	add    $0xffffffff,%eax
  40872a:	89 c1                	mov    %eax,%ecx
  40872c:	48 89 4d 98          	mov    %rcx,-0x68(%rbp)
  408730:	83 e8 1e             	sub    $0x1e,%eax
  408733:	0f 87 62 00 00 00    	ja     40879b <http_parser_parse_url+0x10b>
  408739:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  40873d:	48 8b 04 c5 d8 02 41 	mov    0x4102d8(,%rax,8),%rax
  408744:	00 
  408745:	ff e0                	jmpq   *%rax
  408747:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
  40874e:	e9 a4 02 00 00       	jmpq   4089f7 <http_parser_parse_url+0x367>
  408753:	e9 d5 00 00 00       	jmpq   40882d <http_parser_parse_url+0x19d>
  408758:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%rbp)
  40875f:	e9 5f 00 00 00       	jmpq   4087c3 <http_parser_parse_url+0x133>
  408764:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%rbp)
  40876b:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%rbp)
  408772:	e9 4c 00 00 00       	jmpq   4087c3 <http_parser_parse_url+0x133>
  408777:	c7 45 c4 03 00 00 00 	movl   $0x3,-0x3c(%rbp)
  40877e:	e9 40 00 00 00       	jmpq   4087c3 <http_parser_parse_url+0x133>
  408783:	c7 45 c4 04 00 00 00 	movl   $0x4,-0x3c(%rbp)
  40878a:	e9 34 00 00 00       	jmpq   4087c3 <http_parser_parse_url+0x133>
  40878f:	c7 45 c4 05 00 00 00 	movl   $0x5,-0x3c(%rbp)
  408796:	e9 28 00 00 00       	jmpq   4087c3 <http_parser_parse_url+0x133>
  40879b:	48 bf 1b 0d 41 00 00 	movabs $0x410d1b,%rdi
  4087a2:	00 00 00 
  4087a5:	48 be c4 06 41 00 00 	movabs $0x4106c4,%rsi
  4087ac:	00 00 00 
  4087af:	ba b0 09 00 00       	mov    $0x9b0,%edx
  4087b4:	48 b9 2f 0d 41 00 00 	movabs $0x410d2f,%rcx
  4087bb:	00 00 00 
  4087be:	e8 cd 88 ff ff       	callq  401090 <__assert_fail@plt>
  4087c3:	8b 45 c4             	mov    -0x3c(%rbp),%eax
  4087c6:	3b 45 c0             	cmp    -0x40(%rbp),%eax
  4087c9:	0f 85 1a 00 00 00    	jne    4087e9 <http_parser_parse_url+0x159>
  4087cf:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4087d3:	8b 4d c4             	mov    -0x3c(%rbp),%ecx
  4087d6:	66 8b 54 88 06       	mov    0x6(%rax,%rcx,4),%dx
  4087db:	66 83 c2 01          	add    $0x1,%dx
  4087df:	66 89 54 88 06       	mov    %dx,0x6(%rax,%rcx,4)
  4087e4:	e9 44 00 00 00       	jmpq   40882d <http_parser_parse_url+0x19d>
  4087e9:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  4087ed:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  4087f1:	48 29 c8             	sub    %rcx,%rax
  4087f4:	66 89 c2             	mov    %ax,%dx
  4087f7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4087fb:	8b 4d c4             	mov    -0x3c(%rbp),%ecx
  4087fe:	66 89 54 88 04       	mov    %dx,0x4(%rax,%rcx,4)
  408803:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  408807:	8b 4d c4             	mov    -0x3c(%rbp),%ecx
  40880a:	66 c7 44 88 06 01 00 	movw   $0x1,0x6(%rax,%rcx,4)
  408811:	8b 4d c4             	mov    -0x3c(%rbp),%ecx
  408814:	ba 01 00 00 00       	mov    $0x1,%edx
  408819:	d3 e2                	shl    %cl,%edx
  40881b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40881f:	0f b7 08             	movzwl (%rax),%ecx
  408822:	09 d1                	or     %edx,%ecx
  408824:	66 89 08             	mov    %cx,(%rax)
  408827:	8b 45 c4             	mov    -0x3c(%rbp),%eax
  40882a:	89 45 c0             	mov    %eax,-0x40(%rbp)
  40882d:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  408831:	48 83 c0 01          	add    $0x1,%rax
  408835:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  408839:	e9 bf fe ff ff       	jmpq   4086fd <http_parser_parse_url+0x6d>
  40883e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  408842:	0f b7 00             	movzwl (%rax),%eax
  408845:	83 e0 01             	and    $0x1,%eax
  408848:	83 f8 00             	cmp    $0x0,%eax
  40884b:	0f 84 1f 00 00 00    	je     408870 <http_parser_parse_url+0x1e0>
  408851:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  408855:	0f b7 00             	movzwl (%rax),%eax
  408858:	83 e0 02             	and    $0x2,%eax
  40885b:	83 f8 00             	cmp    $0x0,%eax
  40885e:	0f 85 0c 00 00 00    	jne    408870 <http_parser_parse_url+0x1e0>
  408864:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
  40886b:	e9 87 01 00 00       	jmpq   4089f7 <http_parser_parse_url+0x367>
  408870:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  408874:	0f b7 00             	movzwl (%rax),%eax
  408877:	83 e0 02             	and    $0x2,%eax
  40887a:	83 f8 00             	cmp    $0x0,%eax
  40887d:	0f 84 2a 00 00 00    	je     4088ad <http_parser_parse_url+0x21d>
  408883:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  408887:	48 8b 75 d8          	mov    -0x28(%rbp),%rsi
  40888b:	8b 55 bc             	mov    -0x44(%rbp),%edx
  40888e:	e8 6d 01 00 00       	callq  408a00 <http_parse_host>
  408893:	83 f8 00             	cmp    $0x0,%eax
  408896:	0f 84 0c 00 00 00    	je     4088a8 <http_parser_parse_url+0x218>
  40889c:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
  4088a3:	e9 4f 01 00 00       	jmpq   4089f7 <http_parser_parse_url+0x367>
  4088a8:	e9 00 00 00 00       	jmpq   4088ad <http_parser_parse_url+0x21d>
  4088ad:	83 7d e4 00          	cmpl   $0x0,-0x1c(%rbp)
  4088b1:	0f 84 1c 00 00 00    	je     4088d3 <http_parser_parse_url+0x243>
  4088b7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4088bb:	0f b7 00             	movzwl (%rax),%eax
  4088be:	83 f8 06             	cmp    $0x6,%eax
  4088c1:	0f 84 0c 00 00 00    	je     4088d3 <http_parser_parse_url+0x243>
  4088c7:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
  4088ce:	e9 24 01 00 00       	jmpq   4089f7 <http_parser_parse_url+0x367>
  4088d3:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4088d7:	0f b7 00             	movzwl (%rax),%eax
  4088da:	83 e0 04             	and    $0x4,%eax
  4088dd:	83 f8 00             	cmp    $0x0,%eax
  4088e0:	0f 84 0a 01 00 00    	je     4089f0 <http_parser_parse_url+0x360>
  4088e6:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4088ea:	66 8b 40 0c          	mov    0xc(%rax),%ax
  4088ee:	66 89 45 ba          	mov    %ax,-0x46(%rbp)
  4088f2:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4088f6:	66 8b 40 0e          	mov    0xe(%rax),%ax
  4088fa:	66 89 45 b8          	mov    %ax,-0x48(%rbp)
  4088fe:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  408902:	0f b7 4d ba          	movzwl -0x46(%rbp),%ecx
  408906:	48 63 c9             	movslq %ecx,%rcx
  408909:	48 01 c8             	add    %rcx,%rax
  40890c:	0f b7 4d b8          	movzwl -0x48(%rbp),%ecx
  408910:	48 63 c9             	movslq %ecx,%rcx
  408913:	48 01 c8             	add    %rcx,%rax
  408916:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  40891a:	0f b7 45 ba          	movzwl -0x46(%rbp),%eax
  40891e:	0f b7 4d b8          	movzwl -0x48(%rbp),%ecx
  408922:	01 c8                	add    %ecx,%eax
  408924:	48 98                	cltq   
  408926:	48 3b 45 e8          	cmp    -0x18(%rbp),%rax
  40892a:	0f 87 14 00 00 00    	ja     408944 <http_parser_parse_url+0x2b4>
  408930:	b0 01                	mov    $0x1,%al
  408932:	a8 01                	test   $0x1,%al
  408934:	0f 85 05 00 00 00    	jne    40893f <http_parser_parse_url+0x2af>
  40893a:	e9 05 00 00 00       	jmpq   408944 <http_parser_parse_url+0x2b4>
  40893f:	e9 28 00 00 00       	jmpq   40896c <http_parser_parse_url+0x2dc>
  408944:	48 bf 93 0d 41 00 00 	movabs $0x410d93,%rdi
  40894b:	00 00 00 
  40894e:	48 be c4 06 41 00 00 	movabs $0x4106c4,%rsi
  408955:	00 00 00 
  408958:	ba df 09 00 00       	mov    $0x9df,%edx
  40895d:	48 b9 2f 0d 41 00 00 	movabs $0x410d2f,%rcx
  408964:	00 00 00 
  408967:	e8 24 87 ff ff       	callq  401090 <__assert_fail@plt>
  40896c:	48 c7 45 a0 00 00 00 	movq   $0x0,-0x60(%rbp)
  408973:	00 
  408974:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  408978:	0f b7 4d ba          	movzwl -0x46(%rbp),%ecx
  40897c:	48 63 c9             	movslq %ecx,%rcx
  40897f:	48 01 c8             	add    %rcx,%rax
  408982:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  408986:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  40898a:	48 3b 45 a8          	cmp    -0x58(%rbp),%rax
  40898e:	0f 83 4d 00 00 00    	jae    4089e1 <http_parser_parse_url+0x351>
  408994:	48 6b 45 a0 0a       	imul   $0xa,-0x60(%rbp),%rax
  408999:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
  40899d:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  4089a1:	0f be 00             	movsbl (%rax),%eax
  4089a4:	83 e8 30             	sub    $0x30,%eax
  4089a7:	48 98                	cltq   
  4089a9:	48 03 45 a0          	add    -0x60(%rbp),%rax
  4089ad:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
  4089b1:	48 81 7d a0 ff ff 00 	cmpq   $0xffff,-0x60(%rbp)
  4089b8:	00 
  4089b9:	0f 86 0c 00 00 00    	jbe    4089cb <http_parser_parse_url+0x33b>
  4089bf:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
  4089c6:	e9 2c 00 00 00       	jmpq   4089f7 <http_parser_parse_url+0x367>
  4089cb:	e9 00 00 00 00       	jmpq   4089d0 <http_parser_parse_url+0x340>
  4089d0:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  4089d4:	48 83 c0 01          	add    $0x1,%rax
  4089d8:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  4089dc:	e9 a5 ff ff ff       	jmpq   408986 <http_parser_parse_url+0x2f6>
  4089e1:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
  4089e5:	66 89 c1             	mov    %ax,%cx
  4089e8:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4089ec:	66 89 48 02          	mov    %cx,0x2(%rax)
  4089f0:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  4089f7:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4089fa:	48 83 c4 70          	add    $0x70,%rsp
  4089fe:	5d                   	pop    %rbp
  4089ff:	c3                   	retq   

0000000000408a00 <http_parse_host>:
  408a00:	55                   	push   %rbp
  408a01:	48 89 e5             	mov    %rsp,%rbp
  408a04:	48 83 ec 50          	sub    $0x50,%rsp
  408a08:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
  408a0c:	48 89 75 e8          	mov    %rsi,-0x18(%rbp)
  408a10:	89 55 e4             	mov    %edx,-0x1c(%rbp)
  408a13:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  408a17:	0f b7 40 08          	movzwl 0x8(%rax),%eax
  408a1b:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  408a1f:	0f b7 49 0a          	movzwl 0xa(%rcx),%ecx
  408a23:	01 c8                	add    %ecx,%eax
  408a25:	48 98                	cltq   
  408a27:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  408a2b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  408a2f:	0f b7 00             	movzwl (%rax),%eax
  408a32:	83 e0 02             	and    $0x2,%eax
  408a35:	83 f8 00             	cmp    $0x0,%eax
  408a38:	0f 84 05 00 00 00    	je     408a43 <http_parse_host+0x43>
  408a3e:	e9 28 00 00 00       	jmpq   408a6b <http_parse_host+0x6b>
  408a43:	48 bf d7 14 41 00 00 	movabs $0x4114d7,%rdi
  408a4a:	00 00 00 
  408a4d:	48 be c4 06 41 00 00 	movabs $0x4106c4,%rsi
  408a54:	00 00 00 
  408a57:	ba 26 09 00 00       	mov    $0x926,%edx
  408a5c:	48 b9 f5 14 41 00 00 	movabs $0x4114f5,%rcx
  408a63:	00 00 00 
  408a66:	e8 25 86 ff ff       	callq  401090 <__assert_fail@plt>
  408a6b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  408a6f:	66 c7 40 0a 00 00    	movw   $0x0,0xa(%rax)
  408a75:	8b 55 e4             	mov    -0x1c(%rbp),%edx
  408a78:	b8 04 00 00 00       	mov    $0x4,%eax
  408a7d:	b9 02 00 00 00       	mov    $0x2,%ecx
  408a82:	83 fa 00             	cmp    $0x0,%edx
  408a85:	0f 45 c1             	cmovne %ecx,%eax
  408a88:	89 45 e0             	mov    %eax,-0x20(%rbp)
  408a8b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  408a8f:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  408a93:	0f b7 49 08          	movzwl 0x8(%rcx),%ecx
  408a97:	48 63 c9             	movslq %ecx,%rcx
  408a9a:	48 01 c8             	add    %rcx,%rax
  408a9d:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  408aa1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  408aa5:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  408aa9:	48 03 4d d0          	add    -0x30(%rbp),%rcx
  408aad:	48 39 c8             	cmp    %rcx,%rax
  408ab0:	0f 83 7e 01 00 00    	jae    408c34 <http_parse_host+0x234>
  408ab6:	8b 7d e0             	mov    -0x20(%rbp),%edi
  408ab9:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  408abd:	0f be 30             	movsbl (%rax),%esi
  408ac0:	e8 eb 02 00 00       	callq  408db0 <http_parse_host_char>
  408ac5:	89 45 cc             	mov    %eax,-0x34(%rbp)
  408ac8:	83 7d cc 01          	cmpl   $0x1,-0x34(%rbp)
  408acc:	0f 85 0c 00 00 00    	jne    408ade <http_parse_host+0xde>
  408ad2:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
  408ad9:	e9 aa 01 00 00       	jmpq   408c88 <http_parse_host+0x288>
  408ade:	8b 45 cc             	mov    -0x34(%rbp),%eax
  408ae1:	83 c0 fd             	add    $0xfffffffd,%eax
  408ae4:	89 c1                	mov    %eax,%ecx
  408ae6:	48 89 4d c0          	mov    %rcx,-0x40(%rbp)
  408aea:	83 e8 09             	sub    $0x9,%eax
  408aed:	0f 87 25 01 00 00    	ja     408c18 <http_parse_host+0x218>
  408af3:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  408af7:	48 8b 04 c5 d0 03 41 	mov    0x4103d0(,%rax,8),%rax
  408afe:	00 
  408aff:	ff e0                	jmpq   *%rax
  408b01:	83 7d e0 06          	cmpl   $0x6,-0x20(%rbp)
  408b05:	0f 84 16 00 00 00    	je     408b21 <http_parse_host+0x121>
  408b0b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  408b0f:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  408b13:	48 29 c8             	sub    %rcx,%rax
  408b16:	66 89 c1             	mov    %ax,%cx
  408b19:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  408b1d:	66 89 48 08          	mov    %cx,0x8(%rax)
  408b21:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  408b25:	66 8b 48 0a          	mov    0xa(%rax),%cx
  408b29:	66 83 c1 01          	add    $0x1,%cx
  408b2d:	66 89 48 0a          	mov    %cx,0xa(%rax)
  408b31:	e9 e7 00 00 00       	jmpq   408c1d <http_parse_host+0x21d>
  408b36:	83 7d e0 07          	cmpl   $0x7,-0x20(%rbp)
  408b3a:	0f 84 16 00 00 00    	je     408b56 <http_parse_host+0x156>
  408b40:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  408b44:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  408b48:	48 29 c8             	sub    %rcx,%rax
  408b4b:	66 89 c1             	mov    %ax,%cx
  408b4e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  408b52:	66 89 48 08          	mov    %cx,0x8(%rax)
  408b56:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  408b5a:	66 8b 48 0a          	mov    0xa(%rax),%cx
  408b5e:	66 83 c1 01          	add    $0x1,%cx
  408b62:	66 89 48 0a          	mov    %cx,0xa(%rax)
  408b66:	e9 b2 00 00 00       	jmpq   408c1d <http_parse_host+0x21d>
  408b6b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  408b6f:	66 8b 48 0a          	mov    0xa(%rax),%cx
  408b73:	66 83 c1 01          	add    $0x1,%cx
  408b77:	66 89 48 0a          	mov    %cx,0xa(%rax)
  408b7b:	e9 9d 00 00 00       	jmpq   408c1d <http_parse_host+0x21d>
  408b80:	83 7d e0 0c          	cmpl   $0xc,-0x20(%rbp)
  408b84:	0f 84 2d 00 00 00    	je     408bb7 <http_parse_host+0x1b7>
  408b8a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  408b8e:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  408b92:	48 29 c8             	sub    %rcx,%rax
  408b95:	66 89 c1             	mov    %ax,%cx
  408b98:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  408b9c:	66 89 48 0c          	mov    %cx,0xc(%rax)
  408ba0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  408ba4:	66 c7 40 0e 00 00    	movw   $0x0,0xe(%rax)
  408baa:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  408bae:	0f b7 08             	movzwl (%rax),%ecx
  408bb1:	83 c9 04             	or     $0x4,%ecx
  408bb4:	66 89 08             	mov    %cx,(%rax)
  408bb7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  408bbb:	66 8b 48 0e          	mov    0xe(%rax),%cx
  408bbf:	66 83 c1 01          	add    $0x1,%cx
  408bc3:	66 89 48 0e          	mov    %cx,0xe(%rax)
  408bc7:	e9 51 00 00 00       	jmpq   408c1d <http_parse_host+0x21d>
  408bcc:	83 7d e0 03          	cmpl   $0x3,-0x20(%rbp)
  408bd0:	0f 84 2d 00 00 00    	je     408c03 <http_parse_host+0x203>
  408bd6:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  408bda:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  408bde:	48 29 c8             	sub    %rcx,%rax
  408be1:	66 89 c1             	mov    %ax,%cx
  408be4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  408be8:	66 89 48 1c          	mov    %cx,0x1c(%rax)
  408bec:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  408bf0:	66 c7 40 1e 00 00    	movw   $0x0,0x1e(%rax)
  408bf6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  408bfa:	0f b7 08             	movzwl (%rax),%ecx
  408bfd:	83 c9 40             	or     $0x40,%ecx
  408c00:	66 89 08             	mov    %cx,(%rax)
  408c03:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  408c07:	66 8b 48 1e          	mov    0x1e(%rax),%cx
  408c0b:	66 83 c1 01          	add    $0x1,%cx
  408c0f:	66 89 48 1e          	mov    %cx,0x1e(%rax)
  408c13:	e9 05 00 00 00       	jmpq   408c1d <http_parse_host+0x21d>
  408c18:	e9 00 00 00 00       	jmpq   408c1d <http_parse_host+0x21d>
  408c1d:	8b 45 cc             	mov    -0x34(%rbp),%eax
  408c20:	89 45 e0             	mov    %eax,-0x20(%rbp)
  408c23:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  408c27:	48 83 c0 01          	add    $0x1,%rax
  408c2b:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  408c2f:	e9 6d fe ff ff       	jmpq   408aa1 <http_parse_host+0xa1>
  408c34:	8b 45 e0             	mov    -0x20(%rbp),%eax
  408c37:	89 45 bc             	mov    %eax,-0x44(%rbp)
  408c3a:	83 c0 fe             	add    $0xfffffffe,%eax
  408c3d:	83 e8 04             	sub    $0x4,%eax
  408c40:	0f 82 2a 00 00 00    	jb     408c70 <http_parse_host+0x270>
  408c46:	e9 00 00 00 00       	jmpq   408c4b <http_parse_host+0x24b>
  408c4b:	8b 45 bc             	mov    -0x44(%rbp),%eax
  408c4e:	83 e8 07             	sub    $0x7,%eax
  408c51:	0f 84 19 00 00 00    	je     408c70 <http_parse_host+0x270>
  408c57:	e9 00 00 00 00       	jmpq   408c5c <http_parse_host+0x25c>
  408c5c:	8b 45 bc             	mov    -0x44(%rbp),%eax
  408c5f:	83 c0 f7             	add    $0xfffffff7,%eax
  408c62:	83 e8 02             	sub    $0x2,%eax
  408c65:	0f 87 11 00 00 00    	ja     408c7c <http_parse_host+0x27c>
  408c6b:	e9 00 00 00 00       	jmpq   408c70 <http_parse_host+0x270>
  408c70:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
  408c77:	e9 0c 00 00 00       	jmpq   408c88 <http_parse_host+0x288>
  408c7c:	e9 00 00 00 00       	jmpq   408c81 <http_parse_host+0x281>
  408c81:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  408c88:	8b 45 fc             	mov    -0x4(%rbp),%eax
  408c8b:	48 83 c4 50          	add    $0x50,%rsp
  408c8f:	5d                   	pop    %rbp
  408c90:	c3                   	retq   
  408c91:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  408c98:	00 00 00 
  408c9b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000408ca0 <http_parser_pause>:
  408ca0:	55                   	push   %rbp
  408ca1:	48 89 e5             	mov    %rsp,%rbp
  408ca4:	48 83 ec 10          	sub    $0x10,%rsp
  408ca8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  408cac:	89 75 f4             	mov    %esi,-0xc(%rbp)
  408caf:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  408cb3:	8b 40 14             	mov    0x14(%rax),%eax
  408cb6:	c1 e8 18             	shr    $0x18,%eax
  408cb9:	83 e0 7f             	and    $0x7f,%eax
  408cbc:	83 f8 00             	cmp    $0x0,%eax
  408cbf:	0f 84 16 00 00 00    	je     408cdb <http_parser_pause+0x3b>
  408cc5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  408cc9:	8b 40 14             	mov    0x14(%rax),%eax
  408ccc:	c1 e8 18             	shr    $0x18,%eax
  408ccf:	83 e0 7f             	and    $0x7f,%eax
  408cd2:	83 f8 1f             	cmp    $0x1f,%eax
  408cd5:	0f 85 41 00 00 00    	jne    408d1c <http_parser_pause+0x7c>
  408cdb:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  408cdf:	8b 40 04             	mov    0x4(%rax),%eax
  408ce2:	89 45 f0             	mov    %eax,-0x10(%rbp)
  408ce5:	8b 4d f0             	mov    -0x10(%rbp),%ecx
  408ce8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  408cec:	89 48 04             	mov    %ecx,0x4(%rax)
  408cef:	8b 4d f4             	mov    -0xc(%rbp),%ecx
  408cf2:	31 d2                	xor    %edx,%edx
  408cf4:	b8 1f 00 00 00       	mov    $0x1f,%eax
  408cf9:	83 f9 00             	cmp    $0x0,%ecx
  408cfc:	0f 45 d0             	cmovne %eax,%edx
  408cff:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  408d03:	8b 48 14             	mov    0x14(%rax),%ecx
  408d06:	83 e2 7f             	and    $0x7f,%edx
  408d09:	c1 e2 18             	shl    $0x18,%edx
  408d0c:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  408d12:	09 d1                	or     %edx,%ecx
  408d14:	89 48 14             	mov    %ecx,0x14(%rax)
  408d17:	e9 28 00 00 00       	jmpq   408d44 <http_parser_pause+0xa4>
  408d1c:	48 bf cc 0d 41 00 00 	movabs $0x410dcc,%rdi
  408d23:	00 00 00 
  408d26:	48 be c4 06 41 00 00 	movabs $0x4106c4,%rsi
  408d2d:	00 00 00 
  408d30:	ba fc 09 00 00       	mov    $0x9fc,%edx
  408d35:	48 b9 fd 0d 41 00 00 	movabs $0x410dfd,%rcx
  408d3c:	00 00 00 
  408d3f:	e8 4c 83 ff ff       	callq  401090 <__assert_fail@plt>
  408d44:	48 83 c4 10          	add    $0x10,%rsp
  408d48:	5d                   	pop    %rbp
  408d49:	c3                   	retq   
  408d4a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000408d50 <http_body_is_final>:
  408d50:	55                   	push   %rbp
  408d51:	48 89 e5             	mov    %rsp,%rbp
  408d54:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  408d58:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  408d5c:	8b 00                	mov    (%rax),%eax
  408d5e:	c1 e8 0a             	shr    $0xa,%eax
  408d61:	83 e0 7f             	and    $0x7f,%eax
  408d64:	83 f8 40             	cmp    $0x40,%eax
  408d67:	0f 94 c0             	sete   %al
  408d6a:	24 01                	and    $0x1,%al
  408d6c:	0f b6 c0             	movzbl %al,%eax
  408d6f:	5d                   	pop    %rbp
  408d70:	c3                   	retq   
  408d71:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  408d78:	00 00 00 
  408d7b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000408d80 <http_parser_version>:
  408d80:	55                   	push   %rbp
  408d81:	48 89 e5             	mov    %rsp,%rbp
  408d84:	b8 04 09 02 00       	mov    $0x20904,%eax
  408d89:	5d                   	pop    %rbp
  408d8a:	c3                   	retq   
  408d8b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000408d90 <http_parser_set_max_header_size>:
  408d90:	55                   	push   %rbp
  408d91:	48 89 e5             	mov    %rsp,%rbp
  408d94:	89 7d fc             	mov    %edi,-0x4(%rbp)
  408d97:	8b 45 fc             	mov    -0x4(%rbp),%eax
  408d9a:	89 04 25 c0 e0 8b 00 	mov    %eax,0x8be0c0
  408da1:	5d                   	pop    %rbp
  408da2:	c3                   	retq   
  408da3:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  408daa:	00 00 00 
  408dad:	0f 1f 00             	nopl   (%rax)

0000000000408db0 <http_parse_host_char>:
  408db0:	55                   	push   %rbp
  408db1:	48 89 e5             	mov    %rsp,%rbp
  408db4:	40 88 f0             	mov    %sil,%al
  408db7:	89 7d f8             	mov    %edi,-0x8(%rbp)
  408dba:	88 45 f7             	mov    %al,-0x9(%rbp)
  408dbd:	8b 45 f8             	mov    -0x8(%rbp),%eax
  408dc0:	83 c0 fe             	add    $0xfffffffe,%eax
  408dc3:	89 c1                	mov    %eax,%ecx
  408dc5:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
  408dc9:	83 e8 0a             	sub    $0xa,%eax
  408dcc:	0f 87 e9 03 00 00    	ja     4091bb <http_parse_host_char+0x40b>
  408dd2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  408dd6:	48 8b 04 c5 20 04 41 	mov    0x410420(,%rax,8),%rax
  408ddd:	00 
  408dde:	ff e0                	jmpq   *%rax
  408de0:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  408de4:	83 f8 40             	cmp    $0x40,%eax
  408de7:	0f 85 0c 00 00 00    	jne    408df9 <http_parse_host_char+0x49>
  408ded:	c7 45 fc 04 00 00 00 	movl   $0x4,-0x4(%rbp)
  408df4:	e9 ce 03 00 00       	jmpq   4091c7 <http_parse_host_char+0x417>
  408df9:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  408dfd:	83 c8 20             	or     $0x20,%eax
  408e00:	0f b6 c0             	movzbl %al,%eax
  408e03:	83 f8 61             	cmp    $0x61,%eax
  408e06:	0f 8c 13 00 00 00    	jl     408e1f <http_parse_host_char+0x6f>
  408e0c:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  408e10:	83 c8 20             	or     $0x20,%eax
  408e13:	0f b6 c0             	movzbl %al,%eax
  408e16:	83 f8 7a             	cmp    $0x7a,%eax
  408e19:	0f 8e f7 00 00 00    	jle    408f16 <http_parse_host_char+0x166>
  408e1f:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  408e23:	83 f8 30             	cmp    $0x30,%eax
  408e26:	0f 8c 0d 00 00 00    	jl     408e39 <http_parse_host_char+0x89>
  408e2c:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  408e30:	83 f8 39             	cmp    $0x39,%eax
  408e33:	0f 8e dd 00 00 00    	jle    408f16 <http_parse_host_char+0x166>
  408e39:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  408e3d:	83 f8 2d             	cmp    $0x2d,%eax
  408e40:	0f 84 d0 00 00 00    	je     408f16 <http_parse_host_char+0x166>
  408e46:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  408e4a:	83 f8 5f             	cmp    $0x5f,%eax
  408e4d:	0f 84 c3 00 00 00    	je     408f16 <http_parse_host_char+0x166>
  408e53:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  408e57:	83 f8 2e             	cmp    $0x2e,%eax
  408e5a:	0f 84 b6 00 00 00    	je     408f16 <http_parse_host_char+0x166>
  408e60:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  408e64:	83 f8 21             	cmp    $0x21,%eax
  408e67:	0f 84 a9 00 00 00    	je     408f16 <http_parse_host_char+0x166>
  408e6d:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  408e71:	83 f8 7e             	cmp    $0x7e,%eax
  408e74:	0f 84 9c 00 00 00    	je     408f16 <http_parse_host_char+0x166>
  408e7a:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  408e7e:	83 f8 2a             	cmp    $0x2a,%eax
  408e81:	0f 84 8f 00 00 00    	je     408f16 <http_parse_host_char+0x166>
  408e87:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  408e8b:	83 f8 27             	cmp    $0x27,%eax
  408e8e:	0f 84 82 00 00 00    	je     408f16 <http_parse_host_char+0x166>
  408e94:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  408e98:	83 f8 28             	cmp    $0x28,%eax
  408e9b:	0f 84 75 00 00 00    	je     408f16 <http_parse_host_char+0x166>
  408ea1:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  408ea5:	83 f8 29             	cmp    $0x29,%eax
  408ea8:	0f 84 68 00 00 00    	je     408f16 <http_parse_host_char+0x166>
  408eae:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  408eb2:	83 f8 25             	cmp    $0x25,%eax
  408eb5:	0f 84 5b 00 00 00    	je     408f16 <http_parse_host_char+0x166>
  408ebb:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  408ebf:	83 f8 3b             	cmp    $0x3b,%eax
  408ec2:	0f 84 4e 00 00 00    	je     408f16 <http_parse_host_char+0x166>
  408ec8:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  408ecc:	83 f8 3a             	cmp    $0x3a,%eax
  408ecf:	0f 84 41 00 00 00    	je     408f16 <http_parse_host_char+0x166>
  408ed5:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  408ed9:	83 f8 26             	cmp    $0x26,%eax
  408edc:	0f 84 34 00 00 00    	je     408f16 <http_parse_host_char+0x166>
  408ee2:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  408ee6:	83 f8 3d             	cmp    $0x3d,%eax
  408ee9:	0f 84 27 00 00 00    	je     408f16 <http_parse_host_char+0x166>
  408eef:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  408ef3:	83 f8 2b             	cmp    $0x2b,%eax
  408ef6:	0f 84 1a 00 00 00    	je     408f16 <http_parse_host_char+0x166>
  408efc:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  408f00:	83 f8 24             	cmp    $0x24,%eax
  408f03:	0f 84 0d 00 00 00    	je     408f16 <http_parse_host_char+0x166>
  408f09:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  408f0d:	83 f8 2c             	cmp    $0x2c,%eax
  408f10:	0f 85 0c 00 00 00    	jne    408f22 <http_parse_host_char+0x172>
  408f16:	c7 45 fc 03 00 00 00 	movl   $0x3,-0x4(%rbp)
  408f1d:	e9 a5 02 00 00       	jmpq   4091c7 <http_parse_host_char+0x417>
  408f22:	e9 99 02 00 00       	jmpq   4091c0 <http_parse_host_char+0x410>
  408f27:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  408f2b:	83 f8 5b             	cmp    $0x5b,%eax
  408f2e:	0f 85 0c 00 00 00    	jne    408f40 <http_parse_host_char+0x190>
  408f34:	c7 45 fc 05 00 00 00 	movl   $0x5,-0x4(%rbp)
  408f3b:	e9 87 02 00 00       	jmpq   4091c7 <http_parse_host_char+0x417>
  408f40:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  408f44:	83 c8 20             	or     $0x20,%eax
  408f47:	0f b6 c0             	movzbl %al,%eax
  408f4a:	83 f8 61             	cmp    $0x61,%eax
  408f4d:	0f 8c 13 00 00 00    	jl     408f66 <http_parse_host_char+0x1b6>
  408f53:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  408f57:	83 c8 20             	or     $0x20,%eax
  408f5a:	0f b6 c0             	movzbl %al,%eax
  408f5d:	83 f8 7a             	cmp    $0x7a,%eax
  408f60:	0f 8e 34 00 00 00    	jle    408f9a <http_parse_host_char+0x1ea>
  408f66:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  408f6a:	83 f8 30             	cmp    $0x30,%eax
  408f6d:	0f 8c 0d 00 00 00    	jl     408f80 <http_parse_host_char+0x1d0>
  408f73:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  408f77:	83 f8 39             	cmp    $0x39,%eax
  408f7a:	0f 8e 1a 00 00 00    	jle    408f9a <http_parse_host_char+0x1ea>
  408f80:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  408f84:	83 f8 2e             	cmp    $0x2e,%eax
  408f87:	0f 84 0d 00 00 00    	je     408f9a <http_parse_host_char+0x1ea>
  408f8d:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  408f91:	83 f8 2d             	cmp    $0x2d,%eax
  408f94:	0f 85 0c 00 00 00    	jne    408fa6 <http_parse_host_char+0x1f6>
  408f9a:	c7 45 fc 06 00 00 00 	movl   $0x6,-0x4(%rbp)
  408fa1:	e9 21 02 00 00       	jmpq   4091c7 <http_parse_host_char+0x417>
  408fa6:	e9 15 02 00 00       	jmpq   4091c0 <http_parse_host_char+0x410>
  408fab:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  408faf:	83 c8 20             	or     $0x20,%eax
  408fb2:	0f b6 c0             	movzbl %al,%eax
  408fb5:	83 f8 61             	cmp    $0x61,%eax
  408fb8:	0f 8c 13 00 00 00    	jl     408fd1 <http_parse_host_char+0x221>
  408fbe:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  408fc2:	83 c8 20             	or     $0x20,%eax
  408fc5:	0f b6 c0             	movzbl %al,%eax
  408fc8:	83 f8 7a             	cmp    $0x7a,%eax
  408fcb:	0f 8e 34 00 00 00    	jle    409005 <http_parse_host_char+0x255>
  408fd1:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  408fd5:	83 f8 30             	cmp    $0x30,%eax
  408fd8:	0f 8c 0d 00 00 00    	jl     408feb <http_parse_host_char+0x23b>
  408fde:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  408fe2:	83 f8 39             	cmp    $0x39,%eax
  408fe5:	0f 8e 1a 00 00 00    	jle    409005 <http_parse_host_char+0x255>
  408feb:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  408fef:	83 f8 2e             	cmp    $0x2e,%eax
  408ff2:	0f 84 0d 00 00 00    	je     409005 <http_parse_host_char+0x255>
  408ff8:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  408ffc:	83 f8 2d             	cmp    $0x2d,%eax
  408fff:	0f 85 0c 00 00 00    	jne    409011 <http_parse_host_char+0x261>
  409005:	c7 45 fc 06 00 00 00 	movl   $0x6,-0x4(%rbp)
  40900c:	e9 b6 01 00 00       	jmpq   4091c7 <http_parse_host_char+0x417>
  409011:	e9 00 00 00 00       	jmpq   409016 <http_parse_host_char+0x266>
  409016:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  40901a:	83 f8 3a             	cmp    $0x3a,%eax
  40901d:	0f 85 0c 00 00 00    	jne    40902f <http_parse_host_char+0x27f>
  409023:	c7 45 fc 0b 00 00 00 	movl   $0xb,-0x4(%rbp)
  40902a:	e9 98 01 00 00       	jmpq   4091c7 <http_parse_host_char+0x417>
  40902f:	e9 8c 01 00 00       	jmpq   4091c0 <http_parse_host_char+0x410>
  409034:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  409038:	83 f8 5d             	cmp    $0x5d,%eax
  40903b:	0f 85 0c 00 00 00    	jne    40904d <http_parse_host_char+0x29d>
  409041:	c7 45 fc 08 00 00 00 	movl   $0x8,-0x4(%rbp)
  409048:	e9 7a 01 00 00       	jmpq   4091c7 <http_parse_host_char+0x417>
  40904d:	e9 00 00 00 00       	jmpq   409052 <http_parse_host_char+0x2a2>
  409052:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  409056:	83 f8 30             	cmp    $0x30,%eax
  409059:	0f 8c 0d 00 00 00    	jl     40906c <http_parse_host_char+0x2bc>
  40905f:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  409063:	83 f8 39             	cmp    $0x39,%eax
  409066:	0f 8e 40 00 00 00    	jle    4090ac <http_parse_host_char+0x2fc>
  40906c:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  409070:	83 c8 20             	or     $0x20,%eax
  409073:	0f b6 c0             	movzbl %al,%eax
  409076:	83 f8 61             	cmp    $0x61,%eax
  409079:	0f 8c 13 00 00 00    	jl     409092 <http_parse_host_char+0x2e2>
  40907f:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  409083:	83 c8 20             	or     $0x20,%eax
  409086:	0f b6 c0             	movzbl %al,%eax
  409089:	83 f8 66             	cmp    $0x66,%eax
  40908c:	0f 8e 1a 00 00 00    	jle    4090ac <http_parse_host_char+0x2fc>
  409092:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  409096:	83 f8 3a             	cmp    $0x3a,%eax
  409099:	0f 84 0d 00 00 00    	je     4090ac <http_parse_host_char+0x2fc>
  40909f:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  4090a3:	83 f8 2e             	cmp    $0x2e,%eax
  4090a6:	0f 85 0c 00 00 00    	jne    4090b8 <http_parse_host_char+0x308>
  4090ac:	c7 45 fc 07 00 00 00 	movl   $0x7,-0x4(%rbp)
  4090b3:	e9 0f 01 00 00       	jmpq   4091c7 <http_parse_host_char+0x417>
  4090b8:	83 7d f8 07          	cmpl   $0x7,-0x8(%rbp)
  4090bc:	0f 85 19 00 00 00    	jne    4090db <http_parse_host_char+0x32b>
  4090c2:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  4090c6:	83 f8 25             	cmp    $0x25,%eax
  4090c9:	0f 85 0c 00 00 00    	jne    4090db <http_parse_host_char+0x32b>
  4090cf:	c7 45 fc 09 00 00 00 	movl   $0x9,-0x4(%rbp)
  4090d6:	e9 ec 00 00 00       	jmpq   4091c7 <http_parse_host_char+0x417>
  4090db:	e9 e0 00 00 00       	jmpq   4091c0 <http_parse_host_char+0x410>
  4090e0:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  4090e4:	83 f8 5d             	cmp    $0x5d,%eax
  4090e7:	0f 85 0c 00 00 00    	jne    4090f9 <http_parse_host_char+0x349>
  4090ed:	c7 45 fc 08 00 00 00 	movl   $0x8,-0x4(%rbp)
  4090f4:	e9 ce 00 00 00       	jmpq   4091c7 <http_parse_host_char+0x417>
  4090f9:	e9 00 00 00 00       	jmpq   4090fe <http_parse_host_char+0x34e>
  4090fe:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  409102:	83 c8 20             	or     $0x20,%eax
  409105:	0f b6 c0             	movzbl %al,%eax
  409108:	83 f8 61             	cmp    $0x61,%eax
  40910b:	0f 8c 13 00 00 00    	jl     409124 <http_parse_host_char+0x374>
  409111:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  409115:	83 c8 20             	or     $0x20,%eax
  409118:	0f b6 c0             	movzbl %al,%eax
  40911b:	83 f8 7a             	cmp    $0x7a,%eax
  40911e:	0f 8e 5b 00 00 00    	jle    40917f <http_parse_host_char+0x3cf>
  409124:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  409128:	83 f8 30             	cmp    $0x30,%eax
  40912b:	0f 8c 0d 00 00 00    	jl     40913e <http_parse_host_char+0x38e>
  409131:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  409135:	83 f8 39             	cmp    $0x39,%eax
  409138:	0f 8e 41 00 00 00    	jle    40917f <http_parse_host_char+0x3cf>
  40913e:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  409142:	83 f8 25             	cmp    $0x25,%eax
  409145:	0f 84 34 00 00 00    	je     40917f <http_parse_host_char+0x3cf>
  40914b:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  40914f:	83 f8 2e             	cmp    $0x2e,%eax
  409152:	0f 84 27 00 00 00    	je     40917f <http_parse_host_char+0x3cf>
  409158:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  40915c:	83 f8 2d             	cmp    $0x2d,%eax
  40915f:	0f 84 1a 00 00 00    	je     40917f <http_parse_host_char+0x3cf>
  409165:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  409169:	83 f8 5f             	cmp    $0x5f,%eax
  40916c:	0f 84 0d 00 00 00    	je     40917f <http_parse_host_char+0x3cf>
  409172:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  409176:	83 f8 7e             	cmp    $0x7e,%eax
  409179:	0f 85 0c 00 00 00    	jne    40918b <http_parse_host_char+0x3db>
  40917f:	c7 45 fc 0a 00 00 00 	movl   $0xa,-0x4(%rbp)
  409186:	e9 3c 00 00 00       	jmpq   4091c7 <http_parse_host_char+0x417>
  40918b:	e9 30 00 00 00       	jmpq   4091c0 <http_parse_host_char+0x410>
  409190:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  409194:	83 f8 30             	cmp    $0x30,%eax
  409197:	0f 8c 19 00 00 00    	jl     4091b6 <http_parse_host_char+0x406>
  40919d:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  4091a1:	83 f8 39             	cmp    $0x39,%eax
  4091a4:	0f 8f 0c 00 00 00    	jg     4091b6 <http_parse_host_char+0x406>
  4091aa:	c7 45 fc 0c 00 00 00 	movl   $0xc,-0x4(%rbp)
  4091b1:	e9 11 00 00 00       	jmpq   4091c7 <http_parse_host_char+0x417>
  4091b6:	e9 05 00 00 00       	jmpq   4091c0 <http_parse_host_char+0x410>
  4091bb:	e9 00 00 00 00       	jmpq   4091c0 <http_parse_host_char+0x410>
  4091c0:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
  4091c7:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4091ca:	5d                   	pop    %rbp
  4091cb:	c3                   	retq   
  4091cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004091d0 <strnlen>:
  4091d0:	55                   	push   %rbp
  4091d1:	48 89 e5             	mov    %rsp,%rbp
  4091d4:	48 83 ec 20          	sub    $0x20,%rsp
  4091d8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
  4091dc:	48 89 75 e8          	mov    %rsi,-0x18(%rbp)
  4091e0:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  4091e4:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  4091e8:	31 f6                	xor    %esi,%esi
  4091ea:	e8 d1 7e ff ff       	callq  4010c0 <memchr@plt>
  4091ef:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  4091f3:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
  4091f8:	0f 85 0d 00 00 00    	jne    40920b <strnlen+0x3b>
  4091fe:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  409202:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  409206:	e9 0f 00 00 00       	jmpq   40921a <strnlen+0x4a>
  40920b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40920f:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  409213:	48 29 c8             	sub    %rcx,%rax
  409216:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40921a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40921e:	48 83 c4 20          	add    $0x20,%rsp
  409222:	5d                   	pop    %rbp
  409223:	c3                   	retq   
  409224:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40922b:	00 00 00 
  40922e:	66 90                	xchg   %ax,%ax

0000000000409230 <strlncat>:
  409230:	55                   	push   %rbp
  409231:	48 89 e5             	mov    %rsp,%rbp
  409234:	48 83 ec 50          	sub    $0x50,%rsp
  409238:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40923c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  409240:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  409244:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
  409248:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  40924c:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
  409250:	e8 7b ff ff ff       	callq  4091d0 <strnlen>
  409255:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  409259:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  40925d:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
  409261:	e8 6a ff ff ff       	callq  4091d0 <strnlen>
  409266:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  40926a:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  40926e:	48 3b 45 f0          	cmp    -0x10(%rbp),%rax
  409272:	0f 83 60 00 00 00    	jae    4092d8 <strlncat+0xa8>
  409278:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40927c:	48 2b 45 d0          	sub    -0x30(%rbp),%rax
  409280:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  409284:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  409288:	48 3b 45 c8          	cmp    -0x38(%rbp),%rax
  40928c:	0f 83 0d 00 00 00    	jae    40929f <strlncat+0x6f>
  409292:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  409296:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
  40929a:	e9 0c 00 00 00       	jmpq   4092ab <strlncat+0x7b>
  40929f:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  4092a3:	48 83 e8 01          	sub    $0x1,%rax
  4092a7:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
  4092ab:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  4092af:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  4092b3:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  4092b7:	48 03 7d d0          	add    -0x30(%rbp),%rdi
  4092bb:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
  4092bf:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
  4092c3:	e8 38 7e ff ff       	callq  401100 <memcpy@plt>
  4092c8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4092cc:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
  4092d0:	48 03 4d c0          	add    -0x40(%rbp),%rcx
  4092d4:	c6 04 08 00          	movb   $0x0,(%rax,%rcx,1)
  4092d8:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4092dc:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  4092e0:	48 03 4d d0          	add    -0x30(%rbp),%rcx
  4092e4:	48 39 c8             	cmp    %rcx,%rax
  4092e7:	0f 86 05 00 00 00    	jbe    4092f2 <strlncat+0xc2>
  4092ed:	e9 28 00 00 00       	jmpq   40931a <strlncat+0xea>
  4092f2:	48 bf 74 40 41 00 00 	movabs $0x414074,%rdi
  4092f9:	00 00 00 
  4092fc:	48 be 86 40 41 00 00 	movabs $0x414086,%rsi
  409303:	00 00 00 
  409306:	ba 90 08 00 00       	mov    $0x890,%edx
  40930b:	48 b9 8d 40 41 00 00 	movabs $0x41408d,%rcx
  409312:	00 00 00 
  409315:	e8 76 7d ff ff       	callq  401090 <__assert_fail@plt>
  40931a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40931e:	48 03 45 d0          	add    -0x30(%rbp),%rax
  409322:	48 83 c4 50          	add    $0x50,%rsp
  409326:	5d                   	pop    %rbp
  409327:	c3                   	retq   
  409328:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40932f:	00 

0000000000409330 <strlncpy>:
  409330:	55                   	push   %rbp
  409331:	48 89 e5             	mov    %rsp,%rbp
  409334:	48 83 ec 40          	sub    $0x40,%rsp
  409338:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40933c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  409340:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  409344:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
  409348:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  40934c:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
  409350:	e8 7b fe ff ff       	callq  4091d0 <strnlen>
  409355:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  409359:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
  40935e:	0f 86 4c 00 00 00    	jbe    4093b0 <strlncpy+0x80>
  409364:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  409368:	48 3b 45 f0          	cmp    -0x10(%rbp),%rax
  40936c:	0f 83 0d 00 00 00    	jae    40937f <strlncpy+0x4f>
  409372:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  409376:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  40937a:	e9 0c 00 00 00       	jmpq   40938b <strlncpy+0x5b>
  40937f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  409383:	48 83 e8 01          	sub    $0x1,%rax
  409387:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  40938b:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  40938f:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  409393:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  409397:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
  40939b:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
  40939f:	e8 5c 7d ff ff       	callq  401100 <memcpy@plt>
  4093a4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4093a8:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
  4093ac:	c6 04 08 00          	movb   $0x0,(%rax,%rcx,1)
  4093b0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4093b4:	48 3b 45 d8          	cmp    -0x28(%rbp),%rax
  4093b8:	0f 86 05 00 00 00    	jbe    4093c3 <strlncpy+0x93>
  4093be:	e9 28 00 00 00       	jmpq   4093eb <strlncpy+0xbb>
  4093c3:	48 bf c3 40 41 00 00 	movabs $0x4140c3,%rdi
  4093ca:	00 00 00 
  4093cd:	48 be 86 40 41 00 00 	movabs $0x414086,%rsi
  4093d4:	00 00 00 
  4093d7:	ba a2 08 00 00       	mov    $0x8a2,%edx
  4093dc:	48 b9 ce 40 41 00 00 	movabs $0x4140ce,%rcx
  4093e3:	00 00 00 
  4093e6:	e8 a5 7c ff ff       	callq  401090 <__assert_fail@plt>
  4093eb:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4093ef:	48 83 c4 40          	add    $0x40,%rsp
  4093f3:	5d                   	pop    %rbp
  4093f4:	c3                   	retq   
  4093f5:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4093fc:	00 00 00 
  4093ff:	90                   	nop

0000000000409400 <request_url_cb>:
  409400:	55                   	push   %rbp
  409401:	48 89 e5             	mov    %rsp,%rbp
  409404:	48 83 ec 20          	sub    $0x20,%rsp
  409408:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40940c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  409410:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  409414:	48 b8 50 b7 8c 00 00 	movabs $0x8cb750,%rax
  40941b:	00 00 00 
  40941e:	48 39 45 f8          	cmp    %rax,-0x8(%rbp)
  409422:	0f 85 05 00 00 00    	jne    40942d <request_url_cb+0x2d>
  409428:	e9 28 00 00 00       	jmpq   409455 <request_url_cb+0x55>
  40942d:	48 bf 04 41 41 00 00 	movabs $0x414104,%rdi
  409434:	00 00 00 
  409437:	48 be 86 40 41 00 00 	movabs $0x414086,%rsi
  40943e:	00 00 00 
  409441:	ba a9 08 00 00       	mov    $0x8a9,%edx
  409446:	48 b9 11 41 41 00 00 	movabs $0x414111,%rcx
  40944d:	00 00 00 
  409450:	e8 3b 7c ff ff       	callq  401090 <__assert_fail@plt>
  409455:	48 63 04 25 58 bb 91 	movslq 0x91bb58,%rax
  40945c:	00 
  40945d:	48 bf 70 b7 8c 00 00 	movabs $0x8cb770,%rdi
  409464:	00 00 00 
  409467:	48 69 c0 c8 00 01 00 	imul   $0x100c8,%rax,%rax
  40946e:	48 01 c7             	add    %rax,%rdi
  409471:	48 81 c7 1c 10 00 00 	add    $0x101c,%rdi
  409478:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  40947c:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  409480:	be 00 08 00 00       	mov    $0x800,%esi
  409485:	e8 a6 fd ff ff       	callq  409230 <strlncat>
  40948a:	31 c0                	xor    %eax,%eax
  40948c:	48 83 c4 20          	add    $0x20,%rsp
  409490:	5d                   	pop    %rbp
  409491:	c3                   	retq   
  409492:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  409499:	00 00 00 
  40949c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004094a0 <header_field_cb>:
  4094a0:	55                   	push   %rbp
  4094a1:	48 89 e5             	mov    %rsp,%rbp
  4094a4:	48 83 ec 20          	sub    $0x20,%rsp
  4094a8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4094ac:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  4094b0:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  4094b4:	48 b8 50 b7 8c 00 00 	movabs $0x8cb750,%rax
  4094bb:	00 00 00 
  4094be:	48 39 45 f8          	cmp    %rax,-0x8(%rbp)
  4094c2:	0f 85 05 00 00 00    	jne    4094cd <header_field_cb+0x2d>
  4094c8:	e9 28 00 00 00       	jmpq   4094f5 <header_field_cb+0x55>
  4094cd:	48 bf 04 41 41 00 00 	movabs $0x414104,%rdi
  4094d4:	00 00 00 
  4094d7:	48 be 86 40 41 00 00 	movabs $0x414086,%rsi
  4094de:	00 00 00 
  4094e1:	ba b4 08 00 00       	mov    $0x8b4,%edx
  4094e6:	48 b9 49 41 41 00 00 	movabs $0x414149,%rcx
  4094ed:	00 00 00 
  4094f0:	e8 9b 7b ff ff       	callq  401090 <__assert_fail@plt>
  4094f5:	48 63 0c 25 58 bb 91 	movslq 0x91bb58,%rcx
  4094fc:	00 
  4094fd:	48 b8 70 b7 8c 00 00 	movabs $0x8cb770,%rax
  409504:	00 00 00 
  409507:	48 69 c9 c8 00 01 00 	imul   $0x100c8,%rcx,%rcx
  40950e:	48 01 c8             	add    %rcx,%rax
  409511:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  409515:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  409519:	83 b8 40 30 00 00 01 	cmpl   $0x1,0x3040(%rax)
  409520:	0f 84 13 00 00 00    	je     409539 <header_field_cb+0x99>
  409526:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40952a:	8b 88 3c 30 00 00    	mov    0x303c(%rax),%ecx
  409530:	83 c1 01             	add    $0x1,%ecx
  409533:	89 88 3c 30 00 00    	mov    %ecx,0x303c(%rax)
  409539:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
  40953d:	48 81 c7 44 30 00 00 	add    $0x3044,%rdi
  409544:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  409548:	8b 80 3c 30 00 00    	mov    0x303c(%rax),%eax
  40954e:	83 e8 01             	sub    $0x1,%eax
  409551:	48 98                	cltq   
  409553:	48 c1 e0 0c          	shl    $0xc,%rax
  409557:	48 01 c7             	add    %rax,%rdi
  40955a:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  40955e:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  409562:	be 00 08 00 00       	mov    $0x800,%esi
  409567:	e8 c4 fc ff ff       	callq  409230 <strlncat>
  40956c:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  409570:	c7 80 40 30 00 00 01 	movl   $0x1,0x3040(%rax)
  409577:	00 00 00 
  40957a:	31 c0                	xor    %eax,%eax
  40957c:	48 83 c4 20          	add    $0x20,%rsp
  409580:	5d                   	pop    %rbp
  409581:	c3                   	retq   
  409582:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  409589:	00 00 00 
  40958c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000409590 <header_value_cb>:
  409590:	55                   	push   %rbp
  409591:	48 89 e5             	mov    %rsp,%rbp
  409594:	48 83 ec 20          	sub    $0x20,%rsp
  409598:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40959c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  4095a0:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  4095a4:	48 b8 50 b7 8c 00 00 	movabs $0x8cb750,%rax
  4095ab:	00 00 00 
  4095ae:	48 39 45 f8          	cmp    %rax,-0x8(%rbp)
  4095b2:	0f 85 05 00 00 00    	jne    4095bd <header_value_cb+0x2d>
  4095b8:	e9 28 00 00 00       	jmpq   4095e5 <header_value_cb+0x55>
  4095bd:	48 bf 04 41 41 00 00 	movabs $0x414104,%rdi
  4095c4:	00 00 00 
  4095c7:	48 be 86 40 41 00 00 	movabs $0x414086,%rsi
  4095ce:	00 00 00 
  4095d1:	ba c7 08 00 00       	mov    $0x8c7,%edx
  4095d6:	48 b9 82 41 41 00 00 	movabs $0x414182,%rcx
  4095dd:	00 00 00 
  4095e0:	e8 ab 7a ff ff       	callq  401090 <__assert_fail@plt>
  4095e5:	48 63 0c 25 58 bb 91 	movslq 0x91bb58,%rcx
  4095ec:	00 
  4095ed:	48 b8 70 b7 8c 00 00 	movabs $0x8cb770,%rax
  4095f4:	00 00 00 
  4095f7:	48 69 c9 c8 00 01 00 	imul   $0x100c8,%rcx,%rcx
  4095fe:	48 01 c8             	add    %rcx,%rax
  409601:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  409605:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
  409609:	48 81 c7 44 30 00 00 	add    $0x3044,%rdi
  409610:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  409614:	8b 80 3c 30 00 00    	mov    0x303c(%rax),%eax
  40961a:	83 e8 01             	sub    $0x1,%eax
  40961d:	48 98                	cltq   
  40961f:	48 c1 e0 0c          	shl    $0xc,%rax
  409623:	48 01 c7             	add    %rax,%rdi
  409626:	48 81 c7 00 08 00 00 	add    $0x800,%rdi
  40962d:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  409631:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  409635:	be 00 08 00 00       	mov    $0x800,%esi
  40963a:	e8 f1 fb ff ff       	callq  409230 <strlncat>
  40963f:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  409643:	c7 80 40 30 00 00 02 	movl   $0x2,0x3040(%rax)
  40964a:	00 00 00 
  40964d:	31 c0                	xor    %eax,%eax
  40964f:	48 83 c4 20          	add    $0x20,%rsp
  409653:	5d                   	pop    %rbp
  409654:	c3                   	retq   
  409655:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40965c:	00 00 00 
  40965f:	90                   	nop

0000000000409660 <check_body_is_final>:
  409660:	55                   	push   %rbp
  409661:	48 89 e5             	mov    %rsp,%rbp
  409664:	48 83 ec 10          	sub    $0x10,%rsp
  409668:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40966c:	48 63 0c 25 58 bb 91 	movslq 0x91bb58,%rcx
  409673:	00 
  409674:	48 b8 70 b7 8c 00 00 	movabs $0x8cb770,%rax
  40967b:	00 00 00 
  40967e:	48 69 c9 c8 00 01 00 	imul   $0x100c8,%rcx,%rcx
  409685:	48 01 c8             	add    %rcx,%rax
  409688:	83 b8 bc 00 01 00 00 	cmpl   $0x0,0x100bc(%rax)
  40968f:	0f 84 41 00 00 00    	je     4096d6 <check_body_is_final+0x76>
  409695:	48 8b 3c 25 40 b7 8c 	mov    0x8cb740,%rdi
  40969c:	00 
  40969d:	48 be bb 41 41 00 00 	movabs $0x4141bb,%rsi
  4096a4:	00 00 00 
  4096a7:	b0 00                	mov    $0x0,%al
  4096a9:	e8 42 7a ff ff       	callq  4010f0 <fprintf@plt>
  4096ae:	48 bf 7e 5c 41 00 00 	movabs $0x415c7e,%rdi
  4096b5:	00 00 00 
  4096b8:	48 be 86 40 41 00 00 	movabs $0x414086,%rsi
  4096bf:	00 00 00 
  4096c2:	ba db 08 00 00       	mov    $0x8db,%edx
  4096c7:	48 b9 21 42 41 00 00 	movabs $0x414221,%rcx
  4096ce:	00 00 00 
  4096d1:	e8 ba 79 ff ff       	callq  401090 <__assert_fail@plt>
  4096d6:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  4096da:	e8 71 f6 ff ff       	callq  408d50 <http_body_is_final>
  4096df:	89 c1                	mov    %eax,%ecx
  4096e1:	48 63 14 25 58 bb 91 	movslq 0x91bb58,%rdx
  4096e8:	00 
  4096e9:	48 b8 70 b7 8c 00 00 	movabs $0x8cb770,%rax
  4096f0:	00 00 00 
  4096f3:	48 69 d2 c8 00 01 00 	imul   $0x100c8,%rdx,%rdx
  4096fa:	48 01 d0             	add    %rdx,%rax
  4096fd:	89 88 bc 00 01 00    	mov    %ecx,0x100bc(%rax)
  409703:	48 83 c4 10          	add    $0x10,%rsp
  409707:	5d                   	pop    %rbp
  409708:	c3                   	retq   
  409709:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000409710 <body_cb>:
  409710:	55                   	push   %rbp
  409711:	48 89 e5             	mov    %rsp,%rbp
  409714:	48 83 ec 20          	sub    $0x20,%rsp
  409718:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40971c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  409720:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  409724:	48 b8 50 b7 8c 00 00 	movabs $0x8cb750,%rax
  40972b:	00 00 00 
  40972e:	48 39 45 f8          	cmp    %rax,-0x8(%rbp)
  409732:	0f 85 05 00 00 00    	jne    40973d <body_cb+0x2d>
  409738:	e9 28 00 00 00       	jmpq   409765 <body_cb+0x55>
  40973d:	48 bf 04 41 41 00 00 	movabs $0x414104,%rdi
  409744:	00 00 00 
  409747:	48 be 86 40 41 00 00 	movabs $0x414086,%rsi
  40974e:	00 00 00 
  409751:	ba e4 08 00 00       	mov    $0x8e4,%edx
  409756:	48 b9 4f 42 41 00 00 	movabs $0x41424f,%rcx
  40975d:	00 00 00 
  409760:	e8 2b 79 ff ff       	callq  401090 <__assert_fail@plt>
  409765:	48 63 04 25 58 bb 91 	movslq 0x91bb58,%rax
  40976c:	00 
  40976d:	48 bf 70 b7 8c 00 00 	movabs $0x8cb770,%rdi
  409774:	00 00 00 
  409777:	48 69 c0 c8 00 01 00 	imul   $0x100c8,%rax,%rax
  40977e:	48 01 c7             	add    %rax,%rdi
  409781:	48 81 c7 1c 28 00 00 	add    $0x281c,%rdi
  409788:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  40978c:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  409790:	be 00 08 00 00       	mov    $0x800,%esi
  409795:	e8 96 fa ff ff       	callq  409230 <strlncat>
  40979a:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  40979e:	48 63 14 25 58 bb 91 	movslq 0x91bb58,%rdx
  4097a5:	00 
  4097a6:	48 b8 70 b7 8c 00 00 	movabs $0x8cb770,%rax
  4097ad:	00 00 00 
  4097b0:	48 69 d2 c8 00 01 00 	imul   $0x100c8,%rdx,%rdx
  4097b7:	48 01 d0             	add    %rdx,%rax
  4097ba:	48 03 88 20 30 00 00 	add    0x3020(%rax),%rcx
  4097c1:	48 89 88 20 30 00 00 	mov    %rcx,0x3020(%rax)
  4097c8:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  4097cc:	e8 8f fe ff ff       	callq  409660 <check_body_is_final>
  4097d1:	31 c0                	xor    %eax,%eax
  4097d3:	48 83 c4 20          	add    $0x20,%rsp
  4097d7:	5d                   	pop    %rbp
  4097d8:	c3                   	retq   
  4097d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004097e0 <count_body_cb>:
  4097e0:	55                   	push   %rbp
  4097e1:	48 89 e5             	mov    %rsp,%rbp
  4097e4:	48 83 ec 20          	sub    $0x20,%rsp
  4097e8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4097ec:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  4097f0:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  4097f4:	48 b8 50 b7 8c 00 00 	movabs $0x8cb750,%rax
  4097fb:	00 00 00 
  4097fe:	48 39 45 f8          	cmp    %rax,-0x8(%rbp)
  409802:	0f 85 05 00 00 00    	jne    40980d <count_body_cb+0x2d>
  409808:	e9 28 00 00 00       	jmpq   409835 <count_body_cb+0x55>
  40980d:	48 bf 04 41 41 00 00 	movabs $0x414104,%rdi
  409814:	00 00 00 
  409817:	48 be 86 40 41 00 00 	movabs $0x414086,%rsi
  40981e:	00 00 00 
  409821:	ba f2 08 00 00       	mov    $0x8f2,%edx
  409826:	48 b9 80 42 41 00 00 	movabs $0x414280,%rcx
  40982d:	00 00 00 
  409830:	e8 5b 78 ff ff       	callq  401090 <__assert_fail@plt>
  409835:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
  40983a:	0f 84 05 00 00 00    	je     409845 <count_body_cb+0x65>
  409840:	e9 28 00 00 00       	jmpq   40986d <count_body_cb+0x8d>
  409845:	48 bf b7 42 41 00 00 	movabs $0x4142b7,%rdi
  40984c:	00 00 00 
  40984f:	48 be 86 40 41 00 00 	movabs $0x414086,%rsi
  409856:	00 00 00 
  409859:	ba f3 08 00 00       	mov    $0x8f3,%edx
  40985e:	48 b9 80 42 41 00 00 	movabs $0x414280,%rcx
  409865:	00 00 00 
  409868:	e8 23 78 ff ff       	callq  401090 <__assert_fail@plt>
  40986d:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  409871:	48 63 14 25 58 bb 91 	movslq 0x91bb58,%rdx
  409878:	00 
  409879:	48 b8 70 b7 8c 00 00 	movabs $0x8cb770,%rax
  409880:	00 00 00 
  409883:	48 69 d2 c8 00 01 00 	imul   $0x100c8,%rdx,%rdx
  40988a:	48 01 d0             	add    %rdx,%rax
  40988d:	48 03 88 20 30 00 00 	add    0x3020(%rax),%rcx
  409894:	48 89 88 20 30 00 00 	mov    %rcx,0x3020(%rax)
  40989b:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  40989f:	e8 bc fd ff ff       	callq  409660 <check_body_is_final>
  4098a4:	31 c0                	xor    %eax,%eax
  4098a6:	48 83 c4 20          	add    $0x20,%rsp
  4098aa:	5d                   	pop    %rbp
  4098ab:	c3                   	retq   
  4098ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004098b0 <message_begin_cb>:
  4098b0:	55                   	push   %rbp
  4098b1:	48 89 e5             	mov    %rsp,%rbp
  4098b4:	48 83 ec 10          	sub    $0x10,%rsp
  4098b8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4098bc:	48 b8 50 b7 8c 00 00 	movabs $0x8cb750,%rax
  4098c3:	00 00 00 
  4098c6:	48 39 45 f8          	cmp    %rax,-0x8(%rbp)
  4098ca:	0f 85 05 00 00 00    	jne    4098d5 <message_begin_cb+0x25>
  4098d0:	e9 28 00 00 00       	jmpq   4098fd <message_begin_cb+0x4d>
  4098d5:	48 bf 04 41 41 00 00 	movabs $0x414104,%rdi
  4098dc:	00 00 00 
  4098df:	48 be 86 40 41 00 00 	movabs $0x414086,%rsi
  4098e6:	00 00 00 
  4098e9:	ba fc 08 00 00       	mov    $0x8fc,%edx
  4098ee:	48 b9 bb 42 41 00 00 	movabs $0x4142bb,%rcx
  4098f5:	00 00 00 
  4098f8:	e8 93 77 ff ff       	callq  401090 <__assert_fail@plt>
  4098fd:	48 63 0c 25 58 bb 91 	movslq 0x91bb58,%rcx
  409904:	00 
  409905:	48 b8 70 b7 8c 00 00 	movabs $0x8cb770,%rax
  40990c:	00 00 00 
  40990f:	48 69 c9 c8 00 01 00 	imul   $0x100c8,%rcx,%rcx
  409916:	48 01 c8             	add    %rcx,%rax
  409919:	83 b8 a8 00 01 00 00 	cmpl   $0x0,0x100a8(%rax)
  409920:	0f 85 05 00 00 00    	jne    40992b <message_begin_cb+0x7b>
  409926:	e9 28 00 00 00       	jmpq   409953 <message_begin_cb+0xa3>
  40992b:	48 bf df 42 41 00 00 	movabs $0x4142df,%rdi
  409932:	00 00 00 
  409935:	48 be 86 40 41 00 00 	movabs $0x414086,%rsi
  40993c:	00 00 00 
  40993f:	ba fd 08 00 00       	mov    $0x8fd,%edx
  409944:	48 b9 bb 42 41 00 00 	movabs $0x4142bb,%rcx
  40994b:	00 00 00 
  40994e:	e8 3d 77 ff ff       	callq  401090 <__assert_fail@plt>
  409953:	48 63 0c 25 58 bb 91 	movslq 0x91bb58,%rcx
  40995a:	00 
  40995b:	48 b8 70 b7 8c 00 00 	movabs $0x8cb770,%rax
  409962:	00 00 00 
  409965:	48 69 c9 c8 00 01 00 	imul   $0x100c8,%rcx,%rcx
  40996c:	48 01 c8             	add    %rcx,%rax
  40996f:	c7 80 a8 00 01 00 01 	movl   $0x1,0x100a8(%rax)
  409976:	00 00 00 
  409979:	31 c0                	xor    %eax,%eax
  40997b:	48 83 c4 10          	add    $0x10,%rsp
  40997f:	5d                   	pop    %rbp
  409980:	c3                   	retq   
  409981:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  409988:	00 00 00 
  40998b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000409990 <headers_complete_cb>:
  409990:	55                   	push   %rbp
  409991:	48 89 e5             	mov    %rsp,%rbp
  409994:	48 83 ec 10          	sub    $0x10,%rsp
  409998:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40999c:	48 b8 50 b7 8c 00 00 	movabs $0x8cb750,%rax
  4099a3:	00 00 00 
  4099a6:	48 39 45 f8          	cmp    %rax,-0x8(%rbp)
  4099aa:	0f 85 05 00 00 00    	jne    4099b5 <headers_complete_cb+0x25>
  4099b0:	e9 28 00 00 00       	jmpq   4099dd <headers_complete_cb+0x4d>
  4099b5:	48 bf 04 41 41 00 00 	movabs $0x414104,%rdi
  4099bc:	00 00 00 
  4099bf:	48 be 86 40 41 00 00 	movabs $0x414086,%rsi
  4099c6:	00 00 00 
  4099c9:	ba 05 09 00 00       	mov    $0x905,%edx
  4099ce:	48 b9 0f 43 41 00 00 	movabs $0x41430f,%rcx
  4099d5:	00 00 00 
  4099d8:	e8 b3 76 ff ff       	callq  401090 <__assert_fail@plt>
  4099dd:	8b 0c 25 64 b7 8c 00 	mov    0x8cb764,%ecx
  4099e4:	c1 e9 10             	shr    $0x10,%ecx
  4099e7:	81 e1 ff 00 00 00    	and    $0xff,%ecx
  4099ed:	48 63 14 25 58 bb 91 	movslq 0x91bb58,%rdx
  4099f4:	00 
  4099f5:	48 b8 70 b7 8c 00 00 	movabs $0x8cb770,%rax
  4099fc:	00 00 00 
  4099ff:	48 69 d2 c8 00 01 00 	imul   $0x100c8,%rdx,%rdx
  409a06:	48 01 d0             	add    %rdx,%rax
  409a09:	89 48 14             	mov    %ecx,0x14(%rax)
  409a0c:	8b 0c 25 64 b7 8c 00 	mov    0x8cb764,%ecx
  409a13:	81 e1 ff ff 00 00    	and    $0xffff,%ecx
  409a19:	48 63 14 25 58 bb 91 	movslq 0x91bb58,%rdx
  409a20:	00 
  409a21:	48 b8 70 b7 8c 00 00 	movabs $0x8cb770,%rax
  409a28:	00 00 00 
  409a2b:	48 69 d2 c8 00 01 00 	imul   $0x100c8,%rdx,%rdx
  409a32:	48 01 d0             	add    %rdx,%rax
  409a35:	89 48 18             	mov    %ecx,0x18(%rax)
  409a38:	66 8b 0c 25 60 b7 8c 	mov    0x8cb760,%cx
  409a3f:	00 
  409a40:	48 63 14 25 58 bb 91 	movslq 0x91bb58,%rdx
  409a47:	00 
  409a48:	48 b8 70 b7 8c 00 00 	movabs $0x8cb770,%rax
  409a4f:	00 00 00 
  409a52:	48 69 d2 c8 00 01 00 	imul   $0x100c8,%rdx,%rdx
  409a59:	48 01 d0             	add    %rdx,%rax
  409a5c:	66 89 88 98 00 01 00 	mov    %cx,0x10098(%rax)
  409a63:	66 8b 0c 25 62 b7 8c 	mov    0x8cb762,%cx
  409a6a:	00 
  409a6b:	48 63 14 25 58 bb 91 	movslq 0x91bb58,%rdx
  409a72:	00 
  409a73:	48 b8 70 b7 8c 00 00 	movabs $0x8cb770,%rax
  409a7a:	00 00 00 
  409a7d:	48 69 d2 c8 00 01 00 	imul   $0x100c8,%rdx,%rdx
  409a84:	48 01 d0             	add    %rdx,%rax
  409a87:	66 89 88 9a 00 01 00 	mov    %cx,0x1009a(%rax)
  409a8e:	48 8b 0c 25 58 b7 8c 	mov    0x8cb758,%rcx
  409a95:	00 
  409a96:	48 63 14 25 58 bb 91 	movslq 0x91bb58,%rdx
  409a9d:	00 
  409a9e:	48 b8 70 b7 8c 00 00 	movabs $0x8cb770,%rax
  409aa5:	00 00 00 
  409aa8:	48 69 d2 c8 00 01 00 	imul   $0x100c8,%rdx,%rdx
  409aaf:	48 01 d0             	add    %rdx,%rax
  409ab2:	48 89 88 a0 00 01 00 	mov    %rcx,0x100a0(%rax)
  409ab9:	48 63 0c 25 58 bb 91 	movslq 0x91bb58,%rcx
  409ac0:	00 
  409ac1:	48 b8 70 b7 8c 00 00 	movabs $0x8cb770,%rax
  409ac8:	00 00 00 
  409acb:	48 69 c9 c8 00 01 00 	imul   $0x100c8,%rcx,%rcx
  409ad2:	48 01 c8             	add    %rcx,%rax
  409ad5:	c7 80 ac 00 01 00 01 	movl   $0x1,0x100ac(%rax)
  409adc:	00 00 00 
  409adf:	48 bf 50 b7 8c 00 00 	movabs $0x8cb750,%rdi
  409ae6:	00 00 00 
  409ae9:	e8 e2 e2 ff ff       	callq  407dd0 <http_should_keep_alive>
  409aee:	89 c1                	mov    %eax,%ecx
  409af0:	48 63 14 25 58 bb 91 	movslq 0x91bb58,%rdx
  409af7:	00 
  409af8:	48 b8 70 b7 8c 00 00 	movabs $0x8cb770,%rax
  409aff:	00 00 00 
  409b02:	48 69 d2 c8 00 01 00 	imul   $0x100c8,%rdx,%rdx
  409b09:	48 01 d0             	add    %rdx,%rax
  409b0c:	89 88 44 00 01 00    	mov    %ecx,0x10044(%rax)
  409b12:	31 c0                	xor    %eax,%eax
  409b14:	48 83 c4 10          	add    $0x10,%rsp
  409b18:	5d                   	pop    %rbp
  409b19:	c3                   	retq   
  409b1a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000409b20 <message_complete_cb>:
  409b20:	55                   	push   %rbp
  409b21:	48 89 e5             	mov    %rsp,%rbp
  409b24:	48 83 ec 10          	sub    $0x10,%rsp
  409b28:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  409b2c:	48 b8 50 b7 8c 00 00 	movabs $0x8cb750,%rax
  409b33:	00 00 00 
  409b36:	48 39 45 f8          	cmp    %rax,-0x8(%rbp)
  409b3a:	0f 85 05 00 00 00    	jne    409b45 <message_complete_cb+0x25>
  409b40:	e9 28 00 00 00       	jmpq   409b6d <message_complete_cb+0x4d>
  409b45:	48 bf 04 41 41 00 00 	movabs $0x414104,%rdi
  409b4c:	00 00 00 
  409b4f:	48 be 86 40 41 00 00 	movabs $0x414086,%rsi
  409b56:	00 00 00 
  409b59:	ba 13 09 00 00       	mov    $0x913,%edx
  409b5e:	48 b9 36 43 41 00 00 	movabs $0x414336,%rcx
  409b65:	00 00 00 
  409b68:	e8 23 75 ff ff       	callq  401090 <__assert_fail@plt>
  409b6d:	48 63 0c 25 58 bb 91 	movslq 0x91bb58,%rcx
  409b74:	00 
  409b75:	48 b8 70 b7 8c 00 00 	movabs $0x8cb770,%rax
  409b7c:	00 00 00 
  409b7f:	48 69 c9 c8 00 01 00 	imul   $0x100c8,%rcx,%rcx
  409b86:	48 01 c8             	add    %rcx,%rax
  409b89:	8b 80 44 00 01 00    	mov    0x10044(%rax),%eax
  409b8f:	89 45 f4             	mov    %eax,-0xc(%rbp)
  409b92:	48 bf 50 b7 8c 00 00 	movabs $0x8cb750,%rdi
  409b99:	00 00 00 
  409b9c:	e8 2f e2 ff ff       	callq  407dd0 <http_should_keep_alive>
  409ba1:	89 c1                	mov    %eax,%ecx
  409ba3:	8b 45 f4             	mov    -0xc(%rbp),%eax
  409ba6:	39 c8                	cmp    %ecx,%eax
  409ba8:	0f 84 41 00 00 00    	je     409bef <message_complete_cb+0xcf>
  409bae:	48 8b 3c 25 40 b7 8c 	mov    0x8cb740,%rdi
  409bb5:	00 
  409bb6:	48 be 5d 43 41 00 00 	movabs $0x41435d,%rsi
  409bbd:	00 00 00 
  409bc0:	b0 00                	mov    $0x0,%al
  409bc2:	e8 29 75 ff ff       	callq  4010f0 <fprintf@plt>
  409bc7:	48 bf 7e 5c 41 00 00 	movabs $0x415c7e,%rdi
  409bce:	00 00 00 
  409bd1:	48 be 86 40 41 00 00 	movabs $0x414086,%rsi
  409bd8:	00 00 00 
  409bdb:	ba 1a 09 00 00       	mov    $0x91a,%edx
  409be0:	48 b9 36 43 41 00 00 	movabs $0x414336,%rcx
  409be7:	00 00 00 
  409bea:	e8 a1 74 ff ff       	callq  401090 <__assert_fail@plt>
  409bef:	48 63 0c 25 58 bb 91 	movslq 0x91bb58,%rcx
  409bf6:	00 
  409bf7:	48 b8 70 b7 8c 00 00 	movabs $0x8cb770,%rax
  409bfe:	00 00 00 
  409c01:	48 69 c9 c8 00 01 00 	imul   $0x100c8,%rcx,%rcx
  409c08:	48 01 c8             	add    %rcx,%rax
  409c0b:	48 83 b8 20 30 00 00 	cmpq   $0x0,0x3020(%rax)
  409c12:	00 
  409c13:	0f 84 7c 00 00 00    	je     409c95 <message_complete_cb+0x175>
  409c19:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  409c1d:	e8 2e f1 ff ff       	callq  408d50 <http_body_is_final>
  409c22:	83 f8 00             	cmp    $0x0,%eax
  409c25:	0f 84 6a 00 00 00    	je     409c95 <message_complete_cb+0x175>
  409c2b:	48 63 0c 25 58 bb 91 	movslq 0x91bb58,%rcx
  409c32:	00 
  409c33:	48 b8 70 b7 8c 00 00 	movabs $0x8cb770,%rax
  409c3a:	00 00 00 
  409c3d:	48 69 c9 c8 00 01 00 	imul   $0x100c8,%rcx,%rcx
  409c44:	48 01 c8             	add    %rcx,%rax
  409c47:	83 b8 bc 00 01 00 00 	cmpl   $0x0,0x100bc(%rax)
  409c4e:	0f 85 41 00 00 00    	jne    409c95 <message_complete_cb+0x175>
  409c54:	48 8b 3c 25 40 b7 8c 	mov    0x8cb740,%rdi
  409c5b:	00 
  409c5c:	48 be bb 41 41 00 00 	movabs $0x4141bb,%rsi
  409c63:	00 00 00 
  409c66:	b0 00                	mov    $0x0,%al
  409c68:	e8 83 74 ff ff       	callq  4010f0 <fprintf@plt>
  409c6d:	48 bf 7e 5c 41 00 00 	movabs $0x415c7e,%rdi
  409c74:	00 00 00 
  409c77:	48 be 86 40 41 00 00 	movabs $0x414086,%rsi
  409c7e:	00 00 00 
  409c81:	ba 25 09 00 00       	mov    $0x925,%edx
  409c86:	48 b9 36 43 41 00 00 	movabs $0x414336,%rcx
  409c8d:	00 00 00 
  409c90:	e8 fb 73 ff ff       	callq  401090 <__assert_fail@plt>
  409c95:	48 63 0c 25 58 bb 91 	movslq 0x91bb58,%rcx
  409c9c:	00 
  409c9d:	48 b8 70 b7 8c 00 00 	movabs $0x8cb770,%rax
  409ca4:	00 00 00 
  409ca7:	48 69 c9 c8 00 01 00 	imul   $0x100c8,%rcx,%rcx
  409cae:	48 01 c8             	add    %rcx,%rax
  409cb1:	c7 80 b0 00 01 00 01 	movl   $0x1,0x100b0(%rax)
  409cb8:	00 00 00 
  409cbb:	8b 0c 25 5c bb 91 00 	mov    0x91bb5c,%ecx
  409cc2:	48 63 14 25 58 bb 91 	movslq 0x91bb58,%rdx
  409cc9:	00 
  409cca:	48 b8 70 b7 8c 00 00 	movabs $0x8cb770,%rax
  409cd1:	00 00 00 
  409cd4:	48 69 d2 c8 00 01 00 	imul   $0x100c8,%rdx,%rdx
  409cdb:	48 01 d0             	add    %rdx,%rax
  409cde:	89 88 b8 00 01 00    	mov    %ecx,0x100b8(%rax)
  409ce4:	8b 04 25 58 bb 91 00 	mov    0x91bb58,%eax
  409ceb:	83 c0 01             	add    $0x1,%eax
  409cee:	89 04 25 58 bb 91 00 	mov    %eax,0x91bb58
  409cf5:	31 c0                	xor    %eax,%eax
  409cf7:	48 83 c4 10          	add    $0x10,%rsp
  409cfb:	5d                   	pop    %rbp
  409cfc:	c3                   	retq   
  409cfd:	0f 1f 00             	nopl   (%rax)

0000000000409d00 <response_status_cb>:
  409d00:	55                   	push   %rbp
  409d01:	48 89 e5             	mov    %rsp,%rbp
  409d04:	48 83 ec 20          	sub    $0x20,%rsp
  409d08:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  409d0c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  409d10:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  409d14:	48 b8 50 b7 8c 00 00 	movabs $0x8cb750,%rax
  409d1b:	00 00 00 
  409d1e:	48 39 45 f8          	cmp    %rax,-0x8(%rbp)
  409d22:	0f 85 05 00 00 00    	jne    409d2d <response_status_cb+0x2d>
  409d28:	e9 28 00 00 00       	jmpq   409d55 <response_status_cb+0x55>
  409d2d:	48 bf 04 41 41 00 00 	movabs $0x414104,%rdi
  409d34:	00 00 00 
  409d37:	48 be 86 40 41 00 00 	movabs $0x414086,%rsi
  409d3e:	00 00 00 
  409d41:	ba 34 09 00 00       	mov    $0x934,%edx
  409d46:	48 b9 e4 43 41 00 00 	movabs $0x4143e4,%rcx
  409d4d:	00 00 00 
  409d50:	e8 3b 73 ff ff       	callq  401090 <__assert_fail@plt>
  409d55:	48 63 0c 25 58 bb 91 	movslq 0x91bb58,%rcx
  409d5c:	00 
  409d5d:	48 b8 70 b7 8c 00 00 	movabs $0x8cb770,%rax
  409d64:	00 00 00 
  409d67:	48 69 c9 c8 00 01 00 	imul   $0x100c8,%rcx,%rcx
  409d6e:	48 01 c8             	add    %rcx,%rax
  409d71:	c7 80 b4 00 01 00 01 	movl   $0x1,0x100b4(%rax)
  409d78:	00 00 00 
  409d7b:	48 63 04 25 58 bb 91 	movslq 0x91bb58,%rax
  409d82:	00 
  409d83:	48 bf 70 b7 8c 00 00 	movabs $0x8cb770,%rdi
  409d8a:	00 00 00 
  409d8d:	48 69 c0 c8 00 01 00 	imul   $0x100c8,%rax,%rax
  409d94:	48 01 c7             	add    %rax,%rdi
  409d97:	48 83 c7 1c          	add    $0x1c,%rdi
  409d9b:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  409d9f:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  409da3:	be 00 08 00 00       	mov    $0x800,%esi
  409da8:	e8 83 f4 ff ff       	callq  409230 <strlncat>
  409dad:	31 c0                	xor    %eax,%eax
  409daf:	48 83 c4 20          	add    $0x20,%rsp
  409db3:	5d                   	pop    %rbp
  409db4:	c3                   	retq   
  409db5:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  409dbc:	00 00 00 
  409dbf:	90                   	nop

0000000000409dc0 <chunk_header_cb>:
  409dc0:	55                   	push   %rbp
  409dc1:	48 89 e5             	mov    %rsp,%rbp
  409dc4:	48 83 ec 10          	sub    $0x10,%rsp
  409dc8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  409dcc:	48 b8 50 b7 8c 00 00 	movabs $0x8cb750,%rax
  409dd3:	00 00 00 
  409dd6:	48 39 45 f8          	cmp    %rax,-0x8(%rbp)
  409dda:	0f 85 05 00 00 00    	jne    409de5 <chunk_header_cb+0x25>
  409de0:	e9 28 00 00 00       	jmpq   409e0d <chunk_header_cb+0x4d>
  409de5:	48 bf 04 41 41 00 00 	movabs $0x414104,%rdi
  409dec:	00 00 00 
  409def:	48 be 86 40 41 00 00 	movabs $0x414086,%rsi
  409df6:	00 00 00 
  409df9:	ba 42 09 00 00       	mov    $0x942,%edx
  409dfe:	48 b9 20 44 41 00 00 	movabs $0x414420,%rcx
  409e05:	00 00 00 
  409e08:	e8 83 72 ff ff       	callq  401090 <__assert_fail@plt>
  409e0d:	48 63 0c 25 58 bb 91 	movslq 0x91bb58,%rcx
  409e14:	00 
  409e15:	48 b8 70 b7 8c 00 00 	movabs $0x8cb770,%rax
  409e1c:	00 00 00 
  409e1f:	48 69 c9 c8 00 01 00 	imul   $0x100c8,%rcx,%rcx
  409e26:	48 01 c8             	add    %rcx,%rax
  409e29:	8b 80 48 00 01 00    	mov    0x10048(%rax),%eax
  409e2f:	89 45 f4             	mov    %eax,-0xc(%rbp)
  409e32:	48 63 0c 25 58 bb 91 	movslq 0x91bb58,%rcx
  409e39:	00 
  409e3a:	48 b8 70 b7 8c 00 00 	movabs $0x8cb770,%rax
  409e41:	00 00 00 
  409e44:	48 69 c9 c8 00 01 00 	imul   $0x100c8,%rcx,%rcx
  409e4b:	48 01 c8             	add    %rcx,%rax
  409e4e:	8b 88 48 00 01 00    	mov    0x10048(%rax),%ecx
  409e54:	83 c1 01             	add    $0x1,%ecx
  409e57:	89 88 48 00 01 00    	mov    %ecx,0x10048(%rax)
  409e5d:	83 7d f4 10          	cmpl   $0x10,-0xc(%rbp)
  409e61:	0f 8d 31 00 00 00    	jge    409e98 <chunk_header_cb+0xd8>
  409e67:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  409e6b:	48 8b 40 08          	mov    0x8(%rax),%rax
  409e6f:	89 c2                	mov    %eax,%edx
  409e71:	48 63 0c 25 58 bb 91 	movslq 0x91bb58,%rcx
  409e78:	00 
  409e79:	48 b8 70 b7 8c 00 00 	movabs $0x8cb770,%rax
  409e80:	00 00 00 
  409e83:	48 69 c9 c8 00 01 00 	imul   $0x100c8,%rcx,%rcx
  409e8a:	48 01 c8             	add    %rcx,%rax
  409e8d:	48 63 4d f4          	movslq -0xc(%rbp),%rcx
  409e91:	89 94 88 50 00 01 00 	mov    %edx,0x10050(%rax,%rcx,4)
  409e98:	31 c0                	xor    %eax,%eax
  409e9a:	48 83 c4 10          	add    $0x10,%rsp
  409e9e:	5d                   	pop    %rbp
  409e9f:	c3                   	retq   

0000000000409ea0 <chunk_complete_cb>:
  409ea0:	55                   	push   %rbp
  409ea1:	48 89 e5             	mov    %rsp,%rbp
  409ea4:	48 83 ec 10          	sub    $0x10,%rsp
  409ea8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  409eac:	48 b8 50 b7 8c 00 00 	movabs $0x8cb750,%rax
  409eb3:	00 00 00 
  409eb6:	48 39 45 f8          	cmp    %rax,-0x8(%rbp)
  409eba:	0f 85 05 00 00 00    	jne    409ec5 <chunk_complete_cb+0x25>
  409ec0:	e9 28 00 00 00       	jmpq   409eed <chunk_complete_cb+0x4d>
  409ec5:	48 bf 04 41 41 00 00 	movabs $0x414104,%rdi
  409ecc:	00 00 00 
  409ecf:	48 be 86 40 41 00 00 	movabs $0x414086,%rsi
  409ed6:	00 00 00 
  409ed9:	ba 4f 09 00 00       	mov    $0x94f,%edx
  409ede:	48 b9 43 44 41 00 00 	movabs $0x414443,%rcx
  409ee5:	00 00 00 
  409ee8:	e8 a3 71 ff ff       	callq  401090 <__assert_fail@plt>
  409eed:	48 63 0c 25 58 bb 91 	movslq 0x91bb58,%rcx
  409ef4:	00 
  409ef5:	48 b8 70 b7 8c 00 00 	movabs $0x8cb770,%rax
  409efc:	00 00 00 
  409eff:	48 69 c9 c8 00 01 00 	imul   $0x100c8,%rcx,%rcx
  409f06:	48 01 c8             	add    %rcx,%rax
  409f09:	8b 80 48 00 01 00    	mov    0x10048(%rax),%eax
  409f0f:	48 63 14 25 58 bb 91 	movslq 0x91bb58,%rdx
  409f16:	00 
  409f17:	48 b9 70 b7 8c 00 00 	movabs $0x8cb770,%rcx
  409f1e:	00 00 00 
  409f21:	48 69 d2 c8 00 01 00 	imul   $0x100c8,%rdx,%rdx
  409f28:	48 01 d1             	add    %rdx,%rcx
  409f2b:	8b 89 4c 00 01 00    	mov    0x1004c(%rcx),%ecx
  409f31:	83 c1 01             	add    $0x1,%ecx
  409f34:	39 c8                	cmp    %ecx,%eax
  409f36:	0f 85 05 00 00 00    	jne    409f41 <chunk_complete_cb+0xa1>
  409f3c:	e9 28 00 00 00       	jmpq   409f69 <chunk_complete_cb+0xc9>
  409f41:	48 bf 68 44 41 00 00 	movabs $0x414468,%rdi
  409f48:	00 00 00 
  409f4b:	48 be 86 40 41 00 00 	movabs $0x414086,%rsi
  409f52:	00 00 00 
  409f55:	ba 56 09 00 00       	mov    $0x956,%edx
  409f5a:	48 b9 43 44 41 00 00 	movabs $0x414443,%rcx
  409f61:	00 00 00 
  409f64:	e8 27 71 ff ff       	callq  401090 <__assert_fail@plt>
  409f69:	48 63 0c 25 58 bb 91 	movslq 0x91bb58,%rcx
  409f70:	00 
  409f71:	48 b8 70 b7 8c 00 00 	movabs $0x8cb770,%rax
  409f78:	00 00 00 
  409f7b:	48 69 c9 c8 00 01 00 	imul   $0x100c8,%rcx,%rcx
  409f82:	48 01 c8             	add    %rcx,%rax
  409f85:	8b 88 4c 00 01 00    	mov    0x1004c(%rax),%ecx
  409f8b:	83 c1 01             	add    $0x1,%ecx
  409f8e:	89 88 4c 00 01 00    	mov    %ecx,0x1004c(%rax)
  409f94:	31 c0                	xor    %eax,%eax
  409f96:	48 83 c4 10          	add    $0x10,%rsp
  409f9a:	5d                   	pop    %rbp
  409f9b:	c3                   	retq   
  409f9c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000409fa0 <dontcall_message_begin_cb>:
  409fa0:	55                   	push   %rbp
  409fa1:	48 89 e5             	mov    %rsp,%rbp
  409fa4:	48 83 ec 10          	sub    $0x10,%rsp
  409fa8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  409fac:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  409fb1:	0f 84 05 00 00 00    	je     409fbc <dontcall_message_begin_cb+0x1c>
  409fb7:	e9 00 00 00 00       	jmpq   409fbc <dontcall_message_begin_cb+0x1c>
  409fbc:	48 8b 3c 25 40 b7 8c 	mov    0x8cb740,%rdi
  409fc3:	00 
  409fc4:	48 be bc 44 41 00 00 	movabs $0x4144bc,%rsi
  409fcb:	00 00 00 
  409fce:	b0 00                	mov    $0x0,%al
  409fd0:	e8 1b 71 ff ff       	callq  4010f0 <fprintf@plt>
  409fd5:	e8 66 70 ff ff       	callq  401040 <abort@plt>
  409fda:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000409fe0 <dontcall_header_field_cb>:
  409fe0:	55                   	push   %rbp
  409fe1:	48 89 e5             	mov    %rsp,%rbp
  409fe4:	48 83 ec 20          	sub    $0x20,%rsp
  409fe8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  409fec:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  409ff0:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  409ff4:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  409ff9:	0f 85 16 00 00 00    	jne    40a015 <dontcall_header_field_cb+0x35>
  409fff:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
  40a004:	0f 85 0b 00 00 00    	jne    40a015 <dontcall_header_field_cb+0x35>
  40a00a:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
  40a00f:	0f 84 05 00 00 00    	je     40a01a <dontcall_header_field_cb+0x3a>
  40a015:	e9 00 00 00 00       	jmpq   40a01a <dontcall_header_field_cb+0x3a>
  40a01a:	48 8b 3c 25 40 b7 8c 	mov    0x8cb740,%rdi
  40a021:	00 
  40a022:	48 be f3 44 41 00 00 	movabs $0x4144f3,%rsi
  40a029:	00 00 00 
  40a02c:	b0 00                	mov    $0x0,%al
  40a02e:	e8 bd 70 ff ff       	callq  4010f0 <fprintf@plt>
  40a033:	e8 08 70 ff ff       	callq  401040 <abort@plt>
  40a038:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40a03f:	00 

000000000040a040 <dontcall_header_value_cb>:
  40a040:	55                   	push   %rbp
  40a041:	48 89 e5             	mov    %rsp,%rbp
  40a044:	48 83 ec 20          	sub    $0x20,%rsp
  40a048:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40a04c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  40a050:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  40a054:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  40a059:	0f 85 16 00 00 00    	jne    40a075 <dontcall_header_value_cb+0x35>
  40a05f:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
  40a064:	0f 85 0b 00 00 00    	jne    40a075 <dontcall_header_value_cb+0x35>
  40a06a:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
  40a06f:	0f 84 05 00 00 00    	je     40a07a <dontcall_header_value_cb+0x3a>
  40a075:	e9 00 00 00 00       	jmpq   40a07a <dontcall_header_value_cb+0x3a>
  40a07a:	48 8b 3c 25 40 b7 8c 	mov    0x8cb740,%rdi
  40a081:	00 
  40a082:	48 be 29 45 41 00 00 	movabs $0x414529,%rsi
  40a089:	00 00 00 
  40a08c:	b0 00                	mov    $0x0,%al
  40a08e:	e8 5d 70 ff ff       	callq  4010f0 <fprintf@plt>
  40a093:	e8 a8 6f ff ff       	callq  401040 <abort@plt>
  40a098:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40a09f:	00 

000000000040a0a0 <dontcall_request_url_cb>:
  40a0a0:	55                   	push   %rbp
  40a0a1:	48 89 e5             	mov    %rsp,%rbp
  40a0a4:	48 83 ec 20          	sub    $0x20,%rsp
  40a0a8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40a0ac:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  40a0b0:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  40a0b4:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  40a0b9:	0f 85 16 00 00 00    	jne    40a0d5 <dontcall_request_url_cb+0x35>
  40a0bf:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
  40a0c4:	0f 85 0b 00 00 00    	jne    40a0d5 <dontcall_request_url_cb+0x35>
  40a0ca:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
  40a0cf:	0f 84 05 00 00 00    	je     40a0da <dontcall_request_url_cb+0x3a>
  40a0d5:	e9 00 00 00 00       	jmpq   40a0da <dontcall_request_url_cb+0x3a>
  40a0da:	48 8b 3c 25 40 b7 8c 	mov    0x8cb740,%rdi
  40a0e1:	00 
  40a0e2:	48 be 5f 45 41 00 00 	movabs $0x41455f,%rsi
  40a0e9:	00 00 00 
  40a0ec:	b0 00                	mov    $0x0,%al
  40a0ee:	e8 fd 6f ff ff       	callq  4010f0 <fprintf@plt>
  40a0f3:	e8 48 6f ff ff       	callq  401040 <abort@plt>
  40a0f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40a0ff:	00 

000000000040a100 <dontcall_body_cb>:
  40a100:	55                   	push   %rbp
  40a101:	48 89 e5             	mov    %rsp,%rbp
  40a104:	48 83 ec 20          	sub    $0x20,%rsp
  40a108:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40a10c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  40a110:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  40a114:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  40a119:	0f 85 16 00 00 00    	jne    40a135 <dontcall_body_cb+0x35>
  40a11f:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
  40a124:	0f 85 0b 00 00 00    	jne    40a135 <dontcall_body_cb+0x35>
  40a12a:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
  40a12f:	0f 84 05 00 00 00    	je     40a13a <dontcall_body_cb+0x3a>
  40a135:	e9 00 00 00 00       	jmpq   40a13a <dontcall_body_cb+0x3a>
  40a13a:	48 8b 3c 25 40 b7 8c 	mov    0x8cb740,%rdi
  40a141:	00 
  40a142:	48 be 94 45 41 00 00 	movabs $0x414594,%rsi
  40a149:	00 00 00 
  40a14c:	b0 00                	mov    $0x0,%al
  40a14e:	e8 9d 6f ff ff       	callq  4010f0 <fprintf@plt>
  40a153:	e8 e8 6e ff ff       	callq  401040 <abort@plt>
  40a158:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40a15f:	00 

000000000040a160 <dontcall_headers_complete_cb>:
  40a160:	55                   	push   %rbp
  40a161:	48 89 e5             	mov    %rsp,%rbp
  40a164:	48 83 ec 10          	sub    $0x10,%rsp
  40a168:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40a16c:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  40a171:	0f 84 05 00 00 00    	je     40a17c <dontcall_headers_complete_cb+0x1c>
  40a177:	e9 00 00 00 00       	jmpq   40a17c <dontcall_headers_complete_cb+0x1c>
  40a17c:	48 8b 3c 25 40 b7 8c 	mov    0x8cb740,%rdi
  40a183:	00 
  40a184:	48 be c5 45 41 00 00 	movabs $0x4145c5,%rsi
  40a18b:	00 00 00 
  40a18e:	b0 00                	mov    $0x0,%al
  40a190:	e8 5b 6f ff ff       	callq  4010f0 <fprintf@plt>
  40a195:	e8 a6 6e ff ff       	callq  401040 <abort@plt>
  40a19a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

000000000040a1a0 <dontcall_message_complete_cb>:
  40a1a0:	55                   	push   %rbp
  40a1a1:	48 89 e5             	mov    %rsp,%rbp
  40a1a4:	48 83 ec 10          	sub    $0x10,%rsp
  40a1a8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40a1ac:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  40a1b1:	0f 84 05 00 00 00    	je     40a1bc <dontcall_message_complete_cb+0x1c>
  40a1b7:	e9 00 00 00 00       	jmpq   40a1bc <dontcall_message_complete_cb+0x1c>
  40a1bc:	48 8b 3c 25 40 b7 8c 	mov    0x8cb740,%rdi
  40a1c3:	00 
  40a1c4:	48 be ff 45 41 00 00 	movabs $0x4145ff,%rsi
  40a1cb:	00 00 00 
  40a1ce:	b0 00                	mov    $0x0,%al
  40a1d0:	e8 1b 6f ff ff       	callq  4010f0 <fprintf@plt>
  40a1d5:	e8 66 6e ff ff       	callq  401040 <abort@plt>
  40a1da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

000000000040a1e0 <dontcall_response_status_cb>:
  40a1e0:	55                   	push   %rbp
  40a1e1:	48 89 e5             	mov    %rsp,%rbp
  40a1e4:	48 83 ec 20          	sub    $0x20,%rsp
  40a1e8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40a1ec:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  40a1f0:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  40a1f4:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  40a1f9:	0f 85 16 00 00 00    	jne    40a215 <dontcall_response_status_cb+0x35>
  40a1ff:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
  40a204:	0f 85 0b 00 00 00    	jne    40a215 <dontcall_response_status_cb+0x35>
  40a20a:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
  40a20f:	0f 84 05 00 00 00    	je     40a21a <dontcall_response_status_cb+0x3a>
  40a215:	e9 00 00 00 00       	jmpq   40a21a <dontcall_response_status_cb+0x3a>
  40a21a:	48 8b 3c 25 40 b7 8c 	mov    0x8cb740,%rdi
  40a221:	00 
  40a222:	48 be 39 46 41 00 00 	movabs $0x414639,%rsi
  40a229:	00 00 00 
  40a22c:	b0 00                	mov    $0x0,%al
  40a22e:	e8 bd 6e ff ff       	callq  4010f0 <fprintf@plt>
  40a233:	e8 08 6e ff ff       	callq  401040 <abort@plt>
  40a238:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40a23f:	00 

000000000040a240 <dontcall_chunk_header_cb>:
  40a240:	55                   	push   %rbp
  40a241:	48 89 e5             	mov    %rsp,%rbp
  40a244:	48 83 ec 10          	sub    $0x10,%rsp
  40a248:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40a24c:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  40a251:	0f 84 05 00 00 00    	je     40a25c <dontcall_chunk_header_cb+0x1c>
  40a257:	e9 00 00 00 00       	jmpq   40a25c <dontcall_chunk_header_cb+0x1c>
  40a25c:	48 8b 3c 25 40 b7 8c 	mov    0x8cb740,%rdi
  40a263:	00 
  40a264:	48 be 69 46 41 00 00 	movabs $0x414669,%rsi
  40a26b:	00 00 00 
  40a26e:	b0 00                	mov    $0x0,%al
  40a270:	e8 7b 6e ff ff       	callq  4010f0 <fprintf@plt>
  40a275:	bf 01 00 00 00       	mov    $0x1,%edi
  40a27a:	e8 d1 6e ff ff       	callq  401150 <exit@plt>
  40a27f:	90                   	nop

000000000040a280 <dontcall_chunk_complete_cb>:
  40a280:	55                   	push   %rbp
  40a281:	48 89 e5             	mov    %rsp,%rbp
  40a284:	48 83 ec 10          	sub    $0x10,%rsp
  40a288:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40a28c:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  40a291:	0f 84 05 00 00 00    	je     40a29c <dontcall_chunk_complete_cb+0x1c>
  40a297:	e9 00 00 00 00       	jmpq   40a29c <dontcall_chunk_complete_cb+0x1c>
  40a29c:	48 8b 3c 25 40 b7 8c 	mov    0x8cb740,%rdi
  40a2a3:	00 
  40a2a4:	48 be 9f 46 41 00 00 	movabs $0x41469f,%rsi
  40a2ab:	00 00 00 
  40a2ae:	b0 00                	mov    $0x0,%al
  40a2b0:	e8 3b 6e ff ff       	callq  4010f0 <fprintf@plt>
  40a2b5:	bf 01 00 00 00       	mov    $0x1,%edi
  40a2ba:	e8 91 6e ff ff       	callq  401150 <exit@plt>
  40a2bf:	90                   	nop

000000000040a2c0 <pause_message_begin_cb>:
  40a2c0:	55                   	push   %rbp
  40a2c1:	48 89 e5             	mov    %rsp,%rbp
  40a2c4:	48 83 ec 10          	sub    $0x10,%rsp
  40a2c8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40a2cc:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  40a2d0:	be 01 00 00 00       	mov    $0x1,%esi
  40a2d5:	e8 c6 e9 ff ff       	callq  408ca0 <http_parser_pause>
  40a2da:	48 8b 3c 25 60 bb 91 	mov    0x91bb60,%rdi
  40a2e1:	00 
  40a2e2:	48 be 00 e4 8b 00 00 	movabs $0x8be400,%rsi
  40a2e9:	00 00 00 
  40a2ec:	ba 50 00 00 00       	mov    $0x50,%edx
  40a2f1:	e8 0a 6e ff ff       	callq  401100 <memcpy@plt>
  40a2f6:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  40a2fa:	e8 b1 f5 ff ff       	callq  4098b0 <message_begin_cb>
  40a2ff:	48 83 c4 10          	add    $0x10,%rsp
  40a303:	5d                   	pop    %rbp
  40a304:	c3                   	retq   
  40a305:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40a30c:	00 00 00 
  40a30f:	90                   	nop

000000000040a310 <pause_header_field_cb>:
  40a310:	55                   	push   %rbp
  40a311:	48 89 e5             	mov    %rsp,%rbp
  40a314:	48 83 ec 20          	sub    $0x20,%rsp
  40a318:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40a31c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  40a320:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  40a324:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  40a328:	be 01 00 00 00       	mov    $0x1,%esi
  40a32d:	e8 6e e9 ff ff       	callq  408ca0 <http_parser_pause>
  40a332:	48 8b 3c 25 60 bb 91 	mov    0x91bb60,%rdi
  40a339:	00 
  40a33a:	48 be 00 e4 8b 00 00 	movabs $0x8be400,%rsi
  40a341:	00 00 00 
  40a344:	ba 50 00 00 00       	mov    $0x50,%edx
  40a349:	e8 b2 6d ff ff       	callq  401100 <memcpy@plt>
  40a34e:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  40a352:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
  40a356:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  40a35a:	e8 41 f1 ff ff       	callq  4094a0 <header_field_cb>
  40a35f:	48 83 c4 20          	add    $0x20,%rsp
  40a363:	5d                   	pop    %rbp
  40a364:	c3                   	retq   
  40a365:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40a36c:	00 00 00 
  40a36f:	90                   	nop

000000000040a370 <pause_header_value_cb>:
  40a370:	55                   	push   %rbp
  40a371:	48 89 e5             	mov    %rsp,%rbp
  40a374:	48 83 ec 20          	sub    $0x20,%rsp
  40a378:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40a37c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  40a380:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  40a384:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  40a388:	be 01 00 00 00       	mov    $0x1,%esi
  40a38d:	e8 0e e9 ff ff       	callq  408ca0 <http_parser_pause>
  40a392:	48 8b 3c 25 60 bb 91 	mov    0x91bb60,%rdi
  40a399:	00 
  40a39a:	48 be 00 e4 8b 00 00 	movabs $0x8be400,%rsi
  40a3a1:	00 00 00 
  40a3a4:	ba 50 00 00 00       	mov    $0x50,%edx
  40a3a9:	e8 52 6d ff ff       	callq  401100 <memcpy@plt>
  40a3ae:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  40a3b2:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
  40a3b6:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  40a3ba:	e8 d1 f1 ff ff       	callq  409590 <header_value_cb>
  40a3bf:	48 83 c4 20          	add    $0x20,%rsp
  40a3c3:	5d                   	pop    %rbp
  40a3c4:	c3                   	retq   
  40a3c5:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40a3cc:	00 00 00 
  40a3cf:	90                   	nop

000000000040a3d0 <pause_request_url_cb>:
  40a3d0:	55                   	push   %rbp
  40a3d1:	48 89 e5             	mov    %rsp,%rbp
  40a3d4:	48 83 ec 20          	sub    $0x20,%rsp
  40a3d8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40a3dc:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  40a3e0:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  40a3e4:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  40a3e8:	be 01 00 00 00       	mov    $0x1,%esi
  40a3ed:	e8 ae e8 ff ff       	callq  408ca0 <http_parser_pause>
  40a3f2:	48 8b 3c 25 60 bb 91 	mov    0x91bb60,%rdi
  40a3f9:	00 
  40a3fa:	48 be 00 e4 8b 00 00 	movabs $0x8be400,%rsi
  40a401:	00 00 00 
  40a404:	ba 50 00 00 00       	mov    $0x50,%edx
  40a409:	e8 f2 6c ff ff       	callq  401100 <memcpy@plt>
  40a40e:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  40a412:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
  40a416:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  40a41a:	e8 e1 ef ff ff       	callq  409400 <request_url_cb>
  40a41f:	48 83 c4 20          	add    $0x20,%rsp
  40a423:	5d                   	pop    %rbp
  40a424:	c3                   	retq   
  40a425:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40a42c:	00 00 00 
  40a42f:	90                   	nop

000000000040a430 <pause_body_cb>:
  40a430:	55                   	push   %rbp
  40a431:	48 89 e5             	mov    %rsp,%rbp
  40a434:	48 83 ec 20          	sub    $0x20,%rsp
  40a438:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40a43c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  40a440:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  40a444:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  40a448:	be 01 00 00 00       	mov    $0x1,%esi
  40a44d:	e8 4e e8 ff ff       	callq  408ca0 <http_parser_pause>
  40a452:	48 8b 3c 25 60 bb 91 	mov    0x91bb60,%rdi
  40a459:	00 
  40a45a:	48 be 00 e4 8b 00 00 	movabs $0x8be400,%rsi
  40a461:	00 00 00 
  40a464:	ba 50 00 00 00       	mov    $0x50,%edx
  40a469:	e8 92 6c ff ff       	callq  401100 <memcpy@plt>
  40a46e:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  40a472:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
  40a476:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  40a47a:	e8 91 f2 ff ff       	callq  409710 <body_cb>
  40a47f:	48 83 c4 20          	add    $0x20,%rsp
  40a483:	5d                   	pop    %rbp
  40a484:	c3                   	retq   
  40a485:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40a48c:	00 00 00 
  40a48f:	90                   	nop

000000000040a490 <pause_headers_complete_cb>:
  40a490:	55                   	push   %rbp
  40a491:	48 89 e5             	mov    %rsp,%rbp
  40a494:	48 83 ec 10          	sub    $0x10,%rsp
  40a498:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40a49c:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  40a4a0:	be 01 00 00 00       	mov    $0x1,%esi
  40a4a5:	e8 f6 e7 ff ff       	callq  408ca0 <http_parser_pause>
  40a4aa:	48 8b 3c 25 60 bb 91 	mov    0x91bb60,%rdi
  40a4b1:	00 
  40a4b2:	48 be 00 e4 8b 00 00 	movabs $0x8be400,%rsi
  40a4b9:	00 00 00 
  40a4bc:	ba 50 00 00 00       	mov    $0x50,%edx
  40a4c1:	e8 3a 6c ff ff       	callq  401100 <memcpy@plt>
  40a4c6:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  40a4ca:	e8 c1 f4 ff ff       	callq  409990 <headers_complete_cb>
  40a4cf:	48 83 c4 10          	add    $0x10,%rsp
  40a4d3:	5d                   	pop    %rbp
  40a4d4:	c3                   	retq   
  40a4d5:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40a4dc:	00 00 00 
  40a4df:	90                   	nop

000000000040a4e0 <pause_message_complete_cb>:
  40a4e0:	55                   	push   %rbp
  40a4e1:	48 89 e5             	mov    %rsp,%rbp
  40a4e4:	48 83 ec 10          	sub    $0x10,%rsp
  40a4e8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40a4ec:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  40a4f0:	be 01 00 00 00       	mov    $0x1,%esi
  40a4f5:	e8 a6 e7 ff ff       	callq  408ca0 <http_parser_pause>
  40a4fa:	48 8b 3c 25 60 bb 91 	mov    0x91bb60,%rdi
  40a501:	00 
  40a502:	48 be 00 e4 8b 00 00 	movabs $0x8be400,%rsi
  40a509:	00 00 00 
  40a50c:	ba 50 00 00 00       	mov    $0x50,%edx
  40a511:	e8 ea 6b ff ff       	callq  401100 <memcpy@plt>
  40a516:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  40a51a:	e8 01 f6 ff ff       	callq  409b20 <message_complete_cb>
  40a51f:	48 83 c4 10          	add    $0x10,%rsp
  40a523:	5d                   	pop    %rbp
  40a524:	c3                   	retq   
  40a525:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40a52c:	00 00 00 
  40a52f:	90                   	nop

000000000040a530 <pause_response_status_cb>:
  40a530:	55                   	push   %rbp
  40a531:	48 89 e5             	mov    %rsp,%rbp
  40a534:	48 83 ec 20          	sub    $0x20,%rsp
  40a538:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40a53c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  40a540:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  40a544:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  40a548:	be 01 00 00 00       	mov    $0x1,%esi
  40a54d:	e8 4e e7 ff ff       	callq  408ca0 <http_parser_pause>
  40a552:	48 8b 3c 25 60 bb 91 	mov    0x91bb60,%rdi
  40a559:	00 
  40a55a:	48 be 00 e4 8b 00 00 	movabs $0x8be400,%rsi
  40a561:	00 00 00 
  40a564:	ba 50 00 00 00       	mov    $0x50,%edx
  40a569:	e8 92 6b ff ff       	callq  401100 <memcpy@plt>
  40a56e:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  40a572:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
  40a576:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  40a57a:	e8 81 f7 ff ff       	callq  409d00 <response_status_cb>
  40a57f:	48 83 c4 20          	add    $0x20,%rsp
  40a583:	5d                   	pop    %rbp
  40a584:	c3                   	retq   
  40a585:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40a58c:	00 00 00 
  40a58f:	90                   	nop

000000000040a590 <pause_chunk_header_cb>:
  40a590:	55                   	push   %rbp
  40a591:	48 89 e5             	mov    %rsp,%rbp
  40a594:	48 83 ec 10          	sub    $0x10,%rsp
  40a598:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40a59c:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  40a5a0:	be 01 00 00 00       	mov    $0x1,%esi
  40a5a5:	e8 f6 e6 ff ff       	callq  408ca0 <http_parser_pause>
  40a5aa:	48 8b 3c 25 60 bb 91 	mov    0x91bb60,%rdi
  40a5b1:	00 
  40a5b2:	48 be 00 e4 8b 00 00 	movabs $0x8be400,%rsi
  40a5b9:	00 00 00 
  40a5bc:	ba 50 00 00 00       	mov    $0x50,%edx
  40a5c1:	e8 3a 6b ff ff       	callq  401100 <memcpy@plt>
  40a5c6:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  40a5ca:	e8 f1 f7 ff ff       	callq  409dc0 <chunk_header_cb>
  40a5cf:	48 83 c4 10          	add    $0x10,%rsp
  40a5d3:	5d                   	pop    %rbp
  40a5d4:	c3                   	retq   
  40a5d5:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40a5dc:	00 00 00 
  40a5df:	90                   	nop

000000000040a5e0 <pause_chunk_complete_cb>:
  40a5e0:	55                   	push   %rbp
  40a5e1:	48 89 e5             	mov    %rsp,%rbp
  40a5e4:	48 83 ec 10          	sub    $0x10,%rsp
  40a5e8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40a5ec:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  40a5f0:	be 01 00 00 00       	mov    $0x1,%esi
  40a5f5:	e8 a6 e6 ff ff       	callq  408ca0 <http_parser_pause>
  40a5fa:	48 8b 3c 25 60 bb 91 	mov    0x91bb60,%rdi
  40a601:	00 
  40a602:	48 be 00 e4 8b 00 00 	movabs $0x8be400,%rsi
  40a609:	00 00 00 
  40a60c:	ba 50 00 00 00       	mov    $0x50,%edx
  40a611:	e8 ea 6a ff ff       	callq  401100 <memcpy@plt>
  40a616:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  40a61a:	e8 81 f8 ff ff       	callq  409ea0 <chunk_complete_cb>
  40a61f:	48 83 c4 10          	add    $0x10,%rsp
  40a623:	5d                   	pop    %rbp
  40a624:	c3                   	retq   
  40a625:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40a62c:	00 00 00 
  40a62f:	90                   	nop

000000000040a630 <connect_headers_complete_cb>:
  40a630:	55                   	push   %rbp
  40a631:	48 89 e5             	mov    %rsp,%rbp
  40a634:	48 83 ec 10          	sub    $0x10,%rsp
  40a638:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40a63c:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  40a640:	e8 4b f3 ff ff       	callq  409990 <headers_complete_cb>
  40a645:	b8 01 00 00 00       	mov    $0x1,%eax
  40a64a:	48 83 c4 10          	add    $0x10,%rsp
  40a64e:	5d                   	pop    %rbp
  40a64f:	c3                   	retq   

000000000040a650 <connect_message_complete_cb>:
  40a650:	55                   	push   %rbp
  40a651:	48 89 e5             	mov    %rsp,%rbp
  40a654:	48 83 ec 10          	sub    $0x10,%rsp
  40a658:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40a65c:	48 bf 50 b7 8c 00 00 	movabs $0x8cb750,%rdi
  40a663:	00 00 00 
  40a666:	e8 65 d7 ff ff       	callq  407dd0 <http_should_keep_alive>
  40a66b:	89 c1                	mov    %eax,%ecx
  40a66d:	48 63 14 25 58 bb 91 	movslq 0x91bb58,%rdx
  40a674:	00 
  40a675:	48 b8 70 b7 8c 00 00 	movabs $0x8cb770,%rax
  40a67c:	00 00 00 
  40a67f:	48 69 d2 c8 00 01 00 	imul   $0x100c8,%rdx,%rdx
  40a686:	48 01 d0             	add    %rdx,%rax
  40a689:	89 88 44 00 01 00    	mov    %ecx,0x10044(%rax)
  40a68f:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  40a693:	e8 88 f4 ff ff       	callq  409b20 <message_complete_cb>
  40a698:	48 83 c4 10          	add    $0x10,%rsp
  40a69c:	5d                   	pop    %rbp
  40a69d:	c3                   	retq   
  40a69e:	66 90                	xchg   %ax,%ax

000000000040a6a0 <parser_init>:
  40a6a0:	55                   	push   %rbp
  40a6a1:	48 89 e5             	mov    %rsp,%rbp
  40a6a4:	48 83 ec 10          	sub    $0x10,%rsp
  40a6a8:	89 7d fc             	mov    %edi,-0x4(%rbp)
  40a6ab:	c7 04 25 58 bb 91 00 	movl   $0x0,0x91bb58
  40a6b2:	00 00 00 00 
  40a6b6:	8b 75 fc             	mov    -0x4(%rbp),%esi
  40a6b9:	48 bf 50 b7 8c 00 00 	movabs $0x8cb750,%rdi
  40a6c0:	00 00 00 
  40a6c3:	e8 d8 dd ff ff       	callq  4084a0 <http_parser_init>
  40a6c8:	48 bf 70 b7 8c 00 00 	movabs $0x8cb770,%rdi
  40a6cf:	00 00 00 
  40a6d2:	31 f6                	xor    %esi,%esi
  40a6d4:	ba e8 03 05 00       	mov    $0x503e8,%edx
  40a6d9:	e8 c2 69 ff ff       	callq  4010a0 <memset@plt>
  40a6de:	48 83 c4 10          	add    $0x10,%rsp
  40a6e2:	5d                   	pop    %rbp
  40a6e3:	c3                   	retq   
  40a6e4:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40a6eb:	00 00 00 
  40a6ee:	66 90                	xchg   %ax,%ax

000000000040a6f0 <parse>:
  40a6f0:	55                   	push   %rbp
  40a6f1:	48 89 e5             	mov    %rsp,%rbp
  40a6f4:	48 83 ec 20          	sub    $0x20,%rsp
  40a6f8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40a6fc:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  40a700:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
  40a705:	0f 94 c0             	sete   %al
  40a708:	24 01                	and    $0x1,%al
  40a70a:	0f b6 c0             	movzbl %al,%eax
  40a70d:	89 04 25 5c bb 91 00 	mov    %eax,0x91bb5c
  40a714:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  40a718:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  40a71c:	48 bf 50 b7 8c 00 00 	movabs $0x8cb750,%rdi
  40a723:	00 00 00 
  40a726:	48 be 50 e4 8b 00 00 	movabs $0x8be450,%rsi
  40a72d:	00 00 00 
  40a730:	e8 1b 6b ff ff       	callq  401250 <http_parser_execute>
  40a735:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  40a739:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40a73d:	48 83 c4 20          	add    $0x20,%rsp
  40a741:	5d                   	pop    %rbp
  40a742:	c3                   	retq   
  40a743:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40a74a:	00 00 00 
  40a74d:	0f 1f 00             	nopl   (%rax)

000000000040a750 <parse_count_body>:
  40a750:	55                   	push   %rbp
  40a751:	48 89 e5             	mov    %rsp,%rbp
  40a754:	48 83 ec 20          	sub    $0x20,%rsp
  40a758:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40a75c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  40a760:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
  40a765:	0f 94 c0             	sete   %al
  40a768:	24 01                	and    $0x1,%al
  40a76a:	0f b6 c0             	movzbl %al,%eax
  40a76d:	89 04 25 5c bb 91 00 	mov    %eax,0x91bb5c
  40a774:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  40a778:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  40a77c:	48 bf 50 b7 8c 00 00 	movabs $0x8cb750,%rdi
  40a783:	00 00 00 
  40a786:	48 be a0 e4 8b 00 00 	movabs $0x8be4a0,%rsi
  40a78d:	00 00 00 
  40a790:	e8 bb 6a ff ff       	callq  401250 <http_parser_execute>
  40a795:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  40a799:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40a79d:	48 83 c4 20          	add    $0x20,%rsp
  40a7a1:	5d                   	pop    %rbp
  40a7a2:	c3                   	retq   
  40a7a3:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40a7aa:	00 00 00 
  40a7ad:	0f 1f 00             	nopl   (%rax)

000000000040a7b0 <parse_pause>:
  40a7b0:	55                   	push   %rbp
  40a7b1:	48 89 e5             	mov    %rsp,%rbp
  40a7b4:	48 83 ec 70          	sub    $0x70,%rsp
  40a7b8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40a7bc:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  40a7c0:	48 8d 7d 98          	lea    -0x68(%rbp),%rdi
  40a7c4:	48 be f0 e4 8b 00 00 	movabs $0x8be4f0,%rsi
  40a7cb:	00 00 00 
  40a7ce:	ba 50 00 00 00       	mov    $0x50,%edx
  40a7d3:	e8 28 69 ff ff       	callq  401100 <memcpy@plt>
  40a7d8:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
  40a7dd:	0f 94 c0             	sete   %al
  40a7e0:	24 01                	and    $0x1,%al
  40a7e2:	0f b6 c0             	movzbl %al,%eax
  40a7e5:	89 04 25 5c bb 91 00 	mov    %eax,0x91bb5c
  40a7ec:	48 8d 45 98          	lea    -0x68(%rbp),%rax
  40a7f0:	48 89 04 25 60 bb 91 	mov    %rax,0x91bb60
  40a7f7:	00 
  40a7f8:	48 8b 34 25 60 bb 91 	mov    0x91bb60,%rsi
  40a7ff:	00 
  40a800:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  40a804:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  40a808:	48 bf 50 b7 8c 00 00 	movabs $0x8cb750,%rdi
  40a80f:	00 00 00 
  40a812:	e8 39 6a ff ff       	callq  401250 <http_parser_execute>
  40a817:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  40a81b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40a81f:	48 83 c4 70          	add    $0x70,%rsp
  40a823:	5d                   	pop    %rbp
  40a824:	c3                   	retq   
  40a825:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40a82c:	00 00 00 
  40a82f:	90                   	nop

000000000040a830 <parse_connect>:
  40a830:	55                   	push   %rbp
  40a831:	48 89 e5             	mov    %rsp,%rbp
  40a834:	48 83 ec 20          	sub    $0x20,%rsp
  40a838:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40a83c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  40a840:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
  40a845:	0f 94 c0             	sete   %al
  40a848:	24 01                	and    $0x1,%al
  40a84a:	0f b6 c0             	movzbl %al,%eax
  40a84d:	89 04 25 5c bb 91 00 	mov    %eax,0x91bb5c
  40a854:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  40a858:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  40a85c:	48 bf 50 b7 8c 00 00 	movabs $0x8cb750,%rdi
  40a863:	00 00 00 
  40a866:	48 be 40 e5 8b 00 00 	movabs $0x8be540,%rsi
  40a86d:	00 00 00 
  40a870:	e8 db 69 ff ff       	callq  401250 <http_parser_execute>
  40a875:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  40a879:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40a87d:	48 83 c4 20          	add    $0x20,%rsp
  40a881:	5d                   	pop    %rbp
  40a882:	c3                   	retq   
  40a883:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40a88a:	00 00 00 
  40a88d:	0f 1f 00             	nopl   (%rax)

000000000040a890 <message_eq>:
  40a890:	55                   	push   %rbp
  40a891:	48 89 e5             	mov    %rsp,%rbp
  40a894:	48 81 ec 70 05 00 00 	sub    $0x570,%rsp
  40a89b:	89 7d f8             	mov    %edi,-0x8(%rbp)
  40a89e:	89 75 f4             	mov    %esi,-0xc(%rbp)
  40a8a1:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  40a8a5:	48 63 4d f8          	movslq -0x8(%rbp),%rcx
  40a8a9:	48 b8 70 b7 8c 00 00 	movabs $0x8cb770,%rax
  40a8b0:	00 00 00 
  40a8b3:	48 69 c9 c8 00 01 00 	imul   $0x100c8,%rcx,%rcx
  40a8ba:	48 01 c8             	add    %rcx,%rax
  40a8bd:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  40a8c1:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  40a8c5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40a8c9:	0f b7 90 98 00 01 00 	movzwl 0x10098(%rax),%edx
  40a8d0:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40a8d4:	0f b7 88 98 00 01 00 	movzwl 0x10098(%rax),%ecx
  40a8db:	48 be d7 46 41 00 00 	movabs $0x4146d7,%rsi
  40a8e2:	00 00 00 
  40a8e5:	e8 56 0a 00 00       	callq  40b340 <check_num_eq>
  40a8ea:	83 f8 00             	cmp    $0x0,%eax
  40a8ed:	0f 85 0c 00 00 00    	jne    40a8ff <message_eq+0x6f>
  40a8f3:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  40a8fa:	e9 31 0a 00 00       	jmpq   40b330 <message_eq+0xaa0>
  40a8ff:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  40a903:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40a907:	0f b7 90 9a 00 01 00 	movzwl 0x1009a(%rax),%edx
  40a90e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40a912:	0f b7 88 9a 00 01 00 	movzwl 0x1009a(%rax),%ecx
  40a919:	48 be e2 46 41 00 00 	movabs $0x4146e2,%rsi
  40a920:	00 00 00 
  40a923:	e8 18 0a 00 00       	callq  40b340 <check_num_eq>
  40a928:	83 f8 00             	cmp    $0x0,%eax
  40a92b:	0f 85 0c 00 00 00    	jne    40a93d <message_eq+0xad>
  40a931:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  40a938:	e9 f3 09 00 00       	jmpq   40b330 <message_eq+0xaa0>
  40a93d:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  40a941:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40a945:	48 8b 80 a0 00 01 00 	mov    0x100a0(%rax),%rax
  40a94c:	89 c2                	mov    %eax,%edx
  40a94e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40a952:	48 8b 80 a0 00 01 00 	mov    0x100a0(%rax),%rax
  40a959:	89 c1                	mov    %eax,%ecx
  40a95b:	48 be ed 46 41 00 00 	movabs $0x4146ed,%rsi
  40a962:	00 00 00 
  40a965:	e8 d6 09 00 00       	callq  40b340 <check_num_eq>
  40a96a:	83 f8 00             	cmp    $0x0,%eax
  40a96d:	0f 85 0c 00 00 00    	jne    40a97f <message_eq+0xef>
  40a973:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  40a97a:	e9 b1 09 00 00       	jmpq   40b330 <message_eq+0xaa0>
  40a97f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40a983:	83 78 10 00          	cmpl   $0x0,0x10(%rax)
  40a987:	0f 85 3b 00 00 00    	jne    40a9c8 <message_eq+0x138>
  40a98d:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  40a991:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40a995:	8b 50 14             	mov    0x14(%rax),%edx
  40a998:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40a99c:	8b 48 14             	mov    0x14(%rax),%ecx
  40a99f:	48 be 39 12 41 00 00 	movabs $0x411239,%rsi
  40a9a6:	00 00 00 
  40a9a9:	e8 92 09 00 00       	callq  40b340 <check_num_eq>
  40a9ae:	83 f8 00             	cmp    $0x0,%eax
  40a9b1:	0f 85 0c 00 00 00    	jne    40a9c3 <message_eq+0x133>
  40a9b7:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  40a9be:	e9 6d 09 00 00       	jmpq   40b330 <message_eq+0xaa0>
  40a9c3:	e9 b1 00 00 00       	jmpq   40aa79 <message_eq+0x1e9>
  40a9c8:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  40a9cc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40a9d0:	8b 50 18             	mov    0x18(%rax),%edx
  40a9d3:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40a9d7:	8b 48 18             	mov    0x18(%rax),%ecx
  40a9da:	48 be fc 46 41 00 00 	movabs $0x4146fc,%rsi
  40a9e1:	00 00 00 
  40a9e4:	e8 57 09 00 00       	callq  40b340 <check_num_eq>
  40a9e9:	83 f8 00             	cmp    $0x0,%eax
  40a9ec:	0f 85 0c 00 00 00    	jne    40a9fe <message_eq+0x16e>
  40a9f2:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  40a9f9:	e9 32 09 00 00       	jmpq   40b330 <message_eq+0xaa0>
  40a9fe:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  40aa02:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  40aa06:	48 83 c2 1c          	add    $0x1c,%rdx
  40aa0a:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  40aa0e:	48 83 c1 1c          	add    $0x1c,%rcx
  40aa12:	48 be 08 47 41 00 00 	movabs $0x414708,%rsi
  40aa19:	00 00 00 
  40aa1c:	e8 af 09 00 00       	callq  40b3d0 <check_str_eq>
  40aa21:	83 f8 00             	cmp    $0x0,%eax
  40aa24:	0f 85 0c 00 00 00    	jne    40aa36 <message_eq+0x1a6>
  40aa2a:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  40aa31:	e9 fa 08 00 00       	jmpq   40b330 <message_eq+0xaa0>
  40aa36:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40aa3a:	83 b8 b4 00 01 00 00 	cmpl   $0x0,0x100b4(%rax)
  40aa41:	0f 84 05 00 00 00    	je     40aa4c <message_eq+0x1bc>
  40aa47:	e9 28 00 00 00       	jmpq   40aa74 <message_eq+0x1e4>
  40aa4c:	48 bf 18 47 41 00 00 	movabs $0x414718,%rdi
  40aa53:	00 00 00 
  40aa56:	48 be 86 40 41 00 00 	movabs $0x414086,%rsi
  40aa5d:	00 00 00 
  40aa60:	ba d2 0a 00 00       	mov    $0xad2,%edx
  40aa65:	48 b9 2c 47 41 00 00 	movabs $0x41472c,%rcx
  40aa6c:	00 00 00 
  40aa6f:	e8 1c 66 ff ff       	callq  401090 <__assert_fail@plt>
  40aa74:	e9 00 00 00 00       	jmpq   40aa79 <message_eq+0x1e9>
  40aa79:	83 7d f4 00          	cmpl   $0x0,-0xc(%rbp)
  40aa7d:	0f 85 7d 00 00 00    	jne    40ab00 <message_eq+0x270>
  40aa83:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  40aa87:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40aa8b:	8b 90 44 00 01 00    	mov    0x10044(%rax),%edx
  40aa91:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40aa95:	8b 88 44 00 01 00    	mov    0x10044(%rax),%ecx
  40aa9b:	48 be 5d 47 41 00 00 	movabs $0x41475d,%rsi
  40aaa2:	00 00 00 
  40aaa5:	e8 96 08 00 00       	callq  40b340 <check_num_eq>
  40aaaa:	83 f8 00             	cmp    $0x0,%eax
  40aaad:	0f 85 0c 00 00 00    	jne    40aabf <message_eq+0x22f>
  40aab3:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  40aaba:	e9 71 08 00 00       	jmpq   40b330 <message_eq+0xaa0>
  40aabf:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  40aac3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40aac7:	8b 90 b8 00 01 00    	mov    0x100b8(%rax),%edx
  40aacd:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40aad1:	8b 88 b8 00 01 00    	mov    0x100b8(%rax),%ecx
  40aad7:	48 be 6f 47 41 00 00 	movabs $0x41476f,%rsi
  40aade:	00 00 00 
  40aae1:	e8 5a 08 00 00       	callq  40b340 <check_num_eq>
  40aae6:	83 f8 00             	cmp    $0x0,%eax
  40aae9:	0f 85 0c 00 00 00    	jne    40aafb <message_eq+0x26b>
  40aaef:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  40aaf6:	e9 35 08 00 00       	jmpq   40b330 <message_eq+0xaa0>
  40aafb:	e9 00 00 00 00       	jmpq   40ab00 <message_eq+0x270>
  40ab00:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40ab04:	83 b8 a8 00 01 00 00 	cmpl   $0x0,0x100a8(%rax)
  40ab0b:	0f 84 05 00 00 00    	je     40ab16 <message_eq+0x286>
  40ab11:	e9 28 00 00 00       	jmpq   40ab3e <message_eq+0x2ae>
  40ab16:	48 bf 87 47 41 00 00 	movabs $0x414787,%rdi
  40ab1d:	00 00 00 
  40ab20:	48 be 86 40 41 00 00 	movabs $0x414086,%rsi
  40ab27:	00 00 00 
  40ab2a:	ba da 0a 00 00       	mov    $0xada,%edx
  40ab2f:	48 b9 2c 47 41 00 00 	movabs $0x41472c,%rcx
  40ab36:	00 00 00 
  40ab39:	e8 52 65 ff ff       	callq  401090 <__assert_fail@plt>
  40ab3e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40ab42:	83 b8 ac 00 01 00 00 	cmpl   $0x0,0x100ac(%rax)
  40ab49:	0f 84 05 00 00 00    	je     40ab54 <message_eq+0x2c4>
  40ab4f:	e9 28 00 00 00       	jmpq   40ab7c <message_eq+0x2ec>
  40ab54:	48 bf a2 47 41 00 00 	movabs $0x4147a2,%rdi
  40ab5b:	00 00 00 
  40ab5e:	48 be 86 40 41 00 00 	movabs $0x414086,%rsi
  40ab65:	00 00 00 
  40ab68:	ba db 0a 00 00       	mov    $0xadb,%edx
  40ab6d:	48 b9 2c 47 41 00 00 	movabs $0x41472c,%rcx
  40ab74:	00 00 00 
  40ab77:	e8 14 65 ff ff       	callq  401090 <__assert_fail@plt>
  40ab7c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40ab80:	83 b8 b0 00 01 00 00 	cmpl   $0x0,0x100b0(%rax)
  40ab87:	0f 84 05 00 00 00    	je     40ab92 <message_eq+0x302>
  40ab8d:	e9 28 00 00 00       	jmpq   40abba <message_eq+0x32a>
  40ab92:	48 bf c0 47 41 00 00 	movabs $0x4147c0,%rdi
  40ab99:	00 00 00 
  40ab9c:	48 be 86 40 41 00 00 	movabs $0x414086,%rsi
  40aba3:	00 00 00 
  40aba6:	ba dc 0a 00 00       	mov    $0xadc,%edx
  40abab:	48 b9 2c 47 41 00 00 	movabs $0x41472c,%rcx
  40abb2:	00 00 00 
  40abb5:	e8 d6 64 ff ff       	callq  401090 <__assert_fail@plt>
  40abba:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  40abbe:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  40abc2:	48 81 c2 1c 10 00 00 	add    $0x101c,%rdx
  40abc9:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  40abcd:	48 81 c1 1c 10 00 00 	add    $0x101c,%rcx
  40abd4:	48 be de 47 41 00 00 	movabs $0x4147de,%rsi
  40abdb:	00 00 00 
  40abde:	e8 ed 07 00 00       	callq  40b3d0 <check_str_eq>
  40abe3:	83 f8 00             	cmp    $0x0,%eax
  40abe6:	0f 85 0c 00 00 00    	jne    40abf8 <message_eq+0x368>
  40abec:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  40abf3:	e9 38 07 00 00       	jmpq   40b330 <message_eq+0xaa0>
  40abf8:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40abfc:	0f be 80 1c 10 00 00 	movsbl 0x101c(%rax),%eax
  40ac03:	83 f8 00             	cmp    $0x0,%eax
  40ac06:	0f 84 7a 03 00 00    	je     40af86 <message_eq+0x6f6>
  40ac0c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40ac10:	83 78 14 05          	cmpl   $0x5,0x14(%rax)
  40ac14:	0f 84 6c 03 00 00    	je     40af86 <message_eq+0x6f6>
  40ac1a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40ac1e:	48 05 1c 10 00 00    	add    $0x101c,%rax
  40ac24:	48 89 85 a0 fa ff ff 	mov    %rax,-0x560(%rbp)
  40ac2b:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
  40ac2f:	48 81 c7 1c 10 00 00 	add    $0x101c,%rdi
  40ac36:	e8 35 64 ff ff       	callq  401070 <strlen@plt>
  40ac3b:	48 8b bd a0 fa ff ff 	mov    -0x560(%rbp),%rdi
  40ac42:	48 89 c6             	mov    %rax,%rsi
  40ac45:	31 d2                	xor    %edx,%edx
  40ac47:	48 8d 4d b8          	lea    -0x48(%rbp),%rcx
  40ac4b:	e8 40 da ff ff       	callq  408690 <http_parser_parse_url>
  40ac50:	83 f8 00             	cmp    $0x0,%eax
  40ac53:	0f 84 29 00 00 00    	je     40ac82 <message_eq+0x3f2>
  40ac59:	48 8b 3c 25 40 b7 8c 	mov    0x8cb740,%rdi
  40ac60:	00 
  40ac61:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  40ac65:	48 81 c2 1c 10 00 00 	add    $0x101c,%rdx
  40ac6c:	48 be ea 47 41 00 00 	movabs $0x4147ea,%rsi
  40ac73:	00 00 00 
  40ac76:	b0 00                	mov    $0x0,%al
  40ac78:	e8 73 64 ff ff       	callq  4010f0 <fprintf@plt>
  40ac7d:	e8 be 63 ff ff       	callq  401040 <abort@plt>
  40ac82:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40ac86:	48 83 b8 28 30 00 00 	cmpq   $0x0,0x3028(%rax)
  40ac8d:	00 
  40ac8e:	0f 84 7d 00 00 00    	je     40ad11 <message_eq+0x481>
  40ac94:	e9 00 00 00 00       	jmpq   40ac99 <message_eq+0x409>
  40ac99:	0f b7 45 b8          	movzwl -0x48(%rbp),%eax
  40ac9d:	83 e0 02             	and    $0x2,%eax
  40aca0:	83 f8 00             	cmp    $0x0,%eax
  40aca3:	0f 84 37 00 00 00    	je     40ace0 <message_eq+0x450>
  40aca9:	48 8d bd b0 fe ff ff 	lea    -0x150(%rbp),%rdi
  40acb0:	48 8b 75 d8          	mov    -0x28(%rbp),%rsi
  40acb4:	48 81 c6 1c 10 00 00 	add    $0x101c,%rsi
  40acbb:	0f b7 45 c0          	movzwl -0x40(%rbp),%eax
  40acbf:	48 98                	cltq   
  40acc1:	48 01 c6             	add    %rax,%rsi
  40acc4:	0f b7 45 c2          	movzwl -0x3e(%rbp),%eax
  40acc8:	89 c2                	mov    %eax,%edx
  40acca:	e8 31 64 ff ff       	callq  401100 <memcpy@plt>
  40accf:	0f b7 45 c2          	movzwl -0x3e(%rbp),%eax
  40acd3:	c6 84 05 b0 fe ff ff 	movb   $0x0,-0x150(%rbp,%rax,1)
  40acda:	00 
  40acdb:	e9 07 00 00 00       	jmpq   40ace7 <message_eq+0x457>
  40ace0:	c6 85 b0 fe ff ff 00 	movb   $0x0,-0x150(%rbp)
  40ace7:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  40aceb:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40acef:	48 8b 90 28 30 00 00 	mov    0x3028(%rax),%rdx
  40acf6:	48 8d 8d b0 fe ff ff 	lea    -0x150(%rbp),%rcx
  40acfd:	48 be 75 12 41 00 00 	movabs $0x411275,%rsi
  40ad04:	00 00 00 
  40ad07:	e8 c4 06 00 00       	callq  40b3d0 <check_str_eq>
  40ad0c:	e9 00 00 00 00       	jmpq   40ad11 <message_eq+0x481>
  40ad11:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40ad15:	48 83 b8 30 30 00 00 	cmpq   $0x0,0x3030(%rax)
  40ad1c:	00 
  40ad1d:	0f 84 7d 00 00 00    	je     40ada0 <message_eq+0x510>
  40ad23:	e9 00 00 00 00       	jmpq   40ad28 <message_eq+0x498>
  40ad28:	0f b7 45 b8          	movzwl -0x48(%rbp),%eax
  40ad2c:	83 e0 40             	and    $0x40,%eax
  40ad2f:	83 f8 00             	cmp    $0x0,%eax
  40ad32:	0f 84 37 00 00 00    	je     40ad6f <message_eq+0x4df>
  40ad38:	48 8d bd b0 fd ff ff 	lea    -0x250(%rbp),%rdi
  40ad3f:	48 8b 75 d8          	mov    -0x28(%rbp),%rsi
  40ad43:	48 81 c6 1c 10 00 00 	add    $0x101c,%rsi
  40ad4a:	0f b7 45 d4          	movzwl -0x2c(%rbp),%eax
  40ad4e:	48 98                	cltq   
  40ad50:	48 01 c6             	add    %rax,%rsi
  40ad53:	0f b7 45 d6          	movzwl -0x2a(%rbp),%eax
  40ad57:	89 c2                	mov    %eax,%edx
  40ad59:	e8 a2 63 ff ff       	callq  401100 <memcpy@plt>
  40ad5e:	0f b7 45 d6          	movzwl -0x2a(%rbp),%eax
  40ad62:	c6 84 05 b0 fd ff ff 	movb   $0x0,-0x250(%rbp,%rax,1)
  40ad69:	00 
  40ad6a:	e9 07 00 00 00       	jmpq   40ad76 <message_eq+0x4e6>
  40ad6f:	c6 85 b0 fd ff ff 00 	movb   $0x0,-0x250(%rbp)
  40ad76:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  40ad7a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40ad7e:	48 8b 90 30 30 00 00 	mov    0x3030(%rax),%rdx
  40ad85:	48 8d 8d b0 fd ff ff 	lea    -0x250(%rbp),%rcx
  40ad8c:	48 be 0d 48 41 00 00 	movabs $0x41480d,%rsi
  40ad93:	00 00 00 
  40ad96:	e8 35 06 00 00       	callq  40b3d0 <check_str_eq>
  40ad9b:	e9 00 00 00 00       	jmpq   40ada0 <message_eq+0x510>
  40ada0:	0f b7 45 b8          	movzwl -0x48(%rbp),%eax
  40ada4:	83 e0 04             	and    $0x4,%eax
  40ada7:	83 f8 00             	cmp    $0x0,%eax
  40adaa:	0f 84 0f 00 00 00    	je     40adbf <message_eq+0x52f>
  40adb0:	0f b7 45 ba          	movzwl -0x46(%rbp),%eax
  40adb4:	89 85 9c fa ff ff    	mov    %eax,-0x564(%rbp)
  40adba:	e9 0d 00 00 00       	jmpq   40adcc <message_eq+0x53c>
  40adbf:	31 c0                	xor    %eax,%eax
  40adc1:	89 85 9c fa ff ff    	mov    %eax,-0x564(%rbp)
  40adc7:	e9 00 00 00 00       	jmpq   40adcc <message_eq+0x53c>
  40adcc:	8b 85 9c fa ff ff    	mov    -0x564(%rbp),%eax
  40add2:	66 89 c1             	mov    %ax,%cx
  40add5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40add9:	66 89 88 38 30 00 00 	mov    %cx,0x3038(%rax)
  40ade0:	0f b7 45 b8          	movzwl -0x48(%rbp),%eax
  40ade4:	83 e0 10             	and    $0x10,%eax
  40ade7:	83 f8 00             	cmp    $0x0,%eax
  40adea:	0f 84 37 00 00 00    	je     40ae27 <message_eq+0x597>
  40adf0:	48 8d bd b0 fc ff ff 	lea    -0x350(%rbp),%rdi
  40adf7:	48 8b 75 d8          	mov    -0x28(%rbp),%rsi
  40adfb:	48 81 c6 1c 10 00 00 	add    $0x101c,%rsi
  40ae02:	0f b7 45 cc          	movzwl -0x34(%rbp),%eax
  40ae06:	48 98                	cltq   
  40ae08:	48 01 c6             	add    %rax,%rsi
  40ae0b:	0f b7 45 ce          	movzwl -0x32(%rbp),%eax
  40ae0f:	89 c2                	mov    %eax,%edx
  40ae11:	e8 ea 62 ff ff       	callq  401100 <memcpy@plt>
  40ae16:	0f b7 45 ce          	movzwl -0x32(%rbp),%eax
  40ae1a:	c6 84 05 b0 fc ff ff 	movb   $0x0,-0x350(%rbp,%rax,1)
  40ae21:	00 
  40ae22:	e9 07 00 00 00       	jmpq   40ae2e <message_eq+0x59e>
  40ae27:	c6 85 b0 fc ff ff 00 	movb   $0x0,-0x350(%rbp)
  40ae2e:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  40ae32:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  40ae36:	48 81 c2 1c 20 00 00 	add    $0x201c,%rdx
  40ae3d:	48 8d 8d b0 fc ff ff 	lea    -0x350(%rbp),%rcx
  40ae44:	48 be 16 48 41 00 00 	movabs $0x414816,%rsi
  40ae4b:	00 00 00 
  40ae4e:	e8 7d 05 00 00       	callq  40b3d0 <check_str_eq>
  40ae53:	e9 00 00 00 00       	jmpq   40ae58 <message_eq+0x5c8>
  40ae58:	0f b7 45 b8          	movzwl -0x48(%rbp),%eax
  40ae5c:	83 e0 20             	and    $0x20,%eax
  40ae5f:	83 f8 00             	cmp    $0x0,%eax
  40ae62:	0f 84 37 00 00 00    	je     40ae9f <message_eq+0x60f>
  40ae68:	48 8d bd b0 fb ff ff 	lea    -0x450(%rbp),%rdi
  40ae6f:	48 8b 75 d8          	mov    -0x28(%rbp),%rsi
  40ae73:	48 81 c6 1c 10 00 00 	add    $0x101c,%rsi
  40ae7a:	0f b7 45 d0          	movzwl -0x30(%rbp),%eax
  40ae7e:	48 98                	cltq   
  40ae80:	48 01 c6             	add    %rax,%rsi
  40ae83:	0f b7 45 d2          	movzwl -0x2e(%rbp),%eax
  40ae87:	89 c2                	mov    %eax,%edx
  40ae89:	e8 72 62 ff ff       	callq  401100 <memcpy@plt>
  40ae8e:	0f b7 45 d2          	movzwl -0x2e(%rbp),%eax
  40ae92:	c6 84 05 b0 fb ff ff 	movb   $0x0,-0x450(%rbp,%rax,1)
  40ae99:	00 
  40ae9a:	e9 07 00 00 00       	jmpq   40aea6 <message_eq+0x616>
  40ae9f:	c6 85 b0 fb ff ff 00 	movb   $0x0,-0x450(%rbp)
  40aea6:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  40aeaa:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  40aeae:	48 81 c2 1c 18 00 00 	add    $0x181c,%rdx
  40aeb5:	48 8d 8d b0 fb ff ff 	lea    -0x450(%rbp),%rcx
  40aebc:	48 be 70 4b 41 00 00 	movabs $0x414b70,%rsi
  40aec3:	00 00 00 
  40aec6:	e8 05 05 00 00       	callq  40b3d0 <check_str_eq>
  40aecb:	e9 00 00 00 00       	jmpq   40aed0 <message_eq+0x640>
  40aed0:	0f b7 45 b8          	movzwl -0x48(%rbp),%eax
  40aed4:	83 e0 08             	and    $0x8,%eax
  40aed7:	83 f8 00             	cmp    $0x0,%eax
  40aeda:	0f 84 37 00 00 00    	je     40af17 <message_eq+0x687>
  40aee0:	48 8d bd b0 fa ff ff 	lea    -0x550(%rbp),%rdi
  40aee7:	48 8b 75 d8          	mov    -0x28(%rbp),%rsi
  40aeeb:	48 81 c6 1c 10 00 00 	add    $0x101c,%rsi
  40aef2:	0f b7 45 c8          	movzwl -0x38(%rbp),%eax
  40aef6:	48 98                	cltq   
  40aef8:	48 01 c6             	add    %rax,%rsi
  40aefb:	0f b7 45 ca          	movzwl -0x36(%rbp),%eax
  40aeff:	89 c2                	mov    %eax,%edx
  40af01:	e8 fa 61 ff ff       	callq  401100 <memcpy@plt>
  40af06:	0f b7 45 ca          	movzwl -0x36(%rbp),%eax
  40af0a:	c6 84 05 b0 fa ff ff 	movb   $0x0,-0x550(%rbp,%rax,1)
  40af11:	00 
  40af12:	e9 07 00 00 00       	jmpq   40af1e <message_eq+0x68e>
  40af17:	c6 85 b0 fa ff ff 00 	movb   $0x0,-0x550(%rbp)
  40af1e:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  40af22:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  40af26:	48 81 c2 1c 08 00 00 	add    $0x81c,%rdx
  40af2d:	48 8d 8d b0 fa ff ff 	lea    -0x550(%rbp),%rcx
  40af34:	48 be 23 48 41 00 00 	movabs $0x414823,%rsi
  40af3b:	00 00 00 
  40af3e:	e8 8d 04 00 00       	callq  40b3d0 <check_str_eq>
  40af43:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  40af47:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40af4b:	0f b7 90 38 30 00 00 	movzwl 0x3038(%rax),%edx
  40af52:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40af56:	0f b7 88 38 30 00 00 	movzwl 0x3038(%rax),%ecx
  40af5d:	48 be 93 12 41 00 00 	movabs $0x411293,%rsi
  40af64:	00 00 00 
  40af67:	e8 d4 03 00 00       	callq  40b340 <check_num_eq>
  40af6c:	83 f8 00             	cmp    $0x0,%eax
  40af6f:	0f 85 0c 00 00 00    	jne    40af81 <message_eq+0x6f1>
  40af75:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  40af7c:	e9 af 03 00 00       	jmpq   40b330 <message_eq+0xaa0>
  40af81:	e9 00 00 00 00       	jmpq   40af86 <message_eq+0x6f6>
  40af86:	83 7d f4 00          	cmpl   $0x0,-0xc(%rbp)
  40af8a:	0f 84 27 00 00 00    	je     40afb7 <message_eq+0x727>
  40af90:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
  40af94:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40af98:	48 8b 80 20 30 00 00 	mov    0x3020(%rax),%rax
  40af9f:	89 c1                	mov    %eax,%ecx
  40afa1:	48 be 30 48 41 00 00 	movabs $0x414830,%rsi
  40afa8:	00 00 00 
  40afab:	31 d2                	xor    %edx,%edx
  40afad:	e8 8e 03 00 00       	callq  40b340 <check_num_eq>
  40afb2:	e9 a1 00 00 00       	jmpq   40b058 <message_eq+0x7c8>
  40afb7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40afbb:	48 83 b8 20 30 00 00 	cmpq   $0x0,0x3020(%rax)
  40afc2:	00 
  40afc3:	0f 84 47 00 00 00    	je     40b010 <message_eq+0x780>
  40afc9:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  40afcd:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40afd1:	48 8b 80 20 30 00 00 	mov    0x3020(%rax),%rax
  40afd8:	89 c2                	mov    %eax,%edx
  40afda:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40afde:	48 8b 80 20 30 00 00 	mov    0x3020(%rax),%rax
  40afe5:	89 c1                	mov    %eax,%ecx
  40afe7:	48 be 30 48 41 00 00 	movabs $0x414830,%rsi
  40afee:	00 00 00 
  40aff1:	e8 4a 03 00 00       	callq  40b340 <check_num_eq>
  40aff6:	83 f8 00             	cmp    $0x0,%eax
  40aff9:	0f 85 0c 00 00 00    	jne    40b00b <message_eq+0x77b>
  40afff:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  40b006:	e9 25 03 00 00       	jmpq   40b330 <message_eq+0xaa0>
  40b00b:	e9 43 00 00 00       	jmpq   40b053 <message_eq+0x7c3>
  40b010:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  40b014:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  40b018:	48 81 c2 1c 28 00 00 	add    $0x281c,%rdx
  40b01f:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  40b023:	48 81 c1 1c 28 00 00 	add    $0x281c,%rcx
  40b02a:	48 be 43 3f 41 00 00 	movabs $0x413f43,%rsi
  40b031:	00 00 00 
  40b034:	e8 97 03 00 00       	callq  40b3d0 <check_str_eq>
  40b039:	83 f8 00             	cmp    $0x0,%eax
  40b03c:	0f 85 0c 00 00 00    	jne    40b04e <message_eq+0x7be>
  40b042:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  40b049:	e9 e2 02 00 00       	jmpq   40b330 <message_eq+0xaa0>
  40b04e:	e9 00 00 00 00       	jmpq   40b053 <message_eq+0x7c3>
  40b053:	e9 00 00 00 00       	jmpq   40b058 <message_eq+0x7c8>
  40b058:	83 7d f4 00          	cmpl   $0x0,-0xc(%rbp)
  40b05c:	0f 84 24 00 00 00    	je     40b086 <message_eq+0x7f6>
  40b062:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
  40b066:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40b06a:	8b 88 4c 00 01 00    	mov    0x1004c(%rax),%ecx
  40b070:	48 be 4e 48 41 00 00 	movabs $0x41484e,%rsi
  40b077:	00 00 00 
  40b07a:	31 d2                	xor    %edx,%edx
  40b07c:	e8 bf 02 00 00       	callq  40b340 <check_num_eq>
  40b081:	e9 23 01 00 00       	jmpq   40b1a9 <message_eq+0x919>
  40b086:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40b08a:	8b 80 48 00 01 00    	mov    0x10048(%rax),%eax
  40b090:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  40b094:	3b 81 4c 00 01 00    	cmp    0x1004c(%rcx),%eax
  40b09a:	0f 85 05 00 00 00    	jne    40b0a5 <message_eq+0x815>
  40b0a0:	e9 28 00 00 00       	jmpq   40b0cd <message_eq+0x83d>
  40b0a5:	48 bf 3a 48 41 00 00 	movabs $0x41483a,%rdi
  40b0ac:	00 00 00 
  40b0af:	48 be 86 40 41 00 00 	movabs $0x414086,%rsi
  40b0b6:	00 00 00 
  40b0b9:	ba 09 0b 00 00       	mov    $0xb09,%edx
  40b0be:	48 b9 2c 47 41 00 00 	movabs $0x41472c,%rcx
  40b0c5:	00 00 00 
  40b0c8:	e8 c3 5f ff ff       	callq  401090 <__assert_fail@plt>
  40b0cd:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  40b0d1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40b0d5:	8b 90 4c 00 01 00    	mov    0x1004c(%rax),%edx
  40b0db:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40b0df:	8b 88 4c 00 01 00    	mov    0x1004c(%rax),%ecx
  40b0e5:	48 be 4e 48 41 00 00 	movabs $0x41484e,%rsi
  40b0ec:	00 00 00 
  40b0ef:	e8 4c 02 00 00       	callq  40b340 <check_num_eq>
  40b0f4:	83 f8 00             	cmp    $0x0,%eax
  40b0f7:	0f 85 0c 00 00 00    	jne    40b109 <message_eq+0x879>
  40b0fd:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  40b104:	e9 27 02 00 00       	jmpq   40b330 <message_eq+0xaa0>
  40b109:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
  40b110:	8b 4d e4             	mov    -0x1c(%rbp),%ecx
  40b113:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  40b117:	31 c0                	xor    %eax,%eax
  40b119:	3b 8a 48 00 01 00    	cmp    0x10048(%rdx),%ecx
  40b11f:	88 85 9b fa ff ff    	mov    %al,-0x565(%rbp)
  40b125:	0f 8d 0d 00 00 00    	jge    40b138 <message_eq+0x8a8>
  40b12b:	83 7d e4 10          	cmpl   $0x10,-0x1c(%rbp)
  40b12f:	0f 9c c0             	setl   %al
  40b132:	88 85 9b fa ff ff    	mov    %al,-0x565(%rbp)
  40b138:	8a 85 9b fa ff ff    	mov    -0x565(%rbp),%al
  40b13e:	a8 01                	test   $0x1,%al
  40b140:	0f 85 05 00 00 00    	jne    40b14b <message_eq+0x8bb>
  40b146:	e9 59 00 00 00       	jmpq   40b1a4 <message_eq+0x914>
  40b14b:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  40b14f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40b153:	48 63 4d e4          	movslq -0x1c(%rbp),%rcx
  40b157:	8b 94 88 50 00 01 00 	mov    0x10050(%rax,%rcx,4),%edx
  40b15e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40b162:	48 63 4d e4          	movslq -0x1c(%rbp),%rcx
  40b166:	8b 8c 88 50 00 01 00 	mov    0x10050(%rax,%rcx,4),%ecx
  40b16d:	48 be 62 48 41 00 00 	movabs $0x414862,%rsi
  40b174:	00 00 00 
  40b177:	e8 c4 01 00 00       	callq  40b340 <check_num_eq>
  40b17c:	83 f8 00             	cmp    $0x0,%eax
  40b17f:	0f 85 0c 00 00 00    	jne    40b191 <message_eq+0x901>
  40b185:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  40b18c:	e9 9f 01 00 00       	jmpq   40b330 <message_eq+0xaa0>
  40b191:	e9 00 00 00 00       	jmpq   40b196 <message_eq+0x906>
  40b196:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  40b199:	83 c0 01             	add    $0x1,%eax
  40b19c:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  40b19f:	e9 6c ff ff ff       	jmpq   40b110 <message_eq+0x880>
  40b1a4:	e9 00 00 00 00       	jmpq   40b1a9 <message_eq+0x919>
  40b1a9:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  40b1ad:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40b1b1:	8b 90 3c 30 00 00    	mov    0x303c(%rax),%edx
  40b1b7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40b1bb:	8b 88 3c 30 00 00    	mov    0x303c(%rax),%ecx
  40b1c1:	48 be 73 48 41 00 00 	movabs $0x414873,%rsi
  40b1c8:	00 00 00 
  40b1cb:	e8 70 01 00 00       	callq  40b340 <check_num_eq>
  40b1d0:	83 f8 00             	cmp    $0x0,%eax
  40b1d3:	0f 85 0c 00 00 00    	jne    40b1e5 <message_eq+0x955>
  40b1d9:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  40b1e0:	e9 4b 01 00 00       	jmpq   40b330 <message_eq+0xaa0>
  40b1e5:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
  40b1ec:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  40b1ef:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  40b1f3:	3b 81 3c 30 00 00    	cmp    0x303c(%rcx),%eax
  40b1f9:	0f 8d dd 00 00 00    	jge    40b2dc <message_eq+0xa4c>
  40b1ff:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  40b203:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  40b207:	48 81 c2 44 30 00 00 	add    $0x3044,%rdx
  40b20e:	48 63 45 e4          	movslq -0x1c(%rbp),%rax
  40b212:	48 c1 e0 0c          	shl    $0xc,%rax
  40b216:	48 01 c2             	add    %rax,%rdx
  40b219:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  40b21d:	48 81 c1 44 30 00 00 	add    $0x3044,%rcx
  40b224:	48 63 45 e4          	movslq -0x1c(%rbp),%rax
  40b228:	48 c1 e0 0c          	shl    $0xc,%rax
  40b22c:	48 01 c1             	add    %rax,%rcx
  40b22f:	48 be 7f 48 41 00 00 	movabs $0x41487f,%rsi
  40b236:	00 00 00 
  40b239:	e8 92 01 00 00       	callq  40b3d0 <check_str_eq>
  40b23e:	89 85 ac fa ff ff    	mov    %eax,-0x554(%rbp)
  40b244:	83 bd ac fa ff ff 00 	cmpl   $0x0,-0x554(%rbp)
  40b24b:	0f 85 0c 00 00 00    	jne    40b25d <message_eq+0x9cd>
  40b251:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  40b258:	e9 d3 00 00 00       	jmpq   40b330 <message_eq+0xaa0>
  40b25d:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  40b261:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  40b265:	48 81 c2 44 30 00 00 	add    $0x3044,%rdx
  40b26c:	48 63 45 e4          	movslq -0x1c(%rbp),%rax
  40b270:	48 c1 e0 0c          	shl    $0xc,%rax
  40b274:	48 01 c2             	add    %rax,%rdx
  40b277:	48 81 c2 00 08 00 00 	add    $0x800,%rdx
  40b27e:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  40b282:	48 81 c1 44 30 00 00 	add    $0x3044,%rcx
  40b289:	48 63 45 e4          	movslq -0x1c(%rbp),%rax
  40b28d:	48 c1 e0 0c          	shl    $0xc,%rax
  40b291:	48 01 c1             	add    %rax,%rcx
  40b294:	48 81 c1 00 08 00 00 	add    $0x800,%rcx
  40b29b:	48 be 7d 1f 41 00 00 	movabs $0x411f7d,%rsi
  40b2a2:	00 00 00 
  40b2a5:	e8 26 01 00 00       	callq  40b3d0 <check_str_eq>
  40b2aa:	89 85 ac fa ff ff    	mov    %eax,-0x554(%rbp)
  40b2b0:	83 bd ac fa ff ff 00 	cmpl   $0x0,-0x554(%rbp)
  40b2b7:	0f 85 0c 00 00 00    	jne    40b2c9 <message_eq+0xa39>
  40b2bd:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  40b2c4:	e9 67 00 00 00       	jmpq   40b330 <message_eq+0xaa0>
  40b2c9:	e9 00 00 00 00       	jmpq   40b2ce <message_eq+0xa3e>
  40b2ce:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  40b2d1:	83 c0 01             	add    $0x1,%eax
  40b2d4:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  40b2d7:	e9 10 ff ff ff       	jmpq   40b1ec <message_eq+0x95c>
  40b2dc:	83 7d f4 00          	cmpl   $0x0,-0xc(%rbp)
  40b2e0:	0f 85 43 00 00 00    	jne    40b329 <message_eq+0xa99>
  40b2e6:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  40b2ea:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40b2ee:	48 8b 90 90 00 01 00 	mov    0x10090(%rax),%rdx
  40b2f5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40b2f9:	48 8b 88 90 00 01 00 	mov    0x10090(%rax),%rcx
  40b300:	48 be 50 07 41 00 00 	movabs $0x410750,%rsi
  40b307:	00 00 00 
  40b30a:	e8 c1 00 00 00       	callq  40b3d0 <check_str_eq>
  40b30f:	83 f8 00             	cmp    $0x0,%eax
  40b312:	0f 85 0c 00 00 00    	jne    40b324 <message_eq+0xa94>
  40b318:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  40b31f:	e9 0c 00 00 00       	jmpq   40b330 <message_eq+0xaa0>
  40b324:	e9 00 00 00 00       	jmpq   40b329 <message_eq+0xa99>
  40b329:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
  40b330:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40b333:	48 81 c4 70 05 00 00 	add    $0x570,%rsp
  40b33a:	5d                   	pop    %rbp
  40b33b:	c3                   	retq   
  40b33c:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040b340 <check_num_eq>:
  40b340:	55                   	push   %rbp
  40b341:	48 89 e5             	mov    %rsp,%rbp
  40b344:	48 83 ec 20          	sub    $0x20,%rsp
  40b348:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
  40b34c:	48 89 75 e8          	mov    %rsi,-0x18(%rbp)
  40b350:	89 55 e4             	mov    %edx,-0x1c(%rbp)
  40b353:	89 4d e0             	mov    %ecx,-0x20(%rbp)
  40b356:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  40b359:	3b 45 e0             	cmp    -0x20(%rbp),%eax
  40b35c:	0f 84 50 00 00 00    	je     40b3b2 <check_num_eq+0x72>
  40b362:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
  40b366:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40b36a:	48 8b 10             	mov    (%rax),%rdx
  40b36d:	48 bf 99 69 41 00 00 	movabs $0x416999,%rdi
  40b374:	00 00 00 
  40b377:	b0 00                	mov    $0x0,%al
  40b379:	e8 02 5d ff ff       	callq  401080 <printf@plt>
  40b37e:	8b 75 e4             	mov    -0x1c(%rbp),%esi
  40b381:	48 bf b6 69 41 00 00 	movabs $0x4169b6,%rdi
  40b388:	00 00 00 
  40b38b:	b0 00                	mov    $0x0,%al
  40b38d:	e8 ee 5c ff ff       	callq  401080 <printf@plt>
  40b392:	8b 75 e0             	mov    -0x20(%rbp),%esi
  40b395:	48 bf c3 69 41 00 00 	movabs $0x4169c3,%rdi
  40b39c:	00 00 00 
  40b39f:	b0 00                	mov    $0x0,%al
  40b3a1:	e8 da 5c ff ff       	callq  401080 <printf@plt>
  40b3a6:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  40b3ad:	e9 07 00 00 00       	jmpq   40b3b9 <check_num_eq+0x79>
  40b3b2:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
  40b3b9:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40b3bc:	48 83 c4 20          	add    $0x20,%rsp
  40b3c0:	5d                   	pop    %rbp
  40b3c1:	c3                   	retq   
  40b3c2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40b3c9:	00 00 00 
  40b3cc:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040b3d0 <check_str_eq>:
  40b3d0:	55                   	push   %rbp
  40b3d1:	48 89 e5             	mov    %rsp,%rbp
  40b3d4:	48 83 ec 40          	sub    $0x40,%rsp
  40b3d8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
  40b3dc:	48 89 75 e8          	mov    %rsi,-0x18(%rbp)
  40b3e0:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
  40b3e4:	48 89 4d d8          	mov    %rcx,-0x28(%rbp)
  40b3e8:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
  40b3ed:	0f 94 c0             	sete   %al
  40b3f0:	24 01                	and    $0x1,%al
  40b3f2:	0f b6 c0             	movzbl %al,%eax
  40b3f5:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
  40b3fa:	0f 94 c1             	sete   %cl
  40b3fd:	80 e1 01             	and    $0x1,%cl
  40b400:	0f b6 c9             	movzbl %cl,%ecx
  40b403:	39 c8                	cmp    %ecx,%eax
  40b405:	0f 84 9e 00 00 00    	je     40b4a9 <check_str_eq+0xd9>
  40b40b:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
  40b40f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40b413:	48 8b 10             	mov    (%rax),%rdx
  40b416:	48 bf 99 69 41 00 00 	movabs $0x416999,%rdi
  40b41d:	00 00 00 
  40b420:	b0 00                	mov    $0x0,%al
  40b422:	e8 59 5c ff ff       	callq  401080 <printf@plt>
  40b427:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
  40b42c:	0f 85 13 00 00 00    	jne    40b445 <check_str_eq+0x75>
  40b432:	48 b8 dd 69 41 00 00 	movabs $0x4169dd,%rax
  40b439:	00 00 00 
  40b43c:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  40b440:	e9 08 00 00 00       	jmpq   40b44d <check_str_eq+0x7d>
  40b445:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40b449:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  40b44d:	48 8b 75 d0          	mov    -0x30(%rbp),%rsi
  40b451:	48 bf d0 69 41 00 00 	movabs $0x4169d0,%rdi
  40b458:	00 00 00 
  40b45b:	b0 00                	mov    $0x0,%al
  40b45d:	e8 1e 5c ff ff       	callq  401080 <printf@plt>
  40b462:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
  40b467:	0f 85 13 00 00 00    	jne    40b480 <check_str_eq+0xb0>
  40b46d:	48 b8 dd 69 41 00 00 	movabs $0x4169dd,%rax
  40b474:	00 00 00 
  40b477:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  40b47b:	e9 08 00 00 00       	jmpq   40b488 <check_str_eq+0xb8>
  40b480:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40b484:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  40b488:	48 8b 75 c8          	mov    -0x38(%rbp),%rsi
  40b48c:	48 bf e2 69 41 00 00 	movabs $0x4169e2,%rdi
  40b493:	00 00 00 
  40b496:	b0 00                	mov    $0x0,%al
  40b498:	e8 e3 5b ff ff       	callq  401080 <printf@plt>
  40b49d:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  40b4a4:	e9 7d 00 00 00       	jmpq   40b526 <check_str_eq+0x156>
  40b4a9:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
  40b4ae:	0f 84 6b 00 00 00    	je     40b51f <check_str_eq+0x14f>
  40b4b4:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
  40b4b8:	48 8b 75 d8          	mov    -0x28(%rbp),%rsi
  40b4bc:	e8 1f 5c ff ff       	callq  4010e0 <strcmp@plt>
  40b4c1:	89 c1                	mov    %eax,%ecx
  40b4c3:	31 c0                	xor    %eax,%eax
  40b4c5:	39 c8                	cmp    %ecx,%eax
  40b4c7:	0f 84 52 00 00 00    	je     40b51f <check_str_eq+0x14f>
  40b4cd:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
  40b4d1:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40b4d5:	48 8b 10             	mov    (%rax),%rdx
  40b4d8:	48 bf 99 69 41 00 00 	movabs $0x416999,%rdi
  40b4df:	00 00 00 
  40b4e2:	b0 00                	mov    $0x0,%al
  40b4e4:	e8 97 5b ff ff       	callq  401080 <printf@plt>
  40b4e9:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
  40b4ed:	48 bf ef 69 41 00 00 	movabs $0x4169ef,%rdi
  40b4f4:	00 00 00 
  40b4f7:	b0 00                	mov    $0x0,%al
  40b4f9:	e8 82 5b ff ff       	callq  401080 <printf@plt>
  40b4fe:	48 8b 75 d8          	mov    -0x28(%rbp),%rsi
  40b502:	48 bf fe 69 41 00 00 	movabs $0x4169fe,%rdi
  40b509:	00 00 00 
  40b50c:	b0 00                	mov    $0x0,%al
  40b50e:	e8 6d 5b ff ff       	callq  401080 <printf@plt>
  40b513:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  40b51a:	e9 07 00 00 00       	jmpq   40b526 <check_str_eq+0x156>
  40b51f:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
  40b526:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40b529:	48 83 c4 40          	add    $0x40,%rsp
  40b52d:	5d                   	pop    %rbp
  40b52e:	c3                   	retq   
  40b52f:	90                   	nop

000000000040b530 <count_parsed_messages>:
  40b530:	55                   	push   %rbp
  40b531:	48 89 e5             	mov    %rsp,%rbp
  40b534:	48 81 ec 90 00 00 00 	sub    $0x90,%rsp
  40b53b:	84 c0                	test   %al,%al
  40b53d:	0f 84 2c 00 00 00    	je     40b56f <count_parsed_messages+0x3f>
  40b543:	0f 29 85 40 ff ff ff 	movaps %xmm0,-0xc0(%rbp)
  40b54a:	0f 29 8d 50 ff ff ff 	movaps %xmm1,-0xb0(%rbp)
  40b551:	0f 29 95 60 ff ff ff 	movaps %xmm2,-0xa0(%rbp)
  40b558:	0f 29 9d 70 ff ff ff 	movaps %xmm3,-0x90(%rbp)
  40b55f:	0f 29 65 80          	movaps %xmm4,-0x80(%rbp)
  40b563:	0f 29 6d 90          	movaps %xmm5,-0x70(%rbp)
  40b567:	0f 29 75 a0          	movaps %xmm6,-0x60(%rbp)
  40b56b:	0f 29 7d b0          	movaps %xmm7,-0x50(%rbp)
  40b56f:	4c 89 8d 38 ff ff ff 	mov    %r9,-0xc8(%rbp)
  40b576:	4c 89 85 30 ff ff ff 	mov    %r8,-0xd0(%rbp)
  40b57d:	48 89 8d 28 ff ff ff 	mov    %rcx,-0xd8(%rbp)
  40b584:	48 89 95 20 ff ff ff 	mov    %rdx,-0xe0(%rbp)
  40b58b:	48 89 b5 18 ff ff ff 	mov    %rsi,-0xe8(%rbp)
  40b592:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
  40b596:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  40b59a:	48 8d 8d 10 ff ff ff 	lea    -0xf0(%rbp),%rcx
  40b5a1:	48 89 48 10          	mov    %rcx,0x10(%rax)
  40b5a5:	48 8d 4d 10          	lea    0x10(%rbp),%rcx
  40b5a9:	48 89 48 08          	mov    %rcx,0x8(%rax)
  40b5ad:	c7 40 04 30 00 00 00 	movl   $0x30,0x4(%rax)
  40b5b4:	c7 00 08 00 00 00    	movl   $0x8,(%rax)
  40b5ba:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
  40b5c1:	00 
  40b5c2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40b5c6:	48 3b 45 f0          	cmp    -0x10(%rbp),%rax
  40b5ca:	0f 83 aa 00 00 00    	jae    40b67a <count_parsed_messages+0x14a>
  40b5d0:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  40b5d4:	48 89 85 00 ff ff ff 	mov    %rax,-0x100(%rbp)
  40b5db:	8b 45 d0             	mov    -0x30(%rbp),%eax
  40b5de:	89 85 0c ff ff ff    	mov    %eax,-0xf4(%rbp)
  40b5e4:	83 f8 28             	cmp    $0x28,%eax
  40b5e7:	0f 87 25 00 00 00    	ja     40b612 <count_parsed_messages+0xe2>
  40b5ed:	48 8b 8d 00 ff ff ff 	mov    -0x100(%rbp),%rcx
  40b5f4:	8b 95 0c ff ff ff    	mov    -0xf4(%rbp),%edx
  40b5fa:	48 63 c2             	movslq %edx,%rax
  40b5fd:	48 03 41 10          	add    0x10(%rcx),%rax
  40b601:	83 c2 08             	add    $0x8,%edx
  40b604:	89 11                	mov    %edx,(%rcx)
  40b606:	48 89 85 f8 fe ff ff 	mov    %rax,-0x108(%rbp)
  40b60d:	e9 1d 00 00 00       	jmpq   40b62f <count_parsed_messages+0xff>
  40b612:	48 8b 8d 00 ff ff ff 	mov    -0x100(%rbp),%rcx
  40b619:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  40b61d:	48 89 d0             	mov    %rdx,%rax
  40b620:	48 83 c2 08          	add    $0x8,%rdx
  40b624:	48 89 51 08          	mov    %rdx,0x8(%rcx)
  40b628:	48 89 85 f8 fe ff ff 	mov    %rax,-0x108(%rbp)
  40b62f:	48 8b 85 f8 fe ff ff 	mov    -0x108(%rbp),%rax
  40b636:	48 8b 00             	mov    (%rax),%rax
  40b639:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  40b63d:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  40b641:	48 83 b8 90 00 01 00 	cmpq   $0x0,0x10090(%rax)
  40b648:	00 
  40b649:	0f 84 15 00 00 00    	je     40b664 <count_parsed_messages+0x134>
  40b64f:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  40b653:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40b657:	48 83 c0 01          	add    $0x1,%rax
  40b65b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40b65f:	e9 22 00 00 00       	jmpq   40b686 <count_parsed_messages+0x156>
  40b664:	e9 00 00 00 00       	jmpq   40b669 <count_parsed_messages+0x139>
  40b669:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40b66d:	48 83 c0 01          	add    $0x1,%rax
  40b671:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  40b675:	e9 48 ff ff ff       	jmpq   40b5c2 <count_parsed_messages+0x92>
  40b67a:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  40b67e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40b682:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40b686:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40b68a:	48 81 c4 90 00 00 00 	add    $0x90,%rsp
  40b691:	5d                   	pop    %rbp
  40b692:	c3                   	retq   
  40b693:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40b69a:	00 00 00 
  40b69d:	0f 1f 00             	nopl   (%rax)

000000000040b6a0 <upgrade_message_fix>:
  40b6a0:	55                   	push   %rbp
  40b6a1:	48 89 e5             	mov    %rsp,%rbp
  40b6a4:	48 81 ec 20 01 00 00 	sub    $0x120,%rsp
  40b6ab:	84 c0                	test   %al,%al
  40b6ad:	0f 84 2f 00 00 00    	je     40b6e2 <upgrade_message_fix+0x42>
  40b6b3:	0f 29 85 30 ff ff ff 	movaps %xmm0,-0xd0(%rbp)
  40b6ba:	0f 29 8d 40 ff ff ff 	movaps %xmm1,-0xc0(%rbp)
  40b6c1:	0f 29 95 50 ff ff ff 	movaps %xmm2,-0xb0(%rbp)
  40b6c8:	0f 29 9d 60 ff ff ff 	movaps %xmm3,-0xa0(%rbp)
  40b6cf:	0f 29 a5 70 ff ff ff 	movaps %xmm4,-0x90(%rbp)
  40b6d6:	0f 29 6d 80          	movaps %xmm5,-0x80(%rbp)
  40b6da:	0f 29 75 90          	movaps %xmm6,-0x70(%rbp)
  40b6de:	0f 29 7d a0          	movaps %xmm7,-0x60(%rbp)
  40b6e2:	4c 89 8d 28 ff ff ff 	mov    %r9,-0xd8(%rbp)
  40b6e9:	4c 89 85 20 ff ff ff 	mov    %r8,-0xe0(%rbp)
  40b6f0:	48 89 8d 18 ff ff ff 	mov    %rcx,-0xe8(%rbp)
  40b6f7:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40b6fb:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  40b6ff:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  40b703:	48 c7 45 c0 00 00 00 	movq   $0x0,-0x40(%rbp)
  40b70a:	00 
  40b70b:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  40b70f:	48 8d 8d 00 ff ff ff 	lea    -0x100(%rbp),%rcx
  40b716:	48 89 48 10          	mov    %rcx,0x10(%rax)
  40b71a:	48 8d 4d 10          	lea    0x10(%rbp),%rcx
  40b71e:	48 89 48 08          	mov    %rcx,0x8(%rax)
  40b722:	c7 40 04 30 00 00 00 	movl   $0x30,0x4(%rax)
  40b729:	c7 00 18 00 00 00    	movl   $0x18,(%rax)
  40b72f:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
  40b736:	00 
  40b737:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  40b73b:	48 3b 45 e8          	cmp    -0x18(%rbp),%rax
  40b73f:	0f 83 53 01 00 00    	jae    40b898 <upgrade_message_fix+0x1f8>
  40b745:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  40b749:	48 89 85 f0 fe ff ff 	mov    %rax,-0x110(%rbp)
  40b750:	8b 45 d0             	mov    -0x30(%rbp),%eax
  40b753:	89 85 fc fe ff ff    	mov    %eax,-0x104(%rbp)
  40b759:	83 f8 28             	cmp    $0x28,%eax
  40b75c:	0f 87 25 00 00 00    	ja     40b787 <upgrade_message_fix+0xe7>
  40b762:	48 8b 8d f0 fe ff ff 	mov    -0x110(%rbp),%rcx
  40b769:	8b 95 fc fe ff ff    	mov    -0x104(%rbp),%edx
  40b76f:	48 63 c2             	movslq %edx,%rax
  40b772:	48 03 41 10          	add    0x10(%rcx),%rax
  40b776:	83 c2 08             	add    $0x8,%edx
  40b779:	89 11                	mov    %edx,(%rcx)
  40b77b:	48 89 85 e8 fe ff ff 	mov    %rax,-0x118(%rbp)
  40b782:	e9 1d 00 00 00       	jmpq   40b7a4 <upgrade_message_fix+0x104>
  40b787:	48 8b 8d f0 fe ff ff 	mov    -0x110(%rbp),%rcx
  40b78e:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  40b792:	48 89 d0             	mov    %rdx,%rax
  40b795:	48 83 c2 08          	add    $0x8,%rdx
  40b799:	48 89 51 08          	mov    %rdx,0x8(%rcx)
  40b79d:	48 89 85 e8 fe ff ff 	mov    %rax,-0x118(%rbp)
  40b7a4:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  40b7ab:	48 8b 00             	mov    (%rax),%rax
  40b7ae:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
  40b7b2:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  40b7b6:	48 8b 78 08          	mov    0x8(%rax),%rdi
  40b7ba:	e8 b1 58 ff ff       	callq  401070 <strlen@plt>
  40b7bf:	48 03 45 c0          	add    -0x40(%rbp),%rax
  40b7c3:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  40b7c7:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  40b7cb:	48 83 b8 90 00 01 00 	cmpq   $0x0,0x10090(%rax)
  40b7d2:	00 
  40b7d3:	0f 84 a9 00 00 00    	je     40b882 <upgrade_message_fix+0x1e2>
  40b7d9:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  40b7dd:	48 8b b8 90 00 01 00 	mov    0x10090(%rax),%rdi
  40b7e4:	e8 87 58 ff ff       	callq  401070 <strlen@plt>
  40b7e9:	48 89 c1             	mov    %rax,%rcx
  40b7ec:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  40b7f0:	48 29 c8             	sub    %rcx,%rax
  40b7f3:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  40b7f7:	48 8b 7d b8          	mov    -0x48(%rbp),%rdi
  40b7fb:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  40b7ff:	48 03 55 c0          	add    -0x40(%rbp),%rdx
  40b803:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  40b807:	48 03 4d f0          	add    -0x10(%rbp),%rcx
  40b80b:	48 be 50 07 41 00 00 	movabs $0x410750,%rsi
  40b812:	00 00 00 
  40b815:	e8 b6 fb ff ff       	callq  40b3d0 <check_str_eq>
  40b81a:	83 f8 00             	cmp    $0x0,%eax
  40b81d:	0f 85 05 00 00 00    	jne    40b828 <upgrade_message_fix+0x188>
  40b823:	e8 18 58 ff ff       	callq  401040 <abort@plt>
  40b828:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40b82c:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  40b830:	48 01 c8             	add    %rcx,%rax
  40b833:	48 89 85 e0 fe ff ff 	mov    %rax,-0x120(%rbp)
  40b83a:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  40b83e:	48 8b b8 90 00 01 00 	mov    0x10090(%rax),%rdi
  40b845:	e8 26 58 ff ff       	callq  401070 <strlen@plt>
  40b84a:	48 8b 8d e0 fe ff ff 	mov    -0x120(%rbp),%rcx
  40b851:	c6 04 08 00          	movb   $0x0,(%rax,%rcx,1)
  40b855:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  40b859:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40b85d:	48 01 c1             	add    %rax,%rcx
  40b860:	8b 05 f2 02 51 00    	mov    0x5102f2(%rip),%eax        # 91bb58 <num_messages>
  40b866:	83 c0 ff             	add    $0xffffffff,%eax
  40b869:	48 98                	cltq   
  40b86b:	48 69 c0 c8 00 01 00 	imul   $0x100c8,%rax,%rax
  40b872:	48 89 88 00 b8 8d 00 	mov    %rcx,0x8db800(%rax)
  40b879:	48 81 c4 20 01 00 00 	add    $0x120,%rsp
  40b880:	5d                   	pop    %rbp
  40b881:	c3                   	retq   
  40b882:	e9 00 00 00 00       	jmpq   40b887 <upgrade_message_fix+0x1e7>
  40b887:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  40b88b:	48 83 c0 01          	add    $0x1,%rax
  40b88f:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  40b893:	e9 9f fe ff ff       	jmpq   40b737 <upgrade_message_fix+0x97>
  40b898:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  40b89c:	48 bf 8c 48 41 00 00 	movabs $0x41488c,%rdi
  40b8a3:	00 00 00 
  40b8a6:	b0 00                	mov    $0x0,%al
  40b8a8:	e8 d3 57 ff ff       	callq  401080 <printf@plt>
  40b8ad:	e8 8e 57 ff ff       	callq  401040 <abort@plt>
  40b8b2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40b8b9:	00 00 00 
  40b8bc:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040b8c0 <test_preserve_data>:
  40b8c0:	55                   	push   %rbp
  40b8c1:	48 89 e5             	mov    %rsp,%rbp
  40b8c4:	48 83 ec 40          	sub    $0x40,%rsp
  40b8c8:	48 8b 04 25 d0 b6 8b 	mov    0x8bb6d0,%rax
  40b8cf:	00 
  40b8d0:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  40b8d4:	48 8b 04 25 d8 b6 8b 	mov    0x8bb6d8,%rax
  40b8db:	00 
  40b8dc:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  40b8e0:	48 8b 04 25 e0 b6 8b 	mov    0x8bb6e0,%rax
  40b8e7:	00 
  40b8e8:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  40b8ec:	66 8b 04 25 e8 b6 8b 	mov    0x8bb6e8,%ax
  40b8f3:	00 
  40b8f4:	66 89 45 f8          	mov    %ax,-0x8(%rbp)
  40b8f8:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  40b8fc:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  40b900:	48 8d 7d c0          	lea    -0x40(%rbp),%rdi
  40b904:	31 f6                	xor    %esi,%esi
  40b906:	e8 95 cb ff ff       	callq  4084a0 <http_parser_init>
  40b90b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40b90f:	48 8d 4d e0          	lea    -0x20(%rbp),%rcx
  40b913:	48 39 c8             	cmp    %rcx,%rax
  40b916:	0f 84 16 00 00 00    	je     40b932 <test_preserve_data+0x72>
  40b91c:	48 bf be 48 41 00 00 	movabs $0x4148be,%rdi
  40b923:	00 00 00 
  40b926:	b0 00                	mov    $0x0,%al
  40b928:	e8 53 57 ff ff       	callq  401080 <printf@plt>
  40b92d:	e8 0e 57 ff ff       	callq  401040 <abort@plt>
  40b932:	48 83 c4 40          	add    $0x40,%rsp
  40b936:	5d                   	pop    %rbp
  40b937:	c3                   	retq   
  40b938:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40b93f:	00 

000000000040b940 <dump_url>:
  40b940:	55                   	push   %rbp
  40b941:	48 89 e5             	mov    %rsp,%rbp
  40b944:	48 83 ec 20          	sub    $0x20,%rsp
  40b948:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40b94c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  40b950:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40b954:	0f b7 30             	movzwl (%rax),%esi
  40b957:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40b95b:	0f b7 50 02          	movzwl 0x2(%rax),%edx
  40b95f:	48 bf 66 51 41 00 00 	movabs $0x415166,%rdi
  40b966:	00 00 00 
  40b969:	b0 00                	mov    $0x0,%al
  40b96b:	e8 10 57 ff ff       	callq  401080 <printf@plt>
  40b970:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
  40b977:	83 7d ec 07          	cmpl   $0x7,-0x14(%rbp)
  40b97b:	0f 83 93 00 00 00    	jae    40ba14 <dump_url+0xd4>
  40b981:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40b985:	0f b7 00             	movzwl (%rax),%eax
  40b988:	8b 4d ec             	mov    -0x14(%rbp),%ecx
  40b98b:	ba 01 00 00 00       	mov    $0x1,%edx
  40b990:	d3 e2                	shl    %cl,%edx
  40b992:	89 d1                	mov    %edx,%ecx
  40b994:	21 c8                	and    %ecx,%eax
  40b996:	83 f8 00             	cmp    $0x0,%eax
  40b999:	0f 85 19 00 00 00    	jne    40b9b8 <dump_url+0x78>
  40b99f:	8b 75 ec             	mov    -0x14(%rbp),%esi
  40b9a2:	48 bf 82 51 41 00 00 	movabs $0x415182,%rdi
  40b9a9:	00 00 00 
  40b9ac:	b0 00                	mov    $0x0,%al
  40b9ae:	e8 cd 56 ff ff       	callq  401080 <printf@plt>
  40b9b3:	e9 4e 00 00 00       	jmpq   40ba06 <dump_url+0xc6>
  40b9b8:	8b 75 ec             	mov    -0x14(%rbp),%esi
  40b9bb:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40b9bf:	8b 4d ec             	mov    -0x14(%rbp),%ecx
  40b9c2:	0f b7 54 88 04       	movzwl 0x4(%rax,%rcx,4),%edx
  40b9c7:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40b9cb:	8b 4d ec             	mov    -0x14(%rbp),%ecx
  40b9ce:	0f b7 4c 88 06       	movzwl 0x6(%rax,%rcx,4),%ecx
  40b9d3:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40b9d7:	8b 7d ec             	mov    -0x14(%rbp),%edi
  40b9da:	44 0f b7 44 b8 06    	movzwl 0x6(%rax,%rdi,4),%r8d
  40b9e0:	4c 8b 4d f8          	mov    -0x8(%rbp),%r9
  40b9e4:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40b9e8:	8b 7d ec             	mov    -0x14(%rbp),%edi
  40b9eb:	0f b7 44 b8 04       	movzwl 0x4(%rax,%rdi,4),%eax
  40b9f0:	48 98                	cltq   
  40b9f2:	49 01 c1             	add    %rax,%r9
  40b9f5:	48 bf 9a 51 41 00 00 	movabs $0x41519a,%rdi
  40b9fc:	00 00 00 
  40b9ff:	b0 00                	mov    $0x0,%al
  40ba01:	e8 7a 56 ff ff       	callq  401080 <printf@plt>
  40ba06:	8b 45 ec             	mov    -0x14(%rbp),%eax
  40ba09:	83 c0 01             	add    $0x1,%eax
  40ba0c:	89 45 ec             	mov    %eax,-0x14(%rbp)
  40ba0f:	e9 63 ff ff ff       	jmpq   40b977 <dump_url+0x37>
  40ba14:	48 83 c4 20          	add    $0x20,%rsp
  40ba18:	5d                   	pop    %rbp
  40ba19:	c3                   	retq   
  40ba1a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

000000000040ba20 <test_parse_url>:
  40ba20:	55                   	push   %rbp
  40ba21:	48 89 e5             	mov    %rsp,%rbp
  40ba24:	48 83 ec 40          	sub    $0x40,%rsp
  40ba28:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%rbp)
  40ba2f:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  40ba32:	48 83 f8 2e          	cmp    $0x2e,%rax
  40ba36:	0f 83 9c 01 00 00    	jae    40bbd8 <test_parse_url+0x1b8>
  40ba3c:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  40ba3f:	89 c1                	mov    %eax,%ecx
  40ba41:	48 b8 c0 a4 8b 00 00 	movabs $0x8ba4c0,%rax
  40ba48:	00 00 00 
  40ba4b:	48 6b c9 38          	imul   $0x38,%rcx,%rcx
  40ba4f:	48 01 c8             	add    %rcx,%rax
  40ba52:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  40ba56:	48 8d 7d e0          	lea    -0x20(%rbp),%rdi
  40ba5a:	31 f6                	xor    %esi,%esi
  40ba5c:	ba 20 00 00 00       	mov    $0x20,%edx
  40ba61:	e8 3a 56 ff ff       	callq  4010a0 <memset@plt>
  40ba66:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40ba6a:	48 8b 40 08          	mov    0x8(%rax),%rax
  40ba6e:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  40ba72:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40ba76:	48 83 78 08 00       	cmpq   $0x0,0x8(%rax)
  40ba7b:	0f 84 16 00 00 00    	je     40ba97 <test_parse_url+0x77>
  40ba81:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40ba85:	48 8b 78 08          	mov    0x8(%rax),%rdi
  40ba89:	e8 e2 55 ff ff       	callq  401070 <strlen@plt>
  40ba8e:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  40ba92:	e9 0b 00 00 00       	jmpq   40baa2 <test_parse_url+0x82>
  40ba97:	31 c0                	xor    %eax,%eax
  40ba99:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  40ba9d:	e9 00 00 00 00       	jmpq   40baa2 <test_parse_url+0x82>
  40baa2:	48 8b 7d c8          	mov    -0x38(%rbp),%rdi
  40baa6:	48 8b 75 c0          	mov    -0x40(%rbp),%rsi
  40baaa:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40baae:	8b 50 10             	mov    0x10(%rax),%edx
  40bab1:	48 8d 4d e0          	lea    -0x20(%rbp),%rcx
  40bab5:	e8 d6 cb ff ff       	callq  408690 <http_parser_parse_url>
  40baba:	89 45 d0             	mov    %eax,-0x30(%rbp)
  40babd:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40bac1:	83 78 34 00          	cmpl   $0x0,0x34(%rax)
  40bac5:	0f 85 c3 00 00 00    	jne    40bb8e <test_parse_url+0x16e>
  40bacb:	83 7d d0 00          	cmpl   $0x0,-0x30(%rbp)
  40bacf:	0f 84 28 00 00 00    	je     40bafd <test_parse_url+0xdd>
  40bad5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40bad9:	48 8b 70 08          	mov    0x8(%rax),%rsi
  40badd:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40bae1:	48 8b 10             	mov    (%rax),%rdx
  40bae4:	8b 4d d0             	mov    -0x30(%rbp),%ecx
  40bae7:	48 bf c9 51 41 00 00 	movabs $0x4151c9,%rdi
  40baee:	00 00 00 
  40baf1:	b0 00                	mov    $0x0,%al
  40baf3:	e8 88 55 ff ff       	callq  401080 <printf@plt>
  40baf8:	e8 43 55 ff ff       	callq  401040 <abort@plt>
  40bafd:	48 8d 7d e0          	lea    -0x20(%rbp),%rdi
  40bb01:	48 8b 75 d8          	mov    -0x28(%rbp),%rsi
  40bb05:	48 83 c6 14          	add    $0x14,%rsi
  40bb09:	ba 20 00 00 00       	mov    $0x20,%edx
  40bb0e:	e8 bd 55 ff ff       	callq  4010d0 <memcmp@plt>
  40bb13:	83 f8 00             	cmp    $0x0,%eax
  40bb16:	0f 84 6d 00 00 00    	je     40bb89 <test_parse_url+0x169>
  40bb1c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40bb20:	48 8b 70 08          	mov    0x8(%rax),%rsi
  40bb24:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40bb28:	48 8b 10             	mov    (%rax),%rdx
  40bb2b:	48 bf 13 52 41 00 00 	movabs $0x415213,%rdi
  40bb32:	00 00 00 
  40bb35:	b0 00                	mov    $0x0,%al
  40bb37:	e8 44 55 ff ff       	callq  401080 <printf@plt>
  40bb3c:	48 bf 45 52 41 00 00 	movabs $0x415245,%rdi
  40bb43:	00 00 00 
  40bb46:	b0 00                	mov    $0x0,%al
  40bb48:	e8 33 55 ff ff       	callq  401080 <printf@plt>
  40bb4d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40bb51:	48 8b 78 08          	mov    0x8(%rax),%rdi
  40bb55:	48 8b 75 d8          	mov    -0x28(%rbp),%rsi
  40bb59:	48 83 c6 14          	add    $0x14,%rsi
  40bb5d:	e8 de fd ff ff       	callq  40b940 <dump_url>
  40bb62:	48 bf 5e 52 41 00 00 	movabs $0x41525e,%rdi
  40bb69:	00 00 00 
  40bb6c:	b0 00                	mov    $0x0,%al
  40bb6e:	e8 0d 55 ff ff       	callq  401080 <printf@plt>
  40bb73:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40bb77:	48 8b 78 08          	mov    0x8(%rax),%rdi
  40bb7b:	48 8d 75 e0          	lea    -0x20(%rbp),%rsi
  40bb7f:	e8 bc fd ff ff       	callq  40b940 <dump_url>
  40bb84:	e8 b7 54 ff ff       	callq  401040 <abort@plt>
  40bb89:	e9 37 00 00 00       	jmpq   40bbc5 <test_parse_url+0x1a5>
  40bb8e:	83 7d d0 00          	cmpl   $0x0,-0x30(%rbp)
  40bb92:	0f 85 28 00 00 00    	jne    40bbc0 <test_parse_url+0x1a0>
  40bb98:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40bb9c:	48 8b 70 08          	mov    0x8(%rax),%rsi
  40bba0:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40bba4:	48 8b 10             	mov    (%rax),%rdx
  40bba7:	8b 4d d0             	mov    -0x30(%rbp),%ecx
  40bbaa:	48 bf c9 51 41 00 00 	movabs $0x4151c9,%rdi
  40bbb1:	00 00 00 
  40bbb4:	b0 00                	mov    $0x0,%al
  40bbb6:	e8 c5 54 ff ff       	callq  401080 <printf@plt>
  40bbbb:	e8 80 54 ff ff       	callq  401040 <abort@plt>
  40bbc0:	e9 00 00 00 00       	jmpq   40bbc5 <test_parse_url+0x1a5>
  40bbc5:	e9 00 00 00 00       	jmpq   40bbca <test_parse_url+0x1aa>
  40bbca:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  40bbcd:	83 c0 01             	add    $0x1,%eax
  40bbd0:	89 45 d4             	mov    %eax,-0x2c(%rbp)
  40bbd3:	e9 57 fe ff ff       	jmpq   40ba2f <test_parse_url+0xf>
  40bbd8:	48 83 c4 40          	add    $0x40,%rsp
  40bbdc:	5d                   	pop    %rbp
  40bbdd:	c3                   	retq   
  40bbde:	66 90                	xchg   %ax,%ax

000000000040bbe0 <test_method_str>:
  40bbe0:	55                   	push   %rbp
  40bbe1:	48 89 e5             	mov    %rsp,%rbp
  40bbe4:	bf 01 00 00 00       	mov    $0x1,%edi
  40bbe9:	e8 b2 c3 ff ff       	callq  407fa0 <http_method_str>
  40bbee:	48 89 c6             	mov    %rax,%rsi
  40bbf1:	bf 2f 0e 41 00       	mov    $0x410e2f,%edi
  40bbf6:	e8 e5 54 ff ff       	callq  4010e0 <strcmp@plt>
  40bbfb:	89 c1                	mov    %eax,%ecx
  40bbfd:	31 c0                	xor    %eax,%eax
  40bbff:	39 c8                	cmp    %ecx,%eax
  40bc01:	0f 85 05 00 00 00    	jne    40bc0c <test_method_str+0x2c>
  40bc07:	e9 28 00 00 00       	jmpq   40bc34 <test_method_str+0x54>
  40bc0c:	48 bf 77 52 41 00 00 	movabs $0x415277,%rdi
  40bc13:	00 00 00 
  40bc16:	48 be 86 40 41 00 00 	movabs $0x414086,%rsi
  40bc1d:	00 00 00 
  40bc20:	ba 0e 0e 00 00       	mov    $0xe0e,%edx
  40bc25:	48 b9 a5 52 41 00 00 	movabs $0x4152a5,%rcx
  40bc2c:	00 00 00 
  40bc2f:	e8 5c 54 ff ff       	callq  401090 <__assert_fail@plt>
  40bc34:	bf 39 05 00 00       	mov    $0x539,%edi
  40bc39:	e8 62 c3 ff ff       	callq  407fa0 <http_method_str>
  40bc3e:	48 89 c6             	mov    %rax,%rsi
  40bc41:	bf c0 08 41 00       	mov    $0x4108c0,%edi
  40bc46:	e8 95 54 ff ff       	callq  4010e0 <strcmp@plt>
  40bc4b:	89 c1                	mov    %eax,%ecx
  40bc4d:	31 c0                	xor    %eax,%eax
  40bc4f:	39 c8                	cmp    %ecx,%eax
  40bc51:	0f 85 05 00 00 00    	jne    40bc5c <test_method_str+0x7c>
  40bc57:	e9 28 00 00 00       	jmpq   40bc84 <test_method_str+0xa4>
  40bc5c:	48 bf c0 52 41 00 00 	movabs $0x4152c0,%rdi
  40bc63:	00 00 00 
  40bc66:	48 be 86 40 41 00 00 	movabs $0x414086,%rsi
  40bc6d:	00 00 00 
  40bc70:	ba 0f 0e 00 00       	mov    $0xe0f,%edx
  40bc75:	48 b9 a5 52 41 00 00 	movabs $0x4152a5,%rcx
  40bc7c:	00 00 00 
  40bc7f:	e8 0c 54 ff ff       	callq  401090 <__assert_fail@plt>
  40bc84:	5d                   	pop    %rbp
  40bc85:	c3                   	retq   
  40bc86:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40bc8d:	00 00 00 

000000000040bc90 <test_status_str>:
  40bc90:	55                   	push   %rbp
  40bc91:	48 89 e5             	mov    %rsp,%rbp
  40bc94:	bf c8 00 00 00       	mov    $0xc8,%edi
  40bc99:	e8 52 c3 ff ff       	callq  407ff0 <http_status_str>
  40bc9e:	48 89 c6             	mov    %rax,%rsi
  40bca1:	bf fa 59 41 00       	mov    $0x4159fa,%edi
  40bca6:	e8 35 54 ff ff       	callq  4010e0 <strcmp@plt>
  40bcab:	89 c1                	mov    %eax,%ecx
  40bcad:	31 c0                	xor    %eax,%eax
  40bcaf:	39 c8                	cmp    %ecx,%eax
  40bcb1:	0f 85 05 00 00 00    	jne    40bcbc <test_status_str+0x2c>
  40bcb7:	e9 28 00 00 00       	jmpq   40bce4 <test_status_str+0x54>
  40bcbc:	48 bf f0 52 41 00 00 	movabs $0x4152f0,%rdi
  40bcc3:	00 00 00 
  40bcc6:	48 be 86 40 41 00 00 	movabs $0x414086,%rsi
  40bccd:	00 00 00 
  40bcd0:	ba 15 0e 00 00       	mov    $0xe15,%edx
  40bcd5:	48 b9 23 53 41 00 00 	movabs $0x415323,%rcx
  40bcdc:	00 00 00 
  40bcdf:	e8 ac 53 ff ff       	callq  401090 <__assert_fail@plt>
  40bce4:	bf 94 01 00 00       	mov    $0x194,%edi
  40bce9:	e8 02 c3 ff ff       	callq  407ff0 <http_status_str>
  40bcee:	48 89 c6             	mov    %rax,%rsi
  40bcf1:	bf 0e 0a 41 00       	mov    $0x410a0e,%edi
  40bcf6:	e8 e5 53 ff ff       	callq  4010e0 <strcmp@plt>
  40bcfb:	89 c1                	mov    %eax,%ecx
  40bcfd:	31 c0                	xor    %eax,%eax
  40bcff:	39 c8                	cmp    %ecx,%eax
  40bd01:	0f 85 05 00 00 00    	jne    40bd0c <test_status_str+0x7c>
  40bd07:	e9 28 00 00 00       	jmpq   40bd34 <test_status_str+0xa4>
  40bd0c:	48 bf 3e 53 41 00 00 	movabs $0x41533e,%rdi
  40bd13:	00 00 00 
  40bd16:	48 be 86 40 41 00 00 	movabs $0x414086,%rsi
  40bd1d:	00 00 00 
  40bd20:	ba 16 0e 00 00       	mov    $0xe16,%edx
  40bd25:	48 b9 23 53 41 00 00 	movabs $0x415323,%rcx
  40bd2c:	00 00 00 
  40bd2f:	e8 5c 53 ff ff       	callq  401090 <__assert_fail@plt>
  40bd34:	bf 39 05 00 00       	mov    $0x539,%edi
  40bd39:	e8 b2 c2 ff ff       	callq  407ff0 <http_status_str>
  40bd3e:	48 89 c6             	mov    %rax,%rsi
  40bd41:	bf c0 08 41 00       	mov    $0x4108c0,%edi
  40bd46:	e8 95 53 ff ff       	callq  4010e0 <strcmp@plt>
  40bd4b:	89 c1                	mov    %eax,%ecx
  40bd4d:	31 c0                	xor    %eax,%eax
  40bd4f:	39 c8                	cmp    %ecx,%eax
  40bd51:	0f 85 05 00 00 00    	jne    40bd5c <test_status_str+0xcc>
  40bd57:	e9 28 00 00 00       	jmpq   40bd84 <test_status_str+0xf4>
  40bd5c:	48 bf 7f 53 41 00 00 	movabs $0x41537f,%rdi
  40bd63:	00 00 00 
  40bd66:	48 be 86 40 41 00 00 	movabs $0x414086,%rsi
  40bd6d:	00 00 00 
  40bd70:	ba 17 0e 00 00       	mov    $0xe17,%edx
  40bd75:	48 b9 23 53 41 00 00 	movabs $0x415323,%rcx
  40bd7c:	00 00 00 
  40bd7f:	e8 0c 53 ff ff       	callq  401090 <__assert_fail@plt>
  40bd84:	5d                   	pop    %rbp
  40bd85:	c3                   	retq   
  40bd86:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40bd8d:	00 00 00 

000000000040bd90 <test_message>:
  40bd90:	55                   	push   %rbp
  40bd91:	48 89 e5             	mov    %rsp,%rbp
  40bd94:	48 83 ec 40          	sub    $0x40,%rsp
  40bd98:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40bd9c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40bda0:	48 8b 78 08          	mov    0x8(%rax),%rdi
  40bda4:	e8 c7 52 ff ff       	callq  401070 <strlen@plt>
  40bda9:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  40bdad:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
  40bdb4:	00 
  40bdb5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40bdb9:	48 3b 45 f0          	cmp    -0x10(%rbp),%rax
  40bdbd:	0f 83 d4 02 00 00    	jae    40c097 <test_message+0x307>
  40bdc3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40bdc7:	8b 78 10             	mov    0x10(%rax),%edi
  40bdca:	e8 d1 e8 ff ff       	callq  40a6a0 <parser_init>
  40bdcf:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40bdd3:	83 b8 c0 00 01 00 00 	cmpl   $0x0,0x100c0(%rax)
  40bdda:	0f 84 18 00 00 00    	je     40bdf8 <test_message+0x68>
  40bde0:	8b 04 25 50 b7 8c 00 	mov    0x8cb750,%eax
  40bde7:	25 ff ff ff bf       	and    $0xbfffffff,%eax
  40bdec:	0d 00 00 00 40       	or     $0x40000000,%eax
  40bdf1:	89 04 25 50 b7 8c 00 	mov    %eax,0x8cb750
  40bdf8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40bdfc:	48 8b 40 08          	mov    0x8(%rax),%rax
  40be00:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  40be04:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40be08:	48 03 45 e8          	add    -0x18(%rbp),%rax
  40be0c:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  40be10:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40be14:	48 2b 45 e8          	sub    -0x18(%rbp),%rax
  40be18:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  40be1c:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
  40be21:	0f 84 53 01 00 00    	je     40bf7a <test_message+0x1ea>
  40be27:	83 3c 25 58 bb 91 00 	cmpl   $0x0,0x91bb58
  40be2e:	00 
  40be2f:	0f 85 05 00 00 00    	jne    40be3a <test_message+0xaa>
  40be35:	e9 28 00 00 00       	jmpq   40be62 <test_message+0xd2>
  40be3a:	48 bf af 53 41 00 00 	movabs $0x4153af,%rdi
  40be41:	00 00 00 
  40be44:	48 be 86 40 41 00 00 	movabs $0x414086,%rsi
  40be4b:	00 00 00 
  40be4e:	ba 2b 0e 00 00       	mov    $0xe2b,%edx
  40be53:	48 b9 c1 53 41 00 00 	movabs $0x4153c1,%rcx
  40be5a:	00 00 00 
  40be5d:	e8 2e 52 ff ff       	callq  401090 <__assert_fail@plt>
  40be62:	c7 04 25 1c b8 8d 00 	movl   $0x0,0x8db81c
  40be69:	00 00 00 00 
  40be6d:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
  40be71:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
  40be75:	e8 76 e8 ff ff       	callq  40a6f0 <parse>
  40be7a:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  40be7e:	83 3c 25 1c b8 8d 00 	cmpl   $0x0,0x8db81c
  40be85:	00 
  40be86:	0f 85 61 00 00 00    	jne    40beed <test_message+0x15d>
  40be8c:	8b 04 25 54 b7 8c 00 	mov    0x8cb754,%eax
  40be93:	48 3b 45 e0          	cmp    -0x20(%rbp),%rax
  40be97:	0f 84 50 00 00 00    	je     40beed <test_message+0x15d>
  40be9d:	8b 04 25 54 b7 8c 00 	mov    0x8cb754,%eax
  40bea4:	48 3b 45 e0          	cmp    -0x20(%rbp),%rax
  40bea8:	0f 85 05 00 00 00    	jne    40beb3 <test_message+0x123>
  40beae:	e9 28 00 00 00       	jmpq   40bedb <test_message+0x14b>
  40beb3:	48 bf eb 53 41 00 00 	movabs $0x4153eb,%rdi
  40beba:	00 00 00 
  40bebd:	48 be 86 40 41 00 00 	movabs $0x414086,%rsi
  40bec4:	00 00 00 
  40bec7:	ba 31 0e 00 00       	mov    $0xe31,%edx
  40becc:	48 b9 c1 53 41 00 00 	movabs $0x4153c1,%rcx
  40bed3:	00 00 00 
  40bed6:	e8 b5 51 ff ff       	callq  401090 <__assert_fail@plt>
  40bedb:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
  40bedf:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
  40bee3:	e8 b8 01 00 00       	callq  40c0a0 <print_error>
  40bee8:	e8 53 51 ff ff       	callq  401040 <abort@plt>
  40beed:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40bef1:	48 83 b8 90 00 01 00 	cmpq   $0x0,0x10090(%rax)
  40bef8:	00 
  40bef9:	0f 84 56 00 00 00    	je     40bf55 <test_message+0x1c5>
  40beff:	8b 04 25 64 b7 8c 00 	mov    0x8cb764,%eax
  40bf06:	c1 e8 1f             	shr    $0x1f,%eax
  40bf09:	83 f8 00             	cmp    $0x0,%eax
  40bf0c:	0f 84 43 00 00 00    	je     40bf55 <test_message+0x1c5>
  40bf12:	83 3c 25 58 bb 91 00 	cmpl   $0x0,0x91bb58
  40bf19:	00 
  40bf1a:	0f 8e 35 00 00 00    	jle    40bf55 <test_message+0x1c5>
  40bf20:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  40bf24:	48 03 4d e0          	add    -0x20(%rbp),%rcx
  40bf28:	8b 04 25 58 bb 91 00 	mov    0x91bb58,%eax
  40bf2f:	83 e8 01             	sub    $0x1,%eax
  40bf32:	48 63 d0             	movslq %eax,%rdx
  40bf35:	48 b8 70 b7 8c 00 00 	movabs $0x8cb770,%rax
  40bf3c:	00 00 00 
  40bf3f:	48 69 d2 c8 00 01 00 	imul   $0x100c8,%rdx,%rdx
  40bf46:	48 01 d0             	add    %rdx,%rax
  40bf49:	48 89 88 90 00 01 00 	mov    %rcx,0x10090(%rax)
  40bf50:	e9 e6 00 00 00       	jmpq   40c03b <test_message+0x2ab>
  40bf55:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40bf59:	48 3b 45 e8          	cmp    -0x18(%rbp),%rax
  40bf5d:	0f 84 12 00 00 00    	je     40bf75 <test_message+0x1e5>
  40bf63:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
  40bf67:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
  40bf6b:	e8 30 01 00 00       	callq  40c0a0 <print_error>
  40bf70:	e8 cb 50 ff ff       	callq  401040 <abort@plt>
  40bf75:	e9 00 00 00 00       	jmpq   40bf7a <test_message+0x1ea>
  40bf7a:	48 8b 7d d0          	mov    -0x30(%rbp),%rdi
  40bf7e:	48 8b 75 c8          	mov    -0x38(%rbp),%rsi
  40bf82:	e8 69 e7 ff ff       	callq  40a6f0 <parse>
  40bf87:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  40bf8b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40bf8f:	48 83 b8 90 00 01 00 	cmpq   $0x0,0x10090(%rax)
  40bf96:	00 
  40bf97:	0f 84 48 00 00 00    	je     40bfe5 <test_message+0x255>
  40bf9d:	8b 04 25 64 b7 8c 00 	mov    0x8cb764,%eax
  40bfa4:	c1 e8 1f             	shr    $0x1f,%eax
  40bfa7:	83 f8 00             	cmp    $0x0,%eax
  40bfaa:	0f 84 35 00 00 00    	je     40bfe5 <test_message+0x255>
  40bfb0:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
  40bfb4:	48 03 4d e0          	add    -0x20(%rbp),%rcx
  40bfb8:	8b 04 25 58 bb 91 00 	mov    0x91bb58,%eax
  40bfbf:	83 e8 01             	sub    $0x1,%eax
  40bfc2:	48 63 d0             	movslq %eax,%rdx
  40bfc5:	48 b8 70 b7 8c 00 00 	movabs $0x8cb770,%rax
  40bfcc:	00 00 00 
  40bfcf:	48 69 d2 c8 00 01 00 	imul   $0x100c8,%rdx,%rdx
  40bfd6:	48 01 d0             	add    %rdx,%rax
  40bfd9:	48 89 88 90 00 01 00 	mov    %rcx,0x10090(%rax)
  40bfe0:	e9 56 00 00 00       	jmpq   40c03b <test_message+0x2ab>
  40bfe5:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40bfe9:	48 3b 45 c8          	cmp    -0x38(%rbp),%rax
  40bfed:	0f 84 12 00 00 00    	je     40c005 <test_message+0x275>
  40bff3:	48 8b 7d d0          	mov    -0x30(%rbp),%rdi
  40bff7:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
  40bffb:	e8 a0 00 00 00       	callq  40c0a0 <print_error>
  40c000:	e8 3b 50 ff ff       	callq  401040 <abort@plt>
  40c005:	31 c0                	xor    %eax,%eax
  40c007:	89 c6                	mov    %eax,%esi
  40c009:	48 89 f7             	mov    %rsi,%rdi
  40c00c:	e8 df e6 ff ff       	callq  40a6f0 <parse>
  40c011:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  40c015:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
  40c01a:	0f 84 16 00 00 00    	je     40c036 <test_message+0x2a6>
  40c020:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40c024:	48 8b 78 08          	mov    0x8(%rax),%rdi
  40c028:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
  40c02c:	e8 6f 00 00 00       	callq  40c0a0 <print_error>
  40c031:	e8 0a 50 ff ff       	callq  401040 <abort@plt>
  40c036:	e9 00 00 00 00       	jmpq   40c03b <test_message+0x2ab>
  40c03b:	83 3c 25 58 bb 91 00 	cmpl   $0x1,0x91bb58
  40c042:	01 
  40c043:	0f 84 1d 00 00 00    	je     40c066 <test_message+0x2d6>
  40c049:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40c04d:	48 8b 30             	mov    (%rax),%rsi
  40c050:	48 bf 00 54 41 00 00 	movabs $0x415400,%rdi
  40c057:	00 00 00 
  40c05a:	b0 00                	mov    $0x0,%al
  40c05c:	e8 1f 50 ff ff       	callq  401080 <printf@plt>
  40c061:	e8 da 4f ff ff       	callq  401040 <abort@plt>
  40c066:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  40c06a:	31 f6                	xor    %esi,%esi
  40c06c:	89 f7                	mov    %esi,%edi
  40c06e:	e8 1d e8 ff ff       	callq  40a890 <message_eq>
  40c073:	83 f8 00             	cmp    $0x0,%eax
  40c076:	0f 85 05 00 00 00    	jne    40c081 <test_message+0x2f1>
  40c07c:	e8 bf 4f ff ff       	callq  401040 <abort@plt>
  40c081:	e9 00 00 00 00       	jmpq   40c086 <test_message+0x2f6>
  40c086:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40c08a:	48 83 c0 01          	add    $0x1,%rax
  40c08e:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  40c092:	e9 1e fd ff ff       	jmpq   40bdb5 <test_message+0x25>
  40c097:	48 83 c4 40          	add    $0x40,%rsp
  40c09b:	5d                   	pop    %rbp
  40c09c:	c3                   	retq   
  40c09d:	0f 1f 00             	nopl   (%rax)

000000000040c0a0 <print_error>:
  40c0a0:	55                   	push   %rbp
  40c0a1:	48 89 e5             	mov    %rsp,%rbp
  40c0a4:	48 83 ec 50          	sub    $0x50,%rsp
  40c0a8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40c0ac:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  40c0b0:	48 8b 04 25 40 b7 8c 	mov    0x8cb740,%rax
  40c0b7:	00 
  40c0b8:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  40c0bc:	8b 3c 25 64 b7 8c 00 	mov    0x8cb764,%edi
  40c0c3:	c1 ef 18             	shr    $0x18,%edi
  40c0c6:	83 e7 7f             	and    $0x7f,%edi
  40c0c9:	e8 22 c5 ff ff       	callq  4085f0 <http_errno_description>
  40c0ce:	48 8b 7d c0          	mov    -0x40(%rbp),%rdi
  40c0d2:	48 89 c2             	mov    %rax,%rdx
  40c0d5:	48 be 0d 6a 41 00 00 	movabs $0x416a0d,%rsi
  40c0dc:	00 00 00 
  40c0df:	b0 00                	mov    $0x0,%al
  40c0e1:	e8 0a 50 ff ff       	callq  4010f0 <fprintf@plt>
  40c0e6:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
  40c0ed:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
  40c0f4:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  40c0f8:	e8 73 4f ff ff       	callq  401070 <strlen@plt>
  40c0fd:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  40c101:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
  40c108:	00 
  40c109:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
  40c110:	00 
  40c111:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40c115:	48 3b 45 d0          	cmp    -0x30(%rbp),%rax
  40c119:	0f 83 e9 00 00 00    	jae    40c208 <print_error+0x168>
  40c11f:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40c123:	48 3b 45 f0          	cmp    -0x10(%rbp),%rax
  40c127:	0f 85 07 00 00 00    	jne    40c134 <print_error+0x94>
  40c12d:	c7 45 ec 01 00 00 00 	movl   $0x1,-0x14(%rbp)
  40c134:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40c138:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  40c13c:	0f be 04 08          	movsbl (%rax,%rcx,1),%eax
  40c140:	89 45 bc             	mov    %eax,-0x44(%rbp)
  40c143:	83 e8 0a             	sub    $0xa,%eax
  40c146:	0f 84 3b 00 00 00    	je     40c187 <print_error+0xe7>
  40c14c:	e9 00 00 00 00       	jmpq   40c151 <print_error+0xb1>
  40c151:	8b 45 bc             	mov    -0x44(%rbp),%eax
  40c154:	83 e8 0d             	sub    $0xd,%eax
  40c157:	0f 85 5f 00 00 00    	jne    40c1bc <print_error+0x11c>
  40c15d:	e9 00 00 00 00       	jmpq   40c162 <print_error+0xc2>
  40c162:	c7 45 e8 02 00 00 00 	movl   $0x2,-0x18(%rbp)
  40c169:	48 8b 3c 25 40 b7 8c 	mov    0x8cb740,%rdi
  40c170:	00 
  40c171:	48 be 1b 6a 41 00 00 	movabs $0x416a1b,%rsi
  40c178:	00 00 00 
  40c17b:	b0 00                	mov    $0x0,%al
  40c17d:	e8 6e 4f ff ff       	callq  4010f0 <fprintf@plt>
  40c182:	e9 55 00 00 00       	jmpq   40c1dc <print_error+0x13c>
  40c187:	48 8b 3c 25 40 b7 8c 	mov    0x8cb740,%rdi
  40c18e:	00 
  40c18f:	48 be 1e 6a 41 00 00 	movabs $0x416a1e,%rsi
  40c196:	00 00 00 
  40c199:	b0 00                	mov    $0x0,%al
  40c19b:	e8 50 4f ff ff       	callq  4010f0 <fprintf@plt>
  40c1a0:	83 7d ec 00          	cmpl   $0x0,-0x14(%rbp)
  40c1a4:	0f 84 05 00 00 00    	je     40c1af <print_error+0x10f>
  40c1aa:	e9 72 00 00 00       	jmpq   40c221 <print_error+0x181>
  40c1af:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
  40c1b6:	00 
  40c1b7:	e9 3b 00 00 00       	jmpq   40c1f7 <print_error+0x157>
  40c1bc:	c7 45 e8 01 00 00 00 	movl   $0x1,-0x18(%rbp)
  40c1c3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40c1c7:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  40c1cb:	0f be 3c 08          	movsbl (%rax,%rcx,1),%edi
  40c1cf:	48 8b 34 25 40 b7 8c 	mov    0x8cb740,%rsi
  40c1d6:	00 
  40c1d7:	e8 d4 4e ff ff       	callq  4010b0 <fputc@plt>
  40c1dc:	83 7d ec 00          	cmpl   $0x0,-0x14(%rbp)
  40c1e0:	0f 85 0c 00 00 00    	jne    40c1f2 <print_error+0x152>
  40c1e6:	48 63 45 e8          	movslq -0x18(%rbp),%rax
  40c1ea:	48 03 45 c8          	add    -0x38(%rbp),%rax
  40c1ee:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  40c1f2:	e9 00 00 00 00       	jmpq   40c1f7 <print_error+0x157>
  40c1f7:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40c1fb:	48 83 c0 01          	add    $0x1,%rax
  40c1ff:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  40c203:	e9 09 ff ff ff       	jmpq   40c111 <print_error+0x71>
  40c208:	48 8b 3c 25 40 b7 8c 	mov    0x8cb740,%rdi
  40c20f:	00 
  40c210:	48 be 22 6a 41 00 00 	movabs $0x416a22,%rsi
  40c217:	00 00 00 
  40c21a:	b0 00                	mov    $0x0,%al
  40c21c:	e8 cf 4e ff ff       	callq  4010f0 <fprintf@plt>
  40c221:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
  40c228:	00 
  40c229:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40c22d:	48 3b 45 c8          	cmp    -0x38(%rbp),%rax
  40c231:	0f 83 23 00 00 00    	jae    40c25a <print_error+0x1ba>
  40c237:	48 8b 34 25 40 b7 8c 	mov    0x8cb740,%rsi
  40c23e:	00 
  40c23f:	bf 20 00 00 00       	mov    $0x20,%edi
  40c244:	e8 67 4e ff ff       	callq  4010b0 <fputc@plt>
  40c249:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40c24d:	48 83 c0 01          	add    $0x1,%rax
  40c251:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  40c255:	e9 cf ff ff ff       	jmpq   40c229 <print_error+0x189>
  40c25a:	48 8b 3c 25 40 b7 8c 	mov    0x8cb740,%rdi
  40c261:	00 
  40c262:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40c266:	89 c2                	mov    %eax,%edx
  40c268:	48 be 29 6a 41 00 00 	movabs $0x416a29,%rsi
  40c26f:	00 00 00 
  40c272:	b0 00                	mov    $0x0,%al
  40c274:	e8 77 4e ff ff       	callq  4010f0 <fprintf@plt>
  40c279:	48 83 c4 50          	add    $0x50,%rsp
  40c27d:	5d                   	pop    %rbp
  40c27e:	c3                   	retq   
  40c27f:	90                   	nop

000000000040c280 <test_message_count_body>:
  40c280:	55                   	push   %rbp
  40c281:	48 89 e5             	mov    %rsp,%rbp
  40c284:	48 83 ec 40          	sub    $0x40,%rsp
  40c288:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40c28c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40c290:	8b 78 10             	mov    0x10(%rax),%edi
  40c293:	e8 08 e4 ff ff       	callq  40a6a0 <parser_init>
  40c298:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40c29c:	48 8b 78 08          	mov    0x8(%rax),%rdi
  40c2a0:	e8 cb 4d ff ff       	callq  401070 <strlen@plt>
  40c2a5:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  40c2a9:	48 c7 45 d0 b8 0f 00 	movq   $0xfb8,-0x30(%rbp)
  40c2b0:	00 
  40c2b1:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
  40c2b8:	00 
  40c2b9:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40c2bd:	48 3b 45 e8          	cmp    -0x18(%rbp),%rax
  40c2c1:	0f 83 86 00 00 00    	jae    40c34d <test_message_count_body+0xcd>
  40c2c7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40c2cb:	48 2b 45 e0          	sub    -0x20(%rbp),%rax
  40c2cf:	48 3b 45 d0          	cmp    -0x30(%rbp),%rax
  40c2d3:	0f 83 11 00 00 00    	jae    40c2ea <test_message_count_body+0x6a>
  40c2d9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40c2dd:	48 2b 45 e0          	sub    -0x20(%rbp),%rax
  40c2e1:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  40c2e5:	e9 08 00 00 00       	jmpq   40c2f2 <test_message_count_body+0x72>
  40c2ea:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  40c2ee:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  40c2f2:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  40c2f6:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  40c2fa:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40c2fe:	48 8b 78 08          	mov    0x8(%rax),%rdi
  40c302:	48 03 7d e0          	add    -0x20(%rbp),%rdi
  40c306:	48 8b 75 d8          	mov    -0x28(%rbp),%rsi
  40c30a:	e8 41 e4 ff ff       	callq  40a750 <parse_count_body>
  40c30f:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  40c313:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40c317:	48 3b 45 d8          	cmp    -0x28(%rbp),%rax
  40c31b:	0f 84 16 00 00 00    	je     40c337 <test_message_count_body+0xb7>
  40c321:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40c325:	48 8b 78 08          	mov    0x8(%rax),%rdi
  40c329:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
  40c32d:	e8 6e fd ff ff       	callq  40c0a0 <print_error>
  40c332:	e8 09 4d ff ff       	callq  401040 <abort@plt>
  40c337:	e9 00 00 00 00       	jmpq   40c33c <test_message_count_body+0xbc>
  40c33c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  40c340:	48 03 45 e0          	add    -0x20(%rbp),%rax
  40c344:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  40c348:	e9 6c ff ff ff       	jmpq   40c2b9 <test_message_count_body+0x39>
  40c34d:	31 c0                	xor    %eax,%eax
  40c34f:	89 c6                	mov    %eax,%esi
  40c351:	48 89 f7             	mov    %rsi,%rdi
  40c354:	e8 f7 e3 ff ff       	callq  40a750 <parse_count_body>
  40c359:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  40c35d:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
  40c362:	0f 84 16 00 00 00    	je     40c37e <test_message_count_body+0xfe>
  40c368:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40c36c:	48 8b 78 08          	mov    0x8(%rax),%rdi
  40c370:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
  40c374:	e8 27 fd ff ff       	callq  40c0a0 <print_error>
  40c379:	e8 c2 4c ff ff       	callq  401040 <abort@plt>
  40c37e:	83 3c 25 58 bb 91 00 	cmpl   $0x1,0x91bb58
  40c385:	01 
  40c386:	0f 84 1d 00 00 00    	je     40c3a9 <test_message_count_body+0x129>
  40c38c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40c390:	48 8b 30             	mov    (%rax),%rsi
  40c393:	48 bf 00 54 41 00 00 	movabs $0x415400,%rdi
  40c39a:	00 00 00 
  40c39d:	b0 00                	mov    $0x0,%al
  40c39f:	e8 dc 4c ff ff       	callq  401080 <printf@plt>
  40c3a4:	e8 97 4c ff ff       	callq  401040 <abort@plt>
  40c3a9:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  40c3ad:	31 f6                	xor    %esi,%esi
  40c3af:	89 f7                	mov    %esi,%edi
  40c3b1:	e8 da e4 ff ff       	callq  40a890 <message_eq>
  40c3b6:	83 f8 00             	cmp    $0x0,%eax
  40c3b9:	0f 85 05 00 00 00    	jne    40c3c4 <test_message_count_body+0x144>
  40c3bf:	e8 7c 4c ff ff       	callq  401040 <abort@plt>
  40c3c4:	48 83 c4 40          	add    $0x40,%rsp
  40c3c8:	5d                   	pop    %rbp
  40c3c9:	c3                   	retq   
  40c3ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

000000000040c3d0 <test_simple_type>:
  40c3d0:	55                   	push   %rbp
  40c3d1:	48 89 e5             	mov    %rsp,%rbp
  40c3d4:	48 83 ec 30          	sub    $0x30,%rsp
  40c3d8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40c3dc:	89 75 f4             	mov    %esi,-0xc(%rbp)
  40c3df:	89 55 f0             	mov    %edx,-0x10(%rbp)
  40c3e2:	8b 7d f0             	mov    -0x10(%rbp),%edi
  40c3e5:	e8 b6 e2 ff ff       	callq  40a6a0 <parser_init>
  40c3ea:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40c3ee:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  40c3f2:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  40c3f6:	e8 75 4c ff ff       	callq  401070 <strlen@plt>
  40c3fb:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
  40c3ff:	48 89 c6             	mov    %rax,%rsi
  40c402:	e8 e9 e2 ff ff       	callq  40a6f0 <parse>
  40c407:	8b 04 25 64 b7 8c 00 	mov    0x8cb764,%eax
  40c40e:	c1 e8 18             	shr    $0x18,%eax
  40c411:	83 e0 7f             	and    $0x7f,%eax
  40c414:	89 45 ec             	mov    %eax,-0x14(%rbp)
  40c417:	31 c0                	xor    %eax,%eax
  40c419:	89 c6                	mov    %eax,%esi
  40c41b:	48 89 f7             	mov    %rsi,%rdi
  40c41e:	e8 cd e2 ff ff       	callq  40a6f0 <parse>
  40c423:	8b 45 f4             	mov    -0xc(%rbp),%eax
  40c426:	3b 45 ec             	cmp    -0x14(%rbp),%eax
  40c429:	0f 84 59 00 00 00    	je     40c488 <test_simple_type+0xb8>
  40c42f:	83 7d f4 00          	cmpl   $0x0,-0xc(%rbp)
  40c433:	0f 84 4f 00 00 00    	je     40c488 <test_simple_type+0xb8>
  40c439:	83 7d ec 1e          	cmpl   $0x1e,-0x14(%rbp)
  40c43d:	0f 84 45 00 00 00    	je     40c488 <test_simple_type+0xb8>
  40c443:	48 8b 04 25 40 b7 8c 	mov    0x8cb740,%rax
  40c44a:	00 
  40c44b:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  40c44f:	8b 7d f4             	mov    -0xc(%rbp),%edi
  40c452:	e8 29 c1 ff ff       	callq  408580 <http_errno_name>
  40c457:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  40c45b:	8b 7d ec             	mov    -0x14(%rbp),%edi
  40c45e:	e8 1d c1 ff ff       	callq  408580 <http_errno_name>
  40c463:	48 8b 7d d0          	mov    -0x30(%rbp),%rdi
  40c467:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  40c46b:	48 89 c1             	mov    %rax,%rcx
  40c46e:	4c 8b 45 f8          	mov    -0x8(%rbp),%r8
  40c472:	48 be 30 54 41 00 00 	movabs $0x415430,%rsi
  40c479:	00 00 00 
  40c47c:	b0 00                	mov    $0x0,%al
  40c47e:	e8 6d 4c ff ff       	callq  4010f0 <fprintf@plt>
  40c483:	e8 b8 4b ff ff       	callq  401040 <abort@plt>
  40c488:	48 83 c4 30          	add    $0x30,%rsp
  40c48c:	5d                   	pop    %rbp
  40c48d:	c3                   	retq   
  40c48e:	66 90                	xchg   %ax,%ax

000000000040c490 <test_simple>:
  40c490:	55                   	push   %rbp
  40c491:	48 89 e5             	mov    %rsp,%rbp
  40c494:	48 83 ec 10          	sub    $0x10,%rsp
  40c498:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40c49c:	89 75 f4             	mov    %esi,-0xc(%rbp)
  40c49f:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  40c4a3:	8b 75 f4             	mov    -0xc(%rbp),%esi
  40c4a6:	31 d2                	xor    %edx,%edx
  40c4a8:	e8 23 ff ff ff       	callq  40c3d0 <test_simple_type>
  40c4ad:	48 83 c4 10          	add    $0x10,%rsp
  40c4b1:	5d                   	pop    %rbp
  40c4b2:	c3                   	retq   
  40c4b3:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40c4ba:	00 00 00 
  40c4bd:	0f 1f 00             	nopl   (%rax)

000000000040c4c0 <test_invalid_header_content>:
  40c4c0:	55                   	push   %rbp
  40c4c1:	48 89 e5             	mov    %rsp,%rbp
  40c4c4:	48 83 ec 60          	sub    $0x60,%rsp
  40c4c8:	89 7d fc             	mov    %edi,-0x4(%rbp)
  40c4cb:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  40c4cf:	8b 4d fc             	mov    -0x4(%rbp),%ecx
  40c4d2:	be 01 00 00 00       	mov    $0x1,%esi
  40c4d7:	31 c0                	xor    %eax,%eax
  40c4d9:	83 f9 00             	cmp    $0x0,%ecx
  40c4dc:	0f 45 f0             	cmovne %eax,%esi
  40c4df:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
  40c4e3:	e8 b8 bf ff ff       	callq  4084a0 <http_parser_init>
  40c4e8:	8b 55 fc             	mov    -0x4(%rbp),%edx
  40c4eb:	48 b8 73 54 41 00 00 	movabs $0x415473,%rax
  40c4f2:	00 00 00 
  40c4f5:	48 b9 62 54 41 00 00 	movabs $0x415462,%rcx
  40c4fc:	00 00 00 
  40c4ff:	83 fa 00             	cmp    $0x0,%edx
  40c502:	48 0f 45 c1          	cmovne %rcx,%rax
  40c506:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  40c50a:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  40c50e:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  40c512:	48 8b 7d c0          	mov    -0x40(%rbp),%rdi
  40c516:	e8 55 4b ff ff       	callq  401070 <strlen@plt>
  40c51b:	48 8b 55 a8          	mov    -0x58(%rbp),%rdx
  40c51f:	48 89 c1             	mov    %rax,%rcx
  40c522:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
  40c526:	48 be 68 bb 91 00 00 	movabs $0x91bb68,%rsi
  40c52d:	00 00 00 
  40c530:	e8 1b 4d ff ff       	callq  401250 <http_parser_execute>
  40c535:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  40c539:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  40c53d:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  40c541:	48 8b 7d c0          	mov    -0x40(%rbp),%rdi
  40c545:	e8 26 4b ff ff       	callq  401070 <strlen@plt>
  40c54a:	48 89 c1             	mov    %rax,%rcx
  40c54d:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  40c551:	48 39 c8             	cmp    %rcx,%rax
  40c554:	0f 85 05 00 00 00    	jne    40c55f <test_invalid_header_content+0x9f>
  40c55a:	e9 28 00 00 00       	jmpq   40c587 <test_invalid_header_content+0xc7>
  40c55f:	48 bf 85 54 41 00 00 	movabs $0x415485,%rdi
  40c566:	00 00 00 
  40c569:	48 be 86 40 41 00 00 	movabs $0x414086,%rsi
  40c570:	00 00 00 
  40c573:	ba ae 0e 00 00       	mov    $0xeae,%edx
  40c578:	48 b9 9b 54 41 00 00 	movabs $0x41549b,%rcx
  40c57f:	00 00 00 
  40c582:	e8 09 4b ff ff       	callq  401090 <__assert_fail@plt>
  40c587:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40c58b:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  40c58f:	48 8b 7d c0          	mov    -0x40(%rbp),%rdi
  40c593:	e8 d8 4a ff ff       	callq  401070 <strlen@plt>
  40c598:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
  40c59c:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
  40c5a0:	48 8b 4d b8          	mov    -0x48(%rbp),%rcx
  40c5a4:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
  40c5a8:	48 be 68 bb 91 00 00 	movabs $0x91bb68,%rsi
  40c5af:	00 00 00 
  40c5b2:	e8 99 4c ff ff       	callq  401250 <http_parser_execute>
  40c5b7:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  40c5bb:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  40c5bf:	48 3b 45 b8          	cmp    -0x48(%rbp),%rax
  40c5c3:	0f 84 45 00 00 00    	je     40c60e <test_invalid_header_content+0x14e>
  40c5c9:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  40c5cc:	c1 e8 18             	shr    $0x18,%eax
  40c5cf:	83 e0 7f             	and    $0x7f,%eax
  40c5d2:	83 f8 18             	cmp    $0x18,%eax
  40c5d5:	0f 85 05 00 00 00    	jne    40c5e0 <test_invalid_header_content+0x120>
  40c5db:	e9 28 00 00 00       	jmpq   40c608 <test_invalid_header_content+0x148>
  40c5e0:	48 bf cf 54 41 00 00 	movabs $0x4154cf,%rdi
  40c5e7:	00 00 00 
  40c5ea:	48 be 86 40 41 00 00 	movabs $0x414086,%rsi
  40c5f1:	00 00 00 
  40c5f4:	ba b5 0e 00 00       	mov    $0xeb5,%edx
  40c5f9:	48 b9 9b 54 41 00 00 	movabs $0x41549b,%rcx
  40c600:	00 00 00 
  40c603:	e8 88 4a ff ff       	callq  401090 <__assert_fail@plt>
  40c608:	48 83 c4 60          	add    $0x60,%rsp
  40c60c:	5d                   	pop    %rbp
  40c60d:	c3                   	retq   
  40c60e:	48 8b 3c 25 40 b7 8c 	mov    0x8cb740,%rdi
  40c615:	00 
  40c616:	48 be 06 55 41 00 00 	movabs $0x415506,%rsi
  40c61d:	00 00 00 
  40c620:	b0 00                	mov    $0x0,%al
  40c622:	e8 c9 4a ff ff       	callq  4010f0 <fprintf@plt>
  40c627:	e8 14 4a ff ff       	callq  401040 <abort@plt>
  40c62c:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040c630 <test_invalid_header_field_content_error>:
  40c630:	55                   	push   %rbp
  40c631:	48 89 e5             	mov    %rsp,%rbp
  40c634:	48 83 ec 10          	sub    $0x10,%rsp
  40c638:	89 7d fc             	mov    %edi,-0x4(%rbp)
  40c63b:	8b 7d fc             	mov    -0x4(%rbp),%edi
  40c63e:	48 be 47 55 41 00 00 	movabs $0x415547,%rsi
  40c645:	00 00 00 
  40c648:	e8 73 fe ff ff       	callq  40c4c0 <test_invalid_header_content>
  40c64d:	8b 7d fc             	mov    -0x4(%rbp),%edi
  40c650:	48 be 55 55 41 00 00 	movabs $0x415555,%rsi
  40c657:	00 00 00 
  40c65a:	e8 61 fe ff ff       	callq  40c4c0 <test_invalid_header_content>
  40c65f:	48 83 c4 10          	add    $0x10,%rsp
  40c663:	5d                   	pop    %rbp
  40c664:	c3                   	retq   
  40c665:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40c66c:	00 00 00 
  40c66f:	90                   	nop

000000000040c670 <test_invalid_header_field>:
  40c670:	55                   	push   %rbp
  40c671:	48 89 e5             	mov    %rsp,%rbp
  40c674:	48 83 ec 60          	sub    $0x60,%rsp
  40c678:	89 7d fc             	mov    %edi,-0x4(%rbp)
  40c67b:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  40c67f:	8b 4d fc             	mov    -0x4(%rbp),%ecx
  40c682:	be 01 00 00 00       	mov    $0x1,%esi
  40c687:	31 c0                	xor    %eax,%eax
  40c689:	83 f9 00             	cmp    $0x0,%ecx
  40c68c:	0f 45 f0             	cmovne %eax,%esi
  40c68f:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
  40c693:	e8 08 be ff ff       	callq  4084a0 <http_parser_init>
  40c698:	8b 55 fc             	mov    -0x4(%rbp),%edx
  40c69b:	48 b8 73 54 41 00 00 	movabs $0x415473,%rax
  40c6a2:	00 00 00 
  40c6a5:	48 b9 62 54 41 00 00 	movabs $0x415462,%rcx
  40c6ac:	00 00 00 
  40c6af:	83 fa 00             	cmp    $0x0,%edx
  40c6b2:	48 0f 45 c1          	cmovne %rcx,%rax
  40c6b6:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  40c6ba:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  40c6be:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  40c6c2:	48 8b 7d c0          	mov    -0x40(%rbp),%rdi
  40c6c6:	e8 a5 49 ff ff       	callq  401070 <strlen@plt>
  40c6cb:	48 8b 55 a8          	mov    -0x58(%rbp),%rdx
  40c6cf:	48 89 c1             	mov    %rax,%rcx
  40c6d2:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
  40c6d6:	48 be 68 bb 91 00 00 	movabs $0x91bb68,%rsi
  40c6dd:	00 00 00 
  40c6e0:	e8 6b 4b ff ff       	callq  401250 <http_parser_execute>
  40c6e5:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  40c6e9:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  40c6ed:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  40c6f1:	48 8b 7d c0          	mov    -0x40(%rbp),%rdi
  40c6f5:	e8 76 49 ff ff       	callq  401070 <strlen@plt>
  40c6fa:	48 89 c1             	mov    %rax,%rcx
  40c6fd:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  40c701:	48 39 c8             	cmp    %rcx,%rax
  40c704:	0f 85 05 00 00 00    	jne    40c70f <test_invalid_header_field+0x9f>
  40c70a:	e9 28 00 00 00       	jmpq   40c737 <test_invalid_header_field+0xc7>
  40c70f:	48 bf 85 54 41 00 00 	movabs $0x415485,%rdi
  40c716:	00 00 00 
  40c719:	48 be 86 40 41 00 00 	movabs $0x414086,%rsi
  40c720:	00 00 00 
  40c723:	ba d0 0e 00 00       	mov    $0xed0,%edx
  40c728:	48 b9 5f 55 41 00 00 	movabs $0x41555f,%rcx
  40c72f:	00 00 00 
  40c732:	e8 59 49 ff ff       	callq  401090 <__assert_fail@plt>
  40c737:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40c73b:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  40c73f:	48 8b 7d c0          	mov    -0x40(%rbp),%rdi
  40c743:	e8 28 49 ff ff       	callq  401070 <strlen@plt>
  40c748:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
  40c74c:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
  40c750:	48 8b 4d b8          	mov    -0x48(%rbp),%rcx
  40c754:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
  40c758:	48 be 68 bb 91 00 00 	movabs $0x91bb68,%rsi
  40c75f:	00 00 00 
  40c762:	e8 e9 4a ff ff       	callq  401250 <http_parser_execute>
  40c767:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  40c76b:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  40c76f:	48 3b 45 b8          	cmp    -0x48(%rbp),%rax
  40c773:	0f 84 45 00 00 00    	je     40c7be <test_invalid_header_field+0x14e>
  40c779:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  40c77c:	c1 e8 18             	shr    $0x18,%eax
  40c77f:	83 e0 7f             	and    $0x7f,%eax
  40c782:	83 f8 18             	cmp    $0x18,%eax
  40c785:	0f 85 05 00 00 00    	jne    40c790 <test_invalid_header_field+0x120>
  40c78b:	e9 28 00 00 00       	jmpq   40c7b8 <test_invalid_header_field+0x148>
  40c790:	48 bf cf 54 41 00 00 	movabs $0x4154cf,%rdi
  40c797:	00 00 00 
  40c79a:	48 be 86 40 41 00 00 	movabs $0x414086,%rsi
  40c7a1:	00 00 00 
  40c7a4:	ba d7 0e 00 00       	mov    $0xed7,%edx
  40c7a9:	48 b9 5f 55 41 00 00 	movabs $0x41555f,%rcx
  40c7b0:	00 00 00 
  40c7b3:	e8 d8 48 ff ff       	callq  401090 <__assert_fail@plt>
  40c7b8:	48 83 c4 60          	add    $0x60,%rsp
  40c7bc:	5d                   	pop    %rbp
  40c7bd:	c3                   	retq   
  40c7be:	48 8b 3c 25 40 b7 8c 	mov    0x8cb740,%rdi
  40c7c5:	00 
  40c7c6:	48 be 91 55 41 00 00 	movabs $0x415591,%rsi
  40c7cd:	00 00 00 
  40c7d0:	b0 00                	mov    $0x0,%al
  40c7d2:	e8 19 49 ff ff       	callq  4010f0 <fprintf@plt>
  40c7d7:	e8 64 48 ff ff       	callq  401040 <abort@plt>
  40c7dc:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040c7e0 <test_invalid_header_field_token_error>:
  40c7e0:	55                   	push   %rbp
  40c7e1:	48 89 e5             	mov    %rsp,%rbp
  40c7e4:	48 83 ec 10          	sub    $0x10,%rsp
  40c7e8:	89 7d fc             	mov    %edi,-0x4(%rbp)
  40c7eb:	8b 7d fc             	mov    -0x4(%rbp),%edi
  40c7ee:	48 be d0 55 41 00 00 	movabs $0x4155d0,%rsi
  40c7f5:	00 00 00 
  40c7f8:	e8 73 fe ff ff       	callq  40c670 <test_invalid_header_field>
  40c7fd:	8b 7d fc             	mov    -0x4(%rbp),%edi
  40c800:	48 be dd 55 41 00 00 	movabs $0x4155dd,%rsi
  40c807:	00 00 00 
  40c80a:	e8 61 fe ff ff       	callq  40c670 <test_invalid_header_field>
  40c80f:	48 83 c4 10          	add    $0x10,%rsp
  40c813:	5d                   	pop    %rbp
  40c814:	c3                   	retq   
  40c815:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40c81c:	00 00 00 
  40c81f:	90                   	nop

000000000040c820 <test_double_content_length_error>:
  40c820:	55                   	push   %rbp
  40c821:	48 89 e5             	mov    %rsp,%rbp
  40c824:	48 83 ec 50          	sub    $0x50,%rsp
  40c828:	89 7d fc             	mov    %edi,-0x4(%rbp)
  40c82b:	8b 4d fc             	mov    -0x4(%rbp),%ecx
  40c82e:	be 01 00 00 00       	mov    $0x1,%esi
  40c833:	31 c0                	xor    %eax,%eax
  40c835:	83 f9 00             	cmp    $0x0,%ecx
  40c838:	0f 45 f0             	cmovne %eax,%esi
  40c83b:	48 8d 7d d8          	lea    -0x28(%rbp),%rdi
  40c83f:	e8 5c bc ff ff       	callq  4084a0 <http_parser_init>
  40c844:	8b 55 fc             	mov    -0x4(%rbp),%edx
  40c847:	48 b8 73 54 41 00 00 	movabs $0x415473,%rax
  40c84e:	00 00 00 
  40c851:	48 b9 62 54 41 00 00 	movabs $0x415462,%rcx
  40c858:	00 00 00 
  40c85b:	83 fa 00             	cmp    $0x0,%edx
  40c85e:	48 0f 45 c1          	cmovne %rcx,%rax
  40c862:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  40c866:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  40c86a:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  40c86e:	48 8b 7d c8          	mov    -0x38(%rbp),%rdi
  40c872:	e8 f9 47 ff ff       	callq  401070 <strlen@plt>
  40c877:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
  40c87b:	48 89 c1             	mov    %rax,%rcx
  40c87e:	48 8d 7d d8          	lea    -0x28(%rbp),%rdi
  40c882:	48 be 68 bb 91 00 00 	movabs $0x91bb68,%rsi
  40c889:	00 00 00 
  40c88c:	e8 bf 49 ff ff       	callq  401250 <http_parser_execute>
  40c891:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  40c895:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  40c899:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
  40c89d:	48 8b 7d c8          	mov    -0x38(%rbp),%rdi
  40c8a1:	e8 ca 47 ff ff       	callq  401070 <strlen@plt>
  40c8a6:	48 89 c1             	mov    %rax,%rcx
  40c8a9:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  40c8ad:	48 39 c8             	cmp    %rcx,%rax
  40c8b0:	0f 85 05 00 00 00    	jne    40c8bb <test_double_content_length_error+0x9b>
  40c8b6:	e9 28 00 00 00       	jmpq   40c8e3 <test_double_content_length_error+0xc3>
  40c8bb:	48 bf 85 54 41 00 00 	movabs $0x415485,%rdi
  40c8c2:	00 00 00 
  40c8c5:	48 be 86 40 41 00 00 	movabs $0x414086,%rsi
  40c8cc:	00 00 00 
  40c8cf:	ba f2 0e 00 00       	mov    $0xef2,%edx
  40c8d4:	48 b9 eb 55 41 00 00 	movabs $0x4155eb,%rcx
  40c8db:	00 00 00 
  40c8de:	e8 ad 47 ff ff       	callq  401090 <__assert_fail@plt>
  40c8e3:	48 b8 16 56 41 00 00 	movabs $0x415616,%rax
  40c8ea:	00 00 00 
  40c8ed:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  40c8f1:	48 8b 7d c8          	mov    -0x38(%rbp),%rdi
  40c8f5:	e8 76 47 ff ff       	callq  401070 <strlen@plt>
  40c8fa:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  40c8fe:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  40c902:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  40c906:	48 8d 7d d8          	lea    -0x28(%rbp),%rdi
  40c90a:	48 be 68 bb 91 00 00 	movabs $0x91bb68,%rsi
  40c911:	00 00 00 
  40c914:	e8 37 49 ff ff       	callq  401250 <http_parser_execute>
  40c919:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  40c91d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  40c921:	48 3b 45 c0          	cmp    -0x40(%rbp),%rax
  40c925:	0f 84 45 00 00 00    	je     40c970 <test_double_content_length_error+0x150>
  40c92b:	8b 45 ec             	mov    -0x14(%rbp),%eax
  40c92e:	c1 e8 18             	shr    $0x18,%eax
  40c931:	83 e0 7f             	and    $0x7f,%eax
  40c934:	83 f8 1a             	cmp    $0x1a,%eax
  40c937:	0f 85 05 00 00 00    	jne    40c942 <test_double_content_length_error+0x122>
  40c93d:	e9 28 00 00 00       	jmpq   40c96a <test_double_content_length_error+0x14a>
  40c942:	48 bf 3f 56 41 00 00 	movabs $0x41563f,%rdi
  40c949:	00 00 00 
  40c94c:	48 be 86 40 41 00 00 	movabs $0x414086,%rsi
  40c953:	00 00 00 
  40c956:	ba f9 0e 00 00       	mov    $0xef9,%edx
  40c95b:	48 b9 eb 55 41 00 00 	movabs $0x4155eb,%rcx
  40c962:	00 00 00 
  40c965:	e8 26 47 ff ff       	callq  401090 <__assert_fail@plt>
  40c96a:	48 83 c4 50          	add    $0x50,%rsp
  40c96e:	5d                   	pop    %rbp
  40c96f:	c3                   	retq   
  40c970:	48 8b 3c 25 40 b7 8c 	mov    0x8cb740,%rdi
  40c977:	00 
  40c978:	48 be 7b 56 41 00 00 	movabs $0x41567b,%rsi
  40c97f:	00 00 00 
  40c982:	b0 00                	mov    $0x0,%al
  40c984:	e8 67 47 ff ff       	callq  4010f0 <fprintf@plt>
  40c989:	e8 b2 46 ff ff       	callq  401040 <abort@plt>
  40c98e:	66 90                	xchg   %ax,%ax

000000000040c990 <test_chunked_content_length_error>:
  40c990:	55                   	push   %rbp
  40c991:	48 89 e5             	mov    %rsp,%rbp
  40c994:	48 83 ec 50          	sub    $0x50,%rsp
  40c998:	89 7d fc             	mov    %edi,-0x4(%rbp)
  40c99b:	8b 4d fc             	mov    -0x4(%rbp),%ecx
  40c99e:	be 01 00 00 00       	mov    $0x1,%esi
  40c9a3:	31 c0                	xor    %eax,%eax
  40c9a5:	83 f9 00             	cmp    $0x0,%ecx
  40c9a8:	0f 45 f0             	cmovne %eax,%esi
  40c9ab:	48 8d 7d d8          	lea    -0x28(%rbp),%rdi
  40c9af:	e8 ec ba ff ff       	callq  4084a0 <http_parser_init>
  40c9b4:	8b 55 fc             	mov    -0x4(%rbp),%edx
  40c9b7:	48 b8 73 54 41 00 00 	movabs $0x415473,%rax
  40c9be:	00 00 00 
  40c9c1:	48 b9 62 54 41 00 00 	movabs $0x415462,%rcx
  40c9c8:	00 00 00 
  40c9cb:	83 fa 00             	cmp    $0x0,%edx
  40c9ce:	48 0f 45 c1          	cmovne %rcx,%rax
  40c9d2:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  40c9d6:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  40c9da:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  40c9de:	48 8b 7d c8          	mov    -0x38(%rbp),%rdi
  40c9e2:	e8 89 46 ff ff       	callq  401070 <strlen@plt>
  40c9e7:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
  40c9eb:	48 89 c1             	mov    %rax,%rcx
  40c9ee:	48 8d 7d d8          	lea    -0x28(%rbp),%rdi
  40c9f2:	48 be 68 bb 91 00 00 	movabs $0x91bb68,%rsi
  40c9f9:	00 00 00 
  40c9fc:	e8 4f 48 ff ff       	callq  401250 <http_parser_execute>
  40ca01:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  40ca05:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  40ca09:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
  40ca0d:	48 8b 7d c8          	mov    -0x38(%rbp),%rdi
  40ca11:	e8 5a 46 ff ff       	callq  401070 <strlen@plt>
  40ca16:	48 89 c1             	mov    %rax,%rcx
  40ca19:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  40ca1d:	48 39 c8             	cmp    %rcx,%rax
  40ca20:	0f 85 05 00 00 00    	jne    40ca2b <test_chunked_content_length_error+0x9b>
  40ca26:	e9 28 00 00 00       	jmpq   40ca53 <test_chunked_content_length_error+0xc3>
  40ca2b:	48 bf 85 54 41 00 00 	movabs $0x415485,%rdi
  40ca32:	00 00 00 
  40ca35:	48 be 86 40 41 00 00 	movabs $0x414086,%rsi
  40ca3c:	00 00 00 
  40ca3f:	ba 0d 0f 00 00       	mov    $0xf0d,%edx
  40ca44:	48 b9 bb 56 41 00 00 	movabs $0x4156bb,%rcx
  40ca4b:	00 00 00 
  40ca4e:	e8 3d 46 ff ff       	callq  401090 <__assert_fail@plt>
  40ca53:	48 b8 e7 56 41 00 00 	movabs $0x4156e7,%rax
  40ca5a:	00 00 00 
  40ca5d:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  40ca61:	48 8b 7d c8          	mov    -0x38(%rbp),%rdi
  40ca65:	e8 06 46 ff ff       	callq  401070 <strlen@plt>
  40ca6a:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  40ca6e:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  40ca72:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  40ca76:	48 8d 7d d8          	lea    -0x28(%rbp),%rdi
  40ca7a:	48 be 68 bb 91 00 00 	movabs $0x91bb68,%rsi
  40ca81:	00 00 00 
  40ca84:	e8 c7 47 ff ff       	callq  401250 <http_parser_execute>
  40ca89:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  40ca8d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  40ca91:	48 3b 45 c0          	cmp    -0x40(%rbp),%rax
  40ca95:	0f 84 45 00 00 00    	je     40cae0 <test_chunked_content_length_error+0x150>
  40ca9b:	8b 45 ec             	mov    -0x14(%rbp),%eax
  40ca9e:	c1 e8 18             	shr    $0x18,%eax
  40caa1:	83 e0 7f             	and    $0x7f,%eax
  40caa4:	83 f8 1a             	cmp    $0x1a,%eax
  40caa7:	0f 85 05 00 00 00    	jne    40cab2 <test_chunked_content_length_error+0x122>
  40caad:	e9 28 00 00 00       	jmpq   40cada <test_chunked_content_length_error+0x14a>
  40cab2:	48 bf 3f 56 41 00 00 	movabs $0x41563f,%rdi
  40cab9:	00 00 00 
  40cabc:	48 be 86 40 41 00 00 	movabs $0x414086,%rsi
  40cac3:	00 00 00 
  40cac6:	ba 14 0f 00 00       	mov    $0xf14,%edx
  40cacb:	48 b9 bb 56 41 00 00 	movabs $0x4156bb,%rcx
  40cad2:	00 00 00 
  40cad5:	e8 b6 45 ff ff       	callq  401090 <__assert_fail@plt>
  40cada:	48 83 c4 50          	add    $0x50,%rsp
  40cade:	5d                   	pop    %rbp
  40cadf:	c3                   	retq   
  40cae0:	48 8b 3c 25 40 b7 8c 	mov    0x8cb740,%rdi
  40cae7:	00 
  40cae8:	48 be 1a 57 41 00 00 	movabs $0x41571a,%rsi
  40caef:	00 00 00 
  40caf2:	b0 00                	mov    $0x0,%al
  40caf4:	e8 f7 45 ff ff       	callq  4010f0 <fprintf@plt>
  40caf9:	e8 42 45 ff ff       	callq  401040 <abort@plt>
  40cafe:	66 90                	xchg   %ax,%ax

000000000040cb00 <test_header_cr_no_lf_error>:
  40cb00:	55                   	push   %rbp
  40cb01:	48 89 e5             	mov    %rsp,%rbp
  40cb04:	48 83 ec 50          	sub    $0x50,%rsp
  40cb08:	89 7d fc             	mov    %edi,-0x4(%rbp)
  40cb0b:	8b 4d fc             	mov    -0x4(%rbp),%ecx
  40cb0e:	be 01 00 00 00       	mov    $0x1,%esi
  40cb13:	31 c0                	xor    %eax,%eax
  40cb15:	83 f9 00             	cmp    $0x0,%ecx
  40cb18:	0f 45 f0             	cmovne %eax,%esi
  40cb1b:	48 8d 7d d8          	lea    -0x28(%rbp),%rdi
  40cb1f:	e8 7c b9 ff ff       	callq  4084a0 <http_parser_init>
  40cb24:	8b 55 fc             	mov    -0x4(%rbp),%edx
  40cb27:	48 b8 73 54 41 00 00 	movabs $0x415473,%rax
  40cb2e:	00 00 00 
  40cb31:	48 b9 62 54 41 00 00 	movabs $0x415462,%rcx
  40cb38:	00 00 00 
  40cb3b:	83 fa 00             	cmp    $0x0,%edx
  40cb3e:	48 0f 45 c1          	cmovne %rcx,%rax
  40cb42:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  40cb46:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  40cb4a:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  40cb4e:	48 8b 7d c8          	mov    -0x38(%rbp),%rdi
  40cb52:	e8 19 45 ff ff       	callq  401070 <strlen@plt>
  40cb57:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
  40cb5b:	48 89 c1             	mov    %rax,%rcx
  40cb5e:	48 8d 7d d8          	lea    -0x28(%rbp),%rdi
  40cb62:	48 be 68 bb 91 00 00 	movabs $0x91bb68,%rsi
  40cb69:	00 00 00 
  40cb6c:	e8 df 46 ff ff       	callq  401250 <http_parser_execute>
  40cb71:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  40cb75:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  40cb79:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
  40cb7d:	48 8b 7d c8          	mov    -0x38(%rbp),%rdi
  40cb81:	e8 ea 44 ff ff       	callq  401070 <strlen@plt>
  40cb86:	48 89 c1             	mov    %rax,%rcx
  40cb89:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  40cb8d:	48 39 c8             	cmp    %rcx,%rax
  40cb90:	0f 85 05 00 00 00    	jne    40cb9b <test_header_cr_no_lf_error+0x9b>
  40cb96:	e9 28 00 00 00       	jmpq   40cbc3 <test_header_cr_no_lf_error+0xc3>
  40cb9b:	48 bf 85 54 41 00 00 	movabs $0x415485,%rdi
  40cba2:	00 00 00 
  40cba5:	48 be 86 40 41 00 00 	movabs $0x414086,%rsi
  40cbac:	00 00 00 
  40cbaf:	ba 28 0f 00 00       	mov    $0xf28,%edx
  40cbb4:	48 b9 5b 57 41 00 00 	movabs $0x41575b,%rcx
  40cbbb:	00 00 00 
  40cbbe:	e8 cd 44 ff ff       	callq  401090 <__assert_fail@plt>
  40cbc3:	48 b8 80 57 41 00 00 	movabs $0x415780,%rax
  40cbca:	00 00 00 
  40cbcd:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  40cbd1:	48 8b 7d c8          	mov    -0x38(%rbp),%rdi
  40cbd5:	e8 96 44 ff ff       	callq  401070 <strlen@plt>
  40cbda:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  40cbde:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  40cbe2:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  40cbe6:	48 8d 7d d8          	lea    -0x28(%rbp),%rdi
  40cbea:	48 be 68 bb 91 00 00 	movabs $0x91bb68,%rsi
  40cbf1:	00 00 00 
  40cbf4:	e8 57 46 ff ff       	callq  401250 <http_parser_execute>
  40cbf9:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  40cbfd:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  40cc01:	48 3b 45 c0          	cmp    -0x40(%rbp),%rax
  40cc05:	0f 84 45 00 00 00    	je     40cc50 <test_header_cr_no_lf_error+0x150>
  40cc0b:	8b 45 ec             	mov    -0x14(%rbp),%eax
  40cc0e:	c1 e8 18             	shr    $0x18,%eax
  40cc11:	83 e0 7f             	and    $0x7f,%eax
  40cc14:	83 f8 17             	cmp    $0x17,%eax
  40cc17:	0f 85 05 00 00 00    	jne    40cc22 <test_header_cr_no_lf_error+0x122>
  40cc1d:	e9 28 00 00 00       	jmpq   40cc4a <test_header_cr_no_lf_error+0x14a>
  40cc22:	48 bf 92 57 41 00 00 	movabs $0x415792,%rdi
  40cc29:	00 00 00 
  40cc2c:	48 be 86 40 41 00 00 	movabs $0x414086,%rsi
  40cc33:	00 00 00 
  40cc36:	ba 2f 0f 00 00       	mov    $0xf2f,%edx
  40cc3b:	48 b9 5b 57 41 00 00 	movabs $0x41575b,%rcx
  40cc42:	00 00 00 
  40cc45:	e8 46 44 ff ff       	callq  401090 <__assert_fail@plt>
  40cc4a:	48 83 c4 50          	add    $0x50,%rsp
  40cc4e:	5d                   	pop    %rbp
  40cc4f:	c3                   	retq   
  40cc50:	48 8b 3c 25 40 b7 8c 	mov    0x8cb740,%rdi
  40cc57:	00 
  40cc58:	48 be c0 57 41 00 00 	movabs $0x4157c0,%rsi
  40cc5f:	00 00 00 
  40cc62:	b0 00                	mov    $0x0,%al
  40cc64:	e8 87 44 ff ff       	callq  4010f0 <fprintf@plt>
  40cc69:	e8 d2 43 ff ff       	callq  401040 <abort@plt>
  40cc6e:	66 90                	xchg   %ax,%ax

000000000040cc70 <test_no_overflow_parse_url>:
  40cc70:	55                   	push   %rbp
  40cc71:	48 89 e5             	mov    %rsp,%rbp
  40cc74:	48 83 ec 30          	sub    $0x30,%rsp
  40cc78:	48 8d 7d d8          	lea    -0x28(%rbp),%rdi
  40cc7c:	e8 df b9 ff ff       	callq  408660 <http_parser_url_init>
  40cc81:	48 bf fc 57 41 00 00 	movabs $0x4157fc,%rdi
  40cc88:	00 00 00 
  40cc8b:	be 16 00 00 00       	mov    $0x16,%esi
  40cc90:	31 d2                	xor    %edx,%edx
  40cc92:	48 8d 4d d8          	lea    -0x28(%rbp),%rcx
  40cc96:	e8 f5 b9 ff ff       	callq  408690 <http_parser_parse_url>
  40cc9b:	89 45 fc             	mov    %eax,-0x4(%rbp)
  40cc9e:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
  40cca2:	0f 84 21 00 00 00    	je     40ccc9 <test_no_overflow_parse_url+0x59>
  40cca8:	48 8b 3c 25 40 b7 8c 	mov    0x8cb740,%rdi
  40ccaf:	00 
  40ccb0:	8b 55 fc             	mov    -0x4(%rbp),%edx
  40ccb3:	48 be 14 58 41 00 00 	movabs $0x415814,%rsi
  40ccba:	00 00 00 
  40ccbd:	b0 00                	mov    $0x0,%al
  40ccbf:	e8 2c 44 ff ff       	callq  4010f0 <fprintf@plt>
  40ccc4:	e8 77 43 ff ff       	callq  401040 <abort@plt>
  40ccc9:	0f b7 45 da          	movzwl -0x26(%rbp),%eax
  40cccd:	3d 20 03 00 00       	cmp    $0x320,%eax
  40ccd2:	0f 84 22 00 00 00    	je     40ccfa <test_no_overflow_parse_url+0x8a>
  40ccd8:	48 8b 3c 25 40 b7 8c 	mov    0x8cb740,%rdi
  40ccdf:	00 
  40cce0:	0f b7 55 da          	movzwl -0x26(%rbp),%edx
  40cce4:	48 be 4d 58 41 00 00 	movabs $0x41584d,%rsi
  40cceb:	00 00 00 
  40ccee:	b0 00                	mov    $0x0,%al
  40ccf0:	e8 fb 43 ff ff       	callq  4010f0 <fprintf@plt>
  40ccf5:	e8 46 43 ff ff       	callq  401040 <abort@plt>
  40ccfa:	48 83 c4 30          	add    $0x30,%rsp
  40ccfe:	5d                   	pop    %rbp
  40ccff:	c3                   	retq   

000000000040cd00 <test_header_overflow_error>:
  40cd00:	55                   	push   %rbp
  40cd01:	48 89 e5             	mov    %rsp,%rbp
  40cd04:	48 83 ec 60          	sub    $0x60,%rsp
  40cd08:	89 7d fc             	mov    %edi,-0x4(%rbp)
  40cd0b:	8b 4d fc             	mov    -0x4(%rbp),%ecx
  40cd0e:	be 01 00 00 00       	mov    $0x1,%esi
  40cd13:	31 c0                	xor    %eax,%eax
  40cd15:	83 f9 00             	cmp    $0x0,%ecx
  40cd18:	0f 45 f0             	cmovne %eax,%esi
  40cd1b:	48 8d 7d d8          	lea    -0x28(%rbp),%rdi
  40cd1f:	e8 7c b7 ff ff       	callq  4084a0 <http_parser_init>
  40cd24:	8b 55 fc             	mov    -0x4(%rbp),%edx
  40cd27:	48 b8 85 58 41 00 00 	movabs $0x415885,%rax
  40cd2e:	00 00 00 
  40cd31:	48 b9 62 54 41 00 00 	movabs $0x415462,%rcx
  40cd38:	00 00 00 
  40cd3b:	83 fa 00             	cmp    $0x0,%edx
  40cd3e:	48 0f 45 c1          	cmovne %rcx,%rax
  40cd42:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  40cd46:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  40cd4a:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  40cd4e:	48 8b 7d c8          	mov    -0x38(%rbp),%rdi
  40cd52:	e8 19 43 ff ff       	callq  401070 <strlen@plt>
  40cd57:	48 8b 55 a8          	mov    -0x58(%rbp),%rdx
  40cd5b:	48 89 c1             	mov    %rax,%rcx
  40cd5e:	48 8d 7d d8          	lea    -0x28(%rbp),%rdi
  40cd62:	48 be 68 bb 91 00 00 	movabs $0x91bb68,%rsi
  40cd69:	00 00 00 
  40cd6c:	e8 df 44 ff ff       	callq  401250 <http_parser_execute>
  40cd71:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  40cd75:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  40cd79:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  40cd7d:	48 8b 7d c8          	mov    -0x38(%rbp),%rdi
  40cd81:	e8 ea 42 ff ff       	callq  401070 <strlen@plt>
  40cd86:	48 89 c1             	mov    %rax,%rcx
  40cd89:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  40cd8d:	48 39 c8             	cmp    %rcx,%rax
  40cd90:	0f 85 05 00 00 00    	jne    40cd9b <test_header_overflow_error+0x9b>
  40cd96:	e9 28 00 00 00       	jmpq   40cdc3 <test_header_overflow_error+0xc3>
  40cd9b:	48 bf 85 54 41 00 00 	movabs $0x415485,%rdi
  40cda2:	00 00 00 
  40cda5:	48 be 86 40 41 00 00 	movabs $0x414086,%rsi
  40cdac:	00 00 00 
  40cdaf:	ba 59 0f 00 00       	mov    $0xf59,%edx
  40cdb4:	48 b9 97 58 41 00 00 	movabs $0x415897,%rcx
  40cdbb:	00 00 00 
  40cdbe:	e8 cd 42 ff ff       	callq  401090 <__assert_fail@plt>
  40cdc3:	48 b8 bc 58 41 00 00 	movabs $0x4158bc,%rax
  40cdca:	00 00 00 
  40cdcd:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  40cdd1:	48 8b 7d c8          	mov    -0x38(%rbp),%rdi
  40cdd5:	e8 96 42 ff ff       	callq  401070 <strlen@plt>
  40cdda:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  40cdde:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%rbp)
  40cde5:	81 7d bc 10 27 00 00 	cmpl   $0x2710,-0x44(%rbp)
  40cdec:	0f 8d 85 00 00 00    	jge    40ce77 <test_header_overflow_error+0x177>
  40cdf2:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  40cdf6:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  40cdfa:	48 8d 7d d8          	lea    -0x28(%rbp),%rdi
  40cdfe:	48 be 68 bb 91 00 00 	movabs $0x91bb68,%rsi
  40ce05:	00 00 00 
  40ce08:	e8 43 44 ff ff       	callq  401250 <http_parser_execute>
  40ce0d:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  40ce11:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  40ce15:	48 3b 45 c0          	cmp    -0x40(%rbp),%rax
  40ce19:	0f 84 45 00 00 00    	je     40ce64 <test_header_overflow_error+0x164>
  40ce1f:	8b 45 ec             	mov    -0x14(%rbp),%eax
  40ce22:	c1 e8 18             	shr    $0x18,%eax
  40ce25:	83 e0 7f             	and    $0x7f,%eax
  40ce28:	83 f8 0c             	cmp    $0xc,%eax
  40ce2b:	0f 85 05 00 00 00    	jne    40ce36 <test_header_overflow_error+0x136>
  40ce31:	e9 28 00 00 00       	jmpq   40ce5e <test_header_overflow_error+0x15e>
  40ce36:	48 bf d7 58 41 00 00 	movabs $0x4158d7,%rdi
  40ce3d:	00 00 00 
  40ce40:	48 be 86 40 41 00 00 	movabs $0x414086,%rsi
  40ce47:	00 00 00 
  40ce4a:	ba 63 0f 00 00       	mov    $0xf63,%edx
  40ce4f:	48 b9 97 58 41 00 00 	movabs $0x415897,%rcx
  40ce56:	00 00 00 
  40ce59:	e8 32 42 ff ff       	callq  401090 <__assert_fail@plt>
  40ce5e:	48 83 c4 60          	add    $0x60,%rsp
  40ce62:	5d                   	pop    %rbp
  40ce63:	c3                   	retq   
  40ce64:	e9 00 00 00 00       	jmpq   40ce69 <test_header_overflow_error+0x169>
  40ce69:	8b 45 bc             	mov    -0x44(%rbp),%eax
  40ce6c:	83 c0 01             	add    $0x1,%eax
  40ce6f:	89 45 bc             	mov    %eax,-0x44(%rbp)
  40ce72:	e9 6e ff ff ff       	jmpq   40cde5 <test_header_overflow_error+0xe5>
  40ce77:	48 8b 3c 25 40 b7 8c 	mov    0x8cb740,%rdi
  40ce7e:	00 
  40ce7f:	48 be 09 59 41 00 00 	movabs $0x415909,%rsi
  40ce86:	00 00 00 
  40ce89:	b0 00                	mov    $0x0,%al
  40ce8b:	e8 60 42 ff ff       	callq  4010f0 <fprintf@plt>
  40ce90:	e8 ab 41 ff ff       	callq  401040 <abort@plt>
  40ce95:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40ce9c:	00 00 00 
  40ce9f:	90                   	nop

000000000040cea0 <test_header_nread_value>:
  40cea0:	55                   	push   %rbp
  40cea1:	48 89 e5             	mov    %rsp,%rbp
  40cea4:	48 83 ec 50          	sub    $0x50,%rsp
  40cea8:	48 8d 7d e0          	lea    -0x20(%rbp),%rdi
  40ceac:	31 f6                	xor    %esi,%esi
  40ceae:	e8 ed b5 ff ff       	callq  4084a0 <http_parser_init>
  40ceb3:	48 b8 43 59 41 00 00 	movabs $0x415943,%rax
  40ceba:	00 00 00 
  40cebd:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  40cec1:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  40cec5:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  40cec9:	48 8b 7d d0          	mov    -0x30(%rbp),%rdi
  40cecd:	e8 9e 41 ff ff       	callq  401070 <strlen@plt>
  40ced2:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
  40ced6:	48 89 c1             	mov    %rax,%rcx
  40ced9:	48 8d 7d e0          	lea    -0x20(%rbp),%rdi
  40cedd:	48 be 68 bb 91 00 00 	movabs $0x91bb68,%rsi
  40cee4:	00 00 00 
  40cee7:	e8 64 43 ff ff       	callq  401250 <http_parser_execute>
  40ceec:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  40cef0:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40cef4:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  40cef8:	48 8b 7d d0          	mov    -0x30(%rbp),%rdi
  40cefc:	e8 6f 41 ff ff       	callq  401070 <strlen@plt>
  40cf01:	48 89 c1             	mov    %rax,%rcx
  40cf04:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  40cf08:	48 39 c8             	cmp    %rcx,%rax
  40cf0b:	0f 85 05 00 00 00    	jne    40cf16 <test_header_nread_value+0x76>
  40cf11:	e9 28 00 00 00       	jmpq   40cf3e <test_header_nread_value+0x9e>
  40cf16:	48 bf 85 54 41 00 00 	movabs $0x415485,%rdi
  40cf1d:	00 00 00 
  40cf20:	48 be 86 40 41 00 00 	movabs $0x414086,%rsi
  40cf27:	00 00 00 
  40cf2a:	ba 76 0f 00 00       	mov    $0xf76,%edx
  40cf2f:	48 b9 6e 59 41 00 00 	movabs $0x41596e,%rcx
  40cf36:	00 00 00 
  40cf39:	e8 52 41 ff ff       	callq  401090 <__assert_fail@plt>
  40cf3e:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  40cf41:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
  40cf45:	48 8b 7d d0          	mov    -0x30(%rbp),%rdi
  40cf49:	e8 22 41 ff ff       	callq  401070 <strlen@plt>
  40cf4e:	48 89 c1             	mov    %rax,%rcx
  40cf51:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  40cf55:	48 39 c8             	cmp    %rcx,%rax
  40cf58:	0f 85 05 00 00 00    	jne    40cf63 <test_header_nread_value+0xc3>
  40cf5e:	e9 28 00 00 00       	jmpq   40cf8b <test_header_nread_value+0xeb>
  40cf63:	48 bf 8d 59 41 00 00 	movabs $0x41598d,%rdi
  40cf6a:	00 00 00 
  40cf6d:	48 be 86 40 41 00 00 	movabs $0x414086,%rsi
  40cf74:	00 00 00 
  40cf77:	ba 78 0f 00 00       	mov    $0xf78,%edx
  40cf7c:	48 b9 6e 59 41 00 00 	movabs $0x41596e,%rcx
  40cf83:	00 00 00 
  40cf86:	e8 05 41 ff ff       	callq  401090 <__assert_fail@plt>
  40cf8b:	48 83 c4 50          	add    $0x50,%rsp
  40cf8f:	5d                   	pop    %rbp
  40cf90:	c3                   	retq   
  40cf91:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40cf98:	00 00 00 
  40cf9b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

000000000040cfa0 <test_header_content_length_overflow_error>:
  40cfa0:	55                   	push   %rbp
  40cfa1:	48 89 e5             	mov    %rsp,%rbp
  40cfa4:	48 81 ec c0 00 00 00 	sub    $0xc0,%rsp
  40cfab:	48 8d 7d c0          	lea    -0x40(%rbp),%rdi
  40cfaf:	48 be f0 b6 8b 00 00 	movabs $0x8bb6f0,%rsi
  40cfb6:	00 00 00 
  40cfb9:	ba 39 00 00 00       	mov    $0x39,%edx
  40cfbe:	e8 3d 41 ff ff       	callq  401100 <memcpy@plt>
  40cfc3:	48 8d 7d 80          	lea    -0x80(%rbp),%rdi
  40cfc7:	48 be 30 b7 8b 00 00 	movabs $0x8bb730,%rsi
  40cfce:	00 00 00 
  40cfd1:	ba 3a 00 00 00       	mov    $0x3a,%edx
  40cfd6:	e8 25 41 ff ff       	callq  401100 <memcpy@plt>
  40cfdb:	48 8d bd 40 ff ff ff 	lea    -0xc0(%rbp),%rdi
  40cfe2:	48 be 70 b7 8b 00 00 	movabs $0x8bb770,%rsi
  40cfe9:	00 00 00 
  40cfec:	ba 3a 00 00 00       	mov    $0x3a,%edx
  40cff1:	e8 0a 41 ff ff       	callq  401100 <memcpy@plt>
  40cff6:	48 8d 7d c0          	lea    -0x40(%rbp),%rdi
  40cffa:	be 38 00 00 00       	mov    $0x38,%esi
  40cfff:	ba 01 00 00 00       	mov    $0x1,%edx
  40d004:	e8 37 00 00 00       	callq  40d040 <test_content_length_overflow>
  40d009:	48 8d 7d 80          	lea    -0x80(%rbp),%rdi
  40d00d:	be 39 00 00 00       	mov    $0x39,%esi
  40d012:	31 d2                	xor    %edx,%edx
  40d014:	e8 27 00 00 00       	callq  40d040 <test_content_length_overflow>
  40d019:	48 8d bd 40 ff ff ff 	lea    -0xc0(%rbp),%rdi
  40d020:	be 39 00 00 00       	mov    $0x39,%esi
  40d025:	31 d2                	xor    %edx,%edx
  40d027:	e8 14 00 00 00       	callq  40d040 <test_content_length_overflow>
  40d02c:	48 81 c4 c0 00 00 00 	add    $0xc0,%rsp
  40d033:	5d                   	pop    %rbp
  40d034:	c3                   	retq   
  40d035:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40d03c:	00 00 00 
  40d03f:	90                   	nop

000000000040d040 <test_content_length_overflow>:
  40d040:	55                   	push   %rbp
  40d041:	48 89 e5             	mov    %rsp,%rbp
  40d044:	48 83 ec 40          	sub    $0x40,%rsp
  40d048:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40d04c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  40d050:	89 55 ec             	mov    %edx,-0x14(%rbp)
  40d053:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
  40d057:	be 01 00 00 00       	mov    $0x1,%esi
  40d05c:	e8 3f b4 ff ff       	callq  4084a0 <http_parser_init>
  40d061:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  40d065:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  40d069:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
  40d06d:	48 be 68 bb 91 00 00 	movabs $0x91bb68,%rsi
  40d074:	00 00 00 
  40d077:	e8 d4 41 ff ff       	callq  401250 <http_parser_execute>
  40d07c:	83 7d ec 00          	cmpl   $0x0,-0x14(%rbp)
  40d080:	0f 84 44 00 00 00    	je     40d0ca <test_content_length_overflow+0x8a>
  40d086:	8b 45 dc             	mov    -0x24(%rbp),%eax
  40d089:	c1 e8 18             	shr    $0x18,%eax
  40d08c:	83 e0 7f             	and    $0x7f,%eax
  40d08f:	83 f8 00             	cmp    $0x0,%eax
  40d092:	0f 85 05 00 00 00    	jne    40d09d <test_content_length_overflow+0x5d>
  40d098:	e9 28 00 00 00       	jmpq   40d0c5 <test_content_length_overflow+0x85>
  40d09d:	48 bf 40 6a 41 00 00 	movabs $0x416a40,%rdi
  40d0a4:	00 00 00 
  40d0a7:	48 be 86 40 41 00 00 	movabs $0x414086,%rsi
  40d0ae:	00 00 00 
  40d0b1:	ba 84 0f 00 00       	mov    $0xf84,%edx
  40d0b6:	48 b9 65 6a 41 00 00 	movabs $0x416a65,%rcx
  40d0bd:	00 00 00 
  40d0c0:	e8 cb 3f ff ff       	callq  401090 <__assert_fail@plt>
  40d0c5:	e9 44 00 00 00       	jmpq   40d10e <test_content_length_overflow+0xce>
  40d0ca:	8b 45 dc             	mov    -0x24(%rbp),%eax
  40d0cd:	c1 e8 18             	shr    $0x18,%eax
  40d0d0:	83 e0 7f             	and    $0x7f,%eax
  40d0d3:	83 f8 19             	cmp    $0x19,%eax
  40d0d6:	0f 85 05 00 00 00    	jne    40d0e1 <test_content_length_overflow+0xa1>
  40d0dc:	e9 28 00 00 00       	jmpq   40d109 <test_content_length_overflow+0xc9>
  40d0e1:	48 bf a2 6a 41 00 00 	movabs $0x416aa2,%rdi
  40d0e8:	00 00 00 
  40d0eb:	48 be 86 40 41 00 00 	movabs $0x414086,%rsi
  40d0f2:	00 00 00 
  40d0f5:	ba 86 0f 00 00       	mov    $0xf86,%edx
  40d0fa:	48 b9 65 6a 41 00 00 	movabs $0x416a65,%rcx
  40d101:	00 00 00 
  40d104:	e8 87 3f ff ff       	callq  401090 <__assert_fail@plt>
  40d109:	e9 00 00 00 00       	jmpq   40d10e <test_content_length_overflow+0xce>
  40d10e:	48 83 c4 40          	add    $0x40,%rsp
  40d112:	5d                   	pop    %rbp
  40d113:	c3                   	retq   
  40d114:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40d11b:	00 00 00 
  40d11e:	66 90                	xchg   %ax,%ax

000000000040d120 <test_chunk_content_length_overflow_error>:
  40d120:	55                   	push   %rbp
  40d121:	48 89 e5             	mov    %rsp,%rbp
  40d124:	48 81 ec f0 00 00 00 	sub    $0xf0,%rsp
  40d12b:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
  40d12f:	48 be b0 b7 8b 00 00 	movabs $0x8bb7b0,%rsi
  40d136:	00 00 00 
  40d139:	ba 44 00 00 00       	mov    $0x44,%edx
  40d13e:	e8 bd 3f ff ff       	callq  401100 <memcpy@plt>
  40d143:	48 8d bd 60 ff ff ff 	lea    -0xa0(%rbp),%rdi
  40d14a:	48 be 00 b8 8b 00 00 	movabs $0x8bb800,%rsi
  40d151:	00 00 00 
  40d154:	ba 45 00 00 00       	mov    $0x45,%edx
  40d159:	e8 a2 3f ff ff       	callq  401100 <memcpy@plt>
  40d15e:	48 8d bd 10 ff ff ff 	lea    -0xf0(%rbp),%rdi
  40d165:	48 be 50 b8 8b 00 00 	movabs $0x8bb850,%rsi
  40d16c:	00 00 00 
  40d16f:	ba 46 00 00 00       	mov    $0x46,%edx
  40d174:	e8 87 3f ff ff       	callq  401100 <memcpy@plt>
  40d179:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
  40d17d:	be 43 00 00 00       	mov    $0x43,%esi
  40d182:	ba 01 00 00 00       	mov    $0x1,%edx
  40d187:	e8 b4 fe ff ff       	callq  40d040 <test_content_length_overflow>
  40d18c:	48 8d bd 60 ff ff ff 	lea    -0xa0(%rbp),%rdi
  40d193:	be 44 00 00 00       	mov    $0x44,%esi
  40d198:	31 d2                	xor    %edx,%edx
  40d19a:	e8 a1 fe ff ff       	callq  40d040 <test_content_length_overflow>
  40d19f:	48 8d bd 10 ff ff ff 	lea    -0xf0(%rbp),%rdi
  40d1a6:	be 45 00 00 00       	mov    $0x45,%esi
  40d1ab:	31 d2                	xor    %edx,%edx
  40d1ad:	e8 8e fe ff ff       	callq  40d040 <test_content_length_overflow>
  40d1b2:	48 81 c4 f0 00 00 00 	add    $0xf0,%rsp
  40d1b9:	5d                   	pop    %rbp
  40d1ba:	c3                   	retq   
  40d1bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

000000000040d1c0 <test_no_overflow_long_body>:
  40d1c0:	55                   	push   %rbp
  40d1c1:	48 89 e5             	mov    %rsp,%rbp
  40d1c4:	48 81 ec 10 0c 00 00 	sub    $0xc10,%rsp
  40d1cb:	89 7d fc             	mov    %edi,-0x4(%rbp)
  40d1ce:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  40d1d2:	8b 4d fc             	mov    -0x4(%rbp),%ecx
  40d1d5:	be 01 00 00 00       	mov    $0x1,%esi
  40d1da:	31 c0                	xor    %eax,%eax
  40d1dc:	83 f9 00             	cmp    $0x0,%ecx
  40d1df:	0f 45 f0             	cmovne %eax,%esi
  40d1e2:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
  40d1e6:	e8 b5 b2 ff ff       	callq  4084a0 <http_parser_init>
  40d1eb:	48 8d bd 00 f4 ff ff 	lea    -0xc00(%rbp),%rdi
  40d1f2:	8b 4d fc             	mov    -0x4(%rbp),%ecx
  40d1f5:	48 ba ed 59 41 00 00 	movabs $0x4159ed,%rdx
  40d1fc:	00 00 00 
  40d1ff:	48 b8 dd 59 41 00 00 	movabs $0x4159dd,%rax
  40d206:	00 00 00 
  40d209:	83 f9 00             	cmp    $0x0,%ecx
  40d20c:	48 0f 45 d0          	cmovne %rax,%rdx
  40d210:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  40d214:	48 be a9 59 41 00 00 	movabs $0x4159a9,%rsi
  40d21b:	00 00 00 
  40d21e:	b0 00                	mov    $0x0,%al
  40d220:	e8 1b 3f ff ff       	callq  401140 <sprintf@plt>
  40d225:	48 98                	cltq   
  40d227:	48 89 85 f8 f3 ff ff 	mov    %rax,-0xc08(%rbp)
  40d22e:	48 8d 95 00 f4 ff ff 	lea    -0xc00(%rbp),%rdx
  40d235:	48 8b 8d f8 f3 ff ff 	mov    -0xc08(%rbp),%rcx
  40d23c:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
  40d240:	48 be 68 bb 91 00 00 	movabs $0x91bb68,%rsi
  40d247:	00 00 00 
  40d24a:	e8 01 40 ff ff       	callq  401250 <http_parser_execute>
  40d24f:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  40d253:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  40d257:	48 3b 85 f8 f3 ff ff 	cmp    -0xc08(%rbp),%rax
  40d25e:	0f 84 05 00 00 00    	je     40d269 <test_no_overflow_long_body+0xa9>
  40d264:	e9 aa 00 00 00       	jmpq   40d313 <test_no_overflow_long_body+0x153>
  40d269:	48 c7 45 c0 00 00 00 	movq   $0x0,-0x40(%rbp)
  40d270:	00 
  40d271:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  40d275:	48 3b 45 f0          	cmp    -0x10(%rbp),%rax
  40d279:	0f 83 50 00 00 00    	jae    40d2cf <test_no_overflow_long_body+0x10f>
  40d27f:	c6 85 f7 f3 ff ff 61 	movb   $0x61,-0xc09(%rbp)
  40d286:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
  40d28a:	48 be 68 bb 91 00 00 	movabs $0x91bb68,%rsi
  40d291:	00 00 00 
  40d294:	48 8d 95 f7 f3 ff ff 	lea    -0xc09(%rbp),%rdx
  40d29b:	b9 01 00 00 00       	mov    $0x1,%ecx
  40d2a0:	e8 ab 3f ff ff       	callq  401250 <http_parser_execute>
  40d2a5:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  40d2a9:	48 83 7d c8 01       	cmpq   $0x1,-0x38(%rbp)
  40d2ae:	0f 84 05 00 00 00    	je     40d2b9 <test_no_overflow_long_body+0xf9>
  40d2b4:	e9 5a 00 00 00       	jmpq   40d313 <test_no_overflow_long_body+0x153>
  40d2b9:	e9 00 00 00 00       	jmpq   40d2be <test_no_overflow_long_body+0xfe>
  40d2be:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  40d2c2:	48 83 c0 01          	add    $0x1,%rax
  40d2c6:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  40d2ca:	e9 a2 ff ff ff       	jmpq   40d271 <test_no_overflow_long_body+0xb1>
  40d2cf:	48 8d 95 00 f4 ff ff 	lea    -0xc00(%rbp),%rdx
  40d2d6:	48 8b 8d f8 f3 ff ff 	mov    -0xc08(%rbp),%rcx
  40d2dd:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
  40d2e1:	48 be 68 bb 91 00 00 	movabs $0x91bb68,%rsi
  40d2e8:	00 00 00 
  40d2eb:	e8 60 3f ff ff       	callq  401250 <http_parser_execute>
  40d2f0:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  40d2f4:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  40d2f8:	48 3b 85 f8 f3 ff ff 	cmp    -0xc08(%rbp),%rax
  40d2ff:	0f 84 05 00 00 00    	je     40d30a <test_no_overflow_long_body+0x14a>
  40d305:	e9 09 00 00 00       	jmpq   40d313 <test_no_overflow_long_body+0x153>
  40d30a:	48 81 c4 10 0c 00 00 	add    $0xc10,%rsp
  40d311:	5d                   	pop    %rbp
  40d312:	c3                   	retq   
  40d313:	48 8b 3c 25 40 b7 8c 	mov    0x8cb740,%rdi
  40d31a:	00 
  40d31b:	8b 4d fc             	mov    -0x4(%rbp),%ecx
  40d31e:	48 ba 44 5a 41 00 00 	movabs $0x415a44,%rdx
  40d325:	00 00 00 
  40d328:	48 b8 3c 5a 41 00 00 	movabs $0x415a3c,%rax
  40d32f:	00 00 00 
  40d332:	83 f9 00             	cmp    $0x0,%ecx
  40d335:	48 0f 45 d0          	cmovne %rax,%rdx
  40d339:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  40d33d:	48 be fd 59 41 00 00 	movabs $0x4159fd,%rsi
  40d344:	00 00 00 
  40d347:	b0 00                	mov    $0x0,%al
  40d349:	e8 a2 3d ff ff       	callq  4010f0 <fprintf@plt>
  40d34e:	e8 ed 3c ff ff       	callq  401040 <abort@plt>
  40d353:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40d35a:	00 00 00 
  40d35d:	0f 1f 00             	nopl   (%rax)

000000000040d360 <test_multiple3>:
  40d360:	55                   	push   %rbp
  40d361:	48 89 e5             	mov    %rsp,%rbp
  40d364:	48 83 ec 60          	sub    $0x60,%rsp
  40d368:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40d36c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  40d370:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  40d374:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  40d378:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  40d37c:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  40d380:	31 c0                	xor    %eax,%eax
  40d382:	bf 03 00 00 00       	mov    $0x3,%edi
  40d387:	e8 a4 e1 ff ff       	callq  40b530 <count_parsed_messages>
  40d38c:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  40d38f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40d393:	48 8b 78 08          	mov    0x8(%rax),%rdi
  40d397:	e8 d4 3c ff ff       	callq  401070 <strlen@plt>
  40d39c:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  40d3a0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40d3a4:	48 8b 78 08          	mov    0x8(%rax),%rdi
  40d3a8:	e8 c3 3c ff ff       	callq  401070 <strlen@plt>
  40d3ad:	48 89 c1             	mov    %rax,%rcx
  40d3b0:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  40d3b4:	48 01 c8             	add    %rcx,%rax
  40d3b7:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
  40d3bb:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40d3bf:	48 8b 78 08          	mov    0x8(%rax),%rdi
  40d3c3:	e8 a8 3c ff ff       	callq  401070 <strlen@plt>
  40d3c8:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
  40d3cc:	48 89 c1             	mov    %rax,%rcx
  40d3cf:	48 8d 44 11 01       	lea    0x1(%rcx,%rdx,1),%rax
  40d3d4:	48 89 e6             	mov    %rsp,%rsi
  40d3d7:	48 89 75 d8          	mov    %rsi,-0x28(%rbp)
  40d3db:	48 8d 4c 11 10       	lea    0x10(%rcx,%rdx,1),%rcx
  40d3e0:	48 83 e1 f0          	and    $0xfffffffffffffff0,%rcx
  40d3e4:	48 89 e7             	mov    %rsp,%rdi
  40d3e7:	48 29 cf             	sub    %rcx,%rdi
  40d3ea:	48 89 7d c0          	mov    %rdi,-0x40(%rbp)
  40d3ee:	48 89 fc             	mov    %rdi,%rsp
  40d3f1:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  40d3f5:	c6 07 00             	movb   $0x0,(%rdi)
  40d3f8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40d3fc:	48 8b 70 08          	mov    0x8(%rax),%rsi
  40d400:	e8 2b 3d ff ff       	callq  401130 <strcat@plt>
  40d405:	48 8b 7d c0          	mov    -0x40(%rbp),%rdi
  40d409:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40d40d:	48 8b 70 08          	mov    0x8(%rax),%rsi
  40d411:	e8 1a 3d ff ff       	callq  401130 <strcat@plt>
  40d416:	48 8b 7d c0          	mov    -0x40(%rbp),%rdi
  40d41a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40d41e:	48 8b 70 08          	mov    0x8(%rax),%rsi
  40d422:	e8 09 3d ff ff       	callq  401130 <strcat@plt>
  40d427:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40d42b:	8b 78 10             	mov    0x10(%rax),%edi
  40d42e:	e8 6d d2 ff ff       	callq  40a6a0 <parser_init>
  40d433:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40d437:	83 b8 c0 00 01 00 00 	cmpl   $0x0,0x100c0(%rax)
  40d43e:	0f 85 22 00 00 00    	jne    40d466 <test_multiple3+0x106>
  40d444:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40d448:	83 b8 c0 00 01 00 00 	cmpl   $0x0,0x100c0(%rax)
  40d44f:	0f 85 11 00 00 00    	jne    40d466 <test_multiple3+0x106>
  40d455:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40d459:	83 b8 c0 00 01 00 00 	cmpl   $0x0,0x100c0(%rax)
  40d460:	0f 84 18 00 00 00    	je     40d47e <test_multiple3+0x11e>
  40d466:	8b 04 25 50 b7 8c 00 	mov    0x8cb750,%eax
  40d46d:	25 ff ff ff bf       	and    $0xbfffffff,%eax
  40d472:	0d 00 00 00 40       	or     $0x40000000,%eax
  40d477:	89 04 25 50 b7 8c 00 	mov    %eax,0x8cb750
  40d47e:	48 8b 7d c0          	mov    -0x40(%rbp),%rdi
  40d482:	e8 e9 3b ff ff       	callq  401070 <strlen@plt>
  40d487:	48 8b 7d c0          	mov    -0x40(%rbp),%rdi
  40d48b:	48 89 c6             	mov    %rax,%rsi
  40d48e:	e8 5d d2 ff ff       	callq  40a6f0 <parse>
  40d493:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  40d497:	8b 04 25 64 b7 8c 00 	mov    0x8cb764,%eax
  40d49e:	c1 e8 1f             	shr    $0x1f,%eax
  40d4a1:	83 f8 00             	cmp    $0x0,%eax
  40d4a4:	0f 84 25 00 00 00    	je     40d4cf <test_multiple3+0x16f>
  40d4aa:	48 8b 7d c0          	mov    -0x40(%rbp),%rdi
  40d4ae:	48 8b 75 c8          	mov    -0x38(%rbp),%rsi
  40d4b2:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  40d4b6:	4c 8b 45 f0          	mov    -0x10(%rbp),%r8
  40d4ba:	4c 8b 4d e8          	mov    -0x18(%rbp),%r9
  40d4be:	ba 03 00 00 00       	mov    $0x3,%edx
  40d4c3:	b0 00                	mov    $0x0,%al
  40d4c5:	e8 d6 e1 ff ff       	callq  40b6a0 <upgrade_message_fix>
  40d4ca:	e9 65 00 00 00       	jmpq   40d534 <test_multiple3+0x1d4>
  40d4cf:	48 8b 7d c0          	mov    -0x40(%rbp),%rdi
  40d4d3:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  40d4d7:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  40d4db:	e8 90 3b ff ff       	callq  401070 <strlen@plt>
  40d4e0:	48 89 c1             	mov    %rax,%rcx
  40d4e3:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  40d4e7:	48 39 c8             	cmp    %rcx,%rax
  40d4ea:	0f 84 12 00 00 00    	je     40d502 <test_multiple3+0x1a2>
  40d4f0:	48 8b 7d c0          	mov    -0x40(%rbp),%rdi
  40d4f4:	48 8b 75 c8          	mov    -0x38(%rbp),%rsi
  40d4f8:	e8 a3 eb ff ff       	callq  40c0a0 <print_error>
  40d4fd:	e8 3e 3b ff ff       	callq  401040 <abort@plt>
  40d502:	31 c0                	xor    %eax,%eax
  40d504:	89 c6                	mov    %eax,%esi
  40d506:	48 89 f7             	mov    %rsi,%rdi
  40d509:	e8 e2 d1 ff ff       	callq  40a6f0 <parse>
  40d50e:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  40d512:	48 83 7d c8 00       	cmpq   $0x0,-0x38(%rbp)
  40d517:	0f 84 12 00 00 00    	je     40d52f <test_multiple3+0x1cf>
  40d51d:	48 8b 7d c0          	mov    -0x40(%rbp),%rdi
  40d521:	48 8b 75 c8          	mov    -0x38(%rbp),%rsi
  40d525:	e8 76 eb ff ff       	callq  40c0a0 <print_error>
  40d52a:	e8 11 3b ff ff       	callq  401040 <abort@plt>
  40d52f:	e9 00 00 00 00       	jmpq   40d534 <test_multiple3+0x1d4>
  40d534:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  40d537:	3b 04 25 58 bb 91 00 	cmp    0x91bb58,%eax
  40d53e:	0f 84 25 00 00 00    	je     40d569 <test_multiple3+0x209>
  40d544:	48 8b 3c 25 40 b7 8c 	mov    0x8cb740,%rdi
  40d54b:	00 
  40d54c:	8b 14 25 58 bb 91 00 	mov    0x91bb58,%edx
  40d553:	48 be 4d 5a 41 00 00 	movabs $0x415a4d,%rsi
  40d55a:	00 00 00 
  40d55d:	b0 00                	mov    $0x0,%al
  40d55f:	e8 8c 3b ff ff       	callq  4010f0 <fprintf@plt>
  40d564:	e8 d7 3a ff ff       	callq  401040 <abort@plt>
  40d569:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  40d56d:	31 f6                	xor    %esi,%esi
  40d56f:	89 f7                	mov    %esi,%edi
  40d571:	e8 1a d3 ff ff       	callq  40a890 <message_eq>
  40d576:	83 f8 00             	cmp    $0x0,%eax
  40d579:	0f 85 05 00 00 00    	jne    40d584 <test_multiple3+0x224>
  40d57f:	e8 bc 3a ff ff       	callq  401040 <abort@plt>
  40d584:	83 7d e4 01          	cmpl   $0x1,-0x1c(%rbp)
  40d588:	0f 8e 1e 00 00 00    	jle    40d5ac <test_multiple3+0x24c>
  40d58e:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  40d592:	bf 01 00 00 00       	mov    $0x1,%edi
  40d597:	31 f6                	xor    %esi,%esi
  40d599:	e8 f2 d2 ff ff       	callq  40a890 <message_eq>
  40d59e:	83 f8 00             	cmp    $0x0,%eax
  40d5a1:	0f 85 05 00 00 00    	jne    40d5ac <test_multiple3+0x24c>
  40d5a7:	e8 94 3a ff ff       	callq  401040 <abort@plt>
  40d5ac:	83 7d e4 02          	cmpl   $0x2,-0x1c(%rbp)
  40d5b0:	0f 8e 1e 00 00 00    	jle    40d5d4 <test_multiple3+0x274>
  40d5b6:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  40d5ba:	bf 02 00 00 00       	mov    $0x2,%edi
  40d5bf:	31 f6                	xor    %esi,%esi
  40d5c1:	e8 ca d2 ff ff       	callq  40a890 <message_eq>
  40d5c6:	83 f8 00             	cmp    $0x0,%eax
  40d5c9:	0f 85 05 00 00 00    	jne    40d5d4 <test_multiple3+0x274>
  40d5cf:	e8 6c 3a ff ff       	callq  401040 <abort@plt>
  40d5d4:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40d5d8:	48 89 c4             	mov    %rax,%rsp
  40d5db:	48 89 ec             	mov    %rbp,%rsp
  40d5de:	5d                   	pop    %rbp
  40d5df:	c3                   	retq   

000000000040d5e0 <test_scan>:
  40d5e0:	55                   	push   %rbp
  40d5e1:	48 89 e5             	mov    %rsp,%rbp
  40d5e4:	48 81 ec 70 00 05 00 	sub    $0x50070,%rsp
  40d5eb:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40d5ef:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  40d5f3:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  40d5f7:	48 8d bd e0 bf fe ff 	lea    -0x14020(%rbp),%rdi
  40d5fe:	31 f6                	xor    %esi,%esi
  40d600:	ba 00 40 01 00       	mov    $0x14000,%edx
  40d605:	e8 96 3a ff ff       	callq  4010a0 <memset@plt>
  40d60a:	48 8d bd e0 7f fd ff 	lea    -0x28020(%rbp),%rdi
  40d611:	31 f6                	xor    %esi,%esi
  40d613:	ba 00 40 01 00       	mov    $0x14000,%edx
  40d618:	e8 83 3a ff ff       	callq  4010a0 <memset@plt>
  40d61d:	48 8d bd e0 3f fc ff 	lea    -0x3c020(%rbp),%rdi
  40d624:	31 f6                	xor    %esi,%esi
  40d626:	ba 00 40 01 00       	mov    $0x14000,%edx
  40d62b:	e8 70 3a ff ff       	callq  4010a0 <memset@plt>
  40d630:	48 8d bd e0 ff fa ff 	lea    -0x50020(%rbp),%rdi
  40d637:	31 f6                	xor    %esi,%esi
  40d639:	ba 00 40 01 00       	mov    $0x14000,%edx
  40d63e:	e8 5d 3a ff ff       	callq  4010a0 <memset@plt>
  40d643:	48 8d bd e0 bf fe ff 	lea    -0x14020(%rbp),%rdi
  40d64a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40d64e:	48 8b 70 08          	mov    0x8(%rax),%rsi
  40d652:	e8 d9 3a ff ff       	callq  401130 <strcat@plt>
  40d657:	48 8d bd e0 bf fe ff 	lea    -0x14020(%rbp),%rdi
  40d65e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40d662:	48 8b 70 08          	mov    0x8(%rax),%rsi
  40d666:	e8 c5 3a ff ff       	callq  401130 <strcat@plt>
  40d66b:	48 8d bd e0 bf fe ff 	lea    -0x14020(%rbp),%rdi
  40d672:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40d676:	48 8b 70 08          	mov    0x8(%rax),%rsi
  40d67a:	e8 b1 3a ff ff       	callq  401130 <strcat@plt>
  40d67f:	48 8d bd e0 bf fe ff 	lea    -0x14020(%rbp),%rdi
  40d686:	e8 e5 39 ff ff       	callq  401070 <strlen@plt>
  40d68b:	89 85 d4 ff fa ff    	mov    %eax,-0x5002c(%rbp)
  40d691:	8b 85 d4 ff fa ff    	mov    -0x5002c(%rbp),%eax
  40d697:	83 e8 01             	sub    $0x1,%eax
  40d69a:	c1 e0 01             	shl    $0x1,%eax
  40d69d:	8b 8d d4 ff fa ff    	mov    -0x5002c(%rbp),%ecx
  40d6a3:	83 e9 02             	sub    $0x2,%ecx
  40d6a6:	0f af c1             	imul   %ecx,%eax
  40d6a9:	b9 02 00 00 00       	mov    $0x2,%ecx
  40d6ae:	99                   	cltd   
  40d6af:	f7 f9                	idiv   %ecx
  40d6b1:	89 85 d0 ff fa ff    	mov    %eax,-0x50030(%rbp)
  40d6b7:	c7 85 cc ff fa ff 00 	movl   $0x0,-0x50034(%rbp)
  40d6be:	00 00 00 
  40d6c1:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  40d6c5:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  40d6c9:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  40d6cd:	bf 03 00 00 00       	mov    $0x3,%edi
  40d6d2:	b0 00                	mov    $0x0,%al
  40d6d4:	e8 57 de ff ff       	callq  40b530 <count_parsed_messages>
  40d6d9:	89 85 ac ff fa ff    	mov    %eax,-0x50054(%rbp)
  40d6df:	c7 85 a0 ff fa ff 00 	movl   $0x0,-0x50060(%rbp)
  40d6e6:	00 00 00 
  40d6e9:	83 bd a0 ff fa ff 02 	cmpl   $0x2,-0x50060(%rbp)
  40d6f0:	0f 8d f8 04 00 00    	jge    40dbee <test_scan+0x60e>
  40d6f6:	c7 85 a4 ff fa ff 02 	movl   $0x2,-0x5005c(%rbp)
  40d6fd:	00 00 00 
  40d700:	8b 85 a4 ff fa ff    	mov    -0x5005c(%rbp),%eax
  40d706:	3b 85 d4 ff fa ff    	cmp    -0x5002c(%rbp),%eax
  40d70c:	0f 8d c3 04 00 00    	jge    40dbd5 <test_scan+0x5f5>
  40d712:	c7 85 a8 ff fa ff 01 	movl   $0x1,-0x50058(%rbp)
  40d719:	00 00 00 
  40d71c:	8b 85 a8 ff fa ff    	mov    -0x50058(%rbp),%eax
  40d722:	3b 85 a4 ff fa ff    	cmp    -0x5005c(%rbp),%eax
  40d728:	0f 8d 8e 04 00 00    	jge    40dbbc <test_scan+0x5dc>
  40d72e:	8b 85 cc ff fa ff    	mov    -0x50034(%rbp),%eax
  40d734:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
  40d739:	99                   	cltd   
  40d73a:	f7 f9                	idiv   %ecx
  40d73c:	83 fa 00             	cmp    $0x0,%edx
  40d73f:	0f 85 42 00 00 00    	jne    40d787 <test_scan+0x1a7>
  40d745:	f3 0f 2a 8d cc ff fa 	cvtsi2ssl -0x50034(%rbp),%xmm1
  40d74c:	ff 
  40d74d:	f3 0f 10 05 e3 3d 00 	movss  0x3de3(%rip),%xmm0        # 411538 <unhex+0xf98>
  40d754:	00 
  40d755:	f3 0f 59 c1          	mulss  %xmm1,%xmm0
  40d759:	f3 0f 2a 8d d0 ff fa 	cvtsi2ssl -0x50030(%rbp),%xmm1
  40d760:	ff 
  40d761:	f3 0f 5e c1          	divss  %xmm1,%xmm0
  40d765:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40d769:	48 bf 7e 5a 41 00 00 	movabs $0x415a7e,%rdi
  40d770:	00 00 00 
  40d773:	b0 01                	mov    $0x1,%al
  40d775:	e8 06 39 ff ff       	callq  401080 <printf@plt>
  40d77a:	48 8b 3c 25 20 b7 8c 	mov    0x8cb720,%rdi
  40d781:	00 
  40d782:	e8 99 39 ff ff       	callq  401120 <fflush@plt>
  40d787:	8b 85 cc ff fa ff    	mov    -0x50034(%rbp),%eax
  40d78d:	83 c0 01             	add    $0x1,%eax
  40d790:	89 85 cc ff fa ff    	mov    %eax,-0x50034(%rbp)
  40d796:	83 bd a0 ff fa ff 00 	cmpl   $0x0,-0x50060(%rbp)
  40d79d:	0f 84 10 00 00 00    	je     40d7b3 <test_scan+0x1d3>
  40d7a3:	b8 02 00 00 00       	mov    $0x2,%eax
  40d7a8:	89 85 9c ff fa ff    	mov    %eax,-0x50064(%rbp)
  40d7ae:	e9 0d 00 00 00       	jmpq   40d7c0 <test_scan+0x1e0>
  40d7b3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40d7b7:	8b 40 10             	mov    0x10(%rax),%eax
  40d7ba:	89 85 9c ff fa ff    	mov    %eax,-0x50064(%rbp)
  40d7c0:	8b bd 9c ff fa ff    	mov    -0x50064(%rbp),%edi
  40d7c6:	e8 d5 ce ff ff       	callq  40a6a0 <parser_init>
  40d7cb:	48 63 85 a8 ff fa ff 	movslq -0x50058(%rbp),%rax
  40d7d2:	48 89 85 c0 ff fa ff 	mov    %rax,-0x50040(%rbp)
  40d7d9:	48 8d bd e0 7f fd ff 	lea    -0x28020(%rbp),%rdi
  40d7e0:	48 8d 95 e0 bf fe ff 	lea    -0x14020(%rbp),%rdx
  40d7e7:	48 8b 8d c0 ff fa ff 	mov    -0x50040(%rbp),%rcx
  40d7ee:	be 00 40 01 00       	mov    $0x14000,%esi
  40d7f3:	e8 38 bb ff ff       	callq  409330 <strlncpy>
  40d7f8:	48 8b 85 c0 ff fa ff 	mov    -0x50040(%rbp),%rax
  40d7ff:	c6 84 05 e0 7f fd ff 	movb   $0x0,-0x28020(%rbp,%rax,1)
  40d806:	00 
  40d807:	8b 85 a4 ff fa ff    	mov    -0x5005c(%rbp),%eax
  40d80d:	2b 85 a8 ff fa ff    	sub    -0x50058(%rbp),%eax
  40d813:	48 98                	cltq   
  40d815:	48 89 85 b8 ff fa ff 	mov    %rax,-0x50048(%rbp)
  40d81c:	48 8d bd e0 3f fc ff 	lea    -0x3c020(%rbp),%rdi
  40d823:	48 8d 95 e0 bf fe ff 	lea    -0x14020(%rbp),%rdx
  40d82a:	48 63 85 a8 ff fa ff 	movslq -0x50058(%rbp),%rax
  40d831:	48 01 c2             	add    %rax,%rdx
  40d834:	48 8b 8d b8 ff fa ff 	mov    -0x50048(%rbp),%rcx
  40d83b:	be 00 40 01 00       	mov    $0x14000,%esi
  40d840:	e8 eb ba ff ff       	callq  409330 <strlncpy>
  40d845:	48 8b 85 b8 ff fa ff 	mov    -0x50048(%rbp),%rax
  40d84c:	c6 84 05 e0 3f fc ff 	movb   $0x0,-0x3c020(%rbp,%rax,1)
  40d853:	00 
  40d854:	8b 85 d4 ff fa ff    	mov    -0x5002c(%rbp),%eax
  40d85a:	2b 85 a4 ff fa ff    	sub    -0x5005c(%rbp),%eax
  40d860:	48 98                	cltq   
  40d862:	48 89 85 b0 ff fa ff 	mov    %rax,-0x50050(%rbp)
  40d869:	48 8d bd e0 ff fa ff 	lea    -0x50020(%rbp),%rdi
  40d870:	48 8d 95 e0 bf fe ff 	lea    -0x14020(%rbp),%rdx
  40d877:	48 63 85 a4 ff fa ff 	movslq -0x5005c(%rbp),%rax
  40d87e:	48 01 c2             	add    %rax,%rdx
  40d881:	48 8b 8d b0 ff fa ff 	mov    -0x50050(%rbp),%rcx
  40d888:	be 00 40 01 00       	mov    $0x14000,%esi
  40d88d:	e8 9e ba ff ff       	callq  409330 <strlncpy>
  40d892:	48 8b 85 b0 ff fa ff 	mov    -0x50050(%rbp),%rax
  40d899:	c6 84 05 e0 ff fa ff 	movb   $0x0,-0x50020(%rbp,%rax,1)
  40d8a0:	00 
  40d8a1:	83 3c 25 58 bb 91 00 	cmpl   $0x0,0x91bb58
  40d8a8:	00 
  40d8a9:	0f 85 05 00 00 00    	jne    40d8b4 <test_scan+0x2d4>
  40d8af:	e9 28 00 00 00       	jmpq   40d8dc <test_scan+0x2fc>
  40d8b4:	48 bf af 53 41 00 00 	movabs $0x4153af,%rdi
  40d8bb:	00 00 00 
  40d8be:	48 be 86 40 41 00 00 	movabs $0x414086,%rsi
  40d8c5:	00 00 00 
  40d8c8:	ba 37 10 00 00       	mov    $0x1037,%edx
  40d8cd:	48 b9 8a 5a 41 00 00 	movabs $0x415a8a,%rcx
  40d8d4:	00 00 00 
  40d8d7:	e8 b4 37 ff ff       	callq  401090 <__assert_fail@plt>
  40d8dc:	c7 04 25 1c b8 8d 00 	movl   $0x0,0x8db81c
  40d8e3:	00 00 00 00 
  40d8e7:	48 8d bd e0 7f fd ff 	lea    -0x28020(%rbp),%rdi
  40d8ee:	48 8b b5 c0 ff fa ff 	mov    -0x50040(%rbp),%rsi
  40d8f5:	e8 f6 cd ff ff       	callq  40a6f0 <parse>
  40d8fa:	48 89 85 d8 ff fa ff 	mov    %rax,-0x50028(%rbp)
  40d901:	83 3c 25 1c b8 8d 00 	cmpl   $0x0,0x8db81c
  40d908:	00 
  40d909:	0f 85 2c 00 00 00    	jne    40d93b <test_scan+0x35b>
  40d90f:	8b 04 25 54 b7 8c 00 	mov    0x8cb754,%eax
  40d916:	48 3b 85 d8 ff fa ff 	cmp    -0x50028(%rbp),%rax
  40d91d:	0f 84 18 00 00 00    	je     40d93b <test_scan+0x35b>
  40d923:	48 8d bd e0 7f fd ff 	lea    -0x28020(%rbp),%rdi
  40d92a:	48 8b b5 d8 ff fa ff 	mov    -0x50028(%rbp),%rsi
  40d931:	e8 6a e7 ff ff       	callq  40c0a0 <print_error>
  40d936:	e9 cb 02 00 00       	jmpq   40dc06 <test_scan+0x626>
  40d93b:	8b 04 25 64 b7 8c 00 	mov    0x8cb764,%eax
  40d942:	c1 e8 1f             	shr    $0x1f,%eax
  40d945:	83 f8 00             	cmp    $0x0,%eax
  40d948:	0f 84 05 00 00 00    	je     40d953 <test_scan+0x373>
  40d94e:	e9 1d 01 00 00       	jmpq   40da70 <test_scan+0x490>
  40d953:	48 8b 85 d8 ff fa ff 	mov    -0x50028(%rbp),%rax
  40d95a:	48 3b 85 c0 ff fa ff 	cmp    -0x50040(%rbp),%rax
  40d961:	0f 84 18 00 00 00    	je     40d97f <test_scan+0x39f>
  40d967:	48 8d bd e0 7f fd ff 	lea    -0x28020(%rbp),%rdi
  40d96e:	48 8b b5 d8 ff fa ff 	mov    -0x50028(%rbp),%rsi
  40d975:	e8 26 e7 ff ff       	callq  40c0a0 <print_error>
  40d97a:	e9 87 02 00 00       	jmpq   40dc06 <test_scan+0x626>
  40d97f:	48 8d bd e0 3f fc ff 	lea    -0x3c020(%rbp),%rdi
  40d986:	48 8b b5 b8 ff fa ff 	mov    -0x50048(%rbp),%rsi
  40d98d:	e8 5e cd ff ff       	callq  40a6f0 <parse>
  40d992:	48 03 85 d8 ff fa ff 	add    -0x50028(%rbp),%rax
  40d999:	48 89 85 d8 ff fa ff 	mov    %rax,-0x50028(%rbp)
  40d9a0:	8b 04 25 64 b7 8c 00 	mov    0x8cb764,%eax
  40d9a7:	c1 e8 1f             	shr    $0x1f,%eax
  40d9aa:	83 f8 00             	cmp    $0x0,%eax
  40d9ad:	0f 84 05 00 00 00    	je     40d9b8 <test_scan+0x3d8>
  40d9b3:	e9 b8 00 00 00       	jmpq   40da70 <test_scan+0x490>
  40d9b8:	48 8b 85 d8 ff fa ff 	mov    -0x50028(%rbp),%rax
  40d9bf:	48 8b 8d c0 ff fa ff 	mov    -0x50040(%rbp),%rcx
  40d9c6:	48 03 8d b8 ff fa ff 	add    -0x50048(%rbp),%rcx
  40d9cd:	48 39 c8             	cmp    %rcx,%rax
  40d9d0:	0f 84 18 00 00 00    	je     40d9ee <test_scan+0x40e>
  40d9d6:	48 8d bd e0 3f fc ff 	lea    -0x3c020(%rbp),%rdi
  40d9dd:	48 8b b5 d8 ff fa ff 	mov    -0x50028(%rbp),%rsi
  40d9e4:	e8 b7 e6 ff ff       	callq  40c0a0 <print_error>
  40d9e9:	e9 18 02 00 00       	jmpq   40dc06 <test_scan+0x626>
  40d9ee:	48 8d bd e0 ff fa ff 	lea    -0x50020(%rbp),%rdi
  40d9f5:	48 8b b5 b0 ff fa ff 	mov    -0x50050(%rbp),%rsi
  40d9fc:	e8 ef cc ff ff       	callq  40a6f0 <parse>
  40da01:	48 03 85 d8 ff fa ff 	add    -0x50028(%rbp),%rax
  40da08:	48 89 85 d8 ff fa ff 	mov    %rax,-0x50028(%rbp)
  40da0f:	8b 04 25 64 b7 8c 00 	mov    0x8cb764,%eax
  40da16:	c1 e8 1f             	shr    $0x1f,%eax
  40da19:	83 f8 00             	cmp    $0x0,%eax
  40da1c:	0f 84 05 00 00 00    	je     40da27 <test_scan+0x447>
  40da22:	e9 49 00 00 00       	jmpq   40da70 <test_scan+0x490>
  40da27:	48 8b 85 d8 ff fa ff 	mov    -0x50028(%rbp),%rax
  40da2e:	48 8b 8d c0 ff fa ff 	mov    -0x50040(%rbp),%rcx
  40da35:	48 03 8d b8 ff fa ff 	add    -0x50048(%rbp),%rcx
  40da3c:	48 03 8d b0 ff fa ff 	add    -0x50050(%rbp),%rcx
  40da43:	48 39 c8             	cmp    %rcx,%rax
  40da46:	0f 84 18 00 00 00    	je     40da64 <test_scan+0x484>
  40da4c:	48 8d bd e0 ff fa ff 	lea    -0x50020(%rbp),%rdi
  40da53:	48 8b b5 d8 ff fa ff 	mov    -0x50028(%rbp),%rsi
  40da5a:	e8 41 e6 ff ff       	callq  40c0a0 <print_error>
  40da5f:	e9 a2 01 00 00       	jmpq   40dc06 <test_scan+0x626>
  40da64:	31 c0                	xor    %eax,%eax
  40da66:	89 c6                	mov    %eax,%esi
  40da68:	48 89 f7             	mov    %rsi,%rdi
  40da6b:	e8 80 cc ff ff       	callq  40a6f0 <parse>
  40da70:	8b 04 25 64 b7 8c 00 	mov    0x8cb764,%eax
  40da77:	c1 e8 1f             	shr    $0x1f,%eax
  40da7a:	83 f8 00             	cmp    $0x0,%eax
  40da7d:	0f 84 26 00 00 00    	je     40daa9 <test_scan+0x4c9>
  40da83:	48 8d bd e0 bf fe ff 	lea    -0x14020(%rbp),%rdi
  40da8a:	48 8b b5 d8 ff fa ff 	mov    -0x50028(%rbp),%rsi
  40da91:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  40da95:	4c 8b 45 f0          	mov    -0x10(%rbp),%r8
  40da99:	4c 8b 4d e8          	mov    -0x18(%rbp),%r9
  40da9d:	ba 03 00 00 00       	mov    $0x3,%edx
  40daa2:	b0 00                	mov    $0x0,%al
  40daa4:	e8 f7 db ff ff       	callq  40b6a0 <upgrade_message_fix>
  40daa9:	8b 85 ac ff fa ff    	mov    -0x50054(%rbp),%eax
  40daaf:	3b 04 25 58 bb 91 00 	cmp    0x91bb58,%eax
  40dab6:	0f 84 2b 00 00 00    	je     40dae7 <test_scan+0x507>
  40dabc:	48 8b 3c 25 40 b7 8c 	mov    0x8cb740,%rdi
  40dac3:	00 
  40dac4:	8b 95 ac ff fa ff    	mov    -0x50054(%rbp),%edx
  40daca:	8b 0c 25 58 bb 91 00 	mov    0x91bb58,%ecx
  40dad1:	48 be e1 5a 41 00 00 	movabs $0x415ae1,%rsi
  40dad8:	00 00 00 
  40dadb:	b0 00                	mov    $0x0,%al
  40dadd:	e8 0e 36 ff ff       	callq  4010f0 <fprintf@plt>
  40dae2:	e9 1f 01 00 00       	jmpq   40dc06 <test_scan+0x626>
  40dae7:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  40daeb:	31 f6                	xor    %esi,%esi
  40daed:	89 f7                	mov    %esi,%edi
  40daef:	e8 9c cd ff ff       	callq  40a890 <message_eq>
  40daf4:	83 f8 00             	cmp    $0x0,%eax
  40daf7:	0f 85 1e 00 00 00    	jne    40db1b <test_scan+0x53b>
  40dafd:	48 8b 3c 25 40 b7 8c 	mov    0x8cb740,%rdi
  40db04:	00 
  40db05:	48 be 0a 5b 41 00 00 	movabs $0x415b0a,%rsi
  40db0c:	00 00 00 
  40db0f:	b0 00                	mov    $0x0,%al
  40db11:	e8 da 35 ff ff       	callq  4010f0 <fprintf@plt>
  40db16:	e9 eb 00 00 00       	jmpq   40dc06 <test_scan+0x626>
  40db1b:	83 bd ac ff fa ff 01 	cmpl   $0x1,-0x50054(%rbp)
  40db22:	0f 8e 37 00 00 00    	jle    40db5f <test_scan+0x57f>
  40db28:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  40db2c:	bf 01 00 00 00       	mov    $0x1,%edi
  40db31:	31 f6                	xor    %esi,%esi
  40db33:	e8 58 cd ff ff       	callq  40a890 <message_eq>
  40db38:	83 f8 00             	cmp    $0x0,%eax
  40db3b:	0f 85 1e 00 00 00    	jne    40db5f <test_scan+0x57f>
  40db41:	48 8b 3c 25 40 b7 8c 	mov    0x8cb740,%rdi
  40db48:	00 
  40db49:	48 be 36 5b 41 00 00 	movabs $0x415b36,%rsi
  40db50:	00 00 00 
  40db53:	b0 00                	mov    $0x0,%al
  40db55:	e8 96 35 ff ff       	callq  4010f0 <fprintf@plt>
  40db5a:	e9 a7 00 00 00       	jmpq   40dc06 <test_scan+0x626>
  40db5f:	83 bd ac ff fa ff 02 	cmpl   $0x2,-0x50054(%rbp)
  40db66:	0f 8e 37 00 00 00    	jle    40dba3 <test_scan+0x5c3>
  40db6c:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  40db70:	bf 02 00 00 00       	mov    $0x2,%edi
  40db75:	31 f6                	xor    %esi,%esi
  40db77:	e8 14 cd ff ff       	callq  40a890 <message_eq>
  40db7c:	83 f8 00             	cmp    $0x0,%eax
  40db7f:	0f 85 1e 00 00 00    	jne    40dba3 <test_scan+0x5c3>
  40db85:	48 8b 3c 25 40 b7 8c 	mov    0x8cb740,%rdi
  40db8c:	00 
  40db8d:	48 be 62 5b 41 00 00 	movabs $0x415b62,%rsi
  40db94:	00 00 00 
  40db97:	b0 00                	mov    $0x0,%al
  40db99:	e8 52 35 ff ff       	callq  4010f0 <fprintf@plt>
  40db9e:	e9 63 00 00 00       	jmpq   40dc06 <test_scan+0x626>
  40dba3:	e9 00 00 00 00       	jmpq   40dba8 <test_scan+0x5c8>
  40dba8:	8b 85 a8 ff fa ff    	mov    -0x50058(%rbp),%eax
  40dbae:	83 c0 01             	add    $0x1,%eax
  40dbb1:	89 85 a8 ff fa ff    	mov    %eax,-0x50058(%rbp)
  40dbb7:	e9 60 fb ff ff       	jmpq   40d71c <test_scan+0x13c>
  40dbbc:	e9 00 00 00 00       	jmpq   40dbc1 <test_scan+0x5e1>
  40dbc1:	8b 85 a4 ff fa ff    	mov    -0x5005c(%rbp),%eax
  40dbc7:	83 c0 01             	add    $0x1,%eax
  40dbca:	89 85 a4 ff fa ff    	mov    %eax,-0x5005c(%rbp)
  40dbd0:	e9 2b fb ff ff       	jmpq   40d700 <test_scan+0x120>
  40dbd5:	e9 00 00 00 00       	jmpq   40dbda <test_scan+0x5fa>
  40dbda:	8b 85 a0 ff fa ff    	mov    -0x50060(%rbp),%eax
  40dbe0:	83 c0 01             	add    $0x1,%eax
  40dbe3:	89 85 a0 ff fa ff    	mov    %eax,-0x50060(%rbp)
  40dbe9:	e9 fb fa ff ff       	jmpq   40d6e9 <test_scan+0x109>
  40dbee:	48 bf 8e 5b 41 00 00 	movabs $0x415b8e,%rdi
  40dbf5:	00 00 00 
  40dbf8:	e8 63 34 ff ff       	callq  401060 <puts@plt>
  40dbfd:	48 81 c4 70 00 05 00 	add    $0x50070,%rsp
  40dc04:	5d                   	pop    %rbp
  40dc05:	c3                   	retq   
  40dc06:	48 8b 3c 25 40 b7 8c 	mov    0x8cb740,%rdi
  40dc0d:	00 
  40dc0e:	8b 95 a8 ff fa ff    	mov    -0x50058(%rbp),%edx
  40dc14:	8b 8d a4 ff fa ff    	mov    -0x5005c(%rbp),%ecx
  40dc1a:	48 be 97 5b 41 00 00 	movabs $0x415b97,%rsi
  40dc21:	00 00 00 
  40dc24:	b0 00                	mov    $0x0,%al
  40dc26:	e8 c5 34 ff ff       	callq  4010f0 <fprintf@plt>
  40dc2b:	48 8b 3c 25 40 b7 8c 	mov    0x8cb740,%rdi
  40dc32:	00 
  40dc33:	48 8b 85 c0 ff fa ff 	mov    -0x50040(%rbp),%rax
  40dc3a:	89 c2                	mov    %eax,%edx
  40dc3c:	48 8d 8d e0 7f fd ff 	lea    -0x28020(%rbp),%rcx
  40dc43:	48 be a3 5b 41 00 00 	movabs $0x415ba3,%rsi
  40dc4a:	00 00 00 
  40dc4d:	b0 00                	mov    $0x0,%al
  40dc4f:	e8 9c 34 ff ff       	callq  4010f0 <fprintf@plt>
  40dc54:	48 8b 3c 25 40 b7 8c 	mov    0x8cb740,%rdi
  40dc5b:	00 
  40dc5c:	48 8b 85 b8 ff fa ff 	mov    -0x50048(%rbp),%rax
  40dc63:	89 c2                	mov    %eax,%edx
  40dc65:	48 8d 8d e0 3f fc ff 	lea    -0x3c020(%rbp),%rcx
  40dc6c:	48 be b2 5b 41 00 00 	movabs $0x415bb2,%rsi
  40dc73:	00 00 00 
  40dc76:	b0 00                	mov    $0x0,%al
  40dc78:	e8 73 34 ff ff       	callq  4010f0 <fprintf@plt>
  40dc7d:	48 8b 3c 25 40 b7 8c 	mov    0x8cb740,%rdi
  40dc84:	00 
  40dc85:	48 8b 85 b0 ff fa ff 	mov    -0x50050(%rbp),%rax
  40dc8c:	89 c2                	mov    %eax,%edx
  40dc8e:	48 8d 8d e0 ff fa ff 	lea    -0x50020(%rbp),%rcx
  40dc95:	48 be c1 5b 41 00 00 	movabs $0x415bc1,%rsi
  40dc9c:	00 00 00 
  40dc9f:	b0 00                	mov    $0x0,%al
  40dca1:	e8 4a 34 ff ff       	callq  4010f0 <fprintf@plt>
  40dca6:	e8 95 33 ff ff       	callq  401040 <abort@plt>
  40dcab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

000000000040dcb0 <create_large_chunked_message>:
  40dcb0:	55                   	push   %rbp
  40dcb1:	48 89 e5             	mov    %rsp,%rbp
  40dcb4:	48 83 ec 40          	sub    $0x40,%rsp
  40dcb8:	89 7d fc             	mov    %edi,-0x4(%rbp)
  40dcbb:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  40dcbf:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
  40dcc6:	00 
  40dcc7:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  40dccb:	e8 a0 33 ff ff       	callq  401070 <strlen@plt>
  40dcd0:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  40dcd4:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40dcd8:	69 4d fc 07 04 00 00 	imul   $0x407,-0x4(%rbp),%ecx
  40dcdf:	48 63 c9             	movslq %ecx,%rcx
  40dce2:	48 01 c8             	add    %rcx,%rax
  40dce5:	48 83 c0 06          	add    $0x6,%rax
  40dce9:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  40dced:	48 8b 7d d0          	mov    -0x30(%rbp),%rdi
  40dcf1:	e8 1a 34 ff ff       	callq  401110 <malloc@plt>
  40dcf6:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  40dcfa:	48 8b 7d c8          	mov    -0x38(%rbp),%rdi
  40dcfe:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
  40dd02:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  40dd06:	e8 f5 33 ff ff       	callq  401100 <memcpy@plt>
  40dd0b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40dd0f:	48 03 45 e0          	add    -0x20(%rbp),%rax
  40dd13:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  40dd17:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
  40dd1e:	8b 45 ec             	mov    -0x14(%rbp),%eax
  40dd21:	3b 45 fc             	cmp    -0x4(%rbp),%eax
  40dd24:	0f 8d 7a 00 00 00    	jge    40dda4 <create_large_chunked_message+0xf4>
  40dd2a:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  40dd2e:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  40dd32:	8b 14 25 cf 5b 41 00 	mov    0x415bcf,%edx
  40dd39:	89 14 08             	mov    %edx,(%rax,%rcx,1)
  40dd3c:	8a 14 25 d3 5b 41 00 	mov    0x415bd3,%dl
  40dd43:	88 54 08 04          	mov    %dl,0x4(%rax,%rcx,1)
  40dd47:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40dd4b:	48 83 c0 05          	add    $0x5,%rax
  40dd4f:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  40dd53:	48 8b 7d c8          	mov    -0x38(%rbp),%rdi
  40dd57:	48 03 7d e0          	add    -0x20(%rbp),%rdi
  40dd5b:	be 43 00 00 00       	mov    $0x43,%esi
  40dd60:	ba 00 04 00 00       	mov    $0x400,%edx
  40dd65:	e8 36 33 ff ff       	callq  4010a0 <memset@plt>
  40dd6a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40dd6e:	48 05 00 04 00 00    	add    $0x400,%rax
  40dd74:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  40dd78:	48 8b 7d c8          	mov    -0x38(%rbp),%rdi
  40dd7c:	48 03 7d e0          	add    -0x20(%rbp),%rdi
  40dd80:	be 50 31 41 00       	mov    $0x413150,%esi
  40dd85:	e8 c6 32 ff ff       	callq  401050 <strcpy@plt>
  40dd8a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40dd8e:	48 83 c0 02          	add    $0x2,%rax
  40dd92:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  40dd96:	8b 45 ec             	mov    -0x14(%rbp),%eax
  40dd99:	83 c0 01             	add    $0x1,%eax
  40dd9c:	89 45 ec             	mov    %eax,-0x14(%rbp)
  40dd9f:	e9 7a ff ff ff       	jmpq   40dd1e <create_large_chunked_message+0x6e>
  40dda4:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  40dda8:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  40ddac:	8b 14 25 fe 3b 41 00 	mov    0x413bfe,%edx
  40ddb3:	89 14 08             	mov    %edx,(%rax,%rcx,1)
  40ddb6:	66 8b 14 25 02 3c 41 	mov    0x413c02,%dx
  40ddbd:	00 
  40ddbe:	66 89 54 08 04       	mov    %dx,0x4(%rax,%rcx,1)
  40ddc3:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40ddc7:	48 83 c0 06          	add    $0x6,%rax
  40ddcb:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  40ddcf:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40ddd3:	48 3b 45 d0          	cmp    -0x30(%rbp),%rax
  40ddd7:	0f 85 05 00 00 00    	jne    40dde2 <create_large_chunked_message+0x132>
  40dddd:	e9 28 00 00 00       	jmpq   40de0a <create_large_chunked_message+0x15a>
  40dde2:	48 bf d5 5b 41 00 00 	movabs $0x415bd5,%rdi
  40dde9:	00 00 00 
  40ddec:	48 be 86 40 41 00 00 	movabs $0x414086,%rsi
  40ddf3:	00 00 00 
  40ddf6:	ba 9d 10 00 00       	mov    $0x109d,%edx
  40ddfb:	48 b9 e6 5b 41 00 00 	movabs $0x415be6,%rcx
  40de02:	00 00 00 
  40de05:	e8 86 32 ff ff       	callq  401090 <__assert_fail@plt>
  40de0a:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  40de0e:	48 83 c4 40          	add    $0x40,%rsp
  40de12:	5d                   	pop    %rbp
  40de13:	c3                   	retq   
  40de14:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40de1b:	00 00 00 
  40de1e:	66 90                	xchg   %ax,%ax

000000000040de20 <test_message_pause>:
  40de20:	55                   	push   %rbp
  40de21:	48 89 e5             	mov    %rsp,%rbp
  40de24:	48 83 ec 20          	sub    $0x20,%rsp
  40de28:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40de2c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40de30:	48 8b 40 08          	mov    0x8(%rax),%rax
  40de34:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  40de38:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40de3c:	48 8b 78 08          	mov    0x8(%rax),%rdi
  40de40:	e8 2b 32 ff ff       	callq  401070 <strlen@plt>
  40de45:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  40de49:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40de4d:	8b 78 10             	mov    0x10(%rax),%edi
  40de50:	e8 4b c8 ff ff       	callq  40a6a0 <parser_init>
  40de55:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40de59:	83 b8 c0 00 01 00 00 	cmpl   $0x0,0x100c0(%rax)
  40de60:	0f 84 18 00 00 00    	je     40de7e <test_message_pause+0x5e>
  40de66:	8b 04 25 50 b7 8c 00 	mov    0x8cb750,%eax
  40de6d:	25 ff ff ff bf       	and    $0xbfffffff,%eax
  40de72:	0d 00 00 00 40       	or     $0x40000000,%eax
  40de77:	89 04 25 50 b7 8c 00 	mov    %eax,0x8cb750
  40de7e:	e9 00 00 00 00       	jmpq   40de83 <test_message_pause+0x63>
  40de83:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  40de87:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
  40de8b:	e8 20 c9 ff ff       	callq  40a7b0 <parse_pause>
  40de90:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  40de94:	83 3c 25 20 b8 8d 00 	cmpl   $0x0,0x8db820
  40de9b:	00 
  40de9c:	0f 84 3a 00 00 00    	je     40dedc <test_message_pause+0xbc>
  40dea2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40dea6:	48 83 b8 90 00 01 00 	cmpq   $0x0,0x10090(%rax)
  40dead:	00 
  40deae:	0f 84 28 00 00 00    	je     40dedc <test_message_pause+0xbc>
  40deb4:	8b 04 25 64 b7 8c 00 	mov    0x8cb764,%eax
  40debb:	c1 e8 1f             	shr    $0x1f,%eax
  40debe:	83 f8 00             	cmp    $0x0,%eax
  40dec1:	0f 84 15 00 00 00    	je     40dedc <test_message_pause+0xbc>
  40dec7:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40decb:	48 03 45 e0          	add    -0x20(%rbp),%rax
  40decf:	48 89 04 25 00 b8 8d 	mov    %rax,0x8db800
  40ded6:	00 
  40ded7:	e9 f5 00 00 00       	jmpq   40dfd1 <test_message_pause+0x1b1>
  40dedc:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40dee0:	48 3b 45 e8          	cmp    -0x18(%rbp),%rax
  40dee4:	0f 83 63 00 00 00    	jae    40df4d <test_message_pause+0x12d>
  40deea:	8b 04 25 64 b7 8c 00 	mov    0x8cb764,%eax
  40def1:	c1 e8 18             	shr    $0x18,%eax
  40def4:	83 e0 7f             	and    $0x7f,%eax
  40def7:	83 f8 1e             	cmp    $0x1e,%eax
  40defa:	0f 85 05 00 00 00    	jne    40df05 <test_message_pause+0xe5>
  40df00:	e9 12 01 00 00       	jmpq   40e017 <test_message_pause+0x1f7>
  40df05:	8b 04 25 64 b7 8c 00 	mov    0x8cb764,%eax
  40df0c:	c1 e8 18             	shr    $0x18,%eax
  40df0f:	83 e0 7f             	and    $0x7f,%eax
  40df12:	83 f8 1f             	cmp    $0x1f,%eax
  40df15:	0f 85 05 00 00 00    	jne    40df20 <test_message_pause+0x100>
  40df1b:	e9 28 00 00 00       	jmpq   40df48 <test_message_pause+0x128>
  40df20:	48 bf 1c 5c 41 00 00 	movabs $0x415c1c,%rdi
  40df27:	00 00 00 
  40df2a:	48 be 86 40 41 00 00 	movabs $0x414086,%rsi
  40df31:	00 00 00 
  40df34:	ba c3 10 00 00       	mov    $0x10c3,%edx
  40df39:	48 b9 45 5c 41 00 00 	movabs $0x415c45,%rcx
  40df40:	00 00 00 
  40df43:	e8 48 31 ff ff       	callq  401090 <__assert_fail@plt>
  40df48:	e9 00 00 00 00       	jmpq   40df4d <test_message_pause+0x12d>
  40df4d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40df51:	48 03 45 f0          	add    -0x10(%rbp),%rax
  40df55:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  40df59:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  40df5d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40df61:	48 29 c8             	sub    %rcx,%rax
  40df64:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  40df68:	48 bf 50 b7 8c 00 00 	movabs $0x8cb750,%rdi
  40df6f:	00 00 00 
  40df72:	31 f6                	xor    %esi,%esi
  40df74:	e8 27 ad ff ff       	callq  408ca0 <http_parser_pause>
  40df79:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
  40df7e:	0f 87 ff fe ff ff    	ja     40de83 <test_message_pause+0x63>
  40df84:	31 c0                	xor    %eax,%eax
  40df86:	89 c6                	mov    %eax,%esi
  40df88:	48 89 f7             	mov    %rsi,%rdi
  40df8b:	e8 20 c8 ff ff       	callq  40a7b0 <parse_pause>
  40df90:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  40df94:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
  40df99:	0f 85 05 00 00 00    	jne    40dfa4 <test_message_pause+0x184>
  40df9f:	e9 28 00 00 00       	jmpq   40dfcc <test_message_pause+0x1ac>
  40dfa4:	48 bf 75 5c 41 00 00 	movabs $0x415c75,%rdi
  40dfab:	00 00 00 
  40dfae:	48 be 86 40 41 00 00 	movabs $0x414086,%rsi
  40dfb5:	00 00 00 
  40dfb8:	ba cc 10 00 00       	mov    $0x10cc,%edx
  40dfbd:	48 b9 45 5c 41 00 00 	movabs $0x415c45,%rcx
  40dfc4:	00 00 00 
  40dfc7:	e8 c4 30 ff ff       	callq  401090 <__assert_fail@plt>
  40dfcc:	e9 00 00 00 00       	jmpq   40dfd1 <test_message_pause+0x1b1>
  40dfd1:	83 3c 25 58 bb 91 00 	cmpl   $0x1,0x91bb58
  40dfd8:	01 
  40dfd9:	0f 84 1d 00 00 00    	je     40dffc <test_message_pause+0x1dc>
  40dfdf:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40dfe3:	48 8b 30             	mov    (%rax),%rsi
  40dfe6:	48 bf 00 54 41 00 00 	movabs $0x415400,%rdi
  40dfed:	00 00 00 
  40dff0:	b0 00                	mov    $0x0,%al
  40dff2:	e8 89 30 ff ff       	callq  401080 <printf@plt>
  40dff7:	e8 44 30 ff ff       	callq  401040 <abort@plt>
  40dffc:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  40e000:	31 f6                	xor    %esi,%esi
  40e002:	89 f7                	mov    %esi,%edi
  40e004:	e8 87 c8 ff ff       	callq  40a890 <message_eq>
  40e009:	83 f8 00             	cmp    $0x0,%eax
  40e00c:	0f 85 05 00 00 00    	jne    40e017 <test_message_pause+0x1f7>
  40e012:	e8 29 30 ff ff       	callq  401040 <abort@plt>
  40e017:	48 83 c4 20          	add    $0x20,%rsp
  40e01b:	5d                   	pop    %rbp
  40e01c:	c3                   	retq   
  40e01d:	0f 1f 00             	nopl   (%rax)

000000000040e020 <test_message_connect>:
  40e020:	55                   	push   %rbp
  40e021:	48 89 e5             	mov    %rsp,%rbp
  40e024:	48 83 ec 20          	sub    $0x20,%rsp
  40e028:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40e02c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40e030:	48 8b 40 08          	mov    0x8(%rax),%rax
  40e034:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  40e038:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40e03c:	48 8b 78 08          	mov    0x8(%rax),%rdi
  40e040:	e8 2b 30 ff ff       	callq  401070 <strlen@plt>
  40e045:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  40e049:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40e04d:	8b 78 10             	mov    0x10(%rax),%edi
  40e050:	e8 4b c6 ff ff       	callq  40a6a0 <parser_init>
  40e055:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  40e059:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
  40e05d:	e8 ce c7 ff ff       	callq  40a830 <parse_connect>
  40e062:	83 3c 25 58 bb 91 00 	cmpl   $0x1,0x91bb58
  40e069:	01 
  40e06a:	0f 84 1d 00 00 00    	je     40e08d <test_message_connect+0x6d>
  40e070:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40e074:	48 8b 30             	mov    (%rax),%rsi
  40e077:	48 bf 00 54 41 00 00 	movabs $0x415400,%rdi
  40e07e:	00 00 00 
  40e081:	b0 00                	mov    $0x0,%al
  40e083:	e8 f8 2f ff ff       	callq  401080 <printf@plt>
  40e088:	e8 b3 2f ff ff       	callq  401040 <abort@plt>
  40e08d:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  40e091:	31 ff                	xor    %edi,%edi
  40e093:	be 01 00 00 00       	mov    $0x1,%esi
  40e098:	e8 f3 c7 ff ff       	callq  40a890 <message_eq>
  40e09d:	83 f8 00             	cmp    $0x0,%eax
  40e0a0:	0f 85 05 00 00 00    	jne    40e0ab <test_message_connect+0x8b>
  40e0a6:	e8 95 2f ff ff       	callq  401040 <abort@plt>
  40e0ab:	48 83 c4 20          	add    $0x20,%rsp
  40e0af:	5d                   	pop    %rbp
  40e0b0:	c3                   	retq   
  40e0b1:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40e0b8:	00 00 00 
  40e0bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

000000000040e0c0 <main>:
  40e0c0:	55                   	push   %rbp
  40e0c1:	48 89 e5             	mov    %rsp,%rbp
  40e0c4:	48 81 ec c0 02 01 00 	sub    $0x102c0,%rsp
  40e0cb:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  40e0d2:	e8 a9 ac ff ff       	callq  408d80 <http_parser_version>
  40e0d7:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  40e0db:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40e0df:	48 c1 e8 10          	shr    $0x10,%rax
  40e0e3:	48 25 ff 00 00 00    	and    $0xff,%rax
  40e0e9:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  40e0ec:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40e0f0:	48 c1 e8 08          	shr    $0x8,%rax
  40e0f4:	48 25 ff 00 00 00    	and    $0xff,%rax
  40e0fa:	89 45 e0             	mov    %eax,-0x20(%rbp)
  40e0fd:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40e101:	48 25 ff 00 00 00    	and    $0xff,%rax
  40e107:	89 45 dc             	mov    %eax,-0x24(%rbp)
  40e10a:	8b 75 e4             	mov    -0x1c(%rbp),%esi
  40e10d:	8b 55 e0             	mov    -0x20(%rbp),%edx
  40e110:	8b 4d dc             	mov    -0x24(%rbp),%ecx
  40e113:	4c 8b 45 e8          	mov    -0x18(%rbp),%r8
  40e117:	48 bf 80 5c 41 00 00 	movabs $0x415c80,%rdi
  40e11e:	00 00 00 
  40e121:	b0 00                	mov    $0x0,%al
  40e123:	e8 58 2f ff ff       	callq  401080 <printf@plt>
  40e128:	48 bf a1 5c 41 00 00 	movabs $0x415ca1,%rdi
  40e12f:	00 00 00 
  40e132:	be 20 00 00 00       	mov    $0x20,%esi
  40e137:	b0 00                	mov    $0x0,%al
  40e139:	e8 42 2f ff ff       	callq  401080 <printf@plt>
  40e13e:	e8 7d d7 ff ff       	callq  40b8c0 <test_preserve_data>
  40e143:	e8 d8 d8 ff ff       	callq  40ba20 <test_parse_url>
  40e148:	e8 93 da ff ff       	callq  40bbe0 <test_method_str>
  40e14d:	e8 3e db ff ff       	callq  40bc90 <test_status_str>
  40e152:	e8 49 ed ff ff       	callq  40cea0 <test_header_nread_value>
  40e157:	e8 14 eb ff ff       	callq  40cc70 <test_no_overflow_parse_url>
  40e15c:	31 ff                	xor    %edi,%edi
  40e15e:	e8 9d eb ff ff       	callq  40cd00 <test_header_overflow_error>
  40e163:	31 ff                	xor    %edi,%edi
  40e165:	be e8 03 00 00       	mov    $0x3e8,%esi
  40e16a:	e8 51 f0 ff ff       	callq  40d1c0 <test_no_overflow_long_body>
  40e16f:	31 ff                	xor    %edi,%edi
  40e171:	be a0 86 01 00       	mov    $0x186a0,%esi
  40e176:	e8 45 f0 ff ff       	callq  40d1c0 <test_no_overflow_long_body>
  40e17b:	bf 01 00 00 00       	mov    $0x1,%edi
  40e180:	e8 7b eb ff ff       	callq  40cd00 <test_header_overflow_error>
  40e185:	bf 01 00 00 00       	mov    $0x1,%edi
  40e18a:	be e8 03 00 00       	mov    $0x3e8,%esi
  40e18f:	e8 2c f0 ff ff       	callq  40d1c0 <test_no_overflow_long_body>
  40e194:	bf 01 00 00 00       	mov    $0x1,%edi
  40e199:	be a0 86 01 00       	mov    $0x186a0,%esi
  40e19e:	e8 1d f0 ff ff       	callq  40d1c0 <test_no_overflow_long_body>
  40e1a3:	e8 f8 ed ff ff       	callq  40cfa0 <test_header_content_length_overflow_error>
  40e1a8:	e8 73 ef ff ff       	callq  40d120 <test_chunk_content_length_overflow_error>
  40e1ad:	31 ff                	xor    %edi,%edi
  40e1af:	e8 6c e6 ff ff       	callq  40c820 <test_double_content_length_error>
  40e1b4:	31 ff                	xor    %edi,%edi
  40e1b6:	e8 d5 e7 ff ff       	callq  40c990 <test_chunked_content_length_error>
  40e1bb:	31 ff                	xor    %edi,%edi
  40e1bd:	e8 3e e9 ff ff       	callq  40cb00 <test_header_cr_no_lf_error>
  40e1c2:	31 ff                	xor    %edi,%edi
  40e1c4:	e8 17 e6 ff ff       	callq  40c7e0 <test_invalid_header_field_token_error>
  40e1c9:	31 ff                	xor    %edi,%edi
  40e1cb:	e8 60 e4 ff ff       	callq  40c630 <test_invalid_header_field_content_error>
  40e1d0:	bf 01 00 00 00       	mov    $0x1,%edi
  40e1d5:	e8 46 e6 ff ff       	callq  40c820 <test_double_content_length_error>
  40e1da:	bf 01 00 00 00       	mov    $0x1,%edi
  40e1df:	e8 ac e7 ff ff       	callq  40c990 <test_chunked_content_length_error>
  40e1e4:	bf 01 00 00 00       	mov    $0x1,%edi
  40e1e9:	e8 12 e9 ff ff       	callq  40cb00 <test_header_cr_no_lf_error>
  40e1ee:	bf 01 00 00 00       	mov    $0x1,%edi
  40e1f3:	e8 e8 e5 ff ff       	callq  40c7e0 <test_invalid_header_field_token_error>
  40e1f8:	bf 01 00 00 00       	mov    $0x1,%edi
  40e1fd:	e8 2e e4 ff ff       	callq  40c630 <test_invalid_header_field_content_error>
  40e202:	48 bf bb 5c 41 00 00 	movabs $0x415cbb,%rdi
  40e209:	00 00 00 
  40e20c:	be 19 00 00 00       	mov    $0x19,%esi
  40e211:	31 d2                	xor    %edx,%edx
  40e213:	e8 b8 e1 ff ff       	callq  40c3d0 <test_simple_type>
  40e218:	48 bf e0 5c 41 00 00 	movabs $0x415ce0,%rdi
  40e21f:	00 00 00 
  40e222:	31 d2                	xor    %edx,%edx
  40e224:	89 d6                	mov    %edx,%esi
  40e226:	e8 a5 e1 ff ff       	callq  40c3d0 <test_simple_type>
  40e22b:	48 bf 0a 5d 41 00 00 	movabs $0x415d0a,%rdi
  40e232:	00 00 00 
  40e235:	be 19 00 00 00       	mov    $0x19,%esi
  40e23a:	31 d2                	xor    %edx,%edx
  40e23c:	e8 8f e1 ff ff       	callq  40c3d0 <test_simple_type>
  40e241:	48 bf 33 5d 41 00 00 	movabs $0x415d33,%rdi
  40e248:	00 00 00 
  40e24b:	be 19 00 00 00       	mov    $0x19,%esi
  40e250:	31 d2                	xor    %edx,%edx
  40e252:	e8 79 e1 ff ff       	callq  40c3d0 <test_simple_type>
  40e257:	48 bf 5e 5d 41 00 00 	movabs $0x415d5e,%rdi
  40e25e:	00 00 00 
  40e261:	be 19 00 00 00       	mov    $0x19,%esi
  40e266:	31 d2                	xor    %edx,%edx
  40e268:	e8 63 e1 ff ff       	callq  40c3d0 <test_simple_type>
  40e26d:	48 bf 94 5d 41 00 00 	movabs $0x415d94,%rdi
  40e274:	00 00 00 
  40e277:	31 d2                	xor    %edx,%edx
  40e279:	89 d6                	mov    %edx,%esi
  40e27b:	e8 50 e1 ff ff       	callq  40c3d0 <test_simple_type>
  40e280:	48 bf be 5d 41 00 00 	movabs $0x415dbe,%rdi
  40e287:	00 00 00 
  40e28a:	be 0e 00 00 00       	mov    $0xe,%esi
  40e28f:	ba 01 00 00 00       	mov    $0x1,%edx
  40e294:	e8 37 e1 ff ff       	callq  40c3d0 <test_simple_type>
  40e299:	48 bf d1 5d 41 00 00 	movabs $0x415dd1,%rdi
  40e2a0:	00 00 00 
  40e2a3:	be 0e 00 00 00       	mov    $0xe,%esi
  40e2a8:	ba 01 00 00 00       	mov    $0x1,%edx
  40e2ad:	e8 1e e1 ff ff       	callq  40c3d0 <test_simple_type>
  40e2b2:	48 bf e6 5d 41 00 00 	movabs $0x415de6,%rdi
  40e2b9:	00 00 00 
  40e2bc:	be 0e 00 00 00       	mov    $0xe,%esi
  40e2c1:	ba 01 00 00 00       	mov    $0x1,%edx
  40e2c6:	e8 05 e1 ff ff       	callq  40c3d0 <test_simple_type>
  40e2cb:	48 bf fb 5d 41 00 00 	movabs $0x415dfb,%rdi
  40e2d2:	00 00 00 
  40e2d5:	be 0e 00 00 00       	mov    $0xe,%esi
  40e2da:	ba 01 00 00 00       	mov    $0x1,%edx
  40e2df:	e8 ec e0 ff ff       	callq  40c3d0 <test_simple_type>
  40e2e4:	48 bf 11 5e 41 00 00 	movabs $0x415e11,%rdi
  40e2eb:	00 00 00 
  40e2ee:	be 0e 00 00 00       	mov    $0xe,%esi
  40e2f3:	ba 01 00 00 00       	mov    $0x1,%edx
  40e2f8:	e8 d3 e0 ff ff       	callq  40c3d0 <test_simple_type>
  40e2fd:	48 bf 10 5e 41 00 00 	movabs $0x415e10,%rdi
  40e304:	00 00 00 
  40e307:	be 0e 00 00 00       	mov    $0xe,%esi
  40e30c:	ba 01 00 00 00       	mov    $0x1,%edx
  40e311:	e8 ba e0 ff ff       	callq  40c3d0 <test_simple_type>
  40e316:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
  40e31d:	8b 45 f8             	mov    -0x8(%rbp),%eax
  40e320:	48 83 f8 1d          	cmp    $0x1d,%rax
  40e324:	0f 83 2a 00 00 00    	jae    40e354 <main+0x294>
  40e32a:	8b 45 f8             	mov    -0x8(%rbp),%eax
  40e32d:	48 bf 10 8e 6e 00 00 	movabs $0x6e8e10,%rdi
  40e334:	00 00 00 
  40e337:	48 69 c0 c8 00 01 00 	imul   $0x100c8,%rax,%rax
  40e33e:	48 01 c7             	add    %rax,%rdi
  40e341:	e8 4a da ff ff       	callq  40bd90 <test_message>
  40e346:	8b 45 f8             	mov    -0x8(%rbp),%eax
  40e349:	83 c0 01             	add    $0x1,%eax
  40e34c:	89 45 f8             	mov    %eax,-0x8(%rbp)
  40e34f:	e9 c9 ff ff ff       	jmpq   40e31d <main+0x25d>
  40e354:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
  40e35b:	8b 45 f8             	mov    -0x8(%rbp),%eax
  40e35e:	48 83 f8 1d          	cmp    $0x1d,%rax
  40e362:	0f 83 2a 00 00 00    	jae    40e392 <main+0x2d2>
  40e368:	8b 45 f8             	mov    -0x8(%rbp),%eax
  40e36b:	48 bf 10 8e 6e 00 00 	movabs $0x6e8e10,%rdi
  40e372:	00 00 00 
  40e375:	48 69 c0 c8 00 01 00 	imul   $0x100c8,%rax,%rax
  40e37c:	48 01 c7             	add    %rax,%rdi
  40e37f:	e8 9c fa ff ff       	callq  40de20 <test_message_pause>
  40e384:	8b 45 f8             	mov    -0x8(%rbp),%eax
  40e387:	83 c0 01             	add    $0x1,%eax
  40e38a:	89 45 f8             	mov    %eax,-0x8(%rbp)
  40e38d:	e9 c9 ff ff ff       	jmpq   40e35b <main+0x29b>
  40e392:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
  40e399:	8b 45 f8             	mov    -0x8(%rbp),%eax
  40e39c:	48 83 f8 1d          	cmp    $0x1d,%rax
  40e3a0:	0f 83 2a 00 00 00    	jae    40e3d0 <main+0x310>
  40e3a6:	8b 45 f8             	mov    -0x8(%rbp),%eax
  40e3a9:	48 bf 10 8e 6e 00 00 	movabs $0x6e8e10,%rdi
  40e3b0:	00 00 00 
  40e3b3:	48 69 c0 c8 00 01 00 	imul   $0x100c8,%rax,%rax
  40e3ba:	48 01 c7             	add    %rax,%rdi
  40e3bd:	e8 5e fc ff ff       	callq  40e020 <test_message_connect>
  40e3c2:	8b 45 f8             	mov    -0x8(%rbp),%eax
  40e3c5:	83 c0 01             	add    $0x1,%eax
  40e3c8:	89 45 f8             	mov    %eax,-0x8(%rbp)
  40e3cb:	e9 c9 ff ff ff       	jmpq   40e399 <main+0x2d9>
  40e3d0:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
  40e3d7:	8b 45 f8             	mov    -0x8(%rbp),%eax
  40e3da:	48 83 f8 1d          	cmp    $0x1d,%rax
  40e3de:	0f 83 fc 00 00 00    	jae    40e4e0 <main+0x420>
  40e3e4:	8b 45 f8             	mov    -0x8(%rbp),%eax
  40e3e7:	89 c1                	mov    %eax,%ecx
  40e3e9:	48 b8 10 8e 6e 00 00 	movabs $0x6e8e10,%rax
  40e3f0:	00 00 00 
  40e3f3:	48 69 c9 c8 00 01 00 	imul   $0x100c8,%rcx,%rcx
  40e3fa:	48 01 c8             	add    %rcx,%rax
  40e3fd:	83 b8 44 00 01 00 00 	cmpl   $0x0,0x10044(%rax)
  40e404:	0f 85 05 00 00 00    	jne    40e40f <main+0x34f>
  40e40a:	e9 c3 00 00 00       	jmpq   40e4d2 <main+0x412>
  40e40f:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
  40e416:	8b 45 f4             	mov    -0xc(%rbp),%eax
  40e419:	48 83 f8 1d          	cmp    $0x1d,%rax
  40e41d:	0f 83 aa 00 00 00    	jae    40e4cd <main+0x40d>
  40e423:	8b 45 f4             	mov    -0xc(%rbp),%eax
  40e426:	89 c1                	mov    %eax,%ecx
  40e428:	48 b8 10 8e 6e 00 00 	movabs $0x6e8e10,%rax
  40e42f:	00 00 00 
  40e432:	48 69 c9 c8 00 01 00 	imul   $0x100c8,%rcx,%rcx
  40e439:	48 01 c8             	add    %rcx,%rax
  40e43c:	83 b8 44 00 01 00 00 	cmpl   $0x0,0x10044(%rax)
  40e443:	0f 85 05 00 00 00    	jne    40e44e <main+0x38e>
  40e449:	e9 71 00 00 00       	jmpq   40e4bf <main+0x3ff>
  40e44e:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%rbp)
  40e455:	8b 45 f0             	mov    -0x10(%rbp),%eax
  40e458:	48 83 f8 1d          	cmp    $0x1d,%rax
  40e45c:	0f 83 58 00 00 00    	jae    40e4ba <main+0x3fa>
  40e462:	8b 45 f8             	mov    -0x8(%rbp),%eax
  40e465:	48 bf 10 8e 6e 00 00 	movabs $0x6e8e10,%rdi
  40e46c:	00 00 00 
  40e46f:	48 69 c0 c8 00 01 00 	imul   $0x100c8,%rax,%rax
  40e476:	48 01 c7             	add    %rax,%rdi
  40e479:	8b 45 f4             	mov    -0xc(%rbp),%eax
  40e47c:	48 be 10 8e 6e 00 00 	movabs $0x6e8e10,%rsi
  40e483:	00 00 00 
  40e486:	48 69 c0 c8 00 01 00 	imul   $0x100c8,%rax,%rax
  40e48d:	48 01 c6             	add    %rax,%rsi
  40e490:	8b 45 f0             	mov    -0x10(%rbp),%eax
  40e493:	48 ba 10 8e 6e 00 00 	movabs $0x6e8e10,%rdx
  40e49a:	00 00 00 
  40e49d:	48 69 c0 c8 00 01 00 	imul   $0x100c8,%rax,%rax
  40e4a4:	48 01 c2             	add    %rax,%rdx
  40e4a7:	e8 b4 ee ff ff       	callq  40d360 <test_multiple3>
  40e4ac:	8b 45 f0             	mov    -0x10(%rbp),%eax
  40e4af:	83 c0 01             	add    $0x1,%eax
  40e4b2:	89 45 f0             	mov    %eax,-0x10(%rbp)
  40e4b5:	e9 9b ff ff ff       	jmpq   40e455 <main+0x395>
  40e4ba:	e9 00 00 00 00       	jmpq   40e4bf <main+0x3ff>
  40e4bf:	8b 45 f4             	mov    -0xc(%rbp),%eax
  40e4c2:	83 c0 01             	add    $0x1,%eax
  40e4c5:	89 45 f4             	mov    %eax,-0xc(%rbp)
  40e4c8:	e9 49 ff ff ff       	jmpq   40e416 <main+0x356>
  40e4cd:	e9 00 00 00 00       	jmpq   40e4d2 <main+0x412>
  40e4d2:	8b 45 f8             	mov    -0x8(%rbp),%eax
  40e4d5:	83 c0 01             	add    $0x1,%eax
  40e4d8:	89 45 f8             	mov    %eax,-0x8(%rbp)
  40e4db:	e9 f7 fe ff ff       	jmpq   40e3d7 <main+0x317>
  40e4e0:	48 bf 10 8e 6e 00 00 	movabs $0x6e8e10,%rdi
  40e4e7:	00 00 00 
  40e4ea:	48 81 c7 90 01 02 00 	add    $0x20190,%rdi
  40e4f1:	e8 8a dd ff ff       	callq  40c280 <test_message_count_body>
  40e4f6:	48 bf 10 8e 6e 00 00 	movabs $0x6e8e10,%rdi
  40e4fd:	00 00 00 
  40e500:	48 81 c7 20 03 04 00 	add    $0x40320,%rdi
  40e507:	e8 74 dd ff ff       	callq  40c280 <test_message_count_body>
  40e50c:	bf 69 7a 00 00       	mov    $0x7a69,%edi
  40e511:	48 be 25 5e 41 00 00 	movabs $0x415e25,%rsi
  40e518:	00 00 00 
  40e51b:	e8 90 f7 ff ff       	callq  40dcb0 <create_large_chunked_message>
  40e520:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  40e524:	48 8d bd 08 ff fe ff 	lea    -0x100f8(%rbp),%rdi
  40e52b:	31 f6                	xor    %esi,%esi
  40e52d:	ba c8 00 01 00       	mov    $0x100c8,%edx
  40e532:	e8 69 2b ff ff       	callq  4010a0 <memset@plt>
  40e537:	48 b8 6f 5e 41 00 00 	movabs $0x415e6f,%rax
  40e53e:	00 00 00 
  40e541:	48 89 85 08 ff fe ff 	mov    %rax,-0x100f8(%rbp)
  40e548:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  40e54c:	48 89 85 10 ff fe ff 	mov    %rax,-0x100f0(%rbp)
  40e553:	c7 85 18 ff fe ff 01 	movl   $0x1,-0x100e8(%rbp)
  40e55a:	00 00 00 
  40e55d:	c7 85 20 ff fe ff c8 	movl   $0xc8,-0x100e0(%rbp)
  40e564:	00 00 00 
  40e567:	48 8d bd 08 ff fe ff 	lea    -0x100f8(%rbp),%rdi
  40e56e:	48 83 c7 1c          	add    $0x1c,%rdi
  40e572:	48 be d0 ae 8b 00 00 	movabs $0x8baed0,%rsi
  40e579:	00 00 00 
  40e57c:	ba 00 08 00 00       	mov    $0x800,%edx
  40e581:	e8 7a 2b ff ff       	callq  401100 <memcpy@plt>
  40e586:	48 c7 85 28 2f ff ff 	movq   $0x1e9a400,-0xd0d8(%rbp)
  40e58d:	00 a4 e9 01 
  40e591:	c7 85 44 2f ff ff 02 	movl   $0x2,-0xd0bc(%rbp)
  40e598:	00 00 00 
  40e59b:	48 8d bd 08 ff fe ff 	lea    -0x100f8(%rbp),%rdi
  40e5a2:	48 81 c7 44 30 00 00 	add    $0x3044,%rdi
  40e5a9:	48 be 90 e5 8b 00 00 	movabs $0x8be590,%rsi
  40e5b0:	00 00 00 
  40e5b3:	ba 00 d0 00 00       	mov    $0xd000,%edx
  40e5b8:	e8 43 2b ff ff       	callq  401100 <memcpy@plt>
  40e5bd:	c7 85 54 ff ff ff 6a 	movl   $0x7a6a,-0xac(%rbp)
  40e5c4:	7a 00 00 
  40e5c7:	66 c7 45 a0 01 00    	movw   $0x1,-0x60(%rbp)
  40e5cd:	48 c7 45 a8 ff ff ff 	movq   $0xffffffffffffffff,-0x58(%rbp)
  40e5d4:	ff 
  40e5d5:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
  40e5dc:	83 7d f8 10          	cmpl   $0x10,-0x8(%rbp)
  40e5e0:	0f 83 1c 00 00 00    	jae    40e602 <main+0x542>
  40e5e6:	8b 45 f8             	mov    -0x8(%rbp),%eax
  40e5e9:	c7 84 85 58 ff ff ff 	movl   $0x400,-0xa8(%rbp,%rax,4)
  40e5f0:	00 04 00 00 
  40e5f4:	8b 45 f8             	mov    -0x8(%rbp),%eax
  40e5f7:	83 c0 01             	add    $0x1,%eax
  40e5fa:	89 45 f8             	mov    %eax,-0x8(%rbp)
  40e5fd:	e9 da ff ff ff       	jmpq   40e5dc <main+0x51c>
  40e602:	48 8d bd 08 ff fe ff 	lea    -0x100f8(%rbp),%rdi
  40e609:	e8 72 dc ff ff       	callq  40c280 <test_message_count_body>
  40e60e:	48 8b 7d d0          	mov    -0x30(%rbp),%rdi
  40e612:	e8 19 2a ff ff       	callq  401030 <free@plt>
  40e617:	48 bf 7d 5e 41 00 00 	movabs $0x415e7d,%rdi
  40e61e:	00 00 00 
  40e621:	b0 00                	mov    $0x0,%al
  40e623:	e8 58 2a ff ff       	callq  401080 <printf@plt>
  40e628:	48 ba 10 8e 6e 00 00 	movabs $0x6e8e10,%rdx
  40e62f:	00 00 00 
  40e632:	48 89 d7             	mov    %rdx,%rdi
  40e635:	48 81 c7 20 03 04 00 	add    $0x40320,%rdi
  40e63c:	48 89 d6             	mov    %rdx,%rsi
  40e63f:	48 81 c6 f0 0a 0e 00 	add    $0xe0af0,%rsi
  40e646:	48 81 c2 58 02 03 00 	add    $0x30258,%rdx
  40e64d:	e8 8e ef ff ff       	callq  40d5e0 <test_scan>
  40e652:	48 bf 95 5e 41 00 00 	movabs $0x415e95,%rdi
  40e659:	00 00 00 
  40e65c:	b0 00                	mov    $0x0,%al
  40e65e:	e8 1d 2a ff ff       	callq  401080 <printf@plt>
  40e663:	48 ba 10 8e 6e 00 00 	movabs $0x6e8e10,%rdx
  40e66a:	00 00 00 
  40e66d:	48 89 d7             	mov    %rdx,%rdi
  40e670:	48 81 c7 40 06 08 00 	add    $0x80640,%rdi
  40e677:	48 89 d6             	mov    %rdx,%rsi
  40e67a:	48 81 c6 78 05 07 00 	add    $0x70578,%rsi
  40e681:	48 81 c2 e8 03 05 00 	add    $0x503e8,%rdx
  40e688:	e8 53 ef ff ff       	callq  40d5e0 <test_scan>
  40e68d:	48 bf ad 5e 41 00 00 	movabs $0x415ead,%rdi
  40e694:	00 00 00 
  40e697:	e8 c4 29 ff ff       	callq  401060 <puts@plt>
  40e69c:	48 bf bc 5e 41 00 00 	movabs $0x415ebc,%rdi
  40e6a3:	00 00 00 
  40e6a6:	be 1c 00 00 00       	mov    $0x1c,%esi
  40e6ab:	e8 e0 dd ff ff       	callq  40c490 <test_simple>
  40e6b0:	48 bf d0 5e 41 00 00 	movabs $0x415ed0,%rdi
  40e6b7:	00 00 00 
  40e6ba:	be 1c 00 00 00       	mov    $0x1c,%esi
  40e6bf:	e8 cc dd ff ff       	callq  40c490 <test_simple>
  40e6c4:	48 bf e2 5e 41 00 00 	movabs $0x415ee2,%rdi
  40e6cb:	00 00 00 
  40e6ce:	be 0e 00 00 00       	mov    $0xe,%esi
  40e6d3:	e8 b8 dd ff ff       	callq  40c490 <test_simple>
  40e6d8:	48 bf f4 5e 41 00 00 	movabs $0x415ef4,%rdi
  40e6df:	00 00 00 
  40e6e2:	be 0e 00 00 00       	mov    $0xe,%esi
  40e6e7:	e8 a4 dd ff ff       	callq  40c490 <test_simple>
  40e6ec:	48 bf 08 5f 41 00 00 	movabs $0x415f08,%rdi
  40e6f3:	00 00 00 
  40e6f6:	be 0e 00 00 00       	mov    $0xe,%esi
  40e6fb:	e8 90 dd ff ff       	callq  40c490 <test_simple>
  40e700:	48 bf 1c 5f 41 00 00 	movabs $0x415f1c,%rdi
  40e707:	00 00 00 
  40e70a:	be 0e 00 00 00       	mov    $0xe,%esi
  40e70f:	e8 7c dd ff ff       	callq  40c490 <test_simple>
  40e714:	48 bf 30 5f 41 00 00 	movabs $0x415f30,%rdi
  40e71b:	00 00 00 
  40e71e:	be 18 00 00 00       	mov    $0x18,%esi
  40e723:	e8 68 dd ff ff       	callq  40c490 <test_simple>
  40e728:	48 bf 51 5f 41 00 00 	movabs $0x415f51,%rdi
  40e72f:	00 00 00 
  40e732:	be 18 00 00 00       	mov    $0x18,%esi
  40e737:	e8 54 dd ff ff       	callq  40c490 <test_simple>
  40e73c:	48 bf 76 5f 41 00 00 	movabs $0x415f76,%rdi
  40e743:	00 00 00 
  40e746:	31 f6                	xor    %esi,%esi
  40e748:	e8 43 dd ff ff       	callq  40c490 <test_simple>
  40e74d:	48 bf 9a 5f 41 00 00 	movabs $0x415f9a,%rdi
  40e754:	00 00 00 
  40e757:	31 f6                	xor    %esi,%esi
  40e759:	e8 32 dd ff ff       	callq  40c490 <test_simple>
  40e75e:	48 bf df 5f 41 00 00 	movabs $0x415fdf,%rdi
  40e765:	00 00 00 
  40e768:	be 21 00 00 00       	mov    $0x21,%esi
  40e76d:	e8 1e dd ff ff       	callq  40c490 <test_simple>
  40e772:	48 b8 90 b5 8c 00 00 	movabs $0x8cb590,%rax
  40e779:	00 00 00 
  40e77c:	48 89 85 00 ff fe ff 	mov    %rax,-0x10100(%rbp)
  40e783:	48 8b 85 00 ff fe ff 	mov    -0x10100(%rbp),%rax
  40e78a:	48 83 38 00          	cmpq   $0x0,(%rax)
  40e78e:	0f 84 47 00 00 00    	je     40e7db <main+0x71b>
  40e794:	48 8d bd 30 fe fe ff 	lea    -0x101d0(%rbp),%rdi
  40e79b:	48 8b 85 00 ff fe ff 	mov    -0x10100(%rbp),%rax
  40e7a2:	48 8b 10             	mov    (%rax),%rdx
  40e7a5:	48 be 0e 60 41 00 00 	movabs $0x41600e,%rsi
  40e7ac:	00 00 00 
  40e7af:	b0 00                	mov    $0x0,%al
  40e7b1:	e8 8a 29 ff ff       	callq  401140 <sprintf@plt>
  40e7b6:	48 8d bd 30 fe fe ff 	lea    -0x101d0(%rbp),%rdi
  40e7bd:	31 f6                	xor    %esi,%esi
  40e7bf:	e8 cc dc ff ff       	callq  40c490 <test_simple>
  40e7c4:	48 8b 85 00 ff fe ff 	mov    -0x10100(%rbp),%rax
  40e7cb:	48 83 c0 08          	add    $0x8,%rax
  40e7cf:	48 89 85 00 ff fe ff 	mov    %rax,-0x10100(%rbp)
  40e7d6:	e9 a8 ff ff ff       	jmpq   40e783 <main+0x6c3>
  40e7db:	48 b8 a0 b6 8c 00 00 	movabs $0x8cb6a0,%rax
  40e7e2:	00 00 00 
  40e7e5:	48 89 85 00 ff fe ff 	mov    %rax,-0x10100(%rbp)
  40e7ec:	48 8b 85 00 ff fe ff 	mov    -0x10100(%rbp),%rax
  40e7f3:	48 83 38 00          	cmpq   $0x0,(%rax)
  40e7f7:	0f 84 4a 00 00 00    	je     40e847 <main+0x787>
  40e7fd:	48 8d bd 60 fd fe ff 	lea    -0x102a0(%rbp),%rdi
  40e804:	48 8b 85 00 ff fe ff 	mov    -0x10100(%rbp),%rax
  40e80b:	48 8b 10             	mov    (%rax),%rdx
  40e80e:	48 be 0e 60 41 00 00 	movabs $0x41600e,%rsi
  40e815:	00 00 00 
  40e818:	b0 00                	mov    $0x0,%al
  40e81a:	e8 21 29 ff ff       	callq  401140 <sprintf@plt>
  40e81f:	48 8d bd 60 fd fe ff 	lea    -0x102a0(%rbp),%rdi
  40e826:	be 10 00 00 00       	mov    $0x10,%esi
  40e82b:	e8 60 dc ff ff       	callq  40c490 <test_simple>
  40e830:	48 8b 85 00 ff fe ff 	mov    -0x10100(%rbp),%rax
  40e837:	48 83 c0 08          	add    $0x8,%rax
  40e83b:	48 89 85 00 ff fe ff 	mov    %rax,-0x10100(%rbp)
  40e842:	e9 a5 ff ff ff       	jmpq   40e7ec <main+0x72c>
  40e847:	48 bf 58 60 41 00 00 	movabs $0x416058,%rdi
  40e84e:	00 00 00 
  40e851:	be 18 00 00 00       	mov    $0x18,%esi
  40e856:	e8 35 dc ff ff       	callq  40c490 <test_simple>
  40e85b:	48 b8 7b 60 41 00 00 	movabs $0x41607b,%rax
  40e862:	00 00 00 
  40e865:	48 89 85 58 fd fe ff 	mov    %rax,-0x102a8(%rbp)
  40e86c:	48 8b bd 58 fd fe ff 	mov    -0x102a8(%rbp),%rdi
  40e873:	31 f6                	xor    %esi,%esi
  40e875:	e8 16 dc ff ff       	callq  40c490 <test_simple>
  40e87a:	48 b8 78 68 41 00 00 	movabs $0x416878,%rax
  40e881:	00 00 00 
  40e884:	48 89 85 50 fd fe ff 	mov    %rax,-0x102b0(%rbp)
  40e88b:	48 8b bd 50 fd fe ff 	mov    -0x102b0(%rbp),%rdi
  40e892:	be 18 00 00 00       	mov    $0x18,%esi
  40e897:	e8 f4 db ff ff       	callq  40c490 <test_simple>
  40e89c:	48 b8 d2 68 41 00 00 	movabs $0x4168d2,%rax
  40e8a3:	00 00 00 
  40e8a6:	48 89 85 48 fd fe ff 	mov    %rax,-0x102b8(%rbp)
  40e8ad:	48 8b bd 48 fd fe ff 	mov    -0x102b8(%rbp),%rdi
  40e8b4:	be 18 00 00 00       	mov    $0x18,%esi
  40e8b9:	e8 d2 db ff ff       	callq  40c490 <test_simple>
  40e8be:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
  40e8c5:	8b 45 f8             	mov    -0x8(%rbp),%eax
  40e8c8:	48 83 f8 2d          	cmp    $0x2d,%rax
  40e8cc:	0f 83 2a 00 00 00    	jae    40e8fc <main+0x83c>
  40e8d2:	8b 45 f8             	mov    -0x8(%rbp),%eax
  40e8d5:	48 bf e0 6a 41 00 00 	movabs $0x416ae0,%rdi
  40e8dc:	00 00 00 
  40e8df:	48 69 c0 c8 00 01 00 	imul   $0x100c8,%rax,%rax
  40e8e6:	48 01 c7             	add    %rax,%rdi
  40e8e9:	e8 a2 d4 ff ff       	callq  40bd90 <test_message>
  40e8ee:	8b 45 f8             	mov    -0x8(%rbp),%eax
  40e8f1:	83 c0 01             	add    $0x1,%eax
  40e8f4:	89 45 f8             	mov    %eax,-0x8(%rbp)
  40e8f7:	e9 c9 ff ff ff       	jmpq   40e8c5 <main+0x805>
  40e8fc:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
  40e903:	8b 45 f8             	mov    -0x8(%rbp),%eax
  40e906:	48 83 f8 2d          	cmp    $0x2d,%rax
  40e90a:	0f 83 2a 00 00 00    	jae    40e93a <main+0x87a>
  40e910:	8b 45 f8             	mov    -0x8(%rbp),%eax
  40e913:	48 bf e0 6a 41 00 00 	movabs $0x416ae0,%rdi
  40e91a:	00 00 00 
  40e91d:	48 69 c0 c8 00 01 00 	imul   $0x100c8,%rax,%rax
  40e924:	48 01 c7             	add    %rax,%rdi
  40e927:	e8 f4 f4 ff ff       	callq  40de20 <test_message_pause>
  40e92c:	8b 45 f8             	mov    -0x8(%rbp),%eax
  40e92f:	83 c0 01             	add    $0x1,%eax
  40e932:	89 45 f8             	mov    %eax,-0x8(%rbp)
  40e935:	e9 c9 ff ff ff       	jmpq   40e903 <main+0x843>
  40e93a:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
  40e941:	8b 45 f8             	mov    -0x8(%rbp),%eax
  40e944:	48 83 f8 2d          	cmp    $0x2d,%rax
  40e948:	0f 83 fc 00 00 00    	jae    40ea4a <main+0x98a>
  40e94e:	8b 45 f8             	mov    -0x8(%rbp),%eax
  40e951:	89 c1                	mov    %eax,%ecx
  40e953:	48 b8 e0 6a 41 00 00 	movabs $0x416ae0,%rax
  40e95a:	00 00 00 
  40e95d:	48 69 c9 c8 00 01 00 	imul   $0x100c8,%rcx,%rcx
  40e964:	48 01 c8             	add    %rcx,%rax
  40e967:	83 b8 44 00 01 00 00 	cmpl   $0x0,0x10044(%rax)
  40e96e:	0f 85 05 00 00 00    	jne    40e979 <main+0x8b9>
  40e974:	e9 c3 00 00 00       	jmpq   40ea3c <main+0x97c>
  40e979:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
  40e980:	8b 45 f4             	mov    -0xc(%rbp),%eax
  40e983:	48 83 f8 2d          	cmp    $0x2d,%rax
  40e987:	0f 83 aa 00 00 00    	jae    40ea37 <main+0x977>
  40e98d:	8b 45 f4             	mov    -0xc(%rbp),%eax
  40e990:	89 c1                	mov    %eax,%ecx
  40e992:	48 b8 e0 6a 41 00 00 	movabs $0x416ae0,%rax
  40e999:	00 00 00 
  40e99c:	48 69 c9 c8 00 01 00 	imul   $0x100c8,%rcx,%rcx
  40e9a3:	48 01 c8             	add    %rcx,%rax
  40e9a6:	83 b8 44 00 01 00 00 	cmpl   $0x0,0x10044(%rax)
  40e9ad:	0f 85 05 00 00 00    	jne    40e9b8 <main+0x8f8>
  40e9b3:	e9 71 00 00 00       	jmpq   40ea29 <main+0x969>
  40e9b8:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%rbp)
  40e9bf:	8b 45 f0             	mov    -0x10(%rbp),%eax
  40e9c2:	48 83 f8 2d          	cmp    $0x2d,%rax
  40e9c6:	0f 83 58 00 00 00    	jae    40ea24 <main+0x964>
  40e9cc:	8b 45 f8             	mov    -0x8(%rbp),%eax
  40e9cf:	48 bf e0 6a 41 00 00 	movabs $0x416ae0,%rdi
  40e9d6:	00 00 00 
  40e9d9:	48 69 c0 c8 00 01 00 	imul   $0x100c8,%rax,%rax
  40e9e0:	48 01 c7             	add    %rax,%rdi
  40e9e3:	8b 45 f4             	mov    -0xc(%rbp),%eax
  40e9e6:	48 be e0 6a 41 00 00 	movabs $0x416ae0,%rsi
  40e9ed:	00 00 00 
  40e9f0:	48 69 c0 c8 00 01 00 	imul   $0x100c8,%rax,%rax
  40e9f7:	48 01 c6             	add    %rax,%rsi
  40e9fa:	8b 45 f0             	mov    -0x10(%rbp),%eax
  40e9fd:	48 ba e0 6a 41 00 00 	movabs $0x416ae0,%rdx
  40ea04:	00 00 00 
  40ea07:	48 69 c0 c8 00 01 00 	imul   $0x100c8,%rax,%rax
  40ea0e:	48 01 c2             	add    %rax,%rdx
  40ea11:	e8 4a e9 ff ff       	callq  40d360 <test_multiple3>
  40ea16:	8b 45 f0             	mov    -0x10(%rbp),%eax
  40ea19:	83 c0 01             	add    $0x1,%eax
  40ea1c:	89 45 f0             	mov    %eax,-0x10(%rbp)
  40ea1f:	e9 9b ff ff ff       	jmpq   40e9bf <main+0x8ff>
  40ea24:	e9 00 00 00 00       	jmpq   40ea29 <main+0x969>
  40ea29:	8b 45 f4             	mov    -0xc(%rbp),%eax
  40ea2c:	83 c0 01             	add    $0x1,%eax
  40ea2f:	89 45 f4             	mov    %eax,-0xc(%rbp)
  40ea32:	e9 49 ff ff ff       	jmpq   40e980 <main+0x8c0>
  40ea37:	e9 00 00 00 00       	jmpq   40ea3c <main+0x97c>
  40ea3c:	8b 45 f8             	mov    -0x8(%rbp),%eax
  40ea3f:	83 c0 01             	add    $0x1,%eax
  40ea42:	89 45 f8             	mov    %eax,-0x8(%rbp)
  40ea45:	e9 f7 fe ff ff       	jmpq   40e941 <main+0x881>
  40ea4a:	48 bf 2f 69 41 00 00 	movabs $0x41692f,%rdi
  40ea51:	00 00 00 
  40ea54:	b0 00                	mov    $0x0,%al
  40ea56:	e8 25 26 ff ff       	callq  401080 <printf@plt>
  40ea5b:	48 be e0 6a 41 00 00 	movabs $0x416ae0,%rsi
  40ea62:	00 00 00 
  40ea65:	48 89 f2             	mov    %rsi,%rdx
  40ea68:	48 81 c2 20 03 04 00 	add    $0x40320,%rdx
  40ea6f:	48 81 c6 e8 03 05 00 	add    $0x503e8,%rsi
  40ea76:	48 89 d7             	mov    %rdx,%rdi
  40ea79:	e8 62 eb ff ff       	callq  40d5e0 <test_scan>
  40ea7e:	48 bf 46 69 41 00 00 	movabs $0x416946,%rdi
  40ea85:	00 00 00 
  40ea88:	b0 00                	mov    $0x0,%al
  40ea8a:	e8 f1 25 ff ff       	callq  401080 <printf@plt>
  40ea8f:	48 ba e0 6a 41 00 00 	movabs $0x416ae0,%rdx
  40ea96:	00 00 00 
  40ea99:	48 89 d7             	mov    %rdx,%rdi
  40ea9c:	48 81 c7 40 06 08 00 	add    $0x80640,%rdi
  40eaa3:	48 89 d6             	mov    %rdx,%rsi
  40eaa6:	48 81 c6 78 05 07 00 	add    $0x70578,%rsi
  40eaad:	48 81 c2 b0 04 06 00 	add    $0x604b0,%rdx
  40eab4:	e8 27 eb ff ff       	callq  40d5e0 <test_scan>
  40eab9:	48 bf 5d 69 41 00 00 	movabs $0x41695d,%rdi
  40eac0:	00 00 00 
  40eac3:	b0 00                	mov    $0x0,%al
  40eac5:	e8 b6 25 ff ff       	callq  401080 <printf@plt>
  40eaca:	48 ba e0 6a 41 00 00 	movabs $0x416ae0,%rdx
  40ead1:	00 00 00 
  40ead4:	48 89 d7             	mov    %rdx,%rdi
  40ead7:	48 81 c7 08 07 09 00 	add    $0x90708,%rdi
  40eade:	48 89 d6             	mov    %rdx,%rsi
  40eae1:	48 81 c6 d0 07 0a 00 	add    $0xa07d0,%rsi
  40eae8:	48 81 c2 98 08 0b 00 	add    $0xb0898,%rdx
  40eaef:	e8 ec ea ff ff       	callq  40d5e0 <test_scan>
  40eaf4:	48 bf 74 69 41 00 00 	movabs $0x416974,%rdi
  40eafb:	00 00 00 
  40eafe:	b0 00                	mov    $0x0,%al
  40eb00:	e8 7b 25 ff ff       	callq  401080 <printf@plt>
  40eb05:	48 ba e0 6a 41 00 00 	movabs $0x416ae0,%rdx
  40eb0c:	00 00 00 
  40eb0f:	48 89 d7             	mov    %rdx,%rdi
  40eb12:	48 81 c7 f0 0a 0e 00 	add    $0xe0af0,%rdi
  40eb19:	48 89 d6             	mov    %rdx,%rsi
  40eb1c:	48 81 c6 b8 0b 0f 00 	add    $0xf0bb8,%rsi
  40eb23:	48 81 c2 48 0d 11 00 	add    $0x110d48,%rdx
  40eb2a:	e8 b1 ea ff ff       	callq  40d5e0 <test_scan>
  40eb2f:	48 bf 8b 69 41 00 00 	movabs $0x41698b,%rdi
  40eb36:	00 00 00 
  40eb39:	e8 22 25 ff ff       	callq  401060 <puts@plt>
  40eb3e:	31 c0                	xor    %eax,%eax
  40eb40:	48 81 c4 c0 02 01 00 	add    $0x102c0,%rsp
  40eb47:	5d                   	pop    %rbp
  40eb48:	c3                   	retq   
  40eb49:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

000000000040eb50 <__libc_csu_init>:
  40eb50:	f3 0f 1e fa          	endbr64 
  40eb54:	41 57                	push   %r15
  40eb56:	4c 8d 3d b3 f2 4a 00 	lea    0x4af2b3(%rip),%r15        # 8bde10 <__frame_dummy_init_array_entry>
  40eb5d:	41 56                	push   %r14
  40eb5f:	49 89 d6             	mov    %rdx,%r14
  40eb62:	41 55                	push   %r13
  40eb64:	49 89 f5             	mov    %rsi,%r13
  40eb67:	41 54                	push   %r12
  40eb69:	41 89 fc             	mov    %edi,%r12d
  40eb6c:	55                   	push   %rbp
  40eb6d:	48 8d 2d a4 f2 4a 00 	lea    0x4af2a4(%rip),%rbp        # 8bde18 <__do_global_dtors_aux_fini_array_entry>
  40eb74:	53                   	push   %rbx
  40eb75:	4c 29 fd             	sub    %r15,%rbp
  40eb78:	48 83 ec 08          	sub    $0x8,%rsp
  40eb7c:	e8 7f 24 ff ff       	callq  401000 <_init>
  40eb81:	48 c1 fd 03          	sar    $0x3,%rbp
  40eb85:	74 1f                	je     40eba6 <__libc_csu_init+0x56>
  40eb87:	31 db                	xor    %ebx,%ebx
  40eb89:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  40eb90:	4c 89 f2             	mov    %r14,%rdx
  40eb93:	4c 89 ee             	mov    %r13,%rsi
  40eb96:	44 89 e7             	mov    %r12d,%edi
  40eb99:	41 ff 14 df          	callq  *(%r15,%rbx,8)
  40eb9d:	48 83 c3 01          	add    $0x1,%rbx
  40eba1:	48 39 dd             	cmp    %rbx,%rbp
  40eba4:	75 ea                	jne    40eb90 <__libc_csu_init+0x40>
  40eba6:	48 83 c4 08          	add    $0x8,%rsp
  40ebaa:	5b                   	pop    %rbx
  40ebab:	5d                   	pop    %rbp
  40ebac:	41 5c                	pop    %r12
  40ebae:	41 5d                	pop    %r13
  40ebb0:	41 5e                	pop    %r14
  40ebb2:	41 5f                	pop    %r15
  40ebb4:	c3                   	retq   
  40ebb5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40ebbc:	00 00 00 00 

000000000040ebc0 <__libc_csu_fini>:
  40ebc0:	f3 0f 1e fa          	endbr64 
  40ebc4:	c3                   	retq   

Disassembly of section .fini:

000000000040ebc8 <_fini>:
  40ebc8:	f3 0f 1e fa          	endbr64 
  40ebcc:	48 83 ec 08          	sub    $0x8,%rsp
  40ebd0:	48 83 c4 08          	add    $0x8,%rsp
  40ebd4:	c3                   	retq   
