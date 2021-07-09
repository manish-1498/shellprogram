#!/bin/bash -x
cash=100
bets=0
win=0
while [ $cash -ne 0 ] && [ $cash -le 200 ]
do
if [ $((RANDOM%2)) -eq 1 ]
then
bets=$(($bets+1))
win=$(($win+1))
cash=$(($cash+1))
else
bets=$(($bets+1))
fi
done

