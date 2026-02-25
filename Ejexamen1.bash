!#/bin/bash

contador=0

for letra in "$@"; do
	case "$letra" in
		a|e|i|o|u|A|E|I|O|U)
			contador=$((contador +1 ))
			;;
	esac
done

echo "$contador"
