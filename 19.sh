#!/bin/bash
# intervalaas in kas kelinta nari spausidinti, ivestin naudojant n0, n1, n2 su dialog langu

dialog --inputbox "enter number n1" 0 0 2>t.txt
c1=$?
case $c1 in
        0)
        n1=`cat t.txt`
        dialog --inputbox "enter number n2" 0 0 2>t.txt
        c2=$?
        case $c2 in
                0)
                n2=`cat t.txt`
                dialog --inputbox "enter kelintas narys n0" 0 0 2>t.txt
                c3=$?
                case $c3 in
                        0) n0=`cat t.txt`
                        echo $n0
                        echo $n1
                        echo $n2
                        array=()
                        for ((i=$n1; i<=$n2; i+=$n0))
                        do
                                array[$i]=$i
                        done
                        echo "${array[*]}" >t.txt
                        line=`cat t.txt`
                        #line="LASLDASDASDASDasd asd asd as"
                        dialog --title "Answer:" --msgbox "$line" 0 0
                        ;;
                        1) ;;
                        255) ;;
                esac
                ;;
                1) exit ;;
                255) exit ;;
        esac
        ;;
        1)
        echo "cancel"
        exit ;;
        255) exit ;;
esac
rm -f t.txt
