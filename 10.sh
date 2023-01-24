#!/bin/bash
#ivesti ! tiek keik n

echo iveskite skaiciu n
read n
string=""
for ((i=0; i<n; i++ ))
do
    string+="!"
done
echo $string
    

read close