#°/bin/bash
#
#Este script verifica cada 5 segundos si el proceso gnome se esta ejecutando en el sistema
#(en mi caso si porque uso ubuntu) y si aparece 5 veces lo notifica y cierra el script, arrojando
#un codigo de retorno 50

contador=0

while true; do
	aparece="$(ps -e | grep gnome | wc -l)"

	if [ $aparece -gt 0 ]; then
		((contador++))
	fi

	if [ $contador -ge 5 ]; then
		echo "gnome aparecio 5 veces"
		exit 50
	fi

	sleep 5

done
