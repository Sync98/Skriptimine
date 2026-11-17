#!/bin/bash
# Katkestab mõlemad tsüklid, kui sisemine loendur jõuab 5-ni.

for valimine in {1..3}; do
    for sisemine in {1..10}; do
        if [[ "$sisemine" -eq 5 ]]; then
            break 2
        fi

        echo "Välimine = $valimine, sisemine = $sisemine"
    done
done
