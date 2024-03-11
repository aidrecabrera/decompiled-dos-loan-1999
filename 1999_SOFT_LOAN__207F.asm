;;; Segment 207F (207F:0000)
207F:0000 83 C4 02 5D CB                                  ...].           
2068:0175                90                                    .          

;; fn207F_0006: 207F:0006
;;   Called from:
;;     2644:4633 (in fn2644_45CA)
;;     2EB3:0B5E (in fn2EB3_0B54)
fn207F_0006 proc
	push	bp
	mov	bp,sp
	jmp	001Dh
207F:000B                                  90                        .    

l207F_000C:
	cmp	word ptr [10CCh],0h
	jz	0018h

l207F_0013:
	sub	ax,ax
	pop	bp
	retf
207F:0017                      90                                .        

l207F_0018:
	call	far 21DCh:0D60h

l207F_001D:
	mov	word ptr [10CCh],0h
	sub	ax,ax
	push	ax
	mov	ax,1h
	cwd
	push	dx
	push	ax
	mov	ax,0CA00h
	mov	dx,3B9Ah
	push	dx
	push	ax
	push	word ptr [bp+6h]
	call	far 208Fh:0147h
	add	sp,0Ch
	or	ax,ax
	jz	000Ch

l207F_0043:
	mov	ax,1h
	pop	bp
	retf

;; fn207F_0048: 207F:0048
;;   Called from:
;;     2644:205D (in fn2644_1F12)
;;     2644:46CF (in fn2644_45CA)
;;     2EB3:0BE5 (in fn2EB3_0BB4)
fn207F_0048 proc
	push	bp
	mov	bp,sp
	mov	ax,1h
	push	ax
	cwd
	push	dx
	push	ax
	mov	ax,0CA00h
	mov	dx,3B9Ah
	push	dx
	push	ax
	push	word ptr [bp+6h]
	call	far 208Fh:0147h
	add	sp,0Ch
	pop	bp
	retf
207F:0067                      90 55 8B EC 2B C0 50 B8 00        .U..+.P..
207F:0070 CA BA 9A 3B 52 50 B8 01 CA 52 50 FF 76 06 9A 47 ...;RP...RP.v..G
207F:0080 01 8F 20 83 C4 0C 5D CB                         .. ...].        

;; fn207F_0088: 207F:0088
;;   Called from:
;;     2644:4531 (in fn2644_44C4)
fn207F_0088 proc
	push	bp
	mov	bp,sp
	mov	ax,1h
	push	ax
	mov	ax,0CA00h
	mov	dx,3B9Ah
	push	dx
	push	ax
	mov	ax,0CA01h
	push	dx
	push	ax
	push	word ptr [bp+6h]
	call	far 208Fh:0147h
	add	sp,0Ch
	pop	bp
	retf
207F:00A9                            90 55 8B EC 2B C0 50          .U..+.P
207F:00B0 B8 01 00 99 52 50 8B 46 08 8B 56 0A 05 00 CA 81 ....RP.F..V.....
207F:00C0 D2 9A 3B 52 50 FF 76 06 9A 47 01 8F 20 83 C4 0C ..;RP.v..G.. ...
207F:00D0 5D CB                                           ].              

;; fn207F_00D2: 207F:00D2
;;   Called from:
;;     2644:44FF (in fn2644_44C4)
fn207F_00D2 proc
	push	bp
	mov	bp,sp
	mov	ax,1h
	push	ax
	cwd
	push	dx
	push	ax
	mov	ax,[bp+8h]
	mov	dx,[bp+0Ah]
	add	ax,0CA00h
	adc	dx,3B9Ah
	push	dx
	push	ax
	push	word ptr [bp+6h]
	call	far 208Fh:0147h
	add	sp,0Ch
	pop	bp
	retf
207F:00F8                         55 8B EC FF 76 08 FF 76         U...v..v
