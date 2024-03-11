;;; Segment 49D7 (49D7:0000)
49D7:0000 55 8B EC 33                                     U..3            

l3CEE_CE94:
	fstp	tword ptr [bx+si+0h]

l3CEE_CE95:
	mov	ax,0h

l3CEE_CE96:
	add	[bx+si],al

l3CEE_CE98:
	push	ax
	push	bx
	mov	ax,4CF0h
	push	ax
	push	bx
	mov	ax,1Dh
	push	cs
	push	ax
	call	far 3BC2h:0000h
	mov	sp,bp
	pop	bp
	retf
3CEE:CEAD                                        64 00 00              d..
3CEE:CEB0 11 02 00 D8 6C 00 83 D8 6B 00 83 85 80 38 58 14 ....l...k....8X.
3CEE:CEC0 00 97 0E 49 6E 76 61 6C 69 64 20 65 6E 74 72 79 ...Invalid entry
3CEE:CED0 21 00 59 03 00 9E 6C 00 D8 6C 00 89 C9 00 00 D8 !.Y...l..l......
3CEE:CEE0 19 00 46 D8 6D 00 89 DD D8 6E 00 89 9E 6B 00 79 ..F.m....n...k.y
3CEE:CEF0 58 5C 00 99 07 00 12 99 07 00 12 86 8C 97 05 73 X\.............s
3CEE:CF00 5F 6D 73 67 00 DE 97 01 4E 00 38 58 13 00 9E 6C _msg....N.8X...l
3CEE:CF10 00 C9 01 00 D8 4B 00 46 87 3E D8 6E 00 89 59 2E .....K.F.>.n..Y.
3CEE:CF20 00 97 11 77 2B 2F 6E 20 20 20 20 20 20 20 20 20 ...w+/n         
3CEE:CF30 20 20 20 20 00 BA 99 17 00 EF 8B 99 50 00 D0 7F     ........P...
3CEE:CF40 B1 99 17 00 EF 8B 9E 6C 00 7F B1 9E 6D 00 BA 9E .......l....m...
3CEE:CF50 6E 00 B0 59 00 00 34 00 00 00 00 00 00 00 00 00 n..Y..4.........
