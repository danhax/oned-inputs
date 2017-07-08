#!/bin/bash


rm linplus.dat
for file in Outs/Out.linplus.R*
do
    line=`grep -A 3 CONV $file |grep 000000`
    echo $file $line |colrm 1 18 >> linplus.dat
done

rm lin.dat
for file in Outs/Out.lin.R*
do
    line=`grep -A 3 CONV $file |grep 000000`
    echo $file $line |colrm 1 14 >> lin.dat
done


rm linminus.dat
for file in Outs/Out.linminus.R*
do
    line=`grep -A 3 CONV $file |grep 000000`
    echo $file $line |colrm 1 19 >> linminus.dat
done


rm linheh.dat
for file in Outs/Out.linheh.R*
do
    line=`grep -A 3 CONV $file |grep 000000`
    echo $file $line |colrm 1 17 >> linheh.dat
done


rm linhe2.dat
for file in Outs/Out.linhe2.R*
do
    line=`grep -A 3 CONV $file |grep 000000`
    echo $file $line |colrm 1 17 >> linhe2.dat
done

