;;; Segment 2E37 (2E37:0000)
2E37:0000 D4 FD 83 C4 02                                  .....           

l2D1A_11D5:
	pop	bp
	retf
2D1A:11D7                      90                                .        

;; fn2E37_0008: 2E37:0008
;;   Called from:
;;     2E37:0032 (in fn2E37_0022)
;;     2E37:017A (in fn2E37_0152)
;;     2E37:026A (in fn2E37_0212)
fn2E37_0008 proc
	push	bp
	mov	bp,sp
	mov	ax,[bp+8h]
	mov	dx,[bp+0Ah]
	mov	cl,8h

l2E37_0013:
	sar	dx,1h
	rcr	ax,1h
	dec	cl
	jnz	0013h

l2E37_001B:
	add	al,[bp+6h]
	sub	ah,ah
	pop	bp
	retf

;; fn2E37_0022: 2E37:0022
;;   Called from:
;;     2E37:04DE (in fn2E37_04CE)
;;     2E37:05D0 (in fn2E37_05C0)
;;     2E37:06D4 (in fn2E37_06C4)
fn2E37_0022 proc
	push	bp
	mov	bp,sp
	sub	sp,6h
	push	si
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	0008h
	add	sp,6h
	mov	bx,ax
	shl	bx,1h
	les	si,[1492h]
	mov	ax,es:[bx+si]

l2E37_0044:
	mov	[bp-2h],ax
	cmp	ax,0FFFFh
	jz	007Bh

l2E37_004C:
	mov	cl,4h
	shl	ax,cl
	add	ax,[1486h]
	mov	dx,[1488h]
	mov	[bp-6h],ax
	mov	[bp-4h],dx
	les	bx,[bp-6h]
	mov	ax,[bp+6h]
	cmp	es:[bx+4h],ax
	jnz	0084h

l2E37_006A:
	mov	ax,[bp+8h]
	mov	dx,[bp+0Ah]
	cmp	es:[bx],ax
	jnz	0084h

l2E37_0075:
	cmp	es:[bx+2h],dx
	jnz	0084h

l2E37_007B:
	mov	ax,[bp-2h]
	pop	si
	mov	sp,bp
	pop	bp
	retf
2E37:0083          90                                        .            

l2E37_0084:
	mov	si,[bp-2h]
	mov	cl,4h
	shl	si,cl
	les	bx,[1486h]
	mov	ax,es:[bx+si+8h]
	jmp	0044h
2E37:0095                90                                    .          

;; fn2E37_0096: 2E37:0096
;;   Called from:
;;     2E37:0235 (in fn2E37_0212)
;;     2E37:03ED (in fn2E37_0382)
;;     2E37:0457 (in fn2E37_0446)
;;     2E37:0719 (in fn2E37_06F4)
fn2E37_0096 proc
	push	bp
	mov	bp,sp
	sub	sp,0Eh
	push	si
	mov	ax,[bp+6h]
	mov	cl,4h
	shl	ax,cl
	add	ax,[1486h]
	mov	dx,[1488h]
	mov	[bp-0Eh],ax
	mov	[bp-0Ch],dx
	les	bx,[bp-0Eh]
	cmp	word ptr es:[bx+6h],0h
	jnz	00BFh

l2E37_00BC:
	jmp	014Dh

l2E37_00BF:
	mov	ax,es:[bx+4h]
	mov	[bp-0Ah],ax
	mov	ax,es:[bx]
	mov	dx,es:[bx+2h]
	mov	[bp-8h],ax
	mov	[bp-6h],dx
	cmp	word ptr [149Ah],0h
	jz	00E8h

l2E37_00DA:
	push	word ptr es:[bx+0Ah]
	call	far 2C27h:0440h
	add	sp,2h
	jmp	00FBh

l2E37_00E8:
	mov	si,[bp+6h]
	mov	cl,4h
	shl	si,cl
	les	bx,[1486h]
	mov	ax,es:[bx+si+0Ch]
	mov	dx,es:[bx+si+0Eh]

l2E37_00FB:
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	sub	ax,ax
	push	ax
	push	word ptr [bp-6h]
	push	word ptr [bp-8h]
	push	word ptr [bp-0Ah]
	call	far 208Fh:0115h
	add	sp,8h
	push	word ptr [149Ch]
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	push	word ptr [bp-0Ah]
	call	far 208Fh:00EFh
	add	sp,8h
	cmp	ax,[149Ch]
	jz	013Ch

l2E37_0130:
	mov	word ptr [1484h],1h
	pop	si
	mov	sp,bp
	pop	bp
	retf
2E37:013B                                  90                        .    

l2E37_013C:
	mov	si,[bp+6h]
	mov	cl,4h
	shl	si,cl
	les	bx,[1486h]
	mov	word ptr es:[bx+si+6h],0h

l2E37_014D:
	pop	si
	mov	sp,bp
	pop	bp
	retf

;; fn2E37_0152: 2E37:0152
;;   Called from:
;;     2E37:023F (in fn2E37_0212)
;;     2E37:03F7 (in fn2E37_0382)
;;     2E37:056D (in fn2E37_04CE)
;;     2E37:065F (in fn2E37_05C0)
;;     2E37:0729 (in fn2E37_06F4)
fn2E37_0152 proc
	push	bp
	mov	bp,sp
	sub	sp,8h
	push	di
	push	si
	mov	si,[bp+6h]
	mov	cl,4h
	shl	si,cl
	les	bx,[1486h]
	cmp	word ptr es:[bx+si+4h],0h
	jnz	016Fh

l2E37_016C:
	jmp	020Ch

l2E37_016F:
	push	word ptr es:[bx+si+2h]
	push	word ptr es:[bx+si]
	push	word ptr es:[bx+si+4h]
	push	cs
	call	0008h
	add	sp,6h
	mov	[bp-2h],ax
	shl	ax,1h
	add	ax,[1492h]
	mov	dx,[1494h]
	mov	[bp-8h],ax
	mov	[bp-6h],dx
	les	bx,[bp-8h]
	mov	ax,es:[bx]
	mov	[bp-4h],ax
	mov	ax,[bp+6h]
	cmp	[bp-4h],ax
	jnz	01B9h

l2E37_01A5:
	les	bx,[1486h]
	mov	ax,es:[bx+si+8h]
	les	bx,[bp-8h]
	mov	es:[bx],ax
	jmp	01DFh
2E37:01B5                90                                    .          

l2E37_01B6:
	mov	[bp-4h],si

l2E37_01B9:
	mov	di,[bp-4h]
	mov	cl,4h
	shl	di,cl
	les	bx,[1486h]
	mov	si,es:[bx+di+8h]
	cmp	[bp+6h],si
	jnz	01B6h

l2E37_01CD:
	mov	si,[bp+6h]
	shl	si,cl
	mov	ax,es:[bx+si+8h]
	mov	si,[bp-4h]
	shl	si,cl
	mov	es:[bx+si+8h],ax

l2E37_01DF:
	mov	ax,[bp+6h]
	mov	cl,4h
	shl	ax,cl
	add	ax,[1486h]
	mov	dx,[1488h]
	mov	[bp-8h],ax
	mov	[bp-6h],dx
	les	bx,[bp-8h]
	mov	word ptr es:[bx+4h],0h
	sub	ax,ax
	mov	es:[bx+2h],ax
	mov	es:[bx],ax
	mov	word ptr es:[bx+8h],0FFFFh

l2E37_020C:
	pop	si
	pop	di
	mov	sp,bp
	pop	bp
	retf

;; fn2E37_0212: 2E37:0212
;;   Called from:
;;     2E37:04F9 (in fn2E37_04CE)
;;     2E37:05EB (in fn2E37_05C0)
;;     2E37:0750 (in fn2E37_0740)
fn2E37_0212 proc
	push	bp
	mov	bp,sp
	sub	sp,8h
	push	si
	mov	ax,[1490h]
	mov	[bp-4h],ax
	inc	word ptr [1490h]
	mov	ax,[148Ch]
	cmp	[1490h],ax
	jnz	0232h

l2E37_022C:
	mov	word ptr [1490h],0h

l2E37_0232:
	push	word ptr [bp-4h]
	push	cs
	call	0096h
	add	sp,2h
	push	word ptr [bp-4h]
	push	cs
	call	0152h
	add	sp,2h
	mov	si,[bp-4h]
	mov	cl,4h
	shl	si,cl
	les	bx,[1486h]
	mov	ax,[bp+6h]
	mov	es:[bx+si+4h],ax
	mov	ax,[bp+8h]
	mov	dx,[bp+0Ah]
	mov	es:[bx+si],ax
	mov	es:[bx+si+2h],dx
	push	dx
	push	ax
	push	word ptr [bp+6h]
	push	cs
	call	0008h
	add	sp,6h
	mov	[bp-2h],ax
	shl	ax,1h
	add	ax,[1492h]
	mov	dx,[1494h]
	mov	[bp-8h],ax
	mov	[bp-6h],dx
	les	bx,[bp-8h]
	mov	ax,es:[bx]
	les	bx,[1486h]
	mov	es:[bx+si+8h],ax
	les	bx,[bp-8h]
	mov	ax,[bp-4h]
	mov	es:[bx],ax
	pop	si
	mov	sp,bp
	pop	bp
	retf

;; fn2E37_02A0: 2E37:02A0
;;   Called from:
;;     2D1A:0C2A (in fn2D1A_0BD2)
;;     2D1A:0C34 (in fn2D1A_0BD2)
;;     2D1A:0CCE (in fn2D1A_0BD2)
;;     2D1A:0CE5 (in fn2D1A_0BD2)
;;     2D1A:0CF2 (in fn2D1A_0BD2)
;;     2D1A:0D7A (in fn2D1A_0D38)
;;     2D1A:0D84 (in fn2D1A_0D38)
;;     2D1A:1027 (in fn2D1A_0FA6)
fn2E37_02A0 proc
	mov	ax,[148Ch]
	retf

;; fn2E37_02A4: 2E37:02A4
;;   Called from:
;;     2E37:043E (in fn2E37_0432)
fn2E37_02A4 proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	push	si
	mov	ax,[bp+6h]
	mov	[148Eh],ax
	mov	[148Ch],ax
	mov	cl,4h
	shl	ax,cl
	mov	[148Ah],ax
	push	ax
	call	far 21DCh:097Eh
	add	sp,2h
	mov	[1486h],ax
	mov	[1488h],dx
	mov	ax,[13B4h]
	mov	[149Ah],ax
	mov	word ptr [1490h],0h
	push	word ptr [148Ah]
	sub	ax,ax
	push	ax
	push	dx
	push	word ptr [1486h]
	call	far 2017h:0228h
	add	sp,8h
	mov	word ptr [bp-4h],0h
	jmp	0336h

l2E37_02F2:
	mov	si,[bp-4h]
	mov	cl,4h
	shl	si,cl
	les	bx,[1486h]
	mov	word ptr es:[bx+si+8h],0FFFFh
	mov	ax,1h
	push	ax
	call	far 2C27h:0292h
	add	sp,2h
	les	bx,[1486h]
	mov	es:[bx+si+0Ah],ax
	cmp	word ptr [149Ah],0h
	jnz	0333h

l2E37_031E:
	push	ax
	call	far 2C27h:0440h
	add	sp,2h
	les	bx,[1486h]
	mov	es:[bx+si+0Ch],ax
	mov	es:[bx+si+0Eh],dx

l2E37_0333:
	inc	word ptr [bp-4h]

l2E37_0336:
	mov	ax,[148Eh]
	cmp	[bp-4h],ax
	jc	02F2h

l2E37_033E:
	mov	word ptr [1498h],100h
	mov	word ptr [1496h],200h
	push	word ptr [1496h]
	call	far 21DCh:097Eh
	add	sp,2h
	mov	[1492h],ax
	mov	[1494h],dx
	mov	word ptr [bp-2h],0h
	jmp	0375h

l2E37_0364:
	mov	bx,[bp-2h]
	shl	bx,1h
	les	si,[1492h]
	mov	word ptr es:[bx+si],0FFFFh
	inc	word ptr [bp-2h]

l2E37_0375:
	mov	ax,[1498h]
	cmp	[bp-2h],ax
	jc	0364h

l2E37_037D:
	pop	si
	mov	sp,bp
	pop	bp
	retf

;; fn2E37_0382: 2E37:0382
;;   Called from:
;;     2E37:04B4 (in fn2E37_04AE)
;;     2E37:04C4 (in fn2E37_04BE)
fn2E37_0382 proc
	push	bp
	mov	bp,sp
	sub	sp,2h
	push	si
	mov	ax,[148Ch]
	cmp	[bp+6h],ax
	jnz	0394h

l2E37_0391:
	jmp	042Ch

l2E37_0394:
	cmp	[bp+6h],ax
	jbe	03E2h

l2E37_0399:
	mov	[bp-2h],ax
	jmp	03A1h

l2E37_039E:
	inc	word ptr [bp-2h]

l2E37_03A1:
	mov	ax,[bp+6h]
	cmp	[bp-2h],ax
	jnc	0420h

l2E37_03A9:
	mov	si,[bp-2h]
	mov	cl,4h
	shl	si,cl
	mov	ax,1h
	push	ax
	call	far 2C27h:0292h
	add	sp,2h
	les	bx,[1486h]
	mov	es:[bx+si+0Ah],ax
	cmp	word ptr [149Ah],0h
	jnz	039Eh

l2E37_03CB:
	push	ax
	call	far 2C27h:0440h
	add	sp,2h
	les	bx,[1486h]
	mov	es:[bx+si+0Ch],ax
	mov	es:[bx+si+0Eh],dx
	jmp	039Eh

l2E37_03E2:
	mov	ax,[bp+6h]
	mov	[bp-2h],ax
	jmp	0418h

l2E37_03EA:
	push	word ptr [bp-2h]
	push	cs
	call	0096h
	add	sp,2h
	push	word ptr [bp-2h]
	push	cs
	call	0152h
	add	sp,2h
	mov	si,[bp-2h]
	mov	cl,4h
	shl	si,cl
	les	bx,[1486h]
	push	word ptr es:[bx+si+0Ah]
	call	far 2C27h:03B4h
	add	sp,2h
	inc	word ptr [bp-2h]

l2E37_0418:
	mov	ax,[148Ch]
	cmp	[bp-2h],ax
	jc	03EAh

l2E37_0420:
	mov	ax,[bp+6h]
	mov	[148Ch],ax
	mov	word ptr [1490h],0h

l2E37_042C:
	pop	si
	mov	sp,bp
	pop	bp
	retf
2E37:0431    90                                            .              

;; fn2E37_0432: 2E37:0432
;;   Called from:
;;     1825:0D19 (in fn1825_0CD2)
;;     21DC:10AA (in fn21DC_0EC2)
fn2E37_0432 proc
	sub	ax,ax
	push	ax
	call	far 2C27h:01F0h
	add	sp,2h
	push	ax
	push	cs
	call	02A4h
	add	sp,2h
	retf

;; fn2E37_0446: 2E37:0446
;;   Called from:
;;     1825:0CE9 (in fn1825_0CD2)
;;     21DC:0541 (in fn21DC_04BA)
fn2E37_0446 proc
	push	bp
	mov	bp,sp
	sub	sp,2h
	push	si
	mov	word ptr [bp-2h],0h
	jmp	0478h

l2E37_0454:
	push	word ptr [bp-2h]
	push	cs
	call	0096h
	add	sp,2h
	mov	si,[bp-2h]
	mov	cl,4h
	shl	si,cl
	les	bx,[1486h]
	push	word ptr es:[bx+si+0Ah]
	call	far 2C27h:03B4h
	add	sp,2h
	inc	word ptr [bp-2h]

l2E37_0478:
	mov	ax,[148Ch]
	cmp	[bp-2h],ax
	jc	0454h

l2E37_0480:
	push	word ptr [148Ah]
	push	word ptr [1488h]
	push	word ptr [1486h]
	call	far 21DCh:09B4h
	add	sp,6h
	push	word ptr [1496h]
	push	word ptr [1494h]
	push	word ptr [1492h]
	call	far 21DCh:09B4h
	add	sp,6h
	pop	si
	mov	sp,bp
	pop	bp
	retf
2E37:04AD                                        90                    .  

;; fn2E37_04AE: 2E37:04AE
;;   Called from:
;;     2D1A:0CFB (in fn2D1A_0BD2)
fn2E37_04AE proc
	push	bp
	mov	bp,sp
	push	word ptr [bp+6h]
	push	cs
	call	0382h
	add	sp,2h
	pop	bp
	retf
2E37:04BD                                        90                    .  

;; fn2E37_04BE: 2E37:04BE
;;   Called from:
;;     2D1A:102F (in fn2D1A_0FA6)
fn2E37_04BE proc
	push	bp
	mov	bp,sp
	push	word ptr [bp+6h]
	push	cs
	call	0382h
	add	sp,2h
	pop	bp
	retf
2E37:04CD                                        90                    .  

;; fn2E37_04CE: 2E37:04CE
;;   Called from:
;;     1825:48FB (in fn1825_48D2)
;;     1825:4993 (in fn1825_496A)
;;     2EB3:0C03 (in fn2EB3_0BF0)
;;     2EB3:0E99 (in fn2EB3_0BF0)
;;     2EB3:1566 (in fn2EB3_1526)
;;     2EB3:18D8 (in fn2EB3_17FE)
;;     2EB3:19C7 (in fn2EB3_17FE)
;;     2EB3:19DC (in fn2EB3_17FE)
;;     2EB3:19F1 (in fn2EB3_17FE)
;;     2EB3:1A06 (in fn2EB3_17FE)
;;     2EB3:213D (in fn2EB3_20FE)
;;     2EB3:21AF (in fn2EB3_20FE)
;;     2EB3:227A (in fn2EB3_20FE)
fn2E37_04CE proc
	push	bp
	mov	bp,sp
	sub	sp,6h
	push	si
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	0022h
	add	sp,6h
	mov	[bp-6h],ax
	cmp	ax,0FFFFh
	jz	04F0h

l2E37_04ED:
	jmp	057Ch

l2E37_04F0:
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	0212h
	add	sp,6h
	mov	[bp-6h],ax
	cmp	word ptr [149Ah],0h
	jz	0522h

l2E37_050A:
	mov	si,ax
	mov	cl,4h
	shl	si,cl
	les	bx,[1486h]
	push	word ptr es:[bx+si+0Ah]
	call	far 2C27h:0440h
	add	sp,2h
	jmp	0535h

l2E37_0522:
	mov	si,[bp-6h]
	mov	cl,4h
	shl	si,cl
	les	bx,[1486h]
	mov	ax,es:[bx+si+0Ch]
	mov	dx,es:[bx+si+0Eh]

l2E37_0535:
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	sub	ax,ax
	push	ax
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 208Fh:0115h
	add	sp,8h
	push	word ptr [149Ch]
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	push	word ptr [bp+6h]
	call	far 208Fh:00C9h
	add	sp,8h
	cmp	ax,[149Ch]
	jz	05B5h

l2E37_056A:
	push	word ptr [bp-6h]
	push	cs
	call	0152h
	add	sp,2h
	mov	word ptr [1484h],1h
	jmp	05B5h

l2E37_057C:
	cmp	word ptr [149Ah],0h
	jz	059Ch

l2E37_0583:
	mov	si,[bp-6h]
	mov	cl,4h
	shl	si,cl
	les	bx,[1486h]
	push	word ptr es:[bx+si+0Ah]
	call	far 2C27h:0440h
	add	sp,2h
	jmp	05AFh

l2E37_059C:
	mov	si,[bp-6h]
	mov	cl,4h
	shl	si,cl
	les	bx,[1486h]
	mov	ax,es:[bx+si+0Ch]
	mov	dx,es:[bx+si+0Eh]

l2E37_05AF:
	mov	[bp-4h],ax
	mov	[bp-2h],dx

l2E37_05B5:
	mov	ax,[bp-4h]
	mov	dx,[bp-2h]
	pop	si
	mov	sp,bp
	pop	bp
	retf

;; fn2E37_05C0: 2E37:05C0
;;   Called from:
;;     2EB3:00DC (in fn2EB3_0064)
;;     2EB3:124B (in fn2EB3_1206)
;;     2EB3:138A (in fn2EB3_1206)
;;     2EB3:1412 (in fn2EB3_1206)
;;     2EB3:1854 (in fn2EB3_17FE)
;;     2EB3:220F (in fn2EB3_20FE)
fn2E37_05C0 proc
	push	bp
	mov	bp,sp
	sub	sp,6h
	push	si
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	0022h
	add	sp,6h
	mov	[bp-6h],ax
	cmp	ax,0FFFFh
	jz	05E2h

l2E37_05DF:
	jmp	066Eh

l2E37_05E2:
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	0212h
	add	sp,6h
	mov	[bp-6h],ax
	cmp	word ptr [149Ah],0h
	jz	0614h

l2E37_05FC:
	mov	si,ax
	mov	cl,4h
	shl	si,cl
	les	bx,[1486h]
	push	word ptr es:[bx+si+0Ah]
	call	far 2C27h:0440h
	add	sp,2h
	jmp	0627h

l2E37_0614:
	mov	si,[bp-6h]
	mov	cl,4h
	shl	si,cl
	les	bx,[1486h]
	mov	ax,es:[bx+si+0Ch]
	mov	dx,es:[bx+si+0Eh]

l2E37_0627:
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	sub	ax,ax
	push	ax
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 208Fh:0115h
	add	sp,8h
	push	word ptr [149Ch]
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	push	word ptr [bp+6h]
	call	far 208Fh:00C9h
	add	sp,8h
	cmp	ax,[149Ch]
	jz	06A7h

l2E37_065C:
	push	word ptr [bp-6h]
	push	cs
	call	0152h
	add	sp,2h
	mov	word ptr [1484h],1h
	jmp	06A7h

l2E37_066E:
	cmp	word ptr [149Ah],0h
	jz	068Eh

l2E37_0675:
	mov	si,[bp-6h]
	mov	cl,4h
	shl	si,cl
	les	bx,[1486h]
	push	word ptr es:[bx+si+0Ah]
	call	far 2C27h:0440h
	add	sp,2h
	jmp	06A1h

l2E37_068E:
	mov	si,[bp-6h]
	mov	cl,4h
	shl	si,cl
	les	bx,[1486h]
	mov	ax,es:[bx+si+0Ch]
	mov	dx,es:[bx+si+0Eh]

l2E37_06A1:
	mov	[bp-4h],ax
	mov	[bp-2h],dx

l2E37_06A7:
	mov	si,[bp-6h]
	mov	cl,4h
	shl	si,cl
	les	bx,[1486h]
	mov	word ptr es:[bx+si+6h],1h
	mov	ax,[bp-4h]
	mov	dx,[bp-2h]
	pop	si
	mov	sp,bp
	pop	bp
	retf
2E37:06C3          90                                        .            

;; fn2E37_06C4: 2E37:06C4
;;   Called from:
;;     2EB3:19B8 (in fn2EB3_17FE)
;;     2EB3:1C73 (in fn2EB3_17FE)
;;     2EB3:1C82 (in fn2EB3_17FE)
;;     2EB3:1FA2 (in fn2EB3_17FE)
;;     2EB3:1FB1 (in fn2EB3_17FE)
;;     2EB3:2319 (in fn2EB3_20FE)
fn2E37_06C4 proc
	push	bp
	mov	bp,sp
	sub	sp,2h
	push	si
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	0022h
	add	sp,6h
	mov	[bp-2h],ax
	mov	si,ax
	mov	cl,4h
	shl	si,cl
	les	bx,[1486h]
	mov	word ptr es:[bx+si+6h],1h
	pop	si
	mov	sp,bp
	pop	bp
	retf
2E37:06F3          90                                        .            

;; fn2E37_06F4: 2E37:06F4
;;   Called from:
;;     2EB3:0128 (in fn2EB3_0064)
;;     2EB3:0B81 (in fn2EB3_0B54)
;;     2EB3:0BC1 (in fn2EB3_0BB4)
fn2E37_06F4 proc
	push	bp
	mov	bp,sp
	sub	sp,2h
	push	si
	mov	word ptr [bp-2h],0h
	jmp	0733h

l2E37_0702:
	mov	si,[bp-2h]
	mov	cl,4h
	shl	si,cl
	les	bx,[1486h]
	mov	ax,[bp+6h]
	cmp	es:[bx+si+4h],ax
	jnz	0730h

l2E37_0716:
	push	word ptr [bp-2h]
	push	cs
	call	0096h
	add	sp,2h
	cmp	word ptr [bp+8h],0h
	jnz	0730h

l2E37_0726:
	push	word ptr [bp-2h]
	push	cs
	call	0152h
	add	sp,2h

l2E37_0730:
	inc	word ptr [bp-2h]

l2E37_0733:
	mov	ax,[148Ch]
	cmp	[bp-2h],ax
	jc	0702h

l2E37_073B:
	pop	si
	mov	sp,bp
	pop	bp
	retf

;; fn2E37_0740: 2E37:0740
;;   Called from:
;;     2EB3:12A2 (in fn2EB3_1206)
;;     2EB3:1468 (in fn2EB3_1206)
fn2E37_0740 proc
	push	bp
	mov	bp,sp
	sub	sp,6h
	push	si
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	0212h
	add	sp,6h
	mov	[bp-6h],ax
	cmp	word ptr [149Ah],0h
	jz	077Ah

l2E37_0761:
	mov	si,ax
	mov	cl,4h
	shl	si,cl
	les	bx,[1486h]
	push	word ptr es:[bx+si+0Ah]
	call	far 2C27h:0440h
	add	sp,2h
	jmp	078Dh
2E37:0779                            90                            .      

l2E37_077A:
	mov	si,[bp-6h]
	mov	cl,4h
	shl	si,cl
	les	bx,[1486h]
	mov	ax,es:[bx+si+0Ch]
	mov	dx,es:[bx+si+0Eh]

l2E37_078D:
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	push	word ptr [149Ch]
	sub	ax,ax
	push	ax
	push	dx
	push	word ptr [bp-4h]
	call	far 2017h:0228h
	add	sp,8h
	mov	si,[bp-6h]
	mov	cl,4h
	shl	si,cl
	les	bx,[1486h]
	mov	word ptr es:[bx+si+6h],1h
	mov	ax,[bp-4h]
	mov	dx,[bp-2h]
	pop	si
	mov	sp,bp
