;;; Segment 4374 (4374:0000)
4374:0000 C4 0A 5E 8B E5 5D CB 90                         ..^..]..        

;; fn3CEE_6868: 3CEE:6868
;;   Called from:
;;     3CEE:753C (in fn3CEE_74F0)
;;     3CEE:7B67 (in fn3CEE_7AD2)
;;     3CEE:83A6 (in fn3CEE_838A)
;;     3CEE:83E8 (in fn3CEE_838A)
fn3CEE_6868 proc
	push	bp
	mov	bp,sp
	cmp	byte ptr [bp+6h],0Dh
	jz	687Dh

l3CEE_6871:
	cmp	byte ptr [bp+6h],8Dh
	jz	687Dh

l3CEE_6877:
	cmp	byte ptr [bp+6h],1Ah
	jnz	6882h

l3CEE_687D:
	mov	ax,1h
	pop	bp
	retf

l3CEE_6882:
	sub	ax,ax
	pop	bp
	retf

;; fn3CEE_6886: 3CEE:6886
;;   Called from:
;;     3CEE:6977 (in fn3CEE_695E)
;;     3CEE:6ACA (in fn3CEE_6AB8)
;;     3CEE:6B6A (in fn3CEE_6B58)
;;     3CEE:6F4B (in fn3CEE_6E24)
;;     3CEE:7D46 (in fn3CEE_7D22)
;;     3CEE:7EFF (in fn3CEE_7EF0)
;;     3CEE:7F3C (in fn3CEE_7F2A)
;;     3CEE:8055 (in fn3CEE_8634)
;;     3CEE:8082 (in fn3CEE_8070)
;;     3CEE:80E2 (in fn3CEE_8070)
;;     3CEE:8470 (in fn3CEE_845E)
fn3CEE_6886 proc
	push	bp
	mov	bp,sp
	sub	sp,2h
	push	si
	les	bx,[3A8Ah]
	mov	word ptr es:[bx+3Ah],0h
	cmp	word ptr [bp+8h],0h
	jle	6912h

l3CEE_689D:
	les	bx,[3A8Ah]
	mov	ax,es:[bx+3Ah]
	cmp	[bp+8h],ax
	ja	68ADh

l3CEE_68AA:
	jmp	6956h

l3CEE_68AD:
	mov	bx,[bp+6h]
	mov	si,[3A8Ah]
	les	si,es:[si]
	cmp	byte ptr es:[bx+si],1Ah
	jnz	68C0h

l3CEE_68BD:
	jmp	6956h

l3CEE_68C0:
	jmp	68CDh
3CEE:68C2       90 90                                       ..            

l3CEE_68C4:
	cmp	byte ptr [bp-2h],1Ah
	jz	68E1h

l3CEE_68CA:
	inc	word ptr [bp+6h]

l3CEE_68CD:
	mov	bx,[bp+6h]
	les	si,[3A8Ah]
	les	si,es:[si]
	mov	al,es:[bx+si]
	mov	[bp-2h],al
	cmp	al,0Ah
	jnz	68C4h

l3CEE_68E1:
	mov	bx,[bp+6h]
	les	si,[3A8Ah]
	les	si,es:[si]
	cmp	byte ptr es:[bx+si],0Ah
	jnz	689Dh

l3CEE_68F1:
	inc	word ptr [bp+6h]
	les	bx,[3A8Ah]
	inc	word ptr es:[bx+3Ah]
	jmp	689Dh

l3CEE_68FE:
	les	bx,[3A8Ah]
	les	bx,es:[bx]
	mov	si,[bp+6h]
	cmp	byte ptr es:[bx+si-1h],0Ah
	jz	6918h

l3CEE_690F:
	dec	word ptr [bp+6h]

l3CEE_6912:
	cmp	word ptr [bp+6h],0h
	jnz	68FEh

l3CEE_6918:
	mov	ax,[bp+8h]
	neg	ax
	mov	[bp+8h],ax
	jmp	6950h

l3CEE_6922:
	les	bx,[3A8Ah]
	mov	ax,es:[bx+3Ah]
	cmp	[bp+8h],ax
	jbe	6956h

l3CEE_692F:
	jmp	6943h
3CEE:6931    90                                            .              

l3CEE_6932:
	les	bx,[3A8Ah]
	les	bx,es:[bx]
	mov	si,[bp+6h]
	cmp	byte ptr es:[bx+si-1h],0Ah
	jz	6948h

l3CEE_6943:
	dec	word ptr [bp+6h]
	jnz	6932h

l3CEE_6948:
	les	bx,[3A8Ah]
	inc	word ptr es:[bx+3Ah]

l3CEE_6950:
	cmp	word ptr [bp+6h],0h
	jnz	6922h

l3CEE_6956:
	mov	ax,[bp+6h]
	pop	si
	mov	sp,bp
	pop	bp
	retf

;; fn3CEE_695E: 3CEE:695E
;;   Called from:
;;     3CEE:6E2E (in fn3CEE_6E24)
;;     3CEE:928A (in fn3CEE_4EAC)
;;     3CEE:92BA (in fn3CEE_4EAC)
fn3CEE_695E proc
	push	bp
	mov	bp,sp
	sub	sp,2h
	les	bx,[3A8Ah]
	mov	ax,[bp+6h]
	sub	ax,es:[bx+34h]
	mov	[bp-2h],ax
	push	ax
	push	word ptr es:[bx+38h]
	push	cs
	call	6886h
	mov	sp,bp
	pop	bp
	retf
3CEE:697F                                              90                .

;; fn3CEE_6980: 3CEE:6980
;;   Called from:
;;     3CEE:6D27 (in fn3CEE_6BCC)
;;     3CEE:6D45 (in fn3CEE_6BCC)
;;     3CEE:7362 (in fn3CEE_7332)
;;     3CEE:7439 (in fn3CEE_7332)
;;     3CEE:755A (in fn3CEE_74F0)
fn3CEE_6980 proc
	push	bp
	mov	bp,sp
	sub	sp,6h
	les	bx,[3A8Ah]
	mov	ax,es:[bx+16h]
	sub	ax,es:[bx+14h]
	cmp	ax,[bp+8h]
	jnc	6A11h

l3CEE_6997:
	cmp	word ptr [bp+8h],102h
	jbe	69A6h

l3CEE_699E:
	mov	ax,[bp+8h]
	add	ax,0FEh
	jmp	69A9h

l3CEE_69A6:
	mov	ax,200h

l3CEE_69A9:
	add	ax,es:[bx+16h]
	mov	[bp-6h],ax
	push	ax
	lea	ax,[bp-4h]
	push	ss
	push	ax
	call	far 21DCh:0696h
	add	sp,6h
	or	ax,ax
	jnz	69C5h

l3CEE_69C2:
	jmp	6A5Ah

l3CEE_69C5:
	les	bx,[3A8Ah]
	push	word ptr es:[bx+14h]
	push	word ptr es:[bx+2h]
	push	word ptr es:[bx]
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	call	far 2017h:0258h
	add	sp,0Ah
	les	bx,[3A8Ah]
	push	word ptr es:[bx+16h]
	push	word ptr es:[bx+2h]
	push	word ptr es:[bx]
	call	far 21DCh:074Eh
	add	sp,6h
	les	bx,[3A8Ah]
	mov	ax,[bp-4h]
	mov	dx,[bp-2h]
	mov	es:[bx],ax
	mov	es:[bx+2h],dx
	mov	ax,[bp-6h]
	mov	es:[bx+16h],ax

l3CEE_6A11:
	mov	ax,es:[bx+14h]
	sub	ax,[bp+6h]
	push	ax
	mov	ax,[bp+6h]
	add	ax,es:[bx]
	mov	dx,es:[bx+2h]
	push	dx
	push	ax
	mov	ax,[bp+6h]
	add	ax,[bp+8h]
	add	ax,es:[bx]
	push	dx
	push	ax
	call	far 2017h:0258h
	add	sp,0Ah
	les	bx,[3A8Ah]
	mov	ax,[bp+8h]
	add	es:[bx+14h],ax
	mov	ax,[bp+6h]
	cmp	es:[bx+36h],ax
	jbe	6A53h

l3CEE_6A4C:
	mov	ax,[bp+8h]
	add	es:[bx+36h],ax

l3CEE_6A53:
	mov	ax,1h
	mov	sp,bp
	pop	bp
	retf

l3CEE_6A5A:
	les	bx,[3A8Ah]
	mov	word ptr es:[bx+0Eh],1h
	sub	ax,ax
	mov	sp,bp
	pop	bp
	retf

;; fn3CEE_6A6A: 3CEE:6A6A
;;   Called from:
;;     3CEE:6CDA (in fn3CEE_6BCC)
;;     3CEE:6CEF (in fn3CEE_6BCC)
;;     3CEE:738F (in fn3CEE_7332)
;;     3CEE:7460 (in fn3CEE_7332)
;;     3CEE:841A (in fn3CEE_838A)
;;     3CEE:8498 (in fn3CEE_845E)
fn3CEE_6A6A proc
	push	bp
	mov	bp,sp
	les	bx,[3A8Ah]
	mov	ax,es:[bx+14h]
	sub	ax,[bp+6h]
	sub	ax,[bp+8h]
	push	ax
	mov	ax,[bp+6h]
	add	ax,[bp+8h]
	add	ax,es:[bx]
	mov	dx,es:[bx+2h]
	push	dx
	push	ax
	mov	ax,[bp+6h]
	add	ax,es:[bx]
	push	dx
	push	ax
	call	far 2017h:0258h
	add	sp,0Ah
	les	bx,[3A8Ah]
	mov	ax,[bp+8h]
	sub	es:[bx+14h],ax
	mov	ax,[bp+6h]
	cmp	es:[bx+36h],ax
	jbe	6AB6h

l3CEE_6AAF:
	mov	ax,[bp+8h]
	sub	es:[bx+36h],ax

l3CEE_6AB6:
	pop	bp
	retf

;; fn3CEE_6AB8: 3CEE:6AB8
;;   Called from:
;;     3CEE:7D84 (in fn3CEE_7D22)
;;     3CEE:7F24 (in fn3CEE_7EF0)
;;     3CEE:7F70 (in fn3CEE_7F2A)
;;     3CEE:809F (in fn3CEE_8070)
;;     3CEE:84A9 (in fn3CEE_845E)
;;     3CEE:92D5 (in fn3CEE_4EAC)
fn3CEE_6AB8 proc
	push	bp
	mov	bp,sp
	sub	sp,6h
	push	si
	sub	ax,ax
	push	ax
	les	bx,[3A8Ah]
	push	word ptr es:[bx+36h]
	push	cs
	call	6886h
	add	sp,4h
	les	bx,[3A8Ah]
	mov	es:[bx+38h],ax
	mov	es:[bx+36h],ax
	mov	word ptr [bp-6h],0h
	jmp	6B49h

l3CEE_6AE4:
	mov	bx,es:[bx+36h]
	mov	si,[3A8Ah]
	les	si,es:[si]
	mov	al,es:[bx+si]
	mov	[bp-4h],al
	sub	ah,ah
	cmp	ax,9h
	jz	6B26h

l3CEE_6AFC:
	cmp	ax,0Dh
	jz	6B18h

l3CEE_6B01:
	cmp	ax,1Ah
	jz	6B18h

l3CEE_6B06:
	cmp	ax,8Dh
	jz	6B18h

l3CEE_6B0B:
	les	bx,[3A8Ah]
	inc	word ptr es:[bx+36h]
	inc	word ptr [bp-6h]
	jmp	6B49h

l3CEE_6B18:
	les	bx,[3A8Ah]
	mov	ax,es:[bx+30h]
	mov	[bp-6h],ax
	jmp	6B49h
3CEE:6B25                90                                    .          

l3CEE_6B26:
	mov	ax,[bp-6h]
	sub	dx,dx
	les	bx,[3A8Ah]
	div	word ptr es:[bx+18h]
	mov	ax,es:[bx+18h]
	sub	ax,dx
	add	ax,[bp-6h]
	mov	[bp-6h],ax
	cmp	es:[bx+30h],ax
	jl	6B49h

l3CEE_6B45:
	inc	word ptr es:[bx+36h]

l3CEE_6B49:
	mov	ax,[bp-6h]
	cmp	es:[bx+30h],ax
	jg	6AE4h

l3CEE_6B52:
	pop	si
	mov	sp,bp
	pop	bp
	retf
3CEE:6B57                      90                                .        

;; fn3CEE_6B58: 3CEE:6B58
;;   Called from:
;;     3CEE:6D7F (in fn3CEE_6BCC)
;;     3CEE:7344 (in fn3CEE_7332)
;;     3CEE:7AB6 (in fn3CEE_7AAB)
;;     3CEE:7BEB (in fn3CEE_7AD2)
;;     3CEE:7D6E (in fn3CEE_7D22)
;;     3CEE:7D88 (in fn3CEE_7D22)
;;     3CEE:7F74 (in fn3CEE_7F2A)
;;     3CEE:8421 (in fn3CEE_838A)
fn3CEE_6B58 proc
	push	bp
	mov	bp,sp
	sub	sp,2h
	push	si
	sub	ax,ax
	push	ax
	les	bx,[3A8Ah]
	push	word ptr es:[bx+36h]
	push	cs
	call	6886h
	add	sp,4h
	les	bx,[3A8Ah]
	mov	es:[bx+38h],ax
	mov	[bp-2h],ax
	mov	word ptr es:[bx+30h],0h
	jmp	6BBEh

l3CEE_6B84:
	mov	bx,[bp-2h]
	inc	word ptr [bp-2h]
	mov	si,[3A8Ah]
	les	si,es:[si]
	cmp	byte ptr es:[bx+si],9h
	jnz	6BB6h

l3CEE_6B97:
	les	bx,[3A8Ah]
	mov	ax,es:[bx+30h]
	sub	dx,dx
	div	word ptr es:[bx+18h]
	mov	ax,es:[bx+30h]
	sub	ax,dx
	add	ax,es:[bx+18h]
	mov	es:[bx+30h],ax
	jmp	6BBEh
3CEE:6BB5                90                                    .          

l3CEE_6BB6:
	les	bx,[3A8Ah]
	inc	word ptr es:[bx+30h]

l3CEE_6BBE:
	mov	ax,[bp-2h]
	cmp	es:[bx+36h],ax
	ja	6B84h

l3CEE_6BC7:
	pop	si
	mov	sp,bp
	pop	bp
	retf

;; fn3CEE_6BCC: 3CEE:6BCC
;;   Called from:
;;     3CEE:72B7 (in fn3CEE_72A2)
;;     3CEE:923C (in fn3CEE_4EAC)
fn3CEE_6BCC proc
	push	bp
	mov	bp,sp
	sub	sp,10h
	push	si
	jmp	6D92h

l3CEE_6BD6:
	cmp	byte ptr [bp-2h],1Ah
	jnz	6BDFh

l3CEE_6BDC:
	jmp	6DA9h

l3CEE_6BDF:
	les	bx,[3A8Ah]
	cmp	word ptr es:[bx+0Eh],0h
	jz	6BEDh

l3CEE_6BEA:
	jmp	6DA9h

l3CEE_6BED:
	mov	word ptr [bp-0Eh],0h
	mov	word ptr [bp-6h],0h
	mov	word ptr [bp-0Ch],0h
	mov	ax,[bp+6h]
	add	ax,es:[bx]
	mov	dx,es:[bx+2h]
	mov	[bp-0Ah],ax
	mov	[bp-8h],dx
	mov	word ptr [bp-4h],1h

l3CEE_6C11:
	les	bx,[3A8Ah]
	cmp	word ptr es:[bx+0Eh],0h
	jz	6C1Fh

l3CEE_6C1C:
	jmp	6D8Ch

l3CEE_6C1F:
	mov	bx,[bp-0Ch]
	les	si,[bp-0Ah]
	mov	al,es:[bx+si]
	mov	[bp-2h],al
	sub	ah,ah
	cmp	ax,9h
	jz	6C78h

l3CEE_6C32:
	cmp	ax,0Dh
	jz	6C4Ch

l3CEE_6C37:
	cmp	ax,1Ah
	jz	6C4Ch

l3CEE_6C3C:
	cmp	ax,20h
	jnz	6C44h

l3CEE_6C41:
	jmp	6D00h

l3CEE_6C44:
	cmp	ax,8Dh
	jz	6C9Ch

l3CEE_6C49:
	jmp	6D05h

l3CEE_6C4C:
	mov	word ptr [bp-4h],0h

l3CEE_6C51:
	les	bx,[3A8Ah]
	mov	ax,es:[bx+12h]
	cmp	[bp-0Eh],ax
	ja	6C61h

l3CEE_6C5E:
	jmp	6D83h

l3CEE_6C61:
	mov	word ptr [bp-4h],0h
	cmp	word ptr [bp-6h],0h
	jnz	6C6Fh

l3CEE_6C6C:
	jmp	6D0Eh

l3CEE_6C6F:
	mov	ax,[bp-6h]
	mov	[bp-0Ch],ax
	jmp	6D11h

l3CEE_6C78:
	mov	ax,[bp-0Ch]
	mov	[bp-6h],ax
	mov	ax,[bp-0Eh]
	sub	dx,dx
	les	bx,[3A8Ah]
	div	word ptr es:[bx+18h]
	mov	ax,es:[bx+18h]
	sub	ax,dx
	add	ax,[bp-0Eh]
	mov	[bp-0Eh],ax
	inc	word ptr [bp-0Ch]
	jmp	6C51h

l3CEE_6C9C:
	mov	ax,[bp+6h]
	add	ax,[bp-0Ch]
	les	bx,[3A8Ah]
	cmp	ax,es:[bx+36h]
	jnc	6CB4h

l3CEE_6CAC:
	dec	word ptr es:[bx+34h]
	dec	word ptr es:[bx+2Eh]

l3CEE_6CB4:
	cmp	word ptr [bp-0Ch],0h
	jz	6CCFh

l3CEE_6CBA:
	mov	si,[bp-0Ch]
	les	bx,[bp-0Ah]
	mov	al,es:[bx+si-1h]
	mov	[bp-10h],al
	cmp	al,20h
	jz	6CCFh

l3CEE_6CCB:
	cmp	al,9h
	jnz	6CE4h

l3CEE_6CCF:
	mov	ax,2h
	push	ax
	mov	ax,[bp+6h]
	add	ax,[bp-0Ch]
	push	ax
	push	cs
	call	6A6Ah
	add	sp,4h
	jmp	6C51h

l3CEE_6CE4:
	mov	ax,1h
	push	ax
	mov	ax,[bp+6h]
	add	ax,[bp-0Ch]
	push	ax
	push	cs
	call	6A6Ah
	add	sp,4h
	mov	bx,[bp-0Ch]
	les	si,[bp-0Ah]
	mov	byte ptr es:[bx+si],20h

l3CEE_6D00:
	mov	ax,bx
	mov	[bp-6h],ax

l3CEE_6D05:
	inc	word ptr [bp-0Ch]
	inc	word ptr [bp-0Eh]
	jmp	6C51h

l3CEE_6D0E:
	dec	word ptr [bp-0Ch]

l3CEE_6D11:
	mov	bx,[bp-0Ch]
	les	si,[bp-0Ah]
	cmp	byte ptr es:[bx+si],20h
	jnz	6D3Ah

l3CEE_6D1D:
	mov	ax,1h
	push	ax
	mov	ax,[bp+6h]
	add	ax,bx
	push	ax
	push	cs
	call	6980h
	add	sp,4h
	or	ax,ax
	jnz	6D50h

l3CEE_6D32:
	sub	ax,ax
	pop	si
	mov	sp,bp
	pop	bp
	retf
3CEE:6D39                            90                            .      

l3CEE_6D3A:
	mov	ax,2h
	push	ax
	mov	ax,[bp+6h]
	add	ax,[bp-0Ch]
	push	ax
	push	cs
	call	6980h
	add	sp,4h
	or	ax,ax
	jz	6D32h

l3CEE_6D50:
	mov	bx,[bp-0Ch]
	inc	word ptr [bp-0Ch]
	les	si,[bp-0Ah]
	mov	byte ptr es:[bx+si],8Dh
	mov	bx,[bp-0Ch]
	inc	word ptr [bp-0Ch]
	mov	byte ptr es:[bx+si],0Ah
	mov	ax,[bp+6h]
	add	ax,[bp-0Ch]
	les	bx,[3A8Ah]
	cmp	ax,es:[bx+36h]
	ja	6D83h

l3CEE_6D77:
	inc	word ptr es:[bx+34h]
	inc	word ptr es:[bx+2Eh]
	push	cs
	call	6B58h

l3CEE_6D83:
	cmp	word ptr [bp-4h],0h
	jz	6D8Ch

l3CEE_6D89:
	jmp	6C11h

l3CEE_6D8C:
	mov	ax,[bp-0Ch]
	add	[bp+6h],ax

l3CEE_6D92:
	mov	bx,[bp+6h]
	les	si,[3A8Ah]
	les	si,es:[si]
	mov	al,es:[bx+si]
	mov	[bp-2h],al
	cmp	al,0Dh
	jz	6DA9h

l3CEE_6DA6:
	jmp	6BD6h

l3CEE_6DA9:
	cmp	byte ptr [bp-2h],0Dh
	jnz	6DB3h

l3CEE_6DAF:
	add	word ptr [bp+6h],2h

l3CEE_6DB3:
	mov	ax,[bp+6h]
	pop	si
	mov	sp,bp
	pop	bp
	retf
3CEE:6DBB                                  90                        .    

;; fn3CEE_6DBC: 3CEE:6DBC
;;   Called from:
;;     3CEE:6F76 (in fn3CEE_6E24)
fn3CEE_6DBC proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	les	bx,[3A8Ah]
	mov	ax,es:[bx+28h]
	imul	word ptr [bp+6h]
	add	ax,es:[bx+2Ah]
	mov	dx,es:[bx+2Ch]
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	jmp	6E16h
3CEE:6DDD                                        90                    .  

l3CEE_6DDE:
	push	word ptr es:[bx+20h]
	mov	ax,es:[bx+1Eh]
	add	ax,[bp+6h]
	push	ax
	call	far 1F38h:04E7h
	add	sp,4h
	les	bx,[3A8Ah]
	push	word ptr es:[bx+28h]
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	call	far 1F38h:049Fh
	add	sp,6h
	les	bx,[3A8Ah]
	mov	ax,es:[bx+28h]
	add	[bp-4h],ax
	inc	word ptr [bp+6h]

l3CEE_6E16:
	mov	ax,[bp+6h]
	cmp	es:[bx+26h],ax
	jg	6DDEh

l3CEE_6E1F:
	mov	sp,bp
	pop	bp
	retf
3CEE:6E23          90                                        .            

;; fn3CEE_6E24: 3CEE:6E24
;;   Called from:
;;     3CEE:7231 (in fn3CEE_71E4)
;;     3CEE:7299 (in fn3CEE_723A)
;;     3CEE:7326 (in fn3CEE_72A2)
;;     3CEE:7D16 (in fn3CEE_7CBC)
;;     3CEE:7DE8 (in fn3CEE_7D22)
;;     3CEE:834E (in fn3CEE_8634)
;;     3CEE:84E3 (in fn3CEE_845E)
;;     3CEE:8A0D (in fn3CEE_89FD)
fn3CEE_6E24 proc
	push	bp
	mov	bp,sp
	sub	sp,12h
	push	si
	push	word ptr [bp+8h]
	push	cs
	call	695Eh
	add	sp,2h
	mov	[bp-6h],ax
	les	bx,[3A8Ah]
	mov	ax,es:[bx+28h]
	imul	word ptr [bp+6h]
	add	ax,es:[bx+2Ah]
	mov	dx,es:[bx+2Ch]
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	mov	ax,es:[bx+26h]
	sub	ax,[bp+6h]
	imul	word ptr es:[bx+28h]
	push	ax
	mov	ax,20h
	push	ax
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	call	far 2017h:0228h
	add	sp,8h
	mov	ax,[bp+6h]
	mov	[bp-0Eh],ax
	jmp	6F63h

l3CEE_6E78:
	mov	bx,[bp-6h]
	les	si,[3A8Ah]
	les	si,es:[si]
	cmp	byte ptr es:[bx+si],1Ah
	jnz	6E8Bh

l3CEE_6E88:
	jmp	6F73h

l3CEE_6E8B:
	mov	word ptr [bp-12h],0h
	mov	word ptr [bp-10h],0h
	mov	word ptr [bp-0Ch],1h

l3CEE_6E9A:
	cmp	word ptr [bp-0Ch],0h
	jnz	6EA3h

l3CEE_6EA0:
	jmp	6F44h

l3CEE_6EA3:
	mov	bx,[bp-6h]
	les	si,[3A8Ah]
	les	si,es:[si]
	mov	al,es:[bx+si]
	mov	[bp-0Ah],al
	sub	ah,ah
	cmp	ax,9h
	jz	6F08h

l3CEE_6EBA:
	cmp	ax,0Dh
	jz	6EEEh

l3CEE_6EBF:
	cmp	ax,1Ah
	jz	6EEEh

l3CEE_6EC4:
	cmp	ax,8Dh
	jz	6EEEh

l3CEE_6EC9:
	les	bx,[3A8Ah]
	mov	ax,[bp-12h]
	cmp	es:[bx+32h],ax
	jg	6EE5h

l3CEE_6ED6:
	mov	bx,[bp-10h]
	inc	word ptr [bp-10h]
	les	si,[bp-4h]
	mov	al,[bp-0Ah]
	mov	es:[bx+si],al

l3CEE_6EE5:
	inc	word ptr [bp-6h]
	inc	word ptr [bp-12h]
	jmp	6EF3h
3CEE:6EED                                        90                    .  

l3CEE_6EEE:
	mov	word ptr [bp-0Ch],0h

l3CEE_6EF3:
	les	bx,[3A8Ah]
	mov	ax,[bp-10h]
	cmp	es:[bx+28h],ax
	ja	6E9Ah

l3CEE_6F00:
	mov	word ptr [bp-0Ch],0h
	jmp	6E9Ah
3CEE:6F07                      90                                .        

l3CEE_6F08:
	mov	ax,[bp-12h]
	sub	dx,dx
	les	bx,[3A8Ah]
	div	word ptr es:[bx+18h]
	mov	ax,es:[bx+18h]
	sub	ax,dx
	add	ax,[bp-12h]
	mov	[bp-8h],ax
	cmp	es:[bx+32h],ax
	jge	6F38h

l3CEE_6F27:
	mov	cx,es:[bx+32h]
	cmp	cx,[bp-12h]
	jge	6F33h

l3CEE_6F30:
	mov	cx,[bp-12h]

l3CEE_6F33:
	sub	ax,cx
	add	[bp-10h],ax

l3CEE_6F38:
	mov	ax,[bp-8h]
	mov	[bp-12h],ax
	inc	word ptr [bp-6h]
	jmp	6EF3h
3CEE:6F43          90                                        .            

l3CEE_6F44:
	mov	ax,1h
	push	ax
	push	word ptr [bp-6h]
	push	cs
	call	6886h
	add	sp,4h
	mov	[bp-6h],ax
	les	bx,[3A8Ah]
	mov	ax,es:[bx+28h]
	add	[bp-4h],ax
	inc	word ptr [bp-0Eh]

l3CEE_6F63:
	les	bx,[3A8Ah]
	mov	ax,[bp-0Eh]
	cmp	es:[bx+26h],ax
	jle	6F73h

l3CEE_6F70:
	jmp	6E78h

l3CEE_6F73:
	push	word ptr [bp+6h]
	push	cs
	call	6DBCh
	add	sp,2h
	pop	si
	mov	sp,bp
	pop	bp
	retf

;; fn3CEE_6F82: 3CEE:6F82
;;   Called from:
;;     3CEE:75DC (in fn3CEE_74F0)
;;     3CEE:8064 (in fn3CEE_8634)
;;     3CEE:810B (in fn3CEE_8070)
;;     3CEE:8452 (in fn3CEE_838A)
fn3CEE_6F82 proc
	push	bp
	mov	bp,sp
	sub	sp,10h
	push	si
	mov	ax,[bp+8h]
	les	bx,[3A8Ah]
	sub	ax,es:[bx+32h]
	jns	6F98h

l3CEE_6F96:
	sub	ax,ax

l3CEE_6F98:
	mov	[bp-4h],ax
	mov	ax,es:[bx+28h]
	sub	ax,[bp-4h]
	mov	[bp-10h],ax
	mov	ax,es:[bx+28h]
	imul	word ptr [bp+6h]
	add	ax,es:[bx+2Ah]
	mov	dx,es:[bx+2Ch]
	add	ax,[bp-4h]
	mov	[bp-0Ah],ax
	mov	[bp-8h],dx
	push	word ptr [bp-10h]
	mov	ax,20h
	push	ax
	push	dx
	push	word ptr [bp-0Ah]
	call	far 2017h:0228h
	add	sp,8h
	mov	word ptr [bp-0Eh],0h
	mov	word ptr [bp-0Ch],1h

l3CEE_6FDA:
	cmp	word ptr [bp-0Ch],0h
	jnz	6FE3h

l3CEE_6FE0:
	jmp	707Eh

l3CEE_6FE3:
	mov	bx,[bp+0Ah]
	les	si,[3A8Ah]
	les	si,es:[si]
	mov	al,es:[bx+si]
	mov	[bp-6h],al
	sub	ah,ah
	cmp	ax,9h
	jz	7042h

l3CEE_6FFA:
	cmp	ax,0Dh
	jz	702Eh

l3CEE_6FFF:
	cmp	ax,1Ah
	jz	702Eh

l3CEE_7004:
	cmp	ax,8Dh
	jz	702Eh

l3CEE_7009:
	les	bx,[3A8Ah]
	mov	ax,[bp+8h]
	cmp	es:[bx+32h],ax
	jg	7025h

l3CEE_7016:
	mov	bx,[bp-0Eh]
	inc	word ptr [bp-0Eh]
	les	si,[bp-0Ah]
	mov	al,[bp-6h]
	mov	es:[bx+si],al

l3CEE_7025:
	inc	word ptr [bp+0Ah]
	inc	word ptr [bp+8h]
	jmp	7033h
3CEE:702D                                        90                    .  

l3CEE_702E:
	mov	word ptr [bp-0Ch],0h

l3CEE_7033:
	mov	ax,[bp-10h]
	cmp	[bp-0Eh],ax
	jc	6FDAh

l3CEE_703B:
	mov	word ptr [bp-0Ch],0h
	jmp	6FDAh

l3CEE_7042:
	mov	ax,[bp+8h]
	sub	dx,dx
	les	bx,[3A8Ah]
	div	word ptr es:[bx+18h]
	mov	ax,es:[bx+18h]
	sub	ax,dx
	add	ax,[bp+8h]
	mov	[bp-2h],ax
	cmp	es:[bx+32h],ax
	jge	7072h

l3CEE_7061:
	mov	cx,es:[bx+32h]
	cmp	cx,[bp+8h]
	jge	706Dh

l3CEE_706A:
	mov	cx,[bp+8h]

l3CEE_706D:
	sub	ax,cx
	add	[bp-0Eh],ax

l3CEE_7072:
	mov	ax,[bp-2h]
	mov	[bp+8h],ax
	inc	word ptr [bp+0Ah]
	jmp	7033h
3CEE:707D                                        90                    .  

l3CEE_707E:
	les	bx,[3A8Ah]
	mov	ax,es:[bx+20h]
	add	ax,[bp-4h]
	push	ax
	mov	ax,es:[bx+1Eh]
	add	ax,[bp+6h]
	push	ax
	call	far 1F38h:04E7h
	add	sp,4h
	push	word ptr [bp-10h]
	push	word ptr [bp-8h]
	push	word ptr [bp-0Ah]
	call	far 1F38h:049Fh
	add	sp,6h
	pop	si
	mov	sp,bp
	pop	bp
	retf

;; fn3CEE_70B0: 3CEE:70B0
;;   Called from:
;;     3CEE:7303 (in fn3CEE_72A2)
;;     3CEE:803F (in fn3CEE_8634)
;;     3CEE:80C9 (in fn3CEE_8070)
;;     3CEE:84C4 (in fn3CEE_845E)
fn3CEE_70B0 proc
	push	bp
	mov	bp,sp
	sub	sp,2h
	cmp	word ptr [bp+8h],0h
	jge	70C4h

l3CEE_70BC:
	mov	ax,[bp+8h]
	neg	ax
	jmp	70C7h
3CEE:70C3          90                                        .            

l3CEE_70C4:
	mov	ax,[bp+8h]

l3CEE_70C7:
	mov	[bp-2h],ax
	cmp	word ptr [bp+8h],0h
	jle	7100h

l3CEE_70D0:
	les	bx,[3A8Ah]
	mov	ax,es:[bx+26h]
	sub	ax,[bp+6h]
	sub	ax,[bp-2h]
	mul	word ptr es:[bx+28h]
	push	ax
	mov	ax,[bp+6h]
	add	ax,[bp-2h]
	mul	word ptr es:[bx+28h]
	add	ax,es:[bx+2Ah]
	mov	dx,es:[bx+2Ch]
	push	dx
	push	ax
	mov	ax,es:[bx+28h]
	imul	word ptr [bp+6h]
	jmp	7134h

l3CEE_7100:
	cmp	word ptr [bp+8h],0h
	jge	7146h

l3CEE_7106:
	les	bx,[3A8Ah]
	mov	ax,es:[bx+26h]
	sub	ax,[bp+6h]
	sub	ax,[bp-2h]
	mul	word ptr es:[bx+28h]
	push	ax
	mov	ax,es:[bx+28h]
	imul	word ptr [bp+6h]
	add	ax,es:[bx+2Ah]
	mov	dx,es:[bx+2Ch]
	push	dx
	push	ax
	mov	ax,[bp+6h]
	add	ax,[bp-2h]
	mul	word ptr es:[bx+28h]

l3CEE_7134:
	add	ax,es:[bx+2Ah]
	mov	dx,es:[bx+2Ch]
	push	dx
	push	ax
	call	far 2017h:0258h
	add	sp,0Ah

l3CEE_7146:
	push	word ptr [bp+8h]
	les	bx,[3A8Ah]
	push	word ptr es:[bx+24h]
	push	word ptr es:[bx+22h]
	push	word ptr es:[bx+20h]
	mov	ax,es:[bx+1Eh]
	add	ax,[bp+6h]
	push	ax
	call	far 1F38h:055Eh
	mov	sp,bp
	pop	bp
	retf

;; fn3CEE_716A: 3CEE:716A
;;   Called from:
;;     3CEE:7595 (in fn3CEE_74F0)
;;     3CEE:832E (in fn3CEE_8634)
fn3CEE_716A proc
	push	bp
	mov	bp,sp
	sub	sp,8h
	push	si
	les	bx,[3A8Ah]
	mov	ax,es:[bx+38h]
	mov	[bp-2h],ax
	mov	word ptr [bp-8h],0h
	mov	word ptr [bp-6h],1h

l3CEE_7186:
	mov	bx,[bp-2h]
	inc	word ptr [bp-2h]
	les	si,[3A8Ah]
	les	si,es:[si]
	mov	al,es:[bx+si]
	mov	[bp-4h],al
	sub	ah,ah
	cmp	ax,9h
	jz	71BCh

l3CEE_71A0:
	cmp	ax,0Dh
	jz	71B4h

l3CEE_71A5:
	cmp	ax,1Ah
	jz	71B4h

l3CEE_71AA:
	cmp	ax,8Dh
	jz	71B4h

l3CEE_71AF:
	inc	word ptr [bp-8h]
	jmp	71D5h

l3CEE_71B4:
	mov	word ptr [bp-6h],0h
	jmp	71D5h
3CEE:71BB                                  90                        .    

l3CEE_71BC:
	mov	ax,[bp-8h]
	sub	dx,dx
	les	bx,[3A8Ah]
	div	word ptr es:[bx+18h]
	mov	ax,es:[bx+18h]
	sub	ax,dx
	add	ax,[bp-8h]
	mov	[bp-8h],ax

l3CEE_71D5:
	cmp	word ptr [bp-6h],0h
	jnz	7186h

l3CEE_71DB:
	mov	ax,[bp-8h]
	pop	si
	mov	sp,bp
	pop	bp
	retf
3CEE:71E3          90                                        .            

;; fn3CEE_71E4: 3CEE:71E4
;;   Called from:
;;     3CEE:72D0 (in fn3CEE_72A2)
;;     3CEE:75BE (in fn3CEE_74F0)
;;     3CEE:7C1E (in fn3CEE_7AD2)
;;     3CEE:7DCE (in fn3CEE_7D22)
fn3CEE_71E4 proc
	jmp	7200h

l3CEE_71E6:
	les	bx,[3A8Ah]
	mov	ax,es:[bx+28h]
	cwd
	mov	cx,0Ah
	idiv	cx
	cmp	ax,1h
	jge	71FCh

l3CEE_71F9:
	mov	ax,1h

l3CEE_71FC:
	add	es:[bx+32h],ax

l3CEE_7200:
	les	bx,[3A8Ah]
	mov	ax,es:[bx+30h]
	sub	ax,es:[bx+32h]
	cmp	ax,es:[bx+28h]
	jge	71E6h

l3CEE_7212:
	mov	ax,es:[bx+26h]
	dec	ax
	cmp	ax,es:[bx+2Eh]
	jle	7221h

l3CEE_721D:
	mov	ax,es:[bx+2Eh]

l3CEE_7221:
	mov	es:[bx+2Eh],ax
	mov	ax,es:[bx+34h]
	sub	ax,es:[bx+2Eh]
	push	ax
	sub	ax,ax
	push	ax
	push	cs
	call	6E24h
	add	sp,4h
	retf
3CEE:7239                            90                            .      

;; fn3CEE_723A: 3CEE:723A
;;   Called from:
;;     3CEE:72E6 (in fn3CEE_72A2)
;;     3CEE:7AC8 (in fn3CEE_7AAB)
;;     3CEE:8439 (in fn3CEE_838A)
fn3CEE_723A proc
	jmp	726Ch

l3CEE_723C:
	les	bx,[3A8Ah]
	mov	ax,es:[bx+28h]
	cwd
	mov	cx,0Ah
	idiv	cx
	cmp	ax,1h
	jge	7254h

l3CEE_724F:
	mov	ax,1h
	jmp	7268h

l3CEE_7254:
	mov	ax,es:[bx+28h]
	cwd
	mov	cx,0Ah
	idiv	cx
	cmp	ax,es:[bx+32h]
	jle	7268h

l3CEE_7264:
	mov	ax,es:[bx+32h]

l3CEE_7268:
	sub	es:[bx+32h],ax

l3CEE_726C:
	les	bx,[3A8Ah]
	mov	ax,es:[bx+32h]
	cmp	es:[bx+30h],ax
	jl	723Ch

l3CEE_727A:
	mov	ax,es:[bx+26h]
	dec	ax
	cmp	ax,es:[bx+2Eh]
	jle	7289h

l3CEE_7285:
	mov	ax,es:[bx+2Eh]

l3CEE_7289:
	mov	es:[bx+2Eh],ax
	mov	ax,es:[bx+34h]
	sub	ax,es:[bx+2Eh]
	push	ax
	sub	ax,ax
	push	ax
	push	cs
	call	6E24h
	add	sp,4h
	retf
3CEE:72A1    90                                            .              

;; fn3CEE_72A2: 3CEE:72A2
;;   Called from:
;;     3CEE:75A3 (in fn3CEE_74F0)
;;     3CEE:833C (in fn3CEE_8634)
fn3CEE_72A2 proc
	push	bp
	mov	bp,sp
	sub	sp,2h
	les	bx,[3A8Ah]
	mov	ax,es:[bx+34h]
	mov	[bp-2h],ax
	push	word ptr es:[bx+38h]
	push	cs
	call	6BCCh
	add	sp,2h
	les	bx,[3A8Ah]
	mov	ax,es:[bx+30h]
	sub	ax,es:[bx+32h]
	cmp	ax,es:[bx+28h]
	jl	72D8h

l3CEE_72D0:
	push	cs
	call	71E4h
	mov	sp,bp
	pop	bp
	retf

l3CEE_72D8:
	les	bx,[3A8Ah]
	mov	ax,es:[bx+32h]
	cmp	es:[bx+30h],ax
	jge	72EEh

l3CEE_72E6:
	push	cs
	call	723Ah
	mov	sp,bp
	pop	bp
	retf

l3CEE_72EE:
	les	bx,[3A8Ah]
	mov	ax,es:[bx+26h]
	cmp	es:[bx+2Eh],ax
	jl	7317h

l3CEE_72FC:
	mov	ax,1h
	push	ax
	sub	ax,ax
	push	ax
	push	cs
	call	70B0h
	add	sp,4h
	les	bx,[3A8Ah]
	mov	ax,es:[bx+26h]
	dec	ax
	mov	es:[bx+2Eh],ax

l3CEE_7317:
	push	word ptr [bp-2h]
	mov	ax,es:[bx+2Eh]
	sub	ax,es:[bx+34h]
	add	ax,[bp-2h]
	push	ax
	push	cs
	call	6E24h
	add	sp,4h
	mov	sp,bp
	pop	bp
	retf
3CEE:7331    90                                            .              

;; fn3CEE_7332: 3CEE:7332
;;   Called from:
;;     3CEE:752D (in fn3CEE_74F0)
fn3CEE_7332 proc
	push	bp
	mov	bp,sp
	sub	sp,8h
	push	si
	les	bx,[3A8Ah]
	mov	ax,es:[bx+30h]
	mov	[bp-8h],ax
	push	cs
	call	6B58h
	les	bx,[3A8Ah]
	mov	ax,[bp-8h]
	cmp	es:[bx+30h],ax
	jnz	739Ah

l3CEE_7355:
	cmp	word ptr [bp+6h],0h
	jle	7378h

l3CEE_735B:
	push	word ptr [bp+6h]
	push	word ptr es:[bx+36h]
	push	cs
	call	6980h
	add	sp,4h
	or	ax,ax
	jz	7370h

l3CEE_736D:
	jmp	74AFh

l3CEE_7370:
	sub	ax,ax
	pop	si
	mov	sp,bp
	pop	bp
	retf
3CEE:7377                      90                                .        

l3CEE_7378:
	cmp	word ptr [bp+6h],0h
	jl	7381h

l3CEE_737E:
	jmp	74AFh

l3CEE_7381:
	mov	ax,[bp+6h]
	neg	ax
	push	ax
	les	bx,[3A8Ah]
	push	word ptr es:[bx+36h]
	push	cs
	call	6A6Ah
	add	sp,4h
	jmp	74AFh
3CEE:7399                            90                            .      

l3CEE_739A:
	mov	word ptr [bp-6h],0h
	les	bx,[3A8Ah]
	cmp	word ptr es:[bx+0Ah],0h
	jz	741Eh

l3CEE_73AA:
	mov	ax,[bp-8h]
	sub	dx,dx
	div	word ptr es:[bx+18h]
	or	dx,dx
	jz	73EAh

l3CEE_73B7:
	cmp	word ptr [bp-8h],0h
	jz	73E6h

l3CEE_73BD:
	mov	ax,[bp-8h]
	sub	dx,dx
	div	word ptr es:[bx+18h]
	or	dx,dx
	jz	73D8h

l3CEE_73CA:
	mov	ax,[bp-8h]
	sub	dx,dx
	div	word ptr es:[bx+18h]
	mov	ax,dx
	jmp	73DCh
3CEE:73D7                      90                                .        

l3CEE_73D8:
	mov	ax,es:[bx+18h]

l3CEE_73DC:
	mov	cx,ax
	mov	ax,[bp-8h]
	sub	ax,cx
	jmp	73EDh
3CEE:73E5                90                                    .          

l3CEE_73E6:
	sub	ax,ax
	jmp	73EDh

l3CEE_73EA:
	mov	ax,[bp-8h]

l3CEE_73ED:
	mov	[bp-2h],ax
	jmp	7411h

l3CEE_73F2:
	les	bx,[3A8Ah]
	mov	ax,es:[bx+30h]
	sub	dx,dx
	div	word ptr es:[bx+18h]
	mov	ax,es:[bx+30h]
	sub	ax,dx
	add	ax,es:[bx+18h]
	mov	es:[bx+30h],ax
	inc	word ptr [bp-6h]

l3CEE_7411:
	les	bx,[3A8Ah]
	mov	ax,[bp-2h]
	cmp	es:[bx+30h],ax
	jl	73F2h

l3CEE_741E:
	mov	ax,[bp-8h]
	sub	ax,es:[bx+30h]
	mov	[bp-4h],ax
	mov	si,ax
	add	si,[bp-6h]
	add	si,[bp+6h]
	or	si,si
	jle	7448h

l3CEE_7434:
	push	si
	push	word ptr es:[bx+36h]
	push	cs
	call	6980h
	add	sp,4h
	or	ax,ax
	jnz	7480h

l3CEE_7444:
	jmp	7370h
3CEE:7447                      90                                .        

l3CEE_7448:
	mov	si,[bp-4h]
	add	si,[bp-6h]
	add	si,[bp+6h]
	jns	7480h

l3CEE_7453:
	mov	ax,si
	neg	ax
	push	ax
	les	bx,[3A8Ah]
	push	word ptr es:[bx+36h]
	push	cs
	call	6A6Ah
	add	sp,4h
	jmp	7480h
3CEE:7469                            90                            .      

l3CEE_746A:
	les	si,[3A8Ah]
	mov	bx,es:[si+36h]
	inc	word ptr es:[si+36h]
	les	si,es:[si]
	mov	byte ptr es:[bx+si],9h
	dec	word ptr [bp-6h]

l3CEE_7480:
	cmp	word ptr [bp-6h],0h
	jnz	746Ah

l3CEE_7486:
	jmp	749Eh

l3CEE_7488:
	les	si,[3A8Ah]
	mov	bx,es:[si+36h]
	inc	word ptr es:[si+36h]
	les	si,es:[si]
	mov	byte ptr es:[bx+si],20h
	dec	word ptr [bp-4h]

l3CEE_749E:
	cmp	word ptr [bp-4h],0h
	jnz	7488h

l3CEE_74A4:
	les	bx,[3A8Ah]
	mov	ax,[bp-8h]
	mov	es:[bx+30h],ax

l3CEE_74AF:
	mov	ax,1h
	pop	si
	mov	sp,bp
	pop	bp
	retf
3CEE:74B7                      90                                .        

;; fn3CEE_74B8: 3CEE:74B8
;;   Called from:
;;     3CEE:866B (in fn3CEE_8634)
fn3CEE_74B8 proc
	push	bp
	mov	bp,sp
	sub	sp,2h
	push	si
	les	bx,[3A8Ah]
	mov	ax,es:[bx+12h]
	cmp	es:[bx+30h],ax
	jnz	74F0h

l3CEE_74CD:
	cmp	word ptr es:[bx+8h],0h
	jnz	74F0h

l3CEE_74D4:
	cmp	word ptr [2096h],0h
	jnz	74DEh

l3CEE_74DB:
	jmp	75E3h

l3CEE_74DE:
	mov	ax,1h
	push	ax
	mov	ax,3A8Eh
	push	ds
	push	ax
	call	far 1F38h:042Dh
	jmp	75E0h

l3CEE_74ED:
	icebp
	add	[bx+si+1EC4h],dl
3CEE:74EF                                              90                .

;; fn3CEE_74F0: 3CEE:74F0
;;   Called from:
;;     3CEE:74CB (in fn3CEE_74B8)
;;     3CEE:74D2 (in fn3CEE_74B8)
;;     3CEE:74DB (in fn3CEE_74B8)
;;     3CEE:74EC (in fn3CEE_74B8)
fn3CEE_74F0 proc
	les	bx,[3A8Ah]
	mov	bx,es:[bx+36h]
	mov	si,[3A8Ah]
	les	si,es:[si]
	mov	al,es:[bx+si]
	mov	[bp-2h],al
	cmp	al,9h
	jnz	7536h

l3CEE_7509:
	cmp	word ptr [20AEh],0h
	jnz	7529h

l3CEE_7510:
	les	bx,[3A8Ah]
	mov	ax,es:[bx+30h]
	sub	dx,dx
	div	word ptr es:[bx+18h]
	mov	ax,es:[bx+18h]
	sub	ax,dx
	cmp	ax,1h
	jbe	7561h

l3CEE_7529:
	mov	ax,1h
	push	ax
	push	cs
	call	7332h
	add	sp,2h
	jmp	7561h

l3CEE_7536:
	mov	al,[bp-2h]
	sub	ah,ah
	push	ax
	push	cs
	call	6868h
	add	sp,2h
	or	ax,ax
	jnz	7529h

l3CEE_7547:
	cmp	word ptr [20AEh],0h
	jz	7561h

l3CEE_754E:
	mov	ax,1h
	push	ax
	les	bx,[3A8Ah]
	push	word ptr es:[bx+36h]
	push	cs
	call	6980h
	add	sp,4h

l3CEE_7561:
	les	bx,[3A8Ah]
	cmp	word ptr es:[bx+0Eh],0h
	jnz	75E3h

l3CEE_756C:
	mov	al,es:[bx+40h]
	mov	si,bx
	mov	bx,es:[si+36h]
	inc	word ptr es:[si+36h]
	les	si,es:[si]
	mov	es:[bx+si],al
	les	bx,[3A8Ah]
	inc	word ptr es:[bx+30h]
	mov	word ptr es:[bx+10h],1h
	cmp	word ptr es:[bx+8h],0h
	jz	75ACh

l3CEE_7595:
	push	cs
	call	716Ah
	les	bx,[3A8Ah]
	cmp	ax,es:[bx+12h]
	jbe	75ACh

l3CEE_75A3:
	push	cs
	call	72A2h
	pop	si
	mov	sp,bp
	pop	bp
	retf

l3CEE_75AC:
	les	bx,[3A8Ah]
	mov	ax,es:[bx+30h]
	sub	ax,es:[bx+32h]
	cmp	ax,es:[bx+28h]
	jl	75C8h

l3CEE_75BE:
	push	cs
	call	71E4h
	pop	si
	mov	sp,bp
	pop	bp
	retf
3CEE:75C7                      90                                .        

l3CEE_75C8:
	les	bx,[3A8Ah]
	mov	ax,es:[bx+36h]
	dec	ax
	push	ax
	mov	ax,es:[bx+30h]
	dec	ax
	push	ax
	push	word ptr es:[bx+2Eh]
	push	cs
	call	6F82h

l3CEE_75E0:
	add	sp,6h

l3CEE_75E3:
	pop	si
	mov	sp,bp
	pop	bp
	retf
3CEE:75E8                         55 8B EC 83 EC 0C 56 C4         U.....V.
3CEE:75F0 1E 8A 3A 26 8B 47 30 2B D2 26 F7 77 18 26 8B 47 ..:&.G0+.&.w.&.G
3CEE:7600 30 2B C2 26 03 47 18 89 46 FA 83 3E AE 20 00 75 0+.&.G..F..>. .u
3CEE:7610 03 E9 3E 01 26 83 7F 04 00 75 03 E9 34 01 26 83 ..>.&....u..4.&.
3CEE:7620 7F 08 00 75 0C 26 8B 47 12 39 46 FA 76 03 E9 09 ...u.&.G.9F.v...
3CEE:7630 01 26 8B 47 30 89 46 F6 8B 5E FE 8B 36 8A 3A 26 .&.G0.F..^..6.:&
3CEE:7640 C4 34 26 8A 00 88 46 FC C4 1E 8A 3A 26 83 7F 0A .4&...F....:&...
3CEE:7650 00 74 0B C6 46 F8 09 C7 46 F4 01 00 EB 0E C6 46 .t..F...F......F
3CEE:7660 F8 20 8B 46 FA 26 2B 47 30 89 46 F4 8A 46 FC 2A . .F.&+G0.F..F.*
3CEE:7670 E4 50 0E E8 F2 F1 83 C4 02 0B C0 75 11 80 7E FC .P.........u..~.
3CEE:7680 09 75 17 C4 1E 8A 3A 26 83 7F 0A 00 75 0C FF 76 .u....:&....u..v
3CEE:7690 F4 0E E8 9D FC 83 C4 02 EB 12 FF 76 F4 C4 1E 8A ...........v....
3CEE:76A0 3A 26 FF 77 36 0E E8 D7 F2 83 C4 04 C4 1E 8A 3A :&.w6..........:
3CEE:76B0 26 83 7F 0E 00 74 03 E9 C6 00 26 8B 47 36 89 46 &....t....&.G6.F
3CEE:76C0 FE EB 19 90 C4 36 8A 3A 26 8B 5C 36 26 FF 44 36 .....6.:&.\6&.D6
3CEE:76D0 26 C4 34 8A 46 F8 26 88 00 FF 4E F4 83 7E F4 00 &.4.F.&...N..~..
3CEE:76E0 75 E2 C4 1E 8A 3A 8B 46 FA 26 89 47 30 26 C7 47 u....:.F.&.G0&.G
3CEE:76F0 10 01 00 26 83 7F 08 00 74 18 0E E8 6C FA C4 1E ...&....t...l...
3CEE:7700 8A 3A 26 3B 47 12 76 0A 0E E8 96 FB 5E 8B E5 5D .:&;G.v.....^..]
3CEE:7710 CB 90 C4 1E 8A 3A 26 8B 47 30 26 2B 47 32 26 3B .....:&.G0&+G2&;
3CEE:7720 47 28 7D 58 FF 76 FE FF 76 F6 26 FF 77 2E 0E E8 G(}X.v..v.&.w...
3CEE:7730 50 F8 83 C4 06 5E 8B E5 5D CB 83 3E 96 20 00 74 P....^..]..>. .t
3CEE:7740 3F B8 01 00 50 B8 8E 3A 1E 50 9A 2D 04 38 1F EB ?...P..:.P.-.8..
3CEE:7750 E1 90 C4 1E 8A 3A 26 8B 47 12 39 46 FA 77 21 8B .....:&.G.9F.w!.
3CEE:7760 46 FA 26 89 47 30 0E E8 4E F3 C4 1E 8A 3A 26 8B F.&.G0..N....:&.
3CEE:7770 47 30 26 2B 47 32 26 3B 47 28 7C 04 0E E8 64 FA G0&+G2&;G(|...d.
3CEE:7780 5E 8B E5 5D CB 90 55 8B EC 83 EC 0A 56 C4 1E 8A ^..]..U.....V...
3CEE:7790 3A 26 8B 47 36 89 46 FE B8 01 00 50 FF 76 FE 0E :&.G6.F....P.v..
3CEE:77A0 E8 E3 F0 83 C4 04 89 46 F6 C4 1E 8A 3A 26 83 7F .......F....:&..
3CEE:77B0 04 00 75 18 26 83 7F 3A 00 75 11 C4 1E 8A 3A 8B ..u.&..:.u....:.
3CEE:77C0 46 FE 26 89 47 36 5E 8B E5 5D CB 90 83 3E AE 20 F.&.G6^..]...>. 
3CEE:77D0 00 75 0A 26 83 7F 3A 00 74 03 E9 C3 00 C4 1E 8A .u.&..:.t.......
3CEE:77E0 3A 26 83 7F 04 00 75 03 E9 B5 00 C7 46 FA 01 00 :&....u.....F...
3CEE:77F0 83 3E AE 20 00 74 07 C7 46 F8 01 00 EB 0C 8B 46 .>. .t..F......F
3CEE:7800 F6 26 89 47 36 C7 46 F8 00 00 26 8B 5F 36 8B 36 .&.G6.F...&._6.6
3CEE:7810 8A 3A 26 C4 34 26 8A 00 88 46 FC B8 02 00 50 C4 .:&.4&...F....P.
3CEE:7820 1E 8A 3A 26 FF 77 36 0E E8 55 F1 83 C4 04 0B C0 ..:&.w6..U......
3CEE:7830 74 89 C4 36 8A 3A 26 8B 5C 36 26 FF 44 36 26 C4 t..6.:&.\6&.D6&.
3CEE:7840 34 26 C6 00 0D C4 36 8A 3A 26 8B 5C 36 26 FF 44 4&....6.:&.\6&.D
3CEE:7850 36 26 C4 34 26 C6 00 0A C4 1E 8A 3A 26 8B 47 36 6&.4&......:&.G6
3CEE:7860 26 89 47 38 26 C7 47 10 01 00 26 83 7F 32 00 75 &.G8&.G...&..2.u
3CEE:7870 48 8A 46 FC 2A E4 50 0E E8 ED EF 83 C4 02 0B C0 H.F.*.P.........
3CEE:7880 75 37 C4 1E 8A 3A 26 8B 47 36 2D 02 00 50 26 FF u7...:&.G6-..P&.
3CEE:7890 77 30 26 FF 77 2E 0E E8 E8 F6 83 C4 06 EB 1A 90 w0&.w...........
3CEE:78A0 C7 46 FA 00 00 C7 46 F8 00 00 C4 1E 8A 3A 8B 46 .F....F......:.F
3CEE:78B0 F6 26 89 47 36 26 89 47 38 C4 1E 8A 3A 26 FF 47 .&.G6&.G8...:&.G
3CEE:78C0 34 26 FF 47 2E 26 C7 47 30 00 00 26 83 7F 32 00 4&.G.&.G0..&..2.
3CEE:78D0 74 0A 0E E8 64 F9 5E 8B E5 5D CB 90 C4 1E 8A 3A t...d.^..].....:
3CEE:78E0 26 8B 47 26 26 39 47 2E 7C 22 B8 01 00 50 2B C0 &.G&&9G.|"...P+.
3CEE:78F0 50 0E E8 BB F7 83 C4 04 C4 1E 8A 3A 26 8B 47 26 P..........:&.G&
3CEE:7900 48 26 89 47 2E C7 46 F8 01 00 EB 20 83 7E FA 00 H&.G..F.... .~..
3CEE:7910 74 1A 26 8B 47 26 48 26 3B 47 2E 7E 0F B8 FF FF t.&.G&H&;G.~....
3CEE:7920 50 26 FF 77 2E 0E E8 87 F7 83 C4 04 83 7E F8 00 P&.w.........~..
3CEE:7930 74 17 C4 1E 8A 3A 26 FF 77 36 26 FF 77 30 26 FF t....:&.w6&.w0&.
3CEE:7940 77 2E 0E E8 3C F6 83 C4 06 5E 8B E5 5D CB       w...<....^..].  

;; fn3CEE_794E: 3CEE:794E
;;   Called from:
;;     3CEE:8694 (in fn3CEE_8634)
fn3CEE_794E proc
	push	bp
	mov	bp,sp
	sub	sp,2h
	push	si
	les	bx,[3A8Ah]
	mov	ax,es:[bx+36h]
	mov	[bp-2h],ax
	cmp	es:[bx+38h],ax
	jc	7969h

l3CEE_7966:
	jmp	7A02h

l3CEE_7969:
	mov	bx,ax
	mov	si,[3A8Ah]
	les	si,es:[si]
	mov	al,es:[bx+si]
	sub	ah,ah
	push	ax
	call	far 38ADh:0040h
	add	sp,2h
	test	al,1h
	jnz	79FFh

l3CEE_7984:
	mov	bx,[bp-2h]
	les	si,[3A8Ah]
	les	si,es:[si]
	mov	al,es:[bx+si]
	sub	ah,ah
	push	ax
	call	far 38ADh:0040h
	add	sp,2h
	test	al,2h
	jnz	79FFh

l3CEE_79A0:
	mov	bx,[bp-2h]
	les	si,[3A8Ah]
	les	si,es:[si]
	cmp	byte ptr es:[bx+si],5Fh
	jnz	7A02h

l3CEE_79B0:
	jmp	79FFh
3CEE:79B2       90 90                                       ..            

;; fn3CEE_79B4: 3CEE:79B4
;;   Called from:
;;     3CEE:7A0D (in fn3CEE_7A02)
;;     3CEE:7A0D (in fn3CEE_7A02)
fn3CEE_79B4 proc
	mov	bx,[bp-2h]
	les	si,[3A8Ah]
	les	si,es:[si]
	mov	al,es:[bx+si]
	sub	ah,ah
	push	ax
	call	far 38ADh:0040h
	add	sp,2h
	test	al,1h
	jz	79D3h

l3CEE_79D0:
	jmp	7A56h

l3CEE_79D2:
	add	[bp+di+0FE5Eh],cl

;; fn3CEE_79D3: 3CEE:79D3
;;   Called from:
;;     3CEE:79CE (in fn3CEE_79B4)
;;     3CEE:79D2 (in fn3CEE_4EAC)
fn3CEE_79D3 proc
	mov	bx,[bp-2h]
	les	si,[3A8Ah]
	les	si,es:[si]
	mov	al,es:[bx+si]
	sub	ah,ah
	push	ax
	call	far 38ADh:0040h
	add	sp,2h
	test	al,2h
	jnz	7A56h

;; fn3CEE_79EF: 3CEE:79EF
;;   Called from:
;;     3CEE:79EA (in fn3CEE_79D3)
;;     3CEE:79ED (in fn3CEE_79D3)
fn3CEE_79EF proc
	mov	bx,[bp-2h]
	les	si,[3A8Ah]
	les	si,es:[si]
	cmp	byte ptr es:[bx+si],5Fh
	jz	7A56h

;; fn3CEE_79FF: 3CEE:79FF
;;   Called from:
;;     3CEE:7982 (in fn3CEE_794E)
;;     3CEE:799E (in fn3CEE_794E)
;;     3CEE:79B0 (in fn3CEE_794E)
;;     3CEE:79B4 (in fn3CEE_79B4)
;;     3CEE:79ED (in fn3CEE_79D3)
;;     3CEE:79FD (in fn3CEE_79EF)
;;     3CEE:79FD (in fn3CEE_79EF)
;;     3CEE:7A0F (in fn3CEE_7A0F)
fn3CEE_79FF proc
	dec	word ptr [bp-2h]

;; fn3CEE_7A02: 3CEE:7A02
;;   Called from:
;;     3CEE:7966 (in fn3CEE_794E)
;;     3CEE:79AE (in fn3CEE_794E)
;;     3CEE:79FF (in fn3CEE_79FF)
fn3CEE_7A02 proc
	les	bx,[3A8Ah]
	mov	ax,[bp-2h]
	cmp	es:[bx+38h],ax
	jc	79B4h

;; fn3CEE_7A0F: 3CEE:7A0F
;;   Called from:
;;     3CEE:7A0D (in fn3CEE_7A02)
;;     3CEE:7A0D (in fn3CEE_7A02)
fn3CEE_7A0F proc
	jmp	7A56h
3CEE:7A11    90                                            .              

l3CEE_7A12:
	les	bx,es:[bx]
	mov	si,[bp-2h]
	mov	al,es:[bx+si-1h]
	sub	ah,ah
	push	ax
	call	far 38ADh:0040h
	add	sp,2h
	test	al,1h
	jnz	7A53h

l3CEE_7A2B:
	les	bx,[3A8Ah]
	les	bx,es:[bx]
	mov	al,es:[bx+si-1h]
	sub	ah,ah
	push	ax
	call	far 38ADh:0040h
	add	sp,2h
	test	al,2h
	jnz	7A53h

l3CEE_7A45:
	les	bx,[3A8Ah]
	les	bx,es:[bx]
	cmp	byte ptr es:[bx+si-1h],5Fh
	jnz	7A63h

l3CEE_7A53:
	dec	word ptr [bp-2h]

;; fn3CEE_7A56: 3CEE:7A56
;;   Called from:
;;     3CEE:79D0 (in fn3CEE_79B4)
;;     3CEE:79ED (in fn3CEE_79D3)
;;     3CEE:7A0F (in fn3CEE_7A0F)
;;     3CEE:7A53 (in fn3CEE_7A56)
fn3CEE_7A56 proc
	les	bx,[3A8Ah]
	mov	ax,[bp-2h]
	cmp	es:[bx+38h],ax
	jc	7A12h

l3CEE_7A63:
	mov	bx,[bp-2h]
	les	si,[3A8Ah]
	les	si,es:[si]
	mov	al,es:[bx+si]
	sub	ah,ah
	push	ax
	call	far 38ADh:0040h
	add	sp,2h
	test	al,1h
	jnz	7AABh

l3CEE_7A7F:
	mov	bx,[bp-2h]
	les	si,[3A8Ah]
	les	si,es:[si]
	mov	al,es:[bx+si]
	sub	ah,ah
	push	ax
	call	far 38ADh:0040h
	add	sp,2h
	test	al,2h
	jnz	7AABh

l3CEE_7A9B:
	mov	bx,[bp-2h]
	les	si,[3A8Ah]
	les	si,es:[si]

;; fn3CEE_7AA3: 3CEE:7AA3
;;   Called from:
;;     3CEE:7AA2 (in fn3CEE_7A56)
;;     3CEE:8A74 (in fn3CEE_8A23)
fn3CEE_7AA3 proc
	les	si,[si]
	cmp	byte ptr es:[bx+si],5Fh
	jnz	7ACCh

;; fn3CEE_7AAB: 3CEE:7AAB
;;   Called from:
;;     3CEE:7A7D (in fn3CEE_7A56)
;;     3CEE:7A99 (in fn3CEE_7A56)
;;     3CEE:7AA7 (in fn3CEE_7AA3)
;;     3CEE:7AA7 (in fn3CEE_7AA3)
;;     3CEE:7AA9 (in fn3CEE_7AA3)
fn3CEE_7AAB proc
	les	bx,[3A8Ah]
	mov	ax,[bp-2h]
	mov	es:[bx+36h],ax
	push	cs
	call	6B58h
	les	bx,[3A8Ah]
	mov	ax,es:[bx+32h]
	cmp	es:[bx+30h],ax
	jge	7ACCh

l3CEE_7AC8:
	push	cs
	call	723Ah

l3CEE_7ACC:
	pop	si
	mov	sp,bp
	pop	bp
	retf
3CEE:7AD1    90                                            .              

;; fn3CEE_7AD2: 3CEE:7AD2
;;   Called from:
;;     3CEE:869A (in fn3CEE_8634)
fn3CEE_7AD2 proc
	push	bp
	mov	bp,sp
	sub	sp,8h
	push	si
	les	bx,[3A8Ah]
	mov	ax,es:[bx+36h]
	mov	[bp-4h],ax
	mov	[bp-2h],ax

l3CEE_7AE7:
	mov	bx,[bp-4h]
	les	si,[3A8Ah]
	les	si,es:[si]
	mov	al,es:[bx+si]
	sub	ah,ah
	push	ax
	call	far 38ADh:0040h
	add	sp,2h
	test	al,1h
	jnz	7B2Fh

l3CEE_7B03:
	mov	bx,[bp-4h]
	les	si,[3A8Ah]
	les	si,es:[si]
	mov	al,es:[bx+si]
	sub	ah,ah
	push	ax
	call	far 38ADh:0040h
	add	sp,2h
	test	al,2h
	jnz	7B2Fh

l3CEE_7B1F:
	mov	bx,[bp-4h]
	les	si,[3A8Ah]
	les	si,es:[si]
	cmp	byte ptr es:[bx+si],5Fh
	jnz	7B75h

l3CEE_7B2F:
	inc	word ptr [bp-4h]
	jmp	7AE7h

l3CEE_7B34:
	mov	bx,[bp-4h]
	les	si,[3A8Ah]
	les	si,es:[si]
	mov	al,es:[bx+si]
	sub	ah,ah
	push	ax
	call	far 38ADh:0040h
	add	sp,2h
	test	al,2h
	jnz	7B91h

l3CEE_7B50:
	mov	bx,[bp-4h]
	les	si,[3A8Ah]
	les	si,es:[si]
	mov	al,es:[bx+si]
	mov	[bp-8h],al
	cmp	al,5Fh
	jz	7B91h

l3CEE_7B64:
	sub	ah,ah
	push	ax
	push	cs
	call	6868h
	add	sp,2h
	or	ax,ax
	jnz	7B91h

l3CEE_7B72:
	inc	word ptr [bp-4h]

l3CEE_7B75:
	mov	bx,[bp-4h]
	les	si,[3A8Ah]
	les	si,es:[si]
	mov	al,es:[bx+si]
	sub	ah,ah
	push	ax
	call	far 38ADh:0040h
	add	sp,2h
	test	al,1h
	jz	7B34h

l3CEE_7B91:
	mov	bx,[bp-4h]
	les	si,[3A8Ah]
	les	si,es:[si]
	mov	al,es:[bx+si]
	sub	ah,ah
	push	ax
	call	far 38ADh:0040h
	add	sp,2h
	test	al,1h
	jnz	7BD9h

l3CEE_7BAD:
	mov	bx,[bp-4h]
	les	si,[3A8Ah]
	les	si,es:[si]
	mov	al,es:[bx+si]
	sub	ah,ah
	push	ax
	call	far 38ADh:0040h
	add	sp,2h
	test	al,2h
	jnz	7BD9h

l3CEE_7BC9:
	mov	bx,[bp-4h]
	les	si,[3A8Ah]
	les	si,es:[si]
	cmp	byte ptr es:[bx+si],5Fh
	jnz	7C22h

l3CEE_7BD9:
	les	bx,[3A8Ah]
	mov	ax,[bp-4h]
	mov	es:[bx+36h],ax
	mov	ax,es:[bx+30h]
	mov	[bp-6h],ax
	push	cs
	call	6B58h
	les	bx,[3A8Ah]
	mov	ax,es:[bx+12h]
	cmp	es:[bx+30h],ax
	jbe	7C10h

l3CEE_7BFD:
	mov	ax,[bp-6h]
	mov	es:[bx+30h],ax
	mov	ax,[bp-2h]
	mov	es:[bx+36h],ax
	pop	si
	mov	sp,bp
	pop	bp
	retf

l3CEE_7C10:
	mov	ax,es:[bx+30h]
	sub	ax,es:[bx+32h]
	cmp	ax,es:[bx+28h]
	jl	7C22h

l3CEE_7C1E:
	push	cs
	call	71E4h

l3CEE_7C22:
	pop	si
	mov	sp,bp
	pop	bp
	retf
3CEE:7C27                      90 56 EB 09 90 C4 1E 8A 3A        .V......:
3CEE:7C30 26 FF 47 36 C4 1E 8A 3A 26 8B 5F 36 8B 36 8A 3A &.G6...:&._6.6.:
3CEE:7C40 26 C4 34 26 8A 00 2A E4 50 0E E8 1B EC 83 C4 02 &.4&..*.P.......
3CEE:7C50 0B C0 74 D8 0E E8 00 EF C4 1E 8A 3A 26 8B 47 12 ..t........:&.G.
3CEE:7C60 26 39 47 30 76 0E 26 89 47 30 0E E8 4A EE 0E E8 &9G0v.&.G0..J...
3CEE:7C70 E6 EE EB 12 C4 1E 8A 3A 26 8B 47 32 26 39 47 30 .......:&.G2&9G0
3CEE:7C80 7D 04 26 89 47 30 C4 1E 8A 3A 26 8B 47 30 26 2B }.&.G0...:&.G0&+
3CEE:7C90 47 32 26 3B 47 28 7C 04 0E E8 48 F5 5E CB C4 1E G2&;G(|...H.^...
3CEE:7CA0 8A 3A 26 8B 47 38 26 89 47 36 26 C7 47 30 00 00 .:&.G8&.G6&.G0..
3CEE:7CB0 26 83 7F 32 00 74 04 0E E8 7F F5 CB             &..2.t......    

;; fn3CEE_7CBC: 3CEE:7CBC
;;   Called from:
;;     3CEE:86AC (in fn3CEE_8634)
fn3CEE_7CBC proc
	push	bp
	mov	bp,sp
	sub	sp,2h
	les	bx,[3A8Ah]
	cmp	word ptr es:[bx+32h],0h
	jnz	7CD8h

l3CEE_7CCD:
	mov	ax,es:[bx+2Eh]
	inc	ax
	cmp	ax,es:[bx+34h]
	jnc	7CDEh

l3CEE_7CD8:
	mov	ax,1h
	jmp	7CE0h
3CEE:7CDD                                        90                    .  

l3CEE_7CDE:
	sub	ax,ax

l3CEE_7CE0:
	mov	[bp-2h],ax
	les	bx,[3A8Ah]
	mov	word ptr es:[bx+36h],0h
	mov	word ptr es:[bx+38h],0h
	mov	word ptr es:[bx+2Eh],0h
	mov	word ptr es:[bx+30h],0h
	mov	word ptr es:[bx+32h],0h
	mov	word ptr es:[bx+34h],1h
	or	ax,ax
	jz	7D1Dh

l3CEE_7D0F:
	mov	ax,1h
	push	ax
	sub	ax,ax
	push	ax
	push	cs
	call	6E24h
	add	sp,4h

l3CEE_7D1D:
	mov	sp,bp
	pop	bp
	retf
3CEE:7D21    90                                            .              

;; fn3CEE_7D22: 3CEE:7D22
;;   Called from:
;;     3CEE:86B2 (in fn3CEE_8634)
fn3CEE_7D22 proc
	push	bp
	mov	bp,sp
	sub	sp,2h
	push	si
	les	bx,[3A8Ah]
	mov	ax,es:[bx+34h]
	sub	ax,es:[bx+2Eh]
	mov	[bp-2h],ax
	jmp	7D5Dh

l3CEE_7D3A:
	mov	ax,7FFFh
	push	ax
	les	bx,[3A8Ah]
	push	word ptr es:[bx+36h]
	push	cs
	call	6886h
	add	sp,4h
	les	bx,[3A8Ah]
	mov	es:[bx+36h],ax
	mov	ax,es:[bx+3Ah]
	add	es:[bx+34h],ax

l3CEE_7D5D:
	mov	bx,es:[bx+36h]
	mov	si,[3A8Ah]
	les	si,es:[si]
	cmp	byte ptr es:[bx+si],1Ah
	jnz	7D3Ah

l3CEE_7D6E:
	push	cs
	call	6B58h
	les	bx,[3A8Ah]
	mov	ax,es:[bx+12h]
	cmp	es:[bx+30h],ax
	jbe	7D8Ch

l3CEE_7D80:
	mov	es:[bx+30h],ax
	push	cs
	call	6AB8h
	push	cs
	call	6B58h

l3CEE_7D8C:
	les	bx,[3A8Ah]
	mov	ax,es:[bx+34h]
	sub	ax,[bp-2h]
	cmp	ax,es:[bx+26h]
	jnc	7DB5h

l3CEE_7D9D:
	mov	ax,es:[bx+32h]
	cmp	es:[bx+30h],ax
	jl	7DB5h

l3CEE_7DA7:
	mov	ax,es:[bx+30h]
	sub	ax,es:[bx+32h]
	cmp	ax,es:[bx+28h]
	jl	7DF4h

l3CEE_7DB5:
	mov	ax,es:[bx+26h]
	dec	ax
	mov	es:[bx+2Eh],ax
	mov	word ptr es:[bx+32h],0h
	mov	ax,es:[bx+28h]
	cmp	es:[bx+30h],ax
	jl	7DD8h

l3CEE_7DCE:
	push	cs
	call	71E4h
	pop	si
	mov	sp,bp
	pop	bp
	retf
3CEE:7DD7                      90                                .        

l3CEE_7DD8:
	les	bx,[3A8Ah]
	mov	ax,es:[bx+34h]
	sub	ax,es:[bx+2Eh]
	push	ax
	sub	ax,ax
	push	ax
	push	cs
	call	6E24h
	add	sp,4h
	pop	si
	mov	sp,bp
	pop	bp
	retf

l3CEE_7DF4:
	les	bx,[3A8Ah]
	mov	ax,es:[bx+34h]
	sub	ax,[bp-2h]
	mov	es:[bx+2Eh],ax
	pop	si
	mov	sp,bp
	pop	bp
	retf
3CEE:7E08                         55 8B EC 83 EC 02 C4 1E         U.......
3CEE:7E10 8A 3A 26 83 7F 34 01 76 7B 26 8B 47 34 89 46 FE .:&..4.v{&.G4.F.
3CEE:7E20 26 8B 47 26 26 03 47 2E 2D 01 00 F7 D8 50 26 FF &.G&&.G.-....P&.
3CEE:7E30 77 36 0E E8 50 EA 83 C4 04 C4 1E 8A 3A 26 89 47 w6..P.......:&.G
3CEE:7E40 36 26 89 47 38 26 8B 47 3A 26 29 47 34 26 8B 47 6&.G8&.G:&)G4&.G
3CEE:7E50 2E 40 3B 46 FE 73 33 26 FF 77 34 2B C0 50 0E E8 .@;F.s3&.w4+.P..
3CEE:7E60 C2 EF 83 C4 04 C4 1E 8A 3A 26 FF 77 2E 26 FF 77 ........:&.w.&.w
3CEE:7E70 36 0E E8 11 EA 83 C4 04 C4 1E 8A 3A 26 89 47 36 6..........:&.G6
3CEE:7E80 26 8B 47 3A 26 01 47 34 EB 06 26 C7 47 2E 00 00 &.G:&.G4..&.G...
3CEE:7E90 0E E8 24 EC 8B E5 5D CB 55 8B EC 83 EC 02 C4 1E ..$...].U.......
3CEE:7EA0 8A 3A 26 8B 47 26 48 50 26 FF 77 36 0E E8 D6 E9 .:&.G&HP&.w6....
3CEE:7EB0 83 C4 04 89 46 FE C4 1E 8A 3A 26 83 7F 3A 00 74 ....F....:&..:.t
3CEE:7EC0 2A 26 8B 47 3A 26 01 47 34 8B 46 FE 26 89 47 36 *&.G:&.G4.F.&.G6
3CEE:7ED0 0E E8 E4 EB C4 1E 8A 3A 26 8B 47 34 26 2B 47 2E .......:&.G4&+G.
3CEE:7EE0 50 2B C0 50 0E E8 3C EF 83 C4 04 8B E5 5D CB 90 P+.P..<......]..

;; fn3CEE_7EF0: 3CEE:7EF0
;;   Called from:
;;     3CEE:86C4 (in fn3CEE_8634)
fn3CEE_7EF0 proc
	les	bx,[3A8Ah]
	mov	ax,es:[bx+2Eh]
	neg	ax
	push	ax
	push	word ptr es:[bx+36h]
	push	cs
	call	6886h
	add	sp,4h
	les	bx,[3A8Ah]
	mov	es:[bx+36h],ax
	mov	ax,es:[bx+3Ah]
	sub	es:[bx+34h],ax
	mov	word ptr es:[bx+2Eh],0h
	mov	ax,es:[bx+32h]
	mov	es:[bx+30h],ax
	push	cs
	call	6AB8h
	retf
3CEE:7F29                            90                            .      

;; fn3CEE_7F2A: 3CEE:7F2A
;;   Called from:
;;     3CEE:86CA (in fn3CEE_8634)
fn3CEE_7F2A proc
	les	bx,[3A8Ah]
	mov	ax,es:[bx+26h]
	sub	ax,es:[bx+2Eh]
	dec	ax
	push	ax
	push	word ptr es:[bx+36h]
	push	cs
	call	6886h
	add	sp,4h
	les	bx,[3A8Ah]
	mov	es:[bx+36h],ax
	mov	ax,es:[bx+3Ah]
	add	es:[bx+34h],ax
	add	es:[bx+2Eh],ax
	mov	ax,es:[bx+28h]
	add	ax,es:[bx+32h]
	dec	ax
	sub	ax,es:[bx+12h]
	sbb	cx,cx
	and	ax,cx
	add	ax,es:[bx+12h]
	mov	es:[bx+30h],ax
	push	cs
	call	6AB8h
	push	cs
	call	6B58h
	les	bx,[3A8Ah]
	mov	ax,es:[bx+30h]
	cmp	ax,es:[bx+32h]
	jge	7F8Ah

l3CEE_7F86:
	mov	ax,es:[bx+32h]

l3CEE_7F8A:
	mov	es:[bx+30h],ax
	retf
3CEE:7F8F                                              90                .
3CEE:7F90 C4 1E 8A 3A 26 8B 47 12 26 39 47 30 73 1E 26 FF ...:&.G.&9G0s.&.
3CEE:7FA0 47 30 0E E8 12 EB C4 1E 8A 3A 26 8B 47 30 26 2B G0.......:&.G0&+
3CEE:7FB0 47 32 26 3B 47 28 7C 04 0E E8 28 F2 CB 90 C4 1E G2&;G(|...(.....
3CEE:7FC0 8A 3A 26 83 7F 30 00 74 1A 26 FF 4F 30 0E E8 E7 .:&..0.t.&.O0...
3CEE:7FD0 EA C4 1E 8A 3A 26 8B 47 32 26 39 47 30 7D 04 0E ....:&.G2&9G0}..
3CEE:7FE0 E8 57 F2 CB 55 8B EC 83 EC 02 C4 1E 8A 3A 26 83 .W..U........:&.
3CEE:7FF0 7F 34 01 76 76 B8 FF FF 50 26 FF 77 36 0E E8 85 .4.vv...P&.w6...
3CEE:8000 E8 83 C4 04 C4 1E 8A 3A 26 89 47 36 26 FF 4F 34 .......:&.G6&.O4
3CEE:8010 0E E8 A4 EA C4 1E 8A 3A 26 83 7F 2E 00 74 07 26 .......:&....t.&
3CEE:8020 83 7F 0C 00                                     ....            

l3CEE_8024:
	jz	8030h

l3CEE_8026:
	mov	ax,es:[bx+34h]
	cmp	es:[bx+2Eh],ax
	jnz	8038h

l3CEE_8030:
	dec	word ptr es:[bx+2Eh]
	mov	sp,bp
	pop	bp
	retf

l3CEE_8038:
	mov	ax,0FFFFh
	push	ax
	sub	ax,ax
	push	ax
	push	cs
	call	70B0h
	add	sp,4h
	les	bx,[3A8Ah]
	mov	ax,es:[bx+2Eh]
	neg	ax
	push	ax
	push	word ptr es:[bx+36h]
	push	cs
	call	6886h
	add	sp,4h
	mov	[bp-2h],ax
	push	ax
	sub	ax,ax
	push	ax
	push	ax
	push	cs
	call	6F82h
	add	sp,6h
	mov	sp,bp
	pop	bp
	retf
3CEE:806F                                              90                .

;; fn3CEE_8070: 3CEE:8070
;;   Called from:
;;     3CEE:86E8 (in fn3CEE_8634)
fn3CEE_8070 proc
	push	bp
	mov	bp,sp
	sub	sp,2h
	mov	ax,1h
	push	ax
	les	bx,[3A8Ah]
	push	word ptr es:[bx+36h]
	push	cs
	call	6886h
	add	sp,4h
	mov	[bp-2h],ax
	les	bx,[3A8Ah]
	cmp	word ptr es:[bx+3Ah],0h
	jz	8112h

l3CEE_8097:
	mov	es:[bx+36h],ax
	inc	word ptr es:[bx+34h]
	push	cs
	call	6AB8h
	les	bx,[3A8Ah]
	cmp	word ptr es:[bx+0Ch],0h
	jnz	80C2h

l3CEE_80AE:
	mov	ax,es:[bx+26h]
	dec	ax
	cmp	ax,es:[bx+2Eh]
	jle	80C2h

l3CEE_80B9:
	inc	word ptr es:[bx+2Eh]
	mov	sp,bp
	pop	bp
	retf
3CEE:80C1    90                                            .              

l3CEE_80C2:
	mov	ax,1h
	push	ax
	sub	ax,ax
	push	ax
	push	cs
	call	70B0h
	add	sp,4h
	les	bx,[3A8Ah]
	mov	ax,es:[bx+26h]
	sub	ax,es:[bx+2Eh]
	dec	ax
	push	ax
	push	word ptr es:[bx+36h]
	push	cs
	call	6886h
	add	sp,4h
	mov	[bp-2h],ax
	les	bx,[3A8Ah]
	mov	ax,es:[bx+26h]
	sub	ax,es:[bx+2Eh]
	dec	ax
	cmp	ax,es:[bx+3Ah]
	jnz	8112h

l3CEE_80FF:
	push	word ptr [bp-2h]
	sub	ax,ax
	push	ax
	mov	ax,es:[bx+26h]
	dec	ax
	push	ax
	push	cs
	call	6F82h
	add	sp,6h

l3CEE_8112:
	mov	sp,bp
	pop	bp
	retf
3CEE:8116                   56 C4 1E 8A 3A 26 8B 47 38 26       V...:&.G8&
3CEE:8120 89 47 36 26 C7 47 30 00 00 B8 02 00 50 26 FF 77 .G6&.G0.....P&.w
3CEE:8130 36 0E E8 4B E8 83 C4 04 C4 1E 8A 3A 26 83 7F 0E 6..K.......:&...
3CEE:8140 00 75 73 26 8B 5F 36 8B 36 8A 3A 26 C4 34 26 C6 .us&._6.6.:&.4&.
3CEE:8150 00 0D C4 1E 8A 3A 26 C4 1F 8C C0 C4 36 8A 3A 26 .....:&.....6.:&
3CEE:8160 8B 74 36 8E C0 26 C6 40 01 0A C4 1E 8A 3A 26 C7 .t6..&.@.....:&.
3CEE:8170 47 10 01 00 26 8B 47 26 48 26 3B 47 2E 7E 0F B8 G...&.G&H&;G.~..
3CEE:8180 FF FF 50 26 FF 77 2E 0E E8 25 EF 83 C4 04 C4 1E ..P&.w...%......
3CEE:8190 8A 3A 26 83 7F 32 00 74 07 0E E8 9D F0 5E CB 90 .:&..2.t.....^..
3CEE:81A0 C4 1E 8A 3A 26 FF 77 38 2B C0 50 26 FF 77 2E 0E ...:&.w8+.P&.w..
3CEE:81B0 E8 CF ED 83 C4 06 5E CB 55 8B EC 83 EC 02 56 C4 ......^.U.....V.
3CEE:81C0 1E 8A 3A 26 83 7F 30 00 75 03 E9 DA 00 26 8B 47 ..:&..0.u....&.G
3CEE:81D0 30 89 46 FE 0E E8 80 E9 C4 1E 8A 3A 8B 46 FE 26 0.F........:.F.&
3CEE:81E0 39 47 30 7D 69 26 8B 5F 36 8B 36 8A 3A 26 C4 34 9G0}i&._6.6.:&.4
3CEE:81F0 26 8A 00 2A E4 50 0E E8 6E E6 83 C4 02 0B C0 74 &..*.P..n......t
3CEE:8200 4D 83 7E FE 00 74 2D 8B 46 FE 2B D2 C4 1E 8A 3A M.~..t-.F.+....:
3CEE:8210 26 F7 77 18 0B D2 74 0E 8B 46 FE 2B D2 26 F7 77 &.w...t..F.+.&.w
3CEE:8220 18 8B C2 EB 05 90 26 8B 47 18 8B C8 8B 46 FE 2B ......&.G....F.+
3CEE:8230 C1 EB 03 90 2B C0 C4 1E 8A 3A 26 2B 47 30 1B C9 ....+....:&+G0..
3CEE:8240 F7 D1 23 C1 26 03 47 30 26 89 47 30 EB 2E C4 1E ..#.&.G0&.G0....
3CEE:8250 8A 3A 8B 46 FE 26 39 47 30 75 04 26 FF 4F 36 B8 .:.F.&9G0u.&.O6.
3CEE:8260 01 00 50 26 FF 77 36 0E E8 FF E7 83 C4 04 0E E8 ..P&.w6.........
3CEE:8270 E6 E8 C4 1E 8A 3A 26 C7 47 10 01 00 26 8B 47 32 .....:&.G...&.G2
3CEE:8280 26 39 47 30 7D 0A 0E E8 B0 EF 5E 8B E5 5D CB 90 &9G0}.....^..]..
3CEE:8290 C4 1E 8A 3A 26 FF 77 36 26 FF 77 30 26 FF 77 2E ...:&.w6&.w0&.w.
3CEE:82A0 0E E8 DE EC 83 C4 06 5E 8B E5 5D CB 55 8B EC 83 .......^..].U...
3CEE:82B0 EC 02 56 C4 1E 8A 3A 26 8B 5F 36 8B 36 8A 3A 26 ..V...:&._6.6.:&
3CEE:82C0 C4 34 26 8A 00 88 46 FE 3C 1A 75 03 E9 B5 00 2A .4&...F.<.u....*
3CEE:82D0 E4 50 0E E8 92 E5 83 C4 02 0B C0 74 7B C4 1E 8A .P.........t{...
3CEE:82E0 3A 26 C4 1F 8C C0 C4 36 8A 3A 26 8B 74 36 8E C0 :&.....6.:&.t6..
3CEE:82F0 26 8A 40 02 2A E4 50 0E E8 6D E5 83 C4 02 0B C0 &.@.*.P..m......
3CEE:8300 74 16 B8 02 00 50 C4 1E 8A 3A 26 FF 77 36 0E E8 t....P...:&.w6..
3CEE:8310 58 E7 83 C4 04 EB 0C 90 B8 FE FF 50 0E E8 12 F0 X..........P....

l3CEE_8320:
	add	sp,2h
	les	bx,[3A8Ah]
	cmp	word ptr es:[bx+8h],0h
	jz	8342h

l3CEE_832E:
	push	cs
	call	716Ah
	les	bx,[3A8Ah]
	cmp	ax,es:[bx+12h]
	jbe	8342h

l3CEE_833C:
	push	cs
	call	72A2h
	jmp	837Ah

l3CEE_8342:
	les	bx,[3A8Ah]
	push	word ptr es:[bx+34h]
	push	word ptr es:[bx+2Eh]
	push	cs
	call	6E24h
	add	sp,4h
	jmp	837Ah
3CEE:8357                      90 B8 FF FF 50 0E E8 D2 EF        ....P....
3CEE:8360 83 C4 02 C4 1E 8A 3A 26 FF 77 36 26 FF 77 30 26 ......:&.w6&.w0&
3CEE:8370 FF 77 2E 0E E8 0B EC 83 C4 06                   .w........      

l3CEE_837A:
	les	bx,[3A8Ah]
	mov	word ptr es:[bx+10h],1h
	pop	si
	mov	sp,bp
	pop	bp
	retf
3CEE:8389                            90                            .      

;; fn3CEE_838A: 3CEE:838A
;;   Called from:
;;     3CEE:8742 (in fn3CEE_8634)
fn3CEE_838A proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	push	si
	les	bx,[3A8Ah]
	mov	bx,es:[bx+36h]
	mov	si,[3A8Ah]
	les	si,es:[si]
	mov	al,es:[bx+si]
	sub	ah,ah
	push	ax
	push	cs
	call	6868h
	add	sp,2h
	or	ax,ax
	jz	83B4h

l3CEE_83B1:
	jmp	8459h

l3CEE_83B4:
	les	bx,[3A8Ah]
	mov	ax,es:[bx+36h]
	mov	[bp-2h],ax

l3CEE_83BF:
	mov	bx,[bp-2h]
	les	si,[3A8Ah]
	les	si,es:[si]
	mov	al,es:[bx+si]
	mov	[bp-4h],al
	cmp	al,20h
	jz	83D7h

l3CEE_83D3:
	cmp	al,9h
	jnz	83F6h

l3CEE_83D7:
	inc	word ptr [bp-2h]
	jmp	83BFh

l3CEE_83DC:
	cmp	byte ptr [bp-4h],9h
	jz	840Ah

l3CEE_83E2:
	mov	al,[bp-4h]
	sub	ah,ah
	push	ax
	push	cs
	call	6868h
	add	sp,2h
	or	ax,ax
	jnz	840Ah

l3CEE_83F3:
	inc	word ptr [bp-2h]

l3CEE_83F6:
	mov	bx,[bp-2h]
	les	si,[3A8Ah]
	les	si,es:[si]
	mov	al,es:[bx+si]
	mov	[bp-4h],al
	cmp	al,20h
	jnz	83DCh

l3CEE_840A:
	mov	ax,[bp-2h]
	les	bx,[3A8Ah]
	sub	ax,es:[bx+36h]
	push	ax
	push	word ptr es:[bx+36h]
	push	cs
	call	6A6Ah
	add	sp,4h
	push	cs
	call	6B58h
	les	bx,[3A8Ah]
	mov	word ptr es:[bx+10h],1h
	mov	ax,es:[bx+32h]
	cmp	es:[bx+30h],ax
	jge	8442h

l3CEE_8439:
	push	cs
	call	723Ah
	pop	si
	mov	sp,bp
	pop	bp
	retf

l3CEE_8442:
	les	bx,[3A8Ah]
	push	word ptr es:[bx+36h]
	push	word ptr es:[bx+30h]
	push	word ptr es:[bx+2Eh]
	push	cs
	call	6F82h
	add	sp,6h

l3CEE_8459:
	pop	si
	mov	sp,bp
	pop	bp
	retf

;; fn3CEE_845E: 3CEE:845E
;;   Called from:
;;     3CEE:8758 (in fn3CEE_8634)
fn3CEE_845E proc
	push	bp
	mov	bp,sp
	sub	sp,2h
	mov	ax,1h
	push	ax
	les	bx,[3A8Ah]
	push	word ptr es:[bx+36h]
	push	cs
	call	6886h
	add	sp,4h
	mov	[bp-2h],ax
	les	bx,[3A8Ah]
	cmp	es:[bx+38h],ax
	jnc	84EAh

l3CEE_8484:
	mov	ax,es:[bx+38h]
	mov	es:[bx+36h],ax
	mov	ax,[bp-2h]
	sub	ax,es:[bx+36h]
	push	ax
	push	word ptr es:[bx+36h]
	push	cs
	call	6A6Ah
	add	sp,4h
	les	bx,[3A8Ah]
	mov	word ptr es:[bx+10h],1h
	push	cs
	call	6AB8h
	les	bx,[3A8Ah]
	mov	ax,es:[bx+26h]
	dec	ax
	cmp	ax,es:[bx+2Eh]
	jle	84CBh

l3CEE_84BC:
	mov	ax,1h
	push	ax
	push	word ptr es:[bx+2Eh]
	push	cs
	call	70B0h
	add	sp,4h

l3CEE_84CB:
	les	bx,[3A8Ah]
	mov	ax,es:[bx+26h]
	sub	ax,es:[bx+2Eh]
	add	ax,es:[bx+34h]
	dec	ax
	push	ax
	mov	ax,es:[bx+26h]
	dec	ax
	push	ax
	push	cs
	call	6E24h
	add	sp,4h

l3CEE_84EA:
	mov	sp,bp
	pop	bp
	retf
3CEE:84EE                                           55 8B               U.
3CEE:84F0 EC 83 EC 02 C4 1E 8A 3A 26 83 7F 3C 00 75 63 B8 .......:&..<.uc.
3CEE:8500 01 00 50 B8 05 00 50 9A CC 06 31 34 83 C4 04 89 ..P...P...14....
3CEE:8510 46 FE 0B C0 74 4C C4 1E 8A 3A 26 C7 47 3C 01 00 F...tL...:&.G<..
3CEE:8520 A1 17 0F 26 89 47 40 8B 46 FE 3D 01 00 74 17 3D ...&.G@.F.=..t.=
3CEE:8530 02 00 74 3A 3D 0C 00 74 3D 3D 0D 00 74 40 3D 12 ..t:=..t==..t@=.
3CEE:8540 00 74 43 EB 08 90 26 83 7F 40 0E 75 0F C4 1E 8A .tC...&..@.u....
3CEE:8550 3A 26 8B 47 40 26 89 47 3E EB 07 90 26 C7 47 3E :&.G@&.G>...&.G>
3CEE:8560 20 00 C4 1E 8A 3A 26 8B 47 3C 8B E5 5D CB 26 C7  ....:&.G<..].&.
3CEE:8570 47 3E 21 00 EB EC 26 C7 47 3E 1A 00 EB E4 26 C7 G>!...&.G>....&.
3CEE:8580 47 3E 64 00 EB DC 26 C7 47 3E 65 00 EB D4       G>d...&.G>e...  

;; fn3CEE_858E: 3CEE:858E
;;   Called from:
;;     3CEE:8B4D (in fn3CEE_8B3C)
;;     3CEE:91D7 (in fn3CEE_4EAC)
fn3CEE_858E proc
	push	bp
	mov	bp,sp
	sub	sp,2h
	les	bx,[3A8Ah]
	mov	ax,es:[bx+1Ah]
	or	ax,es:[bx+1Ch]
	jnz	85A5h

l3CEE_85A2:
	jmp	8628h

l3CEE_85A5:
	push	word ptr [bp+6h]
	call	far 2368h:01E0h
	add	sp,2h
	les	bx,[3A8Ah]
	push	word ptr es:[bx+34h]
	call	far 2368h:01E0h
	add	sp,2h
	les	bx,[3A8Ah]
	push	word ptr es:[bx+30h]
	call	far 2368h:01E0h
	add	sp,2h
	mov	ax,3h
	push	ax
	call	far 21DCh:00A6h
	add	sp,2h
	les	bx,[3A8Ah]
	push	word ptr es:[bx+1Ch]
	push	word ptr es:[bx+1Ah]
	call	far 2368h:030Eh
	add	sp,4h
	call	far 21DCh:0368h
	les	bx,[1296h]
	cmp	word ptr es:[bx],2h
	jnz	8606h

l3CEE_85FF:
	mov	ax,es:[bx+8h]
	jmp	861Eh
3CEE:8605                90                                    .          

l3CEE_8606:
	push	word ptr es:[bx+0Eh]
	push	word ptr es:[bx+0Ch]
	push	word ptr es:[bx+0Ah]
	push	word ptr es:[bx+8h]
	call	far 3CEEh:0C5Ah
	add	sp,8h

l3CEE_861E:
	mov	[bp-2h],ax
	call	far 2368h:033Ch

;; fn3CEE_8622: 3CEE:8622
;;   Called from:
;;     3CEE:8621 (in fn3CEE_858E)
;;     3CEE:865A (in fn3CEE_8634)
fn3CEE_8622 proc
	cmp	al,3h
	push	0EB23h
	add	ax,46C7h

l3CEE_8628:
	mov	word ptr [bp-2h],0h

;; fn3CEE_862A: 3CEE:862A
;;   Called from:
;;     3CEE:8622 (in fn3CEE_8622)
;;     3CEE:8627 (in fn3CEE_8622)
fn3CEE_862A proc
	inc	byte ptr [bx+si]
	add	[bp+di+0FE46h],cl

l3CEE_862D:
	mov	ax,[bp-2h]

l3CEE_8630:
	mov	sp,bp
	pop	bp
	retf

;; fn3CEE_8634: 3CEE:8634
;;   Called from:
;;     3CEE:8AD1 (in fn3CEE_8ACE)
;;     3CEE:8AF4 (in fn3CEE_8B3C)
fn3CEE_8634 proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	mov	word ptr [bp-4h],0h
	mov	ax,[bp+6h]
	cmp	ax,14h
	jnz	864Ah

l3CEE_8647:
	jmp	8734h

l3CEE_864A:
	jbe	864Fh

l3CEE_864C:
	jmp	8934h

l3CEE_864F:
	sub	ax,1h
	cmp	ax,12h
	ja	866Fh

l3CEE_8657:
	add	ax,ax
	xchg	bx,ax
	jmp	word ptr cs:[bx+20AEh]
3CEE:865F                                              90                .

l3CEE_8660:
	les	bx,[3A8Ah]
	cmp	word ptr es:[bx+4h],0h
	jz	866Fh

l3CEE_866B:
	push	cs
	call	74B8h

l3CEE_866F:
	mov	ax,[bp-4h]
	mov	sp,bp
	pop	bp
	retf

l3CEE_8676:
	les	bx,[3A8Ah]
	cmp	word ptr es:[bx+4h],0h
	jz	8686h

l3CEE_8681:
	mov	ax,3h
	jmp	8689h

l3CEE_8686:
	mov	ax,2h

l3CEE_8689:
	mov	[bp-4h],ax

l3CEE_868C:
	mov	word ptr es:[bx+6h],0h
	jmp	866Fh

l3CEE_8694:
	push	cs
	call	794Eh
	jmp	866Fh

l3CEE_869A:
	push	cs
	call	7AD2h
	jmp	866Fh
3CEE:86A0 0E E8 84 F5 EB C9 0E E8 F4 F5 EB C3             ............    

l3CEE_86AC:
	push	cs
	call	7CBCh
	jmp	866Fh

l3CEE_86B2:
	push	cs
	call	7D22h
	jmp	866Fh
3CEE:86B8                         0E E8 4C F7 EB B1 0E E8         ..L.....
3CEE:86C0 D6 F7 EB AB                                     ....            

l3CEE_86C4:
	push	cs
	call	7EF0h
	jmp	866Fh

l3CEE_86CA:
	push	cs
	call	7F2Ah
	jmp	866Fh
3CEE:86D0 0E E8 BC F8 EB 99 0E E8 E4 F8 EB 93 0E E8 04 F9 ................
3CEE:86E0 EB 8D 0E E8 A0 F0 EB 87                         ........        

l3CEE_86E8:
	push	cs
	call	8070h
	jmp	866Fh
3CEE:86EE                                           C4 1E               ..
3CEE:86F0 8A 3A 26 83 7F 04 00 75 03 E9 73 FF 0E E8 16 FA .:&....u..s.....
3CEE:8700 E9 6C FF 90 0E E8 E0 EE E9 64 FF 90 C4 1E 8A 3A .l.......d.....:
3CEE:8710 26 83 7F 04 00 74 BF 0E E8 9D FA E9 51 FF C4 1E &....t......Q...
3CEE:8720 8A 3A 26 83 7F 04 00 75 03 E9 43 FF 0E E8 7C FB .:&....u..C...|.
3CEE:8730 E9 3C FF 90                                     .<..            

l3CEE_8734:
	les	bx,[3A8Ah]
	cmp	word ptr es:[bx+4h],0h
	jnz	8742h

l3CEE_873F:
	jmp	866Fh

l3CEE_8742:
	push	cs
	call	838Ah
	jmp	866Fh
3CEE:8749                            90                            .      

l3CEE_874A:
	les	bx,[3A8Ah]
	cmp	word ptr es:[bx+4h],0h
	jnz	8758h

l3CEE_8755:
	jmp	866Fh

l3CEE_8758:
	push	cs
	call	845Eh
	jmp	866Fh
3CEE:875F                                              90                .
3CEE:8760 C4 1E 8A 3A 26 83 7F 04 00 75 03 E9 01 FF 0E E8 ...:&....u......
3CEE:8770 30 EB E9 FA FE 90                               0.....          

l3CEE_8776:
	les	bx,[3A8Ah]
	cmp	word ptr es:[bx+4h],0h
	jnz	8784h

l3CEE_8781:
	jmp	866Fh

l3CEE_8784:
	cmp	word ptr [20AEh],1h
	sbb	ax,ax
	neg	ax
	mov	[20AEh],ax
	cmp	word ptr [20A2h],0h
	jnz	879Ah

l3CEE_8797:
	jmp	866Fh

l3CEE_879A:
	mov	ax,3Ch
	push	ax
	sub	ax,ax
	push	ax
	call	far 1F38h:04E7h
	add	sp,4h
	cmp	word ptr [20AEh],0h
	jz	87BAh

l3CEE_87B0:
	mov	ax,8h
	push	ax
	mov	ax,6068h
	jmp	87C1h
3CEE:87B9                            90                            .      

l3CEE_87BA:
	mov	ax,8h
	push	ax
	mov	ax,6072h

l3CEE_87C1:
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	jmp	866Fh

l3CEE_87CE:
	les	bx,[3A8Ah]
	cmp	word ptr es:[bx+4h],0h
	jnz	87DCh

l3CEE_87D9:
	jmp	866Fh

l3CEE_87DC:
	cmp	word ptr es:[bx+8h],1h
	sbb	ax,ax
	neg	ax
	mov	es:[bx+8h],ax
	jmp	866Fh

l3CEE_87EC:
	les	bx,[3A8Ah]
	cmp	word ptr es:[bx+0Ch],1h
	sbb	ax,ax
	neg	ax
	mov	es:[bx+0Ch],ax
	jmp	866Fh

l3CEE_8800:
	les	bx,[3A8Ah]
	cmp	word ptr es:[bx+10h],0h
	jnz	880Eh

l3CEE_880B:
	jmp	8906h

l3CEE_880E:
	cmp	word ptr [20A2h],0h
	jnz	8818h

l3CEE_8815:
	jmp	8906h

l3CEE_8818:
	mov	ax,es:[bx+1Ah]
	or	ax,es:[bx+1Ch]
	jz	8825h

l3CEE_8822:
	jmp	8906h

l3CEE_8825:
	mov	ax,3Ch
	push	ax
	sub	ax,ax
	push	ax
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,0Dh
	push	ax
	mov	ax,607Ch
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	call	far 38ADh:00CCh
	push	dx
	push	ax
	call	far 2017h:03F5h
	add	sp,4h
	push	ax
	call	far 38ADh:00CCh
	push	dx
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h
	mov	ax,1h
	push	ax
	mov	ax,608Ah
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h

l3CEE_8875:
	sub	ax,ax
	push	ax
	mov	ax,8h
	push	ax
	call	far 3431h:07B6h
	add	sp,4h
	cmp	ax,2h
	jnz	8892h

l3CEE_8889:
	mov	ax,[0F17h]
	mov	[bp-2h],ax
	jmp	8897h
3CEE:8891    90                                            .              

l3CEE_8892:
	mov	word ptr [bp-2h],0h

l3CEE_8897:
	push	word ptr [bp-2h]
	call	far 38ADh:0040h
	add	sp,2h
	test	al,18h
	jz	8875h

l3CEE_88A6:
	mov	ax,3Ch
	push	ax
	sub	ax,ax
	push	ax
	call	far 1F38h:04E7h
	add	sp,4h
	call	far 1F38h:08CBh
	cmp	word ptr [20AEh],0h
	jz	88E1h

l3CEE_88C1:
	mov	ax,3Ch
	push	ax
	sub	ax,ax
	push	ax
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,8h
	push	ax
	mov	ax,608Ch
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h

l3CEE_88E1:
	push	word ptr [bp-2h]
	call	far 38ADh:0040h
	add	sp,2h
	test	al,8h
	jnz	88F3h

l3CEE_88F0:
	jmp	866Fh

l3CEE_88F3:
	les	bx,[3A8Ah]
	mov	word ptr es:[bx+6h],0h
	mov	word ptr [bp-4h],2h
	jmp	866Fh
3CEE:8905                90                                    .          

l3CEE_8906:
	mov	word ptr [bp-4h],2h
	jmp	868Ch
3CEE:890E                                           46 1E               F.
3CEE:8910 00 1F 5E 1E 70 1E 7C 1E 40 1E BE 1E AC 1E A4 1E ..^.p.|.@.......
3CEE:8920 0F 1E 0F 1E 0F 1E 82 1E 8E 1E 0F 1E 0F 1E 0F 1E ................
3CEE:8930 58 1E 76 1E                                     X.v.            

l3CEE_8934:
	cmp	ax,1Dh
	jnz	893Ch

l3CEE_8939:
	jmp	86C4h

l3CEE_893C:
	ja	8972h

l3CEE_893E:
	cmp	ax,16h
	jnz	8946h

l3CEE_8943:
	jmp	8776h

l3CEE_8946:
	cmp	ax,17h
	jnz	894Eh

l3CEE_894B:
	jmp	8676h

l3CEE_894E:
	cmp	ax,18h
	jnz	8956h

l3CEE_8953:
	jmp	86E8h

l3CEE_8956:
	cmp	ax,19h
	jnz	895Eh

l3CEE_895B:
	jmp	874Ah

l3CEE_895E:
	cmp	ax,1Ah
	jnz	8966h

l3CEE_8963:
	jmp	8694h

l3CEE_8966:
	cmp	ax,1Bh
	jnz	896Eh

l3CEE_896B:
	jmp	8800h

l3CEE_896E:
	jmp	866Fh
3CEE:8971    90                                            .              

l3CEE_8972:
	cmp	ax,21h
	jnz	897Ah

l3CEE_8977:
	jmp	8660h

l3CEE_897A:
	ja	8990h

l3CEE_897C:
	cmp	ax,1Eh
	jnz	8984h

l3CEE_8981:
	jmp	86B2h

l3CEE_8984:
	cmp	ax,1Fh
	jnz	898Ch

l3CEE_8989:
	jmp	86ACh

l3CEE_898C:
	jmp	866Fh
3CEE:898F                                              90                .

l3CEE_8990:
	cmp	ax,22h
	jnz	8998h

l3CEE_8995:
	jmp	87CEh

l3CEE_8998:
	cmp	ax,23h
	jnz	89A0h

l3CEE_899D:
	jmp	87ECh

l3CEE_89A0:
	cmp	ax,64h
	jnz	89A8h

l3CEE_89A5:
	jmp	869Ah

l3CEE_89A8:
	cmp	ax,65h
	jnz	89B0h

l3CEE_89AD:
	jmp	86CAh

l3CEE_89B0:
	jmp	866Fh
3CEE:89B3          90                                        .            

;; fn3CEE_89B4: 3CEE:89B4
;;   Called from:
;;     3CEE:92F2 (in fn3CEE_4EAC)
fn3CEE_89B4 proc
	push	bp
	mov	bp,sp
	sub	sp,0Ah
	les	bx,[3A8Ah]
	cmp	word ptr es:[bx+4h],0h
	jz	89FDh

l3CEE_89C5:
	cmp	word ptr [20A2h],0h

l3CEE_89C7:
	mov	[0020h],al

;; fn3CEE_89CA: 3CEE:89CA
;;   Called from:
;;     3CEE:89C5 (in fn3CEE_89B4)
;;     3CEE:89C7 (in fn3CEE_8634)
fn3CEE_89CA proc
	jz	89FDh

;; fn3CEE_89CC: 3CEE:89CC
;;   Called from:
;;     3CEE:89CA (in fn3CEE_89CA)
;;     3CEE:89CA (in fn3CEE_89CA)
;;     3CEE:89CA (in fn3CEE_89CA)
;;     3CEE:89FD (in fn3CEE_89FD)
fn3CEE_89CC proc
	mov	ax,3Ch
	push	ax
	sub	ax,ax
	push	ax
	call	far 1F38h:04E7h
	add	sp,4h
	cmp	word ptr [20AEh],0h
	jz	89ECh

l3CEE_89E2:
	mov	ax,8h
	push	ax
	mov	ax,6096h
	jmp	89F3h
3CEE:89EB                                  90                        .    

l3CEE_89EC:
	mov	ax,8h
	push	ax
	mov	ax,60A0h

l3CEE_89F3:
	push	ds
	push	ax
	call	far 1F38h:049Fh
	add	sp,6h

;; fn3CEE_89FD: 3CEE:89FD
;;   Called from:
;;     3CEE:89C3 (in fn3CEE_89B4)
;;     3CEE:89CA (in fn3CEE_89CA)
;;     3CEE:89FA (in fn3CEE_89CC)
fn3CEE_89FD proc
	les	bx,[3A8Ah]
	mov	ax,es:[bx+34h]
	sub	ax,es:[bx+2Eh]
	push	ax
	sub	ax,ax
	push	ax
	push	cs
	call	6E24h
	add	sp,4h
	mov	word ptr [bp-2h],0h
	mov	word ptr [bp-0Ah],1h
	mov	word ptr [bp-8h],2h

;; fn3CEE_8A23: 3CEE:8A23
;;   Called from:
;;     3CEE:8A1E (in fn3CEE_89FD)
;;     3CEE:8AE0 (in fn3CEE_8ACE)
;;     3CEE:8B08 (in fn3CEE_8B3C)
fn3CEE_8A23 proc
	les	bx,[3A8Ah]
	cmp	word ptr es:[bx+6h],0h
	jnz	8A31h

l3CEE_8A2E:
	jmp	8B7Ch

l3CEE_8A31:
	cmp	word ptr es:[bx+0Eh],0h
	jz	8A3Bh

l3CEE_8A38:
	jmp	8B7Ch

l3CEE_8A3B:
	mov	ax,es:[bx+20h]
	add	ax,es:[bx+30h]
	sub	ax,es:[bx+32h]
	push	ax
	mov	ax,es:[bx+1Eh]
	add	ax,es:[bx+2Eh]
	push	ax
	call	far 1F38h:04E7h
	add	sp,4h
	mov	ax,[bp-2h]
	cmp	ax,13h
	jbe	8A64h

l3CEE_8A61:
	jmp	8B28h

l3CEE_8A64:
	cmp	ax,12h
	jnc	8ACEh

l3CEE_8A69:
	cmp	ax,0Dh
	jbe	8A71h

l3CEE_8A6E:
	jmp	8B3Ch

l3CEE_8A71:
	add	ax,ax
	xchg	bx,ax
	jmp	word ptr cs:[bx+22ACh]
3CEE:8A79                            90 0E E8 70 FA 0B C0          ...p...
3CEE:8A80 74 2C C4 1E 8A 3A 26 C7 47 3C 00 00 C7 46 F6 01 t,...:&.G<...F..
3CEE:8A90 00 26 8B 47 3E 89 46 FE 26 83 7F 10 00 74 05 B8 .&.G>.F.&....t..
3CEE:8AA0 02 00 EB 03 B8 01 00 89 46 FC E9 76 FF 90 83 7E ........F..v...~
3CEE:8AB0 F6 00 74 0E C7 46 FE 00 01 C7 46 FC 00 00 E9 62 ..t..F....F....b
3CEE:8AC0 FF 90 0E E8 28 FA 0B C0 74                      ....(...t       

l3CEE_8AC9:
	clc
	jmp	8A23h
3CEE:8ACD                                        90                    .  

;; fn3CEE_8ACE: 3CEE:8ACE
;;   Called from:
;;     3CEE:8A67 (in fn3CEE_8A23)
;;     3CEE:8B30 (in fn3CEE_8B28)
;;     3CEE:8B35 (in fn3CEE_8B32)
;;     3CEE:8B3A (in fn3CEE_8B32)
;;     3CEE:8B69 (in fn3CEE_8B28)
;;     3CEE:8B76 (in fn3CEE_8B28)
fn3CEE_8ACE proc
	push	word ptr [bp-2h]
	push	cs
	call	8634h
	add	sp,2h
	mov	[bp-8h],ax
	mov	word ptr [bp-2h],0h
	jmp	8A23h
3CEE:8AE3          90                                        .            

l3CEE_8AE4:
	les	bx,[3A8Ah]
	jmp	8AF0h

l3CEE_8AEA:
	cmp	word ptr [bp-4h],0h
	jz	8AFEh

l3CEE_8AF0:
	push	word ptr es:[bx+3Eh]

l3CEE_8AF4:
	push	cs
	call	8634h
	add	sp,2h
	mov	[bp-8h],ax

l3CEE_8AFE:
	mov	word ptr [bp-2h],0h
	mov	word ptr [bp-0Ah],0h
	jmp	8A23h
3CEE:8B0B                                  90 1A 22 6E 22            .."n"
3CEE:8B10 DC 22 6E 22 6E 22 6E 22 6E 22 6E 22 6E          ."n"n"n"n"n"n   

l3CEE_8B1D:
	and	ch,[bp+22h]
	fsub	double ptr [bp+si]
	fsub	double ptr [bp+si]
	fsub	double ptr [bp+si]
	outsb
	and	bh,[di]

;; fn3CEE_8B28: 3CEE:8B28
;;   Called from:
;;     3CEE:8A61 (in fn3CEE_8A23)
;;     3CEE:8B27 (in fn3CEE_4EAC)
fn3CEE_8B28 proc
	cmp	ax,1Fh
	ja	8B64h

l3CEE_8B2D:
	cmp	ax,1Dh
	jnc	8ACEh

;; fn3CEE_8B32: 3CEE:8B32
;;   Called from:
;;     3CEE:8ACE (in fn3CEE_8ACE)
;;     3CEE:8B2F (in fn3CEE_8B28)
;;     3CEE:8B2F (in fn3CEE_8B28)
;;     3CEE:8B30 (in fn3CEE_8B28)
;;     3CEE:8B3C (in fn3CEE_8B3C)
fn3CEE_8B32 proc
	cmp	ax,18h
	jz	8ACEh

l3CEE_8B37:
	cmp	ax,1Ah
	jz	8ACEh

;; fn3CEE_8B3C: 3CEE:8B3C
;;   Called from:
;;     3CEE:8A6E (in fn3CEE_8A23)
;;     3CEE:8B3A (in fn3CEE_8B32)
;;     3CEE:8B6F (in fn3CEE_8B28)
;;     3CEE:8B79 (in fn3CEE_8B28)
fn3CEE_8B3C proc
	les	bx,[3A8Ah]
	mov	ax,es:[bx+1Ah]
	or	ax,es:[bx+1Ch]
	jz	8AEAh

l3CEE_8B4A:
	push	word ptr [bp-4h]
	push	cs
	call	858Eh
	add	sp,2h
	mov	[bp-6h],ax
	cmp	word ptr [bp-4h],0h
	jz	8AFEh

l3CEE_8B5D:
	or	ax,ax
	jz	8AE4h

l3CEE_8B61:
	push	ax
	jmp	8AF4h

l3CEE_8B64:
	cmp	ax,21h
	jnz	8B6Ch

l3CEE_8B69:
	jmp	8ACEh

l3CEE_8B6C:
	cmp	ax,64h
	jc	8B3Ch

l3CEE_8B71:
	cmp	ax,65h
	ja	8B79h

l3CEE_8B76:
	jmp	8ACEh

l3CEE_8B79:
	jmp	8B3Ch
3CEE:8B7B                                  90                        .    

l3CEE_8B7C:
	les	bx,[3A8Ah]
	cmp	word ptr es:[bx+0Eh],0h
	jz	8B8Eh

l3CEE_8B87:
	mov	ax,9h
	mov	sp,bp
	pop	bp
	retf

l3CEE_8B8E:
	mov	ax,[bp-8h]
	mov	sp,bp
	pop	bp
	retf
3CEE:8B95                90 55 8B EC 83 EC 16 56 A1 8A 3A      .U.....V..:
3CEE:8BA0 8B 16 8C 3A 89 46 EA 89 56 EC B8 42 00 50 9A 7E ...:.F..V..B.P.~
3CEE:8BB0 09 DC 21 83 C4 02 A3 8A 3A 89 16 8C 3A C7 46 FA ..!.....:...:.F.
3CEE:8BC0 00 00 2B C0 50 9A 7C 01 5D 3B 83 C4 02 89 46 EE ..+.P.|.];....F.

l3CEE_8BD0:
	inc	word ptr [bp-6h]
	cmp	[bp-6h],ax
	ja	8C08h

l3CEE_8BD8:
	push	word ptr [bp-6h]
	call	far 3B5Dh:017Ch
	add	sp,2h
	test	al,1h
	jz	8C08h

l3CEE_8BE7:
	push	word ptr [bp-6h]
	call	far 3B5Dh:0252h
	add	sp,2h
	mov	[bp-0Ah],ax
	mov	[bp-8h],dx
	push	word ptr [bp-6h]
	call	far 3B5Dh:028Ah
	add	sp,2h
	mov	[bp-4h],ax
	jmp	8C16h

l3CEE_8C08:
	mov	ax,60AAh
	mov	[bp-0Ah],ax
	mov	[bp-8h],ds
	mov	word ptr [bp-4h],0h

l3CEE_8C16:
	inc	word ptr [bp-6h]
	mov	ax,[bp-12h]
	cmp	[bp-6h],ax
	ja	8C70h

l3CEE_8C21:
	push	word ptr [bp-6h]
	call	far 3B5Dh:017Ch
	add	sp,2h
	test	al,2h
	jz	8C70h

l3CEE_8C30:
	push	word ptr [bp-6h]
	call	far 3B5Dh:0306h
	add	sp,2h
	or	ax,ax
	jge	8C44h

l3CEE_8C3F:
	sub	ax,ax
	jmp	8C65h
3CEE:8C43          90                                        .            

l3CEE_8C44:
	push	word ptr [bp-6h]
	call	far 3B5Dh:0306h
	add	sp,2h
	cmp	ax,[0EEEh]
	jbe	8C5Ah

l3CEE_8C55:
	mov	ax,[0EEEh]
	jmp	8C65h

l3CEE_8C5A:
	push	word ptr [bp-6h]
	call	far 3B5Dh:0306h
	add	sp,2h

l3CEE_8C65:
	les	bx,[3A8Ah]
	mov	es:[bx+1Eh],ax
	jmp	8C7Ah
3CEE:8C6F                                              90                .

l3CEE_8C70:
	les	bx,[3A8Ah]
	mov	word ptr es:[bx+1Eh],1h

l3CEE_8C7A:
	inc	word ptr [bp-6h]
	mov	ax,[bp-12h]
	cmp	[bp-6h],ax
	ja	8CDCh

l3CEE_8C85:
	push	word ptr [bp-6h]
	call	far 3B5Dh:017Ch
	add	sp,2h
	test	al,2h
	jz	8CDCh

l3CEE_8C94:
	push	word ptr [bp-6h]
	call	far 3B5Dh:0306h
	add	sp,2h
	or	ax,ax
	jge	8CA8h

l3CEE_8CA3:
	sub	ax,ax
	jmp	8CD1h
3CEE:8CA7                      90                                .        

l3CEE_8CA8:
	push	word ptr [bp-6h]
	call	far 3B5Dh:0306h
	add	sp,2h
	mov	cx,[0EF0h]
	sub	cx,5h
	cmp	ax,cx
	jbe	8CC6h

l3CEE_8CBE:
	mov	ax,[0EF0h]
	sub	ax,5h
	jmp	8CD1h

l3CEE_8CC6:
	push	word ptr [bp-6h]
	call	far 3B5Dh:0306h
	add	sp,2h

l3CEE_8CD1:
	les	bx,[3A8Ah]
	mov	es:[bx+20h],ax
	jmp	8CE6h
3CEE:8CDB                                  90                        .    

l3CEE_8CDC:
	les	bx,[3A8Ah]
	mov	word ptr es:[bx+20h],0h

l3CEE_8CE6:
	inc	word ptr [bp-6h]
	mov	ax,[bp-12h]
	cmp	[bp-6h],ax
	ja	8D44h

l3CEE_8CF1:
	push	word ptr [bp-6h]
	call	far 3B5Dh:017Ch
	add	sp,2h
	test	al,2h
	jz	8D44h

l3CEE_8D00:
	push	word ptr [bp-6h]
	call	far 3B5Dh:0306h
	add	sp,2h
	les	bx,[3A8Ah]
	cmp	ax,es:[bx+1Eh]
	jge	8D1Ch

l3CEE_8D15:
	mov	ax,es:[bx+1Eh]
	jmp	8D3Dh
3CEE:8D1B                                  90                        .    

l3CEE_8D1C:
	push	word ptr [bp-6h]
	call	far 3B5Dh:0306h
	add	sp,2h
	cmp	ax,[0EEEh]
	jbe	8D32h

l3CEE_8D2D:
	mov	ax,[0EEEh]
	jmp	8D3Dh

l3CEE_8D32:
	push	word ptr [bp-6h]
	call	far 3B5Dh:0306h
	add	sp,2h

l3CEE_8D3D:
	les	bx,[3A8Ah]
	jmp	8D4Bh
3CEE:8D43          90                                        .            

l3CEE_8D44:
	les	bx,[3A8Ah]
	mov	ax,[0EEEh]

l3CEE_8D4B:
	mov	es:[bx+22h],ax
	inc	word ptr [bp-6h]
	mov	ax,[bp-12h]
	cmp	[bp-6h],ax
	ja	8DB4h

l3CEE_8D5A:
	push	word ptr [bp-6h]
	call	far 3B5Dh:017Ch
	add	sp,2h
	test	al,2h
	jz	8DB4h

l3CEE_8D69:
	push	word ptr [bp-6h]
	call	far 3B5Dh:0306h
	add	sp,2h
	les	bx,[3A8Ah]
	mov	cx,es:[bx+20h]
	add	cx,5h
	cmp	cx,ax
	jle	8D8Ch

l3CEE_8D83:
	mov	ax,es:[bx+20h]
	add	ax,5h
	jmp	8DADh

l3CEE_8D8C:
	push	word ptr [bp-6h]
	call	far 3B5Dh:0306h
	add	sp,2h
	cmp	ax,[0EF0h]
	jbe	8DA2h

l3CEE_8D9D:
	mov	ax,[0EF0h]
	jmp	8DADh

l3CEE_8DA2:
	push	word ptr [bp-6h]
	call	far 3B5Dh:0306h
	add	sp,2h

l3CEE_8DAD:
	les	bx,[3A8Ah]
	jmp	8DBBh
3CEE:8DB3          90                                        .            

l3CEE_8DB4:
	les	bx,[3A8Ah]
	mov	ax,[0EF0h]

l3CEE_8DBB:
	mov	es:[bx+24h],ax
	mov	ax,es:[bx+22h]
	sub	ax,es:[bx+1Eh]
	inc	ax
	mov	es:[bx+26h],ax
	mov	ax,es:[bx+24h]
	sub	ax,es:[bx+20h]
	inc	ax
	mov	es:[bx+28h],ax
	inc	word ptr [bp-6h]
	mov	ax,[bp-12h]
	cmp	[bp-6h],ax
	ja	8E08h

l3CEE_8DE4:
	push	word ptr [bp-6h]
	call	far 3B5Dh:017Ch
	add	sp,2h
	test	al,4h
	jz	8E08h

l3CEE_8DF3:
	push	word ptr [bp-6h]
	call	far 3B5Dh:047Ch
	add	sp,2h
	les	bx,[3A8Ah]
	mov	es:[bx+4h],ax
	jmp	8E12h

l3CEE_8E08:
	les	bx,[3A8Ah]
	mov	word ptr es:[bx+4h],1h

l3CEE_8E12:
	mov	word ptr es:[bx+6h],1h
	inc	word ptr [bp-6h]
	mov	ax,[bp-12h]
	cmp	[bp-6h],ax
	ja	8E56h

l3CEE_8E23:
	push	word ptr [bp-6h]
	call	far 3B5Dh:017Ch
	add	sp,2h
	test	al,1h
	jz	8E56h

l3CEE_8E32:
	push	word ptr [bp-6h]
	call	far 3B5Dh:0252h
	add	sp,2h
	push	dx
	push	ax
	call	far 2BC7h:0494h
	add	sp,4h
	les	bx,[3A8Ah]
	mov	es:[bx+1Ah],ax
	mov	es:[bx+1Ch],dx
	jmp	8E72h
3CEE:8E55                90                                    .          

l3CEE_8E56:
	les	bx,[3A8Ah]
	sub	ax,ax
	mov	es:[bx+1Ch],ax
	mov	es:[bx+1Ah],ax
	mov	ax,[bp-12h]
	cmp	[bp-6h],ax
	ja	8E72h

l3CEE_8E6C:
	mov	word ptr es:[bx+6h],0h

l3CEE_8E72:
	inc	word ptr [bp-6h]
	mov	ax,[bp-12h]
	cmp	[bp-6h],ax
	jbe	8E80h

l3CEE_8E7D:
	jmp	8F56h

l3CEE_8E80:
	push	word ptr [bp-6h]
	call	far 3B5Dh:017Ch
	add	sp,2h
	test	al,2h
	jnz	8E92h

l3CEE_8E8F:
	jmp	8F56h

l3CEE_8E92:
	push	word ptr [bp-6h]
	call	far 3B5Dh:0306h
	add	sp,2h
	cmp	ax,5h
	jl	8EA5h

l3CEE_8EA2:
	jmp	8F32h

l3CEE_8EA5:
	mov	ax,5h

l3CEE_8EA8:
	les	bx,[3A8Ah]
	mov	es:[bx+12h],ax
	mov	word ptr es:[bx+0Ah],0h
	inc	word ptr [bp-6h]
	mov	ax,[bp-12h]
	cmp	[bp-6h],ax
	ja	8EEAh

l3CEE_8EC1:
	push	word ptr [bp-6h]
	call	far 3B5Dh:017Ch
	add	sp,2h
	test	al,2h
	jz	8EEAh

l3CEE_8ED0:
	push	word ptr [bp-6h]
	call	far 3B5Dh:0306h
	add	sp,2h
	les	bx,[3A8Ah]
	mov	es:[bx+18h],ax
	or	ax,ax
	jz	8EEAh

l3CEE_8EE7:
	jmp	8F6Ch

l3CEE_8EEA:
	les	bx,[3A8Ah]
	mov	word ptr es:[bx+18h],4h

l3CEE_8EF4:
	inc	word ptr [bp-6h]
	mov	ax,[bp-12h]
	cmp	[bp-6h],ax
	jbe	8F02h

l3CEE_8EFF:
	jmp	8FA2h

l3CEE_8F02:
	push	word ptr [bp-6h]
	call	far 3B5Dh:017Ch
	add	sp,2h
	test	al,2h
	jnz	8F14h

l3CEE_8F11:
	jmp	8FA2h

l3CEE_8F14:
	push	word ptr [bp-6h]
	call	far 3B5Dh:0306h
	add	sp,2h
	cmp	ax,1h
	jle	8F9Ah

l3CEE_8F24:
	push	word ptr [bp-6h]
	call	far 3B5Dh:0306h
	add	sp,2h
	jmp	8F9Dh
3CEE:8F31    90                                            .              

l3CEE_8F32:
	push	word ptr [bp-6h]
	call	far 3B5Dh:0306h
	add	sp,2h
	cmp	ax,0FEh
	jle	8F48h

l3CEE_8F42:
	mov	ax,0FEh
	jmp	8EA8h

l3CEE_8F48:
	push	word ptr [bp-6h]
	call	far 3B5Dh:0306h
	add	sp,2h
	jmp	8EA8h

l3CEE_8F56:
	les	bx,[3A8Ah]
	cmp	word ptr es:[bx+28h],6h
	jg	8F64h

l3CEE_8F61:
	jmp	8EA5h

l3CEE_8F64:
	mov	ax,es:[bx+28h]
	dec	ax
	jmp	8EA8h

l3CEE_8F6C:
	les	bx,[3A8Ah]
	mov	word ptr es:[bx+0Ah],1h
	cmp	word ptr es:[bx+18h],2h
	jnc	8F82h

l3CEE_8F7D:
	mov	ax,2h
	jmp	8F93h

l3CEE_8F82:
	mov	ax,es:[bx+12h]
	dec	ax
	sub	ax,es:[bx+18h]
	sbb	cx,cx
	and	ax,cx
	add	ax,es:[bx+18h]

l3CEE_8F93:
	mov	es:[bx+18h],ax
	jmp	8EF4h

l3CEE_8F9A:
	mov	ax,1h

l3CEE_8F9D:
	mov	[bp-0Eh],ax
	jmp	8FA7h

l3CEE_8FA2:
	mov	word ptr [bp-0Eh],1h

l3CEE_8FA7:
	inc	word ptr [bp-6h]
	mov	ax,[bp-12h]
	cmp	[bp-6h],ax
	ja	900Ah

l3CEE_8FB2:
	push	word ptr [bp-6h]
	call	far 3B5Dh:017Ch
	add	sp,2h
	test	al,2h
	jz	900Ah

l3CEE_8FC1:
	push	word ptr [bp-6h]
	call	far 3B5Dh:0306h
	add	sp,2h
	or	ax,ax
	jge	8FD4h

l3CEE_8FD0:
	sub	ax,ax
	jmp	8FFFh

l3CEE_8FD4:
	push	word ptr [bp-6h]
	call	far 3B5Dh:0306h
	add	sp,2h
	les	bx,[3A8Ah]
	mov	cx,es:[bx+12h]
	dec	cx
	cmp	cx,ax
	jnc	8FF4h

l3CEE_8FEC:
	mov	ax,es:[bx+12h]
	dec	ax
	jmp	8FFFh
3CEE:8FF3          90                                        .            

l3CEE_8FF4:
	push	word ptr [bp-6h]
	call	far 3B5Dh:0306h
	add	sp,2h

l3CEE_8FFF:
	les	bx,[3A8Ah]
	mov	es:[bx+30h],ax
	jmp	9014h
3CEE:9009                            90                            .      

l3CEE_900A:
	les	bx,[3A8Ah]
	mov	word ptr es:[bx+30h],0h

l3CEE_9014:
	inc	word ptr [bp-6h]
	mov	ax,[bp-12h]
	cmp	[bp-6h],ax
	ja	9078h

l3CEE_901F:
	push	word ptr [bp-6h]
	call	far 3B5Dh:017Ch
	add	sp,2h
	test	al,2h
	jz	9078h

l3CEE_902E:
	push	word ptr [bp-6h]
	call	far 3B5Dh:0306h
	add	sp,2h
	or	ax,ax
	jge	9042h

l3CEE_903D:
	sub	ax,ax
	jmp	906Dh
3CEE:9041    90                                            .              

l3CEE_9042:
	push	word ptr [bp-6h]
	call	far 3B5Dh:0306h
	add	sp,2h
	les	bx,[3A8Ah]
	mov	cx,es:[bx+26h]
	dec	cx
	cmp	cx,ax
	jge	9062h

l3CEE_905A:
	mov	ax,es:[bx+26h]
	dec	ax
	jmp	906Dh
3CEE:9061    90                                            .              

l3CEE_9062:
	push	word ptr [bp-6h]
	call	far 3B5Dh:0306h
	add	sp,2h

l3CEE_906D:
	les	bx,[3A8Ah]
	mov	es:[bx+2Eh],ax
	jmp	9082h
3CEE:9077                      90                                .        

l3CEE_9078:
	les	bx,[3A8Ah]
	mov	word ptr es:[bx+2Eh],0h

l3CEE_9082:
	inc	word ptr [bp-6h]
	mov	ax,[bp-12h]
	cmp	[bp-6h],ax
	ja	90D5h

l3CEE_908D:
	push	word ptr [bp-6h]
	call	far 3B5Dh:017Ch
	add	sp,2h
	test	al,2h
	jz	90D5h

l3CEE_909C:
	push	word ptr [bp-6h]
	call	far 3B5Dh:0306h
	add	sp,2h
	or	ax,ax
	jge	90B0h

l3CEE_90AB:
	sub	ax,ax
	jmp	90E8h
3CEE:90AF                                              90                .

l3CEE_90B0:
	push	word ptr [bp-6h]
	call	far 3B5Dh:0306h
	add	sp,2h
	les	bx,[3A8Ah]
	mov	cx,es:[bx+28h]
	dec	cx
	cmp	cx,es:[bx+30h]
	jle	90CEh

l3CEE_90CA:
	mov	cx,es:[bx+30h]

l3CEE_90CE:
	cmp	cx,ax
	jl	90D5h

l3CEE_90D2:
	jmp	9186h

l3CEE_90D5:
	les	bx,[3A8Ah]
	mov	ax,es:[bx+28h]
	dec	ax
	cmp	ax,es:[bx+30h]
	jle	90E8h

l3CEE_90E4:
	mov	ax,es:[bx+30h]

l3CEE_90E8:
	mov	[bp-2h],ax
	les	bx,[3A8Ah]
	mov	ax,es:[bx+30h]
	sub	ax,[bp-2h]
	mov	es:[bx+32h],ax
	mov	ax,[bp-4h]
	mov	es:[bx+14h],ax
	add	ah,2h
	mov	es:[bx+16h],ax
	push	ax
	push	es
	push	bx
	call	far 21DCh:0696h
	add	sp,6h
	cmp	ax,1h
	sbb	cx,cx
	neg	cx
	les	bx,[3A8Ah]
	mov	es:[bx+0Eh],cx
	sub	ax,ax
	mov	es:[bx+2Ch],ax
	mov	es:[bx+2Ah],ax
	cmp	cx,ax
	jnz	919Ah

l3CEE_9130:
	push	word ptr es:[bx+14h]
	push	word ptr [bp-8h]
	push	word ptr [bp-0Ah]
	push	word ptr es:[bx+2h]
	push	word ptr es:[bx]
	call	far 2017h:0258h
	add	sp,0Ah
	les	si,[3A8Ah]
	mov	bx,es:[si+14h]
	inc	word ptr es:[si+14h]
	les	si,es:[si]
	mov	byte ptr es:[bx+si],1Ah
	les	bx,[3A8Ah]
	mov	ax,es:[bx+26h]
	imul	word ptr es:[bx+28h]
	push	ax
	call	far 21DCh:097Eh
	add	sp,2h
	les	bx,[3A8Ah]
	mov	es:[bx+2Ah],ax
	mov	es:[bx+2Ch],dx
	or	ax,dx
	jnz	9194h

l3CEE_9181:
	mov	ax,1h
	jmp	9196h

l3CEE_9186:
	push	word ptr [bp-6h]
	call	far 3B5Dh:0306h
	add	sp,2h
	jmp	90E8h

l3CEE_9194:
	sub	ax,ax

l3CEE_9196:
	mov	es:[bx+0Eh],ax

l3CEE_919A:
	cmp	word ptr es:[bx+0Eh],0h
	jz	91A4h

l3CEE_91A1:
	jmp	9280h

l3CEE_91A4:
	sub	ax,ax
	mov	es:[bx+38h],ax
	mov	es:[bx+36h],ax
	mov	word ptr es:[bx+34h],1h
	cmp	word ptr es:[bx+4h],1h
	sbb	ax,ax
	neg	ax
	mov	es:[bx+0Ch],ax
	mov	word ptr es:[bx+10h],0h
	mov	word ptr es:[bx+3Ch],0h
	mov	word ptr es:[bx+8h],1h

l3CEE_91D3:
	mov	ax,3h
	push	ax
	push	cs
	call	858Eh
	add	sp,2h
	mov	[bp-10h],ax
	cmp	ax,16h
	jz	91F8h

l3CEE_91E6:
	cmp	ax,22h
	jz	924Eh

l3CEE_91EB:
	cmp	ax,23h
	jz	9262h

l3CEE_91F0:
	mov	word ptr [bp-10h],0h
	jmp	9204h
3CEE:91F7                      90                                .        

l3CEE_91F8:
	cmp	word ptr [20AEh],1h
	sbb	ax,ax
	neg	ax
	mov	[20AEh],ax

l3CEE_9204:
	cmp	word ptr [bp-10h],0h
	jnz	91D3h

l3CEE_920A:
	les	bx,[3A8Ah]
	cmp	word ptr es:[bx+8h],0h
	jz	9280h

l3CEE_9215:
	cmp	word ptr es:[bx+4h],0h
	jz	9280h

l3CEE_921C:
	mov	bx,es:[bx+36h]
	mov	si,[3A8Ah]
	les	si,es:[si]
	cmp	byte ptr es:[bx+si],1Ah
	jz	9276h

l3CEE_922D:
	les	bx,[3A8Ah]
	cmp	word ptr es:[bx+0Eh],0h
	jnz	9276h

l3CEE_9238:
	push	word ptr es:[bx+36h]
	push	cs
	call	6BCCh
	add	sp,2h
	les	bx,[3A8Ah]
	mov	es:[bx+36h],ax
	jmp	921Ch
3CEE:924D                                        90                    .  

l3CEE_924E:
	les	bx,[3A8Ah]
	cmp	word ptr es:[bx+8h],1h
	sbb	ax,ax
	neg	ax
	mov	es:[bx+8h],ax
	jmp	9204h
3CEE:9261    90                                            .              

l3CEE_9262:
	les	bx,[3A8Ah]
	cmp	word ptr es:[bx+0Ch],1h
	sbb	ax,ax
	neg	ax
	mov	es:[bx+0Ch],ax
	jmp	9204h
3CEE:9275                90                                    .          

l3CEE_9276:
	les	bx,[3A8Ah]
	mov	word ptr es:[bx+36h],0h

l3CEE_9280:
	cmp	word ptr es:[bx+0Eh],0h
	jnz	92F9h

l3CEE_9287:
	push	word ptr [bp-0Eh]
	push	cs
	call	695Eh
	add	sp,2h
	les	bx,[3A8Ah]
	mov	es:[bx+38h],ax
	mov	ax,es:[bx+3Ah]
	add	es:[bx+34h],ax
	mov	bx,es:[bx+38h]
	mov	si,[3A8Ah]
	les	si,es:[si]
	cmp	byte ptr es:[bx+si],1Ah
	jnz	92C9h

l3CEE_92B2:
	les	bx,[3A8Ah]
	push	word ptr es:[bx+34h]
	push	cs
	call	695Eh
	add	sp,2h
	les	bx,[3A8Ah]
	mov	es:[bx+38h],ax

l3CEE_92C9:
	les	bx,[3A8Ah]
	mov	ax,es:[bx+38h]
	mov	es:[bx+36h],ax
	push	cs
	call	6AB8h
	les	bx,[3A8Ah]
	mov	ax,es:[bx+34h]
	dec	ax
	sub	ax,es:[bx+2Eh]
	sbb	cx,cx
	and	ax,cx
	add	ax,es:[bx+2Eh]
	mov	es:[bx+2Eh],ax
	push	cs
	call	89B4h
	mov	[bp-0Ch],ax

l3CEE_92F9:
	les	bx,[3A8Ah]
	mov	ax,es:[bx+2Ah]
	or	ax,es:[bx+2Ch]
	jz	9320h

l3CEE_9307:
	mov	ax,es:[bx+26h]
	imul	word ptr es:[bx+28h]
	push	ax
	push	word ptr es:[bx+2Ch]
	push	word ptr es:[bx+2Ah]
	call	far 21DCh:09B4h
	add	sp,6h

l3CEE_9320:
	les	bx,[3A8Ah]
	cmp	word ptr es:[bx+0Eh],0h
	jz	932Eh

l3CEE_932B:
	jmp	93ECh

l3CEE_932E:
	cmp	word ptr [bp-0Ch],3h
	jz	9337h

l3CEE_9334:
	jmp	93ECh

l3CEE_9337:
	push	word ptr es:[bx+14h]
	lea	ax,[bp-0Ah]
	push	ss
	push	ax
	call	far 21DCh:0696h
	add	sp,6h
	or	ax,ax
	jz	93B0h

l3CEE_934C:
	les	bx,[3A8Ah]
	mov	ax,es:[bx+14h]
	dec	ax
	push	ax
	push	word ptr es:[bx+2h]
	push	word ptr es:[bx]
	push	word ptr [bp-8h]
	push	word ptr [bp-0Ah]
	call	far 2017h:0258h
	add	sp,0Ah
	les	bx,[3A8Ah]
	mov	si,es:[bx+14h]
	les	bx,[bp-0Ah]
	mov	byte ptr es:[bx+si-1h],0h
	les	bx,[3A8Ah]
	mov	ax,es:[bx+14h]
	dec	ax
	push	ax
	push	word ptr es:[bx+14h]
	push	word ptr [bp-8h]
	push	word ptr [bp-0Ah]
	call	far 2368h:0272h
	add	sp,8h
	les	bx,[3A8Ah]
	push	word ptr es:[bx+16h]
	push	word ptr es:[bx+2h]
	push	word ptr es:[bx]
	call	far 21DCh:074Eh
	add	sp,6h
	jmp	93E5h

l3CEE_93B0:
	les	bx,[3A8Ah]
	les	bx,es:[bx]
	mov	ax,es
	les	si,[3A8Ah]
	mov	si,es:[si+14h]
	mov	es,ax
	mov	byte ptr es:[bx+si-1h],0h
	les	bx,[3A8Ah]
	mov	ax,es:[bx+14h]
	dec	ax
	push	ax
	push	word ptr es:[bx+16h]
	push	word ptr es:[bx+2h]
	push	word ptr es:[bx]
	call	far 2368h:0272h
	add	sp,8h

l3CEE_93E5:
	call	far 21DCh:03EEh
	jmp	9467h

l3CEE_93EC:
	cmp	word ptr [bp-12h],0h
	jz	943Ah

l3CEE_93F2:
	mov	ax,1h
	push	ax
	call	far 3B5Dh:017Ch
	add	sp,2h
	test	al,1h
	jz	943Ah

l3CEE_9402:
	mov	ax,1h
	push	ax
	call	far 3B5Dh:028Ah
	add	sp,2h
	push	ax
	mov	ax,1h
	push	ax
	call	far 3B5Dh:0270h
	add	sp,2h
	push	ax
	mov	ax,1h
	push	ax
	call	far 3B5Dh:0252h
	add	sp,2h
	push	dx
	push	ax
	call	far 2368h:0272h
	add	sp,8h
	call	far 21DCh:03EEh
	jmp	9447h
3CEE:9439                            90                            .      

l3CEE_943A:
	mov	ax,60ACh
	push	ds
	push	ax
	call	far 3B5Dh:04C8h
	add	sp,4h

l3CEE_9447:
	les	bx,[3A8Ah]
	mov	ax,es:[bx]
	or	ax,es:[bx+2h]
	jz	9467h

l3CEE_9454:
	push	word ptr es:[bx+16h]
	push	word ptr es:[bx+2h]
	push	word ptr es:[bx]
	call	far 21DCh:074Eh
	add	sp,6h

l3CEE_9467:
	mov	ax,42h
	push	ax
	push	word ptr [3A8Ch]
	push	word ptr [3A8Ah]
	call	far 21DCh:09B4h
	add	sp,6h
	mov	ax,[bp-16h]
	mov	dx,[bp-14h]
