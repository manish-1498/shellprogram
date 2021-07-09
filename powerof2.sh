#!/bin/bash -x
for ((i=1; i<=5; i++ ))
do
x=$((2**$i))
echo $x
done
