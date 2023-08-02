# -*- Mode: Makefile; -*-
#
# See COPYRIGHT in top-level directory.
#

NVCC=CC
NVCFLAGS=-I../common/stencil -I$(MPI_INSTALL_PATH)/include -O2 -g -cuda
BINS=stencil_cuda

all: $(BINS)

stencil_cuda: stencil_cuda.cu
	$(NVCC) $(NVCFLAGS) $^ -o $@ -lm

clean:
	rm -f $(BINS)
