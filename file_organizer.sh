#!/bin/bash

read -p "enter the directory you want to organize" dir1

if [ ! -d $dir1 ]; then
	echo "the specified directory does not exists."
	exit 1
fi

cd "$dir1" || exit

for file in *; do
	if [ -f "$file" ]; then
		extension="${file##*.}"

		if [ ! -d "$extension" ]; then
			mkdir "$extension"
		fi
		mv "$file" "$extension/"
	fi
done

echo "Files have been organized by extensions!"

	
