#!/bin/bash -x
read numof
i=1
max=0
min=0
read numbers
if [ $i -le $numof ] && [ $numbers -gt $max ]
        then
max=$numbers
else
echo max=$max
i=$(($i+1))
fi
