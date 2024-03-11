;;; Segment 4A55 (4A55:0000)
4A55:0000 55 8B EC 33 DB B8 00 00 50 53 B8 F0 4C 50 53 B8 U..3....PS..LPS.
4A55:0010 1D 00 0E 50 9A 00 00 C2 3B 8B E5 5D CB 64 00 00 ...P....;..].d..
4A55:0020 D8 90 00 9E 8B 00 07 9D D8 99 00 89 97 08 26 44 ..............&D
4A55:0030 41 54 41 5F 46 4C 00 E7 D8 00 00 22 00 00 A6 21 ATA_FL....."...!
4A55:0040 00 C9 00 00 D8 9A 00 46 EF 38 58 5F 00 99 E7 03 .......F.8X_....
4A55:0050 C9 01 00 D8 4B 00 46 87 99 17 00 EF 8B 97 39 45 ....K.F.......9E
4A55:0060 72 72 6F 72 21 20 4E 6F 20 64 61 74 61 20 66 69 rror! No data fi
4A55:0070 6C 65 20 69 73 20 69 6E 20 75 73 65 2E 20 48 69 le is in use. Hi
4A55:0080 74 20 61 6E 79 20 6B 65 79 20 74 6F 20 63 6F 6E t any key to con
4A55:0090 74 69 6E 75 65 2E 2E 2E 00 7F B1 EF 52 87 99 E7 tinue.......R...
4A55:00A0 03 C9 01 00 D8 4B 00 46 87 59 30 02 9E 89 00 C9 .....K.F.Y0.....
4A55:00B0 01 00 D8 96 00 46 C9 00 00 D8 9C 00 46 6F 80 6F .....F......Fo.o
4A55:00C0 C9 00 00 D8 9A 00 46 2B D8 9B 00 89 80 D8 9D 00 ......F+........
4A55:00D0 89 39 DD 58 82 01 24 11 00 23 FC 00 97 17 26 44 .9.X..$..#....&D
4A55:00E0 52 49 56 45 2E 3A 26 50 41 54 48 2E 26 44 41 54 RIVE.:&PATH.&DAT
4A55:00F0 41 5F 46 4C 2E 00 E7 21 23 FB 00 A6 11 00 AD 19 A_FL...!#.......
4A55:0100 00 A5 9E 9B 00 69 A5 9E 9D 00 47 05 58 08 00 23 .....i....G.X..#
4A55:0110 FC 00 06 23 FB 00 20 78 E7 FF A6 00 00 23 FC 00 ...#.. x.....#..
4A55:0120 1F 24 00 00 9E 9B 00 5E 47 58 03 00 59 29 01 99 .$.....^GX..Y)..
4A55:0130 E7 03 C9 01 00 D8 4B 00 46 87 99 17 00 EF 8B 97 ......K.F.......
4A55:0140 2E 52 65 70 6C 61 63 65 20 64 69 73 6B 20 61 6E .Replace disk an
4A55:0150 64 20 73 74 72 69 6B 65 20 61 6E 79 20 6B 65 79 d strike any key
4A55:0160 20 74 6F 20 63 6F 6E 74 69 6E 75 65 2E 2E 2E 00  to continue....
4A55:0170 7F B1 EF 52 87 99 E7 03 C9 01 00 D8 4B 00 46 87 ...R........K.F.
4A55:0180 C9 00 00 D8 96 00 46 C9 00 00 D8 9A 00 46 5E 9E ......F......F^.
4A55:0190 9B 00 6F 72 C9 00 00 D8 9C 00 46 86 80 86 55 69 ..or......F...Ui
4A55:01A0 58 35 00 9E 9B 00 D8 9D 00 89 C9                X5.........     

;; fn3CEE_D81B: 3CEE:D81B
;;   Called from:
;;     3CEE:14AB (in fn3CEE_1472)
fn3CEE_D81B proc
	add	[bx+si],al
	fcom	dword ptr [bp+4600h]
	sub	byte ptr [bx-37h],0h
	add	al,bl
	pushf
	add	[bp-37h],al
	add	[bx+si],al
	fcomp	dword ptr [bp+si+4600h]
	sub	bp,[bx-28h]
	wait
	add	[bx+di+9D9Eh],cl
	add	[bp+9Bh],bl
	xchg	al,bl
	wait
	add	[bx+di+0FC59h],cl
	illegal
	jge	0D848h
	cwd
	pop	ss
	add	bh,ch
	mov	dx,[bx+431Dh]
	outsw
	jo	0D8CCh
	imul	bp,[bp+67h],6620h
	imul	bp,[si+65h],2E73h
	and	[bx+si+6Ch],dl
	popa
	jnc	0D8C9h
	and	[bx+61h],dh
	imul	si,[si+2Eh],2E2Eh
	add	[bx-4Fh],bh
	and	al,11h
	add	[bp+di],ah
	cld
	add	[bx+2617h],dl
	inc	sp
	push	dx
	dec	cx
	push	si
	inc	bp
	cmp	ah,cs:[4150h]
	push	sp
	dec	ax
	inc	sp
	inc	cx
	push	sp
	inc	cx
	pop	di
	inc	si
	dec	sp
	add	bh,ah
	and	[bp+di],sp
	sti
	add	[bp+11h],ah
	lodsw
	adc	ax,[bx+si]
	movsw
	sahf
	wait
	add	[bx+58h],al
	or	[bx+si],al
	and	di,sp
	add	[0FB23h],al
	add	[bx+si],ah
	js	0D899h
	jmp	word ptr [bp+0h]
	and	di,sp
	add	[bx],bl
	and	al,0h
	add	[bx+di+0Eh],bl
	add	[bx+di+3E7h],bl
	leave
	add	[bx+si],ax
	fmul	dword ptr [bp+di+0h]
	inc	si
	xchg	[bx+di+79h],bx
	illegal
	pop	ss
	add	bh,ch
	mov	dx,[bx+4322h]
	outsw
	jo	0D94Ch
	imul	bp,[bp+67h],6420h
	popa
	jz	0D93Ch
	and	[bp+69h],ah
	insb
	jnc	0D910h
	and	[bx+si+6Ch],dl
	popa
	jnc	0D94Eh
	and	[bx+61h],dh
	imul	si,[si+2Eh],2E2Eh
	add	[bx-4Fh],bh
	sahf
	cwd
	add	[bx+si+197h],al
	add	cs:[bp+99h],bl
	or	dl,bh
	xchg	di,ax
	add	sp,[si+62h]
	jz	0D907h
	xchg	al,bl
	cbw
	add	[bx+di+1797h],cl
	jc	0D97Bh
	jbe	0D979h
	cmp	ah,cs:[6170h]
	jz	0D983h
	bound	sp,fs:[bx+di+74h]
	pop	di
	insb
	add	bh,ah
	inc	cx
	pop	ax
	push	ds
	add	[bx+2617h],dl
	inc	sp
	push	dx
	dec	cx
	push	si
	inc	bp
	push	ax
	inc	cx
	push	sp
	dec	ax
	cmp	ah,cs:[4244h]
	inc	cx
	push	sp
	pop	di
	inc	si
	dec	sp
	add	bh,ah
	sub	ax,3h
	pop	cx
	add	[bx+si],al
	xor	al,0h
	add	[bx+si],al
