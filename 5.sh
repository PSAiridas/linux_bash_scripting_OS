#!/bin/bash

echo iveskite skaiciu a
read a
echo iveskite skaiciu b
read b
# ==
if [ $a -eq $b ]
then
    echo Įvesti skaičiai lygūs
else 
    echo Įvesti skaičiai nėra lygūs
fi

read close