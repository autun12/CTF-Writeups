/*-*- mode:c;indent-tabs-mode:nil;c-basic-offset:2;tab-width:8;coding:utf-8 -*-│
│ vi: set et ft=c ts=2 sts=2 sw=2 fenc=utf-8                               :vi │
╚──────────────────────────────────────────────────────────────────────────────╝
│                                                                              │
│  Optimized Routines                                                          │
│  Copyright (c) 2018-2024, Arm Limited.                                       │
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
#include "libc/tinymath/arm.internal.h"
__static_yoink("arm_optimized_routines_notice");

/*
EXP2F_TABLE_BITS = 5
EXP2F_POLY_ORDER = 3

ULP error: 0.502 (nearest rounding.)
Relative error: 1.69 * 2^-34 in [-ln2/64, ln2/64] (before rounding.)
Wrong count: 170635 (all nearest rounding wrong results with fma.)
Non-nearest ULP error: 1 (rounded ULP error)
*/

#define N (1 << EXP2F_TABLE_BITS)
#define InvLn2N __exp2f_data.invln2_scaled
#define T __exp2f_data.tab
#define C __exp2f_data.poly_scaled

static inline uint32_t
top12 (float x)
{
  return asuint (x) >> 20;
}

/**
 * Returns 𝑒^x.
 *
 * - ULP error: 0.502 (nearest rounding.)
 * - Relative error: 1.69 * 2^-34 in [-ln2/64, ln2/64] (before rounding.)
 * - Wrong count: 170635 (all nearest rounding wrong results with fma.)
 * - Non-nearest ULP error: 1 (rounded ULP error)
 *
 * @raise ERANGE on overflow or underflow
 */
float
expf (float x)
{
  uint32_t abstop;
  uint64_t ki, t;
  /* double_t for better performance on targets with FLT_EVAL_METHOD==2.  */
  double_t kd, xd, z, r, r2, y, s;

  xd = (double_t) x;
  abstop = top12 (x) & 0x7ff;
  if (unlikely (abstop >= top12 (88.0f)))
    {
      /* |x| >= 88 or x is nan.  */
      if (asuint (x) == asuint (-INFINITY))
	return 0.0f;
      if (abstop >= top12 (INFINITY))
	return x + x;
      if (x > 0x1.62e42ep6f) /* x > log(0x1p128) ~= 88.72 */
	return __math_oflowf (0);
      if (x < -0x1.9fe368p6f) /* x < log(0x1p-150) ~= -103.97 */
	return __math_uflowf (0);
#if WANT_ERRNO_UFLOW
      if (x < -0x1.9d1d9ep6f) /* x < log(0x1p-149) ~= -103.28 */
	return __math_may_uflowf (0);
#endif
    }

  /* x*N/Ln2 = k + r with r in [-1/2, 1/2] and int k.  */
  z = InvLn2N * xd;

  /* Round and convert z to int, the result is in [-150*N, 128*N] and
     ideally nearest int is used, otherwise the magnitude of r can be
     bigger which gives larger approximation error.  */
#if TOINT_INTRINSICS
  kd = roundtoint (z);
  ki = converttoint (z);
#else
# define SHIFT __exp2f_data.shift
  kd = eval_as_double (z + SHIFT);
  ki = asuint64 (kd);
  kd -= SHIFT;
#endif
  r = z - kd;

  /* exp(x) = 2^(k/N) * 2^(r/N) ~= s * (C0*r^3 + C1*r^2 + C2*r + 1) */
  t = T[ki % N];
  t += ki << (52 - EXP2F_TABLE_BITS);
  s = asdouble (t);
  z = C[0] * r + C[1];
  r2 = r * r;
  y = C[2] * r + 1;
  y = z * r2 + y;
  y = y * s;
  return eval_as_float (y);
}

#if USE_GLIBC_ABI
strong_alias (expf, __expf_finite)
hidden_alias (expf, __ieee754_expf)
#endif
