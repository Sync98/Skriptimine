#!/bin/bash
#
# reisi korraldamine
#

# inimeste andmed
echo -n "Sisesta reisijate arv: "
read reisijad

# kohtade andmed bussis
echo -n "Sisesta kohtade arv bussis: "
read kohad

# arvutused
#
# jagame inimesed busside vahel nii, et kõik kohad bussides oleks täidetud - sellega
# saame teada, palju bussi on vaja
bussid=$(($reisijad / $kohad))

# vaatame, palju on neid, kes ei saanud koha bussides - need on üle jäänud reisijad,
# ehk jagid, kui kõik kohad on täidetud
ylejaanud=$(($reisijad % $kohad))

#
# kui on olemas ülejäänud, tuleb suurendada busside arv 1 võrra
if test $ylejaanud -gt 0
then
    # bussid muutuja vajab üledfineerimist, sellepärast ymber salvestamiseks
    # ei kasuta $ märki, aga arvutamisel juba kasutame
    bussid=$(($bussid + 1))
fi

# tulemuste väljastamine
#
echo "Kokku on vaja $bussid täisbussi"
#
# skripti lõpp
