;;; Segment 4D93 (4D93:0000)
4D93:0000 06 00 41 4C 54 45 52 4E 41 54 45 00             ..ALTERNATE.    

l4CEE_0A5C:
	add	[bx+si],al

l4CEE_0A5D:
	add	[bx+si],al

l4CEE_0A5E:
	add	[bx+si],al
	or	al,[bx+si]
	inc	dx
	inc	bp
	dec	sp
	dec	sp
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	adc	[bx+si],ax
	inc	bx
	inc	bp
	dec	si
	push	sp
	push	bp
	push	dx
	pop	cx
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[si],dl
	add	[bp+di+4Fh],al
	dec	sp
	dec	di
	push	dx
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al

l4CEE_0A8D:
	add	[bx+si],al
	add	[4300h],dl
	dec	di

l4CEE_0A94:
	dec	si
	inc	si
	dec	cx
	push	dx
	dec	bp
	add	[bx+si],al

l4CEE_0A9B:
	add	[bx+si],al
	add	[bx+si],al
	add	[bx],dl
	add	[bp+di+4Fh],al
	dec	si
	push	bx
	dec	di
	dec	sp
	inc	bp
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],bl

l4CEE_0AB0:
	sbb	[bx+si],al

l4CEE_0AB1:
	add	[bp+di+55h],al
	push	dx
	push	bx
	dec	di
	push	dx
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	sbb	al,[bx+si]
	inc	sp
	inc	cx
	push	sp
	inc	bp
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	sbb	al,0h
	inc	sp
	inc	bp
	inc	bx
	dec	cx
	dec	bp
	inc	cx
	dec	sp
	push	bx
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	sbb	ax,4400h
	inc	bp
	inc	si
	inc	cx
	push	bp
	dec	sp
	push	sp
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[4400h],bl
	inc	bp
	dec	sp
	inc	bp
	push	sp
	inc	bp
	inc	sp
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx],bl
	add	[si+45h],al
	dec	sp
	dec	cx
	dec	bp
	dec	cx
	push	sp
	inc	bp
	push	dx
	push	bx
	add	[bx+si],al
	add	[bx+si],al
	and	[bx+si],al
	inc	sp
	inc	bp
	push	si
	dec	cx
	inc	bx
	inc	bp
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	and	ax,[bx+si]
	inc	bp
	push	bx
	inc	bx
	inc	cx
	push	ax
	inc	bp
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	and	al,0h
	inc	bp
	pop	ax
	inc	cx
	inc	bx
	push	sp
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[4500h],ah
	pop	ax
	inc	bx
	dec	sp
	push	bp
	push	bx
	dec	cx
	push	si
	inc	bp
	add	[bx+si],al
	add	[bx+si],al
	add	[bp+di],ch
	add	[bp+49h],al
	pop	ax
	inc	bp
	inc	sp
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[di],ch
	add	[bp+4Fh],al
	push	dx
	dec	bp
	inc	cx
	push	sp
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	cmp	ax,4D00h
	inc	cx
	push	dx
	inc	di
	dec	cx
	dec	si
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	aaa
	add	[bx+di+4Eh],cl
	push	sp
	inc	bp
	dec	si
	push	bx
	dec	cx
	push	sp
	pop	cx
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si+0h],cl
	push	ax
	inc	cx
	push	sp
	dec	ax
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	dec	bx
	add	[bx+si+52h],dl
	dec	cx
	dec	si
	push	sp
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bp+si+0h],dl
	push	dx
	dec	di
	push	di
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bp+di+0h],dl
	inc	bx
	dec	di
	dec	sp
	push	bp
	dec	bp
	dec	si
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	push	si
	add	[bx+si+52h],dl
	dec	di
	push	di
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	push	di
	add	[bx+si+43h],dl
	dec	di
	dec	sp
	push	bp
	dec	bp
	dec	si
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+di+0h],bl
	push	bx
	inc	bx
	dec	di
	push	dx
	inc	bp
	inc	dx
	dec	di
	inc	cx
	push	dx
	inc	sp
	add	[bx+si],al
	add	[bx+si],al
	pop	bp
	add	[bp+di+4Fh],dl
	inc	si
	push	sp
	push	bx
	inc	bp
	inc	bp
	dec	bx
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[di+4Eh],dl
	dec	cx
	push	cx
	push	bp
	inc	bp
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	push	0h
	push	di
	push	dx
	inc	cx
	push	ax
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	aas
	mov	cs,[di+38h]
	aas
	mov	cs,[di+40h]
	aas
	mov	cs,[di+4Eh]
	aas
	mov	cs,[di+0h]
	add	[bx+si],al
	add	[bx+di],al
	add	[bx+di],al
	add	[bx+si],bh
	add	[di],al
	add	[bp+0h],cl
	add	[bx+si],ax
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	pop	ax
	aas
	mov	cs,[di+62h]
	aas
	mov	cs,[di+68h]
	aas
	mov	cs,[di+0h]
	add	[bx+si],al
	add	[bp+si+3Fh],dh
	mov	cs,[di-7Ch]
	aas
	mov	cs,[di-6Ah]
	aas
	mov	cs,[di-58h]
	aas
	mov	cs,[di-46h]
	aas
	mov	cs,[di-34h]
	aas
	mov	cs,[di-22h]
	aas
	mov	cs,[di+0h]
	add	[bx+si],al
	add	al,dh
	aas
	mov	cs,[di-2h]
	aas
	mov	cs,[di+0Ch]
	inc	ax
	mov	cs,[di+1Ah]
	inc	ax
	mov	cs,[di+0h]
	add	[bx+si],al
	add	[bx+si],ch
	inc	ax
	mov	cs,[di+3Ah]
	inc	ax
	mov	cs,[di+4Ch]
	inc	ax
	mov	cs,[di+5Eh]
	inc	ax
	mov	cs,[di+0h]
	add	[bx+si],al
	add	[bx+si+40h],dh
	mov	cs,[di+7Eh]
	inc	ax
	mov	cs,[di-74h]
	inc	ax
	mov	cs,[di-66h]
	inc	ax
	mov	cs,[di-58h]
	inc	ax
	mov	cs,[di-4Ah]
	inc	ax
	mov	cs,[di-3Ch]
	inc	ax
	mov	cs,[di-2Eh]
	inc	ax
	mov	cs,[di+0h]
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	al,ah
	inc	ax
	mov	cs,[di-14h]
	inc	ax
	mov	cs,[di-8h]
	inc	ax
	mov	cs,[di+0h]
	add	[bx+si],al
	add	[bx+di],al
	add	[bx+si],al
	add	[bx+di],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+di],al
	add	[bx+di],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[si],al
	inc	cx
	mov	cs,[di+0Eh]
	inc	cx
	mov	cs,[di+18h]
	inc	cx
	mov	cs,[di+24h]
	inc	cx
	mov	cs,[di+2Ch]
	inc	cx
	mov	cs,[di+34h]
	inc	cx
	mov	cs,[di+0h]
	add	[bx+si],al
	add	[bp+8h],dh
	mov	cs,[di-6Ah]
	or	[bp+0AA4Dh],cl
	or	[bp+0BE4Dh],cl
	or	[bp+0E24Dh],cl
	or	[bp+0E64Dh],cl
	or	[bp+4Dh],cl
	add	[bx+si],al
	add	[bx+si+0h],dl
	mov	cs,[di+40h]
	add	cl,[bp+384Dh]
	push	es
	mov	cs,[di+0h]
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	dh,dh
	or	[bp+4Dh],cl
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	dh,dh
	or	[bp+4Dh],cl
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	dh,dh
	or	[bp+4Dh],cl
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	dh,dh
	or	[bp+4Dh],cl
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+di],al
	add	[bx+di],al
	add	dl,bl
	les	di,[bx+0D9B3h]
	illegal
	add	[bx+si],al
	leave
	int	0BBh
	mov	dx,0CDBCh
	enter	0BAh,0h
	ret
	les	si,[si+0D9B3h]
	illegal
	add	[bx+si],al
	and	[bx+si],ah
	and	[bx+si],ah
	mov	di,0DAC4h
	and	[bx+si],al
	add	al,al
	illegal
	and	[bx+si],ah
	and	[bx+si],ah
	add	[bx+si],al
	and	[bx+si],ah
	and	[bx+si],ah
	and	[bx+si],ah
	and	[bx+si],ah
	and	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	sbb	al,[bx+si]
	cmp	al,41h
	mov	cs,[di+3Eh]
	inc	cx
	mov	cs,[di+66h]
	inc	cx
	mov	cs,[di+68h]
	inc	cx
	mov	cs,[di-56h]
	inc	cx
	mov	cs,[di-16h]
	inc	cx
	mov	cs,[di+30h]
	inc	dx
	mov	cs,[di+62h]
	inc	dx
	mov	cs,[di+20h]
	or	al,8Eh
	dec	bp
	inc	dx
	mov	cs,[di+66h]
	inc	dx
	mov	cs,[di-72h]
	inc	dx
	mov	cs,[di-70h]
	inc	dx
	mov	cs,[di-40h]
	inc	dx
	mov	cs,[di-10h]
	inc	dx
	mov	cs,[di+22h]
	inc	bx
	mov	cs,[di+24h]
	inc	bx
	mov	cs,[di+52h]
	inc	bx
	mov	cs,[di-6Eh]
	inc	bx
	mov	cs,[di-6Ch]
	inc	bx
	mov	cs,[di-3Eh]
	inc	bx
	mov	cs,[di+6h]
	inc	sp
	mov	cs,[di+8h]
	inc	sp
	mov	cs,[di+46h]
	inc	sp
	mov	cs,[di+48h]
	inc	sp
	mov	cs,[di-7Eh]
	inc	sp
	mov	cs,[di-7Ch]
	inc	sp
	mov	cs,[di-4Ch]
	inc	sp
	mov	cs,[di-10h]
	inc	sp
	mov	cs,[di+2Ch]
	inc	bp
	mov	cs,[di+2Eh]
	inc	bp
	mov	cs,[di+56h]
	inc	bp
	mov	cs,[di+58h]
	inc	bp
	mov	cs,[di+20h]
	or	al,8Eh
	dec	bp
	pop	dx
	inc	bp
	mov	cs,[di-6Ch]
	inc	bp
	mov	cs,[di-6Ah]
	inc	bp
	mov	cs,[di-1Eh]
	inc	bp
	mov	cs,[di+2Ah]
	inc	si
	mov	cs,[di+74h]
	inc	si
	mov	cs,[di-7Ah]
	inc	si
	mov	cs,[di-78h]
	inc	si
	mov	cs,[di-76h]
	inc	si
	mov	cs,[di-38h]
	inc	si
	mov	cs,[di-36h]
	inc	si
	mov	cs,[di-34h]
	inc	si
	mov	cs,[di-20h]
	inc	si
	mov	cs,[di-1Eh]
	inc	si
	mov	cs,[di+20h]
	or	al,8Eh
	dec	bp
	hlt
	inc	si
	mov	cs,[di+0h]
	inc	di
	mov	cs,[di+2h]
	inc	di
	mov	cs,[di+4Ah]
	inc	di
	mov	cs,[di-70h]
	inc	di
	mov	cs,[di-58h]
	inc	di
	mov	cs,[di-56h]
	inc	di
	mov	cs,[di-0Ch]
	inc	di
	mov	cs,[di+38h]
	dec	ax
	mov	cs,[di+3Ah]
	dec	ax
	mov	cs,[di+7Ch]
	dec	ax
	mov	cs,[di-3Ah]
	dec	ax
	mov	cs,[di+0Eh]
	dec	cx
	mov	cs,[di+14h]
	dec	cx
	mov	cs,[di+16h]
	dec	cx
	mov	cs,[di+20h]
	dec	cx
	mov	cs,[di+4Ch]
	dec	cx
	mov	cs,[di+4Eh]
	dec	cx
	mov	cs,[di+5Ch]
	dec	cx
	mov	cs,[di-62h]
	dec	cx
	mov	cs,[di-60h]
	dec	cx
	mov	cs,[di-58h]
	dec	cx
	mov	cs,[di-10h]
	dec	cx
	mov	cs,[di+3Ah]
	dec	dx
	mov	cs,[di+72h]
	dec	dx
	mov	cs,[di+74h]
	dec	dx
	mov	cs,[di+7Eh]
	dec	dx
	mov	cs,[di+20h]
	or	al,8Eh
	dec	bp
	call	far 0A24Dh:8E4Ah
	dec	dx
	mov	cs,[di-5Ch]
	dec	dx
	mov	cs,[di-56h]
	dec	dx
	mov	cs,[di-0Eh]
	dec	dx
	mov	cs,[di+0h]
	dec	bx
	mov	cs,[di+2h]
	dec	bx
	mov	cs,[di+14h]
	dec	bx
	mov	cs,[di+52h]
	dec	bx
	mov	cs,[di+54h]
	dec	bx
	mov	cs,[di+60h]
	dec	bx
	mov	cs,[di-68h]
	dec	bx
	mov	cs,[di-66h]
	dec	bx
	mov	cs,[di-5Eh]
	dec	bx
	mov	cs,[di-18h]
	dec	bx
	mov	cs,[di+30h]
	dec	sp
	mov	cs,[di+4Ah]
	dec	sp
	mov	cs,[di+4Ch]
	dec	sp
	mov	cs,[di+5Ah]
	dec	sp
	mov	cs,[di-5Ch]
	dec	sp
	mov	cs,[di-36h]
	dec	sp
	mov	cs,[di-34h]
	dec	sp
	mov	cs,[di-24h]
	dec	sp
	mov	cs,[di+20h]
	dec	bp
	mov	cs,[di+4Ah]
	dec	bp
	mov	cs,[di+4Ch]
	dec	bp
	mov	cs,[di+54h]
	dec	bp
	mov	cs,[di+20h]
	or	al,8Eh
	dec	bp
	outsb
	dec	bp
	mov	cs,[di+76h]
	dec	bp
	mov	cs,[di+78h]
	dec	bp
	mov	cs,[di-7Ah]
	dec	bp
	mov	cs,[di-36h]
	dec	bp
	mov	cs,[di-34h]
	dec	bp
	mov	cs,[di-2Ah]
	dec	bp
	mov	cs,[di+1Eh]
	dec	si
	mov	cs,[di+3Eh]
	dec	si
	mov	cs,[di+40h]
	dec	si
	mov	cs,[di+4Ah]
	dec	si
	mov	cs,[di-80h]
	dec	si
	mov	cs,[di-7Eh]
	dec	si
	mov	cs,[di-72h]
	dec	si
	mov	cs,[di-2Ah]
	dec	si
	mov	cs,[di+20h]
	dec	di
	mov	cs,[di+6Ch]
	dec	di
	mov	cs,[di-4Eh]
	dec	di
	mov	cs,[di-34h]
	dec	di
	mov	cs,[di-32h]
	dec	di
	mov	cs,[di-6h]
	dec	di
	mov	cs,[di+1Ch]
	push	ax
	mov	cs,[di+3Ch]
	push	ax
	mov	cs,[di+5Eh]
	push	ax
	mov	cs,[di+60h]
	push	ax
	mov	cs,[di+20h]
	or	al,8Eh
	dec	bp
	pushf
	push	ax
	mov	cs,[di-5Eh]
	push	ax
	mov	cs,[di-5Ch]
	push	ax
	mov	cs,[di-14h]
	push	ax
	mov	cs,[di+34h]
	push	cx
	mov	cs,[di+4Ah]
	push	cx
	mov	cs,[di+4Ch]
	push	cx
	mov	cs,[di-68h]
	push	cx
	mov	cs,[di-1Eh]
	push	cx
	mov	cs,[di+18h]
	push	dx
	mov	cs,[di+1Ah]
	push	dx
	mov	cs,[di+24h]
	push	dx
	mov	cs,[di+6Ch]
	push	dx
	mov	cs,[di+6Eh]
	push	dx
	mov	cs,[di+76h]
	push	dx
	mov	cs,[di-40h]
	push	dx
	mov	cs,[di-3Eh]
	push	dx
	mov	cs,[di-2Ch]
	push	dx
	mov	cs,[di+12h]
	push	bx
	mov	cs,[di+50h]
	push	bx
	mov	cs,[di+66h]
	push	bx
	mov	cs,[di+68h]
	push	bx
	mov	cs,[di+78h]
	push	bx
	mov	cs,[di-52h]
	push	bx
	mov	cs,[di-50h]
	push	bx
	mov	cs,[di-3Eh]
	push	bx
	mov	cs,[di-14h]
	push	bx
	mov	cs,[di-12h]
	push	bx
	mov	cs,[di-10h]
	push	bx
	mov	cs,[di-8h]
	push	bx
	mov	cs,[di+20h]
	or	al,8Eh
	dec	bp
	inc	dx
	push	sp
	mov	cs,[di+4Ch]
	push	sp
	mov	cs,[di+4Eh]
	push	sp
	mov	cs,[di+58h]
	push	sp
	mov	cs,[di-62h]
	push	sp
	mov	cs,[di-56h]
	push	sp
	mov	cs,[di-54h]
	push	sp
	mov	cs,[di-48h]
	push	sp
	mov	cs,[di+2h]
	push	bp
	mov	cs,[di+4Ch]
	push	bp
	mov	cs,[di+74h]
	push	bp
	mov	cs,[di+76h]
	push	bp
	mov	cs,[di-80h]
	push	bp
	mov	cs,[di+20h]
	or	al,8Eh
	dec	bp
	add	[bx+si],ax
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	sbb	[bx+si],al
	dec	di
	add	[bx+si+4000h],al
	add	[bx+si],al
	add	[bx+si+0h],ax
	add	[bx+di],al
	inc	ax
	add	[bx+si+0h],al
	inc	ax
	add	[bx+si+10Fh],ah
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+di],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	sub	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	push	bx
	illegal
	adc	[bp+0Fh],ah
	cmp	ax,6610h
	illegal
	adc	[bp+0Fh],ah
	cmp	ax,6610h
	illegal
	adc	[bp+0Fh],ah
	cmp	ax,6610h
	illegal
	adc	[bp+di+0Fh],dl
	cmp	ax,6610h
	illegal
	adc	[bx+di],al
	add	al,[bx+si]
	add	dl,[bp+di]
	add	[bx+di+200h],al
	and	[bx+di],al
	add	word ptr [bx+si],2h
	add	cs:[bx+si+0CD00h],ax
	add	[bx+di],ax
	add	[bp+si],al
	add	[bx+si],ax
	or	al,0h
	add	al,[bp+si]
	add	[si],ah
	add	[bp+si],al
	add	ax,[bx+si]
	and	[bx+si],ax
	add	al,[si]
	add	[bx+si],cl
	add	[bp+si],al
	add	ax,0F00h
	add	[bp+si],al
	push	es
	add	[di],cl
	add	[bp+si],al
	pop	es
	add	[si],al
	add	[bp+si],al
	or	[bx+si],al
	add	ax,[bx+si]
	add	cl,[bx+di]
	add	[di],ah
	add	[bp+si],al
	or	al,[bx+si]
	adc	[bx+si],al
	add	cl,[di]
	add	[0200h],al
	adc	al,[bx+si]
	and	[bx+si],al
	add	dl,[bp+di]
	add	[bx],al
	add	[bp+si],al
	adc	al,0h
	or	ax,[bx+si]
	add	dl,[di]
	add	[di],al
	add	[bp+si],al
	push	ss
	add	[di],dl
	add	[bp+si],al
	pop	ss
	add	[bp+di],dl
	add	[bp+si],al
	sbb	[bx+si],al
	adc	[bx+si],al
	add	bl,[bx+di]
	add	[0200h],cl
	sbb	ax,[bx+si]
	adc	al,0h
	add	sp,[bx+si]
	add	bh,bh
	add	[bp+si],al
	add	[bp+si],al
	and	[bx+di],al
	add	word ptr [bx+si],2h
	add	cs:[bx+si+400h],ax
	cmp	ax,[bx+di]
	inc	sp
	add	[bp-1h],cx
	add	al,54h
	add	[bx+di+1h],si
	aas
	inc	word ptr [bp+si]
	inc	di
	add	[bx+di],cx
	add	[bp+si],al
	dec	ax
	add	[bx],cx
	add	[bp+si],al
	dec	cx
	add	[bx+si],sp
	add	[bp+si],al
	dec	bx
	add	[bx],ax
	add	[bp+si],al
	dec	bp
	add	[bx+si],cx
	add	[bp+si],al
	dec	di
	add	[bp+si],cx
	add	[bp+si],al
	push	ax
	add	[bx+si],dx
	add	[bp+si],al
	push	cx
	add	[bx+di],sp
	add	[bp+si],al
	push	dx
	add	[di],dx
	add	[bp+si],al
	push	bx
	add	[si],ax
	add	[bp+si],al
	jnc	1A22h
	or	al,0h
	add	dh,[si+1h]
	or	ax,200h
	jnz	1A2Ch
	adc	al,[bx+si]
	add	dh,[bp+1h]
	and	ax,[bx+si]
	add	dh,[bx+1h]
	adc	[bx+si],ax
	add	al,[si+2201h]
	add	ch,cl
	add	bh,[bp+di]
	add	[si],bx
	add	[di],al
	cmp	al,1h
	inc	sp
	add	di,di
	inc	word ptr [di]
	push	sp
	add	[bx+di+1h],si
	idiv	bh
	add	al,[bx+1h]
	add	[bx+si],ax
	add	cl,[bx+si+1h]
	add	ax,200h
	dec	cx
	add	[bp+si],dx
	add	[bp+si],al
	dec	bx
	add	[bp+di],dx
	add	[bp+si],al
	dec	bp
	add	[si],ax
	add	[bp+si],al
	dec	di
	add	[0200h],ax
	push	ax
	add	[bx+si],bx
	add	[bp+si],al
	push	cx
	add	[bp+di],ax
	add	[bp+si],al
	push	dx
	add	[0200h],dx
	push	bx
	add	[bx],ax
	add	[bp+si],al
	jnc	1A86h
	sbb	al,[bx+si]
	add	dh,[si+1h]
	add	al,[bx+si]
	add	dh,[di+1h]
	pop	ss
	add	[bp+si],al
	jbe	1A95h
	push	ds
	add	[bp+si],al
	ja	1A9Ah
	sbb	ax,200h
	test	[bx+di],al
	pop	ds
	add	ch,cl
	add	[bx+si],al
	add	al,0h
	add	[bx+si],ax
	add	[bx+si],al
	add	[bx+si],dl
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[si],al
	add	[bx+si],cl
	add	[bx+si],dl
	add	[bx+si],ah
	add	[bx+si],dh
	add	[bx],bh
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+di],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+di],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	al,ah
	rol	word ptr [bx+si],0h
	add	[bx+si],al
	add	[bx+si],al
	loopne	1D3Bh
	add	[bx+si],al
	add	[bx+si],ax
	sti
	add	ah,bh
	add	ch,bh
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	bl,bh
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bp+si],cx
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+di],ax
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],dl
	add	[bp+di],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],dl
	add	[bp+di],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[8E5Eh],ch
	dec	bp
	cmp	bl,[bp-72h]
	dec	bp
	inc	si
	pop	si
	mov	cs,[di+50h]
	pop	si
	mov	cs,[di+0h]
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+di],al
	add	[bx+si],al
	add	[bx+di],al
	add	[bx+di],al
	add	[bp+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	al,0CCh
	pop	si
	mov	cs,[di+0h]
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+di+42h],al
	push	bx
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+di],al
	add	[bx+di],al
	add	[bx+di],al
	add	[bx+di+4Ch],al
	dec	cx
	inc	cx
	push	bx
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[si],bh
	add	[bx+si],al
	add	[bx+di],al
	add	[bx+di+53h],al
	inc	bx
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+di],cl
	add	[bx+di],al
	add	[bx+di],al
	add	[bx+di+54h],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	or	al,[bx+si]
	add	al,[bx+si]
	add	al,[bx+si]
	inc	dx
	dec	di
	inc	si
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[si],cl
	add	[bx+si],al
	add	[bx+si],al
	add	[bp+di+44h],al
	dec	di
	push	di
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	adc	[bx+si],al
	add	[bx+si],ax
	add	[bx+si],ax
	inc	bx
	dec	ax
	push	dx
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bp+si],dl
	add	[bx+di],al
	add	[bx+di],al
	add	[bp+di+4Dh],al
	dec	di
	dec	si
	push	sp
	dec	ax
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	adc	al,0h
	add	[bx+si],ax
	add	[bx+si],ax
	inc	bx
	dec	di
	dec	sp
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[di],dl
	add	[bx+si],al
	add	[bx+si],al
	add	[bp+di+54h],al
	dec	di
	inc	sp
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	push	ss
	add	[bx+di],al
	add	[bx+di],al
	add	[si+41h],al
	push	sp
	inc	bp
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	sbb	ax,0h
	add	[bx+si],al
	add	[si+41h],al
	pop	cx
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[0100h],bl
	add	[bx+di],al
	add	[si+45h],al
	dec	sp
	inc	bp
	push	sp
	inc	bp
	inc	sp
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+di],ch
	add	[bx+si],al
	add	[bx+si],al
	add	[si+4Fh],al
	push	di
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[0100h],ch
	add	[bx+di],al
	add	[si+54h],al
	dec	di
	inc	bx
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	das
	add	[bx+di],al
	add	[bx+di],al
	add	[si+54h],al
	dec	di
	push	bx
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	xor	[bx+si],al
	add	[bx+si],ax
	add	[bx+si],ax
	inc	bp
	dec	bp
	push	ax
	push	sp
	pop	cx
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bp+di],dh
	add	[bx+di],al
	add	[bx+di],al
	add	[di+4Fh],al
	inc	si
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx],dh
	add	[bx+si],al
	add	[bx+si],al
	add	[di+58h],al
	push	ax
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bp+si],bh
	add	[bx+di],al
	add	[bx+di],al
	add	[bp+43h],al
	dec	di
	push	bp
	dec	si
	push	sp
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	aas
	add	[bx+si],al
	add	[bx+si],al
	add	[bp+49h],al
	inc	bp
	dec	sp
	inc	sp
	dec	si
	inc	cx
	dec	bp
	inc	bp
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si+0h],al
	add	[bx+si],ax
	add	[bx+si],ax
	inc	si
	dec	cx
	dec	sp
	inc	bp
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	inc	cx
	add	[bx+di],al
	add	[bx+di],al
	add	[bp+4Ch],al
	dec	di
	inc	bx
	dec	bx
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bp+si+0h],al
	add	[bx+si],al
	add	[bx+si],al
	inc	si
	dec	di
	push	bp
	dec	si
	inc	sp
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bp+di+0h],al
	add	[bx+si],al
	add	[bx+si],al
	dec	cx
	inc	si
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	push	ax
	add	[bp+di],al
	add	[bp+di],al
	add	[bx+di+49h],cl
	inc	si
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si+0h],dl
	add	ax,[bx+si]
	add	ax,[bx+si]
	dec	cx
	dec	si
	inc	sp
	inc	bp
	pop	ax
	dec	bx
	inc	bp
	pop	cx
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	jl	26B2h
	add	[bx+si],ax
	add	[bx+si],ax
	dec	cx
	dec	si
	dec	bx
	inc	bp
	pop	cx
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+di+0h],dl
	add	[bx+si],al
	add	[bx+si],ax
	dec	cx
	dec	si
	push	sp
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[di+0h],dl
	add	[bx+si],ax
	add	[bx+si],ax
	dec	cx
	push	bx
	inc	bx
	dec	di
	dec	sp
	dec	di
	push	dx
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bp+0h],dl
	add	[bx+si],al
	add	[bx+si],al
	dec	cx
	push	bx
	inc	bx
	dec	di
	dec	sp
	dec	di
	push	bp
	push	dx
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	push	si
	add	[bx+si],al
	add	[bx+si],al
	add	[si+41h],cl
	push	bx
	push	sp
	dec	bx
	inc	bp
	pop	cx
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[di+0h],bl
	add	[bx+si],al
	add	[bx+si],al
	dec	sp
	inc	cx
	push	bx
	push	sp
	push	dx
	inc	bp
	inc	bx
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bp+0h],bl
	add	[bx+si],al
	add	[bx+si],al
	dec	sp
	inc	bp
	dec	si
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bp+di+0h],ah
	add	[bx+si],ax
	add	[bx+si],ax
	dec	sp
	dec	di
	inc	bx
	dec	bx
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[si+4Fh],cl
	inc	di
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+0h],ah
	add	[bx+si],ax
	add	[bx+si],ax
	dec	sp
	dec	di
	push	di
	inc	bp
	push	dx
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si+0h],ch
	add	[bx+si],ax
	add	[bx+si],ax
	dec	sp
	push	sp
	push	dx
	dec	cx
	dec	bp
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bp+si+0h],ch
	add	[bx+si],ax
	add	[bx+si],ax
	dec	bp
	inc	cx
	pop	ax
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bp+di+0h],ch
	add	al,[bx+si]
	add	al,[bx+si]
	dec	bp
	inc	bp
	dec	bp
	dec	di
	push	dx
	pop	cx
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	insb
	add	[bx+di],al
	add	[bx+di],al
	add	[di+49h],cl
	dec	si
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bp+0h],ch
	add	al,[bx+si]
	add	al,[bx+si]
	dec	bp
	dec	di
	dec	si
	push	sp
	dec	ax
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+di+0h],dh
	add	[bx+si],ax
	add	[bx+si],ax
	dec	si
	inc	bp
	push	sp
	dec	si
	inc	cx
	dec	bp
	inc	bp
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+0h],dh
	add	[bx+si],al
	add	[bx+si],al
	push	ax
	inc	bx
	dec	di
	dec	sp
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	test	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	push	ax
	inc	bx
	dec	di
	push	bp
	dec	si
	push	sp
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	test	[bx+si],ax
	add	[bx+si],al
	add	[bx+si],al
	push	ax
	push	dx
	dec	di
	inc	bx
	dec	sp
	dec	cx
	dec	si
	inc	bp
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	xchg	cx,ax
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si+52h],dl
	dec	di
	inc	bx
	dec	si
	inc	cx
	dec	bp
	inc	bp
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	xchg	dx,ax
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si+52h],dl
	dec	di
	push	di
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	xchg	sp,ax
	add	[bx+si],al
	add	[bx+si],al
	add	[bp+si+45h],dl
	inc	cx
	inc	sp
	push	si
	inc	cx
	push	dx
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bp+di+0h],ah
	add	[bx+si],al
	add	[bp+si+45h],dl
	inc	bx
	inc	bx
	dec	di
	push	bp
	dec	si
	push	sp
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	pop	si
	add	[bx+si],al
	add	[bx+si],al
	add	[bp+si+45h],dl
	inc	bx
	dec	si
	dec	di
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[di+0h],ah
	add	[bx+si],al
	add	[bp+si+45h],dl
	push	ax
	dec	sp
	dec	cx
	inc	bx
	inc	cx
	push	sp
	inc	bp
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bp+si+200h],ch
	add	[bp+si],al
	add	[bp+si+4Ch],dl
	dec	di
	inc	bx
	dec	bx
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bp+0h],ah
	add	[bx+si],al
	add	[bx+si],al
	push	dx
	dec	di
	push	bp
	dec	si
	inc	sp
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bp+200h],ch
	add	[bp+si],al
	add	[bp+si+4Fh],dl
	push	di
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+0h],ch
	add	[bx+si],al
	add	[bp+si+54h],dl
	push	dx
	dec	cx
	dec	bp
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	ah,bl
	add	[bx+di],al
	add	[bx+di],al
	add	[bp+di+45h],dl
	inc	bx
	dec	di
	dec	si
	inc	sp
	push	bx
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bp+0h],dh
	add	[bx+si],al
	add	[bp+di+45h],dl
	dec	sp
	inc	bp
	inc	bx
	push	sp
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	inc	sp
	add	[bx+si],al
	add	[bx+di],al
	add	[bp+di+50h],dl
	inc	cx
	inc	bx
	inc	bp
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	al,dl
	add	[bx+di],al
	add	[bx+di],al
	add	[bp+di+51h],dl
	push	dx
	push	sp
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	rol	[bx+si],cl
	add	[bx+si],ax
	add	[bx+si],ax
	push	bx
	push	sp
	push	dx
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	bl,dl
	add	[bx+di],al
	add	[bp+di],al
	add	[bp+di+55h],dl
	inc	dx
	push	bx
	push	sp
	push	dx
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	illegal
	add	[bp+si],al
	add	[bp+di],al
	add	[si+49h],dl
	dec	bp
	inc	bp
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	fld	dword ptr [bx+si]
	add	[bx+si],al
	add	[bx+si],al
	push	sp
	push	dx
	inc	cx
	dec	si
	push	bx
	inc	si
	dec	di
	push	dx
	dec	bp
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	bl,bl
	add	[bp+si],al
	add	[bp+si],al
	add	[si+52h],dl
	dec	cx
	dec	bp
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	fadd	double ptr [bx+si]
	add	[bx+si],ax
	add	[bx+si],ax
	push	sp
	pop	cx
	push	ax
	inc	bp
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	fiadd	word ptr [bx+si]
	add	[bx+si],ax
	add	[bx+si],ax
	push	bp
	push	ax
	inc	sp
	inc	cx
	push	sp
	inc	bp
	inc	sp
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	al,ah
	add	[bx+si],al
	add	[bx+si],al
	add	[di+50h],dl
	push	ax
	inc	bp
	push	dx
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	cl,ah
	add	[bx+di],al
	add	[bx+di],al
	add	[di+53h],dl
	inc	bp
	inc	sp
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	loop	2A4Eh
	add	[bx+si],al
	add	[bx+si],al
	push	si
	inc	cx
	dec	sp
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	bl,ah
	add	[bx+di],al
	add	[bx+di],al
	add	[bx+4Fh],dl
	push	dx
	inc	sp
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	jmp	2B7Bh
	add	[bx+di],al
	add	[bx+di+45h],bl
	inc	cx
	push	dx
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	in	ax,dx
	add	[bx+di],al
	add	[bx+di],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+di],al
	add	[bx+si],al
	add	[bx+di],al
	add	[bx+si],al
	add	[bx+di],al
	add	[bx+di],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],dl
	pop	di
	mov	cs,[di+0h]
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bp+si],bh
	cmp	al,[bx+si]
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+di+40h],bl
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bp+di+75h],dl
	outsb
	popa
	jns	2C28h
	dec	bp
	outsw
	outsb
	popa
	jns	2C2Fh
	push	sp
	jnz	2C97h
	jnc	2C98h
	popa
	jns	2C37h
	push	di
	outsb	dx,byte ptr fs:[si]
	jnc	2CA2h
	popa
	jns	2C41h
	push	sp
	push	7275h
	jnc	2CABh
	popa
	jns	2C4Ah
	inc	si
	jc	2CB6h
	popa
	jns	2C51h
	push	bx
	popa
	jz	2CCAh
	jc	2CBBh
	popa
	jns	2C5Ah
	and	[bp+si],ah
	and	[bp+si],sp
	sub	[bp+si],ah
	das
	and	dh,[bx]
	and	al,[bx+di+22h]
	dec	dx
	and	dl,[bx+di+22h]
	dec	dx
	popa
	outsb
	jnz	2CD0h
	jc	2CEAh
	add	[bp+65h],al
	bound	si,[bp+si+75h]
	popa
	jc	2CF3h
	add	[di+61h],cl
	jc	2CE2h
	push	4100h
	jo	2CF6h
	imul	bp,[si+0h],614Dh
	jns	2C8Bh
	dec	dx
	jnz	2CFCh
	add	gs:[bp+si+75h],cl
	insb
	jns	2C95h
	inc	cx
	jnz	2CFFh
	jnz	2D0Dh
	jz	2C9Ch
	push	bx
	jo	2D14h
	insw	gs:[di],dx
	bound	sp,[di+72h]
	add	[bx+63h],cl
	jz	2D19h
	bound	sp,[di+72h]
	add	[bp+6Fh],cl
	jbe	2D17h
	insw
	bound	sp,[di+72h]
	add	[si+65h],al
	arpl	[di+6Dh],bx
	bound	sp,[di+72h]
	add	[bx+si],ah
	and	ch,[bp+si+22h]
	jc	2CE8h
	jpo	2CEAh
	and	word ptr [bp+si],2287h
	mov	sp,[bp+si]
	nop
	and	dl,[di+9C22h]
	and	ah,[bp+0AE22h]
	and	dh,[bx+4422h]
	popa
	jz	2D3Fh
	bound	sp,[bx+di+73h]
	and	gs:[bp+69h],al
	insb
	jnc	2D09h
	and	[bx+si],ah
	and	[bp+di],ah
	and	[bp+si+65h],dl
	arpl	[bx+72h],bx
	jnc	2D16h
	and	[bx+si],ah
	and	[si+61h],cl
	jnc	2D71h
	and	[di+70h],dl
	popa
	jz	2D69h
	and	[bx+si],ah
	and	[bx+si],ah
	and	[bp+di+69h],dl
	jpe	2D72h
	add	[si+6Fh],al
	and	[bx+di+6Fh],bh
	jnz	2D35h
	ja	2D78h
	outsb
	jz	2D3Ah
	insw
	outsw
	jc	2D83h
	and	[bp+di+61h],dh
	insw
	jo	2D90h
	jnc	2D66h
	add	[bx+si+61h],dl
	and	gs:[esi+6Fh],cl
	add	cs:[bp+si],ch
	sub	ah,[bx+si]
	push	bx
	jnz	2D99h
	jz	2DA8h
	jz	2D9Ch
	insb
	and	[bp+si],ch
	sub	al,[bx+si]
	sub	ah,[bx+si]
	push	bx
	jnz	2DA7h
	jnc	2DBCh
	bound	si,[si+6Fh]
	jz	2DADh
	insb
	and	[bp+si],ch
	add	[bp+si],ch
	sub	ch,[bp+si]
	and	[si+6Fh],dl
	jz	2DB9h
	insb
	and	[bp+si],ch
	sub	ch,[bp+si]
	add	[bx+di+6Eh],cl
	jnc	2D62h
	and	[bx+si],ah
	and	[bx+si],al
	dec	cx
	outsb
	jbe	2DCBh
	insb
	imul	sp,[si+20h],6164h
	jz	2DD7h
	add	[bp+si+41h],dl
	dec	si
	inc	di
	inc	bp
	and	[bx+di+73h],ch
	and	[bx+si],al
	and	[si+6Fh],dh
	and	[bx+si],al
	and	[bp+si],ah
	fisub	dword ptr [bp+si]
	push	cs
	and	bp,[bx+si]
	and	si,[bx+di]
	and	ax,[bx+si+23h]
	push	ax
	and	bx,[bp+23h]
	bound	sp,[bp+di]
	and	esi,[bp+di+23h]
	jge	2DBDh
	pop	cx
	das
	dec	si
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[879Fh],ch
	mov	[42AEh],al
	jge	2E3Eh
	add	[bx+si],al
	cmp	bh,64h
	int	0CDh
	rol	word ptr [bx+si],0h
	sar	bh,0F8h
	add	dl,ch
	inc	cx
	add	[bx+si],al
	insw
	add	[si+3B01h],cx
	add	[bp+si+0h],bl
	js	2E06h
	xchg	di,ax
	add	[di+0D400h],dh
	add	bl,dh
	add	[bx+di],dl
	add	[bx+si],si
	add	[bp+1h],cx
	add	[bx+si],al
	pop	ds
	add	[si],bl
	add	[bx],bl
	add	[1F00h],bl
	add	[1F00h],bl
	add	[bx],bl
	add	[1F00h],bl
	add	[1F00h],bl
	add	[bx+si],al
	add	[bx],bl
	add	[si],bh
	add	[bp+di+0h],bl
	jns	2E38h
	cbw
	add	[bp+0D500h],dh
	add	ah,dh
	add	[bp+si],dl
	add	[bx+di],si
	add	[bx+1h],cx
	outsb
	add	[di+0E701h],cx
	add	ax,[bx+si]
	das
	das
	das
	sub	ax,0h
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+9B01h],bh
	add	[di+0EF01h],bx
	add	[bp+si],bp
	add	ah,[bp+2h]
	nop
	add	bh,[bx+3h]
	xchg	bx,ax
	add	al,84h
	add	ax,714h
	test	byte ptr [bx+si],1Bh
	or	ah,dh
	add	ax,67Ch
	lea	ax,[bx]
	jle	2ED0h
	ror	[bp+si],cl
	jge	2ED7h
	pop	dx
	or	bx,dx
	or	[bx+di],cx
	add	sp,[bp+si+0Ah]
	outsb
	add	bl,[bx+di+0A801h]
	or	al,45h
	push	cs
	daa
	push	cs
	adc	[di],cx
	cmp	ax,6A0Dh
	or	ax,0D98h
	mov	bx,9C0Ch
	or	al,0A8h
	or	al,45h
	push	cs
	daa
	push	cs
	adc	[di],cx
	cmp	ax,6A0Dh
	or	ax,0DCBh
	out	dx,ax
	or	al,0A2h
	or	al,49h
	or	al,49h
	or	al,49h
	or	al,49h
	or	al,49h
	or	al,49h
	or	al,49h
	or	al,49h
	or	al,49h
	or	al,51h
	or	al,49h
	or	al,49h
	or	al,49h
	or	al,49h
	or	al,49h
	or	al,49h
	or	al,49h
	or	al,49h
	or	al,49h
	or	al,49h
	or	al,49h
	or	al,7Eh
	or	al,49h
	or	al,49h
	or	al,49h
	or	al,49h
	or	al,49h
	or	al,49h
	or	al,49h
	or	al,49h
	or	al,49h
	or	al,0h
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	adc	al,1h
	add	[bp+si],cx
	add	[bx+si],al
	add	[bp+si],cl
	add	[bx+di],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+di],cx
	add	[bx+si],al
	add	[bp+si],al
	add	[bp+si],cl
	add	[bx+si],al
	adc	[bx+si],al
	add	[bx+si],dl
	add	[bx+si],al
	add	[bx+di],al
	add	[bx+si],al
	adc	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	and	[bp+si],al
	add	[bx+si+8000h],ax
	add	[bx+si+1800h],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bp+si],al
	add	[bx+si],ax
	adc	[bp+si],al
	add	[bx+si],al
	adc	[si],ah
	add	[bx+si],al
	add	[bp+si],al
	add	[bx+si],al
	add	al,0h
	adc	[bx+si],al
	adc	[bx+di],ch
	add	[bx+si],al
	adc	al,[bx+di]
	add	[bx+si],ax
	add	[bx+si],ax
	add	[bp+si],al
	add	[si],ch
	add	[bx+si],al
	sbb	al,[bp+si]
	add	[bx+si],ax
	add	[bx+si],ax
	add	[bp+si],ax
	add	[si],dh
	add	[bp+si],al
	add	cs:[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+di],al
	add	[bx+si],al
	add	[bx+si],al
	add	byte ptr [bx+si],3Fh
	add	[bx+si],al
	add	[di],al
	add	[bp+si],al
	add	[bp+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+di],al
	add	[bx+si],al
	adc	[bx+si],al
	add	[bx+si],al
	add	[di+0h],al
	add	[0101h],dl
	and	[bx+si],al
	add	[bx+si],al
	add	[bx+di],al
	dec	dx
	add	[si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	adc	al,1h
	add	[bp+si],ax
	add	[bx+si],al
	add	[bx+si],al
	add	[bp+di+0h],dx
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[0101h],dl
	and	[bx+si],al
	add	[bx+si],al
	add	[bx+di],al
	pop	bx
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],ax
	add	[bx+si],al
	add	[bp+si],al
	add	[bp+0h],ah
	add	[bp+si],dl
	add	[bx+di],ax
	add	[bx+di],al
	add	[bx+si],al
	and	[bx+si],al
	insb
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],ax
	add	[bx+si],al
	add	[bx+si],ah
	add	[di+0h],dh
	add	[0101h],dl
	and	[bx+si],al
	add	[bx+si],al
	add	al,[bx+si]
	jl	30AEh
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bp+si],dl
	add	[bx+si],ax
	add	[bx+di],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	al,0h
	add	al,[bx+si]
	add	[bx+di],al
	add	[bx+si],dl
	add	[bx+si],al
	test	[bx+si],al
	add	al,0h
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	al,0h
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	al,0h
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	al,0h
	add	al,[bx+si]
	add	[bx+si],dl
	or	al,[bx+si]
	add	[bx+si],al
	mov	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+di],al
	add	[bx+si],al
	add	[bx+si],al
	add	byte ptr [bx+si],90h
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],ax
	add	[bx+si],al
	push	ds
	add	al,[bx+di]
	or	[bx+si],al
	or	[bx+si],al
	or	[bx+si],al
	call	far 0100h:0000h
	add	[bx+si],al
	adc	[bx+si],al
	add	[bx+si],al
	add	[bp+si+400h],ah
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],ax
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	push	ss
	add	[bx+di],ax
	and	[bx+si],al
	add	[bx+si],al
	add	al,[bx+si]
	movsw
	add	[bx+si],al
	push	ss
	add	[bx+di],ax
	and	[bx+si],al
	add	[bx+si],al
	add	[bx+di],al
	lodsw
	add	[bx+si],al
	push	ss
	add	[bx+di],ax
	and	[bx+si],al
	add	[bx+si],al
	add	[bx+di],al
	mov	dh,0h
	add	[si],cl
	add	al,[bx+di]
	stosb
	add	[bp+si+8001h],bp
	add	[bx+0h],bh
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	es:[bx+di],ax
	stosb
	add	[bx+si],ax
	add	[bx+si+0C800h],al
	add	[bx+si],dl
	xor	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],ax
	add	[bx+si],al
	add	[bx+si+0D200h],al
	add	[bx+si],al
	or	al,2h
	add	[bp+si+0AA01h],bp
	add	[bx+si+0D800h],ax
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	adc	al,1h
	add	[bx+si],cx
	add	[bx+si],al
	add	[bx+si],cl
	add	al,ah
	add	[bx+si],al
	push	ds
	add	al,[bx+di]
	or	[bx+si],al
	or	[bx+si],al
	or	[bx+si],al
	call	320Bh
	add	[bx+si],al
	add	[bx+si],ax
	add	[bx+si],al
	add	[bx+si],al
	add	ax,si
	add	[bx+si],al
	adc	al,1h
	add	[bp+si],ax
	add	[bx+si],al
	add	[bx+si],al
	add	ax,di
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si+0h],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],ax
	add	[bx+si],al
	add	[bp+si],al
	add	[bp+si],al
	add	[bx+si],ax
	adc	al,1h
	add	[bp+si],ax
	add	[bx+si],al
	add	[bx+si],al
	add	[bp+di],cx
	add	[bx+si],ax
	adc	al,[bx+di]
	add	[bx+si],ax
	add	[bx+si],ax
	add	[bx+si+1900h],al
	add	[bx+si],ax
	add	[bx+si],al
	add	[bx+si],ax
	add	[bx+si],al
	add	[bx+si+2200h],al
	add	[bx+si],ax
	add	[bx+si],al
	add	[bx+si],ax
	add	[bx+si],al
	add	[bx+si+2A00h],al
	add	[bx+si],ax
	add	[bx+si],al
	add	[bx+si],ax
	add	[bx+si],al
	add	[bp+si],al
	add	[bp+si],dh
	add	[bx+si],ax
	adc	al,[bx+di]
	add	[bx+si],ax
	add	[bx+si],ax
	add	[bp+si],al
	add	[bp+di],bh
	add	[bx+si],ax
	add	[bx+di],al
	add	[bx+si],al
	adc	[bx+si],al
	add	[bp+si+4601h],ch
	add	[bx+si],ax
	or	al,2h
	add	[bp+si+0AA01h],bp
	add	[bx+si+4B00h],ax
	add	[bx+si],ax
	add	[bp+si],al
	add	[bx+si],al
	add	[bx+si],ax
	adc	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bp+di],al
	add	[bx+si],al
	add	[bx+si],ax
	add	[bx+si],ax
	add	[bx+si],al
	add	[bx+si],al
	adc	al,1h
	add	[bp+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[si+1h],dl
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[si],cl
	add	al,[bx+di]
	stosb
	add	[bp+si+8001h],bp
	add	[bx+di+1h],bl
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	stosb
	add	[bx+si],ax
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],ax
	add	[bx+si],al
	add	[bp+si],al
	add	[bx+di+1h],ah
	add	[si],dl
	add	[bx+di],ax
	or	al,[bx+si]
	add	[bx+si],al
	add	al,[bx+si]
	imul	ax,[bx+di],0h
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	stosb
	add	[bp+di+1h],si
	add	[bp+si],bl
	add	al,[bx+di]
	add	[bx+di],al
	add	[bx+di],al
	add	byte ptr [bx+si],79h
	add	[bx+si],ax
	adc	al,1h
	add	[bp+si],cx
	add	[bx+si],al
	add	[bp+si],cl
	add	[bx+di+1h],al
	add	[bx+si],al
	add	[bx+si],ax
	add	[bx+si],al
	add	[bx+si+8900h],al
	add	[bp+si],ax
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bp+si],al
	or	[bx+di],al
	add	[bx+si+0h],al
	add	[bx+si],al
	add	[bp+di+201h],dl
	or	al,[bx+si]
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bp+si],al
	push	es
	add	[bx+si],ax
	add	byte ptr [bx+si],0h
	add	[bx+si],al
	add	[bx+1h],bl
	adc	al,[bx+di]
	add	[bx+si],al
	add	[bx+si],ax
	add	[bx+si],al
	add	[bp+di+201h],ch
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],ax
	add	[bx+si],al
	add	[bp+si],al
	add	[si+1h],dh
	add	[bx+si],al
	add	[bx+si],ax
	add	[bx+si],al
	add	[bp+si],al
	add	[bp+1h],bh
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[si],al
	add	[bx+di],al
	add	[bx+si],al
	add	[bx+si],ax
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	or	al,2h
	add	[bp+si+0AA01h],bp
	add	[bx+si+0C800h],ax
	add	[bx+si],ax
	sub	al,1h
	add	[bx+si],ax
	add	[bx+si],ax
	add	[bp+si],al
	add	cl,dl
	add	[si],ax
	add	al,0h
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si+0h],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],ax
	add	[bx+si],al
	add	[bx+si+0D900h],al
	add	[bx+si],ax
	adc	al,1h
	add	[bx+si],cx
	add	[bx+si],al
	add	[bx+si],cl
	add	al,ah
	add	[bx+si],ax
	adc	al,[bx+di]
	add	[bx+si],ax
	add	[bx+si],ax
	add	[bx+si],al
	add	ax,bp
	add	[bx+si],ax
	or	al,2h
	add	[bp+si+0AA01h],bp
	add	[bx+si+0F200h],ax
	add	[bx+si],ax
	adc	al,[bx+di]
	add	[bx+si],ax
	add	[bx+si],ax
	add	[bx+si],al
	add	dx,di
	add	[bx+si],ax
	sub	al,[bp+si]
	add	[bp+si+0AA01h],bp
	add	[bx+si],ax
	add	[si],al
	add	al,[bx+si]
	adc	al,1h
	add	[bp+si],ax
	add	[bx+si],al
	add	[bp+si],al
	add	[bx+si],dl
	add	al,[bx+si]
	add	[bx+di],al
	add	[bx+si],al
	adc	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	sub	al,[bp+si]
	add	[bp+si+0AA01h],bp
	add	[bx+si],ax
	add	[bp+di],bl
	add	al,[bx+si]
	adc	[bp+si],al
	add	[bp+si+0AA01h],bp
	add	[bp+si+2701h],bp
	add	al,[bx+si]
	push	ds
	add	al,[bx+di]
	or	[bx+si],al
	or	[bx+si],al
	or	al,[bx+si]
	das
	add	al,[bx+si]
	push	ss
	add	[bx+di],ax
	and	[bx+si],al
	add	[bx+si],al
	add	al,[bx+si]
	aaa
	add	al,[bx+si]
	push	ds
	add	al,[bx+di]
	or	[bx+si],al
	or	[bx+si],al
	or	al,[bx+si]
	inc	cx
	add	al,[bx+si]
	add	[bx+di],al
	add	[bx+si],al
	add	[bx+si],ax
	add	[bx+si],al
	add	[bx+di+2h],cl
	add	[bx+si],al
	add	ax,[bx+si]
	add	[bx+di],al
	add	[bx+di],al
	add	[bx+si],al
	push	cx
	add	al,[bx+si]
	or	al,2h
	add	[bp+si+0AA01h],bp
	add	[bx+si+5600h],ax
	add	al,[bx+si]
	adc	al,1h
	add	[bp+si],cx
	add	[bx+si],al
	add	[bp+si],cl
	add	[bx+2h],bl
	add	[bx+si],al
	add	[bx+di],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+di],al
	arpl	[bp+si],bx
	add	al,[bx+si]
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],bl
	add	[bx+di],ax
	add	byte ptr [bx+si],0h
	add	[bx+si+6D00h],al
	add	al,[bx+si]
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	sbb	al,[bp+si]
	add	[bx+si],al
	add	[bx+si],ax
	add	[bx+si],ax
	add	[bp+2h],dh
	add	[si],dl
	add	[bx+di],ax
	add	al,[bx+si]
	add	[bx+si],al
	add	[bx+di],al
	jg	3518h
	add	[bp+si],dl
	add	[bx+si],ax
	add	[bx+di],al
	add	[bx+si],al
	add	[bx+si],al
	mov	al,[bp+si]
	add	[si],dl
	add	[bx+si],ax
	add	al,[bx+si]
	add	[bx+si],al
	add	[bx+si],al
	xchg	sp,ax
	add	al,[bx+si]
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],ax
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bp+si],al
	add	[bx+si],al
	add	[bx+si],al
	and	[bp+si],al
	add	[bx+si+8000h],ax
	add	[bx+si+9E00h],al
	add	al,[bx+si]
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bp+si],al
	add	[bp+si+1h],ch
	adc	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],ax
	add	[bx+si],al
	add	[bp+si],al
	add	[bx+di+2h],ch
	add	[bx+si],al
	add	[bx+si],ax
	add	[bx+si],al
	add	[bp+si],al
	add	[bx+si+2h],dh
	push	cs
	add	al,[bx+di]
	stosb
	add	[bp+si+0AA01h],bp
	add	[bx+di+2h],di
	add	es:[bx+si],ax
	stosb
	add	[bx+si],ax
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bp+si],al
	add	[bp+si+1h],ch
	adc	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bp+si],al
	add	[bp+si+1h],ch
	adc	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bp+si],al
	add	[bp+si+1h],ch
	adc	[bp+si+1h],ch
	add	[bx+si],al
	push	ds
	add	al,[bx+si]
	add	al,[bx+si]
	add	al,[bx+si]
	add	[bx+si],al
	rol	word ptr [bp+si],0h
	add	es:[bx+si],ax
	stosb
	add	[bx+si],ax
	add	[bx+si],al
	add	al,cl
	add	al,[bx+si]
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	es:[bx+si],ax
	stosb
	add	[bx+si],ax
	add	[bx+si],al
	add	dl,cl
	add	al,[bx+si]
	add	[bx+di],al
	add	[bx+si],al
	adc	[bx+si],al
	add	[bx+si],al
	add	ah,cl
	add	al,[si]
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],ax
	add	[bx+si],al
	add	[bp+si],al
	add	ah,dl
	add	al,[bx+si]
	add	[bx+si],al
	add	[bx+si],ax
	add	[bx+si],al
	add	[bx+si],al
	add	di,bx
	add	al,[bx+si]
	add	[bp+di],al
	add	[bp+si],al
	add	[bp+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],ax
	add	[bx+si],al
	add	[bp+si],al
	add	dl,ch
	add	al,[bx+si]
	add	[bx+di],al
	add	[bx+si],al
	adc	[bx+si],al
	add	[bx+si],al
	add	cl,dh
	add	cl,[0000h]
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	al,0h
	add	[si],cl
	add	al,[bx+si]
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],ax
	add	[bx+si],al
	add	al,[bx+si]
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],ah
	add	[bx+si],al
	add	[0002h],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bp+si],al
	add	[bx+si],al
	add	[0000h],cl
	add	[bx+si],al
	add	[bx+si],al
	add	[bp+si+1h],ch
	add	[bp+si],cl
	add	al,[bx+si]
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],cl
	add	[bx+si],al
	add	[0000h],cl
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	or	[bx+si],al
	add	[bx+si],al
	add	[bx+di],al
	add	[bx+si],al
	adc	[bx+si],al
	add	[bp+si+1h],ch
	add	[0000h],cl
	add	[bx+si],al
	add	[bx+si],al
	add	[bp+si+1h],ch
	add	[0002h],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bp+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+di],al
	add	[bx+si],al
	adc	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],ax
	add	[bx+si],al
	add	[bx+si],al
	add	ax,di
	add	al,[bx+si]
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],ax
	add	[bx+si],al
	add	[bp+si],al
	add	[bp+si],al
	add	ax,[si]
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bp+si],al
	add	[bx+si],al
	add	[bx+si+0h],ax
	add	[bp+si],cl
	add	ax,[bx+si]
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	sbb	al,2h
	add	[bx+si],ax
	add	[bp+si],ax
	add	[bx+si],al
	add	[bp+si],dx
	add	ax,[si]
	add	[bp+si],al
	add	[bx+si],al
	add	[bx+si],ax
	add	[bx+si],ax
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bp+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	push	ds
	add	al,[bx+di]
	or	[bx+si],al
	add	al,[bx+si]
	or	al,[bx+si]
	and	al,3h
	add	[bx+si],al
	add	[bx+di],al
	add	[bx+si],al
	add	[bx+si],al
	add	al,[bx+si]
	xor	al,[bp+di]
	add	[bx+si],al
	add	[bx+si],ax
	stosb
	add	[bx+si],ax
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	sub	[bp+si],al
	add	[bp+si+1h],ch
	add	[bx+si],ax
	add	[bx+si],al
	add	[bp+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bp+si],al
	adc	al,1h
	add	[bp+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+di],al
	add	[bx+si],al
	adc	[bx+si],al
	add	[bx+si],al
	add	[bx+si],bh
	add	ax,[bx+si]
	add	[bx+di],al
	add	[bx+si],al
	adc	[bx+si],al
	add	[bx+si],al
	add	[bx+3h],al
	add	[bx+si],al
	add	[bx+di],al
	add	[bx+si],al
	add	[bx+si],al
	add	al,[bx+si]
	push	sp
	add	ax,[bx+si]
	add	es:[bx+si],ax
	stosb
	add	[bx+si],ax
	add	[bx+si],al
	add	[bp+3h],bl
	add	[bx+si],al
	add	[bx+si],ax
	add	al,[bx+si]
	add	[bx+si],al
	add	[bx+si],al
	arpl	[bp+di],bx
	add	[bp+si],dl
	add	[bx+si],ax
	add	[bx+di],al
	add	[bx+si],al
	add	[bx+si],al
	push	3h
	add	[bp+si],dl
	add	[bx+si],ax
	add	[bx+di],al
	add	[bx+si],al
	add	[bx+si],al
	outsb
	add	ax,[si]
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bp+si+3h],dh
	add	[si],dl
	add	[bx+si],ax
	add	al,[bx+si]
	add	[bx+si],al
	add	[bx+si],al
	jbe	3819h
	add	[bp+si],dl
	add	[bx+si],ax
	add	[bx+di],al
	add	[bx+si],al
	add	[bx+si],al
	jpe	3825h
	add	[bp+si],dl
	add	[bx+si],ax
	add	[bx+di],al
	add	[bx+si],al
	add	[bx+si],al
	jle	3831h
	add	al,0h
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	byte ptr [bp+di],0h
	adc	al,[bx+di]
	add	[bx+si],al
	add	[bx+si],ax
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+di],al
	add	[bx+si],al
	adc	[bx+si],al
	add	[bx+si],al
	add	[bp+3h],al
	add	[bp+si],al
	add	[bp+si],al
	add	[bx+si],al
	add	[bx+si],ax
	add	[bp+si+3h],cl
	add	[bp+si],al
	add	[bp+si],al
	add	[bx+si],al
	adc	[bx+si],al
	add	[bp+3h],cl
	adc	al,[bx+di]
	add	[bx+si],al
	add	[bx+si],ax
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	adc	al,1h
	add	[bp+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bp+si+403h],dl
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bp+403h],dl
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bp+si+3h],bl
	adc	al,[bx+di]
	add	[bx+si],al
	add	[bx+si],ax
	add	[bx+si],al
	add	[bp+403h],bl
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	adc	al,[bx+di]
	add	[bx+si],al
	add	[bx+si],ax
	add	[bx+si],al
	add	[bp+si+3h],ah
	add	[bp+si],al
	add	[bx+si],al
	add	al,0h
	add	[bx+si],ax
	add	[bp+3h],ah
	adc	al,1h
	add	[bp+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bp+si+3h],ch
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	adc	al,1h
	add	[bp+si],ax
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+3h],bp
	add	[bx+di],al
	add	[bx+si],al
	adc	[bx+si],al
	add	[bp+si+1h],ch
	add	[bx+si],al
	adc	al,1h
	add	[bx+si],cx
	add	[bx+si],al
	add	[bx+si],cl
	add	[bx+di+3h],bh
	adc	al,1h
	add	[bp+si],cx
	add	[bx+si],al
	add	[bx+si],al
	add	dx,ax
	add	ax,[bx+si]
	push	ds
	add	al,[bx+di]
	or	al,[bx+si]
	add	al,[bx+si]
	add	[bx+di],al
	retf	3h
	and	al,[bp+di]
	add	[bp+si],cx
	add	[bp+si],al
	add	[bx+si],al
	add	si,dx
	add	ax,[bx+si]
	sbb	al,2h
	add	[bx+si],ax
	add	[bp+si],ax
	add	[bx+si],al
	add	si,sp
	add	ax,[bx+si]
	and	al,3h
	add	[bx+si],ax
	add	[bp+si],ax
	add	[bx+si],al
	add	bp,si
	add	cx,[0000h]
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	adc	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],ax
	add	[bx+si],al
	add	[bx+si],al
	add	[0404h],ax
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	sub	[bp+si],al
	add	[bp+si+1h],bp
	add	[bx+si],ax
	add	[di],cx
	add	al,0h
	adc	al,[bx+di]
	add	[bx+si],ax
	add	[bx+si],ax
	add	[bx+si],al
	add	[bp+di],bx
	add	al,0h
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si+0h],al
	add	[bx+si],al
	adc	al,[bx+di]
	add	[bx+si],ax
	add	[bx+si],ax
	add	[bx+si],al
	add	[si],sp
	add	al,4h
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],ax
	add	[bx+si],al
	add	[bx+si+2D00h],al
	add	al,0h
	adc	al,[bx+di]
	add	[bx+si],ax
	add	[bx+si],ax
	add	[bx+si],al
	add	[bx],si
	add	al,0h
	add	[bx+si],al
	add	[bx+si],ax
	add	[bx+si],al
	add	[bx+si+4100h],al
	add	al,0h
	adc	al,[bx+di]
	add	[bx+si],ax
	add	[bx+si],ax
	add	[bp+si],cl
	add	[bx+si+4h],cl
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+di],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+di],ax
	add	[bx+di],al
	add	[bx+si],al
	stosb
	add	[bx+si+4h],dx
	add	[bx+si],al
	add	[bx+si],ax
	add	[bx+di],al
	add	[bx+si],al
	add	[si],al
	push	sp
	add	al,0h
	add	[bx+di],al
	add	[bx+si],ax
	add	[bx+si],ax
	add	[bx+si],al
	add	[bx+si+4h],bx
	add	[bx+si],al
	add	[bx+si],ax
	add	[bx+di],al
	add	[bx+si],al
	stosb
	add	[si+4h],bx
	add	[si],dl
	add	[bx+di],ax
	add	al,[bx+si]
	add	[bx+si],al
	add	al,[bx+si]
	pusha
	add	al,4h
	add	[bx+di],al
	add	[bx+si],al
	add	[bx+si],ax
	add	[bx+si],al
	add	[bx+di+4h],ch
	add	[bx+si],al
	add	[bx+si],ax
	add	[bx+di],al
	add	[bx+si],al
	add	[bx+si],dl
	insw
	add	al,0h
	add	[bx+di],al
	add	[bx+si],al
	adc	[bx+si],al
	add	[bx+si],al
	add	[bx+di+4h],dh
	add	[0101h],dl
	and	[bx+si],al
	add	[bx+si],al
	add	al,[bx+si]
	jns	3A66h
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	al,[bx+si]
	add	[bx+si],al
	add	[bx+di+42h],al
	push	bx
	sub	[bx+31h],bl
	sub	[bx+si],ax
	inc	cx
	inc	bx
	inc	bx
	inc	bp
	push	ax
	push	sp
	add	[bp+di+6Fh],ah
	jnz	3AFCh
	jz	3AF5h
	jc	3A92h
	pop	di
	xor	[bx+si],sp
	inc	cx
	dec	si
	inc	sp
	and	cs:[bx+32h],bl
	add	[bp+di+5Fh],bl
	xor	[di+0h],bx
	sub	ax,3Eh
	inc	cx
	push	bx
	inc	bx
	sub	[bx+31h],bl
	sub	[bx+si],ax
	inc	cx
	push	sp
	sub	[bx+31h],bl
	sub	al,20h
	pop	di
	xor	ch,[bx+di]
	add	[bp+si+4Fh],al
	inc	si
	sub	[bx+di],ch
	add	[bp+di+41h],al
	dec	sp
	dec	sp
	add	[bp+di+44h],al
	dec	di
	push	di
	sub	[bx+31h],bl
	sub	[bx+si],ax
	inc	bx
	dec	ax
	push	dx
	sub	[bx+31h],bl
	sub	[bx+si],ax
	inc	bx
	dec	bp
	dec	di
	dec	si
	push	sp
	dec	ax
	sub	[bx+31h],bl
	sub	[bx+si],ax
	inc	bx
	dec	di
	dec	sp
	sub	[bx+di],ch
	add	[bp+di+54h],al
	dec	di
	inc	sp
	sub	[bx+31h],bl
	sub	[bx+si],ax
	inc	sp
	inc	cx
	push	sp
	inc	bp
	sub	[bx+di],ch
	add	[si+41h],al
	pop	cx
	sub	[bx+31h],bl
	sub	[bx+si],ax
	push	bp
	push	bx
	inc	bp
	add	[si+45h],al
	inc	bx
	dec	sp
	inc	cx
	push	dx
	inc	bp
	add	[si+45h],al
	dec	sp
	inc	bp
	push	sp
	inc	bp
	inc	sp
	sub	[bx+di],ch
	add	[bx+31h],bl
	and	[bx],ch
	and	[bx+32h],bl
	add	[si+4Fh],al
	add	[si+4Fh],al
	push	di
	sub	[bx+31h],bl
	sub	[bx+si],ax
	inc	sp
	push	sp
	dec	di
	inc	bx
	sub	[bx+31h],bl
	sub	[bx+si],ax
	inc	sp
	push	sp
	dec	di
	push	bx
	sub	[bx+31h],bl
	sub	[bx+si],ax
	pop	di
	xor	[bx+si],sp
	cmp	ax,203Dh
	pop	di
	xor	al,[bx+si]
	inc	bp
	dec	bp
	push	ax
	push	sp
	pop	cx
	sub	[bx+31h],bl
	sub	[bx+si],ax
	inc	bp
	dec	di
	inc	si
	sub	[bx+di],ch
	add	[bx+31h],bl
	and	[di],bh
	and	[bx+32h],bl
	add	[di+58h],al
	push	ax
	sub	[bx+31h],bl
	sub	[bx+si],ax
	pop	di
	xor	[bx+si],sp
	pop	si
	and	[bx+32h],bl
	add	[bx+di+4Ch],al
	dec	cx
	inc	cx
	push	bx
	sub	[bx+di],ch
	add	[bx+di+4Ch],al
	dec	cx
	inc	cx
	push	bx
	sub	[bx+31h],bl
	sub	[bx+si],ax
	inc	si
	inc	bx
	dec	di
	push	bp
	dec	si
	push	sp
	sub	[bx+di],ch
	add	[bp+49h],al
	inc	bp
	dec	sp
	inc	sp
	dec	si
	inc	cx
	dec	bp
	inc	bp
	sub	[bx+31h],bl
	sub	[bx+si],ax
	inc	si
	dec	cx
	dec	sp
	inc	bp
	sub	[bx+31h],bl
	sub	[bx+si],ax
	inc	si
	dec	sp
	dec	di
	inc	bx
	dec	bx
	sub	[bx+di],ch
	add	[bp+4Fh],al
	push	bp
	dec	si
	inc	sp
	sub	[bx+di],ch
	add	[bp+di+45h],dl
	dec	sp
	inc	bp
	inc	bx
	push	sp
	sub	[bx+di],ch
	add	[bp+di+45h],dl
	dec	sp
	inc	bp
	inc	bx
	push	sp
	sub	[bx+31h],bl
	sub	[bx+si],ax
	pop	di
	xor	[bx+si],bp
	sub	[bx+si],ax
	pop	di
	xor	[bx+si],sp
	cmp	ax,5F20h
	xor	al,[bx+si]
	inc	di
	dec	di
	push	sp
	dec	di
	add	[bx+31h],bl
	and	[5F20h],bh
	xor	al,[bx+si]
	dec	cx
	dec	si
	dec	bx
	inc	bp
	pop	cx
	sub	[bx+di],ch
	add	[bx+di+4Eh],cl
	dec	bx
	inc	bp
	pop	cx
	sub	[bx+31h],bl
	sub	[bx+si],ax
	dec	cx
	dec	si
	push	ax
	push	bp
	push	sp
	add	[bx+31h],bl
	and	[si],ah
	and	[bx+32h],bl
	add	[bx+di+4Eh],cl
	push	sp
	sub	[bx+31h],bl
	sub	[bx+si],ax
	dec	cx
	push	bx
	inc	bx
	dec	di
	dec	sp
	dec	di
	push	dx
	sub	[bx+di],ch
	add	[bx+si],ch
	arpl	[bx+6Eh],bx
	imul	si,fs:[si+69h],6E6Fh
	sub	[bx+si],ax
	sub	[bp+di+6Fh],ah
	outsb
	imul	si,fs:[si+69h],6E6Fh
	sub	[bx+si],ax
	dec	bx
	inc	bp
	pop	cx
	inc	dx
	dec	di
	inc	cx
	push	dx
	inc	sp
	add	[si+41h],cl
	push	bx
	push	sp
	dec	bx
	inc	bp
	pop	cx
	sub	[bx+di],ch
	add	[si+41h],cl
	push	bx
	push	sp
	push	dx
	inc	bp
	inc	bx
	sub	[bx+di],ch
	add	[bx+31h],bl
	and	[si],bh
	cmp	ax,5F20h
	xor	al,[bx+si]
	dec	sp
	inc	bp
	dec	si
	sub	[bx+31h],bl
	sub	[bx+si],ax
	dec	sp
	dec	di
	inc	bx
	dec	bx
	sub	[bx+di],ch
	add	[si+4Fh],cl
	inc	di
	sub	[bx+31h],bl
	sub	[bx+si],ax
	dec	sp
	dec	di
	push	di
	inc	bp
	push	dx
	sub	[bx+31h],bl
	sub	[bx+si],ax
	pop	di
	xor	[bx+si],sp
	cmp	al,20h
	pop	di
	xor	al,[bx+si]
	dec	sp
	push	sp
	push	dx
	dec	cx
	dec	bp
	sub	[bx+31h],bl
	sub	[bx+si],ax
	dec	bp
	inc	cx
	pop	ax
	sub	[bx+31h],bl
	sub	al,20h
	pop	di
	xor	ch,[bx+di]
	add	[di+45h],cl
	dec	bp
	dec	di
	push	dx
	pop	cx
	sub	[bx+31h],bl
	sub	[bx+si],ax
	dec	bp
	dec	cx
	dec	si
	sub	[bx+31h],bl
	sub	al,20h
	pop	di
	xor	ch,[bx+di]
	add	[bx+31h],bl
	and	[di],ch
	and	[bx+32h],bl
	add	[bx+31h],bl
	and	[di],ah
	and	[bx+32h],bl
	add	[di+4Fh],cl
	dec	si
	push	sp
	dec	ax
	sub	[bx+31h],bl
	sub	[bx+si],ax
	pop	di
	xor	[bx+si],sp
	sub	ah,[bx+si]
	pop	di
	xor	al,[bx+si]
	push	dx
	inc	bp
	push	bx
	push	sp
	dec	di
	push	dx
	inc	bp
	add	[bp+di+41h],dl
	push	si
	inc	bp
	add	[bx+31h],bl
	and	[si],bh
	and	ds:[bx+32h],bl
	add	[di],ch
	pop	di
	xor	[bx+si],ax
	dec	si
	inc	bp
	push	sp
	dec	si
	inc	cx
	dec	bp
	inc	bp
	sub	[bx+di],ch
	add	[4F4Eh],ch
	push	sp
	and	cs:[bx+31h],bl
	add	[bx+di+4Eh],cl
	inc	sp
	inc	bp
	pop	ax
	and	[bx+4Eh],cl
	add	[bx+di+4Eh],cl
	inc	sp
	inc	bp
	pop	ax
	dec	bx
	inc	bp
	pop	cx
	sub	[bx+di],ch
	add	[bp+di+45h],dl
	push	sp
	and	[bx+di+4Eh],cl
	inc	sp
	inc	bp
	pop	ax
	add	[bp+di+45h],dl
	push	sp
	and	[bx+52h],cl
	inc	sp
	inc	bp
	push	dx
	add	[bx+31h],bl
	and	[524Fh],ch
	and	cs:[bx+32h],bl
	add	[bx+si+43h],dl
	dec	di
	dec	sp
	sub	[bx+di],ch
	add	[bx+si+43h],dl
	dec	di
	push	bp
	dec	si
	push	sp
	sub	[bx+di],ch
	add	[bx+31h],bl
	and	[bp+di],ch
	and	[bx+32h],bl
	add	[bx+si+20h],al
	js	3D6Bh
	and	[bx+di+0h],bh
	aas
	add	[bx],bh
	add	[bx+si+52h],dl
	dec	cx
	push	si
	inc	cx
	push	sp
	inc	bp
	add	[bx+si+52h],dl
	dec	di
	inc	bx
	dec	sp
	dec	cx
	dec	si
	inc	bp
	sub	[bx+di],ch
	add	[bx+si+52h],dl
	dec	di
	inc	bx
	dec	si
	inc	cx
	dec	bp
	inc	bp
	sub	[bx+di],ch
	add	[bx+si+52h],dl
	dec	di
	push	di
	sub	[bx+di],ch
	add	[bx+si+55h],dl
	inc	dx
	dec	sp
	dec	cx
	inc	bx
	add	[bp+si+45h],dl
	inc	cx
	inc	sp
	push	si
	inc	cx
	push	dx
	sub	[bx+di],ch
	add	[bp+si+45h],dl
	inc	bx
	dec	si
	dec	di
	sub	[bx+di],ch
	add	[bp+si+45h],dl
	dec	sp
	inc	bp
	inc	cx
	push	bx
	inc	bp
	add	[bp+si+45h],dl
	push	ax
	dec	sp
	dec	cx
	inc	bx
	inc	cx
	push	sp
	inc	bp
	sub	[bx+31h],bl
	sub	al,20h
	pop	di
	xor	ch,[bx+di]
	add	[bp+si+4Fh],dl
	push	bp
	dec	si
	inc	sp
	sub	[bx+31h],bl
	sub	al,20h
	pop	di
	xor	ch,[bx+di]
	add	[bp+si+4Fh],dl
	push	di
	sub	[bx+di],ch
	add	[bp+si+45h],dl
	push	bx
	push	sp
	dec	di
	push	dx
	inc	bp
	and	[bp+di+43h],dl
	push	dx
	inc	bp
	inc	bp
	dec	si
	add	[bp+di+41h],dl
	push	si
	inc	bp
	and	[bp+di+43h],dl
	push	dx
	inc	bp
	inc	bp
	inc	bp
	dec	si
	add	[bp+di+45h],dl
	inc	bx
	dec	di
	dec	si
	inc	sp
	push	bx
	sub	[bx+di],ch
	add	[bp+di+45h],dl
	inc	bp
	dec	bx
	add	[bp+di+45h],dl
	dec	sp
	inc	bp
	inc	bx
	push	sp
	add	[bp+di+45h],dl
	push	sp
	add	[bp+di+45h],dl
	push	sp
	add	[bp+di+45h],dl
	push	sp
	add	[bp+di+45h],dl
	push	sp
	add	[bp+di+45h],dl
	push	sp
	add	[bp+di+45h],dl
	push	sp
	add	[bp+di+45h],dl
	push	sp
	add	[bp+di+45h],dl
	push	sp
	add	[bp+di+45h],dl
	push	sp
	add	[bp+di+45h],dl
	push	sp
	add	[bp+di+45h],dl
	push	sp
	add	[bp+di+45h],dl
	push	sp
	add	[bp+di+45h],dl
	push	sp
	add	[bp+di+45h],dl
	push	sp
	add	[bp+di+45h],dl
	push	sp
	add	[bp+di+45h],dl
	push	sp
	add	[bp+di+4Bh],dl
	dec	cx
	push	ax
	add	[bp+di+50h],dl
	inc	cx
	inc	bx
	inc	bp
	sub	[bx+31h],bl
	sub	[bx+si],ax
	push	bx
	push	cx
	push	dx
	push	sp
	sub	[bx+31h],bl
	sub	[bx+si],ax
	push	bx
	push	sp
	push	dx
	sub	[bx+31h],bl
	sub	[bx+si],ax
	push	bx
	push	sp
	push	dx
	sub	[bx+31h],bl
	sub	al,20h
	pop	di
	xor	ch,[bx+di]
	add	[bp+di+54h],dl
	push	dx
	sub	[bx+31h],bl
	sub	al,20h
	pop	di
	xor	ch,[si]
	and	[bx+33h],bl
	sub	[bx+si],ax
	push	bx
	push	bp
	inc	dx
	push	bx
	push	sp
	push	dx
	sub	[bx+31h],bl
	sub	al,20h
	pop	di
	xor	ch,[bx+di]
	add	[bp+di+55h],dl
	inc	dx
	push	bx
	push	sp
	push	dx
	sub	[bx+31h],bl
	sub	al,5Fh
	xor	ch,[si]
	pop	di
	xor	bp,[bx+di]
	add	[si+49h],dl
	dec	bp
	inc	bp
	sub	[bx+di],ch
	add	[si+52h],dl
	inc	cx
	dec	si
	push	bx
	sub	[bx+31h],bl
	sub	al,20h
	pop	di
	xor	ch,[bx+di]
	add	[si+52h],dl
	dec	cx
	dec	bp
	sub	[bx+31h],bl
	sub	[bx+si],ax
	push	sp
	pop	cx
	push	ax
	inc	bp
	sub	[bx+31h],bl
	sub	[bx+si],ax
	push	bp
	push	ax
	inc	sp
	inc	cx
	push	sp
	inc	bp
	inc	sp
	sub	[bx+di],ch
	add	[di+50h],dl
	push	ax
	inc	bp
	push	dx
	sub	[bx+31h],bl
	sub	[bx+si],ax
	push	bp
	push	bx
	inc	bp
	inc	sp
	sub	[bx+di],ch
	add	[bp+41h],dl
	dec	sp
	sub	[bx+31h],bl
	sub	[bx+si],ax
	pop	di
	xor	[bx+si],ax
	pop	di
	xor	[bx+si],ax
	pop	di
	xor	[bx+si],ax
	pop	di
	xor	[bx+si],ax
	push	di
	dec	di
	push	dx
	inc	sp
	sub	[bx+31h],bl
	sub	[bx+si],ax
	pop	di
	xor	[bx+si],ax
	pop	di
	xor	[bx+si],ax
	push	dx
	inc	bp
	dec	sp
	inc	bp
	inc	cx
	push	bx
	inc	bp
	add	[bx+di+45h],bl
	inc	cx
	push	dx
	sub	[bx+31h],bl
	sub	[bx+si],ax
	add	[bx+si],al
	add	[bx+si],al
	mov	bh,1h
	add	[bx+si],al
	mov	cs,[di+0h]
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bp+si],al
	xor	ax,433Bh
	pop	di
	inc	si
	dec	cx
	dec	sp
	inc	bp
	pop	di
	dec	cx
	dec	si
	inc	si
	dec	di
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	adc	al,0h
	add	word ptr [bx+di+181h],1h
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	sahf
	xor	ax,4D8Eh
	inc	bx
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	and	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	bh,bh
	inc	word ptr [bx+si]
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[di],ch
	inc	bx
	sbb	al,0EBh
	loop	4056h
	sbb	bh,[bx]
	cld
	test	ax,0D2F1h
	dec	bp
	bound	dx,[bx+si+3Fh]
	jpo	4040h
	scasb
	inc	di
	loope	40AAh
	test	[bx],bh
	call	far 9999h:9999h
	cwd
	mov	cx,3Fh
	add	[bx+si],al
	add	[bx+si],al
	add	al,dh
	aas
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	and	al,40h
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	pop	cx
	inc	ax
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si-71h],al
	inc	ax
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si+40C3h],cl
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	loopne	40A9h
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	loopne	4031h
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	and	al,40h
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	illegal
	illegal
	illegal
	out	dx,ax
	jg	408Bh
	add	al,ch
l4D8E_368C	dw	0x1BE8
l4D8E_368E	dw	0x1EFD
l4D8E_3690	dw	0x1BE0
l4D8E_3692	dw	0x1EDA
l4D8E_3694	dw	0x1BDE
l4D8E_3696	dw	0x1ED8
l4D8E_3698	dw	0x1D4A
l4D8E_369A	dw	0x2105
l4D8E_369C	dw	0x1DD0
l4D8E_369E	dw	0x2168
l4D8E_36A0	dw	0x1DCE
l4D8E_36A2	dw	0x2166
l4D8E_36A4	dw	0x1761
4D8E:36A6                   B4 17 00 00 05 4D 36 31 78 78       .....M61xx
4D8E:36B0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
; ...
4D8E:3830 00 00 00 00 00 00 C6 36 00 00 00 00 00 00 00 00 .......6........
4D8E:3840 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
4D8E:3850 00 00 00 00 00 00 78 00 79 00 00 00 00 00 7A 00 ......x.y.....z.
4D8E:3860 00 00 02 3A 20 00 FF FE FC F8 F0 E0 C0 80 00 00 ...: ...........
4D8E:3870 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
; ...
4D8E:38A0 00 00 00 00 00 00 00 00 00 00 00 CD 3B 7F 66 9E ............;.f.
4D8E:38B0 A0 E6 3F EF 39 FA FE 42 2E E6 3F 0E E5 26 15 7B ..?.9..B..?..&.{
4D8E:38C0 CB DB 3F 00 00 00 00 00 30 E6 3F A8 0C 61 5C 10 ..?.....0.?..a\.
4D8E:38D0 D0 2B BF 02 00 29 BD 56 B3 15 44 E9 BF ED AF 16 .+...).V..D.....
4D8E:38E0 20 4A 62 30 40 9A B5 B3 12 FF 07 50 C0 03 80 0F  Jb0@......P....
4D8E:38F0 CE 67 4B 80 D5 41 C0 7E 26 15 FA 83 80 73 40 77 .gK..A.~&....s@w
4D8E:3900 90 0D 9C FE 0B 88 C0 00 00 00 00 00 00 00 00 00 ................
4D8E:3910 00 00 00 00 00 00 00 00 00 FE 82 2B 65 47 15 F7 ...........+eG..
4D8E:3920 3F 00 00 00 00 00 00 00 E0 3F 00 00 00 00 00 00 ?........?......
4D8E:3930 F0 3F 00 00 00 00 00 00 00 40 00 00 00 00 00 00 .?.......@......
4D8E:3940 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
; ...
4D8E:3970 00 00 00 00 FE 82 2B 65 47 15 F7 3F CD 3B 7F 66 ......+eG..?.;.f
4D8E:3980 9E A0 E6 3F EE 39 FA FE 42 2E 86 40 D1 BC 7A DD ...?.9..B..@..z.
4D8E:3990 2B 23 86 C0 00 00 00 00 00 30 E6 3F A8 0C 61 5C +#.......0.?..a\
4D8E:39A0 10 D0 2B BF 02 00 1C DC 58 6F A4 52 F1 3E E0 F6 ..+.....Xo.R.>..
4D8E:39B0 B3 6F E4 70 7C 3F 00 00 00 00 00 00 D0 3F 02 00 .o.p|?.......?..
4D8E:39C0 09 38 DE 6F 99 3F 40 3F B3 51 42 71 8E 71 AC 3F .8.o.?@?.QBq.q.?
4D8E:39D0 00 00 00 00 00 00 E0 3F 00 00 00 00 00 00 00 00 .......?........
4D8E:39E0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
; ...
4D8E:3A40 00 00 00 00 00 00 00 00 F0 3F 00 00 00 00 00 00 .........?......
4D8E:3A50 00 00 00 00 00 00 00 00 00 00 03 70 6F 77 00 03 ...........pow..
4D8E:3A60 6C 6F 67 00 05 6C 6F 67 31 30 00 03 65 78 70 00 log..log10..exp.
4D8E:3A70 04 73 71 72 74 00 52 48 53 56 44 41 00 00 48 60 .sqrt.RHSVDA..H`
4D8E:3A80 8E 4D 4C 60 8E 4D 00 00 00 00 00 00 00 00 07 00 .ML`.M..........
4D8E:3A90 20 41 45 48 49 4F 55 57 59 00 D4 60 8E 4D DA 60  AEHIOUWY..`.M.`
4D8E:3AA0 8E 4D E4 60 8E 4D E8 60 8E 4D EA 60 8E 4D EE 60 .M.`.M.`.M.`.M.`
4D8E:3AB0 8E 4D 00 00 00 00 00 00 00 00 00 00 00 00 00 00 .M..............
4D8E:3AC0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
; ...
4D8E:3AF0 00 00 00 00 00 00 00 00 00 00 6A 3A 93 4D 00 00 ..........j:.M..
4D8E:3B00 00 13 02 02 04 05 06 08 08 08 14 15 05 13 FF 16 ................
4D8E:3B10 05 16 02 FF FF FF FF FF FF FF FF FF FF FF FF FF ................
4D8E:3B20 05 05 FF FF FF FF FF FF FF FF FF FF FF FF FF FF ................
4D8E:3B30 FF FF 0F FF FF 02 FF 0F FF FF FF FF 13 FF FF 02 ................
4D8E:3B40 02 05 0F 02 FF FF FF 13 FF FF FF FF FF FF FF FF ................
4D8E:3B50 FF FF FF FF FF FF FF 13 FF 00 00 00 00 00 00 00 ................
4D8E:3B60 00 00 00 00 7A 17 9D 24 0A 09 31 34 A6 0F 68 23 ....z..$..14..h#
4D8E:3B70 32 33 44 26 46 09 9D 24 8C 2F 44 26 08 12 68 23 23D&F..$./D&..h#
4D8E:3B80 22 09 68 23 B8 11 9D 24 C6 0F 9D 24 EC 10 B2 20 ".h#...$...$... 
4D8E:3B90 7A 31 44 26 50 3A 31 34 6E 11 B2 20 84 0B DC 21 z1D&P:14n.. ...!
4D8E:3BA0 2C 14 9D 24 B8 00 DC 21 8A 09 9D 24 08 3A 44 26 ,..$...!...$.:D&
4D8E:3BB0 D6 13 9D 24 6A 46 31 34 C8 14 9D 24 BA 01 DC 21 ...$jF14...$...!
4D8E:3BC0 F2 49 44 26 32 0D 31 34 24 0D 31 34 04 23 31 34 .ID&2.14$.14.#14
4D8E:3BD0 18 0D 31 34 B2 12 9D 24 C6 12 9D 24 B4 49 44 26 ..14...$...$.ID&
4D8E:3BE0 6C 36 44 26 2A 49 44 26 B6 47 44 26 1C 36 44 26 l6D&*ID&.GD&.6D&
4D8E:3BF0 3C 34 44 26 B8 3E 44 26 00 4F 44 26 60 10 68 23 <4D&.>D&.OD&`.h#
4D8E:3C00 1A 32 44 26 C4 31 44 26 CE 39 44 26 F4 00 9D 24 .2D&.1D&.9D&...$
4D8E:3C10 22 03 DC 21 6E 16 DC 21 92 13 9D 24 82 14 9D 24 "..!n..!...$...$
4D8E:3C20 C6 16 9D 24 4A 05 9D 24 7A 05 31 34 F8 16 9D 24 ...$J..$z.14...$
4D8E:3C30 00 00 00 00 56 11 B2 20 AC 3B 31 34 54 31 44 26 ....V.. .;14T1D&
4D8E:3C40 FE 05 9D 24 90 0D DC 21 2A 15 9D 24 64 12 9D 24 ...$...!*..$d..$
4D8E:3C50 6C 41 44 26 D8 41 44 26 1C 04 68 23 C2 42 44 26 lAD&.AD&..h#.BD&
4D8E:3C60 64 38 44 26 94 17 DC 21 14 44 44 26 A0 31 44 26 d8D&...!.DD&.1D&
4D8E:3C70 06 41 44 26 20 41 44 26 68 03 DC 21 AC 08 9D 24 .AD& AD&h..!...$
4D8E:3C80 76 20 31 34 A6 20 31 34 E8 22 31 34 3E 22 31 34 v 14. 14."14>"14
4D8E:3C90 A4 2B 44 26 F0 2C 44 26 1A 2C 44 26 26 08 9D 24 .+D&.,D&.,D&&..$
4D8E:3CA0 00 00 00 00 28 09 31 34 8E 09 31 34 16 09 31 34 ....(.14..14..14
4D8E:3CB0 C8 10 9D 24 AA 09 9D 24 BC 46 31 34 36 31 44 26 ...$...$.F1461D&
4D8E:3CC0 00 00 00 00 00 00 00 00 00 00 00 00 8A 0C 31 34 ..............14
4D8E:3CD0 00 00 00 00 16 0B 31 34 F4 38 44 26 00 00 00 00 ......14.8D&....
4D8E:3CE0 00 00 00 00 00 00 00 00 A0 07 9D 24 10 0F 9D 24 ...........$...$
4D8E:3CF0 16 18 DC 21 58 39 44 26 F4 42 44 26 EC 14 9D 24 ...!X9D&.BD&...$
4D8E:3D00 74 0E 9D 24 1A 07 9D 24 6C 16 9D 24 3E 19 9D 24 t..$...$l..$>..$
4D8E:3D10 C0 17 DC 21 2C 41 31 34 14 18 9D 24 0A 03 9D 24 ...!,A14...$...$
4D8E:3D20 78 01 9D 24 0A 13 9D 24 96 00 9D 24 7E 08 D6 38 x..$...$...$~..8
4D8E:3D30 4C 0A D6 38 96 06 9D 24 04 00 9D 24 96 45 44 26 L..8...$...$.ED&
4D8E:3D40 DE 2D 44 26 32 09 9D 24 64 00 B3 2E D0 03 B3 2E .-D&2..$d.......
4D8E:3D50 9A 09 B3 2E 64 01 B3 2E 96 40 44 26 C0 03 68 23 ....d....@D&..h#
4D8E:3D60 F4 03 68 23 68 09 9D 24 E0 3C 44 26 D4 0D 68 23 ..h#h..$.<D&..h#
4D8E:3D70 88 46 31 34 FC 17 DC 21 FC 01 9D 24 78 0A 68 23 .F14...!...$x.h#
4D8E:3D80 FA 0B 68 23 7A 0A 68 23 3C 0B 68 23 40 0D 31 34 ..h#z.h#<.h#@.14
4D8E:3D90 8A 05 31 34 80 05 31 34 B6 06 31 34 7E 0C 68 23 ..14..14..14~.h#
4D8E:3DA0 00 00 00 00 62 07 DC 21 7C 07 DC 21 D8 3E 31 34 ....b..!|..!.>14
4D8E:3DB0 A2 46 31 34 20 0D 68 23 02 08 68 23 00 00 00 00 .F14 .h#..h#....
4D8E:3DC0 00 00 00 00 00 00 00 00 C4 06 68 23 00 00 00 00 ..........h#....
4D8E:3DD0 2E 0A 68 23 38 08 68 23 BC 09 68 23 00 00 00 00 ..h#8.h#..h#....
4D8E:3DE0 12 10 68 23 BA 04 DC 21 2C 37 31 34 7E 3B 31 34 ..h#...!,714~;14
4D8E:3DF0 A6 32 44 26 E8 31 44 26 A6 0F 1A 2D 0C 05 B3 2E .2D&.1D&...-....
4D8E:3E00 C8 09 DC 21 00 00 00 00 A6 15 9D 24 00 00 00 00 ...!.......$....
4D8E:3E10 00 00 00 00 DA 26 44 26 D8 11 9D 24 4A 46 31 34 .....&D&...$JF14
4D8E:3E20 EE 03 DC 21 94 19 31 34 90 42 44 26 68 42 44 26 ...!..14.BD&hBD&
4D8E:3E30 24 3E 31 34 CC 3D 31 34 C0 0B 31 34 98 26 44 26 $>14.=14..14.&D&
4D8E:3E40 CA 2E 44 26 0E 00 81 2C 6E 07 81 2C 02 00 81 2C ..D&...,n..,...,
4D8E:3E50 F4 03 81 2C 3C 03 81 2C 06 04 81 2C DA 03 81 2C ...,<..,...,...,
4D8E:3E60 CC 3B 44 26 82 07 81 2C 6E 00 81 2C F2 07 81 2C .;D&...,n..,...,
4D8E:3E70 FA 37 44 26 9C 07 81 2C 2A 03 81 2C 16 03 81 2C .7D&...,*..,...,
4D8E:3E80 BC 07 81 2C A6 00 DC 21 2C 09 81 2C 88 3A 44 26 ...,...!,..,.:D&
4D8E:3E90 D4 27 44 26 00 00 00 00 00 00 00 00 00 00 00 00 .'D&............
4D8E:3EA0 12 0A 9D 24 78 07 68 23 68 15 9D 24 26 0D 9D 24 ...$x.h#h..$&..$
4D8E:3EB0 9A 0C 9D 24 E4 0B 9D 24 4C 0B 9D 24 6A 0A 9D 24 ...$...$L..$j..$
4D8E:3EC0 5A 0C 68 23 2A 0F 9D 24 2E 0B 31 34 54 3E 31 34 Z.h#*..$..14T>14
4D8E:3ED0 C4 0D 9D 24 0E 04 68 23 54 22 FF 31 44 45 44 26 ...$..h#T".1DED&
4D8E:3EE0 3C 46 31 34 20 0E 9D 24 B6 4F 44 26 C8 0E 9D 24 <F14 ..$.OD&...$
4D8E:3EF0 AA 08 31 34 44 1D FF 31 72 1D FF 31 BA 1D FF 31 ..14D..1r..1...1
4D8E:3F00 96 1D FF 31 68 1A 9D 24 D2 1D FF 31 80 1E FF 31 ...1h..$...1...1
4D8E:3F10 60 0A DC 21 4E 13 9D 24 EC 3D 44 26 DE 03 68 23 `..!N..$.=D&..h#
4D8E:3F20 00 00 B1 15 EE 3C 00 00 00 00 76 15 EE 3C 20 54 .....<....v..< T
4D8E:3F30 6F 67 67 6C 65 20 00 00 20 4C 69 6E 65 20 00 00 oggle .. Line ..
4D8E:3F40 20 45 78 70 72 65 73 73 69 6F 6E 20 00 00 20 44  Expression .. D
4D8E:3F50 65 6C 65 74 65 20 00 00 20 54 6F 67 67 6C 65 20 elete .. Toggle 
4D8E:3F60 00 00 20 41 64 64 20 00 20 44 65 6C 65 74 65 20 .. Add . Delete 
4D8E:3F70 00 00 20 47 6F 20 20 20 20 20 20 20 20 20 20 20 .. Go           
4D8E:3F80 20 20 00 00 20 47 6F 20 28 61 6E 69 6D 61 74 69   .. Go (animati
4D8E:3F90 6F 6E 29 20 00 00 20 47 6F 20 28 6B 65 79 29 20 on) .. Go (key) 
4D8E:3FA0 20 20 20 20 20 20 00 00 20 53 69 6E 67 6C 65 20       .. Single 
4D8E:3FB0 53 74 65 70 20 20 20 20 00 00 20 44 4F 53 20 53 Step    .. DOS S
4D8E:3FC0 68 65 6C 6C 20 20 20 20 20 20 00 00 20 42 72 65 hell      .. Bre
4D8E:3FD0 61 6B 20 54 6F 67 67 6C 65 20 20 20 00 00 20 51 ak Toggle   .. Q
4D8E:3FE0 75 69 74 20 20 20 20 20 20 20 20 20 20 20 00 00 uit           ..
4D8E:3FF0 20 45 78 70 72 65 73 73 69 6F 6E 20 00 00 20 54  Expression .. T
4D8E:4000 72 61 63 65 20 20 20 20 20 20 00 00 20 53 74 61 race      .. Sta
4D8E:4010 74 75 73 20 20 20 20 20 00 00 20 44 61 74 61 62 tus     .. Datab
4D8E:4020 61 73 65 20 20 20 00 00 20 41 73 73 69 67 6E 20 ase   .. Assign 
4D8E:4030 50 72 69 76 61 74 65 20 00 00 20 41 73 73 69 67 Private .. Assig
4D8E:4040 6E 20 50 75 62 6C 69 63 20 20 00 00 20 56 69 65 n Public  .. Vie
4D8E:4050 77 20 50 72 69 76 61 74 65 73 20 20 00 00 20 56 w Privates  .. V
4D8E:4060 69 65 77 20 50 75 62 6C 69 63 73 20 20 20 00 00 iew Publics   ..
4D8E:4070 20 43 6F 6E 74 72 6F 6C 20 20 20 20 20 00 20 44  Control     . D
4D8E:4080 69 73 70 6C 61 79 20 20 20 20 20 00 20 56 61 72 isplay     . Var
4D8E:4090 69 61 62 6C 65 20 20 20 20 00 20 48 65 6C 70 20 iable    . Help 
4D8E:40A0 20 20 20 20 20 20 20 00 20 42 72 65 61 6B 20 20        . Break  
4D8E:40B0 20 20 20 20 20 00 20 57 61 74 63 68 20 20 20 20      . Watch    
4D8E:40C0 20 20 20 00 20 53 70 65 65 64 20 4B 65 79 73 20    . Speed Keys 
4D8E:40D0 20 00 20 41 62 6F 75 74 20 20 20 20 20 20 20 00  . About       .
4D8E:40E0 20 54 6F 67 67 6C 65 20 20 20 20 00 20 53 65 74  Toggle    . Set
4D8E:40F0 20 20 20 20 20 20 20 00 20 4D 6F 76 65 20 20 20        . Move   
4D8E:4100 20 20 20 00 20 43 6F 6E 74 72 6F 6C 20 00 20 44    . Control . D
4D8E:4110 69 73 70 6C 61 79 20 00 20 56 61 72 69 61 62 6C isplay . Variabl
4D8E:4120 65 20 00 00 20 48 65 6C 70 20 00 00 20 42 72 65 e .. Help .. Bre
4D8E:4130 61 6B 20 00 20 57 61 74 63 68 20 00 00 00 20 20 ak . Watch ...  
4D8E:4140 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20                 
4D8E:4150 20 20 20 20 20 20 20 20 20 20 20 44 65 62 75 67            Debug
4D8E:4160 20 48 65 6C 70 00 00 00 20 20 20 20 54 68 65 20  Help...    The 
4D8E:4170 43 6C 69 70 70 65 72 20 44 65 62 75 67 67 65 72 Clipper Debugger
4D8E:4180 20 70 72 6F 76 69 64 65 73 20 63 6F 6E 74 65 78  provides contex
4D8E:4190 74 20 73 65 6E 73 69 74 69 76 65 20 68 65 6C 70 t sensitive help
4D8E:41A0 20 66 6F 72 20 74 68 65 00 00 66 75 6E 63 74 69  for the..functi
4D8E:41B0 6F 6E 73 20 70 72 6F 76 69 64 65 64 2E 20 20 54 ons provided.  T
4D8E:41C0 6F 20 67 65 74 20 68 65 6C 70 20 66 6F 72 20 61 o get help for a
4D8E:41D0 6E 20 6F 70 74 69 6F 6E 20 70 72 65 73 73 20 41 n option press A
4D8E:41E0 6C 74 2D 46 20 61 6E 64 20 00 74 68 65 20 44 65 lt-F and .the De
4D8E:41F0 62 75 67 67 65 72 20 77 69 6C 6C 20 73 75 73 70 bugger will susp
4D8E:4200 65 6E 64 20 74 68 65 20 6F 70 65 72 61 74 69 6F end the operatio
4D8E:4210 6E 20 61 6E 64 20 64 69 73 70 6C 61 79 20 74 68 n and display th
4D8E:4220 65 20 68 65 6C 70 20 73 63 72 65 65 6E 2E 00 00 e help screen...
4D8E:4230 54 68 69 73 20 66 65 61 74 75 72 65 20 77 69 6C This feature wil
4D8E:4240 6C 20 6E 6F 74 20 77 6F 72 6B 20 69 6E 20 64 61 l not work in da
4D8E:4250 74 61 20 65 6E 74 72 79 20 77 69 6E 64 6F 77 73 ta entry windows
4D8E:4260 2E 00 00 00 00 00 20 20 20 20 20 20 20 20 20 20 ......          
4D8E:4270 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20                 
4D8E:4280 20 20 53 70 65 65 64 20 6B 65 79 73 20 00 00 00   Speed keys ...
4D8E:4290 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20                 
4D8E:42A0 20 20 20 20 41 4C 54 2D 5A 20 20 20 20 2D 20 20     ALT-Z    -  
4D8E:42B0 20 20 43 6F 6E 74 72 6F 6C 20 6D 65 6E 75 20 00   Control menu .
4D8E:42C0 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20                 
4D8E:42D0 20 20 20 20 41 4C 54 2D 58 20 20 20 20 2D 20 20     ALT-X    -  
4D8E:42E0 20 20 44 69 73 70 6C 61 79 20 6D 65 6E 75 2E 00   Display menu..
4D8E:42F0 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20                 
4D8E:4300 20 20 20 20 41 4C 54 2D 56 20 20 20 20 2D 20 20     ALT-V    -  
4D8E:4310 20 20 56 61 72 69 61 62 6C 65 20 6D 65 6E 75 2E   Variable menu.
4D8E:4320 00 00 00 00 20 20 20 20 20 20 20 20 20 20 20 20 ....            
4D8E:4330 20 20 20 20 20 20 20 20 41 4C 54 2D 57 20 20 20         ALT-W   
4D8E:4340 20 2D 20 20 20 20 57 61 74 63 68 20 6D 65 6E 75  -    Watch menu
4D8E:4350 2E 00 20 20 20 20 20 20 20 20 20 20 20 20 20 20 ..              
4D8E:4360 20 20 20 20 20 20 41 4C 54 2D 50 20 20 20 20 2D       ALT-P    -
4D8E:4370 20 20 20 20 53 65 74 20 61 20 57 61 74 63 68 20     Set a Watch 
4D8E:4380 70 6F 69 6E 74 20 61 6E 64 20 72 65 74 75 72 6E point and return
4D8E:4390 2E 00 00 00 20 20 20 20 20 20 20 20 20 20 20 20 ....            
4D8E:43A0 20 20 20 20 20 20 20 20 41 4C 54 2D 48 20 20 20         ALT-H   
4D8E:43B0 20 2D 20 20 20 20 48 65 6C 70 20 6D 65 6E 75 2E  -    Help menu.
4D8E:43C0 00 00 20 20 20 20 20 20 20 20 20 20 20 20 20 20 ..              
4D8E:43D0 20 20 20 20 20 20 41 4C 54 2D 46 20 20 20 20 2D       ALT-F    -
4D8E:43E0 20 20 20 20 45 78 65 63 75 74 65 20 73 70 65 63     Execute spec
4D8E:43F0 69 66 69 63 20 48 65 6C 70 20 61 6E 64 20 72 65 ific Help and re
4D8E:4400 74 75 72 6E 2E 00 00 00 20 20 20 20 20 20 20 20 turn....        
4D8E:4410 20 20 20 20 20 20 20 20 20 20 20 20 41 4C 54 2D             ALT-
4D8E:4420 42 20 20 20 20 2D 20 20 20 20 53 65 74 20 42 72 B    -    Set Br
4D8E:4430 65 61 6B 20 70 6F 69 6E 74 20 61 6E 64 20 72 65 eak point and re
4D8E:4440 74 75 72 6E 2E 00 00 00 20 20 20 20 20 20 20 20 turn....        
4D8E:4450 20 20 20 20 20 20 20 20 20 20 20 20 41 4C 54 2D             ALT-
4D8E:4460 53 20 20 20 20 2D 20 20 20 20 53 69 6E 67 6C 65 S    -    Single
4D8E:4470 20 73 74 65 70 20 61 6E 64 20 72 65 74 75 72 6E  step and return
4D8E:4480 2E 00 00 00 20 20 20 20 20 20 20 20 20 20 20 20 ....            
4D8E:4490 20 20 20 20 20 20 20 20 41 4C 54 2D 47 20 20 20         ALT-G   
4D8E:44A0 20 2D 20 20 20 20 52 75 6E 20 70 72 6F 67 72 61  -    Run progra
4D8E:44B0 6D 2E 00 00 20 20 20 20 20 20 20 20 20 20 20 20 m...            
4D8E:44C0 20 20 20 20 20 20 20 20 41 4C 54 2D 41 20 20 20         ALT-A   
4D8E:44D0 20 2D 20 20 20 20 52 75 6E 20 70 72 6F 67 72 61  -    Run progra
4D8E:44E0 6D 20 77 2F 61 6E 69 6D 61 74 69 6F 6E 2E 00 00 m w/animation...
4D8E:44F0 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20                 
4D8E:4500 20 20 20 20 41 4C 54 2D 4B 20 20 20 20 2D 20 20     ALT-K    -  
4D8E:4510 20 20 52 75 6E 20 70 72 6F 67 72 61 6D 20 77 2F   Run program w/
4D8E:4520 6B 65 79 73 74 72 6F 6B 65 2E 00 00 00 00 20 20 keystroke.....  
4D8E:4530 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20                 
4D8E:4540 20 20 41 4C 54 2D 51 20 20 20 20 2D 20 20 20 20   ALT-Q    -    
4D8E:4550 51 75 69 74 2E 00 00 00 00 00 20 20 20 20 20 20 Quit......      
4D8E:4560 20 20 20 20 20 20 20 20 20 57 65 6C 63 6F 6D 65          Welcome
4D8E:4570 20 74 6F 20 74 68 65 20 6E 65 77 20 43 4C 49 50  to the new CLIP
4D8E:4580 50 45 52 20 44 65 62 75 67 20 66 61 63 69 6C 69 PER Debug facili
4D8E:4590 74 79 2E 00 00 00 20 20 20 49 20 62 65 6C 69 65 ty....   I belie
4D8E:45A0 76 65 20 74 68 61 74 20 79 6F 75 20 77 69 6C 6C ve that you will
4D8E:45B0 20 66 69 6E 64 20 74 68 69 73 20 76 65 72 73 69  find this versi
4D8E:45C0 6F 6E 20 61 20 62 69 67 20 69 6D 70 72 6F 76 6D on a big improvm
4D8E:45D0 65 6E 74 20 6F 76 65 72 20 74 68 65 20 6F 6C 64 ent over the old
4D8E:45E0 00 00 64 65 62 75 67 67 65 72 2E 20 20 4C 6F 61 ..debugger.  Loa
4D8E:45F0 64 73 20 6F 66 20 74 69 6D 65 2C 20 65 6E 65 72 ds of time, ener
4D8E:4600 67 79 20 61 6E 64 20 73 70 61 63 65 20 28 69 74 gy and space (it
4D8E:4610 20 61 69 6E 27 74 20 73 6D 61 6C 6C 20 66 6F 6C  ain't small fol
4D8E:4620 6B 73 29 20 68 61 76 65 00 00 62 65 65 6E 20 73 ks) have..been s
4D8E:4630 70 65 6E 74 20 6F 6E 20 70 72 6F 76 69 64 69 6E pent on providin
4D8E:4640 67 20 61 20 62 65 74 74 65 72 20 69 6E 74 65 72 g a better inter
4D8E:4650 66 61 63 65 20 61 6E 64 20 6D 6F 72 65 20 75 73 face and more us
4D8E:4660 65 66 75 6C 20 69 6E 66 6F 20 66 6F 72 20 79 6F eful info for yo
4D8E:4670 75 72 00 00 64 65 62 75 67 67 69 6E 67 20 6E 65 ur..debugging ne
4D8E:4680 65 64 73 2E 00 00 00 00 00 00 20 20 20 41 4C 54 eds.......   ALT
4D8E:4690 2D 64 20 73 74 6F 70 73 20 70 72 6F 67 72 61 6D -d stops program
4D8E:46A0 20 65 78 65 63 75 74 69 6F 6E 20 61 6E 64 20 64  execution and d
4D8E:46B0 69 73 70 6C 61 79 73 20 74 68 65 20 44 65 62 75 isplays the Debu
4D8E:46C0 67 20 6D 65 6E 75 2E 00 00 00 00 00 48 61 70 70 g menu......Happ
4D8E:46D0 79 20 62 75 67 20 68 75 6E 74 69 6E 67 21 00 00 y bug hunting!..
4D8E:46E0 00 00 4B 65 76 69 6E 20 4A 2E 20 53 68 65 70 68 ..Kevin J. Sheph
4D8E:46F0 65 72 64 00 42 72 65 61 6B 70 6F 69 6E 74 73 00 erd.Breakpoints.
4D8E:4700 00 00 20 20 20 54 68 65 20 42 72 65 61 6B 70 6F ..   The Breakpo
4D8E:4710 69 6E 74 20 6F 70 74 69 6F 6E 20 70 72 6F 76 69 int option provi
4D8E:4720 64 65 73 20 74 68 65 20 66 61 63 69 6C 69 74 79 des the facility
4D8E:4730 20 74 6F 20 73 65 74 20 75 70 20 74 6F 20 31 36  to set up to 16
4D8E:4740 20 73 65 70 61 72 61 74 65 00 62 72 65 61 6B 70  separate.breakp
4D8E:4750 6F 69 6E 74 73 20 66 6F 72 20 79 6F 75 72 20 70 oints for your p
4D8E:4760 72 6F 67 72 61 6D 2E 20 20 59 6F 75 20 63 61 6E rogram.  You can
4D8E:4770 20 63 6F 6D 62 69 6E 65 20 6C 6F 67 69 63 61 6C  combine logical
4D8E:4780 20 65 78 70 72 65 73 73 69 6F 6E 20 61 6E 64 00  expression and.
4D8E:4790 50 72 6F 63 65 64 75 72 65 20 6C 69 6E 65 20 62 Procedure line b
4D8E:47A0 72 65 61 6B 73 2E 00 00 00 00 20 20 20 42 72 65 reaks.....   Bre
4D8E:47B0 61 6B 70 6F 69 6E 74 20 65 76 61 6C 75 61 74 69 akpoint evaluati
4D8E:47C0 6F 6E 20 63 61 6E 20 62 65 20 54 6F 67 67 6C 65 on can be Toggle
4D8E:47D0 64 20 6F 6E 20 61 6E 64 20 6F 66 66 20 66 72 6F d on and off fro
4D8E:47E0 6D 20 74 68 65 20 43 6F 6E 74 72 6F 6C 20 70 75 m the Control pu
4D8E:47F0 6C 6C 2D 00 64 6F 77 6E 20 6D 65 6E 75 2E 20 20 ll-.down menu.  
4D8E:4800 42 72 65 61 6B 70 6F 69 6E 74 20 73 79 73 74 65 Breakpoint syste
4D8E:4810 6D 20 73 74 61 74 75 73 20 69 73 20 64 69 73 70 m status is disp
4D8E:4820 6C 61 79 65 64 20 69 6E 20 74 68 65 20 57 61 74 layed in the Wat
4D8E:4830 63 68 20 42 6F 78 2E 00 00 00 20 20 20 41 20 42 ch Box....   A B
4D8E:4840 72 65 61 6B 70 6F 69 6E 74 20 63 6F 6E 73 69 73 reakpoint consis
4D8E:4850 74 73 20 6F 66 20 61 20 50 72 6F 63 65 64 75 72 ts of a Procedur
4D8E:4860 65 20 6E 61 6D 65 20 61 6E 64 20 65 69 74 68 65 e name and eithe
4D8E:4870 72 20 61 20 6C 6F 67 69 63 61 6C 00 65 78 70 72 r a logical.expr
4D8E:4880 65 73 73 69 6F 6E 20 6F 72 20 61 20 6C 69 6E 65 ession or a line
4D8E:4890 20 6E 75 6D 62 65 72 2E 20 20 57 68 65 6E 20 65  number.  When e
4D8E:48A0 6E 74 65 72 69 6E 67 20 61 20 42 72 65 61 6B 70 ntering a Breakp
4D8E:48B0 6F 69 6E 74 20 66 6F 72 20 74 68 65 20 63 75 72 oint for the cur
4D8E:48C0 72 65 6E 74 00 00 70 72 6F 63 65 64 75 72 65 2C rent..procedure,
4D8E:48D0 20 70 72 65 73 73 69 6E 67 20 52 45 54 55 52 4E  pressing RETURN
4D8E:48E0 20 61 74 20 74 68 65 20 27 50 52 4F 43 27 20 70  at the 'PROC' p
4D8E:48F0 72 6F 6D 70 74 20 66 69 6C 6C 73 20 69 6E 20 74 rompt fills in t
4D8E:4900 68 65 20 70 72 6F 63 65 64 75 72 65 00 00 6E 61 he procedure..na
4D8E:4910 6D 65 2E 00 00 00 20 20 20 54 6F 67 67 6C 65 00 me....   Toggle.
4D8E:4920 20 20 20 20 20 20 20 54 75 72 6E 73 20 6F 6E 20        Turns on 
4D8E:4930 61 6E 64 20 6F 66 66 20 73 69 6E 67 6C 65 20 42 and off single B
4D8E:4940 72 65 61 6B 70 6F 69 6E 74 73 2E 00 00 00 20 20 reakpoints....  
4D8E:4950 20 45 78 70 72 65 73 73 69 6F 6E 00 20 20 20 20  Expression.    
4D8E:4960 20 20 20 45 6E 74 65 72 20 61 20 6C 6F 67 69 63    Enter a logic
4D8E:4970 61 6C 20 42 72 65 61 6B 70 6F 69 6E 74 20 65 78 al Breakpoint ex
4D8E:4980 70 72 65 73 73 69 6F 6E 2E 20 20 28 69 2E 65 2E pression.  (i.e.
4D8E:4990 20 45 4D 50 54 59 28 6E 61 6D 65 29 29 00 00 00  EMPTY(name))...
4D8E:49A0 20 20 20 4C 69 6E 65 00 20 20 20 20 20 20 20 45    Line.       E
4D8E:49B0 6E 74 65 72 20 61 20 6C 69 6E 65 20 42 72 65 61 nter a line Brea
4D8E:49C0 6B 70 6F 69 6E 74 20 66 6F 72 20 61 20 70 72 6F kpoint for a pro
4D8E:49D0 63 65 64 75 72 65 2E 20 20 49 66 20 74 68 65 20 cedure.  If the 
4D8E:49E0 6C 69 6E 65 20 6E 75 6D 62 65 72 20 66 6F 72 00 line number for.
4D8E:49F0 20 20 20 61 20 70 72 6F 63 65 64 75 72 65 20 69    a procedure i
4D8E:4A00 73 20 75 6E 6B 6E 6F 77 6E 2C 20 65 6E 74 65 72 s unknown, enter
4D8E:4A10 69 6E 67 20 30 20 61 74 20 74 68 65 20 27 4C 49 ing 0 at the 'LI
4D8E:4A20 4E 45 27 20 70 72 6F 6D 70 74 20 77 69 6C 6C 20 NE' prompt will 
4D8E:4A30 63 61 75 73 65 20 74 68 65 00 20 20 20 64 65 62 cause the.   deb
4D8E:4A40 75 67 67 65 72 20 74 6F 20 73 74 6F 70 20 6F 6E ugger to stop on
4D8E:4A50 20 65 61 63 68 20 6C 69 6E 65 20 6F 66 20 65 6E  each line of en
4D8E:4A60 74 65 72 65 64 20 70 72 6F 63 65 64 75 72 65 2E tered procedure.
4D8E:4A70 00 00 00 00 20 20 20 44 65 6C 65 74 65 00 20 20 ....   Delete.  
4D8E:4A80 20 20 20 20 20 44 65 6C 65 74 65 20 61 20 42 72      Delete a Br
4D8E:4A90 65 61 6B 70 6F 69 6E 74 2E 00 43 6F 6E 74 72 6F eakpoint..Contro
4D8E:4AA0 6C 00 00 00 20 20 20 47 6F 00 20 20 20 20 20 20 l...   Go.      
4D8E:4AB0 20 43 6F 6E 74 69 6E 75 65 73 20 65 78 65 63 75  Continues execu
4D8E:4AC0 74 69 6F 6E 20 6F 66 20 74 68 65 20 70 72 6F 67 tion of the prog
4D8E:4AD0 72 61 6D 20 77 69 74 68 6F 75 74 20 69 6E 74 65 ram without inte
4D8E:4AE0 72 76 65 6E 74 69 6F 6E 20 66 72 6F 6D 20 74 68 rvention from th
4D8E:4AF0 65 00 20 20 20 64 65 62 75 67 67 65 72 2E 00 00 e.   debugger...
4D8E:4B00 00 00 20 20 20 47 6F 20 28 61 6E 69 6D 61 74 69 ..   Go (animati
4D8E:4B10 6F 6E 29 00 20 20 20 20 20 20 20 43 6F 6E 74 69 on).       Conti
4D8E:4B20 6E 75 65 73 20 65 78 65 63 75 74 69 6F 6E 20 77 nues execution w
4D8E:4B30 69 74 68 20 74 68 65 20 64 69 73 70 6C 61 79 20 ith the display 
4D8E:4B40 6F 66 20 74 68 65 20 57 61 74 63 68 20 42 6F 78 of the Watch Box
4D8E:4B50 2E 00 00 00 20 20 20 47 6F 20 28 6B 65 79 29 00 ....   Go (key).
4D8E:4B60 20 20 20 20 20 20 20 43 6F 6E 74 69 6E 75 65 73        Continues
4D8E:4B70 20 65 78 65 63 75 74 69 6F 6E 20 61 66 74 65 72  execution after
4D8E:4B80 20 6B 65 79 20 68 61 73 20 62 65 65 6E 20 70 72  key has been pr
4D8E:4B90 65 73 73 65 64 2E 00 00 00 00 20 20 20 53 74 65 essed.....   Ste
4D8E:4BA0 70 00 20 20 20 20 20 20 20 53 69 6E 67 6C 65 20 p.       Single 
4D8E:4BB0 73 74 65 70 70 69 6E 67 20 61 6C 6C 6F 77 73 20 stepping allows 
4D8E:4BC0 79 6F 75 20 74 6F 20 6D 6F 76 65 20 74 68 72 6F you to move thro
4D8E:4BD0 75 67 68 20 79 6F 75 72 20 70 72 6F 67 72 61 6D ugh your program
4D8E:4BE0 20 61 20 6C 69 6E 65 00 20 20 20 61 74 20 61 20  a line.   at a 
4D8E:4BF0 74 69 6D 65 2E 20 20 54 68 69 73 20 77 61 79 20 time.  This way 
4D8E:4C00 79 6F 75 20 63 61 6E 20 69 6E 73 70 65 63 74 20 you can inspect 
4D8E:4C10 74 68 65 20 73 74 61 74 65 20 6F 66 20 79 6F 75 the state of you
4D8E:4C20 72 20 73 79 73 74 65 6D 20 61 66 74 65 72 00 00 r system after..
4D8E:4C30 20 20 20 65 61 63 68 20 6C 69 6E 65 20 74 72 61    each line tra
4D8E:4C40 6E 73 69 74 69 6F 6E 2E 00 00 00 00 20 20 20 44 nsition.....   D
4D8E:4C50 4F 53 20 53 68 65 6C 6C 00 00 20 20 20 20 20 20 OS Shell..      
4D8E:4C60 20 49 6E 76 6F 6B 65 73 20 74 68 65 20 44 4F 53  Invokes the DOS
4D8E:4C70 20 63 6F 6D 6D 61 6E 64 20 70 72 6F 63 65 73 73  command process
4D8E:4C80 6F 72 2E 20 20 54 79 70 65 20 27 45 58 49 54 27 or.  Type 'EXIT'
4D8E:4C90 20 61 74 20 74 68 65 20 44 4F 53 20 70 72 6F 6D  at the DOS prom
4D8E:4CA0 70 74 00 00 20 20 20 74 6F 20 72 65 74 75 72 6E pt..   to return
4D8E:4CB0 20 63 6F 6E 74 72 6F 6C 20 74 6F 20 74 68 65 20  control to the 
4D8E:4CC0 64 65 62 75 67 67 65 72 2E 00 00 00 20 20 20 42 debugger....   B
4D8E:4CD0 72 65 61 6B 20 54 6F 67 67 6C 65 00 20 20 20 20 reak Toggle.    
4D8E:4CE0 20 20 20 54 6F 67 67 6C 65 73 20 42 72 65 61 6B    Toggles Break
4D8E:4CF0 70 6F 69 6E 74 20 65 76 61 6C 75 61 74 69 6F 6E point evaluation
4D8E:4D00 20 6F 6E 20 61 6E 64 20 6F 66 66 2E 20 20 42 72  on and off.  Br
4D8E:4D10 65 61 6B 70 6F 69 6E 74 20 73 79 73 74 65 6D 00 eakpoint system.
4D8E:4D20 20 20 20 73 74 61 74 75 73 20 69 73 20 64 69 73    status is dis
4D8E:4D30 70 6C 61 79 65 64 20 69 6E 20 74 68 65 20 57 61 played in the Wa
4D8E:4D40 74 63 68 20 42 6F 78 2E 00 00 00 00 20 20 20 51 tch Box.....   Q
4D8E:4D50 75 69 74 00 20 20 20 20 20 20 20 45 78 69 74 20 uit.       Exit 
4D8E:4D60 74 68 65 20 70 72 6F 67 72 61 6D 2E 00 00 44 69 the program...Di
4D8E:4D70 73 70 6C 61 79 00 00 00 20 20 20 45 78 70 72 65 splay...   Expre
4D8E:4D80 73 73 69 6F 6E 00 20 20 20 20 20 20 20 45 78 70 ssion.       Exp
4D8E:4D90 72 65 73 73 69 6F 6E 73 20 63 61 6E 20 62 65 20 ressions can be 
4D8E:4DA0 65 76 61 6C 75 61 74 65 64 20 61 6E 64 20 64 69 evaluated and di
4D8E:4DB0 73 70 6C 61 79 65 64 20 77 69 74 68 20 74 68 69 splayed with thi
4D8E:4DC0 73 20 6F 70 74 69 6F 6E 2E 00 00 00 20 20 20 54 s option....   T
4D8E:4DD0 72 61 63 65 00 00 20 20 20 20 20 20 20 53 68 6F race..       Sho
4D8E:4DE0 77 73 20 61 20 62 61 63 6B 20 74 72 61 63 65 20 ws a back trace 
4D8E:4DF0 6F 66 20 74 68 65 20 70 72 6F 63 65 64 75 72 65 of the procedure
4D8E:4E00 73 20 65 78 65 63 75 74 65 64 2E 20 20 54 68 65 s executed.  The
4D8E:4E10 20 6D 6F 73 74 20 72 65 63 65 6E 74 00 00 20 20  most recent..  
4D8E:4E20 20 61 63 74 69 76 61 74 69 6F 6E 20 69 73 20 6C  activation is l
4D8E:4E30 69 73 74 65 64 20 66 69 72 73 74 2E 00 00 00 00 isted first.....
4D8E:4E40 20 20 20 53 74 61 74 75 73 00 20 20 20 20 20 20    Status.      
4D8E:4E50 20 53 68 6F 77 73 20 74 68 65 20 73 74 61 74 75  Shows the statu
4D8E:4E60 73 20 6F 66 20 6D 6F 73 74 20 6F 66 20 74 68 65 s of most of the
4D8E:4E70 20 53 45 54 20 63 6F 6D 6D 61 6E 64 73 2E 00 00  SET commands...
4D8E:4E80 00 00 20 20 20 44 61 74 61 62 61 73 65 00 20 20 ..   Database.  
4D8E:4E90 20 20 20 20 20 44 69 73 70 6C 61 79 73 20 61 20      Displays a 
4D8E:4EA0 6C 69 73 74 20 6F 66 20 74 68 65 20 61 63 74 69 list of the acti
4D8E:4EB0 76 65 20 64 61 74 61 20 66 69 6C 65 73 20 62 79 ve data files by
4D8E:4EC0 20 61 6C 69 61 73 20 61 6E 64 20 61 6C 6C 6F 77  alias and allow
4D8E:4ED0 73 20 74 68 65 00 20 20 20 70 72 6F 67 72 61 6D s the.   program
4D8E:4EE0 6D 65 72 20 74 6F 20 6D 6F 76 65 20 74 68 72 6F mer to move thro
4D8E:4EF0 75 67 68 20 74 68 65 20 6C 69 73 74 20 64 69 73 ugh the list dis
4D8E:4F00 70 6C 61 79 69 6E 67 20 6F 6E 65 20 6F 66 20 66 playing one of f
4D8E:4F10 6F 75 72 20 27 76 69 65 77 73 27 20 6F 66 00 00 our 'views' of..
4D8E:4F20 20 20 20 69 6E 66 6F 72 6D 61 74 69 6F 6E 20 61    information a
4D8E:4F30 62 6F 75 74 20 74 68 65 20 68 69 67 68 6C 69 67 bout the highlig
4D8E:4F40 68 74 65 64 20 64 62 66 2E 20 20 54 68 65 20 64 hted dbf.  The d
4D8E:4F50 65 66 61 75 6C 74 20 76 69 65 77 20 69 73 20 74 efault view is t
4D8E:4F60 68 65 20 63 75 72 72 65 6E 74 00 00 20 20 20 73 he current..   s
4D8E:4F70 74 61 74 75 73 20 6F 66 20 74 68 65 20 66 69 6C tatus of the fil
4D8E:4F80 65 20 20 28 53 65 6C 65 63 74 65 64 2C 20 49 6E e  (Selected, In
4D8E:4F90 64 65 78 65 64 2C 20 65 74 63 29 2E 20 20 46 6F dexed, etc).  Fo
4D8E:4FA0 75 72 20 66 75 6E 63 74 69 6F 6E 20 6B 65 79 73 ur function keys
4D8E:4FB0 00 00 20 20 20 73 65 6C 65 63 74 20 74 68 65 20 ..   select the 
4D8E:4FC0 76 69 65 77 20 6D 6F 64 65 3A 00 00 00 00 20 20 view mode:....  
4D8E:4FD0 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20                 
4D8E:4FE0 20 46 31 20 2D 20 4F 76 65 72 76 69 65 77 20 28  F1 - Overview (
4D8E:4FF0 64 65 66 61 75 6C 74 29 00 00 20 20 20 20 20 20 default)..      
4D8E:5000 20 20 20 20 20 20 20 20 20 20 20 20 20 46 32 20              F2 
4D8E:5010 2D 20 52 65 6C 61 74 69 6F 6E 73 00 20 20 20 20 - Relations.    
4D8E:5020 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 46                F
4D8E:5030 33 20 2D 20 49 6E 64 65 78 65 73 00 20 20 20 20 3 - Indexes.    
4D8E:5040 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 46                F
4D8E:5050 34 20 2D 20 53 74 72 75 63 74 75 72 65 00 00 00 4 - Structure...
4D8E:5060 20 20 20 54 68 65 20 73 65 6C 65 63 74 65 64 20    The selected 
4D8E:5070 76 69 65 77 20 72 65 6D 61 69 6E 73 20 61 73 20 view remains as 
4D8E:5080 74 68 65 20 61 6C 69 61 73 20 6C 69 73 74 20 69 the alias list i
4D8E:5090 73 20 73 63 61 6E 6E 65 64 2E 00 00 57 61 74 63 s scanned...Watc
4D8E:50A0 68 00 00 00 20 20 20 54 68 69 73 20 69 73 20 74 h...   This is t
4D8E:50B0 68 65 20 63 6F 6E 74 72 6F 6C 20 63 65 6E 74 65 he control cente
4D8E:50C0 72 20 66 6F 72 20 74 68 65 20 57 61 74 63 68 20 r for the Watch 
4D8E:50D0 42 6F 78 2E 20 20 54 68 65 20 64 65 66 61 75 6C Box.  The defaul
4D8E:50E0 74 20 57 61 74 63 68 20 42 6F 78 00 63 6F 6E 74 t Watch Box.cont
4D8E:50F0 61 69 6E 73 20 74 68 65 20 61 63 74 69 76 65 20 ains the active 
4D8E:5100 70 72 6F 63 65 64 75 72 65 20 6E 61 6D 65 2C 20 procedure name, 
4D8E:5110 63 75 72 72 65 6E 74 20 6C 69 6E 65 20 6E 75 6D current line num
4D8E:5120 62 65 72 20 61 6E 64 20 74 68 65 20 42 72 65 61 ber and the Brea
4D8E:5130 6B 2D 00 00 70 6F 69 6E 74 20 73 79 73 74 65 6D k-..point system
4D8E:5140 20 73 74 61 74 75 73 2E 00 00 00 00 20 20 20 49  status.....   I
4D8E:5150 6E 20 61 64 64 69 74 69 6F 6E 20 74 6F 20 74 68 n addition to th
4D8E:5160 65 20 64 65 66 61 75 6C 74 20 69 6E 66 6F 72 6D e default inform
4D8E:5170 61 74 69 6F 6E 2C 20 79 6F 75 20 63 61 6E 20 61 ation, you can a
4D8E:5180 64 64 20 75 70 20 74 6F 20 31 36 20 65 78 70 72 dd up to 16 expr
4D8E:5190 65 73 73 69 6F 6E 73 00 74 68 61 74 20 79 6F 75 essions.that you
4D8E:51A0 20 61 72 65 20 69 6E 74 65 72 65 73 74 65 64 20  are interested 
4D8E:51B0 69 6E 20 74 72 61 63 6B 69 6E 67 2E 20 20 54 68 in tracking.  Th
4D8E:51C0 65 20 65 78 70 72 65 73 73 69 6F 6E 20 63 61 6E e expression can
4D8E:51D0 20 62 65 20 6F 66 20 61 6E 79 20 74 79 70 65 2E  be of any type.
4D8E:51E0 00 00 55 70 20 74 6F 20 32 30 20 63 68 61 72 61 ..Up to 20 chara
4D8E:51F0 63 74 65 72 73 20 63 61 6E 20 62 65 20 64 69 73 cters can be dis
4D8E:5200 70 6C 61 79 65 64 20 69 6E 20 74 68 65 20 62 6F played in the bo
4D8E:5210 78 20 61 72 65 61 2E 00 00 00 20 20 20 54 6F 67 x area....   Tog
4D8E:5220 67 6C 65 00 20 20 20 20 20 20 20 54 68 65 20 57 gle.       The W
4D8E:5230 61 74 63 68 20 42 6F 78 20 64 69 73 70 6C 61 79 atch Box display
4D8E:5240 20 63 61 6E 20 62 65 20 74 75 72 6E 65 64 20 6F  can be turned o
4D8E:5250 6E 20 61 6E 64 20 6F 66 66 20 77 69 74 68 20 74 n and off with t
4D8E:5260 68 69 73 20 6F 70 74 69 6F 6E 2E 00 00 00 20 20 his option....  
4D8E:5270 20 53 65 74 00 00 20 20 20 20 20 20 20 54 68 69  Set..       Thi
4D8E:5280 73 20 6F 70 74 69 6F 6E 20 69 73 20 75 73 65 64 s option is used
4D8E:5290 20 74 6F 20 61 64 64 20 61 6E 64 20 6D 61 69 6E  to add and main
4D8E:52A0 74 61 69 6E 20 75 73 65 72 2D 64 65 66 69 6E 65 tain user-define
4D8E:52B0 64 20 77 61 74 63 68 20 70 6F 69 6E 74 73 2E 00 d watch points..
4D8E:52C0 00 00 20 20 20 20 20 20 20 20 20 20 20 54 6F 67 ..           Tog
4D8E:52D0 67 6C 65 00 20 20 20 20 20 20 20 20 20 20 20 20 gle.            
4D8E:52E0 20 20 20 54 75 72 6E 73 20 6F 6E 20 61 6E 64 20    Turns on and 
4D8E:52F0 6F 66 66 20 73 69 6E 67 6C 65 20 57 61 74 63 68 off single Watch
4D8E:5300 20 42 6F 78 20 65 78 70 72 65 73 73 69 6F 6E 73  Box expressions
4D8E:5310 2E 00 20 20 20 20 20 20 20 20 20 20 20 45 78 70 ..           Exp
4D8E:5320 72 65 73 73 69 6F 6E 73 20 74 68 61 74 20 68 61 ressions that ha
4D8E:5330 76 65 20 62 65 65 6E 20 74 75 72 6E 65 64 20 6F ve been turned o
4D8E:5340 66 66 20 61 72 65 20 72 65 70 6C 61 63 65 64 00 ff are replaced.
4D8E:5350 20 20 20 20 20 20 20 20 20 20 20 77 69 74 68 20            with 
4D8E:5360 3C 6F 66 66 3E 00 00 00 20 20 20 20 20 20 20 20 <off>...        
4D8E:5370 20 20 20 41 64 64 00 00 20 20 20 20 20 20 20 20    Add..        
4D8E:5380 20 20 20 20 20 20 20 41 64 64 20 61 20 77 61 74        Add a wat
4D8E:5390 63 68 20 65 78 70 72 65 73 73 69 6F 6E 2E 20 20 ch expression.  
4D8E:53A0 28 69 2E 65 2E 20 54 49 4D 45 28 29 29 00 00 00 (i.e. TIME())...
4D8E:53B0 20 20 20 20 20 20 20 20 20 20 20 44 65 6C 65 74            Delet
4D8E:53C0 65 00 20 20 20 20 20 20 20 20 20 20 20 20 20 20 e.              
4D8E:53D0 20 44 65 6C 65 74 65 20 61 20 77 61 74 63 68 20  Delete a watch 
4D8E:53E0 65 78 70 72 65 73 73 69 6F 6E 2E 00 00 00 00 00 expression......
4D8E:53F0 20 20 20 4D 6F 76 65 00 20 20 20 20 20 20 20 4D    Move.       M
4D8E:5400 6F 76 65 20 74 68 65 20 62 6F 78 20 66 72 6F 6D ove the box from
4D8E:5410 20 74 68 65 20 72 69 67 68 74 20 73 69 64 65 20  the right side 
4D8E:5420 74 6F 20 74 68 65 20 6C 65 66 74 20 73 69 64 65 to the left side
4D8E:5430 20 6F 66 20 74 68 65 20 64 69 73 70 6C 61 79 2E  of the display.
4D8E:5440 00 00 56 61 72 69 61 62 6C 65 00 00 00 00 20 20 ..Variable....  
4D8E:5450 20 41 73 73 69 67 6E 00 20 20 20 20 20 20 20 41  Assign.       A
4D8E:5460 20 70 72 69 76 61 74 65 20 6D 65 6D 6F 72 79 20  private memory 
4D8E:5470 76 61 72 69 61 62 6C 65 20 63 61 6E 20 62 65 20 variable can be 
4D8E:5480 63 72 65 61 74 65 64 20 6F 72 20 6D 6F 64 69 66 created or modif
4D8E:5490 69 65 64 20 77 69 74 68 20 74 68 69 73 00 20 20 ied with this.  
4D8E:54A0 20 6F 70 74 69 6F 6E 2E 00 00 00 00 20 20 20 50  option.....   P
4D8E:54B0 72 69 76 61 74 65 00 00 20 20 20 20 20 20 20 41 rivate..       A
4D8E:54C0 20 6C 69 73 74 20 6F 66 20 61 6C 6C 20 74 68 65  list of all the
4D8E:54D0 20 61 63 74 69 76 65 20 70 72 6F 63 65 64 75 72  active procedur
4D8E:54E0 65 73 20 28 63 75 72 72 65 6E 74 20 61 63 74 69 es (current acti
4D8E:54F0 76 61 74 69 6F 6E 20 6F 6E 20 74 6F 70 29 20 69 vation on top) i
4D8E:5500 73 00 20 20 20 64 69 73 70 6C 61 79 65 64 20 61 s.   displayed a
4D8E:5510 74 20 74 68 65 20 6C 65 66 74 20 73 69 64 65 2E t the left side.
4D8E:5520 20 20 54 68 65 20 70 72 69 76 61 74 65 20 76 61   The private va
4D8E:5530 72 69 61 62 6C 65 73 20 66 6F 72 20 74 68 65 20 riables for the 
4D8E:5540 68 69 67 68 6C 69 67 68 74 65 64 00 20 20 20 70 highlighted.   p
4D8E:5550 72 6F 63 65 64 75 72 65 20 61 70 70 65 61 72 20 rocedure appear 
4D8E:5560 6F 6E 20 74 68 65 20 72 69 67 68 74 20 73 69 64 on the right sid
4D8E:5570 65 2E 00 00 00 00 20 20 20 50 75 62 6C 69 63 00 e.....   Public.
4D8E:5580 20 20 20 20 20 20 20 53 68 6F 77 73 20 61 6C 6C        Shows all
4D8E:5590 20 74 68 65 20 70 75 62 6C 69 63 20 76 61 72 69  the public vari
4D8E:55A0 61 62 6C 65 73 20 66 6F 72 20 74 68 65 20 70 72 ables for the pr
4D8E:55B0 6F 67 72 61 6D 2E 00 00 41 6E 79 20 6B 65 79 2E ogram...Any key.
4D8E:55C0 2E 2E 00 00 43 4F 4D 4D 41 4E 44 00 3C 6F 6E 3E ....COMMAND.<on>
4D8E:55D0 20 00 3C 6F 66 66 3E 00 3C 6C 69 6E 65 3E 00 00  .<off>.<line>..
4D8E:55E0 3C 65 78 70 72 3E 00 00 50 72 6F 63 00 00 4C 69 <expr>..Proc..Li
4D8E:55F0 6E 65 00 00 45 78 70 72 00 00 49 74 65 6D 20 74 ne..Expr..Item t
4D8E:5600 6F 20 54 6F 67 67 6C 65 00 00 50 72 6F 63 00 00 o Toggle..Proc..
4D8E:5610 4C 69 6E 65 00 00 45 78 70 72 00 00 49 74 65 6D Line..Expr..Item
4D8E:5620 20 74 6F 20 44 65 6C 65 74 65 00 00 3C 6F 6E 3E  to Delete..<on>
4D8E:5630 20 00 3C 6F 66 66 3E 00 49 74 65 6D 20 74 6F 20  .<off>.Item to 
4D8E:5640 54 6F 67 67 6C 65 00 00 49 74 65 6D 20 74 6F 20 Toggle..Item to 
4D8E:5650 44 65 6C 65 74 65 00 00 50 72 6F 63 20 00 4C 69 Delete..Proc .Li
4D8E:5660 6E 65 20 00 42 72 65 61 6B 20 70 6F 69 6E 74 73 ne .Break points
4D8E:5670 00 00 3C 6F 6E 3E 00 00 3C 6F 66 66 3E 00 3C 6F ..<on>..<off>.<o
4D8E:5680 66 66 3E 00 45 78 70 72 65 73 73 69 6F 6E 00 00 ff>.Expression..
4D8E:5690 56 61 6C 75 65 00 20 57 41 49 54 49 4E 47 20 00 Value. WAITING .
4D8E:56A0 4F 4E 00 00 4F 46 46 00 2C 20 4F 70 65 6E 00 00 ON..OFF., Open..
4D8E:56B0 2C 20 43 6C 6F 73 65 64 00 00 4F 4E 00 00 4F 46 , Closed..ON..OF
4D8E:56C0 46 00 4F 4E 00 00 4F 46 46 00 4F 4E 00 00 4F 46 F.ON..OFF.ON..OF
4D8E:56D0 46 00 4F 4E 00 00 4F 46 46 00 4F 4E 00 00 4F 46 F.ON..OFF.ON..OF
4D8E:56E0 46 00 4F 4E 00 00 4F 46 46 00 44 62 66 5F 64 61 F.ON..OFF.Dbf_da
4D8E:56F0 74 65 00 00 41 6D 65 72 69 63 61 6E 00 00 41 6E te..American..An
4D8E:5700 73 69 00 00 42 72 69 74 73 68 00 00 46 72 65 6E si..Britsh..Fren
4D8E:5710 63 68 00 00 47 65 72 6D 61 6E 00 00 49 74 61 6C ch..German..Ital
4D8E:5720 69 61 6E 00 30 00 28 6E 6F 6E 65 29 00 00 4F 4E ian.0.(none)..ON
4D8E:5730 00 00 4F 46 46 00 4F 4E 00 00 4F 46 46 00 2C 20 ..OFF.ON..OFF., 
4D8E:5740 4C 65 66 74 20 00 20 52 69 67 68 74 20 00 50 72 Left . Right .Pr
4D8E:5750 69 6E 74 00 53 63 72 65 65 6E 00 00 4F 4E 00 00 int.Screen..ON..
4D8E:5760 4F 46 46 00 4F 4E 00 00 4F 46 46 00 4F 4E 00 00 OFF.ON..OFF.ON..
4D8E:5770 4F 46 46 00 4F 4E 00 00 4F 46 46 00 4E 6F 74 20 OFF.ON..OFF.Not 
4D8E:5780 6F 70 65 6E 00 00 30 00 4F 4E 00 00 4F 46 46 00 open..0.ON..OFF.
4D8E:5790 28 6E 6F 6E 65 29 00 00 4F 4E 00 00 4F 46 46 00 (none)..ON..OFF.
4D8E:57A0 30 00 30 00 30 00 30 00 4F 4E 00 00 4F 46 46 00 0.0.0.0.ON..OFF.
4D8E:57B0 4F 4E 00 00 4F 46 46 00 4F 4E 00 00 4F 46 46 00 ON..OFF.ON..OFF.
4D8E:57C0 4F 4E 00 00 4F 46 46 00 20 57 41 49 54 49 4E 47 ON..OFF. WAITING
4D8E:57D0 20 00 3E 00 3E 00 20 3C 46 31 3E 20 2D 20 4F 76  .>.>. <F1> - Ov
4D8E:57E0 65 72 76 69 65 77 20 20 20 3C 46 32 3E 20 2D 20 erview   <F2> - 
4D8E:57F0 52 65 6C 61 74 69 6F 6E 73 20 20 20 3C 46 33 3E Relations   <F3>
4D8E:5800 20 2D 20 49 6E 64 65 78 65 73 20 20 20 3C 46 34  - Indexes   <F4
4D8E:5810 3E 20 2D 20 53 74 72 75 63 74 75 72 65 20 00 00 > - Structure ..
4D8E:5820 4F 76 65 72 76 69 65 77 00 00 52 65 6C 61 74 69 Overview..Relati
4D8E:5830 6F 6E 73 00 49 6E 64 65 78 65 73 00 53 74 72 75 ons.Indexes.Stru
4D8E:5840 63 74 75 72 65 00 53 65 6C 65 63 74 69 6F 6E 00 cture.Selection.
4D8E:5850 53 65 6C 65 63 74 65 64 00 00 55 6E 73 65 6C 65 Selected..Unsele
4D8E:5860 63 74 65 64 00 00 4C 61 73 74 20 55 70 64 61 74 cted..Last Updat
4D8E:5870 65 00 30 00 2F 00 30 00 2F 00 53 68 61 72 65 64 e.0./.0./.Shared
4D8E:5880 00 00 45 78 63 6C 75 73 69 76 65 00 46 69 6C 65 ..Exclusive.File
4D8E:5890 20 4C 6F 63 6B 65 64 00 46 69 6C 65 20 55 6E 6C  Locked.File Unl
4D8E:58A0 6F 63 6B 65 64 00 46 69 6C 74 65 72 20 53 65 74 ocked.Filter Set
4D8E:58B0 00 00 4E 6F 20 46 69 6C 74 65 72 00 46 69 6C 74 ..No Filter.Filt
4D8E:58C0 65 72 20 45 78 70 72 65 73 73 69 6F 6E 00 52 65 er Expression.Re
4D8E:58D0 63 6F 72 64 20 63 6F 75 6E 74 20 20 20 20 20 20 cord count      
4D8E:58E0 20 20 20 20 20 20 20 20 53 69 7A 65 00 00 52 65         Size..Re
4D8E:58F0 63 6F 72 64 20 6E 75 6D 62 65 72 00 46 69 6C 65 cord number.File
4D8E:5900 20 45 6D 70 74 79 00 00 42 65 67 69 6E 6E 69 6E  Empty..Beginnin
4D8E:5910 67 20 6F 66 20 46 69 6C 65 00 45 6E 64 20 6F 66 g of File.End of
4D8E:5920 20 46 69 6C 65 00 52 65 63 6F 72 64 20 4C 6F 63  File.Record Loc
4D8E:5930 6B 65 64 00 52 65 63 6F 72 64 20 55 6E 6C 6F 63 ked.Record Unloc
4D8E:5940 6B 65 64 00 44 65 6C 65 74 65 64 00 55 6E 64 65 ked.Deleted.Unde
4D8E:5950 6C 65 74 65 64 00 52 65 6C 61 74 69 6F 6E 20 63 leted.Relation c
4D8E:5960 6F 75 6E 74 00 00 4E 6F 20 52 65 6C 61 74 69 6F ount..No Relatio
4D8E:5970 6E 73 20 73 65 74 00 00 49 6E 64 65 78 20 63 6F ns set..Index co
4D8E:5980 75 6E 74 20 20 20 20 20 20 20 4F 72 64 65 72 00 unt       Order.
4D8E:5990 4E 6F 20 4F 70 65 6E 20 49 6E 64 65 78 65 73 00 No Open Indexes.
4D8E:59A0 52 65 6C 61 74 65 64 20 74 6F 20 20 20 52 65 6C Related to   Rel
4D8E:59B0 61 74 69 6F 6E 20 45 78 70 72 65 73 73 69 6F 6E ation Expression
4D8E:59C0 00 00 4E 75 6D 62 65 72 20 20 4B 65 79 20 45 78 ..Number  Key Ex
4D8E:59D0 70 72 65 73 73 69 6F 6E 00 00 2E 4E 54 58 00 00 pression...NTX..
4D8E:59E0 00 00 00 00 4E 61 6D 65 20 20 20 20 20 20 20 20 ....Name        
4D8E:59F0 54 79 70 65 20 20 4C 65 6E 67 74 68 20 20 44 65 Type  Length  De
4D8E:5A00 63 69 6D 61 6C 73 00 00 56 61 72 69 61 62 6C 65 cimals..Variable
4D8E:5A10 00 00 54 79 70 65 00 00 56 61 6C 75 65 00 4E 65 ..Type..Value.Ne
4D8E:5A20 77 20 76 61 6C 75 65 00 20 57 41 49 54 49 4E 47 w value. WAITING
4D8E:5A30 20 00 3E 00 3E 00 4E 61 6D 65 20 20 20 20 20 20  .>.>.Name      
4D8E:5A40 20 20 54 79 70 65 20 20 43 6F 6E 74 65 6E 74 00   Type  Content.
4D8E:5A50 4E 61 6D 65 20 20 20 20 20 20 20 20 54 79 70 65 Name        Type
4D8E:5A60 20 20 43 6F 6E 74 65 6E 74 00 20 57 41 49 54 49   Content. WAITI
4D8E:5A70 4E 47 20 00 3C 55 6E 64 65 66 69 6E 65 64 20 45 NG .<Undefined E
4D8E:5A80 78 70 72 3E 00 00 3C 55 6E 64 65 66 69 6E 65 64 xpr>..<Undefined
4D8E:5A90 3E 00 2E 54 2E 00 2E 46 2E 00 00 00 00 00 00 00 >..T...F........
4D8E:5AA0 3C 55 6E 64 65 66 69 6E 65 64 20 45 78 70 72 3E <Undefined Expr>
4D8E:5AB0 00 00 3C 55 6E 64 65 66 69 6E 65 64 20 49 6E 64 ..<Undefined Ind
4D8E:5AC0 65 74 3E 00 3C 55 6E 64 65 66 69 6E 65 64 3E 00 et>.<Undefined>.
4D8E:5AD0 30 00 20 00 20 4D 4F 52 45 20 18 20 00 00 20 4D 0. . MORE . .. M
4D8E:5AE0 4F 52 45 20 19 20 00 00 55 6E 64 65 66 69 6E 65 ORE . ..Undefine
4D8E:5AF0 64 20 45 6C 65 6D 65 6E 74 00 45 72 72 6F 72 20 d Element.Error 
4D8E:5B00 69 6E 20 45 78 70 72 65 73 73 69 6F 6E 00 4E 6F in Expression.No
4D8E:5B10 74 20 61 20 4C 6F 67 69 63 61 6C 20 65 78 70 72 t a Logical expr
4D8E:5B20 65 73 73 69 6F 6E 00 00 41 6E 79 20 6B 65 79 20 ession..Any key 
4D8E:5B30 74 6F 20 63 6F 6E 74 69 6E 75 65 00 00 00 3C 73 to continue...<s
4D8E:5B40 74 61 72 74 75 70 3E 00 70 72 6F 63 20 00 20 6C tartup>.proc . l
4D8E:5B50 69 6E 65 20 00 00 2C 20 00 00 69 6E 74 65 72 6E ine .., ..intern
4D8E:5B60 61 6C 20 65 72 72 6F 72 20 00 20 28 69 6E 20 00 al error . (in .
4D8E:5B70 72 65 6C 61 74 69 6F 6E 00 00 66 69 6C 74 65 72 relation..filter
4D8E:5B80 00 00 56 41 4C 49 44 00 69 6E 64 65 78 20 6B 65 ..VALID.index ke
4D8E:5B90 79 00 2E 4C 42 4C 00 00 2E 46 52 4D 00 00 6D 61 y..LBL...FRM..ma
4D8E:5BA0 63 72 6F 00 2C 20 00 00 29 00 65 78 70 72 5F 65 cro., ..).expr_e
4D8E:5BB0 72 72 6F 72 00 00 3C 73 74 61 72 74 75 70 3E 00 rror..<startup>.
4D8E:5BC0 65 78 70 72 5F 65 72 72 6F 72 00 00 3C 73 74 61 expr_error..<sta
4D8E:5BD0 72 74 75 70 3E 00 6F 70 65 6E 5F 65 72 72 6F 72 rtup>.open_error
4D8E:5BE0 00 00 3C 73 74 61 72 74 75 70 3E 00 00 00 64 62 ..<startup>...db
4D8E:5BF0 5F 65 72 72 6F 72 00 00 3C 73 74 61 72 74 75 70 _error..<startup
4D8E:5C00 3E 00 5F 31 00 00 75 6E 64 65 66 5F 65 72 72 6F >._1..undef_erro
4D8E:5C10 72 00 3C 73 74 61 72 74 75 70 3E 00 00 00 6D 69 r.<startup>...mi
4D8E:5C20 73 63 5F 65 72 72 6F 72 00 00 3C 73 74 61 72 74 sc_error..<start
4D8E:5C30 75 70 3E 00 6D 75 6C 74 69 70 6C 65 20 65 72 72 up>.multiple err
4D8E:5C40 6F 72 73 00 74 79 70 65 20 6D 69 73 6D 61 74 63 ors.type mismatc
4D8E:5C50 68 00 73 75 62 73 63 72 69 70 74 20 72 61 6E 67 h.subscript rang
4D8E:5C60 65 00 6E 6F 74 20 61 6E 20 61 72 72 61 79 00 00 e.not an array..
4D8E:5C70 74 79 70 65 20 6D 69 73 6D 61 74 63 68 00 7A 65 type mismatch.ze
4D8E:5C80 72 6F 20 64 69 76 69 64 65 00 65 78 70 72 65 73 ro divide.expres
4D8E:5C90 73 69 6F 6E 20 65 72 72 6F 72 00 00 6F 70 65 6E sion error..open
4D8E:5CA0 20 65 72 72 6F 72 00 00 75 6E 64 65 66 69 6E 65  error..undefine
4D8E:5CB0 64 20 69 64 65 6E 74 69 66 69 65 72 00 00 75 6E d identifier..un
4D8E:5CC0 64 65 66 69 6E 65 64 20 69 64 65 6E 74 69 66 69 defined identifi
4D8E:5CD0 65 72 00 00 6D 69 73 73 69 6E 67 20 45 58 54 45 er..missing EXTE
4D8E:5CE0 52 4E 41 4C 00 00 6F 75 74 20 6F 66 20 6D 65 6D RNAL..out of mem
4D8E:5CF0 6F 72 79 00 52 55 4E 20 65 72 72 6F 72 00 64 61 ory.RUN error.da
4D8E:5D00 74 61 62 61 73 65 20 72 65 71 75 69 72 65 64 00 tabase required.
4D8E:5D10 6C 6F 63 6B 20 72 65 71 75 69 72 65 64 00 65 78 lock required.ex
4D8E:5D20 63 6C 75 73 69 76 65 20 72 65 71 75 69 72 65 64 clusive required
4D8E:5D30 00 00 66 69 65 6C 64 20 6E 75 6D 65 72 69 63 20 ..field numeric 
4D8E:5D40 6F 76 65 72 66 6C 6F 77 00 00 69 6E 64 65 78 20 overflow..index 
4D8E:5D50 66 69 6C 65 20 63 6F 72 72 75 70 74 65 64 00 00 file corrupted..
4D8E:5D60 6F 75 74 20 6F 66 20 6D 65 6D 6F 72 79 20 00 00 out of memory ..
4D8E:5D70 6D 75 6C 74 69 70 6C 65 20 65 72 72 6F 72 73 00 multiple errors.
4D8E:5D80 00 00 70 72 69 6E 74 65 72 20 65 72 72 6F 72 00 ..printer error.
4D8E:5D90 70 72 69 6E 74 5F 65 72 72 6F 72 00 3C 73 74 61 print_error.<sta
4D8E:5DA0 72 74 75 70 3E 00 20 20 43 6F 6E 74 69 6E 75 65 rtup>.  Continue
4D8E:5DB0 3F 20 28 59 2F 4E 29 00 70 61 75 73 65 64 2E 2E ? (Y/N).paused..
4D8E:5DC0 2E 00 00 00 1A 00 28 6D 76 29 00 00 28 70 76 29 ......(mv)..(pv)
4D8E:5DD0 00 00 3C 62 65 67 69 6E 3E 00 43 4C 49 50 50 45 ..<begin>.CLIPPE
4D8E:5DE0 52 00 45 52 52 4F 52 53 59 53 00 00 4E 6F 74 20 R.ERRORSYS..Not 
4D8E:5DF0 65 6E 6F 75 67 68 20 6D 65 6D 6F 72 79 0D 0A 00 enough memory...
4D8E:5E00 45 72 72 6F 72 20 69 6E 20 3D 46 6E 6E 6E 20 66 Error in =Fnnn f
4D8E:5E10 69 6C 65 20 68 61 6E 64 6C 65 73 0D 0A 00 2A 2E ile handles...*.
4D8E:5E20 2A 00 00 00 00 00 43 4C 49 50 50 45 52 00 46 49 *.....CLIPPER.FI
4D8E:5E30 45 4C 44 5F 4E 41 4D 45 00 00 46 49 45 4C 44 5F ELD_NAME..FIELD_
4D8E:5E40 54 59 50 45 00 00 46 49 45 4C 44 5F 4C 45 4E 00 TYPE..FIELD_LEN.
4D8E:5E50 46 49 45 4C 44 5F 44 45 43 00 0D 00 00 00 00 00 FIELD_DEC.......
4D8E:5E60 2A 2E 44 42 46 00 20 20 20 00 20 20 20 20 00 00 *.DBF.   .    ..
4D8E:5E70 64 69 73 6B 20 66 75 6C 6C 00 00 00 2A 00 20 00 disk full...*. .
4D8E:5E80 01 00 00 00 00 00 00 00 00 00 00 00 1A 00 00 00 ................
4D8E:5E90 00 00 00 00 00 00 64 69 73 6B 20 66 75 6C 6C 00 ......disk full.
4D8E:5EA0 0D 0A 00 00 2C 00 20 00 0D 0A 00 00 1A 00 1A 00 ....,. .........
4D8E:5EB0 28 52 29 00 1A 00 64 69 73 6B 20 66 75 6C 6C 00 (R)...disk full.
4D8E:5EC0 64 69 73 6B 20 66 75 6C 6C 00 00 00 2E 4E 54 58 disk full....NTX
4D8E:5ED0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 64 69 ..............di
4D8E:5EE0 73 6B 20 66 75 6C 6C 00 2D 3E 00 00 2D 3E 00 00 sk full.->..->..
4D8E:5EF0 00 00 2D 3E 00 00 00 00 00 00 43 00 4E 00 4C 00 ..->......C.N.L.
4D8E:5F00 44 00 4D 00 41 00 55 45 00 00 55 49 00 00 55 00 D.M.A.UE..UI..U.
4D8E:5F10 00 00 48 45 4C 50 00 00 20 00 0D 0A 00 00 0D 0A ..HELP.. .......
4D8E:5F20 00 00 0D 0A 00 00 0D 0A 00 00 0C 0D 00 00 2E 54 ...............T
4D8E:5F30 2E 00 2E 46 2E 00 20 00 08 00 0D 00 1A 00 0D 0A ...F.. .........
4D8E:5F40 00 00 0D 00 20 00 39 23 41 4C 4E 58 59 21 00 00 .... .9#ALNXY!..
4D8E:5F50 39 23 24 2A 00 00 4C 23 59 00 20 43 52 00 20 44 9#$*..L#Y. CR. D
4D8E:5F60 42 00 54 00 46 00 00 00 07 00 07 00 07 00 DA C4 B.T.F...........
4D8E:5F70 BF B3 D9 C4 C0 B3 00 00 C9 CD BB BA BC CD C8 BA ................
4D8E:5F80 00 00 20 20 20 20 20 20 20 20 20 00 00 00 00 00 ..         .....
4D8E:5F90 00 00 00 00 1A 00 43 4F 4D 53 50 45 43 00 2F 63 ......COMSPEC./c
4D8E:5FA0 20 00 0D 00 22 5B 5D 7C 3C 3E 2B 3D 3B 2C 00 00  ..."[]|<>+=;,..
4D8E:5FB0 2E 44 42 46 00 00 2E 44 42 46 00 00 2E 44 42 46 .DBF...DBF...DBF
4D8E:5FC0 00 00 2E 44 42 46 00 00 2E 44 42 54 00 00 2E 44 ...DBF...DBT...D
4D8E:5FD0 42 54 00 00 2E 44 42 54 00 00 2E 44 42 54 00 00 BT...DBT...DBT..
4D8E:5FE0 2E 54 58 54 00 00 2E 54 58 54 00 00 2E 4D 45 4D .TXT...TXT...MEM
4D8E:5FF0 00 00 2E 4D 45 4D 00 00 2E 46 52 4D 00 00 2E 4C ...MEM...FRM...L
4D8E:6000 42 4C 00 00 00 00 00 00 2E 54 4D 50 00 00 00 00 BL.......TMP....
4D8E:6010 2E 50 52 4E 00 00 00 00 5C 2F 3A 00 5C 2F 3A 00 .PRN....\/:.\/:.
4D8E:6020 5C 2F 3A 00 43 4C 49 50 53 4F 52 54 00 00 43 4C \/:.CLIPSORT..CL
4D8E:6030 49 50 53 4F 52 54 2E 54 4D 50 00 00 00 00 00 00 IPSORT.TMP......
4D8E:6040 00 00 00 00 2A 2E 2A 00 CD D1 CD 00 20 B3 20 00 ....*.*..... . .
4D8E:6050 20 20 3C 4D 65 6D 6F 3E 20 20 00 00 00 00 00 00   <Memo>  ......
4D8E:6060 00 00 00 00 00 00 00 00 3C 69 6E 73 65 72 74 3E ........<insert>
4D8E:6070 00 00 20 20 20 20 20 20 20 20 00 00 41 62 6F 72 ..        ..Abor
4D8E:6080 74 20 45 64 69 74 3F 20 28 00 29 00 3C 69 6E 73 t Edit? (.).<ins
4D8E:6090 65 72 74 3E 00 00 3C 69 6E 73 65 72 74 3E 00 00 ert>..<insert>..
4D8E:60A0 20 20 20 20 20 20 20 20 00 00 00 00 00 00 00 00         ........
4D8E:60B0 00 00 00 00 00 00 8E 4D 00 00 8E 4D 00 00 8E 4D .......M...M...M
4D8E:60C0 00 00 8E 4D 00 00 8E 4D 00 00 8E 4D 00 00 8E 4D ...M...M...M...M
4D8E:60D0 00 00 8E 4D 42 46 50 56 00 00 43 47 4A 4B 51 53 ...MBFPV..CGJKQS
4D8E:60E0 58 5A 00 00 44 54 00 00 4C 00 4D 4E 00 00 52 00 XZ..DT..L.MN..R.
4D8E:60F0 00 00 00 02 00 52 36 30 30 32 0D 0A 2D 20 66 6C .....R6002..- fl
4D8E:6100 6F 61 74 69 6E 67 20 70 6F 69 6E 74 20 6E 6F 74 oating point not
4D8E:6110 20 6C 6F 61 64 65 64 0D 0A 00 00 00 52 36 30 30  loaded.....R600
4D8E:6120 30 0D 0A 2D 20 73 74 61 63 6B 20 6F 76 65 72 66 0..- stack overf
4D8E:6130 6C 6F 77 0D 0A 00 03 00 52 36 30 30 33 0D 0A 2D low.....R6003..-
4D8E:6140 20 69 6E 74 65 67 65 72 20 64 69 76 69 64 65 20  integer divide 
4D8E:6150 62 79 20 30 0D 0A 00 09 00 52 36 30 30 39 0D 0A by 0.....R6009..
4D8E:6160 2D 20 6E 6F 74 20 65 6E 6F 75 67 68 20 73 70 61 - not enough spa
4D8E:6170 63 65 20 66 6F 72 20 65 6E 76 69 72 6F 6E 6D 65 ce for environme
4D8E:6180 6E 74 0D 0A 00 FC 00 0D 0A 00 FF 00 72 75 6E 2D nt..........run-
4D8E:6190 74 69 6D 65 20 65 72 72 6F 72 20 00 01 00 52 36 time error ...R6
4D8E:61A0 30 30 31 0D 0A 2D 20 6E 75 6C 6C 20 70 6F 69 6E 001..- null poin
4D8E:61B0 74 65 72 20 61 73 73 69 67 6E 6D 65 6E 74 0D 0A ter assignment..
4D8E:61C0 00 FD 00 3A 20 4D 41 54 48 0D 0A 2D 20 66 6C 6F ...: MATH..- flo
4D8E:61D0 61 74 69 6E 67 2D 70 6F 69 6E 74 20 65 72 72 6F ating-point erro
4D8E:61E0 72 3A 20 00 65 00 69 6E 76 61 6C 69 64 0D 0A 00 r: .e.invalid...
4D8E:61F0 67 00 64 69 76 69 64 65 20 62 79 20 30 0D 0A 00 g.divide by 0...
4D8E:6200 68 00 6F 76 65 72 66 6C 6F 77 0D 0A 00 6E 00 73 h.overflow...n.s
4D8E:6210 74 61 63 6B 20 6F 76 65 72 66 6C 6F 77 0D 0A 00 tack overflow...
4D8E:6220 70 00 65 78 70 6C 69 63 69 74 6C 79 20 67 65 6E p.explicitly gen
4D8E:6230 65 72 61 74 65 64 0D 0A 00 78 00 44 4F 4D 41 49 erated...x.DOMAI
4D8E:6240 4E 20 65 72 72 6F 72 0D 0A 00 79 00 53 49 4E 47 N error...y.SING
4D8E:6250 20 65 72 72 6F 72 0D 0A 00 7A 00 54 4C 4F 53 53  error...z.TLOSS
4D8E:6260 20 65 72 72 6F 72 0D 0A 00 3C 3C 4E 4D 53 47 3E  error...<<NMSG>
4D8E:6270 3E 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 >...............
4D8E:6280 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
4D8E:6290 00 00 00 00 00 00 00 00 FF 00 00 00 00 00 00 00 ................
4D8E:62A0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
; ...
