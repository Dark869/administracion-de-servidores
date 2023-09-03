#!/bin/bash

# Este script se encarga de restaurar los archivo
# que fueron enviados a la Papelera y restaurarlo
# en el directorio en el que se ejecuto el script
#
# Victor López 31/08/2023
##################################################

echo 'Escriba el nombre del archivo'

read file

if [ -d /home/$USER/Papelera ]
then
	if [ -f /home/$USER/Papelera/$file ]
	then
		mv /home/$USER/Papelera/$file .
	else
		echo 'El archivo no existe'
	fi
else
	mkdir /home/$USER/Papelera
	if [ -f /home/$USER/Papelera/$file ]
        then    
                mv /home/$USER/Papelera/$file .
        else    
                echo 'El archivo no existe'
        fi 
fi
