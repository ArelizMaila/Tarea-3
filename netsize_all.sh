#! /bin/bash

#Entro a la carpeta Saveedra con el comando cd
#Creo un archivo shell y lo activo con nano
#Con echo imprimo mi mi nombre, las filas y columnas
#Utilizo el comando for para que actue como bucle para el conteo se aplique en los
#archivos de Saavedra2013

#Con el comando wc -l cuento las filas
#Para el conteo de las columnas aplico el comando head -n1 para la primera fila,
#Para eliminar los espacios entre columnas aplico tr -d " "
#elimino los espacios finales aplico tr -d \n

echo "Areliz Maila"
echo "Número de filas"

for i in ../Saavedra2013/*.txt
do	cat $i | wc -l
done


echo "Número de columnas"
for i in ../Saavedra2013/*.txt
do head -n 1 $i| tr -d " " | tr -d "\n" | wc -c
done
