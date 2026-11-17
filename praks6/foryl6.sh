#!/bin/bash
# Loob kolm tekstifaili ja kuvab jooksvas kataloogis olevate tekstifailide nimed.

touch a.txt b.txt c.txt || exit 1

for fail in *.txt; do
    if [[ -f "$fail" ]]; then
        echo "$fail"
    fi
done
