#! /bin/bash -x
declare -A dieroll
dieroll[1]=0                           #initially declare all the values as 0
dieroll[2]=0
dieroll[3]=0
dieroll[4]=0
dieroll[5]=0
dieroll[6]=0
while [ true ]
do
dieValue=$(((RANDOM%6)+1))
dieroll[$dieValue]=$(( ${dieroll[$dieValue]} + 1 ))
if [ ${dieroll[$dieValue]} -eq 10 ]    #calculates values which reached 10times
then
	indexwithmaxtime=$dieValue
        break
fi
done
valuewithmintime=${dieroll[1]}         #let value with min times be die1
for (( i=1; i<=${#dieroll[@]}; i++))
do
if [ ${dieroll[$i]} -lt $valuewithmintime ]
then
indexwithmintime=$dieroll[$i]
fi
done
echo "Die Values ${!dieroll[@]}"
echo "number of times that each die took ${dieroll[@]}"
echo "Most occured die value is $indexwithmaxtime"
echo "min index is $indexwithmintime"
