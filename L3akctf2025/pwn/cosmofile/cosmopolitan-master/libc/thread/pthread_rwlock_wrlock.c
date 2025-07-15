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
#include "libc/intrin/atomic.h"
#include "libc/thread/thread.h"
#include "third_party/nsync/mu.h"

/**
 * Acquires write lock on read-write lock.
 *
 * @return 0 on success, or errno on error
 */
errno_t pthread_rwlock_wrlock(pthread_rwlock_t *rwlock) {

#if PTHREAD_USE_NSYNC
  // use nsync if possible
  if (!rwlock->_pshared) {
    nsync_mu_lock((nsync_mu *)rwlock->_nsync);
    rwlock->_iswrite = 1;
    return 0;
  }
#endif

  // naive implementation
  uint32_t w = 0;
  for (;;) {
    if (atomic_compare_exchange_weak_explicit(
            &rwlock->_word, &w, 1, memory_order_acquire, memory_order_relaxed))
      return 0;
    atomic_fetch_add(&rwlock->_waiters, 1);
    for (;;)
      if (!(w = atomic_load_explicit(&rwlock->_word, memory_order_relaxed)))
        break;
    atomic_fetch_sub(&rwlock->_waiters, 1);
  }
}
