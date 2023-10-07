   #!/bin/bash
   PS3='Porfavor digite una opciòn: '
options=("conteo de productos 1" "Busqueda 2" "ingresar a la lista 3" "salir 4")
select opt in "${options[@]}"
do
                             
    case $opt in
        "conteo de productos 1")
echo "El numero de productos en el archivo es: "
    archivoProd="/home/sebastian/Descargas/lista-productos.txt"
    numeroLineas=`wc --lines < $archivoProd`

    echo "Numero de lineas:  `expr $numeroLineas - 1` "
            ;;
         "Busqueda 2")
  archivoProd="/home/sebastian/Descargas/lista-productos.txt"
 

        read -p "ingrese el producto que desea buscar " product
        if [ -f"$archivoProd" ]
        then
                busqueda=$(grep -i "$poduct" "$archivoProd")
                echo "$busqueda"

        fi
 

   
    
            ;;
           "ingresar a la lista 3")

          echo "ingrese el producto  en una sola libnea de texto en el siguiente orden:IdProducto,NombreProducto,Proveedor,Categoría,CantidadPorUnidad, PrecioUnidad ,UnidadesEnExistencia,UnidadesEnPedido,NivelNuevoPedido,Suspendido "
          read producton 
           echo "$producton" >> /home/sebastian/Descargas/lista-productos.txt
         ;;
         "salir 4")
         break
         ;;
        *) echo "invalid option $REPLY";;
        
  esac
done

