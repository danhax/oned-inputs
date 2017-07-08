#!/bin/bash

procs=1
threads=10
NPN=2

export OMP_NUM_THREADS=$threads

for num in 000 002 004 006 008 010 012 014 016 018 020 022 024 026 030 034 040 050 060 070 080 090 100 110 150
do
	cp -p Input.Inp.RelaxY.QQQ relaxyset.inp
	perl -pi -e "s/QQQ/$num/" relaxyset.inp 
	mpirun  -n $procs -npernode $NPN --bind-to-core --bysocket --cpus-per-proc $threads --report-bindings  chmctdhf_sinc1d Inp=relaxyset.inp |tee Outs/Out.relaxy.R$num

done





