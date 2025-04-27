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
echo "--init : klonuje repo i ustawia PATH"
echo "--error lub -e : tworzy pliki errorx.txt"
;;
--init)
git clone https://github.com/kofasusi?bashing.git
export PATH=$PATH:$(pwd)
echo "Sciezka $(pwd) dodana do PATH"
;;
--error|-e)
error_number=${2:-100}
for i in $(seq 1 $error_number)
do
    echo "error error$i.txt stworzony $(date)" > "error$i.txt"
done
;;
*)
echo "Nieznana opcja"
;;
esac