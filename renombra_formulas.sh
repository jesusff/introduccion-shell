#! /bin/bash
#
# renombra_formulas.sh - Saca formula de molecula al nombre de archivo
#
# Funciona ejecutada desde el directorio data/ del arbol de directorios
# proporcionado en http://swcarpentry.github.io/shell-novice/data/data-shell.zip
#
# Que codigo habria que aniadir para que descargue, descomprima y se coloque en
# el directorio correspondiente?

destdir="nuevos_ficheros"
mkdir ${destdir}
for fichero in pdb/*.pdb
do
  formula=$(
    awk '/ATOM/ {print $3}' ${fichero} \
    | sort | uniq -c | awk '{print $2,$1}' \
    | tr -d ' \n'
  )
  cp ${fichero} "${destdir}/$(basename ${fichero} .pdb)_${formula}.pdb"
done
