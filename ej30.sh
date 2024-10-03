#!/bin/bash
#
#Mueve todos los archivos del directorio actual (archivos ejecutables) hacia el subdirectorio
#"bin" del directorio HOME del usuario actualmente logueado. Imprime en pantalla los nombres de los
#que mueve e indica cuantos ha movido o si no ha movido ninguno.
#Si el directorio "bin" no existe lo crea.

if ! [ -e "$HOME/bin/" ]; then
	mkdir "$HOME/bin"
fi

archivos=($(ls))

for arch in ${archivos[*]}; do
	if ! [ -d $arch ] && [ -x $arch ]; then
		mv $arch "$HOME/bin/"
		echo "Se movio $arch"
	fi
done

exit 0
