#!/bin/bash

if [ "$#" -eq 0 ];then
	echo "no hay parámetros"
	exit 1
fi
num=$1
if [ $((num % 2)) -eq 0 ];then
	echo "$num es par"
else
	echo "$num es impar"
fi
