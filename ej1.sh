#/bin/bash

pares=0
impares=0

while read numero; do
    if (( numero % 2 == 0 )); then
        echo "$numero es par"
        ((pares++))
    else
        echo "$numero es impar"
        ((impares++))
    fi
done < numeros.txt

echo "Total de pares: $pares"
echo "Total de impares: $impares"
