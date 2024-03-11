;;; Segment 3CEE (3CEE:0000)
3CEE:0000 A1 64 71 00 3E B0 59 03 00 64 78 00 34 00 B4 30 .dq.>.Y..dx.4..0
3CEE:0010 CD 21 3C 02 73 02 CD 20 BF 8E 4D 8B 36 02 00 2B .!<.s.. ..M.6..+
3CEE:0020 F7 81 FE 00 10 72 03 BE 00 10 FA 8E D7 81 C4 9E .....r..........
3CEE:0030 62 FB 73 14 16 1F 9A 44 02 EE 3C 33 C0 50 9A B9 b.s....D..<3.P..
3CEE:0040 02 EE 3C B8 FF 4C CD 21                         ..<..L.!        

l3CEE_0048:
	and	sp,0FEh
	mov	ss:[3502h],sp
	mov	ss:[34FEh],sp
	mov	ax,si
	mov	cl,4h
	shl	ax,cl
	dec	ax
	mov	ss:[34FCh],ax
	add	si,di
	mov	[0002h],si
	mov	bx,es
	sub	bx,si
	neg	bx
	mov	ah,4Ah
	int	21h
	mov	ss:[3573h],ds
	push	ss
	pop	es
	cld
	mov	di,62A0h
	mov	cx,62A0h
	sub	cx,di
	xor	ax,ax

l3CEE_0082:
	rep stosb

l3CEE_0084:
	push	ss
	pop	ds
	call	far 3CEEh:00DCh
	push	ss
	pop	ds
	call	far 3CEEh:02E4h
	call	far 3CEEh:0358h
	xor	bp,bp
	push	word ptr [3598h]
	push	word ptr [3596h]
	push	word ptr [3594h]
	push	word ptr [3592h]
	push	word ptr [3590h]
	call	far 21DCh:10DEh
	push	ax
	call	far 3CEEh:01A0h
	mov	ax,4D8Eh
	mov	ds,ax
	mov	ax,3h
	mov	word ptr ss:[3500h],1A0h

;; fn3CEE_00C7: 3CEE:00C7
;;   Called from:
;;     3CEE:00C0 (in fn3CEE_FD1B)
;;     3CEE:0241 (in fn3CEE_0102)
;;     3CEE:0A17 (in fn3CEE_09D8)
fn3CEE_00C7 proc
	push	ax
	call	far 3CEEh:0244h
	call	far 3CEEh:02B9h
	mov	ax,0FFh
	push	ax
	push	cs
	call	word ptr [3500h]
	add	[si+0CD30h],dh

;; fn3CEE_00DC: 3CEE:00DC
;;   Called from:
;;     3CEE:0086 (in fn3CEE_FD1B)
fn3CEE_00DC proc
	mov	ah,30h
	int	21h

;; fn3CEE_00DF: 3CEE:00DF
;;   Called from:
;;     3CEE:00DB (in fn3CEE_00C7)
;;     3CEE:00DE (in fn3CEE_00DC)
fn3CEE_00DF proc
	and	[bp+di+3575h],sp
	mov	ax,3500h
	int	21h
	mov	[3561h],bx
	mov	[3563h],es
	push	cs
	pop	ds
	mov	ax,2500h
	mov	dx,0B8h
	int	21h
	push	ss
	pop	ds
	mov	cx,[3F24h]
	jcxz	0130h

;; fn3CEE_0102: 3CEE:0102
;;   Called from:
;;     3CEE:00FF (in fn3CEE_00DF)
;;     3CEE:0100 (in fn3CEE_00DF)
fn3CEE_0102 proc
	mov	es,[3573h]
	mov	si,es:[002Ch]
	lds	ax,[3F26h]
	mov	dx,ds
	xor	bx,bx
	call	dword ptr ss:[3F22h]
	jnc	011Fh

l3CEE_011A:
	push	ss
	pop	ds
	jmp	023Eh

l3CEE_011F:
	lds	ax,ss:[3F2Ah]
	mov	dx,ds
	mov	bx,3h
	call	dword ptr ss:[3F22h]
	push	ss
	pop	ds

;; fn3CEE_0130: 3CEE:0130
;;   Called from:
;;     3CEE:00FF (in fn3CEE_00DF)
;;     3CEE:0100 (in fn3CEE_00DF)
;;     3CEE:012F (in fn3CEE_0102)
fn3CEE_0130 proc
	mov	es,[3573h]
	mov	cx,es:[002Ch]
	jcxz	0171h

l3CEE_013B:
	mov	es,cx
	xor	di,di

l3CEE_013F:
	cmp	byte ptr es:[di],0h
	jz	0171h

l3CEE_0145:
	mov	cx,0Ch
	mov	si,3554h
	rep cmpsb
	jz	015Ah

l3CEE_014F:
	mov	cx,7FFFh
	xor	ax,ax

l3CEE_0154:
	repne scasb

l3CEE_0156:
	jnz	0171h

l3CEE_0158:
	jmp	013Fh

l3CEE_015A:
	push	es
	push	ds
	pop	es
	pop	ds
	mov	si,di
	mov	di,357Ch
	lodsb
	cbw
	xchg	cx,ax

l3CEE_0166:
	lodsb
	inc	al
	jz	016Ch

l3CEE_016B:
	dec	ax

l3CEE_016C:
	stosb
	loop	0166h

l3CEE_016F:
	push	ss
	pop	ds

l3CEE_0171:
	mov	bx,4h

l3CEE_0174:
	and	byte ptr [bx+357Ch],0BFh
	mov	ax,4400h
	int	21h
	jc	018Ah

l3CEE_0180:
	test	dl,80h
	jz	018Ah

l3CEE_0185:
	or	byte ptr [bx+357Ch],40h

l3CEE_018A:
	dec	bx
	jns	0174h

l3CEE_018D:
	mov	si,3F2Eh
	mov	di,3F2Eh
	call	022Bh
	mov	si,3F2Eh
	mov	di,3F2Eh
	call	022Bh
	retf

;; fn3CEE_01A0: 3CEE:01A0
;;   Called from:
;;     3CEE:00B3 (in fn3CEE_FD1B)
;;     3CEE:15AB (in fn3CEE_1576)
fn3CEE_01A0 proc
	push	bp
	mov	bp,sp
	mov	si,62A0h
	mov	di,62A0h
	call	022Bh
	mov	si,3F2Eh
	mov	di,3F2Eh
	call	022Bh
	jmp	01BAh

;; fn3CEE_01B7: 3CEE:01B7
;;   Called from:
;;     2068:016B (in fn2068_0154)
;;     21DC:04CF (in fn21DC_04BA)
;;     21DC:055E (in fn21DC_04BA)
;;     21DC:117F (in main)
;;     21DC:11E6 (in main)
fn3CEE_01B7 proc
	push	bp
	mov	bp,sp

;; fn3CEE_01BA: 3CEE:01BA
;;   Called from:
;;     3CEE:01B5 (in fn3CEE_01A0)
;;     3CEE:01B8 (in fn3CEE_01B7)
fn3CEE_01BA proc
	mov	si,3F2Eh
	mov	di,3F2Eh
	call	022Bh
	mov	si,3F2Eh
	mov	di,3F2Eh
	call	022Bh
	call	far 3CEEh:0268h
	or	ax,ax
	jz	01E0h

;; fn3CEE_01D5: 3CEE:01D5
;;   Called from:
;;     3CEE:01D3 (in fn3CEE_01BA)
;;     3CEE:01D3 (in fn3CEE_01BA)
fn3CEE_01D5 proc
	cmp	word ptr [bp+6h],0h
	jnz	01E0h

l3CEE_01DB:
	mov	word ptr [bp+6h],0FFh

;; fn3CEE_01E0: 3CEE:01E0
;;   Called from:
;;     3CEE:01D3 (in fn3CEE_01BA)
;;     3CEE:01D3 (in fn3CEE_01BA)
;;     3CEE:01D9 (in fn3CEE_01D5)
;;     3CEE:01DB (in fn3CEE_01D5)
fn3CEE_01E0 proc
	mov	cx,0Fh
	mov	bx,5h

l3CEE_01E6:
	test	byte ptr [bx+357Ch],1h
	jz	01F1h

l3CEE_01ED:
	mov	ah,3Eh
	int	21h

l3CEE_01F1:
	inc	bx
	loop	01E6h

l3CEE_01F4:
	call	01FEh
	mov	ax,[bp+6h]
	mov	ah,4Ch
	int	21h

;; fn3CEE_01FE: 3CEE:01FE
;;   Called from:
;;     3CEE:01F4 (in fn3CEE_01E0)
fn3CEE_01FE proc
	mov	cx,[3F24h]
	jcxz	020Bh

l3CEE_0204:
	mov	bx,2h
	call	dword ptr [3F22h]

l3CEE_020B:
	push	ds
	lds	dx,[3561h]
	mov	ax,2500h
	int	21h
	pop	ds
	cmp	byte ptr [35A2h],0h
	jz	022Ah

l3CEE_021D:
	push	ds
	mov	al,[35A3h]
	lds	dx,[35A4h]
	mov	ah,25h
	int	21h
	pop	ds

l3CEE_022A:
	ret

;; fn3CEE_022B: 3CEE:022B
;;   Called from:
;;     3CEE:0193 (in fn3CEE_0130)
;;     3CEE:019C (in fn3CEE_0130)
;;     3CEE:01A9 (in fn3CEE_01A0)
;;     3CEE:01B2 (in fn3CEE_01A0)
;;     3CEE:01C0 (in fn3CEE_01BA)
;;     3CEE:01C0 (in fn3CEE_01BA)
;;     3CEE:01C9 (in fn3CEE_01BA)
;;     3CEE:01C9 (in fn3CEE_01BA)
fn3CEE_022B proc
	cmp	si,di
	jnc	023Dh

l3CEE_022F:
	sub	di,4h
	mov	ax,[di]
	or	ax,[di+2h]
	jz	022Bh

l3CEE_0239:
	call	dword ptr [di]
	jmp	022Bh

l3CEE_023D:
	ret

l3CEE_023E:
	mov	ax,2h
	jmp	00C7h

;; fn3CEE_0244: 3CEE:0244
;;   Called from:
;;     3CEE:00C8 (in fn3CEE_00C7)
;;     3CEE:027B (in fn3CEE_0268)
;;     3CEE:1585 (in fn3CEE_1576)
fn3CEE_0244 proc
	push	bp
	mov	bp,sp
	mov	ax,0FCh
	push	ax
	call	far 3CEEh:02B9h
	cmp	word ptr [35AAh],0h
	jz	025Bh

l3CEE_0257:
	call	dword ptr [35A8h]

l3CEE_025B:
	mov	ax,0FFh
	push	ax
	call	far 3CEEh:02B9h
	mov	sp,bp
	pop	bp
	retf

;; fn3CEE_0268: 3CEE:0268
;;   Called from:
;;     3CEE:01CC (in fn3CEE_01BA)
;;     3CEE:01CC (in fn3CEE_01BA)
fn3CEE_0268 proc
	push	si
	xor	si,si
	mov	cx,42h
	xor	ah,ah
	cld

l3CEE_0271:
	lodsb
	xor	ah,al
	loop	0271h

l3CEE_0276:
	xor	ah,55h
	jz	028Ch

l3CEE_027B:
	call	far 3CEEh:0244h
	mov	ax,1h
	push	ax
	call	far 3CEEh:02B9h
	mov	ax,1h

l3CEE_028C:
	pop	si
	retf

;; fn3CEE_028E: 3CEE:028E
;;   Called from:
;;     3CEE:02C0 (in fn3CEE_02B9)
fn3CEE_028E proc
	push	bp
	mov	bp,sp
	push	si
	push	di
	push	ds
	pop	es
	mov	dx,[bp+6h]
	mov	si,6271h

l3CEE_029B:
	lodsw
	cmp	ax,dx
	jz	02B0h

l3CEE_02A0:
	inc	ax
	xchg	si,ax
	jz	02B0h

l3CEE_02A4:
	xchg	di,ax
	xor	ax,ax
	mov	cx,0FFFFh

l3CEE_02AA:
	repne scasb

l3CEE_02AC:
	mov	si,di
	jmp	029Bh

l3CEE_02B0:
	xchg	si,ax
	pop	di
	pop	si
	mov	sp,bp
	pop	bp
	retf	2h

;; fn3CEE_02B9: 3CEE:02B9
;;   Called from:
;;     3CEE:00CD (in fn3CEE_00C7)
;;     3CEE:024B (in fn3CEE_0244)
;;     3CEE:025F (in fn3CEE_0244)
;;     3CEE:0284 (in fn3CEE_0268)
;;     3CEE:1596 (in fn3CEE_1576)
;;     3CEE:15A2 (in fn3CEE_1576)
;;     3CEE:1746 (in fn3CEE_8A23)
fn3CEE_02B9 proc
	push	bp
	mov	bp,sp
	push	di
	push	word ptr [bp+6h]
	call	far 3CEEh:028Eh
	or	ax,ax
	jz	02DDh

l3CEE_02C9:
	xchg	dx,ax
	mov	di,dx
	xor	ax,ax
	mov	cx,0FFFFh

l3CEE_02D1:
	repne scasb

l3CEE_02D3:
	not	cx
	dec	cx
	mov	bx,2h
	mov	ah,40h
	int	21h

l3CEE_02DD:
	pop	di
	mov	sp,bp
	pop	bp
	retf	2h

;; fn3CEE_02E4: 3CEE:02E4
;;   Called from:
;;     3CEE:008D (in fn3CEE_FD1B)
fn3CEE_02E4 proc
	push	bp
	mov	bp,sp
	push	bp
	mov	ds,[3573h]
	xor	cx,cx
	mov	ax,cx
	mov	bp,cx
	mov	di,cx
	dec	cx
	mov	si,[002Ch]
	or	si,si
	jz	0305h

l3CEE_02FD:
	mov	es,si

l3CEE_02FF:
	repne scasb

l3CEE_0301:
	inc	bp
	scasb
	jnz	02FFh

l3CEE_0305:
	inc	bp
	xchg	di,ax
	inc	ax
	and	al,0FEh
	mov	di,bp
	shl	bp,1h
	shl	bp,1h
	add	ax,bp
	push	ss
	pop	ds
	push	di
	mov	di,9h
	call	09D8h
	pop	di
	mov	cx,di
	mov	di,bp
	add	di,ax
	mov	[3596h],bp
	mov	[3598h],ds
	push	ds
	pop	es
	mov	ds,si
	xor	si,si
	dec	cx
	jcxz	034Ah

l3CEE_0333:
	cmp	word ptr [si],433Bh
	jz	0342h

l3CEE_0339:
	mov	[bp+0h],di
	mov	[bp+2h],es
	add	bp,4h

l3CEE_0342:
	lodsb
	stosb
	or	al,al
	jnz	0342h

l3CEE_0348:
	loop	0333h

l3CEE_034A:
	mov	[bp+0h],cx
	mov	[bp+2h],cx
	push	ss
	pop	ds
	pop	bp
	mov	sp,bp
	pop	bp
	retf
3CEE:0357                      00                                .        

;; fn3CEE_0358: 3CEE:0358
;;   Called from:
;;     3CEE:0092 (in fn3CEE_FD1B)
fn3CEE_0358 proc
	pop	word ptr [35ACh]
	pop	word ptr [35AEh]
	mov	dx,2h
	cmp	[3575h],dl
	jz	0392h

l3CEE_0369:
	mov	es,[3573h]
	mov	es,es:[002Ch]
	mov	[359Ch],es
	xor	ax,ax
	cwd
	mov	cx,8000h
	xor	di,di

l3CEE_037E:
	repne scasb

l3CEE_0380:
	scasb
	jnz	037Eh

l3CEE_0383:
	inc	di
	inc	di
	mov	[359Ah],di
	mov	cx,0FFFFh

l3CEE_038C:
	repne scasb

l3CEE_038E:
	not	cx
	mov	dx,cx

l3CEE_0392:
	mov	di,1h
	mov	si,81h
	mov	ds,[3573h]

l3CEE_039C:
	lodsb
	cmp	al,20h
	jz	039Ch

l3CEE_03A1:
	cmp	al,9h
	jz	039Ch

l3CEE_03A5:
	cmp	al,0Dh
	jz	0418h

l3CEE_03A9:
	or	al,al
	jz	0418h

l3CEE_03AD:
	inc	di

l3CEE_03AE:
	dec	si

l3CEE_03AF:
	lodsb
	cmp	al,20h
	jz	039Ch

l3CEE_03B4:
	cmp	al,9h
	jz	039Ch

l3CEE_03B8:
	cmp	al,0Dh
	jz	0418h

l3CEE_03BC:
	or	al,al
	jz	0418h

l3CEE_03C0:
	cmp	al,22h
	jz	03E8h

l3CEE_03C4:
	cmp	al,5Ch
	jz	03CBh

l3CEE_03C8:
	inc	dx
	jmp	03AFh

l3CEE_03CB:
	xor	cx,cx

l3CEE_03CD:
	inc	cx
	lodsb
	cmp	al,5Ch
	jz	03CDh

l3CEE_03D3:
	cmp	al,22h
	jz	03DBh

l3CEE_03D7:
	add	dx,cx
	jmp	03AEh

l3CEE_03DB:
	mov	ax,cx
	shr	cx,1h
	adc	dx,cx
	test	al,1h
	jnz	03AFh

l3CEE_03E5:
	jmp	03E8h

l3CEE_03E7:
	dec	si

l3CEE_03E8:
	lodsb
	cmp	al,0Dh
	jz	0418h

l3CEE_03ED:
	or	al,al
	jz	0418h

l3CEE_03F1:
	cmp	al,22h
	jz	03AFh

l3CEE_03F5:
	cmp	al,5Ch
	jz	03FCh

l3CEE_03F9:
	inc	dx
	jmp	03E8h

l3CEE_03FC:
	xor	cx,cx

l3CEE_03FE:
	inc	cx
	lodsb
	cmp	al,5Ch
	jz	03FEh

l3CEE_0404:
	cmp	al,22h
	jz	040Ch

l3CEE_0408:
	add	dx,cx
	jmp	03E7h

l3CEE_040C:
	mov	ax,cx
	shr	cx,1h
	adc	dx,cx
	test	al,1h
	jnz	03E8h

l3CEE_0416:
	jmp	03AFh

l3CEE_0418:
	push	ss
	pop	ds
	mov	[3590h],di
	add	dx,di
	inc	di
	shl	di,1h
	shl	di,1h
	add	dx,di
	and	dl,0FEh
	sub	sp,dx
	mov	ax,sp
	mov	[3592h],ax
	mov	[3594h],ds
	mov	bx,ax
	add	di,bx
	push	ss
	pop	es
	mov	ss:[bx],di
	mov	ss:[bx+2h],ss
	add	bx,4h
	lds	si,[359Ah]

l3CEE_0449:
	lodsb
	stosb
	or	al,al
	jnz	0449h

l3CEE_044F:
	mov	si,81h
	mov	ds,ss:[3573h]
	jmp	045Ch

l3CEE_0459:
	xor	ax,ax
	stosb

l3CEE_045C:
	lodsb
	cmp	al,20h
	jz	045Ch

l3CEE_0461:
	cmp	al,9h
	jz	045Ch

l3CEE_0465:
	cmp	al,0Dh
	jnz	046Ch

l3CEE_0469:
	jmp	04F0h

l3CEE_046C:
	or	al,al
	jnz	0473h

l3CEE_0470:
	jmp	04F0h
3CEE:0472       90                                          .             

l3CEE_0473:
	mov	ss:[bx],di
	mov	ss:[bx+2h],ss
	add	bx,4h

l3CEE_047D:
	dec	si

l3CEE_047E:
	lodsb
	cmp	al,20h
	jz	0459h

l3CEE_0483:
	cmp	al,9h
	jz	0459h

l3CEE_0487:
	cmp	al,0Dh
	jz	04EDh

l3CEE_048B:
	or	al,al
	jz	04EDh

l3CEE_048F:
	cmp	al,22h
	jz	04BAh

l3CEE_0493:
	cmp	al,5Ch
	jz	049Ah

l3CEE_0497:
	stosb
	jmp	047Eh

l3CEE_049A:
	xor	cx,cx

l3CEE_049C:
	inc	cx
	lodsb
	cmp	al,5Ch
	jz	049Ch

l3CEE_04A2:
	cmp	al,22h
	jz	04ACh

l3CEE_04A6:
	mov	al,5Ch

l3CEE_04A8:
	rep stosb

l3CEE_04AA:
	jmp	047Dh

l3CEE_04AC:
	mov	al,5Ch
	shr	cx,1h

l3CEE_04B0:
	rep stosb

l3CEE_04B2:
	jnc	04BAh

l3CEE_04B4:
	mov	al,22h
	stosb
	jmp	047Eh

l3CEE_04B9:
	dec	si

l3CEE_04BA:
	lodsb
	cmp	al,0Dh
	jz	04EDh

l3CEE_04BF:
	or	al,al
	jz	04EDh

l3CEE_04C3:
	cmp	al,22h
	jz	047Eh

l3CEE_04C7:
	cmp	al,5Ch
	jz	04CEh

l3CEE_04CB:
	stosb
	jmp	04BAh

l3CEE_04CE:
	xor	cx,cx

l3CEE_04D0:
	inc	cx
	lodsb
	cmp	al,5Ch
	jz	04D0h

l3CEE_04D6:
	cmp	al,22h
	jz	04E0h

l3CEE_04DA:
	mov	al,5Ch

l3CEE_04DC:
	rep stosb

l3CEE_04DE:
	jmp	04B9h

l3CEE_04E0:
	mov	al,5Ch
	shr	cx,1h

l3CEE_04E4:
	rep stosb

l3CEE_04E6:
	jnc	047Eh

l3CEE_04E8:
	mov	al,22h
	stosb
	jmp	04BAh

l3CEE_04ED:
	xor	ax,ax
	stosb

l3CEE_04F0:
	push	ss
	pop	ds
	mov	word ptr [bx],0h
	mov	word ptr [bx+2h],0h
	jmp	dword ptr [35ACh]
3CEE:04FF                                              00                .

;; fn3CEE_0500: 3CEE:0500
;;   Called from:
;;     2644:20A0 (in fn2644_2068)
;;     38D6:0627 (in fn38D6_05C4)
fn3CEE_0500 proc
	push	bp
	mov	bp,sp
	push	di
	push	si
	push	bx
	xor	di,di
	mov	ax,[bp+8h]
	or	ax,ax
	jge	0521h

l3CEE_050F:
	not	di
	mov	dx,[bp+6h]
	neg	ax
	neg	dx
	sbb	ax,0h
	mov	[bp+8h],ax

;; fn3CEE_051D: 3CEE:051D
;;   Called from:
;;     3CEE:14AB (in fn3CEE_1472)
fn3CEE_051D proc
	or	[bx+di+656h],cl

;; fn3CEE_0521: 3CEE:0521
;;   Called from:
;;     3CEE:050D (in fn3CEE_0500)
;;     3CEE:051D (in fn3CEE_051D)
;;     3CEE:051E (in fn3CEE_0500)
fn3CEE_0521 proc
	mov	ax,[bp+0Ch]
	or	ax,ax
	jge	053Ah

l3CEE_0528:
	not	di
	mov	dx,[bp+0Ah]
	neg	ax
	neg	dx
	sbb	ax,0h
	mov	[bp+0Ch],ax
	mov	[bp+0Ah],dx

l3CEE_053A:
	or	ax,ax
	jnz	0554h

l3CEE_053E:
	mov	cx,[bp+0Ah]
	mov	ax,[bp+8h]
	xor	dx,dx
	div	cx
	mov	bx,ax
	mov	ax,[bp+6h]
	div	cx
	mov	dx,bx
	jmp	0591h
3CEE:0553          90                                        .            

l3CEE_0554:
	mov	bx,ax
	mov	cx,[bp+0Ah]
	mov	dx,[bp+8h]
	mov	ax,[bp+6h]

l3CEE_055F:
	shr	bx,1h
	rcr	cx,1h
	shr	dx,1h
	rcr	ax,1h
	or	bx,bx
	jnz	055Fh

l3CEE_056B:
	div	cx
	mov	si,ax
	xor	dx,dx
	push	dx
	push	ax
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	call	far 3CEEh:05A6h
	cmp	dx,[bp+8h]
	ja	058Ah

l3CEE_0583:
	jc	058Dh

l3CEE_0585:
	cmp	ax,[bp+6h]
	jbe	058Dh

l3CEE_058A:
	sub	si,1h

l3CEE_058D:
	xor	dx,dx
	mov	ax,si

l3CEE_0591:
	or	di,di
	jz	059Ch

l3CEE_0595:
	neg	dx
	neg	ax
	sbb	dx,0h

l3CEE_059C:
	pop	bx
	pop	si
	pop	di
	mov	sp,bp
	pop	bp
	retf	8h
3CEE:05A5                00                                    .          

;; fn3CEE_05A6: 3CEE:05A6
;;   Called from:
;;     2644:2126 (in fn2644_20AA)
;;     2644:222E (in fn2644_21CA)
;;     2644:4675 (in fn2644_45CA)
;;     2D1A:008E (in fn2D1A_003C)
;;     2D1A:01A5 (in fn2D1A_0186)
;;     38D6:02AB (in fn38D6_0222)
;;     3CEE:0579 (in fn3CEE_0521)
;;     3CEE:0652 (in fn3CEE_0646)
;;     3CEE:06FB (in fn3CEE_06EA)
fn3CEE_05A6 proc
	push	bp
	mov	bp,sp
	mov	ax,[bp+8h]
	mov	bx,[bp+0Ch]
	or	bx,ax
	mov	bx,[bp+0Ah]
	jnz	05C1h

l3CEE_05B6:
	mov	ax,[bp+6h]
	mul	bx
	mov	sp,bp
	pop	bp
	retf	8h

l3CEE_05C1:
	mul	bx
	mov	cx,ax
	mov	ax,[bp+6h]
	mul	word ptr [bp+0Ch]
	add	cx,ax
	mov	ax,[bp+6h]
	mul	bx
	add	dx,cx
	mov	sp,bp
	pop	bp
	retf	8h

;; fn3CEE_05DA: 3CEE:05DA
;;   Called from:
;;     38D6:06E9 (in fn38D6_05C4)
fn3CEE_05DA proc
	push	bp
	mov	bp,sp
	push	bx
	push	di
	xor	di,di
	mov	ax,[bp+8h]
	or	ax,ax
	jge	05FAh

l3CEE_05E8:
	not	di
	mov	dx,[bp+6h]
	neg	ax
	neg	dx
	sbb	ax,0h
	mov	[bp+8h],ax
	mov	[bp+6h],dx

l3CEE_05FA:
	mov	ax,[bp+0Ch]
	or	ax,ax
	jge	0611h

l3CEE_0601:
	mov	dx,[bp+0Ah]
	neg	ax
	neg	dx
	sbb	ax,0h
	mov	[bp+0Ch],ax
	mov	[bp+0Ah],dx

l3CEE_0611:
	or	ax,ax
	jnz	062Fh

l3CEE_0615:
	mov	cx,[bp+0Ah]
	mov	ax,[bp+8h]
	xor	dx,dx
	div	cx
	mov	ax,[bp+6h]
	div	cx
	mov	ax,dx
	xor	dx,dx
	or	di,di
	jnz	0673h

l3CEE_062C:
	jmp	067Ah
3CEE:062E                                           90                  . 

l3CEE_062F:
	mov	bx,ax
	mov	cx,[bp+0Ah]
	mov	dx,[bp+8h]
	mov	ax,[bp+6h]

;; fn3CEE_063A: 3CEE:063A
;;   Called from:
;;     3CEE:0644 (in fn3CEE_0644)
;;     3CEE:0645 (in fn3CEE_0645)
fn3CEE_063A proc
	shr	bx,1h
	rcr	cx,1h
	shr	dx,1h
	rcr	ax,1h
	or	bx,bx

;; fn3CEE_0644: 3CEE:0644
;;   Called from:
;;     3CEE:0642 (in fn3CEE_063A)
;;     3CEE:8A74 (in fn3CEE_8A23)
fn3CEE_0644 proc
	jnz	063Ah

;; fn3CEE_0645: 3CEE:0645
;;   Called from:
;;     3CEE:062A (in fn3CEE_05DA)
;;     3CEE:062C (in fn3CEE_05DA)
;;     3CEE:0637 (in fn3CEE_05DA)
;;     3CEE:865A (in fn3CEE_8634)
fn3CEE_0645 proc
	hlt

;; fn3CEE_0646: 3CEE:0646
;;   Called from:
;;     3CEE:0644 (in fn3CEE_0644)
;;     3CEE:0645 (in fn3CEE_0645)
fn3CEE_0646 proc
	div	cx
	xor	dx,dx
	push	dx
	push	ax
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	call	far 3CEEh:05A6h
	cmp	dx,[bp+8h]
	ja	0663h

l3CEE_065C:
	jc	0669h

l3CEE_065E:
	cmp	ax,[bp+6h]
	jbe	0669h

l3CEE_0663:
	sub	ax,[bp+0Ah]
	sbb	dx,[bp+0Ch]

l3CEE_0669:
	sub	ax,[bp+6h]
	sbb	dx,[bp+8h]
	or	di,di
	jnz	067Ah

l3CEE_0673:
	neg	dx
	neg	ax
	sbb	dx,0h

l3CEE_067A:
	pop	di
	pop	bx
	mov	sp,bp
	pop	bp
	retf	8h
3CEE:0682       55 8B EC 53 56 8B 46 0C 0B C0 75 16 8B 4E   U..SV.F...u..N
3CEE:0690 0A 8B 46 08 33 D2 F7 F1 8B D8 8B 46 06 F7 F1 8B ..F.3......F....
3CEE:06A0 D3 EB 3E 90 8B C8 8B 5E 0A 8B 56 08 8B 46 06 D1 ..>....^..V..F..
3CEE:06B0 E9 D1 DB D1 EA D1 D8 0B C9 75 F4 F7 F3 8B F0 33 .........u.....3
3CEE:06C0 D2 52 50 FF 76 0C FF 76 0A 9A A6 05 EE 3C 3B 56 .RP.v..v.....<;V
3CEE:06D0 08 77 07 72 08 3B 46 06 76 03 83 EE 01 33 D2 8B .w.r.;F.v....3..
3CEE:06E0 C6 5E 5B 8B E5 5D CA 08 00 00                   .^[..]....      

;; fn3CEE_06EA: 3CEE:06EA
;;   Called from:
;;     2644:17A0 (in fn2644_1756)
fn3CEE_06EA proc
	push	bp
	mov	bp,sp
	mov	bx,[bp+6h]
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	word ptr [bx+2h]
	push	word ptr [bx]
	call	far 3CEEh:05A6h
	mov	bx,[bp+6h]
	mov	[bx],ax
	mov	[bx+2h],dx
	mov	sp,bp
	pop	bp
	retf	6h
3CEE:070E                                           55 8B               U.
3CEE:0710 EC 8B 5E 06 FF 76 0A FF 76 08 FF 77 02 FF 37 9A ..^..v..v..w..7.
3CEE:0720 00 05 EE 3C 8B 5E 06 89 57 02 89 07 8B E5 5D CA ...<.^..W.....].
3CEE:0730 06 00                                           ..              

;; fn3CEE_0732: 3CEE:0732
;;   Called from:
;;     2068:005D (in fn2068_001C)
;;     2068:00F0 (in fn2068_00A8)
;;     21DC:070B (in fn21DC_0702)
;;     21DC:0757 (in fn21DC_074E)
;;     21DC:0973 (in fn21DC_096A)
;;     21DC:09BD (in fn21DC_09B4)
fn3CEE_0732 proc
	push	bp
	mov	bp,sp
	les	bx,[bp+6h]
	mov	ax,es
	or	ax,bx
	jz	0743h

l3CEE_073E:
	or	byte ptr es:[bx-2h],1h

l3CEE_0743:
	mov	sp,bp
	pop	bp
	retf

;; fn3CEE_0747: 3CEE:0747
;;   Called from:
;;     2068:0037 (in fn2068_001C)
;;     2068:00D4 (in fn2068_00A8)
;;     21DC:069C (in fn21DC_0696)
;;     21DC:06E2 (in fn21DC_06DC)
;;     21DC:0721 (in fn21DC_0718)
;;     21DC:0987 (in fn21DC_097E)
fn3CEE_0747 proc
	push	bp
	mov	bp,sp
	sub	sp,2h
	push	si
	push	di
	mov	ax,[bp+6h]
	cmp	ax,0FFF1h
	jnc	0779h

l3CEE_0757:
	or	ax,ax
	jz	0787h

l3CEE_075B:
	cmp	word ptr [35B0h],0h
	jnz	076Ah

l3CEE_0762:
	call	0790h
	jz	0779h

l3CEE_0767:
	mov	[35B0h],ax

l3CEE_076A:
	call	07FFh
	jnz	078Ah

l3CEE_076F:
	call	0790h
	jz	0779h

l3CEE_0774:
	call	07FFh
	jnz	078Ah

l3CEE_0779:
	push	word ptr [bp+6h]
	call	far 3CEEh:098Ch
	add	sp,2h
	jmp	078Ah
3CEE:0786                   90                                  .         

l3CEE_0787:
	xor	ax,ax
	cwd

l3CEE_078A:
	pop	di
	pop	si
	mov	sp,bp
	pop	bp
	retf

;; fn3CEE_0790: 3CEE:0790
;;   Called from:
;;     3CEE:0762 (in fn3CEE_0747)
;;     3CEE:076F (in fn3CEE_0747)
fn3CEE_0790 proc
	mov	bx,0F0h
	cmp	[bp+6h],bx
	jle	07A0h

l3CEE_0798:
	mov	bx,[bp+6h]
	inc	bx
	and	bx,0FFFEh

l3CEE_07A0:
	mov	[bp-2h],bx
	xor	ax,ax
	push	ds
	push	ax
	push	ax
	lea	cx,[bx+0Eh]
	push	cx
	mov	al,2h
	push	ax
	call	far 3CEEh:0A1Ah
	add	sp,8h
	cmp	dx,0FFh
	jz	07FDh

l3CEE_07BC:
	mov	ax,dx
	xchg	[35B2h],dx
	mov	[35B4h],ax
	cmp	ax,[35B8h]
	jbe	07CEh

l3CEE_07CB:
	mov	[35B8h],ax

l3CEE_07CE:
	or	dx,dx
	jz	07D7h

l3CEE_07D2:
	mov	ds,dx
	mov	[0008h],ax

l3CEE_07D7:
	mov	bx,[bp-2h]
	mov	ds,ax
	xor	ax,ax
	mov	[0008h],ax
	dec	ax
	dec	ax
	mov	[bx+0Ch],ax
	mov	ax,0Ah
	mov	[0000h],ax
	mov	[0002h],ax
	lea	ax,[bx+1h]
	mov	[000Ah],ax
	add	ax,0Dh
	mov	[0006h],ax
	mov	ax,ds

l3CEE_07FD:
	pop	ds
	ret

;; fn3CEE_07FF: 3CEE:07FF
;;   Called from:
;;     3CEE:076A (in fn3CEE_0747)
;;     3CEE:0774 (in fn3CEE_0747)
fn3CEE_07FF proc
	mov	ax,ds
	mov	es,ax
	mov	cx,[bp+6h]
	xor	bx,bx
	mov	ds,[35B4h]
	call	0819h
	or	dx,dx
	mov	cx,es
	mov	ds,cx
	ret

l3CEE_0816:
	jmp	08E7h

;; fn3CEE_0819: 3CEE:0819
;;   Called from:
;;     3CEE:080C (in fn3CEE_07FF)
;;     3CEE:09CF (in fn3CEE_098C)
fn3CEE_0819 proc
	inc	cx
	jz	0816h

l3CEE_081C:
	and	cl,0FEh
	cmp	cx,0EEh
	jnc	0816h

l3CEE_0824:
	mov	si,[bx+2h]
	cld
	lodsw
	mov	di,si
	test	al,1h
	jz	0871h

l3CEE_082F:
	dec	ax
	cmp	ax,cx
	jnc	0849h

l3CEE_0834:
	mov	dx,ax
	add	si,ax
	lodsw
	test	al,1h
	jz	0871h

l3CEE_083D:
	add	ax,dx
	add	ax,2h
	mov	si,di
	mov	[si-2h],ax
	jmp	082Fh

l3CEE_0849:
	mov	di,si
	jz	0859h

l3CEE_084D:
	add	di,cx
	mov	[si-2h],cx
	sub	ax,cx
	dec	ax
	mov	[di],ax
	jmp	085Eh

l3CEE_0859:
	add	di,cx
	dec	byte ptr [si-2h]

l3CEE_085E:
	mov	ax,si
	mov	dx,ds
	mov	cx,ss
	cmp	dx,cx
	jz	086Dh

l3CEE_0868:
	mov	es:[35B4h],ds

l3CEE_086D:
	mov	[bx+2h],di
	ret

l3CEE_0871:
	mov	byte ptr es:[35BAh],2h

;; fn3CEE_0874: 3CEE:0874
;;   Called from:
;;     3CEE:865A (in fn3CEE_8634)
fn3CEE_0874 proc
	mov	dx,235h

;; fn3CEE_0877: 3CEE:0877
;;   Called from:
;;     3CEE:0816 (in fn3CEE_0819)
;;     3CEE:0832 (in fn3CEE_0819)
;;     3CEE:0874 (in fn3CEE_0874)
;;     3CEE:0874 (in fn3CEE_0874)
;;     3CEE:0874 (in fn3CEE_0874)
fn3CEE_0877 proc
	cmp	ax,0FFFEh
	jz	08A1h

l3CEE_087C:
	mov	di,si
	add	si,ax

l3CEE_0880:
	lodsw
	test	al,1h
	jz	0877h

l3CEE_0885:
	mov	di,si

l3CEE_0887:
	dec	ax
	cmp	ax,cx
	jnc	0849h

l3CEE_088C:
	mov	dx,ax
	add	si,ax
	lodsw
	test	al,1h
	jz	0877h

l3CEE_0895:
	add	ax,dx
	add	ax,2h
	mov	si,di
	mov	[si-2h],ax
	jmp	0887h

l3CEE_08A1:
	mov	ax,[bx+8h]
	or	ax,ax
	jz	08ACh

l3CEE_08A8:
	mov	ds,ax
	jmp	08C0h

l3CEE_08AC:
	dec	byte ptr es:[35BAh]
	jz	08C4h

l3CEE_08B3:
	mov	ax,ds
	mov	di,ss
	cmp	ax,di
	jz	08C0h

l3CEE_08BB:
	mov	ds,es:[35B0h]

l3CEE_08C0:
	mov	si,[bx]
	jmp	0880h

l3CEE_08C4:
	mov	si,[bx+6h]
	xor	ax,ax
	call	0936h
	cmp	ax,si
	jz	08DDh

l3CEE_08D0:
	and	al,1h
	inc	ax
	inc	ax
	cbw
	call	0936h
	jz	08E7h

l3CEE_08DA:
	dec	byte ptr [di-2h]

l3CEE_08DD:
	call	08FCh
	jz	08E7h

l3CEE_08E2:
	xchg	si,ax
	dec	si
	dec	si
	jmp	0880h

l3CEE_08E7:
	mov	ax,ds
	mov	cx,ss
	cmp	ax,cx
	jz	08F3h

l3CEE_08EF:
	mov	es:[35B4h],ax

l3CEE_08F3:
	mov	ax,[bx]
	mov	[bx+2h],ax
	xor	ax,ax
	cwd
	ret

;; fn3CEE_08FC: 3CEE:08FC
;;   Called from:
;;     3CEE:08DD (in fn3CEE_0877)
fn3CEE_08FC proc
	push	cx
	mov	ax,[di-2h]
	test	al,1h
	jz	0907h

l3CEE_0904:
	sub	cx,ax
	dec	cx

l3CEE_0907:
	inc	cx
	inc	cx
	mov	dx,7FFFh

l3CEE_090C:
	cmp	dx,es:[35B6h]
	jbe	0917h

l3CEE_0913:
	shr	dx,1h
	jnz	090Ch

l3CEE_0917:
	mov	ax,cx
	add	ax,si
	jc	0932h

l3CEE_091D:
	add	ax,dx
	jc	092Eh

l3CEE_0921:
	not	dx
	and	ax,dx
	sub	ax,si
	call	0936h
	jnz	0934h

l3CEE_092C:
	not	dx

l3CEE_092E:
	shr	dx,1h
	jnz	0917h

l3CEE_0932:
	xor	ax,ax

l3CEE_0934:
	pop	cx
	ret

;; fn3CEE_0936: 3CEE:0936
;;   Called from:
;;     3CEE:08C9 (in fn3CEE_0877)
;;     3CEE:08D5 (in fn3CEE_0877)
;;     3CEE:0927 (in fn3CEE_08FC)
fn3CEE_0936 proc
	push	dx
	push	cx
	call	0958h
	jz	0955h

l3CEE_093D:
	push	di
	mov	di,si
	mov	si,ax
	add	si,dx
	mov	word ptr [si-2h],0FFFEh
	mov	[bx+6h],si
	mov	dx,si
	sub	dx,di
	dec	dx
	mov	[di-2h],dx
	pop	ax

l3CEE_0955:
	pop	cx
	pop	dx
	ret

;; fn3CEE_0958: 3CEE:0958
;;   Called from:
;;     3CEE:0938 (in fn3CEE_0936)
;;     3CEE:09A4 (in fn3CEE_098C)
fn3CEE_0958 proc
	push	bx
	push	ax
	xor	dx,dx
	push	ds
	push	dx
	push	dx
	push	ax
	mov	ax,1h
	push	ax
	push	es
	pop	ds
	call	far 3CEEh:0A1Ah
	add	sp,8h
	cmp	dx,0FFh
	pop	ds
	pop	dx
	pop	bx
	jz	0978h

l3CEE_0976:
	or	dx,dx

l3CEE_0978:
	ret
3CEE:0979                            00 55 8B EC 8B 5E 06          .U...^.
3CEE:0980 0B DB 74 04 80 4F FE 01 8B E5 5D CB             ..t..O....].    

;; fn3CEE_098C: 3CEE:098C
;;   Called from:
;;     3CEE:077C (in fn3CEE_0747)
fn3CEE_098C proc
	push	bp
	mov	bp,sp
	push	si
	push	di
	cmp	word ptr [bp+6h],0h
	jz	09A9h

l3CEE_0997:
	mov	bx,35BCh
	cmp	word ptr [bx],0h
	jnz	09C8h

l3CEE_099F:
	push	ds
	pop	es
	mov	ax,5h
	call	0958h
	jnz	09AEh

l3CEE_09A9:
	xor	ax,ax
	cwd
	jmp	09D2h

l3CEE_09AE:
	inc	ax
	and	al,0FEh
	mov	[35BCh],ax
	mov	[35BEh],ax
	xchg	si,ax
	mov	word ptr [si],1h
	add	si,4h
	mov	word ptr [si-2h],0FFFEh
	mov	[35C2h],si

l3CEE_09C8:
	mov	cx,[bp+6h]
	mov	ax,ds
	mov	es,ax
	call	0819h

l3CEE_09D2:
	pop	di
	pop	si
	mov	sp,bp
	pop	bp
	retf

;; fn3CEE_09D8: 3CEE:09D8
;;   Called from:
;;     3CEE:0318 (in fn3CEE_02E4)
fn3CEE_09D8 proc
	mov	dx,ax
	add	ax,[3502h]
	jc	0A15h

l3CEE_09E0:
	cmp	[34FCh],ax
	jnc	0A0Bh

l3CEE_09E6:
	add	ax,0Fh
	push	ax
	rcr	ax,1h
	mov	cl,3h
	shr	ax,cl
	mov	cx,ds
	mov	bx,[3573h]
	sub	cx,bx
	add	ax,cx
	mov	es,bx
	mov	bx,ax
	mov	ah,4Ah
	int	21h
	pop	ax
	jc	0A15h

l3CEE_0A05:
	and	al,0F0h
	dec	ax
	mov	[34FCh],ax

l3CEE_0A0B:
	xchg	bp,ax
	mov	bp,[3502h]
	add	[3502h],dx
	ret

l3CEE_0A15:
	mov	ax,di
	jmp	00C7h

;; fn3CEE_0A1A: 3CEE:0A1A
;;   Called from:
;;     3CEE:07AF (in fn3CEE_0790)
;;     3CEE:0966 (in fn3CEE_0958)
fn3CEE_0A1A proc
	push	bp
	mov	bp,sp
	push	si
	push	di
	push	es
	cmp	word ptr [bp+0Ah],0h
	jnz	0A5Eh

l3CEE_0A26:
	mov	di,3502h
	mov	dx,[bp+8h]
	mov	ax,[bp+6h]
	dec	ax
	jnz	0A39h

l3CEE_0A32:
	call	0A88h
	jc	0A5Eh

l3CEE_0A37:
	jmp	0A81h

l3CEE_0A39:
	mov	si,[3552h]
	dec	ax
	jz	0A51h

l3CEE_0A40:
	cmp	si,di
	jz	0A51h

l3CEE_0A44:
	mov	ax,[si+2h]
	mov	[bp+0Eh],ax
	push	si
	call	0A88h
	pop	si
	jnc	0A81h

l3CEE_0A51:
	add	si,4h
	cmp	si,3552h
	jnc	0A5Eh

l3CEE_0A5A:
	or	dx,dx
	jnz	0A64h

l3CEE_0A5E:
	mov	ax,0FFFFh
	cwd
	jmp	0A81h

l3CEE_0A64:
	mov	bx,dx
	add	bx,0Fh
	rcr	bx,1h
	mov	cl,3h
	shr	bx,cl
	mov	ah,48h
	int	21h
	jc	0A5Eh

l3CEE_0A75:
	xchg	dx,ax
	mov	[si],ax
	mov	[si+2h],dx
	mov	[3552h],si
	xor	ax,ax

l3CEE_0A81:
	pop	es
	pop	di
	pop	si
	mov	sp,bp
	pop	bp
	retf

;; fn3CEE_0A88: 3CEE:0A88
;;   Called from:
;;     3CEE:0A32 (in fn3CEE_0A1A)
;;     3CEE:0A4B (in fn3CEE_0A1A)
fn3CEE_0A88 proc
	mov	cx,[bp+0Eh]
	mov	si,di

l3CEE_0A8D:
	cmp	[si+2h],cx
	jz	0A9Eh

l3CEE_0A92:
	add	si,4h
	cmp	si,3552h
	jnz	0A8Dh

l3CEE_0A9B:
	stc
	jmp	0ADDh

l3CEE_0A9E:
	mov	bx,dx
	add	bx,[si]
	jc	0ADDh

l3CEE_0AA4:
	mov	dx,bx
	mov	es,cx
	cmp	si,di
	jnz	0AB2h

l3CEE_0AAC:
	cmp	[34FCh],bx
	jnc	0AD8h

l3CEE_0AB2:
	add	bx,0Fh
	rcr	bx,1h
	shr	bx,1h
	shr	bx,1h
	shr	bx,1h
	cmp	si,di
	jnz	0ACAh

l3CEE_0AC1:
	add	bx,cx
	mov	ax,[3573h]

;; fn3CEE_0AC5: 3CEE:0AC5
;;   Called from:
;;     3CEE:0AC3 (in fn3CEE_0A88)
;;     3CEE:865A (in fn3CEE_8634)
fn3CEE_0AC5 proc
	xor	ax,0D82Bh
	mov	es,ax

;; fn3CEE_0ACA: 3CEE:0ACA
;;   Called from:
;;     3CEE:0A9C (in fn3CEE_0A88)
;;     3CEE:0AA2 (in fn3CEE_0A88)
;;     3CEE:0AB0 (in fn3CEE_0A88)
;;     3CEE:0ABF (in fn3CEE_0A88)
;;     3CEE:0AC7 (in fn3CEE_0AC5)
;;     3CEE:0AC8 (in fn3CEE_0AC5)
fn3CEE_0ACA proc
	mov	ah,4Ah
	int	21h
	jc	0ADDh

l3CEE_0AD0:
	cmp	si,di
	jnz	0AD8h

l3CEE_0AD4:
	mov	[34FCh],dx

l3CEE_0AD8:
	xchg	dx,ax
	xchg	[si],ax
	mov	dx,cx

l3CEE_0ADD:
	ret

;; fn3CEE_0ADE: 3CEE:0ADE
;;   Called from:
;;     3CEE:1707 (in fn3CEE_8A23)
fn3CEE_0ADE proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	mov	ax,1h
	pop	di
	pop	si
	pop	bp
	retf

;; fn3CEE_0AEA: 3CEE:0AEA
;;   Called from:
;;     21DC:0ED7 (in fn21DC_0EC2)
fn3CEE_0AEA proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	fninit
	fstsw	word ptr [35C8h]
	mov	ax,64h
	mov	dx,ax
	imul	dx
	test	word ptr [35C8h],0B8BFh
	jnz	0B0Ah

l3CEE_0B04:
	mov	word ptr [35C6h],1h

l3CEE_0B0A:
	pop	di
	pop	si
	pop	bp
	retf
3CEE:0B0E                                           55 56               UV
3CEE:0B10 57 8B EC F7 06 C6 35 FF FF 74 11 9B DD 46 0A 9B W.....5..t...F..
3CEE:0B20 DC 46 12 9B DD 1E 65 35 9B EB 1E 90 8D 5E 0A 9A .F....e5.....^..
3CEE:0B30 08 10 EE 3C 8D 5E 12 9A 35 14 EE 3C BB 65 35 BA ...<.^..5..<.e5.
3CEE:0B40 8E 4D 8E C2 9A A9 11 EE 3C BA 8E 4D B8 65 35 5F .M......<..M.e5_
3CEE:0B50 5E 5D CB 55 56 57 8B EC F7 06 C6 35 FF FF 74 11 ^].UVW.....5..t.
3CEE:0B60 9B DD 46 0A 9B DC 66 12 9B DD 1E 65 35 9B EB 1E ..F...f....e5...
3CEE:0B70 90 8D 5E 0A 9A 08 10 EE 3C 8D 5E 12 9A BD 13 EE ..^.....<.^.....
3CEE:0B80 3C BB 65 35 BA 8E 4D 8E C2 9A A9 11 EE 3C BA 8E <.e5..M......<..
3CEE:0B90 4D B8 65 35 5F 5E 5D CB 55 56 57 8B EC F7 06 C6 M.e5_^].UVW.....
3CEE:0BA0 35 FF FF 74 11 9B DD 46 0A 9B DC 4E 12 9B DD 1E 5..t...F...N....
3CEE:0BB0 65 35 9B EB 1E 90 8D 5E 0A 9A 08 10 EE 3C 8D 5E e5.....^.....<.^

l3CEE_0BC0:
	adc	bl,[bp+si+13EDh]
	out	dx,al
	cmp	al,0BBh
	xor	ax,8EBAh
	dec	bp
	mov	es,dx
	call	far 3CEEh:11A9h
	mov	dx,4D8Eh
	mov	ax,3565h
	pop	di
	pop	si

l3CEE_0BDB:
	pop	bp
	retf
3CEE:0BDD                                        55 56 57              UVW
3CEE:0BE0 8B EC F7 06 C6 35 FF FF 74 11 9B DD 46 0A 9B DC .....5..t...F...
3CEE:0BF0 76 12 9B DD 1E 65 35 9B EB 1E 90 8D 5E 0A 9A 08 v....e5.....^...
3CEE:0C00 10 EE 3C 8D 5E 12 9A 05 14 EE 3C BB 65 35 BA 8E ..<.^.....<.e5..
3CEE:0C10 4D 8E C2 9A A9 11 EE 3C BA 8E 4D B8 65 35 5F 5E M......<..M.e5_^
3CEE:0C20 5D CB 55 56 57 8B EC 83 EC 04 8D 5E 0A 9A 08 10 ].UVW......^....
3CEE:0C30 EE 3C 9A 42 12 EE 3C 83 C4 04 5F 5E 5D CB       .<.B..<..._^].  

;; fn3CEE_0C3E: 3CEE:0C3E
;;   Called from:
;;     3B5D:0365 (in fn3B5D_0306)
fn3CEE_0C3E proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	sub	sp,2h
	lea	bx,[bp+0Ah]
	call	far 3CEEh:1008h
	call	far 3CEEh:1242h
	add	sp,2h
	pop	di
	pop	si
	pop	bp
	retf

;; fn3CEE_0C5A: 3CEE:0C5A
;;   Called from:
;;     2644:25AA (in fn2644_24C0)
;;     3CEE:515C (in fn3CEE_4EAC)
;;     3CEE:8616 (in fn3CEE_858E)
fn3CEE_0C5A proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	sub	sp,4h
	lea	bx,[bp+0Ah]
	call	far 3CEEh:1008h
	call	far 3CEEh:1242h
	add	sp,4h
	pop	di
	pop	si
	pop	bp
	retf
3CEE:0C76                   55 56 57 8B EC 83 EC 04 8B 46       UVW......F
3CEE:0C80 0A 2B D2 89 46 FC 89 56 FE F7 06 C6 35 FF FF 74 .+..F..V....5..t
3CEE:0C90 0C 9B DB 46 FC 9B DD 1E 65 35 EB 16 90 8D 5E FC ...F....e5....^.
3CEE:0CA0 9A 88 10 EE 3C BB 65 35 BA 8E 4D 8E C2 9A A9 11 ....<.e5..M.....
3CEE:0CB0 EE 3C B8 65 35 BA 8E 4D 83 C4 04 5F 5E 5D CB 55 .<.e5..M..._^].U
3CEE:0CC0 56 57 8B EC F7 06 C6 35 FF FF 74 0C 9B DF 46 0A VW.....5..t...F.
3CEE:0CD0 9B DD 1E 65 35 EB 16 90 8D 5E 0A 9A 8F 10 EE 3C ...e5....^.....<
3CEE:0CE0 BB 65 35 BA 8E 4D 8E C2 9A A9 11 EE 3C B8 65 35 .e5..M......<.e5
3CEE:0CF0 BA 8E 4D 5F 5E 5D CB                            ..M_^].         

;; fn3CEE_0CF7: 3CEE:0CF7
;;   Called from:
;;     3431:170D (in fn3431_1624)
;;     3CEE:38E1 (in fn3CEE_388C)
fn3CEE_0CF7 proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	test	word ptr [35C6h],0FFFFh
	jz	0D11h

l3CEE_0D04:
	wait
	fild	dword ptr [bp+0Ah]
	wait
	fstp	double ptr [3565h]
	wait
	jmp	0D26h
3CEE:0D10 90                                              .               

l3CEE_0D11:
	lea	bx,[bp+0Ah]
	call	far 3CEEh:1088h
	mov	bx,3565h
	mov	dx,4D8Eh
	mov	es,dx
	call	far 3CEEh:11A9h

l3CEE_0D26:
	mov	ax,3565h
	mov	dx,4D8Eh
	pop	di
	pop	si
	pop	bp
	retf

;; fn3CEE_0D30: 3CEE:0D30
;;   Called from:
;;     2644:18EB (in fn2644_17C8)
;;     3CEE:0ECE (in fn3CEE_0EA8)
fn3CEE_0D30 proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	mov	si,[bp+0Eh]
	push	si
	les	di,[bp+0Ah]
	push	es
	push	di
	call	far 38ADh:0118h
	add	sp,6h
	add	di,ax
	sub	si,ax
	push	si
	push	word ptr [bp+0Ch]
	push	di
	call	far 38ADh:014Ah
	add	sp,6h
	cmp	ax,40h
	jbe	0D5Fh

l3CEE_0D5C:
	mov	ax,40h

l3CEE_0D5F:
	or	ax,ax
	jnz	0D69h

l3CEE_0D63:
	mov	si,35D2h
	jmp	0D96h
3CEE:0D68                         90                              .       

l3CEE_0D69:
	mov	dx,ds
	mov	cx,ax
	mov	ds,[bp+0Ch]
	mov	si,di
	mov	es,dx
	mov	di,35DAh
	rep movsb
	mov	ds,dx
	mov	cx,ax
	mov	si,35DAh
	mov	di,35CAh
	push	bp
	sub	ax,ax
	mov	bx,ax
	mov	dx,ax
	call	2C38h
	pop	bp
	mov	dx,4D8Eh
	mov	ds,dx
	mov	si,35CAh

l3CEE_0D96:
	mov	dx,4D8Eh
	mov	es,dx
	mov	ax,3565h
	mov	di,ax
	movsw
	movsw
	movsw
	movsw
	pop	di
	pop	si
	pop	bp
	retf

;; fn3CEE_0DA8: 3CEE:0DA8
;;   Called from:
;;     1825:624E (in fn1825_6168)
;;     2EB3:0691 (in fn2EB3_060C)
;;     3431:194D (in fn3431_1624)
fn3CEE_0DA8 proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	push	ds
	mov	dx,ds
	mov	es,dx
	mov	di,35CAh
	mov	bx,ss
	mov	ds,bx
	lea	bx,[bp+0Ah]
	mov	si,bx
	movsw
	movsw
	movsw
	movsw
	mov	ds,dx
	mov	si,bx
	push	bp
	call	2F84h
	pop	bp
	inc	si
	mov	ax,cx
	sub	ax,dx
	sub	ax,[bp+14h]
	jle	0DF5h

l3CEE_0DD5:
	mov	di,si
	add	di,cx
	sub	di,ax
	cmp	byte ptr [di],35h
	jc	0DF5h

l3CEE_0DE0:
	mov	byte ptr [di],30h
	dec	di
	cmp	di,si
	jc	0DF1h

l3CEE_0DE8:
	cmp	byte ptr [di],39h
	jz	0DE0h

l3CEE_0DED:
	inc	byte ptr [di]
	jmp	0DF5h

l3CEE_0DF1:
	inc	dx
	mov	byte ptr [si],31h

l3CEE_0DF5:
	cmp	bl,2Dh
	mov	bx,1h
	jz	0DFEh

l3CEE_0DFD:
	dec	bx

l3CEE_0DFE:
	mov	ax,dx
	cmp	ax,0h
	jge	0E0Fh

l3CEE_0E05:
	neg	ax
	cmp	ax,[bp+14h]
	jc	0E0Fh

l3CEE_0E0C:
	mov	bx,0h

l3CEE_0E0F:
	mov	ax,[bp+12h]
	sub	ax,bx
	cmp	dx,0h
	jle	0E1Dh

l3CEE_0E19:
	sub	ax,dx
	jmp	0E1Eh

l3CEE_0E1D:
	dec	ax

l3CEE_0E1E:
	cmp	word ptr [bp+14h],0h
	jle	0E28h

l3CEE_0E24:
	dec	ax
	sub	ax,[bp+14h]

l3CEE_0E28:
	les	di,[bp+16h]
	cmp	ax,0h
	jge	0E39h

l3CEE_0E30:
	mov	cx,[bp+12h]
	mov	al,2Ah

l3CEE_0E35:
	rep stosb

l3CEE_0E37:
	jmp	0EA0h

l3CEE_0E39:
	push	cx
	mov	cx,ax
	mov	al,20h

l3CEE_0E3E:
	rep stosb

l3CEE_0E40:
	pop	cx
	or	bx,bx
	jz	0E48h

l3CEE_0E45:
	mov	al,2Dh
	stosb

l3CEE_0E48:
	mov	bx,cx
	cmp	dx,0h
	jle	0E6Bh

l3CEE_0E4F:
	mov	cx,dx
	cmp	cx,bx
	jg	0E5Bh

l3CEE_0E55:
	sub	bx,cx
	rep movsb
	jmp	0E6Eh

l3CEE_0E5B:
	mov	cx,bx
	rep movsb
	mov	cx,dx
	sub	cx,bx
	mov	al,30h

l3CEE_0E65:
	rep stosb

l3CEE_0E67:
	sub	bx,bx
	jmp	0E6Eh

l3CEE_0E6B:
	mov	al,30h
	stosb

l3CEE_0E6E:
	mov	cx,[bp+14h]
	jcxz	0EA0h

l3CEE_0E73:
	mov	al,2Eh
	stosb
	neg	dx
	jle	0E8Ch

l3CEE_0E7A:
	cmp	cx,dx
	jge	0E80h

l3CEE_0E7E:
	mov	dx,cx

l3CEE_0E80:
	sub	cx,dx
	xchg	dx,cx
	mov	al,30h

l3CEE_0E86:
	rep stosb

l3CEE_0E88:
	mov	cx,dx
	jcxz	0EA0h

l3CEE_0E8C:
	cmp	cx,bx
	jg	0E94h

l3CEE_0E90:
	rep movsb
	jmp	0EA0h

l3CEE_0E94:
	sub	cx,bx
	xchg	bx,cx
	rep movsb
	mov	cx,bx
	mov	al,30h

l3CEE_0E9E:
	rep stosb

l3CEE_0EA0:
	mov	al,0h
	stosb
	pop	ds
	pop	di
	pop	si
	pop	bp
	retf

;; fn3CEE_0EA8: 3CEE:0EA8
;;   Called from:
;;     31FF:0D27 (in fn31FF_0C62)
fn3CEE_0EA8 proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	sub	ax,ax
	mov	ax,2Eh
	push	ax
	push	word ptr [bp+0Eh]
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	call	far 2017h:035Bh
	add	sp,8h
	push	ax
	push	word ptr [bp+0Eh]
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	call	far 3CEEh:0D30h
	add	sp,6h
	push	ds
	mov	ds,dx
	mov	si,ax
	les	di,[bp+10h]
	movsw
	movsw
	movsw
	movsw
	pop	ds
	pop	bx
	mov	ax,[bp+0Eh]
	les	di,[bp+14h]
	mov	es:[di],ax
	sub	ax,bx
	jz	0EF2h

l3CEE_0EF1:
	dec	ax

l3CEE_0EF2:
	les	di,[bp+18h]
	mov	es:[di],ax
	pop	di
	pop	si
	pop	bp
	retf

;; fn3CEE_0EFC: 3CEE:0EFC
;;   Called from:
;;     1825:42A1 (in fn1825_3EE6)
;;     1825:432E (in fn1825_3EE6)
;;     1825:6212 (in fn1825_6168)
;;     20B2:01A4 (in fn20B2_0176)
;;     2EB3:06C5 (in fn2EB3_060C)
fn3CEE_0EFC proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	cld
	mov	bx,[bp+0Eh]
	mov	dx,[bp+10h]
	mov	cx,ds
	mov	es,cx
	mov	di,35DAh
	mov	si,dx
	or	dx,dx
	jns	0F1Ch

l3CEE_0F15:
	neg	bx
	adc	dx,0h
	neg	dx

l3CEE_0F1C:
	mov	cx,0Ah

l3CEE_0F1F:
	xchg	dx,ax
	xor	dx,dx
	or	ax,ax

;; fn3CEE_0F24: 3CEE:0F24
;;   Called from:
;;     3CEE:0F22 (in fn3CEE_0F28)
;;     3CEE:8A74 (in fn3CEE_8A23)
fn3CEE_0F24 proc
	jz	0F28h

;; fn3CEE_0F26: 3CEE:0F26
;;   Called from:
;;     3CEE:0F24 (in fn3CEE_0F24)
;;     3CEE:0F24 (in fn3CEE_0F24)
fn3CEE_0F26 proc
	div	cx

;; fn3CEE_0F28: 3CEE:0F28
;;   Called from:
;;     3CEE:0F1C (in fn3CEE_0EFC)
;;     3CEE:0F24 (in fn3CEE_0F24)
;;     3CEE:0F24 (in fn3CEE_0F24)
;;     3CEE:0F26 (in fn3CEE_0F26)
;;     3CEE:0F26 (in fn3CEE_0F26)
fn3CEE_0F28 proc
	xchg	bx,ax
	div	cx
	xchg	dx,ax
	xchg	bx,dx
	add	al,30h
	stosb
	mov	ax,dx
	or	ax,bx
	jnz	0F1Fh

l3CEE_0F37:
	or	si,si
	jns	0F3Eh

l3CEE_0F3B:
	mov	al,2Dh
	stosb

l3CEE_0F3E:
	mov	cx,[bp+12h]
	mov	bx,di
	sub	bx,35DAh
	mov	dx,[bp+14h]
	or	dx,dx
	jz	0F4Fh

l3CEE_0F4E:
	inc	dx

l3CEE_0F4F:
	mov	si,dx
	add	si,bx
	cmp	cx,si
	jge	0F65h

l3CEE_0F57:
	les	di,[bp+0Ah]
	mov	al,2Ah

l3CEE_0F5C:
	rep stosb

l3CEE_0F5E:
	mov	byte ptr es:[di],0h
	jmp	0F94h
3CEE:0F64             90                                      .           

l3CEE_0F65:
	std
	les	di,[bp+0Ah]
	add	di,cx
	mov	al,0h
	stosb
	or	dx,dx
	jz	0F80h

l3CEE_0F72:
	sub	cx,dx
	xchg	dx,cx
	dec	cx
	mov	al,30h

l3CEE_0F79:
	rep stosb

l3CEE_0F7B:
	mov	al,2Eh
	stosb
	mov	cx,dx

l3CEE_0F80:
	sub	cx,bx
	xchg	bx,cx
	mov	si,35DAh

l3CEE_0F87:
	cld
	lodsb
	std
	stosb
	loop	0F87h

l3CEE_0F8D:
	mov	cx,bx
	mov	al,20h

l3CEE_0F91:
	rep stosb

l3CEE_0F93:
	cld

l3CEE_0F94:
	pop	di
	pop	si
	pop	bp
	retf
3CEE:0F98                         8C D0 8E C0 56 57 8B F3         ....VW..
3CEE:0FA0 8B 1E 36 38 83 C3 0C 8B FB 8C C0 8C D9 8E C1 8E ..68............
3CEE:0FB0 D8 FC A5 A5 8E D9 8B F3 EB 16 56 57 8B F3 8B 1E ..........VW....
3CEE:0FC0 36 38 83 C3 0C 8B FB 8C D9 8E C1 FC A5 A5 8B F3 68..............
3CEE:0FD0 81 FB 22 38 74 4E 89 1E 36 38 89 77 FC C6 47 FE .."8tN..68.w..G.
3CEE:0FE0 03 5F 5E CB 8C D0 8E C0 56 57 8B F3 8B 1E 36 38 ._^.....VW....68
3CEE:0FF0 83 C3 0C 8B FB 8C C0 8C D9 8E C1 8E D8 FC A5 A5 ................
3CEE:1000 A5 A5 8E D9 8B F3 EB 18                         ........        

;; fn3CEE_1008: 3CEE:1008
;;   Called from:
;;     3CEE:0C49 (in fn3CEE_0C3E)
;;     3CEE:0C65 (in fn3CEE_0C5A)
;;     400D:000C (in fn400D_0006)
;;     400D:0014 (in fn400D_0006)
;;     400D:009C (in fn400D_0096)
;;     400D:00A4 (in fn400D_0096)
;;     400D:00E5 (in fn400D_00DE)
;;     400D:00ED (in fn400D_00DE)
;;     400D:0109 (in fn3CEE_32F9)
;;     3CEE:32F9 (in fn3CEE_32F9)
;;     400D:0111 (in fn3CEE_32F9)
;;     3CEE:3301 (in fn3CEE_32F9)
;;     400D:0184 (in fn400D_017E)
fn3CEE_1008 proc
	push	si
	push	di
	mov	si,bx

;; fn3CEE_100C: 3CEE:100C
;;   Called from:
;;     3CEE:100A (in fn3CEE_1008)
;;     3CEE:8A74 (in fn3CEE_8A23)
fn3CEE_100C proc
	mov	bx,[3836h]
	add	bx,0Ch
	mov	di,bx
	mov	cx,ds
	mov	es,cx
	cld
	movsw
	movsw
	movsw
	movsw
	mov	si,bx
	cmp	bx,3822h
	jz	1034h

l3CEE_1026:
	mov	[3836h],bx
	mov	byte ptr [bx-2h],7h
	mov	[bx-4h],si
	pop	di
	pop	si
	retf

;; fn3CEE_1034: 3CEE:1034
;;   Called from:
;;     3CEE:1024 (in fn3CEE_100C)
;;     3CEE:1024 (in fn3CEE_100C)
;;     3CEE:10CE (in fn3CEE_1088)
fn3CEE_1034 proc
	jmp	1563h
3CEE:1037                      56 57 8C D0 EB 04 56 57 8C        VW....VW.
3CEE:1040 D8 8C D9 8E C1 8E D8 FC 8B F3 8B 1E 36 38 83 C3 ............68..
3CEE:1050 0C 8B FB AD 88 45 FE A5 A5 3C 03 74 02 A5 A5 81 .....E...<.t....
3CEE:1060 FB 22 38 74 CF 89 1E 36 38 89 5F FC 8E D9 5F 5E ."8t...68._..._^
3CEE:1070 CB 8C D0 8E C0 26 8B 07 26 8B 57 02 EB 14 8C D0 .....&..&.W.....
3CEE:1080 8E C0 26 8B 07 99 EB 0A                         ..&.....        

;; fn3CEE_1088: 3CEE:1088
;;   Called from:
;;     3CEE:0D14 (in fn3CEE_0CF7)
fn3CEE_1088 proc
	mov	ax,[bx]
	mov	dx,[bx+2h]
	jmp	1092h
3CEE:108F                                              8B                .
3CEE:1090 07 99                                           ..              

l3CEE_1092:
	push	si
	push	di
	mov	bx,dx
	mov	dx,ax
	mov	al,bh
	and	al,80h
	jns	10A5h

l3CEE_109E:
	neg	bx
	neg	dx
	sbb	bx,0h

l3CEE_10A5:
	mov	di,[3836h]
	add	di,0Ch
	cmp	di,3822h
	jz	10CEh

l3CEE_10B2:
	mov	[3836h],di
	mov	[di-4h],di
	mov	cx,ds
	mov	es,cx
	cmp	bh,0h
	jnz	10D1h

l3CEE_10C2:
	mov	byte ptr [di-2h],3h
	mov	ah,9Eh
	call	1CBAh
	pop	di
	pop	si
	retf

l3CEE_10CE:
	jmp	1034h

l3CEE_10D1:
	mov	byte ptr [di-2h],7h
	push	bp
	mov	bp,8760h
	mov	cx,bx
	xor	bx,bx
	mov	di,bx
	call	2031h
	pop	bp
	pop	di
	pop	si
	retf
3CEE:10E6                   56 57 8C D8 8E C0 8B 3E 36 38       VW.....>68
3CEE:10F0 8B 75 FC 8A 45 FE 83 C7 0C 81 FF 22 38 74 B1 89 .u..E......"8t..
3CEE:1100 3E 36 38 89 7D FC 88 45 FE FC A5 A5 3C 03 74 02 >68.}..E....<.t.
3CEE:1110 A5 A5 5F 5E CB 56 57 8B 3E 36 38 83 C7 0C 81 FF .._^.VW.>68.....
3CEE:1120 22 38 74 8C 89 3E 36 38 89 7D FC C6 45 FE 03 8C "8t..>68.}..E...
3CEE:1130 D8 8E C0 33 C0 FC AB AB 5F 5E CB 8C D0 EB 02 8C ...3...._^......
3CEE:1140 D8 8E C0 56 57 8B FB FC 8B 1E 36 38 83 06 36 38 ...VW.....68..68
3CEE:1150 0C EB 11 8C D0 EB 02 8C D8 8E C0 56 57 8B FB FC ...........VW...
3CEE:1160 8B 1E 36 38 80 7F FE 03 75 0D 8B 77 FC A5 A5 83 ..68....u..w....
3CEE:1170 2E 36 38 0C 5F 5E CB 55 89 26 B2 36 8B 77 FC 57 .68._^.U.&.6.w.W
3CEE:1180 E8 C4 06 5F 8B DE 5D EB E4 8C D0 EB 02 8C D8 8E ..._..].........
3CEE:1190 C0 56 57 8B FB FC 8B 1E 36 38 83 06 36 38 0C EB .VW.....68..68..
3CEE:11A0 11 8C D0 EB 02 8C D8 8E C0                      .........       

;; fn3CEE_11A9: 3CEE:11A9
;;   Called from:
;;     3CEE:0BCE (in fn3CEE_8634)
;;     3CEE:0D21 (in fn3CEE_0CF7)
;;     400D:0196 (in fn400D_017E)
fn3CEE_11A9 proc
	push	si
	push	di
	mov	di,bx
	cld
	mov	bx,[3836h]
	cmp	byte ptr [bx-2h],7h
	jnz	11C7h

l3CEE_11B8:
	mov	si,[bx-4h]

l3CEE_11BB:
	movsw
	movsw
	movsw
	movsw
	sub	word ptr [3836h],0Ch
	pop	di
	pop	si
	retf

l3CEE_11C7:
	xchg	di,bx
	call	160Fh
	mov	si,di
	xchg	di,bx
	jmp	11BBh
3CEE:11D2       8C D0 EB 02 8C D8 8E C0 56 57 8B FB 8B 1E   ........VW....
3CEE:11E0 36 38 83 06 36 38 0C EB 10 8C D0 EB 02 8C D8 8E 68..68..........
3CEE:11F0 C0 56 57 8B FB 8B 1E 36 38 8B F3 8A 47 FE 83 2E .VW....68...G...
3CEE:1200 36 38 0C FC AB A5 A5 3C 03 74 02 A5 A5 5F 5E CB 68.....<.t..._^.
3CEE:1210 B8 33 19 BA 3D 19 EB 3A B8 61 19 BA 66 19 EB 32 .3..=..:.a..f..2
3CEE:1220 B8 90 19 BA 95 19 EB 2A E8 BE 07 EB 04 90 E8 83 .......*........
3CEE:1230 07 50 8A 26 A8 36 9E 58 73 07 F7 D8 83 D2 00 F7 .P.&.6.Xs.......
3CEE:1240 DA C3                                           ..              

;; fn3CEE_1242: 3CEE:1242
;;   Called from:
;;     3CEE:0C4E (in fn3CEE_0C3E)
;;     3CEE:0C6A (in fn3CEE_0C5A)
fn3CEE_1242 proc
	call	far 3CEEh:127Bh
	lahf
	mov	[36A8h],ah
	mov	ax,1228h
	mov	dx,122Eh
	push	si
	push	di
	push	bp
	mov	[36B2h],sp
	push	bx
	push	cx
	mov	si,[3836h]
	sub	si,0Ch
	mov	[3836h],si
	cmp	byte ptr [si+0Ah],3h
	mov	si,[si+8h]
	jnz	1273h

l3CEE_126F:
	call	ax
	jmp	1275h

l3CEE_1273:
	call	dx

l3CEE_1275:
	pop	cx
	pop	bx
	pop	bp
	pop	di
	pop	si
	retf

;; fn3CEE_127B: 3CEE:127B
;;   Called from:
;;     3CEE:1242 (in fn3CEE_1242)
fn3CEE_127B proc
	push	di
	mov	di,[3836h]
	mov	bl,[di-2h]
	xor	bh,bh
	test	byte ptr [bx+di],7Fh
	jnz	129Dh

l3CEE_128A:
	cmp	bl,3h
	jz	1297h

l3CEE_128F:
	test	byte ptr [bx+di-1h],0F0h
	jnz	129Dh

l3CEE_1295:
	pop	di
	retf

l3CEE_1297:
	test	byte ptr [bx+di-1h],80h
	jz	1295h

l3CEE_129D:
	test	byte ptr [bx+di],80h
	pop	di
	jnz	12A6h

l3CEE_12A3:
	or	sp,sp
	retf

l3CEE_12A6:
	stc
	retf
3CEE:12A8                         57 8B 3E 36 38 8A 5D FE         W.>68.].
3CEE:12B0 32 FF 80 21 7F 5F CB                            2..!._.         

;; fn3CEE_12B7: 3CEE:12B7
;;   Called from:
;;     400D:0189 (in fn400D_017E)
fn3CEE_12B7 proc
	push	si
	push	di
	mov	di,[3836h]
	mov	bl,[di-2h]
	mov	si,[di-4h]
	cmp	si,di
	jnz	12CFh

l3CEE_12C7:
	xor	bh,bh
	xor	byte ptr [bx+di],80h
	pop	di
	pop	si
	retf

l3CEE_12CF:
	mov	[di-4h],di
	mov	cx,ds
	mov	es,cx
	cld
	movsw
	cmp	bl,3h
	jnz	12E5h

l3CEE_12DD:
	lodsw
	xor	ah,80h
	stosw
	pop	di
	pop	si
	retf

l3CEE_12E5:
	movsw
	movsw
	lodsw
	xor	ah,80h
	stosw
	pop	di
	pop	si
	retf
3CEE:12EF                                              56                V
3CEE:12F0 57 8C D0 8E C0 EB 02 56 57 E8 E5 02 EB 04 56 57 W......VW.....VW
3CEE:1300 8B F3 B8 08 00 EB 76 56 57 8C D0 8E C0 EB 02 56 ......vVW......V
3CEE:1310 57 E8 CD 02 EB 04 56 57 8B F3 B8 04 00 EB 5E 56 W.....VW......^V
3CEE:1320 57 8C D0 8E C0 EB 02 56 57 E8 B5 02 EB 04 56 57 W......VW.....VW
3CEE:1330 8B F3 B8 0C 00 EB 46 56 57 8C D0 8E C0 EB 02 56 ......FVW......V
3CEE:1340 57 E8 9D 02 EB 04 56 57 8B F3 B8 14 00 EB 2E 56 W.....VW.......V
3CEE:1350 57 8C D0 8E C0 EB 02 56 57 E8 85 02 EB 04 56 57 W......VW.....VW
3CEE:1360 8B F3 B8 10 00 EB 16 56 57 8C D0 8E C0 EB 02 56 .......VW......V
3CEE:1370 57 E8 6D 02 EB 04 56 57 8B F3 B8 00 00 8B D8 8B W.m...VW........
3CEE:1380 3E 36 38 8C D9 8E C1 80 7D FE 07 74 10 87 7D FC >68.....}..t..}.
3CEE:1390 55 89 26 B2 36 FF 97 8C 36 5D 5F 5E CB 83 C3 02 U.&.6...6]_^....
3CEE:13A0 BF B8 36 E8 78 02 8B F7 8B 3E 36 38 EB DF 56 57 ..6.x....>68..VW
3CEE:13B0 8C D0 8E C0 EB 02 56 57 E8 3C 02 EB 04 56 57 8B ......VW.<...VW.
3CEE:13C0 F3 B8 0A 00 EB 76 56 57 8C D0 8E C0 EB 02 56 57 .....vVW......VW
3CEE:13D0 E8 24 02 EB 04 56 57 8B F3 B8 06 00 EB 5E 56 57 .$...VW......^VW
3CEE:13E0 8C D0 8E C0 EB 02 56 57 E8 0C 02 EB 04 56 57 8B ......VW.....VW.
3CEE:13F0 F3 B8 0E 00 EB 46 56 57 8C D0 8E C0 EB 02 56 57 .....FVW......VW
3CEE:1400 E8 F4 01 EB 04 56 57 8B F3 B8 16 00 EB 2E 56 57 .....VW.......VW
3CEE:1410 8C D0 8E C0 EB 02 56 57 E8 DC 01 EB 04 56 57 8B ......VW.....VW.
3CEE:1420 F3 B8 12 00 EB 16 56 57 8C D0 8E C0 EB 02 56 57 ......VW......VW
3CEE:1430 E8 C4 01 EB 04 56 57 8B F3 B8 02 00 8B D8 8B 3E .....VW........>
3CEE:1440 36 38 8C D9 8E C1 80 7D FE 07 74 05 56 E8 BF 01 68.....}..t.V...
3CEE:1450 5E E9 39 FF BB 04 00 EB 21 BB 08 00 EB 1C BB 0C ^.9.....!.......
3CEE:1460 00 EB 17 BB 10 00 EB 12 BB 14 00 EB 0D BB 00 00 ................
3CEE:1470 EB 08                                           ..              

;; fn3CEE_1472: 3CEE:1472
;;   Called from:
;;     400D:0019 (in fn400D_0006)
;;     400D:00A9 (in fn400D_0096)
;;     400D:00F2 (in fn400D_00DE)
;;     400D:0116 (in fn3CEE_32F9)
;;     3CEE:3306 (in fn3CEE_32F9)
fn3CEE_1472 proc
	mov	bx,1Ch
	jmp	147Ah
3CEE:1477                      BB 18 00                          ...      

l3CEE_147A:
	push	si
	push	di
	mov	di,[3836h]
	cmp	byte ptr [di-2h],7h
	jz	14BFh

l3CEE_1486:
	cmp	byte ptr [di-0Eh],7h
	jz	14B7h

l3CEE_148C:
	sub	di,0Ch
	mov	[3836h],di

l3CEE_1493:
	mov	ax,ds
	mov	es,ax
	mov	si,[di-4h]
	mov	[di-4h],di
	mov	di,[di+8h]
	cmp	bx,1Ch
	jnc	14D4h

l3CEE_14A5:
	cmp	bx,18h
	jnc	14E2h

l3CEE_14AA:
	push	bp
	mov	[36B2h],sp
	call	word ptr [bx+368Ch]
	pop	bp
	pop	di
	pop	si
	retf

l3CEE_14B7:
	add	bx,2h
	call	160Fh
	jmp	148Ch

l3CEE_14BF:
	add	bx,2h
	cmp	byte ptr [di-0Eh],7h
	jz	148Ch

l3CEE_14C8:
	sub	di,0Ch
	mov	[3836h],di
	call	160Fh
	jmp	1493h

l3CEE_14D4:
	xchg	di,si
	sub	word ptr [3836h],0Ch
	call	word ptr [bx+3688h]
	pop	di
	pop	si
	retf

l3CEE_14E2:
	sub	word ptr [3836h],0Ch
	call	word ptr [bx+368Ch]
	lahf
	and	ax,4100h
	shr	ax,1h
	shl	ah,1h
	or	ah,al
	pop	di
	pop	si
	sahf
	retf
3CEE:14F9                            D0 E3 D0 E3 8A FB D0          .......
3CEE:1500 E7 02 DF 32 FF EB 03 BB 0C 00 56 57 8C D8 8E C0 ...2......VW....
3CEE:1510 FC 8B 36 36 38 4E 4E 8B FE 2B FB B9 05 00 AD 87 ..668NN..+......
3CEE:1520 05 89 44 FE 8B 1D 47 47 E2 F4 5F 5E CB 55 8B EC ..D...GG.._^.U..
3CEE:1530 56 57 8B 3E 36 38 80 7D FE 07 74 03 E8 D0 00 5F VW.>68.}..t...._
3CEE:1540 5E 8B E5 5D CB                                  ^..].           

;; fn3CEE_1545: 3CEE:1545
;;   Called from:
;;     3CEE:1CA3 (in fn3CEE_1C0E)
;;     3CEE:1D47 (in fn3CEE_1D47)
;;     3CEE:1FF9 (in fn3CEE_1F11)
;;     3CEE:20E8 (in fn3CEE_20E8)
fn3CEE_1545 proc
	mov	word ptr [36AEh],3430h
	mov	al,84h
	jmp	156Bh

;; fn3CEE_154F: 3CEE:154F
;;   Called from:
;;     3CEE:1E3E (in fn3CEE_1DD0)
;;     3CEE:2163 (in fn3CEE_2168)
fn3CEE_154F proc
	mov	word ptr [36AEh],3330h
	mov	al,83h
	jmp	156Bh

l3CEE_1559:
	mov	word ptr [36AEh],3130h
	mov	al,81h
	jmp	156Bh

l3CEE_1563:
	mov	word ptr [36AEh],3031h
	mov	al,8Ah

;; fn3CEE_156B: 3CEE:156B
;;   Called from:
;;     3CEE:154D (in fn3CEE_1545)
;;     3CEE:1557 (in fn3CEE_154F)
;;     3CEE:1561 (in fn3CEE_1761)
;;     3CEE:1569 (in fn3CEE_1034)
fn3CEE_156B proc
	cmp	word ptr [36B6h],0h
	jz	1576h

;; fn3CEE_1572: 3CEE:1572
;;   Called from:
;;     3CEE:1570 (in fn3CEE_156B)
;;     3CEE:1570 (in fn3CEE_156B)
fn3CEE_1572 proc
	call	dword ptr [36B4h]

;; fn3CEE_1576: 3CEE:1576
;;   Called from:
;;     3CEE:1570 (in fn3CEE_156B)
;;     3CEE:1570 (in fn3CEE_156B)
;;     3CEE:1572 (in fn3CEE_1572)
fn3CEE_1576 proc
	cmp	al,8Ch
	jnz	1580h

l3CEE_157A:
	mov	word ptr [36AEh],3231h

l3CEE_1580:
	sub	ah,ah
	mov	[36B0h],ax
	call	far 3CEEh:0244h
	mov	bx,36AAh
	call	far 3CEEh:3182h
	mov	ax,0FDh
	push	ax
	call	far 3CEEh:02B9h
	mov	ax,[36B0h]
	add	ax,0FFE4h
	push	ax
	call	far 3CEEh:02B9h
	push	word ptr [36B0h]
	call	far 3CEEh:01A0h
	ret
3CEE:15B1    8B C8 8C D8 90 45 55 8B EC 1E 8E D8 83 FB 03  .....EU........
3CEE:15C0 77 15 74 09 36 C7 06 36 38 C6 36 EB 0A 36 89 0E w.t.6..68.6..6..
3CEE:15D0 B4 36 36 89 16 B6 36 F8 83 ED 02 8B E5 1F 5D 4D .66...6.......]M
3CEE:15E0 CB 8B F3 BF B8 36 8C C0 8C D9 8E C1 8E D8 FC A5 .....6..........
3CEE:15F0 A5 8E D9 BE B8 36 C3 8B F3 BF B8 36 8C C0 8C D9 .....6.....6....
3CEE:1600 8E C1 8E D8 FC A5 A5 A5 A5 8E D9 BE B8 36 C3    .............6. 

;; fn3CEE_160F: 3CEE:160F
;;   Called from:
;;     3CEE:11C9 (in fn3CEE_11A9)
;;     3CEE:14BA (in fn3CEE_1472)
;;     3CEE:14CF (in fn3CEE_1472)
fn3CEE_160F proc
	mov	si,[di-4h]
	mov	[di-4h],di
	mov	byte ptr [di-2h],7h
	jmp	161Eh
3CEE:161B                                  8B 75 FC                  .u.  

l3CEE_161E:
	cld
	xor	ax,ax
	mov	cx,[si]
	mov	dx,[si+2h]
	test	dx,7F80h
	jz	1651h

l3CEE_162C:
	mov	[di],ax
	sar	dx,1h
	rcr	cx,1h
	rcr	ax,1h
	sar	dx,1h
	rcr	cx,1h
	rcr	ax,1h
	sar	dx,1h
	rcr	cx,1h
	rcr	ax,1h
	mov	[di+2h],ax
	mov	[di+4h],cx
	and	dh,8Fh
	add	dx,3800h
	mov	[di+6h],dx
	ret

l3CEE_1651:
	mov	[di],ax
	mov	[di+2h],ax
	mov	[di+4h],ax
	mov	[di+6h],ax
	ret
3CEE:165D                                        55 8B EC              U..
3CEE:1660 56 57 FC 1E 07 8D 76 0E BF 46 38 36 A5 36 A5 36 VW....v..F86.6.6
3CEE:1670 A5 36 A5 EB 08 55 8B EC 56 57 FC 1E 07 8D 76 06 .6...U..VW....v.
3CEE:1680 BF 3E 38 36 A5 36 A5 36 A5 36 A5                .>86.6.6.6.     

l3CEE_168B:
	mov	si,383Eh
	mov	di,3846h
	push	word ptr [3836h]
	mov	word ptr [3836h],384Eh
	push	bx
	push	bp
	call	dx
	pop	bp
	pop	bx
	pop	word ptr [3836h]
	jc	16B2h

l3CEE_16A7:
	mov	ax,384Eh
	mov	dx,ds
	pop	di
	pop	si
	mov	sp,bp
	pop	bp
	retf

l3CEE_16B2:
	xor	cx,cx
	mov	cl,al
	mov	[383Ah],bx
	mov	[383Ch],ds
	mov	byte ptr [3865h],0h
	cmp	ax,302h
	jnz	16CDh

l3CEE_16C8:
	mov	byte ptr [3865h],1h

l3CEE_16CD:
	mov	di,384Eh
	cmp	ah,3h
	jz	16E7h

l3CEE_16D5:
	cmp	al,7h
	jz	16E5h

l3CEE_16D9:
	cmp	al,3h
	jz	16F5h

l3CEE_16DD:
	xor	ax,ax
	stosw
	stosw
	stosw
	stosw
	jmp	16FCh

l3CEE_16E5:
	mov	cl,3h

l3CEE_16E7:
	mov	si,3682h
	movsw
	movsw
	movsw
	movsw
	or	byte ptr [3855h],80h
	jmp	16FCh

l3CEE_16F5:
	mov	si,3682h
	movsw
	movsw
	movsw
	movsw

l3CEE_16FC:
	mov	[3838h],cx
	mov	si,cx
	push	ds
	mov	ax,3838h
	push	ax
	call	far 3CEEh:0ADEh
	add	sp,4h
	or	ax,ax
	jnz	16A7h

l3CEE_1713:
	mov	al,21h
	cmp	byte ptr [3865h],0h
	jnz	1723h

l3CEE_171C:
	cmp	word ptr [3838h],3h
	jc	1725h

l3CEE_1723:
	mov	al,22h

l3CEE_1725:
	cbw
	mov	[356Dh],ax
	shl	si,1h
	mov	si,[si+3854h]
	or	si,si
	jz	174Bh

l3CEE_1733:
	mov	bx,[383Ah]
	dec	bx
	call	far 3CEEh:3182h
	mov	bx,3862h
	call	far 3CEEh:3182h
	push	si
	call	far 3CEEh:02B9h

l3CEE_174B:
	jmp	16A7h

l3CEE_174E:
	test	bx,7F80h
	jz	17A0h

l3CEE_1754:
	rcl	bx,1h
	cmc
	ret

l3CEE_1758:
	jmp	1559h

l3CEE_175B:
	or	ah,7Fh
	shl	ah,1h
	ret

;; fn3CEE_1761: 3CEE:1761
;;   Called from:
;;     3CEE:14D6 (in fn3CEE_1472)
;;     3CEE:14E2 (in fn3CEE_1472)
fn3CEE_1761 proc
	mov	ax,[si+2h]
	mov	bx,es:[di+2h]
	test	ax,7F80h
	jz	174Eh

l3CEE_176D:
	not	ax
	test	ax,7F80h
	not	ax
	jz	1758h

l3CEE_1776:
	not	bx
	test	bx,7F80h
	not	bx
	jz	1758h

l3CEE_1780:
	mov	ch,ah
	xor	ch,bh
	js	175Bh

l3CEE_1786:
	shl	bx,1h
	shl	ax,1h
	jnc	1797h

l3CEE_178C:
	xchg	bx,ax
	xchg	di,si
	mov	dx,es
	mov	cx,ds
	mov	es,cx
	mov	ds,dx

l3CEE_1797:
	cmp	ax,bx
	jnz	17A0h

l3CEE_179B:
	mov	ax,[si]
	cmp	ax,es:[di]

l3CEE_17A0:
	ret
3CEE:17A1    F7 C3 F0 7F 74 5E D1 D3 F5 C3 E9 AB FD 80 CC  ....t^.........
3CEE:17B0 7F D0 E4 C3 8B 44 06 26 8B 5D 06 A9 F0 7F 74 E1 .....D.&.]....t.
3CEE:17C0 F7 D0 A9 F0 7F F7 D0 74 E2 F7 D3 F7 C3 F0 7F F7 .......t........
3CEE:17D0 D3 74 D8 8A EC 32 EF 78 D5 D1 E3 D1 E0 73 0B 93 .t...2.x.....s..
3CEE:17E0 87 F7 8C C2 8C D9 8E C1 8E DA 3B C3 75 17 8B 44 ..........;.u..D
3CEE:17F0 04 26 3B 45 04 75 0E 8B 44 02 26 3B 45 02 75 05 .&;E.u..D.&;E.u.
3CEE:1800 8B 04 26 3B 05 C3 8B 3E 36 38 FC 8B 0C 8B 54 02 ..&;...>68....T.
3CEE:1810 33 C0 F7 C2 80 7F 74 29 D1 FA D1 D9 D1 D8 D1 FA 3.....t)........
3CEE:1820 D1 D9 D1 D8 D1 FA D1 D9 D1 D8 80 E6 8F 81 C2 00 ................
3CEE:1830 38 C7 05 00 00 89 45 02 89 4D 04 89 55 06 8B F7 8.....E..M..U...
3CEE:1840 C3 8B C8 8A D0 EB EA 8B 3E 36 38 FC AD 8B C8 AD ........>68.....
3CEE:1850 0A C8 8A D4 AD 8A F0 8A DC AD 8A F8 D1 E2 D1 D3 ................
3CEE:1860 D1 E2 D1 D3 D1 E2 D1 D3 0A CD 74 03 80 CA 01 B1 ..........t.....
3CEE:1870 80 0A F9 8A EC 22 E9 25 F0 7F 3D E0 47 77 3D 2D .....".%..=.Gw=-
3CEE:1880 00 38 72 3B D1 E0 D1 E0 D1 E0 3A D1 77 07 72 15 .8r;......:.w.r.
3CEE:1890 F6 C6 01 74 10 80 C6 01 83 D3 00 73 08 05 80 00 ...t.......s....
3CEE:18A0 3D 80 7F 74 17 0B C0 74 16 80 E7 7F 0A C7 0A E5 =..t...t........
3CEE:18B0 89 45 02 8A E3 8A C6 89 05 8B F7 C3 E9 86 FC 33 .E.............3
3CEE:18C0 C0 89 05 89 45 02 8B F7 C3 33 D2 8B DA 8B       ....E....3....  
l3CEE_18CE	dw	0x8BD0
l3CEE_18D0	dw	0xEBC3
l3CEE_18D2	dw	0x8B1D
l3CEE_18D4	dw	0x33D0
l3CEE_18D6	dw	0x0BDB
l3CEE_18D8	dw	0x79D2
l3CEE_18DA	dw	0xF715
3CEE:18DC                                     DA EB 11 8B             ....
3CEE:18E0 DA 8B D0 8B C3 0B C0 79 07 F7 DB F7 DA 83 DB 00 .......y........
3CEE:18F0 8A C4 24 80 B4 9E E9 C1 03 33 D2 8B DA 8B C8 8B ..$......3......
3CEE:1900 C3 EB 1D 8B C8 33 DB 0B C9 79 15 F7 D9 EB 11 8B .....3...y......
3CEE:1910 DA 8B C8 8B C3 0B C0 79 07 F7 DB F7 D9 83 DB 00 .......y........
3CEE:1920 8A C4 24 80 33 FF 33 D2 BD 60 85 E9 03 07 E8 3A ..$.3.3..`.....:
3CEE:1930 00 EB 0D E8 2B 00 EB 08 E8 35 00 EB 03 E8 26 00 ....+....5....&.
3CEE:1940 D1 C0 83 D2 00 75 67 D1 C8 C3 E8 9C 00 EB 0D E8 .....ug.........
3CEE:1950 3E 00 EB 08 E8 5D 00 EB 03 E8 39 00 0B D2 75 4E >....]....9...uN
3CEE:1960 C3 E8 2C 00 EB 0D E8 2C 00 EB 08 E8 7B 00 EB 03 ..,....,....{...
3CEE:1970 E8 41 00 33 C9 0B FF 79 0D F7 D1 F7 D2 F7 D8 F5 .A.3...y........
3CEE:1980 83 D2 00 83 D1 00 D1 C2 83 D1 00 75 21 D1 CA C3 ...........u!...
3CEE:1990 E8 56 00 EB 03 E8 1C 00 33 DB B5 01 22 E8 0A CD .V......3..."...
3CEE:19A0 80 F9 81 F5 13 DB 13 C3 83 D2 00 72 01 C3 E9 94 ...........r....
3CEE:19B0 FB E9 A5 00 AD 92 0A D6 AD 93 AD 91 AD 91 83 EE ................
3CEE:19C0 08 8B F9 B6 0F 22 F1 80 CE 10 80 E5 7F D1 E9 D1 ....."..........
3CEE:19D0 E9 D1 E9 D1 E9 0B C9 74 D8 81 E9 FE 03 72 79 83 .......t.....ry.
3CEE:19E0 F9 20 7F CA 83 E9 25 EB 30 33 D2 8A DA AC 8A F8 . ....%.03......
3CEE:19F0 AD 8A C8 AC 86 C1 83 EE 04 8A E9 8B F9 81 E1 7F ................
3CEE:1A00 00 D0 E4 D0 D1 F9 D0 DC 0B C9 74 4D 80 E9 7E 72 ..........tM..~r
3CEE:1A10 47 83 F9 20 7F 98 83 E9 20 F7 D9 80 F9 08 7C 1A G.. .... .....|.
3CEE:1A20 80 FA 01 F5 D0 D2 80 E2 01 0A D3 8A DF 8A F8 8A ................
3CEE:1A30 C4 8A E6 32 F6 80 E9 08 EB E1 E3 15 80 FA 01 B2 ...2............
3CEE:1A40 01 80 DA 00 D0 EE D1 D8 D1 DB D0 DA 80 D2 00 E2 ................
3CEE:1A50 F3 8A CA 8B D0 8B C3 C3 F9 B1 00 80 D1 00 33 C0 ..............3.
3CEE:1A60 8B D0 C3 E9 DF FA E8 68 00 B0 07 E8 35 01 8B 36 .......h....5..6
3CEE:1A70 36 38 03 7C 06 83 EF 10 8B D7 80 E6 7F 81 FA F0 68.|............
3CEE:1A80 7F 73 E0 89 7C 06 8B FE C3 E9 B9 FA E8 89 00 B0 .s..|...........
3CEE:1A90 03 E8 0F 01 8B 36 36 38 03 7C 02 81 EF 80 00 8B .....668.|......
3CEE:1AA0 D7 80 E6 7F 81 FA 80 7F 73 DF 89 7C 02 8B FE C3 ........s..|....
3CEE:1AB0 E8 1E 00 8B 36 36 38 83 EF 10 01 7C 06 8B FE C3 ....668....|....
3CEE:1AC0 E8 55 00 8B 36 36 38 81 EF 80 00 01 7C 02 8B FE .U..668.....|...
3CEE:1AD0 C3 FC 8B 3E 36 38 8C C0 8C D9 8E C1 A5 A5 A5 A5 ...>68..........
3CEE:1AE0 8E C0 8B 36 36 38 BA 10 00 8B 4C 06 8B F9 81 E1 ...668....L.....
3CEE:1AF0 0F 00 0A CA 89 4C 06 81 E7 F0 FF 8B CF 80 E5 7F .....L..........
3CEE:1B00 B8 35 00 D1 E9 D1 E9 D1 E9 D1 E9 81 E9 33 04 7D .5...........3.}
3CEE:1B10 04 F7 D9 EB 41 E9 84 00 FC 8B 3E 36 38 8C C0 8C ....A.....>68...
3CEE:1B20 D9 8E C1 A5 A5 8E C0 8B 36 36 38 BA 80 00 8B 4C ........668....L
3CEE:1B30 02 8B F9 81 E1 7F 00 0A CA 89 4C 02 81 E7 80 FF ..........L.....
3CEE:1B40 8B CF 80 E5 7F B8 18 00 D1 E1 8A CD 32 ED 81 E9 ............2...
3CEE:1B50 96 00 7D 48 F7 D9 3B C8 8B EF 7C 14 81 E7 00 80 ..}H..;...|.....
3CEE:1B60 0B FA 3B C8 74 0A 8B C8 8B EF 81 E5 00 80 2B EA ..;.t.........+.
3CEE:1B70 33 D2 80 F9 08 7C 14 80 FA 01 F5 B2 00 80 D2 00 3....|..........
3CEE:1B80 0A 14 C6 04 00 80 E9 08 46 EB E7 8A 34 E3 0C BB ........F...4...
3CEE:1B90 66 38 8A C1 D7 8A EE 22 E8 88 2C C3 33 C9 8B D1 f8....."..,.3...
3CEE:1BA0 8A 34 C3 BB 01 00 8A EF 8A E1 E3 06 D1 EA D0 D7 .4..............
3CEE:1BB0 E2 FA 0A D7 22 DE 0A D3 80 FA 81 B2 01 80 DA 00 ...."...........
3CEE:1BC0 74 02 8B FD 8A CC D3 E2 8B 0E 36 38 98 03 C8 2B t.........68...+
3CEE:1BD0 CE 02 F2 88 34 E3 06 46 80 14 00 E2 FA C3       ....4..F......  

;; fn3CEE_1BDE: 3CEE:1BDE
;;   Called from:
;;     3CEE:14AB (in fn3CEE_1472)
fn3CEE_1BDE proc
	xchg	di,si

;; fn3CEE_1BE0: 3CEE:1BE0
;;   Called from:
;;     3CEE:14AB (in fn3CEE_1472)
;;     3CEE:1BDE (in fn3CEE_1BDE)
fn3CEE_1BE0 proc
	mov	ax,[di+2h]
	xor	ah,80h
	jmp	1BEBh

;; fn3CEE_1BE8: 3CEE:1BE8
;;   Called from:
;;     3CEE:14AB (in fn3CEE_1472)
fn3CEE_1BE8 proc
	mov	ax,[di+2h]

;; fn3CEE_1BEB: 3CEE:1BEB
;;   Called from:
;;     3CEE:1BE6 (in fn3CEE_1BE0)
;;     3CEE:1BE8 (in fn3CEE_1BE8)
fn3CEE_1BEB proc
	mov	bx,[di+1h]
	mov	dh,[di]
	mov	dl,0h
	or	bh,80h
	mov	cx,[si+2h]
	mov	di,[si-1h]
	mov	si,[si+1h]
	and	di,0FF00h
	or	si,8000h
	rol	cx,1h
	rol	ax,1h
	or	ch,ch
	jz	1C73h

;; fn3CEE_1C0E: 3CEE:1C0E
;;   Called from:
;;     3CEE:1C0C (in fn3CEE_1BEB)
;;     3CEE:1C0C (in fn3CEE_1BEB)
fn3CEE_1C0E proc
	or	ah,ah
	jz	1C6Dh

l3CEE_1C12:
	cmp	ch,ah
	jnc	1C1Bh

l3CEE_1C16:
	xchg	bx,si
	xchg	dx,di
	xchg	cx,ax

l3CEE_1C1B:
	sub	ah,ch
	neg	ah
	cmp	ah,18h
	ja	1C6Dh

l3CEE_1C24:
	ror	cl,1h
	shr	al,1h
	rcr	cl,1h
	xchg	cx,ax
	mov	cl,ch
	mov	ch,0h
	jcxz	1C86h

l3CEE_1C31:
	cmp	cl,0Eh
	jl	1C48h

l3CEE_1C36:
	or	dx,dx
	jz	1C3Dh

l3CEE_1C3A:
	or	bl,1h

l3CEE_1C3D:
	mov	dx,bx
	xor	bx,bx
	sub	cl,10h
	jc	1C63h

l3CEE_1C46:
	jz	1C86h

l3CEE_1C48:
	cmp	cl,5h
	jle	1C78h

l3CEE_1C4D:
	or	dl,dl
	jz	1C54h

l3CEE_1C51:
	or	dh,1h

l3CEE_1C54:
	mov	dl,dh
	mov	dh,bl
	mov	bl,bh
	mov	bh,ch
	sub	cl,8h
	ja	1C78h

l3CEE_1C61:
	jz	1C86h

l3CEE_1C63:
	shl	dx,1h
	rcl	bx,1h
	inc	cl
	jnz	1C63h

l3CEE_1C6B:
	jmp	1C86h

l3CEE_1C6D:
	mov	bx,si
	mov	dx,di
	mov	ax,cx

;; fn3CEE_1C73: 3CEE:1C73
;;   Called from:
;;     3CEE:1C0C (in fn3CEE_1BEB)
;;     3CEE:1C0C (in fn3CEE_1BEB)
;;     3CEE:1C71 (in fn3CEE_1C0E)
fn3CEE_1C73 proc
	shr	al,1h
	jmp	1D0Fh

l3CEE_1C78:
	test	dl,3Fh
	jz	1C80h

l3CEE_1C7D:
	or	dl,20h

l3CEE_1C80:
	shr	bx,1h
	rcr	dx,1h
	loop	1C80h

l3CEE_1C86:
	test	dl,3Fh
	jz	1C8Eh

l3CEE_1C8B:
	or	dl,20h

l3CEE_1C8E:
	shl	al,1h
	jo	1CA6h

l3CEE_1C92:
	add	dx,di
	adc	bx,si
	jnc	1CE8h

l3CEE_1C98:
	rcr	bx,1h
	rcr	dx,1h
	inc	ah
	cmp	ah,0FFh
	jnz	1CE8h

l3CEE_1CA3:
	jmp	1545h

l3CEE_1CA6:
	sub	di,dx
	sbb	si,bx
	mov	dx,di
	mov	bx,si
	jnc	1CBAh

l3CEE_1CB0:
	not	bx
	neg	dx
	cmc
	adc	bx,0h
	not	al

;; fn3CEE_1CBA: 3CEE:1CBA
;;   Called from:
;;     3CEE:10C8 (in fn3CEE_1088)
;;     3CEE:1CAE (in fn3CEE_1C0E)
;;     3CEE:1CB8 (in fn3CEE_1C0E)
;;     3CEE:1D14 (in fn3CEE_1D0F)
;;     3CEE:1EA8 (in fn3CEE_1CE8)
fn3CEE_1CBA proc
	or	bx,bx
	jnz	1CC9h

l3CEE_1CBE:
	sub	ah,10h
	jbe	1D2Dh

l3CEE_1CC3:
	xchg	dx,bx
	or	bx,bx
	jz	1D2Dh

l3CEE_1CC9:
	or	bh,bh
	jnz	1CDCh

l3CEE_1CCD:
	sub	ah,8h
	jbe	1D2Dh

l3CEE_1CD2:
	mov	bh,bl
	mov	bl,dh
	mov	dh,dl
	xor	dl,dl
	or	bh,bh

l3CEE_1CDC:
	js	1CE8h

l3CEE_1CDE:
	dec	ah
	jz	1D2Dh

l3CEE_1CE2:
	shl	dx,1h
	rcl	bx,1h
	jno	1CDEh

;; fn3CEE_1CE8: 3CEE:1CE8
;;   Called from:
;;     3CEE:1C96 (in fn3CEE_1C0E)
;;     3CEE:1CA1 (in fn3CEE_1C0E)
;;     3CEE:1CDC (in fn3CEE_1CBA)
;;     3CEE:1CE6 (in fn3CEE_1CBA)
;;     3CEE:1DCB (in fn3CEE_1DB9)
;;     3CEE:1E97 (in fn3CEE_1CE8)
;;     3CEE:1EB2 (in fn3CEE_1EBE)
;;     3CEE:1ECB (in fn3CEE_1EBE)
fn3CEE_1CE8 proc
	cmp	byte ptr [386Eh],0h
	jz	1CF2h

l3CEE_1CEF:
	jmp	1E6Eh

l3CEE_1CF2:
	cmp	dl,80h
	ja	1CFEh

l3CEE_1CF7:
	jc	1D0Dh

l3CEE_1CF9:
	test	dh,1h
	jz	1D0Dh

l3CEE_1CFE:
	add	dh,1h
	adc	bx,0h
	jnc	1D0Dh

l3CEE_1D06:
	inc	ah
	cmp	ah,0FFh
	jz	1D47h

l3CEE_1D0D:
	shl	al,1h

;; fn3CEE_1D0F: 3CEE:1D0F
;;   Called from:
;;     3CEE:1C75 (in fn3CEE_1C73)
;;     3CEE:1D0D (in fn3CEE_1CE8)
fn3CEE_1D0F proc
	rcr	ax,1h
	test	ax,7F80h
	jz	1D2Dh

l3CEE_1D16:
	and	al,80h
	and	bh,7Fh
	or	al,bh
	mov	di,[3836h]
	mov	[di+2h],ax
	mov	ah,bl
	mov	al,dh
	mov	[di],ax
	mov	si,di
	ret

;; fn3CEE_1D2D: 3CEE:1D2D
;;   Called from:
;;     3CEE:1CC1 (in fn3CEE_1CBA)
;;     3CEE:1CC7 (in fn3CEE_1CBA)
;;     3CEE:1CD0 (in fn3CEE_1CBA)
;;     3CEE:1CE0 (in fn3CEE_1CBA)
;;     3CEE:1D45 (in fn3CEE_1D45)
;;     3CEE:1D55 (in fn3CEE_1D4A)
;;     3CEE:1D60 (in fn3CEE_1D4A)
;;     3CEE:1DC1 (in fn3CEE_1DC1)
fn3CEE_1D2D proc
	cmp	byte ptr [386Eh],0h
	jz	1D37h

l3CEE_1D34:
	jmp	1EB5h

l3CEE_1D37:
	xor	ax,ax
	mov	di,[3836h]
	mov	[di+2h],ax
	mov	[di],ax
	mov	si,di
	ret

;; fn3CEE_1D45: 3CEE:1D45
;;   Called from:
;;     3CEE:1D70 (in fn3CEE_1D70)
;;     3CEE:1D70 (in fn3CEE_1D70)
fn3CEE_1D45 proc
	jns	1D2Dh

;; fn3CEE_1D47: 3CEE:1D47
;;   Called from:
;;     3CEE:1D0B (in fn3CEE_1CE8)
;;     3CEE:1D45 (in fn3CEE_1D45)
;;     3CEE:1D78 (in fn3CEE_1D78)
fn3CEE_1D47 proc
	jmp	1545h

;; fn3CEE_1D4A: 3CEE:1D4A
;;   Called from:
;;     3CEE:14AB (in fn3CEE_1472)
fn3CEE_1D4A proc
	cld
	lodsw
	mov	si,[si]
	xchg	si,ax
	shl	ax,1h
	rcr	al,1h
	or	ah,ah
	jz	1D2Dh

l3CEE_1D57:
	mov	cx,[di+2h]
	shl	cx,1h
	rcr	cl,1h
	or	ch,ch
	jz	1D2Dh

l3CEE_1D62:
	mov	di,[di]
	mov	bx,ax
	xor	al,cl
	sub	ah,80h
	sub	ch,7Fh
	add	ah,ch

;; fn3CEE_1D70: 3CEE:1D70
;;   Called from:
;;     3CEE:1D6E (in fn3CEE_1D4A)
;;     3CEE:1DF2 (in fn3CEE_1DD0)
fn3CEE_1D70 proc
	jo	1D45h

;; fn3CEE_1D72: 3CEE:1D72
;;   Called from:
;;     3CEE:1D70 (in fn3CEE_1D70)
;;     3CEE:1D70 (in fn3CEE_1D70)
;;     3CEE:1D78 (in fn3CEE_1D78)
;;     3CEE:1DC1 (in fn3CEE_1DC1)
fn3CEE_1D72 proc
	add	ah,80h
	cmp	ah,0FFh

;; fn3CEE_1D78: 3CEE:1D78
;;   Called from:
;;     3CEE:1DC9 (in fn3CEE_1DC4)
;;     3CEE:1DFD (in fn3CEE_1DD0)
fn3CEE_1D78 proc
	jz	1D47h

l3CEE_1D7A:
	push	ax
	xor	bh,bh
	mov	ch,bh
	or	bl,80h
	or	cl,80h
	mov	bp,bx
	mov	ax,si
	mul	di
	mov	bx,dx
	or	ax,ax
	lahf
	push	ax
	mov	ax,bp
	mul	di
	add	bx,ax
	adc	dx,0h
	mov	di,dx
	mov	ax,cx
	mul	si
	add	bx,ax
	adc	di,dx
	pop	ax
	sahf
	jz	1DABh

l3CEE_1DA8:
	or	bl,1h

l3CEE_1DAB:
	mov	ax,bp
	mul	cl
	add	ax,di
	mov	dx,bx
	xchg	bx,ax

;; fn3CEE_1DB4: 3CEE:1DB4
;;   Called from:
;;     3CEE:1DB3 (in fn3CEE_1D78)
;;     3CEE:1E3B (in fn3CEE_1E19)
fn3CEE_1DB4 proc
	pop	ax
	or	bh,bh
	js	1DC4h

;; fn3CEE_1DB9: 3CEE:1DB9
;;   Called from:
;;     3CEE:1DB7 (in fn3CEE_1DB4)
;;     3CEE:1DB7 (in fn3CEE_1DB4)
;;     3CEE:1DC9 (in fn3CEE_1DC4)
fn3CEE_1DB9 proc
	shl	dx,1h
	rcl	bx,1h
	or	ah,ah
	jnz	1DCBh

;; fn3CEE_1DC1: 3CEE:1DC1
;;   Called from:
;;     3CEE:1DBF (in fn3CEE_1DB9)
;;     3CEE:1DE4 (in fn3CEE_1DD0)
fn3CEE_1DC1 proc
	jmp	1D2Dh

;; fn3CEE_1DC4: 3CEE:1DC4
;;   Called from:
;;     3CEE:1D75 (in fn3CEE_1D72)
;;     3CEE:1DB7 (in fn3CEE_1DB4)
;;     3CEE:1DB7 (in fn3CEE_1DB4)
;;     3CEE:1DB9 (in fn3CEE_1DB9)
fn3CEE_1DC4 proc
	inc	ah
	cmp	ah,0FFh
	jz	1D78h

l3CEE_1DCB:
	jmp	1CE8h

;; fn3CEE_1DCE: 3CEE:1DCE
;;   Called from:
;;     3CEE:14AB (in fn3CEE_1472)
fn3CEE_1DCE proc
	xchg	di,si

;; fn3CEE_1DD0: 3CEE:1DD0
;;   Called from:
;;     3CEE:14AB (in fn3CEE_1472)
;;     3CEE:1DCE (in fn3CEE_1DCE)
fn3CEE_1DD0 proc
	mov	cx,[di+2h]
	shl	cx,1h
	rcr	cl,1h
	mov	ax,[si+2h]
	shl	ax,1h
	rcr	al,1h
	or	ch,ch
	jz	1E3Eh

l3CEE_1DE2:
	or	ah,ah
	jz	1DC1h

l3CEE_1DE6:
	xor	al,cl
	sub	ah,81h
	sub	ch,7Fh
	sub	ah,ch
	jno	1DF5h

l3CEE_1DF2:
	jmp	1D70h

l3CEE_1DF5:
	add	ah,80h
	cmp	ah,0FFh
	jnz	1E00h

l3CEE_1DFD:
	jmp	1D78h

l3CEE_1E00:
	mov	bx,[di+1h]
	mov	ch,[di]
	xor	cl,cl
	or	bh,80h
	cmp	byte ptr [386Eh],0h
	jz	1E19h

l3CEE_1E11:
	shr	bx,1h

;; fn3CEE_1E13: 3CEE:1E13
;;   Called from:
;;     3CEE:1E11 (in fn3CEE_1DD0)
;;     3CEE:8A74 (in fn3CEE_8A23)
fn3CEE_1E13 proc
	rcr	cx,1h
	add	bh,[386Eh]

;; fn3CEE_1E19: 3CEE:1E19
;;   Called from:
;;     3CEE:1E0F (in fn3CEE_1DD0)
;;     3CEE:1E15 (in fn3CEE_1E13)
;;     3CEE:1E15 (in fn3CEE_1E13)
fn3CEE_1E19 proc
	push	ax
	mov	dx,[si+1h]
	mov	ah,[si]
	xor	al,al
	or	dh,80h
	shr	dx,1h
	rcr	ax,1h
	call	1E45h
	mov	bp,si
	call	1E41h
	or	ax,dx
	mov	dx,si
	jz	1E39h

l3CEE_1E36:
	or	dl,1h

l3CEE_1E39:
	mov	bx,bp
	jmp	1DB4h

l3CEE_1E3E:
	jmp	154Fh

;; fn3CEE_1E41: 3CEE:1E41
;;   Called from:
;;     3CEE:1E2D (in fn3CEE_1E19)
fn3CEE_1E41 proc
	cmp	dx,bx
	jnc	1E62h

;; fn3CEE_1E45: 3CEE:1E45
;;   Called from:
;;     3CEE:1E28 (in fn3CEE_1E19)
;;     3CEE:1E43 (in fn3CEE_1E41)
fn3CEE_1E45 proc
	div	bx
	xchg	si,ax
	xor	ax,ax
	jcxz	1E61h

l3CEE_1E4C:
	mov	di,dx
	mov	ax,si
	mul	cx
	neg	ax
	sbb	di,dx
	mov	dx,di
	jnc	1E61h

;; fn3CEE_1E5A: 3CEE:1E5A
;;   Called from:
;;     3CEE:1E4A (in fn3CEE_1E45)
;;     3CEE:1E58 (in fn3CEE_1E45)
;;     3CEE:1E58 (in fn3CEE_1E45)
;;     3CEE:1E6B (in fn3CEE_1E41)
fn3CEE_1E5A proc
	dec	si
	add	ax,cx
	adc	dx,bx
	jnc	1E5Ah

l3CEE_1E61:
	ret

l3CEE_1E62:
	mov	si,0FFFFh
	sub	ax,cx
	add	dx,ax
	mov	ax,cx
	jnc	1E5Ah

l3CEE_1E6D:
	ret

l3CEE_1E6E:
	mov	byte ptr [386Eh],0h
	mov	ch,[3870h]
	or	ch,ch
	jz	1E82h

l3CEE_1E7B:
	sub	ch,0Eh
	cmp	ch,ah
	ja	1EBEh

l3CEE_1E82:
	or	ah,ah
	jz	1EBEh

l3CEE_1E86:
	push	word ptr [3836h]
	mov	word ptr [3836h],3871h
	push	ax
	push	bx
	push	dx
	xor	dx,dx
	xor	bl,bl
	call	1CE8h
	pop	dx
	pop	bx
	pop	ax
	mov	word ptr [3836h],3875h
	push	ax
	push	bx
	push	dx
	xor	bh,bh
	call	1CBAh

l3CEE_1EAB:
	pop	dx
	pop	bx
	pop	ax
	pop	word ptr [3836h]
	jmp	1CE8h

l3CEE_1EB5:
	xor	ax,ax
	xor	bx,bx
	xor	dx,dx
	mov	[386Eh],al

;; fn3CEE_1EBE: 3CEE:1EBE
;;   Called from:
;;     3CEE:1E80 (in fn3CEE_1CE8)
;;     3CEE:1E84 (in fn3CEE_1CE8)
;;     3CEE:1EA8 (in fn3CEE_1CE8)
;;     3CEE:1EBB (in fn3CEE_1D2D)
fn3CEE_1EBE proc
	push	word ptr [3836h]
	mov	word ptr [3836h],3875h
	push	ax
	push	bx
	push	dx
	call	1CE8h
	xor	ax,ax
	mov	[3871h],ax
	mov	[3873h],ax
	jmp	1EABh

;; fn3CEE_1ED8: 3CEE:1ED8
;;   Called from:
;;     3CEE:14AB (in fn3CEE_1472)
fn3CEE_1ED8 proc
	xchg	di,si

;; fn3CEE_1EDA: 3CEE:1EDA
;;   Called from:
;;     3CEE:14AB (in fn3CEE_1472)
;;     3CEE:1ED8 (in fn3CEE_1ED8)
fn3CEE_1EDA proc
	mov	bp,[di+6h]
	xor	bp,8000h
	jmp	1F00h

l3CEE_1EE3:
	mov	si,di
	mov	di,[3836h]
	movsw
	movsw
	movsw
	lodsw
	and	ah,7Fh
	and	dh,80h
	or	ah,dh
	stosw
	mov	si,[3836h]
	mov	di,si
	ret

;; fn3CEE_1EFD: 3CEE:1EFD
;;   Called from:
;;     3CEE:14AB (in fn3CEE_1472)
fn3CEE_1EFD proc
	mov	bp,[di+6h]

;; fn3CEE_1F00: 3CEE:1F00
;;   Called from:
;;     3CEE:1EE1 (in fn3CEE_1EDA)
;;     3CEE:1EFD (in fn3CEE_1EFD)
fn3CEE_1F00 proc
	cld
	mov	ax,[si+6h]
	shl	bp,1h
	rcr	dh,1h
	shl	ax,1h
	rcr	dl,1h
	and	ax,0FFE0h
	jz	1EE3h

;; fn3CEE_1F11: 3CEE:1F11
;;   Called from:
;;     3CEE:1F0F (in fn3CEE_1F00)
;;     3CEE:1F0F (in fn3CEE_1F00)
;;     3CEE:1F0F (in fn3CEE_1F00)
fn3CEE_1F11 proc
	and	bp,0FFE0h
	cmp	bp,ax
	ja	1F22h

l3CEE_1F19:
	xchg	di,si
	xchg	bp,ax
	xchg	dh,dl
	or	ax,ax
	jz	1EE3h

l3CEE_1F22:
	sub	ax,bp
	neg	ax
	cmp	ax,6A0h
	ja	1EE3h

l3CEE_1F2B:
	shl	dh,1h
	rcr	bp,1h
	shl	dl,1h
	rcr	bp,1h
	push	di
	rol	ax,1h
	rol	ax,1h
	rol	ax,1h
	xchg	al,ah
	mov	di,ax
	lodsb
	mov	ah,al
	xor	al,al
	xchg	dx,ax
	lodsw
	xchg	cx,ax
	lodsw
	xchg	bx,ax
	lodsw
	and	ah,0Fh
	or	ah,10h
	or	di,di
	jz	1FB6h

l3CEE_1F53:
	cmp	di,0Eh
	jl	1F70h

l3CEE_1F58:
	or	dx,dx
	jz	1F5Fh

l3CEE_1F5C:
	or	cl,1h

l3CEE_1F5F:
	mov	dx,cx
	mov	cx,bx
	mov	bx,ax
	xor	ax,ax
	sub	di,10h
	ja	1F53h

l3CEE_1F6C:
	jz	1FB6h

l3CEE_1F6E:
	jc	1F93h

l3CEE_1F70:
	cmp	di,6h
	jl	1FA0h

l3CEE_1F75:
	or	dl,dl
	jz	1F7Ch

l3CEE_1F79:
	or	dh,1h

l3CEE_1F7C:
	mov	dl,dh
	mov	dh,cl
	mov	cl,ch
	mov	ch,bl
	mov	bl,bh
	mov	bh,al
	mov	al,ah
	xor	ah,ah
	sub	di,8h
	ja	1FA0h

l3CEE_1F91:
	jz	1FB6h

l3CEE_1F93:
	shl	dx,1h
	rcl	cx,1h
	rcl	bx,1h
	rcl	ax,1h
	inc	di
	jnz	1F93h

l3CEE_1F9E:
	jmp	1FB6h

l3CEE_1FA0:
	xchg	di,cx
	test	dl,3Fh
	jz	1FAAh

l3CEE_1FA7:
	or	dl,20h

l3CEE_1FAA:
	shr	ax,1h
	rcr	bx,1h
	rcr	di,1h
	rcr	dx,1h
	loop	1FAAh

l3CEE_1FB4:
	xchg	di,cx

l3CEE_1FB6:
	pop	si
	xchg	di,ax
	test	dl,3Fh
	jz	1FC0h

l3CEE_1FBD:
	or	dl,20h

l3CEE_1FC0:
	shl	bp,1h
	jo	1FFFh

l3CEE_1FC4:
	shl	bp,1h
	rcr	al,1h
	add	dh,[si]
	adc	cx,[si+1h]
	adc	bx,[si+3h]
	push	ax
	lahf
	push	ax
	mov	si,[si+5h]
	and	si,0FFFh
	or	si,1000h
	pop	ax
	sahf
	pop	ax
	adc	di,si
	test	di,2000h
	jz	1FFCh

l3CEE_1FE9:
	rcr	di,1h
	rcr	bx,1h
	rcr	cx,1h
	rcr	dx,1h
	add	bp,20h
	cmp	bp,0E0h
	jnz	1FFCh

l3CEE_1FF9:
	jmp	1545h

l3CEE_1FFC:
	jmp	2087h

l3CEE_1FFF:
	shl	bp,1h
	rcr	al,1h
	not	al
	sub	dh,[si]
	sbb	cx,[si+1h]
	sbb	bx,[si+3h]
	mov	si,[si+5h]
	lahf
	and	si,0FFFh
	or	si,1000h
	sahf
	sbb	di,si
	jnc	2031h

l3CEE_201E:
	xor	si,si
	not	al
	not	di
	not	bx
	not	cx
	neg	dx
	cmc
	adc	cx,si
	adc	bx,si
	adc	di,si

;; fn3CEE_2031: 3CEE:2031
;;   Called from:
;;     3CEE:10DF (in fn3CEE_1088)
;;     3CEE:201C (in fn3CEE_1F11)
;;     3CEE:202F (in fn3CEE_1F11)
;;     3CEE:245D (in fn3CEE_2087)
fn3CEE_2031 proc
	cld
	mov	si,4h

l3CEE_2035:
	or	di,di
	jnz	2051h

l3CEE_2039:
	test	bh,0E0h
	jnz	2051h

l3CEE_203E:
	sub	bp,200h
	jbe	2084h

l3CEE_2044:
	dec	si
	jz	2084h

l3CEE_2047:
	mov	di,bx
	mov	bx,cx
	mov	cx,dx
	xor	dx,dx
	jmp	2035h

l3CEE_2051:
	test	di,1FE0h
	jnz	206Fh

l3CEE_2057:
	sub	bp,100h
	jbe	2084h

l3CEE_205D:
	xchg	di,ax
	mov	ah,al
	mov	al,bh
	mov	bh,bl
	mov	bl,ch
	mov	ch,cl
	mov	cl,dh
	mov	dh,dl
	mov	dl,0h
	xchg	di,ax

l3CEE_206F:
	test	di,1000h
	jnz	2087h

l3CEE_2075:
	sub	bp,20h
	jz	20EBh

l3CEE_207A:
	shl	dx,1h
	rcl	cx,1h
	rcl	bx,1h
	rcl	di,1h
	jmp	206Fh

l3CEE_2084:
	jmp	20EBh
3CEE:2086                   90                                  .         

;; fn3CEE_2087: 3CEE:2087
;;   Called from:
;;     3CEE:1FFC (in fn3CEE_1F11)
;;     3CEE:2073 (in fn3CEE_2031)
;;     3CEE:2078 (in fn3CEE_2031)
;;     3CEE:2160 (in fn3CEE_213F)
;;     3CEE:2446 (in fn3CEE_2087)
;;     3CEE:246A (in fn3CEE_20EB)
;;     3CEE:248C (in fn3CEE_20EB)
fn3CEE_2087 proc
	cld
	cmp	byte ptr [3886h],0h
	jz	2092h

l3CEE_208F:
	jmp	2417h

l3CEE_2092:
	cmp	dl,80h
	ja	209Eh

l3CEE_2097:
	jc	20B8h

l3CEE_2099:
	test	dh,1h
	jz	20B8h

l3CEE_209E:
	add	dh,1h
	adc	cx,0h
	adc	bx,0h
	adc	di,0h
	test	di,2000h
l3CEE_20AE	dw	0x0874
l3CEE_20B0	dw	0xC583
l3CEE_20B2	dw	0x8320
l3CEE_20B4	dw	0xE0FD
l3CEE_20B6	dw	0x3074
l3CEE_20B8	dw	0xF78B
l3CEE_20BA	dw	0x3E8B
l3CEE_20BC	dw	0x3836
l3CEE_20BE	dw	0xDE87
l3CEE_20C0	dw	0x8024
l3CEE_20C2	dw	0xE780
l3CEE_20C4	dw	0xD10F
l3CEE_20C6	dw	0x74ED
l3CEE_20C8	dw	0x8622

l3CEE_20C9:
	xchg	al,ah
l3CEE_20CA	dw	0x32E0
l3CEE_20CC	dw	0x0BC0
l3CEE_20CE	dw	0x0AC5
l3CEE_20D0	dw	0x89C7
l3CEE_20D2	dw	0x0645
3CEE:20D4             88 5D 05 8A C6 AA 8B C1 AB 8B C6 AB     .]..........
3CEE:20E0 83 EF 05 8B F7 C3                               ......          

;; fn3CEE_20E6: 3CEE:20E6
;;   Called from:
;;     3CEE:2128 (in fn3CEE_2128)
;;     3CEE:2128 (in fn3CEE_2128)
fn3CEE_20E6 proc
	jns	20EBh

;; fn3CEE_20E8: 3CEE:20E8
;;   Called from:
;;     3CEE:20B6 (in fn3CEE_2087)
;;     3CEE:20E6 (in fn3CEE_20E6)
;;     3CEE:2130 (in fn3CEE_2130)
;;     3CEE:2130 (in fn3CEE_2130)
;;     3CEE:215E (in fn3CEE_213F)
fn3CEE_20E8 proc
	jmp	1545h

;; fn3CEE_20EB: 3CEE:20EB
;;   Called from:
;;     3CEE:2084 (in fn3CEE_2031)
;;     3CEE:20C7 (in fn3CEE_2087)
;;     3CEE:20E6 (in fn3CEE_20E6)
;;     3CEE:210E (in fn3CEE_2105)
;;     3CEE:2119 (in fn3CEE_2119)
;;     3CEE:2119 (in fn3CEE_2119)
;;     3CEE:2156 (in fn3CEE_213F)
;;     3CEE:242A (in fn3CEE_2087)
;;     3CEE:242E (in fn3CEE_2087)
;;     3CEE:245D (in fn3CEE_2087)
fn3CEE_20EB proc
	cld
	cmp	byte ptr [3886h],0h
	jz	20F6h

l3CEE_20F3:
	jmp	246Dh

l3CEE_20F6:
	xor	ax,ax
	mov	di,[3836h]
	mov	si,di
	stosw
	stosw
	stosw
	stosw
	mov	di,si
	ret

;; fn3CEE_2105: 3CEE:2105
;;   Called from:
;;     3CEE:14AB (in fn3CEE_1472)
fn3CEE_2105 proc
	cld
	mov	ax,[si+6h]
	mov	dx,ax
	and	ax,7FF0h
	jz	20EBh

l3CEE_2110:
	mov	cx,[di+6h]
	xor	dx,cx
	and	cx,7FF0h

;; fn3CEE_2119: 3CEE:2119
;;   Called from:
;;     3CEE:2115 (in fn3CEE_2105)
;;     3CEE:217C (in fn3CEE_2168)
fn3CEE_2119 proc
	jz	20EBh

;; fn3CEE_211B: 3CEE:211B
;;   Called from:
;;     3CEE:2119 (in fn3CEE_2119)
;;     3CEE:2119 (in fn3CEE_2119)
fn3CEE_211B proc
	shl	ax,1h
	shl	cx,1h
	sub	ax,8000h
	sub	cx,7FE0h
	add	ax,cx

;; fn3CEE_2128: 3CEE:2128
;;   Called from:
;;     3CEE:2126 (in fn3CEE_211B)
;;     3CEE:218B (in fn3CEE_2168)
fn3CEE_2128 proc
	jo	20E6h

;; fn3CEE_212A: 3CEE:212A
;;   Called from:
;;     3CEE:2128 (in fn3CEE_2128)
;;     3CEE:2128 (in fn3CEE_2128)
fn3CEE_212A proc
	add	ax,8000h
	cmp	ax,0FFE0h

;; fn3CEE_2130: 3CEE:2130
;;   Called from:
;;     3CEE:212D (in fn3CEE_212A)
;;     3CEE:2193 (in fn3CEE_2168)
fn3CEE_2130 proc
	jz	20E8h

;; fn3CEE_2132: 3CEE:2132
;;   Called from:
;;     3CEE:2130 (in fn3CEE_2130)
;;     3CEE:2130 (in fn3CEE_2130)
;;     3CEE:213F (in fn3CEE_213F)
fn3CEE_2132 proc
	shl	dh,1h
	rcr	ax,1h
	push	ax
	call	22BBh
	jz	213Fh

l3CEE_213C:
	or	dl,1h

;; fn3CEE_213F: 3CEE:213F
;;   Called from:
;;     3CEE:213A (in fn3CEE_2132)
;;     3CEE:213C (in fn3CEE_2132)
;;     3CEE:2234 (in fn3CEE_2168)
fn3CEE_213F proc
	pop	bp
	shl	bp,1h
	rcr	al,1h
	test	di,1000h
	jnz	2158h

l3CEE_214A:
	shl	dx,1h
	rcl	cx,1h
	rcl	bx,1h
	rcl	di,1h
	or	bp,bp
	jnz	2160h

l3CEE_2156:
	jmp	20EBh

l3CEE_2158:
	add	bp,20h
	cmp	bp,0E0h
	jz	20E8h

l3CEE_2160:
	jmp	2087h

l3CEE_2163:
	jmp	154Fh

;; fn3CEE_2166: 3CEE:2166
;;   Called from:
;;     3CEE:14AB (in fn3CEE_1472)
fn3CEE_2166 proc
	xchg	di,si

;; fn3CEE_2168: 3CEE:2168
;;   Called from:
;;     3CEE:14AB (in fn3CEE_1472)
;;     3CEE:2166 (in fn3CEE_2166)
fn3CEE_2168 proc
	cld
	mov	cx,[di+6h]
	mov	dx,cx
	and	cx,7FF0h
	jz	2163h

l3CEE_2174:
	mov	ax,[si+6h]
	xor	dx,ax
	and	ax,7FF0h
	jz	2119h

l3CEE_217E:
	shl	ax,1h
	shl	cx,1h
	sub	ax,8020h
	sub	cx,7FE0h
	sub	ax,cx
	jo	2128h

l3CEE_218D:
	add	ax,8000h
	cmp	ax,0FFE0h
	jz	2130h

l3CEE_2195:
	shl	dh,1h
	rcr	ax,1h
	push	ax
	lodsb
	mov	ch,al
	xor	cl,cl
	lodsw
	xchg	bx,ax
	lodsw
	xchg	dx,ax
	lodsw
	and	ah,0Fh
	or	ah,10h
	xchg	dx,ax
	push	ax
	mov	si,di
	add	si,5h
	mov	di,3884h
	std
	lodsw
	and	ah,0Fh
	or	ah,10h
	stosw
	movsw
	movsw
	inc	si
	inc	di
	movsb
	cld
	mov	byte ptr [di],0h
	cmp	byte ptr [3886h],0h
	jz	21ECh

l3CEE_21CD:
	std
	mov	di,3884h
	mov	si,di
	lodsw
	mov	bp,ax
	shr	ax,1h
	add	ah,[3886h]
	stosw
	shr	bp,1h
	lodsw
	rcr	ax,1h
	stosw
	lodsw
	rcr	ax,1h
	stosw
	lodsw
	rcr	ax,1h
	stosw
	cld

l3CEE_21EC:
	pop	ax
	shr	dx,1h
	rcr	ax,1h
	rcr	bx,1h
	rcr	cx,1h
	call	2237h
	push	di
	call	2237h
	push	di
	call	2237h
	push	di
	call	2237h
	or	ax,bx
	or	ax,cx
	or	ax,dx
	mov	dx,di
	pop	cx
	pop	bx
	pop	di
	jz	2214h

l3CEE_2211:
	or	dl,1h

l3CEE_2214:
	test	dl,7h
	jz	221Ch

l3CEE_2219:
	or	dl,8h

l3CEE_221C:
	shr	di,1h
	rcr	bx,1h
	rcr	cx,1h
	rcr	dx,1h
	shr	di,1h
	rcr	bx,1h
	rcr	cx,1h
	rcr	dx,1h
	shr	di,1h
	rcr	bx,1h
	rcr	cx,1h
	rcr	dx,1h
	jmp	213Fh

;; fn3CEE_2237: 3CEE:2237
;;   Called from:
;;     3CEE:21F5 (in fn3CEE_2168)
;;     3CEE:21F9 (in fn3CEE_2168)
;;     3CEE:21FD (in fn3CEE_2168)
;;     3CEE:2201 (in fn3CEE_2168)
fn3CEE_2237 proc
	mov	si,[3884h]
	xor	di,di
	cmp	dx,si
	jnc	229Dh

l3CEE_2241:
	or	dx,dx
	jnz	2249h

l3CEE_2245:
	cmp	si,ax
	ja	2284h

l3CEE_2249:
	div	si
	push	dx
	xchg	di,ax
	xor	bp,bp
	mov	si,bp
	mov	ax,[387Eh]
	or	ax,ax
	jz	225Ch

l3CEE_2258:
	mul	di
	mov	si,dx

l3CEE_225C:
	push	ax
	mov	ax,[3880h]
	or	ax,ax
	jz	226Ah

l3CEE_2264:
	mul	di
	add	si,ax
	adc	bp,dx

l3CEE_226A:
	mov	ax,[3882h]
	or	ax,ax
	jz	2279h

l3CEE_2271:
	mul	di
	add	bp,ax
	adc	dx,0h
	xchg	dx,ax

l3CEE_2279:
	pop	dx
	neg	dx
	sbb	cx,si
	sbb	bx,bp
	pop	bp
	sbb	bp,ax
	xchg	bp,ax

l3CEE_2284:
	xchg	dx,ax
	xchg	cx,ax
	xchg	bx,ax
	jnc	229Ch

l3CEE_2289:
	dec	di
	add	cx,[387Eh]
	adc	bx,[3880h]
	adc	ax,[3882h]
	adc	dx,[3884h]
	jnc	2289h

l3CEE_229C:
	ret

l3CEE_229D:
	dec	di
	sub	cx,[387Eh]
	sbb	bx,[3880h]
	sbb	ax,[3882h]
	add	cx,[3880h]
l3CEE_22AC	dw	0x3880
l3CEE_22AE	dw	0x1E13
l3CEE_22B0	dw	0x3882
l3CEE_22B2	dw	0xC213
l3CEE_22B4	dw	0x168B
l3CEE_22B6	dw	0x387E
l3CEE_22B8	dw	0xEBF5
l3CEE_22BA	dw	0x8AC9

;; fn3CEE_22BB: 3CEE:22BB
;;   Called from:
;;     3CEE:2137 (in fn3CEE_2132)
fn3CEE_22BB proc
	mov	al,[si+6h]
l3CEE_22BC	dw	0x0644
l3CEE_22BE	dw	0xE432
l3CEE_22C0	dw	0x0F24
l3CEE_22C2	dw	0x100C
l3CEE_22C4	dw	0x7AA3
l3CEE_22C6	dw	0x8A38
3CEE:22C8                         45 06 24 0F 0C 10 A3 7C         E.$....|
3CEE:22D0 38 33 DB 8B EB 8B 0C E3 1A                      83.......       

l3CEE_22D9:
	xchg	cx,ax
	mov	cx,[di]
	jcxz	22E6h

l3CEE_22DE:
	mul	cx
	mov	bp,ax
	mov	cx,dx
	mov	ax,[si]

l3CEE_22E6:
	mov	dx,[di+2h]
	or	dx,dx
	jz	22F3h

l3CEE_22ED:
	mul	dx
	add	cx,ax
	adc	bx,dx

l3CEE_22F3:
	push	bp
	xor	bp,bp
	mov	ax,[si+2h]
	or	ax,ax
	jz	230Bh

l3CEE_22FD:
	mov	dx,[di]
	or	dx,dx
	jz	230Bh

l3CEE_2303:
	mul	dx
	add	cx,ax
	adc	bx,dx
	rcl	bp,1h

l3CEE_230B:
	pop	ax
	or	ax,cx
	push	ax
	mov	ax,[si+2h]
	or	ax,ax
	jz	2323h

l3CEE_2316:
	mov	dx,[di+2h]
	or	dx,dx
	jz	2323h

l3CEE_231D:
	mul	dx
	add	bx,ax
	adc	bp,dx

l3CEE_2323:
	xor	cx,cx
	mov	ax,[si]
	or	ax,ax
	jz	233Ah

l3CEE_232B:
	mov	dx,[di+4h]
	or	dx,dx
	jz	233Ah

l3CEE_2332:
	mul	dx
	add	bx,ax
	adc	bp,dx
	rcl	cx,1h

l3CEE_233A:
	mov	ax,[si+4h]
	or	ax,ax
	jz	2350h

l3CEE_2341:
	mov	dx,[di]
	or	dx,dx
	jz	2350h

l3CEE_2347:
	mul	dx
	add	bx,ax
	adc	bp,dx
	adc	cx,0h

l3CEE_2350:
	pop	ax
	or	ax,bx
	push	ax
	mov	ax,[si]
	or	ax,ax
	jz	2362h

l3CEE_235A:
	mul	word ptr [387Ch]
	add	bp,ax
	adc	cx,dx

l3CEE_2362:
	mov	ax,[di]
	or	ax,ax
	jz	2370h

l3CEE_2368:
	mul	word ptr [387Ah]
	add	bp,ax
	adc	cx,dx

l3CEE_2370:
	xor	bx,bx
	mov	ax,[si+2h]
	or	ax,ax
	jz	2388h

l3CEE_2379:
	mov	dx,[di+4h]
	or	dx,dx
	jz	2388h

l3CEE_2380:
	mul	dx
	add	bp,ax
	adc	cx,dx
	rcl	bx,1h

l3CEE_2388:
	mov	ax,[si+4h]
	or	ax,ax
	jz	239Fh

l3CEE_238F:
	mov	dx,[di+2h]
	or	dx,dx
	jz	239Fh

l3CEE_2396:
	mul	dx
	add	bp,ax
	adc	cx,dx
	adc	bx,0h

l3CEE_239F:
	push	bp
	xor	bp,bp
	mov	ax,[di+2h]
	or	ax,ax
	jz	23B1h

l3CEE_23A9:
	mul	word ptr [387Ah]
	add	cx,ax
	adc	bx,dx

l3CEE_23B1:
	mov	ax,[si+2h]
	or	ax,ax
	jz	23C0h

l3CEE_23B8:
	mul	word ptr [387Ch]
	add	cx,ax
	adc	bx,dx

l3CEE_23C0:
	mov	ax,[si+4h]
	or	ax,ax
	jz	23E1h

l3CEE_23C7:
	mov	dx,[di+4h]
	or	dx,dx
	jz	23D9h

l3CEE_23CE:
	mul	dx
	add	cx,ax
	adc	bx,dx
	rcl	bp,1h
	mov	ax,[si+4h]

l3CEE_23D9:
	mul	word ptr [387Ch]
	add	bx,ax
	adc	bp,dx

l3CEE_23E1:
	mov	ax,[di+4h]
	or	ax,ax
	jz	23F0h

l3CEE_23E8:
	mul	word ptr [387Ah]
	add	bx,ax
	adc	bp,dx

l3CEE_23F0:
	mov	al,[387Ah]
	mul	byte ptr [387Ch]
	add	ax,bp
	xchg	di,ax
	pop	dx
	shl	dx,1h
	rcl	cx,1h
	rcl	bx,1h
	rcl	di,1h
	shl	dx,1h
	rcl	cx,1h
	rcl	bx,1h
	rcl	di,1h
	shl	dx,1h
	rcl	cx,1h
	rcl	bx,1h
	rcl	di,1h
	pop	si
	or	si,si
	ret

l3CEE_2417:
	mov	byte ptr [3886h],0h
	mov	si,[3887h]
	or	si,si
	jz	242Ch

l3CEE_2424:
	sub	si,4C0h
	cmp	si,bp
	ja	247Ch

l3CEE_242C:
	or	bp,bp
	jz	247Ch

l3CEE_2430:
	push	word ptr [3836h]
	mov	word ptr [3836h],3889h
	push	ax
	push	cx
	push	dx
	push	bx
	push	bp
	push	di
	xor	bx,bx
	xor	cx,cx
	xor	dx,dx
	call	2087h
	pop	di
	pop	bp
	pop	bx
	pop	dx
	pop	cx
	pop	ax
	mov	word ptr [3836h],3891h
	push	ax
	push	cx
	push	dx
	push	bx
	push	bp
	push	di
	xor	di,di
	call	2031h

l3CEE_2460:
	pop	di
	pop	bp
	pop	bx
	pop	dx
	pop	cx
	pop	ax
	pop	word ptr [3836h]
	jmp	2087h

l3CEE_246D:
	xor	ax,ax
	xor	cx,cx
	xor	dx,dx
	xor	bx,bx
	xor	bp,bp
	xor	di,di
	mov	[3886h],al

l3CEE_247C:
	push	word ptr [3836h]
	mov	word ptr [3836h],3891h
	push	ax
	push	cx
	push	dx
	push	bx
	push	bp
	push	di
	call	2087h
	mov	di,3889h
	xor	ax,ax
	stosw
	stosw
	stosw
	stosw
	jmp	2460h
3CEE:249A                               E8 13 00 72 0F BF           ...r..
3CEE:24A0 BB 38 E8 60 FC C3 B8 02 03 EB 03 B8 01 03 F9 C3 .8.`............
3CEE:24B0 FC 8B 3E 36 38 A5 A5 A5 AD 8B D8 81 E3 F0 FF 74 ..>68..........t
3CEE:24C0 E5 78 E8 8B 36 36 38 25 0F 80 0D E0 3F AB 93 2D .x..668%....?..-
3CEE:24D0 E0 3F B1 04 D3 F8 50 BF AB 38 E8 D7 F2 8B 36 36 .?....P..8....66
3CEE:24E0 38 B1 10 73 09 58 48 50 83 44 06 10 B1 08 5B 51 8..s.XHP.D....[Q
3CEE:24F0 E8 96 03 93 E8 0C F4 E8 AE 03 BF CB 38 E8 05 FC ............8...
3CEE:2500 BF 6B 39 A5 A5 A5 A5 E8 B1 03 BF C3 38 E8 F5 FB .k9.........8...
3CEE:2510 8B 44 06 25 F0 7F D1 E0 A3 87 38 BF 63 39 A5 A5 .D.%......8.c9..
3CEE:2520 A5 A5 BE 3A 39 BF 2A 39 E8 AF F9 58 A2 86 38 E8 ...:9.*9...X..8.
3CEE:2530 10 03 BB D3 38 B9 ED 38 E8 02 05 BF 91 38 E8 BC ....8..8.....8..
3CEE:2540 F9 BF 6B 39 E8 B6 F9 BF 6B 39 A5 A5 A5 A5 BE 63 ..k9....k9.....c
3CEE:2550 39 BF 89 38 E8 A6 F9 BF 63 39 A5 A5 A5 A5 BE 63 9..8....c9.....c
3CEE:2560 39 BF 6B 39 E8 96 F9 C3 E8 61 04 8B 44 06 25 F0 9.k9.....a..D.%.
3CEE:2570 7F 3D 90 3C 73 03 E9 25 04 E8 CC 03 50 BF 22 39 .=.<s..%....P."9
3CEE:2580 E8 7A F9 58 40 B1 04 D3 E0 01 44 06 F8 C3 E9 0D .z.X@.....D.....
3CEE:2590 04 80 3E 18 39 00 75 11 0B C0 78 08 74 03 E9 07 ..>.9.u...x.t...
3CEE:25A0 04 E9 FA 03 B8 02 07 F9 C3 0B C0 78 05 74 03 E9 ...........x.t..
3CEE:25B0 F6 03 B8 01 07 F9 C3 8B 45 06 A9 F0 7F 74 13 8B ........E....t..
3CEE:25C0 44 06 0A E4 79 0C A9 F0 7F 74 07 EB 75 90 B0 01 D...y....t..u...
3CEE:25D0 EB 02 32 C0 A2 18 39 8B 45 06 8B 4C 06 F7 C1 F0 ..2...9.E..L....
3CEE:25E0 7F 74 AE A9 F0 7F 74 A6 8B DF BF 08 39 A5 A5 A5 .t....t.....9...
3CEE:25F0 A5 8B F3 BF 10 39 A5 A5 A5 A5 8B F3 E8 B1 F4 BF .....9..........
3CEE:2600 10 39 E8 AF F1 75 45 BE 10 39 80 3E 18 39 00 75 .9...uE..9.>.9.u
3CEE:2610 0E 8B 44 06 80 E4 7F 3D 30 40 77 03 E9 C2 00 F6 ..D....=0@w.....
3CEE:2620 06 0F 39 80 79 26 8B 44 06 25 F0 7F 3D 30 43 77 ..9.y&.D.%..=0Cw
3CEE:2630 11 E8 DE 02 73 11 E8 0E 00 B0 07 72 09 80 4C 07 ....s......r..L.
3CEE:2640 80 C3 B8 01 06 F9 C3 80 26 0F 39 7F F6 06 0F 39 ........&.9....9
3CEE:2650 80 78 EF BE 08 39 E8 57 FE C6 06 86 38 01 C7 06 .x...9.W....8...
3CEE:2660 87 38 00 00 BE 10 39 BF 63 39 E8 98 FA BE 10 39 .8....9.c9.....9
3CEE:2670 BF 6B 39 E8 8F FA BF 91 38 E8 81 F8 BF 91 38 A5 .k9.....8.....8.
3CEE:2680 A5 A5 A5 BE 89 38 BF 91 38 E8 71 F8 E8 3D 03 BF .....8..8.q..=..
3CEE:2690 19 39 E8 70 FA E8 A5 F2 50 E8 ED 02 BF 91 38 E8 .9.p....P.....8.
3CEE:26A0 5B F8 58 E8 B3 02 E9 D3 FE 32 ED 50 51 E8 4B F2 [.X......2.PQ.K.
3CEE:26B0 59 08 6C 07 BF 10 39 A5 A5 A5 A5 58 F6 06 0F 39 Y.l...9....X...9
3CEE:26C0 80 79 89 D1 E8 E9 6C FF B5 80 EB DF BF 08 39 A5 .y....l.......9.
3CEE:26D0 A5 A5 A5 0B D2 79 34 F7 D2 F7 D8 F5 83 D2 00 EB .....y4.........
3CEE:26E0 0C E8 70 F2 33 D2 F6 06 17 39 80 79 1E F7 06 0E ..p.3....9.y....
3CEE:26F0 39 F0 7F 75 03 E9 BA FE 0B D2 75 CC 3D 01 00 77 9..u......u.=..w
3CEE:2700 C7 BE 2A 39 BF 08 39 E8 5E FA C3 0B D2 75 9A 3D ..*9..9.^....u.=
3CEE:2710 10 00 77 95 BE 2A 39 E8 52 01 D1 EA D1 D8 73 0A ..w..*9.R.....s.
3CEE:2720 50 52 BF 08 39 E8 DD F9 5A 58 8B C8 0B CA 74 1B PR..9...ZX....t.
3CEE:2730 50 52 E8 6F 01 BE 08 39 8B FE E8 C8 F9 BF 08 39 PR.o...9.......9
3CEE:2740 A5 A5 A5 A5 E8 74 01 5A 58 EB CF C3 B8 01 05 F9 .....t.ZX.......
3CEE:2750 C3 8B 36 36 38 8B FE 33 C0 B9 04 00 F3 AB 8B FE ..668..3........
3CEE:2760 F8 C3 FC BF 3A 39 8B 44 06 8A F8 A9 F0 7F 74 E1 ....:9.D......t.
3CEE:2770 25 F0 FF 78 D7 2D E0 3F 8A 5C 05 8B 4C 03 8B 54 %..x.-.?.\..L..T
3CEE:2780 01 56 D1 E2 D1 D1 D1 D3 D1 E2 D1 D1 D1 D3 D1 E2 .V..............
3CEE:2790 D1 D1 D1 D3 80 CF 80 A8 10 74 09 05 10 00 D1 EB .........t......
3CEE:27A0 D1 D9 D1 DA D1 F8 05 E0 3F 89 45 06 83 FB FE 72 ........?.E....r
3CEE:27B0 03 F9 EB 36 52 B8 B1 AF F7 E3 BD D8 57 03 EA 73 ...6R.......W..s
3CEE:27C0 03 BD FF FF 8B D3 33 C0 F7 F5 03 E8 D1 DD 8B D3 ......3.........
3CEE:27D0 8B C1 F7 F5 F9 13 E8 D1 DD 8B D3 8B C1 F7 F5 8B ................
3CEE:27E0 F0 58 F7 F5 8B DD 8B C8 03 DE 33 C0 D1 E1 D1 D3 .X........3.....
3CEE:27F0 D1 D0 D1 E1 D1 D3 D1 D0 D1 E1 D1 D3 D1 D0 D1 E1 ................
3CEE:2800 D1 D3 D1 D0 08 45 06 89 5D 04 89 4D 02 C7 05 00 .....E..]..M....
3CEE:2810 00 5E 57 E8 52 F9 5F E8 E3 F6 83 6D 06 10 F8 C3 .^W.R._....m....
3CEE:2820 8B 36 36 38 BF 3A 39 E9 D3 F6 8B 36 36 38 BF 3A .668.:9....668.:
3CEE:2830 39 E9 A6 F6 8B 36 36 38 BF 3A 39 E9 C7 F8 8B 36 9....668.:9....6
3CEE:2840 36 38 BF 3A 39 E9 20 F9 8B 3E 36 38 BE 3A 39 E9 68.:9. ..>68.:9.
3CEE:2850 88 F6 8B 3E 36 38 BE 3A 39 E9 0C F9 50 57 33 C0 ...>68.:9...PW3.
3CEE:2860 FC 8B 3E 36 38 AB AB AB AB 5F 58 C3 8B 3E 36 38 ..>68...._X..>68
3CEE:2870 3B F7 75 08 C3 BE 3A 39 8B 3E 36 38 A5 A5 A5 A5 ;.u...:9.>68....
3CEE:2880 8B 36 36 38 C3 8B 36 36 38 BF 3A 39 A5 A5 A5 A5 .668..668.:9....
3CEE:2890 83 EE 08 C3 BF 42 39 A5 A5 A5 A5 83 EE 08 C3 BE .....B9.........
3CEE:28A0 3A 39 EB 04 8B 36 36 38 58 FF 74 06 FF 74 04 FF :9...668X.t..t..
3CEE:28B0 74 02 FF 34 FF E0 BE 3A 39 EB 04 8B 36 36 38 58 t..4...:9...668X
3CEE:28C0 8F 04 8F 44 02 8F 44 04 8F 44 06 FF E0 8B 36 36 ...D..D..D....66
3CEE:28D0 38 BF 3A 39 A5 A5 A5 A5 8B F3 AD 91 0B C9 79 05 8.:9..........y.
3CEE:28E0 32 ED 51 EB 17 8B 3E 36 38 A5 A5 A5 A5 E3 1C 51 2.Q...>68......Q
3CEE:28F0 56 8B 36 36 38 BF 3A 39 E8 0A F8 5E 56 8B 3E 36 V.668.:9...^V.>6
3CEE:2900 38 E8 F9 F5 5E 59 83 C6 08 E2 E4 8B 3E 36 38 8B 8...^Y......>68.
3CEE:2910 F7 C3 8B 44 06 8A E8 25 F0 7F 74 2B 2D C0 3F 3D ...D...%..t+-.?=
3CEE:2920 70 03 77 23 B1 04 D3 E8 8A C8 80 E1 07 41 D0 E8 p.w#.........A..
3CEE:2930 D0 E8 D0 E8 98 8B D8 F7 DB 80 CD 10 86 6C 06 8A .............l..
3CEE:2940 40 06 D2 E0 88 6C 06 C3 E8 3E FF BF 74 39 E8 B4 @....l...>..t9..
3CEE:2950 F7 56 E8 E8 EF 5E E8 36 00 50 BB A4 39 B9 BE 39 .V...^.6.P..9..9
3CEE:2960 E8 93 00 E8 2E FF BE D8 39 BF E8 39 E8 96 F7 BF ........9..9....
3CEE:2970 E8 39 A5 A5 A5 A5 83 EE 08 8B FE BE 42 39 E8 59 .9..........B9.Y
3CEE:2980 F5 BE E8 39 E8 E1 F7 58 C3 BE 89 38 E8 FA FE 50 ...9...X...8...P
3CEE:2990 E8 70 EF BB 94 39 B9 9C 39 E8 AA 00 58 C3 BE 2A .p...9..9...X..*
3CEE:29A0 39 E8 C8 FE 8B FE F8 C3 E8 B1 FE 8B 36 36 38 EB 9...........668.
3CEE:29B0 F3 E8 EA FF 80 74 07 80 C3 58 B8 03 02 F9 C3 B8 .....t...X......
3CEE:29C0 B9 29 EB 0E B8 9E 29 BB B1 29 EB 06 BB A8 29 B8 .)....)..)....).
3CEE:29D0 BA 29 50 53 56 BF 84 39 E8 D9 ED 5E 77 0E 56 BF .)PSV..9...^w.V.
3CEE:29E0 8C 39 E8 CF ED 5E 72 09 83 C4 04 C3 5B 58 5B FF .9...^r.....[X[.
3CEE:29F0 E0 5B 58 58 FF E3 51 53 BF D8 39 A5 A5 A5 A5 83 .[XX..QS..9.....
3CEE:2A00 EE 08 8B FE E8 FE F6 BF E0 39 A5 A5 A5 A5 83 EE .........9......
3CEE:2A10 08 5B E8 B8 FE 5B 0B DB 74 11 BF E8 39 A5 A5 A5 .[...[..t...9...
3CEE:2A20 A5 BE E0 39 E8 45 FE E8 A3 FE F9 C3 E8 C7 FF 73 ...9.E.........s
3CEE:2A30 06 BE E8 39 E8 31 F7 BF E0 39 E9 C8 F6 E8 EC FF ...9.1...9......
3CEE:2A40 BF D8 39 E9 BF F6 51 E8 4A FE 8B FB E8 B6 F6 E8 ..9...Q.J.......
3CEE:2A50 FA FD E8 34 FE 5F BE 42 39 E8 A9 F6 BE 3A 39 E9 ...4._.B9....:9.
3CEE:2A60 78 F4                                           x.              

;; fn3CEE_2A62: 3CEE:2A62
;;   Called from:
;;     3CEE:2BE4 (in fn3CEE_2BC8)
;;     3CEE:2FF4 (in fn3CEE_2F84)
fn3CEE_2A62 proc
	mov	bp,39F0h
	mov	cx,8h
	mov	di,bp
	xor	ax,ax

l3CEE_2A6C:
	rep stosw

l3CEE_2A6E:
	mov	ax,cs:[bx+8h]
	add	[si+8h],ax
	mov	di,7h

l3CEE_2A78:
	mov	ax,4h
	sub	ax,di
	and	ah,al
	sub	al,ah
	sub	al,ah
	neg	al
	add	al,4h
	cbw
	mov	cx,ax
	push	bx
	push	si
	sub	bx,cx
	sub	bx,di
	add	bx,8h
	add	si,cx
	sub	si,di
	add	si,6h

l3CEE_2A9A:
	mov	ax,[si]
	mul	word ptr cs:[bx]
	add	ds:[bp+0h],ax
	adc	ds:[bp+2h],dx
	adc	word ptr ds:[bp+4h],0h
	sub	si,2h
	add	bx,2h
	loop	2A9Ah

l3CEE_2AB4:
	pop	si
	pop	bx
	add	bp,2h
	dec	di
	jnz	2A78h

l3CEE_2ABC:
	sub	bp,0Eh
	xchg	bp,si
	lodsw
	xchg	cx,ax
	lodsw
	or	cx,ax
	lodsw
	or	cx,ax
	or	cl,ch
	lodsw
	xchg	dx,ax
	or	dl,cl
	lodsw
	xchg	di,ax
	lodsw
	xchg	cx,ax
	lodsw
	xchg	bx,ax
	lodsw
	mov	si,bp
	or	ax,ax
	js	2AE9h

l3CEE_2ADC:
	dec	word ptr [si+8h]
	shl	dx,1h
	rcl	di,1h
	rcl	cx,1h
	rcl	bx,1h
	rcl	ax,1h

l3CEE_2AE9:
	mov	bp,1h
	and	bp,di
	or	dx,bp
	xor	bp,bp
	cmp	dx,8001h
	cmc
	adc	di,bp
	adc	cx,bp
	adc	bx,bp
	adc	ax,bp
	rcl	bp,1h
	add	[si+8h],bp
	ror	bp,1h
	or	ax,bp
	mov	[si],di
	mov	[si+2h],cx
	mov	[si+4h],bx
	mov	[si+6h],ax
	ret
3CEE:2B14             00 00 00 00 00 00 00 A0 04 00 00 00     ............
3CEE:2B20 00 00 00 00 00 C8 07 00 00 00 00 00 00 00 40 9C ..............@.
3CEE:2B30 0E 00 00 00 00 00 00 20 BC BE 1B 00 00 00 00 04 ....... ........
3CEE:2B40 BF C9 1B 8E 36 00 9E B5 70 2B A8 AD C5 9D 6B 00 ....6...p+....k.
3CEE:2B50 D5 A6 CF FF 49 1F 78 C2 D5 00 E0 8C E9 80 C9 47 ....I.x........G
3CEE:2B60 BA 93 AA 01 8E DE F9 9D FB EB 7E AA 53 03 CD CC ..........~.S...
3CEE:2B70 CC CC CC CC CC CC FD FF 0A D7 A3 70 3D 0A D7 A3 ...........p=...
3CEE:2B80 FA FF 2C 65 19 E2 58 17 B7 D1 F3 FF FD CE 61 84 ..,e..X.......a.
3CEE:2B90 11 77 CC AB E6 FF 5B E1 4D C4 BE 94 95 E6 CB FF .w....[.M.......
3CEE:2BA0 BA 94 39 45 AD 1E B1 CF 96 FF A5 E9 39 A5 27 EA ..9E........9.'.
3CEE:2BB0 7F A8 2C FF A1 E4 BC 64 7C 46 D0 DD 57 FE 3A 19 ..,....d|F..W.:.
3CEE:2BC0 7A 63 25 43 31 C0 AE FC                         zc%C1...        

;; fn3CEE_2BC8: 3CEE:2BC8
;;   Called from:
;;     3CEE:2CD8 (in fn3CEE_2C38)
;;     3CEE:2FE3 (in fn3CEE_2F84)
fn3CEE_2BC8 proc
	mov	bx,2B14h
	or	di,di
	jns	2BD4h

l3CEE_2BCF:
	mov	bx,2B6Eh
	neg	di

l3CEE_2BD4:
	sub	bx,0Ah

l3CEE_2BD7:
	add	bx,0Ah
	or	di,di
	jz	2BEBh

l3CEE_2BDE:
	shr	di,1h
	jnc	2BD7h

l3CEE_2BE2:
	push	bx
	push	di
	call	2A62h
	pop	di
	pop	bx
	jmp	2BD7h

l3CEE_2BEB:
	ret

l3CEE_2BEC:
	pop	ax

l3CEE_2BED:
	or	cl,30h
	or	cl,40h

l3CEE_2BF3:
	mov	dx,di
	xor	di,di
	mov	bp,di
	call	2D77h
	xor	bx,bx
	jmp	2CADh

l3CEE_2C01:
	mov	[3A0Eh],bx
	xor	bx,bx
	call	2E0Ch
	jc	2BEDh

l3CEE_2C0C:
	mov	di,ax

l3CEE_2C0E:
	call	2E0Ch
	jc	2BF3h

l3CEE_2C13:
	push	ax
	mov	ax,di
	mul	word ptr [3A0Eh]
	mov	di,ax
	mov	bp,dx
	mov	ax,bx
	imul	word ptr [3A0Eh]
	or	dx,dx
	jnz	2BECh

l3CEE_2C28:
	add	ax,bp
	mov	bx,ax
	jc	2BECh

l3CEE_2C2E:
	pop	ax
	add	di,ax
	adc	bx,0h
	jnc	2C0Eh

l3CEE_2C36:
	jmp	2BEDh

;; fn3CEE_2C38: 3CEE:2C38
;;   Called from:
;;     3CEE:0D8A (in fn3CEE_0D30)
fn3CEE_2C38 proc
	cld
	mov	[3A04h],di
	add	cx,si
	mov	[3A06h],cx
	mov	[3A10h],ax
	mov	[3A12h],dx
	xor	ax,ax
	mov	[3A0Ah],ax
	mov	[3A08h],ax
	mov	[3A0Ch],ax
	xchg	cx,ax
	call	2DFCh
	jnz	2C5Eh

l3CEE_2C5B:
	or	ch,80h

l3CEE_2C5E:
	or	bx,bx
	jnz	2C01h

l3CEE_2C62:
	call	2D42h
	xor	bx,bx
	call	2E5Dh
	jz	2CADh

l3CEE_2C6C:
	dec	si
	cmp	al,44h
	jz	2C8Dh

l3CEE_2C71:
	cmp	al,45h
	jz	2C87h

l3CEE_2C75:
	cmp	byte ptr [3A01h],0h
	jz	2CADh

l3CEE_2C7C:
	cmp	al,2Bh
	jz	2C86h

l3CEE_2C80:
	cmp	al,2Dh
	jz	2C86h

l3CEE_2C84:
	jnz	2CADh

l3CEE_2C86:
	dec	si

l3CEE_2C87:
	or	cx,402h
	jmp	2C90h

l3CEE_2C8D:
	or	cl,0Eh

l3CEE_2C90:
	mov	word ptr [3A10h],0h
	inc	si
	call	2DFCh
	lahf
	push	ax
	call	2D20h
	test	ch,2h
	jnz	2CA7h

l3CEE_2CA4:
	or	cl,40h

l3CEE_2CA7:
	pop	ax
	sahf
	jnz	2CADh

l3CEE_2CAB:
	neg	bx

l3CEE_2CAD:
	mov	di,[3A10h]
	or	di,di
	jnz	2CBBh

l3CEE_2CB5:
	test	cx,1872h
	jz	2CBEh

l3CEE_2CBB:
	or	cl,30h

l3CEE_2CBE:
	add	di,bx
	add	di,[3A0Ch]
	test	ch,10h
	jnz	2CCDh

l3CEE_2CC9:
	sub	di,[3A12h]

l3CEE_2CCD:
	cmp	di,190h
	jg	2D19h

l3CEE_2CD3:
	push	si
	push	cx
	mov	si,3A18h
	call	2BC8h
	mov	di,[3A04h]
	mov	byte ptr [3A22h],0h
	call	2E89h
	pop	cx
	pop	si
	jnz	2D19h

l3CEE_2CEB:
	mov	ax,[3A14h]
	mov	bx,[3A16h]
	test	ch,80h
	jz	2D0Ah

l3CEE_2CF7:
	not	bx
	neg	ax
	cmc
	adc	bx,0h
	test	word ptr [di+6h],7FF0h
	jz	2D0Ah

l3CEE_2D06:
	or	byte ptr [di+7h],80h

l3CEE_2D0A:
	cmp	word ptr [3A0Ah],7h
	jbe	2D14h

l3CEE_2D11:
	or	cl,8h

l3CEE_2D14:
	mov	ch,[3A22h]
	ret

l3CEE_2D19:
	or	cl,1h
	ret

;; fn3CEE_2D1D: 3CEE:2D1D
;;   Called from:
;;     3CEE:2D2E (in fn3CEE_2D20)
;;     3CEE:2D3D (in fn3CEE_2D20)
fn3CEE_2D1D proc
	mov	bx,7FFFh

;; fn3CEE_2D20: 3CEE:2D20
;;   Called from:
;;     3CEE:2C9C (in fn3CEE_2C38)
;;     3CEE:2D1D (in fn3CEE_2D1D)
fn3CEE_2D20 proc
	mov	byte ptr [3A0Eh],0Ah
	call	2E0Ch
	jc	2D41h

l3CEE_2D2A:
	cmp	bx,0CCCh
	ja	2D1Dh

l3CEE_2D30:
	or	ch,2h
	shl	bx,1h
	add	ax,bx
	shl	bx,1h
	shl	bx,1h
	add	bx,ax
	js	2D1Dh

l3CEE_2D3F:
	jmp	2D20h

l3CEE_2D41:
	ret

;; fn3CEE_2D42: 3CEE:2D42
;;   Called from:
;;     3CEE:2C62 (in fn3CEE_2C38)
fn3CEE_2D42 proc
	xor	di,di
	mov	bp,di
	mov	bx,di
	mov	dx,di

l3CEE_2D4A:
	call	2E23h
	jc	2D77h

l3CEE_2D4F:
	push	ax
	call	2DDDh
	pop	ax
	add	dx,ax
	adc	bx,0h
	adc	bp,0h
	adc	di,0h
	cmp	di,1999h
	jc	2D4Ah

l3CEE_2D65:
	call	2E23h
	jc	2D77h

l3CEE_2D6A:
	or	al,al
	jz	2D71h

l3CEE_2D6E:
	or	dl,1h

l3CEE_2D71:
	inc	word ptr [3A0Ch]
	jmp	2D65h

;; fn3CEE_2D77: 3CEE:2D77
;;   Called from:
;;     3CEE:2BF9 (in fn3CEE_2C38)
;;     3CEE:2D4D (in fn3CEE_2D42)
;;     3CEE:2D68 (in fn3CEE_2D42)
fn3CEE_2D77 proc
	mov	ax,di
	or	ax,bp
	or	ax,[3A0Ch]
	jnz	2D97h

l3CEE_2D81:
	test	bh,80h
	jz	2D9Dh

l3CEE_2D86:
	test	ch,80h
	jz	2D9Ah

l3CEE_2D8B:
	cmp	bx,8000h
	jnz	2D9Ah

l3CEE_2D91:
	or	dx,dx
	jnz	2D9Ah

l3CEE_2D95:
	jmp	2D9Dh

l3CEE_2D97:
	or	cl,10h

l3CEE_2D9A:
	or	cl,20h

l3CEE_2D9D:
	mov	[3A14h],dx
	mov	[3A16h],bx
	mov	ax,di
	or	ax,bp
	or	ax,bx
	or	ax,dx
	jz	2DCBh

l3CEE_2DAF:
	cmp	di,1999h
	jnc	2DBEh

l3CEE_2DB5:
	call	2DDDh
	dec	word ptr [3A0Ch]
	jmp	2DAFh

l3CEE_2DBE:
	mov	ax,40h

l3CEE_2DC1:
	or	di,di
	js	2DCBh

l3CEE_2DC5:
	dec	ax
	call	2DF3h
	jmp	2DC1h

l3CEE_2DCB:
	push	si
	mov	si,di
	mov	di,3A18h
	xchg	dx,ax
	stosw
	xchg	bx,ax
	stosw
	xchg	bp,ax
	stosw
	xchg	si,ax
	stosw
	xchg	dx,ax
	stosw
	pop	si
	ret

;; fn3CEE_2DDD: 3CEE:2DDD
;;   Called from:
;;     3CEE:2D50 (in fn3CEE_2D42)
;;     3CEE:2DB5 (in fn3CEE_2D77)
fn3CEE_2DDD proc
	push	di
	push	bp
	push	bx
	mov	ax,dx
	call	2DF3h
	call	2DF3h
	add	dx,ax
	pop	ax
	adc	bx,ax
	pop	ax
	adc	bp,ax
	pop	ax
	adc	di,ax

;; fn3CEE_2DF3: 3CEE:2DF3
;;   Called from:
;;     3CEE:2DC6 (in fn3CEE_2D77)
;;     3CEE:2DE2 (in fn3CEE_2DDD)
;;     3CEE:2DE5 (in fn3CEE_2DDD)
;;     3CEE:2DF1 (in fn3CEE_2DDD)
fn3CEE_2DF3 proc
	shl	dx,1h
	rcl	bx,1h
	rcl	bp,1h
	rcl	di,1h
	ret

;; fn3CEE_2DFC: 3CEE:2DFC
;;   Called from:
;;     3CEE:2C56 (in fn3CEE_2C38)
;;     3CEE:2C97 (in fn3CEE_2C38)
fn3CEE_2DFC proc
	call	2E5Dh
	jz	2E09h

l3CEE_2E01:
	cmp	al,2Dh
	jz	2E0Bh

l3CEE_2E05:
	cmp	al,2Bh
	jnz	2E0Ah

l3CEE_2E09:
	inc	si

l3CEE_2E0A:
	dec	si

l3CEE_2E0B:
	ret

;; fn3CEE_2E0C: 3CEE:2E0C
;;   Called from:
;;     3CEE:2C07 (in fn3CEE_2C38)
;;     3CEE:2C0E (in fn3CEE_2C38)
;;     3CEE:2D25 (in fn3CEE_2D20)
fn3CEE_2E0C proc
	call	2E5Dh
	jz	2E5Bh

l3CEE_2E11:
	sub	al,30h
	jc	2E5Ah

l3CEE_2E15:
	cmp	al,9h
	jle	2E1Bh

l3CEE_2E19:
	sub	al,7h

l3CEE_2E1B:
	cmp	al,[3A0Eh]
	jge	2E5Ah

l3CEE_2E21:
	jmp	2E40h

;; fn3CEE_2E23: 3CEE:2E23
;;   Called from:
;;     3CEE:2D4A (in fn3CEE_2D42)
;;     3CEE:2D65 (in fn3CEE_2D42)
fn3CEE_2E23 proc
	call	2E5Dh
	jz	2E5Bh

l3CEE_2E28:
	cmp	al,2Eh
	jz	2E4Ch

l3CEE_2E2C:
	sub	al,30h
	jc	2E5Ah

l3CEE_2E30:
	cmp	al,9h
	ja	2E5Ah

l3CEE_2E34:
	test	ch,10h
	jz	2E47h

l3CEE_2E39:
	dec	word ptr [3A0Ch]
	or	ch,8h

l3CEE_2E40:
	inc	word ptr [3A0Ah]
	xor	ah,ah
	ret

l3CEE_2E47:
	or	ch,20h
	jmp	2E40h

l3CEE_2E4C:
	test	ch,10h
	jnz	2E5Ah

l3CEE_2E51:
	inc	word ptr [3A08h]
	or	ch,10h
	jmp	2E23h

;; fn3CEE_2E5A: 3CEE:2E5A
;;   Called from:
;;     3CEE:2E13 (in fn3CEE_2E0C)
;;     3CEE:2E1F (in fn3CEE_2E0C)
;;     3CEE:2E26 (in fn3CEE_2E23)
;;     3CEE:2E2E (in fn3CEE_2E23)
;;     3CEE:2E32 (in fn3CEE_2E23)
;;     3CEE:2E4F (in fn3CEE_2E23)
fn3CEE_2E5A proc
	dec	si

l3CEE_2E5B:
	stc
	ret

;; fn3CEE_2E5D: 3CEE:2E5D
;;   Called from:
;;     3CEE:2C67 (in fn3CEE_2C38)
;;     3CEE:2DFC (in fn3CEE_2DFC)
;;     3CEE:2E0C (in fn3CEE_2E0C)
;;     3CEE:2E23 (in fn3CEE_2E23)
fn3CEE_2E5D proc
	cmp	si,[3A06h]
	jge	2E86h

l3CEE_2E63:
	lodsb
	cmp	byte ptr [3A00h],0h
	jz	2E7Bh

l3CEE_2E6B:
	cmp	al,20h
	jz	2E5Dh

l3CEE_2E6F:
	cmp	al,9h
	jz	2E5Dh

l3CEE_2E73:
	cmp	al,0Ah
	jz	2E5Dh

l3CEE_2E77:
	cmp	al,0Dh
	jz	2E5Dh

l3CEE_2E7B:
	cmp	al,61h
	jc	2E85h

l3CEE_2E7F:
	cmp	al,7Ah
	ja	2E85h

l3CEE_2E83:
	and	al,5Fh

l3CEE_2E85:
	ret

l3CEE_2E86:
	xor	al,al
	ret

;; fn3CEE_2E89: 3CEE:2E89
;;   Called from:
;;     3CEE:2CE4 (in fn3CEE_2C38)
fn3CEE_2E89 proc
	push	di
	lodsw
	xchg	dx,ax
	lodsw
	xchg	cx,ax
	lodsw
	xchg	bp,ax
	lodsw
	mov	di,ax
	or	ax,bp
	or	ax,cx
	or	ax,dx
	jz	2EE4h

l3CEE_2E9B:
	lodsw
	add	ax,3FEh
	js	2EDFh

l3CEE_2EA1:
	shl	di,1h
	shr	ax,1h
	rcr	di,1h
	mov	bx,5h

l3CEE_2EAA:
	shl	dx,1h
	rcl	cx,1h
	rcl	bp,1h
	rcl	di,1h
	rcl	ax,1h
	rcl	bh,1h
	dec	bl
	jnz	2EAAh

l3CEE_2EBA:
	inc	bx
	and	bl,cl
	or	dl,bl
	xor	si,si
	cmp	dx,8001h
	cmc
	adc	cx,si
	adc	bp,si
	adc	di,si
	adc	ax,si
	adc	bh,0h
	test	ax,0FFF0h
	jz	2EE4h

l3CEE_2ED6:
	cmp	ax,7FF0h
	cmc
	adc	bh,0h
	jmp	2EEEh

l3CEE_2EDF:
	or	byte ptr [3A22h],1h

l3CEE_2EE4:
	xor	ax,ax
	mov	bx,ax
	mov	cx,ax
	mov	bp,ax
	mov	di,ax

l3CEE_2EEE:
	mov	si,di
	pop	di
	mov	[di],cx
	mov	[di+2h],bp
	mov	[di+4h],si
	mov	[di+6h],ax
	or	bh,bh
	ret

;; fn3CEE_2EFF: 3CEE:2EFF
;;   Called from:
;;     3CEE:2FE9 (in fn3CEE_2F84)
fn3CEE_2EFF proc
	push	bx
	push	si
	mov	ah,[si+9h]
	mov	al,cs:[bx+9h]
	and	ax,8080h
	cmp	al,ah
	jnz	2F25h

l3CEE_2F0F:
	add	si,0Ah
	add	bx,0Ah
	mov	cx,5h

l3CEE_2F18:
	sub	si,2h
	sub	bx,2h
	mov	ax,[si]
	cmp	ax,cs:[bx]
	loope	2F18h

l3CEE_2F25:
	pop	si
	pop	bx
	ret

;; fn3CEE_2F28: 3CEE:2F28
;;   Called from:
;;     3CEE:2FAA (in fn3CEE_2F84)
fn3CEE_2F28 proc
	push	si
	lodsw
	xchg	bp,ax
	lodsw
	xchg	dx,ax
	lodsw
	xchg	bx,ax
	lodsw
	xor	di,di
	mov	cx,5h

l3CEE_2F35:
	shr	ax,1h
	rcr	bx,1h
	rcr	dx,1h
	rcr	bp,1h
	rcr	di,1h
	loop	2F35h

l3CEE_2F41:
	shl	bx,1h
	rcl	ax,1h
	cmp	ax,1h
	cmc
	rcr	bx,1h
	sub	ax,3FEh
	pop	si
	mov	[si],di
	mov	[si+2h],bp
	mov	[si+4h],dx
	mov	[si+6h],bx
	mov	[si+8h],ax
	ret
3CEE:2F5E                                           66 FC               f.
3CEE:2F60 FF FF FF FF FF FF 00 00 CD CC CC CC CC CC CC CC ................
3CEE:2F70 FD FF                                           ..              

l3CEE_2F72:
	mov	si,3A30h
	mov	byte ptr [si],1h
	mov	byte ptr [si+1h],30h
	xor	ax,ax
	mov	dx,ax
	inc	ax
	pop	bx
	pop	es
	ret

;; fn3CEE_2F84: 3CEE:2F84
;;   Called from:
;;     3CEE:0DC7 (in fn3CEE_0DA8)
fn3CEE_2F84 proc
	push	es
	mov	ax,ds
	mov	es,ax
	cld
	mov	di,3A24h
	push	di
	mov	cx,4h
	rep movsw
	pop	si
	mov	cx,[si+6h]
	and	byte ptr [si+7h],7Fh
	mov	bl,20h
	test	cx,7FF0h
	jz	2FA9h

l3CEE_2FA3:
	or	cx,cx
	jns	2FA9h

l3CEE_2FA7:
	mov	bl,2Dh

l3CEE_2FA9:
	push	bx
	call	2F28h
	xor	di,di
	mov	si,3A2Bh
	lodsb
	test	al,80h
	jz	2F72h

l3CEE_2FB7:
	mov	bh,al
	lodsw
	add	ax,3FFEh
	mov	cx,ax
	mov	dx,4D10h
	mul	dx
	xchg	cx,ax
	mov	al,4Dh
	mul	ah
	add	cx,ax
	adc	dx,di
	mov	al,9Ah
	mul	bh
	add	cx,ax
	adc	di,dx
	sub	cx,12F4h
	sbb	di,1343h
	push	di
	neg	di
	mov	si,3A24h
	call	2BC8h
	mov	bx,2F5Eh
	call	2EFFh
	pop	di
	jc	2FF8h

l3CEE_2FEF:
	inc	di
	push	di
	mov	bx,2F68h
	call	2A62h
	pop	di

l3CEE_2FF8:
	push	di
	lodsw
	xchg	di,ax
	lodsw
	xchg	bp,ax
	lodsw
	xchg	dx,ax
	lodsw
	xchg	bx,ax
	lodsw
	xchg	cx,ax
	neg	cx
	mov	si,di
	xor	ax,ax
	jcxz	3017h

l3CEE_300B:
	shr	bx,1h
	rcr	dx,1h
	rcr	bp,1h
	rcr	si,1h
	rcr	ah,1h
	loop	300Bh

l3CEE_3017:
	add	ah,56h
	adc	si,39Ah
	adc	bp,cx
	adc	dx,cx
	adc	bx,cx
	mov	di,3A31h
	mov	cx,10h

l3CEE_302A:
	xor	al,al
	push	cx
	push	bx
	push	dx
	push	bp
	push	si
	push	ax
	shl	ah,1h
	rcl	si,1h
	rcl	bp,1h
	rcl	dx,1h
	rcl	bx,1h
	rcl	al,1h
	shl	ah,1h
	rcl	si,1h
	rcl	bp,1h
	rcl	dx,1h
	rcl	bx,1h
	rcl	al,1h
	pop	cx
	add	ah,ch
	pop	cx
	adc	si,cx
	pop	cx
	adc	bp,cx
	pop	cx
	adc	dx,cx
	pop	cx
	adc	bx,cx
	adc	al,0h
	shl	ah,1h
	rcl	si,1h
	rcl	bp,1h
	rcl	dx,1h
	rcl	bx,1h
	rcl	al,1h
	add	al,30h
	stosb
	pop	cx
	loop	302Ah

l3CEE_306D:
	dec	di
	dec	cx
	mov	al,30h
	std

l3CEE_3072:
	rep scasb

l3CEE_3074:
	cld
	add	cx,12h
	mov	si,3A30h
	mov	[si],cl
	mov	ax,1h
	pop	dx
	pop	bx
	pop	es
	ret
3CEE:3084             55 8B EC 56 57 32 C0 E8 1B 00 5F 5E     U..VW2...._^
3CEE:3090 8B E5 5D CB 55 8B EC 56 57 B0 80 E8 0B 00 80 36 ..].U..VW......6
3CEE:30A0 6C 35 80 5F 5E 8B E5 5D CB FC 1E 07 8D 76 06 BF l5._^..].....v..
3CEE:30B0 65 35 36 A5 36 A5 36 A5 36 A5 30 45 FF 36 30 44 e56.6.6.6.0E.60D
3CEE:30C0 FF FF 36 36 38 BE 65 35 89 36 36 38 55 E8 E0 E9 ..668.e5.668U...
3CEE:30D0 F6 44 07 80 79 1B 5D 55 8D 7E 06 16 07 1E E8 D3 .D..y.]U.~......
3CEE:30E0 E6 58 8E D8 8E C0 BE 65 35 74 06 BF 42 3A E8 E9 .X.....e5t..B:..
3CEE:30F0 ED 5D 8F 06 36 38 96 8C DA C3 55 8B EC 56 57 FC .]..68....U..VW.
3CEE:3100 1E 07 8D 76 06 BF 4A 3A B9 08 00 36 A5 E2 FC F7 ...v..J:...6....
3CEE:3110 06 58 3A F0 7F 75 0B 33 C0 BF 65 35 AB AB AB AB .X:..u.3..e5....
3CEE:3120 EB 28 55 FF 36 36 38 C7 06 36 38 65 35 BE 4A 3A .(U.668..68e5.J:
3CEE:3130 BF 52 3A E8 32 F0 E8 77 E9 BF 52 3A E8 C6 EF BE .R:.2..w..R:....
3CEE:3140 4A 3A E8 95 ED 8F 06 36 38 5D B8 65 35 8C DA 5F J:.....68].e5.._
3CEE:3150 5E 8B E5 5D CB BB 5B 3A BA CE 25 E9 FF E4 BB 60 ^..]..[:..%....`
3CEE:3160 3A BA B0 24 E9 0E E5 BB 65 3A BA 9A 24 E9 05 E5 :..$....e:..$...
3CEE:3170 BB 6C 3A BA 68 25 E9 FC E4 BB 71 3A BA 62 27 E9 .l:.h%....q:.b'.
3CEE:3180 F3 E4                                           ..              

;; fn3CEE_3182: 3CEE:3182
;;   Called from:
;;     3CEE:158D (in fn3CEE_1576)
;;     3CEE:1738 (in fn3CEE_8A23)
;;     3CEE:1740 (in fn3CEE_8A23)
fn3CEE_3182 proc
	mov	cl,[bx]
	sub	ch,ch
	inc	bx
	mov	dx,bx
	mov	bx,2h
	mov	ah,40h
	int	21h
	retf

;; fn3CEE_3191: 3CEE:3191
;;   Called from:
;;     3CEE:DA56 (in fn3CEE_DA1B)
;;     3CEE:DA60 (in fn3CEE_DA1B)
fn3CEE_3191 proc
	push	si
	xchg	si,ax
	xchg	dx,ax
	test	ax,ax
	jz	319Ah

l3CEE_3198:
	mul	bx

l3CEE_319A:
	xchg	cx,ax
	test	ax,ax
	jz	31A3h

l3CEE_319F:
	mul	si
	add	cx,ax

l3CEE_31A3:
	xchg	si,ax
	mul	bx
	add	dx,cx
	pop	si
	retf
3CEE:31AA                               00 00 00 00 00 00           ......
