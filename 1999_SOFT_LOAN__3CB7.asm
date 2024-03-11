;;; Segment 3CB7 (3CB7:0000)

;; fn3CB7_0000: 3CB7:0000
;;   Called from:
;;     21DC:1187 (in main)
fn3CB7_0000 proc
	push	bp
	mov	bp,sp
	xor	bx,bx
	mov	ax,0h
	push	ax
	push	bx
	mov	ax,4CA1h
	push	ax
	push	bx
	mov	ax,1Dh
	push	cs
	push	ax
	call	far 3BC2h:0000h
	mov	sp,bp
	pop	bp
	retf
3CB7:001D                                        64 00 00              d..
3CB7:0020 64 09 00 59 03 00 64 10 00 34 00 00 00 00 00 00 d..Y..d..4......
