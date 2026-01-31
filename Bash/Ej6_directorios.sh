read -p "Introduce un directorio: " directorio
read -p "Introduce una palabra: " palabra

if [ ! -d "$directorio" ]; then
 echo "$directorio no es un directorio"
 exit 1
fi

for archivo in "$directorio"/*; do
	if [ -f "$archivo" ]; then
		if echo "$archivo" | grep "$palabra" ; then
			cat "$archivo"
			read -p "Desea borrar el contenido? s/n: " respuesta
			if [ "$respuesta" = "s" ]; then
				rm "$archivo"
				if [ ! -f "$archivo" ]; then
					echo "Archivo eliminado correctamente"
				else
					echo "$archivo no se pudo eliminar"
				fi
			fi
		fi
	fi
done
