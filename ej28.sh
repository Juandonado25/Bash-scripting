#!/bin/bash
#
#Recibe como parametro el nombre de un directorio, valida que el mismo exista. en caso de no existir 
#se termina con codigo de error 4, por el contrario cuenta por separado la cantidad de archivos 
#que en el se encuentran para los cuales el usuario que ejecuta el script tiene permisos de lectura y 
#escritura, e informa dicha informacion por pantalla. los subdirectorios no se procesan y tampoco se 
#tienen en cuenta ṕara el resultado.
#
if [ $# -ne 1 ]; then
	echo "Se debe ingresar solo 1 parametro."
	exit 1
fi

lectura=0
escritura=0

if [ -e $1 ]; then
	cd $1
	archivos=($(ls))
	for arch in ${archivos[*]}; do
		if ! [ -d $arch ]; then
			if [ -w $arch ]; then
				((lectura++))
			fi
			if [ -r $arch ]; then
				((escritura++))
			fi
		else
			echo "$arch/ es un directorio"
		fi
	done
	echo "archivos con permiso de escritura $escritura y lectura $lectura."
	exit 0
else
	echo "No existe el directorio."
	exit 4
fi
