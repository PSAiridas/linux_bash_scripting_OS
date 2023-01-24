#!/bin/bash

dialog --inputbox "iveskite skaiciu " 0 0 2>t.txt
r1=$?

case $r1 in
        0)number=`cat t.txt`
        number2=$(($number % 2))
        if [ $number2 -eq 0 ]
        then
                answer="Vartotojo vestas skaicius $number yra lyginis"
        else
                answer="Vartotojo vestas skaicius $number yra NElyginis"
        fi
        dialog --infobox "$answer" 0 0
        ;;
        1) exit ;;
        255) exit ;;
esac

rm -f t.txt

