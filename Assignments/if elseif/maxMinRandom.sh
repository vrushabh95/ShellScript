
#!/bin/bash -x



number1=$(( RANDOM % 900 + 100 ))
number2=$(( RANDOM % 900 + 100 ))
number3=$(( RANDOM % 900 + 100 ))
number4=$(( RANDOM % 900 + 100 ))
number5=$(( RANDOM % 900 + 100 ))

if [[ $number1 -ge $number2 && $number1 -ge $number3 && $number1 -ge $number4 && $number1 -ge $number5 ]]
then
	echo "Maximum value is $number1"
elif [[ $number2 -ge $number1 && $number2 -ge $number3 && $number2 -ge $number4 && $number2 -ge $number5 ]]
then
   echo "Maximum value is $number2"
elif [[ $number3 -ge $number1 && $number3 -ge $number2 && $number3 -ge $number4 && $number3 -ge $number5 ]]
then
   echo "Maximum value is $number3"
elif [[ $number4 -ge $number1 && $number4 -ge $number2 && $number4 -ge $number3 && $number4 -ge $number5 ]]
then
   echo "Maximum value is $number4"
else 
   echo "Maximum value is $number5"
fi

if [[ $number1 -le $number2 && $number1 -le $number3 && $number1 -le $number4 && $number1 -le $number5 ]]
then
	echo "Minimum value is $number1"
elif [[ $number2 -le $number1 && $number2 -le $number3 && $number2 -le $number4 && $number2 -le $number5 ]]
then
   echo "Minimum value is $number2"
elif [[ $number3 -le $number1 && $number3 -le $number2 && $number3 -le $number4 && $number3 -le $number5 ]]
then
   echo "Minimum value is $number3"
elif [[ $number4 -le $number1 && $number4 -le $number2 && $number4 -le $number3 && $number4 -le $number5 ]]
then
   echo "Minimum value is $number4"
else
   echo "Minimum value is $number5"
fi
