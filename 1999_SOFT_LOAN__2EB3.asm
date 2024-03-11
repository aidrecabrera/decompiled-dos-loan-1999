;;; Segment 2EB3 (2EB3:0000)
2EB3:0000 5D CB                                           ].              

;; fn2EB3_0002: 2EB3:0002
;;   Called from:
;;     2EB3:013C (in fn2EB3_0064)
fn2EB3_0002 proc
	push	bp
	mov	bp,sp
	push	si
	les	bx,[bp+6h]
	mov	si,es:[bx]
	cmp	si,0FFh
	jz	001Ah

l2EB3_0011:
	push	si
	call	far 208Fh:00AEh
	add	sp,2h

l2EB3_001A:
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+0Ah],0h
	jz	0030h

l2EB3_0024:
	push	word ptr es:[bx+0Ah]
	call	far 31FFh:1C0Ah
	add	sp,2h

l2EB3_0030:
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+10h],0h
	jz	004Eh

l2EB3_003A:
	push	word ptr es:[bx+10h]
	push	word ptr es:[bx+0Eh]
	push	word ptr es:[bx+0Ch]
	call	far 21DCh:074Eh
	add	sp,6h

l2EB3_004E:
	mov	ax,0D0h
	push	ax
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 21DCh:0702h
	add	sp,6h
	pop	si
	pop	bp
	retf
2EB3:0063          90                                        .            

;; fn2EB3_0064: 2EB3:0064
;;   Called from:
;;     2644:47A0 (in fn2644_45CA)
fn2EB3_0064 proc
	push	bp
	mov	bp,sp
	sub	sp,0Eh
	push	si
	les	bx,[130Ah]
	mov	ax,es:[bx]
	mov	dx,es:[bx+2h]
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	or	ax,dx
	jnz	0083h

l2EB3_0080:
	jmp	015Eh

l2EB3_0083:
	les	bx,[bp-4h]
	cmp	word ptr es:[bx+64h],0h
	jnz	0090h

l2EB3_008D:
	jmp	015Eh

l2EB3_0090:
	mov	ax,1h
	push	ax
	push	dx
	push	bx
	call	far 2644h:1F12h
	add	sp,6h
	les	bx,[bp-4h]
	mov	ax,es:[bx+64h]
	mov	[bp-6h],ax
	jmp	0146h
2EB3:00AB                                  90                        .    

l2EB3_00AC:
	mov	si,[bp-6h]
	shl	si,1h
	shl	si,1h
	les	bx,[bp-4h]
	mov	ax,es:[bx+si+66h]
	mov	dx,es:[bx+si+68h]
	mov	[bp-0Eh],ax
	mov	[bp-0Ch],dx
	les	bx,[bp-0Eh]
	cmp	word ptr es:[bx+2h],0h
	jnz	011Fh

l2EB3_00CE:
	cmp	word ptr es:[bx+4h],0h
	jz	011Fh

l2EB3_00D5:
	sub	ax,ax
	push	ax
	push	ax
	push	word ptr es:[bx]
	call	far 2E37h:05C0h
	add	sp,6h
	mov	[bp-0Ah],ax
	mov	[bp-8h],dx
	les	bx,[bp-0Ah]
	mov	word ptr es:[bx+2h],1h
	les	bx,[bp-0Eh]
	mov	ax,es:[bx+18h]
	mov	dx,es:[bx+1Ah]
	les	bx,[bp-0Ah]
	mov	es:[bx+8h],ax
	mov	es:[bx+0Ah],dx
	les	bx,[bp-0Eh]
	mov	ax,es:[bx+14h]
	mov	dx,es:[bx+16h]
	les	bx,[bp-0Ah]
	mov	es:[bx+4h],ax
	mov	es:[bx+6h],dx

l2EB3_011F:
	sub	ax,ax
	push	ax
	les	bx,[bp-0Eh]
	push	word ptr es:[bx]
	call	far 2E37h:06F4h
	add	sp,4h
	mov	word ptr [1484h],0h
	push	word ptr [bp-0Ch]
	push	word ptr [bp-0Eh]
	push	cs
	call	0002h
	add	sp,4h
	dec	word ptr [bp-6h]

l2EB3_0146:
	cmp	word ptr [bp-6h],0h
	jz	014Fh

l2EB3_014C:
	jmp	00ACh

l2EB3_014F:
	les	bx,[bp-4h]
	mov	word ptr es:[bx+64h],0h
	mov	word ptr es:[bx+62h],0h

l2EB3_015E:
	pop	si
	mov	sp,bp
	pop	bp
	retf
2EB3:0163          90 55 8B EC 83 EC 0C 56 FF 36 AC 12 FF    .U.....V.6...
2EB3:0170 36 B4 12 FF 36 B2 12 9A 18 01 AD 38 83 C4 06 3B 6...6......8...;
2EB3:0180 06 AC 12 75 03 E9 42 02 C4 1E 0A 13 26 8B 07 26 ...u..B.....&..&
2EB3:0190 8B 57 02 89 46 FC 89 56 FE 0B C2 75 03 E9 2A 02 .W..F..V...u..*.
2EB3:01A0 C4 5E FC 26 83 7F 64 0F 72 03 E9 1D 02 B8 D0 00 .^.&..d.r.......
2EB3:01B0 50 8D 46 F4 16 50 9A 96 06 DC 21 83 C4 06 0B C0 P.F..P....!.....
2EB3:01C0 75 03 E9 05 02 B8 D0 00 50 2B C0 50 FF 76 F6 FF u.......P+.P.v..
2EB3:01D0 76 F4 9A 28 02 17 20 83 C4 08 B8 01 00 50 FF 76 v..(.. ......P.v
2EB3:01E0 FE FF 76 FC 9A 12 1F 44 26 83 C4 06 C4 5E FC 26 ..v....D&....^.&
2EB3:01F0 83 7F 3A 00 74 06 B8 0A 00 EB 04 90 B8 09 00 50 ..:.t..........P
2EB3:0200 FF 36 B4 12 FF 36 B2 12 9A 96 10 D6 38 83 C4 06 .6...6......8...
2EB3:0210 C4 5E F4 26 89 07 3D FF FF 75 19 C7 06 D2 10 05 .^.&..=..u......
2EB3:0220 00 FF 76 F6 FF 76 F4 0E E8 D7 FD 83 C4 04 5E 8B ..v..v........^.
2EB3:0230 E5 5D CB 90 2B C0 50 50 C4 5E F4 26 FF 37 9A CE .]..+.PP.^.&.7..
2EB3:0240 04 37 2E 83 C4 06 89 46 F8 89 56 FA 83 3E 84 14 .7.....F..V..>..
2EB3:0250 00 75 C8 C4 5E F8 26 83 3F 06 75 BF 2B C0 50 8B .u..^.&.?.u.+.P.
2EB3:0260 C3 05 16 00 52 50 9A F5 03 17 20 83 C4 04 50 8B ....RP.... ...P.
2EB3:0270 46 F8 8B 56 FA 05 16 00 52 50 9A 0A 1B FF 31 83 F..V....RP....1.
2EB3:0280 C4 08 C4 5E F4 26 89 47 0A 0B C0 75 09 C7 06 D6 ...^.&.G...u....
2EB3:0290 10 02 00 EB 8C 90 C4 5E FC 26 8B 47 3A C4 5E F4 .......^.&.G:.^.
2EB3:02A0 26 89 47 02 A1 FC 12 26 89 47 20 B8 02 00 50 2B &.G....&.G ...P+
2EB3:02B0 C0 50 50 26 FF 37 9A 15 01 8F 20 83 C4 08 C4 5E .PP&.7.... ....^
2EB3:02C0 F4 26 89 47 1C 26 89 57 1E 26 C7 47 08 00 00 26 .&.G.&.W.&.G...&
2EB3:02D0 C7 47 04 00 00 26 C7 47 2E 00 00 C4 5E F8 26 8B .G...&.G....^.&.
2EB3:02E0 47 0C C4 5E F4 26 89 47 22 C4 5E F8 26 8B 47 0E G..^.&.G".^.&.G.
2EB3:02F0 C4 5E F4 26 89 47 26 C4 5E F8 26 8B 47 10 C4 5E .^.&.G&.^.&.G..^
2EB3:0300 F4 26 89 47 28 C4 5E F8 26 8B 47 12 C4 5E F4 26 .&.G(.^.&.G..^.&
2EB3:0310 89 47 2A C4 5E F8 26 8B 47 14 C4 5E F4 26 89 47 .G*.^.&.G..^.&.G
2EB3:0320 2C 26 8B 47 26 26 89 47 10 50 9A 18 07 DC 21 83 ,&.G&&.G.P....!.
2EB3:0330 C4 02 C4 5E F4 26 89 47 0C 26 89 57 0E C4 5E F8 ...^.&.G.&.W..^.
2EB3:0340 26 8B 47 02 C4 5E F4 26 89 47 12 C4 5E F8 26 8B &.G..^.&.G..^.&.
2EB3:0350 47 04 26 8B 57 06 C4 5E F4 26 89 47 14 26 89 57 G.&.W..^.&.G.&.W
2EB3:0360 16 C4 5E F8 26 8B 47 08 26 8B 57 0A C4 5E F4 26 ..^.&.G.&.W..^.&
2EB3:0370 89 47 18 26 89 57 1A C4 5E F8 26 8B 87 16 01 C4 .G.&.W..^.&.....
2EB3:0380 5E F4 26 89 47 06 C4 5E FC 26 83 7F 64 00 75 20 ^.&.G..^.&..d.u 
2EB3:0390 26 C7 47 62 01 00 26 C7 47 64 01 00 8B 46 F4 8B &.Gb..&.Gd...F..
2EB3:03A0 56 F6 26 89 47 6A 26 89 57 6C 5E 8B E5 5D CB 90 V.&.Gj&.Wl^..]..
2EB3:03B0 26 FF 47 64 26 8B 77 64 D1 E6 D1 E6 8B 46 F4 8B &.Gd&.wd.....F..
2EB3:03C0 56 F6 26 89 40 66 26 89 50 68 5E 8B E5 5D CB 90 V.&.@f&.Ph^..]..
2EB3:03D0 55 8B EC 83 EC 04 C4 1E 0A 13 26 8B 07 26 8B 57 U.........&..&.W
2EB3:03E0 02 89 46 FC 89 56 FE 0B C2 75 0B C7 06 D2 10 11 ..F..V...u......
2EB3:03F0 00 8B E5 5D CB 90 B8 01 00 50 FF 76 FE FF 76 FC ...].....P.v..v.
2EB3:0400 9A 12 1F 44 26 83 C4 06 0E E8 58 FC 2B C0 50 50 ...D&.....X.+.PP
2EB3:0410 FF 76 FE FF 76 FC 9A BE 22 44 26 83 C4 08 C4 5E .v..v..."D&....^
2EB3:0420 FC 26 83 BF BA 00 00 74 0A 06 53 9A C0 24 44 26 .&.....t..S..$D&
2EB3:0430 83 C4 04 2B C0 50 50 FF 36 AC 12 FF 36 B4 12 FF ...+.PP.6...6...
2EB3:0440 36 B2 12 FF 36 C4 12 FF 36 C2 12 9A 6C 08 19 31 6...6...6...l..1
2EB3:0450 83 C4 0E 8B E5 5D CB 90 55 8B EC 83 EC 04 56 C4 .....]..U.....V.
2EB3:0460 1E 0A 13 26 8B 07 26 8B 57 02 89 46 FC 89 56 FE ...&..&.W..F..V.
2EB3:0470 B8 01 00 50 52 FF 76 FC 9A 12 1F 44 26 83 C4 06 ...PR.v....D&...
2EB3:0480 C4 5E 06 26 8B 37 2B C0 50 56 9A F4 06 37 2E 83 .^.&.7+.PV...7..
2EB3:0490 C4 04 C7 06 84 14 00 00 C4 5E 06 A1 9C 14 26 89 .........^....&.
2EB3:04A0 47 14 26 C7 47 16 00 00 2B C0 26 89 47 1A 26 89 G.&.G...+.&.G.&.
2EB3:04B0 47 18 26 C7 47 04 01 00 26 89 47 2E 50 26 FF 77 G.&.G...&.G.P&.w
2EB3:04C0 16 26 FF 77 14 56 9A 15 01 8F 20 83 C4 08 2B C0 .&.w.V.... ...+.
2EB3:04D0 50 B8 D2 5E 1E 50 56 9A EF 00 8F 20 83 C4 08 C4 P..^.PV.... ....
2EB3:04E0 5E 06 A1 9C 14 26 89 47 1C 26 C7 47 1E 00 00 06 ^....&.G.&.G....
2EB3:04F0 53 2B C0 50 B8 D4 5E 1E 50 B8 D6 5E 1E 50 9A 6C S+.P..^.P..^.P.l
2EB3:0500 08 19 31 83 C4 0E 5E 8B E5 5D CB 90 55 8B EC 83 ..1...^..]..U...
2EB3:0510 EC 06 56 C4 1E 0A 13 26 8B 07 26 8B 57 02 89 46 ..V....&..&.W..F
2EB3:0520 FC 89 56 FE 0B C2 74 4E C4 5E FC 26 83 7F 64 00 ..V...tN.^.&..d.
2EB3:0530 74 44 26 83 7F 3A 00 74 0B C7 06 D2 10 13 00 5E tD&..:.t.......^
2EB3:0540 8B E5 5D CB C7 46 FA 01 00 EB 1A 90 8B 76 FA D1 ..]..F.......v..
2EB3:0550 E6 D1 E6 26 FF 70 68 26 FF 70 66 0E E8 F9 FE 83 ...&.ph&.pf.....
2EB3:0560 C4 04 FF 46 FA C4 5E FC 8B 46 FA 26 39 47 64 73 ...F..^..F.&9Gds
2EB3:0570 DB 9A 1A 2C 44 26 5E 8B E5 5D CB 90 55 8B EC 83 ...,D&^..]..U...
2EB3:0580 EC 04 56 C4 5E 06 26 83 7F 04 00 74 6E 26 83 7F ..V.^.&....tn&..
2EB3:0590 02 00 75 67 26 8B 37 2B C0 50 50 56 9A C0 05 37 ..ug&.7+.PPV...7
2EB3:05A0 2E 83 C4 06 89 46 FC 89 56 FE C4 5E FC 26 C7 47 .....F..V..^.&.G
2EB3:05B0 02 01 00 C4 5E 06 26 8B 47 18 26 8B 57 1A C4 5E ....^.&.G.&.W..^
2EB3:05C0 FC 26 89 47 08 26 89 57 0A C4 5E 06 26 8B 47 14 .&.G.&.W..^.&.G.
2EB3:05D0 26 8B 57 16 C4 5E FC 26 89 47 04 26 89 57 06 B8 &.W..^.&.G.&.W..
2EB3:05E0 01 00 50 56 9A F4 06 37 2E 83 C4 04 C7 06 84 14 ..PV...7........
2EB3:05F0 00 00 C4 5E 06 26 C7 47 04 00 00 26 FF 37 9A 11 ...^.&.G...&.7..
2EB3:0600 02 8F 20 83 C4 02 5E 8B E5 5D CB 90             .. ...^..]..    

;; fn2EB3_060C: 2EB3:060C
;;   Called from:
;;     2EB3:07F1 (in fn2EB3_07B2)
;;     2EB3:23D8 (in fn2EB3_2340)
fn2EB3_060C proc
	push	bp
	mov	bp,sp
	sub	sp,10h
	push	si
	les	bx,[bp+0Ah]
	mov	si,es:[bx]
	test	si,0Ah
	jnz	0622h

l2EB3_061F:
	jmp	0742h

l2EB3_0622:
	les	bx,[bp+6h]
	mov	ax,es:[bx+26h]
	mov	[bp-0Eh],ax
	mov	ax,es:[bx+28h]
	mov	[bp-0Ch],ax
	mov	ax,[bp-0Eh]
	inc	ax
	mov	[bp-0Ah],ax
	push	ax
	lea	ax,[bp-4h]
	push	ss
	push	ax
	call	far 21DCh:0696h
	add	sp,6h
	or	ax,ax
	jnz	064Fh

l2EB3_064C:
	jmp	073Ah

l2EB3_064F:
	cmp	si,8h
	jnz	069Ch

l2EB3_0654:
	les	bx,[bp+0Ah]
	push	word ptr es:[bx+0Eh]
	push	word ptr es:[bx+0Ch]
	push	word ptr es:[bx+0Ah]
	push	word ptr es:[bx+8h]
	call	far 400Dh:00DEh
	add	sp,8h
	mov	[bp-8h],ax
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	push	word ptr [bp-0Ch]
	push	word ptr [bp-0Eh]
	les	bx,[bp+0Ah]
	push	word ptr es:[bx+0Eh]
	push	word ptr es:[bx+0Ch]
	push	word ptr es:[bx+0Ah]
	push	word ptr es:[bx+8h]
	call	far 3CEEh:0DA8h
	add	sp,10h
	jmp	06CDh
2EB3:069B                                  90                        .    

l2EB3_069C:
	les	bx,[bp+0Ah]
	cmp	word ptr es:[bx+0Ah],0h
	jge	06ACh

l2EB3_06A6:
	mov	ax,1h
	jmp	06AEh
2EB3:06AB                                  90                        .    

l2EB3_06AC:
	sub	ax,ax

l2EB3_06AE:
	mov	[bp-8h],ax
	push	word ptr [bp-0Ch]
	push	word ptr [bp-0Eh]
	push	word ptr es:[bx+0Ah]
	push	word ptr es:[bx+8h]
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	call	far 3CEEh:0EFCh
	add	sp,0Ch

l2EB3_06CD:
	cmp	word ptr [bp-8h],0h
	jz	0714h

l2EB3_06D3:
	mov	word ptr [bp-6h],0h
	jmp	06EBh

l2EB3_06DA:
	mov	bx,[bp-6h]
	les	si,[bp-4h]
	mov	al,5Ch
	sub	al,es:[bx+si]
	mov	es:[bx+si],al

l2EB3_06E8:
	inc	word ptr [bp-6h]

l2EB3_06EB:
	mov	ax,[bp-0Eh]
	cmp	[bp-6h],ax
	jc	06F6h

l2EB3_06F3:
	jmp	0786h

l2EB3_06F6:
	mov	bx,[bp-6h]
	les	si,[bp-4h]
	mov	al,es:[bx+si]
	mov	[bp-10h],al
	cmp	al,20h
	jz	070Ah

l2EB3_0706:
	cmp	al,2Dh
	jnz	06DAh

l2EB3_070A:
	mov	si,[bp-4h]
	mov	byte ptr es:[bx+si],2Ch
	jmp	06E8h
2EB3:0713          90                                        .            

l2EB3_0714:
	mov	word ptr [bp-6h],0h
	jmp	072Fh
2EB3:071B                                  90                        .    

l2EB3_071C:
	mov	bx,[bp-6h]
	les	si,[bp-4h]
	cmp	byte ptr es:[bx+si],20h
	jnz	0786h

l2EB3_0728:
	mov	byte ptr es:[bx+si],30h
	inc	word ptr [bp-6h]

l2EB3_072F:
	mov	ax,[bp-0Eh]
	cmp	[bp-6h],ax
	jc	071Ch

l2EB3_0737:
	jmp	0786h
2EB3:0739                            90                            .      

l2EB3_073A:
	sub	ax,ax
	pop	si
	mov	sp,bp
	pop	bp
	retf
2EB3:0741    90                                            .              

l2EB3_0742:
	les	bx,[bp+0Ah]
	test	byte ptr es:[bx],20h
	jz	073Ah

l2EB3_074B:
	mov	word ptr [bp-0Ah],9h
	mov	word ptr [bp-0Eh],8h
	mov	ax,9h
	push	ax
	lea	ax,[bp-4h]
	push	ss
	push	ax
	call	far 21DCh:0696h
	add	sp,6h
	or	ax,ax
	jz	073Ah

l2EB3_076A:
	sub	ax,ax
	push	ax
	les	bx,[bp+0Ah]
	push	word ptr es:[bx+0Ah]
	push	word ptr es:[bx+8h]
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	call	far 38D6h:06FAh
	add	sp,0Ah

l2EB3_0786:
	les	bx,[bp+0Ah]
	mov	word ptr es:[bx],100h
	mov	ax,[bp-0Eh]
	mov	es:[bx+2h],ax
	mov	ax,[bp-4h]
	mov	dx,[bp-2h]
	mov	es:[bx+8h],ax
	mov	es:[bx+0Ah],dx
	mov	ax,[bp-0Ah]
	mov	es:[bx+0Ch],ax
	mov	ax,1h
	pop	si
	mov	sp,bp
	pop	bp
	retf

;; fn2EB3_07B2: 2EB3:07B2
;;   Called from:
;;     2644:2586 (in fn2644_24C0)
fn2EB3_07B2 proc
	push	bp
	mov	bp,sp
	sub	sp,0Ch
	push	si
	mov	ax,[bp+6h]
	or	ax,[bp+8h]
	jz	07FCh

l2EB3_07C1:
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+62h],0h
	jz	07FCh

l2EB3_07CB:
	mov	si,es:[bx+62h]
	shl	si,1h
	shl	si,1h
	mov	ax,es:[bx+si+66h]
	mov	dx,es:[bx+si+68h]
	mov	[bp-0Ch],ax
	mov	[bp-0Ah],dx
	test	word ptr [bp+0Ah],100h
	jnz	080Ch

l2EB3_07E8:
	lea	ax,[bp+0Ah]
	push	ss
	push	ax
	push	dx
	push	word ptr [bp-0Ch]
	push	cs
	call	060Ch
	add	sp,8h
	or	ax,ax
	jnz	0804h

l2EB3_07FC:
	sub	ax,ax
	pop	si
	mov	sp,bp
	pop	bp
	retf
2EB3:0803          90                                        .            

l2EB3_0804:
	mov	word ptr [bp-6h],1h
	jmp	0811h
2EB3:080B                                  90                        .    

l2EB3_080C:
	mov	word ptr [bp-6h],0h

l2EB3_0811:
	mov	ax,2h
	push	ax
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 2644h:1F12h
	add	sp,6h
	mov	[bp-8h],ax
	cmp	word ptr [bp+1Ah],1h
	sbb	ax,ax
	inc	ax
	push	ax
	push	word ptr [bp+0Ch]
	push	word ptr [bp+14h]
	push	word ptr [bp+12h]
	push	word ptr [bp-0Ah]
	push	word ptr [bp-0Ch]
	push	cs
	call	1FCCh
	add	sp,0Ch
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	push	dx
	push	ax
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 2644h:22BEh
	add	sp,8h
	les	bx,[bp+6h]
	mov	ax,es:[bx+42h]
	mov	es:[bx+4Ch],ax
	cmp	word ptr es:[bx+0BAh],0h
	jz	0877h

l2EB3_086D:
	push	es
	push	bx
	call	far 2644h:24C0h
	add	sp,4h

l2EB3_0877:
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+42h],0h
	jnz	0884h

l2EB3_0881:
	jmp	092Bh

l2EB3_0884:
	cmp	word ptr [13E8h],0h
	jnz	089Ch

l2EB3_088B:
	cmp	word ptr es:[bx+0B0h],0h
	jnz	089Ch

l2EB3_0893:
	cmp	word ptr [bp+1Ah],0h
	jnz	089Ch

l2EB3_0899:
	jmp	092Bh

l2EB3_089C:
	mov	ax,1h
	cwd
	push	dx
	push	ax
	push	es
	push	bx
	call	far 2644h:2384h
	add	sp,8h
	or	ax,ax
	jz	08BAh

l2EB3_08B0:
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+42h],0h
	jnz	08C0h

l2EB3_08BA:
	cmp	word ptr [bp+1Ah],0h
	jz	092Bh

l2EB3_08C0:
	push	word ptr [bp-0Ah]
	push	word ptr [bp-0Ch]
	push	cs
	call	240Ah
	add	sp,4h
	push	word ptr [bp+0Ch]
	push	word ptr [bp+14h]
	push	word ptr [bp+12h]
	les	bx,[bp-0Ch]
	push	word ptr es:[bx+0Eh]
	push	word ptr es:[bx+0Ch]
	call	far 38ADh:00F2h
	add	sp,0Ah
	or	ax,ax
	jz	0922h

l2EB3_08ED:
	les	bx,[bp+6h]
	mov	word ptr es:[bx+4Ch],0h
	cmp	word ptr [bp+1Ah],0h
	jnz	092Bh

l2EB3_08FC:
	sub	ax,ax
	push	ax
	push	ax
	push	es
	push	bx
	call	far 2644h:22BEh
	add	sp,8h
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+0BAh],0h
	jz	092Bh

l2EB3_0915:
	push	es
	push	bx
	call	far 2644h:24C0h
	add	sp,4h
	jmp	092Bh
2EB3:0921    90                                            .              

l2EB3_0922:
	les	bx,[bp+6h]
	mov	word ptr es:[bx+4Ch],1h

l2EB3_092B:
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+42h],0h
	jnz	093Eh

l2EB3_0935:
	les	bx,[bp-0Ch]
	mov	word ptr es:[bx+2Eh],0h

l2EB3_093E:
	cmp	word ptr [bp-8h],0h
	jz	0956h

l2EB3_0944:
	mov	ax,4h
	push	ax
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 2644h:1F12h
	add	sp,6h

l2EB3_0956:
	les	bx,[bp+6h]
	mov	ax,es:[bx+2Ch]
	or	ax,es:[bx+2Eh]
	jnz	0968h

l2EB3_0963:
	mov	ax,1h
	jmp	096Ah

l2EB3_0968:
	sub	ax,ax

l2EB3_096A:
	mov	es:[bx+4Ah],ax
	cmp	word ptr [bp-6h],0h
	jz	0992h

l2EB3_0974:
	cmp	word ptr [bp+0Ah],100h
	jnz	0992h

l2EB3_097B:
	cmp	word ptr [bp+16h],0h
	jz	0992h

l2EB3_0981:
	push	word ptr [bp+16h]
	push	word ptr [bp+14h]
	push	word ptr [bp+12h]
	call	far 21DCh:0702h
	add	sp,6h

l2EB3_0992:
	mov	ax,1h
	pop	si
	mov	sp,bp
	pop	bp
	retf
2EB3:099A                               55 8B EC 83 EC 0E           U.....
2EB3:09A0 56 C7 06 9A 12 00 01 C7 06 9C 12 00 00 B8 D8 5E V..............^
2EB3:09B0 A3 A2 12 8C 1E A4 12 C7 06 A6 12 00 00 A1 B2 12 ................
2EB3:09C0 89 46 F6 C4 1E 0A 13 26 8B 07 26 8B 57 02 89 46 .F.....&..&.W..F
2EB3:09D0 FC 89 56 FE 0B C2 75 03 E9 AB 00 C4 5E FC 8B 46 ..V...u.....^..F
2EB3:09E0 F6 26 39 47 64 73 03 E9 9C 00 0B C0 75 0A 26 83 .&9Gds......u.&.
2EB3:09F0 7F 62 00 75 03 E9 8E 00 83 7E F6 00 75 07 26 8B .b.u.....~..u.&.
2EB3:0A00 47 62 89 46 F6 8B 76 F6 D1 E6 D1 E6 C4 5E FC 26 Gb.F..v......^.&
2EB3:0A10 8B 40 66 26 8B 50 68 89 46 F2 89 56 F4 2B C0 50 .@f&.Ph.F..V.+.P
2EB3:0A20 50 C4 5E F2 26 FF 37 9A CE 04 37 2E 83 C4 06 89 P.^.&.7...7.....
2EB3:0A30 46 F8 89 56 FA 83 3E 84 14 00 74 0C C7 06 84 14 F..V..>...t.....
2EB3:0A40 00 00 5E 8B E5 5D CB 90 8B 46 F8 8B 56 FA 05 16 ..^..]...F..V...
2EB3:0A50 00 52 50 9A F5 03 17 20 83 C4 04 A3 9C 12 9A 86 .RP.... ........
2EB3:0A60 00 68 23 0B C0 74 1F FF 36 9C 12 8B 46 F8 8B 56 .h#..t..6...F..V
2EB3:0A70 FA 05 16 00 52 50 FF 36 A4 12 FF 36 A2 12 9A EC ....RP.6...6....
2EB3:0A80 02 17 20 83 C4 0A 5E 8B E5 5D CB 90             .. ...^..]..    

;; fn2EB3_0A8C: 2EB3:0A8C
;;   Called from:
;;     2EB3:0B6C (in fn2EB3_0B54)
fn2EB3_0A8C proc
	push	bp
	mov	bp,sp
	sub	sp,0Eh
	push	si
	les	bx,[bp+6h]
	mov	si,es:[bx]
	sub	ax,ax
	push	ax
	push	ax
	push	ax
	push	si
	call	far 208Fh:0115h
	add	sp,8h
	mov	ax,0Ch
	push	ax
	lea	ax,[bp-0Eh]
	push	ss
	push	ax
	push	si
	call	far 208Fh:00C9h
	add	sp,8h
	les	bx,[bp+6h]
	mov	ax,[bp-0Ch]
	cmp	es:[bx+12h],ax
	jz	0ACAh

l2EB3_0AC5:
	mov	ax,1h
	jmp	0ACCh

l2EB3_0ACA:
	sub	ax,ax

l2EB3_0ACC:
	mov	[bp-2h],ax
	mov	ax,[bp-0Ch]
	mov	es:[bx+12h],ax
	mov	ax,[bp-0Ah]
	mov	dx,[bp-8h]
	mov	es:[bx+14h],ax
	mov	es:[bx+16h],dx
	mov	ax,[bp-6h]
	mov	dx,[bp-4h]
	mov	es:[bx+18h],ax
	mov	es:[bx+1Ah],dx
	mov	ax,[bp-2h]
	pop	si
	mov	sp,bp
	pop	bp
	retf

;; fn2EB3_0AFA: 2EB3:0AFA
;;   Called from:
;;     2EB3:0BD8 (in fn2EB3_0BB4)
fn2EB3_0AFA proc
	push	bp
	mov	bp,sp
	sub	sp,0Ch
	push	si
	mov	word ptr [bp-0Ch],6h
	les	bx,[bp+6h]
	mov	ax,es:[bx+12h]
	mov	[bp-0Ah],ax
	mov	ax,es:[bx+14h]
	mov	dx,es:[bx+16h]
	mov	[bp-8h],ax
	mov	[bp-6h],dx
	mov	ax,es:[bx+18h]
	mov	dx,es:[bx+1Ah]
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	mov	si,es:[bx]
	sub	ax,ax
	push	ax
	push	ax
	push	ax
	push	si
	call	far 208Fh:0115h
	add	sp,8h
	mov	ax,0Ch
	push	ax
	lea	ax,[bp-0Ch]
	push	ss
	push	ax
	push	si
	call	far 208Fh:00EFh
	add	sp,8h
	pop	si
	mov	sp,bp
	pop	bp
	retf

;; fn2EB3_0B54: 2EB3:0B54
;;   Called from:
;;     2644:1FF4 (in fn2644_1F12)
;;     2644:2016 (in fn2644_1F12)
;;     2EB3:24D8 (in fn2EB3_24C6)
fn2EB3_0B54 proc
	push	bp
	mov	bp,sp
	push	si
	les	bx,[bp+6h]
	push	word ptr es:[bx]
	call	far 207Fh:0006h
	add	sp,2h
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	0A8Ch
	add	sp,4h
	or	ax,ax
	jz	0BB1h

l2EB3_0B77:
	les	bx,[bp+6h]
	mov	si,es:[bx]
	sub	ax,ax
	push	ax
	push	si
	call	far 2E37h:06F4h
	add	sp,4h
	mov	word ptr [1484h],0h
	mov	ax,2h
	push	ax
	sub	ax,ax
	push	ax
	push	ax
	push	si
	call	far 208Fh:0115h
	add	sp,8h
	les	bx,[bp+6h]
	mov	es:[bx+1Ch],ax
	mov	es:[bx+1Eh],dx
	mov	word ptr es:[bx+2Eh],0h

l2EB3_0BB1:
	pop	si
	pop	bp
	retf

;; fn2EB3_0BB4: 2EB3:0BB4
;;   Called from:
;;     2EB3:2658 (in fn2EB3_24C6)
fn2EB3_0BB4 proc
	push	bp
	mov	bp,sp
	mov	ax,1h
	push	ax
	les	bx,[bp+6h]
	push	word ptr es:[bx]
	call	far 2E37h:06F4h
	add	sp,4h
	mov	word ptr [1484h],0h
	les	bx,[bp+6h]
	inc	word ptr es:[bx+12h]
	push	es
	push	bx
	push	cs
	call	0AFAh
	add	sp,4h
	les	bx,[bp+6h]
	push	word ptr es:[bx]
	call	far 207Fh:0048h
	add	sp,2h
	pop	bp
	retf
2EB3:0BEF                                              90                .

;; fn2EB3_0BF0: 2EB3:0BF0
;;   Called from:
;;     2EB3:0DD0 (in fn2EB3_0BF0)
;;     2EB3:1623 (in fn2EB3_1526)
;;     2EB3:1FFE (in fn2EB3_1FCC)
;;     2EB3:2184 (in fn2EB3_20FE)
;;     2EB3:25D6 (in fn2EB3_24C6)
;;     2EB3:2618 (in fn2EB3_24C6)
fn2EB3_0BF0 proc
	push	bp
	mov	bp,sp
	sub	sp,14h
	push	si
	push	word ptr [bp+14h]
	push	word ptr [bp+12h]
	les	bx,[bp+6h]
	push	word ptr es:[bx]
	call	far 2E37h:04CEh
	add	sp,6h
	mov	[bp-0Ch],ax
	mov	[bp-0Ah],dx
	cmp	word ptr [1484h],0h
	jz	0C2Ah

l2EB3_0C18:
	les	bx,[bp+6h]
	mov	word ptr es:[bx+2Eh],0h

l2EB3_0C21:
	sub	ax,ax
	cwd
	pop	si
	mov	sp,bp
	pop	bp
	retf
2EB3:0C29                            90                            .      

l2EB3_0C2A:
	les	bx,[bp-0Ch]
	mov	ax,es:[bx]
	mov	[bp-6h],ax
	mov	ax,[bp+10h]
	cmp	ax,4h
	jbe	0C3Eh

l2EB3_0C3B:
	jmp	0D74h

l2EB3_0C3E:
	add	ax,ax
	xchg	bx,ax
	jmp	word ptr cs:[bx+0D6Ah]

l2EB3_0C46:
	push	word ptr [bp+10h]
	push	word ptr [bp+0Eh]
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	push	es
	push	word ptr [bp-0Ch]
	call	far 2017h:0489h
	add	sp,0Ch
	mov	[bp-4h],ax
	mov	si,ax
	shl	si,1h
	les	bx,[bp-0Ch]
	mov	ax,es:[bx+si+2h]

l2EB3_0C6C:
	add	ax,bx
	mov	dx,es
	mov	[bp-10h],ax
	mov	[bp-0Eh],dx
	jmp	0D74h
2EB3:0C79                            90                            .      

l2EB3_0C7A:
	mov	word ptr [bp-8h],0h
	mov	ax,[bp-6h]
	jmp	0CC5h

l2EB3_0C84:
	mov	ax,[bp-8h]
	add	ax,[bp-2h]
	shr	ax,1h
	mov	[bp-4h],ax
	push	word ptr [bp+0Eh]
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	mov	si,ax
	shl	si,1h
	les	bx,[bp-0Ch]
	mov	ax,es:[bx+si+2h]
	add	ax,bx
	mov	dx,es
	add	ax,8h
	push	dx
	push	ax
	call	far 38ADh:00F2h
	add	sp,0Ah
	or	ax,ax
	jge	0CC2h

l2EB3_0CB8:
	mov	ax,[bp-4h]
	inc	ax
	mov	[bp-8h],ax
	jmp	0CC8h
2EB3:0CC1    90                                            .              

l2EB3_0CC2:
	mov	ax,[bp-4h]

l2EB3_0CC5:
	mov	[bp-2h],ax

l2EB3_0CC8:
	mov	ax,[bp-2h]
	cmp	[bp-8h],ax
	jc	0C84h

l2EB3_0CD0:
	mov	ax,[bp-8h]
	mov	[bp-4h],ax
	mov	si,ax
	shl	si,1h
	les	bx,[bp-0Ch]
	mov	ax,es:[bx+si+2h]
	add	ax,bx
	mov	dx,es
	mov	[bp-10h],ax
	mov	[bp-0Eh],dx
	cmp	word ptr [bp+10h],0h
	jz	0CF4h

l2EB3_0CF1:
	jmp	0D74h

l2EB3_0CF4:
	push	word ptr [bp+0Eh]
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	add	ax,8h
	push	dx
	push	ax
	call	far 38ADh:00F2h
	add	sp,0Ah
	or	ax,ax
	jnz	0D74h

l2EB3_0D0E:
	mov	word ptr [bp+10h],1h
	jmp	0D74h
2EB3:0D15                90                                    .          

l2EB3_0D16:
	mov	ax,[bp-6h]
	mov	[bp-4h],ax
	mov	si,ax
	shl	si,1h
	les	bx,[bp-0Ch]
	mov	ax,es:[bx+si+2h]
	add	ax,bx
	mov	dx,es
	mov	[bp-10h],ax
	mov	[bp-0Eh],dx
	les	bx,[bp-10h]
	mov	ax,es:[bx]
	or	ax,es:[bx+2h]
	jnz	0D74h

l2EB3_0D3D:
	cmp	word ptr [bp-4h],0h
	jz	0D74h

l2EB3_0D43:
	dec	word ptr [bp-4h]
	mov	si,[bp-4h]
	shl	si,1h
	les	bx,[bp-0Ch]
	mov	ax,es:[bx+si+2h]
	add	ax,bx
	mov	[bp-10h],ax
	jmp	0D74h
2EB3:0D59                            90                            .      

l2EB3_0D5A:
	mov	word ptr [bp-4h],0h
	mov	bx,[bp-0Ch]
	mov	ax,es:[bx+2h]
	jmp	0C6Ch
2EB3:0D69                            90                            .      
l2EB3_0D6A	dw	0x0C7A
l2EB3_0D6C	dw	0x0C7A
l2EB3_0D6E	dw	0x0C46
l2EB3_0D70	dw	0x0D16
l2EB3_0D72	dw	0x0D5A

l2EB3_0D74:
	les	bx,[bp+6h]
	inc	word ptr es:[bx+2Eh]
	mov	si,es:[bx+2Eh]
	mov	cl,3h
	shl	si,cl
	mov	ax,[bp-4h]
	mov	es:[bx+si+34h],ax
	mov	si,es:[bx+2Eh]
	shl	si,cl
	mov	ax,[bp+12h]
	mov	dx,[bp+14h]
	mov	es:[bx+si+30h],ax
	mov	es:[bx+si+32h],dx
	mov	si,es:[bx+2Eh]
	shl	si,cl
	mov	ax,[bp-6h]
	mov	es:[bx+si+36h],ax
	les	bx,[bp-10h]
	mov	ax,es:[bx]
	or	ax,es:[bx+2h]
	jz	0DDCh

l2EB3_0DB7:
	push	word ptr es:[bx+2h]
	push	word ptr es:[bx]
	push	word ptr [bp+10h]
	push	word ptr [bp+0Eh]
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	0BF0h
	add	sp,10h
	pop	si
	mov	sp,bp
	pop	bp
	retf

l2EB3_0DDC:
	mov	ax,[bp-6h]
	cmp	[bp-4h],ax
	jnc	0E3Ah

l2EB3_0DE4:
	mov	ax,[bp+10h]
	cmp	ax,4h
	jbe	0DEFh

l2EB3_0DEC:
	jmp	0C21h

l2EB3_0DEF:
	add	ax,ax
	xchg	bx,ax
	jmp	word ptr cs:[bx+0E2Ch]
2EB3:0DF7                      90                                .        

l2EB3_0DF8:
	push	word ptr [bp+0Eh]
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	mov	ax,[bp-10h]
	mov	dx,[bp-0Eh]
	add	ax,8h
	push	dx
	push	ax
	call	far 38ADh:00F2h
	add	sp,0Ah
	or	ax,ax
	jz	0E1Bh

l2EB3_0E18:
	jmp	0C21h

l2EB3_0E1B:
	les	bx,[bp-10h]
	mov	ax,es:[bx+4h]
	mov	dx,es:[bx+6h]
	pop	si
	mov	sp,bp
	pop	bp
	retf
2EB3:0E2B                                  90                        .    
l2EB3_0E2C	dw	0x0DF8
l2EB3_0E2E	dw	0x0E1B
l2EB3_0E30	dw	0x0C21
l2EB3_0E32	dw	0x0E1B
l2EB3_0E34	dw	0x0E1B
2EB3:0E36                   E9 E8 FD 90                         ....      

l2EB3_0E3A:
	cmp	word ptr [bp+10h],1h
	jz	0E43h

l2EB3_0E40:
	jmp	0C21h

l2EB3_0E43:
	jmp	0E6Fh
2EB3:0E45                90                                    .          

l2EB3_0E46:
	les	bx,[bp+6h]
	mov	ax,es:[bx+2Eh]
	mov	cl,3h
	shl	ax,cl
	add	ax,bx
	mov	dx,es
	mov	[bp-14h],ax
	mov	[bp-12h],dx
	les	bx,[bp-14h]
	mov	ax,es:[bx+36h]
	cmp	es:[bx+34h],ax
	jnz	0E79h

l2EB3_0E68:
	les	bx,[bp+6h]
	dec	word ptr es:[bx+2Eh]

l2EB3_0E6F:
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+2Eh],0h
	jnz	0E46h

l2EB3_0E79:
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+2Eh],0h
	jnz	0E86h

l2EB3_0E83:
	jmp	0C21h

l2EB3_0E86:
	mov	si,es:[bx+2Eh]
	mov	cl,3h
	shl	si,cl
	push	word ptr es:[bx+si+32h]
	push	word ptr es:[bx+si+30h]
	push	word ptr es:[bx]
	call	far 2E37h:04CEh
	add	sp,6h
	mov	[bp-0Ch],ax
	mov	[bp-0Ah],dx
	cmp	word ptr [1484h],0h
	jz	0EB1h

l2EB3_0EAE:
	jmp	0C18h

l2EB3_0EB1:
	les	bx,[bp+6h]
	mov	si,es:[bx+2Eh]
	mov	cl,3h
	shl	si,cl
	mov	si,es:[bx+si+34h]
	shl	si,1h
	les	bx,[bp-0Ch]
	mov	ax,es:[bx+si+2h]
	add	ax,bx
	mov	[bp-10h],ax
	mov	[bp-0Eh],dx
	jmp	0E1Bh

;; fn2EB3_0ED4: 2EB3:0ED4
;;   Called from:
;;     2EB3:13C8 (in fn2EB3_1206)
fn2EB3_0ED4 proc
	push	bp
	mov	bp,sp
	sub	sp,124h
	push	di
	push	si
	les	bx,[bp+0Ah]
	mov	ax,es:[bx]
	mov	[bp+0FEECh],ax
	les	bx,[bp+6h]
	mov	si,es:[bx+2Eh]
	mov	cl,3h
	shl	si,cl
	mov	ax,es:[bx+si+34h]
	mov	[bp-4h],ax
	mov	ax,[bp+0FEECh]
	cmp	es:[bx+2Ah],ax
	ja	0F06h

l2EB3_0F03:
	jmp	0FEAh

l2EB3_0F06:
	mov	si,ax
	shl	si,1h
	les	bx,[bp+0Ah]
	mov	ax,es:[bx+si+4h]
	mov	[bp+0FEE4h],ax
	mov	ax,[bp+0FEECh]
	inc	ax
	mov	[bp+0FEEEh],ax
	jmp	0F43h

l2EB3_0F20:
	mov	ax,[bp+0FEEEh]
	shl	ax,1h
	add	ax,[bp+0Ah]
	mov	dx,[bp+0Ch]
	mov	[bp+0FEE0h],ax
	mov	[bp+0FEE2h],dx
	les	bx,[bp+0FEE0h]
	mov	ax,es:[bx]
	mov	es:[bx+2h],ax
	dec	word ptr [bp+0FEEEh]

l2EB3_0F43:
	mov	ax,[bp-4h]
	cmp	[bp+0FEEEh],ax
	ja	0F20h

l2EB3_0F4C:
	shl	ax,1h
	add	ax,[bp+0Ah]
	mov	dx,[bp+0Ch]
	mov	[bp+0FEE0h],ax
	mov	[bp+0FEE2h],dx
	les	bx,[bp+0FEE0h]
	mov	ax,[bp+0FEE4h]
	mov	es:[bx+2h],ax
	mov	bx,es:[bx+4h]
	les	si,[bp+0Ah]
	mov	ax,es:[bx+si]
	mov	dx,es:[bx+si+2h]
	mov	bx,[bp+0FEE4h]
	mov	es:[bx+si],ax
	mov	es:[bx+si+2h],dx
	les	bx,[bp+0FEE0h]
	mov	bx,es:[bx+4h]
	mov	es,[bp+0Ch]
	mov	ax,[14A2h]
	mov	dx,[14A4h]
	mov	es:[bx+si],ax
	mov	es:[bx+si+2h],dx
	les	bx,[bp+0FEE0h]
	mov	si,es:[bx+2h]
	les	bx,[bp+0Ah]
	mov	ax,[14A6h]
	mov	dx,[14A8h]
	mov	es:[bx+si+4h],ax
	mov	es:[bx+si+6h],dx
	les	bx,[bp+6h]
	push	word ptr es:[bx+26h]
	mov	ax,14AAh
	push	ds
	push	ax
	les	bx,[bp+0FEE0h]
	mov	ax,es:[bx+2h]
	add	ax,[bp+0Ah]
	mov	dx,[bp+0Ch]
	add	ax,8h
	push	dx
	push	ax
	call	far 2017h:02ECh
	add	sp,0Ah
	les	bx,[bp+0Ah]
	inc	word ptr es:[bx]
	sub	ax,ax
	pop	si
	pop	di
	mov	sp,bp
	pop	bp
	retf
2EB3:0FE9                            90                            .      

l2EB3_0FEA:
	les	bx,[bp+6h]
	mov	ax,es:[bx+2Ch]
	mov	[bp+0FEF0h],ax
	cmp	[bp-4h],ax
	jnz	1004h

l2EB3_0FFA:
	mov	ax,1h
	pop	si
	pop	di
	mov	sp,bp
	pop	bp
	retf
2EB3:1003          90                                        .            

l2EB3_1004:
	mov	ax,[bp+0FEF0h]
	cmp	[bp-4h],ax
	jnc	1020h

l2EB3_100D:
	mov	word ptr [bp-6h],0FFFFh
	mov	word ptr [bp-2h],1h
	mov	word ptr [bp+0FEEAh],0FFFFh
	jmp	1030h
2EB3:101F                                              90                .

l2EB3_1020:
	mov	word ptr [bp-6h],0h
	mov	word ptr [bp-2h],0h
	mov	word ptr [bp+0FEEAh],1h

l2EB3_1030:
	mov	si,[bp+0FEF0h]
	add	si,[bp-6h]
	mov	ax,[bp+0Ah]
	mov	dx,[bp+0Ch]
	mov	cx,si
	shl	cx,1h
	add	ax,cx
	add	ax,2h
	mov	[bp+0FEE0h],ax
	mov	[bp+0FEE2h],dx
	les	bx,[bp+0FEE0h]
	mov	di,es:[bx]
	les	bx,[bp+0Ah]
	mov	ax,es:[bx+di+4h]
	mov	dx,es:[bx+di+6h]
	mov	[bp+0FEF6h],ax
	mov	[bp+0FEF8h],dx
	les	bx,[bp+6h]
	push	word ptr es:[bx+26h]
	les	bx,[bp+0FEE0h]
	mov	ax,es:[bx]
	add	ax,[bp+0Ah]
	mov	dx,[bp+0Ch]
	add	ax,8h
	push	dx
	push	ax
	lea	ax,[bp+0FEFAh]
	push	ss
	push	ax
	call	far 2017h:02ECh
	add	sp,0Ah
	mov	bx,si
	shl	bx,1h
	les	di,[bp+0Ah]
	mov	ax,es:[bx+di+4h]
	add	ax,di
	mov	dx,es
	mov	[bp+0FEDCh],ax
	mov	[bp+0FEDEh],dx
	les	bx,[bp+0FEDCh]
	mov	ax,es:[bx]
	mov	dx,es:[bx+2h]
	mov	[bp+0FEF2h],ax
	mov	[bp+0FEF4h],dx
	les	bx,[bp+0FEE0h]
	mov	bx,es:[bx]
	mov	es,[bp+0Ch]
	mov	ax,es:[bx+di]
	mov	dx,es:[bx+di+2h]
	les	bx,[bp+0FEDCh]
	mov	es:[bx],ax
	mov	es:[bx+2h],dx
	les	bx,[bp+0FEE0h]
	mov	ax,es:[bx]
	mov	[bp+0FEE4h],ax
	mov	[bp+0FEEEh],si
	jmp	1109h

l2EB3_10E6:
	mov	si,[bp+0FEEEh]
	add	si,[bp+0FEEAh]
	shl	si,1h
	les	bx,[bp+0Ah]
	mov	ax,es:[bx+si+2h]
	mov	si,[bp+0FEEEh]
	shl	si,1h
	mov	es:[bx+si+2h],ax
	mov	ax,[bp+0FEEAh]
	add	[bp+0FEEEh],ax

l2EB3_1109:
	mov	ax,[bp+0FEEEh]
	add	ax,[bp-2h]
	cmp	ax,[bp-4h]
	jnz	10E6h

l2EB3_1115:
	mov	si,[bp-4h]
	sub	si,[bp-2h]
	sub	si,[bp+0FEEAh]
	shl	si,1h
	les	bx,[bp+0Ah]
	mov	ax,[bp+0FEE4h]
	mov	es:[bx+si+2h],ax
	mov	ax,[bp-4h]
	add	ax,[bp-2h]
	shl	ax,1h
	add	ax,bx
	mov	dx,es
	mov	[bp+0FEDCh],ax
	mov	[bp+0FEDEh],dx
	les	bx,[bp+0FEDCh]
	mov	bx,es:[bx+2h]
	les	si,[bp+0Ah]
	mov	ax,es:[bx+si]
	mov	dx,es:[bx+si+2h]
	mov	[bp+0FEE6h],ax
	mov	[bp+0FEE8h],dx
	les	bx,[bp+0FEDCh]
	mov	bx,es:[bx+2h]
	mov	es,[bp+0Ch]
	mov	ax,[14A2h]
	mov	dx,[14A4h]
	mov	es:[bx+si],ax
	mov	es:[bx+si+2h],dx
	les	bx,[bp+0FEDCh]
	mov	bx,es:[bx]
	mov	es,[bp+0Ch]
	mov	ax,[bp+0FEE6h]
	mov	dx,[bp+0FEE8h]
	mov	es:[bx+si],ax
	mov	es:[bx+si+2h],dx
	les	bx,[bp+0FEDCh]
	mov	si,es:[bx]
	les	bx,[bp+0Ah]
	mov	ax,[14A6h]
	mov	dx,[14A8h]
	mov	es:[bx+si+4h],ax
	mov	es:[bx+si+6h],dx
	les	bx,[bp+6h]
	push	word ptr es:[bx+26h]
	mov	ax,14AAh
	push	ds
	push	ax
	les	bx,[bp+0FEDCh]
	mov	ax,es:[bx]
	add	ax,[bp+0Ah]
	mov	dx,[bp+0Ch]
	add	ax,8h
	push	dx
	push	ax
	call	far 2017h:02ECh
	add	sp,0Ah
	mov	ax,[bp+0FEF6h]
	mov	dx,[bp+0FEF8h]
	mov	[14A6h],ax
	mov	[14A8h],dx
	les	bx,[bp+6h]
	push	word ptr es:[bx+26h]
	lea	ax,[bp+0FEFAh]
	push	ss
	push	ax
	mov	ax,14AAh
	push	ds
	push	ax
	call	far 2017h:02ECh
	add	sp,0Ah
	mov	ax,[bp+0FEF2h]
	mov	dx,[bp+0FEF4h]
	mov	[14A2h],ax
	mov	[14A4h],dx
	jmp	0FFAh

;; fn2EB3_1206: 2EB3:1206
;;   Called from:
;;     2EB3:1513 (in fn2EB3_1206)
;;     2EB3:1FBF (in fn2EB3_17FE)
;;     2EB3:25EE (in fn2EB3_24C6)
fn2EB3_1206 proc
	push	bp
	mov	bp,sp
	sub	sp,1Ch
	push	si
	les	bx,[bp+6h]
	mov	word ptr es:[bx+4h],1h
	mov	ax,es:[bx+2Ch]
	mov	[bp-6h],ax
	mov	ax,es:[bx+22h]
	mov	[bp-0Ah],ax
	cmp	word ptr es:[bx+2Eh],0h
	jz	122Eh

l2EB3_122B:
	jmp	1374h

l2EB3_122E:
	mov	ax,es:[bx+18h]
	or	ax,es:[bx+1Ah]
	jz	127Eh

l2EB3_1238:
	mov	ax,es:[bx+18h]
	mov	dx,es:[bx+1Ah]
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	push	dx
	push	ax
	push	word ptr es:[bx]
	call	far 2E37h:05C0h
	add	sp,6h
	mov	[bp-0Eh],ax
	mov	[bp-0Ch],dx
	cmp	word ptr [1484h],0h
	jnz	12B0h

l2EB3_1260:
	les	bx,[bp-0Eh]
	mov	bx,es:[bx+2h]
	mov	si,ax
	mov	ax,es:[bx+si]
	mov	dx,es:[bx+si+2h]
	les	bx,[bp+6h]
	mov	es:[bx+18h],ax
	mov	es:[bx+1Ah],dx
	jmp	12B0h
2EB3:127D                                        90                    .  

l2EB3_127E:
	mov	ax,es:[bx+1Ch]
	mov	dx,es:[bx+1Eh]
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	mov	ax,[149Ch]
	sub	dx,dx
	add	es:[bx+1Ch],ax
	adc	es:[bx+1Eh],dx
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	push	word ptr es:[bx]
	call	far 2E37h:0740h
	add	sp,6h
	mov	[bp-0Eh],ax
	mov	[bp-0Ch],dx

l2EB3_12B0:
	les	bx,[bp+6h]
	mov	ax,es:[bx+2Ah]
	shl	ax,1h
	add	ax,4h
	mov	[bp-10h],ax
	mov	word ptr [bp-8h],0h
	jmp	12DEh

l2EB3_12C6:
	mov	si,[bp-8h]
	shl	si,1h
	les	bx,[bp-0Eh]
	mov	ax,[bp-10h]
	mov	es:[bx+si+2h],ax
	mov	ax,[bp-0Ah]
	add	[bp-10h],ax
	inc	word ptr [bp-8h]

l2EB3_12DE:
	les	bx,[bp+6h]
	mov	ax,[bp-8h]
	cmp	es:[bx+2Ah],ax
	jnc	12C6h

l2EB3_12EA:
	mov	ax,es:[bx+14h]
	mov	dx,es:[bx+16h]
	les	bx,[bp-0Eh]
	mov	bx,es:[bx+2h]
	mov	si,[bp-0Eh]
	mov	es:[bx+si],ax
	mov	es:[bx+si+2h],dx
	mov	bx,si
	mov	si,es:[bx+2h]
	mov	ax,[14A6h]
	mov	dx,[14A8h]
	mov	es:[bx+si+4h],ax
	mov	es:[bx+si+6h],dx
	les	bx,[bp+6h]
	push	word ptr es:[bx+26h]
	mov	ax,14AAh
	push	ds
	push	ax
	les	bx,[bp-0Eh]
	mov	ax,es:[bx+2h]
	add	ax,bx
	mov	dx,es
	add	ax,8h
	push	dx
	push	ax
	call	far 2017h:02ECh
	add	sp,0Ah
	les	bx,[bp-0Eh]
	mov	bx,es:[bx+4h]
	mov	si,[bp-0Eh]
	mov	ax,[14A2h]
	mov	dx,[14A4h]
	mov	es:[bx+si],ax
	mov	es:[bx+si+2h],dx
	mov	bx,si
	mov	word ptr es:[bx],1h
	les	bx,[bp+6h]
	mov	ax,[bp-4h]
	mov	dx,[bp-2h]
	mov	es:[bx+14h],ax
	mov	es:[bx+16h],dx

l2EB3_136C:
	sub	ax,ax
	pop	si
	mov	sp,bp
	pop	bp
	retf
2EB3:1373          90                                        .            

l2EB3_1374:
	les	bx,[bp+6h]
	mov	si,es:[bx+2Eh]
	mov	cl,3h
	shl	si,cl
	push	word ptr es:[bx+si+32h]
	push	word ptr es:[bx+si+30h]
	push	word ptr es:[bx]
	call	far 2E37h:05C0h
	add	sp,6h
	mov	[bp-14h],ax
	mov	[bp-12h],dx
	cmp	word ptr [1484h],0h
	jz	13BCh

l2EB3_139F:
	les	bx,[bp+6h]
	mov	word ptr es:[bx+2Eh],0h
	mov	word ptr [1484h],0h
	mov	ax,11h
	push	ax
	call	far 20B2h:0176h
	add	sp,2h
	jmp	136Ch

l2EB3_13BC:
	push	word ptr [bp-12h]
	push	word ptr [bp-14h]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	0ED4h
	add	sp,8h
	or	ax,ax
	jnz	13D6h

l2EB3_13D3:
	jmp	151Eh

l2EB3_13D6:
	les	bx,[bp-14h]
	mov	ax,[bp-6h]
	mov	es:[bx],ax
	push	word ptr [149Ch]
	push	es
	push	bx
	mov	ax,15AAh
	push	ds
	push	ax
	call	far 2017h:0258h
	add	sp,0Ah
	les	bx,[bp+6h]
	mov	ax,es:[bx+18h]
	or	ax,es:[bx+1Ah]
	jz	1444h

l2EB3_13FF:
	mov	ax,es:[bx+18h]
	mov	dx,es:[bx+1Ah]
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	push	dx
	push	ax
	push	word ptr es:[bx]
	call	far 2E37h:05C0h
	add	sp,6h
	mov	[bp-0Eh],ax
	mov	[bp-0Ch],dx
	cmp	word ptr [1484h],0h
	jnz	1476h

l2EB3_1427:
	les	bx,[bp-0Eh]
	mov	bx,es:[bx+2h]
	mov	si,ax
	mov	ax,es:[bx+si]
	mov	dx,es:[bx+si+2h]
	les	bx,[bp+6h]
	mov	es:[bx+18h],ax
	mov	es:[bx+1Ah],dx
	jmp	1476h

l2EB3_1444:
	mov	ax,es:[bx+1Ch]
	mov	dx,es:[bx+1Eh]
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	mov	ax,[149Ch]
	sub	dx,dx
	add	es:[bx+1Ch],ax
	adc	es:[bx+1Eh],dx
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	push	word ptr es:[bx]
	call	far 2E37h:0740h
	add	sp,6h
	mov	[bp-0Eh],ax
	mov	[bp-0Ch],dx

l2EB3_1476:
	push	word ptr [149Ch]
	mov	ax,15AAh
	push	ds
	push	ax
	push	word ptr [bp-0Ch]
	push	word ptr [bp-0Eh]
	call	far 2017h:0258h
	add	sp,0Ah
	mov	word ptr [bp-8h],0h
	jmp	14DDh

l2EB3_1494:
	mov	ax,[bp-8h]
	shl	ax,1h
	add	ax,[bp-0Eh]
	mov	dx,[bp-0Ch]
	add	ax,2h
	mov	[bp-18h],ax
	mov	[bp-16h],dx
	les	bx,[bp-18h]
	mov	ax,es:[bx]
	mov	[bp-10h],ax
	mov	ax,[bp-8h]
	add	ax,[bp-6h]
	shl	ax,1h
	add	ax,[bp-0Eh]
	add	ax,2h
	mov	[bp-1Ch],ax
	mov	[bp-1Ah],dx
	les	bx,[bp-1Ch]
	mov	ax,es:[bx]
	les	bx,[bp-18h]
	mov	es:[bx],ax
	les	bx,[bp-1Ch]
	mov	ax,[bp-10h]
	mov	es:[bx],ax
	inc	word ptr [bp-8h]

l2EB3_14DD:
	mov	ax,[bp-6h]
	cmp	[bp-8h],ax
	jbe	1494h

l2EB3_14E5:
	les	bx,[bp-0Eh]
	mov	bx,es:[bx+2h]
	mov	si,[bp-0Eh]
	mov	ax,[14A2h]
	mov	dx,[14A4h]
	mov	es:[bx+si],ax
	mov	es:[bx+si+2h],dx
	mov	ax,[bp-4h]
	mov	dx,[bp-2h]
	mov	[14A2h],ax
	mov	[14A4h],dx
	les	bx,[bp+6h]
	dec	word ptr es:[bx+2Eh]
	push	es
	push	bx
	push	cs
	call	1206h
	add	sp,4h
	jmp	136Ch
2EB3:151D                                        90                    .  

l2EB3_151E:
	mov	ax,1h
	pop	si
	mov	sp,bp
	pop	bp
	retf

;; fn2EB3_1526: 2EB3:1526
;;   Called from:
;;     2EB3:1699 (in fn2EB3_1526)
;;     2EB3:204E (in fn2EB3_2008)
;;     2EB3:2081 (in fn2EB3_2062)
;;     2EB3:20C9 (in fn2EB3_2062)
fn2EB3_1526 proc
	push	bp
	mov	bp,sp
	sub	sp,0Ch
	push	si
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+2Eh],0h
	jnz	1540h

l2EB3_1537:
	sub	ax,ax
	cwd
	pop	si
	mov	sp,bp
	pop	bp
	retf
2EB3:153F                                              90                .

l2EB3_1540:
	les	bx,[bp+6h]
	mov	ax,es:[bx+2Eh]
	mov	cl,3h
	shl	ax,cl
	add	ax,bx
	mov	dx,es
	mov	[bp-0Ch],ax
	mov	[bp-0Ah],dx
	les	bx,[bp-0Ch]
	push	word ptr es:[bx+32h]
	push	word ptr es:[bx+30h]
	les	bx,[bp+6h]
	push	word ptr es:[bx]
	call	far 2E37h:04CEh
	add	sp,6h
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	les	bx,[bp-0Ch]
	mov	si,es:[bx+34h]
	shl	si,1h
	les	bx,[bp-4h]
	mov	ax,es:[bx+si+2h]
	add	ax,bx
	mov	[bp-8h],ax
	mov	[bp-6h],dx
	cmp	word ptr [bp+0Ah],0h
	jz	15CCh

l2EB3_1592:
	cmp	word ptr [bp+0Ch],0FFh
	jnz	15BCh

l2EB3_1598:
	les	bx,[bp-0Ch]
	dec	word ptr es:[bx+34h]
	les	bx,[bp+6h]
	mov	si,es:[bx+2Eh]
	mov	cl,3h
	shl	si,cl
	mov	si,es:[bx+si+34h]
	shl	si,1h
	les	bx,[bp-4h]
	mov	ax,es:[bx+si+2h]
	add	ax,bx
	mov	[bp-8h],ax

l2EB3_15BC:
	les	bx,[bp-8h]
	mov	ax,es:[bx+4h]
	mov	dx,es:[bx+6h]
	pop	si
	mov	sp,bp
	pop	bp
	retf

l2EB3_15CC:
	cmp	word ptr [bp+0Ch],1h
	jz	15D5h

l2EB3_15D2:
	jmp	16A6h

l2EB3_15D5:
	les	bx,[bp+6h]
	mov	si,es:[bx+2Eh]
	mov	cl,3h
	shl	si,cl
	inc	word ptr es:[bx+si+34h]
	mov	si,es:[bx+2Eh]
	shl	si,cl
	mov	si,es:[bx+si+34h]
	shl	si,1h
	les	bx,[bp-4h]
	mov	ax,es:[bx+si+2h]
	add	ax,bx
	mov	dx,es
	mov	[bp-8h],ax
	mov	[bp-6h],dx
	les	bx,[bp-8h]
	mov	ax,es:[bx]
	or	ax,es:[bx+2h]
	jz	1630h

l2EB3_160D:
	push	word ptr es:[bx+2h]
	push	word ptr es:[bx]
	mov	ax,4h

l2EB3_1617:
	push	ax
	sub	ax,ax
	push	ax
	push	ax
	push	ax
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	0BF0h
	add	sp,10h
	pop	si
	mov	sp,bp
	pop	bp
	retf
2EB3:162F                                              90                .

l2EB3_1630:
	les	bx,[bp+6h]
	mov	ax,es:[bx+2Eh]
	mov	cl,3h
	shl	ax,cl
	add	ax,bx
	mov	dx,es
	mov	[bp-0Ch],ax
	mov	[bp-0Ah],dx
	les	bx,[bp-0Ch]
	mov	ax,es:[bx+36h]
	cmp	es:[bx+34h],ax
	jz	1655h

l2EB3_1652:
	jmp	15BCh

l2EB3_1655:
	jmp	1681h
2EB3:1657                      90                                .        

l2EB3_1658:
	les	bx,[bp+6h]
	mov	ax,es:[bx+2Eh]
	mov	cl,3h
	shl	ax,cl
	add	ax,bx
	mov	dx,es
	mov	[bp-0Ch],ax
	mov	[bp-0Ah],dx
	les	bx,[bp-0Ch]
	mov	ax,es:[bx+36h]
	cmp	es:[bx+34h],ax
	jnz	168Bh

l2EB3_167A:
	les	bx,[bp+6h]
	dec	word ptr es:[bx+2Eh]

l2EB3_1681:
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+2Eh],0h
	jnz	1658h

l2EB3_168B:
	mov	ax,1h

l2EB3_168E:
	push	ax
	mov	ax,1h
	push	ax
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	1526h
	add	sp,8h
	pop	si
	mov	sp,bp
	pop	bp
	retf
2EB3:16A5                90                                    .          

l2EB3_16A6:
	les	bx,[bp-8h]
	mov	ax,es:[bx]
	or	ax,es:[bx+2h]
	jz	16C0h

l2EB3_16B2:
	push	word ptr es:[bx+2h]
	push	word ptr es:[bx]
	mov	ax,3h
	jmp	1617h
2EB3:16BF                                              90                .

l2EB3_16C0:
	les	bx,[bp+6h]
	mov	si,es:[bx+2Eh]
	mov	cl,3h
	shl	si,cl
	cmp	word ptr es:[bx+si+34h],0h
	jnz	16F4h

l2EB3_16D2:
	jmp	16E7h

l2EB3_16D4:
	mov	si,es:[bx+2Eh]
	mov	cl,3h
	shl	si,cl
	cmp	word ptr es:[bx+si+34h],0h
	jnz	16EEh

l2EB3_16E3:
	dec	word ptr es:[bx+2Eh]

l2EB3_16E7:
	cmp	word ptr es:[bx+2Eh],0h
	jnz	16D4h

l2EB3_16EE:
	mov	ax,0FFFFh
	jmp	168Eh
2EB3:16F3          90                                        .            

l2EB3_16F4:
	mov	si,es:[bx+2Eh]
	mov	cl,3h
	shl	si,cl
	dec	word ptr es:[bx+si+34h]
	mov	si,es:[bx+2Eh]
	shl	si,cl
	mov	si,es:[bx+si+34h]
	shl	si,1h
	les	bx,[bp-4h]
	mov	ax,es:[bx+si+2h]
	add	ax,bx
	mov	dx,es
	mov	[bp-8h],ax
	mov	[bp-6h],dx
	jmp	15BCh

;; fn2EB3_1720: 2EB3:1720
;;   Called from:
;;     2EB3:1990 (in fn2EB3_17FE)
fn2EB3_1720 proc
	push	bp
	mov	bp,sp
	sub	sp,0Eh
	push	di
	push	si
	mov	ax,[bp+0Eh]
	shl	ax,1h
	add	ax,[bp+0Ah]
	mov	dx,[bp+0Ch]
	add	ax,2h
	mov	[bp-0Eh],ax
	mov	[bp-0Ch],dx
	les	bx,[bp-0Eh]
	mov	di,es:[bx]
	les	bx,[bp+0Ah]
	mov	ax,es:[bx+di+4h]
	mov	dx,es:[bx+di+6h]
	mov	[14A6h],ax
	mov	[14A8h],dx
	les	bx,[bp+6h]
	push	word ptr es:[bx+26h]
	les	bx,[bp-0Eh]
	mov	ax,es:[bx]
	add	ax,[bp+0Ah]
	mov	dx,[bp+0Ch]
	add	ax,8h
	push	dx
	push	ax
	mov	ax,14AAh
	push	ds
	push	ax
	call	far 2017h:02ECh
	add	sp,0Ah
	les	bx,[bp+0Ah]
	mov	ax,es:[bx]
	mov	[bp-8h],ax
	les	bx,[bp-0Eh]
	mov	si,es:[bx]
	les	bx,[bp+0Ah]
	mov	ax,es:[bx+si]
	mov	dx,es:[bx+si+2h]
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	mov	[bp-0Ah],si
	mov	ax,[bp+0Eh]
	mov	[bp-6h],ax
	jmp	17C3h
2EB3:17A3          90                                        .            

l2EB3_17A4:
	mov	ax,[bp-6h]
	shl	ax,1h
	add	ax,[bp+0Ah]
	mov	dx,[bp+0Ch]
	mov	[bp-0Eh],ax
	mov	[bp-0Ch],dx
	les	bx,[bp-0Eh]
	mov	ax,es:[bx+4h]
	mov	es:[bx+2h],ax
	inc	word ptr [bp-6h]

l2EB3_17C3:
	mov	ax,[bp-8h]
	cmp	[bp-6h],ax
	jc	17A4h

l2EB3_17CB:
	mov	si,ax
	shl	si,1h
	les	bx,[bp+0Ah]
	mov	ax,[bp-0Ah]
	mov	es:[bx+si+2h],ax
	mov	si,[bp+0Eh]
	shl	si,1h
	mov	bx,es:[bx+si+2h]
	mov	si,[bp+0Ah]
	mov	ax,[bp-4h]
	mov	dx,[bp-2h]
	mov	es:[bx+si],ax
	mov	es:[bx+si+2h],dx
	mov	bx,si
	dec	word ptr es:[bx]
	pop	si
	pop	di
	mov	sp,bp
	pop	bp
	retf
2EB3:17FD                                        90                    .  

;; fn2EB3_17FE: 2EB3:17FE
;;   Called from:
;;     2EB3:1C90 (in fn2EB3_17FE)
;;     2EB3:2333 (in fn2EB3_20FE)
fn2EB3_17FE proc
	push	bp
	mov	bp,sp
	sub	sp,26h
	push	di
	push	si
	les	bx,[bp+6h]
	mov	ax,es:[bx+2Eh]
	mov	cl,3h
	shl	ax,cl
	add	ax,bx
	mov	dx,es
	mov	[bp-22h],ax
	mov	[bp-20h],dx
	les	bx,[bp-22h]
	mov	ax,es:[bx+30h]
	mov	dx,es:[bx+32h]
	mov	[bp-0Ch],ax
	mov	[bp-0Ah],dx
	mov	ax,es:[bx+36h]
	mov	[bp-14h],ax
	les	bx,[bp+6h]
	cmp	es:[bx+2Ch],ax
	ja	183Fh

l2EB3_183C:
	jmp	1FC6h

l2EB3_183F:
	cmp	word ptr es:[bx+2Eh],1h
	jnz	18AAh

l2EB3_1846:
	or	ax,ax
	jz	184Dh

l2EB3_184A:
	jmp	1FC6h

l2EB3_184D:
	push	dx
	push	word ptr [bp-0Ch]
	push	word ptr es:[bx]
	call	far 2E37h:05C0h
	add	sp,6h
	mov	[bp-6h],ax
	mov	[bp-4h],dx
	les	bx,[bp-6h]
	mov	bx,es:[bx+2h]
	mov	si,ax
	mov	ax,es:[bx+si]
	mov	dx,es:[bx+si+2h]
	les	bx,[bp+6h]
	mov	es:[bx+14h],ax
	mov	es:[bx+16h],dx
	mov	ax,es:[bx+18h]
	mov	dx,es:[bx+1Ah]
	les	bx,[bp-6h]
	mov	bx,es:[bx+2h]
	mov	es:[bx+si],ax
	mov	es:[bx+si+2h],dx
	les	bx,[bp+6h]
	mov	ax,[bp-0Ch]
	mov	dx,[bp-0Ah]
	mov	es:[bx+18h],ax
	mov	es:[bx+1Ah],dx
	pop	si
	pop	di
	mov	sp,bp
	pop	bp
	retf

l2EB3_18AA:
	dec	word ptr es:[bx+2Eh]
	mov	ax,es:[bx+2Eh]
	mov	cl,3h
	shl	ax,cl
	add	ax,bx
	mov	dx,es
	mov	[bp-22h],ax
	mov	[bp-20h],dx
	les	bx,[bp-22h]
	mov	ax,es:[bx+34h]
	mov	[bp-2h],ax
	push	word ptr es:[bx+32h]
	push	word ptr es:[bx+30h]
	les	bx,[bp+6h]
	push	word ptr es:[bx]
	call	far 2E37h:04CEh
	add	sp,6h
	mov	[bp-6h],ax
	mov	[bp-4h],dx
	les	bx,[bp-22h]
	mov	ax,[bp-2h]
	cmp	es:[bx+36h],ax
	jnz	193Eh

l2EB3_18F2:
	mov	si,ax
	shl	si,1h
	les	bx,[bp-6h]
	mov	bx,es:[bx+si+2h]
	mov	si,[bp-6h]
	mov	ax,es:[bx+si]
	mov	dx,es:[bx+si+2h]
	mov	[bp-18h],ax
	mov	[bp-16h],dx
	mov	[bp-1Eh],ax
	mov	[bp-1Ch],dx
	les	bx,[bp-22h]
	dec	word ptr es:[bx+34h]
	mov	ax,es:[bx+34h]
	mov	[bp-2h],ax
	mov	si,ax
	shl	si,1h
	les	bx,[bp-6h]
	mov	bx,es:[bx+si+2h]
	mov	si,[bp-6h]
	mov	ax,es:[bx+si]
	mov	dx,es:[bx+si+2h]
	mov	[bp-0Ch],ax
	mov	[bp-0Ah],dx
	jmp	1983h

l2EB3_193E:
	mov	ax,[bp-2h]
	shl	ax,1h
	add	ax,[bp-6h]
	mov	dx,[bp-4h]
	mov	[bp-22h],ax
	mov	[bp-20h],dx
	les	bx,[bp-22h]
	mov	bx,es:[bx+2h]
	les	si,[bp-6h]
	mov	ax,es:[bx+si]
	mov	dx,es:[bx+si+2h]
	mov	[bp-0Ch],ax
	mov	[bp-0Ah],dx
	mov	[bp-1Eh],ax
	mov	[bp-1Ch],dx
	les	bx,[bp-22h]
	mov	bx,es:[bx+4h]
	mov	es,[bp-4h]
	mov	ax,es:[bx+si]
	mov	dx,es:[bx+si+2h]
	mov	[bp-18h],ax
	mov	[bp-16h],dx

l2EB3_1983:
	push	word ptr [bp-2h]
	push	es
	push	word ptr [bp-6h]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	1720h
	add	sp,0Ah
	les	bx,[bp+6h]
	mov	di,es:[bx+2Eh]
	mov	cl,3h
	shl	di,cl
	dec	word ptr es:[bx+di+36h]
	mov	si,es:[bx]
	mov	di,es:[bx+2Eh]
	shl	di,cl
	push	word ptr es:[bx+di+32h]
	push	word ptr es:[bx+di+30h]
	push	si
	call	far 2E37h:06C4h
	add	sp,6h
	push	word ptr [bp-0Ah]
	push	word ptr [bp-0Ch]
	push	si
	call	far 2E37h:04CEh
	add	sp,6h
	mov	[bp-6h],ax
	mov	[bp-4h],dx
	push	word ptr [bp-16h]
	push	word ptr [bp-18h]
	push	si
	call	far 2E37h:04CEh
	add	sp,6h
	mov	[bp-12h],ax
	mov	[bp-10h],dx
	push	word ptr [bp-0Ah]
	push	word ptr [bp-0Ch]
	push	si
	call	far 2E37h:04CEh
	add	sp,6h
	mov	[bp-6h],ax
	mov	[bp-4h],dx
	push	word ptr [bp-16h]
	push	word ptr [bp-18h]
	push	si
	call	far 2E37h:04CEh
	add	sp,6h
	mov	[bp-12h],ax
	mov	[bp-10h],dx
	mov	ax,[bp-0Ch]
	mov	dx,[bp-0Ah]
	cmp	[bp-1Eh],ax
	jz	1A22h

l2EB3_1A1F:
	jmp	1ABCh

l2EB3_1A22:
	cmp	[bp-1Ch],dx
	jz	1A2Ah

l2EB3_1A27:
	jmp	1ABCh

l2EB3_1A2A:
	les	bx,[bp-6h]
	mov	ax,es:[bx]
	mov	[bp-2h],ax
	shl	ax,1h
	add	ax,bx
	mov	dx,es
	mov	[bp-22h],ax
	mov	[bp-20h],dx
	les	bx,[bp-22h]
	mov	di,es:[bx+2h]
	les	bx,[bp-6h]
	mov	ax,[14A6h]
	mov	dx,[14A8h]
	mov	es:[bx+di+4h],ax
	mov	es:[bx+di+6h],dx
	les	bx,[bp+6h]
	push	word ptr es:[bx+26h]
	mov	ax,14AAh
	push	ds
	push	ax
	les	bx,[bp-22h]
	mov	ax,es:[bx+2h]
	add	ax,[bp-6h]
	mov	dx,[bp-4h]
	add	ax,8h
	push	dx
	push	ax
	call	far 2017h:02ECh
	add	sp,0Ah
	les	bx,[bp-12h]
	mov	bx,es:[bx+2h]
	mov	di,[bp-12h]
	mov	ax,es:[bx+di]
	mov	dx,es:[bx+di+2h]
	les	bx,[bp-22h]
	mov	bx,es:[bx+4h]
	les	di,[bp-6h]
	mov	es:[bx+di],ax
	mov	es:[bx+di+2h],dx
	les	bx,[bp-12h]
	mov	bx,es:[bx+2h]
	mov	di,[bp-12h]
	mov	word ptr es:[bx+di],0FFFFh
	mov	word ptr es:[bx+di+2h],0FFFFh
	les	bx,[bp-6h]
	jmp	1B54h
2EB3:1ABB                                  90                        .    

l2EB3_1ABC:
	les	bx,[bp-12h]
	mov	ax,es:[bx]
	mov	[bp-14h],ax
	mov	si,ax
	shl	si,1h
	mov	ax,es:[bx+si+4h]
	mov	[bp-1Ah],ax
	mov	ax,[bp-14h]
	inc	ax
	mov	[bp-0Eh],ax
	jmp	1AF8h
2EB3:1AD9                            90                            .      

l2EB3_1ADA:
	mov	ax,[bp-0Eh]
	shl	ax,1h
	add	ax,[bp-12h]
	mov	dx,[bp-10h]
	mov	[bp-22h],ax
	mov	[bp-20h],dx
	les	bx,[bp-22h]
	mov	ax,es:[bx]
	mov	es:[bx+2h],ax
	dec	word ptr [bp-0Eh]

l2EB3_1AF8:
	cmp	word ptr [bp-0Eh],0h
	jnz	1ADAh

l2EB3_1AFE:
	les	bx,[bp-12h]
	mov	ax,[bp-1Ah]
	mov	es:[bx+2h],ax
	mov	si,ax
	mov	ax,[14A6h]
	mov	dx,[14A8h]
	mov	es:[bx+si+4h],ax
	mov	es:[bx+si+6h],dx
	les	bx,[bp+6h]
	push	word ptr es:[bx+26h]
	mov	ax,14AAh
	push	ds
	push	ax
	les	bx,[bp-12h]
	mov	ax,es:[bx+2h]
	add	ax,bx
	mov	dx,es
	add	ax,8h
	push	dx
	push	ax
	call	far 2017h:02ECh
	add	sp,0Ah
	les	bx,[bp-12h]
	mov	bx,es:[bx+2h]
	mov	si,[bp-12h]
	mov	word ptr es:[bx+si],0FFFFh
	mov	word ptr es:[bx+si+2h],0FFFFh
	mov	bx,si

l2EB3_1B54:
	inc	word ptr es:[bx]
	les	bx,[bp-6h]
	mov	ax,es:[bx]
	mov	[bp-2h],ax
	les	bx,[bp-12h]
	mov	ax,es:[bx]
	add	ax,[bp-2h]
	mov	[bp-14h],ax
	les	bx,[bp+6h]
	cmp	es:[bx+2Ah],ax
	jz	1B78h

l2EB3_1B75:
	jmp	1C98h

l2EB3_1B78:
	mov	word ptr [bp-14h],0h
	jmp	1C23h

l2EB3_1B80:
	mov	si,[bp-14h]
	shl	si,1h
	les	bx,[bp-12h]
	mov	ax,es:[bx+si+2h]
	add	ax,bx
	mov	dx,es
	mov	[bp-22h],ax
	mov	[bp-20h],dx
	mov	ax,[bp-2h]
	shl	ax,1h
	add	ax,[bp-6h]
	mov	dx,[bp-4h]
	add	ax,2h
	mov	[bp-26h],ax
	mov	[bp-24h],dx
	les	bx,[bp-22h]
	mov	ax,es:[bx+4h]
	mov	dx,es:[bx+6h]
	les	bx,[bp-26h]
	mov	si,es:[bx]
	les	bx,[bp-6h]
	mov	es:[bx+si+4h],ax
	mov	es:[bx+si+6h],dx
	les	bx,[bp+6h]
	push	word ptr es:[bx+26h]
	mov	ax,[bp-22h]
	mov	dx,[bp-20h]
	add	ax,8h
	push	dx
	push	ax
	les	bx,[bp-26h]
	mov	ax,es:[bx]
	add	ax,[bp-6h]
	mov	dx,[bp-4h]
	add	ax,8h
	push	dx
	push	ax
	call	far 2017h:02ECh
	add	sp,0Ah
	inc	word ptr [bp-14h]
	inc	word ptr [bp-2h]
	mov	si,[bp-14h]
	shl	si,1h
	les	bx,[bp-12h]
	mov	bx,es:[bx+si+2h]
	mov	si,[bp-12h]
	mov	ax,es:[bx+si]
	mov	dx,es:[bx+si+2h]
	mov	si,[bp-2h]
	shl	si,1h
	les	bx,[bp-6h]
	mov	bx,es:[bx+si+2h]
	mov	si,[bp-6h]
	mov	es:[bx+si],ax
	mov	es:[bx+si+2h],dx

l2EB3_1C23:
	les	bx,[bp+6h]
	mov	ax,[bp-2h]
	cmp	es:[bx+2Ah],ax
	jbe	1C32h

l2EB3_1C2F:
	jmp	1B80h

l2EB3_1C32:
	mov	ax,es:[bx+2Ah]
	les	bx,[bp-6h]
	mov	es:[bx],ax
	les	bx,[bp+6h]
	mov	ax,es:[bx+18h]
	mov	dx,es:[bx+1Ah]
	les	bx,[bp-12h]
	mov	bx,es:[bx+2h]
	mov	di,[bp-12h]
	mov	es:[bx+di],ax
	mov	es:[bx+di+2h],dx
	les	bx,[bp+6h]
	mov	ax,[bp-18h]
	mov	dx,[bp-16h]
	mov	es:[bx+18h],ax
	mov	es:[bx+1Ah],dx
	mov	si,es:[bx]
	push	word ptr [bp-0Ah]
	push	word ptr [bp-0Ch]
	push	si
	call	far 2E37h:06C4h
	add	sp,6h
	push	word ptr [bp-16h]
	push	word ptr [bp-18h]
	push	si
	call	far 2E37h:06C4h
	add	sp,6h
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	17FEh
	jmp	1FC3h
2EB3:1C97                      90                                .        

l2EB3_1C98:
	mov	ax,[bp-14h]
	shr	ax,1h
	mov	[bp-8h],ax
	cmp	[bp-2h],ax
	jbe	1CA8h

l2EB3_1CA5:
	jmp	1E1Eh

l2EB3_1CA8:
	mov	word ptr [bp-14h],0h
	jmp	1D53h

l2EB3_1CB0:
	mov	si,[bp-14h]
	shl	si,1h
	les	bx,[bp-12h]
	mov	ax,es:[bx+si+2h]
	add	ax,bx
	mov	dx,es
	mov	[bp-26h],ax
	mov	[bp-24h],dx
	mov	ax,[bp-2h]
	shl	ax,1h
	add	ax,[bp-6h]
	mov	dx,[bp-4h]
	add	ax,2h
	mov	[bp-22h],ax
	mov	[bp-20h],dx
	les	bx,[bp-26h]
	mov	ax,es:[bx+4h]
	mov	dx,es:[bx+6h]
	les	bx,[bp-22h]
	mov	si,es:[bx]
	les	bx,[bp-6h]
	mov	es:[bx+si+4h],ax
	mov	es:[bx+si+6h],dx
	les	bx,[bp+6h]
	push	word ptr es:[bx+26h]
	mov	ax,[bp-26h]
	mov	dx,[bp-24h]
	add	ax,8h
	push	dx
	push	ax
	les	bx,[bp-22h]
	mov	ax,es:[bx]
	add	ax,[bp-6h]
	mov	dx,[bp-4h]
	add	ax,8h
	push	dx
	push	ax
	call	far 2017h:02ECh
	add	sp,0Ah
	inc	word ptr [bp-14h]
	inc	word ptr [bp-2h]
	mov	si,[bp-14h]
	shl	si,1h
	les	bx,[bp-12h]
	mov	bx,es:[bx+si+2h]
	mov	si,[bp-12h]
	mov	ax,es:[bx+si]
	mov	dx,es:[bx+si+2h]
	mov	si,[bp-2h]
	shl	si,1h
	les	bx,[bp-6h]
	mov	bx,es:[bx+si+2h]
	mov	si,[bp-6h]
	mov	es:[bx+si],ax
	mov	es:[bx+si+2h],dx

l2EB3_1D53:
	mov	ax,[bp-8h]
	cmp	[bp-2h],ax
	jnc	1D5Eh

l2EB3_1D5B:
	jmp	1CB0h

l2EB3_1D5E:
	les	bx,[bp-6h]
	mov	ax,[bp-2h]
	mov	es:[bx],ax
	mov	si,[bp-14h]
	shl	si,1h
	les	bx,[bp-12h]
	mov	ax,es:[bx+si+2h]
	add	ax,bx
	mov	dx,es
	mov	[bp-26h],ax
	mov	[bp-24h],dx
	les	bx,[bp-26h]
	mov	ax,es:[bx+4h]
	mov	dx,es:[bx+6h]
	mov	[14A6h],ax
	mov	[14A8h],dx
	les	bx,[bp+6h]
	push	word ptr es:[bx+26h]
	mov	ax,[bp-26h]
	mov	dx,[bp-24h]
	add	ax,8h
	push	dx
	push	ax
	mov	ax,14AAh
	push	ds
	push	ax
	call	far 2017h:02ECh
	add	sp,0Ah
	inc	word ptr [bp-14h]
	les	bx,[bp-12h]
	mov	ax,es:[bx]
	mov	[bp-8h],ax
	mov	word ptr [bp-2h],0h
	jmp	1E0Bh
2EB3:1DC1    90                                            .              

l2EB3_1DC2:
	mov	ax,[bp-2h]
	shl	ax,1h
	add	ax,[bp-12h]
	mov	dx,[bp-10h]
	add	ax,2h
	mov	[bp-26h],ax
	mov	[bp-24h],dx
	les	bx,[bp-26h]
	mov	ax,es:[bx]
	mov	[bp-1Ah],ax
	mov	ax,[bp-14h]
	shl	ax,1h
	add	ax,[bp-12h]
	add	ax,2h
	mov	[bp-22h],ax
	mov	[bp-20h],dx
	les	bx,[bp-22h]
	mov	ax,es:[bx]
	les	bx,[bp-26h]
	mov	es:[bx],ax
	les	bx,[bp-22h]
	mov	ax,[bp-1Ah]
	mov	es:[bx],ax
	inc	word ptr [bp-2h]
	inc	word ptr [bp-14h]

l2EB3_1E0B:
	mov	ax,[bp-8h]
	cmp	[bp-14h],ax
	jbe	1DC2h

l2EB3_1E13:
	les	bx,[bp-12h]
	mov	ax,[bp-2h]
	dec	ax
	jmp	1F85h
2EB3:1E1D                                        90                    .  

l2EB3_1E1E:
	les	bx,[bp-12h]
	mov	ax,es:[bx]
	mov	[bp-14h],ax
	inc	word ptr [bp-8h]
	jmp	1EFBh
2EB3:1E2D                                        90                    .  

l2EB3_1E2E:
	mov	si,[bp-14h]
	shl	si,1h
	les	bx,[bp-12h]
	mov	ax,es:[bx+si+4h]
	mov	[bp-1Ah],ax
	mov	ax,[bp-14h]
	inc	ax
	mov	[bp-0Eh],ax
	jmp	1E64h

l2EB3_1E46:
	mov	ax,[bp-0Eh]
	shl	ax,1h
	add	ax,[bp-12h]
	mov	dx,[bp-10h]
	mov	[bp-26h],ax
	mov	[bp-24h],dx
	les	bx,[bp-26h]
	mov	ax,es:[bx]
	mov	es:[bx+2h],ax
	dec	word ptr [bp-0Eh]

l2EB3_1E64:
	cmp	word ptr [bp-0Eh],0h
	jnz	1E46h

l2EB3_1E6A:
	les	bx,[bp-12h]
	mov	ax,[bp-1Ah]
	mov	es:[bx+2h],ax
	mov	si,[bp-2h]
	shl	si,1h
	les	bx,[bp-6h]
	mov	bx,es:[bx+si+2h]
	mov	si,[bp-6h]
	mov	ax,es:[bx+si]
	mov	dx,es:[bx+si+2h]
	les	bx,[bp-12h]
	mov	bx,es:[bx+4h]
	mov	si,[bp-12h]
	mov	es:[bx+si],ax
	mov	es:[bx+si+2h],dx
	dec	word ptr [bp-2h]
	mov	si,[bp-2h]
	shl	si,1h
	les	bx,[bp-6h]
	mov	ax,es:[bx+si+2h]
	add	ax,bx
	mov	dx,es
	mov	[bp-26h],ax
	mov	[bp-24h],dx
	les	bx,[bp-26h]
	mov	ax,es:[bx+4h]
	mov	dx,es:[bx+6h]
	les	bx,[bp-12h]
	mov	si,es:[bx+2h]
	mov	es:[bx+si+4h],ax
	mov	es:[bx+si+6h],dx
	les	bx,[bp+6h]
	push	word ptr es:[bx+26h]
	mov	ax,[bp-26h]
	mov	dx,[bp-24h]
	add	ax,8h
	push	dx
	push	ax
	les	bx,[bp-12h]
	mov	ax,es:[bx+2h]
	add	ax,bx
	mov	dx,es
	add	ax,8h
	push	dx
	push	ax
	call	far 2017h:02ECh
	add	sp,0Ah
	inc	word ptr [bp-14h]

l2EB3_1EFB:
	mov	ax,[bp-8h]
	cmp	[bp-2h],ax
	jbe	1F06h

l2EB3_1F03:
	jmp	1E2Eh

l2EB3_1F06:
	mov	si,[bp-2h]
	shl	si,1h
	les	bx,[bp-6h]
	mov	bx,es:[bx+si+2h]
	mov	si,[bp-6h]
	mov	ax,es:[bx+si]
	mov	dx,es:[bx+si+2h]
	les	bx,[bp-12h]
	mov	bx,es:[bx+2h]
	mov	si,[bp-12h]
	mov	es:[bx+si],ax
	mov	es:[bx+si+2h],dx
	mov	bx,si
	mov	ax,[bp-14h]
	mov	es:[bx],ax
	dec	word ptr [bp-2h]
	mov	si,[bp-2h]
	shl	si,1h
	les	bx,[bp-6h]
	mov	ax,es:[bx+si+2h]
	add	ax,bx
	mov	dx,es
	mov	[bp-26h],ax
	mov	[bp-24h],dx
	les	bx,[bp-26h]
	mov	ax,es:[bx+4h]
	mov	dx,es:[bx+6h]
	mov	[14A6h],ax
	mov	[14A8h],dx
	les	bx,[bp+6h]
	push	word ptr es:[bx+26h]
	mov	ax,[bp-26h]
	mov	dx,[bp-24h]
	add	ax,8h
	push	dx
	push	ax
	mov	ax,14AAh
	push	ds
	push	ax
	call	far 2017h:02ECh
	add	sp,0Ah
	les	bx,[bp-6h]
	mov	ax,[bp-2h]

l2EB3_1F85:
	mov	es:[bx],ax
	mov	ax,[bp-18h]
	mov	dx,[bp-16h]
	mov	[14A2h],ax
	mov	[14A4h],dx
	les	bx,[bp+6h]
	mov	si,es:[bx]
	push	word ptr [bp-0Ah]
	push	word ptr [bp-0Ch]
	push	si
	call	far 2E37h:06C4h
	add	sp,6h
	push	word ptr [bp-16h]
	push	word ptr [bp-18h]
	push	si
	call	far 2E37h:06C4h
	add	sp,6h
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	1206h

l2EB3_1FC3:
	add	sp,4h

l2EB3_1FC6:
	pop	si
	pop	di
	mov	sp,bp
	pop	bp
	retf

;; fn2EB3_1FCC: 2EB3:1FCC
;;   Called from:
;;     2644:28B9 (in fn2644_27D4)
;;     2644:296F (in fn2644_27D4)
;;     2644:29F2 (in fn2644_27D4)
;;     2644:2A79 (in fn2644_27D4)
;;     2644:2C6E (in fn2644_2C1A)
;;     2644:2D44 (in fn2644_2CF0)
;;     2EB3:083D (in fn2EB3_07B2)
;;     2EB3:2020 (in fn2EB3_2008)
fn2EB3_1FCC proc
	push	bp
	mov	bp,sp
	les	bx,[bp+6h]
	mov	word ptr es:[bx+2Eh],0h
	mov	ax,[bp+0Eh]
	cmp	es:[bx+26h],ax
	jnc	1FE8h

l2EB3_1FE1:
	mov	ax,es:[bx+26h]
	mov	[bp+0Eh],ax

l2EB3_1FE8:
	push	word ptr es:[bx+16h]
	push	word ptr es:[bx+14h]
	push	word ptr [bp+10h]
	push	word ptr [bp+0Eh]
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	push	es
	push	bx
	push	cs
	call	0BF0h
	add	sp,10h
	pop	bp
	retf
2EB3:2007                      90                                .        

;; fn2EB3_2008: 2EB3:2008
;;   Called from:
;;     2EB3:2477 (in fn2EB3_2450)
;;     2EB3:249C (in fn2EB3_2450)
;;     2EB3:253A (in fn2EB3_24C6)
fn2EB3_2008 proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	sub	ax,ax
	push	ax
	push	word ptr [bp+0Eh]
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	1FCCh
	add	sp,0Ch

l2EB3_2027:
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	or	ax,dx
	jz	2058h

l2EB3_2031:
	mov	ax,[bp+10h]
	mov	dx,[bp+12h]
	cmp	[bp-4h],ax
	jnz	2041h

l2EB3_203C:
	cmp	[bp-2h],dx
	jz	2058h

l2EB3_2041:
	mov	ax,1h
	push	ax
	sub	ax,ax
	push	ax
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	1526h
	add	sp,8h
	jmp	2027h
2EB3:2057                      90                                .        

l2EB3_2058:
	mov	ax,[bp-4h]
	mov	dx,[bp-2h]
	mov	sp,bp
	pop	bp
	retf

;; fn2EB3_2062: 2EB3:2062
;;   Called from:
;;     2644:2466 (in fn2644_2384)
;;     2644:2899 (in fn2644_27D4)
;;     2644:2A20 (in fn2644_27D4)
fn2EB3_2062 proc
	push	bp
	mov	bp,sp
	sub	sp,6h
	cmp	word ptr [bp+0Ah],1h
	jnz	2090h

l2EB3_206E:
	cmp	word ptr [bp+0Ch],0h
	jnz	2090h

l2EB3_2074:
	mov	ax,1h
	push	ax
	sub	ax,ax
	push	ax
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	1526h
	add	sp,8h
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	jmp	20F4h

l2EB3_2090:
	cmp	word ptr [bp+0Ch],0h
	jge	20B0h

l2EB3_2096:
	mov	ax,[bp+0Ah]
	mov	dx,[bp+0Ch]
	neg	ax
	adc	dx,0h
	neg	dx
	mov	[bp+0Ah],ax
	mov	[bp+0Ch],dx
	mov	word ptr [bp-6h],0FFFFh
	jmp	20B5h

l2EB3_20B0:
	mov	word ptr [bp-6h],1h

l2EB3_20B5:
	mov	ax,[bp+0Ah]
	or	ax,[bp+0Ch]
	jz	20ECh

l2EB3_20BD:
	push	word ptr [bp-6h]
	sub	ax,ax
	push	ax
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	1526h
	add	sp,8h
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	sub	word ptr [bp+0Ah],1h
	sbb	word ptr [bp+0Ch],0h
	or	ax,dx
	jz	20F4h

l2EB3_20E2:
	mov	ax,[bp+0Ah]
	or	ax,[bp+0Ch]
	jnz	20BDh

l2EB3_20EA:
	jmp	20F4h

l2EB3_20EC:
	sub	ax,ax
	mov	[bp-2h],ax
	mov	[bp-4h],ax

l2EB3_20F4:
	mov	ax,[bp-4h]
	mov	dx,[bp-2h]
	mov	sp,bp
	pop	bp
	retf

;; fn2EB3_20FE: 2EB3:20FE
;;   Called from:
;;     2EB3:254B (in fn2EB3_24C6)
fn2EB3_20FE proc
	push	bp
	mov	bp,sp
	sub	sp,1Ch
	push	di
	push	si
	les	bx,[bp+6h]
	mov	ax,es:[bx+2Eh]
	mov	cl,3h
	shl	ax,cl
	add	ax,bx
	mov	dx,es
	mov	[bp-18h],ax
	mov	[bp-16h],dx
	les	bx,[bp-18h]
	mov	ax,es:[bx+30h]
	mov	dx,es:[bx+32h]
	mov	[bp-10h],ax
	mov	[bp-0Eh],dx
	mov	ax,es:[bx+34h]
	mov	[bp-2h],ax
	push	dx
	push	word ptr [bp-10h]
	les	bx,[bp+6h]
	push	word ptr es:[bx]
	call	far 2E37h:04CEh
	add	sp,6h
	mov	[bp-0Ah],ax
	mov	[bp-8h],dx
	mov	si,[bp-2h]
	shl	si,1h
	les	bx,[bp-0Ah]
	mov	ax,es:[bx+si+2h]
	add	ax,bx
	mov	[bp-14h],ax
	mov	[bp-12h],dx
	les	bx,[bp-14h]
	mov	ax,es:[bx]
	or	ax,es:[bx+2h]
	jnz	216Eh

l2EB3_216B:
	jmp	229Eh

l2EB3_216E:
	push	word ptr es:[bx+2h]
	push	word ptr es:[bx]
	mov	ax,3h
	push	ax
	sub	ax,ax
	push	ax
	push	ax
	push	ax
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	0BF0h
	add	sp,10h
	les	bx,[bp+6h]
	mov	ax,es:[bx+2Eh]
	mov	cl,3h
	shl	ax,cl
	add	ax,bx
	mov	dx,es
	mov	[bp-1Ch],ax
	mov	[bp-1Ah],dx
	mov	di,es:[bx]
	les	bx,[bp-1Ch]
	push	word ptr es:[bx+32h]
	push	word ptr es:[bx+30h]
	push	di
	call	far 2E37h:04CEh
	add	sp,6h
	mov	[bp-0Ah],ax
	mov	[bp-8h],dx
	les	bx,[bp-1Ch]
	mov	bx,es:[bx+34h]
	shl	bx,1h
	add	bx,ax
	mov	es,dx
	mov	ax,es:[bx+2h]
	add	ax,[bp-0Ah]
	mov	[bp-14h],ax
	mov	[bp-12h],dx
	les	bx,[bp-14h]
	mov	ax,es:[bx+4h]
	mov	dx,es:[bx+6h]
	mov	[14A6h],ax
	mov	[14A8h],dx
	les	bx,[bp+6h]
	push	word ptr es:[bx+26h]
	mov	ax,[bp-14h]
	mov	dx,[bp-12h]
	add	ax,8h
	push	dx
	push	ax
	mov	ax,14AAh
	push	ds
	push	ax
	call	far 2017h:02ECh
	add	sp,0Ah
	push	word ptr [bp-0Eh]
	push	word ptr [bp-10h]
	push	di
	call	far 2E37h:05C0h
	add	sp,6h
	mov	[bp-0Ah],ax
	mov	[bp-8h],dx
	les	bx,[bp-0Ah]
	mov	ax,es:[bx+si+2h]
	add	ax,bx
	mov	[bp-14h],ax
	mov	[bp-12h],dx
	les	bx,[bp-14h]
	mov	ax,[14A6h]
	mov	dx,[14A8h]
	mov	es:[bx+4h],ax
	mov	es:[bx+6h],dx
	les	bx,[bp+6h]
	push	word ptr es:[bx+26h]
	mov	ax,14AAh
	push	ds
	push	ax
	mov	ax,[bp-14h]
	mov	dx,[bp-12h]
	add	ax,8h
	push	dx
	push	ax
	call	far 2017h:02ECh
	add	sp,0Ah
	les	bx,[bp-1Ch]
	mov	ax,es:[bx+30h]
	mov	dx,es:[bx+32h]
	mov	[bp-10h],ax
	mov	[bp-0Eh],dx
	mov	ax,es:[bx+34h]
	mov	[bp-2h],ax
	push	dx
	push	word ptr [bp-10h]
	push	di
	call	far 2E37h:04CEh
	add	sp,6h
	mov	[bp-0Ah],ax
	mov	[bp-8h],dx
	mov	bx,[bp-2h]
	shl	bx,1h
	add	bx,ax
	mov	es,dx
	mov	ax,es:[bx+2h]
	add	ax,[bp-0Ah]
	mov	[bp-14h],ax
	mov	[bp-12h],dx

l2EB3_229E:
	les	bx,[bp-0Ah]
	mov	ax,es:[bx]
	mov	[bp-6h],ax
	mov	si,[bp-2h]
	shl	si,1h
	mov	ax,es:[bx+si+2h]
	mov	[bp-0Ch],ax
	mov	ax,[bp-2h]
	mov	[bp-4h],ax
	jmp	22DBh
2EB3:22BB                                  90                        .    

l2EB3_22BC:
	mov	ax,[bp-4h]
	shl	ax,1h
	add	ax,[bp-0Ah]
	mov	dx,[bp-8h]
	mov	[bp-1Ch],ax
	mov	[bp-1Ah],dx
	les	bx,[bp-1Ch]
	mov	ax,es:[bx+4h]
	mov	es:[bx+2h],ax
	inc	word ptr [bp-4h]

l2EB3_22DB:
	mov	ax,[bp-6h]
	cmp	[bp-4h],ax
	jl	22BCh

l2EB3_22E3:
	mov	di,ax
	shl	di,1h
	les	bx,[bp-0Ah]
	mov	ax,[bp-0Ch]
	mov	es:[bx+di+2h],ax
	dec	word ptr es:[bx]
	mov	si,es:[bx]
	les	bx,[bp+6h]
	mov	di,es:[bx+2Eh]
	mov	cl,3h
	shl	di,cl
	mov	es:[bx+di+36h],si
	mov	di,es:[bx+2Eh]
	shl	di,cl
	mov	es:[bx+di+34h],si
	push	word ptr [bp-0Eh]
	push	word ptr [bp-10h]
	push	word ptr es:[bx]
	call	far 2E37h:06C4h
	add	sp,6h
	les	bx,[bp+6h]
	cmp	es:[bx+2Ch],si
	jbe	233Ah

l2EB3_232A:
	cmp	word ptr es:[bx+2Eh],1h
	jbe	233Ah

l2EB3_2331:
	push	es
	push	bx
	push	cs
	call	17FEh
	add	sp,4h

l2EB3_233A:
	pop	si
	pop	di
	mov	sp,bp
	pop	bp
	retf

;; fn2EB3_2340: 2EB3:2340
;;   Called from:
;;     2EB3:2413 (in fn2EB3_240A)
;;     2EB3:24E5 (in fn2EB3_24C6)
fn2EB3_2340 proc
	push	bp
	mov	bp,sp
	sub	sp,2h
	push	si
	les	bx,[bp+6h]
	mov	ax,[12FCh]
	cmp	es:[bx+20h],ax
	jnz	2366h

l2EB3_2353:
	mov	ax,2h
	push	ax
	push	word ptr es:[bx+0Ah]
	call	far 31FFh:1BE6h
	add	sp,4h
	jmp	23C5h
2EB3:2365                90                                    .          

l2EB3_2366:
	mov	ax,[12FCh]
	mov	[bp-2h],ax
	les	bx,[bp+6h]
	mov	ax,es:[bx+20h]
	mov	[12FCh],ax
	mov	bx,es:[bx+20h]
	shl	bx,1h
	shl	bx,1h
	les	si,[130Ah]
	mov	ax,es:[bx+si]
	mov	dx,es:[bx+si+2h]
	mov	bx,si
	mov	es:[bx],ax
	mov	es:[bx+2h],dx
	mov	ax,2h
	push	ax
	les	bx,[bp+6h]
	push	word ptr es:[bx+0Ah]
	call	far 31FFh:1BE6h
	add	sp,4h
	mov	ax,[bp-2h]
	mov	[12FCh],ax
	mov	bx,ax
	shl	bx,1h
	shl	bx,1h
	les	si,[130Ah]
	mov	ax,es:[bx+si]
	mov	dx,es:[bx+si+2h]
	mov	bx,si
	mov	es:[bx],ax
	mov	es:[bx+2h],dx

l2EB3_23C5:
	les	bx,[1296h]
	test	word ptr es:[bx],100h
	jnz	2405h

l2EB3_23D0:
	push	es
	push	bx
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	060Ch
	add	sp,8h
	or	ax,ax
	jnz	2405h

l2EB3_23E3:
	mov	ax,16h
	push	ax
	call	far 20B2h:0176h
	add	sp,2h
	call	far 2368h:033Ch
	sub	ax,ax
	push	ax
	push	ax
	mov	ax,5EDAh
	push	ds
	push	ax
	call	far 2368h:0272h
	add	sp,8h

l2EB3_2405:
	pop	si
	mov	sp,bp
	pop	bp
	retf

;; fn2EB3_240A: 2EB3:240A
;;   Called from:
;;     2644:1FA9 (in fn2644_1F12)
;;     2EB3:08C6 (in fn2EB3_07B2)
;;     2EB3:2459 (in fn2EB3_2450)
fn2EB3_240A proc
	push	bp
	mov	bp,sp
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	2340h
	add	sp,4h
	les	bx,[1296h]
	push	word ptr es:[bx+2h]
	les	bx,[bp+6h]
	push	word ptr es:[bx+10h]
	les	bx,[1296h]
	push	word ptr es:[bx+0Ah]
	push	word ptr es:[bx+8h]
	les	bx,[bp+6h]
	push	word ptr es:[bx+0Eh]
	push	word ptr es:[bx+0Ch]
	call	far 2017h:0308h
	add	sp,0Ch
	call	far 2368h:033Ch
	pop	bp
	retf
2EB3:244F                                              90                .

;; fn2EB3_2450: 2EB3:2450
;;   Called from:
;;     2644:2045 (in fn2644_1F12)
fn2EB3_2450 proc
	push	bp
	mov	bp,sp
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	240Ah
	add	sp,4h
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	les	bx,[bp+6h]
	push	word ptr es:[bx+26h]
	push	word ptr es:[bx+0Eh]
	push	word ptr es:[bx+0Ch]
	push	es
	push	bx
	push	cs
	call	2008h
	add	sp,0Eh
	cmp	ax,[bp+0Ah]
	jnz	2488h

l2EB3_2483:
	cmp	dx,[bp+0Ch]
	jz	24C3h

l2EB3_2488:
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	sub	ax,ax
	push	ax
	mov	ax,5EDCh
	push	ds
	push	ax
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	2008h
	add	sp,0Eh
	cmp	ax,[bp+0Ah]
	jnz	24ADh

l2EB3_24A8:
	cmp	dx,[bp+0Ch]
	jz	24C3h

l2EB3_24AD:
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+6h],0h
	jnz	24BDh

l2EB3_24B7:
	mov	word ptr [10D2h],18h

l2EB3_24BD:
	mov	word ptr es:[bx+2Eh],0h

l2EB3_24C3:
	pop	bp
	retf
2EB3:24C5                90                                    .          

;; fn2EB3_24C6: 2EB3:24C6
;;   Called from:
;;     2644:1F45 (in fn2644_1F12)
fn2EB3_24C6 proc
	push	bp
	mov	bp,sp
	sub	sp,2h
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+2h],0h
	jz	24DFh

l2EB3_24D6:
	push	es
	push	bx
	push	cs
	call	0B54h
	add	sp,4h

l2EB3_24DF:
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	2340h
	add	sp,4h
	cmp	word ptr [bp+0Eh],0h
	jnz	2564h

l2EB3_24F2:
	les	bx,[bp+6h]
	push	word ptr es:[bx+26h]
	push	word ptr es:[bx+0Eh]
	push	word ptr es:[bx+0Ch]
	les	bx,[1296h]
	push	word ptr es:[bx+0Ah]
	push	word ptr es:[bx+8h]
	call	far 38ADh:00F2h
	add	sp,0Ah
	mov	[bp-2h],ax
	or	ax,ax
	jz	2564h

l2EB3_251C:
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+2Eh],0h
	jnz	2545h

l2EB3_2526:
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	push	word ptr es:[bx+26h]
	push	word ptr es:[bx+0Eh]
	push	word ptr es:[bx+0Ch]
	push	es
	push	bx
	push	cs
	call	2008h
	add	sp,0Eh
	or	dx,ax
	jz	2554h

l2EB3_2545:
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	20FEh
	add	sp,4h
	jmp	2564h

l2EB3_2554:
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+6h],0h
	jnz	2564h

l2EB3_255E:
	mov	word ptr [10D2h],18h

l2EB3_2564:
	cmp	word ptr [bp+0Eh],0h
	jnz	2573h

l2EB3_256A:
	cmp	word ptr [bp-2h],0h
	jnz	2573h

l2EB3_2570:
	jmp	2647h

l2EB3_2573:
	les	bx,[1296h]
	push	word ptr es:[bx+2h]
	les	bx,[bp+6h]
	push	word ptr es:[bx+26h]
	les	bx,[1296h]
	push	word ptr es:[bx+0Ah]
	push	word ptr es:[bx+8h]
	mov	ax,14AAh
	push	ds
	push	ax
	call	far 2017h:0308h
	add	sp,0Ch
	sub	ax,ax
	mov	[14A4h],ax
	mov	[14A2h],ax
	mov	ax,[bp+0Ah]
	mov	dx,[bp+0Ch]
	mov	[14A6h],ax
	mov	[14A8h],dx
	les	bx,[bp+6h]
	mov	word ptr es:[bx+2Eh],0h
	cmp	word ptr es:[bx+6h],0h
	jz	25FEh

l2EB3_25C0:
	push	word ptr es:[bx+16h]
	push	word ptr es:[bx+14h]
	sub	ax,ax
	push	ax
	push	word ptr es:[bx+26h]
	mov	ax,14AAh
	push	ds
	push	ax
	push	es
	push	bx
	push	cs
	call	0BF0h
	add	sp,10h
	or	dx,ax
	jnz	2638h

l2EB3_25E1:
	cmp	word ptr [1484h],0h
	jnz	25F8h

l2EB3_25E8:
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	1206h
	add	sp,4h
	jmp	2638h
2EB3:25F7                      90                                .        

l2EB3_25F8:
	mov	ax,12h
	jmp	2629h
2EB3:25FD                                        90                    .  

l2EB3_25FE:
	les	bx,[bp+6h]
	push	word ptr es:[bx+16h]
	push	word ptr es:[bx+14h]
	mov	ax,2h
	push	ax
	push	word ptr es:[bx+26h]
	mov	ax,14AAh
	push	ds
	push	ax
	push	es
	push	bx
	push	cs
	call	0BF0h
	add	sp,10h
	cmp	word ptr [1484h],0h
	jz	25E8h

l2EB3_2626:
	mov	ax,13h

l2EB3_2629:
	push	ax
	call	far 20B2h:0176h
	add	sp,2h
	mov	word ptr [1484h],0h

l2EB3_2638:
	les	bx,[bp+6h]
	mov	word ptr es:[bx+2Eh],0h
	mov	word ptr es:[bx+4h],1h

l2EB3_2647:
	call	far 2368h:033Ch
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+2h],0h
	jz	2668h

l2EB3_2656:
	push	es
	push	bx
	push	cs
	call	0BB4h
	add	sp,4h
	les	bx,[bp+6h]
