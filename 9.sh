#!/bin/bash
#jeigu failas exist ir isvesdamas failo eiluciu skaicius

echo 1.Suma
echo 2. sandauga
echo 3. skirtuma
echo iveskite punkta
read p 
read -p "iverskite skaiciu a: " a
read -p "iverskite skaiciu b: " b
case $p in 
    1)
        c=$(($a + $b))
        echo $c
    ;;
    2)
        c=$(($a * $b))
        echo $c
    ;;
    3)
        c=$(($a - $b))
        echo $c
    ;;
    *)
    ;;
esac

read close