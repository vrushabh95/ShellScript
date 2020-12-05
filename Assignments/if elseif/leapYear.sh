#!/bin/bash -x

#Write a program that takes a year as input and outputs the Year is a Leap Year or not
#a Leap Year. A Leap Year checks for 4 Digit Number, Divisible by 4 and not 100 unless
#divisible by 400.

read -p "Enter Year: " year

if [[ $year -ge 1000 && $year -lt 10000 ]]
then
	if [[ ( $(( year % 4 )) -eq 0 && $(( year % 100 )) -ne 0 ) || $(( year % 400 )) -eq 0 ]]
	then
	echo "Leap Year"
	else
	echo "Not Leap Year"
	fi
else
	echo "Invalid Year"
fi
