#!/bin/bash
# Cerinta: Script ce asteapta la nesfarsit un fisier sa fie creat pe disk.
fisier="test.txt"
echo "Astept fisierul $fisier"
while true; do 
if [ -f "$fisier" ]; then
echo "Fisierul $fisier a fost gasit!"
exit 0        #iesim cu success"  
fi
sleep 1        #asteptam o secunda si verific din nou
done
