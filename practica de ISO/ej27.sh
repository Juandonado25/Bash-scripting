#!/bin/bash
#
#Implementa la opreaciones basicas sobre arreglos.

#Pruebo diferentes formas de declarar las funciones.

inicializar() {
	arreglo=()
}

function agregar_elem {
	arreglo=(${arreglo[*]} $1)
}

eliminar_elem(){
	if [ $1 -lt ${#arreglo[*]} ]; then
		pos=$1
		((pos--))
		unset arreglo["$pos"]
		arreglo=(${arreglo[*]})
	else
		echo "Numero de elemento invalido"
	fi
}

function longitud {
	echo "${#arreglo[*]}"
}

imprimir() {
	echo "${arreglo[*]}"
	return 0
}

inicializar_Con_Valores() {
	arreglo=()
	for param in $@; do
		arreglo=(${arreglo[*]} $param)
	done
}

echo "inicializar"
inicializar

echo "agregar elementos 5 y 6:"
agregar_elem 5
agregar_elem 6

echo "imprimir: $(imprimir)"

echo "longitud: $(longitud)"

echo "eliminar pos 1"
eliminar_elem 1

echo "imprimir: $(imprimir)"

echo "inicializar con valores: 4 5 6 7"
inicializar_Con_Valores 4 5 6 7

echo "imprimir: "
imprimir
