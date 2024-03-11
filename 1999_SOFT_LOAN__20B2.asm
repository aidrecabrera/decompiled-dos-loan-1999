;;; Segment 20B2 (20B2:0000)
20B2:0000 8B DF 8A FC 89 1E CC 10 5B 1F B0 03 CF 00       ........[.....  

;; fn20B2_000E: 20B2:000E
;;   Called from:
;;     20B2:00FB (in fn20B2_005C)
fn20B2_000E proc
	push	bp
	mov	bp,sp
	sub	sp,12h
	push	si
	mov	ax,10h
	push	ax
	push	word ptr [bp+6h]
	lea	ax,[bp-10h]
	push	ss
	push	ax
	call	far 38D6h:0D68h
	add	sp,8h
	mov	word ptr [bp-12h],0h

l20B2_002E:
	mov	si,[bp-12h]
	cmp	byte ptr [bp+si-10h],20h
	jnz	0040h

l20B2_0037:
	inc	word ptr [bp-12h]
	cmp	word ptr [bp-12h],10h
	jc	002Eh

l20B2_0040:
	mov	ax,0Fh
	sub	ax,[bp-12h]
	push	ax
	mov	si,[bp-12h]
	lea	ax,[bp+si-10h]
	push	ss
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	pop	si
	mov	sp,bp
	pop	bp
	retf

;; fn20B2_005C: 20B2:005C
;;   Called from:
;;     20B2:014A (in fn20B2_0140)
;;     20B2:1088 (in fn20B2_107C)
;;     20B2:10BB (in fn20B2_10AC)
fn20B2_005C proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	push	si
	call	far 1F38h:0517h
	mov	[1144h],ax
	sub	ax,ax
	push	ax
	push	ax
	call	far 1F38h:04E7h
	add	sp,4h
	call	far 1F38h:08CBh
	cmp	word ptr [128Ah],0h
	jz	00A8h

l20B2_0083:
	mov	ax,16h
	mul	word ptr [128Ah]
	mov	si,ax
	les	bx,[1282h]
	push	word ptr es:[bx+si+14h]
	push	word ptr es:[bx+si+12h]
	call	far 2BC7h:050Ah
	add	sp,4h
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	jmp	00B1h

l20B2_00A8:
	mov	ax,5B3Eh
	mov	[bp-4h],ax
	mov	[bp-2h],ds

l20B2_00B1:
	mov	ax,5h
	push	ax
	mov	ax,5B48h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	call	far 2017h:03F5h
	add	sp,4h
	push	ax
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	call	far 1F38h:049Fh
	add	sp,6h
	cmp	word ptr [127Ah],0h
	jz	0102h

l20B2_00E6:
	mov	ax,6h
	push	ax
	mov	ax,5B4Eh
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	push	word ptr [127Ah]
	push	cs
	call	000Eh
	add	sp,2h

l20B2_0102:
	mov	ax,2h
	push	ax
	mov	ax,5B56h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	pop	si
	mov	sp,bp
	pop	bp
	retf

;; fn20B2_0118: 20B2:0118
;;   Called from:
;;     20B2:1051 (in fn20B2_1014)
fn20B2_0118 proc
	sub	ax,ax
	push	ax
	push	ax
	call	far 1F38h:04E7h
	add	sp,4h
	call	far 1F38h:08CBh
	mov	al,[1144h]
	sub	ah,ah
	push	ax
	mov	ax,[1144h]
	mov	cl,8h
	shr	ax,cl
	push	ax
	call	far 1F38h:04E7h
	add	sp,4h
	retf

;; fn20B2_0140: 20B2:0140
;;   Called from:
;;     20B2:01B1 (in fn20B2_0176)
;;     20B2:01EB (in fn20B2_01BA)
;;     20B2:0BFA (in fn20B2_0BDC)
;;     20B2:0E48 (in fn20B2_0BDC)
;;     20B2:0EEE (in fn20B2_0E9E)
;;     20B2:0F15 (in fn20B2_0EF6)
fn20B2_0140 proc
	push	bp
	mov	bp,sp
	cmp	word ptr [1278h],0h
	jnz	016Fh

l20B2_014A:
	push	cs
	call	005Ch
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 2017h:03F5h
	add	sp,4h
	push	ax
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 1F38h:049Fh
	add	sp,6h
	push	cs
	call	1014h

l20B2_016F:
	call	far 21DCh:04BAh
	pop	bp
	retf

;; fn20B2_0176: 20B2:0176
;;   Called from:
;;     20B2:0E05 (in fn20B2_0BDC)
;;     20B2:11CF (in fn20B2_1192)
;;     21DC:0307 (in fn21DC_01C4)
;;     2C27:0131 (in fn2C27_0112)
;;     2C27:0198 (in fn2C27_0140)
;;     2C27:03D4 (in fn2C27_03B4)
;;     2C27:053D (in fn2C27_0440)
;;     2D1A:0882 (in fn2D1A_07F6)
;;     2D1A:08FE (in fn2D1A_0890)
;;     2D1A:0AEE (in fn2D1A_0A76)
;;     2D1A:0D2A (in fn2D1A_0BD2)
;;     2EB3:13B2 (in fn2EB3_1206)
;;     2EB3:23E7 (in fn2EB3_2340)
;;     2EB3:262A (in fn2EB3_24C6)
fn20B2_0176 proc
	push	bp
	mov	bp,sp
	sub	sp,20h
	mov	ax,0Fh
	push	ax
	mov	ax,5B5Ah
	push	ds
	push	ax
	lea	ax,[bp-20h]
	push	ss
	push	ax
	call	far 2017h:02ECh
	add	sp,0Ah
	sub	ax,ax
	push	ax
	mov	ax,2h
	push	ax
	sub	ax,ax
	push	ax
	push	word ptr [bp+6h]
	lea	ax,[bp-11h]
	push	ss
	push	ax
	call	far 3CEEh:0EFCh
	add	sp,0Ch
	lea	ax,[bp-20h]
	push	ss
	push	ax
	push	cs
	call	0140h
	mov	sp,bp
	pop	bp
	retf
20B2:01B9                            90                            .      

;; fn20B2_01BA: 20B2:01BA
;;   Called from:
;;     20B2:04AE (in fn20B2_0474)
;;     20B2:0641 (in fn20B2_0612)
;;     20B2:07A4 (in fn20B2_0776)
;;     20B2:08B5 (in fn20B2_0898)
;;     20B2:09C6 (in fn20B2_099A)
;;     20B2:0AF7 (in fn20B2_0AC6)
;;     20B2:0F4F (in fn20B2_0EF6)
fn20B2_01BA proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 2BC7h:0494h
	add	sp,4h
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	or	ax,dx
	jz	01E5h

l20B2_01D8:
	les	bx,[bp-4h]
	mov	ax,es:[bx+0Eh]
	or	ax,es:[bx+10h]
	jnz	01F2h

l20B2_01E5:
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	push	cs
	call	0140h
	add	sp,4h

l20B2_01F2:
	mov	ax,[bp-4h]
	mov	dx,[bp-2h]
	mov	sp,bp
	pop	bp
	retf

;; fn20B2_01FC: 20B2:01FC
;;   Called from:
;;     20B2:09B1 (in fn20B2_099A)
fn20B2_01FC proc
	push	bp
	mov	bp,sp
	sub	sp,0Ch
	push	si
	les	bx,[1296h]
	mov	ax,es:[bx+0Ch]
	mov	[bp-2h],ax
	mov	word ptr [bp-8h],0h
	or	ax,ax
	jnz	021Ah

l20B2_0217:
	jmp	02C7h

l20B2_021A:
	cmp	ax,0FFFFh
	jnz	022Eh

l20B2_021F:
	mov	bx,[bp-8h]
	inc	word ptr [bp-8h]
	mov	byte ptr [bx+10E2h],4Dh
	jmp	02B1h
20B2:022D                                        90                    .  

l20B2_022E:
	cmp	word ptr [bp-2h],0FEh
	jnz	026Eh

l20B2_0234:
	push	word ptr [10E0h]
	push	word ptr [10DEh]

l20B2_023C:
	call	far 2BC7h:050Ah
	add	sp,4h
	mov	[bp-6h],ax
	mov	[bp-4h],dx
	push	dx
	push	ax
	call	far 2017h:03F5h
	add	sp,4h
	mov	[bp-8h],ax
	push	ax
	push	word ptr [bp-4h]
	push	word ptr [bp-6h]
	mov	ax,10E2h
	push	ds
	push	ax
	call	far 2017h:02ECh
	add	sp,0Ah
	jmp	02B1h
20B2:026D                                        90                    .  

l20B2_026E:
	mov	bx,[bp-2h]
	shl	bx,1h
	shl	bx,1h
	les	si,[130Ah]
	mov	ax,es:[bx+si]
	mov	dx,es:[bx+si+2h]
	mov	[bp-0Ch],ax
	mov	[bp-0Ah],dx
	or	ax,dx
	jz	02A2h

l20B2_028A:
	les	bx,[bp-0Ch]
	mov	ax,es:[bx+3Eh]
	or	ax,es:[bx+40h]
	jz	02A2h

l20B2_0297:
	push	word ptr es:[bx+40h]
	push	word ptr es:[bx+3Eh]
	jmp	023Ch
20B2:02A1    90                                            .              

l20B2_02A2:
	mov	bx,[bp-8h]
	inc	word ptr [bp-8h]
	mov	al,[bp-2h]
	add	al,40h
	mov	[bx+10E2h],al

l20B2_02B1:
	mov	bx,[bp-8h]
	inc	word ptr [bp-8h]
	mov	byte ptr [bx+10E2h],2Dh
	mov	bx,[bp-8h]
	inc	word ptr [bp-8h]
	mov	byte ptr [bx+10E2h],3Eh

l20B2_02C7:
	les	bx,[1296h]
	push	word ptr es:[bx+0Ah]
	push	word ptr es:[bx+8h]
	call	far 2BC7h:050Ah
	add	sp,4h
	mov	[bp-6h],ax
	mov	[bp-4h],dx
	push	dx
	push	ax
	call	far 2017h:03F5h
	add	sp,4h
	inc	ax
	push	ax
	push	word ptr [bp-4h]
	push	word ptr [bp-6h]
	mov	ax,[bp-8h]
	add	ax,10E2h
	push	ds
	push	ax
	call	far 2017h:02ECh
	add	sp,0Ah
	pop	si
	mov	sp,bp
	pop	bp
	retf

;; fn20B2_0308: 20B2:0308
;;   Called from:
;;     20B2:04C5 (in fn20B2_0474)
;;     20B2:0658 (in fn20B2_0612)
;;     20B2:07BB (in fn20B2_0776)
;;     20B2:08CC (in fn20B2_0898)
;;     20B2:09DD (in fn20B2_099A)
;;     20B2:0B0E (in fn20B2_0AC6)
fn20B2_0308 proc
	push	bp
	mov	bp,sp
	sub	sp,6h
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 2017h:03F5h
	add	sp,4h
	mov	[bp-6h],ax
	inc	ax
	push	ax
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	mov	ax,1104h
	push	ds
	push	ax
	call	far 2017h:02ECh
	add	sp,0Ah
	cmp	word ptr [bp+0Ah],0h
	jnz	033Dh

l20B2_033A:
	jmp	0470h

l20B2_033D:
	mov	ax,5h
	push	ax
	mov	ax,5B6Ah
	push	ds
	push	ax
	mov	ax,[bp-6h]
	add	ax,1104h
	push	ds
	push	ax
	call	far 2017h:02ECh
	add	sp,0Ah
	add	word ptr [bp-6h],5h
	jmp	044Eh
20B2:035D                                        90                    .  

l20B2_035E:
	test	byte ptr [bp+0Ah],4h
	jz	0374h

l20B2_0364:
	mov	ax,5B70h
	mov	[bp-4h],ax
	mov	[bp-2h],ds
	and	byte ptr [bp+0Ah],0FBh
	jmp	03F5h

l20B2_0374:
	test	byte ptr [bp+0Ah],8h
	jz	038Ah

l20B2_037A:
	mov	ax,5B7Ah
	mov	[bp-4h],ax
	mov	[bp-2h],ds
	and	byte ptr [bp+0Ah],0F7h
	jmp	03F5h
20B2:0389                            90                            .      

l20B2_038A:
	test	byte ptr [bp+0Ah],20h
	jz	03A0h

l20B2_0390:
	mov	ax,5B82h
	mov	[bp-4h],ax
	mov	[bp-2h],ds
	and	byte ptr [bp+0Ah],0DFh
	jmp	03F5h
20B2:039F                                              90                .

l20B2_03A0:
	test	byte ptr [bp+0Ah],2h
	jz	03B6h

l20B2_03A6:
	mov	ax,5B88h
	mov	[bp-4h],ax
	mov	[bp-2h],ds
	and	byte ptr [bp+0Ah],0FDh
	jmp	03F5h
20B2:03B5                90                                    .          

l20B2_03B6:
	test	byte ptr [bp+0Ah],80h
	jz	03CCh

l20B2_03BC:
	mov	ax,5B92h
	mov	[bp-4h],ax
	mov	[bp-2h],ds
	and	byte ptr [bp+0Ah],7Fh
	jmp	03F5h
20B2:03CB                                  90                        .    

l20B2_03CC:
	test	byte ptr [bp+0Ah],40h
	jz	03E2h

l20B2_03D2:
	mov	ax,5B98h
	mov	[bp-4h],ax
	mov	[bp-2h],ds
	and	byte ptr [bp+0Ah],0BFh
	jmp	03F5h
20B2:03E1    90                                            .              

l20B2_03E2:
	test	byte ptr [bp+0Ah],1h
	jz	03F5h

l20B2_03E8:
	mov	ax,5B9Eh
	mov	[bp-4h],ax
	mov	[bp-2h],ds
	and	byte ptr [bp+0Ah],0FEh

l20B2_03F5:
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	call	far 2017h:03F5h
	add	sp,4h
	push	ax
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	mov	ax,[bp-6h]
	add	ax,1104h
	push	ds
	push	ax
	call	far 2017h:02ECh
	add	sp,0Ah
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	call	far 2017h:03F5h
	add	sp,4h
	add	[bp-6h],ax
	cmp	word ptr [bp+0Ah],0h
	jz	044Eh

l20B2_0431:
	mov	ax,2h
	push	ax
	mov	ax,5BA4h
	push	ds
	push	ax
	mov	ax,[bp-6h]
	add	ax,1104h
	push	ds
	push	ax
	call	far 2017h:02ECh
	add	sp,0Ah
	add	word ptr [bp-6h],2h

l20B2_044E:
	cmp	word ptr [bp+0Ah],0h
	jz	0457h

l20B2_0454:
	jmp	035Eh

l20B2_0457:
	mov	ax,2h
	push	ax
	mov	ax,5BA8h
	push	ds
	push	ax
	mov	ax,[bp-6h]
	add	ax,1104h
	push	ds
	push	ax
	call	far 2017h:02ECh
	add	sp,0Ah

l20B2_0470:
	mov	sp,bp
	pop	bp
	retf

;; fn20B2_0474: 20B2:0474
;;   Called from:
;;     20B2:0D02 (in fn20B2_0BDC)
fn20B2_0474 proc
	push	bp
	mov	bp,sp
	sub	sp,70h
	push	di
	push	si
	mov	ax,[bp+6h]
	mov	cx,ax
	shl	ax,1h
	add	ax,cx
	shl	ax,1h
	shl	ax,1h
	mov	si,ax
	mov	al,[si+253Ch]
	sub	ah,ah
	mov	[bp-0Ah],ax
	mov	ax,[si+2544h]
	add	ax,307Ah
	mov	[bp-4h],ax
	mov	[bp-2h],ds
	push	ds
	push	ax
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	mov	ax,5BAAh
	push	ds
	push	ax
	push	cs
	call	01BAh
	add	sp,0Ch
	mov	[bp-20h],ax
	mov	[bp-1Eh],dx
	push	word ptr [10D4h]
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	cs
	call	0308h
	add	sp,6h
	cmp	word ptr [128Ah],0h
	jz	04F8h

l20B2_04D3:
	mov	ax,16h
	mul	word ptr [128Ah]
	mov	di,ax
	les	bx,[1282h]
	push	word ptr es:[bx+di+14h]
	push	word ptr es:[bx+di+12h]
	call	far 2BC7h:050Ah
	add	sp,4h
	mov	[bp-8h],ax
	mov	[bp-6h],dx
	jmp	0501h

l20B2_04F8:
	mov	ax,5BB6h
	mov	[bp-8h],ax
	mov	[bp-6h],ds

l20B2_0501:
	cmp	word ptr [bp-0Ah],0h
	jz	052Ah

l20B2_0507:
	mov	si,[bp-0Ah]
	mov	cl,4h
	shl	si,cl
	push	si
	mov	ax,[1296h]
	mov	dx,[1298h]
	sub	ax,si
	add	ax,10h
	push	dx
	push	ax
	lea	ax,[bp-70h]
	push	ss
	push	ax
	call	far 2017h:02ECh
	add	sp,0Ah

l20B2_052A:
	sub	ax,ax
	push	ax
	push	word ptr [bp-6h]
	push	word ptr [bp-8h]
	call	far 2368h:022Eh
	add	sp,6h
	push	word ptr [127Ah]
	call	far 2368h:01E0h
	add	sp,2h
	sub	ax,ax
	push	ax
	mov	ax,1104h
	push	ds
	push	ax
	call	far 2368h:022Eh
	add	sp,6h
	sub	ax,ax
	push	ax
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	call	far 2368h:022Eh
	add	sp,6h
	mov	word ptr [bp-0Ch],0h
	jmp	059Ah
20B2:056F                                              90                .

l20B2_0570:
	add	word ptr [1296h],10h
	les	bx,[1296h]
	mov	si,[bp-0Ch]
	mov	cl,4h
	shl	si,cl
	mov	di,bx
	lea	si,[bp+si-70h]
	mov	cx,8h
	rep movsw
	test	word ptr es:[bx],100h
	jz	0597h

l20B2_0591:
	mov	word ptr es:[bx+0Ch],0h

l20B2_0597:
	inc	word ptr [bp-0Ch]

l20B2_059A:
	mov	ax,[bp-0Ah]
	cmp	[bp-0Ch],ax
	jc	0570h

l20B2_05A2:
	push	word ptr [bp-1Eh]
	push	word ptr [bp-20h]
	call	far 2368h:030Eh
	add	sp,4h
	mov	ax,[bp-0Ah]
	add	ax,4h
	push	ax
	call	far 21DCh:00A6h
	add	sp,2h
	call	far 21DCh:0368h
	cmp	word ptr [10D2h],65h
	jz	060Ch

l20B2_05CB:
	mov	ax,[1296h]
	mov	dx,[1298h]
	sub	word ptr [1296h],10h
	lea	di,[bp-1Ch]
	mov	si,ax
	push	ss
	pop	es
	push	ds
	mov	ds,dx
	mov	cx,8h
	rep movsw
	pop	ds
	jmp	05EFh
20B2:05E9                            90                            .      

l20B2_05EA:
	call	far 2368h:033Ch

l20B2_05EF:
	mov	ax,[bp-0Ah]
	dec	word ptr [bp-0Ah]
	or	ax,ax
	jnz	05EAh

l20B2_05F9:
	add	word ptr [1296h],10h
	les	bx,[1296h]
	mov	di,bx
	lea	si,[bp-1Ch]
	mov	cx,8h
	rep movsw

l20B2_060C:
	pop	si
	pop	di
	mov	sp,bp
	pop	bp
	retf

;; fn20B2_0612: 20B2:0612
;;   Called from:
;;     20B2:0C66 (in fn20B2_0BDC)
fn20B2_0612 proc
	push	bp
	mov	bp,sp
	sub	sp,1Ch
	push	di
	push	si
	mov	bx,[bp+6h]
	mov	ax,bx
	shl	bx,1h
	add	bx,ax
	shl	bx,1h
	shl	bx,1h
	mov	ax,[bx+2544h]
	add	ax,307Ah
	mov	[bp-4h],ax
	mov	[bp-2h],ds
	push	ds
	push	ax
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	mov	ax,5BC0h
	push	ds
	push	ax
	push	cs
	call	01BAh
	add	sp,0Ch
	mov	[bp-1Ch],ax
	mov	[bp-1Ah],dx
	push	word ptr [10D4h]
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	cs
	call	0308h
	add	sp,6h
	cmp	word ptr [128Ah],0h
	jz	068Ch

l20B2_0666:
	mov	ax,16h
	mul	word ptr [128Ah]
	mov	si,ax
	les	bx,[1282h]
	push	word ptr es:[bx+si+14h]
	push	word ptr es:[bx+si+12h]
	call	far 2BC7h:050Ah
	add	sp,4h
	mov	[bp-8h],ax
	mov	[bp-6h],dx
	jmp	0695h
20B2:068B                                  90                        .    

l20B2_068C:
	mov	ax,5BCCh
	mov	[bp-8h],ax
	mov	[bp-6h],ds

l20B2_0695:
	mov	ax,[1296h]
	mov	dx,[1298h]
	lea	di,[bp-18h]
	mov	si,ax
	push	ss
	pop	es
	push	ds
	mov	ds,dx
	mov	cx,8h
	rep movsw
	pop	ds
	sub	ax,ax
	push	ax
	push	word ptr [bp-6h]
	push	word ptr [bp-8h]
	call	far 2368h:022Eh
	add	sp,6h
	push	word ptr [127Ah]
	call	far 2368h:01E0h
	add	sp,2h
	sub	ax,ax
	push	ax
	mov	ax,1104h
	push	ds
	push	ax
	call	far 2368h:022Eh
	add	sp,6h
	sub	ax,ax
	push	ax
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	call	far 2368h:022Eh
	add	sp,6h
	add	word ptr [1296h],10h
	les	bx,[1296h]
	mov	di,bx
	lea	si,[bp-18h]
	mov	cx,8h
	rep movsw
	test	word ptr es:[bx],100h
	jz	070Ah

l20B2_0704:
	mov	word ptr es:[bx+0Ch],0h

l20B2_070A:
	push	word ptr [bp-1Ah]
	push	word ptr [bp-1Ch]
	call	far 2368h:030Eh
	add	sp,4h
	mov	ax,5h
	push	ax
	call	far 21DCh:00A6h
	add	sp,2h
	call	far 21DCh:0368h
	cmp	word ptr [10D2h],65h
	jz	076Eh

l20B2_0730:
	mov	ax,[1296h]
	mov	dx,[1298h]
	sub	word ptr [1296h],10h
	lea	di,[bp-18h]
	mov	si,ax
	push	ss
	pop	es
	push	ds
	mov	ds,dx
	mov	cx,8h
	rep movsw
	pop	ds
	call	far 2368h:033Ch
	add	word ptr [1296h],10h
	les	bx,[1296h]
	mov	di,bx
	lea	si,[bp-18h]
	mov	cx,8h
	rep movsw
	mov	ax,1h
	pop	si
	pop	di
	mov	sp,bp
	pop	bp
	retf
20B2:076D                                        90                    .  

l20B2_076E:
	sub	ax,ax
	pop	si
	pop	di
	mov	sp,bp
	pop	bp
	retf

;; fn20B2_0776: 20B2:0776
;;   Called from:
;;     20B2:0D1A (in fn20B2_0BDC)
fn20B2_0776 proc
	push	bp
	mov	bp,sp
	sub	sp,10h
	push	si
	mov	bx,[bp+6h]
	mov	ax,bx
	shl	bx,1h
	add	bx,ax
	shl	bx,1h
	shl	bx,1h
	mov	ax,[bx+2544h]
	add	ax,307Ah
	mov	[bp-4h],ax
	mov	[bp-2h],ds
	push	ds
	push	ax
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	mov	ax,5BD6h
	push	ds
	push	ax
	push	cs
	call	01BAh
	add	sp,0Ch
	mov	[bp-10h],ax
	mov	[bp-0Eh],dx
	push	word ptr [10D4h]
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	cs
	call	0308h
	add	sp,6h
	cmp	word ptr [128Ah],0h
	jz	07EEh

l20B2_07C9:
	mov	ax,16h
	mul	word ptr [128Ah]
	mov	si,ax
	les	bx,[1282h]
	push	word ptr es:[bx+si+14h]
	push	word ptr es:[bx+si+12h]
	call	far 2BC7h:050Ah
	add	sp,4h
	mov	[bp-8h],ax
	mov	[bp-6h],dx
	jmp	07F7h

l20B2_07EE:
	mov	ax,5BE2h
	mov	[bp-8h],ax
	mov	[bp-6h],ds

l20B2_07F7:
	sub	ax,ax
	push	ax
	push	word ptr [bp-6h]
	push	word ptr [bp-8h]
	call	far 2368h:022Eh
	add	sp,6h
	push	word ptr [127Ah]
	call	far 2368h:01E0h
	add	sp,2h
	sub	ax,ax
	push	ax
	mov	ax,1104h
	push	ds
	push	ax
	call	far 2368h:022Eh
	add	sp,6h
	sub	ax,ax
	push	ax
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	call	far 2368h:022Eh
	add	sp,6h
	sub	ax,ax
	push	ax
	mov	ax,239Eh
	push	ds
	push	ax
	call	far 2368h:022Eh
	add	sp,6h
	push	word ptr [bp-0Eh]
	push	word ptr [bp-10h]
	call	far 2368h:030Eh
	add	sp,4h
	mov	ax,5h
	push	ax
	call	far 21DCh:00A6h
	add	sp,2h
	call	far 21DCh:0368h
	cmp	word ptr [10D2h],65h
	jz	088Ah

l20B2_086B:
	les	bx,[1296h]
	test	byte ptr es:[bx],80h
	jz	087Eh

l20B2_0875:
	mov	ax,es:[bx+8h]
	mov	[bp-0Ah],ax
	jmp	0883h

l20B2_087E:
	mov	word ptr [bp-0Ah],1h

l20B2_0883:
	call	far 2368h:033Ch
	jmp	088Fh

l20B2_088A:
	mov	word ptr [bp-0Ah],0h

l20B2_088F:
	mov	ax,[bp-0Ah]
	pop	si
	mov	sp,bp
	pop	bp
	retf
20B2:0897                      90                                .        

;; fn20B2_0898: 20B2:0898
;;   Called from:
;;     20B2:0DD2 (in fn20B2_0BDC)
fn20B2_0898 proc
	push	bp
	mov	bp,sp
	sub	sp,10h
	push	si
	mov	ax,5BECh
	mov	[bp-4h],ax
	mov	[bp-2h],ds
	push	ds
	push	ax
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	mov	ax,5BEEh
	push	ds
	push	ax
	push	cs
	call	01BAh
	add	sp,0Ch
	mov	[bp-10h],ax
	mov	[bp-0Eh],dx
	push	word ptr [10D4h]
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	cs
	call	0308h
	add	sp,6h
	cmp	word ptr [128Ah],0h
	jz	0900h

l20B2_08DA:
	mov	ax,16h
	mul	word ptr [128Ah]
	mov	si,ax
	les	bx,[1282h]
	push	word ptr es:[bx+si+14h]
	push	word ptr es:[bx+si+12h]
	call	far 2BC7h:050Ah
	add	sp,4h
	mov	[bp-8h],ax
	mov	[bp-6h],dx
	jmp	0909h
20B2:08FF                                              90                .

l20B2_0900:
	mov	ax,5BF8h
	mov	[bp-8h],ax
	mov	[bp-6h],ds

l20B2_0909:
	sub	ax,ax
	push	ax
	push	word ptr [bp-6h]
	push	word ptr [bp-8h]
	call	far 2368h:022Eh
	add	sp,6h
	push	word ptr [127Ah]
	call	far 2368h:01E0h
	add	sp,2h
	sub	ax,ax
	push	ax
	mov	ax,1104h
	push	ds
	push	ax
	call	far 2368h:022Eh
	add	sp,6h
	sub	ax,ax
	push	ax
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	call	far 2368h:022Eh
	add	sp,6h
	push	word ptr [bp-0Eh]
	push	word ptr [bp-10h]
	call	far 2368h:030Eh
	add	sp,4h
	mov	ax,4h
	push	ax
	call	far 21DCh:00A6h
	add	sp,2h
	call	far 21DCh:0368h
	cmp	word ptr [10D2h],65h
	jz	098Ch

l20B2_096D:
	les	bx,[1296h]
	test	byte ptr es:[bx],80h
	jz	0980h

l20B2_0977:
	mov	ax,es:[bx+8h]
	mov	[bp-0Ah],ax
	jmp	0985h

l20B2_0980:
	mov	word ptr [bp-0Ah],1h

l20B2_0985:
	call	far 2368h:033Ch
	jmp	0991h

l20B2_098C:
	mov	word ptr [bp-0Ah],0h

l20B2_0991:
	mov	ax,[bp-0Ah]
	pop	si
	mov	sp,bp
	pop	bp
	retf
20B2:0999                            90                            .      

;; fn20B2_099A: 20B2:099A
;;   Called from:
;;     20B2:0C91 (in fn20B2_0BDC)
;;     20B2:0D64 (in fn20B2_0BDC)
;;     20B2:0D8E (in fn20B2_0BDC)
fn20B2_099A proc
	push	bp
	mov	bp,sp
	sub	sp,16h
	push	si
	mov	ax,5C02h
	mov	[bp-6h],ax
	mov	[bp-4h],ds
	cmp	byte ptr [10E2h],0h
	jnz	09B5h

l20B2_09B1:
	push	cs
	call	01FCh

l20B2_09B5:
	push	word ptr [bp-4h]
	push	word ptr [bp-6h]
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	mov	ax,5C06h
	push	ds
	push	ax
	push	cs
	call	01BAh
	add	sp,0Ch
	mov	[bp-16h],ax
	mov	[bp-14h],dx
	push	word ptr [10D4h]
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	cs
	call	0308h
	add	sp,6h
	cmp	word ptr [128Ah],0h
	jz	0A10h

l20B2_09EB:
	mov	ax,16h
	mul	word ptr [128Ah]
	mov	si,ax
	les	bx,[1282h]
	push	word ptr es:[bx+si+14h]
	push	word ptr es:[bx+si+12h]
	call	far 2BC7h:050Ah
	add	sp,4h
	mov	[bp-0Ah],ax
	mov	[bp-8h],dx
	jmp	0A19h

l20B2_0A10:
	mov	ax,5C12h
	mov	[bp-0Ah],ax
	mov	[bp-8h],ds

l20B2_0A19:
	sub	ax,ax
	push	ax
	push	word ptr [bp-8h]
	push	word ptr [bp-0Ah]
	call	far 2368h:022Eh
	add	sp,6h
	push	word ptr [127Ah]
	call	far 2368h:01E0h
	add	sp,2h
	sub	ax,ax
	push	ax
	mov	ax,1104h
	push	ds
	push	ax
	call	far 2368h:022Eh
	add	sp,6h
	sub	ax,ax
	push	ax
	push	word ptr [bp-4h]
	push	word ptr [bp-6h]
	call	far 2368h:022Eh
	add	sp,6h
	sub	ax,ax
	push	ax
	mov	ax,10E2h
	push	ds
	push	ax
	call	far 2368h:022Eh
	add	sp,6h
	push	word ptr [bp-14h]
	push	word ptr [bp-16h]
	call	far 2368h:030Eh
	add	sp,4h
	mov	ax,5h
	push	ax
	call	far 21DCh:00A6h
	add	sp,2h
	call	far 21DCh:0368h
	cmp	word ptr [10D2h],65h
	jz	0AB8h

l20B2_0A8D:
	les	bx,[1296h]
	test	byte ptr es:[bx],80h
	jz	0AA0h

l20B2_0A97:
	mov	ax,es:[bx+8h]
	mov	[bp-0Ch],ax
	jmp	0AA5h

l20B2_0AA0:
	mov	word ptr [bp-0Ch],1h

l20B2_0AA5:
	call	far 2368h:033Ch
	cmp	word ptr [bp-0Ch],0h
	jnz	0ABDh

l20B2_0AB0:
	call	far 21DCh:04BAh
	jmp	0ABDh
20B2:0AB7                      90                                .        

l20B2_0AB8:
	mov	word ptr [bp-0Ch],0h

l20B2_0ABD:
	mov	ax,[bp-0Ch]
	pop	si
	mov	sp,bp
	pop	bp
	retf
20B2:0AC5                90                                    .          

;; fn20B2_0AC6: 20B2:0AC6
;;   Called from:
;;     20B2:0E61 (in fn20B2_0BDC)
fn20B2_0AC6 proc
	push	bp
	mov	bp,sp
	sub	sp,0Eh
	push	si
	mov	bx,[bp+6h]
	mov	ax,bx
	shl	bx,1h
	add	bx,ax
	shl	bx,1h
	shl	bx,1h
	mov	ax,[bx+2544h]
	add	ax,307Ah
	mov	[bp-4h],ax
	mov	[bp-2h],ds
	mov	ax,5C1Ch
	push	ds
	push	ax
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	mov	ax,5C1Eh
	push	ds
	push	ax
	push	cs
	call	01BAh
	add	sp,0Ch
	mov	[bp-0Eh],ax
	mov	[bp-0Ch],dx
	push	word ptr [10D4h]
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	cs
	call	0308h
	add	sp,6h
	cmp	word ptr [128Ah],0h
	jz	0B42h

l20B2_0B1C:
	mov	ax,16h
	mul	word ptr [128Ah]
	mov	si,ax
	les	bx,[1282h]
	push	word ptr es:[bx+si+14h]
	push	word ptr es:[bx+si+12h]
	call	far 2BC7h:050Ah
	add	sp,4h
	mov	[bp-8h],ax
	mov	[bp-6h],dx
	jmp	0B4Bh
20B2:0B41    90                                            .              

l20B2_0B42:
	mov	ax,5C2Ah
	mov	[bp-8h],ax
	mov	[bp-6h],ds

l20B2_0B4B:
	sub	ax,ax
	push	ax
	push	word ptr [bp-6h]
	push	word ptr [bp-8h]
	call	far 2368h:022Eh
	add	sp,6h
	push	word ptr [127Ah]
	call	far 2368h:01E0h
	add	sp,2h
	sub	ax,ax
	push	ax
	mov	ax,1104h
	push	ds
	push	ax
	call	far 2368h:022Eh
	add	sp,6h
	sub	ax,ax
	push	ax
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	call	far 2368h:022Eh
	add	sp,6h
	push	word ptr [bp-0Ch]
	push	word ptr [bp-0Eh]
	call	far 2368h:030Eh
	add	sp,4h
	mov	ax,4h
	push	ax
	call	far 21DCh:00A6h
	add	sp,2h
	call	far 21DCh:0368h
	cmp	word ptr [10D2h],65h
	jz	0BCEh

l20B2_0BAF:
	les	bx,[1296h]
	test	byte ptr es:[bx],80h
	jz	0BC2h

l20B2_0BB9:
	mov	ax,es:[bx+8h]
	mov	[bp-0Ah],ax
	jmp	0BC7h

l20B2_0BC2:
	mov	word ptr [bp-0Ah],1h

l20B2_0BC7:
	call	far 2368h:033Ch
	jmp	0BD3h

l20B2_0BCE:
	mov	word ptr [bp-0Ah],0h

l20B2_0BD3:
	mov	ax,[bp-0Ah]
	pop	si
	mov	sp,bp
	pop	bp
	retf
20B2:0BDB                                  90                        .    

;; fn20B2_0BDC: 20B2:0BDC
;;   Called from:
;;     3BC2:005D (in fn3BC2_0000)
;;     3BC2:00F7 (in fn3BC2_009D)
fn20B2_0BDC proc
	push	bp
	mov	bp,sp
	sub	sp,12h
	cmp	word ptr [1278h],0h
	jz	0BEEh

l20B2_0BE9:
	call	far 21DCh:04BAh

l20B2_0BEE:
	cmp	word ptr [1102h],0h
	jz	0C01h

l20B2_0BF5:
	mov	ax,5C34h
	push	ds
	push	ax
	push	cs
	call	0140h
	add	sp,4h

l20B2_0C01:
	mov	word ptr [bp-0Ah],0h
	mov	ax,[10D2h]
	mov	[1102h],ax
	mov	word ptr [10D2h],0h
	mov	ax,[21A2h]
	mov	[bp-2h],ax
	mov	word ptr [21A2h],0h
	mov	ax,[21A4h]
	mov	[bp-4h],ax
	mov	word ptr [21A4h],0h
	mov	ax,[10D4h]
	mov	[bp-0Eh],ax
	mov	ax,[10D6h]
	or	[10D4h],ax
	mov	word ptr [bp-12h],0h
	mov	word ptr [bp-10h],0h
	mov	ax,[1102h]
	sub	ax,1h
	cmp	ax,17h
	jbe	0C4Fh

l20B2_0C4C:
	jmp	0E02h

l20B2_0C4F:
	add	ax,ax
	xchg	bx,ax
	jmp	word ptr cs:[bx+0E0Ch]
20B2:0C57                      90                                .        

l20B2_0C58:
	mov	ax,5C44h

l20B2_0C5B:
	mov	[bp-8h],ax
	mov	[bp-6h],ds
	push	ds
	push	ax
	push	word ptr [bp+6h]
	push	cs
	call	0612h

l20B2_0C6A:
	add	sp,6h
	mov	[bp-0Ah],ax
	jmp	0E3Ch
20B2:0C73          90                                        .            

l20B2_0C74:
	mov	ax,5C52h
	jmp	0C5Bh
20B2:0C79                            90                            .      

l20B2_0C7A:
	mov	ax,5C62h
	mov	[bp-8h],ax
	mov	[bp-6h],ds
	call	far 2368h:033Ch
	push	word ptr [bp-6h]
	push	word ptr [bp-8h]
	push	word ptr [bp+6h]
	push	cs
	call	099Ah
	add	sp,6h
	mov	[bp-0Ah],ax
	sub	ax,ax
	push	ax
	call	far 2368h:01E0h

l20B2_0CA3:
	add	sp,2h
	jmp	0E3Ch
20B2:0CA9                            90                            .      

l20B2_0CAA:
	mov	ax,5C70h
	mov	[bp-8h],ax
	mov	[bp-6h],ds
	mov	bx,[bp+6h]
	mov	ax,bx
	shl	bx,1h
	add	bx,ax
	shl	bx,1h
	shl	bx,1h
	cmp	byte ptr [bx+253Dh],1h
	jz	0CF9h

l20B2_0CC7:
	mov	word ptr [bp-10h],1h
	jmp	0E3Ch
20B2:0CCF                                              90                .

l20B2_0CD0:
	mov	ax,5C7Eh
	mov	[bp-8h],ax
	mov	[bp-6h],ds
	jmp	0CF9h
20B2:0CDB                                  90                        .    

l20B2_0CDC:
	mov	ax,5C8Ah
	mov	[bp-8h],ax
	mov	[bp-6h],ds
	mov	bx,[bp+6h]
	mov	ax,bx
	shl	bx,1h
	add	bx,ax
	shl	bx,1h
	shl	bx,1h
	cmp	byte ptr [bx+253Dh],1h
	jnz	0CC7h

l20B2_0CF9:
	push	word ptr [bp-6h]
	push	word ptr [bp-8h]
	push	word ptr [bp+6h]
	push	cs
	call	0474h
	add	sp,6h
	jmp	0E3Ch

l20B2_0D0C:
	mov	ax,5C9Ch
	mov	[bp-8h],ax
	mov	[bp-6h],ds
	push	ds
	push	ax
	push	word ptr [bp+6h]
	push	cs
	call	0776h
	add	sp,6h
	mov	[bp-0Ah],ax
	or	ax,ax
	jz	0D2Bh

l20B2_0D28:
	jmp	0E3Ch

l20B2_0D2B:
	mov	bx,[bp+6h]
	mov	ax,bx
	shl	bx,1h
	add	bx,ax
	shl	bx,1h
	shl	bx,1h
	mov	al,[bx+253Ch]
	sub	ah,ah
	mov	[bp-0Ch],ax
	jmp	0D49h
20B2:0D43          90                                        .            

l20B2_0D44:
	call	far 2368h:033Ch

l20B2_0D49:
	mov	ax,[bp-0Ch]
	dec	word ptr [bp-0Ch]
	or	ax,ax
	jnz	0D44h

l20B2_0D53:
	jmp	0E3Ch

l20B2_0D56:
	mov	ax,5CA8h

l20B2_0D59:
	mov	[bp-8h],ax
	mov	[bp-6h],ds
	push	ds
	push	ax
	push	word ptr [bp+6h]
	push	cs
	call	099Ah
	jmp	0C6Ah
20B2:0D6B                                  90                        .    

l20B2_0D6C:
	mov	ax,5CBEh
	mov	[bp-8h],ax
	mov	[bp-6h],ds
	push	word ptr [10DCh]
	push	word ptr [10DAh]
	call	far 2368h:030Eh
	add	sp,4h
	push	word ptr [bp-6h]
	push	word ptr [bp-8h]
	push	word ptr [bp+6h]
	push	cs
	call	099Ah
	add	sp,6h
	mov	[bp-0Ah],ax
	sub	word ptr [1296h],10h
	jmp	0E3Ch

l20B2_0DA0:
	mov	ax,5CD4h
	jmp	0D59h
20B2:0DA5                90                                    .          

l20B2_0DA6:
	mov	ax,5CE6h
	mov	[bp-8h],ax
	mov	[bp-6h],ds
	mov	word ptr [bp-12h],1h
	jmp	0E3Ch
20B2:0DB7                      90                                .        

l20B2_0DB8:
	mov	ax,5CF4h
	mov	[bp-8h],ax
	mov	[bp-6h],ds
	jmp	0CC7h

l20B2_0DC4:
	mov	ax,5CFEh

l20B2_0DC7:
	mov	[bp-8h],ax
	mov	[bp-6h],ds
	push	ds
	push	ax
	push	word ptr [bp+6h]
	push	cs
	call	0898h
	add	sp,6h
	mov	[bp-0Ah],ax
	cmp	word ptr [10D2h],65h
	jz	0E3Ch

l20B2_0DE3:
	call	far 21DCh:04BAh
	jmp	0E3Ch

l20B2_0DEA:
	mov	ax,5D10h
	jmp	0DC7h
20B2:0DEF                                              90                .

l20B2_0DF0:
	mov	ax,5D1Eh
	jmp	0DC7h
20B2:0DF5                90                                    .          

l20B2_0DF6:
	mov	ax,5D32h
	jmp	0DC7h
20B2:0DFB                                  90                        .    

l20B2_0DFC:
	mov	ax,5D4Ah
	jmp	0DC7h
20B2:0E01    90                                            .              

l20B2_0E02:
	sub	ax,ax
	push	ax
	push	cs
	call	0176h
	jmp	0CA3h
l20B2_0E0C	dw	0x0CAA
l20B2_0E0E	dw	0x0D56
l20B2_0E10	dw	0x0DA0
l20B2_0E12	dw	0x0DA6
l20B2_0E14	dw	0x0D0C
l20B2_0E16	dw	0x0CD0
l20B2_0E18	dw	0x0D6C
l20B2_0E1A	dw	0x0E02
l20B2_0E1C	dw	0x0CDC
l20B2_0E1E	dw	0x0CDC
l20B2_0E20	dw	0x0E02
l20B2_0E22	dw	0x0E02
l20B2_0E24	dw	0x0C58
l20B2_0E26	dw	0x0C74
l20B2_0E28	dw	0x0C7A
l20B2_0E2A	dw	0x0DB8
l20B2_0E2C	dw	0x0DC4
l20B2_0E2E	dw	0x0DEA
l20B2_0E30	dw	0x0DF0
l20B2_0E32	dw	0x0DC4
l20B2_0E34	dw	0x0DC4
l20B2_0E36	dw	0x0DEA
l20B2_0E38	dw	0x0DF6
l20B2_0E3A	dw	0x0DFC

l20B2_0E3C:
	cmp	word ptr [bp-12h],0h
	jz	0E52h

l20B2_0E42:
	push	word ptr [bp-6h]
	push	word ptr [bp-8h]
	push	cs
	call	0140h
	add	sp,4h
	jmp	0E74h
20B2:0E51    90                                            .              

l20B2_0E52:
	cmp	word ptr [bp-10h],0h
	jz	0E74h

l20B2_0E58:
	push	word ptr [bp-6h]
	push	word ptr [bp-8h]
	push	word ptr [bp+6h]
	push	cs
	call	0AC6h
	add	sp,6h
	cmp	word ptr [10D2h],65h
	jz	0E74h

l20B2_0E6F:
	call	far 21DCh:04BAh

l20B2_0E74:
	mov	word ptr [1102h],0h
	mov	ax,[bp-0Eh]
	mov	[10D4h],ax
	mov	word ptr [10D6h],0h
	mov	byte ptr [10E2h],0h
	mov	ax,[bp-2h]
	mov	[21A2h],ax
	mov	ax,[bp-4h]
	mov	[21A4h],ax
	mov	ax,[bp-0Ah]
	mov	sp,bp
	pop	bp
	retf

;; fn20B2_0E9E: 20B2:0E9E
;;   Called from:
;;     2068:015F (in fn2068_0154)
;;     21DC:05D1 (in fn21DC_0588)
;;     21DC:0615 (in fn21DC_05EA)
;;     2C27:039F (in fn2C27_0292)
fn20B2_0E9E proc
	push	bp
	mov	bp,sp
	sub	sp,20h
	cmp	word ptr [1278h],0h
	jz	0EB0h

l20B2_0EAB:
	call	far 21DCh:04BAh

l20B2_0EB0:
	mov	ax,0Eh
	push	ax
	mov	ax,5D60h
	push	ds
	push	ax
	lea	ax,[bp-20h]
	push	ss
	push	ax
	call	far 2017h:02ECh
	add	sp,0Ah
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	call	far 2017h:03F5h
	add	sp,4h
	inc	ax
	push	ax
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	lea	ax,[bp-12h]
	push	ss
	push	ax
	call	far 2017h:02ECh
	add	sp,0Ah
	lea	ax,[bp-20h]
	push	ss
	push	ax
	push	cs
	call	0140h
	mov	sp,bp
	pop	bp
	retf

;; fn20B2_0EF6: 20B2:0EF6
;;   Called from:
;;     3431:02AD (in fn3431_0214)
fn20B2_0EF6 proc
	push	bp
	mov	bp,sp
	sub	sp,0Eh
	push	si
	cmp	word ptr [1278h],0h
	jz	0F09h

l20B2_0F04:
	call	far 21DCh:04BAh

l20B2_0F09:
	cmp	word ptr [1102h],0h
	jz	0F1Ch

l20B2_0F10:
	mov	ax,5D70h
	push	ds
	push	ax
	push	cs
	call	0140h
	add	sp,4h

l20B2_0F1C:
	mov	ax,[10D2h]
	mov	[1102h],ax
	mov	word ptr [10D2h],0h
	mov	ax,[21A2h]
	mov	[bp-2h],ax
	mov	word ptr [21A2h],0h
	mov	ax,[21A4h]
	mov	[bp-4h],ax
	mov	word ptr [21A4h],0h
	mov	ax,5D80h
	push	ds
	push	ax
	mov	ax,5D82h
	push	ds
	push	ax
	mov	ax,5D90h
	push	ds
	push	ax
	push	cs
	call	01BAh
	add	sp,0Ch
	mov	[bp-0Eh],ax
	mov	[bp-0Ch],dx
	cmp	word ptr [128Ah],0h
	jz	0F88h

l20B2_0F63:
	mov	ax,16h
	mul	word ptr [128Ah]
	mov	si,ax
	les	bx,[1282h]
	push	word ptr es:[bx+si+14h]
	push	word ptr es:[bx+si+12h]
	call	far 2BC7h:050Ah
	add	sp,4h
	mov	[bp-8h],ax
	mov	[bp-6h],dx
	jmp	0F91h

l20B2_0F88:
	mov	ax,5D9Ch
	mov	[bp-8h],ax
	mov	[bp-6h],ds

l20B2_0F91:
	sub	ax,ax
	push	ax
	push	word ptr [bp-6h]
	push	word ptr [bp-8h]
	call	far 2368h:022Eh
	add	sp,6h
	push	word ptr [127Ah]
	call	far 2368h:01E0h
	add	sp,2h
	push	word ptr [bp-0Ch]
	push	word ptr [bp-0Eh]
	call	far 2368h:030Eh
	add	sp,4h
	mov	ax,2h
	push	ax
	call	far 21DCh:00A6h
	add	sp,2h
	call	far 21DCh:0368h
	cmp	word ptr [10D2h],65h
	jz	0FF4h

l20B2_0FD4:
	les	bx,[1296h]
	test	byte ptr es:[bx],80h
	jz	0FE8h

l20B2_0FDE:
	mov	ax,es:[bx+8h]
	mov	[bp-0Ah],ax
	jmp	0FEDh
20B2:0FE7                      90                                .        

l20B2_0FE8:
	mov	word ptr [bp-0Ah],1h

l20B2_0FED:
	call	far 2368h:033Ch
	jmp	0FF9h

l20B2_0FF4:
	mov	word ptr [bp-0Ah],0h

l20B2_0FF9:
	mov	word ptr [1102h],0h
	mov	ax,[bp-2h]
	mov	[21A2h],ax
	mov	ax,[bp-4h]
	mov	[21A4h],ax
	mov	ax,[bp-0Ah]
	pop	si
	mov	sp,bp
	pop	bp
	retf
20B2:1013          90                                        .            

;; fn20B2_1014: 20B2:1014
;;   Called from:
;;     20B2:016B (in fn20B2_0140)
;;     20B2:109D (in fn20B2_107C)
;;     20B2:10DC (in fn20B2_10AC)
fn20B2_1014 proc
	push	bp
	mov	bp,sp
	sub	sp,2h
	mov	ax,3Dh
	push	ax
	sub	ax,ax
	push	ax
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,0Ch
	push	ax
	mov	ax,5DA6h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	call	far 1F38h:0CC5h
	sub	ax,ax
	push	ax
	mov	ax,8h
	push	ax
	call	far 3431h:07B6h
	add	sp,4h
	mov	[bp-2h],ax
	push	cs
	call	0118h
	cmp	word ptr [bp-2h],2h
	jnz	106Dh

l20B2_105B:
	mov	al,[0F17h]
	sub	ah,ah
	push	ax
	call	far 38ADh:0040h
	add	sp,2h
	test	al,8h
	jnz	1074h

l20B2_106D:
	sub	ax,ax
	mov	sp,bp
	pop	bp
	retf
20B2:1073          90                                        .            

l20B2_1074:
	mov	ax,1h
	mov	sp,bp
	pop	bp
	retf
20B2:107B                                  90                        .    

;; fn20B2_107C: 20B2:107C
;;   Called from:
;;     21DC:0033 (in fn21DC_0006)
fn20B2_107C proc
	cmp	word ptr [1278h],0h
	jz	1088h

l20B2_1083:
	call	far 21DCh:04BAh

l20B2_1088:
	push	cs
	call	005Ch
	mov	ax,9h
	push	ax
	mov	ax,5DB8h
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	push	cs
	call	1014h
	or	ax,ax
	jnz	10AAh

l20B2_10A5:
	call	far 21DCh:04BAh

l20B2_10AA:
	retf
20B2:10AB                                  90                        .    

;; fn20B2_10AC: 20B2:10AC
;;   Called from:
;;     2644:2286 (in fn2644_21CA)
;;     2B41:00A7 (in fn2B41_0052)
;;     2D1A:0163 (in fn2D1A_003C)
;;     2D1A:06F3 (in fn2D1A_064E)
fn20B2_10AC proc
	push	bp
	mov	bp,sp
	cmp	word ptr [1278h],0h
	jz	10BBh

l20B2_10B6:
	call	far 21DCh:04BAh

l20B2_10BB:
	push	cs
	call	005Ch
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	call	far 2017h:03F5h
	add	sp,4h
	push	ax
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	call	far 1F38h:049Fh
	add	sp,6h
	push	cs
	call	1014h
	or	ax,ax
	jnz	10E9h

l20B2_10E4:
	call	far 21DCh:04BAh

l20B2_10E9:
	pop	bp
	retf
20B2:10EB                                  90 55 8B EC 56            .U..V
20B2:10F0 FF 06 66 12 83 3E 66 12 10 73 4D B8 12 00 F7 26 ..f..>f..sM....&
20B2:1100 66 12 8B F0 8B 46 06 89 84 46 11 8B 46 08 89 84 f....F...F..F...
20B2:1110 48 11 A1 D4 10 89 84 4E 11 A1 A2 21 89 84 50 11 H......N...!..P.
20B2:1120 A1 A4 21 89 84 52 11 A1 A6 21 89 84 54 11 A1 06 ..!..R...!..T...
20B2:1130 13 89 84 56 11 A1 96 12 8B 16 98 12 89 84 4A 11 ...V..........J.
20B2:1140 89 94 4C 11 5E 5D CB 90 B8 0A 00 50 0E E8 26 F0 ..L.^].....P..&.
20B2:1150 83 C4 02 5E 5D CB 83 3E 66 12 00 74 05 FF 0E 66 ...^]..>f..t...f
20B2:1160 12 CB B8 0B 00 50 0E E8 0C F0 83 C4 02 CB C7 06 .....P..........
20B2:1170 D2 10 65 00 CB 90                               ..e...          

;; fn20B2_1176: 20B2:1176
;;   Called from:
;;     20B2:11D6 (in fn20B2_1192)
fn20B2_1176 proc
	mov	ax,[3CE4h]
	or	ax,[3CE6h]
	jz	1183h

l20B2_117F:
	call	dword ptr [3CE4h]

l20B2_1183:
	mov	ax,[3E10h]
	or	ax,[3E12h]
	jz	1190h

l20B2_118C:
	call	dword ptr [3E10h]

l20B2_1190:
	retf
20B2:1191    90                                            .              

;; fn20B2_1192: 20B2:1192
;;   Called from:
;;     3BC2:007F (in fn3BC2_0000)
;;     3BC2:0123 (in fn3BC2_009D)
fn20B2_1192 proc
	push	bp
	mov	bp,sp
	sub	sp,14h
	push	di
	push	si
	mov	ax,12h
	mul	word ptr [1266h]
	mov	bx,ax
	lea	di,[bp-14h]
	lea	si,[bx+1146h]
	push	ss
	pop	es
	mov	cx,9h
	rep movsw
	mov	ax,[bp+6h]
	cmp	[bp-14h],ax
	jz	11BCh

l20B2_11B9:
	jmp	1278h

l20B2_11BC:
	mov	ax,[1296h]
	mov	dx,[1298h]
	cmp	[bp-10h],ax
	ja	11CBh

l20B2_11C8:
	jmp	1262h

l20B2_11CB:
	mov	ax,0Ch
	push	ax
	push	cs
	call	0176h
	add	sp,2h

l20B2_11D6:
	push	cs
	call	1176h
	mov	ax,12h
	mul	word ptr [1266h]
	mov	bx,ax
	push	word ptr [bx+1156h]
	call	far 2D1Ah:11C0h
	add	sp,2h
	mov	ax,12h
	mul	word ptr [1266h]
	mov	bx,ax
	push	word ptr [bx+1156h]
	call	far 2644h:4A66h
	add	sp,2h
	mov	ax,[bp-0Ch]
	mov	[10D4h],ax
	mov	ax,12h
	mul	word ptr [1266h]
	mov	bx,ax
	mov	ax,[21A6h]
	cmp	[bx+1154h],ax
	jz	1225h

l20B2_121C:
	push	ax
	call	far 208Fh:00AEh
	add	sp,2h

l20B2_1225:
	mov	ax,12h
	mul	word ptr [1266h]
	mov	si,ax
	mov	ax,[si+1150h]
	mov	[21A2h],ax
	mov	ax,[si+1152h]
	mov	[21A4h],ax
	mov	ax,[si+1154h]
	mov	[21A6h],ax
	mov	word ptr [10D6h],0h
	mov	word ptr [10D2h],0h
	mov	word ptr [1102h],0h
	mov	ax,[bp-12h]
	mov	[bp-2h],ax
	dec	word ptr [1266h]
	jmp	128Ah
20B2:1261    90                                            .              

l20B2_1262:
	mov	ax,[1296h]
	mov	dx,[1298h]
	cmp	[bp-10h],ax
	jc	1271h

l20B2_126E:
	jmp	11D6h

l20B2_1271:
	call	far 2368h:033Ch
	jmp	1262h

l20B2_1278:
	mov	ax,[bp+6h]
	cmp	[bp-14h],ax
	jnc	1285h

l20B2_1280:
	call	far 21DCh:04BAh

l20B2_1285:
	mov	word ptr [bp-2h],0h

l20B2_128A:
	mov	ax,[bp-2h]
	pop	si
	pop	di
	mov	sp,bp
	pop	bp
	retf
20B2:1293          90 FF 36 DE 23 9A E0 01 68 23 83 C4 02    ..6.#...h#...
