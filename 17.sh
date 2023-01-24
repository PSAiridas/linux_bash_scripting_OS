#!/bin/bash
#trikampio arba staciakampio plotas, naudojant funkcijas
# read -p "Enter a number: " number
# # square_root=$(echo "$number" | awk '{print sqrt($1)}')
# # echo "Square Root of $number is $square_root"

s_90 () {
   s=$(( $1 * $2 / 2 ))
   echo $s
}
# 3, 4, sqrt5 s=6
s_abc () {
    p=$(( ($1 + $2 + $3) / 2)) # pusmetris
    s=$(( $p * ($p - $1) * ($p - $2) * ($p - $3) )) # plotas kvadratu
    ss=$( echo "$s" | awk '{print sqrt($s)}') # plotas, istraukti sakni
    echo $ss
} 

echo 1. trikampio plotas a, b, c
echo 2. staciakampio plotas a , b ar a, h
echo pasirinkite kaip skaiciuoti
read menu


case $menu in 
    1)
        echo iveskite trikampio krastines a, b, c 
        read a b c
        s_abc $a $b $c
    ;;
    2)
        echo iveskite trikampio krastines a ir b/h
        read a b
        s_90 $a $b
    ;;
    *)
        echo unknow :D
    ;;
esac


read close
