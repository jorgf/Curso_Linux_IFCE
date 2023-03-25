#!/bin/bash

TIPO=$1

test -d $TIPO && echo "E um diretorio"
test -f $TIPO && echo "E um arquivo"
test -f $TIPO && test -d TIPO && echo "nao e nada"
