#!/bin/bash -x
declare -a Fruits
counter=0
Fruits[ ((counter++)) ]="Apple"
Fruits[ ((counter++)) ]="Bannana"
Fruits[ ((counter++)) ]="Orange"
echo ${Fruits[@]}
unset Fruits[2]
echo ${Fruits[@]}
set Fruits[2] = "ajiw"
echo ${Fruits[@]}
