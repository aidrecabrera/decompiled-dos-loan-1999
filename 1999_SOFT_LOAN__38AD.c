// 1999_SOFT_LOAN__38AD.c
// Generated by decompiling 1999_SOFT_LOAN_.exe
// using Reko decompiler version 0.11.4.0.

#include "1999_SOFT_LOAN_.h"

// 38AD:0008: define fn38AD_0008
// Called from:
//      fn38AD_001E
define fn38AD_0008
{
	byte al;
	Top_3 = 0;
	SCZO_5 = cond(al - 0x61);
	C_6 = SLICE(SCZO_5, bool, 1);
	O_17 = SLICE(SCZO_5, bool, 4);
	S_20 = (bool) SCZO_5;
	Z_26 = SLICE(SCZO_5, bool, 2);
	if (al >= 0x61)
	{
		SCZO_7 = cond(al - 122);
		C_15 = SLICE(SCZO_7, bool, 1);
		O_18 = SLICE(SCZO_7, bool, 4);
		S_21 = (bool) SCZO_7;
		Z_27 = SLICE(SCZO_7, bool, 2);
		if (al <= 122)
		{
			al_9 = al & 0x5F;
			SZ_10 = cond(al & 0x5F);
			S_22 = (bool) SZ_10;
			Z_28 = SLICE(SZ_10, bool, 2);
			O_11 = false;
			C_12 = false;
		}
	}
	Z_25 = ϕ(Z_26, Z_27, Z_28);
	S_19 = ϕ(S_20, S_21, S_22);
	O_16 = ϕ(O_17, O_18, O_11);
	C_14 = ϕ(C_6, C_15, C_12);
	al_13 = ϕ(al, al, al_9);
}

// 38AD:001E: define fn38AD_001E
// Called from:
//      fn1825_648A
//      fn1825_66D4
//      fn21DC_0DE4
//      fn2BC7_03C2
//      fn2BC7_0494
//      fn31FF_0106
//      fn31FF_026E
//      fn31FF_065E
//      fn3431_0DDE
//      fn3431_0E74
//      fn3431_133C
define fn38AD_001E
{
	byte bArg04;
	Top_3 = 0;
	fn38AD_0008();
	ah_21 = 0x00;
}

// 38AD:0040: define fn38AD_0040
// Called from:
//      fn1825_648A
//      fn1825_66D4
//      fn20B2_1014
//      fn2644_1756
//      fn2644_17C8
//      fn31FF_0106
//      fn31FF_026E
//      fn31FF_17DA
//      fn3431_0E74
//      fn3431_133C
//      fn38D6_0CDE
//      fn3CEE_4EAC
//      fn3CEE_794E
//      fn3CEE_79B4
//      fn3CEE_79D3
//      fn3CEE_7A0F
//      fn3CEE_7AD2
//      fn3CEE_8634
define fn38AD_0040
{
	byte bArg04;
	Top_3 = 0;
	bx_16 = 0x00;
	if (bArg04 >= 0x41 && (bArg04 <= 0x5A || bArg04 >= 0x61 && bArg04 <= 122))
		bx_26 = 0x01;
	bx_36 = ϕ(bx_16, bx_16, bx_16, bx_26);
	if (bArg04 >= 0x30 && bArg04 <= 0x39)
		bx_37 = bx_36 | 0x02;
	bx_47 = ϕ(bx_36, bx_36, bx_37);
	if (bArg04 == 0x20 || bArg04 == 0x09)
		bx_48 = bx_47 | 0x04;
	bx_63 = ϕ(bx_47, bx_48);
	if (bArg04 == 0x59 || (bArg04 == 121 || (bArg04 == 0x54 || bArg04 == 116)))
		bx_64 = bx_63 | 0x08;
	bx_79 = ϕ(bx_63, bx_64);
	if (bArg04 != 0x4E && (bArg04 != 110 && bArg04 != 0x46))
	{
		SCZO_76 = cond(bArg04 - 0x66);
		Z_77 = SLICE(SCZO_76, bool, 2);
		C_151 = SLICE(SCZO_76, bool, 1);
		O_153 = SLICE(SCZO_76, bool, 4);
		S_155 = (bool) SCZO_76;
		if (bArg04 != 0x66)
		{
l38AD_009A:
			Z_166 = ϕ(Z_77, Z_167);
			S_154 = ϕ(S_155, S_156);
			O_152 = ϕ(O_153, O_82);
			C_150 = ϕ(C_151, C_83);
			bx_84 = ϕ(bx_79, bx_80);
			ax_85 = bx_84;
			return;
		}
	}
	bx_80 = bx_79 | 0x10;
	SZ_81 = cond(bx_80);
	S_156 = (bool) SZ_81;
	Z_167 = SLICE(SZ_81, bool, 2);
	O_82 = false;
	C_83 = false;
	goto l38AD_009A;
}

// 38AD:00CC: define fn38AD_00CC
// Called from:
//      fn3CEE_8634
define fn38AD_00CC
{
	sp = fp;
	Top = 0;
	sp -= 2;
	ss->*sp = (struct Eq_113869 * Eq_113870::*) bp;
	sp -= 2;
	ss->*sp = (struct Eq_113869 * Eq_113870::*) si;
	sp -= 2;
	ss->*sp = (struct Eq_113869 * Eq_113870::*) di;
	bx = 9114;
	sp -= 2;
	ss->*sp = (struct Eq_113869 * Eq_113870::*) ds;
	ax = bx;
	dx = (struct Eq_113869 *) (ss->*sp);
	sp = (struct Eq_113869 * Eq_113870::*) ((char *) sp + 2);
	di = (struct Eq_113869 *) (ss->*sp);
	sp = (struct Eq_113869 * Eq_113870::*) ((char *) sp + 2);
	si = (struct Eq_113869 *) (ss->*sp);
	sp = (struct Eq_113869 * Eq_113870::*) ((char *) sp + 2);
	bp = (struct Eq_113869 *) (ss->*sp);
	sp = (struct Eq_113869 * Eq_113870::*) ((char *) sp + 2);
}

// 38AD:00F2: define fn38AD_00F2
// Called from:
//      fn2017_0489
//      fn2368_0D20
//      fn2BC7_0068
//      fn2EB3_07B2
//      fn2EB3_0BF0
//      fn2EB3_24C6
//      fn31FF_0AAE
define fn38AD_00F2
{
	word16 wArg0C;
	segptr32 ptrArg08;
	segptr32 ptrArg04;
	bool C;
	bool D;
	bool O;
	bool S;
	bool Z;
	Top_3 = 0;
	cx_18 = wArg0C;
	es_25 = SLICE(ptrArg08, selector, 16);
	ax_21 = 0x00;
	if (wArg0C != 0x00)
	{
		D_22 = false;
		cmpResult_27 = memcmp(ptrArg04, ptrArg08, (uint32) wArg0C);
		firstDifference_28 = __find_first_difference__(ptrArg04, ptrArg08);
		cx_29 = wArg0C - firstDifference_28;
		SCZO_32 = cond(cmpResult_27);
		Z_33 = SLICE(SCZO_32, bool, 2);
		CZ_35.u0 = SLICE(SCZO_32, bool, 2);
		C_62 = SLICE(SCZO_32, bool, 1);
		C_63 = SLICE(CZ_35, bool, 1);
		O_70 = SLICE(SCZO_32, bool, 4);
		S_73 = (bool) SCZO_32;
		Z_77 = SLICE(CZ_35, bool, 2);
		if (cmpResult_27 != 0x00)
		{
			ax_34 = 0x01;
			if (cmpResult_27 <= 0x00)
				ax_36 = ~0x00;
		}
	}
	Z_75 = ϕ(Z, Z_33, Z_77, Z_77);
	S_71 = ϕ(S, S_73, S_73, S_73);
	O_68 = ϕ(O, O_70, O_70, O_70);
	D_65 = ϕ(D, D_22, D_22, D_22);
	cx_64 = ϕ(cx_18, cx_29, cx_29, cx_29);
	C_60 = ϕ(C, C_62, C_63, C_63);
	ax_59 = ϕ(ax_21, ax_21, ax_34, ax_36);
}

// 38AD:0118: define fn38AD_0118
// Called from:
//      fn2644_1756
//      fn31FF_0106
//      fn31FF_026E
//      fn31FF_1B0A
//      fn3CEE_0D30
define fn38AD_0118
{
	sp = fp;
	Top = 0;
	sp -= 2;
	ss->*sp = bp;
	sp -= 2;
	ss->*sp = si;
	sp -= 2;
	ss->*sp = di;
	bp = sp;
	es_di = ss->*((word16) bp + 0x0A);
	cx = (cui16) (ss->*((word16) bp + 0x0E));
	bx = cx;
	al = 0x20;
	D = false;
	cx |= cx;
	SZ = cond(cx);
	O = false;
	C = false;
	do
	{
		if (cx != 0x00)
		{
			SCZO = cond(al - es->*di);
			di = (word16) di + 1;
			--cx;
			if (Test(NE,Z))
				continue;
		}
		if (Test(EQ,Z))
			goto l38AD_0142;
		ah = (byte) (es->*((word16) di - 1));
		SCZO = cond(ah - 0x09);
		if (Test(EQ,Z))
			continue;
		SCZO = cond(ah - 0x0D);
		if (Test(EQ,Z))
			continue;
		SCZO = cond(ah - 0x0A);
	} while (Test(EQ,Z));
	++cx;
	SZO = cond(cx);
l38AD_0142:
	bx -= cx;
	SCZO = cond(bx);
	ax = bx;
	di = ss->*sp;
	sp = (word16) sp + 2;
	si = ss->*sp;
	sp = (word16) sp + 2;
	bp = ss->*sp;
	sp = (word16) sp + 2;
}

// 38AD:014A: define fn38AD_014A
// Called from:
//      fn3CEE_0D30
define fn38AD_014A
{
	sp = fp;
	Top = 0;
	sp -= 2;
	ss->*sp = bp;
	sp -= 2;
	ss->*sp = si;
	sp -= 2;
	ss->*sp = di;
	bp = sp;
	dx = ds;
	ds_si = ss->*((word16) bp + 0x0A);
	cx = (word16) (ss->*((word16) bp + 0x0E));
	if (cx == 0x00)
	{
l38AD_018E:
		ds = dx;
		ax = cx;
		di = ss->*sp;
		sp = (word16) sp + 2;
		si = ss->*sp;
		sp = (word16) sp + 2;
		bp = ss->*sp;
		sp = (word16) sp + 2;
		return;
	}
	bx = cx;
	al = ds->*si;
	si = (word16) si + 1;
	SCZO = cond(al - 0x2D);
	if (Test(EQ,Z))
	{
l38AD_016F:
		--cx;
		if (cx == 0x00)
			goto l38AD_018A;
		al = ds->*si;
		si = (word16) si + 1;
		goto l38AD_0167;
	}
	else
	{
		SCZO = cond(al - 0x2B);
		if (Test(EQ,Z))
			goto l38AD_016F;
l38AD_0167:
		SCZO = cond(al - 0x30);
		if (Test(UGE,C))
		{
			SCZO = cond(al - 0x39);
			if (Test(ULE,CZ))
				goto l38AD_016F;
		}
		else
		{
			SCZO = cond(al - 0x2E);
			if (Test(EQ,Z))
			{
				do
				{
					--cx;
					if (cx == 0x00)
						goto l38AD_018A;
					al = ds->*si;
					si = (word16) si + 1;
					SCZO = cond(al - 0x30);
					if (Test(ULT,C))
						break;
					SCZO = cond(al - 0x39);
				} while (Test(ULE,CZ));
			}
		}
		--cx;
		SZO = cond(cx);
l38AD_018A:
		v19 = bx;
		bx = cx;
		cx = v19;
		cx -= bx;
		SCZO = cond(cx);
		goto l38AD_018E;
	}
}
