#!/bin/bash
#kartoti kol nebus nulis, while loop, uzdaryti kai bus 0; ir isspausdinti atvirsktine tvarka

x=1
k=0
unset array
while [ $x -ne 0 ]
do
    echo iveskite skaiciu x
    read x
    array[k]=$x
    k+=1
done
# /pasalinti 0
array2=(${array[@]/0/})

# $* merge to one argument, $@ seperate elemento
# echo "${array[@]}"
echo "${array2[*]}"

n=${#array2[*]}
unset array
for (( i=0; i<=n; i++))
do
    array[i]=${array2[$n-$i]}
done
echo "${array[@]}"
read close