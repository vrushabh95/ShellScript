#!/bin/bash -x 


read -p "Enter Number: " number

for (( i=2; i<=$number; i++ ))
do
	for (( ; $(( number % i )) == 0; ))
	do
		echo -n "$i "
		number=$(( number / i ))
	done
done

sleep 1
