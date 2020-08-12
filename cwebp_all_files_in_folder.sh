#!/bin/bash

# Converts all file in a given folder to .webp image format

PARAMS=('-m 6 -q 70 -mt -af -progress')
if [ $# -ne 0 ]; then
  PARAMS=$@;
fi
cd $(pwd)
shopt -s nullglob nocaseglob extglob
for FILE in *.@(jpg|jpeg|tif|tiff|png); do 
  cwebp $PARAMS "$FILE" -o "${FILE%.*}".webp;
done
