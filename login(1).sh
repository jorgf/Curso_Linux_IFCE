#!/bin/bash

USUARIO="joari"
SENHA="123"

if [ -z $1  ];then


	echo "Informe o usuário: "
	read USER
	echo "Informe a senha: "
	read PASS

	if [ $USUARIO == $USER -a $SENHA == $PASS ];then
		echo "Bem-vindo ao sistema"
	else
		echo "Usuario e senha incorretos. Encerrando o script"
	fi
else
	if [ $USUARIO == $1 -a $SENHA == $2 ];then
		echo "Bem-vindo ao sistema"
	else
		echo "Usuario e senha incorretos. Encerrando o script"
	fi
fi
