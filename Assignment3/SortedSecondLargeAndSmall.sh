#!/bin/bash 

clear

for (( i=0; i<10; i++ ))
do
	randomNumbers[$i]=$(( RANDOM % 900 + 100 ))
done

echo ${randomNumbers[@]}

for (( j=0; j<10; j++ ))
do
	for (( k=0; k<10; k++ ))
	do
		if [[ ${randomNumbers[$k]} -gt ${randomNumbers[$j]} ]]
		then
			temp=${randomNumbers[$j]}
			randomNumbers[$j]=${randomNumbers[$k]}
			randomNumbers[$k]=$temp
		fi
	done
done

echo "Sorted Array: ${randomNumbers[@]}"
echo "${randomNumbers[8]} is Second largest in an Array"
echo "${randomNumbers[1]} is Second smallest in an Array"

sleep 1

