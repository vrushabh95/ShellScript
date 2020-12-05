

#!/bin/bash -x

isHead=1
isTail=0
coinFlip=$(( RANDOM % 2 ))

if [ $coinFlip -eq $isHead ]
then
	echo "Heads"
else
	echo "Tails"
fi
