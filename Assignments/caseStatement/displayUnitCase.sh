#!/bin/bash -x

#Read a Number 1, 10, 100, 1000, etc and display unit, ten, hundred,...

unit=1
ten=10
hundred=100
thousand=1000
tenThousand=10000

read -p "Enter Number to check its place: " number

case $number in
	$unit)
		echo "UNIT";;
	$ten)
		echo "TEN";;
	$hundred)
		echo "HUNDRED";;
	$thousand)
		echo "THOUSAND";;
	$tenThousand)
		echo "TEN THOUSAND";;
	*)
		echo "OUT OF RANGE";;
esac
