#!/bin/bash -x
declare -a array
for (( i=0; i<10; i++ ))
do
x=$((RANDOM%100))
array[$i]=$x
done
echo ${array[@]}
for (( i=0; i<9; i++ ))
do
for (( j=0; j<9; j++ ))
do
if [ ${array[$j]} -ge ${array[$j+1]} ]
then
temp=${array[$j]}
array[$j]=${array[$j+1]}
array[$j+1]=$temp
fi
done
done
echo ${array[@]}
largest=0
secondlargest=0
for(( i=0 ;i<${#array[@]}; i++ ))
do
if [ ${array[$i]} -gt $largest ]
then
secondlargest=$largest
largest=${array[$i]}
elif [ ${array[$i]} -gt $secondlargest ]
then
secondlargest=${array[i]}
fi
done
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
echo ${array[@]}
echo "second highest number is $secondlargest"
echo "second smallest number is $secondsmallest"
