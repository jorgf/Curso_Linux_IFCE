#!/bin/bash

NOTA1=$1
NOTA2=$2
NOTA3=$3
NOTA4=$4

SOMA=$((NOTA1+NOTA2+NOTA3+NOTA4))
MEDIA=$((SOMA/4));

echo "Foram digitadas as notas: {$NOTA1},{$NOTA2},{$NOTA3}.{$NOTA4}. A media e:{$MEDIA}"
