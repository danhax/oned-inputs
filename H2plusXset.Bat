#!/bin/bash

procs=1
threads=10
NPN=2
export OMP_NUM_THREADS=$threads 

command='
 mpirun  -n $procs -npernode $NPN --bind-to-core --bysocket --cpus-per-proc $threads --report-bindings'

command=''



for num in 000 002 004 006 008 010 012 014 016 018 020 022 024 026 030 034 040 050 060 070 080 090 100 110 150
do
	cp -p Input.Inp.H2plusX.QQQ h2plusxset.inp
	perl -pi -e "s/QQQ/$num/" h2plusxset.inp 
	$command chmctdhf_sinc1d Inp=h2plusxset.inp |tee Outs/Out.h2plusx.R$num

done





