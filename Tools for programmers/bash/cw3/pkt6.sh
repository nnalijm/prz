#!/bin/bash

echo -e '\n\t\tWitam w programie!\n\tOpis:
\ta) cat /dev/null > daty.log 
\tb) echo date >> daty.log
\tc) cat daty.log 
\tx) break
\t[0-9]) echo "Wpisana liczba"\n'


while [ 1 -ne 0 ]
do
	read -p "Wybierz opcje: " line;
	case $line in 
		a) echo -e "\n\tWybrales\las opcje 'a'. Polecenie 'cat' zapisalo\n\tzawartosc pliku '/dev/null' do pliku daty.log w biezacym katalogu.\n" \  
        cat /dev/null > daty.log;;
		b) echo -e "\n\tWybrales\las opcje 'b'. Poleceniem 'echo' wpisales(dodales)\n\twynik polecenia 'date' do pliku daty.log.\n"  \ 
        echo $(date) >> daty.log;;
		c) echo -e "\n\tWybrales\las opcje 'c'. Polecenie cat wyswietla zawartosc\n\tpliku 'daty.log'. \n\n\tWynik: $(cat daty.log)\n";; 
		x) echo -e "\n\tWybrales\las opcje 'x' co oznacza zakonczenie pętli.\n\tBye!\n" && break;;
		[0-9]) for (( count=0; count< $line; count++ )); do cat daty.log; done;;
	esac
done
