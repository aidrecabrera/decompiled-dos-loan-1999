;;; Segment 38AD (38AD:0000)
38AD:0000 C7 06 E4 0E 01 00 5E CB                         ......^.        

;; fn38AD_0008: 38AD:0008
;;   Called from:
;;     38AD:0026 (in fn38AD_001E)
fn38AD_0008 proc
	cmp	al,61h
	jc	0012h

l38AD_000C:
	cmp	al,7Ah
	ja	0012h

l38AD_0010:
	and	al,5Fh

l38AD_0012:
	ret
38AD:0013          3C 41 72 06 3C 5A 77 02 0C 20 C3          <Ar.<Zw.. .  

;; fn38AD_001E: 38AD:001E
;;   Called from:
;;     1825:666C (in fn1825_648A)
;;     1825:66FD (in fn1825_66D4)
;;     21DC:0E09 (in fn21DC_0DE4)
;;     2BC7:03F6 (in fn2BC7_03C2)
;;     2BC7:04C8 (in fn2BC7_0494)
;;     31FF:019A (in fn31FF_0106)
;;     31FF:0332 (in fn31FF_026E)
;;     31FF:04F6 (in fn31FF_026E)
;;     31FF:059C (in fn31FF_026E)
;;     31FF:05B7 (in fn31FF_026E)
;;     31FF:06EE (in fn31FF_065E)
;;     31FF:0726 (in fn31FF_065E)
;;     31FF:0741 (in fn31FF_065E)
;;     31FF:0788 (in fn31FF_065E)
;;     3431:0DE7 (in fn3431_0DDE)
;;     3431:1201 (in fn3431_0E74)
;;     3431:138E (in fn3431_133C)
fn38AD_001E proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	mov	al,[bp+0Ah]
	call	0008h
	mov	ah,0h
	pop	di
	pop	si
	pop	bp
	retf
38AD:002F                                              55                U
38AD:0030 56 57 8B EC 8A 46 0A E8 D9 FF B4 00 5F 5E 5D CB VW...F......_^].

;; fn38AD_0040: 38AD:0040
;;   Called from:
;;     1825:662D (in fn1825_648A)
;;     1825:6645 (in fn1825_648A)
;;     1825:6659 (in fn1825_648A)
;;     1825:66EB (in fn1825_66D4)
;;     20B2:1061 (in fn20B2_1014)
;;     2644:178A (in fn2644_1756)
;;     2644:1927 (in fn2644_17C8)
;;     31FF:013C (in fn31FF_0106)
;;     31FF:016F (in fn31FF_0106)
;;     31FF:0182 (in fn31FF_0106)
;;     31FF:01D0 (in fn31FF_0106)
;;     31FF:01EE (in fn31FF_0106)
;;     31FF:02BC (in fn31FF_026E)
;;     31FF:02F7 (in fn31FF_026E)
;;     31FF:0318 (in fn31FF_026E)
;;     31FF:0372 (in fn31FF_026E)
;;     31FF:0393 (in fn31FF_026E)
;;     31FF:03C2 (in fn31FF_026E)
;;     31FF:03F6 (in fn31FF_026E)
;;     31FF:041C (in fn31FF_026E)
;;     31FF:0468 (in fn31FF_026E)
;;     31FF:1837 (in fn31FF_17DA)
;;     3431:1050 (in fn3431_0E74)
;;     3431:115A (in fn3431_0E74)
;;     3431:143D (in fn3431_133C)
;;     38D6:0D43 (in fn38D6_0CDE)
;;     3CEE:7978 (in fn3CEE_794E)
;;     3CEE:7994 (in fn3CEE_794E)
;;     3CEE:79C4 (in fn3CEE_79B4)
;;     3CEE:79E3 (in fn3CEE_79D3)
;;     3CEE:79E3 (in fn3CEE_79D3)
;;     3CEE:7A1F (in fn3CEE_7A56)
;;     3CEE:7A39 (in fn3CEE_7A56)
;;     3CEE:7A73 (in fn3CEE_7A56)
;;     3CEE:7A8F (in fn3CEE_7A56)
;;     3CEE:7AF7 (in fn3CEE_7AD2)
;;     3CEE:7B13 (in fn3CEE_7AD2)
;;     3CEE:7B44 (in fn3CEE_7AD2)
;;     3CEE:7B85 (in fn3CEE_7AD2)
;;     3CEE:7BA1 (in fn3CEE_7AD2)
;;     3CEE:7BBD (in fn3CEE_7AD2)
;;     3CEE:889A (in fn3CEE_8634)
;;     3CEE:88E4 (in fn3CEE_8634)
fn38AD_0040 proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	mov	al,[bp+0Ah]
	mov	bx,0h
	cmp	al,41h
	jc	005Eh

l38AD_004F:
	cmp	al,5Ah
	jbe	005Bh

l38AD_0053:
	cmp	al,61h
	jc	005Eh

l38AD_0057:
	cmp	al,7Ah
	ja	005Eh

l38AD_005B:
	or	bx,1h

l38AD_005E:
	cmp	al,30h
	jc	0069h

l38AD_0062:
	cmp	al,39h
	ja	0069h

l38AD_0066:
	or	bx,2h

l38AD_0069:
	cmp	al,20h
	jz	0071h

l38AD_006D:
	cmp	al,9h
	jnz	0074h

l38AD_0071:
	or	bx,4h

l38AD_0074:
	cmp	al,59h
	jz	0084h

l38AD_0078:
	cmp	al,79h
	jz	0084h

l38AD_007C:
	cmp	al,54h
	jz	0084h

l38AD_0080:
	cmp	al,74h
	jnz	0087h

l38AD_0084:
	or	bx,8h

l38AD_0087:
	cmp	al,4Eh
	jz	0097h

l38AD_008B:
	cmp	al,6Eh
	jz	0097h

l38AD_008F:
	cmp	al,46h
	jz	0097h

l38AD_0093:
	cmp	al,66h
	jnz	009Ah

l38AD_0097:
	or	bx,10h

l38AD_009A:
	mov	ax,bx
	pop	di
	pop	si
	pop	bp
	retf
38AD:00A0 55 56 57 8B EC 8B 5E 0A D1 E3 8B 9F 5A 22 1E 8B UVW...^.....Z"..
38AD:00B0 C3 5A 5F 5E 5D CB 55 56 57 8B EC 8B 5E 0A D1 E3 .Z_^].UVW...^...
38AD:00C0 8B 9F C0 22 1E 8B C3 5A 5F 5E 5D CB             ..."...Z_^].    

;; fn38AD_00CC: 38AD:00CC
;;   Called from:
;;     3CEE:8845 (in fn3CEE_8634)
;;     3CEE:8855 (in fn3CEE_8634)
fn38AD_00CC proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	mov	bx,239Ah
	push	ds
	mov	ax,bx
	pop	dx
	pop	di
	pop	si
	pop	bp
	retf
38AD:00DC                                     55 56 57 8B             UVW.
38AD:00E0 EC 8B 5E 0A D1 E3 8B 9F 82 23 1E 8B C3 5A 5F 5E ..^......#...Z_^
38AD:00F0 5D CB                                           ].              

;; fn38AD_00F2: 38AD:00F2
;;   Called from:
;;     2017:04C0 (in fn2017_0489)
;;     2368:0D91 (in fn2368_0D20)
;;     2BC7:00A2 (in fn2BC7_0068)
;;     2BC7:00F4 (in fn2BC7_0068)
;;     2EB3:08E1 (in fn2EB3_07B2)
;;     2EB3:0CAC (in fn2EB3_0BF0)
;;     2EB3:0D02 (in fn2EB3_0BF0)
;;     2EB3:0E0C (in fn2EB3_0BF0)
;;     2EB3:250D (in fn2EB3_24C6)
;;     31FF:0AF1 (in fn31FF_0AAE)
fn38AD_00F2 proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	push	ds
	mov	cx,[bp+12h]
	les	di,[bp+0Eh]
	lds	si,[bp+0Ah]
	mov	ax,0h
	jcxz	0113h

l38AD_0106:
	cld
	rep cmpsb
	jz	0113h

l38AD_010B:
	mov	ax,1h
	ja	0113h

l38AD_0110:
	mov	ax,0FFFFh

l38AD_0113:
	pop	ds
	pop	di
	pop	si
	pop	bp
	retf

;; fn38AD_0118: 38AD:0118
;;   Called from:
;;     2644:176F (in fn2644_1756)
;;     31FF:0117 (in fn31FF_0106)
;;     31FF:028A (in fn31FF_026E)
;;     31FF:1B19 (in fn31FF_1B0A)
;;     3CEE:0D3E (in fn3CEE_0D30)
fn38AD_0118 proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	les	di,[bp+0Ah]
	mov	cx,[bp+0Eh]
	mov	bx,cx
	mov	al,20h
	cld
	or	cx,cx

l38AD_012A:
	rep scasb

l38AD_012C:
	jz	0142h

l38AD_012E:
	mov	ah,es:[di-1h]
	cmp	ah,9h
	jz	012Ah

l38AD_0137:
	cmp	ah,0Dh
	jz	012Ah

l38AD_013C:
	cmp	ah,0Ah
	jz	012Ah

l38AD_0141:
	inc	cx

l38AD_0142:
	sub	bx,cx
	mov	ax,bx
	pop	di
	pop	si
	pop	bp
	retf

;; fn38AD_014A: 38AD:014A
;;   Called from:
;;     3CEE:0D4F (in fn3CEE_0D30)
fn38AD_014A proc
	push	bp
	push	si
	push	di
	mov	bp,sp
	mov	dx,ds
	lds	si,[bp+0Ah]
	mov	cx,[bp+0Eh]
	jcxz	018Eh

l38AD_0159:
	mov	bx,cx
	lodsb
	cmp	al,2Dh
	jz	016Fh

l38AD_0160:
	cmp	al,2Bh
	jz	016Fh

l38AD_0164:
	jmp	0167h

l38AD_0166:
	lodsb

l38AD_0167:
	cmp	al,30h
	jc	0174h

l38AD_016B:
	cmp	al,39h
	ja	0189h

l38AD_016F:
	loop	0166h

l38AD_0171:
	jmp	018Ah
38AD:0173          90                                        .            

l38AD_0174:
	cmp	al,2Eh
	jz	0184h

l38AD_0178:
	jmp	0189h
38AD:017A                               90                          .     

l38AD_017B:
	lodsb
	cmp	al,30h
	jc	0189h

l38AD_0180:
	cmp	al,39h
	ja	0189h

l38AD_0184:
	loop	017Bh

l38AD_0186:
	jmp	018Ah
38AD:0188                         90                              .       

l38AD_0189:
	dec	cx

l38AD_018A:
	xchg	bx,cx
	sub	cx,bx

l38AD_018E:
	mov	ds,dx
	mov	ax,cx
	pop	di
	pop	si
	pop	bp
	retf
38AD:0196                   55 56 57 8B EC 83 EC 0A FC C4       UVW.......
38AD:01A0 06 66 24 8C 46 FE 89 46 FC A1 6A 24 89 46 FA 8B .f$.F..F..j$.F..
38AD:01B0 0E 74 24 C4 3E 70 24 C5 36 6C 24 8B 46 0A 0B C0 .t$.>p$.6l$.F...
38AD:01C0 74 04 F7 E1 03 F0 8B 46 0C 0B C0 74 04 F7 E1 03 t......F...t....
38AD:01D0 F8 89 76 F8 89 7E F6 8C DA C5 5E FC 8B 07 8B 4F ..v..~....^....O
38AD:01E0 02 8B 5F 04 03 F0 03 F8 2B C0 8E DA F7 C3 80 00 .._.....+.......
38AD:01F0 75 63 F7 C3 20 00 75 2F F3 A6 72 14 77 19 40 FF uc.. .u/..r.w.@.
38AD:0200 4E FA 74 17 8B 7E F6 8B 76 F8 83 46 FC 06 EB C9 N.t..~..v..F....
38AD:0210 40 0B DB 74 06 EB 4D 0B DB 75 49 BB 8E 4D 8E DB @..t..M..uI..M..
38AD:0220 83 C4 0A 5F 5E 5D CB AC 26 8A 25 47 3C 2D 74 14 ..._^]..&.%G<-t.
38AD:0230 3A C4 E1 F3 91 74 C7 2B C0 80 FD 2D 74 D9 3A CD :....t.+...-t.:.
38AD:0240 7C CE EB D3 80 FC 2D B8 00 00 75 C4 49 F3 A6 74 |.....-...u.I..t
38AD:0250 AD 77 BD EB C2 B9 02 00 03 F1 03 F9 FD F3 A7 77 .w.............w
38AD:0260 BA 40 EB B7 F7 C3 02 00 74 20 53 26 8A 45 FF E8 .@......t S&.E..
38AD:0270 96 FD 8A D8 8A 44 FF E8 8E FD 3A C3 5B B8 00 00 .....D....:.[...
38AD:0280 77 08 72 05 E3 04 E9 6F FF 40 F7 C3 04 00 75 02 w.r....o.@....u.
