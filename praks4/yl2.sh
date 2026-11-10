#!/bin/bash
# Arvutab täis busside arvu ja ülejäänud reisijate arvu.

read -r -p "Mitu reisijat on grupis? " reisijad
read -r -p "Mitu kohta on bussis? " kohad

if ! [[ "$reisijad" =~ ^[0-9]+$ && "$kohad" =~ ^[0-9]+$ ]]; then
    echo "Viga: sisesta täisarvud."
    exit 1
fi

reisijad=$((10#$reisijad))
kohad=$((10#$kohad))

if [ "$kohad" -eq 0 ]; then
    echo "Viga: bussis peab olema vähemalt üks koht."
    exit 1
fi

bussid=$((reisijad / kohad))
maha=$((reisijad % kohad))

echo "Täielikult täidetud busse: $bussid"
echo "Maha jäänud inimesi: $maha"
