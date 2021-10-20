#!/bin/bash
#
# desription of what it does
#
# Author: Jesus Fernandez
# Created: 2021-10-20

function get_formula(){
  cat $1 | awk '/ATOM/ {print $3}' | sort | uniq -c | awk '{print $2,$1}' | tr -d ' \n'
}

for file in data/pdb/*.pdb
do
  formula=$(get_formula ${file})
  mv -i ${file} ${file//\.pdb/}_${formula}.pdb
done