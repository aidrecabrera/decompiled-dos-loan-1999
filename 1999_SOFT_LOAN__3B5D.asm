;;; Segment 3B5D (3B5D:0000)
3B5D:0000 9A B4 09 DC 21 83 C4 06 5E 5F 8B E5 5D CB       ....!...^_..].  

;; fn3B5D_000E: 3B5D:000E
;;   Called from:
;;     3B5D:01BA (in fn3B5D_017C)
;;     3B5D:01CE (in fn3B5D_017C)
;;     3B5D:0239 (in fn3B5D_01E8)
fn3B5D_000E proc
	push	bp
	mov	bp,sp
	mov	ax,[bp+6h]
	cmp	ax,80h
	jz	0040h

l3B5D_0019:
	ja	0064h

l3B5D_001B:
	or	ax,ax
	jz	0030h

l3B5D_001F:
	cmp	ax,2h
	jz	003Ah

l3B5D_0024:
	cmp	ax,8h
	jz	003Ah

l3B5D_0029:
	cmp	ax,20h
	jz	0046h

l3B5D_002E:
	jmp	007Dh

l3B5D_0030:
	sub	ax,ax
	pop	bp
	retf

l3B5D_0034:
	mov	ax,1h
	pop	bp
	retf
3B5D:0039                            90                            .      

l3B5D_003A:
	mov	ax,2h
	pop	bp
	retf
3B5D:003F                                              90                .

l3B5D_0040:
	mov	ax,4h
	pop	bp
	retf
3B5D:0045                90                                    .          

l3B5D_0046:
	mov	ax,8h
	pop	bp
	retf
3B5D:004B                                  90                        .    

l3B5D_004C:
	mov	ax,10h
	jmp	007Dh
3B5D:0051    90                                            .              

l3B5D_0052:
	mov	ax,20h
	jmp	007Dh
3B5D:0057                      90                                .        

l3B5D_0058:
	mov	ax,41h
	jmp	007Dh
3B5D:005D                                        90                    .  

l3B5D_005E:
	mov	ax,200h
	jmp	007Dh
3B5D:0063          90                                        .            

l3B5D_0064:
	cmp	ax,100h
	jz	0034h

l3B5D_0069:
	cmp	ax,300h
	jz	0058h

l3B5D_006E:
	cmp	ax,400h
	jz	004Ch

l3B5D_0073:
	cmp	ax,800h
	jz	0052h

l3B5D_0078:
	cmp	ax,2000h
	jz	005Eh

l3B5D_007D:
	pop	bp
	retf
3B5D:007F                                              90                .

;; fn3B5D_0080: 3B5D:0080
;;   Called from:
;;     3B5D:025B (in fn3B5D_0252)
;;     3B5D:0279 (in fn3B5D_0270)
;;     3B5D:0328 (in fn3B5D_0306)
;;     3B5D:0346 (in fn3B5D_0306)
;;     3B5D:0485 (in fn3B5D_047C)
fn3B5D_0080 proc
	push	bp
	mov	bp,sp
	sub	sp,8h
	mov	ax,[bp+6h]
	sub	ax,[127Ch]
	mov	cl,4h
	shl	ax,cl
	add	ax,[1296h]
	mov	dx,[1298h]
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	les	bx,[bp-4h]
	test	word ptr es:[bx],800h
	jz	00F4h

l3B5D_00A9:
	les	bx,es:[bx+8h]
	test	word ptr es:[bx],2000h
	jz	00E2h

l3B5D_00B4:
	les	bx,[bp-4h]
	les	bx,es:[bx+8h]
	mov	ax,es:[bx+6h]
	mov	dx,es:[bx+8h]
	mov	[bp-8h],ax
	mov	[bp-6h],dx
	mov	ax,[bp+8h]
	mov	cx,ax
	shl	ax,1h
	add	ax,cx
	shl	ax,1h
	add	ax,cx
	shl	ax,1h
	add	ax,[bp-8h]
	sub	ax,8h
	mov	sp,bp
	pop	bp
	retf

l3B5D_00E2:
	les	bx,[bp-4h]
	mov	ax,es:[bx+8h]
	mov	dx,es:[bx+0Ah]
	add	ax,6h
	mov	sp,bp
	pop	bp
	retf

l3B5D_00F4:
	mov	ax,bx
	mov	dx,es
	add	ax,8h
	mov	sp,bp
	pop	bp
	retf
3B5D:00FF                                              90                .

;; fn3B5D_0100: 3B5D:0100
;;   Called from:
;;     3B5D:0312 (in fn3B5D_0306)
fn3B5D_0100 proc
	push	bp
	mov	bp,sp
	sub	sp,8h
	push	si
	mov	ax,[bp+6h]
	sub	ax,[127Ch]
	mov	cl,4h
	shl	ax,cl
	add	ax,[1296h]
	mov	dx,[1298h]
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	les	bx,[bp-4h]
	test	word ptr es:[bx],800h
	jz	0176h

l3B5D_012A:
	les	bx,es:[bx+8h]
	test	word ptr es:[bx],2000h
	jz	0166h

l3B5D_0135:
	les	bx,[bp-4h]
	les	bx,es:[bx+8h]
	mov	ax,es:[bx+6h]
	mov	dx,es:[bx+8h]
	mov	[bp-8h],ax
	mov	[bp-6h],dx
	mov	si,[bp+8h]
	mov	ax,si
	shl	si,1h
	add	si,ax
	shl	si,1h
	add	si,ax
	shl	si,1h
	les	bx,[bp-8h]
	mov	ax,es:[bx+si-0Eh]
	pop	si
	mov	sp,bp
	pop	bp
	retf
3B5D:0165                90                                    .          

l3B5D_0166:
	les	bx,[bp-4h]
	les	bx,es:[bx+8h]

l3B5D_016D:
	mov	ax,es:[bx]
	pop	si
	mov	sp,bp
	pop	bp
	retf
3B5D:0175                90                                    .          

l3B5D_0176:
	les	bx,[bp-4h]
	jmp	016Dh
3B5D:017B                                  90                        .    

;; fn3B5D_017C: 3B5D:017C
;;   Called from:
;;     3CEE:61F4 (in fn3CEE_6121)
;;     3CEE:629D (in fn3CEE_6121)
;;     3CEE:6332 (in fn3CEE_6121)
;;     3CEE:63D7 (in fn3CEE_6121)
;;     3CEE:6468 (in fn3CEE_6121)
;;     3CEE:650D (in fn3CEE_6121)
;;     3CEE:8BDB (in fn3CEE_4EAC)
;;     3CEE:8C24 (in fn3CEE_4EAC)
;;     3CEE:8C88 (in fn3CEE_4EAC)
;;     3CEE:8CF4 (in fn3CEE_4EAC)
;;     3CEE:8D5D (in fn3CEE_4EAC)
;;     3CEE:8DE7 (in fn3CEE_4EAC)
;;     3CEE:8E26 (in fn3CEE_4EAC)
;;     3CEE:8E83 (in fn3CEE_4EAC)
;;     3CEE:8EC4 (in fn3CEE_4EAC)
;;     3CEE:8F05 (in fn3CEE_4EAC)
;;     3CEE:8FB5 (in fn3CEE_4EAC)
;;     3CEE:9022 (in fn3CEE_4EAC)
;;     3CEE:9090 (in fn3CEE_4EAC)
;;     3CEE:93F6 (in fn3CEE_4EAC)
fn3B5D_017C proc
	push	bp
	mov	bp,sp
	sub	sp,6h
	cmp	word ptr [bp+6h],0h
	jz	01DAh

l3B5D_0188:
	mov	ax,[127Ch]
	cmp	[bp+6h],ax
	ja	01E2h

l3B5D_0190:
	mov	ax,[bp+6h]
	sub	ax,[127Ch]
	mov	cl,4h
	shl	ax,cl
	add	ax,[1296h]
	mov	dx,[1298h]
	mov	[bp-6h],ax
	mov	[bp-4h],dx
	les	bx,[bp-6h]
	test	word ptr es:[bx],800h
	jz	01C8h

l3B5D_01B3:
	les	bx,es:[bx+8h]
	push	word ptr es:[bx]
	push	cs
	call	000Eh
	add	sp,2h
	or	al,20h
	mov	sp,bp
	pop	bp
	retf
3B5D:01C7                      90                                .        

l3B5D_01C8:
	les	bx,[bp-6h]
	push	word ptr es:[bx]

l3B5D_01CE:
	push	cs
	call	000Eh
	add	sp,2h
	mov	sp,bp
	pop	bp
	retf
3B5D:01D9                            90                            .      

l3B5D_01DA:
	mov	ax,[127Ch]
	mov	sp,bp
	pop	bp
	retf
3B5D:01E1    90                                            .              

l3B5D_01E2:
	sub	ax,ax
	push	ax
	jmp	01CEh
3B5D:01E7                      90                                .        

;; fn3B5D_01E8: 3B5D:01E8
;;   Called from:
;;     3CEE:6106 (in fn3CEE_6121)
;;     3CEE:611B (in fn3CEE_6121)
;;     3CEE:6244 (in fn3CEE_6121)
;;     3CEE:6259 (in fn3CEE_6121)
;;     3CEE:637E (in fn3CEE_6121)
;;     3CEE:6393 (in fn3CEE_6121)
;;     3CEE:64B4 (in fn3CEE_6121)
;;     3CEE:64C9 (in fn3CEE_6121)
fn3B5D_01E8 proc
	push	bp
	mov	bp,sp
	sub	sp,8h
	push	si
	mov	ax,[bp+6h]
	sub	ax,[127Ch]
	mov	cl,4h
	shl	ax,cl
	add	ax,[1296h]
	mov	dx,[1298h]
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	cmp	word ptr [bp+8h],0h
	jz	0246h

l3B5D_020E:
	les	bx,[bp-4h]
	les	bx,es:[bx+8h]
	mov	ax,es:[bx+6h]
	mov	dx,es:[bx+8h]
	mov	[bp-8h],ax
	mov	[bp-6h],dx
	mov	si,[bp+8h]
	mov	ax,si
	shl	si,1h
	add	si,ax
	shl	si,1h
	add	si,ax
	shl	si,1h
	les	bx,[bp-8h]
	push	word ptr es:[bx+si-0Eh]
	push	cs
	call	000Eh
	add	sp,2h
	pop	si
	mov	sp,bp
	pop	bp
	retf
3B5D:0245                90                                    .          

l3B5D_0246:
	les	bx,[bp-4h]
	mov	ax,es:[bx+2h]
	pop	si
	mov	sp,bp
	pop	bp
	retf

;; fn3B5D_0252: 3B5D:0252
;;   Called from:
;;     3CEE:612B (in fn3CEE_6121)
;;     3CEE:6269 (in fn3CEE_6121)
;;     3CEE:62C3 (in fn3CEE_6121)
;;     3CEE:63A3 (in fn3CEE_6121)
;;     3CEE:63FD (in fn3CEE_6121)
;;     3CEE:64D9 (in fn3CEE_6121)
;;     3CEE:6533 (in fn3CEE_6121)
;;     3CEE:8BEA (in fn3CEE_4EAC)
;;     3CEE:8E35 (in fn3CEE_4EAC)
;;     3CEE:9420 (in fn3CEE_4EAC)
fn3B5D_0252 proc
	push	bp
	mov	bp,sp
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	0080h
	add	sp,4h
	mov	bx,ax
	mov	es,dx
	mov	ax,es:[bx]
	mov	dx,es:[bx+2h]
	pop	bp
	retf
3B5D:026F                                              90                .

;; fn3B5D_0270: 3B5D:0270
;;   Called from:
;;     3CEE:9413 (in fn3CEE_4EAC)
fn3B5D_0270 proc
	push	bp
	mov	bp,sp
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	0080h
	add	sp,4h
	mov	bx,ax
	mov	es,dx
	mov	ax,es:[bx+4h]
	pop	bp
	retf

;; fn3B5D_028A: 3B5D:028A
;;   Called from:
;;     3CEE:8BFB (in fn3CEE_4EAC)
;;     3CEE:9406 (in fn3CEE_4EAC)
fn3B5D_028A proc
	push	bp
	mov	bp,sp
	sub	sp,8h
	push	si
	mov	ax,[bp+6h]
	sub	ax,[127Ch]
	mov	cl,4h
	shl	ax,cl
	add	ax,[1296h]
	mov	dx,[1298h]
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	les	bx,[bp-4h]
	test	word ptr es:[bx],800h
	jz	0300h

l3B5D_02B4:
	les	bx,es:[bx+8h]
	test	word ptr es:[bx],2000h
	jz	02F0h

l3B5D_02BF:
	les	bx,[bp-4h]
	les	bx,es:[bx+8h]
	mov	ax,es:[bx+6h]
	mov	dx,es:[bx+8h]
	mov	[bp-8h],ax
	mov	[bp-6h],dx
	mov	si,[bp+8h]
	mov	ax,si
	shl	si,1h
	add	si,ax
	shl	si,1h
	add	si,ax
	shl	si,1h
	les	bx,[bp-8h]
	mov	ax,es:[bx+si-0Ch]
	pop	si
	mov	sp,bp
	pop	bp
	retf
3B5D:02EF                                              90                .

l3B5D_02F0:
	les	bx,[bp-4h]
	les	bx,es:[bx+8h]

l3B5D_02F7:
	mov	ax,es:[bx+2h]
	pop	si
	mov	sp,bp
	pop	bp
	retf

l3B5D_0300:
	les	bx,[bp-4h]
	jmp	02F7h
3B5D:0305                90                                    .          

;; fn3B5D_0306: 3B5D:0306
;;   Called from:
;;     3CEE:8C33 (in fn3CEE_4EAC)
;;     3CEE:8C47 (in fn3CEE_4EAC)
;;     3CEE:8C5D (in fn3CEE_4EAC)
;;     3CEE:8C97 (in fn3CEE_4EAC)
;;     3CEE:8CAB (in fn3CEE_4EAC)
;;     3CEE:8CC9 (in fn3CEE_4EAC)
;;     3CEE:8D03 (in fn3CEE_4EAC)
;;     3CEE:8D1F (in fn3CEE_4EAC)
;;     3CEE:8D35 (in fn3CEE_4EAC)
;;     3CEE:8D6C (in fn3CEE_4EAC)
;;     3CEE:8D8F (in fn3CEE_4EAC)
;;     3CEE:8DA5 (in fn3CEE_4EAC)
;;     3CEE:8E95 (in fn3CEE_4EAC)
;;     3CEE:8ED3 (in fn3CEE_4EAC)
;;     3CEE:8F17 (in fn3CEE_4EAC)
;;     3CEE:8F27 (in fn3CEE_4EAC)
;;     3CEE:8F35 (in fn3CEE_4EAC)
;;     3CEE:8F4B (in fn3CEE_4EAC)
;;     3CEE:8FC4 (in fn3CEE_4EAC)
;;     3CEE:8FD7 (in fn3CEE_4EAC)
;;     3CEE:8FF7 (in fn3CEE_4EAC)
;;     3CEE:9031 (in fn3CEE_4EAC)
;;     3CEE:9045 (in fn3CEE_4EAC)
;;     3CEE:9065 (in fn3CEE_4EAC)
;;     3CEE:909F (in fn3CEE_4EAC)
;;     3CEE:90B3 (in fn3CEE_4EAC)
;;     3CEE:9189 (in fn3CEE_4EAC)
;;     3CEE:DA2B (in fn3CEE_DA1B)
fn3B5D_0306 proc
	push	bp
	mov	bp,sp
	sub	sp,8h
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	0100h
	add	sp,4h
	mov	[bp-2h],ax
	test	byte ptr [bp-2h],2h
	jz	033Ah

l3B5D_0322:
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	0080h
	add	sp,4h
	mov	bx,ax
	mov	es,dx
	mov	ax,es:[bx]
	mov	sp,bp
	pop	bp
	retf

l3B5D_033A:
	test	byte ptr [bp-2h],8h
	jz	0374h

l3B5D_0340:
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	0080h
	add	sp,4h
	mov	[bp-6h],ax
	mov	[bp-4h],dx
	les	bx,[bp-6h]
	push	word ptr es:[bx+6h]
	push	word ptr es:[bx+4h]
	push	word ptr es:[bx+2h]
	push	word ptr es:[bx]
	call	far 3CEEh:0C3Eh
	add	sp,8h
	mov	[bp-8h],ax
	mov	sp,bp
	pop	bp
	retf

l3B5D_0374:
	sub	ax,ax
	mov	sp,bp
	pop	bp
	retf
3B5D:037A                               55 8B EC 83 EC 0A           U.....
3B5D:0380 FF 76 08 FF 76 06 0E E8 76 FD 83 C4 04 89 46 FE .v..v...v.....F.
3B5D:0390 3D 02 00 74 05 3D 20 00 75 1C FF 76 08 FF 76 06 =..t.= .u..v..v.
3B5D:03A0 0E E8 DC FC 83 C4 04 8B D8 8E C2 26 8B 07 26 8B ...........&..&.
3B5D:03B0 57 02 8B E5 5D CB F6 46 FE 08 74 38 FF 76 08 FF W...]..F..t8.v..
3B5D:03C0 76 06 0E E8 BA FC 83 C4 04 89 46 FA 89 56 FC C4 v.........F..V..
3B5D:03D0 5E FA 26 FF 77 06 26 FF 77 04 26 FF 77 02 26 FF ^.&.w.&.w.&.w.&.
3B5D:03E0 37 9A 5A 0C EE 3C 83 C4 08 89 46 F6 89 56 F8 8B 7.Z..<....F..V..
3B5D:03F0 E5 5D CB 90 2B C0 99 8B E5 5D CB 90 55 8B EC 83 .]..+....]..U...
3B5D:0400 EC 06 57 56 FF 76 08 FF 76 06 0E E8 F2 FC 83 C4 ..WV.v..v.......
3B5D:0410 04 89 46 FE F6 46 FE 02 74 40 FF 76 08 FF 76 06 ..F..F..t@.v..v.
3B5D:0420 0E E8 5C FC 83 C4 04 89 46 FA 89 56 FC C4 5E FA ..\.....F..V..^.
3B5D:0430 26 FF 77 02 26 FF 37 9A F7 0C EE 3C 83 C4 04 BF &.w.&.7....<....
3B5D:0440 96 24 8B F0 1E 07 1E 8E DA A5 A5 A5 A5 1F B8 96 .$..............
3B5D:0450 24 8C DA 5E 5F 8B E5 5D CB 90 F6 46 FE 08 74 16 $..^_..]...F..t.
3B5D:0460 FF 76 08 FF 76 06 0E E8 16 FC 83 C4 04 89 46 FA .v..v.........F.
3B5D:0470 89 56 FC EB CA 90 B8 9E 24 EB D6 90             .V......$...    

;; fn3B5D_047C: 3B5D:047C
;;   Called from:
;;     3CEE:8DF6 (in fn3CEE_4EAC)
fn3B5D_047C proc
	push	bp
	mov	bp,sp
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	0080h
	add	sp,4h
	mov	bx,ax
	mov	es,dx
	mov	ax,es:[bx]
	pop	bp
	retf
3B5D:0495                90 55 8B EC 2B C0 50 FF 76 08 FF      .U..+.P.v..
3B5D:04A0 76 06 0E E8 DA FB 83 C4 04 8B D8 8E C2 26 FF 77 v............&.w
3B5D:04B0 02 26 FF 37 B8 86 24 1E 50 9A FA 06 D6 38 83 C4 .&.7..$.P....8..
3B5D:04C0 0A B8 86 24 8C DA 5D CB                         ...$..].        

;; fn3B5D_04C8: 3B5D:04C8
;;   Called from:
;;     3CEE:943F (in fn3CEE_4EAC)
fn3B5D_04C8 proc
	push	bp
	mov	bp,sp
	sub	sp,6h
	push	si
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 2017h:03F5h
	add	sp,4h
	inc	ax
	mov	[bp-6h],ax
	push	ax
	call	far 21DCh:0718h
	add	sp,2h
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	mov	ax,[bp-6h]
	dec	ax
	push	ax
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	dx
	push	word ptr [bp-4h]
	call	far 2017h:02ECh
	add	sp,0Ah
	mov	si,[bp-6h]
	les	bx,[bp-4h]
	mov	byte ptr es:[bx+si-1h],0h
	push	si
	push	es
	push	bx
	call	far 2368h:022Eh
	add	sp,6h
	call	far 21DCh:03EEh
	pop	si
	mov	sp,bp
	pop	bp
	retf
3B5D:0527                      90 55 8B EC 83 EC 06 56 8B        .U.....V.
3B5D:0530 46 0A 40 89 46 FA 50 9A 18 07 DC 21 83 C4 02 89 F.@.F.P....!....
3B5D:0540 46 FC 89 56 FE FF 76 0A FF 76 08 FF 76 06 52 50 F..V..v..v..v.RP
3B5D:0550 9A EC 02 17 20 83 C4 0A 8B 5E 0A C4 76 FC 26 C6 .... ....^..v.&.
3B5D:0560 00 00 53 FF 76 FA 06 56 9A 72 02 68 23 83 C4 08 ..S.v..V.r.h#...
3B5D:0570 9A EE 03 DC 21 5E 8B E5 5D CB                   ....!^..].      

;; fn3B5D_057A: 3B5D:057A
;;   Called from:
;;     3CEE:3AAC (in fn3CEE_3889)
fn3B5D_057A proc
	push	bp
	mov	bp,sp
	mov	ax,[bp+6h]
	cwd
	push	dx
	push	ax
	call	far 2368h:0206h
	add	sp,4h
	call	far 21DCh:03EEh
	pop	bp
	retf

;; fn3B5D_0592: 3B5D:0592
;;   Called from:
;;     3CEE:DA67 (in fn3CEE_DA1B)
fn3B5D_0592 proc
	push	bp
	mov	bp,sp
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 2368h:0206h
	add	sp,4h
	call	far 21DCh:03EEh
	pop	bp
	retf
3B5D:05AA                               55 8B EC FF 36 F8           U...6.
3B5D:05B0 13 B8 FF 00 50 FF 76 0C FF 76 0A FF 76 08 FF 76 ....P.v..v..v..v
3B5D:05C0 06 9A B0 01 68 23 83 C4 0C 9A EE 03 DC 21 5D CB ....h#.......!].

;; fn3B5D_05D0: 3B5D:05D0
;;   Called from:
;;     3CEE:6806 (in fn3CEE_67C4)
;;     3CEE:6806 (in fn3CEE_67B9)
fn3B5D_05D0 proc
	push	bp
	mov	bp,sp
	push	word ptr [bp+6h]
	call	far 2368h:02F4h
	add	sp,2h
	call	far 21DCh:03EEh
	pop	bp
	retf
3B5D:05E5                90 55 8B EC 83 EC 04 2B C0 50 8D      .U.....+.P.
3B5D:05F0 46 FC 16 50 FF 76 08 FF 76 06 9A F5 03 17 20 83 F..P.v..v..... .
3B5D:0600 C4 04 50 FF 76 08 FF 76 06 9A DC 03 D6 38 83 C4 ..P.v..v.....8..
3B5D:0610 0C FF 76 FE FF 76 FC 9A D2 02 68 23 83 C4 04 9A ..v..v....h#....
3B5D:0620 EE 03 DC 21 8B E5 5D CB CB 90 55 8B EC FF 76 06 ...!..]...U...v.
3B5D:0630 9A 7E 09 DC 21 83 C4 02 5D CB 55 8B EC FF 76 0A .~..!...].U...v.
3B5D:0640 FF 76 08 FF 76 06 9A B4 09 DC 21 83 C4 06 5D CB .v..v.....!...].
