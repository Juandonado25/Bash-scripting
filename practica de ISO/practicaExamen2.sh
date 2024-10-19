#!/bin/bash
#
#ejercicio de parcial
#

archivos=($(ls /etc | grep "\.conf$"))

cantidad() {
	echo "La cantidad de archivos en /etc que terminan en .conf es ${#archivos[*]}"
	return 0
}

cantidad

verArchivos() {
	echo "${archivos[*]}"
	return 0
}

verArchivos

existe() {
	if [ $# -ne 1 ]; then
		echo "solo se tiene que ingresar 1 parametro"
		return 1
	fi

	for arch in ${archivos[*]}; do
		if [ $arch == "$1" ]; then
			echo "El archivo $1 exite en el directodio /etc"
			return 0
		fi
	done

	echo "El archivo $1 no existe en el directorio /etc"
	return 1
}

existe apg.conf

eliminar() {
	if [ $# -ne 2 ]; then
		echo "Se deben pasar 2 parametros y se ingresaron $#."
		return 1
	fi

	if [ "$2" != "logico" ] && [ "$2" != "fisico" ]; then
		echo "el segundo parametro es una opcion invalida"
		return 1
	fi

	contador=0
	if [ $1 -lt ${#archivos[*]} ]; then
			pos=$(("$1" - 1))
			if [ $2 == "logico" ]; then
				unset archivos["$pos"]
				archivos=${archivos[*]}
				echo "El archivo se borro solo del arreglo."
			else
				rm "/etc/${archivos["$pos"]}"
				unset archivos["$pos"]
				archivos=${archivos[*]}
				echo "El archivo se borro del arreglo y del FileSytem"
			fi
	
	else
		echo "el primer parametro excede la longitud del arreglo"
		return 1
	fi
	return 0

}

eliminar 2 fisico

cantidad
