#!/bin/bash

# El siguiente script se encarga de eliminar
# un archivo que sera pasado como parametro
# verificara que el archivo existe y si es asi 
# lo eliminara.
#
# Victor López 31/08/2023
#########################################

echo 'Escriba el nombre del archivo a eliminar'

read file

if [ -d /home/$USER/Papelera ]
then
	if [ -f $file ]
	then
		mv $file /home/$USER/Papelera
		echo 'El archivo ' $file ' se movio a la papelera'
	else
		echo 'El archivo no existe'
	fi
else 
	mkdir /home/$USER/Papelera
	if [ -f $file ]
        then    
                rm $file
                echo 'El archivo ' $file ' se movio a la papelera'
        else    
                echo 'El archivo no existe'
	fi
fi
