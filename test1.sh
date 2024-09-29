#!/bin/bash
#
#Script de prueba para experimentar.
#

read -p "Escriba un texto para probar: " cadena1

echo "La longitud de la cadena es ${#cadena1}"

read -p "Ingrese la posicion de el caracter que desea imprimir: " pos

if [ "$pos" -eq "$pos" ] 2>/dev/null; then
	((pos--))
	if [ "${#cadena1}" -gt "$pos" ]; then
		echo "el caracter es: ${cadena1:"$pos":1}"
	fi
	exit 0
else
	echo "debe ingresar numeros."
	exit 1
fi
