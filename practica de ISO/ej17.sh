#!/bin/bash
#
#Imprime en pantalla los nombres de los archivos que se encuentran en el directorio actual, inter-
#cambiando minusculas por mayusculas, ademas de eliminar la letra a (mayuscula o minuscula).


#guardo todos los archivos en un array
archivos=($(ls))

for archivo in ${archivos[*]}; do
	echo "$(echo "$archivo" | tr "a-zA-Z" "A-Za-z" | tr -d "aA")"
done

exit 0
