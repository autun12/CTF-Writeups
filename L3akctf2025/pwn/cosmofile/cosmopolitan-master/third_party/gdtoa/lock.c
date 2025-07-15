/*-*- mode:c;indent-tabs-mode:t;c-basic-offset:8;tab-width:8;coding:utf-8   -*-│
│ vi: set noet ft=c ts=8 sw=8 fenc=utf-8                                   :vi │
╚──────────────────────────────────────────────────────────────────────────────╝
│                                                                              │
│  The author of this software is David M. Gay.                                │
│  Please send bug reports to David M. Gay <dmg@acm.org>                       │
│                          or Justine Tunney <jtunney@gmail.com>               │
│                                                                              │
│  Copyright (C) 1998, 1999 by Lucent Technologies                             │
│  All Rights Reserved                                                         │
│                                                                              │
│  Permission to use, copy, modify, and distribute this software and           │
│  its documentation for any purpose and without fee is hereby                 │
│  granted, provided that the above copyright notice appear in all             │
│  copies and that both that the copyright notice and this                     │
│  permission notice and warranty disclaimer appear in supporting              │
│  documentation, and that the name of Lucent or any of its entities           │
│  not be used in advertising or publicity pertaining to                       │
│  distribution of the software without specific, written prior                │
│  permission.                                                                 │
│                                                                              │
│  LUCENT DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE,               │
│  INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS.            │
│  IN NO EVENT SHALL LUCENT OR ANY OF ITS ENTITIES BE LIABLE FOR ANY           │
│  SPECIAL, INDIRECT OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES                   │
│  WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER             │
│  IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION,              │
│  ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF              │
│  THIS SOFTWARE.                                                              │
│                                                                              │
╚─────────────────────────────────────────────────────────────────────────────*/
#include "libc/thread/posixthread.internal.h"
#include "third_party/gdtoa/lock.h"

static pthread_mutex_t __gdtoa_lock_obj = PTHREAD_MUTEX_INITIALIZER;
static pthread_mutex_t __gdtoa_lock1_obj = PTHREAD_MUTEX_INITIALIZER;

void
__gdtoa_lock(void)
{
	_pthread_mutex_lock(&__gdtoa_lock_obj);
}

void
__gdtoa_unlock(void)
{
	_pthread_mutex_unlock(&__gdtoa_lock_obj);
}

void
__gdtoa_wipe(void)
{
	_pthread_mutex_wipe_np(&__gdtoa_lock_obj);
}

void
__gdtoa_lock1(void)
{
	_pthread_mutex_lock(&__gdtoa_lock1_obj);
}

void
__gdtoa_unlock1(void)
{
	_pthread_mutex_unlock(&__gdtoa_lock1_obj);
}

void
__gdtoa_wipe1(void)
{
	_pthread_mutex_wipe_np(&__gdtoa_lock1_obj);
}
