#!/bin/bash
#
# Script to rename pdb files. It inserts the formula in the filename
#
# Author: Jesus Fernandez
# Date: 2025-10-01

OUTDIR="renamed_pdb"

mkdir -p ${OUTDIR}

function get_formula(){
  fname=$1
  cat ${fname} | awk '/ATOM/ {print $3}' | sort | uniq -c | awk '{print $2 $1}' | tr -d '\r\n'
}

for filename in ./data/pdb/*.pdb
do
  formula=$(get_formula ${filename})
  outfile="${OUTDIR}/$(basename ${filename//.pdb/})_${formula}.pdb"
  cp ${filename} ${outfile}
done