#-*-mode:makefile-gmake;indent-tabs-mode:t;tab-width:8;coding:utf-8-*-┐
#── vi: set noet ft=make ts=8 sw=8 fenc=utf-8 :vi ────────────────────┘

.PHONY: 	o/$(MODE)/net
o/$(MODE)/net:	o/$(MODE)/net/finger	\
		o/$(MODE)/net/http	\
		o/$(MODE)/net/https	\
		o/$(MODE)/net/turfwar
