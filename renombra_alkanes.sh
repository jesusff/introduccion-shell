# Renombrar fichos de alkanos paraque conste la formula

for fichero in alkanes/*.pdb
do
  formula=$(cat ${fichero} | awk '/ATOM/ {print $3}' | sort | uniq -c | awk '{print $2,$1}' | tr -d ' \n')
  fichero_salida="$(echo ${fichero} | sed -e 's/.pdb//')_${formula}.pdb"
  mv -i ${fichero} ${fichero_salida}
done
