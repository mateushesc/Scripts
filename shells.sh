#!/bin/bash

#Solicita o nome do arquivo se não foi fornecido como argumento (por padrão, usa /etc/passwd)
if [ -z "$1" ]; then
  read -p "Por favor, insira o caminho do arquivo (padrão: /etc/passwd): " arquivo
  arquivo=${arquivo:-/etc/passwd}  #Se o usuário não digitar nada, usa /etc/passwd
else
  arquivo=$1
fi

#Verifica se o arquivo existe
if [ ! -f "$arquivo" ]; then
  echo "Erro: O arquivo '$arquivo' não foi encontrado."
  exit 1
fi

#Extrai e mostra todos os shells únicos do arquivo
awk -F: '{print $7}' "$arquivo" | sort | uniq
