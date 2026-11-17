#!/bin/bash
# Katkestab loendamise, kui arv jõuab 7-ni.

for arv in {1..10}; do
    if [[ "$arv" -eq 7 ]]; then
        break
    fi

    echo "$arv"
done
