#! /bin/bash 
clear 
frase="buenos  amigos que tal yo bien "
echo "la longitud de la cadena es... 'expr length $frase'"
read -p "introduce alguna cadena que buscar" buscar 
if [ ! -z $buscar ]
then 
echo "los caracteres  $buscar se encuentran en la posicion 'expr index $frase $buscar'"
 
fi  

