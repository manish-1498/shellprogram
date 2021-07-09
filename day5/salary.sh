#!/bin/bash -x
ispresent=1
emprateperhr=20
empworkinghr=8
randomcheck=$((RANDOM%2))
if [ $ispresent -eq $randomcheck ]
then
echo "emp is present"
salary=$(($emprateperhr*$empworkinghr))
else
echo "emp is absent"
salary=0
fi
