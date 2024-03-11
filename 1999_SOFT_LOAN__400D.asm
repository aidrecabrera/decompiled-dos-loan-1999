;;; Segment 400D (400D:0000)
400D:0000 03 00 64 B3 01 34                               ..d..4          

;; fn400D_0006: 400D:0006
;;   Called from:
;;     38D6:009D (in fn38D6_0008)
fn400D_0006 proc
	push	bp
	mov	bp,sp
	lea	bx,[bp+0Eh]
	call	far 3CEEh:1008h
	lea	bx,[bp+6h]
	call	far 3CEEh:1008h
	call	far 3CEEh:1472h
	jnc	0026h

l400D_0020:
	mov	ax,1h
	pop	bp
	retf
400D:0025                90                                    .          

l400D_0026:
	sub	ax,ax
	pop	bp
	retf
400D:002A                               55 8B EC 8D 5E 0E           U...^.
400D:0030 9A 08 10 EE 3C 8D 5E 06 9A 08 10 EE 3C 9A 72 14 ....<.^.....<.r.
400D:0040 EE 3C 77 06 B8 01 00 5D CB 90 2B C0 5D CB 55 8B .<w....]..+.].U.
400D:0050 EC 8D 5E 0E 9A 08 10 EE 3C 8D 5E 06 9A 08 10 EE ..^.....<.^.....
400D:0060 3C 9A 72 14 EE 3C 75 06 B8 01 00 5D CB 90 2B C0 <.r..<u....]..+.
400D:0070 5D CB 55 8B EC 8D 5E 0E 9A 08 10 EE 3C 8D 5E 06 ].U...^.....<.^.
400D:0080 9A 08 10 EE 3C 9A 72 14 EE 3C 72 06 B8 01 00 5D ....<.r..<r....]
400D:0090 CB 90 2B C0 5D CB                               ..+.].          

;; fn400D_0096: 400D:0096
;;   Called from:
;;     38D6:00C8 (in fn38D6_0008)
fn400D_0096 proc
	push	bp
	mov	bp,sp
	lea	bx,[bp+0Eh]
	call	far 3CEEh:1008h
	lea	bx,[bp+6h]
	call	far 3CEEh:1008h
	call	far 3CEEh:1472h
	jbe	00B6h

l400D_00B0:
	mov	ax,1h
	pop	bp
	retf
400D:00B5                90                                    .          

l400D_00B6:
	sub	ax,ax
	pop	bp
	retf
400D:00BA                               55 8B EC 8D 5E 0E           U...^.
400D:00C0 9A 08 10 EE 3C 8D 5E 06 9A 08 10 EE 3C 9A 72 14 ....<.^.....<.r.
400D:00D0 EE 3C 74 06 B8 01 00 5D CB 90 2B C0 5D CB       .<t....]..+.].  

;; fn400D_00DE: 400D:00DE
;;   Called from:
;;     2EB3:0667 (in fn2EB3_060C)
;;     3431:1742 (in fn3431_1624)
;;     3431:17B1 (in fn3431_1624)
;;     38D6:0072 (in fn38D6_0008)
fn400D_00DE proc
	push	bp
	mov	bp,sp
	lea	bx,[603Ch]
	call	far 3CEEh:1008h
	lea	bx,[bp+6h]
	call	far 3CEEh:1008h

;; fn3CEE_32E0: 3CEE:32E0
;;   Called from:
;;     3CEE:865A (in fn3CEE_8634)
fn3CEE_32E0 proc
	out	dx,al
	cmp	al,9Ah
	jc	32F9h

l3CEE_32E5:
	out	dx,al
	cmp	al,73h

l400D_00F7:
	jnc	00FEh
	mov	ax,1h
	pop	bp
	retf
	sub	ax,ax
	pop	bp
	retf

;; fn400D_0102: 400D:0102
;;   Called from:
;;     3431:1773 (in fn3431_1624)
fn400D_0102 proc
	push	bp
	mov	bp,sp
	lea	bx,[603Ch]

;; fn3CEE_32F9: 3CEE:32F9
;;   Called from:
;;     3CEE:32E3 (in fn3CEE_32E0)
;;     400D:0105 (in fn400D_0102)
fn3CEE_32F9 proc
	call	far 3CEEh:1008h
	lea	bx,[bp+6h]
	call	far 3CEEh:1008h
	call	far 3CEEh:1472h
	jnz	3312h

l400D_011D:
	mov	ax,1h
	pop	bp
	retf

l400D_0122:
	sub	ax,ax
	pop	bp
	retf
400D:0126                   55 8B EC 83 EC 08 57 56 FF 76       U.....WV.v
400D:0130 14 FF 76 12 FF 76 10 FF 76 0E FF 76 0C FF 76 0A ..v..v..v..v..v.
400D:0140 FF 76 08 FF 76 06 9A FA 30 EE 3C 83 C4 10 8D 7E .v..v...0.<....~
400D:0150 F8 8B F0 16 07 1E 8E DA A5 A5 A5 A5 1F 8D 5E F8 ..............^.
400D:0160 9A 08 10 EE 3C BB 65 35 BA 8E 4D 8E C2 9A A9 11 ....<.e5..M.....
400D:0170 EE 3C B8 65 35 BA 8E 4D 5E 5F 8B E5 5D CB       .<.e5..M^_..].  

;; fn400D_017E: 400D:017E
;;   Called from:
;;     3431:17D3 (in fn3431_1624)
fn400D_017E proc
	push	bp
	mov	bp,sp
	lea	bx,[bp+6h]
	call	far 3CEEh:1008h
	call	far 3CEEh:12B7h
	mov	bx,3565h
	mov	dx,4D8Eh
	mov	es,dx
	call	far 3CEEh:11A9h
	mov	ax,3565h
	mov	dx,4D8Eh
	pop	bp
	retf
400D:01A3          90 55 8B EC 8D 1E 3C 60 9A 08 10 EE 3C    .U....<`....<
400D:01B0 8D 5E 06 9A 08 10 EE 3C 9A 72 14 EE 3C 73 0F 8D .^.....<.r..<s..
400D:01C0 5E 06 9A 08 10 EE 3C 9A B7 12 EE 3C EB 08 8D 5E ^.....<....<...^
400D:01D0 06 9A 08 10 EE 3C BB 65 35 BA 8E 4D 8E C2 9A A9 .....<.e5..M....

l3CEE_33D0:
	adc	si,bp
	cmp	al,0B8h
	xor	ax,8EBAh
	dec	bp
	pop	bp
	retf
3CEE:33DB                                  90 55 8B EC 83            .U...
3CEE:33E0 EC 08 57 56 8D 1E 3C 60 9A 08 10 EE 3C 8D 5E 06 ..WV..<`....<.^.
3CEE:33F0 9A 08 10 EE 3C 9A 72 14 EE 3C 73 44 FF 76 0C FF ....<.r..<sD.v..
3CEE:3400 76 0A FF 76 08 FF 76 06 9A 94 30 EE 3C 83 C4 08 v..v..v...0.<...
3CEE:3410 8D 7E F8 8B F0 16 07 1E 8E DA A5 A5 A5 A5 1F 8D .~..............
3CEE:3420 5E F8 9A 08 10 EE 3C BB 65 35 BA 8E 4D 8E C2 9A ^.....<.e5..M...
3CEE:3430 A9 11 EE 3C B8 65 35 BA 8E 4D 5E 5F 8B E5 5D CB ...<.e5..M^_..].
3CEE:3440 FF 76 0C FF 76 0A FF 76 08 FF 76 06 9A 84 30 EE .v..v..v..v...0.
3CEE:3450 3C EB BA 90 55 8B EC 83 EC 08 57 56 FF 76 14 FF <...U.....WV.v..
3CEE:3460 76 12 FF 76 10 FF 76 0E FF 76 0C FF 76 0A FF 76 v..v..v..v..v..v
3CEE:3470 08 FF 76 06 9A 55 31 EE 3C 83 C4 10 8D 7E F8 8B ..v..U1.<....~..
3CEE:3480 F0 16 07 1E 8E DA A5 A5 A5 A5 1F 8D 5E F8 9A 08 ............^...
3CEE:3490 10 EE 3C BB 65 35 BA 8E 4D 8E C2 9A A9 11 EE 3C ..<.e5..M......<
3CEE:34A0 B8 65 35 BA 8E 4D 5E 5F 8B E5 5D CB 55 8B EC 83 .e5..M^_..].U...
3CEE:34B0 EC 08 57 56 FF 76 0C FF 76 0A FF 76 08 FF 76 06 ..WV.v..v..v..v.
3CEE:34C0 9A 5E 31 EE 3C 83 C4 08 8D 7E F8 8B F0 16 07 1E .^1.<....~......
3CEE:34D0 8E DA A5 A5 A5 A5 1F 8D 5E F8 9A 08 10 EE 3C BB ........^.....<.
3CEE:34E0 65 35 BA 8E 4D 8E C2 9A A9 11 EE 3C B8 65 35 BA e5..M......<.e5.
3CEE:34F0 8E 4D 5E 5F 8B E5 5D CB 55 8B EC 83 EC 08 57 56 .M^_..].U.....WV
3CEE:3500 FF 76 0C FF 76 0A FF 76 08 FF 76 06 9A 79 31 EE .v..v..v..v..y1.
3CEE:3510 3C 83 C4 08 8D 7E F8 8B F0 16 07 1E 8E DA A5 A5 <....~..........
3CEE:3520 A5 A5 1F 8D 5E F8 9A 08 10 EE 3C BB 65 35 BA 8E ....^.....<.e5..
3CEE:3530 4D 8E C2 9A A9 11 EE 3C B8 65 35 BA 8E 4D 5E 5F M......<.e5..M^_
3CEE:3540 8B E5 5D CB 55 8B EC 83 EC 08 57 56 FF 76 0C FF ..].U.....WV.v..
3CEE:3550 76 0A FF 76 08 FF 76 06 9A 70 31 EE 3C 83 C4 08 v..v..v..p1.<...
3CEE:3560 8D 7E F8 8B F0 16 07 1E 8E DA A5 A5 A5 A5 1F 8D .~..............
3CEE:3570 5E F8 9A 08 10 EE 3C BB 65 35 BA 8E 4D 8E C2 9A ^.....<.e5..M...
3CEE:3580 A9 11 EE 3C B8 65 35 BA 8E 4D 5E 5F 8B E5 5D CB ...<.e5..M^_..].
3CEE:3590 55 8B EC 83 EC 18 57 56 83 7E 0E FC 7C 1C 83 7E U.....WV.~..|..~
3CEE:35A0 0E 04 7F 16 8B 5E 0E B1 03 D3 E3 8D 7E F8 8D B7 .....^......~...
3CEE:35B0 3A 36 16 07 A5 A5 A5 A5 EB 39 8D 5E 0E 9A 8F 10 :6.......9.^....
3CEE:35C0 EE 3C 83 EC 08 8B DC 9A A5 11 EE 3C FF 36 78 36 .<.........<.6x6
3CEE:35D0 FF 36 76 36 FF 36 74 36 FF 36 72 36 9A 55 31 EE .6v6.6t6.6r6.U1.
3CEE:35E0 3C 83 C4 10 8D 7E F8 8B F0 16 07 1E 8E DA A5 A5 <....~..........
3CEE:35F0 A5 A5 1F 8D 1E 7A 36 9A 08 10 EE 3C 8D 5E 06 9A .....z6....<.^..
3CEE:3600 08 10 EE 3C 9A 72 14 EE 3C 73 09 8D 7E F0 BE 6A ...<.r..<s..~..j
3CEE:3610 36 EB 07 90 8D 7E F0 BE 62 36 16 07 A5 A5 A5 A5 6....~..b6......
3CEE:3620 8D 5E 06 9A 08 10 EE 3C 8D 5E F8 9A ED 13 EE 3C .^.....<.^.....<
3CEE:3630 8D 5E F0 9A 35 14 EE 3C 83 EC 08 8B DC 9A A5 11 .^..5..<........
3CEE:3640 EE 3C 0E E8 96 FD 83 C4 08 8D 7E E8 8B F0 16 07 .<........~.....
3CEE:3650 1E 8E DA A5 A5 A5 A5 1F 8D 5E E8 9A 08 10 EE 3C .........^.....<
3CEE:3660 8D 5E F8 9A 05 14 EE 3C BB 65 35 BA 8E 4D 8E C2 .^.....<.e5..M..
3CEE:3670 9A A9 11 EE 3C B8 65 35 BA 8E 4D 5E 5F 8B E5 5D ....<.e5..M^_..]
