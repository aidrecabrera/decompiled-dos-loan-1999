;;; Segment 2368 (2368:0000)
2368:0000 5D CB                                           ].              

;; fn2368_0002: 2368:0002
;;   Called from:
;;     21DC:10B4 (in fn21DC_0EC2)
fn2368_0002 proc
	mov	ax,800h
	push	ax
	mov	ax,1292h
	push	ds
	push	ax
	call	far 21DCh:06DCh
	add	sp,6h
	or	ax,ax
	jz	0040h

l2368_0017:
	mov	ax,800h
	push	ax
	sub	ax,ax
	push	ax
	push	word ptr [1294h]
	push	word ptr [1292h]
	call	far 2017h:0228h
	add	sp,8h
	mov	ax,[1292h]
	mov	dx,[1294h]
	mov	[1296h],ax
	mov	[1298h],dx
	mov	ax,1h
	retf

l2368_0040:
	sub	ax,ax
	retf
2368:0043          90 55 8B EC 83 EC 04 57 56 C7 06 DA 12    .U.....WV....
2368:0050 00 01 8B 46 06 A3 DC 12 8B F0 46 56 9A 18 07 DC ...F......FV....
2368:0060 21 83 C4 02 89 46 FC 89 56 FE 8B 5E 06 C4 7E FC !....F..V..^..~.
2368:0070 26 C6 01 00 A3 E2 12 89 16 E4 12 89 36 E6 12 5E &...........6..^
2368:0080 5F 8B E5 5D CB 90 56 A1 9C 12 40 50 B8 A2 12 1E _..]..V...@P....
2368:0090 50 9A 96 06 DC 21 83 C4 06 0B C0 74 17 8B 1E 9C P....!.....t....
2368:00A0 12 C4 36 A2 12 26 C6 00 00 8B C3 40 A3 A6 12 B8 ..6..&.....@....
2368:00B0 01 00 5E CB C7 06 D2 10 04 00 B8 22 5E A3 A2 12 ..^........"^...
2368:00C0 8C 1E A4 12 C7 06 A6 12 00 00 C7 06 9C 12 00 00 ................
2368:00D0 2B C0 5E CB                                     +.^.            

;; fn2368_00D4: 2368:00D4
;;   Called from:
;;     1825:493C (in fn1825_48D2)
;;     1825:49D4 (in fn1825_496A)
fn2368_00D4 proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	push	di
	push	si
	les	bx,[bp+6h]
	mov	word ptr es:[bx],100h
	mov	ax,[bp+0Ah]
	mov	es:[bx+2h],ax
	mov	si,ax
	inc	si
	push	si
	call	far 21DCh:0718h
	add	sp,2h
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	mov	bx,[bp+0Ah]
	les	di,[bp-4h]
	mov	byte ptr es:[bx+di],0h
	les	bx,[bp+6h]
	mov	es:[bx+8h],ax
	mov	es:[bx+0Ah],dx
	mov	es:[bx+0Ch],si
	pop	si
	pop	di
	mov	sp,bp
	pop	bp
	retf
2368:011C                                     83 06 96 12             ....
2368:0120 10 B8 10 00 50 B8 DA 12 1E 50 FF 36 98 12 FF 36 ....P....P.6...6
2368:0130 96 12 9A EC 02 17 20 83 C4 0A CB 90 55 8B EC 83 ...... .....U...
2368:0140 EC 02 C4 5E 06 26 8B 07 3D 02 00 74 0B 3D 08 00 ...^.&..=..t.=..
2368:0150 74 0E 2B C0 8B E5 5D CB 26 8B 47 08 8B E5 5D CB t.+...].&.G...].
2368:0160 26 FF 77 0E 26 FF 77 0C 26 FF 77 0A 26 FF 77 08 &.w.&.w.&.w.&.w.
2368:0170 9A 22 0C EE 3C 83 C4 08 89 46 FE 8B E5 5D CB 90 ."..<....F...]..
2368:0180 55 8B EC 57 56 83 06 96 12 10 C4 1E 96 12 8B 46 U..WV..........F
2368:0190 06 26 89 07 8B 46 08 26 89 47 02 8B 46 0A 26 89 .&...F.&.G..F.&.
2368:01A0 47 04 8D 7F 08 8D 76 0C A5 A5 A5 A5 5E 5F 5D CB G.....v.....^_].

;; fn2368_01B0: 2368:01B0
;;   Called from:
;;     3CEE:3910 (in fn3CEE_388C)
fn2368_01B0 proc
	push	bp
	mov	bp,sp
	push	di
	push	si
	add	word ptr [1296h],10h
	les	bx,[1296h]
	mov	word ptr es:[bx],8h
	mov	ax,[bp+0Eh]
	mov	es:[bx+2h],ax
	mov	ax,[bp+10h]
	mov	es:[bx+4h],ax
	lea	di,[bx+8h]
	lea	si,[bp+6h]
	movsw
	movsw
	movsw
	movsw
	pop	si
	pop	di
	pop	bp
	retf
2368:01DF                                              90                .

;; fn2368_01E0: 2368:01E0
;;   Called from:
;;     20B2:053F (in fn20B2_0474)
;;     20B2:06C1 (in fn20B2_0612)
;;     20B2:080C (in fn20B2_0776)
;;     20B2:091E (in fn20B2_0898)
;;     20B2:0A2E (in fn20B2_099A)
;;     20B2:0B60 (in fn20B2_0AC6)
;;     20B2:0C9E (in fn20B2_0BDC)
;;     20B2:0FA6 (in fn20B2_0EF6)
;;     21DC:08E5 (in fn21DC_0856)
;;     3CEE:50FB (in fn3CEE_4EAC)
;;     3CEE:85A8 (in fn3CEE_858E)
;;     3CEE:85B8 (in fn3CEE_858E)
;;     3CEE:85C8 (in fn3CEE_858E)
fn2368_01E0 proc
	push	bp
	mov	bp,sp
	add	word ptr [1296h],10h
	les	bx,[1296h]
	mov	word ptr es:[bx],2h
	mov	word ptr es:[bx+2h],0Ah
	mov	ax,[bp+6h]
	mov	es:[bx+8h],ax
	mov	word ptr es:[bx+0Ah],0h
	pop	bp
	retf

;; fn2368_0206: 2368:0206
;;   Called from:
;;     3B5D:0583 (in fn3B5D_057A)
;;     3B5D:059B (in fn3B5D_0592)
;;     3CEE:510E (in fn3CEE_4EAC)
fn2368_0206 proc
	push	bp
	mov	bp,sp
	add	word ptr [1296h],10h
	les	bx,[1296h]
	mov	word ptr es:[bx],2h
	mov	word ptr es:[bx+2h],0Ah
	mov	ax,[bp+6h]
	mov	dx,[bp+8h]
	mov	es:[bx+8h],ax
	mov	es:[bx+0Ah],dx
	pop	bp
	retf
2368:022D                                        90                    .  

;; fn2368_022E: 2368:022E
;;   Called from:
;;     1825:50FD (in fn1825_4DA6)
;;     1825:6002 (in fn1825_5FCA)
;;     1825:6123 (in fn1825_6078)
;;     20B2:0533 (in fn20B2_0474)
;;     20B2:054F (in fn20B2_0474)
;;     20B2:0560 (in fn20B2_0474)
;;     20B2:06B5 (in fn20B2_0612)
;;     20B2:06D1 (in fn20B2_0612)
;;     20B2:06E2 (in fn20B2_0612)
;;     20B2:0800 (in fn20B2_0776)
;;     20B2:081C (in fn20B2_0776)
;;     20B2:082D (in fn20B2_0776)
;;     20B2:083D (in fn20B2_0776)
;;     20B2:0912 (in fn20B2_0898)
;;     20B2:092E (in fn20B2_0898)
;;     20B2:093F (in fn20B2_0898)
;;     20B2:0A22 (in fn20B2_099A)
;;     20B2:0A3E (in fn20B2_099A)
;;     20B2:0A4F (in fn20B2_099A)
;;     20B2:0A5F (in fn20B2_099A)
;;     20B2:0B54 (in fn20B2_0AC6)
;;     20B2:0B70 (in fn20B2_0AC6)
;;     20B2:0B81 (in fn20B2_0AC6)
;;     20B2:0F9A (in fn20B2_0EF6)
;;     21DC:08D9 (in fn21DC_0856)
;;     21DC:08F8 (in fn21DC_0856)
;;     21DC:112A (in main)
;;     3B5D:0515 (in fn3B5D_04C8)
;;     3CEE:38AB (in fn3CEE_388C)
;;     3CEE:39FC (in fn3CEE_388C)
;;     3CEE:3A6E (in fn3CEE_388C)
;;     3CEE:44C6 (in fn3CEE_4490)
;;     3CEE:55AA (in fn3CEE_5556)
fn2368_022E proc
	push	bp
	mov	bp,sp
	add	word ptr [1296h],10h
	les	bx,[1296h]
	mov	word ptr es:[bx],100h
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 2017h:03F5h
	add	sp,4h
	les	bx,[1296h]
	mov	es:[bx+2h],ax
	mov	word ptr es:[bx+4h],0h
	mov	ax,[bp+6h]
	mov	dx,[bp+8h]
	mov	es:[bx+8h],ax
	mov	es:[bx+0Ah],dx
	mov	ax,[bp+0Ah]
	mov	es:[bx+0Ch],ax
	pop	bp
	retf

;; fn2368_0272: 2368:0272
;;   Called from:
;;     1825:495D (in fn1825_48D2)
;;     1825:49F5 (in fn1825_496A)
;;     2EB3:23FD (in fn2EB3_2340)
;;     31FF:208E (in fn31FF_207C)
;;     3431:3ECD (in fn3431_3E9E)
;;     3CEE:938F (in fn3CEE_4EAC)
;;     3CEE:93DD (in fn3CEE_4EAC)
;;     3CEE:942A (in fn3CEE_4EAC)
fn2368_0272 proc
	push	bp
	mov	bp,sp
	add	word ptr [1296h],10h
	les	bx,[1296h]
	mov	word ptr es:[bx],100h
	mov	ax,[bp+0Ch]
	mov	es:[bx+2h],ax
	mov	word ptr es:[bx+4h],0h
	mov	ax,[bp+6h]
	mov	dx,[bp+8h]
	mov	es:[bx+8h],ax
	mov	es:[bx+0Ah],dx
	mov	ax,[bp+0Ah]
	mov	es:[bx+0Ch],ax
	pop	bp
	retf
2368:02A7                      90 55 8B EC 83 06 96 12 10        .U.......
2368:02B0 C4 1E 96 12 8B 46 06 26 89 07 8B 46 08 26 89 47 .....F.&...F.&.G
2368:02C0 02 8B 46 0A 26 89 47 04 8B 46 0C 26 89 47 08 5D ..F.&.G..F.&.G.]
2368:02D0 CB 90                                           ..              

;; fn2368_02D2: 2368:02D2
;;   Called from:
;;     3CEE:3971 (in fn3CEE_388C)
fn2368_02D2 proc
	push	bp
	mov	bp,sp
	add	word ptr [1296h],10h
	les	bx,[1296h]
	mov	word ptr es:[bx],20h
	mov	ax,[bp+6h]
	mov	dx,[bp+8h]
	mov	es:[bx+8h],ax
	mov	es:[bx+0Ah],dx
	pop	bp
	retf
2368:02F3          90                                        .            

;; fn2368_02F4: 2368:02F4
;;   Called from:
;;     3B5D:05D6 (in fn3B5D_05D0)
fn2368_02F4 proc
	push	bp
	mov	bp,sp
	add	word ptr [1296h],10h
	les	bx,[1296h]
	mov	word ptr es:[bx],80h
	mov	ax,[bp+6h]
	mov	es:[bx+8h],ax
	pop	bp
	retf

;; fn2368_030E: 2368:030E
;;   Called from:
;;     1825:4FB9 (in fn1825_4DA6)
;;     1825:511C (in fn1825_4DA6)
;;     20B2:05A8 (in fn20B2_0474)
;;     20B2:0710 (in fn20B2_0612)
;;     20B2:084B (in fn20B2_0776)
;;     20B2:094D (in fn20B2_0898)
;;     20B2:0A6D (in fn20B2_099A)
;;     20B2:0B8F (in fn20B2_0AC6)
;;     20B2:0D7D (in fn20B2_0BDC)
;;     20B2:0FB4 (in fn20B2_0EF6)
;;     21DC:0911 (in fn21DC_0856)
;;     21DC:1102 (in main)
;;     21DC:116C (in main)
;;     3CEE:38B9 (in fn3CEE_388C)
;;     3CEE:391E (in fn3CEE_388C)
;;     3CEE:397F (in fn3CEE_388C)
;;     3CEE:3A0A (in fn3CEE_388C)
;;     3CEE:3A7C (in fn3CEE_388C)
;;     3CEE:512E (in fn3CEE_4EAC)
;;     3CEE:85E8 (in fn3CEE_858E)
fn2368_030E proc
	push	bp
	mov	bp,sp
	add	word ptr [1296h],10h
	les	bx,[1296h]
	mov	word ptr es:[bx],1000h
	mov	ax,[bp+6h]
	mov	dx,[bp+8h]
	mov	es:[bx+8h],ax
	mov	es:[bx+0Ah],dx
	mov	word ptr es:[bx+0Ch],0h
	mov	word ptr es:[bx+0Eh],0h
	pop	bp
	retf
2368:033B                                  90                        .    

;; fn2368_033C: 2368:033C
;;   Called from:
;;     1825:4893 (in fn1825_4814)
;;     1825:4FA7 (in fn1825_4DA6)
;;     1825:5F5E (in fn1825_5E5C)
;;     1825:6035 (in fn1825_5FCA)
;;     1825:6140 (in fn1825_6078)
;;     20B2:05EA (in fn20B2_0474)
;;     20B2:074C (in fn20B2_0612)
;;     20B2:0883 (in fn20B2_0776)
;;     20B2:0985 (in fn20B2_0898)
;;     20B2:0AA5 (in fn20B2_099A)
;;     20B2:0BC7 (in fn20B2_0AC6)
;;     20B2:0C83 (in fn20B2_0BDC)
;;     20B2:0D44 (in fn20B2_0BDC)
;;     20B2:0FED (in fn20B2_0EF6)
;;     20B2:1271 (in fn20B2_1192)
;;     21DC:0270 (in fn21DC_01C4)
;;     21DC:0278 (in fn21DC_01C4)
;;     2644:2411 (in fn2644_2384)
;;     2644:2535 (in fn2644_24C0)
;;     2644:25F9 (in fn2644_24C0)
;;     2EB3:23EF (in fn2EB3_2340)
;;     2EB3:2448 (in fn2EB3_240A)
;;     2EB3:2647 (in fn2EB3_24C6)
;;     31FF:1D22 (in fn31FF_1CE2)
;;     31FF:20BD (in fn31FF_207C)
;;     31FF:2222 (in fn31FF_207C)
;;     3431:3EB9 (in fn3431_3E9E)
;;     3CEE:45B6 (in fn3CEE_4490)
;;     3CEE:5167 (in fn3CEE_4EAC)
;;     3CEE:560B (in fn3CEE_5556)
;;     3CEE:8621 (in fn3CEE_858E)
fn2368_033C proc
	les	bx,[1296h]
	test	word ptr es:[bx],100h
	jz	0362h

l2368_0347:
	cmp	word ptr es:[bx+0Ch],0h
	jz	0362h

l2368_034E:
	push	word ptr es:[bx+0Ch]
	push	word ptr es:[bx+0Ah]
	push	word ptr es:[bx+8h]
	call	far 21DCh:074Eh
	add	sp,6h

l2368_0362:
	sub	word ptr [1296h],10h
	retf
2368:0368                         C4 1E 96 12 26 F7 07 00         ....&...
2368:0370 01 74 1B 26 83 7F 0C 00 74 14 26 FF 77 0C 26 FF .t.&....t.&.w.&.
2368:0380 77 0A 26 FF 77 08 9A 4E 07 DC 21 83 C4 06 83 2E w.&.w..N..!.....
2368:0390 96 12 10 C4 1E 96 12 26 F7 07 00 01 74 1B 26 83 .......&....t.&.
2368:03A0 7F 0C 00 74 14 26 FF 77 0C 26 FF 77 0A 26 FF 77 ...t.&.w.&.w.&.w
2368:03B0 08 9A 4E 07 DC 21 83 C4 06 83 2E 96 12 10 CB 90 ..N..!..........
2368:03C0 C7 06 9A 12 00 01 C7 06 9C 12 00 00 B8 24 5E A3 .............$^.
2368:03D0 A2 12 8C 1E A4 12 C7 06 A6 12 00 00 CB 90 C7 06 ................
2368:03E0 9A 12 02 00 C7 06 9C 12 0A 00 2B C0 A3 A4 12 A3 ..........+.....
2368:03F0 A2 12 CB 90 C7 06 9A 12 02 00 C7 06 9C 12 0A 00 ................
2368:0400 C7 06 A2 12 01 00 C7 06 A4 12 00 00 CB 90 C7 06 ................
2368:0410 9A 12 80 00 C7 06 A2 12 01 00 CB 90 C7 06 9A 12 ................
2368:0420 80 00 C7 06 A2 12 00 00 CB 90                   ..........      

;; fn2368_042A: 2368:042A
;;   Called from:
;;     21DC:02A1 (in fn21DC_01C4)
;;     2368:05B9 (in fn2368_059E)
fn2368_042A proc
	push	bp
	mov	bp,sp
	sub	sp,0Ah
	les	bx,[bp+6h]
	cmp	word ptr es:[bx],100h
	jnz	0458h

l2368_043A:
	cmp	word ptr es:[bx+0Ah],0h
	jnz	0444h

l2368_0441:
	jmp	04E8h

l2368_0444:
	push	word ptr es:[bx+0Ah]
	push	word ptr es:[bx+8h]
	push	word ptr es:[bx+6h]
	call	far 21DCh:074Eh
	jmp	04E5h

l2368_0458:
	les	bx,[bp+6h]
	cmp	word ptr es:[bx],2000h
	jz	0465h

l2368_0462:
	jmp	04E8h

l2368_0465:
	mov	ax,es:[bx+6h]
	mov	dx,es:[bx+8h]
	mov	[bp-6h],ax
	mov	[bp-4h],dx
	mov	word ptr [bp-2h],0h
	jmp	04BDh

l2368_047A:
	mov	ax,[bp-2h]
	mov	cx,ax
	shl	ax,1h
	add	ax,cx
	shl	ax,1h
	add	ax,cx
	shl	ax,1h
	add	ax,[bp-6h]
	mov	dx,[bp-4h]
	mov	[bp-0Ah],ax
	mov	[bp-8h],dx
	les	bx,[bp-0Ah]
	cmp	word ptr es:[bx],100h
	jnz	04BAh

l2368_049F:
	cmp	word ptr es:[bx+0Ah],0h
	jz	04BAh

l2368_04A6:
	push	word ptr es:[bx+0Ah]
	push	word ptr es:[bx+8h]
	push	word ptr es:[bx+6h]
	call	far 21DCh:0702h
	add	sp,6h

l2368_04BA:
	inc	word ptr [bp-2h]

l2368_04BD:
	les	bx,[bp+6h]
	mov	ax,[bp-2h]
	cmp	es:[bx+2h],ax
	ja	047Ah

l2368_04C9:
	mov	ax,es:[bx+2h]
	mov	cx,ax
	shl	ax,1h
	add	ax,cx
	shl	ax,1h
	add	ax,cx
	shl	ax,1h
	push	ax
	push	word ptr [bp-4h]
	push	word ptr [bp-6h]
	call	far 21DCh:0702h

l2368_04E5:
	add	sp,6h

l2368_04E8:
	les	bx,[bp+6h]
	mov	word ptr es:[bx],0h
	mov	sp,bp
	pop	bp
	retf

;; fn2368_04F4: 2368:04F4
;;   Called from:
;;     1825:4F24 (in fn1825_4DA6)
;;     1825:5ED6 (in fn1825_5E5C)
fn2368_04F4 proc
	push	bp
	mov	bp,sp
	sub	sp,6h
	push	di
	push	si
	add	word ptr [1296h],10h
	les	bx,[bp+6h]
	mov	si,es:[bx]
	les	bx,[1296h]
	mov	es:[bx],si
	les	bx,[bp+6h]
	mov	ax,es:[bx+2h]
	les	bx,[1296h]
	mov	es:[bx+2h],ax
	les	bx,[bp+6h]
	mov	ax,es:[bx+4h]
	les	bx,[1296h]
	mov	es:[bx+4h],ax
	test	si,100h
	jz	0556h

l2368_0532:
	les	bx,[bp+6h]
	mov	ax,es:[bx+6h]
	mov	dx,es:[bx+8h]
	les	bx,[1296h]
	mov	es:[bx+8h],ax
	mov	es:[bx+0Ah],dx
	mov	word ptr es:[bx+0Ch],0h
	pop	si
	pop	di
	mov	sp,bp
	pop	bp
	retf
2368:0555                90                                    .          

l2368_0556:
	les	bx,[bp+6h]
	test	word ptr es:[bx],2000h
	jz	057Eh

l2368_0560:
	les	bx,[1296h]
	mov	word ptr es:[bx],800h
	mov	ax,[bp+6h]
	mov	dx,[bp+8h]
	mov	es:[bx+8h],ax
	mov	es:[bx+0Ah],dx
	pop	si
	pop	di
	mov	sp,bp
	pop	bp
	retf
2368:057D                                        90                    .  

l2368_057E:
	les	bx,[1296h]
	mov	ax,[bp+6h]
	mov	dx,[bp+8h]
	add	ax,6h
	lea	di,[bx+8h]
	mov	si,ax
	push	ds
	mov	ds,dx
	movsw
	movsw
	movsw
	movsw
	pop	ds
	pop	si
	pop	di
	mov	sp,bp
	pop	bp
	retf

;; fn2368_059E: 2368:059E
;;   Called from:
;;     2368:0B33 (in fn2368_0A7A)
fn2368_059E proc
	push	bp
	mov	bp,sp
	sub	sp,6h
	push	di
	push	si
	les	bx,[1296h]
	cmp	word ptr es:[bx],0h
	jnz	05B3h

l2368_05B0:
	jmp	0678h

l2368_05B3:
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	042Ah
	add	sp,4h
	les	bx,[1296h]
	test	byte ptr es:[bx],8h
	jz	05D8h

l2368_05CA:
	cmp	word ptr [13ECh],0h
	jz	05D8h

l2368_05D1:
	mov	ax,[13F8h]
	mov	es:[bx+4h],ax

l2368_05D8:
	mov	ax,es:[bx+2h]
	mov	[bp-6h],ax
	mov	si,es:[bx]
	les	bx,[bp+6h]
	mov	ax,si
	and	ah,0FDh
	mov	es:[bx],ax
	mov	ax,[bp-6h]
	mov	es:[bx+2h],ax
	les	bx,[1296h]
	mov	ax,es:[bx+4h]
	les	bx,[bp+6h]
	mov	es:[bx+4h],ax
	test	si,100h
	jz	065Eh

l2368_0609:
	les	bx,[1296h]
	cmp	word ptr es:[bx+0Ch],0h
	jz	061Ah

l2368_0614:
	cmp	word ptr [bp+0Ah],0h
	jnz	065Eh

l2368_061A:
	les	bx,[bp+6h]
	mov	ax,[bp-6h]
	inc	ax
	mov	es:[bx+0Ah],ax
	push	ax
	call	far 21DCh:0718h
	add	sp,2h
	les	bx,[bp+6h]
	mov	es:[bx+6h],ax
	mov	es:[bx+8h],dx
	push	word ptr es:[bx+0Ah]
	les	bx,[1296h]
	push	word ptr es:[bx+0Ah]
	push	word ptr es:[bx+8h]
	les	bx,[bp+6h]
	push	word ptr es:[bx+8h]
	push	word ptr es:[bx+6h]
	call	far 2017h:02ECh
	add	sp,0Ah
	jmp	0678h

l2368_065E:
	les	bx,[bp+6h]
	mov	ax,[1296h]
	mov	dx,[1298h]
	add	ax,8h
	lea	di,[bx+6h]
	mov	si,ax
	push	ds
	mov	ds,dx
	movsw
	movsw
	movsw
	movsw
	pop	ds

l2368_0678:
	cmp	word ptr [bp+0Ah],0h
	jz	0683h

l2368_067E:
	sub	word ptr [1296h],10h

l2368_0683:
	pop	si
	pop	di
	mov	sp,bp
	pop	bp
	retf
2368:0689                            90 55 8B EC 83 EC 04          .U.....
2368:0690 C4 5E 06 26 8B 07 26 8B 57 02 89 46 FC 89 56 FE .^.&..&.W..F..V.
2368:06A0 0B C2 74 16 C4 5E FC 8B 46 0A 26 39 47 06 74 0A ..t..^..F.&9G.t.
2368:06B0 26 8B 47 0A 26 8B 57 0C EB E0 8B 46 FC 8B 56 FE &.G.&.W....F..V.
2368:06C0 8B E5 5D CB 55 8B EC 83 EC 04 57 56 C4 5E 06 26 ..].U.....WV.^.&
2368:06D0 8B 47 04 26 8B 57 06 89 46 FC 89 56 FE 0B C2 74 .G.&.W..F..V...t
2368:06E0 7D C4 5E FC 26 8B 37 0B F6 74 73 89 36 9A 12 26 }.^.&.7..ts.6..&
2368:06F0 8B 47 02 A3 9C 12 26 8B 47 04 A3 9E 12 81 FE 00 .G....&.G.......
2368:0700 01 75 1D 26 8B 47 06 26 8B 57 08 A3 A2 12 89 16 .u.&.G.&.W......
2368:0710 A4 12 C7 06 A6 12 00 00 5E 5F 8B E5 5D CB 90 90 ........^_..]...
2368:0720 81 3E 9A 12 00 20 75 18 C7 06 9A 12 00 08 8B C3 .>... u.........
2368:0730 8C C2 A3 A2 12 89 16 A4 12 5E 5F 8B E5 5D CB 90 .........^_..]..
2368:0740 8B 46 FC 8B 56 FE 05 06 00 BF A2 12 8B F0 1E 07 .F..V...........
2368:0750 1E 8E DA A5 A5 A5 A5 1F 5E 5F 8B E5 5D CB 8B 46 ........^_..]..F
2368:0760 06 8B 56 08 A3 DA 10 89 16 DC 10 C7 06 D2 10 07 ..V.............
2368:0770 00 5E 5F 8B E5 5D CB 90 55 8B EC 83 EC 0E C4 1E .^_..]..U.......
2368:0780 96 12 26 8B 47 08 26 8B 57 0A 89 46 F6 89 56 F8 ..&.G.&.W..F..V.
2368:0790 26 8B 47 0E 89 46 FA 0B C0 74 2D C4 5E F6 26 C4 &.G..F...t-.^.&.
2368:07A0 5F 04 26 8B 47 06 26 8B 57 08 89 46 F2 89 56 F4 _.&.G.&.W..F..V.
2368:07B0 8B 46 FA 8B C8 D1 E0 03 C1 D1 E0 03 C1 D1 E0 03 .F..............
2368:07C0 46 F2 2D 0E 00 EB 0C 90 C4 5E F6 26 8B 47 04 26 F.-......^.&.G.&
2368:07D0 8B 57 06 89 46 FC 89 56 FE 0B C2 74 1B C4 5E FC .W..F..V...t..^.
2368:07E0 26 83 3F 00 74 12 83 2E 96 12 10 52 53 0E E8 03 &.?.t......RS...
2368:07F0 FD 83 C4 04 8B E5 5D CB C7 06 D2 10 02 00 8B E5 ......].........
2368:0800 5D CB 55 8B EC C7 06 9A 12 00 04 C4 5E 06 26 8B ].U.........^.&.
2368:0810 47 08 99 A3 A2 12 89 16 A4 12 0B C2 75 17 C7 06 G...........u...
2368:0820 A2 12 FE FF C7 06 A4 12 FF FF 8B C3 8C C2 A3 DE ................
2368:0830 10 89 16 E0 10 5D CB 90 55 8B EC 83 EC 14 C4 1E .....]..U.......
2368:0840 96 12 26 8B 47 08 26 8B 57 0A 89 46 F0 89 56 F2 ..&.G.&.W..F..V.
2368:0850 26 8B 47 0C 89 46 FE 26 8B 47 0E 89 46 F4 2B C0 &.G..F.&.G..F.+.
2368:0860 89 46 FC 89 46 FA 89 46 F8 89 46 F6 83 7E FE FF .F..F..F..F..~..
2368:0870 75 14 C4 5E F0 26 8B 47 04 26 8B 57 06 89 46 F6 u..^.&.G.&.W..F.
2368:0880 89 56 F8 EB 56 90 83 7E F4 00 74 2C C4 5E F0 26 .V..V..~..t,.^.&
2368:0890 C4 5F 04 26 8B 47 06 26 8B 57 08 89 46 EC 89 56 ._.&.G.&.W..F..V
2368:08A0 EE 8B 46 F4 8B C8 D1 E0 03 C1 D1 E0 03 C1 D1 E0 ..F.............
2368:08B0 03 46 EC 2D 0E 00 EB C5 83 7E FE 00 74 06 8B 46 .F.-.....~..t..F
2368:08C0 FE EB 04 90 A1 FC 12 50 FF 76 F2 FF 76 F0 0E E8 .......P.v..v...
2368:08D0 B8 FD 83 C4 06 89 46 FA 89 56 FC 8B 46 FA 0B 46 ......F..V..F..F
2368:08E0 FC 74 17 83 2E 96 12 10 FF 76 FC FF 76 FA 9A C8 .t.......v..v...
2368:08F0 17 44 26 83 C4 04 8B E5 5D CB 8B 46 F6 0B 46 F8 .D&.....]..F..F.
2368:0900 74 16 C4 5E F6 26 83 3F 00 74 0D 83 2E 96 12 10 t..^.&.?.t......
2368:0910 06 53 0E E8 DE FB EB DB C7 06 D2 10 02 00 8B E5 .S..............
2368:0920 5D CB 55 8B EC 83 EC 08 C4 1E 96 12 26 8B 47 08 ].U.........&.G.
2368:0930 26 8B 57 0A 89 46 FA 89 56 FC 26 F7 47 F0 00 04 &.W..F..V.&.G...
2368:0940 74 0A 26 8B 47 F8 89 46 FE EB 39 90 26 F6 47 F0 t.&.G..F..9.&.G.
2368:0950 0A 74 2B 26 83 7F F0 08 75 1E 26 FF 77 FE 26 FF .t+&....u.&.w.&.
2368:0960 77 FC 26 FF 77 FA 26 FF 77 F8 9A 22 0C EE 3C 83 w.&.w.&.w.."..<.
2368:0970 C4 08 89 46 F8 EB CF 90 C4 1E 96 12 EB C4 C7 06 ...F............
2368:0980 D2 10 01 00 83 3E D2 10 00 75 2D 0E E8 D9 F9 83 .....>...u-.....
2368:0990 06 96 12 10 C4 1E 96 12 26 C7 07 00 10 8B 46 FA ........&.....F.
2368:09A0 8B 56 FC 26 89 47 08 26 89 57 0A 8B 46 FE 26 89 .V.&.G.&.W..F.&.
2368:09B0 47 0C 26 C7 47 0E 00 00 8B E5 5D CB 55 8B EC 83 G.&.G.....].U...
2368:09C0 EC 04 FF 36 FC 12 FF 76 08 FF 76 06 0E E8 BA FC ...6...v..v.....
2368:09D0 83 C4 06 89 46 FC 89 56 FE 0B D0 74 11 FF 76 FE ....F..V...t..v.
2368:09E0 50 9A C8 17 44 26 83 C4 04 8B E5 5D CB 90 C4 5E P...D&.....]...^
2368:09F0 06 26 8B 47 04 26 0B 47 06 74 1B 26 C4 5F 04 26 .&.G.&.G.t.&._.&
2368:0A00 83 3F 00 74 11 C4 5E 06 26 FF 77 06 26 FF 77 04 .?.t..^.&.w.&.w.
2368:0A10 0E E8 E0 FA EB D0 8B 46 06 8B 56 08 A3 DA 10 89 .......F..V.....
2368:0A20 16 DC 10 C7 06 D2 10 07 00 8B E5 5D CB 90 55 8B ...........]..U.
2368:0A30 EC C4 5E 06 26 8B 47 04 26 0B 47 06 74 24 26 C4 ..^.&.G.&.G.t$&.
2368:0A40 5F 04 26 83 3F 00 74 1A C7 06 9A 12 00 08 C4 5E _.&.?.t........^
2368:0A50 06 26 8B 47 04 26 8B 57 06 A3 A2 12 89 16 A4 12 .&.G.&.W........
2368:0A60 5D CB 8B 46 06 8B 56 08 A3 DA 10 89 16 DC 10 C7 ]..F..V.........
2368:0A70 06 D2 10 07 00 5D CB 90 CB 90                   .....]....      

;; fn2368_0A7A: 2368:0A7A
;;   Called from:
;;     1825:5124 (in fn1825_4DA6)
;;     3CEE:38CC (in fn3CEE_388C)
;;     3CEE:3931 (in fn3CEE_388C)
;;     3CEE:3992 (in fn3CEE_388C)
;;     3CEE:3A1D (in fn3CEE_388C)
;;     3CEE:3A8F (in fn3CEE_388C)
fn2368_0A7A proc
	push	bp
	mov	bp,sp
	sub	sp,0Eh
	les	bx,[1296h]
	mov	ax,es:[bx+8h]
	mov	dx,es:[bx+0Ah]
	mov	[bp-0Ah],ax
	mov	[bp-8h],dx
	mov	ax,es:[bx+0Eh]
	mov	[bp-6h],ax
	sub	word ptr [1296h],10h
	les	bx,[bp-0Ah]
	mov	ax,es:[bx+4h]
	or	ax,es:[bx+6h]
	jnz	0AEEh

l2368_0AAB:
	mov	ax,1h
	push	ax
	call	far 21DCh:0588h
	add	sp,2h
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	les	bx,[bp-4h]
	mov	ax,[bp-0Ah]
	mov	dx,[bp-8h]
	mov	es:[bx+12h],ax
	mov	es:[bx+14h],dx
	sub	ax,ax
	mov	es:[bx+10h],ax
	mov	es:[bx+0Eh],ax
	les	bx,[bp-0Ah]
	mov	ax,[bp-4h]
	mov	dx,[bp-2h]
	mov	es:[bx+4h],ax
	mov	es:[bx+6h],dx
	mov	word ptr [bp-6h],0h

l2368_0AEE:
	cmp	word ptr [bp-6h],0h
	jz	0B24h

l2368_0AF4:
	les	bx,es:[bx+4h]
	mov	ax,es:[bx+6h]
	mov	dx,es:[bx+8h]
	mov	[bp-0Eh],ax
	mov	[bp-0Ch],dx
	mov	ax,1h
	push	ax
	mov	ax,[bp-6h]
	mov	cx,ax
	shl	ax,1h
	add	ax,cx
	shl	ax,1h
	add	ax,cx
	shl	ax,1h
	add	ax,[bp-0Eh]
	sub	ax,0Eh
	push	dx
	push	ax
	jmp	0B33h
2368:0B23          90                                        .            

l2368_0B24:
	mov	ax,1h
	push	ax
	les	bx,[bp-0Ah]
	push	word ptr es:[bx+6h]
	push	word ptr es:[bx+4h]

l2368_0B33:
	push	cs
	call	059Eh
	mov	sp,bp
	pop	bp
	retf
2368:0B3B                                  90 55 8B EC 83            .U...
2368:0B40 EC 0E C4 1E 96 12 26 8B 47 08 26 8B 57 0A 89 46 ......&.G.&.W..F
2368:0B50 F6 89 56 F8 26 8B 47 0E 89 46 FA 83 2E 96 12 10 ..V.&.G..F......
2368:0B60 C4 5E F6 26 8B 47 04 26 0B 47 06 75 43 B8 01 00 .^.&.G.&.G.uC...
2368:0B70 50 9A 88 05 DC 21 83 C4 02 89 46 FC 89 56 FE C4 P....!....F..V..
2368:0B80 5E FC 8B 46 F6 8B 56 F8 26 89 47 12 26 89 57 14 ^..F..V.&.G.&.W.
2368:0B90 2B C0 26 89 47 10 26 89 47 0E C4 5E F6 8B 46 FC +.&.G.&.G..^..F.
2368:0BA0 8B 56 FE 26 89 47 04 26 89 57 06 C7 46 FA 00 00 .V.&.G.&.W..F...
2368:0BB0 83 7E FA 00 74 2E 26 C4 5F 04 26 8B 47 06 26 8B .~..t.&._.&.G.&.
2368:0BC0 57 08 89 46 F2 89 56 F4 2B C0 50 8B 46 FA 8B C8 W..F..V.+.P.F...
2368:0BD0 D1 E0 03 C1 D1 E0 03 C1 D1 E0 03 46 F2 2D 0E 00 ...........F.-..
2368:0BE0 52 50 EB 0E 2B C0 50 C4 5E F6 26 FF 77 06 26 FF RP..+.P.^.&.w.&.
2368:0BF0 77 04 0E E8 A8 F9 8B E5 5D CB 55 8B EC 83 EC 0A w.......].U.....
2368:0C00 C4 1E 96 12 26 8B 47 08 26 8B 57 0A 89 46 F6 89 ....&.G.&.W..F..
2368:0C10 56 F8 26 8B 47 0C 89 46 FE 0B C0 75 03 A1 FC 12 V.&.G..F...u....
2368:0C20 89 46 FE 50 FF 76 F8 FF 76 F6 0E E8 5C FA 83 C4 .F.P.v..v...\...
2368:0C30 06 89 46 FA 89 56 FC 0B C2 74 15 83 2E 96 12 10 ..F..V...t......
2368:0C40 52 FF 76 FA 9A 28 1A 44 26 83 C4 04 8B E5 5D CB R.v..(.D&.....].
2368:0C50 C7 06 D2 10 02 00 8B E5 5D CB 55 8B EC C7 06 9A ........].U.....
2368:0C60 12 00 10 8B 46 06 8B 56 08 A3 A2 12 89 16 A4 12 ....F..V........
2368:0C70 C7 06 A6 12 00 00 C7 06 A8 12 00 00 5D CB       ............].  

;; fn2368_0C7E: 2368:0C7E
;;   Called from:
;;     1825:4FC7 (in fn1825_4DA6)
fn2368_0C7E proc
	push	bp
	mov	bp,sp
	sub	sp,8h
	les	bx,[1296h]
	mov	ax,es:[bx+8h]
	mov	dx,es:[bx+0Ah]
	mov	[bp-8h],ax
	mov	[bp-6h],dx
	sub	word ptr [1296h],10h
	les	bx,[bp-8h]
	mov	ax,es:[bx+4h]
	or	ax,es:[bx+6h]
	jz	0CD2h

l2368_0CA8:
	mov	ax,16h
	mul	word ptr [128Ah]
	add	ax,[1282h]
	mov	dx,[1284h]
	cmp	ax,es:[bx+4h]
	jnc	0CD2h

l2368_0CBD:
	mov	ax,16h
	mul	word ptr [1288h]
	add	ax,[1282h]
	mov	dx,[1284h]
	cmp	ax,es:[bx+4h]
	jnc	0D1Ch

l2368_0CD2:
	mov	ax,1h
	push	ax
	call	far 21DCh:0588h
	add	sp,2h
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	les	bx,[bp-4h]
	mov	ax,[bp-8h]
	mov	dx,[bp-6h]
	mov	es:[bx+12h],ax
	mov	es:[bx+14h],dx
	les	bx,[bp-8h]
	mov	ax,es:[bx+4h]
	mov	dx,es:[bx+6h]
	les	bx,[bp-4h]
	mov	es:[bx+0Eh],ax
	mov	es:[bx+10h],dx
	les	bx,[bp-8h]
	mov	ax,[bp-4h]
	mov	dx,[bp-2h]
	mov	es:[bx+4h],ax
	mov	es:[bx+6h],dx

l2368_0D1C:
	mov	sp,bp
	pop	bp
	retf

;; fn2368_0D20: 2368:0D20
;;   Called from:
;;     1825:4FCE (in fn1825_4DA6)
fn2368_0D20 proc
	push	bp
	mov	bp,sp
	sub	sp,8h
	les	bx,[1296h]
	mov	ax,es:[bx+8h]
	mov	dx,es:[bx+0Ah]
	mov	[bp-8h],ax
	mov	[bp-6h],dx
	sub	word ptr [1296h],10h
	les	bx,[bp-8h]
	mov	ax,es:[bx+4h]
	mov	dx,es:[bx+6h]
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	or	ax,dx
	jnz	0DD0h

l2368_0D52:
	mov	ax,1h
	push	ax
	call	far 21DCh:05EAh
	add	sp,2h
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	les	bx,[bp-4h]
	mov	word ptr es:[bx],80h
	mov	word ptr es:[bx+2h],0h
	mov	word ptr es:[bx+4h],0h
	mov	ax,8h
	push	ax
	mov	ax,5E26h
	push	ds
	push	ax
	push	word ptr [bp-6h]
	push	word ptr [bp-8h]
	call	far 2BC7h:050Ah
	add	sp,4h
	push	dx
	push	ax
	call	far 38ADh:00F2h
	add	sp,0Ah
	cmp	ax,1h
	sbb	cx,cx
	neg	cx
	les	bx,[bp-4h]
	mov	es:[bx+6h],cx
	sub	ax,ax
	mov	es:[bx+10h],ax
	mov	es:[bx+0Eh],ax
	mov	ax,[bp-8h]
	mov	dx,[bp-6h]
	mov	es:[bx+12h],ax
	mov	es:[bx+14h],dx
	les	bx,[bp-8h]
	mov	ax,[bp-4h]
	mov	dx,[bp-2h]
	mov	es:[bx+4h],ax
	mov	es:[bx+6h],dx

l2368_0DD0:
	mov	sp,bp
	pop	bp
	retf
2368:0DD4             55 8B EC 83 EC 04 C4 1E 96 12 26 8B     U.........&.
2368:0DE0 47 08 26 8B 57 0A 89 46 FC 89 56 FE 0E E8 8E FE G.&.W..F..V.....
2368:0DF0 83 3E 7C 12 00 74 51 FF 0E 7C 12 C4 1E 96 12 26 .>|..tQ..|.....&
2368:0E00 F7 07 00 08 74 2C C4 5E FC 26 C4 5F 04 26 C7 07 ....t,.^.&._.&..
2368:0E10 00 08 C4 1E 96 12 26 8B 47 08 26 8B 57 0A C4 5E ......&.G.&.W..^
2368:0E20 FC 26 89 47 04 26 89 57 06 83 2E 96 12 10 8B E5 .&.G.&.W........
2368:0E30 5D CB B8 01 00 50 C4 5E FC 26 FF 77 06 26 FF 77 ]....P.^.&.w.&.w
2368:0E40 04 0E E8 59 F7 83 C4 06 8B E5 5D CB 55 8B EC 57 ...Y......].U..W
2368:0E50 56 FF 76 08 FF 76 06 0E E8 99 F6 83 C4 04 C4 1E V.v..v..........
2368:0E60 96 12 26 8B 37 26 39 77 F0 74 17 8B C6 3D 02 00 ..&.7&9w.t...=..
2368:0E70 74 4E 3D 08 00 74 1F 3D 20 00 74 74 C7 06 D2 10 tN=..t.= .tt....
2368:0E80 01 00 83 3E D2 10 00 74 03 E9 05 01 C4 1E 96 12 ...>...t........
2368:0E90 26 8B 07 E9 EC 00 26 F6 47 F0 02 74 DF 26 FF 77 &.....&.G..t.&.w
2368:0EA0 FA 26 FF 77 F8 9A F7 0C EE 3C 83 C4 04 C4 1E 96 .&.w.....<......
2368:0EB0 12 8D 7F F8 8B F0 1E 8E DA A5 A5 A5 A5 1F EB C2 ................
2368:0EC0 26 F6 47 F0 08 74 B5 26 FF 77 0A 26 FF 77 08 9A &.G..t.&.w.&.w..
2368:0ED0 F7 0C EE 3C 83 C4 04 C4 1E 96 12 8D 7F 08 8B F0 ...<............
2368:0EE0 1E 8E DA A5 A5 A5 A5 1F 26 C7 07 08 00 EB 93 90 ........&.......
2368:0EF0 26 F6 47 F0 08 74 27 26 FF 77 0E 26 FF 77 0C 26 &.G..t'&.w.&.w.&
2368:0F00 FF 77 0A 26 FF 77 08 9A 5A 0C EE 3C 83 C4 08 C4 .w.&.w..Z..<....
2368:0F10 1E 96 12 26 89 47 F8 26 89 57 FA E9 64 FF 26 F6 ...&.G.&.W..d.&.
2368:0F20 47 F0 02 74 03 E9 5A FF E9 51 FF 90 C4 1E 96 12 G..t..Z..Q......
2368:0F30 26 FF 77 0E 26 FF 77 0C 26 FF 77 0A 26 FF 77 08 &.w.&.w.&.w.&.w.
2368:0F40 26 FF 77 FE 26 FF 77 FC 26 FF 77 FA 26 FF 77 F8 &.w.&.w.&.w.&.w.
2368:0F50 9A 0E 0B EE 3C 83 C4 10 C4 1E 96 12 8D 7F 08 8B ....<...........
2368:0F60 F0 1E 8E DA A5 A5 A5 A5 1F EB 26 90 C4 1E 96 12 ..........&.....
2368:0F70 26 8B 47 F8 26 8B 57 FA 26 01 47 08 26 11 57 0A &.G.&.W.&.G.&.W.
2368:0F80 EB 0F 3D 02 00 74 E5 3D 08 00 74 A0 3D 20 00 74 ..=..t.=..t.= .t
2368:0F90 DB B8 01 00 50 FF 76 08 FF 76 06 0E E8 FF F5 83 ....P.v..v......
2368:0FA0 C4 06 5E 5F 5D CB 55 8B EC 83 EC 04 C4 1E 96 12 ..^_].U.........
2368:0FB0 26 F6 47 F0 0A 74 51 26 8B 47 08 26 8B 57 0A 89 &.G..tQ&.G.&.W..
2368:0FC0 46 FC 89 56 FE 83 2E 96 12 10 C4 5E FC 26 8B 47 F..V.......^.&.G
2368:0FD0 04 26 0B 47 06 74 0F 26 FF 77 06 26 FF 77 04 0E .&.G.t.&.w.&.w..
2368:0FE0 E8 69 FE 83 C4 04 83 3E D2 10 00 74 11 FF 76 FE .i.....>...t..v.
2368:0FF0 FF 76 FC 0E E8 17 F3 83 C4 04 8B E5 5D CB 83 2E .v..........]...
2368:1000 96 12 10 8B E5 5D CB 90 C7 06 D2 10 01 00 8B E5 .....]..........
2368:1010 5D CB 55 8B EC 83 EC 06 C4 1E 96 12 26 8B 47 08 ].U.........&.G.
2368:1020 26 8B 57 0A 89 46 FA 89 56 FC 26 8B 47 0E 89 46 &.W..F..V.&.G..F
2368:1030 FE 83 2E 96 12 10 2B C0 50 0E E8 A3 F1 83 C4 02 ......+.P.......
2368:1040 FF 76 FC FF 76 FA 0E E8 C4 F2 83 C4 04 C4 1E 96 .v..v...........
2368:1050 12 8B 46 FE 26 89 47 0E 0E E8 1E FA 8B E5 5D CB ..F.&.G.......].
2368:1060 55 8B EC 83 EC 14 56 C4 1E 96 12 26 8B 37 F7 C6 U.....V....&.7..
2368:1070 0A 00 75 03 E9 85 01 83 FE 08 75 1A 26 FF 77 0E ..u.......u.&.w.
2368:1080 26 FF 77 0C 26 FF 77 0A 26 FF 77 08 9A 5A 0C EE &.w.&.w.&.w..Z..
2368:1090 3C 83 C4 08 EB 0C C4 1E 96 12 26 8B 47 08 26 8B <.........&.G.&.
2368:10A0 57 0A 89 46 F8 89 56 FA C4 1E 96 12 26 8B 47 F8 W..F..V.....&.G.
2368:10B0 26 8B 57 FA 89 46 F2 89 56 F4 83 7E FA 00 7F 0E &.W..F..V..~....
2368:10C0 7C 06 83 7E F8 01 73 06 B8 01 00 EB 17 90 8B 46 |..~..s........F
2368:10D0 F8 8B 56 FA 0B D2 7C 0C 7F 05 3D 00 10 76 05 2B ..V...|...=..v.+
2368:10E0 D2 B8 00 10 89 46 F0 C4 5E F2 26 8B 47 04 26 8B .....F..^.&.G.&.
2368:10F0 57 06 89 46 FC 89 56 FE 0B C2 74 3E 83 7E 06 00 W..F..V...t>.~..
2368:1100 75 28 B8 16 00 F7 26 8A 12 03 06 82 12 8B 16 84 u(....&.........
2368:1110 12 3B 46 FC 73 24 B8 16 00 F7 26 88 12 03 06 82 .;F.s$....&.....
2368:1120 12 8B 16 84 12 3B 46 FC 72 10 FF 76 FE FF 76 FC .....;F.r..v..v.
2368:1130 0E E8 F6 F2 83 C4 04 EB 5D 90 83 7E 06 00 74 0C ........]..~..t.
2368:1140 B8 01 00 50 9A EA 05 DC 21 EB 0A 90 B8 01 00 50 ...P....!......P
2368:1150 9A 88 05 DC 21 83 C4 02 89 46 FC 89 56 FE C4 5E ....!....F..V..^
2368:1160 FC 8B 46 F2 8B 56 F4 26 89 47 12 26 89 57 14 C4 ..F..V.&.G.&.W..
2368:1170 5E F2 26 8B 47 04 26 8B 57 06 C4 5E FC 26 89 47 ^.&.G.&.W..^.&.G
2368:1180 0E 26 89 57 10 C4 5E F2 8B 46 FC 8B 56 FE 26 89 .&.W..^..F..V.&.
2368:1190 47 04 26 89 57 06 8B 46 F0 8B C8 D1 E0 03 C1 D1 G.&.W..F........
2368:11A0 E0 03 C1 D1 E0 8B F0 56 8D 46 EC 16 50 9A 96 06 .......V.F..P...
2368:11B0 DC 21 83 C4 06 0B C0 74 37 C4 5E FC 26 C7 07 00 .!.....t7.^.&...
2368:11C0 20 8B 46 F0 26 89 47 02 8B 46 EC 8B 56 EE 26 89  .F.&.G..F..V.&.
2368:11D0 47 06 26 89 57 08 56 2B C0 50 52 FF 76 EC 9A 28 G.&.W.V+.PR.v..(
2368:11E0 02 17 20 83 C4 08 0E E8 7E F1 5E 8B E5 5D CB 90 .. .....~.^..]..
2368:11F0 C7 06 D2 10 04 00 5E 8B E5 5D CB 90 C7 06 D2 10 ......^..]......
2368:1200 01 00 5E 8B E5 5D CB 90 55 8B EC 83 EC 0A C4 1E ..^..]..U.......
2368:1210 96 12 26 8B 47 F8 26 8B 57 FA 89 46 F8 89 56 FA ..&.G.&.W..F..V.
2368:1220 C4 5E F8 26 C4 5F 04 26 F7 07 00 20 75 03 E9 91 .^.&._.&... u...
2368:1230 00 C4 1E 96 12 26 8A 07 88 46 F6 F6 46 F6 0A 74 .....&...F..F..t
2368:1240 77 F6 46 F6 02 74 0B 26 8B 47 08 26 8B 57 0A EB w.F..t.&.G.&.W..
2368:1250 19 90 26 FF 77 0E 26 FF 77 0C 26 FF 77 0A 26 FF ..&.w.&.w.&.w.&.
2368:1260 77 08 9A 5A 0C EE 3C 83 C4 08 89 46 FC 89 56 FE w..Z..<....F..V.
2368:1270 0B D2 7C 3A 7F 04 0B C0 74 34 C4 5E F8 26 C4 5F ..|:....t4.^.&._
2368:1280 04 26 8B 47 02 2B D2 3B 56 FE 72 22 77 05 3B 46 .&.G.+.;V.r"w.;F
2368:1290 FC 72 1B 83 2E 96 12 10 C4 1E 96 12 26 C7 47 0C .r..........&.G.
2368:12A0 00 00 8B 46 FC 26 89 47 0E 8B E5 5D CB 90 C7 06 ...F.&.G...]....
2368:12B0 D2 10 0E 00 8B E5 5D CB C7 06 D2 10 0D 00 8B E5 ......].........
2368:12C0 5D CB C7 06 D2 10 0F 00 8B E5 5D CB 55 8B EC 83 ].........].U...
2368:12D0 EC 06 B8 10 00 50 FF 36 98 12 FF 36 96 12 FF 76 .....P.6...6...v
2368:12E0 08 FF 76 06 9A EC 02 17 20 83 C4 0A 83 2E 96 12 ..v..... .......
2368:12F0 10 C4 5E 06 26 F7 07 00 01 74 55 26 83 7F 0C 00 ..^.&....tU&....
2368:1300 75 4E 26 8B 47 02 40 89 46 FA 50 8D 46 FC 16 50 uN&.G.@.F.P.F..P
2368:1310 9A 96 06 DC 21 83 C4 06 0B C0 74 34 FF 76 FA C4 ....!.....t4.v..
2368:1320 5E 06 26 FF 77 0A 26 FF 77 08 FF 76 FE FF 76 FC ^.&.w.&.w..v..v.
2368:1330 9A EC 02 17 20 83 C4 0A C4 5E 06 8B 46 FC 8B 56 .... ....^..F..V
2368:1340 FE 26 89 47 08 26 89 57 0A 8B 46 FA 26 89 47 0C .&.G.&.W..F.&.G.
