# -*- Mode: Makefile; -*-
#
# See COPYRIGHT in top-level directory.
#

ifdef CRAY_CPU_TARGET
CC=cc
else
CC=mpicc
endif
CFLAGS= -g -I../common

BINS=stencil

all: $(BINS)

stencil: stencil.c ../common/stencil/printarr.c
	$(CC) $(CFLAGS) $^ -o $@ -lm

clean:
	rm -f $(BINS)
	rm -f output*tmp
