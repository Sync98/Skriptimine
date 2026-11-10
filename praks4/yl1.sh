#!/bin/bash

# arvukontroll

echo -n "Sisesta suvaline arv:"
read arv
#arvuta jaak 2ga
jaak=$(( $arv % 2 ))
if [ $jaak  -eq 0 ]
then
	echo "$arv on paaris"
else
	echo "$arv on paaritu"
fi

