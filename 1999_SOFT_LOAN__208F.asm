;;; Segment 208F (208F:0000)
208F:0000 06 9A 7C 01 8F 20 83 C4 04 5D CB 90             ..|.. ...]..    

;; fn208F_000C: 208F:000C
;;   Called from:
;;     21DC:0EDC (in fn21DC_0EC2)
fn208F_000C proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	mov	word ptr [10CAh],0h
	mov	ah,30h
	int	21h
	cmp	al,0h
	jnz	0022h

l208F_001F:
	mov	ax,1h

l208F_0022:
	mov	bl,ah
	mov	bh,0h
	mov	ah,64h
	mul	ah
	add	ax,bx
	mov	[10CEh],ax
	cmp	ax,12Ch
	jnc	003Ch

l208F_0034:
	mov	byte ptr [10D0h],7h
	jmp	0051h
208F:003B                                  90                        .    

l208F_003C:
	push	ds
	mov	ah,25h
	mov	al,24h
	mov	dx,208Fh
	mov	ds,dx
	mov	dx,229h
	int	21h
	pop	ds
	mov	byte ptr [10D0h],0FFh

l208F_0051:
	pop	di
	pop	si
	pop	bp
	retf
208F:0055                55 56 57 8B EC C7 06 CA 10 00 00      UVW........
208F:0060 5F 5E 5D CB 55 56 57 8B EC C7 06 CA 10 00 00 1E _^].UVW.........
208F:0070 B4 3C C5 56 0A 8B 4E 0E CD 21 1F 73 06 A3 CA 10 .<.V..N..!.s....
208F:0080 B8 FF FF 5F 5E 5D CB 55 56 57 8B EC C7 06 CA 10 ..._^].UVW......
208F:0090 00 00 B4 3D 8A 46 0E 22 06 D0 10 1E C5 56 0A CD ...=.F.".....V..
208F:00A0 21 1F 73 06 A3 CA 10 B8 FF FF 5F 5E 5D CB       !.s......._^].  

;; fn208F_00AE: 208F:00AE
;;   Called from:
;;     20B2:121D (in fn20B2_1192)
;;     21DC:0509 (in fn21DC_04BA)
;;     21DC:0522 (in fn21DC_04BA)
;;     2644:0FA5 (in fn2644_0F82)
;;     2644:0FC2 (in fn2644_0F82)
;;     2EB3:0012 (in fn2EB3_0002)
fn208F_00AE proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	mov	word ptr [10CAh],0h
	mov	ah,3Eh
	mov	bx,[bp+0Ah]
	int	21h
	jnc	00C5h

l208F_00C2:
	mov	[10CAh],ax

l208F_00C5:
	pop	di
	pop	si
	pop	bp
	retf

;; fn208F_00C9: 208F:00C9
;;   Called from:
;;     2644:2162 (in fn2644_20AA)
;;     2B41:0038 (in fn2B41_0006)
;;     2B9C:0057 (in fn2B9C_000C)
;;     2B9C:00DC (in fn2B9C_009C)
;;     2D1A:0231 (in fn2D1A_0186)
;;     2D1A:05FA (in fn2D1A_0598)
;;     2E37:055C (in fn2E37_04CE)
;;     2E37:064E (in fn2E37_05C0)
;;     2EB3:0AB1 (in fn2EB3_0A8C)
fn208F_00C9 proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	mov	word ptr [10CAh],0h
	push	ds
	mov	ah,3Fh
	mov	bx,[bp+0Ah]
	lds	dx,[bp+0Ch]
	mov	cx,[bp+10h]
	int	21h
	pop	ds
	jnc	00EBh

l208F_00E5:
	mov	[10CAh],ax
	mov	ax,0h

l208F_00EB:
	pop	di
	pop	si
	pop	bp
	retf

;; fn208F_00EF: 208F:00EF
;;   Called from:
;;     21DC:04FD (in fn21DC_04BA)
;;     2644:0E43 (in fn2644_0D70)
;;     2644:226A (in fn2644_21CA)
;;     2644:46A3 (in fn2644_45CA)
;;     2644:46BA (in fn2644_45CA)
;;     2B41:008C (in fn2B41_0052)
;;     2D1A:0148 (in fn2D1A_003C)
;;     2D1A:06CF (in fn2D1A_064E)
;;     2E37:0122 (in fn2E37_0096)
;;     2EB3:0B47 (in fn2EB3_0AFA)
fn208F_00EF proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	mov	word ptr [10CAh],0h
	push	ds
	mov	ah,40h
	mov	bx,[bp+0Ah]
	lds	dx,[bp+0Ch]
	mov	cx,[bp+10h]
	int	21h
	pop	ds
	jnc	0111h

l208F_010B:
	mov	[10CAh],ax
	mov	ax,0h

l208F_0111:
	pop	di
	pop	si
	pop	bp
	retf

;; fn208F_0115: 208F:0115
;;   Called from:
;;     2644:0E2A (in fn2644_0D70)
;;     2644:207D (in fn2644_2068)
;;     2644:2147 (in fn2644_20AA)
;;     2644:224F (in fn2644_21CA)
;;     2644:468B (in fn2644_45CA)
;;     2B9C:0038 (in fn2B9C_000C)
;;     2B9C:00C4 (in fn2B9C_009C)
;;     2D1A:00F5 (in fn2D1A_003C)
;;     2D1A:01EE (in fn2D1A_0186)
;;     2E37:010D (in fn2E37_0096)
;;     2E37:0547 (in fn2E37_04CE)
;;     2E37:0639 (in fn2E37_05C0)
;;     2EB3:0A9F (in fn2EB3_0A8C)
;;     2EB3:0B35 (in fn2EB3_0AFA)
;;     2EB3:0B98 (in fn2EB3_0B54)
fn208F_0115 proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	mov	word ptr [10CAh],0h
	mov	ah,42h
	mov	bx,[bp+0Ah]
	mov	dx,[bp+0Ch]
	mov	cx,[bp+0Eh]
	mov	al,[bp+10h]
	int	21h
	jnc	013Bh

l208F_0132:
	mov	[10CAh],ax
	mov	ax,0h
	mov	dx,0h

l208F_013B:
	mov	bx,ax
	mov	ax,dx
	push	ax
	mov	ax,bx
	pop	dx
	pop	di
	pop	si
	pop	bp
	retf

;; fn208F_0147: 208F:0147
;;   Called from:
;;     207F:0037 (in fn207F_0006)
;;     207F:005D (in fn207F_0048)
;;     207F:009F (in fn207F_0088)
;;     207F:00EE (in fn207F_00D2)
fn208F_0147 proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	mov	word ptr [10CAh],0h
	mov	ah,5Ch
	mov	bx,[bp+0Ah]
	mov	dx,[bp+0Ch]
	mov	cx,[bp+0Eh]
	mov	di,[bp+10h]
	mov	si,[bp+12h]
	mov	al,[bp+14h]
	int	21h
	jnc	0175h

l208F_016A:
	mov	[10CAh],ax
	cmp	ax,21h
	mov	ax,0h
	jz	0178h

l208F_0175:
	mov	ax,1h

l208F_0178:
	pop	di
	pop	si
	pop	bp
	retf
208F:017C                                     55 56 57 8B             UVW.
208F:0180 EC C7 06 CA 10 00 00 B9 00 00 81 3E CE 10 36 01 ...........>..6.
208F:0190 72 11 1E B4 5E C5 56 0A CD 21 1F 73 06 A3 CA 10 r...^.V..!.s....
208F:01A0 B9 00 00 8B C1 5F 5E 5D CB 55 56 57 8B EC C7 06 ....._^].UVW....
208F:01B0 CA 10 00 00 1E B4 41 C5 56 0A CD 21 1F 73 03 A3 ......A.V..!.s..
208F:01C0 CA 10 5F 5E 5D CB 55 56 57 8B EC C7 06 CA 10 00 .._^].UVW.......
208F:01D0 00 1E B4 56 C5 56 0A C4 7E 0E CD 21 1F 73 03 A3 ...V.V..~..!.s..
208F:01E0 CA 10 5F 5E 5D CB                               .._^].          

;; fn208F_01E6: 208F:01E6
;;   Called from:
;;     21DC:0EFD (in fn21DC_0EC2)
fn208F_01E6 proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	mov	word ptr [10CAh],0h
	mov	dx,1h
	cmp	word ptr [10CEh],14Ah
	jc	020Bh

l208F_01FC:
	mov	ah,67h
	mov	bx,[bp+0Ah]
	int	21h
	jnc	020Bh

l208F_0205:
	mov	[10CAh],ax
	mov	dx,0h

l208F_020B:
	mov	ax,dx
	pop	di
	pop	si
	pop	bp
	retf
208F:0211    55 56 57 8B EC 81 3E CE 10 4A 01 72 07 B4 68  UVW...>..J.r..h
208F:0220 8B 5E 0A CD 21 5F 5E 5D CB 1E 53 BB 8E 4D 8E DB .^..!_^]..S..M..
