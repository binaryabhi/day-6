#!/bin/bash -x
min=1000
max=1
smin=1000
smax=1
for (( i=0; i<10; i++ ))
do
num=$((RANDOM%999+100))
Array[i]=$num
if [ $num -gt $max ]
then
max=$num
fi
if [ $num -lt $min ]
then
min=$num
fi
done
for (( i=0; i<10; i++ ))
do
val=${Array[i]}
if [ $val -eq $min || $val -eq $max ]
then
continue
if [ $val -gt $smax ]
then
smax=$val
fi
if [ $val -lt $smin ]
then
smin=$val
fi
done
echo ${$val[@]}
echo "Second smallest element is : $smin | Second largest element is : $smax "

