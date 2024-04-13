#!/bin/bash
#no need for 'cd' if we are in the correct directory already

#download Shakespeare works
wget http://pages.stat.wisc.edu/~jgillett/DSCP/CHTC/wordCounting/shakespeare.tar

#extract the tar file
tar -xf shakespeare.tar

#find all files (not directories) within the shakespeare directory and concatenate into one file
find shakespeare/ -type f -print0 | xargs -0 cat > combined.txt

#split the combined file into 5 equal parts, prefix the files with 'chunk' and add '.txt' suffix
split -n l/5 -d combined.txt chunk --additional-suffix=.txt

#clean up the extracted directory and the tar file
rm -rf shakespeare shakespeare.tar
