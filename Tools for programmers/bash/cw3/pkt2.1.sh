#!/bin/bash

# Command 'test' using 'f' option checks does 'filename' exist or no

# Polecenie 'test' z parametrem 'f' sprawdza, czy istenieje
# plik nazwa ktorego(ściżka absolutna) jest podana jako argument 
# przy urochomianiu skypta.
# W przypadku braku plika lub niepoprawnej nazwy wyswietla 
# komunikat 'error'
# W dobrzym przypadku wyswietla komunikat 'Plik istnieje'
 

if test -f $1 ; then
	echo "Plik istnieje"
else
	echo "error"
fi
