
infotel:     file format elf32-i386

Disassembly of section .init:

08048424 <_init>:
 8048424:	55                   	push   %ebp
 8048425:	89 e5                	mov    %esp,%ebp
 8048427:	53                   	push   %ebx
 8048428:	83 ec 04             	sub    $0x4,%esp
 804842b:	e8 00 00 00 00       	call   8048430 <_init+0xc>
 8048430:	5b                   	pop    %ebx
 8048431:	81 c3 b8 0c 00 00    	add    $0xcb8,%ebx
 8048437:	8b 93 fc ff ff ff    	mov    -0x4(%ebx),%edx
 804843d:	85 d2                	test   %edx,%edx
 804843f:	74 05                	je     8048446 <_init+0x22>
 8048441:	e8 1e 00 00 00       	call   8048464 <__gmon_start__@plt>
 8048446:	e8 85 01 00 00       	call   80485d0 <frame_dummy>
 804844b:	e8 b0 04 00 00       	call   8048900 <__do_global_ctors_aux>
 8048450:	58                   	pop    %eax
 8048451:	5b                   	pop    %ebx
 8048452:	c9                   	leave  
 8048453:	c3                   	ret    
Disassembly of section .plt:

08048454 <__gmon_start__@plt-0x10>:
 8048454:	ff 35 ec 90 04 08    	pushl  0x80490ec
 804845a:	ff 25 f0 90 04 08    	jmp    *0x80490f0
 8048460:	00 00                	add    %al,(%eax)
	...

08048464 <__gmon_start__@plt>:
 8048464:	ff 25 f4 90 04 08    	jmp    *0x80490f4
 804846a:	68 00 00 00 00       	push   $0x0
 804846f:	e9 e0 ff ff ff       	jmp    8048454 <_init+0x30>

08048474 <system@plt>:
 8048474:	ff 25 f8 90 04 08    	jmp    *0x80490f8
 804847a:	68 08 00 00 00       	push   $0x8
 804847f:	e9 d0 ff ff ff       	jmp    8048454 <_init+0x30>

08048484 <__libc_start_main@plt>:
 8048484:	ff 25 fc 90 04 08    	jmp    *0x80490fc
 804848a:	68 10 00 00 00       	push   $0x10
 804848f:	e9 c0 ff ff ff       	jmp    8048454 <_init+0x30>

08048494 <fflush@plt>:
 8048494:	ff 25 00 91 04 08    	jmp    *0x8049100
 804849a:	68 18 00 00 00       	push   $0x18
 804849f:	e9 b0 ff ff ff       	jmp    8048454 <_init+0x30>

080484a4 <fclose@plt>:
 80484a4:	ff 25 04 91 04 08    	jmp    *0x8049104
 80484aa:	68 20 00 00 00       	push   $0x20
 80484af:	e9 a0 ff ff ff       	jmp    8048454 <_init+0x30>

080484b4 <memcpy@plt>:
 80484b4:	ff 25 08 91 04 08    	jmp    *0x8049108
 80484ba:	68 28 00 00 00       	push   $0x28
 80484bf:	e9 90 ff ff ff       	jmp    8048454 <_init+0x30>

080484c4 <fopen@plt>:
 80484c4:	ff 25 0c 91 04 08    	jmp    *0x804910c
 80484ca:	68 30 00 00 00       	push   $0x30
 80484cf:	e9 80 ff ff ff       	jmp    8048454 <_init+0x30>

080484d4 <fgetc@plt>:
 80484d4:	ff 25 10 91 04 08    	jmp    *0x8049110
 80484da:	68 38 00 00 00       	push   $0x38
 80484df:	e9 70 ff ff ff       	jmp    8048454 <_init+0x30>

080484e4 <strcpy@plt>:
 80484e4:	ff 25 14 91 04 08    	jmp    *0x8049114
 80484ea:	68 40 00 00 00       	push   $0x40
 80484ef:	e9 60 ff ff ff       	jmp    8048454 <_init+0x30>

080484f4 <printf@plt>:
 80484f4:	ff 25 18 91 04 08    	jmp    *0x8049118
 80484fa:	68 48 00 00 00       	push   $0x48
 80484ff:	e9 50 ff ff ff       	jmp    8048454 <_init+0x30>

08048504 <fprintf@plt>:
 8048504:	ff 25 1c 91 04 08    	jmp    *0x804911c
 804850a:	68 50 00 00 00       	push   $0x50
 804850f:	e9 40 ff ff ff       	jmp    8048454 <_init+0x30>

08048514 <strcat@plt>:
 8048514:	ff 25 20 91 04 08    	jmp    *0x8049120
 804851a:	68 58 00 00 00       	push   $0x58
 804851f:	e9 30 ff ff ff       	jmp    8048454 <_init+0x30>

08048524 <exit@plt>:
 8048524:	ff 25 24 91 04 08    	jmp    *0x8049124
 804852a:	68 60 00 00 00       	push   $0x60
 804852f:	e9 20 ff ff ff       	jmp    8048454 <_init+0x30>
Disassembly of section .text:

08048540 <_start>:
 8048540:	31 ed                	xor    %ebp,%ebp
 8048542:	5e                   	pop    %esi
 8048543:	89 e1                	mov    %esp,%ecx
 8048545:	83 e4 f0             	and    $0xfffffff0,%esp
 8048548:	50                   	push   %eax
 8048549:	54                   	push   %esp
 804854a:	52                   	push   %edx
 804854b:	68 90 88 04 08       	push   $0x8048890
 8048550:	68 a0 88 04 08       	push   $0x80488a0
 8048555:	51                   	push   %ecx
 8048556:	56                   	push   %esi
 8048557:	68 30 88 04 08       	push   $0x8048830
 804855c:	e8 23 ff ff ff       	call   8048484 <__libc_start_main@plt>
 8048561:	f4                   	hlt    
 8048562:	90                   	nop    
 8048563:	90                   	nop    
 8048564:	90                   	nop    
 8048565:	90                   	nop    
 8048566:	90                   	nop    
 8048567:	90                   	nop    
 8048568:	90                   	nop    
 8048569:	90                   	nop    
 804856a:	90                   	nop    
 804856b:	90                   	nop    
 804856c:	90                   	nop    
 804856d:	90                   	nop    
 804856e:	90                   	nop    
 804856f:	90                   	nop    

08048570 <__do_global_dtors_aux>:
 8048570:	55                   	push   %ebp
 8048571:	89 e5                	mov    %esp,%ebp
 8048573:	53                   	push   %ebx
 8048574:	83 ec 04             	sub    $0x4,%esp
 8048577:	80 3d 44 91 04 08 00 	cmpb   $0x0,0x8049144
 804857e:	75 40                	jne    80485c0 <__do_global_dtors_aux+0x50>
 8048580:	8b 15 48 91 04 08    	mov    0x8049148,%edx
 8048586:	b8 0c 90 04 08       	mov    $0x804900c,%eax
 804858b:	2d 08 90 04 08       	sub    $0x8049008,%eax
 8048590:	c1 f8 02             	sar    $0x2,%eax
 8048593:	8d 58 ff             	lea    -0x1(%eax),%ebx
 8048596:	39 da                	cmp    %ebx,%edx
 8048598:	73 1f                	jae    80485b9 <__do_global_dtors_aux+0x49>
 804859a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 80485a0:	8d 42 01             	lea    0x1(%edx),%eax
 80485a3:	a3 48 91 04 08       	mov    %eax,0x8049148
 80485a8:	ff 14 85 08 90 04 08 	call   *0x8049008(,%eax,4)
 80485af:	8b 15 48 91 04 08    	mov    0x8049148,%edx
 80485b5:	39 da                	cmp    %ebx,%edx
 80485b7:	72 e7                	jb     80485a0 <__do_global_dtors_aux+0x30>
 80485b9:	c6 05 44 91 04 08 01 	movb   $0x1,0x8049144
 80485c0:	83 c4 04             	add    $0x4,%esp
 80485c3:	5b                   	pop    %ebx
 80485c4:	5d                   	pop    %ebp
 80485c5:	c3                   	ret    
 80485c6:	8d 76 00             	lea    0x0(%esi),%esi
 80485c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi),%edi

080485d0 <frame_dummy>:
 80485d0:	55                   	push   %ebp
 80485d1:	89 e5                	mov    %esp,%ebp
 80485d3:	83 ec 08             	sub    $0x8,%esp
 80485d6:	a1 10 90 04 08       	mov    0x8049010,%eax
 80485db:	85 c0                	test   %eax,%eax
 80485dd:	74 12                	je     80485f1 <frame_dummy+0x21>
 80485df:	b8 00 00 00 00       	mov    $0x0,%eax
 80485e4:	85 c0                	test   %eax,%eax
 80485e6:	74 09                	je     80485f1 <frame_dummy+0x21>
 80485e8:	c7 04 24 10 90 04 08 	movl   $0x8049010,(%esp)
 80485ef:	ff d0                	call   *%eax
 80485f1:	c9                   	leave  
 80485f2:	c3                   	ret    
 80485f3:	90                   	nop    

080485f4 <appel_problematique>:

char cmd[10000];
FILE *name_file;
int i, c;

void appel_problematique(char *usager) {
 80485f4:	55                   	push   %ebp
 80485f5:	89 e5                	mov    %esp,%ebp
 80485f7:	81 ec 68 04 00 00    	sub    $0x468,%esp
        char tmp_cmd[70];
	char usager_local[1024];

	strcpy(tmp_cmd,"/bin/bash -c \"cat /usr/local/share/tel_data|grep ");
 80485fd:	c7 44 24 08 32 00 00 	movl   $0x32,0x8(%esp)
 8048604:	00 
 8048605:	c7 44 24 04 50 89 04 	movl   $0x8048950,0x4(%esp)
 804860c:	08 
 804860d:	8d 45 ba             	lea    -0x46(%ebp),%eax
 8048610:	89 04 24             	mov    %eax,(%esp)
 8048613:	e8 9c fe ff ff       	call   80484b4 <memcpy@plt>
	name_file = fopen(usager,"r");
 8048618:	c7 44 24 04 82 89 04 	movl   $0x8048982,0x4(%esp)
 804861f:	08 
 8048620:	8b 45 08             	mov    0x8(%ebp),%eax
 8048623:	89 04 24             	mov    %eax,(%esp)
 8048626:	e8 99 fe ff ff       	call   80484c4 <fopen@plt>
 804862b:	a3 74 b8 04 08       	mov    %eax,0x804b874
	if (!name_file) {
 8048630:	a1 74 b8 04 08       	mov    0x804b874,%eax
 8048635:	85 c0                	test   %eax,%eax
 8048637:	75 1f                	jne    8048658 <appel_problematique+0x64>
	  printf("Erreur: fichier \"%s\" introuvable\n",usager);
 8048639:	8b 45 08             	mov    0x8(%ebp),%eax
 804863c:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048640:	c7 04 24 84 89 04 08 	movl   $0x8048984,(%esp)
 8048647:	e8 a8 fe ff ff       	call   80484f4 <printf@plt>
	  exit(0);
 804864c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048653:	e8 cc fe ff ff       	call   8048524 <exit@plt>
	}

	c = fgetc(name_file);
 8048658:	a1 74 b8 04 08       	mov    0x804b874,%eax
 804865d:	89 04 24             	mov    %eax,(%esp)
 8048660:	e8 6f fe ff ff       	call   80484d4 <fgetc@plt>
 8048665:	a3 78 b8 04 08       	mov    %eax,0x804b878
	i = 0;
 804866a:	c7 05 70 b8 04 08 00 	movl   $0x0,0x804b870
 8048671:	00 00 00 
 8048674:	eb 3b                	jmp    80486b1 <appel_problematique+0xbd>
	while (c != EOF) {
	  if (c != '\n') {
 8048676:	a1 78 b8 04 08       	mov    0x804b878,%eax
 804867b:	83 f8 0a             	cmp    $0xa,%eax
 804867e:	74 12                	je     8048692 <appel_problematique+0x9e>
	    usager_local[i] = c;
 8048680:	a1 70 b8 04 08       	mov    0x804b870,%eax
 8048685:	8b 15 78 b8 04 08    	mov    0x804b878,%edx
 804868b:	88 94 05 ba fb ff ff 	mov    %dl,-0x446(%ebp,%eax,1)
	  }
	  c = fgetc(name_file);
 8048692:	a1 74 b8 04 08       	mov    0x804b874,%eax
 8048697:	89 04 24             	mov    %eax,(%esp)
 804869a:	e8 35 fe ff ff       	call   80484d4 <fgetc@plt>
 804869f:	a3 78 b8 04 08       	mov    %eax,0x804b878
	  i++;
 80486a4:	a1 70 b8 04 08       	mov    0x804b870,%eax
 80486a9:	83 c0 01             	add    $0x1,%eax
 80486ac:	a3 70 b8 04 08       	mov    %eax,0x804b870
	  exit(0);
	}

	c = fgetc(name_file);
	i = 0;
	while (c != EOF) {
 80486b1:	a1 78 b8 04 08       	mov    0x804b878,%eax
 80486b6:	83 f8 ff             	cmp    $0xffffffff,%eax
 80486b9:	75 bb                	jne    8048676 <appel_problematique+0x82>
	  }
	  c = fgetc(name_file);
	  i++;
	}

	usager_local[i-1] = 0;
 80486bb:	a1 70 b8 04 08       	mov    0x804b870,%eax
 80486c0:	83 e8 01             	sub    $0x1,%eax
 80486c3:	c6 84 05 ba fb ff ff 	movb   $0x0,-0x446(%ebp,%eax,1)
 80486ca:	00 
        tmp_cmd[70] = 0;
 80486cb:	c6 45 00 00          	movb   $0x0,0x0(%ebp)
	strcpy(cmd,tmp_cmd);
 80486cf:	8d 45 ba             	lea    -0x46(%ebp),%eax
 80486d2:	89 44 24 04          	mov    %eax,0x4(%esp)
 80486d6:	c7 04 24 60 91 04 08 	movl   $0x8049160,(%esp)
 80486dd:	e8 02 fe ff ff       	call   80484e4 <strcpy@plt>

	if (i >= 1024) {
 80486e2:	a1 70 b8 04 08       	mov    0x804b870,%eax
 80486e7:	3d ff 03 00 00       	cmp    $0x3ff,%eax
 80486ec:	7e 32                	jle    8048720 <appel_problematique+0x12c>
		fclose(name_file);
 80486ee:	a1 74 b8 04 08       	mov    0x804b874,%eax
 80486f3:	89 04 24             	mov    %eax,(%esp)
 80486f6:	e8 a9 fd ff ff       	call   80484a4 <fclose@plt>
		fprintf(stdout,"Fichier \"%s\" trop grand\n",usager_local);
 80486fb:	8b 15 40 91 04 08    	mov    0x8049140,%edx
 8048701:	8d 85 ba fb ff ff    	lea    -0x446(%ebp),%eax
 8048707:	89 44 24 08          	mov    %eax,0x8(%esp)
 804870b:	c7 44 24 04 a6 89 04 	movl   $0x80489a6,0x4(%esp)
 8048712:	08 
 8048713:	89 14 24             	mov    %edx,(%esp)
 8048716:	e8 e9 fd ff ff       	call   8048504 <fprintf@plt>
 804871b:	e9 0e 01 00 00       	jmp    804882e <appel_problematique+0x23a>
		return;
	} else {
	  for (i = 0; i < 1024; i++) {
 8048720:	c7 05 70 b8 04 08 00 	movl   $0x0,0x804b870
 8048727:	00 00 00 
 804872a:	e9 ac 00 00 00       	jmp    80487db <appel_problematique+0x1e7>
            if(!(((usager_local[i] >= 'a')
 804872f:	a1 70 b8 04 08       	mov    0x804b870,%eax
 8048734:	0f b6 84 05 ba fb ff 	movzbl -0x446(%ebp,%eax,1),%eax
 804873b:	ff 
 804873c:	3c 60                	cmp    $0x60,%al
 804873e:	7e 11                	jle    8048751 <appel_problematique+0x15d>
 8048740:	a1 70 b8 04 08       	mov    0x804b870,%eax
 8048745:	0f b6 84 05 ba fb ff 	movzbl -0x446(%ebp,%eax,1),%eax
 804874c:	ff 
 804874d:	3c 7a                	cmp    $0x7a,%al
 804874f:	7e 7d                	jle    80487ce <appel_problematique+0x1da>
 8048751:	a1 70 b8 04 08       	mov    0x804b870,%eax
 8048756:	0f b6 84 05 ba fb ff 	movzbl -0x446(%ebp,%eax,1),%eax
 804875d:	ff 
 804875e:	3c 40                	cmp    $0x40,%al
 8048760:	7e 11                	jle    8048773 <appel_problematique+0x17f>
 8048762:	a1 70 b8 04 08       	mov    0x804b870,%eax
 8048767:	0f b6 84 05 ba fb ff 	movzbl -0x446(%ebp,%eax,1),%eax
 804876e:	ff 
 804876f:	3c 5a                	cmp    $0x5a,%al
 8048771:	7e 5b                	jle    80487ce <appel_problematique+0x1da>
 8048773:	a1 70 b8 04 08       	mov    0x804b870,%eax
 8048778:	0f b6 84 05 ba fb ff 	movzbl -0x446(%ebp,%eax,1),%eax
 804877f:	ff 
 8048780:	3c 2f                	cmp    $0x2f,%al
 8048782:	7e 11                	jle    8048795 <appel_problematique+0x1a1>
 8048784:	a1 70 b8 04 08       	mov    0x804b870,%eax
 8048789:	0f b6 84 05 ba fb ff 	movzbl -0x446(%ebp,%eax,1),%eax
 8048790:	ff 
 8048791:	3c 39                	cmp    $0x39,%al
 8048793:	7e 39                	jle    80487ce <appel_problematique+0x1da>
 8048795:	a1 70 b8 04 08       	mov    0x804b870,%eax
 804879a:	0f b6 84 05 ba fb ff 	movzbl -0x446(%ebp,%eax,1),%eax
 80487a1:	ff 
 80487a2:	3c 5f                	cmp    $0x5f,%al
 80487a4:	74 28                	je     80487ce <appel_problematique+0x1da>
 80487a6:	a1 70 b8 04 08       	mov    0x804b870,%eax
 80487ab:	0f b6 84 05 ba fb ff 	movzbl -0x446(%ebp,%eax,1),%eax
 80487b2:	ff 
 80487b3:	3c 2d                	cmp    $0x2d,%al
 80487b5:	74 17                	je     80487ce <appel_problematique+0x1da>
		&& (usager_local[i] <= 'Z'))
		|| ((usager_local[i] >= '0')
		&& (usager_local[i] <= '9'))
		|| (usager_local[i] == '_')
		|| (usager_local[i] == '-'))) {
	      usager_local[i] = 0;
 80487b7:	a1 70 b8 04 08       	mov    0x804b870,%eax
 80487bc:	c6 84 05 ba fb ff ff 	movb   $0x0,-0x446(%ebp,%eax,1)
 80487c3:	00 
	      i = 1024;
 80487c4:	c7 05 70 b8 04 08 00 	movl   $0x400,0x804b870
 80487cb:	04 00 00 
	if (i >= 1024) {
		fclose(name_file);
		fprintf(stdout,"Fichier \"%s\" trop grand\n",usager_local);
		return;
	} else {
	  for (i = 0; i < 1024; i++) {
 80487ce:	a1 70 b8 04 08       	mov    0x804b870,%eax
 80487d3:	83 c0 01             	add    $0x1,%eax
 80487d6:	a3 70 b8 04 08       	mov    %eax,0x804b870
 80487db:	a1 70 b8 04 08       	mov    0x804b870,%eax
 80487e0:	3d ff 03 00 00       	cmp    $0x3ff,%eax
 80487e5:	0f 8e 44 ff ff ff    	jle    804872f <appel_problematique+0x13b>
		|| (usager_local[i] == '-'))) {
	      usager_local[i] = 0;
	      i = 1024;
	    }
	  }
		fclose(name_file);
 80487eb:	a1 74 b8 04 08       	mov    0x804b874,%eax
 80487f0:	89 04 24             	mov    %eax,(%esp)
 80487f3:	e8 ac fc ff ff       	call   80484a4 <fclose@plt>
		strcat(cmd,usager_local);
 80487f8:	8d 85 ba fb ff ff    	lea    -0x446(%ebp),%eax
 80487fe:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048802:	c7 04 24 60 91 04 08 	movl   $0x8049160,(%esp)
 8048809:	e8 06 fd ff ff       	call   8048514 <strcat@plt>
                strcat(cmd,"; exit\"");
 804880e:	c7 44 24 04 bf 89 04 	movl   $0x80489bf,0x4(%esp)
 8048815:	08 
 8048816:	c7 04 24 60 91 04 08 	movl   $0x8049160,(%esp)
 804881d:	e8 f2 fc ff ff       	call   8048514 <strcat@plt>
		system(cmd);
 8048822:	c7 04 24 60 91 04 08 	movl   $0x8049160,(%esp)
 8048829:	e8 46 fc ff ff       	call   8048474 <system@plt>
	}
	return;
}
 804882e:	c9                   	leave  
 804882f:	c3                   	ret    

08048830 <main>:

int main (int argc, char **argv) {
 8048830:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 8048834:	83 e4 f0             	and    $0xfffffff0,%esp
 8048837:	ff 71 fc             	pushl  -0x4(%ecx)
 804883a:	55                   	push   %ebp
 804883b:	89 e5                	mov    %esp,%ebp
 804883d:	53                   	push   %ebx
 804883e:	51                   	push   %ecx
 804883f:	83 ec 20             	sub    $0x20,%esp
 8048842:	89 cb                	mov    %ecx,%ebx
	int i;

	fprintf(stdout, "\n", argv[1]);
 8048844:	8b 43 04             	mov    0x4(%ebx),%eax
 8048847:	83 c0 04             	add    $0x4,%eax
 804884a:	8b 00                	mov    (%eax),%eax
 804884c:	8b 15 40 91 04 08    	mov    0x8049140,%edx
 8048852:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048856:	c7 44 24 04 c7 89 04 	movl   $0x80489c7,0x4(%esp)
 804885d:	08 
 804885e:	89 14 24             	mov    %edx,(%esp)
 8048861:	e8 9e fc ff ff       	call   8048504 <fprintf@plt>
	fflush(stdout);
 8048866:	a1 40 91 04 08       	mov    0x8049140,%eax
 804886b:	89 04 24             	mov    %eax,(%esp)
 804886e:	e8 21 fc ff ff       	call   8048494 <fflush@plt>

	appel_problematique(argv[1]);
 8048873:	8b 43 04             	mov    0x4(%ebx),%eax
 8048876:	83 c0 04             	add    $0x4,%eax
 8048879:	8b 00                	mov    (%eax),%eax
 804887b:	89 04 24             	mov    %eax,(%esp)
 804887e:	e8 71 fd ff ff       	call   80485f4 <appel_problematique>

	exit(0);
 8048883:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 804888a:	e8 95 fc ff ff       	call   8048524 <exit@plt>
 804888f:	90                   	nop    

08048890 <__libc_csu_fini>:
 8048890:	55                   	push   %ebp
 8048891:	89 e5                	mov    %esp,%ebp
 8048893:	5d                   	pop    %ebp
 8048894:	c3                   	ret    
 8048895:	8d 74 26 00          	lea    0x0(%esi),%esi
 8048899:	8d bc 27 00 00 00 00 	lea    0x0(%edi),%edi

080488a0 <__libc_csu_init>:
 80488a0:	55                   	push   %ebp
 80488a1:	89 e5                	mov    %esp,%ebp
 80488a3:	57                   	push   %edi
 80488a4:	56                   	push   %esi
 80488a5:	53                   	push   %ebx
 80488a6:	e8 4f 00 00 00       	call   80488fa <__i686.get_pc_thunk.bx>
 80488ab:	81 c3 3d 08 00 00    	add    $0x83d,%ebx
 80488b1:	83 ec 0c             	sub    $0xc,%esp
 80488b4:	e8 6b fb ff ff       	call   8048424 <_init>
 80488b9:	8d bb 18 ff ff ff    	lea    -0xe8(%ebx),%edi
 80488bf:	8d 83 18 ff ff ff    	lea    -0xe8(%ebx),%eax
 80488c5:	29 c7                	sub    %eax,%edi
 80488c7:	c1 ff 02             	sar    $0x2,%edi
 80488ca:	85 ff                	test   %edi,%edi
 80488cc:	74 24                	je     80488f2 <__libc_csu_init+0x52>
 80488ce:	31 f6                	xor    %esi,%esi
 80488d0:	8b 45 10             	mov    0x10(%ebp),%eax
 80488d3:	89 44 24 08          	mov    %eax,0x8(%esp)
 80488d7:	8b 45 0c             	mov    0xc(%ebp),%eax
 80488da:	89 44 24 04          	mov    %eax,0x4(%esp)
 80488de:	8b 45 08             	mov    0x8(%ebp),%eax
 80488e1:	89 04 24             	mov    %eax,(%esp)
 80488e4:	ff 94 b3 18 ff ff ff 	call   *-0xe8(%ebx,%esi,4)
 80488eb:	83 c6 01             	add    $0x1,%esi
 80488ee:	39 f7                	cmp    %esi,%edi
 80488f0:	75 de                	jne    80488d0 <__libc_csu_init+0x30>
 80488f2:	83 c4 0c             	add    $0xc,%esp
 80488f5:	5b                   	pop    %ebx
 80488f6:	5e                   	pop    %esi
 80488f7:	5f                   	pop    %edi
 80488f8:	5d                   	pop    %ebp
 80488f9:	c3                   	ret    

080488fa <__i686.get_pc_thunk.bx>:
 80488fa:	8b 1c 24             	mov    (%esp),%ebx
 80488fd:	c3                   	ret    
 80488fe:	90                   	nop    
 80488ff:	90                   	nop    

08048900 <__do_global_ctors_aux>:
 8048900:	55                   	push   %ebp
 8048901:	89 e5                	mov    %esp,%ebp
 8048903:	53                   	push   %ebx
 8048904:	83 ec 04             	sub    $0x4,%esp
 8048907:	a1 00 90 04 08       	mov    0x8049000,%eax
 804890c:	83 f8 ff             	cmp    $0xffffffff,%eax
 804890f:	74 13                	je     8048924 <__do_global_ctors_aux+0x24>
 8048911:	bb 00 90 04 08       	mov    $0x8049000,%ebx
 8048916:	66 90                	xchg   %ax,%ax
 8048918:	83 eb 04             	sub    $0x4,%ebx
 804891b:	ff d0                	call   *%eax
 804891d:	8b 03                	mov    (%ebx),%eax
 804891f:	83 f8 ff             	cmp    $0xffffffff,%eax
 8048922:	75 f4                	jne    8048918 <__do_global_ctors_aux+0x18>
 8048924:	83 c4 04             	add    $0x4,%esp
 8048927:	5b                   	pop    %ebx
 8048928:	5d                   	pop    %ebp
 8048929:	c3                   	ret    
 804892a:	90                   	nop    
 804892b:	90                   	nop    
Disassembly of section .fini:

0804892c <_fini>:
 804892c:	55                   	push   %ebp
 804892d:	89 e5                	mov    %esp,%ebp
 804892f:	53                   	push   %ebx
 8048930:	83 ec 04             	sub    $0x4,%esp
 8048933:	e8 00 00 00 00       	call   8048938 <_fini+0xc>
 8048938:	5b                   	pop    %ebx
 8048939:	81 c3 b0 07 00 00    	add    $0x7b0,%ebx
 804893f:	e8 2c fc ff ff       	call   8048570 <__do_global_dtors_aux>
 8048944:	59                   	pop    %ecx
 8048945:	5b                   	pop    %ebx
 8048946:	c9                   	leave  
 8048947:	c3                   	ret    
