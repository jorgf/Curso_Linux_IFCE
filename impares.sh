#!/bin/bash

LIMITE=$1

for ((i=0; i<=$LIMITE; i++))
do
	RES=$[$i%2]
	if [ $RES -ne 0 ]
	then
		echo -ne "$i "
	fi
done	
echo " "

