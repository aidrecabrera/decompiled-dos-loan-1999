;;; Segment 2BC7 (2BC7:0000)

;; fn2BC7_0000: 2BC7:0000
;;   Called from:
;;     2BC7:01F0 (in fn2BC7_01EA)
fn2BC7_0000 proc
	cmp	word ptr [13AAh],0h
	jnz	0020h

l2BC7_0007:
	mov	ax,1C2h
	push	ax
	call	far 21DCh:097Eh
	add	sp,2h
	mov	[13A6h],ax
	mov	[13A8h],dx
	mov	word ptr [13AAh],19h

l2BC7_0020:
	dec	word ptr [13AAh]
	mov	ax,12h
	mul	word ptr [13AAh]
	add	ax,[13A6h]
	mov	dx,[13A8h]
	retf

;; fn2BC7_0034: 2BC7:0034
;;   Called from:
;;     2BC7:043C (in fn2BC7_03C2)
fn2BC7_0034 proc
	cmp	word ptr [13B0h],0h
	jnz	0054h

l2BC7_003B:
	mov	ax,1E0h
	push	ax
	call	far 21DCh:097Eh
	add	sp,2h
	mov	[13ACh],ax
	mov	[13AEh],dx
	mov	word ptr [13B0h],1Eh

l2BC7_0054:
	dec	word ptr [13B0h]
	mov	ax,[13B0h]
	mov	cl,4h
	shl	ax,cl
	add	ax,[13ACh]
	mov	dx,[13AEh]
	retf

;; fn2BC7_0068: 2BC7:0068
;;   Called from:
;;     2BC7:0337 (in fn2BC7_0312)
;;     2BC7:042B (in fn2BC7_03C2)
;;     2BC7:04FD (in fn2BC7_0494)
fn2BC7_0068 proc
	push	bp
	mov	bp,sp
	sub	sp,6h
	push	si
	mov	word ptr [bp-6h],0h
	mov	ax,[1392h]
	jmp	00BBh
2BC7:0079                            90                            .      

l2BC7_007A:
	mov	ax,[bp-6h]
	add	ax,[bp-2h]
	shr	ax,1h
	mov	[bp-4h],ax
	mov	ax,[bp+0Ah]
	inc	ax
	push	ax
	mov	bx,[bp-4h]
	shl	bx,1h
	shl	bx,1h
	les	si,[138Eh]
	push	word ptr es:[bx+si+2h]
	push	word ptr es:[bx+si]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 38ADh:00F2h
	add	sp,0Ah
	or	ax,ax
	jle	00B8h

l2BC7_00AE:
	mov	ax,[bp-4h]
	inc	ax
	mov	[bp-6h],ax
	jmp	00BEh
2BC7:00B7                      90                                .        

l2BC7_00B8:
	mov	ax,[bp-4h]

l2BC7_00BB:
	mov	[bp-2h],ax

l2BC7_00BE:
	mov	ax,[bp-2h]
	cmp	[bp-6h],ax
	jc	007Ah

l2BC7_00C6:
	les	bx,[bp+0Ch]
	mov	ax,[bp-6h]
	mov	es:[bx],ax
	mov	ax,[1392h]
	cmp	[bp-6h],ax
	jnc	0114h

l2BC7_00D7:
	mov	si,[bp-6h]
	mov	cl,2h
	shl	si,cl
	mov	ax,[bp+0Ah]
	inc	ax
	push	ax
	les	bx,[138Eh]
	push	word ptr es:[bx+si+2h]
	push	word ptr es:[bx+si]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 38ADh:00F2h
	add	sp,0Ah
	or	ax,ax
	jnz	0114h

l2BC7_0100:
	les	bx,[138Eh]
	les	bx,es:[bx+si]
	mov	ax,es:[bx+0Ch]
	mov	dx,es:[bx+0Eh]
	pop	si
	mov	sp,bp
	pop	bp
	retf

l2BC7_0114:
	sub	ax,ax
	cwd
	pop	si
	mov	sp,bp
	pop	bp
	retf

;; fn2BC7_011C: 2BC7:011C
;;   Called from:
;;     2BC7:0351 (in fn2BC7_0312)
;;     2BC7:0460 (in fn2BC7_03C2)
fn2BC7_011C proc
	push	bp
	mov	bp,sp
	sub	sp,0Ah
	push	si
	mov	ax,[1394h]
	cmp	[1392h],ax
	jc	018Ch

l2BC7_012C:
	add	ah,1h
	mov	[bp-6h],ax
	shl	ax,1h
	shl	ax,1h
	push	ax
	call	far 21DCh:097Eh
	add	sp,2h
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	mov	ax,[1394h]
	shl	ax,1h
	shl	ax,1h
	push	ax
	push	word ptr [1390h]
	push	word ptr [138Eh]
	push	dx
	push	word ptr [bp-4h]
	call	far 2017h:0258h
	add	sp,0Ah
	mov	ax,[1394h]
	shl	ax,1h
	shl	ax,1h
	push	ax
	push	word ptr [1390h]
	push	word ptr [138Eh]
	call	far 21DCh:09B4h
	add	sp,6h
	mov	ax,[bp-6h]
	mov	[1394h],ax
	mov	ax,[bp-4h]
	mov	dx,[bp-2h]
	mov	[138Eh],ax
	mov	[1390h],dx

l2BC7_018C:
	mov	ax,[1392h]
	cmp	[bp+0Ah],ax
	jnc	01C8h

l2BC7_0194:
	mov	ax,[bp+0Ah]
	shl	ax,1h
	shl	ax,1h
	add	ax,[138Eh]
	mov	dx,[1390h]
	mov	[bp-0Ah],ax
	mov	[bp-8h],dx
	mov	ax,[1392h]
	sub	ax,[bp+0Ah]
	shl	ax,1h
	shl	ax,1h
	push	ax
	push	dx
	push	word ptr [bp-0Ah]
	mov	ax,[bp-0Ah]
	add	ax,4h
	push	dx
	push	ax
	call	far 2017h:0258h
	add	sp,0Ah

l2BC7_01C8:
	inc	word ptr [1392h]
	mov	bx,[bp+0Ah]
	shl	bx,1h
	shl	bx,1h
	les	si,[138Eh]
	mov	ax,[bp+6h]
	mov	dx,[bp+8h]
	mov	es:[bx+si],ax
	mov	es:[bx+si+2h],dx
	pop	si
	mov	sp,bp
	pop	bp
	retf
2BC7:01E9                            90                            .      

;; fn2BC7_01EA: 2BC7:01EA
;;   Called from:
;;     2BC7:03AA (in fn2BC7_0312)
;;     2BC7:0471 (in fn2BC7_03C2)
fn2BC7_01EA proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	push	cs
	call	0000h
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	les	bx,[bp-4h]
	sub	ax,ax
	mov	es:[bx+2h],ax
	mov	es:[bx],ax
	mov	es:[bx+6h],ax
	mov	es:[bx+4h],ax
	mov	es:[bx+8h],ax
	mov	ax,[bp+0Ah]
	mov	dx,[bp+0Ch]
	mov	es:[bx+0Eh],ax
	mov	es:[bx+10h],dx
	mov	ax,[bp+6h]
	mov	dx,[bp+8h]
	mov	es:[bx+0Ah],ax
	mov	es:[bx+0Ch],dx
	mov	ax,bx
	mov	dx,es
	mov	sp,bp
	pop	bp
	retf

;; fn2BC7_0236: 2BC7:0236
;;   Called from:
;;     21DC:105F (in fn21DC_0EC2)
fn2BC7_0236 proc
	push	bp
	mov	bp,sp
	sub	sp,0Ah
	lea	ax,[bp-6h]
	push	ss
	push	ax
	call	far 3CB4h:0008h
	add	sp,4h
	mov	[bp-2h],ax
	add	ah,1h
	mov	[1394h],ax
	shl	ax,1h
	shl	ax,1h
	push	ax
	mov	ax,138Eh
	push	ds
	push	ax
	call	far 21DCh:06DCh
	add	sp,6h
	or	ax,ax
	jnz	026Eh

l2BC7_0268:
	sub	ax,ax
	mov	sp,bp
	pop	bp
	retf

l2BC7_026E:
	mov	word ptr [bp-0Ah],1h
	jmp	02B8h
2BC7:0275                90                                    .          

l2BC7_0276:
	mov	ax,10h
	cwd
	push	dx
	push	ax
	push	word ptr [bp-4h]
	push	word ptr [bp-6h]
	call	far 2017h:00DFh
	add	sp,8h
	mov	[bp-6h],ax
	mov	[bp-4h],dx
	les	bx,[bp-6h]
	cmp	byte ptr es:[bx],0h
	jz	02B5h

l2BC7_0299:
	push	word ptr es:[bx+0Eh]
	push	word ptr es:[bx+0Ch]
	push	dx
	push	ax
	push	cs
	call	0312h
	add	sp,8h
	les	bx,[bp-6h]
	mov	es:[bx+0Ch],ax
	mov	es:[bx+0Eh],dx

l2BC7_02B5:
	inc	word ptr [bp-0Ah]

l2BC7_02B8:
	mov	ax,[bp-2h]
	cmp	[bp-0Ah],ax
	jc	0276h

l2BC7_02C0:
	mov	byte ptr [bp-7h],0h
	mov	word ptr [bp-0Ah],1h

l2BC7_02C9:
	mov	al,[bp-0Ah]
	add	al,40h
	mov	[bp-8h],al
	lea	ax,[bp-8h]
	push	ss
	push	ax
	push	cs
	call	03C2h
	add	sp,4h
	mov	bx,ax
	mov	es,dx
	mov	ax,[bp-0Ah]
	mov	es:[bx+8h],ax
	inc	word ptr [bp-0Ah]
	cmp	word ptr [bp-0Ah],0Ah
	jbe	02C9h

l2BC7_02F1:
	mov	byte ptr [bp-8h],4Dh
	lea	ax,[bp-8h]
	push	ss
	push	ax
	push	cs
	call	03C2h
	add	sp,4h
	mov	bx,ax
	mov	es,dx
	mov	word ptr es:[bx+8h],0FFFFh
	mov	ax,1h
	mov	sp,bp
	pop	bp
	retf

;; fn2BC7_0312: 2BC7:0312
;;   Called from:
;;     2BC7:02A3 (in fn2BC7_0236)
fn2BC7_0312 proc
	push	bp
	mov	bp,sp
	sub	sp,6h
	les	bx,[bp+6h]
	cmp	byte ptr es:[bx],24h
	jz	039Eh

l2BC7_0321:
	lea	ax,[bp-2h]
	push	ss
	push	ax
	push	es
	push	bx
	call	far 2017h:03F5h
	add	sp,4h
	push	ax
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	0068h
	add	sp,0Ah
	mov	[bp-6h],ax
	mov	[bp-4h],dx
	or	ax,dx
	jnz	035Ch

l2BC7_0348:
	push	word ptr [bp-2h]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	011Ch
	add	sp,6h
	jmp	039Eh
2BC7:035A                               90 90                       ..    

l2BC7_035C:
	les	bx,[bp-6h]
	mov	ax,es:[bx+0Eh]
	or	ax,es:[bx+10h]
	jz	038Bh

l2BC7_0369:
	mov	ax,[bp+0Ah]
	or	ax,[bp+0Ch]
	jz	03B7h

l2BC7_0371:
	push	word ptr es:[bx+10h]
	push	word ptr es:[bx+0Eh]
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	call	far 2017h:0132h
	add	sp,8h
	or	ax,ax
	jge	03B7h

l2BC7_038B:
	les	bx,[bp-6h]
	mov	ax,[bp+0Ah]
	mov	dx,[bp+0Ch]
	mov	es:[bx+0Eh],ax
	mov	es:[bx+10h],dx
	jmp	03B7h

l2BC7_039E:
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	01EAh
	add	sp,8h
	mov	[bp-6h],ax
	mov	[bp-4h],dx

l2BC7_03B7:
	mov	ax,[bp-6h]
	mov	dx,[bp-4h]
	mov	sp,bp
	pop	bp
	retf
2BC7:03C1    90                                            .              

;; fn2BC7_03C2: 2BC7:03C2
;;   Called from:
;;     1825:4EFE (in fn1825_4DA6)
;;     21DC:10F8 (in main)
;;     2BC7:02D6 (in fn2BC7_0236)
;;     2BC7:02FA (in fn2BC7_0236)
;;     31FF:11D7 (in fn31FF_0F20)
;;     3431:010F (in fn3431_000A)
fn2BC7_03C2 proc
	push	bp
	mov	bp,sp
	sub	sp,1Ah
	push	si
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 2017h:03D0h
	add	sp,4h
	mov	[bp+6h],ax
	mov	[bp+8h],dx
	mov	word ptr [bp-18h],0h
	jmp	0407h

l2BC7_03E4:
	cmp	byte ptr [bp-1Ah],20h
	jz	0417h

l2BC7_03EA:
	cmp	word ptr [bp-18h],0Ah
	jnc	0417h

l2BC7_03F0:
	mov	al,[bp-1Ah]
	sub	ah,ah
	push	ax
	call	far 38ADh:001Eh
	add	sp,2h
	mov	si,[bp-18h]
	mov	[bp+si-12h],al
	inc	word ptr [bp-18h]

l2BC7_0407:
	mov	bx,[bp-18h]
	les	si,[bp+6h]
	mov	al,es:[bx+si]
	mov	[bp-1Ah],al
	or	al,al
	jnz	03E4h

l2BC7_0417:
	mov	si,[bp-18h]
	mov	byte ptr [bp+si-12h],0h
	lea	ax,[bp-2h]
	push	ss
	push	ax
	push	word ptr [bp-18h]
	lea	ax,[bp-12h]
	push	ss
	push	ax
	push	cs
	call	0068h
	add	sp,0Ah
	mov	[bp-16h],ax
	mov	[bp-14h],dx
	or	ax,dx
	jnz	0488h

l2BC7_043C:
	push	cs
	call	0034h
	mov	[bp-6h],ax
	mov	[bp-4h],dx
	lea	ax,[bp-12h]
	push	ss
	push	ax
	push	dx
	push	word ptr [bp-6h]
	call	far 2017h:01BAh
	add	sp,8h
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	push	word ptr [bp-6h]
	push	cs
	call	011Ch
	add	sp,6h
	sub	ax,ax
	push	ax
	push	ax
	push	word ptr [bp-4h]
	push	word ptr [bp-6h]
	push	cs
	call	01EAh
	add	sp,8h
	les	bx,[bp-6h]
	mov	es:[bx+0Ch],ax
	mov	es:[bx+0Eh],dx
	pop	si
	mov	sp,bp
	pop	bp
	retf

l2BC7_0488:
	mov	ax,[bp-16h]
	mov	dx,[bp-14h]
	pop	si
	mov	sp,bp
	pop	bp
	retf
2BC7:0493          90                                        .            

;; fn2BC7_0494: 2BC7:0494
;;   Called from:
;;     1825:5F89 (in fn1825_5F7C)
;;     20B2:01C6 (in fn20B2_01BA)
;;     31FF:104E (in fn31FF_0F20)
;;     31FF:10F5 (in fn31FF_0F20)
;;     31FF:1108 (in fn31FF_0F20)
;;     31FF:1214 (in fn31FF_0F20)
;;     31FF:1241 (in fn31FF_0F20)
;;     31FF:138C (in fn31FF_0F20)
;;     31FF:13E2 (in fn31FF_0F20)
;;     31FF:1872 (in fn31FF_17DA)
;;     3CEE:8E3F (in fn3CEE_4EAC)
fn2BC7_0494 proc
	push	bp
	mov	bp,sp
	sub	sp,12h
	push	si
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 2017h:03D0h
	add	sp,4h
	mov	[bp+6h],ax
	mov	[bp+8h],dx
	mov	word ptr [bp-0Eh],0h
	jmp	04D9h

l2BC7_04B6:
	cmp	byte ptr [bp-12h],20h
	jz	04E9h

l2BC7_04BC:
	cmp	word ptr [bp-0Eh],0Ah
	jnc	04E9h

l2BC7_04C2:
	mov	al,[bp-12h]
	sub	ah,ah
	push	ax
	call	far 38ADh:001Eh
	add	sp,2h
	mov	si,[bp-0Eh]
	mov	[bp+si-0Ch],al
	inc	word ptr [bp-0Eh]

l2BC7_04D9:
	mov	bx,[bp-0Eh]
	les	si,[bp+6h]
	mov	al,es:[bx+si]
	mov	[bp-12h],al
	or	al,al
	jnz	04B6h

l2BC7_04E9:
	mov	si,[bp-0Eh]
	mov	byte ptr [bp+si-0Ch],0h
	lea	ax,[bp-10h]
	push	ss
	push	ax
	push	word ptr [bp-0Eh]
	lea	ax,[bp-0Ch]
	push	ss
	push	ax
	push	cs
	call	0068h
	add	sp,0Ah
	pop	si
	mov	sp,bp
	pop	bp
	retf
2BC7:0509                            90                            .      

;; fn2BC7_050A: 2BC7:050A
;;   Called from:
;;     1825:1569 (in fn1825_139A)
;;     1825:15A5 (in fn1825_139A)
;;     1825:20FC (in fn1825_2020)
;;     1825:2138 (in fn1825_2020)
;;     1825:4C23 (in fn1825_4BFA)
;;     1825:558A (in fn1825_54D4)
;;     1825:57B9 (in fn1825_5730)
;;     1825:58DE (in fn1825_5850)
;;     1825:5E89 (in fn1825_5E5C)
;;     20B2:0098 (in fn20B2_005C)
;;     20B2:023C (in fn20B2_01FC)
;;     20B2:02D3 (in fn20B2_01FC)
;;     20B2:04E8 (in fn20B2_0474)
;;     20B2:067B (in fn20B2_0612)
;;     20B2:07DE (in fn20B2_0776)
;;     20B2:08EF (in fn20B2_0898)
;;     20B2:0A00 (in fn20B2_099A)
;;     20B2:0B31 (in fn20B2_0AC6)
;;     20B2:0F78 (in fn20B2_0EF6)
;;     21DC:08CF (in fn21DC_0856)
;;     2368:0D87 (in fn2368_0D20)
fn2BC7_050A proc
	push	bp
	mov	bp,sp
	les	bx,[bp+6h]
	mov	ax,es:[bx+0Ah]
	mov	dx,es:[bx+0Ch]
	pop	bp
	retf
2BC7:051A                               55 8B EC 83 EC 04           U.....
2BC7:0520 EB 18 C4 5E 0A 26 8A 07 88 46 FC 38 46 FE 74 04 ...^.&...F.8F.t.
2BC7:0530 3C 3F 75 19 FF 46 06 FF 46 0A C4 5E 06 26 8A 07 <?u..F..F..^.&..
2BC7:0540 88 46 FE 0A C0 75 DB EB 04 90 FF 46 0A C4 5E 0A .F...u.....F..^.
2BC7:0550 26 80 3F 3F 74 F4 26 80 3F 2A 74 0F 26 80 3F 00 &.??t.&.?*t.&.?.
2BC7:0560 75 10 C4 5E 06 26 80 3F 00 75 07 B8 01 00 8B E5 u..^.&.?.u......
2BC7:0570 5D CB 2B C0 8B E5 5D CB 55 8B EC C7 06 96 13 00 ].+...].U.......
2BC7:0580 00 8B 46 0A A3 A4 13 B8 0B 00 50 FF 76 08 FF 76 ..F.......P.v..v
2BC7:0590 06 B8 98 13 1E 50 9A DA 01 17 20 83 C4 0A 5D CB .....P.... ...].
2BC7:05A0 56 EB 2A 90 B8 98 13 1E 50 8B 1E 96 13 D1 E3 D1 V.*.....P.......
2BC7:05B0 E3 C4 36 8E 13 26 FF 70 02 26 FF 30 0E E8 5A FF ..6..&.p.&.0..Z.
2BC7:05C0 83 C4 08 3B 06 A4 13 74 0D FF 06 96 13 A1 92 13 ...;...t........
2BC7:05D0 39 06 96 13 72 CE A1 92 13 39 06 96 13 73 1D BE 9...r....9...s..
2BC7:05E0 96 13 8B 1C FF 04 D1 E3 D1 E3 C4 36 8E 13 26 C4 ...........6..&.
2BC7:05F0 18 26 8B 47 0C 26 8B 57 0E 5E CB 90 2B C0 99 5E .&.G.&.W.^..+..^
