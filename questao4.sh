#!/bin/bash

# garantir que o arquivo existe antes de salvar algo nele
# outra forma de criar o arquivo: 
# >> registro.txt
touch registro.txt

echo "Arquivo criado em {$(date +"%d-%m-%y")}" >> registro.txt

echo "___TODOS OS USUARIOS DO SISTEMA____" >> registro.txt
echo `sudo cat /etc/passwd` >> registro.txt

echo "___TODOS OS GRUPOS DO SISTEMA____" >> registro.txt
echo `sudo cat /etc/group` >>registro.txt
