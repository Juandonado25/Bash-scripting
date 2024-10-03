#!/bin/bash
#
#Renombra los archivos en un directorio pasado como parametro, agregando al principio o al final
#de su nombre una cadena de texto tambien pasada por parametro.
#	-a para insertar al final del nombre.
#	-b para insertar al principio del nombre.

#Valida los parametros
if [ $# -ne 3 ]; then
	echo "Se deben pasar 3 parametros y se pasaron $#"
	exit 1
fi

#Verifica que los parametros sean correctos
if [ "$2" != "-a" ] && [ "$2" != "-b" ]; then
	echo "Parametro erroneo."
	exit 1
fi

#Asigno los parametros a variables para que sea mas legible
directorio=$1
extra=$3

if [ -e $directorio ] && [ -d $directorio ]; then
	#Se hace lo del IFS para poder leer el salto de linea
	IFS=$'\n' archivos=($(ls "$directorio"))
	unset IFS
	for archivo in ${archivos[@]}; do
		if [ -f "$directorio/$archivo" ]; then
			if [ "$2" = "-a" ]; then
				mv "$directorio/$archivo" "$directorio/${archivo}${extra}"
			else
				mv "$directorio/$archivo" "${directorio}/${extra}${archivo}"
			fi
		fi
	done
	exit 0
else
	echo "Ingrese un directorio valido."
	exit 1
fi

