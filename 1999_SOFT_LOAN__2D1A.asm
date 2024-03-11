;;; Segment 2D1A (2D1A:0000)
2D1A:0000 D2 10 05 00 8B E5 5D CB                         ......].        

;; fn2D1A_0008: 2D1A:0008
;;   Called from:
;;     21DC:10CC (in fn21DC_0EC2)
fn2D1A_0008 proc
	mov	ax,200h
	push	ax
	mov	ax,147Ah
	push	ds
	push	ax
	call	far 21DCh:06DCh
	add	sp,6h
	or	ax,ax
	jz	0038h

l2D1A_001D:
	mov	ax,200h
	push	ax
	sub	ax,ax
	push	ax
	push	word ptr [147Ch]
	push	word ptr [147Ah]
	call	far 2017h:0228h
	add	sp,8h
	mov	ax,1h
	retf

l2D1A_0038:
	sub	ax,ax
	retf
2D1A:003B                                  90                        .    

;; fn2D1A_003C: 2D1A:003C
;;   Called from:
;;     2D1A:0373 (in fn2D1A_02FC)
;;     2D1A:0475 (in fn2D1A_03E4)
;;     2D1A:0B4B (in fn2D1A_0B04)
fn2D1A_003C proc
	push	bp
	mov	bp,sp
	sub	sp,14h
	push	si
	mov	bx,[bp+6h]
	shl	bx,1h
	shl	bx,1h
	les	si,[147Ah]
	mov	ax,es:[bx+si]
	mov	dx,es:[bx+si+2h]
	mov	[bp-0Ch],ax
	mov	[bp-0Ah],dx
	les	bx,[bp-0Ch]
	cmp	word ptr es:[bx+1Ch],0h
	jnz	0068h

l2D1A_0065:
	jmp	016Bh

l2D1A_0068:
	test	byte ptr es:[bx],4h
	jz	0071h

l2D1A_006E:
	jmp	016Bh

l2D1A_0071:
	sub	ax,ax
	push	ax
	push	word ptr es:[bx+8h]
	mov	ax,es:[bx+1Eh]
	sub	dx,dx
	add	ax,es:[bx+12h]
	adc	dx,es:[bx+14h]
	sub	ax,1h
	sbb	dx,0h
	push	dx
	push	ax
	call	far 3CEEh:05A6h
	les	bx,[bp-0Ch]
	add	ax,es:[bx+6h]
	adc	dx,0h
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	and	ah,1h
	mov	[bp-8h],ax
	and	word ptr [bp-4h],0FE00h
	mov	ax,es:[bx+6h]
	sub	dx,dx
	cmp	dx,[bp-2h]
	jc	00D6h

l2D1A_00B9:
	ja	00C0h

l2D1A_00BB:
	cmp	ax,[bp-4h]
	jbe	00D6h

l2D1A_00C0:
	mov	ax,es:[bx+6h]
	sub	ax,[bp-4h]
	sub	[bp-8h],ax
	mov	ax,es:[bx+6h]
	mov	[bp-4h],ax
	mov	word ptr [bp-2h],0h

l2D1A_00D6:
	mov	ax,es:[bx+8h]
	mul	word ptr es:[bx+1Eh]
	add	ax,es:[bx+16h]
	sub	ax,[bp-8h]
	mov	[bp-6h],ax
	sub	ax,ax
	push	ax
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	push	word ptr es:[bx+2h]
	call	far 208Fh:0115h
	add	sp,8h
	les	bx,[bp-0Ch]
	mov	ax,es:[bx+20h]
	sub	ax,es:[bx+1Eh]
	inc	ax
	mul	word ptr es:[bx+8h]
	add	ax,[bp-8h]
	mov	[bp-12h],ax
	cmp	word ptr es:[bx+0Ah],0h
	jz	0128h

l2D1A_011A:
	push	word ptr es:[bx+0Ah]
	call	far 2C27h:0440h
	add	sp,2h
	jmp	0133h

l2D1A_0128:
	les	bx,[bp-0Ch]
	mov	ax,es:[bx+0Ch]
	mov	dx,es:[bx+0Eh]

l2D1A_0133:
	add	ax,[bp-6h]
	mov	[bp-10h],ax
	mov	[bp-0Eh],dx
	push	word ptr [bp-12h]
	push	dx
	push	ax
	les	bx,[bp-0Ch]
	push	word ptr es:[bx+2h]
	call	far 208Fh:00EFh
	add	sp,8h
	mov	[bp-14h],ax
	mov	ax,[bp-12h]
	cmp	[bp-14h],ax
	jz	016Bh

l2D1A_015B:
	mov	ax,5EB6h
	push	ds
	push	ax
	sub	ax,ax
	push	ax
	call	far 20B2h:10ACh
	add	sp,6h

l2D1A_016B:
	les	bx,[bp-0Ch]
	mov	word ptr es:[bx+1Eh],0h
	mov	word ptr es:[bx+20h],0h
	mov	word ptr es:[bx+1Ch],0h
	pop	si
	mov	sp,bp
	pop	bp
	retf
2D1A:0185                90                                    .          

;; fn2D1A_0186: 2D1A:0186
;;   Called from:
;;     2D1A:0360 (in fn2D1A_02FC)
;;     2D1A:0389 (in fn2D1A_02FC)
;;     2D1A:04BC (in fn2D1A_03E4)
fn2D1A_0186 proc
	push	bp
	mov	bp,sp
	sub	sp,14h
	push	si
	mov	ax,[bp+0Ah]
	mov	dx,[bp+0Ch]
	sub	ax,1h
	sbb	dx,0h
	push	dx
	push	ax
	les	bx,[bp+6h]
	sub	ax,ax
	push	ax
	push	word ptr es:[bx+8h]
	call	far 3CEEh:05A6h
	les	bx,[bp+6h]
	add	ax,es:[bx+6h]
	adc	dx,0h
	mov	[bp-10h],ax
	mov	[bp-0Eh],dx
	and	ax,0FE00h
	mov	[bp-14h],ax
	mov	[bp-12h],dx
	mov	ax,es:[bx+6h]
	sub	dx,dx
	cmp	dx,[bp-12h]
	jc	01E1h

l2D1A_01CE:
	ja	01D5h

l2D1A_01D0:
	cmp	ax,[bp-14h]
	jbe	01E1h

l2D1A_01D5:
	mov	ax,es:[bx+6h]
	mov	[bp-14h],ax
	mov	word ptr [bp-12h],0h

l2D1A_01E1:
	sub	ax,ax
	push	ax
	push	word ptr [bp-12h]
	push	word ptr [bp-14h]
	push	word ptr es:[bx+2h]
	call	far 208Fh:0115h
	add	sp,8h
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+0Ah],0h
	jz	020Eh

l2D1A_0200:
	push	word ptr es:[bx+0Ah]
	call	far 2C27h:0440h
	add	sp,2h
	jmp	0219h

l2D1A_020E:
	les	bx,[bp+6h]
	mov	ax,es:[bx+0Ch]
	mov	dx,es:[bx+0Eh]

l2D1A_0219:
	mov	[bp-8h],ax
	mov	[bp-6h],dx
	mov	ax,[bp+0Eh]
	mov	[bp-0Ah],ax
	push	ax
	push	dx
	push	word ptr [bp-8h]
	les	bx,[bp+6h]
	push	word ptr es:[bx+2h]
	call	far 208Fh:00C9h
	add	sp,8h
	mov	[bp-0Ah],ax
	mov	ax,[bp-10h]
	sub	ax,[bp-14h]
	mov	[bp-0Ch],ax
	sub	dx,dx
	les	bx,[bp+6h]
	div	word ptr es:[bx+8h]
	mov	cx,[bp+0Ah]
	mov	bx,[bp+0Ch]
	sub	cx,ax
	sbb	bx,0h
	mov	si,[bp+6h]
	mov	es:[si+12h],cx
	mov	es:[si+14h],bx
	mov	ax,[bp-0Ch]
	sub	dx,dx
	mov	bx,si
	div	word ptr es:[bx+8h]
	mov	es:[bx+16h],dx
	mov	ax,[bp-0Ah]
	sub	ax,dx
	sub	dx,dx
	div	word ptr es:[bx+8h]
	mov	es:[bx+18h],ax
	mov	word ptr es:[bx+1Ah],0h
	cmp	word ptr es:[bx+4h],0h
	jz	02F3h

l2D1A_028F:
	mov	bx,es:[bx+4h]
	shl	bx,1h
	shl	bx,1h
	les	si,[130Ah]
	mov	ax,es:[bx+si]
	mov	dx,es:[bx+si+2h]
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	les	bx,[bp+6h]
	mov	ax,es:[bx+12h]
	mov	dx,es:[bx+14h]
	add	ax,es:[bx+18h]
	adc	dx,es:[bx+1Ah]
	sub	ax,1h
	sbb	dx,0h
	les	bx,[bp-4h]
	cmp	dx,es:[bx+2Eh]
	jl	02F3h

l2D1A_02CA:
	jg	02D2h

l2D1A_02CC:
	cmp	ax,es:[bx+2Ch]
	jbe	02F3h

l2D1A_02D2:
	mov	ax,es:[bx+2Ch]
	mov	dx,es:[bx+2Eh]
	les	bx,[bp+6h]
	sub	ax,es:[bx+12h]
	sbb	dx,es:[bx+14h]
	add	ax,1h
	adc	dx,0h
	mov	es:[bx+18h],ax
	mov	es:[bx+1Ah],dx

l2D1A_02F3:
	mov	ax,[bp-0Ah]
	pop	si
	mov	sp,bp
	pop	bp
	retf
2D1A:02FB                                  90                        .    

;; fn2D1A_02FC: 2D1A:02FC
;;   Called from:
;;     2644:20D1 (in fn2644_20AA)
fn2D1A_02FC proc
	push	bp
	mov	bp,sp
	sub	sp,0Eh
	push	si
	mov	bx,[bp+6h]
	shl	bx,1h
	shl	bx,1h
	les	si,[147Ah]
	mov	ax,es:[bx+si]
	mov	dx,es:[bx+si+2h]
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	mov	ax,[bp+8h]
	mov	dx,[bp+0Ah]
	les	bx,[bp-4h]
	sub	ax,es:[bx+12h]
	sbb	dx,es:[bx+14h]
	mov	[bp-0Eh],ax
	mov	[bp-0Ch],dx
	or	dx,dx
	jl	0344h

l2D1A_0336:
	cmp	es:[bx+1Ah],dx
	jg	03A7h

l2D1A_033C:
	jl	0344h

l2D1A_033E:
	cmp	es:[bx+18h],ax
	ja	03A7h

l2D1A_0344:
	test	byte ptr es:[bx],1h
	jz	0370h

l2D1A_034A:
	mov	ax,es:[bx+18h]
	or	ax,es:[bx+1Ah]
	jnz	0367h

l2D1A_0354:
	push	word ptr es:[bx+10h]
	mov	ax,1h
	cwd
	push	dx
	push	ax
	push	es
	push	bx
	push	cs
	call	0186h
	add	sp,0Ah

l2D1A_0367:
	sub	ax,ax
	cwd
	pop	si
	mov	sp,bp
	pop	bp
	retf
2D1A:036F                                              90                .

l2D1A_0370:
	push	word ptr [bp+6h]
	push	cs
	call	003Ch
	add	sp,2h
	les	bx,[bp-4h]
	push	word ptr es:[bx+10h]
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	es
	push	bx
	push	cs
	call	0186h
	add	sp,0Ah
	mov	ax,[bp+8h]
	mov	dx,[bp+0Ah]
	les	bx,[bp-4h]
	sub	ax,es:[bx+12h]
	sbb	dx,es:[bx+14h]
	mov	[bp-0Eh],ax
	mov	[bp-0Ch],dx

l2D1A_03A7:
	mov	ax,es:[bx+8h]
	mul	word ptr [bp-0Eh]
	add	ax,es:[bx+16h]
	mov	[bp-0Ah],ax
	cmp	word ptr es:[bx+0Ah],0h
	jz	03CAh

l2D1A_03BC:
	push	word ptr es:[bx+0Ah]
	call	far 2C27h:0440h
	add	sp,2h
	jmp	03D5h

l2D1A_03CA:
	les	bx,[bp-4h]
	mov	ax,es:[bx+0Ch]
	mov	dx,es:[bx+0Eh]

l2D1A_03D5:
	add	ax,[bp-0Ah]
	mov	[bp-8h],ax
	mov	[bp-6h],dx
	pop	si
	mov	sp,bp
	pop	bp
	retf
2D1A:03E3          90                                        .            

;; fn2D1A_03E4: 2D1A:03E4
;;   Called from:
;;     2644:21F9 (in fn2644_21CA)
fn2D1A_03E4 proc
	push	bp
	mov	bp,sp
	sub	sp,0Eh
	push	si
	mov	bx,[bp+6h]
	shl	bx,1h
	shl	bx,1h
	les	si,[147Ah]
	mov	ax,es:[bx+si]
	mov	dx,es:[bx+si+2h]
	mov	[bp-8h],ax
	mov	[bp-6h],dx
	mov	ax,[bp+8h]
	mov	dx,[bp+0Ah]
	les	bx,[bp-8h]
	sub	ax,es:[bx+12h]
	sbb	dx,es:[bx+14h]
	mov	[bp-0Eh],ax
	mov	[bp-0Ch],dx
	mov	ax,es:[bx+18h]
	or	ax,es:[bx+1Ah]
	jz	0442h

l2D1A_0424:
	or	dx,dx
	jl	0439h

l2D1A_0428:
	mov	ax,[bp-0Eh]
	cmp	es:[bx+1Ah],dx
	jg	0442h

l2D1A_0431:
	jl	0439h

l2D1A_0433:
	cmp	es:[bx+18h],ax
	jnc	0442h

l2D1A_0439:
	sub	ax,ax
	cwd
	pop	si
	mov	sp,bp
	pop	bp
	retf
2D1A:0441    90                                            .              

l2D1A_0442:
	mov	ax,[bp-0Eh]
	mov	dx,[bp-0Ch]
	cmp	es:[bx+18h],ax
	jnz	0489h

l2D1A_044E:
	cmp	es:[bx+1Ah],dx
	jnz	0489h

l2D1A_0454:
	mov	ax,es:[bx+10h]
	sub	ax,es:[bx+16h]
	sub	dx,dx
	div	word ptr es:[bx+8h]
	sub	dx,dx
	cmp	dx,es:[bx+1Ah]
	ja	0489h

l2D1A_046A:
	jc	0472h

l2D1A_046C:
	cmp	ax,es:[bx+18h]
	ja	0489h

l2D1A_0472:
	push	word ptr [bp+6h]
	push	cs
	call	003Ch
	add	sp,2h
	les	bx,[bp-8h]
	sub	ax,ax
	mov	es:[bx+1Ah],ax
	mov	es:[bx+18h],ax

l2D1A_0489:
	mov	ax,es:[bx+18h]
	or	ax,es:[bx+1Ah]
	jnz	04E2h

l2D1A_0493:
	test	byte ptr es:[bx],4h
	jz	04B0h

l2D1A_0499:
	mov	ax,[bp+8h]
	mov	dx,[bp+0Ah]
	mov	es:[bx+12h],ax
	mov	es:[bx+14h],dx
	mov	word ptr es:[bx+16h],0h
	jmp	04C3h
2D1A:04AF                                              90                .

l2D1A_04B0:
	mov	ax,200h
	push	ax
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	es
	push	bx
	push	cs
	call	0186h
	add	sp,0Ah

l2D1A_04C3:
	mov	ax,[bp+8h]
	mov	dx,[bp+0Ah]
	les	bx,[bp-8h]
	sub	ax,es:[bx+12h]
	sbb	dx,es:[bx+14h]
	mov	[bp-0Eh],ax
	mov	[bp-0Ch],dx
	mov	es:[bx+18h],ax
	mov	es:[bx+1Ah],dx

l2D1A_04E2:
	mov	ax,es:[bx+8h]
	mul	word ptr [bp-0Eh]
	add	ax,es:[bx+16h]
	mov	[bp-0Ah],ax
	cmp	word ptr es:[bx+0Ah],0h
	jz	0506h

l2D1A_04F7:
	push	word ptr es:[bx+0Ah]
	call	far 2C27h:0440h
	add	sp,2h
	jmp	0511h
2D1A:0505                90                                    .          

l2D1A_0506:
	les	bx,[bp-8h]
	mov	ax,es:[bx+0Ch]
	mov	dx,es:[bx+0Eh]

l2D1A_0511:
	add	ax,[bp-0Ah]
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	les	bx,[bp-8h]
	push	word ptr es:[bx+8h]
	push	word ptr [bp+0Eh]
	push	word ptr [bp+0Ch]
	push	dx
	push	ax
	call	far 2017h:0258h
	add	sp,0Ah
	les	bx,[bp-8h]
	mov	ax,[bp-0Eh]
	mov	dx,[bp-0Ch]
	cmp	es:[bx+18h],ax
	jnz	0550h

l2D1A_0540:
	cmp	es:[bx+1Ah],dx
	jnz	0550h

l2D1A_0546:
	add	word ptr es:[bx+18h],1h
	adc	word ptr es:[bx+1Ah],0h

l2D1A_0550:
	cmp	word ptr es:[bx+1Ch],0h
	jnz	0566h

l2D1A_0557:
	mov	word ptr es:[bx+1Ch],1h
	mov	ax,[bp-0Eh]
	mov	es:[bx+1Eh],ax
	jmp	0588h

l2D1A_0566:
	mov	ax,es:[bx+1Eh]
	sub	ax,[bp-0Eh]
	sbb	cx,cx
	and	ax,cx
	add	ax,[bp-0Eh]
	mov	es:[bx+1Eh],ax
	mov	ax,es:[bx+20h]
	sub	ax,[bp-0Eh]
	sbb	cx,cx
	not	cx
	and	ax,cx
	add	ax,[bp-0Eh]

l2D1A_0588:
	mov	es:[bx+20h],ax
	mov	ax,[bp-4h]
	mov	dx,[bp-2h]
	pop	si
	mov	sp,bp
	pop	bp
	retf
2D1A:0597                      90                                .        

;; fn2D1A_0598: 2D1A:0598
;;   Called from:
;;     2B41:001A (in fn2B41_0006)
fn2D1A_0598 proc
	push	bp
	mov	bp,sp
	sub	sp,0Ah
	push	si
	mov	bx,[bp+6h]
	shl	bx,1h
	shl	bx,1h
	les	si,[147Ah]
	mov	ax,es:[bx+si]
	mov	dx,es:[bx+si+2h]
	mov	[bp-0Ah],ax
	mov	[bp-8h],dx
	les	bx,[bp-0Ah]
	cmp	word ptr es:[bx+0Ah],0h
	jz	05D0h

l2D1A_05C1:
	push	word ptr es:[bx+0Ah]
	call	far 2C27h:0440h
	add	sp,2h
	jmp	05DBh
2D1A:05CF                                              90                .

l2D1A_05D0:
	les	bx,[bp-0Ah]
	mov	ax,es:[bx+0Ch]
	mov	dx,es:[bx+0Eh]

l2D1A_05DB:
	mov	[bp-6h],ax
	mov	[bp-4h],dx
	les	bx,[bp-0Ah]
	mov	ax,es:[bx+18h]
	or	ax,es:[bx+1Ah]
	jnz	0615h

l2D1A_05EE:
	push	word ptr es:[bx+10h]
	push	dx
	push	word ptr [bp-6h]
	push	word ptr es:[bx+2h]
	call	far 208Fh:00C9h
	add	sp,8h
	les	bx,[bp-0Ah]
	mov	es:[bx+18h],ax
	mov	word ptr es:[bx+1Ah],0h
	mov	word ptr es:[bx+16h],0h

l2D1A_0615:
	mov	ax,es:[bx+18h]
	or	ax,es:[bx+1Ah]
	jz	0640h

l2D1A_061F:
	mov	bx,es:[bx+16h]
	les	si,[bp-6h]
	mov	al,es:[bx+si]
	mov	[bp-2h],al
	les	bx,[bp-0Ah]
	sub	word ptr es:[bx+18h],1h
	sbb	word ptr es:[bx+1Ah],0h
	inc	word ptr es:[bx+16h]
	jmp	0644h
2D1A:063F                                              90                .

l2D1A_0640:
	mov	byte ptr [bp-2h],1Ah

l2D1A_0644:
	mov	al,[bp-2h]
	sub	ah,ah
	pop	si
	mov	sp,bp
	pop	bp
	retf

;; fn2D1A_064E: 2D1A:064E
;;   Called from:
;;     2B41:006F (in fn2B41_0052)
;;     2D1A:0B3E (in fn2D1A_0B04)
fn2D1A_064E proc
	push	bp
	mov	bp,sp
	sub	sp,0Ah
	push	si
	mov	bx,[bp+6h]
	shl	bx,1h
	shl	bx,1h
	les	si,[147Ah]
	mov	ax,es:[bx+si]
	mov	dx,es:[bx+si+2h]
	mov	[bp-8h],ax
	mov	[bp-6h],dx
	les	bx,[bp-8h]
	cmp	word ptr es:[bx+0Ah],0h
	jz	0686h

l2D1A_0677:
	push	word ptr es:[bx+0Ah]
	call	far 2C27h:0440h
	add	sp,2h
	jmp	0691h
2D1A:0685                90                                    .          

l2D1A_0686:
	les	bx,[bp-8h]
	mov	ax,es:[bx+0Ch]
	mov	dx,es:[bx+0Eh]

l2D1A_0691:
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	cmp	word ptr [bp+0Ch],0h
	jz	06BEh

l2D1A_069D:
	les	bx,[bp-8h]
	mov	ax,es:[bx+18h]
	mov	dx,es:[bx+1Ah]
	add	ax,[bp+0Ch]
	adc	dx,0h
	mov	cx,es:[bx+10h]
	sub	bx,bx
	cmp	dx,bx
	jc	0708h

l2D1A_06B8:
	ja	06BEh

l2D1A_06BA:
	cmp	ax,cx
	jbe	0708h

l2D1A_06BE:
	les	bx,[bp-8h]
	push	word ptr es:[bx+18h]
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	push	word ptr es:[bx+2h]
	call	far 208Fh:00EFh
	add	sp,8h
	mov	[bp-0Ah],ax
	les	bx,[bp-8h]
	sub	dx,dx
	cmp	es:[bx+18h],ax
	jnz	06EBh

l2D1A_06E5:
	cmp	es:[bx+1Ah],dx
	jz	06FBh

l2D1A_06EB:
	mov	ax,5EC0h
	push	ds
	push	ax
	sub	ax,ax
	push	ax
	call	far 20B2h:10ACh
	add	sp,6h

l2D1A_06FB:
	les	bx,[bp-8h]
	sub	ax,ax
	mov	es:[bx+1Ah],ax
	mov	es:[bx+18h],ax

l2D1A_0708:
	cmp	word ptr [bp+0Ch],0h
	jz	072Eh

l2D1A_070E:
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	mov	bx,[bp-8h]
	mov	ax,es:[bx+18h]
	add	ax,[bp-4h]
	mov	dx,[bp-2h]
	push	dx
	push	ax
	call	far 2017h:0258h
	add	sp,0Ah

l2D1A_072E:
	les	bx,[bp-8h]
	mov	ax,[bp+0Ch]
	sub	dx,dx
	add	es:[bx+18h],ax
	adc	es:[bx+1Ah],dx
	pop	si
	mov	sp,bp
	pop	bp
	retf
2D1A:0743          90                                        .            

;; fn2D1A_0744: 2D1A:0744
;;   Called from:
;;     2D1A:097C (in fn2D1A_090C)
fn2D1A_0744 proc
	push	bp
	mov	bp,sp
	push	si
	mov	bx,[bp+6h]
	shl	bx,1h
	shl	bx,1h
	les	si,[147Ah]
	les	bx,es:[bx+si]
	mov	ax,es:[bx+10h]
	pop	si
	pop	bp
	retf
2D1A:075D                                        90 55 8B              .U.
2D1A:0760 EC 83 EC 08 56 8B 5E 06 D1 E3 D1 E3 C4 36 7A 14 ....V.^......6z.
2D1A:0770 26 8B 00 26 8B 50 02 89 46 FC 89 56 FE 8B 46 08 &..&.P..F..V..F.
2D1A:0780 8B 56 0A C4 5E FC 26 2B 47 12 26 1B 57 14 89 46 .V..^.&+G.&.W..F
2D1A:0790 F8 89 56 FA 0B D2 7C 0E 26 39 57 1A 7F 10 7C 06 ..V...|.&9W...|.
2D1A:07A0 26 39 47 18 77 08 2B C0 5E 8B E5 5D CB 90 26 8B &9G.w.+.^..]..&.
2D1A:07B0 47 18 2B 46 F8 5E 8B E5 5D CB                   G.+F.^..].      

;; fn2D1A_07BA: 2D1A:07BA
;;   Called from:
;;     2D1A:086B (in fn2D1A_07F6)
fn2D1A_07BA proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	push	si
	mov	bx,[bp+6h]
	shl	bx,1h
	shl	bx,1h
	les	si,[147Ah]
	mov	ax,es:[bx+si]
	mov	dx,es:[bx+si+2h]
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	les	bx,[bp-4h]
	mov	ax,[bp+8h]
	mov	es:[bx+2h],ax
	mov	ax,[bp+0Ah]
	mov	es:[bx+6h],ax
	mov	ax,[bp+0Ch]
	mov	es:[bx+8h],ax
	pop	si
	mov	sp,bp
	pop	bp
	retf

;; fn2D1A_07F6: 2D1A:07F6
;;   Called from:
;;     2D1A:0965 (in fn2D1A_090C)
fn2D1A_07F6 proc
	push	bp
	mov	bp,sp
	sub	sp,8h
	push	si
	mov	bx,[bp+6h]
	shl	bx,1h
	shl	bx,1h
	les	si,[147Ah]
	mov	ax,es:[bx+si]
	mov	dx,es:[bx+si+2h]
	mov	[bp-8h],ax
	mov	[bp-6h],dx
	mov	bx,[bp+8h]
	shl	bx,1h
	shl	bx,1h
	les	si,[130Ah]
	mov	ax,es:[bx+si]
	mov	dx,es:[bx+si+2h]
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	or	ax,dx
	jz	087Eh

l2D1A_0831:
	les	bx,[bp-4h]
	cmp	word ptr es:[bx+30h],0h
	jnz	087Eh

l2D1A_083B:
	les	bx,[bp-8h]
	cmp	word ptr es:[bx+4h],0h
	jnz	087Eh

l2D1A_0845:
	les	bx,[bp-4h]
	mov	ax,[bp+6h]
	mov	es:[bx+30h],ax
	les	bx,[bp-8h]
	mov	ax,[bp+8h]
	mov	es:[bx+4h],ax
	les	bx,[bp-4h]
	push	word ptr es:[bx+20h]
	push	word ptr es:[bx+24h]
	push	word ptr es:[bx+34h]
	push	word ptr [bp+6h]
	push	cs
	call	07BAh
	add	sp,8h
	les	bx,[bp-8h]
	and	byte ptr es:[bx],0FBh
	pop	si
	mov	sp,bp
	pop	bp
	retf

l2D1A_087E:
	mov	ax,6h
	push	ax
	call	far 20B2h:0176h
	add	sp,2h
	pop	si
	mov	sp,bp
	pop	bp
	retf
2D1A:088F                                              90                .

;; fn2D1A_0890: 2D1A:0890
;;   Called from:
;;     2D1A:0B63 (in fn2D1A_0B04)
fn2D1A_0890 proc
	push	bp
	mov	bp,sp
	sub	sp,8h
	push	si
	mov	bx,[bp+6h]
	shl	bx,1h
	shl	bx,1h
	les	si,[147Ah]
	mov	ax,es:[bx+si]
	mov	dx,es:[bx+si+2h]
	mov	[bp-8h],ax
	mov	[bp-6h],dx
	mov	bx,[bp+8h]
	shl	bx,1h
	shl	bx,1h
	les	si,[130Ah]
	mov	ax,es:[bx+si]
	mov	dx,es:[bx+si+2h]
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	les	bx,[bp-4h]
	mov	ax,[bp+6h]
	cmp	es:[bx+30h],ax
	jnz	08FAh

l2D1A_08D3:
	les	bx,[bp-8h]
	mov	ax,[bp+8h]
	cmp	es:[bx+4h],ax
	jnz	08FAh

l2D1A_08DF:
	les	bx,[bp-4h]
	mov	word ptr es:[bx+30h],0h
	les	bx,[bp-8h]
	mov	word ptr es:[bx+4h],0h
	or	byte ptr es:[bx],4h
	pop	si
	mov	sp,bp
	pop	bp
	retf

l2D1A_08FA:
	mov	ax,7h
	push	ax
	call	far 20B2h:0176h
	add	sp,2h
	pop	si
	mov	sp,bp
	pop	bp
	retf
2D1A:090B                                  90                        .    

;; fn2D1A_090C: 2D1A:090C
;;   Called from:
;;     2D1A:0EB0 (in fn2D1A_0D38)
;;     2D1A:0EC0 (in fn2D1A_0D38)
;;     2D1A:0F1D (in fn2D1A_0ECE)
;;     2D1A:0F99 (in fn2D1A_0F2A)
;;     2D1A:10B7 (in fn2D1A_0FA6)
;;     2D1A:111F (in fn2D1A_0FA6)
fn2D1A_090C proc
	push	bp
	mov	bp,sp
	sub	sp,6h
	push	si
	mov	bx,[bp+6h]
	shl	bx,1h
	shl	bx,1h
	les	si,[130Ah]
	mov	ax,es:[bx+si]
	mov	dx,es:[bx+si+2h]
	mov	[bp-6h],ax
	mov	[bp-4h],dx
	mov	word ptr [bp-2h],0h
	or	ax,dx
	jz	09A5h

l2D1A_0934:
	les	bx,[bp-6h]
	cmp	word ptr es:[bx+3Ah],0h
	jnz	09A5h

l2D1A_093E:
	cmp	word ptr es:[bx+30h],0h
	jz	0950h

l2D1A_0945:
	push	word ptr es:[bx+30h]
	push	cs
	call	0B04h
	add	sp,2h

l2D1A_0950:
	push	word ptr [bp+0Ah]
	push	cs
	call	0A76h
	add	sp,2h
	mov	[bp-2h],ax
	or	ax,ax
	jz	09A5h

l2D1A_0961:
	push	word ptr [bp+6h]
	push	ax
	push	cs
	call	07F6h
	add	sp,4h
	push	word ptr [bp+8h]
	push	word ptr [bp-2h]
	push	cs
	call	0BD2h
	add	sp,4h
	push	word ptr [bp-2h]
	push	cs
	call	0744h
	add	sp,2h
	sub	dx,dx
	les	bx,[bp-6h]
	cmp	dx,es:[bx+22h]
	jg	09A5h

l2D1A_098E:
	jl	0996h

l2D1A_0990:
	cmp	ax,es:[bx+20h]
	jnc	09A5h

l2D1A_0996:
	push	word ptr [bp-2h]
	push	cs
	call	0B04h
	add	sp,2h
	mov	word ptr [bp-2h],0h

l2D1A_09A5:
	mov	ax,[bp-2h]
	pop	si
	mov	sp,bp
	pop	bp
	retf
2D1A:09AD                                        90 55 8B              .U.
2D1A:09B0 EC 83 EC 08 56 8B 5E 06 D1 E3 D1 E3 C4 36 7A 14 ....V.^......6z.
2D1A:09C0 26 8B 00 26 8B 50 02 89 46 F8 89 56 FA 8B 5E 0A &..&.P..F..V..^.
2D1A:09D0 D1 E3 D1 E3 C4 36 0A 13 26 8B 00 26 8B 50 02 89 .....6..&..&.P..
2D1A:09E0 46 FC 89 56 FE FF 76 08 FF 76 06 0E E8 A1 FE 83 F..V..v..v......
2D1A:09F0 C4 04 FF 76 0A FF 76 06 0E E8 FA FD 83 C4 04 83 ...v..v.........
2D1A:0A00 7E 0C 00 74 53 C4 5E F8 26 C7 47 1C 01 00 26 C7 ~..tS.^.&.G...&.
2D1A:0A10 47 1E 00 00 26 8B 47 18 48 26 89 47 20 C4 5E FC G...&.G.H&.G .^.
2D1A:0A20 26 8B 47 2C 26 8B 57 2E 05 01 00 83 D2 00 C4 5E &.G,&.W........^
2D1A:0A30 F8 26 89 47 12 26 89 57 14 26 8B 47 18 26 8B 57 .&.G.&.W.&.G.&.W
2D1A:0A40 1A C4 5E FC 26 01 47 2C 26 11 57 2E 26 C7 47 54 ..^.&.G,&.W.&.GT
2D1A:0A50 01 00 5E 8B E5 5D CB 90 C4 5E F8 2B C0 26 89 47 ..^..]...^.+.&.G
2D1A:0A60 14 26 89 47 12 26 89 47 1A 26 89 47 18 26 89 47 .&.G.&.G.&.G.&.G
2D1A:0A70 1C 5E 8B E5 5D CB                               .^..].          

;; fn2D1A_0A76: 2D1A:0A76
;;   Called from:
;;     2D1A:0953 (in fn2D1A_090C)
fn2D1A_0A76 proc
	push	bp
	mov	bp,sp
	sub	sp,6h
	push	si
	mov	word ptr [bp-6h],1h

l2D1A_0A82:
	mov	bx,[bp-6h]
	shl	bx,1h
	shl	bx,1h
	les	si,[147Ah]
	mov	ax,es:[bx+si]
	or	ax,es:[bx+si+2h]
	jz	0AA0h

l2D1A_0A96:
	inc	word ptr [bp-6h]
	cmp	word ptr [bp-6h],80h
	jc	0A82h

l2D1A_0AA0:
	cmp	word ptr [bp-6h],80h
	jnc	0AEAh

l2D1A_0AA7:
	mov	ax,22h
	push	ax
	call	far 21DCh:097Eh
	add	sp,2h
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	mov	bx,[bp-6h]
	shl	bx,1h
	shl	bx,1h
	les	si,[147Ah]
	mov	es:[bx+si],ax
	mov	es:[bx+si+2h],dx
	mov	ax,22h
	push	ax
	sub	ax,ax
	push	ax
	push	dx
	push	word ptr [bp-4h]
	call	far 2017h:0228h
	add	sp,8h
	les	bx,[bp-4h]
	mov	ax,[bp+6h]
	mov	es:[bx],ax
	jmp	0AFBh
2D1A:0AE9                            90                            .      

l2D1A_0AEA:
	mov	ax,8h
	push	ax
	call	far 20B2h:0176h
	add	sp,2h
	mov	word ptr [bp-6h],0h

l2D1A_0AFB:
	mov	ax,[bp-6h]
	pop	si
	mov	sp,bp
	pop	bp
	retf
2D1A:0B03          90                                        .            

;; fn2D1A_0B04: 2D1A:0B04
;;   Called from:
;;     2644:45FA (in fn2644_45CA)
;;     2644:4BCD (in fn2644_4B2E)
;;     2D1A:0949 (in fn2D1A_090C)
;;     2D1A:0999 (in fn2D1A_090C)
;;     2D1A:0F5B (in fn2D1A_0F2A)
;;     2D1A:0FC1 (in fn2D1A_0FA6)
;;     2D1A:1081 (in fn2D1A_0FA6)
fn2D1A_0B04 proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	push	si
	mov	bx,[bp+6h]
	shl	bx,1h
	shl	bx,1h
	les	si,[147Ah]
	mov	ax,es:[bx+si]
	mov	dx,es:[bx+si+2h]
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	or	ax,dx
	jnz	0B2Ah

l2D1A_0B27:
	jmp	0BCDh

l2D1A_0B2A:
	les	bx,[bp-4h]
	test	byte ptr es:[bx],10h
	jz	0B48h

l2D1A_0B33:
	sub	ax,ax
	push	ax
	mov	ax,5ECAh
	push	ds
	push	ax
	push	word ptr [bp+6h]
	push	cs
	call	064Eh
	add	sp,8h
	jmp	0B52h
2D1A:0B47                      90                                .        

l2D1A_0B48:
	push	word ptr [bp+6h]
	push	cs
	call	003Ch
	add	sp,2h

l2D1A_0B52:
	les	bx,[bp-4h]
	cmp	word ptr es:[bx+4h],0h
	jz	0B6Ah

l2D1A_0B5C:
	push	word ptr es:[bx+4h]
	push	word ptr [bp+6h]
	push	cs
	call	0890h
	add	sp,4h

l2D1A_0B6A:
	les	bx,[bp-4h]
	cmp	word ptr es:[bx+0Ah],0h
	jz	0B8Ch

l2D1A_0B74:
	push	word ptr es:[bx+0Ah]
	call	far 2C27h:03B4h
	add	sp,2h
	les	bx,[bp-4h]
	mov	word ptr es:[bx+0Ah],0h
	jmp	0BA7h
2D1A:0B8B                                  90                        .    

l2D1A_0B8C:
	cmp	word ptr es:[bx+10h],0h
	jz	0BA7h

l2D1A_0B93:
	push	word ptr es:[bx+10h]
	push	word ptr es:[bx+0Eh]
	push	word ptr es:[bx+0Ch]
	call	far 21DCh:09B4h
	add	sp,6h

l2D1A_0BA7:
	mov	ax,22h
	push	ax
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	call	far 21DCh:09B4h
	add	sp,6h
	mov	bx,[bp+6h]
	shl	bx,1h
	shl	bx,1h
	les	si,[147Ah]
	sub	ax,ax
	mov	es:[bx+si+2h],ax
	mov	es:[bx+si],ax

l2D1A_0BCD:
	pop	si
	mov	sp,bp
	pop	bp
	retf

;; fn2D1A_0BD2: 2D1A:0BD2
;;   Called from:
;;     2D1A:0972 (in fn2D1A_090C)
fn2D1A_0BD2 proc
	push	bp
	mov	bp,sp
	sub	sp,0Ah
	push	si
	mov	bx,[bp+6h]
	shl	bx,1h
	shl	bx,1h
	les	si,[147Ah]
	mov	ax,es:[bx+si]
	mov	dx,es:[bx+si+2h]
	mov	[bp-6h],ax
	mov	[bp-4h],dx
	cmp	word ptr [bp+8h],0h
	jz	0BFAh

l2D1A_0BF7:
	jmp	0CA1h

l2D1A_0BFA:
	call	far 2068h:00A8h
	les	bx,[bp-6h]
	test	byte ptr es:[bx],2h
	jnz	0C52h

l2D1A_0C08:
	mov	ax,4h
	push	ax
	call	far 2C27h:01F0h
	add	sp,2h
	mov	[bp-2h],ax
	cmp	word ptr [13B4h],0h
	jz	0C24h

l2D1A_0C1E:
	mov	ax,20h
	jmp	0C27h
2D1A:0C23          90                                        .            

l2D1A_0C24:
	mov	ax,10h

l2D1A_0C27:
	mov	[bp-0Ah],ax
	call	far 2E37h:02A0h
	cmp	ax,[bp-0Ah]
	jbe	0C3Fh

l2D1A_0C34:
	call	far 2E37h:02A0h
	sub	ax,[bp-0Ah]
	add	[bp-2h],ax

l2D1A_0C3F:
	mov	ax,[bp-2h]
	sub	ax,3Fh
	sbb	cx,cx
	and	ax,cx
	add	ax,3Fh
	mov	[bp-2h],ax
	mov	[bp+8h],ax

l2D1A_0C52:
	mov	word ptr [bp-8h],6h

l2D1A_0C57:
	mov	si,[bp-8h]
	shl	si,1h
	cmp	word ptr [si+10AEh],0h
	jz	0C6Ch

l2D1A_0C63:
	mov	ax,[bp+8h]
	cmp	[si+10BCh],ax
	jnc	0C71h

l2D1A_0C6C:
	dec	word ptr [bp-8h]
	jnz	0C57h

l2D1A_0C71:
	mov	si,[bp-8h]
	shl	si,1h
	mov	ax,[bp+8h]
	cmp	[si+10BCh],ax
	jc	0C91h

l2D1A_0C7F:
	mov	ax,[si+10BCh]
	mov	[bp+8h],ax
	les	bx,[bp-6h]
	or	byte ptr es:[bx],2h
	dec	word ptr [si+10AEh]

l2D1A_0C91:
	mov	ax,[bp+8h]
	sub	ax,3Fh
	sbb	cx,cx
	and	ax,cx
	add	ax,3Fh
	mov	[bp+8h],ax

l2D1A_0CA1:
	les	bx,[bp-6h]
	mov	ax,[bp+8h]
	mov	cl,0Ah
	shl	ax,cl
	mov	es:[bx+10h],ax
	test	byte ptr es:[bx],2h
	jz	0CCEh

l2D1A_0CB5:
	push	ax
	call	far 21DCh:097Eh
	add	sp,2h
	les	bx,[bp-6h]
	mov	es:[bx+0Ch],ax
	mov	es:[bx+0Eh],dx
	or	ax,dx
	jmp	0D17h
2D1A:0CCD                                        90                    .  

l2D1A_0CCE:
	call	far 2E37h:02A0h
	cmp	ax,10h
	jle	0D03h

l2D1A_0CD8:
	cmp	word ptr [13B4h],0h
	jz	0CF2h

l2D1A_0CDF:
	cmp	word ptr [bp+8h],20h
	jbe	0CF2h

l2D1A_0CE5:
	call	far 2E37h:02A0h
	sub	ax,[bp+8h]
	and	al,0F0h
	jmp	0CFAh
2D1A:0CF1    90                                            .              

l2D1A_0CF2:
	call	far 2E37h:02A0h
	sub	ax,[bp+8h]

l2D1A_0CFA:
	push	ax
	call	far 2E37h:04AEh
	add	sp,2h

l2D1A_0D03:
	push	word ptr [bp+8h]
	call	far 2C27h:0292h
	add	sp,2h
	les	bx,[bp-6h]
	mov	es:[bx+0Ah],ax
	or	ax,ax

l2D1A_0D17:
	jnz	0D1Fh

l2D1A_0D19:
	mov	word ptr es:[bx+10h],0h

l2D1A_0D1F:
	cmp	word ptr es:[bx+10h],0h
	jnz	0D32h

l2D1A_0D26:
	mov	ax,9h
	push	ax
	call	far 20B2h:0176h
	add	sp,2h

l2D1A_0D32:
	pop	si
	mov	sp,bp
	pop	bp
	retf
2D1A:0D37                      90                                .        

;; fn2D1A_0D38: 2D1A:0D38
;;   Called from:
;;     2D1A:1132 (in fn2D1A_0FA6)
fn2D1A_0D38 proc
	push	bp
	mov	bp,sp
	sub	sp,0Eh
	push	di
	push	si
	call	far 2068h:00A8h
	mov	word ptr [bp-4h],0h
	mov	word ptr [bp-8h],0h
	mov	word ptr [bp-6h],0h
	mov	word ptr [bp-0Ah],0h
	mov	ax,4h
	push	ax
	call	far 2C27h:01F0h
	add	sp,2h
	mov	[bp-2h],ax
	cmp	word ptr [13B4h],0h
	jz	0D74h

l2D1A_0D6F:
	mov	ax,20h
	jmp	0D77h

l2D1A_0D74:
	mov	ax,10h

l2D1A_0D77:
	mov	[bp-0Eh],ax
	call	far 2E37h:02A0h
	cmp	ax,[bp-0Eh]
	jbe	0D8Fh

l2D1A_0D84:
	call	far 2E37h:02A0h
	sub	ax,[bp-0Eh]
	add	[bp-2h],ax

l2D1A_0D8F:
	cmp	word ptr [13B4h],0h
	jz	0DA6h

l2D1A_0D96:
	mov	ax,[bp-2h]
	sub	ax,40h
	sbb	cx,cx
	and	ax,cx
	add	ax,40h
	mov	[bp-2h],ax

l2D1A_0DA6:
	mov	ax,[bp-2h]
	shr	ax,1h
	mov	[bp-4h],ax
	mov	[bp-8h],ax
	mov	word ptr [bp-0Ch],6h

l2D1A_0DB6:
	mov	si,[bp-0Ch]
	shl	si,1h
	cmp	word ptr [si+10AEh],0h
	jz	0DCBh

l2D1A_0DC2:
	mov	ax,[bp-4h]
	cmp	[si+10BCh],ax
	jnc	0DD0h

l2D1A_0DCB:
	dec	word ptr [bp-0Ch]
	jnz	0DB6h

l2D1A_0DD0:
	mov	si,[bp-0Ch]
	shl	si,1h
	mov	ax,[bp-4h]
	cmp	[si+10BCh],ax
	jc	0DF1h

l2D1A_0DDE:
	add	[bp-8h],ax
	mov	ax,[si+10BCh]
	mov	[bp-4h],ax
	mov	word ptr [bp-6h],2h
	dec	word ptr [si+10AEh]

l2D1A_0DF1:
	mov	word ptr [bp-0Ch],6h

l2D1A_0DF6:
	mov	si,[bp-0Ch]
	shl	si,1h
	cmp	word ptr [si+10AEh],0h
	jz	0E0Bh

l2D1A_0E02:
	mov	ax,[bp-8h]
	cmp	[si+10BCh],ax
	jnc	0E10h

l2D1A_0E0B:
	dec	word ptr [bp-0Ch]
	jnz	0DF6h

l2D1A_0E10:
	mov	si,[bp-0Ch]
	shl	si,1h
	mov	ax,[bp-8h]
	cmp	[si+10BCh],ax
	jc	0E2Eh

l2D1A_0E1E:
	mov	ax,[si+10BCh]
	mov	[bp-8h],ax
	mov	word ptr [bp-0Ah],2h
	dec	word ptr [si+10AEh]

l2D1A_0E2E:
	mov	ax,[bp-4h]
	sub	ax,3Fh
	sbb	cx,cx
	and	ax,cx
	add	ax,3Fh
	mov	[bp-4h],ax
	mov	ax,[bp-8h]
	sub	ax,3Fh
	sbb	cx,cx
	and	ax,cx
	add	ax,3Fh
	mov	[bp-8h],ax
	mov	bx,[bp+6h]
	shl	bx,1h
	shl	bx,1h
	les	si,[130Ah]
	les	bx,es:[bx+si]
	cmp	word ptr es:[bx+62h],0h
	jz	0E67h

l2D1A_0E63:
	or	byte ptr [bp-6h],1h

l2D1A_0E67:
	mov	bx,[bp+6h]
	shl	bx,1h
	shl	bx,1h
	les	di,[130Ah]
	les	bx,es:[bx+di]
	mov	si,es:[bx+32h]
	cmp	si,1h
	jz	0E83h

l2D1A_0E7E:
	cmp	si,2h
	jnz	0E87h

l2D1A_0E83:
	or	byte ptr [bp-6h],10h

l2D1A_0E87:
	mov	bx,[bp+8h]
	shl	bx,1h
	shl	bx,1h
	les	di,[130Ah]
	les	bx,es:[bx+di]
	mov	si,es:[bx+32h]
	cmp	si,1h
	jz	0EA3h

l2D1A_0E9E:
	cmp	si,2h
	jnz	0EA7h

l2D1A_0EA3:
	or	byte ptr [bp-0Ah],10h

l2D1A_0EA7:
	push	word ptr [bp-6h]
	push	word ptr [bp-4h]
	push	word ptr [bp+6h]
	push	cs
	call	090Ch
	add	sp,6h
	push	word ptr [bp-0Ah]
	push	word ptr [bp-8h]
	push	word ptr [bp+8h]
	push	cs
	call	090Ch
	add	sp,6h
	pop	si
	pop	di
	mov	sp,bp
	pop	bp
	retf
2D1A:0ECD                                        90                    .  

;; fn2D1A_0ECE: 2D1A:0ECE
;;   Called from:
;;     2D1A:1156 (in fn2D1A_0FA6)
fn2D1A_0ECE proc
	push	bp
	mov	bp,sp
	sub	sp,2h
	push	di
	push	si
	mov	word ptr [bp-2h],0h
	mov	bx,[bp+6h]
	shl	bx,1h
	shl	bx,1h
	les	si,[130Ah]
	les	bx,es:[bx+si]
	cmp	word ptr es:[bx+62h],0h
	jz	0EF4h

l2D1A_0EF0:
	or	byte ptr [bp-2h],3h

l2D1A_0EF4:
	mov	bx,[bp+6h]
	shl	bx,1h
	shl	bx,1h
	les	di,[130Ah]
	les	bx,es:[bx+di]
	mov	si,es:[bx+32h]
	cmp	si,1h
	jz	0F10h

l2D1A_0F0B:
	cmp	si,2h
	jnz	0F14h

l2D1A_0F10:
	or	byte ptr [bp-2h],10h

l2D1A_0F14:
	push	word ptr [bp-2h]
	sub	ax,ax
	push	ax
	push	word ptr [bp+6h]
	push	cs
	call	090Ch
	add	sp,6h
	pop	si
	pop	di
	mov	sp,bp
	pop	bp
	retf

;; fn2D1A_0F2A: 2D1A:0F2A
;;   Called from:
;;     2D1A:1002 (in fn2D1A_0FA6)
;;     2D1A:1162 (in fn2D1A_0FA6)
fn2D1A_0F2A proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	push	si
	mov	bx,[bp+6h]
	shl	bx,1h
	shl	bx,1h
	les	si,[130Ah]
	mov	ax,es:[bx+si]
	mov	dx,es:[bx+si+2h]
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	or	ax,dx
	jz	0FA0h

l2D1A_0F4D:
	les	bx,[bp-4h]
	cmp	word ptr es:[bx+30h],0h
	jz	0F62h

l2D1A_0F57:
	push	word ptr es:[bx+30h]
	push	cs
	call	0B04h
	add	sp,2h

l2D1A_0F62:
	les	bx,[bp-4h]
	cmp	word ptr es:[bx+3Ah],0h
	jnz	0FA0h

l2D1A_0F6C:
	cmp	word ptr es:[bx+62h],0h
	jnz	0FA0h

l2D1A_0F73:
	cmp	word ptr es:[bx+22h],0h
	jg	0FA0h

l2D1A_0F7A:
	jl	0F84h

l2D1A_0F7C:
	cmp	word ptr es:[bx+20h],1000h
	jnc	0FA0h

l2D1A_0F84:
	call	far 2068h:00A8h
	or	ax,ax
	jz	0FA0h

l2D1A_0F8D:
	mov	ax,0Ah
	push	ax
	mov	ax,4h
	push	ax
	push	word ptr [12FCh]
	push	cs
	call	090Ch
	add	sp,6h

l2D1A_0FA0:
	pop	si
	mov	sp,bp
	pop	bp
	retf
2D1A:0FA5                90                                    .          

;; fn2D1A_0FA6: 2D1A:0FA6
;;   Called from:
;;     2D1A:11CE (in fn2D1A_11C0)
fn2D1A_0FA6 proc
	push	bp
	mov	bp,sp
	sub	sp,0Ah
	push	si
	cmp	word ptr [bp+6h],0h
	jz	0FB6h

l2D1A_0FB3:
	jmp	103Ah

l2D1A_0FB6:
	mov	word ptr [bp-0Ah],0h
	jmp	0FCBh
2D1A:0FBD                                        90                    .  

l2D1A_0FBE:
	push	word ptr [bp-0Ah]
	push	cs
	call	0B04h

l2D1A_0FC5:
	add	sp,2h

l2D1A_0FC8:
	inc	word ptr [bp-0Ah]

l2D1A_0FCB:
	cmp	word ptr [bp-0Ah],80h
	jnc	1008h

l2D1A_0FD2:
	mov	bx,[bp-0Ah]
	shl	bx,1h
	shl	bx,1h
	les	si,[147Ah]
	mov	ax,es:[bx+si]
	mov	dx,es:[bx+si+2h]
	mov	[bp-8h],ax
	mov	[bp-6h],dx
	or	ax,dx
	jz	0FC8h

l2D1A_0FEE:
	les	bx,[bp-8h]
	test	byte ptr es:[bx],8h
	jnz	0FC8h

l2D1A_0FF7:
	cmp	word ptr es:[bx+4h],0h
	jz	0FBEh

l2D1A_0FFE:
	push	word ptr es:[bx+4h]
	push	cs
	call	0F2Ah
	jmp	0FC5h

l2D1A_1008:
	sub	ax,ax
	push	ax
	call	far 2C27h:01F0h
	add	sp,2h
	or	ax,ax
	jnz	101Ah

l2D1A_1017:
	jmp	11B2h

l2D1A_101A:
	sub	ax,ax
	push	ax
	call	far 2C27h:01F0h
	add	sp,2h
	mov	si,ax
	call	far 2E37h:02A0h
	add	ax,si
	push	ax
	call	far 2E37h:04BEh

l2D1A_1034:
	add	sp,2h
	jmp	11B2h

l2D1A_103A:
	mov	ax,[bp+6h]
	sub	ax,1h
	cmp	ax,23h
	jbe	1048h

l2D1A_1045:
	jmp	11B2h

l2D1A_1048:
	add	ax,ax
	xchg	bx,ax
	jmp	word ptr cs:[bx+116Ah]

l2D1A_1050:
	mov	bx,[1300h]
	shl	bx,1h
	shl	bx,1h
	les	si,[130Ah]
	mov	ax,es:[bx+si]
	mov	dx,es:[bx+si+2h]
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	les	bx,[bp-4h]
	cmp	word ptr es:[bx+64h],0h
	jnz	1076h

l2D1A_1073:
	jmp	112Ah

l2D1A_1076:
	cmp	word ptr es:[bx+30h],0h
	jz	1088h

l2D1A_107D:
	push	word ptr es:[bx+30h]
	push	cs
	call	0B04h
	add	sp,2h

l2D1A_1088:
	les	bx,[bp-4h]
	cmp	word ptr es:[bx+3Ah],0h
	jnz	10BEh

l2D1A_1092:
	cmp	word ptr es:[bx+22h],0h
	jg	10BEh

l2D1A_1099:
	jl	10A3h

l2D1A_109B:
	cmp	word ptr es:[bx+20h],1000h
	jnc	10BEh

l2D1A_10A3:
	call	far 2068h:00A8h
	or	ax,ax
	jz	10BEh

l2D1A_10AC:
	mov	ax,2h
	push	ax
	sub	ax,ax
	push	ax
	push	word ptr [1300h]
	push	cs
	call	090Ch
	add	sp,6h

l2D1A_10BE:
	mov	bx,[12FEh]
	shl	bx,1h
	shl	bx,1h
	les	si,[130Ah]
	mov	ax,es:[bx+si]
	mov	dx,es:[bx+si+2h]
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	les	bx,[bp-4h]
	cmp	word ptr es:[bx+22h],0h
	jle	10E4h

l2D1A_10E1:
	jmp	11B2h

l2D1A_10E4:
	jl	10F1h

l2D1A_10E6:
	cmp	word ptr es:[bx+20h],1000h
	jc	10F1h

l2D1A_10EE:
	jmp	11B2h

l2D1A_10F1:
	call	far 2068h:00A8h
	or	ax,ax
	jnz	10FDh

l2D1A_10FA:
	jmp	11B2h

l2D1A_10FD:
	les	bx,[bp-4h]
	cmp	word ptr es:[bx+32h],1h
	jz	110Eh

l2D1A_1107:
	cmp	word ptr es:[bx+32h],2h
	jnz	1114h

l2D1A_110E:
	mov	ax,12h
	jmp	1117h
2D1A:1113          90                                        .            

l2D1A_1114:
	mov	ax,2h

l2D1A_1117:
	push	ax
	sub	ax,ax
	push	ax
	push	word ptr [12FEh]
	push	cs
	call	090Ch
	add	sp,6h
	jmp	11B2h
2D1A:1129                            90                            .      

l2D1A_112A:
	push	word ptr [1300h]
	push	word ptr [12FEh]
	push	cs
	call	0D38h
	add	sp,4h
	jmp	11B2h
2D1A:113B                                  90                        .    

l2D1A_113C:
	mov	bx,[12FCh]
	shl	bx,1h
	shl	bx,1h
	les	si,[130Ah]
	les	bx,es:[bx+si]
	cmp	word ptr es:[bx+64h],0h
	jnz	11B2h

l2D1A_1152:
	push	word ptr [12FCh]
	push	cs
	call	0ECEh
	jmp	1034h
2D1A:115D                                        90                    .  

l2D1A_115E:
	push	word ptr [12FCh]
	push	cs
	call	0F2Ah
	jmp	1034h
2D1A:1169                            90                            .      
l2D1A_116A	dw	0x112A
l2D1A_116C	dw	0x112A
l2D1A_116E	dw	0x112A
l2D1A_1170	dw	0x1050
l2D1A_1172	dw	0x1050
l2D1A_1174	dw	0x1050
l2D1A_1176	dw	0x11B2
l2D1A_1178	dw	0x11B2
l2D1A_117A	dw	0x11B2
l2D1A_117C	dw	0x11B2
l2D1A_117E	dw	0x11B2
l2D1A_1180	dw	0x1152
l2D1A_1182	dw	0x11B2
l2D1A_1184	dw	0x11B2
l2D1A_1186	dw	0x11B2
l2D1A_1188	dw	0x1152
l2D1A_118A	dw	0x112A
l2D1A_118C	dw	0x1050
l2D1A_118E	dw	0x1152
l2D1A_1190	dw	0x1152
l2D1A_1192	dw	0x11B2
l2D1A_1194	dw	0x113C
l2D1A_1196	dw	0x115E
l2D1A_1198	dw	0x115E
l2D1A_119A	dw	0x115E
l2D1A_119C	dw	0x115E
l2D1A_119E	dw	0x115E
l2D1A_11A0	dw	0x115E
l2D1A_11A2	dw	0x115E
l2D1A_11A4	dw	0x115E
l2D1A_11A6	dw	0x115E
l2D1A_11A8	dw	0x115E
l2D1A_11AA	dw	0x115E
l2D1A_11AC	dw	0x115E
l2D1A_11AE	dw	0x115E
l2D1A_11B0	dw	0x115E

l2D1A_11B2:
	sub	ax,ax
	mov	[1482h],ax
	mov	[1480h],ax
	pop	si
	mov	sp,bp
	pop	bp
	retf
2D1A:11BF                                              90                .

;; fn2D1A_11C0: 2D1A:11C0
;;   Called from:
;;     20B2:11E7 (in fn20B2_1192)
fn2D1A_11C0 proc
	push	bp
	mov	bp,sp
	mov	ax,[1306h]
	cmp	[bp+6h],ax
	jz	11D5h

l2D1A_11CB:
	sub	ax,ax
	push	ax
	push	cs
	call	0FA6h
