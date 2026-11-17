#!/bin/bash
# Jagab stringi semikoolonite kohalt ja väljastab sõnad eraldi ridadel.

tekst="koer;kass;hiir"
IFS=';'

for sona in $tekst; do
    echo "$sona"
done
