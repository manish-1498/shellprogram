#!/bin/bash -x
harmonic=1
read n
for (( i=2; i<=n; i++ ))
do
harmonic=$harmonic+$((1/$i))
done
echo harmonic

