#/bin/bash

linux_usuarios=0
linux_procesos=0
windows_usuarios=0
windows_procesos=0

while read usuario sistema procesos;

do
    if [ "$sistema" == "Linux" ]; then
        ((linux_usuarios++))
        ((linux_procesos+=procesos))
    elif [ "$sistema" == "Windows" ]; then
        ((windows_usuarios++))
        ((windows_procesos+=procesos))
    fi
done < listado.txt

echo "Linux -> $linux_usuarios $linux_procesos"
echo "Windows -> $windows_usuarios $windows_procesos"
