#/bin/bash

dias=("Lunes" "Martes" "Miércoles" "Jueves" "Viernes" "Sábado" "Domingo")
indice=0

while read dia litros; do
    if [ "$litros" -eq 0 ]; then
        echo "No llovió el ${dias[indice]}"
    fi
    ((indice=(indice+1)%7))
done < precipitaciones.txt
