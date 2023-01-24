#!/bin/bash
#jeigu failas exist ir isvesdamas failo eiluciu skaicius

echo iveskite failo pavadinima
read file

if [ -f $file ]
then
    cat $file | wc -l
    wc -l < $file
    # echo failo eiluciu skaicius
else
    echo failas neegzistuoja
fi

read close