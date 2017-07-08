#!/bin/bash


# line=`grep -A 3 CONV Outs/Out.coulplus.R*|grep 000000 |colrm 1 19 |colrm 30 10000 |perl -pi -e "s/-//"`
# echo $line > coulplus.dat

# grep -A 3 CONV Outs/Out.coulplus.R*|grep 000000 |colrm 1 19 |colrm 30 10000 |perl -pi -e "s/-//"

rm coulplus.dat
for file in Outs/Out.coulplus.R*
do
    line=`grep -A 3 CONV $file |grep 000000`
    echo $file $line |colrm 1 19 >> coulplus.dat
done

rm coul.dat
for file in Outs/Out.coul.R*
do
    line=`grep -A 3 CONV $file |grep 000000`
    echo $file $line |colrm 1 15 >> coul.dat
done

