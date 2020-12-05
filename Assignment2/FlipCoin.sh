#!/bin/bash 

# VARIABLES
isTail=0
isHead=1
maxWin=11
tailCount=0
headCount=0
randomFlip=0

# COUNTING THE HEAD AND TAILS COUNT
while [[ tailCount -lt maxWin && headCount -lt maxWin ]] 
do
	randomFlip=$(( RANDOM % 2 ))
	case $randomFlip in
		$isTail)
			(( tailCount++ ))
			;;
		$isHead)
			(( headCount++ ))
			;;
	esac
done

# CHECKING WHO WINS FIRST
if [ $tailCount -gt $headCount ]
then
	echo "Tail wins $tailCount and Head count is $headCount"
else
	echo "Head wins $headCount and Tail count is $tailCount"
fi

sleep 1
