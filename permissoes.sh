#!/bin/bash

test -r $1 && echo "permissao de leitura"
test -w $1 && echo "permissao de escrita"
test -x $1 && echo "permissao de execução"

