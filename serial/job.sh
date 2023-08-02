#!/bin/sh

LAUNCHER=
if test -n "$CRAY_CPU_TARGET" ; then
    export MPICH_MPIIO_DVS_MAXNODES=1
    LAUNCHER=srun
else
    LAUNCHER=mpirun
fi

$LAUNCHER -n 1 ./stencil 1000 1000 10
