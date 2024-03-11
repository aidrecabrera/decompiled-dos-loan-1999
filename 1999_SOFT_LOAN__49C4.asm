;;; Segment 49C4 (49C4:0000)
49C4:0000 55 8B EC 33 DB B8 00 00 50 53 B8 F0 4C 50 53 B8 U..3....PS..LPS.
49C4:0010 1D 00 0E 50 9A 00 00 C2 3B 8B E5 5D CB 64 00 00 ...P....;..].d..
49C4:0020 11 03 00 D8 28 00 83 D8 27 00 83 D8 26 00 83 9E ....(...'...&...
49C4:0030 26 00 97 07 45 4E 54 5F 4C 45 54 00 38 58 03 00 &...ENT_LET.8X..
49C4:0040 59 DD 00 99 17 00 EF 99 18 00 99 4F 00 C9 04 00 Y..........O....
49C4:0050 D8 1D 00 46 D8 68 00 89 C9 00 00 D8 19 00 46 D8 ...F.h........F.
49C4:0060 69 00 89 99 18 00 EF 8B 99 50 00 D0 7F B1 97 16 i........P......
49C4:0070 6E 2F 77 2C 20 77 2B 2F 6E 20 20 20 20 20 20 20 n/w, w+/n       
49C4:0080 20 20 20 20 20 20 00 BA 9E 5D 00 9A 53 00 E5 63       ...]..S..c
49C4:0090 9E 5D 00 63 6F D0 86 D8 5D 00 89 C7 18 00 99 18 .].co...].......
49C4:00A0 00 EF 8B 97 32 45 6E 74 65 72 20 77 68 6F 6C 65 ....2Enter whole
49C4:00B0 20 6F 72 20 66 69 72 73 74 20 66 65 77 20 6C 65  or first few le
49C4:00C0 74                                              t               

;; fn3CEE_CE21: 3CEE:CE21
;;   Called from:
;;     3CEE:14AB (in fn3CEE_1472)
fn3CEE_CE21 proc
	jz	0CE88h

l3CEE_CE23:
	jc	0CE98h

l3CEE_CE25:
	and	[bx+66h],ch
	and	[si+65h],ah
	jnc	0CE96h

l3CEE_CE2D:
	jc	0CE94h

l3CEE_CE2F:
	and	fs:[bp+61h],ch
	insw
	cmp	ah,gs:[bx+si]
	add	[bx-4Fh],bh
	dec	dx
	xchg	di,ax
	add	al,40h
	imul	ax,[bx+si+21h],0h
	fcomp	dword ptr [di+0h]
	dec	ax
	mov	[0C61Bh],al
	sbb	[bx+si],al
	sahf
	pop	bp
	add	cl,cl
	add	[bx+si],ax
	fcom	dword ptr [si]
	add	[bp-28h],al
	pop	bp
	add	[bx+di+0D8DDh],cl
	arpl	[bx+si],bx
	mov	[bx+di+17h],bx
	out	dx,ax
	cwd
	sbb	[bx+si],al
	cwd
	dec	di
	add	[bp+68h],bl
	leave
	add	ax,0D800h
	pop	ds
	add	[bp-79h],al
	sahf
	imul	ax,[bx+si],99BAh
	or	ax,1200h
	pop	bx
	push	cs
	pop	cx
	add	[bx+si],al
	xor	al,0h
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al

l3CEE_CE88:
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
