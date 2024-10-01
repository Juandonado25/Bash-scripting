#!/bin/bash
#
#Implementa la opreaciones basicas sobre arreglos.

inicializar() {
	arreglo=()
}

agregar_elem() {
	arreglo=(${arreglo[*]} $1)
}

eliminar_elem() {
	pos=$1
	((pos--))
	unset arreglo["$pos"]
	arreglo=(${arreglo[*]})
}

longitud() {
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

echo "eliminar pos 1 $(eliminar_elem 1)"

echo "imprimir: $(imprimir)"

echo "inicializar con valores: 4 5 6 7 $(inicializar_Con_Valores 4 5 6 7)"

echo "imprimir: "
imprimir
