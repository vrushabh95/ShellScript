#!/bin/bash
 


for (( i=0; i<10; i++ ))
do
	numbers[counter++]=$(( RANDOM % 20 - 10 ))
done

echo ${numbers[@]}

for (( j=0; j<$((10-2)) ; j++ ))
do
	if [[ $(( ${numbers[$j]} + ${numbers[$((j+1))]} + ${numbers[$((j+2))]} )) -eq 0 ]]
	then
		echo "${numbers[$j]} + ${numbers[$((j+1))]} + ${numbers[$((j+2))]}"
	fi
done

sleep 1
