// 1999_SOFT_LOAN__3CB7.c
// Generated by decompiling 1999_SOFT_LOAN_.exe
// using Reko decompiler version 0.11.4.0.

#include "1999_SOFT_LOAN_.h"

// 3CB7:0000: define fn3CB7_0000
// Called from:
//      main
define fn3CB7_0000
{
	sp = fp;
	Top = 0;
	sp -= 2;
	ss->*sp = bp;
	bp = sp;
	bx = bx ^ bx;
	SZ = cond(bx);
	O = false;
	C = false;
	ax.u0 = 0x00;
	sp -= 2;
	ss->*sp = ax;
	sp -= 2;
	ss->*sp = bx;
	ax.u0 = 19617;
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
	sp = (word16) sp + 2;
}

