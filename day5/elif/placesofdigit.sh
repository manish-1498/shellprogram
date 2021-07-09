#!/bin/bash -x
read number
unitplace=$(($number%10))
tens=$((($number/10)%10))
hundred=$((($number/100)%10))
thousand=$((($number/1000)%10))

