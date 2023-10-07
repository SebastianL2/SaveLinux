#!/bin/bash

read -p "ingresa ip: " correo

if [[ "$correo" =~ [0-3]+ ]]

then
    echo "ip aceptado: $correo"
else
    echo "ip invalido: $correo"
fi
