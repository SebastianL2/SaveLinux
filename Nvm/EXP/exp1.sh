#!/bin/bash
echo  "tu respuesta> "
read rt
if [[ $rt = [0-9] ]]; 
then
    echo es un numero
else
    echo no lo es
fi
