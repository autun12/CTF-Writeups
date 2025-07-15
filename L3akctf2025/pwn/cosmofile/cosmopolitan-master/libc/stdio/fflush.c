/*-*- mode:c;indent-tabs-mode:nil;c-basic-offset:2;tab-width:8;coding:utf-8 -*-│
│ vi: set et ft=c ts=2 sts=2 sw=2 fenc=utf-8                               :vi │
╞══════════════════════════════════════════════════════════════════════════════╡
│ Copyright 2022 Justine Alexandra Roberts Tunney                              │
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
#include "libc/cxxabi.h"
#include "libc/stdio/internal.h"

/**
 * Blocks until data from stream buffer is written out.
 *
 * @param f is the stream handle, or 0 for all streams
 * @return is 0 on success or EOF on error
 */
int fflush(FILE *f) {
  int rc;
  if (f) {
    flockfile(f);
    rc = fflush_unlocked(f);
    funlockfile(f);
  } else {
    __stdio_lock();
    struct Dll *e, *e2;
    for (rc = 0, e = dll_last(__stdio.files); e; e = e2) {
      f = FILE_CONTAINER(e);
      __stdio_ref(f);
      __stdio_unlock();
      rc |= fflush(FILE_CONTAINER(e));
      __stdio_lock();
      e2 = dll_prev(__stdio.files, e);
      __stdio_unref_unlocked(f);
    }
    __stdio_unlock();
  }
  return rc;
}

__attribute__((__constructor__(60))) static textstartup void fflush_init(void) {
  __cxa_atexit((void *)fflush, 0, 0);
}
