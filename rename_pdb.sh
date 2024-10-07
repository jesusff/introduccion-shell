#!/bin/bash
# Author: Jesus Fernandez
# Date: 2024-10-7
# Script to rename pdb files including the chemical formula

function get_formula(){
  file=$1
  awk '/ATOM/ {print $3}' ${file} \
    | sort \
    | uniq -c \
    | awk '{printf "%s%d",$2,$1}'
}

for f in data/pdb/*.pdb
do
  echo "Renaming ${f} ..."
  formula=$( get_formula ${f} )
  mv ${f} ${f/.pdb/}_${formula}.pdb
done
