#!/bin/bash

test $1 -nt $2 && echo "o arquivo $1 é mais recente" || echo "o arquivo $2 é mais recente" 
