#!/bin/bash

#Verifica se parâmetros foram passados
if [ $# -eq 0 ]; then
  echo "Nenhum parâmetro fornecido."
  read -p "Insira parâmetros separados por espaço: " -a parametros
else
  parametros=("$@")
fi

#Contador parâmetros
contador=1

#Exibe cada parâmetro e seu número
for param in "${parametros[@]}"; do
  echo "Parâmetro $contador: $param"
  contador=$((contador + 1))
done
