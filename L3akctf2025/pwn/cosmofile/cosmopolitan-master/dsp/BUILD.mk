#-*-mode:makefile-gmake;indent-tabs-mode:t;tab-width:8;coding:utf-8-*-┐
#── vi: set noet ft=make ts=8 sw=8 fenc=utf-8 :vi ────────────────────┘

.PHONY:		o/$(MODE)/dsp
o/$(MODE)/dsp:	o/$(MODE)/dsp/audio	\
		o/$(MODE)/dsp/core	\
		o/$(MODE)/dsp/mpeg	\
		o/$(MODE)/dsp/scale	\
		o/$(MODE)/dsp/prog	\
		o/$(MODE)/dsp/tty
