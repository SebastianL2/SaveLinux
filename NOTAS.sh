   #!/bin/bash

   rp=`awk 'NR==1 , NR==12' Notas.csv`
       echo "$rp" >> Temp.csv
      sed -i 's/,/./g' Temp.csv
      sed -i '2 s/a;/a;   /' Temp.csv
      sed -i '3 s/ ;/ ;  /' Temp.csv
      sed -i '4 s/a;/a;  /' Temp.csv
      sed -i '5 s/n;/n;    /' Temp.csv
      sed -i '6 s/s;/s;  /' Temp.csv
      sed -i '7 s/l;/l;  /' Temp.csv
      sed -i '8 s/o;/o; /' Temp.csv
      sed -i '9 s/a;/a;     /' Temp.csv
      sed -i '10 s/o;/o;   /' Temp.csv
      sed -i '11 s/s;/s; /' Temp.csv
 for (( i=2; i<12; i++ ))

do

 notes=`awk 'NR== '$i Temp.csv`
 
   L1=` echo ${notes:11:3}`
   echo ""
   L2=` echo ${notes:15:3}`
   L3=` echo ${notes:19:3}`
   nota1=$(echo "scale=2;($L1*0.1)" | bc)
   nota2=$(echo "scale=2;($L2*0.3)" | bc)
   nota3=$(echo "scale=2;($L3*0.6)" | bc)
   def=$(echo "scale=2;($nota1+$nota2+$nota3)" | bc)
   echo  `sed -i "$i s/$/$def/g" Temp.csv`
echo $def
if [[ $def > 2.95 ]]
then
   echo "$notes" "$def "  >> aprobados.txt
   
else

    echo "$notes"  "$def"  >> reprobados.txt
fi

done
   





