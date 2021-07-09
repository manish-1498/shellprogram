#!/bin/bash -x
read number
for (( i=2; i<$number; i++ ))
do
x=$((number%$i))
if [ $x -eq 1 ]
then
echo "its a prime"
exit 0
fi
done
echo "not a prime"
