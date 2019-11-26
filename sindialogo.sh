#!/bin/bash
# Demo-menu shell script
# -------------------------------
# Define variables
# -------------------------------
EDITOR=nano
PASSWD/etc/passwd
RED='\033[0;41;30m]'
STD='\033[0;0;39m]'
# Variables para guardar lo leido sobre el usuario LDAP
let dominio
let extension
let admin
# ------------------------------
# User defined function
# ------------------------------
pause(){
  read -p "Press [Enter] key to continue..." fackEnterkey
}
one(){
  echo "Opción uno, indica el nombre del dominio"
  read dominio
  pause
}
two(){
  echo "Opción dos, indica la extensión del dominio"
  read extension
  pause
}
three(){
  echo "Opción tres, indica el nombre del admin de OPENLDAP"
  read admin
  pause
}
# Dibuja un menu feo de linea de comandos
show_menus(){
	clear
	echo "~~~~~~~~~~~~~~~~~~~~~~~~"
	echo " MENU-LINEA DE COMANDOS "
	echo "~~~~~~~~~~~~~~~~~~~~~~~~"
	echo "Bienvenido al dominio ."
	echo "1. Indicar nombre de dominio";
	echo "2. Indicar extensión del dominio";
	echo "3. Indicar el nombre del admin de OPENLDAP";
	echo "0. Exit"
}
# Lee la acción sobre el teclado y la ejecuta.
# Invoca el () cuando el usuario selecciona 1 en el menú.
# Invoca el () cuando el usuario selecciona 2 en el menú.
# Invoca el () cuando el usuario selecciona 3 en el menú.
# Salir del menú cuando el usuario selecciona 0 en el menú.
read_options(){
	local choice
	read -p "Enter choice [ 1 - 0 ] " choice
	case $choice in
		1) one ;;
		2) two ;;
		3) three ;;
		0) exit 0 ;;
		*) echo -e "${RED}Error...${STD}" && sleep 2
	esac
}
# --------------------------------
# Main logic - infinite loop
# --------------------------------
while true
do
	show_menus
	read_options
done
