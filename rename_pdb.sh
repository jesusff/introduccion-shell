#!/bin/bash
#
# Renames pdb files according to their chemical formula by parsing the atoms
# in the file. This script was developed during the lesson. This header added
# later, before submission to github/moodle.
#
# Note that it assumes that the data file has been downloaded, unzipped and
# we are located at the root of the extracted folder.
#
# Author: Jesus Fernandez
# Date: 2023-10-16

for file in data/pdb/*.pdb
do
  formula=$(cat ${file} | awk '/ATOM/ {print $3}' | sort | uniq -c | awk '{print $2,$1}' | tr -d ' \n')
  mv ${file} ${file/.pdb/}_${formula}.pdb
done

