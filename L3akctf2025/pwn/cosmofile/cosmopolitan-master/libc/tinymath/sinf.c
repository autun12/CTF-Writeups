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
#include "libc/tinymath/sincosf.internal.h"
__static_yoink("arm_optimized_routines_notice");

/**
 * Returns sine of y.
 *
 * This is a fast sinf implementation. The worst-case ULP is 0.5607 and
 * the maximum relative error is 0.5303 * 2^-23. A single-step range
 * reduction is used for small values. Large inputs have their range
 * reduced using fast integer arithmetic.
 *
 * @raise EDOM and FE_INVALID if y is an infinity
 */
float
sinf (float y)
{
  double x = y;
  double s;
  int n;
  const sincos_t *p = &__sincosf_table[0];

  if (abstop12 (y) < abstop12 (pio4f))
    {
      s = x * x;

      if (unlikely (abstop12 (y) < abstop12 (0x1p-12f)))
	{
	  if (unlikely (abstop12 (y) < abstop12 (0x1p-126f)))
	    /* Force underflow for tiny y.  */
	    force_eval_float (s);
	  return y;
	}

      return sinf_poly (x, s, p, 0);
    }
  else if (likely (abstop12 (y) < abstop12 (120.0f)))
    {
      x = reduce_fast (x, p, &n);

      /* Setup the signs for sin and cos.  */
      s = p->sign[n & 3];

      if (n & 2)
	p = &__sincosf_table[1];

      return sinf_poly (x * s, x * x, p, n);
    }
  else if (abstop12 (y) < abstop12 (INFINITY))
    {
      uint32_t xi = asuint (y);
      int sign = xi >> 31;

      x = reduce_large (xi, &n);

      /* Setup signs for sin and cos - include original sign.  */
      s = p->sign[(n + sign) & 3];

      if ((n + sign) & 2)
	p = &__sincosf_table[1];

      return sinf_poly (x * s, x * x, p, n);
    }
  else
    return __math_invalidf (y);
}
