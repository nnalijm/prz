#!/bin/bash

LOCAL=$1

if [ -f $LOCAL/pkt1 ]; then 
	echo "Plik pkt1 istnieje"
fi
if [ -f $LOCAL/dane1 ]; then 
	echo "Plik dane1 istnieje"; 
else 
	echo "Linia tekstu w danych1" > $LOCAL/dane1
	echo "Plik dane1 nie istnial. Plik zostal stworzony"  
fi
