#!/bin/bash 

counter=0
Fruits[((counter++))]=Apple
Fruits[((counter++))]=Orange
Fruits[((counter++))]=Mango

echo "All elemnts" ${Fruits[@]}
echo "Index value" ${!Fruits[@]}
