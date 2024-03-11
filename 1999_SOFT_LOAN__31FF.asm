;;; Segment 31FF (31FF:0000)
31FF:0000 83 C4 06 5E 8B E5 5D CB                         ...^..].        

;; fn31FF_0008: 31FF:0008
;;   Called from:
;;     21DC:109E (in fn21DC_0EC2)
fn31FF_0008 proc
	mov	word ptr [1A4Ah],40h
	mov	word ptr [1A4Ch],200h
	mov	word ptr [1A28h],0h
	mov	word ptr [1A26h],100h
	push	word ptr [1A4Ch]
	mov	ax,1A46h
	push	ds
	push	ax
	call	far 21DCh:06DCh
	add	sp,6h
	or	ax,ax
	jz	0066h

l31FF_0035:
	push	word ptr [1A4Ch]
	sub	ax,ax
	push	ax
	push	word ptr [1A48h]
	push	word ptr [1A46h]
	call	far 2017h:0228h
	add	sp,8h
	push	word ptr [1A26h]
	mov	ax,1A22h
	push	ds
	push	ax
	call	far 21DCh:06DCh
	add	sp,6h
	or	ax,ax
	jz	0066h

l31FF_0061:
	mov	ax,1h
	retf
31FF:0065                90                                    .          

l31FF_0066:
	sub	ax,ax
	retf
31FF:0069                            90                            .      

;; fn31FF_006A: 31FF:006A
;;   Called from:
;;     31FF:1083 (in fn31FF_0F20)
;;     31FF:13BE (in fn31FF_0F20)
;;     31FF:1414 (in fn31FF_0F20)
;;     31FF:17B1 (in fn31FF_0F20)
fn31FF_006A proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	mov	word ptr [bp-2h],0h
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 2017h:03F5h
	add	sp,4h
	mov	[bp-4h],ax
	push	ax
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	mov	ax,10E2h
	push	ds
	push	ax
	call	far 2017h:02ECh
	add	sp,0Ah
	mov	ax,[bp-4h]
	add	[bp-2h],ax
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	call	far 2017h:03F5h
	add	sp,4h
	mov	[bp-4h],ax
	push	ax
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	mov	ax,[bp-2h]
	add	ax,10E2h
	push	ds
	push	ax
	call	far 2017h:02ECh
	add	sp,0Ah
	mov	ax,[bp-4h]
	add	[bp-2h],ax
	push	word ptr [bp+10h]
	push	word ptr [bp+0Eh]
	call	far 2017h:03F5h
	add	sp,4h
	mov	[bp-4h],ax
	push	ax
	push	word ptr [bp+10h]
	push	word ptr [bp+0Eh]
	mov	ax,[bp-2h]
	add	ax,10E2h
	push	ds
	push	ax
	call	far 2017h:02ECh
	mov	ax,[bp-4h]
	add	[bp-2h],ax
	mov	bx,[bp-2h]
	mov	byte ptr [bx+10E2h],0h
	mov	sp,bp
	pop	bp
	retf
31FF:0105                90                                    .          

;; fn31FF_0106: 31FF:0106
;;   Called from:
;;     31FF:1863 (in fn31FF_17DA)
fn31FF_0106 proc
	push	bp
	mov	bp,sp
	sub	sp,6h
	push	di
	push	si
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 38ADh:0118h
	add	sp,6h
	mov	[bp-2h],ax
	mov	ax,[bp+0Ah]
	cmp	[bp-2h],ax
	jc	012Dh

l31FF_012A:
	jmp	0200h

l31FF_012D:
	mov	bx,[bp-2h]
	les	si,[bp+6h]
	mov	al,es:[bx+si]
	mov	[bp-6h],al
	sub	ah,ah
	push	ax
	call	far 38ADh:0040h
	add	sp,2h
	test	al,1h
	jnz	0151h

l31FF_0148:
	cmp	byte ptr [bp-6h],5Fh
	jz	0151h

l31FF_014E:
	jmp	0200h

l31FF_0151:
	mov	word ptr [bp-4h],0h
	jmp	01B1h

l31FF_0158:
	cmp	word ptr [bp-4h],0Ah
	jnc	01B9h

l31FF_015E:
	mov	bx,[bp-2h]
	les	di,[bp+6h]
	mov	al,es:[bx+di]
	mov	[bp-6h],al
	sub	ah,ah
	mov	si,ax
	push	si
	call	far 38ADh:0040h
	add	sp,2h
	test	al,1h
	jnz	018Eh

l31FF_017B:
	cmp	byte ptr [bp-6h],5Fh
	jz	018Eh

l31FF_0181:
	push	si
	call	far 38ADh:0040h
	add	sp,2h
	test	al,2h
	jz	01B9h

l31FF_018E:
	mov	bx,[bp-2h]
	les	si,[bp+6h]
	mov	al,es:[bx+si]
	sub	ah,ah
	push	ax
	call	far 38ADh:001Eh
	add	sp,2h
	les	bx,[bp+0Ch]
	inc	word ptr [bp+0Ch]
	mov	es:[bx],al
	inc	word ptr [bp-2h]
	inc	word ptr [bp-4h]

l31FF_01B1:
	mov	ax,[bp+0Ah]
	cmp	[bp-2h],ax
	jc	0158h

l31FF_01B9:
	mov	ax,[bp+0Ah]
	cmp	[bp-2h],ax
	jnc	01E2h

l31FF_01C1:
	mov	bx,[bp-2h]
	les	si,[bp+6h]
	mov	al,es:[bx+si]
	mov	[bp-6h],al
	sub	ah,ah
	push	ax
	call	far 38ADh:0040h
	add	sp,2h
	test	al,1h
	jnz	01FAh

l31FF_01DC:
	cmp	byte ptr [bp-6h],5Fh
	jz	01FAh

l31FF_01E2:
	mov	bx,[bp-2h]
	les	si,[bp+6h]
	mov	al,es:[bx+si]
	sub	ah,ah
	push	ax
	call	far 38ADh:0040h
	add	sp,2h
	test	al,2h
	jz	0205h

l31FF_01FA:
	inc	word ptr [bp-2h]
	jmp	01B9h
31FF:01FF                                              90                .

l31FF_0200:
	mov	word ptr [bp-2h],0h

l31FF_0205:
	les	bx,[bp+0Ch]
	mov	byte ptr es:[bx],0h
	mov	ax,[bp-2h]
	pop	si
	pop	di
	mov	sp,bp
	pop	bp
	retf
31FF:0215                90                                    .          

;; fn31FF_0216: 31FF:0216
;;   Called from:
;;     31FF:0614 (in fn31FF_026E)
fn31FF_0216 proc
	push	bp
	mov	bp,sp
	mov	ax,[1A32h]
	mov	[1A34h],ax
	mov	al,[bp+6h]
	sub	ah,ah
	push	ax
	mov	ax,[1A30h]
	sub	ax,[1A32h]
	push	ax
	mov	ax,[1A32h]
	add	ax,[1A2Ch]
	mov	dx,[1A2Eh]
	push	dx
	push	ax
	call	far 2017h:035Bh
	add	sp,8h
	add	[1A32h],ax
	mov	ax,[1A30h]
	cmp	[1A32h],ax
	jnz	025Eh

l31FF_024F:
	mov	word ptr [1A2Ah],64h
	mov	word ptr [1A36h],0h
	pop	bp
	retf
31FF:025D                                        90                    .  

l31FF_025E:
	mov	ax,[1A32h]
	sub	ax,[1A34h]
	mov	[1A36h],ax
	inc	word ptr [1A32h]
	pop	bp
	retf

;; fn31FF_026E: 31FF:026E
;;   Called from:
;;     31FF:0F7F (in fn31FF_0F20)
;;     31FF:1337 (in fn31FF_0F20)
;;     31FF:137A (in fn31FF_0F20)
;;     31FF:16DA (in fn31FF_0F20)
fn31FF_026E proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	push	si
	mov	ax,[1A30h]
	sub	ax,[1A32h]
	push	ax
	mov	ax,[1A32h]
	add	ax,[1A2Ch]
	mov	dx,[1A2Eh]
	push	dx
	push	ax
	call	far 38ADh:0118h
	add	sp,6h
	add	[1A32h],ax
	mov	ax,[1A30h]
	cmp	[1A32h],ax
	jnz	02AEh

l31FF_029F:
	mov	word ptr [1A2Ah],0C8h
	mov	ax,6Eh
	pop	si
	mov	sp,bp
	pop	bp
	retf
31FF:02AD                                        90                    .  

l31FF_02AE:
	mov	bx,[1A32h]
	les	si,[1A2Ch]
	mov	al,es:[bx+si]
	sub	ah,ah
	push	ax
	call	far 38ADh:0040h
	add	sp,2h
	test	al,1h
	jnz	02D9h

l31FF_02C8:
	mov	bx,[1A32h]
	les	si,[1A2Ch]
	cmp	byte ptr es:[bx+si],5Fh
	jz	02D9h

l31FF_02D6:
	jmp	03B4h

l31FF_02D9:
	mov	word ptr [1A38h],0h
	jmp	034Ah
31FF:02E1    90                                            .              

l31FF_02E2:
	cmp	word ptr [1A38h],0Ah
	jnc	0353h

l31FF_02E9:
	mov	bx,[1A32h]
	les	si,[1A2Ch]
	mov	al,es:[bx+si]
	sub	ah,ah
	push	ax
	call	far 38ADh:0040h
	add	sp,2h
	test	al,1h
	jnz	0324h

l31FF_0303:
	mov	bx,[1A32h]
	les	si,[1A2Ch]
	mov	al,es:[bx+si]
	mov	[bp-4h],al
	cmp	al,5Fh
	jz	0324h

l31FF_0315:
	sub	ah,ah
	push	ax
	call	far 38ADh:0040h
	add	sp,2h
	test	al,2h
	jz	0353h

l31FF_0324:
	mov	bx,[1A32h]
	les	si,[1A2Ch]
	mov	al,es:[bx+si]
	sub	ah,ah
	push	ax
	call	far 38ADh:001Eh
	add	sp,2h
	mov	bx,[1A38h]
	mov	[bx+1A3Ah],al
	inc	word ptr [1A32h]
	inc	word ptr [1A38h]

l31FF_034A:
	mov	ax,[1A30h]
	cmp	[1A32h],ax
	jc	02E2h

l31FF_0353:
	mov	bx,[1A38h]
	mov	byte ptr [bx+1A3Ah],0h
	cmp	bx,0Ah
	jnz	03ACh

l31FF_0361:
	jmp	03A3h
31FF:0363          90                                        .            

l31FF_0364:
	mov	bx,[1A32h]
	les	si,[1A2Ch]
	mov	al,es:[bx+si]
	sub	ah,ah
	push	ax
	call	far 38ADh:0040h
	add	sp,2h
	test	al,1h
	jnz	039Fh

l31FF_037E:
	mov	bx,[1A32h]
	les	si,[1A2Ch]
	mov	al,es:[bx+si]
	mov	[bp-4h],al
	cmp	al,5Fh
	jz	039Fh

l31FF_0390:
	sub	ah,ah
	push	ax
	call	far 38ADh:0040h
	add	sp,2h
	test	al,2h
	jz	03ACh

l31FF_039F:
	inc	word ptr [1A32h]

l31FF_03A3:
	mov	ax,[1A30h]
	cmp	[1A32h],ax
	jc	0364h

l31FF_03AC:
	mov	word ptr [bp-2h],7Ah
	jmp	05E3h

l31FF_03B4:
	mov	bx,[1A32h]
	les	si,[1A2Ch]
	mov	al,es:[bx+si]
	sub	ah,ah
	push	ax
	call	far 38ADh:0040h
	add	sp,2h
	test	al,2h
	jnz	0405h

l31FF_03CE:
	mov	bx,[1A32h]
	les	si,[1A2Ch]
	cmp	byte ptr es:[bx+si],2Eh
	jz	03DFh

l31FF_03DC:
	jmp	0494h

l31FF_03DF:
	mov	ax,[1A30h]
	cmp	bx,ax
	jc	03E9h

l31FF_03E6:
	jmp	0494h

l31FF_03E9:
	mov	si,bx
	mov	bx,[1A2Ch]
	mov	al,es:[bx+si+1h]
	sub	ah,ah
	push	ax
	call	far 38ADh:0040h
	add	sp,2h
	test	al,2h
	jnz	0405h

l31FF_0402:
	jmp	0494h

l31FF_0405:
	mov	ax,[1A32h]
	mov	[1A34h],ax
	jmp	042Ch
31FF:040D                                        90                    .  

l31FF_040E:
	mov	bx,[1A32h]
	les	si,[1A2Ch]
	mov	al,es:[bx+si]
	sub	ah,ah
	push	ax
	call	far 38ADh:0040h
	add	sp,2h
	test	al,2h
	jz	0435h

l31FF_0428:
	inc	word ptr [1A32h]

l31FF_042C:
	mov	ax,[1A30h]
	cmp	[1A32h],ax
	jc	040Eh

l31FF_0435:
	mov	ax,[1A32h]
	inc	ax
	cmp	ax,[1A30h]
	jnc	0481h

l31FF_043F:
	mov	bx,[1A32h]
	les	si,[1A2Ch]
	cmp	byte ptr es:[bx+si],2Eh
	jnz	0481h

l31FF_044D:
	mov	si,bx
	mov	bx,[1A2Ch]
	mov	al,es:[bx+si+1h]
	jmp	0465h
31FF:0459                            90                            .      

l31FF_045A:
	mov	bx,[1A32h]
	les	si,[1A2Ch]
	mov	al,es:[bx+si]

l31FF_0465:
	sub	ah,ah
	push	ax
	call	far 38ADh:0040h
	add	sp,2h
	test	al,2h
	jz	0481h

l31FF_0474:
	inc	word ptr [1A32h]
	mov	ax,[1A30h]
	cmp	[1A32h],ax
	jc	045Ah

l31FF_0481:
	mov	ax,[1A32h]
	sub	ax,[1A34h]
	mov	[1A36h],ax
	mov	word ptr [bp-2h],77h
	jmp	05E3h
31FF:0493          90                                        .            

l31FF_0494:
	mov	si,1A32h
	mov	bx,[si]
	inc	word ptr [si]
	les	si,[1A2Ch]
	mov	al,es:[bx+si]
	sub	ah,ah
	cmp	ax,29h
	jnz	04ACh

l31FF_04A9:
	jmp	0608h

l31FF_04AC:
	jbe	04B1h

l31FF_04AE:
	jmp	0636h

l31FF_04B1:
	cmp	ax,21h
	jnz	04B9h

l31FF_04B6:
	jmp	05D7h

l31FF_04B9:
	cmp	ax,22h
	jnz	04C1h

l31FF_04BE:
	jmp	0610h

l31FF_04C1:
	cmp	ax,27h
	jnz	04C9h

l31FF_04C6:
	jmp	0622h

l31FF_04C9:
	cmp	ax,28h
	jnz	04D1h

l31FF_04CE:
	jmp	0600h

l31FF_04D1:
	jmp	0657h

l31FF_04D4:
	mov	word ptr [bp-2h],6Eh
	mov	ax,[1A30h]
	cmp	[1A32h],ax
	jc	04E5h

l31FF_04E2:
	jmp	05E3h

l31FF_04E5:
	mov	si,1A32h
	mov	bx,[si]
	inc	word ptr [si]
	les	si,[1A2Ch]
	mov	al,es:[bx+si]
	sub	ah,ah
	push	ax
	call	far 38ADh:001Eh
	add	sp,2h
	sub	ah,ah
	cmp	ax,46h
	jz	0540h

l31FF_0505:
	cmp	ax,4Eh
	jz	0560h

l31FF_050A:
	cmp	ax,54h
	jz	0517h

l31FF_050F:
	cmp	ax,59h
	jz	0517h

l31FF_0514:
	jmp	05E3h

l31FF_0517:
	mov	ax,[1A30h]
	cmp	[1A32h],ax
	jc	0523h

l31FF_0520:
	jmp	05E3h

l31FF_0523:
	mov	bx,[1A32h]
	les	si,[1A2Ch]
	cmp	byte ptr es:[bx+si],2Eh
	jz	0534h

l31FF_0531:
	jmp	05E3h

l31FF_0534:
	inc	word ptr [1A32h]
	mov	word ptr [bp-2h],79h
	jmp	05E3h

l31FF_0540:
	mov	ax,[1A30h]
	cmp	[1A32h],ax
	jc	054Ch

l31FF_0549:
	jmp	05E3h

l31FF_054C:
	mov	bx,[1A32h]
	les	si,[1A2Ch]
	cmp	byte ptr es:[bx+si],2Eh
	jz	055Dh

l31FF_055A:
	jmp	05E3h

l31FF_055D:
	jmp	0577h
31FF:055F                                              90                .

l31FF_0560:
	mov	ax,[1A30h]
	cmp	[1A32h],ax
	jnc	0582h

l31FF_0569:
	mov	bx,[1A32h]
	les	si,[1A2Ch]
	cmp	byte ptr es:[bx+si],2Eh
	jnz	0582h

l31FF_0577:
	inc	word ptr [1A32h]
	mov	word ptr [bp-2h],78h
	jmp	05E3h

l31FF_0582:
	mov	ax,[1A32h]
	add	ax,2h
	cmp	ax,[1A30h]
	jnc	05E3h

l31FF_058E:
	mov	bx,[1A32h]
	les	si,[1A2Ch]
	mov	al,es:[bx+si]
	sub	ah,ah
	push	ax
	call	far 38ADh:001Eh
	add	sp,2h
	cmp	al,4Fh
	jnz	05E3h

l31FF_05A8:
	mov	si,[1A32h]
	les	bx,[1A2Ch]
	mov	al,es:[bx+si+1h]
	sub	ah,ah
	push	ax
	call	far 38ADh:001Eh
	add	sp,2h
	cmp	al,54h
	jnz	05E3h

l31FF_05C3:
	mov	si,[1A32h]
	les	bx,[1A2Ch]
	cmp	byte ptr es:[bx+si+2h],2Eh
	jnz	05E3h

l31FF_05D2:
	add	word ptr [1A32h],3h

l31FF_05D7:
	mov	word ptr [bp-2h],93h
	jmp	05E3h

l31FF_05DE:
	mov	word ptr [bp-2h],84h

l31FF_05E3:
	cmp	word ptr [bp-2h],6Eh
	jnz	05EFh

l31FF_05E9:
	mov	word ptr [1A2Ah],12Ch

l31FF_05EF:
	mov	ax,[bp-2h]
	pop	si
	mov	sp,bp
	pop	bp
	retf
31FF:05F7                      90                                .        

l31FF_05F8:
	mov	word ptr [bp-2h],85h
	jmp	05E3h
31FF:05FF                                              90                .

l31FF_0600:
	mov	word ptr [bp-2h],7Bh
	jmp	05E3h
31FF:0607                      90                                .        

l31FF_0608:
	mov	word ptr [bp-2h],7Ch
	jmp	05E3h
31FF:060F                                              90                .

l31FF_0610:
	mov	ax,22h

l31FF_0613:
	push	ax
	push	cs
	call	0216h
	add	sp,2h
	mov	word ptr [bp-2h],76h
	jmp	05E3h

l31FF_0622:
	mov	ax,27h
	jmp	0613h
31FF:0627                      90                                .        

l31FF_0628:
	mov	ax,5Dh
	jmp	0613h
31FF:062D                                        90                    .  

l31FF_062E:
	mov	word ptr [bp-2h],82h
	jmp	05E3h
31FF:0635                90                                    .          

l31FF_0636:
	cmp	ax,2Bh
	jz	05DEh

l31FF_063B:
	cmp	ax,2Dh
	jz	05F8h

l31FF_0640:
	cmp	ax,2Eh
	jnz	0648h

l31FF_0645:
	jmp	04D4h

l31FF_0648:
	cmp	ax,40h
	jz	062Eh

l31FF_064D:
	cmp	ax,5Bh
	jz	0628h

l31FF_0652:
	cmp	ax,60h
	jz	0622h

l31FF_0657:
	mov	word ptr [bp-2h],6Eh
	jmp	05E3h

;; fn31FF_065E: 31FF:065E
;;   Called from:
;;     31FF:10B8 (in fn31FF_0F20)
;;     31FF:1495 (in fn31FF_0F20)
fn31FF_065E proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	push	si
	jmp	0682h
31FF:0667                      90                                .        

l31FF_0668:
	mov	bx,[1A32h]
	les	si,[1A2Ch]
	mov	al,es:[bx+si]
	mov	[bp-4h],al
	cmp	al,20h
	jz	067Eh

l31FF_067A:
	cmp	al,9h
	jnz	068Bh

l31FF_067E:
	inc	word ptr [1A32h]

l31FF_0682:
	mov	ax,[1A30h]
	cmp	[1A32h],ax
	jc	0668h

l31FF_068B:
	mov	ax,[1A30h]
	cmp	[1A32h],ax
	jnz	069Ch

l31FF_0694:
	mov	ax,6Eh
	pop	si
	mov	sp,bp
	pop	bp
	retf

l31FF_069C:
	mov	si,1A32h
	mov	bx,[si]
	inc	word ptr [si]
	les	si,[1A2Ch]
	mov	al,es:[bx+si]
	sub	ah,ah
	cmp	ax,2Ch
	jnz	06B4h

l31FF_06B1:
	jmp	090Ch

l31FF_06B4:
	jbe	06B9h

l31FF_06B6:
	jmp	094Eh

l31FF_06B9:
	sub	ax,21h
	cmp	ax,0Ah
	jbe	06C4h

l31FF_06C1:
	jmp	0970h

l31FF_06C4:
	add	ax,ax
	xchg	bx,ax
	jmp	word ptr cs:[bx+938h]

l31FF_06CC:
	mov	word ptr [bp-2h],6Eh
	mov	ax,[1A30h]
	cmp	[1A32h],ax
	jc	06DDh

l31FF_06DA:
	jmp	07B8h

l31FF_06DD:
	mov	si,1A32h
	mov	bx,[si]
	inc	word ptr [si]
	les	si,[1A2Ch]
	mov	al,es:[bx+si]
	sub	ah,ah
	push	ax
	call	far 38ADh:001Eh
	add	sp,2h
	sub	ah,ah
	cmp	ax,41h
	jz	070Ch

l31FF_06FD:
	cmp	ax,4Fh
	jz	0770h

l31FF_0702:
	mov	word ptr [1A2Ah],258h
	jmp	07BEh
31FF:070B                                  90                        .    

l31FF_070C:
	mov	ax,[1A32h]
	add	ax,2h
	cmp	ax,[1A30h]
	jnc	0768h

l31FF_0718:
	mov	bx,[1A32h]
	les	si,[1A2Ch]
	mov	al,es:[bx+si]
	sub	ah,ah
	push	ax
	call	far 38ADh:001Eh
	add	sp,2h
	cmp	al,4Eh
	jnz	0768h

l31FF_0732:
	mov	si,[1A32h]
	les	bx,[1A2Ch]
	mov	al,es:[bx+si+1h]
	sub	ah,ah
	push	ax
	call	far 38ADh:001Eh
	add	sp,2h
	cmp	al,44h
	jnz	0768h

l31FF_074D:
	mov	si,[1A32h]
	les	bx,[1A2Ch]
	cmp	byte ptr es:[bx+si+2h],2Eh
	jnz	0768h

l31FF_075C:
	add	word ptr [1A32h],3h
	mov	word ptr [bp-2h],94h
	jmp	07BEh

l31FF_0768:
	mov	word ptr [1A2Ah],190h
	jmp	07BEh

l31FF_0770:
	mov	ax,[1A32h]
	inc	ax
	cmp	ax,[1A30h]
	jnc	07B0h

l31FF_077A:
	mov	bx,[1A32h]
	les	si,[1A2Ch]
	mov	al,es:[bx+si]
	sub	ah,ah
	push	ax
	call	far 38ADh:001Eh
	add	sp,2h
	cmp	al,52h
	jnz	07B0h

l31FF_0794:
	mov	si,[1A32h]
	les	bx,[1A2Ch]
	cmp	byte ptr es:[bx+si+1h],2Eh
	jnz	07B0h

l31FF_07A3:
	add	word ptr [1A32h],2h
	mov	word ptr [bp-2h],95h
	jmp	07BEh
31FF:07AF                                              90                .

l31FF_07B0:
	mov	word ptr [1A2Ah],1F4h
	jmp	07BEh

l31FF_07B8:
	mov	word ptr [1A2Ah],2BCh

l31FF_07BE:
	mov	ax,[bp-2h]
	pop	si
	mov	sp,bp
	pop	bp
	retf

l31FF_07C6:
	mov	word ptr [bp-2h],86h
	jmp	07BEh
31FF:07CD                                        90                    .  

l31FF_07CE:
	mov	ax,[1A30h]
	cmp	[1A32h],ax
	jnc	07EEh

l31FF_07D7:
	mov	bx,[1A32h]
	les	si,[1A2Ch]
	cmp	byte ptr es:[bx+si],3Eh
	jnz	07EEh

l31FF_07E5:
	mov	word ptr [bp-2h],7Eh
	jmp	0896h
31FF:07ED                                        90                    .  

l31FF_07EE:
	mov	word ptr [bp-2h],87h
	jmp	07BEh
31FF:07F5                90                                    .          

l31FF_07F6:
	mov	ax,[1A30h]
	cmp	[1A32h],ax
	jnc	0816h

l31FF_07FF:
	mov	bx,[1A32h]
	les	si,[1A2Ch]
	cmp	byte ptr es:[bx+si],2Ah
	jnz	0816h

l31FF_080D:
	mov	word ptr [bp-2h],8Bh
	jmp	0896h
31FF:0815                90                                    .          

l31FF_0816:
	mov	word ptr [bp-2h],88h
	jmp	07BEh
31FF:081D                                        90                    .  

l31FF_081E:
	mov	word ptr [bp-2h],89h
	jmp	07BEh
31FF:0825                90                                    .          

l31FF_0826:
	mov	word ptr [bp-2h],8Ah
	jmp	07BEh
31FF:082D                                        90                    .  

l31FF_082E:
	mov	word ptr [bp-2h],8Bh
	jmp	07BEh
31FF:0835                90                                    .          

l31FF_0836:
	mov	ax,[1A30h]
	cmp	[1A32h],ax
	jnc	0854h

l31FF_083F:
	mov	bx,[1A32h]
	les	si,[1A2Ch]
	cmp	byte ptr es:[bx+si],3Dh
	jnz	0854h

l31FF_084D:
	mov	word ptr [bp-2h],90h
	jmp	0896h

l31FF_0854:
	mov	word ptr [bp-2h],8Eh
	jmp	07BEh

l31FF_085C:
	mov	ax,[1A30h]
	cmp	[1A32h],ax
	jnc	087Ah

l31FF_0865:
	mov	bx,[1A32h]
	les	si,[1A2Ch]
	cmp	byte ptr es:[bx+si],3Dh
	jnz	087Ah

l31FF_0873:
	mov	word ptr [bp-2h],91h
	jmp	0896h

l31FF_087A:
	mov	ax,[1A30h]
	cmp	[1A32h],ax
	jnc	089Eh

l31FF_0883:
	mov	bx,[1A32h]
	les	si,[1A2Ch]
	cmp	byte ptr es:[bx+si],3Eh
	jnz	089Eh

l31FF_0891:
	mov	word ptr [bp-2h],92h

l31FF_0896:
	inc	word ptr [1A32h]
	jmp	07BEh
31FF:089D                                        90                    .  

l31FF_089E:
	mov	word ptr [bp-2h],8Fh
	jmp	07BEh

l31FF_08A6:
	mov	word ptr [bp-2h],92h
	jmp	07BEh

l31FF_08AE:
	mov	ax,[1A30h]
	cmp	[1A32h],ax
	jnc	08CCh

l31FF_08B7:
	mov	bx,[1A32h]
	les	si,[1A2Ch]
	cmp	byte ptr es:[bx+si],3Dh
	jnz	08CCh

l31FF_08C5:
	mov	word ptr [bp-2h],8Ch
	jmp	0896h

l31FF_08CC:
	mov	word ptr [bp-2h],8Dh
	jmp	07BEh

l31FF_08D4:
	mov	ax,[1A30h]
	cmp	[1A32h],ax
	jnc	08EBh

l31FF_08DD:
	mov	bx,[1A32h]
	les	si,[1A2Ch]
	cmp	byte ptr es:[bx+si],3Dh
	jz	0891h

l31FF_08EB:
	mov	word ptr [1A2Ah],320h
	jmp	07BEh

l31FF_08F4:
	mov	word ptr [bp-2h],96h
	jmp	07BEh

l31FF_08FC:
	mov	word ptr [bp-2h],7Bh
	jmp	07BEh

l31FF_0904:
	mov	word ptr [bp-2h],7Ch
	jmp	07BEh

l31FF_090C:
	cmp	word ptr [bp+6h],0h
	jz	091Ah

l31FF_0912:
	mov	word ptr [bp-2h],72h
	jmp	07BEh

l31FF_091A:
	mov	word ptr [1A2Ah],384h

l31FF_0920:
	mov	word ptr [bp-2h],6Eh
	jmp	07BEh

l31FF_0928:
	mov	word ptr [bp-2h],80h
	jmp	07BEh

l31FF_0930:
	mov	word ptr [bp-2h],81h
	jmp	07BEh
l31FF_0938	dw	0x08D4
l31FF_093A	dw	0x0970
l31FF_093C	dw	0x08A6
l31FF_093E	dw	0x08F4
l31FF_0940	dw	0x0826
l31FF_0942	dw	0x0970
l31FF_0944	dw	0x0970
l31FF_0946	dw	0x08FC
l31FF_0948	dw	0x0904
l31FF_094A	dw	0x07F6
l31FF_094C	dw	0x07C6

l31FF_094E:
	cmp	ax,3Ch
	jnz	0956h

l31FF_0953:
	jmp	085Ch

l31FF_0956:
	ja	0978h

l31FF_0958:
	cmp	ax,2Dh
	jnz	0960h

l31FF_095D:
	jmp	07CEh

l31FF_0960:
	cmp	ax,2Eh
	jnz	0968h

l31FF_0965:
	jmp	06CCh

l31FF_0968:
	cmp	ax,2Fh
	jnz	0970h

l31FF_096D:
	jmp	081Eh

l31FF_0970:
	mov	word ptr [1A2Ah],3E8h
	jmp	0920h

l31FF_0978:
	cmp	ax,3Dh
	jnz	0980h

l31FF_097D:
	jmp	08AEh

l31FF_0980:
	cmp	ax,3Eh
	jnz	0988h

l31FF_0985:
	jmp	0836h

l31FF_0988:
	cmp	ax,5Bh
	jz	0928h

l31FF_098D:
	cmp	ax,5Dh
	jz	0930h

l31FF_0992:
	cmp	ax,5Eh
	jnz	099Ah

l31FF_0997:
	jmp	082Eh

l31FF_099A:
	jmp	0970h

;; fn31FF_099C: 31FF:099C
;;   Called from:
;;     31FF:16FB (in fn31FF_0F20)
;;     31FF:170C (in fn31FF_0F20)
fn31FF_099C proc
	push	bp
	mov	bp,sp
	sub	sp,2h
	mov	ax,[bp+6h]
	cmp	ax,8Ah
	ja	0A22h

l31FF_09AA:
	cmp	ax,88h
	jnc	09DCh

l31FF_09AF:
	cmp	ax,7Eh
	jz	09C4h

l31FF_09B4:
	ja	0A0Ch

l31FF_09B6:
	cmp	ax,4h
	jnz	0A1Bh

l31FF_09BB:
	mov	word ptr [bp-2h],0Ah
	jmp	0A4Ah
31FF:09C3          90                                        .            

l31FF_09C4:
	mov	word ptr [bp-2h],9h
	jmp	0A4Ah
31FF:09CB                                  90                        .    

l31FF_09CC:
	mov	word ptr [bp-2h],8h
	jmp	0A4Ah
31FF:09D3          90                                        .            

l31FF_09D4:
	mov	word ptr [bp-2h],7h
	jmp	0A4Ah
31FF:09DB                                  90                        .    

l31FF_09DC:
	mov	word ptr [bp-2h],6h
	jmp	0A4Ah
31FF:09E3          90                                        .            

l31FF_09E4:
	mov	word ptr [bp-2h],5h
	jmp	0A4Ah
31FF:09EB                                  90                        .    

l31FF_09EC:
	mov	word ptr [bp-2h],4h
	jmp	0A4Ah
31FF:09F3          90                                        .            

l31FF_09F4:
	mov	word ptr [bp-2h],3h
	jmp	0A4Ah
31FF:09FB                                  90                        .    

l31FF_09FC:
	mov	word ptr [bp-2h],2h
	jmp	0A4Ah
31FF:0A03          90                                        .            

l31FF_0A04:
	mov	word ptr [bp-2h],1h
	jmp	0A4Ah
31FF:0A0B                                  90                        .    

l31FF_0A0C:
	cmp	ax,85h
	jz	09CCh

l31FF_0A11:
	cmp	ax,86h
	jc	0A1Bh

l31FF_0A16:
	cmp	ax,87h
	jbe	09E4h

l31FF_0A1B:
	mov	word ptr [bp-2h],0h
	jmp	0A4Ah

l31FF_0A22:
	sub	ax,8Bh
	cmp	ax,0Bh
	ja	0A1Bh

l31FF_0A2A:
	add	ax,ax
	xchg	bx,ax
	jmp	word ptr cs:[bx+0A32h]
l31FF_0A32	dw	0x09D4
l31FF_0A34	dw	0x09EC
l31FF_0A36	dw	0x09EC
l31FF_0A38	dw	0x09EC
l31FF_0A3A	dw	0x09EC
l31FF_0A3C	dw	0x09EC
l31FF_0A3E	dw	0x09EC
l31FF_0A40	dw	0x09EC
l31FF_0A42	dw	0x09F4
l31FF_0A44	dw	0x09FC
l31FF_0A46	dw	0x0A04
l31FF_0A48	dw	0x09EC

l31FF_0A4A:
	mov	ax,[bp-2h]
	mov	sp,bp
	pop	bp
	retf
31FF:0A51    90                                            .              

;; fn31FF_0A52: 31FF:0A52
;;   Called from:
;;     31FF:0B35 (in fn31FF_0AAE)
fn31FF_0A52 proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	push	si
	mov	word ptr [bp-2h],0h
	jmp	0A71h

l31FF_0A60:
	mov	bx,[bp-2h]
	les	si,[bp+0Ah]
	mov	al,[bp-4h]
	cmp	es:[bx+si],al
	jnz	0A81h

l31FF_0A6E:
	inc	word ptr [bp-2h]

l31FF_0A71:
	mov	bx,[bp-2h]
	les	si,[bp+6h]
	mov	al,es:[bx+si]
	mov	[bp-4h],al
	or	al,al
	jnz	0A60h

l31FF_0A81:
	les	si,[bp+0Ah]
	mov	al,es:[bx+si]
	les	si,[bp+6h]
	cmp	es:[bx+si],al
	jz	0A9Dh

l31FF_0A8F:
	les	si,[bp+0Ah]
	cmp	byte ptr es:[bx+si],0h
	jnz	0AA6h

l31FF_0A98:
	cmp	bx,4h
	jl	0AA6h

l31FF_0A9D:
	mov	ax,1h
	pop	si
	mov	sp,bp
	pop	bp
	retf
31FF:0AA5                90                                    .          

l31FF_0AA6:
	sub	ax,ax
	pop	si
	mov	sp,bp
	pop	bp
	retf
31FF:0AAD                                        90                    .  

;; fn31FF_0AAE: 31FF:0AAE
;;   Called from:
;;     31FF:11B6 (in fn31FF_0F20)
fn31FF_0AAE proc
	push	bp
	mov	bp,sp
	sub	sp,6h
	push	si
	mov	word ptr [bp-4h],1h
	mov	word ptr [bp-2h],48h
	jmp	0B0Ch
31FF:0AC1    90                                            .              

l31FF_0AC2:
	mov	ax,[bp-4h]
	add	ax,[bp-2h]
	cwd
	sub	ax,dx
	sar	ax,1h
	mov	[bp-6h],ax
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 2017h:03F5h
	add	sp,4h
	inc	ax
	push	ax
	mov	ax,16h
	imul	word ptr [bp-6h]
	add	ax,1A4Eh
	push	ds
	push	ax
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 38ADh:00F2h
	add	sp,0Ah
	or	ax,ax
	jle	0B06h

l31FF_0AFD:
	mov	ax,[bp-6h]
	inc	ax
	mov	[bp-4h],ax
	jmp	0B0Ch

l31FF_0B06:
	mov	ax,[bp-6h]
	mov	[bp-2h],ax

l31FF_0B0C:
	mov	ax,[bp-2h]
	cmp	[bp-4h],ax
	jl	0AC2h

l31FF_0B14:
	mov	ax,[bp-4h]
	add	ax,[bp-2h]
	cwd
	sub	ax,dx
	sar	ax,1h
	mov	[bp-6h],ax
	mov	ax,16h
	imul	word ptr [bp-6h]
	mov	si,ax
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	add	ax,1A4Eh
	push	ds
	push	ax
	push	cs
	call	0A52h
	add	sp,8h
	or	ax,ax
	jz	0B64h

l31FF_0B40:
	les	bx,[bp+0Ah]
	mov	ax,[si+1A5Eh]
	mov	es:[bx],ax
	les	bx,[bp+0Eh]
	mov	ax,[si+1A60h]
	mov	es:[bx],ax
	les	bx,[bp+12h]
	mov	ax,[si+1A62h]
	mov	es:[bx],ax
	pop	si
	mov	sp,bp
	pop	bp
	retf
31FF:0B63          90                                        .            

l31FF_0B64:
	les	bx,[bp+0Ah]
	mov	word ptr es:[bx],0FFFFh
	pop	si
	mov	sp,bp
	pop	bp
	retf
31FF:0B71    90                                            .              

;; fn31FF_0B72: 31FF:0B72
;;   Called from:
;;     31FF:0BAE (in fn31FF_0BA0)
;;     31FF:0C88 (in fn31FF_0C62)
;;     31FF:0E4A (in fn31FF_0E18)
;;     31FF:0E55 (in fn31FF_0E18)
;;     31FF:102E (in fn31FF_0F20)
;;     31FF:1626 (in fn31FF_0F20)
;;     31FF:1679 (in fn31FF_0F20)
;;     31FF:1684 (in fn31FF_0F20)
;;     31FF:17CB (in fn31FF_0F20)
fn31FF_0B72 proc
	push	bp
	mov	bp,sp
	push	si
	mov	ax,[1A28h]
	inc	ax
	cmp	ax,[1A26h]
	jnc	0B96h

l31FF_0B80:
	mov	bx,[1A28h]
	les	si,[1A22h]
	mov	al,[bp+6h]
	mov	es:[bx+si],al
	inc	word ptr [1A28h]
	pop	si
	pop	bp
	retf
31FF:0B95                90                                    .          

l31FF_0B96:
	mov	word ptr [1A2Ah],3h
	pop	si
	pop	bp
	retf
31FF:0B9F                                              90                .

;; fn31FF_0BA0: 31FF:0BA0
;;   Called from:
;;     31FF:1007 (in fn31FF_0F20)
fn31FF_0BA0 proc
	push	bp
	mov	bp,sp
	push	si
	cmp	word ptr [bp+0Ah],0h
	jnz	0BB8h

l31FF_0BAA:
	mov	ax,7Fh
	push	ax
	push	cs
	call	0B72h
	add	sp,2h
	pop	si
	pop	bp
	retf

l31FF_0BB8:
	mov	ax,[bp+0Ah]
	add	ax,[1A28h]
	add	ax,2h
	cmp	ax,[1A26h]
	jnc	0C0Ah

l31FF_0BC8:
	mov	bx,[1A28h]
	les	si,[1A22h]
	mov	byte ptr es:[bx+si],97h
	inc	word ptr [1A28h]
	mov	bx,[1A28h]
	mov	al,[bp+0Ah]
	mov	es:[bx+si],al
	inc	word ptr [1A28h]
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	mov	ax,[1A28h]
	add	ax,si
	mov	dx,es
	push	dx
	push	ax
	call	far 2017h:02ECh
	add	sp,0Ah
	mov	ax,[bp+0Ah]
	add	[1A28h],ax
	pop	si
	pop	bp
	retf

l31FF_0C0A:
	mov	word ptr [1A2Ah],3h
	pop	si
	pop	bp
	retf
31FF:0C13          90                                        .            

;; fn31FF_0C14: 31FF:0C14
;;   Called from:
;;     31FF:0CA4 (in fn31FF_0C62)
;;     31FF:0ED2 (in fn31FF_0E18)
;;     31FF:12AC (in fn31FF_0F20)
;;     31FF:12E5 (in fn31FF_0F20)
;;     31FF:1423 (in fn31FF_0F20)
;;     31FF:1574 (in fn31FF_0F20)
fn31FF_0C14 proc
	push	bp
	mov	bp,sp
	push	si
	mov	ax,[1A28h]
	add	ax,3h
	cmp	ax,[1A26h]
	jnc	0C58h

l31FF_0C24:
	mov	bx,[1A28h]
	les	si,[1A22h]
	mov	al,[bp+6h]
	mov	es:[bx+si],al
	inc	word ptr [1A28h]
	mov	ax,2h
	push	ax
	lea	ax,[bp+8h]
	push	ss
	push	ax
	mov	ax,[1A28h]
	add	ax,si
	mov	dx,es
	push	dx
	push	ax
	call	far 2017h:02ECh
	add	sp,0Ah
	add	word ptr [1A28h],2h
	pop	si
	pop	bp
	retf

l31FF_0C58:
	mov	word ptr [1A2Ah],3h
	pop	si
	pop	bp
	retf
31FF:0C61    90                                            .              

;; fn31FF_0C62: 31FF:0C62
;;   Called from:
;;     31FF:1023 (in fn31FF_0F20)
fn31FF_0C62 proc
	push	bp
	mov	bp,sp
	sub	sp,12h
	push	si
	cmp	word ptr [bp+0Ah],1h
	jnz	0CB0h

l31FF_0C6F:
	les	bx,[bp+6h]
	cmp	byte ptr es:[bx],30h
	jnz	0C7Eh

l31FF_0C78:
	mov	ax,0EFh
	jmp	0C87h
31FF:0C7D                                        90                    .  

l31FF_0C7E:
	cmp	byte ptr es:[bx],31h
	jnz	0C94h

l31FF_0C84:
	mov	ax,80h

l31FF_0C87:
	push	ax
	push	cs
	call	0B72h
	add	sp,2h
	pop	si
	mov	sp,bp
	pop	bp
	retf

l31FF_0C94:
	les	bx,[bp+6h]
	mov	al,es:[bx]
	sub	ah,ah
	sub	ax,30h
	push	ax

l31FF_0CA0:
	mov	ax,99h
	push	ax
	push	cs
	call	0C14h
	add	sp,4h
	pop	si
	mov	sp,bp
	pop	bp
	retf

l31FF_0CB0:
	mov	word ptr [bp-2h],0h
	mov	word ptr [bp-4h],0h
	jmp	0CEAh

l31FF_0CBC:
	mov	bx,[bp-2h]
	les	si,[bp+6h]
	mov	al,es:[bx+si]
	mov	[bp-12h],al
	cmp	al,2Eh
	jz	0CF2h

l31FF_0CCC:
	cmp	word ptr [bp-4h],0CCBh
	jge	0CF2h

l31FF_0CD3:
	mov	ax,0Ah
	imul	word ptr [bp-4h]
	mov	[bp-4h],ax
	mov	al,[bp-12h]
	sub	ah,ah
	sub	ax,30h
	add	[bp-4h],ax
	inc	word ptr [bp-2h]

l31FF_0CEA:
	mov	ax,[bp+0Ah]
	cmp	[bp-2h],ax
	jc	0CBCh

l31FF_0CF2:
	mov	ax,[bp+0Ah]
	cmp	[bp-2h],ax
	jnz	0D00h

l31FF_0CFA:
	push	word ptr [bp-4h]
	jmp	0CA0h
31FF:0CFF                                              90                .

l31FF_0D00:
	mov	ax,[1A28h]
	add	ax,0Bh
	cmp	ax,[1A26h]
	jc	0D0Fh

l31FF_0D0C:
	jmp	0DACh

l31FF_0D0F:
	lea	ax,[bp-6h]
	push	ss
	push	ax
	lea	ax,[bp-10h]
	push	ss
	push	ax
	lea	ax,[bp-0Eh]
	push	ss
	push	ax
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 3CEEh:0EA8h
	add	sp,12h
	cmp	word ptr [bp-6h],0h
	jz	0D4Ah

l31FF_0D35:
	mov	ax,[bp-6h]
	add	ax,0Bh
	sub	ax,[bp-10h]
	sbb	cx,cx
	not	cx
	and	ax,cx
	add	ax,[bp-10h]
	jmp	0D59h
31FF:0D49                            90                            .      

l31FF_0D4A:
	mov	ax,[bp+0Ah]
	sub	ax,0Ah
	sbb	cx,cx
	not	cx
	and	ax,cx
	add	ax,0Ah

l31FF_0D59:
	mov	[bp-10h],ax
	mov	bx,[1A28h]
	les	si,[1A22h]
	mov	byte ptr es:[bx+si],9Bh
	inc	word ptr [1A28h]
	mov	bx,[1A28h]
	mov	al,[bp-10h]
	mov	es:[bx+si],al
	inc	word ptr [1A28h]
	mov	bx,[1A28h]
	mov	al,[bp-6h]
	mov	es:[bx+si],al
	inc	word ptr [1A28h]
	mov	ax,8h
	push	ax
	lea	ax,[bp-0Eh]
	push	ss
	push	ax
	mov	ax,[1A28h]
	add	ax,si
	mov	dx,es
	push	dx
	push	ax
	call	far 2017h:02ECh
	add	sp,0Ah
	add	word ptr [1A28h],8h
	pop	si
	mov	sp,bp
	pop	bp
	retf

l31FF_0DAC:
	mov	word ptr [1A2Ah],3h
	pop	si
	mov	sp,bp
	pop	bp
	retf
31FF:0DB7                      90                                .        

;; fn31FF_0DB8: 31FF:0DB8
;;   Called from:
;;     31FF:105C (in fn31FF_0F20)
;;     31FF:1150 (in fn31FF_0F20)
;;     31FF:124F (in fn31FF_0F20)
;;     31FF:139A (in fn31FF_0F20)
;;     31FF:13F0 (in fn31FF_0F20)
;;     31FF:1594 (in fn31FF_0F20)
fn31FF_0DB8 proc
	push	bp
	mov	bp,sp
	push	si
	mov	ax,[bp+8h]
	or	ax,[bp+0Ah]
	jnz	0DCEh

l31FF_0DC4:
	mov	word ptr [1A2Ah],2h
	pop	si
	pop	bp
	retf
31FF:0DCD                                        90                    .  

l31FF_0DCE:
	mov	ax,[1A28h]
	add	ax,5h
	cmp	ax,[1A26h]
	jnc	0E0Eh

l31FF_0DDA:
	mov	bx,[1A28h]
	les	si,[1A22h]
	mov	al,[bp+6h]
	mov	es:[bx+si],al
	inc	word ptr [1A28h]
	mov	ax,4h
	push	ax
	lea	ax,[bp+8h]
	push	ss
	push	ax
	mov	ax,[1A28h]
	add	ax,si
	mov	dx,es
	push	dx
	push	ax
	call	far 2017h:02ECh
	add	sp,0Ah
	add	word ptr [1A28h],4h
	pop	si
	pop	bp
	retf

l31FF_0E0E:
	mov	word ptr [1A2Ah],3h
	pop	si
	pop	bp
	retf
31FF:0E17                      90                                .        

;; fn31FF_0E18: 31FF:0E18
;;   Called from:
;;     31FF:136A (in fn31FF_0F20)
fn31FF_0E18 proc
	push	bp
	mov	bp,sp
	mov	ax,[bp+6h]
	cmp	ax,8Ch
	jz	0E88h

l31FF_0E23:
	jle	0E28h

l31FF_0E25:
	jmp	0EFAh

l31FF_0E28:
	cmp	ax,86h
	jz	0E7Ch

l31FF_0E2D:
	jle	0E32h

l31FF_0E2F:
	jmp	0EDCh

l31FF_0E32:
	cmp	ax,4h
	jnz	0E3Ah

l31FF_0E37:
	jmp	0ECAh

l31FF_0E3A:
	cmp	ax,7Eh
	jz	0E46h

l31FF_0E3F:
	cmp	ax,85h
	jz	0E5Eh

l31FF_0E44:
	pop	bp
	retf

l31FF_0E46:
	mov	ax,8h
	push	ax
	push	cs
	call	0B72h
	add	sp,2h
	mov	ax,9Dh

l31FF_0E54:
	push	ax
	push	cs
	call	0B72h
	add	sp,2h
	pop	bp
	retf

l31FF_0E5E:
	mov	ax,76h
	jmp	0E54h
31FF:0E63          90                                        .            

l31FF_0E64:
	mov	ax,3Bh
	jmp	0E54h
31FF:0E69                            90                            .      

l31FF_0E6A:
	mov	ax,72h
	jmp	0E54h
31FF:0E6F                                              90                .

l31FF_0E70:
	mov	ax,2Bh
	jmp	0E54h
31FF:0E75                90                                    .          

l31FF_0E76:
	mov	ax,70h
	jmp	0E54h
31FF:0E7B                                  90                        .    

l31FF_0E7C:
	mov	ax,86h
	jmp	0E54h
31FF:0E81    90                                            .              

l31FF_0E82:
	mov	ax,6Fh
	jmp	0E54h
31FF:0E87                      90                                .        

l31FF_0E88:
	mov	ax,31h
	jmp	0E54h
31FF:0E8D                                        90                    .  

l31FF_0E8E:
	mov	ax,38h
	jmp	0E54h
31FF:0E93          90                                        .            

l31FF_0E94:
	mov	ax,4Fh
	jmp	0E54h
31FF:0E99                            90                            .      

l31FF_0E9A:
	mov	ax,69h
	jmp	0E54h
31FF:0E9F                                              90                .

l31FF_0EA0:
	mov	ax,47h
	jmp	0E54h
31FF:0EA5                90                                    .          

l31FF_0EA6:
	mov	ax,62h
	jmp	0E54h
31FF:0EAB                                  90                        .    

l31FF_0EAC:
	mov	ax,75h
	jmp	0E54h
31FF:0EB1    90                                            .              

l31FF_0EB2:
	mov	ax,54h
	jmp	0E54h
31FF:0EB7                      90                                .        

l31FF_0EB8:
	mov	ax,79h
	jmp	0E54h
31FF:0EBD                                        90                    .  

l31FF_0EBE:
	mov	ax,5h
	jmp	0E54h
31FF:0EC3          90                                        .            

l31FF_0EC4:
	mov	ax,81h
	jmp	0E54h
31FF:0EC9                            90                            .      

l31FF_0ECA:
	mov	ax,65h
	push	ax
	mov	ax,26h
	push	ax
	push	cs
	call	0C14h
	add	sp,4h
	pop	bp
	retf
31FF:0EDB                                  90                        .    

l31FF_0EDC:
	cmp	ax,87h
	jz	0E82h

l31FF_0EE1:
	cmp	ax,88h
	jz	0E6Ah

l31FF_0EE6:
	cmp	ax,89h
	jz	0E70h

l31FF_0EEB:
	cmp	ax,8Ah
	jz	0E76h

l31FF_0EF0:
	cmp	ax,8Bh
	jnz	0EF8h

l31FF_0EF5:
	jmp	0E64h

l31FF_0EF8:
	pop	bp
	retf

l31FF_0EFA:
	sub	ax,8Dh
	cmp	ax,9h
	ja	0F1Eh

l31FF_0F02:
	add	ax,ax
	xchg	bx,ax
	jmp	word ptr cs:[bx+0F0Ah]
l31FF_0F0A	dw	0x0E8E
l31FF_0F0C	dw	0x0E94
l31FF_0F0E	dw	0x0E9A
l31FF_0F10	dw	0x0EA0
l31FF_0F12	dw	0x0EA6
l31FF_0F14	dw	0x0EAC
l31FF_0F16	dw	0x0EB8
l31FF_0F18	dw	0x0EBE
l31FF_0F1A	dw	0x0EC4
l31FF_0F1C	dw	0x0EB2

l31FF_0F1E:
	pop	bp
	retf

;; fn31FF_0F20: 31FF:0F20
;;   Called from:
;;     31FF:1B3E (in fn31FF_1B0A)
;;     31FF:20B3 (in fn31FF_207C)
fn31FF_0F20 proc
	push	bp
	mov	bp,sp
	sub	sp,108h
	push	si
	mov	word ptr [bp-6h],0h
	mov	word ptr [bp-28h],0h
	mov	word ptr [bp-2h],0h
	mov	word ptr [bp-36h],0h
	mov	word ptr [1A2Ah],0h
	mov	word ptr [1A28h],0h
	mov	ax,[bp+6h]
	mov	dx,[bp+8h]
	mov	[1A2Ch],ax
	mov	[1A2Eh],dx
	mov	ax,[bp+0Ah]
	mov	[1A30h],ax
	mov	word ptr [1A32h],0h
	cmp	word ptr [bp+0Ch],3h
	jnz	0F79h

l31FF_0F67:
	mov	word ptr [bp+0Ch],0h
	inc	word ptr [bp-6h]
	mov	si,[bp-6h]
	shl	si,1h
	mov	word ptr [bp+si-28h],81h

l31FF_0F79:
	sub	ax,ax
	mov	[bp+0FEF8h],ax
	push	cs
	call	026Eh
	mov	[bp-4h],ax
	jmp	177Ch
31FF:0F89                            90                            .      

l31FF_0F8A:
	cmp	word ptr [bp-6h],0h
	jnz	0F99h

l31FF_0F90:
	cmp	word ptr [bp-4h],6Eh
	jnz	0F99h

l31FF_0F96:
	jmp	1786h

l31FF_0F99:
	mov	ax,[bp-4h]
	sub	ax,6Eh
	cmp	ax,28h
	jbe	0FA7h

l31FF_0FA4:
	jmp	1770h

l31FF_0FA7:
	add	ax,ax
	xchg	bx,ax
	jmp	word ptr cs:[bx+171Eh]
31FF:0FAF                                              90                .

l31FF_0FB0:
	cmp	word ptr [bp+0FEF8h],0h
	jz	0FECh

l31FF_0FB7:
	mov	si,[bp-6h]
	shl	si,1h
	mov	ax,[bp+si-28h]
	cmp	ax,7Bh
	jz	0FCDh

l31FF_0FC4:
	ja	0FD6h

l31FF_0FC6:
	or	ax,ax
	jz	0FCDh

l31FF_0FCA:
	jmp	135Fh

l31FF_0FCD:
	mov	word ptr [1A2Ah],44Ch
	jmp	1770h

l31FF_0FD6:
	cmp	ax,7Dh
	jz	0FCDh

l31FF_0FDB:
	cmp	ax,80h
	jnc	0FE3h

l31FF_0FE0:
	jmp	135Fh

l31FF_0FE3:
	cmp	ax,81h
	jbe	0FCDh

l31FF_0FE8:
	jmp	135Fh
31FF:0FEB                                  90                        .    

l31FF_0FEC:
	mov	word ptr [1A2Ah],4B0h
	jmp	1770h
31FF:0FF5                90                                    .          

l31FF_0FF6:
	push	word ptr [1A36h]
	mov	ax,[1A34h]
	add	ax,[1A2Ch]
	mov	dx,[1A2Eh]
	push	dx
	push	ax
	push	cs
	call	0BA0h

l31FF_100B:
	add	sp,6h
	jmp	148Bh
31FF:1011    90                                            .              

l31FF_1012:
	push	word ptr [1A36h]
	mov	ax,[1A34h]
	add	ax,[1A2Ch]
	mov	dx,[1A2Eh]
	push	dx
	push	ax
	push	cs
	call	0C62h
	jmp	100Bh
31FF:1029                            90                            .      

l31FF_102A:
	mov	ax,3Eh

l31FF_102D:
	push	ax
	push	cs
	call	0B72h
	add	sp,2h
	jmp	148Bh

l31FF_1038:
	mov	ax,0DDh
	jmp	102Dh
31FF:103D                                        90                    .  

l31FF_103E:
	mov	si,[bp-6h]
	shl	si,1h
	cmp	word ptr [bp+si-28h],7Eh
	jnz	108Eh

l31FF_1049:
	mov	ax,1A3Ah
	push	ds
	push	ax
	call	far 2BC7h:0494h
	add	sp,4h
	push	dx
	push	ax
	mov	ax,0D8h
	push	ax
	push	cs
	call	0DB8h
	add	sp,6h
	cmp	word ptr [1A2Ah],2h
	jz	106Dh

l31FF_106A:
	jmp	148Bh

l31FF_106D:
	mov	word ptr [1A2Ah],4h
	mov	ax,1A3Ah
	push	ds
	push	ax
	mov	ax,5EE8h
	push	ds
	push	ax
	lea	ax,[bp+0FEFAh]
	push	ss
	push	ax
	push	cs
	call	006Ah
	add	sp,0Ch
	jmp	148Bh
31FF:108D                                        90                    .  

l31FF_108E:
	push	word ptr [1A38h]
	mov	ax,1A3Ah
	push	ds
	push	ax
	lea	ax,[bp+0FEFAh]
	push	ss
	push	ax
	call	far 2017h:02ECh
	add	sp,0Ah
	mov	si,[1A38h]
	mov	byte ptr [bp+si+0FEFAh],0h
	mov	ax,1h
	mov	[bp+0FEF8h],ax
	push	word ptr [bp-2h]
	push	cs
	call	065Eh
	add	sp,2h
	mov	[bp-4h],ax
	cmp	ax,6Eh
	jz	1102h

l31FF_10C7:
	cmp	ax,72h
	jnz	10CFh

l31FF_10CC:
	jmp	1224h

l31FF_10CF:
	cmp	ax,7Bh
	jnz	10D7h

l31FF_10D4:
	jmp	115Ah

l31FF_10D7:
	cmp	ax,7Ch
	jnz	10DFh

l31FF_10DC:
	jmp	1224h

l31FF_10DF:
	cmp	ax,7Eh
	jnz	10E7h

l31FF_10E4:
	jmp	1770h

l31FF_10E7:
	cmp	ax,80h
	jnz	10EFh

l31FF_10EC:
	jmp	120Eh

l31FF_10EF:
	lea	ax,[bp+0FEFAh]
	push	ss
	push	ax
	call	far 2BC7h:0494h
	add	sp,4h
	push	dx
	push	ax
	jmp	114Ch
31FF:1101    90                                            .              

l31FF_1102:
	lea	ax,[bp+0FEFAh]
	push	ss
	push	ax
	call	far 2BC7h:0494h
	add	sp,4h
	mov	[bp-34h],ax
	mov	[bp-32h],dx
	cmp	word ptr [bp-6h],0h
	jnz	1146h

l31FF_111C:
	mov	ax,[bp+0Ch]
	or	ax,ax
	jz	1146h

l31FF_1123:
	cmp	ax,1h
	jz	113Ah

l31FF_1128:
	cmp	ax,2h
	jz	1130h

l31FF_112D:
	jmp	1770h

l31FF_1130:
	push	dx
	push	word ptr [bp-34h]
	mov	ax,9Ch
	jmp	114Fh
31FF:1139                            90                            .      

l31FF_113A:
	push	word ptr [bp-32h]
	push	word ptr [bp-34h]
	mov	ax,96h
	jmp	114Fh
31FF:1145                90                                    .          

l31FF_1146:
	push	word ptr [bp-32h]
	push	word ptr [bp-34h]

l31FF_114C:
	mov	ax,9Eh

l31FF_114F:
	push	ax
	push	cs
	call	0DB8h
	add	sp,6h
	jmp	1770h

l31FF_115A:
	cmp	word ptr [bp-6h],8h
	jbe	116Ah

l31FF_1160:
	mov	word ptr [1A2Ah],3h
	jmp	1770h
31FF:1169                            90                            .      

l31FF_116A:
	inc	word ptr [bp-6h]
	mov	si,[bp-6h]
	shl	si,1h
	mov	word ptr [bp+si-28h],7Dh
	mov	si,[bp-6h]
	mov	ax,si
	shl	si,1h
	add	si,ax
	shl	si,1h
	shl	si,1h
	lea	ax,[bp+si+0FF12h]
	push	ss
	push	ax
	mov	si,[bp-6h]
	mov	ax,si
	shl	si,1h
	add	si,ax
	shl	si,1h
	shl	si,1h
	lea	ax,[bp+si+0FF10h]
	push	ss
	push	ax
	mov	si,[bp-6h]
	mov	ax,si
	shl	si,1h
	add	si,ax
	shl	si,1h
	shl	si,1h
	lea	ax,[bp+si+0FF0Eh]
	push	ss
	push	ax
	lea	ax,[bp+0FEFAh]
	push	ss
	push	ax
	push	cs
	call	0AAEh
	add	sp,10h
	mov	si,[bp-6h]
	mov	ax,si
	shl	si,1h
	add	si,ax
	shl	si,1h
	shl	si,1h
	cmp	word ptr [bp+si+0FF0Eh],0FFh
	jnz	11F4h

l31FF_11D1:
	lea	ax,[bp+0FEFAh]
	push	ss
	push	ax
	call	far 2BC7h:03C2h
	add	sp,4h
	mov	si,[bp-6h]
	mov	cx,si
	shl	si,1h
	add	si,cx
	shl	si,1h
	shl	si,1h
	mov	[bp+si+0FF0Ah],ax
	mov	[bp+si+0FF0Ch],dx

l31FF_11F4:
	mov	si,[bp-6h]
	mov	ax,si
	shl	si,1h
	add	si,ax
	shl	si,1h
	shl	si,1h
	mov	word ptr [bp+si+0FF14h],0h
	inc	word ptr [bp-2h]
	jmp	1331h
31FF:120D                                        90                    .  

l31FF_120E:
	lea	ax,[bp+0FEFAh]
	push	ss
	push	ax
	call	far 2BC7h:0494h
	add	sp,4h
	push	dx
	push	ax
	mov	ax,0D8h
	jmp	114Fh

l31FF_1224:
	cmp	word ptr [bp-36h],0h
	jnz	122Dh

l31FF_122A:
	jmp	10EFh

l31FF_122D:
	mov	si,[bp-6h]
	shl	si,1h
	cmp	word ptr [bp+si-28h],7Dh
	jz	123Bh

l31FF_1238:
	jmp	10EFh

l31FF_123B:
	lea	ax,[bp+0FEFAh]
	push	ss
	push	ax
	call	far 2BC7h:0494h
	add	sp,4h
	push	dx
	push	ax
	mov	ax,9Ch
	push	ax
	push	cs
	call	0DB8h
	add	sp,6h
	mov	word ptr [bp-36h],0h
	jmp	1770h

l31FF_125E:
	mov	si,[bp-6h]
	shl	si,1h
	cmp	word ptr [bp+si-28h],7Dh
	jz	126Ch

l31FF_1269:
	jmp	1342h

l31FF_126C:
	mov	si,[bp-6h]
	mov	ax,si
	shl	si,1h
	add	si,ax
	shl	si,1h
	shl	si,1h
	inc	word ptr [bp+si+0FF14h]
	mov	si,[bp-6h]
	mov	ax,si
	shl	si,1h
	add	si,ax
	shl	si,1h
	shl	si,1h
	cmp	word ptr [bp+si+0FF0Eh],50h
	jz	1294h

l31FF_1291:
	jmp	1331h

l31FF_1294:
	mov	si,ax
	shl	si,1h
	add	si,ax
	shl	si,1h
	shl	si,1h
	cmp	word ptr [bp+si+0FF14h],1h
	jnz	12CAh

l31FF_12A5:
	sub	ax,ax
	push	ax
	mov	ax,58h
	push	ax
	push	cs
	call	0C14h
	add	sp,4h
	mov	si,[bp-6h]
	mov	ax,si
	shl	si,1h
	add	si,ax
	shl	si,1h
	shl	si,1h
	mov	ax,[1A28h]
	mov	[bp+si+0FF10h],ax
	jmp	1331h
31FF:12C9                            90                            .      

l31FF_12CA:
	mov	si,[bp-6h]
	mov	ax,si
	shl	si,1h
	add	si,ax
	shl	si,1h
	shl	si,1h
	cmp	word ptr [bp+si+0FF14h],2h
	jnz	1331h

l31FF_12DE:
	sub	ax,ax
	push	ax
	mov	ax,59h
	push	ax
	push	cs
	call	0C14h
	add	sp,4h
	mov	si,[bp-6h]
	mov	ax,si
	shl	si,1h
	add	si,ax
	shl	si,1h
	shl	si,1h
	mov	ax,[1A28h]
	mov	[bp+si+0FF12h],ax
	mov	si,[bp-6h]
	mov	ax,si
	shl	si,1h
	add	si,ax
	shl	si,1h
	shl	si,1h
	mov	ax,[bp+si+0FF10h]
	mov	[bp-30h],ax
	add	ax,[1A22h]
	mov	dx,[1A24h]
	sub	ax,2h
	mov	[bp-2Eh],ax
	mov	[bp-2Ch],dx
	les	bx,[bp-2Eh]
	mov	ax,[1A28h]
	sub	ax,[bp-30h]
	mov	es:[bx],ax

l31FF_1331:
	sub	ax,ax
	mov	[bp+0FEF8h],ax
	push	cs
	call	026Eh

l31FF_133B:
	mov	[bp-4h],ax
	jmp	1770h
31FF:1341    90                                            .              

l31FF_1342:
	mov	si,[bp-6h]
	shl	si,1h
	cmp	word ptr [bp+si-28h],7Bh
	jnz	1356h

l31FF_134D:
	mov	word ptr [1A2Ah],514h
	jmp	1770h

l31FF_1356:
	cmp	word ptr [bp-6h],0h
	jnz	135Fh

l31FF_135C:
	jmp	1770h

l31FF_135F:
	mov	si,[bp-6h]
	dec	word ptr [bp-6h]
	shl	si,1h
	push	word ptr [bp+si-28h]
	push	cs
	call	0E18h
	add	sp,2h
	jmp	1770h

l31FF_1374:
	sub	ax,ax
	mov	[bp+0FEF8h],ax
	push	cs
	call	026Eh
	mov	[bp-4h],ax
	cmp	ax,7Ah
	jnz	13D6h

l31FF_1386:
	lea	ax,[bp+0FEFAh]
	push	ss
	push	ax
	call	far 2BC7h:0494h
	add	sp,4h
	push	dx
	push	ax
	mov	ax,96h
	push	ax
	push	cs
	call	0DB8h
	add	sp,6h
	cmp	word ptr [1A2Ah],2h
	jnz	13C5h

l31FF_13A8:
	mov	word ptr [1A2Ah],4h
	mov	ax,1A3Ah
	push	ds
	push	ax
	mov	ax,5EECh
	push	ds
	push	ax
	lea	ax,[bp+0FEFAh]
	push	ss
	push	ax
	push	cs
	call	006Ah
	add	sp,0Ch

l31FF_13C5:
	inc	word ptr [bp-6h]
	mov	si,[bp-6h]
	shl	si,1h
	mov	word ptr [bp+si-28h],7Eh
	jmp	1770h
31FF:13D5                90                                    .          

l31FF_13D6:
	cmp	word ptr [bp-4h],7Bh
	jnz	143Ah

l31FF_13DC:
	lea	ax,[bp+0FEFAh]
	push	ss
	push	ax
	call	far 2BC7h:0494h
	add	sp,4h
	push	dx
	push	ax
	mov	ax,96h
	push	ax
	push	cs
	call	0DB8h
	add	sp,6h
	cmp	word ptr [1A2Ah],2h
	jnz	141Bh

l31FF_13FE:
	mov	word ptr [1A2Ah],4h
	mov	ax,5EF0h
	push	ds
	push	ax
	mov	ax,5EF2h
	push	ds
	push	ax
	lea	ax,[bp+0FEFAh]
	push	ss
	push	ax
	push	cs
	call	006Ah
	add	sp,0Ch

l31FF_141B:
	mov	ax,64h
	push	ax
	mov	ax,26h
	push	ax
	push	cs
	call	0C14h
	add	sp,4h
	inc	word ptr [bp-6h]
	mov	si,[bp-6h]
	shl	si,1h
	mov	word ptr [bp+si-28h],4h
	jmp	1770h

l31FF_143A:
	mov	word ptr [1A2Ah],578h
	jmp	1770h
31FF:1443          90                                        .            

l31FF_1444:
	cmp	word ptr [bp+0FEF8h],0h
	jnz	145Ch

l31FF_144B:
	inc	word ptr [bp-6h]
	mov	si,[bp-6h]
	shl	si,1h
	mov	ax,[bp-4h]
	mov	[bp+si-28h],ax
	jmp	1331h

l31FF_145C:
	mov	word ptr [1A2Ah],5DCh
	jmp	1770h
31FF:1465                90                                    .          

l31FF_1466:
	cmp	word ptr [bp+0FEF8h],0h
	jnz	144Bh

l31FF_146D:
	mov	word ptr [1A2Ah],640h
	jmp	1770h

l31FF_1476:
	mov	si,[bp-6h]
	shl	si,1h
	cmp	word ptr [bp+si-28h],7Bh
	jnz	14AAh

l31FF_1481:
	cmp	word ptr [bp+0FEF8h],0h
	jz	14A0h

l31FF_1488:
	dec	word ptr [bp-6h]

l31FF_148B:
	mov	ax,1h
	mov	[bp+0FEF8h],ax
	push	word ptr [bp-2h]
	push	cs
	call	065Eh
	add	sp,2h
	jmp	133Bh
31FF:149F                                              90                .

l31FF_14A0:
	mov	word ptr [1A2Ah],6A4h
	jmp	1770h
31FF:14A9                            90                            .      

l31FF_14AA:
	mov	si,[bp-6h]
	shl	si,1h
	cmp	word ptr [bp+si-28h],7Dh
	jz	14B8h

l31FF_14B5:
	jmp	163Eh

l31FF_14B8:
	cmp	word ptr [bp+0FEF8h],0h
	jz	1526h

l31FF_14BF:
	mov	si,[bp-6h]
	mov	ax,si
	shl	si,1h
	add	si,ax
	shl	si,1h
	shl	si,1h
	inc	word ptr [bp+si+0FF14h]

l31FF_14D0:
	mov	si,[bp-6h]
	mov	ax,si
	shl	si,1h
	add	si,ax
	shl	si,1h
	shl	si,1h
	cmp	word ptr [bp+si+0FF0Eh],50h
	jnz	154Eh

l31FF_14E4:
	mov	si,ax
	shl	si,1h
	add	si,ax
	shl	si,1h
	shl	si,1h
	cmp	word ptr [bp+si+0FF14h],3h
	jnz	1544h

l31FF_14F5:
	mov	si,ax
	shl	si,1h
	add	si,ax
	shl	si,1h
	shl	si,1h
	mov	ax,[bp+si+0FF12h]
	mov	[bp-30h],ax
	add	ax,[1A22h]
	mov	dx,[1A24h]
	sub	ax,2h
	mov	[bp-2Eh],ax
	mov	[bp-2Ch],dx
	les	bx,[bp-2Eh]
	mov	ax,[1A28h]
	sub	ax,[bp-30h]
	mov	es:[bx],ax
	jmp	162Dh

l31FF_1526:
	mov	si,[bp-6h]
	mov	ax,si
	shl	si,1h
	add	si,ax
	shl	si,1h
	shl	si,1h
	cmp	word ptr [bp+si+0FF14h],0h
	jz	14D0h

l31FF_153A:
	mov	word ptr [1A2Ah],708h
	jmp	1770h
31FF:1543          90                                        .            

l31FF_1544:
	mov	word ptr [1A2Ah],76Ch
	jmp	1770h
31FF:154D                                        90                    .  

l31FF_154E:
	mov	si,[bp-6h]
	mov	ax,si
	shl	si,1h
	add	si,ax
	shl	si,1h
	shl	si,1h
	cmp	word ptr [bp+si+0FF0Eh],0FFh
	jnz	15A2h

l31FF_1562:
	mov	si,ax
	shl	si,1h
	add	si,ax
	shl	si,1h
	shl	si,1h
	push	word ptr [bp+si+0FF14h]
	mov	ax,0C9h
	push	ax
	push	cs
	call	0C14h
	add	sp,4h
	mov	si,[bp-6h]
	mov	ax,si
	shl	si,1h
	add	si,ax
	shl	si,1h
	shl	si,1h
	push	word ptr [bp+si+0FF0Ch]
	push	word ptr [bp+si+0FF0Ah]
	mov	ax,0D8h
	push	ax
	push	cs
	call	0DB8h
	add	sp,6h
	mov	ax,46h
	jmp	1625h
31FF:15A1    90                                            .              

l31FF_15A2:
	mov	si,[bp-6h]
	mov	ax,si
	shl	si,1h
	add	si,ax
	shl	si,1h
	shl	si,1h
	mov	ax,[bp+si+0FF10h]
	mov	si,[bp-6h]
	mov	cx,si
	shl	si,1h
	add	si,cx
	shl	si,1h
	shl	si,1h
	cmp	[bp+si+0FF14h],ax
	jl	15ECh

l31FF_15C6:
	mov	si,cx
	mov	ax,si
	shl	si,1h
	add	si,ax
	shl	si,1h
	shl	si,1h
	mov	ax,[bp+si+0FF12h]
	mov	si,cx
	shl	si,1h
	add	si,cx
	shl	si,1h
	shl	si,1h
	cmp	[bp+si+0FF14h],ax
	jg	15ECh

l31FF_15E6:
	mov	ax,1h
	jmp	15EEh
31FF:15EB                                  90                        .    

l31FF_15EC:
	sub	ax,ax

l31FF_15EE:
	mov	[bp-8h],ax
	or	ax,ax
	jz	1634h

l31FF_15F5:
	mov	si,[bp-6h]
	mov	ax,si
	shl	si,1h
	add	si,ax
	shl	si,1h
	shl	si,1h
	mov	ax,[bp+si+0FF0Eh]
	mov	si,[bp-6h]
	mov	cx,si
	shl	si,1h
	add	si,cx
	shl	si,1h
	shl	si,1h
	add	ax,[bp+si+0FF14h]
	mov	si,cx
	shl	si,1h
	add	si,cx
	shl	si,1h
	shl	si,1h
	sub	ax,[bp+si+0FF10h]

l31FF_1625:
	push	ax
	push	cs
	call	0B72h
	add	sp,2h

l31FF_162D:
	dec	word ptr [bp-2h]
	jmp	1488h
31FF:1633          90                                        .            

l31FF_1634:
	mov	word ptr [1A2Ah],776h
	jmp	1770h
31FF:163D                                        90                    .  

l31FF_163E:
	cmp	word ptr [bp-6h],0h
	jz	1658h

l31FF_1644:
	cmp	word ptr [bp+0FEF8h],0h
	jz	164Eh

l31FF_164B:
	jmp	135Fh

l31FF_164E:
	mov	word ptr [1A2Ah],7D0h
	jmp	1770h
31FF:1657                      90                                .        

l31FF_1658:
	mov	word ptr [1A2Ah],834h
	jmp	1770h
31FF:1661    90                                            .              

l31FF_1662:
	mov	si,[bp-6h]
	shl	si,1h
	cmp	word ptr [bp+si-28h],80h
	jnz	1698h

l31FF_166E:
	cmp	word ptr [bp+0FEF8h],0h
	jz	168Eh

l31FF_1675:
	mov	ax,7h
	push	ax
	push	cs
	call	0B72h
	add	sp,2h
	mov	ax,9Dh
	push	ax
	push	cs
	call	0B72h
	add	sp,2h
	jmp	1488h

l31FF_168E:
	mov	word ptr [1A2Ah],898h
	jmp	1770h
31FF:1697                      90                                .        

l31FF_1698:
	mov	si,[bp-6h]
	shl	si,1h
	cmp	word ptr [bp+si-28h],81h
	jnz	16B0h

l31FF_16A4:
	dec	word ptr [bp-6h]
	mov	word ptr [bp-4h],6Eh
	jmp	1770h
31FF:16AF                                              90                .

l31FF_16B0:
	cmp	word ptr [bp-6h],0h
	jz	16CAh

l31FF_16B6:
	cmp	word ptr [bp+0FEF8h],0h
	jz	16C0h

l31FF_16BD:
	jmp	135Fh

l31FF_16C0:
	mov	word ptr [1A2Ah],8FCh
	jmp	1770h
31FF:16C9                            90                            .      

l31FF_16CA:
	mov	word ptr [1A2Ah],960h
	jmp	1770h
31FF:16D3          90                                        .            

l31FF_16D4:
	sub	ax,ax
	mov	[bp+0FEF8h],ax
	push	cs
	call	026Eh
	mov	[bp-4h],ax
	cmp	ax,7Ah
	jnz	16F0h

l31FF_16E6:
	mov	word ptr [bp-36h],1h
	jmp	1770h
31FF:16EE                                           90 90               ..

l31FF_16F0:
	mov	word ptr [1A2Ah],9C4h
	jmp	1770h

l31FF_16F8:
	push	word ptr [bp-4h]
	push	cs
	call	099Ch
	add	sp,2h
	mov	si,[bp-6h]
	shl	si,1h
	push	word ptr [bp+si-28h]
	mov	si,ax
	push	cs
	call	099Ch
	add	sp,2h
	cmp	ax,si
	jc	171Ah

l31FF_1717:
	jmp	135Fh

l31FF_171A:
	jmp	144Bh
31FF:171D                                        90                    .  
l31FF_171E	dw	0x0FB0
l31FF_1720	dw	0x1770
l31FF_1722	dw	0x1770
l31FF_1724	dw	0x1770
l31FF_1726	dw	0x125E
l31FF_1728	dw	0x1770
l31FF_172A	dw	0x1770
l31FF_172C	dw	0x1770
l31FF_172E	dw	0x0FF6
l31FF_1730	dw	0x1012
l31FF_1732	dw	0x102A
l31FF_1734	dw	0x1038
l31FF_1736	dw	0x103E
l31FF_1738	dw	0x1444
l31FF_173A	dw	0x1476
l31FF_173C	dw	0x1770
l31FF_173E	dw	0x1374
l31FF_1740	dw	0x1770
l31FF_1742	dw	0x1466
l31FF_1744	dw	0x1662
l31FF_1746	dw	0x16D4
l31FF_1748	dw	0x1770
l31FF_174A	dw	0x1331
l31FF_174C	dw	0x144B
l31FF_174E	dw	0x16F8
l31FF_1750	dw	0x16F8
l31FF_1752	dw	0x16F8
l31FF_1754	dw	0x16F8
l31FF_1756	dw	0x16F8
l31FF_1758	dw	0x16F8
l31FF_175A	dw	0x16F8
l31FF_175C	dw	0x16F8
l31FF_175E	dw	0x16F8
l31FF_1760	dw	0x16F8
l31FF_1762	dw	0x16F8
l31FF_1764	dw	0x16F8
l31FF_1766	dw	0x16F8
l31FF_1768	dw	0x144B
l31FF_176A	dw	0x16F8
l31FF_176C	dw	0x16F8
l31FF_176E	dw	0x16F8

l31FF_1770:
	cmp	word ptr [bp-6h],0Fh
	jc	177Ch

l31FF_1776:
	mov	word ptr [1A2Ah],3h

l31FF_177C:
	cmp	word ptr [1A2Ah],0h
	jnz	1786h

l31FF_1783:
	jmp	0F8Ah

l31FF_1786:
	cmp	word ptr [bp+0FEF8h],0h
	jnz	179Ah

l31FF_178D:
	cmp	word ptr [1A2Ah],0h
	jnz	179Ah

l31FF_1794:
	mov	word ptr [1A2Ah],0A28h

l31FF_179A:
	cmp	word ptr [1A2Ah],2h
	jnz	17BAh

l31FF_17A1:
	mov	ax,5EF6h
	push	ds
	push	ax
	mov	ax,5EF8h
	push	ds
	push	ax
	lea	ax,[bp+0FEFAh]
	push	ss
	push	ax
	push	cs
	call	006Ah
	add	sp,0Ch
	jmp	17C7h

l31FF_17BA:
	cmp	word ptr [1A2Ah],4h
	jnz	17C7h

l31FF_17C1:
	mov	word ptr [1A2Ah],2h

l31FF_17C7:
	mov	ax,34h
	push	ax
	push	cs
	call	0B72h
	add	sp,2h
	mov	ax,[1A2Ah]
	pop	si
	mov	sp,bp
	pop	bp
	retf

;; fn31FF_17DA: 31FF:17DA
;;   Called from:
;;     31FF:1D55 (in fn31FF_1D44)
;;     31FF:2096 (in fn31FF_207C)
fn31FF_17DA proc
	push	bp
	mov	bp,sp
	sub	sp,2Ah
	push	si
	les	bx,[1296h]
	mov	ax,es:[bx+8h]
	mov	dx,es:[bx+0Ah]
	mov	[bp-12h],ax
	mov	[bp-10h],dx
	mov	ax,es:[bx+0Ch]
	mov	[bp-14h],ax
	mov	ax,es:[bx+2h]
	mov	[bp-28h],ax
	mov	ax,26h
	push	ax
	push	word ptr [bp-28h]
	push	dx
	push	word ptr [bp-12h]
	call	far 2017h:035Bh
	add	sp,8h
	mov	[bp-2h],ax
	jmp	19B9h

l31FF_181A:
	inc	word ptr [bp-2h]
	mov	ax,[bp-28h]
	cmp	[bp-2h],ax
	jc	1828h

l31FF_1825:
	jmp	1998h

l31FF_1828:
	mov	bx,[bp-2h]
	les	si,[bp-12h]
	mov	al,es:[bx+si]
	mov	[bp-2Ah],al
	sub	ah,ah
	push	ax
	call	far 38ADh:0040h
	add	sp,2h
	test	al,1h
	jnz	184Ch

l31FF_1843:
	cmp	byte ptr [bp-2Ah],5Fh
	jz	184Ch

l31FF_1849:
	jmp	1998h

l31FF_184C:
	lea	ax,[bp-24h]
	push	ss
	push	ax
	mov	ax,[bp-28h]
	sub	ax,[bp-2h]
	push	ax
	mov	ax,[bp-2h]
	add	ax,[bp-12h]
	mov	dx,[bp-10h]
	push	dx
	push	ax
	push	cs
	call	0106h
	add	sp,0Ah
	mov	[bp-18h],ax
	lea	ax,[bp-24h]
	push	ss
	push	ax
	call	far 2BC7h:0494h
	add	sp,4h
	mov	[bp-0Ch],ax
	mov	[bp-0Ah],dx
	or	ax,dx
	jnz	1887h

l31FF_1884:
	jmp	1992h

l31FF_1887:
	les	bx,[bp-0Ch]
	mov	ax,es:[bx+4h]
	or	ax,es:[bx+6h]
	jnz	1897h

l31FF_1894:
	jmp	1992h

l31FF_1897:
	les	bx,es:[bx+4h]
	test	word ptr es:[bx],100h
	jnz	18A5h

l31FF_18A2:
	jmp	1992h

l31FF_18A5:
	mov	si,[bp-2h]
	add	si,[bp-18h]
	cmp	[bp-28h],si
	jbe	18BCh

l31FF_18B0:
	les	bx,[bp-12h]
	cmp	byte ptr es:[bx+si],2Eh
	jnz	18BCh

l31FF_18B9:
	inc	word ptr [bp-18h]

l31FF_18BC:
	les	bx,[bp-0Ch]
	les	bx,es:[bx+4h]
	mov	ax,es:[bx+2h]
	mov	[bp-16h],ax
	mov	ax,[bp-28h]
	sub	ax,[bp-18h]
	add	ax,[bp-16h]
	dec	ax
	mov	[bp-0Eh],ax
	mov	ax,[bp-2h]
	add	ax,[bp-18h]
	mov	[bp-26h],ax
	mov	ax,[bp-0Eh]
	inc	ax
	mov	[bp-8h],ax
	push	ax
	call	far 21DCh:0718h
	add	sp,2h
	mov	[bp-6h],ax
	mov	[bp-4h],dx
	mov	bx,[bp-0Eh]
	les	si,[bp-6h]
	mov	byte ptr es:[bx+si],0h
	dec	word ptr [bp-2h]
	push	word ptr [bp-2h]
	push	word ptr [bp-10h]
	push	word ptr [bp-12h]
	push	dx
	push	ax
	call	far 2017h:02ECh
	add	sp,0Ah
	push	word ptr [bp-16h]
	les	bx,[bp-0Ch]
	les	bx,es:[bx+4h]
	push	word ptr es:[bx+8h]
	push	word ptr es:[bx+6h]
	mov	ax,[bp-2h]
	add	ax,si
	mov	dx,[bp-4h]
	push	dx
	push	ax
	call	far 2017h:02ECh
	add	sp,0Ah
	mov	ax,[bp-28h]
	sub	ax,[bp-26h]
	push	ax
	mov	ax,[bp-26h]
	add	ax,[bp-12h]
	mov	dx,[bp-10h]
	push	dx
	push	ax
	mov	ax,[bp-2h]
	add	ax,[bp-16h]
	add	ax,si
	mov	dx,[bp-4h]
	push	dx
	push	ax
	call	far 2017h:02ECh
	add	sp,0Ah
	cmp	word ptr [bp-14h],0h
	jz	1978h

l31FF_1967:
	push	word ptr [bp-14h]
	push	word ptr [bp-10h]
	push	word ptr [bp-12h]
	call	far 21DCh:074Eh
	add	sp,6h

l31FF_1978:
	mov	ax,[bp-6h]
	mov	dx,[bp-4h]
	mov	[bp-12h],ax
	mov	[bp-10h],dx
	mov	ax,[bp-8h]
	mov	[bp-14h],ax
	mov	ax,[bp-0Eh]
	mov	[bp-28h],ax
	jmp	1998h

l31FF_1992:
	mov	ax,[bp-18h]
	add	[bp-2h],ax

l31FF_1998:
	mov	ax,26h
	push	ax
	mov	ax,[bp-28h]
	sub	ax,[bp-2h]
	push	ax
	mov	ax,[bp-2h]
	add	ax,[bp-12h]
	mov	dx,[bp-10h]
	push	dx
	push	ax
	call	far 2017h:035Bh
	add	sp,8h
	add	[bp-2h],ax

l31FF_19B9:
	mov	ax,[bp-28h]
	cmp	[bp-2h],ax
	jnc	19C4h

l31FF_19C1:
	jmp	181Ah

l31FF_19C4:
	les	bx,[1296h]
	mov	ax,[bp-12h]
	mov	dx,[bp-10h]
	mov	es:[bx+8h],ax
	mov	es:[bx+0Ah],dx
	mov	ax,[bp-14h]
	mov	es:[bx+0Ch],ax
	mov	ax,[bp-28h]
	mov	es:[bx+2h],ax
	pop	si
	mov	sp,bp
	pop	bp
	retf
31FF:19E9                            90                            .      

;; fn31FF_19EA: 31FF:19EA
;;   Called from:
;;     31FF:1B5A (in fn31FF_1B0A)
fn31FF_19EA proc
	push	bp
	mov	bp,sp
	sub	sp,14h
	push	si
	mov	word ptr [bp-2h],1h
	jmp	1A0Dh

l31FF_19F8:
	mov	si,[bp-2h]
	mov	cl,3h
	shl	si,cl
	les	bx,[1A46h]
	cmp	word ptr es:[bx+si+6h],0h
	jz	1A15h

l31FF_1A0A:
	inc	word ptr [bp-2h]

l31FF_1A0D:
	mov	ax,[1A4Ah]
	cmp	[bp-2h],ax
	jc	19F8h

l31FF_1A15:
	mov	ax,[1A4Ah]
	cmp	[bp-2h],ax
	jnz	1A9Ah

l31FF_1A1D:
	add	ax,40h
	mov	[bp-8h],ax
	mov	cl,3h
	shl	ax,cl
	mov	[bp-0Ah],ax
	push	ax
	lea	ax,[bp-6h]
	push	ss
	push	ax
	call	far 21DCh:0696h
	add	sp,6h
	or	ax,ax
	jnz	1A3Fh

l31FF_1A3C:
	jmp	1B02h

l31FF_1A3F:
	push	word ptr [bp-0Ah]
	sub	ax,ax
	push	ax
	push	word ptr [bp-4h]
	push	word ptr [bp-6h]
	call	far 2017h:0228h
	add	sp,8h
	push	word ptr [1A4Ch]
	push	word ptr [1A48h]
	push	word ptr [1A46h]
	push	word ptr [bp-4h]
	push	word ptr [bp-6h]
	call	far 2017h:02ECh
	add	sp,0Ah
	push	word ptr [1A4Ch]
	push	word ptr [1A48h]
	push	word ptr [1A46h]
	call	far 21DCh:0702h
	add	sp,6h
	mov	ax,[bp-6h]
	mov	dx,[bp-4h]
	mov	[1A46h],ax
	mov	[1A48h],dx
	mov	ax,[bp-8h]
	mov	[1A4Ah],ax
	mov	ax,[bp-0Ah]
	mov	[1A4Ch],ax

l31FF_1A9A:
	push	word ptr [1A28h]
	lea	ax,[bp-10h]
	push	ss
	push	ax
	call	far 21DCh:0696h
	add	sp,6h
	or	ax,ax
	jz	1B02h

l31FF_1AAF:
	push	word ptr [1A28h]
	push	word ptr [1A24h]
	push	word ptr [1A22h]
	push	word ptr [bp-0Eh]
	push	word ptr [bp-10h]
	call	far 2017h:02ECh
	add	sp,0Ah
	mov	ax,[bp-2h]
	mov	cl,3h
	shl	ax,cl
	add	ax,[1A46h]
	mov	dx,[1A48h]
	mov	[bp-14h],ax
	mov	[bp-12h],dx
	les	bx,[bp-14h]
	mov	ax,[bp-10h]
	mov	dx,[bp-0Eh]
	mov	es:[bx],ax
	mov	es:[bx+2h],dx
	mov	ax,[1A28h]
	mov	es:[bx+4h],ax
	mov	es:[bx+6h],ax
	mov	ax,[bp-2h]
	pop	si
	mov	sp,bp
	pop	bp
	retf
31FF:1B01    90                                            .              

l31FF_1B02:
	sub	ax,ax
	pop	si
	mov	sp,bp
	pop	bp
	retf
31FF:1B09                            90                            .      

;; fn31FF_1B0A: 31FF:1B0A
;;   Called from:
;;     31FF:1D09 (in fn31FF_1CE2)
fn31FF_1B0A proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 38ADh:0118h
	add	sp,6h
	cmp	ax,[bp+0Ah]
	jnz	1B32h

l31FF_1B26:
	mov	word ptr [10D2h],9h

l31FF_1B2C:
	sub	ax,ax
	mov	sp,bp
	pop	bp
	retf

l31FF_1B32:
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	0F20h
	add	sp,8h
	mov	[bp-4h],ax
	or	ax,ax
	jz	1B5Ah

l31FF_1B4C:
	cmp	ax,2h
	jnz	1B26h

l31FF_1B51:
	mov	word ptr [10D2h],2h
	jmp	1B2Ch
31FF:1B59                            90                            .      

l31FF_1B5A:
	push	cs
	call	19EAh
	mov	[bp-2h],ax
	mov	sp,bp
	pop	bp
	retf
31FF:1B65                90                                    .          

;; fn31FF_1B66: 31FF:1B66
;;   Called from:
;;     31FF:1BFC (in fn31FF_1BE6)
fn31FF_1B66 proc
	push	bp
	mov	bp,sp
	sub	sp,40h
	push	si
	cmp	word ptr [bp+6h],0h
	jz	1BD2h

l31FF_1B73:
	mov	ax,40h
	push	ax
	mov	ax,129Ah
	push	ds
	push	ax
	lea	ax,[bp-40h]
	push	ss
	push	ax
	call	far 2017h:02ECh
	add	sp,0Ah
	mov	ax,40h
	push	ax
	sub	ax,ax
	push	ax
	mov	ax,129Ah
	push	ds
	push	ax
	call	far 2017h:0228h
	add	sp,8h
	mov	bx,[bp+6h]
	mov	cl,3h
	shl	bx,cl
	les	si,[1A46h]
	push	word ptr es:[bx+si+2h]
	push	word ptr es:[bx+si]
	call	far 3BC2h:009Dh
	add	sp,4h
	mov	ax,40h
	push	ax
	lea	ax,[bp-40h]
	push	ss
	push	ax
	mov	ax,129Ah
	push	ds
	push	ax
	call	far 2017h:02ECh
	add	sp,0Ah
	pop	si
	mov	sp,bp
	pop	bp
	retf

l31FF_1BD2:
	add	word ptr [1296h],10h
	les	bx,[1296h]
	mov	word ptr es:[bx],0h
	pop	si
	mov	sp,bp
	pop	bp
	retf
31FF:1BE5                90                                    .          

;; fn31FF_1BE6: 31FF:1BE6
;;   Called from:
;;     2644:23C5 (in fn2644_2384)
;;     2644:2506 (in fn2644_24C0)
;;     2644:2687 (in fn2644_24C0)
;;     2EB3:235B (in fn2EB3_2340)
;;     2EB3:239D (in fn2EB3_2340)
;;     31FF:1D2E (in fn31FF_1CE2)
fn31FF_1BE6 proc
	push	bp
	mov	bp,sp
	sub	sp,2h
	mov	ax,[10D4h]
	mov	[bp-2h],ax
	mov	ax,[bp+8h]
	or	[10D4h],ax
	push	word ptr [bp+6h]
	push	cs
	call	1B66h
	mov	ax,[bp-2h]
	mov	[10D4h],ax
	mov	sp,bp
	pop	bp
	retf

;; fn31FF_1C0A: 31FF:1C0A
;;   Called from:
;;     2644:4727 (in fn2644_45CA)
;;     2644:4766 (in fn2644_45CA)
;;     2644:4798 (in fn2644_45CA)
;;     2EB3:0028 (in fn2EB3_0002)
;;     31FF:1D38 (in fn31FF_1CE2)
fn31FF_1C0A proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	cmp	word ptr [bp+6h],0h
	jz	1C6Ch

l31FF_1C16:
	mov	ax,[bp+6h]
	mov	cl,3h
	shl	ax,cl
	add	ax,[1A46h]
	mov	dx,[1A48h]
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	les	bx,[bp-4h]
	cmp	word ptr es:[bx+4h],0h
	jz	1C48h

l31FF_1C35:
	push	word ptr es:[bx+4h]
	push	word ptr es:[bx+2h]
	push	word ptr es:[bx]
	call	far 21DCh:0702h
	add	sp,6h

l31FF_1C48:
	mov	ax,[bp+6h]
	mov	cl,3h
	shl	ax,cl
	add	ax,[1A46h]
	mov	dx,[1A48h]
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	les	bx,[bp-4h]
	mov	word ptr es:[bx+6h],0h
	mov	word ptr es:[bx+4h],0h

l31FF_1C6C:
	mov	sp,bp
	pop	bp
	retf
31FF:1C70 55 8B EC 83 EC 04 FF 76 08 FF 76 06 9A F5 03 17 U......v..v.....
31FF:1C80 20 83 C4 04 89 46 FC 2B C0 50 FF 76 FC FF 76 08  ....F.+.P.v..v.
31FF:1C90 FF 76 06 0E E8 73 FE 83 C4 08 89 46 FE 0B C0 75 .v...s.....F...u
31FF:1CA0 27 C7 06 D6 10 20 00 FF 76 FC 2B C0 50 FF 76 08 '.... ..v.+.P.v.
31FF:1CB0 FF 76 06 9A 72 02 68 23 83 C4 08 B8 4B 00 50 9A .v..r.h#....K.P.
31FF:1CC0 DC 0B B2 20 8B E5 5D CB B8 20 00 50 FF 76 FE 0E ... ..].. .P.v..
31FF:1CD0 E8 13 FF 83 C4 04 FF 76 FE 0E E8 2D FF 8B E5 5D .......v...-...]
31FF:1CE0 CB 90                                           ..              

;; fn31FF_1CE2: 31FF:1CE2
;;   Called from:
;;     31FF:1D5C (in fn31FF_1D44)
fn31FF_1CE2 proc
	push	bp
	mov	bp,sp
	sub	sp,0Ch
	les	bx,[1296h]
	mov	ax,es:[bx+8h]
	mov	dx,es:[bx+0Ah]
	mov	[bp-6h],ax
	mov	[bp-4h],dx
	mov	ax,es:[bx+2h]
	mov	[bp-0Ch],ax
	push	word ptr [bp+6h]
	push	ax
	push	dx
	push	word ptr [bp-6h]
	push	cs
	call	1B0Ah
	add	sp,8h
	mov	[bp-2h],ax
	or	ax,ax
	jnz	1D22h

l31FF_1D17:
	mov	word ptr [10D6h],1h
	mov	sp,bp
	pop	bp
	retf
31FF:1D21    90                                            .              

l31FF_1D22:
	call	far 2368h:033Ch
	mov	ax,1h
	push	ax
	push	word ptr [bp-2h]
	push	cs
	call	1BE6h
	add	sp,4h
	push	word ptr [bp-2h]
	push	cs
	call	1C0Ah
	add	sp,2h
	mov	sp,bp
	pop	bp
	retf
31FF:1D43          90                                        .            

;; fn31FF_1D44: 31FF:1D44
;;   Called from:
;;     1825:510B (in fn1825_4DA6)
;;     1825:6010 (in fn1825_5FCA)
;;     1825:612B (in fn1825_6078)
;;     3CEE:44CE (in fn3CEE_4490)
;;     3CEE:55B2 (in fn3CEE_5556)
fn31FF_1D44 proc
	push	bp
	mov	bp,sp
	sub	sp,2h
	les	bx,[1296h]
	test	word ptr es:[bx],100h
	jz	1D68h

l31FF_1D55:
	push	cs
	call	17DAh
	sub	ax,ax
	push	ax
	push	cs
	call	1CE2h
	add	sp,2h
	mov	sp,bp
	pop	bp
	retf
31FF:1D67                      90                                .        

l31FF_1D68:
	mov	word ptr [10D2h],1h
	mov	sp,bp
	pop	bp
	retf
31FF:1D72       C4 1E 96 12 26 F7 07 00 01 74 11 0E E8 59   ....&....t...Y
31FF:1D80 FA B8 01 00 50 0E E8 59 FF 83 C4 02 CB 90 C7 06 ....P..Y........
31FF:1D90 D2 10 01 00 CB 90 C4 1E 96 12 26 F7 07 00 01 74 ..........&....t
31FF:1DA0 11 0E E8 35 FA B8 02 00 50 0E E8 35 FF 83 C4 02 ...5....P..5....
31FF:1DB0 CB 90 C7 06 D2 10 01 00 CB 90 C4 1E 96 12 26 F7 ..............&.
31FF:1DC0 07 00 01 74 05 0E E8 11 FA CB C7 06 D2 10 01 00 ...t............
31FF:1DD0 CB 90 55 8B EC 83 EC 04 C4 1E 96 12 26 F7 07 00 ..U.........&...
31FF:1DE0 01 74 65 0E E8 F3 F9 C4 1E 96 12 26 8B 47 08 26 .te........&.G.&
31FF:1DF0 8B 57 0A 89 46 FC 89 56 FE 26 83 7F 02 02 72 30 .W..F..V.&....r0
31FF:1E00 C4 5E FC 26 8A 07 2A E4 50 9A 1E 00 AD 38 83 C4 .^.&..*.P....8..
31FF:1E10 02 3C 4F 75 1B C4 5E FC 26 8A 47 01 2A E4 50 9A .<Ou..^.&.G.*.P.
31FF:1E20 1E 00 AD 38 83 C4 02 3C 4E 75 05 B8 01 00 EB 02 ...8...<Nu......
31FF:1E30 2B C0 50 FF 76 06 9A A4 01 81 2C 83 C4 04 9A 3C +.P.v.....,....<
31FF:1E40 03 68 23 8B E5 5D CB 90 C4 1E 96 12 26 F6 07 80 .h#..]......&...
31FF:1E50 74 24 26 83 7F 08 00 74 05 B8 01 00 EB 02 2B C0 t$&....t......+.
31FF:1E60 50 FF 76 06 9A A4 01 81 2C 83 C4 04 83 2E 96 12 P.v.....,.......
31FF:1E70 10 8B E5 5D CB 90 C7 06 D2 10 01 00 8B E5 5D CB ...]..........].
31FF:1E80 55 8B EC 83 EC 1E 56 C4 1E 96 12 26 F7 07 00 01 U.....V....&....
31FF:1E90 75 03 E9 DB 01 0E E8 41 F9 C4 1E 96 12 26 8B 47 u......A.....&.G
31FF:1EA0 08 26 8B 57 0A 89 46 FA 89 56 FC 26 8B 47 0C 89 .&.W..F..V.&.G..
31FF:1EB0 46 F4 26 8B 47 02 89 46 E2 83 2E 96 12 10 8D 46 F.&.G..F.......F
31FF:1EC0 E4 16 50 FF 76 E2 52 FF 76 FA 0E E8 38 E2 83 C4 ..P.v.R.v...8...
31FF:1ED0 0A 89 46 FE 8B 46 E2 39 46 FE 75 1A 8D 46 E4 16 ..F..F.9F.u..F..
31FF:1EE0 50 9A C2 03 C7 2B 83 C4 04 52 50 9A 0E 03 68 23 P....+...RP...h#
31FF:1EF0 83 C4 04 E9 3E 01 83 7E FE 00 75 03 E9 2F 01 8B ....>..~..u../..
31FF:1F00 46 E2 39 46 FE 73 1A 2B 46 FE 50 8B 46 FE 03 46 F.9F.s.+F.P.F..F
31FF:1F10 FA 8B 56 FC 52 50 9A 18 01 AD 38 83 C4 06 01 46 ..V.RP....8....F
31FF:1F20 FE 8B 46 E2 39 46 FE 74 B3 8B 5E FE C4 76 FA 26 ..F.9F.t..^..v.&
31FF:1F30 80 38 5B 75 59 8D 46 E4 16 50 9A 94 04 C7 2B 83 .8[uY.F..P....+.
31FF:1F40 C4 04 52 50 9A 0E 03 68 23 83 C4 04 FF 46 FE 8B ..RP...h#....F..
31FF:1F50 46 E2 2B 46 FE 50 2B C0 50 8B 46 FE 03 C6 8B 56 F.+F.P+.P.F....V
31FF:1F60 FC 52 50 9A 72 02 68 23 83 C4 08 B8 03 00 50 0E .RP.r.h#......P.
31FF:1F70 E8 6F FD 83 C4 02 83 3E D2 10 00 74 09 9A 68 03 .o.....>...t..h.
31FF:1F80 68 23 E9 AF 00 90 9A 08 12 68 23 E9 A6 00 8B 46 h#.......h#....F
31FF:1F90 FE 40 3B 46 E2 72 03 E9 94 00 8B 5E FE C4 76 FA .@;F.r.....^..v.
31FF:1FA0 26 80 38 2D 74 03 E9 85 00 8B F3 8B 5E FA 26 80 &.8-t.......^.&.
31FF:1FB0 78 01 3E 75 79 83 46 FE 02 8D 46 E4 16 50 9A 94 x.>uy.F...F..P..
31FF:1FC0 04 C7 2B 83 C4 04 89 46 F6 89 56 F8 8D 46 E4 16 ..+....F..V..F..
31FF:1FD0 50 8B 46 E2 2B 46 FE 50 8B 46 FE 03 46 FA 8B 56 P.F.+F.P.F..F..V
31FF:1FE0 FC 52 50 0E E8 1F E1 83 C4 0A 8D 46 E4 16 50 9A .RP........F..P.
31FF:1FF0 94 04 C7 2B 83 C4 04 89 46 F0 89 56 F2 83 06 96 ...+....F..V....
31FF:2000 12 10 C4 1E 96 12 26 C7 07 00 04 C4 5E F6 26 8B ......&.....^.&.
31FF:2010 47 08 C4 1E 96 12 26 89 47 08 52 FF 76 F0 9A 0E G.....&.G.R.v...
31FF:2020 03 68 23 83 C4 04 9A 22 09 68 23 EB 07 90 C7 06 .h#....".h#.....
31FF:2030 D2 10 0A 00 83 3E D2 10 00 74 19 FF 76 E2 FF 76 .....>...t..v..v
31FF:2040 F4 FF 76 FC FF 76 FA 9A 72 02 68 23 83 C4 08 5E ..v..v..r.h#...^
31FF:2050 8B E5 5D CB 83 7E F4 00 74 1C FF 76 F4 FF 76 FC ..]..~..t..v..v.
31FF:2060 FF 76 FA 9A 4E 07 DC 21 83 C4 06 5E 8B E5 5D CB .v..N..!...^..].
31FF:2070 C7 06 D2 10 01 00 5E 8B E5 5D CB 90             ......^..]..    

;; fn31FF_207C: 31FF:207C
;;   Called from:
;;     1825:605D (in fn1825_6042)
fn31FF_207C proc
	push	bp
	mov	bp,sp
	sub	sp,54h
	push	word ptr [bp+0Ah]
	sub	ax,ax
	push	ax
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 2368h:0272h
	add	sp,8h
	push	cs
	call	17DAh
	mov	word ptr [1A28h],0h
	sub	ax,ax
	push	ax
	les	bx,[1296h]
	push	word ptr es:[bx+2h]
	push	word ptr es:[bx+0Ah]
	push	word ptr es:[bx+8h]
	push	cs
	call	0F20h
	add	sp,8h
	mov	[bp-0Ch],ax
	call	far 2368h:033Ch
	cmp	word ptr [bp-0Ch],0h
	jnz	20CFh

l31FF_20C8:
	cmp	word ptr [1A28h],0h
	jnz	20E6h

l31FF_20CF:
	cmp	word ptr [bp-0Ch],2h
	jnz	20DEh

l31FF_20D5:
	mov	word ptr [bp-0Ch],0FFFFh
	jmp	2240h
31FF:20DD                                        90                    .  

l31FF_20DE:
	mov	word ptr [bp-0Ch],0FFFDh
	jmp	2240h

l31FF_20E6:
	mov	ax,[1296h]
	mov	dx,[1298h]
	mov	[bp-6h],ax
	mov	[bp-4h],dx
	mov	ax,40h
	push	ax
	mov	ax,129Ah
	push	ds
	push	ax
	lea	ax,[bp-54h]
	push	ss
	push	ax
	call	far 2017h:02ECh
	add	sp,0Ah
	mov	ax,40h
	push	ax
	sub	ax,ax
	push	ax
	mov	ax,129Ah
	push	ds
	push	ax
	call	far 2017h:0228h
	add	sp,8h
	mov	ax,[1A22h]
	mov	dx,[1A24h]
	mov	[bp-14h],ax
	mov	[bp-12h],dx
	mov	ax,[1A28h]
	mov	[bp-10h],ax
	jmp	21CFh
31FF:2133          90                                        .            

l31FF_2134:
	cmp	word ptr [bp-0Ch],0h
	jz	213Dh

l31FF_213A:
	jmp	21D8h

l31FF_213D:
	les	bx,[bp-14h]
	mov	al,es:[bx]
	sub	ah,ah
	cmp	ax,34h
	jz	21B0h

l31FF_214A:
	cmp	ax,46h
	jz	2182h

l31FF_214F:
	cmp	ax,51h
	jc	2159h

l31FF_2154:
	cmp	ax,52h
	jbe	21A8h

l31FF_2159:
	push	es
	push	bx
	call	far 3BC2h:013Eh
	add	sp,4h
	mov	[bp-0Eh],ax
	cmp	word ptr [10D2h],0h
	jz	21C6h

l31FF_216D:
	cmp	word ptr [10D2h],2h
	jz	217Bh

l31FF_2174:
	cmp	word ptr [10D2h],7h
	jnz	21B8h

l31FF_217B:
	mov	word ptr [bp-0Ch],0FFFFh
	jmp	21BDh

l31FF_2182:
	mov	ax,[bp-14h]
	mov	dx,[bp-12h]
	inc	ax
	mov	[bp-0Ah],ax
	mov	[bp-8h],dx
	or	ax,dx
	jz	21A0h

l31FF_2193:
	les	bx,[bp-0Ah]
	mov	ax,es:[bx+0Eh]
	or	ax,es:[bx+10h]
	jnz	21A8h

l31FF_21A0:
	mov	word ptr [bp-0Ch],0FFFFh
	jmp	21CFh
31FF:21A7                      90                                .        

l31FF_21A8:
	mov	word ptr [bp-0Ch],0FFFEh
	jmp	21CFh
31FF:21AF                                              90                .

l31FF_21B0:
	mov	word ptr [bp-10h],0h
	jmp	21CFh
31FF:21B7                      90                                .        

l31FF_21B8:
	mov	word ptr [bp-0Ch],0FFFDh

l31FF_21BD:
	mov	word ptr [10D2h],0h
	jmp	21CFh
31FF:21C5                90                                    .          

l31FF_21C6:
	mov	ax,[bp-0Eh]
	sub	[bp-10h],ax
	add	[bp-14h],ax

l31FF_21CF:
	cmp	word ptr [bp-10h],0h
	jz	21D8h

l31FF_21D5:
	jmp	2134h

l31FF_21D8:
	cmp	word ptr [bp-0Ch],0h
	jnz	2216h

l31FF_21DE:
	mov	ax,[bp-6h]
	mov	dx,[bp-4h]
	add	ax,10h
	cmp	ax,[1296h]
	jnz	21F3h

l31FF_21ED:
	cmp	dx,[1298h]
	jz	21FAh

l31FF_21F3:
	mov	word ptr [bp-0Ch],0FFFDh
	jmp	2216h

l31FF_21FA:
	les	bx,[1296h]
	test	word ptr es:[bx],800h
	jz	220Ch

l31FF_2205:
	les	bx,es:[bx+8h]
	jmp	2210h
31FF:220B                                  90                        .    

l31FF_220C:
	les	bx,[1296h]

l31FF_2210:
	mov	ax,es:[bx]
	mov	[bp-2h],ax

l31FF_2216:
	mov	ax,[1296h]
	mov	dx,[1298h]
	cmp	[bp-6h],ax
	jnc	222Ah

l31FF_2222:
	call	far 2368h:033Ch
	jmp	2216h
31FF:2229                            90                            .      

l31FF_222A:
	mov	ax,40h
	push	ax
	lea	ax,[bp-54h]
	push	ss
	push	ax
	mov	ax,129Ah
	push	ds
	push	ax
	call	far 2017h:02ECh
	add	sp,0Ah

l31FF_2240:
	cmp	word ptr [bp-0Ch],0h
	jz	224Ch

l31FF_2246:
	mov	ax,[bp-0Ch]
	mov	[bp-2h],ax

l31FF_224C:
	mov	ax,[bp-2h]
	mov	sp,bp
	pop	bp
	retf
31FF:2253          90 55 8B EC 83 EC 04 C7 06 9A 12 00 01    .U...........
31FF:2260 C7 06 9C 12 01 00 C7 06 A6 12 00 00 FF 36 AC 12 .............6..
31FF:2270 FF 36 B4 12 FF 36 B2 12 0E E8 00 FE 83 C4 06 3D .6...6.........=
31FF:2280 10 00 74 22 7F 6E 2D FD FF 3D 0B 00 76 03 E9 81 ..t".n-..=..v...
31FF:2290 00 03 C0 93 2E FF A7 DC 22 90 B8 FA 5E 89 46 FC ........"...^.F.
31FF:22A0 8C 5E FE EB 73 90 B8 FC 5E EB F2 90 B8 FE 5E EB .^..s...^.....^.
31FF:22B0 EC 90 B8 00 5F EB E6 90 B8 02 5F EB E0 90 B8 04 ...._....._.....
31FF:22C0 5F EB DA 90 B8 06 5F 89 46 FC 8C 5E FE C7 06 9C _....._.F..^....
31FF:22D0 12 02 00 EB 43 90 B8 0A 5F EB EC 90 C4 22 D6 22 ....C..._...."."
31FF:22E0 12 23 12 23 12 23 A6 22 12 23 12 23 12 23 12 23 .#.#.#.".#.#.#.#
31FF:22F0 12 23 A6 22 3D 20 00 74 B9 3D 40 00 74 B4 3D 80 .#."= .t.=@.t.=.
31FF:2300 00 74 A9 3D 00 01 74 92 3D 00 03 74 AB 3D 00 20 .t.=..t.=..t.=. 
31FF:2310 74 AC B8 0E 5F EB 86 90 8B 46 FC 8B 56 FE A3 A2 t..._....F..V...
