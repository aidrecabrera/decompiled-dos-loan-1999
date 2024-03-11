;;; Segment 2B41 (2B41:0000)
2B41:0000 2B C0 A3 A2 12 CB                               +.....          

;; fn2B41_0006: 2B41:0006
;;   Called from:
;;     2B41:0169 (in fn2B41_00B4)
;;     2B41:018E (in fn2B41_00B4)
;;     2B41:0248 (in fn2B41_01FA)
;;     2B41:02AE (in fn2B41_01FA)
;;     2B41:02DE (in fn2B41_01FA)
;;     2B41:0305 (in fn2B41_01FA)
;;     2B41:0369 (in fn2B41_01FA)
;;     2B41:039E (in fn2B41_01FA)
;;     2B41:03D6 (in fn2B41_01FA)
;;     2B41:040E (in fn2B41_01FA)
fn2B41_0006 proc
	push	bp
	mov	bp,sp
	sub	sp,2h
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+30h],0h
	jz	0028h

l2B41_0016:
	push	word ptr es:[bx+30h]
	call	far 2D1Ah:0598h
	add	sp,2h
	mov	[bp-2h],al
	jmp	0048h
2B41:0027                      90                                .        

l2B41_0028:
	mov	ax,1h
	push	ax
	lea	ax,[bp-2h]
	push	ss
	push	ax
	les	bx,[bp+6h]
	push	word ptr es:[bx+34h]
	call	far 208Fh:00C9h
	add	sp,8h
	or	ax,ax
	jnz	0048h

l2B41_0044:
	mov	byte ptr [bp-2h],1Ah

l2B41_0048:
	mov	al,[bp-2h]
	sub	ah,ah
	mov	sp,bp
	pop	bp
	retf
2B41:0051    90                                            .              

;; fn2B41_0052: 2B41:0052
;;   Called from:
;;     2B41:01D1 (in fn2B41_01B8)
;;     2B41:01E7 (in fn2B41_01B8)
;;     2B41:048F (in fn2B41_042E)
;;     2B41:04D2 (in fn2B41_042E)
;;     2B41:0525 (in fn2B41_042E)
;;     2B41:0542 (in fn2B41_042E)
;;     2B41:05A7 (in fn2B41_042E)
fn2B41_0052 proc
	push	bp
	mov	bp,sp
	sub	sp,2h
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+30h],0h
	jz	007Ch

l2B41_0062:
	push	word ptr [bp+0Eh]
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	push	word ptr es:[bx+30h]
	call	far 2D1Ah:064Eh
	add	sp,8h
	mov	sp,bp
	pop	bp
	retf
2B41:007B                                  90                        .    

l2B41_007C:
	push	word ptr [bp+0Eh]
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	les	bx,[bp+6h]
	push	word ptr es:[bx+34h]
	call	far 208Fh:00EFh
	add	sp,8h
	mov	[bp-2h],ax
	mov	ax,[bp+0Eh]
	cmp	[bp-2h],ax
	jnc	00AFh

l2B41_009F:
	mov	ax,5E96h
	push	ds
	push	ax
	sub	ax,ax
	push	ax
	call	far 20B2h:10ACh
	add	sp,6h

l2B41_00AF:
	mov	sp,bp
	pop	bp
	retf
2B41:00B3          90                                        .            

;; fn2B41_00B4: 2B41:00B4
;;   Called from:
;;     2644:21AB (in fn2644_20AA)
fn2B41_00B4 proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	push	si
	les	bx,[bp+6h]
	mov	word ptr es:[bx+4Ah],0h
	mov	word ptr es:[bx+48h],0h
	mov	word ptr es:[bx+42h],1h
	mov	word ptr es:[bx+46h],0h
	push	word ptr es:[bx+20h]
	mov	ax,20h
	push	ax
	push	word ptr es:[bx+5Ch]
	push	word ptr es:[bx+5Ah]
	call	far 2017h:0228h
	add	sp,8h
	mov	word ptr [bp-4h],1h
	mov	word ptr [bp-2h],1h

l2B41_00F8:
	cmp	word ptr [bp-2h],0h
	jnz	0101h

l2B41_00FE:
	jmp	019Ch

l2B41_0101:
	les	bx,[bp+6h]
	mov	al,es:[bx+60h]
	sub	ah,ah
	or	ax,ax
	jz	015Dh

l2B41_010E:
	cmp	ax,0Ah
	jz	015Dh

l2B41_0113:
	cmp	ax,0Dh
	jz	0158h

l2B41_0118:
	cmp	ax,1Ah
	jz	0146h

l2B41_011D:
	mov	si,[bp-4h]
	inc	word ptr [bp-4h]
	les	bx,es:[bx+5Ah]
	mov	es:[bx+si],al
	les	bx,[bp+6h]
	mov	ax,[bp-4h]
	sub	dx,dx
	cmp	es:[bx+22h],dx
	jc	017Ah

l2B41_0138:
	ja	0140h

l2B41_013A:
	cmp	es:[bx+20h],ax
	jbe	017Ah

l2B41_0140:
	mov	ax,1h
	jmp	017Ch
2B41:0145                90                                    .          

l2B41_0146:
	cmp	word ptr [bp-4h],1h
	jnz	0158h

l2B41_014C:
	mov	word ptr es:[bx+48h],1h
	mov	word ptr es:[bx+42h],0h

l2B41_0158:
	mov	word ptr [bp-2h],0h

l2B41_015D:
	cmp	word ptr [bp-2h],0h
	jz	00F8h

l2B41_0163:
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	0006h
	add	sp,4h
	les	bx,[bp+6h]
	mov	es:[bx+60h],al
	jmp	00F8h

l2B41_017A:
	sub	ax,ax

l2B41_017C:
	mov	[bp-2h],ax
	jmp	015Dh
2B41:0181    90                                            .              

l2B41_0182:
	les	bx,[bp+6h]
	cmp	byte ptr es:[bx+60h],1Ah
	jz	01A6h

l2B41_018C:
	push	es
	push	bx
	push	cs
	call	0006h
	add	sp,4h
	les	bx,[bp+6h]
	mov	es:[bx+60h],al

l2B41_019C:
	les	bx,[bp+6h]
	cmp	byte ptr es:[bx+60h],0Dh
	jnz	0182h

l2B41_01A6:
	cmp	byte ptr es:[bx+60h],0Dh
	jnz	01B2h

l2B41_01AD:
	mov	byte ptr es:[bx+60h],0h

l2B41_01B2:
	pop	si
	mov	sp,bp
	pop	bp
	retf
2B41:01B7                      90                                .        

;; fn2B41_01B8: 2B41:01B8
;;   Called from:
;;     2644:229E (in fn2644_21CA)
fn2B41_01B8 proc
	push	bp
	mov	bp,sp
	les	bx,[bp+6h]
	mov	ax,es:[bx+20h]
	dec	ax
	push	ax
	mov	ax,es:[bx+5Ah]
	mov	dx,es:[bx+5Ch]
	inc	ax
	push	dx
	push	ax
	push	es
	push	bx
	push	cs
	call	0052h
	add	sp,0Ah
	mov	ax,2h
	push	ax
	mov	ax,5EA0h
	push	ds
	push	ax
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	0052h
	add	sp,0Ah
	les	bx,[bp+6h]
	mov	word ptr es:[bx+56h],0h
	pop	bp
	retf
2B41:01F9                            90                            .      

;; fn2B41_01FA: 2B41:01FA
;;   Called from:
;;     2644:21BE (in fn2644_20AA)
fn2B41_01FA proc
	push	bp
	mov	bp,sp
	sub	sp,10h
	push	si
	les	bx,[bp+6h]
	mov	word ptr es:[bx+4Ah],0h
	mov	word ptr es:[bx+48h],0h
	mov	word ptr es:[bx+42h],1h
	mov	word ptr es:[bx+46h],0h
	push	word ptr es:[bx+20h]
	mov	ax,20h
	push	ax
	push	word ptr es:[bx+5Ch]
	push	word ptr es:[bx+5Ah]
	call	far 2017h:0228h
	add	sp,8h
	les	bx,[bp+6h]
	mov	al,es:[bx+60h]
	mov	[bp-2h],al
	or	al,al
	jz	0246h

l2B41_0242:
	cmp	al,0Ah
	jnz	0252h

l2B41_0246:
	push	es
	push	bx
	push	cs
	call	0006h
	add	sp,4h
	mov	[bp-2h],al

l2B41_0252:
	cmp	byte ptr [bp-2h],1Ah
	jnz	026Ch

l2B41_0258:
	les	bx,[bp+6h]
	mov	word ptr es:[bx+48h],1h
	mov	word ptr es:[bx+42h],0h
	pop	si
	mov	sp,bp
	pop	bp
	retf

l2B41_026C:
	mov	word ptr [bp-8h],0h

l2B41_0271:
	les	bx,[bp+6h]
	mov	ax,[bp-8h]
	cmp	es:[bx+0A6h],ax
	jbe	02C6h

l2B41_027E:
	mov	ax,12h
	mul	word ptr [bp-8h]
	mov	cx,es:[bx+0A8h]
	mov	si,es:[bx+0AAh]
	add	cx,ax
	mov	[bp-0Ch],cx
	mov	[bp-0Ah],si

l2B41_0296:
	cmp	byte ptr [bp-2h],0h
	jz	02A8h

l2B41_029C:
	cmp	byte ptr [bp-2h],20h
	jz	02A8h

l2B41_02A2:
	cmp	byte ptr [bp-2h],0Ah
	jnz	02BAh

l2B41_02A8:
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	0006h
	add	sp,4h
	mov	[bp-2h],al
	jmp	0296h

l2B41_02BA:
	cmp	byte ptr [bp-2h],1Ah
	jz	02C6h

l2B41_02C0:
	cmp	byte ptr [bp-2h],0Dh
	jnz	02EAh

l2B41_02C6:
	cmp	byte ptr [bp-2h],0Dh
	jnz	02CFh

l2B41_02CC:
	jmp	03FAh

l2B41_02CF:
	cmp	byte ptr [bp-2h],1Ah
	jnz	02D8h

l2B41_02D5:
	jmp	03FAh

l2B41_02D8:
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	0006h
	add	sp,4h
	mov	[bp-2h],al
	jmp	02C6h

l2B41_02EA:
	cmp	byte ptr [1304h],0h
	jz	0318h

l2B41_02F1:
	mov	al,[1304h]
	cmp	[bp-2h],al
	jnz	0312h

l2B41_02F9:
	mov	al,[bp-2h]
	mov	[bp-0Eh],al
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	0006h
	add	sp,4h
	mov	[bp-2h],al
	jmp	031Ch
2B41:0311    90                                            .              

l2B41_0312:
	mov	byte ptr [bp-0Eh],2Ch
	jmp	031Ch

l2B41_0318:
	mov	byte ptr [bp-0Eh],20h

l2B41_031C:
	les	bx,[bp-0Ch]
	mov	ax,es:[bx+8h]
	les	bx,[bp+6h]
	add	ax,es:[bx+5Ah]
	mov	dx,es:[bx+5Ch]
	mov	[bp-6h],ax
	mov	[bp-4h],dx
	les	bx,[bp-0Ch]
	mov	ax,es:[bx+2h]
	mov	[bp-10h],ax
	jmp	0373h

l2B41_0340:
	mov	al,[bp-0Eh]
	cmp	[bp-2h],al
	jz	0379h

l2B41_0348:
	cmp	byte ptr [bp-2h],0Dh
	jz	0379h

l2B41_034E:
	cmp	byte ptr [bp-2h],1Ah
	jz	0379h

l2B41_0354:
	les	bx,[bp-6h]
	inc	word ptr [bp-6h]
	mov	al,[bp-2h]
	mov	es:[bx],al
	dec	word ptr [bp-10h]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	0006h
	add	sp,4h
	mov	[bp-2h],al

l2B41_0373:
	cmp	word ptr [bp-10h],0h
	jnz	0340h

l2B41_0379:
	les	bx,[bp-0Ch]
	cmp	word ptr es:[bx],100h
	jnz	03B0h

l2B41_0383:
	cmp	byte ptr [1304h],0h
	jz	03B0h

l2B41_038A:
	jmp	03A8h

l2B41_038C:
	cmp	byte ptr [bp-2h],0Dh
	jz	03B0h

l2B41_0392:
	cmp	byte ptr [bp-2h],1Ah
	jz	03B0h

l2B41_0398:
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	0006h
	add	sp,4h
	mov	[bp-2h],al

l2B41_03A8:
	mov	al,[bp-0Eh]
	cmp	[bp-2h],al
	jnz	038Ch

l2B41_03B0:
	cmp	byte ptr [1304h],0h
	jz	03BCh

l2B41_03B7:
	mov	al,2Ch
	jmp	03BEh
2B41:03BB                                  90                        .    

l2B41_03BC:
	mov	al,20h

l2B41_03BE:
	mov	[bp-0Eh],al
	jmp	03E0h
2B41:03C3          90                                        .            

l2B41_03C4:
	cmp	byte ptr [bp-2h],0Dh
	jz	03E8h

l2B41_03CA:
	cmp	byte ptr [bp-2h],1Ah
	jz	03E8h

l2B41_03D0:
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	0006h
	add	sp,4h
	mov	[bp-2h],al

l2B41_03E0:
	mov	al,[bp-0Eh]
	cmp	[bp-2h],al
	jnz	03C4h

l2B41_03E8:
	mov	al,[bp-0Eh]
	cmp	[bp-2h],al
	jnz	03F4h

l2B41_03F0:
	mov	byte ptr [bp-2h],0h

l2B41_03F4:
	inc	word ptr [bp-8h]
	jmp	0271h

l2B41_03FA:
	cmp	byte ptr [bp-2h],0Dh
	jnz	0418h

l2B41_0400:
	jmp	0408h

l2B41_0402:
	cmp	byte ptr [bp-2h],1Ah
	jz	041Eh

l2B41_0408:
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	0006h
	add	sp,4h
	mov	[bp-2h],al

l2B41_0418:
	cmp	byte ptr [bp-2h],0Ah
	jz	0402h

l2B41_041E:
	les	bx,[bp+6h]
	mov	al,[bp-2h]
	mov	es:[bx+60h],al
	pop	si
	mov	sp,bp
	pop	bp
	retf
2B41:042D                                        90                    .  

;; fn2B41_042E: 2B41:042E
;;   Called from:
;;     2644:22B2 (in fn2644_21CA)
fn2B41_042E proc
	push	bp
	mov	bp,sp
	sub	sp,0Eh
	push	si
	mov	word ptr [bp-0Ch],1h
	mov	word ptr [bp-6h],0h

l2B41_043F:
	les	bx,[bp+6h]
	mov	ax,[bp-6h]
	cmp	es:[bx+0A6h],ax
	ja	044Fh

l2B41_044C:
	jmp	0598h

l2B41_044F:
	mov	ax,12h
	mul	word ptr [bp-6h]
	mov	cx,es:[bx+0A8h]
	mov	si,es:[bx+0AAh]
	add	cx,ax
	mov	[bp-0Ah],cx
	mov	[bp-8h],si
	cmp	word ptr [bp-0Ch],0h
	jz	0474h

l2B41_046D:
	mov	word ptr [bp-0Ch],0h
	jmp	0496h

l2B41_0474:
	mov	ax,1h
	push	ax
	cmp	byte ptr [1304h],0h
	jz	0484h

l2B41_047F:
	mov	ax,5EA4h
	jmp	0487h

l2B41_0484:
	mov	ax,5EA6h

l2B41_0487:
	push	ds
	push	ax
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	0052h
	add	sp,0Ah

l2B41_0496:
	les	bx,[bp-0Ah]
	mov	ax,es:[bx]
	cmp	ax,10h
	jnz	04A4h

l2B41_04A1:
	jmp	0550h

l2B41_04A4:
	cmp	ax,40h
	jnz	04ACh

l2B41_04A9:
	jmp	0550h

l2B41_04AC:
	cmp	ax,80h
	jnz	04B4h

l2B41_04B1:
	jmp	0550h

l2B41_04B4:
	cmp	ax,100h
	jz	04BCh

l2B41_04B9:
	jmp	0549h

l2B41_04BC:
	cmp	byte ptr [1304h],0h
	jz	04D9h

l2B41_04C3:
	mov	ax,1h
	push	ax
	mov	ax,1304h
	push	ds
	push	ax
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	0052h
	add	sp,0Ah

l2B41_04D9:
	les	bx,[bp-0Ah]
	mov	ax,es:[bx+2h]
	mov	[bp-0Eh],ax
	mov	ax,es:[bx+8h]
	les	bx,[bp+6h]
	add	ax,es:[bx+5Ah]
	mov	dx,es:[bx+5Ch]
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	jmp	050Ah

l2B41_04FA:
	mov	si,[bp-0Eh]
	les	bx,[bp-4h]
	cmp	byte ptr es:[bx+si-1h],20h
	jnz	0510h

l2B41_0507:
	dec	word ptr [bp-0Eh]

l2B41_050A:
	cmp	word ptr [bp-0Eh],0h
	jnz	04FAh

l2B41_0510:
	cmp	word ptr [bp-0Eh],0h
	jz	052Ch

l2B41_0516:
	push	word ptr [bp-0Eh]
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	0052h
	add	sp,0Ah

l2B41_052C:
	cmp	byte ptr [1304h],0h
	jz	0549h

l2B41_0533:
	mov	ax,1h
	push	ax
	mov	ax,1304h
	push	ds
	push	ax

l2B41_053C:
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	0052h
	add	sp,0Ah

l2B41_0549:
	inc	word ptr [bp-6h]
	jmp	043Fh
2B41:054F                                              90                .

l2B41_0550:
	les	bx,[bp-0Ah]
	mov	ax,es:[bx+2h]
	mov	[bp-0Eh],ax
	mov	ax,es:[bx+8h]
	les	bx,[bp+6h]
	add	ax,es:[bx+5Ah]
	mov	dx,es:[bx+5Ch]
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	jmp	0581h
2B41:0571    90                                            .              

l2B41_0572:
	les	bx,[bp-4h]
	cmp	byte ptr es:[bx],20h
	jnz	0587h

l2B41_057B:
	dec	word ptr [bp-0Eh]
	inc	word ptr [bp-4h]

l2B41_0581:
	cmp	word ptr [bp-0Eh],0h
	jnz	0572h

l2B41_0587:
	cmp	word ptr [bp-0Eh],0h
	jz	0549h

l2B41_058D:
	push	word ptr [bp-0Eh]
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	jmp	053Ch

l2B41_0598:
	mov	ax,2h
	push	ax
	mov	ax,5EA8h
	push	ds
	push	ax
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	0052h
	add	sp,0Ah
	les	bx,[bp+6h]
