#!/bin/bash

opcion=0

while [ $opcion -ne 5 ]; do
	echo "Selecciona una opción"
	echo "1.Para mostrar empleados"
	echo "2.Para dar de alta a los empleados"
	echo "3.Para dar de baja a los empleados"
	echo "4.Para bloquear a los empleados"
	echo "5.Para salir"
	read opcion

	case $opcion in
	  1)IFS=,
	    while read nombre salario; do
		echo "Nombre: $nombre, Salario: $salario"
	    done < Empleados.txt;;
	  2)IFS=,
	    while read nombre salario; do
		sudo useradd "$nombre"
	    done < Empleados.txt;;
	  3)IFS=,
	    while read nombre salario; do
		sudo userdel "$nombre"
	    done < Empleados.txt;;
	  4)IFS=, 
	    while read nombre salario; do
		sudo usermod -L "$nombre"
	    done < Empleados.txt;;
	  5)echo "Hasta luego";;
	  *)echo "Opción incorrecta, vuelva a ingresar";;
	esac
done
