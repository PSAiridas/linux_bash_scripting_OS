# patikrinti ar skaicia yra intervale, kiek skaiciu yra, tarp kurio intervalo yra


dialog --inputbox "how many numbers " 0 0 2>t.txt
r1=$?

case $r1 in
        0) array_length=`cat t.txt`
        dialog --inputbox "Enter a" 0 0 2>t.txt
        r2=$?
        case $r2 in
                0) a=`cat t.txt` ;;
                1) exit ;;
                255) exit ;;
        esac
        dialog --inputbox "enter B" 0 0 2>t.txt
        r3=$?
        case $r3 in
                0) b=`cat t.txt` ;;
                1) exit ;;
                255) exit ;;
        esac
        #echo "$a, $b, $array_length"
        array=()
        k=0
        for ((i=0; i<$array_length; i++))
        do
                dialog --inputbox "enter Number" 0 0 2>t.txt
                r4=$?
                case $r4 in
                        0) sk=`cat t.txt`
                        if (( ($sk > $a) && ($sk < $b) ))
                        then
                                array[$k]=$sk
                                k+=1
                        fi
                        ;;
                        1) exit ;;
                        255) exit ;;
                 esac
        done
        echo "${array[@]}">t.txt
        answer=`cat t.txt`
        dialog --infobox "Atsakymas yra: $answer" 0 0
        ;;
        1) exit ;;
        255) exit ;;
esac

rm -f t.txt


