clear
for ((i=1; i<=10; i++)); do
 echo
 echo "Tabla del $i"
 echo
 for ((j=0; j<=10; j++)); do
   echo "$i X $j = $((i*j))"
 done
done

