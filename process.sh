#!/bin/bash
#check if the argument is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

#filename from the argument
filename=$1

#process the file
tr '[:upper:]' '[:lower:]' < "$filename" | 
sed 's/[[:punct:]]//g' | 
tr ' \t' '\n' | 
grep -v '^[[:space:]]*$' | 
sort > "sorted_$filename"
