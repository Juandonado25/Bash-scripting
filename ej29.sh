#!/bin/bash
#
#Agrega a un arreglo todos los archivos del directorio /home cuya terminacion sea .doc. Adicionalmente
#implementa las siguientes funciones que le permiten acceder a le estructura creada:

#verArchivo <nombre_de_archivo>: Imprime el archivo en pantalla si el mismo se encuentra en el arreglo
#Caso contrario imprime el mensaje de error "Archivo no encontrado" y devuelve un valor de retorno 5.

#cantidadArhivos: imprime la cantidad de archivos del /home con terminacion .doc

#borrarArchivo <nombre_de_archivo>: Consulta al usuario si quiere eliminar el archivo logicamente.
#Si el usuario responde Si, elimina el elemento solo del arreglo. Si el usuario reponde No, elimina el 
#archivo del arreglo y tambien del FileSystem. Se valida que el archivo exist en el arreglo. En caso de
#no existir, imprime el mensaje de error "Archivo no encontrado" y como valor de retorno 10

archivos=($(ls /home/*.doc | cut -d "/" -f 3))

verArchivo() {
	for arch in ${archivos[*]}; do
		if [ $arch = "$1" ]; then
			echo "$(cat /home/$1)"
			return 0
		fi
	done
	echo "Archivo no encontrado"
	return 5
}

verArchivo arch2.doc

cantidadArchivos() {
	echo "cantidad de archivos teminados en .doc: ${#archivos[*]}"
}

cantidadArchivos

borrarArchivo() {
	read -p "Quiere eliminar logicamente el archivo?" sel

	if [ $sel != "Si" ] && [ $sel != "No" ]; then
		echo "Seleccion invalida"
		return 9
	fi

	for (( i=0; i<${#archivos[*]}; i++)); do
		if [ "$1" == "${archivos[$i]}" ]; then
			if [ $sel == "Si" ]; then
				unset archivos[$i]
				archivos=(${archivos[*]})
				return 0
			else
				unset archivos[$i]
				archivos=(${archivos[*]})
				sudo "/home/"$1""
				return 0
			fi
		fi			
	done

	echo "Archivo no encontrado"
	return 10
}

borrarArchivo arch2.doc

cantidadArchivos
