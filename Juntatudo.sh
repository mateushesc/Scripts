#!/bin/bash

#Solicita entrada caso nao ache nada no Script
if [ -z "$1" ]; then
  read -p "Digite o primeiro parâmetro: " param1
else
  param1=$1
fi

if [ -z "$2" ]; then
  read -p "Digite o segundo parâmetro: " param2
else
  param2=$2
fi

if [ -z "$3" ]; then
  read -p "Digite o terceiro parâmetro: " param3
else
  param3=$3
fi

#Junta tudo
result="$param1$param2$param3"

# Junta tudo mesmo
shift 3 # Move $4 em diante
for param in "$@"; do
  result+="$param"
done

# Mostra o resultado
echo "$result"
