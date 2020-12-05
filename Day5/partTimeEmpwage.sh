#!/bin/bash -x

randomCheck=$((RANDOM%2))
isFullTime=1
isPartTime=2
ratePerHr=20
salary=0
if [ $isFullTime -eq $randomCheck ]
   then
		numOfWorkingHrs=8
elif [ $isPartTime -eq $randomCheck ]
then
		numOfWorkingHrs=4
else
               numOfWorkingHrs=0
fi

salary=$(( $raterPerHr*$numOfWorkingHrs ))
echo "Employee wage:" $salary


                salary=0
fi
     echo "Employee Wage:" $salary


