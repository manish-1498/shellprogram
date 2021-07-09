#!/bin/bash -x
declare -a indexed_array
for (( i=1;i<=5;i++))
do
read -p "enter element": value
indexed_array[$i]="$value"
done
echo ${indexed_array[@]}
for i in ${indexed_array[@]}
do
echo $i
sum=$((sum+$i))
done
echo $sum
