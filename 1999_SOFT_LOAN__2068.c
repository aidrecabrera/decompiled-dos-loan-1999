// 1999_SOFT_LOAN__2068.c
// Generated by decompiling 1999_SOFT_LOAN_.exe
// using Reko decompiler version 0.11.4.0.

#include "1999_SOFT_LOAN_.h"

// 2068:0008: define fn2068_0008
// Called from:
//      fn21DC_0EC2
define fn2068_0008
{
	sp = fp;
	Top = 0;
	sp -= 2;
	(ss->*sp).ptr0000 = (struct Eq_49276 Eq_49283::*) bp;
	bp = sp;
	ax = (ss->*bp).w0006;
	ds->w10A8 = ax;
	ax -= ax;
	SCZO = cond(ax);
	bp = (struct Eq_49276 Eq_49283::*) (ss->*sp).ptr0000;
	sp = (struct Eq_49276 Eq_49283::*) &sp->ptr0000;
}

// 2068:001C: define fn2068_001C
// Called from:
//      fn2068_001C
//      fn2068_007C
define fn2068_001C
{
	mp16 fp;
	selector ss;
	selector ds;
	selector es;
	word16 wArg04;
	word16 ax;
	word16 bx;
	word16 cx;
	word16 dx;
	SCZO_13 = cond(wArg04 - 0x00);
	Z_14 = SLICE(SCZO_13, bool, 2);
	C_117 = SLICE(SCZO_13, bool, 1);
	O_130 = SLICE(SCZO_13, bool, 4);
	S_135 = (bool) SCZO_13;
	if (wArg04 != 0x00)
	{
		ax_18 = ds->a10BC[0][wArg04];
		fn3CEE_0747();
		ax_37 = ax_25 | dx_28;
		if (ax_37 != 0x00)
		{
			v16_64 = ds->a10AE[0][wArg04] + 0x01;
			ds->a10AE[0][wArg04] = v16_64;
			fn2068_001C();
			wLoc0A_150 = dx_28;
			wLoc0C_151 = ax_25;
			ptrLoc0C_152 = SEQ(wLoc0A_150, wLoc0C_151);
			fn3CEE_0732();
			SCZO_93 = cond(fp - 0x08);
			C_115 = SLICE(SCZO_93, bool, 1);
			O_128 = SLICE(SCZO_93, bool, 4);
			S_133 = (bool) SCZO_93;
			Z_142 = SLICE(SCZO_93, bool, 2);
			return;
		}
		fn2068_001C();
		SCZO_55 = cond(fp - 0x08);
		C_118 = SLICE(SCZO_55, bool, 1);
		O_131 = SLICE(SCZO_55, bool, 4);
		S_136 = (bool) SCZO_55;
		Z_144 = SLICE(SCZO_55, bool, 2);
	}
	Z_143 = ϕ(Z_14, Z_144);
	S_134 = ϕ(S_135, S_136);
	O_129 = ϕ(O_130, O_131);
	es_126 = ϕ(es, es_29);
	dx_123 = ϕ(dx, dx_50);
	cx_120 = ϕ(cx, cx_49);
	C_116 = ϕ(C_117, C_118);
	bx_112 = ϕ(bx, bx_52);
	ax_108 = ϕ(ax, ax_48);
}

// 2068:007C: define fn2068_007C
// Called from:
//      fn2068_00A8
define fn2068_007C
{
	selector ss;
	selector es;
	selector ds;
	Top_3 = 0;
	wLoc04_43 = 0x00;
	do
	{
		wLoc04_44 = ϕ(wLoc04_43, wLoc04_45);
		ds->a10AE[0][wLoc04_44] = 0x00;
		v9_19 = wLoc04_44 + 0x01;
		wLoc04_45 = v9_19;
	} while (v9_19 <= 0x06);
	fn2068_001C();
}

// 2068:00A8: define fn2068_00A8
// Called from:
//      fn2D1A_0BD2
//      fn2D1A_0D38
//      fn2D1A_0F2A
//      fn2D1A_0FA6
define fn2068_00A8
{
	word32 dwLoc0E;
	mp16 fp;
	selector ss;
	word16 si;
	selector ds;
	selector es;
	Top_3 = 0;
	ax_14 = ds->w10A8;
	dwLoc0E_234 = dwLoc0E;
	if (ax_14 != 0x00)
	{
		fn2017_000F();
		wLoc0E_163 = ax_23;
		wLoc0C_164 = dx_25;
		dwLoc0E_235 = SEQ(wLoc0C_164, wLoc0E_163);
	}
	dwLoc0E_236 = ϕ(dwLoc0E_234, dwLoc0E_235);
	Mem47 = ϕ(Mem15, Mem33);
	fn2068_007C();
	ax_48 = ds->w10AA;
	fn3CEE_0747();
	dx_59 = SLICE(dx_ax_233, word16, 16);
	ax_56 = (word16) dx_ax_233;
	ax_69 = ax_56 | dx_59;
	if (ax_69 != 0x00)
	{
		fn2068_007C();
		ptrLoc14_173 = dx_ax_233;
		fn3CEE_0732();
	}
	else
	{
		wLoc0A_168 = 0x00;
		do
		{
			wLoc0A_169 = ϕ(wLoc0A_168, wLoc0A_170);
			bx_79 = wLoc0A_169 << 0x01;
			ds->a10AE[0][wLoc0A_169] = 0x00;
			v19_82 = wLoc0A_169 + 0x01;
			wLoc0A_170 = v19_82;
		} while (v19_82 <= 0x06);
	}
	es_218 = ϕ(es_103, es_60);
	cx_212 = ϕ(cx_88, cx_58);
	bx_206 = ϕ(bx_102, bx_79);
	ds->w10AC = 0x00;
	wLoc0A_174 = 0x01;
	do
	{
		wLoc0A_175 = ϕ(wLoc0A_174, wLoc0A_176);
		Mem117 = ϕ(Mem114, Mem127);
		ax_121 = ds->a10AE[0][wLoc0A_175];
		dx_ax_122 = ds->a10BC[0][wLoc0A_175] *32 ax_121;
		ax_123 = (word16) dx_ax_122;
		dx_215 = SLICE(dx_ax_122, word16, 16);
		v23_124 = ds->w10AC + ax_123;
		ds->w10AC = v23_124;
		v24_126 = wLoc0A_175 + 0x01;
		wLoc0A_176 = v24_126;
	} while (v24_126 <= 0x06);
	SCZO_130 = cond(ax_14 - 0x00);
	Z_131 = SLICE(SCZO_130, bool, 2);
	C_208 = SLICE(SCZO_130, bool, 1);
	O_221 = SLICE(SCZO_130, bool, 4);
	S_224 = (bool) SCZO_130;
	if (ax_14 != 0x00)
	{
		ptrLoc14_193 = dwLoc0E_236;
		fn2017_0033();
		SCZO_148 = cond(fp - 0x10);
		C_209 = SLICE(SCZO_148, bool, 1);
		O_222 = SLICE(SCZO_148, bool, 4);
		S_225 = (bool) SCZO_148;
		Z_232 = SLICE(SCZO_148, bool, 2);
	}
	Z_231 = ϕ(Z_131, Z_232);
	S_223 = ϕ(S_224, S_225);
	O_220 = ϕ(O_221, O_222);
	es_216 = ϕ(es_218, es_142);
	C_207 = ϕ(C_208, C_209);
	Mem150 = ϕ(Mem127, Mem140);
	ax_151 = ds->w10AC;
}

// 2068:0154: define fn2068_0154
// Called from:
//      fn21DC_0696
//      fn21DC_0718
//      fn21DC_097E
define fn2068_0154
{
	sp = fp;
	Top = 0;
	sp -= 2;
	ss->*sp = bp;
	bp = sp;
	ax.u0 = 23356;
	sp -= 2;
	ss->*sp = ds;
	sp -= 2;
	ss->*sp = ax;
	v8 = ss->*((word16) bp + 0x0A);
	sp -= 2;
	ss->*sp = v8;
	fn20B2_0E9E();
	sp = (word16) sp + 6;
	SCZO = cond(sp);
	ax.u0 = 0x01;
	sp -= 2;
	ss->*sp = ax;
	fn3CEE_01B7();
	sp = (word16) sp + 2;
	SCZO = cond(sp);
	bp = ss->*sp;
	sp = (word16) sp + 2;
}

