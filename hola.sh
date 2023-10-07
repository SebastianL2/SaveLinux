#! /bin/bash
clear 
fecha=`date | cut -d " "  -f 1,2,3`
hora=`date | cut -d " " -f 4`
echo "hoy es $fecha  y son las $hora " 
