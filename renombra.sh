#!/bin/bash
# Author: Jesus Fernandez

function formula(){
  fichero=$1
  awk '/ATOM/ {print $3}' ${fichero} \
    | sort \
    | uniq -c \
    | awk '{print $2,$1}' \
    | tr -d ' \n'
}

for pdbfile in data/pdb/*.pdb
do
  form=$( formula ${pdbfile} )
  echo mv ${pdbfile} ${pdbfile/.pdb/}_${form}.pdb
done
