#!/bin/bash -x
read number
for (( i=2; i<=$number; i++ ))
do
while [ $((($number%$i))) -eq 0 ]
do
number=$(($number/$i))
echo $i
done
done
