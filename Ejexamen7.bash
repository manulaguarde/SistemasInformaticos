#!/bin/bash

mayor=$1
menor=$1
suma=0
total=$#
for x in "$@"; do
	if [ "$x" -gt "$mayor" ];then
		mayor="$x"
	fi
	if [ "$x" -lt "$menor" ];then
		menor="$x"
	fi
	suma=$((suma + x))
done

echo "El mayor: $mayor"
echo "El menor: $menor"
echo "La media: $((suma / total))"
