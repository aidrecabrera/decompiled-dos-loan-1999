;;; Segment 4099 (4099:0000)
4099:0000 3B 83 C4 02 5E 5F 8B E5 5D CB                   ;...^_..].      
3CEE:3ABA                               90 90                       ..    

;; fn3CEE_3ABC: 3CEE:3ABC
;;   Called from:
;;     3CEE:4366 (in fn3CEE_4188)
;;     3CEE:4396 (in fn3CEE_4188)
;;     3CEE:565D (in fn3CEE_5556)
;;     3CEE:56AA (in fn3CEE_5556)
;;     3CEE:572A (in fn3CEE_5556)
fn3CEE_3ABC proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	push	si
	mov	word ptr [bp-2h],0h
	jmp	3AD5h

l3CEE_3ACA:
	mov	al,[bp+0Ah]
	cmp	[bp-4h],al
	jz	3AE5h

l3CEE_3AD2:
	inc	word ptr [bp-2h]

l3CEE_3AD5:
	mov	bx,[bp-2h]
	les	si,[bp+6h]
	mov	al,es:[bx+si]
	mov	[bp-4h],al
	or	al,al
	jnz	3ACAh

l3CEE_3AE5:
	mov	ax,[bp-2h]
	pop	si
	mov	sp,bp
	pop	bp
	retf
3CEE:3AED                                        90                    .  

;; fn3CEE_3AEE: 3CEE:3AEE
;;   Called from:
;;     3CEE:4790 (in fn3CEE_471A)
;;     3CEE:4C63 (in fn3CEE_4A3C)
;;     3CEE:51B0 (in fn3CEE_4EAC)
;;     3CEE:5215 (in fn3CEE_4EAC)
fn3CEE_3AEE proc
	les	bx,[130Ah]
	mov	ax,es:[bx]
	or	ax,es:[bx+2h]
	jz	3B08h

l3CEE_3AFB:
	les	bx,es:[bx]
	mov	ax,es:[bx+28h]
	mov	dx,es:[bx+2Ah]
	retf
3CEE:3B07                      90                                .        

l3CEE_3B08:
	sub	ax,ax
	cwd
	retf

;; fn3CEE_3B0C: 3CEE:3B0C
;;   Called from:
;;     3CEE:3CD2 (in fn3CEE_3CD2)
;;     3CEE:4F93 (in fn3CEE_4EAC)
;;     3CEE:4FB8 (in fn3CEE_4EAC)
fn3CEE_3B0C proc
	les	bx,[130Ah]
	mov	ax,es:[bx]
	or	ax,es:[bx+2h]
	jz	3B26h

l3CEE_3B19:
	les	bx,es:[bx]
	mov	ax,es:[bx+2Ch]
	mov	dx,es:[bx+2Eh]
	retf
3CEE:3B25                90                                    .          

l3CEE_3B26:
	sub	ax,ax
	cwd
	retf

;; fn3CEE_3B2A: 3CEE:3B2A
;;   Called from:
;;     3CEE:4E11 (in fn3CEE_4A3C)
;;     3CEE:4E1F (in fn3CEE_4A3C)
;;     3CEE:530A (in fn3CEE_4EAC)
;;     3CEE:5340 (in fn3CEE_4EAC)
fn3CEE_3B2A proc
	push	bp
	mov	bp,sp
	sub	sp,2h
	push	si
	les	bx,[3A86h]
	mov	ax,es:[bx+26h]
	mov	[bp-2h],ax
	push	cs
	call	3CD2h
	or	ax,ax
	jnz	3B7Ch

l3CEE_3B44:
	jmp	3B6Fh

l3CEE_3B46:
	les	bx,[3A86h]
	mov	ax,es:[bx+3Ch]
	mov	dx,es:[bx+3Eh]
	mov	bx,[bp-2h]
	shl	bx,1h
	shl	bx,1h
	mov	si,[3A86h]
	les	si,es:[si+52h]
	cmp	es:[bx+si],ax
	jnz	3B6Ch

l3CEE_3B66:
	cmp	es:[bx+si+2h],dx
	jz	3B7Ch

l3CEE_3B6C:
	inc	word ptr [bp-2h]

l3CEE_3B6F:
	les	bx,[3A86h]
	mov	ax,[bp-2h]
	cmp	es:[bx+28h],ax
	jge	3B46h

l3CEE_3B7C:
	mov	ax,[bp-2h]
	pop	si
	mov	sp,bp
	pop	bp
	retf

;; fn3CEE_3B84: 3CEE:3B84
;;   Called from:
;;     3CEE:3D28 (in fn3CEE_3CE2)
;;     3CEE:3DDB (in fn3CEE_3CE2)
;;     3CEE:3E2F (in fn3CEE_3CE2)
;;     3CEE:66A5 (in fn3CEE_6620)
;;     3CEE:66A5 (in fn3CEE_6620)
fn3CEE_3B84 proc
	push	bp
	mov	bp,sp
	sub	sp,2h
	push	si
	mov	ax,[bp+6h]
	inc	ax
	mov	[bp-2h],ax
	jmp	3B97h

l3CEE_3B94:
	inc	word ptr [bp-2h]

l3CEE_3B97:
	les	bx,[3A86h]
	mov	ax,es:[bx+4h]
	cmp	[bp-2h],ax
	ja	3BB7h

l3CEE_3BA4:
	les	bx,es:[bx+6h]
	mov	ax,42h
	imul	word ptr [bp-2h]
	mov	si,ax
	cmp	word ptr es:[bx+si-8h],0h
	jz	3B94h

l3CEE_3BB7:
	mov	ax,[bp-2h]
	pop	si
	mov	sp,bp
	pop	bp
	retf
3CEE:3BBF                                              90                .

;; fn3CEE_3BC0: 3CEE:3BC0
;;   Called from:
;;     3CEE:3D7F (in fn3CEE_3CE2)
;;     3CEE:3DC2 (in fn3CEE_3CE2)
;;     3CEE:4FE6 (in fn3CEE_4EAC)
;;     3CEE:5014 (in fn3CEE_4EAC)
fn3CEE_3BC0 proc
	push	bp
	mov	bp,sp
	sub	sp,2h
	push	si
	mov	ax,[bp+6h]
	dec	ax
	mov	[bp-2h],ax
	jmp	3BD3h

l3CEE_3BD0:
	dec	word ptr [bp-2h]

l3CEE_3BD3:
	cmp	word ptr [bp-2h],0h
	jz	3BF0h

l3CEE_3BD9:
	les	bx,[3A86h]
	les	bx,es:[bx+6h]
	mov	ax,42h
	imul	word ptr [bp-2h]
	mov	si,ax
	cmp	word ptr es:[bx+si-8h],0h
	jz	3BD0h

l3CEE_3BF0:
	mov	ax,[bp-2h]
	pop	si
	mov	sp,bp
	pop	bp
	retf

;; fn3CEE_3BF8: 3CEE:3BF8
;;   Called from:
;;     3CEE:4DEC (in fn3CEE_4A3C)
fn3CEE_3BF8 proc
	les	bx,[3A86h]
	cmp	word ptr es:[bx+56h],0h
	jnz	3C22h

l3CEE_3C03:
	mov	ax,1h
	push	ax
	mov	ax,5h
	push	ax
	call	far 3431h:06CCh
	add	sp,4h
	or	ax,ax
	jz	3C22h

l3CEE_3C17:
	les	bx,[3A86h]
	mov	ax,[0F17h]
	mov	es:[bx+56h],ax

l3CEE_3C22:
	les	bx,[3A86h]
	mov	ax,es:[bx+56h]
	retf
3CEE:3C2B                                  90 55 8B EC 83            .U...
3CEE:3C30 EC 02 0E E8 C2 FF 0B C0 74 F8 C4 1E 86 3A 26 8B ........t....:&.
3CEE:3C40 47 56 89 46 FE 26 C7 47 56 00 00 8B E5 5D CB 90 GV.F.&.GV....]..

;; fn3CEE_3C50: 3CEE:3C50
;;   Called from:
;;     3CEE:4768 (in fn3CEE_471A)
;;     3CEE:4AF5 (in fn3CEE_4A3C)
;;     3CEE:4B1B (in fn3CEE_4A3C)
;;     3CEE:4BB4 (in fn3CEE_4A3C)
;;     3CEE:4BDB (in fn3CEE_4A3C)
;;     3CEE:4BEE (in fn3CEE_4A3C)
;;     3CEE:51A9 (in fn3CEE_4EAC)
;;     3CEE:520E (in fn3CEE_4EAC)
;;     3CEE:5331 (in fn3CEE_4EAC)
fn3CEE_3C50 proc
	push	bp
	mov	bp,sp
	mov	word ptr [12AAh],2h
	mov	word ptr [12ACh],0Ah
	mov	ax,[bp+6h]
	cwd
	mov	[12B2h],ax
	mov	[12B4h],dx
	call	far 2644h:27D4h
	mov	word ptr [12AAh],0h
	pop	bp
	retf
3CEE:3C77                      90                                .        

;; fn3CEE_3C78: 3CEE:3C78
;;   Called from:
;;     3CEE:4751 (in fn3CEE_471A)
;;     3CEE:4ADE (in fn3CEE_4A3C)
;;     3CEE:4B9D (in fn3CEE_4A3C)
;;     3CEE:4E88 (in fn3CEE_4A3C)
fn3CEE_3C78 proc
	push	bp
	mov	bp,sp
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	les	bx,[130Ah]
	push	word ptr es:[bx+2h]
	push	word ptr es:[bx]
	call	far 2644h:2B40h
	add	sp,8h
	pop	bp
	retf

;; fn3CEE_3C96: 3CEE:3C96
;;   Called from:
;;     3CEE:477A (in fn3CEE_471A)
;;     3CEE:4BE2 (in fn3CEE_4A3C)
;;     3CEE:5195 (in fn3CEE_4EAC)
;;     3CEE:51E6 (in fn3CEE_4EAC)
fn3CEE_3C96 proc
	push	cs
	call	3CD2h
	or	ax,ax
	jnz	3CB4h

l3CEE_3C9E:
	les	bx,[130Ah]
	mov	ax,es:[bx]
	or	ax,es:[bx+2h]
	jz	3CB4h

l3CEE_3CAB:
	les	bx,es:[bx]
	mov	ax,es:[bx+48h]
	retf
3CEE:3CB3          90                                        .            

l3CEE_3CB4:
	mov	ax,1h
	retf

;; fn3CEE_3CB8: 3CEE:3CB8
;;   Called from:
;;     3CEE:4B22 (in fn3CEE_4A3C)
fn3CEE_3CB8 proc
	les	bx,[130Ah]
	mov	ax,es:[bx]
	or	ax,es:[bx+2h]
	jz	3CCEh

l3CEE_3CC5:
	les	bx,es:[bx]
	mov	ax,es:[bx+4Ah]
	retf
3CEE:3CCD                                        90                    .  

l3CEE_3CCE:
	mov	ax,1h
	retf

;; fn3CEE_3CD2: 3CEE:3CD2
;;   Called from:
;;     3CEE:3B3C (in fn3CEE_3B2A)
;;     3CEE:3C96 (in fn3CEE_3C96)
;;     3CEE:4A7C (in fn3CEE_4A3C)
;;     3CEE:4E3B (in fn3CEE_4A3C)
;;     3CEE:509C (in fn3CEE_4EAC)
;;     3CEE:519D (in fn3CEE_4EAC)
;;     3CEE:5225 (in fn3CEE_4EAC)
fn3CEE_3CD2 proc
	push	cs
	call	3B0Ch
	or	dx,ax
	jnz	3CDEh

l3CEE_3CDA:
	mov	ax,1h
	retf

l3CEE_3CDE:
	sub	ax,ax
	retf
3CEE:3CE1    90                                            .              

;; fn3CEE_3CE2: 3CEE:3CE2
;;   Called from:
;;     3CEE:3E5A (in fn3CEE_3E50)
;;     3CEE:3E76 (in fn3CEE_3E50)
;;     3CEE:3E96 (in fn3CEE_3E8B)
;;     3CEE:3E96 (in fn3CEE_3E8B)
fn3CEE_3CE2 proc
	push	bp
	mov	bp,sp
	sub	sp,0Ch
	push	si
	les	bx,[3A86h]
	mov	ax,es:[bx+14h]
	sub	ax,es:[bx+10h]
	inc	ax
	mov	[bp-4h],ax
	cmp	word ptr [bp+6h],0h
	jz	3D02h

l3CEE_3CFF:
	jmp	3D9Ch

l3CEE_3D02:
	les	bx,es:[bx+6h]
	mov	ax,es
	les	si,[3A86h]
	mov	cx,ax
	mov	ax,42h
	imul	word ptr es:[si+40h]
	mov	si,ax
	mov	es,cx
	mov	ax,es:[bx+si-8h]
	mov	[bp-2h],ax
	les	bx,[3A86h]
	push	word ptr es:[bx+40h]

l3CEE_3D28:
	push	cs
	call	3B84h
	add	sp,2h
	mov	[bp-6h],ax
	les	bx,[3A86h]
	cmp	es:[bx+2h],ax
	jl	3D89h

l3CEE_3D3C:
	mov	ax,42h
	imul	word ptr [bp-6h]
	add	ax,es:[bx+6h]
	mov	dx,es:[bx+8h]
	mov	[bp-0Ch],ax
	mov	[bp-0Ah],dx
	les	bx,[bp-0Ch]
	push	word ptr es:[bx-16h]
	push	word ptr es:[bx-18h]
	call	far 2017h:03F5h
	add	sp,4h
	les	bx,[bp-0Ch]
	mov	cx,es:[bx-8h]
	add	cx,ax
	add	[bp-2h],cx
	mov	ax,[bp-4h]
	cmp	[bp-2h],ax
	ja	3D7Ch

l3CEE_3D77:
	push	word ptr [bp-6h]
	jmp	3D28h

l3CEE_3D7C:
	push	word ptr [bp-6h]
	push	cs
	call	3BC0h
	add	sp,2h
	mov	[bp-6h],ax

l3CEE_3D89:
	les	bx,[3A86h]
	mov	ax,es:[bx+2h]
	cmp	ax,[bp-6h]
	jg	3D99h

l3CEE_3D96:
	jmp	3E48h

l3CEE_3D99:
	jmp	3E45h

l3CEE_3D9C:
	les	bx,es:[bx+6h]
	mov	ax,es
	les	si,[3A86h]
	mov	cx,ax
	mov	ax,42h
	imul	word ptr es:[si+42h]
	mov	si,ax
	mov	es,cx
	mov	ax,es:[bx+si-8h]
	mov	[bp-2h],ax
	les	bx,[3A86h]
	push	word ptr es:[bx+42h]

l3CEE_3DC2:
	push	cs
	call	3BC0h
	add	sp,2h
	mov	[bp-6h],ax
	les	bx,[3A86h]
	mov	ax,es:[bx]
	cmp	[bp-6h],ax
	jl	3E39h

l3CEE_3DD8:
	push	word ptr [bp-6h]
	push	cs
	call	3B84h
	add	sp,2h
	dec	ax
	mov	[bp-8h],ax
	les	bx,[3A86h]
	les	bx,es:[bx+6h]
	mov	ax,42h
	imul	word ptr [bp-8h]
	mov	si,ax
	push	word ptr es:[bx+si+2Ch]
	push	word ptr es:[bx+si+2Ah]
	call	far 2017h:03F5h
	add	sp,4h
	les	bx,[3A86h]
	les	bx,es:[bx+6h]
	mov	cx,ax
	mov	ax,42h
	imul	word ptr [bp-6h]
	mov	si,ax
	add	cx,es:[bx+si-8h]
	add	[bp-2h],cx
	mov	ax,[bp-4h]
	cmp	[bp-2h],ax
	ja	3E2Ch

l3CEE_3E27:
	push	word ptr [bp-6h]
	jmp	3DC2h

l3CEE_3E2C:
	push	word ptr [bp-6h]
	push	cs
	call	3B84h
	add	sp,2h
	mov	[bp-6h],ax

l3CEE_3E39:
	les	bx,[3A86h]
	mov	ax,es:[bx]
	cmp	ax,[bp-6h]
	jge	3E48h

l3CEE_3E45:
	mov	ax,[bp-6h]

l3CEE_3E48:
	mov	[bp-6h],ax
	pop	si
	mov	sp,bp
	pop	bp
	retf

;; fn3CEE_3E50: 3CEE:3E50
;;   Called from:
;;     3CEE:4A19 (in fn3CEE_499E)
;;     3CEE:66D1 (in fn3CEE_6620)
;;     3CEE:66D1 (in fn3CEE_6620)
fn3CEE_3E50 proc
	push	bp
	mov	bp,sp
	sub	sp,6h
	push	si
	push	word ptr [bp+6h]
	push	cs
	call	3CE2h
	add	sp,2h
	mov	[bp-2h],ax
	cmp	word ptr [bp+6h],0h
	jnz	3E88h

l3CEE_3E6A:
	les	bx,[3A86h]
	mov	es:[bx+42h],ax
	mov	ax,1h
	push	ax
	push	cs
	call	3CE2h
	add	sp,2h
	les	bx,[3A86h]
	mov	es:[bx+40h],ax
	jmp	3EA5h
3CEE:3E87                      90                                .        

l3CEE_3E88:
	les	bx,[3A86h]

;; fn3CEE_3E8B: 3CEE:3E8B
;;   Called from:
;;     3CEE:3E85 (in fn3CEE_3E50)
;;     3CEE:3E88 (in fn3CEE_3E50)
;;     3CEE:865A (in fn3CEE_8634)
fn3CEE_3E8B proc
	cmp	cl,[bp+di+0FE46h]
	mov	es:[bx+40h],ax
	sub	ax,ax
	push	ax
	push	cs
	call	3CE2h
	add	sp,2h
	les	bx,[3A86h]
	mov	es:[bx+42h],ax

l3CEE_3EA5:
	mov	ax,42h
	imul	word ptr es:[bx+42h]
	add	ax,es:[bx+6h]
	mov	dx,es:[bx+8h]
	sub	ax,42h
	mov	[bp-6h],ax
	mov	[bp-4h],dx
	les	bx,es:[bx+6h]
	mov	ax,es
	les	si,[3A86h]
	mov	cx,ax
	mov	ax,42h
	imul	word ptr es:[si+40h]
	mov	si,ax
	mov	es,cx
	mov	ax,es:[bx+si-6h]
	les	bx,[3A86h]
	mov	es:[bx+38h],ax
	les	bx,[bp-6h]
	mov	ax,es:[bx+3Ah]
	add	ax,es:[bx+3Ch]
	les	bx,[3A86h]
	sub	ax,es:[bx+38h]
	mov	es:[bx+3Ah],ax
	mov	ax,es:[bx+14h]
	sub	ax,es:[bx+10h]
	sub	ax,es:[bx+3Ah]
	inc	ax
	shr	ax,1h
	mov	es:[bx+36h],ax
	mov	ax,es:[bx+2Ah]
	shl	ax,1h
	add	ax,2h
	push	ax
	sub	ax,ax
	push	ax
	push	word ptr es:[bx+50h]
	push	word ptr es:[bx+4Eh]
	call	far 2017h:0228h
	add	sp,8h
	sub	ax,ax
	push	ax
	les	bx,[3A86h]
	push	word ptr es:[bx+14h]
	push	word ptr es:[bx+12h]
	push	word ptr es:[bx+10h]
	push	word ptr es:[bx+0Eh]
	call	far 1F38h:055Eh
	add	sp,0Ah
	pop	si
	mov	sp,bp
	pop	bp
	retf
3CEE:3F4B                                  90                        .    

;; fn3CEE_3F4C: 3CEE:3F4C
;;   Called from:
;;     3CEE:4CAE (in fn3CEE_4A3C)
;;     3CEE:5088 (in fn3CEE_4EAC)
;;     3CEE:5249 (in fn3CEE_4EAC)
fn3CEE_3F4C proc
	push	bp
	mov	bp,sp
	sub	sp,0Eh
	push	di
	push	si
	cmp	word ptr [bp+6h],0h
	jge	3F62h

l3CEE_3F5A:
	mov	ax,[bp+6h]
	neg	ax
	jmp	3F65h
3CEE:3F61    90                                            .              

l3CEE_3F62:
	mov	ax,[bp+6h]

l3CEE_3F65:
	mov	[bp-0Ch],ax
	or	ax,ax
	jnz	3F6Fh

l3CEE_3F6C:
	jmp	40DCh

l3CEE_3F6F:
	les	bx,[3A86h]
	cmp	es:[bx+1Ch],ax
	ja	3F7Ch

l3CEE_3F79:
	jmp	40DCh

l3CEE_3F7C:
	cmp	word ptr es:[bx+48h],0h
	jz	3FAAh

l3CEE_3F83:
	mov	ax,es:[bx+28h]
	cmp	es:[bx+32h],ax
	jg	3FAAh

l3CEE_3F8D:
	mov	ax,es:[bx+32h]
	add	ax,es:[bx+0Eh]
	mov	[bp-6h],ax
	mov	ax,es:[bx+28h]
	sub	ax,es:[bx+32h]
	mov	[bp-0Ah],ax
	mov	word ptr [bp+6h],0FFFFh
	jmp	3FBFh

l3CEE_3FAA:
	mov	ax,es:[bx+26h]
	add	ax,es:[bx+0Eh]
	mov	[bp-6h],ax
	mov	ax,es:[bx+1Ch]
	sub	ax,[bp-0Ch]
	mov	[bp-0Ah],ax

l3CEE_3FBF:
	cmp	word ptr [bp+6h],0h
	jle	3FDAh

l3CEE_3FC5:
	mov	ax,es:[bx+26h]
	mov	[bp-2h],ax
	add	ax,[bp-0Ch]
	mov	[bp-4h],ax
	mov	ax,[bp-2h]
	add	ax,[bp-0Ah]
	jmp	3FF1h

l3CEE_3FDA:
	mov	ax,[bp-6h]
	les	bx,[3A86h]
	sub	ax,es:[bx+0Eh]
	mov	[bp-4h],ax
	add	ax,[bp-0Ch]
	mov	[bp-2h],ax
	mov	ax,[bp-4h]

l3CEE_3FF1:
	mov	[bp-8h],ax
	cmp	word ptr [bp-0Ah],0h
	jnz	3FFDh

l3CEE_3FFA:
	jmp	4117h

l3CEE_3FFD:
	mov	ax,es:[bx+1Ah]
	mul	word ptr [bp-0Ah]
	push	ax
	mov	ax,es:[bx+1Ah]
	mul	word ptr [bp-4h]
	add	ax,es:[bx+16h]
	mov	dx,es:[bx+18h]
	push	dx
	push	ax
	mov	ax,es:[bx+1Ah]
	mul	word ptr [bp-2h]
	add	ax,es:[bx+16h]
	mov	dx,es:[bx+18h]
	push	dx
	push	ax
	call	far 2017h:0258h
	add	sp,0Ah
	mov	si,[bp-2h]
	shl	si,1h
	mov	di,[bp-4h]
	shl	di,1h
	mov	ax,[bp-0Ah]
	shl	ax,1h
	mov	[bp-0Eh],ax
	push	ax
	les	bx,[3A86h]
	mov	ax,es:[bx+4Ah]
	mov	dx,es:[bx+4Ch]
	add	ax,di
	push	dx
	push	ax
	mov	ax,es:[bx+4Ah]
	add	ax,si
	push	dx
	push	ax
	call	far 2017h:0258h
	add	sp,0Ah
	push	word ptr [bp-0Eh]
	les	bx,[3A86h]
	mov	ax,es:[bx+4Eh]
	mov	dx,es:[bx+50h]
	add	ax,di
	push	dx
	push	ax
	mov	ax,es:[bx+4Eh]
	add	ax,si
	push	dx
	push	ax
	call	far 2017h:0258h
	add	sp,0Ah
	mov	ax,[bp-0Ah]
	shl	ax,1h
	shl	ax,1h
	push	ax
	mov	ax,[bp-4h]
	shl	ax,1h
	shl	ax,1h
	les	bx,[3A86h]
	add	ax,es:[bx+52h]
	mov	dx,es:[bx+54h]
	push	dx
	push	ax
	mov	ax,[bp-2h]
	shl	ax,1h
	shl	ax,1h
	add	ax,es:[bx+52h]
	push	dx
	push	ax
	call	far 2017h:0258h
	add	sp,0Ah
	push	word ptr [bp+6h]
	les	bx,[3A86h]
	push	word ptr es:[bx+14h]
	mov	ax,es:[bx+28h]
	add	ax,es:[bx+0Eh]
	push	ax
	push	word ptr es:[bx+10h]
	push	word ptr [bp-6h]
	call	far 1F38h:055Eh
	add	sp,0Ah
	jmp	4117h

l3CEE_40DC:
	sub	ax,ax
	push	ax
	les	bx,[3A86h]
	push	word ptr es:[bx+14h]
	mov	ax,es:[bx+28h]
	add	ax,es:[bx+0Eh]
	push	ax
	push	word ptr es:[bx+10h]
	mov	ax,es:[bx+26h]
	add	ax,es:[bx+0Eh]
	push	ax
	call	far 1F38h:055Eh
	add	sp,0Ah
	les	bx,[3A86h]
	mov	ax,es:[bx+26h]
	mov	[bp-8h],ax
	mov	ax,es:[bx+1Ch]
	mov	[bp-0Ch],ax

l3CEE_4117:
	mov	si,[bp-8h]
	shl	si,1h
	mov	di,[bp-0Ch]
	shl	di,1h
	push	di
	sub	ax,ax
	push	ax
	les	bx,[3A86h]
	mov	ax,es:[bx+4Ah]
	mov	dx,es:[bx+4Ch]
	add	ax,si
	push	dx
	push	ax
	call	far 2017h:0228h
	add	sp,8h
	push	di
	sub	ax,ax
	push	ax
	les	bx,[3A86h]
	mov	ax,es:[bx+4Eh]
	mov	dx,es:[bx+50h]
	add	ax,si
	push	dx
	push	ax
	call	far 2017h:0228h
	add	sp,8h
	mov	ax,[bp-0Ch]
	shl	ax,1h
	shl	ax,1h
	push	ax
	sub	ax,ax
	push	ax
	mov	ax,[bp-8h]
	shl	ax,1h
	shl	ax,1h
	les	bx,[3A86h]
	add	ax,es:[bx+52h]
	mov	dx,es:[bx+54h]
	push	dx
	push	ax
	call	far 2017h:0228h
	add	sp,8h
	pop	si
	pop	di
	mov	sp,bp
	pop	bp
	retf
3CEE:4187                      90                                .        

;; fn3CEE_4188: 3CEE:4188
;;   Called from:
;;     3CEE:66F5 (in fn3CEE_66FF)
;;     3CEE:6719 (in fn3CEE_66FF)
fn3CEE_4188 proc
	push	bp
	mov	bp,sp
	sub	sp,16h
	push	si
	mov	ax,[bp+6h]
	les	bx,[3A86h]
	mul	word ptr es:[bx+1Ah]
	add	ax,es:[bx+16h]
	mov	dx,es:[bx+18h]
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	mov	word ptr [bp-14h],0h
	jmp	441Dh

l3CEE_41B0:
	les	bx,[bp-10h]
	mov	ax,es:[bx+26h]
	mov	dx,es:[bx+28h]

l3CEE_41BB:
	mov	[bp-8h],ax
	mov	[bp-6h],dx
	mov	ax,es:[bx+3Ah]
	mov	[bp-0Ch],ax
	les	bx,[3A86h]
	mov	ax,[bp-14h]
	cmp	es:[bx],ax
	ja	41EAh

l3CEE_41D4:
	les	bx,[bp-10h]
	push	word ptr es:[bx+2Ch]
	push	word ptr es:[bx+2Ah]
	call	far 2017h:03F5h
	add	sp,4h
	add	[bp-0Ch],ax

l3CEE_41EA:
	les	bx,[bp-8h]
	cmp	byte ptr es:[bx],0h
	jz	424Ah

l3CEE_41F3:
	push	es
	push	bx
	call	far 2017h:03F5h
	add	sp,4h
	mov	[bp-16h],ax
	mov	si,ax
	les	bx,[bp-8h]
	mov	al,es:[bx+si-1h]
	mov	[bp-0Ah],al
	mov	ax,si
	sub	ax,[bp-0Ch]
	sbb	cx,cx
	and	ax,cx
	add	ax,[bp-0Ch]
	mov	[bp-16h],ax
	les	bx,[3A86h]
	mov	ax,[bp-14h]
	cmp	es:[bx],ax
	ja	424Eh

l3CEE_4227:
	push	word ptr [bp-16h]
	push	word ptr [bp-6h]
	push	word ptr [bp-8h]
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	call	far 2017h:0258h
	add	sp,0Ah
	mov	ax,[bp-16h]
	add	[bp-4h],ax
	sub	[bp-0Ch],ax
	jmp	424Eh
3CEE:4249                            90                            .      

l3CEE_424A:
	mov	byte ptr [bp-0Ah],20h

l3CEE_424E:
	push	word ptr [bp-0Ch]
	mov	al,[bp-0Ah]
	sub	ah,ah
	jmp	4405h
3CEE:4259                            90                            .      

l3CEE_425A:
	les	bx,[3A86h]
	mov	ax,[bp+6h]
	cmp	es:[bx+26h],ax
	jle	4274h

l3CEE_4267:
	mov	ax,es:[bx+1Eh]
	les	bx,[bp-10h]
	sub	ax,es:[bx+1Eh]
	jmp	4287h

l3CEE_4274:
	les	bx,[bp-10h]
	mov	ax,es:[bx+20h]
	les	bx,[3A86h]
	add	ax,es:[bx+2Ah]
	sub	ax,es:[bx+20h]

l3CEE_4287:
	mov	[bp-12h],ax
	les	bx,[3A86h]
	mov	ax,[bp-14h]
	cmp	es:[bx],ax
	ja	42C5h

l3CEE_4296:
	les	bx,[bp-10h]
	push	word ptr es:[bx+2Ch]
	push	word ptr es:[bx+2Ah]
	call	far 2017h:03F5h
	add	sp,4h
	mov	[bp-0Ch],ax
	push	ax
	mov	ax,20h
	push	ax
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	call	far 2017h:0228h
	add	sp,8h
	mov	ax,[bp-0Ch]
	add	[bp-4h],ax

l3CEE_42C5:
	les	bx,[3A86h]
	mov	ax,[bp+6h]
	cmp	es:[bx+26h],ax
	jle	42DAh

l3CEE_42D2:
	mov	ax,[bp-12h]
	cmp	[bp+6h],ax
	jl	42EBh

l3CEE_42DA:
	mov	ax,[bp+6h]
	cmp	es:[bx+28h],ax
	jge	42F6h

l3CEE_42E3:
	mov	ax,[bp-12h]
	cmp	[bp+6h],ax
	jle	42F6h

l3CEE_42EB:
	les	bx,[bp-10h]
	mov	ax,es:[bx+3Ah]
	jmp	43FEh
3CEE:42F5                90                                    .          

l3CEE_42F6:
	les	bx,[3A86h]
	mov	ax,[bp+6h]
	cmp	es:[bx+26h],ax
	jle	4328h

l3CEE_4303:
	les	bx,[bp-10h]
	cmp	word ptr es:[bx+14h],0h
	jz	4312h

l3CEE_430D:
	mov	al,3Bh
	jmp	4314h
3CEE:4311    90                                            .              

l3CEE_4312:
	mov	al,3Eh

l3CEE_4314:
	mov	[bp-0Ah],al
	mov	ax,es:[bx+16h]
	mov	dx,es:[bx+18h]
	mov	[bp-8h],ax
	mov	[bp-6h],dx
	jmp	4382h
3CEE:4327                      90                                .        

l3CEE_4328:
	mov	byte ptr [bp-0Ah],3Bh
	les	bx,[bp-10h]
	mov	ax,es:[bx+1Ah]
	mov	dx,es:[bx+1Ch]
	mov	[bp-8h],ax
	mov	[bp-6h],dx
	les	bx,[3A86h]
	cmp	word ptr es:[bx+24h],0h
	jle	434Eh

l3CEE_4348:
	mov	ax,2h
	jmp	4351h
3CEE:434D                                        90                    .  

l3CEE_434E:
	mov	ax,1h

l3CEE_4351:
	add	ax,es:[bx+28h]
	mov	[bp-12h],ax
	jmp	4382h

l3CEE_435A:
	mov	al,[bp-0Ah]
	sub	ah,ah
	push	ax
	push	word ptr [bp-6h]
	push	word ptr [bp-8h]
	push	cs
	call	3ABCh
	add	sp,6h
	mov	[bp-16h],ax
	add	[bp-8h],ax
	les	bx,[bp-8h]
	cmp	byte ptr es:[bx],0h
	jz	437Fh

l3CEE_437C:
	inc	word ptr [bp-8h]

l3CEE_437F:
	inc	word ptr [bp-12h]

l3CEE_4382:
	mov	ax,[bp+6h]
	cmp	[bp-12h],ax
	jl	435Ah

l3CEE_438A:
	mov	al,[bp-0Ah]
	sub	ah,ah
	push	ax
	push	word ptr [bp-6h]
	push	word ptr [bp-8h]
	push	cs
	call	3ABCh
	add	sp,6h
	mov	[bp-16h],ax
	mov	bx,ax
	les	si,[bp-8h]
	cmp	byte ptr es:[bx+si],0h
	jz	43C5h

l3CEE_43AB:
	les	bx,[bp-10h]
	cmp	word ptr es:[bx+14h],0h
	jnz	43C5h

l3CEE_43B5:
	les	bx,[3A86h]
	mov	ax,[bp+6h]
	cmp	es:[bx+26h],ax
	jle	43C5h

l3CEE_43C2:
	inc	word ptr [bp-16h]

l3CEE_43C5:
	les	bx,[bp-10h]
	mov	ax,es:[bx+3Ah]
	sub	ax,[bp-16h]
	sbb	cx,cx
	and	ax,cx
	add	ax,[bp-16h]
	mov	[bp-16h],ax
	push	ax
	push	word ptr [bp-6h]
	push	word ptr [bp-8h]
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	call	far 2017h:0258h
	add	sp,0Ah
	mov	ax,[bp-16h]
	add	[bp-4h],ax
	les	bx,[bp-10h]
	mov	ax,es:[bx+3Ah]
	sub	ax,[bp-16h]

l3CEE_43FE:
	mov	[bp-0Ch],ax
	push	ax
	mov	ax,20h

l3CEE_4405:
	push	ax
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	call	far 2017h:0228h
	add	sp,8h
	mov	ax,[bp-0Ch]
	add	[bp-4h],ax

l3CEE_441A:
	inc	word ptr [bp-14h]

l3CEE_441D:
	les	bx,[3A86h]
	mov	ax,[bp-14h]
	cmp	es:[bx+4h],ax
	jbe	4478h

l3CEE_442A:
	mov	ax,42h
	mul	word ptr [bp-14h]
	add	ax,es:[bx+6h]
	mov	dx,es:[bx+8h]
	mov	[bp-10h],ax
	mov	[bp-0Eh],dx
	les	bx,[bp-10h]
	cmp	word ptr es:[bx+3Ah],0h
	jz	441Ah

l3CEE_4448:
	les	bx,[3A86h]
	mov	ax,[bp+6h]
	cmp	es:[bx+22h],ax
	jz	445Eh

l3CEE_4455:
	cmp	es:[bx+24h],ax
	jz	445Eh

l3CEE_445B:
	jmp	425Ah

l3CEE_445E:
	mov	ax,[bp+6h]
	cmp	es:[bx+22h],ax
	jz	446Ah

l3CEE_4467:
	jmp	41B0h

l3CEE_446A:
	les	bx,[bp-10h]
	mov	ax,es:[bx+22h]
	mov	dx,es:[bx+24h]
	jmp	41BBh

l3CEE_4478:
	mov	bx,[bp+6h]
	shl	bx,1h
	les	si,[3A86h]
	les	si,es:[si+4Ah]
	mov	word ptr es:[bx+si],1h
	pop	si
	mov	sp,bp
	pop	bp
	retf
3CEE:448F                                              90                .

;; fn3CEE_4490: 3CEE:4490
;;   Called from:
;;     3CEE:47AD (in fn3CEE_471A)
fn3CEE_4490 proc
	push	bp
	mov	bp,sp
	sub	sp,14h
	mov	ax,[bp+6h]
	les	bx,[3A86h]
	mul	word ptr es:[bx+1Ah]
	add	ax,es:[bx+16h]
	mov	dx,es:[bx+18h]
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	mov	word ptr [bp-12h],0h
	jmp	4672h
3CEE:44B7                      90                                .        

l3CEE_44B8:
	sub	ax,ax
	push	ax
	les	bx,[bp-10h]
	push	word ptr es:[bx+6h]
	push	word ptr es:[bx+4h]
	call	far 2368h:022Eh
	add	sp,6h
	call	far 31FFh:1D44h

l3CEE_44D3:
	les	bx,[bp-10h]
	les	bx,es:[bx+8h]
	cmp	byte ptr es:[bx],0h
	jz	44E8h

l3CEE_44E0:
	mov	word ptr [bp-6h],100h
	jmp	44F2h
3CEE:44E7                      90                                .        

l3CEE_44E8:
	les	bx,[1296h]
	mov	ax,es:[bx]
	mov	[bp-6h],ax

l3CEE_44F2:
	les	bx,[bp-10h]
	les	bx,es:[bx+8h]
	cmp	byte ptr es:[bx],0h
	jnz	4506h

l3CEE_44FF:
	test	word ptr [bp-6h],100h
	jnz	4519h

l3CEE_4506:
	les	bx,[bp-10h]
	push	word ptr es:[bx+0Ah]
	push	word ptr es:[bx+8h]
	call	far 3431h:3E9Eh
	add	sp,4h

l3CEE_4519:
	cmp	word ptr [bp-6h],300h
	jnz	452Ch

l3CEE_4520:
	mov	ax,6050h
	mov	[bp-0Ah],ax
	mov	[bp-8h],ds
	jmp	453Eh
3CEE:452B                                  90                        .    

l3CEE_452C:
	les	bx,[1296h]
	mov	ax,es:[bx+8h]
	mov	dx,es:[bx+0Ah]
	mov	[bp-0Ah],ax
	mov	[bp-8h],dx

l3CEE_453E:
	les	bx,[bp-10h]
	cmp	word ptr es:[bx+3Ah],0h
	jz	45B6h

l3CEE_4548:
	mov	ax,es:[bx+40h]
	mov	[bp-14h],ax
	mov	ax,[bp-6h]
	cmp	ax,2h
	jz	45BEh

l3CEE_4557:
	cmp	ax,8h
	jz	45BEh

l3CEE_455C:
	cmp	ax,20h
	jz	4573h

l3CEE_4561:
	cmp	ax,80h
	jnz	4569h

l3CEE_4566:
	jmp	45FEh

l3CEE_4569:
	cmp	ax,100h
	jz	4573h

l3CEE_456E:
	cmp	ax,300h
	jnz	45B6h

l3CEE_4573:
	push	word ptr [bp-14h]
	push	word ptr [bp-8h]
	push	word ptr [bp-0Ah]
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	call	far 2017h:0258h
	add	sp,0Ah
	mov	ax,[bp-14h]
	add	[bp-4h],ax
	les	bx,[bp-10h]
	mov	ax,es:[bx+3Ah]

l3CEE_4597:
	sub	ax,[bp-14h]
	mov	[bp-0Ch],ax
	push	ax
	mov	ax,20h
	push	ax
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	call	far 2017h:0228h
	add	sp,8h
	mov	ax,[bp-0Ch]

l3CEE_45B3:
	add	[bp-4h],ax

l3CEE_45B6:
	call	far 2368h:033Ch
	jmp	466Fh

l3CEE_45BE:
	les	bx,[bp-10h]
	mov	ax,es:[bx+3Eh]
	mov	[bp-0Ch],ax
	push	ax
	mov	ax,20h
	push	ax
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	call	far 2017h:0228h
	add	sp,8h
	mov	ax,[bp-0Ch]
	add	[bp-4h],ax
	push	word ptr [bp-14h]
	push	word ptr [bp-8h]
	push	word ptr [bp-0Ah]
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	call	far 2017h:0258h
	add	sp,0Ah
	mov	ax,[bp-14h]
	jmp	45B3h
3CEE:45FD                                        90                    .  

l3CEE_45FE:
	les	bx,[bp-10h]
	mov	ax,es:[bx+3Eh]
	mov	[bp-0Ch],ax
	push	ax
	mov	ax,20h
	push	ax
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	call	far 2017h:0228h
	add	sp,8h
	mov	ax,[bp-0Ch]
	add	[bp-4h],ax
	push	word ptr [bp-14h]
	push	word ptr [bp-8h]
	push	word ptr [bp-0Ah]
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	call	far 2017h:0258h
	add	sp,0Ah
	mov	ax,[bp-14h]
	add	[bp-4h],ax
	les	bx,[bp-10h]
	mov	ax,es:[bx+3Ah]
	sub	ax,es:[bx+3Eh]
	jmp	4597h

l3CEE_464C:
	les	bx,[bp-10h]
	push	word ptr es:[bx+3Ah]
	mov	ax,20h
	push	ax
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	call	far 2017h:0228h
	add	sp,8h
	les	bx,[bp-10h]
	mov	ax,es:[bx+3Ah]
	add	[bp-4h],ax

l3CEE_466F:
	inc	word ptr [bp-12h]

l3CEE_4672:
	les	bx,[3A86h]
	mov	ax,[bp-12h]
	cmp	es:[bx+4h],ax
	ja	4682h

l3CEE_467F:
	jmp	4716h

l3CEE_4682:
	mov	ax,42h
	mul	word ptr [bp-12h]
	add	ax,es:[bx+6h]
	mov	dx,es:[bx+8h]
	mov	[bp-10h],ax
	mov	[bp-0Eh],dx
	mov	ax,[bp-12h]
	cmp	es:[bx],ax
	ja	46DEh

l3CEE_469E:
	les	bx,[bp-10h]
	cmp	word ptr es:[bx+3Ah],0h
	jz	46DEh

l3CEE_46A8:
	mov	ax,es:[bx+2Ah]
	mov	dx,es:[bx+2Ch]
	mov	[bp-0Ah],ax
	mov	[bp-8h],dx
	push	dx
	push	ax
	call	far 2017h:03F5h
	add	sp,4h
	mov	[bp-14h],ax
	push	ax
	push	word ptr [bp-8h]
	push	word ptr [bp-0Ah]
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	call	far 2017h:0258h
	add	sp,0Ah
	mov	ax,[bp-14h]
	add	[bp-4h],ax

l3CEE_46DE:
	les	bx,[3A86h]
	mov	ax,[bp+6h]
	cmp	es:[bx+32h],ax
	jg	46F5h

l3CEE_46EB:
	cmp	word ptr es:[bx+48h],0h
	jnz	46F5h

l3CEE_46F2:
	jmp	464Ch

l3CEE_46F5:
	les	bx,[bp-10h]
	mov	ax,es:[bx]
	or	ax,es:[bx+2h]
	jnz	4704h

l3CEE_4701:
	jmp	44B8h

l3CEE_4704:
	push	word ptr es:[bx+2h]
	push	word ptr es:[bx]
	call	far 2644h:17C8h
	add	sp,4h
	jmp	44D3h

l3CEE_4716:
	mov	sp,bp
	pop	bp
	retf

;; fn3CEE_471A: 3CEE:471A
;;   Called from:
;;     3CEE:4DB6 (in fn3CEE_4A3C)
fn3CEE_471A proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	push	si
	les	bx,[3A86h]
	mov	ax,[bp+6h]
	cmp	es:[bx+32h],ax
	jle	47AAh

l3CEE_472E:
	mov	bx,ax
	shl	bx,1h
	shl	bx,1h
	mov	si,[3A86h]
	les	si,es:[si+52h]
	mov	ax,es:[bx+si]
	mov	dx,es:[bx+si+2h]
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	or	ax,dx
	jz	475Ch

l3CEE_474D:
	push	dx
	push	word ptr [bp-4h]
	push	cs
	call	3C78h
	add	sp,4h
	jmp	476Fh
3CEE:475A                               90 90                       ..    

l3CEE_475C:
	mov	ax,[bp+6h]
	les	bx,[3A86h]
	sub	ax,es:[bx+30h]
	push	ax
	push	cs
	call	3C50h
	add	sp,2h

l3CEE_476F:
	les	bx,[3A86h]
	mov	ax,[bp+6h]
	mov	es:[bx+30h],ax
	push	cs
	call	3C96h
	or	ax,ax
	jz	4790h

l3CEE_4782:
	les	bx,[3A86h]
	mov	ax,[bp+6h]
	mov	es:[bx+32h],ax
	jmp	47AAh
3CEE:478F                                              90                .

l3CEE_4790:
	push	cs
	call	3AEEh
	mov	bx,[bp+6h]
	shl	bx,1h
	shl	bx,1h
	les	si,[3A86h]
	les	si,es:[si+52h]
	mov	es:[bx+si],ax
	mov	es:[bx+si+2h],dx

l3CEE_47AA:
	push	word ptr [bp+6h]
	push	cs
	call	4490h
	add	sp,2h
	mov	bx,[bp+6h]
	shl	bx,1h
	les	si,[3A86h]
	les	si,es:[si+4Ah]
	mov	word ptr es:[bx+si],1h
	pop	si
	mov	sp,bp
	pop	bp
	retf
3CEE:47CB                                  90                        .    

;; fn3CEE_47CC: 3CEE:47CC
;;   Called from:
;;     3CEE:50E6 (in fn3CEE_4EAC)
fn3CEE_47CC proc
	push	bp
	mov	bp,sp
	sub	sp,0Ah
	les	bx,[3A86h]
	mov	ax,42h
	imul	word ptr es:[bx+2Ch]
	add	ax,es:[bx+6h]
	mov	dx,es:[bx+8h]
	sub	ax,42h
	mov	[bp-8h],ax
	mov	[bp-6h],dx
	mov	ax,es:[bx+2Eh]
	mul	word ptr es:[bx+1Ah]
	les	bx,[bp-8h]
	add	ax,es:[bx+3Ch]
	add	ax,es:[bx+3Eh]
	les	bx,[3A86h]
	add	ax,es:[bx+16h]
	mov	dx,es:[bx+18h]
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	les	bx,[bp-8h]
	mov	ax,es:[bx+3Ch]
	add	ax,es:[bx+3Eh]
	les	bx,[3A86h]
	add	ax,es:[bx+10h]
	add	ax,es:[bx+36h]
	sub	ax,es:[bx+38h]
	mov	[bp-0Ah],ax
	push	ax
	mov	ax,es:[bx+2Eh]
	add	ax,es:[bx+0Eh]
	push	ax
	call	far 1F38h:04E7h
	add	sp,4h
	les	bx,[bp-8h]
	push	word ptr es:[bx+40h]
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	call	far 1F38h:049Fh
	add	sp,6h
	push	word ptr [bp-0Ah]
	les	bx,[3A86h]
	mov	ax,es:[bx+2Eh]
	add	ax,es:[bx+0Eh]
	push	ax
	call	far 1F38h:04E7h
	mov	sp,bp
	pop	bp
	retf
3CEE:4871    90 9A FA 07 38 1F 0E E8 51 FF 9A E7 07 38 1F  ....8...Q....8.
3CEE:4880 CB 90                                           ..              

;; fn3CEE_4882: 3CEE:4882
;;   Called from:
;;     3CEE:4D04 (in fn3CEE_4A3C)
;;     3CEE:4D3C (in fn3CEE_4A3C)
;;     3CEE:4DDC (in fn3CEE_4A3C)
fn3CEE_4882 proc
	push	bp
	mov	bp,sp
	sub	sp,8h
	push	si
	mov	ax,[bp+6h]
	les	bx,[3A86h]
	mul	word ptr es:[bx+1Ah]
	add	ax,es:[bx+38h]
	add	ax,es:[bx+16h]
	mov	dx,es:[bx+18h]
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	mov	ax,[bp+6h]
	cmp	es:[bx+22h],ax
	jz	48B5h

l3CEE_48AF:
	cmp	es:[bx+24h],ax
	jnz	48FEh

l3CEE_48B5:
	les	bx,[bp-4h]
	mov	al,es:[bx]
	mov	[bp-6h],al
	les	bx,[3A86h]
	push	word ptr es:[bx+10h]
	mov	ax,[bp+6h]
	add	ax,es:[bx+0Eh]
	push	ax
	call	far 1F38h:04E7h
	add	sp,4h
	les	bx,[3A86h]
	mov	ax,es:[bx+36h]
	mov	[bp-8h],ax

l3CEE_48E1:
	mov	ax,[bp-8h]
	dec	word ptr [bp-8h]
	or	ax,ax
	jz	491Bh

l3CEE_48EB:
	mov	ax,1h
	push	ax
	lea	ax,[bp-6h]
	push	ss
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	jmp	48E1h

l3CEE_48FE:
	les	bx,[3A86h]
	mov	ax,es:[bx+10h]
	add	ax,es:[bx+36h]
	push	ax
	mov	ax,[bp+6h]
	add	ax,es:[bx+0Eh]
	push	ax
	call	far 1F38h:04E7h
	add	sp,4h

l3CEE_491B:
	les	bx,[3A86h]
	push	word ptr es:[bx+3Ah]
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	call	far 1F38h:049Fh
	add	sp,6h
	les	bx,[3A86h]
	mov	ax,[bp+6h]
	cmp	es:[bx+22h],ax
	jz	4944h

l3CEE_493E:
	cmp	es:[bx+24h],ax
	jnz	4987h

l3CEE_4944:
	mov	si,es:[bx+3Ah]
	les	bx,[bp-4h]
	mov	al,es:[bx+si-1h]
	mov	[bp-6h],al
	les	bx,[3A86h]
	mov	ax,es:[bx+14h]
	sub	ax,es:[bx+10h]
	sub	ax,es:[bx+3Ah]
	sub	ax,es:[bx+36h]
	inc	ax
	mov	[bp-8h],ax
	jmp	497Dh

l3CEE_496C:
	mov	ax,1h
	push	ax
	lea	ax,[bp-6h]
	push	ss
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h

l3CEE_497D:
	mov	ax,[bp-8h]
	dec	word ptr [bp-8h]
	or	ax,ax
	jnz	496Ch

l3CEE_4987:
	mov	bx,[bp+6h]
	shl	bx,1h
	les	si,[3A86h]
	les	si,es:[si+4Eh]
	mov	word ptr es:[bx+si],1h
	pop	si
	mov	sp,bp
	pop	bp
	retf

;; fn3CEE_499E: 3CEE:499E
;;   Called from:
;;     3CEE:50DF (in fn3CEE_4EAC)
fn3CEE_499E proc
	push	bp
	mov	bp,sp
	sub	sp,0Ah
	push	di
	push	si
	les	bx,[3A86h]
	mov	ax,es:[bx+40h]
	cmp	es:[bx+2Ch],ax
	jge	49D2h

l3CEE_49B4:
	mov	si,es:[bx]
	cmp	ax,si
	jle	49D2h

l3CEE_49BB:
	mov	ax,es:[bx+2Ch]
	cmp	ax,si
	jge	49C5h

l3CEE_49C3:
	mov	ax,si

l3CEE_49C5:
	mov	es:[bx+40h],ax
	mov	word ptr es:[bx+42h],0h
	jmp	4A02h
3CEE:49D1    90                                            .              

l3CEE_49D2:
	mov	ax,es:[bx+42h]
	cmp	es:[bx+2Ch],ax
	jle	4A02h

l3CEE_49DC:
	or	ax,ax
	jz	4A02h

l3CEE_49E0:
	mov	ax,es:[bx+2h]
	cmp	es:[bx+42h],ax
	jge	4A02h

l3CEE_49EA:
	mov	ax,es:[bx+2Ch]
	cmp	ax,es:[bx+2h]
	jle	49F8h

l3CEE_49F4:
	mov	ax,es:[bx+2h]

l3CEE_49F8:
	mov	es:[bx+42h],ax
	mov	word ptr es:[bx+40h],0h

l3CEE_4A02:
	cmp	word ptr es:[bx+42h],0h
	jnz	4A0Eh

l3CEE_4A09:
	sub	ax,ax
	jmp	4A18h
3CEE:4A0D                                        90                    .  

l3CEE_4A0E:
	cmp	word ptr es:[bx+40h],0h
	jnz	4A20h

l3CEE_4A15:
	mov	ax,1h

l3CEE_4A18:
	push	ax
	push	cs
	call	3E50h
	add	sp,2h

;; fn3CEE_4A1E: 3CEE:4A1E
;;   Called from:
;;     3CEE:14AB (in fn3CEE_1472)
fn3CEE_4A1E proc
	les	ax,[bp+si]

;; fn3CEE_4A20: 3CEE:4A20
;;   Called from:
;;     3CEE:4A13 (in fn3CEE_499E)
;;     3CEE:4A1D (in fn3CEE_499E)
;;     3CEE:4A1E (in fn3CEE_4A1E)
fn3CEE_4A20 proc
	les	bx,[3A86h]
	mov	ax,es:[bx+40h]
	cmp	es:[bx+2Ch],ax
	jl	4A3Ch

;; fn3CEE_4A2E: 3CEE:4A2E
;;   Called from:
;;     3CEE:4A2C (in fn3CEE_4A20)
;;     3CEE:4A2C (in fn3CEE_4A20)
fn3CEE_4A2E proc
	mov	ax,es:[bx+2Ch]
	cmp	ax,es:[bx+42h]
	jle	4A3Ch

l3CEE_4A38:
	mov	ax,es:[bx+42h]

;; fn3CEE_4A3C: 3CEE:4A3C
;;   Called from:
;;     3CEE:4A2C (in fn3CEE_4A20)
;;     3CEE:4A2C (in fn3CEE_4A20)
;;     3CEE:4A36 (in fn3CEE_4A2E)
;;     3CEE:4A38 (in fn3CEE_4A2E)
fn3CEE_4A3C proc
	mov	es:[bx+2Ch],ax
	cmp	word ptr es:[bx+48h],0h
	jz	4A6Ch

l3CEE_4A47:
	cmp	word ptr es:[bx+34h],0h
	jle	4A56h

l3CEE_4A4E:
	mov	word ptr es:[bx+46h],1h
	jmp	4A63h

l3CEE_4A56:
	cmp	word ptr es:[bx+34h],0h
	jge	4A63h

l3CEE_4A5D:
	mov	word ptr es:[bx+44h],1h

l3CEE_4A63:
	mov	word ptr es:[bx+34h],0h
	jmp	4A91h
3CEE:4A6B                                  90                        .    

l3CEE_4A6C:
	mov	ax,es:[bx+26h]
	cmp	es:[bx+32h],ax
	jnz	4A91h

l3CEE_4A76:
	mov	word ptr es:[bx+34h],0h
	push	cs
	call	3CD2h
	or	ax,ax
	jnz	4A91h

l3CEE_4A84:
	les	bx,[3A86h]
	mov	ax,es:[bx+28h]
	inc	ax
	mov	es:[bx+32h],ax

l3CEE_4A91:
	les	bx,[3A86h]
	cmp	word ptr es:[bx+34h],0h
	jnz	4A9Fh

l3CEE_4A9C:
	jmp	4C9Fh

l3CEE_4A9F:
	mov	ax,es:[bx+34h]
	mov	[bp-6h],ax
	mov	ax,es:[bx+2Eh]
	add	ax,[bp-6h]
	mov	[bp-2h],ax
	cmp	es:[bx+26h],ax
	jg	4AB9h

l3CEE_4AB6:
	jmp	4B66h

l3CEE_4AB9:
	mov	bx,es:[bx+26h]
	shl	bx,1h
	shl	bx,1h
	mov	si,[3A86h]
	les	si,es:[si+52h]
	mov	ax,es:[bx+si]
	mov	dx,es:[bx+si+2h]
	mov	[bp-0Ah],ax
	mov	[bp-8h],dx
	or	ax,dx
	jz	4AE8h

l3CEE_4ADA:
	push	dx
	push	word ptr [bp-0Ah]
	push	cs
	call	3C78h
	add	sp,4h
	jmp	4AFCh
3CEE:4AE7                      90                                .        

l3CEE_4AE8:
	les	bx,[3A86h]
	mov	ax,es:[bx+26h]
	sub	ax,es:[bx+30h]
	push	ax
	push	cs
	call	3C50h
	add	sp,2h

l3CEE_4AFC:
	les	bx,[3A86h]
	mov	ax,es:[bx+26h]
	mov	es:[bx+30h],ax
	mov	word ptr es:[bx+34h],0h

l3CEE_4B0E:
	cmp	word ptr [bp-6h],0h
	jnz	4B17h

l3CEE_4B14:
	jmp	4C9Fh

l3CEE_4B17:
	mov	ax,0FFFFh
	push	ax
	push	cs
	call	3C50h
	add	sp,2h
	push	cs
	call	3CB8h
	or	ax,ax
	jz	4B58h

l3CEE_4B2A:
	les	bx,[3A86h]
	cmp	word ptr es:[bx+34h],0h
	jz	4B38h

l3CEE_4B35:
	jmp	4C9Fh

l3CEE_4B38:
	mov	ax,es:[bx+26h]
	cmp	es:[bx+2Eh],ax
	jnz	4B4Ch

l3CEE_4B42:
	mov	word ptr es:[bx+44h],1h
	jmp	4C9Fh
3CEE:4B4B                                  90                        .    

l3CEE_4B4C:
	mov	ax,es:[bx+26h]

l3CEE_4B50:
	mov	es:[bx+2Eh],ax
	jmp	4C9Fh
3CEE:4B57                      90                                .        

l3CEE_4B58:
	inc	word ptr [bp-6h]
	les	bx,[3A86h]
	dec	word ptr es:[bx+34h]
	jmp	4B0Eh
3CEE:4B65                90                                    .          

l3CEE_4B66:
	mov	ax,es:[bx+32h]
	dec	ax
	cmp	ax,[bp-2h]
	jl	4B73h

l3CEE_4B70:
	jmp	4C92h

l3CEE_4B73:
	les	bx,es:[bx+52h]
	mov	ax,es
	les	si,[3A86h]
	mov	si,es:[si+32h]
	shl	si,1h
	shl	si,1h
	mov	es,ax
	mov	ax,es:[bx+si-4h]
	mov	dx,es:[bx+si-2h]
	mov	[bp-0Ah],ax
	mov	[bp-8h],dx
	or	ax,dx
	jz	4BA6h

l3CEE_4B99:
	push	dx
	push	word ptr [bp-0Ah]
	push	cs
	call	3C78h
	add	sp,4h
	jmp	4BBBh

l3CEE_4BA6:
	les	bx,[3A86h]
	mov	ax,es:[bx+32h]
	sub	ax,es:[bx+30h]
	dec	ax
	push	ax
	push	cs
	call	3C50h
	add	sp,2h

l3CEE_4BBB:
	les	bx,[3A86h]
	mov	ax,es:[bx+32h]
	dec	ax
	mov	es:[bx+30h],ax
	mov	word ptr es:[bx+34h],0h

l3CEE_4BCE:
	cmp	word ptr [bp-6h],0h
	jnz	4BD7h

l3CEE_4BD4:
	jmp	4C9Fh

l3CEE_4BD7:
	mov	ax,1h
	push	ax
	push	cs
	call	3C50h
	add	sp,2h
	push	cs
	call	3C96h
	or	ax,ax
	jz	4C20h

l3CEE_4BEA:
	mov	ax,0FFFFh
	push	ax
	push	cs
	call	3C50h
	add	sp,2h
	les	bx,[3A86h]
	cmp	word ptr es:[bx+34h],0h
	jz	4C03h

l3CEE_4C00:
	jmp	4C9Fh

l3CEE_4C03:
	mov	ax,es:[bx+32h]
	dec	ax
	cmp	ax,es:[bx+2Eh]
	jnz	4C18h

l3CEE_4C0E:
	mov	word ptr es:[bx+46h],1h
	jmp	4C9Fh
3CEE:4C17                      90                                .        

l3CEE_4C18:
	mov	ax,es:[bx+32h]
	dec	ax
	jmp	4B50h

l3CEE_4C20:
	dec	word ptr [bp-6h]
	les	bx,[3A86h]
	mov	ax,es:[bx+28h]
	cmp	es:[bx+32h],ax
	jg	4C86h

l3CEE_4C31:
	inc	word ptr es:[bx+32h]
	inc	word ptr es:[bx+30h]
	mov	bx,es:[bx+30h]
	shl	bx,1h
	mov	si,[3A86h]
	les	si,es:[si+4Ah]
	mov	word ptr es:[bx+si],0h
	les	bx,[3A86h]
	mov	bx,es:[bx+30h]
	shl	bx,1h
	mov	si,[3A86h]
	les	si,es:[si+4Eh]
	mov	word ptr es:[bx+si],0h
	push	cs
	call	3AEEh
	les	bx,[3A86h]
	mov	bx,es:[bx+30h]
	shl	bx,1h
	shl	bx,1h
	mov	si,[3A86h]
	les	si,es:[si+52h]
	mov	es:[bx+si],ax
	mov	es:[bx+si+2h],dx
	jmp	4BCEh
3CEE:4C85                90                                    .          

l3CEE_4C86:
	les	bx,[3A86h]
	inc	word ptr es:[bx+34h]
	jmp	4BCEh
3CEE:4C91    90                                            .              

l3CEE_4C92:
	mov	ax,[bp-2h]
	mov	es:[bx+2Eh],ax
	mov	word ptr es:[bx+34h],0h

l3CEE_4C9F:
	les	bx,[3A86h]
	cmp	word ptr es:[bx+34h],0h
	jz	4CE7h

l3CEE_4CAA:
	push	word ptr es:[bx+34h]
	push	cs
	call	3F4Ch
	add	sp,2h
	les	bx,[3A86h]
	cmp	word ptr es:[bx+34h],0h
	jge	4CE1h

l3CEE_4CC0:
	mov	ax,es:[bx+28h]
	cmp	es:[bx+32h],ax
	jg	4CE1h

l3CEE_4CCA:
	mov	ax,es:[bx+32h]
	sub	ax,es:[bx+34h]
	mov	cx,es:[bx+28h]
	inc	cx
	cmp	ax,cx
	jle	4CDDh

l3CEE_4CDB:
	mov	ax,cx

l3CEE_4CDD:
	mov	es:[bx+32h],ax

l3CEE_4CE1:
	mov	word ptr es:[bx+34h],0h

l3CEE_4CE7:
	mov	word ptr [bp-4h],0h
	jmp	4D0Eh

l3CEE_4CEE:
	mov	bx,[bp-4h]
	shl	bx,1h
	mov	si,[3A86h]
	les	si,es:[si+4Eh]
	cmp	word ptr es:[bx+si],0h
	jnz	4D0Bh

l3CEE_4D01:
	push	word ptr [bp-4h]
	push	cs
	call	4882h
	add	sp,2h

l3CEE_4D0B:
	inc	word ptr [bp-4h]

l3CEE_4D0E:
	les	bx,[3A86h]
	mov	ax,[bp-4h]
	cmp	es:[bx+26h],ax
	jg	4CEEh

l3CEE_4D1B:
	mov	ax,es:[bx+28h]
	inc	ax
	mov	[bp-4h],ax
	jmp	4D46h
3CEE:4D25                90                                    .          

l3CEE_4D26:
	mov	bx,[bp-4h]
	shl	bx,1h
	mov	si,[3A86h]
	les	si,es:[si+4Eh]
	cmp	word ptr es:[bx+si],0h
	jnz	4D43h

l3CEE_4D39:
	push	word ptr [bp-4h]
	push	cs
	call	4882h
	add	sp,2h

l3CEE_4D43:
	inc	word ptr [bp-4h]

l3CEE_4D46:
	les	bx,[3A86h]
	mov	ax,[bp-4h]
	cmp	es:[bx+2Ah],ax
	jge	4D26h

l3CEE_4D53:
	mov	word ptr [bp-4h],1h
	mov	word ptr [bp-2h],0h
	mov	word ptr [bp-6h],0h
	jmp	4D8Eh

l3CEE_4D64:
	inc	word ptr [bp-2h]
	cmp	word ptr [bp-4h],0h
	jle	4D8Bh

l3CEE_4D6D:
	les	bx,[3A86h]
	mov	ax,es:[bx+2Eh]
	add	ax,[bp-2h]
	cmp	ax,es:[bx+28h]
	jle	4D8Bh

l3CEE_4D7E:
	mov	ax,[bp-4h]
	neg	ax
	mov	[bp-4h],ax
	mov	word ptr [bp-2h],1h

l3CEE_4D8B:
	inc	word ptr [bp-6h]

l3CEE_4D8E:
	les	bx,[3A86h]
	mov	ax,es:[bx+1Ch]
	cmp	[bp-6h],ax
	ja	4DF7h

l3CEE_4D9B:
	mov	ax,[bp-2h]
	imul	word ptr [bp-4h]
	mov	si,ax
	add	si,es:[bx+2Eh]
	mov	di,si
	shl	di,1h
	les	bx,es:[bx+4Ah]
	cmp	word ptr es:[bx+di],0h
	jnz	4DBDh

l3CEE_4DB5:
	push	si
	push	cs
	call	471Ah
	add	sp,2h

l3CEE_4DBD:
	mov	ax,[bp-2h]
	imul	word ptr [bp-4h]
	mov	si,ax
	les	bx,[3A86h]
	add	si,es:[bx+2Eh]
	mov	di,si
	shl	di,1h
	les	bx,es:[bx+4Eh]
	cmp	word ptr es:[bx+di],0h
	jnz	4DE3h

l3CEE_4DDB:
	push	si
	push	cs
	call	4882h
	add	sp,2h

l3CEE_4DE3:
	cmp	word ptr [bp+6h],0h
	jz	4DECh

l3CEE_4DE9:
	jmp	4D64h

l3CEE_4DEC:
	push	cs
	call	3BF8h
	or	ax,ax
	jnz	4DF7h

l3CEE_4DF4:
	jmp	4D64h

l3CEE_4DF7:
	les	bx,[3A86h]
	mov	ax,es:[bx+1Ch]
	cmp	[bp-6h],ax
	ja	4E07h

l3CEE_4E04:
	jmp	4E9Bh

l3CEE_4E07:
	mov	ax,es:[bx+3Ch]
	or	ax,es:[bx+3Eh]
	jz	4E26h

l3CEE_4E11:
	push	cs
	call	3B2Ah
	les	bx,[3A86h]
	cmp	ax,es:[bx+28h]
	jg	4E26h

l3CEE_4E1F:
	push	cs
	call	3B2Ah
	jmp	4E57h
3CEE:4E25                90                                    .          

l3CEE_4E26:
	les	bx,[3A86h]
	mov	ax,es:[bx+32h]
	cmp	es:[bx+2Eh],ax
	jl	4E5Fh

l3CEE_4E34:
	cmp	word ptr es:[bx+48h],0h
	jnz	4E43h

l3CEE_4E3B:
	push	cs
	call	3CD2h
	or	ax,ax
	jz	4E4Eh

l3CEE_4E43:
	les	bx,[3A86h]
	mov	ax,es:[bx+32h]
	jmp	4E57h
3CEE:4E4D                                        90                    .  

l3CEE_4E4E:
	les	bx,[3A86h]
	mov	ax,es:[bx+32h]
	dec	ax

l3CEE_4E57:
	les	bx,[3A86h]
	mov	es:[bx+2Eh],ax

l3CEE_4E5F:
	mov	bx,es:[bx+2Eh]
	shl	bx,1h
	shl	bx,1h
	mov	si,[3A86h]
	les	si,es:[si+52h]
	mov	ax,es:[bx+si]
	mov	dx,es:[bx+si+2h]
	or	dx,dx
	jg	4E86h

l3CEE_4E7A:
	jl	4E81h

l3CEE_4E7C:
	cmp	ax,1h
	jnc	4E86h

l3CEE_4E81:
	sub	dx,dx
	mov	ax,1h

l3CEE_4E86:
	push	dx
	push	ax
	push	cs
	call	3C78h
	add	sp,4h
	les	bx,[3A86h]
	mov	ax,es:[bx+2Eh]
	mov	es:[bx+30h],ax

l3CEE_4E9B:
	sub	ax,ax
	mov	es:[bx+3Eh],ax
	mov	es:[bx+3Ch],ax
	pop	si
	pop	di
	mov	sp,bp
	pop	bp
	retf
3CEE:4EAB                                  90                        .    

;; fn3CEE_4EAC: 3CEE:4EAC
;;   Called from:
;;     3CEE:6730 (in fn3CEE_66FF)
fn3CEE_4EAC proc
	push	bp
	mov	bp,sp
	sub	sp,0Ch
	push	si
	mov	word ptr [bp-4h],0h
	mov	word ptr [bp-0Ah],1h
	mov	word ptr [bp-6h],1h

l3CEE_4EC2:
	cmp	word ptr [bp-6h],0h
	jnz	4ECBh

l3CEE_4EC8:
	jmp	53E8h

l3CEE_4ECB:
	mov	ax,[bp-4h]
	cmp	ax,12h
	jz	4F4Eh

l3CEE_4ED3:
	jbe	4ED8h

l3CEE_4ED5:
	jmp	538Ch

l3CEE_4ED8:
	cmp	ax,6h
	jbe	4EE0h

l3CEE_4EDD:
	jmp	53AEh

l3CEE_4EE0:
	add	ax,ax
	xchg	bx,ax
	jmp	word ptr cs:[bx+18CEh]
3CEE:4EE8                         90 90 2B C0 50 0E E8 AD         ..+.P...
3CEE:4EF0 FA 83 C4 02 0E E8 00 ED 0B C0 74 0A 0E E8 2C ED ..........t...,.
3CEE:4F00 89 46 FC E9 F6 03 83 7E F6 00 74 08 C7 46 FC 00 .F.....~..t..F..
3CEE:4F10 01 EB AF 90 0E E8 5A F9 0E E8 DC EC 0B C0 74 F8 ......Z.......t.
3CEE:4F20 0E E8 A8 F8 EB 9C                               ......          

l3CEE_4F26:
	les	bx,[3A86h]
	inc	word ptr es:[bx+34h]
	jmp	5094h
3CEE:4F31    90 C4 1E 86 3A 26 FF 4F 34 E9 57 01 90 C4 1E  ....:&.O4.W....
3CEE:4F40 86 3A 26 8B 47 1C 26 01 47 34 E9 47 01 90       .:&.G.&.G4.G..  

l3CEE_4F4E:
	les	bx,[3A86h]
	mov	ax,es:[bx+1Ch]
	sub	es:[bx+34h],ax
	jmp	5094h
3CEE:4F5D                                        90                    .  

l3CEE_4F5E:
	les	bx,[3A86h]
	cmp	word ptr es:[bx+48h],0h
	jz	4F72h

l3CEE_4F69:
	mov	word ptr es:[bx+44h],1h
	jmp	5094h

l3CEE_4F72:
	call	far 2644h:2C1Ah
	jmp	5338h

l3CEE_4F7A:
	les	bx,[3A86h]
	cmp	word ptr es:[bx+48h],0h
	jz	4F8Eh

l3CEE_4F85:
	mov	word ptr es:[bx+46h],1h
	jmp	5094h

l3CEE_4F8E:
	call	far 2644h:2CF0h
	push	cs
	call	3B0Ch
	les	bx,[3A86h]
	mov	cx,es:[bx+1Ch]
	dec	cx
	sub	bx,bx
	cmp	bx,dx
	ja	4FB8h

l3CEE_4FA6:
	jc	4FACh

l3CEE_4FA8:
	cmp	cx,ax
	jnc	4FB8h

l3CEE_4FAC:
	mov	bx,[3A86h]
	mov	ax,es:[bx+1Ch]
	dec	ax
	jmp	4FBCh
3CEE:4FB7                      90                                .        

l3CEE_4FB8:
	push	cs
	call	3B0Ch

l3CEE_4FBC:
	les	bx,[3A86h]
	jmp	532Ah
3CEE:4FC3          90 C4 1E 86 3A 26 FF 77 2C 0E E8 B4 EB    ....:&.w,....

l3CEE_4FD0:
	add	sp,2h
	les	bx,[3A86h]

l3CEE_4FD7:
	mov	es:[bx+2Ch],ax
	jmp	5094h

l3CEE_4FDE:
	les	bx,[3A86h]
	push	word ptr es:[bx+2Ch]
	push	cs
	call	3BC0h
	jmp	4FD0h
3CEE:4FEC                                     C4 1E 86 3A             ...:
3CEE:4FF0 26 8B 47 40 EB E1 C4 1E 86 3A 26 8B 47 42 EB D7 &.G@.....:&.GB..

l3CEE_5000:
	les	bx,[3A86h]
	mov	ax,es:[bx]
	cmp	es:[bx+40h],ax
	jg	5010h

l3CEE_500D:
	jmp	5094h

l3CEE_5010:
	push	word ptr es:[bx+40h]
	push	cs
	call	3BC0h
	add	sp,2h
	les	bx,[3A86h]
	mov	es:[bx+40h],ax
	mov	word ptr es:[bx+42h],0h
	jmp	5094h
3CEE:502B                                  90 C4 1E 86 3A            ....:
3CEE:5030 26 8B 47 02 26 39 47 42 7D 5A 26 FF 77 42 0E E8 &.G.&9GB}Z&.wB..
3CEE:5040 42 EB 83 C4 02 C4 1E 86 3A 26 89 47 42 26 C7 47 B.......:&.GB&.G
3CEE:5050 40 00 00 EB 3F 90                               @...?.          

l3CEE_5056:
	les	bx,[3A86h]
	mov	ax,es:[bx]
	jmp	4FD7h

l3CEE_5060:
	les	bx,[3A86h]
	mov	ax,es:[bx+2h]
	jmp	4FD7h
3CEE:506B                                  90                        .    

l3CEE_506C:
	les	bx,[3A86h]
	mov	ax,es:[bx+26h]
	mov	es:[bx+30h],ax
	mov	es:[bx+2Eh],ax
	mov	ax,es:[bx+28h]
	inc	ax
	mov	es:[bx+32h],ax
	sub	ax,ax
	push	ax
	push	cs
	call	3F4Ch
	add	sp,2h
	mov	word ptr [bp-0Ah],1h

l3CEE_5094:
	mov	word ptr [bp-4h],0h
	jmp	4EC2h

l3CEE_509C:
	push	cs
	call	3CD2h
	or	ax,ax
	jz	50B6h

l3CEE_50A4:
	les	bx,[3A86h]
	cmp	word ptr es:[bx+48h],0h
	jnz	50B6h

l3CEE_50AF:
	mov	word ptr [bp-2h],3h
	jmp	50DBh

l3CEE_50B6:
	les	bx,[3A86h]
	cmp	word ptr es:[bx+46h],0h
	jz	50C8h

l3CEE_50C1:
	mov	word ptr [bp-2h],2h
	jmp	50DBh

l3CEE_50C8:
	cmp	word ptr es:[bx+44h],0h
	jz	50D6h

l3CEE_50CF:
	mov	word ptr [bp-2h],1h
	jmp	50DBh

l3CEE_50D6:
	mov	word ptr [bp-2h],0h

l3CEE_50DB:
	mov	ax,1h
	push	ax
	push	cs
	call	499Eh
	add	sp,2h
	push	cs
	call	47CCh
	les	bx,[3A86h]
	mov	ax,es:[bx+0Ah]
	or	ax,es:[bx+0Ch]
	jz	5174h

l3CEE_50F8:
	push	word ptr [bp-2h]
	call	far 2368h:01E0h
	add	sp,2h
	les	bx,[3A86h]
	mov	ax,es:[bx+2Ch]
	cwd
	push	dx
	push	ax
	call	far 2368h:0206h
	add	sp,4h
	mov	ax,2h
	push	ax
	call	far 21DCh:00A6h
	add	sp,2h
	les	bx,[3A86h]
	push	word ptr es:[bx+0Ch]
	push	word ptr es:[bx+0Ah]
	call	far 2368h:030Eh
	add	sp,4h
	call	far 21DCh:0368h
	les	bx,[1296h]
	cmp	word ptr es:[bx],2h
	jnz	514Ch

l3CEE_5145:
	mov	ax,es:[bx+8h]
	jmp	5164h
3CEE:514B                                  90                        .    

l3CEE_514C:
	push	word ptr es:[bx+0Eh]
	push	word ptr es:[bx+0Ch]
	push	word ptr es:[bx+0Ah]
	push	word ptr es:[bx+8h]
	call	far 3CEEh:0C5Ah
	add	sp,8h

l3CEE_5164:
	mov	[bp-8h],ax
	call	far 2368h:033Ch
	mov	ax,[bp-8h]
	mov	[bp-6h],ax
	jmp	518Ah

l3CEE_5174:
	mov	word ptr [bp-8h],1h
	cmp	word ptr [bp-4h],0Dh
	jz	5185h

l3CEE_517F:
	cmp	word ptr [bp-4h],1Bh
	jnz	518Ah

l3CEE_5185:
	mov	word ptr [bp-6h],0h

l3CEE_518A:
	les	bx,[3A86h]
	cmp	word ptr es:[bx+48h],0h
	jnz	51B0h

l3CEE_5195:
	push	cs
	call	3C96h
	or	ax,ax
	jz	51B0h

l3CEE_519D:
	push	cs
	call	3CD2h
	or	ax,ax
	jnz	51B0h

l3CEE_51A5:
	mov	ax,0FFFFh
	push	ax
	push	cs
	call	3C50h
	add	sp,2h

l3CEE_51B0:
	push	cs
	call	3AEEh
	les	bx,[3A86h]
	mov	es:[bx+3Ch],ax
	mov	es:[bx+3Eh],dx
	mov	word ptr es:[bx+44h],0h
	mov	word ptr es:[bx+46h],0h
	mov	word ptr [bp-0Ah],0h
	mov	word ptr [bp-4h],0h
	cmp	word ptr [bp-8h],3h
	jz	51DFh

l3CEE_51DC:
	jmp	5304h

l3CEE_51DF:
	cmp	word ptr es:[bx+48h],0h
	jz	51EEh

l3CEE_51E6:
	push	cs
	call	3C96h
	or	ax,ax
	jnz	51F4h

l3CEE_51EE:
	mov	ax,1h
	jmp	51F6h
3CEE:51F3          90                                        .            

l3CEE_51F4:
	sub	ax,ax

l3CEE_51F6:
	les	bx,[3A86h]
	mov	es:[bx+48h],ax
	or	ax,ax
	jnz	5205h

l3CEE_5202:
	jmp	5290h

l3CEE_5205:
	call	far 2644h:2CF0h
	mov	ax,1h
	push	ax
	push	cs
	call	3C50h
	add	sp,2h
	push	cs
	call	3AEEh
	les	bx,[3A86h]
	mov	es:[bx+3Ch],ax
	mov	es:[bx+3Eh],dx
	push	cs
	call	3CD2h
	or	ax,ax
	jz	5238h

l3CEE_522D:
	les	bx,[3A86h]
	mov	ax,es:[bx+26h]
	jmp	5241h
3CEE:5237                      90                                .        

l3CEE_5238:
	les	bx,[3A86h]
	mov	ax,es:[bx+2Eh]
	inc	ax

l3CEE_5241:
	mov	es:[bx+32h],ax
	mov	ax,1h
	push	ax
	push	cs
	call	3F4Ch
	add	sp,2h
	les	bx,[3A86h]
	mov	ax,es:[bx+32h]
	cmp	ax,es:[bx+28h]
	jle	5262h

l3CEE_525E:
	mov	ax,es:[bx+28h]

l3CEE_5262:
	mov	es:[bx+2Eh],ax
	mov	es:[bx+32h],ax
	mov	es:[bx+30h],ax
	mov	ax,es:[bx+3Ch]
	mov	dx,es:[bx+3Eh]
	mov	bx,es:[bx+2Eh]
	shl	bx,1h
	shl	bx,1h
	mov	si,[3A86h]
	les	si,es:[si+52h]
	mov	es:[bx+si],ax
	mov	es:[bx+si+2h],dx
	jmp	52F2h
3CEE:528F                                              90                .

l3CEE_5290:
	les	bx,[3A86h]
	mov	bx,es:[bx+2Eh]
	shl	bx,1h
	mov	si,[3A86h]
	les	si,es:[si+4Ah]
	mov	word ptr es:[bx+si],0h
	les	bx,[3A86h]
	mov	bx,es:[bx+2Eh]
	shl	bx,1h
	mov	si,[3A86h]
	les	si,es:[si+4Eh]
	mov	word ptr es:[bx+si],0h
	les	bx,[3A86h]
	mov	bx,es:[bx+2Eh]
	shl	bx,1h
	shl	bx,1h
	mov	si,[3A86h]
	les	si,es:[si+52h]
	sub	ax,ax
	mov	es:[bx+si+2h],ax
	mov	es:[bx+si],ax
	les	bx,[3A86h]
	mov	ax,es:[bx+32h]
	dec	ax
	cmp	ax,es:[bx+26h]
	jge	52EEh

l3CEE_52EA:
	mov	ax,es:[bx+26h]

l3CEE_52EE:
	mov	es:[bx+2Eh],ax

l3CEE_52F2:
	les	bx,[3A86h]
	mov	word ptr es:[bx+34h],0h
	mov	word ptr [bp-0Ah],1h
	jmp	4EC2h

l3CEE_5304:
	cmp	word ptr [bp-8h],2h
	jz	5318h

l3CEE_530A:
	push	cs
	call	3B2Ah
	les	bx,[3A86h]
	cmp	ax,es:[bx+28h]
	jle	5340h

l3CEE_5318:
	les	bx,[3A86h]
	mov	word ptr es:[bx+48h],0h
	mov	ax,es:[bx+2Eh]
	sub	ax,es:[bx+26h]

l3CEE_532A:
	mov	es:[bx+34h],ax
	neg	ax
	push	ax
	push	cs
	call	3C50h
	add	sp,2h

l3CEE_5338:
	mov	word ptr [bp-4h],270Fh
	jmp	4EC2h

l3CEE_5340:
	push	cs
	call	3B2Ah
	les	bx,[3A86h]
	mov	es:[bx+2Eh],ax
	mov	es:[bx+30h],ax
	mov	bx,es:[bx+2Eh]
	shl	bx,1h
	mov	si,[3A86h]
	les	si,es:[si+4Ah]
	mov	word ptr es:[bx+si],0h
	les	bx,[3A86h]
	mov	bx,es:[bx+2Eh]
	shl	bx,1h
	mov	si,[3A86h]
	les	si,es:[si+4Eh]
	mov	word ptr es:[bx+si],0h
	jmp	4EC2h
3CEE:537D                                        90 3A 14              .:.
3CEE:5380 3C 15 7C 15 8E 14 14 15 82 14 46 15             <.|.......F.    

l3CEE_538C:
	cmp	ax,1Ah
	jnz	5394h

l3CEE_5391:
	jmp	5000h

l3CEE_5394:
	ja	53C0h

l3CEE_5396:
	cmp	ax,13h
	jnz	539Eh

l3CEE_539B:
	jmp	4FDEh

l3CEE_539E:
	cmp	ax,17h
	jnz	53A6h

l3CEE_53A3:
	jmp	5060h

l3CEE_53A6:
	cmp	ax,18h
	jnz	53AEh

l3CEE_53AB:
	jmp	4F26h

l3CEE_53AE:
	cmp	word ptr [bp-4h],100h
	jnz	53B8h

l3CEE_53B5:
	jmp	509Ch

l3CEE_53B8:
	mov	word ptr [bp-2h],4h
	jmp	50DBh

l3CEE_53C0:
	cmp	ax,1Dh
	jnz	53C8h

l3CEE_53C5:
	jmp	5056h

l3CEE_53C8:
	cmp	ax,1Eh
	jnz	53D0h

l3CEE_53CD:
	jmp	4F7Ah

l3CEE_53D0:
	cmp	ax,1Fh
	jnz	53D8h

l3CEE_53D5:
	jmp	4F5Eh

l3CEE_53D8:
	cmp	ax,100h
	jz	53AEh

l3CEE_53DD:
	cmp	ax,270Fh
	jnz	53E5h

l3CEE_53E2:
	jmp	506Ch

l3CEE_53E5:
	jmp	53AEh
3CEE:53E7                      90                                .        

l3CEE_53E8:
	pop	si
	mov	sp,bp
	pop	bp
	retf
3CEE:53ED                                        90 55 8B              .U.
3CEE:53F0 EC 83 EC 14 57 56 C4 5E 06 26 8A 07 88 46 FC 2A ....WV.^.&...F.*
3CEE:5400 E4 50 9A 40 00 AD 38 83 C4 02 A8 02 75 12 80 7E .P.@..8.....u..~
3CEE:5410 FC 5F 74 0C 80 7E FC 2D 74 06 80 7E FC 3E 75 0A ._t..~.-t..~.>u.
3CEE:5420 2B C0 99 5E 5F 8B E5 5D CB 90 FF 76 08 FF 76 06 +..^_..]...v..v.
3CEE:5430 9A F5 03 17 20 83 C4 04 89 46 FE EB 57 90 8B 7E .... ....F..W..~
3CEE:5440 FE C4 5E 06 26 8A 41 FF 88 46 FC 2A E4 8B F0 56 ..^.&.A..F.*...V
3CEE:5450 9A 40 00 AD 38 83 C4 02 A8 01 75 35 56 9A 40 00 .@..8.....u5V.@.
3CEE:5460 AD 38 83 C4 02 A8 02 75 28 80 7E FC 5F 74 22 80 .8.....u(.~._t".
3CEE:5470 7E FC 3E 75 16 FF 4E FE 74 11 8B 7E FE C4 5E 06 ~.>u..N.t..~..^.
3CEE:5480 26 80 79 FF 2D 75 04 C6 46 FC 00 80 7E FC 00 75 &.y.-u..F...~..u
3CEE:5490 8F FF 4E FE 83 7E FE 00 75 A4 8B 46 06 8B 56 08 ..N..~..u..F..V.
3CEE:54A0 89 46 EC 89 56 EE B8 3E 00 50 52 FF 76 06 0E E8 .F..V..>.PR.v...
3CEE:54B0 0A E6 83 C4 06 89 46 FE FF 76 08 FF 76 06 9A F5 ......F..v..v...
3CEE:54C0 03 17 20 83 C4 04 3B 46 FE 76 25 FF 4E FE FF 76 .. ...;F.v%.N..v
3CEE:54D0 FE FF 76 EE FF 76 EC 8D 46 F0 16 50 9A 58 02 17 ..v..v..F..P.X..
3CEE:54E0 20 83 C4 0A 8B 46 FE 05 02 00 01 46 EC EB 0E 90  ....F.....F....
3CEE:54F0 C7 46 FE 01 00 A0 FC 12 04 40 88 46 F0 8B 76 FE .F.......@.F..v.
3CEE:5500 C6 42 F0 00 8D 46 F0 16 50 9A 94 04 C7 2B 83 C4 .B...F..P....+..
3CEE:5510 04 C4 5E 0A 26 89 47 10 26 89 57 12 FF 76 EE FF ..^.&.G.&.W..v..
3CEE:5520 76 EC 9A 94 04 C7 2B 83 C4 04 C4 5E 0A 26 89 47 v.....+....^.&.G
3CEE:5530 0C 26 89 57 0E 26 C4 5F 10 26 FF 77 08 C4 5E 0A .&.W.&._.&.w..^.
3CEE:5540 26 FF 77 0E 26 FF 77 0C 9A 8A 06 68 23 83 C4 06 &.w.&.w....h#...
3CEE:5550 5E 5F 8B E5 5D CB                               ^_..].          

;; fn3CEE_5556: 3CEE:5556
;;   Called from:
;;     3CEE:658D (in fn3CEE_6121)
fn3CEE_5556 proc
	push	bp
	mov	bp,sp
	sub	sp,12h
	mov	word ptr [bp-10h],0h
	mov	word ptr [bp-4h],0h
	les	bx,[3A86h]
	mov	word ptr es:[bx+1Ah],0h
	mov	word ptr es:[bx],0h
	mov	word ptr es:[bx+2h],0h
	mov	word ptr es:[bx+1Eh],0h
	mov	word ptr es:[bx+20h],0h
	mov	ax,es:[bx+12h]
	sub	ax,es:[bx+0Eh]
	mov	es:[bx+2Ah],ax
	mov	word ptr [bp-0Eh],0h
	jmp	586Bh
3CEE:559B                                  90                        .    

l3CEE_559C:
	sub	ax,ax
	push	ax
	les	bx,[bp-8h]
	push	word ptr es:[bx+6h]
	push	word ptr es:[bx+4h]
	call	far 2368h:022Eh
	add	sp,6h
	call	far 31FFh:1D44h

l3CEE_55B7:
	les	bx,[bp-8h]
	les	bx,es:[bx+8h]
	cmp	byte ptr es:[bx],0h
	jz	55CCh

l3CEE_55C4:
	mov	word ptr [bp-2h],100h
	jmp	55D6h
3CEE:55CB                                  90                        .    

l3CEE_55CC:
	les	bx,[1296h]
	mov	ax,es:[bx]
	mov	[bp-2h],ax

l3CEE_55D6:
	les	bx,[bp-8h]
	push	word ptr es:[bx+0Ah]
	push	word ptr es:[bx+8h]
	call	far 3431h:3E9Eh
	add	sp,4h
	cmp	word ptr [bp-2h],300h
	jnz	55FCh

l3CEE_55F0:
	les	bx,[bp-8h]
	mov	word ptr es:[bx+3Ah],0Ah
	jmp	560Bh
3CEE:55FB                                  90                        .    

l3CEE_55FC:
	les	bx,[1296h]
	mov	ax,es:[bx+2h]
	les	bx,[bp-8h]
	mov	es:[bx+3Ah],ax

l3CEE_560B:
	call	far 2368h:033Ch
	les	bx,[3A86h]
	mov	ax,es:[bx+14h]
	sub	ax,es:[bx+10h]
	inc	ax
	les	bx,[bp-8h]
	sub	ax,es:[bx+3Ah]
	sbb	cx,cx
	and	ax,cx
	add	ax,es:[bx+3Ah]
	mov	es:[bx+40h],ax
	mov	ax,es:[bx+16h]
	mov	dx,es:[bx+18h]
	mov	[bp-0Ch],ax
	mov	[bp-0Ah],dx
	cmp	word ptr es:[bx+14h],0h
	jz	5694h

l3CEE_5645:
	mov	word ptr es:[bx+1Eh],0h

l3CEE_564B:
	les	bx,[bp-0Ch]
	cmp	byte ptr es:[bx],0h
	jnz	5657h

l3CEE_5654:
	jmp	56EDh

l3CEE_5657:
	mov	ax,3Bh
	push	ax
	push	es
	push	bx
	push	cs
	call	3ABCh
	add	sp,6h
	mov	[bp-12h],ax
	add	[bp-0Ch],ax
	les	bx,[bp-8h]
	inc	word ptr es:[bx+1Eh]
	mov	ax,es:[bx+3Ah]
	sub	ax,[bp-12h]
	sbb	cx,cx
	not	cx
	and	ax,cx
	add	ax,[bp-12h]
	mov	es:[bx+3Ah],ax
	les	bx,[bp-0Ch]
	cmp	byte ptr es:[bx],0h
	jz	564Bh

l3CEE_568E:
	inc	word ptr [bp-0Ch]
	jmp	564Bh
3CEE:5693          90                                        .            

l3CEE_5694:
	les	bx,[bp-8h]
	mov	word ptr es:[bx+1Eh],1h
	jmp	56E4h
3CEE:569F                                              90                .

l3CEE_56A0:
	mov	ax,3Eh
	push	ax
	push	word ptr [bp-0Ah]
	push	word ptr [bp-0Ch]
	push	cs
	call	3ABCh
	add	sp,6h
	mov	[bp-12h],ax
	add	[bp-0Ch],ax
	les	bx,[bp-0Ch]
	cmp	byte ptr es:[bx],0h
	jz	56CDh

l3CEE_56C0:
	inc	word ptr [bp-0Ch]
	inc	word ptr [bp-12h]
	les	bx,[bp-8h]
	inc	word ptr es:[bx+1Eh]

l3CEE_56CD:
	les	bx,[bp-8h]
	mov	ax,es:[bx+3Ah]
	sub	ax,[bp-12h]
	sbb	cx,cx
	not	cx
	and	ax,cx
	add	ax,[bp-12h]
	mov	es:[bx+3Ah],ax

l3CEE_56E4:
	les	bx,[bp-0Ch]
	cmp	byte ptr es:[bx],0h
	jnz	56A0h

l3CEE_56ED:
	les	bx,[bp-8h]
	les	bx,es:[bx+22h]
	cmp	byte ptr es:[bx],0h
	jz	5706h

l3CEE_56FA:
	les	bx,[bp-8h]
	inc	word ptr es:[bx+1Eh]
	mov	word ptr [bp-10h],1h

l3CEE_5706:
	les	bx,[bp-8h]
	mov	ax,es:[bx+1Ah]
	mov	dx,es:[bx+1Ch]
	mov	[bp-0Ch],ax
	mov	[bp-0Ah],dx
	mov	word ptr es:[bx+20h],0h
	jmp	575Eh
3CEE:571F                                              90                .

l3CEE_5720:
	mov	ax,3Bh
	push	ax
	push	word ptr [bp-0Ah]
	push	word ptr [bp-0Ch]
	push	cs
	call	3ABCh
	add	sp,6h
	mov	[bp-12h],ax
	add	[bp-0Ch],ax
	les	bx,[bp-8h]
	inc	word ptr es:[bx+20h]
	mov	ax,es:[bx+3Ah]
	sub	ax,[bp-12h]
	sbb	cx,cx
	not	cx
	and	ax,cx
	add	ax,[bp-12h]
	mov	es:[bx+3Ah],ax
	les	bx,[bp-0Ch]
	cmp	byte ptr es:[bx],0h
	jz	575Eh

l3CEE_575B:
	inc	word ptr [bp-0Ch]

l3CEE_575E:
	les	bx,[bp-0Ch]
	cmp	byte ptr es:[bx],0h
	jnz	5720h

l3CEE_5767:
	les	bx,[bp-8h]
	les	bx,es:[bx+26h]
	cmp	byte ptr es:[bx],0h
	jz	5780h

l3CEE_5774:
	les	bx,[bp-8h]
	inc	word ptr es:[bx+20h]
	mov	word ptr [bp-4h],1h

l3CEE_5780:
	les	bx,[3A86h]
	mov	ax,es:[bx+14h]
	sub	ax,es:[bx+10h]
	inc	ax
	les	bx,[bp-8h]
	sub	ax,es:[bx+3Ah]
	sbb	cx,cx
	and	ax,cx
	add	ax,es:[bx+3Ah]
	mov	es:[bx+3Ah],ax
	mov	ax,[bp-2h]
	cmp	ax,2h
	jnz	57ABh

l3CEE_57A8:
	jmp	58ACh

l3CEE_57AB:
	cmp	ax,8h
	jnz	57B3h

l3CEE_57B0:
	jmp	58ACh

l3CEE_57B3:
	cmp	ax,20h
	jz	57CAh

l3CEE_57B8:
	cmp	ax,80h
	jnz	57C0h

l3CEE_57BD:
	jmp	58BEh

l3CEE_57C0:
	cmp	ax,100h
	jz	57CAh

l3CEE_57C5:
	cmp	ax,300h
	jnz	57D0h

l3CEE_57CA:
	mov	word ptr es:[bx+3Eh],0h

l3CEE_57D0:
	cmp	word ptr es:[bx+3Ah],0h
	jz	5813h

l3CEE_57D7:
	les	bx,[3A86h]
	cmp	word ptr es:[bx],0h
	jnz	57E8h

l3CEE_57E1:
	mov	ax,[bp-0Eh]
	inc	ax
	mov	es:[bx],ax

l3CEE_57E8:
	mov	ax,[bp-0Eh]
	inc	ax
	mov	es:[bx+2h],ax
	mov	ax,[bp-0Eh]
	cmp	es:[bx],ax
	ja	5813h

l3CEE_57F8:
	les	bx,[bp-8h]
	push	word ptr es:[bx+2Ch]
	push	word ptr es:[bx+2Ah]
	call	far 2017h:03F5h
	add	sp,4h
	les	bx,[3A86h]
	add	es:[bx+1Ah],ax

l3CEE_5813:
	les	bx,[3A86h]
	mov	ax,es:[bx+1Ah]
	les	bx,[bp-8h]
	mov	es:[bx+3Ch],ax
	mov	ax,es:[bx+3Ah]
	les	bx,[3A86h]
	add	es:[bx+1Ah],ax
	les	bx,[bp-8h]
	mov	ax,es:[bx+1Eh]
	les	bx,[3A86h]
	sub	ax,es:[bx+1Eh]
	sbb	cx,cx
	not	cx
	and	ax,cx
	add	ax,es:[bx+1Eh]
	mov	es:[bx+1Eh],ax
	les	bx,[bp-8h]
	mov	ax,es:[bx+20h]
	les	bx,[3A86h]
	sub	ax,es:[bx+20h]
	sbb	cx,cx
	not	cx
	and	ax,cx
	add	ax,es:[bx+20h]
	mov	es:[bx+20h],ax
	inc	word ptr [bp-0Eh]

l3CEE_586B:
	mov	ax,[bp-0Eh]
	cmp	es:[bx+4h],ax
	ja	5877h

l3CEE_5874:
	jmp	58F8h

l3CEE_5877:
	mov	ax,42h
	mul	word ptr [bp-0Eh]
	add	ax,es:[bx+6h]
	mov	dx,es:[bx+8h]
	mov	[bp-8h],ax
	mov	[bp-6h],dx
	les	bx,[bp-8h]
	mov	ax,es:[bx]
	or	ax,es:[bx+2h]
	jnz	589Ah

l3CEE_5897:
	jmp	559Ch

l3CEE_589A:
	push	word ptr es:[bx+2h]
	push	word ptr es:[bx]
	call	far 2644h:17C8h
	add	sp,4h
	jmp	55B7h

l3CEE_58AC:
	les	bx,[bp-8h]
	mov	ax,es:[bx+3Ah]
	sub	ax,es:[bx+40h]

l3CEE_58B7:
	mov	es:[bx+3Eh],ax
	jmp	57D0h

l3CEE_58BE:
	mov	ax,es:[bx+3Ah]
	dec	ax
	shr	ax,1h
	jmp	58B7h
3CEE:58C7                      90                                .        

l3CEE_58C8:
	cmp	word ptr [bp-4h],1h
	sbb	ax,ax
	inc	ax
	les	bx,[3A86h]
	cmp	ax,es:[bx+20h]
	jc	58EDh

l3CEE_58D9:
	cmp	word ptr es:[bx+20h],0h
	jz	58F4h

l3CEE_58E0:
	cmp	word ptr [bp-10h],0h
	jz	58F4h

l3CEE_58E6:
	cmp	word ptr es:[bx+1Eh],1h
	jnz	58F4h

l3CEE_58ED:
	dec	word ptr es:[bx+20h]
	jmp	58F8h
3CEE:58F3          90                                        .            

l3CEE_58F4:
	dec	word ptr es:[bx+1Eh]

l3CEE_58F8:
	les	bx,[3A86h]
	mov	ax,es:[bx+1Eh]
	add	ax,es:[bx+20h]
	cmp	ax,es:[bx+2Ah]
	ja	58C8h

l3CEE_590A:
	mov	word ptr [bp-0Eh],0h
	jmp	5996h

l3CEE_5912:
	mov	ax,42h
	mul	word ptr [bp-0Eh]
	add	ax,es:[bx+6h]
	mov	dx,es:[bx+8h]
	mov	[bp-8h],ax
	mov	[bp-6h],dx
	cmp	word ptr [bp-10h],0h
	jz	5940h

l3CEE_592C:
	les	bx,[bp-8h]
	les	bx,es:[bx+22h]
	cmp	byte ptr es:[bx],0h
	jnz	5940h

l3CEE_5939:
	les	bx,[bp-8h]
	inc	word ptr es:[bx+1Eh]

l3CEE_5940:
	cmp	word ptr [bp-4h],0h
	jz	595Ah

l3CEE_5946:
	les	bx,[bp-8h]
	les	bx,es:[bx+26h]
	cmp	byte ptr es:[bx],0h
	jnz	595Ah

l3CEE_5953:
	les	bx,[bp-8h]
	inc	word ptr es:[bx+20h]

l3CEE_595A:
	les	bx,[bp-8h]
	mov	ax,es:[bx+1Eh]
	les	bx,[3A86h]
	sub	ax,es:[bx+1Eh]
	sbb	cx,cx
	and	ax,cx
	add	ax,es:[bx+1Eh]
	les	bx,[bp-8h]
	mov	es:[bx+1Eh],ax
	mov	ax,es:[bx+20h]
	les	bx,[3A86h]
	sub	ax,es:[bx+20h]
	sbb	cx,cx
	and	ax,cx
	add	ax,es:[bx+20h]
	les	bx,[bp-8h]
	mov	es:[bx+20h],ax
	inc	word ptr [bp-0Eh]

l3CEE_5996:
	les	bx,[3A86h]
	mov	ax,[bp-0Eh]
	cmp	es:[bx+4h],ax
	jbe	59A6h

l3CEE_59A3:
	jmp	5912h

l3CEE_59A6:
	mov	ax,es:[bx+1Eh]
	mov	es:[bx+26h],ax
	mov	ax,es:[bx+2Ah]
	sub	ax,es:[bx+20h]
	mov	es:[bx+28h],ax
	cmp	word ptr [bp-10h],0h
	jz	59CEh

l3CEE_59C0:
	cmp	word ptr es:[bx+1Eh],0h
	jz	59CEh

l3CEE_59C7:
	mov	ax,es:[bx+26h]
	dec	ax
	jmp	59D1h

l3CEE_59CE:
	mov	ax,0FFFFh

l3CEE_59D1:
	mov	es:[bx+22h],ax
	cmp	word ptr [bp-4h],0h
	jz	59EAh

l3CEE_59DB:
	cmp	word ptr es:[bx+20h],0h
	jz	59EAh

l3CEE_59E2:
	mov	ax,es:[bx+28h]
	inc	ax
	jmp	59EDh
3CEE:59E9                            90                            .      

l3CEE_59EA:
	mov	ax,0FFFFh

l3CEE_59ED:
	mov	es:[bx+24h],ax
	mov	ax,es:[bx+28h]
	sub	ax,es:[bx+26h]
	inc	ax
	mov	es:[bx+1Ch],ax
	mov	sp,bp
	pop	bp
	retf
3CEE:5A02       55 8B EC 83 EC 12 57 56 A1 86 3A 8B 16 88   U.....WV..:...
3CEE:5A10 3A 89 46 FA 89 56 FC B8 58 00 50 9A 7E 09 DC 21 :.F..V..X.P.~..!
3CEE:5A20 83 C4 02 A3 86 3A 89 16 88 3A C4 1E 86 3A 26 C7 .....:...:...:&.
3CEE:5A30 47 56 00 00 26 C7 47 1A 00 00 26 C7 47 46 00 00 GV..&.G...&.GF..
3CEE:5A40 26 C7 47 44 00 00 26 C7 47 48 00 00 C7 46 F0 00 &.GD..&.GH...F..
3CEE:5A50 00 C7 46 FE 00 00 2B C0 50 9A 7C 01 5D 3B 83 C4 ..F...+.P.|.];..
3CEE:5A60 02 89 46 EE FF 46 FE 39 46 FE 77 24 FF 76 FE 9A ..F..F.9F.w$.v..
3CEE:5A70 7C 01 5D 3B 83 C4 02 A8 02 74 15 FF 76 FE 9A 06 |.];.....t..v...
3CEE:5A80 03 5D 3B 83 C4 02 C4 1E 86 3A 26 89 47 0E EB 0A .];......:&.G...
3CEE:5A90 C4 1E 86 3A 26 C7 47 0E 00 00 FF 46 FE 8B 46 EE ...:&.G....F..F.
3CEE:5AA0 39 46 FE 77 25 FF 76 FE 9A 7C 01 5D 3B 83 C4 02 9F.w%.v..|.];...
3CEE:5AB0 A8 02 74 16 FF 76 FE 9A 06 03 5D 3B 83 C4 02 C4 ..t..v....];....
3CEE:5AC0 1E 86 3A 26 89 47 10 EB 0B 90 C4 1E 86 3A 26 C7 ..:&.G.......:&.
3CEE:5AD0 47 10 00 00 FF 46 FE 8B 46 EE 39 46 FE 77 21 FF G....F..F.9F.w!.
3CEE:5AE0 76 FE 9A 7C 01 5D 3B 83 C4 02 A8 02 74 12 FF 76 v..|.];.....t..v
3CEE:5AF0 FE 9A 06 03 5D 3B 83 C4 02 C4 1E 86 3A EB 08 90 ....];......:...
3CEE:5B00 C4 1E 86 3A A1 EE 0E 26 89 47 12 FF 46 FE 8B 46 ...:...&.G..F..F
3CEE:5B10 EE 39 46 FE 77 20 FF 76 FE 9A 7C 01 5D 3B 83 C4 .9F.w .v..|.];..
3CEE:5B20 02 A8 02 74 11 FF 76 FE 9A 06 03 5D 3B 83 C4 02 ...t..v....];...
3CEE:5B30 C4 1E 86 3A EB 07 C4 1E 86 3A A1 F0 0E 26 89 47 ...:.....:...&.G
3CEE:5B40 14 FF 46 FE 8B 46 EE 39 46 FE 76 03 E9 93 01 FF ..F..F.9F.v.....
3CEE:5B50 76 FE 9A 7C 01 5D 3B 83 C4 02 A9 00 02 75 03 E9 v..|.];......u..
3CEE:5B60 80 01 2B C0 50 FF 76 FE 9A E8 01 5D 3B 83 C4 04 ..+.P.v....];...
3CEE:5B70 C4 1E 86 3A 26 89 47 04 C7 46 F2 01 00 EB 04 90 ...:&.G..F......
3CEE:5B80 FF 46 F2 C4 1E 86 3A 8B 46 F2 26 39 47 04 72 28 .F....:.F.&9G.r(
3CEE:5B90 50 FF 76 FE 9A E8 01 5D 3B 83 C4 04 A8 01 74 18 P.v....];.....t.
3CEE:5BA0 FF 76 F2 FF 76 FE 9A 52 02 5D 3B 83 C4 04 8B D8 .v..v..R.];.....
3CEE:5BB0 8E C2 26 80 3F 00 75 C8 C4 1E 86 3A 8B 46 F2 48 ..&.?.u....:.F.H
3CEE:5BC0 26 89 47 04 0B C0 75 03 E9 C5 00 B8 42 00 26 F7 &.G...u.....B.&.
3CEE:5BD0 67 04 50 9A 7E 09 DC 21 83 C4 02 C4 1E 86 3A 26 g.P.~..!......:&
3CEE:5BE0 89 47 06 26 89 57 08 C7 46 F2 00 00 EB 3F 8B 46 .G.&.W..F....?.F
3CEE:5BF0 F2 40 50 FF 76 FE 9A 52 02 5D 3B 83 C4 04 C4 1E .@P.v..R.];.....
3CEE:5C00 86 3A 26 C4 5F 06 26 89 40 04 26 89 50 06 57 FF .:&._.&.@.&.P.W.
3CEE:5C10 76 FE 9A 52 02 5D 3B 83 C4 04 C4 1E 86 3A 26 C4 v..R.];......:&.
3CEE:5C20 5F 06 26 89 40 16 26 89 50 18 FF 46 F2 C4 1E 86 _.&.@.&.P..F....
3CEE:5C30 3A 8B 46 F2 26 39 47 04 76 5B B8 42 00 F7 66 F2 :.F.&9G.v[.B..f.
3CEE:5C40 8B F0 8B 7E F2 47 26 8B 47 06 26 8B 57 08 03 C6 ...~.G&.G.&.W...
3CEE:5C50 52 50 57 FF 76 FE 9A 52 02 5D 3B 83 C4 04 52 50 RPW.v..R.];...RP
3CEE:5C60 0E E8 8A F7 83 C4 08 C4 1E 86 3A 26 C4 5F 06 26 ..........:&._.&
3CEE:5C70 89 00 26 89 50 02 C4 1E 86 3A 26 C4 5F 06 26 8B ..&.P....:&._.&.
3CEE:5C80 00 26 0B 40 02 75 03 E9 64 FF 2B C0 99 E9 6E FF .&.@.u..d.+...n.
3CEE:5C90 C7 46 F0 01 00 83 7E F0 00 74 03 E9 03 09 FF 46 .F....~..t.....F
3CEE:5CA0 FE 8B 46 EE 39 46 FE 76 03 E9 52 01 FF 76 FE 9A ..F.9F.v..R..v..
3CEE:5CB0 7C 01 5D 3B 83 C4 02 A8 01 75 03 E9 40 01 FF 76 |.];.....u..@..v
3CEE:5CC0 FE 9A 52 02 5D 3B 83 C4 02 52 50 9A 94 04 C7 2B ..R.];...RP....+
3CEE:5CD0 83 C4 04 C4 1E 86 3A 26 89 47 0A 26 89 57 0C E9 ......:&.G.&.W..
3CEE:5CE0 2A 01 C4 1E 0A 13 26 8B 07 26 0B 47 02 74 0B 26 *.....&..&.G.t.&
3CEE:5CF0 C4 1F 26 8B 87 A6 00 EB 03 90 2B C0 C4 1E 86 3A ..&.......+....:
3CEE:5D00 26 89 47 04 0B C0 74 88 B8 42 00 26 F7 67 04 50 &.G...t..B.&.g.P
3CEE:5D10 9A 7E 09 DC 21 83 C4 02 C4 1E 86 3A 26 89 47 06 .~..!......:&.G.
3CEE:5D20 26 89 57 08 C7 46 F2 00 00 EB 04 90 FF 46 F2 C4 &.W..F.......F..
3CEE:5D30 1E 86 3A 8B 46 F2 26 39 47 04 77 03 E9 56 FF C4 ..:.F.&9G.w..V..
3CEE:5D40 1E 0A 13 26 C4 1F 26 C4 9F A8 00 B8 12 00 F7 66 ...&..&........f
3CEE:5D50 F2 8B F8 26 FF 71 10 26 FF 71 0E 9A 0A 05 C7 2B ...&.q.&.q.....+
3CEE:5D60 83 C4 04 89 46 F4 89 56 F6 B8 42 00 F7 66 F2 8B ....F..V..B..f..
3CEE:5D70 F0 FF 76 F6 FF 76 F4 9A F5 03 17 20 83 C4 04 40 ..v..v..... ...@
3CEE:5D80 50 FF 76 F6 FF 76 F4 C4 1E 86 3A 26 C4 5F 06 8D P.v..v....:&._..
3CEE:5D90 40 2E 06 50 9A 58 02 17 20 83 C4 0A C4 1E 86 3A @..P.X.. ......:
3CEE:5DA0 26 8B 47 06 26 8B 57 08 03 C6 52 50 26 C4 5F 06 &.G.&.W...RP&._.
3CEE:5DB0 8D 40 2E 06 50 0E E8 35 F6 83 C4 08 C4 1E 86 3A .@..P..5.......:
3CEE:5DC0 26 C4 5F 06 26 89 00 26 89 50 02 C4 1E 86 3A 26 &._.&..&.P....:&
3CEE:5DD0 C4 5F 06 2B C0 26 89 40 06 26 89 40 04 C4 1E 86 ._.+.&.@.&.@....
3CEE:5DE0 3A 26 C4 5F 06 8D 40 2E 8C C1 C4 1E 86 3A 26 C4 :&._..@......:&.
3CEE:5DF0 5F 06 26 89 40 16 26 89 48 18 E9 2F FF 90 C4 1E _.&.@.&.H../....
3CEE:5E00 86 3A 2B C0 26 89 47 0C 26 89 47 0A FF 46 FE 8B .:+.&.G.&.G..F..
3CEE:5E10 46 EE 39 46 FE 76 03 E9 B2 00 FF 76 FE 9A 7C 01 F.9F.v.....v..|.
3CEE:5E20 5D 3B 83 C4 02 A9 00 02 75 03 E9 9F 00 C7 46 F2 ];......u.....F.
3CEE:5E30 00 00 EB 1E C4 1E 86 3A 26 C4 5F 06 B8 42 00 F7 .......:&._..B..
3CEE:5E40 66 F2 8B F0 B8 5C 60 26 89 40 08 26 8C 58 0A FF f....\`&.@.&.X..
3CEE:5E50 46 F2 C4 1E 86 3A 8B 46 F2 26 39 47 04 77 03 E9 F....:.F.&9G.w..
3CEE:5E60 0B 01 2B C0 50 FF 76 FE 9A E8 01 5D 3B 83 C4 04 ..+.P.v....];...
3CEE:5E70 3B 46 F2 76 BF 8B 76 F2 46 56 FF 76 FE 9A E8 01 ;F.v..v.FV.v....
3CEE:5E80 5D 3B 83 C4 04 A8 01 74 AB 56 FF 76 FE 9A 52 02 ];.....t.V.v..R.
3CEE:5E90 5D 3B 83 C4 04 8B D8 8E C2 26 80 3F 00 74 95 56 ];.......&.?.t.V
3CEE:5EA0 FF 76 FE 9A 52 02 5D 3B 83 C4 04 C4 1E 86 3A 26 .v..R.];......:&
3CEE:5EB0 C4 5F 06 8B C8 B8 42 00 8B FA F7 66 F2 8B D7 8B ._....B....f....
3CEE:5EC0 F8 26 89 49 08 26 89 51 0A EB 84 90 8B 46 EE 39 .&.I.&.Q.....F.9
3CEE:5ED0 46 FE 77 66 FF 76 FE 9A 7C 01 5D 3B 83 C4 02 A8 F.wf.v..|.];....
3CEE:5EE0 01 74 57 FF 76 FE 9A 52 02 5D 3B 83 C4 02 8B D8 .tW.v..R.];.....
3CEE:5EF0 8E C2 26 80 3F 00 74 42 C7 46 F2 00 00 EB 04 90 ..&.?.tB.F......
3CEE:5F00 FF 46 F2 C4 1E 86 3A 8B 46 F2 26 39 47 04 76 5D .F....:.F.&9G.v]
3CEE:5F10 FF 76 FE 9A 52 02 5D 3B 83 C4 02 C4 1E 86 3A 26 .v..R.];......:&
3CEE:5F20 C4 5F 06 8B C8 B8 42 00 8B F2 F7 66 F2 8B F8 26 ._....B....f...&
3CEE:5F30 89 49 08 26 89 71 0A EB C7 90 C7 46 F2 00 00 EB .I.&.q.....F....
3CEE:5F40 1F 90 C4 1E 86 3A 26 C4 5F 06 B8 42 00 F7 66 F2 .....:&._..B..f.
3CEE:5F50 8B F0 B8 5E 60 26 89 40 08 26 8C 58 0A FF 46 F2 ...^`&.@.&.X..F.
3CEE:5F60 C4 1E 86 3A 8B 46 F2 26 39 47 04 77 D5 FF 46 FE ...:.F.&9G.w..F.
3CEE:5F70 8B 46 EE 39 46 FE 76 03 E9 9F 00 FF 76 FE 9A 7C .F.9F.v.....v..|
3CEE:5F80 01 5D 3B 83 C4 02 A9 00 02 75 03 E9 8C 00 C7 46 .];......u.....F
3CEE:5F90 F2 00 00 EB 1A 90 C4 1E 86 3A 26 C4 5F 06 B8 42 .........:&._..B
3CEE:5FA0 00 F7 66 F2 8B F0 26 C7 40 14 00 00 FF 46 F2 C4 ..f...&.@....F..
3CEE:5FB0 1E 86 3A 8B 46 F2 26 39 47 04 77 03 E9 E7 00 2B ..:.F.&9G.w....+
3CEE:5FC0 C0 50 FF 76 FE 9A E8 01 5D 3B 83 C4 04 3B 46 F2 .P.v....];...;F.
3CEE:5FD0 76 C4 8B 76 F2 46 56 FF 76 FE 9A E8 01 5D 3B 83 v..v.FV.v....];.
3CEE:5FE0 C4 04 A8 01 74 B0 B8 42 00 F7 66 F2 8B F8 C4 1E ....t..B..f.....
3CEE:5FF0 86 3A 26 C4 5F 06 26 C7 41 14 01 00 56 FF 76 FE .:&._.&.A...V.v.
3CEE:6000 9A 52 02 5D 3B 83 C4 04 C4 1E 86 3A 26 C4 5F 06 .R.];......:&._.
3CEE:6010 26 89 41 16 26 89 51 18 EB 92 8B 46 EE 39 46 FE &.A.&.Q....F.9F.
3CEE:6020 77 56 FF 76 FE 9A 7C 01 5D 3B 83 C4 02 A8 01 74 wV.v..|.];.....t
3CEE:6030 47 C7 46 F2 00 00 EB 03 FF 46 F2 C4 1E 86 3A 8B G.F......F....:.
3CEE:6040 46 F2 26 39 47 04 76 5E B8 42 00 F7 66 F2 8B F0 F.&9G.v^.B..f...
3CEE:6050 26 C4 5F 06 26 C7 40 14 01 00 FF 76 FE 9A 52 02 &._.&.@....v..R.
3CEE:6060 5D 3B 83 C4 02 C4 1E 86 3A 26 C4 5F 06 26 89 40 ];......:&._.&.@
3CEE:6070 16 26 89 50 18 EB C1 90 C7 46 F2 00 00 EB 1A 90 .&.P.....F......
3CEE:6080 C4 1E 86 3A 26 C4 5F 06 B8 42 00 F7 66 F2 8B F0 ...:&._..B..f...
3CEE:6090 26 C7 40 14 00 00 FF 46 F2 C4 1E 86 3A 8B 46 F2 &.@....F....:.F.
3CEE:60A0 26 39 47 04 77 DA FF 46 FE 8B 46 EE 39 46 FE 76 &9G.w..F..F.9F.v
3CEE:60B0 03 E9 A0 00 FF 76 FE 9A 7C 01 5D 3B 83 C4 02 A9 .....v..|.];....
3CEE:60C0 00 02 75 03 E9 8D 00 C7 46 F2 00 00 EB 22       ..u.....F...."  

l3CEE_60CE:
	les	bx,[3A86h]
	les	bx,es:[bx+6h]
	mov	ax,42h
	mul	word ptr [bp-0Eh]
	mov	si,ax
	mov	ax,[3A7Eh]
	mov	dx,[3A80h]
	mov	es:[bx+si+22h],ax
	mov	es:[bx+si+24h],dx

l3CEE_60ED:
	inc	word ptr [bp-0Eh]
	les	bx,[3A86h]
	mov	ax,[bp-0Eh]
	cmp	es:[bx+4h],ax
	ja	6100h

l3CEE_60FD:
	jmp	61E3h

l3CEE_6100:
	sub	ax,ax
	push	ax
	push	word ptr [bp-2h]
	call	far 3B5Dh:01E8h
	add	sp,4h
	cmp	ax,[bp-0Eh]
	jbe	60CEh

l3CEE_6113:
	mov	si,[bp-0Eh]
	inc	si
	push	si
	push	word ptr [bp-2h]
	call	far 3B5Dh:01E8h
	add	sp,4h

;; fn3CEE_6121: 3CEE:6121
;;   Called from:
;;     3CEE:14AB (in fn3CEE_1472)
fn3CEE_6121 proc
	les	ax,[si]

l3CEE_6123:
	test	al,1h
	jz	60CEh

l3CEE_6127:
	push	si
	push	word ptr [bp-2h]
	call	far 3B5Dh:0252h
	add	sp,4h
	les	bx,[3A86h]
	les	bx,es:[bx+6h]
	mov	cx,ax
	mov	ax,42h
	mov	di,dx
	mul	word ptr [bp-0Eh]
	mov	dx,di
	mov	di,ax
	mov	es:[bx+di+22h],cx
	mov	es:[bx+di+24h],dx
	jmp	60EDh
3CEE:6153          90 8B 46 EE 39 46 FE 77 50 FF 76 FE 9A    ..F.9F.wP.v..
3CEE:6160 7C 01 5D 3B 83 C4 02 A8 01 74 41 C7 46 F2 00 00 |.];.....tA.F...
3CEE:6170 EB 03 FF 46 F2 C4 1E 86 3A 8B 46 F2 26 39 47 04 ...F....:.F.&9G.
3CEE:6180 76 61 FF 76 FE 9A 52 02 5D 3B 83 C4 02 C4 1E 86 va.v..R.];......
3CEE:6190 3A 26 C4 5F 06 8B C8 B8 42 00 8B F2 F7 66 F2 8B :&._....B....f..
3CEE:61A0 F8 26 89 49 22 26 89 71 24 EB C7 90 C7 46 F2 00 .&.I"&.q$....F..
3CEE:61B0 00 EB 23 90 C4 1E 86 3A 26 C4 5F 06 B8 42 00 F7 ..#....:&._..B..
3CEE:61C0 66 F2 8B F0 A1 7E 3A 8B 16 80 3A 26 89 40 22 26 f....~:...:&.@"&
3CEE:61D0 89 50 24 FF 46 F2 C4 1E 86 3A 8B 46 F2 26 39 47 .P$.F....:.F.&9G
3CEE:61E0 04 77 D1                                        .w.             

l3CEE_61E3:
	inc	word ptr [bp-2h]
	mov	ax,[bp-12h]
	cmp	[bp-2h],ax
	jbe	61F1h

l3CEE_61EE:
	jmp	6292h

l3CEE_61F1:
	push	word ptr [bp-2h]
	call	far 3B5Dh:017Ch
	add	sp,2h
	test	ax,200h
	jnz	6204h

l3CEE_6201:
	jmp	6292h

l3CEE_6204:
	mov	word ptr [bp-0Eh],0h
	jmp	622Eh
3CEE:620B                                  90                        .    

l3CEE_620C:
	les	bx,[3A86h]
	les	bx,es:[bx+6h]
	mov	ax,42h
	mul	word ptr [bp-0Eh]
	mov	si,ax
	mov	ax,[3A82h]
	mov	dx,[3A84h]
	mov	es:[bx+si+2Ah],ax
	mov	es:[bx+si+2Ch],dx

l3CEE_622B:
	inc	word ptr [bp-0Eh]

l3CEE_622E:
	les	bx,[3A86h]
	mov	ax,[bp-0Eh]
	cmp	es:[bx+4h],ax
	ja	623Eh

l3CEE_623B:
	jmp	6321h

l3CEE_623E:
	sub	ax,ax
	push	ax
	push	word ptr [bp-2h]
	call	far 3B5Dh:01E8h
	add	sp,4h
	cmp	ax,[bp-0Eh]
	jbe	620Ch

l3CEE_6251:
	mov	si,[bp-0Eh]
	inc	si
	push	si
	push	word ptr [bp-2h]
	call	far 3B5Dh:01E8h
	add	sp,4h
	test	al,1h
	jz	620Ch

l3CEE_6265:
	push	si
	push	word ptr [bp-2h]
	call	far 3B5Dh:0252h
	add	sp,4h
	les	bx,[3A86h]
	les	bx,es:[bx+6h]
	mov	cx,ax
	mov	ax,42h
	mov	di,dx
	mul	word ptr [bp-0Eh]
	mov	dx,di
	mov	di,ax
	mov	es:[bx+di+2Ah],cx
	mov	es:[bx+di+2Ch],dx
	jmp	622Bh
3CEE:6291    90                                            .              

l3CEE_6292:
	mov	ax,[bp-12h]
	cmp	[bp-2h],ax
	ja	62EAh

l3CEE_629A:
	push	word ptr [bp-2h]
	call	far 3B5Dh:017Ch
	add	sp,2h
	test	al,1h
	jz	62EAh

l3CEE_62A9:
	mov	word ptr [bp-0Eh],0h
	jmp	62B3h

l3CEE_62B0:
	inc	word ptr [bp-0Eh]

l3CEE_62B3:
	les	bx,[3A86h]
	mov	ax,[bp-0Eh]
	cmp	es:[bx+4h],ax
	jbe	6321h

l3CEE_62C0:
	push	word ptr [bp-2h]
	call	far 3B5Dh:0252h
	add	sp,2h
	les	bx,[3A86h]
	les	bx,es:[bx+6h]
	mov	cx,ax
	mov	ax,42h
	mov	si,dx
	mul	word ptr [bp-0Eh]
	mov	di,ax
	mov	es:[bx+di+2Ah],cx
	mov	es:[bx+di+2Ch],si
	jmp	62B0h
3CEE:62E9                            90                            .      

l3CEE_62EA:
	mov	word ptr [bp-0Eh],0h
	jmp	6314h
3CEE:62F1    90                                            .              

l3CEE_62F2:
	les	bx,[3A86h]
	les	bx,es:[bx+6h]
	mov	ax,42h
	mul	word ptr [bp-0Eh]
	mov	si,ax
	mov	ax,[3A82h]
	mov	dx,[3A84h]
	mov	es:[bx+si+2Ah],ax
	mov	es:[bx+si+2Ch],dx
	inc	word ptr [bp-0Eh]

l3CEE_6314:
	les	bx,[3A86h]
	mov	ax,[bp-0Eh]
	cmp	es:[bx+4h],ax
	ja	62F2h

l3CEE_6321:
	inc	word ptr [bp-2h]
	mov	ax,[bp-12h]
	cmp	[bp-2h],ax
	jbe	632Fh

l3CEE_632C:
	jmp	63CCh

l3CEE_632F:
	push	word ptr [bp-2h]
	call	far 3B5Dh:017Ch
	add	sp,2h
	test	ax,200h
	jnz	6342h

l3CEE_633F:
	jmp	63CCh

l3CEE_6342:
	mov	word ptr [bp-0Eh],0h
	jmp	6368h
3CEE:6349                            90                            .      

l3CEE_634A:
	les	bx,[3A86h]
	les	bx,es:[bx+6h]
	mov	ax,42h
	mul	word ptr [bp-0Eh]
	mov	si,ax
	mov	ax,6060h
	mov	es:[bx+si+26h],ax
	mov	es:[bx+si+28h],ds

l3CEE_6365:
	inc	word ptr [bp-0Eh]

l3CEE_6368:
	les	bx,[3A86h]
	mov	ax,[bp-0Eh]
	cmp	es:[bx+4h],ax
	ja	6378h

l3CEE_6375:
	jmp	6457h

l3CEE_6378:
	sub	ax,ax
	push	ax
	push	word ptr [bp-2h]
	call	far 3B5Dh:01E8h
	add	sp,4h
	cmp	ax,[bp-0Eh]
	jbe	634Ah

l3CEE_638B:
	mov	si,[bp-0Eh]
	inc	si
	push	si
	push	word ptr [bp-2h]
	call	far 3B5Dh:01E8h
	add	sp,4h
	test	al,1h
	jz	634Ah

l3CEE_639F:
	push	si
	push	word ptr [bp-2h]
	call	far 3B5Dh:0252h
	add	sp,4h
	les	bx,[3A86h]
	les	bx,es:[bx+6h]
	mov	cx,ax
	mov	ax,42h
	mov	di,dx
	mul	word ptr [bp-0Eh]
	mov	dx,di
	mov	di,ax
	mov	es:[bx+di+26h],cx
	mov	es:[bx+di+28h],dx
	jmp	6365h
3CEE:63CB                                  90                        .    

l3CEE_63CC:
	mov	ax,[bp-12h]
	cmp	[bp-2h],ax
	ja	6424h

l3CEE_63D4:
	push	word ptr [bp-2h]
	call	far 3B5Dh:017Ch
	add	sp,2h
	test	al,1h
	jz	6424h

l3CEE_63E3:
	mov	word ptr [bp-0Eh],0h
	jmp	63EDh

l3CEE_63EA:
	inc	word ptr [bp-0Eh]

l3CEE_63ED:
	les	bx,[3A86h]
	mov	ax,[bp-0Eh]
	cmp	es:[bx+4h],ax
	jbe	6457h

l3CEE_63FA:
	push	word ptr [bp-2h]
	call	far 3B5Dh:0252h
	add	sp,2h
	les	bx,[3A86h]
	les	bx,es:[bx+6h]
	mov	cx,ax
	mov	ax,42h
	mov	si,dx
	mul	word ptr [bp-0Eh]
	mov	di,ax
	mov	es:[bx+di+26h],cx
	mov	es:[bx+di+28h],si
	jmp	63EAh
3CEE:6423          90                                        .            

l3CEE_6424:
	mov	word ptr [bp-0Eh],0h
	jmp	644Ah
3CEE:642B                                  90                        .    

l3CEE_642C:
	les	bx,[3A86h]
	les	bx,es:[bx+6h]
	mov	ax,42h
	mul	word ptr [bp-0Eh]
	mov	si,ax
	mov	ax,6062h
	mov	es:[bx+si+26h],ax
	mov	es:[bx+si+28h],ds
	inc	word ptr [bp-0Eh]

l3CEE_644A:
	les	bx,[3A86h]
	mov	ax,[bp-0Eh]
	cmp	es:[bx+4h],ax
	ja	642Ch

l3CEE_6457:
	inc	word ptr [bp-2h]
	mov	ax,[bp-12h]
	cmp	[bp-2h],ax
	jbe	6465h

l3CEE_6462:
	jmp	6502h

l3CEE_6465:
	push	word ptr [bp-2h]
	call	far 3B5Dh:017Ch
	add	sp,2h
	test	ax,200h
	jnz	6478h

l3CEE_6475:
	jmp	6502h

l3CEE_6478:
	mov	word ptr [bp-0Eh],0h
	jmp	649Eh
3CEE:647F                                              90                .

l3CEE_6480:
	les	bx,[3A86h]
	les	bx,es:[bx+6h]
	mov	ax,42h
	mul	word ptr [bp-0Eh]
	mov	si,ax
	mov	ax,6064h
	mov	es:[bx+si+1Ah],ax
	mov	es:[bx+si+1Ch],ds

l3CEE_649B:
	inc	word ptr [bp-0Eh]

l3CEE_649E:
	les	bx,[3A86h]
	mov	ax,[bp-0Eh]
	cmp	es:[bx+4h],ax
	ja	64AEh

l3CEE_64AB:
	jmp	658Dh

l3CEE_64AE:
	sub	ax,ax
	push	ax
	push	word ptr [bp-2h]
	call	far 3B5Dh:01E8h
	add	sp,4h
	cmp	ax,[bp-0Eh]
	jbe	6480h

l3CEE_64C1:
	mov	si,[bp-0Eh]
	inc	si
	push	si
	push	word ptr [bp-2h]
	call	far 3B5Dh:01E8h
	add	sp,4h
	test	al,1h
	jz	6480h

l3CEE_64D5:
	push	si
	push	word ptr [bp-2h]
	call	far 3B5Dh:0252h
	add	sp,4h
	les	bx,[3A86h]
	les	bx,es:[bx+6h]
	mov	cx,ax
	mov	ax,42h
	mov	di,dx
	mul	word ptr [bp-0Eh]
	mov	dx,di
	mov	di,ax
	mov	es:[bx+di+1Ah],cx
	mov	es:[bx+di+1Ch],dx
	jmp	649Bh
3CEE:6501    90                                            .              

l3CEE_6502:
	mov	ax,[bp-12h]
	cmp	[bp-2h],ax
	ja	655Ah

l3CEE_650A:
	push	word ptr [bp-2h]
	call	far 3B5Dh:017Ch
	add	sp,2h
	test	al,1h
	jz	655Ah

l3CEE_6519:
	mov	word ptr [bp-0Eh],0h
	jmp	6523h

l3CEE_6520:
	inc	word ptr [bp-0Eh]

l3CEE_6523:
	les	bx,[3A86h]
	mov	ax,[bp-0Eh]
	cmp	es:[bx+4h],ax
	jbe	658Dh

l3CEE_6530:
	push	word ptr [bp-2h]
	call	far 3B5Dh:0252h
	add	sp,2h
	les	bx,[3A86h]
	les	bx,es:[bx+6h]
	mov	cx,ax
	mov	ax,42h
	mov	si,dx
	mul	word ptr [bp-0Eh]
	mov	di,ax
	mov	es:[bx+di+1Ah],cx
	mov	es:[bx+di+1Ch],si
	jmp	6520h
3CEE:6559                            90                            .      

l3CEE_655A:
	mov	word ptr [bp-0Eh],0h
	jmp	6580h
3CEE:6561    90                                            .              

l3CEE_6562:
	les	bx,[3A86h]
	les	bx,es:[bx+6h]
	mov	ax,42h
	mul	word ptr [bp-0Eh]
	mov	si,ax
	mov	ax,6066h
	mov	es:[bx+si+1Ah],ax
	mov	es:[bx+si+1Ch],ds
	inc	word ptr [bp-0Eh]

l3CEE_6580:
	les	bx,[3A86h]
	mov	ax,[bp-0Eh]
	cmp	es:[bx+4h],ax
	ja	6562h

l3CEE_658D:
	push	cs
	call	5556h
	les	bx,[3A86h]
	cmp	word ptr es:[bx+1Ah],1h
	sbb	ax,ax
	neg	ax
	mov	[bp-10h],ax
	cmp	word ptr [bp-10h],0h
	jz	65AAh

l3CEE_65A7:
	jmp	67B9h

l3CEE_65AA:
	les	bx,[3A86h]
	mov	ax,es:[bx+2Ah]
	inc	ax
	mul	word ptr es:[bx+1Ah]
	push	ax
	call	far 21DCh:097Eh
	add	sp,2h
	les	bx,[3A86h]
	mov	es:[bx+16h],ax
	mov	es:[bx+18h],dx
	mov	ax,es:[bx+2Ah]
	shl	ax,1h
	add	ax,2h
	push	ax
	call	far 21DCh:097Eh
	add	sp,2h
	les	bx,[3A86h]
	mov	es:[bx+4Ah],ax
	mov	es:[bx+4Ch],dx
	mov	ax,es:[bx+2Ah]
	shl	ax,1h
	add	ax,2h
	push	ax
	call	far 21DCh:097Eh
	add	sp,2h
	les	bx,[3A86h]
	mov	es:[bx+4Eh],ax
	mov	es:[bx+50h],dx
	mov	ax,es:[bx+2Ah]
	shl	ax,1h
	shl	ax,1h
	add	ax,4h
	push	ax
	call	far 21DCh:097Eh
	add	sp,2h
	les	bx,[3A86h]

;; fn3CEE_661D: 3CEE:661D
;;   Called from:
;;     3CEE:14AB (in fn3CEE_1472)
fn3CEE_661D proc
	push	ds
	xchg	[bp+si],bh

;; fn3CEE_6620: 3CEE:6620
;;   Called from:
;;     3CEE:661C (in fn3CEE_6121)
;;     3CEE:661E (in fn3CEE_661D)
fn3CEE_6620 proc
	mov	es:[bx+52h],ax
	mov	es:[bx+54h],dx
	mov	ax,es:[bx+2Ah]
	shl	ax,1h
	add	ax,2h
	push	ax
	sub	ax,ax
	push	ax
	push	word ptr es:[bx+4Ch]
	push	word ptr es:[bx+4Ah]
	call	far 2017h:0228h
	add	sp,8h
	les	bx,[3A86h]
	mov	ax,es:[bx+2Ah]
	shl	ax,1h
	add	ax,2h
	push	ax
	sub	ax,ax
	push	ax
	push	word ptr es:[bx+50h]
	push	word ptr es:[bx+4Eh]
	call	far 2017h:0228h
	add	sp,8h
	les	bx,[3A86h]
	mov	ax,es:[bx+2Ah]
	shl	ax,1h
	shl	ax,1h
	add	ax,4h
	push	ax
	sub	ax,ax
	push	ax
	push	word ptr es:[bx+54h]
	push	word ptr es:[bx+52h]
	call	far 2017h:0228h
	add	sp,8h
	les	bx,[3A86h]
	mov	ax,es:[bx+26h]
	mov	es:[bx+2Eh],ax
	mov	es:[bx+30h],ax
	mov	ax,es:[bx+28h]
	inc	ax
	mov	es:[bx+32h],ax
	sub	ax,ax
	push	ax
	push	cs
	call	3B84h
	add	sp,2h
	les	bx,[3A86h]
	mov	es:[bx+40h],ax
	mov	word ptr es:[bx+42h],0h
	mov	word ptr es:[bx+2Ch],0h
	mov	word ptr es:[bx+34h],0h
	sub	ax,ax
	mov	es:[bx+3Eh],ax
	mov	es:[bx+3Ch],ax
	push	ax
	push	cs
	call	3E50h
	add	sp,2h
	call	far 1F38h:0552h
	mov	[bp-8h],ax
	sub	ax,ax
	push	ax
	call	far 1F38h:0527h
	add	sp,2h
	mov	word ptr [bp-0Eh],0h
	jmp	66FFh

l3CEE_66F2:
	push	word ptr [bp-0Eh]
	push	cs
	call	4188h
	add	sp,2h
	inc	word ptr [bp-0Eh]

;; fn3CEE_66FF: 3CEE:66FF
;;   Called from:
;;     3CEE:66F0 (in fn3CEE_6620)
;;     3CEE:66F0 (in fn3CEE_6620)
fn3CEE_66FF proc
	les	bx,[3A86h]
	mov	ax,[bp-0Eh]
	cmp	es:[bx+26h],ax
	ja	66F2h

l3CEE_670C:
	mov	ax,es:[bx+28h]
	inc	ax
	mov	[bp-0Eh],ax
	jmp	6723h

l3CEE_6716:
	push	word ptr [bp-0Eh]
	push	cs
	call	4188h
	add	sp,2h
	inc	word ptr [bp-0Eh]

l3CEE_6723:
	les	bx,[3A86h]
	mov	ax,[bp-0Eh]
	cmp	es:[bx+2Ah],ax
	jnc	6716h

l3CEE_6730:
	push	cs
	call	4EACh
	push	word ptr [bp-8h]
	call	far 1F38h:0527h
	add	sp,2h
	les	bx,[3A86h]
	mov	ax,es:[bx+2Ah]
	inc	ax
	mul	word ptr es:[bx+1Ah]
	push	ax
	push	word ptr es:[bx+18h]
	push	word ptr es:[bx+16h]
	call	far 21DCh:09B4h
	add	sp,6h
	les	bx,[3A86h]
	mov	ax,es:[bx+2Ah]
	shl	ax,1h
	add	ax,2h
	push	ax
	push	word ptr es:[bx+4Ch]
	push	word ptr es:[bx+4Ah]
	call	far 21DCh:09B4h
	add	sp,6h
	les	bx,[3A86h]
	mov	ax,es:[bx+2Ah]
	shl	ax,1h
	add	ax,2h
	push	ax
	push	word ptr es:[bx+50h]
	push	word ptr es:[bx+4Eh]
	call	far 21DCh:09B4h
	add	sp,6h
	les	bx,[3A86h]
	mov	ax,es:[bx+2Ah]
	shl	ax,1h
	shl	ax,1h
	add	ax,4h
	push	ax
	push	word ptr es:[bx+54h]
	push	word ptr es:[bx+52h]
	call	far 21DCh:09B4h
	add	sp,6h

;; fn3CEE_67B9: 3CEE:67B9
;;   Called from:
;;     3CEE:65A7 (in fn3CEE_6121)
;;     3CEE:67B6 (in fn3CEE_66FF)
fn3CEE_67B9 proc
	les	bx,[3A86h]
	cmp	word ptr es:[bx+4h],0h
	jz	67DCh

;; fn3CEE_67C4: 3CEE:67C4
;;   Called from:
;;     3CEE:67C2 (in fn3CEE_67B9)
;;     3CEE:67C2 (in fn3CEE_67B9)
;;     3CEE:67C2 (in fn3CEE_67B9)
fn3CEE_67C4 proc
	mov	ax,42h
	mul	word ptr es:[bx+4h]
	push	ax
	push	word ptr es:[bx+8h]
	push	word ptr es:[bx+6h]
	call	far 21DCh:09B4h
	add	sp,6h

l3CEE_67DC:
	mov	ax,58h
	push	ax
	push	word ptr [3A88h]
	push	word ptr [3A86h]
	call	far 21DCh:09B4h
	add	sp,6h
	mov	ax,[bp-6h]
	mov	dx,[bp-4h]
	mov	[3A86h],ax
	mov	[3A88h],dx
	cmp	word ptr [bp-10h],1h
	sbb	ax,ax
	neg	ax
	push	ax
	call	far 3B5Dh:05D0h
	add	sp,2h
	pop	si
	pop	di
