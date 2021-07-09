#!/bin/bash -x
declare -A array
i=0
while [ $i -le 10 ]
do
date -d "$((RANDOM%1+1992))-$((RANDOM%12+1))-$((RANDOM%28+1))" '+%d-%m-%Y'
array[$i]="$date"
i=$(($i+1))
done
echo ${array[@]}
