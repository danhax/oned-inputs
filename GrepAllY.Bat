#!/bin/bash

grep -A 2 CONV Outs/Out.relaxy.R*|grep 000000 |colrm 1 17|perl -pi -e "s/-//"   > h2y.dat

grep -A 2 CONV Outs/Out.h2plusy.R*|grep 000000 |colrm 1 18|perl -pi -e "s/-//" > h2plusy.dat

grep -A 2 CONV Outs/Out.hehy.R*|grep 000000 |colrm 1 15|perl -pi -e "s/-//"  > hehy.dat

grep -A 2 CONV Outs/Out.he2y.R*|grep 000000 |colrm 1 15|perl -pi -e "s/-//"  > he2y.dat

grep -A 2 CONV Outs/Out.he2plusy.R*|grep 000000 |colrm 1 19|perl -pi -e "s/-//"  > he2plusy.dat

grep -A 2 CONV Outs/Out.hehplusy.R*|grep 000000 |colrm 1 19|perl -pi -e "s/-//"  > hehplusy.dat
