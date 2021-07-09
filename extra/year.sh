#!/bin/bash -x
read year
if [ $year%4==0 ]
then
echo leap
else
echo not
fi

