;;; Segment 2B9C (2B9C:0000)
2B9C:0000 06 26 C7 47 56 00 00 5E 8B E5 5D CB             .&.GV..^..].    

;; fn2B9C_000C: 2B9C:000C
;;   Called from:
;;     2644:19B7 (in fn2644_17C8)
fn2B9C_000C proc
	push	bp
	mov	bp,sp
	sub	sp,204h
	push	si
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+36h],0h
	jz	0094h

l2B9C_001E:
	sub	ax,ax
	push	ax
	mov	ax,[bp+0Ah]
	sub	dx,dx
	shl	ax,1h
	rcl	dx,1h
	mov	dh,dl
	mov	dl,ah
	mov	ah,al
	sub	al,al
	push	dx
	push	ax
	push	word ptr es:[bx+38h]
	call	far 208Fh:0115h
	add	sp,8h
	mov	word ptr [bp+0FDFCh],0h

l2B9C_0046:
	mov	ax,200h
	push	ax
	lea	ax,[bp+0FE00h]
	push	ss
	push	ax
	les	bx,[bp+6h]
	push	word ptr es:[bx+38h]
	call	far 208Fh:00C9h
	add	sp,8h
	mov	word ptr [bp+0FDFEh],0h

l2B9C_0065:
	mov	si,[bp+0FDFEh]
	cmp	byte ptr [bp+si+0FE00h],1Ah
	jz	007Ch

l2B9C_0070:
	inc	word ptr [bp+0FDFEh]
	cmp	word ptr [bp+0FDFEh],200h
	jc	0065h

l2B9C_007C:
	mov	ax,[bp+0FDFEh]
	add	[bp+0FDFCh],ax
	cmp	ax,200h
	jz	0046h

l2B9C_0089:
	mov	ax,[bp+0FDFCh]
	inc	ax
	pop	si
	mov	sp,bp
	pop	bp
	retf
2B9C:0093          90                                        .            

l2B9C_0094:
	mov	ax,1h
	pop	si
	mov	sp,bp
	pop	bp
	retf

;; fn2B9C_009C: 2B9C:009C
;;   Called from:
;;     2644:19E6 (in fn2644_17C8)
fn2B9C_009C proc
	push	bp
	mov	bp,sp
	push	si
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+36h],0h
	jz	00EFh

l2B9C_00AA:
	sub	ax,ax
	push	ax
	mov	ax,[bp+0Ah]
	sub	dx,dx
	shl	ax,1h
	rcl	dx,1h
	mov	dh,dl
	mov	dl,ah
	mov	ah,al
	sub	al,al
	push	dx
	push	ax
	push	word ptr es:[bx+38h]
	call	far 208Fh:0115h
	add	sp,8h
	push	word ptr [bp+10h]
	push	word ptr [bp+0Eh]
	push	word ptr [bp+0Ch]
	les	bx,[bp+6h]
	push	word ptr es:[bx+38h]
	call	far 208Fh:00C9h
	add	sp,8h
	mov	si,[bp+10h]
	les	bx,[bp+0Ch]
	mov	byte ptr es:[bx+si-1h],0h

l2B9C_00EF:
	pop	si
	pop	bp
	retf
2B9C:00F2       55 8B EC 83 EC 0A C4 5E 06 26 83 7F 36 00   U......^.&..6.
2B9C:0100 75 03 E9 A5 01 C7 46 F8 00 00 83 7E 0A 00 74 07 u.....F....~..t.
2B9C:0110 81 7E 10 00 02 72 05 B8 01 00 EB 02 2B C0 89 46 .~...r......+..F
2B9C:0120 F6 0B C0 75 03 E9 98 00 C4 5E 06 26 83 7F 3A 00 ...u.....^.&..:.
2B9C:0130 74 0F 26 FF 77 38 9A 06 00 7F 20 83 C4 02 89 46 t.&.w8.... ....F
2B9C:0140 F8 B8 02 00 50 2B C0 50 50 C4 5E 06 26 FF 77 38 ....P+.PP.^.&.w8
2B9C:0150 9A 15 01 8F 20 83 C4 08 89 46 FC 89 56 FE B8 00 .... ....F..V...
2B9C:0160 02 99 52 50 FF 76 FE FF 76 FC 9A DA 05 EE 3C 2D ..RP.v..v.....<-
2B9C:0170 00 02 F7 D8 50 B8 AC 5E 1E 50 C4 5E 06 26 FF 77 ....P..^.P.^.&.w
2B9C:0180 38 9A EF 00 8F 20 83 C4 08 B8 00 02 99 52 50 FF 8.... .......RP.
2B9C:0190 76 FE FF 76 FC 9A DA 05 EE 3C 2D 00 02 83 DA 00 v..v.....<-.....
2B9C:01A0 F7 D8 83 D2 00 F7 DA 01 46 FC 11 56 FE B8 00 02 ........F..V....
2B9C:01B0 99 52 50 FF 76 FE FF 76 FC 9A 00 05 EE 3C EB 28 .RP.v..v.....<.(
2B9C:01C0 2B C0 50 8B 46 0A 2B D2 D1 E0 D1 D2 8A F2 8A D4 +.P.F.+.........
2B9C:01D0 8A E0 2A C0 52 50 C4 5E 06 26 FF 77 38 9A 15 01 ..*.RP.^.&.w8...
2B9C:01E0 8F 20 83 C4 08 8B 46 0A 89 46 FA 8B 46 10 48 50 . ....F..F..F.HP
2B9C:01F0 FF 76 0E FF 76 0C C4 5E 06 26 FF 77 38 9A EF 00 .v..v..^.&.w8...
2B9C:0200 8F 20 83 C4 08 B8 01 00 50 B8 AE 5E 1E 50 C4 5E . ......P..^.P.^
2B9C:0210 06 26 FF 77 38 9A EF 00 8F 20 83 C4 08 83 7E F6 .&.w8.... ....~.
2B9C:0220 00 74 7F 8B 46 10 2B D2 01 46 FC 11 56 FE B8 00 .t..F.+..F..V...
2B9C:0230 02 99 52 50 FF 76 FE FF 76 FC 9A DA 05 EE 3C 2D ..RP.v..v.....<-
2B9C:0240 00 02 83 DA 00 F7 D8 83 D2 00 F7 DA 01 46 FC 11 .............F..
2B9C:0250 56 FE 2B C0 50 50 50 C4 5E 06 26 FF 77 38 9A 15 V.+.PPP.^.&.w8..
2B9C:0260 01 8F 20 83 C4 08 B8 00 02 99 52 50 8D 46 FC 50 .. .......RP.F.P
2B9C:0270 9A 0E 07 EE 3C B8 04 00 50 8D 46 FC 16 50 C4 5E ....<...P.F..P.^
2B9C:0280 06 26 FF 77 38 9A EF 00 8F 20 83 C4 08 83 7E F8 .&.w8.... ....~.
2B9C:0290 00 74 0F C4 5E 06 26 FF 77 38 9A 48 00 7F 20 83 .t..^.&.w8.H.. .
2B9C:02A0 C4 02 8B 46 FA 8B E5 5D CB 90 2B C0 8B E5 5D CB ...F...]..+...].
