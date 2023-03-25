#!/bin/bash

if [ -z $1 ];then
	echo "Falha ao entrar no sistema!"
else
	if [ $1 = "jorge" -a $2 = "123" ]; then
		echo "++++++++++++++++++++++++++++"
		echo "Bem vindo ao sistema!"
		echo "(1) Criar Diretorio"
		echo "(2) Criar Arquivo"
		echo "(3) Qual número é maior"
		echo "(4) Sair do sistema"
		echo "++++++++++++++++++++++++++++"
		read OP
		
		case $OP in
			1)
				echo "________ CRIAR DIRETORIO ________"
				echo "Nome do diretorio a ser criado: "
				read NAMEDIR
				mkdir $NAMEDIR && echo "Diretorio criado com sucesso" || echo "Erro ao criar diretorio"
				;;
			2) 
				echo "________ CRIAR ARQUIVO ________"
				echo "Nome do arquivo com extensão. ex.: exemplo.txt: "
				read NAMEFILE
				>> $NAMEFILE && echo "Arquivo criado com sucesso!" || echo "Erro ao criar arquivo!"
				;;
			3) 
				echo "________ MAIOR NUMERO ________"
				echo "Digite o primeiro número: "
				read NUM1
				echo "Digite o segundo número: "
				read NUM2

				[ $NUM1 -gt $NUM2 ] && echo "Maior: {$NUM1}" || echo "Maior: {$NUM2}"
				;;
			4) 
				echo "Saindo do sistema!"
				exit
				;;
			*) echo "inválido";;
		esac
	else
		echo "Falha de autenticação"
	fi
fi
