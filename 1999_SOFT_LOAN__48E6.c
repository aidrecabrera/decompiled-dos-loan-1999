// 1999_SOFT_LOAN__48E6.c
// Generated by decompiling 1999_SOFT_LOAN_.exe
// using Reko decompiler version 0.11.4.0.

#include "1999_SOFT_LOAN_.h"

// 3CEE:C213: define fn3CEE_C213
// Called from:
//      fn3CEE_8A23
define fn3CEE_C213
{
	sp = fp;
	Top = 0;
	al = al - Mem0[ds:bx + si:byte] - C;
	SCZO = cond(al);
	while (true)
	{
		di = bp;
		FPUF = cond(ST[Top + 0x00:real64] - Mem0[ss:bp + di:real32]);
		Top = (real64 *) ((char *) Top + 1);
		v16 = (word80) (ds->*((word16) di + ((word16) bx + 61312))) + cl;
		ds->*((word16) di + ((word16) bx + 61312)) = v16;
		dx_ax = (int32) ax;
		ss = ss->*sp;
		v20 = (word80) (ds->*((word16) di + ((word16) bx + 79))) + bl;
		ds->*((word16) di + ((word16) bx + 79)) = v20;
		sp = bp;
		bp = ss->*sp;
		sp = &sp.u7->u1.t0002.u0;
		al = al;
		FPUF.u0 = cond(*Top - ds->*di);
		Top = (real64 *) ((char *) Top + 1);
		v21 = Mem0[ss:bp + -40:byte] + al;
		ss->*((word16) bp - 40) = v21;
		SCZO = cond(v21);
		al = al - 0x00 - C;
		Mem0[ss:bp + di:word16] = cx;
		es = Mem0[ds:bx + si:selector];
		SCZO = cond(ss->*((word16) bp + 26) - bx);
		__out<word16>(dx, ax);
		if (Test(NE,Z))
			break;
		SZP = cond(Mem0[ds:bx + si:byte] & al);
		C.u0 = false;
		al = al - 0x0C - C;
		v28 = (word80) (ds->*((word16) di + ((word16) bx + 0x0659))) + cl;
		ds->*((word16) di + ((word16) bx + 0x0659)) = v28;
		v30 = Mem0[ds:bx + di:byte] + bh;
		Mem0[ds:bx + di:byte] = v30;
		SCZO = cond(v30);
		al = al - 0x0C - C;
		v31 = Mem0[ss:bp + di:byte] + al;
		Mem0[ss:bp + di:byte] = v31;
		*Top *= (real64) (ds->*si);
		cl += dl;
		al |= Mem0[ds:bx + si:byte];
		--di;
		cx = ss->*sp;
		sp = &sp.u7->u1.t0002.u0;
		v36 = Mem0[ds:bx + si:word16] + ax;
		Mem0[ds:bx + si:word16] = v36;
		bx = ss->*((word16) si + ((word16) bp + 22)) *s 0xEF00;
		ST[Top + 0x00:real64] *= CONVERT(Mem0[ds:bx + di:real32], real32, real64);
		v37 = (ss->*bp.u7).u1.b000C + bl;
		(ss->*bp.u7).u1.b000C = v37;
		es = ss->*sp;
		sp = &sp.u7->u1.t0002.u0;
		SCZDOP = ss->*sp;
		sp = &sp.u7->u1.t0002.u0;
		ST[Top + 0x00:real64] *= CONVERT(Mem0[ds:bx + si:real32], real32, real64);
		v39 = (ss->*bp.u7).u1.b000C + bl;
		(ss->*bp.u7).u1.b000C = v39;
		es = ss->*sp;
		sp = &sp.u7->u1.t0002.u0;
		SCZDOP = ss->*sp;
		sp = &sp.u7->u1.t0002.u0;
		if (Test(LE,SZO))
		{
			cx = ss->*sp;
			sp = &sp.u7->u1.t0002.u0;
			ax = __aad(ax);
			FPUF = cond(ST[Top + 0x00:real64] - Mem0[ss:bp + si:real32]);
			Top = (real64 *) ((char *) Top + 1);
			v41 = (byte) ((word80) (ds->*((word16) di - 98)) + ch);
			ds->*((word16) di - 98) = v41;
			SCZO = cond(v41);
			al = al - Mem0[ds:bx + si:byte] - C;
			__out<word16>(dx, ax);
			SCZO = cond(ss->*((word16) bp + 26) - bl);
			al |= Mem0[ds:bx + si:byte];
			SCZO = cond(ds->*((word16) di + ((word16) bx + 0x0000995D)) - al);
			ax = ax - Mem0[ds:bx + si:word16] - C;
			SCZO = cond(ds->*((word16) di + ((word16) bx + 0x0658)) - al);
			v42 = (word80) (ds->*((word16) di + ((word16) bx + 52))) + bl;
			ds->*((word16) di + ((word16) bx + 52)) = v42;
			v43 = (word80) (ds->*((word16) di + ((word16) bx + 27))) + bl;
			ds->*((word16) di + ((word16) bx + 27)) = v43;
			v44 = (byte) ((word16) (ds->*((word16) si + 26)) + bl);
			ds->*((word16) si + 26) = v44;
			SCZO = cond(v44);
			break;
		}
		v61 = Mem0[ds:bx + si:byte] & ah;
		Mem0[ds:bx + si:byte] = v61;
		SZ = cond(Mem0[ds:bx + si:byte]);
		v62 = Mem0[ds:bx + si:byte] & ah;
		Mem0[ds:bx + si:byte] = v62;
		SZ = cond(Mem0[ds:bx + si:byte]);
		v63 = Mem0[ds:bx + si:byte] & ah;
		Mem0[ds:bx + si:byte] = v63;
		SZ = cond(Mem0[ds:bx + si:byte]);
		v64 = (word16) (ss->*((word16) si + ((word16) bp + 0x00006BC7))) + bh;
		ss->*((word16) si + ((word16) bp + 0x00006BC7)) = v64;
		bh += ch;
		__out<word16>(dx, ax);
		__out<word16>(dx, ax);
		dx_ax = (int32) ax;
		--di;
		v66 = Mem0[ds:0x0C:byte] + dh;
		Mem0[ds:0x0C:byte] = v66;
		SCZO = cond(v66);
		al = al - 0x1A - C;
		SCZO = cond(al);
	}
	sp = bp;
	bp = ss->*sp;
	sp = &sp.u7->u1.t0002.u0;
	v45 = Mem0[ds:bx + si:word16] + ax;
	Mem0[ds:bx + si:word16] = v45;
	FPUF = cond(ST[Top + 0x00:real64] - Mem0[ds:0x2C00:real32]);
	Top = (real64 *) ((char *) Top + 1);
	bp = ss->*sp;
	sp = &sp.u7->u1.t0002.u0;
	dx_ax = (int32) ax;
	ax |= 0x3800;
	SCZO = ah;
	ax = ax - Mem0[ds:bx + si:word16] - C;
	__out<word16>(dx, ax);
	SCZO = cond(ds->*di - al);
	ax = ss->*sp;
	sp = &sp.u7->u1.t0002.u0;
	ax += Mem0[ds:bx + si:word16];
	cx = ss->*sp;
	sp = &sp.u7->u1.t0002.u0;
	sp -= 2;
	ss->*sp = ss;
	v46 = Mem0[ds:bx + ~0x6610 + si:byte] + al;
	ds->*((word16) si + ((word16) bx + 0x000099EF)) = v46;
	SCZO = cond(v46);
	do
	{
		ss = ss->*sp;
		v47 = (word80) (ds->*((word16) di + ((word16) bx + 79))) + bl;
		ds->*((word16) di + ((word16) bx + 79)) = v47;
		SCZO = ah;
		al = al - 0x00 - C;
		sp = bp;
		bp = ss->*sp;
		sp = &sp.u7->u1.t0002.u0;
		ax = (word16) ax + 0x0000D800;
		ds = ss->*sp;
		sp = &sp.u7->u1.t0002.u0;
		v48 = Mem0[ss:bp + -121:byte] + al;
		ss->*((word16) bp - 121) = v48;
		SCZO = cond(v48);
		cx = ss->*sp;
		sp = &sp.u7->u1.t0002.u0;
		if (Test(ULT,C))
		{
			ax = ax ^ 0xEF80;
			SZ = cond(ax);
			O = false;
			C.u0 = false;
		}
		else
		{
			v60 = ds->*di;
			sp -= 2;
			ss->*sp = v60;
		}
		dx_ax = (int32) ax;
		ss = ss->*sp;
		v49 = (word80) (ds->*((word16) di + ((word16) bx + 79))) + bl;
		ds->*((word16) di + ((word16) bx + 79)) = v49;
		SCZO = ah;
		al = al - 0x00 - C;
		sp = bp;
		bp = ss->*sp;
		sp = &sp.u7->u1.t0002.u0;
		ax = (byte) ax.u0 + 0x0000D800;
		ds = ss->*sp;
		sp = &sp.u7->u1.t0002.u0;
		v50 = Mem0[ss:bp + -121:byte] + al;
		ss->*((word16) bp - 121) = v50;
		SCZO = ah;
		v51 = Mem0[ds:bx + si:byte] - al - C;
		Mem0[ds:bx + si:byte] = v51;
		dx.u0 = 0x1A9E;
		bl += dl;
		sp -= 2;
		(ss->*sp).u0 = ~0x68;
		v52 = Mem0[ds:0x8600:word16] + bp;
		Mem0[ds:0x8600:word16] = v52;
		SCZO = ah;
		ax = ax - Mem0[ds:bx + si:word16] - C;
		dx_ax = (int32) ax;
		v53 = Mem0[ds:bx + si:word16] | ax;
		Mem0[ds:bx + si:word16] = v53;
		SZ = cond(Mem0[ds:bx + si:word16]);
		--di;
		ax = ss->*sp;
		sp = &sp.u7->u1.t0002.u0;
		v54 = Mem0[ds:bx + si:byte] | al;
		Mem0[ds:bx + si:byte] = v54;
		SZ = cond(Mem0[ds:bx + si:byte]);
		SCZO = ah;
		ax = ax - Mem0[ds:bx + si:word16] - C;
		v55 = (byte) (ss->*((word16) bp + 857));
		ss->*((word16) bp + 857) = v55;
		SCZO = ah;
		ax = ax - Mem0[ds:bx + si:word16] - C;
		v56 = Mem0[ss:bp - 122 + si:word16] >>u cl;
		Mem0[ss:bp - 122 + si:word16] = v56;
		SCZO = cond(v56);
	} while (cx == 0x00);
	cx = ss->*sp;
	sp = &sp.u7->u1.t0002.u0;
	v57 = Mem0[ds:bx + si:byte] + al;
	Mem0[ds:bx + si:byte] = v57;
	al = al ^ 0x00;
	v58 = (byte) ((word80) (ds->*((word16) di - 117)) + dl);
	ds->*((word16) di - 117) = v58;
	al = __in<byte>(dx);
	bx = bx ^ bx;
	SZ = cond(bx);
	O = false;
	C.u0 = false;
	ax.u0 = 0x00;
	sp -= 2;
	ss->*sp = ax;
	sp -= 2;
	ss->*sp = bx;
	ax.u0 = 19696;
	sp -= 2;
	ss->*sp = ax;
	sp -= 2;
	ss->*sp = bx;
	ax.u0 = 0x1D;
	sp -= 2;
	ss->*sp = cs;
	sp -= 2;
	ss->*sp = ax;
	fn3BC2_0000();
	sp = bp;
	bp = ss->*sp;
	sp = &sp.u7->u1.t0002.u0;
}
