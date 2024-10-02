#!/bin/bash
#
#Mueve todos los archivos del directorio actual (archivos ejecutables) hacia el subdirectorio
#"bin" del directorio HOME del usuario actualmente logueado. Imprime en pantalla los nombres de los
#que mueve e indica cuantos ha movido o si no ha movido ninguno.
#Si el directorio "bin" no existe lo crea.

userhome="$(cat /etc/passwd | cut -d ":" -f 6 | grep $(whoami))"

if ! [ -e "${userhome}/bin/" ]; then
	sudo mkdir "${userhome}/bin"
fi

archivos=($(ls))

for arch in ${archivos[*]}; do
	if ! [ -d $arch ] && [ -x $arch ]; then
		sudo mv $arch "${userhome}/bin/"
		echo "Se movio $arch"
	fi
done
