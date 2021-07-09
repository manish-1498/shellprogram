#!/bin/bash -x
echo 1ft=12inches
read number "as" inches
feet=$(($number/12))
echo $number inch = $feet feet



