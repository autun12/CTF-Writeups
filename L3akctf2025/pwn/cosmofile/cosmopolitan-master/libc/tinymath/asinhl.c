/*-*- mode:c;indent-tabs-mode:t;c-basic-offset:8;tab-width:8;coding:utf-8   -*-│
│ vi: set noet ft=c ts=8 sw=8 fenc=utf-8                                   :vi │
╚──────────────────────────────────────────────────────────────────────────────╝
│                                                                              │
│ FreeBSD lib/msun/src/s_asinhl.c                                              │
│ Converted to ldbl by David Schultz <das@FreeBSD.ORG> and Bruce D. Evans.     │
│                                                                              │
│ Copyright (c) 1992-2023 The FreeBSD Project.                                 │
│                                                                              │
│ Redistribution and use in source and binary forms, with or without           │
│ modification, are permitted provided that the following conditions           │
│ are met:                                                                     │
│ 1. Redistributions of source code must retain the above copyright            │
│    notice, this list of conditions and the following disclaimer.             │
│ 2. Redistributions in binary form must reproduce the above copyright         │
│    notice, this list of conditions and the following disclaimer in the       │
│    documentation and/or other materials provided with the distribution.      │
│                                                                              │
│ THIS SOFTWARE IS PROVIDED BY THE AUTHOR AND CONTRIBUTORS ``AS IS'' AND       │
│ ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE        │
│ IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE   │
│ ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE LIABLE      │
│ FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL   │
│ DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS      │
│ OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)        │
│ HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT   │
│ LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY    │
│ OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF       │
│ SUCH DAMAGE.                                                                 │
│                                                                              │
│ Copyright (C) 1993 by Sun Microsystems, Inc. All rights reserved.            │
│                                                                              │
│ Developed at SunPro, a Sun Microsystems, Inc. business.                      │
│ Permission to use, copy, modify, and distribute this                         │
│ software is freely granted, provided that this notice                        │
│ is preserved.                                                                │
│                                                                              │
╚─────────────────────────────────────────────────────────────────────────────*/
#include "libc/tinymath/freebsd.internal.h"
__static_yoink("freebsd_libm_notice");
__static_yoink("fdlibm_notice");

#if !(LDBL_MANT_DIG == 53 && LDBL_MAX_EXP == 1024)

/* EXP_LARGE is the threshold above which we use asinh(x) ~= log(2x). */
/* EXP_TINY is the threshold below which we use asinh(x) ~= x. */
#if LDBL_MANT_DIG == 64
#define	EXP_LARGE	34
#define	EXP_TINY	-34
#elif LDBL_MANT_DIG == 113
#define	EXP_LARGE	58
#define	EXP_TINY	-58
#else
#error "Unsupported long double format"
#endif

#if LDBL_MAX_EXP != 0x4000
/* We also require the usual expsign encoding. */
#error "Unsupported long double format"
#endif

static const double
one =  1.00000000000000000000e+00, /* 0x3FF00000, 0x00000000 */
huge=  1.00000000000000000000e+300;

#if LDBL_MANT_DIG == 64
static const union IEEEl2bits
u_ln2 =  LD80C(0xb17217f7d1cf79ac, -1, 6.93147180559945309417e-1L);
#define	ln2	u_ln2.e
#elif LDBL_MANT_DIG == 113
static const long double
ln2 =  6.93147180559945309417232121458176568e-1L;	/* 0x162e42fefa39ef35793c7673007e6.0p-113 */
#else
#error "Unsupported long double format"
#endif

/**
 * Returns inverse hyperbolic sine of 𝑥.
 * @define asinh(x) = sign(x)*log(|x|+sqrt(x*x+1)) ~= x - x^3/6 + o(x^5)
 */
long double
asinhl(long double x)
{
	long double t, w;
	uint16_t hx, ix;

	ENTERI();
	GET_LDBL_EXPSIGN(hx, x);
	ix = hx & 0x7fff;
	if (ix >= 0x7fff) RETURNI(x+x);	/* x is inf, NaN or misnormal */
	if (ix < BIAS + EXP_TINY) {	/* |x| < TINY, or misnormal */
	    if (huge + x > one) RETURNI(x);	/* return x inexact except 0 */
	}
	if (ix >= BIAS + EXP_LARGE) {	/* |x| >= LARGE, or misnormal */
	    w = logl(fabsl(x))+ln2;
	} else if (ix >= 0x4000) {	/* LARGE > |x| >= 2.0, or misnormal */
	    t = fabsl(x);
	    w = logl(2.0*t+one/(sqrtl(x*x+one)+t));
	} else {		/* 2.0 > |x| >= TINY, or misnormal */
	    t = x*x;
	    w =log1pl(fabsl(x)+t/(one+sqrtl(one+t)));
	}
	RETURNI((hx & 0x8000) == 0 ? w : -w);
}

#endif /* long double is long */
