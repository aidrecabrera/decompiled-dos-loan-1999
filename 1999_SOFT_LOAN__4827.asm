;;; Segment 4827 (4827:0000)
4827:0000 55 8B EC 33 DB B8 00 00 50 53 B8 B2 4C 50 53 B8 U..3....PS..LPS.
4827:0010 1D 00 0E 50 9A 00 00 C2 3B 8B E5 5D CB 64 00 00 ...P....;..].d..
4827:0020 64 82 01 11 01 00 D8 1C 00 83 64 83 01 D8 1D 00 d.........d.....
4827:0030 8F D8 1E 00 8F 64 85 01 59 06 00 64 87 01 59 B1 .....d..Y..d..Y.
4827:0040 00 9A 1C 00 DE 97 01 43 00 38 58 1F 00 64 89 01 .......C.8X..d..
4827:0050 97 03 40 4B 53 00 9A 1C 00 E5 63 99 4E 00 6E D3 ..@KS.....c.N.n.
4827:0060 6A 86 D8 1D 00 89 64 8B 01 59 86 00 9A 1C 00 DE j.....d..Y......
4827:0070 97 01 4E 00 38 58 6D 00 64 8D 01 9A 1C 00 E5 D3 ..N.8Xm.d.......
4827:0080 D8 1E 00 89 97 01 2E                            .......         

;; fn3CEE_B417: 3CEE:B417
;;   Called from:
;;     3CEE:14D6 (in fn3CEE_1472)
;;     3CEE:14E2 (in fn3CEE_1472)
fn3CEE_B417 proc
	add	[si-71h],ah
	add	[bp+si+1Eh],bx
	push	sp
	pop	ax
	cmp	al,[bx+si]
	xchg	cx,ax
	add	[bx+3901h],dx
	add	[bx+2E01h],dl
	add	[bp+si+1Eh],bl
	or	al,[bx+si+0AA6Fh]
	xchg	di,ax
	add	[8600h],bp
	fcomp	dword ptr [di]
	add	[bx+di+9264h],cl
	add	[bp+1Dh],bx
	xchg	di,ax
	add	[bx+di],di
	add	[bp+si+1Eh],bl
	arpl	[bp+si+1Dh],bx
	arpl	[bx-56h],bx
	xchg	al,bl
	sbb	ax,8900h
	xchg	sp,ax
	add	[bx+di+13h],bx
	add	[si-6Ah],ah
	add	[bx+3901h],dx
	add	[bp+si+1Eh],bl
	arpl	[bp+si+1DD8h],bx
	add	[bx+di+9864h],cl
	add	[si-66h],sp
	add	[bx+di+0Dh],bx
	add	[si-64h],ah
	add	[bx+0h],dx
	fcomp	dword ptr [di]
	add	[bx+di+9E64h],cl
	add	[si-60h],sp
	add	[bp+1Dh],bx
	mov	al,59h
	add	ax,[bx+si]
	test	al,1h
	xor	al,55h
