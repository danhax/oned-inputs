#!/bin/bash

procs=1
threads=10
NPN=2
export OMP_NUM_THREADS=$threads 

command='
 mpirun  -n $procs -npernode $NPN --bind-to-core --bysocket --cpus-per-proc $threads --report-bindings'

command=''


$command chmctdhf_sinc1d Inp=Input.Inp.Atom |tee Outs/Out.atom

