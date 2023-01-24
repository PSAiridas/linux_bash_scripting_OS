#!/bin/bash

echo iveskite failo pavadinima
read file
touch $file

echo iveskite skaiciu a
read a
echo iveskite skaiciu b
read b
c=$(( a/b + a%b - 3))

echo "Atsakymas: $c"
echo "$c" > $file


read close
rm $file