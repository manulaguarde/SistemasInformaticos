#!/bin/bash

if [ "$#" -ne 2 ]; then
	echo "Tienen que ser dos parámetros"
	exit 1
fi

num1=$1
num2=$2

>resultado.txt
echo "suma: $((num1 + num2))"
echo "suma: $((num1 + num2))" >> resultado.txt
echo "resta: $((num1 - num2))"
echo "resta: $((num1 - num2))">>resultado.txt
echo "Multiplicación: $((num1 * num2))"
echo "Multiplicación: $((num1 * num2))" >>resultado.txt
if [ "$num2" -ne 0 ];then
	echo "Division: $((num1 / num2))"
	echo "Division: $((num1 / num2))" >>resultado.txt
fi
