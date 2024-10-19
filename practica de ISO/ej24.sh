#!/bin/bash
#
#Dados 2 vectores imprime un string con las posicion y la suma de los valores de ambos
#vectores en la misma posicion.

vector1=( 1 80 65 35 2 )

vector2=( 5 98 3 41 8 )

for (( i=0; i<${#vector1[*]}; i++)); do
	echo "La suma de los elementos de la posicion $i de los vectores es $((vector1[$i] + vector2[$i]))."
done

exit 0
