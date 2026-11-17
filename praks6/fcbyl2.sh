#!/bin/bash
# Küsib täisarve, kuni kasutaja sisestab nulli.

for ((;;)); do
    read -r -p "Sisesta täisarv: " arv || break

    if [[ ! "$arv" =~ ^[+-]?[0-9]+$ ]]; then
        echo "Palun sisesta täisarv."
        continue
    fi

    if [[ "$arv" =~ ^[+-]?0+$ ]]; then
        break
    fi

    if [[ "$arv" == -* ]]; then
        continue
    fi

    echo "$arv"
done
