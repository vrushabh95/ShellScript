#!/bin/bash -x

for (( counter=1; counter<=5; counter++ ))
do
  echo "index value:" $counter
for (( index=1; index<=5; index++ ))
do
  echo "index value:" $index
done
done
