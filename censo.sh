#!/bin/bash
#jorgef

echo "Digite sua idade: "
read IDADE

MEDIA=0
SOMA=0
MAIOR=0
MENOR=$IDADE
COUNT=0
COUNT18=0

while [ $IDADE -ne 0 ]
do
	COUNT=$[$COUNT+1]

	#somar todas as idades para determinar a media
	SOMA=$[$SOMA+$IDADE]		
	
	# idade maior que 18
	if [ $IDADE -ge 18 ]
	then
		COUNT18=$[$COUNT18+1]
	fi

	# verificar se eh a meior idade ou menor idade
	if [ $IDADE -gt $MAIOR ]
	then
		MAIOR=$IDADE
	else if [ $IDADE -lt $MENOR ]
		then
			MENOR=$IDADE
		fi

	fi

	echo "Digite nova idade: "
	read IDADE
done

MEDIA=$[$SOMA/$COUNT]

echo "______RESULTADO DA PESQUISA______"
echo ""
echo "MEDIA DAS IDADES: $MEDIA"
echo "A MAIOR IDADE É: $MAIOR"
echo "A MENOR IDADE É: $MENOR"
echo "IDADES ACIMA DE 18 ANOS: $COUNT18"
echo "_________________________________"
