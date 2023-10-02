#!/bin/bash
#
# renombra_alkanes.sh
#
# Renombrar ficheros de alcanos para que conste la formula.
#
# Autor: Jesus Fernandez
# Fecha: 2023-10-02

for fichero in alkanes/*.pdb
do
  formula=$(cat ${fichero} | awk '/ATOM/ {print $3}' | sort | uniq -c | awk '{print $2,$1}' | tr -d ' \n')
  fichero_salida="$(echo ${fichero} | sed -e 's/.pdb//')_${formula}.pdb"
  mv -i ${fichero} ${fichero_salida}
done
