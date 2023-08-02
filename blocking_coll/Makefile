# -*- Mode: Makefile; -*-
#
# See COPYRIGHT in top-level directory.
#

ifdef CRAY_CPU_TARGET
CC=cc
else
CC=mpicc
endif
CFLAGS= -g -Wall
BINS=cpi

all: $(BINS)

cpi: cpi.c
	$(CC) $(CFLAGS) $^ -o $@ -lm

clean:
	rm -f $(BINS)
	rm -f output*.bmp
