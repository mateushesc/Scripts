#!/bin/bash

#Script para comparar dois números

#Entra numero 1
read -p "Digite o primeiro número: " num1

#Entra numero 2
read -p "Digite o segundo número: " num2

#Comparacao entre os dois numeros
if [ "$num1" -gt "$num2" ]; then
    echo "$num1 é maior que $num2"
elif [ "$num1" -lt "$num2" ]; then
    echo "$num1 é menor que $num2"
else
    echo "$num1 é igual a $num2"
fi
