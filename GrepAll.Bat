#!/bin/bash

grep -A 2 CONV Outs/Out.relax.R*|grep 000000 |colrm 1 16|perl -pi -e "s/-//"   > h2.dat

grep -A 2 CONV Outs/Out.h2plus.R*|grep 000000 |colrm 1 17|perl -pi -e "s/-//" > h2plus.dat

grep -A 2 CONV Outs/Out.heh.R*|grep 000000 |colrm 1 14|perl -pi -e "s/-//"  > heh.dat

grep -A 2 CONV Outs/Out.he2.R*|grep 000000 |colrm 1 14|perl -pi -e "s/-//"  > he2.dat

grep -A 2 CONV Outs/Out.he2plus.R*|grep 000000 |colrm 1 18|perl -pi -e "s/-//"  > he2plus.dat

grep -A 2 CONV Outs/Out.hehplus.R*|grep 000000 |colrm 1 18|perl -pi -e "s/-//"  > hehplus.dat


