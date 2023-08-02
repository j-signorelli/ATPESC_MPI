#!/bin/sh

LAUNCHER=
if test -n "$CRAY_CPU_TARGET" ; then
    export MPICH_MPIIO_DVS_MAXNODES=1
    LAUNCHER=srun
else
    LAUNCHER=mpirun
fi

$LAUNCHER -n 16 ./stencil_fence_put 1000 1000 10 4 4
$LAUNCHER -n 16 ./stencil_fence_get 1000 1000 10 4 4
$LAUNCHER -n 16 ./stencil_lock_put 1000 1000 10 4 4
