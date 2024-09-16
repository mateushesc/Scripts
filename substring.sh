#!/bin/bash

#Solicita entrada dos usuarios
if [ -z "$1" ]; then
  read -p "Digite a primeira palavra: " palavra1
else
  palavra1=$1
fi

if [ -z "$2" ]; then
  read -p "Digite a segunda palavra: " palavra2
else
  palavra2=$2
fi

# Verifica as palavras
if [[ "$palavra2" == *"$palavra1"* ]]; then
  echo "$palavra1 está contida em $palavra2"
fi
