#!/bin/bash -x
x=$((RANDOM%2))
if [ $x -eq 1 ]
then
echo heads
else
echo tails
fi

