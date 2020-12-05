#! /bin/bash

#Unit Conversion problems.


#a> 1 ft= 12 inch then find 42 inch = ?

read -p "Enter the inches to be convert  " ip;

op=`echo "scale=2; $ip / 12" | awk`;

echo $ip is $op in ft;

#////////////////////////////////////////////////////////////////////////////////
# Rectangular Plot of 60 ft X40 ft in meters

#1 ft = 0.3048 meters
read -p "Enter the length of rectangle in ft  " l;
read -p "Enter the width of rectangle in ft  " w;
m=` echo " scale=2; $l * 0.3048 " | awk`;
echo Length in meters $m;
n=` echo " scale=2; $w * 0.3048 " | awk`;
echo Width in meters $n;
area=` echo " scale=2; $m * $n " | awk`;
echo Area of Rectangle in sq.metres is  $area;

#/////////////////////////////////////////////////////////////////////////////
# 25-rectangular plots 
 
area2=` echo " scale=2; $area * 0.000247 * 25 " | awk `
echo Area of 25-Reactangles in acres is  $area2
