#! /bin/bash -x
isTail=0
isHead=1
maxWin=11
tailCount=0
headCount=0
randomFlip=0

while [[ $tailCount -lt $maxWin && $headCount -lt $maxWin ]]
do
   randomFlip=$(( RANDOM % 2 ))
case $randomFlip in
$isTail)
(( taiCount++ ));;
$isHead)
(( headCount++ ));;
esac
done

if [ $tailCount -gt $headCount ]
then
    echo "Tail wins $tailCount and Head count is $headCount"
else
    echo "Head wins $headCount and Tail count is $tailCount"
fi
