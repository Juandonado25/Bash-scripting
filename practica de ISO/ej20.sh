#!/bin/bash
#
#Simula en comportamiento de una pila e implementa 4 comandos push, pop, length y print.

long=0;
stack=();

push() {
	stack=( $1 ${stack[@]})
}

pop() {
	unset 'stack[0]'
	stack=(${stack[*]})
}

length() {
	long=${#stack[@]}
	echo "La longitud de la pila es $long"
}

print() {
	echo "stack: ${stack[*]}"
}

opciones=("push" "pop" "length" "print" "salir")

select opt in ${opciones[@]}
do
	case $opt in
		"push")
			read -p "push: " in
			push "$in"
			;;
		"pop")
			pop
			;;
		"length")
			length
			;;
		"print")
			print
			;;
		"salir")
			echo "saliendo"
			break
			;;
		*)
			echo "opcion invalida"
			;;
	esac

done
exit 0
