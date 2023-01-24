#!/bin/bash
#iveskite studentu skaiciu ir ju pazymius saugoti masyve/array, ir juos isspausdinti

echo iveskite studentu skaiciu n
read n

for ((i=0; i<n; i++ ))
do
    echo iveskite studento varda
    read name
    Vardai[i]=$name
    echo iveskite studento mark
    read mark
    
    Marks[i]=$mark
done


# echo "${#Vardai[@]}" ?????????????
# $* merge to one argument, $@ seperate elemento
echo "${Vardai[*]}"
echo "${Marks[@]}"
    

read close