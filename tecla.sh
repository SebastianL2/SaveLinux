#! /bin/ bash
clear
read -n 1 -p "pulsa una tecla " tecla 
case $tecla in
[a-z,A-Z]) echo " A INTRIDUCIDO UNA LETRA" ;;
[0-9]) echo "ha introducido un numero" ;; 
*) echo "ha introducido un caracter especial" ;;
esac

