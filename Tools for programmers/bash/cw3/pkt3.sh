#!/bin/bash

echo -e "\n\t\tWitam w programie!\n\tOpis: Wpisz dwie liczby i program\n\tpowie ktora jest wieksza\n\nWpisz dwie liczby:\n"

read -p "Wpisz num1: " num1 
read -p "Wpisz num2: " num2

(if [[ !($num1) && !($num2) ]]; then
    echo -e "\nNie wpisales/las zadnej liczby"
    exit 1;
elif [[ !($num1) || !($num2) ]]; then
    echo -e "\nWpisales/las jedna liczbe"
    exit 1;
elif [[ $num1 && $num2 ]]; then
    echo -e "\nDobrze wpisales/las liczby"
else
    echo -e "\nWpisales niepoprawna ilosc liczb"
    exit 1
fi)\
&&\
( echo -e "\nWynik:"
if [ $num1 -eq $num2 ]; then
    echo "num1=num2"
elif [ $num1 -gt $num2 ]; then
    echo "num1>num2"
else
    echo "num1<num2"
fi)
