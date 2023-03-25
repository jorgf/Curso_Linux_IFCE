#!/bin/bash

echo "Digite um número: "
read NUM

echo "----TABUADA DO {$NUM}----"
for((i=1; i<=10; i++))
do
	echo "$i x $NUM = $[$i * $NUM] "
done
