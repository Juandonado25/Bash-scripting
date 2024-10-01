#!/bin/bash
#
#Menu: Muestra de una manera "amigable con el usuario" un menu de opciones para acceder a los
#ejercicios anteriores.

echo "Seleccione un programa del menu, por el numero de indice. para cerrar el menu seleccione \"Salir\""

opciones=("Operaciones basicas" "Operaciones basicas con parametros" "Operaciones basicas directas" "Imprimir del 1 al 100" "Salir")
i
select opt in "${opciones[@]}"
do
	case $opt in
		"Operaciones basicas")
			./ej12a.sh
			;;
		"Opneraciones basicas con parametros")
			./ej12b.sh
			;;
		"Operaciones basicas directas")
			./ej12c.sh
			;;
		"Imprimir del 1 al 100")
			./ej13a.sh
			;;
		"Salir")
			echo "Seleccionaste salir."
			break
			;;
		*)
			echo "Opcion no valida."
			;;
	esac
done
