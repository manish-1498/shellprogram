#!/bin/bash -x
read n
for (( i=1; i<=n; i=$(($i+1)) ))
do
x=$((2**$i))
echo "power of 2^$n is $x"
done

