#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Käivita see skript koos arvuga mida kontroll"
else
    arv=$1
    jaak=$(( $arv % 2 ))
    if [ $jaak -eq 0 ]; then
        echo "$arv on paaris"
    else
        echo "$arv on paaritu"
    fi
fi
