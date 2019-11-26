#!/bin/bash
num1=4
num2=6
let multiplicacion #también puedo crear variables con let
echo $num1 * $num2
echo num1 * num2
((multiplicacion=num1*num2)) #las operaciones aritméticas van con (())
echo $multiplicacion
exit 0 #termino con éxito y así  lo señalo con exit 0, la segunda salida estándar del queda a 0
