
test_g:     file format elf64-x86-64


Disassembly of section .text:

00000000006af3a0 <_start>:
  6af3a0:	f3 0f 1e fa          	endbr64 
  6af3a4:	31 ed                	xor    %ebp,%ebp
  6af3a6:	49 89 d1             	mov    %rdx,%r9
  6af3a9:	5e                   	pop    %rsi
  6af3aa:	48 89 e2             	mov    %rsp,%rdx
  6af3ad:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  6af3b1:	50                   	push   %rax
  6af3b2:	54                   	push   %rsp
  6af3b3:	4c 8d 05 46 01 00 00 	lea    0x146(%rip),%r8        # 6af500 <__libc_csu_fini>
  6af3ba:	48 8d 0d cf 00 00 00 	lea    0xcf(%rip),%rcx        # 6af490 <__libc_csu_init>
  6af3c1:	48 8d 3d 88 ba 00 00 	lea    0xba88(%rip),%rdi        # 6bae50 <main>
  6af3c8:	ff 15 82 d8 00 00    	callq  *0xd882(%rip)        # 6bcc50 <__libc_start_main@GLIBC_2.2.5>
  6af3ce:	f4                   	hlt    
  6af3cf:	90                   	nop

00000000006af3d0 <_dl_relocate_static_pie>:
  6af3d0:	f3 0f 1e fa          	endbr64 
  6af3d4:	c3                   	retq   
  6af3d5:	cc                   	int3   
  6af3d6:	cc                   	int3   
  6af3d7:	cc                   	int3   
  6af3d8:	cc                   	int3   
  6af3d9:	cc                   	int3   
  6af3da:	cc                   	int3   
  6af3db:	cc                   	int3   
  6af3dc:	cc                   	int3   
  6af3dd:	cc                   	int3   
  6af3de:	cc                   	int3   
  6af3df:	cc                   	int3   

00000000006af3e0 <deregister_tm_clones>:
  6af3e0:	b8 b8 b2 6c 00       	mov    $0x6cb2b8,%eax
  6af3e5:	48 3d b8 b2 6c 00    	cmp    $0x6cb2b8,%rax
  6af3eb:	74 13                	je     6af400 <deregister_tm_clones+0x20>
  6af3ed:	b8 00 00 00 00       	mov    $0x0,%eax
  6af3f2:	48 85 c0             	test   %rax,%rax
  6af3f5:	74 09                	je     6af400 <deregister_tm_clones+0x20>
  6af3f7:	bf b8 b2 6c 00       	mov    $0x6cb2b8,%edi
  6af3fc:	ff e0                	jmpq   *%rax
  6af3fe:	66 90                	xchg   %ax,%ax
  6af400:	c3                   	retq   
  6af401:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  6af408:	00 00 00 00 
  6af40c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000006af410 <register_tm_clones>:
  6af410:	be b8 b2 6c 00       	mov    $0x6cb2b8,%esi
  6af415:	48 81 ee b8 b2 6c 00 	sub    $0x6cb2b8,%rsi
  6af41c:	48 89 f0             	mov    %rsi,%rax
  6af41f:	48 c1 ee 3f          	shr    $0x3f,%rsi
  6af423:	48 c1 f8 03          	sar    $0x3,%rax
  6af427:	48 01 c6             	add    %rax,%rsi
  6af42a:	48 d1 fe             	sar    %rsi
  6af42d:	74 11                	je     6af440 <register_tm_clones+0x30>
  6af42f:	b8 00 00 00 00       	mov    $0x0,%eax
  6af434:	48 85 c0             	test   %rax,%rax
  6af437:	74 07                	je     6af440 <register_tm_clones+0x30>
  6af439:	bf b8 b2 6c 00       	mov    $0x6cb2b8,%edi
  6af43e:	ff e0                	jmpq   *%rax
  6af440:	c3                   	retq   
  6af441:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  6af448:	00 00 00 00 
  6af44c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000006af450 <__do_global_dtors_aux>:
  6af450:	f3 0f 1e fa          	endbr64 
  6af454:	80 3d 25 bf 01 00 00 	cmpb   $0x0,0x1bf25(%rip)        # 6cb380 <completed.8061>
  6af45b:	75 13                	jne    6af470 <__do_global_dtors_aux+0x20>
  6af45d:	55                   	push   %rbp
  6af45e:	48 89 e5             	mov    %rsp,%rbp
  6af461:	e8 7a ff ff ff       	callq  6af3e0 <deregister_tm_clones>
  6af466:	c6 05 13 bf 01 00 01 	movb   $0x1,0x1bf13(%rip)        # 6cb380 <completed.8061>
  6af46d:	5d                   	pop    %rbp
  6af46e:	c3                   	retq   
  6af46f:	90                   	nop
  6af470:	c3                   	retq   
  6af471:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  6af478:	00 00 00 00 
  6af47c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000006af480 <frame_dummy>:
  6af480:	f3 0f 1e fa          	endbr64 
  6af484:	eb 8a                	jmp    6af410 <register_tm_clones>
  6af486:	cc                   	int3   
  6af487:	cc                   	int3   
  6af488:	cc                   	int3   
  6af489:	cc                   	int3   
  6af48a:	cc                   	int3   
  6af48b:	cc                   	int3   
  6af48c:	cc                   	int3   
  6af48d:	cc                   	int3   
  6af48e:	cc                   	int3   
  6af48f:	cc                   	int3   

00000000006af490 <__libc_csu_init>:
  6af490:	f3 0f 1e fa          	endbr64 
  6af494:	41 57                	push   %r15
  6af496:	4c 8d 3d 2b d6 00 00 	lea    0xd62b(%rip),%r15        # 6bcac8 <__frame_dummy_init_array_entry>
  6af49d:	41 56                	push   %r14
  6af49f:	49 89 d6             	mov    %rdx,%r14
  6af4a2:	41 55                	push   %r13
  6af4a4:	49 89 f5             	mov    %rsi,%r13
  6af4a7:	41 54                	push   %r12
  6af4a9:	41 89 fc             	mov    %edi,%r12d
  6af4ac:	55                   	push   %rbp
  6af4ad:	48 8d 2d 1c d6 00 00 	lea    0xd61c(%rip),%rbp        # 6bcad0 <_DYNAMIC>
  6af4b4:	53                   	push   %rbx
  6af4b5:	4c 29 fd             	sub    %r15,%rbp
  6af4b8:	48 83 ec 08          	sub    $0x8,%rsp
  6af4bc:	e8 87 c4 00 00       	callq  6bb948 <_init>
  6af4c1:	48 c1 fd 03          	sar    $0x3,%rbp
  6af4c5:	74 1f                	je     6af4e6 <__libc_csu_init+0x56>
  6af4c7:	31 db                	xor    %ebx,%ebx
  6af4c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  6af4d0:	4c 89 f2             	mov    %r14,%rdx
  6af4d3:	4c 89 ee             	mov    %r13,%rsi
  6af4d6:	44 89 e7             	mov    %r12d,%edi
  6af4d9:	41 ff 14 df          	callq  *(%r15,%rbx,8)
  6af4dd:	48 83 c3 01          	add    $0x1,%rbx
  6af4e1:	48 39 dd             	cmp    %rbx,%rbp
  6af4e4:	75 ea                	jne    6af4d0 <__libc_csu_init+0x40>
  6af4e6:	48 83 c4 08          	add    $0x8,%rsp
  6af4ea:	5b                   	pop    %rbx
  6af4eb:	5d                   	pop    %rbp
  6af4ec:	41 5c                	pop    %r12
  6af4ee:	41 5d                	pop    %r13
  6af4f0:	41 5e                	pop    %r14
  6af4f2:	41 5f                	pop    %r15
  6af4f4:	c3                   	retq   
  6af4f5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  6af4fc:	00 00 00 00 

00000000006af500 <__libc_csu_fini>:
  6af500:	f3 0f 1e fa          	endbr64 
  6af504:	c3                   	retq   
  6af505:	cc                   	int3   
  6af506:	cc                   	int3   
  6af507:	cc                   	int3   
  6af508:	cc                   	int3   
  6af509:	cc                   	int3   
  6af50a:	cc                   	int3   
  6af50b:	cc                   	int3   
  6af50c:	cc                   	int3   
  6af50d:	cc                   	int3   
  6af50e:	cc                   	int3   
  6af50f:	cc                   	int3   

00000000006af510 <http_parser_execute>:
  6af510:	55                   	push   %rbp
  6af511:	48 89 e5             	mov    %rsp,%rbp
  6af514:	48 81 ec f0 00 00 00 	sub    $0xf0,%rsp
  6af51b:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
  6af51f:	48 89 75 c8          	mov    %rsi,-0x38(%rbp)
  6af523:	48 89 55 c0          	mov    %rdx,-0x40(%rbp)
  6af527:	48 89 4d 88          	mov    %rcx,-0x78(%rbp)
  6af52b:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  6af52f:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  6af533:	48 c7 45 80 00 00 00 	movq   $0x0,-0x80(%rbp)
  6af53a:	00 
  6af53b:	48 c7 45 a8 00 00 00 	movq   $0x0,-0x58(%rbp)
  6af542:	00 
  6af543:	48 c7 45 90 00 00 00 	movq   $0x0,-0x70(%rbp)
  6af54a:	00 
  6af54b:	48 c7 45 a0 00 00 00 	movq   $0x0,-0x60(%rbp)
  6af552:	00 
  6af553:	48 c7 45 98 00 00 00 	movq   $0x0,-0x68(%rbp)
  6af55a:	00 
  6af55b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6af55f:	8b 00                	mov    (%rax),%eax
  6af561:	c1 e8 0a             	shr    $0xa,%eax
  6af564:	83 e0 7f             	and    $0x7f,%eax
  6af567:	89 45 ec             	mov    %eax,-0x14(%rbp)
  6af56a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6af56e:	8b 00                	mov    (%rax),%eax
  6af570:	c1 e8 1f             	shr    $0x1f,%eax
  6af573:	89 85 7c ff ff ff    	mov    %eax,-0x84(%rbp)
  6af579:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6af57d:	8b 00                	mov    (%rax),%eax
  6af57f:	c1 e8 1e             	shr    $0x1e,%eax
  6af582:	83 e0 01             	and    $0x1,%eax
  6af585:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%rbp)
  6af58b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6af58f:	8b 40 04             	mov    0x4(%rax),%eax
  6af592:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  6af595:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6af599:	8b 40 14             	mov    0x14(%rax),%eax
  6af59c:	c1 e8 18             	shr    $0x18,%eax
  6af59f:	83 e0 7f             	and    $0x7f,%eax
  6af5a2:	83 f8 00             	cmp    $0x0,%eax
  6af5a5:	74 0d                	je     6af5b4 <http_parser_execute+0xa4>
  6af5a7:	48 c7 45 b0 00 00 00 	movq   $0x0,-0x50(%rbp)
  6af5ae:	00 
  6af5af:	e9 46 5c 00 00       	jmpq   6b51fa <http_parser_execute+0x5cea>
  6af5b4:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  6af5b9:	0f 85 b7 01 00 00    	jne    6af776 <http_parser_execute+0x266>
  6af5bf:	8b 45 ec             	mov    -0x14(%rbp),%eax
  6af5c2:	89 c1                	mov    %eax,%ecx
  6af5c4:	83 c1 ff             	add    $0xffffffff,%ecx
  6af5c7:	83 e9 02             	sub    $0x2,%ecx
  6af5ca:	0f 82 6a 01 00 00    	jb     6af73a <http_parser_execute+0x22a>
  6af5d0:	eb 00                	jmp    6af5d2 <http_parser_execute+0xc2>
  6af5d2:	89 c1                	mov    %eax,%ecx
  6af5d4:	83 e9 04             	sub    $0x4,%ecx
  6af5d7:	0f 84 5d 01 00 00    	je     6af73a <http_parser_execute+0x22a>
  6af5dd:	eb 00                	jmp    6af5df <http_parser_execute+0xcf>
  6af5df:	89 c1                	mov    %eax,%ecx
  6af5e1:	83 e9 12             	sub    $0x12,%ecx
  6af5e4:	0f 84 50 01 00 00    	je     6af73a <http_parser_execute+0x22a>
  6af5ea:	eb 00                	jmp    6af5ec <http_parser_execute+0xdc>
  6af5ec:	83 e8 3f             	sub    $0x3f,%eax
  6af5ef:	0f 85 52 01 00 00    	jne    6af747 <http_parser_execute+0x237>
  6af5f5:	eb 00                	jmp    6af5f7 <http_parser_execute+0xe7>
  6af5f7:	eb 00                	jmp    6af5f9 <http_parser_execute+0xe9>
  6af5f9:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6af5fd:	8b 40 14             	mov    0x14(%rax),%eax
  6af600:	c1 e8 18             	shr    $0x18,%eax
  6af603:	83 e0 7f             	and    $0x7f,%eax
  6af606:	83 f8 00             	cmp    $0x0,%eax
  6af609:	75 02                	jne    6af60d <http_parser_execute+0xfd>
  6af60b:	eb 28                	jmp    6af635 <http_parser_execute+0x125>
  6af60d:	48 bf 00 2e 20 00 00 	movabs $0x202e00,%rdi
  6af614:	00 00 00 
  6af617:	48 be f5 2b 20 00 00 	movabs $0x202bf5,%rsi
  6af61e:	00 00 00 
  6af621:	48 b9 37 6e 20 00 00 	movabs $0x206e37,%rcx
  6af628:	00 00 00 
  6af62b:	ba 9f 02 00 00       	mov    $0x29f,%edx
  6af630:	e8 5b c3 00 00       	callq  6bb990 <__assert_fail@plt>
  6af635:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6af639:	48 83 78 38 00       	cmpq   $0x0,0x38(%rax)
  6af63e:	0f 95 c0             	setne  %al
  6af641:	34 ff                	xor    $0xff,%al
  6af643:	34 ff                	xor    $0xff,%al
  6af645:	24 01                	and    $0x1,%al
  6af647:	0f b6 c0             	movzbl %al,%eax
  6af64a:	48 98                	cltq   
  6af64c:	48 83 f8 00          	cmp    $0x0,%rax
  6af650:	0f 84 d5 00 00 00    	je     6af72b <http_parser_execute+0x21b>
  6af656:	8b 45 ec             	mov    -0x14(%rbp),%eax
  6af659:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6af65d:	8b 11                	mov    (%rcx),%edx
  6af65f:	83 e0 7f             	and    $0x7f,%eax
  6af662:	c1 e0 0a             	shl    $0xa,%eax
  6af665:	81 e2 ff 03 fe ff    	and    $0xfffe03ff,%edx
  6af66b:	09 c2                	or     %eax,%edx
  6af66d:	89 11                	mov    %edx,(%rcx)
  6af66f:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6af673:	48 8b 40 38          	mov    0x38(%rax),%rax
  6af677:	48 b9 c0 b8 6b 00 00 	movabs $0x6bb8c0,%rcx
  6af67e:	00 00 00 
  6af681:	48 89 c2             	mov    %rax,%rdx
  6af684:	48 29 ca             	sub    %rcx,%rdx
  6af687:	48 89 d1             	mov    %rdx,%rcx
  6af68a:	48 c1 e9 03          	shr    $0x3,%rcx
  6af68e:	48 c1 e2 3d          	shl    $0x3d,%rdx
  6af692:	48 09 d1             	or     %rdx,%rcx
  6af695:	48 83 f9 10          	cmp    $0x10,%rcx
  6af699:	76 05                	jbe    6af6a0 <http_parser_execute+0x190>
  6af69b:	67 0f b9 40 02       	ud1    0x2(%eax),%eax
  6af6a0:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6af6a4:	ff d0                	callq  *%rax
  6af6a6:	31 c9                	xor    %ecx,%ecx
  6af6a8:	39 c1                	cmp    %eax,%ecx
  6af6aa:	0f 95 c0             	setne  %al
  6af6ad:	34 ff                	xor    $0xff,%al
  6af6af:	34 ff                	xor    $0xff,%al
  6af6b1:	24 01                	and    $0x1,%al
  6af6b3:	0f b6 c0             	movzbl %al,%eax
  6af6b6:	48 98                	cltq   
  6af6b8:	48 83 f8 00          	cmp    $0x0,%rax
  6af6bc:	74 24                	je     6af6e2 <http_parser_execute+0x1d2>
  6af6be:	eb 00                	jmp    6af6c0 <http_parser_execute+0x1b0>
  6af6c0:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6af6c3:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6af6c7:	89 41 04             	mov    %eax,0x4(%rcx)
  6af6ca:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6af6ce:	8b 48 14             	mov    0x14(%rax),%ecx
  6af6d1:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6af6d7:	81 c9 00 00 00 07    	or     $0x7000000,%ecx
  6af6dd:	89 48 14             	mov    %ecx,0x14(%rax)
  6af6e0:	eb 00                	jmp    6af6e2 <http_parser_execute+0x1d2>
  6af6e2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6af6e6:	8b 00                	mov    (%rax),%eax
  6af6e8:	c1 e8 0a             	shr    $0xa,%eax
  6af6eb:	83 e0 7f             	and    $0x7f,%eax
  6af6ee:	89 45 ec             	mov    %eax,-0x14(%rbp)
  6af6f1:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6af6f5:	8b 40 14             	mov    0x14(%rax),%eax
  6af6f8:	c1 e8 18             	shr    $0x18,%eax
  6af6fb:	83 e0 7f             	and    $0x7f,%eax
  6af6fe:	83 f8 00             	cmp    $0x0,%eax
  6af701:	0f 95 c0             	setne  %al
  6af704:	34 ff                	xor    $0xff,%al
  6af706:	34 ff                	xor    $0xff,%al
  6af708:	24 01                	and    $0x1,%al
  6af70a:	0f b6 c0             	movzbl %al,%eax
  6af70d:	48 98                	cltq   
  6af70f:	48 83 f8 00          	cmp    $0x0,%rax
  6af713:	74 14                	je     6af729 <http_parser_execute+0x219>
  6af715:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6af719:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  6af71d:	48 29 c8             	sub    %rcx,%rax
  6af720:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  6af724:	e9 d1 5a 00 00       	jmpq   6b51fa <http_parser_execute+0x5cea>
  6af729:	eb 00                	jmp    6af72b <http_parser_execute+0x21b>
  6af72b:	eb 00                	jmp    6af72d <http_parser_execute+0x21d>
  6af72d:	48 c7 45 b0 00 00 00 	movq   $0x0,-0x50(%rbp)
  6af734:	00 
  6af735:	e9 c0 5a 00 00       	jmpq   6b51fa <http_parser_execute+0x5cea>
  6af73a:	48 c7 45 b0 00 00 00 	movq   $0x0,-0x50(%rbp)
  6af741:	00 
  6af742:	e9 b3 5a 00 00       	jmpq   6b51fa <http_parser_execute+0x5cea>
  6af747:	eb 00                	jmp    6af749 <http_parser_execute+0x239>
  6af749:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6af74c:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6af750:	89 41 04             	mov    %eax,0x4(%rcx)
  6af753:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6af757:	8b 48 14             	mov    0x14(%rax),%ecx
  6af75a:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6af760:	81 c9 00 00 00 0b    	or     $0xb000000,%ecx
  6af766:	89 48 14             	mov    %ecx,0x14(%rax)
  6af769:	48 c7 45 b0 01 00 00 	movq   $0x1,-0x50(%rbp)
  6af770:	00 
  6af771:	e9 84 5a 00 00       	jmpq   6b51fa <http_parser_execute+0x5cea>
  6af776:	83 7d ec 2d          	cmpl   $0x2d,-0x14(%rbp)
  6af77a:	75 08                	jne    6af784 <http_parser_execute+0x274>
  6af77c:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  6af780:	48 89 45 80          	mov    %rax,-0x80(%rbp)
  6af784:	83 7d ec 32          	cmpl   $0x32,-0x14(%rbp)
  6af788:	75 08                	jne    6af792 <http_parser_execute+0x282>
  6af78a:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  6af78e:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  6af792:	8b 45 ec             	mov    -0x14(%rbp),%eax
  6af795:	89 c1                	mov    %eax,%ecx
  6af797:	83 e9 10             	sub    $0x10,%ecx
  6af79a:	74 16                	je     6af7b2 <http_parser_execute+0x2a2>
  6af79c:	eb 00                	jmp    6af79e <http_parser_execute+0x28e>
  6af79e:	83 c0 eb             	add    $0xffffffeb,%eax
  6af7a1:	83 e8 0a             	sub    $0xa,%eax
  6af7a4:	77 16                	ja     6af7bc <http_parser_execute+0x2ac>
  6af7a6:	eb 00                	jmp    6af7a8 <http_parser_execute+0x298>
  6af7a8:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  6af7ac:	48 89 45 90          	mov    %rax,-0x70(%rbp)
  6af7b0:	eb 0c                	jmp    6af7be <http_parser_execute+0x2ae>
  6af7b2:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  6af7b6:	48 89 45 98          	mov    %rax,-0x68(%rbp)
  6af7ba:	eb 02                	jmp    6af7be <http_parser_execute+0x2ae>
  6af7bc:	eb 00                	jmp    6af7be <http_parser_execute+0x2ae>
  6af7be:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  6af7c2:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  6af7c6:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6af7ca:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  6af7ce:	48 03 4d 88          	add    -0x78(%rbp),%rcx
  6af7d2:	48 39 c8             	cmp    %rcx,%rax
  6af7d5:	0f 84 3d 52 00 00    	je     6b4a18 <http_parser_execute+0x5508>
  6af7db:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6af7df:	8a 00                	mov    (%rax),%al
  6af7e1:	88 45 ff             	mov    %al,-0x1(%rbp)
  6af7e4:	83 7d ec 3a          	cmpl   $0x3a,-0x14(%rbp)
  6af7e8:	77 54                	ja     6af83e <http_parser_execute+0x32e>
  6af7ea:	eb 00                	jmp    6af7ec <http_parser_execute+0x2dc>
  6af7ec:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6af7ef:	83 c0 01             	add    $0x1,%eax
  6af7f2:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  6af7f5:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6af7f8:	3b 04 25 70 dc 6b 00 	cmp    0x6bdc70,%eax
  6af7ff:	0f 97 c0             	seta   %al
  6af802:	34 ff                	xor    $0xff,%al
  6af804:	34 ff                	xor    $0xff,%al
  6af806:	24 01                	and    $0x1,%al
  6af808:	0f b6 c0             	movzbl %al,%eax
  6af80b:	48 98                	cltq   
  6af80d:	48 83 f8 00          	cmp    $0x0,%rax
  6af811:	74 27                	je     6af83a <http_parser_execute+0x32a>
  6af813:	eb 00                	jmp    6af815 <http_parser_execute+0x305>
  6af815:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6af818:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6af81c:	89 41 04             	mov    %eax,0x4(%rcx)
  6af81f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6af823:	8b 48 14             	mov    0x14(%rax),%ecx
  6af826:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6af82c:	81 c9 00 00 00 0c    	or     $0xc000000,%ecx
  6af832:	89 48 14             	mov    %ecx,0x14(%rax)
  6af835:	e9 56 59 00 00       	jmpq   6b5190 <http_parser_execute+0x5c80>
  6af83a:	eb 00                	jmp    6af83c <http_parser_execute+0x32c>
  6af83c:	eb 00                	jmp    6af83e <http_parser_execute+0x32e>
  6af83e:	eb 00                	jmp    6af840 <http_parser_execute+0x330>
  6af840:	8b 45 ec             	mov    -0x14(%rbp),%eax
  6af843:	83 c0 ff             	add    $0xffffffff,%eax
  6af846:	89 c1                	mov    %eax,%ecx
  6af848:	83 e9 3f             	sub    $0x3f,%ecx
  6af84b:	0f 87 8c 51 00 00    	ja     6b49dd <http_parser_execute+0x54cd>
  6af851:	48 8b 04 c5 28 09 20 	mov    0x200928(,%rax,8),%rax
  6af858:	00 
  6af859:	ff e0                	jmpq   *%rax
  6af85b:	0f be 4d ff          	movsbl -0x1(%rbp),%ecx
  6af85f:	b0 01                	mov    $0x1,%al
  6af861:	83 f9 0d             	cmp    $0xd,%ecx
  6af864:	74 0a                	je     6af870 <http_parser_execute+0x360>
  6af866:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6af86a:	83 f8 0a             	cmp    $0xa,%eax
  6af86d:	0f 94 c0             	sete   %al
  6af870:	34 ff                	xor    $0xff,%al
  6af872:	34 ff                	xor    $0xff,%al
  6af874:	24 01                	and    $0x1,%al
  6af876:	0f b6 c0             	movzbl %al,%eax
  6af879:	48 98                	cltq   
  6af87b:	48 83 f8 00          	cmp    $0x0,%rax
  6af87f:	74 05                	je     6af886 <http_parser_execute+0x376>
  6af881:	e9 7f 51 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6af886:	eb 00                	jmp    6af888 <http_parser_execute+0x378>
  6af888:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6af88b:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6af88f:	89 41 04             	mov    %eax,0x4(%rcx)
  6af892:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6af896:	8b 48 14             	mov    0x14(%rax),%ecx
  6af899:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6af89f:	81 c9 00 00 00 0d    	or     $0xd000000,%ecx
  6af8a5:	89 48 14             	mov    %ecx,0x14(%rax)
  6af8a8:	e9 e3 58 00 00       	jmpq   6b5190 <http_parser_execute+0x5c80>
  6af8ad:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6af8b1:	83 f8 0d             	cmp    $0xd,%eax
  6af8b4:	74 09                	je     6af8bf <http_parser_execute+0x3af>
  6af8b6:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6af8ba:	83 f8 0a             	cmp    $0xa,%eax
  6af8bd:	75 05                	jne    6af8c4 <http_parser_execute+0x3b4>
  6af8bf:	e9 41 51 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6af8c4:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6af8c8:	8b 08                	mov    (%rax),%ecx
  6af8ca:	81 e1 03 fc ff ff    	and    $0xfffffc03,%ecx
  6af8d0:	83 c9 00             	or     $0x0,%ecx
  6af8d3:	89 08                	mov    %ecx,(%rax)
  6af8d5:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6af8d9:	8b 08                	mov    (%rax),%ecx
  6af8db:	81 e1 ff ff ff df    	and    $0xdfffffff,%ecx
  6af8e1:	83 c9 00             	or     $0x0,%ecx
  6af8e4:	89 08                	mov    %ecx,(%rax)
  6af8e6:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6af8ea:	48 c7 40 08 ff ff ff 	movq   $0xffffffffffffffff,0x8(%rax)
  6af8f1:	ff 
  6af8f2:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6af8f6:	83 f8 48             	cmp    $0x48,%eax
  6af8f9:	0f 85 3f 01 00 00    	jne    6afa3e <http_parser_execute+0x52e>
  6af8ff:	c7 45 ec 03 00 00 00 	movl   $0x3,-0x14(%rbp)
  6af906:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6af90a:	8b 40 14             	mov    0x14(%rax),%eax
  6af90d:	c1 e8 18             	shr    $0x18,%eax
  6af910:	83 e0 7f             	and    $0x7f,%eax
  6af913:	83 f8 00             	cmp    $0x0,%eax
  6af916:	75 02                	jne    6af91a <http_parser_execute+0x40a>
  6af918:	eb 28                	jmp    6af942 <http_parser_execute+0x432>
  6af91a:	48 bf 00 2e 20 00 00 	movabs $0x202e00,%rdi
  6af921:	00 00 00 
  6af924:	48 be f5 2b 20 00 00 	movabs $0x202bf5,%rsi
  6af92b:	00 00 00 
  6af92e:	48 b9 37 6e 20 00 00 	movabs $0x206e37,%rcx
  6af935:	00 00 00 
  6af938:	ba e6 02 00 00       	mov    $0x2e6,%edx
  6af93d:	e8 4e c0 00 00       	callq  6bb990 <__assert_fail@plt>
  6af942:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6af946:	48 83 38 00          	cmpq   $0x0,(%rax)
  6af94a:	0f 95 c0             	setne  %al
  6af94d:	34 ff                	xor    $0xff,%al
  6af94f:	34 ff                	xor    $0xff,%al
  6af951:	24 01                	and    $0x1,%al
  6af953:	0f b6 c0             	movzbl %al,%eax
  6af956:	48 98                	cltq   
  6af958:	48 83 f8 00          	cmp    $0x0,%rax
  6af95c:	0f 84 d8 00 00 00    	je     6afa3a <http_parser_execute+0x52a>
  6af962:	8b 45 ec             	mov    -0x14(%rbp),%eax
  6af965:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6af969:	8b 11                	mov    (%rcx),%edx
  6af96b:	83 e0 7f             	and    $0x7f,%eax
  6af96e:	c1 e0 0a             	shl    $0xa,%eax
  6af971:	81 e2 ff 03 fe ff    	and    $0xfffe03ff,%edx
  6af977:	09 c2                	or     %eax,%edx
  6af979:	89 11                	mov    %edx,(%rcx)
  6af97b:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6af97f:	48 8b 08             	mov    (%rax),%rcx
  6af982:	48 b8 c0 b8 6b 00 00 	movabs $0x6bb8c0,%rax
  6af989:	00 00 00 
  6af98c:	48 89 ca             	mov    %rcx,%rdx
  6af98f:	48 29 c2             	sub    %rax,%rdx
  6af992:	48 89 d0             	mov    %rdx,%rax
  6af995:	48 c1 e8 03          	shr    $0x3,%rax
  6af999:	48 c1 e2 3d          	shl    $0x3d,%rdx
  6af99d:	48 09 d0             	or     %rdx,%rax
  6af9a0:	48 83 f8 10          	cmp    $0x10,%rax
  6af9a4:	76 05                	jbe    6af9ab <http_parser_execute+0x49b>
  6af9a6:	67 0f b9 40 02       	ud1    0x2(%eax),%eax
  6af9ab:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6af9af:	ff d1                	callq  *%rcx
  6af9b1:	31 c9                	xor    %ecx,%ecx
  6af9b3:	39 c1                	cmp    %eax,%ecx
  6af9b5:	0f 95 c0             	setne  %al
  6af9b8:	34 ff                	xor    $0xff,%al
  6af9ba:	34 ff                	xor    $0xff,%al
  6af9bc:	24 01                	and    $0x1,%al
  6af9be:	0f b6 c0             	movzbl %al,%eax
  6af9c1:	48 98                	cltq   
  6af9c3:	48 83 f8 00          	cmp    $0x0,%rax
  6af9c7:	74 24                	je     6af9ed <http_parser_execute+0x4dd>
  6af9c9:	eb 00                	jmp    6af9cb <http_parser_execute+0x4bb>
  6af9cb:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6af9ce:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6af9d2:	89 41 04             	mov    %eax,0x4(%rcx)
  6af9d5:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6af9d9:	8b 48 14             	mov    0x14(%rax),%ecx
  6af9dc:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6af9e2:	81 c9 00 00 00 01    	or     $0x1000000,%ecx
  6af9e8:	89 48 14             	mov    %ecx,0x14(%rax)
  6af9eb:	eb 00                	jmp    6af9ed <http_parser_execute+0x4dd>
  6af9ed:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6af9f1:	8b 00                	mov    (%rax),%eax
  6af9f3:	c1 e8 0a             	shr    $0xa,%eax
  6af9f6:	83 e0 7f             	and    $0x7f,%eax
  6af9f9:	89 45 ec             	mov    %eax,-0x14(%rbp)
  6af9fc:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6afa00:	8b 40 14             	mov    0x14(%rax),%eax
  6afa03:	c1 e8 18             	shr    $0x18,%eax
  6afa06:	83 e0 7f             	and    $0x7f,%eax
  6afa09:	83 f8 00             	cmp    $0x0,%eax
  6afa0c:	0f 95 c0             	setne  %al
  6afa0f:	34 ff                	xor    $0xff,%al
  6afa11:	34 ff                	xor    $0xff,%al
  6afa13:	24 01                	and    $0x1,%al
  6afa15:	0f b6 c0             	movzbl %al,%eax
  6afa18:	48 98                	cltq   
  6afa1a:	48 83 f8 00          	cmp    $0x0,%rax
  6afa1e:	74 18                	je     6afa38 <http_parser_execute+0x528>
  6afa20:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6afa24:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  6afa28:	48 29 c8             	sub    %rcx,%rax
  6afa2b:	48 83 c0 01          	add    $0x1,%rax
  6afa2f:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  6afa33:	e9 c2 57 00 00       	jmpq   6b51fa <http_parser_execute+0x5cea>
  6afa38:	eb 00                	jmp    6afa3a <http_parser_execute+0x52a>
  6afa3a:	eb 00                	jmp    6afa3c <http_parser_execute+0x52c>
  6afa3c:	eb 1a                	jmp    6afa58 <http_parser_execute+0x548>
  6afa3e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6afa42:	8b 08                	mov    (%rax),%ecx
  6afa44:	83 e1 fc             	and    $0xfffffffc,%ecx
  6afa47:	83 c9 00             	or     $0x0,%ecx
  6afa4a:	89 08                	mov    %ecx,(%rax)
  6afa4c:	c7 45 ec 12 00 00 00 	movl   $0x12,-0x14(%rbp)
  6afa53:	e9 e8 fd ff ff       	jmpq   6af840 <http_parser_execute+0x330>
  6afa58:	e9 a8 4f 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6afa5d:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6afa61:	83 f8 54             	cmp    $0x54,%eax
  6afa64:	75 1a                	jne    6afa80 <http_parser_execute+0x570>
  6afa66:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6afa6a:	8b 08                	mov    (%rax),%ecx
  6afa6c:	83 e1 fc             	and    $0xfffffffc,%ecx
  6afa6f:	83 c9 01             	or     $0x1,%ecx
  6afa72:	89 08                	mov    %ecx,(%rax)
  6afa74:	c7 45 ec 06 00 00 00 	movl   $0x6,-0x14(%rbp)
  6afa7b:	e9 81 00 00 00       	jmpq   6afb01 <http_parser_execute+0x5f1>
  6afa80:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6afa84:	83 f8 45             	cmp    $0x45,%eax
  6afa87:	0f 95 c0             	setne  %al
  6afa8a:	34 ff                	xor    $0xff,%al
  6afa8c:	34 ff                	xor    $0xff,%al
  6afa8e:	24 01                	and    $0x1,%al
  6afa90:	0f b6 c0             	movzbl %al,%eax
  6afa93:	48 98                	cltq   
  6afa95:	48 83 f8 00          	cmp    $0x0,%rax
  6afa99:	74 27                	je     6afac2 <http_parser_execute+0x5b2>
  6afa9b:	eb 00                	jmp    6afa9d <http_parser_execute+0x58d>
  6afa9d:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6afaa0:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6afaa4:	89 41 04             	mov    %eax,0x4(%rcx)
  6afaa7:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6afaab:	8b 48 14             	mov    0x14(%rax),%ecx
  6afaae:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6afab4:	81 c9 00 00 00 1c    	or     $0x1c000000,%ecx
  6afaba:	89 48 14             	mov    %ecx,0x14(%rax)
  6afabd:	e9 ce 56 00 00       	jmpq   6b5190 <http_parser_execute+0x5c80>
  6afac2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6afac6:	8b 08                	mov    (%rax),%ecx
  6afac8:	83 e1 fc             	and    $0xfffffffc,%ecx
  6afacb:	83 c9 00             	or     $0x0,%ecx
  6aface:	89 08                	mov    %ecx,(%rax)
  6afad0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6afad4:	8b 48 14             	mov    0x14(%rax),%ecx
  6afad7:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  6afadd:	81 c9 00 00 02 00    	or     $0x20000,%ecx
  6afae3:	89 48 14             	mov    %ecx,0x14(%rax)
  6afae6:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6afaea:	8b 08                	mov    (%rax),%ecx
  6afaec:	81 e1 ff ff ff e0    	and    $0xe0ffffff,%ecx
  6afaf2:	81 c9 00 00 00 02    	or     $0x2000000,%ecx
  6afaf8:	89 08                	mov    %ecx,(%rax)
  6afafa:	c7 45 ec 13 00 00 00 	movl   $0x13,-0x14(%rbp)
  6afb01:	e9 ff 4e 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6afb06:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6afb0a:	83 f8 0d             	cmp    $0xd,%eax
  6afb0d:	74 09                	je     6afb18 <http_parser_execute+0x608>
  6afb0f:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6afb13:	83 f8 0a             	cmp    $0xa,%eax
  6afb16:	75 05                	jne    6afb1d <http_parser_execute+0x60d>
  6afb18:	e9 e8 4e 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6afb1d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6afb21:	8b 08                	mov    (%rax),%ecx
  6afb23:	81 e1 03 fc ff ff    	and    $0xfffffc03,%ecx
  6afb29:	83 c9 00             	or     $0x0,%ecx
  6afb2c:	89 08                	mov    %ecx,(%rax)
  6afb2e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6afb32:	8b 08                	mov    (%rax),%ecx
  6afb34:	81 e1 ff ff ff df    	and    $0xdfffffff,%ecx
  6afb3a:	83 c9 00             	or     $0x0,%ecx
  6afb3d:	89 08                	mov    %ecx,(%rax)
  6afb3f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6afb43:	48 c7 40 08 ff ff ff 	movq   $0xffffffffffffffff,0x8(%rax)
  6afb4a:	ff 
  6afb4b:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6afb4f:	83 f8 48             	cmp    $0x48,%eax
  6afb52:	75 09                	jne    6afb5d <http_parser_execute+0x64d>
  6afb54:	c7 45 ec 05 00 00 00 	movl   $0x5,-0x14(%rbp)
  6afb5b:	eb 27                	jmp    6afb84 <http_parser_execute+0x674>
  6afb5d:	eb 00                	jmp    6afb5f <http_parser_execute+0x64f>
  6afb5f:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6afb62:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6afb66:	89 41 04             	mov    %eax,0x4(%rcx)
  6afb69:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6afb6d:	8b 48 14             	mov    0x14(%rax),%ecx
  6afb70:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6afb76:	81 c9 00 00 00 1c    	or     $0x1c000000,%ecx
  6afb7c:	89 48 14             	mov    %ecx,0x14(%rax)
  6afb7f:	e9 0c 56 00 00       	jmpq   6b5190 <http_parser_execute+0x5c80>
  6afb84:	eb 00                	jmp    6afb86 <http_parser_execute+0x676>
  6afb86:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6afb8a:	8b 40 14             	mov    0x14(%rax),%eax
  6afb8d:	c1 e8 18             	shr    $0x18,%eax
  6afb90:	83 e0 7f             	and    $0x7f,%eax
  6afb93:	83 f8 00             	cmp    $0x0,%eax
  6afb96:	75 02                	jne    6afb9a <http_parser_execute+0x68a>
  6afb98:	eb 28                	jmp    6afbc2 <http_parser_execute+0x6b2>
  6afb9a:	48 bf 00 2e 20 00 00 	movabs $0x202e00,%rdi
  6afba1:	00 00 00 
  6afba4:	48 be f5 2b 20 00 00 	movabs $0x202bf5,%rsi
  6afbab:	00 00 00 
  6afbae:	48 b9 37 6e 20 00 00 	movabs $0x206e37,%rcx
  6afbb5:	00 00 00 
  6afbb8:	ba 10 03 00 00       	mov    $0x310,%edx
  6afbbd:	e8 ce bd 00 00       	callq  6bb990 <__assert_fail@plt>
  6afbc2:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6afbc6:	48 83 38 00          	cmpq   $0x0,(%rax)
  6afbca:	0f 95 c0             	setne  %al
  6afbcd:	34 ff                	xor    $0xff,%al
  6afbcf:	34 ff                	xor    $0xff,%al
  6afbd1:	24 01                	and    $0x1,%al
  6afbd3:	0f b6 c0             	movzbl %al,%eax
  6afbd6:	48 98                	cltq   
  6afbd8:	48 83 f8 00          	cmp    $0x0,%rax
  6afbdc:	0f 84 d8 00 00 00    	je     6afcba <http_parser_execute+0x7aa>
  6afbe2:	8b 45 ec             	mov    -0x14(%rbp),%eax
  6afbe5:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6afbe9:	8b 11                	mov    (%rcx),%edx
  6afbeb:	83 e0 7f             	and    $0x7f,%eax
  6afbee:	c1 e0 0a             	shl    $0xa,%eax
  6afbf1:	81 e2 ff 03 fe ff    	and    $0xfffe03ff,%edx
  6afbf7:	09 c2                	or     %eax,%edx
  6afbf9:	89 11                	mov    %edx,(%rcx)
  6afbfb:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6afbff:	48 8b 08             	mov    (%rax),%rcx
  6afc02:	48 b8 c0 b8 6b 00 00 	movabs $0x6bb8c0,%rax
  6afc09:	00 00 00 
  6afc0c:	48 89 ca             	mov    %rcx,%rdx
  6afc0f:	48 29 c2             	sub    %rax,%rdx
  6afc12:	48 89 d0             	mov    %rdx,%rax
  6afc15:	48 c1 e8 03          	shr    $0x3,%rax
  6afc19:	48 c1 e2 3d          	shl    $0x3d,%rdx
  6afc1d:	48 09 d0             	or     %rdx,%rax
  6afc20:	48 83 f8 10          	cmp    $0x10,%rax
  6afc24:	76 05                	jbe    6afc2b <http_parser_execute+0x71b>
  6afc26:	67 0f b9 40 02       	ud1    0x2(%eax),%eax
  6afc2b:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6afc2f:	ff d1                	callq  *%rcx
  6afc31:	31 c9                	xor    %ecx,%ecx
  6afc33:	39 c1                	cmp    %eax,%ecx
  6afc35:	0f 95 c0             	setne  %al
  6afc38:	34 ff                	xor    $0xff,%al
  6afc3a:	34 ff                	xor    $0xff,%al
  6afc3c:	24 01                	and    $0x1,%al
  6afc3e:	0f b6 c0             	movzbl %al,%eax
  6afc41:	48 98                	cltq   
  6afc43:	48 83 f8 00          	cmp    $0x0,%rax
  6afc47:	74 24                	je     6afc6d <http_parser_execute+0x75d>
  6afc49:	eb 00                	jmp    6afc4b <http_parser_execute+0x73b>
  6afc4b:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6afc4e:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6afc52:	89 41 04             	mov    %eax,0x4(%rcx)
  6afc55:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6afc59:	8b 48 14             	mov    0x14(%rax),%ecx
  6afc5c:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6afc62:	81 c9 00 00 00 01    	or     $0x1000000,%ecx
  6afc68:	89 48 14             	mov    %ecx,0x14(%rax)
  6afc6b:	eb 00                	jmp    6afc6d <http_parser_execute+0x75d>
  6afc6d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6afc71:	8b 00                	mov    (%rax),%eax
  6afc73:	c1 e8 0a             	shr    $0xa,%eax
  6afc76:	83 e0 7f             	and    $0x7f,%eax
  6afc79:	89 45 ec             	mov    %eax,-0x14(%rbp)
  6afc7c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6afc80:	8b 40 14             	mov    0x14(%rax),%eax
  6afc83:	c1 e8 18             	shr    $0x18,%eax
  6afc86:	83 e0 7f             	and    $0x7f,%eax
  6afc89:	83 f8 00             	cmp    $0x0,%eax
  6afc8c:	0f 95 c0             	setne  %al
  6afc8f:	34 ff                	xor    $0xff,%al
  6afc91:	34 ff                	xor    $0xff,%al
  6afc93:	24 01                	and    $0x1,%al
  6afc95:	0f b6 c0             	movzbl %al,%eax
  6afc98:	48 98                	cltq   
  6afc9a:	48 83 f8 00          	cmp    $0x0,%rax
  6afc9e:	74 18                	je     6afcb8 <http_parser_execute+0x7a8>
  6afca0:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6afca4:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  6afca8:	48 29 c8             	sub    %rcx,%rax
  6afcab:	48 83 c0 01          	add    $0x1,%rax
  6afcaf:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  6afcb3:	e9 42 55 00 00       	jmpq   6b51fa <http_parser_execute+0x5cea>
  6afcb8:	eb 00                	jmp    6afcba <http_parser_execute+0x7aa>
  6afcba:	eb 00                	jmp    6afcbc <http_parser_execute+0x7ac>
  6afcbc:	e9 44 4d 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6afcc1:	eb 00                	jmp    6afcc3 <http_parser_execute+0x7b3>
  6afcc3:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6afcc7:	83 f8 54             	cmp    $0x54,%eax
  6afcca:	74 27                	je     6afcf3 <http_parser_execute+0x7e3>
  6afccc:	eb 00                	jmp    6afcce <http_parser_execute+0x7be>
  6afcce:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6afcd1:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6afcd5:	89 41 04             	mov    %eax,0x4(%rcx)
  6afcd8:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6afcdc:	8b 48 14             	mov    0x14(%rax),%ecx
  6afcdf:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6afce5:	81 c9 00 00 00 1e    	or     $0x1e000000,%ecx
  6afceb:	89 48 14             	mov    %ecx,0x14(%rax)
  6afcee:	e9 9d 54 00 00       	jmpq   6b5190 <http_parser_execute+0x5c80>
  6afcf3:	eb 00                	jmp    6afcf5 <http_parser_execute+0x7e5>
  6afcf5:	c7 45 ec 06 00 00 00 	movl   $0x6,-0x14(%rbp)
  6afcfc:	e9 04 4d 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6afd01:	eb 00                	jmp    6afd03 <http_parser_execute+0x7f3>
  6afd03:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6afd07:	83 f8 54             	cmp    $0x54,%eax
  6afd0a:	74 27                	je     6afd33 <http_parser_execute+0x823>
  6afd0c:	eb 00                	jmp    6afd0e <http_parser_execute+0x7fe>
  6afd0e:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6afd11:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6afd15:	89 41 04             	mov    %eax,0x4(%rcx)
  6afd18:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6afd1c:	8b 48 14             	mov    0x14(%rax),%ecx
  6afd1f:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6afd25:	81 c9 00 00 00 1e    	or     $0x1e000000,%ecx
  6afd2b:	89 48 14             	mov    %ecx,0x14(%rax)
  6afd2e:	e9 5d 54 00 00       	jmpq   6b5190 <http_parser_execute+0x5c80>
  6afd33:	eb 00                	jmp    6afd35 <http_parser_execute+0x825>
  6afd35:	c7 45 ec 07 00 00 00 	movl   $0x7,-0x14(%rbp)
  6afd3c:	e9 c4 4c 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6afd41:	eb 00                	jmp    6afd43 <http_parser_execute+0x833>
  6afd43:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6afd47:	83 f8 50             	cmp    $0x50,%eax
  6afd4a:	74 27                	je     6afd73 <http_parser_execute+0x863>
  6afd4c:	eb 00                	jmp    6afd4e <http_parser_execute+0x83e>
  6afd4e:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6afd51:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6afd55:	89 41 04             	mov    %eax,0x4(%rcx)
  6afd58:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6afd5c:	8b 48 14             	mov    0x14(%rax),%ecx
  6afd5f:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6afd65:	81 c9 00 00 00 1e    	or     $0x1e000000,%ecx
  6afd6b:	89 48 14             	mov    %ecx,0x14(%rax)
  6afd6e:	e9 1d 54 00 00       	jmpq   6b5190 <http_parser_execute+0x5c80>
  6afd73:	eb 00                	jmp    6afd75 <http_parser_execute+0x865>
  6afd75:	c7 45 ec 08 00 00 00 	movl   $0x8,-0x14(%rbp)
  6afd7c:	e9 84 4c 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6afd81:	eb 00                	jmp    6afd83 <http_parser_execute+0x873>
  6afd83:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6afd87:	83 f8 2f             	cmp    $0x2f,%eax
  6afd8a:	74 27                	je     6afdb3 <http_parser_execute+0x8a3>
  6afd8c:	eb 00                	jmp    6afd8e <http_parser_execute+0x87e>
  6afd8e:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6afd91:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6afd95:	89 41 04             	mov    %eax,0x4(%rcx)
  6afd98:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6afd9c:	8b 48 14             	mov    0x14(%rax),%ecx
  6afd9f:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6afda5:	81 c9 00 00 00 1e    	or     $0x1e000000,%ecx
  6afdab:	89 48 14             	mov    %ecx,0x14(%rax)
  6afdae:	e9 dd 53 00 00       	jmpq   6b5190 <http_parser_execute+0x5c80>
  6afdb3:	eb 00                	jmp    6afdb5 <http_parser_execute+0x8a5>
  6afdb5:	c7 45 ec 09 00 00 00 	movl   $0x9,-0x14(%rbp)
  6afdbc:	e9 44 4c 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6afdc1:	0f be 4d ff          	movsbl -0x1(%rbp),%ecx
  6afdc5:	31 c0                	xor    %eax,%eax
  6afdc7:	83 f9 30             	cmp    $0x30,%ecx
  6afdca:	7c 0a                	jl     6afdd6 <http_parser_execute+0x8c6>
  6afdcc:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6afdd0:	83 f8 39             	cmp    $0x39,%eax
  6afdd3:	0f 9e c0             	setle  %al
  6afdd6:	34 ff                	xor    $0xff,%al
  6afdd8:	34 ff                	xor    $0xff,%al
  6afdda:	34 ff                	xor    $0xff,%al
  6afddc:	24 01                	and    $0x1,%al
  6afdde:	0f b6 c0             	movzbl %al,%eax
  6afde1:	48 98                	cltq   
  6afde3:	48 83 f8 00          	cmp    $0x0,%rax
  6afde7:	74 27                	je     6afe10 <http_parser_execute+0x900>
  6afde9:	eb 00                	jmp    6afdeb <http_parser_execute+0x8db>
  6afdeb:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6afdee:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6afdf2:	89 41 04             	mov    %eax,0x4(%rcx)
  6afdf5:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6afdf9:	8b 48 14             	mov    0x14(%rax),%ecx
  6afdfc:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6afe02:	81 c9 00 00 00 0e    	or     $0xe000000,%ecx
  6afe08:	89 48 14             	mov    %ecx,0x14(%rax)
  6afe0b:	e9 80 53 00 00       	jmpq   6b5190 <http_parser_execute+0x5c80>
  6afe10:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6afe14:	83 e8 30             	sub    $0x30,%eax
  6afe17:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6afe1b:	66 89 41 10          	mov    %ax,0x10(%rcx)
  6afe1f:	c7 45 ec 0a 00 00 00 	movl   $0xa,-0x14(%rbp)
  6afe26:	e9 da 4b 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6afe2b:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6afe2f:	83 f8 2e             	cmp    $0x2e,%eax
  6afe32:	0f 95 c0             	setne  %al
  6afe35:	34 ff                	xor    $0xff,%al
  6afe37:	34 ff                	xor    $0xff,%al
  6afe39:	24 01                	and    $0x1,%al
  6afe3b:	0f b6 c0             	movzbl %al,%eax
  6afe3e:	48 98                	cltq   
  6afe40:	48 83 f8 00          	cmp    $0x0,%rax
  6afe44:	74 27                	je     6afe6d <http_parser_execute+0x95d>
  6afe46:	eb 00                	jmp    6afe48 <http_parser_execute+0x938>
  6afe48:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6afe4b:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6afe4f:	89 41 04             	mov    %eax,0x4(%rcx)
  6afe52:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6afe56:	8b 48 14             	mov    0x14(%rax),%ecx
  6afe59:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6afe5f:	81 c9 00 00 00 0e    	or     $0xe000000,%ecx
  6afe65:	89 48 14             	mov    %ecx,0x14(%rax)
  6afe68:	e9 23 53 00 00       	jmpq   6b5190 <http_parser_execute+0x5c80>
  6afe6d:	c7 45 ec 0b 00 00 00 	movl   $0xb,-0x14(%rbp)
  6afe74:	e9 8c 4b 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6afe79:	0f be 4d ff          	movsbl -0x1(%rbp),%ecx
  6afe7d:	31 c0                	xor    %eax,%eax
  6afe7f:	83 f9 30             	cmp    $0x30,%ecx
  6afe82:	7c 0a                	jl     6afe8e <http_parser_execute+0x97e>
  6afe84:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6afe88:	83 f8 39             	cmp    $0x39,%eax
  6afe8b:	0f 9e c0             	setle  %al
  6afe8e:	34 ff                	xor    $0xff,%al
  6afe90:	34 ff                	xor    $0xff,%al
  6afe92:	34 ff                	xor    $0xff,%al
  6afe94:	24 01                	and    $0x1,%al
  6afe96:	0f b6 c0             	movzbl %al,%eax
  6afe99:	48 98                	cltq   
  6afe9b:	48 83 f8 00          	cmp    $0x0,%rax
  6afe9f:	74 27                	je     6afec8 <http_parser_execute+0x9b8>
  6afea1:	eb 00                	jmp    6afea3 <http_parser_execute+0x993>
  6afea3:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6afea6:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6afeaa:	89 41 04             	mov    %eax,0x4(%rcx)
  6afead:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6afeb1:	8b 48 14             	mov    0x14(%rax),%ecx
  6afeb4:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6afeba:	81 c9 00 00 00 0e    	or     $0xe000000,%ecx
  6afec0:	89 48 14             	mov    %ecx,0x14(%rax)
  6afec3:	e9 c8 52 00 00       	jmpq   6b5190 <http_parser_execute+0x5c80>
  6afec8:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6afecc:	83 e8 30             	sub    $0x30,%eax
  6afecf:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6afed3:	66 89 41 12          	mov    %ax,0x12(%rcx)
  6afed7:	c7 45 ec 0c 00 00 00 	movl   $0xc,-0x14(%rbp)
  6afede:	e9 22 4b 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6afee3:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6afee7:	83 f8 20             	cmp    $0x20,%eax
  6afeea:	0f 95 c0             	setne  %al
  6afeed:	34 ff                	xor    $0xff,%al
  6afeef:	34 ff                	xor    $0xff,%al
  6afef1:	24 01                	and    $0x1,%al
  6afef3:	0f b6 c0             	movzbl %al,%eax
  6afef6:	48 98                	cltq   
  6afef8:	48 83 f8 00          	cmp    $0x0,%rax
  6afefc:	74 27                	je     6aff25 <http_parser_execute+0xa15>
  6afefe:	eb 00                	jmp    6aff00 <http_parser_execute+0x9f0>
  6aff00:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6aff03:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6aff07:	89 41 04             	mov    %eax,0x4(%rcx)
  6aff0a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6aff0e:	8b 48 14             	mov    0x14(%rax),%ecx
  6aff11:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6aff17:	81 c9 00 00 00 0e    	or     $0xe000000,%ecx
  6aff1d:	89 48 14             	mov    %ecx,0x14(%rax)
  6aff20:	e9 6b 52 00 00       	jmpq   6b5190 <http_parser_execute+0x5c80>
  6aff25:	c7 45 ec 0d 00 00 00 	movl   $0xd,-0x14(%rbp)
  6aff2c:	e9 d4 4a 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6aff31:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6aff35:	83 f8 30             	cmp    $0x30,%eax
  6aff38:	7c 09                	jl     6aff43 <http_parser_execute+0xa33>
  6aff3a:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6aff3e:	83 f8 39             	cmp    $0x39,%eax
  6aff41:	7e 35                	jle    6aff78 <http_parser_execute+0xa68>
  6aff43:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6aff47:	83 f8 20             	cmp    $0x20,%eax
  6aff4a:	75 05                	jne    6aff51 <http_parser_execute+0xa41>
  6aff4c:	e9 b4 4a 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6aff51:	eb 00                	jmp    6aff53 <http_parser_execute+0xa43>
  6aff53:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6aff56:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6aff5a:	89 41 04             	mov    %eax,0x4(%rcx)
  6aff5d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6aff61:	8b 48 14             	mov    0x14(%rax),%ecx
  6aff64:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6aff6a:	81 c9 00 00 00 0f    	or     $0xf000000,%ecx
  6aff70:	89 48 14             	mov    %ecx,0x14(%rax)
  6aff73:	e9 18 52 00 00       	jmpq   6b5190 <http_parser_execute+0x5c80>
  6aff78:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6aff7c:	83 e8 30             	sub    $0x30,%eax
  6aff7f:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6aff83:	8b 51 14             	mov    0x14(%rcx),%edx
  6aff86:	25 ff ff 00 00       	and    $0xffff,%eax
  6aff8b:	81 e2 00 00 ff ff    	and    $0xffff0000,%edx
  6aff91:	09 c2                	or     %eax,%edx
  6aff93:	89 51 14             	mov    %edx,0x14(%rcx)
  6aff96:	c7 45 ec 0e 00 00 00 	movl   $0xe,-0x14(%rbp)
  6aff9d:	e9 63 4a 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6affa2:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6affa6:	83 f8 30             	cmp    $0x30,%eax
  6affa9:	7c 09                	jl     6affb4 <http_parser_execute+0xaa4>
  6affab:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6affaf:	83 f8 39             	cmp    $0x39,%eax
  6affb2:	7e 5e                	jle    6b0012 <http_parser_execute+0xb02>
  6affb4:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6affb8:	89 c1                	mov    %eax,%ecx
  6affba:	83 e9 0a             	sub    $0xa,%ecx
  6affbd:	74 1b                	je     6affda <http_parser_execute+0xaca>
  6affbf:	eb 00                	jmp    6affc1 <http_parser_execute+0xab1>
  6affc1:	89 c1                	mov    %eax,%ecx
  6affc3:	83 e9 0d             	sub    $0xd,%ecx
  6affc6:	74 12                	je     6affda <http_parser_execute+0xaca>
  6affc8:	eb 00                	jmp    6affca <http_parser_execute+0xaba>
  6affca:	83 e8 20             	sub    $0x20,%eax
  6affcd:	75 17                	jne    6affe6 <http_parser_execute+0xad6>
  6affcf:	eb 00                	jmp    6affd1 <http_parser_execute+0xac1>
  6affd1:	c7 45 ec 0f 00 00 00 	movl   $0xf,-0x14(%rbp)
  6affd8:	eb 33                	jmp    6b000d <http_parser_execute+0xafd>
  6affda:	c7 45 ec 0f 00 00 00 	movl   $0xf,-0x14(%rbp)
  6affe1:	e9 6d fa ff ff       	jmpq   6afa53 <http_parser_execute+0x543>
  6affe6:	eb 00                	jmp    6affe8 <http_parser_execute+0xad8>
  6affe8:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6affeb:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6affef:	89 41 04             	mov    %eax,0x4(%rcx)
  6afff2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6afff6:	8b 48 14             	mov    0x14(%rax),%ecx
  6afff9:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6affff:	81 c9 00 00 00 0f    	or     $0xf000000,%ecx
  6b0005:	89 48 14             	mov    %ecx,0x14(%rax)
  6b0008:	e9 83 51 00 00       	jmpq   6b5190 <http_parser_execute+0x5c80>
  6b000d:	e9 f3 49 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6b0012:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b0016:	8b 48 14             	mov    0x14(%rax),%ecx
  6b0019:	81 e1 ff ff 00 00    	and    $0xffff,%ecx
  6b001f:	6b c9 0a             	imul   $0xa,%ecx,%ecx
  6b0022:	8b 50 14             	mov    0x14(%rax),%edx
  6b0025:	81 e1 ff ff 00 00    	and    $0xffff,%ecx
  6b002b:	81 e2 00 00 ff ff    	and    $0xffff0000,%edx
  6b0031:	09 ca                	or     %ecx,%edx
  6b0033:	89 50 14             	mov    %edx,0x14(%rax)
  6b0036:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b003a:	83 e8 30             	sub    $0x30,%eax
  6b003d:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b0041:	8b 51 14             	mov    0x14(%rcx),%edx
  6b0044:	81 e2 ff ff 00 00    	and    $0xffff,%edx
  6b004a:	01 c2                	add    %eax,%edx
  6b004c:	8b 41 14             	mov    0x14(%rcx),%eax
  6b004f:	81 e2 ff ff 00 00    	and    $0xffff,%edx
  6b0055:	25 00 00 ff ff       	and    $0xffff0000,%eax
  6b005a:	09 d0                	or     %edx,%eax
  6b005c:	89 41 14             	mov    %eax,0x14(%rcx)
  6b005f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b0063:	8b 40 14             	mov    0x14(%rax),%eax
  6b0066:	25 ff ff 00 00       	and    $0xffff,%eax
  6b006b:	3d e7 03 00 00       	cmp    $0x3e7,%eax
  6b0070:	0f 9f c0             	setg   %al
  6b0073:	34 ff                	xor    $0xff,%al
  6b0075:	34 ff                	xor    $0xff,%al
  6b0077:	24 01                	and    $0x1,%al
  6b0079:	0f b6 c0             	movzbl %al,%eax
  6b007c:	48 98                	cltq   
  6b007e:	48 83 f8 00          	cmp    $0x0,%rax
  6b0082:	74 27                	je     6b00ab <http_parser_execute+0xb9b>
  6b0084:	eb 00                	jmp    6b0086 <http_parser_execute+0xb76>
  6b0086:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b0089:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b008d:	89 41 04             	mov    %eax,0x4(%rcx)
  6b0090:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b0094:	8b 48 14             	mov    0x14(%rax),%ecx
  6b0097:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b009d:	81 c9 00 00 00 0f    	or     $0xf000000,%ecx
  6b00a3:	89 48 14             	mov    %ecx,0x14(%rax)
  6b00a6:	e9 e5 50 00 00       	jmpq   6b5190 <http_parser_execute+0x5c80>
  6b00ab:	e9 55 49 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6b00b0:	eb 00                	jmp    6b00b2 <http_parser_execute+0xba2>
  6b00b2:	48 83 7d 98 00       	cmpq   $0x0,-0x68(%rbp)
  6b00b7:	75 08                	jne    6b00c1 <http_parser_execute+0xbb1>
  6b00b9:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b00bd:	48 89 45 98          	mov    %rax,-0x68(%rbp)
  6b00c1:	eb 00                	jmp    6b00c3 <http_parser_execute+0xbb3>
  6b00c3:	c7 45 ec 10 00 00 00 	movl   $0x10,-0x14(%rbp)
  6b00ca:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b00ce:	8b 08                	mov    (%rax),%ecx
  6b00d0:	81 e1 ff ff ff e0    	and    $0xe0ffffff,%ecx
  6b00d6:	83 c9 00             	or     $0x0,%ecx
  6b00d9:	89 08                	mov    %ecx,(%rax)
  6b00db:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b00df:	83 f8 0d             	cmp    $0xd,%eax
  6b00e2:	74 09                	je     6b00ed <http_parser_execute+0xbdd>
  6b00e4:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b00e8:	83 f8 0a             	cmp    $0xa,%eax
  6b00eb:	75 05                	jne    6b00f2 <http_parser_execute+0xbe2>
  6b00ed:	e9 61 f9 ff ff       	jmpq   6afa53 <http_parser_execute+0x543>
  6b00f2:	e9 0e 49 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6b00f7:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b00fb:	83 f8 0d             	cmp    $0xd,%eax
  6b00fe:	0f 85 66 01 00 00    	jne    6b026a <http_parser_execute+0xd5a>
  6b0104:	c7 45 ec 11 00 00 00 	movl   $0x11,-0x14(%rbp)
  6b010b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b010f:	8b 40 14             	mov    0x14(%rax),%eax
  6b0112:	c1 e8 18             	shr    $0x18,%eax
  6b0115:	83 e0 7f             	and    $0x7f,%eax
  6b0118:	83 f8 00             	cmp    $0x0,%eax
  6b011b:	75 02                	jne    6b011f <http_parser_execute+0xc0f>
  6b011d:	eb 28                	jmp    6b0147 <http_parser_execute+0xc37>
  6b011f:	48 bf 00 2e 20 00 00 	movabs $0x202e00,%rdi
  6b0126:	00 00 00 
  6b0129:	48 be f5 2b 20 00 00 	movabs $0x202bf5,%rsi
  6b0130:	00 00 00 
  6b0133:	48 b9 37 6e 20 00 00 	movabs $0x206e37,%rcx
  6b013a:	00 00 00 
  6b013d:	ba 8e 03 00 00       	mov    $0x38e,%edx
  6b0142:	e8 49 b8 00 00       	callq  6bb990 <__assert_fail@plt>
  6b0147:	48 83 7d 98 00       	cmpq   $0x0,-0x68(%rbp)
  6b014c:	0f 84 11 01 00 00    	je     6b0263 <http_parser_execute+0xd53>
  6b0152:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6b0156:	48 83 78 10 00       	cmpq   $0x0,0x10(%rax)
  6b015b:	0f 95 c0             	setne  %al
  6b015e:	34 ff                	xor    $0xff,%al
  6b0160:	34 ff                	xor    $0xff,%al
  6b0162:	24 01                	and    $0x1,%al
  6b0164:	0f b6 c0             	movzbl %al,%eax
  6b0167:	48 98                	cltq   
  6b0169:	48 83 f8 00          	cmp    $0x0,%rax
  6b016d:	0f 84 e8 00 00 00    	je     6b025b <http_parser_execute+0xd4b>
  6b0173:	8b 45 ec             	mov    -0x14(%rbp),%eax
  6b0176:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b017a:	8b 11                	mov    (%rcx),%edx
  6b017c:	83 e0 7f             	and    $0x7f,%eax
  6b017f:	c1 e0 0a             	shl    $0xa,%eax
  6b0182:	81 e2 ff 03 fe ff    	and    $0xfffe03ff,%edx
  6b0188:	09 c2                	or     %eax,%edx
  6b018a:	89 11                	mov    %edx,(%rcx)
  6b018c:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6b0190:	48 8b 48 10          	mov    0x10(%rax),%rcx
  6b0194:	48 b8 40 b8 6b 00 00 	movabs $0x6bb840,%rax
  6b019b:	00 00 00 
  6b019e:	48 89 ca             	mov    %rcx,%rdx
  6b01a1:	48 29 c2             	sub    %rax,%rdx
  6b01a4:	48 89 d0             	mov    %rdx,%rax
  6b01a7:	48 c1 e8 03          	shr    $0x3,%rax
  6b01ab:	48 c1 e2 3d          	shl    $0x3d,%rdx
  6b01af:	48 09 d0             	or     %rdx,%rax
  6b01b2:	48 83 f8 0f          	cmp    $0xf,%rax
  6b01b6:	76 05                	jbe    6b01bd <http_parser_execute+0xcad>
  6b01b8:	67 0f b9 40 02       	ud1    0x2(%eax),%eax
  6b01bd:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b01c1:	48 8b 75 98          	mov    -0x68(%rbp),%rsi
  6b01c5:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  6b01c9:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  6b01cd:	48 29 c2             	sub    %rax,%rdx
  6b01d0:	ff d1                	callq  *%rcx
  6b01d2:	31 c9                	xor    %ecx,%ecx
  6b01d4:	39 c1                	cmp    %eax,%ecx
  6b01d6:	0f 95 c0             	setne  %al
  6b01d9:	34 ff                	xor    $0xff,%al
  6b01db:	34 ff                	xor    $0xff,%al
  6b01dd:	24 01                	and    $0x1,%al
  6b01df:	0f b6 c0             	movzbl %al,%eax
  6b01e2:	48 98                	cltq   
  6b01e4:	48 83 f8 00          	cmp    $0x0,%rax
  6b01e8:	74 24                	je     6b020e <http_parser_execute+0xcfe>
  6b01ea:	eb 00                	jmp    6b01ec <http_parser_execute+0xcdc>
  6b01ec:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b01ef:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b01f3:	89 41 04             	mov    %eax,0x4(%rcx)
  6b01f6:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b01fa:	8b 48 14             	mov    0x14(%rax),%ecx
  6b01fd:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b0203:	81 c9 00 00 00 08    	or     $0x8000000,%ecx
  6b0209:	89 48 14             	mov    %ecx,0x14(%rax)
  6b020c:	eb 00                	jmp    6b020e <http_parser_execute+0xcfe>
  6b020e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b0212:	8b 00                	mov    (%rax),%eax
  6b0214:	c1 e8 0a             	shr    $0xa,%eax
  6b0217:	83 e0 7f             	and    $0x7f,%eax
  6b021a:	89 45 ec             	mov    %eax,-0x14(%rbp)
  6b021d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b0221:	8b 40 14             	mov    0x14(%rax),%eax
  6b0224:	c1 e8 18             	shr    $0x18,%eax
  6b0227:	83 e0 7f             	and    $0x7f,%eax
  6b022a:	83 f8 00             	cmp    $0x0,%eax
  6b022d:	0f 95 c0             	setne  %al
  6b0230:	34 ff                	xor    $0xff,%al
  6b0232:	34 ff                	xor    $0xff,%al
  6b0234:	24 01                	and    $0x1,%al
  6b0236:	0f b6 c0             	movzbl %al,%eax
  6b0239:	48 98                	cltq   
  6b023b:	48 83 f8 00          	cmp    $0x0,%rax
  6b023f:	74 18                	je     6b0259 <http_parser_execute+0xd49>
  6b0241:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b0245:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  6b0249:	48 29 c8             	sub    %rcx,%rax
  6b024c:	48 83 c0 01          	add    $0x1,%rax
  6b0250:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  6b0254:	e9 a1 4f 00 00       	jmpq   6b51fa <http_parser_execute+0x5cea>
  6b0259:	eb 00                	jmp    6b025b <http_parser_execute+0xd4b>
  6b025b:	48 c7 45 98 00 00 00 	movq   $0x0,-0x68(%rbp)
  6b0262:	00 
  6b0263:	eb 00                	jmp    6b0265 <http_parser_execute+0xd55>
  6b0265:	e9 9b 47 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6b026a:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b026e:	83 f8 0a             	cmp    $0xa,%eax
  6b0271:	0f 85 66 01 00 00    	jne    6b03dd <http_parser_execute+0xecd>
  6b0277:	c7 45 ec 2c 00 00 00 	movl   $0x2c,-0x14(%rbp)
  6b027e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b0282:	8b 40 14             	mov    0x14(%rax),%eax
  6b0285:	c1 e8 18             	shr    $0x18,%eax
  6b0288:	83 e0 7f             	and    $0x7f,%eax
  6b028b:	83 f8 00             	cmp    $0x0,%eax
  6b028e:	75 02                	jne    6b0292 <http_parser_execute+0xd82>
  6b0290:	eb 28                	jmp    6b02ba <http_parser_execute+0xdaa>
  6b0292:	48 bf 00 2e 20 00 00 	movabs $0x202e00,%rdi
  6b0299:	00 00 00 
  6b029c:	48 be f5 2b 20 00 00 	movabs $0x202bf5,%rsi
  6b02a3:	00 00 00 
  6b02a6:	48 b9 37 6e 20 00 00 	movabs $0x206e37,%rcx
  6b02ad:	00 00 00 
  6b02b0:	ba 94 03 00 00       	mov    $0x394,%edx
  6b02b5:	e8 d6 b6 00 00       	callq  6bb990 <__assert_fail@plt>
  6b02ba:	48 83 7d 98 00       	cmpq   $0x0,-0x68(%rbp)
  6b02bf:	0f 84 11 01 00 00    	je     6b03d6 <http_parser_execute+0xec6>
  6b02c5:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6b02c9:	48 83 78 10 00       	cmpq   $0x0,0x10(%rax)
  6b02ce:	0f 95 c0             	setne  %al
  6b02d1:	34 ff                	xor    $0xff,%al
  6b02d3:	34 ff                	xor    $0xff,%al
  6b02d5:	24 01                	and    $0x1,%al
  6b02d7:	0f b6 c0             	movzbl %al,%eax
  6b02da:	48 98                	cltq   
  6b02dc:	48 83 f8 00          	cmp    $0x0,%rax
  6b02e0:	0f 84 e8 00 00 00    	je     6b03ce <http_parser_execute+0xebe>
  6b02e6:	8b 45 ec             	mov    -0x14(%rbp),%eax
  6b02e9:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b02ed:	8b 11                	mov    (%rcx),%edx
  6b02ef:	83 e0 7f             	and    $0x7f,%eax
  6b02f2:	c1 e0 0a             	shl    $0xa,%eax
  6b02f5:	81 e2 ff 03 fe ff    	and    $0xfffe03ff,%edx
  6b02fb:	09 c2                	or     %eax,%edx
  6b02fd:	89 11                	mov    %edx,(%rcx)
  6b02ff:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6b0303:	48 8b 48 10          	mov    0x10(%rax),%rcx
  6b0307:	48 b8 40 b8 6b 00 00 	movabs $0x6bb840,%rax
  6b030e:	00 00 00 
  6b0311:	48 89 ca             	mov    %rcx,%rdx
  6b0314:	48 29 c2             	sub    %rax,%rdx
  6b0317:	48 89 d0             	mov    %rdx,%rax
  6b031a:	48 c1 e8 03          	shr    $0x3,%rax
  6b031e:	48 c1 e2 3d          	shl    $0x3d,%rdx
  6b0322:	48 09 d0             	or     %rdx,%rax
  6b0325:	48 83 f8 0f          	cmp    $0xf,%rax
  6b0329:	76 05                	jbe    6b0330 <http_parser_execute+0xe20>
  6b032b:	67 0f b9 40 02       	ud1    0x2(%eax),%eax
  6b0330:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b0334:	48 8b 75 98          	mov    -0x68(%rbp),%rsi
  6b0338:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  6b033c:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  6b0340:	48 29 c2             	sub    %rax,%rdx
  6b0343:	ff d1                	callq  *%rcx
  6b0345:	31 c9                	xor    %ecx,%ecx
  6b0347:	39 c1                	cmp    %eax,%ecx
  6b0349:	0f 95 c0             	setne  %al
  6b034c:	34 ff                	xor    $0xff,%al
  6b034e:	34 ff                	xor    $0xff,%al
  6b0350:	24 01                	and    $0x1,%al
  6b0352:	0f b6 c0             	movzbl %al,%eax
  6b0355:	48 98                	cltq   
  6b0357:	48 83 f8 00          	cmp    $0x0,%rax
  6b035b:	74 24                	je     6b0381 <http_parser_execute+0xe71>
  6b035d:	eb 00                	jmp    6b035f <http_parser_execute+0xe4f>
  6b035f:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b0362:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b0366:	89 41 04             	mov    %eax,0x4(%rcx)
  6b0369:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b036d:	8b 48 14             	mov    0x14(%rax),%ecx
  6b0370:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b0376:	81 c9 00 00 00 08    	or     $0x8000000,%ecx
  6b037c:	89 48 14             	mov    %ecx,0x14(%rax)
  6b037f:	eb 00                	jmp    6b0381 <http_parser_execute+0xe71>
  6b0381:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b0385:	8b 00                	mov    (%rax),%eax
  6b0387:	c1 e8 0a             	shr    $0xa,%eax
  6b038a:	83 e0 7f             	and    $0x7f,%eax
  6b038d:	89 45 ec             	mov    %eax,-0x14(%rbp)
  6b0390:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b0394:	8b 40 14             	mov    0x14(%rax),%eax
  6b0397:	c1 e8 18             	shr    $0x18,%eax
  6b039a:	83 e0 7f             	and    $0x7f,%eax
  6b039d:	83 f8 00             	cmp    $0x0,%eax
  6b03a0:	0f 95 c0             	setne  %al
  6b03a3:	34 ff                	xor    $0xff,%al
  6b03a5:	34 ff                	xor    $0xff,%al
  6b03a7:	24 01                	and    $0x1,%al
  6b03a9:	0f b6 c0             	movzbl %al,%eax
  6b03ac:	48 98                	cltq   
  6b03ae:	48 83 f8 00          	cmp    $0x0,%rax
  6b03b2:	74 18                	je     6b03cc <http_parser_execute+0xebc>
  6b03b4:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b03b8:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  6b03bc:	48 29 c8             	sub    %rcx,%rax
  6b03bf:	48 83 c0 01          	add    $0x1,%rax
  6b03c3:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  6b03c7:	e9 2e 4e 00 00       	jmpq   6b51fa <http_parser_execute+0x5cea>
  6b03cc:	eb 00                	jmp    6b03ce <http_parser_execute+0xebe>
  6b03ce:	48 c7 45 98 00 00 00 	movq   $0x0,-0x68(%rbp)
  6b03d5:	00 
  6b03d6:	eb 00                	jmp    6b03d8 <http_parser_execute+0xec8>
  6b03d8:	e9 28 46 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6b03dd:	e9 23 46 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6b03e2:	eb 00                	jmp    6b03e4 <http_parser_execute+0xed4>
  6b03e4:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b03e8:	83 f8 0a             	cmp    $0xa,%eax
  6b03eb:	74 27                	je     6b0414 <http_parser_execute+0xf04>
  6b03ed:	eb 00                	jmp    6b03ef <http_parser_execute+0xedf>
  6b03ef:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b03f2:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b03f6:	89 41 04             	mov    %eax,0x4(%rcx)
  6b03f9:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b03fd:	8b 48 14             	mov    0x14(%rax),%ecx
  6b0400:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b0406:	81 c9 00 00 00 1e    	or     $0x1e000000,%ecx
  6b040c:	89 48 14             	mov    %ecx,0x14(%rax)
  6b040f:	e9 7c 4d 00 00       	jmpq   6b5190 <http_parser_execute+0x5c80>
  6b0414:	eb 00                	jmp    6b0416 <http_parser_execute+0xf06>
  6b0416:	c7 45 ec 2c 00 00 00 	movl   $0x2c,-0x14(%rbp)
  6b041d:	e9 e3 45 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6b0422:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b0426:	83 f8 0d             	cmp    $0xd,%eax
  6b0429:	74 09                	je     6b0434 <http_parser_execute+0xf24>
  6b042b:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b042f:	83 f8 0a             	cmp    $0xa,%eax
  6b0432:	75 05                	jne    6b0439 <http_parser_execute+0xf29>
  6b0434:	e9 cc 45 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6b0439:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b043d:	8b 08                	mov    (%rax),%ecx
  6b043f:	81 e1 03 fc ff ff    	and    $0xfffffc03,%ecx
  6b0445:	83 c9 00             	or     $0x0,%ecx
  6b0448:	89 08                	mov    %ecx,(%rax)
  6b044a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b044e:	8b 08                	mov    (%rax),%ecx
  6b0450:	81 e1 ff ff ff df    	and    $0xdfffffff,%ecx
  6b0456:	83 c9 00             	or     $0x0,%ecx
  6b0459:	89 08                	mov    %ecx,(%rax)
  6b045b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b045f:	48 c7 40 08 ff ff ff 	movq   $0xffffffffffffffff,0x8(%rax)
  6b0466:	ff 
  6b0467:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b046b:	83 c8 20             	or     $0x20,%eax
  6b046e:	0f b6 c8             	movzbl %al,%ecx
  6b0471:	31 c0                	xor    %eax,%eax
  6b0473:	83 f9 61             	cmp    $0x61,%ecx
  6b0476:	7c 10                	jl     6b0488 <http_parser_execute+0xf78>
  6b0478:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b047c:	83 c8 20             	or     $0x20,%eax
  6b047f:	0f b6 c0             	movzbl %al,%eax
  6b0482:	83 f8 7a             	cmp    $0x7a,%eax
  6b0485:	0f 9e c0             	setle  %al
  6b0488:	34 ff                	xor    $0xff,%al
  6b048a:	34 ff                	xor    $0xff,%al
  6b048c:	34 ff                	xor    $0xff,%al
  6b048e:	24 01                	and    $0x1,%al
  6b0490:	0f b6 c0             	movzbl %al,%eax
  6b0493:	48 98                	cltq   
  6b0495:	48 83 f8 00          	cmp    $0x0,%rax
  6b0499:	74 27                	je     6b04c2 <http_parser_execute+0xfb2>
  6b049b:	eb 00                	jmp    6b049d <http_parser_execute+0xf8d>
  6b049d:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b04a0:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b04a4:	89 41 04             	mov    %eax,0x4(%rcx)
  6b04a7:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b04ab:	8b 48 14             	mov    0x14(%rax),%ecx
  6b04ae:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b04b4:	81 c9 00 00 00 10    	or     $0x10000000,%ecx
  6b04ba:	89 48 14             	mov    %ecx,0x14(%rax)
  6b04bd:	e9 ce 4c 00 00       	jmpq   6b5190 <http_parser_execute+0x5c80>
  6b04c2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b04c6:	8b 48 14             	mov    0x14(%rax),%ecx
  6b04c9:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  6b04cf:	89 48 14             	mov    %ecx,0x14(%rax)
  6b04d2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b04d6:	8b 08                	mov    (%rax),%ecx
  6b04d8:	81 e1 ff ff ff e0    	and    $0xe0ffffff,%ecx
  6b04de:	81 c9 00 00 00 01    	or     $0x1000000,%ecx
  6b04e4:	89 08                	mov    %ecx,(%rax)
  6b04e6:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b04ea:	83 c0 bf             	add    $0xffffffbf,%eax
  6b04ed:	89 c1                	mov    %eax,%ecx
  6b04ef:	83 e9 14             	sub    $0x14,%ecx
  6b04f2:	0f 87 90 01 00 00    	ja     6b0688 <http_parser_execute+0x1178>
  6b04f8:	48 8b 04 c5 08 0e 20 	mov    0x200e08(,%rax,8),%rax
  6b04ff:	00 
  6b0500:	ff e0                	jmpq   *%rax
  6b0502:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b0506:	8b 48 14             	mov    0x14(%rax),%ecx
  6b0509:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  6b050f:	81 c9 00 00 13 00    	or     $0x130000,%ecx
  6b0515:	89 48 14             	mov    %ecx,0x14(%rax)
  6b0518:	e9 92 01 00 00       	jmpq   6b06af <http_parser_execute+0x119f>
  6b051d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b0521:	8b 48 14             	mov    0x14(%rax),%ecx
  6b0524:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  6b052a:	81 c9 00 00 10 00    	or     $0x100000,%ecx
  6b0530:	89 48 14             	mov    %ecx,0x14(%rax)
  6b0533:	e9 77 01 00 00       	jmpq   6b06af <http_parser_execute+0x119f>
  6b0538:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b053c:	8b 48 14             	mov    0x14(%rax),%ecx
  6b053f:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  6b0545:	81 c9 00 00 05 00    	or     $0x50000,%ecx
  6b054b:	89 48 14             	mov    %ecx,0x14(%rax)
  6b054e:	e9 5c 01 00 00       	jmpq   6b06af <http_parser_execute+0x119f>
  6b0553:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b0557:	8b 48 14             	mov    0x14(%rax),%ecx
  6b055a:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  6b0560:	83 c9 00             	or     $0x0,%ecx
  6b0563:	89 48 14             	mov    %ecx,0x14(%rax)
  6b0566:	e9 44 01 00 00       	jmpq   6b06af <http_parser_execute+0x119f>
  6b056b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b056f:	8b 48 14             	mov    0x14(%rax),%ecx
  6b0572:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  6b0578:	81 c9 00 00 01 00    	or     $0x10000,%ecx
  6b057e:	89 48 14             	mov    %ecx,0x14(%rax)
  6b0581:	e9 29 01 00 00       	jmpq   6b06af <http_parser_execute+0x119f>
  6b0586:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b058a:	8b 48 14             	mov    0x14(%rax),%ecx
  6b058d:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  6b0593:	81 c9 00 00 02 00    	or     $0x20000,%ecx
  6b0599:	89 48 14             	mov    %ecx,0x14(%rax)
  6b059c:	e9 0e 01 00 00       	jmpq   6b06af <http_parser_execute+0x119f>
  6b05a1:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b05a5:	8b 48 14             	mov    0x14(%rax),%ecx
  6b05a8:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  6b05ae:	81 c9 00 00 09 00    	or     $0x90000,%ecx
  6b05b4:	89 48 14             	mov    %ecx,0x14(%rax)
  6b05b7:	e9 f3 00 00 00       	jmpq   6b06af <http_parser_execute+0x119f>
  6b05bc:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b05c0:	8b 48 14             	mov    0x14(%rax),%ecx
  6b05c3:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  6b05c9:	81 c9 00 00 0a 00    	or     $0xa0000,%ecx
  6b05cf:	89 48 14             	mov    %ecx,0x14(%rax)
  6b05d2:	e9 d8 00 00 00       	jmpq   6b06af <http_parser_execute+0x119f>
  6b05d7:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b05db:	8b 48 14             	mov    0x14(%rax),%ecx
  6b05de:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  6b05e4:	81 c9 00 00 19 00    	or     $0x190000,%ecx
  6b05ea:	89 48 14             	mov    %ecx,0x14(%rax)
  6b05ed:	e9 bd 00 00 00       	jmpq   6b06af <http_parser_execute+0x119f>
  6b05f2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b05f6:	8b 48 14             	mov    0x14(%rax),%ecx
  6b05f9:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  6b05ff:	81 c9 00 00 06 00    	or     $0x60000,%ecx
  6b0605:	89 48 14             	mov    %ecx,0x14(%rax)
  6b0608:	e9 a2 00 00 00       	jmpq   6b06af <http_parser_execute+0x119f>
  6b060d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b0611:	8b 48 14             	mov    0x14(%rax),%ecx
  6b0614:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  6b061a:	81 c9 00 00 03 00    	or     $0x30000,%ecx
  6b0620:	89 48 14             	mov    %ecx,0x14(%rax)
  6b0623:	e9 87 00 00 00       	jmpq   6b06af <http_parser_execute+0x119f>
  6b0628:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b062c:	8b 48 14             	mov    0x14(%rax),%ecx
  6b062f:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  6b0635:	81 c9 00 00 14 00    	or     $0x140000,%ecx
  6b063b:	89 48 14             	mov    %ecx,0x14(%rax)
  6b063e:	eb 6f                	jmp    6b06af <http_parser_execute+0x119f>
  6b0640:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b0644:	8b 48 14             	mov    0x14(%rax),%ecx
  6b0647:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  6b064d:	81 c9 00 00 1a 00    	or     $0x1a0000,%ecx
  6b0653:	89 48 14             	mov    %ecx,0x14(%rax)
  6b0656:	eb 57                	jmp    6b06af <http_parser_execute+0x119f>
  6b0658:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b065c:	8b 48 14             	mov    0x14(%rax),%ecx
  6b065f:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  6b0665:	81 c9 00 00 07 00    	or     $0x70000,%ecx
  6b066b:	89 48 14             	mov    %ecx,0x14(%rax)
  6b066e:	eb 3f                	jmp    6b06af <http_parser_execute+0x119f>
  6b0670:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b0674:	8b 48 14             	mov    0x14(%rax),%ecx
  6b0677:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  6b067d:	81 c9 00 00 0f 00    	or     $0xf0000,%ecx
  6b0683:	89 48 14             	mov    %ecx,0x14(%rax)
  6b0686:	eb 27                	jmp    6b06af <http_parser_execute+0x119f>
  6b0688:	eb 00                	jmp    6b068a <http_parser_execute+0x117a>
  6b068a:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b068d:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b0691:	89 41 04             	mov    %eax,0x4(%rcx)
  6b0694:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b0698:	8b 48 14             	mov    0x14(%rax),%ecx
  6b069b:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b06a1:	81 c9 00 00 00 10    	or     $0x10000000,%ecx
  6b06a7:	89 48 14             	mov    %ecx,0x14(%rax)
  6b06aa:	e9 e1 4a 00 00       	jmpq   6b5190 <http_parser_execute+0x5c80>
  6b06af:	c7 45 ec 13 00 00 00 	movl   $0x13,-0x14(%rbp)
  6b06b6:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b06ba:	8b 40 14             	mov    0x14(%rax),%eax
  6b06bd:	c1 e8 18             	shr    $0x18,%eax
  6b06c0:	83 e0 7f             	and    $0x7f,%eax
  6b06c3:	83 f8 00             	cmp    $0x0,%eax
  6b06c6:	75 02                	jne    6b06ca <http_parser_execute+0x11ba>
  6b06c8:	eb 28                	jmp    6b06f2 <http_parser_execute+0x11e2>
  6b06ca:	48 bf 00 2e 20 00 00 	movabs $0x202e00,%rdi
  6b06d1:	00 00 00 
  6b06d4:	48 be f5 2b 20 00 00 	movabs $0x202bf5,%rsi
  6b06db:	00 00 00 
  6b06de:	48 b9 37 6e 20 00 00 	movabs $0x206e37,%rcx
  6b06e5:	00 00 00 
  6b06e8:	ba c6 03 00 00       	mov    $0x3c6,%edx
  6b06ed:	e8 9e b2 00 00       	callq  6bb990 <__assert_fail@plt>
  6b06f2:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6b06f6:	48 83 38 00          	cmpq   $0x0,(%rax)
  6b06fa:	0f 95 c0             	setne  %al
  6b06fd:	34 ff                	xor    $0xff,%al
  6b06ff:	34 ff                	xor    $0xff,%al
  6b0701:	24 01                	and    $0x1,%al
  6b0703:	0f b6 c0             	movzbl %al,%eax
  6b0706:	48 98                	cltq   
  6b0708:	48 83 f8 00          	cmp    $0x0,%rax
  6b070c:	0f 84 d8 00 00 00    	je     6b07ea <http_parser_execute+0x12da>
  6b0712:	8b 45 ec             	mov    -0x14(%rbp),%eax
  6b0715:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b0719:	8b 11                	mov    (%rcx),%edx
  6b071b:	83 e0 7f             	and    $0x7f,%eax
  6b071e:	c1 e0 0a             	shl    $0xa,%eax
  6b0721:	81 e2 ff 03 fe ff    	and    $0xfffe03ff,%edx
  6b0727:	09 c2                	or     %eax,%edx
  6b0729:	89 11                	mov    %edx,(%rcx)
  6b072b:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6b072f:	48 8b 08             	mov    (%rax),%rcx
  6b0732:	48 b8 c0 b8 6b 00 00 	movabs $0x6bb8c0,%rax
  6b0739:	00 00 00 
  6b073c:	48 89 ca             	mov    %rcx,%rdx
  6b073f:	48 29 c2             	sub    %rax,%rdx
  6b0742:	48 89 d0             	mov    %rdx,%rax
  6b0745:	48 c1 e8 03          	shr    $0x3,%rax
  6b0749:	48 c1 e2 3d          	shl    $0x3d,%rdx
  6b074d:	48 09 d0             	or     %rdx,%rax
  6b0750:	48 83 f8 10          	cmp    $0x10,%rax
  6b0754:	76 05                	jbe    6b075b <http_parser_execute+0x124b>
  6b0756:	67 0f b9 40 02       	ud1    0x2(%eax),%eax
  6b075b:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b075f:	ff d1                	callq  *%rcx
  6b0761:	31 c9                	xor    %ecx,%ecx
  6b0763:	39 c1                	cmp    %eax,%ecx
  6b0765:	0f 95 c0             	setne  %al
  6b0768:	34 ff                	xor    $0xff,%al
  6b076a:	34 ff                	xor    $0xff,%al
  6b076c:	24 01                	and    $0x1,%al
  6b076e:	0f b6 c0             	movzbl %al,%eax
  6b0771:	48 98                	cltq   
  6b0773:	48 83 f8 00          	cmp    $0x0,%rax
  6b0777:	74 24                	je     6b079d <http_parser_execute+0x128d>
  6b0779:	eb 00                	jmp    6b077b <http_parser_execute+0x126b>
  6b077b:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b077e:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b0782:	89 41 04             	mov    %eax,0x4(%rcx)
  6b0785:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b0789:	8b 48 14             	mov    0x14(%rax),%ecx
  6b078c:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b0792:	81 c9 00 00 00 01    	or     $0x1000000,%ecx
  6b0798:	89 48 14             	mov    %ecx,0x14(%rax)
  6b079b:	eb 00                	jmp    6b079d <http_parser_execute+0x128d>
  6b079d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b07a1:	8b 00                	mov    (%rax),%eax
  6b07a3:	c1 e8 0a             	shr    $0xa,%eax
  6b07a6:	83 e0 7f             	and    $0x7f,%eax
  6b07a9:	89 45 ec             	mov    %eax,-0x14(%rbp)
  6b07ac:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b07b0:	8b 40 14             	mov    0x14(%rax),%eax
  6b07b3:	c1 e8 18             	shr    $0x18,%eax
  6b07b6:	83 e0 7f             	and    $0x7f,%eax
  6b07b9:	83 f8 00             	cmp    $0x0,%eax
  6b07bc:	0f 95 c0             	setne  %al
  6b07bf:	34 ff                	xor    $0xff,%al
  6b07c1:	34 ff                	xor    $0xff,%al
  6b07c3:	24 01                	and    $0x1,%al
  6b07c5:	0f b6 c0             	movzbl %al,%eax
  6b07c8:	48 98                	cltq   
  6b07ca:	48 83 f8 00          	cmp    $0x0,%rax
  6b07ce:	74 18                	je     6b07e8 <http_parser_execute+0x12d8>
  6b07d0:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b07d4:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  6b07d8:	48 29 c8             	sub    %rcx,%rax
  6b07db:	48 83 c0 01          	add    $0x1,%rax
  6b07df:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  6b07e3:	e9 12 4a 00 00       	jmpq   6b51fa <http_parser_execute+0x5cea>
  6b07e8:	eb 00                	jmp    6b07ea <http_parser_execute+0x12da>
  6b07ea:	eb 00                	jmp    6b07ec <http_parser_execute+0x12dc>
  6b07ec:	e9 14 42 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6b07f1:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b07f5:	83 f8 00             	cmp    $0x0,%eax
  6b07f8:	0f 94 c0             	sete   %al
  6b07fb:	34 ff                	xor    $0xff,%al
  6b07fd:	34 ff                	xor    $0xff,%al
  6b07ff:	24 01                	and    $0x1,%al
  6b0801:	0f b6 c0             	movzbl %al,%eax
  6b0804:	48 98                	cltq   
  6b0806:	48 83 f8 00          	cmp    $0x0,%rax
  6b080a:	74 27                	je     6b0833 <http_parser_execute+0x1323>
  6b080c:	eb 00                	jmp    6b080e <http_parser_execute+0x12fe>
  6b080e:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b0811:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b0815:	89 41 04             	mov    %eax,0x4(%rcx)
  6b0818:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b081c:	8b 48 14             	mov    0x14(%rax),%ecx
  6b081f:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b0825:	81 c9 00 00 00 10    	or     $0x10000000,%ecx
  6b082b:	89 48 14             	mov    %ecx,0x14(%rax)
  6b082e:	e9 5d 49 00 00       	jmpq   6b5190 <http_parser_execute+0x5c80>
  6b0833:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b0837:	8b 40 14             	mov    0x14(%rax),%eax
  6b083a:	c1 e8 10             	shr    $0x10,%eax
  6b083d:	25 ff 00 00 00       	and    $0xff,%eax
  6b0842:	89 c0                	mov    %eax,%eax
  6b0844:	48 8b 04 c5 80 dc 6b 	mov    0x6bdc80(,%rax,8),%rax
  6b084b:	00 
  6b084c:	48 89 85 28 ff ff ff 	mov    %rax,-0xd8(%rbp)
  6b0853:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b0857:	83 f8 20             	cmp    $0x20,%eax
  6b085a:	75 2a                	jne    6b0886 <http_parser_execute+0x1376>
  6b085c:	48 8b 85 28 ff ff ff 	mov    -0xd8(%rbp),%rax
  6b0863:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b0867:	8b 09                	mov    (%rcx),%ecx
  6b0869:	c1 e9 18             	shr    $0x18,%ecx
  6b086c:	83 e1 1f             	and    $0x1f,%ecx
  6b086f:	89 c9                	mov    %ecx,%ecx
  6b0871:	0f be 04 08          	movsbl (%rax,%rcx,1),%eax
  6b0875:	83 f8 00             	cmp    $0x0,%eax
  6b0878:	75 0c                	jne    6b0886 <http_parser_execute+0x1376>
  6b087a:	c7 45 ec 14 00 00 00 	movl   $0x14,-0x14(%rbp)
  6b0881:	e9 da 03 00 00       	jmpq   6b0c60 <http_parser_execute+0x1750>
  6b0886:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b088a:	48 8b 8d 28 ff ff ff 	mov    -0xd8(%rbp),%rcx
  6b0891:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  6b0895:	8b 12                	mov    (%rdx),%edx
  6b0897:	c1 ea 18             	shr    $0x18,%edx
  6b089a:	83 e2 1f             	and    $0x1f,%edx
  6b089d:	89 d2                	mov    %edx,%edx
  6b089f:	0f be 0c 11          	movsbl (%rcx,%rdx,1),%ecx
  6b08a3:	39 c8                	cmp    %ecx,%eax
  6b08a5:	75 05                	jne    6b08ac <http_parser_execute+0x139c>
  6b08a7:	e9 b2 03 00 00       	jmpq   6b0c5e <http_parser_execute+0x174e>
  6b08ac:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b08b0:	83 f8 41             	cmp    $0x41,%eax
  6b08b3:	7c 09                	jl     6b08be <http_parser_execute+0x13ae>
  6b08b5:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b08b9:	83 f8 5a             	cmp    $0x5a,%eax
  6b08bc:	7e 0d                	jle    6b08cb <http_parser_execute+0x13bb>
  6b08be:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b08c2:	83 f8 2d             	cmp    $0x2d,%eax
  6b08c5:	0f 85 6a 03 00 00    	jne    6b0c35 <http_parser_execute+0x1725>
  6b08cb:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b08cf:	0f b7 41 16          	movzwl 0x16(%rcx),%eax
  6b08d3:	c1 e0 10             	shl    $0x10,%eax
  6b08d6:	0f b7 49 02          	movzwl 0x2(%rcx),%ecx
  6b08da:	09 c8                	or     %ecx,%eax
  6b08dc:	25 00 1f ff 00       	and    $0xff1f00,%eax
  6b08e1:	0f be 4d ff          	movsbl -0x1(%rbp),%ecx
  6b08e5:	09 c8                	or     %ecx,%eax
  6b08e7:	89 c1                	mov    %eax,%ecx
  6b08e9:	81 e9 41 01 03 00    	sub    $0x30141,%ecx
  6b08ef:	0f 84 3d 01 00 00    	je     6b0a32 <http_parser_execute+0x1522>
  6b08f5:	eb 00                	jmp    6b08f7 <http_parser_execute+0x13e7>
  6b08f7:	89 c1                	mov    %eax,%ecx
  6b08f9:	81 e9 52 01 03 00    	sub    $0x30152,%ecx
  6b08ff:	0f 84 48 01 00 00    	je     6b0a4d <http_parser_execute+0x153d>
  6b0905:	eb 00                	jmp    6b0907 <http_parser_execute+0x13f7>
  6b0907:	89 c1                	mov    %eax,%ecx
  6b0909:	81 e9 55 01 03 00    	sub    $0x30155,%ecx
  6b090f:	0f 84 02 01 00 00    	je     6b0a17 <http_parser_execute+0x1507>
  6b0915:	eb 00                	jmp    6b0917 <http_parser_execute+0x1407>
  6b0917:	89 c1                	mov    %eax,%ecx
  6b0919:	81 e9 52 02 04 00    	sub    $0x40252,%ecx
  6b091f:	0f 84 43 01 00 00    	je     6b0a68 <http_parser_execute+0x1558>
  6b0925:	eb 00                	jmp    6b0927 <http_parser_execute+0x1417>
  6b0927:	89 c1                	mov    %eax,%ecx
  6b0929:	81 e9 48 01 05 00    	sub    $0x50148,%ecx
  6b092f:	0f 84 4e 01 00 00    	je     6b0a83 <http_parser_execute+0x1573>
  6b0935:	eb 00                	jmp    6b0937 <http_parser_execute+0x1427>
  6b0937:	89 c1                	mov    %eax,%ecx
  6b0939:	81 e9 50 02 05 00    	sub    $0x50250,%ecx
  6b093f:	0f 84 59 01 00 00    	je     6b0a9e <http_parser_execute+0x158e>
  6b0945:	eb 00                	jmp    6b0947 <http_parser_execute+0x1437>
  6b0947:	89 c1                	mov    %eax,%ecx
  6b0949:	81 e9 49 01 09 00    	sub    $0x90149,%ecx
  6b094f:	0f 84 57 02 00 00    	je     6b0bac <http_parser_execute+0x169c>
  6b0955:	eb 00                	jmp    6b0957 <http_parser_execute+0x1447>
  6b0957:	89 c1                	mov    %eax,%ecx
  6b0959:	81 e9 2d 01 0a 00    	sub    $0xa012d,%ecx
  6b095f:	0f 84 8a 01 00 00    	je     6b0aef <http_parser_execute+0x15df>
  6b0965:	eb 00                	jmp    6b0967 <http_parser_execute+0x1457>
  6b0967:	89 c1                	mov    %eax,%ecx
  6b0969:	81 e9 45 01 0a 00    	sub    $0xa0145,%ecx
  6b096f:	0f 84 5f 01 00 00    	je     6b0ad4 <http_parser_execute+0x15c4>
  6b0975:	eb 00                	jmp    6b0977 <http_parser_execute+0x1467>
  6b0977:	89 c1                	mov    %eax,%ecx
  6b0979:	81 e9 4f 01 0a 00    	sub    $0xa014f,%ecx
  6b097f:	0f 84 34 01 00 00    	je     6b0ab9 <http_parser_execute+0x15a9>
  6b0985:	eb 00                	jmp    6b0987 <http_parser_execute+0x1477>
  6b0987:	89 c1                	mov    %eax,%ecx
  6b0989:	81 e9 41 02 0a 00    	sub    $0xa0241,%ecx
  6b098f:	0f 84 75 01 00 00    	je     6b0b0a <http_parser_execute+0x15fa>
  6b0995:	eb 00                	jmp    6b0997 <http_parser_execute+0x1487>
  6b0997:	89 c1                	mov    %eax,%ecx
  6b0999:	81 e9 41 03 0a 00    	sub    $0xa0341,%ecx
  6b099f:	0f 84 80 01 00 00    	je     6b0b25 <http_parser_execute+0x1615>
  6b09a5:	eb 00                	jmp    6b09a7 <http_parser_execute+0x1497>
  6b09a7:	89 c1                	mov    %eax,%ecx
  6b09a9:	81 e9 50 04 0c 00    	sub    $0xc0450,%ecx
  6b09af:	0f 84 dc 01 00 00    	je     6b0b91 <http_parser_execute+0x1681>
  6b09b5:	eb 00                	jmp    6b09b7 <http_parser_execute+0x14a7>
  6b09b7:	89 c1                	mov    %eax,%ecx
  6b09b9:	81 e9 42 02 0f 00    	sub    $0xf0242,%ecx
  6b09bf:	0f 84 17 02 00 00    	je     6b0bdc <http_parser_execute+0x16cc>
  6b09c5:	eb 00                	jmp    6b09c7 <http_parser_execute+0x14b7>
  6b09c7:	89 c1                	mov    %eax,%ecx
  6b09c9:	81 e9 53 02 0f 00    	sub    $0xf0253,%ecx
  6b09cf:	0f 84 ef 01 00 00    	je     6b0bc4 <http_parser_execute+0x16b4>
  6b09d5:	eb 00                	jmp    6b09d7 <http_parser_execute+0x14c7>
  6b09d7:	89 c1                	mov    %eax,%ecx
  6b09d9:	81 e9 49 03 0f 00    	sub    $0xf0349,%ecx
  6b09df:	0f 84 0f 02 00 00    	je     6b0bf4 <http_parser_execute+0x16e4>
  6b09e5:	eb 00                	jmp    6b09e7 <http_parser_execute+0x14d7>
  6b09e7:	89 c1                	mov    %eax,%ecx
  6b09e9:	81 e9 42 02 14 00    	sub    $0x140242,%ecx
  6b09ef:	0f 84 81 01 00 00    	je     6b0b76 <http_parser_execute+0x1666>
  6b09f5:	eb 00                	jmp    6b09f7 <http_parser_execute+0x14e7>
  6b09f7:	89 c1                	mov    %eax,%ecx
  6b09f9:	81 e9 45 01 1a 00    	sub    $0x1a0145,%ecx
  6b09ff:	0f 84 3b 01 00 00    	je     6b0b40 <http_parser_execute+0x1630>
  6b0a05:	eb 00                	jmp    6b0a07 <http_parser_execute+0x14f7>
  6b0a07:	2d 4f 01 1a 00       	sub    $0x1a014f,%eax
  6b0a0c:	0f 84 49 01 00 00    	je     6b0b5b <http_parser_execute+0x164b>
  6b0a12:	e9 f5 01 00 00       	jmpq   6b0c0c <http_parser_execute+0x16fc>
  6b0a17:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b0a1b:	8b 48 14             	mov    0x14(%rax),%ecx
  6b0a1e:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  6b0a24:	81 c9 00 00 04 00    	or     $0x40000,%ecx
  6b0a2a:	89 48 14             	mov    %ecx,0x14(%rax)
  6b0a2d:	e9 01 02 00 00       	jmpq   6b0c33 <http_parser_execute+0x1723>
  6b0a32:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b0a36:	8b 48 14             	mov    0x14(%rax),%ecx
  6b0a39:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  6b0a3f:	81 c9 00 00 1c 00    	or     $0x1c0000,%ecx
  6b0a45:	89 48 14             	mov    %ecx,0x14(%rax)
  6b0a48:	e9 e6 01 00 00       	jmpq   6b0c33 <http_parser_execute+0x1723>
  6b0a4d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b0a51:	8b 48 14             	mov    0x14(%rax),%ecx
  6b0a54:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  6b0a5a:	81 c9 00 00 0c 00    	or     $0xc0000,%ecx
  6b0a60:	89 48 14             	mov    %ecx,0x14(%rax)
  6b0a63:	e9 cb 01 00 00       	jmpq   6b0c33 <http_parser_execute+0x1723>
  6b0a68:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b0a6c:	8b 48 14             	mov    0x14(%rax),%ecx
  6b0a6f:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  6b0a75:	81 c9 00 00 1d 00    	or     $0x1d0000,%ecx
  6b0a7b:	89 48 14             	mov    %ecx,0x14(%rax)
  6b0a7e:	e9 b0 01 00 00       	jmpq   6b0c33 <http_parser_execute+0x1723>
  6b0a83:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b0a87:	8b 48 14             	mov    0x14(%rax),%ecx
  6b0a8a:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  6b0a90:	81 c9 00 00 16 00    	or     $0x160000,%ecx
  6b0a96:	89 48 14             	mov    %ecx,0x14(%rax)
  6b0a99:	e9 95 01 00 00       	jmpq   6b0c33 <http_parser_execute+0x1723>
  6b0a9e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b0aa2:	8b 48 14             	mov    0x14(%rax),%ecx
  6b0aa5:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  6b0aab:	81 c9 00 00 08 00    	or     $0x80000,%ecx
  6b0ab1:	89 48 14             	mov    %ecx,0x14(%rax)
  6b0ab4:	e9 7a 01 00 00       	jmpq   6b0c33 <http_parser_execute+0x1723>
  6b0ab9:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b0abd:	8b 48 14             	mov    0x14(%rax),%ecx
  6b0ac0:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  6b0ac6:	81 c9 00 00 0b 00    	or     $0xb0000,%ecx
  6b0acc:	89 48 14             	mov    %ecx,0x14(%rax)
  6b0acf:	e9 5f 01 00 00       	jmpq   6b0c33 <http_parser_execute+0x1723>
  6b0ad4:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b0ad8:	8b 48 14             	mov    0x14(%rax),%ecx
  6b0adb:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  6b0ae1:	81 c9 00 00 17 00    	or     $0x170000,%ecx
  6b0ae7:	89 48 14             	mov    %ecx,0x14(%rax)
  6b0aea:	e9 44 01 00 00       	jmpq   6b0c33 <http_parser_execute+0x1723>
  6b0aef:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b0af3:	8b 48 14             	mov    0x14(%rax),%ecx
  6b0af6:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  6b0afc:	81 c9 00 00 18 00    	or     $0x180000,%ecx
  6b0b02:	89 48 14             	mov    %ecx,0x14(%rax)
  6b0b05:	e9 29 01 00 00       	jmpq   6b0c33 <http_parser_execute+0x1723>
  6b0b0a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b0b0e:	8b 48 14             	mov    0x14(%rax),%ecx
  6b0b11:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  6b0b17:	81 c9 00 00 15 00    	or     $0x150000,%ecx
  6b0b1d:	89 48 14             	mov    %ecx,0x14(%rax)
  6b0b20:	e9 0e 01 00 00       	jmpq   6b0c33 <http_parser_execute+0x1723>
  6b0b25:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b0b29:	8b 48 14             	mov    0x14(%rax),%ecx
  6b0b2c:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  6b0b32:	81 c9 00 00 1e 00    	or     $0x1e0000,%ecx
  6b0b38:	89 48 14             	mov    %ecx,0x14(%rax)
  6b0b3b:	e9 f3 00 00 00       	jmpq   6b0c33 <http_parser_execute+0x1723>
  6b0b40:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b0b44:	8b 48 14             	mov    0x14(%rax),%ecx
  6b0b47:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  6b0b4d:	81 c9 00 00 0e 00    	or     $0xe0000,%ecx
  6b0b53:	89 48 14             	mov    %ecx,0x14(%rax)
  6b0b56:	e9 d8 00 00 00       	jmpq   6b0c33 <http_parser_execute+0x1723>
  6b0b5b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b0b5f:	8b 48 14             	mov    0x14(%rax),%ecx
  6b0b62:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  6b0b68:	81 c9 00 00 21 00    	or     $0x210000,%ecx
  6b0b6e:	89 48 14             	mov    %ecx,0x14(%rax)
  6b0b71:	e9 bd 00 00 00       	jmpq   6b0c33 <http_parser_execute+0x1723>
  6b0b76:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b0b7a:	8b 48 14             	mov    0x14(%rax),%ecx
  6b0b7d:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  6b0b83:	81 c9 00 00 11 00    	or     $0x110000,%ecx
  6b0b89:	89 48 14             	mov    %ecx,0x14(%rax)
  6b0b8c:	e9 a2 00 00 00       	jmpq   6b0c33 <http_parser_execute+0x1723>
  6b0b91:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b0b95:	8b 48 14             	mov    0x14(%rax),%ecx
  6b0b98:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  6b0b9e:	81 c9 00 00 0d 00    	or     $0xd0000,%ecx
  6b0ba4:	89 48 14             	mov    %ecx,0x14(%rax)
  6b0ba7:	e9 87 00 00 00       	jmpq   6b0c33 <http_parser_execute+0x1723>
  6b0bac:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b0bb0:	8b 48 14             	mov    0x14(%rax),%ecx
  6b0bb3:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  6b0bb9:	81 c9 00 00 1f 00    	or     $0x1f0000,%ecx
  6b0bbf:	89 48 14             	mov    %ecx,0x14(%rax)
  6b0bc2:	eb 6f                	jmp    6b0c33 <http_parser_execute+0x1723>
  6b0bc4:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b0bc8:	8b 48 14             	mov    0x14(%rax),%ecx
  6b0bcb:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  6b0bd1:	81 c9 00 00 1b 00    	or     $0x1b0000,%ecx
  6b0bd7:	89 48 14             	mov    %ecx,0x14(%rax)
  6b0bda:	eb 57                	jmp    6b0c33 <http_parser_execute+0x1723>
  6b0bdc:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b0be0:	8b 48 14             	mov    0x14(%rax),%ecx
  6b0be3:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  6b0be9:	81 c9 00 00 12 00    	or     $0x120000,%ecx
  6b0bef:	89 48 14             	mov    %ecx,0x14(%rax)
  6b0bf2:	eb 3f                	jmp    6b0c33 <http_parser_execute+0x1723>
  6b0bf4:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b0bf8:	8b 48 14             	mov    0x14(%rax),%ecx
  6b0bfb:	81 e1 ff ff 00 ff    	and    $0xff00ffff,%ecx
  6b0c01:	81 c9 00 00 20 00    	or     $0x200000,%ecx
  6b0c07:	89 48 14             	mov    %ecx,0x14(%rax)
  6b0c0a:	eb 27                	jmp    6b0c33 <http_parser_execute+0x1723>
  6b0c0c:	eb 00                	jmp    6b0c0e <http_parser_execute+0x16fe>
  6b0c0e:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b0c11:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b0c15:	89 41 04             	mov    %eax,0x4(%rcx)
  6b0c18:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b0c1c:	8b 48 14             	mov    0x14(%rax),%ecx
  6b0c1f:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b0c25:	81 c9 00 00 00 10    	or     $0x10000000,%ecx
  6b0c2b:	89 48 14             	mov    %ecx,0x14(%rax)
  6b0c2e:	e9 5d 45 00 00       	jmpq   6b5190 <http_parser_execute+0x5c80>
  6b0c33:	eb 27                	jmp    6b0c5c <http_parser_execute+0x174c>
  6b0c35:	eb 00                	jmp    6b0c37 <http_parser_execute+0x1727>
  6b0c37:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b0c3a:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b0c3e:	89 41 04             	mov    %eax,0x4(%rcx)
  6b0c41:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b0c45:	8b 48 14             	mov    0x14(%rax),%ecx
  6b0c48:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b0c4e:	81 c9 00 00 00 10    	or     $0x10000000,%ecx
  6b0c54:	89 48 14             	mov    %ecx,0x14(%rax)
  6b0c57:	e9 34 45 00 00       	jmpq   6b5190 <http_parser_execute+0x5c80>
  6b0c5c:	eb 00                	jmp    6b0c5e <http_parser_execute+0x174e>
  6b0c5e:	eb 00                	jmp    6b0c60 <http_parser_execute+0x1750>
  6b0c60:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b0c64:	8b 08                	mov    (%rax),%ecx
  6b0c66:	c1 e9 18             	shr    $0x18,%ecx
  6b0c69:	83 e1 1f             	and    $0x1f,%ecx
  6b0c6c:	83 c1 01             	add    $0x1,%ecx
  6b0c6f:	8b 10                	mov    (%rax),%edx
  6b0c71:	83 e1 1f             	and    $0x1f,%ecx
  6b0c74:	c1 e1 18             	shl    $0x18,%ecx
  6b0c77:	81 e2 ff ff ff e0    	and    $0xe0ffffff,%edx
  6b0c7d:	09 ca                	or     %ecx,%edx
  6b0c7f:	89 10                	mov    %edx,(%rax)
  6b0c81:	e9 7f 3d 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6b0c86:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b0c8a:	83 f8 20             	cmp    $0x20,%eax
  6b0c8d:	75 05                	jne    6b0c94 <http_parser_execute+0x1784>
  6b0c8f:	e9 71 3d 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6b0c94:	eb 00                	jmp    6b0c96 <http_parser_execute+0x1786>
  6b0c96:	48 83 7d 90 00       	cmpq   $0x0,-0x70(%rbp)
  6b0c9b:	75 08                	jne    6b0ca5 <http_parser_execute+0x1795>
  6b0c9d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b0ca1:	48 89 45 90          	mov    %rax,-0x70(%rbp)
  6b0ca5:	eb 00                	jmp    6b0ca7 <http_parser_execute+0x1797>
  6b0ca7:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b0cab:	8b 40 14             	mov    0x14(%rax),%eax
  6b0cae:	c1 e8 10             	shr    $0x10,%eax
  6b0cb1:	25 ff 00 00 00       	and    $0xff,%eax
  6b0cb6:	83 f8 05             	cmp    $0x5,%eax
  6b0cb9:	75 07                	jne    6b0cc2 <http_parser_execute+0x17b2>
  6b0cbb:	c7 45 ec 18 00 00 00 	movl   $0x18,-0x14(%rbp)
  6b0cc2:	8b 7d ec             	mov    -0x14(%rbp),%edi
  6b0cc5:	0f be 75 ff          	movsbl -0x1(%rbp),%esi
  6b0cc9:	e8 42 45 00 00       	callq  6b5210 <parse_url_char>
  6b0cce:	89 45 ec             	mov    %eax,-0x14(%rbp)
  6b0cd1:	83 7d ec 01          	cmpl   $0x1,-0x14(%rbp)
  6b0cd5:	0f 94 c0             	sete   %al
  6b0cd8:	34 ff                	xor    $0xff,%al
  6b0cda:	34 ff                	xor    $0xff,%al
  6b0cdc:	24 01                	and    $0x1,%al
  6b0cde:	0f b6 c0             	movzbl %al,%eax
  6b0ce1:	48 98                	cltq   
  6b0ce3:	48 83 f8 00          	cmp    $0x0,%rax
  6b0ce7:	74 27                	je     6b0d10 <http_parser_execute+0x1800>
  6b0ce9:	eb 00                	jmp    6b0ceb <http_parser_execute+0x17db>
  6b0ceb:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b0cee:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b0cf2:	89 41 04             	mov    %eax,0x4(%rcx)
  6b0cf5:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b0cf9:	8b 48 14             	mov    0x14(%rax),%ecx
  6b0cfc:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b0d02:	81 c9 00 00 00 11    	or     $0x11000000,%ecx
  6b0d08:	89 48 14             	mov    %ecx,0x14(%rax)
  6b0d0b:	e9 80 44 00 00       	jmpq   6b5190 <http_parser_execute+0x5c80>
  6b0d10:	e9 f0 3c 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6b0d15:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b0d19:	89 c1                	mov    %eax,%ecx
  6b0d1b:	83 e9 0a             	sub    $0xa,%ecx
  6b0d1e:	74 12                	je     6b0d32 <http_parser_execute+0x1822>
  6b0d20:	eb 00                	jmp    6b0d22 <http_parser_execute+0x1812>
  6b0d22:	89 c1                	mov    %eax,%ecx
  6b0d24:	83 e9 0d             	sub    $0xd,%ecx
  6b0d27:	74 09                	je     6b0d32 <http_parser_execute+0x1822>
  6b0d29:	eb 00                	jmp    6b0d2b <http_parser_execute+0x181b>
  6b0d2b:	83 e8 20             	sub    $0x20,%eax
  6b0d2e:	75 29                	jne    6b0d59 <http_parser_execute+0x1849>
  6b0d30:	eb 00                	jmp    6b0d32 <http_parser_execute+0x1822>
  6b0d32:	eb 00                	jmp    6b0d34 <http_parser_execute+0x1824>
  6b0d34:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b0d37:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b0d3b:	89 41 04             	mov    %eax,0x4(%rcx)
  6b0d3e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b0d42:	8b 48 14             	mov    0x14(%rax),%ecx
  6b0d45:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b0d4b:	81 c9 00 00 00 11    	or     $0x11000000,%ecx
  6b0d51:	89 48 14             	mov    %ecx,0x14(%rax)
  6b0d54:	e9 37 44 00 00       	jmpq   6b5190 <http_parser_execute+0x5c80>
  6b0d59:	8b 7d ec             	mov    -0x14(%rbp),%edi
  6b0d5c:	0f be 75 ff          	movsbl -0x1(%rbp),%esi
  6b0d60:	e8 ab 44 00 00       	callq  6b5210 <parse_url_char>
  6b0d65:	89 45 ec             	mov    %eax,-0x14(%rbp)
  6b0d68:	83 7d ec 01          	cmpl   $0x1,-0x14(%rbp)
  6b0d6c:	0f 94 c0             	sete   %al
  6b0d6f:	34 ff                	xor    $0xff,%al
  6b0d71:	34 ff                	xor    $0xff,%al
  6b0d73:	24 01                	and    $0x1,%al
  6b0d75:	0f b6 c0             	movzbl %al,%eax
  6b0d78:	48 98                	cltq   
  6b0d7a:	48 83 f8 00          	cmp    $0x0,%rax
  6b0d7e:	74 27                	je     6b0da7 <http_parser_execute+0x1897>
  6b0d80:	eb 00                	jmp    6b0d82 <http_parser_execute+0x1872>
  6b0d82:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b0d85:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b0d89:	89 41 04             	mov    %eax,0x4(%rcx)
  6b0d8c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b0d90:	8b 48 14             	mov    0x14(%rax),%ecx
  6b0d93:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b0d99:	81 c9 00 00 00 11    	or     $0x11000000,%ecx
  6b0d9f:	89 48 14             	mov    %ecx,0x14(%rax)
  6b0da2:	e9 e9 43 00 00       	jmpq   6b5190 <http_parser_execute+0x5c80>
  6b0da7:	eb 00                	jmp    6b0da9 <http_parser_execute+0x1899>
  6b0da9:	e9 57 3c 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6b0dae:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b0db2:	89 c1                	mov    %eax,%ecx
  6b0db4:	83 e9 0a             	sub    $0xa,%ecx
  6b0db7:	0f 84 80 01 00 00    	je     6b0f3d <http_parser_execute+0x1a2d>
  6b0dbd:	eb 00                	jmp    6b0dbf <http_parser_execute+0x18af>
  6b0dbf:	89 c1                	mov    %eax,%ecx
  6b0dc1:	83 e9 0d             	sub    $0xd,%ecx
  6b0dc4:	0f 84 73 01 00 00    	je     6b0f3d <http_parser_execute+0x1a2d>
  6b0dca:	eb 00                	jmp    6b0dcc <http_parser_execute+0x18bc>
  6b0dcc:	83 e8 20             	sub    $0x20,%eax
  6b0dcf:	0f 85 ef 02 00 00    	jne    6b10c4 <http_parser_execute+0x1bb4>
  6b0dd5:	eb 00                	jmp    6b0dd7 <http_parser_execute+0x18c7>
  6b0dd7:	c7 45 ec 20 00 00 00 	movl   $0x20,-0x14(%rbp)
  6b0dde:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b0de2:	8b 40 14             	mov    0x14(%rax),%eax
  6b0de5:	c1 e8 18             	shr    $0x18,%eax
  6b0de8:	83 e0 7f             	and    $0x7f,%eax
  6b0deb:	83 f8 00             	cmp    $0x0,%eax
  6b0dee:	75 02                	jne    6b0df2 <http_parser_execute+0x18e2>
  6b0df0:	eb 28                	jmp    6b0e1a <http_parser_execute+0x190a>
  6b0df2:	48 bf 00 2e 20 00 00 	movabs $0x202e00,%rdi
  6b0df9:	00 00 00 
  6b0dfc:	48 be f5 2b 20 00 00 	movabs $0x202bf5,%rsi
  6b0e03:	00 00 00 
  6b0e06:	48 b9 37 6e 20 00 00 	movabs $0x206e37,%rcx
  6b0e0d:	00 00 00 
  6b0e10:	ba 34 04 00 00       	mov    $0x434,%edx
  6b0e15:	e8 76 ab 00 00       	callq  6bb990 <__assert_fail@plt>
  6b0e1a:	48 83 7d 90 00       	cmpq   $0x0,-0x70(%rbp)
  6b0e1f:	0f 84 11 01 00 00    	je     6b0f36 <http_parser_execute+0x1a26>
  6b0e25:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6b0e29:	48 83 78 08 00       	cmpq   $0x0,0x8(%rax)
  6b0e2e:	0f 95 c0             	setne  %al
  6b0e31:	34 ff                	xor    $0xff,%al
  6b0e33:	34 ff                	xor    $0xff,%al
  6b0e35:	24 01                	and    $0x1,%al
  6b0e37:	0f b6 c0             	movzbl %al,%eax
  6b0e3a:	48 98                	cltq   
  6b0e3c:	48 83 f8 00          	cmp    $0x0,%rax
  6b0e40:	0f 84 e8 00 00 00    	je     6b0f2e <http_parser_execute+0x1a1e>
  6b0e46:	8b 45 ec             	mov    -0x14(%rbp),%eax
  6b0e49:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b0e4d:	8b 11                	mov    (%rcx),%edx
  6b0e4f:	83 e0 7f             	and    $0x7f,%eax
  6b0e52:	c1 e0 0a             	shl    $0xa,%eax
  6b0e55:	81 e2 ff 03 fe ff    	and    $0xfffe03ff,%edx
  6b0e5b:	09 c2                	or     %eax,%edx
  6b0e5d:	89 11                	mov    %edx,(%rcx)
  6b0e5f:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6b0e63:	48 8b 48 08          	mov    0x8(%rax),%rcx
  6b0e67:	48 b8 40 b8 6b 00 00 	movabs $0x6bb840,%rax
  6b0e6e:	00 00 00 
  6b0e71:	48 89 ca             	mov    %rcx,%rdx
  6b0e74:	48 29 c2             	sub    %rax,%rdx
  6b0e77:	48 89 d0             	mov    %rdx,%rax
  6b0e7a:	48 c1 e8 03          	shr    $0x3,%rax
  6b0e7e:	48 c1 e2 3d          	shl    $0x3d,%rdx
  6b0e82:	48 09 d0             	or     %rdx,%rax
  6b0e85:	48 83 f8 0f          	cmp    $0xf,%rax
  6b0e89:	76 05                	jbe    6b0e90 <http_parser_execute+0x1980>
  6b0e8b:	67 0f b9 40 02       	ud1    0x2(%eax),%eax
  6b0e90:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b0e94:	48 8b 75 90          	mov    -0x70(%rbp),%rsi
  6b0e98:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  6b0e9c:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  6b0ea0:	48 29 c2             	sub    %rax,%rdx
  6b0ea3:	ff d1                	callq  *%rcx
  6b0ea5:	31 c9                	xor    %ecx,%ecx
  6b0ea7:	39 c1                	cmp    %eax,%ecx
  6b0ea9:	0f 95 c0             	setne  %al
  6b0eac:	34 ff                	xor    $0xff,%al
  6b0eae:	34 ff                	xor    $0xff,%al
  6b0eb0:	24 01                	and    $0x1,%al
  6b0eb2:	0f b6 c0             	movzbl %al,%eax
  6b0eb5:	48 98                	cltq   
  6b0eb7:	48 83 f8 00          	cmp    $0x0,%rax
  6b0ebb:	74 24                	je     6b0ee1 <http_parser_execute+0x19d1>
  6b0ebd:	eb 00                	jmp    6b0ebf <http_parser_execute+0x19af>
  6b0ebf:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b0ec2:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b0ec6:	89 41 04             	mov    %eax,0x4(%rcx)
  6b0ec9:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b0ecd:	8b 48 14             	mov    0x14(%rax),%ecx
  6b0ed0:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b0ed6:	81 c9 00 00 00 02    	or     $0x2000000,%ecx
  6b0edc:	89 48 14             	mov    %ecx,0x14(%rax)
  6b0edf:	eb 00                	jmp    6b0ee1 <http_parser_execute+0x19d1>
  6b0ee1:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b0ee5:	8b 00                	mov    (%rax),%eax
  6b0ee7:	c1 e8 0a             	shr    $0xa,%eax
  6b0eea:	83 e0 7f             	and    $0x7f,%eax
  6b0eed:	89 45 ec             	mov    %eax,-0x14(%rbp)
  6b0ef0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b0ef4:	8b 40 14             	mov    0x14(%rax),%eax
  6b0ef7:	c1 e8 18             	shr    $0x18,%eax
  6b0efa:	83 e0 7f             	and    $0x7f,%eax
  6b0efd:	83 f8 00             	cmp    $0x0,%eax
  6b0f00:	0f 95 c0             	setne  %al
  6b0f03:	34 ff                	xor    $0xff,%al
  6b0f05:	34 ff                	xor    $0xff,%al
  6b0f07:	24 01                	and    $0x1,%al
  6b0f09:	0f b6 c0             	movzbl %al,%eax
  6b0f0c:	48 98                	cltq   
  6b0f0e:	48 83 f8 00          	cmp    $0x0,%rax
  6b0f12:	74 18                	je     6b0f2c <http_parser_execute+0x1a1c>
  6b0f14:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b0f18:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  6b0f1c:	48 29 c8             	sub    %rcx,%rax
  6b0f1f:	48 83 c0 01          	add    $0x1,%rax
  6b0f23:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  6b0f27:	e9 ce 42 00 00       	jmpq   6b51fa <http_parser_execute+0x5cea>
  6b0f2c:	eb 00                	jmp    6b0f2e <http_parser_execute+0x1a1e>
  6b0f2e:	48 c7 45 90 00 00 00 	movq   $0x0,-0x70(%rbp)
  6b0f35:	00 
  6b0f36:	eb 00                	jmp    6b0f38 <http_parser_execute+0x1a28>
  6b0f38:	e9 d7 01 00 00       	jmpq   6b1114 <http_parser_execute+0x1c04>
  6b0f3d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b0f41:	66 c7 40 10 00 00    	movw   $0x0,0x10(%rax)
  6b0f47:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b0f4b:	66 c7 40 12 09 00    	movw   $0x9,0x12(%rax)
  6b0f51:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b0f55:	b9 2c 00 00 00       	mov    $0x2c,%ecx
  6b0f5a:	ba 2b 00 00 00       	mov    $0x2b,%edx
  6b0f5f:	83 f8 0d             	cmp    $0xd,%eax
  6b0f62:	0f 44 ca             	cmove  %edx,%ecx
  6b0f65:	89 4d ec             	mov    %ecx,-0x14(%rbp)
  6b0f68:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b0f6c:	8b 40 14             	mov    0x14(%rax),%eax
  6b0f6f:	c1 e8 18             	shr    $0x18,%eax
  6b0f72:	83 e0 7f             	and    $0x7f,%eax
  6b0f75:	83 f8 00             	cmp    $0x0,%eax
  6b0f78:	75 02                	jne    6b0f7c <http_parser_execute+0x1a6c>
  6b0f7a:	eb 28                	jmp    6b0fa4 <http_parser_execute+0x1a94>
  6b0f7c:	48 bf 00 2e 20 00 00 	movabs $0x202e00,%rdi
  6b0f83:	00 00 00 
  6b0f86:	48 be f5 2b 20 00 00 	movabs $0x202bf5,%rsi
  6b0f8d:	00 00 00 
  6b0f90:	48 b9 37 6e 20 00 00 	movabs $0x206e37,%rcx
  6b0f97:	00 00 00 
  6b0f9a:	ba 3d 04 00 00       	mov    $0x43d,%edx
  6b0f9f:	e8 ec a9 00 00       	callq  6bb990 <__assert_fail@plt>
  6b0fa4:	48 83 7d 90 00       	cmpq   $0x0,-0x70(%rbp)
  6b0fa9:	0f 84 11 01 00 00    	je     6b10c0 <http_parser_execute+0x1bb0>
  6b0faf:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6b0fb3:	48 83 78 08 00       	cmpq   $0x0,0x8(%rax)
  6b0fb8:	0f 95 c0             	setne  %al
  6b0fbb:	34 ff                	xor    $0xff,%al
  6b0fbd:	34 ff                	xor    $0xff,%al
  6b0fbf:	24 01                	and    $0x1,%al
  6b0fc1:	0f b6 c0             	movzbl %al,%eax
  6b0fc4:	48 98                	cltq   
  6b0fc6:	48 83 f8 00          	cmp    $0x0,%rax
  6b0fca:	0f 84 e8 00 00 00    	je     6b10b8 <http_parser_execute+0x1ba8>
  6b0fd0:	8b 45 ec             	mov    -0x14(%rbp),%eax
  6b0fd3:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b0fd7:	8b 11                	mov    (%rcx),%edx
  6b0fd9:	83 e0 7f             	and    $0x7f,%eax
  6b0fdc:	c1 e0 0a             	shl    $0xa,%eax
  6b0fdf:	81 e2 ff 03 fe ff    	and    $0xfffe03ff,%edx
  6b0fe5:	09 c2                	or     %eax,%edx
  6b0fe7:	89 11                	mov    %edx,(%rcx)
  6b0fe9:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6b0fed:	48 8b 48 08          	mov    0x8(%rax),%rcx
  6b0ff1:	48 b8 40 b8 6b 00 00 	movabs $0x6bb840,%rax
  6b0ff8:	00 00 00 
  6b0ffb:	48 89 ca             	mov    %rcx,%rdx
  6b0ffe:	48 29 c2             	sub    %rax,%rdx
  6b1001:	48 89 d0             	mov    %rdx,%rax
  6b1004:	48 c1 e8 03          	shr    $0x3,%rax
  6b1008:	48 c1 e2 3d          	shl    $0x3d,%rdx
  6b100c:	48 09 d0             	or     %rdx,%rax
  6b100f:	48 83 f8 0f          	cmp    $0xf,%rax
  6b1013:	76 05                	jbe    6b101a <http_parser_execute+0x1b0a>
  6b1015:	67 0f b9 40 02       	ud1    0x2(%eax),%eax
  6b101a:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b101e:	48 8b 75 90          	mov    -0x70(%rbp),%rsi
  6b1022:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  6b1026:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  6b102a:	48 29 c2             	sub    %rax,%rdx
  6b102d:	ff d1                	callq  *%rcx
  6b102f:	31 c9                	xor    %ecx,%ecx
  6b1031:	39 c1                	cmp    %eax,%ecx
  6b1033:	0f 95 c0             	setne  %al
  6b1036:	34 ff                	xor    $0xff,%al
  6b1038:	34 ff                	xor    $0xff,%al
  6b103a:	24 01                	and    $0x1,%al
  6b103c:	0f b6 c0             	movzbl %al,%eax
  6b103f:	48 98                	cltq   
  6b1041:	48 83 f8 00          	cmp    $0x0,%rax
  6b1045:	74 24                	je     6b106b <http_parser_execute+0x1b5b>
  6b1047:	eb 00                	jmp    6b1049 <http_parser_execute+0x1b39>
  6b1049:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b104c:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b1050:	89 41 04             	mov    %eax,0x4(%rcx)
  6b1053:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b1057:	8b 48 14             	mov    0x14(%rax),%ecx
  6b105a:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b1060:	81 c9 00 00 00 02    	or     $0x2000000,%ecx
  6b1066:	89 48 14             	mov    %ecx,0x14(%rax)
  6b1069:	eb 00                	jmp    6b106b <http_parser_execute+0x1b5b>
  6b106b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b106f:	8b 00                	mov    (%rax),%eax
  6b1071:	c1 e8 0a             	shr    $0xa,%eax
  6b1074:	83 e0 7f             	and    $0x7f,%eax
  6b1077:	89 45 ec             	mov    %eax,-0x14(%rbp)
  6b107a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b107e:	8b 40 14             	mov    0x14(%rax),%eax
  6b1081:	c1 e8 18             	shr    $0x18,%eax
  6b1084:	83 e0 7f             	and    $0x7f,%eax
  6b1087:	83 f8 00             	cmp    $0x0,%eax
  6b108a:	0f 95 c0             	setne  %al
  6b108d:	34 ff                	xor    $0xff,%al
  6b108f:	34 ff                	xor    $0xff,%al
  6b1091:	24 01                	and    $0x1,%al
  6b1093:	0f b6 c0             	movzbl %al,%eax
  6b1096:	48 98                	cltq   
  6b1098:	48 83 f8 00          	cmp    $0x0,%rax
  6b109c:	74 18                	je     6b10b6 <http_parser_execute+0x1ba6>
  6b109e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b10a2:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  6b10a6:	48 29 c8             	sub    %rcx,%rax
  6b10a9:	48 83 c0 01          	add    $0x1,%rax
  6b10ad:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  6b10b1:	e9 44 41 00 00       	jmpq   6b51fa <http_parser_execute+0x5cea>
  6b10b6:	eb 00                	jmp    6b10b8 <http_parser_execute+0x1ba8>
  6b10b8:	48 c7 45 90 00 00 00 	movq   $0x0,-0x70(%rbp)
  6b10bf:	00 
  6b10c0:	eb 00                	jmp    6b10c2 <http_parser_execute+0x1bb2>
  6b10c2:	eb 50                	jmp    6b1114 <http_parser_execute+0x1c04>
  6b10c4:	8b 7d ec             	mov    -0x14(%rbp),%edi
  6b10c7:	0f be 75 ff          	movsbl -0x1(%rbp),%esi
  6b10cb:	e8 40 41 00 00       	callq  6b5210 <parse_url_char>
  6b10d0:	89 45 ec             	mov    %eax,-0x14(%rbp)
  6b10d3:	83 7d ec 01          	cmpl   $0x1,-0x14(%rbp)
  6b10d7:	0f 94 c0             	sete   %al
  6b10da:	34 ff                	xor    $0xff,%al
  6b10dc:	34 ff                	xor    $0xff,%al
  6b10de:	24 01                	and    $0x1,%al
  6b10e0:	0f b6 c0             	movzbl %al,%eax
  6b10e3:	48 98                	cltq   
  6b10e5:	48 83 f8 00          	cmp    $0x0,%rax
  6b10e9:	74 27                	je     6b1112 <http_parser_execute+0x1c02>
  6b10eb:	eb 00                	jmp    6b10ed <http_parser_execute+0x1bdd>
  6b10ed:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b10f0:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b10f4:	89 41 04             	mov    %eax,0x4(%rcx)
  6b10f7:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b10fb:	8b 48 14             	mov    0x14(%rax),%ecx
  6b10fe:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b1104:	81 c9 00 00 00 11    	or     $0x11000000,%ecx
  6b110a:	89 48 14             	mov    %ecx,0x14(%rax)
  6b110d:	e9 7e 40 00 00       	jmpq   6b5190 <http_parser_execute+0x5c80>
  6b1112:	eb 00                	jmp    6b1114 <http_parser_execute+0x1c04>
  6b1114:	e9 ec 38 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6b1119:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b111d:	89 c1                	mov    %eax,%ecx
  6b111f:	83 e9 20             	sub    $0x20,%ecx
  6b1122:	74 12                	je     6b1136 <http_parser_execute+0x1c26>
  6b1124:	eb 00                	jmp    6b1126 <http_parser_execute+0x1c16>
  6b1126:	89 c1                	mov    %eax,%ecx
  6b1128:	83 e9 48             	sub    $0x48,%ecx
  6b112b:	74 0b                	je     6b1138 <http_parser_execute+0x1c28>
  6b112d:	eb 00                	jmp    6b112f <http_parser_execute+0x1c1f>
  6b112f:	83 e8 49             	sub    $0x49,%eax
  6b1132:	74 0d                	je     6b1141 <http_parser_execute+0x1c31>
  6b1134:	eb 2a                	jmp    6b1160 <http_parser_execute+0x1c50>
  6b1136:	eb 51                	jmp    6b1189 <http_parser_execute+0x1c79>
  6b1138:	c7 45 ec 21 00 00 00 	movl   $0x21,-0x14(%rbp)
  6b113f:	eb 48                	jmp    6b1189 <http_parser_execute+0x1c79>
  6b1141:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b1145:	8b 40 14             	mov    0x14(%rax),%eax
  6b1148:	c1 e8 10             	shr    $0x10,%eax
  6b114b:	25 ff 00 00 00       	and    $0xff,%eax
  6b1150:	83 f8 21             	cmp    $0x21,%eax
  6b1153:	75 09                	jne    6b115e <http_parser_execute+0x1c4e>
  6b1155:	c7 45 ec 25 00 00 00 	movl   $0x25,-0x14(%rbp)
  6b115c:	eb 2b                	jmp    6b1189 <http_parser_execute+0x1c79>
  6b115e:	eb 02                	jmp    6b1162 <http_parser_execute+0x1c52>
  6b1160:	eb 00                	jmp    6b1162 <http_parser_execute+0x1c52>
  6b1162:	eb 00                	jmp    6b1164 <http_parser_execute+0x1c54>
  6b1164:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b1167:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b116b:	89 41 04             	mov    %eax,0x4(%rcx)
  6b116e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b1172:	8b 48 14             	mov    0x14(%rax),%ecx
  6b1175:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b117b:	81 c9 00 00 00 1c    	or     $0x1c000000,%ecx
  6b1181:	89 48 14             	mov    %ecx,0x14(%rax)
  6b1184:	e9 07 40 00 00       	jmpq   6b5190 <http_parser_execute+0x5c80>
  6b1189:	e9 77 38 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6b118e:	eb 00                	jmp    6b1190 <http_parser_execute+0x1c80>
  6b1190:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b1194:	83 f8 54             	cmp    $0x54,%eax
  6b1197:	74 27                	je     6b11c0 <http_parser_execute+0x1cb0>
  6b1199:	eb 00                	jmp    6b119b <http_parser_execute+0x1c8b>
  6b119b:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b119e:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b11a2:	89 41 04             	mov    %eax,0x4(%rcx)
  6b11a5:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b11a9:	8b 48 14             	mov    0x14(%rax),%ecx
  6b11ac:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b11b2:	81 c9 00 00 00 1e    	or     $0x1e000000,%ecx
  6b11b8:	89 48 14             	mov    %ecx,0x14(%rax)
  6b11bb:	e9 d0 3f 00 00       	jmpq   6b5190 <http_parser_execute+0x5c80>
  6b11c0:	eb 00                	jmp    6b11c2 <http_parser_execute+0x1cb2>
  6b11c2:	c7 45 ec 22 00 00 00 	movl   $0x22,-0x14(%rbp)
  6b11c9:	e9 37 38 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6b11ce:	eb 00                	jmp    6b11d0 <http_parser_execute+0x1cc0>
  6b11d0:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b11d4:	83 f8 54             	cmp    $0x54,%eax
  6b11d7:	74 27                	je     6b1200 <http_parser_execute+0x1cf0>
  6b11d9:	eb 00                	jmp    6b11db <http_parser_execute+0x1ccb>
  6b11db:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b11de:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b11e2:	89 41 04             	mov    %eax,0x4(%rcx)
  6b11e5:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b11e9:	8b 48 14             	mov    0x14(%rax),%ecx
  6b11ec:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b11f2:	81 c9 00 00 00 1e    	or     $0x1e000000,%ecx
  6b11f8:	89 48 14             	mov    %ecx,0x14(%rax)
  6b11fb:	e9 90 3f 00 00       	jmpq   6b5190 <http_parser_execute+0x5c80>
  6b1200:	eb 00                	jmp    6b1202 <http_parser_execute+0x1cf2>
  6b1202:	c7 45 ec 23 00 00 00 	movl   $0x23,-0x14(%rbp)
  6b1209:	e9 f7 37 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6b120e:	eb 00                	jmp    6b1210 <http_parser_execute+0x1d00>
  6b1210:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b1214:	83 f8 50             	cmp    $0x50,%eax
  6b1217:	74 27                	je     6b1240 <http_parser_execute+0x1d30>
  6b1219:	eb 00                	jmp    6b121b <http_parser_execute+0x1d0b>
  6b121b:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b121e:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b1222:	89 41 04             	mov    %eax,0x4(%rcx)
  6b1225:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b1229:	8b 48 14             	mov    0x14(%rax),%ecx
  6b122c:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b1232:	81 c9 00 00 00 1e    	or     $0x1e000000,%ecx
  6b1238:	89 48 14             	mov    %ecx,0x14(%rax)
  6b123b:	e9 50 3f 00 00       	jmpq   6b5190 <http_parser_execute+0x5c80>
  6b1240:	eb 00                	jmp    6b1242 <http_parser_execute+0x1d32>
  6b1242:	c7 45 ec 24 00 00 00 	movl   $0x24,-0x14(%rbp)
  6b1249:	e9 b7 37 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6b124e:	eb 00                	jmp    6b1250 <http_parser_execute+0x1d40>
  6b1250:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b1254:	83 f8 43             	cmp    $0x43,%eax
  6b1257:	74 27                	je     6b1280 <http_parser_execute+0x1d70>
  6b1259:	eb 00                	jmp    6b125b <http_parser_execute+0x1d4b>
  6b125b:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b125e:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b1262:	89 41 04             	mov    %eax,0x4(%rcx)
  6b1265:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b1269:	8b 48 14             	mov    0x14(%rax),%ecx
  6b126c:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b1272:	81 c9 00 00 00 1e    	or     $0x1e000000,%ecx
  6b1278:	89 48 14             	mov    %ecx,0x14(%rax)
  6b127b:	e9 10 3f 00 00       	jmpq   6b5190 <http_parser_execute+0x5c80>
  6b1280:	eb 00                	jmp    6b1282 <http_parser_execute+0x1d72>
  6b1282:	c7 45 ec 26 00 00 00 	movl   $0x26,-0x14(%rbp)
  6b1289:	e9 77 37 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6b128e:	eb 00                	jmp    6b1290 <http_parser_execute+0x1d80>
  6b1290:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b1294:	83 f8 45             	cmp    $0x45,%eax
  6b1297:	74 27                	je     6b12c0 <http_parser_execute+0x1db0>
  6b1299:	eb 00                	jmp    6b129b <http_parser_execute+0x1d8b>
  6b129b:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b129e:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b12a2:	89 41 04             	mov    %eax,0x4(%rcx)
  6b12a5:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b12a9:	8b 48 14             	mov    0x14(%rax),%ecx
  6b12ac:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b12b2:	81 c9 00 00 00 1e    	or     $0x1e000000,%ecx
  6b12b8:	89 48 14             	mov    %ecx,0x14(%rax)
  6b12bb:	e9 d0 3e 00 00       	jmpq   6b5190 <http_parser_execute+0x5c80>
  6b12c0:	eb 00                	jmp    6b12c2 <http_parser_execute+0x1db2>
  6b12c2:	c7 45 ec 24 00 00 00 	movl   $0x24,-0x14(%rbp)
  6b12c9:	e9 37 37 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6b12ce:	eb 00                	jmp    6b12d0 <http_parser_execute+0x1dc0>
  6b12d0:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b12d4:	83 f8 2f             	cmp    $0x2f,%eax
  6b12d7:	74 27                	je     6b1300 <http_parser_execute+0x1df0>
  6b12d9:	eb 00                	jmp    6b12db <http_parser_execute+0x1dcb>
  6b12db:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b12de:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b12e2:	89 41 04             	mov    %eax,0x4(%rcx)
  6b12e5:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b12e9:	8b 48 14             	mov    0x14(%rax),%ecx
  6b12ec:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b12f2:	81 c9 00 00 00 1e    	or     $0x1e000000,%ecx
  6b12f8:	89 48 14             	mov    %ecx,0x14(%rax)
  6b12fb:	e9 90 3e 00 00       	jmpq   6b5190 <http_parser_execute+0x5c80>
  6b1300:	eb 00                	jmp    6b1302 <http_parser_execute+0x1df2>
  6b1302:	c7 45 ec 27 00 00 00 	movl   $0x27,-0x14(%rbp)
  6b1309:	e9 f7 36 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6b130e:	0f be 4d ff          	movsbl -0x1(%rbp),%ecx
  6b1312:	31 c0                	xor    %eax,%eax
  6b1314:	83 f9 30             	cmp    $0x30,%ecx
  6b1317:	7c 0a                	jl     6b1323 <http_parser_execute+0x1e13>
  6b1319:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b131d:	83 f8 39             	cmp    $0x39,%eax
  6b1320:	0f 9e c0             	setle  %al
  6b1323:	34 ff                	xor    $0xff,%al
  6b1325:	34 ff                	xor    $0xff,%al
  6b1327:	34 ff                	xor    $0xff,%al
  6b1329:	24 01                	and    $0x1,%al
  6b132b:	0f b6 c0             	movzbl %al,%eax
  6b132e:	48 98                	cltq   
  6b1330:	48 83 f8 00          	cmp    $0x0,%rax
  6b1334:	74 27                	je     6b135d <http_parser_execute+0x1e4d>
  6b1336:	eb 00                	jmp    6b1338 <http_parser_execute+0x1e28>
  6b1338:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b133b:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b133f:	89 41 04             	mov    %eax,0x4(%rcx)
  6b1342:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b1346:	8b 48 14             	mov    0x14(%rax),%ecx
  6b1349:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b134f:	81 c9 00 00 00 0e    	or     $0xe000000,%ecx
  6b1355:	89 48 14             	mov    %ecx,0x14(%rax)
  6b1358:	e9 33 3e 00 00       	jmpq   6b5190 <http_parser_execute+0x5c80>
  6b135d:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b1361:	83 e8 30             	sub    $0x30,%eax
  6b1364:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b1368:	66 89 41 10          	mov    %ax,0x10(%rcx)
  6b136c:	c7 45 ec 28 00 00 00 	movl   $0x28,-0x14(%rbp)
  6b1373:	e9 8d 36 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6b1378:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b137c:	83 f8 2e             	cmp    $0x2e,%eax
  6b137f:	0f 95 c0             	setne  %al
  6b1382:	34 ff                	xor    $0xff,%al
  6b1384:	34 ff                	xor    $0xff,%al
  6b1386:	24 01                	and    $0x1,%al
  6b1388:	0f b6 c0             	movzbl %al,%eax
  6b138b:	48 98                	cltq   
  6b138d:	48 83 f8 00          	cmp    $0x0,%rax
  6b1391:	74 27                	je     6b13ba <http_parser_execute+0x1eaa>
  6b1393:	eb 00                	jmp    6b1395 <http_parser_execute+0x1e85>
  6b1395:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b1398:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b139c:	89 41 04             	mov    %eax,0x4(%rcx)
  6b139f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b13a3:	8b 48 14             	mov    0x14(%rax),%ecx
  6b13a6:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b13ac:	81 c9 00 00 00 0e    	or     $0xe000000,%ecx
  6b13b2:	89 48 14             	mov    %ecx,0x14(%rax)
  6b13b5:	e9 d6 3d 00 00       	jmpq   6b5190 <http_parser_execute+0x5c80>
  6b13ba:	c7 45 ec 29 00 00 00 	movl   $0x29,-0x14(%rbp)
  6b13c1:	e9 3f 36 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6b13c6:	0f be 4d ff          	movsbl -0x1(%rbp),%ecx
  6b13ca:	31 c0                	xor    %eax,%eax
  6b13cc:	83 f9 30             	cmp    $0x30,%ecx
  6b13cf:	7c 0a                	jl     6b13db <http_parser_execute+0x1ecb>
  6b13d1:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b13d5:	83 f8 39             	cmp    $0x39,%eax
  6b13d8:	0f 9e c0             	setle  %al
  6b13db:	34 ff                	xor    $0xff,%al
  6b13dd:	34 ff                	xor    $0xff,%al
  6b13df:	34 ff                	xor    $0xff,%al
  6b13e1:	24 01                	and    $0x1,%al
  6b13e3:	0f b6 c0             	movzbl %al,%eax
  6b13e6:	48 98                	cltq   
  6b13e8:	48 83 f8 00          	cmp    $0x0,%rax
  6b13ec:	74 27                	je     6b1415 <http_parser_execute+0x1f05>
  6b13ee:	eb 00                	jmp    6b13f0 <http_parser_execute+0x1ee0>
  6b13f0:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b13f3:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b13f7:	89 41 04             	mov    %eax,0x4(%rcx)
  6b13fa:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b13fe:	8b 48 14             	mov    0x14(%rax),%ecx
  6b1401:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b1407:	81 c9 00 00 00 0e    	or     $0xe000000,%ecx
  6b140d:	89 48 14             	mov    %ecx,0x14(%rax)
  6b1410:	e9 7b 3d 00 00       	jmpq   6b5190 <http_parser_execute+0x5c80>
  6b1415:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b1419:	83 e8 30             	sub    $0x30,%eax
  6b141c:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b1420:	66 89 41 12          	mov    %ax,0x12(%rcx)
  6b1424:	c7 45 ec 2a 00 00 00 	movl   $0x2a,-0x14(%rbp)
  6b142b:	e9 d5 35 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6b1430:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b1434:	83 f8 0d             	cmp    $0xd,%eax
  6b1437:	75 0c                	jne    6b1445 <http_parser_execute+0x1f35>
  6b1439:	c7 45 ec 2b 00 00 00 	movl   $0x2b,-0x14(%rbp)
  6b1440:	e9 c0 35 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6b1445:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b1449:	83 f8 0a             	cmp    $0xa,%eax
  6b144c:	75 0c                	jne    6b145a <http_parser_execute+0x1f4a>
  6b144e:	c7 45 ec 2c 00 00 00 	movl   $0x2c,-0x14(%rbp)
  6b1455:	e9 ab 35 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6b145a:	eb 00                	jmp    6b145c <http_parser_execute+0x1f4c>
  6b145c:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b145f:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b1463:	89 41 04             	mov    %eax,0x4(%rcx)
  6b1466:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b146a:	8b 48 14             	mov    0x14(%rax),%ecx
  6b146d:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b1473:	81 c9 00 00 00 0e    	or     $0xe000000,%ecx
  6b1479:	89 48 14             	mov    %ecx,0x14(%rax)
  6b147c:	e9 0f 3d 00 00       	jmpq   6b5190 <http_parser_execute+0x5c80>
  6b1481:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b1485:	83 f8 0a             	cmp    $0xa,%eax
  6b1488:	0f 95 c0             	setne  %al
  6b148b:	34 ff                	xor    $0xff,%al
  6b148d:	34 ff                	xor    $0xff,%al
  6b148f:	24 01                	and    $0x1,%al
  6b1491:	0f b6 c0             	movzbl %al,%eax
  6b1494:	48 98                	cltq   
  6b1496:	48 83 f8 00          	cmp    $0x0,%rax
  6b149a:	74 27                	je     6b14c3 <http_parser_execute+0x1fb3>
  6b149c:	eb 00                	jmp    6b149e <http_parser_execute+0x1f8e>
  6b149e:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b14a1:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b14a5:	89 41 04             	mov    %eax,0x4(%rcx)
  6b14a8:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b14ac:	8b 48 14             	mov    0x14(%rax),%ecx
  6b14af:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b14b5:	81 c9 00 00 00 17    	or     $0x17000000,%ecx
  6b14bb:	89 48 14             	mov    %ecx,0x14(%rax)
  6b14be:	e9 cd 3c 00 00       	jmpq   6b5190 <http_parser_execute+0x5c80>
  6b14c3:	c7 45 ec 2c 00 00 00 	movl   $0x2c,-0x14(%rbp)
  6b14ca:	e9 36 35 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6b14cf:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b14d3:	83 f8 0d             	cmp    $0xd,%eax
  6b14d6:	75 0c                	jne    6b14e4 <http_parser_execute+0x1fd4>
  6b14d8:	c7 45 ec 39 00 00 00 	movl   $0x39,-0x14(%rbp)
  6b14df:	e9 21 35 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6b14e4:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b14e8:	83 f8 0a             	cmp    $0xa,%eax
  6b14eb:	75 0c                	jne    6b14f9 <http_parser_execute+0x1fe9>
  6b14ed:	c7 45 ec 39 00 00 00 	movl   $0x39,-0x14(%rbp)
  6b14f4:	e9 5a e5 ff ff       	jmpq   6afa53 <http_parser_execute+0x543>
  6b14f9:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b14fd:	83 f8 20             	cmp    $0x20,%eax
  6b1500:	75 04                	jne    6b1506 <http_parser_execute+0x1ff6>
  6b1502:	31 c0                	xor    %eax,%eax
  6b1504:	eb 0c                	jmp    6b1512 <http_parser_execute+0x2002>
  6b1506:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
  6b150a:	0f be 04 05 a0 83 20 	movsbl 0x2083a0(,%rax,1),%eax
  6b1511:	00 
  6b1512:	88 45 eb             	mov    %al,-0x15(%rbp)
  6b1515:	80 7d eb 00          	cmpb   $0x0,-0x15(%rbp)
  6b1519:	0f 95 c0             	setne  %al
  6b151c:	34 ff                	xor    $0xff,%al
  6b151e:	34 ff                	xor    $0xff,%al
  6b1520:	34 ff                	xor    $0xff,%al
  6b1522:	24 01                	and    $0x1,%al
  6b1524:	0f b6 c0             	movzbl %al,%eax
  6b1527:	48 98                	cltq   
  6b1529:	48 83 f8 00          	cmp    $0x0,%rax
  6b152d:	74 27                	je     6b1556 <http_parser_execute+0x2046>
  6b152f:	eb 00                	jmp    6b1531 <http_parser_execute+0x2021>
  6b1531:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b1534:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b1538:	89 41 04             	mov    %eax,0x4(%rcx)
  6b153b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b153f:	8b 48 14             	mov    0x14(%rax),%ecx
  6b1542:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b1548:	81 c9 00 00 00 18    	or     $0x18000000,%ecx
  6b154e:	89 48 14             	mov    %ecx,0x14(%rax)
  6b1551:	e9 3a 3c 00 00       	jmpq   6b5190 <http_parser_execute+0x5c80>
  6b1556:	eb 00                	jmp    6b1558 <http_parser_execute+0x2048>
  6b1558:	48 83 7d 80 00       	cmpq   $0x0,-0x80(%rbp)
  6b155d:	75 08                	jne    6b1567 <http_parser_execute+0x2057>
  6b155f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b1563:	48 89 45 80          	mov    %rax,-0x80(%rbp)
  6b1567:	eb 00                	jmp    6b1569 <http_parser_execute+0x2059>
  6b1569:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b156d:	8b 08                	mov    (%rax),%ecx
  6b156f:	81 e1 ff ff ff e0    	and    $0xe0ffffff,%ecx
  6b1575:	89 08                	mov    %ecx,(%rax)
  6b1577:	c7 45 ec 2d 00 00 00 	movl   $0x2d,-0x14(%rbp)
  6b157e:	0f be 45 eb          	movsbl -0x15(%rbp),%eax
  6b1582:	83 c0 9d             	add    $0xffffff9d,%eax
  6b1585:	89 c1                	mov    %eax,%ecx
  6b1587:	83 e9 12             	sub    $0x12,%ecx
  6b158a:	77 62                	ja     6b15ee <http_parser_execute+0x20de>
  6b158c:	48 8b 04 c5 70 0d 20 	mov    0x200d70(,%rax,8),%rax
  6b1593:	00 
  6b1594:	ff e0                	jmpq   *%rax
  6b1596:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b159a:	8b 08                	mov    (%rax),%ecx
  6b159c:	81 e1 ff ff 01 ff    	and    $0xff01ffff,%ecx
  6b15a2:	81 c9 00 00 02 00    	or     $0x20000,%ecx
  6b15a8:	89 08                	mov    %ecx,(%rax)
  6b15aa:	eb 53                	jmp    6b15ff <http_parser_execute+0x20ef>
  6b15ac:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b15b0:	8b 08                	mov    (%rax),%ecx
  6b15b2:	81 e1 ff ff 01 ff    	and    $0xff01ffff,%ecx
  6b15b8:	81 c9 00 00 0a 00    	or     $0xa0000,%ecx
  6b15be:	89 08                	mov    %ecx,(%rax)
  6b15c0:	eb 3d                	jmp    6b15ff <http_parser_execute+0x20ef>
  6b15c2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b15c6:	8b 08                	mov    (%rax),%ecx
  6b15c8:	81 e1 ff ff 01 ff    	and    $0xff01ffff,%ecx
  6b15ce:	81 c9 00 00 0e 00    	or     $0xe0000,%ecx
  6b15d4:	89 08                	mov    %ecx,(%rax)
  6b15d6:	eb 27                	jmp    6b15ff <http_parser_execute+0x20ef>
  6b15d8:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b15dc:	8b 08                	mov    (%rax),%ecx
  6b15de:	81 e1 ff ff 01 ff    	and    $0xff01ffff,%ecx
  6b15e4:	81 c9 00 00 10 00    	or     $0x100000,%ecx
  6b15ea:	89 08                	mov    %ecx,(%rax)
  6b15ec:	eb 11                	jmp    6b15ff <http_parser_execute+0x20ef>
  6b15ee:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b15f2:	8b 08                	mov    (%rax),%ecx
  6b15f4:	81 e1 ff ff 01 ff    	and    $0xff01ffff,%ecx
  6b15fa:	83 c9 00             	or     $0x0,%ecx
  6b15fd:	89 08                	mov    %ecx,(%rax)
  6b15ff:	e9 01 34 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6b1604:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b1608:	48 89 85 30 ff ff ff 	mov    %rax,-0xd0(%rbp)
  6b160f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b1613:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  6b1617:	48 03 4d 88          	add    -0x78(%rbp),%rcx
  6b161b:	48 39 c8             	cmp    %rcx,%rax
  6b161e:	0f 84 4a 05 00 00    	je     6b1b6e <http_parser_execute+0x265e>
  6b1624:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b1628:	8a 00                	mov    (%rax),%al
  6b162a:	88 45 ff             	mov    %al,-0x1(%rbp)
  6b162d:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b1631:	83 f8 20             	cmp    $0x20,%eax
  6b1634:	75 04                	jne    6b163a <http_parser_execute+0x212a>
  6b1636:	31 c0                	xor    %eax,%eax
  6b1638:	eb 0c                	jmp    6b1646 <http_parser_execute+0x2136>
  6b163a:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
  6b163e:	0f be 04 05 a0 83 20 	movsbl 0x2083a0(,%rax,1),%eax
  6b1645:	00 
  6b1646:	88 45 eb             	mov    %al,-0x15(%rbp)
  6b1649:	80 7d eb 00          	cmpb   $0x0,-0x15(%rbp)
  6b164d:	75 05                	jne    6b1654 <http_parser_execute+0x2144>
  6b164f:	e9 1c 05 00 00       	jmpq   6b1b70 <http_parser_execute+0x2660>
  6b1654:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b1658:	8b 00                	mov    (%rax),%eax
  6b165a:	c1 e8 11             	shr    $0x11,%eax
  6b165d:	83 e0 7f             	and    $0x7f,%eax
  6b1660:	89 c1                	mov    %eax,%ecx
  6b1662:	83 e9 0e             	sub    $0xe,%ecx
  6b1665:	0f 87 c8 04 00 00    	ja     6b1b33 <http_parser_execute+0x2623>
  6b166b:	48 8b 04 c5 f8 0c 20 	mov    0x200cf8(,%rax,8),%rax
  6b1672:	00 
  6b1673:	ff e0                	jmpq   *%rax
  6b1675:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  6b1679:	48 03 45 88          	add    -0x78(%rbp),%rax
  6b167d:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  6b1681:	48 29 c8             	sub    %rcx,%rax
  6b1684:	48 89 85 38 ff ff ff 	mov    %rax,-0xc8(%rbp)
  6b168b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b168f:	48 8b 8d 38 ff ff ff 	mov    -0xc8(%rbp),%rcx
  6b1696:	8b 14 25 70 dc 6b 00 	mov    0x6bdc70,%edx
  6b169d:	48 39 d1             	cmp    %rdx,%rcx
  6b16a0:	73 09                	jae    6b16ab <http_parser_execute+0x219b>
  6b16a2:	48 8b 8d 38 ff ff ff 	mov    -0xc8(%rbp),%rcx
  6b16a9:	eb 07                	jmp    6b16b2 <http_parser_execute+0x21a2>
  6b16ab:	8b 0c 25 70 dc 6b 00 	mov    0x6bdc70,%ecx
  6b16b2:	48 01 c8             	add    %rcx,%rax
  6b16b5:	48 89 85 18 ff ff ff 	mov    %rax,-0xe8(%rbp)
  6b16bc:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  6b16c0:	48 83 c1 01          	add    $0x1,%rcx
  6b16c4:	31 c0                	xor    %eax,%eax
  6b16c6:	48 3b 8d 18 ff ff ff 	cmp    -0xe8(%rbp),%rcx
  6b16cd:	73 27                	jae    6b16f6 <http_parser_execute+0x21e6>
  6b16cf:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b16d3:	0f be 40 01          	movsbl 0x1(%rax),%eax
  6b16d7:	83 f8 20             	cmp    $0x20,%eax
  6b16da:	75 04                	jne    6b16e0 <http_parser_execute+0x21d0>
  6b16dc:	31 c0                	xor    %eax,%eax
  6b16de:	eb 10                	jmp    6b16f0 <http_parser_execute+0x21e0>
  6b16e0:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b16e4:	0f b6 40 01          	movzbl 0x1(%rax),%eax
  6b16e8:	0f be 04 05 a0 83 20 	movsbl 0x2083a0(,%rax,1),%eax
  6b16ef:	00 
  6b16f0:	83 f8 00             	cmp    $0x0,%eax
  6b16f3:	0f 95 c0             	setne  %al
  6b16f6:	a8 01                	test   $0x1,%al
  6b16f8:	75 02                	jne    6b16fc <http_parser_execute+0x21ec>
  6b16fa:	eb 0e                	jmp    6b170a <http_parser_execute+0x21fa>
  6b16fc:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b1700:	48 83 c0 01          	add    $0x1,%rax
  6b1704:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  6b1708:	eb b2                	jmp    6b16bc <http_parser_execute+0x21ac>
  6b170a:	e9 4c 04 00 00       	jmpq   6b1b5b <http_parser_execute+0x264b>
  6b170f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b1713:	8b 08                	mov    (%rax),%ecx
  6b1715:	c1 e9 18             	shr    $0x18,%ecx
  6b1718:	83 e1 1f             	and    $0x1f,%ecx
  6b171b:	83 c1 01             	add    $0x1,%ecx
  6b171e:	8b 10                	mov    (%rax),%edx
  6b1720:	83 e1 1f             	and    $0x1f,%ecx
  6b1723:	c1 e1 18             	shl    $0x18,%ecx
  6b1726:	81 e2 ff ff ff e0    	and    $0xe0ffffff,%edx
  6b172c:	09 ca                	or     %ecx,%edx
  6b172e:	89 10                	mov    %edx,(%rax)
  6b1730:	0f be 45 eb          	movsbl -0x15(%rbp),%eax
  6b1734:	31 c9                	xor    %ecx,%ecx
  6b1736:	ba 02 00 00 00       	mov    $0x2,%edx
  6b173b:	83 f8 6f             	cmp    $0x6f,%eax
  6b173e:	0f 44 ca             	cmove  %edx,%ecx
  6b1741:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b1745:	8b 10                	mov    (%rax),%edx
  6b1747:	83 e1 7f             	and    $0x7f,%ecx
  6b174a:	c1 e1 11             	shl    $0x11,%ecx
  6b174d:	81 e2 ff ff 01 ff    	and    $0xff01ffff,%edx
  6b1753:	09 ca                	or     %ecx,%edx
  6b1755:	89 10                	mov    %edx,(%rax)
  6b1757:	e9 ff 03 00 00       	jmpq   6b1b5b <http_parser_execute+0x264b>
  6b175c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b1760:	8b 08                	mov    (%rax),%ecx
  6b1762:	c1 e9 18             	shr    $0x18,%ecx
  6b1765:	83 e1 1f             	and    $0x1f,%ecx
  6b1768:	83 c1 01             	add    $0x1,%ecx
  6b176b:	8b 10                	mov    (%rax),%edx
  6b176d:	83 e1 1f             	and    $0x1f,%ecx
  6b1770:	c1 e1 18             	shl    $0x18,%ecx
  6b1773:	81 e2 ff ff ff e0    	and    $0xe0ffffff,%edx
  6b1779:	09 ca                	or     %ecx,%edx
  6b177b:	89 10                	mov    %edx,(%rax)
  6b177d:	0f be 45 eb          	movsbl -0x15(%rbp),%eax
  6b1781:	31 c9                	xor    %ecx,%ecx
  6b1783:	ba 03 00 00 00       	mov    $0x3,%edx
  6b1788:	83 f8 6e             	cmp    $0x6e,%eax
  6b178b:	0f 44 ca             	cmove  %edx,%ecx
  6b178e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b1792:	8b 10                	mov    (%rax),%edx
  6b1794:	83 e1 7f             	and    $0x7f,%ecx
  6b1797:	c1 e1 11             	shl    $0x11,%ecx
  6b179a:	81 e2 ff ff 01 ff    	and    $0xff01ffff,%edx
  6b17a0:	09 ca                	or     %ecx,%edx
  6b17a2:	89 10                	mov    %edx,(%rax)
  6b17a4:	e9 b2 03 00 00       	jmpq   6b1b5b <http_parser_execute+0x264b>
  6b17a9:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b17ad:	8b 08                	mov    (%rax),%ecx
  6b17af:	89 ca                	mov    %ecx,%edx
  6b17b1:	c1 ea 18             	shr    $0x18,%edx
  6b17b4:	83 c2 01             	add    $0x1,%edx
  6b17b7:	83 e2 1f             	and    $0x1f,%edx
  6b17ba:	c1 e2 18             	shl    $0x18,%edx
  6b17bd:	81 e1 ff ff ff e0    	and    $0xe0ffffff,%ecx
  6b17c3:	09 d1                	or     %edx,%ecx
  6b17c5:	89 08                	mov    %ecx,(%rax)
  6b17c7:	0f be 45 eb          	movsbl -0x15(%rbp),%eax
  6b17cb:	89 c1                	mov    %eax,%ecx
  6b17cd:	83 e9 6e             	sub    $0x6e,%ecx
  6b17d0:	74 09                	je     6b17db <http_parser_execute+0x22cb>
  6b17d2:	eb 00                	jmp    6b17d4 <http_parser_execute+0x22c4>
  6b17d4:	83 e8 74             	sub    $0x74,%eax
  6b17d7:	74 18                	je     6b17f1 <http_parser_execute+0x22e1>
  6b17d9:	eb 2c                	jmp    6b1807 <http_parser_execute+0x22f7>
  6b17db:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b17df:	8b 08                	mov    (%rax),%ecx
  6b17e1:	81 e1 ff ff 01 ff    	and    $0xff01ffff,%ecx
  6b17e7:	81 c9 00 00 08 00    	or     $0x80000,%ecx
  6b17ed:	89 08                	mov    %ecx,(%rax)
  6b17ef:	eb 27                	jmp    6b1818 <http_parser_execute+0x2308>
  6b17f1:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b17f5:	8b 08                	mov    (%rax),%ecx
  6b17f7:	81 e1 ff ff 01 ff    	and    $0xff01ffff,%ecx
  6b17fd:	81 c9 00 00 0c 00    	or     $0xc0000,%ecx
  6b1803:	89 08                	mov    %ecx,(%rax)
  6b1805:	eb 11                	jmp    6b1818 <http_parser_execute+0x2308>
  6b1807:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b180b:	8b 08                	mov    (%rax),%ecx
  6b180d:	81 e1 ff ff 01 ff    	and    $0xff01ffff,%ecx
  6b1813:	83 c9 00             	or     $0x0,%ecx
  6b1816:	89 08                	mov    %ecx,(%rax)
  6b1818:	e9 3e 03 00 00       	jmpq   6b1b5b <http_parser_execute+0x264b>
  6b181d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b1821:	8b 08                	mov    (%rax),%ecx
  6b1823:	c1 e9 18             	shr    $0x18,%ecx
  6b1826:	83 e1 1f             	and    $0x1f,%ecx
  6b1829:	83 c1 01             	add    $0x1,%ecx
  6b182c:	8b 10                	mov    (%rax),%edx
  6b182e:	83 e1 1f             	and    $0x1f,%ecx
  6b1831:	c1 e1 18             	shl    $0x18,%ecx
  6b1834:	81 e2 ff ff ff e0    	and    $0xe0ffffff,%edx
  6b183a:	09 ca                	or     %ecx,%edx
  6b183c:	89 10                	mov    %edx,(%rax)
  6b183e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b1842:	8b 00                	mov    (%rax),%eax
  6b1844:	c1 e8 18             	shr    $0x18,%eax
  6b1847:	83 e0 1f             	and    $0x1f,%eax
  6b184a:	89 c0                	mov    %eax,%eax
  6b184c:	48 83 f8 0a          	cmp    $0xa,%rax
  6b1850:	77 1e                	ja     6b1870 <http_parser_execute+0x2360>
  6b1852:	0f be 45 eb          	movsbl -0x15(%rbp),%eax
  6b1856:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b185a:	8b 09                	mov    (%rcx),%ecx
  6b185c:	c1 e9 18             	shr    $0x18,%ecx
  6b185f:	83 e1 1f             	and    $0x1f,%ecx
  6b1862:	89 c9                	mov    %ecx,%ecx
  6b1864:	0f be 0c 0d 24 2e 20 	movsbl 0x202e24(,%rcx,1),%ecx
  6b186b:	00 
  6b186c:	39 c8                	cmp    %ecx,%eax
  6b186e:	74 13                	je     6b1883 <http_parser_execute+0x2373>
  6b1870:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b1874:	8b 08                	mov    (%rax),%ecx
  6b1876:	81 e1 ff ff 01 ff    	and    $0xff01ffff,%ecx
  6b187c:	83 c9 00             	or     $0x0,%ecx
  6b187f:	89 08                	mov    %ecx,(%rax)
  6b1881:	eb 2a                	jmp    6b18ad <http_parser_execute+0x239d>
  6b1883:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b1887:	8b 00                	mov    (%rax),%eax
  6b1889:	c1 e8 18             	shr    $0x18,%eax
  6b188c:	83 e0 1f             	and    $0x1f,%eax
  6b188f:	89 c0                	mov    %eax,%eax
  6b1891:	48 83 f8 09          	cmp    $0x9,%rax
  6b1895:	75 14                	jne    6b18ab <http_parser_execute+0x239b>
  6b1897:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b189b:	8b 08                	mov    (%rax),%ecx
  6b189d:	81 e1 ff ff 01 ff    	and    $0xff01ffff,%ecx
  6b18a3:	81 c9 00 00 12 00    	or     $0x120000,%ecx
  6b18a9:	89 08                	mov    %ecx,(%rax)
  6b18ab:	eb 00                	jmp    6b18ad <http_parser_execute+0x239d>
  6b18ad:	e9 a9 02 00 00       	jmpq   6b1b5b <http_parser_execute+0x264b>
  6b18b2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b18b6:	8b 08                	mov    (%rax),%ecx
  6b18b8:	c1 e9 18             	shr    $0x18,%ecx
  6b18bb:	83 e1 1f             	and    $0x1f,%ecx
  6b18be:	83 c1 01             	add    $0x1,%ecx
  6b18c1:	8b 10                	mov    (%rax),%edx
  6b18c3:	83 e1 1f             	and    $0x1f,%ecx
  6b18c6:	c1 e1 18             	shl    $0x18,%ecx
  6b18c9:	81 e2 ff ff ff e0    	and    $0xe0ffffff,%edx
  6b18cf:	09 ca                	or     %ecx,%edx
  6b18d1:	89 10                	mov    %edx,(%rax)
  6b18d3:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b18d7:	8b 00                	mov    (%rax),%eax
  6b18d9:	c1 e8 18             	shr    $0x18,%eax
  6b18dc:	83 e0 1f             	and    $0x1f,%eax
  6b18df:	89 c0                	mov    %eax,%eax
  6b18e1:	48 83 f8 10          	cmp    $0x10,%rax
  6b18e5:	77 1e                	ja     6b1905 <http_parser_execute+0x23f5>
  6b18e7:	0f be 45 eb          	movsbl -0x15(%rbp),%eax
  6b18eb:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b18ef:	8b 09                	mov    (%rcx),%ecx
  6b18f1:	c1 e9 18             	shr    $0x18,%ecx
  6b18f4:	83 e1 1f             	and    $0x1f,%ecx
  6b18f7:	89 c9                	mov    %ecx,%ecx
  6b18f9:	0f be 0c 0d 70 26 20 	movsbl 0x202670(,%rcx,1),%ecx
  6b1900:	00 
  6b1901:	39 c8                	cmp    %ecx,%eax
  6b1903:	74 13                	je     6b1918 <http_parser_execute+0x2408>
  6b1905:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b1909:	8b 08                	mov    (%rax),%ecx
  6b190b:	81 e1 ff ff 01 ff    	and    $0xff01ffff,%ecx
  6b1911:	83 c9 00             	or     $0x0,%ecx
  6b1914:	89 08                	mov    %ecx,(%rax)
  6b1916:	eb 2a                	jmp    6b1942 <http_parser_execute+0x2432>
  6b1918:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b191c:	8b 00                	mov    (%rax),%eax
  6b191e:	c1 e8 18             	shr    $0x18,%eax
  6b1921:	83 e0 1f             	and    $0x1f,%eax
  6b1924:	89 c0                	mov    %eax,%eax
  6b1926:	48 83 f8 0f          	cmp    $0xf,%rax
  6b192a:	75 14                	jne    6b1940 <http_parser_execute+0x2430>
  6b192c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b1930:	8b 08                	mov    (%rax),%ecx
  6b1932:	81 e1 ff ff 01 ff    	and    $0xff01ffff,%ecx
  6b1938:	81 c9 00 00 12 00    	or     $0x120000,%ecx
  6b193e:	89 08                	mov    %ecx,(%rax)
  6b1940:	eb 00                	jmp    6b1942 <http_parser_execute+0x2432>
  6b1942:	e9 14 02 00 00       	jmpq   6b1b5b <http_parser_execute+0x264b>
  6b1947:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b194b:	8b 08                	mov    (%rax),%ecx
  6b194d:	c1 e9 18             	shr    $0x18,%ecx
  6b1950:	83 e1 1f             	and    $0x1f,%ecx
  6b1953:	83 c1 01             	add    $0x1,%ecx
  6b1956:	8b 10                	mov    (%rax),%edx
  6b1958:	83 e1 1f             	and    $0x1f,%ecx
  6b195b:	c1 e1 18             	shl    $0x18,%ecx
  6b195e:	81 e2 ff ff ff e0    	and    $0xe0ffffff,%edx
  6b1964:	09 ca                	or     %ecx,%edx
  6b1966:	89 10                	mov    %edx,(%rax)
  6b1968:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b196c:	8b 00                	mov    (%rax),%eax
  6b196e:	c1 e8 18             	shr    $0x18,%eax
  6b1971:	83 e0 1f             	and    $0x1f,%eax
  6b1974:	89 c0                	mov    %eax,%eax
  6b1976:	48 83 f8 0e          	cmp    $0xe,%rax
  6b197a:	77 1e                	ja     6b199a <http_parser_execute+0x248a>
  6b197c:	0f be 45 eb          	movsbl -0x15(%rbp),%eax
  6b1980:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b1984:	8b 09                	mov    (%rcx),%ecx
  6b1986:	c1 e9 18             	shr    $0x18,%ecx
  6b1989:	83 e1 1f             	and    $0x1f,%ecx
  6b198c:	89 c9                	mov    %ecx,%ecx
  6b198e:	0f be 0c 0d 0b 41 20 	movsbl 0x20410b(,%rcx,1),%ecx
  6b1995:	00 
  6b1996:	39 c8                	cmp    %ecx,%eax
  6b1998:	74 13                	je     6b19ad <http_parser_execute+0x249d>
  6b199a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b199e:	8b 08                	mov    (%rax),%ecx
  6b19a0:	81 e1 ff ff 01 ff    	and    $0xff01ffff,%ecx
  6b19a6:	83 c9 00             	or     $0x0,%ecx
  6b19a9:	89 08                	mov    %ecx,(%rax)
  6b19ab:	eb 2a                	jmp    6b19d7 <http_parser_execute+0x24c7>
  6b19ad:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b19b1:	8b 00                	mov    (%rax),%eax
  6b19b3:	c1 e8 18             	shr    $0x18,%eax
  6b19b6:	83 e0 1f             	and    $0x1f,%eax
  6b19b9:	89 c0                	mov    %eax,%eax
  6b19bb:	48 83 f8 0d          	cmp    $0xd,%rax
  6b19bf:	75 14                	jne    6b19d5 <http_parser_execute+0x24c5>
  6b19c1:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b19c5:	8b 08                	mov    (%rax),%ecx
  6b19c7:	81 e1 ff ff 01 ff    	and    $0xff01ffff,%ecx
  6b19cd:	81 c9 00 00 14 00    	or     $0x140000,%ecx
  6b19d3:	89 08                	mov    %ecx,(%rax)
  6b19d5:	eb 00                	jmp    6b19d7 <http_parser_execute+0x24c7>
  6b19d7:	e9 7f 01 00 00       	jmpq   6b1b5b <http_parser_execute+0x264b>
  6b19dc:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b19e0:	8b 08                	mov    (%rax),%ecx
  6b19e2:	c1 e9 18             	shr    $0x18,%ecx
  6b19e5:	83 e1 1f             	and    $0x1f,%ecx
  6b19e8:	83 c1 01             	add    $0x1,%ecx
  6b19eb:	8b 10                	mov    (%rax),%edx
  6b19ed:	83 e1 1f             	and    $0x1f,%ecx
  6b19f0:	c1 e1 18             	shl    $0x18,%ecx
  6b19f3:	81 e2 ff ff ff e0    	and    $0xe0ffffff,%edx
  6b19f9:	09 ca                	or     %ecx,%edx
  6b19fb:	89 10                	mov    %edx,(%rax)
  6b19fd:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b1a01:	8b 00                	mov    (%rax),%eax
  6b1a03:	c1 e8 18             	shr    $0x18,%eax
  6b1a06:	83 e0 1f             	and    $0x1f,%eax
  6b1a09:	89 c0                	mov    %eax,%eax
  6b1a0b:	48 83 f8 11          	cmp    $0x11,%rax
  6b1a0f:	77 1e                	ja     6b1a2f <http_parser_execute+0x251f>
  6b1a11:	0f be 45 eb          	movsbl -0x15(%rbp),%eax
  6b1a15:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b1a19:	8b 09                	mov    (%rcx),%ecx
  6b1a1b:	c1 e9 18             	shr    $0x18,%ecx
  6b1a1e:	83 e1 1f             	and    $0x1f,%ecx
  6b1a21:	89 c9                	mov    %ecx,%ecx
  6b1a23:	0f be 0c 0d 77 4e 20 	movsbl 0x204e77(,%rcx,1),%ecx
  6b1a2a:	00 
  6b1a2b:	39 c8                	cmp    %ecx,%eax
  6b1a2d:	74 13                	je     6b1a42 <http_parser_execute+0x2532>
  6b1a2f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b1a33:	8b 08                	mov    (%rax),%ecx
  6b1a35:	81 e1 ff ff 01 ff    	and    $0xff01ffff,%ecx
  6b1a3b:	83 c9 00             	or     $0x0,%ecx
  6b1a3e:	89 08                	mov    %ecx,(%rax)
  6b1a40:	eb 3e                	jmp    6b1a80 <http_parser_execute+0x2570>
  6b1a42:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b1a46:	8b 00                	mov    (%rax),%eax
  6b1a48:	c1 e8 18             	shr    $0x18,%eax
  6b1a4b:	83 e0 1f             	and    $0x1f,%eax
  6b1a4e:	89 c0                	mov    %eax,%eax
  6b1a50:	48 83 f8 10          	cmp    $0x10,%rax
  6b1a54:	75 28                	jne    6b1a7e <http_parser_execute+0x256e>
  6b1a56:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b1a5a:	8b 08                	mov    (%rax),%ecx
  6b1a5c:	81 e1 ff ff 01 ff    	and    $0xff01ffff,%ecx
  6b1a62:	81 c9 00 00 1a 00    	or     $0x1a0000,%ecx
  6b1a68:	89 08                	mov    %ecx,(%rax)
  6b1a6a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b1a6e:	8b 08                	mov    (%rax),%ecx
  6b1a70:	81 e1 ff ff ff df    	and    $0xdfffffff,%ecx
  6b1a76:	81 c9 00 00 00 20    	or     $0x20000000,%ecx
  6b1a7c:	89 08                	mov    %ecx,(%rax)
  6b1a7e:	eb 00                	jmp    6b1a80 <http_parser_execute+0x2570>
  6b1a80:	e9 d6 00 00 00       	jmpq   6b1b5b <http_parser_execute+0x264b>
  6b1a85:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b1a89:	8b 08                	mov    (%rax),%ecx
  6b1a8b:	c1 e9 18             	shr    $0x18,%ecx
  6b1a8e:	83 e1 1f             	and    $0x1f,%ecx
  6b1a91:	83 c1 01             	add    $0x1,%ecx
  6b1a94:	8b 10                	mov    (%rax),%edx
  6b1a96:	83 e1 1f             	and    $0x1f,%ecx
  6b1a99:	c1 e1 18             	shl    $0x18,%ecx
  6b1a9c:	81 e2 ff ff ff e0    	and    $0xe0ffffff,%edx
  6b1aa2:	09 ca                	or     %ecx,%edx
  6b1aa4:	89 10                	mov    %edx,(%rax)
  6b1aa6:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b1aaa:	8b 00                	mov    (%rax),%eax
  6b1aac:	c1 e8 18             	shr    $0x18,%eax
  6b1aaf:	83 e0 1f             	and    $0x1f,%eax
  6b1ab2:	89 c0                	mov    %eax,%eax
  6b1ab4:	48 83 f8 07          	cmp    $0x7,%rax
  6b1ab8:	77 1e                	ja     6b1ad8 <http_parser_execute+0x25c8>
  6b1aba:	0f be 45 eb          	movsbl -0x15(%rbp),%eax
  6b1abe:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b1ac2:	8b 09                	mov    (%rcx),%ecx
  6b1ac4:	c1 e9 18             	shr    $0x18,%ecx
  6b1ac7:	83 e1 1f             	and    $0x1f,%ecx
  6b1aca:	89 c9                	mov    %ecx,%ecx
  6b1acc:	0f be 0c 0d 79 69 20 	movsbl 0x206979(,%rcx,1),%ecx
  6b1ad3:	00 
  6b1ad4:	39 c8                	cmp    %ecx,%eax
  6b1ad6:	74 13                	je     6b1aeb <http_parser_execute+0x25db>
  6b1ad8:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b1adc:	8b 08                	mov    (%rax),%ecx
  6b1ade:	81 e1 ff ff 01 ff    	and    $0xff01ffff,%ecx
  6b1ae4:	83 c9 00             	or     $0x0,%ecx
  6b1ae7:	89 08                	mov    %ecx,(%rax)
  6b1ae9:	eb 2a                	jmp    6b1b15 <http_parser_execute+0x2605>
  6b1aeb:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b1aef:	8b 00                	mov    (%rax),%eax
  6b1af1:	c1 e8 18             	shr    $0x18,%eax
  6b1af4:	83 e0 1f             	and    $0x1f,%eax
  6b1af7:	89 c0                	mov    %eax,%eax
  6b1af9:	48 83 f8 06          	cmp    $0x6,%rax
  6b1afd:	75 14                	jne    6b1b13 <http_parser_execute+0x2603>
  6b1aff:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b1b03:	8b 08                	mov    (%rax),%ecx
  6b1b05:	81 e1 ff ff 01 ff    	and    $0xff01ffff,%ecx
  6b1b0b:	81 c9 00 00 1c 00    	or     $0x1c0000,%ecx
  6b1b11:	89 08                	mov    %ecx,(%rax)
  6b1b13:	eb 00                	jmp    6b1b15 <http_parser_execute+0x2605>
  6b1b15:	eb 44                	jmp    6b1b5b <http_parser_execute+0x264b>
  6b1b17:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b1b1b:	83 f8 20             	cmp    $0x20,%eax
  6b1b1e:	74 11                	je     6b1b31 <http_parser_execute+0x2621>
  6b1b20:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b1b24:	8b 08                	mov    (%rax),%ecx
  6b1b26:	81 e1 ff ff 01 ff    	and    $0xff01ffff,%ecx
  6b1b2c:	83 c9 00             	or     $0x0,%ecx
  6b1b2f:	89 08                	mov    %ecx,(%rax)
  6b1b31:	eb 28                	jmp    6b1b5b <http_parser_execute+0x264b>
  6b1b33:	48 bf 9d 6b 20 00 00 	movabs $0x206b9d,%rdi
  6b1b3a:	00 00 00 
  6b1b3d:	48 be f5 2b 20 00 00 	movabs $0x202bf5,%rsi
  6b1b44:	00 00 00 
  6b1b47:	48 b9 37 6e 20 00 00 	movabs $0x206e37,%rcx
  6b1b4e:	00 00 00 
  6b1b51:	ba 5a 05 00 00       	mov    $0x55a,%edx
  6b1b56:	e8 35 9e 00 00       	callq  6bb990 <__assert_fail@plt>
  6b1b5b:	eb 00                	jmp    6b1b5d <http_parser_execute+0x264d>
  6b1b5d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b1b61:	48 83 c0 01          	add    $0x1,%rax
  6b1b65:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  6b1b69:	e9 a1 fa ff ff       	jmpq   6b160f <http_parser_execute+0x20ff>
  6b1b6e:	eb 00                	jmp    6b1b70 <http_parser_execute+0x2660>
  6b1b70:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b1b74:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  6b1b78:	48 03 4d 88          	add    -0x78(%rbp),%rcx
  6b1b7c:	48 39 c8             	cmp    %rcx,%rax
  6b1b7f:	75 6c                	jne    6b1bed <http_parser_execute+0x26dd>
  6b1b81:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b1b85:	48 83 c0 ff          	add    $0xffffffffffffffff,%rax
  6b1b89:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  6b1b8d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b1b91:	48 8b 8d 30 ff ff ff 	mov    -0xd0(%rbp),%rcx
  6b1b98:	48 29 c8             	sub    %rcx,%rax
  6b1b9b:	03 45 e4             	add    -0x1c(%rbp),%eax
  6b1b9e:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  6b1ba1:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b1ba4:	3b 04 25 70 dc 6b 00 	cmp    0x6bdc70,%eax
  6b1bab:	0f 97 c0             	seta   %al
  6b1bae:	34 ff                	xor    $0xff,%al
  6b1bb0:	34 ff                	xor    $0xff,%al
  6b1bb2:	24 01                	and    $0x1,%al
  6b1bb4:	0f b6 c0             	movzbl %al,%eax
  6b1bb7:	48 98                	cltq   
  6b1bb9:	48 83 f8 00          	cmp    $0x0,%rax
  6b1bbd:	74 27                	je     6b1be6 <http_parser_execute+0x26d6>
  6b1bbf:	eb 00                	jmp    6b1bc1 <http_parser_execute+0x26b1>
  6b1bc1:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b1bc4:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b1bc8:	89 41 04             	mov    %eax,0x4(%rcx)
  6b1bcb:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b1bcf:	8b 48 14             	mov    0x14(%rax),%ecx
  6b1bd2:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b1bd8:	81 c9 00 00 00 0c    	or     $0xc000000,%ecx
  6b1bde:	89 48 14             	mov    %ecx,0x14(%rax)
  6b1be1:	e9 aa 35 00 00       	jmpq   6b5190 <http_parser_execute+0x5c80>
  6b1be6:	eb 00                	jmp    6b1be8 <http_parser_execute+0x26d8>
  6b1be8:	e9 18 2e 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6b1bed:	eb 00                	jmp    6b1bef <http_parser_execute+0x26df>
  6b1bef:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b1bf3:	48 8b 8d 30 ff ff ff 	mov    -0xd0(%rbp),%rcx
  6b1bfa:	48 29 c8             	sub    %rcx,%rax
  6b1bfd:	03 45 e4             	add    -0x1c(%rbp),%eax
  6b1c00:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  6b1c03:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b1c06:	3b 04 25 70 dc 6b 00 	cmp    0x6bdc70,%eax
  6b1c0d:	0f 97 c0             	seta   %al
  6b1c10:	34 ff                	xor    $0xff,%al
  6b1c12:	34 ff                	xor    $0xff,%al
  6b1c14:	24 01                	and    $0x1,%al
  6b1c16:	0f b6 c0             	movzbl %al,%eax
  6b1c19:	48 98                	cltq   
  6b1c1b:	48 83 f8 00          	cmp    $0x0,%rax
  6b1c1f:	74 27                	je     6b1c48 <http_parser_execute+0x2738>
  6b1c21:	eb 00                	jmp    6b1c23 <http_parser_execute+0x2713>
  6b1c23:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b1c26:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b1c2a:	89 41 04             	mov    %eax,0x4(%rcx)
  6b1c2d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b1c31:	8b 48 14             	mov    0x14(%rax),%ecx
  6b1c34:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b1c3a:	81 c9 00 00 00 0c    	or     $0xc000000,%ecx
  6b1c40:	89 48 14             	mov    %ecx,0x14(%rax)
  6b1c43:	e9 48 35 00 00       	jmpq   6b5190 <http_parser_execute+0x5c80>
  6b1c48:	eb 00                	jmp    6b1c4a <http_parser_execute+0x273a>
  6b1c4a:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b1c4e:	83 f8 3a             	cmp    $0x3a,%eax
  6b1c51:	0f 85 66 01 00 00    	jne    6b1dbd <http_parser_execute+0x28ad>
  6b1c57:	c7 45 ec 2e 00 00 00 	movl   $0x2e,-0x14(%rbp)
  6b1c5e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b1c62:	8b 40 14             	mov    0x14(%rax),%eax
  6b1c65:	c1 e8 18             	shr    $0x18,%eax
  6b1c68:	83 e0 7f             	and    $0x7f,%eax
  6b1c6b:	83 f8 00             	cmp    $0x0,%eax
  6b1c6e:	75 02                	jne    6b1c72 <http_parser_execute+0x2762>
  6b1c70:	eb 28                	jmp    6b1c9a <http_parser_execute+0x278a>
  6b1c72:	48 bf 00 2e 20 00 00 	movabs $0x202e00,%rdi
  6b1c79:	00 00 00 
  6b1c7c:	48 be f5 2b 20 00 00 	movabs $0x202bf5,%rsi
  6b1c83:	00 00 00 
  6b1c86:	48 b9 37 6e 20 00 00 	movabs $0x206e37,%rcx
  6b1c8d:	00 00 00 
  6b1c90:	ba 69 05 00 00       	mov    $0x569,%edx
  6b1c95:	e8 f6 9c 00 00       	callq  6bb990 <__assert_fail@plt>
  6b1c9a:	48 83 7d 80 00       	cmpq   $0x0,-0x80(%rbp)
  6b1c9f:	0f 84 11 01 00 00    	je     6b1db6 <http_parser_execute+0x28a6>
  6b1ca5:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6b1ca9:	48 83 78 18 00       	cmpq   $0x0,0x18(%rax)
  6b1cae:	0f 95 c0             	setne  %al
  6b1cb1:	34 ff                	xor    $0xff,%al
  6b1cb3:	34 ff                	xor    $0xff,%al
  6b1cb5:	24 01                	and    $0x1,%al
  6b1cb7:	0f b6 c0             	movzbl %al,%eax
  6b1cba:	48 98                	cltq   
  6b1cbc:	48 83 f8 00          	cmp    $0x0,%rax
  6b1cc0:	0f 84 e8 00 00 00    	je     6b1dae <http_parser_execute+0x289e>
  6b1cc6:	8b 45 ec             	mov    -0x14(%rbp),%eax
  6b1cc9:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b1ccd:	8b 11                	mov    (%rcx),%edx
  6b1ccf:	83 e0 7f             	and    $0x7f,%eax
  6b1cd2:	c1 e0 0a             	shl    $0xa,%eax
  6b1cd5:	81 e2 ff 03 fe ff    	and    $0xfffe03ff,%edx
  6b1cdb:	09 c2                	or     %eax,%edx
  6b1cdd:	89 11                	mov    %edx,(%rcx)
  6b1cdf:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6b1ce3:	48 8b 48 18          	mov    0x18(%rax),%rcx
  6b1ce7:	48 b8 40 b8 6b 00 00 	movabs $0x6bb840,%rax
  6b1cee:	00 00 00 
  6b1cf1:	48 89 ca             	mov    %rcx,%rdx
  6b1cf4:	48 29 c2             	sub    %rax,%rdx
  6b1cf7:	48 89 d0             	mov    %rdx,%rax
  6b1cfa:	48 c1 e8 03          	shr    $0x3,%rax
  6b1cfe:	48 c1 e2 3d          	shl    $0x3d,%rdx
  6b1d02:	48 09 d0             	or     %rdx,%rax
  6b1d05:	48 83 f8 0f          	cmp    $0xf,%rax
  6b1d09:	76 05                	jbe    6b1d10 <http_parser_execute+0x2800>
  6b1d0b:	67 0f b9 40 02       	ud1    0x2(%eax),%eax
  6b1d10:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b1d14:	48 8b 75 80          	mov    -0x80(%rbp),%rsi
  6b1d18:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  6b1d1c:	48 8b 45 80          	mov    -0x80(%rbp),%rax
  6b1d20:	48 29 c2             	sub    %rax,%rdx
  6b1d23:	ff d1                	callq  *%rcx
  6b1d25:	31 c9                	xor    %ecx,%ecx
  6b1d27:	39 c1                	cmp    %eax,%ecx
  6b1d29:	0f 95 c0             	setne  %al
  6b1d2c:	34 ff                	xor    $0xff,%al
  6b1d2e:	34 ff                	xor    $0xff,%al
  6b1d30:	24 01                	and    $0x1,%al
  6b1d32:	0f b6 c0             	movzbl %al,%eax
  6b1d35:	48 98                	cltq   
  6b1d37:	48 83 f8 00          	cmp    $0x0,%rax
  6b1d3b:	74 24                	je     6b1d61 <http_parser_execute+0x2851>
  6b1d3d:	eb 00                	jmp    6b1d3f <http_parser_execute+0x282f>
  6b1d3f:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b1d42:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b1d46:	89 41 04             	mov    %eax,0x4(%rcx)
  6b1d49:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b1d4d:	8b 48 14             	mov    0x14(%rax),%ecx
  6b1d50:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b1d56:	81 c9 00 00 00 03    	or     $0x3000000,%ecx
  6b1d5c:	89 48 14             	mov    %ecx,0x14(%rax)
  6b1d5f:	eb 00                	jmp    6b1d61 <http_parser_execute+0x2851>
  6b1d61:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b1d65:	8b 00                	mov    (%rax),%eax
  6b1d67:	c1 e8 0a             	shr    $0xa,%eax
  6b1d6a:	83 e0 7f             	and    $0x7f,%eax
  6b1d6d:	89 45 ec             	mov    %eax,-0x14(%rbp)
  6b1d70:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b1d74:	8b 40 14             	mov    0x14(%rax),%eax
  6b1d77:	c1 e8 18             	shr    $0x18,%eax
  6b1d7a:	83 e0 7f             	and    $0x7f,%eax
  6b1d7d:	83 f8 00             	cmp    $0x0,%eax
  6b1d80:	0f 95 c0             	setne  %al
  6b1d83:	34 ff                	xor    $0xff,%al
  6b1d85:	34 ff                	xor    $0xff,%al
  6b1d87:	24 01                	and    $0x1,%al
  6b1d89:	0f b6 c0             	movzbl %al,%eax
  6b1d8c:	48 98                	cltq   
  6b1d8e:	48 83 f8 00          	cmp    $0x0,%rax
  6b1d92:	74 18                	je     6b1dac <http_parser_execute+0x289c>
  6b1d94:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b1d98:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  6b1d9c:	48 29 c8             	sub    %rcx,%rax
  6b1d9f:	48 83 c0 01          	add    $0x1,%rax
  6b1da3:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  6b1da7:	e9 4e 34 00 00       	jmpq   6b51fa <http_parser_execute+0x5cea>
  6b1dac:	eb 00                	jmp    6b1dae <http_parser_execute+0x289e>
  6b1dae:	48 c7 45 80 00 00 00 	movq   $0x0,-0x80(%rbp)
  6b1db5:	00 
  6b1db6:	eb 00                	jmp    6b1db8 <http_parser_execute+0x28a8>
  6b1db8:	e9 48 2c 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6b1dbd:	eb 00                	jmp    6b1dbf <http_parser_execute+0x28af>
  6b1dbf:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b1dc2:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b1dc6:	89 41 04             	mov    %eax,0x4(%rcx)
  6b1dc9:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b1dcd:	8b 48 14             	mov    0x14(%rax),%ecx
  6b1dd0:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b1dd6:	81 c9 00 00 00 18    	or     $0x18000000,%ecx
  6b1ddc:	89 48 14             	mov    %ecx,0x14(%rax)
  6b1ddf:	e9 ac 33 00 00       	jmpq   6b5190 <http_parser_execute+0x5c80>
  6b1de4:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b1de8:	83 f8 20             	cmp    $0x20,%eax
  6b1deb:	74 09                	je     6b1df6 <http_parser_execute+0x28e6>
  6b1ded:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b1df1:	83 f8 09             	cmp    $0x9,%eax
  6b1df4:	75 05                	jne    6b1dfb <http_parser_execute+0x28eb>
  6b1df6:	e9 0a 2c 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6b1dfb:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b1dff:	83 f8 0d             	cmp    $0xd,%eax
  6b1e02:	75 0c                	jne    6b1e10 <http_parser_execute+0x2900>
  6b1e04:	c7 45 ec 2f 00 00 00 	movl   $0x2f,-0x14(%rbp)
  6b1e0b:	e9 f5 2b 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6b1e10:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b1e14:	83 f8 0a             	cmp    $0xa,%eax
  6b1e17:	75 0c                	jne    6b1e25 <http_parser_execute+0x2915>
  6b1e19:	c7 45 ec 30 00 00 00 	movl   $0x30,-0x14(%rbp)
  6b1e20:	e9 e0 2b 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6b1e25:	eb 02                	jmp    6b1e29 <http_parser_execute+0x2919>
  6b1e27:	eb 00                	jmp    6b1e29 <http_parser_execute+0x2919>
  6b1e29:	eb 00                	jmp    6b1e2b <http_parser_execute+0x291b>
  6b1e2b:	48 83 7d a8 00       	cmpq   $0x0,-0x58(%rbp)
  6b1e30:	75 08                	jne    6b1e3a <http_parser_execute+0x292a>
  6b1e32:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b1e36:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  6b1e3a:	eb 00                	jmp    6b1e3c <http_parser_execute+0x292c>
  6b1e3c:	c7 45 ec 32 00 00 00 	movl   $0x32,-0x14(%rbp)
  6b1e43:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b1e47:	8b 08                	mov    (%rax),%ecx
  6b1e49:	81 e1 ff ff ff e0    	and    $0xe0ffffff,%ecx
  6b1e4f:	89 08                	mov    %ecx,(%rax)
  6b1e51:	8a 45 ff             	mov    -0x1(%rbp),%al
  6b1e54:	0c 20                	or     $0x20,%al
  6b1e56:	88 45 eb             	mov    %al,-0x15(%rbp)
  6b1e59:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b1e5d:	8b 00                	mov    (%rax),%eax
  6b1e5f:	c1 e8 11             	shr    $0x11,%eax
  6b1e62:	83 e0 7f             	and    $0x7f,%eax
  6b1e65:	83 c0 f7             	add    $0xfffffff7,%eax
  6b1e68:	89 c1                	mov    %eax,%ecx
  6b1e6a:	83 e9 09             	sub    $0x9,%ecx
  6b1e6d:	0f 87 e8 01 00 00    	ja     6b205b <http_parser_execute+0x2b4b>
  6b1e73:	48 8b 04 c5 a8 0c 20 	mov    0x200ca8(,%rax,8),%rax
  6b1e7a:	00 
  6b1e7b:	ff e0                	jmpq   *%rax
  6b1e7d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b1e81:	8b 08                	mov    (%rax),%ecx
  6b1e83:	c1 e9 02             	shr    $0x2,%ecx
  6b1e86:	81 e1 ff 00 00 00    	and    $0xff,%ecx
  6b1e8c:	83 c9 20             	or     $0x20,%ecx
  6b1e8f:	8b 10                	mov    (%rax),%edx
  6b1e91:	81 e1 ff 00 00 00    	and    $0xff,%ecx
  6b1e97:	c1 e1 02             	shl    $0x2,%ecx
  6b1e9a:	81 e2 03 fc ff ff    	and    $0xfffffc03,%edx
  6b1ea0:	09 ca                	or     %ecx,%edx
  6b1ea2:	89 10                	mov    %edx,(%rax)
  6b1ea4:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b1ea8:	8b 08                	mov    (%rax),%ecx
  6b1eaa:	81 e1 ff ff 01 ff    	and    $0xff01ffff,%ecx
  6b1eb0:	83 c9 00             	or     $0x0,%ecx
  6b1eb3:	89 08                	mov    %ecx,(%rax)
  6b1eb5:	e9 b2 01 00 00       	jmpq   6b206c <http_parser_execute+0x2b5c>
  6b1eba:	0f be 45 eb          	movsbl -0x15(%rbp),%eax
  6b1ebe:	b9 63 00 00 00       	mov    $0x63,%ecx
  6b1ec3:	39 c1                	cmp    %eax,%ecx
  6b1ec5:	75 16                	jne    6b1edd <http_parser_execute+0x29cd>
  6b1ec7:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b1ecb:	8b 08                	mov    (%rax),%ecx
  6b1ecd:	81 e1 ff ff 01 ff    	and    $0xff01ffff,%ecx
  6b1ed3:	81 c9 00 00 20 00    	or     $0x200000,%ecx
  6b1ed9:	89 08                	mov    %ecx,(%rax)
  6b1edb:	eb 14                	jmp    6b1ef1 <http_parser_execute+0x29e1>
  6b1edd:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b1ee1:	8b 08                	mov    (%rax),%ecx
  6b1ee3:	81 e1 ff ff 01 ff    	and    $0xff01ffff,%ecx
  6b1ee9:	81 c9 00 00 22 00    	or     $0x220000,%ecx
  6b1eef:	89 08                	mov    %ecx,(%rax)
  6b1ef1:	e9 76 01 00 00       	jmpq   6b206c <http_parser_execute+0x2b5c>
  6b1ef6:	e9 71 01 00 00       	jmpq   6b206c <http_parser_execute+0x2b5c>
  6b1efb:	0f be 4d ff          	movsbl -0x1(%rbp),%ecx
  6b1eff:	31 c0                	xor    %eax,%eax
  6b1f01:	83 f9 30             	cmp    $0x30,%ecx
  6b1f04:	7c 0a                	jl     6b1f10 <http_parser_execute+0x2a00>
  6b1f06:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b1f0a:	83 f8 39             	cmp    $0x39,%eax
  6b1f0d:	0f 9e c0             	setle  %al
  6b1f10:	34 ff                	xor    $0xff,%al
  6b1f12:	34 ff                	xor    $0xff,%al
  6b1f14:	34 ff                	xor    $0xff,%al
  6b1f16:	24 01                	and    $0x1,%al
  6b1f18:	0f b6 c0             	movzbl %al,%eax
  6b1f1b:	48 98                	cltq   
  6b1f1d:	48 83 f8 00          	cmp    $0x0,%rax
  6b1f21:	74 27                	je     6b1f4a <http_parser_execute+0x2a3a>
  6b1f23:	eb 00                	jmp    6b1f25 <http_parser_execute+0x2a15>
  6b1f25:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b1f28:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b1f2c:	89 41 04             	mov    %eax,0x4(%rcx)
  6b1f2f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b1f33:	8b 48 14             	mov    0x14(%rax),%ecx
  6b1f36:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b1f3c:	81 c9 00 00 00 19    	or     $0x19000000,%ecx
  6b1f42:	89 48 14             	mov    %ecx,0x14(%rax)
  6b1f45:	e9 46 32 00 00       	jmpq   6b5190 <http_parser_execute+0x5c80>
  6b1f4a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b1f4e:	8b 00                	mov    (%rax),%eax
  6b1f50:	c1 e8 02             	shr    $0x2,%eax
  6b1f53:	25 ff 00 00 00       	and    $0xff,%eax
  6b1f58:	25 80 00 00 00       	and    $0x80,%eax
  6b1f5d:	83 f8 00             	cmp    $0x0,%eax
  6b1f60:	74 27                	je     6b1f89 <http_parser_execute+0x2a79>
  6b1f62:	eb 00                	jmp    6b1f64 <http_parser_execute+0x2a54>
  6b1f64:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b1f67:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b1f6b:	89 41 04             	mov    %eax,0x4(%rcx)
  6b1f6e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b1f72:	8b 48 14             	mov    0x14(%rax),%ecx
  6b1f75:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b1f7b:	81 c9 00 00 00 1a    	or     $0x1a000000,%ecx
  6b1f81:	89 48 14             	mov    %ecx,0x14(%rax)
  6b1f84:	e9 07 32 00 00       	jmpq   6b5190 <http_parser_execute+0x5c80>
  6b1f89:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b1f8d:	8b 08                	mov    (%rax),%ecx
  6b1f8f:	c1 e9 02             	shr    $0x2,%ecx
  6b1f92:	81 e1 ff 00 00 00    	and    $0xff,%ecx
  6b1f98:	81 c9 80 00 00 00    	or     $0x80,%ecx
  6b1f9e:	8b 10                	mov    (%rax),%edx
  6b1fa0:	81 e1 ff 00 00 00    	and    $0xff,%ecx
  6b1fa6:	c1 e1 02             	shl    $0x2,%ecx
  6b1fa9:	81 e2 03 fc ff ff    	and    $0xfffffc03,%edx
  6b1faf:	09 ca                	or     %ecx,%edx
  6b1fb1:	89 10                	mov    %edx,(%rax)
  6b1fb3:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b1fb7:	83 e8 30             	sub    $0x30,%eax
  6b1fba:	48 98                	cltq   
  6b1fbc:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b1fc0:	48 89 41 08          	mov    %rax,0x8(%rcx)
  6b1fc4:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b1fc8:	8b 08                	mov    (%rax),%ecx
  6b1fca:	81 e1 ff ff 01 ff    	and    $0xff01ffff,%ecx
  6b1fd0:	81 c9 00 00 16 00    	or     $0x160000,%ecx
  6b1fd6:	89 08                	mov    %ecx,(%rax)
  6b1fd8:	e9 8f 00 00 00       	jmpq   6b206c <http_parser_execute+0x2b5c>
  6b1fdd:	e9 8a 00 00 00       	jmpq   6b206c <http_parser_execute+0x2b5c>
  6b1fe2:	0f be 45 eb          	movsbl -0x15(%rbp),%eax
  6b1fe6:	83 f8 6b             	cmp    $0x6b,%eax
  6b1fe9:	75 16                	jne    6b2001 <http_parser_execute+0x2af1>
  6b1feb:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b1fef:	8b 08                	mov    (%rax),%ecx
  6b1ff1:	81 e1 ff ff 01 ff    	and    $0xff01ffff,%ecx
  6b1ff7:	81 c9 00 00 26 00    	or     $0x260000,%ecx
  6b1ffd:	89 08                	mov    %ecx,(%rax)
  6b1fff:	eb 56                	jmp    6b2057 <http_parser_execute+0x2b47>
  6b2001:	0f be 45 eb          	movsbl -0x15(%rbp),%eax
  6b2005:	83 f8 63             	cmp    $0x63,%eax
  6b2008:	75 16                	jne    6b2020 <http_parser_execute+0x2b10>
  6b200a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b200e:	8b 08                	mov    (%rax),%ecx
  6b2010:	81 e1 ff ff 01 ff    	and    $0xff01ffff,%ecx
  6b2016:	81 c9 00 00 28 00    	or     $0x280000,%ecx
  6b201c:	89 08                	mov    %ecx,(%rax)
  6b201e:	eb 35                	jmp    6b2055 <http_parser_execute+0x2b45>
  6b2020:	0f be 45 eb          	movsbl -0x15(%rbp),%eax
  6b2024:	83 f8 75             	cmp    $0x75,%eax
  6b2027:	75 16                	jne    6b203f <http_parser_execute+0x2b2f>
  6b2029:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b202d:	8b 08                	mov    (%rax),%ecx
  6b202f:	81 e1 ff ff 01 ff    	and    $0xff01ffff,%ecx
  6b2035:	81 c9 00 00 2a 00    	or     $0x2a0000,%ecx
  6b203b:	89 08                	mov    %ecx,(%rax)
  6b203d:	eb 14                	jmp    6b2053 <http_parser_execute+0x2b43>
  6b203f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b2043:	8b 08                	mov    (%rax),%ecx
  6b2045:	81 e1 ff ff 01 ff    	and    $0xff01ffff,%ecx
  6b204b:	81 c9 00 00 2c 00    	or     $0x2c0000,%ecx
  6b2051:	89 08                	mov    %ecx,(%rax)
  6b2053:	eb 00                	jmp    6b2055 <http_parser_execute+0x2b45>
  6b2055:	eb 00                	jmp    6b2057 <http_parser_execute+0x2b47>
  6b2057:	eb 13                	jmp    6b206c <http_parser_execute+0x2b5c>
  6b2059:	eb 11                	jmp    6b206c <http_parser_execute+0x2b5c>
  6b205b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b205f:	8b 08                	mov    (%rax),%ecx
  6b2061:	81 e1 ff ff 01 ff    	and    $0xff01ffff,%ecx
  6b2067:	83 c9 00             	or     $0x0,%ecx
  6b206a:	89 08                	mov    %ecx,(%rax)
  6b206c:	e9 94 29 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6b2071:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b2075:	48 89 85 40 ff ff ff 	mov    %rax,-0xc0(%rbp)
  6b207c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b2080:	8b 00                	mov    (%rax),%eax
  6b2082:	c1 e8 11             	shr    $0x11,%eax
  6b2085:	83 e0 7f             	and    $0x7f,%eax
  6b2088:	89 45 d4             	mov    %eax,-0x2c(%rbp)
  6b208b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b208f:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  6b2093:	48 03 4d 88          	add    -0x78(%rbp),%rcx
  6b2097:	48 39 c8             	cmp    %rcx,%rax
  6b209a:	0f 84 f5 0a 00 00    	je     6b2b95 <http_parser_execute+0x3685>
  6b20a0:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b20a4:	8a 00                	mov    (%rax),%al
  6b20a6:	88 45 ff             	mov    %al,-0x1(%rbp)
  6b20a9:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b20ad:	83 f8 0d             	cmp    $0xd,%eax
  6b20b0:	0f 85 7f 01 00 00    	jne    6b2235 <http_parser_execute+0x2d25>
  6b20b6:	c7 45 ec 34 00 00 00 	movl   $0x34,-0x14(%rbp)
  6b20bd:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  6b20c0:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b20c4:	8b 11                	mov    (%rcx),%edx
  6b20c6:	83 e0 7f             	and    $0x7f,%eax
  6b20c9:	c1 e0 11             	shl    $0x11,%eax
  6b20cc:	81 e2 ff ff 01 ff    	and    $0xff01ffff,%edx
  6b20d2:	09 c2                	or     %eax,%edx
  6b20d4:	89 11                	mov    %edx,(%rcx)
  6b20d6:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b20da:	8b 40 14             	mov    0x14(%rax),%eax
  6b20dd:	c1 e8 18             	shr    $0x18,%eax
  6b20e0:	83 e0 7f             	and    $0x7f,%eax
  6b20e3:	83 f8 00             	cmp    $0x0,%eax
  6b20e6:	75 02                	jne    6b20ea <http_parser_execute+0x2bda>
  6b20e8:	eb 28                	jmp    6b2112 <http_parser_execute+0x2c02>
  6b20ea:	48 bf 00 2e 20 00 00 	movabs $0x202e00,%rdi
  6b20f1:	00 00 00 
  6b20f4:	48 be f5 2b 20 00 00 	movabs $0x202bf5,%rsi
  6b20fb:	00 00 00 
  6b20fe:	48 b9 37 6e 20 00 00 	movabs $0x206e37,%rcx
  6b2105:	00 00 00 
  6b2108:	ba d3 05 00 00       	mov    $0x5d3,%edx
  6b210d:	e8 7e 98 00 00       	callq  6bb990 <__assert_fail@plt>
  6b2112:	48 83 7d a8 00       	cmpq   $0x0,-0x58(%rbp)
  6b2117:	0f 84 11 01 00 00    	je     6b222e <http_parser_execute+0x2d1e>
  6b211d:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6b2121:	48 83 78 20 00       	cmpq   $0x0,0x20(%rax)
  6b2126:	0f 95 c0             	setne  %al
  6b2129:	34 ff                	xor    $0xff,%al
  6b212b:	34 ff                	xor    $0xff,%al
  6b212d:	24 01                	and    $0x1,%al
  6b212f:	0f b6 c0             	movzbl %al,%eax
  6b2132:	48 98                	cltq   
  6b2134:	48 83 f8 00          	cmp    $0x0,%rax
  6b2138:	0f 84 e8 00 00 00    	je     6b2226 <http_parser_execute+0x2d16>
  6b213e:	8b 45 ec             	mov    -0x14(%rbp),%eax
  6b2141:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b2145:	8b 11                	mov    (%rcx),%edx
  6b2147:	83 e0 7f             	and    $0x7f,%eax
  6b214a:	c1 e0 0a             	shl    $0xa,%eax
  6b214d:	81 e2 ff 03 fe ff    	and    $0xfffe03ff,%edx
  6b2153:	09 c2                	or     %eax,%edx
  6b2155:	89 11                	mov    %edx,(%rcx)
  6b2157:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6b215b:	48 8b 48 20          	mov    0x20(%rax),%rcx
  6b215f:	48 b8 40 b8 6b 00 00 	movabs $0x6bb840,%rax
  6b2166:	00 00 00 
  6b2169:	48 89 ca             	mov    %rcx,%rdx
  6b216c:	48 29 c2             	sub    %rax,%rdx
  6b216f:	48 89 d0             	mov    %rdx,%rax
  6b2172:	48 c1 e8 03          	shr    $0x3,%rax
  6b2176:	48 c1 e2 3d          	shl    $0x3d,%rdx
  6b217a:	48 09 d0             	or     %rdx,%rax
  6b217d:	48 83 f8 0f          	cmp    $0xf,%rax
  6b2181:	76 05                	jbe    6b2188 <http_parser_execute+0x2c78>
  6b2183:	67 0f b9 40 02       	ud1    0x2(%eax),%eax
  6b2188:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b218c:	48 8b 75 a8          	mov    -0x58(%rbp),%rsi
  6b2190:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  6b2194:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  6b2198:	48 29 c2             	sub    %rax,%rdx
  6b219b:	ff d1                	callq  *%rcx
  6b219d:	31 c9                	xor    %ecx,%ecx
  6b219f:	39 c1                	cmp    %eax,%ecx
  6b21a1:	0f 95 c0             	setne  %al
  6b21a4:	34 ff                	xor    $0xff,%al
  6b21a6:	34 ff                	xor    $0xff,%al
  6b21a8:	24 01                	and    $0x1,%al
  6b21aa:	0f b6 c0             	movzbl %al,%eax
  6b21ad:	48 98                	cltq   
  6b21af:	48 83 f8 00          	cmp    $0x0,%rax
  6b21b3:	74 24                	je     6b21d9 <http_parser_execute+0x2cc9>
  6b21b5:	eb 00                	jmp    6b21b7 <http_parser_execute+0x2ca7>
  6b21b7:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b21ba:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b21be:	89 41 04             	mov    %eax,0x4(%rcx)
  6b21c1:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b21c5:	8b 48 14             	mov    0x14(%rax),%ecx
  6b21c8:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b21ce:	81 c9 00 00 00 04    	or     $0x4000000,%ecx
  6b21d4:	89 48 14             	mov    %ecx,0x14(%rax)
  6b21d7:	eb 00                	jmp    6b21d9 <http_parser_execute+0x2cc9>
  6b21d9:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b21dd:	8b 00                	mov    (%rax),%eax
  6b21df:	c1 e8 0a             	shr    $0xa,%eax
  6b21e2:	83 e0 7f             	and    $0x7f,%eax
  6b21e5:	89 45 ec             	mov    %eax,-0x14(%rbp)
  6b21e8:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b21ec:	8b 40 14             	mov    0x14(%rax),%eax
  6b21ef:	c1 e8 18             	shr    $0x18,%eax
  6b21f2:	83 e0 7f             	and    $0x7f,%eax
  6b21f5:	83 f8 00             	cmp    $0x0,%eax
  6b21f8:	0f 95 c0             	setne  %al
  6b21fb:	34 ff                	xor    $0xff,%al
  6b21fd:	34 ff                	xor    $0xff,%al
  6b21ff:	24 01                	and    $0x1,%al
  6b2201:	0f b6 c0             	movzbl %al,%eax
  6b2204:	48 98                	cltq   
  6b2206:	48 83 f8 00          	cmp    $0x0,%rax
  6b220a:	74 18                	je     6b2224 <http_parser_execute+0x2d14>
  6b220c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b2210:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  6b2214:	48 29 c8             	sub    %rcx,%rax
  6b2217:	48 83 c0 01          	add    $0x1,%rax
  6b221b:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  6b221f:	e9 d6 2f 00 00       	jmpq   6b51fa <http_parser_execute+0x5cea>
  6b2224:	eb 00                	jmp    6b2226 <http_parser_execute+0x2d16>
  6b2226:	48 c7 45 a8 00 00 00 	movq   $0x0,-0x58(%rbp)
  6b222d:	00 
  6b222e:	eb 00                	jmp    6b2230 <http_parser_execute+0x2d20>
  6b2230:	e9 62 09 00 00       	jmpq   6b2b97 <http_parser_execute+0x3687>
  6b2235:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b2239:	83 f8 0a             	cmp    $0xa,%eax
  6b223c:	0f 85 d6 01 00 00    	jne    6b2418 <http_parser_execute+0x2f08>
  6b2242:	c7 45 ec 34 00 00 00 	movl   $0x34,-0x14(%rbp)
  6b2249:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b224d:	48 8b 8d 40 ff ff ff 	mov    -0xc0(%rbp),%rcx
  6b2254:	48 29 c8             	sub    %rcx,%rax
  6b2257:	03 45 e4             	add    -0x1c(%rbp),%eax
  6b225a:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  6b225d:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b2260:	3b 04 25 70 dc 6b 00 	cmp    0x6bdc70,%eax
  6b2267:	0f 97 c0             	seta   %al
  6b226a:	34 ff                	xor    $0xff,%al
  6b226c:	34 ff                	xor    $0xff,%al
  6b226e:	24 01                	and    $0x1,%al
  6b2270:	0f b6 c0             	movzbl %al,%eax
  6b2273:	48 98                	cltq   
  6b2275:	48 83 f8 00          	cmp    $0x0,%rax
  6b2279:	74 27                	je     6b22a2 <http_parser_execute+0x2d92>
  6b227b:	eb 00                	jmp    6b227d <http_parser_execute+0x2d6d>
  6b227d:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b2280:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b2284:	89 41 04             	mov    %eax,0x4(%rcx)
  6b2287:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b228b:	8b 48 14             	mov    0x14(%rax),%ecx
  6b228e:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b2294:	81 c9 00 00 00 0c    	or     $0xc000000,%ecx
  6b229a:	89 48 14             	mov    %ecx,0x14(%rax)
  6b229d:	e9 ee 2e 00 00       	jmpq   6b5190 <http_parser_execute+0x5c80>
  6b22a2:	eb 00                	jmp    6b22a4 <http_parser_execute+0x2d94>
  6b22a4:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  6b22a7:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b22ab:	8b 11                	mov    (%rcx),%edx
  6b22ad:	83 e0 7f             	and    $0x7f,%eax
  6b22b0:	c1 e0 11             	shl    $0x11,%eax
  6b22b3:	81 e2 ff ff 01 ff    	and    $0xff01ffff,%edx
  6b22b9:	09 c2                	or     %eax,%edx
  6b22bb:	89 11                	mov    %edx,(%rcx)
  6b22bd:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b22c1:	8b 40 14             	mov    0x14(%rax),%eax
  6b22c4:	c1 e8 18             	shr    $0x18,%eax
  6b22c7:	83 e0 7f             	and    $0x7f,%eax
  6b22ca:	83 f8 00             	cmp    $0x0,%eax
  6b22cd:	75 02                	jne    6b22d1 <http_parser_execute+0x2dc1>
  6b22cf:	eb 28                	jmp    6b22f9 <http_parser_execute+0x2de9>
  6b22d1:	48 bf 00 2e 20 00 00 	movabs $0x202e00,%rdi
  6b22d8:	00 00 00 
  6b22db:	48 be f5 2b 20 00 00 	movabs $0x202bf5,%rsi
  6b22e2:	00 00 00 
  6b22e5:	48 b9 37 6e 20 00 00 	movabs $0x206e37,%rcx
  6b22ec:	00 00 00 
  6b22ef:	ba db 05 00 00       	mov    $0x5db,%edx
  6b22f4:	e8 97 96 00 00       	callq  6bb990 <__assert_fail@plt>
  6b22f9:	48 83 7d a8 00       	cmpq   $0x0,-0x58(%rbp)
  6b22fe:	0f 84 0d 01 00 00    	je     6b2411 <http_parser_execute+0x2f01>
  6b2304:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6b2308:	48 83 78 20 00       	cmpq   $0x0,0x20(%rax)
  6b230d:	0f 95 c0             	setne  %al
  6b2310:	34 ff                	xor    $0xff,%al
  6b2312:	34 ff                	xor    $0xff,%al
  6b2314:	24 01                	and    $0x1,%al
  6b2316:	0f b6 c0             	movzbl %al,%eax
  6b2319:	48 98                	cltq   
  6b231b:	48 83 f8 00          	cmp    $0x0,%rax
  6b231f:	0f 84 e4 00 00 00    	je     6b2409 <http_parser_execute+0x2ef9>
  6b2325:	8b 45 ec             	mov    -0x14(%rbp),%eax
  6b2328:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b232c:	8b 11                	mov    (%rcx),%edx
  6b232e:	83 e0 7f             	and    $0x7f,%eax
  6b2331:	c1 e0 0a             	shl    $0xa,%eax
  6b2334:	81 e2 ff 03 fe ff    	and    $0xfffe03ff,%edx
  6b233a:	09 c2                	or     %eax,%edx
  6b233c:	89 11                	mov    %edx,(%rcx)
  6b233e:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6b2342:	48 8b 48 20          	mov    0x20(%rax),%rcx
  6b2346:	48 b8 40 b8 6b 00 00 	movabs $0x6bb840,%rax
  6b234d:	00 00 00 
  6b2350:	48 89 ca             	mov    %rcx,%rdx
  6b2353:	48 29 c2             	sub    %rax,%rdx
  6b2356:	48 89 d0             	mov    %rdx,%rax
  6b2359:	48 c1 e8 03          	shr    $0x3,%rax
  6b235d:	48 c1 e2 3d          	shl    $0x3d,%rdx
  6b2361:	48 09 d0             	or     %rdx,%rax
  6b2364:	48 83 f8 0f          	cmp    $0xf,%rax
  6b2368:	76 05                	jbe    6b236f <http_parser_execute+0x2e5f>
  6b236a:	67 0f b9 40 02       	ud1    0x2(%eax),%eax
  6b236f:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b2373:	48 8b 75 a8          	mov    -0x58(%rbp),%rsi
  6b2377:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  6b237b:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  6b237f:	48 29 c2             	sub    %rax,%rdx
  6b2382:	ff d1                	callq  *%rcx
  6b2384:	31 c9                	xor    %ecx,%ecx
  6b2386:	39 c1                	cmp    %eax,%ecx
  6b2388:	0f 95 c0             	setne  %al
  6b238b:	34 ff                	xor    $0xff,%al
  6b238d:	34 ff                	xor    $0xff,%al
  6b238f:	24 01                	and    $0x1,%al
  6b2391:	0f b6 c0             	movzbl %al,%eax
  6b2394:	48 98                	cltq   
  6b2396:	48 83 f8 00          	cmp    $0x0,%rax
  6b239a:	74 24                	je     6b23c0 <http_parser_execute+0x2eb0>
  6b239c:	eb 00                	jmp    6b239e <http_parser_execute+0x2e8e>
  6b239e:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b23a1:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b23a5:	89 41 04             	mov    %eax,0x4(%rcx)
  6b23a8:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b23ac:	8b 48 14             	mov    0x14(%rax),%ecx
  6b23af:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b23b5:	81 c9 00 00 00 04    	or     $0x4000000,%ecx
  6b23bb:	89 48 14             	mov    %ecx,0x14(%rax)
  6b23be:	eb 00                	jmp    6b23c0 <http_parser_execute+0x2eb0>
  6b23c0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b23c4:	8b 00                	mov    (%rax),%eax
  6b23c6:	c1 e8 0a             	shr    $0xa,%eax
  6b23c9:	83 e0 7f             	and    $0x7f,%eax
  6b23cc:	89 45 ec             	mov    %eax,-0x14(%rbp)
  6b23cf:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b23d3:	8b 40 14             	mov    0x14(%rax),%eax
  6b23d6:	c1 e8 18             	shr    $0x18,%eax
  6b23d9:	83 e0 7f             	and    $0x7f,%eax
  6b23dc:	83 f8 00             	cmp    $0x0,%eax
  6b23df:	0f 95 c0             	setne  %al
  6b23e2:	34 ff                	xor    $0xff,%al
  6b23e4:	34 ff                	xor    $0xff,%al
  6b23e6:	24 01                	and    $0x1,%al
  6b23e8:	0f b6 c0             	movzbl %al,%eax
  6b23eb:	48 98                	cltq   
  6b23ed:	48 83 f8 00          	cmp    $0x0,%rax
  6b23f1:	74 14                	je     6b2407 <http_parser_execute+0x2ef7>
  6b23f3:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b23f7:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  6b23fb:	48 29 c8             	sub    %rcx,%rax
  6b23fe:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  6b2402:	e9 f3 2d 00 00       	jmpq   6b51fa <http_parser_execute+0x5cea>
  6b2407:	eb 00                	jmp    6b2409 <http_parser_execute+0x2ef9>
  6b2409:	48 c7 45 a8 00 00 00 	movq   $0x0,-0x58(%rbp)
  6b2410:	00 
  6b2411:	eb 00                	jmp    6b2413 <http_parser_execute+0x2f03>
  6b2413:	e9 3b d6 ff ff       	jmpq   6afa53 <http_parser_execute+0x543>
  6b2418:	83 bd 7c ff ff ff 00 	cmpl   $0x0,-0x84(%rbp)
  6b241f:	75 54                	jne    6b2475 <http_parser_execute+0x2f65>
  6b2421:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b2425:	83 f8 0d             	cmp    $0xd,%eax
  6b2428:	74 4b                	je     6b2475 <http_parser_execute+0x2f65>
  6b242a:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b242e:	83 f8 0a             	cmp    $0xa,%eax
  6b2431:	74 42                	je     6b2475 <http_parser_execute+0x2f65>
  6b2433:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b2437:	83 f8 09             	cmp    $0x9,%eax
  6b243a:	74 39                	je     6b2475 <http_parser_execute+0x2f65>
  6b243c:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
  6b2440:	83 f8 1f             	cmp    $0x1f,%eax
  6b2443:	7e 09                	jle    6b244e <http_parser_execute+0x2f3e>
  6b2445:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b2449:	83 f8 7f             	cmp    $0x7f,%eax
  6b244c:	75 27                	jne    6b2475 <http_parser_execute+0x2f65>
  6b244e:	eb 00                	jmp    6b2450 <http_parser_execute+0x2f40>
  6b2450:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b2453:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b2457:	89 41 04             	mov    %eax,0x4(%rcx)
  6b245a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b245e:	8b 48 14             	mov    0x14(%rax),%ecx
  6b2461:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b2467:	81 c9 00 00 00 18    	or     $0x18000000,%ecx
  6b246d:	89 48 14             	mov    %ecx,0x14(%rax)
  6b2470:	e9 1b 2d 00 00       	jmpq   6b5190 <http_parser_execute+0x5c80>
  6b2475:	8a 45 ff             	mov    -0x1(%rbp),%al
  6b2478:	0c 20                	or     $0x20,%al
  6b247a:	88 45 eb             	mov    %al,-0x15(%rbp)
  6b247d:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  6b2480:	48 89 c1             	mov    %rax,%rcx
  6b2483:	48 83 e9 1a          	sub    $0x1a,%rcx
  6b2487:	0f 87 e7 06 00 00    	ja     6b2b74 <http_parser_execute+0x3664>
  6b248d:	48 8b 04 c5 d0 0b 20 	mov    0x200bd0(,%rax,8),%rax
  6b2494:	00 
  6b2495:	ff e0                	jmpq   *%rax
  6b2497:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  6b249b:	48 03 45 88          	add    -0x78(%rbp),%rax
  6b249f:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  6b24a3:	48 29 c8             	sub    %rcx,%rax
  6b24a6:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
  6b24ad:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b24b1:	48 8b 8d 48 ff ff ff 	mov    -0xb8(%rbp),%rcx
  6b24b8:	8b 14 25 70 dc 6b 00 	mov    0x6bdc70,%edx
  6b24bf:	48 39 d1             	cmp    %rdx,%rcx
  6b24c2:	73 09                	jae    6b24cd <http_parser_execute+0x2fbd>
  6b24c4:	48 8b 8d 48 ff ff ff 	mov    -0xb8(%rbp),%rcx
  6b24cb:	eb 07                	jmp    6b24d4 <http_parser_execute+0x2fc4>
  6b24cd:	8b 0c 25 70 dc 6b 00 	mov    0x6bdc70,%ecx
  6b24d4:	48 01 c8             	add    %rcx,%rax
  6b24d7:	48 89 85 20 ff ff ff 	mov    %rax,-0xe0(%rbp)
  6b24de:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b24e2:	48 3b 85 20 ff ff ff 	cmp    -0xe0(%rbp),%rax
  6b24e9:	0f 84 99 00 00 00    	je     6b2588 <http_parser_execute+0x3078>
  6b24ef:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b24f3:	8a 00                	mov    (%rax),%al
  6b24f5:	88 45 ff             	mov    %al,-0x1(%rbp)
  6b24f8:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b24fc:	83 f8 0d             	cmp    $0xd,%eax
  6b24ff:	74 09                	je     6b250a <http_parser_execute+0x2ffa>
  6b2501:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b2505:	83 f8 0a             	cmp    $0xa,%eax
  6b2508:	75 0e                	jne    6b2518 <http_parser_execute+0x3008>
  6b250a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b250e:	48 83 c0 ff          	add    $0xffffffffffffffff,%rax
  6b2512:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  6b2516:	eb 72                	jmp    6b258a <http_parser_execute+0x307a>
  6b2518:	83 bd 7c ff ff ff 00 	cmpl   $0x0,-0x84(%rbp)
  6b251f:	75 54                	jne    6b2575 <http_parser_execute+0x3065>
  6b2521:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b2525:	83 f8 0d             	cmp    $0xd,%eax
  6b2528:	74 4b                	je     6b2575 <http_parser_execute+0x3065>
  6b252a:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b252e:	83 f8 0a             	cmp    $0xa,%eax
  6b2531:	74 42                	je     6b2575 <http_parser_execute+0x3065>
  6b2533:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b2537:	83 f8 09             	cmp    $0x9,%eax
  6b253a:	74 39                	je     6b2575 <http_parser_execute+0x3065>
  6b253c:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
  6b2540:	83 f8 1f             	cmp    $0x1f,%eax
  6b2543:	7e 09                	jle    6b254e <http_parser_execute+0x303e>
  6b2545:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b2549:	83 f8 7f             	cmp    $0x7f,%eax
  6b254c:	75 27                	jne    6b2575 <http_parser_execute+0x3065>
  6b254e:	eb 00                	jmp    6b2550 <http_parser_execute+0x3040>
  6b2550:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b2553:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b2557:	89 41 04             	mov    %eax,0x4(%rcx)
  6b255a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b255e:	8b 48 14             	mov    0x14(%rax),%ecx
  6b2561:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b2567:	81 c9 00 00 00 18    	or     $0x18000000,%ecx
  6b256d:	89 48 14             	mov    %ecx,0x14(%rax)
  6b2570:	e9 1b 2c 00 00       	jmpq   6b5190 <http_parser_execute+0x5c80>
  6b2575:	eb 00                	jmp    6b2577 <http_parser_execute+0x3067>
  6b2577:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b257b:	48 83 c0 01          	add    $0x1,%rax
  6b257f:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  6b2583:	e9 56 ff ff ff       	jmpq   6b24de <http_parser_execute+0x2fce>
  6b2588:	eb 00                	jmp    6b258a <http_parser_execute+0x307a>
  6b258a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b258e:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  6b2592:	48 03 4d 88          	add    -0x78(%rbp),%rcx
  6b2596:	48 39 c8             	cmp    %rcx,%rax
  6b2599:	75 0c                	jne    6b25a7 <http_parser_execute+0x3097>
  6b259b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b259f:	48 83 c0 ff          	add    $0xffffffffffffffff,%rax
  6b25a3:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  6b25a7:	e9 d6 05 00 00       	jmpq   6b2b82 <http_parser_execute+0x3672>
  6b25ac:	48 bf f8 7e 20 00 00 	movabs $0x207ef8,%rdi
  6b25b3:	00 00 00 
  6b25b6:	48 be f5 2b 20 00 00 	movabs $0x202bf5,%rsi
  6b25bd:	00 00 00 
  6b25c0:	48 b9 37 6e 20 00 00 	movabs $0x206e37,%rcx
  6b25c7:	00 00 00 
  6b25ca:	ba fe 05 00 00       	mov    $0x5fe,%edx
  6b25cf:	e8 bc 93 00 00       	callq  6bb990 <__assert_fail@plt>
  6b25d4:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b25d8:	83 f8 20             	cmp    $0x20,%eax
  6b25db:	75 05                	jne    6b25e2 <http_parser_execute+0x30d2>
  6b25dd:	e9 a0 05 00 00       	jmpq   6b2b82 <http_parser_execute+0x3672>
  6b25e2:	c7 45 d4 0b 00 00 00 	movl   $0xb,-0x2c(%rbp)
  6b25e9:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b25ed:	83 f8 20             	cmp    $0x20,%eax
  6b25f0:	75 0c                	jne    6b25fe <http_parser_execute+0x30ee>
  6b25f2:	c7 45 d4 0c 00 00 00 	movl   $0xc,-0x2c(%rbp)
  6b25f9:	e9 84 05 00 00       	jmpq   6b2b82 <http_parser_execute+0x3672>
  6b25fe:	0f be 4d ff          	movsbl -0x1(%rbp),%ecx
  6b2602:	31 c0                	xor    %eax,%eax
  6b2604:	83 f9 30             	cmp    $0x30,%ecx
  6b2607:	7c 0a                	jl     6b2613 <http_parser_execute+0x3103>
  6b2609:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b260d:	83 f8 39             	cmp    $0x39,%eax
  6b2610:	0f 9e c0             	setle  %al
  6b2613:	34 ff                	xor    $0xff,%al
  6b2615:	34 ff                	xor    $0xff,%al
  6b2617:	34 ff                	xor    $0xff,%al
  6b2619:	24 01                	and    $0x1,%al
  6b261b:	0f b6 c0             	movzbl %al,%eax
  6b261e:	48 98                	cltq   
  6b2620:	48 83 f8 00          	cmp    $0x0,%rax
  6b2624:	74 40                	je     6b2666 <http_parser_execute+0x3156>
  6b2626:	eb 00                	jmp    6b2628 <http_parser_execute+0x3118>
  6b2628:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b262b:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b262f:	89 41 04             	mov    %eax,0x4(%rcx)
  6b2632:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b2636:	8b 48 14             	mov    0x14(%rax),%ecx
  6b2639:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b263f:	81 c9 00 00 00 19    	or     $0x19000000,%ecx
  6b2645:	89 48 14             	mov    %ecx,0x14(%rax)
  6b2648:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  6b264b:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b264f:	8b 11                	mov    (%rcx),%edx
  6b2651:	83 e0 7f             	and    $0x7f,%eax
  6b2654:	c1 e0 11             	shl    $0x11,%eax
  6b2657:	81 e2 ff ff 01 ff    	and    $0xff01ffff,%edx
  6b265d:	09 c2                	or     %eax,%edx
  6b265f:	89 11                	mov    %edx,(%rcx)
  6b2661:	e9 2a 2b 00 00       	jmpq   6b5190 <http_parser_execute+0x5c80>
  6b2666:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b266a:	48 8b 40 08          	mov    0x8(%rax),%rax
  6b266e:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
  6b2675:	48 6b 85 68 ff ff ff 	imul   $0xa,-0x98(%rbp),%rax
  6b267c:	0a 
  6b267d:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
  6b2684:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b2688:	83 e8 30             	sub    $0x30,%eax
  6b268b:	48 98                	cltq   
  6b268d:	48 03 85 68 ff ff ff 	add    -0x98(%rbp),%rax
  6b2694:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
  6b269b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b269f:	48 b9 98 99 99 99 99 	movabs $0x1999999999999998,%rcx
  6b26a6:	99 99 19 
  6b26a9:	48 3b 48 08          	cmp    0x8(%rax),%rcx
  6b26ad:	0f 92 c0             	setb   %al
  6b26b0:	34 ff                	xor    $0xff,%al
  6b26b2:	34 ff                	xor    $0xff,%al
  6b26b4:	24 01                	and    $0x1,%al
  6b26b6:	0f b6 c0             	movzbl %al,%eax
  6b26b9:	48 98                	cltq   
  6b26bb:	48 83 f8 00          	cmp    $0x0,%rax
  6b26bf:	74 40                	je     6b2701 <http_parser_execute+0x31f1>
  6b26c1:	eb 00                	jmp    6b26c3 <http_parser_execute+0x31b3>
  6b26c3:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b26c6:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b26ca:	89 41 04             	mov    %eax,0x4(%rcx)
  6b26cd:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b26d1:	8b 48 14             	mov    0x14(%rax),%ecx
  6b26d4:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b26da:	81 c9 00 00 00 19    	or     $0x19000000,%ecx
  6b26e0:	89 48 14             	mov    %ecx,0x14(%rax)
  6b26e3:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  6b26e6:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b26ea:	8b 11                	mov    (%rcx),%edx
  6b26ec:	83 e0 7f             	and    $0x7f,%eax
  6b26ef:	c1 e0 11             	shl    $0x11,%eax
  6b26f2:	81 e2 ff ff 01 ff    	and    $0xff01ffff,%edx
  6b26f8:	09 c2                	or     %eax,%edx
  6b26fa:	89 11                	mov    %edx,(%rcx)
  6b26fc:	e9 8f 2a 00 00       	jmpq   6b5190 <http_parser_execute+0x5c80>
  6b2701:	48 8b 85 68 ff ff ff 	mov    -0x98(%rbp),%rax
  6b2708:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b270c:	48 89 41 08          	mov    %rax,0x8(%rcx)
  6b2710:	e9 6d 04 00 00       	jmpq   6b2b82 <http_parser_execute+0x3672>
  6b2715:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b2719:	83 f8 20             	cmp    $0x20,%eax
  6b271c:	75 05                	jne    6b2723 <http_parser_execute+0x3213>
  6b271e:	e9 5f 04 00 00       	jmpq   6b2b82 <http_parser_execute+0x3672>
  6b2723:	eb 00                	jmp    6b2725 <http_parser_execute+0x3215>
  6b2725:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b2728:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b272c:	89 41 04             	mov    %eax,0x4(%rcx)
  6b272f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b2733:	8b 48 14             	mov    0x14(%rax),%ecx
  6b2736:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b273c:	81 c9 00 00 00 19    	or     $0x19000000,%ecx
  6b2742:	89 48 14             	mov    %ecx,0x14(%rax)
  6b2745:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  6b2748:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b274c:	8b 11                	mov    (%rcx),%edx
  6b274e:	83 e0 7f             	and    $0x7f,%eax
  6b2751:	c1 e0 11             	shl    $0x11,%eax
  6b2754:	81 e2 ff ff 01 ff    	and    $0xff01ffff,%edx
  6b275a:	09 c2                	or     %eax,%edx
  6b275c:	89 11                	mov    %edx,(%rcx)
  6b275e:	e9 2d 2a 00 00       	jmpq   6b5190 <http_parser_execute+0x5c80>
  6b2763:	0f be 45 eb          	movsbl -0x15(%rbp),%eax
  6b2767:	b9 63 00 00 00       	mov    $0x63,%ecx
  6b276c:	39 c1                	cmp    %eax,%ecx
  6b276e:	75 09                	jne    6b2779 <http_parser_execute+0x3269>
  6b2770:	c7 45 d4 10 00 00 00 	movl   $0x10,-0x2c(%rbp)
  6b2777:	eb 4a                	jmp    6b27c3 <http_parser_execute+0x32b3>
  6b2779:	0f be 45 eb          	movsbl -0x15(%rbp),%eax
  6b277d:	83 f8 20             	cmp    $0x20,%eax
  6b2780:	75 08                	jne    6b278a <http_parser_execute+0x327a>
  6b2782:	31 c0                	xor    %eax,%eax
  6b2784:	a8 01                	test   $0x1,%al
  6b2786:	75 13                	jne    6b279b <http_parser_execute+0x328b>
  6b2788:	eb 1a                	jmp    6b27a4 <http_parser_execute+0x3294>
  6b278a:	0f b6 45 eb          	movzbl -0x15(%rbp),%eax
  6b278e:	0f be 04 05 a0 83 20 	movsbl 0x2083a0(,%rax,1),%eax
  6b2795:	00 
  6b2796:	83 f8 00             	cmp    $0x0,%eax
  6b2799:	74 09                	je     6b27a4 <http_parser_execute+0x3294>
  6b279b:	c7 45 d4 11 00 00 00 	movl   $0x11,-0x2c(%rbp)
  6b27a2:	eb 1d                	jmp    6b27c1 <http_parser_execute+0x32b1>
  6b27a4:	0f be 45 eb          	movsbl -0x15(%rbp),%eax
  6b27a8:	83 f8 20             	cmp    $0x20,%eax
  6b27ab:	74 09                	je     6b27b6 <http_parser_execute+0x32a6>
  6b27ad:	0f be 45 eb          	movsbl -0x15(%rbp),%eax
  6b27b1:	83 f8 09             	cmp    $0x9,%eax
  6b27b4:	75 02                	jne    6b27b8 <http_parser_execute+0x32a8>
  6b27b6:	eb 07                	jmp    6b27bf <http_parser_execute+0x32af>
  6b27b8:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%rbp)
  6b27bf:	eb 00                	jmp    6b27c1 <http_parser_execute+0x32b1>
  6b27c1:	eb 00                	jmp    6b27c3 <http_parser_execute+0x32b3>
  6b27c3:	e9 ba 03 00 00       	jmpq   6b2b82 <http_parser_execute+0x3672>
  6b27c8:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b27cc:	8b 08                	mov    (%rax),%ecx
  6b27ce:	c1 e9 18             	shr    $0x18,%ecx
  6b27d1:	83 e1 1f             	and    $0x1f,%ecx
  6b27d4:	83 c1 01             	add    $0x1,%ecx
  6b27d7:	8b 10                	mov    (%rax),%edx
  6b27d9:	83 e1 1f             	and    $0x1f,%ecx
  6b27dc:	c1 e1 18             	shl    $0x18,%ecx
  6b27df:	81 e2 ff ff ff e0    	and    $0xe0ffffff,%edx
  6b27e5:	09 ca                	or     %ecx,%edx
  6b27e7:	89 10                	mov    %edx,(%rax)
  6b27e9:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b27ed:	8b 00                	mov    (%rax),%eax
  6b27ef:	c1 e8 18             	shr    $0x18,%eax
  6b27f2:	83 e0 1f             	and    $0x1f,%eax
  6b27f5:	89 c0                	mov    %eax,%eax
  6b27f7:	48 83 f8 07          	cmp    $0x7,%rax
  6b27fb:	77 1e                	ja     6b281b <http_parser_execute+0x330b>
  6b27fd:	0f be 45 eb          	movsbl -0x15(%rbp),%eax
  6b2801:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b2805:	8b 09                	mov    (%rcx),%ecx
  6b2807:	c1 e9 18             	shr    $0x18,%ecx
  6b280a:	83 e1 1f             	and    $0x1f,%ecx
  6b280d:	89 c9                	mov    %ecx,%ecx
  6b280f:	0f be 0c 0d 9c 48 20 	movsbl 0x20489c(,%rcx,1),%ecx
  6b2816:	00 
  6b2817:	39 c8                	cmp    %ecx,%eax
  6b2819:	74 09                	je     6b2824 <http_parser_execute+0x3314>
  6b281b:	c7 45 d4 11 00 00 00 	movl   $0x11,-0x2c(%rbp)
  6b2822:	eb 1d                	jmp    6b2841 <http_parser_execute+0x3331>
  6b2824:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b2828:	8b 00                	mov    (%rax),%eax
  6b282a:	c1 e8 18             	shr    $0x18,%eax
  6b282d:	83 e0 1f             	and    $0x1f,%eax
  6b2830:	89 c0                	mov    %eax,%eax
  6b2832:	48 83 f8 06          	cmp    $0x6,%rax
  6b2836:	75 07                	jne    6b283f <http_parser_execute+0x332f>
  6b2838:	c7 45 d4 17 00 00 00 	movl   $0x17,-0x2c(%rbp)
  6b283f:	eb 00                	jmp    6b2841 <http_parser_execute+0x3331>
  6b2841:	e9 3c 03 00 00       	jmpq   6b2b82 <http_parser_execute+0x3672>
  6b2846:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b284a:	83 f8 2c             	cmp    $0x2c,%eax
  6b284d:	75 18                	jne    6b2867 <http_parser_execute+0x3357>
  6b284f:	c7 45 d4 0f 00 00 00 	movl   $0xf,-0x2c(%rbp)
  6b2856:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b285a:	8b 08                	mov    (%rax),%ecx
  6b285c:	81 e1 ff ff ff e0    	and    $0xe0ffffff,%ecx
  6b2862:	83 c9 00             	or     $0x0,%ecx
  6b2865:	89 08                	mov    %ecx,(%rax)
  6b2867:	e9 16 03 00 00       	jmpq   6b2b82 <http_parser_execute+0x3672>
  6b286c:	0f be 45 eb          	movsbl -0x15(%rbp),%eax
  6b2870:	83 f8 6b             	cmp    $0x6b,%eax
  6b2873:	75 09                	jne    6b287e <http_parser_execute+0x336e>
  6b2875:	c7 45 d4 13 00 00 00 	movl   $0x13,-0x2c(%rbp)
  6b287c:	eb 72                	jmp    6b28f0 <http_parser_execute+0x33e0>
  6b287e:	0f be 45 eb          	movsbl -0x15(%rbp),%eax
  6b2882:	83 f8 63             	cmp    $0x63,%eax
  6b2885:	75 09                	jne    6b2890 <http_parser_execute+0x3380>
  6b2887:	c7 45 d4 14 00 00 00 	movl   $0x14,-0x2c(%rbp)
  6b288e:	eb 5e                	jmp    6b28ee <http_parser_execute+0x33de>
  6b2890:	0f be 45 eb          	movsbl -0x15(%rbp),%eax
  6b2894:	83 f8 75             	cmp    $0x75,%eax
  6b2897:	75 09                	jne    6b28a2 <http_parser_execute+0x3392>
  6b2899:	c7 45 d4 15 00 00 00 	movl   $0x15,-0x2c(%rbp)
  6b28a0:	eb 4a                	jmp    6b28ec <http_parser_execute+0x33dc>
  6b28a2:	0f be 45 eb          	movsbl -0x15(%rbp),%eax
  6b28a6:	83 f8 20             	cmp    $0x20,%eax
  6b28a9:	75 08                	jne    6b28b3 <http_parser_execute+0x33a3>
  6b28ab:	31 c0                	xor    %eax,%eax
  6b28ad:	a8 01                	test   $0x1,%al
  6b28af:	75 13                	jne    6b28c4 <http_parser_execute+0x33b4>
  6b28b1:	eb 1a                	jmp    6b28cd <http_parser_execute+0x33bd>
  6b28b3:	0f b6 45 eb          	movzbl -0x15(%rbp),%eax
  6b28b7:	0f be 04 05 a0 83 20 	movsbl 0x2083a0(,%rax,1),%eax
  6b28be:	00 
  6b28bf:	83 f8 00             	cmp    $0x0,%eax
  6b28c2:	74 09                	je     6b28cd <http_parser_execute+0x33bd>
  6b28c4:	c7 45 d4 16 00 00 00 	movl   $0x16,-0x2c(%rbp)
  6b28cb:	eb 1d                	jmp    6b28ea <http_parser_execute+0x33da>
  6b28cd:	0f be 45 eb          	movsbl -0x15(%rbp),%eax
  6b28d1:	83 f8 20             	cmp    $0x20,%eax
  6b28d4:	74 09                	je     6b28df <http_parser_execute+0x33cf>
  6b28d6:	0f be 45 eb          	movsbl -0x15(%rbp),%eax
  6b28da:	83 f8 09             	cmp    $0x9,%eax
  6b28dd:	75 02                	jne    6b28e1 <http_parser_execute+0x33d1>
  6b28df:	eb 07                	jmp    6b28e8 <http_parser_execute+0x33d8>
  6b28e1:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%rbp)
  6b28e8:	eb 00                	jmp    6b28ea <http_parser_execute+0x33da>
  6b28ea:	eb 00                	jmp    6b28ec <http_parser_execute+0x33dc>
  6b28ec:	eb 00                	jmp    6b28ee <http_parser_execute+0x33de>
  6b28ee:	eb 00                	jmp    6b28f0 <http_parser_execute+0x33e0>
  6b28f0:	e9 8d 02 00 00       	jmpq   6b2b82 <http_parser_execute+0x3672>
  6b28f5:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b28f9:	8b 08                	mov    (%rax),%ecx
  6b28fb:	c1 e9 18             	shr    $0x18,%ecx
  6b28fe:	83 e1 1f             	and    $0x1f,%ecx
  6b2901:	83 c1 01             	add    $0x1,%ecx
  6b2904:	8b 10                	mov    (%rax),%edx
  6b2906:	83 e1 1f             	and    $0x1f,%ecx
  6b2909:	c1 e1 18             	shl    $0x18,%ecx
  6b290c:	81 e2 ff ff ff e0    	and    $0xe0ffffff,%edx
  6b2912:	09 ca                	or     %ecx,%edx
  6b2914:	89 10                	mov    %edx,(%rax)
  6b2916:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b291a:	8b 00                	mov    (%rax),%eax
  6b291c:	c1 e8 18             	shr    $0x18,%eax
  6b291f:	83 e0 1f             	and    $0x1f,%eax
  6b2922:	89 c0                	mov    %eax,%eax
  6b2924:	48 83 f8 0a          	cmp    $0xa,%rax
  6b2928:	77 1e                	ja     6b2948 <http_parser_execute+0x3438>
  6b292a:	0f be 45 eb          	movsbl -0x15(%rbp),%eax
  6b292e:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b2932:	8b 09                	mov    (%rcx),%ecx
  6b2934:	c1 e9 18             	shr    $0x18,%ecx
  6b2937:	83 e1 1f             	and    $0x1f,%ecx
  6b293a:	89 c9                	mov    %ecx,%ecx
  6b293c:	0f be 0c 0d 75 20 20 	movsbl 0x202075(,%rcx,1),%ecx
  6b2943:	00 
  6b2944:	39 c8                	cmp    %ecx,%eax
  6b2946:	74 09                	je     6b2951 <http_parser_execute+0x3441>
  6b2948:	c7 45 d4 16 00 00 00 	movl   $0x16,-0x2c(%rbp)
  6b294f:	eb 1d                	jmp    6b296e <http_parser_execute+0x345e>
  6b2951:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b2955:	8b 00                	mov    (%rax),%eax
  6b2957:	c1 e8 18             	shr    $0x18,%eax
  6b295a:	83 e0 1f             	and    $0x1f,%eax
  6b295d:	89 c0                	mov    %eax,%eax
  6b295f:	48 83 f8 09          	cmp    $0x9,%rax
  6b2963:	75 07                	jne    6b296c <http_parser_execute+0x345c>
  6b2965:	c7 45 d4 18 00 00 00 	movl   $0x18,-0x2c(%rbp)
  6b296c:	eb 00                	jmp    6b296e <http_parser_execute+0x345e>
  6b296e:	e9 0f 02 00 00       	jmpq   6b2b82 <http_parser_execute+0x3672>
  6b2973:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b2977:	8b 08                	mov    (%rax),%ecx
  6b2979:	c1 e9 18             	shr    $0x18,%ecx
  6b297c:	83 e1 1f             	and    $0x1f,%ecx
  6b297f:	83 c1 01             	add    $0x1,%ecx
  6b2982:	8b 10                	mov    (%rax),%edx
  6b2984:	83 e1 1f             	and    $0x1f,%ecx
  6b2987:	c1 e1 18             	shl    $0x18,%ecx
  6b298a:	81 e2 ff ff ff e0    	and    $0xe0ffffff,%edx
  6b2990:	09 ca                	or     %ecx,%edx
  6b2992:	89 10                	mov    %edx,(%rax)
  6b2994:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b2998:	8b 00                	mov    (%rax),%eax
  6b299a:	c1 e8 18             	shr    $0x18,%eax
  6b299d:	83 e0 1f             	and    $0x1f,%eax
  6b29a0:	89 c0                	mov    %eax,%eax
  6b29a2:	48 83 f8 05          	cmp    $0x5,%rax
  6b29a6:	77 1e                	ja     6b29c6 <http_parser_execute+0x34b6>
  6b29a8:	0f be 45 eb          	movsbl -0x15(%rbp),%eax
  6b29ac:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b29b0:	8b 09                	mov    (%rcx),%ecx
  6b29b2:	c1 e9 18             	shr    $0x18,%ecx
  6b29b5:	83 e1 1f             	and    $0x1f,%ecx
  6b29b8:	89 c9                	mov    %ecx,%ecx
  6b29ba:	0f be 0c 0d 2f 2e 20 	movsbl 0x202e2f(,%rcx,1),%ecx
  6b29c1:	00 
  6b29c2:	39 c8                	cmp    %ecx,%eax
  6b29c4:	74 09                	je     6b29cf <http_parser_execute+0x34bf>
  6b29c6:	c7 45 d4 16 00 00 00 	movl   $0x16,-0x2c(%rbp)
  6b29cd:	eb 1d                	jmp    6b29ec <http_parser_execute+0x34dc>
  6b29cf:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b29d3:	8b 00                	mov    (%rax),%eax
  6b29d5:	c1 e8 18             	shr    $0x18,%eax
  6b29d8:	83 e0 1f             	and    $0x1f,%eax
  6b29db:	89 c0                	mov    %eax,%eax
  6b29dd:	48 83 f8 04          	cmp    $0x4,%rax
  6b29e1:	75 07                	jne    6b29ea <http_parser_execute+0x34da>
  6b29e3:	c7 45 d4 19 00 00 00 	movl   $0x19,-0x2c(%rbp)
  6b29ea:	eb 00                	jmp    6b29ec <http_parser_execute+0x34dc>
  6b29ec:	e9 91 01 00 00       	jmpq   6b2b82 <http_parser_execute+0x3672>
  6b29f1:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b29f5:	8b 08                	mov    (%rax),%ecx
  6b29f7:	c1 e9 18             	shr    $0x18,%ecx
  6b29fa:	83 e1 1f             	and    $0x1f,%ecx
  6b29fd:	83 c1 01             	add    $0x1,%ecx
  6b2a00:	8b 10                	mov    (%rax),%edx
  6b2a02:	83 e1 1f             	and    $0x1f,%ecx
  6b2a05:	c1 e1 18             	shl    $0x18,%ecx
  6b2a08:	81 e2 ff ff ff e0    	and    $0xe0ffffff,%edx
  6b2a0e:	09 ca                	or     %ecx,%edx
  6b2a10:	89 10                	mov    %edx,(%rax)
  6b2a12:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b2a16:	8b 00                	mov    (%rax),%eax
  6b2a18:	c1 e8 18             	shr    $0x18,%eax
  6b2a1b:	83 e0 1f             	and    $0x1f,%eax
  6b2a1e:	89 c0                	mov    %eax,%eax
  6b2a20:	48 83 f8 07          	cmp    $0x7,%rax
  6b2a24:	77 1e                	ja     6b2a44 <http_parser_execute+0x3534>
  6b2a26:	0f be 45 eb          	movsbl -0x15(%rbp),%eax
  6b2a2a:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b2a2e:	8b 09                	mov    (%rcx),%ecx
  6b2a30:	c1 e9 18             	shr    $0x18,%ecx
  6b2a33:	83 e1 1f             	and    $0x1f,%ecx
  6b2a36:	89 c9                	mov    %ecx,%ecx
  6b2a38:	0f be 0c 0d 79 69 20 	movsbl 0x206979(,%rcx,1),%ecx
  6b2a3f:	00 
  6b2a40:	39 c8                	cmp    %ecx,%eax
  6b2a42:	74 09                	je     6b2a4d <http_parser_execute+0x353d>
  6b2a44:	c7 45 d4 16 00 00 00 	movl   $0x16,-0x2c(%rbp)
  6b2a4b:	eb 1d                	jmp    6b2a6a <http_parser_execute+0x355a>
  6b2a4d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b2a51:	8b 00                	mov    (%rax),%eax
  6b2a53:	c1 e8 18             	shr    $0x18,%eax
  6b2a56:	83 e0 1f             	and    $0x1f,%eax
  6b2a59:	89 c0                	mov    %eax,%eax
  6b2a5b:	48 83 f8 06          	cmp    $0x6,%rax
  6b2a5f:	75 07                	jne    6b2a68 <http_parser_execute+0x3558>
  6b2a61:	c7 45 d4 1a 00 00 00 	movl   $0x1a,-0x2c(%rbp)
  6b2a68:	eb 00                	jmp    6b2a6a <http_parser_execute+0x355a>
  6b2a6a:	e9 13 01 00 00       	jmpq   6b2b82 <http_parser_execute+0x3672>
  6b2a6f:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b2a73:	83 f8 2c             	cmp    $0x2c,%eax
  6b2a76:	75 18                	jne    6b2a90 <http_parser_execute+0x3580>
  6b2a78:	c7 45 d4 12 00 00 00 	movl   $0x12,-0x2c(%rbp)
  6b2a7f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b2a83:	8b 08                	mov    (%rax),%ecx
  6b2a85:	81 e1 ff ff ff e0    	and    $0xe0ffffff,%ecx
  6b2a8b:	83 c9 00             	or     $0x0,%ecx
  6b2a8e:	89 08                	mov    %ecx,(%rax)
  6b2a90:	e9 ed 00 00 00       	jmpq   6b2b82 <http_parser_execute+0x3672>
  6b2a95:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b2a99:	83 f8 20             	cmp    $0x20,%eax
  6b2a9c:	74 07                	je     6b2aa5 <http_parser_execute+0x3595>
  6b2a9e:	c7 45 d4 11 00 00 00 	movl   $0x11,-0x2c(%rbp)
  6b2aa5:	e9 d8 00 00 00       	jmpq   6b2b82 <http_parser_execute+0x3672>
  6b2aaa:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b2aae:	83 f8 2c             	cmp    $0x2c,%eax
  6b2ab1:	0f 85 a9 00 00 00    	jne    6b2b60 <http_parser_execute+0x3650>
  6b2ab7:	83 7d d4 18          	cmpl   $0x18,-0x2c(%rbp)
  6b2abb:	75 29                	jne    6b2ae6 <http_parser_execute+0x35d6>
  6b2abd:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b2ac1:	8b 08                	mov    (%rax),%ecx
  6b2ac3:	c1 e9 02             	shr    $0x2,%ecx
  6b2ac6:	81 e1 ff 00 00 00    	and    $0xff,%ecx
  6b2acc:	83 c9 02             	or     $0x2,%ecx
  6b2acf:	8b 10                	mov    (%rax),%edx
  6b2ad1:	81 e1 ff 00 00 00    	and    $0xff,%ecx
  6b2ad7:	c1 e1 02             	shl    $0x2,%ecx
  6b2ada:	81 e2 03 fc ff ff    	and    $0xfffffc03,%edx
  6b2ae0:	09 ca                	or     %ecx,%edx
  6b2ae2:	89 10                	mov    %edx,(%rax)
  6b2ae4:	eb 60                	jmp    6b2b46 <http_parser_execute+0x3636>
  6b2ae6:	83 7d d4 19          	cmpl   $0x19,-0x2c(%rbp)
  6b2aea:	75 29                	jne    6b2b15 <http_parser_execute+0x3605>
  6b2aec:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b2af0:	8b 08                	mov    (%rax),%ecx
  6b2af2:	c1 e9 02             	shr    $0x2,%ecx
  6b2af5:	81 e1 ff 00 00 00    	and    $0xff,%ecx
  6b2afb:	83 c9 04             	or     $0x4,%ecx
  6b2afe:	8b 10                	mov    (%rax),%edx
  6b2b00:	81 e1 ff 00 00 00    	and    $0xff,%ecx
  6b2b06:	c1 e1 02             	shl    $0x2,%ecx
  6b2b09:	81 e2 03 fc ff ff    	and    $0xfffffc03,%edx
  6b2b0f:	09 ca                	or     %ecx,%edx
  6b2b11:	89 10                	mov    %edx,(%rax)
  6b2b13:	eb 2f                	jmp    6b2b44 <http_parser_execute+0x3634>
  6b2b15:	83 7d d4 1a          	cmpl   $0x1a,-0x2c(%rbp)
  6b2b19:	75 27                	jne    6b2b42 <http_parser_execute+0x3632>
  6b2b1b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b2b1f:	8b 08                	mov    (%rax),%ecx
  6b2b21:	c1 e9 02             	shr    $0x2,%ecx
  6b2b24:	81 e1 ff 00 00 00    	and    $0xff,%ecx
  6b2b2a:	83 c9 08             	or     $0x8,%ecx
  6b2b2d:	8b 10                	mov    (%rax),%edx
  6b2b2f:	81 e1 ff 00 00 00    	and    $0xff,%ecx
  6b2b35:	c1 e1 02             	shl    $0x2,%ecx
  6b2b38:	81 e2 03 fc ff ff    	and    $0xfffffc03,%edx
  6b2b3e:	09 ca                	or     %ecx,%edx
  6b2b40:	89 10                	mov    %edx,(%rax)
  6b2b42:	eb 00                	jmp    6b2b44 <http_parser_execute+0x3634>
  6b2b44:	eb 00                	jmp    6b2b46 <http_parser_execute+0x3636>
  6b2b46:	c7 45 d4 12 00 00 00 	movl   $0x12,-0x2c(%rbp)
  6b2b4d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b2b51:	8b 08                	mov    (%rax),%ecx
  6b2b53:	81 e1 ff ff ff e0    	and    $0xe0ffffff,%ecx
  6b2b59:	83 c9 00             	or     $0x0,%ecx
  6b2b5c:	89 08                	mov    %ecx,(%rax)
  6b2b5e:	eb 12                	jmp    6b2b72 <http_parser_execute+0x3662>
  6b2b60:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b2b64:	83 f8 20             	cmp    $0x20,%eax
  6b2b67:	74 07                	je     6b2b70 <http_parser_execute+0x3660>
  6b2b69:	c7 45 d4 16 00 00 00 	movl   $0x16,-0x2c(%rbp)
  6b2b70:	eb 00                	jmp    6b2b72 <http_parser_execute+0x3662>
  6b2b72:	eb 0e                	jmp    6b2b82 <http_parser_execute+0x3672>
  6b2b74:	c7 45 ec 32 00 00 00 	movl   $0x32,-0x14(%rbp)
  6b2b7b:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%rbp)
  6b2b82:	eb 00                	jmp    6b2b84 <http_parser_execute+0x3674>
  6b2b84:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b2b88:	48 83 c0 01          	add    $0x1,%rax
  6b2b8c:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  6b2b90:	e9 f6 f4 ff ff       	jmpq   6b208b <http_parser_execute+0x2b7b>
  6b2b95:	eb 00                	jmp    6b2b97 <http_parser_execute+0x3687>
  6b2b97:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  6b2b9a:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b2b9e:	8b 11                	mov    (%rcx),%edx
  6b2ba0:	83 e0 7f             	and    $0x7f,%eax
  6b2ba3:	c1 e0 11             	shl    $0x11,%eax
  6b2ba6:	81 e2 ff ff 01 ff    	and    $0xff01ffff,%edx
  6b2bac:	09 c2                	or     %eax,%edx
  6b2bae:	89 11                	mov    %edx,(%rcx)
  6b2bb0:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b2bb4:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  6b2bb8:	48 03 4d 88          	add    -0x78(%rbp),%rcx
  6b2bbc:	48 39 c8             	cmp    %rcx,%rax
  6b2bbf:	75 0c                	jne    6b2bcd <http_parser_execute+0x36bd>
  6b2bc1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b2bc5:	48 83 c0 ff          	add    $0xffffffffffffffff,%rax
  6b2bc9:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  6b2bcd:	eb 00                	jmp    6b2bcf <http_parser_execute+0x36bf>
  6b2bcf:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b2bd3:	48 8b 8d 40 ff ff ff 	mov    -0xc0(%rbp),%rcx
  6b2bda:	48 29 c8             	sub    %rcx,%rax
  6b2bdd:	03 45 e4             	add    -0x1c(%rbp),%eax
  6b2be0:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  6b2be3:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b2be6:	3b 04 25 70 dc 6b 00 	cmp    0x6bdc70,%eax
  6b2bed:	0f 97 c0             	seta   %al
  6b2bf0:	34 ff                	xor    $0xff,%al
  6b2bf2:	34 ff                	xor    $0xff,%al
  6b2bf4:	24 01                	and    $0x1,%al
  6b2bf6:	0f b6 c0             	movzbl %al,%eax
  6b2bf9:	48 98                	cltq   
  6b2bfb:	48 83 f8 00          	cmp    $0x0,%rax
  6b2bff:	74 27                	je     6b2c28 <http_parser_execute+0x3718>
  6b2c01:	eb 00                	jmp    6b2c03 <http_parser_execute+0x36f3>
  6b2c03:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b2c06:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b2c0a:	89 41 04             	mov    %eax,0x4(%rcx)
  6b2c0d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b2c11:	8b 48 14             	mov    0x14(%rax),%ecx
  6b2c14:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b2c1a:	81 c9 00 00 00 0c    	or     $0xc000000,%ecx
  6b2c20:	89 48 14             	mov    %ecx,0x14(%rax)
  6b2c23:	e9 68 25 00 00       	jmpq   6b5190 <http_parser_execute+0x5c80>
  6b2c28:	eb 00                	jmp    6b2c2a <http_parser_execute+0x371a>
  6b2c2a:	e9 d6 1d 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6b2c2f:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b2c33:	83 f8 0a             	cmp    $0xa,%eax
  6b2c36:	0f 95 c0             	setne  %al
  6b2c39:	34 ff                	xor    $0xff,%al
  6b2c3b:	34 ff                	xor    $0xff,%al
  6b2c3d:	24 01                	and    $0x1,%al
  6b2c3f:	0f b6 c0             	movzbl %al,%eax
  6b2c42:	48 98                	cltq   
  6b2c44:	48 83 f8 00          	cmp    $0x0,%rax
  6b2c48:	74 27                	je     6b2c71 <http_parser_execute+0x3761>
  6b2c4a:	eb 00                	jmp    6b2c4c <http_parser_execute+0x373c>
  6b2c4c:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b2c4f:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b2c53:	89 41 04             	mov    %eax,0x4(%rcx)
  6b2c56:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b2c5a:	8b 48 14             	mov    0x14(%rax),%ecx
  6b2c5d:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b2c63:	81 c9 00 00 00 17    	or     $0x17000000,%ecx
  6b2c69:	89 48 14             	mov    %ecx,0x14(%rax)
  6b2c6c:	e9 1f 25 00 00       	jmpq   6b5190 <http_parser_execute+0x5c80>
  6b2c71:	c7 45 ec 33 00 00 00 	movl   $0x33,-0x14(%rbp)
  6b2c78:	e9 88 1d 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6b2c7d:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b2c81:	83 f8 20             	cmp    $0x20,%eax
  6b2c84:	74 09                	je     6b2c8f <http_parser_execute+0x377f>
  6b2c86:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b2c8a:	83 f8 09             	cmp    $0x9,%eax
  6b2c8d:	75 31                	jne    6b2cc0 <http_parser_execute+0x37b0>
  6b2c8f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b2c93:	8b 00                	mov    (%rax),%eax
  6b2c95:	c1 e8 11             	shr    $0x11,%eax
  6b2c98:	83 e0 7f             	and    $0x7f,%eax
  6b2c9b:	83 f8 0b             	cmp    $0xb,%eax
  6b2c9e:	75 14                	jne    6b2cb4 <http_parser_execute+0x37a4>
  6b2ca0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b2ca4:	8b 08                	mov    (%rax),%ecx
  6b2ca6:	81 e1 ff ff 01 ff    	and    $0xff01ffff,%ecx
  6b2cac:	81 c9 00 00 18 00    	or     $0x180000,%ecx
  6b2cb2:	89 08                	mov    %ecx,(%rax)
  6b2cb4:	c7 45 ec 31 00 00 00 	movl   $0x31,-0x14(%rbp)
  6b2cbb:	e9 93 cd ff ff       	jmpq   6afa53 <http_parser_execute+0x543>
  6b2cc0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b2cc4:	8b 00                	mov    (%rax),%eax
  6b2cc6:	c1 e8 11             	shr    $0x11,%eax
  6b2cc9:	83 e0 7f             	and    $0x7f,%eax
  6b2ccc:	83 c0 e9             	add    $0xffffffe9,%eax
  6b2ccf:	89 c1                	mov    %eax,%ecx
  6b2cd1:	83 e9 03             	sub    $0x3,%ecx
  6b2cd4:	0f 87 ae 00 00 00    	ja     6b2d88 <http_parser_execute+0x3878>
  6b2cda:	48 8b 04 c5 b0 0b 20 	mov    0x200bb0(,%rax,8),%rax
  6b2ce1:	00 
  6b2ce2:	ff e0                	jmpq   *%rax
  6b2ce4:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b2ce8:	8b 08                	mov    (%rax),%ecx
  6b2cea:	c1 e9 02             	shr    $0x2,%ecx
  6b2ced:	81 e1 ff 00 00 00    	and    $0xff,%ecx
  6b2cf3:	83 c9 02             	or     $0x2,%ecx
  6b2cf6:	8b 10                	mov    (%rax),%edx
  6b2cf8:	81 e1 ff 00 00 00    	and    $0xff,%ecx
  6b2cfe:	c1 e1 02             	shl    $0x2,%ecx
  6b2d01:	81 e2 03 fc ff ff    	and    $0xfffffc03,%edx
  6b2d07:	09 ca                	or     %ecx,%edx
  6b2d09:	89 10                	mov    %edx,(%rax)
  6b2d0b:	eb 7d                	jmp    6b2d8a <http_parser_execute+0x387a>
  6b2d0d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b2d11:	8b 08                	mov    (%rax),%ecx
  6b2d13:	c1 e9 02             	shr    $0x2,%ecx
  6b2d16:	81 e1 ff 00 00 00    	and    $0xff,%ecx
  6b2d1c:	83 c9 04             	or     $0x4,%ecx
  6b2d1f:	8b 10                	mov    (%rax),%edx
  6b2d21:	81 e1 ff 00 00 00    	and    $0xff,%ecx
  6b2d27:	c1 e1 02             	shl    $0x2,%ecx
  6b2d2a:	81 e2 03 fc ff ff    	and    $0xfffffc03,%edx
  6b2d30:	09 ca                	or     %ecx,%edx
  6b2d32:	89 10                	mov    %edx,(%rax)
  6b2d34:	eb 54                	jmp    6b2d8a <http_parser_execute+0x387a>
  6b2d36:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b2d3a:	8b 08                	mov    (%rax),%ecx
  6b2d3c:	c1 e9 02             	shr    $0x2,%ecx
  6b2d3f:	81 e1 ff 00 00 00    	and    $0xff,%ecx
  6b2d45:	83 c9 01             	or     $0x1,%ecx
  6b2d48:	8b 10                	mov    (%rax),%edx
  6b2d4a:	81 e1 ff 00 00 00    	and    $0xff,%ecx
  6b2d50:	c1 e1 02             	shl    $0x2,%ecx
  6b2d53:	81 e2 03 fc ff ff    	and    $0xfffffc03,%edx
  6b2d59:	09 ca                	or     %ecx,%edx
  6b2d5b:	89 10                	mov    %edx,(%rax)
  6b2d5d:	eb 2b                	jmp    6b2d8a <http_parser_execute+0x387a>
  6b2d5f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b2d63:	8b 08                	mov    (%rax),%ecx
  6b2d65:	c1 e9 02             	shr    $0x2,%ecx
  6b2d68:	81 e1 ff 00 00 00    	and    $0xff,%ecx
  6b2d6e:	83 c9 08             	or     $0x8,%ecx
  6b2d71:	8b 10                	mov    (%rax),%edx
  6b2d73:	81 e1 ff 00 00 00    	and    $0xff,%ecx
  6b2d79:	c1 e1 02             	shl    $0x2,%ecx
  6b2d7c:	81 e2 03 fc ff ff    	and    $0xfffffc03,%edx
  6b2d82:	09 ca                	or     %ecx,%edx
  6b2d84:	89 10                	mov    %edx,(%rax)
  6b2d86:	eb 02                	jmp    6b2d8a <http_parser_execute+0x387a>
  6b2d88:	eb 00                	jmp    6b2d8a <http_parser_execute+0x387a>
  6b2d8a:	c7 45 ec 2c 00 00 00 	movl   $0x2c,-0x14(%rbp)
  6b2d91:	e9 bd cc ff ff       	jmpq   6afa53 <http_parser_execute+0x543>
  6b2d96:	eb 00                	jmp    6b2d98 <http_parser_execute+0x3888>
  6b2d98:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b2d9c:	83 f8 0a             	cmp    $0xa,%eax
  6b2d9f:	74 27                	je     6b2dc8 <http_parser_execute+0x38b8>
  6b2da1:	eb 00                	jmp    6b2da3 <http_parser_execute+0x3893>
  6b2da3:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b2da6:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b2daa:	89 41 04             	mov    %eax,0x4(%rcx)
  6b2dad:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b2db1:	8b 48 14             	mov    0x14(%rax),%ecx
  6b2db4:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b2dba:	81 c9 00 00 00 1e    	or     $0x1e000000,%ecx
  6b2dc0:	89 48 14             	mov    %ecx,0x14(%rax)
  6b2dc3:	e9 c8 23 00 00       	jmpq   6b5190 <http_parser_execute+0x5c80>
  6b2dc8:	eb 00                	jmp    6b2dca <http_parser_execute+0x38ba>
  6b2dca:	c7 45 ec 30 00 00 00 	movl   $0x30,-0x14(%rbp)
  6b2dd1:	e9 2f 1c 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6b2dd6:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b2dda:	83 f8 20             	cmp    $0x20,%eax
  6b2ddd:	74 09                	je     6b2de8 <http_parser_execute+0x38d8>
  6b2ddf:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b2de3:	83 f8 09             	cmp    $0x9,%eax
  6b2de6:	75 0c                	jne    6b2df4 <http_parser_execute+0x38e4>
  6b2de8:	c7 45 ec 2e 00 00 00 	movl   $0x2e,-0x14(%rbp)
  6b2def:	e9 11 1c 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6b2df4:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b2df8:	8b 00                	mov    (%rax),%eax
  6b2dfa:	c1 e8 11             	shr    $0x11,%eax
  6b2dfd:	83 e0 7f             	and    $0x7f,%eax
  6b2e00:	83 c0 f6             	add    $0xfffffff6,%eax
  6b2e03:	89 c1                	mov    %eax,%ecx
  6b2e05:	83 e9 10             	sub    $0x10,%ecx
  6b2e08:	0f 87 d8 00 00 00    	ja     6b2ee6 <http_parser_execute+0x39d6>
  6b2e0e:	48 8b 04 c5 28 0b 20 	mov    0x200b28(,%rax,8),%rax
  6b2e15:	00 
  6b2e16:	ff e0                	jmpq   *%rax
  6b2e18:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b2e1c:	8b 08                	mov    (%rax),%ecx
  6b2e1e:	c1 e9 02             	shr    $0x2,%ecx
  6b2e21:	81 e1 ff 00 00 00    	and    $0xff,%ecx
  6b2e27:	83 c9 02             	or     $0x2,%ecx
  6b2e2a:	8b 10                	mov    (%rax),%edx
  6b2e2c:	81 e1 ff 00 00 00    	and    $0xff,%ecx
  6b2e32:	c1 e1 02             	shl    $0x2,%ecx
  6b2e35:	81 e2 03 fc ff ff    	and    $0xfffffc03,%edx
  6b2e3b:	09 ca                	or     %ecx,%edx
  6b2e3d:	89 10                	mov    %edx,(%rax)
  6b2e3f:	e9 a4 00 00 00       	jmpq   6b2ee8 <http_parser_execute+0x39d8>
  6b2e44:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b2e48:	8b 08                	mov    (%rax),%ecx
  6b2e4a:	c1 e9 02             	shr    $0x2,%ecx
  6b2e4d:	81 e1 ff 00 00 00    	and    $0xff,%ecx
  6b2e53:	83 c9 04             	or     $0x4,%ecx
  6b2e56:	8b 10                	mov    (%rax),%edx
  6b2e58:	81 e1 ff 00 00 00    	and    $0xff,%ecx
  6b2e5e:	c1 e1 02             	shl    $0x2,%ecx
  6b2e61:	81 e2 03 fc ff ff    	and    $0xfffffc03,%edx
  6b2e67:	09 ca                	or     %ecx,%edx
  6b2e69:	89 10                	mov    %edx,(%rax)
  6b2e6b:	eb 7b                	jmp    6b2ee8 <http_parser_execute+0x39d8>
  6b2e6d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b2e71:	8b 08                	mov    (%rax),%ecx
  6b2e73:	c1 e9 02             	shr    $0x2,%ecx
  6b2e76:	81 e1 ff 00 00 00    	and    $0xff,%ecx
  6b2e7c:	83 c9 08             	or     $0x8,%ecx
  6b2e7f:	8b 10                	mov    (%rax),%edx
  6b2e81:	81 e1 ff 00 00 00    	and    $0xff,%ecx
  6b2e87:	c1 e1 02             	shl    $0x2,%ecx
  6b2e8a:	81 e2 03 fc ff ff    	and    $0xfffffc03,%edx
  6b2e90:	09 ca                	or     %ecx,%edx
  6b2e92:	89 10                	mov    %edx,(%rax)
  6b2e94:	eb 52                	jmp    6b2ee8 <http_parser_execute+0x39d8>
  6b2e96:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b2e9a:	8b 08                	mov    (%rax),%ecx
  6b2e9c:	c1 e9 02             	shr    $0x2,%ecx
  6b2e9f:	81 e1 ff 00 00 00    	and    $0xff,%ecx
  6b2ea5:	83 c9 01             	or     $0x1,%ecx
  6b2ea8:	8b 10                	mov    (%rax),%edx
  6b2eaa:	81 e1 ff 00 00 00    	and    $0xff,%ecx
  6b2eb0:	c1 e1 02             	shl    $0x2,%ecx
  6b2eb3:	81 e2 03 fc ff ff    	and    $0xfffffc03,%edx
  6b2eb9:	09 ca                	or     %ecx,%edx
  6b2ebb:	89 10                	mov    %edx,(%rax)
  6b2ebd:	eb 29                	jmp    6b2ee8 <http_parser_execute+0x39d8>
  6b2ebf:	eb 00                	jmp    6b2ec1 <http_parser_execute+0x39b1>
  6b2ec1:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b2ec4:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b2ec8:	89 41 04             	mov    %eax,0x4(%rcx)
  6b2ecb:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b2ecf:	8b 48 14             	mov    0x14(%rax),%ecx
  6b2ed2:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b2ed8:	81 c9 00 00 00 19    	or     $0x19000000,%ecx
  6b2ede:	89 48 14             	mov    %ecx,0x14(%rax)
  6b2ee1:	e9 aa 22 00 00       	jmpq   6b5190 <http_parser_execute+0x5c80>
  6b2ee6:	eb 00                	jmp    6b2ee8 <http_parser_execute+0x39d8>
  6b2ee8:	eb 00                	jmp    6b2eea <http_parser_execute+0x39da>
  6b2eea:	48 83 7d a8 00       	cmpq   $0x0,-0x58(%rbp)
  6b2eef:	75 08                	jne    6b2ef9 <http_parser_execute+0x39e9>
  6b2ef1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b2ef5:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  6b2ef9:	eb 00                	jmp    6b2efb <http_parser_execute+0x39eb>
  6b2efb:	c7 45 ec 2c 00 00 00 	movl   $0x2c,-0x14(%rbp)
  6b2f02:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b2f06:	8b 40 14             	mov    0x14(%rax),%eax
  6b2f09:	c1 e8 18             	shr    $0x18,%eax
  6b2f0c:	83 e0 7f             	and    $0x7f,%eax
  6b2f0f:	83 f8 00             	cmp    $0x0,%eax
  6b2f12:	75 02                	jne    6b2f16 <http_parser_execute+0x3a06>
  6b2f14:	eb 28                	jmp    6b2f3e <http_parser_execute+0x3a2e>
  6b2f16:	48 bf 00 2e 20 00 00 	movabs $0x202e00,%rdi
  6b2f1d:	00 00 00 
  6b2f20:	48 be f5 2b 20 00 00 	movabs $0x202bf5,%rsi
  6b2f27:	00 00 00 
  6b2f2a:	48 b9 37 6e 20 00 00 	movabs $0x206e37,%rcx
  6b2f31:	00 00 00 
  6b2f34:	ba fe 06 00 00       	mov    $0x6fe,%edx
  6b2f39:	e8 52 8a 00 00       	callq  6bb990 <__assert_fail@plt>
  6b2f3e:	48 83 7d a8 00       	cmpq   $0x0,-0x58(%rbp)
  6b2f43:	0f 84 0d 01 00 00    	je     6b3056 <http_parser_execute+0x3b46>
  6b2f49:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6b2f4d:	48 83 78 20 00       	cmpq   $0x0,0x20(%rax)
  6b2f52:	0f 95 c0             	setne  %al
  6b2f55:	34 ff                	xor    $0xff,%al
  6b2f57:	34 ff                	xor    $0xff,%al
  6b2f59:	24 01                	and    $0x1,%al
  6b2f5b:	0f b6 c0             	movzbl %al,%eax
  6b2f5e:	48 98                	cltq   
  6b2f60:	48 83 f8 00          	cmp    $0x0,%rax
  6b2f64:	0f 84 e4 00 00 00    	je     6b304e <http_parser_execute+0x3b3e>
  6b2f6a:	8b 45 ec             	mov    -0x14(%rbp),%eax
  6b2f6d:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b2f71:	8b 11                	mov    (%rcx),%edx
  6b2f73:	83 e0 7f             	and    $0x7f,%eax
  6b2f76:	c1 e0 0a             	shl    $0xa,%eax
  6b2f79:	81 e2 ff 03 fe ff    	and    $0xfffe03ff,%edx
  6b2f7f:	09 c2                	or     %eax,%edx
  6b2f81:	89 11                	mov    %edx,(%rcx)
  6b2f83:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6b2f87:	48 8b 48 20          	mov    0x20(%rax),%rcx
  6b2f8b:	48 b8 40 b8 6b 00 00 	movabs $0x6bb840,%rax
  6b2f92:	00 00 00 
  6b2f95:	48 89 ca             	mov    %rcx,%rdx
  6b2f98:	48 29 c2             	sub    %rax,%rdx
  6b2f9b:	48 89 d0             	mov    %rdx,%rax
  6b2f9e:	48 c1 e8 03          	shr    $0x3,%rax
  6b2fa2:	48 c1 e2 3d          	shl    $0x3d,%rdx
  6b2fa6:	48 09 d0             	or     %rdx,%rax
  6b2fa9:	48 83 f8 0f          	cmp    $0xf,%rax
  6b2fad:	76 05                	jbe    6b2fb4 <http_parser_execute+0x3aa4>
  6b2faf:	67 0f b9 40 02       	ud1    0x2(%eax),%eax
  6b2fb4:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b2fb8:	48 8b 75 a8          	mov    -0x58(%rbp),%rsi
  6b2fbc:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  6b2fc0:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  6b2fc4:	48 29 c2             	sub    %rax,%rdx
  6b2fc7:	ff d1                	callq  *%rcx
  6b2fc9:	31 c9                	xor    %ecx,%ecx
  6b2fcb:	39 c1                	cmp    %eax,%ecx
  6b2fcd:	0f 95 c0             	setne  %al
  6b2fd0:	34 ff                	xor    $0xff,%al
  6b2fd2:	34 ff                	xor    $0xff,%al
  6b2fd4:	24 01                	and    $0x1,%al
  6b2fd6:	0f b6 c0             	movzbl %al,%eax
  6b2fd9:	48 98                	cltq   
  6b2fdb:	48 83 f8 00          	cmp    $0x0,%rax
  6b2fdf:	74 24                	je     6b3005 <http_parser_execute+0x3af5>
  6b2fe1:	eb 00                	jmp    6b2fe3 <http_parser_execute+0x3ad3>
  6b2fe3:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b2fe6:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b2fea:	89 41 04             	mov    %eax,0x4(%rcx)
  6b2fed:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b2ff1:	8b 48 14             	mov    0x14(%rax),%ecx
  6b2ff4:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b2ffa:	81 c9 00 00 00 04    	or     $0x4000000,%ecx
  6b3000:	89 48 14             	mov    %ecx,0x14(%rax)
  6b3003:	eb 00                	jmp    6b3005 <http_parser_execute+0x3af5>
  6b3005:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b3009:	8b 00                	mov    (%rax),%eax
  6b300b:	c1 e8 0a             	shr    $0xa,%eax
  6b300e:	83 e0 7f             	and    $0x7f,%eax
  6b3011:	89 45 ec             	mov    %eax,-0x14(%rbp)
  6b3014:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b3018:	8b 40 14             	mov    0x14(%rax),%eax
  6b301b:	c1 e8 18             	shr    $0x18,%eax
  6b301e:	83 e0 7f             	and    $0x7f,%eax
  6b3021:	83 f8 00             	cmp    $0x0,%eax
  6b3024:	0f 95 c0             	setne  %al
  6b3027:	34 ff                	xor    $0xff,%al
  6b3029:	34 ff                	xor    $0xff,%al
  6b302b:	24 01                	and    $0x1,%al
  6b302d:	0f b6 c0             	movzbl %al,%eax
  6b3030:	48 98                	cltq   
  6b3032:	48 83 f8 00          	cmp    $0x0,%rax
  6b3036:	74 14                	je     6b304c <http_parser_execute+0x3b3c>
  6b3038:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b303c:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  6b3040:	48 29 c8             	sub    %rcx,%rax
  6b3043:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  6b3047:	e9 ae 21 00 00       	jmpq   6b51fa <http_parser_execute+0x5cea>
  6b304c:	eb 00                	jmp    6b304e <http_parser_execute+0x3b3e>
  6b304e:	48 c7 45 a8 00 00 00 	movq   $0x0,-0x58(%rbp)
  6b3055:	00 
  6b3056:	eb 00                	jmp    6b3058 <http_parser_execute+0x3b48>
  6b3058:	e9 f6 c9 ff ff       	jmpq   6afa53 <http_parser_execute+0x543>
  6b305d:	eb 00                	jmp    6b305f <http_parser_execute+0x3b4f>
  6b305f:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b3063:	83 f8 0a             	cmp    $0xa,%eax
  6b3066:	74 27                	je     6b308f <http_parser_execute+0x3b7f>
  6b3068:	eb 00                	jmp    6b306a <http_parser_execute+0x3b5a>
  6b306a:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b306d:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b3071:	89 41 04             	mov    %eax,0x4(%rcx)
  6b3074:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b3078:	8b 48 14             	mov    0x14(%rax),%ecx
  6b307b:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b3081:	81 c9 00 00 00 1e    	or     $0x1e000000,%ecx
  6b3087:	89 48 14             	mov    %ecx,0x14(%rax)
  6b308a:	e9 01 21 00 00       	jmpq   6b5190 <http_parser_execute+0x5c80>
  6b308f:	eb 00                	jmp    6b3091 <http_parser_execute+0x3b81>
  6b3091:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b3095:	8b 00                	mov    (%rax),%eax
  6b3097:	c1 e8 02             	shr    $0x2,%eax
  6b309a:	25 ff 00 00 00       	and    $0xff,%eax
  6b309f:	83 e0 10             	and    $0x10,%eax
  6b30a2:	83 f8 00             	cmp    $0x0,%eax
  6b30a5:	0f 84 40 01 00 00    	je     6b31eb <http_parser_execute+0x3cdb>
  6b30ab:	c7 45 ec 40 00 00 00 	movl   $0x40,-0x14(%rbp)
  6b30b2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b30b6:	8b 40 14             	mov    0x14(%rax),%eax
  6b30b9:	c1 e8 18             	shr    $0x18,%eax
  6b30bc:	83 e0 7f             	and    $0x7f,%eax
  6b30bf:	83 f8 00             	cmp    $0x0,%eax
  6b30c2:	75 02                	jne    6b30c6 <http_parser_execute+0x3bb6>
  6b30c4:	eb 28                	jmp    6b30ee <http_parser_execute+0x3bde>
  6b30c6:	48 bf 00 2e 20 00 00 	movabs $0x202e00,%rdi
  6b30cd:	00 00 00 
  6b30d0:	48 be f5 2b 20 00 00 	movabs $0x202bf5,%rsi
  6b30d7:	00 00 00 
  6b30da:	48 b9 37 6e 20 00 00 	movabs $0x206e37,%rcx
  6b30e1:	00 00 00 
  6b30e4:	ba 0a 07 00 00       	mov    $0x70a,%edx
  6b30e9:	e8 a2 88 00 00       	callq  6bb990 <__assert_fail@plt>
  6b30ee:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6b30f2:	48 83 78 48 00       	cmpq   $0x0,0x48(%rax)
  6b30f7:	0f 95 c0             	setne  %al
  6b30fa:	34 ff                	xor    $0xff,%al
  6b30fc:	34 ff                	xor    $0xff,%al
  6b30fe:	24 01                	and    $0x1,%al
  6b3100:	0f b6 c0             	movzbl %al,%eax
  6b3103:	48 98                	cltq   
  6b3105:	48 83 f8 00          	cmp    $0x0,%rax
  6b3109:	0f 84 d5 00 00 00    	je     6b31e4 <http_parser_execute+0x3cd4>
  6b310f:	8b 45 ec             	mov    -0x14(%rbp),%eax
  6b3112:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b3116:	8b 11                	mov    (%rcx),%edx
  6b3118:	83 e0 7f             	and    $0x7f,%eax
  6b311b:	c1 e0 0a             	shl    $0xa,%eax
  6b311e:	81 e2 ff 03 fe ff    	and    $0xfffe03ff,%edx
  6b3124:	09 c2                	or     %eax,%edx
  6b3126:	89 11                	mov    %edx,(%rcx)
  6b3128:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6b312c:	48 8b 48 48          	mov    0x48(%rax),%rcx
  6b3130:	48 b8 c0 b8 6b 00 00 	movabs $0x6bb8c0,%rax
  6b3137:	00 00 00 
  6b313a:	48 89 ca             	mov    %rcx,%rdx
  6b313d:	48 29 c2             	sub    %rax,%rdx
  6b3140:	48 89 d0             	mov    %rdx,%rax
  6b3143:	48 c1 e8 03          	shr    $0x3,%rax
  6b3147:	48 c1 e2 3d          	shl    $0x3d,%rdx
  6b314b:	48 09 d0             	or     %rdx,%rax
  6b314e:	48 83 f8 10          	cmp    $0x10,%rax
  6b3152:	76 05                	jbe    6b3159 <http_parser_execute+0x3c49>
  6b3154:	67 0f b9 40 02       	ud1    0x2(%eax),%eax
  6b3159:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b315d:	ff d1                	callq  *%rcx
  6b315f:	31 c9                	xor    %ecx,%ecx
  6b3161:	39 c1                	cmp    %eax,%ecx
  6b3163:	0f 95 c0             	setne  %al
  6b3166:	34 ff                	xor    $0xff,%al
  6b3168:	34 ff                	xor    $0xff,%al
  6b316a:	24 01                	and    $0x1,%al
  6b316c:	0f b6 c0             	movzbl %al,%eax
  6b316f:	48 98                	cltq   
  6b3171:	48 83 f8 00          	cmp    $0x0,%rax
  6b3175:	74 24                	je     6b319b <http_parser_execute+0x3c8b>
  6b3177:	eb 00                	jmp    6b3179 <http_parser_execute+0x3c69>
  6b3179:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b317c:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b3180:	89 41 04             	mov    %eax,0x4(%rcx)
  6b3183:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b3187:	8b 48 14             	mov    0x14(%rax),%ecx
  6b318a:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b3190:	81 c9 00 00 00 0a    	or     $0xa000000,%ecx
  6b3196:	89 48 14             	mov    %ecx,0x14(%rax)
  6b3199:	eb 00                	jmp    6b319b <http_parser_execute+0x3c8b>
  6b319b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b319f:	8b 00                	mov    (%rax),%eax
  6b31a1:	c1 e8 0a             	shr    $0xa,%eax
  6b31a4:	83 e0 7f             	and    $0x7f,%eax
  6b31a7:	89 45 ec             	mov    %eax,-0x14(%rbp)
  6b31aa:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b31ae:	8b 40 14             	mov    0x14(%rax),%eax
  6b31b1:	c1 e8 18             	shr    $0x18,%eax
  6b31b4:	83 e0 7f             	and    $0x7f,%eax
  6b31b7:	83 f8 00             	cmp    $0x0,%eax
  6b31ba:	0f 95 c0             	setne  %al
  6b31bd:	34 ff                	xor    $0xff,%al
  6b31bf:	34 ff                	xor    $0xff,%al
  6b31c1:	24 01                	and    $0x1,%al
  6b31c3:	0f b6 c0             	movzbl %al,%eax
  6b31c6:	48 98                	cltq   
  6b31c8:	48 83 f8 00          	cmp    $0x0,%rax
  6b31cc:	74 14                	je     6b31e2 <http_parser_execute+0x3cd2>
  6b31ce:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b31d2:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  6b31d6:	48 29 c8             	sub    %rcx,%rax
  6b31d9:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  6b31dd:	e9 18 20 00 00       	jmpq   6b51fa <http_parser_execute+0x5cea>
  6b31e2:	eb 00                	jmp    6b31e4 <http_parser_execute+0x3cd4>
  6b31e4:	eb 00                	jmp    6b31e6 <http_parser_execute+0x3cd6>
  6b31e6:	e9 68 c8 ff ff       	jmpq   6afa53 <http_parser_execute+0x543>
  6b31eb:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b31ef:	8b 00                	mov    (%rax),%eax
  6b31f1:	c1 e8 1d             	shr    $0x1d,%eax
  6b31f4:	83 e0 01             	and    $0x1,%eax
  6b31f7:	83 f8 01             	cmp    $0x1,%eax
  6b31fa:	0f 85 94 00 00 00    	jne    6b3294 <http_parser_execute+0x3d84>
  6b3200:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b3204:	8b 00                	mov    (%rax),%eax
  6b3206:	c1 e8 02             	shr    $0x2,%eax
  6b3209:	25 ff 00 00 00       	and    $0xff,%eax
  6b320e:	25 80 00 00 00       	and    $0x80,%eax
  6b3213:	83 f8 00             	cmp    $0x0,%eax
  6b3216:	74 7c                	je     6b3294 <http_parser_execute+0x3d84>
  6b3218:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b321c:	8b 00                	mov    (%rax),%eax
  6b321e:	c1 e8 02             	shr    $0x2,%eax
  6b3221:	25 ff 00 00 00       	and    $0xff,%eax
  6b3226:	83 e0 01             	and    $0x1,%eax
  6b3229:	83 f8 00             	cmp    $0x0,%eax
  6b322c:	74 32                	je     6b3260 <http_parser_execute+0x3d50>
  6b322e:	83 bd 60 ff ff ff 00 	cmpl   $0x0,-0xa0(%rbp)
  6b3235:	75 27                	jne    6b325e <http_parser_execute+0x3d4e>
  6b3237:	eb 00                	jmp    6b3239 <http_parser_execute+0x3d29>
  6b3239:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b323c:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b3240:	89 41 04             	mov    %eax,0x4(%rcx)
  6b3243:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b3247:	8b 48 14             	mov    0x14(%rax),%ecx
  6b324a:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b3250:	81 c9 00 00 00 1a    	or     $0x1a000000,%ecx
  6b3256:	89 48 14             	mov    %ecx,0x14(%rax)
  6b3259:	e9 32 1f 00 00       	jmpq   6b5190 <http_parser_execute+0x5c80>
  6b325e:	eb 32                	jmp    6b3292 <http_parser_execute+0x3d82>
  6b3260:	83 bd 7c ff ff ff 00 	cmpl   $0x0,-0x84(%rbp)
  6b3267:	75 27                	jne    6b3290 <http_parser_execute+0x3d80>
  6b3269:	eb 00                	jmp    6b326b <http_parser_execute+0x3d5b>
  6b326b:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b326e:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b3272:	89 41 04             	mov    %eax,0x4(%rcx)
  6b3275:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b3279:	8b 48 14             	mov    0x14(%rax),%ecx
  6b327c:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b3282:	81 c9 00 00 00 1a    	or     $0x1a000000,%ecx
  6b3288:	89 48 14             	mov    %ecx,0x14(%rax)
  6b328b:	e9 00 1f 00 00       	jmpq   6b5190 <http_parser_execute+0x5c80>
  6b3290:	eb 00                	jmp    6b3292 <http_parser_execute+0x3d82>
  6b3292:	eb 00                	jmp    6b3294 <http_parser_execute+0x3d84>
  6b3294:	c7 45 ec 3a 00 00 00 	movl   $0x3a,-0x14(%rbp)
  6b329b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b329f:	8b 00                	mov    (%rax),%eax
  6b32a1:	c1 e8 02             	shr    $0x2,%eax
  6b32a4:	25 ff 00 00 00       	and    $0xff,%eax
  6b32a9:	83 e0 20             	and    $0x20,%eax
  6b32ac:	83 f8 00             	cmp    $0x0,%eax
  6b32af:	74 57                	je     6b3308 <http_parser_execute+0x3df8>
  6b32b1:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b32b5:	8b 00                	mov    (%rax),%eax
  6b32b7:	c1 e8 02             	shr    $0x2,%eax
  6b32ba:	25 ff 00 00 00       	and    $0xff,%eax
  6b32bf:	83 e0 08             	and    $0x8,%eax
  6b32c2:	83 f8 00             	cmp    $0x0,%eax
  6b32c5:	74 41                	je     6b3308 <http_parser_execute+0x3df8>
  6b32c7:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b32cb:	8b 08                	mov    (%rax),%ecx
  6b32cd:	83 e1 03             	and    $0x3,%ecx
  6b32d0:	b0 01                	mov    $0x1,%al
  6b32d2:	83 f9 00             	cmp    $0x0,%ecx
  6b32d5:	74 12                	je     6b32e9 <http_parser_execute+0x3dd9>
  6b32d7:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b32db:	8b 40 14             	mov    0x14(%rax),%eax
  6b32de:	25 ff ff 00 00       	and    $0xffff,%eax
  6b32e3:	83 f8 65             	cmp    $0x65,%eax
  6b32e6:	0f 94 c0             	sete   %al
  6b32e9:	24 01                	and    $0x1,%al
  6b32eb:	0f b6 c0             	movzbl %al,%eax
  6b32ee:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b32f2:	8b 51 14             	mov    0x14(%rcx),%edx
  6b32f5:	83 e0 01             	and    $0x1,%eax
  6b32f8:	c1 e0 1f             	shl    $0x1f,%eax
  6b32fb:	81 e2 ff ff ff 7f    	and    $0x7fffffff,%edx
  6b3301:	09 c2                	or     %eax,%edx
  6b3303:	89 51 14             	mov    %edx,0x14(%rcx)
  6b3306:	eb 32                	jmp    6b333a <http_parser_execute+0x3e2a>
  6b3308:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b330c:	8b 40 14             	mov    0x14(%rax),%eax
  6b330f:	c1 e8 10             	shr    $0x10,%eax
  6b3312:	25 ff 00 00 00       	and    $0xff,%eax
  6b3317:	83 f8 05             	cmp    $0x5,%eax
  6b331a:	0f 94 c0             	sete   %al
  6b331d:	24 01                	and    $0x1,%al
  6b331f:	0f b6 c0             	movzbl %al,%eax
  6b3322:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b3326:	8b 51 14             	mov    0x14(%rcx),%edx
  6b3329:	83 e0 01             	and    $0x1,%eax
  6b332c:	c1 e0 1f             	shl    $0x1f,%eax
  6b332f:	81 e2 ff ff ff 7f    	and    $0x7fffffff,%edx
  6b3335:	09 c2                	or     %eax,%edx
  6b3337:	89 51 14             	mov    %edx,0x14(%rcx)
  6b333a:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6b333e:	48 83 78 28 00       	cmpq   $0x0,0x28(%rax)
  6b3343:	0f 84 ee 00 00 00    	je     6b3437 <http_parser_execute+0x3f27>
  6b3349:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6b334d:	48 8b 48 28          	mov    0x28(%rax),%rcx
  6b3351:	48 b8 c0 b8 6b 00 00 	movabs $0x6bb8c0,%rax
  6b3358:	00 00 00 
  6b335b:	48 89 ca             	mov    %rcx,%rdx
  6b335e:	48 29 c2             	sub    %rax,%rdx
  6b3361:	48 89 d0             	mov    %rdx,%rax
  6b3364:	48 c1 e8 03          	shr    $0x3,%rax
  6b3368:	48 c1 e2 3d          	shl    $0x3d,%rdx
  6b336c:	48 09 d0             	or     %rdx,%rax
  6b336f:	48 83 f8 10          	cmp    $0x10,%rax
  6b3373:	76 05                	jbe    6b337a <http_parser_execute+0x3e6a>
  6b3375:	67 0f b9 40 02       	ud1    0x2(%eax),%eax
  6b337a:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b337e:	ff d1                	callq  *%rcx
  6b3380:	85 c0                	test   %eax,%eax
  6b3382:	74 12                	je     6b3396 <http_parser_execute+0x3e86>
  6b3384:	eb 00                	jmp    6b3386 <http_parser_execute+0x3e76>
  6b3386:	89 c1                	mov    %eax,%ecx
  6b3388:	83 e9 01             	sub    $0x1,%ecx
  6b338b:	74 24                	je     6b33b1 <http_parser_execute+0x3ea1>
  6b338d:	eb 00                	jmp    6b338f <http_parser_execute+0x3e7f>
  6b338f:	83 e8 02             	sub    $0x2,%eax
  6b3392:	74 07                	je     6b339b <http_parser_execute+0x3e8b>
  6b3394:	eb 44                	jmp    6b33da <http_parser_execute+0x3eca>
  6b3396:	e9 9a 00 00 00       	jmpq   6b3435 <http_parser_execute+0x3f25>
  6b339b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b339f:	8b 48 14             	mov    0x14(%rax),%ecx
  6b33a2:	81 e1 ff ff ff 7f    	and    $0x7fffffff,%ecx
  6b33a8:	81 c9 00 00 00 80    	or     $0x80000000,%ecx
  6b33ae:	89 48 14             	mov    %ecx,0x14(%rax)
  6b33b1:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b33b5:	8b 08                	mov    (%rax),%ecx
  6b33b7:	c1 e9 02             	shr    $0x2,%ecx
  6b33ba:	81 e1 ff 00 00 00    	and    $0xff,%ecx
  6b33c0:	83 c9 40             	or     $0x40,%ecx
  6b33c3:	8b 10                	mov    (%rax),%edx
  6b33c5:	81 e1 ff 00 00 00    	and    $0xff,%ecx
  6b33cb:	c1 e1 02             	shl    $0x2,%ecx
  6b33ce:	81 e2 03 fc ff ff    	and    $0xfffffc03,%edx
  6b33d4:	09 ca                	or     %ecx,%edx
  6b33d6:	89 10                	mov    %edx,(%rax)
  6b33d8:	eb 5b                	jmp    6b3435 <http_parser_execute+0x3f25>
  6b33da:	eb 00                	jmp    6b33dc <http_parser_execute+0x3ecc>
  6b33dc:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b33df:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b33e3:	89 41 04             	mov    %eax,0x4(%rcx)
  6b33e6:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b33ea:	8b 48 14             	mov    0x14(%rax),%ecx
  6b33ed:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b33f3:	81 c9 00 00 00 05    	or     $0x5000000,%ecx
  6b33f9:	89 48 14             	mov    %ecx,0x14(%rax)
  6b33fc:	eb 00                	jmp    6b33fe <http_parser_execute+0x3eee>
  6b33fe:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b3401:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b3405:	89 41 04             	mov    %eax,0x4(%rcx)
  6b3408:	8b 45 ec             	mov    -0x14(%rbp),%eax
  6b340b:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b340f:	8b 11                	mov    (%rcx),%edx
  6b3411:	83 e0 7f             	and    $0x7f,%eax
  6b3414:	c1 e0 0a             	shl    $0xa,%eax
  6b3417:	81 e2 ff 03 fe ff    	and    $0xfffe03ff,%edx
  6b341d:	09 c2                	or     %eax,%edx
  6b341f:	89 11                	mov    %edx,(%rcx)
  6b3421:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b3425:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  6b3429:	48 29 c8             	sub    %rcx,%rax
  6b342c:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  6b3430:	e9 c5 1d 00 00       	jmpq   6b51fa <http_parser_execute+0x5cea>
  6b3435:	eb 00                	jmp    6b3437 <http_parser_execute+0x3f27>
  6b3437:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b343b:	8b 40 14             	mov    0x14(%rax),%eax
  6b343e:	c1 e8 18             	shr    $0x18,%eax
  6b3441:	83 e0 7f             	and    $0x7f,%eax
  6b3444:	83 f8 00             	cmp    $0x0,%eax
  6b3447:	74 39                	je     6b3482 <http_parser_execute+0x3f72>
  6b3449:	eb 00                	jmp    6b344b <http_parser_execute+0x3f3b>
  6b344b:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b344e:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b3452:	89 41 04             	mov    %eax,0x4(%rcx)
  6b3455:	8b 45 ec             	mov    -0x14(%rbp),%eax
  6b3458:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b345c:	8b 11                	mov    (%rcx),%edx
  6b345e:	83 e0 7f             	and    $0x7f,%eax
  6b3461:	c1 e0 0a             	shl    $0xa,%eax
  6b3464:	81 e2 ff 03 fe ff    	and    $0xfffe03ff,%edx
  6b346a:	09 c2                	or     %eax,%edx
  6b346c:	89 11                	mov    %edx,(%rcx)
  6b346e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b3472:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  6b3476:	48 29 c8             	sub    %rcx,%rax
  6b3479:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  6b347d:	e9 78 1d 00 00       	jmpq   6b51fa <http_parser_execute+0x5cea>
  6b3482:	e9 cc c5 ff ff       	jmpq   6afa53 <http_parser_execute+0x543>
  6b3487:	eb 00                	jmp    6b3489 <http_parser_execute+0x3f79>
  6b3489:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b348d:	83 f8 0a             	cmp    $0xa,%eax
  6b3490:	74 27                	je     6b34b9 <http_parser_execute+0x3fa9>
  6b3492:	eb 00                	jmp    6b3494 <http_parser_execute+0x3f84>
  6b3494:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b3497:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b349b:	89 41 04             	mov    %eax,0x4(%rcx)
  6b349e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b34a2:	8b 48 14             	mov    0x14(%rax),%ecx
  6b34a5:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b34ab:	81 c9 00 00 00 1e    	or     $0x1e000000,%ecx
  6b34b1:	89 48 14             	mov    %ecx,0x14(%rax)
  6b34b4:	e9 d7 1c 00 00       	jmpq   6b5190 <http_parser_execute+0x5c80>
  6b34b9:	eb 00                	jmp    6b34bb <http_parser_execute+0x3fab>
  6b34bb:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b34bf:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%rax)
  6b34c6:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
  6b34cd:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b34d1:	8b 08                	mov    (%rax),%ecx
  6b34d3:	c1 e9 02             	shr    $0x2,%ecx
  6b34d6:	81 e1 ff 00 00 00    	and    $0xff,%ecx
  6b34dc:	83 e1 01             	and    $0x1,%ecx
  6b34df:	b0 01                	mov    $0x1,%al
  6b34e1:	83 f9 00             	cmp    $0x0,%ecx
  6b34e4:	75 19                	jne    6b34ff <http_parser_execute+0x3fef>
  6b34e6:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b34ea:	31 c0                	xor    %eax,%eax
  6b34ec:	48 83 79 08 00       	cmpq   $0x0,0x8(%rcx)
  6b34f1:	76 0c                	jbe    6b34ff <http_parser_execute+0x3fef>
  6b34f3:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b34f7:	48 83 78 08 ff       	cmpq   $0xffffffffffffffff,0x8(%rax)
  6b34fc:	0f 95 c0             	setne  %al
  6b34ff:	24 01                	and    $0x1,%al
  6b3501:	0f b6 c0             	movzbl %al,%eax
  6b3504:	89 85 64 ff ff ff    	mov    %eax,-0x9c(%rbp)
  6b350a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b350e:	8b 40 14             	mov    0x14(%rax),%eax
  6b3511:	c1 e8 1f             	shr    $0x1f,%eax
  6b3514:	83 f8 00             	cmp    $0x0,%eax
  6b3517:	0f 84 df 01 00 00    	je     6b36fc <http_parser_execute+0x41ec>
  6b351d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b3521:	8b 40 14             	mov    0x14(%rax),%eax
  6b3524:	c1 e8 10             	shr    $0x10,%eax
  6b3527:	25 ff 00 00 00       	and    $0xff,%eax
  6b352c:	83 f8 05             	cmp    $0x5,%eax
  6b352f:	74 23                	je     6b3554 <http_parser_execute+0x4044>
  6b3531:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b3535:	8b 00                	mov    (%rax),%eax
  6b3537:	c1 e8 02             	shr    $0x2,%eax
  6b353a:	25 ff 00 00 00       	and    $0xff,%eax
  6b353f:	83 e0 40             	and    $0x40,%eax
  6b3542:	83 f8 00             	cmp    $0x0,%eax
  6b3545:	75 0d                	jne    6b3554 <http_parser_execute+0x4044>
  6b3547:	83 bd 64 ff ff ff 00 	cmpl   $0x0,-0x9c(%rbp)
  6b354e:	0f 85 a8 01 00 00    	jne    6b36fc <http_parser_execute+0x41ec>
  6b3554:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b3558:	e8 b3 20 00 00       	callq  6b5610 <http_should_keep_alive>
  6b355d:	83 f8 00             	cmp    $0x0,%eax
  6b3560:	74 1b                	je     6b357d <http_parser_execute+0x406d>
  6b3562:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b3566:	8b 08                	mov    (%rax),%ecx
  6b3568:	83 e1 03             	and    $0x3,%ecx
  6b356b:	b8 04 00 00 00       	mov    $0x4,%eax
  6b3570:	ba 12 00 00 00       	mov    $0x12,%edx
  6b3575:	83 f9 00             	cmp    $0x0,%ecx
  6b3578:	0f 44 c2             	cmove  %edx,%eax
  6b357b:	eb 07                	jmp    6b3584 <http_parser_execute+0x4074>
  6b357d:	b8 01 00 00 00       	mov    $0x1,%eax
  6b3582:	eb 00                	jmp    6b3584 <http_parser_execute+0x4074>
  6b3584:	89 45 ec             	mov    %eax,-0x14(%rbp)
  6b3587:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b358b:	8b 40 14             	mov    0x14(%rax),%eax
  6b358e:	c1 e8 18             	shr    $0x18,%eax
  6b3591:	83 e0 7f             	and    $0x7f,%eax
  6b3594:	83 f8 00             	cmp    $0x0,%eax
  6b3597:	75 02                	jne    6b359b <http_parser_execute+0x408b>
  6b3599:	eb 28                	jmp    6b35c3 <http_parser_execute+0x40b3>
  6b359b:	48 bf 00 2e 20 00 00 	movabs $0x202e00,%rdi
  6b35a2:	00 00 00 
  6b35a5:	48 be f5 2b 20 00 00 	movabs $0x202bf5,%rsi
  6b35ac:	00 00 00 
  6b35af:	48 b9 37 6e 20 00 00 	movabs $0x206e37,%rcx
  6b35b6:	00 00 00 
  6b35b9:	ba 60 07 00 00       	mov    $0x760,%edx
  6b35be:	e8 cd 83 00 00       	callq  6bb990 <__assert_fail@plt>
  6b35c3:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6b35c7:	48 83 78 38 00       	cmpq   $0x0,0x38(%rax)
  6b35cc:	0f 95 c0             	setne  %al
  6b35cf:	34 ff                	xor    $0xff,%al
  6b35d1:	34 ff                	xor    $0xff,%al
  6b35d3:	24 01                	and    $0x1,%al
  6b35d5:	0f b6 c0             	movzbl %al,%eax
  6b35d8:	48 98                	cltq   
  6b35da:	48 83 f8 00          	cmp    $0x0,%rax
  6b35de:	0f 84 d9 00 00 00    	je     6b36bd <http_parser_execute+0x41ad>
  6b35e4:	8b 45 ec             	mov    -0x14(%rbp),%eax
  6b35e7:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b35eb:	8b 11                	mov    (%rcx),%edx
  6b35ed:	83 e0 7f             	and    $0x7f,%eax
  6b35f0:	c1 e0 0a             	shl    $0xa,%eax
  6b35f3:	81 e2 ff 03 fe ff    	and    $0xfffe03ff,%edx
  6b35f9:	09 c2                	or     %eax,%edx
  6b35fb:	89 11                	mov    %edx,(%rcx)
  6b35fd:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6b3601:	48 8b 48 38          	mov    0x38(%rax),%rcx
  6b3605:	48 b8 c0 b8 6b 00 00 	movabs $0x6bb8c0,%rax
  6b360c:	00 00 00 
  6b360f:	48 89 ca             	mov    %rcx,%rdx
  6b3612:	48 29 c2             	sub    %rax,%rdx
  6b3615:	48 89 d0             	mov    %rdx,%rax
  6b3618:	48 c1 e8 03          	shr    $0x3,%rax
  6b361c:	48 c1 e2 3d          	shl    $0x3d,%rdx
  6b3620:	48 09 d0             	or     %rdx,%rax
  6b3623:	48 83 f8 10          	cmp    $0x10,%rax
  6b3627:	76 05                	jbe    6b362e <http_parser_execute+0x411e>
  6b3629:	67 0f b9 40 02       	ud1    0x2(%eax),%eax
  6b362e:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b3632:	ff d1                	callq  *%rcx
  6b3634:	31 c9                	xor    %ecx,%ecx
  6b3636:	39 c1                	cmp    %eax,%ecx
  6b3638:	0f 95 c0             	setne  %al
  6b363b:	34 ff                	xor    $0xff,%al
  6b363d:	34 ff                	xor    $0xff,%al
  6b363f:	24 01                	and    $0x1,%al
  6b3641:	0f b6 c0             	movzbl %al,%eax
  6b3644:	48 98                	cltq   
  6b3646:	48 83 f8 00          	cmp    $0x0,%rax
  6b364a:	74 24                	je     6b3670 <http_parser_execute+0x4160>
  6b364c:	eb 00                	jmp    6b364e <http_parser_execute+0x413e>
  6b364e:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b3651:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b3655:	89 41 04             	mov    %eax,0x4(%rcx)
  6b3658:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b365c:	8b 48 14             	mov    0x14(%rax),%ecx
  6b365f:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b3665:	81 c9 00 00 00 07    	or     $0x7000000,%ecx
  6b366b:	89 48 14             	mov    %ecx,0x14(%rax)
  6b366e:	eb 00                	jmp    6b3670 <http_parser_execute+0x4160>
  6b3670:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b3674:	8b 00                	mov    (%rax),%eax
  6b3676:	c1 e8 0a             	shr    $0xa,%eax
  6b3679:	83 e0 7f             	and    $0x7f,%eax
  6b367c:	89 45 ec             	mov    %eax,-0x14(%rbp)
  6b367f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b3683:	8b 40 14             	mov    0x14(%rax),%eax
  6b3686:	c1 e8 18             	shr    $0x18,%eax
  6b3689:	83 e0 7f             	and    $0x7f,%eax
  6b368c:	83 f8 00             	cmp    $0x0,%eax
  6b368f:	0f 95 c0             	setne  %al
  6b3692:	34 ff                	xor    $0xff,%al
  6b3694:	34 ff                	xor    $0xff,%al
  6b3696:	24 01                	and    $0x1,%al
  6b3698:	0f b6 c0             	movzbl %al,%eax
  6b369b:	48 98                	cltq   
  6b369d:	48 83 f8 00          	cmp    $0x0,%rax
  6b36a1:	74 18                	je     6b36bb <http_parser_execute+0x41ab>
  6b36a3:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b36a7:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  6b36ab:	48 29 c8             	sub    %rcx,%rax
  6b36ae:	48 83 c0 01          	add    $0x1,%rax
  6b36b2:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  6b36b6:	e9 3f 1b 00 00       	jmpq   6b51fa <http_parser_execute+0x5cea>
  6b36bb:	eb 00                	jmp    6b36bd <http_parser_execute+0x41ad>
  6b36bd:	eb 00                	jmp    6b36bf <http_parser_execute+0x41af>
  6b36bf:	eb 00                	jmp    6b36c1 <http_parser_execute+0x41b1>
  6b36c1:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b36c4:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b36c8:	89 41 04             	mov    %eax,0x4(%rcx)
  6b36cb:	8b 45 ec             	mov    -0x14(%rbp),%eax
  6b36ce:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b36d2:	8b 11                	mov    (%rcx),%edx
  6b36d4:	83 e0 7f             	and    $0x7f,%eax
  6b36d7:	c1 e0 0a             	shl    $0xa,%eax
  6b36da:	81 e2 ff 03 fe ff    	and    $0xfffe03ff,%edx
  6b36e0:	09 c2                	or     %eax,%edx
  6b36e2:	89 11                	mov    %edx,(%rcx)
  6b36e4:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b36e8:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  6b36ec:	48 29 c8             	sub    %rcx,%rax
  6b36ef:	48 83 c0 01          	add    $0x1,%rax
  6b36f3:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  6b36f7:	e9 fe 1a 00 00       	jmpq   6b51fa <http_parser_execute+0x5cea>
  6b36fc:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b3700:	8b 00                	mov    (%rax),%eax
  6b3702:	c1 e8 02             	shr    $0x2,%eax
  6b3705:	25 ff 00 00 00       	and    $0xff,%eax
  6b370a:	83 e0 40             	and    $0x40,%eax
  6b370d:	83 f8 00             	cmp    $0x0,%eax
  6b3710:	0f 84 70 01 00 00    	je     6b3886 <http_parser_execute+0x4376>
  6b3716:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b371a:	e8 f1 1e 00 00       	callq  6b5610 <http_should_keep_alive>
  6b371f:	83 f8 00             	cmp    $0x0,%eax
  6b3722:	74 1b                	je     6b373f <http_parser_execute+0x422f>
  6b3724:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b3728:	8b 08                	mov    (%rax),%ecx
  6b372a:	83 e1 03             	and    $0x3,%ecx
  6b372d:	b8 04 00 00 00       	mov    $0x4,%eax
  6b3732:	ba 12 00 00 00       	mov    $0x12,%edx
  6b3737:	83 f9 00             	cmp    $0x0,%ecx
  6b373a:	0f 44 c2             	cmove  %edx,%eax
  6b373d:	eb 07                	jmp    6b3746 <http_parser_execute+0x4236>
  6b373f:	b8 01 00 00 00       	mov    $0x1,%eax
  6b3744:	eb 00                	jmp    6b3746 <http_parser_execute+0x4236>
  6b3746:	89 45 ec             	mov    %eax,-0x14(%rbp)
  6b3749:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b374d:	8b 40 14             	mov    0x14(%rax),%eax
  6b3750:	c1 e8 18             	shr    $0x18,%eax
  6b3753:	83 e0 7f             	and    $0x7f,%eax
  6b3756:	83 f8 00             	cmp    $0x0,%eax
  6b3759:	75 02                	jne    6b375d <http_parser_execute+0x424d>
  6b375b:	eb 28                	jmp    6b3785 <http_parser_execute+0x4275>
  6b375d:	48 bf 00 2e 20 00 00 	movabs $0x202e00,%rdi
  6b3764:	00 00 00 
  6b3767:	48 be f5 2b 20 00 00 	movabs $0x202bf5,%rsi
  6b376e:	00 00 00 
  6b3771:	48 b9 37 6e 20 00 00 	movabs $0x206e37,%rcx
  6b3778:	00 00 00 
  6b377b:	ba 66 07 00 00       	mov    $0x766,%edx
  6b3780:	e8 0b 82 00 00       	callq  6bb990 <__assert_fail@plt>
  6b3785:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6b3789:	48 83 78 38 00       	cmpq   $0x0,0x38(%rax)
  6b378e:	0f 95 c0             	setne  %al
  6b3791:	34 ff                	xor    $0xff,%al
  6b3793:	34 ff                	xor    $0xff,%al
  6b3795:	24 01                	and    $0x1,%al
  6b3797:	0f b6 c0             	movzbl %al,%eax
  6b379a:	48 98                	cltq   
  6b379c:	48 83 f8 00          	cmp    $0x0,%rax
  6b37a0:	0f 84 d9 00 00 00    	je     6b387f <http_parser_execute+0x436f>
  6b37a6:	8b 45 ec             	mov    -0x14(%rbp),%eax
  6b37a9:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b37ad:	8b 11                	mov    (%rcx),%edx
  6b37af:	83 e0 7f             	and    $0x7f,%eax
  6b37b2:	c1 e0 0a             	shl    $0xa,%eax
  6b37b5:	81 e2 ff 03 fe ff    	and    $0xfffe03ff,%edx
  6b37bb:	09 c2                	or     %eax,%edx
  6b37bd:	89 11                	mov    %edx,(%rcx)
  6b37bf:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6b37c3:	48 8b 48 38          	mov    0x38(%rax),%rcx
  6b37c7:	48 b8 c0 b8 6b 00 00 	movabs $0x6bb8c0,%rax
  6b37ce:	00 00 00 
  6b37d1:	48 89 ca             	mov    %rcx,%rdx
  6b37d4:	48 29 c2             	sub    %rax,%rdx
  6b37d7:	48 89 d0             	mov    %rdx,%rax
  6b37da:	48 c1 e8 03          	shr    $0x3,%rax
  6b37de:	48 c1 e2 3d          	shl    $0x3d,%rdx
  6b37e2:	48 09 d0             	or     %rdx,%rax
  6b37e5:	48 83 f8 10          	cmp    $0x10,%rax
  6b37e9:	76 05                	jbe    6b37f0 <http_parser_execute+0x42e0>
  6b37eb:	67 0f b9 40 02       	ud1    0x2(%eax),%eax
  6b37f0:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b37f4:	ff d1                	callq  *%rcx
  6b37f6:	31 c9                	xor    %ecx,%ecx
  6b37f8:	39 c1                	cmp    %eax,%ecx
  6b37fa:	0f 95 c0             	setne  %al
  6b37fd:	34 ff                	xor    $0xff,%al
  6b37ff:	34 ff                	xor    $0xff,%al
  6b3801:	24 01                	and    $0x1,%al
  6b3803:	0f b6 c0             	movzbl %al,%eax
  6b3806:	48 98                	cltq   
  6b3808:	48 83 f8 00          	cmp    $0x0,%rax
  6b380c:	74 24                	je     6b3832 <http_parser_execute+0x4322>
  6b380e:	eb 00                	jmp    6b3810 <http_parser_execute+0x4300>
  6b3810:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b3813:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b3817:	89 41 04             	mov    %eax,0x4(%rcx)
  6b381a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b381e:	8b 48 14             	mov    0x14(%rax),%ecx
  6b3821:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b3827:	81 c9 00 00 00 07    	or     $0x7000000,%ecx
  6b382d:	89 48 14             	mov    %ecx,0x14(%rax)
  6b3830:	eb 00                	jmp    6b3832 <http_parser_execute+0x4322>
  6b3832:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b3836:	8b 00                	mov    (%rax),%eax
  6b3838:	c1 e8 0a             	shr    $0xa,%eax
  6b383b:	83 e0 7f             	and    $0x7f,%eax
  6b383e:	89 45 ec             	mov    %eax,-0x14(%rbp)
  6b3841:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b3845:	8b 40 14             	mov    0x14(%rax),%eax
  6b3848:	c1 e8 18             	shr    $0x18,%eax
  6b384b:	83 e0 7f             	and    $0x7f,%eax
  6b384e:	83 f8 00             	cmp    $0x0,%eax
  6b3851:	0f 95 c0             	setne  %al
  6b3854:	34 ff                	xor    $0xff,%al
  6b3856:	34 ff                	xor    $0xff,%al
  6b3858:	24 01                	and    $0x1,%al
  6b385a:	0f b6 c0             	movzbl %al,%eax
  6b385d:	48 98                	cltq   
  6b385f:	48 83 f8 00          	cmp    $0x0,%rax
  6b3863:	74 18                	je     6b387d <http_parser_execute+0x436d>
  6b3865:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b3869:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  6b386d:	48 29 c8             	sub    %rcx,%rax
  6b3870:	48 83 c0 01          	add    $0x1,%rax
  6b3874:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  6b3878:	e9 7d 19 00 00       	jmpq   6b51fa <http_parser_execute+0x5cea>
  6b387d:	eb 00                	jmp    6b387f <http_parser_execute+0x436f>
  6b387f:	eb 00                	jmp    6b3881 <http_parser_execute+0x4371>
  6b3881:	e9 d7 03 00 00       	jmpq   6b3c5d <http_parser_execute+0x474d>
  6b3886:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b388a:	8b 00                	mov    (%rax),%eax
  6b388c:	c1 e8 02             	shr    $0x2,%eax
  6b388f:	25 ff 00 00 00       	and    $0xff,%eax
  6b3894:	83 e0 01             	and    $0x1,%eax
  6b3897:	83 f8 00             	cmp    $0x0,%eax
  6b389a:	74 0c                	je     6b38a8 <http_parser_execute+0x4398>
  6b389c:	c7 45 ec 35 00 00 00 	movl   $0x35,-0x14(%rbp)
  6b38a3:	e9 b3 03 00 00       	jmpq   6b3c5b <http_parser_execute+0x474b>
  6b38a8:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b38ac:	8b 00                	mov    (%rax),%eax
  6b38ae:	c1 e8 1d             	shr    $0x1d,%eax
  6b38b1:	83 e0 01             	and    $0x1,%eax
  6b38b4:	83 f8 01             	cmp    $0x1,%eax
  6b38b7:	75 7e                	jne    6b3937 <http_parser_execute+0x4427>
  6b38b9:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b38bd:	8b 00                	mov    (%rax),%eax
  6b38bf:	83 e0 03             	and    $0x3,%eax
  6b38c2:	83 f8 00             	cmp    $0x0,%eax
  6b38c5:	75 64                	jne    6b392b <http_parser_execute+0x441b>
  6b38c7:	83 bd 7c ff ff ff 00 	cmpl   $0x0,-0x84(%rbp)
  6b38ce:	75 5b                	jne    6b392b <http_parser_execute+0x441b>
  6b38d0:	eb 00                	jmp    6b38d2 <http_parser_execute+0x43c2>
  6b38d2:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b38d5:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b38d9:	89 41 04             	mov    %eax,0x4(%rcx)
  6b38dc:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b38e0:	8b 48 14             	mov    0x14(%rax),%ecx
  6b38e3:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b38e9:	81 c9 00 00 00 21    	or     $0x21000000,%ecx
  6b38ef:	89 48 14             	mov    %ecx,0x14(%rax)
  6b38f2:	eb 00                	jmp    6b38f4 <http_parser_execute+0x43e4>
  6b38f4:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b38f7:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b38fb:	89 41 04             	mov    %eax,0x4(%rcx)
  6b38fe:	8b 45 ec             	mov    -0x14(%rbp),%eax
  6b3901:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b3905:	8b 11                	mov    (%rcx),%edx
  6b3907:	83 e0 7f             	and    $0x7f,%eax
  6b390a:	c1 e0 0a             	shl    $0xa,%eax
  6b390d:	81 e2 ff 03 fe ff    	and    $0xfffe03ff,%edx
  6b3913:	09 c2                	or     %eax,%edx
  6b3915:	89 11                	mov    %edx,(%rcx)
  6b3917:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b391b:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  6b391f:	48 29 c8             	sub    %rcx,%rax
  6b3922:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  6b3926:	e9 cf 18 00 00       	jmpq   6b51fa <http_parser_execute+0x5cea>
  6b392b:	c7 45 ec 3f 00 00 00 	movl   $0x3f,-0x14(%rbp)
  6b3932:	e9 22 03 00 00       	jmpq   6b3c59 <http_parser_execute+0x4749>
  6b3937:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b393b:	48 83 78 08 00       	cmpq   $0x0,0x8(%rax)
  6b3940:	0f 85 70 01 00 00    	jne    6b3ab6 <http_parser_execute+0x45a6>
  6b3946:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b394a:	e8 c1 1c 00 00       	callq  6b5610 <http_should_keep_alive>
  6b394f:	83 f8 00             	cmp    $0x0,%eax
  6b3952:	74 1b                	je     6b396f <http_parser_execute+0x445f>
  6b3954:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b3958:	8b 08                	mov    (%rax),%ecx
  6b395a:	83 e1 03             	and    $0x3,%ecx
  6b395d:	b8 04 00 00 00       	mov    $0x4,%eax
  6b3962:	ba 12 00 00 00       	mov    $0x12,%edx
  6b3967:	83 f9 00             	cmp    $0x0,%ecx
  6b396a:	0f 44 c2             	cmove  %edx,%eax
  6b396d:	eb 07                	jmp    6b3976 <http_parser_execute+0x4466>
  6b396f:	b8 01 00 00 00       	mov    $0x1,%eax
  6b3974:	eb 00                	jmp    6b3976 <http_parser_execute+0x4466>
  6b3976:	89 45 ec             	mov    %eax,-0x14(%rbp)
  6b3979:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b397d:	8b 40 14             	mov    0x14(%rax),%eax
  6b3980:	c1 e8 18             	shr    $0x18,%eax
  6b3983:	83 e0 7f             	and    $0x7f,%eax
  6b3986:	83 f8 00             	cmp    $0x0,%eax
  6b3989:	75 02                	jne    6b398d <http_parser_execute+0x447d>
  6b398b:	eb 28                	jmp    6b39b5 <http_parser_execute+0x44a5>
  6b398d:	48 bf 00 2e 20 00 00 	movabs $0x202e00,%rdi
  6b3994:	00 00 00 
  6b3997:	48 be f5 2b 20 00 00 	movabs $0x202bf5,%rsi
  6b399e:	00 00 00 
  6b39a1:	48 b9 37 6e 20 00 00 	movabs $0x206e37,%rcx
  6b39a8:	00 00 00 
  6b39ab:	ba 85 07 00 00       	mov    $0x785,%edx
  6b39b0:	e8 db 7f 00 00       	callq  6bb990 <__assert_fail@plt>
  6b39b5:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6b39b9:	48 83 78 38 00       	cmpq   $0x0,0x38(%rax)
  6b39be:	0f 95 c0             	setne  %al
  6b39c1:	34 ff                	xor    $0xff,%al
  6b39c3:	34 ff                	xor    $0xff,%al
  6b39c5:	24 01                	and    $0x1,%al
  6b39c7:	0f b6 c0             	movzbl %al,%eax
  6b39ca:	48 98                	cltq   
  6b39cc:	48 83 f8 00          	cmp    $0x0,%rax
  6b39d0:	0f 84 d9 00 00 00    	je     6b3aaf <http_parser_execute+0x459f>
  6b39d6:	8b 45 ec             	mov    -0x14(%rbp),%eax
  6b39d9:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b39dd:	8b 11                	mov    (%rcx),%edx
  6b39df:	83 e0 7f             	and    $0x7f,%eax
  6b39e2:	c1 e0 0a             	shl    $0xa,%eax
  6b39e5:	81 e2 ff 03 fe ff    	and    $0xfffe03ff,%edx
  6b39eb:	09 c2                	or     %eax,%edx
  6b39ed:	89 11                	mov    %edx,(%rcx)
  6b39ef:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6b39f3:	48 8b 48 38          	mov    0x38(%rax),%rcx
  6b39f7:	48 b8 c0 b8 6b 00 00 	movabs $0x6bb8c0,%rax
  6b39fe:	00 00 00 
  6b3a01:	48 89 ca             	mov    %rcx,%rdx
  6b3a04:	48 29 c2             	sub    %rax,%rdx
  6b3a07:	48 89 d0             	mov    %rdx,%rax
  6b3a0a:	48 c1 e8 03          	shr    $0x3,%rax
  6b3a0e:	48 c1 e2 3d          	shl    $0x3d,%rdx
  6b3a12:	48 09 d0             	or     %rdx,%rax
  6b3a15:	48 83 f8 10          	cmp    $0x10,%rax
  6b3a19:	76 05                	jbe    6b3a20 <http_parser_execute+0x4510>
  6b3a1b:	67 0f b9 40 02       	ud1    0x2(%eax),%eax
  6b3a20:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b3a24:	ff d1                	callq  *%rcx
  6b3a26:	31 c9                	xor    %ecx,%ecx
  6b3a28:	39 c1                	cmp    %eax,%ecx
  6b3a2a:	0f 95 c0             	setne  %al
  6b3a2d:	34 ff                	xor    $0xff,%al
  6b3a2f:	34 ff                	xor    $0xff,%al
  6b3a31:	24 01                	and    $0x1,%al
  6b3a33:	0f b6 c0             	movzbl %al,%eax
  6b3a36:	48 98                	cltq   
  6b3a38:	48 83 f8 00          	cmp    $0x0,%rax
  6b3a3c:	74 24                	je     6b3a62 <http_parser_execute+0x4552>
  6b3a3e:	eb 00                	jmp    6b3a40 <http_parser_execute+0x4530>
  6b3a40:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b3a43:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b3a47:	89 41 04             	mov    %eax,0x4(%rcx)
  6b3a4a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b3a4e:	8b 48 14             	mov    0x14(%rax),%ecx
  6b3a51:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b3a57:	81 c9 00 00 00 07    	or     $0x7000000,%ecx
  6b3a5d:	89 48 14             	mov    %ecx,0x14(%rax)
  6b3a60:	eb 00                	jmp    6b3a62 <http_parser_execute+0x4552>
  6b3a62:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b3a66:	8b 00                	mov    (%rax),%eax
  6b3a68:	c1 e8 0a             	shr    $0xa,%eax
  6b3a6b:	83 e0 7f             	and    $0x7f,%eax
  6b3a6e:	89 45 ec             	mov    %eax,-0x14(%rbp)
  6b3a71:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b3a75:	8b 40 14             	mov    0x14(%rax),%eax
  6b3a78:	c1 e8 18             	shr    $0x18,%eax
  6b3a7b:	83 e0 7f             	and    $0x7f,%eax
  6b3a7e:	83 f8 00             	cmp    $0x0,%eax
  6b3a81:	0f 95 c0             	setne  %al
  6b3a84:	34 ff                	xor    $0xff,%al
  6b3a86:	34 ff                	xor    $0xff,%al
  6b3a88:	24 01                	and    $0x1,%al
  6b3a8a:	0f b6 c0             	movzbl %al,%eax
  6b3a8d:	48 98                	cltq   
  6b3a8f:	48 83 f8 00          	cmp    $0x0,%rax
  6b3a93:	74 18                	je     6b3aad <http_parser_execute+0x459d>
  6b3a95:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b3a99:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  6b3a9d:	48 29 c8             	sub    %rcx,%rax
  6b3aa0:	48 83 c0 01          	add    $0x1,%rax
  6b3aa4:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  6b3aa8:	e9 4d 17 00 00       	jmpq   6b51fa <http_parser_execute+0x5cea>
  6b3aad:	eb 00                	jmp    6b3aaf <http_parser_execute+0x459f>
  6b3aaf:	eb 00                	jmp    6b3ab1 <http_parser_execute+0x45a1>
  6b3ab1:	e9 a1 01 00 00       	jmpq   6b3c57 <http_parser_execute+0x4747>
  6b3ab6:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b3aba:	48 83 78 08 ff       	cmpq   $0xffffffffffffffff,0x8(%rax)
  6b3abf:	74 0c                	je     6b3acd <http_parser_execute+0x45bd>
  6b3ac1:	c7 45 ec 3e 00 00 00 	movl   $0x3e,-0x14(%rbp)
  6b3ac8:	e9 88 01 00 00       	jmpq   6b3c55 <http_parser_execute+0x4745>
  6b3acd:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b3ad1:	e8 ca 1b 00 00       	callq  6b56a0 <http_message_needs_eof>
  6b3ad6:	83 f8 00             	cmp    $0x0,%eax
  6b3ad9:	0f 85 6d 01 00 00    	jne    6b3c4c <http_parser_execute+0x473c>
  6b3adf:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b3ae3:	e8 28 1b 00 00       	callq  6b5610 <http_should_keep_alive>
  6b3ae8:	83 f8 00             	cmp    $0x0,%eax
  6b3aeb:	74 1b                	je     6b3b08 <http_parser_execute+0x45f8>
  6b3aed:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b3af1:	8b 08                	mov    (%rax),%ecx
  6b3af3:	83 e1 03             	and    $0x3,%ecx
  6b3af6:	b8 04 00 00 00       	mov    $0x4,%eax
  6b3afb:	ba 12 00 00 00       	mov    $0x12,%edx
  6b3b00:	83 f9 00             	cmp    $0x0,%ecx
  6b3b03:	0f 44 c2             	cmove  %edx,%eax
  6b3b06:	eb 07                	jmp    6b3b0f <http_parser_execute+0x45ff>
  6b3b08:	b8 01 00 00 00       	mov    $0x1,%eax
  6b3b0d:	eb 00                	jmp    6b3b0f <http_parser_execute+0x45ff>
  6b3b0f:	89 45 ec             	mov    %eax,-0x14(%rbp)
  6b3b12:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b3b16:	8b 40 14             	mov    0x14(%rax),%eax
  6b3b19:	c1 e8 18             	shr    $0x18,%eax
  6b3b1c:	83 e0 7f             	and    $0x7f,%eax
  6b3b1f:	83 f8 00             	cmp    $0x0,%eax
  6b3b22:	75 02                	jne    6b3b26 <http_parser_execute+0x4616>
  6b3b24:	eb 28                	jmp    6b3b4e <http_parser_execute+0x463e>
  6b3b26:	48 bf 00 2e 20 00 00 	movabs $0x202e00,%rdi
  6b3b2d:	00 00 00 
  6b3b30:	48 be f5 2b 20 00 00 	movabs $0x202bf5,%rsi
  6b3b37:	00 00 00 
  6b3b3a:	48 b9 37 6e 20 00 00 	movabs $0x206e37,%rcx
  6b3b41:	00 00 00 
  6b3b44:	ba 8d 07 00 00       	mov    $0x78d,%edx
  6b3b49:	e8 42 7e 00 00       	callq  6bb990 <__assert_fail@plt>
  6b3b4e:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6b3b52:	48 83 78 38 00       	cmpq   $0x0,0x38(%rax)
  6b3b57:	0f 95 c0             	setne  %al
  6b3b5a:	34 ff                	xor    $0xff,%al
  6b3b5c:	34 ff                	xor    $0xff,%al
  6b3b5e:	24 01                	and    $0x1,%al
  6b3b60:	0f b6 c0             	movzbl %al,%eax
  6b3b63:	48 98                	cltq   
  6b3b65:	48 83 f8 00          	cmp    $0x0,%rax
  6b3b69:	0f 84 d9 00 00 00    	je     6b3c48 <http_parser_execute+0x4738>
  6b3b6f:	8b 45 ec             	mov    -0x14(%rbp),%eax
  6b3b72:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b3b76:	8b 11                	mov    (%rcx),%edx
  6b3b78:	83 e0 7f             	and    $0x7f,%eax
  6b3b7b:	c1 e0 0a             	shl    $0xa,%eax
  6b3b7e:	81 e2 ff 03 fe ff    	and    $0xfffe03ff,%edx
  6b3b84:	09 c2                	or     %eax,%edx
  6b3b86:	89 11                	mov    %edx,(%rcx)
  6b3b88:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6b3b8c:	48 8b 48 38          	mov    0x38(%rax),%rcx
  6b3b90:	48 b8 c0 b8 6b 00 00 	movabs $0x6bb8c0,%rax
  6b3b97:	00 00 00 
  6b3b9a:	48 89 ca             	mov    %rcx,%rdx
  6b3b9d:	48 29 c2             	sub    %rax,%rdx
  6b3ba0:	48 89 d0             	mov    %rdx,%rax
  6b3ba3:	48 c1 e8 03          	shr    $0x3,%rax
  6b3ba7:	48 c1 e2 3d          	shl    $0x3d,%rdx
  6b3bab:	48 09 d0             	or     %rdx,%rax
  6b3bae:	48 83 f8 10          	cmp    $0x10,%rax
  6b3bb2:	76 05                	jbe    6b3bb9 <http_parser_execute+0x46a9>
  6b3bb4:	67 0f b9 40 02       	ud1    0x2(%eax),%eax
  6b3bb9:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b3bbd:	ff d1                	callq  *%rcx
  6b3bbf:	31 c9                	xor    %ecx,%ecx
  6b3bc1:	39 c1                	cmp    %eax,%ecx
  6b3bc3:	0f 95 c0             	setne  %al
  6b3bc6:	34 ff                	xor    $0xff,%al
  6b3bc8:	34 ff                	xor    $0xff,%al
  6b3bca:	24 01                	and    $0x1,%al
  6b3bcc:	0f b6 c0             	movzbl %al,%eax
  6b3bcf:	48 98                	cltq   
  6b3bd1:	48 83 f8 00          	cmp    $0x0,%rax
  6b3bd5:	74 24                	je     6b3bfb <http_parser_execute+0x46eb>
  6b3bd7:	eb 00                	jmp    6b3bd9 <http_parser_execute+0x46c9>
  6b3bd9:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b3bdc:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b3be0:	89 41 04             	mov    %eax,0x4(%rcx)
  6b3be3:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b3be7:	8b 48 14             	mov    0x14(%rax),%ecx
  6b3bea:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b3bf0:	81 c9 00 00 00 07    	or     $0x7000000,%ecx
  6b3bf6:	89 48 14             	mov    %ecx,0x14(%rax)
  6b3bf9:	eb 00                	jmp    6b3bfb <http_parser_execute+0x46eb>
  6b3bfb:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b3bff:	8b 00                	mov    (%rax),%eax
  6b3c01:	c1 e8 0a             	shr    $0xa,%eax
  6b3c04:	83 e0 7f             	and    $0x7f,%eax
  6b3c07:	89 45 ec             	mov    %eax,-0x14(%rbp)
  6b3c0a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b3c0e:	8b 40 14             	mov    0x14(%rax),%eax
  6b3c11:	c1 e8 18             	shr    $0x18,%eax
  6b3c14:	83 e0 7f             	and    $0x7f,%eax
  6b3c17:	83 f8 00             	cmp    $0x0,%eax
  6b3c1a:	0f 95 c0             	setne  %al
  6b3c1d:	34 ff                	xor    $0xff,%al
  6b3c1f:	34 ff                	xor    $0xff,%al
  6b3c21:	24 01                	and    $0x1,%al
  6b3c23:	0f b6 c0             	movzbl %al,%eax
  6b3c26:	48 98                	cltq   
  6b3c28:	48 83 f8 00          	cmp    $0x0,%rax
  6b3c2c:	74 18                	je     6b3c46 <http_parser_execute+0x4736>
  6b3c2e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b3c32:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  6b3c36:	48 29 c8             	sub    %rcx,%rax
  6b3c39:	48 83 c0 01          	add    $0x1,%rax
  6b3c3d:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  6b3c41:	e9 b4 15 00 00       	jmpq   6b51fa <http_parser_execute+0x5cea>
  6b3c46:	eb 00                	jmp    6b3c48 <http_parser_execute+0x4738>
  6b3c48:	eb 00                	jmp    6b3c4a <http_parser_execute+0x473a>
  6b3c4a:	eb 07                	jmp    6b3c53 <http_parser_execute+0x4743>
  6b3c4c:	c7 45 ec 3f 00 00 00 	movl   $0x3f,-0x14(%rbp)
  6b3c53:	eb 00                	jmp    6b3c55 <http_parser_execute+0x4745>
  6b3c55:	eb 00                	jmp    6b3c57 <http_parser_execute+0x4747>
  6b3c57:	eb 00                	jmp    6b3c59 <http_parser_execute+0x4749>
  6b3c59:	eb 00                	jmp    6b3c5b <http_parser_execute+0x474b>
  6b3c5b:	eb 00                	jmp    6b3c5d <http_parser_execute+0x474d>
  6b3c5d:	e9 a3 0d 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6b3c62:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b3c66:	48 8b 40 08          	mov    0x8(%rax),%rax
  6b3c6a:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  6b3c6e:	48 03 4d 88          	add    -0x78(%rbp),%rcx
  6b3c72:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  6b3c76:	48 29 d1             	sub    %rdx,%rcx
  6b3c79:	48 39 c8             	cmp    %rcx,%rax
  6b3c7c:	73 0a                	jae    6b3c88 <http_parser_execute+0x4778>
  6b3c7e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b3c82:	48 8b 40 08          	mov    0x8(%rax),%rax
  6b3c86:	eb 0f                	jmp    6b3c97 <http_parser_execute+0x4787>
  6b3c88:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  6b3c8c:	48 03 45 88          	add    -0x78(%rbp),%rax
  6b3c90:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  6b3c94:	48 29 c8             	sub    %rcx,%rax
  6b3c97:	48 89 85 50 ff ff ff 	mov    %rax,-0xb0(%rbp)
  6b3c9e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b3ca2:	48 83 78 08 00       	cmpq   $0x0,0x8(%rax)
  6b3ca7:	74 0d                	je     6b3cb6 <http_parser_execute+0x47a6>
  6b3ca9:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b3cad:	48 83 78 08 ff       	cmpq   $0xffffffffffffffff,0x8(%rax)
  6b3cb2:	74 02                	je     6b3cb6 <http_parser_execute+0x47a6>
  6b3cb4:	eb 28                	jmp    6b3cde <http_parser_execute+0x47ce>
  6b3cb6:	48 bf 48 3f 20 00 00 	movabs $0x203f48,%rdi
  6b3cbd:	00 00 00 
  6b3cc0:	48 be f5 2b 20 00 00 	movabs $0x202bf5,%rsi
  6b3cc7:	00 00 00 
  6b3cca:	48 b9 37 6e 20 00 00 	movabs $0x206e37,%rcx
  6b3cd1:	00 00 00 
  6b3cd4:	ba 9e 07 00 00       	mov    $0x79e,%edx
  6b3cd9:	e8 b2 7c 00 00       	callq  6bb990 <__assert_fail@plt>
  6b3cde:	eb 00                	jmp    6b3ce0 <http_parser_execute+0x47d0>
  6b3ce0:	48 83 7d a0 00       	cmpq   $0x0,-0x60(%rbp)
  6b3ce5:	75 08                	jne    6b3cef <http_parser_execute+0x47df>
  6b3ce7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b3ceb:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
  6b3cef:	eb 00                	jmp    6b3cf1 <http_parser_execute+0x47e1>
  6b3cf1:	48 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%rax
  6b3cf8:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b3cfc:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  6b3d00:	48 29 c2             	sub    %rax,%rdx
  6b3d03:	48 89 51 08          	mov    %rdx,0x8(%rcx)
  6b3d07:	48 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%rax
  6b3d0e:	48 83 e8 01          	sub    $0x1,%rax
  6b3d12:	48 03 45 d8          	add    -0x28(%rbp),%rax
  6b3d16:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  6b3d1a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b3d1e:	48 83 78 08 00       	cmpq   $0x0,0x8(%rax)
  6b3d23:	0f 85 66 01 00 00    	jne    6b3e8f <http_parser_execute+0x497f>
  6b3d29:	c7 45 ec 40 00 00 00 	movl   $0x40,-0x14(%rbp)
  6b3d30:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b3d34:	8b 40 14             	mov    0x14(%rax),%eax
  6b3d37:	c1 e8 18             	shr    $0x18,%eax
  6b3d3a:	83 e0 7f             	and    $0x7f,%eax
  6b3d3d:	83 f8 00             	cmp    $0x0,%eax
  6b3d40:	75 02                	jne    6b3d44 <http_parser_execute+0x4834>
  6b3d42:	eb 28                	jmp    6b3d6c <http_parser_execute+0x485c>
  6b3d44:	48 bf 00 2e 20 00 00 	movabs $0x202e00,%rdi
  6b3d4b:	00 00 00 
  6b3d4e:	48 be f5 2b 20 00 00 	movabs $0x202bf5,%rsi
  6b3d55:	00 00 00 
  6b3d58:	48 b9 37 6e 20 00 00 	movabs $0x206e37,%rcx
  6b3d5f:	00 00 00 
  6b3d62:	ba b5 07 00 00       	mov    $0x7b5,%edx
  6b3d67:	e8 24 7c 00 00       	callq  6bb990 <__assert_fail@plt>
  6b3d6c:	48 83 7d a0 00       	cmpq   $0x0,-0x60(%rbp)
  6b3d71:	0f 84 11 01 00 00    	je     6b3e88 <http_parser_execute+0x4978>
  6b3d77:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6b3d7b:	48 83 78 30 00       	cmpq   $0x0,0x30(%rax)
  6b3d80:	0f 95 c0             	setne  %al
  6b3d83:	34 ff                	xor    $0xff,%al
  6b3d85:	34 ff                	xor    $0xff,%al
  6b3d87:	24 01                	and    $0x1,%al
  6b3d89:	0f b6 c0             	movzbl %al,%eax
  6b3d8c:	48 98                	cltq   
  6b3d8e:	48 83 f8 00          	cmp    $0x0,%rax
  6b3d92:	0f 84 e8 00 00 00    	je     6b3e80 <http_parser_execute+0x4970>
  6b3d98:	8b 45 ec             	mov    -0x14(%rbp),%eax
  6b3d9b:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b3d9f:	8b 11                	mov    (%rcx),%edx
  6b3da1:	83 e0 7f             	and    $0x7f,%eax
  6b3da4:	c1 e0 0a             	shl    $0xa,%eax
  6b3da7:	81 e2 ff 03 fe ff    	and    $0xfffe03ff,%edx
  6b3dad:	09 c2                	or     %eax,%edx
  6b3daf:	89 11                	mov    %edx,(%rcx)
  6b3db1:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6b3db5:	48 8b 48 30          	mov    0x30(%rax),%rcx
  6b3db9:	48 b8 40 b8 6b 00 00 	movabs $0x6bb840,%rax
  6b3dc0:	00 00 00 
  6b3dc3:	48 89 ca             	mov    %rcx,%rdx
  6b3dc6:	48 29 c2             	sub    %rax,%rdx
  6b3dc9:	48 89 d0             	mov    %rdx,%rax
  6b3dcc:	48 c1 e8 03          	shr    $0x3,%rax
  6b3dd0:	48 c1 e2 3d          	shl    $0x3d,%rdx
  6b3dd4:	48 09 d0             	or     %rdx,%rax
  6b3dd7:	48 83 f8 0f          	cmp    $0xf,%rax
  6b3ddb:	76 05                	jbe    6b3de2 <http_parser_execute+0x48d2>
  6b3ddd:	67 0f b9 40 02       	ud1    0x2(%eax),%eax
  6b3de2:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b3de6:	48 8b 75 a0          	mov    -0x60(%rbp),%rsi
  6b3dea:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  6b3dee:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
  6b3df2:	48 29 c2             	sub    %rax,%rdx
  6b3df5:	48 83 c2 01          	add    $0x1,%rdx
  6b3df9:	ff d1                	callq  *%rcx
  6b3dfb:	31 c9                	xor    %ecx,%ecx
  6b3dfd:	39 c1                	cmp    %eax,%ecx
  6b3dff:	0f 95 c0             	setne  %al
  6b3e02:	34 ff                	xor    $0xff,%al
  6b3e04:	34 ff                	xor    $0xff,%al
  6b3e06:	24 01                	and    $0x1,%al
  6b3e08:	0f b6 c0             	movzbl %al,%eax
  6b3e0b:	48 98                	cltq   
  6b3e0d:	48 83 f8 00          	cmp    $0x0,%rax
  6b3e11:	74 24                	je     6b3e37 <http_parser_execute+0x4927>
  6b3e13:	eb 00                	jmp    6b3e15 <http_parser_execute+0x4905>
  6b3e15:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b3e18:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b3e1c:	89 41 04             	mov    %eax,0x4(%rcx)
  6b3e1f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b3e23:	8b 48 14             	mov    0x14(%rax),%ecx
  6b3e26:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b3e2c:	81 c9 00 00 00 06    	or     $0x6000000,%ecx
  6b3e32:	89 48 14             	mov    %ecx,0x14(%rax)
  6b3e35:	eb 00                	jmp    6b3e37 <http_parser_execute+0x4927>
  6b3e37:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b3e3b:	8b 00                	mov    (%rax),%eax
  6b3e3d:	c1 e8 0a             	shr    $0xa,%eax
  6b3e40:	83 e0 7f             	and    $0x7f,%eax
  6b3e43:	89 45 ec             	mov    %eax,-0x14(%rbp)
  6b3e46:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b3e4a:	8b 40 14             	mov    0x14(%rax),%eax
  6b3e4d:	c1 e8 18             	shr    $0x18,%eax
  6b3e50:	83 e0 7f             	and    $0x7f,%eax
  6b3e53:	83 f8 00             	cmp    $0x0,%eax
  6b3e56:	0f 95 c0             	setne  %al
  6b3e59:	34 ff                	xor    $0xff,%al
  6b3e5b:	34 ff                	xor    $0xff,%al
  6b3e5d:	24 01                	and    $0x1,%al
  6b3e5f:	0f b6 c0             	movzbl %al,%eax
  6b3e62:	48 98                	cltq   
  6b3e64:	48 83 f8 00          	cmp    $0x0,%rax
  6b3e68:	74 14                	je     6b3e7e <http_parser_execute+0x496e>
  6b3e6a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b3e6e:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  6b3e72:	48 29 c8             	sub    %rcx,%rax
  6b3e75:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  6b3e79:	e9 7c 13 00 00       	jmpq   6b51fa <http_parser_execute+0x5cea>
  6b3e7e:	eb 00                	jmp    6b3e80 <http_parser_execute+0x4970>
  6b3e80:	48 c7 45 a0 00 00 00 	movq   $0x0,-0x60(%rbp)
  6b3e87:	00 
  6b3e88:	eb 00                	jmp    6b3e8a <http_parser_execute+0x497a>
  6b3e8a:	e9 c4 bb ff ff       	jmpq   6afa53 <http_parser_execute+0x543>
  6b3e8f:	e9 71 0b 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6b3e94:	eb 00                	jmp    6b3e96 <http_parser_execute+0x4986>
  6b3e96:	48 83 7d a0 00       	cmpq   $0x0,-0x60(%rbp)
  6b3e9b:	75 08                	jne    6b3ea5 <http_parser_execute+0x4995>
  6b3e9d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b3ea1:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
  6b3ea5:	eb 00                	jmp    6b3ea7 <http_parser_execute+0x4997>
  6b3ea7:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  6b3eab:	48 03 45 88          	add    -0x78(%rbp),%rax
  6b3eaf:	48 83 c0 ff          	add    $0xffffffffffffffff,%rax
  6b3eb3:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  6b3eb7:	e9 49 0b 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6b3ebc:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b3ec0:	e8 4b 17 00 00       	callq  6b5610 <http_should_keep_alive>
  6b3ec5:	83 f8 00             	cmp    $0x0,%eax
  6b3ec8:	74 1b                	je     6b3ee5 <http_parser_execute+0x49d5>
  6b3eca:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b3ece:	8b 08                	mov    (%rax),%ecx
  6b3ed0:	83 e1 03             	and    $0x3,%ecx
  6b3ed3:	b8 04 00 00 00       	mov    $0x4,%eax
  6b3ed8:	ba 12 00 00 00       	mov    $0x12,%edx
  6b3edd:	83 f9 00             	cmp    $0x0,%ecx
  6b3ee0:	0f 44 c2             	cmove  %edx,%eax
  6b3ee3:	eb 07                	jmp    6b3eec <http_parser_execute+0x49dc>
  6b3ee5:	b8 01 00 00 00       	mov    $0x1,%eax
  6b3eea:	eb 00                	jmp    6b3eec <http_parser_execute+0x49dc>
  6b3eec:	89 45 ec             	mov    %eax,-0x14(%rbp)
  6b3eef:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b3ef3:	8b 40 14             	mov    0x14(%rax),%eax
  6b3ef6:	c1 e8 18             	shr    $0x18,%eax
  6b3ef9:	83 e0 7f             	and    $0x7f,%eax
  6b3efc:	83 f8 00             	cmp    $0x0,%eax
  6b3eff:	75 02                	jne    6b3f03 <http_parser_execute+0x49f3>
  6b3f01:	eb 28                	jmp    6b3f2b <http_parser_execute+0x4a1b>
  6b3f03:	48 bf 00 2e 20 00 00 	movabs $0x202e00,%rdi
  6b3f0a:	00 00 00 
  6b3f0d:	48 be f5 2b 20 00 00 	movabs $0x202bf5,%rsi
  6b3f14:	00 00 00 
  6b3f17:	48 b9 37 6e 20 00 00 	movabs $0x206e37,%rcx
  6b3f1e:	00 00 00 
  6b3f21:	ba c5 07 00 00       	mov    $0x7c5,%edx
  6b3f26:	e8 65 7a 00 00       	callq  6bb990 <__assert_fail@plt>
  6b3f2b:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6b3f2f:	48 83 78 38 00       	cmpq   $0x0,0x38(%rax)
  6b3f34:	0f 95 c0             	setne  %al
  6b3f37:	34 ff                	xor    $0xff,%al
  6b3f39:	34 ff                	xor    $0xff,%al
  6b3f3b:	24 01                	and    $0x1,%al
  6b3f3d:	0f b6 c0             	movzbl %al,%eax
  6b3f40:	48 98                	cltq   
  6b3f42:	48 83 f8 00          	cmp    $0x0,%rax
  6b3f46:	0f 84 d9 00 00 00    	je     6b4025 <http_parser_execute+0x4b15>
  6b3f4c:	8b 45 ec             	mov    -0x14(%rbp),%eax
  6b3f4f:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b3f53:	8b 11                	mov    (%rcx),%edx
  6b3f55:	83 e0 7f             	and    $0x7f,%eax
  6b3f58:	c1 e0 0a             	shl    $0xa,%eax
  6b3f5b:	81 e2 ff 03 fe ff    	and    $0xfffe03ff,%edx
  6b3f61:	09 c2                	or     %eax,%edx
  6b3f63:	89 11                	mov    %edx,(%rcx)
  6b3f65:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6b3f69:	48 8b 48 38          	mov    0x38(%rax),%rcx
  6b3f6d:	48 b8 c0 b8 6b 00 00 	movabs $0x6bb8c0,%rax
  6b3f74:	00 00 00 
  6b3f77:	48 89 ca             	mov    %rcx,%rdx
  6b3f7a:	48 29 c2             	sub    %rax,%rdx
  6b3f7d:	48 89 d0             	mov    %rdx,%rax
  6b3f80:	48 c1 e8 03          	shr    $0x3,%rax
  6b3f84:	48 c1 e2 3d          	shl    $0x3d,%rdx
  6b3f88:	48 09 d0             	or     %rdx,%rax
  6b3f8b:	48 83 f8 10          	cmp    $0x10,%rax
  6b3f8f:	76 05                	jbe    6b3f96 <http_parser_execute+0x4a86>
  6b3f91:	67 0f b9 40 02       	ud1    0x2(%eax),%eax
  6b3f96:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b3f9a:	ff d1                	callq  *%rcx
  6b3f9c:	31 c9                	xor    %ecx,%ecx
  6b3f9e:	39 c1                	cmp    %eax,%ecx
  6b3fa0:	0f 95 c0             	setne  %al
  6b3fa3:	34 ff                	xor    $0xff,%al
  6b3fa5:	34 ff                	xor    $0xff,%al
  6b3fa7:	24 01                	and    $0x1,%al
  6b3fa9:	0f b6 c0             	movzbl %al,%eax
  6b3fac:	48 98                	cltq   
  6b3fae:	48 83 f8 00          	cmp    $0x0,%rax
  6b3fb2:	74 24                	je     6b3fd8 <http_parser_execute+0x4ac8>
  6b3fb4:	eb 00                	jmp    6b3fb6 <http_parser_execute+0x4aa6>
  6b3fb6:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b3fb9:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b3fbd:	89 41 04             	mov    %eax,0x4(%rcx)
  6b3fc0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b3fc4:	8b 48 14             	mov    0x14(%rax),%ecx
  6b3fc7:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b3fcd:	81 c9 00 00 00 07    	or     $0x7000000,%ecx
  6b3fd3:	89 48 14             	mov    %ecx,0x14(%rax)
  6b3fd6:	eb 00                	jmp    6b3fd8 <http_parser_execute+0x4ac8>
  6b3fd8:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b3fdc:	8b 00                	mov    (%rax),%eax
  6b3fde:	c1 e8 0a             	shr    $0xa,%eax
  6b3fe1:	83 e0 7f             	and    $0x7f,%eax
  6b3fe4:	89 45 ec             	mov    %eax,-0x14(%rbp)
  6b3fe7:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b3feb:	8b 40 14             	mov    0x14(%rax),%eax
  6b3fee:	c1 e8 18             	shr    $0x18,%eax
  6b3ff1:	83 e0 7f             	and    $0x7f,%eax
  6b3ff4:	83 f8 00             	cmp    $0x0,%eax
  6b3ff7:	0f 95 c0             	setne  %al
  6b3ffa:	34 ff                	xor    $0xff,%al
  6b3ffc:	34 ff                	xor    $0xff,%al
  6b3ffe:	24 01                	and    $0x1,%al
  6b4000:	0f b6 c0             	movzbl %al,%eax
  6b4003:	48 98                	cltq   
  6b4005:	48 83 f8 00          	cmp    $0x0,%rax
  6b4009:	74 18                	je     6b4023 <http_parser_execute+0x4b13>
  6b400b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b400f:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  6b4013:	48 29 c8             	sub    %rcx,%rax
  6b4016:	48 83 c0 01          	add    $0x1,%rax
  6b401a:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  6b401e:	e9 d7 11 00 00       	jmpq   6b51fa <http_parser_execute+0x5cea>
  6b4023:	eb 00                	jmp    6b4025 <http_parser_execute+0x4b15>
  6b4025:	eb 00                	jmp    6b4027 <http_parser_execute+0x4b17>
  6b4027:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b402b:	8b 40 14             	mov    0x14(%rax),%eax
  6b402e:	c1 e8 1f             	shr    $0x1f,%eax
  6b4031:	83 f8 00             	cmp    $0x0,%eax
  6b4034:	74 3d                	je     6b4073 <http_parser_execute+0x4b63>
  6b4036:	eb 00                	jmp    6b4038 <http_parser_execute+0x4b28>
  6b4038:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b403b:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b403f:	89 41 04             	mov    %eax,0x4(%rcx)
  6b4042:	8b 45 ec             	mov    -0x14(%rbp),%eax
  6b4045:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b4049:	8b 11                	mov    (%rcx),%edx
  6b404b:	83 e0 7f             	and    $0x7f,%eax
  6b404e:	c1 e0 0a             	shl    $0xa,%eax
  6b4051:	81 e2 ff 03 fe ff    	and    $0xfffe03ff,%edx
  6b4057:	09 c2                	or     %eax,%edx
  6b4059:	89 11                	mov    %edx,(%rcx)
  6b405b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b405f:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  6b4063:	48 29 c8             	sub    %rcx,%rax
  6b4066:	48 83 c0 01          	add    $0x1,%rax
  6b406a:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  6b406e:	e9 87 11 00 00       	jmpq   6b51fa <http_parser_execute+0x5cea>
  6b4073:	e9 8d 09 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6b4078:	83 7d e4 01          	cmpl   $0x1,-0x1c(%rbp)
  6b407c:	75 02                	jne    6b4080 <http_parser_execute+0x4b70>
  6b407e:	eb 28                	jmp    6b40a8 <http_parser_execute+0x4b98>
  6b4080:	48 bf 80 20 20 00 00 	movabs $0x202080,%rdi
  6b4087:	00 00 00 
  6b408a:	48 be f5 2b 20 00 00 	movabs $0x202bf5,%rsi
  6b4091:	00 00 00 
  6b4094:	48 b9 37 6e 20 00 00 	movabs $0x206e37,%rcx
  6b409b:	00 00 00 
  6b409e:	ba ce 07 00 00       	mov    $0x7ce,%edx
  6b40a3:	e8 e8 78 00 00       	callq  6bb990 <__assert_fail@plt>
  6b40a8:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b40ac:	8b 00                	mov    (%rax),%eax
  6b40ae:	c1 e8 02             	shr    $0x2,%eax
  6b40b1:	25 ff 00 00 00       	and    $0xff,%eax
  6b40b6:	83 e0 01             	and    $0x1,%eax
  6b40b9:	83 f8 00             	cmp    $0x0,%eax
  6b40bc:	74 02                	je     6b40c0 <http_parser_execute+0x4bb0>
  6b40be:	eb 28                	jmp    6b40e8 <http_parser_execute+0x4bd8>
  6b40c0:	48 bf b9 6b 20 00 00 	movabs $0x206bb9,%rdi
  6b40c7:	00 00 00 
  6b40ca:	48 be f5 2b 20 00 00 	movabs $0x202bf5,%rsi
  6b40d1:	00 00 00 
  6b40d4:	48 b9 37 6e 20 00 00 	movabs $0x206e37,%rcx
  6b40db:	00 00 00 
  6b40de:	ba cf 07 00 00       	mov    $0x7cf,%edx
  6b40e3:	e8 a8 78 00 00       	callq  6bb990 <__assert_fail@plt>
  6b40e8:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
  6b40ec:	8a 04 05 a0 84 20 00 	mov    0x2084a0(,%rax,1),%al
  6b40f3:	88 45 bf             	mov    %al,-0x41(%rbp)
  6b40f6:	0f be 45 bf          	movsbl -0x41(%rbp),%eax
  6b40fa:	83 f8 ff             	cmp    $0xffffffff,%eax
  6b40fd:	0f 94 c0             	sete   %al
  6b4100:	34 ff                	xor    $0xff,%al
  6b4102:	34 ff                	xor    $0xff,%al
  6b4104:	24 01                	and    $0x1,%al
  6b4106:	0f b6 c0             	movzbl %al,%eax
  6b4109:	48 98                	cltq   
  6b410b:	48 83 f8 00          	cmp    $0x0,%rax
  6b410f:	74 27                	je     6b4138 <http_parser_execute+0x4c28>
  6b4111:	eb 00                	jmp    6b4113 <http_parser_execute+0x4c03>
  6b4113:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b4116:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b411a:	89 41 04             	mov    %eax,0x4(%rcx)
  6b411d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b4121:	8b 48 14             	mov    0x14(%rax),%ecx
  6b4124:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b412a:	81 c9 00 00 00 1b    	or     $0x1b000000,%ecx
  6b4130:	89 48 14             	mov    %ecx,0x14(%rax)
  6b4133:	e9 58 10 00 00       	jmpq   6b5190 <http_parser_execute+0x5c80>
  6b4138:	48 0f be 45 bf       	movsbq -0x41(%rbp),%rax
  6b413d:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b4141:	48 89 41 08          	mov    %rax,0x8(%rcx)
  6b4145:	c7 45 ec 36 00 00 00 	movl   $0x36,-0x14(%rbp)
  6b414c:	e9 b4 08 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6b4151:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b4155:	8b 00                	mov    (%rax),%eax
  6b4157:	c1 e8 02             	shr    $0x2,%eax
  6b415a:	25 ff 00 00 00       	and    $0xff,%eax
  6b415f:	83 e0 01             	and    $0x1,%eax
  6b4162:	83 f8 00             	cmp    $0x0,%eax
  6b4165:	74 02                	je     6b4169 <http_parser_execute+0x4c59>
  6b4167:	eb 28                	jmp    6b4191 <http_parser_execute+0x4c81>
  6b4169:	48 bf b9 6b 20 00 00 	movabs $0x206bb9,%rdi
  6b4170:	00 00 00 
  6b4173:	48 be f5 2b 20 00 00 	movabs $0x202bf5,%rsi
  6b417a:	00 00 00 
  6b417d:	48 b9 37 6e 20 00 00 	movabs $0x206e37,%rcx
  6b4184:	00 00 00 
  6b4187:	ba e0 07 00 00       	mov    $0x7e0,%edx
  6b418c:	e8 ff 77 00 00       	callq  6bb990 <__assert_fail@plt>
  6b4191:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b4195:	83 f8 0d             	cmp    $0xd,%eax
  6b4198:	75 0c                	jne    6b41a6 <http_parser_execute+0x4c96>
  6b419a:	c7 45 ec 38 00 00 00 	movl   $0x38,-0x14(%rbp)
  6b41a1:	e9 5f 08 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6b41a6:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
  6b41aa:	8a 04 05 a0 84 20 00 	mov    0x2084a0(,%rax,1),%al
  6b41b1:	88 45 bf             	mov    %al,-0x41(%rbp)
  6b41b4:	0f be 45 bf          	movsbl -0x41(%rbp),%eax
  6b41b8:	83 f8 ff             	cmp    $0xffffffff,%eax
  6b41bb:	75 45                	jne    6b4202 <http_parser_execute+0x4cf2>
  6b41bd:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b41c1:	83 f8 3b             	cmp    $0x3b,%eax
  6b41c4:	74 09                	je     6b41cf <http_parser_execute+0x4cbf>
  6b41c6:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b41ca:	83 f8 20             	cmp    $0x20,%eax
  6b41cd:	75 0c                	jne    6b41db <http_parser_execute+0x4ccb>
  6b41cf:	c7 45 ec 37 00 00 00 	movl   $0x37,-0x14(%rbp)
  6b41d6:	e9 2a 08 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6b41db:	eb 00                	jmp    6b41dd <http_parser_execute+0x4ccd>
  6b41dd:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b41e0:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b41e4:	89 41 04             	mov    %eax,0x4(%rcx)
  6b41e7:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b41eb:	8b 48 14             	mov    0x14(%rax),%ecx
  6b41ee:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b41f4:	81 c9 00 00 00 1b    	or     $0x1b000000,%ecx
  6b41fa:	89 48 14             	mov    %ecx,0x14(%rax)
  6b41fd:	e9 8e 0f 00 00       	jmpq   6b5190 <http_parser_execute+0x5c80>
  6b4202:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b4206:	48 8b 40 08          	mov    0x8(%rax),%rax
  6b420a:	48 89 85 70 ff ff ff 	mov    %rax,-0x90(%rbp)
  6b4211:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
  6b4218:	48 c1 e0 04          	shl    $0x4,%rax
  6b421c:	48 89 85 70 ff ff ff 	mov    %rax,-0x90(%rbp)
  6b4223:	48 0f be 45 bf       	movsbq -0x41(%rbp),%rax
  6b4228:	48 03 85 70 ff ff ff 	add    -0x90(%rbp),%rax
  6b422f:	48 89 85 70 ff ff ff 	mov    %rax,-0x90(%rbp)
  6b4236:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b423a:	48 b9 fe ff ff ff ff 	movabs $0xffffffffffffffe,%rcx
  6b4241:	ff ff 0f 
  6b4244:	48 3b 48 08          	cmp    0x8(%rax),%rcx
  6b4248:	0f 92 c0             	setb   %al
  6b424b:	34 ff                	xor    $0xff,%al
  6b424d:	34 ff                	xor    $0xff,%al
  6b424f:	24 01                	and    $0x1,%al
  6b4251:	0f b6 c0             	movzbl %al,%eax
  6b4254:	48 98                	cltq   
  6b4256:	48 83 f8 00          	cmp    $0x0,%rax
  6b425a:	74 27                	je     6b4283 <http_parser_execute+0x4d73>
  6b425c:	eb 00                	jmp    6b425e <http_parser_execute+0x4d4e>
  6b425e:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b4261:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b4265:	89 41 04             	mov    %eax,0x4(%rcx)
  6b4268:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b426c:	8b 48 14             	mov    0x14(%rax),%ecx
  6b426f:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b4275:	81 c9 00 00 00 19    	or     $0x19000000,%ecx
  6b427b:	89 48 14             	mov    %ecx,0x14(%rax)
  6b427e:	e9 0d 0f 00 00       	jmpq   6b5190 <http_parser_execute+0x5c80>
  6b4283:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
  6b428a:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b428e:	48 89 41 08          	mov    %rax,0x8(%rcx)
  6b4292:	e9 6e 07 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6b4297:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b429b:	8b 00                	mov    (%rax),%eax
  6b429d:	c1 e8 02             	shr    $0x2,%eax
  6b42a0:	25 ff 00 00 00       	and    $0xff,%eax
  6b42a5:	83 e0 01             	and    $0x1,%eax
  6b42a8:	83 f8 00             	cmp    $0x0,%eax
  6b42ab:	74 02                	je     6b42af <http_parser_execute+0x4d9f>
  6b42ad:	eb 28                	jmp    6b42d7 <http_parser_execute+0x4dc7>
  6b42af:	48 bf b9 6b 20 00 00 	movabs $0x206bb9,%rdi
  6b42b6:	00 00 00 
  6b42b9:	48 be f5 2b 20 00 00 	movabs $0x202bf5,%rsi
  6b42c0:	00 00 00 
  6b42c3:	48 b9 37 6e 20 00 00 	movabs $0x206e37,%rcx
  6b42ca:	00 00 00 
  6b42cd:	ba 03 08 00 00       	mov    $0x803,%edx
  6b42d2:	e8 b9 76 00 00       	callq  6bb990 <__assert_fail@plt>
  6b42d7:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b42db:	83 f8 0d             	cmp    $0xd,%eax
  6b42de:	75 0c                	jne    6b42ec <http_parser_execute+0x4ddc>
  6b42e0:	c7 45 ec 38 00 00 00 	movl   $0x38,-0x14(%rbp)
  6b42e7:	e9 19 07 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6b42ec:	e9 14 07 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6b42f1:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b42f5:	8b 00                	mov    (%rax),%eax
  6b42f7:	c1 e8 02             	shr    $0x2,%eax
  6b42fa:	25 ff 00 00 00       	and    $0xff,%eax
  6b42ff:	83 e0 01             	and    $0x1,%eax
  6b4302:	83 f8 00             	cmp    $0x0,%eax
  6b4305:	74 02                	je     6b4309 <http_parser_execute+0x4df9>
  6b4307:	eb 28                	jmp    6b4331 <http_parser_execute+0x4e21>
  6b4309:	48 bf b9 6b 20 00 00 	movabs $0x206bb9,%rdi
  6b4310:	00 00 00 
  6b4313:	48 be f5 2b 20 00 00 	movabs $0x202bf5,%rsi
  6b431a:	00 00 00 
  6b431d:	48 b9 37 6e 20 00 00 	movabs $0x206e37,%rcx
  6b4324:	00 00 00 
  6b4327:	ba 0e 08 00 00       	mov    $0x80e,%edx
  6b432c:	e8 5f 76 00 00       	callq  6bb990 <__assert_fail@plt>
  6b4331:	eb 00                	jmp    6b4333 <http_parser_execute+0x4e23>
  6b4333:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b4337:	83 f8 0a             	cmp    $0xa,%eax
  6b433a:	74 27                	je     6b4363 <http_parser_execute+0x4e53>
  6b433c:	eb 00                	jmp    6b433e <http_parser_execute+0x4e2e>
  6b433e:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b4341:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b4345:	89 41 04             	mov    %eax,0x4(%rcx)
  6b4348:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b434c:	8b 48 14             	mov    0x14(%rax),%ecx
  6b434f:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b4355:	81 c9 00 00 00 1e    	or     $0x1e000000,%ecx
  6b435b:	89 48 14             	mov    %ecx,0x14(%rax)
  6b435e:	e9 2d 0e 00 00       	jmpq   6b5190 <http_parser_execute+0x5c80>
  6b4363:	eb 00                	jmp    6b4365 <http_parser_execute+0x4e55>
  6b4365:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b4369:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%rax)
  6b4370:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
  6b4377:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b437b:	48 83 78 08 00       	cmpq   $0x0,0x8(%rax)
  6b4380:	75 30                	jne    6b43b2 <http_parser_execute+0x4ea2>
  6b4382:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b4386:	8b 08                	mov    (%rax),%ecx
  6b4388:	c1 e9 02             	shr    $0x2,%ecx
  6b438b:	81 e1 ff 00 00 00    	and    $0xff,%ecx
  6b4391:	83 c9 10             	or     $0x10,%ecx
  6b4394:	8b 10                	mov    (%rax),%edx
  6b4396:	81 e1 ff 00 00 00    	and    $0xff,%ecx
  6b439c:	c1 e1 02             	shl    $0x2,%ecx
  6b439f:	81 e2 03 fc ff ff    	and    $0xfffffc03,%edx
  6b43a5:	09 ca                	or     %ecx,%edx
  6b43a7:	89 10                	mov    %edx,(%rax)
  6b43a9:	c7 45 ec 2c 00 00 00 	movl   $0x2c,-0x14(%rbp)
  6b43b0:	eb 07                	jmp    6b43b9 <http_parser_execute+0x4ea9>
  6b43b2:	c7 45 ec 3b 00 00 00 	movl   $0x3b,-0x14(%rbp)
  6b43b9:	eb 00                	jmp    6b43bb <http_parser_execute+0x4eab>
  6b43bb:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b43bf:	8b 40 14             	mov    0x14(%rax),%eax
  6b43c2:	c1 e8 18             	shr    $0x18,%eax
  6b43c5:	83 e0 7f             	and    $0x7f,%eax
  6b43c8:	83 f8 00             	cmp    $0x0,%eax
  6b43cb:	75 02                	jne    6b43cf <http_parser_execute+0x4ebf>
  6b43cd:	eb 28                	jmp    6b43f7 <http_parser_execute+0x4ee7>
  6b43cf:	48 bf 00 2e 20 00 00 	movabs $0x202e00,%rdi
  6b43d6:	00 00 00 
  6b43d9:	48 be f5 2b 20 00 00 	movabs $0x202bf5,%rsi
  6b43e0:	00 00 00 
  6b43e3:	48 b9 37 6e 20 00 00 	movabs $0x206e37,%rcx
  6b43ea:	00 00 00 
  6b43ed:	ba 1a 08 00 00       	mov    $0x81a,%edx
  6b43f2:	e8 99 75 00 00       	callq  6bb990 <__assert_fail@plt>
  6b43f7:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6b43fb:	48 83 78 40 00       	cmpq   $0x0,0x40(%rax)
  6b4400:	0f 95 c0             	setne  %al
  6b4403:	34 ff                	xor    $0xff,%al
  6b4405:	34 ff                	xor    $0xff,%al
  6b4407:	24 01                	and    $0x1,%al
  6b4409:	0f b6 c0             	movzbl %al,%eax
  6b440c:	48 98                	cltq   
  6b440e:	48 83 f8 00          	cmp    $0x0,%rax
  6b4412:	0f 84 d9 00 00 00    	je     6b44f1 <http_parser_execute+0x4fe1>
  6b4418:	8b 45 ec             	mov    -0x14(%rbp),%eax
  6b441b:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b441f:	8b 11                	mov    (%rcx),%edx
  6b4421:	83 e0 7f             	and    $0x7f,%eax
  6b4424:	c1 e0 0a             	shl    $0xa,%eax
  6b4427:	81 e2 ff 03 fe ff    	and    $0xfffe03ff,%edx
  6b442d:	09 c2                	or     %eax,%edx
  6b442f:	89 11                	mov    %edx,(%rcx)
  6b4431:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6b4435:	48 8b 48 40          	mov    0x40(%rax),%rcx
  6b4439:	48 b8 c0 b8 6b 00 00 	movabs $0x6bb8c0,%rax
  6b4440:	00 00 00 
  6b4443:	48 89 ca             	mov    %rcx,%rdx
  6b4446:	48 29 c2             	sub    %rax,%rdx
  6b4449:	48 89 d0             	mov    %rdx,%rax
  6b444c:	48 c1 e8 03          	shr    $0x3,%rax
  6b4450:	48 c1 e2 3d          	shl    $0x3d,%rdx
  6b4454:	48 09 d0             	or     %rdx,%rax
  6b4457:	48 83 f8 10          	cmp    $0x10,%rax
  6b445b:	76 05                	jbe    6b4462 <http_parser_execute+0x4f52>
  6b445d:	67 0f b9 40 02       	ud1    0x2(%eax),%eax
  6b4462:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b4466:	ff d1                	callq  *%rcx
  6b4468:	31 c9                	xor    %ecx,%ecx
  6b446a:	39 c1                	cmp    %eax,%ecx
  6b446c:	0f 95 c0             	setne  %al
  6b446f:	34 ff                	xor    $0xff,%al
  6b4471:	34 ff                	xor    $0xff,%al
  6b4473:	24 01                	and    $0x1,%al
  6b4475:	0f b6 c0             	movzbl %al,%eax
  6b4478:	48 98                	cltq   
  6b447a:	48 83 f8 00          	cmp    $0x0,%rax
  6b447e:	74 24                	je     6b44a4 <http_parser_execute+0x4f94>
  6b4480:	eb 00                	jmp    6b4482 <http_parser_execute+0x4f72>
  6b4482:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b4485:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b4489:	89 41 04             	mov    %eax,0x4(%rcx)
  6b448c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b4490:	8b 48 14             	mov    0x14(%rax),%ecx
  6b4493:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b4499:	81 c9 00 00 00 09    	or     $0x9000000,%ecx
  6b449f:	89 48 14             	mov    %ecx,0x14(%rax)
  6b44a2:	eb 00                	jmp    6b44a4 <http_parser_execute+0x4f94>
  6b44a4:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b44a8:	8b 00                	mov    (%rax),%eax
  6b44aa:	c1 e8 0a             	shr    $0xa,%eax
  6b44ad:	83 e0 7f             	and    $0x7f,%eax
  6b44b0:	89 45 ec             	mov    %eax,-0x14(%rbp)
  6b44b3:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b44b7:	8b 40 14             	mov    0x14(%rax),%eax
  6b44ba:	c1 e8 18             	shr    $0x18,%eax
  6b44bd:	83 e0 7f             	and    $0x7f,%eax
  6b44c0:	83 f8 00             	cmp    $0x0,%eax
  6b44c3:	0f 95 c0             	setne  %al
  6b44c6:	34 ff                	xor    $0xff,%al
  6b44c8:	34 ff                	xor    $0xff,%al
  6b44ca:	24 01                	and    $0x1,%al
  6b44cc:	0f b6 c0             	movzbl %al,%eax
  6b44cf:	48 98                	cltq   
  6b44d1:	48 83 f8 00          	cmp    $0x0,%rax
  6b44d5:	74 18                	je     6b44ef <http_parser_execute+0x4fdf>
  6b44d7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b44db:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  6b44df:	48 29 c8             	sub    %rcx,%rax
  6b44e2:	48 83 c0 01          	add    $0x1,%rax
  6b44e6:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  6b44ea:	e9 0b 0d 00 00       	jmpq   6b51fa <http_parser_execute+0x5cea>
  6b44ef:	eb 00                	jmp    6b44f1 <http_parser_execute+0x4fe1>
  6b44f1:	eb 00                	jmp    6b44f3 <http_parser_execute+0x4fe3>
  6b44f3:	e9 0d 05 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6b44f8:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b44fc:	48 8b 40 08          	mov    0x8(%rax),%rax
  6b4500:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  6b4504:	48 03 4d 88          	add    -0x78(%rbp),%rcx
  6b4508:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  6b450c:	48 29 d1             	sub    %rdx,%rcx
  6b450f:	48 39 c8             	cmp    %rcx,%rax
  6b4512:	73 0a                	jae    6b451e <http_parser_execute+0x500e>
  6b4514:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b4518:	48 8b 40 08          	mov    0x8(%rax),%rax
  6b451c:	eb 0f                	jmp    6b452d <http_parser_execute+0x501d>
  6b451e:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  6b4522:	48 03 45 88          	add    -0x78(%rbp),%rax
  6b4526:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  6b452a:	48 29 c8             	sub    %rcx,%rax
  6b452d:	48 89 85 58 ff ff ff 	mov    %rax,-0xa8(%rbp)
  6b4534:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b4538:	8b 00                	mov    (%rax),%eax
  6b453a:	c1 e8 02             	shr    $0x2,%eax
  6b453d:	25 ff 00 00 00       	and    $0xff,%eax
  6b4542:	83 e0 01             	and    $0x1,%eax
  6b4545:	83 f8 00             	cmp    $0x0,%eax
  6b4548:	74 02                	je     6b454c <http_parser_execute+0x503c>
  6b454a:	eb 28                	jmp    6b4574 <http_parser_execute+0x5064>
  6b454c:	48 bf b9 6b 20 00 00 	movabs $0x206bb9,%rdi
  6b4553:	00 00 00 
  6b4556:	48 be f5 2b 20 00 00 	movabs $0x202bf5,%rsi
  6b455d:	00 00 00 
  6b4560:	48 b9 37 6e 20 00 00 	movabs $0x206e37,%rcx
  6b4567:	00 00 00 
  6b456a:	ba 23 08 00 00       	mov    $0x823,%edx
  6b456f:	e8 1c 74 00 00       	callq  6bb990 <__assert_fail@plt>
  6b4574:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b4578:	48 83 78 08 00       	cmpq   $0x0,0x8(%rax)
  6b457d:	74 0d                	je     6b458c <http_parser_execute+0x507c>
  6b457f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b4583:	48 83 78 08 ff       	cmpq   $0xffffffffffffffff,0x8(%rax)
  6b4588:	74 02                	je     6b458c <http_parser_execute+0x507c>
  6b458a:	eb 28                	jmp    6b45b4 <http_parser_execute+0x50a4>
  6b458c:	48 bf 48 3f 20 00 00 	movabs $0x203f48,%rdi
  6b4593:	00 00 00 
  6b4596:	48 be f5 2b 20 00 00 	movabs $0x202bf5,%rsi
  6b459d:	00 00 00 
  6b45a0:	48 b9 37 6e 20 00 00 	movabs $0x206e37,%rcx
  6b45a7:	00 00 00 
  6b45aa:	ba 25 08 00 00       	mov    $0x825,%edx
  6b45af:	e8 dc 73 00 00       	callq  6bb990 <__assert_fail@plt>
  6b45b4:	eb 00                	jmp    6b45b6 <http_parser_execute+0x50a6>
  6b45b6:	48 83 7d a0 00       	cmpq   $0x0,-0x60(%rbp)
  6b45bb:	75 08                	jne    6b45c5 <http_parser_execute+0x50b5>
  6b45bd:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b45c1:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
  6b45c5:	eb 00                	jmp    6b45c7 <http_parser_execute+0x50b7>
  6b45c7:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
  6b45ce:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b45d2:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  6b45d6:	48 29 c2             	sub    %rax,%rdx
  6b45d9:	48 89 51 08          	mov    %rdx,0x8(%rcx)
  6b45dd:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
  6b45e4:	48 83 e8 01          	sub    $0x1,%rax
  6b45e8:	48 03 45 d8          	add    -0x28(%rbp),%rax
  6b45ec:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  6b45f0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b45f4:	48 83 78 08 00       	cmpq   $0x0,0x8(%rax)
  6b45f9:	75 07                	jne    6b4602 <http_parser_execute+0x50f2>
  6b45fb:	c7 45 ec 3c 00 00 00 	movl   $0x3c,-0x14(%rbp)
  6b4602:	e9 fe 03 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6b4607:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b460b:	8b 00                	mov    (%rax),%eax
  6b460d:	c1 e8 02             	shr    $0x2,%eax
  6b4610:	25 ff 00 00 00       	and    $0xff,%eax
  6b4615:	83 e0 01             	and    $0x1,%eax
  6b4618:	83 f8 00             	cmp    $0x0,%eax
  6b461b:	74 02                	je     6b461f <http_parser_execute+0x510f>
  6b461d:	eb 28                	jmp    6b4647 <http_parser_execute+0x5137>
  6b461f:	48 bf b9 6b 20 00 00 	movabs $0x206bb9,%rdi
  6b4626:	00 00 00 
  6b4629:	48 be f5 2b 20 00 00 	movabs $0x202bf5,%rsi
  6b4630:	00 00 00 
  6b4633:	48 b9 37 6e 20 00 00 	movabs $0x206e37,%rcx
  6b463a:	00 00 00 
  6b463d:	ba 36 08 00 00       	mov    $0x836,%edx
  6b4642:	e8 49 73 00 00       	callq  6bb990 <__assert_fail@plt>
  6b4647:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b464b:	48 83 78 08 00       	cmpq   $0x0,0x8(%rax)
  6b4650:	75 02                	jne    6b4654 <http_parser_execute+0x5144>
  6b4652:	eb 28                	jmp    6b467c <http_parser_execute+0x516c>
  6b4654:	48 bf 4d 66 20 00 00 	movabs $0x20664d,%rdi
  6b465b:	00 00 00 
  6b465e:	48 be f5 2b 20 00 00 	movabs $0x202bf5,%rsi
  6b4665:	00 00 00 
  6b4668:	48 b9 37 6e 20 00 00 	movabs $0x206e37,%rcx
  6b466f:	00 00 00 
  6b4672:	ba 37 08 00 00       	mov    $0x837,%edx
  6b4677:	e8 14 73 00 00       	callq  6bb990 <__assert_fail@plt>
  6b467c:	eb 00                	jmp    6b467e <http_parser_execute+0x516e>
  6b467e:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b4682:	83 f8 0d             	cmp    $0xd,%eax
  6b4685:	74 27                	je     6b46ae <http_parser_execute+0x519e>
  6b4687:	eb 00                	jmp    6b4689 <http_parser_execute+0x5179>
  6b4689:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b468c:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b4690:	89 41 04             	mov    %eax,0x4(%rcx)
  6b4693:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b4697:	8b 48 14             	mov    0x14(%rax),%ecx
  6b469a:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b46a0:	81 c9 00 00 00 1e    	or     $0x1e000000,%ecx
  6b46a6:	89 48 14             	mov    %ecx,0x14(%rax)
  6b46a9:	e9 e2 0a 00 00       	jmpq   6b5190 <http_parser_execute+0x5c80>
  6b46ae:	eb 00                	jmp    6b46b0 <http_parser_execute+0x51a0>
  6b46b0:	c7 45 ec 3d 00 00 00 	movl   $0x3d,-0x14(%rbp)
  6b46b7:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b46bb:	8b 40 14             	mov    0x14(%rax),%eax
  6b46be:	c1 e8 18             	shr    $0x18,%eax
  6b46c1:	83 e0 7f             	and    $0x7f,%eax
  6b46c4:	83 f8 00             	cmp    $0x0,%eax
  6b46c7:	75 02                	jne    6b46cb <http_parser_execute+0x51bb>
  6b46c9:	eb 28                	jmp    6b46f3 <http_parser_execute+0x51e3>
  6b46cb:	48 bf 00 2e 20 00 00 	movabs $0x202e00,%rdi
  6b46d2:	00 00 00 
  6b46d5:	48 be f5 2b 20 00 00 	movabs $0x202bf5,%rsi
  6b46dc:	00 00 00 
  6b46df:	48 b9 37 6e 20 00 00 	movabs $0x206e37,%rcx
  6b46e6:	00 00 00 
  6b46e9:	ba 3a 08 00 00       	mov    $0x83a,%edx
  6b46ee:	e8 9d 72 00 00       	callq  6bb990 <__assert_fail@plt>
  6b46f3:	48 83 7d a0 00       	cmpq   $0x0,-0x60(%rbp)
  6b46f8:	0f 84 11 01 00 00    	je     6b480f <http_parser_execute+0x52ff>
  6b46fe:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6b4702:	48 83 78 30 00       	cmpq   $0x0,0x30(%rax)
  6b4707:	0f 95 c0             	setne  %al
  6b470a:	34 ff                	xor    $0xff,%al
  6b470c:	34 ff                	xor    $0xff,%al
  6b470e:	24 01                	and    $0x1,%al
  6b4710:	0f b6 c0             	movzbl %al,%eax
  6b4713:	48 98                	cltq   
  6b4715:	48 83 f8 00          	cmp    $0x0,%rax
  6b4719:	0f 84 e8 00 00 00    	je     6b4807 <http_parser_execute+0x52f7>
  6b471f:	8b 45 ec             	mov    -0x14(%rbp),%eax
  6b4722:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b4726:	8b 11                	mov    (%rcx),%edx
  6b4728:	83 e0 7f             	and    $0x7f,%eax
  6b472b:	c1 e0 0a             	shl    $0xa,%eax
  6b472e:	81 e2 ff 03 fe ff    	and    $0xfffe03ff,%edx
  6b4734:	09 c2                	or     %eax,%edx
  6b4736:	89 11                	mov    %edx,(%rcx)
  6b4738:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6b473c:	48 8b 48 30          	mov    0x30(%rax),%rcx
  6b4740:	48 b8 40 b8 6b 00 00 	movabs $0x6bb840,%rax
  6b4747:	00 00 00 
  6b474a:	48 89 ca             	mov    %rcx,%rdx
  6b474d:	48 29 c2             	sub    %rax,%rdx
  6b4750:	48 89 d0             	mov    %rdx,%rax
  6b4753:	48 c1 e8 03          	shr    $0x3,%rax
  6b4757:	48 c1 e2 3d          	shl    $0x3d,%rdx
  6b475b:	48 09 d0             	or     %rdx,%rax
  6b475e:	48 83 f8 0f          	cmp    $0xf,%rax
  6b4762:	76 05                	jbe    6b4769 <http_parser_execute+0x5259>
  6b4764:	67 0f b9 40 02       	ud1    0x2(%eax),%eax
  6b4769:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b476d:	48 8b 75 a0          	mov    -0x60(%rbp),%rsi
  6b4771:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  6b4775:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
  6b4779:	48 29 c2             	sub    %rax,%rdx
  6b477c:	ff d1                	callq  *%rcx
  6b477e:	31 c9                	xor    %ecx,%ecx
  6b4780:	39 c1                	cmp    %eax,%ecx
  6b4782:	0f 95 c0             	setne  %al
  6b4785:	34 ff                	xor    $0xff,%al
  6b4787:	34 ff                	xor    $0xff,%al
  6b4789:	24 01                	and    $0x1,%al
  6b478b:	0f b6 c0             	movzbl %al,%eax
  6b478e:	48 98                	cltq   
  6b4790:	48 83 f8 00          	cmp    $0x0,%rax
  6b4794:	74 24                	je     6b47ba <http_parser_execute+0x52aa>
  6b4796:	eb 00                	jmp    6b4798 <http_parser_execute+0x5288>
  6b4798:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b479b:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b479f:	89 41 04             	mov    %eax,0x4(%rcx)
  6b47a2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b47a6:	8b 48 14             	mov    0x14(%rax),%ecx
  6b47a9:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b47af:	81 c9 00 00 00 06    	or     $0x6000000,%ecx
  6b47b5:	89 48 14             	mov    %ecx,0x14(%rax)
  6b47b8:	eb 00                	jmp    6b47ba <http_parser_execute+0x52aa>
  6b47ba:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b47be:	8b 00                	mov    (%rax),%eax
  6b47c0:	c1 e8 0a             	shr    $0xa,%eax
  6b47c3:	83 e0 7f             	and    $0x7f,%eax
  6b47c6:	89 45 ec             	mov    %eax,-0x14(%rbp)
  6b47c9:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b47cd:	8b 40 14             	mov    0x14(%rax),%eax
  6b47d0:	c1 e8 18             	shr    $0x18,%eax
  6b47d3:	83 e0 7f             	and    $0x7f,%eax
  6b47d6:	83 f8 00             	cmp    $0x0,%eax
  6b47d9:	0f 95 c0             	setne  %al
  6b47dc:	34 ff                	xor    $0xff,%al
  6b47de:	34 ff                	xor    $0xff,%al
  6b47e0:	24 01                	and    $0x1,%al
  6b47e2:	0f b6 c0             	movzbl %al,%eax
  6b47e5:	48 98                	cltq   
  6b47e7:	48 83 f8 00          	cmp    $0x0,%rax
  6b47eb:	74 18                	je     6b4805 <http_parser_execute+0x52f5>
  6b47ed:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b47f1:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  6b47f5:	48 29 c8             	sub    %rcx,%rax
  6b47f8:	48 83 c0 01          	add    $0x1,%rax
  6b47fc:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  6b4800:	e9 f5 09 00 00       	jmpq   6b51fa <http_parser_execute+0x5cea>
  6b4805:	eb 00                	jmp    6b4807 <http_parser_execute+0x52f7>
  6b4807:	48 c7 45 a0 00 00 00 	movq   $0x0,-0x60(%rbp)
  6b480e:	00 
  6b480f:	eb 00                	jmp    6b4811 <http_parser_execute+0x5301>
  6b4811:	e9 ef 01 00 00       	jmpq   6b4a05 <http_parser_execute+0x54f5>
  6b4816:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b481a:	8b 00                	mov    (%rax),%eax
  6b481c:	c1 e8 02             	shr    $0x2,%eax
  6b481f:	25 ff 00 00 00       	and    $0xff,%eax
  6b4824:	83 e0 01             	and    $0x1,%eax
  6b4827:	83 f8 00             	cmp    $0x0,%eax
  6b482a:	74 02                	je     6b482e <http_parser_execute+0x531e>
  6b482c:	eb 28                	jmp    6b4856 <http_parser_execute+0x5346>
  6b482e:	48 bf b9 6b 20 00 00 	movabs $0x206bb9,%rdi
  6b4835:	00 00 00 
  6b4838:	48 be f5 2b 20 00 00 	movabs $0x202bf5,%rsi
  6b483f:	00 00 00 
  6b4842:	48 b9 37 6e 20 00 00 	movabs $0x206e37,%rcx
  6b4849:	00 00 00 
  6b484c:	ba 3e 08 00 00       	mov    $0x83e,%edx
  6b4851:	e8 3a 71 00 00       	callq  6bb990 <__assert_fail@plt>
  6b4856:	eb 00                	jmp    6b4858 <http_parser_execute+0x5348>
  6b4858:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b485c:	83 f8 0a             	cmp    $0xa,%eax
  6b485f:	74 27                	je     6b4888 <http_parser_execute+0x5378>
  6b4861:	eb 00                	jmp    6b4863 <http_parser_execute+0x5353>
  6b4863:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b4866:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b486a:	89 41 04             	mov    %eax,0x4(%rcx)
  6b486d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b4871:	8b 48 14             	mov    0x14(%rax),%ecx
  6b4874:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b487a:	81 c9 00 00 00 1e    	or     $0x1e000000,%ecx
  6b4880:	89 48 14             	mov    %ecx,0x14(%rax)
  6b4883:	e9 08 09 00 00       	jmpq   6b5190 <http_parser_execute+0x5c80>
  6b4888:	eb 00                	jmp    6b488a <http_parser_execute+0x537a>
  6b488a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b488e:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%rax)
  6b4895:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
  6b489c:	c7 45 ec 35 00 00 00 	movl   $0x35,-0x14(%rbp)
  6b48a3:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b48a7:	8b 40 14             	mov    0x14(%rax),%eax
  6b48aa:	c1 e8 18             	shr    $0x18,%eax
  6b48ad:	83 e0 7f             	and    $0x7f,%eax
  6b48b0:	83 f8 00             	cmp    $0x0,%eax
  6b48b3:	75 02                	jne    6b48b7 <http_parser_execute+0x53a7>
  6b48b5:	eb 28                	jmp    6b48df <http_parser_execute+0x53cf>
  6b48b7:	48 bf 00 2e 20 00 00 	movabs $0x202e00,%rdi
  6b48be:	00 00 00 
  6b48c1:	48 be f5 2b 20 00 00 	movabs $0x202bf5,%rsi
  6b48c8:	00 00 00 
  6b48cb:	48 b9 37 6e 20 00 00 	movabs $0x206e37,%rcx
  6b48d2:	00 00 00 
  6b48d5:	ba 43 08 00 00       	mov    $0x843,%edx
  6b48da:	e8 b1 70 00 00       	callq  6bb990 <__assert_fail@plt>
  6b48df:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6b48e3:	48 83 78 48 00       	cmpq   $0x0,0x48(%rax)
  6b48e8:	0f 95 c0             	setne  %al
  6b48eb:	34 ff                	xor    $0xff,%al
  6b48ed:	34 ff                	xor    $0xff,%al
  6b48ef:	24 01                	and    $0x1,%al
  6b48f1:	0f b6 c0             	movzbl %al,%eax
  6b48f4:	48 98                	cltq   
  6b48f6:	48 83 f8 00          	cmp    $0x0,%rax
  6b48fa:	0f 84 d9 00 00 00    	je     6b49d9 <http_parser_execute+0x54c9>
  6b4900:	8b 45 ec             	mov    -0x14(%rbp),%eax
  6b4903:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b4907:	8b 11                	mov    (%rcx),%edx
  6b4909:	83 e0 7f             	and    $0x7f,%eax
  6b490c:	c1 e0 0a             	shl    $0xa,%eax
  6b490f:	81 e2 ff 03 fe ff    	and    $0xfffe03ff,%edx
  6b4915:	09 c2                	or     %eax,%edx
  6b4917:	89 11                	mov    %edx,(%rcx)
  6b4919:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6b491d:	48 8b 48 48          	mov    0x48(%rax),%rcx
  6b4921:	48 b8 c0 b8 6b 00 00 	movabs $0x6bb8c0,%rax
  6b4928:	00 00 00 
  6b492b:	48 89 ca             	mov    %rcx,%rdx
  6b492e:	48 29 c2             	sub    %rax,%rdx
  6b4931:	48 89 d0             	mov    %rdx,%rax
  6b4934:	48 c1 e8 03          	shr    $0x3,%rax
  6b4938:	48 c1 e2 3d          	shl    $0x3d,%rdx
  6b493c:	48 09 d0             	or     %rdx,%rax
  6b493f:	48 83 f8 10          	cmp    $0x10,%rax
  6b4943:	76 05                	jbe    6b494a <http_parser_execute+0x543a>
  6b4945:	67 0f b9 40 02       	ud1    0x2(%eax),%eax
  6b494a:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b494e:	ff d1                	callq  *%rcx
  6b4950:	31 c9                	xor    %ecx,%ecx
  6b4952:	39 c1                	cmp    %eax,%ecx
  6b4954:	0f 95 c0             	setne  %al
  6b4957:	34 ff                	xor    $0xff,%al
  6b4959:	34 ff                	xor    $0xff,%al
  6b495b:	24 01                	and    $0x1,%al
  6b495d:	0f b6 c0             	movzbl %al,%eax
  6b4960:	48 98                	cltq   
  6b4962:	48 83 f8 00          	cmp    $0x0,%rax
  6b4966:	74 24                	je     6b498c <http_parser_execute+0x547c>
  6b4968:	eb 00                	jmp    6b496a <http_parser_execute+0x545a>
  6b496a:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b496d:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b4971:	89 41 04             	mov    %eax,0x4(%rcx)
  6b4974:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b4978:	8b 48 14             	mov    0x14(%rax),%ecx
  6b497b:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b4981:	81 c9 00 00 00 0a    	or     $0xa000000,%ecx
  6b4987:	89 48 14             	mov    %ecx,0x14(%rax)
  6b498a:	eb 00                	jmp    6b498c <http_parser_execute+0x547c>
  6b498c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b4990:	8b 00                	mov    (%rax),%eax
  6b4992:	c1 e8 0a             	shr    $0xa,%eax
  6b4995:	83 e0 7f             	and    $0x7f,%eax
  6b4998:	89 45 ec             	mov    %eax,-0x14(%rbp)
  6b499b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b499f:	8b 40 14             	mov    0x14(%rax),%eax
  6b49a2:	c1 e8 18             	shr    $0x18,%eax
  6b49a5:	83 e0 7f             	and    $0x7f,%eax
  6b49a8:	83 f8 00             	cmp    $0x0,%eax
  6b49ab:	0f 95 c0             	setne  %al
  6b49ae:	34 ff                	xor    $0xff,%al
  6b49b0:	34 ff                	xor    $0xff,%al
  6b49b2:	24 01                	and    $0x1,%al
  6b49b4:	0f b6 c0             	movzbl %al,%eax
  6b49b7:	48 98                	cltq   
  6b49b9:	48 83 f8 00          	cmp    $0x0,%rax
  6b49bd:	74 18                	je     6b49d7 <http_parser_execute+0x54c7>
  6b49bf:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b49c3:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  6b49c7:	48 29 c8             	sub    %rcx,%rax
  6b49ca:	48 83 c0 01          	add    $0x1,%rax
  6b49ce:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  6b49d2:	e9 23 08 00 00       	jmpq   6b51fa <http_parser_execute+0x5cea>
  6b49d7:	eb 00                	jmp    6b49d9 <http_parser_execute+0x54c9>
  6b49d9:	eb 00                	jmp    6b49db <http_parser_execute+0x54cb>
  6b49db:	eb 28                	jmp    6b4a05 <http_parser_execute+0x54f5>
  6b49dd:	48 bf 69 66 20 00 00 	movabs $0x206669,%rdi
  6b49e4:	00 00 00 
  6b49e7:	48 be f5 2b 20 00 00 	movabs $0x202bf5,%rsi
  6b49ee:	00 00 00 
  6b49f1:	48 b9 37 6e 20 00 00 	movabs $0x206e37,%rcx
  6b49f8:	00 00 00 
  6b49fb:	ba 47 08 00 00       	mov    $0x847,%edx
  6b4a00:	e8 8b 6f 00 00       	callq  6bb990 <__assert_fail@plt>
  6b4a05:	eb 00                	jmp    6b4a07 <http_parser_execute+0x54f7>
  6b4a07:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b4a0b:	48 83 c0 01          	add    $0x1,%rax
  6b4a0f:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  6b4a13:	e9 ae ad ff ff       	jmpq   6af7c6 <http_parser_execute+0x2b6>
  6b4a18:	48 8b 4d 80          	mov    -0x80(%rbp),%rcx
  6b4a1c:	31 c0                	xor    %eax,%eax
  6b4a1e:	ba 01 00 00 00       	mov    $0x1,%edx
  6b4a23:	48 83 f9 00          	cmp    $0x0,%rcx
  6b4a27:	0f 45 c2             	cmovne %edx,%eax
  6b4a2a:	48 8b 4d a8          	mov    -0x58(%rbp),%rcx
  6b4a2e:	31 d2                	xor    %edx,%edx
  6b4a30:	be 01 00 00 00       	mov    $0x1,%esi
  6b4a35:	48 83 f9 00          	cmp    $0x0,%rcx
  6b4a39:	0f 45 d6             	cmovne %esi,%edx
  6b4a3c:	01 d0                	add    %edx,%eax
  6b4a3e:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  6b4a42:	31 d2                	xor    %edx,%edx
  6b4a44:	be 01 00 00 00       	mov    $0x1,%esi
  6b4a49:	48 83 f9 00          	cmp    $0x0,%rcx
  6b4a4d:	0f 45 d6             	cmovne %esi,%edx
  6b4a50:	01 d0                	add    %edx,%eax
  6b4a52:	48 8b 4d a0          	mov    -0x60(%rbp),%rcx
  6b4a56:	31 d2                	xor    %edx,%edx
  6b4a58:	be 01 00 00 00       	mov    $0x1,%esi
  6b4a5d:	48 83 f9 00          	cmp    $0x0,%rcx
  6b4a61:	0f 45 d6             	cmovne %esi,%edx
  6b4a64:	01 d0                	add    %edx,%eax
  6b4a66:	48 8b 4d 98          	mov    -0x68(%rbp),%rcx
  6b4a6a:	31 d2                	xor    %edx,%edx
  6b4a6c:	be 01 00 00 00       	mov    $0x1,%esi
  6b4a71:	48 83 f9 00          	cmp    $0x0,%rcx
  6b4a75:	0f 45 d6             	cmovne %esi,%edx
  6b4a78:	01 d0                	add    %edx,%eax
  6b4a7a:	83 f8 01             	cmp    $0x1,%eax
  6b4a7d:	7f 02                	jg     6b4a81 <http_parser_execute+0x5571>
  6b4a7f:	eb 28                	jmp    6b4aa9 <http_parser_execute+0x5599>
  6b4a81:	48 bf 1a 41 20 00 00 	movabs $0x20411a,%rdi
  6b4a88:	00 00 00 
  6b4a8b:	48 be f5 2b 20 00 00 	movabs $0x202bf5,%rsi
  6b4a92:	00 00 00 
  6b4a95:	48 b9 37 6e 20 00 00 	movabs $0x206e37,%rcx
  6b4a9c:	00 00 00 
  6b4a9f:	ba 5b 08 00 00       	mov    $0x85b,%edx
  6b4aa4:	e8 e7 6e 00 00       	callq  6bb990 <__assert_fail@plt>
  6b4aa9:	eb 00                	jmp    6b4aab <http_parser_execute+0x559b>
  6b4aab:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b4aaf:	8b 40 14             	mov    0x14(%rax),%eax
  6b4ab2:	c1 e8 18             	shr    $0x18,%eax
  6b4ab5:	83 e0 7f             	and    $0x7f,%eax
  6b4ab8:	83 f8 00             	cmp    $0x0,%eax
  6b4abb:	75 02                	jne    6b4abf <http_parser_execute+0x55af>
  6b4abd:	eb 28                	jmp    6b4ae7 <http_parser_execute+0x55d7>
  6b4abf:	48 bf 00 2e 20 00 00 	movabs $0x202e00,%rdi
  6b4ac6:	00 00 00 
  6b4ac9:	48 be f5 2b 20 00 00 	movabs $0x202bf5,%rsi
  6b4ad0:	00 00 00 
  6b4ad3:	48 b9 37 6e 20 00 00 	movabs $0x206e37,%rcx
  6b4ada:	00 00 00 
  6b4add:	ba 5d 08 00 00       	mov    $0x85d,%edx
  6b4ae2:	e8 a9 6e 00 00       	callq  6bb990 <__assert_fail@plt>
  6b4ae7:	48 83 7d 80 00       	cmpq   $0x0,-0x80(%rbp)
  6b4aec:	0f 84 0d 01 00 00    	je     6b4bff <http_parser_execute+0x56ef>
  6b4af2:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6b4af6:	48 83 78 18 00       	cmpq   $0x0,0x18(%rax)
  6b4afb:	0f 95 c0             	setne  %al
  6b4afe:	34 ff                	xor    $0xff,%al
  6b4b00:	34 ff                	xor    $0xff,%al
  6b4b02:	24 01                	and    $0x1,%al
  6b4b04:	0f b6 c0             	movzbl %al,%eax
  6b4b07:	48 98                	cltq   
  6b4b09:	48 83 f8 00          	cmp    $0x0,%rax
  6b4b0d:	0f 84 e4 00 00 00    	je     6b4bf7 <http_parser_execute+0x56e7>
  6b4b13:	8b 45 ec             	mov    -0x14(%rbp),%eax
  6b4b16:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b4b1a:	8b 11                	mov    (%rcx),%edx
  6b4b1c:	83 e0 7f             	and    $0x7f,%eax
  6b4b1f:	c1 e0 0a             	shl    $0xa,%eax
  6b4b22:	81 e2 ff 03 fe ff    	and    $0xfffe03ff,%edx
  6b4b28:	09 c2                	or     %eax,%edx
  6b4b2a:	89 11                	mov    %edx,(%rcx)
  6b4b2c:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6b4b30:	48 8b 48 18          	mov    0x18(%rax),%rcx
  6b4b34:	48 b8 40 b8 6b 00 00 	movabs $0x6bb840,%rax
  6b4b3b:	00 00 00 
  6b4b3e:	48 89 ca             	mov    %rcx,%rdx
  6b4b41:	48 29 c2             	sub    %rax,%rdx
  6b4b44:	48 89 d0             	mov    %rdx,%rax
  6b4b47:	48 c1 e8 03          	shr    $0x3,%rax
  6b4b4b:	48 c1 e2 3d          	shl    $0x3d,%rdx
  6b4b4f:	48 09 d0             	or     %rdx,%rax
  6b4b52:	48 83 f8 0f          	cmp    $0xf,%rax
  6b4b56:	76 05                	jbe    6b4b5d <http_parser_execute+0x564d>
  6b4b58:	67 0f b9 40 02       	ud1    0x2(%eax),%eax
  6b4b5d:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b4b61:	48 8b 75 80          	mov    -0x80(%rbp),%rsi
  6b4b65:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  6b4b69:	48 8b 45 80          	mov    -0x80(%rbp),%rax
  6b4b6d:	48 29 c2             	sub    %rax,%rdx
  6b4b70:	ff d1                	callq  *%rcx
  6b4b72:	31 c9                	xor    %ecx,%ecx
  6b4b74:	39 c1                	cmp    %eax,%ecx
  6b4b76:	0f 95 c0             	setne  %al
  6b4b79:	34 ff                	xor    $0xff,%al
  6b4b7b:	34 ff                	xor    $0xff,%al
  6b4b7d:	24 01                	and    $0x1,%al
  6b4b7f:	0f b6 c0             	movzbl %al,%eax
  6b4b82:	48 98                	cltq   
  6b4b84:	48 83 f8 00          	cmp    $0x0,%rax
  6b4b88:	74 24                	je     6b4bae <http_parser_execute+0x569e>
  6b4b8a:	eb 00                	jmp    6b4b8c <http_parser_execute+0x567c>
  6b4b8c:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b4b8f:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b4b93:	89 41 04             	mov    %eax,0x4(%rcx)
  6b4b96:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b4b9a:	8b 48 14             	mov    0x14(%rax),%ecx
  6b4b9d:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b4ba3:	81 c9 00 00 00 03    	or     $0x3000000,%ecx
  6b4ba9:	89 48 14             	mov    %ecx,0x14(%rax)
  6b4bac:	eb 00                	jmp    6b4bae <http_parser_execute+0x569e>
  6b4bae:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b4bb2:	8b 00                	mov    (%rax),%eax
  6b4bb4:	c1 e8 0a             	shr    $0xa,%eax
  6b4bb7:	83 e0 7f             	and    $0x7f,%eax
  6b4bba:	89 45 ec             	mov    %eax,-0x14(%rbp)
  6b4bbd:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b4bc1:	8b 40 14             	mov    0x14(%rax),%eax
  6b4bc4:	c1 e8 18             	shr    $0x18,%eax
  6b4bc7:	83 e0 7f             	and    $0x7f,%eax
  6b4bca:	83 f8 00             	cmp    $0x0,%eax
  6b4bcd:	0f 95 c0             	setne  %al
  6b4bd0:	34 ff                	xor    $0xff,%al
  6b4bd2:	34 ff                	xor    $0xff,%al
  6b4bd4:	24 01                	and    $0x1,%al
  6b4bd6:	0f b6 c0             	movzbl %al,%eax
  6b4bd9:	48 98                	cltq   
  6b4bdb:	48 83 f8 00          	cmp    $0x0,%rax
  6b4bdf:	74 14                	je     6b4bf5 <http_parser_execute+0x56e5>
  6b4be1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b4be5:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  6b4be9:	48 29 c8             	sub    %rcx,%rax
  6b4bec:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  6b4bf0:	e9 05 06 00 00       	jmpq   6b51fa <http_parser_execute+0x5cea>
  6b4bf5:	eb 00                	jmp    6b4bf7 <http_parser_execute+0x56e7>
  6b4bf7:	48 c7 45 80 00 00 00 	movq   $0x0,-0x80(%rbp)
  6b4bfe:	00 
  6b4bff:	eb 00                	jmp    6b4c01 <http_parser_execute+0x56f1>
  6b4c01:	eb 00                	jmp    6b4c03 <http_parser_execute+0x56f3>
  6b4c03:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b4c07:	8b 40 14             	mov    0x14(%rax),%eax
  6b4c0a:	c1 e8 18             	shr    $0x18,%eax
  6b4c0d:	83 e0 7f             	and    $0x7f,%eax
  6b4c10:	83 f8 00             	cmp    $0x0,%eax
  6b4c13:	75 02                	jne    6b4c17 <http_parser_execute+0x5707>
  6b4c15:	eb 28                	jmp    6b4c3f <http_parser_execute+0x572f>
  6b4c17:	48 bf 00 2e 20 00 00 	movabs $0x202e00,%rdi
  6b4c1e:	00 00 00 
  6b4c21:	48 be f5 2b 20 00 00 	movabs $0x202bf5,%rsi
  6b4c28:	00 00 00 
  6b4c2b:	48 b9 37 6e 20 00 00 	movabs $0x206e37,%rcx
  6b4c32:	00 00 00 
  6b4c35:	ba 5e 08 00 00       	mov    $0x85e,%edx
  6b4c3a:	e8 51 6d 00 00       	callq  6bb990 <__assert_fail@plt>
  6b4c3f:	48 83 7d a8 00       	cmpq   $0x0,-0x58(%rbp)
  6b4c44:	0f 84 0d 01 00 00    	je     6b4d57 <http_parser_execute+0x5847>
  6b4c4a:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6b4c4e:	48 83 78 20 00       	cmpq   $0x0,0x20(%rax)
  6b4c53:	0f 95 c0             	setne  %al
  6b4c56:	34 ff                	xor    $0xff,%al
  6b4c58:	34 ff                	xor    $0xff,%al
  6b4c5a:	24 01                	and    $0x1,%al
  6b4c5c:	0f b6 c0             	movzbl %al,%eax
  6b4c5f:	48 98                	cltq   
  6b4c61:	48 83 f8 00          	cmp    $0x0,%rax
  6b4c65:	0f 84 e4 00 00 00    	je     6b4d4f <http_parser_execute+0x583f>
  6b4c6b:	8b 45 ec             	mov    -0x14(%rbp),%eax
  6b4c6e:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b4c72:	8b 11                	mov    (%rcx),%edx
  6b4c74:	83 e0 7f             	and    $0x7f,%eax
  6b4c77:	c1 e0 0a             	shl    $0xa,%eax
  6b4c7a:	81 e2 ff 03 fe ff    	and    $0xfffe03ff,%edx
  6b4c80:	09 c2                	or     %eax,%edx
  6b4c82:	89 11                	mov    %edx,(%rcx)
  6b4c84:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6b4c88:	48 8b 48 20          	mov    0x20(%rax),%rcx
  6b4c8c:	48 b8 40 b8 6b 00 00 	movabs $0x6bb840,%rax
  6b4c93:	00 00 00 
  6b4c96:	48 89 ca             	mov    %rcx,%rdx
  6b4c99:	48 29 c2             	sub    %rax,%rdx
  6b4c9c:	48 89 d0             	mov    %rdx,%rax
  6b4c9f:	48 c1 e8 03          	shr    $0x3,%rax
  6b4ca3:	48 c1 e2 3d          	shl    $0x3d,%rdx
  6b4ca7:	48 09 d0             	or     %rdx,%rax
  6b4caa:	48 83 f8 0f          	cmp    $0xf,%rax
  6b4cae:	76 05                	jbe    6b4cb5 <http_parser_execute+0x57a5>
  6b4cb0:	67 0f b9 40 02       	ud1    0x2(%eax),%eax
  6b4cb5:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b4cb9:	48 8b 75 a8          	mov    -0x58(%rbp),%rsi
  6b4cbd:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  6b4cc1:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  6b4cc5:	48 29 c2             	sub    %rax,%rdx
  6b4cc8:	ff d1                	callq  *%rcx
  6b4cca:	31 c9                	xor    %ecx,%ecx
  6b4ccc:	39 c1                	cmp    %eax,%ecx
  6b4cce:	0f 95 c0             	setne  %al
  6b4cd1:	34 ff                	xor    $0xff,%al
  6b4cd3:	34 ff                	xor    $0xff,%al
  6b4cd5:	24 01                	and    $0x1,%al
  6b4cd7:	0f b6 c0             	movzbl %al,%eax
  6b4cda:	48 98                	cltq   
  6b4cdc:	48 83 f8 00          	cmp    $0x0,%rax
  6b4ce0:	74 24                	je     6b4d06 <http_parser_execute+0x57f6>
  6b4ce2:	eb 00                	jmp    6b4ce4 <http_parser_execute+0x57d4>
  6b4ce4:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b4ce7:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b4ceb:	89 41 04             	mov    %eax,0x4(%rcx)
  6b4cee:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b4cf2:	8b 48 14             	mov    0x14(%rax),%ecx
  6b4cf5:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b4cfb:	81 c9 00 00 00 04    	or     $0x4000000,%ecx
  6b4d01:	89 48 14             	mov    %ecx,0x14(%rax)
  6b4d04:	eb 00                	jmp    6b4d06 <http_parser_execute+0x57f6>
  6b4d06:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b4d0a:	8b 00                	mov    (%rax),%eax
  6b4d0c:	c1 e8 0a             	shr    $0xa,%eax
  6b4d0f:	83 e0 7f             	and    $0x7f,%eax
  6b4d12:	89 45 ec             	mov    %eax,-0x14(%rbp)
  6b4d15:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b4d19:	8b 40 14             	mov    0x14(%rax),%eax
  6b4d1c:	c1 e8 18             	shr    $0x18,%eax
  6b4d1f:	83 e0 7f             	and    $0x7f,%eax
  6b4d22:	83 f8 00             	cmp    $0x0,%eax
  6b4d25:	0f 95 c0             	setne  %al
  6b4d28:	34 ff                	xor    $0xff,%al
  6b4d2a:	34 ff                	xor    $0xff,%al
  6b4d2c:	24 01                	and    $0x1,%al
  6b4d2e:	0f b6 c0             	movzbl %al,%eax
  6b4d31:	48 98                	cltq   
  6b4d33:	48 83 f8 00          	cmp    $0x0,%rax
  6b4d37:	74 14                	je     6b4d4d <http_parser_execute+0x583d>
  6b4d39:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b4d3d:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  6b4d41:	48 29 c8             	sub    %rcx,%rax
  6b4d44:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  6b4d48:	e9 ad 04 00 00       	jmpq   6b51fa <http_parser_execute+0x5cea>
  6b4d4d:	eb 00                	jmp    6b4d4f <http_parser_execute+0x583f>
  6b4d4f:	48 c7 45 a8 00 00 00 	movq   $0x0,-0x58(%rbp)
  6b4d56:	00 
  6b4d57:	eb 00                	jmp    6b4d59 <http_parser_execute+0x5849>
  6b4d59:	eb 00                	jmp    6b4d5b <http_parser_execute+0x584b>
  6b4d5b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b4d5f:	8b 40 14             	mov    0x14(%rax),%eax
  6b4d62:	c1 e8 18             	shr    $0x18,%eax
  6b4d65:	83 e0 7f             	and    $0x7f,%eax
  6b4d68:	83 f8 00             	cmp    $0x0,%eax
  6b4d6b:	75 02                	jne    6b4d6f <http_parser_execute+0x585f>
  6b4d6d:	eb 28                	jmp    6b4d97 <http_parser_execute+0x5887>
  6b4d6f:	48 bf 00 2e 20 00 00 	movabs $0x202e00,%rdi
  6b4d76:	00 00 00 
  6b4d79:	48 be f5 2b 20 00 00 	movabs $0x202bf5,%rsi
  6b4d80:	00 00 00 
  6b4d83:	48 b9 37 6e 20 00 00 	movabs $0x206e37,%rcx
  6b4d8a:	00 00 00 
  6b4d8d:	ba 5f 08 00 00       	mov    $0x85f,%edx
  6b4d92:	e8 f9 6b 00 00       	callq  6bb990 <__assert_fail@plt>
  6b4d97:	48 83 7d 90 00       	cmpq   $0x0,-0x70(%rbp)
  6b4d9c:	0f 84 0d 01 00 00    	je     6b4eaf <http_parser_execute+0x599f>
  6b4da2:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6b4da6:	48 83 78 08 00       	cmpq   $0x0,0x8(%rax)
  6b4dab:	0f 95 c0             	setne  %al
  6b4dae:	34 ff                	xor    $0xff,%al
  6b4db0:	34 ff                	xor    $0xff,%al
  6b4db2:	24 01                	and    $0x1,%al
  6b4db4:	0f b6 c0             	movzbl %al,%eax
  6b4db7:	48 98                	cltq   
  6b4db9:	48 83 f8 00          	cmp    $0x0,%rax
  6b4dbd:	0f 84 e4 00 00 00    	je     6b4ea7 <http_parser_execute+0x5997>
  6b4dc3:	8b 45 ec             	mov    -0x14(%rbp),%eax
  6b4dc6:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b4dca:	8b 11                	mov    (%rcx),%edx
  6b4dcc:	83 e0 7f             	and    $0x7f,%eax
  6b4dcf:	c1 e0 0a             	shl    $0xa,%eax
  6b4dd2:	81 e2 ff 03 fe ff    	and    $0xfffe03ff,%edx
  6b4dd8:	09 c2                	or     %eax,%edx
  6b4dda:	89 11                	mov    %edx,(%rcx)
  6b4ddc:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6b4de0:	48 8b 48 08          	mov    0x8(%rax),%rcx
  6b4de4:	48 b8 40 b8 6b 00 00 	movabs $0x6bb840,%rax
  6b4deb:	00 00 00 
  6b4dee:	48 89 ca             	mov    %rcx,%rdx
  6b4df1:	48 29 c2             	sub    %rax,%rdx
  6b4df4:	48 89 d0             	mov    %rdx,%rax
  6b4df7:	48 c1 e8 03          	shr    $0x3,%rax
  6b4dfb:	48 c1 e2 3d          	shl    $0x3d,%rdx
  6b4dff:	48 09 d0             	or     %rdx,%rax
  6b4e02:	48 83 f8 0f          	cmp    $0xf,%rax
  6b4e06:	76 05                	jbe    6b4e0d <http_parser_execute+0x58fd>
  6b4e08:	67 0f b9 40 02       	ud1    0x2(%eax),%eax
  6b4e0d:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b4e11:	48 8b 75 90          	mov    -0x70(%rbp),%rsi
  6b4e15:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  6b4e19:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  6b4e1d:	48 29 c2             	sub    %rax,%rdx
  6b4e20:	ff d1                	callq  *%rcx
  6b4e22:	31 c9                	xor    %ecx,%ecx
  6b4e24:	39 c1                	cmp    %eax,%ecx
  6b4e26:	0f 95 c0             	setne  %al
  6b4e29:	34 ff                	xor    $0xff,%al
  6b4e2b:	34 ff                	xor    $0xff,%al
  6b4e2d:	24 01                	and    $0x1,%al
  6b4e2f:	0f b6 c0             	movzbl %al,%eax
  6b4e32:	48 98                	cltq   
  6b4e34:	48 83 f8 00          	cmp    $0x0,%rax
  6b4e38:	74 24                	je     6b4e5e <http_parser_execute+0x594e>
  6b4e3a:	eb 00                	jmp    6b4e3c <http_parser_execute+0x592c>
  6b4e3c:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b4e3f:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b4e43:	89 41 04             	mov    %eax,0x4(%rcx)
  6b4e46:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b4e4a:	8b 48 14             	mov    0x14(%rax),%ecx
  6b4e4d:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b4e53:	81 c9 00 00 00 02    	or     $0x2000000,%ecx
  6b4e59:	89 48 14             	mov    %ecx,0x14(%rax)
  6b4e5c:	eb 00                	jmp    6b4e5e <http_parser_execute+0x594e>
  6b4e5e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b4e62:	8b 00                	mov    (%rax),%eax
  6b4e64:	c1 e8 0a             	shr    $0xa,%eax
  6b4e67:	83 e0 7f             	and    $0x7f,%eax
  6b4e6a:	89 45 ec             	mov    %eax,-0x14(%rbp)
  6b4e6d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b4e71:	8b 40 14             	mov    0x14(%rax),%eax
  6b4e74:	c1 e8 18             	shr    $0x18,%eax
  6b4e77:	83 e0 7f             	and    $0x7f,%eax
  6b4e7a:	83 f8 00             	cmp    $0x0,%eax
  6b4e7d:	0f 95 c0             	setne  %al
  6b4e80:	34 ff                	xor    $0xff,%al
  6b4e82:	34 ff                	xor    $0xff,%al
  6b4e84:	24 01                	and    $0x1,%al
  6b4e86:	0f b6 c0             	movzbl %al,%eax
  6b4e89:	48 98                	cltq   
  6b4e8b:	48 83 f8 00          	cmp    $0x0,%rax
  6b4e8f:	74 14                	je     6b4ea5 <http_parser_execute+0x5995>
  6b4e91:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b4e95:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  6b4e99:	48 29 c8             	sub    %rcx,%rax
  6b4e9c:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  6b4ea0:	e9 55 03 00 00       	jmpq   6b51fa <http_parser_execute+0x5cea>
  6b4ea5:	eb 00                	jmp    6b4ea7 <http_parser_execute+0x5997>
  6b4ea7:	48 c7 45 90 00 00 00 	movq   $0x0,-0x70(%rbp)
  6b4eae:	00 
  6b4eaf:	eb 00                	jmp    6b4eb1 <http_parser_execute+0x59a1>
  6b4eb1:	eb 00                	jmp    6b4eb3 <http_parser_execute+0x59a3>
  6b4eb3:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b4eb7:	8b 40 14             	mov    0x14(%rax),%eax
  6b4eba:	c1 e8 18             	shr    $0x18,%eax
  6b4ebd:	83 e0 7f             	and    $0x7f,%eax
  6b4ec0:	83 f8 00             	cmp    $0x0,%eax
  6b4ec3:	75 02                	jne    6b4ec7 <http_parser_execute+0x59b7>
  6b4ec5:	eb 28                	jmp    6b4eef <http_parser_execute+0x59df>
  6b4ec7:	48 bf 00 2e 20 00 00 	movabs $0x202e00,%rdi
  6b4ece:	00 00 00 
  6b4ed1:	48 be f5 2b 20 00 00 	movabs $0x202bf5,%rsi
  6b4ed8:	00 00 00 
  6b4edb:	48 b9 37 6e 20 00 00 	movabs $0x206e37,%rcx
  6b4ee2:	00 00 00 
  6b4ee5:	ba 60 08 00 00       	mov    $0x860,%edx
  6b4eea:	e8 a1 6a 00 00       	callq  6bb990 <__assert_fail@plt>
  6b4eef:	48 83 7d a0 00       	cmpq   $0x0,-0x60(%rbp)
  6b4ef4:	0f 84 0d 01 00 00    	je     6b5007 <http_parser_execute+0x5af7>
  6b4efa:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6b4efe:	48 83 78 30 00       	cmpq   $0x0,0x30(%rax)
  6b4f03:	0f 95 c0             	setne  %al
  6b4f06:	34 ff                	xor    $0xff,%al
  6b4f08:	34 ff                	xor    $0xff,%al
  6b4f0a:	24 01                	and    $0x1,%al
  6b4f0c:	0f b6 c0             	movzbl %al,%eax
  6b4f0f:	48 98                	cltq   
  6b4f11:	48 83 f8 00          	cmp    $0x0,%rax
  6b4f15:	0f 84 e4 00 00 00    	je     6b4fff <http_parser_execute+0x5aef>
  6b4f1b:	8b 45 ec             	mov    -0x14(%rbp),%eax
  6b4f1e:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b4f22:	8b 11                	mov    (%rcx),%edx
  6b4f24:	83 e0 7f             	and    $0x7f,%eax
  6b4f27:	c1 e0 0a             	shl    $0xa,%eax
  6b4f2a:	81 e2 ff 03 fe ff    	and    $0xfffe03ff,%edx
  6b4f30:	09 c2                	or     %eax,%edx
  6b4f32:	89 11                	mov    %edx,(%rcx)
  6b4f34:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6b4f38:	48 8b 48 30          	mov    0x30(%rax),%rcx
  6b4f3c:	48 b8 40 b8 6b 00 00 	movabs $0x6bb840,%rax
  6b4f43:	00 00 00 
  6b4f46:	48 89 ca             	mov    %rcx,%rdx
  6b4f49:	48 29 c2             	sub    %rax,%rdx
  6b4f4c:	48 89 d0             	mov    %rdx,%rax
  6b4f4f:	48 c1 e8 03          	shr    $0x3,%rax
  6b4f53:	48 c1 e2 3d          	shl    $0x3d,%rdx
  6b4f57:	48 09 d0             	or     %rdx,%rax
  6b4f5a:	48 83 f8 0f          	cmp    $0xf,%rax
  6b4f5e:	76 05                	jbe    6b4f65 <http_parser_execute+0x5a55>
  6b4f60:	67 0f b9 40 02       	ud1    0x2(%eax),%eax
  6b4f65:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b4f69:	48 8b 75 a0          	mov    -0x60(%rbp),%rsi
  6b4f6d:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  6b4f71:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
  6b4f75:	48 29 c2             	sub    %rax,%rdx
  6b4f78:	ff d1                	callq  *%rcx
  6b4f7a:	31 c9                	xor    %ecx,%ecx
  6b4f7c:	39 c1                	cmp    %eax,%ecx
  6b4f7e:	0f 95 c0             	setne  %al
  6b4f81:	34 ff                	xor    $0xff,%al
  6b4f83:	34 ff                	xor    $0xff,%al
  6b4f85:	24 01                	and    $0x1,%al
  6b4f87:	0f b6 c0             	movzbl %al,%eax
  6b4f8a:	48 98                	cltq   
  6b4f8c:	48 83 f8 00          	cmp    $0x0,%rax
  6b4f90:	74 24                	je     6b4fb6 <http_parser_execute+0x5aa6>
  6b4f92:	eb 00                	jmp    6b4f94 <http_parser_execute+0x5a84>
  6b4f94:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b4f97:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b4f9b:	89 41 04             	mov    %eax,0x4(%rcx)
  6b4f9e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b4fa2:	8b 48 14             	mov    0x14(%rax),%ecx
  6b4fa5:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b4fab:	81 c9 00 00 00 06    	or     $0x6000000,%ecx
  6b4fb1:	89 48 14             	mov    %ecx,0x14(%rax)
  6b4fb4:	eb 00                	jmp    6b4fb6 <http_parser_execute+0x5aa6>
  6b4fb6:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b4fba:	8b 00                	mov    (%rax),%eax
  6b4fbc:	c1 e8 0a             	shr    $0xa,%eax
  6b4fbf:	83 e0 7f             	and    $0x7f,%eax
  6b4fc2:	89 45 ec             	mov    %eax,-0x14(%rbp)
  6b4fc5:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b4fc9:	8b 40 14             	mov    0x14(%rax),%eax
  6b4fcc:	c1 e8 18             	shr    $0x18,%eax
  6b4fcf:	83 e0 7f             	and    $0x7f,%eax
  6b4fd2:	83 f8 00             	cmp    $0x0,%eax
  6b4fd5:	0f 95 c0             	setne  %al
  6b4fd8:	34 ff                	xor    $0xff,%al
  6b4fda:	34 ff                	xor    $0xff,%al
  6b4fdc:	24 01                	and    $0x1,%al
  6b4fde:	0f b6 c0             	movzbl %al,%eax
  6b4fe1:	48 98                	cltq   
  6b4fe3:	48 83 f8 00          	cmp    $0x0,%rax
  6b4fe7:	74 14                	je     6b4ffd <http_parser_execute+0x5aed>
  6b4fe9:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b4fed:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  6b4ff1:	48 29 c8             	sub    %rcx,%rax
  6b4ff4:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  6b4ff8:	e9 fd 01 00 00       	jmpq   6b51fa <http_parser_execute+0x5cea>
  6b4ffd:	eb 00                	jmp    6b4fff <http_parser_execute+0x5aef>
  6b4fff:	48 c7 45 a0 00 00 00 	movq   $0x0,-0x60(%rbp)
  6b5006:	00 
  6b5007:	eb 00                	jmp    6b5009 <http_parser_execute+0x5af9>
  6b5009:	eb 00                	jmp    6b500b <http_parser_execute+0x5afb>
  6b500b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b500f:	8b 40 14             	mov    0x14(%rax),%eax
  6b5012:	c1 e8 18             	shr    $0x18,%eax
  6b5015:	83 e0 7f             	and    $0x7f,%eax
  6b5018:	83 f8 00             	cmp    $0x0,%eax
  6b501b:	75 02                	jne    6b501f <http_parser_execute+0x5b0f>
  6b501d:	eb 28                	jmp    6b5047 <http_parser_execute+0x5b37>
  6b501f:	48 bf 00 2e 20 00 00 	movabs $0x202e00,%rdi
  6b5026:	00 00 00 
  6b5029:	48 be f5 2b 20 00 00 	movabs $0x202bf5,%rsi
  6b5030:	00 00 00 
  6b5033:	48 b9 37 6e 20 00 00 	movabs $0x206e37,%rcx
  6b503a:	00 00 00 
  6b503d:	ba 61 08 00 00       	mov    $0x861,%edx
  6b5042:	e8 49 69 00 00       	callq  6bb990 <__assert_fail@plt>
  6b5047:	48 83 7d 98 00       	cmpq   $0x0,-0x68(%rbp)
  6b504c:	0f 84 0d 01 00 00    	je     6b515f <http_parser_execute+0x5c4f>
  6b5052:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6b5056:	48 83 78 10 00       	cmpq   $0x0,0x10(%rax)
  6b505b:	0f 95 c0             	setne  %al
  6b505e:	34 ff                	xor    $0xff,%al
  6b5060:	34 ff                	xor    $0xff,%al
  6b5062:	24 01                	and    $0x1,%al
  6b5064:	0f b6 c0             	movzbl %al,%eax
  6b5067:	48 98                	cltq   
  6b5069:	48 83 f8 00          	cmp    $0x0,%rax
  6b506d:	0f 84 e4 00 00 00    	je     6b5157 <http_parser_execute+0x5c47>
  6b5073:	8b 45 ec             	mov    -0x14(%rbp),%eax
  6b5076:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b507a:	8b 11                	mov    (%rcx),%edx
  6b507c:	83 e0 7f             	and    $0x7f,%eax
  6b507f:	c1 e0 0a             	shl    $0xa,%eax
  6b5082:	81 e2 ff 03 fe ff    	and    $0xfffe03ff,%edx
  6b5088:	09 c2                	or     %eax,%edx
  6b508a:	89 11                	mov    %edx,(%rcx)
  6b508c:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6b5090:	48 8b 48 10          	mov    0x10(%rax),%rcx
  6b5094:	48 b8 40 b8 6b 00 00 	movabs $0x6bb840,%rax
  6b509b:	00 00 00 
  6b509e:	48 89 ca             	mov    %rcx,%rdx
  6b50a1:	48 29 c2             	sub    %rax,%rdx
  6b50a4:	48 89 d0             	mov    %rdx,%rax
  6b50a7:	48 c1 e8 03          	shr    $0x3,%rax
  6b50ab:	48 c1 e2 3d          	shl    $0x3d,%rdx
  6b50af:	48 09 d0             	or     %rdx,%rax
  6b50b2:	48 83 f8 0f          	cmp    $0xf,%rax
  6b50b6:	76 05                	jbe    6b50bd <http_parser_execute+0x5bad>
  6b50b8:	67 0f b9 40 02       	ud1    0x2(%eax),%eax
  6b50bd:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b50c1:	48 8b 75 98          	mov    -0x68(%rbp),%rsi
  6b50c5:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  6b50c9:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  6b50cd:	48 29 c2             	sub    %rax,%rdx
  6b50d0:	ff d1                	callq  *%rcx
  6b50d2:	31 c9                	xor    %ecx,%ecx
  6b50d4:	39 c1                	cmp    %eax,%ecx
  6b50d6:	0f 95 c0             	setne  %al
  6b50d9:	34 ff                	xor    $0xff,%al
  6b50db:	34 ff                	xor    $0xff,%al
  6b50dd:	24 01                	and    $0x1,%al
  6b50df:	0f b6 c0             	movzbl %al,%eax
  6b50e2:	48 98                	cltq   
  6b50e4:	48 83 f8 00          	cmp    $0x0,%rax
  6b50e8:	74 24                	je     6b510e <http_parser_execute+0x5bfe>
  6b50ea:	eb 00                	jmp    6b50ec <http_parser_execute+0x5bdc>
  6b50ec:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b50ef:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b50f3:	89 41 04             	mov    %eax,0x4(%rcx)
  6b50f6:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b50fa:	8b 48 14             	mov    0x14(%rax),%ecx
  6b50fd:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b5103:	81 c9 00 00 00 08    	or     $0x8000000,%ecx
  6b5109:	89 48 14             	mov    %ecx,0x14(%rax)
  6b510c:	eb 00                	jmp    6b510e <http_parser_execute+0x5bfe>
  6b510e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b5112:	8b 00                	mov    (%rax),%eax
  6b5114:	c1 e8 0a             	shr    $0xa,%eax
  6b5117:	83 e0 7f             	and    $0x7f,%eax
  6b511a:	89 45 ec             	mov    %eax,-0x14(%rbp)
  6b511d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b5121:	8b 40 14             	mov    0x14(%rax),%eax
  6b5124:	c1 e8 18             	shr    $0x18,%eax
  6b5127:	83 e0 7f             	and    $0x7f,%eax
  6b512a:	83 f8 00             	cmp    $0x0,%eax
  6b512d:	0f 95 c0             	setne  %al
  6b5130:	34 ff                	xor    $0xff,%al
  6b5132:	34 ff                	xor    $0xff,%al
  6b5134:	24 01                	and    $0x1,%al
  6b5136:	0f b6 c0             	movzbl %al,%eax
  6b5139:	48 98                	cltq   
  6b513b:	48 83 f8 00          	cmp    $0x0,%rax
  6b513f:	74 14                	je     6b5155 <http_parser_execute+0x5c45>
  6b5141:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b5145:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  6b5149:	48 29 c8             	sub    %rcx,%rax
  6b514c:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  6b5150:	e9 a5 00 00 00       	jmpq   6b51fa <http_parser_execute+0x5cea>
  6b5155:	eb 00                	jmp    6b5157 <http_parser_execute+0x5c47>
  6b5157:	48 c7 45 98 00 00 00 	movq   $0x0,-0x68(%rbp)
  6b515e:	00 
  6b515f:	eb 00                	jmp    6b5161 <http_parser_execute+0x5c51>
  6b5161:	eb 00                	jmp    6b5163 <http_parser_execute+0x5c53>
  6b5163:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b5166:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b516a:	89 41 04             	mov    %eax,0x4(%rcx)
  6b516d:	8b 45 ec             	mov    -0x14(%rbp),%eax
  6b5170:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b5174:	8b 11                	mov    (%rcx),%edx
  6b5176:	83 e0 7f             	and    $0x7f,%eax
  6b5179:	c1 e0 0a             	shl    $0xa,%eax
  6b517c:	81 e2 ff 03 fe ff    	and    $0xfffe03ff,%edx
  6b5182:	09 c2                	or     %eax,%edx
  6b5184:	89 11                	mov    %edx,(%rcx)
  6b5186:	48 8b 45 88          	mov    -0x78(%rbp),%rax
  6b518a:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  6b518e:	eb 6a                	jmp    6b51fa <http_parser_execute+0x5cea>
  6b5190:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b5194:	8b 40 14             	mov    0x14(%rax),%eax
  6b5197:	c1 e8 18             	shr    $0x18,%eax
  6b519a:	83 e0 7f             	and    $0x7f,%eax
  6b519d:	83 f8 00             	cmp    $0x0,%eax
  6b51a0:	75 24                	jne    6b51c6 <http_parser_execute+0x5cb6>
  6b51a2:	eb 00                	jmp    6b51a4 <http_parser_execute+0x5c94>
  6b51a4:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b51a7:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b51ab:	89 41 04             	mov    %eax,0x4(%rcx)
  6b51ae:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b51b2:	8b 48 14             	mov    0x14(%rax),%ecx
  6b51b5:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b51bb:	81 c9 00 00 00 20    	or     $0x20000000,%ecx
  6b51c1:	89 48 14             	mov    %ecx,0x14(%rax)
  6b51c4:	eb 00                	jmp    6b51c6 <http_parser_execute+0x5cb6>
  6b51c6:	eb 00                	jmp    6b51c8 <http_parser_execute+0x5cb8>
  6b51c8:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b51cb:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b51cf:	89 41 04             	mov    %eax,0x4(%rcx)
  6b51d2:	8b 45 ec             	mov    -0x14(%rbp),%eax
  6b51d5:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b51d9:	8b 11                	mov    (%rcx),%edx
  6b51db:	83 e0 7f             	and    $0x7f,%eax
  6b51de:	c1 e0 0a             	shl    $0xa,%eax
  6b51e1:	81 e2 ff 03 fe ff    	and    $0xfffe03ff,%edx
  6b51e7:	09 c2                	or     %eax,%edx
  6b51e9:	89 11                	mov    %edx,(%rcx)
  6b51eb:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b51ef:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  6b51f3:	48 29 c8             	sub    %rcx,%rax
  6b51f6:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  6b51fa:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  6b51fe:	48 81 c4 f0 00 00 00 	add    $0xf0,%rsp
  6b5205:	5d                   	pop    %rbp
  6b5206:	c3                   	retq   
  6b5207:	cc                   	int3   
  6b5208:	cc                   	int3   
  6b5209:	cc                   	int3   
  6b520a:	cc                   	int3   
  6b520b:	cc                   	int3   
  6b520c:	cc                   	int3   
  6b520d:	cc                   	int3   
  6b520e:	cc                   	int3   
  6b520f:	cc                   	int3   

00000000006b5210 <parse_url_char>:
  6b5210:	55                   	push   %rbp
  6b5211:	48 89 e5             	mov    %rsp,%rbp
  6b5214:	89 7d f4             	mov    %edi,-0xc(%rbp)
  6b5217:	40 88 75 ff          	mov    %sil,-0x1(%rbp)
  6b521b:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b521f:	83 f8 20             	cmp    $0x20,%eax
  6b5222:	74 12                	je     6b5236 <parse_url_char+0x26>
  6b5224:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b5228:	83 f8 0d             	cmp    $0xd,%eax
  6b522b:	74 09                	je     6b5236 <parse_url_char+0x26>
  6b522d:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b5231:	83 f8 0a             	cmp    $0xa,%eax
  6b5234:	75 0c                	jne    6b5242 <parse_url_char+0x32>
  6b5236:	c7 45 f8 01 00 00 00 	movl   $0x1,-0x8(%rbp)
  6b523d:	e9 c7 03 00 00       	jmpq   6b5609 <parse_url_char+0x3f9>
  6b5242:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b5246:	83 f8 09             	cmp    $0x9,%eax
  6b5249:	74 09                	je     6b5254 <parse_url_char+0x44>
  6b524b:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b524f:	83 f8 0c             	cmp    $0xc,%eax
  6b5252:	75 0c                	jne    6b5260 <parse_url_char+0x50>
  6b5254:	c7 45 f8 01 00 00 00 	movl   $0x1,-0x8(%rbp)
  6b525b:	e9 a9 03 00 00       	jmpq   6b5609 <parse_url_char+0x3f9>
  6b5260:	8b 45 f4             	mov    -0xc(%rbp),%eax
  6b5263:	83 c0 ec             	add    $0xffffffec,%eax
  6b5266:	89 c1                	mov    %eax,%ecx
  6b5268:	83 e9 0b             	sub    $0xb,%ecx
  6b526b:	0f 87 8f 03 00 00    	ja     6b5600 <parse_url_char+0x3f0>
  6b5271:	48 8b 04 c5 b0 0e 20 	mov    0x200eb0(,%rax,8),%rax
  6b5278:	00 
  6b5279:	ff e0                	jmpq   *%rax
  6b527b:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b527f:	83 f8 2f             	cmp    $0x2f,%eax
  6b5282:	74 09                	je     6b528d <parse_url_char+0x7d>
  6b5284:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b5288:	83 f8 2a             	cmp    $0x2a,%eax
  6b528b:	75 0c                	jne    6b5299 <parse_url_char+0x89>
  6b528d:	c7 45 f8 1b 00 00 00 	movl   $0x1b,-0x8(%rbp)
  6b5294:	e9 70 03 00 00       	jmpq   6b5609 <parse_url_char+0x3f9>
  6b5299:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b529d:	83 c8 20             	or     $0x20,%eax
  6b52a0:	0f b6 c0             	movzbl %al,%eax
  6b52a3:	83 f8 61             	cmp    $0x61,%eax
  6b52a6:	7c 1b                	jl     6b52c3 <parse_url_char+0xb3>
  6b52a8:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b52ac:	83 c8 20             	or     $0x20,%eax
  6b52af:	0f b6 c0             	movzbl %al,%eax
  6b52b2:	83 f8 7a             	cmp    $0x7a,%eax
  6b52b5:	7f 0c                	jg     6b52c3 <parse_url_char+0xb3>
  6b52b7:	c7 45 f8 15 00 00 00 	movl   $0x15,-0x8(%rbp)
  6b52be:	e9 46 03 00 00       	jmpq   6b5609 <parse_url_char+0x3f9>
  6b52c3:	e9 3a 03 00 00       	jmpq   6b5602 <parse_url_char+0x3f2>
  6b52c8:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b52cc:	83 c8 20             	or     $0x20,%eax
  6b52cf:	0f b6 c0             	movzbl %al,%eax
  6b52d2:	83 f8 61             	cmp    $0x61,%eax
  6b52d5:	7c 1a                	jl     6b52f1 <parse_url_char+0xe1>
  6b52d7:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b52db:	83 c8 20             	or     $0x20,%eax
  6b52de:	0f b6 c0             	movzbl %al,%eax
  6b52e1:	83 f8 7a             	cmp    $0x7a,%eax
  6b52e4:	7f 0b                	jg     6b52f1 <parse_url_char+0xe1>
  6b52e6:	8b 45 f4             	mov    -0xc(%rbp),%eax
  6b52e9:	89 45 f8             	mov    %eax,-0x8(%rbp)
  6b52ec:	e9 18 03 00 00       	jmpq   6b5609 <parse_url_char+0x3f9>
  6b52f1:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b52f5:	83 f8 3a             	cmp    $0x3a,%eax
  6b52f8:	75 0c                	jne    6b5306 <parse_url_char+0xf6>
  6b52fa:	c7 45 f8 16 00 00 00 	movl   $0x16,-0x8(%rbp)
  6b5301:	e9 03 03 00 00       	jmpq   6b5609 <parse_url_char+0x3f9>
  6b5306:	e9 f7 02 00 00       	jmpq   6b5602 <parse_url_char+0x3f2>
  6b530b:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b530f:	83 f8 2f             	cmp    $0x2f,%eax
  6b5312:	75 0c                	jne    6b5320 <parse_url_char+0x110>
  6b5314:	c7 45 f8 17 00 00 00 	movl   $0x17,-0x8(%rbp)
  6b531b:	e9 e9 02 00 00       	jmpq   6b5609 <parse_url_char+0x3f9>
  6b5320:	e9 dd 02 00 00       	jmpq   6b5602 <parse_url_char+0x3f2>
  6b5325:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b5329:	83 f8 2f             	cmp    $0x2f,%eax
  6b532c:	75 0c                	jne    6b533a <parse_url_char+0x12a>
  6b532e:	c7 45 f8 18 00 00 00 	movl   $0x18,-0x8(%rbp)
  6b5335:	e9 cf 02 00 00       	jmpq   6b5609 <parse_url_char+0x3f9>
  6b533a:	e9 c3 02 00 00       	jmpq   6b5602 <parse_url_char+0x3f2>
  6b533f:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b5343:	83 f8 40             	cmp    $0x40,%eax
  6b5346:	75 0c                	jne    6b5354 <parse_url_char+0x144>
  6b5348:	c7 45 f8 01 00 00 00 	movl   $0x1,-0x8(%rbp)
  6b534f:	e9 b5 02 00 00       	jmpq   6b5609 <parse_url_char+0x3f9>
  6b5354:	eb 00                	jmp    6b5356 <parse_url_char+0x146>
  6b5356:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b535a:	83 f8 2f             	cmp    $0x2f,%eax
  6b535d:	75 0c                	jne    6b536b <parse_url_char+0x15b>
  6b535f:	c7 45 f8 1b 00 00 00 	movl   $0x1b,-0x8(%rbp)
  6b5366:	e9 9e 02 00 00       	jmpq   6b5609 <parse_url_char+0x3f9>
  6b536b:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b536f:	83 f8 3f             	cmp    $0x3f,%eax
  6b5372:	75 0c                	jne    6b5380 <parse_url_char+0x170>
  6b5374:	c7 45 f8 1c 00 00 00 	movl   $0x1c,-0x8(%rbp)
  6b537b:	e9 89 02 00 00       	jmpq   6b5609 <parse_url_char+0x3f9>
  6b5380:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b5384:	83 f8 40             	cmp    $0x40,%eax
  6b5387:	75 0c                	jne    6b5395 <parse_url_char+0x185>
  6b5389:	c7 45 f8 1a 00 00 00 	movl   $0x1a,-0x8(%rbp)
  6b5390:	e9 74 02 00 00       	jmpq   6b5609 <parse_url_char+0x3f9>
  6b5395:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b5399:	83 c8 20             	or     $0x20,%eax
  6b539c:	0f b6 c0             	movzbl %al,%eax
  6b539f:	83 f8 61             	cmp    $0x61,%eax
  6b53a2:	7c 13                	jl     6b53b7 <parse_url_char+0x1a7>
  6b53a4:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b53a8:	83 c8 20             	or     $0x20,%eax
  6b53ab:	0f b6 c0             	movzbl %al,%eax
  6b53ae:	83 f8 7a             	cmp    $0x7a,%eax
  6b53b1:	0f 8e d1 00 00 00    	jle    6b5488 <parse_url_char+0x278>
  6b53b7:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b53bb:	83 f8 30             	cmp    $0x30,%eax
  6b53be:	7c 0d                	jl     6b53cd <parse_url_char+0x1bd>
  6b53c0:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b53c4:	83 f8 39             	cmp    $0x39,%eax
  6b53c7:	0f 8e bb 00 00 00    	jle    6b5488 <parse_url_char+0x278>
  6b53cd:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b53d1:	83 f8 2d             	cmp    $0x2d,%eax
  6b53d4:	0f 84 ae 00 00 00    	je     6b5488 <parse_url_char+0x278>
  6b53da:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b53de:	83 f8 5f             	cmp    $0x5f,%eax
  6b53e1:	0f 84 a1 00 00 00    	je     6b5488 <parse_url_char+0x278>
  6b53e7:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b53eb:	83 f8 2e             	cmp    $0x2e,%eax
  6b53ee:	0f 84 94 00 00 00    	je     6b5488 <parse_url_char+0x278>
  6b53f4:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b53f8:	83 f8 21             	cmp    $0x21,%eax
  6b53fb:	0f 84 87 00 00 00    	je     6b5488 <parse_url_char+0x278>
  6b5401:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b5405:	83 f8 7e             	cmp    $0x7e,%eax
  6b5408:	74 7e                	je     6b5488 <parse_url_char+0x278>
  6b540a:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b540e:	83 f8 2a             	cmp    $0x2a,%eax
  6b5411:	74 75                	je     6b5488 <parse_url_char+0x278>
  6b5413:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b5417:	83 f8 27             	cmp    $0x27,%eax
  6b541a:	74 6c                	je     6b5488 <parse_url_char+0x278>
  6b541c:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b5420:	83 f8 28             	cmp    $0x28,%eax
  6b5423:	74 63                	je     6b5488 <parse_url_char+0x278>
  6b5425:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b5429:	83 f8 29             	cmp    $0x29,%eax
  6b542c:	74 5a                	je     6b5488 <parse_url_char+0x278>
  6b542e:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b5432:	83 f8 25             	cmp    $0x25,%eax
  6b5435:	74 51                	je     6b5488 <parse_url_char+0x278>
  6b5437:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b543b:	83 f8 3b             	cmp    $0x3b,%eax
  6b543e:	74 48                	je     6b5488 <parse_url_char+0x278>
  6b5440:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b5444:	83 f8 3a             	cmp    $0x3a,%eax
  6b5447:	74 3f                	je     6b5488 <parse_url_char+0x278>
  6b5449:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b544d:	83 f8 26             	cmp    $0x26,%eax
  6b5450:	74 36                	je     6b5488 <parse_url_char+0x278>
  6b5452:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b5456:	83 f8 3d             	cmp    $0x3d,%eax
  6b5459:	74 2d                	je     6b5488 <parse_url_char+0x278>
  6b545b:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b545f:	83 f8 2b             	cmp    $0x2b,%eax
  6b5462:	74 24                	je     6b5488 <parse_url_char+0x278>
  6b5464:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b5468:	83 f8 24             	cmp    $0x24,%eax
  6b546b:	74 1b                	je     6b5488 <parse_url_char+0x278>
  6b546d:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b5471:	83 f8 2c             	cmp    $0x2c,%eax
  6b5474:	74 12                	je     6b5488 <parse_url_char+0x278>
  6b5476:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b547a:	83 f8 5b             	cmp    $0x5b,%eax
  6b547d:	74 09                	je     6b5488 <parse_url_char+0x278>
  6b547f:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b5483:	83 f8 5d             	cmp    $0x5d,%eax
  6b5486:	75 0c                	jne    6b5494 <parse_url_char+0x284>
  6b5488:	c7 45 f8 19 00 00 00 	movl   $0x19,-0x8(%rbp)
  6b548f:	e9 75 01 00 00       	jmpq   6b5609 <parse_url_char+0x3f9>
  6b5494:	e9 69 01 00 00       	jmpq   6b5602 <parse_url_char+0x3f2>
  6b5499:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
  6b549d:	c1 e8 03             	shr    $0x3,%eax
  6b54a0:	89 c0                	mov    %eax,%eax
  6b54a2:	0f b6 04 05 80 83 20 	movzbl 0x208380(,%rax,1),%eax
  6b54a9:	00 
  6b54aa:	0f b6 4d ff          	movzbl -0x1(%rbp),%ecx
  6b54ae:	83 e1 07             	and    $0x7,%ecx
  6b54b1:	ba 01 00 00 00       	mov    $0x1,%edx
  6b54b6:	d3 e2                	shl    %cl,%edx
  6b54b8:	21 d0                	and    %edx,%eax
  6b54ba:	83 f8 00             	cmp    $0x0,%eax
  6b54bd:	74 0b                	je     6b54ca <parse_url_char+0x2ba>
  6b54bf:	8b 45 f4             	mov    -0xc(%rbp),%eax
  6b54c2:	89 45 f8             	mov    %eax,-0x8(%rbp)
  6b54c5:	e9 3f 01 00 00       	jmpq   6b5609 <parse_url_char+0x3f9>
  6b54ca:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b54ce:	89 c1                	mov    %eax,%ecx
  6b54d0:	83 e9 23             	sub    $0x23,%ecx
  6b54d3:	74 15                	je     6b54ea <parse_url_char+0x2da>
  6b54d5:	eb 00                	jmp    6b54d7 <parse_url_char+0x2c7>
  6b54d7:	83 e8 3f             	sub    $0x3f,%eax
  6b54da:	75 1a                	jne    6b54f6 <parse_url_char+0x2e6>
  6b54dc:	eb 00                	jmp    6b54de <parse_url_char+0x2ce>
  6b54de:	c7 45 f8 1c 00 00 00 	movl   $0x1c,-0x8(%rbp)
  6b54e5:	e9 1f 01 00 00       	jmpq   6b5609 <parse_url_char+0x3f9>
  6b54ea:	c7 45 f8 1e 00 00 00 	movl   $0x1e,-0x8(%rbp)
  6b54f1:	e9 13 01 00 00       	jmpq   6b5609 <parse_url_char+0x3f9>
  6b54f6:	e9 07 01 00 00       	jmpq   6b5602 <parse_url_char+0x3f2>
  6b54fb:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
  6b54ff:	c1 e8 03             	shr    $0x3,%eax
  6b5502:	89 c0                	mov    %eax,%eax
  6b5504:	0f b6 04 05 80 83 20 	movzbl 0x208380(,%rax,1),%eax
  6b550b:	00 
  6b550c:	0f b6 4d ff          	movzbl -0x1(%rbp),%ecx
  6b5510:	83 e1 07             	and    $0x7,%ecx
  6b5513:	ba 01 00 00 00       	mov    $0x1,%edx
  6b5518:	d3 e2                	shl    %cl,%edx
  6b551a:	21 d0                	and    %edx,%eax
  6b551c:	83 f8 00             	cmp    $0x0,%eax
  6b551f:	74 0c                	je     6b552d <parse_url_char+0x31d>
  6b5521:	c7 45 f8 1d 00 00 00 	movl   $0x1d,-0x8(%rbp)
  6b5528:	e9 dc 00 00 00       	jmpq   6b5609 <parse_url_char+0x3f9>
  6b552d:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b5531:	89 c1                	mov    %eax,%ecx
  6b5533:	83 e9 23             	sub    $0x23,%ecx
  6b5536:	74 15                	je     6b554d <parse_url_char+0x33d>
  6b5538:	eb 00                	jmp    6b553a <parse_url_char+0x32a>
  6b553a:	83 e8 3f             	sub    $0x3f,%eax
  6b553d:	75 1a                	jne    6b5559 <parse_url_char+0x349>
  6b553f:	eb 00                	jmp    6b5541 <parse_url_char+0x331>
  6b5541:	c7 45 f8 1d 00 00 00 	movl   $0x1d,-0x8(%rbp)
  6b5548:	e9 bc 00 00 00       	jmpq   6b5609 <parse_url_char+0x3f9>
  6b554d:	c7 45 f8 1e 00 00 00 	movl   $0x1e,-0x8(%rbp)
  6b5554:	e9 b0 00 00 00       	jmpq   6b5609 <parse_url_char+0x3f9>
  6b5559:	e9 a4 00 00 00       	jmpq   6b5602 <parse_url_char+0x3f2>
  6b555e:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
  6b5562:	c1 e8 03             	shr    $0x3,%eax
  6b5565:	89 c0                	mov    %eax,%eax
  6b5567:	0f b6 04 05 80 83 20 	movzbl 0x208380(,%rax,1),%eax
  6b556e:	00 
  6b556f:	0f b6 4d ff          	movzbl -0x1(%rbp),%ecx
  6b5573:	83 e1 07             	and    $0x7,%ecx
  6b5576:	ba 01 00 00 00       	mov    $0x1,%edx
  6b557b:	d3 e2                	shl    %cl,%edx
  6b557d:	21 d0                	and    %edx,%eax
  6b557f:	83 f8 00             	cmp    $0x0,%eax
  6b5582:	74 09                	je     6b558d <parse_url_char+0x37d>
  6b5584:	c7 45 f8 1f 00 00 00 	movl   $0x1f,-0x8(%rbp)
  6b558b:	eb 7c                	jmp    6b5609 <parse_url_char+0x3f9>
  6b558d:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b5591:	89 c1                	mov    %eax,%ecx
  6b5593:	83 e9 23             	sub    $0x23,%ecx
  6b5596:	74 12                	je     6b55aa <parse_url_char+0x39a>
  6b5598:	eb 00                	jmp    6b559a <parse_url_char+0x38a>
  6b559a:	83 e8 3f             	sub    $0x3f,%eax
  6b559d:	75 13                	jne    6b55b2 <parse_url_char+0x3a2>
  6b559f:	eb 00                	jmp    6b55a1 <parse_url_char+0x391>
  6b55a1:	c7 45 f8 1f 00 00 00 	movl   $0x1f,-0x8(%rbp)
  6b55a8:	eb 5f                	jmp    6b5609 <parse_url_char+0x3f9>
  6b55aa:	8b 45 f4             	mov    -0xc(%rbp),%eax
  6b55ad:	89 45 f8             	mov    %eax,-0x8(%rbp)
  6b55b0:	eb 57                	jmp    6b5609 <parse_url_char+0x3f9>
  6b55b2:	eb 4e                	jmp    6b5602 <parse_url_char+0x3f2>
  6b55b4:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
  6b55b8:	c1 e8 03             	shr    $0x3,%eax
  6b55bb:	89 c0                	mov    %eax,%eax
  6b55bd:	0f b6 04 05 80 83 20 	movzbl 0x208380(,%rax,1),%eax
  6b55c4:	00 
  6b55c5:	0f b6 4d ff          	movzbl -0x1(%rbp),%ecx
  6b55c9:	83 e1 07             	and    $0x7,%ecx
  6b55cc:	ba 01 00 00 00       	mov    $0x1,%edx
  6b55d1:	d3 e2                	shl    %cl,%edx
  6b55d3:	21 d0                	and    %edx,%eax
  6b55d5:	83 f8 00             	cmp    $0x0,%eax
  6b55d8:	74 08                	je     6b55e2 <parse_url_char+0x3d2>
  6b55da:	8b 45 f4             	mov    -0xc(%rbp),%eax
  6b55dd:	89 45 f8             	mov    %eax,-0x8(%rbp)
  6b55e0:	eb 27                	jmp    6b5609 <parse_url_char+0x3f9>
  6b55e2:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b55e6:	89 c1                	mov    %eax,%ecx
  6b55e8:	83 e9 23             	sub    $0x23,%ecx
  6b55eb:	74 09                	je     6b55f6 <parse_url_char+0x3e6>
  6b55ed:	eb 00                	jmp    6b55ef <parse_url_char+0x3df>
  6b55ef:	83 e8 3f             	sub    $0x3f,%eax
  6b55f2:	75 0a                	jne    6b55fe <parse_url_char+0x3ee>
  6b55f4:	eb 00                	jmp    6b55f6 <parse_url_char+0x3e6>
  6b55f6:	8b 45 f4             	mov    -0xc(%rbp),%eax
  6b55f9:	89 45 f8             	mov    %eax,-0x8(%rbp)
  6b55fc:	eb 0b                	jmp    6b5609 <parse_url_char+0x3f9>
  6b55fe:	eb 02                	jmp    6b5602 <parse_url_char+0x3f2>
  6b5600:	eb 00                	jmp    6b5602 <parse_url_char+0x3f2>
  6b5602:	c7 45 f8 01 00 00 00 	movl   $0x1,-0x8(%rbp)
  6b5609:	8b 45 f8             	mov    -0x8(%rbp),%eax
  6b560c:	5d                   	pop    %rbp
  6b560d:	c3                   	retq   
  6b560e:	cc                   	int3   
  6b560f:	cc                   	int3   

00000000006b5610 <http_should_keep_alive>:
  6b5610:	55                   	push   %rbp
  6b5611:	48 89 e5             	mov    %rsp,%rbp
  6b5614:	48 83 ec 10          	sub    $0x10,%rsp
  6b5618:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
  6b561c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b5620:	0f b7 40 10          	movzwl 0x10(%rax),%eax
  6b5624:	83 f8 00             	cmp    $0x0,%eax
  6b5627:	7e 2e                	jle    6b5657 <http_should_keep_alive+0x47>
  6b5629:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b562d:	0f b7 40 12          	movzwl 0x12(%rax),%eax
  6b5631:	83 f8 00             	cmp    $0x0,%eax
  6b5634:	7e 21                	jle    6b5657 <http_should_keep_alive+0x47>
  6b5636:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b563a:	8b 00                	mov    (%rax),%eax
  6b563c:	c1 e8 02             	shr    $0x2,%eax
  6b563f:	25 ff 00 00 00       	and    $0xff,%eax
  6b5644:	83 e0 04             	and    $0x4,%eax
  6b5647:	83 f8 00             	cmp    $0x0,%eax
  6b564a:	74 09                	je     6b5655 <http_should_keep_alive+0x45>
  6b564c:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  6b5653:	eb 3c                	jmp    6b5691 <http_should_keep_alive+0x81>
  6b5655:	eb 21                	jmp    6b5678 <http_should_keep_alive+0x68>
  6b5657:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b565b:	8b 00                	mov    (%rax),%eax
  6b565d:	c1 e8 02             	shr    $0x2,%eax
  6b5660:	25 ff 00 00 00       	and    $0xff,%eax
  6b5665:	83 e0 02             	and    $0x2,%eax
  6b5668:	83 f8 00             	cmp    $0x0,%eax
  6b566b:	75 09                	jne    6b5676 <http_should_keep_alive+0x66>
  6b566d:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  6b5674:	eb 1b                	jmp    6b5691 <http_should_keep_alive+0x81>
  6b5676:	eb 00                	jmp    6b5678 <http_should_keep_alive+0x68>
  6b5678:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b567c:	e8 1f 00 00 00       	callq  6b56a0 <http_message_needs_eof>
  6b5681:	83 f8 00             	cmp    $0x0,%eax
  6b5684:	0f 95 c0             	setne  %al
  6b5687:	34 ff                	xor    $0xff,%al
  6b5689:	24 01                	and    $0x1,%al
  6b568b:	0f b6 c0             	movzbl %al,%eax
  6b568e:	89 45 fc             	mov    %eax,-0x4(%rbp)
  6b5691:	8b 45 fc             	mov    -0x4(%rbp),%eax
  6b5694:	48 83 c4 10          	add    $0x10,%rsp
  6b5698:	5d                   	pop    %rbp
  6b5699:	c3                   	retq   
  6b569a:	cc                   	int3   
  6b569b:	cc                   	int3   
  6b569c:	cc                   	int3   
  6b569d:	cc                   	int3   
  6b569e:	cc                   	int3   
  6b569f:	cc                   	int3   

00000000006b56a0 <http_message_needs_eof>:
  6b56a0:	55                   	push   %rbp
  6b56a1:	48 89 e5             	mov    %rsp,%rbp
  6b56a4:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
  6b56a8:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b56ac:	8b 00                	mov    (%rax),%eax
  6b56ae:	83 e0 03             	and    $0x3,%eax
  6b56b1:	83 f8 00             	cmp    $0x0,%eax
  6b56b4:	75 0c                	jne    6b56c2 <http_message_needs_eof+0x22>
  6b56b6:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  6b56bd:	e9 bf 00 00 00       	jmpq   6b5781 <http_message_needs_eof+0xe1>
  6b56c2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b56c6:	8b 40 14             	mov    0x14(%rax),%eax
  6b56c9:	25 ff ff 00 00       	and    $0xffff,%eax
  6b56ce:	b9 64 00 00 00       	mov    $0x64,%ecx
  6b56d3:	99                   	cltd   
  6b56d4:	f7 f9                	idiv   %ecx
  6b56d6:	83 f8 01             	cmp    $0x1,%eax
  6b56d9:	74 3c                	je     6b5717 <http_message_needs_eof+0x77>
  6b56db:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b56df:	8b 40 14             	mov    0x14(%rax),%eax
  6b56e2:	25 ff ff 00 00       	and    $0xffff,%eax
  6b56e7:	3d cc 00 00 00       	cmp    $0xcc,%eax
  6b56ec:	74 29                	je     6b5717 <http_message_needs_eof+0x77>
  6b56ee:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b56f2:	8b 40 14             	mov    0x14(%rax),%eax
  6b56f5:	25 ff ff 00 00       	and    $0xffff,%eax
  6b56fa:	3d 30 01 00 00       	cmp    $0x130,%eax
  6b56ff:	74 16                	je     6b5717 <http_message_needs_eof+0x77>
  6b5701:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b5705:	8b 00                	mov    (%rax),%eax
  6b5707:	c1 e8 02             	shr    $0x2,%eax
  6b570a:	25 ff 00 00 00       	and    $0xff,%eax
  6b570f:	83 e0 40             	and    $0x40,%eax
  6b5712:	83 f8 00             	cmp    $0x0,%eax
  6b5715:	74 09                	je     6b5720 <http_message_needs_eof+0x80>
  6b5717:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  6b571e:	eb 61                	jmp    6b5781 <http_message_needs_eof+0xe1>
  6b5720:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b5724:	8b 00                	mov    (%rax),%eax
  6b5726:	c1 e8 1d             	shr    $0x1d,%eax
  6b5729:	83 e0 01             	and    $0x1,%eax
  6b572c:	83 f8 01             	cmp    $0x1,%eax
  6b572f:	75 1f                	jne    6b5750 <http_message_needs_eof+0xb0>
  6b5731:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b5735:	8b 00                	mov    (%rax),%eax
  6b5737:	c1 e8 02             	shr    $0x2,%eax
  6b573a:	25 ff 00 00 00       	and    $0xff,%eax
  6b573f:	83 e0 01             	and    $0x1,%eax
  6b5742:	83 f8 00             	cmp    $0x0,%eax
  6b5745:	75 09                	jne    6b5750 <http_message_needs_eof+0xb0>
  6b5747:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
  6b574e:	eb 31                	jmp    6b5781 <http_message_needs_eof+0xe1>
  6b5750:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b5754:	8b 00                	mov    (%rax),%eax
  6b5756:	c1 e8 02             	shr    $0x2,%eax
  6b5759:	25 ff 00 00 00       	and    $0xff,%eax
  6b575e:	83 e0 01             	and    $0x1,%eax
  6b5761:	83 f8 00             	cmp    $0x0,%eax
  6b5764:	75 0b                	jne    6b5771 <http_message_needs_eof+0xd1>
  6b5766:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b576a:	48 83 78 08 ff       	cmpq   $0xffffffffffffffff,0x8(%rax)
  6b576f:	74 09                	je     6b577a <http_message_needs_eof+0xda>
  6b5771:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  6b5778:	eb 07                	jmp    6b5781 <http_message_needs_eof+0xe1>
  6b577a:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
  6b5781:	8b 45 fc             	mov    -0x4(%rbp),%eax
  6b5784:	5d                   	pop    %rbp
  6b5785:	c3                   	retq   
  6b5786:	cc                   	int3   
  6b5787:	cc                   	int3   
  6b5788:	cc                   	int3   
  6b5789:	cc                   	int3   
  6b578a:	cc                   	int3   
  6b578b:	cc                   	int3   
  6b578c:	cc                   	int3   
  6b578d:	cc                   	int3   
  6b578e:	cc                   	int3   
  6b578f:	cc                   	int3   

00000000006b5790 <http_method_str>:
  6b5790:	55                   	push   %rbp
  6b5791:	48 89 e5             	mov    %rsp,%rbp
  6b5794:	89 7d fc             	mov    %edi,-0x4(%rbp)
  6b5797:	8b 45 fc             	mov    -0x4(%rbp),%eax
  6b579a:	48 83 f8 22          	cmp    $0x22,%rax
  6b579e:	73 0d                	jae    6b57ad <http_method_str+0x1d>
  6b57a0:	8b 45 fc             	mov    -0x4(%rbp),%eax
  6b57a3:	48 8b 04 c5 80 dc 6b 	mov    0x6bdc80(,%rax,8),%rax
  6b57aa:	00 
  6b57ab:	eb 0c                	jmp    6b57b9 <http_method_str+0x29>
  6b57ad:	48 b8 90 1d 20 00 00 	movabs $0x201d90,%rax
  6b57b4:	00 00 00 
  6b57b7:	eb 00                	jmp    6b57b9 <http_method_str+0x29>
  6b57b9:	5d                   	pop    %rbp
  6b57ba:	c3                   	retq   
  6b57bb:	cc                   	int3   
  6b57bc:	cc                   	int3   
  6b57bd:	cc                   	int3   
  6b57be:	cc                   	int3   
  6b57bf:	cc                   	int3   

00000000006b57c0 <http_status_str>:
  6b57c0:	55                   	push   %rbp
  6b57c1:	48 89 e5             	mov    %rsp,%rbp
  6b57c4:	89 7d f4             	mov    %edi,-0xc(%rbp)
  6b57c7:	8b 45 f4             	mov    -0xc(%rbp),%eax
  6b57ca:	83 c0 9c             	add    $0xffffff9c,%eax
  6b57cd:	89 c1                	mov    %eax,%ecx
  6b57cf:	81 e9 9b 01 00 00    	sub    $0x19b,%ecx
  6b57d5:	0f 87 53 04 00 00    	ja     6b5c2e <http_status_str+0x46e>
  6b57db:	48 8b 04 c5 10 0f 20 	mov    0x200f10(,%rax,8),%rax
  6b57e2:	00 
  6b57e3:	ff e0                	jmpq   *%rax
  6b57e5:	48 b8 a4 7b 20 00 00 	movabs $0x207ba4,%rax
  6b57ec:	00 00 00 
  6b57ef:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b57f3:	e9 44 04 00 00       	jmpq   6b5c3c <http_status_str+0x47c>
  6b57f8:	48 b8 ad 7b 20 00 00 	movabs $0x207bad,%rax
  6b57ff:	00 00 00 
  6b5802:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b5806:	e9 31 04 00 00       	jmpq   6b5c3c <http_status_str+0x47c>
  6b580b:	48 b8 9a 1d 20 00 00 	movabs $0x201d9a,%rax
  6b5812:	00 00 00 
  6b5815:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b5819:	e9 1e 04 00 00       	jmpq   6b5c3c <http_status_str+0x47c>
  6b581e:	48 b8 e4 52 20 00 00 	movabs $0x2052e4,%rax
  6b5825:	00 00 00 
  6b5828:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b582c:	e9 0b 04 00 00       	jmpq   6b5c3c <http_status_str+0x47c>
  6b5831:	48 b8 67 31 20 00 00 	movabs $0x203167,%rax
  6b5838:	00 00 00 
  6b583b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b583f:	e9 f8 03 00 00       	jmpq   6b5c3c <http_status_str+0x47c>
  6b5844:	48 b8 dd 62 20 00 00 	movabs $0x2062dd,%rax
  6b584b:	00 00 00 
  6b584e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b5852:	e9 e5 03 00 00       	jmpq   6b5c3c <http_status_str+0x47c>
  6b5857:	48 b8 ea 32 20 00 00 	movabs $0x2032ea,%rax
  6b585e:	00 00 00 
  6b5861:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b5865:	e9 d2 03 00 00       	jmpq   6b5c3c <http_status_str+0x47c>
  6b586a:	48 b8 9e 41 20 00 00 	movabs $0x20419e,%rax
  6b5871:	00 00 00 
  6b5874:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b5878:	e9 bf 03 00 00       	jmpq   6b5c3c <http_status_str+0x47c>
  6b587d:	48 b8 a4 48 20 00 00 	movabs $0x2048a4,%rax
  6b5884:	00 00 00 
  6b5887:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b588b:	e9 ac 03 00 00       	jmpq   6b5c3c <http_status_str+0x47c>
  6b5890:	48 b8 75 5d 20 00 00 	movabs $0x205d75,%rax
  6b5897:	00 00 00 
  6b589a:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b589e:	e9 99 03 00 00       	jmpq   6b5c3c <http_status_str+0x47c>
  6b58a3:	48 b8 26 45 20 00 00 	movabs $0x204526,%rax
  6b58aa:	00 00 00 
  6b58ad:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b58b1:	e9 86 03 00 00       	jmpq   6b5c3c <http_status_str+0x47c>
  6b58b6:	48 b8 95 6e 20 00 00 	movabs $0x206e95,%rax
  6b58bd:	00 00 00 
  6b58c0:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b58c4:	e9 73 03 00 00       	jmpq   6b5c3c <http_status_str+0x47c>
  6b58c9:	48 b8 6f 31 20 00 00 	movabs $0x20316f,%rax
  6b58d0:	00 00 00 
  6b58d3:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b58d7:	e9 60 03 00 00       	jmpq   6b5c3c <http_status_str+0x47c>
  6b58dc:	48 b8 08 33 20 00 00 	movabs $0x203308,%rax
  6b58e3:	00 00 00 
  6b58e6:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b58ea:	e9 4d 03 00 00       	jmpq   6b5c3c <http_status_str+0x47c>
  6b58ef:	48 b8 c1 7b 20 00 00 	movabs $0x207bc1,%rax
  6b58f6:	00 00 00 
  6b58f9:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b58fd:	e9 3a 03 00 00       	jmpq   6b5c3c <http_status_str+0x47c>
  6b5902:	48 b8 80 66 20 00 00 	movabs $0x206680,%rax
  6b5909:	00 00 00 
  6b590c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b5910:	e9 27 03 00 00       	jmpq   6b5c3c <http_status_str+0x47c>
  6b5915:	48 b8 a5 1d 20 00 00 	movabs $0x201da5,%rax
  6b591c:	00 00 00 
  6b591f:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b5923:	e9 14 03 00 00       	jmpq   6b5c3c <http_status_str+0x47c>
  6b5928:	48 b8 af 1d 20 00 00 	movabs $0x201daf,%rax
  6b592f:	00 00 00 
  6b5932:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b5936:	e9 01 03 00 00       	jmpq   6b5c3c <http_status_str+0x47c>
  6b593b:	48 b8 d1 29 20 00 00 	movabs $0x2029d1,%rax
  6b5942:	00 00 00 
  6b5945:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b5949:	e9 ee 02 00 00       	jmpq   6b5c3c <http_status_str+0x47c>
  6b594e:	48 b8 86 66 20 00 00 	movabs $0x206686,%rax
  6b5955:	00 00 00 
  6b5958:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b595c:	e9 db 02 00 00       	jmpq   6b5c3c <http_status_str+0x47c>
  6b5961:	48 b8 33 45 20 00 00 	movabs $0x204533,%rax
  6b5968:	00 00 00 
  6b596b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b596f:	e9 c8 02 00 00       	jmpq   6b5c3c <http_status_str+0x47c>
  6b5974:	48 b8 db 29 20 00 00 	movabs $0x2029db,%rax
  6b597b:	00 00 00 
  6b597e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b5982:	e9 b5 02 00 00       	jmpq   6b5c3c <http_status_str+0x47c>
  6b5987:	48 b8 8c 3f 20 00 00 	movabs $0x203f8c,%rax
  6b598e:	00 00 00 
  6b5991:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b5995:	e9 a2 02 00 00       	jmpq   6b5c3c <http_status_str+0x47c>
  6b599a:	48 b8 87 80 20 00 00 	movabs $0x208087,%rax
  6b59a1:	00 00 00 
  6b59a4:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b59a8:	e9 8f 02 00 00       	jmpq   6b5c3c <http_status_str+0x47c>
  6b59ad:	48 b8 99 3f 20 00 00 	movabs $0x203f99,%rax
  6b59b4:	00 00 00 
  6b59b7:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b59bb:	e9 7c 02 00 00       	jmpq   6b5c3c <http_status_str+0x47c>
  6b59c0:	48 b8 a9 41 20 00 00 	movabs $0x2041a9,%rax
  6b59c7:	00 00 00 
  6b59ca:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b59ce:	e9 69 02 00 00       	jmpq   6b5c3c <http_status_str+0x47c>
  6b59d3:	48 b8 d8 47 20 00 00 	movabs $0x2047d8,%rax
  6b59da:	00 00 00 
  6b59dd:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b59e1:	e9 56 02 00 00       	jmpq   6b5c3c <http_status_str+0x47c>
  6b59e6:	48 b8 03 2c 20 00 00 	movabs $0x202c03,%rax
  6b59ed:	00 00 00 
  6b59f0:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b59f4:	e9 43 02 00 00       	jmpq   6b5c3c <http_status_str+0x47c>
  6b59f9:	48 b8 46 45 20 00 00 	movabs $0x204546,%rax
  6b5a00:	00 00 00 
  6b5a03:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b5a07:	e9 30 02 00 00       	jmpq   6b5c3c <http_status_str+0x47c>
  6b5a0c:	48 b8 81 26 20 00 00 	movabs $0x202681,%rax
  6b5a13:	00 00 00 
  6b5a16:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b5a1a:	e9 1d 02 00 00       	jmpq   6b5c3c <http_status_str+0x47c>
  6b5a1f:	48 b8 07 23 20 00 00 	movabs $0x202307,%rax
  6b5a26:	00 00 00 
  6b5a29:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b5a2d:	e9 0a 02 00 00       	jmpq   6b5c3c <http_status_str+0x47c>
  6b5a32:	48 b8 ab 77 20 00 00 	movabs $0x2077ab,%rax
  6b5a39:	00 00 00 
  6b5a3c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b5a40:	e9 f7 01 00 00       	jmpq   6b5c3c <http_status_str+0x47c>
  6b5a45:	48 b8 85 5d 20 00 00 	movabs $0x205d85,%rax
  6b5a4c:	00 00 00 
  6b5a4f:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b5a53:	e9 e4 01 00 00       	jmpq   6b5c3c <http_status_str+0x47c>
  6b5a58:	48 b8 a3 3f 20 00 00 	movabs $0x203fa3,%rax
  6b5a5f:	00 00 00 
  6b5a62:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b5a66:	e9 d1 01 00 00       	jmpq   6b5c3c <http_status_str+0x47c>
  6b5a6b:	48 b8 e6 62 20 00 00 	movabs $0x2062e6,%rax
  6b5a72:	00 00 00 
  6b5a75:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b5a79:	e9 be 01 00 00       	jmpq   6b5c3c <http_status_str+0x47c>
  6b5a7e:	48 b8 04 38 20 00 00 	movabs $0x203804,%rax
  6b5a85:	00 00 00 
  6b5a88:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b5a8c:	e9 ab 01 00 00       	jmpq   6b5c3c <http_status_str+0x47c>
  6b5a91:	48 b8 10 23 20 00 00 	movabs $0x202310,%rax
  6b5a98:	00 00 00 
  6b5a9b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b5a9f:	e9 98 01 00 00       	jmpq   6b5c3c <http_status_str+0x47c>
  6b5aa4:	48 b8 12 2c 20 00 00 	movabs $0x202c12,%rax
  6b5aab:	00 00 00 
  6b5aae:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b5ab2:	e9 85 01 00 00       	jmpq   6b5c3c <http_status_str+0x47c>
  6b5ab7:	48 b8 99 66 20 00 00 	movabs $0x206699,%rax
  6b5abe:	00 00 00 
  6b5ac1:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b5ac5:	e9 72 01 00 00       	jmpq   6b5c3c <http_status_str+0x47c>
  6b5aca:	48 b8 27 51 20 00 00 	movabs $0x205127,%rax
  6b5ad1:	00 00 00 
  6b5ad4:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b5ad8:	e9 5f 01 00 00       	jmpq   6b5c3c <http_status_str+0x47c>
  6b5add:	48 b8 b7 3f 20 00 00 	movabs $0x203fb7,%rax
  6b5ae4:	00 00 00 
  6b5ae7:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b5aeb:	e9 4c 01 00 00       	jmpq   6b5c3c <http_status_str+0x47c>
  6b5af0:	48 b8 b3 41 20 00 00 	movabs $0x2041b3,%rax
  6b5af7:	00 00 00 
  6b5afa:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b5afe:	e9 39 01 00 00       	jmpq   6b5c3c <http_status_str+0x47c>
  6b5b03:	48 b8 b0 77 20 00 00 	movabs $0x2077b0,%rax
  6b5b0a:	00 00 00 
  6b5b0d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b5b11:	e9 26 01 00 00       	jmpq   6b5c3c <http_status_str+0x47c>
  6b5b16:	48 b8 e7 29 20 00 00 	movabs $0x2029e7,%rax
  6b5b1d:	00 00 00 
  6b5b20:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b5b24:	e9 13 01 00 00       	jmpq   6b5c3c <http_status_str+0x47c>
  6b5b29:	48 b8 3b 51 20 00 00 	movabs $0x20513b,%rax
  6b5b30:	00 00 00 
  6b5b33:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b5b37:	e9 00 01 00 00       	jmpq   6b5c3c <http_status_str+0x47c>
  6b5b3c:	48 b8 f8 62 20 00 00 	movabs $0x2062f8,%rax
  6b5b43:	00 00 00 
  6b5b46:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b5b4a:	e9 ed 00 00 00       	jmpq   6b5c3c <http_status_str+0x47c>
  6b5b4f:	48 b8 81 69 20 00 00 	movabs $0x206981,%rax
  6b5b56:	00 00 00 
  6b5b59:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b5b5d:	e9 da 00 00 00       	jmpq   6b5c3c <http_status_str+0x47c>
  6b5b62:	48 b8 8b 20 20 00 00 	movabs $0x20208b,%rax
  6b5b69:	00 00 00 
  6b5b6c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b5b70:	e9 c7 00 00 00       	jmpq   6b5c3c <http_status_str+0x47c>
  6b5b75:	48 b8 eb 47 20 00 00 	movabs $0x2047eb,%rax
  6b5b7c:	00 00 00 
  6b5b7f:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b5b83:	e9 b4 00 00 00       	jmpq   6b5c3c <http_status_str+0x47c>
  6b5b88:	48 b8 cc 3f 20 00 00 	movabs $0x203fcc,%rax
  6b5b8f:	00 00 00 
  6b5b92:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b5b96:	e9 a1 00 00 00       	jmpq   6b5c3c <http_status_str+0x47c>
  6b5b9b:	48 b8 11 38 20 00 00 	movabs $0x203811,%rax
  6b5ba2:	00 00 00 
  6b5ba5:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b5ba9:	e9 8e 00 00 00       	jmpq   6b5c3c <http_status_str+0x47c>
  6b5bae:	48 b8 91 26 20 00 00 	movabs $0x202691,%rax
  6b5bb5:	00 00 00 
  6b5bb8:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b5bbc:	eb 7e                	jmp    6b5c3c <http_status_str+0x47c>
  6b5bbe:	48 b8 a6 6e 20 00 00 	movabs $0x206ea6,%rax
  6b5bc5:	00 00 00 
  6b5bc8:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b5bcc:	eb 6e                	jmp    6b5c3c <http_status_str+0x47c>
  6b5bce:	48 b8 a9 20 20 00 00 	movabs $0x2020a9,%rax
  6b5bd5:	00 00 00 
  6b5bd8:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b5bdc:	eb 5e                	jmp    6b5c3c <http_status_str+0x47c>
  6b5bde:	48 b8 27 23 20 00 00 	movabs $0x202327,%rax
  6b5be5:	00 00 00 
  6b5be8:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b5bec:	eb 4e                	jmp    6b5c3c <http_status_str+0x47c>
  6b5bee:	48 b8 1d 38 20 00 00 	movabs $0x20381d,%rax
  6b5bf5:	00 00 00 
  6b5bf8:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b5bfc:	eb 3e                	jmp    6b5c3c <http_status_str+0x47c>
  6b5bfe:	48 b8 b6 6e 20 00 00 	movabs $0x206eb6,%rax
  6b5c05:	00 00 00 
  6b5c08:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b5c0c:	eb 2e                	jmp    6b5c3c <http_status_str+0x47c>
  6b5c0e:	48 b8 d3 6b 20 00 00 	movabs $0x206bd3,%rax
  6b5c15:	00 00 00 
  6b5c18:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b5c1c:	eb 1e                	jmp    6b5c3c <http_status_str+0x47c>
  6b5c1e:	48 b8 dc 3f 20 00 00 	movabs $0x203fdc,%rax
  6b5c25:	00 00 00 
  6b5c28:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b5c2c:	eb 0e                	jmp    6b5c3c <http_status_str+0x47c>
  6b5c2e:	48 b8 90 1d 20 00 00 	movabs $0x201d90,%rax
  6b5c35:	00 00 00 
  6b5c38:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b5c3c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6b5c40:	5d                   	pop    %rbp
  6b5c41:	c3                   	retq   
  6b5c42:	cc                   	int3   
  6b5c43:	cc                   	int3   
  6b5c44:	cc                   	int3   
  6b5c45:	cc                   	int3   
  6b5c46:	cc                   	int3   
  6b5c47:	cc                   	int3   
  6b5c48:	cc                   	int3   
  6b5c49:	cc                   	int3   
  6b5c4a:	cc                   	int3   
  6b5c4b:	cc                   	int3   
  6b5c4c:	cc                   	int3   
  6b5c4d:	cc                   	int3   
  6b5c4e:	cc                   	int3   
  6b5c4f:	cc                   	int3   

00000000006b5c50 <http_parser_init>:
  6b5c50:	55                   	push   %rbp
  6b5c51:	48 89 e5             	mov    %rsp,%rbp
  6b5c54:	48 83 ec 20          	sub    $0x20,%rsp
  6b5c58:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
  6b5c5c:	89 75 fc             	mov    %esi,-0x4(%rbp)
  6b5c5f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b5c63:	48 8b 40 18          	mov    0x18(%rax),%rax
  6b5c67:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  6b5c6b:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b5c6f:	31 f6                	xor    %esi,%esi
  6b5c71:	ba 20 00 00 00       	mov    $0x20,%edx
  6b5c76:	e8 25 5e 00 00       	callq  6bbaa0 <memset@plt>
  6b5c7b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  6b5c7f:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b5c83:	48 89 41 18          	mov    %rax,0x18(%rcx)
  6b5c87:	8b 45 fc             	mov    -0x4(%rbp),%eax
  6b5c8a:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b5c8e:	8b 11                	mov    (%rcx),%edx
  6b5c90:	83 e0 03             	and    $0x3,%eax
  6b5c93:	83 e2 fc             	and    $0xfffffffc,%edx
  6b5c96:	09 c2                	or     %eax,%edx
  6b5c98:	89 11                	mov    %edx,(%rcx)
  6b5c9a:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
  6b5c9e:	75 07                	jne    6b5ca7 <http_parser_init+0x57>
  6b5ca0:	b8 12 00 00 00       	mov    $0x12,%eax
  6b5ca5:	eb 13                	jmp    6b5cba <http_parser_init+0x6a>
  6b5ca7:	8b 4d fc             	mov    -0x4(%rbp),%ecx
  6b5caa:	b8 02 00 00 00       	mov    $0x2,%eax
  6b5caf:	ba 04 00 00 00       	mov    $0x4,%edx
  6b5cb4:	83 f9 01             	cmp    $0x1,%ecx
  6b5cb7:	0f 44 c2             	cmove  %edx,%eax
  6b5cba:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b5cbe:	8b 11                	mov    (%rcx),%edx
  6b5cc0:	83 e0 7f             	and    $0x7f,%eax
  6b5cc3:	c1 e0 0a             	shl    $0xa,%eax
  6b5cc6:	81 e2 ff 03 fe ff    	and    $0xfffe03ff,%edx
  6b5ccc:	09 c2                	or     %eax,%edx
  6b5cce:	89 11                	mov    %edx,(%rcx)
  6b5cd0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b5cd4:	8b 48 14             	mov    0x14(%rax),%ecx
  6b5cd7:	81 e1 ff ff ff 80    	and    $0x80ffffff,%ecx
  6b5cdd:	83 c9 00             	or     $0x0,%ecx
  6b5ce0:	89 48 14             	mov    %ecx,0x14(%rax)
  6b5ce3:	48 83 c4 20          	add    $0x20,%rsp
  6b5ce7:	5d                   	pop    %rbp
  6b5ce8:	c3                   	retq   
  6b5ce9:	cc                   	int3   
  6b5cea:	cc                   	int3   
  6b5ceb:	cc                   	int3   
  6b5cec:	cc                   	int3   
  6b5ced:	cc                   	int3   
  6b5cee:	cc                   	int3   
  6b5cef:	cc                   	int3   

00000000006b5cf0 <http_errno_name>:
  6b5cf0:	55                   	push   %rbp
  6b5cf1:	48 89 e5             	mov    %rsp,%rbp
  6b5cf4:	48 83 ec 10          	sub    $0x10,%rsp
  6b5cf8:	89 7d fc             	mov    %edi,-0x4(%rbp)
  6b5cfb:	8b 45 fc             	mov    -0x4(%rbp),%eax
  6b5cfe:	48 83 f8 22          	cmp    $0x22,%rax
  6b5d02:	73 02                	jae    6b5d06 <http_errno_name+0x16>
  6b5d04:	eb 28                	jmp    6b5d2e <http_errno_name+0x3e>
  6b5d06:	48 bf 13 7f 20 00 00 	movabs $0x207f13,%rdi
  6b5d0d:	00 00 00 
  6b5d10:	48 be f5 2b 20 00 00 	movabs $0x202bf5,%rsi
  6b5d17:	00 00 00 
  6b5d1a:	48 b9 c4 6e 20 00 00 	movabs $0x206ec4,%rcx
  6b5d21:	00 00 00 
  6b5d24:	ba c3 08 00 00       	mov    $0x8c3,%edx
  6b5d29:	e8 62 5c 00 00       	callq  6bb990 <__assert_fail@plt>
  6b5d2e:	8b 45 fc             	mov    -0x4(%rbp),%eax
  6b5d31:	48 b9 90 dd 6b 00 00 	movabs $0x6bdd90,%rcx
  6b5d38:	00 00 00 
  6b5d3b:	48 c1 e0 04          	shl    $0x4,%rax
  6b5d3f:	48 01 c1             	add    %rax,%rcx
  6b5d42:	48 8b 01             	mov    (%rcx),%rax
  6b5d45:	48 83 c4 10          	add    $0x10,%rsp
  6b5d49:	5d                   	pop    %rbp
  6b5d4a:	c3                   	retq   
  6b5d4b:	cc                   	int3   
  6b5d4c:	cc                   	int3   
  6b5d4d:	cc                   	int3   
  6b5d4e:	cc                   	int3   
  6b5d4f:	cc                   	int3   

00000000006b5d50 <http_errno_description>:
  6b5d50:	55                   	push   %rbp
  6b5d51:	48 89 e5             	mov    %rsp,%rbp
  6b5d54:	48 83 ec 10          	sub    $0x10,%rsp
  6b5d58:	89 7d fc             	mov    %edi,-0x4(%rbp)
  6b5d5b:	8b 45 fc             	mov    -0x4(%rbp),%eax
  6b5d5e:	48 83 f8 22          	cmp    $0x22,%rax
  6b5d62:	73 02                	jae    6b5d66 <http_errno_description+0x16>
  6b5d64:	eb 28                	jmp    6b5d8e <http_errno_description+0x3e>
  6b5d66:	48 bf 13 7f 20 00 00 	movabs $0x207f13,%rdi
  6b5d6d:	00 00 00 
  6b5d70:	48 be f5 2b 20 00 00 	movabs $0x202bf5,%rsi
  6b5d77:	00 00 00 
  6b5d7a:	48 b9 98 80 20 00 00 	movabs $0x208098,%rcx
  6b5d81:	00 00 00 
  6b5d84:	ba c9 08 00 00       	mov    $0x8c9,%edx
  6b5d89:	e8 02 5c 00 00       	callq  6bb990 <__assert_fail@plt>
  6b5d8e:	8b 45 fc             	mov    -0x4(%rbp),%eax
  6b5d91:	48 b9 90 dd 6b 00 00 	movabs $0x6bdd90,%rcx
  6b5d98:	00 00 00 
  6b5d9b:	48 c1 e0 04          	shl    $0x4,%rax
  6b5d9f:	48 01 c1             	add    %rax,%rcx
  6b5da2:	48 8b 41 08          	mov    0x8(%rcx),%rax
  6b5da6:	48 83 c4 10          	add    $0x10,%rsp
  6b5daa:	5d                   	pop    %rbp
  6b5dab:	c3                   	retq   
  6b5dac:	cc                   	int3   
  6b5dad:	cc                   	int3   
  6b5dae:	cc                   	int3   
  6b5daf:	cc                   	int3   

00000000006b5db0 <http_parser_url_init>:
  6b5db0:	55                   	push   %rbp
  6b5db1:	48 89 e5             	mov    %rsp,%rbp
  6b5db4:	48 83 ec 10          	sub    $0x10,%rsp
  6b5db8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  6b5dbc:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  6b5dc0:	31 f6                	xor    %esi,%esi
  6b5dc2:	ba 20 00 00 00       	mov    $0x20,%edx
  6b5dc7:	e8 d4 5c 00 00       	callq  6bbaa0 <memset@plt>
  6b5dcc:	48 83 c4 10          	add    $0x10,%rsp
  6b5dd0:	5d                   	pop    %rbp
  6b5dd1:	c3                   	retq   
  6b5dd2:	cc                   	int3   
  6b5dd3:	cc                   	int3   
  6b5dd4:	cc                   	int3   
  6b5dd5:	cc                   	int3   
  6b5dd6:	cc                   	int3   
  6b5dd7:	cc                   	int3   
  6b5dd8:	cc                   	int3   
  6b5dd9:	cc                   	int3   
  6b5dda:	cc                   	int3   
  6b5ddb:	cc                   	int3   
  6b5ddc:	cc                   	int3   
  6b5ddd:	cc                   	int3   
  6b5dde:	cc                   	int3   
  6b5ddf:	cc                   	int3   

00000000006b5de0 <http_parser_parse_url>:
  6b5de0:	55                   	push   %rbp
  6b5de1:	48 89 e5             	mov    %rsp,%rbp
  6b5de4:	48 83 ec 60          	sub    $0x60,%rsp
  6b5de8:	48 89 7d d0          	mov    %rdi,-0x30(%rbp)
  6b5dec:	48 89 75 a8          	mov    %rsi,-0x58(%rbp)
  6b5df0:	89 55 bc             	mov    %edx,-0x44(%rbp)
  6b5df3:	48 89 4d f0          	mov    %rcx,-0x10(%rbp)
  6b5df7:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%rbp)
  6b5dfe:	48 83 7d a8 00       	cmpq   $0x0,-0x58(%rbp)
  6b5e03:	75 0c                	jne    6b5e11 <http_parser_parse_url+0x31>
  6b5e05:	c7 45 ec 01 00 00 00 	movl   $0x1,-0x14(%rbp)
  6b5e0c:	e9 d0 02 00 00       	jmpq   6b60e1 <http_parser_parse_url+0x301>
  6b5e11:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b5e15:	66 c7 00 00 00       	movw   $0x0,(%rax)
  6b5e1a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b5e1e:	66 c7 40 02 00 00    	movw   $0x0,0x2(%rax)
  6b5e24:	8b 45 bc             	mov    -0x44(%rbp),%eax
  6b5e27:	b9 14 00 00 00       	mov    $0x14,%ecx
  6b5e2c:	ba 18 00 00 00       	mov    $0x18,%edx
  6b5e31:	83 f8 00             	cmp    $0x0,%eax
  6b5e34:	0f 45 ca             	cmovne %edx,%ecx
  6b5e37:	89 4d e4             	mov    %ecx,-0x1c(%rbp)
  6b5e3a:	c7 45 c0 07 00 00 00 	movl   $0x7,-0x40(%rbp)
  6b5e41:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  6b5e45:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  6b5e49:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6b5e4d:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
  6b5e51:	48 03 4d a8          	add    -0x58(%rbp),%rcx
  6b5e55:	48 39 c8             	cmp    %rcx,%rax
  6b5e58:	0f 83 07 01 00 00    	jae    6b5f65 <http_parser_parse_url+0x185>
  6b5e5e:	8b 7d e4             	mov    -0x1c(%rbp),%edi
  6b5e61:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6b5e65:	0f be 30             	movsbl (%rax),%esi
  6b5e68:	e8 a3 f3 ff ff       	callq  6b5210 <parse_url_char>
  6b5e6d:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  6b5e70:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b5e73:	83 c0 ff             	add    $0xffffffff,%eax
  6b5e76:	89 c1                	mov    %eax,%ecx
  6b5e78:	83 e9 1e             	sub    $0x1e,%ecx
  6b5e7b:	77 4f                	ja     6b5ecc <http_parser_parse_url+0xec>
  6b5e7d:	48 8b 04 c5 f0 1b 20 	mov    0x201bf0(,%rax,8),%rax
  6b5e84:	00 
  6b5e85:	ff e0                	jmpq   *%rax
  6b5e87:	c7 45 ec 01 00 00 00 	movl   $0x1,-0x14(%rbp)
  6b5e8e:	e9 4e 02 00 00       	jmpq   6b60e1 <http_parser_parse_url+0x301>
  6b5e93:	e9 bc 00 00 00       	jmpq   6b5f54 <http_parser_parse_url+0x174>
  6b5e98:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  6b5e9f:	eb 53                	jmp    6b5ef4 <http_parser_parse_url+0x114>
  6b5ea1:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%rbp)
  6b5ea8:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
  6b5eaf:	eb 43                	jmp    6b5ef4 <http_parser_parse_url+0x114>
  6b5eb1:	c7 45 fc 03 00 00 00 	movl   $0x3,-0x4(%rbp)
  6b5eb8:	eb 3a                	jmp    6b5ef4 <http_parser_parse_url+0x114>
  6b5eba:	c7 45 fc 04 00 00 00 	movl   $0x4,-0x4(%rbp)
  6b5ec1:	eb 31                	jmp    6b5ef4 <http_parser_parse_url+0x114>
  6b5ec3:	c7 45 fc 05 00 00 00 	movl   $0x5,-0x4(%rbp)
  6b5eca:	eb 28                	jmp    6b5ef4 <http_parser_parse_url+0x114>
  6b5ecc:	48 bf bc 1d 20 00 00 	movabs $0x201dbc,%rdi
  6b5ed3:	00 00 00 
  6b5ed6:	48 be f5 2b 20 00 00 	movabs $0x202bf5,%rsi
  6b5edd:	00 00 00 
  6b5ee0:	48 b9 c2 77 20 00 00 	movabs $0x2077c2,%rcx
  6b5ee7:	00 00 00 
  6b5eea:	ba b0 09 00 00       	mov    $0x9b0,%edx
  6b5eef:	e8 9c 5a 00 00       	callq  6bb990 <__assert_fail@plt>
  6b5ef4:	8b 45 fc             	mov    -0x4(%rbp),%eax
  6b5ef7:	3b 45 c0             	cmp    -0x40(%rbp),%eax
  6b5efa:	75 17                	jne    6b5f13 <http_parser_parse_url+0x133>
  6b5efc:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b5f00:	8b 4d fc             	mov    -0x4(%rbp),%ecx
  6b5f03:	66 8b 54 88 06       	mov    0x6(%rax,%rcx,4),%dx
  6b5f08:	66 83 c2 01          	add    $0x1,%dx
  6b5f0c:	66 89 54 88 06       	mov    %dx,0x6(%rax,%rcx,4)
  6b5f11:	eb 41                	jmp    6b5f54 <http_parser_parse_url+0x174>
  6b5f13:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6b5f17:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
  6b5f1b:	48 29 c8             	sub    %rcx,%rax
  6b5f1e:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b5f22:	8b 55 fc             	mov    -0x4(%rbp),%edx
  6b5f25:	66 89 44 91 04       	mov    %ax,0x4(%rcx,%rdx,4)
  6b5f2a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b5f2e:	8b 4d fc             	mov    -0x4(%rbp),%ecx
  6b5f31:	66 c7 44 88 06 01 00 	movw   $0x1,0x6(%rax,%rcx,4)
  6b5f38:	8b 4d fc             	mov    -0x4(%rbp),%ecx
  6b5f3b:	b8 01 00 00 00       	mov    $0x1,%eax
  6b5f40:	d3 e0                	shl    %cl,%eax
  6b5f42:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b5f46:	0f b7 11             	movzwl (%rcx),%edx
  6b5f49:	09 c2                	or     %eax,%edx
  6b5f4b:	66 89 11             	mov    %dx,(%rcx)
  6b5f4e:	8b 45 fc             	mov    -0x4(%rbp),%eax
  6b5f51:	89 45 c0             	mov    %eax,-0x40(%rbp)
  6b5f54:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6b5f58:	48 83 c0 01          	add    $0x1,%rax
  6b5f5c:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  6b5f60:	e9 e4 fe ff ff       	jmpq   6b5e49 <http_parser_parse_url+0x69>
  6b5f65:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b5f69:	0f b7 00             	movzwl (%rax),%eax
  6b5f6c:	83 e0 01             	and    $0x1,%eax
  6b5f6f:	83 f8 00             	cmp    $0x0,%eax
  6b5f72:	74 1b                	je     6b5f8f <http_parser_parse_url+0x1af>
  6b5f74:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b5f78:	0f b7 00             	movzwl (%rax),%eax
  6b5f7b:	83 e0 02             	and    $0x2,%eax
  6b5f7e:	83 f8 00             	cmp    $0x0,%eax
  6b5f81:	75 0c                	jne    6b5f8f <http_parser_parse_url+0x1af>
  6b5f83:	c7 45 ec 01 00 00 00 	movl   $0x1,-0x14(%rbp)
  6b5f8a:	e9 52 01 00 00       	jmpq   6b60e1 <http_parser_parse_url+0x301>
  6b5f8f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b5f93:	0f b7 00             	movzwl (%rax),%eax
  6b5f96:	83 e0 02             	and    $0x2,%eax
  6b5f99:	83 f8 00             	cmp    $0x0,%eax
  6b5f9c:	74 23                	je     6b5fc1 <http_parser_parse_url+0x1e1>
  6b5f9e:	48 8b 7d d0          	mov    -0x30(%rbp),%rdi
  6b5fa2:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
  6b5fa6:	8b 55 c4             	mov    -0x3c(%rbp),%edx
  6b5fa9:	e8 42 01 00 00       	callq  6b60f0 <http_parse_host>
  6b5fae:	83 f8 00             	cmp    $0x0,%eax
  6b5fb1:	74 0c                	je     6b5fbf <http_parser_parse_url+0x1df>
  6b5fb3:	c7 45 ec 01 00 00 00 	movl   $0x1,-0x14(%rbp)
  6b5fba:	e9 22 01 00 00       	jmpq   6b60e1 <http_parser_parse_url+0x301>
  6b5fbf:	eb 00                	jmp    6b5fc1 <http_parser_parse_url+0x1e1>
  6b5fc1:	83 7d bc 00          	cmpl   $0x0,-0x44(%rbp)
  6b5fc5:	74 18                	je     6b5fdf <http_parser_parse_url+0x1ff>
  6b5fc7:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b5fcb:	0f b7 00             	movzwl (%rax),%eax
  6b5fce:	83 f8 06             	cmp    $0x6,%eax
  6b5fd1:	74 0c                	je     6b5fdf <http_parser_parse_url+0x1ff>
  6b5fd3:	c7 45 ec 01 00 00 00 	movl   $0x1,-0x14(%rbp)
  6b5fda:	e9 02 01 00 00       	jmpq   6b60e1 <http_parser_parse_url+0x301>
  6b5fdf:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b5fe3:	0f b7 00             	movzwl (%rax),%eax
  6b5fe6:	83 e0 04             	and    $0x4,%eax
  6b5fe9:	83 f8 00             	cmp    $0x0,%eax
  6b5fec:	0f 84 e8 00 00 00    	je     6b60da <http_parser_parse_url+0x2fa>
  6b5ff2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b5ff6:	66 8b 40 0c          	mov    0xc(%rax),%ax
  6b5ffa:	66 89 45 ea          	mov    %ax,-0x16(%rbp)
  6b5ffe:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b6002:	66 8b 40 0e          	mov    0xe(%rax),%ax
  6b6006:	66 89 45 e8          	mov    %ax,-0x18(%rbp)
  6b600a:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  6b600e:	0f b7 4d ea          	movzwl -0x16(%rbp),%ecx
  6b6012:	48 63 c9             	movslq %ecx,%rcx
  6b6015:	48 01 c8             	add    %rcx,%rax
  6b6018:	0f b7 4d e8          	movzwl -0x18(%rbp),%ecx
  6b601c:	48 63 c9             	movslq %ecx,%rcx
  6b601f:	48 01 c8             	add    %rcx,%rax
  6b6022:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
  6b6026:	0f b7 45 ea          	movzwl -0x16(%rbp),%eax
  6b602a:	0f b7 4d e8          	movzwl -0x18(%rbp),%ecx
  6b602e:	01 c8                	add    %ecx,%eax
  6b6030:	48 98                	cltq   
  6b6032:	48 3b 45 a8          	cmp    -0x58(%rbp),%rax
  6b6036:	77 0a                	ja     6b6042 <http_parser_parse_url+0x262>
  6b6038:	b0 01                	mov    $0x1,%al
  6b603a:	a8 01                	test   $0x1,%al
  6b603c:	75 02                	jne    6b6040 <http_parser_parse_url+0x260>
  6b603e:	eb 02                	jmp    6b6042 <http_parser_parse_url+0x262>
  6b6040:	eb 28                	jmp    6b606a <http_parser_parse_url+0x28a>
  6b6042:	48 bf 47 3d 20 00 00 	movabs $0x203d47,%rdi
  6b6049:	00 00 00 
  6b604c:	48 be f5 2b 20 00 00 	movabs $0x202bf5,%rsi
  6b6053:	00 00 00 
  6b6056:	48 b9 c2 77 20 00 00 	movabs $0x2077c2,%rcx
  6b605d:	00 00 00 
  6b6060:	ba df 09 00 00       	mov    $0x9df,%edx
  6b6065:	e8 26 59 00 00       	callq  6bb990 <__assert_fail@plt>
  6b606a:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
  6b6071:	00 
  6b6072:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  6b6076:	0f b7 4d ea          	movzwl -0x16(%rbp),%ecx
  6b607a:	48 63 c9             	movslq %ecx,%rcx
  6b607d:	48 01 c8             	add    %rcx,%rax
  6b6080:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  6b6084:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  6b6088:	48 3b 45 a0          	cmp    -0x60(%rbp),%rax
  6b608c:	73 40                	jae    6b60ce <http_parser_parse_url+0x2ee>
  6b608e:	48 6b 45 d8 0a       	imul   $0xa,-0x28(%rbp),%rax
  6b6093:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  6b6097:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  6b609b:	0f be 00             	movsbl (%rax),%eax
  6b609e:	83 e8 30             	sub    $0x30,%eax
  6b60a1:	48 98                	cltq   
  6b60a3:	48 03 45 d8          	add    -0x28(%rbp),%rax
  6b60a7:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  6b60ab:	48 81 7d d8 ff ff 00 	cmpq   $0xffff,-0x28(%rbp)
  6b60b2:	00 
  6b60b3:	76 09                	jbe    6b60be <http_parser_parse_url+0x2de>
  6b60b5:	c7 45 ec 01 00 00 00 	movl   $0x1,-0x14(%rbp)
  6b60bc:	eb 23                	jmp    6b60e1 <http_parser_parse_url+0x301>
  6b60be:	eb 00                	jmp    6b60c0 <http_parser_parse_url+0x2e0>
  6b60c0:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  6b60c4:	48 83 c0 01          	add    $0x1,%rax
  6b60c8:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  6b60cc:	eb b6                	jmp    6b6084 <http_parser_parse_url+0x2a4>
  6b60ce:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b60d2:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b60d6:	66 89 41 02          	mov    %ax,0x2(%rcx)
  6b60da:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
  6b60e1:	8b 45 ec             	mov    -0x14(%rbp),%eax
  6b60e4:	48 83 c4 60          	add    $0x60,%rsp
  6b60e8:	5d                   	pop    %rbp
  6b60e9:	c3                   	retq   
  6b60ea:	cc                   	int3   
  6b60eb:	cc                   	int3   
  6b60ec:	cc                   	int3   
  6b60ed:	cc                   	int3   
  6b60ee:	cc                   	int3   
  6b60ef:	cc                   	int3   

00000000006b60f0 <http_parse_host>:
  6b60f0:	55                   	push   %rbp
  6b60f1:	48 89 e5             	mov    %rsp,%rbp
  6b60f4:	48 83 ec 40          	sub    $0x40,%rsp
  6b60f8:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  6b60fc:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  6b6100:	89 55 d4             	mov    %edx,-0x2c(%rbp)
  6b6103:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6b6107:	0f b7 40 08          	movzwl 0x8(%rax),%eax
  6b610b:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  6b610f:	0f b7 49 0a          	movzwl 0xa(%rcx),%ecx
  6b6113:	01 c8                	add    %ecx,%eax
  6b6115:	48 98                	cltq   
  6b6117:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  6b611b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6b611f:	0f b7 00             	movzwl (%rax),%eax
  6b6122:	83 e0 02             	and    $0x2,%eax
  6b6125:	83 f8 00             	cmp    $0x0,%eax
  6b6128:	74 02                	je     6b612c <http_parse_host+0x3c>
  6b612a:	eb 28                	jmp    6b6154 <http_parse_host+0x64>
  6b612c:	48 bf 46 38 20 00 00 	movabs $0x203846,%rdi
  6b6133:	00 00 00 
  6b6136:	48 be f5 2b 20 00 00 	movabs $0x202bf5,%rsi
  6b613d:	00 00 00 
  6b6140:	48 b9 75 6f 20 00 00 	movabs $0x206f75,%rcx
  6b6147:	00 00 00 
  6b614a:	ba 26 09 00 00       	mov    $0x926,%edx
  6b614f:	e8 3c 58 00 00       	callq  6bb990 <__assert_fail@plt>
  6b6154:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6b6158:	66 c7 40 0a 00 00    	movw   $0x0,0xa(%rax)
  6b615e:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  6b6161:	b9 04 00 00 00       	mov    $0x4,%ecx
  6b6166:	ba 02 00 00 00       	mov    $0x2,%edx
  6b616b:	83 f8 00             	cmp    $0x0,%eax
  6b616e:	0f 45 ca             	cmovne %edx,%ecx
  6b6171:	89 4d f4             	mov    %ecx,-0xc(%rbp)
  6b6174:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b6178:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  6b617c:	0f b7 49 08          	movzwl 0x8(%rcx),%ecx
  6b6180:	48 63 c9             	movslq %ecx,%rcx
  6b6183:	48 01 c8             	add    %rcx,%rax
  6b6186:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  6b618a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  6b618e:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  6b6192:	48 03 4d c8          	add    -0x38(%rbp),%rcx
  6b6196:	48 39 c8             	cmp    %rcx,%rax
  6b6199:	0f 83 4d 01 00 00    	jae    6b62ec <http_parse_host+0x1fc>
  6b619f:	8b 7d f4             	mov    -0xc(%rbp),%edi
  6b61a2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  6b61a6:	0f be 30             	movsbl (%rax),%esi
  6b61a9:	e8 82 01 00 00       	callq  6b6330 <http_parse_host_char>
  6b61ae:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  6b61b1:	83 7d e4 01          	cmpl   $0x1,-0x1c(%rbp)
  6b61b5:	75 0c                	jne    6b61c3 <http_parse_host+0xd3>
  6b61b7:	c7 45 e0 01 00 00 00 	movl   $0x1,-0x20(%rbp)
  6b61be:	e9 5d 01 00 00       	jmpq   6b6320 <http_parse_host+0x230>
  6b61c3:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b61c6:	83 c0 fd             	add    $0xfffffffd,%eax
  6b61c9:	89 c1                	mov    %eax,%ecx
  6b61cb:	83 e9 09             	sub    $0x9,%ecx
  6b61ce:	0f 87 ff 00 00 00    	ja     6b62d3 <http_parse_host+0x1e3>
  6b61d4:	48 8b 04 c5 e8 1c 20 	mov    0x201ce8(,%rax,8),%rax
  6b61db:	00 
  6b61dc:	ff e0                	jmpq   *%rax
  6b61de:	83 7d f4 06          	cmpl   $0x6,-0xc(%rbp)
  6b61e2:	74 13                	je     6b61f7 <http_parse_host+0x107>
  6b61e4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  6b61e8:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  6b61ec:	48 29 c8             	sub    %rcx,%rax
  6b61ef:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  6b61f3:	66 89 41 08          	mov    %ax,0x8(%rcx)
  6b61f7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6b61fb:	66 8b 48 0a          	mov    0xa(%rax),%cx
  6b61ff:	66 83 c1 01          	add    $0x1,%cx
  6b6203:	66 89 48 0a          	mov    %cx,0xa(%rax)
  6b6207:	e9 c9 00 00 00       	jmpq   6b62d5 <http_parse_host+0x1e5>
  6b620c:	83 7d f4 07          	cmpl   $0x7,-0xc(%rbp)
  6b6210:	74 13                	je     6b6225 <http_parse_host+0x135>
  6b6212:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  6b6216:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  6b621a:	48 29 c8             	sub    %rcx,%rax
  6b621d:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  6b6221:	66 89 41 08          	mov    %ax,0x8(%rcx)
  6b6225:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6b6229:	66 8b 48 0a          	mov    0xa(%rax),%cx
  6b622d:	66 83 c1 01          	add    $0x1,%cx
  6b6231:	66 89 48 0a          	mov    %cx,0xa(%rax)
  6b6235:	e9 9b 00 00 00       	jmpq   6b62d5 <http_parse_host+0x1e5>
  6b623a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6b623e:	66 8b 48 0a          	mov    0xa(%rax),%cx
  6b6242:	66 83 c1 01          	add    $0x1,%cx
  6b6246:	66 89 48 0a          	mov    %cx,0xa(%rax)
  6b624a:	e9 86 00 00 00       	jmpq   6b62d5 <http_parse_host+0x1e5>
  6b624f:	83 7d f4 0c          	cmpl   $0xc,-0xc(%rbp)
  6b6253:	74 2a                	je     6b627f <http_parse_host+0x18f>
  6b6255:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  6b6259:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  6b625d:	48 29 c8             	sub    %rcx,%rax
  6b6260:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  6b6264:	66 89 41 0c          	mov    %ax,0xc(%rcx)
  6b6268:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6b626c:	66 c7 40 0e 00 00    	movw   $0x0,0xe(%rax)
  6b6272:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6b6276:	0f b7 08             	movzwl (%rax),%ecx
  6b6279:	83 c9 04             	or     $0x4,%ecx
  6b627c:	66 89 08             	mov    %cx,(%rax)
  6b627f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6b6283:	66 8b 48 0e          	mov    0xe(%rax),%cx
  6b6287:	66 83 c1 01          	add    $0x1,%cx
  6b628b:	66 89 48 0e          	mov    %cx,0xe(%rax)
  6b628f:	eb 44                	jmp    6b62d5 <http_parse_host+0x1e5>
  6b6291:	83 7d f4 03          	cmpl   $0x3,-0xc(%rbp)
  6b6295:	74 2a                	je     6b62c1 <http_parse_host+0x1d1>
  6b6297:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  6b629b:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  6b629f:	48 29 c8             	sub    %rcx,%rax
  6b62a2:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  6b62a6:	66 89 41 1c          	mov    %ax,0x1c(%rcx)
  6b62aa:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6b62ae:	66 c7 40 1e 00 00    	movw   $0x0,0x1e(%rax)
  6b62b4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6b62b8:	0f b7 08             	movzwl (%rax),%ecx
  6b62bb:	83 c9 40             	or     $0x40,%ecx
  6b62be:	66 89 08             	mov    %cx,(%rax)
  6b62c1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6b62c5:	66 8b 48 1e          	mov    0x1e(%rax),%cx
  6b62c9:	66 83 c1 01          	add    $0x1,%cx
  6b62cd:	66 89 48 1e          	mov    %cx,0x1e(%rax)
  6b62d1:	eb 02                	jmp    6b62d5 <http_parse_host+0x1e5>
  6b62d3:	eb 00                	jmp    6b62d5 <http_parse_host+0x1e5>
  6b62d5:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b62d8:	89 45 f4             	mov    %eax,-0xc(%rbp)
  6b62db:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  6b62df:	48 83 c0 01          	add    $0x1,%rax
  6b62e3:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  6b62e7:	e9 9e fe ff ff       	jmpq   6b618a <http_parse_host+0x9a>
  6b62ec:	8b 45 f4             	mov    -0xc(%rbp),%eax
  6b62ef:	89 c1                	mov    %eax,%ecx
  6b62f1:	83 c1 fe             	add    $0xfffffffe,%ecx
  6b62f4:	83 e9 04             	sub    $0x4,%ecx
  6b62f7:	72 15                	jb     6b630e <http_parse_host+0x21e>
  6b62f9:	eb 00                	jmp    6b62fb <http_parse_host+0x20b>
  6b62fb:	89 c1                	mov    %eax,%ecx
  6b62fd:	83 e9 07             	sub    $0x7,%ecx
  6b6300:	74 0c                	je     6b630e <http_parse_host+0x21e>
  6b6302:	eb 00                	jmp    6b6304 <http_parse_host+0x214>
  6b6304:	83 c0 f7             	add    $0xfffffff7,%eax
  6b6307:	83 e8 02             	sub    $0x2,%eax
  6b630a:	77 0b                	ja     6b6317 <http_parse_host+0x227>
  6b630c:	eb 00                	jmp    6b630e <http_parse_host+0x21e>
  6b630e:	c7 45 e0 01 00 00 00 	movl   $0x1,-0x20(%rbp)
  6b6315:	eb 09                	jmp    6b6320 <http_parse_host+0x230>
  6b6317:	eb 00                	jmp    6b6319 <http_parse_host+0x229>
  6b6319:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%rbp)
  6b6320:	8b 45 e0             	mov    -0x20(%rbp),%eax
  6b6323:	48 83 c4 40          	add    $0x40,%rsp
  6b6327:	5d                   	pop    %rbp
  6b6328:	c3                   	retq   
  6b6329:	cc                   	int3   
  6b632a:	cc                   	int3   
  6b632b:	cc                   	int3   
  6b632c:	cc                   	int3   
  6b632d:	cc                   	int3   
  6b632e:	cc                   	int3   
  6b632f:	cc                   	int3   

00000000006b6330 <http_parse_host_char>:
  6b6330:	55                   	push   %rbp
  6b6331:	48 89 e5             	mov    %rsp,%rbp
  6b6334:	89 7d f4             	mov    %edi,-0xc(%rbp)
  6b6337:	40 88 75 ff          	mov    %sil,-0x1(%rbp)
  6b633b:	8b 45 f4             	mov    -0xc(%rbp),%eax
  6b633e:	83 c0 fe             	add    $0xfffffffe,%eax
  6b6341:	89 c1                	mov    %eax,%ecx
  6b6343:	83 e9 0a             	sub    $0xa,%ecx
  6b6346:	0f 87 fc 02 00 00    	ja     6b6648 <http_parse_host_char+0x318>
  6b634c:	48 8b 04 c5 38 1d 20 	mov    0x201d38(,%rax,8),%rax
  6b6353:	00 
  6b6354:	ff e0                	jmpq   *%rax
  6b6356:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b635a:	83 f8 40             	cmp    $0x40,%eax
  6b635d:	75 0c                	jne    6b636b <http_parse_host_char+0x3b>
  6b635f:	c7 45 f8 04 00 00 00 	movl   $0x4,-0x8(%rbp)
  6b6366:	e9 e6 02 00 00       	jmpq   6b6651 <http_parse_host_char+0x321>
  6b636b:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b636f:	83 c8 20             	or     $0x20,%eax
  6b6372:	0f b6 c0             	movzbl %al,%eax
  6b6375:	83 f8 61             	cmp    $0x61,%eax
  6b6378:	7c 13                	jl     6b638d <http_parse_host_char+0x5d>
  6b637a:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b637e:	83 c8 20             	or     $0x20,%eax
  6b6381:	0f b6 c0             	movzbl %al,%eax
  6b6384:	83 f8 7a             	cmp    $0x7a,%eax
  6b6387:	0f 8e b7 00 00 00    	jle    6b6444 <http_parse_host_char+0x114>
  6b638d:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b6391:	83 f8 30             	cmp    $0x30,%eax
  6b6394:	7c 0d                	jl     6b63a3 <http_parse_host_char+0x73>
  6b6396:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b639a:	83 f8 39             	cmp    $0x39,%eax
  6b639d:	0f 8e a1 00 00 00    	jle    6b6444 <http_parse_host_char+0x114>
  6b63a3:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b63a7:	83 f8 2d             	cmp    $0x2d,%eax
  6b63aa:	0f 84 94 00 00 00    	je     6b6444 <http_parse_host_char+0x114>
  6b63b0:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b63b4:	83 f8 5f             	cmp    $0x5f,%eax
  6b63b7:	0f 84 87 00 00 00    	je     6b6444 <http_parse_host_char+0x114>
  6b63bd:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b63c1:	83 f8 2e             	cmp    $0x2e,%eax
  6b63c4:	74 7e                	je     6b6444 <http_parse_host_char+0x114>
  6b63c6:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b63ca:	83 f8 21             	cmp    $0x21,%eax
  6b63cd:	74 75                	je     6b6444 <http_parse_host_char+0x114>
  6b63cf:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b63d3:	83 f8 7e             	cmp    $0x7e,%eax
  6b63d6:	74 6c                	je     6b6444 <http_parse_host_char+0x114>
  6b63d8:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b63dc:	83 f8 2a             	cmp    $0x2a,%eax
  6b63df:	74 63                	je     6b6444 <http_parse_host_char+0x114>
  6b63e1:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b63e5:	83 f8 27             	cmp    $0x27,%eax
  6b63e8:	74 5a                	je     6b6444 <http_parse_host_char+0x114>
  6b63ea:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b63ee:	83 f8 28             	cmp    $0x28,%eax
  6b63f1:	74 51                	je     6b6444 <http_parse_host_char+0x114>
  6b63f3:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b63f7:	83 f8 29             	cmp    $0x29,%eax
  6b63fa:	74 48                	je     6b6444 <http_parse_host_char+0x114>
  6b63fc:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b6400:	83 f8 25             	cmp    $0x25,%eax
  6b6403:	74 3f                	je     6b6444 <http_parse_host_char+0x114>
  6b6405:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b6409:	83 f8 3b             	cmp    $0x3b,%eax
  6b640c:	74 36                	je     6b6444 <http_parse_host_char+0x114>
  6b640e:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b6412:	83 f8 3a             	cmp    $0x3a,%eax
  6b6415:	74 2d                	je     6b6444 <http_parse_host_char+0x114>
  6b6417:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b641b:	83 f8 26             	cmp    $0x26,%eax
  6b641e:	74 24                	je     6b6444 <http_parse_host_char+0x114>
  6b6420:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b6424:	83 f8 3d             	cmp    $0x3d,%eax
  6b6427:	74 1b                	je     6b6444 <http_parse_host_char+0x114>
  6b6429:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b642d:	83 f8 2b             	cmp    $0x2b,%eax
  6b6430:	74 12                	je     6b6444 <http_parse_host_char+0x114>
  6b6432:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b6436:	83 f8 24             	cmp    $0x24,%eax
  6b6439:	74 09                	je     6b6444 <http_parse_host_char+0x114>
  6b643b:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b643f:	83 f8 2c             	cmp    $0x2c,%eax
  6b6442:	75 0c                	jne    6b6450 <http_parse_host_char+0x120>
  6b6444:	c7 45 f8 03 00 00 00 	movl   $0x3,-0x8(%rbp)
  6b644b:	e9 01 02 00 00       	jmpq   6b6651 <http_parse_host_char+0x321>
  6b6450:	e9 f5 01 00 00       	jmpq   6b664a <http_parse_host_char+0x31a>
  6b6455:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b6459:	83 f8 5b             	cmp    $0x5b,%eax
  6b645c:	75 0c                	jne    6b646a <http_parse_host_char+0x13a>
  6b645e:	c7 45 f8 05 00 00 00 	movl   $0x5,-0x8(%rbp)
  6b6465:	e9 e7 01 00 00       	jmpq   6b6651 <http_parse_host_char+0x321>
  6b646a:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b646e:	83 c8 20             	or     $0x20,%eax
  6b6471:	0f b6 c0             	movzbl %al,%eax
  6b6474:	83 f8 61             	cmp    $0x61,%eax
  6b6477:	7c 0f                	jl     6b6488 <http_parse_host_char+0x158>
  6b6479:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b647d:	83 c8 20             	or     $0x20,%eax
  6b6480:	0f b6 c0             	movzbl %al,%eax
  6b6483:	83 f8 7a             	cmp    $0x7a,%eax
  6b6486:	7e 24                	jle    6b64ac <http_parse_host_char+0x17c>
  6b6488:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b648c:	83 f8 30             	cmp    $0x30,%eax
  6b648f:	7c 09                	jl     6b649a <http_parse_host_char+0x16a>
  6b6491:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b6495:	83 f8 39             	cmp    $0x39,%eax
  6b6498:	7e 12                	jle    6b64ac <http_parse_host_char+0x17c>
  6b649a:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b649e:	83 f8 2e             	cmp    $0x2e,%eax
  6b64a1:	74 09                	je     6b64ac <http_parse_host_char+0x17c>
  6b64a3:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b64a7:	83 f8 2d             	cmp    $0x2d,%eax
  6b64aa:	75 0c                	jne    6b64b8 <http_parse_host_char+0x188>
  6b64ac:	c7 45 f8 06 00 00 00 	movl   $0x6,-0x8(%rbp)
  6b64b3:	e9 99 01 00 00       	jmpq   6b6651 <http_parse_host_char+0x321>
  6b64b8:	e9 8d 01 00 00       	jmpq   6b664a <http_parse_host_char+0x31a>
  6b64bd:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b64c1:	83 c8 20             	or     $0x20,%eax
  6b64c4:	0f b6 c0             	movzbl %al,%eax
  6b64c7:	83 f8 61             	cmp    $0x61,%eax
  6b64ca:	7c 0f                	jl     6b64db <http_parse_host_char+0x1ab>
  6b64cc:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b64d0:	83 c8 20             	or     $0x20,%eax
  6b64d3:	0f b6 c0             	movzbl %al,%eax
  6b64d6:	83 f8 7a             	cmp    $0x7a,%eax
  6b64d9:	7e 24                	jle    6b64ff <http_parse_host_char+0x1cf>
  6b64db:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b64df:	83 f8 30             	cmp    $0x30,%eax
  6b64e2:	7c 09                	jl     6b64ed <http_parse_host_char+0x1bd>
  6b64e4:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b64e8:	83 f8 39             	cmp    $0x39,%eax
  6b64eb:	7e 12                	jle    6b64ff <http_parse_host_char+0x1cf>
  6b64ed:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b64f1:	83 f8 2e             	cmp    $0x2e,%eax
  6b64f4:	74 09                	je     6b64ff <http_parse_host_char+0x1cf>
  6b64f6:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b64fa:	83 f8 2d             	cmp    $0x2d,%eax
  6b64fd:	75 0c                	jne    6b650b <http_parse_host_char+0x1db>
  6b64ff:	c7 45 f8 06 00 00 00 	movl   $0x6,-0x8(%rbp)
  6b6506:	e9 46 01 00 00       	jmpq   6b6651 <http_parse_host_char+0x321>
  6b650b:	eb 00                	jmp    6b650d <http_parse_host_char+0x1dd>
  6b650d:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b6511:	83 f8 3a             	cmp    $0x3a,%eax
  6b6514:	75 0c                	jne    6b6522 <http_parse_host_char+0x1f2>
  6b6516:	c7 45 f8 0b 00 00 00 	movl   $0xb,-0x8(%rbp)
  6b651d:	e9 2f 01 00 00       	jmpq   6b6651 <http_parse_host_char+0x321>
  6b6522:	e9 23 01 00 00       	jmpq   6b664a <http_parse_host_char+0x31a>
  6b6527:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b652b:	83 f8 5d             	cmp    $0x5d,%eax
  6b652e:	75 0c                	jne    6b653c <http_parse_host_char+0x20c>
  6b6530:	c7 45 f8 08 00 00 00 	movl   $0x8,-0x8(%rbp)
  6b6537:	e9 15 01 00 00       	jmpq   6b6651 <http_parse_host_char+0x321>
  6b653c:	eb 00                	jmp    6b653e <http_parse_host_char+0x20e>
  6b653e:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b6542:	83 f8 30             	cmp    $0x30,%eax
  6b6545:	7c 09                	jl     6b6550 <http_parse_host_char+0x220>
  6b6547:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b654b:	83 f8 39             	cmp    $0x39,%eax
  6b654e:	7e 30                	jle    6b6580 <http_parse_host_char+0x250>
  6b6550:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b6554:	83 c8 20             	or     $0x20,%eax
  6b6557:	0f b6 c0             	movzbl %al,%eax
  6b655a:	83 f8 61             	cmp    $0x61,%eax
  6b655d:	7c 0f                	jl     6b656e <http_parse_host_char+0x23e>
  6b655f:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b6563:	83 c8 20             	or     $0x20,%eax
  6b6566:	0f b6 c0             	movzbl %al,%eax
  6b6569:	83 f8 66             	cmp    $0x66,%eax
  6b656c:	7e 12                	jle    6b6580 <http_parse_host_char+0x250>
  6b656e:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b6572:	83 f8 3a             	cmp    $0x3a,%eax
  6b6575:	74 09                	je     6b6580 <http_parse_host_char+0x250>
  6b6577:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b657b:	83 f8 2e             	cmp    $0x2e,%eax
  6b657e:	75 0c                	jne    6b658c <http_parse_host_char+0x25c>
  6b6580:	c7 45 f8 07 00 00 00 	movl   $0x7,-0x8(%rbp)
  6b6587:	e9 c5 00 00 00       	jmpq   6b6651 <http_parse_host_char+0x321>
  6b658c:	83 7d f4 07          	cmpl   $0x7,-0xc(%rbp)
  6b6590:	75 15                	jne    6b65a7 <http_parse_host_char+0x277>
  6b6592:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b6596:	83 f8 25             	cmp    $0x25,%eax
  6b6599:	75 0c                	jne    6b65a7 <http_parse_host_char+0x277>
  6b659b:	c7 45 f8 09 00 00 00 	movl   $0x9,-0x8(%rbp)
  6b65a2:	e9 aa 00 00 00       	jmpq   6b6651 <http_parse_host_char+0x321>
  6b65a7:	e9 9e 00 00 00       	jmpq   6b664a <http_parse_host_char+0x31a>
  6b65ac:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b65b0:	83 f8 5d             	cmp    $0x5d,%eax
  6b65b3:	75 0c                	jne    6b65c1 <http_parse_host_char+0x291>
  6b65b5:	c7 45 f8 08 00 00 00 	movl   $0x8,-0x8(%rbp)
  6b65bc:	e9 90 00 00 00       	jmpq   6b6651 <http_parse_host_char+0x321>
  6b65c1:	eb 00                	jmp    6b65c3 <http_parse_host_char+0x293>
  6b65c3:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b65c7:	83 c8 20             	or     $0x20,%eax
  6b65ca:	0f b6 c0             	movzbl %al,%eax
  6b65cd:	83 f8 61             	cmp    $0x61,%eax
  6b65d0:	7c 0f                	jl     6b65e1 <http_parse_host_char+0x2b1>
  6b65d2:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b65d6:	83 c8 20             	or     $0x20,%eax
  6b65d9:	0f b6 c0             	movzbl %al,%eax
  6b65dc:	83 f8 7a             	cmp    $0x7a,%eax
  6b65df:	7e 3f                	jle    6b6620 <http_parse_host_char+0x2f0>
  6b65e1:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b65e5:	83 f8 30             	cmp    $0x30,%eax
  6b65e8:	7c 09                	jl     6b65f3 <http_parse_host_char+0x2c3>
  6b65ea:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b65ee:	83 f8 39             	cmp    $0x39,%eax
  6b65f1:	7e 2d                	jle    6b6620 <http_parse_host_char+0x2f0>
  6b65f3:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b65f7:	83 f8 25             	cmp    $0x25,%eax
  6b65fa:	74 24                	je     6b6620 <http_parse_host_char+0x2f0>
  6b65fc:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b6600:	83 f8 2e             	cmp    $0x2e,%eax
  6b6603:	74 1b                	je     6b6620 <http_parse_host_char+0x2f0>
  6b6605:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b6609:	83 f8 2d             	cmp    $0x2d,%eax
  6b660c:	74 12                	je     6b6620 <http_parse_host_char+0x2f0>
  6b660e:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b6612:	83 f8 5f             	cmp    $0x5f,%eax
  6b6615:	74 09                	je     6b6620 <http_parse_host_char+0x2f0>
  6b6617:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b661b:	83 f8 7e             	cmp    $0x7e,%eax
  6b661e:	75 09                	jne    6b6629 <http_parse_host_char+0x2f9>
  6b6620:	c7 45 f8 0a 00 00 00 	movl   $0xa,-0x8(%rbp)
  6b6627:	eb 28                	jmp    6b6651 <http_parse_host_char+0x321>
  6b6629:	eb 1f                	jmp    6b664a <http_parse_host_char+0x31a>
  6b662b:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b662f:	83 f8 30             	cmp    $0x30,%eax
  6b6632:	7c 12                	jl     6b6646 <http_parse_host_char+0x316>
  6b6634:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  6b6638:	83 f8 39             	cmp    $0x39,%eax
  6b663b:	7f 09                	jg     6b6646 <http_parse_host_char+0x316>
  6b663d:	c7 45 f8 0c 00 00 00 	movl   $0xc,-0x8(%rbp)
  6b6644:	eb 0b                	jmp    6b6651 <http_parse_host_char+0x321>
  6b6646:	eb 02                	jmp    6b664a <http_parse_host_char+0x31a>
  6b6648:	eb 00                	jmp    6b664a <http_parse_host_char+0x31a>
  6b664a:	c7 45 f8 01 00 00 00 	movl   $0x1,-0x8(%rbp)
  6b6651:	8b 45 f8             	mov    -0x8(%rbp),%eax
  6b6654:	5d                   	pop    %rbp
  6b6655:	c3                   	retq   
  6b6656:	cc                   	int3   
  6b6657:	cc                   	int3   
  6b6658:	cc                   	int3   
  6b6659:	cc                   	int3   
  6b665a:	cc                   	int3   
  6b665b:	cc                   	int3   
  6b665c:	cc                   	int3   
  6b665d:	cc                   	int3   
  6b665e:	cc                   	int3   
  6b665f:	cc                   	int3   

00000000006b6660 <http_parser_pause>:
  6b6660:	55                   	push   %rbp
  6b6661:	48 89 e5             	mov    %rsp,%rbp
  6b6664:	48 83 ec 10          	sub    $0x10,%rsp
  6b6668:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  6b666c:	89 75 f0             	mov    %esi,-0x10(%rbp)
  6b666f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6b6673:	8b 40 14             	mov    0x14(%rax),%eax
  6b6676:	c1 e8 18             	shr    $0x18,%eax
  6b6679:	83 e0 7f             	and    $0x7f,%eax
  6b667c:	83 f8 00             	cmp    $0x0,%eax
  6b667f:	74 12                	je     6b6693 <http_parser_pause+0x33>
  6b6681:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6b6685:	8b 40 14             	mov    0x14(%rax),%eax
  6b6688:	c1 e8 18             	shr    $0x18,%eax
  6b668b:	83 e0 7f             	and    $0x7f,%eax
  6b668e:	83 f8 1f             	cmp    $0x1f,%eax
  6b6691:	75 3e                	jne    6b66d1 <http_parser_pause+0x71>
  6b6693:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6b6697:	8b 40 04             	mov    0x4(%rax),%eax
  6b669a:	89 45 f4             	mov    %eax,-0xc(%rbp)
  6b669d:	8b 45 f4             	mov    -0xc(%rbp),%eax
  6b66a0:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  6b66a4:	89 41 04             	mov    %eax,0x4(%rcx)
  6b66a7:	8b 45 f0             	mov    -0x10(%rbp),%eax
  6b66aa:	31 c9                	xor    %ecx,%ecx
  6b66ac:	ba 1f 00 00 00       	mov    $0x1f,%edx
  6b66b1:	83 f8 00             	cmp    $0x0,%eax
  6b66b4:	0f 45 ca             	cmovne %edx,%ecx
  6b66b7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6b66bb:	8b 50 14             	mov    0x14(%rax),%edx
  6b66be:	83 e1 7f             	and    $0x7f,%ecx
  6b66c1:	c1 e1 18             	shl    $0x18,%ecx
  6b66c4:	81 e2 ff ff ff 80    	and    $0x80ffffff,%edx
  6b66ca:	09 ca                	or     %ecx,%edx
  6b66cc:	89 50 14             	mov    %edx,0x14(%rax)
  6b66cf:	eb 28                	jmp    6b66f9 <http_parser_pause+0x99>
  6b66d1:	48 bf 80 3d 20 00 00 	movabs $0x203d80,%rdi
  6b66d8:	00 00 00 
  6b66db:	48 be f5 2b 20 00 00 	movabs $0x202bf5,%rsi
  6b66e2:	00 00 00 
  6b66e5:	48 b9 95 5d 20 00 00 	movabs $0x205d95,%rcx
  6b66ec:	00 00 00 
  6b66ef:	ba fc 09 00 00       	mov    $0x9fc,%edx
  6b66f4:	e8 97 52 00 00       	callq  6bb990 <__assert_fail@plt>
  6b66f9:	48 83 c4 10          	add    $0x10,%rsp
  6b66fd:	5d                   	pop    %rbp
  6b66fe:	c3                   	retq   
  6b66ff:	cc                   	int3   

00000000006b6700 <http_body_is_final>:
  6b6700:	55                   	push   %rbp
  6b6701:	48 89 e5             	mov    %rsp,%rbp
  6b6704:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  6b6708:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6b670c:	8b 00                	mov    (%rax),%eax
  6b670e:	c1 e8 0a             	shr    $0xa,%eax
  6b6711:	83 e0 7f             	and    $0x7f,%eax
  6b6714:	83 f8 40             	cmp    $0x40,%eax
  6b6717:	0f 94 c0             	sete   %al
  6b671a:	24 01                	and    $0x1,%al
  6b671c:	0f b6 c0             	movzbl %al,%eax
  6b671f:	5d                   	pop    %rbp
  6b6720:	c3                   	retq   
  6b6721:	cc                   	int3   
  6b6722:	cc                   	int3   
  6b6723:	cc                   	int3   
  6b6724:	cc                   	int3   
  6b6725:	cc                   	int3   
  6b6726:	cc                   	int3   
  6b6727:	cc                   	int3   
  6b6728:	cc                   	int3   
  6b6729:	cc                   	int3   
  6b672a:	cc                   	int3   
  6b672b:	cc                   	int3   
  6b672c:	cc                   	int3   
  6b672d:	cc                   	int3   
  6b672e:	cc                   	int3   
  6b672f:	cc                   	int3   

00000000006b6730 <http_parser_version>:
  6b6730:	55                   	push   %rbp
  6b6731:	48 89 e5             	mov    %rsp,%rbp
  6b6734:	b8 04 09 02 00       	mov    $0x20904,%eax
  6b6739:	5d                   	pop    %rbp
  6b673a:	c3                   	retq   
  6b673b:	cc                   	int3   
  6b673c:	cc                   	int3   
  6b673d:	cc                   	int3   
  6b673e:	cc                   	int3   
  6b673f:	cc                   	int3   

00000000006b6740 <strnlen>:
  6b6740:	55                   	push   %rbp
  6b6741:	48 89 e5             	mov    %rsp,%rbp
  6b6744:	48 83 ec 20          	sub    $0x20,%rsp
  6b6748:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  6b674c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  6b6750:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  6b6754:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  6b6758:	31 f6                	xor    %esi,%esi
  6b675a:	e8 41 52 00 00       	callq  6bb9a0 <memchr@plt>
  6b675f:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b6763:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  6b6768:	75 0a                	jne    6b6774 <strnlen+0x34>
  6b676a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b676e:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  6b6772:	eb 0f                	jmp    6b6783 <strnlen+0x43>
  6b6774:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6b6778:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  6b677c:	48 29 c8             	sub    %rcx,%rax
  6b677f:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  6b6783:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  6b6787:	48 83 c4 20          	add    $0x20,%rsp
  6b678b:	5d                   	pop    %rbp
  6b678c:	c3                   	retq   
  6b678d:	cc                   	int3   
  6b678e:	cc                   	int3   
  6b678f:	cc                   	int3   

00000000006b6790 <strlncat>:
  6b6790:	55                   	push   %rbp
  6b6791:	48 89 e5             	mov    %rsp,%rbp
  6b6794:	48 83 ec 40          	sub    $0x40,%rsp
  6b6798:	48 89 7d e0          	mov    %rdi,-0x20(%rbp)
  6b679c:	48 89 75 e8          	mov    %rsi,-0x18(%rbp)
  6b67a0:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
  6b67a4:	48 89 4d c0          	mov    %rcx,-0x40(%rbp)
  6b67a8:	48 8b 7d c8          	mov    -0x38(%rbp),%rdi
  6b67ac:	48 8b 75 c0          	mov    -0x40(%rbp),%rsi
  6b67b0:	e8 8b ff ff ff       	callq  6b6740 <strnlen>
  6b67b5:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  6b67b9:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
  6b67bd:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
  6b67c1:	e8 7a ff ff ff       	callq  6b6740 <strnlen>
  6b67c6:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b67ca:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6b67ce:	48 3b 45 e8          	cmp    -0x18(%rbp),%rax
  6b67d2:	73 4d                	jae    6b6821 <strlncat+0x91>
  6b67d4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  6b67d8:	48 2b 45 f8          	sub    -0x8(%rbp),%rax
  6b67dc:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  6b67e0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b67e4:	48 3b 45 d0          	cmp    -0x30(%rbp),%rax
  6b67e8:	73 06                	jae    6b67f0 <strlncat+0x60>
  6b67ea:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b67ee:	eb 08                	jmp    6b67f8 <strlncat+0x68>
  6b67f0:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  6b67f4:	48 83 e8 01          	sub    $0x1,%rax
  6b67f8:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  6b67fc:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
  6b6800:	48 03 7d f8          	add    -0x8(%rbp),%rdi
  6b6804:	48 8b 75 c8          	mov    -0x38(%rbp),%rsi
  6b6808:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  6b680c:	e8 9f 52 00 00       	callq  6bbab0 <memcpy@plt>
  6b6811:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  6b6815:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  6b6819:	48 03 4d d8          	add    -0x28(%rbp),%rcx
  6b681d:	c6 04 08 00          	movb   $0x0,(%rax,%rcx,1)
  6b6821:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  6b6825:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b6829:	48 03 4d f8          	add    -0x8(%rbp),%rcx
  6b682d:	48 39 c8             	cmp    %rcx,%rax
  6b6830:	76 02                	jbe    6b6834 <strlncat+0xa4>
  6b6832:	eb 28                	jmp    6b685c <strlncat+0xcc>
  6b6834:	48 bf ae 67 20 00 00 	movabs $0x2067ae,%rdi
  6b683b:	00 00 00 
  6b683e:	48 be e4 81 20 00 00 	movabs $0x2081e4,%rsi
  6b6845:	00 00 00 
  6b6848:	48 b9 1e 50 20 00 00 	movabs $0x20501e,%rcx
  6b684f:	00 00 00 
  6b6852:	ba 90 08 00 00       	mov    $0x890,%edx
  6b6857:	e8 34 51 00 00       	callq  6bb990 <__assert_fail@plt>
  6b685c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b6860:	48 03 45 f8          	add    -0x8(%rbp),%rax
  6b6864:	48 83 c4 40          	add    $0x40,%rsp
  6b6868:	5d                   	pop    %rbp
  6b6869:	c3                   	retq   
  6b686a:	cc                   	int3   
  6b686b:	cc                   	int3   
  6b686c:	cc                   	int3   
  6b686d:	cc                   	int3   
  6b686e:	cc                   	int3   
  6b686f:	cc                   	int3   

00000000006b6870 <strlncpy>:
  6b6870:	55                   	push   %rbp
  6b6871:	48 89 e5             	mov    %rsp,%rbp
  6b6874:	48 83 ec 30          	sub    $0x30,%rsp
  6b6878:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  6b687c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  6b6880:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
  6b6884:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
  6b6888:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
  6b688c:	48 8b 75 d0          	mov    -0x30(%rbp),%rsi
  6b6890:	e8 ab fe ff ff       	callq  6b6740 <strnlen>
  6b6895:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b6899:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
  6b689e:	76 39                	jbe    6b68d9 <strlncpy+0x69>
  6b68a0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6b68a4:	48 3b 45 f0          	cmp    -0x10(%rbp),%rax
  6b68a8:	73 06                	jae    6b68b0 <strlncpy+0x40>
  6b68aa:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6b68ae:	eb 08                	jmp    6b68b8 <strlncpy+0x48>
  6b68b0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b68b4:	48 83 e8 01          	sub    $0x1,%rax
  6b68b8:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  6b68bc:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
  6b68c0:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
  6b68c4:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  6b68c8:	e8 e3 51 00 00       	callq  6bbab0 <memcpy@plt>
  6b68cd:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b68d1:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  6b68d5:	c6 04 08 00          	movb   $0x0,(%rax,%rcx,1)
  6b68d9:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b68dd:	48 3b 45 f8          	cmp    -0x8(%rbp),%rax
  6b68e1:	76 02                	jbe    6b68e5 <strlncpy+0x75>
  6b68e3:	eb 28                	jmp    6b690d <strlncpy+0x9d>
  6b68e5:	48 bf 1e 25 20 00 00 	movabs $0x20251e,%rdi
  6b68ec:	00 00 00 
  6b68ef:	48 be e4 81 20 00 00 	movabs $0x2081e4,%rsi
  6b68f6:	00 00 00 
  6b68f9:	48 b9 95 64 20 00 00 	movabs $0x206495,%rcx
  6b6900:	00 00 00 
  6b6903:	ba a2 08 00 00       	mov    $0x8a2,%edx
  6b6908:	e8 83 50 00 00       	callq  6bb990 <__assert_fail@plt>
  6b690d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6b6911:	48 83 c4 30          	add    $0x30,%rsp
  6b6915:	5d                   	pop    %rbp
  6b6916:	c3                   	retq   
  6b6917:	cc                   	int3   
  6b6918:	cc                   	int3   
  6b6919:	cc                   	int3   
  6b691a:	cc                   	int3   
  6b691b:	cc                   	int3   
  6b691c:	cc                   	int3   
  6b691d:	cc                   	int3   
  6b691e:	cc                   	int3   
  6b691f:	cc                   	int3   

00000000006b6920 <request_url_cb.cfi>:
  6b6920:	55                   	push   %rbp
  6b6921:	48 89 e5             	mov    %rsp,%rbp
  6b6924:	48 83 ec 20          	sub    $0x20,%rsp
  6b6928:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  6b692c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  6b6930:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
  6b6934:	48 b8 88 b3 6c 00 00 	movabs $0x6cb388,%rax
  6b693b:	00 00 00 
  6b693e:	48 39 45 e8          	cmp    %rax,-0x18(%rbp)
  6b6942:	75 02                	jne    6b6946 <request_url_cb.cfi+0x26>
  6b6944:	eb 28                	jmp    6b696e <request_url_cb.cfi+0x4e>
  6b6946:	48 bf 0e 37 20 00 00 	movabs $0x20370e,%rdi
  6b694d:	00 00 00 
  6b6950:	48 be e4 81 20 00 00 	movabs $0x2081e4,%rsi
  6b6957:	00 00 00 
  6b695a:	48 b9 7b 7d 20 00 00 	movabs $0x207d7b,%rcx
  6b6961:	00 00 00 
  6b6964:	ba a9 08 00 00       	mov    $0x8a9,%edx
  6b6969:	e8 22 50 00 00       	callq  6bb990 <__assert_fail@plt>
  6b696e:	48 63 04 25 98 b7 71 	movslq 0x71b798,%rax
  6b6975:	00 
  6b6976:	48 bf b0 b3 6c 00 00 	movabs $0x6cb3b0,%rdi
  6b697d:	00 00 00 
  6b6980:	48 69 c0 c8 00 01 00 	imul   $0x100c8,%rax,%rax
  6b6987:	48 01 c7             	add    %rax,%rdi
  6b698a:	48 81 c7 1c 10 00 00 	add    $0x101c,%rdi
  6b6991:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  6b6995:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  6b6999:	be 00 08 00 00       	mov    $0x800,%esi
  6b699e:	e8 ed fd ff ff       	callq  6b6790 <strlncat>
  6b69a3:	31 c0                	xor    %eax,%eax
  6b69a5:	48 83 c4 20          	add    $0x20,%rsp
  6b69a9:	5d                   	pop    %rbp
  6b69aa:	c3                   	retq   
  6b69ab:	cc                   	int3   
  6b69ac:	cc                   	int3   
  6b69ad:	cc                   	int3   
  6b69ae:	cc                   	int3   
  6b69af:	cc                   	int3   

00000000006b69b0 <header_field_cb.cfi>:
  6b69b0:	55                   	push   %rbp
  6b69b1:	48 89 e5             	mov    %rsp,%rbp
  6b69b4:	48 83 ec 20          	sub    $0x20,%rsp
  6b69b8:	48 89 7d e0          	mov    %rdi,-0x20(%rbp)
  6b69bc:	48 89 75 e8          	mov    %rsi,-0x18(%rbp)
  6b69c0:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
  6b69c4:	48 b8 88 b3 6c 00 00 	movabs $0x6cb388,%rax
  6b69cb:	00 00 00 
  6b69ce:	48 39 45 e0          	cmp    %rax,-0x20(%rbp)
  6b69d2:	75 02                	jne    6b69d6 <header_field_cb.cfi+0x26>
  6b69d4:	eb 28                	jmp    6b69fe <header_field_cb.cfi+0x4e>
  6b69d6:	48 bf 0e 37 20 00 00 	movabs $0x20370e,%rdi
  6b69dd:	00 00 00 
  6b69e0:	48 be e4 81 20 00 00 	movabs $0x2081e4,%rsi
  6b69e7:	00 00 00 
  6b69ea:	48 b9 eb 81 20 00 00 	movabs $0x2081eb,%rcx
  6b69f1:	00 00 00 
  6b69f4:	ba b4 08 00 00       	mov    $0x8b4,%edx
  6b69f9:	e8 92 4f 00 00       	callq  6bb990 <__assert_fail@plt>
  6b69fe:	48 63 04 25 98 b7 71 	movslq 0x71b798,%rax
  6b6a05:	00 
  6b6a06:	48 b9 b0 b3 6c 00 00 	movabs $0x6cb3b0,%rcx
  6b6a0d:	00 00 00 
  6b6a10:	48 69 c0 c8 00 01 00 	imul   $0x100c8,%rax,%rax
  6b6a17:	48 01 c1             	add    %rax,%rcx
  6b6a1a:	48 89 4d f8          	mov    %rcx,-0x8(%rbp)
  6b6a1e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6b6a22:	83 b8 40 30 00 00 01 	cmpl   $0x1,0x3040(%rax)
  6b6a29:	74 13                	je     6b6a3e <header_field_cb.cfi+0x8e>
  6b6a2b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6b6a2f:	8b 88 3c 30 00 00    	mov    0x303c(%rax),%ecx
  6b6a35:	83 c1 01             	add    $0x1,%ecx
  6b6a38:	89 88 3c 30 00 00    	mov    %ecx,0x303c(%rax)
  6b6a3e:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  6b6a42:	48 81 c7 44 30 00 00 	add    $0x3044,%rdi
  6b6a49:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6b6a4d:	8b 80 3c 30 00 00    	mov    0x303c(%rax),%eax
  6b6a53:	83 e8 01             	sub    $0x1,%eax
  6b6a56:	48 98                	cltq   
  6b6a58:	48 c1 e0 0c          	shl    $0xc,%rax
  6b6a5c:	48 01 c7             	add    %rax,%rdi
  6b6a5f:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  6b6a63:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b6a67:	be 00 08 00 00       	mov    $0x800,%esi
  6b6a6c:	e8 1f fd ff ff       	callq  6b6790 <strlncat>
  6b6a71:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6b6a75:	c7 80 40 30 00 00 01 	movl   $0x1,0x3040(%rax)
  6b6a7c:	00 00 00 
  6b6a7f:	31 c0                	xor    %eax,%eax
  6b6a81:	48 83 c4 20          	add    $0x20,%rsp
  6b6a85:	5d                   	pop    %rbp
  6b6a86:	c3                   	retq   
  6b6a87:	cc                   	int3   
  6b6a88:	cc                   	int3   
  6b6a89:	cc                   	int3   
  6b6a8a:	cc                   	int3   
  6b6a8b:	cc                   	int3   
  6b6a8c:	cc                   	int3   
  6b6a8d:	cc                   	int3   
  6b6a8e:	cc                   	int3   
  6b6a8f:	cc                   	int3   

00000000006b6a90 <header_value_cb.cfi>:
  6b6a90:	55                   	push   %rbp
  6b6a91:	48 89 e5             	mov    %rsp,%rbp
  6b6a94:	48 83 ec 20          	sub    $0x20,%rsp
  6b6a98:	48 89 7d e0          	mov    %rdi,-0x20(%rbp)
  6b6a9c:	48 89 75 e8          	mov    %rsi,-0x18(%rbp)
  6b6aa0:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
  6b6aa4:	48 b8 88 b3 6c 00 00 	movabs $0x6cb388,%rax
  6b6aab:	00 00 00 
  6b6aae:	48 39 45 e0          	cmp    %rax,-0x20(%rbp)
  6b6ab2:	75 02                	jne    6b6ab6 <header_value_cb.cfi+0x26>
  6b6ab4:	eb 28                	jmp    6b6ade <header_value_cb.cfi+0x4e>
  6b6ab6:	48 bf 0e 37 20 00 00 	movabs $0x20370e,%rdi
  6b6abd:	00 00 00 
  6b6ac0:	48 be e4 81 20 00 00 	movabs $0x2081e4,%rsi
  6b6ac7:	00 00 00 
  6b6aca:	48 b9 41 74 20 00 00 	movabs $0x207441,%rcx
  6b6ad1:	00 00 00 
  6b6ad4:	ba c7 08 00 00       	mov    $0x8c7,%edx
  6b6ad9:	e8 b2 4e 00 00       	callq  6bb990 <__assert_fail@plt>
  6b6ade:	48 63 04 25 98 b7 71 	movslq 0x71b798,%rax
  6b6ae5:	00 
  6b6ae6:	48 b9 b0 b3 6c 00 00 	movabs $0x6cb3b0,%rcx
  6b6aed:	00 00 00 
  6b6af0:	48 69 c0 c8 00 01 00 	imul   $0x100c8,%rax,%rax
  6b6af7:	48 01 c1             	add    %rax,%rcx
  6b6afa:	48 89 4d f8          	mov    %rcx,-0x8(%rbp)
  6b6afe:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  6b6b02:	48 81 c7 44 30 00 00 	add    $0x3044,%rdi
  6b6b09:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6b6b0d:	8b 80 3c 30 00 00    	mov    0x303c(%rax),%eax
  6b6b13:	83 e8 01             	sub    $0x1,%eax
  6b6b16:	48 98                	cltq   
  6b6b18:	48 c1 e0 0c          	shl    $0xc,%rax
  6b6b1c:	48 01 c7             	add    %rax,%rdi
  6b6b1f:	48 81 c7 00 08 00 00 	add    $0x800,%rdi
  6b6b26:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  6b6b2a:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6b6b2e:	be 00 08 00 00       	mov    $0x800,%esi
  6b6b33:	e8 58 fc ff ff       	callq  6b6790 <strlncat>
  6b6b38:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6b6b3c:	c7 80 40 30 00 00 02 	movl   $0x2,0x3040(%rax)
  6b6b43:	00 00 00 
  6b6b46:	31 c0                	xor    %eax,%eax
  6b6b48:	48 83 c4 20          	add    $0x20,%rsp
  6b6b4c:	5d                   	pop    %rbp
  6b6b4d:	c3                   	retq   
  6b6b4e:	cc                   	int3   
  6b6b4f:	cc                   	int3   

00000000006b6b50 <check_body_is_final>:
  6b6b50:	55                   	push   %rbp
  6b6b51:	48 89 e5             	mov    %rsp,%rbp
  6b6b54:	48 83 ec 10          	sub    $0x10,%rsp
  6b6b58:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  6b6b5c:	48 63 04 25 98 b7 71 	movslq 0x71b798,%rax
  6b6b63:	00 
  6b6b64:	48 b9 b0 b3 6c 00 00 	movabs $0x6cb3b0,%rcx
  6b6b6b:	00 00 00 
  6b6b6e:	48 69 c0 c8 00 01 00 	imul   $0x100c8,%rax,%rax
  6b6b75:	48 01 c1             	add    %rax,%rcx
  6b6b78:	83 b9 bc 00 01 00 00 	cmpl   $0x0,0x100bc(%rcx)
  6b6b7f:	74 41                	je     6b6bc2 <check_body_is_final+0x72>
  6b6b81:	48 8b 3c 25 00 b8 71 	mov    0x71b800,%rdi
  6b6b88:	00 
  6b6b89:	48 be 53 1e 20 00 00 	movabs $0x201e53,%rsi
  6b6b90:	00 00 00 
  6b6b93:	b0 00                	mov    $0x0,%al
  6b6b95:	e8 16 4e 00 00       	callq  6bb9b0 <fprintf@plt>
  6b6b9a:	48 bf cc 46 20 00 00 	movabs $0x2046cc,%rdi
  6b6ba1:	00 00 00 
  6b6ba4:	48 be e4 81 20 00 00 	movabs $0x2081e4,%rsi
  6b6bab:	00 00 00 
  6b6bae:	48 b9 54 50 20 00 00 	movabs $0x205054,%rcx
  6b6bb5:	00 00 00 
  6b6bb8:	ba db 08 00 00       	mov    $0x8db,%edx
  6b6bbd:	e8 ce 4d 00 00       	callq  6bb990 <__assert_fail@plt>
  6b6bc2:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  6b6bc6:	e8 35 fb ff ff       	callq  6b6700 <http_body_is_final>
  6b6bcb:	48 63 0c 25 98 b7 71 	movslq 0x71b798,%rcx
  6b6bd2:	00 
  6b6bd3:	48 ba b0 b3 6c 00 00 	movabs $0x6cb3b0,%rdx
  6b6bda:	00 00 00 
  6b6bdd:	48 69 c9 c8 00 01 00 	imul   $0x100c8,%rcx,%rcx
  6b6be4:	48 01 ca             	add    %rcx,%rdx
  6b6be7:	89 82 bc 00 01 00    	mov    %eax,0x100bc(%rdx)
  6b6bed:	48 83 c4 10          	add    $0x10,%rsp
  6b6bf1:	5d                   	pop    %rbp
  6b6bf2:	c3                   	retq   
  6b6bf3:	cc                   	int3   
  6b6bf4:	cc                   	int3   
  6b6bf5:	cc                   	int3   
  6b6bf6:	cc                   	int3   
  6b6bf7:	cc                   	int3   
  6b6bf8:	cc                   	int3   
  6b6bf9:	cc                   	int3   
  6b6bfa:	cc                   	int3   
  6b6bfb:	cc                   	int3   
  6b6bfc:	cc                   	int3   
  6b6bfd:	cc                   	int3   
  6b6bfe:	cc                   	int3   
  6b6bff:	cc                   	int3   

00000000006b6c00 <body_cb.cfi>:
  6b6c00:	55                   	push   %rbp
  6b6c01:	48 89 e5             	mov    %rsp,%rbp
  6b6c04:	48 83 ec 20          	sub    $0x20,%rsp
  6b6c08:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
  6b6c0c:	48 89 75 e8          	mov    %rsi,-0x18(%rbp)
  6b6c10:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
  6b6c14:	48 b8 88 b3 6c 00 00 	movabs $0x6cb388,%rax
  6b6c1b:	00 00 00 
  6b6c1e:	48 39 45 f0          	cmp    %rax,-0x10(%rbp)
  6b6c22:	75 02                	jne    6b6c26 <body_cb.cfi+0x26>
  6b6c24:	eb 28                	jmp    6b6c4e <body_cb.cfi+0x4e>
  6b6c26:	48 bf 0e 37 20 00 00 	movabs $0x20370e,%rdi
  6b6c2d:	00 00 00 
  6b6c30:	48 be e4 81 20 00 00 	movabs $0x2081e4,%rsi
  6b6c37:	00 00 00 
  6b6c3a:	48 b9 c0 67 20 00 00 	movabs $0x2067c0,%rcx
  6b6c41:	00 00 00 
  6b6c44:	ba e4 08 00 00       	mov    $0x8e4,%edx
  6b6c49:	e8 42 4d 00 00       	callq  6bb990 <__assert_fail@plt>
  6b6c4e:	48 63 04 25 98 b7 71 	movslq 0x71b798,%rax
  6b6c55:	00 
  6b6c56:	48 bf b0 b3 6c 00 00 	movabs $0x6cb3b0,%rdi
  6b6c5d:	00 00 00 
  6b6c60:	48 69 c0 c8 00 01 00 	imul   $0x100c8,%rax,%rax
  6b6c67:	48 01 c7             	add    %rax,%rdi
  6b6c6a:	48 81 c7 1c 28 00 00 	add    $0x281c,%rdi
  6b6c71:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  6b6c75:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  6b6c79:	be 00 08 00 00       	mov    $0x800,%esi
  6b6c7e:	e8 0d fb ff ff       	callq  6b6790 <strlncat>
  6b6c83:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6b6c87:	48 63 0c 25 98 b7 71 	movslq 0x71b798,%rcx
  6b6c8e:	00 
  6b6c8f:	48 ba b0 b3 6c 00 00 	movabs $0x6cb3b0,%rdx
  6b6c96:	00 00 00 
  6b6c99:	48 69 c9 c8 00 01 00 	imul   $0x100c8,%rcx,%rcx
  6b6ca0:	48 01 ca             	add    %rcx,%rdx
  6b6ca3:	48 03 82 20 30 00 00 	add    0x3020(%rdx),%rax
  6b6caa:	48 89 82 20 30 00 00 	mov    %rax,0x3020(%rdx)
  6b6cb1:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b6cb5:	e8 96 fe ff ff       	callq  6b6b50 <check_body_is_final>
  6b6cba:	31 c0                	xor    %eax,%eax
  6b6cbc:	48 83 c4 20          	add    $0x20,%rsp
  6b6cc0:	5d                   	pop    %rbp
  6b6cc1:	c3                   	retq   
  6b6cc2:	cc                   	int3   
  6b6cc3:	cc                   	int3   
  6b6cc4:	cc                   	int3   
  6b6cc5:	cc                   	int3   
  6b6cc6:	cc                   	int3   
  6b6cc7:	cc                   	int3   
  6b6cc8:	cc                   	int3   
  6b6cc9:	cc                   	int3   
  6b6cca:	cc                   	int3   
  6b6ccb:	cc                   	int3   
  6b6ccc:	cc                   	int3   
  6b6ccd:	cc                   	int3   
  6b6cce:	cc                   	int3   
  6b6ccf:	cc                   	int3   

00000000006b6cd0 <count_body_cb.cfi>:
  6b6cd0:	55                   	push   %rbp
  6b6cd1:	48 89 e5             	mov    %rsp,%rbp
  6b6cd4:	48 83 ec 20          	sub    $0x20,%rsp
  6b6cd8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  6b6cdc:	48 89 75 e8          	mov    %rsi,-0x18(%rbp)
  6b6ce0:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
  6b6ce4:	48 b8 88 b3 6c 00 00 	movabs $0x6cb388,%rax
  6b6ceb:	00 00 00 
  6b6cee:	48 39 45 f8          	cmp    %rax,-0x8(%rbp)
  6b6cf2:	75 02                	jne    6b6cf6 <count_body_cb.cfi+0x26>
  6b6cf4:	eb 28                	jmp    6b6d1e <count_body_cb.cfi+0x4e>
  6b6cf6:	48 bf 0e 37 20 00 00 	movabs $0x20370e,%rdi
  6b6cfd:	00 00 00 
  6b6d00:	48 be e4 81 20 00 00 	movabs $0x2081e4,%rsi
  6b6d07:	00 00 00 
  6b6d0a:	48 b9 aa 6c 20 00 00 	movabs $0x206caa,%rcx
  6b6d11:	00 00 00 
  6b6d14:	ba f2 08 00 00       	mov    $0x8f2,%edx
  6b6d19:	e8 72 4c 00 00       	callq  6bb990 <__assert_fail@plt>
  6b6d1e:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
  6b6d23:	74 02                	je     6b6d27 <count_body_cb.cfi+0x57>
  6b6d25:	eb 28                	jmp    6b6d4f <count_body_cb.cfi+0x7f>
  6b6d27:	48 bf 5b 52 20 00 00 	movabs $0x20525b,%rdi
  6b6d2e:	00 00 00 
  6b6d31:	48 be e4 81 20 00 00 	movabs $0x2081e4,%rsi
  6b6d38:	00 00 00 
  6b6d3b:	48 b9 aa 6c 20 00 00 	movabs $0x206caa,%rcx
  6b6d42:	00 00 00 
  6b6d45:	ba f3 08 00 00       	mov    $0x8f3,%edx
  6b6d4a:	e8 41 4c 00 00       	callq  6bb990 <__assert_fail@plt>
  6b6d4f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b6d53:	48 63 0c 25 98 b7 71 	movslq 0x71b798,%rcx
  6b6d5a:	00 
  6b6d5b:	48 ba b0 b3 6c 00 00 	movabs $0x6cb3b0,%rdx
  6b6d62:	00 00 00 
  6b6d65:	48 69 c9 c8 00 01 00 	imul   $0x100c8,%rcx,%rcx
  6b6d6c:	48 01 ca             	add    %rcx,%rdx
  6b6d6f:	48 03 82 20 30 00 00 	add    0x3020(%rdx),%rax
  6b6d76:	48 89 82 20 30 00 00 	mov    %rax,0x3020(%rdx)
  6b6d7d:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  6b6d81:	e8 ca fd ff ff       	callq  6b6b50 <check_body_is_final>
  6b6d86:	31 c0                	xor    %eax,%eax
  6b6d88:	48 83 c4 20          	add    $0x20,%rsp
  6b6d8c:	5d                   	pop    %rbp
  6b6d8d:	c3                   	retq   
  6b6d8e:	cc                   	int3   
  6b6d8f:	cc                   	int3   

00000000006b6d90 <message_begin_cb.cfi>:
  6b6d90:	55                   	push   %rbp
  6b6d91:	48 89 e5             	mov    %rsp,%rbp
  6b6d94:	48 83 ec 10          	sub    $0x10,%rsp
  6b6d98:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  6b6d9c:	48 b8 88 b3 6c 00 00 	movabs $0x6cb388,%rax
  6b6da3:	00 00 00 
  6b6da6:	48 39 45 f8          	cmp    %rax,-0x8(%rbp)
  6b6daa:	75 02                	jne    6b6dae <message_begin_cb.cfi+0x1e>
  6b6dac:	eb 28                	jmp    6b6dd6 <message_begin_cb.cfi+0x46>
  6b6dae:	48 bf 0e 37 20 00 00 	movabs $0x20370e,%rdi
  6b6db5:	00 00 00 
  6b6db8:	48 be e4 81 20 00 00 	movabs $0x2081e4,%rsi
  6b6dbf:	00 00 00 
  6b6dc2:	48 b9 11 48 20 00 00 	movabs $0x204811,%rcx
  6b6dc9:	00 00 00 
  6b6dcc:	ba fc 08 00 00       	mov    $0x8fc,%edx
  6b6dd1:	e8 ba 4b 00 00       	callq  6bb990 <__assert_fail@plt>
  6b6dd6:	48 63 04 25 98 b7 71 	movslq 0x71b798,%rax
  6b6ddd:	00 
  6b6dde:	48 b9 b0 b3 6c 00 00 	movabs $0x6cb3b0,%rcx
  6b6de5:	00 00 00 
  6b6de8:	48 69 c0 c8 00 01 00 	imul   $0x100c8,%rax,%rax
  6b6def:	48 01 c1             	add    %rax,%rcx
  6b6df2:	83 b9 a8 00 01 00 00 	cmpl   $0x0,0x100a8(%rcx)
  6b6df9:	75 02                	jne    6b6dfd <message_begin_cb.cfi+0x6d>
  6b6dfb:	eb 28                	jmp    6b6e25 <message_begin_cb.cfi+0x95>
  6b6dfd:	48 bf 56 72 20 00 00 	movabs $0x207256,%rdi
  6b6e04:	00 00 00 
  6b6e07:	48 be e4 81 20 00 00 	movabs $0x2081e4,%rsi
  6b6e0e:	00 00 00 
  6b6e11:	48 b9 11 48 20 00 00 	movabs $0x204811,%rcx
  6b6e18:	00 00 00 
  6b6e1b:	ba fd 08 00 00       	mov    $0x8fd,%edx
  6b6e20:	e8 6b 4b 00 00       	callq  6bb990 <__assert_fail@plt>
  6b6e25:	48 63 04 25 98 b7 71 	movslq 0x71b798,%rax
  6b6e2c:	00 
  6b6e2d:	48 b9 b0 b3 6c 00 00 	movabs $0x6cb3b0,%rcx
  6b6e34:	00 00 00 
  6b6e37:	48 69 c0 c8 00 01 00 	imul   $0x100c8,%rax,%rax
  6b6e3e:	48 01 c1             	add    %rax,%rcx
  6b6e41:	c7 81 a8 00 01 00 01 	movl   $0x1,0x100a8(%rcx)
  6b6e48:	00 00 00 
  6b6e4b:	31 c0                	xor    %eax,%eax
  6b6e4d:	48 83 c4 10          	add    $0x10,%rsp
  6b6e51:	5d                   	pop    %rbp
  6b6e52:	c3                   	retq   
  6b6e53:	cc                   	int3   
  6b6e54:	cc                   	int3   
  6b6e55:	cc                   	int3   
  6b6e56:	cc                   	int3   
  6b6e57:	cc                   	int3   
  6b6e58:	cc                   	int3   
  6b6e59:	cc                   	int3   
  6b6e5a:	cc                   	int3   
  6b6e5b:	cc                   	int3   
  6b6e5c:	cc                   	int3   
  6b6e5d:	cc                   	int3   
  6b6e5e:	cc                   	int3   
  6b6e5f:	cc                   	int3   

00000000006b6e60 <headers_complete_cb.cfi>:
  6b6e60:	55                   	push   %rbp
  6b6e61:	48 89 e5             	mov    %rsp,%rbp
  6b6e64:	48 83 ec 10          	sub    $0x10,%rsp
  6b6e68:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  6b6e6c:	48 b8 88 b3 6c 00 00 	movabs $0x6cb388,%rax
  6b6e73:	00 00 00 
  6b6e76:	48 39 45 f8          	cmp    %rax,-0x8(%rbp)
  6b6e7a:	75 02                	jne    6b6e7e <headers_complete_cb.cfi+0x1e>
  6b6e7c:	eb 28                	jmp    6b6ea6 <headers_complete_cb.cfi+0x46>
  6b6e7e:	48 bf 0e 37 20 00 00 	movabs $0x20370e,%rdi
  6b6e85:	00 00 00 
  6b6e88:	48 be e4 81 20 00 00 	movabs $0x2081e4,%rsi
  6b6e8f:	00 00 00 
  6b6e92:	48 b9 ce 46 20 00 00 	movabs $0x2046ce,%rcx
  6b6e99:	00 00 00 
  6b6e9c:	ba 05 09 00 00       	mov    $0x905,%edx
  6b6ea1:	e8 ea 4a 00 00       	callq  6bb990 <__assert_fail@plt>
  6b6ea6:	8b 04 25 9c b3 6c 00 	mov    0x6cb39c,%eax
  6b6ead:	c1 e8 10             	shr    $0x10,%eax
  6b6eb0:	25 ff 00 00 00       	and    $0xff,%eax
  6b6eb5:	48 63 0c 25 98 b7 71 	movslq 0x71b798,%rcx
  6b6ebc:	00 
  6b6ebd:	48 ba b0 b3 6c 00 00 	movabs $0x6cb3b0,%rdx
  6b6ec4:	00 00 00 
  6b6ec7:	48 69 c9 c8 00 01 00 	imul   $0x100c8,%rcx,%rcx
  6b6ece:	48 01 ca             	add    %rcx,%rdx
  6b6ed1:	89 42 14             	mov    %eax,0x14(%rdx)
  6b6ed4:	8b 04 25 9c b3 6c 00 	mov    0x6cb39c,%eax
  6b6edb:	25 ff ff 00 00       	and    $0xffff,%eax
  6b6ee0:	48 63 0c 25 98 b7 71 	movslq 0x71b798,%rcx
  6b6ee7:	00 
  6b6ee8:	48 ba b0 b3 6c 00 00 	movabs $0x6cb3b0,%rdx
  6b6eef:	00 00 00 
  6b6ef2:	48 69 c9 c8 00 01 00 	imul   $0x100c8,%rcx,%rcx
  6b6ef9:	48 01 ca             	add    %rcx,%rdx
  6b6efc:	89 42 18             	mov    %eax,0x18(%rdx)
  6b6eff:	66 8b 04 25 98 b3 6c 	mov    0x6cb398,%ax
  6b6f06:	00 
  6b6f07:	48 63 0c 25 98 b7 71 	movslq 0x71b798,%rcx
  6b6f0e:	00 
  6b6f0f:	48 ba b0 b3 6c 00 00 	movabs $0x6cb3b0,%rdx
  6b6f16:	00 00 00 
  6b6f19:	48 69 c9 c8 00 01 00 	imul   $0x100c8,%rcx,%rcx
  6b6f20:	48 01 ca             	add    %rcx,%rdx
  6b6f23:	66 89 82 98 00 01 00 	mov    %ax,0x10098(%rdx)
  6b6f2a:	66 8b 04 25 9a b3 6c 	mov    0x6cb39a,%ax
  6b6f31:	00 
  6b6f32:	48 63 0c 25 98 b7 71 	movslq 0x71b798,%rcx
  6b6f39:	00 
  6b6f3a:	48 ba b0 b3 6c 00 00 	movabs $0x6cb3b0,%rdx
  6b6f41:	00 00 00 
  6b6f44:	48 69 c9 c8 00 01 00 	imul   $0x100c8,%rcx,%rcx
  6b6f4b:	48 01 ca             	add    %rcx,%rdx
  6b6f4e:	66 89 82 9a 00 01 00 	mov    %ax,0x1009a(%rdx)
  6b6f55:	48 8b 04 25 90 b3 6c 	mov    0x6cb390,%rax
  6b6f5c:	00 
  6b6f5d:	48 63 0c 25 98 b7 71 	movslq 0x71b798,%rcx
  6b6f64:	00 
  6b6f65:	48 ba b0 b3 6c 00 00 	movabs $0x6cb3b0,%rdx
  6b6f6c:	00 00 00 
  6b6f6f:	48 69 c9 c8 00 01 00 	imul   $0x100c8,%rcx,%rcx
  6b6f76:	48 01 ca             	add    %rcx,%rdx
  6b6f79:	48 89 82 a0 00 01 00 	mov    %rax,0x100a0(%rdx)
  6b6f80:	48 63 04 25 98 b7 71 	movslq 0x71b798,%rax
  6b6f87:	00 
  6b6f88:	48 b9 b0 b3 6c 00 00 	movabs $0x6cb3b0,%rcx
  6b6f8f:	00 00 00 
  6b6f92:	48 69 c0 c8 00 01 00 	imul   $0x100c8,%rax,%rax
  6b6f99:	48 01 c1             	add    %rax,%rcx
  6b6f9c:	c7 81 ac 00 01 00 01 	movl   $0x1,0x100ac(%rcx)
  6b6fa3:	00 00 00 
  6b6fa6:	48 bf 88 b3 6c 00 00 	movabs $0x6cb388,%rdi
  6b6fad:	00 00 00 
  6b6fb0:	e8 5b e6 ff ff       	callq  6b5610 <http_should_keep_alive>
  6b6fb5:	48 63 0c 25 98 b7 71 	movslq 0x71b798,%rcx
  6b6fbc:	00 
  6b6fbd:	48 ba b0 b3 6c 00 00 	movabs $0x6cb3b0,%rdx
  6b6fc4:	00 00 00 
  6b6fc7:	48 69 c9 c8 00 01 00 	imul   $0x100c8,%rcx,%rcx
  6b6fce:	48 01 ca             	add    %rcx,%rdx
  6b6fd1:	89 82 44 00 01 00    	mov    %eax,0x10044(%rdx)
  6b6fd7:	31 c0                	xor    %eax,%eax
  6b6fd9:	48 83 c4 10          	add    $0x10,%rsp
  6b6fdd:	5d                   	pop    %rbp
  6b6fde:	c3                   	retq   
  6b6fdf:	cc                   	int3   

00000000006b6fe0 <message_complete_cb.cfi>:
  6b6fe0:	55                   	push   %rbp
  6b6fe1:	48 89 e5             	mov    %rsp,%rbp
  6b6fe4:	53                   	push   %rbx
  6b6fe5:	50                   	push   %rax
  6b6fe6:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
  6b6fea:	48 b8 88 b3 6c 00 00 	movabs $0x6cb388,%rax
  6b6ff1:	00 00 00 
  6b6ff4:	48 39 45 f0          	cmp    %rax,-0x10(%rbp)
  6b6ff8:	75 02                	jne    6b6ffc <message_complete_cb.cfi+0x1c>
  6b6ffa:	eb 28                	jmp    6b7024 <message_complete_cb.cfi+0x44>
  6b6ffc:	48 bf 0e 37 20 00 00 	movabs $0x20370e,%rdi
  6b7003:	00 00 00 
  6b7006:	48 be e4 81 20 00 00 	movabs $0x2081e4,%rsi
  6b700d:	00 00 00 
  6b7010:	48 b9 b0 61 20 00 00 	movabs $0x2061b0,%rcx
  6b7017:	00 00 00 
  6b701a:	ba 13 09 00 00       	mov    $0x913,%edx
  6b701f:	e8 6c 49 00 00       	callq  6bb990 <__assert_fail@plt>
  6b7024:	48 63 04 25 98 b7 71 	movslq 0x71b798,%rax
  6b702b:	00 
  6b702c:	48 b9 b0 b3 6c 00 00 	movabs $0x6cb3b0,%rcx
  6b7033:	00 00 00 
  6b7036:	48 69 c0 c8 00 01 00 	imul   $0x100c8,%rax,%rax
  6b703d:	48 01 c1             	add    %rax,%rcx
  6b7040:	8b 99 44 00 01 00    	mov    0x10044(%rcx),%ebx
  6b7046:	48 bf 88 b3 6c 00 00 	movabs $0x6cb388,%rdi
  6b704d:	00 00 00 
  6b7050:	e8 bb e5 ff ff       	callq  6b5610 <http_should_keep_alive>
  6b7055:	39 c3                	cmp    %eax,%ebx
  6b7057:	74 41                	je     6b709a <message_complete_cb.cfi+0xba>
  6b7059:	48 8b 3c 25 00 b8 71 	mov    0x71b800,%rdi
  6b7060:	00 
  6b7061:	48 be b3 7d 20 00 00 	movabs $0x207db3,%rsi
  6b7068:	00 00 00 
  6b706b:	b0 00                	mov    $0x0,%al
  6b706d:	e8 3e 49 00 00       	callq  6bb9b0 <fprintf@plt>
  6b7072:	48 bf cc 46 20 00 00 	movabs $0x2046cc,%rdi
  6b7079:	00 00 00 
  6b707c:	48 be e4 81 20 00 00 	movabs $0x2081e4,%rsi
  6b7083:	00 00 00 
  6b7086:	48 b9 b0 61 20 00 00 	movabs $0x2061b0,%rcx
  6b708d:	00 00 00 
  6b7090:	ba 1a 09 00 00       	mov    $0x91a,%edx
  6b7095:	e8 f6 48 00 00       	callq  6bb990 <__assert_fail@plt>
  6b709a:	48 63 04 25 98 b7 71 	movslq 0x71b798,%rax
  6b70a1:	00 
  6b70a2:	48 b9 b0 b3 6c 00 00 	movabs $0x6cb3b0,%rcx
  6b70a9:	00 00 00 
  6b70ac:	48 69 c0 c8 00 01 00 	imul   $0x100c8,%rax,%rax
  6b70b3:	48 01 c1             	add    %rax,%rcx
  6b70b6:	48 83 b9 20 30 00 00 	cmpq   $0x0,0x3020(%rcx)
  6b70bd:	00 
  6b70be:	74 74                	je     6b7134 <message_complete_cb.cfi+0x154>
  6b70c0:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b70c4:	e8 37 f6 ff ff       	callq  6b6700 <http_body_is_final>
  6b70c9:	83 f8 00             	cmp    $0x0,%eax
  6b70cc:	74 66                	je     6b7134 <message_complete_cb.cfi+0x154>
  6b70ce:	48 63 04 25 98 b7 71 	movslq 0x71b798,%rax
  6b70d5:	00 
  6b70d6:	48 b9 b0 b3 6c 00 00 	movabs $0x6cb3b0,%rcx
  6b70dd:	00 00 00 
  6b70e0:	48 69 c0 c8 00 01 00 	imul   $0x100c8,%rax,%rax
  6b70e7:	48 01 c1             	add    %rax,%rcx
  6b70ea:	83 b9 bc 00 01 00 00 	cmpl   $0x0,0x100bc(%rcx)
  6b70f1:	75 41                	jne    6b7134 <message_complete_cb.cfi+0x154>
  6b70f3:	48 8b 3c 25 00 b8 71 	mov    0x71b800,%rdi
  6b70fa:	00 
  6b70fb:	48 be 53 1e 20 00 00 	movabs $0x201e53,%rsi
  6b7102:	00 00 00 
  6b7105:	b0 00                	mov    $0x0,%al
  6b7107:	e8 a4 48 00 00       	callq  6bb9b0 <fprintf@plt>
  6b710c:	48 bf cc 46 20 00 00 	movabs $0x2046cc,%rdi
  6b7113:	00 00 00 
  6b7116:	48 be e4 81 20 00 00 	movabs $0x2081e4,%rsi
  6b711d:	00 00 00 
  6b7120:	48 b9 b0 61 20 00 00 	movabs $0x2061b0,%rcx
  6b7127:	00 00 00 
  6b712a:	ba 25 09 00 00       	mov    $0x925,%edx
  6b712f:	e8 5c 48 00 00       	callq  6bb990 <__assert_fail@plt>
  6b7134:	48 63 04 25 98 b7 71 	movslq 0x71b798,%rax
  6b713b:	00 
  6b713c:	48 b9 b0 b3 6c 00 00 	movabs $0x6cb3b0,%rcx
  6b7143:	00 00 00 
  6b7146:	48 69 c0 c8 00 01 00 	imul   $0x100c8,%rax,%rax
  6b714d:	48 01 c1             	add    %rax,%rcx
  6b7150:	c7 81 b0 00 01 00 01 	movl   $0x1,0x100b0(%rcx)
  6b7157:	00 00 00 
  6b715a:	8b 04 25 9c b7 71 00 	mov    0x71b79c,%eax
  6b7161:	48 63 0c 25 98 b7 71 	movslq 0x71b798,%rcx
  6b7168:	00 
  6b7169:	48 ba b0 b3 6c 00 00 	movabs $0x6cb3b0,%rdx
  6b7170:	00 00 00 
  6b7173:	48 69 c9 c8 00 01 00 	imul   $0x100c8,%rcx,%rcx
  6b717a:	48 01 ca             	add    %rcx,%rdx
  6b717d:	89 82 b8 00 01 00    	mov    %eax,0x100b8(%rdx)
  6b7183:	8b 04 25 98 b7 71 00 	mov    0x71b798,%eax
  6b718a:	83 c0 01             	add    $0x1,%eax
  6b718d:	89 04 25 98 b7 71 00 	mov    %eax,0x71b798
  6b7194:	31 c0                	xor    %eax,%eax
  6b7196:	48 83 c4 08          	add    $0x8,%rsp
  6b719a:	5b                   	pop    %rbx
  6b719b:	5d                   	pop    %rbp
  6b719c:	c3                   	retq   
  6b719d:	cc                   	int3   
  6b719e:	cc                   	int3   
  6b719f:	cc                   	int3   

00000000006b71a0 <response_status_cb.cfi>:
  6b71a0:	55                   	push   %rbp
  6b71a1:	48 89 e5             	mov    %rsp,%rbp
  6b71a4:	48 83 ec 20          	sub    $0x20,%rsp
  6b71a8:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  6b71ac:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  6b71b0:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
  6b71b4:	48 b8 88 b3 6c 00 00 	movabs $0x6cb388,%rax
  6b71bb:	00 00 00 
  6b71be:	48 39 45 e8          	cmp    %rax,-0x18(%rbp)
  6b71c2:	75 02                	jne    6b71c6 <response_status_cb.cfi+0x26>
  6b71c4:	eb 28                	jmp    6b71ee <response_status_cb.cfi+0x4e>
  6b71c6:	48 bf 0e 37 20 00 00 	movabs $0x20370e,%rdi
  6b71cd:	00 00 00 
  6b71d0:	48 be e4 81 20 00 00 	movabs $0x2081e4,%rsi
  6b71d7:	00 00 00 
  6b71da:	48 b9 4e 7a 20 00 00 	movabs $0x207a4e,%rcx
  6b71e1:	00 00 00 
  6b71e4:	ba 34 09 00 00       	mov    $0x934,%edx
  6b71e9:	e8 a2 47 00 00       	callq  6bb990 <__assert_fail@plt>
  6b71ee:	48 63 04 25 98 b7 71 	movslq 0x71b798,%rax
  6b71f5:	00 
  6b71f6:	48 b9 b0 b3 6c 00 00 	movabs $0x6cb3b0,%rcx
  6b71fd:	00 00 00 
  6b7200:	48 69 c0 c8 00 01 00 	imul   $0x100c8,%rax,%rax
  6b7207:	48 01 c1             	add    %rax,%rcx
  6b720a:	c7 81 b4 00 01 00 01 	movl   $0x1,0x100b4(%rcx)
  6b7211:	00 00 00 
  6b7214:	48 63 04 25 98 b7 71 	movslq 0x71b798,%rax
  6b721b:	00 
  6b721c:	48 bf b0 b3 6c 00 00 	movabs $0x6cb3b0,%rdi
  6b7223:	00 00 00 
  6b7226:	48 69 c0 c8 00 01 00 	imul   $0x100c8,%rax,%rax
  6b722d:	48 01 c7             	add    %rax,%rdi
  6b7230:	48 83 c7 1c          	add    $0x1c,%rdi
  6b7234:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  6b7238:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  6b723c:	be 00 08 00 00       	mov    $0x800,%esi
  6b7241:	e8 4a f5 ff ff       	callq  6b6790 <strlncat>
  6b7246:	31 c0                	xor    %eax,%eax
  6b7248:	48 83 c4 20          	add    $0x20,%rsp
  6b724c:	5d                   	pop    %rbp
  6b724d:	c3                   	retq   
  6b724e:	cc                   	int3   
  6b724f:	cc                   	int3   

00000000006b7250 <chunk_header_cb.cfi>:
  6b7250:	55                   	push   %rbp
  6b7251:	48 89 e5             	mov    %rsp,%rbp
  6b7254:	48 83 ec 10          	sub    $0x10,%rsp
  6b7258:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
  6b725c:	48 b8 88 b3 6c 00 00 	movabs $0x6cb388,%rax
  6b7263:	00 00 00 
  6b7266:	48 39 45 f0          	cmp    %rax,-0x10(%rbp)
  6b726a:	75 02                	jne    6b726e <chunk_header_cb.cfi+0x1e>
  6b726c:	eb 28                	jmp    6b7296 <chunk_header_cb.cfi+0x46>
  6b726e:	48 bf 0e 37 20 00 00 	movabs $0x20370e,%rdi
  6b7275:	00 00 00 
  6b7278:	48 be e4 81 20 00 00 	movabs $0x2081e4,%rsi
  6b727f:	00 00 00 
  6b7282:	48 b9 63 3e 20 00 00 	movabs $0x203e63,%rcx
  6b7289:	00 00 00 
  6b728c:	ba 42 09 00 00       	mov    $0x942,%edx
  6b7291:	e8 fa 46 00 00       	callq  6bb990 <__assert_fail@plt>
  6b7296:	48 63 04 25 98 b7 71 	movslq 0x71b798,%rax
  6b729d:	00 
  6b729e:	48 b9 b0 b3 6c 00 00 	movabs $0x6cb3b0,%rcx
  6b72a5:	00 00 00 
  6b72a8:	48 69 c0 c8 00 01 00 	imul   $0x100c8,%rax,%rax
  6b72af:	48 01 c1             	add    %rax,%rcx
  6b72b2:	8b 81 48 00 01 00    	mov    0x10048(%rcx),%eax
  6b72b8:	89 45 fc             	mov    %eax,-0x4(%rbp)
  6b72bb:	48 63 04 25 98 b7 71 	movslq 0x71b798,%rax
  6b72c2:	00 
  6b72c3:	48 b9 b0 b3 6c 00 00 	movabs $0x6cb3b0,%rcx
  6b72ca:	00 00 00 
  6b72cd:	48 69 c0 c8 00 01 00 	imul   $0x100c8,%rax,%rax
  6b72d4:	48 01 c1             	add    %rax,%rcx
  6b72d7:	8b 81 48 00 01 00    	mov    0x10048(%rcx),%eax
  6b72dd:	83 c0 01             	add    $0x1,%eax
  6b72e0:	89 81 48 00 01 00    	mov    %eax,0x10048(%rcx)
  6b72e6:	83 7d fc 10          	cmpl   $0x10,-0x4(%rbp)
  6b72ea:	7d 2f                	jge    6b731b <chunk_header_cb.cfi+0xcb>
  6b72ec:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b72f0:	48 8b 40 08          	mov    0x8(%rax),%rax
  6b72f4:	48 63 0c 25 98 b7 71 	movslq 0x71b798,%rcx
  6b72fb:	00 
  6b72fc:	48 ba b0 b3 6c 00 00 	movabs $0x6cb3b0,%rdx
  6b7303:	00 00 00 
  6b7306:	48 69 c9 c8 00 01 00 	imul   $0x100c8,%rcx,%rcx
  6b730d:	48 01 ca             	add    %rcx,%rdx
  6b7310:	48 63 4d fc          	movslq -0x4(%rbp),%rcx
  6b7314:	89 84 8a 50 00 01 00 	mov    %eax,0x10050(%rdx,%rcx,4)
  6b731b:	31 c0                	xor    %eax,%eax
  6b731d:	48 83 c4 10          	add    $0x10,%rsp
  6b7321:	5d                   	pop    %rbp
  6b7322:	c3                   	retq   
  6b7323:	cc                   	int3   
  6b7324:	cc                   	int3   
  6b7325:	cc                   	int3   
  6b7326:	cc                   	int3   
  6b7327:	cc                   	int3   
  6b7328:	cc                   	int3   
  6b7329:	cc                   	int3   
  6b732a:	cc                   	int3   
  6b732b:	cc                   	int3   
  6b732c:	cc                   	int3   
  6b732d:	cc                   	int3   
  6b732e:	cc                   	int3   
  6b732f:	cc                   	int3   

00000000006b7330 <chunk_complete_cb.cfi>:
  6b7330:	55                   	push   %rbp
  6b7331:	48 89 e5             	mov    %rsp,%rbp
  6b7334:	48 83 ec 10          	sub    $0x10,%rsp
  6b7338:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  6b733c:	48 b8 88 b3 6c 00 00 	movabs $0x6cb388,%rax
  6b7343:	00 00 00 
  6b7346:	48 39 45 f8          	cmp    %rax,-0x8(%rbp)
  6b734a:	75 02                	jne    6b734e <chunk_complete_cb.cfi+0x1e>
  6b734c:	eb 28                	jmp    6b7376 <chunk_complete_cb.cfi+0x46>
  6b734e:	48 bf 0e 37 20 00 00 	movabs $0x20370e,%rdi
  6b7355:	00 00 00 
  6b7358:	48 be e4 81 20 00 00 	movabs $0x2081e4,%rsi
  6b735f:	00 00 00 
  6b7362:	48 b9 2a 40 20 00 00 	movabs $0x20402a,%rcx
  6b7369:	00 00 00 
  6b736c:	ba 4f 09 00 00       	mov    $0x94f,%edx
  6b7371:	e8 1a 46 00 00       	callq  6bb990 <__assert_fail@plt>
  6b7376:	48 63 04 25 98 b7 71 	movslq 0x71b798,%rax
  6b737d:	00 
  6b737e:	48 b9 b0 b3 6c 00 00 	movabs $0x6cb3b0,%rcx
  6b7385:	00 00 00 
  6b7388:	48 69 c0 c8 00 01 00 	imul   $0x100c8,%rax,%rax
  6b738f:	48 01 c1             	add    %rax,%rcx
  6b7392:	8b 81 48 00 01 00    	mov    0x10048(%rcx),%eax
  6b7398:	48 63 0c 25 98 b7 71 	movslq 0x71b798,%rcx
  6b739f:	00 
  6b73a0:	48 ba b0 b3 6c 00 00 	movabs $0x6cb3b0,%rdx
  6b73a7:	00 00 00 
  6b73aa:	48 69 c9 c8 00 01 00 	imul   $0x100c8,%rcx,%rcx
  6b73b1:	48 01 ca             	add    %rcx,%rdx
  6b73b4:	8b 8a 4c 00 01 00    	mov    0x1004c(%rdx),%ecx
  6b73ba:	83 c1 01             	add    $0x1,%ecx
  6b73bd:	39 c8                	cmp    %ecx,%eax
  6b73bf:	75 02                	jne    6b73c3 <chunk_complete_cb.cfi+0x93>
  6b73c1:	eb 28                	jmp    6b73eb <chunk_complete_cb.cfi+0xbb>
  6b73c3:	48 bf 7b 44 20 00 00 	movabs $0x20447b,%rdi
  6b73ca:	00 00 00 
  6b73cd:	48 be e4 81 20 00 00 	movabs $0x2081e4,%rsi
  6b73d4:	00 00 00 
  6b73d7:	48 b9 2a 40 20 00 00 	movabs $0x20402a,%rcx
  6b73de:	00 00 00 
  6b73e1:	ba 56 09 00 00       	mov    $0x956,%edx
  6b73e6:	e8 a5 45 00 00       	callq  6bb990 <__assert_fail@plt>
  6b73eb:	48 63 04 25 98 b7 71 	movslq 0x71b798,%rax
  6b73f2:	00 
  6b73f3:	48 b9 b0 b3 6c 00 00 	movabs $0x6cb3b0,%rcx
  6b73fa:	00 00 00 
  6b73fd:	48 69 c0 c8 00 01 00 	imul   $0x100c8,%rax,%rax
  6b7404:	48 01 c1             	add    %rax,%rcx
  6b7407:	8b 81 4c 00 01 00    	mov    0x1004c(%rcx),%eax
  6b740d:	83 c0 01             	add    $0x1,%eax
  6b7410:	89 81 4c 00 01 00    	mov    %eax,0x1004c(%rcx)
  6b7416:	31 c0                	xor    %eax,%eax
  6b7418:	48 83 c4 10          	add    $0x10,%rsp
  6b741c:	5d                   	pop    %rbp
  6b741d:	c3                   	retq   
  6b741e:	cc                   	int3   
  6b741f:	cc                   	int3   

00000000006b7420 <dontcall_message_begin_cb.cfi>:
  6b7420:	55                   	push   %rbp
  6b7421:	48 89 e5             	mov    %rsp,%rbp
  6b7424:	48 83 ec 10          	sub    $0x10,%rsp
  6b7428:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  6b742c:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  6b7431:	74 02                	je     6b7435 <dontcall_message_begin_cb.cfi+0x15>
  6b7433:	eb 00                	jmp    6b7435 <dontcall_message_begin_cb.cfi+0x15>
  6b7435:	48 8b 3c 25 00 b8 71 	mov    0x71b800,%rdi
  6b743c:	00 
  6b743d:	48 be d7 61 20 00 00 	movabs $0x2061d7,%rsi
  6b7444:	00 00 00 
  6b7447:	b0 00                	mov    $0x0,%al
  6b7449:	e8 62 45 00 00       	callq  6bb9b0 <fprintf@plt>
  6b744e:	e8 6d 45 00 00       	callq  6bb9c0 <abort@plt>
  6b7453:	cc                   	int3   
  6b7454:	cc                   	int3   
  6b7455:	cc                   	int3   
  6b7456:	cc                   	int3   
  6b7457:	cc                   	int3   
  6b7458:	cc                   	int3   
  6b7459:	cc                   	int3   
  6b745a:	cc                   	int3   
  6b745b:	cc                   	int3   
  6b745c:	cc                   	int3   
  6b745d:	cc                   	int3   
  6b745e:	cc                   	int3   
  6b745f:	cc                   	int3   

00000000006b7460 <dontcall_header_field_cb.cfi>:
  6b7460:	55                   	push   %rbp
  6b7461:	48 89 e5             	mov    %rsp,%rbp
  6b7464:	48 83 ec 20          	sub    $0x20,%rsp
  6b7468:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  6b746c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  6b7470:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
  6b7474:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
  6b7479:	75 0e                	jne    6b7489 <dontcall_header_field_cb.cfi+0x29>
  6b747b:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
  6b7480:	75 07                	jne    6b7489 <dontcall_header_field_cb.cfi+0x29>
  6b7482:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  6b7487:	74 02                	je     6b748b <dontcall_header_field_cb.cfi+0x2b>
  6b7489:	eb 00                	jmp    6b748b <dontcall_header_field_cb.cfi+0x2b>
  6b748b:	48 8b 3c 25 00 b8 71 	mov    0x71b800,%rdi
  6b7492:	00 
  6b7493:	48 be 86 3e 20 00 00 	movabs $0x203e86,%rsi
  6b749a:	00 00 00 
  6b749d:	b0 00                	mov    $0x0,%al
  6b749f:	e8 0c 45 00 00       	callq  6bb9b0 <fprintf@plt>
  6b74a4:	e8 17 45 00 00       	callq  6bb9c0 <abort@plt>
  6b74a9:	cc                   	int3   
  6b74aa:	cc                   	int3   
  6b74ab:	cc                   	int3   
  6b74ac:	cc                   	int3   
  6b74ad:	cc                   	int3   
  6b74ae:	cc                   	int3   
  6b74af:	cc                   	int3   

00000000006b74b0 <dontcall_header_value_cb.cfi>:
  6b74b0:	55                   	push   %rbp
  6b74b1:	48 89 e5             	mov    %rsp,%rbp
  6b74b4:	48 83 ec 20          	sub    $0x20,%rsp
  6b74b8:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  6b74bc:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  6b74c0:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
  6b74c4:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
  6b74c9:	75 0e                	jne    6b74d9 <dontcall_header_value_cb.cfi+0x29>
  6b74cb:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
  6b74d0:	75 07                	jne    6b74d9 <dontcall_header_value_cb.cfi+0x29>
  6b74d2:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  6b74d7:	74 02                	je     6b74db <dontcall_header_value_cb.cfi+0x2b>
  6b74d9:	eb 00                	jmp    6b74db <dontcall_header_value_cb.cfi+0x2b>
  6b74db:	48 8b 3c 25 00 b8 71 	mov    0x71b800,%rdi
  6b74e2:	00 
  6b74e3:	48 be 0e 62 20 00 00 	movabs $0x20620e,%rsi
  6b74ea:	00 00 00 
  6b74ed:	b0 00                	mov    $0x0,%al
  6b74ef:	e8 bc 44 00 00       	callq  6bb9b0 <fprintf@plt>
  6b74f4:	e8 c7 44 00 00       	callq  6bb9c0 <abort@plt>
  6b74f9:	cc                   	int3   
  6b74fa:	cc                   	int3   
  6b74fb:	cc                   	int3   
  6b74fc:	cc                   	int3   
  6b74fd:	cc                   	int3   
  6b74fe:	cc                   	int3   
  6b74ff:	cc                   	int3   

00000000006b7500 <dontcall_request_url_cb.cfi>:
  6b7500:	55                   	push   %rbp
  6b7501:	48 89 e5             	mov    %rsp,%rbp
  6b7504:	48 83 ec 20          	sub    $0x20,%rsp
  6b7508:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  6b750c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  6b7510:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
  6b7514:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
  6b7519:	75 0e                	jne    6b7529 <dontcall_request_url_cb.cfi+0x29>
  6b751b:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
  6b7520:	75 07                	jne    6b7529 <dontcall_request_url_cb.cfi+0x29>
  6b7522:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  6b7527:	74 02                	je     6b752b <dontcall_request_url_cb.cfi+0x2b>
  6b7529:	eb 00                	jmp    6b752b <dontcall_request_url_cb.cfi+0x2b>
  6b752b:	48 8b 3c 25 00 b8 71 	mov    0x71b800,%rdi
  6b7532:	00 
  6b7533:	48 be a2 2a 20 00 00 	movabs $0x202aa2,%rsi
  6b753a:	00 00 00 
  6b753d:	b0 00                	mov    $0x0,%al
  6b753f:	e8 6c 44 00 00       	callq  6bb9b0 <fprintf@plt>
  6b7544:	e8 77 44 00 00       	callq  6bb9c0 <abort@plt>
  6b7549:	cc                   	int3   
  6b754a:	cc                   	int3   
  6b754b:	cc                   	int3   
  6b754c:	cc                   	int3   
  6b754d:	cc                   	int3   
  6b754e:	cc                   	int3   
  6b754f:	cc                   	int3   

00000000006b7550 <dontcall_body_cb.cfi>:
  6b7550:	55                   	push   %rbp
  6b7551:	48 89 e5             	mov    %rsp,%rbp
  6b7554:	48 83 ec 20          	sub    $0x20,%rsp
  6b7558:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  6b755c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  6b7560:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
  6b7564:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
  6b7569:	75 0e                	jne    6b7579 <dontcall_body_cb.cfi+0x29>
  6b756b:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
  6b7570:	75 07                	jne    6b7579 <dontcall_body_cb.cfi+0x29>
  6b7572:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  6b7577:	74 02                	je     6b757b <dontcall_body_cb.cfi+0x2b>
  6b7579:	eb 00                	jmp    6b757b <dontcall_body_cb.cfi+0x2b>
  6b757b:	48 8b 3c 25 00 b8 71 	mov    0x71b800,%rdi
  6b7582:	00 
  6b7583:	48 be 82 50 20 00 00 	movabs $0x205082,%rsi
  6b758a:	00 00 00 
  6b758d:	b0 00                	mov    $0x0,%al
  6b758f:	e8 1c 44 00 00       	callq  6bb9b0 <fprintf@plt>
  6b7594:	e8 27 44 00 00       	callq  6bb9c0 <abort@plt>
  6b7599:	cc                   	int3   
  6b759a:	cc                   	int3   
  6b759b:	cc                   	int3   
  6b759c:	cc                   	int3   
  6b759d:	cc                   	int3   
  6b759e:	cc                   	int3   
  6b759f:	cc                   	int3   

00000000006b75a0 <dontcall_headers_complete_cb.cfi>:
  6b75a0:	55                   	push   %rbp
  6b75a1:	48 89 e5             	mov    %rsp,%rbp
  6b75a4:	48 83 ec 10          	sub    $0x10,%rsp
  6b75a8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  6b75ac:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  6b75b1:	74 02                	je     6b75b5 <dontcall_headers_complete_cb.cfi+0x15>
  6b75b3:	eb 00                	jmp    6b75b5 <dontcall_headers_complete_cb.cfi+0x15>
  6b75b5:	48 8b 3c 25 00 b8 71 	mov    0x71b800,%rdi
  6b75bc:	00 
  6b75bd:	48 be 8c 3b 20 00 00 	movabs $0x203b8c,%rsi
  6b75c4:	00 00 00 
  6b75c7:	b0 00                	mov    $0x0,%al
  6b75c9:	e8 e2 43 00 00       	callq  6bb9b0 <fprintf@plt>
  6b75ce:	e8 ed 43 00 00       	callq  6bb9c0 <abort@plt>
  6b75d3:	cc                   	int3   
  6b75d4:	cc                   	int3   
  6b75d5:	cc                   	int3   
  6b75d6:	cc                   	int3   
  6b75d7:	cc                   	int3   
  6b75d8:	cc                   	int3   
  6b75d9:	cc                   	int3   
  6b75da:	cc                   	int3   
  6b75db:	cc                   	int3   
  6b75dc:	cc                   	int3   
  6b75dd:	cc                   	int3   
  6b75de:	cc                   	int3   
  6b75df:	cc                   	int3   

00000000006b75e0 <dontcall_message_complete_cb.cfi>:
  6b75e0:	55                   	push   %rbp
  6b75e1:	48 89 e5             	mov    %rsp,%rbp
  6b75e4:	48 83 ec 10          	sub    $0x10,%rsp
  6b75e8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  6b75ec:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  6b75f1:	74 02                	je     6b75f5 <dontcall_message_complete_cb.cfi+0x15>
  6b75f3:	eb 00                	jmp    6b75f5 <dontcall_message_complete_cb.cfi+0x15>
  6b75f5:	48 8b 3c 25 00 b8 71 	mov    0x71b800,%rdi
  6b75fc:	00 
  6b75fd:	48 be bc 3e 20 00 00 	movabs $0x203ebc,%rsi
  6b7604:	00 00 00 
  6b7607:	b0 00                	mov    $0x0,%al
  6b7609:	e8 a2 43 00 00       	callq  6bb9b0 <fprintf@plt>
  6b760e:	e8 ad 43 00 00       	callq  6bb9c0 <abort@plt>
  6b7613:	cc                   	int3   
  6b7614:	cc                   	int3   
  6b7615:	cc                   	int3   
  6b7616:	cc                   	int3   
  6b7617:	cc                   	int3   
  6b7618:	cc                   	int3   
  6b7619:	cc                   	int3   
  6b761a:	cc                   	int3   
  6b761b:	cc                   	int3   
  6b761c:	cc                   	int3   
  6b761d:	cc                   	int3   
  6b761e:	cc                   	int3   
  6b761f:	cc                   	int3   

00000000006b7620 <dontcall_response_status_cb.cfi>:
  6b7620:	55                   	push   %rbp
  6b7621:	48 89 e5             	mov    %rsp,%rbp
  6b7624:	48 83 ec 20          	sub    $0x20,%rsp
  6b7628:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  6b762c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  6b7630:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
  6b7634:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
  6b7639:	75 0e                	jne    6b7649 <dontcall_response_status_cb.cfi+0x29>
  6b763b:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
  6b7640:	75 07                	jne    6b7649 <dontcall_response_status_cb.cfi+0x29>
  6b7642:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  6b7647:	74 02                	je     6b764b <dontcall_response_status_cb.cfi+0x2b>
  6b7649:	eb 00                	jmp    6b764b <dontcall_response_status_cb.cfi+0x2b>
  6b764b:	48 8b 3c 25 00 b8 71 	mov    0x71b800,%rdi
  6b7652:	00 
  6b7653:	48 be a6 4c 20 00 00 	movabs $0x204ca6,%rsi
  6b765a:	00 00 00 
  6b765d:	b0 00                	mov    $0x0,%al
  6b765f:	e8 4c 43 00 00       	callq  6bb9b0 <fprintf@plt>
  6b7664:	e8 57 43 00 00       	callq  6bb9c0 <abort@plt>
  6b7669:	cc                   	int3   
  6b766a:	cc                   	int3   
  6b766b:	cc                   	int3   
  6b766c:	cc                   	int3   
  6b766d:	cc                   	int3   
  6b766e:	cc                   	int3   
  6b766f:	cc                   	int3   

00000000006b7670 <dontcall_chunk_header_cb.cfi>:
  6b7670:	55                   	push   %rbp
  6b7671:	48 89 e5             	mov    %rsp,%rbp
  6b7674:	48 83 ec 10          	sub    $0x10,%rsp
  6b7678:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  6b767c:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  6b7681:	74 02                	je     6b7685 <dontcall_chunk_header_cb.cfi+0x15>
  6b7683:	eb 00                	jmp    6b7685 <dontcall_chunk_header_cb.cfi+0x15>
  6b7685:	48 8b 3c 25 00 b8 71 	mov    0x71b800,%rdi
  6b768c:	00 
  6b768d:	48 be d7 2a 20 00 00 	movabs $0x202ad7,%rsi
  6b7694:	00 00 00 
  6b7697:	b0 00                	mov    $0x0,%al
  6b7699:	e8 12 43 00 00       	callq  6bb9b0 <fprintf@plt>
  6b769e:	bf 01 00 00 00       	mov    $0x1,%edi
  6b76a3:	e8 28 43 00 00       	callq  6bb9d0 <exit@plt>
  6b76a8:	cc                   	int3   
  6b76a9:	cc                   	int3   
  6b76aa:	cc                   	int3   
  6b76ab:	cc                   	int3   
  6b76ac:	cc                   	int3   
  6b76ad:	cc                   	int3   
  6b76ae:	cc                   	int3   
  6b76af:	cc                   	int3   

00000000006b76b0 <dontcall_chunk_complete_cb.cfi>:
  6b76b0:	55                   	push   %rbp
  6b76b1:	48 89 e5             	mov    %rsp,%rbp
  6b76b4:	48 83 ec 10          	sub    $0x10,%rsp
  6b76b8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  6b76bc:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  6b76c1:	74 02                	je     6b76c5 <dontcall_chunk_complete_cb.cfi+0x15>
  6b76c3:	eb 00                	jmp    6b76c5 <dontcall_chunk_complete_cb.cfi+0x15>
  6b76c5:	48 8b 3c 25 00 b8 71 	mov    0x71b800,%rdi
  6b76cc:	00 
  6b76cd:	48 be f5 46 20 00 00 	movabs $0x2046f5,%rsi
  6b76d4:	00 00 00 
  6b76d7:	b0 00                	mov    $0x0,%al
  6b76d9:	e8 d2 42 00 00       	callq  6bb9b0 <fprintf@plt>
  6b76de:	bf 01 00 00 00       	mov    $0x1,%edi
  6b76e3:	e8 e8 42 00 00       	callq  6bb9d0 <exit@plt>
  6b76e8:	cc                   	int3   
  6b76e9:	cc                   	int3   
  6b76ea:	cc                   	int3   
  6b76eb:	cc                   	int3   
  6b76ec:	cc                   	int3   
  6b76ed:	cc                   	int3   
  6b76ee:	cc                   	int3   
  6b76ef:	cc                   	int3   

00000000006b76f0 <pause_message_begin_cb.cfi>:
  6b76f0:	55                   	push   %rbp
  6b76f1:	48 89 e5             	mov    %rsp,%rbp
  6b76f4:	48 83 ec 10          	sub    $0x10,%rsp
  6b76f8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  6b76fc:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  6b7700:	be 01 00 00 00       	mov    $0x1,%esi
  6b7705:	e8 56 ef ff ff       	callq  6b6660 <http_parser_pause>
  6b770a:	48 8b 3c 25 a0 b7 71 	mov    0x71b7a0,%rdi
  6b7711:	00 
  6b7712:	48 be b0 df 6b 00 00 	movabs $0x6bdfb0,%rsi
  6b7719:	00 00 00 
  6b771c:	ba 50 00 00 00       	mov    $0x50,%edx
  6b7721:	e8 8a 43 00 00       	callq  6bbab0 <memcpy@plt>
  6b7726:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  6b772a:	e8 61 f6 ff ff       	callq  6b6d90 <message_begin_cb.cfi>
  6b772f:	48 83 c4 10          	add    $0x10,%rsp
  6b7733:	5d                   	pop    %rbp
  6b7734:	c3                   	retq   
  6b7735:	cc                   	int3   
  6b7736:	cc                   	int3   
  6b7737:	cc                   	int3   
  6b7738:	cc                   	int3   
  6b7739:	cc                   	int3   
  6b773a:	cc                   	int3   
  6b773b:	cc                   	int3   
  6b773c:	cc                   	int3   
  6b773d:	cc                   	int3   
  6b773e:	cc                   	int3   
  6b773f:	cc                   	int3   

00000000006b7740 <pause_header_field_cb.cfi>:
  6b7740:	55                   	push   %rbp
  6b7741:	48 89 e5             	mov    %rsp,%rbp
  6b7744:	48 83 ec 20          	sub    $0x20,%rsp
  6b7748:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  6b774c:	48 89 75 e8          	mov    %rsi,-0x18(%rbp)
  6b7750:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
  6b7754:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  6b7758:	be 01 00 00 00       	mov    $0x1,%esi
  6b775d:	e8 fe ee ff ff       	callq  6b6660 <http_parser_pause>
  6b7762:	48 8b 3c 25 a0 b7 71 	mov    0x71b7a0,%rdi
  6b7769:	00 
  6b776a:	48 be b0 df 6b 00 00 	movabs $0x6bdfb0,%rsi
  6b7771:	00 00 00 
  6b7774:	ba 50 00 00 00       	mov    $0x50,%edx
  6b7779:	e8 32 43 00 00       	callq  6bbab0 <memcpy@plt>
  6b777e:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  6b7782:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
  6b7786:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  6b778a:	e8 21 f2 ff ff       	callq  6b69b0 <header_field_cb.cfi>
  6b778f:	48 83 c4 20          	add    $0x20,%rsp
  6b7793:	5d                   	pop    %rbp
  6b7794:	c3                   	retq   
  6b7795:	cc                   	int3   
  6b7796:	cc                   	int3   
  6b7797:	cc                   	int3   
  6b7798:	cc                   	int3   
  6b7799:	cc                   	int3   
  6b779a:	cc                   	int3   
  6b779b:	cc                   	int3   
  6b779c:	cc                   	int3   
  6b779d:	cc                   	int3   
  6b779e:	cc                   	int3   
  6b779f:	cc                   	int3   

00000000006b77a0 <pause_header_value_cb.cfi>:
  6b77a0:	55                   	push   %rbp
  6b77a1:	48 89 e5             	mov    %rsp,%rbp
  6b77a4:	48 83 ec 20          	sub    $0x20,%rsp
  6b77a8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  6b77ac:	48 89 75 e8          	mov    %rsi,-0x18(%rbp)
  6b77b0:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
  6b77b4:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  6b77b8:	be 01 00 00 00       	mov    $0x1,%esi
  6b77bd:	e8 9e ee ff ff       	callq  6b6660 <http_parser_pause>
  6b77c2:	48 8b 3c 25 a0 b7 71 	mov    0x71b7a0,%rdi
  6b77c9:	00 
  6b77ca:	48 be b0 df 6b 00 00 	movabs $0x6bdfb0,%rsi
  6b77d1:	00 00 00 
  6b77d4:	ba 50 00 00 00       	mov    $0x50,%edx
  6b77d9:	e8 d2 42 00 00       	callq  6bbab0 <memcpy@plt>
  6b77de:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  6b77e2:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
  6b77e6:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  6b77ea:	e8 a1 f2 ff ff       	callq  6b6a90 <header_value_cb.cfi>
  6b77ef:	48 83 c4 20          	add    $0x20,%rsp
  6b77f3:	5d                   	pop    %rbp
  6b77f4:	c3                   	retq   
  6b77f5:	cc                   	int3   
  6b77f6:	cc                   	int3   
  6b77f7:	cc                   	int3   
  6b77f8:	cc                   	int3   
  6b77f9:	cc                   	int3   
  6b77fa:	cc                   	int3   
  6b77fb:	cc                   	int3   
  6b77fc:	cc                   	int3   
  6b77fd:	cc                   	int3   
  6b77fe:	cc                   	int3   
  6b77ff:	cc                   	int3   

00000000006b7800 <pause_request_url_cb.cfi>:
  6b7800:	55                   	push   %rbp
  6b7801:	48 89 e5             	mov    %rsp,%rbp
  6b7804:	48 83 ec 20          	sub    $0x20,%rsp
  6b7808:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  6b780c:	48 89 75 e8          	mov    %rsi,-0x18(%rbp)
  6b7810:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
  6b7814:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  6b7818:	be 01 00 00 00       	mov    $0x1,%esi
  6b781d:	e8 3e ee ff ff       	callq  6b6660 <http_parser_pause>
  6b7822:	48 8b 3c 25 a0 b7 71 	mov    0x71b7a0,%rdi
  6b7829:	00 
  6b782a:	48 be b0 df 6b 00 00 	movabs $0x6bdfb0,%rsi
  6b7831:	00 00 00 
  6b7834:	ba 50 00 00 00       	mov    $0x50,%edx
  6b7839:	e8 72 42 00 00       	callq  6bbab0 <memcpy@plt>
  6b783e:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  6b7842:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
  6b7846:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  6b784a:	e8 d1 f0 ff ff       	callq  6b6920 <request_url_cb.cfi>
  6b784f:	48 83 c4 20          	add    $0x20,%rsp
  6b7853:	5d                   	pop    %rbp
  6b7854:	c3                   	retq   
  6b7855:	cc                   	int3   
  6b7856:	cc                   	int3   
  6b7857:	cc                   	int3   
  6b7858:	cc                   	int3   
  6b7859:	cc                   	int3   
  6b785a:	cc                   	int3   
  6b785b:	cc                   	int3   
  6b785c:	cc                   	int3   
  6b785d:	cc                   	int3   
  6b785e:	cc                   	int3   
  6b785f:	cc                   	int3   

00000000006b7860 <pause_body_cb.cfi>:
  6b7860:	55                   	push   %rbp
  6b7861:	48 89 e5             	mov    %rsp,%rbp
  6b7864:	48 83 ec 20          	sub    $0x20,%rsp
  6b7868:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  6b786c:	48 89 75 e8          	mov    %rsi,-0x18(%rbp)
  6b7870:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
  6b7874:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  6b7878:	be 01 00 00 00       	mov    $0x1,%esi
  6b787d:	e8 de ed ff ff       	callq  6b6660 <http_parser_pause>
  6b7882:	48 8b 3c 25 a0 b7 71 	mov    0x71b7a0,%rdi
  6b7889:	00 
  6b788a:	48 be b0 df 6b 00 00 	movabs $0x6bdfb0,%rsi
  6b7891:	00 00 00 
  6b7894:	ba 50 00 00 00       	mov    $0x50,%edx
  6b7899:	e8 12 42 00 00       	callq  6bbab0 <memcpy@plt>
  6b789e:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  6b78a2:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
  6b78a6:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  6b78aa:	e8 51 f3 ff ff       	callq  6b6c00 <body_cb.cfi>
  6b78af:	48 83 c4 20          	add    $0x20,%rsp
  6b78b3:	5d                   	pop    %rbp
  6b78b4:	c3                   	retq   
  6b78b5:	cc                   	int3   
  6b78b6:	cc                   	int3   
  6b78b7:	cc                   	int3   
  6b78b8:	cc                   	int3   
  6b78b9:	cc                   	int3   
  6b78ba:	cc                   	int3   
  6b78bb:	cc                   	int3   
  6b78bc:	cc                   	int3   
  6b78bd:	cc                   	int3   
  6b78be:	cc                   	int3   
  6b78bf:	cc                   	int3   

00000000006b78c0 <pause_headers_complete_cb.cfi>:
  6b78c0:	55                   	push   %rbp
  6b78c1:	48 89 e5             	mov    %rsp,%rbp
  6b78c4:	48 83 ec 10          	sub    $0x10,%rsp
  6b78c8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  6b78cc:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  6b78d0:	be 01 00 00 00       	mov    $0x1,%esi
  6b78d5:	e8 86 ed ff ff       	callq  6b6660 <http_parser_pause>
  6b78da:	48 8b 3c 25 a0 b7 71 	mov    0x71b7a0,%rdi
  6b78e1:	00 
  6b78e2:	48 be b0 df 6b 00 00 	movabs $0x6bdfb0,%rsi
  6b78e9:	00 00 00 
  6b78ec:	ba 50 00 00 00       	mov    $0x50,%edx
  6b78f1:	e8 ba 41 00 00       	callq  6bbab0 <memcpy@plt>
  6b78f6:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  6b78fa:	e8 61 f5 ff ff       	callq  6b6e60 <headers_complete_cb.cfi>
  6b78ff:	48 83 c4 10          	add    $0x10,%rsp
  6b7903:	5d                   	pop    %rbp
  6b7904:	c3                   	retq   
  6b7905:	cc                   	int3   
  6b7906:	cc                   	int3   
  6b7907:	cc                   	int3   
  6b7908:	cc                   	int3   
  6b7909:	cc                   	int3   
  6b790a:	cc                   	int3   
  6b790b:	cc                   	int3   
  6b790c:	cc                   	int3   
  6b790d:	cc                   	int3   
  6b790e:	cc                   	int3   
  6b790f:	cc                   	int3   

00000000006b7910 <pause_message_complete_cb.cfi>:
  6b7910:	55                   	push   %rbp
  6b7911:	48 89 e5             	mov    %rsp,%rbp
  6b7914:	48 83 ec 10          	sub    $0x10,%rsp
  6b7918:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  6b791c:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  6b7920:	be 01 00 00 00       	mov    $0x1,%esi
  6b7925:	e8 36 ed ff ff       	callq  6b6660 <http_parser_pause>
  6b792a:	48 8b 3c 25 a0 b7 71 	mov    0x71b7a0,%rdi
  6b7931:	00 
  6b7932:	48 be b0 df 6b 00 00 	movabs $0x6bdfb0,%rsi
  6b7939:	00 00 00 
  6b793c:	ba 50 00 00 00       	mov    $0x50,%edx
  6b7941:	e8 6a 41 00 00       	callq  6bbab0 <memcpy@plt>
  6b7946:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  6b794a:	e8 91 f6 ff ff       	callq  6b6fe0 <message_complete_cb.cfi>
  6b794f:	48 83 c4 10          	add    $0x10,%rsp
  6b7953:	5d                   	pop    %rbp
  6b7954:	c3                   	retq   
  6b7955:	cc                   	int3   
  6b7956:	cc                   	int3   
  6b7957:	cc                   	int3   
  6b7958:	cc                   	int3   
  6b7959:	cc                   	int3   
  6b795a:	cc                   	int3   
  6b795b:	cc                   	int3   
  6b795c:	cc                   	int3   
  6b795d:	cc                   	int3   
  6b795e:	cc                   	int3   
  6b795f:	cc                   	int3   

00000000006b7960 <pause_response_status_cb.cfi>:
  6b7960:	55                   	push   %rbp
  6b7961:	48 89 e5             	mov    %rsp,%rbp
  6b7964:	48 83 ec 20          	sub    $0x20,%rsp
  6b7968:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  6b796c:	48 89 75 e8          	mov    %rsi,-0x18(%rbp)
  6b7970:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
  6b7974:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  6b7978:	be 01 00 00 00       	mov    $0x1,%esi
  6b797d:	e8 de ec ff ff       	callq  6b6660 <http_parser_pause>
  6b7982:	48 8b 3c 25 a0 b7 71 	mov    0x71b7a0,%rdi
  6b7989:	00 
  6b798a:	48 be b0 df 6b 00 00 	movabs $0x6bdfb0,%rsi
  6b7991:	00 00 00 
  6b7994:	ba 50 00 00 00       	mov    $0x50,%edx
  6b7999:	e8 12 41 00 00       	callq  6bbab0 <memcpy@plt>
  6b799e:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  6b79a2:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
  6b79a6:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  6b79aa:	e8 f1 f7 ff ff       	callq  6b71a0 <response_status_cb.cfi>
  6b79af:	48 83 c4 20          	add    $0x20,%rsp
  6b79b3:	5d                   	pop    %rbp
  6b79b4:	c3                   	retq   
  6b79b5:	cc                   	int3   
  6b79b6:	cc                   	int3   
  6b79b7:	cc                   	int3   
  6b79b8:	cc                   	int3   
  6b79b9:	cc                   	int3   
  6b79ba:	cc                   	int3   
  6b79bb:	cc                   	int3   
  6b79bc:	cc                   	int3   
  6b79bd:	cc                   	int3   
  6b79be:	cc                   	int3   
  6b79bf:	cc                   	int3   

00000000006b79c0 <pause_chunk_header_cb.cfi>:
  6b79c0:	55                   	push   %rbp
  6b79c1:	48 89 e5             	mov    %rsp,%rbp
  6b79c4:	48 83 ec 10          	sub    $0x10,%rsp
  6b79c8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  6b79cc:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  6b79d0:	be 01 00 00 00       	mov    $0x1,%esi
  6b79d5:	e8 86 ec ff ff       	callq  6b6660 <http_parser_pause>
  6b79da:	48 8b 3c 25 a0 b7 71 	mov    0x71b7a0,%rdi
  6b79e1:	00 
  6b79e2:	48 be b0 df 6b 00 00 	movabs $0x6bdfb0,%rsi
  6b79e9:	00 00 00 
  6b79ec:	ba 50 00 00 00       	mov    $0x50,%edx
  6b79f1:	e8 ba 40 00 00       	callq  6bbab0 <memcpy@plt>
  6b79f6:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  6b79fa:	e8 51 f8 ff ff       	callq  6b7250 <chunk_header_cb.cfi>
  6b79ff:	48 83 c4 10          	add    $0x10,%rsp
  6b7a03:	5d                   	pop    %rbp
  6b7a04:	c3                   	retq   
  6b7a05:	cc                   	int3   
  6b7a06:	cc                   	int3   
  6b7a07:	cc                   	int3   
  6b7a08:	cc                   	int3   
  6b7a09:	cc                   	int3   
  6b7a0a:	cc                   	int3   
  6b7a0b:	cc                   	int3   
  6b7a0c:	cc                   	int3   
  6b7a0d:	cc                   	int3   
  6b7a0e:	cc                   	int3   
  6b7a0f:	cc                   	int3   

00000000006b7a10 <pause_chunk_complete_cb.cfi>:
  6b7a10:	55                   	push   %rbp
  6b7a11:	48 89 e5             	mov    %rsp,%rbp
  6b7a14:	48 83 ec 10          	sub    $0x10,%rsp
  6b7a18:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  6b7a1c:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  6b7a20:	be 01 00 00 00       	mov    $0x1,%esi
  6b7a25:	e8 36 ec ff ff       	callq  6b6660 <http_parser_pause>
  6b7a2a:	48 8b 3c 25 a0 b7 71 	mov    0x71b7a0,%rdi
  6b7a31:	00 
  6b7a32:	48 be b0 df 6b 00 00 	movabs $0x6bdfb0,%rsi
  6b7a39:	00 00 00 
  6b7a3c:	ba 50 00 00 00       	mov    $0x50,%edx
  6b7a41:	e8 6a 40 00 00       	callq  6bbab0 <memcpy@plt>
  6b7a46:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  6b7a4a:	e8 e1 f8 ff ff       	callq  6b7330 <chunk_complete_cb.cfi>
  6b7a4f:	48 83 c4 10          	add    $0x10,%rsp
  6b7a53:	5d                   	pop    %rbp
  6b7a54:	c3                   	retq   
  6b7a55:	cc                   	int3   
  6b7a56:	cc                   	int3   
  6b7a57:	cc                   	int3   
  6b7a58:	cc                   	int3   
  6b7a59:	cc                   	int3   
  6b7a5a:	cc                   	int3   
  6b7a5b:	cc                   	int3   
  6b7a5c:	cc                   	int3   
  6b7a5d:	cc                   	int3   
  6b7a5e:	cc                   	int3   
  6b7a5f:	cc                   	int3   

00000000006b7a60 <connect_headers_complete_cb.cfi>:
  6b7a60:	55                   	push   %rbp
  6b7a61:	48 89 e5             	mov    %rsp,%rbp
  6b7a64:	48 83 ec 10          	sub    $0x10,%rsp
  6b7a68:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  6b7a6c:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  6b7a70:	e8 eb f3 ff ff       	callq  6b6e60 <headers_complete_cb.cfi>
  6b7a75:	b8 01 00 00 00       	mov    $0x1,%eax
  6b7a7a:	48 83 c4 10          	add    $0x10,%rsp
  6b7a7e:	5d                   	pop    %rbp
  6b7a7f:	c3                   	retq   

00000000006b7a80 <connect_message_complete_cb.cfi>:
  6b7a80:	55                   	push   %rbp
  6b7a81:	48 89 e5             	mov    %rsp,%rbp
  6b7a84:	48 83 ec 10          	sub    $0x10,%rsp
  6b7a88:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  6b7a8c:	48 bf 88 b3 6c 00 00 	movabs $0x6cb388,%rdi
  6b7a93:	00 00 00 
  6b7a96:	e8 75 db ff ff       	callq  6b5610 <http_should_keep_alive>
  6b7a9b:	48 63 0c 25 98 b7 71 	movslq 0x71b798,%rcx
  6b7aa2:	00 
  6b7aa3:	48 ba b0 b3 6c 00 00 	movabs $0x6cb3b0,%rdx
  6b7aaa:	00 00 00 
  6b7aad:	48 69 c9 c8 00 01 00 	imul   $0x100c8,%rcx,%rcx
  6b7ab4:	48 01 ca             	add    %rcx,%rdx
  6b7ab7:	89 82 44 00 01 00    	mov    %eax,0x10044(%rdx)
  6b7abd:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  6b7ac1:	e8 1a f5 ff ff       	callq  6b6fe0 <message_complete_cb.cfi>
  6b7ac6:	48 83 c4 10          	add    $0x10,%rsp
  6b7aca:	5d                   	pop    %rbp
  6b7acb:	c3                   	retq   
  6b7acc:	cc                   	int3   
  6b7acd:	cc                   	int3   
  6b7ace:	cc                   	int3   
  6b7acf:	cc                   	int3   

00000000006b7ad0 <parser_init>:
  6b7ad0:	55                   	push   %rbp
  6b7ad1:	48 89 e5             	mov    %rsp,%rbp
  6b7ad4:	48 83 ec 10          	sub    $0x10,%rsp
  6b7ad8:	89 7d fc             	mov    %edi,-0x4(%rbp)
  6b7adb:	c7 04 25 98 b7 71 00 	movl   $0x0,0x71b798
  6b7ae2:	00 00 00 00 
  6b7ae6:	8b 75 fc             	mov    -0x4(%rbp),%esi
  6b7ae9:	48 bf 88 b3 6c 00 00 	movabs $0x6cb388,%rdi
  6b7af0:	00 00 00 
  6b7af3:	e8 58 e1 ff ff       	callq  6b5c50 <http_parser_init>
  6b7af8:	48 bf b0 b3 6c 00 00 	movabs $0x6cb3b0,%rdi
  6b7aff:	00 00 00 
  6b7b02:	31 f6                	xor    %esi,%esi
  6b7b04:	ba e8 03 05 00       	mov    $0x503e8,%edx
  6b7b09:	e8 92 3f 00 00       	callq  6bbaa0 <memset@plt>
  6b7b0e:	48 83 c4 10          	add    $0x10,%rsp
  6b7b12:	5d                   	pop    %rbp
  6b7b13:	c3                   	retq   
  6b7b14:	cc                   	int3   
  6b7b15:	cc                   	int3   
  6b7b16:	cc                   	int3   
  6b7b17:	cc                   	int3   
  6b7b18:	cc                   	int3   
  6b7b19:	cc                   	int3   
  6b7b1a:	cc                   	int3   
  6b7b1b:	cc                   	int3   
  6b7b1c:	cc                   	int3   
  6b7b1d:	cc                   	int3   
  6b7b1e:	cc                   	int3   
  6b7b1f:	cc                   	int3   

00000000006b7b20 <parse>:
  6b7b20:	55                   	push   %rbp
  6b7b21:	48 89 e5             	mov    %rsp,%rbp
  6b7b24:	48 83 ec 20          	sub    $0x20,%rsp
  6b7b28:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  6b7b2c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  6b7b30:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  6b7b35:	0f 94 c0             	sete   %al
  6b7b38:	24 01                	and    $0x1,%al
  6b7b3a:	0f b6 c0             	movzbl %al,%eax
  6b7b3d:	89 04 25 9c b7 71 00 	mov    %eax,0x71b79c
  6b7b44:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  6b7b48:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  6b7b4c:	48 bf 88 b3 6c 00 00 	movabs $0x6cb388,%rdi
  6b7b53:	00 00 00 
  6b7b56:	48 be 00 e0 6b 00 00 	movabs $0x6be000,%rsi
  6b7b5d:	00 00 00 
  6b7b60:	e8 ab 79 ff ff       	callq  6af510 <http_parser_execute>
  6b7b65:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  6b7b69:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b7b6d:	48 83 c4 20          	add    $0x20,%rsp
  6b7b71:	5d                   	pop    %rbp
  6b7b72:	c3                   	retq   
  6b7b73:	cc                   	int3   
  6b7b74:	cc                   	int3   
  6b7b75:	cc                   	int3   
  6b7b76:	cc                   	int3   
  6b7b77:	cc                   	int3   
  6b7b78:	cc                   	int3   
  6b7b79:	cc                   	int3   
  6b7b7a:	cc                   	int3   
  6b7b7b:	cc                   	int3   
  6b7b7c:	cc                   	int3   
  6b7b7d:	cc                   	int3   
  6b7b7e:	cc                   	int3   
  6b7b7f:	cc                   	int3   

00000000006b7b80 <parse_count_body>:
  6b7b80:	55                   	push   %rbp
  6b7b81:	48 89 e5             	mov    %rsp,%rbp
  6b7b84:	48 83 ec 20          	sub    $0x20,%rsp
  6b7b88:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  6b7b8c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  6b7b90:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  6b7b95:	0f 94 c0             	sete   %al
  6b7b98:	24 01                	and    $0x1,%al
  6b7b9a:	0f b6 c0             	movzbl %al,%eax
  6b7b9d:	89 04 25 9c b7 71 00 	mov    %eax,0x71b79c
  6b7ba4:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  6b7ba8:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  6b7bac:	48 bf 88 b3 6c 00 00 	movabs $0x6cb388,%rdi
  6b7bb3:	00 00 00 
  6b7bb6:	48 be 50 e0 6b 00 00 	movabs $0x6be050,%rsi
  6b7bbd:	00 00 00 
  6b7bc0:	e8 4b 79 ff ff       	callq  6af510 <http_parser_execute>
  6b7bc5:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  6b7bc9:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b7bcd:	48 83 c4 20          	add    $0x20,%rsp
  6b7bd1:	5d                   	pop    %rbp
  6b7bd2:	c3                   	retq   
  6b7bd3:	cc                   	int3   
  6b7bd4:	cc                   	int3   
  6b7bd5:	cc                   	int3   
  6b7bd6:	cc                   	int3   
  6b7bd7:	cc                   	int3   
  6b7bd8:	cc                   	int3   
  6b7bd9:	cc                   	int3   
  6b7bda:	cc                   	int3   
  6b7bdb:	cc                   	int3   
  6b7bdc:	cc                   	int3   
  6b7bdd:	cc                   	int3   
  6b7bde:	cc                   	int3   
  6b7bdf:	cc                   	int3   

00000000006b7be0 <parse_pause>:
  6b7be0:	55                   	push   %rbp
  6b7be1:	48 89 e5             	mov    %rsp,%rbp
  6b7be4:	48 83 ec 70          	sub    $0x70,%rsp
  6b7be8:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  6b7bec:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  6b7bf0:	48 8d 7d 98          	lea    -0x68(%rbp),%rdi
  6b7bf4:	48 be a0 e0 6b 00 00 	movabs $0x6be0a0,%rsi
  6b7bfb:	00 00 00 
  6b7bfe:	ba 50 00 00 00       	mov    $0x50,%edx
  6b7c03:	e8 a8 3e 00 00       	callq  6bbab0 <memcpy@plt>
  6b7c08:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  6b7c0d:	0f 94 c0             	sete   %al
  6b7c10:	24 01                	and    $0x1,%al
  6b7c12:	0f b6 c0             	movzbl %al,%eax
  6b7c15:	89 04 25 9c b7 71 00 	mov    %eax,0x71b79c
  6b7c1c:	48 8d 45 98          	lea    -0x68(%rbp),%rax
  6b7c20:	48 89 04 25 a0 b7 71 	mov    %rax,0x71b7a0
  6b7c27:	00 
  6b7c28:	48 8b 34 25 a0 b7 71 	mov    0x71b7a0,%rsi
  6b7c2f:	00 
  6b7c30:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  6b7c34:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  6b7c38:	48 bf 88 b3 6c 00 00 	movabs $0x6cb388,%rdi
  6b7c3f:	00 00 00 
  6b7c42:	e8 c9 78 ff ff       	callq  6af510 <http_parser_execute>
  6b7c47:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  6b7c4b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b7c4f:	48 83 c4 70          	add    $0x70,%rsp
  6b7c53:	5d                   	pop    %rbp
  6b7c54:	c3                   	retq   
  6b7c55:	cc                   	int3   
  6b7c56:	cc                   	int3   
  6b7c57:	cc                   	int3   
  6b7c58:	cc                   	int3   
  6b7c59:	cc                   	int3   
  6b7c5a:	cc                   	int3   
  6b7c5b:	cc                   	int3   
  6b7c5c:	cc                   	int3   
  6b7c5d:	cc                   	int3   
  6b7c5e:	cc                   	int3   
  6b7c5f:	cc                   	int3   

00000000006b7c60 <parse_connect>:
  6b7c60:	55                   	push   %rbp
  6b7c61:	48 89 e5             	mov    %rsp,%rbp
  6b7c64:	48 83 ec 20          	sub    $0x20,%rsp
  6b7c68:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  6b7c6c:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  6b7c70:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  6b7c75:	0f 94 c0             	sete   %al
  6b7c78:	24 01                	and    $0x1,%al
  6b7c7a:	0f b6 c0             	movzbl %al,%eax
  6b7c7d:	89 04 25 9c b7 71 00 	mov    %eax,0x71b79c
  6b7c84:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  6b7c88:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  6b7c8c:	48 bf 88 b3 6c 00 00 	movabs $0x6cb388,%rdi
  6b7c93:	00 00 00 
  6b7c96:	48 be f0 e0 6b 00 00 	movabs $0x6be0f0,%rsi
  6b7c9d:	00 00 00 
  6b7ca0:	e8 6b 78 ff ff       	callq  6af510 <http_parser_execute>
  6b7ca5:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  6b7ca9:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b7cad:	48 83 c4 20          	add    $0x20,%rsp
  6b7cb1:	5d                   	pop    %rbp
  6b7cb2:	c3                   	retq   
  6b7cb3:	cc                   	int3   
  6b7cb4:	cc                   	int3   
  6b7cb5:	cc                   	int3   
  6b7cb6:	cc                   	int3   
  6b7cb7:	cc                   	int3   
  6b7cb8:	cc                   	int3   
  6b7cb9:	cc                   	int3   
  6b7cba:	cc                   	int3   
  6b7cbb:	cc                   	int3   
  6b7cbc:	cc                   	int3   
  6b7cbd:	cc                   	int3   
  6b7cbe:	cc                   	int3   
  6b7cbf:	cc                   	int3   

00000000006b7cc0 <message_eq>:
  6b7cc0:	55                   	push   %rbp
  6b7cc1:	48 89 e5             	mov    %rsp,%rbp
  6b7cc4:	53                   	push   %rbx
  6b7cc5:	48 81 ec 48 05 00 00 	sub    $0x548,%rsp
  6b7ccc:	89 7d b4             	mov    %edi,-0x4c(%rbp)
  6b7ccf:	89 75 dc             	mov    %esi,-0x24(%rbp)
  6b7cd2:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
  6b7cd6:	48 63 45 b4          	movslq -0x4c(%rbp),%rax
  6b7cda:	48 b9 b0 b3 6c 00 00 	movabs $0x6cb3b0,%rcx
  6b7ce1:	00 00 00 
  6b7ce4:	48 69 c0 c8 00 01 00 	imul   $0x100c8,%rax,%rax
  6b7ceb:	48 01 c1             	add    %rax,%rcx
  6b7cee:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
  6b7cf2:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b7cf6:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b7cfa:	0f b7 90 98 00 01 00 	movzwl 0x10098(%rax),%edx
  6b7d01:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  6b7d05:	0f b7 88 98 00 01 00 	movzwl 0x10098(%rax),%ecx
  6b7d0c:	48 be 3a 7e 20 00 00 	movabs $0x207e3a,%rsi
  6b7d13:	00 00 00 
  6b7d16:	e8 05 09 00 00       	callq  6b8620 <check_num_eq>
  6b7d1b:	83 f8 00             	cmp    $0x0,%eax
  6b7d1e:	75 0c                	jne    6b7d2c <message_eq+0x6c>
  6b7d20:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
  6b7d27:	e9 e4 08 00 00       	jmpq   6b8610 <message_eq+0x950>
  6b7d2c:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b7d30:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b7d34:	0f b7 90 9a 00 01 00 	movzwl 0x1009a(%rax),%edx
  6b7d3b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  6b7d3f:	0f b7 88 9a 00 01 00 	movzwl 0x1009a(%rax),%ecx
  6b7d46:	48 be 24 82 20 00 00 	movabs $0x208224,%rsi
  6b7d4d:	00 00 00 
  6b7d50:	e8 cb 08 00 00       	callq  6b8620 <check_num_eq>
  6b7d55:	83 f8 00             	cmp    $0x0,%eax
  6b7d58:	75 0c                	jne    6b7d66 <message_eq+0xa6>
  6b7d5a:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
  6b7d61:	e9 aa 08 00 00       	jmpq   6b8610 <message_eq+0x950>
  6b7d66:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b7d6a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b7d6e:	48 8b 90 a0 00 01 00 	mov    0x100a0(%rax),%rdx
  6b7d75:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  6b7d79:	48 8b 88 a0 00 01 00 	mov    0x100a0(%rax),%rcx
  6b7d80:	48 be 1b 37 20 00 00 	movabs $0x20371b,%rsi
  6b7d87:	00 00 00 
  6b7d8a:	e8 91 08 00 00       	callq  6b8620 <check_num_eq>
  6b7d8f:	83 f8 00             	cmp    $0x0,%eax
  6b7d92:	75 0c                	jne    6b7da0 <message_eq+0xe0>
  6b7d94:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
  6b7d9b:	e9 70 08 00 00       	jmpq   6b8610 <message_eq+0x950>
  6b7da0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b7da4:	83 78 10 00          	cmpl   $0x0,0x10(%rax)
  6b7da8:	75 37                	jne    6b7de1 <message_eq+0x121>
  6b7daa:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b7dae:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b7db2:	8b 50 14             	mov    0x14(%rax),%edx
  6b7db5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  6b7db9:	8b 48 14             	mov    0x14(%rax),%ecx
  6b7dbc:	48 be b9 1e 20 00 00 	movabs $0x201eb9,%rsi
  6b7dc3:	00 00 00 
  6b7dc6:	e8 55 08 00 00       	callq  6b8620 <check_num_eq>
  6b7dcb:	83 f8 00             	cmp    $0x0,%eax
  6b7dce:	75 0c                	jne    6b7ddc <message_eq+0x11c>
  6b7dd0:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
  6b7dd7:	e9 34 08 00 00       	jmpq   6b8610 <message_eq+0x950>
  6b7ddc:	e9 9f 00 00 00       	jmpq   6b7e80 <message_eq+0x1c0>
  6b7de1:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b7de5:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b7de9:	8b 50 18             	mov    0x18(%rax),%edx
  6b7dec:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  6b7df0:	8b 48 18             	mov    0x18(%rax),%ecx
  6b7df3:	48 be 2d 47 20 00 00 	movabs $0x20472d,%rsi
  6b7dfa:	00 00 00 
  6b7dfd:	e8 1e 08 00 00       	callq  6b8620 <check_num_eq>
  6b7e02:	83 f8 00             	cmp    $0x0,%eax
  6b7e05:	75 0c                	jne    6b7e13 <message_eq+0x153>
  6b7e07:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
  6b7e0e:	e9 fd 07 00 00       	jmpq   6b8610 <message_eq+0x950>
  6b7e13:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b7e17:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  6b7e1b:	48 83 c2 1c          	add    $0x1c,%rdx
  6b7e1f:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  6b7e23:	48 83 c1 1c          	add    $0x1c,%rcx
  6b7e27:	48 be 4f 40 20 00 00 	movabs $0x20404f,%rsi
  6b7e2e:	00 00 00 
  6b7e31:	e8 6a 08 00 00       	callq  6b86a0 <check_str_eq>
  6b7e36:	83 f8 00             	cmp    $0x0,%eax
  6b7e39:	75 0c                	jne    6b7e47 <message_eq+0x187>
  6b7e3b:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
  6b7e42:	e9 c9 07 00 00       	jmpq   6b8610 <message_eq+0x950>
  6b7e47:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  6b7e4b:	83 b8 b4 00 01 00 00 	cmpl   $0x0,0x100b4(%rax)
  6b7e52:	74 02                	je     6b7e56 <message_eq+0x196>
  6b7e54:	eb 28                	jmp    6b7e7e <message_eq+0x1be>
  6b7e56:	48 bf 8a 7a 20 00 00 	movabs $0x207a8a,%rdi
  6b7e5d:	00 00 00 
  6b7e60:	48 be e4 81 20 00 00 	movabs $0x2081e4,%rsi
  6b7e67:	00 00 00 
  6b7e6a:	48 b9 c6 3b 20 00 00 	movabs $0x203bc6,%rcx
  6b7e71:	00 00 00 
  6b7e74:	ba d2 0a 00 00       	mov    $0xad2,%edx
  6b7e79:	e8 12 3b 00 00       	callq  6bb990 <__assert_fail@plt>
  6b7e7e:	eb 00                	jmp    6b7e80 <message_eq+0x1c0>
  6b7e80:	83 7d dc 00          	cmpl   $0x0,-0x24(%rbp)
  6b7e84:	75 72                	jne    6b7ef8 <message_eq+0x238>
  6b7e86:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b7e8a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b7e8e:	8b 90 44 00 01 00    	mov    0x10044(%rax),%edx
  6b7e94:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  6b7e98:	8b 88 44 00 01 00    	mov    0x10044(%rax),%ecx
  6b7e9e:	48 be c0 1e 20 00 00 	movabs $0x201ec0,%rsi
  6b7ea5:	00 00 00 
  6b7ea8:	e8 73 07 00 00       	callq  6b8620 <check_num_eq>
  6b7ead:	83 f8 00             	cmp    $0x0,%eax
  6b7eb0:	75 0c                	jne    6b7ebe <message_eq+0x1fe>
  6b7eb2:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
  6b7eb9:	e9 52 07 00 00       	jmpq   6b8610 <message_eq+0x950>
  6b7ebe:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b7ec2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b7ec6:	8b 90 b8 00 01 00    	mov    0x100b8(%rax),%edx
  6b7ecc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  6b7ed0:	8b 88 b8 00 01 00    	mov    0x100b8(%rax),%ecx
  6b7ed6:	48 be 35 48 20 00 00 	movabs $0x204835,%rsi
  6b7edd:	00 00 00 
  6b7ee0:	e8 3b 07 00 00       	callq  6b8620 <check_num_eq>
  6b7ee5:	83 f8 00             	cmp    $0x0,%eax
  6b7ee8:	75 0c                	jne    6b7ef6 <message_eq+0x236>
  6b7eea:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
  6b7ef1:	e9 1a 07 00 00       	jmpq   6b8610 <message_eq+0x950>
  6b7ef6:	eb 00                	jmp    6b7ef8 <message_eq+0x238>
  6b7ef8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  6b7efc:	83 b8 a8 00 01 00 00 	cmpl   $0x0,0x100a8(%rax)
  6b7f03:	74 02                	je     6b7f07 <message_eq+0x247>
  6b7f05:	eb 28                	jmp    6b7f2f <message_eq+0x26f>
  6b7f07:	48 bf 08 31 20 00 00 	movabs $0x203108,%rdi
  6b7f0e:	00 00 00 
  6b7f11:	48 be e4 81 20 00 00 	movabs $0x2081e4,%rsi
  6b7f18:	00 00 00 
  6b7f1b:	48 b9 c6 3b 20 00 00 	movabs $0x203bc6,%rcx
  6b7f22:	00 00 00 
  6b7f25:	ba da 0a 00 00       	mov    $0xada,%edx
  6b7f2a:	e8 61 3a 00 00       	callq  6bb990 <__assert_fail@plt>
  6b7f2f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  6b7f33:	83 b8 ac 00 01 00 00 	cmpl   $0x0,0x100ac(%rax)
  6b7f3a:	74 02                	je     6b7f3e <message_eq+0x27e>
  6b7f3c:	eb 28                	jmp    6b7f66 <message_eq+0x2a6>
  6b7f3e:	48 bf 29 25 20 00 00 	movabs $0x202529,%rdi
  6b7f45:	00 00 00 
  6b7f48:	48 be e4 81 20 00 00 	movabs $0x2081e4,%rsi
  6b7f4f:	00 00 00 
  6b7f52:	48 b9 c6 3b 20 00 00 	movabs $0x203bc6,%rcx
  6b7f59:	00 00 00 
  6b7f5c:	ba db 0a 00 00       	mov    $0xadb,%edx
  6b7f61:	e8 2a 3a 00 00       	callq  6bb990 <__assert_fail@plt>
  6b7f66:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  6b7f6a:	83 b8 b0 00 01 00 00 	cmpl   $0x0,0x100b0(%rax)
  6b7f71:	74 02                	je     6b7f75 <message_eq+0x2b5>
  6b7f73:	eb 28                	jmp    6b7f9d <message_eq+0x2dd>
  6b7f75:	48 bf d2 1e 20 00 00 	movabs $0x201ed2,%rdi
  6b7f7c:	00 00 00 
  6b7f7f:	48 be e4 81 20 00 00 	movabs $0x2081e4,%rsi
  6b7f86:	00 00 00 
  6b7f89:	48 b9 c6 3b 20 00 00 	movabs $0x203bc6,%rcx
  6b7f90:	00 00 00 
  6b7f93:	ba dc 0a 00 00       	mov    $0xadc,%edx
  6b7f98:	e8 f3 39 00 00       	callq  6bb990 <__assert_fail@plt>
  6b7f9d:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b7fa1:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  6b7fa5:	48 81 c2 1c 10 00 00 	add    $0x101c,%rdx
  6b7fac:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  6b7fb0:	48 81 c1 1c 10 00 00 	add    $0x101c,%rcx
  6b7fb7:	48 be 2a 37 20 00 00 	movabs $0x20372a,%rsi
  6b7fbe:	00 00 00 
  6b7fc1:	e8 da 06 00 00       	callq  6b86a0 <check_str_eq>
  6b7fc6:	83 f8 00             	cmp    $0x0,%eax
  6b7fc9:	75 0c                	jne    6b7fd7 <message_eq+0x317>
  6b7fcb:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
  6b7fd2:	e9 39 06 00 00       	jmpq   6b8610 <message_eq+0x950>
  6b7fd7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  6b7fdb:	0f be 80 1c 10 00 00 	movsbl 0x101c(%rax),%eax
  6b7fe2:	83 f8 00             	cmp    $0x0,%eax
  6b7fe5:	0f 84 ff 02 00 00    	je     6b82ea <message_eq+0x62a>
  6b7feb:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  6b7fef:	83 78 14 05          	cmpl   $0x5,0x14(%rax)
  6b7ff3:	0f 84 f1 02 00 00    	je     6b82ea <message_eq+0x62a>
  6b7ff9:	48 8b 5d e8          	mov    -0x18(%rbp),%rbx
  6b7ffd:	48 81 c3 1c 10 00 00 	add    $0x101c,%rbx
  6b8004:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  6b8008:	48 81 c7 1c 10 00 00 	add    $0x101c,%rdi
  6b800f:	e8 cc 39 00 00       	callq  6bb9e0 <strlen@plt>
  6b8014:	48 8d 4d b8          	lea    -0x48(%rbp),%rcx
  6b8018:	48 89 df             	mov    %rbx,%rdi
  6b801b:	48 89 c6             	mov    %rax,%rsi
  6b801e:	31 d2                	xor    %edx,%edx
  6b8020:	e8 bb dd ff ff       	callq  6b5de0 <http_parser_parse_url>
  6b8025:	83 f8 00             	cmp    $0x0,%eax
  6b8028:	74 29                	je     6b8053 <message_eq+0x393>
  6b802a:	48 8b 3c 25 00 b8 71 	mov    0x71b800,%rdi
  6b8031:	00 
  6b8032:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  6b8036:	48 81 c2 1c 10 00 00 	add    $0x101c,%rdx
  6b803d:	48 be 0d 2b 20 00 00 	movabs $0x202b0d,%rsi
  6b8044:	00 00 00 
  6b8047:	b0 00                	mov    $0x0,%al
  6b8049:	e8 62 39 00 00       	callq  6bb9b0 <fprintf@plt>
  6b804e:	e8 6d 39 00 00       	callq  6bb9c0 <abort@plt>
  6b8053:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b8057:	48 83 b8 28 30 00 00 	cmpq   $0x0,0x3028(%rax)
  6b805e:	00 
  6b805f:	74 6e                	je     6b80cf <message_eq+0x40f>
  6b8061:	eb 00                	jmp    6b8063 <message_eq+0x3a3>
  6b8063:	0f b7 45 b8          	movzwl -0x48(%rbp),%eax
  6b8067:	83 e0 02             	and    $0x2,%eax
  6b806a:	83 f8 00             	cmp    $0x0,%eax
  6b806d:	74 32                	je     6b80a1 <message_eq+0x3e1>
  6b806f:	48 8d bd b0 fa ff ff 	lea    -0x550(%rbp),%rdi
  6b8076:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
  6b807a:	48 81 c6 1c 10 00 00 	add    $0x101c,%rsi
  6b8081:	0f b7 45 c0          	movzwl -0x40(%rbp),%eax
  6b8085:	48 98                	cltq   
  6b8087:	48 01 c6             	add    %rax,%rsi
  6b808a:	0f b7 55 c2          	movzwl -0x3e(%rbp),%edx
  6b808e:	e8 1d 3a 00 00       	callq  6bbab0 <memcpy@plt>
  6b8093:	0f b7 45 c2          	movzwl -0x3e(%rbp),%eax
  6b8097:	c6 84 05 b0 fa ff ff 	movb   $0x0,-0x550(%rbp,%rax,1)
  6b809e:	00 
  6b809f:	eb 07                	jmp    6b80a8 <message_eq+0x3e8>
  6b80a1:	c6 85 b0 fa ff ff 00 	movb   $0x0,-0x550(%rbp)
  6b80a8:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b80ac:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b80b0:	48 8b 90 28 30 00 00 	mov    0x3028(%rax),%rdx
  6b80b7:	48 8d 8d b0 fa ff ff 	lea    -0x550(%rbp),%rcx
  6b80be:	48 be 5f 52 20 00 00 	movabs $0x20525f,%rsi
  6b80c5:	00 00 00 
  6b80c8:	e8 d3 05 00 00       	callq  6b86a0 <check_str_eq>
  6b80cd:	eb 00                	jmp    6b80cf <message_eq+0x40f>
  6b80cf:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b80d3:	48 83 b8 30 30 00 00 	cmpq   $0x0,0x3030(%rax)
  6b80da:	00 
  6b80db:	74 6e                	je     6b814b <message_eq+0x48b>
  6b80dd:	eb 00                	jmp    6b80df <message_eq+0x41f>
  6b80df:	0f b7 45 b8          	movzwl -0x48(%rbp),%eax
  6b80e3:	83 e0 40             	and    $0x40,%eax
  6b80e6:	83 f8 00             	cmp    $0x0,%eax
  6b80e9:	74 32                	je     6b811d <message_eq+0x45d>
  6b80eb:	48 8d bd b0 fb ff ff 	lea    -0x450(%rbp),%rdi
  6b80f2:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
  6b80f6:	48 81 c6 1c 10 00 00 	add    $0x101c,%rsi
  6b80fd:	0f b7 45 d4          	movzwl -0x2c(%rbp),%eax
  6b8101:	48 98                	cltq   
  6b8103:	48 01 c6             	add    %rax,%rsi
  6b8106:	0f b7 55 d6          	movzwl -0x2a(%rbp),%edx
  6b810a:	e8 a1 39 00 00       	callq  6bbab0 <memcpy@plt>
  6b810f:	0f b7 45 d6          	movzwl -0x2a(%rbp),%eax
  6b8113:	c6 84 05 b0 fb ff ff 	movb   $0x0,-0x450(%rbp,%rax,1)
  6b811a:	00 
  6b811b:	eb 07                	jmp    6b8124 <message_eq+0x464>
  6b811d:	c6 85 b0 fb ff ff 00 	movb   $0x0,-0x450(%rbp)
  6b8124:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b8128:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b812c:	48 8b 90 30 30 00 00 	mov    0x3030(%rax),%rdx
  6b8133:	48 8d 8d b0 fb ff ff 	lea    -0x450(%rbp),%rcx
  6b813a:	48 be 30 2b 20 00 00 	movabs $0x202b30,%rsi
  6b8141:	00 00 00 
  6b8144:	e8 57 05 00 00       	callq  6b86a0 <check_str_eq>
  6b8149:	eb 00                	jmp    6b814b <message_eq+0x48b>
  6b814b:	0f b7 45 b8          	movzwl -0x48(%rbp),%eax
  6b814f:	83 e0 04             	and    $0x4,%eax
  6b8152:	83 f8 00             	cmp    $0x0,%eax
  6b8155:	74 06                	je     6b815d <message_eq+0x49d>
  6b8157:	0f b7 45 ba          	movzwl -0x46(%rbp),%eax
  6b815b:	eb 04                	jmp    6b8161 <message_eq+0x4a1>
  6b815d:	31 c0                	xor    %eax,%eax
  6b815f:	eb 00                	jmp    6b8161 <message_eq+0x4a1>
  6b8161:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  6b8165:	66 89 81 38 30 00 00 	mov    %ax,0x3038(%rcx)
  6b816c:	0f b7 45 b8          	movzwl -0x48(%rbp),%eax
  6b8170:	83 e0 10             	and    $0x10,%eax
  6b8173:	83 f8 00             	cmp    $0x0,%eax
  6b8176:	74 32                	je     6b81aa <message_eq+0x4ea>
  6b8178:	48 8d bd b0 fc ff ff 	lea    -0x350(%rbp),%rdi
  6b817f:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
  6b8183:	48 81 c6 1c 10 00 00 	add    $0x101c,%rsi
  6b818a:	0f b7 45 cc          	movzwl -0x34(%rbp),%eax
  6b818e:	48 98                	cltq   
  6b8190:	48 01 c6             	add    %rax,%rsi
  6b8193:	0f b7 55 ce          	movzwl -0x32(%rbp),%edx
  6b8197:	e8 14 39 00 00       	callq  6bbab0 <memcpy@plt>
  6b819c:	0f b7 45 ce          	movzwl -0x32(%rbp),%eax
  6b81a0:	c6 84 05 b0 fc ff ff 	movb   $0x0,-0x350(%rbp,%rax,1)
  6b81a7:	00 
  6b81a8:	eb 07                	jmp    6b81b1 <message_eq+0x4f1>
  6b81aa:	c6 85 b0 fc ff ff 00 	movb   $0x0,-0x350(%rbp)
  6b81b1:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b81b5:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  6b81b9:	48 81 c2 1c 20 00 00 	add    $0x201c,%rdx
  6b81c0:	48 8d 8d b0 fc ff ff 	lea    -0x350(%rbp),%rcx
  6b81c7:	48 be 5f 40 20 00 00 	movabs $0x20405f,%rsi
  6b81ce:	00 00 00 
  6b81d1:	e8 ca 04 00 00       	callq  6b86a0 <check_str_eq>
  6b81d6:	eb 00                	jmp    6b81d8 <message_eq+0x518>
  6b81d8:	0f b7 45 b8          	movzwl -0x48(%rbp),%eax
  6b81dc:	83 e0 20             	and    $0x20,%eax
  6b81df:	83 f8 00             	cmp    $0x0,%eax
  6b81e2:	74 32                	je     6b8216 <message_eq+0x556>
  6b81e4:	48 8d bd b0 fd ff ff 	lea    -0x250(%rbp),%rdi
  6b81eb:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
  6b81ef:	48 81 c6 1c 10 00 00 	add    $0x101c,%rsi
  6b81f6:	0f b7 45 d0          	movzwl -0x30(%rbp),%eax
  6b81fa:	48 98                	cltq   
  6b81fc:	48 01 c6             	add    %rax,%rsi
  6b81ff:	0f b7 55 d2          	movzwl -0x2e(%rbp),%edx
  6b8203:	e8 a8 38 00 00       	callq  6bbab0 <memcpy@plt>
  6b8208:	0f b7 45 d2          	movzwl -0x2e(%rbp),%eax
  6b820c:	c6 84 05 b0 fd ff ff 	movb   $0x0,-0x250(%rbp,%rax,1)
  6b8213:	00 
  6b8214:	eb 07                	jmp    6b821d <message_eq+0x55d>
  6b8216:	c6 85 b0 fd ff ff 00 	movb   $0x0,-0x250(%rbp)
  6b821d:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b8221:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  6b8225:	48 81 c2 1c 18 00 00 	add    $0x181c,%rdx
  6b822c:	48 8d 8d b0 fd ff ff 	lea    -0x250(%rbp),%rcx
  6b8233:	48 be 64 52 20 00 00 	movabs $0x205264,%rsi
  6b823a:	00 00 00 
  6b823d:	e8 5e 04 00 00       	callq  6b86a0 <check_str_eq>
  6b8242:	eb 00                	jmp    6b8244 <message_eq+0x584>
  6b8244:	0f b7 45 b8          	movzwl -0x48(%rbp),%eax
  6b8248:	83 e0 08             	and    $0x8,%eax
  6b824b:	83 f8 00             	cmp    $0x0,%eax
  6b824e:	74 32                	je     6b8282 <message_eq+0x5c2>
  6b8250:	48 8d bd b0 fe ff ff 	lea    -0x150(%rbp),%rdi
  6b8257:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
  6b825b:	48 81 c6 1c 10 00 00 	add    $0x101c,%rsi
  6b8262:	0f b7 45 c8          	movzwl -0x38(%rbp),%eax
  6b8266:	48 98                	cltq   
  6b8268:	48 01 c6             	add    %rax,%rsi
  6b826b:	0f b7 55 ca          	movzwl -0x36(%rbp),%edx
  6b826f:	e8 3c 38 00 00       	callq  6bbab0 <memcpy@plt>
  6b8274:	0f b7 45 ca          	movzwl -0x36(%rbp),%eax
  6b8278:	c6 84 05 b0 fe ff ff 	movb   $0x0,-0x150(%rbp,%rax,1)
  6b827f:	00 
  6b8280:	eb 07                	jmp    6b8289 <message_eq+0x5c9>
  6b8282:	c6 85 b0 fe ff ff 00 	movb   $0x0,-0x150(%rbp)
  6b8289:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b828d:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  6b8291:	48 81 c2 1c 08 00 00 	add    $0x81c,%rdx
  6b8298:	48 8d 8d b0 fe ff ff 	lea    -0x150(%rbp),%rcx
  6b829f:	48 be b3 50 20 00 00 	movabs $0x2050b3,%rsi
  6b82a6:	00 00 00 
  6b82a9:	e8 f2 03 00 00       	callq  6b86a0 <check_str_eq>
  6b82ae:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b82b2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b82b6:	0f b7 90 38 30 00 00 	movzwl 0x3038(%rax),%edx
  6b82bd:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  6b82c1:	0f b7 88 38 30 00 00 	movzwl 0x3038(%rax),%ecx
  6b82c8:	48 be 39 2b 20 00 00 	movabs $0x202b39,%rsi
  6b82cf:	00 00 00 
  6b82d2:	e8 49 03 00 00       	callq  6b8620 <check_num_eq>
  6b82d7:	83 f8 00             	cmp    $0x0,%eax
  6b82da:	75 0c                	jne    6b82e8 <message_eq+0x628>
  6b82dc:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
  6b82e3:	e9 28 03 00 00       	jmpq   6b8610 <message_eq+0x950>
  6b82e8:	eb 00                	jmp    6b82ea <message_eq+0x62a>
  6b82ea:	83 7d dc 00          	cmpl   $0x0,-0x24(%rbp)
  6b82ee:	74 25                	je     6b8315 <message_eq+0x655>
  6b82f0:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  6b82f4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  6b82f8:	48 8b 88 20 30 00 00 	mov    0x3020(%rax),%rcx
  6b82ff:	48 be c0 50 20 00 00 	movabs $0x2050c0,%rsi
  6b8306:	00 00 00 
  6b8309:	31 d2                	xor    %edx,%edx
  6b830b:	e8 10 03 00 00       	callq  6b8620 <check_num_eq>
  6b8310:	e9 88 00 00 00       	jmpq   6b839d <message_eq+0x6dd>
  6b8315:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b8319:	48 83 b8 20 30 00 00 	cmpq   $0x0,0x3020(%rax)
  6b8320:	00 
  6b8321:	74 3c                	je     6b835f <message_eq+0x69f>
  6b8323:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b8327:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b832b:	48 8b 90 20 30 00 00 	mov    0x3020(%rax),%rdx
  6b8332:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  6b8336:	48 8b 88 20 30 00 00 	mov    0x3020(%rax),%rcx
  6b833d:	48 be c0 50 20 00 00 	movabs $0x2050c0,%rsi
  6b8344:	00 00 00 
  6b8347:	e8 d4 02 00 00       	callq  6b8620 <check_num_eq>
  6b834c:	83 f8 00             	cmp    $0x0,%eax
  6b834f:	75 0c                	jne    6b835d <message_eq+0x69d>
  6b8351:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
  6b8358:	e9 b3 02 00 00       	jmpq   6b8610 <message_eq+0x950>
  6b835d:	eb 3c                	jmp    6b839b <message_eq+0x6db>
  6b835f:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b8363:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  6b8367:	48 81 c2 1c 28 00 00 	add    $0x281c,%rdx
  6b836e:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  6b8372:	48 81 c1 1c 28 00 00 	add    $0x281c,%rcx
  6b8379:	48 be bf 53 20 00 00 	movabs $0x2053bf,%rsi
  6b8380:	00 00 00 
  6b8383:	e8 18 03 00 00       	callq  6b86a0 <check_str_eq>
  6b8388:	83 f8 00             	cmp    $0x0,%eax
  6b838b:	75 0c                	jne    6b8399 <message_eq+0x6d9>
  6b838d:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
  6b8394:	e9 77 02 00 00       	jmpq   6b8610 <message_eq+0x950>
  6b8399:	eb 00                	jmp    6b839b <message_eq+0x6db>
  6b839b:	eb 00                	jmp    6b839d <message_eq+0x6dd>
  6b839d:	83 7d dc 00          	cmpl   $0x0,-0x24(%rbp)
  6b83a1:	74 24                	je     6b83c7 <message_eq+0x707>
  6b83a3:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  6b83a7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  6b83ab:	8b 88 4c 00 01 00    	mov    0x1004c(%rax),%ecx
  6b83b1:	48 be f6 3e 20 00 00 	movabs $0x203ef6,%rsi
  6b83b8:	00 00 00 
  6b83bb:	31 d2                	xor    %edx,%edx
  6b83bd:	e8 5e 02 00 00       	callq  6b8620 <check_num_eq>
  6b83c2:	e9 ee 00 00 00       	jmpq   6b84b5 <message_eq+0x7f5>
  6b83c7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  6b83cb:	8b 80 48 00 01 00    	mov    0x10048(%rax),%eax
  6b83d1:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  6b83d5:	3b 81 4c 00 01 00    	cmp    0x1004c(%rcx),%eax
  6b83db:	75 02                	jne    6b83df <message_eq+0x71f>
  6b83dd:	eb 28                	jmp    6b8407 <message_eq+0x747>
  6b83df:	48 bf 7a 74 20 00 00 	movabs $0x20747a,%rdi
  6b83e6:	00 00 00 
  6b83e9:	48 be e4 81 20 00 00 	movabs $0x2081e4,%rsi
  6b83f0:	00 00 00 
  6b83f3:	48 b9 c6 3b 20 00 00 	movabs $0x203bc6,%rcx
  6b83fa:	00 00 00 
  6b83fd:	ba 09 0b 00 00       	mov    $0xb09,%edx
  6b8402:	e8 89 35 00 00       	callq  6bb990 <__assert_fail@plt>
  6b8407:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b840b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b840f:	8b 90 4c 00 01 00    	mov    0x1004c(%rax),%edx
  6b8415:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  6b8419:	8b 88 4c 00 01 00    	mov    0x1004c(%rax),%ecx
  6b841f:	48 be f6 3e 20 00 00 	movabs $0x203ef6,%rsi
  6b8426:	00 00 00 
  6b8429:	e8 f2 01 00 00       	callq  6b8620 <check_num_eq>
  6b842e:	83 f8 00             	cmp    $0x0,%eax
  6b8431:	75 0c                	jne    6b843f <message_eq+0x77f>
  6b8433:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
  6b843a:	e9 d1 01 00 00       	jmpq   6b8610 <message_eq+0x950>
  6b843f:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%rbp)
  6b8446:	8b 4d e0             	mov    -0x20(%rbp),%ecx
  6b8449:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  6b844d:	31 c0                	xor    %eax,%eax
  6b844f:	3b 8a 48 00 01 00    	cmp    0x10048(%rdx),%ecx
  6b8455:	7d 07                	jge    6b845e <message_eq+0x79e>
  6b8457:	83 7d e0 10          	cmpl   $0x10,-0x20(%rbp)
  6b845b:	0f 9c c0             	setl   %al
  6b845e:	a8 01                	test   $0x1,%al
  6b8460:	75 02                	jne    6b8464 <message_eq+0x7a4>
  6b8462:	eb 4f                	jmp    6b84b3 <message_eq+0x7f3>
  6b8464:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b8468:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b846c:	48 63 4d e0          	movslq -0x20(%rbp),%rcx
  6b8470:	8b 94 88 50 00 01 00 	mov    0x10050(%rax,%rcx,4),%edx
  6b8477:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  6b847b:	48 63 4d e0          	movslq -0x20(%rbp),%rcx
  6b847f:	8b 8c 88 50 00 01 00 	mov    0x10050(%rax,%rcx,4),%ecx
  6b8486:	48 be b8 7f 20 00 00 	movabs $0x207fb8,%rsi
  6b848d:	00 00 00 
  6b8490:	e8 8b 01 00 00       	callq  6b8620 <check_num_eq>
  6b8495:	83 f8 00             	cmp    $0x0,%eax
  6b8498:	75 0c                	jne    6b84a6 <message_eq+0x7e6>
  6b849a:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
  6b84a1:	e9 6a 01 00 00       	jmpq   6b8610 <message_eq+0x950>
  6b84a6:	eb 00                	jmp    6b84a8 <message_eq+0x7e8>
  6b84a8:	8b 45 e0             	mov    -0x20(%rbp),%eax
  6b84ab:	83 c0 01             	add    $0x1,%eax
  6b84ae:	89 45 e0             	mov    %eax,-0x20(%rbp)
  6b84b1:	eb 93                	jmp    6b8446 <message_eq+0x786>
  6b84b3:	eb 00                	jmp    6b84b5 <message_eq+0x7f5>
  6b84b5:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b84b9:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b84bd:	8b 90 3c 30 00 00    	mov    0x303c(%rax),%edx
  6b84c3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  6b84c7:	8b 88 3c 30 00 00    	mov    0x303c(%rax),%ecx
  6b84cd:	48 be 0a 3f 20 00 00 	movabs $0x203f0a,%rsi
  6b84d4:	00 00 00 
  6b84d7:	e8 44 01 00 00       	callq  6b8620 <check_num_eq>
  6b84dc:	83 f8 00             	cmp    $0x0,%eax
  6b84df:	75 0c                	jne    6b84ed <message_eq+0x82d>
  6b84e1:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
  6b84e8:	e9 23 01 00 00       	jmpq   6b8610 <message_eq+0x950>
  6b84ed:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%rbp)
  6b84f4:	8b 45 e0             	mov    -0x20(%rbp),%eax
  6b84f7:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  6b84fb:	3b 81 3c 30 00 00    	cmp    0x303c(%rcx),%eax
  6b8501:	0f 8d c3 00 00 00    	jge    6b85ca <message_eq+0x90a>
  6b8507:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b850b:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  6b850f:	48 81 c2 44 30 00 00 	add    $0x3044,%rdx
  6b8516:	48 63 45 e0          	movslq -0x20(%rbp),%rax
  6b851a:	48 c1 e0 0c          	shl    $0xc,%rax
  6b851e:	48 01 c2             	add    %rax,%rdx
  6b8521:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  6b8525:	48 81 c1 44 30 00 00 	add    $0x3044,%rcx
  6b852c:	48 63 45 e0          	movslq -0x20(%rbp),%rax
  6b8530:	48 c1 e0 0c          	shl    $0xc,%rax
  6b8534:	48 01 c1             	add    %rax,%rcx
  6b8537:	48 be c9 7f 20 00 00 	movabs $0x207fc9,%rsi
  6b853e:	00 00 00 
  6b8541:	e8 5a 01 00 00       	callq  6b86a0 <check_str_eq>
  6b8546:	89 45 d8             	mov    %eax,-0x28(%rbp)
  6b8549:	83 7d d8 00          	cmpl   $0x0,-0x28(%rbp)
  6b854d:	75 0c                	jne    6b855b <message_eq+0x89b>
  6b854f:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
  6b8556:	e9 b5 00 00 00       	jmpq   6b8610 <message_eq+0x950>
  6b855b:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b855f:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  6b8563:	48 81 c2 44 30 00 00 	add    $0x3044,%rdx
  6b856a:	48 63 45 e0          	movslq -0x20(%rbp),%rax
  6b856e:	48 c1 e0 0c          	shl    $0xc,%rax
  6b8572:	48 01 c2             	add    %rax,%rdx
  6b8575:	48 81 c2 00 08 00 00 	add    $0x800,%rdx
  6b857c:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  6b8580:	48 81 c1 44 30 00 00 	add    $0x3044,%rcx
  6b8587:	48 63 45 e0          	movslq -0x20(%rbp),%rax
  6b858b:	48 c1 e0 0c          	shl    $0xc,%rax
  6b858f:	48 01 c1             	add    %rax,%rcx
  6b8592:	48 81 c1 00 08 00 00 	add    $0x800,%rcx
  6b8599:	48 be 05 29 20 00 00 	movabs $0x202905,%rsi
  6b85a0:	00 00 00 
  6b85a3:	e8 f8 00 00 00       	callq  6b86a0 <check_str_eq>
  6b85a8:	89 45 d8             	mov    %eax,-0x28(%rbp)
  6b85ab:	83 7d d8 00          	cmpl   $0x0,-0x28(%rbp)
  6b85af:	75 09                	jne    6b85ba <message_eq+0x8fa>
  6b85b1:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
  6b85b8:	eb 56                	jmp    6b8610 <message_eq+0x950>
  6b85ba:	eb 00                	jmp    6b85bc <message_eq+0x8fc>
  6b85bc:	8b 45 e0             	mov    -0x20(%rbp),%eax
  6b85bf:	83 c0 01             	add    $0x1,%eax
  6b85c2:	89 45 e0             	mov    %eax,-0x20(%rbp)
  6b85c5:	e9 2a ff ff ff       	jmpq   6b84f4 <message_eq+0x834>
  6b85ca:	83 7d dc 00          	cmpl   $0x0,-0x24(%rbp)
  6b85ce:	75 39                	jne    6b8609 <message_eq+0x949>
  6b85d0:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b85d4:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b85d8:	48 8b 90 90 00 01 00 	mov    0x10090(%rax),%rdx
  6b85df:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  6b85e3:	48 8b 88 90 00 01 00 	mov    0x10090(%rax),%rcx
  6b85ea:	48 be 79 69 20 00 00 	movabs $0x206979,%rsi
  6b85f1:	00 00 00 
  6b85f4:	e8 a7 00 00 00       	callq  6b86a0 <check_str_eq>
  6b85f9:	83 f8 00             	cmp    $0x0,%eax
  6b85fc:	75 09                	jne    6b8607 <message_eq+0x947>
  6b85fe:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
  6b8605:	eb 09                	jmp    6b8610 <message_eq+0x950>
  6b8607:	eb 00                	jmp    6b8609 <message_eq+0x949>
  6b8609:	c7 45 e4 01 00 00 00 	movl   $0x1,-0x1c(%rbp)
  6b8610:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b8613:	48 81 c4 48 05 00 00 	add    $0x548,%rsp
  6b861a:	5b                   	pop    %rbx
  6b861b:	5d                   	pop    %rbp
  6b861c:	c3                   	retq   
  6b861d:	cc                   	int3   
  6b861e:	cc                   	int3   
  6b861f:	cc                   	int3   

00000000006b8620 <check_num_eq>:
  6b8620:	55                   	push   %rbp
  6b8621:	48 89 e5             	mov    %rsp,%rbp
  6b8624:	48 83 ec 20          	sub    $0x20,%rsp
  6b8628:	48 89 7d e0          	mov    %rdi,-0x20(%rbp)
  6b862c:	48 89 75 e8          	mov    %rsi,-0x18(%rbp)
  6b8630:	89 55 f8             	mov    %edx,-0x8(%rbp)
  6b8633:	89 4d fc             	mov    %ecx,-0x4(%rbp)
  6b8636:	8b 45 f8             	mov    -0x8(%rbp),%eax
  6b8639:	3b 45 fc             	cmp    -0x4(%rbp),%eax
  6b863c:	74 4d                	je     6b868b <check_num_eq+0x6b>
  6b863e:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
  6b8642:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  6b8646:	48 8b 10             	mov    (%rax),%rdx
  6b8649:	48 bf 5c 69 20 00 00 	movabs $0x20695c,%rdi
  6b8650:	00 00 00 
  6b8653:	b0 00                	mov    $0x0,%al
  6b8655:	e8 96 33 00 00       	callq  6bb9f0 <printf@plt>
  6b865a:	8b 75 f8             	mov    -0x8(%rbp),%esi
  6b865d:	48 bf 2a 6e 20 00 00 	movabs $0x206e2a,%rdi
  6b8664:	00 00 00 
  6b8667:	b0 00                	mov    $0x0,%al
  6b8669:	e8 82 33 00 00       	callq  6bb9f0 <printf@plt>
  6b866e:	8b 75 fc             	mov    -0x4(%rbp),%esi
  6b8671:	48 bf ee 37 20 00 00 	movabs $0x2037ee,%rdi
  6b8678:	00 00 00 
  6b867b:	b0 00                	mov    $0x0,%al
  6b867d:	e8 6e 33 00 00       	callq  6bb9f0 <printf@plt>
  6b8682:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
  6b8689:	eb 07                	jmp    6b8692 <check_num_eq+0x72>
  6b868b:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%rbp)
  6b8692:	8b 45 f4             	mov    -0xc(%rbp),%eax
  6b8695:	48 83 c4 20          	add    $0x20,%rsp
  6b8699:	5d                   	pop    %rbp
  6b869a:	c3                   	retq   
  6b869b:	cc                   	int3   
  6b869c:	cc                   	int3   
  6b869d:	cc                   	int3   
  6b869e:	cc                   	int3   
  6b869f:	cc                   	int3   

00000000006b86a0 <check_str_eq>:
  6b86a0:	55                   	push   %rbp
  6b86a1:	48 89 e5             	mov    %rsp,%rbp
  6b86a4:	48 83 ec 30          	sub    $0x30,%rsp
  6b86a8:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  6b86ac:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  6b86b0:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
  6b86b4:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
  6b86b8:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
  6b86bd:	0f 94 c0             	sete   %al
  6b86c0:	24 01                	and    $0x1,%al
  6b86c2:	0f b6 c0             	movzbl %al,%eax
  6b86c5:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
  6b86ca:	0f 94 c1             	sete   %cl
  6b86cd:	80 e1 01             	and    $0x1,%cl
  6b86d0:	0f b6 c9             	movzbl %cl,%ecx
  6b86d3:	39 c8                	cmp    %ecx,%eax
  6b86d5:	74 75                	je     6b874c <check_str_eq+0xac>
  6b86d7:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
  6b86db:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b86df:	48 8b 10             	mov    (%rax),%rdx
  6b86e2:	48 bf 5c 69 20 00 00 	movabs $0x20695c,%rdi
  6b86e9:	00 00 00 
  6b86ec:	b0 00                	mov    $0x0,%al
  6b86ee:	e8 fd 32 00 00       	callq  6bb9f0 <printf@plt>
  6b86f3:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
  6b86f8:	75 0c                	jne    6b8706 <check_str_eq+0x66>
  6b86fa:	48 be fb 37 20 00 00 	movabs $0x2037fb,%rsi
  6b8701:	00 00 00 
  6b8704:	eb 04                	jmp    6b870a <check_str_eq+0x6a>
  6b8706:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
  6b870a:	48 bf 5a 31 20 00 00 	movabs $0x20315a,%rdi
  6b8711:	00 00 00 
  6b8714:	b0 00                	mov    $0x0,%al
  6b8716:	e8 d5 32 00 00       	callq  6bb9f0 <printf@plt>
  6b871b:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
  6b8720:	75 0c                	jne    6b872e <check_str_eq+0x8e>
  6b8722:	48 be fb 37 20 00 00 	movabs $0x2037fb,%rsi
  6b8729:	00 00 00 
  6b872c:	eb 04                	jmp    6b8732 <check_str_eq+0x92>
  6b872e:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
  6b8732:	48 bf 31 66 20 00 00 	movabs $0x206631,%rdi
  6b8739:	00 00 00 
  6b873c:	b0 00                	mov    $0x0,%al
  6b873e:	e8 ad 32 00 00       	callq  6bb9f0 <printf@plt>
  6b8743:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  6b874a:	eb 70                	jmp    6b87bc <check_str_eq+0x11c>
  6b874c:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
  6b8751:	74 62                	je     6b87b5 <check_str_eq+0x115>
  6b8753:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b8757:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
  6b875b:	e8 b0 32 00 00       	callq  6bba10 <strcmp@plt>
  6b8760:	31 c9                	xor    %ecx,%ecx
  6b8762:	39 c1                	cmp    %eax,%ecx
  6b8764:	74 4f                	je     6b87b5 <check_str_eq+0x115>
  6b8766:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
  6b876a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b876e:	48 8b 10             	mov    (%rax),%rdx
  6b8771:	48 bf 5c 69 20 00 00 	movabs $0x20695c,%rdi
  6b8778:	00 00 00 
  6b877b:	b0 00                	mov    $0x0,%al
  6b877d:	e8 6e 32 00 00       	callq  6bb9f0 <printf@plt>
  6b8782:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
  6b8786:	48 bf 8e 6b 20 00 00 	movabs $0x206b8e,%rdi
  6b878d:	00 00 00 
  6b8790:	b0 00                	mov    $0x0,%al
  6b8792:	e8 59 32 00 00       	callq  6bb9f0 <printf@plt>
  6b8797:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
  6b879b:	48 bf 3e 66 20 00 00 	movabs $0x20663e,%rdi
  6b87a2:	00 00 00 
  6b87a5:	b0 00                	mov    $0x0,%al
  6b87a7:	e8 44 32 00 00       	callq  6bb9f0 <printf@plt>
  6b87ac:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  6b87b3:	eb 07                	jmp    6b87bc <check_str_eq+0x11c>
  6b87b5:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
  6b87bc:	8b 45 fc             	mov    -0x4(%rbp),%eax
  6b87bf:	48 83 c4 30          	add    $0x30,%rsp
  6b87c3:	5d                   	pop    %rbp
  6b87c4:	c3                   	retq   
  6b87c5:	cc                   	int3   
  6b87c6:	cc                   	int3   
  6b87c7:	cc                   	int3   
  6b87c8:	cc                   	int3   
  6b87c9:	cc                   	int3   
  6b87ca:	cc                   	int3   
  6b87cb:	cc                   	int3   
  6b87cc:	cc                   	int3   
  6b87cd:	cc                   	int3   
  6b87ce:	cc                   	int3   
  6b87cf:	cc                   	int3   

00000000006b87d0 <count_parsed_messages>:
  6b87d0:	55                   	push   %rbp
  6b87d1:	48 89 e5             	mov    %rsp,%rbp
  6b87d4:	48 83 ec 70          	sub    $0x70,%rsp
  6b87d8:	84 c0                	test   %al,%al
  6b87da:	74 2c                	je     6b8808 <count_parsed_messages+0x38>
  6b87dc:	0f 29 85 40 ff ff ff 	movaps %xmm0,-0xc0(%rbp)
  6b87e3:	0f 29 8d 50 ff ff ff 	movaps %xmm1,-0xb0(%rbp)
  6b87ea:	0f 29 95 60 ff ff ff 	movaps %xmm2,-0xa0(%rbp)
  6b87f1:	0f 29 9d 70 ff ff ff 	movaps %xmm3,-0x90(%rbp)
  6b87f8:	0f 29 65 80          	movaps %xmm4,-0x80(%rbp)
  6b87fc:	0f 29 6d 90          	movaps %xmm5,-0x70(%rbp)
  6b8800:	0f 29 75 a0          	movaps %xmm6,-0x60(%rbp)
  6b8804:	0f 29 7d b0          	movaps %xmm7,-0x50(%rbp)
  6b8808:	4c 89 8d 38 ff ff ff 	mov    %r9,-0xc8(%rbp)
  6b880f:	4c 89 85 30 ff ff ff 	mov    %r8,-0xd0(%rbp)
  6b8816:	48 89 8d 28 ff ff ff 	mov    %rcx,-0xd8(%rbp)
  6b881d:	48 89 95 20 ff ff ff 	mov    %rdx,-0xe0(%rbp)
  6b8824:	48 89 b5 18 ff ff ff 	mov    %rsi,-0xe8(%rbp)
  6b882b:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
  6b882f:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  6b8833:	48 8d 8d 10 ff ff ff 	lea    -0xf0(%rbp),%rcx
  6b883a:	48 89 48 10          	mov    %rcx,0x10(%rax)
  6b883e:	48 8d 4d 10          	lea    0x10(%rbp),%rcx
  6b8842:	48 89 48 08          	mov    %rcx,0x8(%rax)
  6b8846:	c7 40 04 30 00 00 00 	movl   $0x30,0x4(%rax)
  6b884d:	c7 00 08 00 00 00    	movl   $0x8,(%rax)
  6b8853:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
  6b885a:	00 
  6b885b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6b885f:	48 3b 45 f0          	cmp    -0x10(%rbp),%rax
  6b8863:	73 5c                	jae    6b88c1 <count_parsed_messages+0xf1>
  6b8865:	48 8d 4d c0          	lea    -0x40(%rbp),%rcx
  6b8869:	8b 55 c0             	mov    -0x40(%rbp),%edx
  6b886c:	83 fa 28             	cmp    $0x28,%edx
  6b886f:	77 0e                	ja     6b887f <count_parsed_messages+0xaf>
  6b8871:	48 63 c2             	movslq %edx,%rax
  6b8874:	48 03 41 10          	add    0x10(%rcx),%rax
  6b8878:	83 c2 08             	add    $0x8,%edx
  6b887b:	89 11                	mov    %edx,(%rcx)
  6b887d:	eb 0f                	jmp    6b888e <count_parsed_messages+0xbe>
  6b887f:	48 8b 41 08          	mov    0x8(%rcx),%rax
  6b8883:	48 89 c2             	mov    %rax,%rdx
  6b8886:	48 83 c2 08          	add    $0x8,%rdx
  6b888a:	48 89 51 08          	mov    %rdx,0x8(%rcx)
  6b888e:	48 8b 00             	mov    (%rax),%rax
  6b8891:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  6b8895:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  6b8899:	48 83 b8 90 00 01 00 	cmpq   $0x0,0x10090(%rax)
  6b88a0:	00 
  6b88a1:	74 0e                	je     6b88b1 <count_parsed_messages+0xe1>
  6b88a3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6b88a7:	48 83 c0 01          	add    $0x1,%rax
  6b88ab:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  6b88af:	eb 18                	jmp    6b88c9 <count_parsed_messages+0xf9>
  6b88b1:	eb 00                	jmp    6b88b3 <count_parsed_messages+0xe3>
  6b88b3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6b88b7:	48 83 c0 01          	add    $0x1,%rax
  6b88bb:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b88bf:	eb 9a                	jmp    6b885b <count_parsed_messages+0x8b>
  6b88c1:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b88c5:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  6b88c9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  6b88cd:	48 83 c4 70          	add    $0x70,%rsp
  6b88d1:	5d                   	pop    %rbp
  6b88d2:	c3                   	retq   
  6b88d3:	cc                   	int3   
  6b88d4:	cc                   	int3   
  6b88d5:	cc                   	int3   
  6b88d6:	cc                   	int3   
  6b88d7:	cc                   	int3   
  6b88d8:	cc                   	int3   
  6b88d9:	cc                   	int3   
  6b88da:	cc                   	int3   
  6b88db:	cc                   	int3   
  6b88dc:	cc                   	int3   
  6b88dd:	cc                   	int3   
  6b88de:	cc                   	int3   
  6b88df:	cc                   	int3   

00000000006b88e0 <upgrade_message_fix>:
  6b88e0:	55                   	push   %rbp
  6b88e1:	48 89 e5             	mov    %rsp,%rbp
  6b88e4:	53                   	push   %rbx
  6b88e5:	48 81 ec f8 00 00 00 	sub    $0xf8,%rsp
  6b88ec:	84 c0                	test   %al,%al
  6b88ee:	74 2f                	je     6b891f <upgrade_message_fix+0x3f>
  6b88f0:	0f 29 85 30 ff ff ff 	movaps %xmm0,-0xd0(%rbp)
  6b88f7:	0f 29 8d 40 ff ff ff 	movaps %xmm1,-0xc0(%rbp)
  6b88fe:	0f 29 95 50 ff ff ff 	movaps %xmm2,-0xb0(%rbp)
  6b8905:	0f 29 9d 60 ff ff ff 	movaps %xmm3,-0xa0(%rbp)
  6b890c:	0f 29 a5 70 ff ff ff 	movaps %xmm4,-0x90(%rbp)
  6b8913:	0f 29 6d 80          	movaps %xmm5,-0x80(%rbp)
  6b8917:	0f 29 75 90          	movaps %xmm6,-0x70(%rbp)
  6b891b:	0f 29 7d a0          	movaps %xmm7,-0x60(%rbp)
  6b891f:	4c 89 8d 28 ff ff ff 	mov    %r9,-0xd8(%rbp)
  6b8926:	4c 89 85 20 ff ff ff 	mov    %r8,-0xe0(%rbp)
  6b892d:	48 89 8d 18 ff ff ff 	mov    %rcx,-0xe8(%rbp)
  6b8934:	48 89 7d e0          	mov    %rdi,-0x20(%rbp)
  6b8938:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
  6b893c:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
  6b8940:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
  6b8947:	00 
  6b8948:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
  6b894c:	48 8d 8d 00 ff ff ff 	lea    -0x100(%rbp),%rcx
  6b8953:	48 89 48 10          	mov    %rcx,0x10(%rax)
  6b8957:	48 8d 4d 10          	lea    0x10(%rbp),%rcx
  6b895b:	48 89 48 08          	mov    %rcx,0x8(%rax)
  6b895f:	c7 40 04 30 00 00 00 	movl   $0x30,0x4(%rax)
  6b8966:	c7 00 18 00 00 00    	movl   $0x18,(%rax)
  6b896c:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
  6b8973:	00 
  6b8974:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b8978:	48 3b 45 c8          	cmp    -0x38(%rbp),%rax
  6b897c:	0f 83 00 01 00 00    	jae    6b8a82 <upgrade_message_fix+0x1a2>
  6b8982:	48 8d 4d b0          	lea    -0x50(%rbp),%rcx
  6b8986:	8b 55 b0             	mov    -0x50(%rbp),%edx
  6b8989:	83 fa 28             	cmp    $0x28,%edx
  6b898c:	77 0e                	ja     6b899c <upgrade_message_fix+0xbc>
  6b898e:	48 63 c2             	movslq %edx,%rax
  6b8991:	48 03 41 10          	add    0x10(%rcx),%rax
  6b8995:	83 c2 08             	add    $0x8,%edx
  6b8998:	89 11                	mov    %edx,(%rcx)
  6b899a:	eb 0f                	jmp    6b89ab <upgrade_message_fix+0xcb>
  6b899c:	48 8b 41 08          	mov    0x8(%rcx),%rax
  6b89a0:	48 89 c2             	mov    %rax,%rdx
  6b89a3:	48 83 c2 08          	add    $0x8,%rdx
  6b89a7:	48 89 51 08          	mov    %rdx,0x8(%rcx)
  6b89ab:	48 8b 00             	mov    (%rax),%rax
  6b89ae:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  6b89b2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b89b6:	48 8b 78 08          	mov    0x8(%rax),%rdi
  6b89ba:	e8 21 30 00 00       	callq  6bb9e0 <strlen@plt>
  6b89bf:	48 03 45 e8          	add    -0x18(%rbp),%rax
  6b89c3:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  6b89c7:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b89cb:	48 83 b8 90 00 01 00 	cmpq   $0x0,0x10090(%rax)
  6b89d2:	00 
  6b89d3:	0f 84 96 00 00 00    	je     6b8a6f <upgrade_message_fix+0x18f>
  6b89d9:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b89dd:	48 8b b8 90 00 01 00 	mov    0x10090(%rax),%rdi
  6b89e4:	e8 f7 2f 00 00       	callq  6bb9e0 <strlen@plt>
  6b89e9:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  6b89ed:	48 29 c1             	sub    %rax,%rcx
  6b89f0:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
  6b89f4:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b89f8:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  6b89fc:	48 03 55 e8          	add    -0x18(%rbp),%rdx
  6b8a00:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  6b8a04:	48 03 4d d0          	add    -0x30(%rbp),%rcx
  6b8a08:	48 be 79 69 20 00 00 	movabs $0x206979,%rsi
  6b8a0f:	00 00 00 
  6b8a12:	e8 89 fc ff ff       	callq  6b86a0 <check_str_eq>
  6b8a17:	83 f8 00             	cmp    $0x0,%eax
  6b8a1a:	75 05                	jne    6b8a21 <upgrade_message_fix+0x141>
  6b8a1c:	e8 9f 2f 00 00       	callq  6bb9c0 <abort@plt>
  6b8a21:	48 8b 5d e0          	mov    -0x20(%rbp),%rbx
  6b8a25:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  6b8a29:	48 01 c3             	add    %rax,%rbx
  6b8a2c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b8a30:	48 8b b8 90 00 01 00 	mov    0x10090(%rax),%rdi
  6b8a37:	e8 a4 2f 00 00       	callq  6bb9e0 <strlen@plt>
  6b8a3c:	c6 04 18 00          	movb   $0x0,(%rax,%rbx,1)
  6b8a40:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  6b8a44:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
  6b8a48:	48 01 c8             	add    %rcx,%rax
  6b8a4b:	8b 0d 47 2d 06 00    	mov    0x62d47(%rip),%ecx        # 71b798 <num_messages>
  6b8a51:	83 c1 ff             	add    $0xffffffff,%ecx
  6b8a54:	48 63 c9             	movslq %ecx,%rcx
  6b8a57:	48 69 c9 c8 00 01 00 	imul   $0x100c8,%rcx,%rcx
  6b8a5e:	48 89 81 40 b4 6d 00 	mov    %rax,0x6db440(%rcx)
  6b8a65:	48 81 c4 f8 00 00 00 	add    $0xf8,%rsp
  6b8a6c:	5b                   	pop    %rbx
  6b8a6d:	5d                   	pop    %rbp
  6b8a6e:	c3                   	retq   
  6b8a6f:	eb 00                	jmp    6b8a71 <upgrade_message_fix+0x191>
  6b8a71:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b8a75:	48 83 c0 01          	add    $0x1,%rax
  6b8a79:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  6b8a7d:	e9 f2 fe ff ff       	jmpq   6b8974 <upgrade_message_fix+0x94>
  6b8a82:	48 bf 2f 82 20 00 00 	movabs $0x20822f,%rdi
  6b8a89:	00 00 00 
  6b8a8c:	b0 00                	mov    $0x0,%al
  6b8a8e:	e8 5d 2f 00 00       	callq  6bb9f0 <printf@plt>
  6b8a93:	e8 28 2f 00 00       	callq  6bb9c0 <abort@plt>
  6b8a98:	cc                   	int3   
  6b8a99:	cc                   	int3   
  6b8a9a:	cc                   	int3   
  6b8a9b:	cc                   	int3   
  6b8a9c:	cc                   	int3   
  6b8a9d:	cc                   	int3   
  6b8a9e:	cc                   	int3   
  6b8a9f:	cc                   	int3   

00000000006b8aa0 <test_preserve_data>:
  6b8aa0:	55                   	push   %rbp
  6b8aa1:	48 89 e5             	mov    %rsp,%rbp
  6b8aa4:	48 83 ec 40          	sub    $0x40,%rsp
  6b8aa8:	48 8b 04 25 b0 c0 6a 	mov    0x6ac0b0,%rax
  6b8aaf:	00 
  6b8ab0:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  6b8ab4:	48 8b 04 25 b8 c0 6a 	mov    0x6ac0b8,%rax
  6b8abb:	00 
  6b8abc:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  6b8ac0:	48 8b 04 25 c0 c0 6a 	mov    0x6ac0c0,%rax
  6b8ac7:	00 
  6b8ac8:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  6b8acc:	66 8b 04 25 c8 c0 6a 	mov    0x6ac0c8,%ax
  6b8ad3:	00 
  6b8ad4:	66 89 45 f8          	mov    %ax,-0x8(%rbp)
  6b8ad8:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  6b8adc:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  6b8ae0:	48 8d 7d c0          	lea    -0x40(%rbp),%rdi
  6b8ae4:	31 f6                	xor    %esi,%esi
  6b8ae6:	e8 65 d1 ff ff       	callq  6b5c50 <http_parser_init>
  6b8aeb:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b8aef:	48 8d 4d e0          	lea    -0x20(%rbp),%rcx
  6b8af3:	48 39 c8             	cmp    %rcx,%rax
  6b8af6:	74 16                	je     6b8b0e <test_preserve_data+0x6e>
  6b8af8:	48 bf c4 53 20 00 00 	movabs $0x2053c4,%rdi
  6b8aff:	00 00 00 
  6b8b02:	b0 00                	mov    $0x0,%al
  6b8b04:	e8 e7 2e 00 00       	callq  6bb9f0 <printf@plt>
  6b8b09:	e8 b2 2e 00 00       	callq  6bb9c0 <abort@plt>
  6b8b0e:	48 83 c4 40          	add    $0x40,%rsp
  6b8b12:	5d                   	pop    %rbp
  6b8b13:	c3                   	retq   
  6b8b14:	cc                   	int3   
  6b8b15:	cc                   	int3   
  6b8b16:	cc                   	int3   
  6b8b17:	cc                   	int3   
  6b8b18:	cc                   	int3   
  6b8b19:	cc                   	int3   
  6b8b1a:	cc                   	int3   
  6b8b1b:	cc                   	int3   
  6b8b1c:	cc                   	int3   
  6b8b1d:	cc                   	int3   
  6b8b1e:	cc                   	int3   
  6b8b1f:	cc                   	int3   

00000000006b8b20 <dump_url>:
  6b8b20:	55                   	push   %rbp
  6b8b21:	48 89 e5             	mov    %rsp,%rbp
  6b8b24:	48 83 ec 20          	sub    $0x20,%rsp
  6b8b28:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  6b8b2c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  6b8b30:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b8b34:	0f b7 30             	movzwl (%rax),%esi
  6b8b37:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b8b3b:	0f b7 50 02          	movzwl 0x2(%rax),%edx
  6b8b3f:	48 bf 41 68 20 00 00 	movabs $0x206841,%rdi
  6b8b46:	00 00 00 
  6b8b49:	b0 00                	mov    $0x0,%al
  6b8b4b:	e8 a0 2e 00 00       	callq  6bb9f0 <printf@plt>
  6b8b50:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  6b8b57:	83 7d fc 07          	cmpl   $0x7,-0x4(%rbp)
  6b8b5b:	0f 83 8a 00 00 00    	jae    6b8beb <dump_url+0xcb>
  6b8b61:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b8b65:	0f b7 00             	movzwl (%rax),%eax
  6b8b68:	8b 4d fc             	mov    -0x4(%rbp),%ecx
  6b8b6b:	ba 01 00 00 00       	mov    $0x1,%edx
  6b8b70:	d3 e2                	shl    %cl,%edx
  6b8b72:	21 d0                	and    %edx,%eax
  6b8b74:	83 f8 00             	cmp    $0x0,%eax
  6b8b77:	75 16                	jne    6b8b8f <dump_url+0x6f>
  6b8b79:	8b 75 fc             	mov    -0x4(%rbp),%esi
  6b8b7c:	48 bf 26 29 20 00 00 	movabs $0x202926,%rdi
  6b8b83:	00 00 00 
  6b8b86:	b0 00                	mov    $0x0,%al
  6b8b88:	e8 63 2e 00 00       	callq  6bb9f0 <printf@plt>
  6b8b8d:	eb 4e                	jmp    6b8bdd <dump_url+0xbd>
  6b8b8f:	8b 75 fc             	mov    -0x4(%rbp),%esi
  6b8b92:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b8b96:	8b 4d fc             	mov    -0x4(%rbp),%ecx
  6b8b99:	0f b7 54 88 04       	movzwl 0x4(%rax,%rcx,4),%edx
  6b8b9e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b8ba2:	8b 4d fc             	mov    -0x4(%rbp),%ecx
  6b8ba5:	0f b7 4c 88 06       	movzwl 0x6(%rax,%rcx,4),%ecx
  6b8baa:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b8bae:	8b 7d fc             	mov    -0x4(%rbp),%edi
  6b8bb1:	44 0f b7 44 b8 06    	movzwl 0x6(%rax,%rdi,4),%r8d
  6b8bb7:	4c 8b 4d e8          	mov    -0x18(%rbp),%r9
  6b8bbb:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b8bbf:	8b 7d fc             	mov    -0x4(%rbp),%edi
  6b8bc2:	0f b7 44 b8 04       	movzwl 0x4(%rax,%rdi,4),%eax
  6b8bc7:	48 98                	cltq   
  6b8bc9:	49 01 c1             	add    %rax,%r9
  6b8bcc:	48 bf 36 6d 20 00 00 	movabs $0x206d36,%rdi
  6b8bd3:	00 00 00 
  6b8bd6:	b0 00                	mov    $0x0,%al
  6b8bd8:	e8 13 2e 00 00       	callq  6bb9f0 <printf@plt>
  6b8bdd:	8b 45 fc             	mov    -0x4(%rbp),%eax
  6b8be0:	83 c0 01             	add    $0x1,%eax
  6b8be3:	89 45 fc             	mov    %eax,-0x4(%rbp)
  6b8be6:	e9 6c ff ff ff       	jmpq   6b8b57 <dump_url+0x37>
  6b8beb:	48 83 c4 20          	add    $0x20,%rsp
  6b8bef:	5d                   	pop    %rbp
  6b8bf0:	c3                   	retq   
  6b8bf1:	cc                   	int3   
  6b8bf2:	cc                   	int3   
  6b8bf3:	cc                   	int3   
  6b8bf4:	cc                   	int3   
  6b8bf5:	cc                   	int3   
  6b8bf6:	cc                   	int3   
  6b8bf7:	cc                   	int3   
  6b8bf8:	cc                   	int3   
  6b8bf9:	cc                   	int3   
  6b8bfa:	cc                   	int3   
  6b8bfb:	cc                   	int3   
  6b8bfc:	cc                   	int3   
  6b8bfd:	cc                   	int3   
  6b8bfe:	cc                   	int3   
  6b8bff:	cc                   	int3   

00000000006b8c00 <test_parse_url>:
  6b8c00:	55                   	push   %rbp
  6b8c01:	48 89 e5             	mov    %rsp,%rbp
  6b8c04:	53                   	push   %rbx
  6b8c05:	48 83 ec 38          	sub    $0x38,%rsp
  6b8c09:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
  6b8c10:	8b 45 e8             	mov    -0x18(%rbp),%eax
  6b8c13:	48 83 f8 2e          	cmp    $0x2e,%rax
  6b8c17:	0f 83 6d 01 00 00    	jae    6b8d8a <test_parse_url+0x18a>
  6b8c1d:	8b 45 e8             	mov    -0x18(%rbp),%eax
  6b8c20:	48 b9 60 c1 6a 00 00 	movabs $0x6ac160,%rcx
  6b8c27:	00 00 00 
  6b8c2a:	48 6b c0 38          	imul   $0x38,%rax,%rax
  6b8c2e:	48 01 c1             	add    %rax,%rcx
  6b8c31:	48 89 4d f0          	mov    %rcx,-0x10(%rbp)
  6b8c35:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
  6b8c39:	31 f6                	xor    %esi,%esi
  6b8c3b:	ba 20 00 00 00       	mov    $0x20,%edx
  6b8c40:	e8 5b 2e 00 00       	callq  6bbaa0 <memset@plt>
  6b8c45:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b8c49:	48 8b 58 08          	mov    0x8(%rax),%rbx
  6b8c4d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b8c51:	48 83 78 08 00       	cmpq   $0x0,0x8(%rax)
  6b8c56:	74 12                	je     6b8c6a <test_parse_url+0x6a>
  6b8c58:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b8c5c:	48 8b 78 08          	mov    0x8(%rax),%rdi
  6b8c60:	e8 7b 2d 00 00       	callq  6bb9e0 <strlen@plt>
  6b8c65:	48 89 c6             	mov    %rax,%rsi
  6b8c68:	eb 04                	jmp    6b8c6e <test_parse_url+0x6e>
  6b8c6a:	31 f6                	xor    %esi,%esi
  6b8c6c:	eb 00                	jmp    6b8c6e <test_parse_url+0x6e>
  6b8c6e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b8c72:	8b 50 10             	mov    0x10(%rax),%edx
  6b8c75:	48 8d 4d c8          	lea    -0x38(%rbp),%rcx
  6b8c79:	48 89 df             	mov    %rbx,%rdi
  6b8c7c:	e8 5f d1 ff ff       	callq  6b5de0 <http_parser_parse_url>
  6b8c81:	89 45 ec             	mov    %eax,-0x14(%rbp)
  6b8c84:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b8c88:	83 78 34 00          	cmpl   $0x0,0x34(%rax)
  6b8c8c:	0f 85 b8 00 00 00    	jne    6b8d4a <test_parse_url+0x14a>
  6b8c92:	83 7d ec 00          	cmpl   $0x0,-0x14(%rbp)
  6b8c96:	74 28                	je     6b8cc0 <test_parse_url+0xc0>
  6b8c98:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b8c9c:	48 8b 70 08          	mov    0x8(%rax),%rsi
  6b8ca0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b8ca4:	48 8b 10             	mov    (%rax),%rdx
  6b8ca7:	8b 4d ec             	mov    -0x14(%rbp),%ecx
  6b8caa:	48 bf 5d 68 20 00 00 	movabs $0x20685d,%rdi
  6b8cb1:	00 00 00 
  6b8cb4:	b0 00                	mov    $0x0,%al
  6b8cb6:	e8 35 2d 00 00       	callq  6bb9f0 <printf@plt>
  6b8cbb:	e8 00 2d 00 00       	callq  6bb9c0 <abort@plt>
  6b8cc0:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
  6b8cc4:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
  6b8cc8:	48 83 c6 14          	add    $0x14,%rsi
  6b8ccc:	ba 20 00 00 00       	mov    $0x20,%edx
  6b8cd1:	e8 2a 2d 00 00       	callq  6bba00 <memcmp@plt>
  6b8cd6:	83 f8 00             	cmp    $0x0,%eax
  6b8cd9:	74 6d                	je     6b8d48 <test_parse_url+0x148>
  6b8cdb:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b8cdf:	48 8b 70 08          	mov    0x8(%rax),%rsi
  6b8ce3:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b8ce7:	48 8b 10             	mov    (%rax),%rdx
  6b8cea:	48 bf 3e 29 20 00 00 	movabs $0x20293e,%rdi
  6b8cf1:	00 00 00 
  6b8cf4:	b0 00                	mov    $0x0,%al
  6b8cf6:	e8 f5 2c 00 00       	callq  6bb9f0 <printf@plt>
  6b8cfb:	48 bf 3e 32 20 00 00 	movabs $0x20323e,%rdi
  6b8d02:	00 00 00 
  6b8d05:	b0 00                	mov    $0x0,%al
  6b8d07:	e8 e4 2c 00 00       	callq  6bb9f0 <printf@plt>
  6b8d0c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b8d10:	48 8b 78 08          	mov    0x8(%rax),%rdi
  6b8d14:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
  6b8d18:	48 83 c6 14          	add    $0x14,%rsi
  6b8d1c:	e8 ff fd ff ff       	callq  6b8b20 <dump_url>
  6b8d21:	48 bf ea 65 20 00 00 	movabs $0x2065ea,%rdi
  6b8d28:	00 00 00 
  6b8d2b:	b0 00                	mov    $0x0,%al
  6b8d2d:	e8 be 2c 00 00       	callq  6bb9f0 <printf@plt>
  6b8d32:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b8d36:	48 8b 78 08          	mov    0x8(%rax),%rdi
  6b8d3a:	48 8d 75 c8          	lea    -0x38(%rbp),%rsi
  6b8d3e:	e8 dd fd ff ff       	callq  6b8b20 <dump_url>
  6b8d43:	e8 78 2c 00 00       	callq  6bb9c0 <abort@plt>
  6b8d48:	eb 30                	jmp    6b8d7a <test_parse_url+0x17a>
  6b8d4a:	83 7d ec 00          	cmpl   $0x0,-0x14(%rbp)
  6b8d4e:	75 28                	jne    6b8d78 <test_parse_url+0x178>
  6b8d50:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b8d54:	48 8b 70 08          	mov    0x8(%rax),%rsi
  6b8d58:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b8d5c:	48 8b 10             	mov    (%rax),%rdx
  6b8d5f:	8b 4d ec             	mov    -0x14(%rbp),%ecx
  6b8d62:	48 bf 5d 68 20 00 00 	movabs $0x20685d,%rdi
  6b8d69:	00 00 00 
  6b8d6c:	b0 00                	mov    $0x0,%al
  6b8d6e:	e8 7d 2c 00 00       	callq  6bb9f0 <printf@plt>
  6b8d73:	e8 48 2c 00 00       	callq  6bb9c0 <abort@plt>
  6b8d78:	eb 00                	jmp    6b8d7a <test_parse_url+0x17a>
  6b8d7a:	eb 00                	jmp    6b8d7c <test_parse_url+0x17c>
  6b8d7c:	8b 45 e8             	mov    -0x18(%rbp),%eax
  6b8d7f:	83 c0 01             	add    $0x1,%eax
  6b8d82:	89 45 e8             	mov    %eax,-0x18(%rbp)
  6b8d85:	e9 86 fe ff ff       	jmpq   6b8c10 <test_parse_url+0x10>
  6b8d8a:	48 83 c4 38          	add    $0x38,%rsp
  6b8d8e:	5b                   	pop    %rbx
  6b8d8f:	5d                   	pop    %rbp
  6b8d90:	c3                   	retq   
  6b8d91:	cc                   	int3   
  6b8d92:	cc                   	int3   
  6b8d93:	cc                   	int3   
  6b8d94:	cc                   	int3   
  6b8d95:	cc                   	int3   
  6b8d96:	cc                   	int3   
  6b8d97:	cc                   	int3   
  6b8d98:	cc                   	int3   
  6b8d99:	cc                   	int3   
  6b8d9a:	cc                   	int3   
  6b8d9b:	cc                   	int3   
  6b8d9c:	cc                   	int3   
  6b8d9d:	cc                   	int3   
  6b8d9e:	cc                   	int3   
  6b8d9f:	cc                   	int3   

00000000006b8da0 <test_method_str>:
  6b8da0:	55                   	push   %rbp
  6b8da1:	48 89 e5             	mov    %rsp,%rbp
  6b8da4:	bf 01 00 00 00       	mov    $0x1,%edi
  6b8da9:	e8 e2 c9 ff ff       	callq  6b5790 <http_method_str>
  6b8dae:	bf 89 4e 20 00       	mov    $0x204e89,%edi
  6b8db3:	48 89 c6             	mov    %rax,%rsi
  6b8db6:	e8 55 2c 00 00       	callq  6bba10 <strcmp@plt>
  6b8dbb:	31 c9                	xor    %ecx,%ecx
  6b8dbd:	39 c1                	cmp    %eax,%ecx
  6b8dbf:	75 02                	jne    6b8dc3 <test_method_str+0x23>
  6b8dc1:	eb 28                	jmp    6b8deb <test_method_str+0x4b>
  6b8dc3:	48 bf 69 54 20 00 00 	movabs $0x205469,%rdi
  6b8dca:	00 00 00 
  6b8dcd:	48 be e4 81 20 00 00 	movabs $0x2081e4,%rsi
  6b8dd4:	00 00 00 
  6b8dd7:	48 b9 70 29 20 00 00 	movabs $0x202970,%rcx
  6b8dde:	00 00 00 
  6b8de1:	ba 0e 0e 00 00       	mov    $0xe0e,%edx
  6b8de6:	e8 a5 2b 00 00       	callq  6bb990 <__assert_fail@plt>
  6b8deb:	bf 39 05 00 00       	mov    $0x539,%edi
  6b8df0:	e8 9b c9 ff ff       	callq  6b5790 <http_method_str>
  6b8df5:	bf 90 1d 20 00       	mov    $0x201d90,%edi
  6b8dfa:	48 89 c6             	mov    %rax,%rsi
  6b8dfd:	e8 0e 2c 00 00       	callq  6bba10 <strcmp@plt>
  6b8e02:	31 c9                	xor    %ecx,%ecx
  6b8e04:	39 c1                	cmp    %eax,%ecx
  6b8e06:	75 02                	jne    6b8e0a <test_method_str+0x6a>
  6b8e08:	eb 28                	jmp    6b8e32 <test_method_str+0x92>
  6b8e0a:	48 bf 5d 1f 20 00 00 	movabs $0x201f5d,%rdi
  6b8e11:	00 00 00 
  6b8e14:	48 be e4 81 20 00 00 	movabs $0x2081e4,%rsi
  6b8e1b:	00 00 00 
  6b8e1e:	48 b9 70 29 20 00 00 	movabs $0x202970,%rcx
  6b8e25:	00 00 00 
  6b8e28:	ba 0f 0e 00 00       	mov    $0xe0f,%edx
  6b8e2d:	e8 5e 2b 00 00       	callq  6bb990 <__assert_fail@plt>
  6b8e32:	5d                   	pop    %rbp
  6b8e33:	c3                   	retq   
  6b8e34:	cc                   	int3   
  6b8e35:	cc                   	int3   
  6b8e36:	cc                   	int3   
  6b8e37:	cc                   	int3   
  6b8e38:	cc                   	int3   
  6b8e39:	cc                   	int3   
  6b8e3a:	cc                   	int3   
  6b8e3b:	cc                   	int3   
  6b8e3c:	cc                   	int3   
  6b8e3d:	cc                   	int3   
  6b8e3e:	cc                   	int3   
  6b8e3f:	cc                   	int3   

00000000006b8e40 <test_status_str>:
  6b8e40:	55                   	push   %rbp
  6b8e41:	48 89 e5             	mov    %rsp,%rbp
  6b8e44:	bf c8 00 00 00       	mov    $0xc8,%edi
  6b8e49:	e8 72 c9 ff ff       	callq  6b57c0 <http_status_str>
  6b8e4e:	bf e4 52 20 00       	mov    $0x2052e4,%edi
  6b8e53:	48 89 c6             	mov    %rax,%rsi
  6b8e56:	e8 b5 2b 00 00       	callq  6bba10 <strcmp@plt>
  6b8e5b:	31 c9                	xor    %ecx,%ecx
  6b8e5d:	39 c1                	cmp    %eax,%ecx
  6b8e5f:	75 02                	jne    6b8e63 <test_status_str+0x23>
  6b8e61:	eb 28                	jmp    6b8e8b <test_status_str+0x4b>
  6b8e63:	48 bf a4 82 20 00 00 	movabs $0x2082a4,%rdi
  6b8e6a:	00 00 00 
  6b8e6d:	48 be e4 81 20 00 00 	movabs $0x2081e4,%rsi
  6b8e74:	00 00 00 
  6b8e77:	48 b9 cc 7a 20 00 00 	movabs $0x207acc,%rcx
  6b8e7e:	00 00 00 
  6b8e81:	ba 15 0e 00 00       	mov    $0xe15,%edx
  6b8e86:	e8 05 2b 00 00       	callq  6bb990 <__assert_fail@plt>
  6b8e8b:	bf 94 01 00 00       	mov    $0x194,%edi
  6b8e90:	e8 2b c9 ff ff       	callq  6b57c0 <http_status_str>
  6b8e95:	bf a9 41 20 00       	mov    $0x2041a9,%edi
  6b8e9a:	48 89 c6             	mov    %rax,%rsi
  6b8e9d:	e8 6e 2b 00 00       	callq  6bba10 <strcmp@plt>
  6b8ea2:	31 c9                	xor    %ecx,%ecx
  6b8ea4:	39 c1                	cmp    %eax,%ecx
  6b8ea6:	75 02                	jne    6b8eaa <test_status_str+0x6a>
  6b8ea8:	eb 28                	jmp    6b8ed2 <test_status_str+0x92>
  6b8eaa:	48 bf 97 54 20 00 00 	movabs $0x205497,%rdi
  6b8eb1:	00 00 00 
  6b8eb4:	48 be e4 81 20 00 00 	movabs $0x2081e4,%rsi
  6b8ebb:	00 00 00 
  6b8ebe:	48 b9 cc 7a 20 00 00 	movabs $0x207acc,%rcx
  6b8ec5:	00 00 00 
  6b8ec8:	ba 16 0e 00 00       	mov    $0xe16,%edx
  6b8ecd:	e8 be 2a 00 00       	callq  6bb990 <__assert_fail@plt>
  6b8ed2:	bf 39 05 00 00       	mov    $0x539,%edi
  6b8ed7:	e8 e4 c8 ff ff       	callq  6b57c0 <http_status_str>
  6b8edc:	bf 90 1d 20 00       	mov    $0x201d90,%edi
  6b8ee1:	48 89 c6             	mov    %rax,%rsi
  6b8ee4:	e8 27 2b 00 00       	callq  6bba10 <strcmp@plt>
  6b8ee9:	31 c9                	xor    %ecx,%ecx
  6b8eeb:	39 c1                	cmp    %eax,%ecx
  6b8eed:	75 02                	jne    6b8ef1 <test_status_str+0xb1>
  6b8eef:	eb 28                	jmp    6b8f19 <test_status_str+0xd9>
  6b8ef1:	48 bf d8 54 20 00 00 	movabs $0x2054d8,%rdi
  6b8ef8:	00 00 00 
  6b8efb:	48 be e4 81 20 00 00 	movabs $0x2081e4,%rsi
  6b8f02:	00 00 00 
  6b8f05:	48 b9 cc 7a 20 00 00 	movabs $0x207acc,%rcx
  6b8f0c:	00 00 00 
  6b8f0f:	ba 17 0e 00 00       	mov    $0xe17,%edx
  6b8f14:	e8 77 2a 00 00       	callq  6bb990 <__assert_fail@plt>
  6b8f19:	5d                   	pop    %rbp
  6b8f1a:	c3                   	retq   
  6b8f1b:	cc                   	int3   
  6b8f1c:	cc                   	int3   
  6b8f1d:	cc                   	int3   
  6b8f1e:	cc                   	int3   
  6b8f1f:	cc                   	int3   

00000000006b8f20 <test_message>:
  6b8f20:	55                   	push   %rbp
  6b8f21:	48 89 e5             	mov    %rsp,%rbp
  6b8f24:	48 83 ec 40          	sub    $0x40,%rsp
  6b8f28:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
  6b8f2c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b8f30:	48 8b 78 08          	mov    0x8(%rax),%rdi
  6b8f34:	e8 a7 2a 00 00       	callq  6bb9e0 <strlen@plt>
  6b8f39:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  6b8f3d:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
  6b8f44:	00 
  6b8f45:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  6b8f49:	48 3b 45 c8          	cmp    -0x38(%rbp),%rax
  6b8f4d:	0f 83 83 02 00 00    	jae    6b91d6 <test_message+0x2b6>
  6b8f53:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b8f57:	8b 78 10             	mov    0x10(%rax),%edi
  6b8f5a:	e8 71 eb ff ff       	callq  6b7ad0 <parser_init>
  6b8f5f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b8f63:	83 b8 c0 00 01 00 00 	cmpl   $0x0,0x100c0(%rax)
  6b8f6a:	74 18                	je     6b8f84 <test_message+0x64>
  6b8f6c:	8b 04 25 88 b3 6c 00 	mov    0x6cb388,%eax
  6b8f73:	25 ff ff ff bf       	and    $0xbfffffff,%eax
  6b8f78:	0d 00 00 00 40       	or     $0x40000000,%eax
  6b8f7d:	89 04 25 88 b3 6c 00 	mov    %eax,0x6cb388
  6b8f84:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b8f88:	48 8b 40 08          	mov    0x8(%rax),%rax
  6b8f8c:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  6b8f90:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  6b8f94:	48 03 45 e8          	add    -0x18(%rbp),%rax
  6b8f98:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  6b8f9c:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6b8fa0:	48 2b 45 e8          	sub    -0x18(%rbp),%rax
  6b8fa4:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  6b8fa8:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
  6b8fad:	0f 84 2a 01 00 00    	je     6b90dd <test_message+0x1bd>
  6b8fb3:	83 3c 25 98 b7 71 00 	cmpl   $0x0,0x71b798
  6b8fba:	00 
  6b8fbb:	75 02                	jne    6b8fbf <test_message+0x9f>
  6b8fbd:	eb 28                	jmp    6b8fe7 <test_message+0xc7>
  6b8fbf:	48 bf e8 44 20 00 00 	movabs $0x2044e8,%rdi
  6b8fc6:	00 00 00 
  6b8fc9:	48 be e4 81 20 00 00 	movabs $0x2081e4,%rsi
  6b8fd0:	00 00 00 
  6b8fd3:	48 b9 63 22 20 00 00 	movabs $0x202263,%rcx
  6b8fda:	00 00 00 
  6b8fdd:	ba 2b 0e 00 00       	mov    $0xe2b,%edx
  6b8fe2:	e8 a9 29 00 00       	callq  6bb990 <__assert_fail@plt>
  6b8fe7:	c7 04 25 5c b4 6d 00 	movl   $0x0,0x6db45c
  6b8fee:	00 00 00 00 
  6b8ff2:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
  6b8ff6:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
  6b8ffa:	e8 21 eb ff ff       	callq  6b7b20 <parse>
  6b8fff:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b9003:	83 3c 25 5c b4 6d 00 	cmpl   $0x0,0x6db45c
  6b900a:	00 
  6b900b:	75 56                	jne    6b9063 <test_message+0x143>
  6b900d:	8b 04 25 8c b3 6c 00 	mov    0x6cb38c,%eax
  6b9014:	48 3b 45 f8          	cmp    -0x8(%rbp),%rax
  6b9018:	74 49                	je     6b9063 <test_message+0x143>
  6b901a:	8b 04 25 8c b3 6c 00 	mov    0x6cb38c,%eax
  6b9021:	48 3b 45 f8          	cmp    -0x8(%rbp),%rax
  6b9025:	75 02                	jne    6b9029 <test_message+0x109>
  6b9027:	eb 28                	jmp    6b9051 <test_message+0x131>
  6b9029:	48 bf 55 3c 20 00 00 	movabs $0x203c55,%rdi
  6b9030:	00 00 00 
  6b9033:	48 be e4 81 20 00 00 	movabs $0x2081e4,%rsi
  6b903a:	00 00 00 
  6b903d:	48 b9 63 22 20 00 00 	movabs $0x202263,%rcx
  6b9044:	00 00 00 
  6b9047:	ba 31 0e 00 00       	mov    $0xe31,%edx
  6b904c:	e8 3f 29 00 00       	callq  6bb990 <__assert_fail@plt>
  6b9051:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
  6b9055:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  6b9059:	e8 82 01 00 00       	callq  6b91e0 <print_error>
  6b905e:	e8 5d 29 00 00       	callq  6bb9c0 <abort@plt>
  6b9063:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b9067:	48 83 b8 90 00 01 00 	cmpq   $0x0,0x10090(%rax)
  6b906e:	00 
  6b906f:	74 4e                	je     6b90bf <test_message+0x19f>
  6b9071:	8b 04 25 9c b3 6c 00 	mov    0x6cb39c,%eax
  6b9078:	c1 e8 1f             	shr    $0x1f,%eax
  6b907b:	83 f8 00             	cmp    $0x0,%eax
  6b907e:	74 3f                	je     6b90bf <test_message+0x19f>
  6b9080:	83 3c 25 98 b7 71 00 	cmpl   $0x0,0x71b798
  6b9087:	00 
  6b9088:	7e 35                	jle    6b90bf <test_message+0x19f>
  6b908a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  6b908e:	48 03 45 f8          	add    -0x8(%rbp),%rax
  6b9092:	8b 0c 25 98 b7 71 00 	mov    0x71b798,%ecx
  6b9099:	83 e9 01             	sub    $0x1,%ecx
  6b909c:	48 63 c9             	movslq %ecx,%rcx
  6b909f:	48 ba b0 b3 6c 00 00 	movabs $0x6cb3b0,%rdx
  6b90a6:	00 00 00 
  6b90a9:	48 69 c9 c8 00 01 00 	imul   $0x100c8,%rcx,%rcx
  6b90b0:	48 01 ca             	add    %rcx,%rdx
  6b90b3:	48 89 82 90 00 01 00 	mov    %rax,0x10090(%rdx)
  6b90ba:	e9 c6 00 00 00       	jmpq   6b9185 <test_message+0x265>
  6b90bf:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6b90c3:	48 3b 45 e8          	cmp    -0x18(%rbp),%rax
  6b90c7:	74 12                	je     6b90db <test_message+0x1bb>
  6b90c9:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
  6b90cd:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  6b90d1:	e8 0a 01 00 00       	callq  6b91e0 <print_error>
  6b90d6:	e8 e5 28 00 00       	callq  6bb9c0 <abort@plt>
  6b90db:	eb 00                	jmp    6b90dd <test_message+0x1bd>
  6b90dd:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
  6b90e1:	48 8b 75 d0          	mov    -0x30(%rbp),%rsi
  6b90e5:	e8 36 ea ff ff       	callq  6b7b20 <parse>
  6b90ea:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b90ee:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b90f2:	48 83 b8 90 00 01 00 	cmpq   $0x0,0x10090(%rax)
  6b90f9:	00 
  6b90fa:	74 41                	je     6b913d <test_message+0x21d>
  6b90fc:	8b 04 25 9c b3 6c 00 	mov    0x6cb39c,%eax
  6b9103:	c1 e8 1f             	shr    $0x1f,%eax
  6b9106:	83 f8 00             	cmp    $0x0,%eax
  6b9109:	74 32                	je     6b913d <test_message+0x21d>
  6b910b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b910f:	48 03 45 f8          	add    -0x8(%rbp),%rax
  6b9113:	8b 0c 25 98 b7 71 00 	mov    0x71b798,%ecx
  6b911a:	83 e9 01             	sub    $0x1,%ecx
  6b911d:	48 63 c9             	movslq %ecx,%rcx
  6b9120:	48 ba b0 b3 6c 00 00 	movabs $0x6cb3b0,%rdx
  6b9127:	00 00 00 
  6b912a:	48 69 c9 c8 00 01 00 	imul   $0x100c8,%rcx,%rcx
  6b9131:	48 01 ca             	add    %rcx,%rdx
  6b9134:	48 89 82 90 00 01 00 	mov    %rax,0x10090(%rdx)
  6b913b:	eb 48                	jmp    6b9185 <test_message+0x265>
  6b913d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6b9141:	48 3b 45 d0          	cmp    -0x30(%rbp),%rax
  6b9145:	74 12                	je     6b9159 <test_message+0x239>
  6b9147:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
  6b914b:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  6b914f:	e8 8c 00 00 00       	callq  6b91e0 <print_error>
  6b9154:	e8 67 28 00 00       	callq  6bb9c0 <abort@plt>
  6b9159:	31 ff                	xor    %edi,%edi
  6b915b:	31 f6                	xor    %esi,%esi
  6b915d:	e8 be e9 ff ff       	callq  6b7b20 <parse>
  6b9162:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6b9166:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  6b916b:	74 16                	je     6b9183 <test_message+0x263>
  6b916d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b9171:	48 8b 78 08          	mov    0x8(%rax),%rdi
  6b9175:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  6b9179:	e8 62 00 00 00       	callq  6b91e0 <print_error>
  6b917e:	e8 3d 28 00 00       	callq  6bb9c0 <abort@plt>
  6b9183:	eb 00                	jmp    6b9185 <test_message+0x265>
  6b9185:	83 3c 25 98 b7 71 00 	cmpl   $0x1,0x71b798
  6b918c:	01 
  6b918d:	74 1d                	je     6b91ac <test_message+0x28c>
  6b918f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b9193:	48 8b 30             	mov    (%rax),%rsi
  6b9196:	48 bf 45 7e 20 00 00 	movabs $0x207e45,%rdi
  6b919d:	00 00 00 
  6b91a0:	b0 00                	mov    $0x0,%al
  6b91a2:	e8 49 28 00 00       	callq  6bb9f0 <printf@plt>
  6b91a7:	e8 14 28 00 00       	callq  6bb9c0 <abort@plt>
  6b91ac:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  6b91b0:	31 ff                	xor    %edi,%edi
  6b91b2:	31 f6                	xor    %esi,%esi
  6b91b4:	e8 07 eb ff ff       	callq  6b7cc0 <message_eq>
  6b91b9:	83 f8 00             	cmp    $0x0,%eax
  6b91bc:	75 05                	jne    6b91c3 <test_message+0x2a3>
  6b91be:	e8 fd 27 00 00       	callq  6bb9c0 <abort@plt>
  6b91c3:	eb 00                	jmp    6b91c5 <test_message+0x2a5>
  6b91c5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  6b91c9:	48 83 c0 01          	add    $0x1,%rax
  6b91cd:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  6b91d1:	e9 6f fd ff ff       	jmpq   6b8f45 <test_message+0x25>
  6b91d6:	48 83 c4 40          	add    $0x40,%rsp
  6b91da:	5d                   	pop    %rbp
  6b91db:	c3                   	retq   
  6b91dc:	cc                   	int3   
  6b91dd:	cc                   	int3   
  6b91de:	cc                   	int3   
  6b91df:	cc                   	int3   

00000000006b91e0 <print_error>:
  6b91e0:	55                   	push   %rbp
  6b91e1:	48 89 e5             	mov    %rsp,%rbp
  6b91e4:	53                   	push   %rbx
  6b91e5:	48 83 ec 38          	sub    $0x38,%rsp
  6b91e9:	48 89 7d d0          	mov    %rdi,-0x30(%rbp)
  6b91ed:	48 89 75 c8          	mov    %rsi,-0x38(%rbp)
  6b91f1:	48 8b 1c 25 00 b8 71 	mov    0x71b800,%rbx
  6b91f8:	00 
  6b91f9:	8b 3c 25 9c b3 6c 00 	mov    0x6cb39c,%edi
  6b9200:	c1 ef 18             	shr    $0x18,%edi
  6b9203:	83 e7 7f             	and    $0x7f,%edi
  6b9206:	e8 45 cb ff ff       	callq  6b5d50 <http_errno_description>
  6b920b:	48 be 9a 7e 20 00 00 	movabs $0x207e9a,%rsi
  6b9212:	00 00 00 
  6b9215:	48 89 df             	mov    %rbx,%rdi
  6b9218:	48 89 c2             	mov    %rax,%rdx
  6b921b:	b0 00                	mov    $0x0,%al
  6b921d:	e8 8e 27 00 00       	callq  6bb9b0 <fprintf@plt>
  6b9222:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%rbp)
  6b9229:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
  6b9230:	48 8b 7d d0          	mov    -0x30(%rbp),%rdi
  6b9234:	e8 a7 27 00 00       	callq  6bb9e0 <strlen@plt>
  6b9239:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  6b923d:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
  6b9244:	00 
  6b9245:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
  6b924c:	00 
  6b924d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  6b9251:	48 3b 45 c0          	cmp    -0x40(%rbp),%rax
  6b9255:	0f 83 bf 00 00 00    	jae    6b931a <print_error+0x13a>
  6b925b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  6b925f:	48 3b 45 c8          	cmp    -0x38(%rbp),%rax
  6b9263:	75 07                	jne    6b926c <print_error+0x8c>
  6b9265:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%rbp)
  6b926c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  6b9270:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  6b9274:	0f be 04 08          	movsbl (%rax,%rcx,1),%eax
  6b9278:	89 c1                	mov    %eax,%ecx
  6b927a:	83 e9 0a             	sub    $0xa,%ecx
  6b927d:	74 2b                	je     6b92aa <print_error+0xca>
  6b927f:	eb 00                	jmp    6b9281 <print_error+0xa1>
  6b9281:	83 e8 0d             	sub    $0xd,%eax
  6b9284:	75 4f                	jne    6b92d5 <print_error+0xf5>
  6b9286:	eb 00                	jmp    6b9288 <print_error+0xa8>
  6b9288:	c7 45 f4 02 00 00 00 	movl   $0x2,-0xc(%rbp)
  6b928f:	48 8b 3c 25 00 b8 71 	mov    0x71b800,%rdi
  6b9296:	00 
  6b9297:	48 be 99 48 20 00 00 	movabs $0x204899,%rsi
  6b929e:	00 00 00 
  6b92a1:	b0 00                	mov    $0x0,%al
  6b92a3:	e8 08 27 00 00       	callq  6bb9b0 <fprintf@plt>
  6b92a8:	eb 4b                	jmp    6b92f5 <print_error+0x115>
  6b92aa:	48 8b 3c 25 00 b8 71 	mov    0x71b800,%rdi
  6b92b1:	00 
  6b92b2:	48 be 00 38 20 00 00 	movabs $0x203800,%rsi
  6b92b9:	00 00 00 
  6b92bc:	b0 00                	mov    $0x0,%al
  6b92be:	e8 ed 26 00 00       	callq  6bb9b0 <fprintf@plt>
  6b92c3:	83 7d f0 00          	cmpl   $0x0,-0x10(%rbp)
  6b92c7:	74 02                	je     6b92cb <print_error+0xeb>
  6b92c9:	eb 68                	jmp    6b9333 <print_error+0x153>
  6b92cb:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
  6b92d2:	00 
  6b92d3:	eb 34                	jmp    6b9309 <print_error+0x129>
  6b92d5:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%rbp)
  6b92dc:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  6b92e0:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  6b92e4:	0f be 3c 08          	movsbl (%rax,%rcx,1),%edi
  6b92e8:	48 8b 34 25 00 b8 71 	mov    0x71b800,%rsi
  6b92ef:	00 
  6b92f0:	e8 9b 27 00 00       	callq  6bba90 <fputc@plt>
  6b92f5:	83 7d f0 00          	cmpl   $0x0,-0x10(%rbp)
  6b92f9:	75 0c                	jne    6b9307 <print_error+0x127>
  6b92fb:	48 63 45 f4          	movslq -0xc(%rbp),%rax
  6b92ff:	48 03 45 e0          	add    -0x20(%rbp),%rax
  6b9303:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  6b9307:	eb 00                	jmp    6b9309 <print_error+0x129>
  6b9309:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  6b930d:	48 83 c0 01          	add    $0x1,%rax
  6b9311:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  6b9315:	e9 33 ff ff ff       	jmpq   6b924d <print_error+0x6d>
  6b931a:	48 8b 3c 25 00 b8 71 	mov    0x71b800,%rdi
  6b9321:	00 
  6b9322:	48 be 60 7b 20 00 00 	movabs $0x207b60,%rsi
  6b9329:	00 00 00 
  6b932c:	b0 00                	mov    $0x0,%al
  6b932e:	e8 7d 26 00 00       	callq  6bb9b0 <fprintf@plt>
  6b9333:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
  6b933a:	00 
  6b933b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b933f:	48 3b 45 e0          	cmp    -0x20(%rbp),%rax
  6b9343:	73 20                	jae    6b9365 <print_error+0x185>
  6b9345:	48 8b 34 25 00 b8 71 	mov    0x71b800,%rsi
  6b934c:	00 
  6b934d:	bf 20 00 00 00       	mov    $0x20,%edi
  6b9352:	e8 39 27 00 00       	callq  6bba90 <fputc@plt>
  6b9357:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b935b:	48 83 c0 01          	add    $0x1,%rax
  6b935f:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  6b9363:	eb d6                	jmp    6b933b <print_error+0x15b>
  6b9365:	48 8b 3c 25 00 b8 71 	mov    0x71b800,%rdi
  6b936c:	00 
  6b936d:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  6b9371:	48 be a8 7e 20 00 00 	movabs $0x207ea8,%rsi
  6b9378:	00 00 00 
  6b937b:	b0 00                	mov    $0x0,%al
  6b937d:	e8 2e 26 00 00       	callq  6bb9b0 <fprintf@plt>
  6b9382:	48 83 c4 38          	add    $0x38,%rsp
  6b9386:	5b                   	pop    %rbx
  6b9387:	5d                   	pop    %rbp
  6b9388:	c3                   	retq   
  6b9389:	cc                   	int3   
  6b938a:	cc                   	int3   
  6b938b:	cc                   	int3   
  6b938c:	cc                   	int3   
  6b938d:	cc                   	int3   
  6b938e:	cc                   	int3   
  6b938f:	cc                   	int3   

00000000006b9390 <test_message_count_body>:
  6b9390:	55                   	push   %rbp
  6b9391:	48 89 e5             	mov    %rsp,%rbp
  6b9394:	48 83 ec 30          	sub    $0x30,%rsp
  6b9398:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  6b939c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6b93a0:	8b 78 10             	mov    0x10(%rax),%edi
  6b93a3:	e8 28 e7 ff ff       	callq  6b7ad0 <parser_init>
  6b93a8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6b93ac:	48 8b 78 08          	mov    0x8(%rax),%rdi
  6b93b0:	e8 2b 26 00 00       	callq  6bb9e0 <strlen@plt>
  6b93b5:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  6b93b9:	48 c7 45 e0 b8 0f 00 	movq   $0xfb8,-0x20(%rbp)
  6b93c0:	00 
  6b93c1:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
  6b93c8:	00 
  6b93c9:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6b93cd:	48 3b 45 d8          	cmp    -0x28(%rbp),%rax
  6b93d1:	73 69                	jae    6b943c <test_message_count_body+0xac>
  6b93d3:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b93d7:	48 2b 45 f0          	sub    -0x10(%rbp),%rax
  6b93db:	48 3b 45 e0          	cmp    -0x20(%rbp),%rax
  6b93df:	73 0a                	jae    6b93eb <test_message_count_body+0x5b>
  6b93e1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b93e5:	48 2b 45 f0          	sub    -0x10(%rbp),%rax
  6b93e9:	eb 04                	jmp    6b93ef <test_message_count_body+0x5f>
  6b93eb:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  6b93ef:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  6b93f3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6b93f7:	48 8b 78 08          	mov    0x8(%rax),%rdi
  6b93fb:	48 03 7d f0          	add    -0x10(%rbp),%rdi
  6b93ff:	48 8b 75 d0          	mov    -0x30(%rbp),%rsi
  6b9403:	e8 78 e7 ff ff       	callq  6b7b80 <parse_count_body>
  6b9408:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  6b940c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  6b9410:	48 3b 45 d0          	cmp    -0x30(%rbp),%rax
  6b9414:	74 16                	je     6b942c <test_message_count_body+0x9c>
  6b9416:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6b941a:	48 8b 78 08          	mov    0x8(%rax),%rdi
  6b941e:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
  6b9422:	e8 b9 fd ff ff       	callq  6b91e0 <print_error>
  6b9427:	e8 94 25 00 00       	callq  6bb9c0 <abort@plt>
  6b942c:	eb 00                	jmp    6b942e <test_message_count_body+0x9e>
  6b942e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  6b9432:	48 03 45 f0          	add    -0x10(%rbp),%rax
  6b9436:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  6b943a:	eb 8d                	jmp    6b93c9 <test_message_count_body+0x39>
  6b943c:	31 ff                	xor    %edi,%edi
  6b943e:	31 f6                	xor    %esi,%esi
  6b9440:	e8 3b e7 ff ff       	callq  6b7b80 <parse_count_body>
  6b9445:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  6b9449:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
  6b944e:	74 16                	je     6b9466 <test_message_count_body+0xd6>
  6b9450:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6b9454:	48 8b 78 08          	mov    0x8(%rax),%rdi
  6b9458:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
  6b945c:	e8 7f fd ff ff       	callq  6b91e0 <print_error>
  6b9461:	e8 5a 25 00 00       	callq  6bb9c0 <abort@plt>
  6b9466:	83 3c 25 98 b7 71 00 	cmpl   $0x1,0x71b798
  6b946d:	01 
  6b946e:	74 1d                	je     6b948d <test_message_count_body+0xfd>
  6b9470:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6b9474:	48 8b 30             	mov    (%rax),%rsi
  6b9477:	48 bf 45 7e 20 00 00 	movabs $0x207e45,%rdi
  6b947e:	00 00 00 
  6b9481:	b0 00                	mov    $0x0,%al
  6b9483:	e8 68 25 00 00       	callq  6bb9f0 <printf@plt>
  6b9488:	e8 33 25 00 00       	callq  6bb9c0 <abort@plt>
  6b948d:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  6b9491:	31 ff                	xor    %edi,%edi
  6b9493:	31 f6                	xor    %esi,%esi
  6b9495:	e8 26 e8 ff ff       	callq  6b7cc0 <message_eq>
  6b949a:	83 f8 00             	cmp    $0x0,%eax
  6b949d:	75 05                	jne    6b94a4 <test_message_count_body+0x114>
  6b949f:	e8 1c 25 00 00       	callq  6bb9c0 <abort@plt>
  6b94a4:	48 83 c4 30          	add    $0x30,%rsp
  6b94a8:	5d                   	pop    %rbp
  6b94a9:	c3                   	retq   
  6b94aa:	cc                   	int3   
  6b94ab:	cc                   	int3   
  6b94ac:	cc                   	int3   
  6b94ad:	cc                   	int3   
  6b94ae:	cc                   	int3   
  6b94af:	cc                   	int3   

00000000006b94b0 <test_simple_type>:
  6b94b0:	55                   	push   %rbp
  6b94b1:	48 89 e5             	mov    %rsp,%rbp
  6b94b4:	41 56                	push   %r14
  6b94b6:	53                   	push   %rbx
  6b94b7:	48 83 ec 20          	sub    $0x20,%rsp
  6b94bb:	48 89 7d e0          	mov    %rdi,-0x20(%rbp)
  6b94bf:	89 75 e8             	mov    %esi,-0x18(%rbp)
  6b94c2:	89 55 dc             	mov    %edx,-0x24(%rbp)
  6b94c5:	8b 7d dc             	mov    -0x24(%rbp),%edi
  6b94c8:	e8 03 e6 ff ff       	callq  6b7ad0 <parser_init>
  6b94cd:	48 8b 5d e0          	mov    -0x20(%rbp),%rbx
  6b94d1:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
  6b94d5:	e8 06 25 00 00       	callq  6bb9e0 <strlen@plt>
  6b94da:	48 89 df             	mov    %rbx,%rdi
  6b94dd:	48 89 c6             	mov    %rax,%rsi
  6b94e0:	e8 3b e6 ff ff       	callq  6b7b20 <parse>
  6b94e5:	8b 04 25 9c b3 6c 00 	mov    0x6cb39c,%eax
  6b94ec:	c1 e8 18             	shr    $0x18,%eax
  6b94ef:	83 e0 7f             	and    $0x7f,%eax
  6b94f2:	89 45 ec             	mov    %eax,-0x14(%rbp)
  6b94f5:	31 ff                	xor    %edi,%edi
  6b94f7:	31 f6                	xor    %esi,%esi
  6b94f9:	e8 22 e6 ff ff       	callq  6b7b20 <parse>
  6b94fe:	8b 45 e8             	mov    -0x18(%rbp),%eax
  6b9501:	3b 45 ec             	cmp    -0x14(%rbp),%eax
  6b9504:	74 4a                	je     6b9550 <test_simple_type+0xa0>
  6b9506:	83 7d e8 00          	cmpl   $0x0,-0x18(%rbp)
  6b950a:	74 44                	je     6b9550 <test_simple_type+0xa0>
  6b950c:	83 7d ec 1e          	cmpl   $0x1e,-0x14(%rbp)
  6b9510:	74 3e                	je     6b9550 <test_simple_type+0xa0>
  6b9512:	4c 8b 34 25 00 b8 71 	mov    0x71b800,%r14
  6b9519:	00 
  6b951a:	8b 7d e8             	mov    -0x18(%rbp),%edi
  6b951d:	e8 ce c7 ff ff       	callq  6b5cf0 <http_errno_name>
  6b9522:	48 89 c3             	mov    %rax,%rbx
  6b9525:	8b 7d ec             	mov    -0x14(%rbp),%edi
  6b9528:	e8 c3 c7 ff ff       	callq  6b5cf0 <http_errno_name>
  6b952d:	4c 8b 45 e0          	mov    -0x20(%rbp),%r8
  6b9531:	48 be ca 72 20 00 00 	movabs $0x2072ca,%rsi
  6b9538:	00 00 00 
  6b953b:	4c 89 f7             	mov    %r14,%rdi
  6b953e:	48 89 da             	mov    %rbx,%rdx
  6b9541:	48 89 c1             	mov    %rax,%rcx
  6b9544:	b0 00                	mov    $0x0,%al
  6b9546:	e8 65 24 00 00       	callq  6bb9b0 <fprintf@plt>
  6b954b:	e8 70 24 00 00       	callq  6bb9c0 <abort@plt>
  6b9550:	48 83 c4 20          	add    $0x20,%rsp
  6b9554:	5b                   	pop    %rbx
  6b9555:	41 5e                	pop    %r14
  6b9557:	5d                   	pop    %rbp
  6b9558:	c3                   	retq   
  6b9559:	cc                   	int3   
  6b955a:	cc                   	int3   
  6b955b:	cc                   	int3   
  6b955c:	cc                   	int3   
  6b955d:	cc                   	int3   
  6b955e:	cc                   	int3   
  6b955f:	cc                   	int3   

00000000006b9560 <test_simple>:
  6b9560:	55                   	push   %rbp
  6b9561:	48 89 e5             	mov    %rsp,%rbp
  6b9564:	48 83 ec 10          	sub    $0x10,%rsp
  6b9568:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
  6b956c:	89 75 fc             	mov    %esi,-0x4(%rbp)
  6b956f:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b9573:	8b 75 fc             	mov    -0x4(%rbp),%esi
  6b9576:	31 d2                	xor    %edx,%edx
  6b9578:	e8 33 ff ff ff       	callq  6b94b0 <test_simple_type>
  6b957d:	48 83 c4 10          	add    $0x10,%rsp
  6b9581:	5d                   	pop    %rbp
  6b9582:	c3                   	retq   
  6b9583:	cc                   	int3   
  6b9584:	cc                   	int3   
  6b9585:	cc                   	int3   
  6b9586:	cc                   	int3   
  6b9587:	cc                   	int3   
  6b9588:	cc                   	int3   
  6b9589:	cc                   	int3   
  6b958a:	cc                   	int3   
  6b958b:	cc                   	int3   
  6b958c:	cc                   	int3   
  6b958d:	cc                   	int3   
  6b958e:	cc                   	int3   
  6b958f:	cc                   	int3   

00000000006b9590 <test_invalid_header_content>:
  6b9590:	55                   	push   %rbp
  6b9591:	48 89 e5             	mov    %rsp,%rbp
  6b9594:	53                   	push   %rbx
  6b9595:	48 83 ec 48          	sub    $0x48,%rsp
  6b9599:	89 7d ec             	mov    %edi,-0x14(%rbp)
  6b959c:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
  6b95a0:	8b 45 ec             	mov    -0x14(%rbp),%eax
  6b95a3:	be 01 00 00 00       	mov    $0x1,%esi
  6b95a8:	31 c9                	xor    %ecx,%ecx
  6b95aa:	83 f8 00             	cmp    $0x0,%eax
  6b95ad:	0f 45 f1             	cmovne %ecx,%esi
  6b95b0:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
  6b95b4:	e8 97 c6 ff ff       	callq  6b5c50 <http_parser_init>
  6b95b9:	8b 45 ec             	mov    -0x14(%rbp),%eax
  6b95bc:	48 b9 71 4d 20 00 00 	movabs $0x204d71,%rcx
  6b95c3:	00 00 00 
  6b95c6:	48 ba 25 80 20 00 00 	movabs $0x208025,%rdx
  6b95cd:	00 00 00 
  6b95d0:	83 f8 00             	cmp    $0x0,%eax
  6b95d3:	48 0f 45 ca          	cmovne %rdx,%rcx
  6b95d7:	48 89 4d f0          	mov    %rcx,-0x10(%rbp)
  6b95db:	48 8b 5d f0          	mov    -0x10(%rbp),%rbx
  6b95df:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b95e3:	e8 f8 23 00 00       	callq  6bb9e0 <strlen@plt>
  6b95e8:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
  6b95ec:	48 be a8 b7 71 00 00 	movabs $0x71b7a8,%rsi
  6b95f3:	00 00 00 
  6b95f6:	48 89 da             	mov    %rbx,%rdx
  6b95f9:	48 89 c1             	mov    %rax,%rcx
  6b95fc:	e8 0f 5f ff ff       	callq  6af510 <http_parser_execute>
  6b9601:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  6b9605:	48 8b 5d e0          	mov    -0x20(%rbp),%rbx
  6b9609:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b960d:	e8 ce 23 00 00       	callq  6bb9e0 <strlen@plt>
  6b9612:	48 39 c3             	cmp    %rax,%rbx
  6b9615:	75 02                	jne    6b9619 <test_invalid_header_content+0x89>
  6b9617:	eb 28                	jmp    6b9641 <test_invalid_header_content+0xb1>
  6b9619:	48 bf 6a 3c 20 00 00 	movabs $0x203c6a,%rdi
  6b9620:	00 00 00 
  6b9623:	48 be e4 81 20 00 00 	movabs $0x2081e4,%rsi
  6b962a:	00 00 00 
  6b962d:	48 b9 4c 47 20 00 00 	movabs $0x20474c,%rcx
  6b9634:	00 00 00 
  6b9637:	ba ae 0e 00 00       	mov    $0xeae,%edx
  6b963c:	e8 4f 23 00 00       	callq  6bb990 <__assert_fail@plt>
  6b9641:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  6b9645:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  6b9649:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b964d:	e8 8e 23 00 00       	callq  6bb9e0 <strlen@plt>
  6b9652:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  6b9656:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  6b965a:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  6b965e:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
  6b9662:	48 be a8 b7 71 00 00 	movabs $0x71b7a8,%rsi
  6b9669:	00 00 00 
  6b966c:	e8 9f 5e ff ff       	callq  6af510 <http_parser_execute>
  6b9671:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  6b9675:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  6b9679:	48 3b 45 d8          	cmp    -0x28(%rbp),%rax
  6b967d:	74 3f                	je     6b96be <test_invalid_header_content+0x12e>
  6b967f:	8b 45 c4             	mov    -0x3c(%rbp),%eax
  6b9682:	c1 e8 18             	shr    $0x18,%eax
  6b9685:	83 e0 7f             	and    $0x7f,%eax
  6b9688:	83 f8 18             	cmp    $0x18,%eax
  6b968b:	75 02                	jne    6b968f <test_invalid_header_content+0xff>
  6b968d:	eb 28                	jmp    6b96b7 <test_invalid_header_content+0x127>
  6b968f:	48 bf 65 6d 20 00 00 	movabs $0x206d65,%rdi
  6b9696:	00 00 00 
  6b9699:	48 be e4 81 20 00 00 	movabs $0x2081e4,%rsi
  6b96a0:	00 00 00 
  6b96a3:	48 b9 4c 47 20 00 00 	movabs $0x20474c,%rcx
  6b96aa:	00 00 00 
  6b96ad:	ba b5 0e 00 00       	mov    $0xeb5,%edx
  6b96b2:	e8 d9 22 00 00       	callq  6bb990 <__assert_fail@plt>
  6b96b7:	48 83 c4 48          	add    $0x48,%rsp
  6b96bb:	5b                   	pop    %rbx
  6b96bc:	5d                   	pop    %rbp
  6b96bd:	c3                   	retq   
  6b96be:	48 8b 3c 25 00 b8 71 	mov    0x71b800,%rdi
  6b96c5:	00 
  6b96c6:	48 be d3 74 20 00 00 	movabs $0x2074d3,%rsi
  6b96cd:	00 00 00 
  6b96d0:	b0 00                	mov    $0x0,%al
  6b96d2:	e8 d9 22 00 00       	callq  6bb9b0 <fprintf@plt>
  6b96d7:	e8 e4 22 00 00       	callq  6bb9c0 <abort@plt>
  6b96dc:	cc                   	int3   
  6b96dd:	cc                   	int3   
  6b96de:	cc                   	int3   
  6b96df:	cc                   	int3   

00000000006b96e0 <test_invalid_header_field_content_error>:
  6b96e0:	55                   	push   %rbp
  6b96e1:	48 89 e5             	mov    %rsp,%rbp
  6b96e4:	48 83 ec 10          	sub    $0x10,%rsp
  6b96e8:	89 7d fc             	mov    %edi,-0x4(%rbp)
  6b96eb:	8b 7d fc             	mov    -0x4(%rbp),%edi
  6b96ee:	48 be 83 4d 20 00 00 	movabs $0x204d83,%rsi
  6b96f5:	00 00 00 
  6b96f8:	e8 93 fe ff ff       	callq  6b9590 <test_invalid_header_content>
  6b96fd:	8b 7d fc             	mov    -0x4(%rbp),%edi
  6b9700:	48 be e7 7a 20 00 00 	movabs $0x207ae7,%rsi
  6b9707:	00 00 00 
  6b970a:	e8 81 fe ff ff       	callq  6b9590 <test_invalid_header_content>
  6b970f:	48 83 c4 10          	add    $0x10,%rsp
  6b9713:	5d                   	pop    %rbp
  6b9714:	c3                   	retq   
  6b9715:	cc                   	int3   
  6b9716:	cc                   	int3   
  6b9717:	cc                   	int3   
  6b9718:	cc                   	int3   
  6b9719:	cc                   	int3   
  6b971a:	cc                   	int3   
  6b971b:	cc                   	int3   
  6b971c:	cc                   	int3   
  6b971d:	cc                   	int3   
  6b971e:	cc                   	int3   
  6b971f:	cc                   	int3   

00000000006b9720 <test_invalid_header_field>:
  6b9720:	55                   	push   %rbp
  6b9721:	48 89 e5             	mov    %rsp,%rbp
  6b9724:	53                   	push   %rbx
  6b9725:	48 83 ec 48          	sub    $0x48,%rsp
  6b9729:	89 7d ec             	mov    %edi,-0x14(%rbp)
  6b972c:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
  6b9730:	8b 45 ec             	mov    -0x14(%rbp),%eax
  6b9733:	be 01 00 00 00       	mov    $0x1,%esi
  6b9738:	31 c9                	xor    %ecx,%ecx
  6b973a:	83 f8 00             	cmp    $0x0,%eax
  6b973d:	0f 45 f1             	cmovne %ecx,%esi
  6b9740:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
  6b9744:	e8 07 c5 ff ff       	callq  6b5c50 <http_parser_init>
  6b9749:	8b 45 ec             	mov    -0x14(%rbp),%eax
  6b974c:	48 b9 71 4d 20 00 00 	movabs $0x204d71,%rcx
  6b9753:	00 00 00 
  6b9756:	48 ba 25 80 20 00 00 	movabs $0x208025,%rdx
  6b975d:	00 00 00 
  6b9760:	83 f8 00             	cmp    $0x0,%eax
  6b9763:	48 0f 45 ca          	cmovne %rdx,%rcx
  6b9767:	48 89 4d f0          	mov    %rcx,-0x10(%rbp)
  6b976b:	48 8b 5d f0          	mov    -0x10(%rbp),%rbx
  6b976f:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b9773:	e8 68 22 00 00       	callq  6bb9e0 <strlen@plt>
  6b9778:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
  6b977c:	48 be a8 b7 71 00 00 	movabs $0x71b7a8,%rsi
  6b9783:	00 00 00 
  6b9786:	48 89 da             	mov    %rbx,%rdx
  6b9789:	48 89 c1             	mov    %rax,%rcx
  6b978c:	e8 7f 5d ff ff       	callq  6af510 <http_parser_execute>
  6b9791:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  6b9795:	48 8b 5d e0          	mov    -0x20(%rbp),%rbx
  6b9799:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b979d:	e8 3e 22 00 00       	callq  6bb9e0 <strlen@plt>
  6b97a2:	48 39 c3             	cmp    %rax,%rbx
  6b97a5:	75 02                	jne    6b97a9 <test_invalid_header_field+0x89>
  6b97a7:	eb 28                	jmp    6b97d1 <test_invalid_header_field+0xb1>
  6b97a9:	48 bf 6a 3c 20 00 00 	movabs $0x203c6a,%rdi
  6b97b0:	00 00 00 
  6b97b3:	48 be e4 81 20 00 00 	movabs $0x2081e4,%rsi
  6b97ba:	00 00 00 
  6b97bd:	48 b9 91 4d 20 00 00 	movabs $0x204d91,%rcx
  6b97c4:	00 00 00 
  6b97c7:	ba d0 0e 00 00       	mov    $0xed0,%edx
  6b97cc:	e8 bf 21 00 00       	callq  6bb990 <__assert_fail@plt>
  6b97d1:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  6b97d5:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  6b97d9:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b97dd:	e8 fe 21 00 00       	callq  6bb9e0 <strlen@plt>
  6b97e2:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  6b97e6:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  6b97ea:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  6b97ee:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
  6b97f2:	48 be a8 b7 71 00 00 	movabs $0x71b7a8,%rsi
  6b97f9:	00 00 00 
  6b97fc:	e8 0f 5d ff ff       	callq  6af510 <http_parser_execute>
  6b9801:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  6b9805:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  6b9809:	48 3b 45 d8          	cmp    -0x28(%rbp),%rax
  6b980d:	74 3f                	je     6b984e <test_invalid_header_field+0x12e>
  6b980f:	8b 45 c4             	mov    -0x3c(%rbp),%eax
  6b9812:	c1 e8 18             	shr    $0x18,%eax
  6b9815:	83 e0 7f             	and    $0x7f,%eax
  6b9818:	83 f8 18             	cmp    $0x18,%eax
  6b981b:	75 02                	jne    6b981f <test_invalid_header_field+0xff>
  6b981d:	eb 28                	jmp    6b9847 <test_invalid_header_field+0x127>
  6b981f:	48 bf 65 6d 20 00 00 	movabs $0x206d65,%rdi
  6b9826:	00 00 00 
  6b9829:	48 be e4 81 20 00 00 	movabs $0x2081e4,%rsi
  6b9830:	00 00 00 
  6b9833:	48 b9 91 4d 20 00 00 	movabs $0x204d91,%rcx
  6b983a:	00 00 00 
  6b983d:	ba d7 0e 00 00       	mov    $0xed7,%edx
  6b9842:	e8 49 21 00 00       	callq  6bb990 <__assert_fail@plt>
  6b9847:	48 83 c4 48          	add    $0x48,%rsp
  6b984b:	5b                   	pop    %rbx
  6b984c:	5d                   	pop    %rbp
  6b984d:	c3                   	retq   
  6b984e:	48 8b 3c 25 00 b8 71 	mov    0x71b800,%rdi
  6b9855:	00 
  6b9856:	48 be f5 25 20 00 00 	movabs $0x2025f5,%rsi
  6b985d:	00 00 00 
  6b9860:	b0 00                	mov    $0x0,%al
  6b9862:	e8 49 21 00 00       	callq  6bb9b0 <fprintf@plt>
  6b9867:	e8 54 21 00 00       	callq  6bb9c0 <abort@plt>
  6b986c:	cc                   	int3   
  6b986d:	cc                   	int3   
  6b986e:	cc                   	int3   
  6b986f:	cc                   	int3   

00000000006b9870 <test_invalid_header_field_token_error>:
  6b9870:	55                   	push   %rbp
  6b9871:	48 89 e5             	mov    %rsp,%rbp
  6b9874:	48 83 ec 10          	sub    $0x10,%rsp
  6b9878:	89 7d fc             	mov    %edi,-0x4(%rbp)
  6b987b:	8b 7d fc             	mov    -0x4(%rbp),%edi
  6b987e:	48 be 75 7e 20 00 00 	movabs $0x207e75,%rsi
  6b9885:	00 00 00 
  6b9888:	e8 93 fe ff ff       	callq  6b9720 <test_invalid_header_field>
  6b988d:	8b 7d fc             	mov    -0x4(%rbp),%edi
  6b9890:	48 be 03 66 20 00 00 	movabs $0x206603,%rsi
  6b9897:	00 00 00 
  6b989a:	e8 81 fe ff ff       	callq  6b9720 <test_invalid_header_field>
  6b989f:	48 83 c4 10          	add    $0x10,%rsp
  6b98a3:	5d                   	pop    %rbp
  6b98a4:	c3                   	retq   
  6b98a5:	cc                   	int3   
  6b98a6:	cc                   	int3   
  6b98a7:	cc                   	int3   
  6b98a8:	cc                   	int3   
  6b98a9:	cc                   	int3   
  6b98aa:	cc                   	int3   
  6b98ab:	cc                   	int3   
  6b98ac:	cc                   	int3   
  6b98ad:	cc                   	int3   
  6b98ae:	cc                   	int3   
  6b98af:	cc                   	int3   

00000000006b98b0 <test_double_content_length_error>:
  6b98b0:	55                   	push   %rbp
  6b98b1:	48 89 e5             	mov    %rsp,%rbp
  6b98b4:	53                   	push   %rbx
  6b98b5:	48 83 ec 48          	sub    $0x48,%rsp
  6b98b9:	89 7d ec             	mov    %edi,-0x14(%rbp)
  6b98bc:	8b 45 ec             	mov    -0x14(%rbp),%eax
  6b98bf:	be 01 00 00 00       	mov    $0x1,%esi
  6b98c4:	31 c9                	xor    %ecx,%ecx
  6b98c6:	83 f8 00             	cmp    $0x0,%eax
  6b98c9:	0f 45 f1             	cmovne %ecx,%esi
  6b98cc:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
  6b98d0:	e8 7b c3 ff ff       	callq  6b5c50 <http_parser_init>
  6b98d5:	8b 45 ec             	mov    -0x14(%rbp),%eax
  6b98d8:	48 b9 71 4d 20 00 00 	movabs $0x204d71,%rcx
  6b98df:	00 00 00 
  6b98e2:	48 ba 25 80 20 00 00 	movabs $0x208025,%rdx
  6b98e9:	00 00 00 
  6b98ec:	83 f8 00             	cmp    $0x0,%eax
  6b98ef:	48 0f 45 ca          	cmovne %rdx,%rcx
  6b98f3:	48 89 4d f0          	mov    %rcx,-0x10(%rbp)
  6b98f7:	48 8b 5d f0          	mov    -0x10(%rbp),%rbx
  6b98fb:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b98ff:	e8 dc 20 00 00       	callq  6bb9e0 <strlen@plt>
  6b9904:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
  6b9908:	48 be a8 b7 71 00 00 	movabs $0x71b7a8,%rsi
  6b990f:	00 00 00 
  6b9912:	48 89 da             	mov    %rbx,%rdx
  6b9915:	48 89 c1             	mov    %rax,%rcx
  6b9918:	e8 f3 5b ff ff       	callq  6af510 <http_parser_execute>
  6b991d:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  6b9921:	48 8b 5d e0          	mov    -0x20(%rbp),%rbx
  6b9925:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b9929:	e8 b2 20 00 00       	callq  6bb9e0 <strlen@plt>
  6b992e:	48 39 c3             	cmp    %rax,%rbx
  6b9931:	75 02                	jne    6b9935 <test_double_content_length_error+0x85>
  6b9933:	eb 28                	jmp    6b995d <test_double_content_length_error+0xad>
  6b9935:	48 bf 6a 3c 20 00 00 	movabs $0x203c6a,%rdi
  6b993c:	00 00 00 
  6b993f:	48 be e4 81 20 00 00 	movabs $0x2081e4,%rsi
  6b9946:	00 00 00 
  6b9949:	48 b9 08 55 20 00 00 	movabs $0x205508,%rcx
  6b9950:	00 00 00 
  6b9953:	ba f2 0e 00 00       	mov    $0xef2,%edx
  6b9958:	e8 33 20 00 00       	callq  6bb990 <__assert_fail@plt>
  6b995d:	48 b8 33 55 20 00 00 	movabs $0x205533,%rax
  6b9964:	00 00 00 
  6b9967:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  6b996b:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b996f:	e8 6c 20 00 00       	callq  6bb9e0 <strlen@plt>
  6b9974:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  6b9978:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  6b997c:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  6b9980:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
  6b9984:	48 be a8 b7 71 00 00 	movabs $0x71b7a8,%rsi
  6b998b:	00 00 00 
  6b998e:	e8 7d 5b ff ff       	callq  6af510 <http_parser_execute>
  6b9993:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  6b9997:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  6b999b:	48 3b 45 d8          	cmp    -0x28(%rbp),%rax
  6b999f:	74 3f                	je     6b99e0 <test_double_content_length_error+0x130>
  6b99a1:	8b 45 cc             	mov    -0x34(%rbp),%eax
  6b99a4:	c1 e8 18             	shr    $0x18,%eax
  6b99a7:	83 e0 7f             	and    $0x7f,%eax
  6b99aa:	83 f8 1a             	cmp    $0x1a,%eax
  6b99ad:	75 02                	jne    6b99b1 <test_double_content_length_error+0x101>
  6b99af:	eb 28                	jmp    6b99d9 <test_double_content_length_error+0x129>
  6b99b1:	48 bf cf 40 20 00 00 	movabs $0x2040cf,%rdi
  6b99b8:	00 00 00 
  6b99bb:	48 be e4 81 20 00 00 	movabs $0x2081e4,%rsi
  6b99c2:	00 00 00 
  6b99c5:	48 b9 08 55 20 00 00 	movabs $0x205508,%rcx
  6b99cc:	00 00 00 
  6b99cf:	ba f9 0e 00 00       	mov    $0xef9,%edx
  6b99d4:	e8 b7 1f 00 00       	callq  6bb990 <__assert_fail@plt>
  6b99d9:	48 83 c4 48          	add    $0x48,%rsp
  6b99dd:	5b                   	pop    %rbx
  6b99de:	5d                   	pop    %rbp
  6b99df:	c3                   	retq   
  6b99e0:	48 8b 3c 25 00 b8 71 	mov    0x71b800,%rdi
  6b99e7:	00 
  6b99e8:	48 be 12 77 20 00 00 	movabs $0x207712,%rsi
  6b99ef:	00 00 00 
  6b99f2:	b0 00                	mov    $0x0,%al
  6b99f4:	e8 b7 1f 00 00       	callq  6bb9b0 <fprintf@plt>
  6b99f9:	e8 c2 1f 00 00       	callq  6bb9c0 <abort@plt>
  6b99fe:	cc                   	int3   
  6b99ff:	cc                   	int3   

00000000006b9a00 <test_chunked_content_length_error>:
  6b9a00:	55                   	push   %rbp
  6b9a01:	48 89 e5             	mov    %rsp,%rbp
  6b9a04:	53                   	push   %rbx
  6b9a05:	48 83 ec 48          	sub    $0x48,%rsp
  6b9a09:	89 7d ec             	mov    %edi,-0x14(%rbp)
  6b9a0c:	8b 45 ec             	mov    -0x14(%rbp),%eax
  6b9a0f:	be 01 00 00 00       	mov    $0x1,%esi
  6b9a14:	31 c9                	xor    %ecx,%ecx
  6b9a16:	83 f8 00             	cmp    $0x0,%eax
  6b9a19:	0f 45 f1             	cmovne %ecx,%esi
  6b9a1c:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
  6b9a20:	e8 2b c2 ff ff       	callq  6b5c50 <http_parser_init>
  6b9a25:	8b 45 ec             	mov    -0x14(%rbp),%eax
  6b9a28:	48 b9 71 4d 20 00 00 	movabs $0x204d71,%rcx
  6b9a2f:	00 00 00 
  6b9a32:	48 ba 25 80 20 00 00 	movabs $0x208025,%rdx
  6b9a39:	00 00 00 
  6b9a3c:	83 f8 00             	cmp    $0x0,%eax
  6b9a3f:	48 0f 45 ca          	cmovne %rdx,%rcx
  6b9a43:	48 89 4d f0          	mov    %rcx,-0x10(%rbp)
  6b9a47:	48 8b 5d f0          	mov    -0x10(%rbp),%rbx
  6b9a4b:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b9a4f:	e8 8c 1f 00 00       	callq  6bb9e0 <strlen@plt>
  6b9a54:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
  6b9a58:	48 be a8 b7 71 00 00 	movabs $0x71b7a8,%rsi
  6b9a5f:	00 00 00 
  6b9a62:	48 89 da             	mov    %rbx,%rdx
  6b9a65:	48 89 c1             	mov    %rax,%rcx
  6b9a68:	e8 a3 5a ff ff       	callq  6af510 <http_parser_execute>
  6b9a6d:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  6b9a71:	48 8b 5d e0          	mov    -0x20(%rbp),%rbx
  6b9a75:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b9a79:	e8 62 1f 00 00       	callq  6bb9e0 <strlen@plt>
  6b9a7e:	48 39 c3             	cmp    %rax,%rbx
  6b9a81:	75 02                	jne    6b9a85 <test_chunked_content_length_error+0x85>
  6b9a83:	eb 28                	jmp    6b9aad <test_chunked_content_length_error+0xad>
  6b9a85:	48 bf 6a 3c 20 00 00 	movabs $0x203c6a,%rdi
  6b9a8c:	00 00 00 
  6b9a8f:	48 be e4 81 20 00 00 	movabs $0x2081e4,%rsi
  6b9a96:	00 00 00 
  6b9a99:	48 b9 fa 44 20 00 00 	movabs $0x2044fa,%rcx
  6b9aa0:	00 00 00 
  6b9aa3:	ba 0d 0f 00 00       	mov    $0xf0d,%edx
  6b9aa8:	e8 e3 1e 00 00       	callq  6bb990 <__assert_fail@plt>
  6b9aad:	48 b8 c3 4d 20 00 00 	movabs $0x204dc3,%rax
  6b9ab4:	00 00 00 
  6b9ab7:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  6b9abb:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b9abf:	e8 1c 1f 00 00       	callq  6bb9e0 <strlen@plt>
  6b9ac4:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  6b9ac8:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  6b9acc:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  6b9ad0:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
  6b9ad4:	48 be a8 b7 71 00 00 	movabs $0x71b7a8,%rsi
  6b9adb:	00 00 00 
  6b9ade:	e8 2d 5a ff ff       	callq  6af510 <http_parser_execute>
  6b9ae3:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  6b9ae7:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  6b9aeb:	48 3b 45 d8          	cmp    -0x28(%rbp),%rax
  6b9aef:	74 3f                	je     6b9b30 <test_chunked_content_length_error+0x130>
  6b9af1:	8b 45 cc             	mov    -0x34(%rbp),%eax
  6b9af4:	c1 e8 18             	shr    $0x18,%eax
  6b9af7:	83 e0 7f             	and    $0x7f,%eax
  6b9afa:	83 f8 1a             	cmp    $0x1a,%eax
  6b9afd:	75 02                	jne    6b9b01 <test_chunked_content_length_error+0x101>
  6b9aff:	eb 28                	jmp    6b9b29 <test_chunked_content_length_error+0x129>
  6b9b01:	48 bf cf 40 20 00 00 	movabs $0x2040cf,%rdi
  6b9b08:	00 00 00 
  6b9b0b:	48 be e4 81 20 00 00 	movabs $0x2081e4,%rsi
  6b9b12:	00 00 00 
  6b9b15:	48 b9 fa 44 20 00 00 	movabs $0x2044fa,%rcx
  6b9b1c:	00 00 00 
  6b9b1f:	ba 14 0f 00 00       	mov    $0xf14,%edx
  6b9b24:	e8 67 1e 00 00       	callq  6bb990 <__assert_fail@plt>
  6b9b29:	48 83 c4 48          	add    $0x48,%rsp
  6b9b2d:	5b                   	pop    %rbx
  6b9b2e:	5d                   	pop    %rbp
  6b9b2f:	c3                   	retq   
  6b9b30:	48 8b 3c 25 00 b8 71 	mov    0x71b800,%rdi
  6b9b37:	00 
  6b9b38:	48 be 9c 6d 20 00 00 	movabs $0x206d9c,%rsi
  6b9b3f:	00 00 00 
  6b9b42:	b0 00                	mov    $0x0,%al
  6b9b44:	e8 67 1e 00 00       	callq  6bb9b0 <fprintf@plt>
  6b9b49:	e8 72 1e 00 00       	callq  6bb9c0 <abort@plt>
  6b9b4e:	cc                   	int3   
  6b9b4f:	cc                   	int3   

00000000006b9b50 <test_header_cr_no_lf_error>:
  6b9b50:	55                   	push   %rbp
  6b9b51:	48 89 e5             	mov    %rsp,%rbp
  6b9b54:	53                   	push   %rbx
  6b9b55:	48 83 ec 48          	sub    $0x48,%rsp
  6b9b59:	89 7d ec             	mov    %edi,-0x14(%rbp)
  6b9b5c:	8b 45 ec             	mov    -0x14(%rbp),%eax
  6b9b5f:	be 01 00 00 00       	mov    $0x1,%esi
  6b9b64:	31 c9                	xor    %ecx,%ecx
  6b9b66:	83 f8 00             	cmp    $0x0,%eax
  6b9b69:	0f 45 f1             	cmovne %ecx,%esi
  6b9b6c:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
  6b9b70:	e8 db c0 ff ff       	callq  6b5c50 <http_parser_init>
  6b9b75:	8b 45 ec             	mov    -0x14(%rbp),%eax
  6b9b78:	48 b9 71 4d 20 00 00 	movabs $0x204d71,%rcx
  6b9b7f:	00 00 00 
  6b9b82:	48 ba 25 80 20 00 00 	movabs $0x208025,%rdx
  6b9b89:	00 00 00 
  6b9b8c:	83 f8 00             	cmp    $0x0,%eax
  6b9b8f:	48 0f 45 ca          	cmovne %rdx,%rcx
  6b9b93:	48 89 4d f0          	mov    %rcx,-0x10(%rbp)
  6b9b97:	48 8b 5d f0          	mov    -0x10(%rbp),%rbx
  6b9b9b:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b9b9f:	e8 3c 1e 00 00       	callq  6bb9e0 <strlen@plt>
  6b9ba4:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
  6b9ba8:	48 be a8 b7 71 00 00 	movabs $0x71b7a8,%rsi
  6b9baf:	00 00 00 
  6b9bb2:	48 89 da             	mov    %rbx,%rdx
  6b9bb5:	48 89 c1             	mov    %rax,%rcx
  6b9bb8:	e8 53 59 ff ff       	callq  6af510 <http_parser_execute>
  6b9bbd:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  6b9bc1:	48 8b 5d e0          	mov    -0x20(%rbp),%rbx
  6b9bc5:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b9bc9:	e8 12 1e 00 00       	callq  6bb9e0 <strlen@plt>
  6b9bce:	48 39 c3             	cmp    %rax,%rbx
  6b9bd1:	75 02                	jne    6b9bd5 <test_header_cr_no_lf_error+0x85>
  6b9bd3:	eb 28                	jmp    6b9bfd <test_header_cr_no_lf_error+0xad>
  6b9bd5:	48 bf 6a 3c 20 00 00 	movabs $0x203c6a,%rdi
  6b9bdc:	00 00 00 
  6b9bdf:	48 be e4 81 20 00 00 	movabs $0x2081e4,%rsi
  6b9be6:	00 00 00 
  6b9be9:	48 b9 52 77 20 00 00 	movabs $0x207752,%rcx
  6b9bf0:	00 00 00 
  6b9bf3:	ba 28 0f 00 00       	mov    $0xf28,%edx
  6b9bf8:	e8 93 1d 00 00       	callq  6bb990 <__assert_fail@plt>
  6b9bfd:	48 b8 8b 29 20 00 00 	movabs $0x20298b,%rax
  6b9c04:	00 00 00 
  6b9c07:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  6b9c0b:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b9c0f:	e8 cc 1d 00 00       	callq  6bb9e0 <strlen@plt>
  6b9c14:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  6b9c18:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  6b9c1c:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  6b9c20:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
  6b9c24:	48 be a8 b7 71 00 00 	movabs $0x71b7a8,%rsi
  6b9c2b:	00 00 00 
  6b9c2e:	e8 dd 58 ff ff       	callq  6af510 <http_parser_execute>
  6b9c33:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  6b9c37:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  6b9c3b:	48 3b 45 d8          	cmp    -0x28(%rbp),%rax
  6b9c3f:	74 3f                	je     6b9c80 <test_header_cr_no_lf_error+0x130>
  6b9c41:	8b 45 cc             	mov    -0x34(%rbp),%eax
  6b9c44:	c1 e8 18             	shr    $0x18,%eax
  6b9c47:	83 e0 7f             	and    $0x7f,%eax
  6b9c4a:	83 f8 17             	cmp    $0x17,%eax
  6b9c4d:	75 02                	jne    6b9c51 <test_header_cr_no_lf_error+0x101>
  6b9c4f:	eb 28                	jmp    6b9c79 <test_header_cr_no_lf_error+0x129>
  6b9c51:	48 bf 77 77 20 00 00 	movabs $0x207777,%rdi
  6b9c58:	00 00 00 
  6b9c5b:	48 be e4 81 20 00 00 	movabs $0x2081e4,%rsi
  6b9c62:	00 00 00 
  6b9c65:	48 b9 52 77 20 00 00 	movabs $0x207752,%rcx
  6b9c6c:	00 00 00 
  6b9c6f:	ba 2f 0f 00 00       	mov    $0xf2f,%edx
  6b9c74:	e8 17 1d 00 00       	callq  6bb990 <__assert_fail@plt>
  6b9c79:	48 83 c4 48          	add    $0x48,%rsp
  6b9c7d:	5b                   	pop    %rbx
  6b9c7e:	5d                   	pop    %rbp
  6b9c7f:	c3                   	retq   
  6b9c80:	48 8b 3c 25 00 b8 71 	mov    0x71b800,%rdi
  6b9c87:	00 
  6b9c88:	48 be 8d 2b 20 00 00 	movabs $0x202b8d,%rsi
  6b9c8f:	00 00 00 
  6b9c92:	b0 00                	mov    $0x0,%al
  6b9c94:	e8 17 1d 00 00       	callq  6bb9b0 <fprintf@plt>
  6b9c99:	e8 22 1d 00 00       	callq  6bb9c0 <abort@plt>
  6b9c9e:	cc                   	int3   
  6b9c9f:	cc                   	int3   

00000000006b9ca0 <test_no_overflow_parse_url>:
  6b9ca0:	55                   	push   %rbp
  6b9ca1:	48 89 e5             	mov    %rsp,%rbp
  6b9ca4:	48 83 ec 30          	sub    $0x30,%rsp
  6b9ca8:	48 8d 7d d8          	lea    -0x28(%rbp),%rdi
  6b9cac:	e8 ff c0 ff ff       	callq  6b5db0 <http_parser_url_init>
  6b9cb1:	48 bf 82 7e 20 00 00 	movabs $0x207e82,%rdi
  6b9cb8:	00 00 00 
  6b9cbb:	48 8d 4d d8          	lea    -0x28(%rbp),%rcx
  6b9cbf:	be 16 00 00 00       	mov    $0x16,%esi
  6b9cc4:	31 d2                	xor    %edx,%edx
  6b9cc6:	e8 15 c1 ff ff       	callq  6b5de0 <http_parser_parse_url>
  6b9ccb:	89 45 fc             	mov    %eax,-0x4(%rbp)
  6b9cce:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
  6b9cd2:	74 21                	je     6b9cf5 <test_no_overflow_parse_url+0x55>
  6b9cd4:	48 8b 3c 25 00 b8 71 	mov    0x71b800,%rdi
  6b9cdb:	00 
  6b9cdc:	8b 55 fc             	mov    -0x4(%rbp),%edx
  6b9cdf:	48 be 57 32 20 00 00 	movabs $0x203257,%rsi
  6b9ce6:	00 00 00 
  6b9ce9:	b0 00                	mov    $0x0,%al
  6b9ceb:	e8 c0 1c 00 00       	callq  6bb9b0 <fprintf@plt>
  6b9cf0:	e8 cb 1c 00 00       	callq  6bb9c0 <abort@plt>
  6b9cf5:	0f b7 45 da          	movzwl -0x26(%rbp),%eax
  6b9cf9:	3d 20 03 00 00       	cmp    $0x320,%eax
  6b9cfe:	74 22                	je     6b9d22 <test_no_overflow_parse_url+0x82>
  6b9d00:	48 8b 3c 25 00 b8 71 	mov    0x71b800,%rdi
  6b9d07:	00 
  6b9d08:	0f b7 55 da          	movzwl -0x26(%rbp),%edx
  6b9d0c:	48 be 8d 1f 20 00 00 	movabs $0x201f8d,%rsi
  6b9d13:	00 00 00 
  6b9d16:	b0 00                	mov    $0x0,%al
  6b9d18:	e8 93 1c 00 00       	callq  6bb9b0 <fprintf@plt>
  6b9d1d:	e8 9e 1c 00 00       	callq  6bb9c0 <abort@plt>
  6b9d22:	48 83 c4 30          	add    $0x30,%rsp
  6b9d26:	5d                   	pop    %rbp
  6b9d27:	c3                   	retq   
  6b9d28:	cc                   	int3   
  6b9d29:	cc                   	int3   
  6b9d2a:	cc                   	int3   
  6b9d2b:	cc                   	int3   
  6b9d2c:	cc                   	int3   
  6b9d2d:	cc                   	int3   
  6b9d2e:	cc                   	int3   
  6b9d2f:	cc                   	int3   

00000000006b9d30 <test_header_overflow_error>:
  6b9d30:	55                   	push   %rbp
  6b9d31:	48 89 e5             	mov    %rsp,%rbp
  6b9d34:	53                   	push   %rbx
  6b9d35:	48 83 ec 48          	sub    $0x48,%rsp
  6b9d39:	89 7d e4             	mov    %edi,-0x1c(%rbp)
  6b9d3c:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b9d3f:	be 01 00 00 00       	mov    $0x1,%esi
  6b9d44:	31 c9                	xor    %ecx,%ecx
  6b9d46:	83 f8 00             	cmp    $0x0,%eax
  6b9d49:	0f 45 f1             	cmovne %ecx,%esi
  6b9d4c:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
  6b9d50:	e8 fb be ff ff       	callq  6b5c50 <http_parser_init>
  6b9d55:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6b9d58:	48 b9 dd 6d 20 00 00 	movabs $0x206ddd,%rcx
  6b9d5f:	00 00 00 
  6b9d62:	48 ba 25 80 20 00 00 	movabs $0x208025,%rdx
  6b9d69:	00 00 00 
  6b9d6c:	83 f8 00             	cmp    $0x0,%eax
  6b9d6f:	48 0f 45 ca          	cmovne %rdx,%rcx
  6b9d73:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
  6b9d77:	48 8b 5d e8          	mov    -0x18(%rbp),%rbx
  6b9d7b:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  6b9d7f:	e8 5c 1c 00 00       	callq  6bb9e0 <strlen@plt>
  6b9d84:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
  6b9d88:	48 be a8 b7 71 00 00 	movabs $0x71b7a8,%rsi
  6b9d8f:	00 00 00 
  6b9d92:	48 89 da             	mov    %rbx,%rdx
  6b9d95:	48 89 c1             	mov    %rax,%rcx
  6b9d98:	e8 73 57 ff ff       	callq  6af510 <http_parser_execute>
  6b9d9d:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  6b9da1:	48 8b 5d d8          	mov    -0x28(%rbp),%rbx
  6b9da5:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  6b9da9:	e8 32 1c 00 00       	callq  6bb9e0 <strlen@plt>
  6b9dae:	48 39 c3             	cmp    %rax,%rbx
  6b9db1:	75 02                	jne    6b9db5 <test_header_overflow_error+0x85>
  6b9db3:	eb 28                	jmp    6b9ddd <test_header_overflow_error+0xad>
  6b9db5:	48 bf 6a 3c 20 00 00 	movabs $0x203c6a,%rdi
  6b9dbc:	00 00 00 
  6b9dbf:	48 be e4 81 20 00 00 	movabs $0x2081e4,%rsi
  6b9dc6:	00 00 00 
  6b9dc9:	48 b9 f1 7a 20 00 00 	movabs $0x207af1,%rcx
  6b9dd0:	00 00 00 
  6b9dd3:	ba 59 0f 00 00       	mov    $0xf59,%edx
  6b9dd8:	e8 b3 1b 00 00       	callq  6bb990 <__assert_fail@plt>
  6b9ddd:	48 b8 ef 6d 20 00 00 	movabs $0x206def,%rax
  6b9de4:	00 00 00 
  6b9de7:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  6b9deb:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  6b9def:	e8 ec 1b 00 00       	callq  6bb9e0 <strlen@plt>
  6b9df4:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  6b9df8:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
  6b9dff:	81 7d f4 10 27 00 00 	cmpl   $0x2710,-0xc(%rbp)
  6b9e06:	7d 75                	jge    6b9e7d <test_header_overflow_error+0x14d>
  6b9e08:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  6b9e0c:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
  6b9e10:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
  6b9e14:	48 be a8 b7 71 00 00 	movabs $0x71b7a8,%rsi
  6b9e1b:	00 00 00 
  6b9e1e:	e8 ed 56 ff ff       	callq  6af510 <http_parser_execute>
  6b9e23:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  6b9e27:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6b9e2b:	48 3b 45 d0          	cmp    -0x30(%rbp),%rax
  6b9e2f:	74 3f                	je     6b9e70 <test_header_overflow_error+0x140>
  6b9e31:	8b 45 c4             	mov    -0x3c(%rbp),%eax
  6b9e34:	c1 e8 18             	shr    $0x18,%eax
  6b9e37:	83 e0 7f             	and    $0x7f,%eax
  6b9e3a:	83 f8 0c             	cmp    $0xc,%eax
  6b9e3d:	75 02                	jne    6b9e41 <test_header_overflow_error+0x111>
  6b9e3f:	eb 28                	jmp    6b9e69 <test_header_overflow_error+0x139>
  6b9e41:	48 bf 80 3c 20 00 00 	movabs $0x203c80,%rdi
  6b9e48:	00 00 00 
  6b9e4b:	48 be e4 81 20 00 00 	movabs $0x2081e4,%rsi
  6b9e52:	00 00 00 
  6b9e55:	48 b9 f1 7a 20 00 00 	movabs $0x207af1,%rcx
  6b9e5c:	00 00 00 
  6b9e5f:	ba 63 0f 00 00       	mov    $0xf63,%edx
  6b9e64:	e8 27 1b 00 00       	callq  6bb990 <__assert_fail@plt>
  6b9e69:	48 83 c4 48          	add    $0x48,%rsp
  6b9e6d:	5b                   	pop    %rbx
  6b9e6e:	5d                   	pop    %rbp
  6b9e6f:	c3                   	retq   
  6b9e70:	eb 00                	jmp    6b9e72 <test_header_overflow_error+0x142>
  6b9e72:	8b 45 f4             	mov    -0xc(%rbp),%eax
  6b9e75:	83 c0 01             	add    $0x1,%eax
  6b9e78:	89 45 f4             	mov    %eax,-0xc(%rbp)
  6b9e7b:	eb 82                	jmp    6b9dff <test_header_overflow_error+0xcf>
  6b9e7d:	48 8b 3c 25 00 b8 71 	mov    0x71b800,%rdi
  6b9e84:	00 
  6b9e85:	48 be fc 72 20 00 00 	movabs $0x2072fc,%rsi
  6b9e8c:	00 00 00 
  6b9e8f:	b0 00                	mov    $0x0,%al
  6b9e91:	e8 1a 1b 00 00       	callq  6bb9b0 <fprintf@plt>
  6b9e96:	e8 25 1b 00 00       	callq  6bb9c0 <abort@plt>
  6b9e9b:	cc                   	int3   
  6b9e9c:	cc                   	int3   
  6b9e9d:	cc                   	int3   
  6b9e9e:	cc                   	int3   
  6b9e9f:	cc                   	int3   

00000000006b9ea0 <test_header_nread_value>:
  6b9ea0:	55                   	push   %rbp
  6b9ea1:	48 89 e5             	mov    %rsp,%rbp
  6b9ea4:	53                   	push   %rbx
  6b9ea5:	48 83 ec 38          	sub    $0x38,%rsp
  6b9ea9:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
  6b9ead:	31 f6                	xor    %esi,%esi
  6b9eaf:	e8 9c bd ff ff       	callq  6b5c50 <http_parser_init>
  6b9eb4:	48 b8 36 80 20 00 00 	movabs $0x208036,%rax
  6b9ebb:	00 00 00 
  6b9ebe:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  6b9ec2:	48 8b 5d f0          	mov    -0x10(%rbp),%rbx
  6b9ec6:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b9eca:	e8 11 1b 00 00       	callq  6bb9e0 <strlen@plt>
  6b9ecf:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
  6b9ed3:	48 be a8 b7 71 00 00 	movabs $0x71b7a8,%rsi
  6b9eda:	00 00 00 
  6b9edd:	48 89 da             	mov    %rbx,%rdx
  6b9ee0:	48 89 c1             	mov    %rax,%rcx
  6b9ee3:	e8 28 56 ff ff       	callq  6af510 <http_parser_execute>
  6b9ee8:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  6b9eec:	48 8b 5d e8          	mov    -0x18(%rbp),%rbx
  6b9ef0:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b9ef4:	e8 e7 1a 00 00       	callq  6bb9e0 <strlen@plt>
  6b9ef9:	48 39 c3             	cmp    %rax,%rbx
  6b9efc:	75 02                	jne    6b9f00 <test_header_nread_value+0x60>
  6b9efe:	eb 28                	jmp    6b9f28 <test_header_nread_value+0x88>
  6b9f00:	48 bf 6a 3c 20 00 00 	movabs $0x203c6a,%rdi
  6b9f07:	00 00 00 
  6b9f0a:	48 be e4 81 20 00 00 	movabs $0x2081e4,%rsi
  6b9f11:	00 00 00 
  6b9f14:	48 b9 a5 52 20 00 00 	movabs $0x2052a5,%rcx
  6b9f1b:	00 00 00 
  6b9f1e:	ba 76 0f 00 00       	mov    $0xf76,%edx
  6b9f23:	e8 68 1a 00 00       	callq  6bb990 <__assert_fail@plt>
  6b9f28:	8b 5d cc             	mov    -0x34(%rbp),%ebx
  6b9f2b:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  6b9f2f:	e8 ac 1a 00 00       	callq  6bb9e0 <strlen@plt>
  6b9f34:	48 39 c3             	cmp    %rax,%rbx
  6b9f37:	75 02                	jne    6b9f3b <test_header_nread_value+0x9b>
  6b9f39:	eb 28                	jmp    6b9f63 <test_header_nread_value+0xc3>
  6b9f3b:	48 bf 5c 55 20 00 00 	movabs $0x20555c,%rdi
  6b9f42:	00 00 00 
  6b9f45:	48 be e4 81 20 00 00 	movabs $0x2081e4,%rsi
  6b9f4c:	00 00 00 
  6b9f4f:	48 b9 a5 52 20 00 00 	movabs $0x2052a5,%rcx
  6b9f56:	00 00 00 
  6b9f59:	ba 78 0f 00 00       	mov    $0xf78,%edx
  6b9f5e:	e8 2d 1a 00 00       	callq  6bb990 <__assert_fail@plt>
  6b9f63:	48 83 c4 38          	add    $0x38,%rsp
  6b9f67:	5b                   	pop    %rbx
  6b9f68:	5d                   	pop    %rbp
  6b9f69:	c3                   	retq   
  6b9f6a:	cc                   	int3   
  6b9f6b:	cc                   	int3   
  6b9f6c:	cc                   	int3   
  6b9f6d:	cc                   	int3   
  6b9f6e:	cc                   	int3   
  6b9f6f:	cc                   	int3   

00000000006b9f70 <test_header_content_length_overflow_error>:
  6b9f70:	55                   	push   %rbp
  6b9f71:	48 89 e5             	mov    %rsp,%rbp
  6b9f74:	48 81 ec c0 00 00 00 	sub    $0xc0,%rsp
  6b9f7b:	48 8d 7d c0          	lea    -0x40(%rbp),%rdi
  6b9f7f:	48 be 10 c1 6a 00 00 	movabs $0x6ac110,%rsi
  6b9f86:	00 00 00 
  6b9f89:	ba 39 00 00 00       	mov    $0x39,%edx
  6b9f8e:	e8 1d 1b 00 00       	callq  6bbab0 <memcpy@plt>
  6b9f93:	48 8d bd 40 ff ff ff 	lea    -0xc0(%rbp),%rdi
  6b9f9a:	48 be 80 bf 6a 00 00 	movabs $0x6abf80,%rsi
  6b9fa1:	00 00 00 
  6b9fa4:	ba 3a 00 00 00       	mov    $0x3a,%edx
  6b9fa9:	e8 02 1b 00 00       	callq  6bbab0 <memcpy@plt>
  6b9fae:	48 8d 7d 80          	lea    -0x80(%rbp),%rdi
  6b9fb2:	48 be d0 c0 6a 00 00 	movabs $0x6ac0d0,%rsi
  6b9fb9:	00 00 00 
  6b9fbc:	ba 3a 00 00 00       	mov    $0x3a,%edx
  6b9fc1:	e8 ea 1a 00 00       	callq  6bbab0 <memcpy@plt>
  6b9fc6:	48 8d 7d c0          	lea    -0x40(%rbp),%rdi
  6b9fca:	be 38 00 00 00       	mov    $0x38,%esi
  6b9fcf:	ba 01 00 00 00       	mov    $0x1,%edx
  6b9fd4:	e8 37 00 00 00       	callq  6ba010 <test_content_length_overflow>
  6b9fd9:	48 8d bd 40 ff ff ff 	lea    -0xc0(%rbp),%rdi
  6b9fe0:	be 39 00 00 00       	mov    $0x39,%esi
  6b9fe5:	31 d2                	xor    %edx,%edx
  6b9fe7:	e8 24 00 00 00       	callq  6ba010 <test_content_length_overflow>
  6b9fec:	48 8d 7d 80          	lea    -0x80(%rbp),%rdi
  6b9ff0:	be 39 00 00 00       	mov    $0x39,%esi
  6b9ff5:	31 d2                	xor    %edx,%edx
  6b9ff7:	e8 14 00 00 00       	callq  6ba010 <test_content_length_overflow>
  6b9ffc:	48 81 c4 c0 00 00 00 	add    $0xc0,%rsp
  6ba003:	5d                   	pop    %rbp
  6ba004:	c3                   	retq   
  6ba005:	cc                   	int3   
  6ba006:	cc                   	int3   
  6ba007:	cc                   	int3   
  6ba008:	cc                   	int3   
  6ba009:	cc                   	int3   
  6ba00a:	cc                   	int3   
  6ba00b:	cc                   	int3   
  6ba00c:	cc                   	int3   
  6ba00d:	cc                   	int3   
  6ba00e:	cc                   	int3   
  6ba00f:	cc                   	int3   

00000000006ba010 <test_content_length_overflow>:
  6ba010:	55                   	push   %rbp
  6ba011:	48 89 e5             	mov    %rsp,%rbp
  6ba014:	48 83 ec 40          	sub    $0x40,%rsp
  6ba018:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  6ba01c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  6ba020:	89 55 fc             	mov    %edx,-0x4(%rbp)
  6ba023:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
  6ba027:	be 01 00 00 00       	mov    $0x1,%esi
  6ba02c:	e8 1f bc ff ff       	callq  6b5c50 <http_parser_init>
  6ba031:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  6ba035:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6ba039:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
  6ba03d:	48 be a8 b7 71 00 00 	movabs $0x71b7a8,%rsi
  6ba044:	00 00 00 
  6ba047:	e8 c4 54 ff ff       	callq  6af510 <http_parser_execute>
  6ba04c:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
  6ba050:	74 3a                	je     6ba08c <test_content_length_overflow+0x7c>
  6ba052:	8b 45 dc             	mov    -0x24(%rbp),%eax
  6ba055:	c1 e8 18             	shr    $0x18,%eax
  6ba058:	83 e0 7f             	and    $0x7f,%eax
  6ba05b:	83 f8 00             	cmp    $0x0,%eax
  6ba05e:	75 02                	jne    6ba062 <test_content_length_overflow+0x52>
  6ba060:	eb 28                	jmp    6ba08a <test_content_length_overflow+0x7a>
  6ba062:	48 bf 02 51 20 00 00 	movabs $0x205102,%rdi
  6ba069:	00 00 00 
  6ba06c:	48 be e4 81 20 00 00 	movabs $0x2081e4,%rsi
  6ba073:	00 00 00 
  6ba076:	48 b9 67 7b 20 00 00 	movabs $0x207b67,%rcx
  6ba07d:	00 00 00 
  6ba080:	ba 84 0f 00 00       	mov    $0xf84,%edx
  6ba085:	e8 06 19 00 00       	callq  6bb990 <__assert_fail@plt>
  6ba08a:	eb 3a                	jmp    6ba0c6 <test_content_length_overflow+0xb6>
  6ba08c:	8b 45 dc             	mov    -0x24(%rbp),%eax
  6ba08f:	c1 e8 18             	shr    $0x18,%eax
  6ba092:	83 e0 7f             	and    $0x7f,%eax
  6ba095:	83 f8 19             	cmp    $0x19,%eax
  6ba098:	75 02                	jne    6ba09c <test_content_length_overflow+0x8c>
  6ba09a:	eb 28                	jmp    6ba0c4 <test_content_length_overflow+0xb4>
  6ba09c:	48 bf bf 7e 20 00 00 	movabs $0x207ebf,%rdi
  6ba0a3:	00 00 00 
  6ba0a6:	48 be e4 81 20 00 00 	movabs $0x2081e4,%rsi
  6ba0ad:	00 00 00 
  6ba0b0:	48 b9 67 7b 20 00 00 	movabs $0x207b67,%rcx
  6ba0b7:	00 00 00 
  6ba0ba:	ba 86 0f 00 00       	mov    $0xf86,%edx
  6ba0bf:	e8 cc 18 00 00       	callq  6bb990 <__assert_fail@plt>
  6ba0c4:	eb 00                	jmp    6ba0c6 <test_content_length_overflow+0xb6>
  6ba0c6:	48 83 c4 40          	add    $0x40,%rsp
  6ba0ca:	5d                   	pop    %rbp
  6ba0cb:	c3                   	retq   
  6ba0cc:	cc                   	int3   
  6ba0cd:	cc                   	int3   
  6ba0ce:	cc                   	int3   
  6ba0cf:	cc                   	int3   

00000000006ba0d0 <test_chunk_content_length_overflow_error>:
  6ba0d0:	55                   	push   %rbp
  6ba0d1:	48 89 e5             	mov    %rsp,%rbp
  6ba0d4:	48 81 ec f0 00 00 00 	sub    $0xf0,%rsp
  6ba0db:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
  6ba0df:	48 be 60 c0 6a 00 00 	movabs $0x6ac060,%rsi
  6ba0e6:	00 00 00 
  6ba0e9:	ba 44 00 00 00       	mov    $0x44,%edx
  6ba0ee:	e8 bd 19 00 00       	callq  6bbab0 <memcpy@plt>
  6ba0f3:	48 8d bd 60 ff ff ff 	lea    -0xa0(%rbp),%rdi
  6ba0fa:	48 be 10 c0 6a 00 00 	movabs $0x6ac010,%rsi
  6ba101:	00 00 00 
  6ba104:	ba 45 00 00 00       	mov    $0x45,%edx
  6ba109:	e8 a2 19 00 00       	callq  6bbab0 <memcpy@plt>
  6ba10e:	48 8d bd 10 ff ff ff 	lea    -0xf0(%rbp),%rdi
  6ba115:	48 be c0 bf 6a 00 00 	movabs $0x6abfc0,%rsi
  6ba11c:	00 00 00 
  6ba11f:	ba 46 00 00 00       	mov    $0x46,%edx
  6ba124:	e8 87 19 00 00       	callq  6bbab0 <memcpy@plt>
  6ba129:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
  6ba12d:	be 43 00 00 00       	mov    $0x43,%esi
  6ba132:	ba 01 00 00 00       	mov    $0x1,%edx
  6ba137:	e8 d4 fe ff ff       	callq  6ba010 <test_content_length_overflow>
  6ba13c:	48 8d bd 60 ff ff ff 	lea    -0xa0(%rbp),%rdi
  6ba143:	be 44 00 00 00       	mov    $0x44,%esi
  6ba148:	31 d2                	xor    %edx,%edx
  6ba14a:	e8 c1 fe ff ff       	callq  6ba010 <test_content_length_overflow>
  6ba14f:	48 8d bd 10 ff ff ff 	lea    -0xf0(%rbp),%rdi
  6ba156:	be 45 00 00 00       	mov    $0x45,%esi
  6ba15b:	31 d2                	xor    %edx,%edx
  6ba15d:	e8 ae fe ff ff       	callq  6ba010 <test_content_length_overflow>
  6ba162:	48 81 c4 f0 00 00 00 	add    $0xf0,%rsp
  6ba169:	5d                   	pop    %rbp
  6ba16a:	c3                   	retq   
  6ba16b:	cc                   	int3   
  6ba16c:	cc                   	int3   
  6ba16d:	cc                   	int3   
  6ba16e:	cc                   	int3   
  6ba16f:	cc                   	int3   

00000000006ba170 <test_no_overflow_long_body>:
  6ba170:	55                   	push   %rbp
  6ba171:	48 89 e5             	mov    %rsp,%rbp
  6ba174:	48 81 ec 00 0c 00 00 	sub    $0xc00,%rsp
  6ba17b:	89 7d f8             	mov    %edi,-0x8(%rbp)
  6ba17e:	48 89 75 d8          	mov    %rsi,-0x28(%rbp)
  6ba182:	8b 45 f8             	mov    -0x8(%rbp),%eax
  6ba185:	be 01 00 00 00       	mov    $0x1,%esi
  6ba18a:	31 c9                	xor    %ecx,%ecx
  6ba18c:	83 f8 00             	cmp    $0x0,%eax
  6ba18f:	0f 45 f1             	cmovne %ecx,%esi
  6ba192:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
  6ba196:	e8 b5 ba ff ff       	callq  6b5c50 <http_parser_init>
  6ba19b:	48 8d bd 00 f4 ff ff 	lea    -0xc00(%rbp),%rdi
  6ba1a2:	8b 45 f8             	mov    -0x8(%rbp),%eax
  6ba1a5:	48 ba 19 3f 20 00 00 	movabs $0x203f19,%rdx
  6ba1ac:	00 00 00 
  6ba1af:	48 b9 36 73 20 00 00 	movabs $0x207336,%rcx
  6ba1b6:	00 00 00 
  6ba1b9:	83 f8 00             	cmp    $0x0,%eax
  6ba1bc:	48 0f 45 d1          	cmovne %rcx,%rdx
  6ba1c0:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  6ba1c4:	48 be 84 37 20 00 00 	movabs $0x203784,%rsi
  6ba1cb:	00 00 00 
  6ba1ce:	b0 00                	mov    $0x0,%al
  6ba1d0:	e8 4b 18 00 00       	callq  6bba20 <sprintf@plt>
  6ba1d5:	48 98                	cltq   
  6ba1d7:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  6ba1db:	48 8d 95 00 f4 ff ff 	lea    -0xc00(%rbp),%rdx
  6ba1e2:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  6ba1e6:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
  6ba1ea:	48 be a8 b7 71 00 00 	movabs $0x71b7a8,%rsi
  6ba1f1:	00 00 00 
  6ba1f4:	e8 17 53 ff ff       	callq  6af510 <http_parser_execute>
  6ba1f9:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  6ba1fd:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6ba201:	48 3b 45 e8          	cmp    -0x18(%rbp),%rax
  6ba205:	74 05                	je     6ba20c <test_no_overflow_long_body+0x9c>
  6ba207:	e9 86 00 00 00       	jmpq   6ba292 <test_no_overflow_long_body+0x122>
  6ba20c:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
  6ba213:	00 
  6ba214:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  6ba218:	48 3b 45 d8          	cmp    -0x28(%rbp),%rax
  6ba21c:	73 3d                	jae    6ba25b <test_no_overflow_long_body+0xeb>
  6ba21e:	c6 45 ff 61          	movb   $0x61,-0x1(%rbp)
  6ba222:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
  6ba226:	48 be a8 b7 71 00 00 	movabs $0x71b7a8,%rsi
  6ba22d:	00 00 00 
  6ba230:	48 8d 55 ff          	lea    -0x1(%rbp),%rdx
  6ba234:	b9 01 00 00 00       	mov    $0x1,%ecx
  6ba239:	e8 d2 52 ff ff       	callq  6af510 <http_parser_execute>
  6ba23e:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  6ba242:	48 83 7d f0 01       	cmpq   $0x1,-0x10(%rbp)
  6ba247:	74 02                	je     6ba24b <test_no_overflow_long_body+0xdb>
  6ba249:	eb 47                	jmp    6ba292 <test_no_overflow_long_body+0x122>
  6ba24b:	eb 00                	jmp    6ba24d <test_no_overflow_long_body+0xdd>
  6ba24d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  6ba251:	48 83 c0 01          	add    $0x1,%rax
  6ba255:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  6ba259:	eb b9                	jmp    6ba214 <test_no_overflow_long_body+0xa4>
  6ba25b:	48 8d 95 00 f4 ff ff 	lea    -0xc00(%rbp),%rdx
  6ba262:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  6ba266:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
  6ba26a:	48 be a8 b7 71 00 00 	movabs $0x71b7a8,%rsi
  6ba271:	00 00 00 
  6ba274:	e8 97 52 ff ff       	callq  6af510 <http_parser_execute>
  6ba279:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  6ba27d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6ba281:	48 3b 45 e8          	cmp    -0x18(%rbp),%rax
  6ba285:	74 02                	je     6ba289 <test_no_overflow_long_body+0x119>
  6ba287:	eb 09                	jmp    6ba292 <test_no_overflow_long_body+0x122>
  6ba289:	48 81 c4 00 0c 00 00 	add    $0xc00,%rsp
  6ba290:	5d                   	pop    %rbp
  6ba291:	c3                   	retq   
  6ba292:	48 8b 3c 25 00 b8 71 	mov    0x71b800,%rdi
  6ba299:	00 
  6ba29a:	8b 45 f8             	mov    -0x8(%rbp),%eax
  6ba29d:	48 ba 3d 31 20 00 00 	movabs $0x20313d,%rdx
  6ba2a4:	00 00 00 
  6ba2a7:	48 b9 0a 6e 20 00 00 	movabs $0x206e0a,%rcx
  6ba2ae:	00 00 00 
  6ba2b1:	83 f8 00             	cmp    $0x0,%eax
  6ba2b4:	48 0f 45 d1          	cmovne %rcx,%rdx
  6ba2b8:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  6ba2bc:	48 be b2 3c 20 00 00 	movabs $0x203cb2,%rsi
  6ba2c3:	00 00 00 
  6ba2c6:	b0 00                	mov    $0x0,%al
  6ba2c8:	e8 e3 16 00 00       	callq  6bb9b0 <fprintf@plt>
  6ba2cd:	e8 ee 16 00 00       	callq  6bb9c0 <abort@plt>
  6ba2d2:	cc                   	int3   
  6ba2d3:	cc                   	int3   
  6ba2d4:	cc                   	int3   
  6ba2d5:	cc                   	int3   
  6ba2d6:	cc                   	int3   
  6ba2d7:	cc                   	int3   
  6ba2d8:	cc                   	int3   
  6ba2d9:	cc                   	int3   
  6ba2da:	cc                   	int3   
  6ba2db:	cc                   	int3   
  6ba2dc:	cc                   	int3   
  6ba2dd:	cc                   	int3   
  6ba2de:	cc                   	int3   
  6ba2df:	cc                   	int3   

00000000006ba2e0 <test_multiple3>:
  6ba2e0:	55                   	push   %rbp
  6ba2e1:	48 89 e5             	mov    %rsp,%rbp
  6ba2e4:	41 56                	push   %r14
  6ba2e6:	53                   	push   %rbx
  6ba2e7:	48 83 ec 40          	sub    $0x40,%rsp
  6ba2eb:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  6ba2ef:	48 89 75 c8          	mov    %rsi,-0x38(%rbp)
  6ba2f3:	48 89 55 d0          	mov    %rdx,-0x30(%rbp)
  6ba2f7:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
  6ba2fb:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  6ba2ff:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
  6ba303:	bf 03 00 00 00       	mov    $0x3,%edi
  6ba308:	31 c0                	xor    %eax,%eax
  6ba30a:	e8 c1 e4 ff ff       	callq  6b87d0 <count_parsed_messages>
  6ba30f:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  6ba312:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  6ba316:	48 8b 78 08          	mov    0x8(%rax),%rdi
  6ba31a:	e8 c1 16 00 00       	callq  6bb9e0 <strlen@plt>
  6ba31f:	48 89 c3             	mov    %rax,%rbx
  6ba322:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6ba326:	48 8b 78 08          	mov    0x8(%rax),%rdi
  6ba32a:	e8 b1 16 00 00       	callq  6bb9e0 <strlen@plt>
  6ba32f:	48 01 c3             	add    %rax,%rbx
  6ba332:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  6ba336:	48 8b 78 08          	mov    0x8(%rax),%rdi
  6ba33a:	e8 a1 16 00 00       	callq  6bb9e0 <strlen@plt>
  6ba33f:	48 8d 4c 18 01       	lea    0x1(%rax,%rbx,1),%rcx
  6ba344:	48 89 65 c0          	mov    %rsp,-0x40(%rbp)
  6ba348:	48 8d 44 18 10       	lea    0x10(%rax,%rbx,1),%rax
  6ba34d:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  6ba351:	48 89 e3             	mov    %rsp,%rbx
  6ba354:	48 29 c3             	sub    %rax,%rbx
  6ba357:	48 89 dc             	mov    %rbx,%rsp
  6ba35a:	48 89 4d b8          	mov    %rcx,-0x48(%rbp)
  6ba35e:	c6 03 00             	movb   $0x0,(%rbx)
  6ba361:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  6ba365:	48 8b 70 08          	mov    0x8(%rax),%rsi
  6ba369:	48 89 df             	mov    %rbx,%rdi
  6ba36c:	e8 bf 16 00 00       	callq  6bba30 <strcat@plt>
  6ba371:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6ba375:	48 8b 70 08          	mov    0x8(%rax),%rsi
  6ba379:	48 89 df             	mov    %rbx,%rdi
  6ba37c:	e8 af 16 00 00       	callq  6bba30 <strcat@plt>
  6ba381:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  6ba385:	48 8b 70 08          	mov    0x8(%rax),%rsi
  6ba389:	48 89 df             	mov    %rbx,%rdi
  6ba38c:	e8 9f 16 00 00       	callq  6bba30 <strcat@plt>
  6ba391:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  6ba395:	8b 78 10             	mov    0x10(%rax),%edi
  6ba398:	e8 33 d7 ff ff       	callq  6b7ad0 <parser_init>
  6ba39d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  6ba3a1:	83 b8 c0 00 01 00 00 	cmpl   $0x0,0x100c0(%rax)
  6ba3a8:	75 1a                	jne    6ba3c4 <test_multiple3+0xe4>
  6ba3aa:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6ba3ae:	83 b8 c0 00 01 00 00 	cmpl   $0x0,0x100c0(%rax)
  6ba3b5:	75 0d                	jne    6ba3c4 <test_multiple3+0xe4>
  6ba3b7:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  6ba3bb:	83 b8 c0 00 01 00 00 	cmpl   $0x0,0x100c0(%rax)
  6ba3c2:	74 18                	je     6ba3dc <test_multiple3+0xfc>
  6ba3c4:	8b 04 25 88 b3 6c 00 	mov    0x6cb388,%eax
  6ba3cb:	25 ff ff ff bf       	and    $0xbfffffff,%eax
  6ba3d0:	0d 00 00 00 40       	or     $0x40000000,%eax
  6ba3d5:	89 04 25 88 b3 6c 00 	mov    %eax,0x6cb388
  6ba3dc:	48 89 df             	mov    %rbx,%rdi
  6ba3df:	e8 fc 15 00 00       	callq  6bb9e0 <strlen@plt>
  6ba3e4:	48 89 df             	mov    %rbx,%rdi
  6ba3e7:	48 89 c6             	mov    %rax,%rsi
  6ba3ea:	e8 31 d7 ff ff       	callq  6b7b20 <parse>
  6ba3ef:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  6ba3f3:	8b 04 25 9c b3 6c 00 	mov    0x6cb39c,%eax
  6ba3fa:	c1 e8 1f             	shr    $0x1f,%eax
  6ba3fd:	83 f8 00             	cmp    $0x0,%eax
  6ba400:	74 21                	je     6ba423 <test_multiple3+0x143>
  6ba402:	48 8b 75 d8          	mov    -0x28(%rbp),%rsi
  6ba406:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  6ba40a:	4c 8b 45 c8          	mov    -0x38(%rbp),%r8
  6ba40e:	4c 8b 4d d0          	mov    -0x30(%rbp),%r9
  6ba412:	48 89 df             	mov    %rbx,%rdi
  6ba415:	ba 03 00 00 00       	mov    $0x3,%edx
  6ba41a:	b0 00                	mov    $0x0,%al
  6ba41c:	e8 bf e4 ff ff       	callq  6b88e0 <upgrade_message_fix>
  6ba421:	eb 49                	jmp    6ba46c <test_multiple3+0x18c>
  6ba423:	4c 8b 75 d8          	mov    -0x28(%rbp),%r14
  6ba427:	48 89 df             	mov    %rbx,%rdi
  6ba42a:	e8 b1 15 00 00       	callq  6bb9e0 <strlen@plt>
  6ba42f:	49 39 c6             	cmp    %rax,%r14
  6ba432:	74 11                	je     6ba445 <test_multiple3+0x165>
  6ba434:	48 8b 75 d8          	mov    -0x28(%rbp),%rsi
  6ba438:	48 89 df             	mov    %rbx,%rdi
  6ba43b:	e8 a0 ed ff ff       	callq  6b91e0 <print_error>
  6ba440:	e8 7b 15 00 00       	callq  6bb9c0 <abort@plt>
  6ba445:	31 ff                	xor    %edi,%edi
  6ba447:	31 f6                	xor    %esi,%esi
  6ba449:	e8 d2 d6 ff ff       	callq  6b7b20 <parse>
  6ba44e:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  6ba452:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
  6ba457:	74 11                	je     6ba46a <test_multiple3+0x18a>
  6ba459:	48 8b 75 d8          	mov    -0x28(%rbp),%rsi
  6ba45d:	48 89 df             	mov    %rbx,%rdi
  6ba460:	e8 7b ed ff ff       	callq  6b91e0 <print_error>
  6ba465:	e8 56 15 00 00       	callq  6bb9c0 <abort@plt>
  6ba46a:	eb 00                	jmp    6ba46c <test_multiple3+0x18c>
  6ba46c:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6ba46f:	3b 04 25 98 b7 71 00 	cmp    0x71b798,%eax
  6ba476:	74 25                	je     6ba49d <test_multiple3+0x1bd>
  6ba478:	48 8b 3c 25 00 b8 71 	mov    0x71b800,%rdi
  6ba47f:	00 
  6ba480:	8b 14 25 98 b7 71 00 	mov    0x71b798,%edx
  6ba487:	48 be 13 71 20 00 00 	movabs $0x207113,%rsi
  6ba48e:	00 00 00 
  6ba491:	b0 00                	mov    $0x0,%al
  6ba493:	e8 18 15 00 00       	callq  6bb9b0 <fprintf@plt>
  6ba498:	e8 23 15 00 00       	callq  6bb9c0 <abort@plt>
  6ba49d:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  6ba4a1:	31 ff                	xor    %edi,%edi
  6ba4a3:	31 f6                	xor    %esi,%esi
  6ba4a5:	e8 16 d8 ff ff       	callq  6b7cc0 <message_eq>
  6ba4aa:	83 f8 00             	cmp    $0x0,%eax
  6ba4ad:	75 05                	jne    6ba4b4 <test_multiple3+0x1d4>
  6ba4af:	e8 0c 15 00 00       	callq  6bb9c0 <abort@plt>
  6ba4b4:	83 7d e4 01          	cmpl   $0x1,-0x1c(%rbp)
  6ba4b8:	7e 1a                	jle    6ba4d4 <test_multiple3+0x1f4>
  6ba4ba:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  6ba4be:	bf 01 00 00 00       	mov    $0x1,%edi
  6ba4c3:	31 f6                	xor    %esi,%esi
  6ba4c5:	e8 f6 d7 ff ff       	callq  6b7cc0 <message_eq>
  6ba4ca:	83 f8 00             	cmp    $0x0,%eax
  6ba4cd:	75 05                	jne    6ba4d4 <test_multiple3+0x1f4>
  6ba4cf:	e8 ec 14 00 00       	callq  6bb9c0 <abort@plt>
  6ba4d4:	83 7d e4 02          	cmpl   $0x2,-0x1c(%rbp)
  6ba4d8:	7e 1a                	jle    6ba4f4 <test_multiple3+0x214>
  6ba4da:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
  6ba4de:	bf 02 00 00 00       	mov    $0x2,%edi
  6ba4e3:	31 f6                	xor    %esi,%esi
  6ba4e5:	e8 d6 d7 ff ff       	callq  6b7cc0 <message_eq>
  6ba4ea:	83 f8 00             	cmp    $0x0,%eax
  6ba4ed:	75 05                	jne    6ba4f4 <test_multiple3+0x214>
  6ba4ef:	e8 cc 14 00 00       	callq  6bb9c0 <abort@plt>
  6ba4f4:	48 8b 65 c0          	mov    -0x40(%rbp),%rsp
  6ba4f8:	48 8d 65 f0          	lea    -0x10(%rbp),%rsp
  6ba4fc:	5b                   	pop    %rbx
  6ba4fd:	41 5e                	pop    %r14
  6ba4ff:	5d                   	pop    %rbp
  6ba500:	c3                   	retq   
  6ba501:	cc                   	int3   
  6ba502:	cc                   	int3   
  6ba503:	cc                   	int3   
  6ba504:	cc                   	int3   
  6ba505:	cc                   	int3   
  6ba506:	cc                   	int3   
  6ba507:	cc                   	int3   
  6ba508:	cc                   	int3   
  6ba509:	cc                   	int3   
  6ba50a:	cc                   	int3   
  6ba50b:	cc                   	int3   
  6ba50c:	cc                   	int3   
  6ba50d:	cc                   	int3   
  6ba50e:	cc                   	int3   
  6ba50f:	cc                   	int3   

00000000006ba510 <test_scan>:
  6ba510:	55                   	push   %rbp
  6ba511:	48 89 e5             	mov    %rsp,%rbp
  6ba514:	48 81 ec 60 00 05 00 	sub    $0x50060,%rsp
  6ba51b:	48 89 7d c0          	mov    %rdi,-0x40(%rbp)
  6ba51f:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
  6ba523:	48 89 55 b8          	mov    %rdx,-0x48(%rbp)
  6ba527:	48 8d bd a0 bf fe ff 	lea    -0x14060(%rbp),%rdi
  6ba52e:	31 f6                	xor    %esi,%esi
  6ba530:	ba 00 40 01 00       	mov    $0x14000,%edx
  6ba535:	e8 66 15 00 00       	callq  6bbaa0 <memset@plt>
  6ba53a:	48 8d bd a0 7f fd ff 	lea    -0x28060(%rbp),%rdi
  6ba541:	31 f6                	xor    %esi,%esi
  6ba543:	ba 00 40 01 00       	mov    $0x14000,%edx
  6ba548:	e8 53 15 00 00       	callq  6bbaa0 <memset@plt>
  6ba54d:	48 8d bd a0 ff fa ff 	lea    -0x50060(%rbp),%rdi
  6ba554:	31 f6                	xor    %esi,%esi
  6ba556:	ba 00 40 01 00       	mov    $0x14000,%edx
  6ba55b:	e8 40 15 00 00       	callq  6bbaa0 <memset@plt>
  6ba560:	48 8d bd a0 3f fc ff 	lea    -0x3c060(%rbp),%rdi
  6ba567:	31 f6                	xor    %esi,%esi
  6ba569:	ba 00 40 01 00       	mov    $0x14000,%edx
  6ba56e:	e8 2d 15 00 00       	callq  6bbaa0 <memset@plt>
  6ba573:	48 8d bd a0 bf fe ff 	lea    -0x14060(%rbp),%rdi
  6ba57a:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  6ba57e:	48 8b 70 08          	mov    0x8(%rax),%rsi
  6ba582:	e8 a9 14 00 00       	callq  6bba30 <strcat@plt>
  6ba587:	48 8d bd a0 bf fe ff 	lea    -0x14060(%rbp),%rdi
  6ba58e:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  6ba592:	48 8b 70 08          	mov    0x8(%rax),%rsi
  6ba596:	e8 95 14 00 00       	callq  6bba30 <strcat@plt>
  6ba59b:	48 8d bd a0 bf fe ff 	lea    -0x14060(%rbp),%rdi
  6ba5a2:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  6ba5a6:	48 8b 70 08          	mov    0x8(%rax),%rsi
  6ba5aa:	e8 81 14 00 00       	callq  6bba30 <strcat@plt>
  6ba5af:	48 8d bd a0 bf fe ff 	lea    -0x14060(%rbp),%rdi
  6ba5b6:	e8 25 14 00 00       	callq  6bb9e0 <strlen@plt>
  6ba5bb:	89 45 e0             	mov    %eax,-0x20(%rbp)
  6ba5be:	8b 45 e0             	mov    -0x20(%rbp),%eax
  6ba5c1:	83 e8 01             	sub    $0x1,%eax
  6ba5c4:	c1 e0 01             	shl    $0x1,%eax
  6ba5c7:	8b 4d e0             	mov    -0x20(%rbp),%ecx
  6ba5ca:	83 e9 02             	sub    $0x2,%ecx
  6ba5cd:	0f af c1             	imul   %ecx,%eax
  6ba5d0:	b9 02 00 00 00       	mov    $0x2,%ecx
  6ba5d5:	99                   	cltd   
  6ba5d6:	f7 f9                	idiv   %ecx
  6ba5d8:	89 45 ac             	mov    %eax,-0x54(%rbp)
  6ba5db:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
  6ba5e2:	48 8b 75 c0          	mov    -0x40(%rbp),%rsi
  6ba5e6:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
  6ba5ea:	48 8b 4d b8          	mov    -0x48(%rbp),%rcx
  6ba5ee:	bf 03 00 00 00       	mov    $0x3,%edi
  6ba5f3:	b0 00                	mov    $0x0,%al
  6ba5f5:	e8 d6 e1 ff ff       	callq  6b87d0 <count_parsed_messages>
  6ba5fa:	89 45 e8             	mov    %eax,-0x18(%rbp)
  6ba5fd:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
  6ba604:	83 7d ec 02          	cmpl   $0x2,-0x14(%rbp)
  6ba608:	0f 8d cc 03 00 00    	jge    6ba9da <test_scan+0x4ca>
  6ba60e:	c7 45 fc 02 00 00 00 	movl   $0x2,-0x4(%rbp)
  6ba615:	8b 45 fc             	mov    -0x4(%rbp),%eax
  6ba618:	3b 45 e0             	cmp    -0x20(%rbp),%eax
  6ba61b:	0f 8d a9 03 00 00    	jge    6ba9ca <test_scan+0x4ba>
  6ba621:	c7 45 f8 01 00 00 00 	movl   $0x1,-0x8(%rbp)
  6ba628:	8b 45 f8             	mov    -0x8(%rbp),%eax
  6ba62b:	3b 45 fc             	cmp    -0x4(%rbp),%eax
  6ba62e:	0f 8d 86 03 00 00    	jge    6ba9ba <test_scan+0x4aa>
  6ba634:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6ba637:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
  6ba63c:	99                   	cltd   
  6ba63d:	f7 f9                	idiv   %ecx
  6ba63f:	83 fa 00             	cmp    $0x0,%edx
  6ba642:	75 3c                	jne    6ba680 <test_scan+0x170>
  6ba644:	f3 0f 2a 45 e4       	cvtsi2ssl -0x1c(%rbp),%xmm0
  6ba649:	f3 0f 10 0d d3 62 b4 	movss  -0x4b9d2d(%rip),%xmm1        # 200924 <_IO_stdin_used+0x4>
  6ba650:	ff 
  6ba651:	f3 0f 59 c8          	mulss  %xmm0,%xmm1
  6ba655:	f3 0f 2a 45 ac       	cvtsi2ssl -0x54(%rbp),%xmm0
  6ba65a:	f3 0f 5e c8          	divss  %xmm0,%xmm1
  6ba65e:	f3 0f 5a c1          	cvtss2sd %xmm1,%xmm0
  6ba662:	48 bf d7 82 20 00 00 	movabs $0x2082d7,%rdi
  6ba669:	00 00 00 
  6ba66c:	b0 01                	mov    $0x1,%al
  6ba66e:	e8 7d 13 00 00       	callq  6bb9f0 <printf@plt>
  6ba673:	48 8b 3c 25 08 b8 71 	mov    0x71b808,%rdi
  6ba67a:	00 
  6ba67b:	e8 c0 13 00 00       	callq  6bba40 <fflush@plt>
  6ba680:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  6ba683:	83 c0 01             	add    $0x1,%eax
  6ba686:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  6ba689:	83 7d ec 00          	cmpl   $0x0,-0x14(%rbp)
  6ba68d:	74 07                	je     6ba696 <test_scan+0x186>
  6ba68f:	bf 02 00 00 00       	mov    $0x2,%edi
  6ba694:	eb 07                	jmp    6ba69d <test_scan+0x18d>
  6ba696:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  6ba69a:	8b 78 10             	mov    0x10(%rax),%edi
  6ba69d:	e8 2e d4 ff ff       	callq  6b7ad0 <parser_init>
  6ba6a2:	48 63 45 f8          	movslq -0x8(%rbp),%rax
  6ba6a6:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  6ba6aa:	48 8d bd a0 7f fd ff 	lea    -0x28060(%rbp),%rdi
  6ba6b1:	48 8d 95 a0 bf fe ff 	lea    -0x14060(%rbp),%rdx
  6ba6b8:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  6ba6bc:	be 00 40 01 00       	mov    $0x14000,%esi
  6ba6c1:	e8 aa c1 ff ff       	callq  6b6870 <strlncpy>
  6ba6c6:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6ba6ca:	c6 84 05 a0 7f fd ff 	movb   $0x0,-0x28060(%rbp,%rax,1)
  6ba6d1:	00 
  6ba6d2:	8b 45 fc             	mov    -0x4(%rbp),%eax
  6ba6d5:	2b 45 f8             	sub    -0x8(%rbp),%eax
  6ba6d8:	48 98                	cltq   
  6ba6da:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  6ba6de:	48 8d bd a0 ff fa ff 	lea    -0x50060(%rbp),%rdi
  6ba6e5:	48 8d 95 a0 bf fe ff 	lea    -0x14060(%rbp),%rdx
  6ba6ec:	48 63 45 f8          	movslq -0x8(%rbp),%rax
  6ba6f0:	48 01 c2             	add    %rax,%rdx
  6ba6f3:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
  6ba6f7:	be 00 40 01 00       	mov    $0x14000,%esi
  6ba6fc:	e8 6f c1 ff ff       	callq  6b6870 <strlncpy>
  6ba701:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  6ba705:	c6 84 05 a0 ff fa ff 	movb   $0x0,-0x50060(%rbp,%rax,1)
  6ba70c:	00 
  6ba70d:	8b 45 e0             	mov    -0x20(%rbp),%eax
  6ba710:	2b 45 fc             	sub    -0x4(%rbp),%eax
  6ba713:	48 98                	cltq   
  6ba715:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  6ba719:	48 8d bd a0 3f fc ff 	lea    -0x3c060(%rbp),%rdi
  6ba720:	48 8d 95 a0 bf fe ff 	lea    -0x14060(%rbp),%rdx
  6ba727:	48 63 45 fc          	movslq -0x4(%rbp),%rax
  6ba72b:	48 01 c2             	add    %rax,%rdx
  6ba72e:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
  6ba732:	be 00 40 01 00       	mov    $0x14000,%esi
  6ba737:	e8 34 c1 ff ff       	callq  6b6870 <strlncpy>
  6ba73c:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6ba740:	c6 84 05 a0 3f fc ff 	movb   $0x0,-0x3c060(%rbp,%rax,1)
  6ba747:	00 
  6ba748:	83 3c 25 98 b7 71 00 	cmpl   $0x0,0x71b798
  6ba74f:	00 
  6ba750:	75 02                	jne    6ba754 <test_scan+0x244>
  6ba752:	eb 28                	jmp    6ba77c <test_scan+0x26c>
  6ba754:	48 bf e8 44 20 00 00 	movabs $0x2044e8,%rdi
  6ba75b:	00 00 00 
  6ba75e:	48 be e4 81 20 00 00 	movabs $0x2081e4,%rsi
  6ba765:	00 00 00 
  6ba768:	48 b9 f6 4d 20 00 00 	movabs $0x204df6,%rcx
  6ba76f:	00 00 00 
  6ba772:	ba 37 10 00 00       	mov    $0x1037,%edx
  6ba777:	e8 14 12 00 00       	callq  6bb990 <__assert_fail@plt>
  6ba77c:	c7 04 25 5c b4 6d 00 	movl   $0x0,0x6db45c
  6ba783:	00 00 00 00 
  6ba787:	48 8d bd a0 7f fd ff 	lea    -0x28060(%rbp),%rdi
  6ba78e:	48 8b 75 d8          	mov    -0x28(%rbp),%rsi
  6ba792:	e8 89 d3 ff ff       	callq  6b7b20 <parse>
  6ba797:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  6ba79b:	83 3c 25 5c b4 6d 00 	cmpl   $0x0,0x6db45c
  6ba7a2:	00 
  6ba7a3:	75 22                	jne    6ba7c7 <test_scan+0x2b7>
  6ba7a5:	8b 04 25 8c b3 6c 00 	mov    0x6cb38c,%eax
  6ba7ac:	48 3b 45 f0          	cmp    -0x10(%rbp),%rax
  6ba7b0:	74 15                	je     6ba7c7 <test_scan+0x2b7>
  6ba7b2:	48 8d bd a0 7f fd ff 	lea    -0x28060(%rbp),%rdi
  6ba7b9:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
  6ba7bd:	e8 1e ea ff ff       	callq  6b91e0 <print_error>
  6ba7c2:	e9 2b 02 00 00       	jmpq   6ba9f2 <test_scan+0x4e2>
  6ba7c7:	8b 04 25 9c b3 6c 00 	mov    0x6cb39c,%eax
  6ba7ce:	c1 e8 1f             	shr    $0x1f,%eax
  6ba7d1:	83 f8 00             	cmp    $0x0,%eax
  6ba7d4:	74 05                	je     6ba7db <test_scan+0x2cb>
  6ba7d6:	e9 cd 00 00 00       	jmpq   6ba8a8 <test_scan+0x398>
  6ba7db:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6ba7df:	48 3b 45 d8          	cmp    -0x28(%rbp),%rax
  6ba7e3:	74 15                	je     6ba7fa <test_scan+0x2ea>
  6ba7e5:	48 8d bd a0 7f fd ff 	lea    -0x28060(%rbp),%rdi
  6ba7ec:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
  6ba7f0:	e8 eb e9 ff ff       	callq  6b91e0 <print_error>
  6ba7f5:	e9 f8 01 00 00       	jmpq   6ba9f2 <test_scan+0x4e2>
  6ba7fa:	48 8d bd a0 ff fa ff 	lea    -0x50060(%rbp),%rdi
  6ba801:	48 8b 75 d0          	mov    -0x30(%rbp),%rsi
  6ba805:	e8 16 d3 ff ff       	callq  6b7b20 <parse>
  6ba80a:	48 03 45 f0          	add    -0x10(%rbp),%rax
  6ba80e:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  6ba812:	8b 04 25 9c b3 6c 00 	mov    0x6cb39c,%eax
  6ba819:	c1 e8 1f             	shr    $0x1f,%eax
  6ba81c:	83 f8 00             	cmp    $0x0,%eax
  6ba81f:	74 05                	je     6ba826 <test_scan+0x316>
  6ba821:	e9 82 00 00 00       	jmpq   6ba8a8 <test_scan+0x398>
  6ba826:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6ba82a:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  6ba82e:	48 03 4d d0          	add    -0x30(%rbp),%rcx
  6ba832:	48 39 c8             	cmp    %rcx,%rax
  6ba835:	74 15                	je     6ba84c <test_scan+0x33c>
  6ba837:	48 8d bd a0 ff fa ff 	lea    -0x50060(%rbp),%rdi
  6ba83e:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
  6ba842:	e8 99 e9 ff ff       	callq  6b91e0 <print_error>
  6ba847:	e9 a6 01 00 00       	jmpq   6ba9f2 <test_scan+0x4e2>
  6ba84c:	48 8d bd a0 3f fc ff 	lea    -0x3c060(%rbp),%rdi
  6ba853:	48 8b 75 c8          	mov    -0x38(%rbp),%rsi
  6ba857:	e8 c4 d2 ff ff       	callq  6b7b20 <parse>
  6ba85c:	48 03 45 f0          	add    -0x10(%rbp),%rax
  6ba860:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  6ba864:	8b 04 25 9c b3 6c 00 	mov    0x6cb39c,%eax
  6ba86b:	c1 e8 1f             	shr    $0x1f,%eax
  6ba86e:	83 f8 00             	cmp    $0x0,%eax
  6ba871:	74 02                	je     6ba875 <test_scan+0x365>
  6ba873:	eb 33                	jmp    6ba8a8 <test_scan+0x398>
  6ba875:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6ba879:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  6ba87d:	48 03 4d d0          	add    -0x30(%rbp),%rcx
  6ba881:	48 03 4d c8          	add    -0x38(%rbp),%rcx
  6ba885:	48 39 c8             	cmp    %rcx,%rax
  6ba888:	74 15                	je     6ba89f <test_scan+0x38f>
  6ba88a:	48 8d bd a0 3f fc ff 	lea    -0x3c060(%rbp),%rdi
  6ba891:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
  6ba895:	e8 46 e9 ff ff       	callq  6b91e0 <print_error>
  6ba89a:	e9 53 01 00 00       	jmpq   6ba9f2 <test_scan+0x4e2>
  6ba89f:	31 ff                	xor    %edi,%edi
  6ba8a1:	31 f6                	xor    %esi,%esi
  6ba8a3:	e8 78 d2 ff ff       	callq  6b7b20 <parse>
  6ba8a8:	8b 04 25 9c b3 6c 00 	mov    0x6cb39c,%eax
  6ba8af:	c1 e8 1f             	shr    $0x1f,%eax
  6ba8b2:	83 f8 00             	cmp    $0x0,%eax
  6ba8b5:	74 23                	je     6ba8da <test_scan+0x3ca>
  6ba8b7:	48 8d bd a0 bf fe ff 	lea    -0x14060(%rbp),%rdi
  6ba8be:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
  6ba8c2:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  6ba8c6:	4c 8b 45 b0          	mov    -0x50(%rbp),%r8
  6ba8ca:	4c 8b 4d b8          	mov    -0x48(%rbp),%r9
  6ba8ce:	ba 03 00 00 00       	mov    $0x3,%edx
  6ba8d3:	b0 00                	mov    $0x0,%al
  6ba8d5:	e8 06 e0 ff ff       	callq  6b88e0 <upgrade_message_fix>
  6ba8da:	8b 45 e8             	mov    -0x18(%rbp),%eax
  6ba8dd:	3b 04 25 98 b7 71 00 	cmp    0x71b798,%eax
  6ba8e4:	74 28                	je     6ba90e <test_scan+0x3fe>
  6ba8e6:	48 8b 3c 25 00 b8 71 	mov    0x71b800,%rdi
  6ba8ed:	00 
  6ba8ee:	8b 55 e8             	mov    -0x18(%rbp),%edx
  6ba8f1:	8b 0c 25 98 b7 71 00 	mov    0x71b798,%ecx
  6ba8f8:	48 be 9d 29 20 00 00 	movabs $0x20299d,%rsi
  6ba8ff:	00 00 00 
  6ba902:	b0 00                	mov    $0x0,%al
  6ba904:	e8 a7 10 00 00       	callq  6bb9b0 <fprintf@plt>
  6ba909:	e9 e4 00 00 00       	jmpq   6ba9f2 <test_scan+0x4e2>
  6ba90e:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
  6ba912:	31 ff                	xor    %edi,%edi
  6ba914:	31 f6                	xor    %esi,%esi
  6ba916:	e8 a5 d3 ff ff       	callq  6b7cc0 <message_eq>
  6ba91b:	83 f8 00             	cmp    $0x0,%eax
  6ba91e:	75 1e                	jne    6ba93e <test_scan+0x42e>
  6ba920:	48 8b 3c 25 00 b8 71 	mov    0x71b800,%rdi
  6ba927:	00 
  6ba928:	48 be 44 71 20 00 00 	movabs $0x207144,%rsi
  6ba92f:	00 00 00 
  6ba932:	b0 00                	mov    $0x0,%al
  6ba934:	e8 77 10 00 00       	callq  6bb9b0 <fprintf@plt>
  6ba939:	e9 b4 00 00 00       	jmpq   6ba9f2 <test_scan+0x4e2>
  6ba93e:	83 7d e8 01          	cmpl   $0x1,-0x18(%rbp)
  6ba942:	7e 30                	jle    6ba974 <test_scan+0x464>
  6ba944:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
  6ba948:	bf 01 00 00 00       	mov    $0x1,%edi
  6ba94d:	31 f6                	xor    %esi,%esi
  6ba94f:	e8 6c d3 ff ff       	callq  6b7cc0 <message_eq>
  6ba954:	83 f8 00             	cmp    $0x0,%eax
  6ba957:	75 1b                	jne    6ba974 <test_scan+0x464>
  6ba959:	48 8b 3c 25 00 b8 71 	mov    0x71b800,%rdi
  6ba960:	00 
  6ba961:	48 be d4 2d 20 00 00 	movabs $0x202dd4,%rsi
  6ba968:	00 00 00 
  6ba96b:	b0 00                	mov    $0x0,%al
  6ba96d:	e8 3e 10 00 00       	callq  6bb9b0 <fprintf@plt>
  6ba972:	eb 7e                	jmp    6ba9f2 <test_scan+0x4e2>
  6ba974:	83 7d e8 02          	cmpl   $0x2,-0x18(%rbp)
  6ba978:	7e 30                	jle    6ba9aa <test_scan+0x49a>
  6ba97a:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
  6ba97e:	bf 02 00 00 00       	mov    $0x2,%edi
  6ba983:	31 f6                	xor    %esi,%esi
  6ba985:	e8 36 d3 ff ff       	callq  6b7cc0 <message_eq>
  6ba98a:	83 f8 00             	cmp    $0x0,%eax
  6ba98d:	75 1b                	jne    6ba9aa <test_scan+0x49a>
  6ba98f:	48 8b 3c 25 00 b8 71 	mov    0x71b800,%rdi
  6ba996:	00 
  6ba997:	48 be 8d 22 20 00 00 	movabs $0x20228d,%rsi
  6ba99e:	00 00 00 
  6ba9a1:	b0 00                	mov    $0x0,%al
  6ba9a3:	e8 08 10 00 00       	callq  6bb9b0 <fprintf@plt>
  6ba9a8:	eb 48                	jmp    6ba9f2 <test_scan+0x4e2>
  6ba9aa:	eb 00                	jmp    6ba9ac <test_scan+0x49c>
  6ba9ac:	8b 45 f8             	mov    -0x8(%rbp),%eax
  6ba9af:	83 c0 01             	add    $0x1,%eax
  6ba9b2:	89 45 f8             	mov    %eax,-0x8(%rbp)
  6ba9b5:	e9 6e fc ff ff       	jmpq   6ba628 <test_scan+0x118>
  6ba9ba:	eb 00                	jmp    6ba9bc <test_scan+0x4ac>
  6ba9bc:	8b 45 fc             	mov    -0x4(%rbp),%eax
  6ba9bf:	83 c0 01             	add    $0x1,%eax
  6ba9c2:	89 45 fc             	mov    %eax,-0x4(%rbp)
  6ba9c5:	e9 4b fc ff ff       	jmpq   6ba615 <test_scan+0x105>
  6ba9ca:	eb 00                	jmp    6ba9cc <test_scan+0x4bc>
  6ba9cc:	8b 45 ec             	mov    -0x14(%rbp),%eax
  6ba9cf:	83 c0 01             	add    $0x1,%eax
  6ba9d2:	89 45 ec             	mov    %eax,-0x14(%rbp)
  6ba9d5:	e9 2a fc ff ff       	jmpq   6ba604 <test_scan+0xf4>
  6ba9da:	48 bf c5 1f 20 00 00 	movabs $0x201fc5,%rdi
  6ba9e1:	00 00 00 
  6ba9e4:	e8 67 10 00 00       	callq  6bba50 <puts@plt>
  6ba9e9:	48 81 c4 60 00 05 00 	add    $0x50060,%rsp
  6ba9f0:	5d                   	pop    %rbp
  6ba9f1:	c3                   	retq   
  6ba9f2:	48 8b 3c 25 00 b8 71 	mov    0x71b800,%rdi
  6ba9f9:	00 
  6ba9fa:	8b 55 f8             	mov    -0x8(%rbp),%edx
  6ba9fd:	8b 4d fc             	mov    -0x4(%rbp),%ecx
  6baa00:	48 be 80 47 20 00 00 	movabs $0x204780,%rsi
  6baa07:	00 00 00 
  6baa0a:	b0 00                	mov    $0x0,%al
  6baa0c:	e8 9f 0f 00 00       	callq  6bb9b0 <fprintf@plt>
  6baa11:	48 8b 3c 25 00 b8 71 	mov    0x71b800,%rdi
  6baa18:	00 
  6baa19:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  6baa1d:	48 8d 8d a0 7f fd ff 	lea    -0x28060(%rbp),%rcx
  6baa24:	48 be 61 80 20 00 00 	movabs $0x208061,%rsi
  6baa2b:	00 00 00 
  6baa2e:	b0 00                	mov    $0x0,%al
  6baa30:	e8 7b 0f 00 00       	callq  6bb9b0 <fprintf@plt>
  6baa35:	48 8b 3c 25 00 b8 71 	mov    0x71b800,%rdi
  6baa3c:	00 
  6baa3d:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
  6baa41:	48 8d 8d a0 ff fa ff 	lea    -0x50060(%rbp),%rcx
  6baa48:	48 be 90 32 20 00 00 	movabs $0x203290,%rsi
  6baa4f:	00 00 00 
  6baa52:	b0 00                	mov    $0x0,%al
  6baa54:	e8 57 0f 00 00       	callq  6bb9b0 <fprintf@plt>
  6baa59:	48 8b 3c 25 00 b8 71 	mov    0x71b800,%rdi
  6baa60:	00 
  6baa61:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  6baa65:	48 8d 8d a0 3f fc ff 	lea    -0x3c060(%rbp),%rcx
  6baa6c:	48 be 6a 48 20 00 00 	movabs $0x20486a,%rsi
  6baa73:	00 00 00 
  6baa76:	b0 00                	mov    $0x0,%al
  6baa78:	e8 33 0f 00 00       	callq  6bb9b0 <fprintf@plt>
  6baa7d:	e8 3e 0f 00 00       	callq  6bb9c0 <abort@plt>
  6baa82:	cc                   	int3   
  6baa83:	cc                   	int3   
  6baa84:	cc                   	int3   
  6baa85:	cc                   	int3   
  6baa86:	cc                   	int3   
  6baa87:	cc                   	int3   
  6baa88:	cc                   	int3   
  6baa89:	cc                   	int3   
  6baa8a:	cc                   	int3   
  6baa8b:	cc                   	int3   
  6baa8c:	cc                   	int3   
  6baa8d:	cc                   	int3   
  6baa8e:	cc                   	int3   
  6baa8f:	cc                   	int3   

00000000006baa90 <create_large_chunked_message>:
  6baa90:	55                   	push   %rbp
  6baa91:	48 89 e5             	mov    %rsp,%rbp
  6baa94:	48 83 ec 40          	sub    $0x40,%rsp
  6baa98:	89 7d e4             	mov    %edi,-0x1c(%rbp)
  6baa9b:	48 89 75 c8          	mov    %rsi,-0x38(%rbp)
  6baa9f:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
  6baaa6:	00 
  6baaa7:	48 8b 7d c8          	mov    -0x38(%rbp),%rdi
  6baaab:	e8 30 0f 00 00       	callq  6bb9e0 <strlen@plt>
  6baab0:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  6baab4:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6baab8:	69 4d e4 07 04 00 00 	imul   $0x407,-0x1c(%rbp),%ecx
  6baabf:	48 63 c9             	movslq %ecx,%rcx
  6baac2:	48 01 c8             	add    %rcx,%rax
  6baac5:	48 83 c0 06          	add    $0x6,%rax
  6baac9:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  6baacd:	48 8b 7d d0          	mov    -0x30(%rbp),%rdi
  6baad1:	e8 8a 0f 00 00       	callq  6bba60 <malloc@plt>
  6baad6:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  6baada:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  6baade:	48 8b 75 c8          	mov    -0x38(%rbp),%rsi
  6baae2:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  6baae6:	e8 c5 0f 00 00       	callq  6bbab0 <memcpy@plt>
  6baaeb:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6baaef:	48 03 45 f8          	add    -0x8(%rbp),%rax
  6baaf3:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6baaf7:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
  6baafe:	8b 45 f4             	mov    -0xc(%rbp),%eax
  6bab01:	3b 45 e4             	cmp    -0x1c(%rbp),%eax
  6bab04:	7d 77                	jge    6bab7d <create_large_chunked_message+0xed>
  6bab06:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  6bab0a:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  6bab0e:	8b 14 25 a7 68 20 00 	mov    0x2068a7,%edx
  6bab15:	89 14 08             	mov    %edx,(%rax,%rcx,1)
  6bab18:	8a 14 25 ab 68 20 00 	mov    0x2068ab,%dl
  6bab1f:	88 54 08 04          	mov    %dl,0x4(%rax,%rcx,1)
  6bab23:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6bab27:	48 83 c0 05          	add    $0x5,%rax
  6bab2b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6bab2f:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  6bab33:	48 03 7d f8          	add    -0x8(%rbp),%rdi
  6bab37:	be 43 00 00 00       	mov    $0x43,%esi
  6bab3c:	ba 00 04 00 00       	mov    $0x400,%edx
  6bab41:	e8 5a 0f 00 00       	callq  6bbaa0 <memset@plt>
  6bab46:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6bab4a:	48 05 00 04 00 00    	add    $0x400,%rax
  6bab50:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6bab54:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  6bab58:	48 03 7d f8          	add    -0x8(%rbp),%rdi
  6bab5c:	be 34 26 20 00       	mov    $0x202634,%esi
  6bab61:	e8 0a 0f 00 00       	callq  6bba70 <strcpy@plt>
  6bab66:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6bab6a:	48 83 c0 02          	add    $0x2,%rax
  6bab6e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6bab72:	8b 45 f4             	mov    -0xc(%rbp),%eax
  6bab75:	83 c0 01             	add    $0x1,%eax
  6bab78:	89 45 f4             	mov    %eax,-0xc(%rbp)
  6bab7b:	eb 81                	jmp    6baafe <create_large_chunked_message+0x6e>
  6bab7d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  6bab81:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  6bab85:	8b 14 25 a5 77 20 00 	mov    0x2077a5,%edx
  6bab8c:	89 14 08             	mov    %edx,(%rax,%rcx,1)
  6bab8f:	66 8b 14 25 a9 77 20 	mov    0x2077a9,%dx
  6bab96:	00 
  6bab97:	66 89 54 08 04       	mov    %dx,0x4(%rax,%rcx,1)
  6bab9c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6baba0:	48 83 c0 06          	add    $0x6,%rax
  6baba4:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6baba8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6babac:	48 3b 45 d0          	cmp    -0x30(%rbp),%rax
  6babb0:	75 02                	jne    6babb4 <create_large_chunked_message+0x124>
  6babb2:	eb 28                	jmp    6babdc <create_large_chunked_message+0x14c>
  6babb4:	48 bf 29 3f 20 00 00 	movabs $0x203f29,%rdi
  6babbb:	00 00 00 
  6babbe:	48 be e4 81 20 00 00 	movabs $0x2081e4,%rsi
  6babc5:	00 00 00 
  6babc8:	48 b9 37 26 20 00 00 	movabs $0x202637,%rcx
  6babcf:	00 00 00 
  6babd2:	ba 9d 10 00 00       	mov    $0x109d,%edx
  6babd7:	e8 b4 0d 00 00       	callq  6bb990 <__assert_fail@plt>
  6babdc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  6babe0:	48 83 c4 40          	add    $0x40,%rsp
  6babe4:	5d                   	pop    %rbp
  6babe5:	c3                   	retq   
  6babe6:	cc                   	int3   
  6babe7:	cc                   	int3   
  6babe8:	cc                   	int3   
  6babe9:	cc                   	int3   
  6babea:	cc                   	int3   
  6babeb:	cc                   	int3   
  6babec:	cc                   	int3   
  6babed:	cc                   	int3   
  6babee:	cc                   	int3   
  6babef:	cc                   	int3   

00000000006babf0 <test_message_pause>:
  6babf0:	55                   	push   %rbp
  6babf1:	48 89 e5             	mov    %rsp,%rbp
  6babf4:	48 83 ec 20          	sub    $0x20,%rsp
  6babf8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  6babfc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6bac00:	48 8b 40 08          	mov    0x8(%rax),%rax
  6bac04:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  6bac08:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6bac0c:	48 8b 78 08          	mov    0x8(%rax),%rdi
  6bac10:	e8 cb 0d 00 00       	callq  6bb9e0 <strlen@plt>
  6bac15:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  6bac19:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6bac1d:	8b 78 10             	mov    0x10(%rax),%edi
  6bac20:	e8 ab ce ff ff       	callq  6b7ad0 <parser_init>
  6bac25:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6bac29:	83 b8 c0 00 01 00 00 	cmpl   $0x0,0x100c0(%rax)
  6bac30:	74 18                	je     6bac4a <test_message_pause+0x5a>
  6bac32:	8b 04 25 88 b3 6c 00 	mov    0x6cb388,%eax
  6bac39:	25 ff ff ff bf       	and    $0xbfffffff,%eax
  6bac3e:	0d 00 00 00 40       	or     $0x40000000,%eax
  6bac43:	89 04 25 88 b3 6c 00 	mov    %eax,0x6cb388
  6bac4a:	eb 00                	jmp    6bac4c <test_message_pause+0x5c>
  6bac4c:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
  6bac50:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
  6bac54:	e8 87 cf ff ff       	callq  6b7be0 <parse_pause>
  6bac59:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  6bac5d:	83 3c 25 60 b4 6d 00 	cmpl   $0x0,0x6db460
  6bac64:	00 
  6bac65:	74 32                	je     6bac99 <test_message_pause+0xa9>
  6bac67:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6bac6b:	48 83 b8 90 00 01 00 	cmpq   $0x0,0x10090(%rax)
  6bac72:	00 
  6bac73:	74 24                	je     6bac99 <test_message_pause+0xa9>
  6bac75:	8b 04 25 9c b3 6c 00 	mov    0x6cb39c,%eax
  6bac7c:	c1 e8 1f             	shr    $0x1f,%eax
  6bac7f:	83 f8 00             	cmp    $0x0,%eax
  6bac82:	74 15                	je     6bac99 <test_message_pause+0xa9>
  6bac84:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  6bac88:	48 03 45 f0          	add    -0x10(%rbp),%rax
  6bac8c:	48 89 04 25 40 b4 6d 	mov    %rax,0x6db440
  6bac93:	00 
  6bac94:	e9 d6 00 00 00       	jmpq   6bad6f <test_message_pause+0x17f>
  6bac99:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6bac9d:	48 3b 45 e8          	cmp    -0x18(%rbp),%rax
  6baca1:	73 55                	jae    6bacf8 <test_message_pause+0x108>
  6baca3:	8b 04 25 9c b3 6c 00 	mov    0x6cb39c,%eax
  6bacaa:	c1 e8 18             	shr    $0x18,%eax
  6bacad:	83 e0 7f             	and    $0x7f,%eax
  6bacb0:	83 f8 1e             	cmp    $0x1e,%eax
  6bacb3:	75 05                	jne    6bacba <test_message_pause+0xca>
  6bacb5:	e9 f3 00 00 00       	jmpq   6badad <test_message_pause+0x1bd>
  6bacba:	8b 04 25 9c b3 6c 00 	mov    0x6cb39c,%eax
  6bacc1:	c1 e8 18             	shr    $0x18,%eax
  6bacc4:	83 e0 7f             	and    $0x7f,%eax
  6bacc7:	83 f8 1f             	cmp    $0x1f,%eax
  6bacca:	75 02                	jne    6bacce <test_message_pause+0xde>
  6baccc:	eb 28                	jmp    6bacf6 <test_message_pause+0x106>
  6bacce:	48 bf ad 68 20 00 00 	movabs $0x2068ad,%rdi
  6bacd5:	00 00 00 
  6bacd8:	48 be e4 81 20 00 00 	movabs $0x2081e4,%rsi
  6bacdf:	00 00 00 
  6bace2:	48 b9 b9 22 20 00 00 	movabs $0x2022b9,%rcx
  6bace9:	00 00 00 
  6bacec:	ba c3 10 00 00       	mov    $0x10c3,%edx
  6bacf1:	e8 9a 0c 00 00       	callq  6bb990 <__assert_fail@plt>
  6bacf6:	eb 00                	jmp    6bacf8 <test_message_pause+0x108>
  6bacf8:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6bacfc:	48 03 45 e0          	add    -0x20(%rbp),%rax
  6bad00:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  6bad04:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6bad08:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  6bad0c:	48 29 c1             	sub    %rax,%rcx
  6bad0f:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
  6bad13:	48 bf 88 b3 6c 00 00 	movabs $0x6cb388,%rdi
  6bad1a:	00 00 00 
  6bad1d:	31 f6                	xor    %esi,%esi
  6bad1f:	e8 3c b9 ff ff       	callq  6b6660 <http_parser_pause>
  6bad24:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
  6bad29:	0f 87 1d ff ff ff    	ja     6bac4c <test_message_pause+0x5c>
  6bad2f:	31 ff                	xor    %edi,%edi
  6bad31:	31 f6                	xor    %esi,%esi
  6bad33:	e8 a8 ce ff ff       	callq  6b7be0 <parse_pause>
  6bad38:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  6bad3c:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
  6bad41:	75 02                	jne    6bad45 <test_message_pause+0x155>
  6bad43:	eb 28                	jmp    6bad6d <test_message_pause+0x17d>
  6bad45:	48 bf e9 22 20 00 00 	movabs $0x2022e9,%rdi
  6bad4c:	00 00 00 
  6bad4f:	48 be e4 81 20 00 00 	movabs $0x2081e4,%rsi
  6bad56:	00 00 00 
  6bad59:	48 b9 b9 22 20 00 00 	movabs $0x2022b9,%rcx
  6bad60:	00 00 00 
  6bad63:	ba cc 10 00 00       	mov    $0x10cc,%edx
  6bad68:	e8 23 0c 00 00       	callq  6bb990 <__assert_fail@plt>
  6bad6d:	eb 00                	jmp    6bad6f <test_message_pause+0x17f>
  6bad6f:	83 3c 25 98 b7 71 00 	cmpl   $0x1,0x71b798
  6bad76:	01 
  6bad77:	74 1d                	je     6bad96 <test_message_pause+0x1a6>
  6bad79:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6bad7d:	48 8b 30             	mov    (%rax),%rsi
  6bad80:	48 bf 45 7e 20 00 00 	movabs $0x207e45,%rdi
  6bad87:	00 00 00 
  6bad8a:	b0 00                	mov    $0x0,%al
  6bad8c:	e8 5f 0c 00 00       	callq  6bb9f0 <printf@plt>
  6bad91:	e8 2a 0c 00 00       	callq  6bb9c0 <abort@plt>
  6bad96:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  6bad9a:	31 ff                	xor    %edi,%edi
  6bad9c:	31 f6                	xor    %esi,%esi
  6bad9e:	e8 1d cf ff ff       	callq  6b7cc0 <message_eq>
  6bada3:	83 f8 00             	cmp    $0x0,%eax
  6bada6:	75 05                	jne    6badad <test_message_pause+0x1bd>
  6bada8:	e8 13 0c 00 00       	callq  6bb9c0 <abort@plt>
  6badad:	48 83 c4 20          	add    $0x20,%rsp
  6badb1:	5d                   	pop    %rbp
  6badb2:	c3                   	retq   
  6badb3:	cc                   	int3   
  6badb4:	cc                   	int3   
  6badb5:	cc                   	int3   
  6badb6:	cc                   	int3   
  6badb7:	cc                   	int3   
  6badb8:	cc                   	int3   
  6badb9:	cc                   	int3   
  6badba:	cc                   	int3   
  6badbb:	cc                   	int3   
  6badbc:	cc                   	int3   
  6badbd:	cc                   	int3   
  6badbe:	cc                   	int3   
  6badbf:	cc                   	int3   

00000000006badc0 <test_message_connect>:
  6badc0:	55                   	push   %rbp
  6badc1:	48 89 e5             	mov    %rsp,%rbp
  6badc4:	48 83 ec 20          	sub    $0x20,%rsp
  6badc8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  6badcc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6badd0:	48 8b 40 08          	mov    0x8(%rax),%rax
  6badd4:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  6badd8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6baddc:	48 8b 78 08          	mov    0x8(%rax),%rdi
  6bade0:	e8 fb 0b 00 00       	callq  6bb9e0 <strlen@plt>
  6bade5:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  6bade9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6baded:	8b 78 10             	mov    0x10(%rax),%edi
  6badf0:	e8 db cc ff ff       	callq  6b7ad0 <parser_init>
  6badf5:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  6badf9:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
  6badfd:	e8 5e ce ff ff       	callq  6b7c60 <parse_connect>
  6bae02:	83 3c 25 98 b7 71 00 	cmpl   $0x1,0x71b798
  6bae09:	01 
  6bae0a:	74 1d                	je     6bae29 <test_message_connect+0x69>
  6bae0c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6bae10:	48 8b 30             	mov    (%rax),%rsi
  6bae13:	48 bf 45 7e 20 00 00 	movabs $0x207e45,%rdi
  6bae1a:	00 00 00 
  6bae1d:	b0 00                	mov    $0x0,%al
  6bae1f:	e8 cc 0b 00 00       	callq  6bb9f0 <printf@plt>
  6bae24:	e8 97 0b 00 00       	callq  6bb9c0 <abort@plt>
  6bae29:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  6bae2d:	31 ff                	xor    %edi,%edi
  6bae2f:	be 01 00 00 00       	mov    $0x1,%esi
  6bae34:	e8 87 ce ff ff       	callq  6b7cc0 <message_eq>
  6bae39:	83 f8 00             	cmp    $0x0,%eax
  6bae3c:	75 05                	jne    6bae43 <test_message_connect+0x83>
  6bae3e:	e8 7d 0b 00 00       	callq  6bb9c0 <abort@plt>
  6bae43:	48 83 c4 20          	add    $0x20,%rsp
  6bae47:	5d                   	pop    %rbp
  6bae48:	c3                   	retq   
  6bae49:	cc                   	int3   
  6bae4a:	cc                   	int3   
  6bae4b:	cc                   	int3   
  6bae4c:	cc                   	int3   
  6bae4d:	cc                   	int3   
  6bae4e:	cc                   	int3   
  6bae4f:	cc                   	int3   

00000000006bae50 <main>:
  6bae50:	55                   	push   %rbp
  6bae51:	48 89 e5             	mov    %rsp,%rbp
  6bae54:	48 81 ec c0 02 01 00 	sub    $0x102c0,%rsp
  6bae5b:	c7 45 ac 00 00 00 00 	movl   $0x0,-0x54(%rbp)
  6bae62:	e8 c9 b8 ff ff       	callq  6b6730 <http_parser_version>
  6bae67:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  6bae6b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  6bae6f:	48 c1 e8 10          	shr    $0x10,%rax
  6bae73:	48 25 ff 00 00 00    	and    $0xff,%rax
  6bae79:	89 45 d4             	mov    %eax,-0x2c(%rbp)
  6bae7c:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  6bae80:	48 c1 e8 08          	shr    $0x8,%rax
  6bae84:	48 25 ff 00 00 00    	and    $0xff,%rax
  6bae8a:	89 45 d8             	mov    %eax,-0x28(%rbp)
  6bae8d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  6bae91:	48 25 ff 00 00 00    	and    $0xff,%rax
  6bae97:	89 45 dc             	mov    %eax,-0x24(%rbp)
  6bae9a:	8b 75 d4             	mov    -0x2c(%rbp),%esi
  6bae9d:	8b 55 d8             	mov    -0x28(%rbp),%edx
  6baea0:	8b 4d dc             	mov    -0x24(%rbp),%ecx
  6baea3:	4c 8b 45 e0          	mov    -0x20(%rbp),%r8
  6baea7:	48 bf 8c 47 20 00 00 	movabs $0x20478c,%rdi
  6baeae:	00 00 00 
  6baeb1:	b0 00                	mov    $0x0,%al
  6baeb3:	e8 38 0b 00 00       	callq  6bb9f0 <printf@plt>
  6baeb8:	48 bf ce 1f 20 00 00 	movabs $0x201fce,%rdi
  6baebf:	00 00 00 
  6baec2:	be 20 00 00 00       	mov    $0x20,%esi
  6baec7:	b0 00                	mov    $0x0,%al
  6baec9:	e8 22 0b 00 00       	callq  6bb9f0 <printf@plt>
  6baece:	e8 cd db ff ff       	callq  6b8aa0 <test_preserve_data>
  6baed3:	e8 28 dd ff ff       	callq  6b8c00 <test_parse_url>
  6baed8:	e8 c3 de ff ff       	callq  6b8da0 <test_method_str>
  6baedd:	e8 5e df ff ff       	callq  6b8e40 <test_status_str>
  6baee2:	e8 b9 ef ff ff       	callq  6b9ea0 <test_header_nread_value>
  6baee7:	e8 b4 ed ff ff       	callq  6b9ca0 <test_no_overflow_parse_url>
  6baeec:	31 ff                	xor    %edi,%edi
  6baeee:	e8 3d ee ff ff       	callq  6b9d30 <test_header_overflow_error>
  6baef3:	31 ff                	xor    %edi,%edi
  6baef5:	be e8 03 00 00       	mov    $0x3e8,%esi
  6baefa:	e8 71 f2 ff ff       	callq  6ba170 <test_no_overflow_long_body>
  6baeff:	31 ff                	xor    %edi,%edi
  6baf01:	be a0 86 01 00       	mov    $0x186a0,%esi
  6baf06:	e8 65 f2 ff ff       	callq  6ba170 <test_no_overflow_long_body>
  6baf0b:	bf 01 00 00 00       	mov    $0x1,%edi
  6baf10:	e8 1b ee ff ff       	callq  6b9d30 <test_header_overflow_error>
  6baf15:	bf 01 00 00 00       	mov    $0x1,%edi
  6baf1a:	be e8 03 00 00       	mov    $0x3e8,%esi
  6baf1f:	e8 4c f2 ff ff       	callq  6ba170 <test_no_overflow_long_body>
  6baf24:	bf 01 00 00 00       	mov    $0x1,%edi
  6baf29:	be a0 86 01 00       	mov    $0x186a0,%esi
  6baf2e:	e8 3d f2 ff ff       	callq  6ba170 <test_no_overflow_long_body>
  6baf33:	e8 38 f0 ff ff       	callq  6b9f70 <test_header_content_length_overflow_error>
  6baf38:	e8 93 f1 ff ff       	callq  6ba0d0 <test_chunk_content_length_overflow_error>
  6baf3d:	31 ff                	xor    %edi,%edi
  6baf3f:	e8 6c e9 ff ff       	callq  6b98b0 <test_double_content_length_error>
  6baf44:	31 ff                	xor    %edi,%edi
  6baf46:	e8 b5 ea ff ff       	callq  6b9a00 <test_chunked_content_length_error>
  6baf4b:	31 ff                	xor    %edi,%edi
  6baf4d:	e8 fe eb ff ff       	callq  6b9b50 <test_header_cr_no_lf_error>
  6baf52:	31 ff                	xor    %edi,%edi
  6baf54:	e8 17 e9 ff ff       	callq  6b9870 <test_invalid_header_field_token_error>
  6baf59:	31 ff                	xor    %edi,%edi
  6baf5b:	e8 80 e7 ff ff       	callq  6b96e0 <test_invalid_header_field_content_error>
  6baf60:	bf 01 00 00 00       	mov    $0x1,%edi
  6baf65:	e8 46 e9 ff ff       	callq  6b98b0 <test_double_content_length_error>
  6baf6a:	bf 01 00 00 00       	mov    $0x1,%edi
  6baf6f:	e8 8c ea ff ff       	callq  6b9a00 <test_chunked_content_length_error>
  6baf74:	bf 01 00 00 00       	mov    $0x1,%edi
  6baf79:	e8 d2 eb ff ff       	callq  6b9b50 <test_header_cr_no_lf_error>
  6baf7e:	bf 01 00 00 00       	mov    $0x1,%edi
  6baf83:	e8 e8 e8 ff ff       	callq  6b9870 <test_invalid_header_field_token_error>
  6baf88:	bf 01 00 00 00       	mov    $0x1,%edi
  6baf8d:	e8 4e e7 ff ff       	callq  6b96e0 <test_invalid_header_field_content_error>
  6baf92:	48 bf d6 68 20 00 00 	movabs $0x2068d6,%rdi
  6baf99:	00 00 00 
  6baf9c:	be 19 00 00 00       	mov    $0x19,%esi
  6bafa1:	31 d2                	xor    %edx,%edx
  6bafa3:	e8 08 e5 ff ff       	callq  6b94b0 <test_simple_type>
  6bafa8:	48 bf e8 1f 20 00 00 	movabs $0x201fe8,%rdi
  6bafaf:	00 00 00 
  6bafb2:	31 f6                	xor    %esi,%esi
  6bafb4:	31 d2                	xor    %edx,%edx
  6bafb6:	e8 f5 e4 ff ff       	callq  6b94b0 <test_simple_type>
  6bafbb:	48 bf 12 20 20 00 00 	movabs $0x202012,%rdi
  6bafc2:	00 00 00 
  6bafc5:	be 19 00 00 00       	mov    $0x19,%esi
  6bafca:	31 d2                	xor    %edx,%edx
  6bafcc:	e8 df e4 ff ff       	callq  6b94b0 <test_simple_type>
  6bafd1:	48 bf ad 47 20 00 00 	movabs $0x2047ad,%rdi
  6bafd8:	00 00 00 
  6bafdb:	be 19 00 00 00       	mov    $0x19,%esi
  6bafe0:	31 d2                	xor    %edx,%edx
  6bafe2:	e8 c9 e4 ff ff       	callq  6b94b0 <test_simple_type>
  6bafe7:	48 bf f1 3c 20 00 00 	movabs $0x203cf1,%rdi
  6bafee:	00 00 00 
  6baff1:	be 19 00 00 00       	mov    $0x19,%esi
  6baff6:	31 d2                	xor    %edx,%edx
  6baff8:	e8 b3 e4 ff ff       	callq  6b94b0 <test_simple_type>
  6baffd:	48 bf 33 6b 20 00 00 	movabs $0x206b33,%rdi
  6bb004:	00 00 00 
  6bb007:	31 f6                	xor    %esi,%esi
  6bb009:	31 d2                	xor    %edx,%edx
  6bb00b:	e8 a0 e4 ff ff       	callq  6b94b0 <test_simple_type>
  6bb010:	48 bf f4 22 20 00 00 	movabs $0x2022f4,%rdi
  6bb017:	00 00 00 
  6bb01a:	be 0e 00 00 00       	mov    $0xe,%esi
  6bb01f:	ba 01 00 00 00       	mov    $0x1,%edx
  6bb024:	e8 87 e4 ff ff       	callq  6b94b0 <test_simple_type>
  6bb029:	48 bf e3 82 20 00 00 	movabs $0x2082e3,%rdi
  6bb030:	00 00 00 
  6bb033:	be 0e 00 00 00       	mov    $0xe,%esi
  6bb038:	ba 01 00 00 00       	mov    $0x1,%edx
  6bb03d:	e8 6e e4 ff ff       	callq  6b94b0 <test_simple_type>
  6bb042:	48 bf f8 82 20 00 00 	movabs $0x2082f8,%rdi
  6bb049:	00 00 00 
  6bb04c:	be 0e 00 00 00       	mov    $0xe,%esi
  6bb051:	ba 01 00 00 00       	mov    $0x1,%edx
  6bb056:	e8 55 e4 ff ff       	callq  6b94b0 <test_simple_type>
  6bb05b:	48 bf 5d 6b 20 00 00 	movabs $0x206b5d,%rdi
  6bb062:	00 00 00 
  6bb065:	be 0e 00 00 00       	mov    $0xe,%esi
  6bb06a:	ba 01 00 00 00       	mov    $0x1,%edx
  6bb06f:	e8 3c e4 ff ff       	callq  6b94b0 <test_simple_type>
  6bb074:	48 bf fb 68 20 00 00 	movabs $0x2068fb,%rdi
  6bb07b:	00 00 00 
  6bb07e:	be 0e 00 00 00       	mov    $0xe,%esi
  6bb083:	ba 01 00 00 00       	mov    $0x1,%edx
  6bb088:	e8 23 e4 ff ff       	callq  6b94b0 <test_simple_type>
  6bb08d:	48 bf 72 6b 20 00 00 	movabs $0x206b72,%rdi
  6bb094:	00 00 00 
  6bb097:	be 0e 00 00 00       	mov    $0xe,%esi
  6bb09c:	ba 01 00 00 00       	mov    $0x1,%edx
  6bb0a1:	e8 0a e4 ff ff       	callq  6b94b0 <test_simple_type>
  6bb0a6:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  6bb0ad:	8b 45 fc             	mov    -0x4(%rbp),%eax
  6bb0b0:	48 83 f8 1d          	cmp    $0x1d,%rax
  6bb0b4:	73 27                	jae    6bb0dd <main+0x28d>
  6bb0b6:	8b 45 fc             	mov    -0x4(%rbp),%eax
  6bb0b9:	48 bf d0 a8 4d 00 00 	movabs $0x4da8d0,%rdi
  6bb0c0:	00 00 00 
  6bb0c3:	48 69 c0 c8 00 01 00 	imul   $0x100c8,%rax,%rax
  6bb0ca:	48 01 c7             	add    %rax,%rdi
  6bb0cd:	e8 4e de ff ff       	callq  6b8f20 <test_message>
  6bb0d2:	8b 45 fc             	mov    -0x4(%rbp),%eax
  6bb0d5:	83 c0 01             	add    $0x1,%eax
  6bb0d8:	89 45 fc             	mov    %eax,-0x4(%rbp)
  6bb0db:	eb d0                	jmp    6bb0ad <main+0x25d>
  6bb0dd:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  6bb0e4:	8b 45 fc             	mov    -0x4(%rbp),%eax
  6bb0e7:	48 83 f8 1d          	cmp    $0x1d,%rax
  6bb0eb:	73 27                	jae    6bb114 <main+0x2c4>
  6bb0ed:	8b 45 fc             	mov    -0x4(%rbp),%eax
  6bb0f0:	48 bf d0 a8 4d 00 00 	movabs $0x4da8d0,%rdi
  6bb0f7:	00 00 00 
  6bb0fa:	48 69 c0 c8 00 01 00 	imul   $0x100c8,%rax,%rax
  6bb101:	48 01 c7             	add    %rax,%rdi
  6bb104:	e8 e7 fa ff ff       	callq  6babf0 <test_message_pause>
  6bb109:	8b 45 fc             	mov    -0x4(%rbp),%eax
  6bb10c:	83 c0 01             	add    $0x1,%eax
  6bb10f:	89 45 fc             	mov    %eax,-0x4(%rbp)
  6bb112:	eb d0                	jmp    6bb0e4 <main+0x294>
  6bb114:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  6bb11b:	8b 45 fc             	mov    -0x4(%rbp),%eax
  6bb11e:	48 83 f8 1d          	cmp    $0x1d,%rax
  6bb122:	73 27                	jae    6bb14b <main+0x2fb>
  6bb124:	8b 45 fc             	mov    -0x4(%rbp),%eax
  6bb127:	48 bf d0 a8 4d 00 00 	movabs $0x4da8d0,%rdi
  6bb12e:	00 00 00 
  6bb131:	48 69 c0 c8 00 01 00 	imul   $0x100c8,%rax,%rax
  6bb138:	48 01 c7             	add    %rax,%rdi
  6bb13b:	e8 80 fc ff ff       	callq  6badc0 <test_message_connect>
  6bb140:	8b 45 fc             	mov    -0x4(%rbp),%eax
  6bb143:	83 c0 01             	add    $0x1,%eax
  6bb146:	89 45 fc             	mov    %eax,-0x4(%rbp)
  6bb149:	eb d0                	jmp    6bb11b <main+0x2cb>
  6bb14b:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  6bb152:	8b 45 fc             	mov    -0x4(%rbp),%eax
  6bb155:	48 83 f8 1d          	cmp    $0x1d,%rax
  6bb159:	0f 83 e0 00 00 00    	jae    6bb23f <main+0x3ef>
  6bb15f:	8b 45 fc             	mov    -0x4(%rbp),%eax
  6bb162:	48 b9 d0 a8 4d 00 00 	movabs $0x4da8d0,%rcx
  6bb169:	00 00 00 
  6bb16c:	48 69 c0 c8 00 01 00 	imul   $0x100c8,%rax,%rax
  6bb173:	48 01 c1             	add    %rax,%rcx
  6bb176:	83 b9 44 00 01 00 00 	cmpl   $0x0,0x10044(%rcx)
  6bb17d:	75 05                	jne    6bb184 <main+0x334>
  6bb17f:	e9 ad 00 00 00       	jmpq   6bb231 <main+0x3e1>
  6bb184:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
  6bb18b:	8b 45 f8             	mov    -0x8(%rbp),%eax
  6bb18e:	48 83 f8 1d          	cmp    $0x1d,%rax
  6bb192:	0f 83 97 00 00 00    	jae    6bb22f <main+0x3df>
  6bb198:	8b 45 f8             	mov    -0x8(%rbp),%eax
  6bb19b:	48 b9 d0 a8 4d 00 00 	movabs $0x4da8d0,%rcx
  6bb1a2:	00 00 00 
  6bb1a5:	48 69 c0 c8 00 01 00 	imul   $0x100c8,%rax,%rax
  6bb1ac:	48 01 c1             	add    %rax,%rcx
  6bb1af:	83 b9 44 00 01 00 00 	cmpl   $0x0,0x10044(%rcx)
  6bb1b6:	75 02                	jne    6bb1ba <main+0x36a>
  6bb1b8:	eb 67                	jmp    6bb221 <main+0x3d1>
  6bb1ba:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
  6bb1c1:	8b 45 f4             	mov    -0xc(%rbp),%eax
  6bb1c4:	48 83 f8 1d          	cmp    $0x1d,%rax
  6bb1c8:	73 55                	jae    6bb21f <main+0x3cf>
  6bb1ca:	8b 45 fc             	mov    -0x4(%rbp),%eax
  6bb1cd:	48 bf d0 a8 4d 00 00 	movabs $0x4da8d0,%rdi
  6bb1d4:	00 00 00 
  6bb1d7:	48 69 c0 c8 00 01 00 	imul   $0x100c8,%rax,%rax
  6bb1de:	48 01 c7             	add    %rax,%rdi
  6bb1e1:	8b 45 f8             	mov    -0x8(%rbp),%eax
  6bb1e4:	48 be d0 a8 4d 00 00 	movabs $0x4da8d0,%rsi
  6bb1eb:	00 00 00 
  6bb1ee:	48 69 c0 c8 00 01 00 	imul   $0x100c8,%rax,%rax
  6bb1f5:	48 01 c6             	add    %rax,%rsi
  6bb1f8:	8b 45 f4             	mov    -0xc(%rbp),%eax
  6bb1fb:	48 ba d0 a8 4d 00 00 	movabs $0x4da8d0,%rdx
  6bb202:	00 00 00 
  6bb205:	48 69 c0 c8 00 01 00 	imul   $0x100c8,%rax,%rax
  6bb20c:	48 01 c2             	add    %rax,%rdx
  6bb20f:	e8 cc f0 ff ff       	callq  6ba2e0 <test_multiple3>
  6bb214:	8b 45 f4             	mov    -0xc(%rbp),%eax
  6bb217:	83 c0 01             	add    $0x1,%eax
  6bb21a:	89 45 f4             	mov    %eax,-0xc(%rbp)
  6bb21d:	eb a2                	jmp    6bb1c1 <main+0x371>
  6bb21f:	eb 00                	jmp    6bb221 <main+0x3d1>
  6bb221:	8b 45 f8             	mov    -0x8(%rbp),%eax
  6bb224:	83 c0 01             	add    $0x1,%eax
  6bb227:	89 45 f8             	mov    %eax,-0x8(%rbp)
  6bb22a:	e9 5c ff ff ff       	jmpq   6bb18b <main+0x33b>
  6bb22f:	eb 00                	jmp    6bb231 <main+0x3e1>
  6bb231:	8b 45 fc             	mov    -0x4(%rbp),%eax
  6bb234:	83 c0 01             	add    $0x1,%eax
  6bb237:	89 45 fc             	mov    %eax,-0x4(%rbp)
  6bb23a:	e9 13 ff ff ff       	jmpq   6bb152 <main+0x302>
  6bb23f:	48 bf d0 a8 4d 00 00 	movabs $0x4da8d0,%rdi
  6bb246:	00 00 00 
  6bb249:	48 81 c7 90 01 02 00 	add    $0x20190,%rdi
  6bb250:	e8 3b e1 ff ff       	callq  6b9390 <test_message_count_body>
  6bb255:	48 bf d0 a8 4d 00 00 	movabs $0x4da8d0,%rdi
  6bb25c:	00 00 00 
  6bb25f:	48 81 c7 20 03 04 00 	add    $0x40320,%rdi
  6bb266:	e8 25 e1 ff ff       	callq  6b9390 <test_message_count_body>
  6bb26b:	48 be 16 7b 20 00 00 	movabs $0x207b16,%rsi
  6bb272:	00 00 00 
  6bb275:	bf 69 7a 00 00       	mov    $0x7a69,%edi
  6bb27a:	e8 11 f8 ff ff       	callq  6baa90 <create_large_chunked_message>
  6bb27f:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  6bb283:	48 8d bd 48 fd fe ff 	lea    -0x102b8(%rbp),%rdi
  6bb28a:	31 f6                	xor    %esi,%esi
  6bb28c:	ba c8 00 01 00       	mov    $0x100c8,%edx
  6bb291:	e8 0a 08 00 00       	callq  6bbaa0 <memset@plt>
  6bb296:	48 b8 27 3d 20 00 00 	movabs $0x203d27,%rax
  6bb29d:	00 00 00 
  6bb2a0:	48 89 85 48 fd fe ff 	mov    %rax,-0x102b8(%rbp)
  6bb2a7:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6bb2ab:	48 89 85 50 fd fe ff 	mov    %rax,-0x102b0(%rbp)
  6bb2b2:	c7 85 58 fd fe ff 01 	movl   $0x1,-0x102a8(%rbp)
  6bb2b9:	00 00 00 
  6bb2bc:	c7 85 60 fd fe ff c8 	movl   $0xc8,-0x102a0(%rbp)
  6bb2c3:	00 00 00 
  6bb2c6:	48 8d bd 48 fd fe ff 	lea    -0x102b8(%rbp),%rdi
  6bb2cd:	48 83 c7 1c          	add    $0x1c,%rdi
  6bb2d1:	48 be 70 cb 6a 00 00 	movabs $0x6acb70,%rsi
  6bb2d8:	00 00 00 
  6bb2db:	ba 00 08 00 00       	mov    $0x800,%edx
  6bb2e0:	e8 cb 07 00 00       	callq  6bbab0 <memcpy@plt>
  6bb2e5:	48 c7 85 68 2d ff ff 	movq   $0x1e9a400,-0xd298(%rbp)
  6bb2ec:	00 a4 e9 01 
  6bb2f0:	c7 85 84 2d ff ff 02 	movl   $0x2,-0xd27c(%rbp)
  6bb2f7:	00 00 00 
  6bb2fa:	48 8d bd 48 fd fe ff 	lea    -0x102b8(%rbp),%rdi
  6bb301:	48 81 c7 44 30 00 00 	add    $0x3044,%rdi
  6bb308:	48 be 40 e1 6b 00 00 	movabs $0x6be140,%rsi
  6bb30f:	00 00 00 
  6bb312:	ba 00 d0 00 00       	mov    $0xd000,%edx
  6bb317:	e8 94 07 00 00       	callq  6bbab0 <memcpy@plt>
  6bb31c:	c7 85 94 fd ff ff 6a 	movl   $0x7a6a,-0x26c(%rbp)
  6bb323:	7a 00 00 
  6bb326:	66 c7 85 e0 fd ff ff 	movw   $0x1,-0x220(%rbp)
  6bb32d:	01 00 
  6bb32f:	48 c7 85 e8 fd ff ff 	movq   $0xffffffffffffffff,-0x218(%rbp)
  6bb336:	ff ff ff ff 
  6bb33a:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  6bb341:	83 7d fc 10          	cmpl   $0x10,-0x4(%rbp)
  6bb345:	73 19                	jae    6bb360 <main+0x510>
  6bb347:	8b 45 fc             	mov    -0x4(%rbp),%eax
  6bb34a:	c7 84 85 98 fd ff ff 	movl   $0x400,-0x268(%rbp,%rax,4)
  6bb351:	00 04 00 00 
  6bb355:	8b 45 fc             	mov    -0x4(%rbp),%eax
  6bb358:	83 c0 01             	add    $0x1,%eax
  6bb35b:	89 45 fc             	mov    %eax,-0x4(%rbp)
  6bb35e:	eb e1                	jmp    6bb341 <main+0x4f1>
  6bb360:	48 8d bd 48 fd fe ff 	lea    -0x102b8(%rbp),%rdi
  6bb367:	e8 24 e0 ff ff       	callq  6b9390 <test_message_count_body>
  6bb36c:	48 8b 7d c8          	mov    -0x38(%rbp),%rdi
  6bb370:	e8 0b 07 00 00       	callq  6bba80 <free@plt>
  6bb375:	48 bf 4d 4e 20 00 00 	movabs $0x204e4d,%rdi
  6bb37c:	00 00 00 
  6bb37f:	b0 00                	mov    $0x0,%al
  6bb381:	e8 6a 06 00 00       	callq  6bb9f0 <printf@plt>
  6bb386:	48 ba d0 a8 4d 00 00 	movabs $0x4da8d0,%rdx
  6bb38d:	00 00 00 
  6bb390:	48 89 d7             	mov    %rdx,%rdi
  6bb393:	48 81 c7 20 03 04 00 	add    $0x40320,%rdi
  6bb39a:	48 89 d6             	mov    %rdx,%rsi
  6bb39d:	48 81 c6 f0 0a 0e 00 	add    $0xe0af0,%rsi
  6bb3a4:	48 81 c2 58 02 03 00 	add    $0x30258,%rdx
  6bb3ab:	e8 60 f1 ff ff       	callq  6ba510 <test_scan>
  6bb3b0:	48 bf c9 2b 20 00 00 	movabs $0x202bc9,%rdi
  6bb3b7:	00 00 00 
  6bb3ba:	b0 00                	mov    $0x0,%al
  6bb3bc:	e8 2f 06 00 00       	callq  6bb9f0 <printf@plt>
  6bb3c1:	48 ba d0 a8 4d 00 00 	movabs $0x4da8d0,%rdx
  6bb3c8:	00 00 00 
  6bb3cb:	48 89 d7             	mov    %rdx,%rdi
  6bb3ce:	48 81 c7 40 06 08 00 	add    $0x80640,%rdi
  6bb3d5:	48 89 d6             	mov    %rdx,%rsi
  6bb3d8:	48 81 c6 78 05 07 00 	add    $0x70578,%rsi
  6bb3df:	48 81 c2 e8 03 05 00 	add    $0x503e8,%rdx
  6bb3e6:	e8 25 f1 ff ff       	callq  6ba510 <test_scan>
  6bb3eb:	48 bf 11 66 20 00 00 	movabs $0x206611,%rdi
  6bb3f2:	00 00 00 
  6bb3f5:	e8 56 06 00 00       	callq  6bba50 <puts@plt>
  6bb3fa:	48 bf e1 2b 20 00 00 	movabs $0x202be1,%rdi
  6bb401:	00 00 00 
  6bb404:	be 1c 00 00 00       	mov    $0x1c,%esi
  6bb409:	e8 52 e1 ff ff       	callq  6b9560 <test_simple>
  6bb40e:	48 bf b8 37 20 00 00 	movabs $0x2037b8,%rdi
  6bb415:	00 00 00 
  6bb418:	be 1c 00 00 00       	mov    $0x1c,%esi
  6bb41d:	e8 3e e1 ff ff       	callq  6b9560 <test_simple>
  6bb422:	48 bf 65 4e 20 00 00 	movabs $0x204e65,%rdi
  6bb429:	00 00 00 
  6bb42c:	be 0e 00 00 00       	mov    $0xe,%esi
  6bb431:	e8 2a e1 ff ff       	callq  6b9560 <test_simple>
  6bb436:	48 bf 46 31 20 00 00 	movabs $0x203146,%rdi
  6bb43d:	00 00 00 
  6bb440:	be 0e 00 00 00       	mov    $0xe,%esi
  6bb445:	e8 16 e1 ff ff       	callq  6b9560 <test_simple>
  6bb44a:	48 bf 9f 32 20 00 00 	movabs $0x20329f,%rdi
  6bb451:	00 00 00 
  6bb454:	be 0e 00 00 00       	mov    $0xe,%esi
  6bb459:	e8 02 e1 ff ff       	callq  6b9560 <test_simple>
  6bb45e:	48 bf 12 6e 20 00 00 	movabs $0x206e12,%rdi
  6bb465:	00 00 00 
  6bb468:	be 0e 00 00 00       	mov    $0xe,%esi
  6bb46d:	e8 ee e0 ff ff       	callq  6b9560 <test_simple>
  6bb472:	48 bf 78 48 20 00 00 	movabs $0x204878,%rdi
  6bb479:	00 00 00 
  6bb47c:	be 18 00 00 00       	mov    $0x18,%esi
  6bb481:	e8 da e0 ff ff       	callq  6b9560 <test_simple>
  6bb486:	48 bf 5b 62 20 00 00 	movabs $0x20625b,%rdi
  6bb48d:	00 00 00 
  6bb490:	be 18 00 00 00       	mov    $0x18,%esi
  6bb495:	e8 c6 e0 ff ff       	callq  6b9560 <test_simple>
  6bb49a:	48 bf ca 37 20 00 00 	movabs $0x2037ca,%rdi
  6bb4a1:	00 00 00 
  6bb4a4:	31 f6                	xor    %esi,%esi
  6bb4a6:	e8 b5 e0 ff ff       	callq  6b9560 <test_simple>
  6bb4ab:	48 bf 0f 69 20 00 00 	movabs $0x20690f,%rdi
  6bb4b2:	00 00 00 
  6bb4b5:	31 f6                	xor    %esi,%esi
  6bb4b7:	e8 a4 e0 ff ff       	callq  6b9560 <test_simple>
  6bb4bc:	48 bf b3 32 20 00 00 	movabs $0x2032b3,%rdi
  6bb4c3:	00 00 00 
  6bb4c6:	be 21 00 00 00       	mov    $0x21,%esi
  6bb4cb:	e8 90 e0 ff ff       	callq  6b9560 <test_simple>
  6bb4d0:	48 b8 40 b1 6c 00 00 	movabs $0x6cb140,%rax
  6bb4d7:	00 00 00 
  6bb4da:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  6bb4de:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  6bb4e2:	48 83 38 00          	cmpq   $0x0,(%rax)
  6bb4e6:	74 3b                	je     6bb523 <main+0x6d3>
  6bb4e8:	48 8d bd 10 fe ff ff 	lea    -0x1f0(%rbp),%rdi
  6bb4ef:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  6bb4f3:	48 8b 10             	mov    (%rax),%rdx
  6bb4f6:	48 be 35 3d 20 00 00 	movabs $0x203d35,%rsi
  6bb4fd:	00 00 00 
  6bb500:	b0 00                	mov    $0x0,%al
  6bb502:	e8 19 05 00 00       	callq  6bba20 <sprintf@plt>
  6bb507:	48 8d bd 10 fe ff ff 	lea    -0x1f0(%rbp),%rdi
  6bb50e:	31 f6                	xor    %esi,%esi
  6bb510:	e8 4b e0 ff ff       	callq  6b9560 <test_simple>
  6bb515:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  6bb519:	48 83 c0 08          	add    $0x8,%rax
  6bb51d:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  6bb521:	eb bb                	jmp    6bb4de <main+0x68e>
  6bb523:	48 b8 50 b2 6c 00 00 	movabs $0x6cb250,%rax
  6bb52a:	00 00 00 
  6bb52d:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  6bb531:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  6bb535:	48 83 38 00          	cmpq   $0x0,(%rax)
  6bb539:	74 3e                	je     6bb579 <main+0x729>
  6bb53b:	48 8d bd e0 fe ff ff 	lea    -0x120(%rbp),%rdi
  6bb542:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  6bb546:	48 8b 10             	mov    (%rax),%rdx
  6bb549:	48 be 35 3d 20 00 00 	movabs $0x203d35,%rsi
  6bb550:	00 00 00 
  6bb553:	b0 00                	mov    $0x0,%al
  6bb555:	e8 c6 04 00 00       	callq  6bba20 <sprintf@plt>
  6bb55a:	48 8d bd e0 fe ff ff 	lea    -0x120(%rbp),%rdi
  6bb561:	be 10 00 00 00       	mov    $0x10,%esi
  6bb566:	e8 f5 df ff ff       	callq  6b9560 <test_simple>
  6bb56b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  6bb56f:	48 83 c0 08          	add    $0x8,%rax
  6bb573:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  6bb577:	eb b8                	jmp    6bb531 <main+0x6e1>
  6bb579:	48 bf 3b 20 20 00 00 	movabs $0x20203b,%rdi
  6bb580:	00 00 00 
  6bb583:	be 18 00 00 00       	mov    $0x18,%esi
  6bb588:	e8 d3 df ff ff       	callq  6b9560 <test_simple>
  6bb58d:	48 b8 78 55 20 00 00 	movabs $0x205578,%rax
  6bb594:	00 00 00 
  6bb597:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  6bb59b:	48 8b 7d b0          	mov    -0x50(%rbp),%rdi
  6bb59f:	31 f6                	xor    %esi,%esi
  6bb5a1:	e8 ba df ff ff       	callq  6b9560 <test_simple>
  6bb5a6:	48 b8 0d 83 20 00 00 	movabs $0x20830d,%rax
  6bb5ad:	00 00 00 
  6bb5b0:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
  6bb5b4:	48 8b 7d b8          	mov    -0x48(%rbp),%rdi
  6bb5b8:	be 18 00 00 00       	mov    $0x18,%esi
  6bb5bd:	e8 9e df ff ff       	callq  6b9560 <test_simple>
  6bb5c2:	48 b8 80 62 20 00 00 	movabs $0x206280,%rax
  6bb5c9:	00 00 00 
  6bb5cc:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  6bb5d0:	48 8b 7d c0          	mov    -0x40(%rbp),%rdi
  6bb5d4:	be 18 00 00 00       	mov    $0x18,%esi
  6bb5d9:	e8 82 df ff ff       	callq  6b9560 <test_simple>
  6bb5de:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  6bb5e5:	8b 45 fc             	mov    -0x4(%rbp),%eax
  6bb5e8:	48 83 f8 2d          	cmp    $0x2d,%rax
  6bb5ec:	73 27                	jae    6bb615 <main+0x7c5>
  6bb5ee:	8b 45 fc             	mov    -0x4(%rbp),%eax
  6bb5f1:	48 bf a0 85 20 00 00 	movabs $0x2085a0,%rdi
  6bb5f8:	00 00 00 
  6bb5fb:	48 69 c0 c8 00 01 00 	imul   $0x100c8,%rax,%rax
  6bb602:	48 01 c7             	add    %rax,%rdi
  6bb605:	e8 16 d9 ff ff       	callq  6b8f20 <test_message>
  6bb60a:	8b 45 fc             	mov    -0x4(%rbp),%eax
  6bb60d:	83 c0 01             	add    $0x1,%eax
  6bb610:	89 45 fc             	mov    %eax,-0x4(%rbp)
  6bb613:	eb d0                	jmp    6bb5e5 <main+0x795>
  6bb615:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  6bb61c:	8b 45 fc             	mov    -0x4(%rbp),%eax
  6bb61f:	48 83 f8 2d          	cmp    $0x2d,%rax
  6bb623:	73 27                	jae    6bb64c <main+0x7fc>
  6bb625:	8b 45 fc             	mov    -0x4(%rbp),%eax
  6bb628:	48 bf a0 85 20 00 00 	movabs $0x2085a0,%rdi
  6bb62f:	00 00 00 
  6bb632:	48 69 c0 c8 00 01 00 	imul   $0x100c8,%rax,%rax
  6bb639:	48 01 c7             	add    %rax,%rdi
  6bb63c:	e8 af f5 ff ff       	callq  6babf0 <test_message_pause>
  6bb641:	8b 45 fc             	mov    -0x4(%rbp),%eax
  6bb644:	83 c0 01             	add    $0x1,%eax
  6bb647:	89 45 fc             	mov    %eax,-0x4(%rbp)
  6bb64a:	eb d0                	jmp    6bb61c <main+0x7cc>
  6bb64c:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  6bb653:	8b 45 fc             	mov    -0x4(%rbp),%eax
  6bb656:	48 83 f8 2d          	cmp    $0x2d,%rax
  6bb65a:	0f 83 e0 00 00 00    	jae    6bb740 <main+0x8f0>
  6bb660:	8b 45 fc             	mov    -0x4(%rbp),%eax
  6bb663:	48 b9 a0 85 20 00 00 	movabs $0x2085a0,%rcx
  6bb66a:	00 00 00 
  6bb66d:	48 69 c0 c8 00 01 00 	imul   $0x100c8,%rax,%rax
  6bb674:	48 01 c1             	add    %rax,%rcx
  6bb677:	83 b9 44 00 01 00 00 	cmpl   $0x0,0x10044(%rcx)
  6bb67e:	75 05                	jne    6bb685 <main+0x835>
  6bb680:	e9 ad 00 00 00       	jmpq   6bb732 <main+0x8e2>
  6bb685:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
  6bb68c:	8b 45 f8             	mov    -0x8(%rbp),%eax
  6bb68f:	48 83 f8 2d          	cmp    $0x2d,%rax
  6bb693:	0f 83 97 00 00 00    	jae    6bb730 <main+0x8e0>
  6bb699:	8b 45 f8             	mov    -0x8(%rbp),%eax
  6bb69c:	48 b9 a0 85 20 00 00 	movabs $0x2085a0,%rcx
  6bb6a3:	00 00 00 
  6bb6a6:	48 69 c0 c8 00 01 00 	imul   $0x100c8,%rax,%rax
  6bb6ad:	48 01 c1             	add    %rax,%rcx
  6bb6b0:	83 b9 44 00 01 00 00 	cmpl   $0x0,0x10044(%rcx)
  6bb6b7:	75 02                	jne    6bb6bb <main+0x86b>
  6bb6b9:	eb 67                	jmp    6bb722 <main+0x8d2>
  6bb6bb:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
  6bb6c2:	8b 45 f4             	mov    -0xc(%rbp),%eax
  6bb6c5:	48 83 f8 2d          	cmp    $0x2d,%rax
  6bb6c9:	73 55                	jae    6bb720 <main+0x8d0>
  6bb6cb:	8b 45 fc             	mov    -0x4(%rbp),%eax
  6bb6ce:	48 bf a0 85 20 00 00 	movabs $0x2085a0,%rdi
  6bb6d5:	00 00 00 
  6bb6d8:	48 69 c0 c8 00 01 00 	imul   $0x100c8,%rax,%rax
  6bb6df:	48 01 c7             	add    %rax,%rdi
  6bb6e2:	8b 45 f8             	mov    -0x8(%rbp),%eax
  6bb6e5:	48 be a0 85 20 00 00 	movabs $0x2085a0,%rsi
  6bb6ec:	00 00 00 
  6bb6ef:	48 69 c0 c8 00 01 00 	imul   $0x100c8,%rax,%rax
  6bb6f6:	48 01 c6             	add    %rax,%rsi
  6bb6f9:	8b 45 f4             	mov    -0xc(%rbp),%eax
  6bb6fc:	48 ba a0 85 20 00 00 	movabs $0x2085a0,%rdx
  6bb703:	00 00 00 
  6bb706:	48 69 c0 c8 00 01 00 	imul   $0x100c8,%rax,%rax
  6bb70d:	48 01 c2             	add    %rax,%rdx
  6bb710:	e8 cb eb ff ff       	callq  6ba2e0 <test_multiple3>
  6bb715:	8b 45 f4             	mov    -0xc(%rbp),%eax
  6bb718:	83 c0 01             	add    $0x1,%eax
  6bb71b:	89 45 f4             	mov    %eax,-0xc(%rbp)
  6bb71e:	eb a2                	jmp    6bb6c2 <main+0x872>
  6bb720:	eb 00                	jmp    6bb722 <main+0x8d2>
  6bb722:	8b 45 f8             	mov    -0x8(%rbp),%eax
  6bb725:	83 c0 01             	add    $0x1,%eax
  6bb728:	89 45 f8             	mov    %eax,-0x8(%rbp)
  6bb72b:	e9 5c ff ff ff       	jmpq   6bb68c <main+0x83c>
  6bb730:	eb 00                	jmp    6bb732 <main+0x8e2>
  6bb732:	8b 45 fc             	mov    -0x4(%rbp),%eax
  6bb735:	83 c0 01             	add    $0x1,%eax
  6bb738:	89 45 fc             	mov    %eax,-0x4(%rbp)
  6bb73b:	e9 13 ff ff ff       	jmpq   6bb653 <main+0x803>
  6bb740:	48 bf cd 52 20 00 00 	movabs $0x2052cd,%rdi
  6bb747:	00 00 00 
  6bb74a:	b0 00                	mov    $0x0,%al
  6bb74c:	e8 9f 02 00 00       	callq  6bb9f0 <printf@plt>
  6bb751:	48 be a0 85 20 00 00 	movabs $0x2085a0,%rsi
  6bb758:	00 00 00 
  6bb75b:	48 89 f7             	mov    %rsi,%rdi
  6bb75e:	48 81 c7 20 03 04 00 	add    $0x40320,%rdi
  6bb765:	48 81 c6 e8 03 05 00 	add    $0x503e8,%rsi
  6bb76c:	48 89 fa             	mov    %rdi,%rdx
  6bb76f:	e8 9c ed ff ff       	callq  6ba510 <test_scan>
  6bb774:	48 bf 5e 20 20 00 00 	movabs $0x20205e,%rdi
  6bb77b:	00 00 00 
  6bb77e:	b0 00                	mov    $0x0,%al
  6bb780:	e8 6b 02 00 00       	callq  6bb9f0 <printf@plt>
  6bb785:	48 ba a0 85 20 00 00 	movabs $0x2085a0,%rdx
  6bb78c:	00 00 00 
  6bb78f:	48 89 d7             	mov    %rdx,%rdi
  6bb792:	48 81 c7 40 06 08 00 	add    $0x80640,%rdi
  6bb799:	48 89 d6             	mov    %rdx,%rsi
  6bb79c:	48 81 c6 78 05 07 00 	add    $0x70578,%rsi
  6bb7a3:	48 81 c2 b0 04 06 00 	add    $0x604b0,%rdx
  6bb7aa:	e8 61 ed ff ff       	callq  6ba510 <test_scan>
  6bb7af:	48 bf 70 80 20 00 00 	movabs $0x208070,%rdi
  6bb7b6:	00 00 00 
  6bb7b9:	b0 00                	mov    $0x0,%al
  6bb7bb:	e8 30 02 00 00       	callq  6bb9f0 <printf@plt>
  6bb7c0:	48 ba a0 85 20 00 00 	movabs $0x2085a0,%rdx
  6bb7c7:	00 00 00 
  6bb7ca:	48 89 d7             	mov    %rdx,%rdi
  6bb7cd:	48 81 c7 08 07 09 00 	add    $0x90708,%rdi
  6bb7d4:	48 89 d6             	mov    %rdx,%rsi
  6bb7d7:	48 81 c6 d0 07 0a 00 	add    $0xa07d0,%rsi
  6bb7de:	48 81 c2 98 08 0b 00 	add    $0xb0898,%rdx
  6bb7e5:	e8 26 ed ff ff       	callq  6ba510 <test_scan>
  6bb7ea:	48 bf 67 83 20 00 00 	movabs $0x208367,%rdi
  6bb7f1:	00 00 00 
  6bb7f4:	b0 00                	mov    $0x0,%al
  6bb7f6:	e8 f5 01 00 00       	callq  6bb9f0 <printf@plt>
  6bb7fb:	48 ba a0 85 20 00 00 	movabs $0x2085a0,%rdx
  6bb802:	00 00 00 
  6bb805:	48 89 d7             	mov    %rdx,%rdi
  6bb808:	48 81 c7 f0 0a 0e 00 	add    $0xe0af0,%rdi
  6bb80f:	48 89 d6             	mov    %rdx,%rsi
  6bb812:	48 81 c6 b8 0b 0f 00 	add    $0xf0bb8,%rsi
  6bb819:	48 81 c2 48 0d 11 00 	add    $0x110d48,%rdx
  6bb820:	e8 eb ec ff ff       	callq  6ba510 <test_scan>
  6bb825:	48 bf 3a 3f 20 00 00 	movabs $0x203f3a,%rdi
  6bb82c:	00 00 00 
  6bb82f:	e8 1c 02 00 00       	callq  6bba50 <puts@plt>
  6bb834:	31 c0                	xor    %eax,%eax
  6bb836:	48 81 c4 c0 02 01 00 	add    $0x102c0,%rsp
  6bb83d:	5d                   	pop    %rbp
  6bb83e:	c3                   	retq   
  6bb83f:	cc                   	int3   

00000000006bb840 <request_url_cb>:
  6bb840:	e9 db b0 ff ff       	jmpq   6b6920 <request_url_cb.cfi>
  6bb845:	cc                   	int3   
  6bb846:	cc                   	int3   
  6bb847:	cc                   	int3   

00000000006bb848 <header_field_cb>:
  6bb848:	e9 63 b1 ff ff       	jmpq   6b69b0 <header_field_cb.cfi>
  6bb84d:	cc                   	int3   
  6bb84e:	cc                   	int3   
  6bb84f:	cc                   	int3   

00000000006bb850 <header_value_cb>:
  6bb850:	e9 3b b2 ff ff       	jmpq   6b6a90 <header_value_cb.cfi>
  6bb855:	cc                   	int3   
  6bb856:	cc                   	int3   
  6bb857:	cc                   	int3   

00000000006bb858 <body_cb>:
  6bb858:	e9 a3 b3 ff ff       	jmpq   6b6c00 <body_cb.cfi>
  6bb85d:	cc                   	int3   
  6bb85e:	cc                   	int3   
  6bb85f:	cc                   	int3   

00000000006bb860 <count_body_cb>:
  6bb860:	e9 6b b4 ff ff       	jmpq   6b6cd0 <count_body_cb.cfi>
  6bb865:	cc                   	int3   
  6bb866:	cc                   	int3   
  6bb867:	cc                   	int3   

00000000006bb868 <response_status_cb>:
  6bb868:	e9 33 b9 ff ff       	jmpq   6b71a0 <response_status_cb.cfi>
  6bb86d:	cc                   	int3   
  6bb86e:	cc                   	int3   
  6bb86f:	cc                   	int3   

00000000006bb870 <dontcall_header_field_cb>:
  6bb870:	e9 eb bb ff ff       	jmpq   6b7460 <dontcall_header_field_cb.cfi>
  6bb875:	cc                   	int3   
  6bb876:	cc                   	int3   
  6bb877:	cc                   	int3   

00000000006bb878 <dontcall_header_value_cb>:
  6bb878:	e9 33 bc ff ff       	jmpq   6b74b0 <dontcall_header_value_cb.cfi>
  6bb87d:	cc                   	int3   
  6bb87e:	cc                   	int3   
  6bb87f:	cc                   	int3   

00000000006bb880 <dontcall_request_url_cb>:
  6bb880:	e9 7b bc ff ff       	jmpq   6b7500 <dontcall_request_url_cb.cfi>
  6bb885:	cc                   	int3   
  6bb886:	cc                   	int3   
  6bb887:	cc                   	int3   

00000000006bb888 <dontcall_body_cb>:
  6bb888:	e9 c3 bc ff ff       	jmpq   6b7550 <dontcall_body_cb.cfi>
  6bb88d:	cc                   	int3   
  6bb88e:	cc                   	int3   
  6bb88f:	cc                   	int3   

00000000006bb890 <dontcall_response_status_cb>:
  6bb890:	e9 8b bd ff ff       	jmpq   6b7620 <dontcall_response_status_cb.cfi>
  6bb895:	cc                   	int3   
  6bb896:	cc                   	int3   
  6bb897:	cc                   	int3   

00000000006bb898 <pause_header_field_cb>:
  6bb898:	e9 a3 be ff ff       	jmpq   6b7740 <pause_header_field_cb.cfi>
  6bb89d:	cc                   	int3   
  6bb89e:	cc                   	int3   
  6bb89f:	cc                   	int3   

00000000006bb8a0 <pause_header_value_cb>:
  6bb8a0:	e9 fb be ff ff       	jmpq   6b77a0 <pause_header_value_cb.cfi>
  6bb8a5:	cc                   	int3   
  6bb8a6:	cc                   	int3   
  6bb8a7:	cc                   	int3   

00000000006bb8a8 <pause_request_url_cb>:
  6bb8a8:	e9 53 bf ff ff       	jmpq   6b7800 <pause_request_url_cb.cfi>
  6bb8ad:	cc                   	int3   
  6bb8ae:	cc                   	int3   
  6bb8af:	cc                   	int3   

00000000006bb8b0 <pause_body_cb>:
  6bb8b0:	e9 ab bf ff ff       	jmpq   6b7860 <pause_body_cb.cfi>
  6bb8b5:	cc                   	int3   
  6bb8b6:	cc                   	int3   
  6bb8b7:	cc                   	int3   

00000000006bb8b8 <pause_response_status_cb>:
  6bb8b8:	e9 a3 c0 ff ff       	jmpq   6b7960 <pause_response_status_cb.cfi>
  6bb8bd:	cc                   	int3   
  6bb8be:	cc                   	int3   
  6bb8bf:	cc                   	int3   

00000000006bb8c0 <message_begin_cb>:
  6bb8c0:	e9 cb b4 ff ff       	jmpq   6b6d90 <message_begin_cb.cfi>
  6bb8c5:	cc                   	int3   
  6bb8c6:	cc                   	int3   
  6bb8c7:	cc                   	int3   

00000000006bb8c8 <headers_complete_cb>:
  6bb8c8:	e9 93 b5 ff ff       	jmpq   6b6e60 <headers_complete_cb.cfi>
  6bb8cd:	cc                   	int3   
  6bb8ce:	cc                   	int3   
  6bb8cf:	cc                   	int3   

00000000006bb8d0 <message_complete_cb>:
  6bb8d0:	e9 0b b7 ff ff       	jmpq   6b6fe0 <message_complete_cb.cfi>
  6bb8d5:	cc                   	int3   
  6bb8d6:	cc                   	int3   
  6bb8d7:	cc                   	int3   

00000000006bb8d8 <chunk_header_cb>:
  6bb8d8:	e9 73 b9 ff ff       	jmpq   6b7250 <chunk_header_cb.cfi>
  6bb8dd:	cc                   	int3   
  6bb8de:	cc                   	int3   
  6bb8df:	cc                   	int3   

00000000006bb8e0 <chunk_complete_cb>:
  6bb8e0:	e9 4b ba ff ff       	jmpq   6b7330 <chunk_complete_cb.cfi>
  6bb8e5:	cc                   	int3   
  6bb8e6:	cc                   	int3   
  6bb8e7:	cc                   	int3   

00000000006bb8e8 <dontcall_message_begin_cb>:
  6bb8e8:	e9 33 bb ff ff       	jmpq   6b7420 <dontcall_message_begin_cb.cfi>
  6bb8ed:	cc                   	int3   
  6bb8ee:	cc                   	int3   
  6bb8ef:	cc                   	int3   

00000000006bb8f0 <dontcall_headers_complete_cb>:
  6bb8f0:	e9 ab bc ff ff       	jmpq   6b75a0 <dontcall_headers_complete_cb.cfi>
  6bb8f5:	cc                   	int3   
  6bb8f6:	cc                   	int3   
  6bb8f7:	cc                   	int3   

00000000006bb8f8 <dontcall_message_complete_cb>:
  6bb8f8:	e9 e3 bc ff ff       	jmpq   6b75e0 <dontcall_message_complete_cb.cfi>
  6bb8fd:	cc                   	int3   
  6bb8fe:	cc                   	int3   
  6bb8ff:	cc                   	int3   

00000000006bb900 <dontcall_chunk_header_cb>:
  6bb900:	e9 6b bd ff ff       	jmpq   6b7670 <dontcall_chunk_header_cb.cfi>
  6bb905:	cc                   	int3   
  6bb906:	cc                   	int3   
  6bb907:	cc                   	int3   

00000000006bb908 <dontcall_chunk_complete_cb>:
  6bb908:	e9 a3 bd ff ff       	jmpq   6b76b0 <dontcall_chunk_complete_cb.cfi>
  6bb90d:	cc                   	int3   
  6bb90e:	cc                   	int3   
  6bb90f:	cc                   	int3   

00000000006bb910 <pause_message_begin_cb>:
  6bb910:	e9 db bd ff ff       	jmpq   6b76f0 <pause_message_begin_cb.cfi>
  6bb915:	cc                   	int3   
  6bb916:	cc                   	int3   
  6bb917:	cc                   	int3   

00000000006bb918 <pause_headers_complete_cb>:
  6bb918:	e9 a3 bf ff ff       	jmpq   6b78c0 <pause_headers_complete_cb.cfi>
  6bb91d:	cc                   	int3   
  6bb91e:	cc                   	int3   
  6bb91f:	cc                   	int3   

00000000006bb920 <pause_message_complete_cb>:
  6bb920:	e9 eb bf ff ff       	jmpq   6b7910 <pause_message_complete_cb.cfi>
  6bb925:	cc                   	int3   
  6bb926:	cc                   	int3   
  6bb927:	cc                   	int3   

00000000006bb928 <pause_chunk_header_cb>:
  6bb928:	e9 93 c0 ff ff       	jmpq   6b79c0 <pause_chunk_header_cb.cfi>
  6bb92d:	cc                   	int3   
  6bb92e:	cc                   	int3   
  6bb92f:	cc                   	int3   

00000000006bb930 <pause_chunk_complete_cb>:
  6bb930:	e9 db c0 ff ff       	jmpq   6b7a10 <pause_chunk_complete_cb.cfi>
  6bb935:	cc                   	int3   
  6bb936:	cc                   	int3   
  6bb937:	cc                   	int3   

00000000006bb938 <connect_headers_complete_cb>:
  6bb938:	e9 23 c1 ff ff       	jmpq   6b7a60 <connect_headers_complete_cb.cfi>
  6bb93d:	cc                   	int3   
  6bb93e:	cc                   	int3   
  6bb93f:	cc                   	int3   

00000000006bb940 <connect_message_complete_cb>:
  6bb940:	e9 3b c1 ff ff       	jmpq   6b7a80 <connect_message_complete_cb.cfi>
  6bb945:	cc                   	int3   
  6bb946:	cc                   	int3   
  6bb947:	cc                   	int3   

Disassembly of section .init:

00000000006bb948 <_init>:
  6bb948:	f3 0f 1e fa          	endbr64 
  6bb94c:	48 83 ec 08          	sub    $0x8,%rsp
  6bb950:	48 8b 05 01 13 00 00 	mov    0x1301(%rip),%rax        # 6bcc58 <__gmon_start__@Base>
  6bb957:	48 85 c0             	test   %rax,%rax
  6bb95a:	74 02                	je     6bb95e <_init+0x16>
  6bb95c:	ff d0                	callq  *%rax
  6bb95e:	48 83 c4 08          	add    $0x8,%rsp
  6bb962:	c3                   	retq   

Disassembly of section .fini:

00000000006bb964 <_fini>:
  6bb964:	f3 0f 1e fa          	endbr64 
  6bb968:	48 83 ec 08          	sub    $0x8,%rsp
  6bb96c:	48 83 c4 08          	add    $0x8,%rsp
  6bb970:	c3                   	retq   

Disassembly of section .plt:

00000000006bb980 <__assert_fail@plt-0x10>:
  6bb980:	ff 35 3a f9 00 00    	pushq  0xf93a(%rip)        # 6cb2c0 <__TMC_END__+0x8>
  6bb986:	ff 25 3c f9 00 00    	jmpq   *0xf93c(%rip)        # 6cb2c8 <__TMC_END__+0x10>
  6bb98c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000006bb990 <__assert_fail@plt>:
  6bb990:	ff 25 3a f9 00 00    	jmpq   *0xf93a(%rip)        # 6cb2d0 <__assert_fail@GLIBC_2.2.5>
  6bb996:	68 00 00 00 00       	pushq  $0x0
  6bb99b:	e9 e0 ff ff ff       	jmpq   6bb980 <_fini+0x1c>

00000000006bb9a0 <memchr@plt>:
  6bb9a0:	ff 25 32 f9 00 00    	jmpq   *0xf932(%rip)        # 6cb2d8 <memchr@GLIBC_2.2.5>
  6bb9a6:	68 01 00 00 00       	pushq  $0x1
  6bb9ab:	e9 d0 ff ff ff       	jmpq   6bb980 <_fini+0x1c>

00000000006bb9b0 <fprintf@plt>:
  6bb9b0:	ff 25 2a f9 00 00    	jmpq   *0xf92a(%rip)        # 6cb2e0 <fprintf@GLIBC_2.2.5>
  6bb9b6:	68 02 00 00 00       	pushq  $0x2
  6bb9bb:	e9 c0 ff ff ff       	jmpq   6bb980 <_fini+0x1c>

00000000006bb9c0 <abort@plt>:
  6bb9c0:	ff 25 22 f9 00 00    	jmpq   *0xf922(%rip)        # 6cb2e8 <abort@GLIBC_2.2.5>
  6bb9c6:	68 03 00 00 00       	pushq  $0x3
  6bb9cb:	e9 b0 ff ff ff       	jmpq   6bb980 <_fini+0x1c>

00000000006bb9d0 <exit@plt>:
  6bb9d0:	ff 25 1a f9 00 00    	jmpq   *0xf91a(%rip)        # 6cb2f0 <exit@GLIBC_2.2.5>
  6bb9d6:	68 04 00 00 00       	pushq  $0x4
  6bb9db:	e9 a0 ff ff ff       	jmpq   6bb980 <_fini+0x1c>

00000000006bb9e0 <strlen@plt>:
  6bb9e0:	ff 25 12 f9 00 00    	jmpq   *0xf912(%rip)        # 6cb2f8 <strlen@GLIBC_2.2.5>
  6bb9e6:	68 05 00 00 00       	pushq  $0x5
  6bb9eb:	e9 90 ff ff ff       	jmpq   6bb980 <_fini+0x1c>

00000000006bb9f0 <printf@plt>:
  6bb9f0:	ff 25 0a f9 00 00    	jmpq   *0xf90a(%rip)        # 6cb300 <printf@GLIBC_2.2.5>
  6bb9f6:	68 06 00 00 00       	pushq  $0x6
  6bb9fb:	e9 80 ff ff ff       	jmpq   6bb980 <_fini+0x1c>

00000000006bba00 <memcmp@plt>:
  6bba00:	ff 25 02 f9 00 00    	jmpq   *0xf902(%rip)        # 6cb308 <memcmp@GLIBC_2.2.5>
  6bba06:	68 07 00 00 00       	pushq  $0x7
  6bba0b:	e9 70 ff ff ff       	jmpq   6bb980 <_fini+0x1c>

00000000006bba10 <strcmp@plt>:
  6bba10:	ff 25 fa f8 00 00    	jmpq   *0xf8fa(%rip)        # 6cb310 <strcmp@GLIBC_2.2.5>
  6bba16:	68 08 00 00 00       	pushq  $0x8
  6bba1b:	e9 60 ff ff ff       	jmpq   6bb980 <_fini+0x1c>

00000000006bba20 <sprintf@plt>:
  6bba20:	ff 25 f2 f8 00 00    	jmpq   *0xf8f2(%rip)        # 6cb318 <sprintf@GLIBC_2.2.5>
  6bba26:	68 09 00 00 00       	pushq  $0x9
  6bba2b:	e9 50 ff ff ff       	jmpq   6bb980 <_fini+0x1c>

00000000006bba30 <strcat@plt>:
  6bba30:	ff 25 ea f8 00 00    	jmpq   *0xf8ea(%rip)        # 6cb320 <strcat@GLIBC_2.2.5>
  6bba36:	68 0a 00 00 00       	pushq  $0xa
  6bba3b:	e9 40 ff ff ff       	jmpq   6bb980 <_fini+0x1c>

00000000006bba40 <fflush@plt>:
  6bba40:	ff 25 e2 f8 00 00    	jmpq   *0xf8e2(%rip)        # 6cb328 <fflush@GLIBC_2.2.5>
  6bba46:	68 0b 00 00 00       	pushq  $0xb
  6bba4b:	e9 30 ff ff ff       	jmpq   6bb980 <_fini+0x1c>

00000000006bba50 <puts@plt>:
  6bba50:	ff 25 da f8 00 00    	jmpq   *0xf8da(%rip)        # 6cb330 <puts@GLIBC_2.2.5>
  6bba56:	68 0c 00 00 00       	pushq  $0xc
  6bba5b:	e9 20 ff ff ff       	jmpq   6bb980 <_fini+0x1c>

00000000006bba60 <malloc@plt>:
  6bba60:	ff 25 d2 f8 00 00    	jmpq   *0xf8d2(%rip)        # 6cb338 <malloc@GLIBC_2.2.5>
  6bba66:	68 0d 00 00 00       	pushq  $0xd
  6bba6b:	e9 10 ff ff ff       	jmpq   6bb980 <_fini+0x1c>

00000000006bba70 <strcpy@plt>:
  6bba70:	ff 25 ca f8 00 00    	jmpq   *0xf8ca(%rip)        # 6cb340 <strcpy@GLIBC_2.2.5>
  6bba76:	68 0e 00 00 00       	pushq  $0xe
  6bba7b:	e9 00 ff ff ff       	jmpq   6bb980 <_fini+0x1c>

00000000006bba80 <free@plt>:
  6bba80:	ff 25 c2 f8 00 00    	jmpq   *0xf8c2(%rip)        # 6cb348 <free@GLIBC_2.2.5>
  6bba86:	68 0f 00 00 00       	pushq  $0xf
  6bba8b:	e9 f0 fe ff ff       	jmpq   6bb980 <_fini+0x1c>

00000000006bba90 <fputc@plt>:
  6bba90:	ff 25 ba f8 00 00    	jmpq   *0xf8ba(%rip)        # 6cb350 <fputc@GLIBC_2.2.5>
  6bba96:	68 10 00 00 00       	pushq  $0x10
  6bba9b:	e9 e0 fe ff ff       	jmpq   6bb980 <_fini+0x1c>

00000000006bbaa0 <memset@plt>:
  6bbaa0:	ff 25 b2 f8 00 00    	jmpq   *0xf8b2(%rip)        # 6cb358 <memset@GLIBC_2.2.5>
  6bbaa6:	68 11 00 00 00       	pushq  $0x11
  6bbaab:	e9 d0 fe ff ff       	jmpq   6bb980 <_fini+0x1c>

00000000006bbab0 <memcpy@plt>:
  6bbab0:	ff 25 aa f8 00 00    	jmpq   *0xf8aa(%rip)        # 6cb360 <memcpy@GLIBC_2.14>
  6bbab6:	68 12 00 00 00       	pushq  $0x12
  6bbabb:	e9 c0 fe ff ff       	jmpq   6bb980 <_fini+0x1c>
