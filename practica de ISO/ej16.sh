#!/bin/bash
#
#Este script recibe como parametro una extension y hace un reporte con 2 columnas con los nombres de
#usuario y la cantidad de archivos que poseen.

#Asumo que se ejecuta desde root, de otra manera deberia utilizar "sudo" para poder acceder a los directorios
#de otros usuarios.

if [ $# -ne 1 ]; then
	echo "Se debe ingresar 1 parametro y se ingresó $#"
	exit 1
fi

info=($(cat /etc/passwd | cut -d ":" -f 1,6))

for linea in ${info[@]}; do
	echo "$linea"
	user=$(echo "$linea" | cut -d ":" -f 1);
	dir=$(echo "$linea" | cut -d ":" -f 2);
	echo "$user $(ls $dir | grep "$1" | wc -l)" >> reporte.txt
done

exit 0
