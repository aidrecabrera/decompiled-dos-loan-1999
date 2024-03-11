;;; Segment 1F38 (1F38:0000)

;; fn1F38_0000: 1F38:0000
;;   Called from:
;;     1F38:0307 (in fn1F38_029A)
;;     1F38:0442 (in fn1F38_042D)
;;     1F38:04B7 (in fn1F38_049F)
;;     1F38:0647 (in fn1F38_05DB)
;;     1F38:066A (in fn1F38_05DB)
;;     1F38:0683 (in fn1F38_05DB)
;;     1F38:0697 (in fn1F38_05DB)
;;     1F38:06B4 (in fn1F38_05DB)
;;     1F38:06ED (in fn1F38_05DB)
;;     1F38:0707 (in fn1F38_05DB)
fn1F38_0000 proc
	push	es
	les	di,[0F0Ch]
	mov	ah,[0F14h]
	cld
	test	word ptr [0EE8h],0FFFFh
	jnz	001Ah

l1F38_0012:
	stosw
	sti
	mov	[0F0Ch],di
	pop	es
	ret

l1F38_001A:
	push	ax
	push	dx
	mov	dx,3DAh

l1F38_001F:
	in	al,dx
	test	al,1h
	jnz	001Fh

l1F38_0024:
	cli

l1F38_0025:
	in	al,dx
	test	al,1h
	jz	0025h

l1F38_002A:
	pop	dx
	pop	ax
	jmp	0012h

;; fn1F38_002E: 1F38:002E
;;   Called from:
;;     1F38:0052 (in fn1F38_003F)
;;     1F38:011E (in fn1F38_0104)
;;     1F38:0199 (in fn1F38_017F)
;;     1F38:0214 (in fn1F38_01FA)
;;     1F38:0363 (in fn1F38_032B)
;;     1F38:050D (in fn1F38_04E7)
;;     1F38:097E (in fn1F38_096A)
;;     1F38:09DD (in fn1F38_09C6)
fn1F38_002E proc
	mov	cx,0A0h
	mul	cx
	shl	bx,1h
	add	ax,bx
	add	ax,[0F10h]
	mov	[0F0Ch],ax
	ret

;; fn1F38_003F: 1F38:003F
;;   Called from:
;;     1F38:00D6 (in fn1F38_00B6)
;;     1F38:02DC (in fn1F38_029A)
;;     1F38:02FF (in fn1F38_029A)
;;     1F38:0324 (in fn1F38_029A)
;;     1F38:0464 (in fn1F38_042D)
;;     1F38:0621 (in fn1F38_05DB)
;;     1F38:0960 (in fn1F38_094C)
fn1F38_003F proc
	push	ax
	push	bx
	push	cx
	push	dx
	mov	ax,[0F06h]
	mov	bx,[0F08h]
	add	ax,[0EEAh]
	add	bx,[0EECh]
	call	002Eh
	pop	dx
	pop	cx
	pop	bx
	pop	ax
	ret
1F38:005A                               33 D2 A1 0C 0F BB           3.....
1F38:0060 A0 00 F7 F3 D1 EA 8B DA C3                      .........       

;; fn1F38_0069: 1F38:0069
;;   Called from:
;;     1F38:0498 (in fn1F38_042D)
;;     1F38:04E0 (in fn1F38_049F)
;;     1F38:0510 (in fn1F38_04E7)
;;     1F38:0963 (in fn1F38_094C)
fn1F38_0069 proc
	mov	dh,[0F06h]
	mov	dl,[0F08h]
	add	dh,[0EEAh]
	add	dl,[0EECh]
	mov	ah,2h
	mov	bh,0h
	int	10h
	ret

;; fn1F38_0080: 1F38:0080
;;   Called from:
;;     1F38:0453 (in fn1F38_042D)
;;     1F38:0484 (in fn1F38_042D)
;;     1F38:04C8 (in fn1F38_049F)
fn1F38_0080 proc
	mov	ax,[0F08h]
	add	ax,ax
	sub	[0F0Ch],ax
	mov	word ptr [0F08h],0h
	ret

;; fn1F38_0090: 1F38:0090
;;   Called from:
;;     1F38:0489 (in fn1F38_042D)
;;     1F38:0493 (in fn1F38_042D)
;;     1F38:04CB (in fn1F38_049F)
fn1F38_0090 proc
	mov	ax,[0F06h]
	cmp	ax,[0EEEh]
	jnc	00A4h

l1F38_0099:
	add	word ptr [0F0Ch],0A0h
	inc	word ptr [0F06h]

l1F38_00A3:
	ret

l1F38_00A4:
	call	0279h
	jmp	00A3h

;; fn1F38_00A9: 1F38:00A9
;;   Called from:
;;     1F38:048E (in fn1F38_042D)
fn1F38_00A9 proc
	push	es
	push	si
	push	cx
	mov	ah,0Eh
	mov	al,7h
	int	10h
	pop	cx
	pop	si
	pop	es
	ret

;; fn1F38_00B6: 1F38:00B6
;;   Called from:
;;     1F38:047F (in fn1F38_042D)
fn1F38_00B6 proc
	push	es
	push	si
	push	cx
	mov	ax,[0F06h]
	mov	bx,[0F08h]
	or	ax,bx
	jz	00E4h

l1F38_00C4:
	mov	ax,[0F06h]
	dec	bx
	jns	00CFh

l1F38_00CA:
	mov	bx,[0EF0h]
	dec	ax

l1F38_00CF:
	mov	[0F06h],ax
	mov	[0F08h],bx
	call	003Fh
	les	di,[0F0Ch]
	mov	ah,[0F14h]
	mov	al,20h
	stosw

l1F38_00E4:
	pop	cx
	pop	si
	pop	es
	ret

;; fn1F38_00E8: 1F38:00E8
;;   Called from:
;;     1F38:010E (in fn1F38_0104)
;;     1F38:0189 (in fn1F38_017F)
;;     1F38:0204 (in fn1F38_01FA)
;;     1F38:096A (in fn1F38_096A)
;;     1F38:09C6 (in fn1F38_09C6)
fn1F38_00E8 proc
	cmp	ch,19h
	jnc	0102h

l1F38_00ED:
	cmp	cl,50h
	jnc	0102h

l1F38_00F2:
	cmp	dh,19h
	jnc	0102h

l1F38_00F7:
	cmp	dl,50h
	jnc	0102h

l1F38_00FC:
	cmp	ch,dh
	jnc	0102h

l1F38_0100:
	cmp	cl,dl

l1F38_0102:
	cmc
	ret

;; fn1F38_0104: 1F38:0104
;;   Called from:
;;     1F38:027E (in fn1F38_0279)
;;     1F38:0592 (in fn1F38_055E)
fn1F38_0104 proc
	push	es
	push	si
	push	ax
	push	bx
	push	cx
	push	dx
	push	word ptr [0F0Ch]
	call	00E8h
	jc	0174h

l1F38_0113:
	cld
	xor	ax,ax
	mov	bx,ax
	mov	al,ch
	mov	bl,cl
	push	cx
	push	dx
	call	002Eh
	pop	dx
	pop	cx
	sub	dl,cl
	sub	dh,ch
	mov	cl,dl
	xor	ch,ch
	inc	cx
	mov	bl,dh
	xor	bh,bh
	les	di,[0F0Ch]
	mov	si,di
	add	si,0A0h
	mov	dx,3D8h
	test	word ptr [0EE8h],0FFFFh
	push	ds
	mov	ds,[0F0Eh]
	jz	014Dh

l1F38_014A:
	mov	al,21h
	out	dx,al

l1F38_014D:
	push	cx
	push	di
	push	si
	rep movsw
	pop	si
	pop	di
	pop	cx
	add	di,0A0h
	add	si,0A0h
	dec	bx
	jnz	014Dh

l1F38_0160:
	pop	ds
	mov	ah,[0F14h]
	mov	al,20h

l1F38_0167:
	rep stosw

l1F38_0169:
	test	word ptr [0EE8h],0FFFFh
	jz	0174h

l1F38_0171:
	mov	al,29h
	out	dx,al

l1F38_0174:
	pop	word ptr [0F0Ch]
	pop	dx
	pop	cx
	pop	bx
	pop	ax
	pop	si
	pop	es
	ret

;; fn1F38_017F: 1F38:017F
;;   Called from:
;;     1F38:058A (in fn1F38_055E)
fn1F38_017F proc
	push	es
	push	si
	push	ax
	push	bx
	push	cx
	push	dx
	push	word ptr [0F0Ch]
	call	00E8h
	jc	01EFh

l1F38_018E:
	cld
	xor	ax,ax
	mov	bx,ax
	mov	al,dh
	mov	bl,cl
	push	cx
	push	dx
	call	002Eh
	pop	dx
	pop	cx
	sub	dl,cl
	sub	dh,ch
	mov	cl,dl
	xor	ch,ch
	inc	cx
	mov	bl,dh
	xor	bh,bh
	les	di,[0F0Ch]
	mov	si,di
	sub	si,0A0h
	mov	dx,3D8h
	test	word ptr [0EE8h],0FFFFh
	push	ds
	mov	ds,[0F0Eh]
	jz	01C8h

l1F38_01C5:
	mov	al,21h
	out	dx,al

l1F38_01C8:
	push	cx
	push	di
	push	si
	rep movsw
	pop	si
	pop	di
	pop	cx
	sub	di,0A0h
	sub	si,0A0h
	dec	bx
	jnz	01C8h

l1F38_01DB:
	pop	ds
	mov	ah,[0F14h]
	mov	al,20h

l1F38_01E2:
	rep stosw

l1F38_01E4:
	test	word ptr [0EE8h],0FFFFh
	jz	01EFh

l1F38_01EC:
	mov	al,29h
	out	dx,al

l1F38_01EF:
	pop	word ptr [0F0Ch]
	pop	dx
	pop	cx
	pop	bx
	pop	ax
	pop	si
	pop	es
	ret

;; fn1F38_01FA: 1F38:01FA
;;   Called from:
;;     1F38:0294 (in fn1F38_028F)
;;     1F38:059A (in fn1F38_055E)
fn1F38_01FA proc
	push	es
	push	si
	push	ax
	push	bx
	push	cx
	push	dx
	push	word ptr [0F0Ch]
	call	00E8h
	jc	0259h

l1F38_0209:
	cld
	xor	ax,ax
	mov	bx,ax
	mov	al,ch
	mov	bl,cl
	push	cx
	push	dx
	call	002Eh
	pop	dx
	pop	cx
	sub	dl,cl
	sub	dh,ch
	mov	cl,dl
	xor	ch,ch
	inc	cx
	mov	bl,dh
	xor	bh,bh
	inc	bx
	mov	ah,[0F14h]
	mov	al,20h
	les	di,[0F0Ch]
	mov	dx,3D8h
	test	word ptr [0EE8h],0FFFFh
	jz	0241h

l1F38_023C:
	push	ax
	mov	al,21h
	out	dx,al
	pop	ax

l1F38_0241:
	push	cx
	push	di

l1F38_0243:
	rep stosw

l1F38_0245:
	pop	di
	pop	cx
	add	di,0A0h
	dec	bx
	jnz	0241h

l1F38_024E:
	test	word ptr [0EE8h],0FFFFh
	jz	0259h

l1F38_0256:
	mov	al,29h
	out	dx,al

l1F38_0259:
	pop	word ptr [0F0Ch]
	pop	dx
	pop	cx
	pop	bx
	pop	ax
	pop	si
	pop	es
	ret

;; fn1F38_0264: 1F38:0264
;;   Called from:
;;     1F38:027B (in fn1F38_0279)
;;     1F38:0291 (in fn1F38_028F)
fn1F38_0264 proc
	mov	ch,[0EEAh]
	mov	cl,[0EECh]
	mov	dh,[0EEEh]
	mov	dl,[0EF0h]
	add	dh,ch
	add	dl,cl
	ret

;; fn1F38_0279: 1F38:0279
;;   Called from:
;;     1F38:00A4 (in fn1F38_0090)
fn1F38_0279 proc
	push	cx
	push	dx
	call	0264h
	call	0104h
	pop	dx
	pop	cx
	ret
1F38:0284             51 52 E8 DB FF E8 F3 FE 5A 59 C3        QR......ZY. 

;; fn1F38_028F: 1F38:028F
;;   Called from:
;;     1F38:0951 (in fn1F38_094C)
fn1F38_028F proc
	push	cx
	push	dx
	call	0264h
	call	01FAh
	pop	dx
	pop	cx
	ret

;; fn1F38_029A: 1F38:029A
;;   Called from:
;;     1F38:0655 (in fn1F38_05DB)
;;     1F38:06D7 (in fn1F38_05DB)
;;     1F38:0733 (in fn1F38_05DB)
;;     1F38:08E8 (in fn1F38_08CB)
fn1F38_029A proc
	push	es
	push	si
	push	bx
	push	dx
	cld
	mov	bx,[0EF0h]
	mov	si,[0EEEh]
	test	word ptr [0EE8h],0FFFFh
	jnz	0307h

l1F38_02AF:
	mov	ah,[0F14h]
	mov	dx,cx
	mov	es,[0F0Eh]

l1F38_02B9:
	mov	cx,bx
	sub	cx,[0F08h]
	inc	cx
	mov	di,[0F0Ch]
	cmp	cx,dx
	jnc	02E1h

l1F38_02C8:
	sub	dx,cx

l1F38_02CA:
	rep stosw

l1F38_02CC:
	mov	word ptr [0F08h],0h
	cmp	[0F06h],si
	jnc	02FFh

l1F38_02D8:
	inc	word ptr [0F06h]
	call	003Fh
	jmp	02B9h

l1F38_02E1:
	mov	cx,dx
	add	[0F08h],cx

l1F38_02E7:
	rep stosw

l1F38_02E9:
	cmp	[0F08h],bx
	jbe	02FFh

l1F38_02EF:
	mov	word ptr [0F08h],0h
	cmp	[0F06h],si
	jnc	02FFh

l1F38_02FB:
	inc	word ptr [0F06h]

l1F38_02FF:
	call	003Fh
	pop	dx
	pop	bx
	pop	si
	pop	es
	ret

l1F38_0307:
	call	0000h
	inc	word ptr [0F08h]
	cmp	[0F08h],bx
	jbe	0327h

l1F38_0314:
	mov	word ptr [0F08h],0h
	cmp	[0F06h],si
	jnc	0324h

l1F38_0320:
	inc	word ptr [0F06h]

l1F38_0324:
	call	003Fh

l1F38_0327:
	loop	0307h

l1F38_0329:
	jmp	02FFh

;; fn1F38_032B: 1F38:032B
;;   Called from:
;;     21DC:0EC8 (in fn21DC_0EC2)
fn1F38_032B proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	int	11h
	mov	bx,0B000h
	and	ax,30h
	cmp	ax,30h
	jz	0346h

l1F38_033D:
	mov	bx,0B800h
	mov	word ptr [0EE6h],1h

l1F38_0346:
	mov	[0F0Eh],bx
	mov	[0F12h],bx
	mov	ah,3h
	mov	bh,0h
	int	10h
	xor	ax,ax
	mov	bx,ax
	mov	al,dh
	mov	bl,dl
	mov	[0F06h],ax
	mov	[0F08h],bx
	call	002Eh
	call	far 1F38h:07E7h
	pop	di
	pop	si
	pop	bp
	retf

;; fn1F38_036F: 1F38:036F
;;   Called from:
;;     21DC:0555 (in fn21DC_04BA)
;;     21DC:11DD (in main)
fn1F38_036F proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	pop	di
	pop	si
	pop	bp
	retf
1F38:0378                         55 56 57 8B EC 8B 46 0A         UVW...F.
1F38:0380 A3 04 0F 5F 5E 5D CB 55 56 57 8B EC 8B 46 0A 8B ..._^].UVW...F..
1F38:0390 5E 0C A3 10 0F 8B C8 0B CB 75 04 8B 1E 12 0F 89 ^........u......
1F38:03A0 1E 0E 0F 5F 5E 5D CB 55 56 57 8B EC 8A 6E 0A 8A ..._^].UVW...n..
1F38:03B0 4E 0C 8A 76 0E 8A 56 10 8B C1 0B C2 75 04 B6 18 N..v..V.....u...
1F38:03C0 B2 4F E8 23 FD 72 62 2A F5 2A D1 A1 06 0F 8B 1E .O.#.rb*.*......
1F38:03D0 08 0F 03 06 EA 0E 03 1E EC 0E 88 2E EA 0E 88 0E ................
1F38:03E0 EC 0E 88 36 EE 0E 88 16 F0 0E 2B 06 EA 0E 78 1B ...6......+...x.
1F38:03F0 2B 1E EC 0E 78 15 3B 06 EE 0E 77 0F 3B 1E F0 0E +...x.;...w.;...
1F38:0400 77 09 A3 06 0F 89 1E 08 0F EB 1E 50 B8 00 00 55 w..........P...U
1F38:0410 8B EC 87 46 02 5D 50 B8 00 00 55 8B EC 87 46 02 ...F.]P...U...F.
1F38:0420 5D 9A E7 04 38 1F 83 C4 04 5F 5E 5D CB          ]...8...._^].   

;; fn1F38_042D: 1F38:042D
;;   Called from:
;;     1825:4F9F (in fn1825_4DA6)
;;     21DC:11AB (in main)
;;     3CEE:74E7 (in fn3CEE_74B8)
fn1F38_042D proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	cld
	mov	cx,[bp+0Eh]
	jcxz	0498h

l1F38_0438:
	les	si,[bp+0Ah]

l1F38_043B:
	push	cx
	lodsb	al,es:[si]
	cmp	al,20h
	jc	046Dh

l1F38_0442:
	call	0000h
	inc	word ptr [0F08h]
	mov	cx,[0EF0h]
	cmp	[0F08h],cx
	jbe	0467h

l1F38_0453:
	call	0080h
	mov	cx,[0EEEh]
	cmp	[0F06h],cx
	jnc	0493h

l1F38_0460:
	inc	word ptr [0F06h]
	call	003Fh

l1F38_0467:
	pop	cx
	loop	043Bh

l1F38_046A:
	jmp	0498h
1F38:046C                                     90                      .   

l1F38_046D:
	cmp	al,8h
	jz	047Fh

l1F38_0471:
	cmp	al,0Dh
	jz	0484h

l1F38_0475:
	cmp	al,0Ah
	jz	0489h

l1F38_0479:
	cmp	al,7h
	jz	048Eh

l1F38_047D:
	jmp	0442h

l1F38_047F:
	call	00B6h
	jmp	0467h

l1F38_0484:
	call	0080h
	jmp	0467h

l1F38_0489:
	call	0090h
	jmp	0467h

l1F38_048E:
	call	00A9h
	jmp	0467h

l1F38_0493:
	call	0090h
	jmp	0467h

l1F38_0498:
	call	0069h
	pop	di
	pop	si
	pop	bp
	retf

;; fn1F38_049F: 1F38:049F
;;   Called from:
;;     1825:0360 (in fn1825_02F0)
;;     1825:0424 (in fn1825_037E)
;;     1825:0463 (in fn1825_037E)
;;     1825:0699 (in fn1825_05F2)
;;     1825:07B2 (in fn1825_06E0)
;;     1825:07F2 (in fn1825_06E0)
;;     1825:0C99 (in fn1825_0C7E)
;;     1825:0FF0 (in fn1825_0E72)
;;     1825:1015 (in fn1825_0E72)
;;     1825:105B (in fn1825_0E72)
;;     1825:1082 (in fn1825_0E72)
;;     1825:10D3 (in fn1825_0E72)
;;     1825:110B (in fn1825_0E72)
;;     1825:1162 (in fn1825_0E72)
;;     1825:1222 (in fn1825_0E72)
;;     1825:1261 (in fn1825_0E72)
;;     1825:13F9 (in fn1825_139A)
;;     1825:14BE (in fn1825_139A)
;;     1825:14F1 (in fn1825_139A)
;;     1825:15AF (in fn1825_139A)
;;     1825:178B (in fn1825_139A)
;;     1825:1A84 (in fn1825_18A6)
;;     1825:1AA7 (in fn1825_18A6)
;;     1825:1AFE (in fn1825_18A6)
;;     1825:1BC0 (in fn1825_18A6)
;;     1825:1BFF (in fn1825_18A6)
;;     1825:1D8D (in fn1825_1D40)
;;     1825:1EE9 (in fn1825_1D40)
;;     1825:20C8 (in fn1825_2020)
;;     1825:2142 (in fn1825_2020)
;;     1825:2163 (in fn1825_2020)
;;     1825:219F (in fn1825_2020)
;;     1825:21D7 (in fn1825_2020)
;;     1825:223F (in fn1825_2020)
;;     1825:26CC (in fn1825_2696)
;;     1825:2748 (in fn1825_26D6)
;;     1825:276B (in fn1825_26D6)
;;     1825:2827 (in fn1825_26D6)
;;     1825:29E6 (in fn1825_2880)
;;     1825:2C9B (in fn1825_2C52)
;;     1825:2CE4 (in fn1825_2C52)
;;     1825:36FF (in fn1825_3436)
;;     1825:3853 (in fn1825_3766)
;;     1825:38A3 (in fn1825_3766)
;;     1825:38D5 (in fn1825_3766)
;;     1825:39BB (in fn1825_3766)
;;     1825:3A84 (in fn1825_39DE)
;;     1825:3C19 (in fn1825_3BCE)
;;     1825:3CCA (in fn1825_3BCE)
;;     1825:3F45 (in fn1825_3EE6)
;;     1825:3FCA (in fn1825_3EE6)
;;     1825:3FF1 (in fn1825_3EE6)
;;     1825:4027 (in fn1825_3EE6)
;;     1825:4051 (in fn1825_3EE6)
;;     1825:4071 (in fn1825_3EE6)
;;     1825:409B (in fn1825_3EE6)
;;     1825:4106 (in fn1825_3EE6)
;;     1825:415E (in fn1825_3EE6)
;;     1825:41B2 (in fn1825_3EE6)
;;     1825:41F5 (in fn1825_3EE6)
;;     1825:425A (in fn1825_3EE6)
;;     1825:427D (in fn1825_3EE6)
;;     1825:42C4 (in fn1825_3EE6)
;;     1825:430A (in fn1825_3EE6)
;;     1825:4351 (in fn1825_3EE6)
;;     1825:43BF (in fn1825_3EE6)
;;     1825:441A (in fn1825_3EE6)
;;     1825:4472 (in fn1825_3EE6)
;;     1825:44CC (in fn1825_3EE6)
;;     1825:4554 (in fn1825_3EE6)
;;     1825:4613 (in fn1825_45B2)
;;     1825:46F6 (in fn1825_4658)
;;     1825:4762 (in fn1825_4658)
;;     1825:47D1 (in fn1825_4770)
;;     1825:48C9 (in fn1825_4814)
;;     1825:4A8A (in fn1825_4A02)
;;     1825:4C50 (in fn1825_4BFA)
;;     1825:4C91 (in fn1825_4BFA)
;;     1825:4E2C (in fn1825_4DA6)
;;     1825:4E4D (in fn1825_4DA6)
;;     1825:4E70 (in fn1825_4DA6)
;;     1825:4E93 (in fn1825_4DA6)
;;     1825:4F5F (in fn1825_4DA6)
;;     1825:5012 (in fn1825_4DA6)
;;     1825:5489 (in fn1825_5154)
;;     1825:55D7 (in fn1825_54D4)
;;     1825:5627 (in fn1825_54D4)
;;     1825:5659 (in fn1825_54D4)
;;     1825:570D (in fn1825_54D4)
;;     1825:57D8 (in fn1825_5730)
;;     1825:58FD (in fn1825_5850)
;;     1825:5A64 (in fn1825_59CC)
;;     1825:5CF8 (in fn1825_5BD8)
;;     1825:5D81 (in fn1825_5BD8)
;;     1825:5EC3 (in fn1825_5E5C)
;;     1825:5F13 (in fn1825_5E5C)
;;     1825:5F56 (in fn1825_5E5C)
;;     1825:6480 (in fn1825_63F8)
;;     1825:64F9 (in fn1825_648A)
;;     1825:660E (in fn1825_648A)
;;     1825:668F (in fn1825_648A)
;;     1825:67A4 (in fn1825_675E)
;;     1825:67D6 (in fn1825_675E)
;;     1825:6F7A (in fn1825_6EA4)
;;     1825:6FA1 (in fn1825_6EA4)
;;     20B2:004F (in fn20B2_000E)
;;     20B2:00BA (in fn20B2_005C)
;;     20B2:00D7 (in fn20B2_005C)
;;     20B2:00EF (in fn20B2_005C)
;;     20B2:010B (in fn20B2_005C)
;;     20B2:0163 (in fn20B2_0140)
;;     20B2:1032 (in fn20B2_1014)
;;     20B2:1095 (in fn20B2_107C)
;;     20B2:10D4 (in fn20B2_10AC)
;;     3CEE:4850 (in fn3CEE_47CC)
;;     3CEE:48F4 (in fn3CEE_4882)
;;     3CEE:4929 (in fn3CEE_4882)
;;     3CEE:4975 (in fn3CEE_4882)
;;     3CEE:6E00 (in fn3CEE_6DBC)
;;     3CEE:70A3 (in fn3CEE_6F82)
;;     3CEE:87C3 (in fn3CEE_8634)
;;     3CEE:883D (in fn3CEE_8634)
;;     3CEE:885C (in fn3CEE_8634)
;;     3CEE:886D (in fn3CEE_8634)
;;     3CEE:88D9 (in fn3CEE_8634)
;;     3CEE:89F5 (in fn3CEE_89CC)
fn1F38_049F proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	cld
	mov	cx,[bp+0Eh]
	jcxz	04E0h

l1F38_04AA:
	les	si,[bp+0Ah]
	mov	bx,[0EF0h]
	mov	dx,[0EEEh]

l1F38_04B5:
	lodsb	al,es:[si]
	call	0000h
	cmp	[0F08h],bx
	jnc	04D0h

l1F38_04C0:
	inc	word ptr [0F08h]

l1F38_04C4:
	loop	04B5h

l1F38_04C6:
	jmp	04E0h

l1F38_04C8:
	call	0080h
	call	0090h
	jmp	04C4h

l1F38_04D0:
	dec	word ptr [0F0Ch]
	dec	word ptr [0F0Ch]
	cmp	[0F06h],dx
	jnc	04E0h

l1F38_04DE:
	jmp	04C8h

l1F38_04E0:
	call	0069h
	pop	di
	pop	si
	pop	bp
	retf

;; fn1F38_04E7: 1F38:04E7
;;   Called from:
;;     1825:014B (in fn1825_000A)
;;     1825:01A0 (in fn1825_017A)
;;     1825:0322 (in fn1825_02F0)
;;     1825:03E6 (in fn1825_037E)
;;     1825:044E (in fn1825_037E)
;;     1825:064E (in fn1825_05F2)
;;     1825:0767 (in fn1825_06E0)
;;     1825:07DA (in fn1825_06E0)
;;     1825:0C88 (in fn1825_0C7E)
;;     1825:0D97 (in fn1825_0D5E)
;;     1825:0FB3 (in fn1825_0E72)
;;     1825:102B (in fn1825_0E72)
;;     1825:1071 (in fn1825_0E72)
;;     1825:1092 (in fn1825_0E72)
;;     1825:10E3 (in fn1825_0E72)
;;     1825:1121 (in fn1825_0E72)
;;     1825:1186 (in fn1825_0E72)
;;     1825:11A6 (in fn1825_0E72)
;;     1825:11E0 (in fn1825_0E72)
;;     1825:1240 (in fn1825_0E72)
;;     1825:13E8 (in fn1825_139A)
;;     1825:140B (in fn1825_139A)
;;     1825:14AD (in fn1825_139A)
;;     1825:14D0 (in fn1825_139A)
;;     1825:1503 (in fn1825_139A)
;;     1825:1584 (in fn1825_139A)
;;     1825:15E6 (in fn1825_139A)
;;     1825:177A (in fn1825_139A)
;;     1825:179D (in fn1825_139A)
;;     1825:1A47 (in fn1825_18A6)
;;     1825:1ABD (in fn1825_18A6)
;;     1825:1B24 (in fn1825_18A6)
;;     1825:1B44 (in fn1825_18A6)
;;     1825:1B7E (in fn1825_18A6)
;;     1825:1BDE (in fn1825_18A6)
;;     1825:1D7C (in fn1825_1D40)
;;     1825:1D9F (in fn1825_1D40)
;;     1825:1E40 (in fn1825_1D40)
;;     1825:1ED8 (in fn1825_1D40)
;;     1825:1EFB (in fn1825_1D40)
;;     1825:20B7 (in fn1825_2020)
;;     1825:20DB (in fn1825_2020)
;;     1825:2152 (in fn1825_2020)
;;     1825:216F (in fn1825_2020)
;;     1825:218E (in fn1825_2020)
;;     1825:21AF (in fn1825_2020)
;;     1825:225B (in fn1825_2020)
;;     1825:2329 (in fn1825_22BC)
;;     1825:2612 (in fn1825_25AE)
;;     1825:2737 (in fn1825_26D6)
;;     1825:275A (in fn1825_26D6)
;;     1825:278E (in fn1825_26D6)
;;     1825:27F4 (in fn1825_26D6)
;;     1825:29D5 (in fn1825_2880)
;;     1825:2BD2 (in fn1825_2B6E)
;;     1825:2C89 (in fn1825_2C52)
;;     1825:2CD4 (in fn1825_2C52)
;;     1825:36EE (in fn1825_3436)
;;     1825:3842 (in fn1825_3766)
;;     1825:3892 (in fn1825_3766)
;;     1825:38C4 (in fn1825_3766)
;;     1825:39AA (in fn1825_3766)
;;     1825:3A55 (in fn1825_39DE)
;;     1825:3BFE (in fn1825_3BCE)
;;     1825:3C5A (in fn1825_3BCE)
;;     1825:3F34 (in fn1825_3EE6)
;;     1825:3F57 (in fn1825_3EE6)
;;     1825:3FBA (in fn1825_3EE6)
;;     1825:3FE0 (in fn1825_3EE6)
;;     1825:4007 (in fn1825_3EE6)
;;     1825:40F6 (in fn1825_3EE6)
;;     1825:414E (in fn1825_3EE6)
;;     1825:41A2 (in fn1825_3EE6)
;;     1825:41E5 (in fn1825_3EE6)
;;     1825:424A (in fn1825_3EE6)
;;     1825:426C (in fn1825_3EE6)
;;     1825:42B3 (in fn1825_3EE6)
;;     1825:42D6 (in fn1825_3EE6)
;;     1825:42F9 (in fn1825_3EE6)
;;     1825:4340 (in fn1825_3EE6)
;;     1825:43AF (in fn1825_3EE6)
;;     1825:440A (in fn1825_3EE6)
;;     1825:4462 (in fn1825_3EE6)
;;     1825:44BC (in fn1825_3EE6)
;;     1825:44E2 (in fn1825_3EE6)
;;     1825:4544 (in fn1825_3EE6)
;;     1825:4570 (in fn1825_3EE6)
;;     1825:4594 (in fn1825_3EE6)
;;     1825:4602 (in fn1825_45B2)
;;     1825:4628 (in fn1825_45B2)
;;     1825:46E6 (in fn1825_4658)
;;     1825:4752 (in fn1825_4658)
;;     1825:47C0 (in fn1825_4770)
;;     1825:47E6 (in fn1825_4770)
;;     1825:4832 (in fn1825_4814)
;;     1825:48B9 (in fn1825_4814)
;;     1825:4A79 (in fn1825_4A02)
;;     1825:4B76 (in fn1825_4B48)
;;     1825:4C69 (in fn1825_4BFA)
;;     1825:4CAA (in fn1825_4BFA)
;;     1825:4CDA (in fn1825_4BFA)
;;     1825:4E1B (in fn1825_4DA6)
;;     1825:4E3C (in fn1825_4DA6)
;;     1825:4E5F (in fn1825_4DA6)
;;     1825:4E82 (in fn1825_4DA6)
;;     1825:4EA5 (in fn1825_4DA6)
;;     1825:4F38 (in fn1825_4DA6)
;;     1825:4F75 (in fn1825_4DA6)
;;     1825:4FEB (in fn1825_4DA6)
;;     1825:5028 (in fn1825_4DA6)
;;     1825:5478 (in fn1825_5154)
;;     1825:55C6 (in fn1825_54D4)
;;     1825:5616 (in fn1825_54D4)
;;     1825:5648 (in fn1825_54D4)
;;     1825:56FC (in fn1825_54D4)
;;     1825:5794 (in fn1825_5730)
;;     1825:58B9 (in fn1825_5850)
;;     1825:5944 (in fn1825_5850)
;;     1825:5A53 (in fn1825_59CC)
;;     1825:5B5E (in fn1825_5B30)
;;     1825:5CE7 (in fn1825_5BD8)
;;     1825:5D70 (in fn1825_5BD8)
;;     1825:5DDE (in fn1825_5DB0)
;;     1825:5EEF (in fn1825_5E5C)
;;     1825:5F2C (in fn1825_5E5C)
;;     1825:60A9 (in fn1825_6078)
;;     1825:6151 (in fn1825_6078)
;;     1825:6470 (in fn1825_63F8)
;;     1825:64C3 (in fn1825_648A)
;;     1825:6507 (in fn1825_648A)
;;     1825:65AA (in fn1825_648A)
;;     1825:65DA (in fn1825_648A)
;;     1825:65FD (in fn1825_648A)
;;     1825:6793 (in fn1825_675E)
;;     1825:67C5 (in fn1825_675E)
;;     1825:67E4 (in fn1825_675E)
;;     1825:6F69 (in fn1825_6EA4)
;;     1825:6F90 (in fn1825_6EA4)
;;     1825:6FED (in fn1825_6EA4)
;;     1825:700A (in fn1825_6EA4)
;;     1825:702A (in fn1825_6EA4)
;;     1F38:05AF (in fn1F38_05A1)
;;     20B2:006F (in fn20B2_005C)
;;     20B2:011C (in fn20B2_0118)
;;     20B2:0137 (in fn20B2_0118)
;;     20B2:1021 (in fn20B2_1014)
;;     3CEE:483B (in fn3CEE_47CC)
;;     3CEE:4868 (in fn3CEE_47CC)
;;     3CEE:48CE (in fn3CEE_4882)
;;     3CEE:4913 (in fn3CEE_4882)
;;     3CEE:6DEA (in fn3CEE_6DBC)
;;     3CEE:7092 (in fn3CEE_6F82)
;;     3CEE:87A1 (in fn3CEE_8634)
;;     3CEE:882C (in fn3CEE_8634)
;;     3CEE:88AD (in fn3CEE_8634)
;;     3CEE:88C8 (in fn3CEE_8634)
;;     3CEE:89D3 (in fn3CEE_89CC)
;;     3CEE:8A51 (in fn3CEE_8A23)
fn1F38_04E7 proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	mov	ax,[bp+0Ah]
	cmp	ax,[0EEEh]
	ja	0513h

l1F38_04F5:
	mov	bx,[bp+0Ch]
	cmp	bx,[0EF0h]
	ja	0513h

l1F38_04FE:
	mov	[0F06h],ax
	mov	[0F08h],bx
	add	ax,[0EEAh]
	add	bx,[0EECh]
	call	002Eh
	call	0069h

l1F38_0513:
	pop	di
	pop	si
	pop	bp
	retf

;; fn1F38_0517: 1F38:0517
;;   Called from:
;;     1825:0010 (in fn1825_000A)
;;     1825:001C (in fn1825_000A)
;;     1825:22CE (in fn1825_22BC)
;;     1825:22DA (in fn1825_22BC)
;;     1825:2C59 (in fn1825_2C52)
;;     1825:2C7F (in fn1825_2C52)
;;     1825:2CCA (in fn1825_2C52)
;;     1825:3FD2 (in fn1825_3EE6)
;;     1825:3FF9 (in fn1825_3EE6)
;;     1825:4140 (in fn1825_3EE6)
;;     1825:423C (in fn1825_3EE6)
;;     1825:44D4 (in fn1825_3EE6)
;;     1825:465F (in fn1825_4658)
;;     1825:46DC (in fn1825_4658)
;;     1825:4748 (in fn1825_4658)
;;     1825:481A (in fn1825_4814)
;;     1825:4828 (in fn1825_4814)
;;     1825:48AF (in fn1825_4814)
;;     1825:4C01 (in fn1825_4BFA)
;;     1825:4C5F (in fn1825_4BFA)
;;     1825:4CA0 (in fn1825_4BFA)
;;     1825:4CD0 (in fn1825_4BFA)
;;     1825:5E63 (in fn1825_5E5C)
;;     1825:5EE5 (in fn1825_5E5C)
;;     1825:5F22 (in fn1825_5E5C)
;;     1825:6083 (in fn1825_6078)
;;     1825:608F (in fn1825_6078)
;;     1825:6458 (in fn1825_63F8)
;;     1825:6466 (in fn1825_63F8)
;;     1825:6496 (in fn1825_648A)
;;     1825:64A2 (in fn1825_648A)
;;     1825:659E (in fn1825_648A)
;;     1825:65CE (in fn1825_648A)
;;     1825:65F1 (in fn1825_648A)
;;     1825:6764 (in fn1825_675E)
;;     1825:6770 (in fn1825_675E)
;;     1825:6EAF (in fn1825_6EA4)
;;     1825:6EBB (in fn1825_6EA4)
;;     20B2:0063 (in fn20B2_005C)
fn1F38_0517 proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	mov	ah,[0F06h]
	mov	al,[0F08h]
	pop	di
	pop	si
	pop	bp
	retf

;; fn1F38_0527: 1F38:0527
;;   Called from:
;;     1825:015D (in fn1825_000A)
;;     1825:03BB (in fn1825_037E)
;;     1825:05E1 (in fn1825_037E)
;;     1825:074D (in fn1825_06E0)
;;     1825:09EF (in fn1825_06E0)
;;     1825:0F3A (in fn1825_0E72)
;;     1825:1388 (in fn1825_0E72)
;;     1825:19AE (in fn1825_18A6)
;;     1825:1D2E (in fn1825_18A6)
;;     1825:24D6 (in fn1825_2450)
;;     1825:25A0 (in fn1825_2450)
;;     1825:2906 (in fn1825_2880)
;;     1825:2A16 (in fn1825_2880)
;;     1825:2AAB (in fn1825_2A26)
;;     1825:2B62 (in fn1825_2A26)
;;     1825:3598 (in fn1825_3436)
;;     1825:3754 (in fn1825_3436)
;;     1825:532D (in fn1825_5154)
;;     1825:54C3 (in fn1825_5154)
;;     1825:5C5B (in fn1825_5BD8)
;;     1825:5DA4 (in fn1825_5BD8)
;;     1825:64B5 (in fn1825_648A)
;;     1825:66A9 (in fn1825_648A)
;;     3CEE:66E3 (in fn3CEE_6620)
;;     3CEE:66E3 (in fn3CEE_6620)
;;     3CEE:6737 (in fn3CEE_66FF)
fn1F38_0527 proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	mov	ax,[bp+0Ah]
	mov	[0F0Ah],ax
	mov	cx,2000h
	test	word ptr [bp+0Ah],0FFFFh
	jz	054Ah

l1F38_053C:
	mov	cx,0B0Ch
	test	word ptr [0EE6h],0FFFFh
	jz	054Ah

l1F38_0547:
	mov	cx,607h

l1F38_054A:
	mov	ah,1h
	int	10h
	pop	di
	pop	si
	pop	bp
	retf

;; fn1F38_0552: 1F38:0552
;;   Called from:
;;     3CEE:66D8 (in fn3CEE_6620)
;;     3CEE:66D8 (in fn3CEE_6620)
fn1F38_0552 proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	mov	ax,[0F0Ah]
	pop	di
	pop	si
	pop	bp
	retf

;; fn1F38_055E: 1F38:055E
;;   Called from:
;;     3CEE:3F3E (in fn3CEE_3E8B)
;;     3CEE:3F3E (in fn3CEE_3E8B)
;;     3CEE:40D2 (in fn3CEE_3F4C)
;;     3CEE:40FD (in fn3CEE_3F4C)
;;     3CEE:7161 (in fn3CEE_70B0)
fn1F38_055E proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	mov	ch,[bp+0Ah]
	mov	cl,[bp+0Ch]
	mov	dh,[bp+0Eh]
	mov	dl,[bp+10h]
	add	ch,[0EEAh]
	add	dh,[0EEAh]
	add	cl,[0EECh]
	add	dl,[0EECh]
	mov	ax,[bp+12h]
	test	ax,ax
	jz	059Ah

l1F38_0586:
	jns	0592h

l1F38_0588:
	neg	ax

l1F38_058A:
	call	017Fh
	dec	ax
	jnz	058Ah

l1F38_0590:
	jmp	059Dh

l1F38_0592:
	call	0104h
	dec	ax
	jnz	0592h

l1F38_0598:
	jmp	059Dh

l1F38_059A:
	call	01FAh

l1F38_059D:
	pop	di
	pop	si
	pop	bp
	retf

;; fn1F38_05A1: 1F38:05A1
;;   Called from:
;;     1F38:075C (in fn1F38_05DB)
;;     1F38:08FF (in fn1F38_08CB)
fn1F38_05A1 proc
	push	es
	push	si
	push	dx
	push	cx
	push	bx
	push	ax
	xor	ax,ax
	mov	al,dh
	xor	dh,dh
	push	dx
	push	ax
	call	far 1F38h:04E7h
	add	sp,4h
	pop	ax
	pop	bx
	pop	cx
	pop	dx
	pop	si
	pop	es
	ret

;; fn1F38_05BE: 1F38:05BE
;;   Called from:
;;     1F38:062C (in fn1F38_05DB)
;;     1F38:064E (in fn1F38_05DB)
;;     1F38:0658 (in fn1F38_05DB)
;;     1F38:0675 (in fn1F38_05DB)
;;     1F38:06A4 (in fn1F38_05DB)
;;     1F38:06B7 (in fn1F38_05DB)
;;     1F38:06DA (in fn1F38_05DB)
;;     1F38:06F0 (in fn1F38_05DB)
;;     1F38:070C (in fn1F38_05DB)
fn1F38_05BE proc
	lodsb	al,es:[si]
	or	al,al
	jz	05C7h

l1F38_05C4:
	inc	bh
	ret

l1F38_05C7:
	dec	si
	or	bl,bl
	jz	05D7h

l1F38_05CC:
	cmp	bh,8h
	jnc	05C4h

l1F38_05D1:
	mov	al,es:[si-1h]
	jmp	05C4h

l1F38_05D7:
	mov	al,20h
	jmp	05C4h

;; fn1F38_05DB: 1F38:05DB
;;   Called from:
;;     1825:06D0 (in fn1825_05F2)
;;     1825:0F80 (in fn1825_0E72)
;;     1825:0F99 (in fn1825_0E72)
;;     1825:1A14 (in fn1825_18A6)
;;     1825:1A2D (in fn1825_18A6)
;;     1825:208C (in fn1825_2020)
;;     1825:20A5 (in fn1825_2020)
;;     1825:2207 (in fn1825_2020)
;;     1825:2220 (in fn1825_2020)
;;     1825:24EF (in fn1825_2450)
;;     1825:2508 (in fn1825_2450)
;;     1825:25C5 (in fn1825_25AE)
;;     1825:25DE (in fn1825_25AE)
;;     1825:2711 (in fn1825_26D6)
;;     1825:2729 (in fn1825_26D6)
;;     1825:27EA (in fn1825_26D6)
;;     1825:284A (in fn1825_26D6)
;;     1825:291F (in fn1825_2880)
;;     1825:2938 (in fn1825_2880)
;;     1825:2AC4 (in fn1825_2A26)
;;     1825:2ADD (in fn1825_2A26)
;;     1825:2B85 (in fn1825_2B6E)
;;     1825:2B9E (in fn1825_2B6E)
;;     1825:35BD (in fn1825_3436)
;;     1825:35D6 (in fn1825_3436)
;;     1825:35FE (in fn1825_3436)
;;     1825:3613 (in fn1825_3436)
;;     1825:39F5 (in fn1825_39DE)
;;     1825:3A0E (in fn1825_39DE)
;;     1825:3E45 (in fn1825_3CDC)
;;     1825:3EAC (in fn1825_3CDC)
;;     1825:3F0D (in fn1825_3EE6)
;;     1825:3F26 (in fn1825_3EE6)
;;     1825:45C9 (in fn1825_45B2)
;;     1825:45E2 (in fn1825_45B2)
;;     1825:4787 (in fn1825_4770)
;;     1825:47A0 (in fn1825_4770)
;;     1825:4A40 (in fn1825_4A02)
;;     1825:4A65 (in fn1825_4A02)
;;     1825:4B21 (in fn1825_4A02)
;;     1825:4DF4 (in fn1825_4DA6)
;;     1825:4E0D (in fn1825_4DA6)
;;     1825:5346 (in fn1825_5154)
;;     1825:535F (in fn1825_5154)
;;     1825:53BA (in fn1825_5154)
;;     1825:540F (in fn1825_5154)
;;     1825:5748 (in fn1825_5730)
;;     1825:5761 (in fn1825_5730)
;;     1825:5868 (in fn1825_5850)
;;     1825:5881 (in fn1825_5850)
;;     1825:5A1B (in fn1825_59CC)
;;     1825:5A3F (in fn1825_59CC)
;;     1825:5B05 (in fn1825_59CC)
;;     1825:5C74 (in fn1825_5BD8)
;;     1825:5C8D (in fn1825_5BD8)
;;     1825:5CBD (in fn1825_5BD8)
;;     1825:5CD6 (in fn1825_5BD8)
;;     1825:6F22 (in fn1825_6EA4)
;;     1825:6F3B (in fn1825_6EA4)
;;     1825:6FCC (in fn1825_6EA4)
fn1F38_05DB proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	cld
	mov	ax,[bp+0Eh]
	cmp	ax,[0EEEh]
	ja	0603h

l1F38_05EA:
	mov	ax,[bp+10h]
	cmp	ax,[0EF0h]
	ja	0603h

l1F38_05F3:
	mov	ax,[bp+0Ah]
	cmp	ax,[bp+0Eh]
	ja	0603h

l1F38_05FB:
	mov	ax,[bp+0Ch]
	cmp	ax,[bp+10h]
	jbe	0606h

l1F38_0603:
	jmp	075Fh

l1F38_0606:
	les	si,[bp+12h]
	xor	bx,bx

l1F38_060B:
	cmp	byte ptr es:[bx+si],0h
	jz	0615h

l1F38_0611:
	inc	bl
	jmp	060Bh

l1F38_0615:
	mov	ax,[bp+0Ah]
	mov	[0F06h],ax
	mov	ax,[bp+0Ch]
	mov	[0F08h],ax
	call	003Fh
	mov	cx,[bp+10h]
	sub	cx,[0F08h]
	dec	cx
	call	05BEh
	push	ax
	mov	ax,[bp+0Ah]
	cmp	ax,[bp+0Eh]
	pop	ax
	jnz	063Dh

l1F38_0639:
	inc	cx
	inc	cx
	jmp	064Eh

l1F38_063D:
	push	ax
	mov	ax,[bp+10h]
	cmp	ax,[bp+0Ch]
	pop	ax
	jz	064Eh

l1F38_0647:
	call	0000h
	inc	word ptr [0F08h]

l1F38_064E:
	call	05BEh
	or	cx,cx
	jle	0658h

l1F38_0655:
	call	029Ah

l1F38_0658:
	call	05BEh
	or	cx,cx
	mov	cx,[bp+0Eh]
	jl	0671h

l1F38_0662:
	cmp	cx,[bp+0Ah]
	jnz	066Ah

l1F38_0667:
	jmp	074Ah

l1F38_066A:
	call	0000h
	inc	word ptr [0F08h]

l1F38_0671:
	sub	cx,[bp+0Ah]
	dec	cx
	call	05BEh
	push	ax
	mov	ax,[bp+10h]
	cmp	ax,[bp+0Ch]
	pop	ax
	jnz	068Ah

l1F38_0682:
	inc	cx
	call	0000h
	inc	word ptr [0F08h]

l1F38_068A:
	mov	dx,9Eh
	jcxz	069Ch

l1F38_068F:
	add	[0F0Ch],dx
	inc	word ptr [0F06h]
	call	0000h
	loop	068Fh

l1F38_069C:
	add	[0F0Ch],dx
	inc	word ptr [0F06h]
	call	05BEh
	push	ax
	mov	ax,[bp+10h]
	cmp	ax,[bp+0Ch]
	pop	ax
	ja	06B4h

l1F38_06B1:
	jmp	074Ah

l1F38_06B4:
	call	0000h
	call	05BEh
	mov	cx,[bp+10h]
	sub	cx,[bp+0Ch]
	sub	[0F0Ch],cx
	sub	[0F0Ch],cx
	sub	[0F08h],cx
	push	word ptr [0F0Ch]
	push	word ptr [0F08h]
	dec	cx
	jcxz	06DAh

l1F38_06D7:
	call	029Ah

l1F38_06DA:
	call	05BEh
	pop	word ptr [0F08h]
	pop	word ptr [0F0Ch]
	dec	word ptr [0F0Ch]
	dec	word ptr [0F0Ch]
	call	0000h
	call	05BEh
	mov	cx,[bp+0Eh]
	sub	cx,[bp+0Ah]
	dec	cx
	jcxz	070Ch

l1F38_06FC:
	mov	dx,0A2h

l1F38_06FF:
	sub	[0F0Ch],dx
	dec	word ptr [0F06h]
	call	0000h
	loop	06FFh

l1F38_070C:
	call	05BEh
	or	al,al
	jz	074Ah

l1F38_0713:
	mov	bx,[bp+0Eh]
	sub	bx,[bp+0Ah]
	dec	bx
	or	bx,bx
	jz	074Ah

l1F38_071E:
	mov	cx,[bp+10h]
	sub	cx,[bp+0Ch]
	dec	cx
	jcxz	074Ah

l1F38_0727:
	mov	dx,0A0h

l1F38_072A:
	push	cx
	push	word ptr [0F0Ch]
	push	word ptr [0F08h]
	call	029Ah
	pop	word ptr [0F08h]
	pop	word ptr [0F0Ch]
	add	[0F0Ch],dx
	inc	word ptr [0F06h]
	pop	cx
	dec	bx
	jnz	072Ah

l1F38_074A:
	mov	dh,[bp+0Ah]
	inc	dh
	mov	[0F06h],dh
	mov	dl,[bp+0Ch]
	inc	dl
	mov	[0F08h],dl
	call	05A1h

l1F38_075F:
	pop	di
	pop	si
	pop	bp
	retf

;; fn1F38_0763: 1F38:0763
;;   Called from:
;;     1F38:07F3 (in fn1F38_07E7)
;;     1F38:0806 (in fn1F38_07FA)
fn1F38_0763 proc
	xor	dl,dl
	mov	cx,ax
	or	cx,bx
	test	cx,8000h
	jnz	07BEh

l1F38_076F:
	test	cx,10h
	jz	0778h

l1F38_0775:
	or	dl,80h

l1F38_0778:
	test	cx,8h
	jz	0781h

l1F38_077E:
	or	dl,8h

l1F38_0781:
	test	word ptr [0EE6h],0FFFFh
	jnz	0792h

l1F38_0789:
	test	cx,20h
	jz	0792h

l1F38_078F:
	or	dl,1h

l1F38_0792:
	test	ax,80h
	jz	079Ah

l1F38_0797:
	or	ax,7h

l1F38_079A:
	test	bx,80h
	jz	07A3h

l1F38_07A0:
	or	bx,7h

l1F38_07A3:
	test	cx,100h
	jz	07B2h

l1F38_07A9:
	test	bx,7h
	jnz	07B2h

l1F38_07AF:
	or	bx,7h

l1F38_07B2:
	test	cx,200h
	jz	07BEh

l1F38_07B8:
	xor	ax,ax
	mov	bx,ax
	mov	dl,al

l1F38_07BE:
	mov	cl,4h
	shl	bl,cl
	or	dl,bl
	and	al,0Fh
	or	dl,al
	mov	[0F14h],dl
	test	word ptr [0EE6h],0FFFFh
	jz	07E6h

l1F38_07D4:
	mov	ax,[0EFEh]
	test	ax,80h
	jz	07DFh

l1F38_07DC:
	or	ax,7h

l1F38_07DF:
	and	ax,0Fh
	mov	dx,3D9h
	out	dx,al

l1F38_07E6:
	ret

;; fn1F38_07E7: 1F38:07E7
;;   Called from:
;;     1825:0443 (in fn1825_037E)
;;     1825:07D1 (in fn1825_06E0)
;;     1825:1248 (in fn1825_0E72)
;;     1825:1BE6 (in fn1825_18A6)
;;     1825:2A00 (in fn1825_2880)
;;     1825:3716 (in fn1825_3436)
;;     1825:385B (in fn1825_3766)
;;     1825:3CD2 (in fn1825_3BCE)
;;     1825:54A0 (in fn1825_5154)
;;     1825:55DF (in fn1825_54D4)
;;     1825:5D9B (in fn1825_5BD8)
;;     1825:70CC (in fn1825_7078)
;;     1825:712A (in fn1825_7106)
;;     1F38:0366 (in fn1F38_032B)
fn1F38_07E7 proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	mov	ax,[0EF2h]
	mov	bx,[0EF4h]
	call	0763h
	pop	di
	pop	si
	pop	bp
	retf

;; fn1F38_07FA: 1F38:07FA
;;   Called from:
;;     1825:03DB (in fn1825_037E)
;;     1825:0758 (in fn1825_06E0)
;;     1825:11E8 (in fn1825_0E72)
;;     1825:1B86 (in fn1825_18A6)
;;     1825:29C6 (in fn1825_2880)
;;     1825:36DF (in fn1825_3436)
;;     1825:3832 (in fn1825_3766)
;;     1825:3CB2 (in fn1825_3BCE)
;;     1825:5469 (in fn1825_5154)
;;     1825:55B6 (in fn1825_54D4)
;;     1825:5D61 (in fn1825_5BD8)
fn1F38_07FA proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	mov	ax,[0EF6h]
	mov	bx,[0EF8h]
	call	0763h
	pop	di
	pop	si
	pop	bp
	retf
1F38:080D                                        55 56 57              UVW
1F38:0810 8B EC A1 FA 0E 8B 1E FC 0E E8 47 FF 5F 5E 5D CB ..........G._^].
1F38:0820 55 56 57 8B EC 8B 46 0A 0B 46 0C 0B 46 0E 0B 46 UVW...F..F..F..F
1F38:0830 10 0B 46 12 0B 46 14 0B 46 16 0B 46 18 75 33 B8 ..F..F..F..F.u3.
1F38:0840 80 00 A3 F2 0E B8 40 00 A3 F4 0E B8 00 01 A3 F6 ......@.........
1F38:0850 0E B8 40 00 A3 F8 0E B8 00 01 A3 FA 0E B8 40 00 ..@...........@.
1F38:0860 A3 FC 0E B8 40 00 A3 FE 0E B8 40 00 A3 00 0F EB ....@.....@.....
1F38:0870 51 90 8B 46 0A 0B 46 0C 74 0C 8B 46 0A A3 F2 0E Q..F..F.t..F....
1F38:0880 8B 46 0C A3 F4 0E 8B 46 0E 0B 46 10 74 0C 8B 46 .F.....F..F.t..F
1F38:0890 0E A3 F6 0E 8B 46 10 A3 F8 0E 8B 46 12 0B 46 14 .....F.....F..F.
1F38:08A0 74 0C 8B 46 12 A3 FA 0E 8B 46 14 A3 FC 0E 8B 46 t..F.....F.....F
1F38:08B0 16 0B C0 74 03 A3 FE 0E 8B 46 18 0B C0 74 03 A3 ...t.....F...t..
1F38:08C0 00 0F 9A E7 07 38 1F 5F 5E 5D CB                .....8._^].     

;; fn1F38_08CB: 1F38:08CB
;;   Called from:
;;     20B2:0077 (in fn20B2_005C)
;;     20B2:0124 (in fn20B2_0118)
;;     3CEE:88B5 (in fn3CEE_8634)
fn1F38_08CB proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	push	cx
	push	word ptr [0F0Ch]
	push	word ptr [0F08h]
	push	word ptr [0F06h]
	mov	cx,[0EF0h]
	sub	cx,[0F08h]
	inc	cx
	mov	al,20h
	call	029Ah
	pop	word ptr [0F06h]
	pop	word ptr [0F08h]
	pop	word ptr [0F0Ch]
	mov	dl,[0F08h]
	mov	dh,[0F06h]
	call	05A1h
	pop	cx
	pop	di
	pop	si
	pop	bp
	retf
1F38:0907                      55 56 57 8B EC FF 36 0C 0F        UVW...6..
1F38:0910 A1 06 0F 50 8B 1E 08 0F 53 8B 0E EE 0E 2B C8 41 ...P....S....+.A
1F38:0920 51 9A CB 08 38 1F 59 49 74 07 51 E8 62 F7 59 EB Q...8.YIt.Q.b.Y.
1F38:0930 EF 8F 06 08 0F 8F 06 06 0F 8F 06 0C 0F 8A 16 08 ................
1F38:0940 0F 8A 36 06 0F E8 59 FC 5F 5E 5D CB             ..6...Y._^].    

;; fn1F38_094C: 1F38:094C
;;   Called from:
;;     1825:01C4 (in fn1825_017A)
;;     1825:0CDD (in fn1825_0CD2)
fn1F38_094C proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	call	028Fh
	mov	word ptr [0F06h],0h
	mov	word ptr [0F08h],0h
	call	003Fh
	call	0069h
	pop	di
	pop	si
	pop	bp
	retf

;; fn1F38_096A: 1F38:096A
;;   Called from:
;;     1F38:0A45 (in fn1F38_0A29)
;;     1F38:0A93 (in fn1F38_0A6F)
fn1F38_096A proc
	call	00E8h
	jc	09C5h

l1F38_096F:
	push	word ptr [0F0Ch]
	push	ds
	push	cx
	push	dx
	xor	ax,ax
	mov	bx,ax
	mov	al,ch
	mov	bl,cl
	call	002Eh
	pop	ax
	pop	cx
	sub	ah,ch
	inc	ah
	sub	al,cl
	inc	al
	mov	cl,al
	xor	ch,ch
	mov	al,ah
	xor	ah,ah
	mov	dx,3D8h
	test	word ptr [0EE8h],0FFFFh
	lds	bx,[0F0Ch]
	cld
	jz	09A8h

l1F38_09A3:
	push	ax
	mov	al,21h
	out	dx,al
	pop	ax

l1F38_09A8:
	mov	si,bx
	add	bx,0A0h
	push	cx
	rep movsw
	pop	cx
	dec	ax
	jnz	09A8h

l1F38_09B5:
	pop	ds
	pop	word ptr [0F0Ch]
	test	word ptr [0EE8h],0FFFFh
	jz	09C5h

l1F38_09C2:
	mov	al,29h
	out	dx,al

l1F38_09C5:
	ret

;; fn1F38_09C6: 1F38:09C6
;;   Called from:
;;     1F38:0A68 (in fn1F38_0A4C)
;;     1F38:0ABE (in fn1F38_0A9A)
fn1F38_09C6 proc
	call	00E8h
	jnc	09CEh

l1F38_09CB:
	jmp	0A28h
1F38:09CD                                        90                    .  

l1F38_09CE:
	push	word ptr [0F0Ch]
	push	ds
	push	cx
	push	dx
	xor	ax,ax
	mov	bx,ax
	mov	al,ch
	mov	bl,cl
	call	002Eh
	pop	ax
	pop	cx
	sub	ah,ch
	inc	ah
	sub	al,cl
	inc	al
	mov	cl,al
	xor	ch,ch
	mov	al,ah
	xor	ah,ah
	mov	dx,3D8h
	test	word ptr [0EE8h],0FFFFh
	push	es
	les	bx,[0F0Ch]
	pop	ds
	mov	si,di
	cld
	jz	0A0Bh

l1F38_0A06:
	push	ax
	mov	al,21h
	out	dx,al
	pop	ax

l1F38_0A0B:
	mov	di,bx
	add	bx,0A0h
	push	cx
	rep movsw
	pop	cx
	dec	ax
	jnz	0A0Bh

l1F38_0A18:
	pop	ds
	pop	word ptr [0F0Ch]
	test	word ptr [0EE8h],0FFFFh
	jz	0A28h

l1F38_0A25:
	mov	al,29h
	out	dx,al

l1F38_0A28:
	ret

;; fn1F38_0A29: 1F38:0A29
;;   Called from:
;;     1825:0090 (in fn1825_000A)
fn1F38_0A29 proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	mov	ch,[0EEAh]
	mov	cl,[0EECh]
	mov	dh,[0EEEh]
	mov	dl,[0EF0h]
	add	dh,ch
	add	dl,cl
	les	di,[bp+0Ah]
	call	096Ah
	pop	di
	pop	si
	pop	bp
	retf

;; fn1F38_0A4C: 1F38:0A4C
;;   Called from:
;;     1825:0123 (in fn1825_000A)
;;     1825:01BA (in fn1825_017A)
;;     1825:0D2D (in fn1825_0CD2)
;;     1825:0D6C (in fn1825_0D5E)
fn1F38_0A4C proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	mov	ch,[0EEAh]
	mov	cl,[0EECh]
	mov	dh,[0EEEh]
	mov	dl,[0EF0h]
	add	dh,ch
	add	dl,cl
	les	di,[bp+0Ah]
	call	09C6h
	pop	di
	pop	si
	pop	bp
	retf

;; fn1F38_0A6F: 1F38:0A6F
;;   Called from:
;;     1825:4D6B (in fn1825_4CFE)
fn1F38_0A6F proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	mov	ch,[bp+0Ah]
	mov	cl,[bp+0Ch]
	mov	dh,[bp+0Eh]
	mov	dl,[bp+10h]
	add	ch,[0EEAh]
	add	cl,[0EECh]
	add	dh,[0EEAh]
	add	dl,[0EECh]
	les	di,[bp+12h]
	call	096Ah
	pop	di
	pop	si
	pop	bp
	retf

;; fn1F38_0A9A: 1F38:0A9A
;;   Called from:
;;     1825:4D9C (in fn1825_4D78)
fn1F38_0A9A proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	mov	ch,[bp+0Ah]
	mov	cl,[bp+0Ch]
	mov	dh,[bp+0Eh]
	mov	dl,[bp+10h]
	add	ch,[0EEAh]
	add	cl,[0EECh]
	add	dh,[0EEAh]
	add	dl,[0EECh]
	les	di,[bp+12h]
	call	09C6h
	pop	di
	pop	si
	pop	bp
	retf

;; fn1F38_0AC5: 1F38:0AC5
;;   Called from:
;;     1F38:0B3E (in fn1F38_0B2D)
;;     1F38:0B4A (in fn1F38_0B2D)
fn1F38_0AC5 proc
	cld
	mov	cx,ax
	mov	dx,ax

l1F38_0ACA:
	lodsb
	cmp	al,1h
	jz	0AE4h

l1F38_0ACF:
	cmp	al,2h
	jz	0AE9h

l1F38_0AD3:
	cmp	al,3h
	jz	0AF2h

l1F38_0AD7:
	cmp	al,4h
	jz	0B00h

l1F38_0ADB:
	cmp	al,5h
	jz	0B10h

l1F38_0ADF:
	mov	ax,dx
	jmp	0B2Ch
1F38:0AE3          90                                        .            

l1F38_0AE4:
	lodsw
	mov	dx,ax
	jmp	0ACAh

l1F38_0AE9:
	lodsw
	cmp	cx,ax
	jnz	0B27h

l1F38_0AEE:
	lodsw
	jmp	0B2Ch
1F38:0AF1    90                                            .              

l1F38_0AF2:
	lodsw
	cmp	cx,ax
	jl	0B24h

l1F38_0AF7:
	lodsw
	cmp	cx,ax
	ja	0B27h

l1F38_0AFC:
	lodsw
	jmp	0B2Ch
1F38:0AFF                                              90                .

l1F38_0B00:
	lodsw
	cmp	cx,ax
	jl	0B24h

l1F38_0B05:
	lodsw
	cmp	cx,ax
	ja	0B27h

l1F38_0B0A:
	lodsw
	add	ax,cx
	jmp	0B2Ch
1F38:0B0F                                              90                .

l1F38_0B10:
	lodsw
	cmp	cx,ax
	jl	0B24h

l1F38_0B15:
	cmp	cx,[si]
	jg	0B24h

l1F38_0B19:
	sub	cx,ax
	add	si,2h
	lodsw
	sub	ax,cx
	jmp	0B2Ch
1F38:0B23          90                                        .            

l1F38_0B24:
	add	si,2h

l1F38_0B27:
	add	si,2h
	jmp	0ACAh

l1F38_0B2C:
	ret

;; fn1F38_0B2D: 1F38:0B2D
;;   Called from:
;;     1F38:0B65 (in fn1F38_0B4E)
;;     1F38:0BA0 (in fn1F38_0B88)
;;     1F38:0C3A (in fn1F38_0C24)
;;     1F38:0C60 (in fn1F38_0C41)
;;     1F38:0C7A (in fn1F38_0C67)
;;     1F38:0C9B (in fn1F38_0C81)
fn1F38_0B2D proc
	mov	si,[0F1Bh]
	shl	si,1h
	shl	si,1h
	push	si
	push	ax
	add	si,2h
	mov	si,[si+0F2Fh]
	call	0AC5h
	mov	[0F17h],ax
	pop	ax
	pop	si
	mov	si,[si+0F2Fh]
	call	0AC5h
	ret

;; fn1F38_0B4E: 1F38:0B4E
;;   Called from:
;;     1F38:0D30 (in fn1F38_0D06)
fn1F38_0B4E proc
	mov	dl,0FFh
	mov	ah,6h
	int	21h
	mov	ah,0h
	jz	0B4Eh

l1F38_0B58:
	cmp	al,0h
	jnz	0B65h

l1F38_0B5C:
	mov	ah,6h
	int	21h
	mov	ah,0h
	add	ax,100h

l1F38_0B65:
	call	0B2Dh
	ret

;; fn1F38_0B69: 1F38:0B69
;;   Called from:
;;     1F38:0CFF (in fn1F38_0CDC)
fn1F38_0B69 proc
	mov	ah,0Bh
	int	21h
	mov	ah,0h
	test	ax,ax
	jz	0B7Ch

l1F38_0B73:
	mov	ax,2h
	mov	word ptr [0F17h],0h

l1F38_0B7C:
	ret

;; fn1F38_0B7D: 1F38:0B7D
;;   Called from:
;;     1F38:0BBE (in fn1F38_0B88)
;;     1F38:0C94 (in fn1F38_0C81)
fn1F38_0B7D proc
	inc	bx
	inc	bx
	cmp	bx,[0F25h]
	jc	0B87h

l1F38_0B85:
	xor	bx,bx

l1F38_0B87:
	ret

;; fn1F38_0B88: 1F38:0B88
;;   Called from:
;;     1F38:0CCA (in fn1F38_0CC5)
;;     1F38:0CE9 (in fn1F38_0CDC)
;;     1F38:0D13 (in fn1F38_0D06)
fn1F38_0B88 proc
	mov	dl,0FFh
	mov	ah,6h
	int	21h
	mov	ah,0h
	jz	0BD8h

l1F38_0B92:
	cmp	al,0h
	jnz	0B9Fh

l1F38_0B96:
	mov	ah,6h
	int	21h
	mov	ah,0h
	add	ax,100h

l1F38_0B9F:
	push	ax
	call	0B2Dh
	sub	ax,80h
	cmp	ax,7h
	pop	ax
	ja	0BB8h

l1F38_0BAC:
	mov	word ptr [0F2Bh],0h
	mov	word ptr [0F2Dh],0h

l1F38_0BB8:
	mov	bx,[0F2Dh]
	mov	si,bx
	call	0B7Dh
	cmp	bx,[0F2Bh]
	jnz	0BC9h

l1F38_0BC7:
	jmp	0B88h

l1F38_0BC9:
	mov	[0F2Dh],bx
	push	es
	les	bx,[0F27h]
	mov	es:[bx+si],ax
	pop	es
	jmp	0B88h

l1F38_0BD8:
	ret

;; fn1F38_0BD9: 1F38:0BD9
;;   Called from:
;;     21DC:0ECD (in fn21DC_0EC2)
fn1F38_0BD9 proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	push	ds
	mov	dx,cs
	mov	ds,dx
	mov	dx,0D4Eh
	mov	al,23h
	mov	ah,25h
	int	21h
	pop	ds
	pop	di
	pop	si
	pop	bp
	retf

;; fn1F38_0BF1: 1F38:0BF1
;;   Called from:
;;     21DC:0550 (in fn21DC_04BA)
;;     21DC:11D8 (in main)
fn1F38_0BF1 proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	pop	di
	pop	si
	pop	bp
	retf
1F38:0BFA                               55 56 57 8B EC 8B           UVW...
1F38:0C00 46 0A A3 1D 0F 5F 5E 5D CB                      F...._^].       

;; fn1F38_0C09: 1F38:0C09
;;   Called from:
;;     3431:078C (in fn3431_06CC)
fn1F38_0C09 proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	les	si,[bp+0Ah]
	mov	[0F23h],es
	mov	[0F21h],si
	mov	si,[bp+0Eh]
	mov	[0F1Fh],si
	pop	di
	pop	si
	pop	bp
	retf

;; fn1F38_0C24: 1F38:0C24
;;   Called from:
;;     1F38:0CEC (in fn1F38_0CDC)
;;     1F38:0CFA (in fn1F38_0CDC)
fn1F38_0C24 proc
	test	word ptr [0F1Fh],0FFFFh
	jz	0C40h

l1F38_0C2C:
	les	si,[0F21h]
	xor	ah,ah
	lodsb	al,es:[si]
	cmp	al,3Bh
	jnz	0C3Ah

l1F38_0C38:
	mov	al,0Dh

l1F38_0C3A:
	call	0B2Dh
	or	bx,1h

l1F38_0C40:
	ret

;; fn1F38_0C41: 1F38:0C41
;;   Called from:
;;     1F38:0D16 (in fn1F38_0D06)
;;     1F38:0D2B (in fn1F38_0D06)
fn1F38_0C41 proc
	test	word ptr [0F1Fh],0FFFFh
	jz	0C66h

l1F38_0C49:
	xor	ah,ah
	les	si,[0F21h]
	cld
	lodsb	al,es:[si]
	mov	[0F21h],si
	dec	word ptr [0F1Fh]
	cmp	al,3Bh
	jnz	0C60h

l1F38_0C5E:
	mov	al,0Dh

l1F38_0C60:
	call	0B2Dh
	or	bx,1h

l1F38_0C66:
	ret

;; fn1F38_0C67: 1F38:0C67
;;   Called from:
;;     1F38:0CF1 (in fn1F38_0CDC)
fn1F38_0C67 proc
	mov	bx,[0F2Bh]
	cmp	bx,[0F2Dh]
	jz	0C80h

l1F38_0C71:
	push	es
	les	si,[0F27h]
	mov	ax,es:[bx+si]
	pop	es
	call	0B2Dh
	or	bx,1h

l1F38_0C80:
	ret

;; fn1F38_0C81: 1F38:0C81
;;   Called from:
;;     1F38:0D1B (in fn1F38_0D06)
fn1F38_0C81 proc
	mov	bx,[0F2Bh]
	cmp	bx,[0F2Dh]
	jz	0CA1h

l1F38_0C8B:
	push	es
	les	si,[0F27h]
	mov	ax,es:[bx+si]
	pop	es
	call	0B7Dh
	mov	[0F2Bh],bx
	call	0B2Dh
	or	bx,1h

l1F38_0CA1:
	ret

;; fn1F38_0CA2: 1F38:0CA2
;;   Called from:
;;     3431:002F (in fn3431_000A)
;;     3431:018E (in fn3431_013E)
fn1F38_0CA2 proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	mov	ax,[bp+0Ah]
	mov	[0F27h],ax
	mov	ax,[bp+0Ch]
	mov	[0F29h],ax
	mov	ax,[bp+0Eh]
	mov	[0F25h],ax
	xor	ax,ax
	mov	[0F2Bh],ax
	mov	[0F2Dh],ax
	pop	di
	pop	si
	pop	bp
	retf

;; fn1F38_0CC5: 1F38:0CC5
;;   Called from:
;;     1825:042C (in fn1825_037E)
;;     1825:07BA (in fn1825_06E0)
;;     20B2:103A (in fn20B2_1014)
;;     21DC:003A (in fn21DC_0006)
fn1F38_0CC5 proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	call	0B88h
	xor	ax,ax
	mov	[0F2Bh],ax
	mov	[0F2Dh],ax
	mov	[0F1Fh],ax
	pop	di
	pop	si
	pop	bp
	retf

;; fn1F38_0CDC: 1F38:0CDC
;;   Called from:
;;     1825:0CA1 (in fn1825_0C7E)
;;     1F38:0D45 (in fn1F38_0D37)
;;     3431:06DE (in fn3431_06CC)
fn1F38_0CDC proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	test	word ptr [0F25h],0FFFFh
	jz	0CFAh

l1F38_0CE9:
	call	0B88h
	call	0C24h
	jnz	0CF8h

l1F38_0CF1:
	call	0C67h
	jnz	0CF8h

l1F38_0CF6:
	xor	ax,ax

l1F38_0CF8:
	jmp	0D02h

l1F38_0CFA:
	call	0C24h
	jnz	0CF8h

l1F38_0CFF:
	call	0B69h

l1F38_0D02:
	pop	di
	pop	si
	pop	bp
	retf

;; fn1F38_0D06: 1F38:0D06
;;   Called from:
;;     21DC:0D7C (in fn21DC_0D60)
;;     3431:06ED (in fn3431_06CC)
fn1F38_0D06 proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	test	word ptr [0F25h],0FFFFh
	jz	0D2Bh

l1F38_0D13:
	call	0B88h
	call	0C41h
	jnz	0D20h

l1F38_0D1B:
	call	0C81h
	jz	0D13h

l1F38_0D20:
	mov	bx,[0F17h]
	mov	[0F19h],bx
	jmp	0D33h
1F38:0D2A                               90                          .     

l1F38_0D2B:
	call	0C41h
	jnz	0D20h

l1F38_0D30:
	call	0B4Eh

l1F38_0D33:
	pop	di
	pop	si
	pop	bp
	retf

;; fn1F38_0D37: 1F38:0D37
;;   Called from:
;;     21DC:0D66 (in fn21DC_0D60)
fn1F38_0D37 proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	mov	ah,1h
	int	16h
	mov	ax,0h
	jz	0D4Ah

l1F38_0D45:
	call	far 1F38h:0CDCh

l1F38_0D4A:
	pop	di
	pop	si
	pop	bp
	retf
1F38:0D4E                                           50 53               PS
1F38:0D50 51 52 56 57 55 1E 06 9C B8 8E 4D 8E D8 9D 07 1F QRVWU.....M.....
1F38:0D60 5D 5F 5E 5A 59 5B 58 CF                         ]_^ZY[X.        

;; fn1F38_0D68: 1F38:0D68
;;   Called from:
;;     21DC:0ED2 (in fn21DC_0EC2)
fn1F38_0D68 proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	push	ax
	mov	ax,4h
	push	bp
	mov	bp,sp
	xchg	[bp+2h],ax
	pop	bp
	call	far 1F38h:0D8Dh
	add	sp,2h
	pop	di
	pop	si
	pop	bp
	retf

;; fn1F38_0D84: 1F38:0D84
;;   Called from:
;;     21DC:054B (in fn21DC_04BA)
;;     21DC:11D3 (in main)
fn1F38_0D84 proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	pop	di
	pop	si
	pop	bp
	retf

;; fn1F38_0D8D: 1F38:0D8D
;;   Called from:
;;     1F38:0D78 (in fn1F38_0D68)
;;     21DC:0534 (in fn21DC_04BA)
fn1F38_0D8D proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	mov	bx,[bp+0Ah]
	mov	[10A3h],bx
	mov	al,0h
	mov	ah,44h
	int	21h
	and	dx,80h
	mov	[10A5h],dx
	pop	di
	pop	si
	pop	bp
	retf

;; fn1F38_0DAB: 1F38:0DAB
;;   Called from:
;;     3431:0275 (in fn3431_0214)
fn1F38_0DAB proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	mov	word ptr [10A1h],0h
	mov	cx,[bp+0Eh]
	jcxz	0DFBh

l1F38_0DBB:
	mov	bx,[10A3h]
	test	word ptr [10A5h],0FFFFh
	jz	0DEAh

l1F38_0DC7:
	push	cx
	push	ds
	mov	cx,1h
	lds	dx,[bp+0Ah]
	mov	ah,40h
	int	21h
	pop	ds
	pop	cx
	jc	0DDFh

l1F38_0DD7:
	inc	word ptr [bp+0Ah]
	loop	0DC7h

l1F38_0DDC:
	mov	ax,0h

l1F38_0DDF:
	mov	[10A1h],ax
	mov	ax,[bp+0Eh]
	sub	ax,cx
	jmp	0DFBh
1F38:0DE9                            90                            .      

l1F38_0DEA:
	push	ds
	lds	dx,[bp+0Ah]
	mov	ah,40h
