#!/bin/bash
case "$1" in
--date)
date
;;
--logs)
for i in {1..100}
do
echo "stworzono log$i.txt o $(date)" > "log$i.txt"
done
;;
--logs30)
for i in {1..30}
do
echo "stworzono log$i.txt o $(date)" > "log$i.txt"
done
;;
--help)
echo "--date : dzisiejsza data"
echo "--logs : tworzy 100 plików log"
echo "--logs30 : tworzy 30 plików log"
;;
*)
echo "Nieznana opcja"
;;
esac