#!/bin/bash

# Küsib kasutaja vanust ja väljastab vanuserühma.
read -r -p "Sisesta (oma) vanus: " vanus

if [[ ! $vanus =~ ^[0-9]+$ ]]; then
    echo "Viga! Sisesta mittenegatiivne täisarv."
elif [ "$vanus" -lt 11 ]; then
    echo "Oled laps"
elif [ "$vanus" -lt 18 ]; then
    echo "Oled nooruk"
elif [ "$vanus" -lt 63 ]; then
    echo "Oled täiskasvanu"
else
    echo "Oled senjoor"
fi
