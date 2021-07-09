#!/bin/bash -x
echo “Enter the number of elements:”
read n
largest=0
secondlargest=0
for(( i=1 ;i<=n; i++ ))
do
echo “Enter the number:”
read no
if [ $no -gt $largest ]
then
secondlargest=$largest
largest=$no
elif [ $no -gt $secondlargest ]
then
secondlargest=$no
fi
done
echo “The second highest number is: 	$secondlargest”
