#!/bin/bash

procs=1
threads=10
NPN=2
export OMP_NUM_THREADS=$threads 

command='
 mpirun  -n $procs -npernode $NPN --bind-to-core --bysocket --cpus-per-proc $threads --report-bindings'

command=''


for num in 000 002 004 006 008 010 012 014 016 018 020 024 030 036 042 050 060 070 080 090 100 110 150
do

	cp -p Input.Inp.Linheh.QQQ linhehset.inp
	perl -pi -e "s/QQQ/$num/" linhehset.inp
	
	$command chmctdhf_sinc1d Inp=linhehset.inp |tee Outs/Out.linheh.R$num
	
done





