#!/bin/bash
#bonus exercitiu - modificati scriptul sa nu astepte la nesfarsit ci maxim 1 minut
fisier="test.txt"
echo "Asteapta doar un minut dupa  fisier $fisier"
secunde=0
 while [ $secunde -lt 60 ]; do    #cat timp asteapta
if [ -f "$fisier" ]; then
echo "fisierul a fost gasit"
exit 0
fi
sleep 1
secunde=$((secunde +1))
done
echo "timeout! nu apare fisierul in 60 secunde!"
exit 1
