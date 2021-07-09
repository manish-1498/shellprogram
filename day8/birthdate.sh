#! /bin/bash -x
totalperson=50
months=12
for (( person=1; person<=$totalperson; person++ ))
do
    birthMonth=$(( RANDOM % months + 1 ))
    birthdays[birthMonth]="${birthdays[birthMonth]} $person,"
done
for (( month=1; month<=$months; month++ ))
do
    echo "People who have Birthday in month $month: ${birthdays[month]}"
done
