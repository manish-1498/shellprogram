#!/bin/bash -x
read numof
i=1
max=0
min=0
while [ $i -le $numof ]
do
x=$((RANDOM%10))
if [ $x -gt $max ]
	then
		max=$x
else
echo max=$max
fi
i=$(($i+1))
done


