#!/bin/bash -x
read temperature
read press_1_for_farehniet_or_2_for_celcius_conversion
function temp
case $press_1_for_farehniet_or_2_for_celcius_conversion in
1)
if [ $temperature -ge 0 ] && [ $temperature -le 100 ]
then
temperature_in_far=$((((9*$temperature)/5)+32))
echo $temperature_in_far
exit 0
else
echo "sorry wrong temperature input for conversion"
fi
;;
2)
if [ $temperature -ge 32 ] && [ $temperature -le 212 ]
then
temperature_in_cel=$((((5*$temperature)/9)-32))
echo $temperature_in_cel
exit 0
else
echo "sorry wrong temperature input for conversion"
fi
;;
*)
echo "wrong input"
;;
esac
temp $temperature
