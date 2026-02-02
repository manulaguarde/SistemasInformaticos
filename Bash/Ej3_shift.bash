num=$#
for ((i=1; i<=num; i++)); do
 n[$i]=$1
 shift
done

for ((i=num; i>=1; i--)); do
 echo "Hola ${n[$i]}"
done
