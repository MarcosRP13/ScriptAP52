#/bin/bash

suma=0
contador=0

while read dia litros; do
    ((suma+=litros))
    ((contador++))
done < precipitaciones.txt

if [ $contador -gt 0 ]; then
    media=$((suma / contador))
    echo "Media de precipitaciones: $media litros"
else
    echo "No hay datos de precipitaciones."
fi
