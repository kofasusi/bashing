#!/bin/bash
case "$1" in
--date|-d)
date
;;
--logs|-l)
for i in {1..100}
do
echo "stworzono log$i.txt o $(date)" > "log$i.txt"
done
;;
--logs30|-l30)
for i in {1..30}
do
echo "stworzono log$i.txt o $(date)" > "log$i.txt"
done
;;
--help| -h)
echo "--date lub -d: dzisiejsza data"
echo "--logs lub -l : tworzy 100 plikow log"
echo "--logs30 lub -l30: tworzy 30 plikow log"
;;

*)
echo "Nieznana opcja"
;;
esac