#!/bin/bash
total=$#-1
orden=$1
shift
>palabras.txt
for palabra in "$@"; do
	echo "$palabra" >> palabras.txt
done
if [ "$orden" == "ASC" ]; then
	sort palabras.txt
elif [ "$orden" == "DESC" ]; then
	sort -r palabras.txt
else
	echo "Debes indicar ASC o DESC"
fi
