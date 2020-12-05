#!/bin/bash -x

#Write a program that reads 5 Random 2 Digit values , then find their
#sum and the average

n1=$(((RANDOM%90)+10));

n2=$(((RANDOM%90)+10));

n3=$(((RANDOM%90)+10));

n4=$(((RANDOM%90)+10));

n5=$(((RANDOM%90)+10));

sum=$(($n1 + $n2 + $n3 + $n3 +$n4 +$n5 ));
echo "sum of numbers is " $sum;
avg=$((( $n1 + $n2 + $n3 + $n3 +$n4 +$n5) /5));
echo "Average of numbers is " $avg;
