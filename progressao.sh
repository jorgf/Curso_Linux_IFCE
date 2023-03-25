#!/bin/bash

INF=$1
SUP=$2
SOMA=0
echo -ne "A soma da progressão ["
while [ $INF -le $SUP ];do
	echo -ne " $INF"
	SOMA=$[ $SOMA + INF ]
	INF=$[$INF+1]
done
echo "] é $SOMA "
