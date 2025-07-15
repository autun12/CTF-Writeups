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
#include "libc/assert.h"
#include "libc/calls/calls.h"
#include "libc/intrin/safemacros.h"
#include "libc/mem/mem.h"
#include "libc/runtime/runtime.h"
#include "libc/runtime/sysconf.h"
#include "libc/stdio/rand.h"
#include "libc/stdio/stdio.h"
#include "libc/str/str.h"
#include "libc/sysv/consts/map.h"
#include "libc/sysv/consts/prot.h"
#include "libc/testlib/benchmark.h"
#include "libc/testlib/ezbench.h"
#include "libc/testlib/testlib.h"

void *memccpy_pure(void *d, const void *s, int c, size_t n) {
  size_t i;
  unsigned char *x;
  const unsigned char *y;
  for (c &= 0xff, x = d, y = s, i = 0; i < n; ++i) {
    if ((x[i] = y[i]) == c)
      return x + i + 1;
  }
  return NULL;
}

TEST(memccpy, testStringCopy) {
  char buf[16];
  EXPECT_EQ(buf + 3, memccpy(buf, "hi", '\0', sizeof(buf)));
  EXPECT_STREQ("hi", buf);
}

TEST(memccpy, testOverflow) {
  char buf[1];
  EXPECT_EQ(NULL, memccpy(buf, "hi", '\0', sizeof(buf)));
}

TEST(memccpy, testZeroLength_doesNothing) {
  char buf[1];
  EXPECT_EQ(NULL, memccpy(buf, "hi", '\0', 0));
}

TEST(memccpy, fuzz) {
  int pagesz = sysconf(_SC_PAGESIZE);
  char *map1 = (char *)mmap(0, pagesz * 2, PROT_READ | PROT_WRITE,
                            MAP_ANONYMOUS | MAP_PRIVATE, -1, 0);
  npassert(map1 != MAP_FAILED);
  npassert(!mprotect(map1 + pagesz, pagesz, PROT_NONE));
  char *map2 = (char *)mmap(0, pagesz * 2, PROT_READ | PROT_WRITE,
                            MAP_ANONYMOUS | MAP_PRIVATE, -1, 0);
  npassert(map2 != MAP_FAILED);
  npassert(!mprotect(map2 + pagesz, pagesz, PROT_NONE));
  char *map3 = (char *)mmap(0, pagesz * 2, PROT_READ | PROT_WRITE,
                            MAP_ANONYMOUS | MAP_PRIVATE, -1, 0);
  npassert(map3 != MAP_FAILED);
  npassert(!mprotect(map3 + pagesz, pagesz, PROT_NONE));
  for (int dsize = 1; dsize < 128; ++dsize) {
    char *volatile dst1 = map1 + pagesz - dsize;
    char *volatile dst2 = map1 + pagesz - dsize;
    for (int i = 0; i < dsize; ++i)
      dst1[i] = dst2[i] = rand();
    for (int ssize = 1; ssize < dsize * 2; ++ssize) {
      char *volatile src = map3 + pagesz - (ssize + 1);
      for (int i = 0; i < ssize; ++i)
        src[i] = max(rand() & 255, 1);
      src[ssize] = 0;
      ASSERT_EQ(memccpy_pure(dst1, src, 0, dsize),
                memccpy(dst2, src, 0, dsize));
      ASSERT_EQ(0, memcmp(dst1, dst2, dsize));
    }
  }
  npassert(!munmap(map3, pagesz * 2));
  npassert(!munmap(map2, pagesz * 2));
  npassert(!munmap(map1, pagesz * 2));
}

TEST(memccpy, memcpy) {
  unsigned n, n1, n2;
  char *b1, *b2, *b3, *e1, *e2;
  for (n = 0; n < 1026; ++n) {
    b1 = calloc(1, n);
    b2 = calloc(1, n);
    b3 = calloc(1, n);
    rngset(b1, n, _rand64, -1);
    e1 = memccpy_pure(b2, b1, 31337, n);
    e2 = memccpy(b3, b1, 31337, n);
    n1 = e1 ? e1 - b2 : n;
    n2 = e2 ? e2 - b3 : n;
    ASSERT_LE(n1, n);
    ASSERT_LE(n2, n);
    ASSERT_EQ(n1, n2,
              "n=%ld\r\n\t"
              "n1=%8ld e1=%p b2=%p %p\r\n\t"
              "n2=%8ld e2=%p b3=%p %p\r\n\t"
              "%#.*s\r\n\t"
              "%#.*s\r\n\t"
              "%#.*s",
              n, n1, e1, b2, e1 - b2, n2, e2, b3, e2 - b3, n, b1, n, b2, n, b3);
    ASSERT_EQ(0, memcmp(b2, b3, n2));
    free(b3);
    free(b2);
    free(b1);
  }
}

#define N 4096

BENCH(memccpy, bench) {
  char dst[N];
  char src[N + 1];

  printf("\n");
  for (int n = 1; n <= N; n *= 2) {
    for (int i = 0; i < n; ++i)
      src[i] = max(rand() & 255, 1);
    src[n] = 0;
    BENCHMARK(100, n, X(memccpy(dst, src, 0, V(N))));
  }

  printf("\n");
  for (int n = 1; n <= N; n *= 2) {
    for (int i = 0; i < n; ++i)
      src[i] = max(rand() & 255, 1);
    src[n] = 0;
    BENCHMARK(100, n, X(memccpy_pure(dst, src, 0, V(N))));
  }
}
