;;; Segment 2068 (2068:0000)

l2017_0510:
	xor	ax,ax

l2017_0512:
	pop	ds
	pop	di
	pop	si
	pop	bp
	retf
2017:0517                      00                                .        

;; fn2068_0008: 2068:0008
;;   Called from:
;;     21DC:102F (in fn21DC_0EC2)
fn2068_0008 proc
	push	bp
	mov	bp,sp
	mov	ax,[bp+6h]
	mov	[10A8h],ax
	sub	ax,ax
	pop	bp
	retf
2068:0015                90 55 2B C0 5D CB 90                  .U+.]..    

;; fn2068_001C: 2068:001C
;;   Called from:
;;     2068:0050 (in fn2068_001C)
;;     2068:006F (in fn2068_001C)
;;     2068:009F (in fn2068_007C)
fn2068_001C proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	push	si
	cmp	word ptr [bp+6h],0h
	jz	0076h

l2068_0029:
	mov	si,[bp+6h]
	shl	si,1h
	mov	ax,[si+10BCh]
	mov	cl,0Ah
	shl	ax,cl
	push	ax
	call	far 3CEEh:0747h
	add	sp,2h
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	or	ax,dx
	jz	006Ah

l2068_0049:
	inc	word ptr [si+10AEh]
	push	word ptr [bp+6h]
	push	cs
	call	001Ch
	add	sp,2h
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	call	far 3CEEh:0732h
	add	sp,4h
	pop	si
	mov	sp,bp
	pop	bp
	retf

l2068_006A:
	mov	ax,[bp+6h]
	dec	ax
	push	ax
	push	cs
	call	001Ch
	add	sp,2h

l2068_0076:
	pop	si
	mov	sp,bp
	pop	bp
	retf
2068:007B                                  90                        .    

;; fn2068_007C: 2068:007C
;;   Called from:
;;     2068:00C8 (in fn2068_00A8)
;;     2068:00E6 (in fn2068_00A8)
fn2068_007C proc
	push	bp
	mov	bp,sp
	sub	sp,2h
	mov	word ptr [bp-2h],0h

l2068_0087:
	mov	bx,[bp-2h]
	shl	bx,1h
	mov	word ptr [bx+10AEh],0h
	inc	word ptr [bp-2h]
	cmp	word ptr [bp-2h],6h
	jbe	0087h

l2068_009B:
	mov	ax,6h
	push	ax
	push	cs
	call	001Ch
	mov	sp,bp
	pop	bp
	retf
2068:00A7                      90                                .        

;; fn2068_00A8: 2068:00A8
;;   Called from:
;;     2D1A:0BFA (in fn2D1A_0BD2)
;;     2D1A:0D40 (in fn2D1A_0D38)
;;     2D1A:0F84 (in fn2D1A_0F2A)
;;     2D1A:10A3 (in fn2D1A_0FA6)
;;     2D1A:10F1 (in fn2D1A_0FA6)
fn2068_00A8 proc
	push	bp
	mov	bp,sp
	sub	sp,0Ch
	push	si
	mov	ax,[10A8h]
	mov	[bp-2h],ax
	or	ax,ax
	jz	00C8h

l2068_00B9:
	push	ax
	call	far 2017h:000Fh
	add	sp,2h
	mov	[bp-0Ch],ax
	mov	[bp-0Ah],dx

l2068_00C8:
	push	cs
	call	007Ch
	mov	ax,[10AAh]
	mov	cl,0Ah
	shl	ax,cl
	push	ax
	call	far 3CEEh:0747h
	add	sp,2h
	mov	[bp-6h],ax
	mov	[bp-4h],dx
	or	ax,dx
	jz	00FAh

l2068_00E6:
	push	cs
	call	007Ch
	push	word ptr [bp-4h]
	push	word ptr [bp-6h]
	call	far 3CEEh:0732h
	add	sp,4h
	jmp	0113h

l2068_00FA:
	mov	word ptr [bp-8h],0h

l2068_00FF:
	mov	bx,[bp-8h]
	shl	bx,1h
	mov	word ptr [bx+10AEh],0h
	inc	word ptr [bp-8h]
	cmp	word ptr [bp-8h],6h
	jbe	00FFh

l2068_0113:
	mov	word ptr [10ACh],0h
	mov	word ptr [bp-8h],1h

l2068_011E:
	mov	si,[bp-8h]
	shl	si,1h
	mov	ax,[si+10AEh]
	mul	word ptr [si+10BCh]
	add	[10ACh],ax
	inc	word ptr [bp-8h]
	cmp	word ptr [bp-8h],6h
	jbe	011Eh

l2068_0138:
	cmp	word ptr [bp-2h],0h
	jz	014Ch

l2068_013E:
	push	word ptr [bp-0Ah]
	push	word ptr [bp-0Ch]
	call	far 2017h:0033h
	add	sp,4h

l2068_014C:
	mov	ax,[10ACh]
	pop	si
	mov	sp,bp
	pop	bp
	retf

;; fn2068_0154: 2068:0154
;;   Called from:
;;     21DC:06BD (in fn21DC_0696)
;;     21DC:073B (in fn21DC_0718)
;;     21DC:09A1 (in fn21DC_097E)
fn2068_0154 proc
	push	bp
	mov	bp,sp
	mov	ax,5B3Ch
	push	ds
	push	ax
	push	word ptr [bp+0Ah]
	call	far 20B2h:0E9Eh
	add	sp,6h
	mov	ax,1h
	push	ax
	call	far 3CEEh:01B7h
