#!/bin/bash -x
read n
declare -a arr
for (( i=0; i<$n; i++ ))
do
read -p "enter value": value
arr[$i]=$value
done
echo ${arr[@]}
for (( i=0; i<$(($n-2)); i++ )) #i<n-2
do
for (( j=$(($i+1)); j<$(($n-1)); j=$(($j+1)) )) #i<n-1
do
for (( k=$(($j+1)); k<$n; k=$(($k+1)) )) #i<n
do
if [  $((${arr[i]}+${arr[j]}+${arr[k]})) -eq 0 ]
then
echo "(${arr[$i]}, ${arr[$j]}, ${arr[$k]})"
else
echo sorry
fi
done
done
done
