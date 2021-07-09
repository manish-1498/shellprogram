#!/bin/bash -x
read a
read b
read c
w=$(($a+$b*$c))
x=$(($c+$a/$b))
y=$(($a%$b+$c))
z=$(($a*$b+$c))
if [ $w -gt $x ] && [ $w -gt $y ] && [ $w -gt $z ]
then
	echo $w is max
elif [ $x -gt $w ] && [ $x -gt $y ] && [ $x -gt $z ]
	then
	echo max is$x
elif [ $y -gt $w ] && [ $y -gt $x ] && [ $y -gt $z ]
	then
	echo max is $y
elif [ $z -gt $w ] && [ $z -gt $x ] && [ $z -gt $y ]
	then
	echo max is $z
else
echo wrong
fi
