#!/bin/bash

# Küsib kuu numbrit ja väljastab sellele vastava aastaaja.
read -r -p "Sisesta kuu number: " kuu

if [[ ! $kuu =~ ^([1-9]|1[0-2])$ ]]; then
    echo "Viga! Sisesta kuu number vahemikus 1–12."
elif [ "$kuu" -eq 12 ] || [ "$kuu" -le 2 ]; then
    echo "Praegu on talv"
elif [ "$kuu" -le 5 ]; then
    echo "Praegu on kevad"
elif [ "$kuu" -le 8 ]; then
    echo "Praegu on suvi"
else
    echo "Praegu on sügis"
fi
