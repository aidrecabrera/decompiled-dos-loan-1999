;;; Segment 21DC (21DC:0000)
21DC:0000 9A EE 03 DC 21 CB                               ....!.          

;; fn21DC_0006: 21DC:0006
;;   Called from:
;;     21DC:005B (in fn21DC_0006)
;;     21DC:0D85 (in fn21DC_0D60)
;;     3431:0735 (in fn3431_06CC)
fn21DC_0006 proc
	push	bp
	mov	bp,sp
	sub	sp,6h
	mov	ax,[0F1Bh]
	mov	[bp-2h],ax
	mov	ax,[127Ah]
	mov	[bp-4h],ax
	mov	ax,[bp+6h]
	sub	ax,80h
	cmp	ax,7h
	ja	0096h

l21DC_0023:
	add	ax,ax
	xchg	bx,ax
	jmp	word ptr cs:[bx+86h]
21DC:002B                                  90                        .    

l21DC_002C:
	cmp	word ptr [1268h],0h
	jz	0096h

l21DC_0033:
	call	far 20B2h:107Ch
	jmp	0096h

l21DC_003A:
	call	far 1F38h:0CC5h
	sub	ax,ax
	push	ax
	push	ax
	call	far 3431h:07B6h
	add	sp,4h
	mov	[bp-6h],ax
	cmp	ax,80h
	jz	0058h

l21DC_0053:
	cmp	ax,83h
	jnz	0096h

l21DC_0058:
	push	word ptr [bp-6h]
	push	cs
	call	0006h
	add	sp,2h
	jmp	0096h

l21DC_0064:
	cmp	word ptr [0EE2h],0h
	jz	0096h

l21DC_006B:
	mov	word ptr [0EE4h],1h
	mov	ax,[0F1Bh]
	cmp	ax,1h
	jc	0096h

l21DC_0079:
	cmp	ax,6h
	ja	0096h

l21DC_007E:
	call	far 1825h:000Ah
	jmp	0096h
21DC:0085                90                                    .          
l21DC_0086	dw	0x002C
l21DC_0088	dw	0x003A
l21DC_008A	dw	0x0096
l21DC_008C	dw	0x0064
l21DC_008E	dw	0x0096
l21DC_0090	dw	0x0096
l21DC_0092	dw	0x0096
l21DC_0094	dw	0x0096

l21DC_0096:
	mov	ax,[bp-2h]
	mov	[0F1Bh],ax
	mov	ax,[bp-4h]
	mov	[127Ah],ax
	mov	sp,bp
	pop	bp
	retf

;; fn21DC_00A6: 21DC:00A6
;;   Called from:
;;     20B2:05B7 (in fn20B2_0474)
;;     20B2:071C (in fn20B2_0612)
;;     20B2:0857 (in fn20B2_0776)
;;     20B2:0959 (in fn20B2_0898)
;;     20B2:0A79 (in fn20B2_099A)
;;     20B2:0B9B (in fn20B2_0AC6)
;;     20B2:0FC0 (in fn20B2_0EF6)
;;     21DC:0904 (in fn21DC_0856)
;;     21DC:114D (in main)
;;     3CEE:511A (in fn3CEE_4EAC)
;;     3CEE:85D4 (in fn3CEE_858E)
fn21DC_00A6 proc
	push	bp
	mov	bp,sp
	mov	ax,[127Eh]
	mov	[1280h],ax
	mov	ax,[bp+6h]
	mov	[127Eh],ax
	pop	bp
	retf
21DC:00B7                      90 55 8B EC EB 0A 90 9A 3C        .U......<
21DC:00C0 03 68 23 FF 0E 7C 12 A1 7C 12 39 46 06 72 EF EB .h#..|..|.9F.r..
21DC:00D0 13 90 83 06 96 12 10 C4 1E 96 12 26 C7 07 00 00 ...........&....
21DC:00E0 FF 06 7C 12 A1 7C 12 39 46 06 77 E6 5D CB 55 8B ..|..|.9F.w.].U.
21DC:00F0 EC 83 EC 12 EB 3A B8 16 00 F7 26 88 12 03 06 82 .....:....&.....
21DC:0100 12 8B 16 84 12 89 46 FC 89 56 FE 52 50 9A 2A 04 ......F..V.RP.*.
21DC:0110 68 23 83 C4 04 C4 5E FC 26 8B 47 0E 26 8B 57 10 h#....^.&.G.&.W.
21DC:0120 26 C4 5F 12 26 89 47 04 26 89 57 06 FF 0E 88 12 &._.&.G.&.W.....
21DC:0130 A1 8A 12 39 06 88 12 77 BD 3D 01 00 76 78 B8 16 ...9...w.=..vx..
21DC:0140 00 F7 26 88 12 03 06 82 12 8B 16 84 12 89 46 F2 ..&...........F.
21DC:0150 89 56 F4 C4 5E F2 26 8B 47 02 89 46 F6 26 8B 47 .V..^.&.G..F.&.G
21DC:0160 12 26 8B 57 14 89 46 F8 89 56 FA 26 8B 07 A3 8A .&.W..F..V.&....
21DC:0170 12 FF 0E 88 12 0E E8 75 FF FF 06 88 12 B8 16 00 .......u........
21DC:0180 F7 26 88 12 03 06 82 12 8B 16 84 12 89 46 EE 89 .&...........F..
21DC:0190 56 F0 C4 5E EE 8B 46 F6 26 89 47 02 8B 46 F8 8B V..^..F.&.G..F..
21DC:01A0 56 FA 26 89 47 12 26 89 57 14 A1 8A 12 26 89 07 V.&.G.&.W....&..
21DC:01B0 A1 88 12 A3 8A 12 8B E5 5D CB 0E E8 30 FF 0E E8 ........]...0...
21DC:01C0 60 04 CB 90                                     `...            

;; fn21DC_01C4: 21DC:01C4
;;   Called from:
;;     21DC:0352 (in fn21DC_0322)
;;     21DC:0398 (in fn21DC_0368)
fn21DC_01C4 proc
	push	bp
	mov	bp,sp
	sub	sp,12h
	push	si
	mov	ax,[127Ah]
	mov	[bp-0Ch],ax
	mov	ax,[1280h]
	mov	[bp-0Ah],ax
	mov	ax,[127Ch]
	mov	[bp-0Eh],ax
	mov	ax,[127Eh]
	mov	[127Ch],ax
	mov	ax,[1296h]
	mov	dx,[1298h]
	mov	bx,[127Ch]
	mov	cl,4h
	shl	bx,cl
	sub	ax,bx
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	mov	ax,16h
	mul	word ptr [128Ah]
	mov	si,ax
	les	bx,[1282h]
	mov	ax,[127Ah]
	mov	es:[bx+si+2h],ax
	mov	word ptr [127Ah],0h
	inc	word ptr [1288h]
	mov	ax,16h
	mul	word ptr [1288h]
	add	ax,bx
	mov	dx,es
	mov	[bp-12h],ax
	mov	[bp-10h],dx
	les	bx,[bp-12h]
	mov	ax,[128Ah]
	mov	es:[bx],ax
	mov	ax,[bp+6h]
	mov	dx,[bp+8h]
	mov	es:[bx+12h],ax
	mov	es:[bx+14h],dx
	mov	word ptr es:[bx+2h],0h
	mov	ax,[1288h]
	mov	[128Ah],ax
	les	bx,[bp+6h]
	call	dword ptr es:[bx+0Eh]
	cmp	word ptr [10D2h],65h
	jnz	0281h

l21DC_025A:
	mov	ax,[bp-4h]
	mov	dx,[bp-2h]
	mov	bx,[127Ch]
	mov	cl,4h
	shl	bx,cl
	add	ax,bx
	cmp	ax,[1296h]
	jnc	0281h

l21DC_0270:
	call	far 2368h:033Ch
	jmp	025Ah
21DC:0277                      90                                .        

l21DC_0278:
	call	far 2368h:033Ch
	dec	word ptr [127Ch]

l21DC_0281:
	cmp	word ptr [127Ch],0h
	jnz	0278h

l21DC_0288:
	jmp	02C4h

l21DC_028A:
	mov	ax,16h
	mul	word ptr [1288h]
	add	ax,[1282h]
	mov	dx,[1284h]
	mov	[bp-8h],ax
	mov	[bp-6h],dx
	push	dx
	push	ax
	call	far 2368h:042Ah
	add	sp,4h
	les	bx,[bp-8h]
	mov	ax,es:[bx+0Eh]
	mov	dx,es:[bx+10h]
	les	bx,es:[bx+12h]
	mov	es:[bx+4h],ax
	mov	es:[bx+6h],dx
	dec	word ptr [1288h]

l21DC_02C4:
	mov	ax,[128Ah]
	cmp	[1288h],ax
	ja	028Ah

l21DC_02CD:
	mov	ax,16h
	mul	word ptr [1288h]
	mov	bx,ax
	les	si,[1282h]
	mov	ax,es:[bx+si]
	mov	[128Ah],ax
	dec	word ptr [1288h]
	mov	ax,[bp-0Ch]
	mov	[127Ah],ax
	mov	ax,[bp-0Ah]
	mov	[127Eh],ax
	mov	ax,[bp-0Eh]
	mov	[127Ch],ax
	mov	ax,[1292h]
	mov	dx,[1294h]
	cmp	[1296h],ax
	jnc	031Dh

l21DC_0303:
	mov	ax,1h
	push	ax
	call	far 20B2h:0176h
	add	sp,2h
	mov	ax,[1292h]
	mov	dx,[1294h]
	mov	[1296h],ax
	mov	[1298h],dx

l21DC_031D:
	pop	si
	mov	sp,bp
	pop	bp
	retf

;; fn21DC_0322: 21DC:0322
;;   Called from:
;;     21DC:0919 (in fn21DC_0856)
;;     21DC:110A (in main)
;;     21DC:1174 (in main)
fn21DC_0322 proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	les	bx,[1296h]
	mov	ax,es:[bx+8h]
	mov	dx,es:[bx+0Ah]
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	or	ax,dx
	jz	035Eh

l21DC_033E:
	les	bx,[bp-4h]
	mov	ax,es:[bx+0Eh]
	or	ax,es:[bx+10h]
	jz	035Eh

l21DC_034B:
	sub	word ptr [1296h],10h
	push	dx
	push	bx
	push	cs
	call	01C4h
	add	sp,4h
	mov	sp,bp
	pop	bp
	retf
21DC:035D                                        90                    .  

l21DC_035E:
	mov	word ptr [10D2h],3h
	mov	sp,bp
	pop	bp
	retf

;; fn21DC_0368: 21DC:0368
;;   Called from:
;;     20B2:05BF (in fn20B2_0474)
;;     20B2:0724 (in fn20B2_0612)
;;     20B2:085F (in fn20B2_0776)
;;     20B2:0961 (in fn20B2_0898)
;;     20B2:0A81 (in fn20B2_099A)
;;     20B2:0BA3 (in fn20B2_0AC6)
;;     20B2:0FC8 (in fn20B2_0EF6)
;;     3CEE:5136 (in fn3CEE_4EAC)
;;     3CEE:85F0 (in fn3CEE_858E)
fn21DC_0368 proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	les	bx,[1296h]
	mov	ax,es:[bx+8h]
	mov	dx,es:[bx+0Ah]
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	or	ax,dx
	jz	03E2h

l21DC_0384:
	les	bx,[bp-4h]
	mov	ax,es:[bx+0Eh]
	or	ax,es:[bx+10h]
	jz	03E2h

l21DC_0391:
	sub	word ptr [1296h],10h
	push	dx
	push	bx
	push	cs
	call	01C4h
	add	sp,4h
	add	word ptr [1296h],10h
	mov	ax,10h
	push	ax
	push	word ptr [1294h]
	push	word ptr [1292h]
	push	word ptr [1298h]
	push	word ptr [1296h]
	call	far 2017h:02ECh
	add	sp,0Ah
	les	bx,[1296h]
	cmp	word ptr es:[bx],0h
	jnz	03D5h

l21DC_03CA:
	mov	word ptr es:[bx],80h
	mov	word ptr es:[bx+8h],0h

l21DC_03D5:
	les	bx,[1292h]
	mov	word ptr es:[bx],0h
	mov	sp,bp
	pop	bp
	retf

l21DC_03E2:
	mov	word ptr [10D2h],3h
	mov	sp,bp
	pop	bp
	retf
21DC:03EC                                     CB 90                   ..  

;; fn21DC_03EE: 21DC:03EE
;;   Called from:
;;     3B5D:051D (in fn3B5D_04C8)
;;     3B5D:058B (in fn3B5D_057A)
;;     3B5D:05A3 (in fn3B5D_0592)
;;     3B5D:05DE (in fn3B5D_05D0)
;;     3CEE:93E5 (in fn3CEE_4EAC)
;;     3CEE:9432 (in fn3CEE_4EAC)
fn21DC_03EE proc
	push	bp
	mov	bp,sp
	sub	sp,6h
	push	di
	push	si
	les	bx,[1292h]
	test	word ptr es:[bx],100h
	jz	040Ah

l21DC_0401:
	push	es
	push	bx
	push	cs
	call	066Ch
	add	sp,4h

l21DC_040A:
	les	bx,[1292h]
	mov	ax,[1296h]
	mov	dx,[1298h]
	push	si
	mov	di,bx
	mov	si,ax
	push	ds
	mov	ds,dx
	mov	cx,8h
	rep movsw
	pop	ds
	pop	si
	test	word ptr es:[bx],100h
	jnz	042Eh

l21DC_042B:
	jmp	04AFh

l21DC_042E:
	cmp	word ptr es:[bx+0Ch],0h
	jnz	04AFh

l21DC_0435:
	mov	ax,es:[bx+2h]
	mov	[bp-6h],ax
	mov	si,ax
	inc	si
	push	si
	lea	ax,[bp-4h]
	push	ss
	push	ax
	push	cs
	call	0696h
	add	sp,6h
	or	ax,ax
	jz	048Eh

l21DC_0450:
	push	word ptr [bp-6h]
	les	bx,[1296h]
	push	word ptr es:[bx+0Ah]
	push	word ptr es:[bx+8h]
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	call	far 2017h:02ECh
	add	sp,0Ah
	mov	bx,[bp-6h]
	les	di,[bp-4h]
	mov	byte ptr es:[bx+di],0h
	les	bx,[1292h]
	mov	es:[bx+0Ch],si
	mov	ax,di
	mov	dx,[bp-2h]
	mov	es:[bx+8h],ax
	mov	es:[bx+0Ah],dx
	jmp	04AFh

l21DC_048E:
	les	bx,[1292h]
	mov	word ptr es:[bx+2h],0h
	mov	ax,5DC2h
	mov	es:[bx+8h],ax
	mov	es:[bx+0Ah],ds
	mov	word ptr es:[bx+0Ch],0h
	mov	word ptr [10D2h],4h

l21DC_04AF:
	sub	word ptr [1296h],10h
	pop	si
	pop	di
	mov	sp,bp
	pop	bp
	retf

;; fn21DC_04BA: 21DC:04BA
;;   Called from:
;;     1825:0D9F (in fn1825_0D5E)
;;     20B2:016F (in fn20B2_0140)
;;     20B2:0AB0 (in fn20B2_099A)
;;     20B2:0BE9 (in fn20B2_0BDC)
;;     20B2:0DE3 (in fn20B2_0BDC)
;;     20B2:0E6F (in fn20B2_0BDC)
;;     20B2:0EAB (in fn20B2_0E9E)
;;     20B2:0F04 (in fn20B2_0EF6)
;;     20B2:1083 (in fn20B2_107C)
;;     20B2:10A5 (in fn20B2_107C)
;;     20B2:10B6 (in fn20B2_10AC)
;;     20B2:10E4 (in fn20B2_10AC)
;;     20B2:1280 (in fn20B2_1192)
;;     21DC:1178 (in main)
fn21DC_04BA proc
	push	bp
	mov	bp,sp
	sub	sp,2h
	inc	word ptr [1278h]
	cmp	word ptr [1278h],14h
	jbe	04D7h

l21DC_04CB:
	mov	ax,1h
	push	ax
	call	far 3CEEh:01B7h
	add	sp,2h

l21DC_04D7:
	cmp	word ptr [1278h],5h
	jnc	04E3h

l21DC_04DE:
	call	far 2644h:4B2Eh

l21DC_04E3:
	mov	word ptr [1278h],14h
	cmp	word ptr [20B8h],0h
	jz	0517h

l21DC_04F0:
	mov	ax,1h
	push	ax
	mov	ax,5DC4h
	push	ds
	push	ax
	push	word ptr [20BAh]
	call	far 208Fh:00EFh
	add	sp,8h
	push	word ptr [20BAh]
	call	far 208Fh:00AEh
	add	sp,2h
	mov	word ptr [20B8h],0h

l21DC_0517:
	cmp	word ptr [20B2h],0h
	jz	053Ch

l21DC_051E:
	push	word ptr [20B2h]
	call	far 208Fh:00AEh
	add	sp,2h
	mov	word ptr [20B2h],0h
	mov	ax,4h
	push	ax
	call	far 1F38h:0D8Dh
	add	sp,2h

l21DC_053C:
	call	far 3431h:013Eh
	call	far 2E37h:0446h
	call	far 2C27h:01ACh
	call	far 1F38h:0D84h
	call	far 1F38h:0BF1h
	call	far 1F38h:036Fh
	push	word ptr [1290h]
	call	far 3CEEh:01B7h
	mov	sp,bp
	pop	bp
	retf
21DC:0567                      90 83 3E B4 13 00 74 0C FF        ..>...t..
21DC:0570 36 B2 13 9A CB 00 17 20 83 C4 02 B8 01 00 50 9A 6...... ......P.
21DC:0580 B7 01 EE 3C 83 C4 02 CB                         ...<....        

;; fn21DC_0588: 21DC:0588
;;   Called from:
;;     2368:0AAF (in fn2368_0A7A)
;;     2368:0CD6 (in fn2368_0C7E)
fn21DC_0588 proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	mov	ax,[bp+6h]
	add	ax,[1288h]
	cmp	ax,[128Ch]
	jnc	05C8h

l21DC_059B:
	mov	ax,16h
	mul	word ptr [1288h]
	add	ax,[1282h]
	mov	dx,[1284h]
	add	ax,16h
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	les	bx,[bp-4h]
	mov	word ptr es:[bx],0h
	mov	ax,[bp+6h]
	add	[1288h],ax
	mov	ax,bx
	mov	sp,bp
	pop	bp
	retf

l21DC_05C8:
	mov	ax,5DC6h
	push	ds
	push	ax
	mov	ax,16h
	push	ax
	call	far 20B2h:0E9Eh
	add	sp,6h
	les	bx,[1282h]
	mov	word ptr es:[bx],0h
	mov	ax,bx
	mov	dx,es
	mov	sp,bp
	pop	bp
	retf

;; fn21DC_05EA: 21DC:05EA
;;   Called from:
;;     2368:0D56 (in fn2368_0D20)
fn21DC_05EA proc
	push	bp
	mov	bp,sp
	mov	ax,[128Ch]
	dec	ax
	cmp	ax,[1288h]
	jbe	060Ch

l21DC_05F7:
	dec	word ptr [128Ch]
	mov	ax,16h
	mul	word ptr [128Ch]
	add	ax,[1282h]

l21DC_0606:
	mov	dx,[1284h]
	pop	bp
	retf

l21DC_060C:
	mov	ax,5DCCh
	push	ds
	push	ax
	mov	ax,16h
	push	ax
	call	far 20B2h:0E9Eh
	add	sp,6h
	mov	ax,[1282h]
	jmp	0606h
21DC:0622       55 8B EC 83 EC 04 EB 34 B8 16 00 F7 26 8C   U......4....&.
21DC:0630 12 03 06 82 12 8B 16 84 12 89 46 FC 89 56 FE 52 ..........F..V.R
21DC:0640 50 9A 2A 04 68 23 83 C4 04 C4 5E FC 26 C4 5F 12 P.*.h#....^.&._.
21DC:0650 2B C0 26 89 47 06 26 89 47 04 FF 06 8C 12 A1 86 +.&.G.&.G.......
21DC:0660 12 39 06 8C 12 72 C3 8B E5 5D CB 90             .9...r...]..    

;; fn21DC_066C: 21DC:066C
;;   Called from:
;;     21DC:0403 (in fn21DC_03EE)
fn21DC_066C proc
	push	bp
	mov	bp,sp
	les	bx,[bp+6h]
	test	word ptr es:[bx],100h
	jz	0693h

l21DC_0679:
	cmp	word ptr es:[bx+0Ch],0h
	jz	0693h

l21DC_0680:
	push	word ptr es:[bx+0Ch]
	push	word ptr es:[bx+0Ah]
	push	word ptr es:[bx+8h]
	push	cs
	call	074Eh
	add	sp,6h

l21DC_0693:
	pop	bp
	retf
21DC:0695                90                                    .          

;; fn21DC_0696: 21DC:0696
;;   Called from:
;;     21DC:0445 (in fn21DC_03EE)
;;     2644:1846 (in fn2644_17C8)
;;     2644:19C8 (in fn2644_17C8)
;;     2EB3:0640 (in fn2EB3_060C)
;;     2EB3:075E (in fn2EB3_060C)
;;     31FF:1A30 (in fn31FF_19EA)
;;     31FF:1AA3 (in fn31FF_19EA)
;;     3CEE:69B6 (in fn3CEE_6980)
;;     3CEE:910B (in fn3CEE_4EAC)
;;     3CEE:9340 (in fn3CEE_4EAC)
fn21DC_0696 proc
	push	bp
	mov	bp,sp
	push	word ptr [bp+0Ah]
	call	far 3CEEh:0747h
	add	sp,2h
	les	bx,[bp+6h]
	mov	es:[bx],ax
	mov	es:[bx+2h],dx
	or	ax,dx
	jz	06B8h

l21DC_06B2:
	mov	ax,1h
	pop	bp
	retf
21DC:06B7                      90                                .        

l21DC_06B8:
	push	word ptr [bp+0Ah]
	push	es
	push	bx
	call	far 2068h:0154h
	add	sp,6h
	les	bx,[bp+6h]
	mov	ax,es:[bx]
	or	ax,es:[bx+2h]
	jnz	06B2h

l21DC_06D1:
	mov	word ptr [10D2h],4h
	sub	ax,ax
	pop	bp
	retf
21DC:06DB                                  90                        .    

;; fn21DC_06DC: 21DC:06DC
;;   Called from:
;;     21DC:1090 (in fn21DC_0EC2)
;;     2368:000B (in fn2368_0002)
;;     2644:0017 (in fn2644_000E)
;;     2BC7:025C (in fn2BC7_0236)
;;     2C27:00C9 (in fn2C27_0032)
;;     2D1A:0011 (in fn2D1A_0008)
;;     31FF:0029 (in fn31FF_0008)
;;     31FF:0055 (in fn31FF_0008)
fn21DC_06DC proc
	push	bp
	mov	bp,sp
	push	word ptr [bp+0Ah]
	call	far 3CEEh:0747h
	add	sp,2h
	les	bx,[bp+6h]
	mov	es:[bx],ax
	mov	es:[bx+2h],dx
	or	ax,dx
	jz	06FEh

l21DC_06F8:
	mov	ax,1h
	pop	bp
	retf
21DC:06FD                                        90                    .  

l21DC_06FE:
	sub	ax,ax
	pop	bp
	retf

;; fn21DC_0702: 21DC:0702
;;   Called from:
;;     2368:04B2 (in fn2368_042A)
;;     2368:04E0 (in fn2368_042A)
;;     2644:0FE3 (in fn2644_0F82)
;;     2644:1024 (in fn2644_0F82)
;;     2644:4741 (in fn2644_45CA)
;;     2644:4780 (in fn2644_45CA)
;;     2EB3:0058 (in fn2EB3_0002)
;;     2EB3:098A (in fn2EB3_07B2)
;;     31FF:1A79 (in fn31FF_19EA)
;;     31FF:1C40 (in fn31FF_1C0A)
;;     3431:0160 (in fn3431_013E)
fn21DC_0702 proc
	push	bp
	mov	bp,sp
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 3CEEh:0732h
	add	sp,4h
	mov	ax,1h
	pop	bp
	retf

;; fn21DC_0718: 21DC:0718
;;   Called from:
;;     2368:00EF (in fn2368_00D4)
;;     2368:0626 (in fn2368_059E)
;;     31FF:18E8 (in fn31FF_17DA)
;;     3B5D:04E2 (in fn3B5D_04C8)
fn21DC_0718 proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	push	word ptr [bp+6h]
	call	far 3CEEh:0747h
	add	sp,2h
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	or	ax,dx
	jnz	0743h

l21DC_0733:
	push	word ptr [bp+6h]
	lea	ax,[bp-4h]
	push	ss
	push	ax
	call	far 2068h:0154h
	add	sp,6h

l21DC_0743:
	mov	ax,[bp-4h]
	mov	dx,[bp-2h]
	mov	sp,bp
	pop	bp
	retf
21DC:074D                                        90                    .  

;; fn21DC_074E: 21DC:074E
;;   Called from:
;;     21DC:068C (in fn21DC_066C)
;;     2368:035A (in fn2368_033C)
;;     2368:0450 (in fn2368_042A)
;;     2EB3:0046 (in fn2EB3_0002)
;;     31FF:1970 (in fn31FF_17DA)
;;     3431:01FD (in fn3431_013E)
;;     3CEE:69F1 (in fn3CEE_6980)
;;     3CEE:93A6 (in fn3CEE_4EAC)
;;     3CEE:945F (in fn3CEE_4EAC)
fn21DC_074E proc
	push	bp
	mov	bp,sp
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 3CEEh:0732h
	add	sp,4h
	pop	bp
	retf
21DC:0761    90 C7 06 9A 12 02 00 C7 06 9C 12 0A 00 A1 7A  ..............z
21DC:0770 12 A3 A2 12 C7 06 A4 12 00 00 CB 90 55 8B EC 83 ............U...
21DC:0780 EC 04 56 83 3E 8A 12 00 74 26 B8 16 00 F7 26 8A ..V.>...t&....&.
21DC:0790 12 8B F0 C4 1E 82 12 26 FF 70 14 26 FF 70 12 9A .......&.p.&.p..
21DC:07A0 0A 05 C7 2B 83 C4 04 89 46 FC 89 56 FE EB 0A 90 ...+....F..V....
21DC:07B0 B8 D2 5D 89 46 FC 8C 5E FE C7 06 9A 12 00 01 FF ..].F..^........
21DC:07C0 76 FE FF 76 FC 9A F5 03 17 20 83 C4 04 A3 9C 12 v..v..... ......
21DC:07D0 8B 46 FC 8B 56 FE A3 A2 12 89 16 A4 12 C7 06 A6 .F..V...........
21DC:07E0 12 00 00 5E 8B E5 5D CB 55 8B EC 83 EC 04 8D 46 ...^..].U......F
21DC:07F0 FC 16 50 9A 08 00 B4 3C 83 C4 04 2B C0 50 8B 46 ..P....<...+.P.F
21DC:0800 FC 8B 56 FE 05 10 00 52 50 9A 2E 02 68 23 83 C4 ..V....RP...h#..
21DC:0810 06 0E E8 D9 FB 8B E5 5D CB 90                   .......]..      

;; fn21DC_081A: 21DC:081A
;;   Called from:
;;     3431:06F9 (in fn3431_06CC)
fn21DC_081A proc
	push	bp
	mov	bp,sp
	sub	sp,2h
	mov	word ptr [bp-2h],0h

l21DC_0825:
	mov	bx,[bp-2h]
	mov	ax,bx
	shl	bx,1h
	add	bx,ax
	shl	bx,1h
	mov	ax,[bp+6h]
	cmp	[bx+20C0h],ax
	jz	0842h

l21DC_0839:
	inc	word ptr [bp-2h]
	cmp	word ptr [bp-2h],21h
	jc	0825h

l21DC_0842:
	cmp	word ptr [bp-2h],21h
	jnc	0850h

l21DC_0848:
	mov	ax,1h
	mov	sp,bp
	pop	bp
	retf
21DC:084F                                              90                .

l21DC_0850:
	sub	ax,ax
	mov	sp,bp
	pop	bp
	retf

;; fn21DC_0856: 21DC:0856
;;   Called from:
;;     3431:0712 (in fn3431_06CC)
fn21DC_0856 proc
	push	bp
	mov	bp,sp
	sub	sp,0Ah
	push	si
	mov	ax,[0F1Bh]
	mov	[bp-6h],ax
	mov	ax,[127Ah]
	mov	[bp-8h],ax
	mov	word ptr [bp-0Ah],0h

l21DC_086E:
	mov	bx,[bp-0Ah]
	mov	ax,bx
	shl	bx,1h
	add	bx,ax
	shl	bx,1h
	mov	ax,[bp+6h]
	cmp	[bx+20C0h],ax
	jz	088Bh

l21DC_0882:
	inc	word ptr [bp-0Ah]
	cmp	word ptr [bp-0Ah],21h
	jc	086Eh

l21DC_088B:
	cmp	word ptr [bp-0Ah],21h
	jc	0894h

l21DC_0891:
	jmp	091Dh

l21DC_0894:
	mov	bx,[bp-0Ah]
	mov	ax,bx
	shl	bx,1h
	add	bx,ax
	shl	bx,1h
	mov	ax,[bx+20C2h]
	mov	dx,[bx+20C4h]
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	or	dx,ax
	jz	091Dh

l21DC_08B1:
	mov	word ptr [0F1Bh],0h
	sub	ax,ax
	push	ax
	mov	ax,16h
	mul	word ptr [128Ah]
	mov	si,ax
	les	bx,[1282h]
	push	word ptr es:[bx+si+14h]
	push	word ptr es:[bx+si+12h]
	call	far 2BC7h:050Ah
	add	sp,4h
	push	dx
	push	ax
	call	far 2368h:022Eh
	add	sp,6h
	push	word ptr [127Ah]
	call	far 2368h:01E0h
	add	sp,2h
	sub	ax,ax
	push	ax
	push	word ptr [20ACh]
	push	word ptr [20AAh]
	call	far 2368h:022Eh
	add	sp,6h
	mov	ax,3h
	push	ax
	push	cs
	call	00A6h
	add	sp,2h
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	call	far 2368h:030Eh
	add	sp,4h
	push	cs
	call	0322h

l21DC_091D:
	mov	ax,[bp-6h]
	mov	[0F1Bh],ax
	mov	ax,[bp-8h]
	mov	[127Ah],ax
	pop	si
	mov	sp,bp
	pop	bp
	retf
21DC:092E                                           55 8B               U.
21DC:0930 EC 83 EC 04 56 B8 12 00 F7 66 06 8B F0 56 9A 47 ....V....f...V.G
21DC:0940 07 EE 3C 83 C4 02 89 46 FC 89 56 FE 0B C2 75 0E ..<....F..V...u.
21DC:0950 56 8D 46 FC 16 50 9A 54 01 68 20 83 C4 06 8B 46 V.F..P.T.h ....F
21DC:0960 FC 8B 56 FE 5E 8B E5 5D CB 90                   ..V.^..]..      

;; fn21DC_096A: 21DC:096A
;;   Called from:
;;     2644:1012 (in fn2644_0F82)
fn21DC_096A proc
	push	bp
	mov	bp,sp
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 3CEEh:0732h
	add	sp,4h
	pop	bp
	retf
21DC:097D                                        90                    .  

;; fn21DC_097E: 21DC:097E
;;   Called from:
;;     1825:007F (in fn1825_000A)
;;     1825:4D4A (in fn1825_4CFE)
;;     2BC7:000B (in fn2BC7_0000)
;;     2BC7:003F (in fn2BC7_0034)
;;     2BC7:0137 (in fn2BC7_011C)
;;     2D1A:0AAB (in fn2D1A_0A76)
;;     2D1A:0CB6 (in fn2D1A_0BD2)
;;     2E37:02BC (in fn2E37_02A4)
;;     2E37:034E (in fn2E37_02A4)
;;     3431:001A (in fn3431_000A)
;;     3431:0046 (in fn3431_000A)
;;     3431:0059 (in fn3431_000A)
;;     3431:0072 (in fn3431_000A)
;;     3431:0091 (in fn3431_000A)
;;     3431:00BF (in fn3431_000A)
;;     3CEE:65B8 (in fn3CEE_6121)
;;     3CEE:65D6 (in fn3CEE_6121)
;;     3CEE:65F4 (in fn3CEE_6121)
;;     3CEE:6614 (in fn3CEE_6121)
;;     3CEE:9169 (in fn3CEE_4EAC)
fn21DC_097E proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	push	word ptr [bp+6h]
	call	far 3CEEh:0747h
	add	sp,2h
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	or	ax,dx
	jnz	09A9h

l21DC_0999:
	push	word ptr [bp+6h]
	lea	ax,[bp-4h]
	push	ss
	push	ax
	call	far 2068h:0154h
	add	sp,6h

l21DC_09A9:
	mov	ax,[bp-4h]
	mov	dx,[bp-2h]
	mov	sp,bp
	pop	bp
	retf
21DC:09B3          90                                        .            

;; fn21DC_09B4: 21DC:09B4
;;   Called from:
;;     1825:0137 (in fn1825_000A)
;;     1825:0D83 (in fn1825_0D5E)
;;     1825:137C (in fn1825_0E72)
;;     1825:1D22 (in fn1825_18A6)
;;     1825:23C0 (in fn1825_23A8)
;;     1825:3748 (in fn1825_3436)
;;     1825:706D (in fn1825_704E)
;;     2BC7:0171 (in fn2BC7_011C)
;;     2C27:01E3 (in fn2C27_01AC)
;;     2D1A:0B9F (in fn2D1A_0B04)
;;     2D1A:0BB1 (in fn2D1A_0B04)
;;     2E37:048C (in fn2E37_0446)
;;     2E37:04A0 (in fn2E37_0446)
;;     3431:017B (in fn3431_013E)
;;     3431:01BB (in fn3431_013E)
;;     3CEE:6755 (in fn3CEE_66FF)
;;     3CEE:6773 (in fn3CEE_66FF)
;;     3CEE:6791 (in fn3CEE_66FF)
;;     3CEE:67B1 (in fn3CEE_66FF)
;;     3CEE:67D4 (in fn3CEE_67C4)
;;     3CEE:67E8 (in fn3CEE_67C4)
;;     3CEE:67E8 (in fn3CEE_67B9)
;;     3CEE:9318 (in fn3CEE_4EAC)
;;     3CEE:9473 (in fn3CEE_4EAC)
fn21DC_09B4 proc
	push	bp
	mov	bp,sp
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 3CEEh:0732h
	add	sp,4h
	pop	bp
	retf
21DC:09C7                      90 55 8B EC 83 EC 08 C4 1E        .U.......
21DC:09D0 96 12 26 F7 47 F0 00 01 74 7C 26 FF 77 08 26 FF ..&.G...t|&.w.&.
21DC:09E0 77 FA 26 FF 77 F8 9A 78 05 C7 2B 83 C4 06 9A A0 w.&.w..x..+.....
21DC:09F0 05 C7 2B 89 46 F8 89 56 FA 0B D0 74 4F C4 5E F8 ..+.F..V...tO.^.
21DC:0A00 26 8B 47 04 26 8B 57 06 89 46 FC 89 56 FE 0B D0 &.G.&.W..F..V...
21DC:0A10 74 DC B8 16 00 F7 26 8A 12 03 06 82 12 8B 16 84 t.....&.........
21DC:0A20 12 3B 46 FC 73 C8 B8 16 00 F7 26 88 12 03 06 82 .;F.s.....&.....
21DC:0A30 12 8B 16 84 12 3B 46 FC 72 B4 FF 76 FE FF 76 FC .....;F.r..v..v.
21DC:0A40 9A 2A 04 68 23 83 C4 04 EB A4 90 90 9A 68 03 68 .*.h#........h.h
21DC:0A50 23 8B E5 5D CB 90 C7 06 D2 10 01 00 8B E5 5D CB #..]..........].
21DC:0A60 55 8B EC 83 EC 10 C4 1E 96 12 26 8B 47 08 26 8B U.........&.G.&.
21DC:0A70 57 0A 89 46 F8 89 56 FA 83 2E 96 12 10 C4 5E F8 W..F..V.......^.
21DC:0A80 26 8B 47 04 26 8B 57 06 89 46 FC 89 56 FE 0B D0 &.G.&.W..F..V...
21DC:0A90 75 03 E9 E9 00 FF 76 FE 50 9A 2A 04 68 23 83 C4 u.....v.P.*.h#..
21DC:0AA0 04 B8 16 00 F7 26 8C 12 03 06 82 12 8B 16 84 12 .....&..........
21DC:0AB0 89 46 F0 89 56 F2 8B 46 FC 8B 56 FE 39 46 F0 76 .F..V..F..V.9F.v
21DC:0AC0 03 E9 B2 00 B8 16 00 50 FF 76 F2 FF 76 F0 52 FF .......P.v..v.R.
21DC:0AD0 76 FC 9A EC 02 17 20 83 C4 0A B8 16 00 F7 26 8C v..... .......&.
21DC:0AE0 12 03 06 82 12 8B 16 84 12 C4 5E FC 26 C4 5F 12 ..........^.&._.
21DC:0AF0 26 39 47 04 75 1E 26 39 57 06 75 18 C4 5E FC 26 &9G.u.&9W.u..^.&
21DC:0B00 C4 5F 12 8B 46 FC 8B 56 FE 26 89 47 04 26 89 57 ._..F..V.&.G.&.W
21DC:0B10 06 EB 4D 90 C4 5E FC 26 C4 5F 12 26 8B 47 04 26 ..M..^.&._.&.G.&
21DC:0B20 8B 57 06 89 46 F4 89 56 F6 B8 16 00 F7 26 8C 12 .W..F..V.....&..
21DC:0B30 03 06 82 12 8B 16 84 12 C4 5E F4 26 3B 47 0E 75 .........^.&;G.u
21DC:0B40 06 26 3B 57 10 74 0B 26 8B 47 0E 26 8B 57 10 EB .&;W.t.&.G.&.W..
21DC:0B50 D2 90 8B 46 FC 8B 56 FE 26 89 47 0E 26 89 57 10 ...F..V.&.G.&.W.
21DC:0B60 C4 5E F8 2B C0 26 89 47 06 26 89 47 04 FF 06 8C .^.+.&.G.&.G....
21DC:0B70 12 8B E5 5D CB 90 C4 5E FC 26 C7 07 00 00 8B E5 ...]...^.&......
21DC:0B80 5D CB CB 90 55 8B EC 83 EC 3C 57 56 C4 1E 96 12 ]...U....<WV....
21DC:0B90 26 8B 47 08 26 8B 57 0A 89 46 EA 89 56 EC 0B C2 &.G.&.W..F..V...
21DC:0BA0 74 0D C4 5E EA 26 8B 47 0E 26 0B 47 10 75 0D C7 t..^.&.G.&.G.u..
21DC:0BB0 06 D2 10 03 00 5E 5F 8B E5 5D CB 90 83 2E 96 12 .....^_..]......
21DC:0BC0 10 A1 7A 12 89 46 F0 A1 80 12 89 46 F2 A1 7C 12 ..z..F.....F..|.
21DC:0BD0 89 46 E6 A1 7E 12 A3 7C 12 C7 46 E4 00 00 A1 96 .F..~..|..F.....
21DC:0BE0 12 8B 16 98 12 89 46 F4 89 56 F6 A1 7C 12 89 46 ......F..V..|..F
21DC:0BF0 EE EB 53 90 C4 5E F4 26 8B 47 08 26 8B 57 0A 89 ..S..^.&.G.&.W..
21DC:0C00 46 FC 89 56 FE C7 46 E8 01 00 81 7E EE 00 01 75 F..V..F....~...u
21DC:0C10 0C 8D 46 FC 16 50 0E E8 68 FF 83 C4 04 83 7E E8 ..F..P..h.....~.
21DC:0C20 00 74 0E 8B 76 E4 FF 46 E4 D1 E6 8B 46 FE 89 42 .t..v..F....F..B
21DC:0C30 C4 8B 76 E4 FF 46 E4 D1 E6 8B 46 FC 89 42 C4 83 ..v..F....F..B..
21DC:0C40 6E F4 10 FF 4E EE 83 7E EE 00 7F 03 E9 CB 00 83 n...N..~........
21DC:0C50 7E EE 08 7D EA C4 5E F4 26 8B 07 3D 20 00 74 0F ~..}..^.&..= .t.
21DC:0C60 76 03 E9 97 00 3D 01 00 74 34 3D 02 00 75 23 C4 v....=..t4=..u#.
21DC:0C70 5E F4 26 FF 77 0A 26 FF 77 08 9A F7 0C EE 3C 83 ^.&.w.&.w.....<.
21DC:0C80 C4 04 C4 5E F4 8D 7F 08 8B F0 1E 8E DA A5 A5 A5 ...^............
21DC:0C90 A5 1F 8B 46 F4 8B 56 F6 05 08 00 E9 61 FF C4 5E ...F..V.....a..^
21DC:0CA0 F4 26 8B 47 08 89 46 FC C7 46 E8 00 00 E9 5A FF .&.G..F..F....Z.
21DC:0CB0 C4 5E F4 26 8B 47 08 26 8B 57 0A 89 46 F8 89 56 .^.&.G.&.W..F..V
21DC:0CC0 FA C4 5E F8 26 8B 07 3D 02 00 74 19 3D 08 00 74 ..^.&..=..t.=..t
21DC:0CD0 14 3D 20 00 74 0F 3D 80 00 74 0A 3D 00 01 74 10 .= .t.=..t.=..t.
21DC:0CE0 3D 00 03 74 0B 8B C3 8C C2 05 06 00 E9 10 FF 90 =..t............
21DC:0CF0 26 8B 47 06 26 8B 57 08 E9 04 FF 90 3D 80 00 74 &.G.&.W.....=..t
21DC:0D00 91 3D 00 01 75 03 E9 EB FE 3D 00 03 75 03 E9 E3 .=..u....=..u...
21DC:0D10 FE 3D 00 08 74 9A E9 79 FF 90 FF 76 E4 8D 46 C4 .=..t..y...v..F.
21DC:0D20 16 50 C4 5E EA 26 FF 77 10 26 FF 77 0E 9A 5D 04 .P.^.&.w.&.w..].
21DC:0D30 17 20 83 C4 0A EB 0A 90 9A 3C 03 68 23 FF 0E 7C . .......<.h#..|
21DC:0D40 12 83 3E 7C 12 00 75 F0 8B 46 F0 A3 7A 12 8B 46 ..>|..u..F..z..F
21DC:0D50 F2 A3 7E 12 8B 46 E6 A3 7C 12 5E 5F 8B E5 5D CB ..~..F..|.^_..].

;; fn21DC_0D60: 21DC:0D60
;;   Called from:
;;     1825:0171 (in fn1825_000A)
;;     207F:0018 (in fn207F_0006)
fn21DC_0D60 proc
	push	bp
	mov	bp,sp
	sub	sp,2h
	call	far 1F38h:0D37h
	mov	[bp-2h],ax
	or	ax,ax
	jz	0D8Ch

l21DC_0D72:
	cmp	ax,80h
	jc	0D8Ch

l21DC_0D77:
	cmp	ax,87h
	ja	0D8Ch

l21DC_0D7C:
	call	far 1F38h:0D06h
	mov	[bp-2h],ax
	push	ax
	push	cs
	call	0006h
	add	sp,2h

l21DC_0D8C:
	mov	sp,bp
	pop	bp
	retf
21DC:0D90 0E E8 CC FF CB 90                               ......          

;; fn21DC_0D96: 21DC:0D96
;;   Called from:
;;     21DC:0E3A (in fn21DC_0DE4)
;;     21DC:0E4C (in fn21DC_0DE4)
;;     21DC:0E68 (in fn21DC_0DE4)
;;     21DC:0E84 (in fn21DC_0DE4)
;;     21DC:0E96 (in fn21DC_0DE4)
;;     21DC:0EA8 (in fn21DC_0DE4)
fn21DC_0D96 proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	mov	word ptr [bp-2h],0h
	jmp	0DD0h
21DC:0DA3          90                                        .            

l21DC_0DA4:
	cmp	byte ptr [bp-4h],30h
	jc	0DDDh

l21DC_0DAA:
	cmp	byte ptr [bp-4h],39h
	ja	0DDDh

l21DC_0DB0:
	mov	ax,[bp-2h]
	mov	cx,ax
	shl	ax,1h
	shl	ax,1h
	add	ax,cx
	shl	ax,1h
	les	bx,[bp+6h]
	inc	word ptr [bp+6h]
	mov	cl,es:[bx]
	sub	ch,ch
	add	ax,cx
	sub	ax,30h
	mov	[bp-2h],ax

l21DC_0DD0:
	les	bx,[bp+6h]
	mov	al,es:[bx]
	mov	[bp-4h],al
	or	al,al
	jnz	0DA4h

l21DC_0DDD:
	mov	ax,[bp-2h]
	mov	sp,bp
	pop	bp
	retf

;; fn21DC_0DE4: 21DC:0DE4
;;   Called from:
;;     21DC:0EE1 (in fn21DC_0EC2)
fn21DC_0DE4 proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	mov	ax,5DDAh
	push	ds
	push	ax
	call	far 38D6h:0146h
	add	sp,4h
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	jmp	0EB2h

l21DC_0E00:
	inc	word ptr [bp-4h]
	mov	al,es:[bx]
	sub	ah,ah
	push	ax
	call	far 38ADh:001Eh
	add	sp,2h
	sub	ah,ah
	cmp	ax,45h
	jz	0E62h

l21DC_0E18:
	cmp	ax,46h
	jz	0E90h

l21DC_0E1D:
	cmp	ax,52h
	jz	0E46h

l21DC_0E22:
	cmp	ax,53h
	jz	0EA2h

l21DC_0E27:
	cmp	ax,56h
	jz	0E34h

l21DC_0E2C:
	cmp	ax,58h
	jz	0E7Eh

l21DC_0E31:
	jmp	0EB2h
21DC:0E33          90                                        .            

l21DC_0E34:
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	push	cs
	call	0D96h
	add	sp,4h
	mov	[126Ch],ax
	jmp	0EB2h

l21DC_0E46:
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	push	cs
	call	0D96h
	add	sp,4h
	mov	[126Eh],ax
	or	ax,ax
	jnz	0EB2h

l21DC_0E5A:
	mov	word ptr [126Eh],0FFFFh
	jmp	0EB2h

l21DC_0E62:
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	push	cs
	call	0D96h
	add	sp,4h
	mov	[1270h],ax
	or	ax,ax
	jnz	0EB2h

l21DC_0E76:
	mov	word ptr [1270h],0FFFFh
	jmp	0EB2h

l21DC_0E7E:
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	push	cs
	call	0D96h
	add	sp,4h
	mov	[1272h],ax
	jmp	0EB2h

l21DC_0E90:
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	push	cs
	call	0D96h
	add	sp,4h
	mov	[1274h],ax
	jmp	0EB2h

l21DC_0EA2:
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	push	cs
	call	0D96h
	add	sp,4h
	mov	[1276h],ax

l21DC_0EB2:
	les	bx,[bp-4h]
	cmp	byte ptr es:[bx],0h
	jz	0EBEh

l21DC_0EBB:
	jmp	0E00h

l21DC_0EBE:
	mov	sp,bp
	pop	bp
	retf

;; fn21DC_0EC2: 21DC:0EC2
;;   Called from:
;;     21DC:10E5 (in main)
fn21DC_0EC2 proc
	push	bp
	mov	bp,sp
	sub	sp,0Eh
	call	far 1F38h:032Bh
	call	far 1F38h:0BD9h
	call	far 1F38h:0D68h
	call	far 3CEEh:0AEAh
	call	far 208Fh:000Ch
	push	cs
	call	0DE4h
	cmp	word ptr [1276h],0h
	jz	0EF2h

l21DC_0EEC:
	mov	word ptr [0EE8h],1h

l21DC_0EF2:
	cmp	word ptr [1274h],0h
	jz	0F10h

l21DC_0EF9:
	push	word ptr [1274h]
	call	far 208Fh:01E6h
	add	sp,2h
	or	ax,ax
	jnz	0F10h

l21DC_0F09:
	mov	ax,2h
	mov	sp,bp
	pop	bp
	retf

l21DC_0F10:
	call	far 2017h:01A8h
	mov	cl,6h
	shr	ax,cl
	mov	[bp-2h],ax
	cmp	word ptr [1272h],0h
	jz	0F38h

l21DC_0F23:
	mov	ax,[1272h]
	cmp	[bp-2h],ax
	jnc	0F32h

l21DC_0F2B:
	mov	ax,1h
	mov	sp,bp
	pop	bp
	retf

l21DC_0F32:
	mov	ax,[1272h]
	sub	[bp-2h],ax

l21DC_0F38:
	cmp	word ptr [bp-2h],18h
	jc	0F2Bh

l21DC_0F3E:
	sub	word ptr [bp-2h],18h
	cmp	word ptr [126Ch],0h
	jz	0F4Eh

l21DC_0F49:
	mov	ax,[126Ch]
	jmp	0F58h

l21DC_0F4E:
	mov	ax,[bp-2h]
	sub	dx,dx
	mov	cx,5h
	div	cx

l21DC_0F58:
	mov	[bp-0Eh],ax
	sub	ax,30h
	sbb	cx,cx
	and	ax,cx
	add	ax,30h
	mov	[bp-0Eh],ax
	cmp	[bp-2h],ax
	jc	0F2Bh

l21DC_0F6D:
	sub	[bp-2h],ax
	cmp	word ptr [1270h],0FFh
	jz	0F92h

l21DC_0F77:
	call	far 2017h:004Ch
	mov	[bp-0Ch],ax
	cmp	ax,10h
	jc	0F8Ah

l21DC_0F84:
	mov	ax,1h
	jmp	0F8Ch
21DC:0F89                            90                            .      

l21DC_0F8A:
	sub	ax,ax

l21DC_0F8C:
	mov	[bp-8h],ax
	jmp	0F97h
21DC:0F91    90                                            .              

l21DC_0F92:
	mov	word ptr [bp-8h],0h

l21DC_0F97:
	cmp	word ptr [bp-8h],0h
	jz	0FE4h

l21DC_0F9D:
	cmp	word ptr [1270h],10h
	jc	0FAAh

l21DC_0FA4:
	mov	ax,[1270h]
	jmp	0FADh
21DC:0FA9                            90                            .      

l21DC_0FAA:
	mov	ax,[bp-0Ch]

l21DC_0FAD:
	mov	[bp-0Ah],ax
	sub	ax,400h
	sbb	cx,cx
	and	ax,cx
	add	ah,4h
	mov	[bp-0Ah],ax
	cmp	word ptr [126Eh],0FFh
	jz	0FDCh

l21DC_0FC4:
	cmp	word ptr [126Eh],0h
	jz	0FD0h

l21DC_0FCB:
	mov	ax,[126Eh]
	jmp	1011h

l21DC_0FD0:
	mov	ax,[bp-2h]
	sub	dx,dx
	mov	cx,3h
	div	cx
	jmp	1011h

l21DC_0FDC:
	mov	word ptr [bp-4h],0h
	jmp	1014h
21DC:0FE3          90                                        .            

l21DC_0FE4:
	cmp	word ptr [126Eh],0FFh
	jz	0FF8h

l21DC_0FEB:
	cmp	word ptr [126Eh],0h
	jz	0FF8h

l21DC_0FF2:
	mov	ax,[126Eh]
	jmp	1002h
21DC:0FF7                      90                                .        

l21DC_0FF8:
	mov	ax,[bp-2h]
	sub	dx,dx
	mov	cx,3h
	div	cx

l21DC_1002:
	mov	[bp-4h],ax
	sub	ax,10h
	sbb	cx,cx
	not	cx
	and	ax,cx
	add	ax,10h

l21DC_1011:
	mov	[bp-4h],ax

l21DC_1014:
	mov	ax,[bp-4h]
	add	ax,8h
	cmp	ax,[bp-2h]
	jbe	1022h

l21DC_101F:
	jmp	0F2Bh

l21DC_1022:
	mov	ax,[bp-2h]
	sub	ax,[bp-4h]
	mov	[bp-6h],ax
	push	word ptr [1272h]
	call	far 2068h:0008h
	add	sp,2h
	or	ax,ax
	jz	103Eh

l21DC_103B:
	jmp	0F2Bh

l21DC_103E:
	push	word ptr [bp-8h]
	cmp	word ptr [bp-8h],0h
	jz	104Ch

l21DC_1047:
	mov	ax,[bp-0Ah]
	jmp	104Fh

l21DC_104C:
	mov	ax,[bp-4h]

l21DC_104F:
	push	ax
	call	far 2C27h:0032h
	add	sp,4h
	or	ax,ax
	jnz	105Fh

l21DC_105C:
	jmp	0F2Bh

l21DC_105F:
	call	far 2BC7h:0236h
	or	ax,ax
	jnz	106Bh

l21DC_1068:
	jmp	0F2Bh

l21DC_106B:
	mov	ax,2Eh
	mul	word ptr [bp-0Eh]
	mov	[1286h],ax
	mov	word ptr [1288h],0h
	mov	word ptr [128Ah],0h
	mov	[128Ch],ax
	mov	ax,16h
	mul	word ptr [1286h]
	push	ax
	mov	ax,1282h
	push	ds
	push	ax
	push	cs
	call	06DCh
	add	sp,6h
	or	ax,ax
	jnz	109Eh

l21DC_109B:
	jmp	0F2Bh

l21DC_109E:
	call	far 31FFh:0008h
	or	ax,ax
	jnz	10AAh

l21DC_10A7:
	jmp	0F2Bh

l21DC_10AA:
	call	far 2E37h:0432h
	call	far 3431h:000Ah
	call	far 2368h:0002h
	or	ax,ax
	jnz	10C0h

l21DC_10BD:
	jmp	0F2Bh

l21DC_10C0:
	call	far 2644h:000Eh
	or	ax,ax
	jnz	10CCh

l21DC_10C9:
	jmp	0F2Bh

l21DC_10CC:
	call	far 2D1Ah:0008h
	or	ax,ax
	jnz	10D8h

l21DC_10D5:
	jmp	0F2Bh

l21DC_10D8:
	sub	ax,ax
	mov	sp,bp
	pop	bp
	retf

;; main: 21DC:10DE
;;   Called from:
;;     3CEE:00AD (in fn3CEE_FD1B)
main proc
	push	bp
	mov	bp,sp
	sub	sp,8h
	push	si
	push	cs
	call	0EC2h
	mov	[bp-8h],ax
	or	ax,ax
	jz	10F3h

l21DC_10F0:
	jmp	1192h

l21DC_10F3:
	mov	ax,5DE2h
	push	ds
	push	ax
	call	far 2BC7h:03C2h
	add	sp,4h
	push	dx
	push	ax
	call	far 2368h:030Eh
	add	sp,4h
	push	cs
	call	0322h
	mov	word ptr [bp-6h],1h
	jmp	1135h
21DC:1115                90                                    .          

l21DC_1116:
	sub	ax,ax
	push	ax
	mov	bx,[bp-6h]
	shl	bx,1h
	shl	bx,1h
	les	si,[bp+8h]
	push	word ptr es:[bx+si+2h]
	push	word ptr es:[bx+si]
	call	far 2368h:022Eh
	add	sp,6h
	inc	word ptr [bp-6h]

l21DC_1135:
	mov	ax,[bp-6h]
	cmp	[bp+6h],ax
	ja	1116h

l21DC_113D:
	cmp	word ptr [bp+6h],1h
	jle	114Ah

l21DC_1143:
	mov	ax,[bp+6h]
	dec	ax
	jmp	114Ch
21DC:1149                            90                            .      

l21DC_114A:
	sub	ax,ax

l21DC_114C:
	push	ax
	push	cs
	call	00A6h
	add	sp,2h
	lea	ax,[bp-4h]
	push	ss
	push	ax
	call	far 3CB4h:0008h
	add	sp,4h
	les	bx,[bp-4h]
	push	word ptr es:[bx+1Eh]
	push	word ptr es:[bx+1Ch]
	call	far 2368h:030Eh
	add	sp,4h
	push	cs
	call	0322h
	push	cs
	call	04BAh
	sub	ax,ax
	push	ax
	call	far 3CEEh:01B7h
	add	sp,2h
	call	far 3CB7h:0000h
	pop	si
	mov	sp,bp
	pop	bp
	retf
21DC:1191    90                                            .              

l21DC_1192:
	mov	ax,[bp-8h]
	cmp	ax,1h
	jz	11A2h

l21DC_119A:
	cmp	ax,2h
	jz	11B6h

l21DC_119F:
	jmp	11C0h
21DC:11A1    90                                            .              

l21DC_11A2:
	mov	ax,13h
	push	ax
	mov	ax,5DECh

l21DC_11A9:
	push	ds
	push	ax
	call	far 1F38h:042Dh
	add	sp,6h
	jmp	11C0h
21DC:11B5                90                                    .          

l21DC_11B6:
	mov	ax,1Dh
	push	ax
	mov	ax,5E00h
	jmp	11A9h
21DC:11BF                                              90                .

l21DC_11C0:
	cmp	word ptr [13B4h],0h
	jz	11D3h

l21DC_11C7:
	push	word ptr [13B2h]
	call	far 2017h:00CBh
	add	sp,2h

l21DC_11D3:
	call	far 1F38h:0D84h
	call	far 1F38h:0BF1h
	call	far 1F38h:036Fh
	mov	ax,1h
	push	ax
	call	far 3CEEh:01B7h
	add	sp,2h
	pop	si
	mov	sp,bp
	pop	bp
	retf
21DC:11F3          90 55 8B EC 81 EC B8 00 57 56 C4 1E 96    .U......WV...
21DC:1200 12 26 8B 47 08 26 8B 57 0A 89 46 88 89 56 8A 26 .&.G.&.W..F..V.&
21DC:1210 8B 47 02 89 86 50 FF C4 5E 88 26 80 3F 00 75 03 .G...P..^.&.?.u.
21DC:1220 E9 99 00 8D 46 8C 16 50 8D 46 D4 16 50 8D 46 8E ....F..P.F..P.F.
21DC:1230 16 50 8D 86 58 FF 16 50 8D 46 86 16 50 FF B6 50 .P..X..P.F..P..P
21DC:1240 FF 52 53 9A 6A 0F D6 38 83 C4 1A 8B 46 86 39 46 .RS.j..8....F.9F
21DC:1250 8E 75 72 B8 FA 13 1E 50 9A F5 03 17 20 83 C4 04 .ur....P.... ...
21DC:1260 89 86 52 FF 8B 46 8C 2B 46 8E 89 46 90 8B B6 52 ..R..F.+F..F...R
21DC:1270 FF 03 F0 83 FE 40 73 4D FF B6 52 FF B8 FA 13 1E .....@sM..R.....
21DC:1280 50 8D 46 94 16 50 9A EC 02 17 20 83 C4 0A FF 76 P.F..P.... ....v
21DC:1290 90 8B 46 8E 03 46 88 8B 56 8A 52 50 8B BE 52 FF ..F..F..V.RP..R.
21DC:12A0 8D 43 94 16 50 9A EC 02 17 20 83 C4 0A C6 42 94 .C..P.... ....B.
21DC:12B0 00 8D 46 94 89 46 88 8C 56 8A EB 09 B8 1E 5E 89 ..F..F..V.....^.
21DC:12C0 46 88 8C 5E 8A 2B C0 50 8D 86 5A FF 16 50 FF 76 F..^.+.P..Z..P.v
21DC:12D0 8A FF 76 88 9A 6C 01 17 20 83 C4 0A 0B C0 75 03 ..v..l.. .....u.
21DC:12E0 E9 2C 01 9A BE 04 31 34 B8 27 00 50 B8 20 00 50 .,....14.'.P. .P
21DC:12F0 8D 46 D8 16 50 9A 28 02 17 20 83 C4 08 8D 86 78 .F..P.(.. .....x
21DC:1300 FF 16 50 9A F5 03 17 20 83 C4 04 89 46 D6 B8 2E ..P.... ....F...
21DC:1310 00 50 FF 76 D6 8D 86 78 FF 16 50 9A 5B 03 17 20 .P.v...x..P.[.. 
21DC:1320 83 C4 08 89 46 92 50 8D 86 78 FF 16 50 8D 46 D8 ....F.P..x..P.F.
21DC:1330 16 50 9A EC 02 17 20 83 C4 0A 8B 46 D6 39 46 92 .P.... ....F.9F.
21DC:1340 73 1D FF 46 92 2B 46 92 50 8B 76 92 8D 82 78 FF s..F.+F.P.v...x.
21DC:1350 16 50 8D 46 E1 16 50 9A EC 02 17 20 83 C4 0A FF .P.F..P.... ....
21DC:1360 B6 76 FF FF B6 74 FF 9A F7 0C EE 3C 83 C4 04 8D .v...t.....<....
21DC:1370 BE 48 FF 8B F0 16 07 1E 8E DA A5 A5 A5 A5 1F 8D .H..............
21DC:1380 46 E5 16 50 2B C0 50 B8 08 00 50 FF B6 4E FF FF F..P+.P...P..N..
21DC:1390 B6 4C FF FF B6 4A FF FF B6 48 FF 9A A8 0D EE 3C .L...J...H.....<
21DC:13A0 83 C4 10 8B 86 72 FF 25 00 FE B1 09 D3 E8 05 BC .....r.%........
21DC:13B0 07 50 8B 86 72 FF 25 E0 01 B1 05 D3 E8 50 8B 86 .P..r.%......P..
21DC:13C0 72 FF 25 1F 00 50 9A 22 02 D6 38 83 C4 06 89 86 r.%..P."..8.....
21DC:13D0 54 FF 89 96 56 FF FF 36 8E 12 52 50 8D 46 EF 16 T...V..6..RP.F..
21DC:13E0 50 9A FA 06 D6 38 83 C4 0A B8 27 00 50 8D 46 D8 P....8....'.P.F.
21DC:13F0 16 50 9A 3C 04 31 34 83 C4 06 8D 86 5A FF 16 50 .P.<.14.....Z..P
21DC:1400 9A 8F 01 17 20 83 C4 04 0B C0 74 03 E9 D4 FE 9A .... .....t.....
21DC:1410 BE 04 31 34 5E 5F 8B E5 5D CB 55 8B EC 83 EC 0E ..14^_..].U.....
21DC:1420 C7 46 F8 00 00 C7 46 F6 00 20 EB 0A 81 7E F6 00 .F....F.. ...~..
21DC:1430 01 72 16 D1 6E F6 FF 76 F6 8D 46 F2 16 50 0E E8 .r..n..v..F..P..
21DC:1440 9A F2 83 C4 06 0B C0 74 E3 81 7E F6 00 01 73 12 .......t..~...s.
21DC:1450 C7 06 D2 10 04 00 C7 06 D8 10 00 01 2B C0 8B E5 ............+...
21DC:1460 5D CB B8 12 00 50 C4 1E 96 12 26 FF 77 FA 26 FF ]....P....&.w.&.
21DC:1470 77 F8 9A 96 10 D6 38 83 C4 06 89 46 FE 3D FF FF w.....8....F.=..
21DC:1480 74 7C B8 1A 00 50 C4 1E 96 12 26 FF 77 0A 26 FF t|...P....&.w.&.
21DC:1490 77 08 9A 96 10 D6 38 83 C4 06 89 46 FC 3D FF FF w.....8....F.=..
21DC:14A0 74 44 FF 76 F6 FF 76 F4 FF 76 F2 FF 76 FE 9A C9 tD.v..v..v..v...
21DC:14B0 00 8F 20 83 C4 08 89 46 FA 0B C0 74 12 50 FF 76 .. ....F...t.P.v
21DC:14C0 F4 FF 76 F2 FF 76 FC 9A EF 00 8F 20 83 C4 08 8B ..v..v..... ....
21DC:14D0 46 F6 39 46 FA 74 CB FF 76 FC 9A AE 00 8F 20 83 F.9F.t..v..... .
21DC:14E0 C4 02 EB 0D 90 90 C7 06 D2 10 05 00 C7 46 F8 01 .............F..
21DC:14F0 00 FF 76 FE 9A AE 00 8F 20 83 C4 02 EB 0B C7 06 ..v..... .......
21DC:1500 D2 10 05 00 C7 46 F8 01 00 FF 76 F6 FF 76 F4 FF .....F....v..v..
21DC:1510 76 F2 0E E8 EC F1 83 C4 06 83 7E F8 01 1B C0 F7 v.........~.....
21DC:1520 D8 8B E5 5D CB 90 55 8B EC 83 EC 0E 56 9A BE 04 ...]..U.....V...
21DC:1530 31 34 B8 00 02 50 8D 46 F4 16 50 0E E8 57 F1 83 14...P.F..P..W..
21DC:1540 C4 06 0B C0 75 0E C7 06 D2 10 04 00 2B C0 5E 8B ....u.......+.^.
21DC:1550 E5 5D CB 90 B8 12 00 50 C4 1E 96 12 26 FF 77 0A .].....P....&.w.
21DC:1560 26 FF 77 08 9A 96 10 D6 38 83 C4 06 89 46 F2 3D &.w.....8....F.=
21DC:1570 FF FF 75 03 E9 D5 00 C7 46 F8 00 00 83 7E F8 00 ..u.....F....~..
21DC:1580 75 48 B8 00 02 50 FF 76 F6 FF 76 F4 FF 76 F2 9A uH...P.v..v..v..
21DC:1590 C9 00 8F 20 83 C4 08 89 46 F8 0B C0 75 20 FF 76 ... ....F...u .v
21DC:15A0 F2 9A AE 00 8F 20 83 C4 02 B8 00 02 50 FF 76 F6 ..... ......P.v.
21DC:15B0 FF 76 F4 0E E8 4B F1 83 C4 06 E9 A9 00 90 8B 46 .v...K.........F
21DC:15C0 F4 8B 56 F6 89 46 FC 89 56 FE C7 46 FA 00 00 EB ..V..F..V..F....
21DC:15D0 10 90 8B 5E FA C4 76 FC 26 80 38 1A 76 0B FF 46 ...^..v.&.8.v..F
21DC:15E0 FA 8B 46 F8 39 46 FA 72 E9 FF 76 FA FF 76 FE FF ..F.9F.r..v..v..
21DC:15F0 76 FC 9A 3C 04 31 34 83 C4 06 8B 46 F8 39 46 FA v..<.14....F.9F.
21DC:1600 73 3D 8B 5E FA C4 76 FC 26 80 38 1A 74 90 26 80 s=.^..v.&.8.t.&.
21DC:1610 38 0A 75 08 9A BE 04 31 34 EB 21 90 8B 5E FA C4 8.u....14.!..^..
21DC:1620 76 FC 26 80 38 0D 74 14 B8 01 00 50 8B C3 03 C6 v.&.8.t....P....
21DC:1630 8C C2 52 50 9A 3C 04 31 34 83 C4 06 FF 46 FA 8B ..RP.<.14....F..
21DC:1640 46 FA 01 46 FC 29 46 F8 E9 31 FF 90 B8 00 02 50 F..F.)F..1.....P
21DC:1650 FF 76 F6 FF 76 F4 0E E8 A8 F0 83 C4 06 C7 06 D2 .v..v...........
21DC:1660 10 05 00 E9 E6 FE B8 01 00 5E 8B E5 5D CB 55 8B .........^..].U.
21DC:1670 EC 81 EC 02 01 C7 86 FE FE 00 00 C4 1E 96 12 26 ...............&
21DC:1680 F7 07 00 01 75 03 E9 01 01 8B 46 06 0B C0 74 2A ....u.....F...t*
21DC:1690 3D 01 00 74 41 3D 02 00 75 03 E9 99 00 3D 03 00 =..tA=..u....=..
21DC:16A0 75 03 E9 A3 00 3D 04 00 75 03 E9 B3 00 3D 05 00 u....=..u....=..
21DC:16B0 75 03 E9 C9 00 8B E5 5D CB 90 26 83 7F 02 00 74 u......]..&....t
21DC:16C0 07 0E E8 2F FB EB 06 90 9A DC 1C 44 26 9A 3C 03 .../.......D&.<.
21DC:16D0 68 23 8B E5 5D CB 83 3E B4 13 00 75 0A 9A 46 04 h#..]..>...u..F.
21DC:16E0 37 2E 9A 12 01 27 2C C4 1E 96 12 26 FF 77 0A 26 7....',....&.w.&
21DC:16F0 FF 77 08 9A FE 0D D6 38 83 C4 04 89 86 FE FE 0B .w.....8........
21DC:1700 C0 74 09 C7 06 D2 10 10 00 EB 06 90 9A 3C 03 68 .t...........<.h
21DC:1710 23 83 3E B4 13 00 75 0A 9A 40 01 27 2C 9A 32 04 #.>...u..@.',.2.
21DC:1720 37 2E 2B C0 50 A1 EE 0E 48 50 9A E7 04 38 1F 83 7.+.P...HP...8..
21DC:1730 C4 04 8B E5 5D CB 0E E8 E0 FC 0B C0 74 52 9A 68 ....].......tR.h
21DC:1740 03 68 23 8B E5 5D CB 90 C4 1E 96 12 26 FF 77 0A .h#..]......&.w.
21DC:1750 26 FF 77 08 9A A9 01 8F 20 83 C4 04 E9 6E FF 90 &.w..... ....n..
21DC:1760 C4 1E 96 12 26 FF 77 0A 26 FF 77 08 26 FF 77 FA ....&.w.&.w.&.w.
21DC:1770 26 FF 77 F8 9A C6 01 8F 20 83 C4 08 EB C0 0E E8 &.w..... .......
21DC:1780 A4 FD 0B C0 74 0A E9 44 FF 90 C7 06 D2 10 01 00 ....t..D........
21DC:1790 8B E5 5D CB C7 06 9A 12 80 00 B8 13 00 50 FF 36 ..]..........P.6
21DC:17A0 B4 12 FF 36 B2 12 9A 96 10 D6 38 83 C4 06 3D FF ...6......8...=.
21DC:17B0 FF 74 07 B8 01 00 A3 A2 12 CB 2B C0 A3 A2 12 CB .t........+.....
21DC:17C0 55 8B EC 83 EC 06 C7 06 9A 12 02 00 C7 06 9C 12 U...............
21DC:17D0 0A 00 A1 B2 12 0B 06 B4 12 75 15 9A A8 00 68 20 .........u....h 
21DC:17E0 A1 AC 10 A3 A2 12 C7 06 A4 12 00 00 8B E5 5D CB ..............].
21DC:17F0 2B C0 A3 A4 12 A3 A2 12 8B E5 5D CB C7 06 9A 12 +.........].....
21DC:1800 02 00 C7 06 9C 12 0A 00 A1 7E 12 A3 A2 12 C7 06 .........~......
21DC:1810 A4 12 00 00 CB 90 55 8B EC 8B 46 06 A3 7A 12 83 ......U...F..z..
21DC:1820 3E E2 0E 00 74 05 9A 0A 00 25 18 5D CB 90 55 8B >...t....%.]..U.
21DC:1830 EC 83 EC 02 A1 90 12 89 46 FE 83 3E 7C 12 00 74 ........F..>|..t
21DC:1840 36 C4 1E 96 12 26 F6 07 08 74 1B 26 FF 77 0E 26 6....&...t.&.w.&
21DC:1850 FF 77 0C 26 FF 77 0A 26 FF 77 08 9A 22 0C EE 3C .w.&.w.&.w.."..<
21DC:1860 83 C4 08 EB 0F 90 C4 1E 96 12 26 83 3F 02 75 07 ..........&.?.u.
21DC:1870 26 8B 47 08 A3 90 12 FF 76 FE 9A E0 01 68 23 83 &.G.....v....h#.
21DC:1880 C4 02 0E E8 68 EB 8B E5 5D CB 55 8B EC 83 EC 02 ....h...].U.....
21DC:1890 A1 68 12 89 46 FE 83 3E 7C 12 01 75 12 C4 1E 96 .h..F..>|..u....
21DC:18A0 12 26 81 3F 80 00 75 07 26 8B 47 08 A3 68 12 FF .&.?..u.&.G..h..
21DC:18B0 76 FE 9A F4 02 68 23 83 C4 02 0E E8 30 EB 8B E5 v....h#.....0...
