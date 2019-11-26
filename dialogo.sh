#!/bin/bash
# Un script para poder leer entradas
# Un archivo temporal donde guardar lo que vamos leyendo
OUTPUT="/tmp/input.txt"

dialog --title "El nombre del admin LDAP" \
--backtitle "Parseador de CSV a LDIF" \
--inputbox "Indica el nombre del admin LDAP (suele ser admin)" 8 60 2>$OUTPUT

respose=$?

name=$(<$OUTPUT)

echo $name
