;;; Segment 49EB (49EB:0000)
49EB:0000 55 8B EC 33 DB B8 00 00 50 53 B8 F0 4C 50 53 B8 U..3....PS..LPS.
49EB:0010 1D 00 0E 50 9A 00 00 C2 3B 8B E5 5D CB 64 00 00 ...P....;..].d..
49EB:0020 11 03 00 D8 75 00 83 D8 74 00 83 D8 73 00 83 97 ....u...t...s...
49EB:0030 0A 70 72 65 73 73 65 64 5F 46 31 00 DE 97 01 55 .pressed_F1....U
49EB:0040 00 75 58 03 00 59 AA 01 C9 00 00 D8 19 00 46 D8 .uX..Y........F.
49EB:0050 6D                                              m               

;; fn3CEE_D021: 3CEE:D021
;;   Called from:
;;     3CEE:14AB (in fn3CEE_1472)
fn3CEE_D021 proc
	add	[bx+di+499h],cl
	add	[bx+di+0Ah],bl
	cwd
	adc	ax,9900h
	inc	si
	add	cl,cl
	add	al,0h
	fcomp	dword ptr [di]
	add	[bp-28h],al
	jbe	0D039h

l3CEE_D039:
	mov	[bp+78h],bx
	shr	word ptr [bp+si-28h],cl
	ja	0D042h

l3CEE_D042:
	mov	[bx+7E01h],dx
	add	[bp+77h],bl
	xchg	[bx+7E01h],dl
	add	[bp+7A9Eh],al
	add	[bp+si],cl
	cwd
	add	al,[bx+si]
	sahf
	ja	0D05Ah

l3CEE_D05A:
	arpl	[bp+0D886h],bx
	jns	0D060h

l3CEE_D060:
	mov	[bx+7E01h],dx
	add	[bp+77h],bl
	xchg	[bx+7E01h],dl
	add	[bp+7A9Eh],al
	add	cl,cl
	add	al,[bx+si]
	fdivr	dword ptr [si+0h]
	inc	si
	fdivr	dword ptr [bp+di+0h]
	mov	[bx+5C01h],dx
	add	[bp+77h],bl
	xchg	[bx+5C01h],dl
	add	[bp+7A9Eh],al
	add	[bp+si],cl
	cwd
	add	al,[bx+si]
	sahf
	ja	0D093h

l3CEE_D093:
	arpl	[bp+0D886h],bx
	jge	0D099h

l3CEE_D099:
	mov	[bx+5C01h],dx
	add	[bp+77h],bl
	xchg	[bx+5C01h],dl
	add	[bp+7A9Eh],al
	add	cl,cl
	add	al,[bx+si]
	fdivr	dword ptr [si+0h]
	inc	si
	fdivr	dword ptr [bp+0h]
	mov	[bp+7Ah],bx
	sahf
	jns	0D0BBh

l3CEE_D0BB:
	sahf
	jpo	0D0BEh

l3CEE_D0BE:
	sahf
	jns	0D0C1h

l3CEE_D0C1:
	outsw
	xlat
	fdivr	dword ptr [bx+0h]
	mov	[bp+7Ah],bx
	sahf
	jge	0D0CDh

l3CEE_D0CD:
	sahf
	jle	0D0D0h

l3CEE_D0D0:
	sahf
	jge	0D0D3h

l3CEE_D0D3:
	outsw
	xlat
	fadd	dword ptr [bx+si+8900h]
	xchg	di,ax
	sbb	[bx+2Fh],dh
	outsb
	and	[bx+si],ah
	and	[bx+si],ah
	and	[bx+si],ah
	and	[bx+si],ah
	and	[bx+si],ah
	and	[bx+si],ah
	and	[bx+si],ah
	and	[bx+si],ah
	and	[bx+si],ah
	and	[bx+si],ah
	and	[bx+si],al
	mov	dx,499h
	add	[bx+di+0Ah],bl
	cwd
	adc	ax,9900h
	inc	si
	add	[000Bh],dh
	xchg	di,ax
	sbb	[bp+2Fh],ch
	ja	0D12Ah

l3CEE_D10A:
	and	[bx+si],ah
	and	[bx+si],ah
	and	[bx+si],ah

;; fn3CEE_D10F: 3CEE:D10F
;;   Called from:
;;     3CEE:865A (in fn3CEE_8634)
;;     3CEE:D10E (in fn3CEE_D021)
fn3CEE_D10F proc
	and	[bx+si],ah
	and	[bx+si],ah
	and	[bx+si],ah
	and	[bx+si],ah
	and	[bx+si],ah
	and	[bx+si],ah
	and	[bx+si],ah
	and	[bx+si],al
	mov	dx,499h
	add	[bx+di+50h],bl
	sahf
	jg	0D129h

;; fn3CEE_D129: 3CEE:D129
;;   Called from:
;;     3CEE:D126 (in fn3CEE_D10F)
;;     3CEE:D126 (in fn3CEE_D021)
;;     3CEE:D127 (in fn3CEE_D10F)
;;     3CEE:D127 (in fn3CEE_D10F)
;;     3CEE:D12B (in fn3CEE_D021)
fn3CEE_D129 proc
	arpl	[bx+di+2h],bx

l3CEE_D12A:
	cwd
	add	al,[bx+si]

l3CEE_D12D:
	xchg	[bx-67h],ch
	add	al,[bx+si]
	sub	cx,[bp+di+197h]
	and	[bx+si],al
	sahf
	jg	0D13Bh

l3CEE_D13B:
	xchg	[bx+2001h],dl
	add	[bp+0B17Fh],al
	cwd
	adc	ax,9900h
	sbb	al,0h
	mov	dx,[bx+2018h]
	sbb	[bx+di],bl
	and	[di],ch
	and	[di+6Fh],cl
	jbe	0D1BBh

l3CEE_D156:
	and	[bx+si],ah
	and	[di+53h],al
	inc	bx
	and	[di],ch
	and	[di+78h],al
	imul	si,[si+20h],7F00h
	mov	cl,97h
	sbb	[bp+2Fh],ch
	ja	0D198h

l3CEE_D16D:
	and	[bx+si],ah
	and	[bx+si],ah
	and	[bx+si],ah
	and	[bx+si],ah
	and	[bx+si],ah
	and	[bx+si],ah
	and	[bx+si],ah
	and	[bx+si],ah
	and	[bx+si],ah
	and	[bx+si],ah
	add	[bp+si+0D8DDh],bh
	add	word ptr [bx+si],9E89h
	add	byte ptr [bx+si],99h
	add	ax,9900h
	or	ax,[bx+si]
	cwd
	adc	al,0h
	cwd
	inc	bp
	add	[06C9h],bh

l3CEE_D198:
	leave
	push	es

l3CEE_D19A:
	add	al,bl
	add	byte ptr [bx+si],46h
	xchg	[bp+6Dh],bx
	mov	dx,499h
	add	[bx+di+0Ah],bl
	cwd
	adc	ax,9900h
	inc	si
	add	[bp+76h],bl
	leave
	add	ax,0D800h
	pop	ds
	add	[bp-79h],al

l3CEE_D1BB:
	fadd	dword ptr [bx+di+0EC00h]
	pop	cx
	add	[bx+si],al
	xor	al,0h
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
