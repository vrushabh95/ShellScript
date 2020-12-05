#!/bin/bash 

frequency=( [1]=0 [2]=0 [3]=0 [4]=0 [5]=0 [6]=0 )

while [ 1 ]
do
	diceValue=$(( RANDOM % 6 + 1 ))
	frequency[$diceValue]=$(( ${frequency[$diceValue]} + 1 ))
	if [ ${frequency[$diceValue]} -eq 10 ]
	then
		maxFreq=$diceValue
		break
	fi
done

minFreq=${frequency[1]}

for freq in "${frequency[@]}"
do
	if [ $freq -lt $minFreq ]
	then
		minFreq=$freq
	fi
done

echo "Dice Values ${!frequency[@]}"
echo "Frequencies ${frequency[@]}"
echo "Most occured dice value is $maxFreq"
echo -n "Minimum occuring elements are "

for value in "${!frequency[@]}"
do
	if [ ${frequency[$value]} -eq $minFreq ]
	then
		echo  "$value"
	fi
done

sleep 1
