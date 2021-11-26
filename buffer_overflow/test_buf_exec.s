
test_buf:     file format elf32-i386

Disassembly of section .init:

08048404 <_init>:
 8048404:	55                   	push   %ebp
 8048405:	89 e5                	mov    %esp,%ebp
 8048407:	53                   	push   %ebx
 8048408:	83 ec 04             	sub    $0x4,%esp
 804840b:	e8 00 00 00 00       	call   8048410 <_init+0xc>
 8048410:	5b                   	pop    %ebx
 8048411:	81 c3 d8 0c 00 00    	add    $0xcd8,%ebx
 8048417:	8b 93 fc ff ff ff    	mov    -0x4(%ebx),%edx
 804841d:	85 d2                	test   %edx,%edx
 804841f:	74 05                	je     8048426 <_init+0x22>
 8048421:	e8 1e 00 00 00       	call   8048444 <__gmon_start__@plt>
 8048426:	e8 75 01 00 00       	call   80485a0 <frame_dummy>
 804842b:	e8 d0 03 00 00       	call   8048800 <__do_global_ctors_aux>
 8048430:	58                   	pop    %eax
 8048431:	5b                   	pop    %ebx
 8048432:	c9                   	leave  
 8048433:	c3                   	ret    
Disassembly of section .plt:

08048434 <__gmon_start__@plt-0x10>:
 8048434:	ff 35 ec 90 04 08    	pushl  0x80490ec
 804843a:	ff 25 f0 90 04 08    	jmp    *0x80490f0
 8048440:	00 00                	add    %al,(%eax)
	...

08048444 <__gmon_start__@plt>:
 8048444:	ff 25 f4 90 04 08    	jmp    *0x80490f4
 804844a:	68 00 00 00 00       	push   $0x0
 804844f:	e9 e0 ff ff ff       	jmp    8048434 <_init+0x30>

08048454 <system@plt>:
 8048454:	ff 25 f8 90 04 08    	jmp    *0x80490f8
 804845a:	68 08 00 00 00       	push   $0x8
 804845f:	e9 d0 ff ff ff       	jmp    8048434 <_init+0x30>

08048464 <__libc_start_main@plt>:
 8048464:	ff 25 fc 90 04 08    	jmp    *0x80490fc
 804846a:	68 10 00 00 00       	push   $0x10
 804846f:	e9 c0 ff ff ff       	jmp    8048434 <_init+0x30>

08048474 <fflush@plt>:
 8048474:	ff 25 00 91 04 08    	jmp    *0x8049100
 804847a:	68 18 00 00 00       	push   $0x18
 804847f:	e9 b0 ff ff ff       	jmp    8048434 <_init+0x30>

08048484 <fclose@plt>:
 8048484:	ff 25 04 91 04 08    	jmp    *0x8049104
 804848a:	68 20 00 00 00       	push   $0x20
 804848f:	e9 a0 ff ff ff       	jmp    8048434 <_init+0x30>

08048494 <memcpy@plt>:
 8048494:	ff 25 08 91 04 08    	jmp    *0x8049108
 804849a:	68 28 00 00 00       	push   $0x28
 804849f:	e9 90 ff ff ff       	jmp    8048434 <_init+0x30>

080484a4 <fopen@plt>:
 80484a4:	ff 25 0c 91 04 08    	jmp    *0x804910c
 80484aa:	68 30 00 00 00       	push   $0x30
 80484af:	e9 80 ff ff ff       	jmp    8048434 <_init+0x30>

080484b4 <fgetc@plt>:
 80484b4:	ff 25 10 91 04 08    	jmp    *0x8049110
 80484ba:	68 38 00 00 00       	push   $0x38
 80484bf:	e9 70 ff ff ff       	jmp    8048434 <_init+0x30>

080484c4 <fwrite@plt>:
 80484c4:	ff 25 14 91 04 08    	jmp    *0x8049114
 80484ca:	68 40 00 00 00       	push   $0x40
 80484cf:	e9 60 ff ff ff       	jmp    8048434 <_init+0x30>

080484d4 <fprintf@plt>:
 80484d4:	ff 25 18 91 04 08    	jmp    *0x8049118
 80484da:	68 48 00 00 00       	push   $0x48
 80484df:	e9 50 ff ff ff       	jmp    8048434 <_init+0x30>

080484e4 <strcat@plt>:
 80484e4:	ff 25 1c 91 04 08    	jmp    *0x804911c
 80484ea:	68 50 00 00 00       	push   $0x50
 80484ef:	e9 40 ff ff ff       	jmp    8048434 <_init+0x30>

080484f4 <exit@plt>:
 80484f4:	ff 25 20 91 04 08    	jmp    *0x8049120
 80484fa:	68 58 00 00 00       	push   $0x58
 80484ff:	e9 30 ff ff ff       	jmp    8048434 <_init+0x30>
Disassembly of section .text:

08048510 <_start>:
 8048510:	31 ed                	xor    %ebp,%ebp
 8048512:	5e                   	pop    %esi
 8048513:	89 e1                	mov    %esp,%ecx
 8048515:	83 e4 f0             	and    $0xfffffff0,%esp
 8048518:	50                   	push   %eax
 8048519:	54                   	push   %esp
 804851a:	52                   	push   %edx
 804851b:	68 90 87 04 08       	push   $0x8048790
 8048520:	68 a0 87 04 08       	push   $0x80487a0
 8048525:	51                   	push   %ecx
 8048526:	56                   	push   %esi
 8048527:	68 28 87 04 08       	push   $0x8048728
 804852c:	e8 33 ff ff ff       	call   8048464 <__libc_start_main@plt>
 8048531:	f4                   	hlt    
 8048532:	90                   	nop    
 8048533:	90                   	nop    
 8048534:	90                   	nop    
 8048535:	90                   	nop    
 8048536:	90                   	nop    
 8048537:	90                   	nop    
 8048538:	90                   	nop    
 8048539:	90                   	nop    
 804853a:	90                   	nop    
 804853b:	90                   	nop    
 804853c:	90                   	nop    
 804853d:	90                   	nop    
 804853e:	90                   	nop    
 804853f:	90                   	nop    

08048540 <__do_global_dtors_aux>:
 8048540:	55                   	push   %ebp
 8048541:	89 e5                	mov    %esp,%ebp
 8048543:	53                   	push   %ebx
 8048544:	83 ec 04             	sub    $0x4,%esp
 8048547:	80 3d 44 91 04 08 00 	cmpb   $0x0,0x8049144
 804854e:	75 40                	jne    8048590 <__do_global_dtors_aux+0x50>
 8048550:	8b 15 48 91 04 08    	mov    0x8049148,%edx
 8048556:	b8 0c 90 04 08       	mov    $0x804900c,%eax
 804855b:	2d 08 90 04 08       	sub    $0x8049008,%eax
 8048560:	c1 f8 02             	sar    $0x2,%eax
 8048563:	8d 58 ff             	lea    -0x1(%eax),%ebx
 8048566:	39 da                	cmp    %ebx,%edx
 8048568:	73 1f                	jae    8048589 <__do_global_dtors_aux+0x49>
 804856a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8048570:	8d 42 01             	lea    0x1(%edx),%eax
 8048573:	a3 48 91 04 08       	mov    %eax,0x8049148
 8048578:	ff 14 85 08 90 04 08 	call   *0x8049008(,%eax,4)
 804857f:	8b 15 48 91 04 08    	mov    0x8049148,%edx
 8048585:	39 da                	cmp    %ebx,%edx
 8048587:	72 e7                	jb     8048570 <__do_global_dtors_aux+0x30>
 8048589:	c6 05 44 91 04 08 01 	movb   $0x1,0x8049144
 8048590:	83 c4 04             	add    $0x4,%esp
 8048593:	5b                   	pop    %ebx
 8048594:	5d                   	pop    %ebp
 8048595:	c3                   	ret    
 8048596:	8d 76 00             	lea    0x0(%esi),%esi
 8048599:	8d bc 27 00 00 00 00 	lea    0x0(%edi),%edi

080485a0 <frame_dummy>:
 80485a0:	55                   	push   %ebp
 80485a1:	89 e5                	mov    %esp,%ebp
 80485a3:	83 ec 08             	sub    $0x8,%esp
 80485a6:	a1 10 90 04 08       	mov    0x8049010,%eax
 80485ab:	85 c0                	test   %eax,%eax
 80485ad:	74 12                	je     80485c1 <frame_dummy+0x21>
 80485af:	b8 00 00 00 00       	mov    $0x0,%eax
 80485b4:	85 c0                	test   %eax,%eax
 80485b6:	74 09                	je     80485c1 <frame_dummy+0x21>
 80485b8:	c7 04 24 10 90 04 08 	movl   $0x8049010,(%esp)
 80485bf:	ff d0                	call   *%eax
 80485c1:	c9                   	leave  
 80485c2:	c3                   	ret    
 80485c3:	90                   	nop    

080485c4 <appel_problematique>:
char cmd[10000];
int variable_nulle = 0;
FILE *name_file;
int i, c;

void appel_problematique(char *usager) {
 80485c4:	55                   	push   %ebp
 80485c5:	89 e5                	mov    %esp,%ebp
 80485c7:	81 ec 18 04 00 00    	sub    $0x418,%esp
	char usager_local[1024];

	strcpy(cmd,"echo \"Pouvez-vous faire afficher ce message?\"");
 80485cd:	c7 44 24 08 2e 00 00 	movl   $0x2e,0x8(%esp)
 80485d4:	00 
 80485d5:	c7 44 24 04 50 88 04 	movl   $0x8048850,0x4(%esp)
 80485dc:	08 
 80485dd:	c7 04 24 60 91 04 08 	movl   $0x8049160,(%esp)
 80485e4:	e8 ab fe ff ff       	call   8048494 <memcpy@plt>
	name_file = fopen(usager,"r");
 80485e9:	c7 44 24 04 7e 88 04 	movl   $0x804887e,0x4(%esp)
 80485f0:	08 
 80485f1:	8b 45 08             	mov    0x8(%ebp),%eax
 80485f4:	89 04 24             	mov    %eax,(%esp)
 80485f7:	e8 a8 fe ff ff       	call   80484a4 <fopen@plt>
 80485fc:	a3 74 b8 04 08       	mov    %eax,0x804b874
	c = fgetc(name_file);
 8048601:	a1 74 b8 04 08       	mov    0x804b874,%eax
 8048606:	89 04 24             	mov    %eax,(%esp)
 8048609:	e8 a6 fe ff ff       	call   80484b4 <fgetc@plt>
 804860e:	a3 78 b8 04 08       	mov    %eax,0x804b878
	i = 0;
 8048613:	c7 05 70 b8 04 08 00 	movl   $0x0,0x804b870
 804861a:	00 00 00 
 804861d:	eb 31                	jmp    8048650 <appel_problematique+0x8c>
	while (c != EOF) {
		usager_local[i] = c;
 804861f:	8b 15 70 b8 04 08    	mov    0x804b870,%edx
 8048625:	a1 78 b8 04 08       	mov    0x804b878,%eax
 804862a:	88 84 15 00 fc ff ff 	mov    %al,-0x400(%ebp,%edx,1)
		c = fgetc(name_file);
 8048631:	a1 74 b8 04 08       	mov    0x804b874,%eax
 8048636:	89 04 24             	mov    %eax,(%esp)
 8048639:	e8 76 fe ff ff       	call   80484b4 <fgetc@plt>
 804863e:	a3 78 b8 04 08       	mov    %eax,0x804b878
		i++;
 8048643:	a1 70 b8 04 08       	mov    0x804b870,%eax
 8048648:	83 c0 01             	add    $0x1,%eax
 804864b:	a3 70 b8 04 08       	mov    %eax,0x804b870

	strcpy(cmd,"echo \"Pouvez-vous faire afficher ce message?\"");
	name_file = fopen(usager,"r");
	c = fgetc(name_file);
	i = 0;
	while (c != EOF) {
 8048650:	a1 78 b8 04 08       	mov    0x804b878,%eax
 8048655:	83 f8 ff             	cmp    $0xffffffff,%eax
 8048658:	75 c5                	jne    804861f <appel_problematique+0x5b>
		usager_local[i] = c;
		c = fgetc(name_file);
		i++;
	}
	usager_local[i-1] = 0;
 804865a:	a1 70 b8 04 08       	mov    0x804b870,%eax
 804865f:	83 e8 01             	sub    $0x1,%eax
 8048662:	c6 84 05 00 fc ff ff 	movb   $0x0,-0x400(%ebp,%eax,1)
 8048669:	00 

	if (i > 1024 ) {
 804866a:	a1 70 b8 04 08       	mov    0x804b870,%eax
 804866f:	3d 00 04 00 00       	cmp    $0x400,%eax
 8048674:	7e 34                	jle    80486aa <appel_problematique+0xe6>
		fclose(name_file);
 8048676:	a1 74 b8 04 08       	mov    0x804b874,%eax
 804867b:	89 04 24             	mov    %eax,(%esp)
 804867e:	e8 01 fe ff ff       	call   8048484 <fclose@plt>
		fprintf(stdout,"Fichier trop gros!\n");
 8048683:	a1 40 91 04 08       	mov    0x8049140,%eax
 8048688:	89 44 24 0c          	mov    %eax,0xc(%esp)
 804868c:	c7 44 24 08 13 00 00 	movl   $0x13,0x8(%esp)
 8048693:	00 
 8048694:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 804869b:	00 
 804869c:	c7 04 24 80 88 04 08 	movl   $0x8048880,(%esp)
 80486a3:	e8 1c fe ff ff       	call   80484c4 <fwrite@plt>
 80486a8:	eb 7c                	jmp    8048726 <appel_problematique+0x162>
		return;
	} else {
		fclose(name_file);
 80486aa:	a1 74 b8 04 08       	mov    0x804b874,%eax
 80486af:	89 04 24             	mov    %eax,(%esp)
 80486b2:	e8 cd fd ff ff       	call   8048484 <fclose@plt>
		strcpy(cmd,"echo ");
 80486b7:	c7 44 24 08 06 00 00 	movl   $0x6,0x8(%esp)
 80486be:	00 
 80486bf:	c7 44 24 04 94 88 04 	movl   $0x8048894,0x4(%esp)
 80486c6:	08 
 80486c7:	c7 04 24 60 91 04 08 	movl   $0x8049160,(%esp)
 80486ce:	e8 c1 fd ff ff       	call   8048494 <memcpy@plt>
		strcat(cmd,usager_local);
 80486d3:	8d 85 00 fc ff ff    	lea    -0x400(%ebp),%eax
 80486d9:	89 44 24 04          	mov    %eax,0x4(%esp)
 80486dd:	c7 04 24 60 91 04 08 	movl   $0x8049160,(%esp)
 80486e4:	e8 fb fd ff ff       	call   80484e4 <strcat@plt>
		system(cmd);
 80486e9:	c7 04 24 60 91 04 08 	movl   $0x8049160,(%esp)
 80486f0:	e8 5f fd ff ff       	call   8048454 <system@plt>
	}

	if (variable_nulle) {
 80486f5:	a1 4c 91 04 08       	mov    0x804914c,%eax
 80486fa:	85 c0                	test   %eax,%eax
 80486fc:	74 28                	je     8048726 <appel_problematique+0x162>
	  strcpy(cmd,"echo \"Ce message ne devrait jamais etre affiche...\"");
 80486fe:	c7 44 24 08 34 00 00 	movl   $0x34,0x8(%esp)
 8048705:	00 
 8048706:	c7 44 24 04 9c 88 04 	movl   $0x804889c,0x4(%esp)
 804870d:	08 
 804870e:	c7 04 24 60 91 04 08 	movl   $0x8049160,(%esp)
 8048715:	e8 7a fd ff ff       	call   8048494 <memcpy@plt>
	  system(cmd);
 804871a:	c7 04 24 60 91 04 08 	movl   $0x8049160,(%esp)
 8048721:	e8 2e fd ff ff       	call   8048454 <system@plt>
	}

	return;
}
 8048726:	c9                   	leave  
 8048727:	c3                   	ret    

08048728 <main>:

int main (int argc, char **argv) {
 8048728:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 804872c:	83 e4 f0             	and    $0xfffffff0,%esp
 804872f:	ff 71 fc             	pushl  -0x4(%ecx)
 8048732:	55                   	push   %ebp
 8048733:	89 e5                	mov    %esp,%ebp
 8048735:	53                   	push   %ebx
 8048736:	51                   	push   %ecx
 8048737:	83 ec 20             	sub    $0x20,%esp
 804873a:	89 cb                	mov    %ecx,%ebx
	int i;

	fprintf(stdout, "Lecture des donnees du fichier: \"%s\"\n", argv[1]);
 804873c:	8b 43 04             	mov    0x4(%ebx),%eax
 804873f:	83 c0 04             	add    $0x4,%eax
 8048742:	8b 00                	mov    (%eax),%eax
 8048744:	8b 15 40 91 04 08    	mov    0x8049140,%edx
 804874a:	89 44 24 08          	mov    %eax,0x8(%esp)
 804874e:	c7 44 24 04 d0 88 04 	movl   $0x80488d0,0x4(%esp)
 8048755:	08 
 8048756:	89 14 24             	mov    %edx,(%esp)
 8048759:	e8 76 fd ff ff       	call   80484d4 <fprintf@plt>
	fflush(stdout);
 804875e:	a1 40 91 04 08       	mov    0x8049140,%eax
 8048763:	89 04 24             	mov    %eax,(%esp)
 8048766:	e8 09 fd ff ff       	call   8048474 <fflush@plt>

	appel_problematique(argv[1]);
 804876b:	8b 43 04             	mov    0x4(%ebx),%eax
 804876e:	83 c0 04             	add    $0x4,%eax
 8048771:	8b 00                	mov    (%eax),%eax
 8048773:	89 04 24             	mov    %eax,(%esp)
 8048776:	e8 49 fe ff ff       	call   80485c4 <appel_problematique>

	exit(0);
 804877b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048782:	e8 6d fd ff ff       	call   80484f4 <exit@plt>
 8048787:	90                   	nop    
 8048788:	90                   	nop    
 8048789:	90                   	nop    
 804878a:	90                   	nop    
 804878b:	90                   	nop    
 804878c:	90                   	nop    
 804878d:	90                   	nop    
 804878e:	90                   	nop    
 804878f:	90                   	nop    

08048790 <__libc_csu_fini>:
 8048790:	55                   	push   %ebp
 8048791:	89 e5                	mov    %esp,%ebp
 8048793:	5d                   	pop    %ebp
 8048794:	c3                   	ret    
 8048795:	8d 74 26 00          	lea    0x0(%esi),%esi
 8048799:	8d bc 27 00 00 00 00 	lea    0x0(%edi),%edi

080487a0 <__libc_csu_init>:
 80487a0:	55                   	push   %ebp
 80487a1:	89 e5                	mov    %esp,%ebp
 80487a3:	57                   	push   %edi
 80487a4:	56                   	push   %esi
 80487a5:	53                   	push   %ebx
 80487a6:	e8 4f 00 00 00       	call   80487fa <__i686.get_pc_thunk.bx>
 80487ab:	81 c3 3d 09 00 00    	add    $0x93d,%ebx
 80487b1:	83 ec 0c             	sub    $0xc,%esp
 80487b4:	e8 4b fc ff ff       	call   8048404 <_init>
 80487b9:	8d bb 18 ff ff ff    	lea    -0xe8(%ebx),%edi
 80487bf:	8d 83 18 ff ff ff    	lea    -0xe8(%ebx),%eax
 80487c5:	29 c7                	sub    %eax,%edi
 80487c7:	c1 ff 02             	sar    $0x2,%edi
 80487ca:	85 ff                	test   %edi,%edi
 80487cc:	74 24                	je     80487f2 <__libc_csu_init+0x52>
 80487ce:	31 f6                	xor    %esi,%esi
 80487d0:	8b 45 10             	mov    0x10(%ebp),%eax
 80487d3:	89 44 24 08          	mov    %eax,0x8(%esp)
 80487d7:	8b 45 0c             	mov    0xc(%ebp),%eax
 80487da:	89 44 24 04          	mov    %eax,0x4(%esp)
 80487de:	8b 45 08             	mov    0x8(%ebp),%eax
 80487e1:	89 04 24             	mov    %eax,(%esp)
 80487e4:	ff 94 b3 18 ff ff ff 	call   *-0xe8(%ebx,%esi,4)
 80487eb:	83 c6 01             	add    $0x1,%esi
 80487ee:	39 f7                	cmp    %esi,%edi
 80487f0:	75 de                	jne    80487d0 <__libc_csu_init+0x30>
 80487f2:	83 c4 0c             	add    $0xc,%esp
 80487f5:	5b                   	pop    %ebx
 80487f6:	5e                   	pop    %esi
 80487f7:	5f                   	pop    %edi
 80487f8:	5d                   	pop    %ebp
 80487f9:	c3                   	ret    

080487fa <__i686.get_pc_thunk.bx>:
 80487fa:	8b 1c 24             	mov    (%esp),%ebx
 80487fd:	c3                   	ret    
 80487fe:	90                   	nop    
 80487ff:	90                   	nop    

08048800 <__do_global_ctors_aux>:
 8048800:	55                   	push   %ebp
 8048801:	89 e5                	mov    %esp,%ebp
 8048803:	53                   	push   %ebx
 8048804:	83 ec 04             	sub    $0x4,%esp
 8048807:	a1 00 90 04 08       	mov    0x8049000,%eax
 804880c:	83 f8 ff             	cmp    $0xffffffff,%eax
 804880f:	74 13                	je     8048824 <__do_global_ctors_aux+0x24>
 8048811:	bb 00 90 04 08       	mov    $0x8049000,%ebx
 8048816:	66 90                	xchg   %ax,%ax
 8048818:	83 eb 04             	sub    $0x4,%ebx
 804881b:	ff d0                	call   *%eax
 804881d:	8b 03                	mov    (%ebx),%eax
 804881f:	83 f8 ff             	cmp    $0xffffffff,%eax
 8048822:	75 f4                	jne    8048818 <__do_global_ctors_aux+0x18>
 8048824:	83 c4 04             	add    $0x4,%esp
 8048827:	5b                   	pop    %ebx
 8048828:	5d                   	pop    %ebp
 8048829:	c3                   	ret    
 804882a:	90                   	nop    
 804882b:	90                   	nop    
Disassembly of section .fini:

0804882c <_fini>:
 804882c:	55                   	push   %ebp
 804882d:	89 e5                	mov    %esp,%ebp
 804882f:	53                   	push   %ebx
 8048830:	83 ec 04             	sub    $0x4,%esp
 8048833:	e8 00 00 00 00       	call   8048838 <_fini+0xc>
 8048838:	5b                   	pop    %ebx
 8048839:	81 c3 b0 08 00 00    	add    $0x8b0,%ebx
 804883f:	e8 fc fc ff ff       	call   8048540 <__do_global_dtors_aux>
 8048844:	59                   	pop    %ecx
 8048845:	5b                   	pop    %ebx
 8048846:	c9                   	leave  
 8048847:	c3                   	ret    
