#!/bin/bash
#
#Script que le solicita al usuario 2 numeros, los lee de la entrada standard e imprime
#la multiplicaciom, suma, resta, y cual es el mayor de los numeros leidos.

read -p "In:troduzca el primer numero: " num1

read -p "Introduzca el segundo numero: " num2

if [ $num1 -eq $num1 ] 2>/dev/null && [ $num2 -eq $num2 ] 2>/dev/null; then

	echo "El resultado de la multiplicacion es: $(expr $num1 \* $num2)."
	
	echo "El resultado de la suma es: $(expr $num1 + $num2)."
	
	echo "El resultado de la resta es: $(expr $num1 - $num2)."
	
	if [ $num1 -gt $num2 ]; then
		echo "El mayor de los numeros es $num1."
	else
		echo "El mayor de los numeros es $num2."
	fi
	exit 0
else
	echo "introduzca operandos validos."
	exit 1
fi
