#!/bin/bash -x
i=1
read size
sum=0
while [ $i -le $size ]
do
x=$(((RANDOM%90)+10))
sum=$(($sum+$x))
done
