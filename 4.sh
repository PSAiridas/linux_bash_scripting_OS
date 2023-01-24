#!/bin/bash

echo iveskite skaiciu a
read a
echo iveskite skaiciu b
read b
z=$(( a % b))
if [ $z -eq 0 ]
then
    echo Įvesti skaicius yra dalus
else 
    echo Įvesti skaičiai nėra dalus 
fi
read close
rm $file