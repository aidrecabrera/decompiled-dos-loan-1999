;;; Segment 3CB4 (3CB4:0000)
3CB4:0000 12 F3 A4 5F 5E 07 C3                            ..._^..         
3BC2:0F27                      00                                .        

;; fn3CB4_0008: 3CB4:0008
;;   Called from:
;;     21DC:1159 (in main)
;;     2BC7:0241 (in fn2BC7_0236)
fn3CB4_0008 proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	cld
	les	di,[bp+0Ah]
	xor	ax,ax
	stosw
	mov	ax,4A96h
	stosw
	mov	bx,ax
	mov	ax,4D8Eh
	sub	ax,bx
	pop	di
	pop	si
	pop	bp
	retf
3CB4:0023          00 00 00 00 00 00 00 00 00 00 00 00 00    .............
