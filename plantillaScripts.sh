#!/bin/bash

# Este script se encarga de crear un archivo script
# prehecho con el interprete, nombre del autor, fecha
# de creacion y el nombre del script
#
# Victor López 31/08/2023
#####################################################

echo 'Escriba el nombre que requiere para su script sin la extención'

read nFile

if [ -f $nFile ]
then
	echo 'El script ' $nFile ' ya existe'
else
	touch /home/$USER/$nFile.sh
	echo '#!/bin/bash' >> $nFile.sh
	echo '#' >> $nFile.sh
	echo '# Autor: '$USER' '$(date +%d/%m/%Y) >> $nFile.sh
	echo '###########################' >> $nFile.sh
fi
