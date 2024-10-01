#!/bin/bash
#
#Recibe un numero desconocido de parametros que contienen direcciones absolutas de archivos 
#o directorios. Solo para lo parametros impares verifica si el archovpp p directorio existen en
#el sistema, imprimiendo en pantalla que tipo de objeto es {archivo o directorio]. ademas debera
#informar la cantidad de directorios o archivos inecistentes en el sistema.

if [ $# -lt 1 ]; then
	echo "Debe tener almenos un parametro"
	exit 1
fi

indice=1
inexistente=0
for param in $@; do
	if ((indice & 2 != 0)); then
		if [ -e $param ]; then
			if [ -d $param ]; then
				echo "El parametro $indice es un directorio."
			else
				echo "El parametro $indice es un archivo."
			fi
		else
			((inexistente++))
		fi
	fi
	((indice++))
done

echo "$inexistente objetos no existian."
