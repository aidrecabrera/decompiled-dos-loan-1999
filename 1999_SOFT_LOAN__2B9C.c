// 1999_SOFT_LOAN__2B9C.c
// Generated by decompiling 1999_SOFT_LOAN_.exe
// using Reko decompiler version 0.11.4.0.

#include "1999_SOFT_LOAN_.h"

// 2B9C:000C: define fn2B9C_000C
// Called from:
//      fn2644_17C8
define fn2B9C_000C
{
	sp = fp;
	Top = 0;
	sp -= 2;
	ss->*sp = bp;
	bp = sp;
	sp -= 0x0204;
	sp -= 2;
	ss->*sp = si;
	es_bx = ss->*((word16) bp + 6);
	SCZO = cond((es->*bx).w0036 - 0x00);
	if (Test(EQ,Z))
	{
		ax.u0 = 0x01;
		si = ss->*sp;
		sp = bp;
		bp = ss->*sp;
		sp = &sp.u7->u1.t0002.u0;
	}
	else
	{
		ax -= ax;
		sp -= 2;
		ss->*sp = ax;
		ax = ss->*((word16) bp + 0x0A);
		dx -= dx;
		ax <<= 0x01;
		SCZO = cond(ax);
		v14 = (dx & 0x01 << 0x10 - 0x01) != 0x00;
		dx = __rcl<word16,byte>(dx, 0x01, C);
		dh = dl;
		dl = ah;
		ah = al;
		al -= al;
		SCZO = cond(al);
		sp -= 2;
		ss->*sp = dx;
		sp -= 2;
		ss->*sp = ax;
		v20.u7 = (es->*bx).t0038.u7;
		sp -= 2;
		ss->*sp = v20;
		fn208F_0115();
		sp = (word16) sp + 8;
		SCZO = cond(sp);
		(ss->*((word16) bp - 516)).u0 = 0x00;
		do
		{
			ax.u0 = 0x0200;
			sp -= 2;
			ss->*sp = ax;
			ax = bp - 0x0200;
			sp -= 2;
			ss->*sp = ss;
			sp -= 2;
			ss->*sp = ax;
			es_bx = ss->*((word16) bp + 6);
			v21.u7 = (es->*bx).t0038.u7;
			sp -= 2;
			ss->*sp = v21;
			fn208F_00C9();
			sp = (word16) sp + 8;
			SCZO = cond(sp);
			(ss->*((word16) bp - 0x0202)).u0 = 0x00;
			do
			{
				si = ss->*((word16) bp - 0x0202);
				SCZO = cond(Mem0[ss:bp - 0x0200 + si:byte] - 0x1A);
				if (Test(EQ,Z))
					break;
				v22 = (word80) (ss->*((word16) bp - 0x0202)) + 1;
				ss->*((word16) bp - 0x0202) = v22;
				SCZO = cond(ss->*((word16) bp - 0x0202) - 0x0200);
			} while (Test(ULT,C));
			ax = ss->*((word16) bp - 0x0202);
			v24 = Mem0[ss:bp + -516:word16] + ax;
			ss->*((word16) bp - 516) = v24;
			SCZO = cond(ax - 0x0200);
		} while (Test(EQ,Z));
		ax = ss->*((word16) bp - 516);
		ax = (byte) ax.u0 + 1;
		SZO = cond(ax);
		si = ss->*sp;
		sp = bp;
		bp = ss->*sp;
		sp = &sp.u7->u1.t0002.u0;
	}
}

// 2B9C:009C: define fn2B9C_009C
// Called from:
//      fn2644_17C8
define fn2B9C_009C
{
	sp = fp;
	Top = 0;
	sp -= 2;
	ss->*sp = bp;
	bp = sp;
	sp -= 2;
	ss->*sp = si;
	es_bx = ss->*((word16) bp + 6);
	SCZO = cond((es->*bx).w0036 - 0x00);
	if (Test(NE,Z))
	{
		ax -= ax;
		sp -= 2;
		ss->*sp = ax;
		ax = ss->*((word16) bp + 0x0A);
		dx -= dx;
		ax <<= 0x01;
		SCZO = cond(ax);
		v14 = (dx & 0x01 << 0x10 - 0x01) != 0x00;
		dx = __rcl<word16,byte>(dx, 0x01, C);
		dh = dl;
		dl = ah;
		ah = al;
		al -= al;
		SCZO = cond(al);
		sp -= 2;
		ss->*sp = dx;
		sp -= 2;
		ss->*sp = ax;
		v20.u7 = (es->*bx).t0038.u7;
		sp -= 2;
		ss->*sp = v20;
		fn208F_0115();
		sp = (word16) sp + 8;
		SCZO = cond(sp);
		v21 = ss->*((word16) bp + 16);
		sp -= 2;
		ss->*sp = v21;
		v22 = ss->*((word16) bp + 0x0E);
		sp -= 2;
		ss->*sp = v22;
		v23 = ss->*((word16) bp + 0x0C);
		sp -= 2;
		ss->*sp = v23;
		es_bx = ss->*((word16) bp + 6);
		v24.u7 = (es->*bx).t0038.u7;
		sp -= 2;
		ss->*sp = v24;
		fn208F_00C9();
		sp = (word16) sp + 8;
		SCZO = cond(sp);
		si = ss->*((word16) bp + 16);
		es_bx = ss->*((word16) bp + 0x0C);
		Mem0[es:bx - 1 + si:byte] = 0x00;
	}
	si = ss->*sp;
	sp = &sp.u7->u1.t0002.u0;
	bp = ss->*sp;
	sp = &sp.u7->u1.t0002.u0;
}

