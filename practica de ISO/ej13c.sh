#!/bin/bash
#
#Recibe como parametro un nombre de un archivo e informa si el mismo existe o no, en caso de existir indica
#si es un directorio o un archivo. En caso de que no exista el archivo/directorio crea un directorio con el
#nombre recibido como parametro.
#
if [ $# -ne 1 ]; then
	echo "se debe pasar 1 parametro y hay $#."
	exit 1
fi

if [ -e "$1" ]; then
	if [ -d "$1" ]; then
		echo "Existe y es un directorio."
	else
		echo "Existe y es un archivo."
	fi
else
	echo "No existe archivo o directorio con ese nombre.$(mkdir "$1")"
fi		

exit 0
