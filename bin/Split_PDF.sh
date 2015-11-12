#!/bin/sh

file="Gramatica y Practica de Espanol para brasilenos.pdf"
pagesper=2

number=$(pdfinfo -- "$file" 2> /dev/null | awk '$1 == "Pages:" {print $2}')
count=$((number / pagesper))
filename=${file%.pdf}

counter=0
while [ "$count" -gt "$counter" ]; do 
  start=$((counter*pagesper + 1));
  end=$((start + pagesper - 1));

  counterstring=$(printf %04d "$counter")
  pdftk "$file" cat "${start}-${end}" output "${filename}_${counterstring}.pdf"

  counter=$((counter + 1))
done
