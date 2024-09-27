#!/bin/bash
#
#Renombra los archivos en un directorio pasado como parametro, agregando al principio o al final
#de su nombre una cadena de texto tambien pasada por parametro.

if [ $# -ne 3 ]; then
	echo "Se deben pasar 3 parametros y se pasaron $#"
	exit 1
fi

if [ "$2" != "-a" ] && [ "$2" != "-b" ]; then
	echo "Parametro erroneo."
fi
directorio=$1
extra=$3

if [ -e $directorio ] && [ -d $directorio ]; then
	IFS=$'\n' archivos=($(ls $1))
	unset IFS
	for archivo in $archivos; do
		if [ -f $archivo ]; then
			if [ "$2" = "-a" ]; then
				mv "${directorio}${archivo}" "${directorio}${archivo}${extra}"
			else
				$(mv "${$1}${$archivo}" "${$1}${$3}${$archivo}")
			fi
		fi
	done
else
	echo "Ingrese un directorio valido."
	exit 1
fi

