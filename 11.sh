#!/bin/bash
#sudeti sveikuosius skaicius nuo  1 iki n

echo iveskite skaiciu n
read n
sum=0
for ((i=1; i<n; i++ ))
do
    sum=$(( sum + i ))
done
echo $sum
    

read close