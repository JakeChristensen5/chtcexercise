#!/bin/bash
#debug
pwd
ls -l
#merge all sorted files into one
sort -m sorted_chunk*.txt > merged_sorted.txt
#count the occurrences of each word and sort by count in descending order
uniq -c merged_sorted.txt | sort -nr > countsOfWords
