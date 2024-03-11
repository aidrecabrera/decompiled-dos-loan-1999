;;; Segment 4A8D (4A8D:0000)
4A8D:0000 02 00 9A 1E 00 86 4A 50 9A 7A 05 5D 3B 59 CB 55 ......JP.z.];Y.U
4A8D:0010 8B EC 83 EC 06 33 C0 50 9A 7C 01 5D 3B 59 3D 01 .....3.P.|.];Y=.
4A8D:0020 00 75 29 B8 01 00 50 9A 7C 01 5D                .u)...P.|.]     

;; fn3CEE_DA1B: 3CEE:DA1B
;;   Called from:
;;     3CEE:14AB (in fn3CEE_1472)
fn3CEE_DA1B proc
	cmp	bx,[bx+di-57h]
	add	al,[bx+si]
	jz	0DA3Ch

l3CEE_DA22:
	push	ss
	lea	ax,[bp-6h]
	push	ax
	mov	ax,1h
	push	ax
	call	far 3B5Dh:0306h
	pop	cx
	push	ax
	call	far 2017h:040Fh
	add	sp,6h
	jmp	0DA4Ch

l3CEE_DA3C:
	push	ss
	lea	ax,[bp-6h]
	push	ax
	xor	ax,ax
	push	ax
	call	far 2017h:040Fh
	add	sp,6h

l3CEE_DA4C:
	mov	ax,[bp-4h]
	xor	dx,dx
	xor	cx,cx
	mov	bx,200h
	call	far 3CEEh:3191h
	mov	bx,[bp-6h]
	xor	cx,cx
	call	far 3CEEh:3191h
	push	dx
	push	ax
	call	far 3B5Dh:0592h
	pop	cx
	pop	cx
	mov	sp,bp
	pop	bp
	retf
3CEE:DA72       00 00 00 00 00 00 00 00 00 00 00 00 00 00   ..............
