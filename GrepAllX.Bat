#!/bin/bash

grep -A 2 CONV Outs/Out.relaxx.R*|grep 000000 |colrm 1 17|perl -pi -e "s/-//"   > h2x.dat

grep -A 2 CONV Outs/Out.h2plusx.R*|grep 000000 |colrm 1 18|perl -pi -e "s/-//" > h2plusx.dat

grep -A 2 CONV Outs/Out.hehx.R*|grep 000000 |colrm 1 15|perl -pi -e "s/-//"  > hehx.dat

grep -A 2 CONV Outs/Out.he2x.R*|grep 000000 |colrm 1 15|perl -pi -e "s/-//"  > he2x.dat

grep -A 2 CONV Outs/Out.he2plusx.R*|grep 000000 |colrm 1 19|perl -pi -e "s/-//"  > he2plusx.dat

grep -A 2 CONV Outs/Out.hehplusx.R*|grep 000000 |colrm 1 19|perl -pi -e "s/-//"  > hehplusx.dat
