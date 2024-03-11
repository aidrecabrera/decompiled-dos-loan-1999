;;; Segment 3431 (3431:0000)
3431:0000 12 89 16 A4 12 8B E5 5D CB 90                   .......]..      

;; fn3431_000A: 3431:000A
;;   Called from:
;;     21DC:10AF (in fn21DC_0EC2)
fn3431_000A proc
	push	bp
	mov	bp,sp
	sub	sp,0Ah
	mov	word ptr [21ACh],22h
	mov	ax,22h
	push	ax
	call	far 21DCh:097Eh
	add	sp,2h
	mov	[21A8h],ax
	mov	[21AAh],dx
	push	word ptr [21ACh]
	push	dx
	push	ax
	call	far 1F38h:0CA2h
	add	sp,6h
	mov	ax,[0EEEh]
	inc	ax
	mov	cx,[0EF0h]
	inc	cx
	mul	cx
	add	ax,10h
	push	ax
	call	far 21DCh:097Eh
	add	sp,2h
	mov	[218Ah],ax
	mov	[218Ch],dx
	mov	ax,40h
	push	ax
	call	far 21DCh:097Eh
	add	sp,2h
	mov	[218Eh],ax
	mov	[2190h],dx
	mov	word ptr [21B2h],40h
	mov	ax,40h
	push	ax
	call	far 21DCh:097Eh
	add	sp,2h
	mov	[21AEh],ax
	mov	[21B0h],dx
	mov	word ptr [21B4h],0h
	mov	word ptr [21B6h],0h
	mov	ax,0Ah
	push	ax
	call	far 21DCh:097Eh
	add	sp,2h
	mov	[21C6h],ax
	mov	[21C8h],dx
	mov	ax,0Ah
	push	ax
	sub	ax,ax
	push	ax
	push	dx
	push	word ptr [21C6h]
	call	far 2017h:0228h
	add	sp,8h
	mov	ax,[0F15h]
	mov	cl,3h
	shl	ax,cl
	add	ax,8h
	push	ax
	call	far 21DCh:097Eh
	add	sp,2h
	mov	[2186h],ax
	mov	[2188h],dx
	mov	word ptr [bp-6h],0h
	jmp	0102h
3431:00D5                90                                    .          

l3431_00D6:
	mov	ax,[bp-6h]
	mov	cl,3h
	shl	ax,cl
	add	ax,[2186h]
	mov	dx,[2188h]
	mov	[bp-0Ah],ax
	mov	[bp-8h],dx
	les	bx,[bp-0Ah]
	sub	ax,ax
	mov	es:[bx+2h],ax
	mov	es:[bx],ax
	mov	es:[bx+4h],ax
	mov	es:[bx+6h],ax
	inc	word ptr [bp-6h]

l3431_0102:
	mov	ax,[0F15h]
	cmp	[bp-6h],ax
	jc	00D6h

l3431_010A:
	mov	ax,5F12h
	push	ds
	push	ax
	call	far 2BC7h:03C2h
	add	sp,4h
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	les	bx,[bp-4h]
	mov	ax,es:[bx+0Eh]
	or	ax,es:[bx+10h]
	jz	0139h

l3431_012A:
	mov	word ptr [20C0h],1Ch
	mov	ax,bx
	mov	[20C2h],ax
	mov	[20C4h],dx

l3431_0139:
	mov	sp,bp
	pop	bp
	retf
3431:013D                                        90                    .  

;; fn3431_013E: 3431:013E
;;   Called from:
;;     21DC:053C (in fn21DC_04BA)
fn3431_013E proc
	push	bp
	mov	bp,sp
	sub	sp,6h
	mov	ax,[21BAh]
	or	ax,[21BCh]
	jz	0168h

l3431_014D:
	cmp	word ptr [21BEh],0h
	jz	0168h

l3431_0154:
	push	word ptr [21BEh]
	push	word ptr [21BCh]
	push	word ptr [21BAh]
	call	far 21DCh:0702h
	add	sp,6h

l3431_0168:
	cmp	word ptr [21ACh],0h
	jz	0183h

l3431_016F:
	push	word ptr [21ACh]
	push	word ptr [21AAh]
	push	word ptr [21A8h]
	call	far 21DCh:09B4h
	add	sp,6h

l3431_0183:
	mov	word ptr [21ACh],0h
	sub	ax,ax
	push	ax
	push	ax
	push	ax
	call	far 1F38h:0CA2h
	add	sp,6h
	cmp	word ptr [21B2h],0h
	jz	01C3h

l3431_019D:
	cmp	word ptr [21B8h],0h
	jz	01AFh

l3431_01A4:
	push	word ptr [21B8h]
	push	cs
	call	0214h
	add	sp,2h

l3431_01AF:
	push	word ptr [21B2h]
	push	word ptr [21B0h]
	push	word ptr [21AEh]
	call	far 21DCh:09B4h
	add	sp,6h

l3431_01C3:
	mov	word ptr [bp-2h],0h
	jmp	0208h

l3431_01CA:
	mov	ax,[bp-2h]
	mov	cl,3h
	shl	ax,cl
	add	ax,[2186h]
	mov	dx,[2188h]
	mov	[bp-6h],ax
	mov	[bp-4h],dx
	les	bx,[bp-6h]
	mov	ax,es:[bx]
	or	ax,es:[bx+2h]
	jz	0205h

l3431_01EB:
	cmp	word ptr es:[bx+4h],0h
	jz	0205h

l3431_01F2:
	push	word ptr es:[bx+4h]
	push	word ptr es:[bx+2h]
	push	word ptr es:[bx]
	call	far 21DCh:074Eh
	add	sp,6h

l3431_0205:
	inc	word ptr [bp-2h]

l3431_0208:
	mov	ax,[0F15h]
	cmp	[bp-2h],ax
	jc	01CAh

l3431_0210:
	mov	sp,bp
	pop	bp
	retf

;; fn3431_0214: 3431:0214
;;   Called from:
;;     3431:01A8 (in fn3431_013E)
fn3431_0214 proc
	push	bp
	mov	bp,sp
	sub	sp,6h
	cmp	word ptr [21B8h],0h
	jnz	0224h

l3431_0221:
	jmp	02E9h

l3431_0224:
	mov	ax,[21B8h]
	cmp	[bp+6h],ax
	jbe	022Fh

l3431_022C:
	mov	[bp+6h],ax

l3431_022F:
	mov	word ptr [bp-4h],0h
	mov	word ptr [bp-6h],0h

l3431_0239:
	mov	ax,[21B4h]
	cmp	[21B6h],ax
	jbe	024Ch

l3431_0242:
	mov	ax,[21B2h]

l3431_0245:
	sub	ax,[21B6h]
	jmp	025Dh
3431:024B                                  90                        .    

l3431_024C:
	mov	ax,[21B6h]
	cmp	[21B4h],ax
	jbe	025Ah

l3431_0255:
	mov	ax,[21B4h]
	jmp	0245h

l3431_025A:
	mov	ax,[21B8h]

l3431_025D:
	mov	[bp-2h],ax
	cmp	word ptr [2216h],0h
	jnz	0286h

l3431_0267:
	push	ax
	mov	ax,[21B6h]
	add	ax,[21AEh]
	mov	dx,[21B0h]
	push	dx
	push	ax
	call	far 1F38h:0DABh
	add	sp,6h
	mov	[bp-2h],ax
	mov	ax,[10A1h]
	mov	[bp-6h],ax

l3431_0286:
	mov	ax,[bp-2h]
	add	[bp-4h],ax
	sub	[21B8h],ax
	add	[21B6h],ax
	mov	ax,[21B2h]
	cmp	[21B6h],ax
	jc	02A1h

l3431_029D:
	sub	[21B6h],ax

l3431_02A1:
	cmp	word ptr [bp-6h],0h
	jz	02D8h

l3431_02A7:
	mov	word ptr [2216h],1h
	call	far 20B2h:0EF6h
	cmp	ax,1h
	sbb	cx,cx
	neg	cx
	mov	[bp-6h],cx
	mov	word ptr [2216h],0h
	or	cx,cx
	jz	02D8h

l3431_02C6:
	mov	word ptr [21B8h],0h
	mov	word ptr [21B4h],0h
	mov	word ptr [21B6h],0h

l3431_02D8:
	mov	ax,[bp+6h]
	cmp	[bp-4h],ax
	jnc	02E9h

l3431_02E0:
	cmp	word ptr [bp-6h],0h
	jnz	02E9h

l3431_02E6:
	jmp	0239h

l3431_02E9:
	mov	sp,bp
	pop	bp
	retf
3431:02ED                                        90 55 8B              .U.
3431:02F0 EC 83 EC 04 56 EB 11 90 9A 60 0D DC 21 FF 36 B8 ....V....`..!.6.
3431:0300 21 0E E8 0F FF 83 C4 02 83 3E B8 21 00 75 E9 EB !........>.!.u..
3431:0310 3E 90 FF 36 B8 21 0E E8 FA FE 83 C4 02 C7 06 B4 >..6.!..........
3431:0320 21 00 00 C7 06 B6 21 00 00 FF 36 B2 21 FF 76 08 !.....!...6.!.v.
3431:0330 FF 76 06 FF 36 B0 21 FF 36 AE 21 9A EC 02 17 20 .v..6.!.6.!.... 
3431:0340 83 C4 0A A1 B2 21 A3 B8 21 01 46 06 29 46 0A A1 .....!..!.F.)F..
3431:0350 B2 21 39 46 0A 73 BB 2B 06 B8 21 89 46 FC 39 46 .!9F.s.+..!.F.9F
3431:0360 0A 76 0E 8B 46 0A 2B 46 FC 50 0E E8 A6 FE 83 C4 .v..F.+F.P......
3431:0370 02 A1 B2 21 2B 06 B4 21 89 46 FE 39 46 0A 76 44 ...!+..!.F.9F.vD
3431:0380 50 FF 76 08 FF 76 06 A1 B4 21 03 06 AE 21 8B 16 P.v..v...!...!..
3431:0390 B0 21 52 50 9A EC 02 17 20 83 C4 0A 8B 76 0A 2B .!RP.... ....v.+
3431:03A0 76 FE 56 8B 46 FE 03 46 06 8B 56 08 52 50 FF 36 v.V.F..F..V.RP.6
3431:03B0 B0 21 FF 36 AE 21 9A EC 02 17 20 83 C4 0A 89 36 .!.6.!.... ....6
3431:03C0 B4 21 EB 25 FF 76 0A FF 76 08 FF 76 06 A1 B4 21 .!.%.v..v..v...!
3431:03D0 03 06 AE 21 8B 16 B0 21 52 50 9A EC 02 17 20 83 ...!...!RP.... .
3431:03E0 C4 0A 8B 46 0A 01 06 B4 21 8B 46 0A 01 06 B8 21 ...F....!.F....!
3431:03F0 EB 10 9A 60 0D DC 21 FF 36 B8 21 0E E8 15 FE 83 ...`..!.6.!.....
3431:0400 C4 02 83 3E B8 21 00 75 E9 5E 8B E5 5D CB 55 8B ...>.!.u.^..].U.
3431:0410 EC 83 EC 02 C7 46 FE 00 00 EB 14 90 B8 01 00 50 .....F.........P
3431:0420 B8 18 5F 1E 50 0E E8 C5 FE 83 C4 06 FF 46 FE A1 .._.P........F..
3431:0430 B4 20 39 46 FE 72 E5 8B E5 5D CB 90 55 8B EC 83 . 9F.r...]..U...
3431:0440 3E D2 10 65 74 75 83 3E 9A 20 00 74 11 FF 76 0A >..etu.>. .t..v.
3431:0450 FF 76 08 FF 76 06 9A 2D 04 38 1F 83 C4 06 83 3E .v..v..-.8.....>
3431:0460 A0 20 00 75 07 83 3E A2 21 00 74 10 FF 76 0A FF . .u..>.!.t..v..
3431:0470 76 08 FF 76 06 0E E8 75 FE 83 C4 06 83 3E 94 20 v..v...u.....>. 
3431:0480 00 74 1C 83 3E B8 20 00 74 15 FF 76 0A FF 76 08 .t..>. .t..v..v.
3431:0490 FF 76 06 FF 36 BA 20 9A EF 00 8F 20 83 C4 08 83 .v..6. .... ....
3431:04A0 3E A4 21 00 74 15 FF 76 0A FF 76 08 FF 76 06 FF >.!.t..v..v..v..
3431:04B0 36 A6 21 9A EF 00 8F 20 83 C4 08 5D CB 90 83 3E 6.!.... ...]...>
3431:04C0 D2 10 65 75 03 E9 83 00 83 3E 9A 20 00 74 11 B8 ..eu.....>. .t..
3431:04D0 02 00 50 B8 1A 5F 1E 50 9A 2D 04 38 1F 83 C4 06 ..P.._.P.-.8....
3431:04E0 83 3E A0 20 00 75 07 83 3E A2 21 00 74 1E B8 02 .>. .u..>.!.t...
3431:04F0 00 50 B8 1E 5F 1E 50 0E E8 F3 FD 83 C4 06 FF 06 .P.._.P.........
3431:0500 C2 21 0E E8 08 FF A1 B4 20 A3 C4 21 83 3E 94 20 .!...... ..!.>. 
3431:0510 00 74 1C 83 3E B8 20 00 74 15 B8 02 00 50 B8 22 .t..>. .t....P."
3431:0520 5F 1E 50 FF 36 BA 20 9A EF 00 8F 20 83 C4 08 83 _.P.6. .... ....
3431:0530 3E A4 21 00 74 15 B8 02 00 50 B8 26 5F 1E 50 FF >.!.t....P.&_.P.
3431:0540 36 A6 21 9A EF 00 8F 20 83 C4 08 CB 83 3E D2 10 6.!.... .....>..
3431:0550 65 74 25 9A 60 0D DC 21 B8 02 00 50 B8 2A 5F 1E et%.`..!...P.*_.
3431:0560 50 0E E8 89 FD 83 C4 06 0E E8 A2 FE C7 06 C2 21 P..............!
3431:0570 00 00 A1 B4 20 A3 C4 21 CB 90 0E E8 CE FF CB 90 .... ..!........
3431:0580 9A 60 0D DC 21 0E E8 35 FF CB A1 AA 12 3D 02 00 .`..!..5.....=..
3431:0590 74 3A 3D 08 00 75 03 E9 84 00 3D 20 00 75 03 E9 t:=..u....= .u..
3431:05A0 DA 00 3D 80 00 75 03 E9 BA 00 3D 00 01 74 08 3D ..=..u....=..t.=
3431:05B0 00 03 74 03 E9 FD 00 FF 36 AC 12 FF 36 B4 12 FF ..t.....6...6...
3431:05C0 36 B2 12 0E E8 75 FE 83 C4 06 CB 90 83 3E EC 13 6....u.......>..
3431:05D0 00 75 08 81 3E AC 12 FF 00 75 0F B8 AA 12 1E 50 .u..>....u.....P
3431:05E0 9A 08 00 D6 38 83 C4 04 EB 06 C7 06 AE 12 00 00 ....8...........
3431:05F0 FF 36 AE 12 FF 36 AC 12 FF 36 B4 12 FF 36 B2 12 .6...6...6...6..
3431:0600 FF 36 90 21 FF 36 8E 21 9A FC 0E EE 3C 83 C4 0C .6.!.6.!....<...
3431:0610 FF 36 AC 12 FF 36 90 21 FF 36 8E 21 EB A5 83 3E .6...6.!.6.!...>
3431:0620 EC 13 00 75 08 81 3E AC 12 FF 00 75 0D B8 AA 12 ...u..>....u....
3431:0630 1E 50 9A 08 00 D6 38 83 C4 04 FF 36 90 21 FF 36 .P....8....6.!.6
3431:0640 8E 21 FF 36 AE 12 FF 36 AC 12 FF 36 B8 12 FF 36 .!.6...6...6...6
3431:0650 B6 12 FF 36 B4 12 FF 36 B2 12 9A A8 0D EE 3C 83 ...6...6......<.
3431:0660 C4 10 EB AC B8 03 00 50 83 3E B2 12 00 74 05 B8 .......P.>...t..
3431:0670 2E 5F EB 03 B8 32 5F 1E 50 E9 47 FF FF 36 8E 12 ._...2_.P.G..6..
3431:0680 FF 36 B4 12 FF 36 B2 12 FF 36 8C 21 FF 36 8A 21 .6...6...6.!.6.!
3431:0690 9A FA 06 D6 38 83 C4 0A FF 36 8C 21 FF 36 8A 21 ....8....6.!.6.!
3431:06A0 9A F5 03 17 20 83 C4 04 50 FF 36 8C 21 FF 36 8A .... ...P.6.!.6.
3431:06B0 21 E9 0F FF CB 90 0E E8 D0 FE B8 01 00 50 B8 36 !............P.6
3431:06C0 5F 1E 50 0E E8 75 FD 83 C4 06 CB 90             _.P..u......    

;; fn3431_06CC: 3431:06CC
;;   Called from:
;;     3431:07C2 (in fn3431_07B6)
;;     3CEE:3C0B (in fn3CEE_3BF8)
fn3431_06CC proc
	push	bp
	mov	bp,sp
	sub	sp,0Ch
	mov	ax,[0F1Bh]
	mov	[bp-2h],ax
	mov	ax,[bp+6h]
	mov	[0F1Bh],ax
	call	far 1F38h:0CDCh
	mov	[bp-8h],ax
	or	ax,ax
	jnz	06EDh

l3431_06EA:
	jmp	07A9h

l3431_06ED:
	call	far 1F38h:0D06h
	mov	[bp-8h],ax
	push	word ptr [0F17h]
	call	far 21DCh:081Ah
	add	sp,2h
	or	ax,ax
	jz	071Eh

l3431_0705:
	cmp	word ptr [bp+8h],0h
	jnz	070Eh

l3431_070B:
	jmp	07A9h

l3431_070E:
	push	word ptr [0F17h]
	call	far 21DCh:0856h

l3431_0717:
	add	sp,2h
	jmp	07A4h
3431:071D                                        90                    .  

l3431_071E:
	cmp	word ptr [bp-8h],80h
	jc	073Eh

l3431_0725:
	cmp	word ptr [bp-8h],87h
	ja	073Eh

l3431_072C:
	cmp	word ptr [bp+8h],0h
	jz	07A9h

l3431_0732:
	push	word ptr [bp-8h]
	call	far 21DCh:0006h
	jmp	0717h
3431:073C                                     90 90                   ..  

l3431_073E:
	cmp	word ptr [bp-8h],88h
	jbe	07A9h

l3431_0745:
	mov	ax,[0F15h]
	add	ax,88h
	cmp	[bp-8h],ax
	ja	07A9h

l3431_0750:
	cmp	word ptr [0F1Bh],8h
	jz	07A9h

l3431_0757:
	mov	ax,[bp-8h]
	mov	cl,3h
	shl	ax,cl
	add	ax,[2186h]
	mov	dx,[2188h]
	mov	[bp-0Ch],ax
	mov	[bp-0Ah],dx
	les	bx,[bp-0Ch]
	mov	ax,es:[bx+0FBB8h]
	mov	dx,es:[bx+0FBBAh]
	mov	[bp-6h],ax
	mov	[bp-4h],dx
	or	ax,dx
	jz	0796h

l3431_0783:
	push	word ptr es:[bx+0FBBEh]
	push	dx
	push	word ptr [bp-6h]
	call	far 1F38h:0C09h
	add	sp,6h
	jmp	07A4h

l3431_0796:
	cmp	word ptr [0F1Bh],5h
	jnz	07A4h

l3431_079D:
	mov	word ptr [bp-8h],1h
	jmp	07A9h

l3431_07A4:
	mov	word ptr [bp-8h],0h

l3431_07A9:
	mov	ax,[bp-2h]
	mov	[0F1Bh],ax
	mov	ax,[bp-8h]
	mov	sp,bp
	pop	bp
	retf

;; fn3431_07B6: 3431:07B6
;;   Called from:
;;     1825:0438 (in fn1825_037E)
;;     1825:07C6 (in fn1825_06E0)
;;     1825:1231 (in fn1825_0E72)
;;     1825:1BCF (in fn1825_18A6)
;;     1825:29F5 (in fn1825_2880)
;;     1825:5D90 (in fn1825_5BD8)
;;     1825:6537 (in fn1825_648A)
;;     1825:680D (in fn1825_67EE)
;;     1825:6FB0 (in fn1825_6EA4)
;;     20B2:1046 (in fn20B2_1014)
;;     21DC:0043 (in fn21DC_0006)
;;     3CEE:887C (in fn3CEE_8634)
fn3431_07B6 proc
	push	bp
	mov	bp,sp
	sub	sp,2h

l3431_07BC:
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	06CCh
	add	sp,4h
	mov	[bp-2h],ax
	or	ax,ax
	jz	07BCh

l3431_07D0:
	mov	sp,bp
	pop	bp
	retf
3431:07D4             55 8B EC 83 EC 08 56 C7 46 FE 00 00     U.....V.F...
3431:07E0 C7 46 F8 00 00 B8 00 01 50 9A 18 07 DC 21 83 C4 .F......P....!..
3431:07F0 02 89 46 FA 89 56 FC E9 89 00 B8 01 00 50 FF 76 ..F..V.......P.v
3431:0800 06 0E E8 B1 FF 83 C4 04 89 46 F8 3D 02 00 74 2A .........F.=..t*
3431:0810 3D 03 00 74 0A 3D 06 00 74 4C 3D 07 00 75 64 83 =..t.=..tL=..ud.
3431:0820 7E FE 00 74 5E B8 01 00 50 B8 38 5F 1E 50 0E E8 ~..t^...P.8_.P..
3431:0830 0A FC 83 C4 06 FF 4E FE EB 49 81 7E FE FF 00 73 ......N..I.~...s
3431:0840 42 8B 5E FE C4 76 FA A0 17 0F 26 88 00 B8 01 00 B.^..v....&.....
3431:0850 50 8B C3 03 C6 8C C2 52 50 0E E8 DF FB 83 C4 06 P......RP.......
3431:0860 FF 46 FE EB 1E 90 B8 01 00 50 B8 3A 5F 1E 50 0E .F.......P.:_.P.
3431:0870 E8 C9 FB 83 C4 06 83 3E A0 20 00 74 06 C7 06 C4 .......>. .t....
3431:0880 21 00 00 83 7E F8 06 74 03 E9 6E FF 8B 5E FE C4 !...~..t..n..^..
3431:0890 76 FA 26 C6 00 00 53 B8 00 01 50 06 56 9A 72 02 v.&...S...P.V.r.
3431:08A0 68 23 83 C4 08 5E 8B E5 5D CB 55 8B EC 83 EC 04 h#...^..].U.....
3431:08B0 B8 02 00 50 9A 18 07 DC 21 83 C4 02 89 46 FC 89 ...P....!....F..
3431:08C0 56 FE B8 01 00 50 50 0E E8 EB FE 83 C4 04 3D 02 V....PP.......=.
3431:08D0 00 75 1D C4 5E FC A0 17 0F 26 88 07 26 C6 47 01 .u..^....&..&.G.
3431:08E0 00 B8 01 00 50 06 53 0E E8 51 FB 83 C4 06 EB 07 ....P.S..Q......
3431:08F0 C4 5E FC 26 C6 07 00 B8 02 00 50 FF 76 FE FF 76 .^.&......P.v..v
3431:0900 FC 9A 2E 02 68 23 8B E5 5D CB B8 02 00 50 0E E8 ....h#..]....P..
3431:0910 C2 FE 83 C4 02 CB B8 03 00 50 0E E8 B6 FE 83 C4 .........P......
3431:0920 02 9A 44 1D FF 31 CB 90 55 8B EC 83 EC 06 A1 1B ..D..1..U.......
3431:0930 0F 89 46 FE C7 06 1B 0F 07 00 C7 46 FC 00 00 9A ..F........F....
3431:0940 DC 0C 38 1F 0B C0 74 24 9A 06 0D 38 1F 89 46 FA ..8...t$...8..F.
3431:0950 3D 80 00 72 11 3D 87 00 77 0C 50 9A 06 00 DC 21 =..r.=..w.P....!
3431:0960 83 C4 02 EB 07 90 A1 17 0F 89 46 FC 8B 46 FE A3 ..........F..F..
3431:0970 1B 0F C7 06 9A 12 02 00 C7 06 9C 12 0A 00 8B 46 ...............F
3431:0980 FC 99 A3 A2 12 89 16 A4 12 8B E5 5D CB 90 55 8B ...........]..U.
3431:0990 EC 83 EC 24 57 56 83 3E AA 12 08 75 4D FF 36 14 ...$WV.>...uM.6.
3431:09A0 22 FF 36 12 22 FF 36 10 22 FF 36 0E 22 FF 36 B8 ".6.".6.".6.".6.
3431:09B0 12 FF 36 B6 12 FF 36 B4 12 FF 36 B2 12 9A 98 0B ..6...6...6.....
3431:09C0 EE 3C 83 C4 10 8D 7E DC 8B F0 16 07 1E 8E DA A5 .<....~.........
3431:09D0 A5 A5 A5 1F FF 76 E2 FF 76 E0 FF 76 DE FF 76 DC .....v..v..v..v.
3431:09E0 9A 5A 0C EE 3C 83 C4 08 EB 13 B8 64 00 99 52 50 .Z..<......d..RP
3431:09F0 FF 36 B4 12 FF 36 B2 12 9A A6 05 EE 3C 89 46 FC .6...6......<.F.
3431:0A00 89 56 FE 0B D2 7D 03 E9 F8 00 7F 07 0B C0 75 03 .V...}........u.
3431:0A10 E9 EF 00 C6 46 E5 2C 8D 46 E4 16 50 9A 2D 04 17 ....F.,.F..P.-..
3431:0A20 20 83 C4 04 B8 64 00 99 52 50 B8 3C 00 99 52 50  ....d..RP.<..RP
3431:0A30 B0 3C F6 66 E9 8A 4E E8 2A ED 03 C1 2B C9 51 50 .<.f..N.*...+.QP
3431:0A40 9A A6 05 EE 3C 8A 4E EB 2A ED 03 C1 83 D2 00 52 ....<.N.*......R
3431:0A50 50 9A A6 05 EE 3C 8A 4E EA 2A ED 03 C1 83 D2 00 P....<.N.*......
3431:0A60 89 46 F0 89 56 F2 2B C0 89 46 F6 89 46 F4 8B 46 .F..V.+..F..F..F
3431:0A70 FC 8B 56 FE 39 56 F6 7E 03 E9 8F 00 7C 08 39 46 ..V.9V.~....|.9F
3431:0A80 F4 72 03 E9 85 00 9A DC 0C 38 1F 0B C0 75 7C C6 .r.......8...u|.
3431:0A90 46 E5 2C 8D 46 E4 16 50 9A 2D 04 17 20 83 C4 04 F.,.F..P.-.. ...
3431:0AA0 B8 64 00 99 52 50 B8 3C 00 99 52 50 B0 3C F6 66 .d..RP.<..RP.<.f
3431:0AB0 E9 8A 4E E8 2A ED 03 C1 2B C9 51 50 9A A6 05 EE ..N.*...+.QP....
3431:0AC0 3C 8A 4E EB 2A ED 03 C1 83 D2 00 52 50 9A A6 05 <.N.*......RP...
3431:0AD0 EE 3C 8A 4E EA 2A ED 03 C1 83 D2 00 89 46 F8 89 .<.N.*.......F..
3431:0AE0 56 FA 2B 46 F0 1B 56 F2 89 46 F4 89 56 F6 0B D2 V.+F..V..F..V...
3431:0AF0 7C 03 E9 79 FF 81 46 F4 00 D6 81 56 F6 83 00 E9 |..y..F....V....
3431:0B00 6C FF 9A DC 0C 38 1F 0B C0 74 F7 0E E8 19 FE 5E l....8...t.....^
3431:0B10 5F 8B E5 5D CB 90 C7 06 9A 12 02 00 C7 06 9C 12 _..]............
3431:0B20 0A 00 A1 19 0F 99 A3 A2 12 89 16 A4 12 CB 55 8B ..............U.
3431:0B30 EC 8B 46 06 0B C0 74 0C 3D 01 00 74 3D 3D 02 00 ..F...t.=..t==..
3431:0B40 74 40 5D CB C7 06 A2 21 00 00 83 3E A4 21 00 74 t@]....!...>.!.t
3431:0B50 6C B8 01 00 50 B8 3C 5F 1E 50 FF 36 A6 21 9A EF l...P.<_.P.6.!..
3431:0B60 00 8F 20 83 C4 08 FF 36 A6 21 9A AE 00 8F 20 83 .. ....6.!.... .
3431:0B70 C4 02 C7 06 A4 21 00 00 5D CB C7 06 A2 21 01 00 .....!..]....!..
3431:0B80 5D CB C4 1E 96 12 26 F7 07 00 01 74 2B B8 0D 00 ].....&....t+...
3431:0B90 50 26 FF 77 0A 26 FF 77 08 9A 96 10 D6 38 83 C4 P&.w.&.w.....8..
3431:0BA0 06 A3 A6 21 3D FF FF 74 09 C7 06 A4 21 01 00 EB ...!=..t....!...
3431:0BB0 07 90 C7 06 D2 10 05 00 9A 3C 03 68 23 5D CB 90 .........<.h#]..
3431:0BC0 55 8B EC 83 EC 20 57 56 C6 46 F1 2C 8D 46 F0 16 U.... WV.F.,.F..
3431:0BD0 50 9A 2D 04 17 20 83 C4 04 B8 64 00 99 52 50 B8 P.-.. ....d..RP.
3431:0BE0 3C 00 99 52 50 B0 3C F6 66 F5 8A 4E F4 2A ED 03 <..RP.<.f..N.*..
3431:0BF0 C1 2B C9 51 50 9A A6 05 EE 3C 8A 4E F7 2A ED 03 .+.QP....<.N.*..
3431:0C00 C1 83 D2 00 52 50 9A A6 05 EE 3C 8A 4E F6 2A ED ....RP....<.N.*.
3431:0C10 03 C1 83 D2 00 89 46 FC 89 56 FE 52 50 9A F7 0C ......F..V.RP...
3431:0C20 EE 3C 83 C4 04 8D 7E E8 8B F0 16 07 1E 8E DA A5 .<....~.........
3431:0C30 A5 A5 A5 1F FF 36 14 22 FF 36 12 22 FF 36 10 22 .....6.".6.".6."
3431:0C40 FF 36 0E 22 FF 76 EE FF 76 EC FF 76 EA FF 76 E8 .6.".v..v..v..v.
3431:0C50 9A DD 0B EE 3C 83 C4 10 8D 7E E0 8B F0 16 07 1E ....<....~......
3431:0C60 8E DA A5 A5 A5 A5 1F B8 02 00 50 B8 0A 00 50 FF ..........P...P.
3431:0C70 76 E6 FF 76 E4 FF 76 E2 FF 76 E0 9A B0 01 68 23 v..v..v..v....h#
3431:0C80 83 C4 0C 5E 5F 8B E5 5D CB 90 9A C5 0C 38 1F A1 ...^_..].....8..
3431:0C90 BA 21 0B 06 BC 21 74 23 83 3E BE 21 00 74 1C FF .!...!t#.>.!.t..
3431:0CA0 36 BE 21 FF 36 BC 21 FF 36 BA 21 9A 02 07 DC 21 6.!.6.!.6.!....!
3431:0CB0 83 C4 06 2B C0 A3 BC 21 A3 BA 21 83 3E AC 12 00 ...+...!..!.>...
3431:0CC0 74 54 A1 AC 12 A3 C0 21 40 A3 BE 21 50 B8 BA 21 tT.....!@..!P..!
3431:0CD0 1E 50 9A 96 06 DC 21 83 C4 06 0B C0 74 32 FF 36 .P....!.....t2.6
3431:0CE0 BE 21 FF 36 B4 12 FF 36 B2 12 FF 36 BC 21 FF 36 .!.6...6...6.!.6
3431:0CF0 BA 21 9A EC 02 17 20 83 C4 0A FF 36 C0 21 FF 36 .!.... ....6.!.6
3431:0D00 BC 21 FF 36 BA 21 9A 09 0C 38 1F 83 C4 06 CB 90 .!.6.!...8......
3431:0D10 C7 06 D2 10 01 00 CB 90 9A 60 0D DC 21 9A 4C 09 .........`..!.L.
3431:0D20 38 1F CB 90 83 3E B0 20 00 75 05 9A 07 09 38 1F 8....>. .u....8.
3431:0D30 CB 90 83 3E B0 20 00 75 05 9A CB 08 38 1F CB 90 ...>. .u....8...
3431:0D40 55 8B EC 83 EC 04 83 3E B0 20 00 74 7D A1 B2 12 U......>. .t}...
3431:0D50 89 46 FE A1 C2 12 03 06 B4 20 89 46 FC A1 C2 21 .F....... .F...!
3431:0D60 39 46 FE 73 21 0E E8 E3 F7 EB 1B 90 B8 02 00 50 9F.s!..........P
3431:0D70 B8 3E 5F 1E 50 0E E8 75 F5 83 C4 06 FF 06 C2 21 .>_.P..u.......!
3431:0D80 C7 06 C4 21 00 00 A1 C2 21 39 46 FE 77 DE A1 C4 ...!....!9F.w...
3431:0D90 21 39 46 FC 73 16 B8 01 00 50 B8 42 5F 1E 50 0E !9F.s....P.B_.P.
3431:0DA0 E8 4B F5 83 C4 06 C7 06 C4 21 00 00 A1 C4 21 39 .K.......!....!9
3431:0DB0 46 FC 76 26 B8 01 00 50 B8 44 5F 1E 50 0E E8 2D F.v&...P.D_.P..-
3431:0DC0 F5 83 C4 06 FF 06 C4 21 EB E2 FF 36 C2 12 FF 36 .......!...6...6
3431:0DD0 B2 12 9A E7 04 38 1F 83 C4 04 8B E5 5D CB       .....8......].  

;; fn3431_0DDE: 3431:0DDE
;;   Called from:
;;     3431:0FC4 (in fn3431_0E74)
;;     3431:181A (in fn3431_1624)
;;     3431:185E (in fn3431_1624)
fn3431_0DDE proc
	push	bp
	mov	bp,sp
	mov	al,[bp+6h]
	sub	ah,ah
	push	ax
	call	far 38ADh:001Eh
	add	sp,2h
	mov	[bp+6h],al
	mov	ax,[21CAh]
	cmp	ax,2h
	jz	0E32h

l3431_0DFA:
	cmp	ax,8h
	jz	0E32h

l3431_0DFF:
	cmp	ax,20h
	jz	0E32h

l3431_0E04:
	cmp	ax,80h
	jz	0E4Eh

l3431_0E09:
	cmp	ax,100h
	jz	0E13h

l3431_0E0E:
	cmp	ax,300h
	jnz	0E70h

l3431_0E13:
	mov	al,[bp+6h]
	sub	ah,ah
	push	ax
	mov	ax,8h
	push	ax
	mov	ax,5F46h
	push	ds
	push	ax
	call	far 2017h:035Bh
	add	sp,8h
	cmp	ax,8h
	jnc	0E6Ah

l3431_0E2F:
	jmp	0E70h
3431:0E31    90                                            .              

l3431_0E32:
	mov	al,[bp+6h]
	sub	ah,ah
	push	ax
	mov	ax,4h
	push	ax
	mov	ax,5F50h
	push	ds
	push	ax
	call	far 2017h:035Bh
	add	sp,8h
	cmp	ax,4h
	jmp	0E68h

l3431_0E4E:
	mov	al,[bp+6h]
	sub	ah,ah
	push	ax
	mov	ax,3h
	push	ax
	mov	ax,5F56h
	push	ds
	push	ax
	call	far 2017h:035Bh
	add	sp,8h
	cmp	ax,3h

l3431_0E68:
	jc	0E70h

l3431_0E6A:
	mov	ax,1h
	pop	bp
	retf
3431:0E6F                                              90                .

l3431_0E70:
	sub	ax,ax
	pop	bp
	retf

;; fn3431_0E74: 3431:0E74
;;   Called from:
;;     3431:16BB (in fn3431_1624)
fn3431_0E74 proc
	push	bp
	mov	bp,sp
	sub	sp,18h
	push	si
	mov	ax,[0EEEh]
	inc	ax
	mov	cx,[0EF0h]
	inc	cx
	mul	cx
	mov	[bp-2h],ax
	mov	ax,[21CAh]
	and	ax,0Ah
	mov	[bp-4h],ax
	sub	ax,ax
	mov	[bp-0Ch],ax
	mov	[bp-0Eh],ax
	mov	byte ptr [bp-6h],20h
	cmp	[21F0h],ax
	jz	0F07h

l3431_0EA4:
	cmp	[21E0h],ax
	jnz	0F07h

l3431_0EAA:
	mov	[bp-14h],ax
	jmp	0EB3h
3431:0EAF                                              90                .

l3431_0EB0:
	inc	word ptr [bp-14h]

l3431_0EB3:
	mov	bx,[bp-14h]
	les	si,[bp+6h]
	cmp	byte ptr es:[bx+si],20h
	jz	0EB0h

l3431_0EBF:
	push	es
	push	si
	call	far 2017h:03F5h
	add	sp,4h
	mov	[bp-16h],ax
	mov	si,ax
	sub	si,[bp-14h]
	push	si
	mov	ax,[bp-14h]
	add	ax,[bp+6h]
	mov	dx,[bp+8h]
	push	dx
	push	ax
	push	dx
	push	word ptr [bp+6h]
	call	far 2017h:0258h
	add	sp,0Ah
	push	word ptr [bp-14h]
	mov	ax,20h
	push	ax
	mov	ax,[bp+6h]
	mov	dx,[bp+8h]
	add	ax,si
	push	dx
	push	ax
	call	far 2017h:0228h
	add	sp,8h
	mov	word ptr [bp+0Ah],0h

l3431_0F07:
	mov	ax,[bp-2h]
	cmp	[bp-0Eh],ax
	jl	0F3Eh

l3431_0F0F:
	cmp	word ptr [21EEh],0h
	jnz	0F19h

l3431_0F16:
	jmp	122Ah

l3431_0F19:
	mov	word ptr [bp-14h],1h

l3431_0F1E:
	mov	ax,[bp-0Eh]
	cmp	[bp-14h],ax
	jl	0F29h

l3431_0F26:
	jmp	121Ch

l3431_0F29:
	mov	bx,[bp-14h]
	les	si,[218Ah]
	cmp	byte ptr es:[bx+si],20h
	jz	0F39h

l3431_0F36:
	jmp	121Ch

l3431_0F39:
	inc	word ptr [bp-14h]
	jmp	0F1Eh

l3431_0F3E:
	cmp	word ptr [21DEh],0h
	jz	0F52h

l3431_0F45:
	mov	bx,[bp-0Ch]
	les	si,[21DAh]
	mov	al,es:[bx+si]
	jmp	0F54h
3431:0F51    90                                            .              

l3431_0F52:
	mov	al,23h

l3431_0F54:
	mov	[bp-0Ah],al
	cmp	word ptr [bp+0Ah],0h
	jl	0F68h

l3431_0F5D:
	mov	bx,[bp+0Ah]
	les	si,[bp+6h]
	mov	al,es:[bx+si]
	jmp	0F6Ah

l3431_0F68:
	mov	al,20h

l3431_0F6A:
	mov	[bp-8h],al
	cmp	word ptr [bp-4h],0h
	jz	0FACh

l3431_0F73:
	or	al,al
	jnz	0FACh

l3431_0F77:
	cmp	word ptr [21DEh],0h
	jz	0FACh

l3431_0F7E:
	cmp	byte ptr [bp-0Ah],0h
	jz	0FACh

l3431_0F84:
	cmp	byte ptr [bp-0Ah],0h
	jz	0F0Fh

l3431_0F8A:
	mov	bx,[bp-0Eh]
	inc	word ptr [bp-0Eh]
	les	si,[218Ah]
	mov	al,[bp-0Ah]
	mov	es:[bx+si],al
	inc	word ptr [bp-0Ch]
	mov	bx,[bp-0Ch]
	les	si,[21DAh]
	mov	al,es:[bx+si]
	mov	[bp-0Ah],al
	jmp	0F84h

l3431_0FAC:
	cmp	byte ptr [bp-8h],0h
	jnz	0FB5h

l3431_0FB2:
	jmp	0F0Fh

l3431_0FB5:
	cmp	byte ptr [bp-0Ah],0h
	jnz	0FBEh

l3431_0FBB:
	jmp	0F0Fh

l3431_0FBE:
	mov	al,[bp-0Ah]
	sub	ah,ah
	push	ax
	push	cs
	call	0DDEh
	add	sp,2h
	or	ax,ax
	jnz	0FD2h

l3431_0FCF:
	jmp	10FEh

l3431_0FD2:
	cmp	word ptr [bp-4h],0h
	jz	1008h

l3431_0FD8:
	cmp	byte ptr [bp-0Ah],2Eh
	jnz	1008h

l3431_0FDE:
	cmp	word ptr [21F4h],0h
	jnz	1008h

l3431_0FE5:
	cmp	word ptr [21E0h],0h
	jnz	0FF6h

l3431_0FEC:
	cmp	word ptr [21F6h],0h
	jz	0FF6h

l3431_0FF3:
	jmp	1143h

l3431_0FF6:
	mov	bx,[bp-0Eh]
	inc	word ptr [bp-0Eh]
	les	si,[218Ah]
	mov	byte ptr es:[bx+si],2Eh
	jmp	1184h
3431:1007                      90                                .        

l3431_1008:
	cmp	word ptr [21E0h],0h
	jz	103Eh

l3431_100F:
	cmp	word ptr [bp-4h],0h
	jnz	1018h

l3431_1015:
	jmp	1184h

l3431_1018:
	cmp	byte ptr [bp-8h],2Dh
	jz	1021h

l3431_101E:
	jmp	1184h

l3431_1021:
	cmp	byte ptr [bp-0Ah],2Ch
	jz	102Ah

l3431_1027:
	jmp	1184h

l3431_102A:
	mov	bx,[bp-0Eh]
	inc	word ptr [bp-0Eh]
	les	si,[218Ah]
	mov	al,[bp-8h]

l3431_1037:
	mov	es:[bx+si],al
	jmp	1184h
3431:103D                                        90                    .  

l3431_103E:
	cmp	word ptr [bp-4h],0h
	jz	10B6h

l3431_1044:
	cmp	byte ptr [bp-0Ah],2Ch
	jnz	10B6h

l3431_104A:
	mov	al,[bp-6h]
	sub	ah,ah
	push	ax
	call	far 38ADh:0040h
	add	sp,2h
	test	al,2h
	jnz	10B6h

l3431_105C:
	cmp	byte ptr [bp-6h],2Bh
	jz	1068h

l3431_1062:
	cmp	byte ptr [bp-6h],2Dh
	jnz	10A6h

l3431_1068:
	cmp	word ptr [21DEh],0h
	jz	109Ah

l3431_106F:
	mov	si,[bp-0Ch]
	les	bx,[21DAh]
	mov	al,es:[bx+si-1h]
	mov	[bp-18h],al
	cmp	al,24h
	jz	1085h

l3431_1081:
	cmp	al,2Ah
	jnz	109Ah

l3431_1085:
	mov	si,[bp-0Ch]
	mov	al,es:[bx+si-1h]
	mov	si,[bp-0Eh]
	les	bx,[218Ah]
	mov	es:[bx+si-1h],al
	jmp	10A6h
3431:1099                            90                            .      

l3431_109A:
	mov	si,[bp-0Eh]
	les	bx,[218Ah]
	mov	byte ptr es:[bx+si-1h],20h

l3431_10A6:
	mov	bx,[bp-0Eh]
	inc	word ptr [bp-0Eh]
	les	si,[218Ah]
	mov	al,[bp-6h]
	jmp	10DAh
3431:10B5                90                                    .          

l3431_10B6:
	cmp	word ptr [bp-4h],0h
	jz	10E0h

l3431_10BC:
	cmp	byte ptr [bp-0Ah],2Ch
	jnz	10E0h

l3431_10C2:
	cmp	word ptr [21F6h],0h
	jz	10CEh

l3431_10C9:
	mov	al,2Eh
	jmp	10D0h
3431:10CD                                        90                    .  

l3431_10CE:
	mov	al,2Ch

l3431_10D0:
	mov	bx,[bp-0Eh]
	inc	word ptr [bp-0Eh]
	les	si,[218Ah]

l3431_10DA:
	mov	es:[bx+si],al
	jmp	1187h

l3431_10E0:
	mov	bx,[bp-0Eh]
	inc	word ptr [bp-0Eh]
	les	si,[218Ah]
	mov	al,[bp-0Ah]
	mov	es:[bx+si],al
	cmp	word ptr [21FCh],0h
	jz	10FAh

l3431_10F7:
	jmp	1187h

l3431_10FA:
	jmp	1184h
3431:10FD                                        90                    .  

l3431_10FE:
	mov	al,[bp-0Ah]
	sub	ah,ah
	cmp	ax,24h
	jnz	110Bh

l3431_1108:
	jmp	119Ch

l3431_110B:
	cmp	ax,2Ah
	jnz	1113h

l3431_1110:
	jmp	119Ch

l3431_1113:
	cmp	ax,59h
	jz	1154h

l3431_1118:
	cmp	ax,79h
	jz	1154h

l3431_111D:
	cmp	word ptr [21F6h],0h
	jnz	1127h

l3431_1124:
	jmp	11EEh

l3431_1127:
	cmp	word ptr [bp-4h],0h
	jnz	1130h

l3431_112D:
	jmp	11EEh

l3431_1130:
	cmp	word ptr [21E0h],0h
	jz	113Ah

l3431_1137:
	jmp	11D8h

l3431_113A:
	cmp	byte ptr [bp-8h],2Eh
	jz	1143h

l3431_1140:
	jmp	11D8h

l3431_1143:
	mov	bx,[bp-0Eh]
	inc	word ptr [bp-0Eh]
	les	si,[218Ah]
	mov	byte ptr es:[bx+si],2Ch
	jmp	1184h
3431:1153          90                                        .            

l3431_1154:
	mov	al,[bp-8h]
	sub	ah,ah
	push	ax
	call	far 38ADh:0040h
	add	sp,2h
	test	al,8h
	jz	1176h

l3431_1166:
	mov	bx,[bp-0Eh]
	inc	word ptr [bp-0Eh]
	les	si,[218Ah]
	mov	byte ptr es:[bx+si],59h
	jmp	1184h

l3431_1176:
	mov	bx,[bp-0Eh]
	inc	word ptr [bp-0Eh]
	les	si,[218Ah]
	mov	byte ptr es:[bx+si],4Eh

l3431_1184:
	inc	word ptr [bp+0Ah]

l3431_1187:
	inc	word ptr [bp-0Ch]
	mov	si,[bp-0Eh]
	les	bx,[218Ah]
	mov	al,es:[bx+si-1h]
	mov	[bp-6h],al
	jmp	0F07h
3431:119B                                  90                        .    

l3431_119C:
	cmp	word ptr [21E0h],0h
	jz	11BEh

l3431_11A3:
	mov	al,[bp-0Ah]
	cmp	[bp-8h],al
	jz	11AEh

l3431_11AB:
	jmp	111Dh

l3431_11AE:
	mov	bx,[bp-0Eh]
	inc	word ptr [bp-0Eh]
	les	si,[218Ah]
	mov	byte ptr es:[bx+si],20h
	jmp	1184h

l3431_11BE:
	cmp	byte ptr [bp-8h],20h
	jz	11C7h

l3431_11C4:
	jmp	111Dh

l3431_11C7:
	mov	bx,[bp-0Eh]
	inc	word ptr [bp-0Eh]
	les	si,[218Ah]
	mov	al,[bp-0Ah]
	jmp	1037h
3431:11D7                      90                                .        

l3431_11D8:
	cmp	word ptr [21E0h],0h
	jnz	11E2h

l3431_11DF:
	jmp	102Ah

l3431_11E2:
	cmp	byte ptr [bp-8h],2Ch
	jnz	11EBh

l3431_11E8:
	jmp	0FF6h

l3431_11EB:
	jmp	102Ah

l3431_11EE:
	cmp	word ptr [21FAh],0h
	jnz	11FBh

l3431_11F5:
	cmp	byte ptr [bp-0Ah],21h
	jnz	120Ch

l3431_11FB:
	mov	al,[bp-8h]
	sub	ah,ah
	push	ax
	call	far 38ADh:001Eh
	add	sp,2h
	jmp	120Fh
3431:120B                                  90                        .    

l3431_120C:
	mov	al,[bp-8h]

l3431_120F:
	mov	bx,[bp-0Eh]
	inc	word ptr [bp-0Eh]
	les	si,[218Ah]
	jmp	1037h

l3431_121C:
	mov	si,[bp-14h]
	les	bx,[218Ah]
	mov	byte ptr es:[bx+si-1h],28h
	jmp	1239h

l3431_122A:
	cmp	word ptr [21ECh],0h
	jz	1247h

l3431_1231:
	les	bx,[218Ah]
	mov	byte ptr es:[bx],28h

l3431_1239:
	mov	bx,[bp-0Eh]
	inc	word ptr [bp-0Eh]
	mov	si,[218Ah]
	mov	byte ptr es:[bx+si],29h

l3431_1247:
	cmp	word ptr [21E8h],0h
	jz	126Ch

l3431_124E:
	mov	ax,5F5Ah
	push	ds
	push	ax
	mov	ax,[bp-0Eh]
	add	ax,[218Ah]
	mov	dx,[218Ch]
	push	dx
	push	ax
	call	far 2017h:01BAh
	add	sp,8h
	add	word ptr [bp-0Eh],3h

l3431_126C:
	cmp	word ptr [21EAh],0h
	jz	1291h

l3431_1273:
	mov	ax,5F5Eh
	push	ds
	push	ax
	mov	ax,[bp-0Eh]
	add	ax,[218Ah]
	mov	dx,[218Ch]
	push	dx
	push	ax
	call	far 2017h:01BAh
	add	sp,8h
	add	word ptr [bp-0Eh],3h

l3431_1291:
	mov	bx,[bp-0Eh]
	les	si,[218Ah]
	mov	byte ptr es:[bx+si],0h
	mov	ax,bx
	mov	[21D0h],ax
	cmp	word ptr [bp-4h],0h
	jnz	130Bh

l3431_12A7:
	cmp	word ptr [21F6h],0h
	jz	130Bh

l3431_12AE:
	cmp	word ptr [21E0h],0h
	jz	12C4h

l3431_12B5:
	cmp	word ptr [21FCh],0h
	jz	12C4h

l3431_12BC:
	mov	word ptr [bp+0Ah],2h
	jmp	12C9h
3431:12C3          90                                        .            

l3431_12C4:
	mov	word ptr [bp+0Ah],3h

l3431_12C9:
	mov	bx,[218Ah]
	mov	al,es:[bx]
	mov	[bp-10h],al
	mov	al,es:[bx+1h]
	mov	[bp-12h],al
	mov	ax,2h
	push	ax
	mov	ax,[bp+0Ah]
	add	ax,bx
	mov	dx,es
	push	dx
	push	ax
	push	dx
	push	bx
	call	far 2017h:0258h
	add	sp,0Ah
	mov	bx,[bp+0Ah]
	les	si,[218Ah]
	mov	al,[bp-10h]
	mov	es:[bx+si],al
	mov	si,bx
	mov	bx,[218Ah]
	mov	al,[bp-12h]
	mov	es:[bx+si+1h],al

l3431_130B:
	cmp	word ptr [21F2h],0h
	jz	1336h

l3431_1312:
	cmp	word ptr [21E0h],0h
	jnz	1336h

l3431_1319:
	mov	word ptr [bp-0Eh],0h
	jmp	132Eh

l3431_1320:
	mov	bx,[bp-0Eh]
	les	si,[218Ah]
	mov	byte ptr es:[bx+si],20h
	inc	word ptr [bp-0Eh]

l3431_132E:
	mov	ax,[21D0h]
	cmp	[bp-0Eh],ax
	jl	1320h

l3431_1336:
	pop	si
	mov	sp,bp
	pop	bp
	retf
3431:133B                                  90                        .    

;; fn3431_133C: 3431:133C
;;   Called from:
;;     3431:166B (in fn3431_1624)
fn3431_133C proc
	push	bp
	mov	bp,sp
	sub	sp,2h
	push	si
	sub	ax,ax
	mov	[21F0h],ax
	mov	[21EEh],ax
	mov	[21ECh],ax
	mov	[21EAh],ax
	mov	[21E8h],ax
	mov	[21FAh],ax
	mov	[21F8h],ax
	mov	[21F6h],ax
	mov	[21F4h],ax
	mov	[21F2h],ax
	mov	[21E2h],ax
	mov	[21DEh],ax
	mov	[21E0h],ax
	mov	[21FCh],ax
	mov	[21E6h],ax
	mov	[21FEh],ax
	les	bx,[bp+6h]
	cmp	byte ptr es:[bx],40h
	jz	1381h

l3431_137E:
	jmp	14B9h

l3431_1381:
	jmp	149Ah

l3431_1384:
	cmp	al,20h
	jnz	138Bh

l3431_1388:
	jmp	14ADh

l3431_138B:
	sub	ah,ah
	push	ax
	call	far 38ADh:001Eh
	add	sp,2h
	sub	ah,ah
	cmp	ax,43h
	jz	13BEh

l3431_139D:
	jbe	13A2h

l3431_139F:
	jmp	146Ch

l3431_13A2:
	cmp	ax,21h
	jz	1418h

l3431_13A7:
	cmp	ax,28h
	jz	13D2h

l3431_13AC:
	cmp	ax,29h
	jz	13DCh

l3431_13B1:
	cmp	ax,41h
	jz	140Eh

l3431_13B6:
	cmp	ax,42h
	jz	13E6h

l3431_13BB:
	jmp	149Ah

l3431_13BE:
	mov	word ptr [21E8h],1h
	jmp	149Ah
3431:13C7                      90                                .        

l3431_13C8:
	mov	word ptr [21EAh],1h
	jmp	149Ah
3431:13D1    90                                            .              

l3431_13D2:
	mov	word ptr [21ECh],1h
	jmp	149Ah
3431:13DB                                  90                        .    

l3431_13DC:
	mov	word ptr [21EEh],1h
	jmp	149Ah
3431:13E5                90                                    .          

l3431_13E6:
	mov	word ptr [21F0h],1h
	jmp	149Ah
3431:13EF                                              90                .

l3431_13F0:
	mov	word ptr [21F2h],1h
	jmp	149Ah
3431:13F9                            90                            .      

l3431_13FA:
	mov	word ptr [21F4h],1h
	jmp	149Ah
3431:1403          90                                        .            

l3431_1404:
	mov	word ptr [21F6h],1h
	jmp	149Ah
3431:140D                                        90                    .  

l3431_140E:
	mov	word ptr [21F8h],1h
	jmp	149Ah
3431:1417                      90                                .        

l3431_1418:
	mov	word ptr [21FAh],1h
	jmp	149Ah
3431:1420 90 90                                           ..              

l3431_1422:
	mov	word ptr [21FCh],1h
	jmp	149Ah

l3431_142A:
	mov	word ptr [21E6h],1h
	jmp	149Ah

l3431_1432:
	les	bx,[bp+6h]
	mov	al,es:[bx]
	sub	ah,ah
	mov	si,ax
	push	si
	call	far 38ADh:0040h
	add	sp,2h
	test	al,2h
	jz	1466h

l3431_1449:
	mov	ax,0Ah
	mul	word ptr [21FEh]
	mov	[21FEh],ax
	lea	ax,[si-30h]
	add	[21FEh],ax

l3431_145A:
	inc	word ptr [bp+6h]
	les	bx,[bp+6h]
	cmp	byte ptr es:[bx],0h
	jnz	1432h

l3431_1466:
	dec	word ptr [bp+6h]
	jmp	149Ah
3431:146B                                  90                        .    

l3431_146C:
	cmp	ax,4Bh
	jz	142Ah

l3431_1471:
	ja	1480h

l3431_1473:
	cmp	ax,44h
	jz	13FAh

l3431_1478:
	cmp	ax,45h
	jz	1404h

l3431_147D:
	jmp	149Ah
3431:147F                                              90                .

l3431_1480:
	cmp	ax,52h
	jz	1422h

l3431_1485:
	cmp	ax,53h
	jz	145Ah

l3431_148A:
	cmp	ax,58h
	jnz	1492h

l3431_148F:
	jmp	13C8h

l3431_1492:
	cmp	ax,5Ah
	jnz	149Ah

l3431_1497:
	jmp	13F0h

l3431_149A:
	inc	word ptr [bp+6h]
	les	bx,[bp+6h]
	mov	al,es:[bx]
	mov	[bp-2h],al
	or	al,al
	jz	14ADh

l3431_14AA:
	jmp	1384h

l3431_14AD:
	les	bx,[bp+6h]
	cmp	byte ptr es:[bx],20h
	jnz	14B9h

l3431_14B6:
	inc	word ptr [bp+6h]

l3431_14B9:
	mov	ax,[21CAh]
	cmp	ax,2h
	jz	14DCh

l3431_14C1:
	cmp	ax,8h
	jz	14DCh

l3431_14C6:
	cmp	ax,20h
	jz	1548h

l3431_14CB:
	cmp	ax,80h
	jz	14E2h

l3431_14D0:
	cmp	ax,100h
	jz	1550h

l3431_14D5:
	cmp	ax,300h
	jz	1550h

l3431_14DA:
	jmp	14F4h

l3431_14DC:
	mov	word ptr [21E6h],1h

l3431_14E2:
	mov	word ptr [21FCh],1h
	mov	word ptr [21F8h],0h
	mov	word ptr [21FAh],0h

l3431_14F4:
	test	byte ptr [21CAh],20h
	jnz	1510h

l3431_14FB:
	cmp	word ptr [21F4h],0h
	jnz	1510h

l3431_1502:
	cmp	word ptr [21F6h],0h
	jz	1569h

l3431_1509:
	test	byte ptr [21CAh],0Ah
	jnz	1569h

l3431_1510:
	push	word ptr [128Eh]
	sub	ax,ax
	push	ax
	push	ax
	mov	ax,2192h
	push	ds
	push	ax
	call	far 38D6h:06FAh
	add	sp,0Ah
	mov	ax,2192h
	mov	[bp+6h],ax
	mov	[bp+8h],ds

l3431_152E:
	les	bx,[bp+6h]
	mov	al,es:[bx]
	mov	[bp-2h],al
	or	al,al
	jz	1560h

l3431_153B:
	cmp	al,20h
	jnz	1543h

l3431_153F:
	mov	byte ptr es:[bx],39h

l3431_1543:
	inc	word ptr [bp+6h]
	jmp	152Eh

l3431_1548:
	sub	ax,ax
	mov	[21FCh],ax
	mov	[21FAh],ax

l3431_1550:
	sub	ax,ax
	mov	[21F0h],ax
	mov	[21ECh],ax
	mov	[21EAh],ax
	mov	[21E8h],ax
	jmp	14F4h

l3431_1560:
	mov	ax,2192h
	mov	[bp+6h],ax
	mov	[bp+8h],ds

l3431_1569:
	les	bx,[bp+6h]
	cmp	byte ptr es:[bx],1h
	sbb	ax,ax
	inc	ax
	mov	[21DEh],ax
	mov	ax,bx
	mov	dx,es
	mov	[21DAh],ax
	mov	[21DCh],dx
	pop	si
	mov	sp,bp
	pop	bp
	retf
3431:1586                   55 8B EC 83 EC 04 83 3E B0 20       U......>. 
3431:1590 00 74 1B FF 76 0A FF 76 08 FF 76 06 0E E8 4E ED .t..v..v..v...N.
3431:15A0 83 C4 06 8B 46 0A 01 06 C4 21 8B E5 5D CB 9A 17 ....F....!..]...
3431:15B0 05 38 1F 8A C4 2A E4 89 46 FC EB 5D 9A 17 05 38 .8...*..F..]...8
3431:15C0 1F 2A E4 8B 0E F0 0E 2B C8 41 89 4E FE 8B 46 0A .*.....+.A.N..F.
3431:15D0 2B C1 1B C9 23 C1 03 46 FE 89 46 FE 50 FF 76 08 +...#..F..F.P.v.
3431:15E0 FF 76 06 9A 9F 04 38 1F 83 C4 06 8B 46 FE 29 46 .v....8.....F.)F
3431:15F0 0A 01 46 06 83 7E 0A 00 74 1F 8B 46 FC FF 46 FC ..F..~..t..F..F.
3431:1600 3B 06 EE 0E 75 05 C7 46 FC 00 00 2B C0 50 FF 76 ;...u..F...+.P.v
3431:1610 FC 9A E7 04 38 1F 83 C4 04 83 7E 0A 00 75 9D 8B ....8.....~..u..
3431:1620 E5 5D CB 90                                     .]..            

;; fn3431_1624: 3431:1624
;;   Called from:
;;     3431:3EB2 (in fn3431_3E9E)
fn3431_1624 proc
	push	bp
	mov	bp,sp
	sub	sp,0Ah
	push	di
	push	si
	les	bx,[bp+6h]
	test	byte ptr es:[bx],0Ah
	jz	164Eh

l3431_1635:
	cmp	word ptr [13ECh],0h
	jnz	1644h

l3431_163C:
	cmp	word ptr es:[bx+2h],0FFh
	jnz	164Eh

l3431_1644:
	push	es
	push	bx
	call	far 38D6h:0008h
	add	sp,4h

l3431_164E:
	les	bx,[bp+6h]
	mov	ax,es:[bx]
	mov	[21CAh],ax
	mov	ax,es:[bx+2h]
	mov	[21CCh],ax
	mov	ax,es:[bx+4h]
	mov	[21CEh],ax
	push	word ptr [bp+0Eh]
	push	word ptr [bp+0Ch]
	push	cs
	call	133Ch
	add	sp,4h
	cmp	word ptr [bp+0Ah],0h
	jz	1686h

l3431_1678:
	sub	ax,ax
	mov	[21EEh],ax
	mov	[21ECh],ax
	mov	[21EAh],ax
	mov	[21E8h],ax

l3431_1686:
	les	bx,[bp+6h]
	mov	ax,es:[bx]
	cmp	ax,2h
	jz	1702h

l3431_1691:
	cmp	ax,8h
	jnz	1699h

l3431_1696:
	jmp	172Bh

l3431_1699:
	cmp	ax,20h
	jnz	16A1h

l3431_169E:
	jmp	1964h

l3431_16A1:
	cmp	ax,80h
	jz	16DEh

l3431_16A6:
	cmp	ax,100h
	jz	16B0h

l3431_16AB:
	cmp	ax,300h
	jnz	16C2h

l3431_16B0:
	sub	ax,ax
	push	ax
	push	word ptr es:[bx+0Ah]
	push	word ptr es:[bx+8h]

l3431_16BB:
	push	cs
	call	0E74h
	add	sp,6h

l3431_16C2:
	cmp	word ptr [21FEh],0h
	jnz	16CCh

l3431_16C9:
	jmp	1988h

l3431_16CC:
	mov	ax,[21D0h]
	sub	ax,[21FEh]
	sbb	cx,cx
	and	ax,cx
	add	ax,[21FEh]
	jmp	198Bh

l3431_16DE:
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+8h],0h
	jz	16ECh

l3431_16E8:
	mov	al,54h
	jmp	16EEh

l3431_16EC:
	mov	al,46h

l3431_16EE:
	les	bx,[218Eh]
	mov	es:[bx],al
	mov	byte ptr es:[bx+1h],0h
	sub	ax,ax
	push	ax
	push	es
	push	bx
	jmp	16BBh
3431:1701    90                                            .              

l3431_1702:
	les	bx,[bp+6h]
	push	word ptr es:[bx+0Ah]
	push	word ptr es:[bx+8h]
	call	far 3CEEh:0CF7h
	add	sp,4h
	les	bx,[bp+6h]
	lea	di,[bx+8h]
	mov	si,ax
	push	ds
	mov	ds,dx
	movsw
	movsw
	movsw
	movsw
	pop	ds
	mov	word ptr es:[bx+4h],0h

l3431_172B:
	cmp	word ptr [21E8h],0h
	jz	1754h

l3431_1732:
	push	word ptr es:[bx+0Eh]
	push	word ptr es:[bx+0Ch]
	push	word ptr es:[bx+0Ah]
	push	word ptr es:[bx+8h]
	call	far 400Dh:00DEh
	add	sp,8h
	or	ax,ax
	jz	1754h

l3431_174E:
	mov	ax,1h
	jmp	1756h
3431:1753          90                                        .            

l3431_1754:
	sub	ax,ax

l3431_1756:
	mov	[21E8h],ax
	cmp	word ptr [21F2h],0h
	jz	1784h

l3431_1760:
	les	bx,[bp+6h]
	push	word ptr es:[bx+0Eh]
	push	word ptr es:[bx+0Ch]
	push	word ptr es:[bx+0Ah]
	push	word ptr es:[bx+8h]
	call	far 400Dh:0102h
	add	sp,8h
	or	ax,ax
	jz	1784h

l3431_177F:
	mov	ax,1h
	jmp	1786h

l3431_1784:
	sub	ax,ax

l3431_1786:
	mov	[21F2h],ax
	cmp	word ptr [21EAh],0h
	jnz	179Eh

l3431_1790:
	cmp	word ptr [21ECh],0h
	jnz	179Eh

l3431_1797:
	cmp	word ptr [21EEh],0h
	jz	17F9h

l3431_179E:
	les	bx,[bp+6h]
	push	word ptr es:[bx+0Eh]
	push	word ptr es:[bx+0Ch]
	push	word ptr es:[bx+0Ah]
	push	word ptr es:[bx+8h]
	call	far 400Dh:00DEh
	add	sp,8h
	mov	[bp-0Ah],ax
	or	ax,ax
	jz	17EEh

l3431_17C0:
	les	bx,[bp+6h]
	push	word ptr es:[bx+0Eh]
	push	word ptr es:[bx+0Ch]
	push	word ptr es:[bx+0Ah]
	push	word ptr es:[bx+8h]
	call	far 400Dh:017Eh
	add	sp,8h
	les	bx,[bp+6h]
	lea	di,[bx+8h]
	mov	si,ax
	push	ds
	mov	ds,dx
	movsw
	movsw
	movsw
	movsw
	pop	ds
	jmp	17F9h
3431:17ED                                        90                    .  

l3431_17EE:
	sub	ax,ax
	mov	[21EEh],ax
	mov	[21ECh],ax
	mov	[21EAh],ax

l3431_17F9:
	cmp	word ptr [21DEh],0h
	jnz	1803h

l3431_1800:
	jmp	18C6h

l3431_1803:
	sub	ax,ax
	mov	[bp-8h],ax
	mov	[bp-6h],ax
	jmp	182Bh
3431:180D                                        90                    .  

l3431_180E:
	cmp	byte ptr [bp-0Ah],2Eh
	jz	183Ch

l3431_1814:
	mov	al,[bp-0Ah]
	sub	ah,ah
	push	ax
	push	cs
	call	0DDEh
	add	sp,2h
	or	ax,ax
	jnz	1828h

l3431_1825:
	inc	word ptr [bp-8h]

l3431_1828:
	inc	word ptr [bp-6h]

l3431_182B:
	mov	bx,[bp-6h]
	les	si,[21DAh]
	mov	al,es:[bx+si]
	mov	[bp-0Ah],al
	or	al,al
	jnz	180Eh

l3431_183C:
	mov	ax,[bp-6h]
	mov	[21D6h],ax
	mov	word ptr [bp-2h],0h
	mov	bx,ax
	inc	word ptr [bp-6h]
	les	si,[21DAh]
	cmp	byte ptr es:[bx+si],0h
	jz	1880h

l3431_1856:
	jmp	186Fh

l3431_1858:
	mov	al,[bp-0Ah]
	sub	ah,ah
	push	ax
	push	cs
	call	0DDEh
	add	sp,2h
	or	ax,ax
	jnz	186Ch

l3431_1869:
	inc	word ptr [bp-2h]

l3431_186C:
	inc	word ptr [bp-6h]

l3431_186F:
	mov	bx,[bp-6h]
	les	si,[21DAh]
	mov	al,es:[bx+si]
	mov	[bp-0Ah],al
	or	al,al
	jnz	1858h

l3431_1880:
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+4h],0h
	jz	1892h

l3431_188A:
	mov	ax,es:[bx+4h]
	inc	ax
	jmp	1894h
3431:1891    90                                            .              

l3431_1892:
	sub	ax,ax

l3431_1894:
	mov	cx,es:[bx+2h]
	sub	cx,ax
	mov	[bp-4h],cx
	mov	ax,cx
	sub	ax,[bp-8h]
	mov	[21D4h],ax
	cmp	word ptr [bp-2h],0h
	jz	18B2h

l3431_18AB:
	mov	ax,[bp-2h]
	inc	ax
	jmp	18B4h
3431:18B1    90                                            .              

l3431_18B2:
	sub	ax,ax

l3431_18B4:
	add	[bp-4h],ax
	mov	ax,[bp-4h]
	mov	[21CCh],ax
	mov	ax,[bp-2h]
	mov	[21CEh],ax
	jmp	192Ch
3431:18C5                90                                    .          

l3431_18C6:
	cmp	word ptr [13ECh],0h
	jz	190Ch

l3431_18CD:
	cmp	word ptr [bp+0Ah],0h
	jnz	190Ch

l3431_18D3:
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+4h],0h
	jz	18E4h

l3431_18DD:
	mov	ax,es:[bx+4h]
	jmp	18E7h
3431:18E3          90                                        .            

l3431_18E4:
	mov	ax,0FFFFh

l3431_18E7:
	mov	cx,es:[bx+2h]
	sub	cx,ax
	add	cx,[13F8h]
	mov	[bp-4h],cx
	mov	ax,es:[bx+2h]
	sub	ax,cx
	sbb	cx,cx
	not	cx
	and	ax,cx
	add	ax,[bp-4h]
	mov	[bp-4h],ax
	mov	ax,[13F8h]
	jmp	191Ah
3431:190B                                  90                        .    

l3431_190C:
	les	bx,[bp+6h]
	mov	ax,es:[bx+2h]
	mov	[bp-4h],ax
	mov	ax,es:[bx+4h]

l3431_191A:
	mov	[bp-2h],ax
	mov	ax,[bp-4h]
	sub	ax,[bp-2h]
	mov	[21D6h],ax
	mov	word ptr [21D4h],0h

l3431_192C:
	push	word ptr [2190h]
	push	word ptr [218Eh]
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	les	bx,[bp+6h]
	push	word ptr es:[bx+0Eh]
	push	word ptr es:[bx+0Ch]
	push	word ptr es:[bx+0Ah]
	push	word ptr es:[bx+8h]
	call	far 3CEEh:0DA8h
	add	sp,10h
	push	word ptr [21D4h]

l3431_1959:
	push	word ptr [2190h]
	push	word ptr [218Eh]
	jmp	16BBh

l3431_1964:
	push	word ptr [128Eh]
	les	bx,[bp+6h]
	push	word ptr es:[bx+0Ah]
	push	word ptr es:[bx+8h]
	push	word ptr [2190h]
	push	word ptr [218Eh]
	call	far 38D6h:06FAh
	add	sp,0Ah
	sub	ax,ax
	push	ax
	jmp	1959h

l3431_1988:
	mov	ax,[21D0h]

l3431_198B:
	mov	[21D2h],ax
	pop	si
	pop	di
	mov	sp,bp
	pop	bp
	retf
3431:1994             83 3E BC 12 00 74 03 E9 1E 01 A1 AA     .>...t......
3431:19A0 12 3D 02 00 74 34 3D 08 00 75 03 E9 80 00 3D 20 .=..t4=..u....= 
3431:19B0 00 75 03 E9 D6 00 3D 80 00 75 03 E9 B6 00 3D 00 .u....=..u....=.
3431:19C0 01 74 08 3D 00 03 74 03 E9 1B 01 FF 36 AC 12 FF .t.=..t.....6...
3431:19D0 36 B4 12 FF 36 B2 12 E9 05 01 83 3E EC 13 00 75 6...6......>...u
3431:19E0 08 81 3E AC 12 FF 00 75 0F B8 AA 12 1E 50 9A 08 ..>....u.....P..
3431:19F0 00 D6 38 83 C4 04 EB 06 C7 06 AE 12 00 00 FF 36 ..8............6
3431:1A00 AE 12 FF 36 AC 12 FF 36 B4 12 FF 36 B2 12 FF 36 ...6...6...6...6
3431:1A10 90 21 FF 36 8E 21 9A FC 0E EE 3C 83 C4 0C FF 36 .!.6.!....<....6
3431:1A20 AC 12 FF 36 90 21 FF 36 8E 21 E9 B2 00 90 83 3E ...6.!.6.!.....>
3431:1A30 EC 13 00 75 08 81 3E AC 12 FF 00 75 0D B8 AA 12 ...u..>....u....
3431:1A40 1E 50 9A 08 00 D6 38 83 C4 04 FF 36 90 21 FF 36 .P....8....6.!.6
3431:1A50 8E 21 FF 36 AE 12 FF 36 AC 12 FF 36 B8 12 FF 36 .!.6...6...6...6
3431:1A60 B6 12 FF 36 B4 12 FF 36 B2 12 9A A8 0D EE 3C 83 ...6...6......<.
3431:1A70 C4 10 EB AA B8 01 00 50 83 3E B2 12 00 74 05 B8 .......P.>...t..
3431:1A80 62 5F EB 03 B8 64 5F 1E 50 EB 54 90 FF 36 8E 12 b_...d_.P.T..6..
3431:1A90 FF 36 B4 12 FF 36 B2 12 FF 36 8C 21 FF 36 8A 21 .6...6...6.!.6.!
3431:1AA0 9A FA 06 D6 38 83 C4 0A FF 36 8C 21 FF 36 8A 21 ....8....6.!.6.!
3431:1AB0 9A F5 03 17 20 83 C4 04 50 EB 1C 90 FF 36 C4 12 .... ...P....6..
3431:1AC0 FF 36 C2 12 2B C0 50 B8 AA 12 1E 50 0E E8 54 FB .6..+.P....P..T.
3431:1AD0 83 C4 0A FF 36 D0 21 FF 36 8C 21 FF 36 8A 21 0E ....6.!.6.!.6.!.
3431:1AE0 E8 A3 FA 83 C4 06 CB 90 55 8B EC 83 EC 04 83 7E ........U......~
3431:1AF0 0C 00 74 0C 83 3E 9E 20 00 74 05 9A FA 07 38 1F ..t..>. .t....8.
3431:1B00 9A 17 05 38 1F 8A C4 2A E4 89 46 FC EB 64 9A 17 ...8...*..F..d..
3431:1B10 05 38 1F 2A E4 8B 0E F0 0E 2B C8 41 89 4E FE 8B .8.*.....+.A.N..
3431:1B20 46 0A 3B C1 7E 02 8B C1 89 46 FE 50 8B 46 08 03 F.;.~....F.P.F..
3431:1B30 06 8A 21 8B 16 8C 21 52 50 9A 9F 04 38 1F 83 C4 ..!...!RP...8...
3431:1B40 06 8B 46 FE 29 46 0A 01 46 08 83 7E 0A 00 74 22 ..F.)F..F..~..t"
3431:1B50 8B 46 FC FF 46 FC 3B 06 EE 0E 75 08 C7 46 0A 00 .F..F.;...u..F..
3431:1B60 00 EB 0F 90 FF 76 06 FF 76 FC 9A E7 04 38 1F 83 .....v..v....8..
3431:1B70 C4 04 83 7E 0A 00 75 96 83 7E 0C 00 74 0C 83 3E ...~..u..~..t..>
3431:1B80 9E 20 00 74 05 9A E7 07 38 1F 8B E5 5D CB 55 8B . .t....8...].U.
3431:1B90 EC 83 EC 04 C4 5E 06 26 83 7F 08 00 74 42 26 C4 .....^.&....tB&.
3431:1BA0 5F 04 26 C4 5F 04 26 8B 47 06 26 8B 57 08 89 46 _.&._.&.G.&.W..F
3431:1BB0 FC 89 56 FE B8 01 00 50 C4 5E 06 26 8B 47 08 8B ..V....P.^.&.G..
3431:1BC0 C8 D1 E0 03 C1 D1 E0 03 C1 D1 E0 03 46 FC 2D 0E ............F.-.
3431:1BD0 00 52 50 9A 9E 05 68 23 83 C4 06 8B E5 5D CB 90 .RP...h#.....]..
3431:1BE0 C4 5E 06 26 83 7F 0A FF 75 12 B8 01 00 50 26 C4 .^.&....u....P&.
3431:1BF0 5F 04 26 FF 77 06 26 FF 77 04 EB D7 C4 5E 06 26 _.&.w.&.w....^.&
3431:1C00 FF 77 0A 26 FF 77 06 26 FF 77 04 9A 8A 06 68 23 .w.&.w.&.w....h#
3431:1C10 83 C4 06 52 50 9A 28 1A 44 26 83 C4 04 8B E5 5D ...RP.(.D&.....]
3431:1C20 CB 90 55 8B EC 83 EC 0A C4 5E 06 26 83 7F 08 00 ..U......^.&....
3431:1C30 74 38 26 C4 5F 04 26 C4 5F 04 26 8B 47 06 26 8B t8&._.&._.&.G.&.
3431:1C40 57 08 89 46 F6 89 56 F8 C4 5E 06 26 8B 47 08 8B W..F..V..^.&.G..
3431:1C50 C8 D1 E0 03 C1 D1 E0 03 C1 D1 E0 03 46 F6 2D 0E ............F.-.
3431:1C60 00 52 50 9A F4 04 68 23 EB 36 C4 5E 06 26 83 7F .RP...h#.6.^.&..
3431:1C70 0A FF 75 0E 26 C4 5F 04 26 FF 77 06 26 FF 77 04 ..u.&._.&.w.&.w.
3431:1C80 EB E1 C4 5E 06 26 FF 77 0A 26 FF 77 06 26 FF 77 ...^.&.w.&.w.&.w
3431:1C90 04 9A 8A 06 68 23 83 C4 06 52 50 9A C8 17 44 26 ....h#...RP...D&
3431:1CA0 83 C4 04 C4 1E 96 12 26 F7 07 00 01 74 57 26 83 .......&....tW&.
3431:1CB0 7F 0C 00 75 50 26 8B 47 02 40 89 46 FA 50 8D 46 ...uP&.G.@.F.P.F
3431:1CC0 FC 16 50 9A 96 06 DC 21 83 C4 06 0B C0 74 36 FF ..P....!.....t6.
3431:1CD0 76 FA C4 1E 96 12 26 FF 77 0A 26 FF 77 08 FF 76 v.....&.w.&.w..v
3431:1CE0 FE FF 76 FC 9A EC 02 17 20 83 C4 0A C4 1E 96 12 ..v..... .......
3431:1CF0 8B 46 FC 8B 56 FE 26 89 47 08 26 89 57 0A 8B 46 .F..V.&.G.&.W..F
3431:1D00 FA 26 89 47 0C 8B E5 5D CB 90 55 8B EC FF 76 08 .&.G...]..U...v.
3431:1D10 FF 76 06 0E E8 0B FF 83 C4 04 C4 5E 06 26 FF 77 .v.........^.&.w
3431:1D20 0E 26 FF 77 0C B8 01 00 50 FF 36 98 12 FF 36 96 .&.w....P.6...6.
3431:1D30 12 0E E8 EF F8 83 C4 0A 9A 3C 03 68 23 5D CB 90 .........<.h#]..
3431:1D40 55 8B EC 83 EC 0A 56 A1 C6 21 8B 16 C8 21 89 46 U.....V..!...!.F
3431:1D50 FA 89 56 FC C4 5E FA 26 8B 47 04 26 39 47 02 75 ..V..^.&.G.&9G.u
3431:1D60 74 05 10 00 89 46 FE D1 E0 D1 E0 50 9A 7E 09 DC t....F.....P.~..
3431:1D70 21 83 C4 02 89 46 F6 89 56 F8 C4 5E FA 26 83 7F !....F..V..^.&..
3431:1D80 04 00 74 39 26 8B 47 04 D1 E0 D1 E0 50 26 FF 77 ..t9&.G.....P&.w
3431:1D90 08 26 FF 77 06 52 FF 76 F6 9A EC 02 17 20 83 C4 .&.w.R.v..... ..
3431:1DA0 0A C4 5E FA 26 8B 47 04 D1 E0 D1 E0 50 26 FF 77 ..^.&.G.....P&.w
3431:1DB0 08 26 FF 77 06 9A B4 09 DC 21 83 C4 06 C4 5E FA .&.w.....!....^.
3431:1DC0 8B 46 F6 8B 56 F8 26 89 47 06 26 89 57 08 8B 46 .F..V.&.G.&.W..F
3431:1DD0 FE 26 89 47 04 26 8B 5F 02 D1 E3 D1 E3 8B 76 FA .&.G.&._......v.
3431:1DE0 26 C4 74 06 8B 46 06 8B 56 08 26 89 00 26 89 50 &.t..F..V.&..&.P
3431:1DF0 02 C4 5E FA 26 FF 47 02 83 3E 9C 20 00 74 11 B8 ..^.&.G..>. .t..
3431:1E00 01 00 50 B8 B6 20 1E 50 9A 9F 04 38 1F 83 C4 06 ..P.. .P...8....
3431:1E10 FF 76 08 FF 76 06 0E E8 F0 FE 83 C4 04 83 3E 9E .v..v.........>.
3431:1E20 20 00 74 05 9A 0D 08 38 1F 2B C0 50 FF 36 D2 21  .t....8.+.P.6.!
3431:1E30 50 C4 5E 06 26 FF 77 02 0E E8 AC FC 83 C4 08 83 P.^.&.w.........
3431:1E40 3E 9E 20 00 74 05 9A E7 07 38 1F 83 3E 9C 20 00 >. .t....8..>. .
3431:1E50 74 11 B8 01 00 50 B8 B7 20 1E 50 9A 9F 04 38 1F t....P.. .P...8.
3431:1E60 83 C4 06 5E 8B E5 5D CB 55 8B EC 83 EC 14 56 C4 ...^..].U.....V.
3431:1E70 1E 96 12 26 8B 47 08 26 8B 57 0A 89 46 F0 89 56 ...&.G.&.W..F..V
3431:1E80 F2 26 8B 47 0C 89 46 F8 26 8B 47 0E 89 46 F4 C7 .&.G..F.&.G..F..
3431:1E90 46 FA 01 00 2B C0 89 46 FE 89 46 FC 39 46 F4 74 F...+..F..F.9F.t
3431:1EA0 2F C4 5E F0 26 C4 5F 04 26 8B 47 06 26 8B 57 08 /.^.&._.&.G.&.W.
3431:1EB0 89 46 EC 89 56 EE 8B 76 F4 8B C6 D1 E6 03 F0 D1 .F..V..v........
3431:1EC0 E6 03 F0 D1 E6 C4 5E EC 26 83 78 F2 00 EB 74 90 ......^.&.x...t.
3431:1ED0 83 7E F8 00 75 3C FF 36 FC 12 FF 76 F2 FF 76 F0 .~..u<.6...v..v.
3431:1EE0 9A 8A 06 68 23 83 C4 06 0B D0 74 08 A1 FC 12 89 ...h#.....t.....
3431:1EF0 46 F8 EB 56 C4 5E F0 26 8B 47 04 26 0B 47 06 74 F..V.^.&.G.&.G.t
3431:1F00 44 26 C4 5F 04 26 83 3F 00 74 3A C7 46 F8 FF FF D&._.&.?.t:.F...
3431:1F10 EB 38 83 7E F8 FF 75 18 C4 5E F0 26 8B 47 04 26 .8.~..u..^.&.G.&
3431:1F20 0B 47 06 74 20 26 C4 5F 04 26 83 3F 00 EB 14 90 .G.t &._.&.?....
3431:1F30 FF 76 F8 FF 76 F2 FF 76 F0 9A 8A 06 68 23 83 C4 .v..v..v....h#..
3431:1F40 06 0B D0 75 05 C7 46 FA 00 00 83 7E FA 00 75 03 ...u..F....~..u.
3431:1F50 E9 11 01 C4 1E 96 12 26 F7 47 F0 00 01 75 03 E9 .......&.G...u..
3431:1F60 FA 00 B8 2A 00 50 8D 46 FC 16 50 9A 96 06 DC 21 ...*.P.F..P....!
3431:1F70 83 C4 06 0B C0 75 03 E9 F0 00 B8 2A 00 50 2B C0 .....u.....*.P+.
3431:1F80 50 FF 76 FE FF 76 FC 9A 28 02 17 20 83 C4 08 C4 P.v..v..(.. ....
3431:1F90 5E FC 8B 46 F0 8B 56 F2 26 89 47 04 26 89 57 06 ^..F..V.&.G.&.W.
3431:1FA0 8B 46 F8 26 89 47 0A 8B 46 F4 26 89 47 08 9A 17 .F.&.G..F.&.G...
3431:1FB0 05 38 1F 8A C4 2A E4 C4 5E FC 26 89 07 9A 17 05 .8...*..^.&.....
3431:1FC0 38 1F 2A E4 83 3E 9C 20 01 1B C9 41 03 C1 C4 5E 8.*..>. ...A...^
3431:1FD0 FC 26 89 47 02 C4 1E 96 12 26 83 7F F2 00 74 66 .&.G.....&....tf
3431:1FE0 26 8B 47 F2 40 C4 5E FC 26 89 47 10 50 8B C3 8C &.G.@.^.&.G.P...
3431:1FF0 C2 05 0C 00 52 50 9A 96 06 DC 21 83 C4 06 0B C0 ....RP....!.....
3431:2000 74 28 C4 5E FC 26 FF 77 10 C4 1E 96 12 26 FF 77 t(.^.&.w.....&.w
3431:2010 FA 26 FF 77 F8 C4 5E FC 26 FF 77 0E 26 FF 77 0C .&.w..^.&.w.&.w.
3431:2020 9A EC 02 17 20 83 C4 0A EB 40 B8 2A 00 50 FF 76 .... ....@.*.P.v
3431:2030 FE FF 76 FC 9A 02 07 DC 21 83 C4 06 2B C0 89 46 ..v.....!...+..F
3431:2040 FE 89 46 FC EB 24 C4 5E FC 26 C7 47 10 00 00 B8 ..F..$.^.&.G....
3431:2050 66 5F 26 89 47 0C 26 8C 5F 0E EB 0E C7 06 D2 10 f_&.G.&._.......
3431:2060 01 00 EB 06 C7 06 D2 10 02 00 8B 46 FC 8B 56 FE ...........F..V.
3431:2070 5E 8B E5 5D CB 90 55 8B EC 83 EC 04 83 3E B0 20 ^..]..U......>. 
3431:2080 00 75 19 0E E8 E1 FD 89 46 FC 89 56 FE 0B C2 74 .u......F..V...t
3431:2090 10 52 FF 76 FC 0E E8 A7 FC 83 C4 04 9A 68 03 68 .R.v.........h.h
3431:20A0 23 8B E5 5D CB 90 55 8B EC 83 EC 06 57 56 83 3E #..]..U.....WV.>
3431:20B0 B0 20 00 74 03 E9 76 01 0E E8 AC FD 89 46 FC 89 . .t..v......F..
3431:20C0 56 FE 0B C2 75 03 E9 6F 01 C4 5E FC 26 83 7F 0A V...u..o..^.&...
3431:20D0 FF 75 0B 26 C4 5F 04 26 C4 5F 04 EB 1C 90 C4 5E .u.&._.&._.....^
3431:20E0 FC 26 FF 77 0A 26 FF 77 06 26 FF 77 04 9A 8A 06 .&.w.&.w.&.w....
3431:20F0 68 23 83 C4 06 8B D8 8E C2 26 8B 07 89 46 FA F6 h#.......&...F..
3431:2100 46 FA 0A 75 03 E9 A0 00 C4 1E 96 12 26 F6 47 D0 F..u........&.G.
3431:2110 0A 75 03 E9 92 00 26 F6 47 E0 0A 75 03 E9 88 00 .u....&.G..u....
3431:2120 C4 5E FC 26 C7 47 18 08 00 C4 1E 96 12 26 F6 47 .^.&.G.......&.G
3431:2130 D0 08 74 10 C4 5E FC A1 96 12 8B 16 98 12 2D 28 ..t..^........-(
3431:2140 00 EB 18 90 C4 1E 96 12 26 FF 77 DA 26 FF 77 D8 ........&.w.&.w.
3431:2150 9A F7 0C EE 3C 83 C4 04 C4 5E FC 8D 7F 1A 8B F0 ....<....^......
3431:2160 1E 8E DA A5 A5 A5 A5 1F C4 1E 96 12 26 F6 47 E0 ............&.G.
3431:2170 08 74 0F C4 5E FC A1 96 12 8B 16 98 12 2D 18 00 .t..^........-..
3431:2180 EB 17 C4 1E 96 12 26 FF 77 EA 26 FF 77 E8 9A F7 ......&.w.&.w...
3431:2190 0C EE 3C 83 C4 04 C4 5E FC 8D 7F 22 8B F0 1E 8E ..<....^..."....
3431:21A0 DA A5 A5 A5 A5 1F EB 4A C4 1E 96 12 26 8A 47 D0 .......J....&.G.
3431:21B0 26 22 47 E0 22 46 FA A8 20 74 55 C4 5E FC 26 C7 &"G."F.. tU.^.&.
3431:21C0 47 18 20 00 C4 1E 96 12 26 8B 47 D8 26 8B 57 DA G. .....&.G.&.W.
3431:21D0 C4 5E FC 26 89 47 1A 26 89 57 1C C4 1E 96 12 26 .^.&.G.&.W.....&
3431:21E0 8B 47 E8 26 8B 57 EA C4 5E FC 26 89 47 22 26 89 .G.&.W..^.&.G"&.
3431:21F0 57 24 9A 68 03 68 23 9A 68 03 68 23 FF 76 FE FF W$.h.h#.h.h#.v..
3431:2200 76 FC 0E E8 3A FB 83 C4 04 5E 5F 8B E5 5D CB 90 v...:....^_..]..
3431:2210 B8 2A 00 50 FF 76 FE FF 76 FC 9A 02 07 DC 21 83 .*.P.v..v.....!.
3431:2220 C4 06 C7 06 D2 10 01 00 5E 5F 8B E5 5D CB 9A 68 ........^_..]..h
3431:2230 03 68 23 9A 68 03 68 23 5E 5F 8B E5 5D CB 55 8B .h#.h.h#^_..].U.
3431:2240 EC 83 EC 04 83 3E B0 20 00 74 03 E9 8C 00 0E E8 .....>. .t......
3431:2250 16 FC 89 46 FC 89 56 FE 0B C2 75 03 E9 85 00 C4 ...F..V...u.....
3431:2260 1E 96 12 26 8B 47 E2 40 C4 5E FC 26 89 47 16 50 ...&.G.@.^.&.G.P
3431:2270 8B C3 05 12 00 52 50 9A 96 06 DC 21 83 C4 06 0B .....RP....!....
3431:2280 C0 74 41 C4 5E FC 26 FF 77 16 C4 1E 96 12 26 FF .tA.^.&.w.....&.
3431:2290 77 EA 26 FF 77 E8 C4 5E FC 26 FF 77 14 26 FF 77 w.&.w..^.&.w.&.w
3431:22A0 12 9A EC 02 17 20 83 C4 0A 9A 68 03 68 23 9A 3C ..... ....h.h#.<
3431:22B0 03 68 23 FF 76 FE FF 76 FC 0E E8 83 FA 83 C4 04 .h#.v..v........
3431:22C0 8B E5 5D CB B8 2A 00 50 FF 76 FE FF 76 FC 9A 02 ..]..*.P.v..v...
3431:22D0 07 DC 21 83 C4 06 8B E5 5D CB 9A 68 03 68 23 9A ..!.....]..h.h#.
3431:22E0 3C 03 68 23 8B E5 5D CB 9A 17 05 38 1F 2A E4 40 <.h#..]....8.*.@
3431:22F0 50 9A 17 05 38 1F 8A C4 2A E4 50 9A E7 04 38 1F P...8...*.P...8.
3431:2300 83 C4 04 CB 55 8B EC 83 EC 0A 56 A1 C6 21 8B 16 ....U.....V..!..
3431:2310 C8 21 89 46 F6 89 56 F8 C4 5E F6 26 83 7F 04 00 .!.F..V..^.&....
3431:2320 75 03 E9 A4 00 C7 46 FA 00 00 EB 69 8B 76 FA D1 u.....F....i.v..
3431:2330 E6 D1 E6 26 C4 5F 06 26 8B 00 26 8B 50 02 89 46 ...&._.&..&.P..F
3431:2340 FC 89 56 FE C4 5E FC 26 83 7F 10 00 74 14 26 FF ..V..^.&....t.&.
3431:2350 77 10 26 FF 77 0E 26 FF 77 0C 9A 4E 07 DC 21 83 w.&.w.&.w..N..!.
3431:2360 C4 06 C4 5E FC 26 83 7F 16 00 74 14 26 FF 77 16 ...^.&....t.&.w.
3431:2370 26 FF 77 14 26 FF 77 12 9A 4E 07 DC 21 83 C4 06 &.w.&.w..N..!...
3431:2380 B8 2A 00 50 FF 76 FE FF 76 FC 9A B4 09 DC 21 83 .*.P.v..v.....!.
3431:2390 C4 06 FF 46 FA C4 5E F6 8B 46 FA 26 39 47 02 77 ...F..^..F.&9G.w
3431:23A0 8B 26 C7 47 02 00 00 26 8B 47 04 D1 E0 D1 E0 50 .&.G...&.G.....P
3431:23B0 26 FF 77 08 26 FF 77 06 9A B4 09 DC 21 83 C4 06 &.w.&.w.....!...
3431:23C0 C4 5E F6 26 C7 47 04 00 00 5E 8B E5 5D CB 55 8B .^.&.G...^..].U.
3431:23D0 EC 83 EC 02 F6 06 CA 21 0A 74 3D F6 46 08 02 75 .......!.t=.F..u
3431:23E0 6F 80 7E 06 2B 74 69 80 7E 06 2D 74 63 80 7E 0A o.~.+ti.~.-tc.~.
3431:23F0 23 75 06 80 7E 06 20 74 57 83 3E F6 21 00 74 06 #u..~. tW.>.!.t.
3431:2400 B8 2C 00 EB 04 90 B8 2E 00 8A 4E 06 2A ED 3B C1 .,........N.*.;.
3431:2410 74 3E 2B C0 E9 86 00 90 F6 06 CA 21 20 75 78 F6 t>+........! ux.
3431:2420 06 CA 21 80 74 38 80 7E 0A 59 75 2A 8A 46 06 2A ..!.t8.~.Yu*.F.*
3431:2430 E4 50 9A 1E 00 AD 38 83 C4 02 3C 59 74 12 8A 46 .P....8...<Yt..F
3431:2440 06 2A E4 50 9A 1E 00 AD 38 83 C4 02 3C 4E 75 C2 .*.P....8...<Nu.
3431:2450 B8 01 00 EB 48 90 8B 46 08 25 18 00 EB 3F F7 06 ....H..F.%...?..
3431:2460 CA 21 00 01 74 3A 83 3E F8 21 00 74 09 8B 46 08 .!..t:.>.!.t..F.
3431:2470 25 01 00 EB 28 90 8A 46 0A 2A E4 50 9A 1E 00 AD %...(..F.*.P....
3431:2480 38 83 C4 02 2A E4 3D 41 00 74 E2 77 3B 3D 23 00 8...*.=A.t.w;=#.
3431:2490 74 16 3D 39 00 75 48 8B 46 08 25 02 00 89 46 FE t.=9.uH.F.%...F.
3431:24A0 8B 46 FE 8B E5 5D CB 90 F6 46 08 06 75 A2 80 7E .F...]...F..u..~
3431:24B0 06 2E 74 9C 80 7E 06 2B 74 96 80 7E 06 2D EB 8E ..t..~.+t..~.-..
3431:24C0 8B 46 08 25 03 00 EB D5 3D 4C 00 74 89 3D 4E 00 .F.%....=L.t.=N.
3431:24D0 74 EE 3D 58 00 74 08 3D 59 00 75 03 E9 4D FF C7 t.=X.t.=Y.u..M..
3431:24E0 46 FE 01 00 EB BA 55 8B EC 83 EC 04 56 83 3E DE F.....U.....V.>.
3431:24F0 21 00 74 2C 8B 46 06 89 46 FE A1 D0 21 39 46 FE !.t,.F..F...!9F.
3431:2500 7D 60 8B 5E FE C4 36 DA 21 26 8A 00 2A E4 50 0E }`.^..6.!&..*.P.
3431:2510 E8 CB E8 83 C4 02 0B C0 75 48 FF 46 FE EB DB 90 ........uH.F....
3431:2520 F6 06 CA 21 0A 74 35 8B 46 06 89 46 FE 8B 5E FE ...!.t5.F..F..^.
3431:2530 C4 36 8A 21 26 8A 00 88 46 FC 0A C0 74 24 83 3E .6.!&...F...t$.>
3431:2540 F6 21 00 74 05 B8 2C 00 EB 03 B8 2E 00 8A 4E FC .!.t..,.......N.
3431:2550 2A ED 3B C1 74 0C FF 46 FE EB D2 90 A1 D0 21 89 *.;.t..F......!.
3431:2560 46 FE 8B 46 FE 2B 46 06 48 89 46 FE 0B C0 74 40 F..F.+F.H.F...t@
3431:2570 83 7E 08 00 7E 18 50 8B 46 06 03 06 8A 21 8B 16 .~..~.P.F....!..
3431:2580 8C 21 52 50 8B 46 06 03 06 8A 21 40 EB 18 FF 76 .!RP.F....!@...v
3431:2590 FE 8B 46 06 03 06 8A 21 8B 16 8C 21 40 52 50 8B ..F....!...!@RP.
3431:25A0 46 06 03 06 8A 21 52 50 9A 58 02 17 20 83 C4 0A F....!RP.X.. ...
3431:25B0 8B 46 FE 5E 8B E5 5D CB 55 8B EC 83 EC 02 56 8B .F.^..].U.....V.
3431:25C0 46 06 89 46 FE EB 27 90 A1 D0 21 39 46 FE 7D 24 F..F..'...!9F.}$
3431:25D0 8B 5E FE C4 36 DA 21 26 8A 00 2A E4 50 0E E8 FD .^..6.!&..*.P...
3431:25E0 E7 83 C4 02 0B C0 74 0C 8B 46 08 01 46 FE 83 7E ......t..F..F..~
3431:25F0 FE 00 7D D4 8B 46 FE 5E 8B E5 5D CB 55 8B EC 83 ..}..F.^..].U...
3431:2600 EC 3C 57 56 9A 17 05 38 1F 8A C4 2A E4 89 46 DE .<WV...8...*..F.
3431:2610 9A 17 05 38 1F 2A E4 89 46 CE C7 46 EE 00 00 A1 ...8.*..F..F....
3431:2620 D0 21 89 46 CA A1 CA 21 25 0A 00 89 46 F2 C7 46 .!.F...!%...F..F
3431:2630 C8 01 00 C7 46 E0 01 00 C7 46 D2 00 00 C7 46 D0 ....F....F....F.
3431:2640 01 00 C7 46 CC 01 00 C7 46 F4 01 00 A1 F0 0E 2B ...F....F......+
3431:2650 46 CE 40 8B 0E EE 0E 2B 4E DE 41 F7 E1 89 46 E8 F.@....+N.A...F.
3431:2660 3B 06 D2 21 7E 03 A1 D2 21 89 46 EC 83 3E FE 21 ;..!~...!.F..>.!
3431:2670 00 74 07 A1 FE 21 48 EB 04 90 8B 46 EC 89 46 F0 .t...!H....F..F.
3431:2680 8B 76 E8 4E 3B C6 7E 03 89 76 F0 C7 46 DA 00 00 .v.N;.~..v..F...
3431:2690 E9 AB 09 90 83 3E DE 21 00 74 13 FF 76 C8 FF 76 .....>.!.t..v..v
3431:26A0 EE 0E E8 13 FF 83 C4 04 89 46 EE EB 2C 90 83 7E .........F..,..~
3431:26B0 F2 00 74 25 83 3E F6 21 00 74 05 B8 2C 00 EB 03 ..t%.>.!.t..,...
3431:26C0 B8 2E 00 8B 5E EE C4 36 8A 21 26 8A 08 2A ED 3B ....^..6.!&..*.;
3431:26D0 C8 75 06 8B 46 C8 01 46 EE 83 7E EE 00 7D 0D C7 .u..F..F..~..}..
3431:26E0 46 EE 00 00 C7 46 C8 01 00 E9 A9 06 8B 46 CA 39 F....F.......F.9
3431:26F0 46 EE 7C 44 83 3E 96 20 00 74 11 B8 01 00 50 B8 F.|D.>. .t....P.
3431:2700 68 5F 1E 50 9A 2D 04 38 1F 83 C4 06 83 7E E0 00 h_.P.-.8.....~..
3431:2710 75 0D 83 3E 98 20 00 75 0F 83 7E CC 02 75 09 C7 u..>. .u..~..u..
3431:2720 46 06 03 00 E9 17 09 90 8B 46 CA 48 89 46 EE C7 F........F.H.F..
3431:2730 46 C8 FF FF E9 07 09 90 8B 46 F0 03 46 DA 3B 46 F........F..F.;F
3431:2740 EE 7D 09 8B 46 EE 2B 46 F0 EB 0C 90 8B 46 DA 39 .}..F.+F.....F.9
3431:2750 46 EE 7D 29 8B 46 EE 89 46 DA FF 76 CE FF 76 DE F.}).F..F..v..v.
3431:2760 9A E7 04 38 1F 83 C4 04 2B C0 50 8B 46 F0 40 50 ...8....+.P.F.@P
3431:2770 FF 76 DA FF 76 CE 0E E8 6E F3 83 C4 08 8B 46 EE .v..v...n.....F.
3431:2780 2B 46 DA 89 46 E6 8B 36 F0 0E 2B 76 CE 46 2B D2 +F..F..6..+v.F+.
3431:2790 F7 F6 89 46 F6 F7 E6 8B 4E E6 2B C8 89 4E E4 8B ...F....N.+..N..
3431:27A0 46 CE 03 C1 50 8B 46 DE 03 46 F6 50 9A E7 04 38 F...P.F..F.P...8
3431:27B0 1F 83 C4 04 8B 46 D0 2D 01 00 3D 3E 00 76 03 E9 .....F.-..=>.v..
3431:27C0 D3 05 03 C0 93 2E FF A7 C0 2F 2B C0 50 B8 04 00 ........./+.P...
3431:27D0 50 0E E8 E1 DF 83 C4 04 A3 D8 21 89 46 D0 A1 17 P.........!.F...
3431:27E0 0F 89 46 D6 8B 46 CC 89 46 F4 8B 46 D0 89 46 CC ..F..F..F..F..F.
3431:27F0 C7 46 C8 01 00 FF 36 17 0F 9A 1A 08 DC 21 83 C4 .F....6......!..
3431:2800 02 0B C0 74 09 C7 46 06 0B 00 E9 31 08 90 81 7E ...t..F....1...~
3431:2810 D0 80 00 7D 03 E9 26 08 81 7E D0 87 00 7E 03 E9 ...}..&..~...~..
3431:2820 1C 08 C7 46 06 0A 00 E9 14 08 FF 4E EE C7 46 C8 ...F.......N..F.
3431:2830 FF FF C7 46 D0 04 00 E9 B2 03 B8 FF FF 50 FF 76 ...F.........P.v
3431:2840 EE 0E E8 A1 FC 83 C4 04 8B D8 89 5E D8 03 5E EE ...........^..^.
3431:2850 C4 36 8A 21 26 C6 00 20 FF 46 D8 2B C0 50 8B 46 .6.!&.. .F.+.P.F
3431:2860 EC 2B 46 E6 3B 46 D8 7E 03 8B 46 D8 50 FF 76 EE .+F.;F.~..F.P.v.
3431:2870 FF 76 CE 0E E8 71 F2 83 C4 08 E9 EB 01 90 FF 4E .v...q.........N
3431:2880 EE C7 46 C8 FF FF E9 5E 03 90 C7 46 C8 01 00 83 ..F....^...F....
3431:2890 7E F4 09 75 37 8B 5E EE C4 36 8A 21 26 80 38 20 ~..u7.^..6.!&.8 
3431:28A0 74 1C 83 3E DE 21 00 74 23 C4 36 DA 21 26 8A 00 t..>.!.t#.6.!&..
3431:28B0 2A E4 50 0E E8 27 E5 83 C4 02 0B C0 74 0E C7 46 *.P..'......t..F
3431:28C0 D0 0D 00 C7 46 CC 01 00 E9 21 03 90 C7 46 EE 00 ....F....!...F..
3431:28D0 00 E9 13 03 8B 46 CA 48 89 46 EE 83 7E F4 0A 75 .....F.H.F..~..u
3431:28E0 0D C7 46 C8 FF FF C7 46 CC 01 00 E9 F9 02 8B 5E ..F....F.......^
3431:28F0 EE C4 36 8A 21 26 80 38 20 74 1C 83 3E DE 21 00 ..6.!&.8 t..>.!.
3431:2900 74 20 C4 36 DA 21 26 8A 00 2A E4 50 0E E8 CE E4 t .6.!&..*.P....
3431:2910 83 C4 02 0B C0 74 0B 83 7E EE 00 74 05 FF 4E EE .....t..~..t..N.
3431:2920 EB CC 83 7E EE 00 75 0A 8B 46 CA 48 89 46 EE EB ...~..u..F.H.F..
3431:2930 0D 90 8B 46 CA 48 3B 46 EE 7E 03 FF 46 EE C7 46 ...F.H;F.~..F..F
3431:2940 C8 01 00 E9 A1 02 8B 46 EE 89 46 D8 EB 2A 83 3E .......F..F..*.>
3431:2950 DE 21 00 74 18 8B 5E EE C4 36 DA 21 26 8A 00 2A .!.t..^..6.!&..*
3431:2960 E4 50 0E E8 78 E4 83 C4 02 0B C0 75 47 8B 46 CA .P..x......uG.F.
3431:2970 39 46 EE 7D 3F FF 46 EE 8B 5E EE C4 36 8A 21 26 9F.}?.F..^..6.!&
3431:2980 80 38 20 75 C9 EB 2D 90 8B 5E EE C4 36 8A 21 26 .8 u..-..^..6.!&
3431:2990 80 38 20 75 27 83 3E DE 21 00 74 15 C4 36 DA 21 .8 u'.>.!.t..6.!
3431:29A0 26 8A 00 2A E4 50 0E E8 34 E4 83 C4 02 0B C0 75 &..*.P..4......u
3431:29B0 0B FF 46 EE 8B 46 CA 39 46 EE 7C CC 8B 46 EE 89 ..F..F.9F.|..F..
3431:29C0 46 D4 83 3E DE 21 00 74 25 8B 46 CA 39 46 EE 7D F..>.!.t%.F.9F.}
3431:29D0 23 8B 5E EE C4 36 DA 21 26 8A 00 2A E4 50 0E E8 #.^..6.!&..*.P..
3431:29E0 FC E3 83 C4 02 0B C0 75 0B FF 46 EE EB DB 8B 46 .......u..F....F
3431:29F0 CA 89 46 EE 8B 76 EE 2B 76 D4 56 8B 46 D4 03 06 ..F..v.+v.V.F...
3431:2A00 8A 21 8B 16 8C 21 52 50 8B 46 D8 03 06 8A 21 52 .!...!RP.F....!R
3431:2A10 50 9A 58 02 17 20 83 C4 0A 8B 46 D8 03 C6 89 46 P.X.. ....F....F
3431:2A20 D4 EB 0F 90 8B 5E D4 FF 46 D4 C4 36 8A 21 26 C6 .....^..F..6.!&.
3431:2A30 00 20 8B 46 EE 39 46 D4 7C EA 2B C0 50 8B 46 EC . .F.9F.|.+.P.F.
3431:2A40 2B 46 E6 8B 4E EE 2B 4E D8 3B C1 7E 02 8B C1 50 +F..N.+N.;.~...P
3431:2A50 FF 76 D8 FF 76 CE 0E E8 8E F0 83 C4 08 8B 46 D8 .v..v.........F.
3431:2A60 89 46 EE C7 46 C8 01 00 C7 46 D0 01 00 E9 80 02 .F..F....F......
3431:2A70 83 3E DE 21 00 74 18 8B 5E EE C4 36 DA 21 26 8A .>.!.t..^..6.!&.
3431:2A80 00 2A E4 50 0E E8 56 E3 83 C4 02 0B C0 75 19 8B .*.P..V......u..
3431:2A90 46 CA 48 3B 46 EE 7E 10 FF 46 EE 8B 5E EE C4 36 F.H;F.~..F..^..6
3431:2AA0 8A 21 26 80 38 20 75 C8 8B 5E EE C4 36 8A 21 26 .!&.8 u..^..6.!&
3431:2AB0 80 38 20 74 22 83 3E DE 21 00 75 03 E9 7F FE C4 .8 t".>.!.u.....
3431:2AC0 36 DA 21 26 8A 00 2A E4 50 0E E8 11 E3 83 C4 02 6.!&..*.P.......
3431:2AD0 0B C0 75 03 E9 67 FE 8B 46 CA 48 3B 46 EE 7F 03 ..u..g..F.H;F...
3431:2AE0 E9 5B FE FF 46 EE EB C0 83 7E EE 00 74 03 FF 4E .[..F....~..t..N
3431:2AF0 EE 8B 5E EE C4 36 8A 21 26 80 38 20 74 1C 83 3E ..^..6.!&.8 t..>
3431:2B00 DE 21 00 74 45 C4 36 DA 21 26 8A 00 2A E4 50 0E .!.tE.6.!&..*.P.
3431:2B10 E8 CB E2 83 C4 02 0B C0 74 30 83 7E EE 00 74 2A ........t0.~..t*
3431:2B20 EB CC 83 3E DE 21 00 74 18 8B 5E EE C4 36 DA 21 ...>.!.t..^..6.!
3431:2B30 26 8A 00 2A E4 50 0E E8 A4 E2 83 C4 02 0B C0 75 &..*.P.........u
3431:2B40 16 83 7E EE 00 74 10 FF 4E EE 8B 5E EE C4 36 8A ..~..t..N..^..6.
3431:2B50 21 26 80 38 20 75 CB 83 7E EE 00 75 03 E9 DE FD !&.8 u..~..u....
3431:2B60 E9 D8 FD 90 83 3E AE 20 01 1B C0 F7 D8 A3 AE 20 .....>. ....... 
3431:2B70 83 3E A2 20 00 74 70 B8 3C 00 50 2B C0 50 9A E7 .>. .tp.<.P+.P..
3431:2B80 04 38 1F 83 C4 04 9A E7 07 38 1F 83 3E AE 20 00 .8.......8..>. .
3431:2B90 74 1C B8 07 00 50 9A DC 00 AD 38 83 C4 02 52 50 t....P....8...RP
3431:2BA0 9A F5 03 17 20 83 C4 04 50 B8 07 00 EB 1A B8 08 .... ...P.......
3431:2BB0 00 50 9A DC 00 AD 38 83 C4 02 52 50 9A F5 03 17 .P....8...RP....
3431:2BC0 20 83 C4 04 50 B8 08 00 50 9A DC 00 AD 38 83 C4  ...P...P....8..
3431:2BD0 02 52 50 9A 9F 04 38 1F 83 C4 06 83 3E 9E 20 00 .RP...8.....>. .
3431:2BE0 74 05 9A FA 07 38 1F C7 46 D0 01 00 C7 46 E0 00 t....8..F....F..
3431:2BF0 00 E9 4A 04 C7 46 EE 00 00 8B 46 EE 89 46 D8 E9 ..J..F....F..F..
3431:2C00 8C 00 83 7E F2 00 74 0C 80 7E C6 2C 74 7D 80 7E ...~..t..~.,t}.~
3431:2C10 C6 2E 74 77 83 3E DE 21 00 74 65 8B 5E D8 C4 36 ..tw.>.!.te.^..6
3431:2C20 DA 21 26 8A 00 2A E4 50 0E E8 B2 E1 83 C4 02 0B .!&..*.P........
3431:2C30 C0 74 4D 83 7E F2 00 74 33 83 3E F6 21 00 74 2C .tM.~..t3.>.!.t,
3431:2C40 8B 5E D8 C4 36 DA 21 26 80 38 2C 75 0B C4 36 8A .^..6.!&.8,u..6.
3431:2C50 21 26 C6 00 2E EB 34 90 C4 36 DA 21 26 80 38 2E !&....4..6.!&.8.
3431:2C60 75 0D C4 36 8A 21 26 C6 00 2C EB 1F 8B 5E D8 C4 u..6.!&..,...^..
3431:2C70 36 DA 21 26 8A 00 C4 36 8A 21 26 88 00 EB 0C 90 6.!&...6.!&.....
3431:2C80 8B 5E D8 C4 36 8A 21 26 C6 00 20 FF 46 D8 8B 5E .^..6.!&.. .F..^
3431:2C90 D8 C4 36 8A 21 26 8A 00 88 46 C6 0A C0 74 03 E9 ..6.!&...F...t..
3431:2CA0 60 FF 83 3E DE 21 00 74 1E EB 04 90 FF 46 EE 8B `..>.!.t.....F..
3431:2CB0 5E EE C4 36 DA 21 26 8A 00 2A E4 50 0E E8 1E E1 ^..6.!&..*.P....
3431:2CC0 83 C4 02 0B C0 75 E5 2B C0 50 8B 46 EC 2B 46 E6 .....u.+.P.F.+F.
3431:2CD0 50 FF 76 EE FF 76 CE 0E E8 0D EE 83 C4 08 83 7E P.v..v.........~
3431:2CE0 D0 3F 75 06 B8 02 00 EB 04 90 B8 01 00 89 46 D0 .?u...........F.
3431:2CF0 C7 46 E0 00 00 E9 C1 02 C7 46 06 02 00 C7 46 E0 .F.......F....F.
3431:2D00 01 00 C7 46 D2 00 00 E9 34 03 C7 46 06 04 00 E9 ...F....4..F....
3431:2D10 2C 03 C7 46 06 05 00 E9 24 03 C7 46 06 06 00 E9 ,..F....$..F....
3431:2D20 1C 03 C7 46 06 07 00 E9 14 03 C7 46 06 08 00 E9 ...F.......F....
3431:2D30 0C 03 83 3E A4 20 00 74 5C C7 46 06 09 00 E9 FD ...>. .t\.F.....
3431:2D40 02 90 8A 46 D6 2A E4 8B F0 56 9A 40 00 AD 38 83 ...F.*...V.@..8.
3431:2D50 C4 02 89 46 E2 83 3E DE 21 00 74 0E 8B 5E EE C4 ...F..>.!.t..^..
3431:2D60 3E DA 21 26 8A 01 2A E4 EB 03 B8 58 00 50 FF 76 >.!&..*....X.P.v
3431:2D70 E2 56 0E E8 58 F6 83 C4 06 0B C0 75 21 83 3E 96 .V..X......u!.>.
3431:2D80 20 00 74 11 B8 01 00 50 B8 6A 5F 1E 50 9A 2D 04  .t....P.j_.P.-.
3431:2D90 38 1F 83 C4 06 C7 46 D0 01 00 E9 A1 02 90 83 7E 8.....F........~
3431:2DA0 E0 00 74 10 83 3E E6 21 00 74 09 C7 46 D0 3F 00 ..t..>.!.t..F.?.
3431:2DB0 E9 8B 02 90 83 3E FA 21 00 75 1C 83 3E DE 21 00 .....>.!.u..>.!.
3431:2DC0 74 28 8B 5E EE C4 36 DA 21 26 8A 00 88 46 C6 3C t(.^..6.!&...F.<
3431:2DD0 21 74 04 3C 59 75 13 8A 46 D6 2A E4 50 9A 1E 00 !t.<Yu..F.*.P...
3431:2DE0 AD 38 83 C4 02 2A E4 89 46 D6 83 7E F2 00 75 03 .8...*..F..~..u.
3431:2DF0 E9 4B 01 83 3E F6 21 00 74 06 B8 2C 00 EB 04 90 .K..>.!.t..,....
3431:2E00 B8 2E 00 3B 46 D6 74 03 E9 33 01 C7 06 E0 21 01 ...;F.t..3....!.
3431:2E10 00 2B C0 50 FF 36 8C 21 FF 36 8A 21 0E E8 54 E0 .+.P.6.!.6.!..T.
3431:2E20 83 C4 06 C7 46 D8 00 00 EB 03 FF 46 D8 8B 5E D8 ....F......F..^.
3431:2E30 C4 36 8A 21 26 80 38 20 74 F0 26 80 38 2D 75 06 .6.!&.8 t.&.8-u.
3431:2E40 B8 01 00 EB 03 90 2B C0 89 46 EA 06 FF 36 8A 21 ......+..F...6.!
3431:2E50 9A F5 03 17 20 83 C4 04 89 46 C6 50 FF 36 8C 21 .... ....F.P.6.!
3431:2E60 FF 36 8A 21 9A 30 0D EE 3C 83 C4 06 8D 7E F8 8B .6.!.0..<....~..
3431:2E70 F0 16 07 1E 8E DA A5 A5 A5 A5 1F FF 76 FE FF 76 ............v..v
3431:2E80 FC FF 76 FA FF 76 F8 9A 02 01 0D 40 83 C4 08 89 ..v..v.....@....
3431:2E90 46 C4 0B C0 75 05 C7 46 EA 00 00 FF 36 90 21 FF F...u..F....6.!.
3431:2EA0 36 8E 21 FF 36 CE 21 FF 36 CC 21 FF 76 FE FF 76 6.!.6.!.6.!.v..v
3431:2EB0 FC FF 76 FA FF 76 F8 9A A8 0D EE 3C 83 C4 10 C7 ..v..v.....<....
3431:2EC0 06 E0 21 00 00 83 7E EA 00 74 25 C7 46 D8 00 00 ..!...~..t%.F...
3431:2ED0 EB 03 FF 46 D8 8B 5E D8 C4 36 8E 21 26 80 38 20 ...F..^..6.!&.8 
3431:2EE0 74 F0 0B DB 74 0A FF 4E D8 8B 5E D8 26 C6 00 2D t...t..N..^.&..-
3431:2EF0 A1 F2 21 89 46 DC C7 06 F2 21 00 00 FF 36 D4 21 ..!.F....!...6.!
3431:2F00 FF 36 90 21 FF 36 8E 21 0E E8 68 DF 83 C4 06 8B .6.!.6.!..h.....
3431:2F10 46 DC A3 F2 21 FF 76 CE FF 76 DE 9A E7 04 38 1F F...!.v..v....8.
3431:2F20 83 C4 04 2B C0 50 FF 76 EC 50 FF 76 CE 0E E8 B7 ...+.P.v.P.v....
3431:2F30 EB 83 C4 08 A1 D6 21 89 46 EE E9 58 FE 90 83 3E ......!.F..X...>
3431:2F40 AE 20 00 74 41 B8 01 00 50 FF 76 EE 0E E8 96 F5 . .tA...P.v.....
3431:2F50 83 C4 04 89 46 D8 8B 5E EE C4 36 8A 21 8A 46 D6 ....F..^..6.!.F.
3431:2F60 26 88 00 FF 46 D8 2B C0 50 8B 46 EC 2B 46 E6 3B &...F.+.P.F.+F.;
3431:2F70 46 D8 7E 03 8B 46 D8 50 53 FF 76 CE 0E E8 68 EB F.~..F.PS.v...h.
3431:2F80 83 C4 08 EB 22 90 8B 5E EE C4 36 8A 21 8A 46 D6 ...."..^..6.!.F.
3431:2F90 26 88 00 B8 01 00 50 8B C3 03 C6 8C C2 52 50 9A &.....P......RP.
3431:2FA0 9F 04 38 1F 83 C4 06 FF 46 EE C7 46 C8 01 00 C7 ..8.....F..F....
3431:2FB0 46 E0 00 00 C7 46 D0 01 00 C7 46 D2 01 00 EB 7E F....F....F....~
3431:2FC0 CA 27 42 2D 2A 28 3A 28 F8 2C 1F 27 7E 28 32 29 .'B-*(:(.,.'~(2)
3431:2FD0 8A 28 D4 28 46 29 E8 2A 9B 2A F9 2B 12 2D 0A 2D .(.(F).*.*.+.-.-
3431:2FE0 1A 2D 22 2D 2A 2D 32 2D 64 2B 95 2D 95 2D 95 2D .-"-*-2-d+.-.-.-
3431:2FF0 95 2D 95 2D 95 2D 95 2D 95 2D 95 2D 95 2D 2A 2D .-.-.-.-.-.-.-*-
3431:3000 2A 2D 95 2D 95 2D 95 2D 95 2D 95 2D 95 2D 95 2D *-.-.-.-.-.-.-.-
3431:3010 95 2D 95 2D 95 2D 95 2D 95 2D 95 2D 95 2D 95 2D .-.-.-.-.-.-.-.-
3431:3020 95 2D 95 2D 95 2D 95 2D 95 2D 95 2D 95 2D 95 2D .-.-.-.-.-.-.-.-
3431:3030 95 2D 95 2D 95 2D 95 2D 95 2D 95 2D F4 2B 83 7E .-.-.-.-.-.-.+.~
3431:3040 06 01 75 03 E9 4D F6 8B 46 D2 A3 E2 21 8B 46 06 ..u..M..F...!.F.
3431:3050 5E 5F 8B E5 5D CB 55 8B EC FF 76 08 FF 76 06 0E ^_..].U...v..v..
3431:3060 E8 A7 EC 83 C4 04 83 3E A2 20 00 74 64 B8 3C 00 .......>. .td.<.
3431:3070 50 2B C0 50 9A E7 04 38 1F 83 C4 04 9A E7 07 38 P+.P...8.......8
3431:3080 1F 83 3E AE 20 00 74 1C B8 07 00 50 9A DC 00 AD ..>. .t....P....
3431:3090 38 83 C4 02 52 50 9A F5 03 17 20 83 C4 04 50 B8 8...RP.... ...P.
3431:30A0 07 00 EB 1A B8 08 00 50 9A DC 00 AD 38 83 C4 02 .......P....8...
3431:30B0 52 50 9A F5 03 17 20 83 C4 04 50 B8 08 00 50 9A RP.... ...P...P.
3431:30C0 DC 00 AD 38 83 C4 02 52 50 9A 9F 04 38 1F 83 C4 ...8...RP...8...
3431:30D0 06 C4 5E 06 26 FF 77 02 26 FF 37 9A E7 04 38 1F ..^.&.w.&.7...8.
3431:30E0 83 C4 04 83 3E 9E 20 00 74 05 9A FA 07 38 1F FF ....>. .t....8..
3431:30F0 76 0A 0E E8 06 F5 83 C4 02 5D CB 90 55 8B EC 83 v........]..U...
3431:3100 EC 04 57 56 83 3E FC 21 00 74 1B C7 06 E0 21 01 ..WV.>.!.t....!.
3431:3110 00 2B C0 50 FF 36 8C 21 FF 36 8A 21 0E E8 54 DD .+.P.6.!.6.!..T.
3431:3120 83 C4 06 EB 49 90 83 3E F6 21 00 74 41 F6 06 CA ....I..>.!.tA...
3431:3130 21 0A 75 3A C4 1E 8A 21 26 8A 07 88 46 FE 26 8A !.u:...!&...F.&.
3431:3140 47 01 88 46 FC B8 02 00 50 8B C3 8C C2 05 03 00 G..F....P.......
3431:3150 52 50 52 53 9A 58 02 17 20 83 C4 0A C4 1E 8A 21 RPRS.X.. ......!
3431:3160 8A 46 FE 26 88 47 03 8A 46 FC 26 88 47 04 F7 06 .F.&.G..F.&.G...
3431:3170 CA 21 00 01 74 56 A1 CC 21 39 06 D0 21 7D 4D FF .!..tV..!9..!}M.
3431:3180 76 08 FF 76 06 0E E8 99 EA 83 C4 04 A1 CC 21 2B v..v..........!+
3431:3190 06 D0 21 50 C4 1E 96 12 26 8B 47 08 26 8B 57 0A ..!P....&.G.&.W.
3431:31A0 03 06 D0 21 52 50 A1 D0 21 03 06 8A 21 8B 16 8C ...!RP..!...!...
3431:31B0 21 52 50 9A EC 02 17 20 83 C4 0A 8B 1E CC 21 C4 !RP.... ......!.
3431:31C0 36 8A 21 26 C6 00 00 9A 3C 03 68 23 83 06 96 12 6.!&....<.h#....
3431:31D0 10 C4 1E 96 12 A1 CA 21 26 89 07 A1 CC 21 26 89 .......!&....!&.
3431:31E0 47 02 A1 CE 21 26 89 47 04 A1 CA 21 3D 20 00 75 G...!&.G...!= .u
3431:31F0 03 E9 AE 00 7E 03 E9 E9 00 3D 02 00 74 28 3D 08 ....~....=..t(=.
3431:3200 00 74 23 5E 5F 8B E5 5D CB 90 C4 1E 96 12 A1 8A .t#^_..]........
3431:3210 21 8B 16 8C 21 26 89 47 08 26 89 57 0A 26 C7 47 !...!&.G.&.W.&.G
3431:3220 0C 00 00 E9 D9 00 26 C7 07 08 00 FF 36 D0 21 FF ......&.....6.!.
3431:3230 36 8C 21 FF 36 8A 21 9A 30 0D EE 3C 83 C4 06 C4 6.!.6.!.0..<....
3431:3240 1E 96 12 8D 7F 08 8B F0 1E 8E DA A5 A5 A5 A5 1F ................
3431:3250 26 8B 47 02 2B 06 D0 21 1B C9 F7 D1 23 C1 03 06 &.G.+..!....#...
3431:3260 D0 21 26 89 47 02 5E 5F 8B E5 5D CB C4 1E 8A 21 .!&.G.^_..]....!
3431:3270 26 8A 07 2A E4 50 9A 40 00 AD 38 83 C4 02 A8 08 &..*.P.@..8.....
3431:3280 74 10 C4 1E 96 12 26 C7 47 08 01 00 5E 5F 8B E5 t.....&.G...^_..
3431:3290 5D CB C4 1E 96 12 26 C7 47 08 00 00 5E 5F 8B E5 ].....&.G...^_..
3431:32A0 5D CB C4 1E 96 12 26 C7 07 20 00 FF 36 8E 12 8B ].....&.. ..6...
3431:32B0 C3 8C C2 05 08 00 52 50 FF 36 8C 21 FF 36 8A 21 ......RP.6.!.6.!
3431:32C0 9A F5 03 17 20 83 C4 04 50 FF 36 8C 21 FF 36 8A .... ...P.6.!.6.
3431:32D0 21 9A DC 03 D6 38 83 C4 0C A3 E4 21 5E 5F 8B E5 !....8.....!^_..
3431:32E0 5D CB 3D 40 00 74 BB 3D 80 00 75 03 E9 7D FF 3D ].=@.t.=..u..}.=
3431:32F0 00 01 75 03 E9 13 FF 3D 00 03 75 03 E9 0B FF 5E ..u....=..u....^
3431:3300 5F 8B E5 5D CB 90 55 8B EC 83 EC 0A C7 46 FA 3C _..]..U......F.<
3431:3310 00 C7 46 FE 01 00 F6 06 CA 21 20 74 53 83 3E E4 ..F......! tS.>.
3431:3320 21 00 75 4C 83 3E A2 20 00 74 3C B8 3C 00 50 2B !.uL.>. .t<.<.P+
3431:3330 C0 50 9A E7 04 38 1F 83 C4 04 B8 09 00 50 9A DC .P...8.......P..
3431:3340 00 AD 38 83 C4 02 52 50 9A F5 03 17 20 83 C4 04 ..8...RP.... ...
3431:3350 50 B8 09 00 50 9A DC 00 AD 38 83 C4 02 52 50 9A P...P....8...RP.
3431:3360 9F 04 38 1F 83 C4 06 C7 46 FE 00 00 E9 1E 03 90 ..8.....F.......
3431:3370 C4 5E 06 26 8A 47 18 22 06 CA 21 A8 0A 75 03 E9 .^.&.G."..!..u..
3431:3380 86 01 06 53 0E E8 9A E8 83 C4 04 C4 5E 06 26 FF ...S........^.&.
3431:3390 77 20 26 FF 77 1E 26 FF 77 1C 26 FF 77 1A C4 1E w &.w.&.w.&.w...
3431:33A0 96 12 26 FF 77 0E 26 FF 77 0C 26 FF 77 0A 26 FF ..&.w.&.w.&.w.&.
3431:33B0 77 08 9A 06 00 0D 40 83 C4 10 89 46 F8 0B C0 75 w.....@....F...u
3431:33C0 39 C4 5E 06 26 FF 77 28 26 FF 77 26 26 FF 77 24 9.^.&.w(&.w&&.w$
3431:33D0 26 FF 77 22 C4 1E 96 12 26 FF 77 0E 26 FF 77 0C &.w"....&.w.&.w.
3431:33E0 26 FF 77 0A 26 FF 77 08 9A 96 00 0D 40 83 C4 10 &.w.&.w.....@...
3431:33F0 89 46 F6 0B C0 75 03 E9 8E 02 83 3E A2 20 00 75 .F...u.....>. .u
3431:3400 03 E9 7F 02 C7 46 FA 27 00 B8 27 00 50 2B C0 50 .....F.'..'.P+.P
3431:3410 9A E7 04 38 1F 83 C4 04 B8 0A 00 50 9A DC 00 AD ...8.......P....
3431:3420 38 83 C4 02 52 50 9A F5 03 17 20 83 C4 04 50 B8 8...RP.... ...P.
3431:3430 0A 00 50 9A DC 00 AD 38 83 C4 02 52 50 9A 9F 04 ..P....8...RP...
3431:3440 38 1F 83 C4 06 FF 36 90 21 FF 36 8E 21 C4 1E 96 8.....6.!.6.!...
3431:3450 12 26 FF 77 04 26 FF 77 02 C4 5E 06 26 FF 77 20 .&.w.&.w..^.&.w 
3431:3460 26 FF 77 1E 26 FF 77 1C 26 FF 77 1A 9A A8 0D EE &.w.&.w.&.w.....
3431:3470 3C 83 C4 10 FF 36 90 21 FF 36 8E 21 9A D0 03 17 <....6.!.6.!....
3431:3480 20 83 C4 04 52 50 9A F5 03 17 20 83 C4 04 50 FF  ...RP.... ...P.
3431:3490 36 90 21 FF 36 8E 21 9A D0 03 17 20 83 C4 04 52 6.!.6.!.... ...R
3431:34A0 50 9A 9F 04 38 1F 83 C4 06 B8 0B 00 50 9A DC 00 P...8.......P...
3431:34B0 AD 38 83 C4 02 52 50 9A F5 03 17 20 83 C4 04 50 .8...RP.... ...P
3431:34C0 B8 0B 00 50 9A DC 00 AD 38 83 C4 02 52 50 9A 9F ...P....8...RP..
3431:34D0 04 38 1F 83 C4 06 FF 36 90 21 FF 36 8E 21 C4 1E .8.....6.!.6.!..
3431:34E0 96 12 26 FF 77 04 26 FF 77 02 C4 5E 06 26 FF 77 ..&.w.&.w..^.&.w
3431:34F0 28 26 FF 77 26 26 FF 77 24 26 FF 77 22 9A A8 0D (&.w&&.w$&.w"...
3431:3500 EE 3C 83 C4 10 E9 46 01 C4 5E 06 26 8A 47 18 22 .<....F..^.&.G."
3431:3510 06 CA 21 A8 20 75 03 E9 73 01 06 53 0E E8 02 E7 ..!. u..s..S....
3431:3520 83 C4 04 C4 1E 96 12 26 8B 47 08 26 8B 57 0A C4 .......&.G.&.W..
3431:3530 5E 06 26 39 57 1C 7F 2B 7C 06 26 39 47 1A 77 23 ^.&9W..+|.&9G.w#
3431:3540 C4 1E 96 12 26 8B 47 08 26 8B 57 0A C4 5E 06 26 ....&.G.&.W..^.&
3431:3550 39 57 24 7E 03 E9 30 01 7C 09 26 39 47 22 72 03 9W$~..0.|.&9G"r.
3431:3560 E9 25 01 83 3E A2 20 00 75 03 E9 16 01 C7 46 FA .%..>. .u.....F.
3431:3570 27 00 B8 27 00 50 2B C0 50 9A E7 04 38 1F 83 C4 '..'.P+.P...8...
3431:3580 04 B8 0A 00 50 9A DC 00 AD 38 83 C4 02 52 50 9A ....P....8...RP.
3431:3590 F5 03 17 20 83 C4 04 50 B8 0A 00 50 9A DC 00 AD ... ...P...P....
3431:35A0 38 83 C4 02 52 50 9A 9F 04 38 1F 83 C4 06 FF 36 8...RP...8.....6
3431:35B0 8E 12 C4 5E 06 26 FF 77 1C 26 FF 77 1A FF 36 90 ...^.&.w.&.w..6.
3431:35C0 21 FF 36 8E 21 9A FA 06 D6 38 83 C4 0A FF 36 90 !.6.!....8....6.
3431:35D0 21 FF 36 8E 21 9A D0 03 17 20 83 C4 04 52 50 9A !.6.!.... ...RP.
3431:35E0 F5 03 17 20 83 C4 04 50 FF 36 90 21 FF 36 8E 21 ... ...P.6.!.6.!
3431:35F0 9A D0 03 17 20 83 C4 04 52 50 9A 9F 04 38 1F 83 .... ...RP...8..
3431:3600 C4 06 B8 0B 00 50 9A DC 00 AD 38 83 C4 02 52 50 .....P....8...RP
3431:3610 9A F5 03 17 20 83 C4 04 50 B8 0B 00 50 9A DC 00 .... ...P...P...
3431:3620 AD 38 83 C4 02 52 50 9A 9F 04 38 1F 83 C4 06 FF .8...RP...8.....
3431:3630 36 8E 12 C4 5E 06 26 FF 77 24 26 FF 77 22 FF 36 6...^.&.w$&.w".6
3431:3640 90 21 FF 36 8E 21 9A FA 06 D6 38 83 C4 0A FF 36 .!.6.!....8....6
3431:3650 90 21 FF 36 8E 21 9A D0 03 17 20 83 C4 04 52 50 .!.6.!.... ...RP
3431:3660 9A F5 03 17 20 83 C4 04 50 FF 36 90 21 FF 36 8E .... ...P.6.!.6.
3431:3670 21 9A D0 03 17 20 83 C4 04 52 50 9A 9F 04 38 1F !.... ...RP...8.
3431:3680 83 C4 06 C7 46 FE 00 00 9A 3C 03 68 23 83 7E FE ....F....<.h#.~.
3431:3690 00 75 55 83 3E 96 20 00 74 11 B8 01 00 50 B8 6C .uU.>. .t....P.l
3431:36A0 5F 1E 50 9A 2D 04 38 1F 83 C4 06 C4 5E 06 26 FF _.P.-.8.....^.&.
3431:36B0 77 02 26 FF 37 9A E7 04 38 1F 83 C4 04 9A C5 0C w.&.7...8.......
3431:36C0 38 1F 9A DC 0C 38 1F 0B C0 74 F7 83 3E A2 20 00 8....8...t..>. .
3431:36D0 74 52 FF 76 FA 2B C0 50 9A E7 04 38 1F 83 C4 04 tR.v.+.P...8....
3431:36E0 9A CB 08 38 1F EB 3D 90 C4 5E 06 26 8B 47 12 26 ...8..=..^.&.G.&
3431:36F0 0B 47 14 74 2F 26 FF 77 14 26 FF 77 12 9A 70 1C .G.t/&.w.&.w..p.
3431:3700 FF 31 83 C4 04 C4 1E 96 12 26 81 3F 80 00 75 0A .1.......&.?..u.
3431:3710 26 8B 47 08 89 46 FE EB 06 90 C7 46 FE 00 00 9A &.G..F.....F....
3431:3720 3C 03 68 23 8B 46 FE 8B E5 5D CB 90 55 8B EC 83 <.h#.F...]..U...
3431:3730 EC 10 57 56 A1 AA 20 8B 16 AC 20 89 46 F6 89 56 ..WV.. ... .F..V
3431:3740 F8 C7 06 00 22 00 00 A1 BC 20 0B 06 BE 20 74 20 ....".... ... t 
3431:3750 2B C0 50 9A A6 00 DC 21 83 C4 02 FF 36 BE 20 FF +.P....!....6. .
3431:3760 36 BC 20 9A 0E 03 68 23 83 C4 04 9A 22 03 DC 21 6. ...h#...."..!
3431:3770 A1 C6 21 8B 16 C8 21 89 46 F2 89 56 F4 C4 5E F2 ..!...!.F..V..^.
3431:3780 26 C7 07 00 00 C7 46 F0 00 00 E9 7D 02 90 C4 5E &.....F....}...^
3431:3790 F2 26 8B 37 26 39 77 02 77 03 E9 7A 02 83 3E D2 .&.7&9w.w..z..>.
3431:37A0 10 65 75 03 E9 70 02 8B FE D1 E7 D1 E7 26 C4 5F .eu..p.......&._
3431:37B0 06 26 8B 01 26 8B 51 02 89 46 FC 89 56 FE 8B 46 .&..&.Q..F..V..F
3431:37C0 F0 3D 0B 00 76 03 E9 41 02 03 C0 93 2E FF A7 F2 .=..v..A........
3431:37D0 39 90 C4 5E FC 26 FF 77 06 26 FF 77 04 9A 0A 05 9..^.&.w.&.w....
3431:37E0 C7 2B 83 C4 04 A3 AA 20 89 16 AC 20 FF 76 FE FF .+..... ... .v..
3431:37F0 76 FC 0E E8 2C E4 83 C4 04 E9 B2 01 FF 76 FE FF v...,........v..
3431:3800 76 FC 0E E8 04 E5 83 C4 04 C4 5E FC 26 FF 77 02 v.........^.&.w.
3431:3810 26 FF 37 9A E7 04 38 1F 83 C4 04 B8 01 00 50 FF &.7...8.......P.
3431:3820 36 D2 21 2B C0 50 C4 5E FC 26 FF 77 02 0E E8 B7 6.!+.P.^.&.w....
3431:3830 E2 83 C4 08 FF 76 F0 FF 76 FE FF 76 FC 0E E8 15 .....v..v..v....
3431:3840 F8 83 C4 06 89 46 F0 A1 E2 21 09 06 00 22 0B C0 .....F...!..."..
3431:3850 74 1C FF 76 FE FF 76 FC 0E E8 A0 F8 83 C4 04 FF t..v..v.........
3431:3860 76 FE FF 76 FC 0E E8 25 E3 83 C4 04 EB 06 C7 06 v..v...%........
3431:3870 E4 21 01 00 FF 76 FE FF 76 FC 0E E8 8C E4 83 C4 .!...v..v.......
3431:3880 04 C4 5E FC 26 FF 77 02 26 FF 37 9A E7 04 38 1F ..^.&.w.&.7...8.
3431:3890 83 C4 04 83 3E 9E 20 00 74 05 9A 0D 08 38 1F 2B ....>. .t....8.+
3431:38A0 C0 50 FF 36 D2 21 50 C4 5E FC 26 FF 77 02 0E E8 .P.6.!P.^.&.w...
3431:38B0 36 E2 83 C4 08 83 3E 9E 20 00 75 03 E9 4B 01 9A 6.....>. .u..K..
3431:38C0 E7 07 38 1F E9 43 01 90 9A 3C 03 68 23 E9 B5 FE ..8..C...<.h#...
3431:38D0 FF 76 FE FF 76 FC 0E E8 B4 E2 83 C4 04 E9 06 01 .v..v...........
3431:38E0 FF 76 FE FF 76 FC 0E E8 1C FA 83 C4 04 0B C0 75 .v..v..........u
3431:38F0 03 E9 BA 00 9A 3C 03 68 23 C4 5E F2 26 FF 07 E9 .....<.h#.^.&...
3431:3900 83 FE FF 76 FE FF 76 FC 0E E8 FA F9 83 C4 04 0B ...v..v.........
3431:3910 C0 75 03 E9 98 00 9A 3C 03 68 23 C4 5E F2 26 8B .u.....<.h#.^.&.
3431:3920 07 40 26 3B 47 02 72 D4 83 3E 0C 22 00 75 03 E9 .@&;G.r..>.".u..
3431:3930 53 FE EB C8 FF 76 FE FF 76 FC 0E E8 C8 F9 83 C4 S....v..v.......
3431:3940 04 0B C0 74 69 9A 3C 03 68 23 C4 5E F2 26 83 3F ...ti.<.h#.^.&.?
3431:3950 00 75 0A 83 3E 0C 22 00 75 03 E9 28 FE 26 FF 0F .u..>.".u..(.&..
3431:3960 E9 22 FE 90 FF 76 FE FF 76 FC 0E E8 98 F9 83 C4 ."...v..v.......
3431:3970 04 0B C0 74 39 9A 3C 03 68 23 E9 00 FE 90 FF 76 ...t9.<.h#.....v
3431:3980 FE FF 76 FC 0E E8 7E F9 83 C4 04 0B C0 74 1F 9A ..v...~......t..
3431:3990 3C 03 68 23 C4 5E F2 26 8B 47 02 48 26 89 07 E9 <.h#.^.&.G.H&...
3431:39A0 E3 FD FF 36 17 0F 9A 56 08 DC 21 83 C4 02 C7 46 ...6...V..!....F
3431:39B0 F0 01 00 EB 55 90 C7 06 1B 0F 04 00 FF 36 D8 21 ....U........6.!
3431:39C0 9A 06 00 DC 21 83 C4 02 C7 06 1B 0F 00 00 EB DE ....!...........
3431:39D0 FF 76 FE FF 76 FC 0E E8 2C F9 83 C4 04 0B C0 74 .v..v...,......t
3431:39E0 CD 9A 3C 03 68 23 C4 5E F2 26 8B 47 02 26 89 07 ..<.h#.^.&.G.&..
3431:39F0 EB 18 D2 37 FC 37 C8 38 E0 38 02 39 34 39 64 39 ...7.7.8.8.949d9
3431:3A00 7E 39 D0 39 D0 38 B6 39 A2 39 C4 5E F2 26 83 7F ~9.9.8.9.9.^.&..
3431:3A10 02 00 74 03 E9 77 FD 83 7E F0 01 75 05 9A 3C 03 ..t..w..~..u..<.
3431:3A20 68 23 8B 46 F6 8B 56 F8 A3 AA 20 89 16 AC 20 83 h#.F..V... ... .
3431:3A30 3E D2 10 65 75 04 0E E8 CA E8 2B C0 50 A1 EE 0E >..eu.....+.P...
3431:3A40 48 50 9A E7 04 38 1F 83 C4 04 5E 5F 8B E5 5D CB HP...8....^_..].
3431:3A50 55 8B EC 83 EC 0C C4 1E 96 12 26 F6 47 F0 0A 75 U.........&.G..u
3431:3A60 03 E9 10 01 26 F6 47 E0 0A 75 03 E9 06 01 26 F6 ....&.G..u....&.
3431:3A70 47 D0 0A 75 03 E9 FC 00 26 F6 47 C0 0A 75 03 E9 G..u....&.G..u..
3431:3A80 F2 00 26 F7 07 00 01 75 03 E9 E8 00 26 83 7F C0 ..&....u....&...
3431:3A90 02 75 07 26 8B 47 C8 EB 19 90 26 FF 77 CE 26 FF .u.&.G....&.w.&.
3431:3AA0 77 CC 26 FF 77 CA 26 FF 77 C8 9A 5A 0C EE 3C 83 w.&.w.&.w..Z..<.
3431:3AB0 C4 08 89 46 FA C4 1E 96 12 26 83 7F D0 02 75 06 ...F.....&....u.
3431:3AC0 26 8B 47 D8 EB 18 26 FF 77 DE 26 FF 77 DC 26 FF &.G...&.w.&.w.&.
3431:3AD0 77 DA 26 FF 77 D8 9A 5A 0C EE 3C 83 C4 08 89 46 w.&.w..Z..<....F
3431:3AE0 F4 C4 1E 96 12 26 83 7F E0 02 75 06 26 8B 47 E8 .....&....u.&.G.
3431:3AF0 EB 18 26 FF 77 EE 26 FF 77 EC 26 FF 77 EA 26 FF ..&.w.&.w.&.w.&.
3431:3B00 77 E8 9A 5A 0C EE 3C 83 C4 08 89 46 FC C4 1E 96 w..Z..<....F....
3431:3B10 12 26 83 7F F0 02 75 06 26 8B 47 F8 EB 18 26 FF .&....u.&.G...&.
3431:3B20 77 FE 26 FF 77 FC 26 FF 77 FA 26 FF 77 F8 9A 5A w.&.w.&.w.&.w..Z
3431:3B30 0C EE 3C 83 C4 08 89 46 FE C4 1E 96 12 26 8B 47 ..<....F.....&.G
3431:3B40 08 26 8B 57 0A 89 46 F6 89 56 F8 52 50 FF 76 FE .&.W..F..V.RP.v.
3431:3B50 FF 76 FC FF 76 F4 FF 76 FA 9A DB 05 38 1F 83 C4 .v..v..v....8...
3431:3B60 0C 9A 68 03 68 23 9A 68 03 68 23 9A 3C 03 68 23 ..h.h#.h.h#.<.h#
3431:3B70 8B E5 5D CB C7 06 D2 10 01 00 8B E5 5D CB C7 06 ..].........]...
3431:3B80 9A 12 00 01 FF 36 AC 20 FF 36 AA 20 9A F5 03 17 .....6. .6. ....
3431:3B90 20 83 C4 04 A3 9C 12 A1 AA 20 8B 16 AC 20 A3 A2  ........ ... ..
3431:3BA0 12 89 16 A4 12 C7 06 A6 12 00 00 CB 55 8B EC 56 ............U..V
3431:3BB0 8B 46 06 2D 01 00 3D 1D 00 76 03 E9 0A 02 03 C0 .F.-..=..v......
3431:3BC0 93 2E FF A7 8C 3D 83 3E 02 0F 00 75 03 E9 F8 01 .....=.>...u....
3431:3BD0 A1 18 22 0B 06 1A 22 75 18 FF 36 02 0F B8 18 22 .."..."u..6...."
3431:3BE0 1E 50 9A 96 06 DC 21 83 C4 06 0B C0 75 03 E9 D7 .P....!.....u...
3431:3BF0 01 9A 17 05 38 1F 8A C4 2A E4 A3 1C 22 9A 17 05 ....8...*..."...
3431:3C00 38 1F 2A E4 A3 1E 22 FF 36 1A 22 FF 36 18 22 9A 8.*...".6.".6.".
3431:3C10 29 0A 38 1F 83 C4 04 E9 AE 01 A1 18 22 0B 06 1A ).8........."...
3431:3C20 22 75 03 E9 A2 01 FF 36 1A 22 FF 36 18 22 9A 4C "u.....6.".6.".L
3431:3C30 0A 38 1F 83 C4 04 FF 36 1E 22 FF 36 1C 22 9A E7 .8.....6.".6."..
3431:3C40 04 38 1F 83 C4 04 FF 36 02 0F FF 36 1A 22 FF 36 .8.....6...6.".6
3431:3C50 18 22 9A 02 07 DC 21 83 C4 06 2B C0 A3 1A 22 A3 ."....!...+...".
3431:3C60 18 22 5E 5D CB 90 C4 1E 96 12 26 8B 37 F7 C6 0A ."^]......&.7...
3431:3C70 00 74 4F 83 FE 02 75 06 26 8B 47 08 EB 18 26 FF .tO...u.&.G...&.
3431:3C80 77 0E 26 FF 77 0C 26 FF 77 0A 26 FF 77 08 9A 5A w.&.w.&.w.&.w..Z
3431:3C90 0C EE 3C 83 C4 08 A3 08 22 2B 06 EE 0E 1B C9 23 ..<....."+.....#
3431:3CA0 C1 03 06 EE 0E A3 08 22 83 7E 06 04 75 06 B8 01 .......".~..u...
3431:3CB0 00 EB 03 90 2B C0 A3 0A 22 9A 3C 03 68 23 5E 5D ....+...".<.h#^]
3431:3CC0 CB 90 C7 06 D2 10 01 00 5E 5D CB 90 2B C0 50 B8 ........^]..+.P.
3431:3CD0 6E 5F 1E 50 9A 2E 02 68 23 83 C4 06 0E E8 70 FD n_.P...h#.....p.
3431:3CE0 5E 5D CB 90 2B C0 50 B8 78 5F EB E6 2B C0 50 B8 ^]..+.P.x_..+.P.
3431:3CF0 82 5F EB DE 83 7E 06 15 75 06 B8 01 00 EB 03 90 ._...~..u.......
3431:3D00 2B C0 50 9A 3A 4D 44 26 83 C4 02 5E 5D CB 9A C5 +.P.:MD&...^]...
3431:3D10 0C 38 1F 83 3E AC 21 00 74 14 FF 36 AC 21 FF 36 .8..>.!.t..6.!.6
3431:3D20 AA 21 FF 36 A8 21 9A B4 09 DC 21 83 C4 06 C4 1E .!.6.!....!.....
3431:3D30 96 12 26 83 3F 02 75 06 26 8B 47 08 EB 18 26 FF ..&.?.u.&.G...&.
3431:3D40 77 0E 26 FF 77 0C 26 FF 77 0A 26 FF 77 08 9A 5A w.&.w.&.w.&.w..Z
3431:3D50 0C EE 3C 83 C4 08 A3 AC 21 0B C0 74 29 D1 E0 05 ..<.....!..t)...
3431:3D60 02 00 A3 AC 21 50 9A 7E 09 DC 21 83 C4 02 A3 A8 ....!P.~..!.....
3431:3D70 21 89 16 AA 21 FF 36 AC 21 52 50 9A A2 0C 38 1F !...!.6.!RP...8.
3431:3D80 83 C4 06 E9 33 FF 2B C0 50 50 EB EE C6 3B 1A 3C ....3.+.PP...;.<
3431:3D90 66 3C 66 3C C8 3D C8 3D C8 3D C8 3D C8 3D CC 3C f<f<.=.=.=.=.=.<
3431:3DA0 E4 3C EC 3C C8 3D C8 3D C8 3D C8 3D C8 3D C8 3D .<.<.=.=.=.=.=.=
3431:3DB0 C8 3D F4 3C F4 3C C8 3D C8 3D C8 3D C8 3D C8 3D .=.<.<.=.=.=.=.=
3431:3DC0 C8 3D C8 3D C8 3D 0E 3D 5E 5D CB 90 55 8B EC 83 .=.=.=.=^]..U...
3431:3DD0 EC 06 56 83 3E 02 0F 00 74 34 A1 02 0F 40 89 46 ..V.>...t4...@.F
3431:3DE0 FA 50 9A 18 07 DC 21 83 C4 02 89 46 FC 89 56 FE .P....!....F..V.
3431:3DF0 52 50 9A 29 0A 38 1F 83 C4 04 8B 76 FA C4 5E FC RP.).8.....v..^.
3431:3E00 26 C6 40 FF 00 8B C6 48 50 56 06 53 EB 09 2B C0 &.@....HPV.S..+.
3431:3E10 50 50 B8 8C 5F 1E 50 9A 72 02 68 23 83 C4 08 5E PP.._.P.r.h#...^
3431:3E20 8B E5 5D CB C4 1E 96 12 26 F7 07 00 01 74 1D 83 ..].....&....t..
3431:3E30 3E 02 0F 00 74 10 26 FF 77 0A 26 FF 77 08 9A 4C >...t.&.w.&.w..L
3431:3E40 0A 38 1F 83 C4 04 9A 3C 03 68 23 CB C7 06 D2 10 .8.....<.h#.....
3431:3E50 01 00 CB 90 FF 36 C4 12 FF 36 C2 12 2B C0 50 B8 .....6...6..+.P.
3431:3E60 AA 12 1E 50 0E E8 BC D7 83 C4 0A C7 06 9A 12 00 ...P............
3431:3E70 01 A1 D0 21 A3 9C 12 9A 86 00 68 23 0B C0 74 1C ...!......h#..t.
3431:3E80 FF 36 9C 12 FF 36 8C 21 FF 36 8A 21 FF 36 A4 12 .6...6.!.6.!.6..
3431:3E90 FF 36 A2 12 9A EC 02 17 20 83 C4 0A CB 90       .6...... .....  

;; fn3431_3E9E: 3431:3E9E
;;   Called from:
;;     3CEE:4511 (in fn3CEE_4490)
;;     3CEE:55E1 (in fn3CEE_5556)
fn3431_3E9E proc
	push	bp
	mov	bp,sp
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	sub	ax,ax
	push	ax
	push	word ptr [1298h]
	push	word ptr [1296h]
	push	cs
	call	1624h
	add	sp,0Ah
	call	far 2368h:033Ch
	push	word ptr [21D0h]
	sub	ax,ax
	push	ax
	push	word ptr [218Ch]
	push	word ptr [218Ah]
	call	far 2368h:0272h
	add	sp,8h
	pop	bp
	retf
3431:3ED7                      90 55 8B EC 83 EC 04 C4 1E        .U.......
3431:3EE0 96 12 26 8B 47 F0 26 23 07 A9 00 01 75 03 E9 31 ..&.G.&#....u..1
3431:3EF0 02 26 F6 47 E0 0A 75 03 E9 27 02 26 F6 47 D0 0A .&.G..u..'.&.G..
3431:3F00 75 03 E9 1D 02 A1 02 22 0B 06 04 22 75 2A B8 00 u......"..."u*..
3431:3F10 02 50 B8 02 22 1E 50 9A 96 06 DC 21 83 C4 06 0B .P..".P....!....
3431:3F20 C0 75 0F 9A 68 03 68 23 9A 68 03 68 23 8B E5 5D .u..h.h#.h.h#..]
3431:3F30 CB 90 C7 06 06 22 00 00 A1 06 22 B1 04 D3 E0 03 ....."....".....
3431:3F40 06 02 22 8B 16 04 22 89 46 FC 89 56 FE C4 1E 96 .."...".F..V....
3431:3F50 12 26 83 7F D0 02 75 06 26 8B 47 D8 EB 18 26 FF .&....u.&.G...&.
3431:3F60 77 DE 26 FF 77 DC 26 FF 77 DA 26 FF 77 D8 9A 5A w.&.w.&.w.&.w..Z
3431:3F70 0C EE 3C 83 C4 08 C4 5E FC 26 89 07 C4 1E 96 12 ..<....^.&......
3431:3F80 26 83 7F E0 02 75 07 26 8B 47 E8 EB 19 90 26 FF &....u.&.G....&.
3431:3F90 77 EE 26 FF 77 EC 26 FF 77 EA 26 FF 77 E8 9A 5A w.&.w.&.w.&.w..Z
3431:3FA0 0C EE 3C 83 C4 08 C4 5E FC 26 89 47 02 C4 1E 96 ..<....^.&.G....
3431:3FB0 12 26 83 7F FC 00 74 24 26 8B 47 F8 26 8B 57 FA .&....t$&.G.&.W.
3431:3FC0 C4 5E FC 26 89 47 04 26 89 57 06 C4 1E 96 12 26 .^.&.G.&.W.....&
3431:3FD0 8B 47 FC C4 5E FC 26 89 47 08 EB 66 C4 1E 96 12 .G..^.&.G..f....
3431:3FE0 26 8B 47 F2 40 50 8B 46 FC 8B 56 FE 05 04 00 52 &.G.@P.F..V....R
3431:3FF0 50 9A 96 06 DC 21 83 C4 06 0B C0 74 31 C4 1E 96 P....!.....t1...
3431:4000 12 26 8B 47 F2 40 50 26 FF 77 FA 26 FF 77 F8 C4 .&.G.@P&.w.&.w..
3431:4010 5E FC 26 FF 77 06 26 FF 77 04 9A EC 02 17 20 83 ^.&.w.&.w..... .
3431:4020 C4 0A C4 1E 96 12 26 8B 47 F2 40 EB A6 90 C4 5E ......&.G.@....^
3431:4030 FC B8 8E 5F 26 89 47 04 26 8C 5F 06 26 C7 47 08 ..._&.G.&._.&.G.
3431:4040 00 00 C4 1E 96 12 26 83 7F 0C 00 74 25 26 8B 47 ......&....t%&.G
3431:4050 08 26 8B 57 0A C4 5E FC 26 89 47 0A 26 89 57 0C .&.W..^.&.G.&.W.
3431:4060 C4 1E 96 12 26 8B 47 0C C4 5E FC 26 89 47 0E EB ....&.G..^.&.G..
3431:4070 67 90 C4 1E 96 12 26 8B 47 02 40 50 8B 46 FC 8B g.....&.G.@P.F..
3431:4080 56 FE 05 0A 00 52 50 9A 96 06 DC 21 83 C4 06 0B V....RP....!....
3431:4090 C0 74 31 C4 1E 96 12 26 8B 47 02 40 50 26 FF 77 .t1....&.G.@P&.w
3431:40A0 0A 26 FF 77 08 C4 5E FC 26 FF 77 0C 26 FF 77 0A .&.w..^.&.w.&.w.
3431:40B0 9A EC 02 17 20 83 C4 0A C4 1E 96 12 26 8B 47 02 .... .......&.G.
3431:40C0 40 EB A5 90 C4 5E FC B8 90 5F 26 89 47 0A 26 8C @....^..._&.G.&.
3431:40D0 5F 0C 26 C7 47 0E 00 00 26 FF 77 02 26 FF 37 9A _.&.G...&.w.&.7.
3431:40E0 E7 04 38 1F 83 C4 04 C4 5E FC 26 FF 77 06 26 FF ..8.....^.&.w.&.
3431:40F0 77 04 9A F5 03 17 20 83 C4 04 50 C4 5E FC 26 FF w..... ...P.^.&.
3431:4100 77 06 26 FF 77 04 9A 9F 04 38 1F 83 C4 06 83 3E w.&.w....8.....>
3431:4110 06 22 20 73 04 FF 06 06 22 83 2E 96 12 20 E9 07 ." s....".... ..
3431:4120 FE 90 C7 06 D2 10 01 00 8B E5 5D CB 55 8B EC 83 ..........].U...
3431:4130 EC 34 56 A1 02 22 8B 16 04 22 89 46 F6 89 56 F8 .4V.."...".F..V.
3431:4140 A1 06 22 89 46 D8 A1 08 22 89 46 FA C7 46 E4 00 ..".F...".F..F..
3431:4150 00 C7 46 E2 00 00 A1 0A 22 89 46 D0 2B C0 A3 04 ..F.....".F.+...
3431:4160 22 A3 02 22 A3 06 22 C4 1E 96 12 26 8B 47 08 26 "..".."....&.G.&
3431:4170 8B 57 0A 89 46 DA 89 56 DC 26 8B 47 0E 89 46 DE .W..F..V.&.G..F.
3431:4180 A1 AA 20 8B 16 AC 20 89 46 EA 89 56 EC FF 76 DC .. ... .F..V..v.
3431:4190 FF 76 DA 9A 0A 05 C7 2B 83 C4 04 A3 AA 20 89 16 .v.....+..... ..
3431:41A0 AC 20 83 7E DE 00 74 2C C4 5E DA 26 C4 5F 04 26 . .~..t,.^.&._.&
3431:41B0 8B 47 06 26 8B 57 08 89 46 D2 89 56 D4 8B 46 DE .G.&.W..F..V..F.
3431:41C0 8B C8 D1 E0 03 C1 D1 E0 03 C1 D1 E0 03 46 D2 2D .............F.-
3431:41D0 0E 00 EB 0B C4 5E DA 26 8B 47 04 26 8B 57 06 89 .....^.&.G.&.W..
3431:41E0 46 F2 89 56 F4 0B C2 74 61 C4 5E F2 26 F6 07 0A F..V...ta.^.&...
3431:41F0 74 58 52 53 9A F4 04 68 23 83 C4 04 C4 1E 96 12 tXRS...h#.......
3431:4200 26 83 3F 02 75 06 26 8B 47 08 EB 18 26 FF 77 0E &.?.u.&.G...&.w.
3431:4210 26 FF 77 0C 26 FF 77 0A 26 FF 77 08 9A 5A 0C EE &.w.&.w.&.w..Z..
3431:4220 3C 83 C4 08 89 46 FC 3D 01 00 73 06 B8 01 00 EB <....F.=..s.....
3431:4230 0E 90 8B 46 FC 2B 46 D8 1B C9 23 C1 03 46 D8 89 ...F.+F...#..F..
3431:4240 46 FC 9A 3C 03 68 23 EB 06 90 C7 46 FC 01 00 9A F..<.h#....F....
3431:4250 12 10 68 23 8B 46 F2 0B 46 F4 75 11 C4 5E DA 26 ..h#.F..F.u..^.&
3431:4260 8B 47 04 26 8B 57 06 89 46 F2 89 56 F4 83 3E 9E .G.&.W..F..V..>.
3431:4270 20 00 74 12 83 3E F4 13 00 74 0B 2B C0 50 9A 27  .t..>...t.+.P.'
3431:4280 05 38 1F 83 C4 02 8B 46 F6 0B 46 F8 74 06 83 7E .8.....F..F.t..~
3431:4290 D8 00 75 06 B8 01 00 EB 03 90 2B C0 89 46 E8 C7 ..u.......+..F..
3431:42A0 46 E6 00 00 83 7E E8 00 74 03 E9 4B 01 8B 46 FC F....~..t..K..F.
3431:42B0 B1 04 D3 E0 03 46 F6 8B 56 F8 2D 10 00 89 46 EE .....F..V.-...F.
3431:42C0 89 56 F0 83 3E 9E 20 00 74 05 9A FA 07 38 1F C4 .V..>. .t....8..
3431:42D0 5E EE 26 FF 77 02 26 FF 37 9A E7 04 38 1F 83 C4 ^.&.w.&.7...8...
3431:42E0 04 C4 5E EE 26 FF 77 06 26 FF 77 04 9A F5 03 17 ..^.&.w.&.w.....
3431:42F0 20 83 C4 04 50 C4 5E EE 26 FF 77 06 26 FF 77 04  ...P.^.&.w.&.w.
3431:4300 9A 9F 04 38 1F 83 C4 06 9A E7 07 38 1F 83 7E FA ...8.......8..~.
3431:4310 00 75 03 E9 AD 00 C4 5E EE 26 FF 77 0C 26 FF 77 .u.....^.&.w.&.w
3431:4320 0A 9A F5 03 17 20 83 C4 04 3B 46 E2 73 38 FF 76 ..... ...;F.s8.v
3431:4330 E2 B8 20 00 50 FF 36 8C 21 FF 36 8A 21 9A 28 02 .. .P.6.!.6.!.(.
3431:4340 17 20 83 C4 08 FF 76 E4 FF 76 FA 9A E7 04 38 1F . ....v..v....8.
3431:4350 83 C4 04 FF 76 E2 FF 36 8C 21 FF 36 8A 21 9A 9F ....v..6.!.6.!..
3431:4360 04 38 1F 83 C4 06 C4 5E EE 26 FF 77 0C 26 FF 77 .8.....^.&.w.&.w
3431:4370 0A 9A F5 03 17 20 83 C4 04 89 46 E2 2B 06 F0 0E ..... ....F.+...
3431:4380 1B C9 23 C1 03 06 F0 0E 89 46 E2 83 7E D0 00 74 ..#......F..~..t
3431:4390 0B A1 F0 0E 2B 46 E2 D1 E8 EB 03 90 2B C0 89 46 ....+F......+..F
3431:43A0 E4 50 FF 76 FA 9A E7 04 38 1F 83 C4 04 FF 76 E2 .P.v....8.....v.
3431:43B0 C4 5E EE 26 FF 77 0C 26 FF 77 0A 9A 9F 04 38 1F .^.&.w.&.w....8.
3431:43C0 83 C4 06 C4 5E EE 26 FF 77 02 26 FF 37 9A E7 04 ....^.&.w.&.7...
3431:43D0 38 1F 83 C4 04 FF 76 FC 9A E0 01 68 23 83 C4 02 8.....v....h#...
3431:43E0 B8 01 00 50 FF 76 F4 FF 76 F2 9A 9E 05 68 23 83 ...P.v..v....h#.
3431:43F0 C4 06 83 7E E6 00 74 7C 8B 46 F6 0B 46 F8 75 03 ...~..t|.F..F.u.
3431:4400 E9 E3 01 8B 46 D8 FF 4E D8 0B C0 75 03 E9 D6 01 ....F..N...u....
3431:4410 8B 46 D8 B1 04 D3 E0 03 46 F6 8B 56 F8 89 46 CC .F......F..V..F.
3431:4420 89 56 CE C4 5E CC 26 83 7F 08 00 74 14 26 FF 77 .V..^.&....t.&.w
3431:4430 08 26 FF 77 06 26 FF 77 04 9A 4E 07 DC 21 83 C4 .&.w.&.w..N..!..
3431:4440 06 8B 46 D8 B1 04 D3 E0 03 46 F6 8B 56 F8 89 46 ..F......F..V..F
3431:4450 CC 89 56 CE C4 5E CC 26 83 7F 0E 00 74 9A 26 FF ..V..^.&....t.&.
3431:4460 77 0E 26 FF 77 0C 26 FF 77 0A 9A 4E 07 DC 21 83 w.&.w.&.w..N..!.
3431:4470 C4 06 EB 84 B8 01 00 50 B8 06 00 50 0E E8 36 C3 .......P...P..6.
3431:4480 83 C4 04 89 46 D6 2D 02 00 3D 1F 00 76 03 E9 0F ....F.-..=..v...
3431:4490 01 03 C0 93 2E FF A7 60 45 90 A0 17 0F 2A E4 50 .......`E....*.P
3431:44A0 9A 1E 00 AD 38 83 C4 02 88 46 E0 C7 46 FE 01 00 ....8....F..F...
3431:44B0 EB 03 FF 46 FE 8B 46 D8 39 46 FE 76 03 E9 E0 00 ...F..F.9F.v....
3431:44C0 8B 76 FE B1 04 D3 E6 C4 5E F6 26 FF 70 F6 26 FF .v......^.&.p.&.
3431:44D0 70 F4 9A D0 03 17 20 83 C4 04 8B D8 8E C2 26 8A p..... .......&.
3431:44E0 07 2A E4 50 9A 1E 00 AD 38 83 C4 02 3A 46 E0 75 .*.P....8...:F.u
3431:44F0 C1 8B 46 FE 89 46 FC C7 46 E6 01 00 E9 A1 00 90 ..F..F..F.......
3431:4500 83 7E FC 01 76 06 FF 4E FC E9 94 00 83 3E A8 20 .~..v..N.....>. 
3431:4510 00 75 03 E9 8A 00 8B 46 D8 89 46 FC E9 81 00 90 .u.....F..F.....
3431:4520 8B 46 D8 39 46 FC 73 06 FF 46 FC EB 73 90 83 3E .F.9F.s..F..s..>
3431:4530 A8 20 00 74 6B C7 46 FC 01 00 EB 64 2B C0 50 9A . .tk.F....d+.P.
3431:4540 E0 01 68 23 83 C4 02 B8 01 00 50 FF 76 F4 FF 76 ..h#......P.v..v
3431:4550 F2 9A 9E 05 68 23 83 C4 06 C7 46 E8 01 00 EB 40 ....h#....F....@
3431:4560 9A 44 A0 45 A0 45 A0 45 59 45 00 45 20 45 35 45 .D.E.E.EYE.E E5E
3431:4570 16 45 A0 45 A0 45 A0 45 A0 45 00 45 20 45 A0 45 .E.E.E.E.E.E E.E
3431:4580 A0 45 59 45 3C 45 A0 45 A0 45 A0 45 A0 45 A0 45 .EYE<E.E.E.E.E.E
3431:4590 A0 45 A0 45 A0 45 A0 45 A0 45 A0 45 59 45 59 45 .E.E.E.E.E.EYEYE
3431:45A0 83 7E E8 00 74 03 E9 FB FC C4 5E EE 26 FF 77 02 .~..t.....^.&.w.
3431:45B0 26 FF 37 9A E7 04 38 1F 83 C4 04 C4 5E EE 26 FF &.7...8.....^.&.
3431:45C0 77 06 26 FF 77 04 9A F5 03 17 20 83 C4 04 50 C4 w.&.w..... ...P.
3431:45D0 5E EE 26 FF 77 06 26 FF 77 04 9A 9F 04 38 1F 83 ^.&.w.&.w....8..
3431:45E0 C4 06 E9 BF FC 90 8B 46 F6 0B 46 F8 74 12 B8 00 .......F..F.t...
3431:45F0 02 50 FF 76 F8 FF 76 F6 9A B4 09 DC 21 83 C4 06 .P.v..v.....!...
3431:4600 8B 46 EA 8B 56 EC A3 AA 20 89 16 AC 20 83 3E 9E .F..V... ... .>.
3431:4610 20 00 74 13 83 3E F4 13 00 74 0C B8 01 00 50 9A  .t..>...t....P.
3431:4620 27 05 38 1F 83 C4 02 2B C0 50 A1 EE 0E 48 50 9A '.8....+.P...HP.
3431:4630 E7 04 38 1F 83 C4 04 5E 8B E5 5D CB C7 06 9A 12 ..8....^..].....
3431:4640 80 00 A1 00 22 A3 A2 12 CB 90 C7 06 9A 12 02 00 ...."...........
3431:4650 C7 06 9C 12 0A 00 9A 17 05 38 1F 8A C4 2A E4 A3 .........8...*..
3431:4660 A2 12 C7 06 A4 12 00 00 CB 90 C7 06 9A 12 02 00 ................
3431:4670 C7 06 9C 12 0A 00 9A 17 05 38 1F 2A E4 A3 A2 12 .........8.*....
3431:4680 C7 06 A4 12 00 00 CB 90 C7 06 9A 12 02 00 C7 06 ................
3431:4690 9C 12 0A 00 A1 C4 21 A3 A2 12 C7 06 A4 12 00 00 ......!.........
3431:46A0 CB 90 C7 06 9A 12 02 00 C7 06 9C 12 0A 00 A1 C2 ................
3431:46B0 21 A3 A2 12 C7 06 A4 12 00 00 CB 90 C7 06 9A 12 !...............
3431:46C0 80 00 A1 E6 0E A3 A2 12 CB 90 55 8B EC 83 EC 02 ..........U.....
3431:46D0 A1 0C 22 89 46 FE 83 3E 7C 12 00 74 15 C4 1E 96 ..".F..>|..t....
3431:46E0 12 26 F6 07 80 74 0B 26 83 7F 08 01 1B C0 40 A3 .&...t.&......@.
3431:46F0 0C 22 FF 76 FE 9A F4 02 68 23 83 C4 02 9A EE 03 .".v....h#......
3431:4700 DC 21 8B E5 5D CB 55 8B EC 83 EC 02 A1 AE 20 89 .!..].U....... .
3431:4710 46 FE 83 3E 7C 12 00 74 15 C4 1E 96 12 26 F6 07 F..>|..t.....&..
3431:4720 80 74 0B 26 83 7F 08 01 1B C0 40 A3 AE 20 FF 76 .t.&......@.. .v
3431:4730 FE 9A F4 02 68 23 83 C4 02 9A EE 03 DC 21 8B E5 ....h#.......!..
3431:4740 5D CB 83 3E 7C 12 02 72 1D C4 1E 96 12 26 8A 47 ]..>|..r.....&.G
3431:4750 F0 26 22 07 A8 02 74 0E 26 8B 47 F8 A3 C2 21 26 .&"...t.&.G...!&
3431:4760 8B 47 08 A3 C4 21 CB 90 56 83 3E 7C 12 01 75 50 .G...!..V.>|..uP
3431:4770 C4 1E 96 12 26 8B 37 F7 C6 0A 00 74 43 83 FE 02 ....&.7....tC...
3431:4780 75 06 26 8B 47 08 EB 18 26 FF 77 0E 26 FF 77 0C u.&.G...&.w.&.w.
3431:4790 26 FF 77 0A 26 FF 77 08 9A 5A 0C EE 3C 83 C4 08 &.w.&.w..Z..<...
3431:47A0 A3 E4 0E 0B C0 75 09 C7 06 E2 0E 00 00 5E CB 90 .....u.......^..
3431:47B0 83 3E E4 0E 01 75 0F C7 06 E2 0E 01 00 5E CB 90 .>...u.......^..
