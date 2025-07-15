#-*-mode:makefile-gmake;indent-tabs-mode:t;tab-width:8;coding:utf-8-*-┐
#── vi: set noet ft=make ts=8 sw=8 fenc=utf-8 :vi ────────────────────┘

PKGS += TEST_LIBC_CALLS

TEST_LIBC_CALLS_SRCS :=							\
	$(wildcard test/libc/calls/*.c)

TEST_LIBC_CALLS_SRCS_TEST =						\
	$(filter %_test.c,$(TEST_LIBC_CALLS_SRCS))

TEST_LIBC_CALLS_OBJS =							\
	$(TEST_LIBC_CALLS_SRCS:%.c=o/$(MODE)/%.o)

TEST_LIBC_CALLS_COMS =							\
	$(TEST_LIBC_CALLS_SRCS_TEST:%.c=o/$(MODE)/%)

TEST_LIBC_CALLS_BINS =							\
	$(TEST_LIBC_CALLS_COMS)						\
	$(TEST_LIBC_CALLS_COMS:%=%.dbg)					\
	o/$(MODE)/test/libc/calls/life-nomod				\
	o/$(MODE)/test/libc/calls/life-classic				\
	o/$(MODE)/test/libc/calls/zipread.dbg				\
	o/$(MODE)/test/libc/calls/zipread

TEST_LIBC_CALLS_TESTS =							\
	$(TEST_LIBC_CALLS_SRCS_TEST:%.c=o/$(MODE)/%.ok)

TEST_LIBC_CALLS_CHECKS =						\
	$(TEST_LIBC_CALLS_SRCS_TEST:%.c=o/$(MODE)/%.runs)

TEST_LIBC_CALLS_DIRECTDEPS =						\
	DSP_CORE							\
	LIBC_CALLS							\
	LIBC_FMT							\
	LIBC_INTRIN							\
	LIBC_LOG							\
	LIBC_MEM							\
	LIBC_NEXGEN32E							\
	LIBC_NT_KERNEL32						\
	LIBC_PROC							\
	LIBC_RUNTIME							\
	LIBC_SOCK							\
	LIBC_STDIO							\
	LIBC_STR							\
	LIBC_SYSV							\
	LIBC_SYSV_CALLS							\
	LIBC_TESTLIB							\
	LIBC_THREAD							\
	LIBC_TINYMATH							\
	LIBC_X								\
	THIRD_PARTY_COMPILER_RT						\
	TOOL_DECODE_LIB							\
	THIRD_PARTY_XED							\
	THIRD_PARTY_TZ

TEST_LIBC_CALLS_DEPS :=							\
	$(call uniq,$(foreach x,$(TEST_LIBC_CALLS_DIRECTDEPS),$($(x))))

o/$(MODE)/test/libc/calls/calls.pkg:					\
		$(TEST_LIBC_CALLS_OBJS)					\
		$(foreach x,$(TEST_LIBC_CALLS_DIRECTDEPS),$($(x)_A).pkg)

o/$(MODE)/test/libc/calls/%.dbg:					\
		$(TEST_LIBC_CALLS_DEPS)					\
		o/$(MODE)/test/libc/calls/%.o				\
		o/$(MODE)/test/libc/calls/calls.pkg			\
		$(LIBC_TESTMAIN)					\
		$(CRT)							\
		$(APE_NO_MODIFY_SELF)
	@$(APELINK)

o/$(MODE)/test/libc/calls/stat_test.dbg:				\
		$(TEST_LIBC_CALLS_DEPS)					\
		o/$(MODE)/test/libc/calls/stat_test.o			\
		o/$(MODE)/third_party/python/Lib/test/tokenize_tests-latin1-coding-cookie-and-utf8-bom-sig.txt.zip.o	\
		o/$(MODE)/test/libc/calls/calls.pkg			\
		$(LIBC_TESTMAIN)					\
		$(CRT)							\
		$(APE_NO_MODIFY_SELF)
	@$(APELINK)

o/$(MODE)/test/libc/calls/unveil_test.dbg:				\
		$(TEST_LIBC_CALLS_DEPS)					\
		o/$(MODE)/test/libc/calls/unveil_test.o			\
		o/$(MODE)/test/libc/mem/prog/life.elf.zip.o		\
		o/$(MODE)/test/libc/mem/prog/sock.elf.zip.o		\
		o/$(MODE)/test/libc/calls/calls.pkg			\
		$(LIBC_TESTMAIN)					\
		$(CRT)							\
		$(APE_NO_MODIFY_SELF)
	@$(APELINK)

o/$(MODE)/test/libc/calls/pledge_test.dbg:				\
		$(TEST_LIBC_CALLS_DEPS)					\
		o/$(MODE)/test/libc/calls/pledge_test.o			\
		o/$(MODE)/test/libc/mem/prog/life.elf.zip.o		\
		o/$(MODE)/test/libc/mem/prog/sock.elf.zip.o		\
		o/$(MODE)/test/libc/calls/calls.pkg			\
		$(LIBC_TESTMAIN)					\
		$(CRT)							\
		$(APE_NO_MODIFY_SELF)
	@$(APELINK)

o/$(MODE)/test/libc/calls/life-classic.dbg:				\
		$(LIBC_RUNTIME)						\
		o/$(MODE)/test/libc/calls/life.o			\
		$(CRT)							\
		$(APE)
	@$(APELINK)

o/$(MODE)/test/libc/calls/life-nomod.dbg:				\
		$(LIBC_RUNTIME)						\
		o/$(MODE)/test/libc/calls/life.o			\
		$(CRT)							\
		$(APE_NO_MODIFY_SELF)
	@$(APELINK)

o/$(MODE)/test/libc/calls/tiny64.elf.zip.o				\
o/$(MODE)/test/libc/calls/life-nomod.zip.o				\
o/$(MODE)/test/libc/calls/life-classic.zip.o				\
o/$(MODE)/test/libc/calls/zipread.zip.o: private			\
		ZIPOBJ_FLAGS +=						\
			-B

# TODO(jart): Have pledge() support SIOCGIFCONF
o/$(MODE)/test/libc/calls/ioctl_test.runs:				\
		private .PLEDGE =

o/$(MODE)/test/libc/calls/lseek_test.runs				\
o/$(MODE)/test/libc/calls/poll_test.runs:				\
		private .PLEDGE = stdio rpath wpath cpath fattr proc inet

o/$(MODE)/test/libc/calls/fcntl_test.runs				\
o/$(MODE)/test/libc/calls/lock_test.runs				\
o/$(MODE)/test/libc/calls/lock2_test.runs				\
o/$(MODE)/test/libc/calls/lock_ofd_test.runs:				\
		private .PLEDGE = stdio rpath wpath cpath fattr proc flock

o/$(MODE)/test/libc/calls/unveil_test.runs				\
o/$(MODE)/test/libc/calls/openbsd_test.runs:				\
		private .PLEDGE = stdio rpath wpath cpath fattr proc unveil

o/$(MODE)/test/libc/calls/fexecve_test.runs:				\
		private .UNSANDBOXED = 1  # for memfd_create()

o/$(MODE)/test/libc/calls/execve_test.runs:				\
		private .UNSANDBOXED = 1  # for memfd_create()

o/$(MODE)/test/libc/calls/read_test.runs:				\
		private .UNVEIL += /dev/zero

# TODO(jart): Update nointernet() to allow AF_INET6
o/$(MODE)/test/libc/calls/pledge_test.runs:				\
		private .INTERNET = 1
o/$(MODE)/test/libc/calls/pledge_test.runs:				\
		private .PLEDGE =

.PHONY: o/$(MODE)/test/libc/calls
o/$(MODE)/test/libc/calls:						\
		$(TEST_LIBC_CALLS_BINS)					\
		$(TEST_LIBC_CALLS_CHECKS)
