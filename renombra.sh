#!/bin/bash
#
# renombra.sh
#
# Script para renombrar ficheros pdb incluyendo la formula quimica en el
# nombre.
#
# Autor: Jesus Fernandez (ifca.unican.es)
# Creado: 2021-10-04

function saca_formula(){
  fich=$1
  cat ${fich} \
    | grep ATOM \
    | awk '{print $3}' \
    | sort | uniq -c | awk '{print $2,$1}' \
    | tr -d ' \n'
}

#
# Descarga de datos
#
wget https://swcarpentry.github.io/shell-novice/data/shell-lesson-data.zip
unzip -q shell-lesson-data.zip
rm shell-lesson-data.zip
cd shell-lesson-data
#
# Renombrado de ficheros
#
for fichero in data/pdb/*.pdb
do
  echo -n "Renombrando ${fichero} -> ${nuevo_nombre} ..."
  formula=$(saca_formula ${fichero})
  nuevo_nombre="${fichero//\.pdb/}_${formula}.pdb"
  mv ${fichero} ${nuevo_nombre}
  echo "Done!"
done
