#!/bin/bash

# Küsib kellatundi ja tervitab kasutajat vastavalt kellaajale.
read -r -p "Sisesta aja väärtus: " aeg

if [[ ! $aeg =~ ^([01]?[0-9]|2[0-3])$ ]]; then
    echo "Vale sisend. Sisesta täistund vahemikus 0–23."
elif [ "$aeg" -ge 22 ] || [ "$aeg" -lt 6 ]; then
    echo "Head ööd!"
elif [ "$aeg" -lt 12 ]; then
    echo "Tere hommikust!"
elif [ "$aeg" -lt 18 ]; then
    echo "Tere päevast!"
else
    echo "Tere õhtust!"
fi
