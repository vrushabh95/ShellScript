#!/bin/bash -x

randomCheck=$((RANDOM%2))
isPresent=1
ratePerHr=20
numOfWorkingHrs=8

if [ $isPresent -eq $randomCheck ]
   then
		salary=$(( $ratePerHr*$numOfWorkingHrs ))

     
else
       		salary=0
fi
     echo "Employee Wage:" $salary

