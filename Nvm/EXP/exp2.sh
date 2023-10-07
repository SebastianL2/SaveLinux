#!/bin/bash

read -p "ingresa correo: " correo

#if [[ "$correo" =~ [A-Za-z0-9.]+@[A-Za-z0-9.]+\.[A-Za-z]+ ]]
if [[ "$correo" =~ [A-Za-z0-9.]+@uptc+\.edu\.co ]]
then
    echo "correo aceptado: $correo"
else
    echo "correo invalido: $correo"
fi
