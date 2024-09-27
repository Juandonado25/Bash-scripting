#!/bin/bash

#Ejercicio calculadora, ejecuta las 4 operaciones basicas +, -, * y /. Esta calculadora
#funciona recibendo la operacion y los numeros como parametros.
#
#Controla que se introduzcan la cantidad de parametros adecuada, tambien  que los operadores y 
#operandos sean validos


if [ $# -ne 3 ]; then
	echo "Error, se tienen que recibir 3 parametros y se recibieron $#."
	exit 1
fi

if [ "$1" -eq "$1" ] 2>/dev/null  && [ "$3" -eq "$3" ] 2>/dev/null; then
	if [ "$2" = "/" ] && [ "$3" = 0 ]; then
		echo "No se puede dividir por 0."
		exit 1
	fi
	
	if [ "$2" = "*" ]; then
		echo "$1 $2 $3 = $(expr $1 \* $3)"
	elif [ "$2" = "+" ] || [ "$2" = "-" ] || [ "$2" = "/" ]; then
		echo "$1 $2 $3 = $(expr $1 $2 $3)"
	else 
		echo "No introdujo una operacion valida."
		exit 1
	fi
else
	echo "introduzca numeros validos."
	exit 1
fi
