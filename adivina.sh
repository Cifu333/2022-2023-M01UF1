#!/bin/bash

NUMERO_RANDOM=$(( $RANDOM % 100 +1 ))

echo $NUMERO_RANDOM

NUM=0

while [[ $NUM -ne $NUMERO_RANDOM ]]
do
	echo "adivina el numero del 1 al 100"

	read NUM

	if [[ "$NUM" -gt $NUMERO_RANDOM ]] 
	then
	echo "Es menor"
	elif [[ $NUM -lt $NUMERO_RANDOM ]]
	then
	echo "Es mayor"
	else
	echo "Son iguales"
	fi
done

