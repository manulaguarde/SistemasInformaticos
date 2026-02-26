#!/bin/bash
if [ $# -ne 1 ];then
	echo "Debe pasar un directorio"
	exit 1
fi
dir=$1
if [ ! -d "$dir" ];then
	echo "No es un directorio válido"
	exit 1
fi
opc=0
while [ "$opc" -ne 5 ];do
	
	echo "Elije una opción"
	echo "1) Listar contenido del directorio"
	echo "2) Mostrar solo los archivos"
	echo "3) Mostrar solo los directorios"
	echo "4) Salir"

	read opc
	case "$opc" in
	1) ls "$dir";;
	2) for elemento in "$dir"/*; do
		if [ -f elemento ];then
			echo "$elemento"
		fi
	   done;;
	3)for elemento in "$@"/*;do
		if [ -d elemento ];then
			echo "$elemento"
		fi
	   done;;
	4) echo "Has salido";;
	*) echo "Opción incorrecta, vuelve a ingresar";;
	esac
done
