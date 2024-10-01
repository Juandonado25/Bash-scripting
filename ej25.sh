#!/bin/bash
#
#Agrega en un arreglo todos los nombre de los usuarios del sistema pertenecientes al grupo "users".
#Adicionalmente el script puede recibir como parametro:
#	"-b n": Retorna el elemento de la posicion n del arreglo si el mismo esixte. Caso 
#		contrario. Un mensaje de error.
#	"-l": Devuelve la longitud del arreglo.
#	"-i": Imprime todos los elementos del arreglo en pantalla.

allUsers=($(cat /etc/passwd | cut -d ":" -f 1,4))
users=()

for user in ${allUsers[@]}; do
	if [ $(echo "$user" | cut -d ":" -f 2) == "100" ]; then
		users=(${users[*]} $(echo "$user" | cut -d ":" -f 1))
	fi
done

pos=$2
((pos--))

if [ $# -eq 2 ] && [ "$1" = "-b" ] && [ "$2" -eq "$2" ] 2>/dev/null; then
	if [ "$2" -ne 0 ] && [ "$2" -le ${#users[*]} ]; then
		echo "${users[$pos]}"
	else
		echo "Error: La posicion del vector no existe."
		exit 1
	fi
elif [ $# -eq 1 ] && [ "$1" = "-l" ]; then
	echo "La longitud del arreglo es ${#users[*]}"
elif [ $# -eq 1 ] && [ "$1" = "-i" ]; then
	echo "${users[*]}"
else
	echo "Parametros invalidos"
	exit 1
fi
exit 0
