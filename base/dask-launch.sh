#!/bin/bash

set -x

#MemoryLimit=${MemoryLimit:=auto}
#NumThreads=${NumThreads:=$(python3 -c "import multiprocessing; print (multiprocessing.cpu_count())")}
#NumWorkers=${NumWorkers:=$(python3 -c "import math, multiprocessing; print (math.floor(multiprocessing.cpu_count()/${NumThreads}))")}
#if [ "$NumWorkers" == "1" ]
#then
#  WorkerPorts=8000
#  NannyPorts=8100
#else
#  WorkerPorts=8000:$((7999 + $NumWorkers))
#  NannyPorts=8100:$((8099 + $NumWorkers))
#fi

#dask-scheduler > log.txt 2>&1 &
#dask-worker \
#    --nworkers $NumWorkers \
#    --nthreads $NumThreads \
#    --memory-limit "${MemoryLimit}" \
#    --worker-port $WorkerPorts \
#    --nanny-port $NannyPorts \
#    127.0.0.1:8786 > log.txt 2>&1 &

#tail -f log.txt
if [ "$EXTRA_PIP_PACKAGES" ]; then
    echo "EXTRA_PIP_PACKAGES environment variable found.  Installing".
    pip install $EXTRA_PIP_PACKAGES
fi

exec "$@"