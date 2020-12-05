#!/bin/bash 
 

function reverseNumber() {
	local number=$1
	local reverseNumber=0
	while [ $number -ne 0 ]
	do
		remainder=$(( number % 10 ))
		reverseNumber=$(( reverseNumber * 10 + remainder ))
		number=$(( number / 10 ))
	done
	echo $reverseNumber 
}

function chkPrime() {
	local number=$1
	TRUE=1
	FALSE=0
	counter=0

	for (( i=2; i<=$(( number / 2 )); i++ ))
	do
		if [ $(( number % i )) -eq 0 ]
		then
			(( counter++ ))
		fi
	done

	if [[ $counter == 0 && $number != 1 ]]
	then
		echo "$number is Prime" >&2 
		echo $TRUE
	else
		echo "$number is not Prime" >&2
		echo $FALSE
	fi
}

read -p "Enter Number: " number
isPrime=$( chkPrime $number )
if [ $isPrime -eq 1 ]
then
	reverseNumber=$( reverseNumber $number )
	chkPrime $reverseNumber
fi

sleep 1
