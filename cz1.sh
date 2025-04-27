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