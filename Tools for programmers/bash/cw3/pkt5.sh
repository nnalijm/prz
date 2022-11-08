#!/bin/bash

echo -e "\n\t\tWitam w programie!\n\n\tOpis: Wpisz wiersz i liczbe \n\tile razy chcesz go wyswietlić\n"
echo -e "\tOption: \n\tJesli chcesz przerwac petle\n\twpisz 0 jako liczbe powtorów\n"
num=1

while [ $num -ne 0 ]
do
	read -p "Wiersz: " line;
	read -p "Liczba: " n;
    if [ $n -eq 0 ]; then
        num=$[$num-1]
    fi
	for (( count=0; count<n; count++ ))
	do
		echo "$[$count+1]: "$line
	done
done

