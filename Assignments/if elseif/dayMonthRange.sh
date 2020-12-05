#!/bin/bash -x

#Write a program that takes day and month from the command line and prints true if
#day of month is between March 20 and June 20, false otherwise.


read -p "Enter day:" day
read -p "Enter month:" month

if [[ $month -eq 3 && $day -ge 20 && $day -le 31 ]]
then
	echo "True"
elif [[ $month -eq 4 && $day -ge 1 && $day -le 30 ]]
then
	echo "True"
elif [[ $month -eq 5 && $day -ge 1 && $day -le 31 ]]
then
	echo "True"
elif [[ $month -eq 6 && $day -ge 1 && $day -le 20 ]]
then
	echo "True"
else
	echo "False"
fi
