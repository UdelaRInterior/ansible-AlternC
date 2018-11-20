#!/bin/bash

rnd=`echo -n $(($RANDOM)) $(($RANDOM)) $(($RANDOM))`
str="\$1\$"
sum=`echo -n $rnd | md5sum`
sum=`echo $sum | tr -d ' -'`
semilla="\"$str$sum\""
echo -n $semilla

