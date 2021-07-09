#!/bin/bash -x
read n
i=1
while [ $i -le $n ]
do
x=$((2**$i))
echo "power of 2^$i is $x"
i=$(($i+1))
done
