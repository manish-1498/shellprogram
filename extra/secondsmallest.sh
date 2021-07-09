#!/bin/bash -x
declare -a array
for (( i=0; i<10; i++ ))
do
x=$((RANDOM%100))
array[$i]="$x"
done
echo ${array[@]}
smallest=0
secondsmallest=0
if [ ${array[0]} -lt ${array[1]} ]
then
smallest=${array[0]}
secondsmallest=${array[1]}
else
smallest=${array[1]}
secondsmallest=${array[0]}
fi
for (( i=2; i<${#array[@]}; i++ ))
do
if [ ${array[$i]} -lt $smallest ]
then
secondsmallest=$smallest
smallest=${array[$i]}
elif [ ${array[$i]} -le $secondsmallest ]
then
secondsmallest=${array[$i]}
fi
done
echo "aecondsmallest=$secondsmallest"
