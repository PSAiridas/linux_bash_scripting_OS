#!/bin/bash

echo iveskite skaiciu a
read a
echo iveskite skaiciu b
read b
multiply=$(( a * b))
echo $multiply
# != 0
if [ $multiply -ne 0 ]
then
    echo Įvestų skaičių sandauga lygi $multiply
else 
    echo Bent vienas iš įvestų skaičių lygus 0
fi
read close