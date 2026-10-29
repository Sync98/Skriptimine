#!/bin/bash
# Arvutab kandiku ja küpsiste mõõtude, kihtide ning pakendi suuruse järgi
# küpsisetordi jaoks ostetavate küpsisepakkide arvu, kasutades käsku expr.
# Mõõdud sisestatakse positiivsete täisarvudena sentimeetrites.
# Küpsised asetatakse samas suunas ridadesse; servas võib neid lõigata.
# Lõikamisjääke järgmiste ridade täitmiseks ei arvestata.

loe_arv() {
    local arv
    while true; do
        read -r -p "$2" arv || exit 1
        if [[ "$arv" =~ ^[1-9][0-9]*$ ]]; then
            printf -v "$1" '%s' "$arv"
            return
        fi
        echo "Sisesta positiivne täisarv (näiteks 5)."
    done
}

echo "Küpsisetordi kalkulaator. Mõõdud sisesta täissentimeetrites."
loe_arv pikkus "Kandiku pikkus (cm): "
loe_arv laius "Kandiku laius (cm): "
loe_arv kypsise_pikkus "Küpsise pikkus (cm): "
loe_arv kypsise_laius "Küpsise laius (cm): "
loe_arv kihid "Kihtide arv: "
loe_arv pakis "Küpsiste arv ühes pakis: "

# Täisarvuline jagamine ümardatakse üles valemiga (a + b - 1) / b.
pikisuunas=$(expr \( "$pikkus" + "$kypsise_pikkus" - 1 \) / "$kypsise_pikkus")
laiuti=$(expr \( "$laius" + "$kypsise_laius" - 1 \) / "$kypsise_laius")
yhes_kihis=$(expr "$pikisuunas" \* "$laiuti")
kokku=$(expr "$yhes_kihis" \* "$kihid")
pakke=$(expr \( "$kokku" + "$pakis" - 1 \) / "$pakis")

echo "Ühes kihis on vaja $yhes_kihis küpsist."
echo "Kokku on vaja $kokku küpsist."
echo "Poest tuleb osta $pakke pakki küpsiseid."
