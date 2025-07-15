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
#include "libc/stdio/rand.h"
#include "libc/mem/mem.h"
#include "libc/serialize.h"
#include "libc/str/str.h"
#include "libc/testlib/hyperion.h"
#include "libc/testlib/testlib.h"

TEST(rand002, alwaysReturnsPositiveNumbers) {
  for (unsigned i = 0; i < 100; ++i) {
    ASSERT_GT(rand(), 0);
  }
}

TEST(rand003, srandSmokeTest) {
  srand(1);
  ASSERT_EQ(908834774, rand());
  srand(1);
  ASSERT_EQ(908834774, rand());
  srand(7);
  ASSERT_EQ(1059165278, rand());
}

TEST(rand005, rand64SmokeTest) {
  ASSERT_TRUE(_rand64() != _rand64() || _rand64() != _rand64());
}

TEST(_rand64, test) {
  char *p;
  size_t i;
  uint64_t x;
  p = memcpy(malloc(kHyperionSize), kHyperion, kHyperionSize);
  for (i = 0; i < kHyperionSize / 8; ++i) {
    x = _rand64();
    WRITE64LE(p + i * 8, x);
  }
  free(p);
}
