#! /bin/bash

#Entro con el comando cd a Saavedra
#Creo un archivo shell y lo activo con nano
#Con echo imprimo el filename

#El comando wc -l me sirve para contar el número de filas

#Con cat visualizo lo que realicé

echo "Areliz Maila"
echo "Filename : ../data/Saavedra2013/n22.txt"
echo "Número de filas"

cat ../Saavedra2013/n22.txt | wc -l

#Para contar el número de columnas utilizo el comando head -n1 (primera fila)
#Tomando en cuenta que hay espacios que dividen las columnas, se pueden eliminar
#con el comando tr -d " " y para eliminar el espacio final utilizo el comando tr -d \n

#Para contar los caracteres utilizo el comando wc -c
#Imprimo el número de columnas con echo

echo "Número de columnas"

head -n1 ../Saavedra2013/n22.txt | tr -d " " | tr -d "\n" | wc -c

