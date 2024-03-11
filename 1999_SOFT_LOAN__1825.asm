;;; Segment 1825 (1825:0000)
1825:0000 76 00 B0 59 03 00 64 3D 10 34                   v..Y..d=.4      

;; fn1825_000A: 1825:000A
;;   Called from:
;;     21DC:007E (in fn21DC_0006)
fn1825_000A proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	call	far 1F38h:0517h
	mov	al,ah
	sub	ah,ah
	mov	[0C0Ch],ax
	call	far 1F38h:0517h
	sub	ah,ah
	mov	[0C0Eh],ax
	cmp	word ptr [08F8h],0h
	jz	0039h

l1825_002D:
	mov	ax,8F6h
	push	ds
	push	ax
	push	cs
	call	22BCh
	add	sp,4h

l1825_0039:
	cmp	word ptr [0EE4h],0h
	jnz	0053h

l1825_0040:
	mov	ax,8F6h
	push	ds
	push	ax
	push	cs
	call	0DA8h
	add	sp,4h
	or	ax,ax
	jnz	0053h

l1825_0050:
	jmp	0171h

l1825_0053:
	mov	ax,[13F4h]
	mov	[0A28h],ax
	mov	ax,[209Ah]
	mov	[0A2Ah],ax
	mov	word ptr [209Ah],1h
	push	cs
	call	70D4h
	push	word ptr [0EE6h]
	push	cs
	call	7078h
	add	sp,2h
	cmp	word ptr [0F02h],0h
	jz	0098h

l1825_007B:
	push	word ptr [0F02h]
	call	far 21DCh:097Eh
	add	sp,2h
	mov	[0914h],ax
	mov	[0916h],dx
	push	dx
	push	ax
	call	far 1F38h:0A29h
	add	sp,4h

l1825_0098:
	cmp	word ptr [0EE4h],2h
	jnz	00D3h

l1825_009F:
	mov	word ptr [090Eh],0h
	mov	word ptr [0910h],0h
	mov	word ptr [08FAh],1h
	mov	word ptr [08FCh],0h
	mov	word ptr [0902h],1h
	mov	word ptr [0904h],0h
	mov	ax,8F6h
	push	ds
	push	ax
	mov	ax,21h
	push	ax
	push	cs
	call	6D08h
	add	sp,6h

l1825_00D3:
	mov	word ptr [bp-2h],1h
	mov	word ptr [bp-4h],1h
	jmp	0102h
1825:00DF                                              90                .

l1825_00E0:
	mov	ax,8F6h
	push	ds
	push	ax
	push	cs
	call	017Ah
	add	sp,4h
	mov	[bp-4h],ax
	or	ax,ax
	jz	0102h

l1825_00F3:
	mov	ax,8F6h
	push	ds
	push	ax
	push	cs
	call	0AA6h
	add	sp,4h
	mov	[bp-2h],ax

l1825_0102:
	cmp	word ptr [bp-2h],0h
	jnz	00E0h

l1825_0108:
	mov	ax,8F6h
	push	ds
	push	ax
	push	cs
	call	6D80h
	add	sp,4h
	cmp	word ptr [0F02h],0h
	jz	013Fh

l1825_011B:
	push	word ptr [0916h]
	push	word ptr [0914h]
	call	far 1F38h:0A4Ch
	add	sp,4h
	push	word ptr [0F02h]
	push	word ptr [0916h]
	push	word ptr [0914h]
	call	far 21DCh:09B4h
	add	sp,6h

l1825_013F:
	push	cs
	call	7106h
	push	word ptr [0C0Eh]
	push	word ptr [0C0Ch]
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,[0A2Ah]
	mov	[209Ah],ax
	push	word ptr [0A28h]
	call	far 1F38h:0527h
	add	sp,2h
	mov	ax,[0A28h]
	mov	[13F4h],ax
	mov	ax,[08F6h]
	mov	[0EE4h],ax

l1825_0171:
	call	far 21DCh:0D60h
	mov	sp,bp
	pop	bp
	retf

;; fn1825_017A: 1825:017A
;;   Called from:
;;     1825:00E5 (in fn1825_000A)
fn1825_017A proc
	push	bp
	mov	bp,sp
	sub	sp,0Ah
	mov	word ptr [bp-6h],0h
	mov	word ptr [bp-8h],1h
	mov	word ptr [bp-2h],0h
	mov	word ptr [bp-4h],1h
	mov	word ptr [bp-0Ah],0h
	sub	ax,ax
	push	ax
	mov	ax,1h
	push	ax
	call	far 1F38h:04E7h
	add	sp,4h
	cmp	word ptr [0F02h],0h
	jz	01C4h

l1825_01AF:
	les	bx,[bp+6h]
	push	word ptr es:[bx+20h]
	push	word ptr es:[bx+1Eh]
	call	far 1F38h:0A4Ch
	add	sp,4h
	jmp	01C9h

l1825_01C4:
	call	far 1F38h:094Ch

l1825_01C9:
	les	bx,[bp+6h]
	les	bx,es:[bx+62h]
	cmp	word ptr es:[bx],0h
	jz	01E3h

l1825_01D6:
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	2020h
	add	sp,4h

l1825_01E3:
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+6h],0h
	jnz	0222h

l1825_01ED:
	cmp	word ptr es:[bx+0Eh],0h
	jnz	0222h

l1825_01F4:
	cmp	word ptr es:[bx+4h],0h
	jz	0204h

l1825_01FB:
	push	es
	push	bx
	push	cs
	call	02F0h
	add	sp,4h

l1825_0204:
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+0Ch],0h
	jz	021Ah

l1825_020E:
	push	es
	push	bx
	push	cs
	call	05F2h
	add	sp,4h
	mov	[bp-2h],ax

l1825_021A:
	mov	word ptr [bp-6h],1h
	jmp	02BCh

l1825_0222:
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+4h],0h
	jz	0235h

l1825_022C:
	push	es
	push	bx
	push	cs
	call	02F0h
	add	sp,4h

l1825_0235:
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+6h],0h
	jz	024Bh

l1825_023F:
	push	es
	push	bx
	push	cs
	call	037Eh
	add	sp,4h
	mov	[bp-8h],ax

l1825_024B:
	cmp	word ptr [bp-8h],14h
	jz	028Ah

l1825_0251:
	cmp	word ptr [bp-8h],0BB8h
	jz	028Ah

l1825_0258:
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+0Ch],0h
	jz	026Eh

l1825_0262:
	push	es
	push	bx
	push	cs
	call	05F2h
	add	sp,4h
	mov	[bp-2h],ax

l1825_026E:
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+0Eh],0h
	jz	028Ah

l1825_0278:
	cmp	word ptr [bp-2h],0h
	jz	028Ah

l1825_027E:
	push	es
	push	bx
	push	cs
	call	06E0h
	add	sp,4h
	mov	[bp-8h],ax

l1825_028A:
	cmp	word ptr [bp-8h],6h
	jnz	02BCh

l1825_0290:
	mov	word ptr [bp-6h],1h
	les	bx,[bp+6h]
	mov	word ptr es:[bx+1Ah],0h
	mov	word ptr es:[bx+18h],0h
	mov	word ptr [095Eh],0h
	mov	word ptr [0982h],0h
	mov	word ptr [09A6h],0h
	mov	word ptr [09CAh],0h

l1825_02BC:
	cmp	word ptr [bp-6h],0h
	jz	02E9h

l1825_02C2:
	les	bx,[bp+6h]
	mov	ax,es:[bx+8h]
	mov	cx,ax
	shl	ax,1h
	shl	ax,1h
	add	ax,cx
	shl	ax,1h
	add	ax,0Ah
	mov	es:[bx+16h],ax
	cmp	word ptr [bp-2h],0h
	jz	02E9h

l1825_02E0:
	mov	ax,es:[bx+10h]
	inc	ax
	add	es:[bx+16h],ax

l1825_02E9:
	mov	ax,[bp-6h]
	mov	sp,bp
	pop	bp
	retf

;; fn1825_02F0: 1825:02F0
;;   Called from:
;;     1825:01FD (in fn1825_017A)
;;     1825:022E (in fn1825_017A)
fn1825_02F0 proc
	push	bp
	mov	bp,sp
	sub	sp,0Ch
	mov	ax,[bp+6h]
	mov	dx,[bp+8h]
	add	ax,22h
	push	dx
	push	ax
	push	cs
	call	0A7Ah
	add	sp,4h
	mov	[bp-2h],ax
	mov	word ptr [bp-8h],0h
	mov	word ptr [bp-6h],0h
	mov	word ptr [bp-4h],0h
	jmp	0371h

l1825_031C:
	push	word ptr [bp-6h]
	sub	ax,ax
	push	ax
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,[bp-4h]
	shl	ax,1h
	shl	ax,1h
	add	ax,[bp+6h]
	mov	dx,[bp+8h]
	add	ax,22h
	mov	[bp-0Ch],ax
	mov	[bp-0Ah],dx
	les	bx,[bp-0Ch]
	push	word ptr es:[bx+2h]
	push	word ptr es:[bx]
	call	far 2017h:03F5h
	add	sp,4h
	mov	[bp-8h],ax
	push	ax
	les	bx,[bp-0Ch]
	push	word ptr es:[bx+2h]
	push	word ptr es:[bx]
	call	far 1F38h:049Fh
	add	sp,6h
	mov	ax,[bp-8h]
	add	[bp-6h],ax
	inc	word ptr [bp-4h]

l1825_0371:
	mov	ax,[bp-2h]
	cmp	[bp-4h],ax
	jc	031Ch

l1825_0379:
	mov	sp,bp
	pop	bp
	retf
1825:037D                                        90                    .  

;; fn1825_037E: 1825:037E
;;   Called from:
;;     1825:0241 (in fn1825_017A)
fn1825_037E proc
	push	bp
	mov	bp,sp
	sub	sp,16h
	push	si
	mov	word ptr [bp-0Eh],0h
	mov	word ptr [bp-0Ch],1h
	mov	ax,[bp+6h]
	mov	dx,[bp+8h]
	add	ax,22h
	push	dx
	push	ax
	push	cs
	call	0A7Ah
	add	sp,4h
	mov	[bp-2h],ax
	mov	word ptr [bp-12h],0h
	mov	word ptr [bp-6h],0h
	les	bx,[bp+6h]
	mov	ax,es:[bx+8h]
	mov	[bp-8h],ax
	sub	ax,ax
	push	ax
	call	far 1F38h:0527h
	add	sp,2h
	mov	word ptr [bp-0Ah],0h

l1825_03C8:
	push	word ptr [bp-8h]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	0A00h
	add	sp,6h
	mov	[bp-10h],ax
	call	far 1F38h:07FAh
	push	word ptr [bp-10h]
	push	word ptr [bp-6h]
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,[bp-8h]
	shl	ax,1h
	shl	ax,1h
	add	ax,[bp+6h]
	mov	dx,[bp+8h]
	add	ax,22h
	mov	[bp-16h],ax
	mov	[bp-14h],dx
	les	bx,[bp-16h]
	push	word ptr es:[bx+2h]
	push	word ptr es:[bx]
	call	far 2017h:03F5h
	add	sp,4h
	mov	[bp-12h],ax
	push	ax
	les	bx,[bp-16h]
	push	word ptr es:[bx+2h]
	push	word ptr es:[bx]
	call	far 1F38h:049Fh
	add	sp,6h
	call	far 1F38h:0CC5h
	sub	ax,ax
	push	ax
	mov	ax,8h
	push	ax
	call	far 3431h:07B6h
	add	sp,4h
	mov	[bp-0Ch],ax
	call	far 1F38h:07E7h
	push	word ptr [bp-10h]
	push	word ptr [bp-6h]
	call	far 1F38h:04E7h
	add	sp,4h
	push	word ptr [bp-12h]
	les	bx,[bp-16h]
	push	word ptr es:[bx+2h]
	push	word ptr es:[bx]
	call	far 1F38h:049Fh
	add	sp,6h
	mov	ax,[bp-0Ch]
	sub	ax,1h
	cmp	ax,13h
	jbe	0479h

l1825_0476:
	jmp	05D4h

l1825_0479:
	add	ax,ax
	xchg	bx,ax
	jmp	word ptr cs:[bx+5ACh]
1825:0481    90                                            .              

l1825_0482:
	les	bx,[bp+6h]
	mov	ax,[bp-8h]
	mov	es:[bx+8h],ax
	mov	word ptr es:[bx+10h],0h
	mov	word ptr es:[bx+16h],0h
	jmp	04DAh

l1825_049A:
	mov	ax,[bp-0Ch]
	mov	[0966h],ax
	mov	ax,95Ch
	push	ds
	push	ax
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	6B02h
	add	sp,8h
	mov	[bp-0Ch],ax
	cmp	ax,0BB8h
	jz	04BDh

l1825_04BA:
	jmp	05D4h

l1825_04BD:
	les	bx,[bp+6h]
	mov	word ptr es:[bx+18h],1h
	mov	ax,[bp-8h]
	mov	cx,ax
	shl	ax,1h
	shl	ax,1h
	add	ax,cx
	shl	ax,1h
	add	ax,0Ah
	mov	es:[bx+1Ch],ax

l1825_04DA:
	mov	word ptr [bp-0Ah],1h
	jmp	05D4h

l1825_04E2:
	mov	ax,1h
	push	ax
	mov	ax,[bp+6h]
	mov	dx,[bp+8h]
	add	ax,22h
	push	dx
	push	ax
	push	cs
	call	66D4h
	add	sp,6h
	mov	[bp-4h],ax
	cmp	ax,0FFFFh
	jg	0503h

l1825_0500:
	jmp	05D4h

l1825_0503:
	mov	[bp-8h],ax
	jmp	05D4h
1825:0509                            90                            .      

l1825_050A:
	les	bx,[bp+6h]
	mov	ax,[bp-8h]
	mov	es:[bx+8h],ax
	mov	si,ax
	shl	si,1h
	shl	si,1h
	les	bx,es:[bx+si+3Eh]
	mov	ax,es:[bx]
	or	ax,es:[bx+2h]
	jz	0538h

l1825_0527:
	les	bx,[bp+6h]

l1825_052A:
	mov	word ptr es:[bx+0Ch],1h
	mov	word ptr es:[bx+0Eh],1h
	jmp	04DAh

l1825_0538:
	les	bx,[bp+6h]
	mov	word ptr es:[bx+0Ch],0h
	mov	word ptr es:[bx+0Eh],0h
	mov	word ptr es:[bx+10h],0h
	jmp	04DAh
1825:054F                                              90                .

l1825_0550:
	cmp	word ptr [bp-8h],1h
	jl	05D4h

l1825_0556:
	dec	word ptr [bp-8h]

l1825_0559:
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+14h],0h
	jz	05D4h

l1825_0563:
	mov	si,[bp-8h]
	shl	si,1h
	shl	si,1h
	les	bx,es:[bx+si+3Eh]
	mov	ax,es:[bx]
	or	ax,es:[bx+2h]
	jz	05D4h

l1825_0577:
	les	bx,[bp+6h]
	mov	ax,[bp-8h]
	mov	es:[bx+8h],ax
	mov	word ptr es:[bx+4h],1h
	mov	word ptr es:[bx+6h],0h
	jmp	052Ah
1825:058F                                              90                .

l1825_0590:
	cmp	word ptr [bp-8h],5h
	jge	05D4h

l1825_0596:
	inc	word ptr [bp-8h]
	jmp	0559h
1825:059B                                  90                        .    

l1825_059C:
	mov	word ptr [bp-8h],0h
	jmp	05D4h
1825:05A3          90                                        .            

l1825_05A4:
	mov	ax,[bp-2h]
	dec	ax
	jmp	0503h
1825:05AB                                  90                        .    
l1825_05AC	dw	0x049A
l1825_05AE	dw	0x04E2
l1825_05B0	dw	0x05D4
l1825_05B2	dw	0x05D4
l1825_05B4	dw	0x05D4
l1825_05B6	dw	0x050A
l1825_05B8	dw	0x0550
l1825_05BA	dw	0x0590
l1825_05BC	dw	0x059C
l1825_05BE	dw	0x05A4
l1825_05C0	dw	0x05D4
l1825_05C2	dw	0x05D4
l1825_05C4	dw	0x05D4
l1825_05C6	dw	0x05D4
l1825_05C8	dw	0x05D4
l1825_05CA	dw	0x05D4
l1825_05CC	dw	0x05D4
l1825_05CE	dw	0x05D4
l1825_05D0	dw	0x05D4
l1825_05D2	dw	0x0482

l1825_05D4:
	cmp	word ptr [bp-0Ah],0h
	jnz	05DDh

l1825_05DA:
	jmp	03C8h

l1825_05DD:
	mov	ax,1h
	push	ax
	call	far 1F38h:0527h
	add	sp,2h
	mov	ax,[bp-0Ch]
	pop	si
	mov	sp,bp
	pop	bp
	retf
1825:05F1    90                                            .              

;; fn1825_05F2: 1825:05F2
;;   Called from:
;;     1825:0210 (in fn1825_017A)
;;     1825:0264 (in fn1825_017A)
fn1825_05F2 proc
	push	bp
	mov	bp,sp
	sub	sp,10h
	push	si
	les	bx,[bp+6h]
	mov	ax,es:[bx+8h]
	mov	[bp-8h],ax
	mov	word ptr [bp-6h],0h
	mov	si,ax
	shl	si,1h
	shl	si,1h
	push	word ptr es:[bx+si+40h]
	push	word ptr es:[bx+si+3Eh]
	push	cs
	call	0A7Ah
	add	sp,4h
	mov	[bp-2h],ax
	or	ax,ax
	jnz	0627h

l1825_0624:
	jmp	06D8h

l1825_0627:
	mov	word ptr [bp-0Ch],0h
	mov	word ptr [bp-4h],2h
	push	word ptr [bp-8h]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	0A00h
	add	sp,6h
	inc	ax
	mov	[bp-0Ah],ax
	jmp	06A7h
1825:0647                      90                                .        

l1825_0648:
	push	word ptr [bp-0Ah]
	push	word ptr [bp-4h]
	call	far 1F38h:04E7h
	add	sp,4h
	mov	si,[bp-6h]
	mov	cl,2h
	shl	si,cl
	mov	ax,[bp-8h]
	shl	ax,1h
	shl	ax,1h
	add	ax,[bp+6h]
	mov	dx,[bp+8h]
	add	ax,3Eh
	mov	[bp-10h],ax
	mov	[bp-0Eh],dx
	les	bx,[bp-10h]
	les	bx,es:[bx]
	push	word ptr es:[bx+si+2h]
	push	word ptr es:[bx+si]
	call	far 2017h:03F5h
	add	sp,4h
	mov	[bp-0Ch],ax
	push	ax
	les	bx,[bp-10h]
	les	bx,es:[bx]
	push	word ptr es:[bx+si+2h]
	push	word ptr es:[bx+si]
	call	far 1F38h:049Fh
	add	sp,6h
	inc	word ptr [bp-4h]
	inc	word ptr [bp-6h]

l1825_06A7:
	mov	ax,[bp-2h]
	cmp	[bp-6h],ax
	jc	0648h

l1825_06AF:
	mov	word ptr [bp-4h],1h
	mov	ax,0A2Ch
	push	ds
	push	ax
	mov	ax,[bp-0Ah]
	add	ax,[bp-0Ch]
	push	ax
	mov	ax,[bp-6h]
	add	ax,2h
	push	ax
	mov	ax,[bp-0Ah]
	dec	ax
	push	ax
	mov	ax,1h
	push	ax
	call	far 1F38h:05DBh
	add	sp,0Ch

l1825_06D8:
	mov	ax,[bp-2h]
	pop	si
	mov	sp,bp
	pop	bp
	retf

;; fn1825_06E0: 1825:06E0
;;   Called from:
;;     1825:0280 (in fn1825_017A)
fn1825_06E0 proc
	push	bp
	mov	bp,sp
	sub	sp,18h
	push	di
	push	si
	les	bx,[bp+6h]
	mov	ax,es:[bx+8h]
	mov	[bp-0Ah],ax
	mov	ax,es:[bx+10h]
	mov	[bp-8h],ax
	mov	di,[bp-0Ah]
	shl	di,1h
	shl	di,1h
	push	word ptr es:[bx+di+40h]
	push	word ptr es:[bx+di+3Eh]
	push	cs
	call	0A7Ah
	add	sp,4h
	mov	[bp-2h],ax
	mov	si,ax
	dec	si
	cmp	[bp-8h],si
	jle	071Dh

l1825_071A:
	mov	[bp-8h],si

l1825_071D:
	mov	word ptr [bp-0Eh],1h
	mov	word ptr [bp-14h],0h
	mov	word ptr [bp-10h],0h
	mov	word ptr [bp-0Ch],0h
	mov	word ptr [bp-6h],2h
	push	word ptr [bp-0Ah]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	0A00h
	add	sp,6h
	inc	ax
	mov	[bp-12h],ax
	sub	ax,ax
	push	ax
	call	far 1F38h:0527h
	add	sp,2h
	jmp	09E2h

l1825_0758:
	call	far 1F38h:07FAh
	mov	si,[bp-8h]
	add	si,[bp-6h]
	push	word ptr [bp-12h]
	push	si
	call	far 1F38h:04E7h
	add	sp,4h
	mov	di,[bp-8h]
	mov	cl,2h
	shl	di,cl
	mov	ax,[bp-0Ah]
	shl	ax,1h
	shl	ax,1h
	add	ax,[bp+6h]
	mov	dx,[bp+8h]
	add	ax,3Eh
	mov	[bp-18h],ax
	mov	[bp-16h],dx
	les	bx,[bp-18h]
	les	bx,es:[bx]
	push	word ptr es:[bx+di+2h]
	push	word ptr es:[bx+di]
	call	far 2017h:03F5h
	add	sp,4h
	mov	[bp-14h],ax
	push	ax
	les	bx,[bp-18h]
	les	bx,es:[bx]
	push	word ptr es:[bx+di+2h]
	push	word ptr es:[bx+di]
	call	far 1F38h:049Fh
	add	sp,6h
	call	far 1F38h:0CC5h
	sub	ax,ax
	push	ax
	mov	ax,8h
	push	ax
	call	far 3431h:07B6h
	add	sp,4h
	mov	[bp-0Eh],ax
	call	far 1F38h:07E7h
	push	word ptr [bp-12h]
	push	si
	call	far 1F38h:04E7h
	add	sp,4h
	push	word ptr [bp-14h]
	les	bx,[bp-18h]
	les	bx,es:[bx]
	push	word ptr es:[bx+di+2h]
	push	word ptr es:[bx+di]
	call	far 1F38h:049Fh
	add	sp,6h
	mov	ax,[bp-0Eh]
	sub	ax,1h
	cmp	ax,13h
	jbe	0808h

l1825_0805:
	jmp	09E2h

l1825_0808:
	add	ax,ax
	xchg	bx,ax
	jmp	word ptr cs:[bx+9BAh]

l1825_0810:
	les	bx,[bp+6h]
	mov	word ptr es:[bx+14h],0h
	mov	word ptr es:[bx+4h],1h
	mov	word ptr es:[bx+6h],1h
	mov	ax,[bp-0Ah]
	mov	es:[bx+8h],ax
	mov	word ptr es:[bx+10h],0h
	mov	word ptr es:[bx+16h],0h
	jmp	0882h

l1825_083A:
	mov	ax,[bp-0Eh]
	mov	[0966h],ax
	mov	ax,95Ch
	push	ds
	push	ax
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	6B02h
	add	sp,8h
	mov	[bp-0Eh],ax
	cmp	ax,0BB8h
	jz	085Dh

l1825_085A:
	jmp	09E2h

l1825_085D:
	les	bx,[bp+6h]
	mov	word ptr es:[bx+18h],2h
	mov	ax,[bp-0Ah]
	mov	cx,ax
	shl	ax,1h
	shl	ax,1h
	add	ax,cx
	shl	ax,1h
	add	ax,0Ah
	mov	es:[bx+1Ch],ax
	mov	ax,[bp-8h]
	inc	ax
	add	es:[bx+1Ch],ax

l1825_0882:
	mov	word ptr [bp-0Ch],1h
	jmp	09E2h

l1825_088A:
	mov	ax,1h
	push	ax
	mov	si,[bp-0Ah]
	shl	si,1h
	shl	si,1h
	les	bx,[bp+6h]
	push	word ptr es:[bx+si+40h]
	push	word ptr es:[bx+si+3Eh]
	push	cs
	call	66D4h
	add	sp,6h
	mov	[bp-4h],ax
	cmp	ax,0FFFFh
	jg	08B2h

l1825_08AF:
	jmp	09E2h

l1825_08B2:
	mov	[bp-8h],ax
	jmp	09E2h

l1825_08B8:
	les	bx,[bp+6h]
	mov	word ptr es:[bx+4h],1h
	mov	word ptr es:[bx+6h],0h
	mov	ax,[bp-0Ah]
	mov	es:[bx+8h],ax
	mov	ax,[bp-8h]
	mov	es:[bx+10h],ax
	jmp	0882h
1825:08D7                      90                                .        

l1825_08D8:
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+8h],1h
	jl	0882h

l1825_08E2:
	dec	word ptr es:[bx+8h]
	mov	word ptr es:[bx+14h],1h
	mov	di,es:[bx+8h]
	shl	di,1h
	shl	di,1h
	push	word ptr es:[bx+di+40h]
	push	word ptr es:[bx+di+3Eh]
	push	cs
	call	0A7Ah
	add	sp,4h
	mov	[bp-4h],ax
	or	ax,ax
	jg	0964h

l1825_090A:
	les	bx,[bp+6h]
	mov	word ptr es:[bx+4h],1h
	mov	word ptr es:[bx+6h],1h
	mov	word ptr es:[bx+0Ch],0h
	mov	word ptr es:[bx+0Eh],0h
	jmp	0882h

l1825_0928:
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+8h],5h
	jl	0935h

l1825_0932:
	jmp	0882h

l1825_0935:
	inc	word ptr es:[bx+8h]
	mov	ax,[bp-8h]
	mov	es:[bx+10h],ax
	mov	word ptr es:[bx+14h],1h
	mov	di,es:[bx+8h]
	shl	di,1h
	shl	di,1h
	push	word ptr es:[bx+di+40h]
	push	word ptr es:[bx+di+3Eh]
	push	cs
	call	0A7Ah
	add	sp,4h
	mov	[bp-4h],ax
	or	ax,ax
	jle	090Ah

l1825_0964:
	mov	si,ax
	dec	si
	les	bx,[bp+6h]
	cmp	es:[bx+10h],si
	jle	0974h

l1825_0970:
	mov	es:[bx+10h],si

l1825_0974:
	mov	word ptr es:[bx+4h],1h
	mov	word ptr es:[bx+6h],0h
	mov	word ptr es:[bx+0Ch],1h
	mov	word ptr es:[bx+0Eh],1h
	jmp	0882h
1825:098F                                              90                .

l1825_0990:
	cmp	word ptr [bp-8h],1h
	jl	09E2h

l1825_0996:
	dec	word ptr [bp-8h]
	jmp	09E2h
1825:099B                                  90                        .    

l1825_099C:
	mov	ax,[bp-8h]
	inc	ax
	cmp	ax,[bp-2h]
	jge	09E2h

l1825_09A5:
	inc	word ptr [bp-8h]
	jmp	09E2h

l1825_09AA:
	mov	word ptr [bp-8h],0h
	jmp	09E2h
1825:09B1    90                                            .              

l1825_09B2:
	mov	ax,[bp-2h]
	dec	ax
	jmp	08B2h
1825:09B9                            90                            .      
l1825_09BA	dw	0x083A
l1825_09BC	dw	0x088A
l1825_09BE	dw	0x09E2
l1825_09C0	dw	0x09E2
l1825_09C2	dw	0x09E2
l1825_09C4	dw	0x08B8
l1825_09C6	dw	0x08D8
l1825_09C8	dw	0x0928
l1825_09CA	dw	0x09AA
l1825_09CC	dw	0x09B2
l1825_09CE	dw	0x09E2
l1825_09D0	dw	0x09E2
l1825_09D2	dw	0x09E2
l1825_09D4	dw	0x09E2
l1825_09D6	dw	0x0990
l1825_09D8	dw	0x099C
l1825_09DA	dw	0x09E2
l1825_09DC	dw	0x09E2
l1825_09DE	dw	0x09E2
l1825_09E0	dw	0x0810

l1825_09E2:
	cmp	word ptr [bp-0Ch],0h
	jnz	09EBh

l1825_09E8:
	jmp	0758h

l1825_09EB:
	mov	ax,1h
	push	ax
	call	far 1F38h:0527h
	add	sp,2h
	mov	ax,[bp-0Eh]
	pop	si
	pop	di
	mov	sp,bp
	pop	bp
	retf

;; fn1825_0A00: 1825:0A00
;;   Called from:
;;     1825:03D1 (in fn1825_037E)
;;     1825:063A (in fn1825_05F2)
;;     1825:073F (in fn1825_06E0)
fn1825_0A00 proc
	push	bp
	mov	bp,sp
	sub	sp,8h
	push	si
	mov	word ptr [bp-6h],0h
	mov	word ptr [bp-8h],0h
	mov	word ptr [bp-4h],0h
	mov	ax,[bp+6h]
	mov	dx,[bp+8h]
	add	ax,22h
	push	dx
	push	ax
	push	cs
	call	0A7Ah
	add	sp,4h
	mov	[bp-2h],ax
	jmp	0A59h
1825:0A2D                                        90                    .  

l1825_0A2E:
	mov	ax,[bp-2h]
	cmp	[bp-4h],ax
	jnc	0A61h

l1825_0A36:
	mov	si,[bp-4h]
	shl	si,1h
	shl	si,1h
	les	bx,[bp+6h]
	push	word ptr es:[bx+si+24h]
	push	word ptr es:[bx+si+22h]
	call	far 2017h:03F5h
	add	sp,4h
	mov	[bp-8h],ax
	add	[bp-6h],ax
	inc	word ptr [bp-4h]

l1825_0A59:
	mov	ax,[bp-4h]
	cmp	[bp+0Ah],ax
	ja	0A2Eh

l1825_0A61:
	mov	ax,[bp-2h]
	cmp	[bp-4h],ax
	jnc	0A72h

l1825_0A69:
	mov	ax,[bp-6h]
	pop	si
	mov	sp,bp
	pop	bp
	retf
1825:0A71    90                                            .              

l1825_0A72:
	mov	ax,0FFFFh
	pop	si
	mov	sp,bp
	pop	bp
	retf

;; fn1825_0A7A: 1825:0A7A
;;   Called from:
;;     1825:0301 (in fn1825_02F0)
;;     1825:039A (in fn1825_037E)
;;     1825:0616 (in fn1825_05F2)
;;     1825:0708 (in fn1825_06E0)
;;     1825:08FC (in fn1825_06E0)
;;     1825:0956 (in fn1825_06E0)
;;     1825:0A21 (in fn1825_0A00)
fn1825_0A7A proc
	push	bp
	mov	bp,sp
	sub	sp,2h
	push	si
	mov	word ptr [bp-2h],0h

l1825_0A86:
	mov	bx,[bp-2h]
	shl	bx,1h
	shl	bx,1h
	les	si,[bp+6h]
	mov	ax,es:[bx+si]
	or	ax,es:[bx+si+2h]
	jz	0A9Eh

l1825_0A99:
	inc	word ptr [bp-2h]
	jmp	0A86h

l1825_0A9E:
	mov	ax,[bp-2h]
	pop	si
	mov	sp,bp
	pop	bp
	retf

;; fn1825_0AA6: 1825:0AA6
;;   Called from:
;;     1825:00F8 (in fn1825_000A)
fn1825_0AA6 proc
	push	bp
	mov	bp,sp
	sub	sp,2h
	les	bx,[bp+6h]
	mov	ax,es:[bx+16h]
	sub	ax,0Bh
	cmp	ax,34h
	jbe	0ABEh

l1825_0ABB:
	jmp	0BCEh

l1825_0ABE:
	add	ax,ax
	xchg	bx,ax
	jmp	word ptr cs:[bx+0BF6h]

l1825_0AC6:
	push	es
	push	word ptr [bp+6h]
	push	cs
	call	0C68h

l1825_0ACE:
	add	sp,4h

l1825_0AD1:
	mov	[bp-2h],ax
	jmp	0C60h
1825:0AD7                      90                                .        

l1825_0AD8:
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	0CBCh
	jmp	0ACEh

l1825_0AE4:
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	0C7Eh
	jmp	0ACEh

l1825_0AF0:
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	23CAh
	jmp	0ACEh

l1825_0AFC:
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	0CD2h
	jmp	0ACEh

l1825_0B08:
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	0D3Ch
	jmp	0ACEh

l1825_0B14:
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	0D5Eh
	jmp	0ACEh

l1825_0B20:
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	26D6h
	jmp	0ACEh

l1825_0B2C:
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	2880h
	jmp	0ACEh

l1825_0B38:
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	2A26h
	jmp	0ACEh

l1825_0B44:
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	3436h
	jmp	0ACEh
1825:0B51    90                                            .              

l1825_0B52:
	sub	ax,ax

l1825_0B54:
	push	ax
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	4DA6h
	add	sp,6h
	jmp	0AD1h
1825:0B65                90                                    .          

l1825_0B66:
	mov	ax,1h
	jmp	0B54h
1825:0B6B                                  90                        .    

l1825_0B6C:
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	5154h
	jmp	0ACEh
1825:0B79                            90                            .      

l1825_0B7A:
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	5BD8h
	jmp	0ACEh
1825:0B87                      90                                .        

l1825_0B88:
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	23DAh
	jmp	0ACEh
1825:0B95                90                                    .          

l1825_0B96:
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	0E72h
	jmp	0ACEh
1825:0BA3          90                                        .            

l1825_0BA4:
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	1884h
	jmp	0ACEh
1825:0BB1    90                                            .              

l1825_0BB2:
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	18A6h
	jmp	0ACEh
1825:0BBF                                              90                .

l1825_0BC0:
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	1FB6h
	jmp	0ACEh
1825:0BCD                                        90                    .  

l1825_0BCE:
	les	bx,[bp+6h]
	mov	word ptr es:[bx+16h],0h
	mov	word ptr es:[bx+4h],1h
	mov	word ptr es:[bx+6h],1h
	mov	word ptr es:[bx+0Ch],1h
	mov	word ptr es:[bx+0Eh],1h
	mov	word ptr [bp-2h],1h
	jmp	0C60h
l1825_0BF6	dw	0x0AC6
l1825_0BF8	dw	0x0AD8
l1825_0BFA	dw	0x0AE4
l1825_0BFC	dw	0x0AF0
l1825_0BFE	dw	0x0AFC
l1825_0C00	dw	0x0B08
l1825_0C02	dw	0x0B14
l1825_0C04	dw	0x0BCE
l1825_0C06	dw	0x0BCE
l1825_0C08	dw	0x0BCE
l1825_0C0A	dw	0x0B20
l1825_0C0C	dw	0x0B2C
l1825_0C0E	dw	0x0B38
l1825_0C10	dw	0x0B44
l1825_0C12	dw	0x0BCE
l1825_0C14	dw	0x0BCE
l1825_0C16	dw	0x0BCE
l1825_0C18	dw	0x0BCE
l1825_0C1A	dw	0x0BCE
l1825_0C1C	dw	0x0BCE
l1825_0C1E	dw	0x0B52
l1825_0C20	dw	0x0B66
l1825_0C22	dw	0x0B6C
l1825_0C24	dw	0x0B7A
l1825_0C26	dw	0x0BCE
l1825_0C28	dw	0x0BCE
l1825_0C2A	dw	0x0BCE
l1825_0C2C	dw	0x0BCE
l1825_0C2E	dw	0x0BCE
l1825_0C30	dw	0x0BCE
l1825_0C32	dw	0x0B88
l1825_0C34	dw	0x0B88
l1825_0C36	dw	0x0B88
l1825_0C38	dw	0x0B88
l1825_0C3A	dw	0x0B88
l1825_0C3C	dw	0x0B88
l1825_0C3E	dw	0x0B88
l1825_0C40	dw	0x0B88
l1825_0C42	dw	0x0BCE
l1825_0C44	dw	0x0B96
l1825_0C46	dw	0x0BCE
l1825_0C48	dw	0x0BCE
l1825_0C4A	dw	0x0BCE
l1825_0C4C	dw	0x0BCE
l1825_0C4E	dw	0x0BCE
l1825_0C50	dw	0x0BCE
l1825_0C52	dw	0x0BCE
l1825_0C54	dw	0x0BCE
l1825_0C56	dw	0x0BCE
l1825_0C58	dw	0x0BCE
l1825_0C5A	dw	0x0BA4
l1825_0C5C	dw	0x0BB2
l1825_0C5E	dw	0x0BC0

l1825_0C60:
	mov	ax,[bp-2h]
	mov	sp,bp
	pop	bp
	retf
1825:0C67                      90                                .        

;; fn1825_0C68: 1825:0C68
;;   Called from:
;;     1825:0ACA (in fn1825_0AA6)
fn1825_0C68 proc
	push	bp
	mov	bp,sp
	les	bx,[bp+6h]
	mov	word ptr es:[bx],0h
	mov	word ptr es:[bx+2h],0h
	sub	ax,ax
	pop	bp
	retf
1825:0C7D                                        90                    .  

;; fn1825_0C7E: 1825:0C7E
;;   Called from:
;;     1825:0AEA (in fn1825_0AA6)
fn1825_0C7E proc
	push	bp
	mov	bp,sp
	mov	ax,41h
	push	ax
	sub	ax,ax
	push	ax
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,0Ah
	push	ax
	mov	ax,55B8h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h

l1825_0CA1:
	call	far 1F38h:0CDCh
	or	ax,ax
	jz	0CA1h

l1825_0CAA:
	les	bx,[bp+6h]
	mov	word ptr es:[bx],0h
	mov	word ptr es:[bx+2h],0h
	sub	ax,ax
	pop	bp
	retf

;; fn1825_0CBC: 1825:0CBC
;;   Called from:
;;     1825:0ADE (in fn1825_0AA6)
fn1825_0CBC proc
	push	bp
	mov	bp,sp
	les	bx,[bp+6h]
	mov	word ptr es:[bx],0h
	mov	word ptr es:[bx+2h],1h
	sub	ax,ax
	pop	bp
	retf
1825:0CD1    90                                            .              

;; fn1825_0CD2: 1825:0CD2
;;   Called from:
;;     1825:0B02 (in fn1825_0AA6)
fn1825_0CD2 proc
	push	bp
	mov	bp,sp
	sub	sp,2h
	mov	word ptr [bp-2h],0h
	call	far 1F38h:094Ch
	cmp	word ptr [13B4h],0h
	jnz	0CF3h

l1825_0CE9:
	call	far 2E37h:0446h
	call	far 2C27h:0112h

l1825_0CF3:
	mov	ax,55C4h
	push	ds
	push	ax
	call	far 38D6h:0DFEh
	add	sp,4h
	mov	[bp-2h],ax
	or	ax,ax
	jz	0D0Dh

l1825_0D07:
	mov	word ptr [10D2h],10h

l1825_0D0D:
	cmp	word ptr [13B4h],0h
	jnz	0D1Eh

l1825_0D14:
	call	far 2C27h:0140h
	call	far 2E37h:0432h

l1825_0D1E:
	cmp	word ptr [0F02h],0h
	jz	0D35h

l1825_0D25:
	push	word ptr [0916h]
	push	word ptr [0914h]
	call	far 1F38h:0A4Ch
	add	sp,4h

l1825_0D35:
	mov	ax,1h
	mov	sp,bp
	pop	bp
	retf

;; fn1825_0D3C: 1825:0D3C
;;   Called from:
;;     1825:0B0E (in fn1825_0AA6)
fn1825_0D3C proc
	push	bp
	mov	bp,sp
	les	bx,[bp+6h]
	les	bx,es:[bx+5Eh]
	cmp	word ptr es:[bx],1h
	sbb	ax,ax
	neg	ax
	les	bx,[bp+6h]
	les	bx,es:[bx+5Eh]
	mov	es:[bx],ax
	mov	ax,1h
	pop	bp
	retf
1825:0D5D                                        90                    .  

;; fn1825_0D5E: 1825:0D5E
;;   Called from:
;;     1825:0B1A (in fn1825_0AA6)
fn1825_0D5E proc
	push	bp
	mov	bp,sp
	les	bx,[bp+6h]
	push	word ptr es:[bx+20h]
	push	word ptr es:[bx+1Eh]
	call	far 1F38h:0A4Ch
	add	sp,4h
	push	word ptr [0F02h]
	les	bx,[bp+6h]
	push	word ptr es:[bx+20h]
	push	word ptr es:[bx+1Eh]
	call	far 21DCh:09B4h
	add	sp,6h
	push	cs
	call	7106h
	sub	ax,ax
	push	ax
	mov	ax,[0EEEh]
	dec	ax
	push	ax
	call	far 1F38h:04E7h
	add	sp,4h
	call	far 21DCh:04BAh
	sub	ax,ax
	pop	bp
	retf

;; fn1825_0DA8: 1825:0DA8
;;   Called from:
;;     1825:0045 (in fn1825_000A)
fn1825_0DA8 proc
	push	bp
	mov	bp,sp
	sub	sp,8h
	push	si
	mov	word ptr [bp-2h],0h
	les	bx,[bp+6h]
	les	bx,es:[bx+5Eh]
	cmp	word ptr es:[bx],0h
	jnz	0DC4h

l1825_0DC1:
	jmp	0E6Ah

l1825_0DC4:
	les	bx,[bp+6h]
	les	bx,es:[bx+5Eh]
	mov	ax,es:[bx+2h]
	mov	[bp-8h],ax
	mov	word ptr [bp-6h],0h
	jmp	0DFFh
1825:0DD9                            90                            .      

l1825_0DDA:
	mov	ax,3Eh
	mul	word ptr [bp-6h]
	les	bx,[bp+6h]
	mov	cx,es:[bx+5Eh]
	mov	si,es:[bx+60h]
	add	cx,ax
	add	cx,12h
	push	si
	push	cx
	push	cs
	call	5FCAh
	add	sp,4h

l1825_0DF9:
	mov	[bp-2h],ax

l1825_0DFC:
	inc	word ptr [bp-6h]

l1825_0DFF:
	mov	ax,[bp-8h]
	cmp	[bp-6h],ax
	jnc	0E6Ah

l1825_0E07:
	cmp	word ptr [bp-2h],0h
	jnz	0E6Ah

l1825_0E0D:
	mov	ax,3Eh
	mul	word ptr [bp-6h]
	mov	si,ax
	les	bx,[bp+6h]
	les	bx,es:[bx+5Eh]
	cmp	word ptr es:[bx+si+4h],0h
	jz	0DFCh

l1825_0E23:
	les	bx,[bp+6h]
	les	bx,es:[bx+5Eh]
	lea	ax,[bx+si+8h]
	push	es
	push	ax
	push	cs
	call	5F7Ch
	add	sp,4h
	or	ax,ax
	jz	0DFCh

l1825_0E3A:
	les	bx,[bp+6h]
	les	bx,es:[bx+5Eh]
	cmp	word ptr es:[bx+si+6h],0h
	jnz	0DDAh

l1825_0E48:
	les	bx,[bp+6h]
	les	bx,es:[bx+5Eh]
	lea	ax,[bx+si+12h]
	push	es
	push	ax
	call	far 38D6h:0CDEh
	add	sp,4h
	mov	[bp-4h],ax
	push	ax
	push	cs
	call	5F68h
	add	sp,2h
	jmp	0DF9h
1825:0E69                            90                            .      

l1825_0E6A:
	mov	ax,[bp-2h]
	pop	si
	mov	sp,bp
	pop	bp
	retf

;; fn1825_0E72: 1825:0E72
;;   Called from:
;;     1825:0B9C (in fn1825_0AA6)
fn1825_0E72 proc
	push	bp
	mov	bp,sp
	sub	sp,28h
	push	di
	push	si
	mov	word ptr [bp-20h],1h
	mov	word ptr [bp-10h],5h
	mov	word ptr [bp-1Eh],5h
	mov	word ptr [bp-2h],4Dh
	mov	word ptr [bp-22h],7h
	cmp	word ptr [0F02h],0h
	jz	0ECCh

l1825_0E9A:
	mov	word ptr [0A16h],5h
	mov	word ptr [0A18h],0h
	mov	word ptr [0A1Ah],18h
	mov	word ptr [0A1Ch],4Fh
	mov	word ptr [0A1Eh],0h
	sub	ax,ax
	mov	[0A22h],ax
	mov	[0A20h],ax
	mov	ax,0A16h
	push	ds
	push	ax
	push	cs
	call	4CFEh
	add	sp,4h

l1825_0ECC:
	mov	ax,[bp-1Eh]
	add	ax,2h
	mov	[bp-0Eh],ax
	mov	word ptr [bp-1Ah],0h

l1825_0EDA:
	mov	bx,[bp-1Ah]
	shl	bx,1h
	shl	bx,1h
	les	si,[bp+6h]
	les	si,es:[si+5Eh]
	mov	ax,es:[bx+si+3E4h]
	mov	dx,es:[bx+si+3E6h]
	mov	[bp-28h],ax
	mov	[bp-26h],dx
	or	ax,dx
	jz	0F20h

l1825_0EFC:
	push	dx
	push	word ptr [bp-28h]
	call	far 2017h:03F5h
	add	sp,4h
	mov	si,[bp-1Ah]
	shl	si,1h
	mov	cx,[bp+si-0Eh]
	add	cx,ax
	mov	si,[bp-1Ah]
	shl	si,1h
	mov	[bp+si-0Ch],cx
	inc	word ptr [bp-1Ah]
	jmp	0EDAh
1825:0F1F                                              90                .

l1825_0F20:
	mov	word ptr [bp-12h],0h
	cmp	word ptr [bp-1Ah],0h
	jle	0F32h

l1825_0F2B:
	mov	ax,[bp-1Ah]
	dec	ax
	jmp	0F34h
1825:0F31    90                                            .              

l1825_0F32:
	sub	ax,ax

l1825_0F34:
	mov	[bp-16h],ax
	sub	ax,ax
	push	ax
	call	far 1F38h:0527h
	add	sp,2h
	mov	word ptr [bp-1Ah],0h
	jmp	1360h

l1825_0F4A:
	cmp	word ptr [bp-20h],0BB8h
	jnz	0F54h

l1825_0F51:
	jmp	1369h

l1825_0F54:
	les	bx,[bp+6h]
	les	bx,es:[bx+5Eh]
	mov	ax,es:[bx+2h]
	add	ax,[bp-10h]
	add	ax,2h
	mov	[bp-4h],ax
	mov	ax,[bp-10h]
	inc	ax
	mov	[bp-18h],ax
	mov	ax,0A5Eh
	push	ds
	push	ax
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	push	word ptr [bp-1Eh]
	push	word ptr [bp-10h]
	call	far 1F38h:05DBh
	add	sp,0Ch
	mov	ax,0A2Ch
	push	ds
	push	ax
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	push	word ptr [bp-1Eh]
	push	word ptr [bp-10h]
	call	far 1F38h:05DBh
	add	sp,0Ch
	mov	word ptr [bp-1Ch],0h
	jmp	0FFBh

l1825_0FA8:
	mov	di,[bp-1Ch]
	shl	di,1h
	push	word ptr [bp+di-0Eh]
	push	word ptr [bp-4h]
	call	far 1F38h:04E7h
	add	sp,4h
	mov	si,[bp-1Ch]
	mov	cl,2h
	shl	si,cl
	les	bx,[bp+6h]
	les	bx,es:[bx+5Eh]
	push	word ptr es:[bx+si+3E6h]
	push	word ptr es:[bx+si+3E4h]
	call	far 2017h:03F5h
	add	sp,4h
	mov	[bp-24h],ax
	push	ax
	les	bx,[bp+6h]
	les	bx,es:[bx+5Eh]
	push	word ptr es:[bx+si+3E6h]
	push	word ptr es:[bx+si+3E4h]
	call	far 1F38h:049Fh
	add	sp,6h
	inc	word ptr [bp-1Ch]

l1825_0FFB:
	mov	ax,[bp-16h]
	cmp	[bp-1Ch],ax
	jle	0FA8h

l1825_1003:
	mov	word ptr [bp-1Ch],0h
	jmp	116Dh
1825:100B                                  90                        .    

l1825_100C:
	mov	ax,5h
	push	ax
	mov	ax,55D2h

l1825_1013:
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	mov	ax,[bp-22h]
	add	ax,9h
	push	ax
	mov	ax,[bp-1Ch]
	add	ax,[bp-18h]
	push	ax
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,3Eh
	imul	word ptr [bp-1Ch]
	mov	bx,ax
	les	si,[bp+6h]
	les	si,es:[si+5Eh]
	cmp	word ptr es:[bx+si+6h],0h
	jnz	1052h

l1825_1049:
	mov	ax,6h
	push	ax
	mov	ax,55D8h
	jmp	1059h

l1825_1052:
	mov	ax,6h
	push	ax
	mov	ax,55E0h

l1825_1059:
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	mov	si,[bp-1Ch]
	add	si,[bp-18h]
	mov	ax,[bp-22h]
	add	ax,10h
	push	ax
	push	si
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,4h
	push	ax
	mov	ax,55E8h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	mov	ax,[bp-22h]
	add	ax,15h
	push	ax
	push	si
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,3Eh
	imul	word ptr [bp-1Ch]
	mov	di,ax
	les	bx,[bp+6h]
	les	bx,es:[bx+5Eh]
	lea	ax,[bx+di+8h]
	push	es
	push	ax
	call	far 2017h:03F5h
	add	sp,4h
	mov	[bp-24h],ax
	sub	ax,0Ah
	sbb	cx,cx
	and	ax,cx
	add	ax,0Ah
	mov	[bp-24h],ax
	push	ax
	les	bx,[bp+6h]
	les	bx,es:[bx+5Eh]
	lea	ax,[bx+di+8h]
	push	es
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	mov	ax,[bp-22h]
	add	ax,20h
	push	ax
	push	si
	call	far 1F38h:04E7h
	add	sp,4h
	les	bx,[bp+6h]
	les	bx,es:[bx+5Eh]
	cmp	word ptr es:[bx+di+6h],0h
	jnz	1102h

l1825_10F9:
	mov	ax,4h
	push	ax
	mov	ax,55EEh
	jmp	1109h

l1825_1102:
	mov	ax,4h
	push	ax
	mov	ax,55F4h

l1825_1109:
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	mov	ax,[bp-22h]
	add	ax,26h
	push	ax
	mov	ax,[bp-1Ch]
	add	ax,[bp-18h]
	push	ax
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,3Eh
	imul	word ptr [bp-1Ch]
	mov	si,ax
	les	bx,[bp+6h]
	les	bx,es:[bx+5Eh]
	lea	ax,[bx+si+12h]
	push	es
	push	ax
	call	far 2017h:03F5h
	add	sp,4h
	mov	[bp-24h],ax
	sub	ax,30h
	sbb	cx,cx
	and	ax,cx
	add	ax,30h
	mov	[bp-24h],ax
	push	ax
	les	bx,[bp+6h]
	les	bx,es:[bx+5Eh]
	lea	ax,[bx+si+12h]
	push	es
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	inc	word ptr [bp-1Ch]

l1825_116D:
	les	bx,[bp+6h]
	les	bx,es:[bx+5Eh]
	mov	ax,[bp-1Ch]
	cmp	es:[bx+2h],ax
	jbe	11D2h

l1825_117D:
	mov	si,ax
	add	si,[bp-18h]
	push	word ptr [bp-22h]
	push	si
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,2h
	push	ax
	mov	ax,[bp-1Ch]
	inc	ax
	push	ax
	push	cs
	call	63F8h
	add	sp,4h
	mov	ax,[bp-22h]
	add	ax,3h
	push	ax
	push	si
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,3Eh
	imul	word ptr [bp-1Ch]
	mov	bx,ax
	les	di,[bp+6h]
	les	di,es:[di+5Eh]
	cmp	word ptr es:[bx+di+4h],0h
	jnz	11C7h

l1825_11C4:
	jmp	100Ch

l1825_11C7:
	mov	ax,5h
	push	ax
	mov	ax,55CCh
	jmp	1013h
1825:11D1    90                                            .              

l1825_11D2:
	mov	bx,[bp-1Ah]
	shl	bx,1h
	add	bx,bp
	mov	si,[bx-0Eh]
	push	si
	push	word ptr [bp-4h]
	call	far 1F38h:04E7h
	add	sp,4h
	call	far 1F38h:07FAh
	mov	di,[bp-1Ah]
	mov	cl,2h
	shl	di,cl
	les	bx,[bp+6h]
	les	bx,es:[bx+5Eh]
	push	word ptr es:[bx+di+3E6h]
	push	word ptr es:[bx+di+3E4h]
	call	far 2017h:03F5h
	add	sp,4h
	mov	[bp-24h],ax
	push	ax
	les	bx,[bp+6h]
	les	bx,es:[bx+5Eh]
	push	word ptr es:[bx+di+3E6h]
	push	word ptr es:[bx+di+3E4h]
	call	far 1F38h:049Fh
	add	sp,6h
	sub	ax,ax
	push	ax
	mov	ax,8h
	push	ax
	call	far 3431h:07B6h
	add	sp,4h
	mov	[bp-20h],ax
	push	si
	push	word ptr [bp-4h]
	call	far 1F38h:04E7h
	add	sp,4h
	call	far 1F38h:07E7h
	push	word ptr [bp-24h]
	les	bx,[bp+6h]
	les	bx,es:[bx+5Eh]
	push	word ptr es:[bx+di+3E6h]
	push	word ptr es:[bx+di+3E4h]
	call	far 1F38h:049Fh
	add	sp,6h
	mov	ax,[bp-20h]
	sub	ax,1h
	cmp	ax,13h
	jbe	1277h

l1825_1274:
	jmp	1360h

l1825_1277:
	add	ax,ax
	xchg	bx,ax
	jmp	word ptr cs:[bx+1338h]
1825:127F                                              90                .

l1825_1280:
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	6D80h

l1825_128A:
	add	sp,4h
	jmp	1360h

l1825_1290:
	mov	ax,[bp-20h]
	mov	[0966h],ax
	mov	ax,95Ch
	push	ds
	push	ax
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	6B02h
	add	sp,8h
	mov	[bp-20h],ax
	cmp	ax,0BB8h
	jz	12B3h

l1825_12B0:
	jmp	1360h

l1825_12B3:
	les	bx,[bp+6h]
	mov	word ptr es:[bx+18h],3h
	jmp	1360h
1825:12BF                                              90                .

l1825_12C0:
	mov	ax,1h
	push	ax
	les	bx,[bp+6h]
	mov	ax,es:[bx+5Eh]
	mov	dx,es:[bx+60h]
	add	ax,3E4h
	push	dx
	push	ax
	push	cs
	call	66D4h
	add	sp,6h
	mov	[bp-14h],ax
	cmp	ax,0FFFFh
	jle	1360h

l1825_12E3:
	mov	[bp-1Ah],ax
	jmp	1360h
1825:12E8                         90 90                           ..      

l1825_12EA:
	push	word ptr [bp-22h]
	mov	ax,[bp-4h]
	dec	ax
	push	ax
	push	word ptr [bp-1Ah]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	139Ah
	add	sp,0Ah
	mov	[bp-20h],ax
	cmp	word ptr [0F02h],0h
	jz	1360h

l1825_130C:
	mov	ax,0A16h
	push	ds
	push	ax
	push	cs
	call	4D78h
	jmp	128Ah

l1825_1318:
	dec	word ptr [bp-1Ah]
	mov	ax,[bp-12h]
	cmp	[bp-1Ah],ax
	jge	1360h

l1825_1323:
	mov	ax,[bp-16h]
	jmp	12E3h

l1825_1328:
	inc	word ptr [bp-1Ah]
	mov	ax,[bp-16h]
	cmp	[bp-1Ah],ax
	jle	1360h

l1825_1333:
	mov	ax,[bp-12h]
	jmp	12E3h
l1825_1338	dw	0x1290
l1825_133A	dw	0x12C0
l1825_133C	dw	0x1360
l1825_133E	dw	0x1360
l1825_1340	dw	0x1360
l1825_1342	dw	0x12EA
l1825_1344	dw	0x1318
l1825_1346	dw	0x1328
l1825_1348	dw	0x1333
l1825_134A	dw	0x1323
l1825_134C	dw	0x1360
l1825_134E	dw	0x1360
l1825_1350	dw	0x1360
l1825_1352	dw	0x1360
l1825_1354	dw	0x1360
l1825_1356	dw	0x1360
l1825_1358	dw	0x1360
l1825_135A	dw	0x1360
l1825_135C	dw	0x1360
l1825_135E	dw	0x1280

l1825_1360:
	cmp	word ptr [bp-20h],14h
	jz	1369h

l1825_1366:
	jmp	0F4Ah

l1825_1369:
	cmp	word ptr [0F02h],0h
	jz	1384h

l1825_1370:
	push	word ptr [0A1Eh]
	push	word ptr [0A22h]
	push	word ptr [0A20h]
	call	far 21DCh:09B4h
	add	sp,6h

l1825_1384:
	mov	ax,1h
	push	ax
	call	far 1F38h:0527h
	add	sp,2h
	mov	ax,1h
	pop	si
	pop	di
	mov	sp,bp
	pop	bp
	retf
1825:1399                            90                            .      

;; fn1825_139A: 1825:139A
;;   Called from:
;;     1825:12FB (in fn1825_0E72)
fn1825_139A proc
	push	bp
	mov	bp,sp
	sub	sp,0Eh
	push	di
	push	si
	mov	word ptr [bp-8h],1h
	mov	word ptr [bp-2h],0h
	mov	ax,[bp+0Ah]
	or	ax,ax
	jz	13CEh

l1825_13B3:
	cmp	ax,1h
	jnc	13BBh

l1825_13B8:
	jmp	147Fh

l1825_13BB:
	cmp	ax,2h
	ja	13C3h

l1825_13C0:
	jmp	1494h

l1825_13C3:
	cmp	ax,3h
	jnz	13CBh

l1825_13C8:
	jmp	1760h

l1825_13CB:
	jmp	147Fh

l1825_13CE:
	les	bx,[bp+6h]
	les	bx,es:[bx+5Eh]
	mov	si,es:[bx+2h]
	or	si,si
	jnz	13E0h

l1825_13DD:
	jmp	147Fh

l1825_13E0:
	mov	ax,[bp+0Eh]
	inc	ax
	push	ax
	push	word ptr [bp+0Ch]
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,0Eh
	push	ax
	mov	ax,55FAh
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	mov	ax,[bp+0Eh]
	add	ax,10h
	push	ax
	push	word ptr [bp+0Ch]
	call	far 1F38h:04E7h
	add	sp,4h
	mov	byte ptr [0A68h],0h
	sub	ax,ax
	push	ax
	push	ax
	mov	ax,1h
	push	ax
	mov	ax,3h
	push	ax
	mov	ax,0A68h
	push	ds
	push	ax
	push	cs
	call	648Ah
	add	sp,0Ch
	mov	[bp-0Ah],ax
	cmp	ax,14h
	jz	147Fh

l1825_1438:
	cmp	ax,0BB8h
	jz	147Fh

l1825_143D:
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 38D6h:0CDEh
	add	sp,4h
	mov	[bp-6h],ax
	or	ax,ax
	jle	147Fh

l1825_1451:
	cmp	ax,si
	ja	147Fh

l1825_1455:
	mov	ax,3Eh
	imul	word ptr [bp-6h]
	les	bx,[bp+6h]
	mov	cx,es:[bx+5Eh]
	mov	di,es:[bx+60h]
	add	cx,ax
	sub	cx,3Ah
	mov	[bp-0Eh],cx
	mov	[bp-0Ch],di
	les	bx,[bp-0Eh]
	cmp	word ptr es:[bx],1h
	sbb	ax,ax
	neg	ax
	mov	es:[bx],ax

l1825_147F:
	cmp	word ptr [bp-0Ah],0BB8h
	jz	148Bh

l1825_1486:
	mov	word ptr [bp-0Ah],1h

l1825_148B:
	mov	ax,[bp-0Ah]
	pop	si
	pop	di
	mov	sp,bp
	pop	bp
	retf

l1825_1494:
	les	bx,[bp+6h]
	les	bx,es:[bx+5Eh]
	mov	si,es:[bx+2h]
	cmp	si,10h
	jnc	147Fh

l1825_14A4:
	mov	[bp-4h],si
	push	word ptr [bp+0Eh]
	push	word ptr [bp+0Ch]
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,4h
	push	ax
	mov	ax,560Ah
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	mov	ax,[bp+0Eh]
	add	ax,10h
	push	ax
	push	word ptr [bp+0Ch]
	call	far 1F38h:04E7h
	add	sp,4h
	cmp	word ptr [bp+0Ah],1h
	jnz	14E8h

l1825_14DE:
	mov	ax,4h
	push	ax
	mov	ax,5610h
	jmp	14EFh
1825:14E7                      90                                .        

l1825_14E8:
	mov	ax,4h
	push	ax
	mov	ax,5616h

l1825_14EF:
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	mov	si,[bp+0Eh]
	add	si,5h
	push	si
	push	word ptr [bp+0Ch]
	call	far 1F38h:04E7h
	add	sp,4h
	mov	byte ptr [0A68h],0h
	sub	ax,ax
	push	ax
	mov	ax,1h
	push	ax
	sub	ax,ax
	push	ax
	mov	ax,0Ah
	push	ax
	mov	ax,0A68h
	push	ds
	push	ax
	push	cs
	call	648Ah
	add	sp,0Ch
	mov	[bp-0Ah],ax
	cmp	ax,14h
	jnz	1535h

l1825_1532:
	jmp	1740h

l1825_1535:
	cmp	ax,0BB8h
	jnz	153Dh

l1825_153A:
	jmp	1740h

l1825_153D:
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 2017h:03F5h
	add	sp,4h
	or	ax,ax
	jnz	15B7h

l1825_154E:
	cmp	word ptr [bp+0Ah],1h
	jnz	15B7h

l1825_1554:
	mov	ax,16h
	mul	word ptr [128Ah]
	mov	di,ax
	les	bx,[1282h]
	push	word ptr es:[bx+di+14h]
	push	word ptr es:[bx+di+12h]
	call	far 2BC7h:050Ah
	add	sp,4h
	push	dx
	push	ax
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 2017h:01BAh
	add	sp,8h
	push	si
	push	word ptr [bp+0Ch]
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,0Ah
	push	ax
	mov	ax,16h
	mul	word ptr [128Ah]
	mov	di,ax
	les	bx,[1282h]
	push	word ptr es:[bx+di+14h]
	push	word ptr es:[bx+di+12h]
	call	far 2BC7h:050Ah
	add	sp,4h
	push	dx
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h

l1825_15B7:
	mov	ax,0A68h
	push	ds
	push	ax
	mov	ax,3Eh
	mul	word ptr [bp-4h]
	les	bx,[bp+6h]
	mov	cx,es:[bx+5Eh]
	mov	si,es:[bx+60h]
	add	cx,ax
	add	cx,8h
	push	si
	push	cx
	call	far 2017h:01BAh
	add	sp,8h
	mov	ax,[bp+0Eh]
	add	ax,15h
	push	ax
	push	word ptr [bp+0Ch]
	call	far 1F38h:04E7h
	add	sp,4h
	mov	byte ptr [0A68h],0h
	sub	ax,ax
	push	ax
	push	ax
	cmp	word ptr [bp+0Ah],1h
	jnz	1602h

l1825_15FD:
	mov	ax,1h
	jmp	1604h

l1825_1602:
	sub	ax,ax

l1825_1604:
	push	ax
	mov	ax,30h
	push	ax
	mov	ax,0A68h
	push	ds
	push	ax
	push	cs
	call	648Ah
	add	sp,0Ch
	mov	[bp-0Ah],ax
	cmp	ax,14h
	jnz	1620h

l1825_161D:
	jmp	1740h

l1825_1620:
	cmp	ax,0BB8h
	jnz	1628h

l1825_1625:
	jmp	1740h

l1825_1628:
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 2017h:03F5h
	add	sp,4h
	or	ax,ax
	jnz	163Ch

l1825_1639:
	jmp	1740h

l1825_163C:
	cmp	word ptr [bp+0Ah],2h
	jz	1645h

l1825_1642:
	jmp	16D7h

l1825_1645:
	mov	ax,0C08h
	push	ds
	push	ax
	mov	ax,0A68h
	push	ds
	push	ax
	push	cs
	call	6042h
	add	sp,8h
	mov	al,[0C08h]
	sub	ah,ah
	sub	ax,41h
	cmp	ax,14h
	ja	16C4h

l1825_1663:
	add	ax,ax
	xchg	bx,ax
	jmp	word ptr cs:[bx+169Ah]
1825:166B                                  EB 10 90                  ...  

l1825_166E:
	mov	word ptr [bp-2h],2h
	jmp	16C4h
1825:1675                90                                    .          

l1825_1676:
	cmp	byte ptr [0C09h],49h
	jnz	1684h

l1825_167D:
	mov	word ptr [bp-2h],0h
	jmp	16C4h

l1825_1684:
	cmp	byte ptr [0C09h],45h
	jnz	1692h

l1825_168B:
	mov	word ptr [bp-2h],1h
	jmp	16C4h

l1825_1692:
	mov	word ptr [bp-2h],3h
	jmp	16C4h
1825:1699                            90                            .      
l1825_169A	dw	0x166E
l1825_169C	dw	0x16C4
l1825_169E	dw	0x166E
l1825_16A0	dw	0x166E
l1825_16A2	dw	0x16C4
l1825_16A4	dw	0x16C4
l1825_16A6	dw	0x16C4
l1825_16A8	dw	0x16C4
l1825_16AA	dw	0x16C4
l1825_16AC	dw	0x16C4
l1825_16AE	dw	0x16C4
l1825_16B0	dw	0x167D
l1825_16B2	dw	0x166E
l1825_16B4	dw	0x166E
l1825_16B6	dw	0x16C4
l1825_16B8	dw	0x16C4
l1825_16BA	dw	0x16C4
l1825_16BC	dw	0x16C4
l1825_16BE	dw	0x16C4
l1825_16C0	dw	0x16C4
l1825_16C2	dw	0x1676

l1825_16C4:
	cmp	word ptr [bp-2h],0h
	jz	16D7h

l1825_16CA:
	push	word ptr [bp-2h]
	push	cs
	call	6EA4h
	add	sp,2h
	mov	[bp-8h],ax

l1825_16D7:
	cmp	word ptr [bp-8h],0h
	jz	1740h

l1825_16DD:
	mov	ax,3Eh
	mul	word ptr [bp-4h]
	mov	si,ax
	mov	ax,0A68h
	push	ds
	push	ax
	les	bx,[bp+6h]
	les	bx,es:[bx+5Eh]
	lea	ax,[bx+si+12h]
	push	es
	push	ax
	call	far 2017h:01BAh
	add	sp,8h
	les	bx,[bp+6h]
	les	bx,es:[bx+5Eh]
	mov	word ptr es:[bx+si+4h],1h
	cmp	word ptr [bp+0Ah],1h
	jnz	1720h

l1825_1711:
	les	bx,[bp+6h]
	les	bx,es:[bx+5Eh]
	mov	word ptr es:[bx+si+6h],0h
	jmp	1735h

l1825_1720:
	mov	ax,3Eh
	mul	word ptr [bp-4h]
	mov	bx,ax
	les	si,[bp+6h]
	les	si,es:[si+5Eh]
	mov	word ptr es:[bx+si+6h],1h

l1825_1735:
	les	bx,[bp+6h]
	les	bx,es:[bx+5Eh]
	inc	word ptr es:[bx+2h]

l1825_1740:
	les	bx,[bp+6h]
	les	bx,es:[bx+5Eh]
	cmp	word ptr es:[bx+2h],0h
	jnz	1751h

l1825_174E:
	jmp	147Fh

l1825_1751:
	les	bx,[bp+6h]
	les	bx,es:[bx+5Eh]
	mov	word ptr es:[bx],1h
	jmp	147Fh

l1825_1760:
	les	bx,[bp+6h]
	les	bx,es:[bx+5Eh]
	mov	si,es:[bx+2h]
	or	si,si
	jnz	1772h

l1825_176F:
	jmp	147Fh

l1825_1772:
	mov	ax,[bp+0Eh]
	inc	ax
	push	ax
	push	word ptr [bp+0Ch]
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,0Eh
	push	ax
	mov	ax,561Ch
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	mov	ax,[bp+0Eh]
	add	ax,10h
	push	ax
	push	word ptr [bp+0Ch]
	call	far 1F38h:04E7h
	add	sp,4h
	mov	byte ptr [0A68h],0h
	sub	ax,ax
	push	ax
	push	ax
	mov	ax,1h
	push	ax
	mov	ax,3h
	push	ax
	mov	ax,0A68h
	push	ds
	push	ax
	push	cs
	call	648Ah
	add	sp,0Ch
	mov	[bp-0Ah],ax
	cmp	ax,14h
	jnz	17CDh

l1825_17CA:
	jmp	1864h

l1825_17CD:
	cmp	ax,0BB8h
	jnz	17D5h

l1825_17D2:
	jmp	1864h

l1825_17D5:
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 38D6h:0CDEh
	add	sp,4h
	mov	[bp-6h],ax
	or	ax,ax
	jle	1864h

l1825_17E9:
	cmp	ax,si
	ja	1864h

l1825_17ED:
	mov	[bp-4h],ax
	jmp	1849h

l1825_17F2:
	mov	ax,3Eh
	mul	word ptr [bp-4h]
	mov	si,ax
	les	bx,[bp+6h]
	les	bx,es:[bx+5Eh]
	lea	ax,[bx+si+12h]
	push	es
	push	ax
	les	bx,[bp+6h]
	les	bx,es:[bx+5Eh]
	lea	ax,[bx+si-2Ch]
	push	es
	push	ax
	call	far 2017h:01BAh
	add	sp,8h
	les	bx,[bp+6h]
	les	bx,es:[bx+5Eh]
	mov	ax,es:[bx+si+4h]
	les	bx,[bp+6h]
	les	bx,es:[bx+5Eh]
	mov	es:[bx+si-3Ah],ax
	les	bx,[bp+6h]
	les	bx,es:[bx+5Eh]
	mov	ax,es:[bx+si+6h]
	les	bx,[bp+6h]
	les	bx,es:[bx+5Eh]
	mov	es:[bx+si-38h],ax
	inc	word ptr [bp-4h]

l1825_1849:
	les	bx,[bp+6h]
	les	bx,es:[bx+5Eh]
	mov	ax,[bp-4h]
	cmp	es:[bx+2h],ax
	ja	17F2h

l1825_1859:
	les	bx,[bp+6h]
	les	bx,es:[bx+5Eh]
	dec	word ptr es:[bx+2h]

l1825_1864:
	les	bx,[bp+6h]
	les	bx,es:[bx+5Eh]
	cmp	word ptr es:[bx+2h],0h
	jz	1875h

l1825_1872:
	jmp	147Fh

l1825_1875:
	les	bx,[bp+6h]
	les	bx,es:[bx+5Eh]
	mov	word ptr es:[bx],0h
	jmp	147Fh

;; fn1825_1884: 1825:1884
;;   Called from:
;;     1825:0BAA (in fn1825_0AA6)
fn1825_1884 proc
	push	bp
	mov	bp,sp
	les	bx,[bp+6h]
	les	bx,es:[bx+62h]
	cmp	word ptr es:[bx],1h
	sbb	ax,ax
	neg	ax
	les	bx,[bp+6h]
	les	bx,es:[bx+62h]
	mov	es:[bx],ax
	mov	ax,1h
	pop	bp
	retf
1825:18A5                90                                    .          

;; fn1825_18A6: 1825:18A6
;;   Called from:
;;     1825:0BB8 (in fn1825_0AA6)
fn1825_18A6 proc
	push	bp
	mov	bp,sp
	sub	sp,2Ch
	push	di
	push	si
	cmp	word ptr [0F02h],0h
	jz	18E7h

l1825_18B5:
	mov	ax,[bp-10h]
	mov	[0A16h],ax
	mov	word ptr [0A18h],0h
	mov	word ptr [0A1Ah],18h
	mov	word ptr [0A1Ch],4Fh
	mov	word ptr [0A1Eh],0h
	sub	ax,ax
	mov	[0A22h],ax
	mov	[0A20h],ax
	mov	ax,0A16h
	push	ds
	push	ax
	push	cs
	call	4CFEh
	add	sp,4h

l1825_18E7:
	mov	word ptr [bp-24h],1h
	mov	word ptr [bp-2h],2Ch
	les	bx,[bp+6h]
	les	bx,es:[bx+62h]
	mov	ax,es:[bx+6h]
	mov	[bp-10h],ax
	les	bx,[bp+6h]
	les	bx,es:[bx+62h]
	cmp	word ptr es:[bx+0Ah],0h
	jz	1924h

l1825_190D:
	les	bx,[bp+6h]
	les	bx,es:[bx+62h]
	mov	si,es:[bx+4h]
	lea	ax,[si-2Ch]
	mov	[bp-22h],ax
	lea	ax,[si-1h]
	jmp	1936h
1825:1923          90                                        .            

l1825_1924:
	les	bx,[bp+6h]
	les	bx,es:[bx+62h]
	mov	ax,es:[bx+8h]
	inc	ax
	mov	[bp-22h],ax
	add	ax,[bp-2h]

l1825_1936:
	mov	[bp-4h],ax
	mov	ax,[bp-22h]
	inc	ax
	mov	[bp-26h],ax
	mov	ax,[bp-22h]
	add	ax,2h
	mov	[bp-0Eh],ax
	mov	word ptr [bp-1Ah],0h

l1825_194E:
	mov	bx,[bp-1Ah]
	shl	bx,1h
	shl	bx,1h
	les	si,[bp+6h]
	les	si,es:[si+62h]
	mov	ax,es:[bx+si+22Eh]
	mov	dx,es:[bx+si+230h]
	mov	[bp-2Ch],ax
	mov	[bp-2Ah],dx
	or	ax,dx
	jz	1994h

l1825_1970:
	push	dx
	push	word ptr [bp-2Ch]
	call	far 2017h:03F5h
	add	sp,4h
	mov	si,[bp-1Ah]
	shl	si,1h
	mov	cx,[bp+si-0Eh]
	add	cx,ax
	mov	si,[bp-1Ah]
	shl	si,1h
	mov	[bp+si-0Ch],cx
	inc	word ptr [bp-1Ah]
	jmp	194Eh
1825:1993          90                                        .            

l1825_1994:
	mov	word ptr [bp-12h],0h
	cmp	word ptr [bp-1Ah],0h
	jle	19A6h

l1825_199F:
	mov	ax,[bp-1Ah]
	dec	ax
	jmp	19A8h
1825:19A5                90                                    .          

l1825_19A6:
	sub	ax,ax

l1825_19A8:
	mov	[bp-16h],ax
	sub	ax,ax
	push	ax
	call	far 1F38h:0527h
	add	sp,2h
	mov	word ptr [bp-1Ah],0h
	jmp	1D06h

l1825_19BE:
	cmp	word ptr [bp-24h],0BB8h
	jnz	19C8h

l1825_19C5:
	jmp	1D0Fh

l1825_19C8:
	les	bx,[bp+6h]
	les	bx,es:[bx+62h]
	mov	ax,es:[bx+0Ch]
	add	ax,2h
	mov	[bp-1Eh],ax
	mov	ax,[bp-10h]
	add	ax,[bp-1Eh]
	mov	[bp-6h],ax
	mov	ax,[bp-10h]
	inc	ax
	mov	[bp-18h],ax
	les	bx,[bp+6h]
	les	bx,es:[bx+62h]
	cmp	word ptr es:[bx],0h
	jz	1A03h

l1825_19F6:
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	2020h
	add	sp,4h

l1825_1A03:
	mov	ax,0A5Eh
	push	ds
	push	ax
	push	word ptr [bp-4h]
	push	word ptr [bp-6h]
	push	word ptr [bp-22h]
	push	word ptr [bp-10h]
	call	far 1F38h:05DBh
	add	sp,0Ch
	mov	ax,0A2Ch
	push	ds
	push	ax
	push	word ptr [bp-4h]
	push	word ptr [bp-6h]
	push	word ptr [bp-22h]
	push	word ptr [bp-10h]
	call	far 1F38h:05DBh
	add	sp,0Ch
	mov	word ptr [bp-20h],0h
	jmp	1A8Fh

l1825_1A3C:
	mov	di,[bp-20h]
	shl	di,1h
	push	word ptr [bp+di-0Eh]
	push	word ptr [bp-6h]
	call	far 1F38h:04E7h
	add	sp,4h
	mov	si,[bp-20h]
	mov	cl,2h
	shl	si,cl
	les	bx,[bp+6h]
	les	bx,es:[bx+62h]
	push	word ptr es:[bx+si+230h]
	push	word ptr es:[bx+si+22Eh]
	call	far 2017h:03F5h
	add	sp,4h
	mov	[bp-28h],ax
	push	ax
	les	bx,[bp+6h]
	les	bx,es:[bx+62h]
	push	word ptr es:[bx+si+230h]
	push	word ptr es:[bx+si+22Eh]
	call	far 1F38h:049Fh
	add	sp,6h
	inc	word ptr [bp-20h]

l1825_1A8F:
	mov	ax,[bp-16h]
	cmp	[bp-20h],ax
	jle	1A3Ch

l1825_1A97:
	mov	word ptr [bp-1Ch],0h
	jmp	1B09h

l1825_1A9E:
	mov	ax,5h
	push	ax
	mov	ax,5632h

l1825_1AA5:
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	mov	ax,[bp-26h]
	add	ax,0Ah
	push	ax
	mov	ax,[bp-1Ch]
	add	ax,[bp-18h]
	push	ax
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,22h
	imul	word ptr [bp-1Ch]
	mov	si,ax
	les	bx,[bp+6h]
	les	bx,es:[bx+62h]
	lea	ax,[bx+si+10h]
	push	es
	push	ax
	call	far 2017h:03F5h
	add	sp,4h
	mov	[bp-28h],ax
	sub	ax,20h
	sbb	cx,cx
	and	ax,cx
	add	ax,20h
	mov	[bp-28h],ax
	push	ax
	les	bx,[bp+6h]
	les	bx,es:[bx+62h]
	lea	ax,[bx+si+10h]
	push	es
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	inc	word ptr [bp-1Ch]

l1825_1B09:
	les	bx,[bp+6h]
	les	bx,es:[bx+62h]
	mov	ax,[bp-1Ch]
	cmp	es:[bx+0Ch],ax
	jbe	1B70h

l1825_1B19:
	mov	si,ax
	add	si,[bp-18h]
	mov	ax,[bp-26h]
	inc	ax
	push	ax
	push	si
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,2h
	push	ax
	mov	ax,[bp-1Ch]
	inc	ax
	push	ax
	push	cs
	call	63F8h
	add	sp,4h
	mov	ax,[bp-26h]
	add	ax,4h
	push	ax
	push	si
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,22h
	imul	word ptr [bp-1Ch]
	mov	bx,ax
	les	di,[bp+6h]
	les	di,es:[di+62h]
	cmp	word ptr es:[bx+di+0Eh],0h
	jnz	1B65h

l1825_1B62:
	jmp	1A9Eh

l1825_1B65:
	mov	ax,5h
	push	ax
	mov	ax,562Ch
	jmp	1AA5h
1825:1B6F                                              90                .

l1825_1B70:
	mov	bx,[bp-1Ah]
	shl	bx,1h
	add	bx,bp
	mov	si,[bx-0Eh]
	push	si
	push	word ptr [bp-6h]
	call	far 1F38h:04E7h
	add	sp,4h
	call	far 1F38h:07FAh
	mov	di,[bp-1Ah]
	mov	cl,2h
	shl	di,cl
	les	bx,[bp+6h]
	les	bx,es:[bx+62h]
	push	word ptr es:[bx+di+230h]
	push	word ptr es:[bx+di+22Eh]
	call	far 2017h:03F5h
	add	sp,4h
	mov	[bp-28h],ax
	push	ax
	les	bx,[bp+6h]
	les	bx,es:[bx+62h]
	push	word ptr es:[bx+di+230h]
	push	word ptr es:[bx+di+22Eh]
	call	far 1F38h:049Fh
	add	sp,6h
	sub	ax,ax
	push	ax
	mov	ax,8h
	push	ax
	call	far 3431h:07B6h
	add	sp,4h
	mov	[bp-24h],ax
	push	si
	push	word ptr [bp-6h]
	call	far 1F38h:04E7h
	add	sp,4h
	call	far 1F38h:07E7h
	push	word ptr [bp-28h]
	les	bx,[bp+6h]
	les	bx,es:[bx+62h]
	push	word ptr es:[bx+di+230h]
	push	word ptr es:[bx+di+22Eh]
	call	far 1F38h:049Fh
	add	sp,6h
	mov	ax,[bp-24h]
	sub	ax,1h
	cmp	ax,13h
	jbe	1C15h

l1825_1C12:
	jmp	1D06h

l1825_1C15:
	add	ax,ax
	xchg	bx,ax
	jmp	word ptr cs:[bx+1CDEh]
1825:1C1D                                        90                    .  

l1825_1C1E:
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	6D80h
	add	sp,4h
	mov	word ptr [090Ah],0h
	jmp	1D06h

l1825_1C34:
	mov	ax,[bp-24h]
	mov	[0966h],ax
	mov	ax,95Ch
	push	ds
	push	ax
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	6B02h
	add	sp,8h
	mov	[bp-24h],ax
	cmp	ax,0BB8h
	jz	1C57h

l1825_1C54:
	jmp	1D06h

l1825_1C57:
	les	bx,[bp+6h]
	mov	word ptr es:[bx+18h],3h
	jmp	1D06h
1825:1C63          90                                        .            

l1825_1C64:
	mov	ax,1h
	push	ax
	les	bx,[bp+6h]
	mov	ax,es:[bx+62h]
	mov	dx,es:[bx+64h]
	add	ax,22Eh
	push	dx
	push	ax
	push	cs
	call	66D4h
	add	sp,6h
	mov	[bp-14h],ax
	cmp	ax,0FFFFh
	jle	1D06h

l1825_1C87:
	mov	[bp-1Ah],ax
	jmp	1D06h
1825:1C8C                                     90 90                   ..  

l1825_1C8E:
	push	word ptr [bp-26h]
	mov	ax,[bp-6h]
	dec	ax
	push	ax
	push	word ptr [bp-1Ah]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	1D40h
	add	sp,0Ah
	mov	[bp-24h],ax
	cmp	word ptr [0F02h],0h
	jz	1D06h

l1825_1CB0:
	mov	ax,0A16h
	push	ds
	push	ax
	push	cs
	call	4D78h
	add	sp,4h
	jmp	1D06h

l1825_1CBE:
	dec	word ptr [bp-1Ah]
	mov	ax,[bp-12h]
	cmp	[bp-1Ah],ax
	jge	1D06h

l1825_1CC9:
	mov	ax,[bp-16h]
	jmp	1C87h

l1825_1CCE:
	inc	word ptr [bp-1Ah]
	mov	ax,[bp-16h]
	cmp	[bp-1Ah],ax
	jle	1D06h

l1825_1CD9:
	mov	ax,[bp-12h]
	jmp	1C87h
l1825_1CDE	dw	0x1C34
l1825_1CE0	dw	0x1C64
l1825_1CE2	dw	0x1D06
l1825_1CE4	dw	0x1D06
l1825_1CE6	dw	0x1D06
l1825_1CE8	dw	0x1C8E
l1825_1CEA	dw	0x1CBE
l1825_1CEC	dw	0x1CCE
l1825_1CEE	dw	0x1CD9
l1825_1CF0	dw	0x1CC9
l1825_1CF2	dw	0x1D06
l1825_1CF4	dw	0x1D06
l1825_1CF6	dw	0x1D06
l1825_1CF8	dw	0x1D06
l1825_1CFA	dw	0x1D06
l1825_1CFC	dw	0x1D06
l1825_1CFE	dw	0x1D06
l1825_1D00	dw	0x1D06
l1825_1D02	dw	0x1D06
l1825_1D04	dw	0x1C1E

l1825_1D06:
	cmp	word ptr [bp-24h],14h
	jz	1D0Fh

l1825_1D0C:
	jmp	19BEh

l1825_1D0F:
	cmp	word ptr [0F02h],0h
	jz	1D2Ah

l1825_1D16:
	push	word ptr [0A1Eh]
	push	word ptr [0A22h]
	push	word ptr [0A20h]
	call	far 21DCh:09B4h
	add	sp,6h

l1825_1D2A:
	mov	ax,1h
	push	ax
	call	far 1F38h:0527h
	add	sp,2h
	mov	ax,1h
	pop	si
	pop	di
	mov	sp,bp
	pop	bp
	retf
1825:1D3F                                              90                .

;; fn1825_1D40: 1825:1D40
;;   Called from:
;;     1825:1C9F (in fn1825_18A6)
fn1825_1D40 proc
	push	bp
	mov	bp,sp
	sub	sp,0Ah
	push	di
	push	si
	mov	ax,[bp+0Ah]
	or	ax,ax
	jz	1D62h

l1825_1D4F:
	cmp	ax,1h
	jnz	1D57h

l1825_1D54:
	jmp	1E28h

l1825_1D57:
	cmp	ax,2h
	jnz	1D5Fh

l1825_1D5C:
	jmp	1EBEh

l1825_1D5F:
	jmp	1E13h

l1825_1D62:
	les	bx,[bp+6h]
	les	bx,es:[bx+62h]
	mov	si,es:[bx+0Ch]
	or	si,si
	jnz	1D74h

l1825_1D71:
	jmp	1E13h

l1825_1D74:
	mov	ax,[bp+0Eh]
	inc	ax
	push	ax
	push	word ptr [bp+0Ch]
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,0Eh
	push	ax
	mov	ax,5638h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	mov	ax,[bp+0Eh]
	add	ax,10h
	push	ax
	push	word ptr [bp+0Ch]
	call	far 1F38h:04E7h
	add	sp,4h
	mov	byte ptr [0A68h],0h
	sub	ax,ax
	push	ax
	push	ax
	mov	ax,1h
	push	ax
	mov	ax,3h
	push	ax
	mov	ax,0A68h
	push	ds
	push	ax
	push	cs
	call	648Ah
	add	sp,0Ch
	mov	[bp-6h],ax
	cmp	ax,14h
	jz	1E13h

l1825_1DCC:
	cmp	ax,0BB8h
	jz	1E13h

l1825_1DD1:
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 38D6h:0CDEh
	add	sp,4h
	mov	[bp-4h],ax
	or	ax,ax
	jle	1E13h

l1825_1DE5:
	cmp	ax,si
	ja	1E13h

l1825_1DE9:
	mov	ax,22h
	imul	word ptr [bp-4h]
	les	bx,[bp+6h]
	mov	cx,es:[bx+62h]
	mov	di,es:[bx+64h]
	add	cx,ax
	sub	cx,14h
	mov	[bp-0Ah],cx
	mov	[bp-8h],di
	les	bx,[bp-0Ah]
	cmp	word ptr es:[bx],1h
	sbb	ax,ax
	neg	ax
	mov	es:[bx],ax

l1825_1E13:
	cmp	word ptr [bp-6h],0BB8h
	jz	1E1Fh

l1825_1E1A:
	mov	word ptr [bp-6h],1h

l1825_1E1F:
	mov	ax,[bp-6h]
	pop	si
	pop	di
	mov	sp,bp
	pop	bp
	retf

l1825_1E28:
	les	bx,[bp+6h]
	les	bx,es:[bx+62h]
	mov	si,es:[bx+0Ch]
	cmp	si,10h
	jnc	1E13h

l1825_1E38:
	mov	ax,[bp+0Eh]
	inc	ax
	push	ax
	push	word ptr [bp+0Ch]
	call	far 1F38h:04E7h
	add	sp,4h
	mov	byte ptr [0A68h],0h
	sub	ax,ax
	push	ax
	push	ax
	push	ax
	mov	ax,20h
	push	ax
	mov	ax,0A68h
	push	ds
	push	ax
	push	cs
	call	648Ah
	add	sp,0Ch
	mov	[bp-6h],ax
	cmp	ax,14h
	jz	1E13h

l1825_1E6A:
	cmp	ax,0BB8h
	jz	1E13h

l1825_1E6F:
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 2017h:03F5h
	add	sp,4h
	or	ax,ax
	jz	1E13h

l1825_1E80:
	mov	[bp-2h],si
	mov	ax,22h
	mul	si
	mov	di,ax
	les	bx,[bp+6h]
	les	bx,es:[bx+62h]
	mov	word ptr es:[bx+di+0Eh],1h
	mov	ax,0A68h
	push	ds
	push	ax
	les	bx,[bp+6h]
	les	bx,es:[bx+62h]
	lea	ax,[bx+di+10h]
	push	es
	push	ax
	call	far 2017h:01BAh
	add	sp,8h
	les	bx,[bp+6h]
	les	bx,es:[bx+62h]
	inc	word ptr es:[bx+0Ch]
	jmp	1E13h

l1825_1EBE:
	les	bx,[bp+6h]
	les	bx,es:[bx+62h]
	mov	si,es:[bx+0Ch]
	or	si,si
	jnz	1ED0h

l1825_1ECD:
	jmp	1E13h

l1825_1ED0:
	mov	ax,[bp+0Eh]
	inc	ax
	push	ax
	push	word ptr [bp+0Ch]
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,0Eh
	push	ax
	mov	ax,5648h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	mov	ax,[bp+0Eh]
	add	ax,10h
	push	ax
	push	word ptr [bp+0Ch]
	call	far 1F38h:04E7h
	add	sp,4h
	mov	byte ptr [0A68h],0h
	sub	ax,ax
	push	ax
	push	ax
	mov	ax,1h
	push	ax
	mov	ax,3h
	push	ax
	mov	ax,0A68h
	push	ds
	push	ax
	push	cs
	call	648Ah
	add	sp,0Ch
	mov	[bp-6h],ax
	cmp	ax,14h
	jnz	1F2Bh

l1825_1F28:
	jmp	1E13h

l1825_1F2B:
	cmp	ax,0BB8h
	jnz	1F33h

l1825_1F30:
	jmp	1E13h

l1825_1F33:
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 38D6h:0CDEh
	add	sp,4h
	mov	[bp-4h],ax
	or	ax,ax
	jg	1F4Ah

l1825_1F47:
	jmp	1E13h

l1825_1F4A:
	cmp	ax,si
	jbe	1F51h

l1825_1F4E:
	jmp	1E13h

l1825_1F51:
	mov	[bp-2h],ax
	jmp	1F97h

l1825_1F56:
	mov	ax,22h
	mul	word ptr [bp-2h]
	mov	si,ax
	les	bx,[bp+6h]
	les	bx,es:[bx+62h]
	lea	ax,[bx+si+10h]
	push	es
	push	ax
	les	bx,[bp+6h]
	les	bx,es:[bx+62h]
	lea	ax,[bx+si-12h]
	push	es
	push	ax
	call	far 2017h:01BAh
	add	sp,8h
	les	bx,[bp+6h]
	les	bx,es:[bx+62h]
	mov	ax,es:[bx+si+0Eh]
	les	bx,[bp+6h]
	les	bx,es:[bx+62h]
	mov	es:[bx+si-14h],ax
	inc	word ptr [bp-2h]

l1825_1F97:
	les	bx,[bp+6h]
	les	bx,es:[bx+62h]
	mov	ax,[bp-2h]
	cmp	es:[bx+0Ch],ax
	ja	1F56h

l1825_1FA7:
	les	bx,[bp+6h]
	les	bx,es:[bx+62h]
	dec	word ptr es:[bx+0Ch]
	jmp	1E13h
1825:1FB5                90                                    .          

;; fn1825_1FB6: 1825:1FB6
;;   Called from:
;;     1825:0BC6 (in fn1825_0AA6)
fn1825_1FB6 proc
	push	bp
	mov	bp,sp
	les	bx,[bp+6h]
	les	bx,es:[bx+62h]
	cmp	word ptr es:[bx+0Ah],0h
	jz	1FF4h

l1825_1FC7:
	les	bx,[bp+6h]
	les	bx,es:[bx+62h]
	mov	word ptr es:[bx+4h],1h
	les	bx,[bp+6h]
	les	bx,es:[bx+62h]
	mov	word ptr es:[bx+8h],17h
	les	bx,[bp+6h]
	les	bx,es:[bx+62h]
	mov	word ptr es:[bx+0Ah],0h
	mov	ax,1h
	pop	bp
	retf
1825:1FF3          90                                        .            

l1825_1FF4:
	les	bx,[bp+6h]
	les	bx,es:[bx+62h]
	mov	word ptr es:[bx+4h],38h
	les	bx,[bp+6h]
	les	bx,es:[bx+62h]
	mov	word ptr es:[bx+8h],4Eh
	les	bx,[bp+6h]
	les	bx,es:[bx+62h]
	mov	word ptr es:[bx+0Ah],1h
	mov	ax,1h
	pop	bp
	retf

;; fn1825_2020: 1825:2020
;;   Called from:
;;     1825:01DC (in fn1825_017A)
;;     1825:19FC (in fn1825_18A6)
;;     1825:230D (in fn1825_22BC)
fn1825_2020 proc
	push	bp
	mov	bp,sp
	sub	sp,16h
	push	di
	push	si
	les	bx,[bp+6h]
	les	bx,es:[bx+62h]
	mov	ax,es:[bx]
	mov	[bp-8h],ax
	les	bx,[bp+6h]
	les	bx,es:[bx+62h]
	mov	ax,es:[bx+2h]
	mov	[bp-6h],ax
	les	bx,[bp+6h]
	les	bx,es:[bx+62h]
	mov	ax,es:[bx+4h]
	mov	[bp-0Eh],ax
	les	bx,[bp+6h]
	les	bx,es:[bx+62h]
	mov	ax,es:[bx+6h]
	mov	[bp-4h],ax
	les	bx,[bp+6h]
	les	bx,es:[bx+62h]
	mov	ax,es:[bx+8h]
	mov	[bp-2h],ax
	les	bx,[bp+6h]
	les	bx,es:[bx+62h]
	mov	ax,es:[bx+0Ch]
	mov	[bp-0Ch],ax
	mov	ax,0A5Eh
	push	ds
	push	ax
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	push	word ptr [bp-0Eh]
	push	word ptr [bp-6h]
	call	far 1F38h:05DBh
	add	sp,0Ch
	mov	ax,0A2Ch
	push	ds
	push	ax
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	push	word ptr [bp-0Eh]
	push	word ptr [bp-6h]
	call	far 1F38h:05DBh
	add	sp,0Ch
	mov	si,[bp-0Eh]
	inc	si
	mov	di,[bp-6h]
	inc	di
	push	si
	push	di
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,5h
	push	ax
	mov	ax,5658h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	mov	ax,[bp-0Eh]
	add	ax,6h
	mov	[bp-12h],ax
	push	ax
	push	di
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,16h
	mul	word ptr [128Ah]
	mov	bx,ax
	add	bx,[1282h]
	mov	es,[1284h]
	push	word ptr es:[bx+14h]
	push	word ptr es:[bx+12h]
	call	far 2BC7h:050Ah
	add	sp,4h
	push	dx
	push	ax
	call	far 2017h:03F5h
	add	sp,4h
	mov	[bp-10h],ax
	sub	ax,0Ah
	sbb	cx,cx
	and	ax,cx
	add	ax,0Ah
	mov	[bp-10h],ax
	push	ax
	mov	ax,16h
	mul	word ptr [128Ah]
	mov	bx,ax
	add	bx,[1282h]
	mov	es,[1284h]
	push	word ptr es:[bx+14h]
	push	word ptr es:[bx+12h]
	call	far 2BC7h:050Ah
	add	sp,4h
	push	dx
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	mov	di,[bp-6h]
	add	di,2h
	push	si
	push	di
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,6h
	push	ax
	mov	ax,565Eh
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	push	word ptr [bp-12h]
	push	di
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,6h
	push	ax
	push	word ptr [127Ah]
	push	cs
	call	63F8h
	add	sp,4h
	mov	di,[bp-6h]
	add	di,3h
	push	si
	push	di
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,0Ch
	push	ax
	mov	ax,5664h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	mov	ax,[bp-0Eh]
	add	ax,0Eh
	push	ax
	push	di
	call	far 1F38h:04E7h
	add	sp,4h
	les	bx,[bp+6h]
	les	bx,es:[bx+5Eh]
	cmp	word ptr es:[bx],0h
	jz	21CEh

l1825_21C4:
	mov	ax,4h
	push	ax
	mov	ax,5672h
	jmp	21D5h
1825:21CD                                        90                    .  

l1825_21CE:
	mov	ax,5h
	push	ax
	mov	ax,5678h

l1825_21D5:
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	cmp	word ptr [bp-0Ch],0h
	jnz	21E8h

l1825_21E5:
	jmp	22B6h

l1825_21E8:
	add	word ptr [bp-6h],4h
	mov	ax,[bp-4h]
	add	ax,[bp-0Ch]
	inc	ax
	mov	[bp-4h],ax
	mov	ax,0A5Eh
	push	ds
	push	ax
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	push	word ptr [bp-0Eh]
	push	word ptr [bp-6h]
	call	far 1F38h:05DBh
	add	sp,0Ch
	mov	ax,0A40h
	push	ds
	push	ax
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	push	word ptr [bp-0Eh]
	push	word ptr [bp-6h]
	call	far 1F38h:05DBh
	add	sp,0Ch
	inc	word ptr [bp-6h]
	inc	word ptr [bp-0Eh]
	mov	word ptr [bp-0Ah],0h
	jmp	224Dh
1825:2235                90                                    .          

l1825_2236:
	mov	ax,5h
	push	ax
	mov	ax,567Eh

l1825_223D:
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	inc	word ptr [bp-6h]
	inc	word ptr [bp-0Ah]

l1825_224D:
	mov	ax,[bp-0Ch]
	cmp	[bp-0Ah],ax
	jnc	22B6h

l1825_2255:
	push	word ptr [bp-0Eh]
	push	word ptr [bp-6h]
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,22h
	mul	word ptr [bp-0Ah]
	les	bx,[bp+6h]
	mov	cx,es:[bx+62h]
	mov	si,es:[bx+64h]
	add	cx,ax
	mov	[bp-16h],cx
	mov	[bp-14h],si
	les	bx,[bp-16h]
	cmp	word ptr es:[bx+0Eh],0h
	jz	2236h

l1825_2286:
	mov	ax,1h
	push	ax
	mov	ax,0A68h
	push	ds
	push	ax
	mov	ax,cx
	mov	dx,si
	add	ax,10h
	push	dx
	push	ax
	push	cs
	call	6078h
	add	sp,0Ah
	mov	[bp-10h],ax
	sub	ax,14h
	sbb	cx,cx
	and	ax,cx
	add	ax,14h
	mov	[bp-10h],ax
	push	ax
	mov	ax,0A68h
	jmp	223Dh
1825:22B5                90                                    .          

l1825_22B6:
	pop	si
	pop	di
	mov	sp,bp
	pop	bp
	retf

;; fn1825_22BC: 1825:22BC
;;   Called from:
;;     1825:0032 (in fn1825_000A)
fn1825_22BC proc
	push	bp
	mov	bp,sp
	sub	sp,6h
	mov	ax,[209Ah]
	mov	[0A2Ah],ax
	mov	word ptr [209Ah],1h
	call	far 1F38h:0517h
	mov	al,ah
	sub	ah,ah
	mov	[bp-2h],ax
	call	far 1F38h:0517h
	sub	ah,ah
	mov	[bp-6h],ax
	cmp	word ptr [0F02h],0h
	jz	22F8h

l1825_22EB:
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	2338h
	add	sp,4h

l1825_22F8:
	push	cs
	call	70D4h
	push	word ptr [0EE6h]
	push	cs
	call	7078h
	add	sp,2h
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	2020h
	add	sp,4h
	push	cs
	call	7106h
	cmp	word ptr [0F02h],0h
	jz	2323h

l1825_231F:
	push	cs
	call	23A8h

l1825_2323:
	push	word ptr [bp-6h]
	push	word ptr [bp-2h]
	call	far 1F38h:04E7h
	mov	ax,[0A2Ah]
	mov	[209Ah],ax
	mov	sp,bp
	pop	bp
	retf

;; fn1825_2338: 1825:2338
;;   Called from:
;;     1825:22F1 (in fn1825_22BC)
fn1825_2338 proc
	push	bp
	mov	bp,sp
	push	si
	les	bx,[bp+6h]
	les	bx,es:[bx+62h]
	mov	ax,es:[bx+2h]
	mov	[09FAh],ax
	les	bx,[bp+6h]
	les	bx,es:[bx+62h]
	mov	ax,es:[bx+4h]
	mov	[09FCh],ax
	les	bx,[bp+6h]
	les	bx,es:[bx+62h]
	mov	ax,es:[bx+6h]
	mov	[09FEh],ax
	les	bx,[bp+6h]
	les	bx,es:[bx+62h]
	mov	ax,es:[bx+8h]
	mov	[0A00h],ax
	les	bx,[bp+6h]
	les	bx,es:[bx+62h]
	mov	si,es:[bx+0Ch]
	or	si,si
	jz	238Bh

l1825_2383:
	add	[09FEh],si
	inc	word ptr [09FEh]

l1825_238B:
	mov	word ptr [0A02h],0h
	sub	ax,ax
	mov	[0A06h],ax
	mov	[0A04h],ax
	mov	ax,9FAh
	push	ds
	push	ax
	push	cs
	call	4CFEh
	add	sp,4h
	pop	si
	pop	bp
	retf

;; fn1825_23A8: 1825:23A8
;;   Called from:
;;     1825:231F (in fn1825_22BC)
fn1825_23A8 proc
	mov	ax,9FAh
	push	ds
	push	ax
	push	cs
	call	4D78h
	add	sp,4h
	push	word ptr [0A02h]
	push	word ptr [0A06h]
	push	word ptr [0A04h]
	call	far 21DCh:09B4h
	add	sp,6h
	retf
1825:23C9                            90                            .      

;; fn1825_23CA: 1825:23CA
;;   Called from:
;;     1825:0AF6 (in fn1825_0AA6)
fn1825_23CA proc
	push	bp
	mov	bp,sp
	les	bx,[bp+6h]
	mov	word ptr es:[bx],1h
	sub	ax,ax
	pop	bp
	retf
1825:23D9                            90                            .      

;; fn1825_23DA: 1825:23DA
;;   Called from:
;;     1825:0B8E (in fn1825_0AA6)
fn1825_23DA proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	les	bx,[bp+6h]
	mov	ax,es:[bx+16h]
	sub	ax,29h
	cmp	ax,7h
	ja	243Eh

l1825_23EF:
	add	ax,ax
	xchg	bx,ax
	jmp	word ptr cs:[bx+242Eh]
1825:23F7                      90                                .        

l1825_23F8:
	mov	ax,0D56h

l1825_23FB:
	mov	[bp-4h],ax
	mov	[bp-2h],ds
	jmp	243Eh
1825:2403          90                                        .            

l1825_2404:
	mov	ax,0DC6h
	jmp	23FBh
1825:2409                            90                            .      

l1825_240A:
	mov	ax,0EAAh
	jmp	23FBh
1825:240F                                              90                .

l1825_2410:
	mov	ax,0C22h
	jmp	23FBh
1825:2415                90                                    .          

l1825_2416:
	mov	ax,0CE6h
	jmp	23FBh
1825:241B                                  90                        .    

l1825_241C:
	mov	ax,0E2Eh
	jmp	23FBh
1825:2421    90                                            .              

l1825_2422:
	mov	ax,0CAAh
	jmp	23FBh
1825:2427                      90                                .        

l1825_2428:
	mov	ax,0C46h
	jmp	23FBh
1825:242D                                        90                    .  
l1825_242E	dw	0x23F8
l1825_2430	dw	0x2404
l1825_2432	dw	0x240A
l1825_2434	dw	0x2410
l1825_2436	dw	0x2416
l1825_2438	dw	0x241C
l1825_243A	dw	0x2428
l1825_243C	dw	0x2422

l1825_243E:
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	push	cs
	call	2450h
	mov	ax,1h
	mov	sp,bp
	pop	bp
	retf
1825:244F                                              90                .

;; fn1825_2450: 1825:2450
;;   Called from:
;;     1825:2444 (in fn1825_23DA)
fn1825_2450 proc
	push	bp
	mov	bp,sp
	sub	sp,0Ah
	push	si
	mov	word ptr [bp-6h],5h
	mov	word ptr [bp-0Ah],0h
	mov	word ptr [bp-4h],16h
	mov	word ptr [bp-2h],4Fh
	cmp	word ptr [09CAh],0h
	jnz	24CDh

l1825_2472:
	mov	word ptr [09C8h],1h
	mov	word ptr [09CAh],0h
	mov	word ptr [09CCh],0h
	mov	word ptr [09CEh],0h
	mov	word ptr [09D0h],0h
	mov	word ptr [09D4h],0h
	mov	word ptr [09D6h],0h
	mov	word ptr [09D8h],0h
	mov	word ptr [09DAh],0h
	mov	word ptr [09DCh],0h
	mov	word ptr [09E2h],6h
	mov	ax,[bp-4h]
	dec	ax
	mov	[09E4h],ax
	mov	ax,[09E2h]
	mov	[09E0h],ax
	mov	word ptr [09DEh],1h
	mov	word ptr [09E6h],10h

l1825_24CD:
	mov	word ptr [09D2h],1h
	sub	ax,ax
	push	ax
	call	far 1F38h:0527h
	add	sp,2h
	mov	ax,0A5Eh
	push	ds
	push	ax
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	push	word ptr [bp-0Ah]
	push	word ptr [bp-6h]
	call	far 1F38h:05DBh
	add	sp,0Ch
	mov	ax,0A36h
	push	ds
	push	ax
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	push	word ptr [bp-0Ah]
	push	word ptr [bp-6h]
	call	far 1F38h:05DBh
	add	sp,0Ch
	mov	word ptr [09D8h],0h
	jmp	251Ch

l1825_2518:
	inc	word ptr [09D8h]

l1825_251C:
	mov	si,[09D8h]
	shl	si,1h
	shl	si,1h
	les	bx,[bp+6h]
	les	bx,es:[bx+si]
	cmp	byte ptr es:[bx],1Ah
	jnz	2518h

l1825_2530:
	dec	word ptr [09D8h]
	cmp	word ptr [09D8h],1h
	sbb	ax,ax
	neg	ax
	mov	[bp-8h],ax
	jmp	2596h

l1825_2542:
	mov	ax,9C8h
	push	ds
	push	ax
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	push	word ptr [bp-0Ah]
	push	word ptr [bp-6h]
	push	cs
	call	25AEh
	add	sp,10h
	mov	ax,1h
	push	ax
	mov	ax,9C8h
	push	ds
	push	ax
	push	cs
	call	67EEh
	add	sp,6h
	cmp	word ptr [09CCh],0h
	jnz	257Fh

l1825_2577:
	cmp	word ptr [09D2h],0BB8h
	jnz	2584h

l1825_257F:
	mov	ax,1h
	jmp	2586h

l1825_2584:
	sub	ax,ax

l1825_2586:
	mov	[bp-8h],ax
	cmp	word ptr [09CCh],0h
	jz	2596h

l1825_2590:
	mov	word ptr [09CAh],0h

l1825_2596:
	cmp	word ptr [bp-8h],0h
	jz	2542h

l1825_259C:
	mov	ax,1h
	push	ax
	call	far 1F38h:0527h
	add	sp,2h
	pop	si
	mov	sp,bp
	pop	bp
	retf
1825:25AD                                        90                    .  

;; fn1825_25AE: 1825:25AE
;;   Called from:
;;     1825:2559 (in fn1825_2450)
fn1825_25AE proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	mov	ax,0A5Eh
	push	ds
	push	ax
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 1F38h:05DBh
	add	sp,0Ch
	mov	ax,0A36h
	push	ds
	push	ax
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 1F38h:05DBh
	add	sp,0Ch
	les	bx,[bp+12h]
	mov	ax,es:[bx+12h]
	mov	[bp-4h],ax
	mov	ax,es:[bx+1Ah]
	mov	[bp-2h],ax
	mov	word ptr es:[bx+14h],0h
	jmp	2637h
1825:25FF                                              90                .

l1825_2600:
	mov	ax,[bp-2h]
	cmp	es:[bx+1Ch],ax
	jc	2640h

l1825_2609:
	mov	ax,es:[bx+16h]
	inc	ax
	push	ax
	push	word ptr [bp-2h]
	call	far 1F38h:04E7h
	add	sp,4h
	push	word ptr [bp-4h]
	push	word ptr [bp+10h]
	push	word ptr [bp+0Eh]
	push	cs
	call	2696h
	add	sp,6h
	inc	word ptr [bp-4h]
	inc	word ptr [bp-2h]
	les	bx,[bp+12h]
	inc	word ptr es:[bx+14h]

l1825_2637:
	mov	ax,[bp-4h]
	cmp	es:[bx+10h],ax
	jnc	2600h

l1825_2640:
	mov	ax,es:[bx+0Eh]
	cmp	es:[bx+12h],ax
	jbe	2650h

l1825_264A:
	mov	ax,1h
	jmp	2652h
1825:264F                                              90                .

l1825_2650:
	sub	ax,ax

l1825_2652:
	mov	es:[bx+6h],ax
	mov	ax,[bp-2h]
	cmp	es:[bx+1Ch],ax
	jnc	266Eh

l1825_265F:
	mov	ax,[bp-4h]
	cmp	es:[bx+10h],ax
	jc	266Eh

l1825_2668:
	mov	ax,1h
	jmp	2670h
1825:266D                                        90                    .  

l1825_266E:
	sub	ax,ax

l1825_2670:
	mov	es:[bx+8h],ax
	push	es
	push	bx
	mov	ax,4Fh
	push	ax
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	675Eh
	les	bx,[bp+12h]
	mov	word ptr es:[bx],0h
	mov	sp,bp
	pop	bp
	retf

;; fn1825_2696: 1825:2696
;;   Called from:
;;     1825:2623 (in fn1825_25AE)
fn1825_2696 proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	mov	ax,[bp+0Ah]
	shl	ax,1h
	shl	ax,1h
	add	ax,[bp+6h]
	mov	dx,[bp+8h]
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	les	bx,[bp-4h]
	push	word ptr es:[bx+2h]
	push	word ptr es:[bx]
	call	far 2017h:03F5h
	add	sp,4h
	push	ax
	les	bx,[bp-4h]
	push	word ptr es:[bx+2h]
	push	word ptr es:[bx]
	call	far 1F38h:049Fh
	mov	sp,bp
	pop	bp
	retf
1825:26D5                90                                    .          

;; fn1825_26D6: 1825:26D6
;;   Called from:
;;     1825:0B26 (in fn1825_0AA6)
fn1825_26D6 proc
	push	bp
	mov	bp,sp
	sub	sp,10h
	push	di
	push	si
	mov	word ptr [bp-6h],5h
	mov	word ptr [bp-0Ch],5h
	mov	word ptr [bp-4h],0Ch
	mov	word ptr [bp-2h],4Bh
	mov	word ptr [bp-8h],6h
	mov	word ptr [bp-0Eh],7h
	mov	byte ptr [0A68h],0h
	mov	ax,0A5Eh
	push	ds
	push	ax
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	mov	ax,5h
	push	ax
	push	ax
	call	far 1F38h:05DBh
	add	sp,0Ch
	mov	ax,0A2Ch
	push	ds
	push	ax
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	mov	ax,5h
	push	ax
	push	ax
	call	far 1F38h:05DBh
	add	sp,0Ch
	push	word ptr [bp-0Eh]
	push	word ptr [bp-8h]
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,0Ah
	push	ax
	mov	ax,5684h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	push	word ptr [bp-0Eh]
	mov	ax,[bp-8h]
	add	ax,3h
	push	ax
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,5h
	push	ax
	mov	ax,5690h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	mov	word ptr [bp-0Ah],1h

l1825_2778:
	cmp	word ptr [bp-0Ah],0BB8h
	jnz	2782h

l1825_277F:
	jmp	285Bh

l1825_2782:
	mov	si,[bp-0Eh]
	add	si,2h
	push	si
	mov	ax,[bp-8h]
	inc	ax
	push	ax
	call	far 1F38h:04E7h
	add	sp,4h
	sub	ax,ax
	push	ax
	push	ax
	push	ax
	mov	ax,40h
	push	ax
	mov	ax,0AE8h
	push	ds
	push	ax
	push	cs
	call	648Ah
	add	sp,0Ch
	mov	[bp-0Ah],ax
	mov	ax,0AE8h
	push	ds
	push	ax
	call	far 2017h:03F5h
	add	sp,4h
	mov	[bp-10h],ax
	cmp	word ptr [bp-0Ah],14h
	jz	282Fh

l1825_27C4:
	cmp	word ptr [bp-0Ah],0BB8h
	jz	282Fh

l1825_27CB:
	or	ax,ax
	jz	282Fh

l1825_27CF:
	mov	di,[bp-8h]
	add	di,4h
	mov	ax,0A5Eh
	push	ds
	push	ax
	mov	ax,[bp-2h]
	dec	ax
	push	ax
	mov	ax,[bp-4h]
	dec	ax
	push	ax
	mov	ax,[bp-0Ch]
	inc	ax
	push	ax
	push	di
	call	far 1F38h:05DBh
	add	sp,0Ch
	push	si
	push	di
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,1h
	push	ax
	mov	ax,0A68h
	push	ds
	push	ax
	mov	ax,0AE8h
	push	ds
	push	ax
	push	cs
	call	6078h
	add	sp,0Ah
	mov	[bp-10h],ax
	sub	ax,40h
	sbb	cx,cx
	and	ax,cx
	add	ax,40h
	mov	[bp-10h],ax
	push	ax
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h

l1825_282F:
	mov	ax,0A5Eh
	push	ds
	push	ax
	mov	ax,[bp-2h]
	dec	ax
	push	ax
	mov	ax,[bp-8h]
	add	ax,2h
	push	ax
	mov	ax,[bp-0Ch]
	inc	ax
	push	ax
	mov	ax,[bp-8h]
	inc	ax
	push	ax
	call	far 1F38h:05DBh
	add	sp,0Ch
	cmp	word ptr [bp-0Ah],14h
	jz	285Bh

l1825_2858:
	jmp	2778h

l1825_285B:
	cmp	word ptr [bp-0Ah],14h
	jnz	2876h

l1825_2861:
	les	bx,[bp+6h]
	mov	word ptr es:[bx+0Ch],1h
	mov	word ptr es:[bx+0Eh],1h
	mov	word ptr es:[bx+16h],0h

l1825_2876:
	mov	ax,1h
	pop	si
	pop	di
	mov	sp,bp
	pop	bp
	retf
1825:287F                                              90                .

;; fn1825_2880: 1825:2880
;;   Called from:
;;     1825:0B32 (in fn1825_0AA6)
fn1825_2880 proc
	push	bp
	mov	bp,sp
	sub	sp,0Ch
	push	si
	mov	word ptr [bp-8h],5h
	mov	word ptr [bp-0Ch],14h
	mov	word ptr [bp-4h],17h
	mov	word ptr [bp-2h],2Ah
	cmp	word ptr [0982h],0h
	jnz	28FDh

l1825_28A2:
	mov	word ptr [0980h],1h
	mov	word ptr [0982h],0h
	mov	word ptr [0984h],0h
	mov	word ptr [0986h],0h
	mov	word ptr [0988h],0h
	mov	word ptr [098Ch],1h
	mov	word ptr [098Eh],1h
	mov	word ptr [0990h],0h
	mov	word ptr [0992h],1h
	mov	word ptr [0994h],0h
	mov	word ptr [099Ah],6h
	mov	ax,[bp-4h]
	dec	ax
	mov	[099Ch],ax
	mov	ax,[099Ah]
	mov	[0998h],ax
	mov	word ptr [0996h],15h
	mov	word ptr [099Eh],11h

l1825_28FD:
	mov	word ptr [098Ah],1h
	sub	ax,ax
	push	ax
	call	far 1F38h:0527h
	add	sp,2h
	mov	ax,0A5Eh
	push	ds
	push	ax
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	push	word ptr [bp-0Ch]
	push	word ptr [bp-8h]
	call	far 1F38h:05DBh
	add	sp,0Ch
	mov	ax,0A36h
	push	ds
	push	ax
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	push	word ptr [bp-0Ch]
	push	word ptr [bp-8h]
	call	far 1F38h:05DBh
	add	sp,0Ch
	mov	word ptr [0990h],0h
	mov	ax,1h
	push	ax
	push	cs
	call	6E18h
	add	sp,2h
	jmp	2967h
1825:2953          90                                        .            

l1825_2954:
	inc	word ptr [0990h]
	mov	ax,16h
	mul	word ptr [bp-6h]
	mov	bx,ax
	les	si,[1282h]
	mov	ax,es:[bx+si]

l1825_2967:
	mov	[bp-6h],ax
	or	ax,ax
	jnz	2954h

l1825_296E:
	cmp	word ptr [0990h],1h
	sbb	ax,ax
	neg	ax
	jmp	29B8h
1825:2979                            90                            .      

l1825_297A:
	mov	ax,980h
	push	ds
	push	ax
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	push	word ptr [bp-0Ch]
	push	word ptr [bp-8h]
	push	cs
	call	5850h
	add	sp,0Ch
	mov	ax,1h
	push	ax
	mov	ax,980h
	push	ds
	push	ax
	push	cs
	call	67EEh
	add	sp,6h
	cmp	word ptr [0984h],0h
	jnz	29B1h

l1825_29A9:
	cmp	word ptr [098Ah],0BB8h
	jnz	29B6h

l1825_29B1:
	mov	ax,1h
	jmp	29B8h

l1825_29B6:
	sub	ax,ax

l1825_29B8:
	mov	[bp-0Ah],ax
	or	ax,ax
	jz	297Ah

l1825_29BF:
	cmp	word ptr [0990h],0h
	jnz	2A05h

l1825_29C6:
	call	far 1F38h:07FAh
	mov	ax,[bp-0Ch]
	add	ax,3h
	push	ax
	push	word ptr [bp-4h]
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,9h
	push	ax
	mov	ax,5696h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	sub	ax,ax
	push	ax
	mov	ax,8h
	push	ax
	call	far 3431h:07B6h
	add	sp,4h
	mov	[098Ah],ax
	call	far 1F38h:07E7h

l1825_2A05:
	cmp	word ptr [0984h],0h
	jz	2A12h

l1825_2A0C:
	mov	word ptr [0982h],0h

l1825_2A12:
	mov	ax,1h
	push	ax
	call	far 1F38h:0527h
	add	sp,2h
	mov	ax,1h
	pop	si
	mov	sp,bp
	pop	bp
	retf

;; fn1825_2A26: 1825:2A26
;;   Called from:
;;     1825:0B3E (in fn1825_0AA6)
fn1825_2A26 proc
	push	bp
	mov	bp,sp
	sub	sp,0Ch
	mov	word ptr [bp-6h],5h
	mov	word ptr [bp-0Ch],0Ah
	mov	word ptr [bp-4h],16h
	mov	word ptr [bp-2h],46h
	cmp	word ptr [0982h],0h
	jnz	2AA2h

l1825_2A47:
	mov	word ptr [0980h],1h
	mov	word ptr [0982h],0h
	mov	word ptr [0984h],0h
	mov	word ptr [0986h],0h
	mov	word ptr [0988h],0h
	mov	word ptr [098Ch],1h
	mov	word ptr [098Eh],1h
	mov	word ptr [0990h],0h
	mov	word ptr [0992h],1h
	mov	word ptr [0994h],0h
	mov	word ptr [099Ah],6h
	mov	ax,[bp-4h]
	dec	ax
	mov	[099Ch],ax
	mov	ax,[099Ah]
	mov	[0998h],ax
	mov	word ptr [0996h],0Bh
	mov	word ptr [099Eh],10h

l1825_2AA2:
	mov	word ptr [098Ah],1h
	sub	ax,ax
	push	ax
	call	far 1F38h:0527h
	add	sp,2h
	mov	ax,0A5Eh
	push	ds
	push	ax
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	push	word ptr [bp-0Ch]
	push	word ptr [bp-6h]
	call	far 1F38h:05DBh
	add	sp,0Ch
	mov	ax,0A36h
	push	ds
	push	ax
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	push	word ptr [bp-0Ch]
	push	word ptr [bp-6h]
	call	far 1F38h:05DBh
	add	sp,0Ch
	mov	word ptr [bp-8h],0h
	jmp	2AEFh

l1825_2AEC:
	inc	word ptr [bp-8h]

l1825_2AEF:
	mov	bx,[bp-8h]
	mov	cl,4h
	shl	bx,cl
	cmp	word ptr [bx+50h],0h
	jnz	2AECh

l1825_2AFD:
	mov	ax,[bp-8h]
	mov	[0990h],ax
	cmp	ax,1h
	sbb	ax,ax
	neg	ax
	jmp	2B4Ah

l1825_2B0C:
	mov	ax,980h
	push	ds
	push	ax
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	push	word ptr [bp-0Ch]
	push	word ptr [bp-6h]
	push	cs
	call	2B6Eh
	add	sp,0Ch
	mov	ax,1h
	push	ax
	mov	ax,980h
	push	ds
	push	ax
	push	cs
	call	67EEh
	add	sp,6h
	cmp	word ptr [0984h],0h
	jnz	2B43h

l1825_2B3B:
	cmp	word ptr [098Ah],0BB8h
	jnz	2B48h

l1825_2B43:
	mov	ax,1h
	jmp	2B4Ah

l1825_2B48:
	sub	ax,ax

l1825_2B4A:
	mov	[bp-0Ah],ax
	or	ax,ax
	jz	2B0Ch

l1825_2B51:
	cmp	word ptr [0984h],0h
	jz	2B5Eh

l1825_2B58:
	mov	word ptr [0982h],0h

l1825_2B5E:
	mov	ax,1h
	push	ax
	call	far 1F38h:0527h
	mov	ax,1h
	mov	sp,bp
	pop	bp
	retf

;; fn1825_2B6E: 1825:2B6E
;;   Called from:
;;     1825:2B1D (in fn1825_2A26)
fn1825_2B6E proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	mov	ax,0A5Eh
	push	ds
	push	ax
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 1F38h:05DBh
	add	sp,0Ch
	mov	ax,0A36h
	push	ds
	push	ax
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 1F38h:05DBh
	add	sp,0Ch
	les	bx,[bp+0Eh]
	mov	ax,es:[bx+12h]
	mov	[bp-4h],ax
	mov	ax,es:[bx+1Ah]
	mov	[bp-2h],ax
	mov	word ptr es:[bx+14h],0h
	jmp	2BF3h
1825:2BBF                                              90                .

l1825_2BC0:
	mov	ax,[bp-2h]
	cmp	es:[bx+1Ch],ax
	jc	2BFCh

l1825_2BC9:
	mov	ax,es:[bx+16h]
	inc	ax
	push	ax
	push	word ptr [bp-2h]
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,[bp-4h]
	dec	ax
	push	ax
	push	cs
	call	2C52h
	add	sp,2h
	inc	word ptr [bp-4h]
	inc	word ptr [bp-2h]
	les	bx,[bp+0Eh]
	inc	word ptr es:[bx+14h]

l1825_2BF3:
	mov	ax,[bp-4h]
	cmp	es:[bx+10h],ax
	jnc	2BC0h

l1825_2BFC:
	mov	ax,es:[bx+0Eh]
	cmp	es:[bx+12h],ax
	jbe	2C0Ch

l1825_2C06:
	mov	ax,1h
	jmp	2C0Eh
1825:2C0B                                  90                        .    

l1825_2C0C:
	sub	ax,ax

l1825_2C0E:
	mov	es:[bx+6h],ax
	mov	ax,[bp-2h]
	cmp	es:[bx+1Ch],ax
	jnc	2C2Ah

l1825_2C1B:
	mov	ax,[bp-4h]
	cmp	es:[bx+10h],ax
	jc	2C2Ah

l1825_2C24:
	mov	ax,1h
	jmp	2C2Ch
1825:2C29                            90                            .      

l1825_2C2A:
	sub	ax,ax

l1825_2C2C:
	mov	es:[bx+8h],ax
	push	es
	push	bx
	mov	ax,3Ch
	push	ax
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	675Eh
	les	bx,[bp+0Eh]
	mov	word ptr es:[bx],0h
	mov	sp,bp
	pop	bp
	retf

;; fn1825_2C52: 1825:2C52
;;   Called from:
;;     1825:2BDF (in fn1825_2B6E)
fn1825_2C52 proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	push	si
	call	far 1F38h:0517h
	sub	ah,ah
	mov	[bp-2h],ax
	mov	si,[bp+6h]
	mov	cl,4h
	shl	si,cl
	mov	ax,si
	add	ax,52h
	push	ds
	push	ax
	call	far 2017h:03F5h
	add	sp,4h
	mov	[bp-4h],ax
	push	word ptr [bp-2h]
	call	far 1F38h:0517h
	mov	al,ah
	sub	ah,ah
	push	ax
	call	far 1F38h:04E7h
	add	sp,4h
	push	word ptr [bp-4h]
	mov	ax,si
	add	ax,52h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	push	word ptr [si+50h]
	mov	ax,0A68h
	push	ds
	push	ax
	push	cs
	call	2CF2h
	add	sp,6h
	mov	[bp-4h],ax
	sub	ax,28h
	sbb	cx,cx
	and	ax,cx
	add	ax,28h
	mov	[bp-4h],ax
	mov	ax,[bp-2h]
	add	ax,10h
	push	ax
	call	far 1F38h:0517h
	mov	al,ah
	sub	ah,ah
	push	ax
	call	far 1F38h:04E7h
	add	sp,4h
	push	word ptr [bp-4h]
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	pop	si
	mov	sp,bp
	pop	bp
	retf
1825:2CF1    90                                            .              

;; fn1825_2CF2: 1825:2CF2
;;   Called from:
;;     1825:2CAC (in fn1825_2C52)
fn1825_2CF2 proc
	push	bp
	mov	bp,sp
	sub	sp,2h
	push	si
	les	bx,[bp+6h]
	mov	byte ptr es:[bx],0h
	mov	ax,[bp+0Ah]
	cmp	ax,23h
	jnz	2D0Bh

l1825_2D08:
	jmp	2F78h

l1825_2D0B:
	jbe	2D10h

l1825_2D0D:
	jmp	31B4h

l1825_2D10:
	sub	ax,6h
	cmp	ax,1Ah
	ja	2D5Fh

l1825_2D18:
	add	ax,ax
	xchg	bx,ax
	jmp	word ptr cs:[bx+317Eh]

l1825_2D20:
	cmp	word ptr [2094h],0h
	jz	2D2Ch

l1825_2D27:
	mov	ax,56A0h
	jmp	2D2Fh

l1825_2D2C:
	mov	ax,56A4h

l1825_2D2F:
	push	ds
	push	ax
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 2017h:01BAh
	add	sp,8h
	cmp	word ptr [20B8h],0h
	jz	2D4Ch

l1825_2D46:
	mov	ax,56A8h
	jmp	2D4Fh
1825:2D4B                                  90                        .    

l1825_2D4C:
	mov	ax,56B0h

l1825_2D4F:
	push	ds
	push	ax
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 2017h:037Dh

l1825_2D5C:
	add	sp,8h

l1825_2D5F:
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 2017h:03F5h
	add	sp,4h
	pop	si
	mov	sp,bp
	pop	bp
	retf

l1825_2D72:
	cmp	word ptr [2096h],0h
	jz	2D7Eh

l1825_2D79:
	mov	ax,56BAh
	jmp	2D81h

l1825_2D7E:
	mov	ax,56BEh

l1825_2D81:
	push	ds

l1825_2D82:
	push	ax
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 2017h:01BAh
	jmp	2D5Ch

l1825_2D90:
	cmp	word ptr [13E6h],0h
	jz	2D9Ch

l1825_2D97:
	mov	ax,56C2h
	jmp	2D81h

l1825_2D9C:
	mov	ax,56C6h
	jmp	2D81h
1825:2DA1    90                                            .              

l1825_2DA2:
	cmp	word ptr [20A6h],0h
	jz	2DAEh

l1825_2DA9:
	mov	ax,56CAh
	jmp	2D81h

l1825_2DAE:
	mov	ax,56CEh
	jmp	2D81h
1825:2DB3          90                                        .            

l1825_2DB4:
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	324Ah
	add	sp,4h
	jmp	2D5Fh
1825:2DC3          90                                        .            

l1825_2DC4:
	cmp	word ptr [2098h],0h
	jz	2DD0h

l1825_2DCB:
	mov	ax,56D2h
	jmp	2D81h

l1825_2DD0:
	mov	ax,56D6h
	jmp	2D81h
1825:2DD5                90                                    .          

l1825_2DD6:
	cmp	word ptr [0A2Ah],0h
	jz	2DE2h

l1825_2DDD:
	mov	ax,56DAh
	jmp	2D81h

l1825_2DE2:
	mov	ax,56DEh
	jmp	2D81h
1825:2DE7                      90                                .        

l1825_2DE8:
	cmp	word ptr [0A28h],0h
	jz	2DF4h

l1825_2DEF:
	mov	ax,56E2h
	jmp	2D81h

l1825_2DF4:
	mov	ax,56E6h
	jmp	2D81h
1825:2DF9                            90                            .      

l1825_2DFA:
	mov	ax,[128Eh]
	cmp	ax,6h
	jbe	2E05h

l1825_2E02:
	jmp	2D5Fh

l1825_2E05:
	add	ax,ax
	xchg	bx,ax
	jmp	word ptr cs:[bx+2E38h]
1825:2E0D                                        90                    .  

l1825_2E0E:
	mov	ax,56EAh
	jmp	2D81h

l1825_2E14:
	mov	ax,56F4h
	jmp	2D81h

l1825_2E1A:
	mov	ax,56FEh
	jmp	2D81h

l1825_2E20:
	mov	ax,5704h
	jmp	2D81h

l1825_2E26:
	mov	ax,570Ch
	jmp	2D81h

l1825_2E2C:
	mov	ax,5714h
	jmp	2D81h

l1825_2E32:
	mov	ax,571Ch
	jmp	2D81h
l1825_2E38	dw	0x2E0E
l1825_2E3A	dw	0x2E14
l1825_2E3C	dw	0x2E1A
l1825_2E3E	dw	0x2E20
l1825_2E40	dw	0x2E26
l1825_2E42	dw	0x2E2C
l1825_2E44	dw	0x2E32
1825:2E46                   E9 16 FF 90                         ....      

l1825_2E4A:
	cmp	word ptr [13F8h],0h
	jz	2E7Ah

l1825_2E51:
	mov	ax,7Fh
	push	ax
	push	word ptr [13F8h]

l1825_2E59:
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 38D6h:0D68h
	add	sp,8h
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 2017h:03D0h
	add	sp,4h

l1825_2E75:
	push	dx
	jmp	2D82h
1825:2E79                            90                            .      

l1825_2E7A:
	mov	ax,5724h
	jmp	2D81h

l1825_2E80:
	mov	ax,13FAh
	push	ds
	push	ax
	call	far 2017h:03F5h
	add	sp,4h
	or	ax,ax
	jz	2EA6h

l1825_2E91:
	mov	ax,13FAh
	push	ds
	push	ax
	call	far 2017h:03F5h
	add	sp,4h
	inc	ax
	push	ax
	mov	ax,13FAh
	jmp	2EADh
1825:2EA5                90                                    .          

l1825_2EA6:
	mov	ax,7h
	push	ax
	mov	ax,5726h

l1825_2EAD:
	push	ds
	push	ax
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 2017h:02ECh
	add	sp,0Ah
	jmp	2D5Fh

l1825_2EC0:
	cmp	word ptr [13E8h],0h
	jz	2ECEh

l1825_2EC7:
	mov	ax,572Eh
	jmp	2D81h
1825:2ECD                                        90                    .  

l1825_2ECE:
	mov	ax,5732h
	jmp	2D81h

l1825_2ED4:
	cmp	word ptr [209Ch],0h
	jz	2EE0h

l1825_2EDB:
	mov	ax,5736h
	jmp	2EE3h

l1825_2EE0:
	mov	ax,573Ah

l1825_2EE3:
	push	ds
	push	ax
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 2017h:01BAh
	add	sp,8h
	mov	ax,573Eh
	push	ds
	push	ax
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 2017h:037Dh
	add	sp,8h
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 2017h:03F5h
	add	sp,4h
	mov	[bp-2h],ax
	mov	bx,ax
	les	si,[bp+6h]
	mov	al,[20B6h]
	mov	es:[bx+si],al
	mov	si,bx
	mov	bx,[bp+6h]
	mov	byte ptr es:[bx+si+1h],0h
	mov	ax,5746h
	push	ds
	push	ax
	push	es
	push	bx
	call	far 2017h:037Dh
	add	sp,8h
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 2017h:03F5h
	add	sp,4h
	mov	[bp-2h],ax
	mov	bx,ax
	les	si,[bp+6h]
	mov	al,[20B7h]
	mov	es:[bx+si],al
	mov	si,bx
	mov	bx,[bp+6h]
	mov	byte ptr es:[bx+si+1h],0h
	jmp	2D5Fh

l1825_2F64:
	cmp	word ptr [20B0h],0h
	jz	2F72h

l1825_2F6B:
	mov	ax,574Eh
	jmp	2D81h
1825:2F71    90                                            .              

l1825_2F72:
	mov	ax,5754h
	jmp	2D81h

l1825_2F78:
	cmp	word ptr [20A4h],0h
	jz	2F86h

l1825_2F7F:
	mov	ax,575Ch
	jmp	2D81h
1825:2F85                90                                    .          

l1825_2F86:
	mov	ax,5760h
	jmp	2D81h

l1825_2F8C:
	cmp	word ptr [13EAh],0h
	jz	2F9Ah

l1825_2F93:
	mov	ax,5764h
	jmp	2D81h
1825:2F99                            90                            .      

l1825_2F9A:
	mov	ax,5768h
	jmp	2D81h

l1825_2FA0:
	cmp	word ptr [13F0h],0h
	jz	2FAEh

l1825_2FA7:
	mov	ax,576Ch
	jmp	2D81h
1825:2FAD                                        90                    .  

l1825_2FAE:
	mov	ax,5770h
	jmp	2D81h

l1825_2FB4:
	cmp	word ptr [13ECh],0h
	jz	2FC2h

l1825_2FBB:
	mov	ax,5774h
	jmp	2D81h
1825:2FC1    90                                            .              

l1825_2FC2:
	mov	ax,5778h
	jmp	2D81h

l1825_2FC8:
	mov	ax,[20BCh]
	or	ax,[20BEh]
	jz	2FE0h

l1825_2FD1:
	les	bx,[20BCh]
	mov	ax,es:[bx+0Ah]
	mov	dx,es:[bx+0Ch]
	jmp	2E75h

l1825_2FE0:
	mov	ax,577Ch
	mov	dx,ds
	jmp	2E75h

l1825_2FE8:
	cmp	word ptr [20B4h],0h
	jz	2FFAh

l1825_2FEF:
	mov	ax,7Fh
	push	ax
	push	word ptr [20B4h]
	jmp	2E59h

l1825_2FFA:
	mov	ax,5786h
	jmp	2D81h

l1825_3000:
	cmp	word ptr [209Eh],0h
	jz	300Eh

l1825_3007:
	mov	ax,5788h
	jmp	2D81h
1825:300D                                        90                    .  

l1825_300E:
	mov	ax,578Ch
	jmp	2D81h

l1825_3014:
	mov	ax,143Ah
	push	ds
	push	ax
	call	far 2017h:03F5h
	add	sp,4h
	or	ax,ax
	jz	303Ah

l1825_3025:
	mov	ax,143Ah
	push	ds
	push	ax
	call	far 2017h:03F5h
	add	sp,4h
	inc	ax
	push	ax
	mov	ax,143Ah
	jmp	2EADh

l1825_303A:
	mov	ax,7h
	push	ax
	mov	ax,5790h
	jmp	2EADh

l1825_3044:
	cmp	word ptr [20A0h],0h
	jz	3052h

l1825_304B:
	mov	ax,5798h
	jmp	2D81h
1825:3051    90                                            .              

l1825_3052:
	mov	ax,579Ch
	jmp	2D81h

l1825_3058:
	cmp	word ptr [0C0Ch],0h
	jz	306Ah

l1825_305F:
	mov	ax,7Fh
	push	ax
	push	word ptr [0C0Ch]
	jmp	30BBh
1825:3069                            90                            .      

l1825_306A:
	mov	ax,2h
	push	ax
	mov	ax,57A0h
	jmp	2EADh

l1825_3074:
	cmp	word ptr [0C0Eh],0h
	jz	3086h

l1825_307B:
	mov	ax,7Fh
	push	ax
	push	word ptr [0C0Eh]
	jmp	30BBh
1825:3085                90                                    .          

l1825_3086:
	mov	ax,2h
	push	ax
	mov	ax,57A2h
	jmp	2EADh

l1825_3090:
	cmp	word ptr [21C2h],0h
	jz	30A2h

l1825_3097:
	mov	ax,7Fh
	push	ax
	push	word ptr [21C2h]
	jmp	30BBh
1825:30A1    90                                            .              

l1825_30A2:
	mov	ax,2h
	push	ax
	mov	ax,57A4h
	jmp	2EADh

l1825_30AC:
	cmp	word ptr [21C4h],0h
	jz	3124h

l1825_30B3:
	mov	ax,7Fh
	push	ax
	push	word ptr [21C4h]

l1825_30BB:
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 38D6h:0D68h
	add	sp,8h
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 2017h:03D0h
	add	sp,4h
	push	dx
	push	ax
	call	far 2017h:03F5h
	add	sp,4h
	push	ax
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 2017h:03D0h
	add	sp,4h
	push	dx
	push	ax
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 2017h:02ECh
	add	sp,0Ah
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 2017h:03D0h
	add	sp,4h
	push	dx
	push	ax
	call	far 2017h:03F5h
	add	sp,4h
	mov	bx,ax
	les	si,[bp+6h]
	mov	byte ptr es:[bx+si],0h
	jmp	2D5Fh

l1825_3124:
	mov	ax,2h
	push	ax
	mov	ax,57A6h
	jmp	2EADh

l1825_312E:
	cmp	word ptr [20A2h],0h
	jz	313Ch

l1825_3135:
	mov	ax,57A8h
	jmp	2D81h
1825:313B                                  90                        .    

l1825_313C:
	mov	ax,57ACh
	jmp	2D81h

l1825_3142:
	cmp	word ptr [13F2h],0h
	jz	3150h

l1825_3149:
	mov	ax,57B0h
	jmp	2D81h
1825:314F                                              90                .

l1825_3150:
	mov	ax,57B4h
	jmp	2D81h

l1825_3156:
	cmp	word ptr [13EEh],0h
	jz	3164h

l1825_315D:
	mov	ax,57B8h
	jmp	2D81h
1825:3163          90                                        .            

l1825_3164:
	mov	ax,57BCh
	jmp	2D81h

l1825_316A:
	cmp	word ptr [20A8h],0h
	jz	3178h

l1825_3171:
	mov	ax,57C0h
	jmp	2D81h
1825:3177                      90                                .        

l1825_3178:
	mov	ax,57C4h
	jmp	2D81h
l1825_317E	dw	0x2D20
l1825_3180	dw	0x2D5F
l1825_3182	dw	0x2D5F
l1825_3184	dw	0x2D5F
l1825_3186	dw	0x2D72
l1825_3188	dw	0x2D5F
l1825_318A	dw	0x2D5F
l1825_318C	dw	0x2D5F
l1825_318E	dw	0x2D5F
l1825_3190	dw	0x2D90
l1825_3192	dw	0x2D5F
l1825_3194	dw	0x2DA2
l1825_3196	dw	0x2D5F
l1825_3198	dw	0x2D5F
l1825_319A	dw	0x2DB4
l1825_319C	dw	0x2D5F
l1825_319E	dw	0x2DC4
l1825_31A0	dw	0x2DD6
l1825_31A2	dw	0x2DE8
l1825_31A4	dw	0x2D5F
l1825_31A6	dw	0x2DFA
l1825_31A8	dw	0x2D5F
l1825_31AA	dw	0x2E4A
l1825_31AC	dw	0x2E80
l1825_31AE	dw	0x2EC0
l1825_31B0	dw	0x2ED4
l1825_31B2	dw	0x2F64

l1825_31B4:
	cmp	ax,4Bh
	jnz	31BCh

l1825_31B9:
	jmp	3044h

l1825_31BC:
	ja	3200h

l1825_31BE:
	cmp	ax,2Bh
	jnz	31C6h

l1825_31C3:
	jmp	2FB4h

l1825_31C6:
	ja	31DCh

l1825_31C8:
	cmp	ax,24h
	jnz	31D0h

l1825_31CD:
	jmp	2F8Ch

l1825_31D0:
	cmp	ax,26h
	jnz	31D8h

l1825_31D5:
	jmp	2FA0h

l1825_31D8:
	jmp	2D5Fh
1825:31DB                                  90                        .    

l1825_31DC:
	cmp	ax,2Dh
	jnz	31E4h

l1825_31E1:
	jmp	2FC8h

l1825_31E4:
	cmp	ax,37h
	jnz	31ECh

l1825_31E9:
	jmp	3000h

l1825_31EC:
	cmp	ax,3Dh
	jnz	31F4h

l1825_31F1:
	jmp	2FE8h

l1825_31F4:
	cmp	ax,48h
	jnz	31FCh

l1825_31F9:
	jmp	3014h

l1825_31FC:
	jmp	2D5Fh
1825:31FF                                              90                .

l1825_3200:
	cmp	ax,57h
	jnz	3208h

l1825_3205:
	jmp	30ACh

l1825_3208:
	ja	3226h

l1825_320A:
	cmp	ax,52h
	jnz	3212h

l1825_320F:
	jmp	3058h

l1825_3212:
	cmp	ax,53h
	jnz	321Ah

l1825_3217:
	jmp	3074h

l1825_321A:
	cmp	ax,56h
	jnz	3222h

l1825_321F:
	jmp	3090h

l1825_3222:
	jmp	2D5Fh
1825:3225                90                                    .          

l1825_3226:
	cmp	ax,59h
	jnz	322Eh

l1825_322B:
	jmp	312Eh

l1825_322E:
	cmp	ax,5Dh
	jnz	3236h

l1825_3233:
	jmp	3142h

l1825_3236:
	cmp	ax,66h
	jnz	323Eh

l1825_323B:
	jmp	3156h

l1825_323E:
	cmp	ax,6Ah
	jnz	3246h

l1825_3243:
	jmp	316Ah

l1825_3246:
	jmp	2D5Fh
1825:3249                            90                            .      

;; fn1825_324A: 1825:324A
;;   Called from:
;;     1825:2DBA (in fn1825_2CF2)
fn1825_324A proc
	push	bp
	mov	bp,sp
	sub	sp,2h
	push	si
	mov	word ptr [bp-2h],0h
	sub	ax,ax
	push	ax
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	word ptr [0C10h]
	push	cs
	call	336Ch
	add	sp,8h
	mov	[bp-2h],ax
	cmp	word ptr [0C12h],0h
	jz	3293h

l1825_3274:
	mov	bx,ax
	inc	word ptr [bp-2h]
	les	si,[bp+6h]
	mov	byte ptr es:[bx+si],2Fh
	push	word ptr [bp-2h]
	push	es
	push	si
	push	word ptr [0C12h]
	push	cs
	call	336Ch
	add	sp,8h
	mov	[bp-2h],ax

l1825_3293:
	mov	bx,[bp-2h]
	inc	word ptr [bp-2h]
	les	si,[bp+6h]
	mov	byte ptr es:[bx+si],2Ch
	push	word ptr [bp-2h]
	push	es
	push	si
	push	word ptr [0C14h]
	push	cs
	call	336Ch
	add	sp,8h
	mov	[bp-2h],ax
	cmp	word ptr [0C16h],0h
	jz	32D9h

l1825_32BA:
	mov	bx,ax
	inc	word ptr [bp-2h]
	mov	es,[bp+8h]
	mov	byte ptr es:[bx+si],2Fh
	push	word ptr [bp-2h]
	push	es
	push	si
	push	word ptr [0C16h]
	push	cs
	call	336Ch
	add	sp,8h
	mov	[bp-2h],ax

l1825_32D9:
	mov	bx,[bp-2h]
	inc	word ptr [bp-2h]
	les	si,[bp+6h]
	mov	byte ptr es:[bx+si],2Ch
	push	word ptr [bp-2h]
	push	es
	push	si
	push	word ptr [0C1Ch]
	push	cs
	call	336Ch
	add	sp,8h
	mov	[bp-2h],ax
	mov	bx,ax
	inc	word ptr [bp-2h]
	mov	es,[bp+8h]
	mov	byte ptr es:[bx+si],2Ch
	push	word ptr [bp-2h]
	push	es
	push	si
	push	word ptr [0C1Eh]
	push	cs
	call	336Ch
	add	sp,8h
	mov	[bp-2h],ax
	mov	bx,ax
	inc	word ptr [bp-2h]
	mov	es,[bp+8h]
	mov	byte ptr es:[bx+si],2Ch
	push	word ptr [bp-2h]
	push	es
	push	si
	push	word ptr [0C18h]
	push	cs
	call	336Ch
	add	sp,8h
	mov	[bp-2h],ax
	cmp	word ptr [0C1Ah],0h
	jz	335Dh

l1825_333E:
	mov	bx,ax
	inc	word ptr [bp-2h]
	mov	es,[bp+8h]
	mov	byte ptr es:[bx+si],2Fh
	push	word ptr [bp-2h]
	push	es
	push	si
	push	word ptr [0C1Ah]
	push	cs
	call	336Ch
	add	sp,8h
	mov	[bp-2h],ax

l1825_335D:
	mov	bx,[bp-2h]
	les	si,[bp+6h]
	mov	byte ptr es:[bx+si],0h
	pop	si
	mov	sp,bp
	pop	bp
	retf

;; fn1825_336C: 1825:336C
;;   Called from:
;;     1825:3263 (in fn1825_324A)
;;     1825:3289 (in fn1825_324A)
;;     1825:32A9 (in fn1825_324A)
;;     1825:32CF (in fn1825_324A)
;;     1825:32EF (in fn1825_324A)
;;     1825:330E (in fn1825_324A)
;;     1825:332D (in fn1825_324A)
;;     1825:3353 (in fn1825_324A)
fn1825_336C proc
	push	bp
	mov	bp,sp
	push	si
	test	byte ptr [bp+6h],80h
	jz	3383h

l1825_3376:
	mov	bx,[bp+0Ch]
	inc	word ptr [bp+0Ch]
	les	si,[bp+8h]
	mov	byte ptr es:[bx+si],57h

l1825_3383:
	test	byte ptr [bp+6h],1h
	jz	3396h

l1825_3389:
	mov	bx,[bp+0Ch]
	inc	word ptr [bp+0Ch]
	les	si,[bp+8h]
	mov	byte ptr es:[bx+si],42h

l1825_3396:
	test	byte ptr [bp+6h],2h
	jz	33A9h

l1825_339C:
	mov	bx,[bp+0Ch]
	inc	word ptr [bp+0Ch]
	les	si,[bp+8h]
	mov	byte ptr es:[bx+si],47h

l1825_33A9:
	test	byte ptr [bp+6h],4h
	jz	33BCh

l1825_33AF:
	mov	bx,[bp+0Ch]
	inc	word ptr [bp+0Ch]
	les	si,[bp+8h]
	mov	byte ptr es:[bx+si],52h

l1825_33BC:
	test	word ptr [bp+6h],100h
	jz	33D0h

l1825_33C3:
	mov	bx,[bp+0Ch]
	inc	word ptr [bp+0Ch]
	les	si,[bp+8h]
	mov	byte ptr es:[bx+si],49h

l1825_33D0:
	test	byte ptr [bp+6h],20h
	jz	33E3h

l1825_33D6:
	mov	bx,[bp+0Ch]
	inc	word ptr [bp+0Ch]
	les	si,[bp+8h]
	mov	byte ptr es:[bx+si],55h

l1825_33E3:
	test	byte ptr [bp+6h],40h
	jz	33F6h

l1825_33E9:
	mov	bx,[bp+0Ch]
	inc	word ptr [bp+0Ch]
	les	si,[bp+8h]
	mov	byte ptr es:[bx+si],4Eh

l1825_33F6:
	test	word ptr [bp+6h],200h
	jz	340Ah

l1825_33FD:
	mov	bx,[bp+0Ch]
	inc	word ptr [bp+0Ch]
	les	si,[bp+8h]
	mov	byte ptr es:[bx+si],58h

l1825_340A:
	test	byte ptr [bp+6h],10h
	jz	341Dh

l1825_3410:
	mov	bx,[bp+0Ch]
	inc	word ptr [bp+0Ch]
	les	si,[bp+8h]
	mov	byte ptr es:[bx+si],2Ah

l1825_341D:
	test	byte ptr [bp+6h],8h
	jz	3430h

l1825_3423:
	mov	bx,[bp+0Ch]
	inc	word ptr [bp+0Ch]
	les	si,[bp+8h]
	mov	byte ptr es:[bx+si],2Bh

l1825_3430:
	mov	ax,[bp+0Ch]
	pop	si
	pop	bp
	retf

;; fn1825_3436: 1825:3436
;;   Called from:
;;     1825:0B4A (in fn1825_0AA6)
fn1825_3436 proc
	push	bp
	mov	bp,sp
	sub	sp,0Eh
	push	di
	push	si
	mov	word ptr [bp-6h],2h
	mov	word ptr [bp-0Ch],4h
	mov	word ptr [bp-4h],14h
	mov	word ptr [bp-2h],11h
	cmp	word ptr [0982h],0h
	jz	345Ch

l1825_3459:
	jmp	34EEh

l1825_345C:
	cmp	word ptr [09A6h],0h
	jz	3466h

l1825_3463:
	jmp	34EEh

l1825_3466:
	mov	word ptr [0980h],1h
	mov	word ptr [0982h],0h
	mov	word ptr [0984h],0h
	mov	word ptr [0986h],0h
	mov	word ptr [0988h],0h
	mov	word ptr [098Ch],1h
	mov	word ptr [098Eh],1h
	mov	word ptr [0990h],0h
	mov	word ptr [0992h],1h
	mov	word ptr [0994h],0h
	mov	word ptr [099Ah],3h
	mov	ax,[bp-4h]
	dec	ax
	mov	[099Ch],ax
	mov	ax,[099Ah]
	mov	[0998h],ax
	mov	word ptr [0996h],5h
	mov	word ptr [099Eh],11h
	mov	word ptr [09ECh],2h
	mov	ax,[bp-2h]
	inc	ax
	mov	[09EEh],ax
	mov	ax,[bp-4h]
	mov	[09F0h],ax
	mov	ax,[bp-2h]
	add	ax,3Dh
	mov	[09F2h],ax
	mov	word ptr [09F4h],0h
	sub	ax,ax
	mov	[09F8h],ax
	mov	[09F6h],ax
	mov	[0A26h],ax

l1825_34EE:
	cmp	word ptr [09A6h],0h
	jnz	3556h

l1825_34F5:
	cmp	word ptr [0982h],0h
	jnz	3556h

l1825_34FC:
	mov	word ptr [09A4h],1h
	mov	word ptr [09A6h],0h
	mov	word ptr [09A8h],0h
	mov	word ptr [09AAh],0h
	mov	word ptr [09ACh],0h
	mov	word ptr [09B0h],0h
	mov	word ptr [09B2h],0h
	mov	word ptr [09B4h],0h
	mov	word ptr [09B6h],0h
	mov	word ptr [09B8h],0h
	mov	word ptr [09BEh],0h
	mov	word ptr [09C0h],0h
	mov	word ptr [09BCh],0h
	mov	word ptr [09BAh],0h
	mov	word ptr [09C2h],10h

l1825_3556:
	mov	word ptr [098Ah],1h
	mov	word ptr [09AEh],1h
	mov	word ptr [0A24h],0h
	mov	word ptr [0990h],0h
	mov	word ptr [bp-8h],1h

l1825_3573:
	mov	bx,[bp-8h]
	shl	bx,1h
	shl	bx,1h
	les	si,[130Ah]
	mov	ax,es:[bx+si]
	or	ax,es:[bx+si+2h]
	jz	358Bh

l1825_3587:
	inc	word ptr [0990h]

l1825_358B:
	inc	word ptr [bp-8h]
	cmp	word ptr [bp-8h],100h
	jc	3573h

l1825_3595:
	sub	ax,ax
	push	ax
	call	far 1F38h:0527h
	add	sp,2h
	mov	ax,9ECh
	push	ds
	push	ax
	push	cs
	call	4CFEh
	add	sp,4h
	mov	ax,0A5Eh
	push	ds
	push	ax
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	push	word ptr [bp-0Ch]
	push	word ptr [bp-6h]
	call	far 1F38h:05DBh
	add	sp,0Ch
	mov	ax,0A2Ch
	push	ds
	push	ax
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	push	word ptr [bp-0Ch]
	push	word ptr [bp-6h]
	call	far 1F38h:05DBh
	add	sp,0Ch
	mov	si,[bp-4h]
	inc	si
	mov	di,[bp-4h]
	add	di,3h
	mov	ax,[bp-0Ch]
	add	ax,4Ah
	mov	[bp-0Eh],ax
	mov	ax,0A5Eh
	push	ds
	push	ax
	push	word ptr [bp-0Eh]
	push	di
	push	word ptr [bp-0Ch]
	push	si
	call	far 1F38h:05DBh
	add	sp,0Ch
	mov	ax,0A2Ch
	push	ds
	push	ax
	push	word ptr [bp-0Eh]
	push	di
	push	word ptr [bp-0Ch]
	push	si
	call	far 1F38h:05DBh
	add	sp,0Ch
	mov	ax,0A24h
	push	ds
	push	ax
	push	word ptr [bp-0Ch]
	push	word ptr [bp-4h]
	push	cs
	call	3BCEh
	add	sp,8h
	cmp	word ptr [0990h],1h
	sbb	ax,ax
	neg	ax
	jmp	36CEh
1825:3639                            90                            .      

l1825_363A:
	cmp	word ptr [0A24h],0h
	jnz	3668h

l1825_3641:
	mov	ax,0A24h
	push	ds
	push	ax
	mov	ax,9ECh
	push	ds
	push	ax
	mov	ax,9A4h
	push	ds
	push	ax
	mov	ax,980h
	push	ds
	push	ax
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	push	word ptr [bp-0Ch]
	push	word ptr [bp-6h]
	push	cs
	call	3766h
	add	sp,18h

l1825_3668:
	cmp	word ptr [098Ah],6h
	jz	367Dh

l1825_366F:
	cmp	word ptr [098Ah],8h
	jz	367Dh

l1825_3676:
	cmp	word ptr [09A6h],0h
	jz	36A8h

l1825_367D:
	mov	ax,0A24h
	push	ds
	push	ax
	mov	ax,9ECh
	push	ds
	push	ax
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	push	word ptr [bp-0Ch]
	push	word ptr [bp-6h]
	mov	ax,1h
	push	ax
	mov	ax,9A4h
	push	ds
	push	ax
	mov	ax,980h
	push	ds
	push	ax
	push	cs
	call	3CDCh
	add	sp,1Ah

l1825_36A8:
	cmp	word ptr [0984h],0h
	jnz	36C6h

l1825_36AF:
	cmp	word ptr [09A8h],0h
	jnz	36C6h

l1825_36B6:
	cmp	word ptr [098Ah],0BB8h
	jz	36C6h

l1825_36BE:
	cmp	word ptr [09AEh],0BB8h
	jnz	36CCh

l1825_36C6:
	mov	ax,1h
	jmp	36CEh
1825:36CB                                  90                        .    

l1825_36CC:
	sub	ax,ax

l1825_36CE:
	mov	[bp-0Ah],ax
	or	ax,ax
	jnz	36D8h

l1825_36D5:
	jmp	363Ah

l1825_36D8:
	cmp	word ptr [0990h],0h
	jnz	371Bh

l1825_36DF:
	call	far 1F38h:07FAh
	mov	ax,[bp-0Ch]
	add	ax,2h
	push	ax
	push	word ptr [bp-4h]
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,9h
	push	ax
	mov	ax,57C8h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	sub	ax,ax
	push	ax
	mov	ax,980h
	push	ds
	push	ax
	push	cs
	call	67EEh
	add	sp,6h
	call	far 1F38h:07E7h

l1825_371B:
	cmp	word ptr [0984h],0h
	jnz	3729h

l1825_3722:
	cmp	word ptr [09A8h],0h
	jz	3735h

l1825_3729:
	mov	word ptr [0982h],0h
	mov	word ptr [09A6h],0h

l1825_3735:
	cmp	word ptr [0F02h],0h
	jz	3750h

l1825_373C:
	push	word ptr [09F4h]
	push	word ptr [09F8h]
	push	word ptr [09F6h]
	call	far 21DCh:09B4h
	add	sp,6h

l1825_3750:
	mov	ax,1h
	push	ax
	call	far 1F38h:0527h
	add	sp,2h
	mov	ax,1h
	pop	si
	pop	di
	mov	sp,bp
	pop	bp
	retf
1825:3765                90                                    .          

;; fn1825_3766: 1825:3766
;;   Called from:
;;     1825:3661 (in fn1825_3436)
fn1825_3766 proc
	push	bp
	mov	bp,sp
	sub	sp,0Ah
	mov	word ptr [bp-8h],0h

l1825_3771:
	les	bx,[bp+12h]
	cmp	word ptr es:[bx+2h],0h
	jz	377Eh

l1825_377B:
	jmp	3986h

l1825_377E:
	les	bx,[bp+0Eh]
	cmp	word ptr es:[bx],0h
	jnz	378Eh

l1825_3787:
	cmp	word ptr es:[bx+2h],0h
	jz	37A3h

l1825_378E:
	push	es
	push	bx
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	39DEh
	add	sp,0Ch

l1825_37A3:
	push	word ptr [bp+1Ch]
	push	word ptr [bp+1Ah]
	push	word ptr [bp+18h]
	push	word ptr [bp+16h]
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	sub	ax,ax
	push	ax
	push	word ptr [bp+14h]
	push	word ptr [bp+12h]
	push	word ptr [bp+10h]
	push	word ptr [bp+0Eh]
	push	cs
	call	3CDCh
	add	sp,1Ah
	les	bx,[bp+0Eh]
	push	word ptr es:[bx+0Ch]
	push	cs
	call	3AF8h
	add	sp,2h
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	mov	ax,0Ch
	push	ax
	mov	ax,20h
	push	ax
	mov	ax,0BE8h
	push	ds
	push	ax
	call	far 2017h:0228h
	add	sp,8h
	les	bx,[bp-4h]
	les	bx,es:[bx+3Eh]
	push	word ptr es:[bx+0Ch]
	push	word ptr es:[bx+0Ah]
	call	far 2017h:03F5h
	add	sp,4h
	mov	[bp-0Ah],ax
	inc	ax
	push	ax
	les	bx,[bp-4h]
	les	bx,es:[bx+3Eh]
	push	word ptr es:[bx+0Ch]
	push	word ptr es:[bx+0Ah]
	mov	ax,0BE9h
	push	ds
	push	ax
	call	far 2017h:02ECh
	add	sp,0Ah
	call	far 1F38h:07FAh
	les	bx,[bp+0Eh]
	push	word ptr es:[bx+16h]
	push	word ptr es:[bx+18h]
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,0Ch
	push	ax
	mov	ax,0BE8h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	call	far 1F38h:07E7h
	les	bx,[bp+0Eh]
	mov	ax,es:[bx+18h]
	mov	[bp-6h],ax
	mov	word ptr es:[bx+2h],0h
	les	bx,[bp+12h]
	mov	word ptr es:[bx],1h
	sub	ax,ax
	push	ax
	push	word ptr [bp+10h]
	push	word ptr [bp+0Eh]
	push	cs
	call	67EEh
	add	sp,6h
	les	bx,[bp+0Eh]
	push	word ptr es:[bx+16h]
	push	word ptr [bp-6h]
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,0Ch
	push	ax
	mov	ax,0BE8h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	les	bx,[bp+0Eh]
	cmp	word ptr es:[bx+0Ah],6h
	jz	38BCh

l1825_38B5:
	cmp	word ptr es:[bx+0Ah],8h
	jnz	38DDh

l1825_38BC:
	push	word ptr es:[bx+16h]
	push	word ptr es:[bx+18h]
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,1h
	push	ax
	mov	ax,57D2h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h

l1825_38DD:
	les	bx,[bp+0Eh]
	cmp	word ptr es:[bx+4h],0h
	jnz	38FDh

l1825_38E7:
	cmp	word ptr es:[bx+0Ah],0BB8h
	jz	38FDh

l1825_38EF:
	cmp	word ptr es:[bx+0Ah],6h
	jz	38FDh

l1825_38F6:
	cmp	word ptr es:[bx+0Ah],8h
	jnz	3902h

l1825_38FD:
	mov	ax,1h
	jmp	3904h

l1825_3902:
	sub	ax,ax

l1825_3904:
	mov	[bp-8h],ax
	or	ax,ax
	jnz	3915h

l1825_390B:
	les	bx,[bp+0Eh]
	cmp	word ptr es:[bx+0Ah],0Fh
	jz	3949h

l1825_3915:
	les	bx,[bp+0Eh]
	cmp	word ptr es:[bx+0Ah],10h
	jz	3949h

l1825_391F:
	cmp	word ptr es:[bx+0Ah],9h
	jz	3949h

l1825_3926:
	cmp	word ptr es:[bx+0Ah],0Ah
	jz	3949h

l1825_392D:
	cmp	word ptr es:[bx+0Ah],20h
	jz	3949h

l1825_3934:
	cmp	word ptr es:[bx+0Ah],21h
	jz	3949h

l1825_393B:
	cmp	word ptr es:[bx+0Ah],22h
	jz	3949h

l1825_3942:
	cmp	word ptr es:[bx+0Ah],23h
	jnz	39C8h

l1825_3949:
	les	bx,[bp+12h]
	mov	word ptr es:[bx],1h
	mov	word ptr es:[bx+6h],0h
	mov	word ptr es:[bx+8h],0h
	mov	word ptr es:[bx+0Ch],0h
	mov	word ptr es:[bx+0Eh],0h
	mov	word ptr es:[bx+10h],0h
	mov	word ptr es:[bx+12h],0h
	mov	word ptr es:[bx+14h],0h
	mov	ax,es:[bx+1Ah]
	mov	es:[bx+18h],ax
	jmp	39C8h
1825:3985                90                                    .          

l1825_3986:
	push	word ptr [bp+10h]
	push	word ptr [bp+0Eh]
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	39DEh
	add	sp,0Ch
	les	bx,[bp+0Eh]
	push	word ptr es:[bx+16h]
	push	word ptr es:[bx+18h]
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,1h
	push	ax
	mov	ax,57D4h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	mov	word ptr [bp-8h],1h

l1825_39C8:
	cmp	word ptr [bp-8h],0h
	jnz	39D1h

l1825_39CE:
	jmp	3771h

l1825_39D1:
	les	bx,[bp+0Eh]
	mov	word ptr es:[bx],1h
	mov	sp,bp
	pop	bp
	retf
1825:39DD                                        90                    .  

;; fn1825_39DE: 1825:39DE
;;   Called from:
;;     1825:379C (in fn1825_3766)
;;     1825:3998 (in fn1825_3766)
fn1825_39DE proc
	push	bp
	mov	bp,sp
	sub	sp,8h
	mov	ax,0A5Eh
	push	ds
	push	ax
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 1F38h:05DBh
	add	sp,0Ch
	mov	ax,0A36h
	push	ds
	push	ax
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 1F38h:05DBh
	add	sp,0Ch
	les	bx,[bp+0Eh]
	mov	ax,es:[bx+12h]
	mov	[bp-8h],ax
	mov	ax,es:[bx+1Ah]
	mov	[bp-6h],ax
	mov	word ptr es:[bx+14h],0h
	jmp	3A99h
1825:3A2F                                              90                .

l1825_3A30:
	mov	ax,[bp-6h]
	cmp	es:[bx+1Ch],ax
	jc	3AA2h

l1825_3A39:
	push	word ptr [bp-8h]
	push	cs
	call	3AF8h
	add	sp,2h
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	les	bx,[bp+0Eh]
	mov	ax,es:[bx+16h]
	inc	ax
	push	ax
	push	word ptr [bp-6h]
	call	far 1F38h:04E7h
	add	sp,4h
	les	bx,[bp-4h]
	les	bx,es:[bx+3Eh]
	push	word ptr es:[bx+0Ch]
	push	word ptr es:[bx+0Ah]
	call	far 2017h:03F5h
	add	sp,4h
	push	ax
	les	bx,[bp-4h]
	les	bx,es:[bx+3Eh]
	push	word ptr es:[bx+0Ch]
	push	word ptr es:[bx+0Ah]
	call	far 1F38h:049Fh
	add	sp,6h
	inc	word ptr [bp-8h]
	inc	word ptr [bp-6h]
	les	bx,[bp+0Eh]
	inc	word ptr es:[bx+14h]

l1825_3A99:
	mov	ax,[bp-8h]
	cmp	es:[bx+10h],ax
	jnc	3A30h

l1825_3AA2:
	mov	ax,es:[bx+0Eh]
	cmp	es:[bx+12h],ax
	jbe	3AB2h

l1825_3AAC:
	mov	ax,1h
	jmp	3AB4h
1825:3AB1    90                                            .              

l1825_3AB2:
	sub	ax,ax

l1825_3AB4:
	mov	es:[bx+6h],ax
	mov	ax,[bp-6h]
	cmp	es:[bx+1Ch],ax
	jnc	3AD0h

l1825_3AC1:
	mov	ax,[bp-8h]
	cmp	es:[bx+10h],ax
	jc	3AD0h

l1825_3ACA:
	mov	ax,1h
	jmp	3AD2h
1825:3ACF                                              90                .

l1825_3AD0:
	sub	ax,ax

l1825_3AD2:
	mov	es:[bx+8h],ax
	push	es
	push	bx
	mov	ax,0Dh
	push	ax
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	675Eh
	les	bx,[bp+0Eh]
	mov	word ptr es:[bx],0h
	mov	sp,bp
	pop	bp
	retf

;; fn1825_3AF8: 1825:3AF8
;;   Called from:
;;     1825:37D8 (in fn1825_3766)
;;     1825:3A3C (in fn1825_39DE)
;;     1825:3CE9 (in fn1825_3CDC)
fn1825_3AF8 proc
	push	bp
	mov	bp,sp
	sub	sp,8h
	push	si
	mov	word ptr [bp-8h],1h
	mov	word ptr [bp-6h],0h
	sub	ax,ax
	mov	[bp-2h],ax
	mov	[bp-4h],ax
	jmp	3B35h
1825:3B13          90                                        .            

l1825_3B14:
	cmp	word ptr [bp-8h],100h
	jnc	3B3Dh

l1825_3B1B:
	mov	bx,[bp-8h]
	shl	bx,1h
	shl	bx,1h
	les	si,[130Ah]
	mov	ax,es:[bx+si]
	or	ax,es:[bx+si+2h]
	jz	3B32h

l1825_3B2F:
	inc	word ptr [bp-6h]

l1825_3B32:
	inc	word ptr [bp-8h]

l1825_3B35:
	mov	ax,[bp+6h]
	cmp	[bp-6h],ax
	jc	3B14h

l1825_3B3D:
	mov	ax,[bp+6h]
	cmp	[bp-6h],ax
	jnz	3B5Eh

l1825_3B45:
	mov	si,[bp-8h]
	shl	si,1h
	shl	si,1h
	les	bx,[130Ah]
	mov	ax,es:[bx+si-4h]
	mov	dx,es:[bx+si-2h]
	mov	[bp-4h],ax
	mov	[bp-2h],dx

l1825_3B5E:
	mov	ax,[bp-4h]
	mov	dx,[bp-2h]
	pop	si
	mov	sp,bp
	pop	bp
	retf
1825:3B69                            90                            .      

;; fn1825_3B6A: 1825:3B6A
;;   Called from:
;;     1825:3F69 (in fn1825_3EE6)
fn1825_3B6A proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	push	si
	mov	word ptr [bp-2h],1h
	mov	word ptr [bp-4h],0h

l1825_3B7B:
	mov	bx,[bp-2h]
	shl	bx,1h
	shl	bx,1h
	les	si,[130Ah]
	mov	ax,[bp+6h]
	mov	dx,[bp+8h]
	cmp	es:[bx+si],ax
	jnz	3B97h

l1825_3B91:
	cmp	es:[bx+si+2h],dx
	jz	3BA4h

l1825_3B97:
	cmp	word ptr [bp-2h],100h
	jnc	3BA4h

l1825_3B9E:
	inc	word ptr [bp-2h]
	jmp	3B7Bh
1825:3BA3          90                                        .            

l1825_3BA4:
	mov	bx,[bp-2h]
	shl	bx,1h
	shl	bx,1h
	les	si,[130Ah]
	mov	ax,[bp+6h]
	mov	dx,[bp+8h]
	cmp	es:[bx+si],ax
	jnz	3BC6h

l1825_3BBA:
	cmp	es:[bx+si+2h],dx
	jnz	3BC6h

l1825_3BC0:
	mov	ax,[bp-2h]
	mov	[bp-4h],ax

l1825_3BC6:
	mov	ax,[bp-4h]
	pop	si
	mov	sp,bp
	pop	bp
	retf

;; fn1825_3BCE: 1825:3BCE
;;   Called from:
;;     1825:3626 (in fn1825_3436)
;;     1825:3D01 (in fn1825_3CDC)
fn1825_3BCE proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	mov	ax,[bp+6h]
	add	ax,2h
	mov	[bp-2h],ax
	mov	ax,[bp+8h]
	add	ax,2h
	mov	[bp-4h],ax
	mov	ax,57D6h
	push	ds
	push	ax
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 2017h:01BAh
	add	sp,8h
	push	word ptr [bp-4h]
	push	word ptr [bp-2h]
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 2017h:03F5h
	add	sp,4h
	push	ax
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	les	bx,[bp+0Ah]
	mov	ax,es:[bx+2h]
	or	ax,ax
	jz	3C3Eh

l1825_3C2C:
	cmp	ax,1h
	jz	3C64h

l1825_3C31:
	cmp	ax,2h
	jz	3C7Eh

l1825_3C36:
	cmp	ax,3h
	jz	3C98h

l1825_3C3B:
	jmp	3CB2h
1825:3C3D                                        90                    .  

l1825_3C3E:
	mov	ax,5820h
	push	ds
	push	ax
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 2017h:01BAh
	add	sp,8h
	mov	ax,[bp-4h]
	add	ax,8h

l1825_3C56:
	push	ax
	push	word ptr [bp-2h]
	call	far 1F38h:04E7h
	add	sp,4h
	jmp	3CB2h

l1825_3C64:
	mov	ax,582Ah
	push	ds
	push	ax
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 2017h:01BAh
	add	sp,8h
	mov	ax,[bp-4h]
	add	ax,1Ah
	jmp	3C56h

l1825_3C7E:
	mov	ax,5834h
	push	ds
	push	ax
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 2017h:01BAh
	add	sp,8h
	mov	ax,[bp-4h]
	add	ax,2Dh
	jmp	3C56h

l1825_3C98:
	mov	ax,583Ch
	push	ds
	push	ax
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 2017h:01BAh
	add	sp,8h
	mov	ax,[bp-4h]
	add	ax,3Eh
	jmp	3C56h

l1825_3CB2:
	call	far 1F38h:07FAh
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 2017h:03F5h
	add	sp,4h
	push	ax
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	call	far 1F38h:07E7h
	mov	sp,bp
	pop	bp
	retf
1825:3CDB                                  90                        .    

;; fn1825_3CDC: 1825:3CDC
;;   Called from:
;;     1825:36A1 (in fn1825_3436)
;;     1825:37CA (in fn1825_3766)
fn1825_3CDC proc
	push	bp
	mov	bp,sp
	sub	sp,0Ch
	les	bx,[bp+6h]
	push	word ptr es:[bx+0Ch]
	push	cs
	call	3AF8h
	add	sp,2h
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	mov	ax,0A24h
	push	ds
	push	ax
	push	word ptr [bp+12h]
	push	word ptr [bp+14h]
	push	cs
	call	3BCEh
	add	sp,8h
	push	word ptr [bp+1Ah]
	push	word ptr [bp+18h]
	push	cs
	call	4D78h
	add	sp,4h
	les	bx,[bp+1Ch]
	mov	word ptr es:[bx],0h
	mov	ax,es:[bx+2h]
	or	ax,ax
	jz	3D3Ch

l1825_3D25:
	cmp	ax,1h
	jz	3D76h

l1825_3D2A:
	cmp	ax,2h
	jz	3DACh

l1825_3D2F:
	cmp	ax,3h
	jnz	3D37h

l1825_3D34:
	jmp	3DE2h

l1825_3D37:
	mov	sp,bp
	pop	bp
	retf
1825:3D3B                                  90                        .    

l1825_3D3C:
	mov	ax,[bp+10h]
	mov	[bp-0Ch],ax
	mov	ax,[bp+16h]
	inc	ax
	mov	[bp-6h],ax
	mov	ax,[bp+10h]
	add	ax,12h
	mov	[bp-0Ah],ax
	mov	ax,[bp-6h]
	add	ax,3Ch
	mov	[bp-8h],ax
	push	ax
	push	word ptr [bp-0Ah]
	push	word ptr [bp-6h]
	push	word ptr [bp-0Ch]
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	push	cs
	call	3EE6h

l1825_3D6F:
	add	sp,0Ch
	mov	sp,bp
	pop	bp
	retf

l1825_3D76:
	mov	ax,[bp+10h]
	mov	[bp-0Ch],ax
	mov	ax,[bp+16h]
	inc	ax
	mov	[bp-6h],ax
	mov	ax,[bp+10h]
	add	ax,0Ah
	mov	[bp-0Ah],ax
	mov	ax,[bp-6h]
	add	ax,3Ch
	mov	[bp-8h],ax
	push	ax
	push	word ptr [bp-0Ah]
	push	word ptr [bp-6h]
	push	word ptr [bp-0Ch]
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	push	cs
	call	45B2h
	jmp	3D6Fh
1825:3DAB                                  90                        .    

l1825_3DAC:
	mov	ax,[bp+10h]
	mov	[bp-0Ch],ax
	mov	ax,[bp+16h]
	inc	ax
	mov	[bp-6h],ax
	mov	ax,[bp+10h]
	add	ax,11h
	mov	[bp-0Ah],ax
	mov	ax,[bp-6h]
	add	ax,3Ch
	mov	[bp-8h],ax
	push	ax
	push	word ptr [bp-0Ah]
	push	word ptr [bp-6h]
	push	word ptr [bp-0Ch]
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	push	cs
	call	4770h
	jmp	3D6Fh
1825:3DE1    90                                            .              

l1825_3DE2:
	mov	ax,[bp+10h]
	mov	[bp-0Ch],ax
	mov	ax,[bp+16h]
	inc	ax
	mov	[bp-6h],ax
	mov	ax,[bp+10h]
	add	ax,12h
	mov	[bp-0Ah],ax
	mov	ax,[bp-6h]
	add	ax,26h
	mov	[bp-8h],ax
	les	bx,[bp+0Ah]
	mov	ax,[bp-0Ch]
	add	ax,2h
	mov	es:[bx+1Ah],ax
	mov	ax,[bp-0Ah]
	dec	ax
	mov	es:[bx+1Ch],ax
	mov	ax,es:[bx+1Ah]
	mov	es:[bx+18h],ax
	mov	ax,[bp-6h]
	add	ax,2h
	mov	es:[bx+16h],ax
	mov	word ptr es:[bx+1Eh],10h
	cmp	word ptr [bp+0Eh],1h
	jnz	3E69h

l1825_3E34:
	mov	ax,0A2Ch
	push	ds
	push	ax
	push	word ptr [bp+16h]
	push	word ptr [bp+14h]
	push	word ptr [bp+12h]
	push	word ptr [bp+10h]
	call	far 1F38h:05DBh
	add	sp,0Ch
	mov	ax,980h
	push	ds
	push	ax
	mov	ax,0Dh
	push	ax
	push	word ptr [bp+16h]
	push	word ptr [bp+14h]
	push	word ptr [bp+12h]
	push	word ptr [bp+10h]
	push	cs
	call	675Eh
	add	sp,0Eh

l1825_3E69:
	les	bx,[bp+0Ah]
	mov	word ptr es:[bx],1h
	push	word ptr [bp+1Eh]
	push	word ptr [bp+1Ch]
	push	word ptr [bp-8h]
	push	word ptr [bp-0Ah]
	push	word ptr [bp-6h]
	push	word ptr [bp-0Ch]
	push	word ptr [bp+0Eh]
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	push	es
	push	bx
	push	cs
	call	4A02h
	add	sp,16h
	cmp	word ptr [bp+0Eh],1h
	jnz	3EE2h

l1825_3E9B:
	mov	ax,0A36h
	push	ds
	push	ax
	push	word ptr [bp+16h]
	push	word ptr [bp+14h]
	push	word ptr [bp+12h]
	push	word ptr [bp+10h]
	call	far 1F38h:05DBh
	add	sp,0Ch
	mov	ax,980h
	push	ds
	push	ax
	mov	ax,0Dh
	push	ax
	push	word ptr [bp+16h]
	push	word ptr [bp+14h]
	push	word ptr [bp+12h]
	push	word ptr [bp+10h]
	push	cs
	call	675Eh
	add	sp,0Eh
	les	bx,[bp+0Ah]
	cmp	word ptr es:[bx+0Ah],7h
	jnz	3EE2h

l1825_3EDA:
	les	bx,[bp+6h]
	mov	word ptr es:[bx],1h

l1825_3EE2:
	mov	sp,bp
	pop	bp
	retf

;; fn1825_3EE6: 1825:3EE6
;;   Called from:
;;     1825:3D6B (in fn1825_3CDC)
fn1825_3EE6 proc
	push	bp
	mov	bp,sp
	sub	sp,6h
	mov	ax,[bp+0Ah]
	inc	ax
	mov	[bp-2h],ax
	mov	ax,[bp+0Ch]
	add	ax,2h
	mov	[bp-4h],ax
	mov	ax,0A5Eh
	push	ds
	push	ax
	push	word ptr [bp+10h]
	push	word ptr [bp+0Eh]
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	call	far 1F38h:05DBh
	add	sp,0Ch
	mov	ax,0A2Ch
	push	ds
	push	ax
	push	word ptr [bp+10h]
	push	word ptr [bp+0Eh]
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	call	far 1F38h:05DBh
	add	sp,0Ch
	push	word ptr [bp-4h]
	push	word ptr [bp-2h]
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,9h
	push	ax
	mov	ax,5846h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	mov	ax,[bp-4h]
	add	ax,0Bh
	push	ax
	push	word ptr [bp-2h]
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,3h
	push	ax
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	3B6Ah
	add	sp,4h
	push	ax
	push	cs
	call	63F8h
	add	sp,4h
	les	bx,[bp+6h]
	les	bx,es:[bx+3Eh]
	mov	ax,[12FCh]
	cmp	es:[bx+8h],ax
	jnz	3F8Eh

l1825_3F88:
	mov	ax,5850h
	jmp	3F91h
1825:3F8D                                        90                    .  

l1825_3F8E:
	mov	ax,585Ah

l1825_3F91:
	push	ds
	push	ax
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 2017h:01BAh
	add	sp,8h
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 2017h:03F5h
	add	sp,4h
	mov	[bp-6h],ax
	mov	ax,[bp-4h]
	add	ax,12h
	push	ax
	push	word ptr [bp-2h]
	call	far 1F38h:04E7h
	add	sp,4h
	push	word ptr [bp-6h]
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	call	far 1F38h:0517h
	sub	ah,ah
	add	ax,4h
	push	ax
	push	word ptr [bp-2h]
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,0Bh
	push	ax
	mov	ax,5866h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	call	far 1F38h:0517h
	sub	ah,ah
	add	ax,2h
	push	ax
	push	word ptr [bp-2h]
	call	far 1F38h:04E7h
	add	sp,4h
	mov	word ptr [bp-6h],2h
	les	bx,[bp+6h]
	cmp	byte ptr es:[bx+2h],0Ah
	jnc	4034h

l1825_401E:
	mov	ax,1h
	push	ax
	mov	ax,5872h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	mov	word ptr [bp-6h],1h

l1825_4034:
	push	word ptr [bp-6h]
	les	bx,[bp+6h]
	mov	al,es:[bx+2h]
	sub	ah,ah
	push	ax
	push	cs
	call	63F8h
	add	sp,4h
	mov	ax,1h
	push	ax
	mov	ax,5874h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	mov	word ptr [bp-6h],2h
	les	bx,[bp+6h]
	cmp	byte ptr es:[bx+3h],0Ah
	jnc	407Eh

l1825_4068:
	mov	ax,1h
	push	ax
	mov	ax,5876h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	mov	word ptr [bp-6h],1h

l1825_407E:
	push	word ptr [bp-6h]
	les	bx,[bp+6h]
	mov	al,es:[bx+3h]
	sub	ah,ah
	push	ax
	push	cs
	call	63F8h
	add	sp,4h
	mov	ax,1h
	push	ax
	mov	ax,5878h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	mov	ax,4h
	push	ax
	les	bx,[bp+6h]
	mov	al,es:[bx+1h]
	sub	ah,ah
	add	ax,76Ch
	push	ax
	push	cs
	call	63F8h
	add	sp,4h
	inc	word ptr [bp-2h]
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+3Ah],0h
	jz	40CEh

l1825_40C8:
	mov	ax,587Ah
	jmp	40D1h
1825:40CD                                        90                    .  

l1825_40CE:
	mov	ax,5882h

l1825_40D1:
	push	ds
	push	ax
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 2017h:01BAh
	add	sp,8h
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 2017h:03F5h
	add	sp,4h
	mov	[bp-6h],ax
	push	word ptr [bp-4h]
	push	word ptr [bp-2h]
	call	far 1F38h:04E7h
	add	sp,4h
	push	word ptr [bp-6h]
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+4Eh],0h
	jz	411Eh

l1825_4118:
	mov	ax,588Ch
	jmp	4121h
1825:411D                                        90                    .  

l1825_411E:
	mov	ax,5898h

l1825_4121:
	push	ds
	push	ax
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 2017h:01BAh
	add	sp,8h
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 2017h:03F5h
	add	sp,4h
	mov	[bp-6h],ax
	call	far 1F38h:0517h
	sub	ah,ah
	add	ax,4h
	push	ax
	push	word ptr [bp-2h]
	call	far 1F38h:04E7h
	add	sp,4h
	push	word ptr [bp-6h]
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	inc	word ptr [bp-2h]
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+0B0h],0h
	jz	417Ah

l1825_4174:
	mov	ax,58A6h
	jmp	417Dh
1825:4179                            90                            .      

l1825_417A:
	mov	ax,58B2h

l1825_417D:
	push	ds
	push	ax
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 2017h:01BAh
	add	sp,8h
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 2017h:03F5h
	add	sp,4h
	mov	[bp-6h],ax
	push	word ptr [bp-4h]
	push	word ptr [bp-2h]
	call	far 1F38h:04E7h
	add	sp,4h
	push	word ptr [bp-6h]
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	inc	word ptr [bp-2h]
	mov	ax,58BCh
	push	ds
	push	ax
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 2017h:01BAh
	add	sp,8h
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 2017h:03F5h
	add	sp,4h
	mov	[bp-6h],ax
	push	word ptr [bp-4h]
	push	word ptr [bp-2h]
	call	far 1F38h:04E7h
	add	sp,4h
	push	word ptr [bp-6h]
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+0B0h],0h
	jz	4262h

l1825_4208:
	push	word ptr es:[bx+0B4h]
	push	word ptr es:[bx+0B2h]
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 2017h:01BAh
	add	sp,8h
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 2017h:03F5h
	add	sp,4h
	mov	[bp-6h],ax
	sub	ax,25h
	sbb	cx,cx
	and	ax,cx
	add	ax,25h
	mov	[bp-6h],ax
	call	far 1F38h:0517h
	sub	ah,ah
	add	ax,2h
	push	ax
	push	word ptr [bp-2h]
	call	far 1F38h:04E7h
	add	sp,4h
	push	word ptr [bp-6h]
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h

l1825_4262:
	add	word ptr [bp-2h],2h
	push	word ptr [bp-4h]
	push	word ptr [bp-2h]
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,1Eh
	push	ax
	mov	ax,58CEh
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	mov	byte ptr [0A68h],0h
	sub	ax,ax
	push	ax
	mov	ax,0Ah
	push	ax
	les	bx,[bp+6h]
	push	word ptr es:[bx+2Eh]
	push	word ptr es:[bx+2Ch]
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 3CEEh:0EFCh
	add	sp,0Ch
	mov	ax,[bp-4h]
	add	ax,0Eh
	push	ax
	push	word ptr [bp-2h]
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,0Ah
	push	ax
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	mov	ax,[bp-4h]
	add	ax,1Dh
	push	ax
	push	word ptr [bp-2h]
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,6h
	push	ax
	les	bx,[bp+6h]
	push	word ptr es:[bx+20h]
	push	cs
	call	63F8h
	add	sp,4h
	inc	word ptr [bp-2h]
	push	word ptr [bp-4h]
	push	word ptr [bp-2h]
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,0Dh
	push	ax
	mov	ax,58EEh
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	mov	byte ptr [0A68h],0h
	sub	ax,ax
	push	ax
	mov	ax,0Ah
	push	ax
	les	bx,[bp+6h]
	push	word ptr es:[bx+2Ah]
	push	word ptr es:[bx+28h]
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 3CEEh:0EFCh
	add	sp,0Ch
	mov	ax,[bp-4h]
	add	ax,0Fh
	push	ax
	push	word ptr [bp-2h]
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,0Ah
	push	ax
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	mov	byte ptr [0A68h],0h
	les	bx,[bp+6h]
	mov	ax,es:[bx+2Ch]
	or	ax,es:[bx+2Eh]
	jnz	4370h

l1825_436B:
	mov	ax,58FCh
	jmp	4386h

l1825_4370:
	cmp	word ptr es:[bx+4Ah],0h
	jz	437Ch

l1825_4377:
	mov	ax,5908h
	jmp	4386h

l1825_437C:
	cmp	word ptr es:[bx+48h],0h
	jz	4395h

l1825_4383:
	mov	ax,591Ah

l1825_4386:
	push	ds
	push	ax
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 2017h:01BAh
	add	sp,8h

l1825_4395:
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 2017h:03F5h
	add	sp,4h
	mov	[bp-6h],ax
	mov	ax,[bp-4h]
	add	ax,17h
	push	ax
	push	word ptr [bp-2h]
	call	far 1F38h:04E7h
	add	sp,4h
	push	word ptr [bp-6h]
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	inc	word ptr [bp-2h]
	mov	byte ptr [0A68h],0h
	les	bx,[bp+6h]
	mov	ax,es:[bx+50h]
	or	ax,es:[bx+52h]
	jz	43E2h

l1825_43DC:
	mov	ax,5926h
	jmp	43E5h
1825:43E1    90                                            .              

l1825_43E2:
	mov	ax,5934h

l1825_43E5:
	push	ds
	push	ax
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 2017h:01BAh
	add	sp,8h
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 2017h:03F5h
	add	sp,4h
	mov	[bp-6h],ax
	push	word ptr [bp-4h]
	push	word ptr [bp-2h]
	call	far 1F38h:04E7h
	add	sp,4h
	push	word ptr [bp-6h]
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	inc	word ptr [bp-2h]
	mov	byte ptr [0A68h],0h
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+46h],0h
	jz	443Ah

l1825_4434:
	mov	ax,5944h
	jmp	443Dh
1825:4439                            90                            .      

l1825_443A:
	mov	ax,594Ch

l1825_443D:
	push	ds
	push	ax
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 2017h:01BAh
	add	sp,8h
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 2017h:03F5h
	add	sp,4h
	mov	[bp-6h],ax
	push	word ptr [bp-4h]
	push	word ptr [bp-2h]
	call	far 1F38h:04E7h
	add	sp,4h
	push	word ptr [bp-6h]
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	add	word ptr [bp-2h],2h
	mov	byte ptr [0A68h],0h
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+0BAh],0h
	jz	4494h

l1825_448E:
	mov	ax,5956h
	jmp	4497h
1825:4493          90                                        .            

l1825_4494:
	mov	ax,5966h

l1825_4497:
	push	ds
	push	ax
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 2017h:01BAh
	add	sp,8h
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 2017h:03F5h
	add	sp,4h
	mov	[bp-6h],ax
	push	word ptr [bp-4h]
	push	word ptr [bp-2h]
	call	far 1F38h:04E7h
	add	sp,4h
	push	word ptr [bp-6h]
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	call	far 1F38h:0517h
	sub	ah,ah
	add	ax,2h
	push	ax
	push	word ptr [bp-2h]
	call	far 1F38h:04E7h
	add	sp,4h
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+0BAh],0h
	jz	4505h

l1825_44F5:
	mov	ax,1h
	push	ax
	push	word ptr es:[bx+0BAh]
	push	cs
	call	63F8h
	add	sp,4h

l1825_4505:
	inc	word ptr [bp-2h]
	mov	byte ptr [0A68h],0h
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+64h],0h
	jz	451Ch

l1825_4517:
	mov	ax,5978h
	jmp	451Fh

l1825_451C:
	mov	ax,5990h

l1825_451F:
	push	ds
	push	ax
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 2017h:01BAh
	add	sp,8h
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 2017h:03F5h
	add	sp,4h
	mov	[bp-6h],ax
	push	word ptr [bp-4h]
	push	word ptr [bp-2h]
	call	far 1F38h:04E7h
	add	sp,4h
	push	word ptr [bp-6h]
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+64h],0h
	jz	45AEh

l1825_4566:
	mov	ax,[bp-4h]
	add	ax,0Dh
	push	ax
	push	word ptr [bp-2h]
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,2h
	push	ax
	les	bx,[bp+6h]
	push	word ptr es:[bx+64h]
	push	cs
	call	63F8h
	add	sp,4h
	mov	ax,[bp-4h]
	add	ax,19h
	push	ax
	push	word ptr [bp-2h]
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,2h
	push	ax
	les	bx,[bp+6h]
	push	word ptr es:[bx+62h]
	push	cs
	call	63F8h
	add	sp,4h

l1825_45AE:
	mov	sp,bp
	pop	bp
	retf

;; fn1825_45B2: 1825:45B2
;;   Called from:
;;     1825:3DA5 (in fn1825_3CDC)
fn1825_45B2 proc
	push	bp
	mov	bp,sp
	sub	sp,6h
	mov	ax,0A5Eh
	push	ds
	push	ax
	push	word ptr [bp+10h]
	push	word ptr [bp+0Eh]
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	call	far 1F38h:05DBh
	add	sp,0Ch
	mov	ax,0A2Ch
	push	ds
	push	ax
	push	word ptr [bp+10h]
	push	word ptr [bp+0Eh]
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	call	far 1F38h:05DBh
	add	sp,0Ch
	mov	ax,[bp+0Ah]
	add	ax,2h
	mov	[bp-2h],ax
	mov	ax,[bp+0Ch]
	add	ax,2h
	mov	[bp-6h],ax
	push	ax
	mov	ax,[bp-2h]
	dec	ax
	push	ax
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,20h
	push	ax
	mov	ax,59A0h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	mov	word ptr [bp-4h],0h
	jmp	4646h

l1825_4622:
	push	word ptr [bp-6h]
	push	word ptr [bp-2h]
	call	far 1F38h:04E7h
	add	sp,4h
	push	word ptr [bp-4h]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	4658h
	add	sp,6h
	inc	word ptr [bp-4h]
	inc	word ptr [bp-2h]

l1825_4646:
	les	bx,[bp+6h]
	mov	ax,[bp-4h]
	cmp	es:[bx+0BAh],ax
	ja	4622h

l1825_4653:
	mov	sp,bp
	pop	bp
	retf
1825:4657                      90                                .        

;; fn1825_4658: 1825:4658
;;   Called from:
;;     1825:4639 (in fn1825_45B2)
fn1825_4658 proc
	push	bp
	mov	bp,sp
	sub	sp,8h
	push	si
	call	far 1F38h:0517h
	sub	ah,ah
	mov	[bp-2h],ax
	mov	ax,[bp+0Ah]
	mov	cx,ax
	shl	ax,1h
	shl	ax,1h
	add	ax,cx
	shl	ax,1h
	add	ax,[bp+6h]
	mov	dx,[bp+8h]
	mov	[bp-8h],ax
	mov	[bp-6h],dx
	les	bx,[bp-8h]
	mov	bx,es:[bx+0BEh]
	shl	bx,1h
	shl	bx,1h
	les	si,[130Ah]
	les	bx,es:[bx+si]
	les	bx,es:[bx+3Eh]
	push	word ptr es:[bx+0Ch]
	push	word ptr es:[bx+0Ah]
	call	far 2017h:03F5h
	add	sp,4h
	mov	[bp-4h],ax
	push	ax
	les	bx,[bp-8h]
	mov	bx,es:[bx+0BEh]
	shl	bx,1h
	shl	bx,1h
	les	si,[130Ah]
	les	bx,es:[bx+si]
	les	bx,es:[bx+3Eh]
	push	word ptr es:[bx+0Ch]
	push	word ptr es:[bx+0Ah]
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 2017h:02ECh
	add	sp,0Ah
	push	word ptr [bp-2h]
	call	far 1F38h:0517h
	mov	al,ah
	sub	ah,ah
	push	ax
	call	far 1F38h:04E7h
	add	sp,4h
	push	word ptr [bp-4h]
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	les	bx,[bp-8h]
	push	word ptr es:[bx+0C2h]
	push	word ptr es:[bx+0C0h]
	call	far 2017h:03F5h
	add	sp,4h
	mov	[bp-4h],ax
	push	ax
	les	bx,[bp-8h]
	push	word ptr es:[bx+0C2h]
	push	word ptr es:[bx+0C0h]
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 2017h:02ECh
	add	sp,0Ah
	mov	ax,[bp-4h]
	sub	ax,28h
	sbb	cx,cx
	and	ax,cx
	add	ax,28h
	mov	[bp-4h],ax
	mov	ax,[bp-2h]
	add	ax,0Dh
	push	ax
	call	far 1F38h:0517h
	mov	al,ah
	sub	ah,ah
	push	ax
	call	far 1F38h:04E7h
	add	sp,4h
	push	word ptr [bp-4h]
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	pop	si
	mov	sp,bp
	pop	bp
	retf
1825:476F                                              90                .

;; fn1825_4770: 1825:4770
;;   Called from:
;;     1825:3DDB (in fn1825_3CDC)
fn1825_4770 proc
	push	bp
	mov	bp,sp
	sub	sp,6h
	mov	ax,0A5Eh
	push	ds
	push	ax
	push	word ptr [bp+10h]
	push	word ptr [bp+0Eh]
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	call	far 1F38h:05DBh
	add	sp,0Ch
	mov	ax,0A2Ch
	push	ds
	push	ax
	push	word ptr [bp+10h]
	push	word ptr [bp+0Eh]
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	call	far 1F38h:05DBh
	add	sp,0Ch
	mov	ax,[bp+0Ah]
	add	ax,2h
	mov	[bp-2h],ax
	mov	ax,[bp+0Ch]
	add	ax,2h
	mov	[bp-6h],ax
	push	ax
	mov	ax,[bp-2h]
	dec	ax
	push	ax
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,16h
	push	ax
	mov	ax,59C2h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	mov	word ptr [bp-4h],1h
	jmp	4804h

l1825_47E0:
	push	word ptr [bp-6h]
	push	word ptr [bp-2h]
	call	far 1F38h:04E7h
	add	sp,4h
	push	word ptr [bp-4h]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	4814h
	add	sp,6h
	inc	word ptr [bp-4h]
	inc	word ptr [bp-2h]

l1825_4804:
	les	bx,[bp+6h]
	mov	ax,[bp-4h]
	cmp	es:[bx+64h],ax
	jnc	47E0h

l1825_4810:
	mov	sp,bp
	pop	bp
	retf

;; fn1825_4814: 1825:4814
;;   Called from:
;;     1825:47F7 (in fn1825_4770)
fn1825_4814 proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	call	far 1F38h:0517h
	sub	ah,ah
	mov	[bp-2h],ax
	add	ax,3h
	push	ax
	call	far 1F38h:0517h
	mov	al,ah
	sub	ah,ah
	push	ax
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,2h
	push	ax
	push	word ptr [bp+0Ah]
	push	cs
	call	63F8h
	add	sp,4h
	mov	ax,4h
	push	ax
	mov	ax,59DAh
	push	ds
	push	ax
	push	word ptr [14A0h]
	push	word ptr [149Eh]
	call	far 2017h:0335h
	add	sp,0Ah
	or	ax,ax
	jnz	4874h

l1825_4865:
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	496Ah
	jmp	4881h

l1825_4874:
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	48D2h

l1825_4881:
	add	sp,6h
	mov	ax,0A68h
	push	ds
	push	ax
	push	cs
	call	6168h
	add	sp,4h
	mov	[bp-4h],ax
	call	far 2368h:033Ch
	mov	ax,[bp-4h]
	sub	ax,37h
	sbb	cx,cx
	and	ax,cx
	add	ax,37h
	mov	[bp-4h],ax
	mov	ax,[bp-2h]
	add	ax,8h
	push	ax
	call	far 1F38h:0517h
	mov	al,ah
	sub	ah,ah
	push	ax
	call	far 1F38h:04E7h
	add	sp,4h
	push	word ptr [bp-4h]
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	mov	sp,bp
	pop	bp
	retf

;; fn1825_48D2: 1825:48D2
;;   Called from:
;;     1825:487D (in fn1825_4814)
fn1825_48D2 proc
	push	bp
	mov	bp,sp
	sub	sp,0Ah
	push	si
	mov	si,[bp+0Ah]
	shl	si,1h
	shl	si,1h
	les	bx,[bp+6h]
	mov	ax,es:[bx+si+66h]
	mov	dx,es:[bx+si+68h]
	mov	[bp-8h],ax
	mov	[bp-6h],dx
	sub	ax,ax
	push	ax
	push	ax
	les	bx,[bp-8h]
	push	word ptr es:[bx]
	call	far 2E37h:04CEh
	add	sp,6h
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	cmp	word ptr [1484h],0h
	jnz	4954h

l1825_4910:
	add	ax,18h
	push	dx
	push	ax
	call	far 2017h:03F5h
	add	sp,4h
	mov	[bp-0Ah],ax
	add	word ptr [1296h],10h
	push	ax
	mov	ax,[bp-4h]
	mov	dx,[bp-2h]
	add	ax,18h
	push	dx
	push	ax
	push	word ptr [bp-0Ah]
	push	word ptr [1298h]
	push	word ptr [1296h]
	call	far 2368h:00D4h
	add	sp,6h
	push	dx
	push	ax
	call	far 2017h:02ECh
	add	sp,0Ah
	pop	si
	mov	sp,bp
	pop	bp
	retf
1825:4953          90                                        .            

l1825_4954:
	sub	ax,ax
	push	ax
	push	ax
	mov	ax,59E0h
	push	ds
	push	ax
	call	far 2368h:0272h
	add	sp,8h
	pop	si
	mov	sp,bp
	pop	bp
	retf

;; fn1825_496A: 1825:496A
;;   Called from:
;;     1825:486E (in fn1825_4814)
fn1825_496A proc
	push	bp
	mov	bp,sp
	sub	sp,0Ah
	push	si
	mov	si,[bp+0Ah]
	shl	si,1h
	shl	si,1h
	les	bx,[bp+6h]
	mov	ax,es:[bx+si+66h]
	mov	dx,es:[bx+si+68h]
	mov	[bp-8h],ax
	mov	[bp-6h],dx
	sub	ax,ax
	push	ax
	push	ax
	les	bx,[bp-8h]
	push	word ptr es:[bx]
	call	far 2E37h:04CEh
	add	sp,6h
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	cmp	word ptr [1484h],0h
	jnz	49ECh

l1825_49A8:
	add	ax,16h
	push	dx
	push	ax
	call	far 2017h:03F5h
	add	sp,4h
	mov	[bp-0Ah],ax
	add	word ptr [1296h],10h
	push	ax
	mov	ax,[bp-4h]
	mov	dx,[bp-2h]
	add	ax,16h
	push	dx
	push	ax
	push	word ptr [bp-0Ah]
	push	word ptr [1298h]
	push	word ptr [1296h]
	call	far 2368h:00D4h
	add	sp,6h
	push	dx
	push	ax
	call	far 2017h:02ECh
	add	sp,0Ah
	pop	si
	mov	sp,bp
	pop	bp
	retf
1825:49EB                                  90                        .    

l1825_49EC:
	sub	ax,ax
	push	ax
	push	ax
	mov	ax,59E2h
	push	ds
	push	ax
	call	far 2368h:0272h
	add	sp,8h
	pop	si
	mov	sp,bp
	pop	bp
	retf

;; fn1825_4A02: 1825:4A02
;;   Called from:
;;     1825:3E8E (in fn1825_3CDC)
fn1825_4A02 proc
	push	bp
	mov	bp,sp
	sub	sp,2h
	les	bx,[bp+0Ah]
	mov	ax,es:[bx+0A6h]
	les	bx,[bp+6h]
	mov	es:[bx+10h],ax
	mov	word ptr [bp-2h],0h

l1825_4A1C:
	les	bx,[bp+6h]
	cmp	word ptr es:[bx],0h
	jnz	4A2Fh

l1825_4A25:
	cmp	word ptr es:[bx+2h],0h
	jnz	4A2Fh

l1825_4A2C:
	jmp	4AB7h

l1825_4A2F:
	mov	ax,0A5Eh
	push	ds
	push	ax
	push	word ptr [bp+16h]
	push	word ptr [bp+14h]
	push	word ptr [bp+12h]
	push	word ptr [bp+10h]
	call	far 1F38h:05DBh
	add	sp,0Ch
	cmp	word ptr [bp+0Eh],1h
	jnz	4A54h

l1825_4A4E:
	mov	ax,0A36h
	jmp	4A57h
1825:4A53          90                                        .            

l1825_4A54:
	mov	ax,0A2Ch

l1825_4A57:
	push	ds
	push	ax
	push	word ptr [bp+16h]
	push	word ptr [bp+14h]
	push	word ptr [bp+12h]
	push	word ptr [bp+10h]
	call	far 1F38h:05DBh
	add	sp,0Ch
	les	bx,[bp+6h]
	push	word ptr es:[bx+16h]
	mov	ax,[bp+10h]
	inc	ax
	push	ax
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,22h
	push	ax
	mov	ax,59E4h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+10h],0h
	jz	4AB7h

l1825_4A9C:
	push	es
	push	bx
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	push	word ptr [bp+16h]
	push	word ptr [bp+14h]
	push	word ptr [bp+12h]
	push	word ptr [bp+10h]
	push	cs
	call	4B48h
	add	sp,10h

l1825_4AB7:
	cmp	word ptr [bp+0Eh],1h
	jnz	4B02h

l1825_4ABD:
	les	bx,[bp+6h]
	mov	word ptr es:[bx+2h],0h
	mov	ax,1h
	push	ax
	push	es
	push	bx
	push	cs
	call	67EEh
	add	sp,6h
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+4h],0h
	jnz	4AF5h

l1825_4ADD:
	cmp	word ptr es:[bx+0Ah],0BB8h
	jz	4AF5h

l1825_4AE5:
	cmp	word ptr es:[bx+0Ah],7h
	jz	4AF5h

l1825_4AEC:
	les	bx,[bp+18h]
	cmp	word ptr es:[bx],0h
	jz	4AFAh

l1825_4AF5:
	mov	ax,1h
	jmp	4AFCh

l1825_4AFA:
	sub	ax,ax

l1825_4AFC:
	mov	[bp-2h],ax
	jmp	4B07h
1825:4B01    90                                            .              

l1825_4B02:
	mov	word ptr [bp-2h],1h

l1825_4B07:
	cmp	word ptr [bp-2h],0h
	jnz	4B10h

l1825_4B0D:
	jmp	4A1Ch

l1825_4B10:
	mov	ax,0A2Ch
	push	ds
	push	ax
	push	word ptr [bp+16h]
	push	word ptr [bp+14h]
	push	word ptr [bp+12h]
	push	word ptr [bp+10h]
	call	far 1F38h:05DBh
	add	sp,0Ch
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	mov	ax,26h
	push	ax
	push	word ptr [bp+16h]
	push	word ptr [bp+14h]
	push	word ptr [bp+12h]
	push	word ptr [bp+10h]
	push	cs
	call	675Eh
	mov	sp,bp
	pop	bp
	retf
1825:4B47                      90                                .        

;; fn1825_4B48: 1825:4B48
;;   Called from:
;;     1825:4AB0 (in fn1825_4A02)
fn1825_4B48 proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	les	bx,[bp+12h]
	mov	ax,es:[bx+12h]
	mov	[bp-4h],ax
	mov	ax,es:[bx+1Ah]
	mov	[bp-2h],ax
	mov	word ptr es:[bx+14h],0h
	jmp	4B9Bh
1825:4B67                      90                                .        

l1825_4B68:
	mov	ax,[bp-2h]
	cmp	es:[bx+1Ch],ax
	jc	4BA4h

l1825_4B71:
	push	word ptr es:[bx+16h]
	push	ax
	call	far 1F38h:04E7h
	add	sp,4h
	push	word ptr [bp-4h]
	push	word ptr [bp+10h]
	push	word ptr [bp+0Eh]
	push	cs
	call	4BFAh
	add	sp,6h
	inc	word ptr [bp-4h]
	inc	word ptr [bp-2h]
	les	bx,[bp+12h]
	inc	word ptr es:[bx+14h]

l1825_4B9B:
	mov	ax,[bp-4h]
	cmp	es:[bx+10h],ax
	ja	4B68h

l1825_4BA4:
	mov	ax,es:[bx+0Eh]
	cmp	es:[bx+12h],ax
	jbe	4BB4h

l1825_4BAE:
	mov	ax,1h
	jmp	4BB6h
1825:4BB3          90                                        .            

l1825_4BB4:
	sub	ax,ax

l1825_4BB6:
	mov	es:[bx+6h],ax
	mov	ax,[bp-2h]
	cmp	es:[bx+1Ch],ax
	jnc	4BD2h

l1825_4BC3:
	mov	ax,[bp-4h]
	cmp	es:[bx+10h],ax
	jc	4BD2h

l1825_4BCC:
	mov	ax,1h
	jmp	4BD4h
1825:4BD1    90                                            .              

l1825_4BD2:
	sub	ax,ax

l1825_4BD4:
	mov	es:[bx+8h],ax
	push	es
	push	bx
	mov	ax,26h
	push	ax
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	675Eh
	les	bx,[bp+12h]
	mov	word ptr es:[bx],0h
	mov	sp,bp
	pop	bp
	retf

;; fn1825_4BFA: 1825:4BFA
;;   Called from:
;;     1825:4B87 (in fn1825_4B48)
fn1825_4BFA proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	push	si
	call	far 1F38h:0517h
	sub	ah,ah
	mov	[bp-2h],ax
	mov	ax,12h
	mul	word ptr [bp+0Ah]
	mov	si,ax
	les	bx,[bp+6h]
	les	bx,es:[bx+0A8h]
	push	word ptr es:[bx+si+10h]
	push	word ptr es:[bx+si+0Eh]
	call	far 2BC7h:050Ah
	add	sp,4h
	push	dx
	push	ax
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 2017h:01BAh
	add	sp,8h
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 2017h:03F5h
	add	sp,4h
	mov	[bp-4h],ax
	push	ax
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	mov	ax,[bp-2h]
	add	ax,0Ch
	push	ax
	call	far 1F38h:0517h
	mov	al,ah
	sub	ah,ah
	push	ax
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,0A68h
	push	ds
	push	ax
	les	bx,[bp+6h]
	les	bx,es:[bx+0A8h]
	push	word ptr es:[bx+si]
	push	cs
	call	62F6h
	add	sp,6h
	mov	[bp-4h],ax
	push	ax
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	mov	ax,[bp-2h]
	add	ax,12h
	push	ax
	call	far 1F38h:0517h
	mov	al,ah
	sub	ah,ah
	push	ax
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,3h
	push	ax
	les	bx,[bp+6h]
	les	bx,es:[bx+0A8h]
	push	word ptr es:[bx+si+2h]
	push	cs
	call	63F8h
	add	sp,4h
	mov	ax,[bp-2h]
	add	ax,1Ah
	push	ax
	call	far 1F38h:0517h
	mov	al,ah
	sub	ah,ah
	push	ax
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,3h
	push	ax
	les	bx,[bp+6h]
	les	bx,es:[bx+0A8h]
	push	word ptr es:[bx+si+4h]
	push	cs
	call	63F8h
	add	sp,4h
	pop	si
	mov	sp,bp
	pop	bp
	retf

;; fn1825_4CFE: 1825:4CFE
;;   Called from:
;;     1825:0EC5 (in fn1825_0E72)
;;     1825:18E0 (in fn1825_18A6)
;;     1825:239E (in fn1825_2338)
;;     1825:35A5 (in fn1825_3436)
;;     1825:7045 (in fn1825_703C)
fn1825_4CFE proc
	push	bp
	mov	bp,sp
	sub	sp,0Ch
	cmp	word ptr [0F02h],0h
	jz	4D73h

l1825_4D0B:
	les	bx,[bp+6h]
	mov	ax,es:[bx]
	mov	[bp-8h],ax
	mov	ax,es:[bx+2h]
	mov	[bp-0Ah],ax
	mov	ax,es:[bx+4h]
	mov	[bp-6h],ax
	mov	ax,es:[bx+6h]
	mov	[bp-4h],ax
	mov	ax,[bp-6h]
	sub	ax,[bp-8h]
	inc	ax
	mov	[bp-0Ch],ax
	mov	ax,[bp-4h]
	sub	ax,[bp-0Ah]
	inc	ax
	mov	[bp-2h],ax
	mov	ax,[bp-0Ch]
	mul	word ptr [bp-2h]
	shl	ax,1h
	mov	es:[bx+8h],ax
	push	ax
	call	far 21DCh:097Eh
	add	sp,2h
	les	bx,[bp+6h]
	mov	es:[bx+0Ah],ax
	mov	es:[bx+0Ch],dx
	push	dx
	push	ax
	push	word ptr [bp-4h]
	push	word ptr [bp-6h]
	push	word ptr [bp-0Ah]
	push	word ptr [bp-8h]
	call	far 1F38h:0A6Fh
	add	sp,0Ch

l1825_4D73:
	mov	sp,bp
	pop	bp
	retf
1825:4D77                      90                                .        

;; fn1825_4D78: 1825:4D78
;;   Called from:
;;     1825:1311 (in fn1825_0E72)
;;     1825:1CB5 (in fn1825_18A6)
;;     1825:23AD (in fn1825_23A8)
;;     1825:3D0E (in fn1825_3CDC)
;;     1825:7057 (in fn1825_704E)
fn1825_4D78 proc
	push	bp
	mov	bp,sp
	cmp	word ptr [0F02h],0h
	jz	4DA4h

l1825_4D82:
	les	bx,[bp+6h]
	push	word ptr es:[bx+0Ch]
	push	word ptr es:[bx+0Ah]
	push	word ptr es:[bx+6h]
	push	word ptr es:[bx+4h]
	push	word ptr es:[bx+2h]
	push	word ptr es:[bx]
	call	far 1F38h:0A9Ah
	add	sp,0Ch

l1825_4DA4:
	pop	bp
	retf

;; fn1825_4DA6: 1825:4DA6
;;   Called from:
;;     1825:0B5B (in fn1825_0AA6)
fn1825_4DA6 proc
	push	bp
	mov	bp,sp
	sub	sp,1Ch
	mov	word ptr [bp-6h],0h
	mov	word ptr [bp-8h],5h
	mov	word ptr [bp-18h],5h
	mov	word ptr [bp-4h],0Ah
	mov	word ptr [bp-2h],35h
	mov	word ptr [bp-0Eh],6h
	mov	word ptr [bp-1Ah],7h
	mov	word ptr [bp-0Ch],0h
	mov	word ptr [bp-16h],1h

l1825_4DD9:
	cmp	word ptr [bp-16h],0BB8h
	jnz	4DE3h

l1825_4DE0:
	jmp	5132h

l1825_4DE3:
	mov	ax,0A5Eh
	push	ds
	push	ax
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	push	word ptr [bp-18h]
	push	word ptr [bp-8h]
	call	far 1F38h:05DBh
	add	sp,0Ch
	mov	ax,0A2Ch
	push	ds
	push	ax
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	push	word ptr [bp-18h]
	push	word ptr [bp-8h]
	call	far 1F38h:05DBh
	add	sp,0Ch
	push	word ptr [bp-1Ah]
	push	word ptr [bp-0Eh]
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,8h
	push	ax
	mov	ax,5A08h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	push	word ptr [bp-1Ah]
	mov	ax,[bp-0Eh]
	inc	ax
	push	ax
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,4h
	push	ax
	mov	ax,5A12h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	push	word ptr [bp-1Ah]
	mov	ax,[bp-0Eh]
	add	ax,2h
	push	ax
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,5h
	push	ax
	mov	ax,5A18h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	push	word ptr [bp-1Ah]
	mov	ax,[bp-0Eh]
	add	ax,3h
	push	ax
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,9h
	push	ax
	mov	ax,5A1Eh
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	mov	ax,[bp-1Ah]
	add	ax,0Ah
	push	ax
	push	word ptr [bp-0Eh]
	call	far 1F38h:04E7h
	add	sp,4h
	mov	byte ptr [0A68h],0h
	sub	ax,ax
	push	ax
	mov	ax,1h
	push	ax
	sub	ax,ax
	push	ax
	mov	ax,0Ah
	push	ax
	mov	ax,0A68h
	push	ds
	push	ax
	push	cs
	call	648Ah
	add	sp,0Ch
	mov	[bp-16h],ax
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 2017h:03F5h
	add	sp,4h
	mov	[bp-1Ch],ax
	cmp	word ptr [bp-16h],14h
	jnz	4EE8h

l1825_4EE5:
	jmp	5129h

l1825_4EE8:
	cmp	word ptr [bp-16h],0BB8h
	jnz	4EF2h

l1825_4EEF:
	jmp	5129h

l1825_4EF2:
	or	ax,ax
	jnz	4EF9h

l1825_4EF6:
	jmp	5129h

l1825_4EF9:
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 2BC7h:03C2h
	add	sp,4h
	mov	[bp-12h],ax
	mov	[bp-10h],dx
	les	bx,[bp-12h]
	mov	ax,es:[bx+4h]
	or	ax,es:[bx+6h]
	jnz	4F1Ch

l1825_4F19:
	jmp	4FAEh

l1825_4F1C:
	push	word ptr es:[bx+6h]
	push	word ptr es:[bx+4h]
	call	far 2368h:04F4h
	add	sp,4h
	mov	ax,[bp-1Ah]
	add	ax,6h
	push	ax
	mov	ax,[bp-0Eh]
	inc	ax
	push	ax
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,0A68h
	push	ds
	push	ax
	les	bx,[bp-12h]
	les	bx,es:[bx+4h]
	push	word ptr es:[bx]
	push	cs
	call	62F6h
	add	sp,6h
	mov	[bp-1Ch],ax
	push	ax
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	mov	ax,[bp-1Ah]
	add	ax,0Ah
	push	ax
	mov	ax,[bp-0Eh]
	add	ax,2h
	push	ax
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,0A68h
	push	ds
	push	ax
	push	cs
	call	6168h
	add	sp,4h
	mov	[bp-1Ch],ax
	sub	ax,20h
	sbb	cx,cx
	and	ax,cx
	add	ax,20h
	mov	[bp-1Ch],ax
	push	ax
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 1F38h:042Dh
	add	sp,6h
	call	far 2368h:033Ch
	jmp	501Ah

l1825_4FAE:
	mov	word ptr [bp-6h],1h
	push	word ptr [bp-10h]
	push	word ptr [bp-12h]
	call	far 2368h:030Eh
	add	sp,4h
	cmp	word ptr [bp+0Ah],0h
	jnz	4FCEh

l1825_4FC7:
	call	far 2368h:0C7Eh
	jmp	4FD3h

l1825_4FCE:
	call	far 2368h:0D20h

l1825_4FD3:
	les	bx,[bp-12h]
	les	bx,es:[bx+4h]
	mov	word ptr es:[bx],0h
	mov	ax,[bp-1Ah]
	add	ax,6h
	push	ax
	mov	ax,[bp-0Eh]
	inc	ax
	push	ax
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,0A68h
	push	ds
	push	ax
	les	bx,[bp-12h]
	les	bx,es:[bx+4h]
	push	word ptr es:[bx]
	push	cs
	call	62F6h
	add	sp,6h
	mov	[bp-1Ch],ax
	push	ax
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h

l1825_501A:
	mov	ax,[bp-1Ah]
	add	ax,0Bh
	push	ax
	mov	ax,[bp-0Eh]
	add	ax,3h
	push	ax
	call	far 1F38h:04E7h
	add	sp,4h
	mov	byte ptr [0A68h],0h
	sub	ax,ax
	push	ax
	push	ax
	push	ax
	mov	ax,20h
	push	ax
	mov	ax,0A68h
	push	ds
	push	ax
	push	cs
	call	648Ah
	add	sp,0Ch
	mov	[bp-16h],ax
	cmp	ax,14h
	jnz	5055h

l1825_5052:
	jmp	5129h

l1825_5055:
	cmp	ax,0BB8h
	jnz	505Dh

l1825_505A:
	jmp	5129h

l1825_505D:
	mov	ax,0C08h
	push	ds
	push	ax
	mov	ax,0A68h
	push	ds
	push	ax
	push	cs
	call	6042h
	add	sp,8h
	mov	al,[0C08h]
	sub	ah,ah
	sub	ax,41h
	cmp	ax,14h
	ja	50D4h

l1825_507B:
	add	ax,ax
	xchg	bx,ax
	jmp	word ptr cs:[bx+50AAh]
1825:5083          EB 08 90                                  ...          

l1825_5086:
	cmp	byte ptr [0C09h],49h
	jnz	5094h

l1825_508D:
	mov	word ptr [bp-0Ah],0h
	jmp	50D4h

l1825_5094:
	cmp	byte ptr [0C09h],45h
	jnz	50A2h

l1825_509B:
	mov	word ptr [bp-0Ah],1h
	jmp	50D4h

l1825_50A2:
	mov	word ptr [bp-0Ah],3h
	jmp	50D4h
1825:50A9                            90                            .      
l1825_50AA	dw	0x508D
l1825_50AC	dw	0x50D4
l1825_50AE	dw	0x508D
l1825_50B0	dw	0x508D
l1825_50B2	dw	0x50D4
l1825_50B4	dw	0x50D4
l1825_50B6	dw	0x50D4
l1825_50B8	dw	0x50D4
l1825_50BA	dw	0x50D4
l1825_50BC	dw	0x50D4
l1825_50BE	dw	0x50D4
l1825_50C0	dw	0x508D
l1825_50C2	dw	0x508D
l1825_50C4	dw	0x508D
l1825_50C6	dw	0x50D4
l1825_50C8	dw	0x50D4
l1825_50CA	dw	0x50D4
l1825_50CC	dw	0x50D4
l1825_50CE	dw	0x50D4
l1825_50D0	dw	0x50D4
l1825_50D2	dw	0x5086

l1825_50D4:
	cmp	word ptr [bp-0Ah],0h
	jz	50EAh

l1825_50DA:
	push	word ptr [bp-0Ah]
	push	cs
	call	6EA4h
	add	sp,2h
	mov	[bp-14h],ax
	jmp	50EFh
1825:50E9                            90                            .      

l1825_50EA:
	mov	word ptr [bp-14h],1h

l1825_50EF:
	cmp	word ptr [bp-14h],0h
	jz	5129h

l1825_50F5:
	sub	ax,ax
	push	ax
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 2368h:022Eh
	add	sp,6h
	mov	word ptr [0EE2h],0h
	call	far 31FFh:1D44h
	mov	word ptr [0EE2h],1h
	push	word ptr [bp-10h]
	push	word ptr [bp-12h]
	call	far 2368h:030Eh
	add	sp,4h
	call	far 2368h:0A7Ah

l1825_5129:
	cmp	word ptr [bp-16h],14h
	jz	5132h

l1825_512F:
	jmp	4DD9h

l1825_5132:
	cmp	word ptr [bp-16h],14h
	jnz	514Dh

l1825_5138:
	les	bx,[bp+6h]
	mov	word ptr es:[bx+0Ch],1h
	mov	word ptr es:[bx+0Eh],1h
	mov	word ptr es:[bx+16h],0h

l1825_514D:
	mov	ax,1h
	mov	sp,bp
	pop	bp
	retf

;; fn1825_5154: 1825:5154
;;   Called from:
;;     1825:0B72 (in fn1825_0AA6)
fn1825_5154 proc
	push	bp
	mov	bp,sp
	sub	sp,18h
	push	si
	mov	word ptr [bp-14h],0h
	mov	word ptr [bp-0Eh],2h
	mov	word ptr [bp-16h],1h
	mov	word ptr [bp-6h],14h
	mov	word ptr [bp-4h],10h
	mov	word ptr [bp-10h],2h
	mov	ax,[bp-4h]
	inc	ax
	mov	[bp-18h],ax
	mov	ax,[bp-6h]
	mov	[bp-0Ch],ax
	mov	ax,[bp-18h]
	add	ax,3Ch
	mov	[bp-0Ah],ax
	mov	word ptr [bp-2h],0h
	mov	ax,1h
	push	ax
	push	cs
	call	6E18h
	add	sp,2h
	jmp	51B4h
1825:51A1    90                                            .              

l1825_51A2:
	inc	word ptr [bp-2h]
	mov	ax,16h
	mul	word ptr [bp-8h]
	mov	bx,ax
	les	si,[1282h]
	mov	ax,es:[bx+si]

l1825_51B4:
	mov	[bp-8h],ax
	or	ax,ax
	jnz	51A2h

l1825_51BB:
	mov	ax,[0990h]
	cmp	[bp-2h],ax
	jnc	51CEh

l1825_51C3:
	cmp	[098Ch],ax
	jnz	51CEh

l1825_51C9:
	mov	word ptr [bp-14h],1h

l1825_51CE:
	cmp	word ptr [0982h],0h
	jnz	5239h

l1825_51D5:
	cmp	word ptr [09A6h],0h
	jnz	5239h

l1825_51DC:
	mov	word ptr [0980h],1h
	mov	word ptr [0982h],0h
	mov	word ptr [0984h],0h
	mov	word ptr [0986h],0h
	mov	word ptr [0988h],0h
	mov	word ptr [098Ch],1h
	mov	word ptr [098Eh],1h
	mov	word ptr [0990h],0h
	mov	word ptr [0992h],1h
	mov	word ptr [0994h],0h
	mov	ax,[bp-0Eh]
	inc	ax
	mov	[099Ah],ax
	mov	ax,[bp-6h]
	dec	ax
	mov	[099Ch],ax
	mov	ax,[099Ah]
	mov	[0998h],ax
	mov	ax,[bp-16h]
	inc	ax
	mov	[0996h],ax
	mov	word ptr [099Eh],11h

l1825_5239:
	cmp	word ptr [09A6h],0h
	jnz	52A8h

l1825_5240:
	cmp	word ptr [0982h],0h
	jnz	52A8h

l1825_5247:
	mov	word ptr [09A4h],1h
	mov	word ptr [09A6h],0h
	mov	word ptr [09A8h],0h
	mov	word ptr [09AAh],0h
	mov	word ptr [09ACh],0h
	mov	word ptr [09B0h],1h
	mov	word ptr [09B2h],1h
	mov	word ptr [09B4h],0h
	mov	word ptr [09B6h],1h
	mov	word ptr [09B8h],0h
	mov	ax,[bp-10h]
	add	ax,2h
	mov	[09BEh],ax
	mov	ax,[bp-0Ch]
	dec	ax
	mov	[09C0h],ax
	mov	ax,[09BEh]
	mov	[09BCh],ax
	mov	ax,[bp-18h]
	add	ax,2h
	mov	[09BAh],ax
	mov	word ptr [09C2h],10h

l1825_52A8:
	mov	ax,[bp-2h]
	mov	[0990h],ax
	cmp	word ptr [bp-14h],0h
	jz	531Eh

l1825_52B4:
	mov	ax,[0992h]
	add	ax,[099Eh]
	cmp	ax,[0990h]
	ja	530Ah

l1825_52C1:
	mov	ax,[0990h]
	sub	dx,dx
	div	word ptr [099Eh]
	mov	si,dx
	or	si,si
	jz	52D8h

l1825_52D0:
	mov	ax,[0990h]
	sub	ax,si
	jmp	52E9h
1825:52D7                      90                                .        

l1825_52D8:
	mov	ax,[0990h]
	sub	ax,[099Eh]
	sub	dx,dx
	div	word ptr [099Eh]
	mul	word ptr [099Eh]

l1825_52E9:
	inc	ax
	mov	[0992h],ax
	mov	ax,[0990h]
	mov	[098Ch],ax
	mov	ax,[099Ah]
	add	ax,[0990h]
	sub	ax,[0992h]
	mov	[0998h],ax
	mov	word ptr [0980h],1h
	jmp	531Eh
1825:5309                            90                            .      

l1825_530A:
	mov	ax,[0990h]
	mov	[098Ch],ax
	mov	ax,[099Ah]
	add	ax,[0990h]
	sub	ax,[0992h]
	mov	[0998h],ax

l1825_531E:
	mov	word ptr [098Ah],1h
	mov	word ptr [09AEh],1h
	sub	ax,ax
	push	ax
	call	far 1F38h:0527h
	add	sp,2h
	mov	ax,0A5Eh
	push	ds
	push	ax
	push	word ptr [bp-4h]
	push	word ptr [bp-6h]
	push	word ptr [bp-16h]
	push	word ptr [bp-0Eh]
	call	far 1F38h:05DBh
	add	sp,0Ch
	mov	ax,0A2Ch
	push	ds
	push	ax
	push	word ptr [bp-4h]
	push	word ptr [bp-6h]
	push	word ptr [bp-16h]
	push	word ptr [bp-0Eh]
	call	far 1F38h:05DBh
	add	sp,0Ch
	cmp	word ptr [0990h],1h
	sbb	ax,ax
	neg	ax
	jmp	5458h
1825:5373          90                                        .            

l1825_5374:
	mov	ax,9A4h
	push	ds
	push	ax
	mov	ax,980h
	push	ds
	push	ax
	push	word ptr [bp-4h]
	push	word ptr [bp-6h]
	push	word ptr [bp-16h]
	push	word ptr [bp-0Eh]
	push	cs
	call	54D4h
	add	sp,10h
	cmp	word ptr [098Ah],6h
	jz	53A9h

l1825_5398:
	cmp	word ptr [098Ah],8h
	jz	53A9h

l1825_539F:
	cmp	word ptr [09A6h],0h
	jnz	53A9h

l1825_53A6:
	jmp	5433h

l1825_53A9:
	mov	ax,0A2Ch
	push	ds
	push	ax
	push	word ptr [bp-4h]
	push	word ptr [bp-6h]
	push	word ptr [bp-16h]
	push	word ptr [bp-0Eh]
	call	far 1F38h:05DBh
	add	sp,0Ch
	mov	ax,980h
	push	ds
	push	ax
	mov	ax,0Fh
	push	ax
	push	word ptr [bp-4h]
	push	word ptr [bp-6h]
	push	word ptr [bp-16h]
	push	word ptr [bp-0Eh]
	push	cs
	call	675Eh
	add	sp,0Eh
	push	word ptr [bp-0Ah]
	push	word ptr [bp-0Ch]
	push	word ptr [bp-18h]
	push	word ptr [bp-10h]
	mov	ax,1h
	push	ax
	push	word ptr [098Ch]
	mov	ax,9A4h
	push	ds
	push	ax
	push	cs
	call	59CCh
	add	sp,10h
	mov	ax,0A36h
	push	ds
	push	ax
	push	word ptr [bp-4h]
	push	word ptr [bp-6h]
	push	word ptr [bp-16h]
	push	word ptr [bp-0Eh]
	call	far 1F38h:05DBh
	add	sp,0Ch
	mov	ax,980h
	push	ds
	push	ax
	mov	ax,0Fh
	push	ax
	push	word ptr [bp-4h]
	push	word ptr [bp-6h]
	push	word ptr [bp-16h]
	push	word ptr [bp-0Eh]
	push	cs
	call	675Eh
	add	sp,0Eh

l1825_5433:
	cmp	word ptr [0984h],0h
	jnz	5451h

l1825_543A:
	cmp	word ptr [09A8h],0h
	jnz	5451h

l1825_5441:
	cmp	word ptr [098Ah],0BB8h
	jz	5451h

l1825_5449:
	cmp	word ptr [09AEh],0BB8h
	jnz	5456h

l1825_5451:
	mov	ax,1h
	jmp	5458h

l1825_5456:
	sub	ax,ax

l1825_5458:
	mov	[bp-12h],ax
	or	ax,ax
	jnz	5462h

l1825_545F:
	jmp	5374h

l1825_5462:
	cmp	word ptr [0990h],0h
	jnz	54A5h

l1825_5469:
	call	far 1F38h:07FAh
	mov	ax,[bp-16h]
	add	ax,3h
	push	ax
	push	word ptr [bp-6h]
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,9h
	push	ax
	mov	ax,5A28h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	sub	ax,ax
	push	ax
	mov	ax,980h
	push	ds
	push	ax
	push	cs
	call	67EEh
	add	sp,6h
	call	far 1F38h:07E7h

l1825_54A5:
	cmp	word ptr [0984h],0h
	jnz	54B3h

l1825_54AC:
	cmp	word ptr [09A8h],0h
	jz	54BFh

l1825_54B3:
	mov	word ptr [0982h],0h
	mov	word ptr [09A6h],0h

l1825_54BF:
	mov	ax,1h
	push	ax
	call	far 1F38h:0527h
	add	sp,2h
	mov	ax,1h
	pop	si
	mov	sp,bp
	pop	bp
	retf
1825:54D3          90                                        .            

;; fn1825_54D4: 1825:54D4
;;   Called from:
;;     1825:538A (in fn1825_5154)
fn1825_54D4 proc
	push	bp
	mov	bp,sp
	sub	sp,10h
	push	si
	mov	ax,[bp+6h]
	mov	[bp-6h],ax
	mov	ax,[bp+0Ch]
	inc	ax
	mov	[bp-10h],ax
	mov	ax,[bp+6h]
	add	ax,12h
	mov	[bp-4h],ax
	mov	ax,[bp-10h]
	add	ax,3Ch
	mov	[bp-2h],ax
	mov	word ptr [bp-0Eh],0h

l1825_54FF:
	les	bx,[bp+12h]
	cmp	word ptr es:[bx+2h],0h
	jz	550Ch

l1825_5509:
	jmp	56D8h

l1825_550C:
	les	bx,[bp+0Eh]
	cmp	word ptr es:[bx],0h
	jnz	551Ch

l1825_5515:
	cmp	word ptr es:[bx+2h],0h
	jz	5531h

l1825_551C:
	push	es
	push	bx
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	5730h
	add	sp,0Ch

l1825_5531:
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	push	word ptr [bp-10h]
	push	word ptr [bp-6h]
	sub	ax,ax
	push	ax
	les	bx,[bp+0Eh]
	push	word ptr es:[bx+0Ch]
	push	word ptr [bp+14h]
	push	word ptr [bp+12h]
	push	cs
	call	59CCh
	add	sp,10h
	mov	ax,0Eh
	push	ax
	mov	ax,20h
	push	ax
	mov	ax,0BE8h
	push	ds
	push	ax
	call	far 2017h:0228h
	add	sp,8h
	les	bx,[bp+0Eh]
	push	word ptr es:[bx+0Ch]
	push	cs
	call	6E18h
	add	sp,2h
	mov	cx,16h
	mul	cx
	mov	si,ax
	les	bx,[1282h]
	push	word ptr es:[bx+si+14h]
	push	word ptr es:[bx+si+12h]
	call	far 2BC7h:050Ah
	add	sp,4h
	mov	[bp-0Ch],ax
	mov	[bp-0Ah],dx
	push	dx
	push	ax
	call	far 2017h:03F5h
	add	sp,4h
	push	ax
	push	word ptr [bp-0Ah]
	push	word ptr [bp-0Ch]
	mov	ax,0BE9h
	push	ds
	push	ax
	call	far 2017h:02ECh
	add	sp,0Ah
	call	far 1F38h:07FAh
	les	bx,[bp+0Eh]
	push	word ptr es:[bx+16h]
	push	word ptr es:[bx+18h]
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,0Eh
	push	ax
	mov	ax,0BE8h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	call	far 1F38h:07E7h
	les	bx,[bp+0Eh]
	mov	ax,es:[bx+18h]
	mov	[bp-8h],ax
	mov	word ptr es:[bx+2h],0h
	les	bx,[bp+12h]
	mov	word ptr es:[bx],1h
	sub	ax,ax
	push	ax
	push	word ptr [bp+10h]
	push	word ptr [bp+0Eh]
	push	cs
	call	67EEh
	add	sp,6h
	les	bx,[bp+0Eh]
	push	word ptr es:[bx+16h]
	push	word ptr [bp-8h]
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,0Eh
	push	ax
	mov	ax,0BE8h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	les	bx,[bp+0Eh]
	cmp	word ptr es:[bx+0Ah],6h
	jz	5640h

l1825_5639:
	cmp	word ptr es:[bx+0Ah],8h
	jnz	5661h

l1825_5640:
	push	word ptr es:[bx+16h]
	push	word ptr es:[bx+18h]
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,1h
	push	ax
	mov	ax,5A32h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h

l1825_5661:
	les	bx,[bp+0Eh]
	cmp	word ptr es:[bx+4h],0h
	jnz	5681h

l1825_566B:
	cmp	word ptr es:[bx+0Ah],0BB8h
	jz	5681h

l1825_5673:
	cmp	word ptr es:[bx+0Ah],6h
	jz	5681h

l1825_567A:
	cmp	word ptr es:[bx+0Ah],8h
	jnz	5686h

l1825_5681:
	mov	ax,1h
	jmp	5688h

l1825_5686:
	sub	ax,ax

l1825_5688:
	mov	[bp-0Eh],ax
	or	ax,ax
	jz	5692h

l1825_568F:
	jmp	571Ah

l1825_5692:
	les	bx,[bp+0Eh]
	cmp	word ptr es:[bx+0Ah],1h
	jz	571Ah

l1825_569C:
	les	bx,[bp+12h]
	mov	word ptr es:[bx],1h
	mov	word ptr es:[bx+6h],0h
	mov	word ptr es:[bx+8h],0h
	mov	word ptr es:[bx+0Ch],1h
	mov	word ptr es:[bx+0Eh],1h
	mov	word ptr es:[bx+10h],1h
	mov	word ptr es:[bx+12h],1h
	mov	word ptr es:[bx+14h],0h
	mov	ax,es:[bx+1Ah]
	mov	es:[bx+18h],ax
	jmp	571Ah

l1825_56D8:
	push	word ptr [bp+10h]
	push	word ptr [bp+0Eh]
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	5730h
	add	sp,0Ch
	les	bx,[bp+0Eh]
	push	word ptr es:[bx+16h]
	push	word ptr es:[bx+18h]
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,1h
	push	ax
	mov	ax,5A34h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	mov	word ptr [bp-0Eh],1h

l1825_571A:
	cmp	word ptr [bp-0Eh],0h
	jnz	5723h

l1825_5720:
	jmp	54FFh

l1825_5723:
	les	bx,[bp+0Eh]
	mov	word ptr es:[bx],1h
	pop	si
	mov	sp,bp
	pop	bp
	retf

;; fn1825_5730: 1825:5730
;;   Called from:
;;     1825:552A (in fn1825_54D4)
;;     1825:56EA (in fn1825_54D4)
fn1825_5730 proc
	push	bp
	mov	bp,sp
	sub	sp,0Ah
	push	si
	mov	ax,0A5Eh
	push	ds
	push	ax
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 1F38h:05DBh
	add	sp,0Ch
	mov	ax,0A36h
	push	ds
	push	ax
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 1F38h:05DBh
	add	sp,0Ch
	les	bx,[bp+0Eh]
	mov	ax,es:[bx+12h]
	mov	[bp-8h],ax
	mov	ax,es:[bx+1Ah]
	mov	[bp-2h],ax
	mov	word ptr es:[bx+14h],0h
	jmp	57EDh

l1825_5782:
	mov	ax,[bp-2h]
	cmp	es:[bx+1Ch],ax
	jc	57F6h

l1825_578B:
	mov	ax,es:[bx+16h]
	inc	ax
	push	ax
	push	word ptr [bp-2h]
	call	far 1F38h:04E7h
	add	sp,4h
	push	word ptr [bp-8h]
	push	cs
	call	6E18h
	add	sp,2h
	mov	cx,16h
	mul	cx
	mov	si,ax
	les	bx,[1282h]
	push	word ptr es:[bx+si+14h]
	push	word ptr es:[bx+si+12h]
	call	far 2BC7h:050Ah
	add	sp,4h
	mov	[bp-6h],ax
	mov	[bp-4h],dx
	push	dx
	push	ax
	call	far 2017h:03F5h
	add	sp,4h
	push	ax
	push	word ptr [bp-4h]
	push	word ptr [bp-6h]
	call	far 1F38h:049Fh
	add	sp,6h
	inc	word ptr [bp-8h]
	inc	word ptr [bp-2h]
	les	bx,[bp+0Eh]
	inc	word ptr es:[bx+14h]

l1825_57ED:
	mov	ax,[bp-8h]
	cmp	es:[bx+10h],ax
	jnc	5782h

l1825_57F6:
	mov	ax,es:[bx+0Eh]
	cmp	es:[bx+12h],ax
	jbe	5806h

l1825_5800:
	mov	ax,1h
	jmp	5808h
1825:5805                90                                    .          

l1825_5806:
	sub	ax,ax

l1825_5808:
	mov	es:[bx+6h],ax
	mov	ax,[bp-2h]
	cmp	es:[bx+1Ch],ax
	jnc	5824h

l1825_5815:
	mov	ax,[bp-8h]
	cmp	es:[bx+10h],ax
	jc	5824h

l1825_581E:
	mov	ax,1h
	jmp	5826h
1825:5823          90                                        .            

l1825_5824:
	sub	ax,ax

l1825_5826:
	mov	es:[bx+8h],ax
	push	es
	push	bx
	mov	ax,0Fh
	push	ax
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	675Eh
	add	sp,0Eh
	les	bx,[bp+0Eh]
	mov	word ptr es:[bx],0h
	pop	si
	mov	sp,bp
	pop	bp
	retf

;; fn1825_5850: 1825:5850
;;   Called from:
;;     1825:298B (in fn1825_2880)
fn1825_5850 proc
	push	bp
	mov	bp,sp
	sub	sp,0Ch
	push	si
	mov	ax,0A5Eh
	push	ds
	push	ax
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 1F38h:05DBh
	add	sp,0Ch
	mov	ax,0A36h
	push	ds
	push	ax
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 1F38h:05DBh
	add	sp,0Ch
	les	bx,[bp+0Eh]
	mov	ax,es:[bx+12h]
	mov	[bp-0Ah],ax
	mov	ax,es:[bx+1Ah]
	mov	[bp-4h],ax
	mov	word ptr es:[bx+14h],0h
	jmp	5967h
1825:58A3          90                                        .            

l1825_58A4:
	mov	ax,[bp-4h]
	cmp	es:[bx+1Ch],ax
	jnc	58B0h

l1825_58AD:
	jmp	5973h

l1825_58B0:
	mov	ax,es:[bx+16h]
	inc	ax
	push	ax
	push	word ptr [bp-4h]
	call	far 1F38h:04E7h
	add	sp,4h
	push	word ptr [bp-0Ah]
	push	cs
	call	6E18h
	add	sp,2h
	mov	cx,16h
	mul	cx
	mov	si,ax
	les	bx,[1282h]
	push	word ptr es:[bx+si+14h]
	push	word ptr es:[bx+si+12h]
	call	far 2BC7h:050Ah
	add	sp,4h
	mov	[bp-8h],ax
	mov	[bp-6h],dx
	push	dx
	push	ax
	call	far 2017h:03F5h
	add	sp,4h
	push	ax
	push	word ptr [bp-6h]
	push	word ptr [bp-8h]
	call	far 1F38h:049Fh
	add	sp,6h
	push	word ptr [bp-0Ah]
	push	cs
	call	6E18h
	add	sp,2h
	cmp	ax,[128Ah]
	jnz	591Ah

l1825_5915:
	mov	ax,[127Ah]
	jmp	5933h

l1825_591A:
	push	word ptr [bp-0Ah]
	push	cs
	call	6E18h
	add	sp,2h
	mov	cx,16h
	mul	cx
	mov	si,ax
	les	bx,[1282h]
	mov	ax,es:[bx+si+2h]

l1825_5933:
	mov	[bp-2h],ax
	les	bx,[bp+0Eh]
	mov	ax,es:[bx+16h]
	add	ax,0Fh
	push	ax
	push	word ptr [bp-4h]
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,5h
	push	ax
	push	word ptr [bp-2h]
	push	cs
	call	63F8h
	add	sp,4h
	inc	word ptr [bp-0Ah]
	inc	word ptr [bp-4h]
	les	bx,[bp+0Eh]
	inc	word ptr es:[bx+14h]

l1825_5967:
	mov	ax,[bp-0Ah]
	cmp	es:[bx+10h],ax
	jc	5973h

l1825_5970:
	jmp	58A4h

l1825_5973:
	mov	ax,es:[bx+0Eh]
	cmp	es:[bx+12h],ax
	jbe	5982h

l1825_597D:
	mov	ax,1h
	jmp	5984h

l1825_5982:
	sub	ax,ax

l1825_5984:
	mov	es:[bx+6h],ax
	mov	ax,[bp-4h]
	cmp	es:[bx+1Ch],ax
	jnc	59A0h

l1825_5991:
	mov	ax,[bp-0Ah]
	cmp	es:[bx+10h],ax
	jc	59A0h

l1825_599A:
	mov	ax,1h
	jmp	59A2h
1825:599F                                              90                .

l1825_59A0:
	sub	ax,ax

l1825_59A2:
	mov	es:[bx+8h],ax
	push	es
	push	bx
	mov	ax,16h
	push	ax
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	675Eh
	add	sp,0Eh
	les	bx,[bp+0Eh]
	mov	word ptr es:[bx],0h
	pop	si
	mov	sp,bp
	pop	bp
	retf

;; fn1825_59CC: 1825:59CC
;;   Called from:
;;     1825:53F7 (in fn1825_5154)
;;     1825:554D (in fn1825_54D4)
fn1825_59CC proc
	push	bp
	mov	bp,sp
	sub	sp,2h
	push	si
	push	word ptr [bp+0Ah]
	push	cs
	call	6E18h
	add	sp,2h
	push	word ptr [bp+0Ah]
	mov	si,ax
	push	cs
	call	6E58h
	add	sp,2h
	sub	ax,si
	les	bx,[bp+6h]
	mov	es:[bx+10h],ax
	mov	word ptr [bp-2h],0h

l1825_59F7:
	les	bx,[bp+6h]
	cmp	word ptr es:[bx],0h
	jnz	5A0Ah

l1825_5A00:
	cmp	word ptr es:[bx+2h],0h
	jnz	5A0Ah

l1825_5A07:
	jmp	5A9Eh

l1825_5A0A:
	mov	ax,0A5Eh
	push	ds
	push	ax
	push	word ptr [bp+14h]
	push	word ptr [bp+12h]
	push	word ptr [bp+10h]
	push	word ptr [bp+0Eh]
	call	far 1F38h:05DBh
	add	sp,0Ch
	cmp	word ptr [bp+0Ch],1h
	jnz	5A2Eh

l1825_5A29:
	mov	ax,0A36h
	jmp	5A31h

l1825_5A2E:
	mov	ax,0A2Ch

l1825_5A31:
	push	ds
	push	ax
	push	word ptr [bp+14h]
	push	word ptr [bp+12h]
	push	word ptr [bp+10h]
	push	word ptr [bp+0Eh]
	call	far 1F38h:05DBh
	add	sp,0Ch
	les	bx,[bp+6h]
	push	word ptr es:[bx+16h]
	mov	ax,[bp+0Eh]
	inc	ax
	push	ax
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,19h
	push	ax
	mov	ax,5A36h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+10h],0h
	jz	5A9Eh

l1825_5A76:
	push	es
	push	bx
	push	word ptr [bp+0Ah]
	push	cs
	call	6E18h
	add	sp,2h
	push	ax
	push	word ptr [bp+14h]
	push	word ptr [bp+12h]
	push	word ptr [bp+10h]
	push	word ptr [bp+0Eh]
	push	cs
	call	5B30h
	add	sp,0Eh
	les	bx,[bp+6h]
	mov	word ptr es:[bx],0h

l1825_5A9E:
	cmp	word ptr [bp+0Ch],1h
	jnz	5ADEh

l1825_5AA4:
	mov	word ptr es:[bx+2h],0h
	mov	ax,1h
	push	ax
	push	es
	push	bx
	push	cs
	call	67EEh
	add	sp,6h
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+4h],0h
	jnz	5AD0h

l1825_5AC1:
	cmp	word ptr es:[bx+0Ah],0BB8h
	jz	5AD0h

l1825_5AC9:
	cmp	word ptr es:[bx+0Ah],7h
	jnz	5AD6h

l1825_5AD0:
	mov	ax,1h
	jmp	5AD8h
1825:5AD5                90                                    .          

l1825_5AD6:
	sub	ax,ax

l1825_5AD8:
	mov	[bp-2h],ax
	jmp	5AE3h
1825:5ADD                                        90                    .  

l1825_5ADE:
	mov	word ptr [bp-2h],1h

l1825_5AE3:
	cmp	word ptr [bp-2h],0h
	jnz	5AECh

l1825_5AE9:
	jmp	59F7h

l1825_5AEC:
	les	bx,[bp+6h]
	mov	word ptr es:[bx],1h
	mov	ax,0A2Ch
	push	ds
	push	ax
	push	word ptr [bp+14h]
	push	word ptr [bp+12h]
	push	word ptr [bp+10h]
	push	word ptr [bp+0Eh]
	call	far 1F38h:05DBh
	add	sp,0Ch
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	mov	ax,3Ch
	push	ax
	push	word ptr [bp+14h]
	push	word ptr [bp+12h]
	push	word ptr [bp+10h]
	push	word ptr [bp+0Eh]
	push	cs
	call	675Eh
	add	sp,0Eh
	pop	si
	mov	sp,bp
	pop	bp
	retf
1825:5B2F                                              90                .

;; fn1825_5B30: 1825:5B30
;;   Called from:
;;     1825:5A8F (in fn1825_59CC)
fn1825_5B30 proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	les	bx,[bp+10h]
	mov	ax,es:[bx+12h]
	mov	[bp-4h],ax
	mov	ax,es:[bx+1Ah]
	mov	[bp-2h],ax
	mov	word ptr es:[bx+14h],0h
	jmp	5B81h
1825:5B4F                                              90                .

l1825_5B50:
	mov	ax,[bp-2h]
	cmp	es:[bx+1Ch],ax
	jc	5B8Ah

l1825_5B59:
	push	word ptr es:[bx+16h]
	push	ax
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,[bp+0Eh]
	add	ax,[bp-4h]
	push	ax
	push	cs
	call	5E5Ch
	add	sp,2h
	inc	word ptr [bp-4h]
	inc	word ptr [bp-2h]
	les	bx,[bp+10h]
	inc	word ptr es:[bx+14h]

l1825_5B81:
	mov	ax,[bp-4h]
	cmp	es:[bx+10h],ax
	jnc	5B50h

l1825_5B8A:
	mov	ax,es:[bx+0Eh]
	cmp	es:[bx+12h],ax
	jbe	5B9Ah

l1825_5B94:
	mov	ax,1h
	jmp	5B9Ch
1825:5B99                            90                            .      

l1825_5B9A:
	sub	ax,ax

l1825_5B9C:
	mov	es:[bx+6h],ax
	mov	ax,[bp-2h]
	cmp	es:[bx+1Ch],ax
	jnc	5BB8h

l1825_5BA9:
	mov	ax,[bp-4h]
	cmp	es:[bx+10h],ax
	jc	5BB8h

l1825_5BB2:
	mov	ax,1h
	jmp	5BBAh
1825:5BB7                      90                                .        

l1825_5BB8:
	sub	ax,ax

l1825_5BBA:
	mov	es:[bx+8h],ax
	push	es
	push	bx
	mov	ax,3Ch
	push	ax
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	675Eh
	mov	sp,bp
	pop	bp
	retf

;; fn1825_5BD8: 1825:5BD8
;;   Called from:
;;     1825:0B80 (in fn1825_0AA6)
fn1825_5BD8 proc
	push	bp
	mov	bp,sp
	sub	sp,0Ah
	mov	word ptr [bp-6h],2h
	mov	word ptr [bp-0Ah],4h
	mov	word ptr [bp-4h],15h
	mov	word ptr [bp-2h],40h
	cmp	word ptr [0982h],0h
	jnz	5C52h

l1825_5BF9:
	mov	word ptr [0980h],1h
	mov	word ptr [0982h],0h
	mov	word ptr [0984h],0h
	mov	word ptr [0986h],0h
	mov	word ptr [0988h],0h
	mov	ax,[128Ch]
	mov	[098Ch],ax
	mov	[098Eh],ax
	mov	ax,[1286h]
	dec	ax
	mov	[0990h],ax
	mov	ax,[128Ch]
	mov	[0992h],ax
	mov	word ptr [0994h],0h
	mov	word ptr [099Ah],4h
	mov	ax,[bp-4h]
	dec	ax
	mov	[099Ch],ax
	mov	ax,[099Ah]
	mov	[0998h],ax
	mov	word ptr [0996h],6h
	mov	word ptr [099Eh],11h

l1825_5C52:
	mov	word ptr [098Ah],1h
	sub	ax,ax
	push	ax
	call	far 1F38h:0527h
	add	sp,2h
	mov	ax,0A5Eh
	push	ds
	push	ax
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	push	word ptr [bp-0Ah]
	push	word ptr [bp-6h]
	call	far 1F38h:05DBh
	add	sp,0Ch
	mov	ax,0A36h
	push	ds
	push	ax
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	push	word ptr [bp-0Ah]
	push	word ptr [bp-6h]
	call	far 1F38h:05DBh
	add	sp,0Ch
	mov	ax,[1286h]
	dec	ax
	cmp	ax,[128Ch]
	jnc	5CA4h

l1825_5C9F:
	mov	ax,1h
	jmp	5CA6h

l1825_5CA4:
	sub	ax,ax

l1825_5CA6:
	mov	[bp-8h],ax
	jmp	5D4Eh

l1825_5CAC:
	mov	ax,0A5Eh
	push	ds
	push	ax
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	push	word ptr [bp-0Ah]
	push	word ptr [bp-6h]
	call	far 1F38h:05DBh
	add	sp,0Ch
	mov	ax,0A36h
	push	ds
	push	ax
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	push	word ptr [bp-0Ah]
	push	word ptr [bp-6h]
	call	far 1F38h:05DBh
	add	sp,0Ch
	push	word ptr [0996h]
	mov	ax,[bp-6h]
	inc	ax
	push	ax
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,19h
	push	ax
	mov	ax,5A50h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	mov	ax,980h
	push	ds
	push	ax
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	push	word ptr [bp-0Ah]
	push	word ptr [bp-6h]
	push	cs
	call	5DB0h
	add	sp,0Ch
	mov	ax,1h
	push	ax
	mov	ax,980h
	push	ds
	push	ax
	push	cs
	call	67EEh
	add	sp,6h
	cmp	word ptr [0984h],0h
	jnz	5D37h

l1825_5D2F:
	cmp	word ptr [098Ah],0BB8h
	jnz	5D3Ch

l1825_5D37:
	mov	ax,1h
	jmp	5D3Eh

l1825_5D3C:
	sub	ax,ax

l1825_5D3E:
	mov	[bp-8h],ax
	cmp	word ptr [0984h],0h
	jz	5D4Eh

l1825_5D48:
	mov	word ptr [0982h],0h

l1825_5D4E:
	cmp	word ptr [bp-8h],0h
	jnz	5D57h

l1825_5D54:
	jmp	5CACh

l1825_5D57:
	mov	ax,[1286h]
	dec	ax
	cmp	ax,[128Ch]
	jnc	5DA0h

l1825_5D61:
	call	far 1F38h:07FAh
	mov	ax,[bp-0Ah]
	add	ax,1Ah
	push	ax
	push	word ptr [bp-4h]
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,9h
	push	ax
	mov	ax,5A6Ah
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	sub	ax,ax
	push	ax
	mov	ax,8h
	push	ax
	call	far 3431h:07B6h
	add	sp,4h
	mov	[098Ah],ax
	call	far 1F38h:07E7h

l1825_5DA0:
	mov	ax,1h
	push	ax
	call	far 1F38h:0527h
	mov	ax,1h
	mov	sp,bp
	pop	bp
	retf

;; fn1825_5DB0: 1825:5DB0
;;   Called from:
;;     1825:5D11 (in fn1825_5BD8)
fn1825_5DB0 proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	les	bx,[bp+0Eh]
	mov	ax,es:[bx+12h]
	mov	[bp-4h],ax
	mov	ax,es:[bx+1Ah]
	mov	[bp-2h],ax
	mov	word ptr es:[bx+14h],0h
	jmp	5DFDh
1825:5DCF                                              90                .

l1825_5DD0:
	mov	ax,[bp-2h]
	cmp	es:[bx+1Ch],ax
	jc	5E06h

l1825_5DD9:
	push	word ptr es:[bx+16h]
	push	ax
	call	far 1F38h:04E7h
	add	sp,4h
	push	word ptr [bp-4h]
	push	cs
	call	5E5Ch
	add	sp,2h
	inc	word ptr [bp-4h]
	inc	word ptr [bp-2h]
	les	bx,[bp+0Eh]
	inc	word ptr es:[bx+14h]

l1825_5DFD:
	mov	ax,[bp-4h]
	cmp	es:[bx+10h],ax
	jnc	5DD0h

l1825_5E06:
	mov	ax,es:[bx+0Eh]
	cmp	es:[bx+12h],ax
	jbe	5E16h

l1825_5E10:
	mov	ax,1h
	jmp	5E18h
1825:5E15                90                                    .          

l1825_5E16:
	sub	ax,ax

l1825_5E18:
	mov	es:[bx+6h],ax
	mov	ax,[bp-2h]
	cmp	es:[bx+1Ch],ax
	jnc	5E34h

l1825_5E25:
	mov	ax,[bp-4h]
	cmp	es:[bx+10h],ax
	jc	5E34h

l1825_5E2E:
	mov	ax,1h
	jmp	5E36h
1825:5E33          90                                        .            

l1825_5E34:
	sub	ax,ax

l1825_5E36:
	mov	es:[bx+8h],ax
	push	es
	push	bx
	mov	ax,3Ch
	push	ax
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	675Eh
	les	bx,[bp+0Eh]
	mov	word ptr es:[bx],0h
	mov	sp,bp
	pop	bp
	retf

;; fn1825_5E5C: 1825:5E5C
;;   Called from:
;;     1825:5B6D (in fn1825_5B30)
;;     1825:5DE9 (in fn1825_5DB0)
fn1825_5E5C proc
	push	bp
	mov	bp,sp
	sub	sp,8h
	push	si
	call	far 1F38h:0517h
	sub	ah,ah
	mov	[bp-6h],ax
	mov	ax,16h
	mul	word ptr [bp+6h]
	mov	si,ax
	les	bx,[1282h]
	mov	ax,es:[bx+si+12h]
	mov	dx,es:[bx+si+14h]
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	push	dx
	push	ax
	call	far 2BC7h:050Ah
	add	sp,4h
	push	dx
	push	ax
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 2017h:01BAh
	add	sp,8h
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 2017h:03F5h
	add	sp,4h
	mov	[bp-8h],ax
	sub	ax,0Ah
	sbb	cx,cx
	and	ax,cx
	add	ax,0Ah
	mov	[bp-8h],ax
	push	ax
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	mov	ax,[1282h]
	mov	dx,[1284h]
	add	ax,si
	push	dx
	push	ax
	call	far 2368h:04F4h
	add	sp,4h
	mov	ax,[bp-6h]
	add	ax,0Ch
	push	ax
	call	far 1F38h:0517h
	mov	al,ah
	sub	ah,ah
	push	ax
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,0A68h
	push	ds
	push	ax
	les	bx,[1282h]
	push	word ptr es:[bx+si]
	push	cs
	call	62F6h
	add	sp,6h
	mov	[bp-8h],ax
	push	ax
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	mov	ax,[bp-6h]
	add	ax,12h
	push	ax
	call	far 1F38h:0517h
	mov	al,ah
	sub	ah,ah
	push	ax
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,0A68h
	push	ds
	push	ax
	push	cs
	call	6168h
	add	sp,4h
	mov	[bp-8h],ax
	sub	ax,20h
	sbb	cx,cx
	and	ax,cx
	add	ax,20h
	mov	[bp-8h],ax
	push	ax
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	call	far 2368h:033Ch
	pop	si
	mov	sp,bp
	pop	bp
	retf

;; fn1825_5F68: 1825:5F68
;;   Called from:
;;     1825:0E60 (in fn1825_0DA8)
fn1825_5F68 proc
	push	bp
	mov	bp,sp
	mov	ax,[127Ah]
	cmp	[bp+6h],ax
	jnz	5F78h

l1825_5F73:
	mov	ax,1h
	pop	bp
	retf

l1825_5F78:
	sub	ax,ax
	pop	bp
	retf

;; fn1825_5F7C: 1825:5F7C
;;   Called from:
;;     1825:0E2F (in fn1825_0DA8)
fn1825_5F7C proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	push	si
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 2BC7h:0494h
	add	sp,4h
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	or	ax,dx
	jz	5FBAh

l1825_5F9B:
	mov	ax,16h
	mul	word ptr [128Ah]
	mov	si,ax
	les	bx,[1282h]
	mov	ax,[bp-4h]
	mov	dx,[bp-2h]
	cmp	es:[bx+si+12h],ax
	jnz	5FC2h

l1825_5FB4:
	cmp	es:[bx+si+14h],dx
	jnz	5FC2h

l1825_5FBA:
	mov	ax,1h
	pop	si
	mov	sp,bp
	pop	bp
	retf

l1825_5FC2:
	sub	ax,ax
	pop	si
	mov	sp,bp
	pop	bp
	retf
1825:5FC9                            90                            .      

;; fn1825_5FCA: 1825:5FCA
;;   Called from:
;;     1825:0DF2 (in fn1825_0DA8)
fn1825_5FCA proc
	push	bp
	mov	bp,sp
	sub	sp,2h
	mov	word ptr [bp-2h],0h
	mov	ax,0C08h
	push	ds
	push	ax
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	6042h
	add	sp,8h
	cmp	byte ptr [0C08h],4Ch
	jnz	5FF3h

l1825_5FEE:
	mov	word ptr [bp-2h],1h

l1825_5FF3:
	cmp	word ptr [bp-2h],0h
	jz	603Ah

l1825_5FF9:
	sub	ax,ax
	push	ax
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 2368h:022Eh
	add	sp,6h
	mov	word ptr [0EE2h],0h
	call	far 31FFh:1D44h
	mov	word ptr [0EE2h],1h
	les	bx,[1296h]
	cmp	word ptr es:[bx],80h
	jnz	6030h

l1825_6026:
	mov	ax,es:[bx+8h]
	mov	[bp-2h],ax
	jmp	6035h
1825:602F                                              90                .

l1825_6030:
	mov	word ptr [bp-2h],0h

l1825_6035:
	call	far 2368h:033Ch

l1825_603A:
	mov	ax,[bp-2h]
	mov	sp,bp
	pop	bp
	retf
1825:6041    90                                            .              

;; fn1825_6042: 1825:6042
;;   Called from:
;;     1825:164F (in fn1825_139A)
;;     1825:5067 (in fn1825_4DA6)
;;     1825:5FE0 (in fn1825_5FCA)
;;     1825:60C8 (in fn1825_6078)
fn1825_6042 proc
	push	bp
	mov	bp,sp
	sub	sp,2h
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 2017h:03F5h
	add	sp,4h
	push	ax
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 31FFh:207Ch
	add	sp,6h
	mov	[bp-2h],ax
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	push	ax
	push	cs
	call	62F6h
	mov	sp,bp
	pop	bp
	retf
1825:6077                      90                                .        

;; fn1825_6078: 1825:6078
;;   Called from:
;;     1825:2298 (in fn1825_2020)
;;     1825:280A (in fn1825_26D6)
fn1825_6078 proc
	push	bp
	mov	bp,sp
	sub	sp,8h
	mov	word ptr [bp-4h],1h
	call	far 1F38h:0517h
	mov	al,ah
	sub	ah,ah
	mov	[bp-2h],ax
	call	far 1F38h:0517h
	sub	ah,ah
	mov	[bp-6h],ax
	mov	[0C08h],ah
	push	cs
	call	7106h
	push	word ptr [0C0Eh]
	push	word ptr [0C0Ch]
	call	far 1F38h:04E7h
	add	sp,4h
	mov	word ptr [0EE2h],0h
	cmp	word ptr [bp+0Eh],0h
	jz	6114h

l1825_60BD:
	mov	ax,0C08h
	push	ds
	push	ax
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	6042h
	add	sp,8h
	cmp	byte ptr [0C08h],55h
	jnz	6114h

l1825_60D6:
	cmp	byte ptr [0C09h],49h
	jz	6114h

l1825_60DD:
	mov	word ptr [bp-4h],0h
	cmp	byte ptr [0C09h],45h
	jnz	60F8h

l1825_60E9:
	mov	word ptr [bp-8h],10h
	mov	ax,11h
	push	ax
	mov	ax,5A74h
	jmp	6104h
1825:60F7                      90                                .        

l1825_60F8:
	mov	word ptr [bp-8h],0Bh
	mov	ax,0Ch
	push	ax
	mov	ax,5A86h

l1825_6104:
	push	ds
	push	ax
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	call	far 2017h:02ECh
	add	sp,0Ah

l1825_6114:
	cmp	word ptr [bp-4h],0h
	jz	6145h

l1825_611A:
	sub	ax,ax
	push	ax
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 2368h:022Eh
	add	sp,6h
	call	far 31FFh:1D44h
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	push	cs
	call	6168h
	add	sp,4h
	mov	[bp-8h],ax
	call	far 2368h:033Ch

l1825_6145:
	mov	word ptr [0EE2h],1h
	push	word ptr [bp-6h]
	push	word ptr [bp-2h]
	call	far 1F38h:04E7h
	add	sp,4h
	push	word ptr [0EE6h]
	push	cs
	call	7078h
	mov	ax,[bp-8h]
	mov	sp,bp
	pop	bp
	retf

;; fn1825_6168: 1825:6168
;;   Called from:
;;     1825:4889 (in fn1825_4814)
;;     1825:4F82 (in fn1825_4DA6)
;;     1825:5F39 (in fn1825_5E5C)
;;     1825:6136 (in fn1825_6078)
fn1825_6168 proc
	push	bp
	mov	bp,sp
	sub	sp,2h
	push	si
	les	bx,[bp+6h]
	mov	byte ptr es:[bx],0h
	les	bx,[1296h]
	mov	ax,es:[bx]
	cmp	ax,8h
	jnz	6185h

l1825_6182:
	jmp	621Ch

l1825_6185:
	jle	618Ah

l1825_6187:
	jmp	62CEh

l1825_618A:
	sub	ax,0FFFDh
	cmp	ax,5h
	jbe	6195h

l1825_6192:
	jmp	62EFh

l1825_6195:
	add	ax,ax
	xchg	bx,ax
	jmp	word ptr cs:[bx+62C2h]
1825:619D                                        90                    .  

l1825_619E:
	les	bx,[1296h]
	mov	ax,es:[bx+2h]
	sub	ax,7Fh
	sbb	cx,cx
	and	ax,cx
	add	ax,7Fh
	mov	[bp-2h],ax
	push	ax
	push	word ptr es:[bx+0Ah]
	push	word ptr es:[bx+8h]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 2017h:02ECh
	add	sp,0Ah
	mov	bx,[bp-2h]
	les	si,[bp+6h]
	mov	byte ptr es:[bx+si],0h

l1825_61D4:
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 2017h:03F5h
	add	sp,4h
	pop	si
	mov	sp,bp
	pop	bp
	retf
1825:61E7                      90                                .        

l1825_61E8:
	push	word ptr [1298h]
	push	word ptr [1296h]
	call	far 38D6h:0008h
	add	sp,4h
	les	bx,[1296h]
	push	word ptr es:[bx+4h]
	push	word ptr es:[bx+2h]
	push	word ptr es:[bx+0Ah]
	push	word ptr es:[bx+8h]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 3CEEh:0EFCh
	add	sp,0Ch
	jmp	61D4h

l1825_621C:
	push	word ptr [1298h]
	push	word ptr [1296h]
	call	far 38D6h:0008h
	add	sp,4h
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	les	bx,[1296h]
	push	word ptr es:[bx+4h]
	push	word ptr es:[bx+2h]
	push	word ptr es:[bx+0Eh]
	push	word ptr es:[bx+0Ch]
	push	word ptr es:[bx+0Ah]
	push	word ptr es:[bx+8h]
	call	far 3CEEh:0DA8h
	add	sp,10h
	jmp	61D4h
1825:6259                            90                            .      

l1825_625A:
	les	bx,[1296h]
	cmp	word ptr es:[bx+8h],0h
	jz	627Ch

l1825_6265:
	mov	ax,5A92h

l1825_6268:
	push	ds
	push	ax
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 2017h:01BAh
	add	sp,8h
	jmp	61D4h
1825:627B                                  90                        .    

l1825_627C:
	mov	ax,5A96h
	jmp	6268h
1825:6281    90                                            .              

l1825_6282:
	push	word ptr [128Eh]
	les	bx,[1296h]
	push	word ptr es:[bx+0Ah]
	push	word ptr es:[bx+8h]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 38D6h:06FAh
	add	sp,0Ah
	jmp	61D4h
1825:62A3          90                                        .            

l1825_62A4:
	mov	ax,5A9Ah
	jmp	6268h
1825:62A9                            90                            .      

l1825_62AA:
	mov	ax,5A9Ch
	jmp	6268h
1825:62AF                                              90                .

l1825_62B0:
	mov	ax,5A9Eh
	jmp	6268h
1825:62B5                90                                    .          

l1825_62B6:
	mov	ax,5AA0h
	jmp	6268h
1825:62BB                                  90                        .    

l1825_62BC:
	mov	ax,5AB2h
	jmp	6268h
1825:62C1    90                                            .              
l1825_62C2	dw	0x62B6
l1825_62C4	dw	0x62BC
l1825_62C6	dw	0x62EF
l1825_62C8	dw	0x62EF
l1825_62CA	dw	0x62EF
l1825_62CC	dw	0x61E8

l1825_62CE:
	cmp	ax,20h
	jz	6282h

l1825_62D3:
	cmp	ax,80h
	jz	625Ah

l1825_62D8:
	cmp	ax,100h
	jnz	62E0h

l1825_62DD:
	jmp	619Eh

l1825_62E0:
	cmp	ax,300h
	jz	62A4h

l1825_62E5:
	cmp	ax,800h
	jz	62AAh

l1825_62EA:
	cmp	ax,2000h
	jz	62B0h

l1825_62EF:
	mov	ax,5AC4h
	jmp	6268h
1825:62F5                90                                    .          

;; fn1825_62F6: 1825:62F6
;;   Called from:
;;     1825:4C81 (in fn1825_4BFA)
;;     1825:4F4F (in fn1825_4DA6)
;;     1825:5002 (in fn1825_4DA6)
;;     1825:5F03 (in fn1825_5E5C)
;;     1825:606F (in fn1825_6042)
fn1825_62F6 proc
	push	bp
	mov	bp,sp
	sub	sp,2h
	mov	word ptr [bp-2h],1h
	mov	ax,[bp+6h]
	cmp	ax,10h
	jz	633Ah

l1825_6309:
	jle	630Eh

l1825_630B:
	jmp	63BAh

l1825_630E:
	sub	ax,0FFFDh
	cmp	ax,0Bh
	jbe	6319h

l1825_6316:
	jmp	63CBh

l1825_6319:
	add	ax,ax
	xchg	bx,ax
	jmp	word ptr cs:[bx+63A2h]
1825:6321    90                                            .              

l1825_6322:
	les	bx,[bp+8h]
	mov	byte ptr es:[bx],43h

l1825_6329:
	inc	word ptr [bp+8h]
	les	bx,[bp+8h]
	mov	byte ptr es:[bx],0h
	mov	ax,[bp-2h]
	mov	sp,bp
	pop	bp
	retf

l1825_633A:
	les	bx,[bp+8h]
	mov	byte ptr es:[bx],4Eh
	jmp	6329h
1825:6343          90                                        .            

l1825_6344:
	les	bx,[bp+8h]
	mov	byte ptr es:[bx],4Ch
	jmp	6329h
1825:634D                                        90                    .  

l1825_634E:
	les	bx,[bp+8h]
	mov	byte ptr es:[bx],44h
	jmp	6329h
1825:6357                      90                                .        

l1825_6358:
	les	bx,[bp+8h]
	mov	byte ptr es:[bx],4Dh
	jmp	6329h
1825:6361    90                                            .              

l1825_6362:
	les	bx,[bp+8h]
	mov	byte ptr es:[bx],40h
	jmp	6329h
1825:636B                                  90                        .    

l1825_636C:
	les	bx,[bp+8h]
	mov	byte ptr es:[bx],41h
	jmp	6329h
1825:6375                90                                    .          

l1825_6376:
	les	bx,[bp+8h]
	mov	byte ptr es:[bx],55h
	inc	word ptr [bp+8h]
	mov	bx,[bp+8h]
	mov	byte ptr es:[bx],45h

l1825_6387:
	mov	word ptr [bp-2h],2h
	jmp	6329h

l1825_638E:
	les	bx,[bp+8h]
	mov	byte ptr es:[bx],55h
	inc	word ptr [bp+8h]
	mov	bx,[bp+8h]
	mov	byte ptr es:[bx],49h
	jmp	6387h
1825:63A1    90                                            .              
l1825_63A2	dw	0x6376
l1825_63A4	dw	0x638E
l1825_63A6	dw	0x63CB
l1825_63A8	dw	0x63CB
l1825_63AA	dw	0x63CB
l1825_63AC	dw	0x633A
l1825_63AE	dw	0x63CB
l1825_63B0	dw	0x63CB
l1825_63B2	dw	0x63CB
l1825_63B4	dw	0x63CB
l1825_63B6	dw	0x63CB
l1825_63B8	dw	0x633A

l1825_63BA:
	cmp	ax,80h
	jz	6344h

l1825_63BF:
	jg	63D6h

l1825_63C1:
	cmp	ax,20h
	jz	634Eh

l1825_63C6:
	cmp	ax,40h
	jz	634Eh

l1825_63CB:
	les	bx,[bp+8h]
	mov	byte ptr es:[bx],55h
	jmp	6329h
1825:63D5                90                                    .          

l1825_63D6:
	cmp	ax,100h
	jnz	63DEh

l1825_63DB:
	jmp	6322h

l1825_63DE:
	cmp	ax,300h
	jnz	63E6h

l1825_63E3:
	jmp	6358h

l1825_63E6:
	cmp	ax,800h
	jnz	63EEh

l1825_63EB:
	jmp	6362h

l1825_63EE:
	cmp	ax,2000h
	jnz	63F6h

l1825_63F3:
	jmp	636Ch

l1825_63F6:
	jmp	63CBh

;; fn1825_63F8: 1825:63F8
;;   Called from:
;;     1825:1197 (in fn1825_0E72)
;;     1825:1B35 (in fn1825_18A6)
;;     1825:217F (in fn1825_2020)
;;     1825:3F71 (in fn1825_3EE6)
;;     1825:4041 (in fn1825_3EE6)
;;     1825:408B (in fn1825_3EE6)
;;     1825:40B4 (in fn1825_3EE6)
;;     1825:42E9 (in fn1825_3EE6)
;;     1825:44FE (in fn1825_3EE6)
;;     1825:4583 (in fn1825_3EE6)
;;     1825:45A7 (in fn1825_3EE6)
;;     1825:4841 (in fn1825_4814)
;;     1825:4CC2 (in fn1825_4BFA)
;;     1825:4CF2 (in fn1825_4BFA)
;;     1825:5953 (in fn1825_5850)
fn1825_63F8 proc
	push	bp
	mov	bp,sp
	sub	sp,2h
	mov	byte ptr [0A68h],0h
	cmp	word ptr [bp+6h],0h
	jz	642Eh

l1825_6409:
	mov	ax,7Fh
	push	ax
	push	word ptr [bp+6h]
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 38D6h:0D68h
	add	sp,8h
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 2017h:03D0h
	add	sp,4h
	push	dx
	jmp	6432h
1825:642D                                        90                    .  

l1825_642E:
	mov	ax,5AD0h
	push	ds

l1825_6432:
	push	ax
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 2017h:01BAh
	add	sp,8h
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 2017h:03F5h
	add	sp,4h
	mov	[bp-2h],ax
	mov	ax,[bp+8h]
	cmp	[bp-2h],ax
	jnc	6478h

l1825_6458:
	call	far 1F38h:0517h
	sub	ah,ah
	add	ax,[bp+8h]
	sub	ax,[bp-2h]
	push	ax
	call	far 1F38h:0517h
	mov	al,ah
	sub	ah,ah
	push	ax
	call	far 1F38h:04E7h
	add	sp,4h

l1825_6478:
	push	word ptr [bp-2h]
	mov	ax,0A68h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	mov	sp,bp
	pop	bp
	retf
1825:6489                            90                            .      

;; fn1825_648A: 1825:648A
;;   Called from:
;;     1825:1429 (in fn1825_139A)
;;     1825:1523 (in fn1825_139A)
;;     1825:160E (in fn1825_139A)
;;     1825:17BB (in fn1825_139A)
;;     1825:1DBD (in fn1825_1D40)
;;     1825:1E5B (in fn1825_1D40)
;;     1825:1F19 (in fn1825_1D40)
;;     1825:27A4 (in fn1825_26D6)
;;     1825:4EC5 (in fn1825_4DA6)
;;     1825:5043 (in fn1825_4DA6)
fn1825_648A proc
	push	bp
	mov	bp,sp
	sub	sp,0Eh
	push	si
	mov	word ptr [bp-2h],0h
	call	far 1F38h:0517h
	mov	al,ah
	sub	ah,ah
	mov	[bp-4h],ax
	call	far 1F38h:0517h
	sub	ah,ah
	mov	[bp-0Ch],ax
	mov	word ptr [bp-8h],1h
	mov	ax,1h
	push	ax
	call	far 1F38h:0527h
	add	sp,2h
	push	word ptr [bp-0Ch]
	push	word ptr [bp-4h]
	call	far 1F38h:04E7h
	add	sp,4h
	cmp	word ptr [bp+10h],0h
	jz	64E4h

l1825_64D1:
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 2017h:03F5h
	add	sp,4h
	mov	[bp-0Eh],ax
	jmp	64F0h

l1825_64E4:
	mov	word ptr [bp-0Eh],0h
	les	bx,[bp+6h]
	mov	byte ptr es:[bx],0h

l1825_64F0:
	push	word ptr [bp-0Eh]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 1F38h:049Fh
	add	sp,6h
	push	word ptr [bp-0Ch]
	push	word ptr [bp-4h]
	call	far 1F38h:04E7h
	add	sp,4h
	jmp	669Dh

l1825_6512:
	cmp	word ptr [bp-8h],14h
	jnz	651Bh

l1825_6518:
	jmp	66A6h

l1825_651B:
	cmp	word ptr [bp-8h],0BB8h
	jnz	6525h

l1825_6522:
	jmp	66A6h

l1825_6525:
	mov	ax,[bp+0Ah]
	cmp	[bp-2h],ax
	jc	6530h

l1825_652D:
	jmp	66A6h

l1825_6530:
	sub	ax,ax
	push	ax
	mov	ax,8h
	push	ax
	call	far 3431h:07B6h
	add	sp,4h
	mov	[bp-8h],ax
	cmp	ax,1h
	jz	656Ah

l1825_6547:
	cmp	ax,2h
	jnz	654Fh

l1825_654C:
	jmp	6618h

l1825_654F:
	cmp	ax,3h
	jnz	6557h

l1825_6554:
	jmp	65E8h

l1825_6557:
	cmp	ax,7h
	jz	6595h

l1825_655C:
	cmp	ax,8h
	jz	65B8h

l1825_6561:
	cmp	ax,14h
	jz	6590h

l1825_6566:
	jmp	669Dh
1825:6569                            90                            .      

l1825_656A:
	mov	ax,95Ch
	push	ds
	push	ax
	mov	ax,8F6h
	push	ds
	push	ax
	push	cs
	call	6B02h
	add	sp,8h
	mov	[bp-8h],ax
	cmp	ax,0BB8h
	jz	6586h

l1825_6583:
	jmp	669Dh

l1825_6586:
	mov	word ptr [090Eh],3h
	jmp	669Dh
1825:658F                                              90                .

l1825_6590:
	mov	word ptr [bp-2h],0h

l1825_6595:
	cmp	word ptr [bp-2h],0h
	jnz	659Eh

l1825_659B:
	jmp	669Dh

l1825_659E:
	call	far 1F38h:0517h
	sub	ah,ah
	dec	ax
	push	ax
	push	word ptr [bp-4h]
	call	far 1F38h:04E7h
	add	sp,4h
	dec	word ptr [bp-2h]
	jmp	669Dh

l1825_65B8:
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 2017h:03F5h
	add	sp,4h
	cmp	ax,[bp-2h]
	ja	65CEh

l1825_65CB:
	jmp	669Dh

l1825_65CE:
	call	far 1F38h:0517h
	sub	ah,ah
	inc	ax
	push	ax
	push	word ptr [bp-4h]
	call	far 1F38h:04E7h
	add	sp,4h
	inc	word ptr [bp-2h]
	jmp	669Dh

l1825_65E8:
	cmp	word ptr [bp-2h],0h
	jnz	65F1h

l1825_65EE:
	jmp	669Dh

l1825_65F1:
	call	far 1F38h:0517h
	sub	ah,ah
	dec	ax
	push	ax
	push	word ptr [bp-4h]
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,1h
	push	ax
	mov	ax,5AD2h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	jmp	659Eh

l1825_6618:
	mov	al,[0F17h]
	mov	[bp-0Ah],al
	cmp	word ptr [bp+0Ch],0h
	jz	6651h

l1825_6624:
	cmp	word ptr [bp+0Ch],1h
	jnz	6639h

l1825_662A:
	sub	ah,ah
	push	ax
	call	far 38ADh:0040h
	add	sp,2h
	test	al,2h
	jnz	6651h

l1825_6639:
	cmp	word ptr [bp+0Ch],2h
	jnz	669Dh

l1825_663F:
	mov	al,[bp-0Ah]
	sub	ah,ah
	push	ax
	call	far 38ADh:0040h
	add	sp,2h
	test	al,1h
	jz	669Dh

l1825_6651:
	mov	al,[bp-0Ah]
	sub	ah,ah
	mov	si,ax
	push	si
	call	far 38ADh:0040h
	add	sp,2h
	test	al,1h
	jz	6677h

l1825_6665:
	cmp	word ptr [bp+0Eh],1h
	jnz	6677h

l1825_666B:
	push	si
	call	far 38ADh:001Eh
	add	sp,2h
	mov	[bp-0Ah],al

l1825_6677:
	mov	bx,[bp-2h]
	les	si,[bp+6h]
	mov	al,[bp-0Ah]
	mov	es:[bx+si],al
	mov	ax,1h
	push	ax
	mov	ax,bx
	add	ax,si
	mov	dx,es
	push	dx
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	inc	word ptr [bp-2h]
	inc	word ptr [bp-0Eh]

l1825_669D:
	cmp	word ptr [bp-8h],6h
	jz	66A6h

l1825_66A3:
	jmp	6512h

l1825_66A6:
	sub	ax,ax
	push	ax
	call	far 1F38h:0527h
	add	sp,2h
	cmp	word ptr [bp-8h],14h
	jz	66C4h

l1825_66B7:
	mov	bx,[bp-0Eh]
	les	si,[bp+6h]
	mov	byte ptr es:[bx+si],0h
	jmp	66CBh
1825:66C3          90                                        .            

l1825_66C4:
	les	bx,[bp+6h]
	mov	byte ptr es:[bx],0h

l1825_66CB:
	mov	ax,[bp-8h]
	pop	si
	mov	sp,bp
	pop	bp
	retf
1825:66D3          90                                        .            

;; fn1825_66D4: 1825:66D4
;;   Called from:
;;     1825:04F1 (in fn1825_037E)
;;     1825:08A0 (in fn1825_06E0)
;;     1825:12D4 (in fn1825_0E72)
;;     1825:1C78 (in fn1825_18A6)
fn1825_66D4 proc
	push	bp
	mov	bp,sp
	sub	sp,0Ah
	push	si
	mov	word ptr [bp-2h],0h
	mov	word ptr [bp-6h],0h
	mov	al,[0F17h]
	sub	ah,ah
	push	ax
	call	far 38ADh:0040h
	add	sp,2h
	test	al,1h
	jz	6748h

l1825_66F7:
	mov	al,[0F17h]
	sub	ah,ah
	push	ax
	call	far 38ADh:001Eh
	add	sp,2h
	sub	ah,ah
	mov	[bp-4h],ax

l1825_670A:
	mov	bx,[bp-2h]
	shl	bx,1h
	shl	bx,1h
	les	si,[bp+6h]
	mov	ax,es:[bx+si]
	mov	dx,es:[bx+si+2h]
	mov	[bp-0Ah],ax
	mov	[bp-8h],dx
	or	ax,dx
	jz	6748h

l1825_6725:
	cmp	word ptr [bp-6h],0h
	jnz	6748h

l1825_672B:
	les	bx,[bp-0Ah]
	mov	si,[bp+0Ah]
	mov	al,es:[bx+si]
	sub	ah,ah
	cmp	ax,[bp-4h]
	jnz	6742h

l1825_673B:
	mov	word ptr [bp-6h],1h
	jmp	670Ah

l1825_6742:
	inc	word ptr [bp-2h]
	jmp	670Ah
1825:6747                      90                                .        

l1825_6748:
	cmp	word ptr [bp-6h],0h
	jz	6756h

l1825_674E:
	mov	ax,[bp-2h]
	pop	si
	mov	sp,bp
	pop	bp
	retf

l1825_6756:
	mov	ax,0FFFFh
	pop	si
	mov	sp,bp
	pop	bp
	retf

;; fn1825_675E: 1825:675E
;;   Called from:
;;     1825:2686 (in fn1825_25AE)
;;     1825:2C42 (in fn1825_2B6E)
;;     1825:3AE8 (in fn1825_39DE)
;;     1825:3E62 (in fn1825_3CDC)
;;     1825:3EC9 (in fn1825_3CDC)
;;     1825:4B3F (in fn1825_4A02)
;;     1825:4BEA (in fn1825_4B48)
;;     1825:53D7 (in fn1825_5154)
;;     1825:542C (in fn1825_5154)
;;     1825:583C (in fn1825_5730)
;;     1825:59B8 (in fn1825_5850)
;;     1825:5B23 (in fn1825_59CC)
;;     1825:5BD0 (in fn1825_5B30)
;;     1825:5E4C (in fn1825_5DB0)
fn1825_675E proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	call	far 1F38h:0517h
	mov	al,ah
	sub	ah,ah
	mov	[bp-2h],ax
	call	far 1F38h:0517h
	sub	ah,ah
	mov	[bp-4h],ax
	les	bx,[bp+10h]
	cmp	word ptr es:[bx+6h],0h
	jz	67ACh

l1825_6784:
	mov	ax,[bp+0Eh]
	shr	ax,1h
	add	ax,[bp+8h]
	sub	ax,4h
	push	ax
	push	word ptr [bp+6h]
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,8h
	push	ax
	mov	ax,5AD4h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h

l1825_67AC:
	les	bx,[bp+10h]
	cmp	word ptr es:[bx+8h],0h
	jz	67DEh

l1825_67B6:
	mov	ax,[bp+0Eh]
	shr	ax,1h
	add	ax,[bp+8h]
	sub	ax,4h
	push	ax
	push	word ptr [bp+0Ah]
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,8h
	push	ax
	mov	ax,5ADEh
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h

l1825_67DE:
	push	word ptr [bp-4h]
	push	word ptr [bp-2h]
	call	far 1F38h:04E7h
	mov	sp,bp
	pop	bp
	retf
1825:67ED                                        90                    .  

;; fn1825_67EE: 1825:67EE
;;   Called from:
;;     1825:2569 (in fn1825_2450)
;;     1825:299B (in fn1825_2880)
;;     1825:2B2D (in fn1825_2A26)
;;     1825:370F (in fn1825_3436)
;;     1825:3881 (in fn1825_3766)
;;     1825:4ACC (in fn1825_4A02)
;;     1825:5499 (in fn1825_5154)
;;     1825:5605 (in fn1825_54D4)
;;     1825:5AB0 (in fn1825_59CC)
;;     1825:5D21 (in fn1825_5BD8)
fn1825_67EE proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	push	si
	les	bx,[bp+6h]
	mov	ax,es:[bx+20h]
	mov	dx,es:[bx+22h]
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	sub	ax,ax
	push	ax
	mov	ax,8h
	push	ax
	call	far 3431h:07B6h
	add	sp,4h
	les	bx,[bp+6h]
	mov	es:[bx+0Ah],ax
	cmp	ax,10h
	jnz	6824h

l1825_6821:
	jmp	68DCh

l1825_6824:
	jbe	6829h

l1825_6826:
	jmp	6AB0h

l1825_6829:
	sub	ax,1h
	cmp	ax,0Eh
	jbe	6834h

l1825_6831:
	jmp	6AFDh

l1825_6834:
	add	ax,ax
	xchg	bx,ax
	jmp	word ptr cs:[bx+6A92h]

l1825_683C:
	les	bx,[bp+6h]
	mov	word ptr es:[bx+4h],1h
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	push	cs
	call	6D80h
	add	sp,4h
	jmp	6AFDh
1825:6855                90                                    .          

l1825_6856:
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	push	cs
	call	6B02h
	add	sp,8h
	les	bx,[bp+6h]
	mov	es:[bx+0Ah],ax
	cmp	ax,0BB8h
	jz	6878h

l1825_6875:
	jmp	6AFDh

l1825_6878:
	les	bx,[bp-4h]
	mov	word ptr es:[bx+18h],3h
	jmp	6AFDh

l1825_6884:
	cmp	word ptr [bp+0Ah],1h
	jnz	689Dh

l1825_688A:
	les	bx,[bp+6h]
	mov	ax,es:[bx+12h]
	mov	es:[bx+0Ch],ax
	mov	ax,es:[bx+1Ah]
	mov	es:[bx+18h],ax

l1825_689D:
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+0Ch],0h
	jnz	68AAh

l1825_68A7:
	jmp	6AFDh

l1825_68AA:
	mov	ax,es:[bx+0Ch]
	dec	ax
	cmp	ax,es:[bx+0Eh]
	jnc	68B8h

l1825_68B5:
	jmp	6AFDh

l1825_68B8:
	dec	word ptr es:[bx+0Ch]
	mov	ax,es:[bx+18h]
	dec	ax
	cmp	ax,es:[bx+1Ah]
	jc	68D0h

l1825_68C7:
	dec	word ptr es:[bx+18h]
	pop	si
	mov	sp,bp
	pop	bp
	retf

l1825_68D0:
	dec	word ptr es:[bx+12h]

l1825_68D4:
	mov	word ptr es:[bx],1h
	jmp	6AFDh

l1825_68DC:
	cmp	word ptr [bp+0Ah],1h
	jnz	68FCh

l1825_68E2:
	mov	ax,es:[bx+12h]
	add	ax,es:[bx+14h]
	dec	ax
	mov	es:[bx+0Ch],ax
	mov	ax,es:[bx+1Ah]
	add	ax,es:[bx+14h]
	dec	ax
	mov	es:[bx+18h],ax

l1825_68FC:
	les	bx,[bp+6h]
	mov	ax,es:[bx+0Ch]
	inc	ax
	cmp	ax,es:[bx+10h]
	jbe	690Dh

l1825_690A:
	jmp	6AFDh

l1825_690D:
	inc	word ptr es:[bx+0Ch]
	mov	ax,es:[bx+18h]
	inc	ax
	cmp	ax,es:[bx+1Ch]
	ja	6926h

l1825_691C:
	inc	word ptr es:[bx+18h]
	pop	si
	mov	sp,bp
	pop	bp
	retf
1825:6925                90                                    .          

l1825_6926:
	inc	word ptr es:[bx+12h]
	jmp	68D4h

l1825_692C:
	mov	bx,[bp+6h]
	mov	ax,es:[bx+12h]
	mov	es:[bx+0Ch],ax
	mov	ax,es:[bx+1Ah]

l1825_693B:
	mov	es:[bx+18h],ax
	jmp	6AFDh

l1825_6942:
	mov	bx,[bp+6h]
	mov	ax,es:[bx+12h]
	add	ax,es:[bx+14h]
	dec	ax
	mov	es:[bx+0Ch],ax
	mov	ax,es:[bx+1Ah]
	add	ax,es:[bx+14h]
	dec	ax
	jmp	693Bh
1825:695D                                        90                    .  

l1825_695E:
	les	bx,[bp+6h]
	mov	ax,es:[bx+12h]
	sub	ax,es:[bx+0Eh]
	cmp	ax,es:[bx+1Eh]
	jbe	697Eh

l1825_696F:
	mov	ax,es:[bx+1Eh]
	sub	es:[bx+12h],ax
	sub	es:[bx+0Ch],ax
	jmp	6A47h

l1825_697E:
	mov	ax,es:[bx+0Eh]
	mov	es:[bx+12h],ax
	mov	es:[bx+0Ch],ax

l1825_698A:
	mov	ax,es:[bx+1Ah]
	jmp	6A43h
1825:6991    90                                            .              

l1825_6992:
	les	bx,[bp+6h]
	mov	ax,es:[bx+12h]
	add	ax,es:[bx+1Eh]
	cmp	ax,es:[bx+10h]
	ja	69C4h

l1825_69A3:
	mov	ax,es:[bx+1Eh]
	add	es:[bx+12h],ax
	mov	ax,es:[bx+0Ch]
	add	ax,es:[bx+1Eh]
	cmp	ax,es:[bx+10h]
	ja	6A2Fh

l1825_69B9:
	mov	ax,es:[bx+1Eh]
	add	es:[bx+0Ch],ax
	jmp	6A47h

l1825_69C4:
	mov	ax,es:[bx+10h]
	mov	es:[bx+0Ch],ax
	mov	ax,es:[bx+1Ah]
	add	ax,es:[bx+10h]
	sub	ax,es:[bx+12h]
	jmp	693Bh
1825:69DB                                  90                        .    

l1825_69DC:
	les	bx,[bp+6h]
	mov	ax,es:[bx+0Eh]
	mov	es:[bx+0Ch],ax
	mov	es:[bx+12h],ax
	jmp	698Ah
1825:69ED                                        90                    .  

l1825_69EE:
	les	bx,[bp+6h]
	mov	ax,es:[bx+12h]
	add	ax,es:[bx+1Eh]
	cmp	ax,es:[bx+10h]
	ja	69C4h

l1825_69FF:
	mov	ax,es:[bx+10h]
	sub	dx,dx
	div	word ptr es:[bx+1Eh]
	mov	si,dx
	or	si,si
	jz	6A18h

l1825_6A0F:
	mov	ax,es:[bx+10h]
	sub	ax,si
	jmp	6A2Ah
1825:6A17                      90                                .        

l1825_6A18:
	mov	ax,es:[bx+10h]
	sub	ax,es:[bx+1Eh]
	sub	dx,dx
	div	word ptr es:[bx+1Eh]
	mul	word ptr es:[bx+1Eh]

l1825_6A2A:
	inc	ax
	mov	es:[bx+12h],ax

l1825_6A2F:
	mov	ax,es:[bx+10h]
	mov	es:[bx+0Ch],ax
	mov	ax,es:[bx+1Ah]
	add	ax,es:[bx+10h]
	sub	ax,es:[bx+12h]

l1825_6A43:
	mov	es:[bx+18h],ax

l1825_6A47:
	les	bx,[bp+6h]
	jmp	68D4h
1825:6A4D                                        90                    .  

l1825_6A4E:
	mov	word ptr [0A24h],1h
	mov	word ptr [0A26h],0h
	jmp	6AFDh
1825:6A5D                                        90                    .  

l1825_6A5E:
	mov	word ptr [0A24h],1h
	mov	word ptr [0A26h],1h
	jmp	6AFDh
1825:6A6D                                        90                    .  

l1825_6A6E:
	mov	word ptr [0A24h],1h
	mov	word ptr [0A26h],2h
	pop	si
	mov	sp,bp
	pop	bp
	retf
1825:6A7F                                              90                .

l1825_6A80:
	mov	word ptr [0A24h],1h
	mov	word ptr [0A26h],3h
	pop	si
	mov	sp,bp
	pop	bp
	retf
1825:6A91    90                                            .              
l1825_6A92	dw	0x6856
l1825_6A94	dw	0x6AFD
l1825_6A96	dw	0x6AFD
l1825_6A98	dw	0x6AFD
l1825_6A9A	dw	0x6AFD
l1825_6A9C	dw	0x6AFD
l1825_6A9E	dw	0x6AFD
l1825_6AA0	dw	0x6AFD
l1825_6AA2	dw	0x692C
l1825_6AA4	dw	0x6942
l1825_6AA6	dw	0x6AFD
l1825_6AA8	dw	0x6AFD
l1825_6AAA	dw	0x6AFD
l1825_6AAC	dw	0x6AFD
l1825_6AAE	dw	0x6884

l1825_6AB0:
	cmp	ax,22h
	jnz	6AB8h

l1825_6AB5:
	jmp	69DCh

l1825_6AB8:
	ja	6AD8h

l1825_6ABA:
	cmp	ax,14h
	jnz	6AC2h

l1825_6ABF:
	jmp	683Ch

l1825_6AC2:
	cmp	ax,20h
	jnz	6ACAh

l1825_6AC7:
	jmp	695Eh

l1825_6ACA:
	cmp	ax,21h
	jnz	6AD2h

l1825_6ACF:
	jmp	6992h

l1825_6AD2:
	pop	si
	mov	sp,bp
	pop	bp
	retf
1825:6AD7                      90                                .        

l1825_6AD8:
	cmp	ax,23h
	jnz	6AE0h

l1825_6ADD:
	jmp	69EEh

l1825_6AE0:
	cmp	ax,89h
	jnz	6AE8h

l1825_6AE5:
	jmp	6A4Eh

l1825_6AE8:
	cmp	ax,8Ah
	jnz	6AF0h

l1825_6AED:
	jmp	6A5Eh

l1825_6AF0:
	cmp	ax,8Bh
	jnz	6AF8h

l1825_6AF5:
	jmp	6A6Eh

l1825_6AF8:
	cmp	ax,8Ch
	jz	6A80h

l1825_6AFD:
	pop	si
	mov	sp,bp
	pop	bp
	retf

;; fn1825_6B02: 1825:6B02
;;   Called from:
;;     1825:04AB (in fn1825_037E)
;;     1825:084B (in fn1825_06E0)
;;     1825:12A1 (in fn1825_0E72)
;;     1825:1C45 (in fn1825_18A6)
;;     1825:6574 (in fn1825_648A)
;;     1825:6862 (in fn1825_67EE)
fn1825_6B02 proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	les	bx,[bp+0Ah]
	mov	ax,es:[bx+0Ah]
	mov	[bp-4h],ax
	mov	word ptr [bp-2h],0h
	mov	ax,[0F17h]
	sub	ax,110h
	cmp	ax,20h
	jbe	6B25h

l1825_6B22:
	jmp	6CA4h

l1825_6B25:
	add	ax,ax
	xchg	bx,ax
	jmp	word ptr cs:[bx+6CACh]
1825:6B2D                                        90                    .  

l1825_6B2E:
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	mov	ax,0Ah

l1825_6B37:
	push	ax
	push	cs
	call	6D08h
	add	sp,6h
	or	ax,ax
	jnz	6B46h

l1825_6B43:
	jmp	6CEEh

l1825_6B46:
	les	bx,[bp+0Ah]
	mov	word ptr es:[bx+2h],0h
	les	bx,[bp+6h]
	mov	word ptr es:[bx+1Ah],0h
	mov	word ptr es:[bx+4h],1h
	mov	word ptr es:[bx+6h],0h
	mov	word ptr es:[bx+0Ch],1h
	mov	word ptr es:[bx+0Eh],1h

l1825_6B70:
	mov	word ptr [bp-2h],1h
	jmp	6CEEh

l1825_6B78:
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	mov	ax,14h
	jmp	6B37h
1825:6B83          90                                        .            

l1825_6B84:
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	mov	ax,1Eh
	jmp	6B37h
1825:6B8F                                              90                .

l1825_6B90:
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	mov	ax,28h
	jmp	6B37h
1825:6B9B                                  90                        .    

l1825_6B9C:
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	les	bx,[bp+6h]
	mov	ax,es:[bx+8h]
	add	ax,29h
	push	ax
	push	cs
	call	6D08h
	add	sp,6h
	or	ax,ax
	jnz	6BBBh

l1825_6BB8:
	jmp	6CEEh

l1825_6BBB:
	les	bx,[bp+0Ah]
	mov	word ptr es:[bx+2h],1h
	les	bx,[bp+6h]
	mov	word ptr es:[bx+1Ah],1h
	mov	word ptr es:[bx+4h],1h
	mov	word ptr es:[bx+0Ch],1h
	mov	word ptr es:[bx+0Eh],0h
	mov	word ptr es:[bx+6h],0h
	jmp	6B70h
1825:6BE7                      90                                .        

l1825_6BE8:
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	mov	ax,32h

l1825_6BF1:
	push	ax
	push	cs
	call	6D08h
	add	sp,6h
	or	ax,ax
	jnz	6C00h

l1825_6BFD:
	jmp	6CEEh

l1825_6C00:
	les	bx,[bp+0Ah]
	mov	word ptr es:[bx+2h],1h
	les	bx,[bp+6h]
	mov	word ptr es:[bx+1Ah],1h

l1825_6C12:
	mov	word ptr es:[bx+4h],1h
	mov	word ptr es:[bx+6h],0h
	mov	word ptr es:[bx+0Ch],1h
	mov	word ptr es:[bx+0Eh],0h
	jmp	6B70h
1825:6C2D                                        90                    .  

l1825_6C2E:
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	mov	ax,3Ch
	jmp	6B37h

l1825_6C3A:
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	mov	ax,3Eh
	jmp	6BF1h
1825:6C45                90                                    .          

l1825_6C46:
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	mov	ax,0Eh
	jmp	6BF1h
1825:6C51    90                                            .              

l1825_6C52:
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	mov	ax,11h
	push	ax
	push	cs
	call	6D08h
	add	sp,6h
	or	ax,ax
	jnz	6C6Ah

l1825_6C67:
	jmp	6CEEh

l1825_6C6A:
	les	bx,[bp+0Ah]
	mov	word ptr es:[bx+2h],0h
	les	bx,[bp+6h]
	mov	word ptr es:[bx+1Ah],0h
	jmp	6C12h
1825:6C7E                                           90 90               ..

l1825_6C80:
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	mov	ax,0Ch
	jmp	6BF1h

l1825_6C8C:
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	mov	ax,0Bh
	jmp	6BF1h

l1825_6C98:
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	mov	ax,0Dh
	jmp	6BF1h

l1825_6CA4:
	mov	word ptr [bp-2h],0h
	jmp	6CEEh
1825:6CAB                                  90                        .    
l1825_6CAC	dw	0x6C52
l1825_6CAE	dw	0x6C2E
l1825_6CB0	dw	0x6CA4
l1825_6CB2	dw	0x6CA4
l1825_6CB4	dw	0x6CA4
l1825_6CB6	dw	0x6CA4
l1825_6CB8	dw	0x6CA4
l1825_6CBA	dw	0x6CA4
l1825_6CBC	dw	0x6CA4
l1825_6CBE	dw	0x6C3A
l1825_6CC0	dw	0x6CA4
l1825_6CC2	dw	0x6CA4
l1825_6CC4	dw	0x6CA4
l1825_6CC6	dw	0x6CA4
l1825_6CC8	dw	0x6C80
l1825_6CCA	dw	0x6C46
l1825_6CCC	dw	0x6CA4
l1825_6CCE	dw	0x6B9C
l1825_6CD0	dw	0x6C8C
l1825_6CD2	dw	0x6B90
l1825_6CD4	dw	0x6CA4
l1825_6CD6	dw	0x6C98
l1825_6CD8	dw	0x6CA4
l1825_6CDA	dw	0x6CA4
l1825_6CDC	dw	0x6CA4
l1825_6CDE	dw	0x6CA4
l1825_6CE0	dw	0x6CA4
l1825_6CE2	dw	0x6CA4
l1825_6CE4	dw	0x6B2E
l1825_6CE6	dw	0x6B78
l1825_6CE8	dw	0x6CA4
l1825_6CEA	dw	0x6B84
l1825_6CEC	dw	0x6BE8

l1825_6CEE:
	cmp	word ptr [bp-2h],0h
	jz	6CFCh

l1825_6CF4:
	mov	word ptr [bp-4h],0BB8h
	jmp	6D01h
1825:6CFB                                  90                        .    

l1825_6CFC:
	mov	word ptr [bp-4h],1h

l1825_6D01:
	mov	ax,[bp-4h]
	mov	sp,bp
	pop	bp
	retf

;; fn1825_6D08: 1825:6D08
;;   Called from:
;;     1825:00CC (in fn1825_000A)
;;     1825:6B38 (in fn1825_6B02)
;;     1825:6BAD (in fn1825_6B02)
;;     1825:6BF2 (in fn1825_6B02)
;;     1825:6C5C (in fn1825_6B02)
;;     1825:6DAA (in fn1825_6D80)
fn1825_6D08 proc
	push	bp
	mov	bp,sp
	sub	sp,2h
	push	si
	mov	word ptr [bp-2h],0h
	les	bx,[bp+8h]
	mov	ax,[bp+6h]
	cmp	es:[bx+16h],ax
	jz	6D77h

l1825_6D20:
	mov	ax,es:[bx+16h]
	mov	es:[bx+1Ch],ax
	mov	ax,[bp+6h]
	sub	dx,dx
	mov	cx,0Ah
	div	cx
	mov	si,ax
	or	si,si
	jz	6D42h

l1825_6D38:
	lea	ax,[si-1h]
	mov	es:[bx+8h],ax
	jmp	6D48h
1825:6D41    90                                            .              

l1825_6D42:
	mov	word ptr es:[bx+8h],0h

l1825_6D48:
	mov	ax,[bp+6h]
	sub	dx,dx
	mov	cx,0Ah
	div	cx
	mov	si,dx
	or	si,si
	jz	6D62h

l1825_6D58:
	lea	ax,[si-1h]
	mov	es:[bx+10h],ax
	jmp	6D6Bh
1825:6D61    90                                            .              

l1825_6D62:
	les	bx,[bp+8h]
	mov	word ptr es:[bx+10h],0h

l1825_6D6B:
	mov	ax,[bp+6h]
	mov	es:[bx+16h],ax
	mov	word ptr [bp-2h],1h

l1825_6D77:
	mov	ax,[bp-2h]
	pop	si
	mov	sp,bp
	pop	bp
	retf
1825:6D7F                                              90                .

;; fn1825_6D80: 1825:6D80
;;   Called from:
;;     1825:010D (in fn1825_000A)
;;     1825:1286 (in fn1825_0E72)
;;     1825:1C24 (in fn1825_18A6)
;;     1825:684B (in fn1825_67EE)
fn1825_6D80 proc
	push	bp
	mov	bp,sp
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+1Ah],0h
	jnz	6DA4h

l1825_6D8D:
	mov	ax,es:[bx+16h]
	sub	dx,dx
	mov	cx,0Ah
	div	cx
	or	dx,dx
	jz	6DDDh

l1825_6D9C:
	mov	word ptr es:[bx+6h],0h
	jmp	6DE3h

l1825_6DA4:
	push	es
	push	bx
	push	word ptr es:[bx+1Ch]
	push	cs
	call	6D08h
	add	sp,6h
	les	bx,[bp+6h]
	mov	ax,es:[bx+18h]
	or	ax,ax
	jz	6DCEh

l1825_6DBC:
	cmp	ax,1h
	jz	6DDDh

l1825_6DC1:
	cmp	ax,2h
	jz	6D9Ch

l1825_6DC6:
	cmp	ax,3h
	jz	6E0Ah

l1825_6DCB:
	jmp	6DE9h
1825:6DCD                                        90                    .  

l1825_6DCE:
	mov	ax,es:[bx+16h]
	sub	dx,dx
	mov	cx,0Ah
	div	cx
	or	dx,dx
	jnz	6D9Ch

l1825_6DDD:
	mov	word ptr es:[bx+6h],1h

l1825_6DE3:
	mov	word ptr es:[bx+0Eh],1h

l1825_6DE9:
	mov	word ptr es:[bx+4h],1h
	mov	word ptr es:[bx+0Ch],1h
	mov	word ptr es:[bx+18h],0h
	mov	word ptr es:[bx+1Ah],0h
	mov	word ptr es:[bx+16h],0h
	pop	bp
	retf
1825:6E09                            90                            .      

l1825_6E0A:
	mov	word ptr es:[bx+6h],0h
	mov	word ptr es:[bx+0Eh],0h
	jmp	6DE9h

;; fn1825_6E18: 1825:6E18
;;   Called from:
;;     1825:294A (in fn1825_2880)
;;     1825:5198 (in fn1825_5154)
;;     1825:5570 (in fn1825_54D4)
;;     1825:579F (in fn1825_5730)
;;     1825:58C4 (in fn1825_5850)
;;     1825:5908 (in fn1825_5850)
;;     1825:591D (in fn1825_5850)
;;     1825:59D6 (in fn1825_59CC)
;;     1825:5A7B (in fn1825_59CC)
fn1825_6E18 proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	push	si
	mov	word ptr [bp-4h],1h
	mov	ax,[128Ah]
	mov	[bp-2h],ax
	jmp	6E49h

l1825_6E2C:
	mov	ax,[bp+6h]
	cmp	[bp-4h],ax
	jnc	6E4Fh

l1825_6E34:
	mov	ax,16h
	mul	word ptr [bp-2h]
	mov	bx,ax
	les	si,[1282h]
	mov	ax,es:[bx+si]
	mov	[bp-2h],ax
	inc	word ptr [bp-4h]

l1825_6E49:
	cmp	word ptr [bp-2h],0h
	jnz	6E2Ch

l1825_6E4F:
	mov	ax,[bp-2h]
	pop	si
	mov	sp,bp
	pop	bp
	retf
1825:6E57                      90                                .        

;; fn1825_6E58: 1825:6E58
;;   Called from:
;;     1825:59E2 (in fn1825_59CC)
fn1825_6E58 proc
	push	bp
	mov	bp,sp
	sub	sp,6h
	push	si
	mov	ax,[128Ah]
	mov	[bp-2h],ax
	mov	ax,[1288h]
	mov	[bp-4h],ax
	mov	word ptr [bp-6h],1h
	jmp	6E96h

l1825_6E72:
	mov	ax,[bp+6h]
	cmp	[bp-6h],ax
	jnc	6E9Ch

l1825_6E7A:
	mov	ax,[bp-2h]
	dec	ax
	mov	[bp-4h],ax
	mov	ax,16h
	mul	word ptr [bp-2h]
	mov	bx,ax
	les	si,[1282h]
	mov	ax,es:[bx+si]
	mov	[bp-2h],ax
	inc	word ptr [bp-6h]

l1825_6E96:
	cmp	word ptr [bp-2h],0h
	jnz	6E72h

l1825_6E9C:
	mov	ax,[bp-4h]
	pop	si
	mov	sp,bp
	pop	bp
	retf

;; fn1825_6EA4: 1825:6EA4
;;   Called from:
;;     1825:16CD (in fn1825_139A)
;;     1825:50DD (in fn1825_4DA6)
fn1825_6EA4 proc
	push	bp
	mov	bp,sp
	sub	sp,10h
	mov	word ptr [bp-0Ch],1h
	call	far 1F38h:0517h
	mov	al,ah
	sub	ah,ah
	mov	[bp-8h],ax
	call	far 1F38h:0517h
	sub	ah,ah
	mov	[bp-10h],ax
	mov	word ptr [bp-6h],0Ah
	mov	word ptr [bp-0Eh],14h
	mov	word ptr [bp-4h],12h
	mov	word ptr [bp-2h],3Ch
	mov	word ptr [0A08h],0Ah
	mov	word ptr [0A0Ah],14h
	mov	word ptr [0A0Ch],12h
	mov	word ptr [0A0Eh],3Ch
	mov	word ptr [0A10h],0h
	sub	ax,ax
	mov	[0A14h],ax
	mov	[0A12h],ax
	cmp	[0F02h],ax
	jz	6F11h

l1825_6F05:
	mov	ax,0A08h
	push	ds
	push	ax
	push	cs
	call	703Ch
	add	sp,4h

l1825_6F11:
	mov	ax,0A5Eh
	push	ds
	push	ax
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	push	word ptr [bp-0Eh]
	push	word ptr [bp-6h]
	call	far 1F38h:05DBh
	add	sp,0Ch
	mov	ax,0A36h
	push	ds
	push	ax
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	push	word ptr [bp-0Eh]
	push	word ptr [bp-6h]
	call	far 1F38h:05DBh
	add	sp,0Ch
	mov	ax,[bp+6h]
	cmp	ax,1h
	jnz	6F4Eh

l1825_6F4B:
	jmp	6FFCh

l1825_6F4E:
	cmp	ax,2h
	jnz	6F56h

l1825_6F53:
	jmp	701Ch

l1825_6F56:
	cmp	ax,3h
	jnz	6F82h

l1825_6F5B:
	mov	ax,[bp-0Eh]
	add	ax,0Bh
	push	ax
	mov	ax,[bp-6h]
	add	ax,2h
	push	ax
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,11h
	push	ax
	mov	ax,5AE8h

l1825_6F78:
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h

l1825_6F82:
	mov	ax,[bp-0Eh]
	add	ax,0Ah
	push	ax
	mov	ax,[bp-6h]
	add	ax,5h
	push	ax
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,14h
	push	ax
	mov	ax,5B28h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	sub	ax,ax
	push	ax
	mov	ax,8h
	push	ax
	call	far 3431h:07B6h
	add	sp,4h
	mov	[bp-0Ch],ax
	mov	ax,0A5Eh
	push	ds
	push	ax
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	push	word ptr [bp-0Eh]
	push	word ptr [bp-6h]
	call	far 1F38h:05DBh
	add	sp,0Ch
	cmp	word ptr [0F02h],0h
	jz	6FE7h

l1825_6FDB:
	mov	ax,0A08h
	push	ds
	push	ax
	push	cs
	call	704Eh
	add	sp,4h

l1825_6FE7:
	push	word ptr [bp-10h]
	push	word ptr [bp-8h]
	call	far 1F38h:04E7h
	add	sp,4h
	sub	ax,ax
	mov	sp,bp
	pop	bp
	retf
1825:6FFB                                  90                        .    

l1825_6FFC:
	mov	ax,[bp-0Eh]
	add	ax,0Ah
	push	ax
	mov	ax,[bp-6h]
	add	ax,2h
	push	ax
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,13h
	push	ax
	mov	ax,5AFAh
	jmp	6F78h

l1825_701C:
	mov	ax,[bp-0Eh]
	add	ax,7h
	push	ax
	mov	ax,[bp-6h]
	add	ax,2h
	push	ax
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,19h
	push	ax
	mov	ax,5B0Eh
	jmp	6F78h

;; fn1825_703C: 1825:703C
;;   Called from:
;;     1825:6F0A (in fn1825_6EA4)
fn1825_703C proc
	push	bp
	mov	bp,sp
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	4CFEh
	add	sp,4h
	pop	bp
	retf

;; fn1825_704E: 1825:704E
;;   Called from:
;;     1825:6FE0 (in fn1825_6EA4)
fn1825_704E proc
	push	bp
	mov	bp,sp
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	4D78h
	add	sp,4h
	les	bx,[bp+6h]
	push	word ptr es:[bx+8h]
	push	word ptr es:[bx+0Ch]
	push	word ptr es:[bx+0Ah]
	call	far 21DCh:09B4h
	add	sp,6h
	pop	bp
	retf
1825:7077                      90                                .        

;; fn1825_7078: 1825:7078
;;   Called from:
;;     1825:006D (in fn1825_000A)
;;     1825:2300 (in fn1825_22BC)
;;     1825:615D (in fn1825_6078)
fn1825_7078 proc
	push	bp
	mov	bp,sp
	cmp	word ptr [bp+6h],0h
	jz	70A8h

l1825_7081:
	mov	word ptr [0EF2h],80h
	mov	word ptr [0EF4h],1h
	mov	word ptr [0EF6h],0h
	mov	word ptr [0EF8h],2h
	mov	word ptr [0EFAh],0h
	mov	word ptr [0EFCh],2h
	jmp	70CCh
1825:70A7                      90                                .        

l1825_70A8:
	mov	word ptr [0EF2h],80h
	mov	word ptr [0EF4h],40h
	mov	word ptr [0EF6h],100h
	mov	word ptr [0EF8h],40h
	mov	word ptr [0EFAh],100h
	mov	word ptr [0EFCh],40h

l1825_70CC:
	call	far 1F38h:07E7h
	pop	bp
	retf
1825:70D3          90                                        .            

;; fn1825_70D4: 1825:70D4
;;   Called from:
;;     1825:0065 (in fn1825_000A)
;;     1825:22F8 (in fn1825_22BC)
fn1825_70D4 proc
	mov	ax,[0EF2h]
	mov	[0C10h],ax
	mov	ax,[0EF4h]
	mov	[0C12h],ax
	mov	ax,[0EF6h]
	mov	[0C14h],ax
	mov	ax,[0EF8h]
	mov	[0C16h],ax
	mov	ax,[0EFAh]
	mov	[0C18h],ax
	mov	ax,[0EFCh]
	mov	[0C1Ah],ax
	mov	ax,[0EFEh]
	mov	[0C1Ch],ax
	mov	ax,[0F00h]
	mov	[0C1Eh],ax
	retf
1825:7105                90                                    .          

;; fn1825_7106: 1825:7106
;;   Called from:
;;     1825:013F (in fn1825_000A)
;;     1825:0D8B (in fn1825_0D5E)
;;     1825:2314 (in fn1825_22BC)
;;     1825:609D (in fn1825_6078)
fn1825_7106 proc
	mov	ax,[0C10h]
	mov	[0EF2h],ax
	mov	ax,[0C12h]
	mov	[0EF4h],ax
	mov	ax,[0C14h]
	mov	[0EF6h],ax
	mov	ax,[0C16h]
	mov	[0EF8h],ax
	mov	ax,[0C18h]
	mov	[0EFAh],ax
	mov	ax,[0C1Ah]
	mov	[0EFCh],ax
	call	far 1F38h:07E7h
	retf
