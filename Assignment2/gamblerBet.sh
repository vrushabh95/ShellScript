#!/bin/bash 
#CONSTANTS
BET_AMOUNT=1
WIN_AMOUNT=1
MONEY_GOAL=200
BROKE=0
WIN=1
LOSS=0

#VARIABLES
remainingMoney=100
timesWon=0
timesLoss=0
betCount=0

while [[ $remainingMoney -lt $MONEY_GOAL && $remainingMoney -gt $BROKE ]]
do
	gamble=$(( RANDOM % 2 ))
	(( betCount++ ))
	case $gamble in
		$WIN)
			remainingMoney=$(( remainingMoney + WIN_AMOUNT ))
			(( timesWon++ ))
			;;
		$LOSS)
			remainingMoney=$(( remainingMoney - BET_AMOUNT ))
			(( timesLoss++ ))
			;;
	esac
done

if [ $remainingMoney -ge $MONEY_GOAL ]
then
	echo "Reaches the goal of $remainingMoney"
else
	echo "You lose your 100 bucks"
fi

echo "Number of times won is $timesWon"
echo "Number of bets made is $betCount"

sleep 1
