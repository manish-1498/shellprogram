#!/bin/bash -x
read number
declare -a array
for (( i=2; i<=$number; i++ ))
do
    while [ $(($number%$i)) == 0 ]
do
        number=$(($number/$i))
echo $i
array[$i-2]=$i
done
done
echo ${array[@]}
