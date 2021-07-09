#!/bin/bash -x
read startingrange
read endingrange
i=2
for (( $startingrange; $startingrange<=$endingrange; startingrange=$(($startingrange+1)) ))
do
x=$(($startingrange%$i))
if [ $x -eq 1 ]
then
echo "$startingrange is a prime"
fi
done
