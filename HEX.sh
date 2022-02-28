#!/bin/sh
echo 'Elige: \n 1.- Para encriptar. \n 2.- Para desencriptar'
read var1
if [ "$var1" -eq 1 ];
	then
	echo 'Introduce el valor a encriptar'
	read var2
	  echo 'Este es el resultado:' $var2 | xxd -p
	exit 1
elif [ "$var1" -eq 2 ];
	then
	echo 'Introduce el valor a desencriptar'
	read var2
	  echo "$var2" | xxd -p -r
	exit 1
else
	  echo "Parece que ha habido un error introduce 1 o 2."
fi
