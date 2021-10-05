#!/bin/bash

function saca_formula(){
  fich=$1
  cat ${fich} \
    | grep ATOM \
    | awk '{print $3}' \
    | sort | uniq -c | awk '{print $2,$1}' \
    | tr -d ' \n'
}

for fichero in data/pdb/*.pdb
do
  echo -n "Renombrando ${fichero} -> ${nuevo_nombre} ..."
  formula=$(saca_formula ${fichero})
  nuevo_nombre="$(basename ${fichero} .pdb)_${formula}.pdb"
  mv ${fichero} ${nuevo_nombre}
  echo "Done!"
done
