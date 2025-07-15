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
#include "libc/calls/struct/stat.h"
#include "libc/errno.h"
#include "libc/fmt/conv.h"
#include "libc/fmt/libgen.h"
#include "libc/fmt/magnumstrs.internal.h"
#include "libc/limits.h"
#include "libc/mem/gc.h"
#include "libc/runtime/runtime.h"
#include "libc/stdio/ftw.h"
#include "libc/stdio/stdio.h"
#include "libc/str/str.h"
#include "libc/sysv/consts/at.h"
#include "libc/sysv/consts/ok.h"
#include "libc/sysv/consts/s.h"
#include "libc/x/x.h"
#include "third_party/getopt/getopt.internal.h"

#define USAGE \
  " SRC... DST\n\
\n\
SYNOPSIS\n\
\n\
  Moves Files\n\
\n\
FLAGS\n\
\n\
  -?\n\
  -h      help\n\
  -f      force\n\
  -r      recursive\n\
\n"

bool force;
int striplen;
bool recursive;
const char *prog;
char mkbuf[PATH_MAX];
char srcdir[PATH_MAX];
char dstdir[PATH_MAX];
char srcfile[PATH_MAX];
char dstfile[PATH_MAX];
char linkbuf[PATH_MAX];

void Mv(char *, char *);

wontreturn void Die(const char *path, const char *reason) {
  tinyprint(2, path, ": ", reason, "\n", NULL);
  exit(1);
}

wontreturn void SysDie(const char *path, const char *func) {
  const char *errstr;
  if (!(errstr = _strerdoc(errno)))
    errstr = "EUNKNOWN";
  tinyprint(2, path, ": ", func, ": ", errstr, "\n", NULL);
  exit(1);
}

bool IsDirectory(const char *path) {
  int e;
  bool res;
  struct stat st;
  e = errno;
  res = stat(path, &st) != -1 && S_ISDIR(st.st_mode);
  errno = e;
  return res;
}

bool IsSymlink(const char *path) {
  int e;
  bool res;
  struct stat st;
  e = errno;
  res = fstatat(AT_FDCWD, path, &st, AT_SYMLINK_NOFOLLOW) != -1 &&
        S_ISLNK(st.st_mode);
  errno = e;
  return res;
}

wontreturn void PrintUsage(int rc, int fd) {
  tinyprint(fd, "usage: ", prog, USAGE, NULL);
  exit(rc);
}

void GetOpts(int argc, char *argv[]) {
  int opt;
  while ((opt = getopt(argc, argv, "?hfrR")) != -1) {
    switch (opt) {
      case 'f':
        force = true;
        break;
      case 'r':
      case 'R':
        recursive = true;
        break;
      case 'h':
      case '?':
        PrintUsage(0, 1);
      default:
        PrintUsage(1, 2);
    }
  }
}

int Visit(const char *fpath, const struct stat *sb, int tflag,
          struct FTW *ftwbuf) {
  char *src;
  strcpy(srcfile, fpath);
  src = srcfile + striplen;
  strcpy(dstfile, dstdir);
  if (!endswith(dstfile, "/")) {
    strcat(dstfile, "/");
  }
  strcat(dstfile, src);
  strcpy(srcfile, fpath);
  switch (tflag) {
    case FTW_D:
      return 0;
    case FTW_F:
    case FTW_SL:
    case FTW_SLN:
      Mv(srcfile, dstfile);
      return 0;
    default:
      Die(fpath, "can't handle file type");
  }
}

char *Join(const char *a, const char *b) {
  size_t n, m;
  n = strlen(a);
  m = strlen(b);
  if (n + 1 + m + 1 > sizeof(dstfile)) {
    tinyprint(2, "error: mv: path too long\n", NULL);
    exit(1);
  }
  stpcpy(stpcpy(stpcpy(dstfile, a), "/"), b);
  return dstfile;
}

void Mv(char *src, char *dst) {
  ssize_t rc;
  const char *d;
  if (strlen(src) + 1 > PATH_MAX)
    _Exit(2);
  if (strlen(dst) + 1 > PATH_MAX)
    _Exit(2);
  basename(src);
  basename(dst);
  if (IsDirectory(src)) {
    if (!recursive) {
      Die(prog, "won't move directory without -r flag.");
    }
    strcpy(dstdir, dst);
    if (IsDirectory(dst)) {
      strcpy(srcdir, src);
      basename(srcdir);
      striplen = 0;
      strcpy(srcdir, basename(src));
    } else {
      strcpy(srcdir, src);
      basename(srcdir);
      striplen = strlen(srcdir);
      strcpy(srcdir, "");
    }
    if (nftw(src, Visit, 20, 0) == -1) {
      SysDie(src, "nftw");
    }
    return;
  }
  if (IsDirectory(dst)) {
    dst = Join(dst, basename(src));
  }
  if (!force && access(dst, W_OK) == -1 && errno != ENOENT) {
    SysDie(dst, "access");
  }
  strcpy(mkbuf, dst);
  if (makedirs((d = dirname(mkbuf)), 0755) == -1) {
    SysDie(d, "makedirs");
  }
  if (IsSymlink(src)) {
    if ((rc = readlink(src, linkbuf, sizeof(linkbuf) - 1)) == -1) {
      SysDie(src, "readlink");
    }
    linkbuf[rc] = 0;
    if (symlink(linkbuf, dst)) {
      SysDie(dst, "symlink");
    }
  } else {
    if (rename(src, dst)) {
      SysDie(src, "rename");
    }
  }
}

int main(int argc, char *argv[]) {
  int i;
  prog = argv[0];
  if (!prog)
    prog = "mv";
  GetOpts(argc, argv);
  if (argc - optind < 2)
    PrintUsage(1, 2);
  for (i = optind; i < argc - 1; ++i) {
    Mv(argv[i], argv[argc - 1]);
  }
  return 0;
}
