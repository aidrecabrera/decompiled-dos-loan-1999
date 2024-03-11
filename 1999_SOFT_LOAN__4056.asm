;;; Segment 4056 (4056:0000)
4056:0000 CB 90                                           ..              

;; fn3CEE_3682: 3CEE:3682
;;   Called from:
;;     3CEE:39B3 (in fn3CEE_388C)
;;     3CEE:39CB (in fn3CEE_388C)
;;     3CEE:39E1 (in fn3CEE_388C)
fn3CEE_3682 proc
	push	bp
	mov	bp,sp
	mov	ax,[bp+6h]
	sub	dx,dx
	mov	cx,0Ah
	div	cx
	add	al,30h
	les	bx,[bp+8h]
	mov	es:[bx],al
	mov	ax,[bp+6h]
	sub	dx,dx
	div	cx
	add	dl,30h
	mov	es:[bx+1h],dl
	pop	bp
	retf
3CEE:36A7                      90 55 8B EC 81 EC B2 00 57        .U......W
3CEE:36B0 56 C7 46 FE 00 00 2B C0 99 89 46 A0 89 56 A2 89 V.F...+...F..V..
3CEE:36C0 46 9C 89 56 9E 89 46 98 89 56 9A 89 46 94 89 56 F..V..F..V..F..V
3CEE:36D0 96 89 46 90 89 56 92 EB 6E 90 83 3E 7C 12 06 77 ..F..V..n..>|..w
3CEE:36E0 5D C4 1E 96 12 26 F7 07 00 08 74 52 26 8B 47 08 ]....&....tR&.G.
3CEE:36F0 26 8B 57 0A 89 46 B6 89 56 B8 C4 5E B6 26 F7 07 &.W..F..V..^.&..
3CEE:3700 00 20 74 3A 26 8B 47 12 26 8B 57 14 8B 36 7C 12 . t:&.G.&.W..6|.
3CEE:3710 D1 E6 D1 E6 89 42 88 89 52 8A 83 7E FE 00 74 14 .....B..R..~..t.
3CEE:3720 C4 5E B6 26 8B 47 02 2B 46 FE 1B C9 23 C1 03 46 .^.&.G.+F...#..F
3CEE:3730 FE EB 08 90 C4 5E B6 26 8B 47 02 89 46 FE 9A 3C .....^.&.G..F..<
3CEE:3740 03 68 23 FF 0E 7C 12 83 3E 7C 12 01 77 8C 83 3E .h#..|..>|..w..>
3CEE:3750 7C 12 01 74 03 E9 B8 00 C4 1E 96 12 26 F7 07 00 |..t........&...
3CEE:3760 01 75 03 E9 AA 00 8D 46 AE 16 50 8D 46 FC 16 50 .u.....F..P.F..P
3CEE:3770 8D 46 B4 16 50 8D 46 84 16 50 8D 46 8A 16 50 26 .F..P.F..P.F..P&
3CEE:3780 FF 77 02 26 FF 77 0A 26 FF 77 08 9A 6A 0F D6 38 .w.&.w.&.w..j..8
3CEE:3790 83 C4 1A 8B 46 B4 39 46 8A 75 61 39 46 84 75 5C ....F.9F.ua9F.u\
3CEE:37A0 B8 FA 13 1E 50 9A F5 03 17 20 83 C4 04 89 86 56 ....P.... .....V
3CEE:37B0 FF 50 B8 FA 13 1E 50 8D 46 BC 16 50 9A EC 02 17 .P....P.F..P....
3CEE:37C0 20 83 C4 0A 8B 76 AE 2B 76 B4 56 C4 1E 96 12 26  ....v.+v.V....&
3CEE:37D0 8B 47 08 26 8B 57 0A 03 46 B4 52 50 8B BE 56 FF .G.&.W..F.RP..V.
3CEE:37E0 8D 43 BC 16 50 9A EC 02 17 20 83 C4 0A 01 B6 56 .C..P.... .....V
3CEE:37F0 FF 8B BE 56 FF C6 43 BC 00 EB 58 90 C4 1E 96 12 ...V..C...X.....
3CEE:3800 26 8B 47 08 26 8B 57 0A 89 46 86 89 56 88 EB 4C &.G.&.W..F..V..L
3CEE:3810 B8 FA 13 1E 50 9A F5 03 17 20 83 C4 04 89 86 56 ....P.... .....V
3CEE:3820 FF 50 B8 FA 13 1E 50 8D 46 BC 16 50 9A EC 02 17 .P....P.F..P....
3CEE:3830 20 83 C4 0A B8 04                                .....          

l3CEE_3836:
	add	[bx+si-48h],dl
	inc	sp
	pusha
	push	ds
	push	ax
	mov	si,[bp+0FF56h]
	lea	ax,[bp+si-44h]
	push	ss
	push	ax
	call	far 2017h:02ECh
	add	sp,0Ah
	add	word ptr [bp+0FF56h],4h
	lea	ax,[bp-44h]
	mov	[bp-7Ah],ax
	mov	[bp-78h],ss
	mov	word ptr [bp-74h],0h
	mov	ax,[bp-60h]
	or	ax,[bp-5Eh]
	jz	386Eh

l3CEE_3869:
	mov	ax,16h
	jmp	3870h

l3CEE_386E:
	sub	ax,ax

l3CEE_3870:
	push	ax
	lea	ax,[bp+0FF58h]
	push	ss
	push	ax
	push	word ptr [bp-78h]
	push	word ptr [bp-7Ah]
	call	far 2017h:016Ch

;; fn3CEE_387E: 3CEE:387E
;;   Called from:
;;     3CEE:388C (in fn3CEE_388C)
;;     3CEE:8A74 (in fn3CEE_8A23)
fn3CEE_387E proc
	insb
	add	[bx],dx

;; fn3CEE_3880: 3CEE:3880
;;   Called from:
;;     3CEE:387E (in fn3CEE_387E)
;;     3CEE:8A74 (in fn3CEE_8A23)
fn3CEE_3880 proc
	pop	ss
	and	[bp+di+0AC4h],al

l3CEE_3882:
	add	sp,0Ah

;; fn3CEE_3885: 3CEE:3885
;;   Called from:
;;     3CEE:3881 (in fn3CEE_387E)
;;     3CEE:3881 (in fn3CEE_3880)
;;     3CEE:3882 (in fn3CEE_8A23)
fn3CEE_3885 proc
	or	ax,ax
	jnz	388Ch

;; fn3CEE_3889: 3CEE:3889
;;   Called from:
;;     3CEE:3885 (in fn3CEE_3880)
;;     3CEE:3887 (in fn3CEE_3885)
;;     3CEE:3887 (in fn3CEE_3885)
;;     3CEE:3AA4 (in fn3CEE_388C)
fn3CEE_3889 proc
	jmp	3AA9h

;; fn3CEE_388C: 3CEE:388C
;;   Called from:
;;     3CEE:3885 (in fn3CEE_3880)
;;     3CEE:3887 (in fn3CEE_3885)
;;     3CEE:3887 (in fn3CEE_3885)
fn3CEE_388C proc
	inc	word ptr [bp-74h]
	mov	ax,[bp-2h]
	cmp	[bp-74h],ax
	jbe	389Ah

l3CEE_3897:
	jmp	3A94h

l3CEE_389A:
	mov	ax,[bp-70h]
	or	ax,[bp-6Eh]
	jz	38D1h

l3CEE_38A2:
	sub	ax,ax
	push	ax
	lea	ax,[bp+0FF76h]
	push	ss
	push	ax
	call	far 2368h:022Eh
	add	sp,6h
	push	word ptr [bp-6Eh]
	push	word ptr [bp-70h]
	call	far 2368h:030Eh
	add	sp,4h
	les	bx,[1296h]
	mov	ax,[bp-74h]
	mov	es:[bx+0Eh],ax
	call	far 2368h:0A7Ah

l3CEE_38D1:
	mov	ax,[bp-6Ch]
	or	ax,[bp-6Ah]
	jz	3936h

l3CEE_38D9:
	push	word ptr [bp+0FF74h]
	push	word ptr [bp+0FF72h]
	call	far 3CEEh:0CF7h
	add	sp,4h
	lea	di,[bp+0FF4Eh]
	mov	si,ax
	push	ss
	pop	es
	push	ds
	mov	ds,dx
	movsw
	movsw
	movsw
	movsw
	pop	ds
	sub	ax,ax
	push	ax
	mov	ax,0Ah
	push	ax
	push	word ptr [bp+0FF54h]
	push	word ptr [bp+0FF52h]
	push	word ptr [bp+0FF50h]
	push	word ptr [bp+0FF4Eh]
	call	far 2368h:01B0h
	add	sp,0Ch
	push	word ptr [bp-6Ah]
	push	word ptr [bp-6Ch]
	call	far 2368h:030Eh
	add	sp,4h
	les	bx,[1296h]
	mov	ax,[bp-74h]
	mov	es:[bx+0Eh],ax
	call	far 2368h:0A7Ah

l3CEE_3936:
	mov	ax,[bp-68h]
	or	ax,[bp-66h]
	jz	3997h

l3CEE_393E:
	mov	ax,[bp+0FF70h]
	and	ax,0FE00h
	mov	cl,9h
	shr	ax,cl
	add	ax,7BCh
	push	ax
	mov	ax,[bp+0FF70h]
	and	ax,1E0h
	mov	cl,5h
	shr	ax,cl
	push	ax
	mov	ax,[bp+0FF70h]
	and	ax,1Fh
	push	ax
	call	far 38D6h:0222h
	add	sp,6h
	mov	[bp-50h],ax
	mov	[bp-4Eh],dx
	push	dx
	push	ax
	call	far 2368h:02D2h
	add	sp,4h
	push	word ptr [bp-66h]
	push	word ptr [bp-68h]
	call	far 2368h:030Eh
	add	sp,4h
	les	bx,[1296h]
	mov	ax,[bp-74h]
	mov	es:[bx+0Eh],ax
	call	far 2368h:0A7Ah

l3CEE_3997:
	mov	ax,[bp-64h]
	or	ax,[bp-62h]
	jnz	39A2h

l3CEE_399F:
	jmp	3A22h

l3CEE_39A2:
	lea	ax,[bp-5Ch]
	push	ss
	push	ax
	mov	ax,[bp+0FF6Eh]
	and	ax,0F800h
	mov	cl,0Bh
	shr	ax,cl
	push	ax
	push	cs
	call	3682h
	add	sp,6h
	lea	ax,[bp-59h]
	push	ss
	push	ax
	mov	ax,[bp+0FF6Eh]
	and	ax,7E0h
	mov	cl,5h
	shr	ax,cl
	push	ax
	push	cs
	call	3682h
	add	sp,6h
	lea	ax,[bp-56h]
	push	ss
	push	ax
	mov	ax,[bp+0FF6Eh]
	and	ax,1Fh
	shl	ax,1h
	push	ax
	push	cs
	call	3682h
	add	sp,6h
	mov	byte ptr [bp-5Ah],3Ah
	mov	byte ptr [bp-57h],3Ah
	mov	byte ptr [bp-54h],0h
	sub	ax,ax
	push	ax
	lea	ax,[bp-5Ch]
	push	ss
	push	ax
	call	far 2368h:022Eh
	add	sp,6h
	push	word ptr [bp-62h]
	push	word ptr [bp-64h]
	call	far 2368h:030Eh
	add	sp,4h
	les	bx,[1296h]
	mov	ax,[bp-74h]
	mov	es:[bx+0Eh],ax
	call	far 2368h:0A7Ah

l3CEE_3A22:
	mov	ax,[bp-60h]
	or	ax,[bp-5Eh]
	jz	3A94h

l3CEE_3A2A:
	mov	word ptr [bp-46h],0h
	mov	word ptr [bp-72h],0h

l3CEE_3A34:
	mov	ax,1h
	mov	cl,[bp-72h]
	shl	ax,cl
	mov	cl,[bp+0FF6Dh]
	sub	ch,ch
	test	cx,ax
	jz	3A56h

l3CEE_3A46:
	mov	bx,[bp-72h]
	mov	al,[bx+3A76h]
	mov	si,[bp-46h]
	inc	word ptr [bp-46h]
	mov	[bp+si-5Ch],al

l3CEE_3A56:
	inc	word ptr [bp-72h]
	cmp	word ptr [bp-72h],6h
	jc	3A34h

l3CEE_3A5F:
	mov	si,[bp-46h]
	mov	byte ptr [bp+si-5Ch],0h
	sub	ax,ax
	push	ax
	lea	ax,[bp-5Ch]
	push	ss
	push	ax
	call	far 2368h:022Eh
	add	sp,6h
	push	word ptr [bp-5Eh]
	push	word ptr [bp-60h]
	call	far 2368h:030Eh
	add	sp,4h
	les	bx,[1296h]
	mov	ax,[bp-74h]
	mov	es:[bx+0Eh],ax
	call	far 2368h:0A7Ah

l3CEE_3A94:
	lea	ax,[bp+0FF58h]
	push	ss
	push	ax
	call	far 2017h:018Fh
	add	sp,4h
	or	ax,ax
	jz	3AA9h

l3CEE_3AA6:
	jmp	388Ch

l3CEE_3AA9:
	push	word ptr [bp-74h]
	call	far 3B5Dh:057Ah
