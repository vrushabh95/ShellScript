#!/bin/bash -x

read -p "Enter a number:" n
harmonic=0
for (( i=1; i<=n; i++ ))
do 
	harmonic=`awk 'BEGIN{ printf( '$harmonic' + (1/'$i'))}'`
done
echo $harmonic
