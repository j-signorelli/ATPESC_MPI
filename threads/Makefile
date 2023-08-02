# -*- Mode: Makefile; -*-
#
# See COPYRIGHT in top-level directory.
#

ifdef CRAY_CPU_TARGET
CC=cc
else
CC=mpicc
endif
CFLAGS= -g -Wall -fopenmp -I../common

STENCIL_COMMON_SRC=../common/stencil/printarr_par.c
STENCIL_CFLAGS=$(CFLAGS) -I../common/stencil
BINS=stencil_funneled stencil_multiple stencil_multiple_ncomms

all: $(BINS)

stencil_funneled: stencil_funneled.c $(STENCIL_COMMON_SRC)
	$(CC) $(STENCIL_CFLAGS) $^ -o $@ -lm

stencil_multiple: stencil_multiple.c $(STENCIL_COMMON_SRC)
	$(CC) $(STENCIL_CFLAGS) $^ -o $@ -lm

stencil_multiple_ncomms: stencil_multiple_ncomms.c $(STENCIL_COMMON_SRC)
	$(CC) $(STENCIL_CFLAGS) $^ -o $@ -lm

clean:
	rm -f $(BINS)
	rm -f output*.bmp
