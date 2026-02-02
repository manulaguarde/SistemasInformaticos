for elemento in "$@"; do
    if [ -d "$elemento" ]; then
        directorios=$((directorios + 1))
    elif [ -f "$elemento" ]; then
        archivos=$((archivos + 1))
    else
        echo "Aviso: '$elemento' no es ni archivo ni directorio"
    fi
done

echo "Total de parámetros: $#"
echo "Directorios: $directorios"
echo "Archivos: $archivos"
