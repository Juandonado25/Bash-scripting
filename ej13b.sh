#!/bin/bash
#
#Ofrece 3 opciones a los usuarios:
#	1. Listar: lista el contenido del directorio actual.
#	2. DondeEstoy: muestra el directorio donde me encuentro ubicado.
#	3. QuienEsta: muestra los usuarios conectados al sistema.

echo "Elija una de las 3 opciones:"
echo "	Listar: lista el contenido del directorio actual."
echo "	DondeEstoy: muestra el directorio donde me encuentro ubicado."
echo "	QuienEsta: muestra los usuarios conectados al sistema."
read -p "Escriba su eleccion: " selec

case "$selec" in
	"Listar")
		echo "$(ls)"
		;;
	"DondeEstoy")
		echo "$(pwd)"
		;;
	"QuienEsta")
		echo "$(who)"
		;;
	*)
		echo "Seleccion invalida."
		exit 1
		;;
esac
