;;; Segment 2644 (2644:0000)
2644:0000 12 8B 16 B4 12 A3 A2 12 89 16 A4 12 CB 90       ..............  

;; fn2644_000E: 2644:000E
;;   Called from:
;;     21DC:10C0 (in fn21DC_0EC2)
fn2644_000E proc
	mov	ax,400h
	push	ax
	mov	ax,130Ah
	push	ds
	push	ax
	call	far 21DCh:06DCh
	add	sp,6h
	or	ax,ax
	jz	003Eh

l2644_0023:
	mov	ax,400h
	push	ax
	sub	ax,ax
	push	ax
	push	word ptr [130Ch]
	push	word ptr [130Ah]
	call	far 2017h:0228h
	add	sp,8h
	mov	ax,1h
	retf

l2644_003E:
	sub	ax,ax
	retf
2644:0041    90 55 8B EC 83 EC 04 9A 60 0D DC 21 C4 1E 0A  .U......`..!...
2644:0050 13 26 8B 07 26 8B 57 02 89 46 FC 89 56 FE 0B C2 .&..&.W..F..V...
2644:0060 74 46 B8 01 00 50 52 FF 76 FC 0E E8 A4 1E 83 C4 tF...PR.v.......
2644:0070 06 B8 01 00 99 52 50 FF 76 FE FF 76 FC 0E E8 3D .....RP.v..v...=
2644:0080 22 83 C4 08 C4 5E FC 26 83 BF BA 00 00 74 09 06 "....^.&.....t..
2644:0090 53 0E E8 2B 24 83 C4 04 C4 5E FC 26 83 7F 42 01 S..+$....^.&..B.
2644:00A0 1B C0 F7 D8 8B E5 5D CB B8 01 00 8B E5 5D CB 90 ......]......]..
2644:00B0 55 8B EC 83 EC 04 C4 1E 0A 13 26 8B 07 26 8B 57 U.........&..&.W
2644:00C0 02 89 46 FC 89 56 FE 0B C2 74 4B C4 5E FC 26 8B ..F..V...tK.^.&.
2644:00D0 47 28 26 8B 57 2A 05 01 00 83 D2 00 52 50 06 53 G(&.W*......RP.S
2644:00E0 0E E8 DA 21 83 C4 08 C4 5E FC 26 83 BF BA 00 00 ...!....^.&.....
2644:00F0 74 09 06 53 0E E8 C8 23 83 C4 04 C4 5E FC 26 F6 t..S...#....^.&.
2644:0100 47 28 0F 75 05 9A 60 0D DC 21 C4 5E FC 26 8B 47 G(.u..`..!.^.&.G
2644:0110 42 8B E5 5D CB 90 B8 01 00 8B E5 5D CB 90 55 8B B..].......]..U.
2644:0120 EC 83 EC 02 56 C4 5E 06 26 C7 87 A6 00 04 00 26 ....V.^.&......&
2644:0130 C7 87 AC 00 00 00 B8 24 13 26 89 87 A8 00 26 8C .......$.&....&.
2644:0140 9F AA 00 C7 46 FE 04 00 EB 2E B8 12 00 F7 66 FE ....F.........f.
2644:0150 8B F0 A1 FC 12 89 84 2A 13 8B 5E FE D1 E3 D1 E3 .......*..^.....
2644:0160 FF B7 6E 13 FF B7 6C 13 9A C2 03 C7 2B 83 C4 04 ..n...l.....+...
2644:0170 89 84 32 13 89 94 34 13 8B 46 FE FF 4E FE 0B C0 ..2...4..F..N...
2644:0180 75 C8 5E 8B E5 5D CB 90 55 8B EC 83 EC 2E 56 C7 u.^..]..U.....V.
2644:0190 46 E4 04 00 EB 2B 8B 76 E4 B1 02 D3 E6 FF 36 FE F....+.v......6.
2644:01A0 12 FF B4 6E 13 FF B4 6C 13 9A C2 03 C7 2B 83 C4 ...n...l.....+..
2644:01B0 04 52 50 9A 8A 06 68 23 83 C4 06 89 42 D4 89 52 .RP...h#....B..R
2644:01C0 D6 8B 46 E4 FF 4E E4 0B C0 75 CB 8B 1E FE 12 D1 ..F..N...u......
2644:01D0 E3 D1 E3 C4 36 0A 13 26 C4 18 26 8B 47 2C C4 5E ....6..&..&.G,.^
2644:01E0 06 26 89 87 A6 00 2D 01 00 1B C9 F7 D1 23 C1 05 .&....-......#..
2644:01F0 01 00 26 89 87 AC 00 50 9A 2E 09 DC 21 83 C4 02 ..&....P....!...
2644:0200 C4 5E 06 26 89 87 A8 00 26 89 97 AA 00 C7 46 EE .^.&....&.....F.
2644:0210 00 00 E9 FE 01 90 8B 46 EE 40 2B C9 51 50 8B 1E .......F.@+.QP..
2644:0220 FE 12 D1 E3 D1 E3 C4 36 0A 13 26 FF 70 02 26 FF .......6..&.p.&.
2644:0230 30 0E E8 89 20 83 C4 08 B8 12 00 F7 66 EE C4 5E 0... .......f..^
2644:0240 06 26 8B 8F A8 00 26 8B B7 AA 00 03 C8 89 4E EA .&....&.......N.
2644:0250 89 76 EC FF 76 D6 FF 76 D4 0E E8 6B 15 83 C4 04 .v..v..v...k....
2644:0260 C4 1E 96 12 26 8B 47 08 26 8B 57 0A 89 46 E6 89 ....&.G.&.W..F..
2644:0270 56 E8 C7 46 E4 00 00 C4 1E 96 12 8B 46 E4 26 39 V..F........F.&9
2644:0280 47 02 76 1D 8B D8 C4 76 E6 26 8A 00 88 46 D2 3C G.v....v.&...F.<
2644:0290 20 74 0E 8B F3 88 42 F0 FF 46 E4 83 7E E4 0A 72  t....B..F..~..r
2644:02A0 D6 8B 76 E4 C6 42 F0 00 9A 3C 03 68 23 8D 46 F0 ..v..B...<.h#.F.
2644:02B0 16 50 9A C2 03 C7 2B 83 C4 04 C4 5E EA 26 89 47 .P....+....^.&.G
2644:02C0 0E 26 89 57 10 FF 76 DA FF 76 D8 0E E8 F9 14 83 .&.W..v..v......
2644:02D0 C4 04 C4 1E 96 12 26 C4 5F 08 26 8A 07 2A E4 50 ......&._.&..*.P
2644:02E0 9A 1E 00 AD 38 83 C4 02 2A E4 3D 43 00 74 25 3D ....8...*.=C.t%=
2644:02F0 44 00 74 78 3D 4C 00 74 63 3D 4D 00 74 7E 3D 4E D.tx=L.tc=M.t~=N
2644:0300 00 74 4F C4 5E EA 26 C7 07 00 00 26 C7 47 02 00 .tO.^.&....&.G..
2644:0310 00 EB 09 90 C4 5E EA 26 C7 07 00 01 9A 3C 03 68 .....^.&.....<.h
2644:0320 23 C4 5E EA 26 8B 37 81 FE 00 01 74 08 83 FE 10 #.^.&.7....t....
2644:0330 74 03 E9 D5 00 FF 76 DE FF 76 DC 0E E8 89 14 83 t.....v..v......
2644:0340 C4 04 C4 1E 96 12 26 83 3F 02 75 40 26 8B 47 08 ......&.?.u@&.G.
2644:0350 EB 56 C4 5E EA 26 C7 07 10 00 EB C0 C4 5E EA 26 .V.^.&.......^.&
2644:0360 C7 07 80 00 26 C7 47 02 01 00 EB B0 C4 5E EA 26 ....&.G......^.&
2644:0370 C7 07 40 00 26 C7 47 02 08 00 EB A0 C4 5E EA 26 ..@.&.G......^.&
2644:0380 C7 07 00 03 26 C7 47 02 0A 00 EB 90 C4 1E 96 12 ....&.G.........
2644:0390 26 FF 77 0E 26 FF 77 0C 26 FF 77 0A 26 FF 77 08 &.w.&.w.&.w.&.w.
2644:03A0 9A 5A 0C EE 3C 83 C4 08 C4 5E EA 26 89 47 02 9A .Z..<....^.&.G..
2644:03B0 3C 03 68 23 FF 76 E2 FF 76 E0 0E E8 0A 14 83 C4 <.h#.v..v.......
2644:03C0 04 C4 1E 96 12 26 83 3F 02 75 07 26 8B 47 08 EB .....&.?.u.&.G..
2644:03D0 19 90 26 FF 77 0E 26 FF 77 0C 26 FF 77 0A 26 FF ..&.w.&.w.&.w.&.
2644:03E0 77 08 9A 5A 0C EE 3C 83 C4 08 C4 5E EA 26 89 47 w..Z..<....^.&.G
2644:03F0 04 9A 3C 03 68 23 C4 5E EA 26 81 3F 00 01 75 10 ..<.h#.^.&.?..u.
2644:0400 26 8A 67 04 2A C0 26 01 47 02 26 C7 47 04 00 00 &.g.*.&.G.&.G...
2644:0410 FF 46 EE C4 5E 06 8B 46 EE 26 39 87 A6 00 76 03 .F..^..F.&9...v.
2644:0420 E9 F3 FD 5E 8B E5 5D CB 55 8B EC 83 EC 02 B8 20 ...^..].U...... 
2644:0430 00 50 FF 76 08 FF 76 06 C4 5E 06 26 FF 77 34 9A .P.v..v..^.&.w4.
2644:0440 C9 00 8F 20 83 C4 08 89 46 FE 3D 20 00 75 3F C4 ... ....F.= .u?.
2644:0450 5E 06 26 8A 07 24 7F 3C 03 75 33 26 8B 47 0A 26 ^.&..$.<.u3&.G.&
2644:0460 89 47 20 26 C7 47 22 00 00 26 8B 47 08 26 89 47 .G &.G"..&.G.&.G
2644:0470 24 26 C7 47 26 00 00 26 8B 47 04 26 8B 57 06 26 $&.G&..&.G.&.W.&
2644:0480 89 47 2C 26 89 57 2E 2B C0 8B E5 5D CB 90 B8 01 .G,&.W.+...]....
2644:0490 00 8B E5 5D CB 90 55 8B EC 83 EC 14 56 B8 20 00 ...]..U.....V. .
2644:04A0 99 52 50 C4 5E 06 26 8B 47 24 26 8B 57 26 2D 20 .RP.^.&.G$&.W&- 
2644:04B0 00 83 DA 00 52 50 9A 00 05 EE 3C 03 06 1E 13 C4 ....RP....<.....
2644:04C0 5E 06 26 89 87 AC 00 50 9A 2E 09 DC 21 83 C4 02 ^.&....P....!...
2644:04D0 C4 5E 06 26 89 87 A8 00 26 89 97 AA 00 26 8B 47 .^.&....&....&.G
2644:04E0 24 2D 20 00 89 46 EC 50 9A 7E 09 DC 21 83 C4 02 $- ..F.P.~..!...
2644:04F0 89 46 EE 89 56 F0 C7 46 F6 00 00 FF 76 EC 52 50 .F..V..F....v.RP
2644:0500 C4 5E 06 26 FF 77 34 9A C9 00 8F 20 83 C4 08 89 .^.&.w4.... ....
2644:0510 46 F4 8B 46 EC 39 46 F4 74 03 E9 19 01 8B 46 EE F..F.9F.t.....F.
2644:0520 8B 56 F0 89 46 FC 89 56 FE C4 5E FC 26 80 3F 0D .V..F..V..^.&.?.
2644:0530 75 03 E9 F9 00 83 7E F4 20 7D 03 E9 F0 00 B8 12 u.....~. }......
2644:0540 00 F7 66 F6 C4 5E 06 26 8B 8F A8 00 26 8B B7 AA ..f..^.&....&...
2644:0550 00 03 C8 89 4E F8 89 76 FA FF 76 FE FF 76 FC 9A ....N..v..v..v..
2644:0560 C2 03 C7 2B 83 C4 04 C4 5E F8 26 89 47 0E 26 89 ...+....^.&.G.&.
2644:0570 57 10 26 C7 47 04 00 00 C4 5E FC 26 8A 47 0B 2A W.&.G....^.&.G.*
2644:0580 E4 3D 43 00 74 2A 3D 44 00 75 03 E9 8C 00 3D 4C .=C.t*=D.u....=L
2644:0590 00 74 73 3D 4D 00 75 03 E9 89 00 3D 4E 00 74 3E .ts=M.u....=N.t>
2644:05A0 C4 5E F8 26 C7 07 00 00 26 C7 47 02 00 00 EB 20 .^.&....&.G.... 
2644:05B0 C4 5E F8 26 C7 07 00 01 C4 5E FC 26 8A 67 11 2A .^.&.....^.&.g.*
2644:05C0 C0 26 8A 4F 10 2A ED 03 C1 C4 5E F8 26 89 47 02 .&.O.*....^.&.G.
2644:05D0 FF 46 F6 83 46 FC 20 83 6E F4 20 E9 4B FF C4 5E .F..F. .n. .K..^
2644:05E0 F8 26 C7 07 10 00 C4 5E FC 26 8A 47 10 2A E4 C4 .&.....^.&.G.*..
2644:05F0 5E F8 26 89 47 02 C4 5E FC 26 8A 47 11 C4 5E F8 ^.&.G..^.&.G..^.
2644:0600 26 89 47 04 EB CA C4 5E F8 26 C7 07 80 00 C4 5E &.G....^.&.....^
2644:0610 FC 26 8A 47 10 2A E4 EB B0 90 C4 5E F8 26 C7 07 .&.G.*.....^.&..
2644:0620 40 00 EB EA C4 5E F8 26 C7 07 00 03 EB E0 C7 46 @....^.&.......F
2644:0630 F2 00 00 EB 06 90 C7 46 F2 01 00 C4 5E 06 8B 46 .......F....^..F
2644:0640 F6 26 89 87 A6 00 FF 76 EC FF 76 F0 FF 76 EE 9A .&.....v..v..v..
2644:0650 B4 09 DC 21 83 C4 06 8B 46 F2 5E 8B E5 5D CB 90 ...!....F.^..]..
2644:0660 55 8B EC B8 20 00 50 FF 76 0C FF 76 0A FF 76 08 U... .P.v..v..v.
2644:0670 FF 76 06 9A 58 02 17 20 83 C4 0A C4 5E 06 26 8B .v..X.. ....^.&.
2644:0680 47 0A 26 89 47 20 26 C7 47 22 00 00 26 8B 47 08 G.&.G &.G"..&.G.
2644:0690 26 89 47 24 26 C7 47 26 00 00 5D CB 55 8B EC 83 &.G$&.G&..].U...
2644:06A0 EC 06 56 C4 5E 0A 26 8B 87 AC 00 03 06 1E 13 C4 ..V.^.&.........
2644:06B0 5E 06 26 89 87 AC 00 50 9A 2E 09 DC 21 83 C4 02 ^.&....P....!...
2644:06C0 C4 5E 06 26 89 87 A8 00 26 89 97 AA 00 C7 46 FC .^.&....&.....F.
2644:06D0 00 00 C7 46 FA 00 00 C7 46 FE 00 00 E9 81 00 90 ...F....F.......
2644:06E0 C4 5E 06 26 83 7F 32 00 74 17 B8 12 00 F7 66 FC .^.&..2.t.....f.
2644:06F0 8B F0 C4 5E 0A 26 C4 9F A8 00 26 81 38 00 03 74 ...^.&....&.8..t
2644:0700 3A B8 12 00 50 F7 66 FC C4 5E 0A 26 8B 8F A8 00 :...P.f..^.&....
2644:0710 26 8B B7 AA 00 03 C8 56 51 B8 12 00 F7 66 FA C4 &......VQ....f..
2644:0720 5E 06 26 8B 8F A8 00 26 8B B7 AA 00 03 C8 56 51 ^.&....&......VQ
2644:0730 9A 58 02 17 20 83 C4 0A FF 46 FA B8 12 00 F7 66 .X.. ....F.....f
2644:0740 FC 8B F0 C4 5E 0A 26 C4 9F A8 00 26 81 38 00 03 ....^.&....&.8..
2644:0750 75 06 B8 01 00 EB 03 90 2B C0 09 46 FE FF 46 FC u.......+..F..F.
2644:0760 C4 5E 0A 8B 46 FC 26 39 87 A6 00 76 03 E9 70 FF .^..F.&9...v..p.
2644:0770 C4 5E 06 8B 46 FA 26 89 87 A6 00 8B 46 FE 5E 8B .^..F.&.....F.^.
2644:0780 E5 5D CB 90 55 8B EC 83 EC 1E A1 1A 13 8B 16 1C .]..U...........
2644:0790 13 89 46 E4 89 56 E6 C4 5E 06 26 8B 87 A6 00 89 ..F..V..^.&.....
2644:07A0 46 FE 26 C7 87 A6 00 00 00 8B 46 E4 0B 46 E6 75 F.&.......F..F.u
2644:07B0 03 E9 CE 00 C4 5E 06 26 8B 87 A8 00 26 8B 97 AA .....^.&....&...
2644:07C0 00 89 46 E8 89 56 EA C7 46 E2 00 00 EB 20 C4 5E ..F..V..F.... .^
2644:07D0 E4 26 8B 07 26 8B 57 02 C4 5E E8 26 39 47 0E 75 .&..&.W..^.&9G.u
2644:07E0 06 26 39 57 10 74 0F FF 46 E2 83 46 E8 12 8B 46 .&9W.t..F..F...F
2644:07F0 FE 39 46 E2 72 D8 8B 46 FE 39 46 E2 73 70 B8 12 .9F.r..F.9F.sp..
2644:0800 00 50 FF 76 EA FF 76 E8 8D 46 EC 16 50 9A 58 02 .P.v..v..F..P.X.
2644:0810 17 20 83 C4 0A C4 5E 06 B8 12 00 26 F7 A7 AC 00 . ....^....&....
2644:0820 2D 12 00 50 26 FF B7 AA 00 26 FF B7 A8 00 26 8B -..P&....&....&.
2644:0830 87 A8 00 26 8B 97 AA 00 05 12 00 52 50 9A 58 02 ...&.......RP.X.
2644:0840 17 20 83 C4 0A B8 12 00 50 8D 46 EC 16 50 C4 5E . ......P.F..P.^
2644:0850 06 26 FF B7 AA 00 26 FF B7 A8 00 9A 58 02 17 20 .&....&.....X.. 
2644:0860 83 C4 0A C4 5E 06 26 FF 87 A6 00 FF 46 FE C4 5E ....^.&.....F..^
2644:0870 E4 26 8B 47 06 26 8B 57 08 89 46 E4 89 56 E6 E9 .&.G.&.W..F..V..
2644:0880 27 FF 8B E5 5D CB 55 8B EC 83 EC 04 56 C7 46 FE '...].U.....V.F.
2644:0890 01 00 C7 46 FC 00 00 EB 2A 90 B8 12 00 F7 66 FC ...F....*.....f.
2644:08A0 8B F0 C4 5E 06 26 C4 9F A8 00 8B 46 FE 26 89 40 ...^.&.....F.&.@
2644:08B0 08 C4 5E 06 26 C4 9F A8 00 26 8B 40 02 01 46 FE ..^.&....&.@..F.
2644:08C0 FF 46 FC C4 5E 06 8B 46 FC 26 39 87 A6 00 77 CA .F..^..F.&9...w.
2644:08D0 8B 46 FE 26 89 47 20 26 C7 47 22 00 00 26 8B 87 .F.&.G &.G"..&..
2644:08E0 A6 00 B1 05 D3 E0 05 22 00 2B D2 5E 8B E5 5D CB .......".+.^..].
2644:08F0 55 8B EC 83 EC 08 56 C7 46 FE 00 00 C7 46 F8 00 U.....V.F....F..
2644:0900 00 EB 5C 90 B8 12 00 F7 66 F8 C4 5E 06 26 8B 8F ..\.....f..^.&..
2644:0910 A8 00 26 8B B7 AA 00 03 C8 89 4E FA 89 76 FC C4 ..&.......N..v..
2644:0920 5E FA 26 81 3F 00 03 75 05 C7 46 FE 01 00 A1 FC ^.&.?..u..F.....
2644:0930 12 26 89 47 06 26 C4 5F 0E 26 8B 07 26 8B 57 02 .&.G.&._.&..&.W.
2644:0940 C4 5E FA 26 89 47 0A 26 89 57 0C 26 C4 5F 0E 8B .^.&.G.&.W.&._..
2644:0950 46 FA 8B 56 FC 26 89 07 26 89 57 02 FF 46 F8 C4 F..V.&..&.W..F..
2644:0960 5E 06 8B 46 F8 26 39 87 A6 00 77 98 8B 46 FE 5E ^..F.&9...w..F.^
2644:0970 8B E5 5D CB                                     ..].            

;; fn2644_0974: 2644:0974
;;   Called from:
;;     2644:0FF1 (in fn2644_0F82)
fn2644_0974 proc
	push	bp
	mov	bp,sp
	sub	sp,0Eh
	push	si
	mov	word ptr [bp-6h],0h
	jmp	0A31h
2644:0983          90                                        .            

l2644_0984:
	mov	ax,12h
	mul	word ptr [bp-6h]
	les	bx,[bp+6h]
	mov	cx,es:[bx+0A8h]
	mov	si,es:[bx+0AAh]
	add	cx,ax
	mov	[bp-0Eh],cx
	mov	[bp-0Ch],si
	les	bx,[bp-0Eh]
	mov	ax,es:[bx+0Eh]
	mov	dx,es:[bx+10h]
	mov	[bp-0Ah],ax
	mov	[bp-8h],dx
	les	bx,[bp-0Ah]
	mov	ax,es:[bx]
	mov	dx,es:[bx+2h]
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	cmp	cx,ax
	jnz	09E0h

l2644_09C4:
	cmp	si,dx
	jnz	09E0h

l2644_09C8:
	les	bx,[bp-4h]
	mov	ax,es:[bx+0Ah]
	mov	dx,es:[bx+0Ch]
	les	bx,[bp-0Ah]
	mov	es:[bx],ax
	mov	es:[bx+2h],dx
	jmp	0A2Eh
2644:09DF                                              90                .

l2644_09E0:
	mov	ax,12h
	mul	word ptr [bp-6h]
	les	bx,[bp+6h]
	mov	cx,es:[bx+0A8h]
	mov	si,es:[bx+0AAh]
	add	cx,ax
	les	bx,[bp-4h]
	cmp	cx,es:[bx+0Ah]
	jnz	0A04h

l2644_09FE:
	cmp	si,es:[bx+0Ch]
	jz	0A14h

l2644_0A04:
	mov	ax,es:[bx+0Ah]
	mov	dx,es:[bx+0Ch]
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	jmp	09E0h

l2644_0A14:
	les	bx,[bp-4h]
	les	bx,es:[bx+0Ah]
	mov	ax,es:[bx+0Ah]
	mov	dx,es:[bx+0Ch]
	les	bx,[bp-4h]
	mov	es:[bx+0Ah],ax
	mov	es:[bx+0Ch],dx

l2644_0A2E:
	inc	word ptr [bp-6h]

l2644_0A31:
	les	bx,[bp+6h]
	mov	ax,[bp-6h]
	cmp	es:[bx+0A6h],ax
	jbe	0A41h

l2644_0A3E:
	jmp	0984h

l2644_0A41:
	pop	si
	mov	sp,bp
	pop	bp
	retf
2644:0A46                   55 8B EC 83 EC 2C 56 8B 1E FE       U....,V...
2644:0A50 12 D1 E3 D1 E3 C4 36 0A 13 26 8B 00 26 8B 50 02 ......6..&..&.P.
2644:0A60 89 46 E4 89 56 E6 8B 1E 02 13 D1 E3 D1 E3 26 8B .F..V.........&.
2644:0A70 00 26 8B 50 02 89 46 DE 89 56 E0 C4 5E E4 26 8B .&.P..F..V..^.&.
2644:0A80 87 A6 00 C4 5E DE 26 03 87 A6 00 03 06 1E 13 C4 ....^.&.........
2644:0A90 5E 06 26 89 87 AC 00 50 9A 2E 09 DC 21 83 C4 02 ^.&....P....!...
2644:0AA0 C4 5E 06 26 89 87 A8 00 26 89 97 AA 00 C4 5E E4 .^.&....&.....^.
2644:0AB0 B8 12 00 26 F7 A7 A6 00 50 26 FF B7 AA 00 26 FF ...&....P&....&.
2644:0AC0 B7 A8 00 C4 5E 06 26 FF B7 AA 00 26 FF B7 A8 00 ....^.&....&....
2644:0AD0 9A 58 02 17 20 83 C4 0A C4 5E DE B8 12 00 26 F7 .X.. ....^....&.
2644:0AE0 A7 A6 00 50 26 FF B7 AA 00 26 FF B7 A8 00 C4 5E ...P&....&.....^
2644:0AF0 E4 B8 12 00 26 F7 A7 A6 00 C4 5E 06 26 03 87 A8 ....&.....^.&...
2644:0B00 00 26 8B 97 AA 00 52 50 9A 58 02 17 20 83 C4 0A .&....RP.X.. ...
2644:0B10 C4 5E E4 26 8B 87 A6 00 C4 5E DE 26 03 87 A6 00 .^.&.....^.&....
2644:0B20 C4 5E 06 26 89 87 A6 00 A1 1A 13 0B 06 1C 13 75 .^.&...........u
2644:0B30 03 E9 1E 01 A1 1A 13 8B 16 1C 13 89 46 D6 89 56 ............F..V
2644:0B40 D8 26 8B 87 A6 00 89 46 FE 26 C7 87 A6 00 00 00 .&.....F.&......
2644:0B50 8B 46 D6 0B 46 D8 75 03 E9 BB 01 C4 5E 06 26 8B .F..F.u.....^.&.
2644:0B60 87 A8 00 26 8B 97 AA 00 89 46 E8 89 56 EA C7 46 ...&.....F..V..F
2644:0B70 D4 00 00 8B 46 FE 39 46 D4 73 40 C4 5E D6 26 83 ....F.9F.s@.^.&.
2644:0B80 7F 04 00 75 07 A1 FE 12 26 89 47 04 26 8B 07 26 ...u....&.G.&..&
2644:0B90 8B 57 02 C4 5E E8 26 39 47 0E 74 03 E9 A9 00 26 .W..^.&9G.t....&
2644:0BA0 39 57 10 74 03 E9 A0 00 C4 5E D6 26 8B 47 04 C4 9W.t.....^.&.G..
2644:0BB0 5E E8 26 39 47 06 74 03 E9 8D 00 8B 46 FE 39 46 ^.&9G.t.....F.9F
2644:0BC0 D4 73 70 B8 12 00 50 FF 76 EA FF 76 E8 8D 46 EC .sp...P.v..v..F.
2644:0BD0 16 50 9A 58 02 17 20 83 C4 0A C4 5E 06 B8 12 00 .P.X.. ....^....
2644:0BE0 26 F7 A7 AC 00 2D 12 00 50 26 FF B7 AA 00 26 FF &....-..P&....&.
2644:0BF0 B7 A8 00 26 8B 87 A8 00 26 8B 97 AA 00 05 12 00 ...&....&.......
2644:0C00 52 50 9A 58 02 17 20 83 C4 0A B8 12 00 50 8D 46 RP.X.. ......P.F
2644:0C10 EC 16 50 C4 5E 06 26 FF B7 AA 00 26 FF B7 A8 00 ..P.^.&....&....
2644:0C20 9A 58 02 17 20 83 C4 0A C4 5E 06 26 FF 87 A6 00 .X.. ....^.&....
2644:0C30 FF 46 FE C4 5E D6 26 8B 47 06 26 8B 57 08 89 46 .F..^.&.G.&.W..F
2644:0C40 D6 89 56 D8 E9 09 FF 90 FF 46 D4 83 46 E8 12 E9 ..V......F..F...
2644:0C50 21 FF C4 5E 06 26 8B 87 A6 00 48 89 46 E2 E9 84 !..^.&....H.F...
2644:0C60 00 90 C4 5E E8 26 8B 47 0E 26 8B 57 10 8B C8 B8 ...^.&.G.&.W....
2644:0C70 12 00 8B DA F7 66 DC 8B D3 8B D8 C4 76 06 26 C4 .....f......v.&.
2644:0C80 B4 A8 00 26 39 48 0E 75 06 26 39 50 10 74 10 FF ...&9H.u.&9P.t..
2644:0C90 46 DC C4 5E E4 8B 46 DC 26 39 87 A6 00 77 C3 C4 F..^..F.&9...w..
2644:0CA0 5E E4 8B 46 DC 26 39 87 A6 00 76 36 C4 5E 06 26 ^..F.&9...v6.^.&
2644:0CB0 FF 8F A6 00 8B 46 E2 26 39 87 A6 00 76 24 26 8B .....F.&9...v$&.
2644:0CC0 87 A6 00 2B 46 E2 B9 12 00 F7 E1 50 8B 46 E8 8B ...+F......P.F..
2644:0CD0 56 EA 03 C1 52 50 52 FF 76 E8 9A 58 02 17 20 83 V...RPR.v..X.. .
2644:0CE0 C4 0A FF 4E E2 C4 5E E4 8B 46 E2 26 39 87 A6 00 ...N..^..F.&9...
2644:0CF0 77 24 B8 12 00 F7 66 E2 C4 5E 06 26 8B 8F A8 00 w$....f..^.&....
2644:0D00 26 8B B7 AA 00 03 C8 89 4E E8 89 76 EA C7 46 DC &.......N..v..F.
2644:0D10 00 00 E9 7D FF 90 C4 5E 06 26 8B 87 A6 00 D1 E0 ...}...^.&......
2644:0D20 A3 18 13 50 9A 7E 09 DC 21 83 C4 02 A3 14 13 89 ...P.~..!.......
2644:0D30 16 16 13 C7 46 DA 00 00 EB 23 B8 12 00 F7 66 DA ....F....#....f.
2644:0D40 8B D8 C4 76 06 26 C4 B4 A8 00 26 8B 40 06 8B 5E ...v.&....&.@..^
2644:0D50 DA D1 E3 C4 36 14 13 26 89 00 FF 46 DA C4 5E 06 ....6..&...F..^.
2644:0D60 8B 46 DA 26 39 87 A6 00 77 D0 5E 8B E5 5D CB 90 .F.&9...w.^..]..

;; fn2644_0D70: 2644:0D70
;;   Called from:
;;     2644:4658 (in fn2644_45CA)
fn2644_0D70 proc
	push	bp
	mov	bp,sp
	sub	sp,10h
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+36h],0h
	jz	0D86h

l2644_0D80:
	mov	byte ptr es:[bx],83h
	jmp	0D8Ah

l2644_0D86:
	mov	byte ptr es:[bx],3h

l2644_0D8A:
	sub	ax,ax
	push	ax
	call	far 38D6h:0304h
	push	dx
	push	ax
	lea	ax,[bp-10h]
	push	ss
	push	ax
	call	far 38D6h:06FAh
	add	sp,0Ah
	les	bx,[bp+6h]
	mov	al,[bp-0Eh]
	mov	cx,ax
	shl	al,1h
	shl	al,1h
	add	al,cl
	shl	al,1h
	add	al,[bp-0Dh]
	sub	al,10h
	mov	es:[bx+1h],al
	mov	al,[bp-0Ch]
	mov	cx,ax
	shl	al,1h
	shl	al,1h
	add	al,cl
	shl	al,1h
	add	al,[bp-0Bh]
	sub	al,10h
	mov	es:[bx+2h],al
	mov	al,[bp-0Ah]
	mov	cx,ax
	shl	al,1h
	shl	al,1h
	add	al,cl
	shl	al,1h
	add	al,[bp-9h]
	sub	al,10h
	mov	es:[bx+3h],al
	mov	ax,es:[bx+2Ch]
	mov	dx,es:[bx+2Eh]
	mov	es:[bx+4h],ax
	mov	es:[bx+6h],dx
	mov	ax,es:[bx+24h]
	mov	es:[bx+8h],ax
	mov	ax,es:[bx+20h]
	mov	es:[bx+0Ah],ax
	mov	ax,14h
	push	ax
	sub	ax,ax
	push	ax
	mov	ax,bx
	mov	dx,es
	add	ax,0Ch
	push	dx
	push	ax
	call	far 2017h:0228h
	add	sp,8h
	sub	ax,ax
	push	ax
	push	ax
	push	ax
	les	bx,[bp+6h]
	push	word ptr es:[bx+34h]
	call	far 208Fh:0115h
	add	sp,8h
	mov	ax,20h
	push	ax
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	les	bx,[bp+6h]
	push	word ptr es:[bx+34h]
	call	far 208Fh:00EFh
	les	bx,[bp+6h]
	mov	word ptr es:[bx+54h],0h
	mov	sp,bp
	pop	bp
	retf
2644:0E55                90 55 8B EC 83 EC 26 C4 5E 06 26      .U....&.^.&
2644:0E60 8B 87 A8 00 26 8B 97 AA 00 89 46 DA 89 56 DC 26 ....&.....F..V.&
2644:0E70 8B 87 A6 00 89 46 DE 8B 46 DE FF 4E DE 0B C0 75 .....F..F..N...u
2644:0E80 03 E9 B0 00 B8 20 00 50 2B C0 50 8D 46 E0 16 50 ..... .P+.P.F..P
2644:0E90 9A 28 02 17 20 83 C4 08 B8 0B 00 50 C4 5E DA 26 .(.. ......P.^.&
2644:0EA0 FF 77 10 26 FF 77 0E 9A 0A 05 C7 2B 83 C4 04 52 .w.&.w.....+...R
2644:0EB0 50 8D 46 E0 16 50 9A DA 01 17 20 83 C4 0A C4 5E P.F..P.... ....^
2644:0EC0 DA 26 8A 47 02 88 46 F0 26 8B 07 3D 10 00 74 44 .&.G..F.&..=..tD
2644:0ED0 3D 40 00 74 53 3D 80 00 74 48 3D 00 01 74 0B 3D =@.tS=..tH=..t.=
2644:0EE0 00 03 74 4A C6 46 EB 55 EB 0B C6 46 EB 43 26 8A ..tJ.F.U...F.C&.
2644:0EF0 47 03 88 46 F1 B8 20 00 50 8D 46 E0 16 50 C4 5E G..F.. .P.F..P.^
2644:0F00 06 26 FF 77 34 9A EF 00 8F 20 83 C4 08 83 46 DA .&.w4.... ....F.
2644:0F10 12 E9 63 FF C6 46 EB 4E C4 5E DA 26 8A 47 04 EB ..c..F.N.^.&.G..
2644:0F20 D1 90 C6 46 EB 4C EB CD C6 46 EB 44 EB C7 C6 46 ...F.L...F.D...F
2644:0F30 EB 4D EB C1 B8 02 00 50 B8 5A 5E 1E 50 C4 5E 06 .M.....P.Z^.P.^.
2644:0F40 26 FF 77 34 9A EF 00 8F 20 8B E5 5D CB 90 55 8B &.w4.... ..]..U.
2644:0F50 EC 83 EC 04 C4 5E 06 26 83 7F 36 00 74 1F C7 46 .....^.&..6.t..F
2644:0F60 FC 01 00 C7 46 FE 00 00 B8 00 02 50 8D 46 FC 16 ....F......P.F..
2644:0F70 50 26 FF 77 38 9A EF 00 8F 20 83 C4 08 8B E5 5D P&.w8.... .....]
2644:0F80 CB 90                                           ..              

;; fn2644_0F82: 2644:0F82
;;   Called from:
;;     2644:47AB (in fn2644_45CA)
fn2644_0F82 proc
	push	bp
	mov	bp,sp
	mov	ax,[bp+6h]
	or	ax,[bp+8h]
	jnz	0F90h

l2644_0F8D:
	jmp	102Ch

l2644_0F90:
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+34h],0h
	jz	0FADh

l2644_0F9A:
	cmp	word ptr es:[bx+34h],0FFh
	jz	0FADh

l2644_0FA1:
	push	word ptr es:[bx+34h]
	call	far 208Fh:00AEh
	add	sp,2h

l2644_0FAD:
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+36h],0h
	jz	0FCAh

l2644_0FB7:
	cmp	word ptr es:[bx+38h],0FFh
	jz	0FCAh

l2644_0FBE:
	push	word ptr es:[bx+38h]
	call	far 208Fh:00AEh
	add	sp,2h

l2644_0FCA:
	les	bx,[bp+6h]
	mov	ax,es:[bx+5Ah]
	or	ax,es:[bx+5Ch]
	jz	0FEBh

l2644_0FD7:
	push	word ptr es:[bx+20h]
	push	word ptr es:[bx+5Ch]
	push	word ptr es:[bx+5Ah]
	call	far 21DCh:0702h
	add	sp,6h

l2644_0FEB:
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	0974h
	add	sp,4h
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+0ACh],0h
	jz	101Ah

l2644_1003:
	push	word ptr es:[bx+0ACh]
	push	word ptr es:[bx+0AAh]
	push	word ptr es:[bx+0A8h]
	call	far 21DCh:096Ah
	add	sp,6h

l2644_101A:
	mov	ax,10Ch
	push	ax
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 21DCh:0702h
	add	sp,6h

l2644_102C:
	pop	bp
	retf
2644:102E                                           55 8B               U.
2644:1030 EC 83 EC 16 57 56 B8 0C 01 50 8D 46 F8 16 50 9A ....WV...P.F..P.
2644:1040 96 06 DC 21 83 C4 06 0B C0 75 0F C7 06 D2 10 04 ...!.....u......
2644:1050 00 2B C0 99 5E 5F 8B E5 5D CB B8 0C 01 50 2B C0 .+..^_..]....P+.
2644:1060 50 FF 76 FA FF 76 F8 9A 28 02 17 20 83 C4 08 C4 P.v..v..(.. ....
2644:1070 5E F8 26 C7 47 20 01 00 26 C7 47 22 00 00 C7 46 ^.&.G ..&.G"...F
2644:1080 EC 00 00 C7 46 FE 00 00 C7 46 EA 00 00 C7 06 0E ....F....F......
2644:1090 13 00 00 A1 06 13 3D 12 00 76 03 E9 04 06 03 C0 ......=..v......
2644:10A0 93 2E FF A7 7C 16 8B 5E F8 26 C7 47 32 00 00 83 ....|..^.&.G2...
2644:10B0 3E F0 13 01 1B C0 F7 D8 26 89 47 3A 0B C0 74 06 >.......&.G:..t.
2644:10C0 B8 02 00 EB 04 90 B8 01 00 50 FF 76 08 FF 76 06 .........P.v..v.
2644:10D0 9A 96 10 D6 38 83 C4 06 C4 5E F8 26 89 47 34 3D ....8....^.&.G4=
2644:10E0 FF FF 74 66 06 53 0E E8 3E F3 83 C4 04 89 46 EC ..tf.S..>.....F.
2644:10F0 0B C0 75 10 FF 76 FA FF 76 F8 0E E8 98 F3 83 C4 ..u..v..v.......
2644:1100 04 89 46 EC 83 7E EC 00 74 03 E9 95 05 FF 76 FA ..F..~..t.....v.
2644:1110 FF 76 F8 0E E8 6F F7 83 C4 04 FF 76 FA FF 76 F8 .v...o.....v..v.
2644:1120 0E E8 CC F7 83 C4 04 89 46 FC 0B C0 75 03 E9 71 ........F...u..q
2644:1130 05 C4 5E F8 26 83 7F 3A 00 74 05 B8 06 00 EB 03 ..^.&..:.t......
2644:1140 B8 05 00 89 46 EA E9 59 05 90 83 3E CA 10 05 75 ....F..Y...>...u
2644:1150 06 C7 06 FA 12 01 00 C7 06 D2 10 05 00 C7 46 EC ..............F.
2644:1160 01 00 E9 3D 05 90 8B 5E F8 26 C7 47 32 00 00 83 ...=...^.&.G2...
2644:1170 3E F0 13 01 1B C0 F7 D8 26 89 47 3A B8 03 00 50 >.......&.G:...P
2644:1180 FF 76 08 FF 76 06 9A 96 10 D6 38 83 C4 06 C4 5E .v..v.....8....^
2644:1190 F8 26 89 47 34 3D FF FF 74 BD 06 53 0E E8 88 F2 .&.G4=..t..S....
2644:11A0 83 C4 04 89 46 EC 0B C0 75 10 FF 76 FA FF 76 F8 ....F...u..v..v.
2644:11B0 0E E8 E2 F2 83 C4 04 89 46 EC 83 7E EC 00 74 03 ........F..~..t.
2644:11C0 E9 DF 04 FF 76 FA FF 76 F8 0E E8 B9 F6 83 C4 04 ....v..v........
2644:11D0 A1 1A 13 0B 06 1C 13 74 0D FF 76 FA FF 76 F8 0E .......t..v..v..
2644:11E0 E8 A1 F5 83 C4 04 FF 76 FA FF 76 F8 0E E8 00 F7 .......v..v.....
2644:11F0 83 C4 04 89 46 FC 0B C0 74 08 C7 46 EA 07 00 EB ....F...t..F....
2644:1200 07 90 C7 06 0E 13 01 00 83 3E 0E 13 00 75 03 E9 .........>...u..
2644:1210 E0 00 C4 5E F8 26 8B 87 A6 00 8B 1E 00 13 D1 E3 ...^.&..........
2644:1220 D1 E3 C4 36 0A 13 26 C4 18 26 39 87 A6 00 73 03 ...6..&..&9...s.
2644:1230 E9 BF 00 C7 46 EE 00 00 83 3E 0E 13 00 75 03 E9 ....F....>...u..
2644:1240 60 04 C4 5E F8 8B 46 EE 26 39 87 A6 00 77 03 E9 `..^..F.&9...w..
2644:1250 50 04 B8 12 00 F7 66 EE 8B F0 26 8B 87 A8 00 26 P.....f...&....&
2644:1260 8B 97 AA 00 03 C6 89 46 F4 89 56 F6 8B 1E 00 13 .......F..V.....
2644:1270 D1 E3 D1 E3 C4 3E 0A 13 26 C4 19 26 8B 87 A8 00 .....>..&..&....
2644:1280 26 8B 97 AA 00 03 C6 89 46 F0 89 56 F2 C4 5E F0 &.......F..V..^.
2644:1290 26 8B 07 C4 5E F4 26 39 07 75 4A C4 5E F0 26 8B &...^.&9.uJ.^.&.
2644:12A0 47 02 C4 5E F4 26 39 47 02 75 3A C4 5E F0 26 8B G..^.&9G.u:.^.&.
2644:12B0 47 04 C4 5E F4 26 39 47 04 75 2A C4 5E F0 26 8B G..^.&9G.u*.^.&.
2644:12C0 47 08 C4 5E F4 26 39 47 08 75 1A C4 5E F0 26 8B G..^.&9G.u..^.&.
2644:12D0 47 0E 26 8B 57 10 C4 5E F4 26 39 47 0E 75 06 26 G.&.W..^.&9G.u.&
2644:12E0 39 57 10 74 06 C7 06 0E 13 00 00 FF 46 EE E9 47 9W.t........F..G
2644:12F0 FF 90 C7 06 0E 13 00 00 E9 A7 03 90 C4 5E F8 26 .............^.&
2644:1300 C7 47 32 00 00 8B 1E FE 12 D1 E3 D1 E3 C4 36 0A .G2...........6.
2644:1310 13 26 FF 70 02 26 FF 30 FF 76 FA FF 76 F8 0E E8 .&.p.&.0.v..v...
2644:1320 3E F3 83 C4 08 8B 1E FE 12 D1 E3 D1 E3 C4 36 0A >.............6.
2644:1330 13 26 FF 70 02 26 FF 30 FF 76 FA FF 76 F8 0E E8 .&.p.&.0.v..v...
2644:1340 5A F3 83 C4 08 C4 5E F8 26 C7 47 54 01 00 A1 1A Z.....^.&.GT....
2644:1350 13 0B 06 1C 13 74 0B 06 53 0E E8 27 F4 83 C4 04 .....t..S..'....
2644:1360 EB 06 C7 06 0E 13 01 00 FF 76 FA FF 76 F8 0E E8 .........v..v...
2644:1370 14 F5 83 C4 04 C4 5E F8 26 89 47 24 26 89 57 26 ......^.&.G$&.W&
2644:1380 06 53 0E E8 6A F5 83 C4 04 89 46 FC C7 46 FE 04 .S..j.....F..F..
2644:1390 00 0B C0 75 03 E9 0A 03 C7 46 EA 08 00 E9 02 03 ...u.....F......
2644:13A0 C4 5E F8 26 C7 47 32 00 00 8B 1E FE 12 D1 E3 D1 .^.&.G2.........
2644:13B0 E3 C4 36 0A 13 26 FF 70 02 26 FF 30 FF 76 FA FF ..6..&.p.&.0.v..
2644:13C0 76 F8 0E E8 9A F2 83 C4 08 8B 1E FE 12 D1 E3 D1 v...............
2644:13D0 E3 C4 36 0A 13 26 FF 70 02 26 FF 30 FF 76 FA FF ..6..&.p.&.0.v..
2644:13E0 76 F8 0E E8 B6 F2 83 C4 08 C4 5E F8 26 C7 47 54 v.........^.&.GT
2644:13F0 01 00 06 53 E9 77 FF 90 8B 5E F8 26 C7 47 32 00 ...S.w...^.&.G2.
2644:1400 00 06 53 0E E8 3F F6 83 C4 04 EB DD 8B 5E F8 26 ..S..?.......^.&
2644:1410 C7 47 32 01 00 8B 1E FE 12 D1 E3 D1 E3 C4 36 0A .G2...........6.
2644:1420 13 26 FF 70 02 26 FF 30 FF 76 FA FF 76 F8 0E E8 .&.p.&.0.v..v...
2644:1430 2E F2 83 C4 08 8B 1E FE 12 D1 E3 D1 E3 C4 36 0A ..............6.
2644:1440 13 26 FF 70 02 26 FF 30 FF 76 FA FF 76 F8 0E E8 .&.p.&.0.v..v...
2644:1450 4A F2 83 C4 08 89 46 FC A1 1A 13 0B 06 1C 13 75 J.....F........u
2644:1460 03 E9 CE 00 FF 76 FA FF 76 F8 0E E8 16 F3 83 C4 .....v..v.......
2644:1470 04 E9 CA 00 8B 5E F8 26 C7 47 32 01 00 8B 1E 00 .....^.&.G2.....
2644:1480 13 D1 E3 D1 E3 C4 36 0A 13 26 FF 70 02 26 FF 30 ......6..&.p.&.0
2644:1490 FF 76 FA FF 76 F8 0E E8 C6 F1 83 C4 08 8B 1E 00 .v..v...........
2644:14A0 13 D1 E3 D1 E3 C4 36 0A 13 26 FF 70 02 26 FF 30 ......6..&.p.&.0
2644:14B0 FF 76 FA FF 76 F8 0E E8 E2 F1 83 C4 08 A1 1A 13 .v..v...........
2644:14C0 0B 06 1C 13 75 03 E9 15 01 FF 76 FA FF 76 F8 0E ....u.....v..v..
2644:14D0 E8 B1 F2 83 C4 04 E9 0B 01 90 8B 5E F8 26 C7 47 ...........^.&.G
2644:14E0 32 02 00 8B 1E FE 12 D1 E3 D1 E3 C4 36 0A 13 26 2...........6..&
2644:14F0 FF 70 02 26 FF 30 FF 76 FA FF 76 F8 0E E8 60 F1 .p.&.0.v..v...`.
2644:1500 83 C4 08 8B 1E FE 12 D1 E3 D1 E3 C4 36 0A 13 26 ............6..&
2644:1510 FF 70 02 26 FF 30 FF 76 FA FF 76 F8 0E E8 7C F1 .p.&.0.v..v...|.
2644:1520 83 C4 08 89 46 FC A1 1A 13 0B 06 1C 13 74 03 E9 ....F........t..
2644:1530 32 FF 83 7E FC 00 75 06 C7 06 0E 13 01 00 FF 76 2..~..u........v
2644:1540 FA FF 76 F8 0E E8 3E F3 83 C4 04 C4 5E F8 26 89 ..v...>.....^.&.
2644:1550 47 24 26 89 57 26 06 53 0E E8 94 F3 83 C4 04 C4 G$&.W&.S........
2644:1560 5E F8 2B C0 26 89 47 2E 26 89 47 2C 26 89 47 2A ^.+.&.G.&.G,&.G*
2644:1570 26 89 47 28 C7 46 FE 0D 00 E9 26 01 C4 5E F8 26 &.G(.F....&..^.&
2644:1580 C7 47 32 02 00 83 3E F0 13 01 1B C0 F7 D8 26 89 .G2...>.......&.
2644:1590 47 3A 8B 1E 00 13 D1 E3 D1 E3 C4 36 0A 13 26 FF G:.........6..&.
2644:15A0 70 02 26 FF 30 FF 76 FA FF 76 F8 0E E8 B1 F0 83 p.&.0.v..v......
2644:15B0 C4 08 8B 1E 00 13 D1 E3 D1 E3 C4 36 0A 13 26 FF ...........6..&.
2644:15C0 70 02 26 FF 30 FF 76 FA FF 76 F8 0E E8 CD F0 83 p.&.0.v..v......
2644:15D0 C4 08 A1 1A 13 0B 06 1C 13 74 03 E9 EB FE C7 06 .........t......
2644:15E0 0E 13 01 00 FF 76 FA FF 76 F8 0E E8 98 F2 83 C4 .....v..v.......
2644:15F0 04 C4 5E F8 26 89 47 24 26 89 57 26 06 53 0E E8 ..^.&.G$&.W&.S..
2644:1600 EE F2 83 C4 04 C4 5E F8 26 C7 47 2C FF FF 26 C7 ......^.&.G,..&.
2644:1610 47 2E FF 7F 2B C0 26 89 47 2A 26 89 47 28 26 89 G...+.&.G*&.G(&.
2644:1620 47 54 C7 46 FE 0C 00 EB 79 90 C4 5E F8 26 C7 47 GT.F....y..^.&.G
2644:1630 32 00 00 06 53 0E E8 E5 EA 83 C4 04 C4 5E F8 26 2...S........^.&
2644:1640 C7 47 54 01 00 06 53 0E E8 3B F2 83 C4 04 C4 5E .GT...S..;.....^
2644:1650 F8 26 89 47 24 26 89 57 26 06 53 0E E8 91 F2 83 .&.G$&.W&.S.....
2644:1660 C4 04 C7 46 FE 04 00 EB 39 90 C4 5E F8 26 C7 47 ...F....9..^.&.G
2644:1670 32 00 00 06 53 0E E8 0F EB E9 8B FD A6 10 FC 12 2...S...........
2644:1680 0C 14 DA 14 66 11 74 14 7C 15 FC 12 2A 16 6A 16 ....f.t.|...*.j.
2644:1690 2A 16 A6 10 A0 13 A2 16 A0 13 F8 13 A0 13 FC 12 *...............
2644:16A0 66 11 C4 5E F8 26 FF 77 20 8B C3 8C C2 05 5A 00 f..^.&.w .....Z.
2644:16B0 52 50 9A 96 06 DC 21 83 C4 06 0B C0 75 0B C7 06 RP....!.....u...
2644:16C0 D2 10 04 00 C7 46 EC 01 00 83 7E FE 00 74 28 FF .....F....~..t(.
2644:16D0 76 FE FF 76 08 FF 76 06 9A 96 10 D6 38 83 C4 06 v..v..v.....8...
2644:16E0 C4 5E F8 26 89 47 34 3D FF FF 75 06 B8 01 00 EB .^.&.G4=..u.....
2644:16F0 03 90 2B C0 89 46 EC 83 7E EA 00 74 36 C7 06 0E ..+..F..~..t6...
2644:1700 13 00 00 C4 5E F8 26 C7 47 36 01 00 FF 76 EA FF ....^.&.G6...v..
2644:1710 76 08 FF 76 06 9A 96 10 D6 38 83 C4 06 C4 5E F8 v..v.....8....^.
2644:1720 26 89 47 38 3D FF FF 75 05 B8 01 00 EB 02 2B C0 &.G8=..u......+.
2644:1730 89 46 EC 83 7E EC 00 74 11 FF 76 FA FF 76 F8 0E .F..~..t..v..v..
2644:1740 E8 3F F8 83 C4 04 E9 08 F9 90 8B 46 F8 8B 56 FA .?.........F..V.
2644:1750 5E 5F 8B E5 5D CB                               ^_..].          

;; fn2644_1756: 2644:1756
;;   Called from:
;;     2644:19A2 (in fn2644_17C8)
fn2644_1756 proc
	push	bp
	mov	bp,sp
	sub	sp,6h
	push	di
	push	si
	sub	ax,ax
	mov	[bp-4h],ax
	mov	[bp-6h],ax
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	call	far 38ADh:0118h
	add	sp,6h
	mov	[bp-2h],ax
	jmp	17B3h

l2644_177C:
	mov	bx,[bp-2h]
	les	di,[bp+6h]
	mov	al,es:[bx+di]
	sub	ah,ah
	mov	si,ax
	push	si
	call	far 38ADh:0040h
	add	sp,2h
	test	al,2h
	jz	17BBh

l2644_1796:
	mov	ax,0Ah
	cwd
	push	dx
	push	ax
	lea	ax,[bp-6h]
	push	ax
	call	far 3CEEh:06EAh
	lea	ax,[si-30h]
	sub	dx,dx
	add	[bp-6h],ax
	adc	[bp-4h],dx
	inc	word ptr [bp-2h]

l2644_17B3:
	mov	ax,[bp+0Ah]
	cmp	[bp-2h],ax
	jc	177Ch

l2644_17BB:
	mov	ax,[bp-6h]
	mov	dx,[bp-4h]
	pop	si
	pop	di
	mov	sp,bp
	pop	bp
	retf
2644:17C7                      90                                .        

;; fn2644_17C8: 2644:17C8
;;   Called from:
;;     3CEE:470B (in fn3CEE_4490)
;;     3CEE:58A1 (in fn3CEE_5556)
fn2644_17C8 proc
	push	bp
	mov	bp,sp
	sub	sp,2Eh
	push	di
	push	si
	add	word ptr [1296h],10h
	les	bx,[bp+6h]
	mov	bx,es:[bx+6h]
	shl	bx,1h
	shl	bx,1h
	les	si,[130Ah]
	mov	ax,es:[bx+si]
	mov	dx,es:[bx+si+2h]
	mov	[bp-24h],ax
	mov	[bp-22h],dx
	or	ax,dx
	jnz	17F8h

l2644_17F5:
	jmp	1A0Ch

l2644_17F8:
	les	bx,[bp+6h]
	mov	ax,es:[bx]
	cmp	ax,10h
	jnz	1806h

l2644_1803:
	jmp	18ACh

l2644_1806:
	cmp	ax,40h
	jnz	180Eh

l2644_180B:
	jmp	1940h

l2644_180E:
	cmp	ax,80h
	jnz	1816h

l2644_1813:
	jmp	190Ah

l2644_1816:
	cmp	ax,100h
	jz	1832h

l2644_181B:
	cmp	ax,300h
	jnz	1823h

l2644_1820:
	jmp	197Ch

l2644_1823:
	les	bx,[1296h]
	mov	word ptr es:[bx],0h
	pop	si
	pop	di
	mov	sp,bp
	pop	bp
	retf

l2644_1832:
	les	bx,[bp+6h]
	mov	ax,es:[bx+2h]
	mov	[bp-2Eh],ax
	inc	ax
	mov	[bp-2Ah],ax
	push	ax
	lea	ax,[bp-28h]
	push	ss
	push	ax
	call	far 21DCh:0696h
	add	sp,6h
	or	ax,ax
	jz	1881h

l2644_1852:
	push	word ptr [bp-2Eh]
	les	bx,[bp+6h]
	mov	ax,es:[bx+8h]
	les	bx,[bp-24h]
	add	ax,es:[bx+5Ah]
	mov	dx,es:[bx+5Ch]
	push	dx
	push	ax
	push	word ptr [bp-26h]
	push	word ptr [bp-28h]
	call	far 2017h:02ECh
	add	sp,0Ah
	mov	bx,[bp-2Eh]
	les	si,[bp-28h]
	mov	byte ptr es:[bx+si],0h

l2644_1881:
	les	bx,[1296h]
	mov	word ptr es:[bx],100h
	mov	ax,[bp-2Eh]

l2644_188D:
	mov	es:[bx+2h],ax
	mov	ax,[bp-28h]
	mov	dx,[bp-26h]
	mov	es:[bx+8h],ax
	mov	es:[bx+0Ah],dx
	mov	ax,[bp-2Ah]
	mov	es:[bx+0Ch],ax
	pop	si
	pop	di
	mov	sp,bp
	pop	bp
	retf

l2644_18AC:
	les	bx,[1296h]
	mov	word ptr es:[bx],8h
	les	bx,[bp+6h]
	mov	ax,es:[bx+2h]
	les	bx,[1296h]
	mov	es:[bx+2h],ax
	les	bx,[bp+6h]
	mov	ax,es:[bx+4h]
	les	bx,[1296h]
	mov	es:[bx+4h],ax
	les	bx,[bp+6h]
	push	word ptr es:[bx+2h]
	mov	ax,es:[bx+8h]
	les	bx,[bp-24h]
	add	ax,es:[bx+5Ah]
	mov	dx,es:[bx+5Ch]
	push	dx
	push	ax
	call	far 3CEEh:0D30h
	add	sp,6h
	les	bx,[1296h]
	lea	di,[bx+8h]
	mov	si,ax
	push	ds
	mov	ds,dx
	movsw
	movsw
	movsw
	movsw
	pop	ds
	pop	si
	pop	di
	mov	sp,bp
	pop	bp
	retf

l2644_190A:
	les	bx,[1296h]
	mov	word ptr es:[bx],80h
	les	bx,[bp+6h]
	mov	bx,es:[bx+8h]
	les	si,[bp-24h]
	les	si,es:[si+5Ah]
	mov	al,es:[bx+si]
	sub	ah,ah
	push	ax
	call	far 38ADh:0040h
	add	sp,2h
	and	ax,8h
	les	bx,[1296h]
	mov	es:[bx+8h],ax
	pop	si
	pop	di
	mov	sp,bp
	pop	bp
	retf

l2644_1940:
	les	bx,[1296h]
	mov	word ptr es:[bx],20h
	sub	ax,ax
	push	ax
	mov	ax,bx
	mov	dx,es
	add	ax,8h
	push	dx
	push	ax
	les	bx,[bp+6h]
	push	word ptr es:[bx+2h]
	mov	ax,es:[bx+8h]
	les	bx,[bp-24h]
	add	ax,es:[bx+5Ah]
	mov	dx,es:[bx+5Ch]
	push	dx
	push	ax
	call	far 38D6h:03DCh
	add	sp,0Ch
	pop	si
	pop	di
	mov	sp,bp
	pop	bp
	retf
2644:197B                                  90                        .    

l2644_197C:
	mov	ax,5E5Eh
	mov	[bp-28h],ax
	mov	[bp-26h],ds
	mov	word ptr [bp-2Ah],0h
	les	bx,[bp+6h]
	push	word ptr es:[bx+2h]
	mov	ax,es:[bx+8h]
	les	bx,[bp-24h]
	add	ax,es:[bx+5Ah]
	mov	dx,es:[bx+5Ch]
	push	dx
	push	ax
	push	cs
	call	1756h
	add	sp,6h
	mov	[bp-2Ch],ax
	or	ax,ax
	jz	19EEh

l2644_19B0:
	push	ax
	push	word ptr [bp-22h]
	push	word ptr [bp-24h]
	call	far 2B9Ch:000Ch
	add	sp,6h
	mov	[bp-2Ah],ax
	push	ax
	lea	ax,[bp-28h]
	push	ss
	push	ax
	call	far 21DCh:0696h
	add	sp,6h
	or	ax,ax
	jz	19EEh

l2644_19D4:
	push	word ptr [bp-2Ah]
	push	word ptr [bp-26h]
	push	word ptr [bp-28h]
	push	word ptr [bp-2Ch]
	push	word ptr [bp-22h]
	push	word ptr [bp-24h]
	call	far 2B9Ch:009Ch
	add	sp,0Ch

l2644_19EE:
	les	bx,[1296h]
	mov	word ptr es:[bx],300h
	push	word ptr [bp-26h]
	push	word ptr [bp-28h]
	call	far 2017h:03F5h
	add	sp,4h
	les	bx,[1296h]
	jmp	188Dh

l2644_1A0C:
	les	bx,[1296h]
	mov	word ptr es:[bx],80h
	mov	word ptr es:[bx+8h],0h
	mov	word ptr [10D2h],14h
	pop	si
	pop	di
	mov	sp,bp
	pop	bp
	retf
2644:1A27                      90 55 8B EC 83 EC 28 56 C7        .U....(V.
2644:1A30 46 DA 00 00 C4 5E 06 26 8B 5F 06 D1 E3 D1 E3 C4 F....^.&._......
2644:1A40 36 0A 13 26 8B 00 26 8B 50 02 89 46 DC 89 56 DE 6..&..&.P..F..V.
2644:1A50 0B C2 75 05 C7 46 DA 15 00 83 7E DA 00 74 03 E9 ..u..F....~..t..
2644:1A60 63 02 C4 5E DC 26 83 7F 42 00 75 03 E9 56 02 26 c..^.&..B.u..V.&
2644:1A70 83 7F 56 00 75 3F 26 83 7F 3A 00 74 1B 26 83 7F ..V.u?&..:.t.&..
2644:1A80 4E 00 75 14 26 8B 47 50 26 8B 57 52 26 39 47 28 N.u.&.GP&.WR&9G(
2644:1A90 75 1E 26 39 57 2A 75 18 B8 05 00 50 06 53 0E E8 u.&9W*u....P.S..
2644:1AA0 70 04 83 C4 06 C4 5E DC 26 C7 47 56 01 00 EB 05 p.....^.&.GV....
2644:1AB0 C7 46 DA 16 00 83 7E DA 00 74 03 E9 07 02 C4 5E .F....~..t.....^
2644:1AC0 06 26 8B 07 3D 10 00 74 49 3D 40 00 75 03 E9 1B .&..=..tI=@.u...
2644:1AD0 01 3D 80 00 75 03 E9 E3 00 3D 00 01 74 0C 3D 00 .=..u....=..t.=.
2644:1AE0 03 75 03 E9 2E 01 E9 D7 01 90 C4 1E 96 12 26 F7 .u............&.
2644:1AF0 07 00 01 75 03 E9 C8 01 26 FF 77 02 C4 5E 06 26 ...u....&.w..^.&
2644:1B00 FF 77 02 C4 1E 96 12 26 FF 77 0A 26 FF 77 08 E9 .w.....&.w.&.w..
2644:1B10 90 01 C4 1E 96 12 26 83 3F 08 75 58 8D 46 E0 16 ......&.?.uX.F..
2644:1B20 50 C4 5E 06 26 FF 77 04 26 FF 77 02 C4 1E 96 12 P.^.&.w.&.w.....
2644:1B30 26 FF 77 0E 26 FF 77 0C 26 FF 77 0A 26 FF 77 08 &.w.&.w.&.w.&.w.
2644:1B40 9A A8 0D EE 3C 83 C4 10 C4 5E 06 26 FF 77 02 26 ....<....^.&.w.&
2644:1B50 FF 77 02 8D 46 E0 16 50 26 8B 47 08 C4 5E DC 26 .w..F..P&.G..^.&
2644:1B60 03 47 5A 26 8B 57 5C 52 50 9A 08 03 17 20 83 C4 .GZ&.W\RP.... ..
2644:1B70 0C EB 36 90 C4 1E 96 12 26 83 3F 02 75 26 C4 5E ..6.....&.?.u&.^
2644:1B80 06 26 FF 77 04 26 FF 77 02 C4 1E 96 12 26 FF 77 .&.w.&.w.....&.w
2644:1B90 0A 26 FF 77 08 8D 46 E0 16 50 9A FC 0E EE 3C 83 .&.w..F..P....<.
2644:1BA0 C4 0C EB A4 C7 46 DA 01 00 80 7E E0 2A 74 03 E9 .....F....~.*t..
2644:1BB0 13 01 C7 06 D2 10 17 00 E9 0A 01 90 C4 1E 96 12 ................
2644:1BC0 26 81 3F 80 00 74 03 E9 F6 00 26 83 7F 08 00 74 &.?..t....&....t
2644:1BD0 05 B0 54 EB 03 90 B0 46 C4 5E 06 26 8B 5F 08 C4 ..T....F.^.&._..
2644:1BE0 76 DC 26 C4 74 5A 26 88 00 E9 D9 00 C4 1E 96 12 v.&.tZ&.........
2644:1BF0 26 83 3F 20 74 03 E9 C7 00 2B C0 50 26 FF 77 0A &.? t....+.P&.w.
2644:1C00 26 FF 77 08 8D 46 E0 16 50 9A FA 06 D6 38 83 C4 &.w..F..P....8..
2644:1C10 0A EB 7F 90 C4 1E 96 12 26 F7 07 00 01 75 03 E9 ........&....u..
2644:1C20 9E 00 C4 5E 06 26 FF 77 02 26 8B 47 08 C4 5E DC ...^.&.w.&.G..^.
2644:1C30 26 03 47 5A 26 8B 57 5C 52 50 0E E8 18 FB 83 C4 &.GZ&.W\RP......
2644:1C40 06 89 46 D8 C4 1E 96 12 26 83 7F 02 00 74 25 26 ..F.....&....t%&
2644:1C50 8B 47 02 40 50 26 FF 77 0A 26 FF 77 08 FF 76 D8 .G.@P&.w.&.w..v.
2644:1C60 FF 76 DE FF 76 DC 9A F2 00 9C 2B 83 C4 0C 89 46 .v..v.....+....F
2644:1C70 D8 EB 06 90 C7 46 D8 00 00 C4 5E 06 26 8B 47 02 .....F....^.&.G.
2644:1C80 40 50 FF 76 D8 8D 46 E0 16 50 9A 68 0D D6 38 83 @P.v..F..P.h..8.
2644:1C90 C4 08 C4 5E 06 26 FF 77 02 26 FF 77 02 8D 46 E0 ...^.&.w.&.w..F.
2644:1CA0 16 50 C4 5E 06 26 8B 47 08 C4 5E DC 26 03 47 5A .P.^.&.G..^.&.GZ
2644:1CB0 26 8B 57 5C 52 50 9A 08 03 17 20 83 C4 0C EB 05 &.W\RP.... .....
2644:1CC0 C7 46 DA 01 00 83 7E DA 00 74 06 8B 46 DA A3 D2 .F....~..t..F...
2644:1CD0 10 9A 3C 03 68 23 5E 8B E5 5D CB 90 55 8B EC 81 ..<.h#^..]..U...
2644:1CE0 EC AA 00 56 9A BE 04 31 34 B8 01 00 50 9A DC 00 ...V...14...P...
2644:1CF0 AD 38 83 C4 02 52 50 9A F5 03 17 20 83 C4 04 50 .8...RP.... ...P
2644:1D00 B8 01 00 50 9A DC 00 AD 38 83 C4 02 52 50 9A 3C ...P....8...RP.<
2644:1D10 04 31 34 83 C4 06 B8 FA 13 1E 50 9A F5 03 17 20 .14.......P.... 
2644:1D20 83 C4 04 89 86 56 FF 50 B8 FA 13 1E 50 8D 46 BC .....V.P....P.F.
2644:1D30 16 50 9A EC 02 17 20 83 C4 0A B8 05 00 50 B8 60 .P.... ......P.`
2644:1D40 5E 1E 50 8B B6 56 FF 8D 42 BC 16 50 9A EC 02 17 ^.P..V..B..P....
2644:1D50 20 83 C4 0A 8B B6 56 FF C6 42 C1 00 2B C0 50 8D  .....V..B..+.P.
2644:1D60 86 5E FF 16 50 8D 46 BC 16 50 9A 6C 01 17 20 83 .^..P.F..P.l.. .
2644:1D70 C4 0A 0B C0 75 03 E9 8E 01 2B C0 89 86 5A FF 89 ....u....+...Z..
2644:1D80 86 58 FF 89 46 FE 89 46 FC B8 17 00 50 8D 86 7C .X..F..F....P..|
2644:1D90 FF 16 50 9A 96 10 D6 38 83 C4 06 89 86 5C FF 3D ..P....8.....\.=
2644:1DA0 FF FF 74 64 B8 20 00 50 8D 46 8C 16 50 FF B6 5C ..td. .P.F..P..\
2644:1DB0 FF 9A C9 00 8F 20 83 C4 08 89 46 8A 3D 20 00 75 ..... ....F.= .u
2644:1DC0 3B 80 7E 8C 03 74 06 80 7E 8C 83 75 2F 8B 46 90 ;.~..t..~..u/.F.
2644:1DD0 8B 56 92 89 86 58 FF 89 96 5A FF 8A 46 8D 2A E4 .V...X...Z..F.*.
2644:1DE0 05 6C 07 50 8A 46 8E 2A E4 50 8A 46 8F 50 9A 22 .l.P.F.*.P.F.P."
2644:1DF0 02 D6 38 83 C4 06 89 46 FC 89 56 FE FF B6 5C FF ..8....F..V...\.
2644:1E00 9A AE 00 8F 20 83 C4 02 9A BE 04 31 34 8D 86 7C .... ......14..|
2644:1E10 FF 16 50 9A F5 03 17 20 83 C4 04 50 B8 0C 00 50 ..P.... ...P...P
2644:1E20 8D 86 7C FF 16 50 8D 46 AC 16 50 9A 08 03 17 20 ..|..P.F..P.... 
2644:1E30 83 C4 0C B8 0C 00 50 8D 46 AC 16 50 9A 3C 04 31 ......P.F..P.<.1
2644:1E40 34 83 C4 06 B8 03 00 50 B8 66 5E 1E 50 9A 3C 04 4......P.f^.P.<.
2644:1E50 31 34 83 C4 06 2B C0 50 B8 0C 00 50 FF B6 5A FF 14...+.P...P..Z.
2644:1E60 FF B6 58 FF 8D 46 AC 16 50 9A FC 0E EE 3C 83 C4 ..X..F..P....<..
2644:1E70 0C B8 0C 00 50 8D 46 AC 16 50 9A 3C 04 31 34 83 ....P.F..P.<.14.
2644:1E80 C4 06 B8 04 00 50 B8 6A 5E 1E 50 9A 3C 04 31 34 .....P.j^.P.<.14
2644:1E90 83 C4 06 FF 36 8E 12 FF 76 FE FF 76 FC 8D 46 AC ....6...v..v..F.
2644:1EA0 16 50 9A FA 06 D6 38 83 C4 0A 8D 46 AC 16 50 9A .P....8....F..P.
2644:1EB0 F5 03 17 20 83 C4 04 50 8D 46 AC 16 50 9A 3C 04 ... ...P.F..P.<.
2644:1EC0 31 34 83 C4 06 2B C0 50 B8 0C 00 50 FF B6 7A FF 14...+.P...P..z.
2644:1ED0 FF B6 78 FF 8D 46 AC 16 50 9A FC 0E EE 3C 83 C4 ..x..F..P....<..
2644:1EE0 0C B8 0C 00 50 8D 46 AC 16 50 9A 3C 04 31 34 83 ....P.F..P.<.14.
2644:1EF0 C4 06 8D 86 5E FF 16 50 9A 8F 01 17 20 83 C4 04 ....^..P.... ...
2644:1F00 0B C0 74 03 E9 72 FE 9A BE 04 31 34 5E 8B E5 5D ..t..r....14^..]
2644:1F10 CB 90                                           ..              

;; fn2644_1F12: 2644:1F12
;;   Called from:
;;     2644:2833 (in fn2644_27D4)
;;     2644:285E (in fn2644_27D4)
;;     2644:2B01 (in fn2644_27D4)
;;     2644:2B20 (in fn2644_27D4)
;;     2644:2B56 (in fn2644_2B40)
;;     2644:2C41 (in fn2644_2C1A)
;;     2644:2CE4 (in fn2644_2C1A)
;;     2644:2D17 (in fn2644_2CF0)
;;     2644:2DD2 (in fn2644_2CF0)
;;     2644:44E9 (in fn2644_44C4)
;;     2644:4523 (in fn2644_44C4)
;;     2644:45E5 (in fn2644_45CA)
;;     2EB3:0096 (in fn2EB3_0064)
;;     2EB3:081B (in fn2EB3_07B2)
;;     2EB3:094E (in fn2EB3_07B2)
fn2644_1F12 proc
	push	bp
	mov	bp,sp
	sub	sp,8h
	push	si
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+56h],0h
	jz	1F7Ah

l2644_1F23:
	mov	word ptr [bp-4h],1h
	jmp	1F50h

l2644_1F2A:
	push	word ptr es:[bx+58h]
	push	word ptr es:[bx+2Ah]
	push	word ptr es:[bx+28h]
	mov	si,[bp-4h]
	shl	si,1h
	shl	si,1h
	push	word ptr es:[bx+si+68h]
	push	word ptr es:[bx+si+66h]
	call	far 2EB3h:24C6h
	add	sp,0Ah
	inc	word ptr [bp-4h]

l2644_1F50:
	les	bx,[bp+6h]
	mov	ax,[bp-4h]
	cmp	es:[bx+64h],ax
	jnc	1F2Ah

l2644_1F5C:
	push	es
	push	bx
	push	cs
	call	21CAh
	add	sp,4h
	les	bx,[bp+6h]
	mov	word ptr es:[bx+56h],0h
	mov	word ptr es:[bx+54h],1h
	mov	word ptr es:[bx+58h],0h

l2644_1F7A:
	mov	word ptr [bp-2h],0h
	cmp	word ptr [bp+0Ah],5h
	jnz	1FB4h

l2644_1F85:
	mov	word ptr [bp-4h],1h
	jmp	1F8Fh

l2644_1F8C:
	inc	word ptr [bp-4h]

l2644_1F8F:
	les	bx,[bp+6h]
	mov	ax,[bp-4h]
	cmp	es:[bx+64h],ax
	jc	2001h

l2644_1F9B:
	mov	si,ax
	shl	si,1h
	shl	si,1h
	push	word ptr es:[bx+si+68h]
	push	word ptr es:[bx+si+66h]
	call	far 2EB3h:240Ah
	add	sp,4h
	jmp	1F8Ch
2644:1FB3          90                                        .            

l2644_1FB4:
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+62h],0h
	jz	2001h

l2644_1FBE:
	mov	si,es:[bx+62h]
	shl	si,1h
	shl	si,1h
	mov	ax,es:[bx+si+66h]
	mov	dx,es:[bx+si+68h]
	mov	[bp-8h],ax
	mov	[bp-6h],dx
	mov	ax,[bp+0Ah]
	cmp	ax,2h
	jz	1FE8h

l2644_1FDC:
	cmp	ax,3h
	jz	200Ah

l2644_1FE1:
	cmp	ax,4h
	jz	2050h

l2644_1FE6:
	jmp	2001h

l2644_1FE8:
	les	bx,[bp-8h]
	cmp	word ptr es:[bx+2h],0h
	jz	2001h

l2644_1FF2:
	push	es
	push	bx
	call	far 2EB3h:0B54h
	add	sp,4h
	mov	word ptr [bp-2h],1h

l2644_2001:
	mov	ax,[bp-2h]
	pop	si
	mov	sp,bp
	pop	bp
	retf
2644:2009                            90                            .      

l2644_200A:
	les	bx,[bp-8h]
	cmp	word ptr es:[bx+2h],0h
	jz	2023h

l2644_2014:
	push	es
	push	bx
	call	far 2EB3h:0B54h
	add	sp,4h
	mov	word ptr [bp-2h],1h

l2644_2023:
	les	bx,[bp-8h]
	cmp	word ptr es:[bx+2Eh],0h
	jnz	2001h

l2644_202D:
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+42h],0h
	jz	2001h

l2644_2037:
	push	word ptr es:[bx+2Ah]
	push	word ptr es:[bx+28h]
	push	word ptr [bp-6h]
	push	word ptr [bp-8h]
	call	far 2EB3h:2450h
	add	sp,8h
	jmp	2001h
2644:204F                                              90                .

l2644_2050:
	les	bx,[bp-8h]
	cmp	word ptr es:[bx+2h],0h
	jz	2001h

l2644_205A:
	push	word ptr es:[bx]
	call	far 207Fh:0048h
	add	sp,2h
	jmp	2001h
2644:2067                      90                                .        

;; fn2644_2068: 2644:2068
;;   Called from:
;;     2644:22E1 (in fn2644_22BE)
;;     2644:2D5A (in fn2644_2CF0)
;;     2644:4644 (in fn2644_45CA)
fn2644_2068 proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	mov	ax,2h
	push	ax
	sub	ax,ax
	push	ax
	push	ax
	les	bx,[bp+6h]
	push	word ptr es:[bx+34h]
	call	far 208Fh:0115h
	add	sp,8h
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	les	bx,[bp+6h]
	push	word ptr es:[bx+22h]
	push	word ptr es:[bx+20h]
	sub	ax,es:[bx+24h]
	sbb	dx,es:[bx+26h]
	push	dx
	push	ax
	call	far 3CEEh:0500h
	mov	sp,bp
	pop	bp
	retf
2644:20A9                            90                            .      

;; fn2644_20AA: 2644:20AA
;;   Called from:
;;     2644:2328 (in fn2644_22BE)
fn2644_20AA proc
	push	bp
	mov	bp,sp
	sub	sp,0Ah
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+32h],0h
	jz	20BDh

l2644_20BA:
	jmp	21A2h

l2644_20BD:
	mov	ax,es:[bx+30h]
	mov	[bp-2h],ax
	or	ax,ax
	jz	2105h

l2644_20C8:
	push	word ptr es:[bx+2Ah]
	push	word ptr es:[bx+28h]
	push	ax
	call	far 2D1Ah:02FCh
	add	sp,6h
	mov	[bp-0Ah],ax
	mov	[bp-8h],dx
	or	ax,dx
	jz	2100h

l2644_20E3:
	les	bx,[bp+6h]
	push	word ptr es:[bx+20h]
	push	dx
	push	word ptr [bp-0Ah]
	push	word ptr es:[bx+5Ch]
	push	word ptr es:[bx+5Ah]
	call	far 2017h:0258h
	add	sp,0Ah
	jmp	2105h

l2644_2100:
	mov	word ptr [bp-2h],0h

l2644_2105:
	cmp	word ptr [bp-2h],0h
	jnz	216Ah

l2644_210B:
	les	bx,[bp+6h]
	push	word ptr es:[bx+22h]
	push	word ptr es:[bx+20h]
	mov	ax,es:[bx+28h]
	mov	dx,es:[bx+2Ah]
	sub	ax,1h
	sbb	dx,0h
	push	dx
	push	ax
	call	far 3CEEh:05A6h
	les	bx,[bp+6h]
	add	ax,es:[bx+24h]
	adc	dx,es:[bx+26h]
	mov	[bp-6h],ax
	mov	[bp-4h],dx
	sub	ax,ax
	push	ax
	push	dx
	push	word ptr [bp-6h]
	push	word ptr es:[bx+34h]
	call	far 208Fh:0115h
	add	sp,8h
	les	bx,[bp+6h]
	push	word ptr es:[bx+20h]
	push	word ptr es:[bx+5Ch]
	push	word ptr es:[bx+5Ah]
	push	word ptr es:[bx+34h]
	call	far 208Fh:00C9h
	add	sp,8h

l2644_216A:
	les	bx,[bp+6h]
	mov	word ptr es:[bx+42h],1h
	les	bx,es:[bx+5Ah]
	cmp	byte ptr es:[bx],2Ah
	jnz	2182h

l2644_217D:
	mov	ax,1h
	jmp	2184h

l2644_2182:
	sub	ax,ax

l2644_2184:
	les	bx,[bp+6h]
	mov	es:[bx+46h],ax
	mov	word ptr es:[bx+48h],0h
	mov	word ptr es:[bx+4Ah],0h
	mov	word ptr es:[bx+4Ch],0h
	mov	sp,bp
	pop	bp
	retf
2644:21A1    90                                            .              

l2644_21A2:
	cmp	word ptr es:[bx+32h],1h
	jnz	21B2h

l2644_21A9:
	push	es
	push	bx
	call	far 2B41h:00B4h
	jmp	21C3h

l2644_21B2:
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+32h],2h
	jnz	21C6h

l2644_21BC:
	push	es
	push	bx
	call	far 2B41h:01FAh

l2644_21C3:
	add	sp,4h

l2644_21C6:
	mov	sp,bp
	pop	bp
	retf

;; fn2644_21CA: 2644:21CA
;;   Called from:
;;     2644:1F5E (in fn2644_1F12)
fn2644_21CA proc
	push	bp
	mov	bp,sp
	sub	sp,8h
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+32h],0h
	jz	21DDh

l2644_21DA:
	jmp	2292h

l2644_21DD:
	mov	ax,es:[bx+30h]
	mov	[bp-2h],ax
	or	ax,ax
	jz	220Ah

l2644_21E8:
	push	word ptr es:[bx+5Ch]
	push	word ptr es:[bx+5Ah]
	push	word ptr es:[bx+2Ah]
	push	word ptr es:[bx+28h]
	push	ax
	call	far 2D1Ah:03E4h
	add	sp,0Ah
	or	dx,ax
	jnz	220Ah

l2644_2205:
	mov	word ptr [bp-2h],0h

l2644_220A:
	cmp	word ptr [bp-2h],0h
	jz	2213h

l2644_2210:
	jmp	22BAh

l2644_2213:
	les	bx,[bp+6h]
	push	word ptr es:[bx+22h]
	push	word ptr es:[bx+20h]
	mov	ax,es:[bx+28h]
	mov	dx,es:[bx+2Ah]
	sub	ax,1h
	sbb	dx,0h
	push	dx
	push	ax
	call	far 3CEEh:05A6h
	les	bx,[bp+6h]
	add	ax,es:[bx+24h]
	adc	dx,es:[bx+26h]
	mov	[bp-6h],ax
	mov	[bp-4h],dx
	sub	ax,ax
	push	ax
	push	dx
	push	word ptr [bp-6h]
	push	word ptr es:[bx+34h]
	call	far 208Fh:0115h
	add	sp,8h
	les	bx,[bp+6h]
	push	word ptr es:[bx+20h]
	push	word ptr es:[bx+5Ch]
	push	word ptr es:[bx+5Ah]
	push	word ptr es:[bx+34h]
	call	far 208Fh:00EFh
	add	sp,8h
	mov	[bp-8h],ax
	les	bx,[bp+6h]
	cmp	es:[bx+20h],ax
	jz	22BAh

l2644_227E:
	mov	ax,5E70h
	push	ds
	push	ax
	sub	ax,ax
	push	ax
	call	far 20B2h:10ACh
	add	sp,6h
	mov	sp,bp
	pop	bp
	retf

l2644_2292:
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+32h],1h
	jnz	22A6h

l2644_229C:
	push	es
	push	bx
	call	far 2B41h:01B8h
	jmp	22B7h
2644:22A5                90                                    .          

l2644_22A6:
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+32h],2h
	jnz	22BAh

l2644_22B0:
	push	es
	push	bx
	call	far 2B41h:042Eh

l2644_22B7:
	add	sp,4h

l2644_22BA:
	mov	sp,bp
	pop	bp
	retf

;; fn2644_22BE: 2644:22BE
;;   Called from:
;;     2644:248F (in fn2644_2384)
;;     2644:28F1 (in fn2644_27D4)
;;     2644:2996 (in fn2644_27D4)
;;     2644:2A4D (in fn2644_27D4)
;;     2644:2AA0 (in fn2644_27D4)
;;     2644:2B85 (in fn2644_2B40)
;;     2644:2C94 (in fn2644_2C1A)
;;     2644:2D82 (in fn2644_2CF0)
;;     2EB3:0852 (in fn2EB3_07B2)
;;     2EB3:0902 (in fn2EB3_07B2)
fn2644_22BE proc
	push	bp
	mov	bp,sp
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+3Ah],0h
	jz	22F3h

l2644_22CB:
	mov	ax,[bp+0Ah]
	mov	dx,[bp+0Ch]
	cmp	es:[bx+2Eh],dx
	jg	22F3h

l2644_22D7:
	jl	22DFh

l2644_22D9:
	cmp	es:[bx+2Ch],ax
	jnc	22F3h

l2644_22DF:
	push	es
	push	bx
	push	cs
	call	2068h
	add	sp,4h
	les	bx,[bp+6h]
	mov	es:[bx+2Ch],ax
	mov	es:[bx+2Eh],dx

l2644_22F3:
	mov	ax,[bp+0Ah]
	mov	dx,[bp+0Ch]
	cmp	es:[bx+2Eh],dx
	jl	2332h

l2644_22FF:
	jg	2307h

l2644_2301:
	cmp	es:[bx+2Ch],ax
	jc	2332h

l2644_2307:
	cmp	word ptr [bp+0Ch],0h
	jl	2332h

l2644_230D:
	jg	2315h

l2644_230F:
	cmp	word ptr [bp+0Ah],1h
	jc	2332h

l2644_2315:
	les	bx,[bp+6h]
	mov	ax,[bp+0Ah]
	mov	dx,[bp+0Ch]
	mov	es:[bx+28h],ax
	mov	es:[bx+2Ah],dx
	push	es
	push	bx
	push	cs
	call	20AAh
	add	sp,4h
	pop	bp
	retf
2644:2331    90                                            .              

l2644_2332:
	les	bx,[bp+6h]
	mov	ax,es:[bx+2Ch]
	mov	dx,es:[bx+2Eh]
	add	ax,1h
	adc	dx,0h
	mov	es:[bx+28h],ax
	mov	es:[bx+2Ah],dx
	mov	word ptr es:[bx+42h],0h
	mov	word ptr es:[bx+46h],0h
	mov	word ptr es:[bx+48h],1h
	mov	word ptr es:[bx+4Ah],1h
	mov	word ptr es:[bx+4Ch],0h
	push	word ptr es:[bx+20h]
	mov	ax,20h
	push	ax
	push	word ptr es:[bx+5Ch]
	push	word ptr es:[bx+5Ah]
	call	far 2017h:0228h
	add	sp,8h
	pop	bp
	retf
2644:2383          90                                        .            

;; fn2644_2384: 2644:2384
;;   Called from:
;;     2644:2918 (in fn2644_27D4)
;;     2644:29BD (in fn2644_27D4)
;;     2644:2CCD (in fn2644_2C1A)
;;     2644:2DBB (in fn2644_2CF0)
;;     2EB3:08A4 (in fn2EB3_07B2)
fn2644_2384 proc
	push	bp
	mov	bp,sp
	sub	sp,8h
	push	si
	cmp	word ptr [10D2h],0h
	jz	239Ah

l2644_2392:
	sub	ax,ax
	pop	si
	mov	sp,bp
	pop	bp
	retf
2644:2399                            90                            .      

l2644_239A:
	mov	word ptr [bp-2h],0h
	mov	word ptr [bp-8h],1h
	jmp	24AAh
2644:23A7                      90                                .        

l2644_23A8:
	cmp	word ptr [bp-8h],0h
	jnz	23B1h

l2644_23AE:
	jmp	24B7h

l2644_23B1:
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+0B0h],0h
	jz	2420h

l2644_23BC:
	mov	ax,8h
	push	ax
	push	word ptr es:[bx+0B0h]
	call	far 31FFh:1BE6h
	add	sp,4h
	les	bx,[1296h]
	cmp	word ptr es:[bx+8h],0h
	jz	23E9h

l2644_23D8:
	cmp	word ptr [13E8h],0h
	jz	23EEh

l2644_23DF:
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+46h],0h
	jz	23EEh

l2644_23E9:
	mov	ax,1h
	jmp	23F0h

l2644_23EE:
	sub	ax,ax

l2644_23F0:
	mov	[bp-8h],ax
	cmp	word ptr [10D2h],0h
	jnz	2411h

l2644_23FA:
	les	bx,[1296h]
	cmp	word ptr es:[bx],80h
	jz	2411h

l2644_2405:
	mov	word ptr [10D6h],8h
	mov	word ptr [10D2h],1h

l2644_2411:
	call	far 2368h:033Ch
	cmp	word ptr [10D2h],0h
	jz	243Bh

l2644_241D:
	jmp	2392h

l2644_2420:
	cmp	word ptr [13E8h],0h
	jz	2436h

l2644_2427:
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+46h],0h
	jz	2436h

l2644_2431:
	mov	ax,1h
	jmp	2438h

l2644_2436:
	sub	ax,ax

l2644_2438:
	mov	[bp-8h],ax

l2644_243B:
	cmp	word ptr [bp-8h],0h
	jz	24AAh

l2644_2441:
	mov	word ptr [bp-2h],1h
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+62h],0h
	jz	2470h

l2644_2450:
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	mov	si,es:[bx+62h]
	shl	si,1h
	shl	si,1h
	push	word ptr es:[bx+si+68h]
	push	word ptr es:[bx+si+66h]
	call	far 2EB3h:2062h
	add	sp,8h
	jmp	2481h

l2644_2470:
	les	bx,[bp+6h]
	mov	ax,es:[bx+28h]
	mov	dx,es:[bx+2Ah]
	add	ax,[bp+0Ah]
	adc	dx,[bp+0Ch]

l2644_2481:
	mov	[bp-6h],ax
	mov	[bp-4h],dx
	push	dx
	push	ax
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	22BEh
	add	sp,8h
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+0BAh],0h
	jz	24AAh

l2644_24A1:
	push	es
	push	bx
	push	cs
	call	24C0h
	add	sp,4h

l2644_24AA:
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+42h],0h
	jz	24B7h

l2644_24B4:
	jmp	23A8h

l2644_24B7:
	mov	ax,[bp-2h]
	pop	si
	mov	sp,bp
	pop	bp
	retf
2644:24BF                                              90                .

;; fn2644_24C0: 2644:24C0
;;   Called from:
;;     2644:24A3 (in fn2644_2384)
;;     2644:2905 (in fn2644_27D4)
;;     2644:29AA (in fn2644_27D4)
;;     2644:2ABA (in fn2644_27D4)
;;     2644:2B34 (in fn2644_27D4)
;;     2644:2B99 (in fn2644_2B40)
;;     2644:2CA8 (in fn2644_2C1A)
;;     2644:2D96 (in fn2644_2CF0)
;;     2EB3:086F (in fn2EB3_07B2)
;;     2EB3:0917 (in fn2EB3_07B2)
fn2644_24C0 proc
	push	bp
	mov	bp,sp
	sub	sp,12h
	push	di
	push	si
	mov	word ptr [bp-0Ah],0h
	jmp	2624h

l2644_24D0:
	mov	ax,[12FCh]
	mov	[bp-2h],ax
	les	bx,[bp+6h]
	mov	ax,es:[bx+3Ch]
	mov	[12FCh],ax
	mov	bx,es:[bx+3Ch]
	shl	bx,1h
	shl	bx,1h
	les	si,[130Ah]
	mov	ax,es:[bx+si]
	mov	dx,es:[bx+si+2h]
	mov	bx,si
	mov	es:[bx],ax
	mov	es:[bx+2h],dx
	mov	ax,4h
	push	ax
	les	bx,[bp-8h]
	push	word ptr es:[bx]
	call	far 31FFh:1BE6h
	add	sp,4h
	mov	ax,[bp-2h]
	mov	[12FCh],ax
	mov	bx,ax
	shl	bx,1h
	shl	bx,1h
	les	si,[130Ah]
	mov	ax,es:[bx+si]
	mov	dx,es:[bx+si+2h]
	mov	bx,si
	mov	es:[bx],ax
	mov	es:[bx+2h],dx

l2644_252E:
	cmp	word ptr [10D2h],0h
	jz	2540h

l2644_2535:
	call	far 2368h:033Ch
	pop	si
	pop	di
	mov	sp,bp
	pop	bp
	retf

l2644_2540:
	les	bx,[bp-8h]
	mov	bx,es:[bx+2h]
	shl	bx,1h
	shl	bx,1h
	les	si,[130Ah]
	mov	ax,es:[bx+si]
	mov	dx,es:[bx+si+2h]
	mov	[bp-12h],ax
	mov	[bp-10h],dx
	les	bx,[bp-12h]
	cmp	word ptr es:[bx+62h],0h
	jz	2590h

l2644_2566:
	sub	ax,ax
	push	ax
	mov	ax,[1296h]
	mov	dx,[1298h]
	sub	sp,10h
	mov	si,ax
	mov	di,sp
	push	ss
	pop	es
	push	ds
	mov	ds,dx
	mov	cx,8h
	rep movsw
	pop	ds
	push	word ptr [bp-10h]
	push	bx
	call	far 2EB3h:07B2h
	add	sp,16h
	jmp	25F9h

l2644_2590:
	les	bx,[1296h]
	test	byte ptr es:[bx],8h
	jz	25BAh

l2644_259A:
	push	word ptr es:[bx+0Eh]
	push	word ptr es:[bx+0Ch]
	push	word ptr es:[bx+0Ah]
	push	word ptr es:[bx+8h]
	call	far 3CEEh:0C5Ah
	add	sp,8h

l2644_25B2:
	mov	[bp-0Eh],ax
	mov	[bp-0Ch],dx
	jmp	25D6h

l2644_25BA:
	les	bx,[1296h]
	test	byte ptr es:[bx],2h
	jz	25CEh

l2644_25C4:
	mov	ax,es:[bx+8h]
	mov	dx,es:[bx+0Ah]
	jmp	25B2h

l2644_25CE:
	sub	ax,ax
	mov	[bp-0Ch],ax
	mov	[bp-0Eh],ax

l2644_25D6:
	push	word ptr [bp-0Ch]
	push	word ptr [bp-0Eh]
	les	bx,[bp-8h]
	mov	bx,es:[bx+2h]
	shl	bx,1h
	shl	bx,1h
	les	si,[130Ah]
	push	word ptr es:[bx+si+2h]
	push	word ptr es:[bx+si]
	push	cs
	call	2B40h
	add	sp,8h

l2644_25F9:
	call	far 2368h:033Ch
	jmp	2621h

l2644_2600:
	sub	ax,ax
	push	ax
	push	ax
	les	bx,[bp-8h]
	mov	bx,es:[bx+2h]
	shl	bx,1h
	shl	bx,1h
	les	si,[130Ah]
	push	word ptr es:[bx+si+2h]
	push	word ptr es:[bx+si]
	push	cs
	call	2B40h
	add	sp,8h

l2644_2621:
	inc	word ptr [bp-0Ah]

l2644_2624:
	les	bx,[bp+6h]
	mov	ax,[bp-0Ah]
	cmp	es:[bx+0BAh],ax
	jbe	2692h

l2644_2631:
	cmp	word ptr [10D2h],0h
	jnz	2692h

l2644_2638:
	mov	cx,ax
	shl	ax,1h
	shl	ax,1h
	add	ax,cx
	shl	ax,1h
	add	ax,bx
	mov	dx,es
	add	ax,0BCh
	mov	[bp-8h],ax
	mov	[bp-6h],dx
	les	bx,[bp-8h]
	mov	bx,es:[bx+2h]
	shl	bx,1h
	shl	bx,1h
	les	si,[130Ah]
	mov	ax,es:[bx+si]
	or	ax,es:[bx+si+2h]
	jz	2621h

l2644_2667:
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+42h],0h
	jz	2600h

l2644_2671:
	mov	ax,[12FCh]
	cmp	es:[bx+3Ch],ax
	jz	267Dh

l2644_267A:
	jmp	24D0h

l2644_267D:
	mov	ax,4h
	push	ax
	les	bx,[bp-8h]
	push	word ptr es:[bx]
	call	far 31FFh:1BE6h
	add	sp,4h
	jmp	252Eh

l2644_2692:
	pop	si
	pop	di
	mov	sp,bp
	pop	bp
	retf
2644:2698                         57 56 C4 1E 0A 13 26 8B         WV....&.
2644:26A0 07 26 0B 47 02 74 30 FF 36 F2 13 83 EC 10 BE AA .&.G.t0.6.......
2644:26B0 12 8B FC 16 07 B9 08 00 F3 A5 8E 06 0C 13 26 FF ..............&.
2644:26C0 77 02 26 FF 37 9A B2 07 B3 2E 83 C4 16 0B C0 75 w.&.7..........u
2644:26D0 06 C7 06 D2 10 01 00 5E 5F CB 55 8B EC 83 EC 0A .......^_.U.....
2644:26E0 56 9A 60 0D DC 21 C4 1E 0A 13 26 8B 07 26 8B 57 V.`..!....&..&.W
2644:26F0 02 89 46 F6 89 56 F8 0B C2 75 03 E9 CE 00 C4 5E ..F..V...u.....^
2644:2700 F6 26 83 7F 32 00 74 03 E9 B0 00 B8 02 00 50 52 .&..2.t.......PR
2644:2710 53 0E E8 FD F7 83 C4 06 89 46 FA C4 5E F6 26 83 S........F..^.&.
2644:2720 7F 62 00 74 29 B8 04 00 50 2B C0 50 50 50 26 8B .b.t)...P+.PPP&.
2644:2730 77 62 D1 E6 D1 E6 26 FF 70 68 26 FF 70 66 9A CC wb....&.ph&.pf..
2644:2740 1F B3 2E 83 C4 0C 89 46 FC 89 56 FE EB 0A C7 46 .......F..V....F
2644:2750 FC 01 00 C7 46 FE 00 00 FF 76 FE FF 76 FC FF 76 ....F....v..v..v
2644:2760 F8 FF 76 F6 0E E8 56 FB 83 C4 08 C4 5E F6 26 83 ..v...V.....^.&.
2644:2770 BF BA 00 00 74 09 06 53 0E E8 44 FD 83 C4 04 83 ....t..S..D.....
2644:2780 3E E8 13 00 75 0B C4 5E F6 26 83 BF B0 00 00 74 >...u..^.&.....t
2644:2790 13 B8 01 00 99 52 50 FF 76 F8 FF 76 F6 0E E8 E3 .....RP.v..v....
2644:27A0 FB 83 C4 08 83 7E FA 00 74 11 B8 04 00 50 FF 76 .....~..t....P.v
2644:27B0 F8 FF 76 F6 0E E8 5A F7 83 C4 06 C4 5E F6 26 83 ..v...Z.....^.&.
2644:27C0 7F 42 01 1B C0 F7 D8 5E 8B E5 5D CB B8 01 00 5E .B.....^..]....^
2644:27D0 8B E5 5D CB                                     ..].            

;; fn2644_27D4: 2644:27D4
;;   Called from:
;;     3CEE:3C6A (in fn3CEE_3C50)
fn2644_27D4 proc
	push	bp
	mov	bp,sp
	sub	sp,18h
	push	si
	mov	ax,[12B2h]
	mov	dx,[12B4h]
	mov	[bp-0Eh],ax
	mov	[bp-0Ch],dx
	or	dx,dx
	jge	27F2h

l2644_27EC:
	mov	ax,0FFFFh
	jmp	27F5h
2644:27F1    90                                            .              

l2644_27F2:
	mov	ax,1h

l2644_27F5:
	cwd
	mov	[bp-18h],ax
	mov	[bp-16h],dx
	les	bx,[130Ah]
	mov	ax,es:[bx]
	mov	dx,es:[bx+2h]
	mov	[bp-0Ah],ax
	mov	[bp-8h],dx
	or	ax,dx
	jnz	2814h

l2644_2811:
	jmp	2B0Eh

l2644_2814:
	mov	ax,[bp-0Eh]
	or	ax,[bp-0Ch]
	jnz	281Fh

l2644_281C:
	jmp	2B0Eh

l2644_281F:
	les	bx,[bp-0Ah]
	mov	ax,es:[bx+62h]
	mov	[bp-10h],ax
	or	ax,ax
	jz	2858h

l2644_282D:
	mov	ax,3h
	push	ax
	push	dx
	push	bx
	push	cs
	call	1F12h
	add	sp,6h
	mov	[bp-6h],ax
	mov	si,[bp-10h]
	shl	si,1h
	shl	si,1h
	les	bx,[bp-0Ah]
	mov	ax,es:[bx+si+66h]
	mov	dx,es:[bx+si+68h]
	mov	[bp-14h],ax
	mov	[bp-12h],dx
	jmp	2868h
2644:2857                      90                                .        

l2644_2858:
	mov	ax,2h
	push	ax
	push	es
	push	bx
	push	cs
	call	1F12h
	add	sp,6h
	mov	[bp-6h],ax

l2644_2868:
	cmp	word ptr [13E8h],0h
	jnz	287Dh

l2644_286F:
	les	bx,[bp-0Ah]
	cmp	word ptr es:[bx+0B0h],0h
	jnz	287Dh

l2644_287A:
	jmp	29D0h

l2644_287D:
	cmp	word ptr [bp-10h],0h
	jz	28CEh

l2644_2883:
	les	bx,[bp-0Ah]
	cmp	word ptr es:[bx+42h],0h
	jz	28A4h

l2644_288D:
	push	word ptr [bp-16h]
	push	word ptr [bp-18h]
	push	word ptr [bp-12h]
	push	word ptr [bp-14h]
	call	far 2EB3h:2062h
	add	sp,8h
	jmp	28DFh
2644:28A3          90                                        .            

l2644_28A4:
	cmp	word ptr [bp-16h],0h
	jge	28C4h

l2644_28AA:
	mov	ax,3h
	push	ax
	sub	ax,ax
	push	ax
	push	ax
	push	ax
	push	word ptr [bp-12h]
	push	word ptr [bp-14h]
	call	far 2EB3h:1FCCh
	add	sp,0Ch
	jmp	28DFh
2644:28C3          90                                        .            

l2644_28C4:
	sub	ax,ax
	mov	[bp-2h],ax
	mov	[bp-4h],ax
	jmp	28E5h

l2644_28CE:
	les	bx,[bp-0Ah]
	mov	ax,es:[bx+28h]
	mov	dx,es:[bx+2Ah]
	add	ax,[bp-18h]
	adc	dx,[bp-16h]

l2644_28DF:
	mov	[bp-4h],ax
	mov	[bp-2h],dx

l2644_28E5:
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	push	word ptr [bp-8h]
	push	word ptr [bp-0Ah]
	push	cs
	call	22BEh
	add	sp,8h
	les	bx,[bp-0Ah]
	cmp	word ptr es:[bx+0BAh],0h
	jz	290Ch

l2644_2903:
	push	es
	push	bx
	push	cs
	call	24C0h
	add	sp,4h

l2644_290C:
	push	word ptr [bp-16h]
	push	word ptr [bp-18h]
	push	word ptr [bp-8h]
	push	word ptr [bp-0Ah]
	push	cs
	call	2384h
	add	sp,8h
	mov	ax,[bp-18h]
	mov	dx,[bp-16h]
	sub	[bp-0Eh],ax
	sbb	[bp-0Ch],dx
	les	bx,[bp-0Ah]
	cmp	word ptr es:[bx+42h],0h
	jz	2947h

l2644_2935:
	mov	ax,[bp-0Eh]
	or	ax,[bp-0Ch]
	jz	2947h

l2644_293D:
	cmp	word ptr [10D2h],0h
	jnz	2947h

l2644_2944:
	jmp	287Dh

l2644_2947:
	cmp	word ptr es:[bx+42h],0h
	jz	2951h

l2644_294E:
	jmp	2AC1h

l2644_2951:
	cmp	word ptr [bp-16h],0h
	jl	295Ah

l2644_2957:
	jmp	2AC1h

l2644_295A:
	cmp	word ptr [bp-10h],0h
	jz	2980h

l2644_2960:
	mov	ax,4h
	push	ax
	sub	ax,ax
	push	ax
	push	ax
	push	ax
	push	word ptr [bp-12h]
	push	word ptr [bp-14h]
	call	far 2EB3h:1FCCh
	add	sp,0Ch
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	jmp	298Ah
2644:297F                                              90                .

l2644_2980:
	mov	word ptr [bp-4h],1h
	mov	word ptr [bp-2h],0h

l2644_298A:
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	push	word ptr [bp-8h]
	push	word ptr [bp-0Ah]
	push	cs
	call	22BEh
	add	sp,8h
	les	bx,[bp-0Ah]
	cmp	word ptr es:[bx+0BAh],0h
	jz	29B1h

l2644_29A8:
	push	es
	push	bx
	push	cs
	call	24C0h
	add	sp,4h

l2644_29B1:
	mov	ax,1h
	cwd
	push	dx
	push	ax
	push	word ptr [bp-8h]
	push	word ptr [bp-0Ah]
	push	cs
	call	2384h
	add	sp,8h
	les	bx,[bp-0Ah]
	mov	word ptr es:[bx+4Ah],1h
	jmp	2AC1h

l2644_29D0:
	cmp	word ptr [bp-10h],0h
	jz	2A2Ah

l2644_29D6:
	cmp	word ptr es:[bx+42h],0h
	jnz	2A0Ch

l2644_29DD:
	cmp	word ptr [bp-16h],0h
	jge	2A0Ch

l2644_29E3:
	mov	ax,3h
	push	ax
	sub	ax,ax
	push	ax
	push	ax
	push	ax
	push	word ptr [bp-12h]
	push	word ptr [bp-14h]
	call	far 2EB3h:1FCCh
	add	sp,0Ch
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	mov	ax,[bp-18h]
	mov	dx,[bp-16h]
	sub	[bp-0Eh],ax
	sbb	[bp-0Ch],dx

l2644_2A0C:
	mov	ax,[bp-0Eh]
	or	ax,[bp-0Ch]
	jz	2A41h

l2644_2A14:
	push	word ptr [bp-0Ch]
	push	word ptr [bp-0Eh]
	push	word ptr [bp-12h]
	push	word ptr [bp-14h]
	call	far 2EB3h:2062h
	add	sp,8h
	jmp	2A3Bh

l2644_2A2A:
	les	bx,[bp-0Ah]
	mov	ax,es:[bx+28h]
	mov	dx,es:[bx+2Ah]
	add	ax,[bp-0Eh]
	adc	dx,[bp-0Ch]

l2644_2A3B:
	mov	[bp-4h],ax
	mov	[bp-2h],dx

l2644_2A41:
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	push	word ptr [bp-8h]
	push	word ptr [bp-0Ah]
	push	cs
	call	22BEh
	add	sp,8h
	les	bx,[bp-0Ah]
	cmp	word ptr es:[bx+42h],0h
	jnz	2AB0h

l2644_2A5E:
	cmp	word ptr [bp-16h],0h
	jge	2AB0h

l2644_2A64:
	cmp	word ptr [bp-10h],0h
	jz	2A8Ah

l2644_2A6A:
	mov	ax,4h
	push	ax
	sub	ax,ax
	push	ax
	push	ax
	push	ax
	push	word ptr [bp-12h]
	push	word ptr [bp-14h]
	call	far 2EB3h:1FCCh
	add	sp,0Ch
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	jmp	2A94h
2644:2A89                            90                            .      

l2644_2A8A:
	mov	word ptr [bp-4h],1h
	mov	word ptr [bp-2h],0h

l2644_2A94:
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	push	word ptr [bp-8h]
	push	word ptr [bp-0Ah]
	push	cs
	call	22BEh
	add	sp,8h
	les	bx,[bp-0Ah]
	mov	word ptr es:[bx+4Ah],1h

l2644_2AB0:
	cmp	word ptr es:[bx+0BAh],0h
	jz	2AC1h

l2644_2AB8:
	push	es
	push	bx
	push	cs
	call	24C0h
	add	sp,4h

l2644_2AC1:
	les	bx,[bp-0Ah]
	cmp	word ptr es:[bx+42h],0h
	jnz	2AF5h

l2644_2ACB:
	cmp	word ptr [bp-10h],0h
	jz	2ADAh

l2644_2AD1:
	les	bx,[bp-14h]
	mov	word ptr es:[bx+2Eh],0h

l2644_2ADA:
	cmp	word ptr [bp-16h],0h
	jge	2AECh

l2644_2AE0:
	les	bx,[bp-0Ah]
	mov	word ptr es:[bx+48h],0h
	jmp	2AF5h
2644:2AEB                                  90                        .    

l2644_2AEC:
	les	bx,[bp-0Ah]
	mov	word ptr es:[bx+4Ah],0h

l2644_2AF5:
	cmp	word ptr [bp-6h],0h
	jz	2B3Bh

l2644_2AFB:
	mov	ax,4h
	push	ax
	push	es
	push	bx
	push	cs
	call	1F12h
	add	sp,6h
	pop	si
	mov	sp,bp
	pop	bp
	retf
2644:2B0D                                        90                    .  

l2644_2B0E:
	mov	ax,[bp-0Ah]
	or	ax,[bp-8h]
	jz	2B3Bh

l2644_2B16:
	mov	ax,1h
	push	ax
	push	word ptr [bp-8h]
	push	word ptr [bp-0Ah]
	push	cs
	call	1F12h
	add	sp,6h
	les	bx,[bp-0Ah]
	cmp	word ptr es:[bx+0BAh],0h
	jz	2B3Bh

l2644_2B32:
	push	es
	push	bx
	push	cs
	call	24C0h
	add	sp,4h

l2644_2B3B:
	pop	si
	mov	sp,bp
	pop	bp
	retf

;; fn2644_2B40: 2644:2B40
;;   Called from:
;;     2644:25F2 (in fn2644_24C0)
;;     2644:261A (in fn2644_24C0)
;;     3CEE:3C8C (in fn3CEE_3C78)
fn2644_2B40 proc
	push	bp
	mov	bp,sp
	push	si
	mov	ax,[bp+6h]
	or	ax,[bp+8h]
	jz	2BA0h

l2644_2B4C:
	mov	ax,1h
	push	ax
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	1F12h
	add	sp,6h
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+62h],0h
	jz	2B79h

l2644_2B67:
	mov	si,es:[bx+62h]
	shl	si,1h
	shl	si,1h
	les	bx,es:[bx+si+66h]
	mov	word ptr es:[bx+2Eh],0h

l2644_2B79:
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	22BEh
	add	sp,8h
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+0BAh],0h
	jz	2BA0h

l2644_2B97:
	push	es
	push	bx
	push	cs
	call	24C0h
	add	sp,4h

l2644_2BA0:
	pop	si
	pop	bp
	retf
2644:2BA3          90 55 8B EC 83 EC 04 56 C4 1E 0A 13 26    .U.....V....&
2644:2BB0 8B 07 26 8B 57 02 89 46 FC 89 56 FE 0B C2 74 54 ..&.W..F..V...tT
2644:2BC0 B8 01 00 50 52 FF 76 FC 0E E8 46 F3 83 C4 06 C4 ...PR.v...F.....
2644:2BD0 5E FC 26 83 7F 62 00 74 12 26 8B 77 62 D1 E6 D1 ^.&..b.t.&.wb...
2644:2BE0 E6 26 C4 58 66 26 C7 47 2E 00 00 FF 36 B4 12 FF .&.Xf&.G....6...
2644:2BF0 36 B2 12 FF 76 FE FF 76 FC 0E E8 C1 F6 83 C4 08 6...v..v........
2644:2C00 C4 5E FC 26 83 BF BA 00 00 74 09 06 53 0E E8 AF .^.&.....t..S...
2644:2C10 F8 83 C4 04 5E 8B E5 5D CB 90                   ....^..]..      

;; fn2644_2C1A: 2644:2C1A
;;   Called from:
;;     3CEE:4F72 (in fn3CEE_4EAC)
fn2644_2C1A proc
	push	bp
	mov	bp,sp
	sub	sp,0Ah
	push	si
	les	bx,[130Ah]
	mov	ax,es:[bx]
	mov	dx,es:[bx+2h]
	mov	[bp-0Ah],ax
	mov	[bp-8h],dx
	or	ax,dx
	jnz	2C39h

l2644_2C36:
	jmp	2CEBh

l2644_2C39:
	mov	ax,2h
	push	ax
	push	dx
	push	word ptr [bp-0Ah]
	push	cs
	call	1F12h
	add	sp,6h
	mov	[bp-6h],ax
	les	bx,[bp-0Ah]
	cmp	word ptr es:[bx+62h],0h
	jz	2C7Eh

l2644_2C55:
	mov	ax,4h
	push	ax
	sub	ax,ax
	push	ax
	push	ax
	push	ax
	mov	si,es:[bx+62h]
	shl	si,1h
	shl	si,1h
	push	word ptr es:[bx+si+68h]
	push	word ptr es:[bx+si+66h]
	call	far 2EB3h:1FCCh
	add	sp,0Ch
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	jmp	2C88h

l2644_2C7E:
	mov	word ptr [bp-4h],1h
	mov	word ptr [bp-2h],0h

l2644_2C88:
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	push	word ptr [bp-8h]
	push	word ptr [bp-0Ah]
	push	cs
	call	22BEh
	add	sp,8h
	les	bx,[bp-0Ah]
	cmp	word ptr es:[bx+0BAh],0h
	jz	2CAFh

l2644_2CA6:
	push	es
	push	bx
	push	cs
	call	24C0h
	add	sp,4h

l2644_2CAF:
	cmp	word ptr [13E8h],0h
	jnz	2CC1h

l2644_2CB6:
	les	bx,[bp-0Ah]
	cmp	word ptr es:[bx+0B0h],0h
	jz	2CD4h

l2644_2CC1:
	mov	ax,1h
	cwd
	push	dx
	push	ax
	push	word ptr [bp-8h]
	push	word ptr [bp-0Ah]
	push	cs
	call	2384h
	add	sp,8h

l2644_2CD4:
	cmp	word ptr [bp-6h],0h
	jz	2CEBh

l2644_2CDA:
	mov	ax,4h
	push	ax
	push	word ptr [bp-8h]
	push	word ptr [bp-0Ah]
	push	cs
	call	1F12h
	add	sp,6h

l2644_2CEB:
	pop	si
	mov	sp,bp
	pop	bp
	retf

;; fn2644_2CF0: 2644:2CF0
;;   Called from:
;;     3CEE:4F8E (in fn3CEE_4EAC)
;;     3CEE:5205 (in fn3CEE_4EAC)
fn2644_2CF0 proc
	push	bp
	mov	bp,sp
	sub	sp,0Ah
	push	si
	les	bx,[130Ah]
	mov	ax,es:[bx]
	mov	dx,es:[bx+2h]
	mov	[bp-0Ah],ax
	mov	[bp-8h],dx
	or	ax,dx
	jnz	2D0Fh

l2644_2D0C:
	jmp	2DD9h

l2644_2D0F:
	mov	ax,2h
	push	ax
	push	dx
	push	word ptr [bp-0Ah]
	push	cs
	call	1F12h
	add	sp,6h
	mov	[bp-6h],ax
	les	bx,[bp-0Ah]
	cmp	word ptr es:[bx+62h],0h
	jz	2D4Eh

l2644_2D2B:
	mov	ax,3h
	push	ax
	sub	ax,ax
	push	ax
	push	ax
	push	ax
	mov	si,es:[bx+62h]
	shl	si,1h
	shl	si,1h
	push	word ptr es:[bx+si+68h]
	push	word ptr es:[bx+si+66h]
	call	far 2EB3h:1FCCh
	add	sp,0Ch
	jmp	2D74h

l2644_2D4E:
	les	bx,[bp-0Ah]
	cmp	word ptr es:[bx+3Ah],0h
	jz	2D6Ch

l2644_2D58:
	push	es
	push	bx
	push	cs
	call	2068h
	add	sp,4h
	les	bx,[bp-0Ah]
	mov	es:[bx+2Ch],ax
	mov	es:[bx+2Eh],dx

l2644_2D6C:
	mov	ax,es:[bx+2Ch]
	mov	dx,es:[bx+2Eh]

l2644_2D74:
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	push	dx
	push	ax
	push	word ptr [bp-8h]
	push	word ptr [bp-0Ah]
	push	cs
	call	22BEh
	add	sp,8h
	les	bx,[bp-0Ah]
	cmp	word ptr es:[bx+0BAh],0h
	jz	2D9Dh

l2644_2D94:
	push	es
	push	bx
	push	cs
	call	24C0h
	add	sp,4h

l2644_2D9D:
	cmp	word ptr [13E8h],0h
	jnz	2DAFh

l2644_2DA4:
	les	bx,[bp-0Ah]
	cmp	word ptr es:[bx+0B0h],0h
	jz	2DC2h

l2644_2DAF:
	mov	ax,0FFFFh
	cwd
	push	dx
	push	ax
	push	word ptr [bp-8h]
	push	word ptr [bp-0Ah]
	push	cs
	call	2384h
	add	sp,8h

l2644_2DC2:
	cmp	word ptr [bp-6h],0h
	jz	2DD9h

l2644_2DC8:
	mov	ax,4h
	push	ax
	push	word ptr [bp-8h]
	push	word ptr [bp-0Ah]
	push	cs
	call	1F12h
	add	sp,6h

l2644_2DD9:
	pop	si
	mov	sp,bp
	pop	bp
	retf
2644:2DDE                                           55 8B               U.
2644:2DE0 EC 83 EC 0A 56 C4 1E 0A 13 26 8B 07 26 8B 57 02 ....V....&..&.W.
2644:2DF0 89 46 F6 89 56 F8 0B C2 75 03 E9 C5 00 B8 03 00 .F..V...u.......
2644:2E00 50 52 FF 76 F6 0E E8 09 F1 83 C4 06 89 46 FA C4 PR.v.........F..
2644:2E10 5E F6 26 83 7F 62 00 74 21 B8 01 00 99 52 50 26 ^.&..b.t!....RP&
2644:2E20 8B 77 62 D1 E6 D1 E6 26 FF 70 68 26 FF 70 66 9A .wb....&.ph&.pf.
2644:2E30 62 20 B3 2E 83 C4 08 EB 12 90 C4 5E F6 26 8B 47 b .........^.&.G
2644:2E40 28 26 8B 57 2A 05 01 00 83 D2 00 89 46 FC 89 56 (&.W*.......F..V
2644:2E50 FE 52 50 FF 76 F8 FF 76 F6 0E E8 61 F4 83 C4 08 .RP.v..v...a....
2644:2E60 C4 5E F6 26 83 BF BA 00 00 74 09 06 53 0E E8 4F .^.&.....t..S..O
2644:2E70 F6 83 C4 04 83 3E E8 13 00 75 0B C4 5E F6 26 83 .....>...u..^.&.
2644:2E80 BF B0 00 00 74 13 B8 01 00 99 52 50 FF 76 F8 FF ....t.....RP.v..
2644:2E90 76 F6 0E E8 EE F4 83 C4 08 83 7E FA 00 74 11 B8 v.........~..t..
2644:2EA0 04 00 50 FF 76 F8 FF 76 F6 0E E8 65 F0 83 C4 06 ..P.v..v...e....
2644:2EB0 C4 5E F6 26 C7 47 4A 00 00 26 8B 47 42 5E 8B E5 .^.&.GJ..&.GB^..
2644:2EC0 5D CB B8 01 00 5E 8B E5 5D CB 55 8B EC 83 EC 02 ]....^..].U.....
2644:2ED0 56 C4 1E 96 12 26 8B 37 F7 C6 0A 00 74 50 83 FE V....&.7....tP..
2644:2EE0 02 75 07 26 8B 47 08 EB 19 90 26 FF 77 0E 26 FF .u.&.G....&.w.&.
2644:2EF0 77 0C 26 FF 77 0A 26 FF 77 08 9A 5A 0C EE 3C 83 w.&.w.&.w..Z..<.
2644:2F00 C4 08 89 46 FE 0B C0 75 3E C7 46 FE 01 00 8B 5E ...F...u>.F....^
2644:2F10 FE D1 E3 D1 E3 C4 36 0A 13 26 8B 00 26 0B 40 02 ......6..&..&.@.
2644:2F20 74 25 81 7E FE FB 00 73 1E FF 46 FE EB E0 C4 1E t%.~...s..F.....
2644:2F30 96 12 26 F7 07 00 04 74 09 26 8B 47 08 89 46 FE ..&....t.&.G..F.
2644:2F40 EB 05 C7 46 FE 00 00 83 7E FE 00 74 29 81 7E FE ...F....~..t).~.
2644:2F50 FB 00 73 22 8B 46 FE A3 FC 12 8B D8 D1 E3 D1 E3 ..s".F..........
2644:2F60 C4 36 0A 13 26 8B 00 26 8B 50 02 8B DE 26 89 07 .6..&..&.P...&..
2644:2F70 26 89 57 02 EB 0C C7 06 D2 10 01 00 5E 8B E5 5D &.W.........^..]
2644:2F80 CB 90 9A 3C 03 68 23 5E 8B E5 5D CB 55 8B EC 83 ...<.h#^..].U...
2644:2F90 EC 0A C4 1E 0A 13 26 8B 07 26 8B 57 02 89 46 FC ......&..&.W..F.
2644:2FA0 89 56 FE 0B C2 75 0B C7 06 D2 10 11 00 8B E5 5D .V...u.........]
2644:2FB0 CB 90 B8 01 00 50 FF 76 FE FF 76 FC 0E E8 52 EF .....P.v..v...R.
2644:2FC0 83 C4 06 C7 06 FA 12 00 00 C4 5E FC 26 83 7F 3A ..........^.&..:
2644:2FD0 00 75 03 E9 D0 00 26 FF 77 34 9A 06 00 7F 20 83 .u....&.w4.... .
2644:2FE0 C4 02 89 46 FA FF 76 FE FF 76 FC 0E E8 79 F0 83 ...F..v..v...y..
2644:2FF0 C4 04 C4 5E FC 26 89 47 2C 26 89 57 2E 05 01 00 ...^.&.G,&.W....
2644:3000 83 D2 00 89 46 F6 89 56 F8 26 8B 47 50 26 0B 47 ....F..V.&.GP&.G
2644:3010 52 74 30 8B 46 F6 26 39 47 50 75 06 26 39 57 52 Rt0.F.&9GPu.&9WR
2644:3020 74 21 26 FF 77 52 26 FF 77 50 26 FF 77 34 9A D2 t!&.wR&.wP&.w4..
2644:3030 00 7F 20 83 C4 06 C4 5E FC 2B C0 26 89 47 52 26 .. ....^.+.&.GR&
2644:3040 89 47 50 26 83 7F 4E 00 75 61 8B 46 F6 8B 56 F8 .GP&..N.ua.F..V.
2644:3050 26 39 47 50 75 06 26 39 57 52 74 4F FF 76 F8 FF &9GPu.&9WRtO.v..
2644:3060 76 F6 26 FF 77 34 9A AA 00 7F 20 83 C4 06 0B C0 v.&.w4.... .....
2644:3070 74 14 C4 5E FC 8B 46 F6 8B 56 F8 26 89 47 50 26 t..^..F..V.&.GP&
2644:3080 89 57 52 EB 26 90 83 7E FA 00 74 0F C4 5E FC 26 .WR.&..~..t..^.&
2644:3090 FF 77 34 9A 48 00 7F 20 83 C4 02 C7 06 FA 12 01 .w4.H.. ........
2644:30A0 00 8B E5 5D CB 90 C7 46 FA 00 00 C4 5E FC 26 FF ...]...F....^.&.
2644:30B0 77 20 B8 20 00 50 26 FF 77 5C 26 FF 77 5A 9A 28 w . .P&.w\&.wZ.(
2644:30C0 02 17 20 83 C4 08 C4 5E FC 26 83 47 2C 01 26 83 .. ....^.&.G,.&.
2644:30D0 57 2E 00 26 8B 47 2C 26 8B 57 2E 26 89 47 28 26 W..&.G,&.W.&.G(&
2644:30E0 89 57 2A 26 C7 47 54 01 00 26 C7 47 56 01 00 26 .W*&.GT..&.GV..&
2644:30F0 C7 47 58 01 00 26 C7 47 42 01 00 26 C7 47 46 00 .GX..&.GB..&.GF.
2644:3100 00 26 C7 47 48 00 00 26 C7 47 4A 00 00 26 C7 47 .&.GH..&.GJ..&.G
2644:3110 4C 00 00 83 7E FA 00 74 18 06 53 0E E8 AB F0 83 L...~..t..S.....
2644:3120 C4 04 C4 5E FC 26 FF 77 34 9A 48 00 7F 20 83 C4 ...^.&.w4.H.. ..
2644:3130 02 8B E5 5D CB 90 9A 60 0D DC 21 C4 1E 0A 13 26 ...]...`..!....&
2644:3140 8B 07 26 0B 47 02 74 08 26 C4 1F 26 8B 47 48 CB ..&.G.t.&..&.GH.
2644:3150 B8 01 00 CB C7 06 9A 12 80 00 C4 1E 0A 13 26 8B ..............&.
2644:3160 07 26 0B 47 02 74 0B 26 C4 1F 26 8B 47 48 A3 A2 .&.G.t.&..&.GH..
2644:3170 12 CB B8 01 00 A3 A2 12 CB 90 C7 06 9A 12 80 00 ................
2644:3180 C4 1E 0A 13 26 8B 07 26 0B 47 02 74 0B 26 C4 1F ....&..&.G.t.&..
2644:3190 26 8B 47 4A A3 A2 12 CB B8 01 00 A3 A2 12 CB 90 &.GJ............
2644:31A0 C7 06 9A 12 80 00 C4 1E 0A 13 26 8B 07 26 0B 47 ..........&..&.G
2644:31B0 02 74 0B 26 C4 1F 26 8B 47 4C A3 A2 12 CB 2B C0 .t.&..&.GL....+.
2644:31C0 A3 A2 12 CB C7 06 9A 12 80 00 C4 1E 0A 13 26 8B ..............&.
2644:31D0 07 26 0B 47 02 74 0B 26 C4 1F 26 8B 47 46 A3 A2 .&.G.t.&..&.GF..
2644:31E0 12 CB 2B C0 A3 A2 12 CB C7 06 9A 12 02 00 C7 06 ..+.............
2644:31F0 9C 12 07 00 C4 1E 0A 13 26 8B 07 26 0B 47 02 74 ........&..&.G.t
2644:3200 0D 26 C4 1F 26 8B 47 28 26 8B 57 2A EB 03 2B C0 .&..&.G(&.W*..+.
2644:3210 99 A3 A2 12 89 16 A4 12 CB 90 55 8B EC 83 EC 04 ..........U.....
2644:3220 C4 1E 0A 13 26 8B 07 26 8B 57 02 89 46 FC 89 56 ....&..&.W..F..V
2644:3230 FE 0B C2 74 6D C4 5E FC 26 83 7F 42 00 74 63 26 ...tm.^.&..B.tc&
2644:3240 83 7F 3A 00 74 1B 26 83 7F 4E 00 75 14 26 8B 47 ..:.t.&..N.u.&.G
2644:3250 50 26 8B 57 52 26 39 47 28 75 41 26 39 57 2A 75 P&.WR&9G(uA&9W*u
2644:3260 3B 26 83 7F 46 00 75 3A 26 83 7F 56 00 75 0D B8 ;&..F.u:&..V.u..
2644:3270 05 00 50 06 53 0E E8 99 EC 83 C4 06 C4 5E FC 26 ..P.S........^.&
2644:3280 C7 47 46 01 00 26 C4 5F 5A 26 C6 07 2A C4 5E FC .GF..&._Z&..*.^.
2644:3290 26 C7 47 56 01 00 8B E5 5D CB 90 90 C7 06 D2 10 &.GV....].......
2644:32A0 12 00 8B E5 5D CB 55 8B EC 83 EC 04 C4 1E 0A 13 ....].U.........
2644:32B0 26 8B 07 26 8B 57 02 89 46 FC 89 56 FE 0B C2 74 &..&.W..F..V...t
2644:32C0 6D C4 5E FC 26 83 7F 42 00 74 63 26 83 7F 3A 00 m.^.&..B.tc&..:.
2644:32D0 74 1B 26 83 7F 4E 00 75 14 26 8B 47 50 26 8B 57 t.&..N.u.&.GP&.W
2644:32E0 52 26 39 47 28 75 41 26 39 57 2A 75 3B 26 83 7F R&9G(uA&9W*u;&..
2644:32F0 46 00 74 3A 26 83 7F 56 00 75 0D B8 05 00 50 06 F.t:&..V.u....P.
2644:3300 53 0E E8 0D EC 83 C4 06 C4 5E FC 26 C7 47 46 00 S........^.&.GF.
2644:3310 00 26 C4 5F 5A 26 C6 07 20 C4 5E FC 26 C7 47 56 .&._Z&.. .^.&.GV
2644:3320 01 00 8B E5 5D CB 90 90 C7 06 D2 10 12 00 8B E5 ....]...........
2644:3330 5D CB 55 8B EC 83 EC 0A C4 1E 96 12 26 8B 47 08 ].U.........&.G.
2644:3340 26 8B 57 0A 89 46 F6 89 56 F8 26 8B 47 0C 89 46 &.W..F..V.&.G..F
2644:3350 FE 0B C0 75 03 A1 FC 12 50 FF 76 F8 FF 76 F6 9A ...u....P.v..v..
2644:3360 8A 06 68 23 83 C4 06 0B D0 74 53 B8 0A 00 50 8D ..h#.....tS...P.
2644:3370 46 FA 16 50 9A 96 06 DC 21 83 C4 06 0B C0 74 44 F..P....!.....tD
2644:3380 C4 5E FA A1 1A 13 8B 16 1C 13 26 89 47 06 26 89 .^........&.G.&.
2644:3390 57 08 8B 46 F6 8B 56 F8 26 89 07 26 89 57 02 8B W..F..V.&..&.W..
2644:33A0 46 FE 26 89 47 04 8B C3 8C C2 A3 1A 13 89 16 1C F.&.G...........
2644:33B0 13 FF 06 1E 13 83 2E 96 12 10 8B E5 5D CB C7 06 ............]...
2644:33C0 D2 10 02 00 8B E5 5D CB 55 8B EC 83 EC 04 A1 1A ......].U.......
2644:33D0 13 0B 06 1C 13 74 35 A1 1A 13 8B 16 1C 13 89 46 .....t5........F
2644:33E0 FC 89 56 FE C4 1E 1A 13 26 8B 47 06 26 8B 57 08 ..V.....&.G.&.W.
2644:33F0 A3 1A 13 89 16 1C 13 B8 0A 00 50 FF 76 FE FF 76 ..........P.v..v
2644:3400 FC 9A 02 07 DC 21 83 C4 06 EB C3 90 C7 06 1E 13 .....!..........
2644:3410 00 00 A1 14 13 0B 06 16 13 74 1C FF 36 18 13 FF .........t..6...
2644:3420 36 16 13 FF 36 14 13 9A B4 09 DC 21 83 C4 06 2B 6...6......!...+
2644:3430 C0 A3 16 13 A3 14 13 8B E5 5D CB 90 55 8B EC 83 .........]..U...
2644:3440 EC 02 56 8B 46 06 A3 06 13 C7 06 10 13 00 00 3D ..V.F..........=
2644:3450 03 00 74 05 3D 06 00 75 11 C4 1E 96 12 26 C4 5F ..t.=..u.....&._
2644:3460 08 26 8A 07 A2 04 13 EB 48 90 83 7E 06 0D 74 06 .&......H..~..t.
2644:3470 83 7E 06 0F 75 40 C4 1E 96 12 26 F7 07 00 04 74 .~..u@....&....t
2644:3480 07 26 8B 47 08 EB 27 90 26 8B 37 F7 C6 0A 00 74 .&.G..'.&.7....t
2644:3490 5B 83 FE 02 74 EB 26 FF 77 0E 26 FF 77 0C 26 FF [...t.&.w.&.w.&.
2644:34A0 77 0A 26 FF 77 08 9A 5A 0C EE 3C 83 C4 08 89 46 w.&.w..Z..<....F
2644:34B0 FE 9A 3C 03 68 23 C4 1E 0A 13 26 8B 07 26 0B 47 ..<.h#....&..&.G
2644:34C0 02 75 35 83 7E 06 00 74 2F 83 7E 06 0B 74 29 83 .u5.~..t/.~..t).
2644:34D0 7E 06 09 74 23 83 7E 06 0A 74 1D B8 10 00 50 9A ~..t#.~..t....P.
2644:34E0 76 01 B2 20 83 C4 02 5E 8B E5 5D CB C7 06 D2 10 v.. ...^..].....
2644:34F0 01 00 5E 8B E5 5D CB 90 8B 46 06 3D 12 00 76 03 ..^..]...F.=..v.
2644:3500 E9 13 01 03 C0 93 2E FF A7 F0 35 90 A1 08 13 A3 ..........5.....
2644:3510 FC 12 8B D8 D1 E3 D1 E3 C4 36 0A 13 26 8B 00 26 .........6..&..&
2644:3520 8B 50 02 8B DE 26 89 07 26 89 57 02 0E E8 98 FE .P...&..&.W.....
2644:3530 C7 06 FE 12 00 00 C7 06 00 13 00 00 C7 06 02 13 ................
2644:3540 00 00 E9 D1 00 90 A1 FC 12 A3 08 13 C7 06 FE 12 ................
2644:3550 FB 00 C7 06 00 13 FC 00 C7 06 12 13 FB 00 E9 B5 ................
2644:3560 00 90 C7 06 10 13 01 00 A1 FC 12 A3 08 13 A3 00 ................
2644:3570 13 C7 06 12 13 FB 00 C7 06 FE 12 FB 00 E9 96 00 ................
2644:3580 C7 06 10 13 01 00 A1 FC 12 A3 08 13 A3 FE 12 C7 ................
2644:3590 06 00 13 FC 00 C7 06 12 13 FC 00 5E 8B E5 5D CB ...........^..].
2644:35A0 A1 FC 12 A3 08 13 A3 FE 12 C7 06 00 13 FC 00 C7 ................
2644:35B0 06 12 13 FC 00 C7 06 10 13 01 00 5E 8B E5 5D CB ...........^..].
2644:35C0 A1 FC 12 A3 08 13 8B 46 FE A3 FE 12 A1 FC 12 A3 .......F........
2644:35D0 00 13 5E 8B E5 5D CB 90 A1 FC 12 A3 08 13 A3 FE ..^..]..........
2644:35E0 12 C7 06 00 13 FC 00 8B 46 FE A3 02 13 EB A6 90 ........F.......
2644:35F0 0C 35 80 35 86 35 86 35 62 35 68 35 68 35 86 35 .5.5.5.5b5h5h5.5
2644:3600 86 35 68 35 68 35 46 35 A0 35 C0 35 86 35 D8 35 .5h5h5F5.5.5.5.5
2644:3610 A0 35 80 35 62 35 5E 8B E5 5D CB 90 55 8B EC 56 .5.5b5^..]..U..V
2644:3620 8B 46 06 3D FB 00 74 0C 3D FC 00 74 0F 3D FD 00 .F.=..t.=..t.=..
2644:3630 74 10 EB 14 A1 FE 12 89 46 06 EB 0C A1 00 13 EB t.......F.......
2644:3640 F6 90 A1 02 13 EB F0 90 8B 46 06 A3 FC 12 8B D8 .........F......
2644:3650 D1 E3 D1 E3 C4 36 0A 13 26 8B 00 26 8B 50 02 8B .....6..&..&.P..
2644:3660 DE 26 89 07 26 89 57 02 5E 5D CB 90 55 8B EC 83 .&..&.W.^]..U...
2644:3670 EC 18 56 83 3E 0E 13 00 74 4C 8B 1E FE 12 D1 E3 ..V.>...tL......
2644:3680 D1 E3 C4 36 0A 13 26 8B 00 26 8B 50 02 89 46 E8 ...6..&..&.P..F.
2644:3690 89 56 EA C4 5E E8 26 FF 77 20 26 FF 77 5C 26 FF .V..^.&.w &.w\&.
2644:36A0 77 5A 8B 1E 00 13 D1 E3 D1 E3 8E 06 0C 13 26 C4 wZ............&.
2644:36B0 18 26 FF 77 5C 26 FF 77 5A 9A 58 02 17 20 83 C4 .&.w\&.wZ.X.. ..
2644:36C0 0A 5E 8B E5 5D CB 8B 1E 12 13 D1 E3 D1 E3 C4 36 .^..]..........6
2644:36D0 0A 13 26 8B 00 26 8B 50 02 89 46 E8 89 56 EA C4 ..&..&.P..F..V..
2644:36E0 5E E8 26 8B 87 A6 00 89 46 EC 26 8B 87 A8 00 26 ^.&.....F.&....&
2644:36F0 8B 97 AA 00 89 46 FC 89 56 FE C7 46 EE 00 00 EB .....F..V..F....
2644:3700 61 90 FF 36 FE 12 FF 76 F2 FF 76 F0 9A 8A 06 68 a..6...v..v....h
2644:3710 23 83 C4 06 89 46 F8 89 56 FA FF 36 00 13 FF 76 #....F..V..6...v
2644:3720 F2 FF 76 F0 9A 8A 06 68 23 83 C4 06 89 46 F4 89 ..v....h#....F..
2644:3730 56 F6 8B 46 F8 0B 46 FA 74 21 8B 46 F4 0B C2 74 V..F..F.t!.F...t
2644:3740 1A FF 76 FA FF 76 F8 0E E8 7D E0 83 C4 04 FF 76 ..v..v...}.....v
2644:3750 F6 FF 76 F4 0E E8 D0 E2 83 C4 04 FF 46 EE 83 46 ..v.........F..F
2644:3760 FC 12 8B 46 EC 39 46 EE 73 40 C4 5E FC 26 8B 47 ...F.9F.s@.^.&.G
2644:3770 0E 26 8B 57 10 89 46 F0 89 56 F2 83 3E 06 13 0F .&.W..F..V..>...
2644:3780 74 03 E9 7D FF 8B 5E EE D1 E3 C4 36 14 13 26 FF t..}..^....6..&.
2644:3790 30 52 50 9A 8A 06 68 23 83 C4 06 89 46 F8 89 56 0RP...h#....F..V
2644:37A0 FA 8B 46 FC 8B 56 FE EB 83 90 83 3E 10 13 00 74 ..F..V.....>...t
2644:37B0 43 8B 1E FE 12 D1 E3 D1 E3 C4 36 0A 13 26 C4 18 C.........6..&..
2644:37C0 26 83 7F 46 00 74 2D A1 00 13 D1 E0 D1 E0 03 C6 &..F.t-.........
2644:37D0 8B 16 0C 13 89 46 E8 89 56 EA C4 5E E8 26 C4 1F .....F..V..^.&..
2644:37E0 26 C7 47 46 01 00 C4 5E E8 26 C4 1F 26 C4 5F 5A &.GF...^.&..&._Z
2644:37F0 26 C6 07 2A 5E 8B E5 5D CB 90 55 8B EC 83 EC 04 &..*^..]..U.....
2644:3800 C4 1E 0A 13 26 8B 07 26 8B 57 02 89 46 FC 89 56 ....&..&.W..F..V
2644:3810 FE 0B C2 74 4A C4 5E FC 26 83 BF AE 00 00 74 0D ...tJ.^.&.....t.
2644:3820 26 FF B7 AE 00 9A 0A 1C FF 31 83 C4 02 C4 5E FC &........1....^.
2644:3830 26 C7 47 4C 00 00 2B C0 50 FF 36 AC 12 FF 36 B4 &.GL..+.P.6...6.
2644:3840 12 FF 36 B2 12 9A 0A 1B FF 31 83 C4 08 C4 5E FC ..6......1....^.
2644:3850 26 89 87 AE 00 0B C0 75 06 C7 06 D6 10 10 00 8B &......u........
2644:3860 E5 5D CB 90 55 8B EC 83 EC 0A 56 A1 B2 12 48 89 .]..U.....V...H.
2644:3870 46 FE C4 1E 0A 13 26 8B 07 26 8B 57 02 89 46 FA F.....&..&.W..F.
2644:3880 89 56 FC 0B C2 74 35 C4 5E FA 8B 46 FE 26 39 87 .V...t5.^..F.&9.
2644:3890 A6 00 76 28 B8 12 00 F7 66 FE 8B D8 8B 76 FA 26 ..v(....f....v.&
2644:38A0 C4 B4 A8 00 26 FF 70 10 26 FF 70 0E 9A 0A 05 C7 ....&.p.&.p.....
2644:38B0 2B 83 C4 04 89 46 F6 89 56 F8 EB 09 B8 7A 5E 89 +....F..V....z^.
2644:38C0 46 F6 8C 5E F8 C7 06 9A 12 00 01 FF 76 F8 FF 76 F..^........v..v
2644:38D0 F6 9A F5 03 17 20 83 C4 04 A3 9C 12 8B 46 F6 8B ..... .......F..
2644:38E0 56 F8 A3 A2 12 89 16 A4 12 C7 06 A6 12 00 00 5E V..............^
2644:38F0 8B E5 5D CB 55 8B EC 83 EC 04 C7 06 9A 12 02 00 ..].U...........
2644:3900 C7 06 9C 12 07 00 C4 1E 0A 13 26 8B 07 26 8B 57 ..........&..&.W
2644:3910 02 89 46 FC 89 56 FE 0B C2 74 31 C4 5E FC 26 83 ..F..V...t1.^.&.
2644:3920 7F 3A 00 74 14 52 53 0E E8 3D E7 83 C4 04 C4 5E .:.t.RS..=.....^
2644:3930 FC 26 89 47 2C 26 89 57 2E 26 8B 47 2C 26 8B 57 .&.G,&.W.&.G,&.W
2644:3940 2E A3 A2 12 89 16 A4 12 8B E5 5D CB 2B C0 A3 A4 ..........].+...
2644:3950 12 A3 A2 12 8B E5 5D CB 55 8B EC 83 EC 04 C7 06 ......].U.......
2644:3960 9A 12 80 00 C7 06 A2 12 01 00 C4 1E 0A 13 26 8B ..............&.
2644:3970 07 26 8B 57 02 89 46 FC 89 56 FE 0B C2 74 4A C4 .&.W..F..V...tJ.
2644:3980 5E FC 26 83 BF AE 00 00 74 3F B8 10 00 50 26 FF ^.&.....t?...P&.
2644:3990 B7 AE 00 9A E6 1B FF 31 83 C4 04 C4 1E 96 12 26 .......1.......&
2644:39A0 81 3F 80 00 75 0E 26 8B 47 08 A3 A2 12 83 2E 96 .?..u.&.G.......
2644:39B0 12 10 EB 0B C7 06 D2 10 01 00 9A 3C 03 68 23 C4 ...........<.h#.
2644:39C0 5E FC A1 A2 12 26 89 47 4C 8B E5 5D CB 90 C7 06 ^....&.GL..]....
2644:39D0 9A 12 00 01 C7 06 9C 12 01 00 C4 1E 0A 13 26 8B ..............&.
2644:39E0 07 26 0B 47 02 74 0F 26 C4 1F 26 83 7F 46 00 74 .&.G.t.&..&..F.t
2644:39F0 05 B8 7C 5E EB 03 B8 7E 5E A3 A2 12 8C 1E A4 12 ..|^...~^.......
2644:3A00 C7 06 A6 12 00 00 CB 90 55 8B EC 83 EC 0A C4 1E ........U.......
2644:3A10 0A 13 26 8B 07 26 8B 57 02 89 46 FC 89 56 FE 0B ..&..&.W..F..V..
2644:3A20 C2 74 61 C7 46 FA 00 00 EB 46 8B 46 FA 8B C8 D1 .ta.F....F.F....
2644:3A30 E0 D1 E0 03 C1 D1 E0 03 46 FC 8B 56 FE 89 46 F6 ........F..V..F.
2644:3A40 89 56 F8 C4 5E F6 26 FF B7 BC 00 9A 0A 1C FF 31 .V..^.&........1
2644:3A50 83 C4 02 C4 5E F6 26 FF B7 C4 00 26 FF B7 C2 00 ....^.&....&....
2644:3A60 26 FF B7 C0 00 9A 02 07 DC 21 83 C4 06 FF 46 FA &........!....F.
2644:3A70 C4 5E FC 8B 46 FA 26 39 87 BA 00 77 AD 26 C7 87 .^..F.&9...w.&..
2644:3A80 BA 00 00 00 8B E5 5D CB 55 8B EC 83 EC 0C C4 1E ......].U.......
2644:3A90 0A 13 26 8B 07 26 8B 57 02 89 46 F4 89 56 F6 0B ..&..&.W..F..V..
2644:3AA0 C2 75 03 E9 22 01 C4 5E F4 26 83 BF BA 00 08 72 .u.."..^.&.....r
2644:3AB0 03 E9 14 01 C4 1E 96 12 26 F6 47 F0 0A 74 21 26 ........&.G..t!&
2644:3AC0 83 7F F0 02 74 26 26 FF 77 FE 26 FF 77 FC 26 FF ....t&&.w.&.w.&.
2644:3AD0 77 FA 26 FF 77 F8 9A 5A 0C EE 3C 83 C4 08 EB 10 w.&.w..Z..<.....
2644:3AE0 C4 1E 96 12 26 81 7F F0 00 04 75 34 26 8B 47 F8 ....&.....u4&.G.
2644:3AF0 89 46 FC 2B C0 50 C4 1E 96 12 26 FF 77 02 26 FF .F.+.P....&.w.&.
2644:3B00 77 0A 26 FF 77 08 9A 0A 1B FF 31 83 C4 08 89 46 w.&.w.....1....F
2644:3B10 FE 0B C0 75 15 C7 06 D6 10 04 00 8B E5 5D CB 90 ...u.........]..
2644:3B20 C7 06 D2 10 01 00 8B E5 5D CB C4 5E F4 26 8B 87 ........]..^.&..
2644:3B30 BA 00 8B C8 D1 E0 D1 E0 03 C1 D1 E0 03 C3 8C C2 ................
2644:3B40 05 BC 00 89 46 F8 89 56 FA C4 1E 96 12 26 8B 47 ....F..V.....&.G
2644:3B50 02 40 C4 5E F8 26 89 47 08 50 8B C3 05 04 00 52 .@.^.&.G.P.....R
2644:3B60 50 9A 96 06 DC 21 83 C4 06 0B C0 75 0F FF 76 FE P....!.....u..v.
2644:3B70 9A 0A 1C FF 31 83 C4 02 8B E5 5D CB C4 5E F8 26 ....1.....]..^.&
2644:3B80 FF 77 08 C4 1E 96 12 26 FF 77 0A 26 FF 77 08 C4 .w.....&.w.&.w..
2644:3B90 5E F8 26 FF 77 06 26 FF 77 04 9A EC 02 17 20 83 ^.&.w.&.w..... .
2644:3BA0 C4 0A C4 5E F8 8B 46 FE 26 89 07 8B 46 FC 26 89 ...^..F.&...F.&.
2644:3BB0 47 02 C4 5E F4 26 FF 87 BA 00 06 53 0E E8 00 E9 G..^.&.....S....
2644:3BC0 83 C4 04 9A 68 03 68 23 8B E5 5D CB 55 8B EC 83 ....h.h#..].U...
2644:3BD0 EC 06 C4 1E 0A 13 26 8B 07 26 8B 57 02 89 46 FA ......&..&.W..F.
2644:3BE0 89 56 FC 0B C2 75 03 E9 F1 00 C4 5E FA 26 83 BF .V...u.....^.&..
2644:3BF0 B0 00 00 74 38 26 FF B7 B0 00 9A 0A 1C FF 31 83 ...t8&........1.
2644:3C00 C4 02 C4 5E FA 26 C7 87 B0 00 00 00 26 FF B7 B6 ...^.&......&...
2644:3C10 00 26 FF B7 B4 00 26 FF B7 B2 00 9A 02 07 DC 21 .&....&........!
2644:3C20 83 C4 06 C4 5E FA 26 C7 87 B6 00 00 00 83 3E AC ....^.&.......>.
2644:3C30 12 00 75 03 E9 A4 00 FF 36 AC 12 FF 36 B4 12 FF ..u.....6...6...
2644:3C40 36 B2 12 9A 18 01 AD 38 83 C4 06 3B 06 AC 12 75 6......8...;...u
2644:3C50 03 E9 87 00 2B C0 50 FF 36 AC 12 FF 36 B4 12 FF ....+.P.6...6...
2644:3C60 36 B2 12 9A 0A 1B FF 31 83 C4 08 89 46 FE 0B C0 6......1....F...
2644:3C70 75 0A C7 06 D6 10 08 00 8B E5 5D CB C4 5E FA A1 u.........]..^..
2644:3C80 AC 12 40 26 89 87 B6 00 50 8B C3 8C C2 05 B2 00 ..@&....P.......
2644:3C90 52 50 9A 96 06 DC 21 83 C4 06 0B C0 75 10 FF 76 RP....!.....u..v
2644:3CA0 FE 9A 0A 1C FF 31 83 C4 02 8B E5 5D CB 90 C4 5E .....1.....]...^
2644:3CB0 FA 26 FF B7 B6 00 FF 36 B4 12 FF 36 B2 12 26 FF .&.....6...6..&.
2644:3CC0 B7 B4 00 26 FF B7 B2 00 9A EC 02 17 20 83 C4 0A ...&........ ...
2644:3CD0 C4 5E FA 8B 46 FE 26 89 87 B0 00 8B E5 5D CB 90 .^..F.&......]..
2644:3CE0 55 8B EC 83 EC 0C C4 1E 0A 13 26 8B 07 26 8B 57 U.........&..&.W
2644:3CF0 02 89 46 F4 89 56 F6 0B C2 75 03 E9 E9 00 C4 5E ..F..V...u.....^
2644:3D00 F4 26 83 7F 3A 00 74 0A C7 06 D2 10 13 00 8B E5 .&..:.t.........
2644:3D10 5D CB B8 01 00 50 06 53 0E E8 F6 E1 83 C4 06 C4 ]....P.S........
2644:3D20 5E F4 26 C7 47 54 01 00 B8 13 00 50 9A A6 0F 1A ^.&.GT.....P....
2644:3D30 2D 83 C4 02 2B C0 89 46 FA 89 46 F8 C7 46 FC 01 -...+..F..F..F..
2644:3D40 00 89 46 FE C4 5E F4 8B 46 FC 8B 56 FE 26 39 57 ..F..^..F..V.&9W
2644:3D50 2E 7C 63 7F 06 26 39 47 2C 72 5B FF 76 FE FF 76 .|c..&9G,r[.v..v
2644:3D60 FC 06 53 0E E8 57 E5 83 C4 08 C4 5E F4 26 83 7F ..S..W.....^.&..
2644:3D70 46 00 75 38 83 46 F8 01 83 56 FA 00 8B 46 F8 8B F.u8.F...V...F..
2644:3D80 56 FA 39 46 FC 75 05 39 56 FE 74 20 8B 46 F8 8B V.9F.u.9V.t .F..
2644:3D90 56 FA 26 89 47 28 26 89 57 2A 06 53 0E E8 2A E4 V.&.G(&.W*.S..*.
2644:3DA0 83 C4 04 C4 5E F4 26 C7 47 56 00 00 83 46 FC 01 ....^.&.GV...F..
2644:3DB0 83 56 FE 00 EB 8E 8B 46 F8 8B 56 FA 26 89 47 2C .V.....F..V.&.G,
2644:3DC0 26 89 57 2E 2B C0 50 9A A6 0F 1A 2D 83 C4 02 B8 &.W.+.P....-....
2644:3DD0 01 00 99 52 50 FF 76 F6 FF 76 F4 0E E8 DF E4 83 ...RP.v..v......
2644:3DE0 C4 08 9A 0C 05 B3 2E 8B E5 5D CB 90 55 8B EC 83 .........]..U...
2644:3DF0 EC 04 C4 1E 0A 13 26 8B 07 26 8B 57 02 89 46 FC ......&..&.W..F.
2644:3E00 89 56 FE 0B C2 75 03 E9 AA 00 C4 5E FC 26 83 7F .V...u.....^.&..
2644:3E10 3A 00 74 03 E9 97 00 B8 01 00 50 52 53 0E E8 F1 :.t.......PRS...
2644:3E20 E0 83 C4 06 2B C0 50 50 FF 76 FE FF 76 FC 0E E8 ....+.PP.v..v...
2644:3E30 8C E4 83 C4 08 C4 5E FC 26 C7 47 54 01 00 2B C0 ......^.&.GT..+.
2644:3E40 26 89 47 2E 26 89 47 2C 26 39 47 36 74 56 50 50 &.G.&.G,&9G6tVPP
2644:3E50 50 26 FF 77 38 9A 15 01 8F 20 83 C4 08 B8 04 00 P&.w8.... ......
2644:3E60 50 B8 80 5E 1E 50 C4 5E FC 26 FF 77 38 9A EF 00 P..^.P.^.&.w8...
2644:3E70 8F 20 83 C4 08 2B C0 50 B8 00 02 99 52 50 C4 5E . ...+.P....RP.^
2644:3E80 FC 26 FF 77 38 9A 15 01 8F 20 83 C4 08 2B C0 50 .&.w8.... ...+.P
2644:3E90 B8 86 5E 1E 50 C4 5E FC 26 FF 77 38 9A EF 00 8F ..^.P.^.&.w8....
2644:3EA0 20 83 C4 08 9A 0C 05 B3 2E 8B E5 5D CB 90 C7 06  ..........]....
2644:3EB0 D2 10 13 00 8B E5 5D CB 55 8B EC 83 EC 18 57 56 ......].U.....WV
2644:3EC0 8B 1E FE 12 D1 E3 D1 E3 C4 36 0A 13 26 8B 00 26 .........6..&..&
2644:3ED0 8B 50 02 89 46 F6 89 56 F8 8B 1E 00 13 D1 E3 D1 .P..F..V........
2644:3EE0 E3 26 8B 00 26 8B 50 02 89 46 F2 89 56 F4 C7 46 .&..&.P..F..V..F
2644:3EF0 FE 00 00 E9 8A 01 B8 12 00 F7 66 FE C4 5E F6 26 ..........f..^.&
2644:3F00 8B 8F A8 00 26 8B B7 AA 00 03 C8 89 4E FA 89 76 ....&.......N..v
2644:3F10 FC 0E E8 77 F0 2B C0 50 C4 5E FA 26 FF 77 10 26 ...w.+.P.^.&.w.&
2644:3F20 FF 77 0E 9A 0A 05 C7 2B 83 C4 04 52 50 9A 2E 02 .w.....+...RP...
2644:3F30 68 23 83 C4 06 C4 5E F2 26 FF B7 AA 00 26 FF B7 h#....^.&....&..
2644:3F40 A8 00 0E E8 E2 DA 83 C4 04 C4 5E FA 26 8B 07 3D ..........^.&..=
2644:3F50 10 00 74 5E 3D 40 00 74 5F 3D 80 00 74 60 3D 00 ..t^=@.t_=..t`=.
2644:3F60 01 74 0B 3D 00 03 74 5C C6 46 F0 55 EB 04 C6 46 .t.=..t\.F.U...F
2644:3F70 F0 43 C6 46 F1 00 2B C0 50 8D 46 F0 16 50 9A 2E .C.F..+.P.F..P..
2644:3F80 02 68 23 83 C4 06 C4 5E F2 26 8B 87 A8 00 26 8B .h#....^.&....&.
2644:3F90 97 AA 00 05 12 00 52 50 0E E8 8C DA 83 C4 04 C4 ......RP........
2644:3FA0 5E FA 26 81 3F 00 01 75 21 26 8A 47 02 2A E4 50 ^.&.?..u!&.G.*.P
2644:3FB0 EB 1C C6 46 F0 4E EB BA C6 46 F0 44 EB B4 C6 46 ...F.N...F.D...F
2644:3FC0 F0 4C EB AE C6 46 F0 4D EB A8 26 FF 77 02 9A 76 .L...F.M..&.w..v
2644:3FD0 0C EE 3C 83 C4 02 8D 7E E8 8B F0 16 07 1E 8E DA ..<....~........
2644:3FE0 A5 A5 A5 A5 1F 2B C0 50 B8 03 00 50 FF 76 EE FF .....+.P...P.v..
2644:3FF0 76 EC FF 76 EA FF 76 E8 9A B0 01 68 23 83 C4 0C v..v..v....h#...
2644:4000 C4 5E F2 26 8B 87 A8 00 26 8B 97 AA 00 05 24 00 .^.&....&.....$.
2644:4010 52 50 0E E8 12 DA 83 C4 04 C4 5E FA 26 81 3F 00 RP........^.&.?.
2644:4020 01 75 0B 26 8B 47 02 B1 08 D3 E8 50 EB 04 26 FF .u.&.G.....P..&.
2644:4030 77 04 9A 76 0C EE 3C 83 C4 02 8D 7E E8 8B F0 16 w..v..<....~....
2644:4040 07 1E 8E DA A5 A5 A5 A5 1F 2B C0 50 B8 03 00 50 .........+.P...P
2644:4050 FF 76 EE FF 76 EC FF 76 EA FF 76 E8 9A B0 01 68 .v..v..v..v....h
2644:4060 23 83 C4 0C C4 5E F2 26 8B 87 A8 00 26 8B 97 AA #....^.&....&...
2644:4070 00 05 36 00 52 50 0E E8 AE D9 83 C4 04 FF 46 FE ..6.RP........F.
2644:4080 C4 5E F6 8B 46 FE 26 39 87 A6 00 76 03 E9 66 FE .^..F.&9...v..f.
2644:4090 5E 5F 8B E5 5D CB 55 8B EC 83 EC 06 56 C4 1E 0A ^_..].U.....V...
2644:40A0 13 26 8B 07 26 8B 57 02 89 46 FA 89 56 FC 0B C2 .&..&.W..F..V...
2644:40B0 74 4F C4 5E FA 26 83 7F 64 00 74 45 A1 B2 12 89 tO.^.&..d.tE....
2644:40C0 46 FE 26 39 47 62 74 39 26 39 47 64 72 33 B8 01 F.&9Gbt9&9Gdr3..
2644:40D0 00 50 52 53 0E E8 3A DE 83 C4 06 C4 5E FA 26 83 .PRS..:.....^.&.
2644:40E0 7F 62 00 74 12 26 8B 77 62 D1 E6 D1 E6 26 C4 58 .b.t.&.wb....&.X
2644:40F0 66 26 C7 47 2E 00 00 C4 5E FA 8B 46 FE 26 89 47 f&.G....^..F.&.G
2644:4100 62 5E 8B E5 5D CB C7 06 9A 12 02 00 C7 06 9C 12 b^..]...........
2644:4110 03 00 A1 FC 12 A3 A2 12 C7 06 A4 12 00 00 CB 90 ................
2644:4120 55 8B EC 83 EC 04 C7 06 9A 12 02 00 C7 06 9C 12 U...............
2644:4130 03 00 FF 36 B4 12 FF 36 B2 12 9A 94 04 C7 2B 83 ...6...6......+.
2644:4140 C4 04 89 46 FC 89 56 FE 0B C2 74 14 C4 5E FC 26 ...F..V...t..^.&
2644:4150 8B 47 08 99 A3 A2 12 89 16 A4 12 8B E5 5D CB 90 .G...........]..
2644:4160 2B C0 A3 A4 12 A3 A2 12 8B E5 5D CB 55 8B EC 83 +.........].U...
2644:4170 EC 04 C4 1E 0A 13 26 8B 07 26 0B 47 02 74 27 26 ......&..&.G.t'&
2644:4180 C4 1F 26 8B 47 3E 26 0B 47 40 74 1A C4 1E 0A 13 ..&.G>&.G@t.....
2644:4190 26 C4 1F 26 FF 77 40 26 FF 77 3E 9A 0A 05 C7 2B &..&.w@&.w>....+
2644:41A0 83 C4 04 EB 06 90 B8 88 5E 8C DA 89 46 FC 89 56 ........^...F..V
2644:41B0 FE C7 06 9A 12 00 01 52 50 9A F5 03 17 20 A3 9C .......RP.... ..
2644:41C0 12 8B 46 FC 8B 56 FE A3 A2 12 89 16 A4 12 C7 06 ..F..V..........
2644:41D0 A6 12 00 00 8B E5 5D CB 55 8B EC 83 EC 06 56 A1 ......].U.....V.
2644:41E0 B2 12 89 46 FE 3D FB 00 73 48 8B D8 D1 E3 D1 E3 ...F.=..sH......
2644:41F0 C4 36 0A 13 26 8B 00 26 0B 40 02 74 35 8B 5E FE .6..&..&.@.t5.^.
2644:4200 D1 E3 D1 E3 26 C4 18 26 8B 47 3E 26 0B 47 40 74 ....&..&.G>&.G@t
2644:4210 21 8B 5E FE D1 E3 D1 E3 8E 06 0C 13 26 C4 18 26 !.^.........&..&
2644:4220 FF 77 40 26 FF 77 3E 9A 0A 05 C7 2B 83 C4 04 EB .w@&.w>....+....
2644:4230 06 90 B8 8A 5E 8C DA 89 46 FA 89 56 FC C7 06 9A ....^...F..V....
2644:4240 12 00 01 52 50 9A F5 03 17 20 83 C4 04 A3 9C 12 ...RP.... ......
2644:4250 8B 46 FA 8B 56 FC A3 A2 12 89 16 A4 12 C7 06 A6 .F..V...........
2644:4260 12 00 00 5E 8B E5 5D CB A1 B2 12 8B 16 B4 12 A3 ...^..].........
2644:4270 20 13 89 16 22 13 A3 80 14 89 16 82 14 0B D2 7F  ..."...........
2644:4280 0B 7C 05 3D 01 00 73 04 B8 01 00 CB 2B C0 CB 90 .|.=..s.....+...
2644:4290 83 3E 22 13 00 7C 13 7F 07 83 3E 20 13 00 74 0A .>"..|....> ..t.
2644:42A0 83 2E 20 13 01 83 1E 22 13 00 83 3E 22 13 00 7F .. ...."...>"...
2644:42B0 0D 7C 07 83 3E 20 13 01 73 04 B8 01 00 CB 2B C0 .|..> ..s.....+.
2644:42C0 CB 90 C7 06 9A 12 02 00 C7 06 9C 12 0A 00 C4 1E ................
2644:42D0 0A 13 26 8B 07 26 0B 47 02 74 0D 26 C4 1F 26 8B ..&..&.G.t.&..&.
2644:42E0 87 A6 00 2B D2 EB 04 90 2B C0 99 A3 A2 12 89 16 ...+....+.......
2644:42F0 A4 12 CB 90 55 8B EC 83 EC 04 C7 06 9A 12 80 00 ....U...........
2644:4300 C4 1E 0A 13 26 8B 07 26 8B 57 02 89 46 FC 89 56 ....&..&.W..F..V
2644:4310 FE 0B C2 75 03 E9 F2 00 C4 5E FC 26 83 7F 3A 00 ...u.....^.&..:.
2644:4320 75 03 E9 DB 00 26 8B 47 28 26 8B 57 2A 26 39 47 u....&.G(&.W*&9G
2644:4330 50 75 09 26 39 57 52 75 03 E9 C4 00 26 8B 47 50 Pu.&9WRu....&.GP
2644:4340 26 0B 47 52 74 34 B8 01 00 50 06 53 0E E8 C2 DB &.GRt4...P.S....
2644:4350 83 C4 06 C4 5E FC 26 FF 77 52 26 FF 77 50 26 FF ....^.&.wR&.wP&.
2644:4360 77 34 9A D2 00 7F 20 83 C4 06 C4 5E FC 2B C0 26 w4.... ....^.+.&
2644:4370 89 47 52 26 89 47 50 EB 2D 90 26 83 7F 4E 00 74 .GR&.GP.-.&..N.t
2644:4380 25 B8 01 00 50 06 53 0E E8 87 DB 83 C4 06 C4 5E %...P.S........^
2644:4390 FC 26 FF 77 34 9A 88 00 7F 20 83 C4 02 C4 5E FC .&.w4.... ....^.
2644:43A0 26 C7 47 4E 00 00 26 FF 77 2A 26 FF 77 28 26 FF &.GN..&.w*&.w(&.
2644:43B0 77 34 9A AA 00 7F 20 83 C4 06 0B C0 74 1C C4 5E w4.... .....t..^
2644:43C0 FC 26 8B 47 28 26 8B 57 2A 26 89 47 50 26 89 57 .&.G(&.W*&.GP&.W
2644:43D0 52 C7 06 A2 12 01 00 EB 11 90 C4 5E FC 2B C0 26 R..........^.+.&
2644:43E0 89 47 52 26 89 47 50 A3 A2 12 26 FF 77 2A 26 FF .GR&.GP...&.w*&.
2644:43F0 77 28 06 53 0E E8 C6 DE 83 C4 08 8B E5 5D CB 90 w(.S.........]..
2644:4400 C7 06 A2 12 01 00 8B E5 5D CB C7 06 A2 12 00 00 ........].......
2644:4410 8B E5 5D CB 55 8B EC 83 EC 04 C7 06 9A 12 80 00 ..].U...........
2644:4420 C7 06 A2 12 01 00 C4 1E 0A 13 26 8B 07 26 8B 57 ..........&..&.W
2644:4430 02 89 46 FC 89 56 FE 0B C2 74 7F C4 5E FC 26 83 ..F..V...t..^.&.
2644:4440 7F 3A 00 74 6B 26 83 7F 4E 00 75 64 26 8B 47 50 .:.tk&..N.ud&.GP
2644:4450 26 0B 47 52 74 24 B8 01 00 50 52 53 0E E8 B2 DA &.GRt$...PRS....
2644:4460 83 C4 06 C4 5E FC 26 FF 77 52 26 FF 77 50 26 FF ....^.&.wR&.wP&.
2644:4470 77 34 9A D2 00 7F 20 83 C4 06 C4 5E FC 26 FF 77 w4.... ....^.&.w
2644:4480 34 9A 68 00 7F 20 83 C4 02 C4 5E FC 26 89 47 4E 4.h.. ....^.&.GN
2644:4490 26 FF 77 2A 26 FF 77 28 06 53 0E E8 20 DE 83 C4 &.w*&.w(.S.. ...
2644:44A0 08 C4 5E FC 26 8B 47 4E A3 A2 12 8B E5 5D CB 90 ..^.&.GN.....]..
2644:44B0 C7 06 A2 12 01 00 8B E5 5D CB C7 06 A2 12 00 00 ........].......
2644:44C0 8B E5 5D CB                                     ..].            

;; fn2644_44C4: 2644:44C4
;;   Called from:
;;     2644:4608 (in fn2644_45CA)
fn2644_44C4 proc
	push	bp
	mov	bp,sp
	mov	ax,[bp+6h]
	or	ax,[bp+8h]
	jz	4542h

l2644_44CF:
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+3Ah],0h
	jz	4542h

l2644_44D9:
	mov	ax,es:[bx+50h]
	or	ax,es:[bx+52h]
	jz	4516h

l2644_44E3:
	mov	ax,1h
	push	ax
	push	es
	push	bx
	push	cs
	call	1F12h
	add	sp,6h
	les	bx,[bp+6h]
	push	word ptr es:[bx+52h]
	push	word ptr es:[bx+50h]
	push	word ptr es:[bx+34h]
	call	far 207Fh:00D2h
	add	sp,6h
	les	bx,[bp+6h]
	sub	ax,ax
	mov	es:[bx+52h],ax
	mov	es:[bx+50h],ax
	pop	bp
	retf

l2644_4516:
	cmp	word ptr es:[bx+4Eh],0h
	jz	4542h

l2644_451D:
	mov	ax,1h
	push	ax
	push	es
	push	bx
	push	cs
	call	1F12h
	add	sp,6h
	les	bx,[bp+6h]
	push	word ptr es:[bx+34h]
	call	far 207Fh:0088h
	add	sp,2h
	les	bx,[bp+6h]
	mov	word ptr es:[bx+4Eh],0h

l2644_4542:
	pop	bp
	retf
2644:4544             55 8B EC 83 EC 02 56 83 7E 06 00 74     U.....V.~..t
2644:4550 2D C7 46 FE 01 00 EB 03 FF 46 FE 81 7E FE 00 01 -.F......F..~...
2644:4560 73 2E 8B 5E FE D1 E3 D1 E3 C4 36 0A 13 26 FF 70 s..^......6..&.p
2644:4570 02 26 FF 30 0E E8 4C FF 83 C4 04 EB DB 90 C4 1E .&.0..L.........
2644:4580 0A 13 26 FF 77 02 26 FF 37 0E E8 37 FF 83 C4 04 ..&.w.&.7..7....
2644:4590 5E 8B E5 5D CB 90 B8 7C 13 1E 50 9A F8 00 7F 20 ^..]...|..P.... 
2644:45A0 83 C4 04 C7 06 9A 12 00 01 B8 7C 13 1E 50 9A F5 ..........|..P..
2644:45B0 03 17 20 83 C4 04 A3 9C 12 B8 7C 13 A3 A2 12 8C .. .......|.....
2644:45C0 1E A4 12 C7 06 A6 12 00 00 CB                   ..........      

;; fn2644_45CA: 2644:45CA
;;   Called from:
;;     2644:49C9 (in fn2644_49B4)
;;     2644:4B73 (in fn2644_4B2E)
;;     2644:4C13 (in fn2644_4B2E)
fn2644_45CA proc
	push	bp
	mov	bp,sp
	sub	sp,8h
	mov	ax,[bp+6h]
	or	ax,[bp+8h]
	jnz	45DBh

l2644_45D8:
	jmp	47B2h

l2644_45DB:
	mov	ax,1h
	push	ax
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	1F12h
	add	sp,6h
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+30h],0h
	jz	4602h

l2644_45F6:
	push	word ptr es:[bx+30h]
	call	far 2D1Ah:0B04h
	add	sp,2h

l2644_4602:
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	44C4h
	add	sp,4h
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+54h],0h
	jnz	461Ch

l2644_4619:
	jmp	46D7h

l2644_461C:
	mov	word ptr [bp-4h],0h
	cmp	word ptr es:[bx+32h],0h
	jnz	4693h

l2644_4628:
	cmp	word ptr es:[bx+3Ah],0h
	jz	4656h

l2644_462F:
	push	word ptr es:[bx+34h]
	call	far 207Fh:0006h
	add	sp,2h
	mov	[bp-4h],ax
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	2068h
	add	sp,4h
	les	bx,[bp+6h]
	mov	es:[bx+2Ch],ax
	mov	es:[bx+2Eh],dx

l2644_4656:
	push	es
	push	bx
	push	cs
	call	0D70h
	add	sp,4h
	sub	ax,ax
	push	ax
	les	bx,[bp+6h]
	push	word ptr es:[bx+2Eh]
	push	word ptr es:[bx+2Ch]
	push	word ptr es:[bx+22h]
	push	word ptr es:[bx+20h]
	call	far 3CEEh:05A6h
	les	bx,[bp+6h]
	add	ax,es:[bx+24h]
	adc	dx,es:[bx+26h]
	push	dx
	push	ax
	push	word ptr es:[bx+34h]
	call	far 208Fh:0115h
	add	sp,8h

l2644_4693:
	mov	ax,1h
	push	ax
	mov	ax,5E8Ch
	push	ds
	push	ax
	les	bx,[bp+6h]
	push	word ptr es:[bx+34h]
	call	far 208Fh:00EFh
	add	sp,8h
	sub	ax,ax
	push	ax
	mov	ax,5E8Eh
	push	ds
	push	ax
	les	bx,[bp+6h]
	push	word ptr es:[bx+34h]
	call	far 208Fh:00EFh
	add	sp,8h
	cmp	word ptr [bp-4h],0h
	jz	46D7h

l2644_46C8:
	les	bx,[bp+6h]
	push	word ptr es:[bx+34h]
	call	far 207Fh:0048h
	add	sp,2h

l2644_46D7:
	les	bx,[bp+6h]
	mov	ax,es:[bx+3Eh]
	or	ax,es:[bx+40h]
	jz	46FEh

l2644_46E4:
	les	bx,es:[bx+3Eh]
	mov	ax,[12FCh]
	cmp	es:[bx+8h],ax
	jnz	46FEh

l2644_46F1:
	les	bx,[bp+6h]
	les	bx,es:[bx+3Eh]
	mov	word ptr es:[bx+8h],0h

l2644_46FE:
	mov	word ptr [bp-2h],0h
	jmp	474Ch
2644:4705                90                                    .          

l2644_4706:
	mov	ax,[bp-2h]
	mov	cx,ax
	shl	ax,1h
	shl	ax,1h
	add	ax,cx
	shl	ax,1h
	add	ax,[bp+6h]
	mov	dx,[bp+8h]
	mov	[bp-8h],ax
	mov	[bp-6h],dx
	les	bx,[bp-8h]
	push	word ptr es:[bx+0BCh]
	call	far 31FFh:1C0Ah
	add	sp,2h
	les	bx,[bp-8h]
	push	word ptr es:[bx+0C4h]
	push	word ptr es:[bx+0C2h]
	push	word ptr es:[bx+0C0h]
	call	far 21DCh:0702h
	add	sp,6h
	inc	word ptr [bp-2h]

l2644_474C:
	les	bx,[bp+6h]
	mov	ax,[bp-2h]
	cmp	es:[bx+0BAh],ax
	ja	4706h

l2644_4759:
	cmp	word ptr es:[bx+0B0h],0h
	jz	4788h

l2644_4761:
	push	word ptr es:[bx+0B0h]
	call	far 31FFh:1C0Ah
	add	sp,2h
	les	bx,[bp+6h]
	push	word ptr es:[bx+0B6h]
	push	word ptr es:[bx+0B4h]
	push	word ptr es:[bx+0B2h]
	call	far 21DCh:0702h
	add	sp,6h

l2644_4788:
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+0AEh],0h
	jz	47A0h

l2644_4793:
	push	word ptr es:[bx+0AEh]
	call	far 31FFh:1C0Ah
	add	sp,2h

l2644_47A0:
	call	far 2EB3h:0064h
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	0F82h
	add	sp,4h

l2644_47B2:
	mov	sp,bp
	pop	bp
	retf
2644:47B6                   55 8B EC 83 EC 20 56 C4 1E 0A       U.... V...
2644:47C0 13 26 8B 07 26 0B 47 02 74 2E 26 FF 77 02 26 FF .&..&.G.t.&.w.&.
2644:47D0 37 0E E8 F5 FD 83 C4 04 C4 1E 0A 13 2B C0 26 89 7...........+.&.
2644:47E0 47 02 26 89 07 8B 1E FC 12 D1 E3 D1 E3 8B 36 0A G.&...........6.
2644:47F0 13 26 89 40 02 26 89 00 C4 1E 96 12 26 8B 47 08 .&.@.&......&.G.
2644:4800 26 8B 57 0A 89 46 E2 89 56 E4 83 7E 06 00 74 0C &.W..F..V..~..t.
2644:4810 A1 F0 13 89 46 FE C7 06 F0 13 01 00 C7 06 FA 12 ....F...........
2644:4820 00 00 26 FF 77 FA 26 FF 77 F8 0E E8 00 C8 83 C4 ..&.w.&.w.......
2644:4830 04 89 46 F6 89 56 F8 83 7E 06 00 74 06 8B 46 FE ..F..V..~..t..F.
2644:4840 A3 F0 13 8B 46 F6 0B 46 F8 75 03 E9 CA 00 C4 5E ....F..F.u.....^
2644:4850 F6 A1 FC 12 26 89 47 3C 3D FB 00 72 03 E9 90 00 ....&.G<=..r....
2644:4860 8B 46 E2 0B 46 E4 75 6D 8D 46 E0 16 50 8D 46 FC .F..F.um.F..P.F.
2644:4870 16 50 8D 46 FA 16 50 8D 46 E0 16 50 8D 46 E0 16 .P.F..P.F..P.F..
2644:4880 50 C4 1E 96 12 26 FF 77 F2 26 FF 77 FA 26 FF 77 P....&.w.&.w.&.w
2644:4890 F8 9A 6A 0F D6 38 83 C4 1A 8B 76 FC 2B 76 FA 56 ..j..8....v.+v.V
2644:48A0 C4 1E 96 12 26 8B 47 F8 26 8B 57 FA 03 46 FA 52 ....&.G.&.W..F.R
2644:48B0 50 8D 46 E6 16 50 9A EC 02 17 20 83 C4 0A C6 42 P.F..P.... ....B
2644:48C0 E6 00 8D 46 E6 16 50 9A C2 03 C7 2B 83 C4 04 89 ...F..P....+....
2644:48D0 46 E2 89 56 E4 C4 5E E2 A1 FC 12 26 89 47 08 C4 F..V..^....&.G..
2644:48E0 5E F6 8B 46 E2 8B 56 E4 26 89 47 3E 26 89 57 40 ^..F..V.&.G>&.W@
2644:48F0 C4 1E 0A 13 8B 46 F6 8B 56 F8 26 89 07 26 89 57 .....F..V.&..&.W
2644:4900 02 8B 1E FC 12 D1 E3 D1 E3 8B 36 0A 13 26 89 00 ..........6..&..
2644:4910 26 89 50 02 0E E8 02 E3 83 3E D2 10 00 75 05 9A &.P......>...u..
2644:4920 68 03 68 23 5E 8B E5 5D CB 90 55 8B EC 83 EC 04 h.h#^..]..U.....
2644:4930 56 FF 36 B4 12 FF 36 B2 12 0E E8 F1 C6 83 C4 04 V.6...6.........
2644:4940 89 46 FC 89 56 FE 0B C2 74 65 C4 5E FC 26 83 7F .F..V...te.^.&..
2644:4950 32 00 75 2C 52 53 0E E8 16 C4 83 C4 04 FF 76 FE 2.u,RS........v.
2644:4960 FF 76 FC 0E E8 EF C4 83 C4 04 FF 76 FE FF 76 FC .v.........v..v.
2644:4970 0E E8 DA C5 83 C4 04 C4 5E FC 26 C7 47 54 01 00 ........^.&.GT..
2644:4980 A1 FC 12 26 89 47 3C C4 1E 0A 13 8B 46 FC 8B 56 ...&.G<.....F..V
2644:4990 FE 26 89 07 26 89 57 02 8B 1E FC 12 D1 E3 D1 E3 .&..&.W.........
2644:49A0 8B 36 0A 13 26 89 00 26 89 50 02 0E E8 6B E2 5E .6..&..&.P...k.^
2644:49B0 8B E5 5D CB                                     ..].            

;; fn2644_49B4: 2644:49B4
;;   Called from:
;;     2644:4AA6 (in fn2644_4A66)
;;     2644:4AD2 (in fn2644_4A66)
;;     2644:4AFE (in fn2644_4A66)
fn2644_49B4 proc
	push	si
	les	bx,[130Ah]
	mov	ax,es:[bx]
	or	ax,es:[bx+2h]
	jz	49F0h

l2644_49C2:
	push	word ptr es:[bx+2h]
	push	word ptr es:[bx]
	push	cs
	call	45CAh
	add	sp,4h
	les	bx,[130Ah]
	sub	ax,ax
	mov	es:[bx+2h],ax
	mov	es:[bx],ax
	mov	bx,[12FCh]
	shl	bx,1h
	shl	bx,1h
	mov	si,[130Ah]
	mov	es:[bx+si+2h],ax
	mov	es:[bx+si],ax

l2644_49F0:
	pop	si
	retf
2644:49F2       55 8B EC 83 EC 02 56 C7 46 FE 01 00 8B 5E   U.....V.F....^
2644:4A00 FE D1 E3 D1 E3 C4 36 0A 13 26 8B 00 26 8B 50 02 ......6..&..&.P.
2644:4A10 8B DE 26 89 07 26 89 57 02 8B 46 FE A3 FC 12 26 ..&..&.W..F....&
2644:4A20 8B 07 0B C2 74 2B 52 26 FF 37 0E E8 9C FB 83 C4 ....t+R&.7......
2644:4A30 04 C4 1E 0A 13 2B C0 26 89 47 02 26 89 07 8B 1E .....+.&.G.&....
2644:4A40 FC 12 D1 E3 D1 E3 8B 36 0A 13 26 89 40 02 26 89 .......6..&.@.&.
2644:4A50 00 FF 46 FE 81 7E FE 00 01 72 A3 C7 06 FC 12 01 ..F..~...r......
2644:4A60 00 5E 8B E5 5D CB                               .^..].          

;; fn2644_4A66: 2644:4A66
;;   Called from:
;;     20B2:11FC (in fn20B2_1192)
fn2644_4A66 proc
	push	bp
	mov	bp,sp
	sub	sp,2h
	push	si
	mov	ax,[12FCh]
	mov	[bp-2h],ax
	mov	ax,[1306h]
	cmp	[bp+6h],ax
	jnz	4A7Eh

l2644_4A7B:
	jmp	4B02h

l2644_4A7E:
	cmp	word ptr [12FEh],0FBh
	jc	4AAAh

l2644_4A86:
	mov	ax,[12FEh]
	mov	[12FCh],ax
	mov	bx,ax
	shl	bx,1h
	shl	bx,1h
	les	si,[130Ah]
	mov	ax,es:[bx+si]
	mov	dx,es:[bx+si+2h]
	mov	bx,si
	mov	es:[bx],ax
	mov	es:[bx+2h],dx
	push	cs
	call	49B4h

l2644_4AAA:
	cmp	word ptr [1300h],0FBh
	jc	4AD6h

l2644_4AB2:
	mov	ax,[1300h]
	mov	[12FCh],ax
	mov	bx,ax
	shl	bx,1h
	shl	bx,1h
	les	si,[130Ah]
	mov	ax,es:[bx+si]
	mov	dx,es:[bx+si+2h]
	mov	bx,si
	mov	es:[bx],ax
	mov	es:[bx+2h],dx
	push	cs
	call	49B4h

l2644_4AD6:
	cmp	word ptr [1302h],0FBh
	jc	4B02h

l2644_4ADE:
	mov	ax,[1302h]
	mov	[12FCh],ax
	mov	bx,ax
	shl	bx,1h
	shl	bx,1h
	les	si,[130Ah]
	mov	ax,es:[bx+si]
	mov	dx,es:[bx+si+2h]
	mov	bx,si
	mov	es:[bx],ax
	mov	es:[bx+2h],dx
	push	cs
	call	49B4h

l2644_4B02:
	mov	ax,[bp-2h]
	mov	[12FCh],ax
	mov	bx,ax
	shl	bx,1h
	shl	bx,1h
	les	si,[130Ah]
	mov	ax,es:[bx+si]
	mov	dx,es:[bx+si+2h]
	mov	bx,si
	mov	es:[bx],ax
	mov	es:[bx+2h],dx
	mov	ax,[bp+6h]
	mov	[1306h],ax
	pop	si
	mov	sp,bp
	pop	bp
	retf
2644:4B2D                                        90                    .  

;; fn2644_4B2E: 2644:4B2E
;;   Called from:
;;     21DC:04DE (in fn21DC_04BA)
fn2644_4B2E proc
	push	bp
	mov	bp,sp
	sub	sp,6h
	push	si
	cmp	word ptr [1278h],1h
	jnz	4BB0h

l2644_4B3C:
	mov	word ptr [bp-2h],1h

l2644_4B41:
	mov	bx,[bp-2h]
	shl	bx,1h
	shl	bx,1h
	les	si,[130Ah]
	mov	ax,es:[bx+si]
	mov	dx,es:[bx+si+2h]
	mov	[bp-6h],ax
	mov	[bp-4h],dx
	or	ax,dx
	jz	4B9Ah

l2644_4B5D:
	mov	bx,si
	mov	ax,[bp-6h]
	mov	es:[bx],ax
	mov	es:[bx+2h],dx
	mov	ax,[bp-2h]
	mov	[12FCh],ax
	push	dx
	push	word ptr [bp-6h]
	push	cs
	call	45CAh
	add	sp,4h
	les	bx,[130Ah]
	sub	ax,ax
	mov	es:[bx+2h],ax
	mov	es:[bx],ax
	mov	bx,[12FCh]
	shl	bx,1h
	shl	bx,1h
	mov	si,[130Ah]
	mov	es:[bx+si+2h],ax
	mov	es:[bx+si],ax

l2644_4B9A:
	inc	word ptr [bp-2h]
	cmp	word ptr [bp-2h],100h
	jc	4B41h

l2644_4BA4:
	mov	word ptr [12FCh],1h
	pop	si
	mov	sp,bp
	pop	bp
	retf
2644:4BAF                                              90                .

l2644_4BB0:
	mov	ax,[1278h]
	cmp	ax,2h
	jnz	4BDFh

l2644_4BB8:
	mov	word ptr [bp-2h],1h

l2644_4BBD:
	les	bx,[130Ah]
	les	bx,es:[bx]
	mov	si,es:[bx+30h]
	or	si,si
	jz	4BD5h

l2644_4BCC:
	push	si
	call	far 2D1Ah:0B04h
	add	sp,2h

l2644_4BD5:
	inc	word ptr [bp-2h]
	cmp	word ptr [bp-2h],100h
	jc	4BBDh

l2644_4BDF:
	inc	word ptr [138Ch]
	cmp	word ptr [138Ch],100h
	jnc	4C3Ch

l2644_4BEB:
	mov	ax,[138Ch]
	mov	[12FCh],ax
	mov	bx,ax
	shl	bx,1h
	shl	bx,1h
	les	si,[130Ah]
	mov	ax,es:[bx+si]
	mov	dx,es:[bx+si+2h]
	mov	bx,si
	mov	es:[bx],ax
	mov	es:[bx+2h],dx
	or	ax,dx
	jz	4BDFh

l2644_4C0F:
	push	dx
	push	word ptr es:[bx]
	push	cs
	call	45CAh
	add	sp,4h
	les	bx,[130Ah]
	sub	ax,ax
	mov	es:[bx+2h],ax
	mov	es:[bx],ax
	mov	bx,[12FCh]
	shl	bx,1h
	shl	bx,1h
	mov	si,[130Ah]
	mov	es:[bx+si+2h],ax
	mov	es:[bx+si],ax
	jmp	4BDFh

l2644_4C3C:
	pop	si
	mov	sp,bp
	pop	bp
	retf
2644:4C41    90 55 8B EC 83 EC 04 56 8B 46 06 0B 46 08 75  .U.....V.F..F.u
2644:4C50 03 E9 E1 00 B8 01 00 50 FF 76 08 FF 76 06 0E E8 .......P.v..v...
2644:4C60 B0 D2 83 C4 06 C4 5E 06 26 83 7F 30 00 74 0C 26 ......^.&..0.t.&
2644:4C70 FF 77 30 9A 3C 00 1A 2D 83 C4 02 C4 5E 06 26 83 .w0.<..-....^.&.
2644:4C80 7F 54 00 74 5A 26 83 7F 32 00 75 53 26 83 7F 3A .T.tZ&..2.uS&..:
2644:4C90 00 74 29 26 FF 77 34 9A 06 00 7F 20 83 C4 02 89 .t)&.w4.... ....
2644:4CA0 46 FC FF 76 08 FF 76 06 0E E8 BC D3 83 C4 04 C4 F..v..v.........
2644:4CB0 5E 06 26 89 47 2C 26 89 57 2E EB 05 C7 46 FC 00 ^.&.G,&.W....F..
2644:4CC0 00 06 53 0E E8 A9 C0 83 C4 04 83 7E FC 00 74 0F ..S........~..t.
2644:4CD0 C4 5E 06 26 FF 77 34 9A 48 00 7F 20 83 C4 02 C4 .^.&.w4.H.. ....
2644:4CE0 5E 06 26 FF 77 34 9A 11 02 8F 20 83 C4 02 C4 5E ^.&.w4.... ....^
2644:4CF0 06 26 83 7F 36 00 74 0C 26 FF 77 38 9A 11 02 8F .&..6.t.&.w8....
2644:4D00 20 83 C4 02 C7 46 FE 01 00 EB 1E 90 8B 76 FE D1  ....F.......v..
2644:4D10 E6 D1 E6 C4 5E 06 26 FF 70 68 26 FF 70 66 9A 7C ....^.&.ph&.pf.|
2644:4D20 05 B3 2E 83 C4 04 FF 46 FE C4 5E 06 8B 46 FE 26 .......F..^..F.&
2644:4D30 39 47 64 73 D7 5E 8B E5 5D CB 55 8B EC 83 EC 02 9Gds.^..].U.....
2644:4D40 56 C7 46 FE 01 00 8B 5E FE D1 E3 D1 E3 C4 36 0A V.F....^......6.
2644:4D50 13 26 FF 70 02 26 FF 30 0E E8 E6 FE 83 C4 04 FF .&.p.&.0........
2644:4D60 46 FE 81 7E FE 00 01 72 DD 5E 8B E5 5D CB FF 36 F..~...r.^..]..6
2644:4D70 FA 12 9A F4 02 68 23 83 C4 02 9A EE 03 DC 21 CB .....h#.......!.
2644:4D80 55 8B EC 83 EC 04 C4 1E 0A 13 26 8B 07 26 8B 57 U.........&..&.W
2644:4D90 02 89 46 FC 89 56 FE 0B C2 74 09 C4 5E FC 26 8B ..F..V...t..^.&.
2644:4DA0 47 62 EB 02 2B C0 50 9A E0 01 68 23 83 C4 02 9A Gb..+.P...h#....
2644:4DB0 EE 03 DC 21 8B E5 5D CB 2B C0 50 FF 36 A0 14 FF ...!..].+.P.6...
2644:4DC0 36 9E 14 9A 2E 02 68 23 83 C4 06 9A EE 03 DC 21 6.....h#.......!
2644:4DD0 CB 90 C4 1E 0A 13 26 8B 07 26 0B 47 02 74 21 26 ......&..&.G.t!&
2644:4DE0 C4 1F 26 83 BF B0 00 00 74 16 2B C0 50 C4 1E 0A ..&.....t.+.P...
2644:4DF0 13 26 C4 1F 26 FF B7 B4 00 26 FF B7 B2 00 EB 08 .&..&....&......
2644:4E00 2B C0 50 B8 90 5E 1E 50 9A 2E 02 68 23 83 C4 06 +.P..^.P...h#...
2644:4E10 9A EE 03 DC 21 CB 55 8B EC 83 EC 02 56 C4 1E 0A ....!.U.....V...
2644:4E20 13 26 8B 07 26 0B 47 02 74 52 83 3E 7C 12 01 75 .&..&.G.tR.>|..u
2644:4E30 4B C4 1E 96 12 26 83 3F 02 75 41 26 8B 47 08 48 K....&.?.uA&.G.H
2644:4E40 89 46 FE C4 1E 0A 13 26 C4 1F 26 39 87 BA 00 76 .F.....&..&9...v
2644:4E50 23 2B C0 50 C4 1E 0A 13 26 C4 1F 8B 76 FE 8B C6 #+.P....&...v...
2644:4E60 D1 E6 D1 E6 03 F0 D1 E6 26 FF B0 C2 00 26 FF B0 ........&....&..
2644:4E70 C0 00 EB 10 2B C0 50 B8 92 5E EB 06 2B C0 50 B8 ....+.P..^..+.P.
2644:4E80 94 5E 1E 50 9A 2E 02 68 23 83 C4 06 9A EE 03 DC .^.P...h#.......
2644:4E90 21 5E 8B E5 5D CB 55 8B EC 83 EC 02 56 C4 1E 0A !^..].U.....V...
2644:4EA0 13 26 8B 07 26 0B 47 02 74 40 83 3E 7C 12 01 75 .&..&.G.t@.>|..u
2644:4EB0 39 C4 1E 96 12 26 83 3F 02 75 2F 26 8B 47 08 48 9....&.?.u/&.G.H
2644:4EC0 89 46 FE C4 1E 0A 13 26 C4 1F 26 39 87 BA 00 76 .F.....&..&9...v
2644:4ED0 19 C4 1E 0A 13 26 C4 1F 8B F0 D1 E6 D1 E6 03 F0 .....&..........
2644:4EE0 D1 E6 26 FF B0 BE 00 EB 04 90 2B C0 50 9A E0 01 ..&.......+.P...
2644:4EF0 68 23 83 C4 02 9A EE 03 DC 21 5E 8B E5 5D CB 90 h#.......!^..]..
2644:4F00 55 8B EC 83 EC 02 56 8B 46 06 3D 64 00 74 0B 3D U.....V.F.=d.t.=
2644:4F10 65 00 74 48 5E 8B E5 5D CB 90 C4 1E 96 12 26 F7 e.tH^..]......&.
2644:4F20 07 00 04 75 03 E9 89 00 26 8B 47 08 89 46 FE A1 ...u....&.G..F..
2644:4F30 FC 12 26 89 47 08 8B 46 FE A3 FC 12 8B D8 D1 E3 ..&.G..F........
2644:4F40 D1 E3 C4 36 0A 13 26 8B 00 26 8B 50 02 8B DE 26 ...6..&..&.P...&
2644:4F50 89 07 26 89 57 02 5E 8B E5 5D CB 90 C4 1E 96 12 ..&.W.^..]......
2644:4F60 26 F7 47 F0 00 04 74 49 26 8B 47 F8 89 46 FE A3 &.G...tI&.G..F..
2644:4F70 FC 12 8B D8 D1 E3 D1 E3 C4 36 0A 13 26 8B 00 26 .........6..&..&
2644:4F80 8B 50 02 8B DE 26 89 07 26 89 57 02 B8 10 00 50 .P...&..&.W....P
2644:4F90 FF 36 98 12 FF 36 96 12 A1 96 12 8B 16 98 12 2D .6...6.........-
2644:4FA0 10 00 52 50 9A EC 02 17 20 83 C4 0A 83 2E 96 12 ..RP.... .......
2644:4FB0 10 5E 8B E5 5D CB C7 06 9A 12 80 00 C4 1E 0A 13 .^..]...........
2644:4FC0 26 8B 07 26 0B 47 02 74 07 B8 01 00 A3 A2 12 CB &..&.G.t........
