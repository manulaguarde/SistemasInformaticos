entrada="$1"
salida="$2"

grep '^[AEIOUaeiou]' "$entrada" > "salida"

echo "Proceso completado. guardado en $salida."
