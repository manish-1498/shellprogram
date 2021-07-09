#!/bin/bash -x
echo "Enter the number"
read n
x=$(($n%2))
if [ $x -eq 0 ]
then
echo "its not a prime.....sorry"
exit 0
else
echo "its a prime number and go for the palindrome......hurray"
fi
function primeandpalindrome
{
number=$n
reverse=0
while [ $n -gt 0 ]
do
a=$(($n % 10))
n=$(($n / 10))
reverse=$((($reverse*10)+$a))
done
echo $reverse
if [ $number -eq $reverse ] && [ $reverse%2=1 ]
then
    echo "Number is palindrome and its also a prime number"
else
    echo "Neither prime nor palindrome"
fi
}
primeandpalindrome $n
