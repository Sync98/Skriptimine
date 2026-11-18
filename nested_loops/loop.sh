#!/bin/bash

outer=(1 2 3 4 5)
inner=(a b c d e)

for i in ${outer[@]}
do
	for j in ${inner[@]}
	do
		echo "$i$j"
	done
done
