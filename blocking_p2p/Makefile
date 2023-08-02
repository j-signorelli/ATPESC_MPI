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

BINS=sendrecv manager_worker_simple sort_2_procs sort_any_procs

all: $(BINS)

clean:
	rm -f $(BINS)
	rm -f output*tmp
