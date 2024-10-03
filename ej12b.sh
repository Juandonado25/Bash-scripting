#!/bin/bash
#
#Script que le solicita al usuario 2 numeros, los recibe por parametros e imprime
#la multiplicaciom, suma, resta, y cual es el mayor de los numeros recibidos.

if [ $# -ne 2 ]; then
	echo "Error, se tienen que recibir 2 parametros y se recibieron $#."
	exit 1
fi

if [ "$1" -eq "$1" ] 2>/dev/null && [ "$2" -eq "$2" ] 2>/dev/null; then

	echo "El resultado de la multiplicacion es: $(expr $1 \* $2)."

	echo "El resultado de la suma es: $(expr $1 + $2)."

	echo "El resultado de la resta es: $(expr $1 - $2)."

	if [ $1 \> $2 ]; then
		echo "El mayor de los numeros es $1."
	else
		echo "El mayor de los numeros es $2."
	fi
	exit 0
else 
	echo "Introduzca parametros validos"
	exit 1
fi
