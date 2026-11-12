#!/bin/bash

# Loeb süsteemist kellatunni ja tervitab kasutajat nimepidi.
aeg=$(date +%H)
kasutaja=$(whoami)

if [ "$aeg" -ge 22 ] || [ "$aeg" -lt 6 ]; then
    echo "Head ööd, $kasutaja!"
elif [ "$aeg" -lt 12 ]; then
    echo "Tere hommikust, $kasutaja!"
elif [ "$aeg" -lt 18 ]; then
    echo "Tere päevast, $kasutaja!"
else
    echo "Tere õhtust, $kasutaja!"
fi
