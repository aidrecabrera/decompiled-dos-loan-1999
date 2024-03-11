;;; Segment 2017 (2017:0000)
2017:0000 CD 21 1F 73 06                                  .!.s.           

l1F38_0DF5:
	mov	[10A1h],ax
	mov	ax,0h

l1F38_0DFB:
	pop	di
	pop	si
	pop	bp
	retf

;; fn2017_000F: 2017:000F
;;   Called from:
;;     2068:00BA (in fn2068_00A8)
;;     2C27:0029 (in fn2C27_0002)
fn2017_000F proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	mov	bx,[bp+0Ah]
	push	bx
	mov	ah,48h
	int	21h
	pop	dx
	jc	0027h

l2017_001F:
	cmp	bx,dx
	jnz	0027h

l2017_0023:
	xor	bx,bx
	jmp	002Bh

l2017_0027:
	xor	ax,ax
	mov	bx,ax

l2017_002B:
	push	ax
	mov	ax,bx
	pop	dx
	pop	di
	pop	si
	pop	bp
	retf

;; fn2017_0033: 2017:0033
;;   Called from:
;;     2068:0144 (in fn2068_00A8)
;;     2C27:0121 (in fn2C27_0112)
fn2017_0033 proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	les	di,[bp+0Ah]
	mov	ah,49h
	int	21h
	jc	0046h

l2017_0041:
	mov	ax,1h
	jmp	0048h

l2017_0046:
	xor	ax,ax

l2017_0048:
	pop	di
	pop	si
	pop	bp
	retf

;; fn2017_004C: 2017:004C
;;   Called from:
;;     21DC:0F77 (in fn21DC_0EC2)
fn2017_004C proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	mov	al,67h
	mov	ah,35h
	int	21h
	cmp	byte ptr es:[000Ah],45h
	jnz	0070h

l2017_005F:
	cmp	word ptr es:[000Bh],4D4Dh
	jnz	0070h

l2017_0068:
	mov	ah,42h
	int	67h
	or	ah,ah
	jz	0072h

l2017_0070:
	mov	bl,0h

l2017_0072:
	mov	al,10h
	mul	bl
	pop	di
	pop	si
	pop	bp
	retf

;; fn2017_007A: 2017:007A
;;   Called from:
;;     2C27:0044 (in fn2C27_0032)
fn2017_007A proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	mov	ah,41h
	int	67h
	les	di,[bp+0Ah]
	mov	word ptr es:[di],0h
	mov	es:[di+2h],bx
	xor	al,al
	xchg	ah,al
	pop	di
	pop	si
	pop	bp
	retf

;; fn2017_0097: 2017:0097
;;   Called from:
;;     2C27:0069 (in fn2C27_0032)
fn2017_0097 proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	mov	bx,[bp+0Ah]
	mov	ah,43h
	int	67h
	les	di,[bp+0Ch]
	mov	es:[di],dx
	xor	al,al
	xchg	ah,al
	pop	di
	pop	si
	pop	bp
	retf

;; fn2017_00B1: 2017:00B1
;;   Called from:
;;     2C27:052D (in fn2C27_0440)
fn2017_00B1 proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	mov	dx,[bp+0Ah]
	mov	bx,[bp+0Ch]
	mov	ax,[bp+0Eh]
	mov	ah,44h
	int	67h
	xor	al,al
	xchg	ah,al
	pop	di
	pop	si
	pop	bp
	retf

;; fn2017_00CB: 2017:00CB
;;   Called from:
;;     21DC:11CB (in main)
;;     2C27:01C7 (in fn2C27_01AC)
fn2017_00CB proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	mov	dx,[bp+0Ah]
	mov	ah,45h
	int	67h
	xor	al,al
	xchg	ah,al
	pop	di
	pop	si
	pop	bp
	retf

;; fn2017_00DF: 2017:00DF
;;   Called from:
;;     2BC7:0282 (in fn2BC7_0236)
;;     2C27:057B (in fn2C27_0440)
fn2017_00DF proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	les	di,[bp+0Ah]
	mov	ax,es
	mov	cl,0Ch
	shr	ax,cl
	mov	bx,es
	mov	cl,4h
	shl	bx,cl
	add	bx,di
	adc	ax,0h
	add	bx,[bp+0Eh]
	adc	ax,[bp+10h]
	mov	dx,bx
	and	bx,0Fh
	mov	cl,4h
	shr	dx,cl
	mov	cl,0Ch
	shl	ax,cl
	or	ax,dx
	push	ax
	mov	ax,bx
	pop	dx
	pop	di
	pop	si
	pop	bp
	retf
2017:0115                55 56 57 8B EC C4 56 0A 8C C0 8B      UVW...V....
2017:0120 DA B1 04 D3 EA 03 C2 83 E3 0F 50 8B C3 5A 5F 5E ..........P..Z_^
2017:0130 5D CB                                           ].              

;; fn2017_0132: 2017:0132
;;   Called from:
;;     2BC7:037F (in fn2BC7_0312)
fn2017_0132 proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	mov	cl,4h
	mov	ax,[bp+0Ch]
	mov	bx,[bp+0Ah]
	shr	bx,cl
	add	ax,bx
	mov	bx,[bp+10h]
	mov	dx,[bp+0Eh]
	shr	dx,cl
	add	bx,dx
	cmp	ax,bx
	jnz	015Fh

l2017_0151:
	mov	ax,[bp+0Ah]
	and	ax,0Fh
	mov	bx,[bp+0Eh]
	and	bx,0Fh
	cmp	ax,bx

l2017_015F:
	mov	ax,0FFFFh
	jc	0168h

l2017_0164:
	jz	0167h

l2017_0166:
	inc	ax

l2017_0167:
	inc	ax

l2017_0168:
	pop	di
	pop	si
	pop	bp
	retf

;; fn2017_016C: 2017:016C
;;   Called from:
;;     3CEE:387D (in fn3CEE_8634)
fn2017_016C proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	push	ds
	lds	dx,[bp+0Eh]
	mov	ah,1Ah
	int	21h
	mov	cx,[bp+12h]
	lds	dx,[bp+0Ah]
	mov	ah,4Eh
	int	21h
	mov	ax,1h
	jnc	018Ah

l2017_0188:
	xor	ax,ax

l2017_018A:
	pop	ds
	pop	di
	pop	si
	pop	bp
	retf

;; fn2017_018F: 2017:018F
;;   Called from:
;;     3CEE:3A9A (in fn3CEE_388C)
fn2017_018F proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	push	ds
	lds	dx,[bp+0Ah]
	mov	ah,4Fh
	int	21h
	mov	ax,1h
	jnc	01A3h

l2017_01A1:
	xor	ax,ax

l2017_01A3:
	pop	ds
	pop	di
	pop	si
	pop	bp
	retf

;; fn2017_01A8: 2017:01A8
;;   Called from:
;;     21DC:0F10 (in fn21DC_0EC2)
;;     2C27:0008 (in fn2C27_0002)
fn2017_01A8 proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	mov	bx,0FFFFh
	mov	ah,48h
	int	21h
	mov	ax,bx
	pop	di
	pop	si
	pop	bp
	retf

;; fn2017_01BA: 2017:01BA
;;   Called from:
;;     1825:1578 (in fn1825_139A)
;;     1825:15D4 (in fn1825_139A)
;;     1825:16F6 (in fn1825_139A)
;;     1825:1812 (in fn1825_139A)
;;     1825:1EA8 (in fn1825_1D40)
;;     1825:1F76 (in fn1825_1D40)
;;     1825:2D37 (in fn1825_2CF2)
;;     1825:2D89 (in fn1825_2CF2)
;;     1825:2EEB (in fn1825_2CF2)
;;     1825:3BF0 (in fn1825_3BCE)
;;     1825:3C48 (in fn1825_3BCE)
;;     1825:3C6E (in fn1825_3BCE)
;;     1825:3C88 (in fn1825_3BCE)
;;     1825:3CA2 (in fn1825_3BCE)
;;     1825:3F98 (in fn1825_3EE6)
;;     1825:40D8 (in fn1825_3EE6)
;;     1825:4128 (in fn1825_3EE6)
;;     1825:4184 (in fn1825_3EE6)
;;     1825:41C7 (in fn1825_3EE6)
;;     1825:4217 (in fn1825_3EE6)
;;     1825:438D (in fn1825_3EE6)
;;     1825:43EC (in fn1825_3EE6)
;;     1825:4444 (in fn1825_3EE6)
;;     1825:449E (in fn1825_3EE6)
;;     1825:4526 (in fn1825_3EE6)
;;     1825:4C32 (in fn1825_4BFA)
;;     1825:5E98 (in fn1825_5E5C)
;;     1825:6270 (in fn1825_6168)
;;     1825:6438 (in fn1825_63F8)
;;     2BC7:044F (in fn2BC7_03C2)
;;     3431:1260 (in fn3431_0E74)
;;     3431:1285 (in fn3431_0E74)
;;     38D6:0E24 (in fn38D6_0DFE)
fn2017_01BA proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	push	ds
	cld
	les	di,[bp+0Ah]
	mov	bx,di
	lds	si,[bp+0Eh]

l2017_01C9:
	lodsb
	stosb
	or	al,al
	jnz	01C9h

l2017_01CF:
	mov	ax,es
	pop	ds
	push	ax
	mov	ax,bx
	pop	dx
	pop	di
	pop	si
	pop	bp
	retf

;; fn2017_01DA: 2017:01DA
;;   Called from:
;;     38D6:0E60 (in fn38D6_0DFE)
fn2017_01DA proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	push	ds
	cld
	les	di,[bp+0Ah]
	lds	si,[bp+0Eh]
	mov	cx,[bp+12h]
	jcxz	01F7h

l2017_01EC:
	lodsb
	stosb
	or	al,al
	loopne	01ECh

l2017_01F2:
	mov	byte ptr es:[di-1h],0h

l2017_01F7:
	mov	ax,[bp+12h]
	sub	ax,cx
	pop	ds
	pop	di
	pop	si
	pop	bp
	retf
2017:0201    55 56 57 8B EC 1E FC C4 7E 0A C5 76 0E 8B 4E  UVW.....~..v..N
2017:0210 12 E3 0A AC AA 0A C0 E0 FA E3 02 F3 AA 8C C0 1F ................
2017:0220 50 8B C3 5A 5F 5E 5D CB                         P..Z_^].        

;; fn2017_0228: 2017:0228
;;   Called from:
;;     1825:37F2 (in fn1825_3766)
;;     1825:5561 (in fn1825_54D4)
;;     2368:0026 (in fn2368_0002)
;;     2644:0032 (in fn2644_000E)
;;     2644:0E16 (in fn2644_0D70)
;;     2644:2379 (in fn2644_22BE)
;;     2B41:00E6 (in fn2B41_00B4)
;;     2B41:022C (in fn2B41_01FA)
;;     2D1A:002C (in fn2D1A_0008)
;;     2D1A:0AD6 (in fn2D1A_0A76)
;;     2E37:02E3 (in fn2E37_02A4)
;;     2E37:079E (in fn2E37_0740)
;;     31FF:0044 (in fn31FF_0008)
;;     31FF:1A4B (in fn31FF_19EA)
;;     31FF:1B95 (in fn31FF_1B66)
;;     31FF:2115 (in fn31FF_207C)
;;     3431:00AC (in fn3431_000A)
;;     3431:0EFA (in fn3431_0E74)
;;     38D6:082F (in fn38D6_06FA)
;;     38D6:0E9A (in fn38D6_0DFE)
;;     3CEE:3F1F (in fn3CEE_3E8B)
;;     3CEE:3F1F (in fn3CEE_3E8B)
;;     3CEE:4135 (in fn3CEE_3F4C)
;;     3CEE:4151 (in fn3CEE_3F4C)
;;     3CEE:4179 (in fn3CEE_3F4C)
;;     3CEE:42B7 (in fn3CEE_4188)
;;     3CEE:440C (in fn3CEE_4188)
;;     3CEE:45A8 (in fn3CEE_4490)
;;     3CEE:45D3 (in fn3CEE_4490)
;;     3CEE:4613 (in fn3CEE_4490)
;;     3CEE:465D (in fn3CEE_4490)
;;     3CEE:663D (in fn3CEE_6620)
;;     3CEE:663D (in fn3CEE_6620)
;;     3CEE:665E (in fn3CEE_6620)
;;     3CEE:665E (in fn3CEE_6620)
;;     3CEE:6681 (in fn3CEE_6620)
;;     3CEE:6681 (in fn3CEE_6620)
;;     3CEE:6E67 (in fn3CEE_6E24)
;;     3CEE:6FC8 (in fn3CEE_6F82)
fn2017_0228 proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	cld
	mov	ax,[bp+0Ch]
	mov	di,[bp+0Ah]
	mov	bx,di
	shr	bx,1h
	shr	bx,1h
	shr	bx,1h
	shr	bx,1h
	add	ax,bx
	and	di,0Fh
	mov	es,ax
	mov	al,[bp+0Eh]
	mov	ah,al
	mov	cx,[bp+10h]
	shr	cx,1h

l2017_024F:
	rep stosw

l2017_0251:
	jnc	0254h

l2017_0253:
	stosb

l2017_0254:
	pop	di
	pop	si
	pop	bp
	retf

;; fn2017_0258: 2017:0258
;;   Called from:
;;     2644:20F6 (in fn2644_20AA)
;;     2BC7:0159 (in fn2BC7_011C)
;;     2BC7:01C0 (in fn2BC7_011C)
;;     2D1A:0529 (in fn2D1A_03E4)
;;     2D1A:0726 (in fn2D1A_064E)
;;     2EB3:13EA (in fn2EB3_1206)
;;     2EB3:1485 (in fn2EB3_1206)
;;     3431:0EE1 (in fn3431_0E74)
;;     3431:12E9 (in fn3431_0E74)
;;     3CEE:4027 (in fn3CEE_3F4C)
;;     3CEE:405A (in fn3CEE_3F4C)
;;     3CEE:407D (in fn3CEE_3F4C)
;;     3CEE:40AF (in fn3CEE_3F4C)
;;     3CEE:4236 (in fn3CEE_4188)
;;     3CEE:43E6 (in fn3CEE_4188)
;;     3CEE:4582 (in fn3CEE_4490)
;;     3CEE:45F0 (in fn3CEE_4490)
;;     3CEE:4630 (in fn3CEE_4490)
;;     3CEE:46D0 (in fn3CEE_4490)
;;     3CEE:69DA (in fn3CEE_6980)
;;     3CEE:6A30 (in fn3CEE_6980)
;;     3CEE:6A93 (in fn3CEE_6A6A)
;;     3CEE:713E (in fn3CEE_70B0)
;;     3CEE:9141 (in fn3CEE_4EAC)
;;     3CEE:9363 (in fn3CEE_4EAC)
fn2017_0258 proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	push	ds
	cld
	mov	ax,[bp+10h]
	mov	si,[bp+0Eh]
	mov	bx,si
	shr	bx,1h
	shr	bx,1h
	shr	bx,1h
	shr	bx,1h
	add	ax,bx
	and	si,0Fh
	mov	ds,ax
	mov	dx,[bp+0Ch]
	mov	di,[bp+0Ah]
	mov	bx,di
	shr	bx,1h
	shr	bx,1h
	shr	bx,1h
	shr	bx,1h
	add	dx,bx
	and	di,0Fh
	mov	es,dx
	mov	cx,[bp+12h]
	cmp	ax,dx
	ja	02E0h

l2017_0294:
	jc	02A5h

l2017_0296:
	cmp	si,di
	ja	02E0h

l2017_029A:
	mov	bx,cx
	add	bx,si
	dec	bx
	cmp	bx,di
	jc	02E0h

l2017_02A3:
	jmp	02C6h

l2017_02A5:
	mov	bx,cx
	add	bx,si
	dec	bx
	shr	bx,1h
	shr	bx,1h
	shr	bx,1h
	shr	bx,1h
	add	bx,ax
	cmp	bx,dx
	jc	02E0h

l2017_02B8:
	ja	02C6h

l2017_02BA:
	mov	bx,cx
	add	bx,si
	dec	bx
	and	bx,0Fh
	cmp	bx,di
	jc	02E0h

l2017_02C6:
	cmp	cx,2h
	jc	02E0h

l2017_02CB:
	add	si,cx
	dec	si
	dec	si
	add	di,cx
	dec	di
	dec	di
	shr	cx,1h
	std

l2017_02D6:
	rep movsw

l2017_02D8:
	cld
	jnc	02E7h

l2017_02DB:
	inc	si
	inc	di
	movsb
	jmp	02E7h

l2017_02E0:
	shr	cx,1h
	rep movsw
	jnc	02E7h

l2017_02E6:
	movsb

l2017_02E7:
	pop	ds
	pop	di
	pop	si
	pop	bp
	retf

;; fn2017_02EC: 2017:02EC
;;   Called from:
;;     1825:2EB5 (in fn1825_2CF2)
;;     1825:30F8 (in fn1825_2CF2)
;;     1825:382A (in fn1825_3766)
;;     1825:46D1 (in fn1825_4658)
;;     1825:4729 (in fn1825_4658)
;;     1825:4946 (in fn1825_48D2)
;;     1825:49DE (in fn1825_496A)
;;     1825:55AE (in fn1825_54D4)
;;     1825:610C (in fn1825_6078)
;;     1825:61C2 (in fn1825_6168)
;;     20B2:018A (in fn20B2_0176)
;;     20B2:0263 (in fn20B2_01FC)
;;     20B2:02FB (in fn20B2_01FC)
;;     20B2:032C (in fn20B2_0308)
;;     20B2:034E (in fn20B2_0308)
;;     20B2:0412 (in fn20B2_0308)
;;     20B2:0442 (in fn20B2_0308)
;;     20B2:0468 (in fn20B2_0308)
;;     20B2:0522 (in fn20B2_0474)
;;     20B2:0EBE (in fn20B2_0E9E)
;;     20B2:0EE1 (in fn20B2_0E9E)
;;     21DC:03B8 (in fn21DC_0368)
;;     21DC:0465 (in fn21DC_03EE)
;;     2368:0654 (in fn2368_059E)
;;     2644:186F (in fn2644_17C8)
;;     2EB3:0FD3 (in fn2EB3_0ED4)
;;     2EB3:1087 (in fn2EB3_0ED4)
;;     2EB3:11C3 (in fn2EB3_0ED4)
;;     2EB3:11EC (in fn2EB3_0ED4)
;;     2EB3:1334 (in fn2EB3_1206)
;;     2EB3:1771 (in fn2EB3_1720)
;;     2EB3:1A76 (in fn2EB3_17FE)
;;     2EB3:1B35 (in fn2EB3_17FE)
;;     2EB3:1BE9 (in fn2EB3_17FE)
;;     2EB3:1D19 (in fn2EB3_17FE)
;;     2EB3:1DA6 (in fn2EB3_17FE)
;;     2EB3:1EF0 (in fn2EB3_17FE)
;;     2EB3:1F77 (in fn2EB3_17FE)
;;     2EB3:2200 (in fn2EB3_20FE)
;;     2EB3:2255 (in fn2EB3_20FE)
;;     31FF:0092 (in fn31FF_006A)
;;     31FF:00C0 (in fn31FF_006A)
;;     31FF:00EE (in fn31FF_006A)
;;     31FF:0BF8 (in fn31FF_0BA0)
;;     31FF:0C48 (in fn31FF_0C14)
;;     31FF:0D9A (in fn31FF_0C62)
;;     31FF:0DFE (in fn31FF_0DB8)
;;     31FF:109D (in fn31FF_0F20)
;;     31FF:190E (in fn31FF_17DA)
;;     31FF:1932 (in fn31FF_17DA)
;;     31FF:1959 (in fn31FF_17DA)
;;     31FF:1A65 (in fn31FF_19EA)
;;     31FF:1AC1 (in fn31FF_19EA)
;;     31FF:1B81 (in fn31FF_1B66)
;;     31FF:1BC5 (in fn31FF_1B66)
;;     31FF:2101 (in fn31FF_207C)
;;     31FF:2238 (in fn31FF_207C)
;;     38D6:03F1 (in fn38D6_03DC)
;;     3B5D:04FF (in fn3B5D_04C8)
;;     3CEE:3846 (in fn3CEE_8634)
fn2017_02EC proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	push	ds
	cld
	les	di,[bp+0Ah]
	lds	si,[bp+0Eh]
	mov	cx,[bp+12h]
	shr	cx,1h
	rep movsw
	jnc	0303h

l2017_0302:
	movsb

l2017_0303:
	pop	ds
	pop	di
	pop	si
	pop	bp
	retf

;; fn2017_0308: 2017:0308
;;   Called from:
;;     2EB3:2440 (in fn2EB3_240A)
;;     2EB3:2593 (in fn2EB3_24C6)
fn2017_0308 proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	push	ds
	cld
	les	di,[bp+0Ah]
	lds	si,[bp+0Eh]
	mov	cx,[bp+12h]
	mov	dx,[bp+14h]
	cmp	cx,dx
	ja	0324h

l2017_031F:
	rep movsb
	jmp	0330h
2017:0323          90                                        .            

l2017_0324:
	xchg	dx,cx
	sub	dx,cx
	rep movsb
	mov	cx,dx
	mov	al,20h

l2017_032E:
	rep stosb

l2017_0330:
	pop	ds
	pop	di
	pop	si
	pop	bp
	retf

;; fn2017_0335: 2017:0335
;;   Called from:
;;     1825:4859 (in fn1825_4814)
fn2017_0335 proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	push	ds
	cld
	lds	si,[bp+0Ah]
	les	di,[bp+0Eh]
	mov	cx,[bp+12h]
	mov	ax,0h
	jcxz	0356h

l2017_034A:
	rep cmpsb
	jz	0356h

l2017_034E:
	mov	ax,1h
	jg	0356h

l2017_0353:
	mov	ax,0FFFFh

l2017_0356:
	pop	ds
	pop	di
	pop	si
	pop	bp
	retf

;; fn2017_035B: 2017:035B
;;   Called from:
;;     31FF:023A (in fn31FF_0216)
;;     31FF:180C (in fn31FF_17DA)
;;     31FF:19AE (in fn31FF_17DA)
;;     3431:0E22 (in fn3431_0DDE)
;;     3431:0E41 (in fn3431_0DDE)
;;     3431:0E5D (in fn3431_0DDE)
;;     3CEE:0EBC (in fn3CEE_0EA8)
fn2017_035B proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	cld
	les	di,[bp+0Ah]
	mov	cx,[bp+0Eh]
	jcxz	0377h

l2017_0369:
	mov	bx,cx
	mov	al,[bp+10h]

l2017_036E:
	repne scasb

l2017_0370:
	jnz	0373h

l2017_0372:
	inc	cx

l2017_0373:
	xchg	cx,bx
	sub	cx,bx

l2017_0377:
	mov	ax,cx
	pop	di
	pop	si
	pop	bp
	retf

;; fn2017_037D: 2017:037D
;;   Called from:
;;     1825:2D57 (in fn1825_2CF2)
;;     1825:2EFE (in fn1825_2CF2)
;;     1825:2F33 (in fn1825_2CF2)
;;     38D6:0E73 (in fn38D6_0DFE)
fn2017_037D proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	push	ds
	cld
	les	di,[bp+0Ah]
	mov	bx,di
	lds	si,[bp+0Eh]
	xor	ax,ax
	mov	cx,0FFFFh

l2017_0391:
	repne scasb

l2017_0393:
	dec	di

l2017_0394:
	lodsb
	stosb
	or	al,al
	jnz	0394h

l2017_039A:
	mov	ax,es
	pop	ds
	push	ax
	mov	ax,bx
	pop	dx
	pop	di
	pop	si
	pop	bp
	retf
2017:03A5                55 56 57 8B EC 1E FC C5 76 0A 8A      UVW.....v..
2017:03B0 5E 0E AC 3A C3 74 0B 0A C0 75 F7 33 C0 33 DB EB ^..:.t...u.3.3..
2017:03C0 06 90 4E 8C D8 8B DE 1F 50 8B C3 5A 5F 5E 5D CB ..N.....P..Z_^].

;; fn2017_03D0: 2017:03D0
;;   Called from:
;;     1825:2E6D (in fn1825_2CF2)
;;     1825:30CF (in fn1825_2CF2)
;;     1825:30E8 (in fn1825_2CF2)
;;     1825:3106 (in fn1825_2CF2)
;;     1825:6422 (in fn1825_63F8)
;;     2BC7:03CF (in fn2BC7_03C2)
;;     2BC7:04A1 (in fn2BC7_0494)
fn2017_03D0 proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	push	ds
	cld
	lds	si,[bp+0Ah]

l2017_03DA:
	lodsb
	cmp	al,20h
	jz	03DAh

l2017_03DF:
	cmp	al,9h
	jz	03DAh

l2017_03E3:
	cmp	al,0Ah
	jz	03DAh

l2017_03E7:
	dec	si
	mov	ax,ds
	mov	bx,si
	pop	ds
	push	ax
	mov	ax,bx
	pop	dx
	pop	di
	pop	si
	pop	bp
	retf

;; fn2017_03F5: 2017:03F5
;;   Called from:
;;     1825:034A (in fn1825_02F0)
;;     1825:040E (in fn1825_037E)
;;     1825:0680 (in fn1825_05F2)
;;     1825:0799 (in fn1825_06E0)
;;     1825:0A48 (in fn1825_0A00)
;;     1825:0F00 (in fn1825_0E72)
;;     1825:0FD3 (in fn1825_0E72)
;;     1825:10AE (in fn1825_0E72)
;;     1825:113D (in fn1825_0E72)
;;     1825:1205 (in fn1825_0E72)
;;     1825:1542 (in fn1825_139A)
;;     1825:162D (in fn1825_139A)
;;     1825:1974 (in fn1825_18A6)
;;     1825:1A67 (in fn1825_18A6)
;;     1825:1AD9 (in fn1825_18A6)
;;     1825:1BA3 (in fn1825_18A6)
;;     1825:1E74 (in fn1825_1D40)
;;     1825:2106 (in fn1825_2020)
;;     1825:26B9 (in fn1825_2696)
;;     1825:27B3 (in fn1825_26D6)
;;     1825:2C71 (in fn1825_2C52)
;;     1825:2D65 (in fn1825_2CF2)
;;     1825:2E85 (in fn1825_2CF2)
;;     1825:2E96 (in fn1825_2CF2)
;;     1825:2F0C (in fn1825_2CF2)
;;     1825:2F41 (in fn1825_2CF2)
;;     1825:3019 (in fn1825_2CF2)
;;     1825:302A (in fn1825_2CF2)
;;     1825:30D9 (in fn1825_2CF2)
;;     1825:3110 (in fn1825_2CF2)
;;     1825:3809 (in fn1825_3766)
;;     1825:3A6C (in fn1825_39DE)
;;     1825:3C0B (in fn1825_3BCE)
;;     1825:3CBC (in fn1825_3BCE)
;;     1825:3FA5 (in fn1825_3EE6)
;;     1825:40E5 (in fn1825_3EE6)
;;     1825:4135 (in fn1825_3EE6)
;;     1825:4191 (in fn1825_3EE6)
;;     1825:41D4 (in fn1825_3EE6)
;;     1825:4224 (in fn1825_3EE6)
;;     1825:439A (in fn1825_3EE6)
;;     1825:43F9 (in fn1825_3EE6)
;;     1825:4451 (in fn1825_3EE6)
;;     1825:44AB (in fn1825_3EE6)
;;     1825:4533 (in fn1825_3EE6)
;;     1825:46A1 (in fn1825_4658)
;;     1825:470B (in fn1825_4658)
;;     1825:4915 (in fn1825_48D2)
;;     1825:49AD (in fn1825_496A)
;;     1825:4C3F (in fn1825_4BFA)
;;     1825:4ED4 (in fn1825_4DA6)
;;     1825:559A (in fn1825_54D4)
;;     1825:57C9 (in fn1825_5730)
;;     1825:58EE (in fn1825_5850)
;;     1825:5EA5 (in fn1825_5E5C)
;;     1825:604E (in fn1825_6042)
;;     1825:61DA (in fn1825_6168)
;;     1825:6445 (in fn1825_63F8)
;;     1825:64D7 (in fn1825_648A)
;;     1825:65BE (in fn1825_648A)
;;     20B2:00C8 (in fn20B2_005C)
;;     20B2:0154 (in fn20B2_0140)
;;     20B2:024C (in fn20B2_01FC)
;;     20B2:02E3 (in fn20B2_01FC)
;;     20B2:0314 (in fn20B2_0308)
;;     20B2:03FB (in fn20B2_0308)
;;     20B2:0420 (in fn20B2_0308)
;;     20B2:0ECC (in fn20B2_0E9E)
;;     20B2:10C5 (in fn20B2_10AC)
;;     2368:0245 (in fn2368_022E)
;;     2644:19FD (in fn2644_17C8)
;;     2BC7:0328 (in fn2BC7_0312)
;;     31FF:007B (in fn31FF_006A)
;;     31FF:00A6 (in fn31FF_006A)
;;     31FF:00D4 (in fn31FF_006A)
;;     31FF:0AD6 (in fn31FF_0AAE)
;;     3431:0EC1 (in fn3431_0E74)
;;     38D6:0E32 (in fn38D6_0DFE)
;;     38D6:0E45 (in fn38D6_0DFE)
;;     38D6:0E81 (in fn38D6_0DFE)
;;     3B5D:04D5 (in fn3B5D_04C8)
;;     3CEE:3D5B (in fn3CEE_3CE2)
;;     3CEE:3DFE (in fn3CEE_3CE2)
;;     3CEE:41DF (in fn3CEE_4188)
;;     3CEE:41F5 (in fn3CEE_4188)
;;     3CEE:42A1 (in fn3CEE_4188)
;;     3CEE:46B8 (in fn3CEE_4490)
;;     3CEE:5803 (in fn3CEE_5556)
;;     3CEE:884C (in fn3CEE_8634)
fn2017_03F5 proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	cld
	les	di,[bp+0Ah]
	mov	cx,0FFFFh
	mov	al,0h

l2017_0403:
	repne scasb

l2017_0405:
	mov	ax,cx
	neg	ax
	dec	ax
	dec	ax
	pop	di
	pop	si
	pop	bp
	retf

;; fn2017_040F: 2017:040F
;;   Called from:
;;     3CEE:DA32 (in fn3CEE_DA1B)
;;     3CEE:DA44 (in fn3CEE_DA1B)
fn2017_040F proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	mov	dx,[bp+0Ah]
	les	di,[bp+0Ch]
	mov	ah,36h
	int	21h
	mov	es:[di],bx
	mov	es:[di+2h],ax
	mov	es:[di+4h],dx
	pop	di
	pop	si
	pop	bp
	retf

;; fn2017_042D: 2017:042D
;;   Called from:
;;     38D6:0313 (in fn38D6_0304)
fn2017_042D proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	push	ds
	cld
	lds	si,[bp+0Ah]
	mov	cx,6h

l2017_043A:
	lodsw
	push	ax
	loop	043Ah

l2017_043E:
	pop	di
	pop	si
	pop	dx
	pop	cx
	pop	bx
	pop	ax
	int	21h
	pushf
	push	di
	push	si
	push	dx
	push	cx
	push	bx
	push	ax
	les	di,[bp+0Ah]
	mov	cx,6h

l2017_0453:
	pop	ax
	stosw
	loop	0453h

l2017_0457:
	pop	ax
	pop	ds
	pop	di
	pop	si
	pop	bp
	retf
2017:045D                                        55 56 57              UVW
2017:0460 8B EC 1E FC 83 EC 20 8B 4E 12 E3 0C 03 E1 03 E1 ...... .N.......
2017:0470 C4 76 0E 26 AD 50 E2 FB 5B 5A 8E C2 52 53 FF 5E .v.&.P..[Z..RS.^
2017:0480 0A 83 C4 20 1F 5F 5E 5D CB                      ... ._^].       

;; fn2017_0489: 2017:0489
;;   Called from:
;;     2EB3:0C56 (in fn2EB3_0BF0)
fn2017_0489 proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	mov	cx,0h
	les	di,[bp+0Ah]
	mov	bx,es:[di]

l2017_0497:
	cmp	cx,bx
	jnc	04DBh

l2017_049B:
	mov	dx,cx
	add	dx,bx
	shr	dx,1h
	push	bx
	push	cx
	push	dx
	push	es
	push	di
	mov	si,dx
	shl	si,1h
	add	si,di
	mov	si,es:[si+2h]
	add	si,8h
	add	si,di
	push	word ptr [bp+12h]
	push	word ptr [bp+10h]
	push	word ptr [bp+0Eh]
	push	es
	push	si
	call	far 38ADh:00F2h
	add	sp,0Ah
	pop	di
	pop	es
	pop	dx
	pop	cx
	pop	bx
	cmp	ax,0h
	jle	04D6h

l2017_04D2:
	mov	bx,dx
	jmp	0497h

l2017_04D6:
	mov	cx,dx
	inc	cx
	jmp	0497h

l2017_04DB:
	mov	ax,cx
	pop	di
	pop	si
	pop	bp
	retf

;; fn2017_04E1: 2017:04E1
;;   Called from:
;;     38D6:0ED2 (in fn38D6_0DFE)
fn2017_04E1 proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	push	ds
	jmp	04EDh
2017:04E9                            00 00 00 00                   ....   

l2017_04ED:
	mov	cs:[04E9h],ss
	mov	cs:[04EBh],sp
	lds	dx,[bp+0Ah]
	les	bx,[bp+0Eh]
	mov	ax,4B00h
	int	21h
	cli
	mov	ss,cs:[04E9h]
	mov	sp,cs:[04EBh]
	sti
	jc	0512h
