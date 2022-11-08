#!/bin/bash

echo -e "\n\t\tWitam w programie!\n\tOpis: Wpisz katalog(absolute path)\n\ttypy plikow ktorego chcesz wiedzec.\n"

read -p "Absolute path: " location

dir=0
fil=0
slin=0
blck=0
chrk=0
sckt=0

for elem in $(ls $location)
do
	if [ -d $location/$elem ]; then
		echo -e "$elem: directory\n"
        dir=$[$dir+1]
    elif [ -h $location/$elem ]; then
        echo -e "$elem: symbolic link\n"
        slin=$[$slin+1]
    elif [ -b $location/$elem ]; then
        echo -e "$elem: block-special file\n"
        blck=$[$blck+1]
    elif [ -c $location/$elem ]; then
        echo -e "$elem: character-special file\n"
        chrk=$[$chrk+1]
    elif [ -S $location/$elen ]; then
        echo -e "$elem: socket\n"
        sckt=$[$sckt+1]
	elif [ -f $location/$elem ]; then
		echo -e "$elem: file\n"
        fil=$[$fil+1]
   	else
		echo -e "$elem: noname type\n"
    fi
done

echo "directory count: $dir"
echo "file count: $fil"
echo "symbolic link count: $slin"
echo "block-special file count: $blck"
echo "character-special file count: $chrk"
echo "socket count: $sckt"
