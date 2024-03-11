;;; Segment 4D8E (4D8E:0000)
4D8E:0000 00 00 00 00 00 00 00 00 4D 53 20 52 75 6E 2D 54 ........MS Run-T
4D8E:0010 69 6D 65 20 4C 69 62 72 61 72 79                ime Library     

l4CEE_0A1B:
	and	[di],ch
	and	[bp+di+6Fh],al
	jo	0A9Bh

l4CEE_0A22:
	jc	0A8Dh

l4CEE_0A24:
	push	2074h
	sub	[bp+di+29h],ah
	and	[bx+di],dh
	cmp	[bx+si],di
	aaa
	sub	al,20h
	dec	bp
	imul	sp,[bp+di+72h],736Fh
	outsw
	jz	0A5Ch

l4CEE_0A3C:
	inc	bx
	outsw
	jc	0AB0h

l4CEE_0A40:
	push	ds
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[4100h],al
