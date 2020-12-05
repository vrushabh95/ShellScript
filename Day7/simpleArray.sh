#!/bin/bash -x

courses=(java c# python DataStructure javascript)
echo "All array elements" ${courses[@]}
echo "All array index value" ${!courses[@]}
echo "get DS based on index" ${courses[3]}
courses[10]="JQuery"
echo "All array elements" ${courses[@]}
echo "All index values" ${!courses[@]}
echo "Finding length of DataStructure" ${#courses[3]}
echo "Number of elements present in array" ${#courses[@]}
echo "Range" ${courses[@]:2:3}
courses[8]="AI"
echo "All array elements" ${courses[@]}
echo "All index values" ${!courses[@]}

