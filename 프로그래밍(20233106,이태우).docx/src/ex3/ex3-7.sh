#!/bin/bash

read folder_name

if [ -e $folder_name ]; then
    cd "$folder_name" 
else
    	mkdir "$folder_name" && cd "$folder_name"
fi

for i in 0 1 2 3 4
do
	touch "file${i}.txt"
done

for i in 0 1 2 3 4
do
	subfolder="file$i"
	mkdir -p "$subfolder"
	ln -s "../../file$i.txt" "$subfolder/file$i.txt"
done

