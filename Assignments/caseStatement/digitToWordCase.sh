#!/bin/bash -x

#Read a single digit number and write the number in word using Case

zero=0
one=1
two=2
three=3
four=4
five=5
six=6
seven=7
eight=8
nine=9

read -p "Enter Single Digit Number: " number

case $number in
	$zero)
		echo "ZERO";;
	$one)
		echo "ONE";;
	$two)
		echo "TWO";;
	$three)
		echo "THREE";;
	$four)
		echo "FOUR";;
	$five)
		echo "FIVE";;
	$six)
		echo "SIX";;
	$seven)
		echo "SEVEN";;
	$eight)
		echo "EIGHT";;
	$nine)
		echo "NINE";;
	*)
		echo "YOUR NUMBER SHOULD BE ONE DIGIT";;
esac





































