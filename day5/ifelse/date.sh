#!/bin/bash -x
read -p "date" date
read -p "month" month
if [ $month -le 6 ] && [ $date -le 20 ] && [ $month -ge 3 ] && [ $date -le 20 ]
then
echo "true"
else
echo false
fi

