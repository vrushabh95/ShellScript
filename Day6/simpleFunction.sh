#!/bin/bash -x

function simpleFunction()
{
	
	echo  $1
	
}
result="$( simpleFunction $((RANDOM%2)))"
if [ $result -eq 1 ]
then
	echo "Employee is present"
else
 	echo "Employee is absent"
fi
