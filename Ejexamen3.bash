!#/bin/bash

contfichero=0
contdirectorio=0

for elemento in "$1";do
	if [ -f "$elemento" ]
		echo "$elemento es un fichero"
		"$contfichero"="$(contfichero +1)"
	else if [ -d "$elemento" ]
		echo "$elemento es un directorio"
		"$contdirecctorio"="$(contdirectorio +1)"
	else echo "$elemento no es un directorio ni un fichero"
	fi
done

