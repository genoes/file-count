#!/bin/bash

printf '\n%s\n'
echo Input the absolute path to directory:
printf '\n%s\n'

read FILE

find $FILE -type d -print0 | sort -zV | while read -d '' -r dir;
do files=("$dir"/*);
printf "%0d files in %s\n" "${#files[@]}" "$dir" >> file-count.txt;
done
open ./file-count.txt
printf '\n%s\n'

echo Done!
printf '\n%s\n'
