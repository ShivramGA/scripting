#!/bin/bash

let uid
let ou
let dc1
let dc2
let uidnumber
let gidnumber
let userpassword

read  -p "Introduce el usuario: " uid
read  -p "Introduce la unidad organizativa: " ou
read  -p "Introduce el dominio: " dc1
read  -p "Introduce el dc2: " dc2
read  -p "Introduce el uidnumber: " uidnumber
read  -p "Introduce el gidnumber: " gidnumber
read  -p "Introduce la contraseña: " userpassword

echo dn: uid=$uid,ou=$ou,dc1=$dc1,dc2=$dc2 >> salida.ldif
echo objectClass: inetOrgPerson >> salida.ldif
echo objectClass: posixAccount >> salida.ldif
echo objectClass: shadowAccount >> salida.ldif
echo cn: $uid >> salida.ldif
echo sn: $uid >> salida.ldif
echo uid: $uid >> salida.ldif
echo uidnumber: $uidnumber >> salida.ldif
echo gidnumber: $gidnumber >> salida.ldif
echo userPassword: $userpassword >> salida.ldif
echo homeDirectory: /home/$uid >> salida.ldif
echo loginShell: /bin/bash >> salida.ldif
echo gecos: $uid >> salida.ldif
echo mail: $uid@$dc1.$dc2 >> salida.ldif

exit 0
