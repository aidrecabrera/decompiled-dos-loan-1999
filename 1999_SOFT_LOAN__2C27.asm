;;; Segment 2C27 (2C27:0000)
2C27:0000 CB 90                                           ..              

;; fn2C27_0002: 2C27:0002
;;   Called from:
;;     2C27:0095 (in fn2C27_0032)
;;     2C27:0152 (in fn2C27_0140)
fn2C27_0002 proc
	push	bp
	mov	bp,sp
	sub	sp,2h
	call	far 2017h:01A8h
	mov	cl,6h
	shr	ax,cl
	mov	[bp-2h],ax
	mov	ax,[bp+6h]
	sub	ax,[bp-2h]
	sbb	cx,cx
	and	ax,cx
	add	ax,[bp-2h]
	mov	[13B6h],ax
	mov	cl,6h
	shl	ax,cl
	push	ax
	call	far 2017h:000Fh
	mov	sp,bp
	pop	bp
	retf

;; fn2C27_0032: 2C27:0032
;;   Called from:
;;     21DC:1050 (in fn21DC_0EC2)
fn2C27_0032 proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	push	si
	cmp	word ptr [bp+8h],0h
	jz	008Ch

l2C27_003F:
	mov	ax,13BAh
	push	ds
	push	ax
	call	far 2017h:007Ah
	add	sp,4h
	mov	[bp-4h],ax
	or	ax,ax
	jnz	00B9h

l2C27_0053:
	mov	ax,[bp+6h]
	add	ax,0Fh
	mov	cl,4h
	shr	ax,cl
	mov	[13CAh],ax
	mov	ax,13B2h
	push	ds
	push	ax
	push	word ptr [13CAh]
	call	far 2017h:0097h
	add	sp,6h
	mov	[bp-4h],ax
	or	ax,ax
	jnz	00B9h

l2C27_0078:
	mov	ax,[bp+6h]
	mov	[13B6h],ax
	mov	word ptr [13B4h],1h
	mov	word ptr [13CCh],0h
	jmp	00B9h

l2C27_008C:
	mov	word ptr [13B4h],0h
	push	word ptr [bp+6h]
	push	cs
	call	0002h
	add	sp,2h
	mov	[13BAh],ax
	mov	[13BCh],dx
	or	ax,dx
	jz	00AEh

l2C27_00A7:
	cmp	word ptr [13B6h],10h
	jnc	00B4h

l2C27_00AE:
	mov	ax,1h
	jmp	00B6h
2C27:00B3          90                                        .            

l2C27_00B4:
	sub	ax,ax

l2C27_00B6:
	mov	[bp-4h],ax

l2C27_00B9:
	cmp	word ptr [bp-4h],0h
	jnz	00F4h

l2C27_00BF:
	mov	ax,[13B6h]
	inc	ax
	push	ax
	mov	ax,13BEh
	push	ds
	push	ax
	call	far 21DCh:06DCh
	add	sp,6h
	or	ax,ax
	jz	00F4h

l2C27_00D5:
	mov	word ptr [bp-2h],1h
	jmp	00DFh

l2C27_00DC:
	inc	word ptr [bp-2h]

l2C27_00DF:
	mov	ax,[13B6h]
	cmp	[bp-2h],ax
	ja	00F9h

l2C27_00E7:
	mov	bx,[bp-2h]
	les	si,[13BEh]
	mov	byte ptr es:[bx+si],0h
	jmp	00DCh

l2C27_00F4:
	mov	word ptr [bp-4h],1h

l2C27_00F9:
	mov	word ptr [13C2h],1h
	mov	ax,[13B6h]
	mov	[13B8h],ax
	cmp	word ptr [bp-4h],1h
	sbb	ax,ax
	neg	ax
	pop	si
	mov	sp,bp
	pop	bp
	retf

;; fn2C27_0112: 2C27:0112
;;   Called from:
;;     1825:0CEE (in fn1825_0CD2)
;;     2C27:01B8 (in fn2C27_01AC)
fn2C27_0112 proc
	cmp	word ptr [13B4h],0h
	jnz	013Fh

l2C27_0119:
	push	word ptr [13BCh]
	push	word ptr [13BAh]
	call	far 2017h:0033h
	add	sp,4h
	or	ax,ax
	jnz	0139h

l2C27_012D:
	mov	ax,2h
	push	ax
	call	far 20B2h:0176h
	add	sp,2h

l2C27_0139:
	mov	word ptr [13B6h],0h

l2C27_013F:
	retf

;; fn2C27_0140: 2C27:0140
;;   Called from:
;;     1825:0D14 (in fn1825_0CD2)
fn2C27_0140 proc
	push	bp
	mov	bp,sp
	sub	sp,2h
	push	si
	cmp	word ptr [13B4h],0h
	jnz	01A6h

l2C27_014E:
	push	word ptr [13B8h]
	push	cs
	call	0002h
	add	sp,2h
	mov	[13BAh],ax
	mov	[13BCh],dx
	or	ax,dx
	jz	0194h

l2C27_0164:
	cmp	word ptr [13B6h],10h
	jc	0194h

l2C27_016B:
	mov	word ptr [bp-2h],1h
	jmp	0180h

l2C27_0172:
	mov	bx,[bp-2h]
	les	si,[13BEh]
	mov	byte ptr es:[bx+si],0h
	inc	word ptr [bp-2h]

l2C27_0180:
	mov	ax,[13B6h]
	cmp	[bp-2h],ax
	jbe	0172h

l2C27_0188:
	mov	word ptr [13C2h],1h
	pop	si
	mov	sp,bp
	pop	bp
	retf
2C27:0193          90                                        .            

l2C27_0194:
	mov	ax,3h
	push	ax
	call	far 20B2h:0176h
	add	sp,2h
	mov	word ptr [13B6h],0h

l2C27_01A6:
	pop	si
	mov	sp,bp
	pop	bp
	retf
2C27:01AB                                  90                        .    

;; fn2C27_01AC: 2C27:01AC
;;   Called from:
;;     21DC:0546 (in fn21DC_04BA)
fn2C27_01AC proc
	push	bp
	mov	bp,sp
	sub	sp,2h
	mov	ax,[13B6h]
	mov	[bp-2h],ax
	push	cs
	call	0112h
	cmp	word ptr [13B4h],0h
	jz	01CFh

l2C27_01C3:
	push	word ptr [13B2h]
	call	far 2017h:00CBh
	add	sp,2h

l2C27_01CF:
	cmp	word ptr [13B8h],0h
	jz	01EBh

l2C27_01D6:
	mov	ax,[13B8h]
	inc	ax
	push	ax
	push	word ptr [13C0h]
	push	word ptr [13BEh]
	call	far 21DCh:09B4h
	add	sp,6h

l2C27_01EB:
	mov	sp,bp
	pop	bp
	retf
2C27:01EF                                              90                .

;; fn2C27_01F0: 2C27:01F0
;;   Called from:
;;     2D1A:0C0C (in fn2D1A_0BD2)
;;     2D1A:0D5D (in fn2D1A_0D38)
;;     2D1A:100B (in fn2D1A_0FA6)
;;     2D1A:101D (in fn2D1A_0FA6)
;;     2E37:0435 (in fn2E37_0432)
fn2C27_01F0 proc
	push	bp
	mov	bp,sp
	sub	sp,6h
	push	si
	cmp	word ptr [bp+6h],0h
	jnz	022Eh

l2C27_01FD:
	mov	word ptr [bp-6h],1h
	mov	word ptr [bp-2h],0h
	jmp	021Dh
2C27:0209                            90                            .      

l2C27_020A:
	mov	bx,[bp-6h]
	les	si,[13BEh]
	cmp	byte ptr es:[bx+si],0h
	jnz	021Ah

l2C27_0217:
	inc	word ptr [bp-2h]

l2C27_021A:
	inc	word ptr [bp-6h]

l2C27_021D:
	mov	ax,[13B6h]
	cmp	[bp-6h],ax
	jbe	020Ah

l2C27_0225:
	mov	ax,[bp-2h]
	pop	si
	mov	sp,bp
	pop	bp
	retf
2C27:022D                                        90                    .  

l2C27_022E:
	mov	word ptr [bp-6h],1h
	mov	word ptr [bp-4h],0h
	jmp	0281h

l2C27_023A:
	mov	bx,[bp-6h]
	les	si,[13BEh]
	mov	al,es:[bx+si]
	sub	ah,ah
	add	[bp-6h],ax
	mov	word ptr [bp-2h],0h
	jmp	025Dh

l2C27_0250:
	les	bx,[13BEh]
	cmp	byte ptr es:[bx+si],0h
	jnz	0269h

l2C27_025A:
	inc	word ptr [bp-2h]

l2C27_025D:
	mov	si,[bp-6h]
	add	si,[bp-2h]
	cmp	[13B6h],si
	jnc	0250h

l2C27_0269:
	mov	ax,[bp-4h]
	sub	ax,[bp-2h]
	sbb	cx,cx
	not	cx
	and	ax,cx
	add	ax,[bp-2h]
	mov	[bp-4h],ax
	mov	ax,[bp-2h]
	add	[bp-6h],ax

l2C27_0281:
	mov	ax,[13B6h]
	cmp	[bp-6h],ax
	jbe	023Ah

l2C27_0289:
	mov	ax,[bp-4h]
	pop	si
	mov	sp,bp
	pop	bp
	retf
2C27:0291    90                                            .              

;; fn2C27_0292: 2C27:0292
;;   Called from:
;;     2D1A:0D06 (in fn2D1A_0BD2)
;;     2E37:0307 (in fn2E37_02A4)
;;     2E37:03B4 (in fn2E37_0382)
fn2C27_0292 proc
	push	bp
	mov	bp,sp
	sub	sp,8h
	push	si
	cmp	word ptr [bp+6h],0h
	jz	02C5h

l2C27_029F:
	mov	ax,[13B6h]
	cmp	[bp+6h],ax
	ja	02C5h

l2C27_02A7:
	cmp	word ptr [bp+6h],40h
	ja	02C5h

l2C27_02AD:
	mov	ax,[13C2h]
	mov	[bp-8h],ax
	mov	word ptr [bp-2h],0h
	mov	word ptr [bp-6h],0h

l2C27_02BD:
	mov	ax,[bp+6h]
	cmp	[bp-2h],ax
	jc	02D8h

l2C27_02C5:
	mov	ax,[bp+6h]
	cmp	[bp-2h],ax
	jz	02D0h

l2C27_02CD:
	jmp	0392h

l2C27_02D0:
	mov	word ptr [bp-2h],0h
	jmp	037Eh

l2C27_02D8:
	mov	ax,[13B6h]
	cmp	[bp-6h],ax
	jnc	02C5h

l2C27_02E0:
	mov	bx,[bp-8h]
	les	si,[13BEh]
	mov	al,es:[bx+si]
	sub	ah,ah
	add	ax,[bp-2h]
	mov	[bp-4h],ax
	add	[bp-8h],ax
	add	[bp-6h],ax
	mov	ax,[bp-8h]
	add	ax,[bp+6h]
	dec	ax
	cmp	ax,[13B6h]
	jbe	0316h

l2C27_0305:
	mov	ax,[13B6h]
	sub	ax,[bp-8h]
	inc	ax
	add	[bp-6h],ax
	mov	word ptr [bp-8h],1h
	jmp	0340h

l2C27_0316:
	cmp	word ptr [13B4h],0h
	jz	0340h

l2C27_031D:
	cmp	word ptr [bp+6h],30h
	jbe	0340h

l2C27_0323:
	mov	si,[bp-8h]
	dec	si
	test	si,0Fh
	jz	0340h

l2C27_032D:
	mov	ax,si
	and	ax,0Fh
	sub	ax,10h
	neg	ax
	mov	[bp-4h],ax
	add	[bp-8h],ax
	add	[bp-6h],ax

l2C27_0340:
	mov	word ptr [bp-2h],0h

l2C27_0345:
	mov	ax,[bp+6h]
	cmp	[bp-2h],ax
	jc	0350h

l2C27_034D:
	jmp	02BDh

l2C27_0350:
	mov	bx,[bp-8h]
	add	bx,[bp-2h]
	les	si,[13BEh]
	cmp	byte ptr es:[bx+si],0h
	jz	0363h

l2C27_0360:
	jmp	02BDh

l2C27_0363:
	inc	word ptr [bp-2h]
	jmp	0345h

l2C27_0368:
	mov	bx,[bp-8h]
	add	bx,[bp-2h]
	les	si,[13BEh]
	mov	al,[bp+6h]
	sub	al,[bp-2h]
	mov	es:[bx+si],al
	inc	word ptr [bp-2h]

l2C27_037E:
	mov	ax,[bp+6h]
	cmp	[bp-2h],ax
	jc	0368h

l2C27_0386:
	mov	ax,[bp-8h]
	add	ax,[bp-2h]
	mov	[13C2h],ax
	jmp	03ACh
2C27:0391    90                                            .              

l2C27_0392:
	mov	ax,5EB0h
	push	ds
	push	ax
	mov	ax,[bp+6h]
	mov	cl,0Ah
	shl	ax,cl
	push	ax
	call	far 20B2h:0E9Eh
	add	sp,6h
	mov	word ptr [bp-8h],0h

l2C27_03AC:
	mov	ax,[bp-8h]
	pop	si
	mov	sp,bp
	pop	bp
	retf

;; fn2C27_03B4: 2C27:03B4
;;   Called from:
;;     2D1A:0B78 (in fn2D1A_0B04)
;;     2E37:040D (in fn2E37_0382)
;;     2E37:046D (in fn2E37_0446)
fn2C27_03B4 proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	push	si
	mov	ax,[13B6h]
	cmp	[bp+6h],ax
	ja	03D0h

l2C27_03C3:
	mov	bx,[bp+6h]
	les	si,[13BEh]
	cmp	byte ptr es:[bx+si],0h
	jnz	03DEh

l2C27_03D0:
	mov	ax,4h
	push	ax
	call	far 20B2h:0176h
	add	sp,2h
	jmp	0404h

l2C27_03DE:
	mov	bx,[bp+6h]
	les	si,[13BEh]
	mov	al,es:[bx+si]
	sub	ah,ah
	mov	[bp-4h],ax

l2C27_03ED:
	dec	word ptr [bp-4h]
	mov	bx,[bp+6h]
	add	bx,[bp-4h]
	mov	si,[13BEh]
	mov	byte ptr es:[bx+si],0h
	cmp	word ptr [bp-4h],0h
	jnz	03EDh

l2C27_0404:
	mov	ax,[13C4h]
	cmp	[bp+6h],ax
	jnz	0412h

l2C27_040C:
	mov	word ptr [13C4h],0h

l2C27_0412:
	mov	word ptr [bp-2h],0h

l2C27_0417:
	mov	si,[bp-2h]
	shl	si,1h
	add	si,13CEh
	mov	ax,[si]
	cmp	[bp+6h],ax
	jnz	042Bh

l2C27_0427:
	mov	word ptr [si],0h

l2C27_042B:
	inc	word ptr [bp-2h]
	cmp	word ptr [bp-2h],4h
	jc	0417h

l2C27_0434:
	mov	word ptr [13C2h],1h
	pop	si
	mov	sp,bp
	pop	bp
	retf
2C27:043F                                              90                .

;; fn2C27_0440: 2C27:0440
;;   Called from:
;;     2D1A:011E (in fn2D1A_003C)
;;     2D1A:0204 (in fn2D1A_0186)
;;     2D1A:03C0 (in fn2D1A_02FC)
;;     2D1A:04FB (in fn2D1A_03E4)
;;     2D1A:05C5 (in fn2D1A_0598)
;;     2D1A:067B (in fn2D1A_064E)
;;     2E37:00DE (in fn2E37_0096)
;;     2E37:031F (in fn2E37_02A4)
;;     2E37:03CC (in fn2E37_0382)
;;     2E37:0518 (in fn2E37_04CE)
;;     2E37:0592 (in fn2E37_04CE)
;;     2E37:060A (in fn2E37_05C0)
;;     2E37:0684 (in fn2E37_05C0)
;;     2E37:076F (in fn2E37_0740)
fn2C27_0440 proc
	push	bp
	mov	bp,sp
	sub	sp,10h
	push	si
	mov	ax,[13C4h]
	cmp	[bp+6h],ax
	jnz	045Ch

l2C27_044F:
	mov	ax,[13C6h]
	mov	dx,[13C8h]
	pop	si
	mov	sp,bp
	pop	bp
	retf
2C27:045B                                  90                        .    

l2C27_045C:
	cmp	word ptr [13B4h],0h
	jnz	0466h

l2C27_0463:
	jmp	055Eh

l2C27_0466:
	mov	word ptr [bp-0Eh],0h
	jmp	0471h
2C27:046D                                        90                    .  

l2C27_046E:
	inc	word ptr [bp-0Eh]

l2C27_0471:
	cmp	word ptr [bp-0Eh],4h
	jnc	049Ah

l2C27_0477:
	mov	bx,[bp-0Eh]
	shl	bx,1h
	mov	ax,[bp+6h]
	cmp	[bx+13CEh],ax
	jnz	046Eh

l2C27_0485:
	mov	bx,[bp-0Eh]
	shl	bx,1h
	shl	bx,1h
	mov	ax,[bx+13D6h]
	mov	dx,[bx+13D8h]
	pop	si
	mov	sp,bp
	pop	bp
	retf
2C27:0499                            90                            .      

l2C27_049A:
	mov	ax,[bp+6h]
	dec	ax
	mov	[bp-8h],ax
	mov	bx,[bp+6h]
	les	si,[13BEh]
	mov	al,es:[bx+si]
	sub	ah,ah
	mov	[bp-2h],ax
	mov	ax,[bp-8h]
	and	ax,0Fh
	mov	[bp-4h],ax
	mov	ax,[bp-8h]
	mov	cl,4h
	shr	ax,cl
	mov	[bp-10h],ax
	mov	ax,[bp-4h]
	add	ax,[bp-2h]
	dec	ax
	shr	ax,cl
	inc	ax
	mov	[bp-6h],ax
	mov	ax,[13CCh]
	mov	[bp-0Eh],ax
	mov	ax,[bp-6h]
	add	[13CCh],ax
	cmp	word ptr [13CCh],4h
	jbe	04ECh

l2C27_04E4:
	mov	word ptr [bp-0Eh],0h
	mov	[13CCh],ax

l2C27_04EC:
	mov	ax,[bp-0Eh]
	mov	cl,0Eh
	shl	ax,cl
	mov	dx,[bp-4h]
	mov	cl,0Ah
	shl	dx,cl
	add	ax,dx
	add	ax,[13BAh]
	mov	dx,[13BCh]
	mov	[bp-0Ch],ax
	mov	[bp-0Ah],dx
	mov	bx,[bp-0Eh]
	shl	bx,1h
	shl	bx,1h
	mov	[bx+13D6h],ax
	mov	[bx+13D8h],dx

l2C27_0519:
	mov	ax,[bp-6h]
	dec	word ptr [bp-6h]
	or	ax,ax
	jz	0589h

l2C27_0523:
	push	word ptr [bp-0Eh]
	push	word ptr [bp-10h]
	push	word ptr [13B2h]
	call	far 2017h:00B1h
	add	sp,6h
	or	ax,ax
	jz	0545h

l2C27_0539:
	mov	ax,5h
	push	ax
	call	far 20B2h:0176h
	add	sp,2h

l2C27_0545:
	mov	bx,[bp-0Eh]
	shl	bx,1h
	mov	ax,[bp+6h]
	mov	[bx+13CEh],ax
	mov	word ptr [bp+6h],0h
	inc	word ptr [bp-0Eh]
	inc	word ptr [bp-10h]
	jmp	0519h

l2C27_055E:
	mov	ax,[bp+6h]
	dec	ax
	mov	[bp-8h],ax
	sub	dx,dx
	mov	cl,0Ah

l2C27_0569:
	shl	ax,1h
	rcl	dx,1h
	dec	cl
	jnz	0569h

l2C27_0571:
	push	dx
	push	ax
	push	word ptr [13BCh]
	push	word ptr [13BAh]
	call	far 2017h:00DFh
	add	sp,8h
	mov	[bp-0Ch],ax
	mov	[bp-0Ah],dx

l2C27_0589:
	mov	ax,[bp+6h]
	mov	[13C4h],ax
	mov	ax,[bp-0Ch]
	mov	dx,[bp-0Ah]
	mov	[13C6h],ax
	mov	[13C8h],dx
	pop	si
	mov	sp,bp
	pop	bp
