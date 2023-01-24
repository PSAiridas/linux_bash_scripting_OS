#!/bin/bash
#trikampio arba staciakampio plotas, naudojant funkcijas



c_to_k () {
    a=$((27315/100 + $1))
    echo $a 
} 
c_to_f () {
    a=$(( $1 * 18/10 + 32))
    echo $a
}
read -p "iveskite laipsnius celsijumi: " c
c_to_k $c
c_to_f $c





read close
