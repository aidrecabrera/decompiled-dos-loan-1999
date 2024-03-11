;;; Segment 4943 (4943:0000)
4943:0000 55 8B EC 33 DB B8 00 00 50 53 B8 F0 4C 50 53 B8 U..3....PS..LPS.
4943:0010 1D 00 0E 50 9A 00 00 C2 3B 8B E5 5D CB 64 00 00 ...P....;..].d..
4943:0020 D8 2C 00 95 D8 2D 00 95 D8 2E 00 95 D8 2F 00 95 .,...-......./..
4943:0030 D8 30 00                                        .0.             

;; fn3CEE_C583: 3CEE:C583
;;   Called from:
;;     3CEE:865A (in fn3CEE_8634)
fn3CEE_C583 proc
	xchg	bp,ax
	fdiv	dword ptr [bx+di]
	add	[di+32D8h],dl
	add	[di+33D8h],dl
	add	[di+34D8h],dl
	add	[di+35D8h],dl
	add	[di+36D8h],dl
	add	[di+37D8h],dl
	add	[di+38D8h],dl
	add	[di+39D8h],dl
	add	[di+3AD8h],dl
	add	[di+3BD8h],dl
	add	[di+3CD8h],dl
	add	[di+3DD8h],dl
	add	[di+3ED8h],dl
	add	[di+3FD8h],dl
	add	[di+40D8h],dl
	add	[di+41D8h],dl
	add	[di+1597h],dl
	dec	di
	dec	sp
	inc	sp
	pop	di
	inc	sp
	push	dx
	dec	cx
	push	si
	inc	bp
	push	bx
	dec	di
	inc	si
	push	sp
	inc	bp
	dec	bx
	inc	bx
	inc	si
	inc	di
	add	bh,ah
	jnc	0C5FFh

l3CEE_C5E3:
	xchg	di,ax
	sbb	dh,[bx+2Fh]
	outsb
	and	[bx+si],ah
	and	[bx+si],ah
	and	[bx+si],ah
	and	[bx+si],ah
	and	[bx+si],ah
	and	[bx+si],ah
	and	[bx+si],ah
	and	[bx+si],ah
	and	[bx+si],ah
	and	[bx+si],ah
	and	[bx+si],ah
	and	[bx+si],al

l3CEE_C5FF:
	add	[bp+si+0EF80h],bh

l3CEE_C600:
	mov	dx,0EF80h

l3CEE_C603:
	cwd
	push	ss
	add	[bx+di+4Fh],bl
	or	al,ss:[bx+si]
	cwd
	pop	ss
	add	bh,ch
	cwd
	sbb	[bx+si],al
	cwd
	dec	di
	add	[bp+2Dh],bl
	leave
	add	ax,0D800h
	pop	ds
	add	[bp-79h],al
	xchg	di,ax
	sbb	dh,[bx+2Fh]
	outsb
	and	[bx+si],ah
	and	[bx+si],ah
	and	[bx+si],ah
	and	[bx+si],ah
	and	[bx+si],ah
	and	[bx+si],ah
	and	[bx+si],ah
	and	[bx+si],ah
	and	[bx+si],ah
	and	[bx+si],ah
	and	[bx+si],ah
	and	[bx+si],al
	mov	dx,59h
	add	[si],dh
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[di-75h],dl
