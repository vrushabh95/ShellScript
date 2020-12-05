#!/bin/bash


clear

echo "----------MIND READING----------"
echo "Think of a Number between 1 to 100"

# CONSTANTS
LESS_THAN=0
GREATER_THAN=1
EQUAL=2

# VARIABLES
maxRange=101
minRange=1
userNumber=0
userChoice=0

while [ $userChoice -lt 2 ]
do
	userNumber=$(( (maxRange + minRange) / 2 ))
	
	echo "Is your number is $userNumber"
	echo "Enter 0 if number is less than your Number"
	echo "Enter 1 if number is greater than your Number"
	echo "Enter 2 if number is equal to your Number"
	
	read -p "Enter Choice (0-2) : " userChoice
	
	case $userChoice in
		$LESS_THAN)
			maxRange=$userNumber
			minRange=$minRange
			;;
		$GREATER_THAN)
			maxRange=$maxRange
			minRange=$userNumber
			;;
		$EQUAL)
			echo "I GUESSED YOUR NUMBER"
			;;
	esac
done

sleep 1
