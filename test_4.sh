#!/bin/bash

dialog --title "meniu" \
--backtitle "pvz tektas" \
--menu "pasirinkti naudoti i virsu ir pacia end" 0 0 2 \
Rodyti "parodyti visu turimu failu sarasa " \
Patikrinti "patikrinti ar vartotojas turi teise" \
2>t.txt

meniu=`cat t.txt`
case $meniu in
        Rodyti) files=`ls`
                dialog --title "Sarasas: " --infobox  "$files  " 0 0
        ;;
        Patikrinti)
                dialog --title "Iveskite Failo pavadinima: " --inputbox "" 0 0 2>t.txt
                r2=$?
                case $r2 in
                        0)
                        f=`cat t.txt`
                        if [ -f "$f" ]
                        then
                                info=`ls -l $f`
                                dialog --title "Leidimai: " --infobox "$info" 0 0
                        else
                                dialog --infobox "$f failo Nera" 0 0
                        fi
                        ;;
                        1) exit ;;
                        255) exit ;;
                esac
        ;;
esac

rm -f t.txt
