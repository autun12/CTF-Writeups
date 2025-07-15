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
#include "libc/calls/calls.h"
#include "libc/calls/struct/sigaction.h"
#include "libc/calls/struct/sigset.h"
#include "libc/runtime/runtime.h"
#include "libc/sysv/consts/sig.h"
#include "libc/testlib/subprocess.h"
#include "libc/testlib/testlib.h"

TEST(abort, test) {
  SPAWN(fork);
  ASSERT_NE(SIG_ERR, signal(SIGABRT, SIG_DFL));
  abort();
  TERMS(SIGABRT);
}

TEST(abort, blocked_stillTerminates) {
  sigset_t ss;
  SPAWN(fork);
  ASSERT_NE(SIG_ERR, signal(SIGABRT, SIG_DFL));
  sigfillset(&ss);
  sigprocmask(SIG_SETMASK, &ss, 0);
  abort();
  TERMS(SIGABRT);
}

TEST(abort, ign_stillTerminates) {
  SPAWN(fork);
  ASSERT_NE(SIG_ERR, signal(SIGABRT, SIG_IGN));
  abort();
  TERMS(SIGABRT);
}

void Ignore(int sig) {
}

TEST(abort, handled_stillTerminates) {
  SPAWN(fork);
  ASSERT_NE(SIG_ERR, signal(SIGABRT, Ignore));
  abort();
  TERMS(SIGABRT);
}
