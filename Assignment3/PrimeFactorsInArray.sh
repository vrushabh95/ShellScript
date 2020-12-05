#!/bin/bash -x
 

clear

read -p "Enter Number: " number

for (( i=2; i<=$number; i++ ))
do
	while (( $(( number % i )) == 0 ))
	do
		primeFactors[k++]=$i
		number=$(( number / i ))
	done
done

echo ${!primeFactors[@]}
echo ${primeFactors[@]}

sleep 1
