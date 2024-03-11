;;; Segment 38D6 (38D6:0000)
38D6:0000 EB 89 35 01 00 EB 84 00                         ..5.....        

;; fn38D6_0008: 38D6:0008
;;   Called from:
;;     1825:61F0 (in fn1825_6168)
;;     1825:6224 (in fn1825_6168)
;;     3431:1646 (in fn3431_1624)
fn38D6_0008 proc
	push	bp
	mov	bp,sp
	sub	sp,10h
	push	di
	push	si
	les	bx,[bp+6h]
	mov	ax,es:[bx+2h]
	mov	[bp-0Ch],ax
	mov	ax,es:[bx+4h]
	mov	[bp-0Ah],ax
	cmp	word ptr es:[bx],8h
	jz	002Ah

l38D6_0027:
	jmp	00DEh

l38D6_002A:
	cmp	word ptr [13ECh],0h
	jz	0046h

l38D6_0031:
	or	ax,ax
	jz	0040h

l38D6_0035:
	cmp	word ptr [bp-0Ch],0FFh
	jz	0040h

l38D6_003C:
	inc	ax
	sub	[bp-0Ch],ax

l38D6_0040:
	mov	ax,[13F8h]
	mov	[bp-0Ah],ax

l38D6_0046:
	cmp	word ptr [bp-0Ch],0FFh
	jz	0050h

l38D6_004D:
	jmp	0122h

l38D6_0050:
	mov	ax,bx
	mov	dx,es
	add	ax,8h
	lea	di,[bp-8h]
	mov	si,ax
	push	ss
	pop	es
	push	ds
	mov	ds,dx
	movsw
	movsw
	movsw
	movsw
	pop	ds
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	push	word ptr [bp-6h]
	push	word ptr [bp-8h]
	call	far 400Dh:00DEh
	add	sp,8h
	mov	[bp-0Eh],ax
	or	ax,ax
	jz	00ACh

l38D6_0081:
	push	word ptr [23F0h]
	push	word ptr [23EEh]
	push	word ptr [23ECh]
	push	word ptr [23EAh]
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	push	word ptr [bp-6h]
	push	word ptr [bp-8h]
	call	far 400Dh:0006h
	add	sp,10h
	mov	[bp-10h],ax
	or	ax,ax
	jnz	00D7h

l38D6_00AC:
	push	word ptr [23F8h]
	push	word ptr [23F6h]
	push	word ptr [23F4h]
	push	word ptr [23F2h]
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	push	word ptr [bp-6h]
	push	word ptr [bp-8h]
	call	far 400Dh:0096h
	add	sp,10h
	mov	[bp-10h],ax
	or	ax,ax
	jz	011Dh

l38D6_00D7:
	mov	word ptr [bp-0Ch],14h
	jmp	0122h

l38D6_00DE:
	cmp	word ptr [13ECh],0h
	jz	00EAh

l38D6_00E5:
	mov	ax,[13F8h]
	jmp	00ECh

l38D6_00EA:
	sub	ax,ax

l38D6_00EC:
	mov	[bp-0Ah],ax
	cmp	word ptr [bp-0Ch],0FFh
	jnz	0122h

l38D6_00F6:
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+0Ah],0C465h
	jg	010Bh

l38D6_0101:
	jl	00D7h

l38D6_0103:
	cmp	word ptr es:[bx+8h],3601h
	jc	00D7h

l38D6_010B:
	cmp	word ptr es:[bx+0Ah],540Bh
	jl	011Dh

l38D6_0113:
	jg	00D7h

l38D6_0115:
	cmp	word ptr es:[bx+8h],0E3FFh
	ja	00D7h

l38D6_011D:
	mov	word ptr [bp-0Ch],0Ah

l38D6_0122:
	cmp	word ptr [bp-0Ah],0h
	jz	012Fh

l38D6_0128:
	mov	ax,[bp-0Ah]
	inc	ax
	add	[bp-0Ch],ax

l38D6_012F:
	les	bx,[bp+6h]
	mov	ax,[bp-0Ch]
	mov	es:[bx+2h],ax
	mov	ax,[bp-0Ah]
	mov	es:[bx+4h],ax
	pop	si
	pop	di
	mov	sp,bp
	pop	bp
	retf

;; fn38D6_0146: 38D6:0146
;;   Called from:
;;     21DC:0DEF (in fn21DC_0DE4)
;;     38D6:0E0A (in fn38D6_0DFE)
fn38D6_0146 proc
	push	bp
	mov	bp,sp
	sub	sp,0Eh
	push	si
	mov	word ptr [bp-0Ah],0h
	jmp	01A9h

l38D6_0154:
	les	bx,[bp-4h]
	mov	al,[bp-0Eh]
	cmp	es:[bx],al
	jnz	0172h

l38D6_015F:
	inc	word ptr [bp-8h]
	inc	word ptr [bp-4h]

l38D6_0165:
	les	bx,[bp-8h]
	mov	al,es:[bx]
	mov	[bp-0Eh],al
	or	al,al
	jnz	0154h

l38D6_0172:
	les	bx,[bp-8h]
	cmp	byte ptr es:[bx],3Dh
	jnz	01A6h

l38D6_017B:
	les	bx,[bp-4h]
	cmp	byte ptr es:[bx],0h
	jnz	01A6h

l38D6_0184:
	inc	word ptr [bp-8h]

l38D6_0187:
	mov	bx,[bp-0Ah]
	shl	bx,1h
	shl	bx,1h
	les	si,[3596h]
	mov	ax,es:[bx+si]
	or	ax,es:[bx+si+2h]
	jz	01DCh

l38D6_019B:
	mov	ax,[bp-8h]
	mov	dx,[bp-6h]
	pop	si
	mov	sp,bp
	pop	bp
	retf

l38D6_01A6:
	inc	word ptr [bp-0Ah]

l38D6_01A9:
	mov	bx,[bp-0Ah]
	shl	bx,1h
	shl	bx,1h
	les	si,[3596h]
	mov	ax,es:[bx+si]
	mov	dx,es:[bx+si+2h]
	mov	[bp-0Eh],ax
	mov	[bp-0Ch],dx
	or	ax,dx
	jz	0187h

l38D6_01C5:
	mov	ax,[bp-0Eh]
	mov	[bp-8h],ax
	mov	[bp-6h],dx
	mov	ax,[bp+6h]
	mov	dx,[bp+8h]
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	jmp	0165h

l38D6_01DC:
	mov	ax,5F92h
	mov	dx,ds
	pop	si
	mov	sp,bp
	pop	bp
	retf
38D6:01E6                   56 C4 1E 96 12 26 8B 37 F7 C6       V....&.7..
38D6:01F0 0A 00 74 27 83 FE 02 75 07 26 8B 47 08 EB 19 90 ..t'...u.&.G....
38D6:0200 26 FF 77 0E 26 FF 77 0C 26 FF 77 0A 26 FF 77 08 &.w.&.w.&.w.&.w.
38D6:0210 9A 5A 0C EE 3C 83 C4 08 A3 E0 23 9A 3C 03 68 23 .Z..<.....#.<.h#
38D6:0220 5E CB                                           ^.              

;; fn38D6_0222: 38D6:0222
;;   Called from:
;;     38D6:033F (in fn38D6_0304)
;;     38D6:0590 (in fn38D6_03DC)
;;     3CEE:3961 (in fn3CEE_388C)
fn38D6_0222 proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	push	si
	cmp	word ptr [bp+0Ah],64h
	jc	0256h

l38D6_022F:
	cmp	word ptr [bp+0Ah],0BB7h
	ja	0256h

l38D6_0236:
	cmp	word ptr [bp+8h],1h
	jc	0256h

l38D6_023C:
	cmp	word ptr [bp+8h],0Ch
	ja	0256h

l38D6_0242:
	cmp	word ptr [bp+6h],1h
	jc	0256h

l38D6_0248:
	mov	bx,[bp+8h]
	shl	bx,1h
	mov	ax,[bp+6h]
	cmp	[bx+2414h],ax
	jnc	028Ch

l38D6_0256:
	cmp	word ptr [bp+6h],1Dh
	jnz	0284h

l38D6_025C:
	cmp	word ptr [bp+8h],2h
	jnz	0284h

l38D6_0262:
	test	byte ptr [bp+0Ah],3h
	jnz	0276h

l38D6_0268:
	mov	ax,[bp+0Ah]
	sub	dx,dx
	mov	cx,64h
	div	cx
	or	dx,dx
	jnz	028Ch

l38D6_0276:
	mov	ax,[bp+0Ah]
	sub	dx,dx
	mov	cx,190h
	div	cx
	or	dx,dx
	jz	028Ch

l38D6_0284:
	sub	ax,ax
	cwd
	pop	si
	mov	sp,bp
	pop	bp
	retf

l38D6_028C:
	cmp	word ptr [bp+8h],3h
	jnc	0295h

l38D6_0292:
	dec	word ptr [bp+0Ah]

l38D6_0295:
	mov	word ptr [bp-4h],42E4h
	mov	word ptr [bp-2h],1Ah
	mov	ax,16Dh
	cwd
	push	dx
	push	ax
	sub	ax,ax
	push	ax
	push	word ptr [bp+0Ah]
	call	far 3CEEh:05A6h
	mov	cx,ax
	mov	ax,[bp+0Ah]
	mov	bx,dx
	sub	dx,dx
	mov	si,64h
	div	si
	sub	cx,ax
	sbb	bx,0h
	mov	ax,[bp+0Ah]
	sub	dx,dx
	mov	si,190h
	div	si
	add	cx,ax
	adc	bx,0h
	mov	ax,[bp+0Ah]
	shr	ax,1h
	shr	ax,1h
	add	cx,ax
	adc	bx,0h
	add	[bp-4h],cx
	adc	[bp-2h],bx
	mov	bx,[bp+8h]
	shl	bx,1h
	mov	ax,[bx+23FAh]
	add	ax,[bp+6h]
	sub	dx,dx
	add	[bp-4h],ax
	adc	[bp-2h],dx
	mov	ax,[bp-4h]
	mov	dx,[bp-2h]
	pop	si
	mov	sp,bp
	pop	bp
	retf
38D6:0303          90                                        .            

;; fn38D6_0304: 38D6:0304
;;   Called from:
;;     2644:0D8D (in fn2644_0D70)
fn38D6_0304 proc
	push	bp
	mov	bp,sp
	sub	sp,12h
	mov	byte ptr [bp-0Bh],2Ah
	lea	ax,[bp-0Ch]
	push	ss
	push	ax
	call	far 2017h:042Dh
	add	sp,4h
	mov	ah,[bp-7h]
	sub	al,al
	mov	cl,[bp-8h]
	sub	ch,ch
	add	ax,cx
	mov	[bp-0Eh],ax
	mov	al,[bp-5h]
	sub	ah,ah
	mov	[bp-10h],ax
	mov	al,[bp-6h]
	mov	[bp-12h],ax
	push	word ptr [bp-0Eh]
	push	word ptr [bp-10h]
	push	ax
	push	cs
	call	0222h
	mov	sp,bp
	pop	bp
	retf
38D6:0347                      90                                .        

;; fn38D6_0348: 38D6:0348
;;   Called from:
;;     38D6:0437 (in fn38D6_03DC)
;;     38D6:044F (in fn38D6_03DC)
;;     38D6:0467 (in fn38D6_03DC)
;;     38D6:0483 (in fn38D6_03DC)
;;     38D6:0499 (in fn38D6_03DC)
;;     38D6:04B7 (in fn38D6_03DC)
fn38D6_0348 proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	mov	word ptr [bp-2h],0h
	jmp	0365h
38D6:0355                90                                    .          

l38D6_0356:
	cmp	byte ptr [bp-4h],30h
	jc	0362h

l38D6_035C:
	cmp	byte ptr [bp-4h],39h
	jbe	0397h

l38D6_0362:
	inc	word ptr [bp+6h]

l38D6_0365:
	les	bx,[bp+6h]
	mov	al,es:[bx]
	mov	[bp-4h],al
	or	al,al
	jnz	0356h

l38D6_0372:
	jmp	0397h

l38D6_0374:
	cmp	byte ptr [bp-4h],39h
	ja	03A4h

l38D6_037A:
	mov	ax,[bp-2h]
	mov	cx,ax
	shl	ax,1h
	shl	ax,1h
	add	ax,cx
	shl	ax,1h
	mov	cl,[bp-4h]
	sub	ch,ch
	add	ax,cx
	sub	ax,30h
	mov	[bp-2h],ax
	inc	word ptr [bp+6h]

l38D6_0397:
	les	bx,[bp+6h]
	mov	al,es:[bx]
	mov	[bp-4h],al
	cmp	al,30h
	jnc	0374h

l38D6_03A4:
	les	bx,[bp+0Ah]
	mov	ax,[bp-2h]
	mov	es:[bx],ax
	mov	ax,[bp+6h]
	mov	dx,[bp+8h]
	mov	sp,bp
	pop	bp
	retf
38D6:03B7                      90                                .        

;; fn38D6_03B8: 38D6:03B8
;;   Called from:
;;     38D6:07B9 (in fn38D6_06FA)
;;     38D6:07CE (in fn38D6_06FA)
;;     38D6:07F8 (in fn38D6_06FA)
;;     38D6:0819 (in fn38D6_06FA)
fn38D6_03B8 proc
	push	bp
	mov	bp,sp
	mov	ax,[bp+0Ah]
	cwd
	mov	cx,0Ah
	idiv	cx
	add	al,30h
	les	bx,[bp+6h]
	mov	es:[bx],al
	mov	ax,[bp+0Ah]
	cwd
	idiv	cx
	add	dl,30h
	mov	es:[bx+1h],dl
	pop	bp
	retf
38D6:03DB                                  90                        .    

;; fn38D6_03DC: 38D6:03DC
;;   Called from:
;;     2644:196D (in fn2644_17C8)
fn38D6_03DC proc
	push	bp
	mov	bp,sp
	sub	sp,2Ah
	push	si
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	lea	ax,[bp-22h]
	push	ss
	push	ax
	call	far 2017h:02ECh
	add	sp,0Ah
	mov	si,[bp+0Ah]
	mov	byte ptr [bp+si-22h],0h
	lea	ax,[bp-22h]
	mov	[bp-2Ah],ax
	mov	[bp-28h],ss
	mov	word ptr [bp-26h],0h
	mov	word ptr [bp-24h],0h
	mov	word ptr [bp-2h],0h
	mov	ax,[bp+10h]
	cmp	ax,6h
	jbe	0423h

l38D6_0420:
	jmp	055Ah

l38D6_0423:
	add	ax,ax
	xchg	bx,ax
	jmp	word ptr cs:[bx+54Ch]
38D6:042B                                  90                        .    

l38D6_042C:
	lea	ax,[bp-24h]
	push	ss
	push	ax
	push	word ptr [bp-28h]
	push	word ptr [bp-2Ah]
	push	cs
	call	0348h
	add	sp,8h
	mov	[bp-2Ah],ax
	mov	[bp-28h],dx
	lea	ax,[bp-26h]

l38D6_0447:
	push	ss
	push	ax
	push	word ptr [bp-28h]
	push	word ptr [bp-2Ah]
	push	cs
	call	0348h
	add	sp,8h
	mov	[bp-2Ah],ax
	mov	[bp-28h],dx
	lea	ax,[bp-2h]

l38D6_045F:
	push	ss
	push	ax
	push	word ptr [bp-28h]
	push	word ptr [bp-2Ah]
	push	cs
	call	0348h
	add	sp,8h
	mov	[bp-2Ah],ax
	mov	[bp-28h],dx
	jmp	055Ah
38D6:0477                      90                                .        

l38D6_0478:
	lea	ax,[bp-2h]
	push	ss
	push	ax
	push	word ptr [bp-28h]
	push	word ptr [bp-2Ah]
	push	cs
	call	0348h
	add	sp,8h
	mov	[bp-2Ah],ax
	mov	[bp-28h],dx
	lea	ax,[bp-24h]
	push	ss
	push	ax
	push	dx
	push	word ptr [bp-2Ah]
	push	cs
	call	0348h
	add	sp,8h
	mov	[bp-2Ah],ax
	mov	[bp-28h],dx
	lea	ax,[bp-26h]
	jmp	045Fh
38D6:04AB                                  90                        .    

l38D6_04AC:
	lea	ax,[bp-26h]
	push	ss
	push	ax
	push	word ptr [bp-28h]
	push	word ptr [bp-2Ah]
	push	cs
	call	0348h
	add	sp,8h
	mov	[bp-2Ah],ax
	mov	[bp-28h],dx
	lea	ax,[bp-24h]
	jmp	0447h

l38D6_04CA:
	les	bx,[bp+6h]
	mov	al,es:[bx]
	sub	ah,ah
	mov	cx,ax
	shl	ax,1h
	shl	ax,1h
	add	ax,cx
	shl	ax,1h
	mov	cl,es:[bx+1h]
	sub	ch,ch
	add	cx,ax
	mov	ax,cx
	shl	cx,1h
	shl	cx,1h
	add	cx,ax
	shl	cx,1h
	mov	al,es:[bx+2h]
	sub	ah,ah
	add	cx,ax
	mov	ax,cx
	shl	cx,1h
	shl	cx,1h
	add	cx,ax
	shl	cx,1h
	mov	al,es:[bx+3h]
	sub	ah,ah
	add	cx,ax
	add	cx,2FB0h
	mov	[bp-2h],cx
	mov	al,es:[bx+4h]
	mov	cx,ax
	shl	ax,1h
	shl	ax,1h
	add	ax,cx
	shl	ax,1h
	mov	cl,es:[bx+5h]
	sub	ch,ch
	add	ax,cx
	sub	ax,210h
	mov	[bp-24h],ax
	mov	al,es:[bx+6h]
	sub	ah,ah
	mov	cx,ax
	shl	ax,1h
	shl	ax,1h
	add	ax,cx
	shl	ax,1h
	mov	cl,es:[bx+7h]
	sub	ch,ch
	add	ax,cx
	sub	ax,210h
	mov	[bp-26h],ax
	jmp	055Ah
38D6:054B                                  90                        .    
l38D6_054C	dw	0x04CA
l38D6_054E	dw	0x042C
l38D6_0550	dw	0x0478
l38D6_0552	dw	0x04AC
l38D6_0554	dw	0x04AC
l38D6_0556	dw	0x04AC
l38D6_0558	dw	0x04AC

l38D6_055A:
	cmp	word ptr [bp-26h],0h
	jnz	056Ch

l38D6_0560:
	cmp	word ptr [bp-24h],0h
	jnz	056Ch

l38D6_0566:
	cmp	word ptr [bp-2h],0h
	jz	05B6h

l38D6_056C:
	mov	ax,[23E0h]
	cmp	[bp-2h],ax
	jnc	057Ch

l38D6_0574:
	add	word ptr [bp-2h],7D0h
	jmp	0587h
38D6:057B                                  90                        .    

l38D6_057C:
	cmp	word ptr [bp-2h],64h
	jge	0587h

l38D6_0582:
	add	word ptr [bp-2h],76Ch

l38D6_0587:
	push	word ptr [bp-2h]
	push	word ptr [bp-24h]
	push	word ptr [bp-26h]
	push	cs
	call	0222h
	add	sp,6h
	les	bx,[bp+0Ch]
	mov	es:[bx],ax
	mov	es:[bx+2h],dx
	or	ax,dx
	jz	05AEh

l38D6_05A5:
	mov	ax,1h
	pop	si
	mov	sp,bp
	pop	bp
	retf
38D6:05AD                                        90                    .  

l38D6_05AE:
	sub	ax,ax
	pop	si
	mov	sp,bp
	pop	bp
	retf
38D6:05B5                90                                    .          

l38D6_05B6:
	les	bx,[bp+0Ch]
	sub	ax,ax
	mov	es:[bx+2h],ax
	mov	es:[bx],ax
	jmp	05A5h

;; fn38D6_05C4: 38D6:05C4
;;   Called from:
;;     38D6:073F (in fn38D6_06FA)
fn38D6_05C4 proc
	push	bp
	mov	bp,sp
	sub	sp,0Ch
	mov	ax,[bp+6h]
	mov	dx,[bp+8h]
	mov	[bp-0Ah],ax
	mov	[bp-8h],dx
	cmp	dx,1Ah
	jg	0606h

l38D6_05DB:
	jl	05E2h

l38D6_05DD:
	cmp	ax,42E4h
	jnc	0606h

l38D6_05E2:
	les	bx,[bp+0Ah]
	mov	word ptr es:[bx],0h
	les	bx,[bp+0Eh]
	mov	word ptr es:[bx],0h
	les	bx,[bp+12h]
	mov	word ptr es:[bx],0h
	les	bx,[bp+16h]
	mov	word ptr es:[bx],0h
	mov	sp,bp
	pop	bp
	retf

l38D6_0606:
	sub	word ptr [bp-0Ah],42E4h
	sbb	word ptr [bp-8h],1Ah
	mov	ax,5B5h
	cwd
	push	dx
	push	ax
	mov	ax,[bp-0Ah]
	mov	dx,[bp-8h]
	mov	cl,2h

l38D6_061D:
	shl	ax,1h
	rcl	dx,1h
	dec	cl
	jnz	061Dh

l38D6_0625:
	push	dx
	push	ax
	call	far 3CEEh:0500h
	mov	[bp-2h],ax
	sub	dx,dx
	mov	cx,16Dh
	imul	cx
	mov	cx,[bp-0Ah]
	sub	cx,ax
	mov	ax,[bp-2h]
	sub	dx,dx
	mov	bx,64h
	div	bx
	add	cx,ax
	mov	ax,[bp-2h]
	sub	dx,dx
	mov	bx,190h
	div	bx
	sub	cx,ax
	mov	ax,[bp-2h]
	shr	ax,1h
	shr	ax,1h
	sub	cx,ax
	mov	[bp-4h],cx
	test	byte ptr [bp-2h],3h
	jnz	0673h

l38D6_0665:
	mov	ax,[bp-2h]
	sub	dx,dx
	mov	cx,64h
	div	cx
	or	dx,dx
	jnz	0686h

l38D6_0673:
	mov	ax,[bp-2h]
	sub	dx,dx
	mov	cx,bx
	div	cx
	or	dx,dx
	jz	0686h

l38D6_0680:
	cmp	word ptr [bp-4h],3Bh
	jbe	0689h

l38D6_0686:
	inc	word ptr [bp-4h]

l38D6_0689:
	mov	word ptr [bp-6h],1h
	jmp	0693h

l38D6_0690:
	inc	word ptr [bp-6h]

l38D6_0693:
	mov	bx,[bp-6h]
	shl	bx,1h
	mov	ax,[bp-4h]
	cmp	[bx+242Eh],ax
	jc	0690h

l38D6_06A1:
	mov	bx,[bp-6h]
	shl	bx,1h
	sub	ax,[bx+242Ch]
	mov	[bp-0Ch],ax
	cmp	word ptr [bp-6h],0Ch
	jbe	06BAh

l38D6_06B3:
	sub	word ptr [bp-6h],0Ch
	inc	word ptr [bp-2h]

l38D6_06BA:
	les	bx,[bp+0Ah]
	mov	ax,[bp-0Ch]
	mov	es:[bx],ax
	les	bx,[bp+0Eh]
	mov	ax,[bp-6h]
	mov	es:[bx],ax
	les	bx,[bp+12h]
	mov	ax,[bp-2h]
	mov	es:[bx],ax
	mov	ax,7h
	cwd
	push	dx
	push	ax
	mov	ax,[bp-0Ah]
	mov	dx,[bp-8h]
	sub	ax,1h
	sbb	dx,0h
	push	dx
	push	ax
	call	far 3CEEh:05DAh
	inc	ax
	les	bx,[bp+16h]
	mov	es:[bx],ax
	mov	sp,bp
	pop	bp
	retf
38D6:06F9                            90                            .      

;; fn38D6_06FA: 38D6:06FA
;;   Called from:
;;     1825:6298 (in fn1825_6168)
;;     2644:0D99 (in fn2644_0D70)
;;     2EB3:077E (in fn2EB3_060C)
;;     3431:151D (in fn3431_133C)
;;     3431:197B (in fn3431_1624)
fn38D6_06FA proc
	push	bp
	mov	bp,sp
	sub	sp,12h
	push	si
	cmp	word ptr [bp+0Eh],0h
	jz	070Eh

l38D6_0707:
	cmp	word ptr [20A6h],0h
	jnz	0714h

l38D6_070E:
	mov	ax,8h
	jmp	0717h
38D6:0713          90                                        .            

l38D6_0714:
	mov	ax,0Ah

l38D6_0717:
	mov	[bp-12h],ax
	mov	ax,[bp+0Ah]
	or	ax,[bp+0Ch]
	jnz	0725h

l38D6_0722:
	jmp	0822h

l38D6_0725:
	lea	ax,[bp-8h]
	push	ss
	push	ax
	lea	ax,[bp-2h]
	push	ss
	push	ax
	lea	ax,[bp-6h]
	push	ss
	push	ax
	lea	ax,[bp-0Eh]
	push	ss
	push	ax
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	push	cs
	call	05C4h
	add	sp,14h
	cmp	word ptr [bp+0Eh],0h
	jnz	075Eh

l38D6_074C:
	mov	word ptr [bp-4h],6h
	mov	word ptr [bp-10h],4h

l38D6_0756:
	mov	word ptr [bp-0Ah],0h
	jmp	07ABh
38D6:075D                                        90                    .  

l38D6_075E:
	cmp	word ptr [bp+0Eh],1h
	jnz	0770h

l38D6_0764:
	mov	word ptr [bp-4h],3h
	mov	word ptr [bp-10h],0h
	jmp	07A6h

l38D6_0770:
	cmp	word ptr [bp+0Eh],2h
	jnz	079Ch

l38D6_0776:
	cmp	word ptr [20A6h],0h
	jz	0782h

l38D6_077D:
	mov	ax,8h
	jmp	0785h

l38D6_0782:
	mov	ax,6h

l38D6_0785:
	mov	[bp-4h],ax
	cmp	word ptr [20A6h],0h
	jz	0794h

l38D6_078F:
	mov	ax,5h
	jmp	0797h

l38D6_0794:
	mov	ax,3h

l38D6_0797:
	mov	[bp-10h],ax
	jmp	0756h

l38D6_079C:
	mov	word ptr [bp-4h],0h
	mov	word ptr [bp-10h],3h

l38D6_07A6:
	mov	word ptr [bp-0Ah],6h

l38D6_07AB:
	push	word ptr [bp-0Eh]
	mov	ax,[bp-4h]
	add	ax,[bp+6h]
	mov	dx,[bp+8h]
	push	dx
	push	ax
	push	cs
	call	03B8h
	add	sp,6h
	push	word ptr [bp-6h]
	mov	ax,[bp-10h]
	add	ax,[bp+6h]
	mov	dx,[bp+8h]
	push	dx
	push	ax
	push	cs
	call	03B8h
	add	sp,6h
	cmp	word ptr [bp+0Eh],0h
	jz	07E2h

l38D6_07DB:
	cmp	word ptr [20A6h],0h
	jz	0803h

l38D6_07E2:
	mov	ax,[bp-2h]
	sub	dx,dx
	mov	cx,64h
	div	cx
	push	ax
	mov	ax,[bp-0Ah]
	add	ax,[bp+6h]
	mov	dx,[bp+8h]
	push	dx
	push	ax
	push	cs
	call	03B8h
	add	sp,6h
	add	word ptr [bp-0Ah],2h

l38D6_0803:
	mov	ax,[bp-2h]
	sub	dx,dx
	mov	cx,64h
	div	cx
	push	dx
	mov	ax,[bp-0Ah]
	add	ax,[bp+6h]
	mov	dx,[bp+8h]
	push	dx
	push	ax
	push	cs
	call	03B8h
	add	sp,6h
	jmp	0837h

l38D6_0822:
	push	word ptr [bp-12h]
	mov	ax,20h
	push	ax
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 2017h:0228h
	add	sp,8h

l38D6_0837:
	cmp	word ptr [bp+0Eh],0h
	jz	086Eh

l38D6_083D:
	mov	bx,[bp+0Eh]
	mov	al,[bx+244Ch]
	mov	[bp-0Ch],al
	cmp	bx,2h
	jnz	0860h

l38D6_084C:
	cmp	word ptr [20A6h],0h
	jz	0860h

l38D6_0853:
	les	bx,[bp+6h]
	mov	es:[bx+4h],al
	mov	es:[bx+7h],al
	jmp	086Eh

l38D6_0860:
	les	bx,[bp+6h]
	mov	al,[bp-0Ch]
	mov	es:[bx+2h],al
	mov	es:[bx+5h],al

l38D6_086E:
	mov	bx,[bp-12h]
	les	si,[bp+6h]
	mov	byte ptr es:[bx+si],0h
	pop	si
	mov	sp,bp
	pop	bp
	retf
38D6:087D                                        90 55 8B              .U.
38D6:0880 EC 83 EC 3A C4 1E 96 12 26 F7 07 00 01 75 0B C7 ...:....&....u..
38D6:0890 06 D2 10 01 00 8B E5 5D CB 90 B8 0E 00 50 26 FF .......].....P&.
38D6:08A0 77 0A 26 FF 77 08 0E E8 EC 07 83 C4 06 89 46 CC w.&.w.........F.
38D6:08B0 3D FF FF 75 0B C7 06 D2 10 05 00 8B E5 5D CB 90 =..u.........]..
38D6:08C0 9A 3C 03 68 23 B8 20 00 50 8D 46 D6 16 50 FF 76 .<.h#. .P.F..P.v
38D6:08D0 CC 9A C9 00 8F 20 83 C4 08 89 46 D0 3D 20 00 74 ..... ....F.= .t
38D6:08E0 03 E9 58 01 8A 46 E1 2A E4 25 7F 00 3D 43 00 74 ..X..F.*.%..=C.t
38D6:08F0 17 3D 44 00 75 03 E9 D7 00 3D 4C 00 75 03 E9 9F .=D.u....=L.u...
38D6:0900 00 3D 4E 00 74 66 EB 44 8A 66 E7 2A C0 8A 4E E6 .=N.tf.D.f.*..N.
38D6:0910 2A ED 03 C1 89 46 CE 50 9A 18 07 DC 21 83 C4 02 *....F.P....!...
38D6:0920 89 46 D2 89 56 D4 FF 76 CE 52 50 FF 76 CC 9A C9 .F..V..v.RP.v...
38D6:0930 00 8F 20 83 C4 08 8B 46 CE 48 50 FF 76 CE FF 76 .. ....F.HP.v..v
38D6:0940 D4 FF 76 D2 9A 72 02 68 23 83 C4 08 8D 46 D6 16 ..v..r.h#....F..
38D6:0950 50 9A C2 03 C7 2B 83 C4 04 52 50 9A 0E 03 68 23 P....+...RP...h#
38D6:0960 83 C4 04 9A 7A 0A 68 23 E9 5A FF 90 B8 08 00 50 ....z.h#.Z.....P
38D6:0970 8D 46 F8 16 50 FF 76 CC 9A C9 00 8F 20 83 C4 08 .F..P.v..... ...
38D6:0980 8A 46 E7 2A E4 50 8A 46 E6 50 FF 76 FE FF 76 FC .F.*.P.F.P.v..v.
38D6:0990 FF 76 FA FF 76 F8 9A B0 01 68 23 83 C4 0C EB AC .v..v....h#.....
38D6:09A0 B8 01 00 50 8D 46 F6 16 50 FF 76 CC 9A C9 00 8F ...P.F..P.v.....
38D6:09B0 20 83 C4 08 83 06 96 12 10 C4 1E 96 12 26 C7 07  ............&..
38D6:09C0 80 00 80 7E F6 01 1B C0 40 26 89 47 08 E9 7C FF ...~....@&.G..|.
38D6:09D0 B8 08 00 50 8D 46 F8 16 50 FF 76 CC 9A C9 00 8F ...P.F..P.v.....
38D6:09E0 20 83 C4 08 FF 36 E8 23 FF 36 E6 23 FF 36 E4 23  ....6.#.6.#.6.#
38D6:09F0 FF 36 E2 23 FF 76 FE FF 76 FC FF 76 FA FF 76 F8 .6.#.v..v..v..v.
38D6:0A00 9A 72 00 0D 40 83 C4 10 89 46 CA 0B C0 74 0F 2B .r..@....F...t.+
38D6:0A10 C0 50 50 9A D2 02 68 23 83 C4 04 E9 2E FF FF 76 .PP...h#.......v
38D6:0A20 FE FF 76 FC FF 76 FA FF 76 F8 9A 5A 0C EE 3C 83 ..v..v..v..Z..<.
38D6:0A30 C4 08 89 46 C6 89 56 C8 52 EB D7 90 FF 76 CC 9A ...F..V.R....v..
38D6:0A40 AE 00 8F 20 83 C4 02 8B E5 5D CB 90 55 8B EC 83 ... .....]..U...
38D6:0A50 EC 2E 57 56 C4 1E 96 12 26 F6 07 80 74 0D 26 8B ..WV....&...t.&.
38D6:0A60 47 F0 26 23 47 E0 A9 00 01 75 0D C7 06 D2 10 01 G.&#G....u......
38D6:0A70 00 5E 5F 8B E5 5D CB 90 B8 0F 00 50 26 FF 77 EA .^_..].....P&.w.
38D6:0A80 26 FF 77 E8 0E E8 0E 06 83 C4 06 89 46 D2 3D FF &.w.........F.=.
38D6:0A90 FF 75 0D C7 06 D2 10 05 00 5E 5F 8B E5 5D CB 90 .u.......^_..]..
38D6:0AA0 C4 1E 96 12 26 FF 77 08 26 FF 77 FA 26 FF 77 F8 ....&.w.&.w.&.w.
38D6:0AB0 9A 78 05 C7 2B 83 C4 06 83 2E 96 12 10 9A 68 03 .x..+.........h.
38D6:0AC0 68 23 9A A0 05 C7 2B 89 46 D4 89 56 D6 0B D0 75 h#....+.F..V...u
38D6:0AD0 03 E9 E4 01 C4 5E D4 26 8B 47 04 26 0B 47 06 74 .....^.&.G.&.G.t
38D6:0AE0 E1 26 C4 5F 04 26 8B 37 0B F6 74 D6 F7 C6 00 20 .&._.&.7..t.... 
38D6:0AF0 75 D0 C4 5E D4 26 FF 77 06 26 FF 77 04 9A F4 04 u..^.&.w.&.w....
38D6:0B00 68 23 83 C4 04 FF 76 D6 FF 76 D4 9A 0A 05 C7 2B h#....v..v.....+
38D6:0B10 83 C4 04 52 50 8D 46 D8 16 50 9A BA 01 17 20 83 ...RP.F..P.... .
38D6:0B20 C4 08 C4 1E 96 12 26 8B 07 3D 02 00 74 6A 3D 08 ......&..=..tj=.
38D6:0B30 00 75 03 E9 8D 00 3D 20 00 75 03 E9 32 01 3D 80 .u....= .u..2.=.
38D6:0B40 00 75 03 E9 F0 00 3D 00 01 75 44 C6 46 E3 C3 26 .u....=..uD.F..&
38D6:0B50 8B 77 02 46 8B C6 88 46 E8 8A C4 88 46 E9 B8 20 .w.F...F....F.. 
38D6:0B60 00 50 8D 46 D8 16 50 FF 76 D2 9A EF 00 8F 20 83 .P.F..P.v..... .
38D6:0B70 C4 08 C4 1E 96 12 26 8B 47 02 40 50 26 FF 77 0A ......&.G.@P&.w.
38D6:0B80 26 FF 77 08 FF 76 D2 9A EF 00 8F 20 83 C4 08 9A &.w..v..... ....
38D6:0B90 3C 03 68 23 E9 2B FF 90 C4 1E 96 12 26 FF 77 0A <.h#.+......&.w.
38D6:0BA0 26 FF 77 08 9A F7 0C EE 3C 83 C4 04 C4 1E 96 12 &.w.....<.......
38D6:0BB0 8D 7F 08 8B F0 1E 8E DA A5 A5 A5 A5 1F 26 C7 47 .............&.G
38D6:0BC0 04 00 00 C6 46 E3 CE 26 81 7F 02 FF 00 75 2E 83 ....F..&.....u..
38D6:0BD0 3E EC 13 00 74 18 C7 06 EC 13 00 00 06 53 0E E8 >...t........S..
38D6:0BE0 26 F4 83 C4 04 C7 06 EC 13 01 00 EB 10 90 FF 36 &..............6
38D6:0BF0 98 12 FF 36 96 12 0E E8 0E F4 83 C4 04 C4 1E 96 ...6............
38D6:0C00 12 26 8A 47 02 88 46 E8 26 8A 47 04 88 46 E9 B8 .&.G..F.&.G..F..
38D6:0C10 20 00 50 8D 46 D8 16 50 FF 76 D2 9A EF 00 8F 20  .P.F..P.v..... 
38D6:0C20 83 C4 08 B8 08 00 50 A1 96 12 8B 16 98 12 05 08 ......P.........
38D6:0C30 00 52 50 E9 4E FF C6 46 E3 CC C6 46 E8 01 C6 46 .RP.N..F...F...F
38D6:0C40 E9 00 C4 1E 96 12 26 83 7F 08 01 1B C0 40 88 46 ......&......@.F
38D6:0C50 F8 B8 20 00 50 8D 46 D8 16 50 FF 76 D2 9A EF 00 .. .P.F..P.v....
38D6:0C60 8F 20 83 C4 08 B8 01 00 50 8D 46 F8 16 EB C3 90 . ......P.F.....
38D6:0C70 C6 46 E3 C4 C6 46 E8 01 C6 46 E9 00 C4 1E 96 12 .F...F...F......
38D6:0C80 26 FF 77 0A 26 FF 77 08 9A F7 0C EE 3C 83 C4 04 &.w.&.w.....<...
38D6:0C90 8D 7E F8 8B F0 16 07 1E 8E DA A5 A5 A5 A5 1F B8 .~..............
38D6:0CA0 20 00 50 8D 46 D8 16 50 FF 76 D2 9A EF 00 8F 20  .P.F..P.v..... 
38D6:0CB0 83 C4 08 B8 08 00 EB B0 B8 01 00 50 B8 94 5F 1E ...........P.._.
38D6:0CC0 50 FF 76 D2 9A EF 00 8F 20 83 C4 08 FF 76 D2 9A P.v..... ....v..
38D6:0CD0 AE 00 8F 20 83 C4 02 5E 5F 8B E5 5D CB 90       ... ...^_..]..  

;; fn38D6_0CDE: 38D6:0CDE
;;   Called from:
;;     1825:0E54 (in fn1825_0DA8)
;;     1825:1442 (in fn1825_139A)
;;     1825:17DA (in fn1825_139A)
;;     1825:1DD6 (in fn1825_1D40)
;;     1825:1F38 (in fn1825_1D40)
fn38D6_0CDE proc
	push	bp
	mov	bp,sp
	sub	sp,6h
	push	si
	jmp	0CF1h
38D6:0CE7                      90                                .        

l38D6_0CE8:
	cmp	byte ptr [bp-6h],20h
	jnz	0CFEh

l38D6_0CEE:
	inc	word ptr [bp+6h]

l38D6_0CF1:
	les	bx,[bp+6h]
	mov	al,es:[bx]
	mov	[bp-6h],al
	or	al,al
	jnz	0CE8h

l38D6_0CFE:
	les	bx,[bp+6h]
	cmp	byte ptr es:[bx],2Dh
	jnz	0D0Ch

l38D6_0D07:
	mov	ax,1h
	jmp	0D0Eh

l38D6_0D0C:
	sub	ax,ax

l38D6_0D0E:
	mov	[bp-2h],ax
	or	ax,ax
	jnz	0D1Bh

l38D6_0D15:
	cmp	byte ptr es:[bx],2Bh
	jnz	0D1Eh

l38D6_0D1B:
	inc	word ptr [bp+6h]

l38D6_0D1E:
	mov	word ptr [bp-4h],0h
	jmp	0D38h
38D6:0D25                90                                    .          

l38D6_0D26:
	mov	ax,0Ah
	imul	word ptr [bp-4h]
	mov	[bp-4h],ax
	lea	ax,[si-30h]
	add	[bp-4h],ax
	inc	word ptr [bp+6h]

l38D6_0D38:
	les	bx,[bp+6h]
	mov	al,es:[bx]
	sub	ah,ah
	mov	si,ax
	push	si
	call	far 38ADh:0040h
	add	sp,2h
	test	al,2h
	jnz	0D26h

l38D6_0D4F:
	cmp	word ptr [bp-2h],0h
	jz	0D60h

l38D6_0D55:
	mov	ax,[bp-4h]
	neg	ax
	pop	si
	mov	sp,bp
	pop	bp
	retf
38D6:0D5F                                              90                .

l38D6_0D60:
	mov	ax,[bp-4h]
	pop	si
	mov	sp,bp
	pop	bp
	retf

;; fn38D6_0D68: 38D6:0D68
;;   Called from:
;;     1825:2E5F (in fn1825_2CF2)
;;     1825:30C1 (in fn1825_2CF2)
;;     1825:6415 (in fn1825_63F8)
;;     20B2:0021 (in fn20B2_000E)
fn38D6_0D68 proc
	push	bp
	mov	bp,sp
	sub	sp,2h
	push	si
	cmp	word ptr [bp+0Ah],0h
	jge	0D7Ah

l38D6_0D75:
	mov	ax,1h
	jmp	0D7Ch

l38D6_0D7A:
	sub	ax,ax

l38D6_0D7C:
	mov	[bp-2h],ax
	or	ax,ax
	jz	0D8Bh

l38D6_0D83:
	mov	ax,[bp+0Ah]
	neg	ax
	mov	[bp+0Ah],ax

l38D6_0D8B:
	cmp	word ptr [bp+0Ch],0h
	jle	0DF9h

l38D6_0D91:
	dec	word ptr [bp+0Ch]
	mov	bx,[bp+0Ch]
	les	si,[bp+6h]
	mov	byte ptr es:[bx+si],0h
	jmp	0DC7h

l38D6_0DA0:
	cmp	word ptr [bp+0Ah],0h
	jz	0DCBh

l38D6_0DA6:
	dec	word ptr [bp+0Ch]
	mov	ax,[bp+0Ah]
	cwd
	mov	cx,0Ah
	idiv	cx
	add	dl,30h
	mov	bx,[bp+0Ch]
	les	si,[bp+6h]
	mov	es:[bx+si],dl
	mov	ax,[bp+0Ah]
	cwd
	idiv	cx
	mov	[bp+0Ah],ax

l38D6_0DC7:
	or	bx,bx
	jg	0DA0h

l38D6_0DCB:
	cmp	word ptr [bp+0Ch],0h
	jle	0DF3h

l38D6_0DD1:
	cmp	word ptr [bp-2h],0h
	jz	0DF3h

l38D6_0DD7:
	dec	word ptr [bp+0Ch]
	mov	bx,[bp+0Ch]
	les	si,[bp+6h]
	mov	byte ptr es:[bx+si],2Dh
	jmp	0DF3h

l38D6_0DE6:
	dec	word ptr [bp+0Ch]
	mov	bx,[bp+0Ch]
	les	si,[bp+6h]
	mov	byte ptr es:[bx+si],20h

l38D6_0DF3:
	cmp	word ptr [bp+0Ch],0h
	jg	0DE6h

l38D6_0DF9:
	pop	si
	mov	sp,bp
	pop	bp
	retf

;; fn38D6_0DFE: 38D6:0DFE
;;   Called from:
;;     1825:0CF8 (in fn1825_0CD2)
fn38D6_0DFE proc
	push	bp
	mov	bp,sp
	sub	sp,0B6h
	mov	ax,5F96h
	push	ds
	push	ax
	push	cs
	call	0146h
	add	sp,4h
	mov	[bp+0FF6Ch],ax
	mov	[bp+0FF6Eh],dx
	mov	ax,5F9Eh
	push	ds
	push	ax
	lea	ax,[bp+0FF71h]
	push	ss
	push	ax
	call	far 2017h:01BAh
	add	sp,8h
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 2017h:03F5h
	add	sp,4h
	cmp	ax,7Ah
	jnc	0E50h

l38D6_0E3F:
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 2017h:03F5h
	add	sp,4h
	inc	ax
	jmp	0E53h

l38D6_0E50:
	mov	ax,7Bh

l38D6_0E53:
	push	ax
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	lea	ax,[bp+0FF74h]
	push	ss
	push	ax
	call	far 2017h:01DAh
	add	sp,0Ah
	mov	ax,5FA2h
	push	ds
	push	ax
	lea	ax,[bp+0FF71h]
	push	ss
	push	ax
	call	far 2017h:037Dh
	add	sp,8h
	lea	ax,[bp+0FF71h]
	push	ss
	push	ax
	call	far 2017h:03F5h
	add	sp,4h
	mov	[bp+0FF70h],al
	mov	ax,20h
	push	ax
	sub	ax,ax
	push	ax
	lea	ax,[bp+0FF4Ch]
	push	ss
	push	ax
	call	far 2017h:0228h
	add	sp,8h
	mov	word ptr [bp-0Eh],0h
	lea	ax,[bp+0FF70h]
	mov	[bp-0Ch],ax
	mov	[bp-0Ah],ss
	lea	ax,[bp+0FF4Ch]
	mov	[bp-8h],ax
	mov	[bp-6h],ss
	lea	ax,[bp+0FF4Ch]
	mov	[bp-4h],ax
	mov	[bp-2h],ss
	lea	ax,[bp-0Eh]
	push	ss
	push	ax
	push	word ptr [bp+0FF6Eh]
	push	word ptr [bp+0FF6Ch]
	call	far 2017h:04E1h
	mov	[bp+0FF4Ah],ax
	mov	sp,bp
	pop	bp
	retf
38D6:0EDF                                              90                .
38D6:0EE0 55 8B EC 80 7E 06 20 76 21 8A 46 06 2A E4 50 B8 U...~. v!.F.*.P.
38D6:0EF0 0A 00 50 B8 A4 5F 1E 50 9A 5B 03 17 20 83 C4 08 ..P.._.P.[.. ...
38D6:0F00 3D 0A 00 75 05 B8 01 00 5D CB 2B C0 5D CB 55 8B =..u....].+.].U.
38D6:0F10 EC 56 EB 1A 8B 5E 0C C4 76 06 26 8A 00 2A E4 50 .V...^..v.&..*.P
38D6:0F20 0E E8 BC FF 83 C4 02 0B C0 75 0B FF 46 0C 8B 46 .........u..F..F
38D6:0F30 0A 39 46 0C 72 DE C4 5E 0E 8B 46 0C 26 89 07 EB .9F.r..^..F.&...
38D6:0F40 1B 90 8B 5E 0C C4 76 06 26 8A 00 2A E4 50 0E E8 ...^..v.&..*.P..
38D6:0F50 8E FF 83 C4 02 0B C0 74 0B FF 46 0C 8B 46 0A 39 .......t..F..F.9
38D6:0F60 46 0C 72 DE 8B 46 0C 5E 5D CB 55 8B EC 83 EC 06 F.r..F.^].U.....
38D6:0F70 56 FF 76 0A FF 76 08 FF 76 06 9A 18 01 AD 38 83 V.v..v..v.....8.
38D6:0F80 C4 06 89 46 FE C4 5E 0C 26 89 07 40 3B 46 0A 73 ...F..^.&..@;F.s
38D6:0F90 29 8B 5E FE C4 76 06 26 8A 00 2A E4 50 9A 40 00 ).^..v.&..*.P.@.
38D6:0FA0 AD 38 83 C4 02 A8 01 74 11 8B 76 FE C4 5E 06 26 .8.....t..v..^.&
38D6:0FB0 80 78 01 3A 75 04 83 46 FE 02 C4 5E 10 8B 46 FE .x.:u..F...^..F.
38D6:0FC0 26 89 07 8B 46 0A 39 46 FE 73 50 8B F0 2B 76 FE &...F.9F.sP..+v.
38D6:0FD0 B8 5C 00 50 56 8B 46 FE 03 46 06 8B 56 08 52 50 .\.PV.F..F..V.RP
38D6:0FE0 9A 5B 03 17 20 83 C4 08 89 46 FA 3B C6 73 07 40 .[.. ....F.;.s.@
38D6:0FF0 01 46 FE EB CE 90 8B 76 0A 2B 76 FE B8 2F 00 50 .F.....v.+v../.P
38D6:1000 56 8B 46 FE 03 46 06 8B 56 08 52 50 9A 5B 03 17 V.F..F..V.RP.[..
38D6:1010 20 83 C4 08 89 46 FA 3B C6 72 D4 C4 5E 14 8B 46  ....F.;.r..^..F
38D6:1020 FE 26 89 07 C7 46 FC 00 00 EB 19 90 83 7E FC 08 .&...F.......~..
38D6:1030 73 1A 8B 5E FE C4 76 06 26 80 38 2E 74 0E FF 46 s..^..v.&.8.t..F
38D6:1040 FE FF 46 FC 8B 46 0A 39 46 FE 72 E0 C4 5E 18 8B ..F..F.9F.r..^..
38D6:1050 46 FE 26 89 07 8B 46 0A 39 46 FE 73 2B 8B 5E FE F.&...F.9F.s+.^.
38D6:1060 C4 76 06 26 80 38 2E 75 1F FF 46 FE C7 46 FC 00 .v.&.8.u..F..F..
38D6:1070 00 EB 0D 90 83 7E FC 03 73 0E FF 46 FE FF 46 FC .....~..s..F..F.
38D6:1080 8B 46 0A 39 46 FE 72 EC C4 5E 1C 8B 46 FE 26 89 .F.9F.r..^..F.&.
38D6:1090 07 5E 8B E5 5D CB 55 8B EC 81 EC 9E 00 57 56 FF .^..].U......WV.
38D6:10A0 76 08 FF 76 06 9A F5 03 17 20 83 C4 04 89 86 64 v..v..... .....d
38D6:10B0 FF 3D 3F 00 76 06 C7 86 64 FF 3F 00 8D 46 9E 16 .=?.v...d.?..F..
38D6:10C0 50 8D 46 FA 16 50 8D 46 B6 16 50 8D 86 68 FF 16 P.F..P.F..P..h..
38D6:10D0 50 8D 46 9C 16 50 FF B6 64 FF FF 76 08 FF 76 06 P.F..P..d..v..v.
38D6:10E0 0E E8 86 FE 83 C4 1A C7 46 B2 00 00 C7 46 B4 00 ........F....F..
38D6:10F0 00 8B 46 0A 2D 01 00 3D 19 00 76 03 E9 F3 00 03 ..F.-..=..v.....
38D6:1100 C0 93 2E FF A7 F8 11 90 B8 B0 5F 89 46 FC 8C 5E .........._.F..^
38D6:1110 FE C7 46 B2 92 00 E9 13 01 90 B8 B6 5F 89 46 FC ..F........._.F.
38D6:1120 8C 5E FE C7 46 B2 C2 00 E9 01 01 90 B8 BC 5F 89 .^..F........._.
38D6:1130 46 FC 8C 5E FE C7 46 B2 C0 00 E9 EF 00 90 B8 C2 F..^..F.........
38D6:1140 5F 89 46 FC 8C 5E FE C7 46 B4 01 00 E9 DD 00 90 _.F..^..F.......
38D6:1150 8B 46 FA 89 46 9E B8 C8 5F EB B0 90 8B 46 FA 89 .F..F..._....F..
38D6:1160 46 9E B8 CE 5F EB B6 90 8B 46 FA 89 46 9E B8 D4 F..._....F..F...
38D6:1170 5F EB BC 90 8B 46 FA 89 46 9E B8 DA 5F EB C2 90 _....F..F..._...
38D6:1180 A1 9E 14 8B 16 A0 14 89 46 FC 89 56 FE EB 82 90 ........F..V....
38D6:1190 A1 9E 14 8B 16 A0 14 89 46 FC 89 56 FE EB 84 90 ........F..V....
38D6:11A0 A1 9E 14 8B 16 A0 14 89 46 FC 89 56 FE EB 98 90 ........F..V....
38D6:11B0 B8 E0 5F E9 67 FF B8 E6 5F EB 86 90 B8 EC 5F E9 .._.g..._....._.
38D6:11C0 6D FF B8 F2 5F E9 79 FF B8 F8 5F E9 61 FF B8 FE m..._.y..._.a...
38D6:11D0 5F E9 5B FF B8 04 60 E9 55 FF B8 06 60 E9 61 FF _.[...`.U...`.a.
38D6:11E0 B8 08 60 E9 5B FF B8 0E 60 E9 43 FF B8 10 60 E9 ..`.[...`.C...`.
38D6:11F0 4F FF B8 16 60 E9 37 FF 08 11 1A 11 2C 11 3E 11 O...`.7.....,.>.
38D6:1200 50 11 5C 11 68 11 74 11 80 11 90 11 A0 11 B0 11 P.\.h.t.........
38D6:1210 B6 11 BC 11 C2 11 C8 11 CE 11 D4 11 F2 11 F2 11 ................
38D6:1220 F2 11 E0 11 E6 11 EC 11 F2 11 DA 11 8B 46 9E 2B .............F.+
38D6:1230 46 B6 89 46 B8 50 8B 46 B6 03 46 06 8B 56 08 52 F..F.P.F..F..V.R
38D6:1240 50 8D 46 A2 16 50 9A EC 02 17 20 83 C4 0A 8B 46 P.F..P.... ....F
38D6:1250 9E 39 46 FA 75 36 FF 76 FE FF 76 FC 9A F5 03 17 .9F.u6.v..v.....
38D6:1260 20 83 C4 04 50 FF 76 FE FF 76 FC 8B 76 B8 8D 42  ...P.v..v..v..B
38D6:1270 A2 16 50 9A EC 02 17 20 83 C4 0A FF 76 FE FF 76 ..P.... ....v..v
38D6:1280 FC 9A F5 03 17 20 83 C4 04 01 46 B8 8B 46 B6 39 ..... ....F..F.9
38D6:1290 46 9C 75 6C C7 46 9A 01 00 B8 FA 13 1E 50 9A F5 F.ul.F.......P..
38D6:12A0 03 17 20 83 C4 04 89 86 66 FF 0B C0 74 7A B8 3F .. .....f...tz.?
38D6:12B0 00 2B 46 B8 8B F0 39 B6 66 FF 76 04 89 B6 66 FF .+F...9.f.v...f.
38D6:12C0 FF B6 66 FF B8 FA 13 1E 50 8D 46 BA 16 50 9A EC ..f.....P.F..P..
38D6:12D0 02 17 20 83 C4 0A 8B B6 66 FF 8A 42 B9 2A E4 50 .. .....f..B.*.P
38D6:12E0 B8 03 00 50 B8 18 60 1E 50 9A 5B 03 17 20 83 C4 ...P..`.P.[.. ..
38D6:12F0 08 3D 03 00 75 32 C6 42 BA 5C FF 86 66 FF EB 28 .=..u2.B.\..f..(
38D6:1300 C7 46 9A 00 00 8B 46 B6 2B 46 9C 89 86 66 FF 50 .F....F.+F...f.P
38D6:1310 8B 46 9C 03 46 06 8B 56 08 52 50 8D 46 BA 16 50 .F..F..V.RP.F..P
38D6:1320 9A EC 02 17 20 83 C4 0A FF 76 B8 8D 46 A2 16 50 .... ....v..F..P
38D6:1330 8B BE 66 FF 8D 43 BA 16 50 9A EC 02 17 20 83 C4 ..f..C..P.... ..
38D6:1340 0A 8B B6 66 FF 03 76 B8 C6 42 BA 00 C7 06 DE 23 ...f..v..B.....#
38D6:1350 00 00 56 8D 46 BA 16 50 B8 9E 23 1E 50 9A EC 02 ..V.F..P..#.P...
38D6:1360 17 20 83 C4 0A C6 84 9E 23 00 83 7E B4 00 74 16 . ......#..~..t.
38D6:1370 2B C0 50 8D 46 BA 16 50 9A 64 00 8F 20 83 C4 06 +.P.F..P.d.. ...
38D6:1380 89 46 96 E9 18 02 83 7E 0A 17 75 10 FF 76 B2 8D .F.....~..u..v..
38D6:1390 46 BA 16 50 9A 87 00 8F 20 EB E2 90 83 7E 0A 13 F..P.... ....~..
38D6:13A0 74 03 E9 FF 00 83 7E 9A 00 74 16 C7 86 62 FF 00 t.....~..t...b..
38D6:13B0 00 B8 3A 14 1E 50 9A F5 03 17 20 83 C4 04 89 46 ..:..P.... ....F
38D6:13C0 98 C7 46 A0 00 00 2B C0 50 8D 86 6A FF 16 50 8D ..F...+.P..j..P.
38D6:13D0 46 BA 16 50 9A 6C 01 17 20 83 C4 0A 0B C0 74 06 F..P.l.. .....t.
38D6:13E0 B8 01 00 EB 04 90 B8 FF FF 89 46 96 3D FF FF 74 ..........F.=..t
38D6:13F0 03 E9 A4 00 83 7E 9A 00 75 03 E9 9B 00 8D 86 68 .....~..u......h
38D6:1400 FF 16 50 FF B6 62 FF FF 76 98 B8 3A 14 1E 50 0E ..P..b..v..:..P.
38D6:1410 E8 FB FA 83 C4 0C 89 86 62 FF 8B 86 68 FF 39 86 ........b...h.9.
38D6:1420 62 FF 76 74 8B 86 62 FF 2B 86 68 FF 89 86 66 FF b.vt..b.+.h...f.
38D6:1430 50 8B 86 68 FF 05 3A 14 1E 50 8D 46 BA 16 50 9A P..h..:..P.F..P.
38D6:1440 EC 02 17 20 83 C4 0A 8B B6 66 FF 8A 42 B9 2A E4 ... .....f..B.*.
38D6:1450 50 B8 03 00 50 B8 1C 60 1E 50 9A 5B 03 17 20 83 P...P..`.P.[.. .
38D6:1460 C4 08 3D 03 00 75 08 C6 42 BA 5C FF 86 66 FF FF ..=..u..B.\..f..
38D6:1470 76 B8 8D 46 A2 16 50 8B B6 66 FF 8D 42 BA 16 50 v..F..P..f..B..P
38D6:1480 9A EC 02 17 20 83 C4 0A 8B B6 66 FF 03 76 B8 C6 .... .....f..v..
38D6:1490 42 BA 00 C7 46 A0 01 00 83 7E A0 00 74 03 E9 20 B...F....~..t.. 
38D6:14A0 FF E9 FA 00 83 7E 9A 00 74 16 C7 86 62 FF 00 00 .....~..t...b...
38D6:14B0 B8 3A 14 1E 50 9A F5 03 17 20 83 C4 04 89 46 98 .:..P.... ....F.
38D6:14C0 C7 46 A0 00 00 FF 76 B2 8D 46 BA 16 50 9A 87 00 .F....v..F..P...
38D6:14D0 8F 20 83 C4 06 89 46 96 3D FF FF 74 03 E9 B5 00 . ....F.=..t....
38D6:14E0 83 7E 9A 00 75 03 E9 AC 00 83 3E CA 10 02 74 0A .~..u.....>...t.
38D6:14F0 83 3E CA 10 03 74 03 E9 9B 00 8D 86 68 FF 16 50 .>...t......h..P
38D6:1500 FF B6 62 FF FF 76 98 B8 3A 14 1E 50 0E E8 FE F9 ..b..v..:..P....
38D6:1510 83 C4 0C 89 86 62 FF 8B 86 68 FF 39 86 62 FF 76 .....b...h.9.b.v
38D6:1520 74 8B 86 62 FF 2B 86 68 FF 89 86 66 FF 50 8B 86 t..b.+.h...f.P..
38D6:1530 68 FF 05 3A 14 1E 50 8D 46 BA 16 50 9A EC 02 17 h..:..P.F..P....
38D6:1540 20 83 C4 0A 8B B6 66 FF 8A 42 B9 2A E4 50 B8 03  .....f..B.*.P..
38D6:1550 00 50 B8 20 60 1E 50 9A 5B 03 17 20 83 C4 08 3D .P. `.P.[.. ...=
38D6:1560 03 00 75 08 C6 42 BA 5C FF 86 66 FF FF 76 B8 8D ..u..B.\..f..v..
38D6:1570 46 A2 16 50 8B B6 66 FF 8D 42 BA 16 50 9A EC 02 F..P..f..B..P...
38D6:1580 17 20 83 C4 0A 8B B6 66 FF 03 76 B8 C6 42 BA 00 . .....f..v..B..
38D6:1590 C7 46 A0 01 00 83 7E A0 00 74 03 E9 22 FF 83 7E .F....~..t.."..~
38D6:15A0 96 FF 75 0C 83 7E 0A 13 74 06 A1 CA 10 A3 DE 23 ..u..~..t......#
