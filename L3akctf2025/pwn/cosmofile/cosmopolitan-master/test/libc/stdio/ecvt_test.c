/*-*- mode:c;indent-tabs-mode:nil;c-basic-offset:2;tab-width:8;coding:utf-8 -*-│
│ vi: set et ft=c ts=2 sts=2 sw=2 fenc=utf-8                               :vi │
╞══════════════════════════════════════════════════════════════════════════════╡
│ Copyright 2020 Justine Alexandra Roberts Tunney                              │
│                                                                              │
│ Permission to use, copy, modify, and/or distribute this software for         │
│ any purpose with or without fee is hereby granted, provided that the         │
│ above copyright notice and this permission notice appear in all copies.      │
│                                                                              │
│ THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL                │
│ WARRANTIES WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED                │
│ WARRANTIES OF MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE             │
│ AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL         │
│ DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR        │
│ PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER               │
│ TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR             │
│ PERFORMANCE OF THIS SOFTWARE.                                                │
╚─────────────────────────────────────────────────────────────────────────────*/
#include "libc/mem/gc.h"
#include "libc/stdlib.h"
#include "libc/testlib/testlib.h"
#include "libc/x/x.h"
#include "libc/x/xasprintf.h"

TEST(fcvt, test) {
  int decpt, sign;
  ASSERT_STREQ("3.14159265358979",
               gc(xasprintf("%.14f", 3.14159265358979323846)));
  ASSERT_STREQ("3141592653589793",
               fcvt(3.14159265358979323846, 15, &decpt, &sign));
  ASSERT_EQ(1, decpt);
  ASSERT_EQ(0, sign);
}

TEST(ecvt, minus0) {
  int decpt = 110000000, sign = 110000000;

  ASSERT_STREQ("00000", ecvt(-0.0, 5, &decpt, &sign));
  ASSERT_LE(0, decpt);
  ASSERT_GE(1, decpt);
  ASSERT_EQ(1, sign);
}

TEST(ecvt, minus0ndigits0) {
  int decpt = 110000000, sign = 110000000;

  ASSERT_STREQ("", ecvt(-0.0, 0, &decpt, &sign));
  ASSERT_LE(0, decpt);
  ASSERT_GE(1, decpt);
  ASSERT_EQ(1, sign);
}

TEST(fcvt, ndigits0) {
  int decpt = 110000000, sign = 110000000;

  ASSERT_STREQ("1", fcvt(0.6, 0, &decpt, &sign));
  ASSERT_EQ(1, decpt);
  ASSERT_EQ(0, sign);
}

TEST(fcvt, minus0ndigits0) {
  int decpt = 110000000, sign = 110000000;

  ASSERT_STREQ("", fcvt(-0.0, 0, &decpt, &sign));
  ASSERT_LE(0, decpt);
  ASSERT_GE(1, decpt);
  ASSERT_EQ(1, sign);
}
