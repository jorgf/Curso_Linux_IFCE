#!/bin/bash
# Jorge França

# funcoes para serem chamadas
nomefamiliares(){
	echo "Sobrenome da familia: "
	read SOBRENOME
	echo "Quantos membros tem na família? "
	read QNT
	#receber e salvar nomes dos familiares em um array
	for ((i=0; i < $QNT; i++))
	do
		echo "Digite o nome: "
		read NOME[i]
	done

	#escrever na tela nome:::sobrenome
	echo "____NOMES COMPLETOS____"
	for ((i=0; i<$QNT; i++))
	do
		echo "${NOME[i]}:::$SOBRENOME"
	done
}

datanascimento(){
	echo "dia de nascimento: "
	read DIA
	echo "mes de nascimento: "
	read MES
	echo "ano de nascimento: "
	read ANO
	echo "____DATA FORMATADA____"
	echo "$DIA-$MES:::$ANO"
}

listagem(){
	echo "Digite um número: "
	read NUM
	
	echo "____LISTAGEM DOS NÚMEROS____"
	for ((i=0; i<=$NUM;i++))
	do
		echo -ne "$i"
	done
	echo ""
}

mensagem(){
	echo "Digigte uma frase: "
	read MSG
	echo "Essa mensagem ficará salva no arquivo memorias.txt, no Desktop"
	echo $MSG >> ~/Desktop/memorias.txt
}

echo "____SISTEMA DE RELATORIO____"
echo "[1] Nome de familiares"
echo "[2] Data de nascimento"
echo "[3] Listagem"
echo "[4] Mensagem"
echo "[5] sair"
echo "____________________________"
read OP

case $OP in
	1) nomefamiliares ;;
	2) datanascimento ;;
	3) listagem ;;
	4) mensagem ;;
	5) exit ;;
	*) echo "Opção inválida" ;; 

esac
#listagem
#mensagem
#datanascimento
#nomefamiliares 

