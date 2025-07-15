/*-*- mode:c;indent-tabs-mode:t;c-basic-offset:8;tab-width:8;coding:utf-8   -*-│
│ vi: set noet ft=c ts=8 sw=8 fenc=utf-8                                   :vi │
╚──────────────────────────────────────────────────────────────────────────────╝
│                                                                              │
│  Musl Libc                                                                   │
│  Copyright © 2005-2020 Rich Felker, et al.                                   │
│                                                                              │
│  Permission is hereby granted, free of charge, to any person obtaining       │
│  a copy of this software and associated documentation files (the             │
│  "Software"), to deal in the Software without restriction, including         │
│  without limitation the rights to use, copy, modify, merge, publish,         │
│  distribute, sublicense, and/or sell copies of the Software, and to          │
│  permit persons to whom the Software is furnished to do so, subject to       │
│  the following conditions:                                                   │
│                                                                              │
│  The above copyright notice and this permission notice shall be              │
│  included in all copies or substantial portions of the Software.             │
│                                                                              │
│  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,             │
│  EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF          │
│  MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.      │
│  IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY        │
│  CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,        │
│  TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE           │
│  SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.                      │
│                                                                              │
╚─────────────────────────────────────────────────────────────────────────────*/
#include "libc/math.h"
#include "libc/tinymath/internal.h"
#if LDBL_MANT_DIG == 64 && LDBL_MAX_EXP == 16384
__static_yoink("musl_libc_notice");
__static_yoink("openbsd_libm_notice");

/* origin: OpenBSD /usr/src/lib/libm/src/ld80/e_logl.c */
/*
 * Copyright (c) 2008 Stephen L. Moshier <steve@moshier.net>
 *
 * Permission to use, copy, modify, and distribute this software for any
 * purpose with or without fee is hereby granted, provided that the above
 * copyright notice and this permission notice appear in all copies.
 *
 * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
 * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
 * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
 * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
 * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 */
/*
 *      Natural logarithm, long double precision
 *
 *
 * SYNOPSIS:
 *
 * long double x, y, logl();
 *
 * y = logl( x );
 *
 *
 * DESCRIPTION:
 *
 * Returns the base e (2.718...) logarithm of x.
 *
 * The argument is separated into its exponent and fractional
 * parts.  If the exponent is between -1 and +1, the logarithm
 * of the fraction is approximated by
 *
 *     log(1+x) = x - 0.5 x**2 + x**3 P(x)/Q(x).
 *
 * Otherwise, setting  z = 2(x-1)/(x+1),
 *
 *     log(x) = log(1+z/2) - log(1-z/2) = z + z**3 P(z)/Q(z).
 *
 *
 * ACCURACY:
 *
 *                      Relative error:
 * arithmetic   domain     # trials      peak         rms
 *    IEEE      0.5, 2.0    150000      8.71e-20    2.75e-20
 *    IEEE     exp(+-10000) 100000      5.39e-20    2.34e-20
 *
 * In the tests over the interval exp(+-10000), the logarithms
 * of the random arguments were uniformly distributed over
 * [-10000, +10000].
 */

/* Coefficients for log(1+x) = x - x**2/2 + x**3 P(x)/Q(x)
 * 1/sqrt(2) <= x < sqrt(2)
 * Theoretical peak relative error = 2.32e-20
 */
static const long double P[] = {
 4.5270000862445199635215E-5L,
 4.9854102823193375972212E-1L,
 6.5787325942061044846969E0L,
 2.9911919328553073277375E1L,
 6.0949667980987787057556E1L,
 5.7112963590585538103336E1L,
 2.0039553499201281259648E1L,
};
static const long double Q[] = {
/* 1.0000000000000000000000E0,*/
 1.5062909083469192043167E1L,
 8.3047565967967209469434E1L,
 2.2176239823732856465394E2L,
 3.0909872225312059774938E2L,
 2.1642788614495947685003E2L,
 6.0118660497603843919306E1L,
};

/* Coefficients for log(x) = z + z^3 P(z^2)/Q(z^2),
 * where z = 2(x-1)/(x+1)
 * 1/sqrt(2) <= x < sqrt(2)
 * Theoretical peak relative error = 6.16e-22
 */
static const long double R[4] = {
 1.9757429581415468984296E-3L,
-7.1990767473014147232598E-1L,
 1.0777257190312272158094E1L,
-3.5717684488096787370998E1L,
};
static const long double S[4] = {
/* 1.00000000000000000000E0L,*/
-2.6201045551331104417768E1L,
 1.9361891836232102174846E2L,
-4.2861221385716144629696E2L,
};
static const long double C1 = 6.9314575195312500000000E-1L;
static const long double C2 = 1.4286068203094172321215E-6L;

#define SQRTH 0.70710678118654752440L

/**
 * Returns natural logarithm of 𝑥.
 */
long double logl(long double x)
{
#ifdef __x86__

	long double ln2;
	asm("fldln2" : "=t"(ln2));
	asm("fyl2x"
	    : "=t"(x)
	    : "0"(x), "u"(ln2)
	    : "st(1)");
	return x;

#else

	long double y, z;
	int e;

	if (isnan(x))
		return x;
	if (x == INFINITY)
		return x;
	if (x <= 0.0) {
		if (x == 0.0)
			return -1/(x*x); /* -inf with divbyzero */
		return 0/0.0f; /* nan with invalid */
	}

	/* separate mantissa from exponent */
	/* Note, frexp is used so that denormal numbers
	 * will be handled properly.
	 */
	x = frexpl(x, &e);

	/* logarithm using log(x) = z + z**3 P(z)/Q(z),
	 * where z = 2(x-1)/(x+1)
	 */
	if (e > 2 || e < -2) {
		if (x < SQRTH) {  /* 2(2x-1)/(2x+1) */
			e -= 1;
			z = x - 0.5;
			y = 0.5 * z + 0.5;
		} else {  /*  2 (x-1)/(x+1)   */
			z = x - 0.5;
			z -= 0.5;
			y = 0.5 * x  + 0.5;
		}
		x = z / y;
		z = x*x;
		z = x * (z * __polevll(z, R, 3) / __p1evll(z, S, 3));
		z = z + e * C2;
		z = z + x;
		z = z + e * C1;
		return z;
	}

	/* logarithm using log(1+x) = x - .5x**2 + x**3 P(x)/Q(x) */
	if (x < SQRTH) {
		e -= 1;
		x = 2.0*x - 1.0;
	} else {
		x = x - 1.0;
	}
	z = x*x;
	y = x * (z * __polevll(x, P, 6) / __p1evll(x, Q, 6));
	y = y + e * C2;
	z = y - 0.5*z;
	/* Note, the sum of above terms does not exceed x/4,
	 * so it contributes at most about 1/4 lsb to the error.
	 */
	z = z + x;
	z = z + e * C1; /* This sum has an error of 1/2 lsb. */
	return z;

#endif
}

#endif /* 80-bit floating point */
