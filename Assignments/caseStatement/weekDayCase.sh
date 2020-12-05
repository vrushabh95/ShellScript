#!/bin/bash -x

#Read a Number and Display the week day (Sunday, Monday,...)

sunday=0
monday=1
tuesday=2
wednesday=3
thursday=4
friday=5
saturday=6

read -p "Enter Day Number(0-6): " dayNumber

case $dayNumber in
	$sunday)
		echo "SUNDAY";;
	$monday)
		echo "MONDAY";;
	$tuesday)
		echo "TUESDAY";;
	$wednesday)
		echo "WEDNESDAY";;
	$thursday)
		echo "THURSDAY";;
	$friday)
		echo "FRIDAY";;
	$saturday)
		echo "SATURDAY";;
	*)
		echo "INVALID INPUT";;
esac
