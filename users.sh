#!/bin/bash

# Solicita o nome do arquivo se não foi fornecido
if [ -z "$1" ]; then
  read -p "Entre o caminho do arquivo (padrão: /etc/passwd): " arquivo
  arquivo=${arquivo:-/etc/passwd}  # Se o usuário não digitar nada, usa /etc/passwd
else
  arquivo=$1
fi

# Ve se o arquivo existe
if [ ! -f "$arquivo" ]; then
  echo "O arquivo '$arquivo' não foi encontrado."
  exit 1
fi

# Lê o arquivo e exibe o usuário e o nome completo, separados por um TAB
awk -F: '{print $1 "\t" $5}' "$arquivo"
