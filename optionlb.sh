#!/bin/bash
# Bash Menu Script Example

PS3='Please enter your choice: '
options=("suma 1" "resta 2" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "suma 1")
echo “Introduce dos numeros... ”
    read  num1
     read  num2        
sm=`expr $num1 + $num2` 
echo "su numero es:  $sm"
            ;;
        "resta 2")
            echo "you chose choice 2"
            ;;
           "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
