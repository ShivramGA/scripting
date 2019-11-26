#!/bin/bash
suma1=4
suma2=6
let suma #también puedo crear variables con let
echo $suma1 + $suma2
echo suma1 + suma2
((suma=suma1+suma2)) #las operaciones aritméticas van con (())
echo $suma
exit 0 #termino con éxito y así  lo señalo con exit 0, la segunda salida estándar del queda a 0
