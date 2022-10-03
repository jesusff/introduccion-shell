#!/bin/bash

function formula(){
  cat $1 | grep ATOM | awk '{print $3}' | uniq -c | awk '{print $2,$1}' | tr -d ' \n'
}

for fichero in proteins/*.pdb
do
  echo "Procesando ${fichero} ..."
  form=$(formula ${fichero})
  mv ${fichero} ${fichero//.pdb/}_${form}.pdb
done

