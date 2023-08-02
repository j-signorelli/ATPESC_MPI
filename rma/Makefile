# -*- Mode: Makefile; -*-
#
# See COPYRIGHT in top-level directory.
#

ifdef CRAY_CPU_TARGET
CC=cc
else
CC=mpicc
endif
CFLAGS= -g -Wall -I../common

STENCIL_COMMON_SRC=../common/stencil/printarr_par.c
STENCIL_CFLAGS=$(CFLAGS) -I../common/stencil
BINS=stencil_fence_put stencil_fence_get stencil_lock_put

all: $(BINS)

stencil_fence_put: stencil_fence_put.c $(STENCIL_COMMON_SRC)
	$(CC) $(STENCIL_CFLAGS) $^ -o $@ -lm

stencil_fence_get: stencil_fence_get.c $(STENCIL_COMMON_SRC)
	$(CC) $(STENCIL_CFLAGS) $^ -o $@ -lm

stencil_lock_put: stencil_lock_put.c $(STENCIL_COMMON_SRC)
	$(CC) $(STENCIL_CFLAGS) $^ -o $@ -lm

clean:
	rm -f $(BINS)
	rm -f output*.bmp
