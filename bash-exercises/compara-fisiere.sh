#!/bin/bash
#exercitiul 2 - compara 2 fisiere
if [ $# -ne 2 ]; then
    echo "Eroare! Folosire: ./compara-fisiere.sh fisier1 fisier2"
    exit 1
fi
fisier1=$1
fisier2=$2
if [ ! -f "$fisier1" ]; then
echo "eroare! fisierul $fisier1 nu exista!"
exit 1
fi
if [ ! -f "$fisier2" ]; then
echo "eroare! fisierul $fisier2 nu exista!"
exit 1
fi
suma1=$(sha256sum "$fisier1" | awk '{print $1}')
suma2=$(sha256sum "$fisier2" | awk '{print $1}')

if [ "$suma1" = "$suma2" ]; then
    echo "Fisierele sunt IDENTICE!"
    exit 0
else
    echo "Fisierele sunt DIFERITE!"
    exit 1
fi