#!/bin/bash -x

#Enter 3 Numbers do following arithmetic operation and find the one that
#is maximum and minimum
#1. a + b * c 3. c + a / b
#2. a % b + c 4. a * b + c





read -p "Enter First Number: " number1
read -p "Enter Second Number: " number2
read -p "Enter Third Number: " number3

result1=$(( number1 + number2 * number3 ))
result2=$(( number1 % number2 + number3 ))
result3=$(( number3 + number1 / number2 ))
result4=$(( number1 * number2 + number3 ))

#Checking maximum value between all the expressions

if [[ $result1 -ge $result2 && $result1 -ge $result3 && $result1 -ge $result4 ]]
then
   echo "a+b*c expression has maximum value"
elif [[ $result2 -ge $result1 && $result2 -ge $result3 && $result2 -ge $result4 ]]
then
   echo "a%b+c expression has maximum value"
elif [[ $result3 -ge $result1 && $result3 -ge $result2 && $result3 -ge $result4 ]]
then
   echo "c+a/b expression has maximum value"
else
   echo "a*b+c expression has maximum value"
fi

#Checking minimum value between all the expressions

if [[ $result1 -le $result2 && $result1 -le $result3 && $result1 -le $result4 ]]
then
   echo "a+b*c expression has minimum value"
elif [[ $result2 -le $result1 && $result2 -le $result3 && $result2 -le $result4 ]]
then
   echo "a%b+c expression has minimum value"
elif [[ $result3 -le $result1 && $result3 -le $result2 && $result3 -le $result4 ]]
then
   echo "c+a/b expression has minimum value"
else
   echo "a*b+c expression has minimum value"
fi
