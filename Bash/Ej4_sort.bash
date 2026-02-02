> fichero1
while [ $# -ne 0 ]
do
 echo "$1" >> fichero1
 shift
done

sort fichero1
echo 
sort -r fichero1
