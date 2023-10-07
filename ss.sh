   #!/bin/bash
# Bash Menu Script Example

PS3='Please enter your choice: '
options=("suma 1" "conteo de letras 2" "Quit" "jajalol")
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
         "conteo de letras 2")
      echo  “Enter a string:”
read strval
len=`expr  "$strval" : '.*'`
echo "The length of the input string is $len"

                
            ;;
           "Quit")

            break

         ;;
         "jajalol")
         echo "lul"
         ;;
        *) echo "invalid option $REPLY";;
        
  esac
done


