#!/bin/bash -x
read length "as" feet
read breadth "as" feet
area=$(($length*$breadth))
areainmeter=$((($area*100)/1076))
echo area in feetsq=$areainmeter in metersq




