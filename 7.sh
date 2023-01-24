#!/bin/bash

echo iveskite skaiciu a
read a
echo iveskite skaiciu b
read b

# >
if [ $a -gt $b ]
then
    diff=$(( a - b ))
    echo Įvestų skaičių skirutmas lygi $diff
else 
    if [ $a -lt $b ]
    then
        sum=$(( a + b ))
        echo Įvestų skaičių suma $sum
    else
        echo Du įvesti skaičiai a ir b yra lygūs
    fi
fi
read close