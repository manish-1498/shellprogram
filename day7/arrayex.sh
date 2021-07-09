#!/bin/bash -x
declare -a indexed_array
read -p "enter first number": value
indexed_array[1]="$value"
echo ${indexed_array[@]}
echo ${!indexed_array[@]}
