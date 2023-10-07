#! /bin/ bash
clear
echo "1.Ejemplo de Menu uno "
echo "2. ejemplo de menu dos"
read -n 1 -p "introducce una opcion " opcion
case $opcion in 
1) echo "haz escogido el coco" 
 exit 1 ;;
 
2) echo "haz escogido el mango" 
exit 2 ;;
*) echo "No has inroducido ninguna de las opcioness" ;; 
esac

