#!/bin/bash

# Solicita a entrada
read -p "Por favor, insira um número: " num

# Enquanto o número for maior ou igual a zero
while [ "$num" -ge 0 ]; do
  # Exibe o número
  echo -n "$num "

  #-1
  num=$((num - 1))
done
