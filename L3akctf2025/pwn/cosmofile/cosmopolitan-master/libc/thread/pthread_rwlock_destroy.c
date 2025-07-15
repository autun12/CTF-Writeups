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
#include "libc/errno.h"
#include "libc/intrin/atomic.h"
#include "libc/str/str.h"
#include "libc/thread/thread.h"
#include "third_party/nsync/mu.h"

/**
 * Destroys read-write lock.
 *
 * @return 0 on success, or error number on failure
 * @raise EBUSY if any threads still hold the lock
 */
errno_t pthread_rwlock_destroy(pthread_rwlock_t *rwlock) {

  // check if lock is held
  if (!rwlock->_pshared) {
    nsync_mu *mu = (nsync_mu *)rwlock->_nsync;
    if (atomic_load_explicit(&mu->word, memory_order_relaxed))
      return EBUSY;
  } else {
    if (atomic_load_explicit(&rwlock->_word, memory_order_relaxed))
      return EBUSY;
  }

  memset(rwlock, -1, sizeof(*rwlock));
  return 0;
}
