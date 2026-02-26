#!/bin/bash

dir=$1
if [ ! -d "$1" ]; then
	echo "$dir no es un directorio"
	exit 1
fi
contador_file=0
contador_dir=0
for i in "$dir"/*;do
	if [ -d "$i" ];then
		contador_dir=$((contador_dir+1))
	fi
	if [ -f "$i" ];then
		contador_file=$((contador_file+1))
	fi
done

echo "Direcctorios: $contador_dir"
echo "Ficheros: $contador_file"
