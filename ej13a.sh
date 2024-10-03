#!/bin/bash
#
#Imprime en pantalla los numeros del 1 al 100 y sus cuadrados.
#
for (( i=1; i<=100; i++)); do
	echo "numero $i, y su cuadrado es $(expr $i \* $i)."
done

exit 0
