#!/bin/bash

echo failo pavadinimas
read file
touch $file
string='Studentu '
sum=0
for student in 1 2 3 
do 
    echo iveskite studento varda
    read studentname
    string+="$studentname, "
    echo iverskite studento pazymi
    read mark
    sum=$(( sum + mark))
done
sum=$((sum / 3))
echo "$string $sum," > $file












read close
rm $file