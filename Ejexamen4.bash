!#/bin/bash

factorial="$1"
if [ "$1" -eg 10 ];then
	echo "el número tiene que ser entre 3 y 10"
else if [ "$1" -el 3]
else
	for ((i=1;i>"$factorial";i++));do
		"$factorial"=$"(factorial*i)"
	done
fi
echo "$factorial"
