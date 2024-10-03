#!/bin/bash
#
#Verifica cada 10 segundos si un usuario se ha logueado en el sistema (El nombre del usuario será
#pasado por parametro). Cuando el usuario finalmente se loguea, el programa muestra el mensaje
#"Usuario XXX logueado en el sistema" y sale.
#
if [ $# -ne 1 ]; then
	echo "se deben ingresar 1 parametro y se ingreso $#."
	exit 1
fi

while true; do
	usuarios=($(who | cut -d " " -f 1))
	for user in ${usuarios[@]}; do
		echo "$user"
		if [ "$user" = "$1" ]; then
			echo "Usuario $1 logueado en el sistema."
			exit 0
		fi
	done
	sleep 10
done

exit 0
