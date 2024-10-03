#!/bin/bash
#
#Recorre un vector e imprime solo los numeros pares y los numeros inpares los cuenta y al final imprime la cantidad.
#
# con este arreglo denbe imprimir: "pares: 2 4 5 6, impares: 5"

arreglo=(1 2 3 4 5 6 7 8 9 10 11 12)

impares=0

res="Pares:"

for num in ${arreglo[@]}; do
	if (( $num % 2 == 0)); then
		res="${res} $num"
	else
		((impares++))
	fi
done

res="${res}, Impares: $impares"

echo "$res"

exit 0
