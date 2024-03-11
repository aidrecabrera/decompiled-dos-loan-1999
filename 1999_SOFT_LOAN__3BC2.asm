;;; Segment 3BC2 (3BC2:0000)

;; fn3BC2_0000: 3BC2:0000
;;   Called from:
;;     3CB7:0014 (in fn3CB7_0000)
;;     3CEE:B4A4 (in fn3CEE_B417)
;;     3CEE:C314 (in fn3CEE_C213)
;;     3CEE:C664 (in fn3CEE_C583)
;;     3CEE:CEA4 (in fn3CEE_CE21)
;;     3CEE:D1E4 (in fn3CEE_D129)
fn3BC2_0000 proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	sub	sp,2h
	mov	di,[bp+0Ah]

l3BC2_000B:
	sub	dx,dx
	mov	es,[bp+0Ch]
	mov	cx,dx
	mov	cl,es:[di]
	shl	cx,1h
	mov	si,cx
	shl	cx,1h
	add	si,cx
	shl	si,1h
	mov	bx,dx
	mov	bl,[si+253Bh]
	mov	ax,[bx+24A6h]
	mov	bx,dx
	mov	bl,[si+253Ah]
	mov	bx,[bx+24D8h]
	call	ax
	jnc	000Bh

l3BC2_0037:
	cmp	word ptr [10D2h],65h
	jz	007Eh

l3BC2_003E:
	mov	es,[bp+0Ch]
	sub	ax,ax
	mov	al,es:[di]
	mov	cx,0Ch
	mul	cl
	mov	si,ax
	test	byte ptr [si+253Bh],0FFh
	jz	0057h

l3BC2_0054:
	call	0ED9h

l3BC2_0057:
	sub	ax,ax
	mov	al,es:[di]
	push	ax
	call	far 20B2h:0BDCh
	add	sp,2h
	test	word ptr [10D2h],0FFFFh
	jnz	0037h

l3BC2_006D:
	or	ax,ax
	jnz	000Bh

l3BC2_0071:
	inc	di
	test	byte ptr [si+253Ah],0FFh
	jz	000Bh

l3BC2_0079:
	add	di,2h
	jmp	000Bh

l3BC2_007E:
	push	bp
	call	far 20B2h:1192h
	add	sp,2h
	or	ax,ax
	jz	0096h

l3BC2_008B:
	mov	di,ax
	mov	word ptr [10D2h],0h
	jmp	000Bh

l3BC2_0096:
	add	sp,2h
	pop	di
	pop	si
	pop	bp
	retf

;; fn3BC2_009D: 3BC2:009D
;;   Called from:
;;     31FF:1BAF (in fn31FF_1B66)
fn3BC2_009D proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	mov	di,[bp+0Ah]

l3BC2_00A5:
	sub	dx,dx
	mov	es,[bp+0Ch]
	mov	cx,dx
	mov	cl,es:[di]
	shl	cx,1h
	mov	si,cx
	shl	cx,1h
	add	si,cx
	shl	si,1h
	mov	bx,dx
	mov	bl,[si+253Bh]
	mov	ax,[bx+24A6h]
	mov	bx,dx
	mov	bl,[si+253Ah]
	mov	bx,[bx+24EAh]
	call	ax
	jnc	00A5h

l3BC2_00D1:
	cmp	word ptr [10D2h],65h
	jz	0122h

l3BC2_00D8:
	mov	es,[bp+0Ch]
	sub	ax,ax
	mov	al,es:[di]
	mov	cx,0Ch
	mul	cl
	mov	si,ax
	test	byte ptr [si+253Bh],0FFh
	jz	00F1h

l3BC2_00EE:
	call	0ED9h

l3BC2_00F1:
	sub	ax,ax
	mov	al,es:[di]
	push	ax
	call	far 20B2h:0BDCh
	add	sp,2h
	test	word ptr [10D2h],0FFFFh
	jnz	00D1h

l3BC2_0107:
	or	ax,ax
	jnz	00A5h

l3BC2_010B:
	inc	di
	test	byte ptr [si+253Ah],0FFh
	jz	00A5h

l3BC2_0113:
	add	di,2h
	test	byte ptr [si+253Ah],0Eh
	jz	00A5h

l3BC2_011D:
	add	di,2h
	jmp	00A5h

l3BC2_0122:
	push	bp
	call	far 20B2h:1192h
	add	sp,2h
	or	ax,ax
	jz	013Ah

l3BC2_012F:
	mov	di,ax
	mov	word ptr [10D2h],0h
	jmp	00A5h

l3BC2_013A:
	pop	di
	pop	si
	pop	bp
	retf

;; fn3BC2_013E: 3BC2:013E
;;   Called from:
;;     31FF:215B (in fn31FF_207C)
fn3BC2_013E proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	mov	di,[bp+0Ah]
	sub	dx,dx
	mov	es,[bp+0Ch]
	mov	cx,dx
	mov	cl,es:[di]
	shl	cx,1h
	mov	si,cx
	shl	cx,1h
	add	si,cx
	shl	si,1h
	mov	bx,dx
	mov	bl,[si+253Bh]
	mov	ax,[bx+24A6h]
	mov	bx,dx
	mov	bl,[si+253Ah]
	mov	bx,[bx+24EAh]
	call	ax
	jc	017Ah

l3BC2_0172:
	sub	di,[bp+0Ah]
	mov	ax,di
	jmp	0195h
3BC2:0179                            90                            .      

l3BC2_017A:
	mov	es,[bp+0Ch]
	sub	ax,ax
	mov	al,es:[di]
	mov	cx,0Ch
	mul	cl
	mov	si,ax
	test	byte ptr [si+253Bh],0FFh
	jz	0193h

l3BC2_0190:
	call	0ED9h

l3BC2_0193:
	sub	ax,ax

l3BC2_0195:
	pop	di
	pop	si
	pop	bp
	retf
3BC2:0199                            FF E3 FF E3 47 26 8B          ....G&.
3BC2:01A0 05 83 C7 02 A3 7A 12 F7 06 E2 0E FF FF 75 01 C3 .....z.......u..
3BC2:01B0 9A 0A 00 25 18 F7 06 D2 10 FF FF 74 01 F9 C3 89 ...%.......t....
3BC2:01C0 16 9A 12 FF D3 72 27 F7 06 9A 12 FF FF 75 01 C3 .....r'......u..
3BC2:01D0 8B D7 C4 3E 96 12 83 C7 10 89 3E 96 12 BE 9A 12 ...>......>.....
3BC2:01E0 B9 08 00 F3 A5 8B FA C7 06 9A 12 00 00 F8 C3 8B ................
3BC2:01F0 D7 8C C1 C4 3E 96 12 26 8B 45 08 26 8B 1D 83 EF ....>..&.E.&....
3BC2:0200 10 89 3E 96 12 8B FA 8E C1 F7 C3 80 00 74 0F 47 ..>..........t.G
3BC2:0210 26 8B 35 83 C7 02 0B C0 75 01 C3 03 FE C3 C7 06 &.5.....u.......
3BC2:0220 D2 10 01 00 B9 01 00 E9 93 0C 8B D7 8C C1 C4 3E ...............>
3BC2:0230 96 12 26 8B 45 08 26 8B 1D 83 EF 10 89 3E 96 12 ..&.E.&......>..
3BC2:0240 8B FA 8E C1 F7 C3 80 00 74 0F 47 26 8B 35 83 C7 ........t.G&.5..
3BC2:0250 02 0B C0 74 01 C3 03 FE C3 C7 06 D2 10 01 00 B9 ...t............
3BC2:0260 01 00 E9 58 0C C3 47 26 03 3D 83 C7 02 C3 47 26 ...X..G&.=....G&
3BC2:0270 8B 05 83 C7 02 03 C7 50 55 8B D9 FF 9F 60 3B 83 .......PU....`;.
3BC2:0280 C4 04 F7 06 D2 10 FF FF 75 01 C3 83 EF 03 F9 C3 ........u.......
3BC2:0290 57 53 51 8C DB 8C C1 8E C3 BF AA 12 C5 36 96 12 WSQ..........6..
3BC2:02A0 83 EE 10 26 83 2E 96 12 20 B9 10 00 F3 A5 8E DB ...&.... .......
3BC2:02B0 8E C1 BE AA 12 8B 04 8B 1E BA 12 3B C3 75 36 59 ...........;.u6Y
3BC2:02C0 5B 5F 8E 46 0C FF D3 72 28 8B D7 C4 3E 96 12 83 [_.F...r(...>...
3BC2:02D0 C7 10 89 3E 96 12 B8 80 00 AB 83 C7 06 BE A2 12 ...>............
3BC2:02E0 A5 8B FA C7 06 9A 12 00 00 F7 06 AA 12 00 01 75 ...............u
3BC2:02F0 01 C3 E9 87 0B 72 04 93 83 C6 10 E8 3A 09 73 BF .....r......:.s.
3BC2:0300 59 5B 5F B9 02 00 E9 B4 0B 57 53 51 8C DB 8C C1 Y[_......WSQ....
3BC2:0310 8E C3 BF AA 12 C5 36 96 12 83 EE 10 26 83 2E 96 ......6.....&...
3BC2:0320 12 20 B9 10 00 F3 A5 8E DB 8E C1 BE AA 12 8B 04 . ..............
3BC2:0330 8B 1E BA 12 3B C3 75 33 59 5B 5F 8E 46 0C FF D3 ....;.u3Y[_.F...
3BC2:0340 72 25 8B D7 C4 3E 96 12 83 C7 10 89 3E 96 12 BE r%...>......>...
3BC2:0350 9A 12 B9 08 00 F3 A5 8B FA C7 06 9A 12 00 00 F7 ................
3BC2:0360 06 AA 12 00 01 75 01 C3 E9 11 0B 72 04 93 83 C6 .....u.....r....
3BC2:0370 10 E8 C4 08 73 C2 59 5B 5F B9 02 00 E9 3E 0B 57 ....s.Y[_....>.W
3BC2:0380 53 51 8C DB 8C C1 8E C3 BF AA 12 C5 36 96 12 83 SQ..........6...
3BC2:0390 EE 10 B9 10 00 F3 A5 8E DB 8E C1 83 EE 30 89 36 .............0.6
3BC2:03A0 96 12 BE AA 12 8B 04 8B 1E BA 12 3B C3 75 7A 3D ...........;.uz=
3BC2:03B0 02 00 75 42 59 5B 5F 47 C7 06 9A 12 02 00 C7 06 ..uBY[_G........
3BC2:03C0 9C 12 FF 00 A1 B2 12 03 06 C2 12 A3 A2 12 A1 B4 ................
3BC2:03D0 12 13 06 C4 12 A3 A4 12 71 26 4F 57 53 51 B8 02 ........q&OWSQ..
3BC2:03E0 00 BB 08 00 BE AA 12 E8 4E 08 B8 02 00 BB 08 00 ........N.......
3BC2:03F0 BE BA 12 E8 42 08 59 5B 5F 8E 46 0C FF D3 72 25 ....B.Y[_.F...r%
3BC2:0400 8B D7 C4 3E 96 12 83 C7 10 89 3E 96 12 BE 9A 12 ...>......>.....
3BC2:0410 B9 08 00 F3 A5 8B FA C7 06 9A 12 00 00 F7 06 AA ................
3BC2:0420 12 00 01 75 01 C3 E9 53 0A 50 53 72 04 93 83 C6 ...u...S.PSr....
3BC2:0430 10 E8 04 08 5B 58 73 BE C7 06 D2 10 00 00 BE AA ....[Xs.........
3BC2:0440 12 A9 20 00 74 1D F7 C3 02 00 75 AA F7 C3 08 00 .. .t.....u.....
3BC2:0450 74 32 B8 08 00 BB 02 00 BE BA 12 E8 DA 07 73 96 t2............s.
3BC2:0460 EB 22 90 F7 C3 20 00 74 1B A9 02 00 75 0D A9 08 ."... .t....u...
3BC2:0470 00 74 11 BB 02 00 E8 BF 07 72 09 C7 06 AA 12 20 .t.......r..... 
3BC2:0480 00 E9 72 FF 59 5B 5F C7 06 D2 10 01 00 B9 02 00 ..r.Y[_.........
3BC2:0490 E9 2A 0A 57 53 51 8C DB 8C C1 8E C3 BF AA 12 C5 .*.WSQ..........
3BC2:04A0 36 96 12 83 EE 10 B9 10 00 F3 A5 8E DB 8E C1 83 6...............
3BC2:04B0 EE 30 89 36 96 12 BE AA 12 8B 04 8B 1E BA 12 3B .0.6...........;
3BC2:04C0 C3 75 7A 3D 02 00 75 42 59 5B 5F 47 C7 06 9A 12 .uz=..uBY[_G....
3BC2:04D0 02 00 C7 06 9C 12 FF 00 A1 B2 12 2B 06 C2 12 A3 ...........+....
3BC2:04E0 A2 12 A1 B4 12 1B 06 C4 12 A3 A4 12 71 26 4F 57 ............q&OW
3BC2:04F0 53 51 B8 02 00 BB 08 00 BE AA 12 E8 3A 07 B8 02 SQ..........:...
3BC2:0500 00 BB 08 00 BE BA 12 E8 2E 07 59 5B 5F 8E 46 0C ..........Y[_.F.
3BC2:0510 FF D3 72 25 8B D7 C4 3E 96 12 83 C7 10 89 3E 96 ..r%...>......>.
3BC2:0520 12 BE 9A 12 B9 08 00 F3 A5 8B FA C7 06 9A 12 00 ................
3BC2:0530 00 F7 06 AA 12 00 01 75 01 C3 E9 3F 09 50 53 72 .......u...?.PSr
3BC2:0540 04 93 83 C6 10 E8 F0 06 5B 58 73 BE C7 06 D2 10 ........[Xs.....
3BC2:0550 00 00 BE AA 12 A9 20 00 74 1A F7 C3 02 00 75 AA ...... .t.....u.
3BC2:0560 F7 C3 08 00 74 0E B8 08 00 BB 02 00 BE BA 12 E8 ....t...........
3BC2:0570 C6 06 73 96 59 5B 5F C7 06 D2 10 01 00 B9 02 00 ..s.Y[_.........
3BC2:0580 E9 3A 09 C3 8C DA 57 8E C2 BF AA 12 C5 36 96 12 .:....W......6..
3BC2:0590 26 83 2E 96 12 10 AD AB A5 83 C6 04 83 C7 04 A5 &...............
3BC2:05A0 A5 A5 8E DA 5F A9 00 01 74 3D BE 9A 12 C7 04 00 ...._...t=......
3BC2:05B0 00 8E 46 0C FF D3 72 2B BE 9A 12 F7 04 FF FF 74 ..F...r+.......t
3BC2:05C0 1A 8B D7 C4 3E 96 12 83 C7 10 89 3E 96 12 B9 08 ....>......>....
3BC2:05D0 00 F3 A5 8B FA C7 06 9A 12 00 00 F7 06 B6 12 FF ................
3BC2:05E0 FF 75 01 C3 E9 80 08 C7 06 D2 10 01 00 B9 01 00 .u..............
3BC2:05F0 E9 CA 08 C3 8C DA 57 8E C2 BF AA 12 C5 36 96 12 ......W......6..
3BC2:0600 83 EE 10 26 83 2E 96 12 20 AD AB A5 83 C6 04 83 ...&.... .......
3BC2:0610 C7 04 A5 A5 A5 83 C6 02 83 C7 02 A5 A5 83 C6 04 ................
3BC2:0620 83 C7 04 A5 A5 A5 8E DA 5F 25 00 01 85 06 BA 12 ........_%......
3BC2:0630 74 3E BE 9A 12 C7 04 00 00 8E 46 0C FF D3 72 2C t>........F...r,
3BC2:0640 BE 9A 12 F7 04 FF FF 74 1A 8B D7 C4 3E 96 12 83 .......t....>...
3BC2:0650 C7 10 89 3E 96 12 B9 08 00 F3 A5 8B FA C7 06 9A ...>............
3BC2:0660 12 00 00 A1 B6 12 0B 06 C6 12 75 01 C3 E9 0C 08 ..........u.....
3BC2:0670 C7 06 D2 10 01 00 B9 02 00 E9 41 08 57 53 51 8C ..........A.WSQ.
3BC2:0680 DA 8E C2 BF AA 12 C5 36 96 12 83 EE 10 26 83 2E .......6.....&..
3BC2:0690 96 12 20 A5 A5 83 C6 04 83 C7 04 A5 A5 A5 83 C6 .. .............
3BC2:06A0 02 83 C7 02 AD AB B9 07 00 F3 A5 8E DA F7 06 AA ................
3BC2:06B0 12 00 01 74 50 A9 02 00 74 40 BE 9A 12 C7 04 00 ...tP...t@......
3BC2:06C0 00 59 5B 5F 8E 46 0C FF D3 72 2B BE 9A 12 F7 04 .Y[_.F...r+.....
3BC2:06D0 FF FF 74 1A 8B D7 C4 3E 96 12 83 C7 10 89 3E 96 ..t....>......>.
3BC2:06E0 12 B9 08 00 F3 A5 8B FA C7 06 9A 12 00 00 F7 06 ................
3BC2:06F0 B6 12 FF FF 75 01 C3 E9 6D 07 BE BA 12 BB 02 00 ....u...m.......
3BC2:0700 E8 35 05 73 B5 5B 59 5F C7 06 D2 10 01 00 B9 02 .5.s.[Y_........
3BC2:0710 00 E9 A9 07 57 53 51 FF B4 3E 25 8C DA 8C C1 8E ....WSQ..>%.....
3BC2:0720 C2 BF AA 12 C5 36 96 12 26 83 2E 96 12 10 AD AB .....6..&.......
3BC2:0730 A5 A5 83 C6 02 83 C7 02 A5 A5 A5 A5 8E DA 8E C1 ................
3BC2:0740 5B 85 C3 74 37 BE 9A 12 C7 04 00 00 59 5B 5F 8E [..t7.......Y[_.
3BC2:0750 46 0C FF D3 72 09 BE 9A 12 F7 04 FF FF 75 01 C3 F...r........u..
3BC2:0760 8B D7 C4 3E 96 12 83 C7 10 89 3E 96 12 B9 08 00 ...>......>.....
3BC2:0770 F3 A5 8B FA C7 06 9A 12 00 00 F8 C3 BE AA 12 E8 ................
3BC2:0780 B6 04 73 C1 59 5B 5F B9 01 00 E9 30 07 57 53 51 ..s.Y[_....0.WSQ
3BC2:0790 FF B4 40 25 FF B4 3E 25 8C DB 8C C1 8E C3 BF AA ..@%..>%........
3BC2:07A0 12 C5 36 96 12 83 EE 10 26 83 2E 96 12 20 B9 10 ..6.....&.... ..
3BC2:07B0 00 F3 A5 8E DB 8E C1 5B BE AA 12 8B 04 85 C3 74 .......[.......t
3BC2:07C0 37 5B BE BA 12 8B 04 85 C3 74 40 59 5B 5F FF D3 7[.......t@Y[_..
3BC2:07D0 72 25 BE 9A 12 F7 04 FF FF 75 01 C3 8B D7 C4 3E r%.......u.....>
3BC2:07E0 96 12 83 C7 10 89 3E 96 12 B9 08 00 F3 A5 8B FA ......>.........
3BC2:07F0 C7 06 9A 12 00 00 F8 C3 06 E8 3C 04 07 73 C2 83 ..........<..s..
3BC2:0800 C4 02 59 5B 5F B9 02 00 E9 B2 06 06 E8 29 04 07 ..Y[_........)..
3BC2:0810 73 B9 59 5B 5F B9 02 00 E9 A2 06 8C DA 57 8E C2 s.Y[_........W..
3BC2:0820 BF AA 12 C5 36 96 12 26 83 2E 96 12 10 AD AB 83 ....6..&........
3BC2:0830 C6 06 83 C7 06 A5 8E DA 5F A9 80 00 74 34 BE 9A ........_...t4..
3BC2:0840 12 C7 04 00 00 8E 46 0C FF D3 72 09 BE 9A 12 F7 ......F...r.....
3BC2:0850 04 FF FF 75 01 C3 8B D7 C4 3E 96 12 83 C7 10 89 ...u.....>......
3BC2:0860 3E 96 12 B9 08 00 F3 A5 8B FA C7 06 9A 12 00 00 >...............
3BC2:0870 F8 C3 C7 06 D2 10 01 00 B9 01 00 E9 3F 06 8C DA ............?...
3BC2:0880 57 8E C2 BF AA 12 C5 36 96 12 83 EE 10 26 83 2E W......6.....&..
3BC2:0890 96 12 20 AD AB 83 C6 06 83 C7 06 A5 83 C6 06 83 .. .............
3BC2:08A0 C7 06 A5 83 C6 06 83 C7 06 A5 8E DA 5F 25 80 00 ............_%..
3BC2:08B0 85 06 BA 12 74 34 BE 9A 12 C7 04 00 00 8E 46 0C ....t4........F.
3BC2:08C0 FF D3 72 09 BE 9A 12 F7 04 FF FF 75 01 C3 8B D7 ..r........u....
3BC2:08D0 C4 3E 96 12 83 C7 10 89 3E 96 12 B9 08 00 F3 A5 .>......>.......
3BC2:08E0 8B FA C7 06 9A 12 00 00 F8 C3 C7 06 D2 10 01 00 ................
3BC2:08F0 B9 02 00 E9 C7 05 8C DA 57 8E C2 BF AA 12 C5 36 ........W......6
3BC2:0900 96 12 26 83 2E 96 12 10 AD AB 83 C6 06 83 C7 06 ..&.............
3BC2:0910 A5 A5 8E DA 5F A9 20 00 74 34 BE 9A 12 C7 04 00 ...._. .t4......
3BC2:0920 00 8E 46 0C FF D3 72 09 BE 9A 12 F7 04 FF FF 75 ..F...r........u
3BC2:0930 01 C3 8B D7 C4 3E 96 12 83 C7 10 89 3E 96 12 B9 .....>......>...
3BC2:0940 08 00 F3 A5 8B FA C7 06 9A 12 00 00 F8 C3 C7 06 ................
3BC2:0950 D2 10 01 00 B9 02 00 E9 63 05 8C DA 57 8E C2 BF ........c...W...
3BC2:0960 AA 12 C5 36 96 12 26 83 2E 96 12 10 AD AB A5 A5 ...6..&.........
3BC2:0970 83 C6 02 83 C7 02 A5 A5 A5 A5 8E DA 5F A9 AA 01 ............_...
3BC2:0980 74 45 BE 9A 12 C7 04 00 00 8E 46 0C FF D3 72 33 tE........F...r3
3BC2:0990 BE 9A 12 F7 04 FF FF 74 1A 8B D7 C4 3E 96 12 83 .......t....>...
3BC2:09A0 C7 10 89 3E 96 12 B9 08 00 F3 A5 8B FA C7 06 9A ...>............
3BC2:09B0 12 00 00 F7 06 AA 12 00 01 74 08 F7 06 B6 12 FF .........t......
3BC2:09C0 FF 75 01 C3 E9 A0 04 C7 06 D2 10 01 00 B9 01 00 .u..............
3BC2:09D0 E9 EA 04 8C DA 57 8E C2 BF AA 12 C5 36 96 12 83 .....W......6...
3BC2:09E0 EE 10 26 83 2E 96 12 20 A5 A5 A5 83 C6 02 83 C7 ..&.... ........
3BC2:09F0 02 A5 A5 A5 A5 AD AB A5 83 C6 04 83 C7 04 A5 A5 ................
3BC2:0A00 A5 8E DA 5F A9 00 01 74 4D F7 06 AA 12 AA 01 74 ..._...tM......t
3BC2:0A10 45 C7 06 9A 12 00 00 8E 46 0C FF D3 72 34 BE 9A E.......F...r4..
3BC2:0A20 12 F7 04 FF FF 74 1A 8B D7 C4 3E 96 12 83 C7 10 .....t....>.....
3BC2:0A30 89 3E 96 12 B9 08 00 F3 A5 8B FA C7 06 9A 12 00 .>..............
3BC2:0A40 00 A1 AA 12 25 00 01 74 03 A1 B6 12 0B 06 C6 12 ....%..t........
3BC2:0A50 75 01 C3 E9 26 04 C7 06 D2 10 01 00 B9 02 00 E9 u...&...........
3BC2:0A60 5B 04 8C DA 57 8E C2 BF AA 12 C5 36 96 12 26 83 [...W......6..&.
3BC2:0A70 2E 96 12 10 AD AB A5 83 C6 04 83 C7 04 A5 A5 A5 ................
3BC2:0A80 8E DA 5F A9 00 09 74 3E 8E 46 0C FF D3 72 33 BE .._...t>.F...r3.
3BC2:0A90 9A 12 F7 04 FF FF 74 1A 8B D7 C4 3E 96 12 83 C7 ......t....>....
3BC2:0AA0 10 89 3E 96 12 B9 08 00 F3 A5 8B FA C7 06 9A 12 ..>.............
3BC2:0AB0 00 00 F7 06 AA 12 00 01 74 08 F7 06 B6 12 FF FF ........t.......
3BC2:0AC0 75 01 C3 E9 A1 03 C7 06 D2 10 01 00 B9 01 00 E9 u...............
3BC2:0AD0 EB 03 57 53 51 8C DA 8E C2 C5 36 96 12 26 83 2E ..WSQ.....6..&..
3BC2:0AE0 96 12 30 83 EE 20 BF AA 12 AD AB 83 C6 06 83 C7 ..0.. ..........
3BC2:0AF0 06 A5 A5 A5 A5 A5 83 C6 06 83 C7 06 A5 A5 A5 A5 ................
3BC2:0B00 A5 83 C6 06 83 C7 06 A5 A5 A5 A5 8E DA A9 0A 00 ................
3BC2:0B10 74 5C F7 06 BA 12 02 00 74 37 F7 06 CA 12 02 00 t\......t7......
3BC2:0B20 74 3F 59 5B 5F 8E 46 0C FF D3 72 24 8B DF BE 9A t?Y[_.F...r$....
3BC2:0B30 12 C4 3E 96 12 83 C7 10 89 3E 96 12 A5 A5 83 C6 ..>......>......
3BC2:0B40 04 83 C7 04 A5 A5 A5 8B FB C7 06 9A 12 00 00 F8 ................
3BC2:0B50 C3 BE BA 12 8B 04 BB 02 00 E8 DC 00 73 BC EB 0E ............s...
3BC2:0B60 90 BE CA 12 8B 04 BB 02 00 E8 CC 00 73 B4 59 5B ............s.Y[
3BC2:0B70 5F C7 06 D2 10 01 00 B9 03 00 E9 40 03 57 53 51 _..........@.WSQ
3BC2:0B80 8C DA 8E C2 C5 36 96 12 26 83 2E 96 12 30 83 EE .....6..&....0..
3BC2:0B90 20 BF AA 12 AD AB A5 83 C6 04 83 C7 04 A5 A5 A5  ...............
3BC2:0BA0 83 C6 02 83 C7 02 A5 83 C6 06 83 C7 06 A5 A5 A5 ................
3BC2:0BB0 A5 A5 83 C6 06 83 C7 06 A5 A5 A5 A5 8E DA A9 00 ................
3BC2:0BC0 01 74 66 F7 06 BA 12 02 00 74 41 F7 06 CA 12 02 .tf......tA.....
3BC2:0BD0 00 74 49 59 5B 5F 8E 46 0C FF D3 72 2E 8B DF BE .tIY[_.F...r....
3BC2:0BE0 9A 12 C4 3E 96 12 83 C7 10 89 3E 96 12 A5 A5 83 ...>......>.....
3BC2:0BF0 C6 04 83 C7 04 A5 A5 A5 8B FB C7 06 9A 12 00 00 ................
3BC2:0C00 F7 06 B6 12 FF FF 74 03 E9 5C 02 C3 BE BA 12 8B ......t..\......
3BC2:0C10 04 BB 02 00 E8 21 00 73 B2 EB 0E 90 BE CA 12 8B .....!.s........
3BC2:0C20 04 BB 02 00 E8 11 00 73 AA 59 5B 5F C7 06 D2 10 .......s.Y[_....
3BC2:0C30 01 00 B9 03 00 E9 85 02 93 2B D8 83 C3 0F 83 FB .........+......
3BC2:0C40 1E 77 06 D1 E3 FF A7 FC 24 C7 06 D2 10 01 00 F9 .w......$.......
3BC2:0C50 C3 89 04 FF 74 0A FF 74 08 9A F7 0C EE 3C 83 C4 ....t..t.....<..
3BC2:0C60 04 8C DB 8B CF 8E C3 8B FE 83 C7 08 8E DA 8B D6 ................
3BC2:0C70 8B F0 A5 A5 A5 A5 8E DB 8B F9 8B F2 F8 C3 89 04 ................
3BC2:0C80 FF 74 0E FF 74 0C FF 74 0A FF 74 08 9A 5A 0C EE .t..t..t..t..Z..
3BC2:0C90 3C 83 C4 08 89 44 08 89 54 0A F8 C3 83 C4 02 E9 <....D..T.......
3BC2:0CA0 F4 F3 83 C4 02 E9 92 F4 47 8B D9 FF 9F 60 3B F7 ........G....`;.
3BC2:0CB0 06 D2 10 FF FF 75 01 C3 4F F9 C3 47 26 8B 35 83 .....u..O..G&.5.
3BC2:0CC0 C7 02 D1 E6 D1 E6 D1 E6 D1 E6 03 76 0E 8E 46 10 ...........v..F.
3BC2:0CD0 26 FF 74 0E 26 FF 74 0C 8B D9 FF 9F 60 3B 83 C4 &.t.&.t.....`;..
3BC2:0CE0 04 F7 06 D2 10 FF FF 75 01 C3 83 EF 03 F9 C3 47 .......u.......G
3BC2:0CF0 26 FF 75 02 26 FF 35 83 C7 04 8B D9 FF 9F 60 3B &.u.&.5.......`;
3BC2:0D00 83 C4 04 F7 06 D2 10 FF FF 75 01 C3 83 EF 05 F9 .........u......
3BC2:0D10 C3 47 26 8B 05 83 C7 02 99 8B D8 8B F7 C4 3E 96 .G&...........>.
3BC2:0D20 12 83 C7 10 89 3E 96 12 B8 02 00 AB B8 0A 00 AB .....>..........
3BC2:0D30 83 C7 04 8B C3 AB 8B C2 AB 8B FE F8 C3 47 26 8B .............G&.
3BC2:0D40 1D 26 8B 5D 02 83 C7 04 8B F7 C4 3E 96 12 83 C7 .&.].......>....
3BC2:0D50 10 89 3E 96 12 B8 02 00 AB B8 0A 00 AB 83 C7 04 ..>.............
3BC2:0D60 8B C3 AB 8B C2 AB 8B FE F8 C3 47 8C DA 8C C0 8B ..........G.....
3BC2:0D70 F7 C4 3E 96 12 83 C7 10 89 3E 96 12 8E D8 B8 08 ..>......>......
3BC2:0D80 00 AB AD 8A DC 2A E4 AB 8A C3 AB 83 C7 02 A5 A5 .....*..........
3BC2:0D90 A5 A5 8B FE 8E DA F8 C3 47 8C DA 8C C0 8B F7 C4 ........G.......
3BC2:0DA0 3E 96 12 83 C7 10 89 3E 96 12 8E D8 B8 00 01 AB >......>........
3BC2:0DB0 AC 2A E4 AB 8B D8 83 C7 04 8B C6 AB 8C D8 AB 2B .*.............+
3BC2:0DC0 C0 AB 03 F3 46 8B FE 8E DA F8 C3 47 2B C0 26 8A ....F......G+.&.
3BC2:0DD0 05 47 A3 9C 12 8B F0 06 9A 86 00 68 23 07 8B CE .G.........h#...
3BC2:0DE0 0B C0 74 38 8C C0 8B F7 C4 3E A2 12 8C DA 8E D8 ..t8.....>......
3BC2:0DF0 8B D9 D1 E9 F3 A5 73 01 A4 8E DA C4 3E 96 12 83 ......s.....>...
3BC2:0E00 C7 10 89 3E 96 12 B8 00 01 AB 8B C3 AB 83 C7 04 ...>............
3BC2:0E10 8B CE BE A2 12 A5 A5 A5 8B F9 F8 C3 83 EF 02 C7 ................
3BC2:0E20 06 D2 10 04 00 F9 C3 47 26 FF 35 83 C7 02 8B D9 .......G&.5.....
3BC2:0E30 FF 9F 60 3B 83 C4 02 F7 06 D2 10 FF FF 75 01 C3 ..`;.........u..
3BC2:0E40 83 EF 03 F9 C3 47 26 8B 35 83 C7 02 8B D9 FF 9F .....G&.5.......
3BC2:0E50 60 3B F7 06 D2 10 FF FF 75 08 0B C0 74 02 03 FE `;......u...t...
3BC2:0E60 F8 C3 83 EF 03 F9 C3 FF 36 B6 12 FF 36 B4 12 FF ........6...6...
3BC2:0E70 36 B2 12 9A 4E 07 DC 21 83 C4 06 C3 F7 06 AA 12 6...N..!........
3BC2:0E80 00 01 74 18 A1 B6 12 0B C0 74 11 50 FF 36 B4 12 ..t......t.P.6..
3BC2:0E90 FF 36 B2 12 9A 4E 07 DC 21 83 C4 06 F7 06 BA 12 .6...N..!.......
3BC2:0EA0 00 01 74 18 A1 C6 12 0B C0 74 11 50 FF 36 C4 12 ..t......t.P.6..
3BC2:0EB0 FF 36 C2 12 9A 4E 07 DC 21 83 C4 06 C3 57 8C DB .6...N..!....W..
3BC2:0EC0 D1 E1 D1 E1 D1 E1 C5 36 96 12 83 C6 10 8E C3 BF .......6........
3BC2:0ED0 AA 12 F3 A5 8E DB 5F F9 C3                      ......_..       

;; fn3BC2_0ED9: 3BC2:0ED9
;;   Called from:
;;     3BC2:0054 (in fn3BC2_0000)
;;     3BC2:00EE (in fn3BC2_009D)
;;     3BC2:0190 (in fn3BC2_013E)
fn3BC2_0ED9 proc
	push	es
	push	si
	push	di
	mov	cx,0h
	cmp	byte ptr [si+253Bh],22h
	jnz	0EECh

l3BC2_0EE6:
	mov	cx,3h
	jmp	0F0Bh
3BC2:0EEB                                  90                        .    

l3BC2_0EEC:
	cmp	byte ptr [si+253Bh],24h
	jnz	0EF9h

l3BC2_0EF3:
	mov	cx,3h
	jmp	0F0Bh
3BC2:0EF8                         90                              .       

l3BC2_0EF9:
	test	word ptr [si+253Eh],0FFFFh
	jz	0F02h

l3BC2_0F01:
	inc	cx

l3BC2_0F02:
	test	word ptr [si+2540h],0FFFFh
	jz	0F0Bh

l3BC2_0F0A:
	inc	cx

l3BC2_0F0B:
	shl	cx,1h
	shl	cx,1h
	shl	cx,1h
	shl	cx,1h
	les	di,[1296h]
	add	di,10h
	add	[1296h],cx
	mov	si,12AAh
