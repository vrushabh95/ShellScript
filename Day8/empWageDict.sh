#!/bin/bash 

#CONSTANTS
IS_FULL_TIME=1
IS_PART_TIME=2
salary=0
RATE_PER_HR=20
MAX_WORKING_DAYS=22;
MAX_WORKING_HRS=100;

#VARIABLES
totalWorkingDays=0;
totalWorkingHrs=0;

declare -A dailyWageDic
function getWorkingHrs()
{
	
	((totalWorkingDays++))
	empCheck=$((RANDOM%3))

	case $empCheck in
        $IS_FULL_TIME)
        empHrs=8
        ;;
        $IS_PART_TIME)
        empHrs=4
        ;;
        *)
        empHrs=0
        ;;
esac
     	echo $empHrs
}
while [[ $totalWorkingHrs -lt $MAX_WORKING_HRS && $totlaWorkingDays -lt $MAX_WORKING_DAYS ]]
do
	((totalWorkingDays++))
	empCheck=$((RANDOM%3))
	empHrs="$( getWorkingHrs $empCheck)"
	dailyWage=$(( $empHrs*$RATE_PER_HR ))
	dailyWageArray["Day"$totalWorkingDays]=$dailyWage
	
	totalWorkingHrs=$(($totalWorkingHrs+$empHrs))
done
	totalSalary=$(($totalWorkingHrs*$RATE_PER_HR))
echo "Dictionary elements" ${dailyWageArray[@]}
echo "keys" ${!dailyWageArray[@]}

	echo "Employee Wage per month:" $totalSalary
