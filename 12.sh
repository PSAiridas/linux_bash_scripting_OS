#!/bin/bash
#iveskite kiek skaiciu yra n, ir tada tuos skaicius sudeti

echo iveskite kiek skaiciu yra, n
read n
sum=0
for ((i=0; i<n; i++ ))
do
    echo iveskite skaiciu x
    read x
    sum=$(( sum + x ))
done
echo $sum
    

read close