opc=0
while [ $opc -ne 5 ]
do
 clear
 echo "Ingresa una opción"
 echo
 echo "1. Crear directorio"
 echo "2. Borrar directorio"
 echo "3. Crear fichero"
 echo "4. Borrar fichero"
 echo "5. Salir"
 echo
 read opc
 echo
 case $opc in
 1) echo "Ingresa nombre del directorio"
    read directorio
    echo "`mkdir $directorio`"
    echo "Pulse una tecla para continuar..."
    read tecla;;
 2) echo "Ingresa nombre del directorio a borrar"
    read  directorio
    echo "`rmdir $directorio`"
    echo "Pulse una tecla para continuar..."
    read tecla;;
 3) echo "Ingresa nombre del fichero"
    read fichero
    echo "`touch $fichero`"
    echo "Pulse una tecla para continaur..."
    read tecla;;
 4) echo "Ingresa nombre del fichero a borrar"
    read fichero
    echo "`rm $fichero`"
    echo "Pulse una tecla para continuar..."
    read tecla;;
 5) clear;;
 *) echo "Opcion incorrecta, vuelva a ingresar."
    echo
    echo "Pulse una tecla para continuar...."
    read tecla;;
 esac
done
