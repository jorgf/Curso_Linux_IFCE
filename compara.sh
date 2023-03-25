#!/bin/bash

test $1 -eq $2 && echo "sao iguais"
test $1 -gt $2 && echo "$1 e maior"
test $2 -gt $1 && echo "$2 e maior"
