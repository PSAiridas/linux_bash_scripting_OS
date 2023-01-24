#!/bin/bash
#iveskite kiek skaiciu yra n, ir tada tuos skaicius sudeti

echo iveskite kiek skaiciu yra, n
read n
sum=1
for ((i=1; i<n; i++ ))
do
    sum=$(( sum * i ))
done
echo $sum
    

read close