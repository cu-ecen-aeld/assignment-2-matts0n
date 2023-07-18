#!/bin/bash

filesdir=$1;
searchstr=$2;

# check that both filesdir and searchstr were specified as input arguments -------------------
if [ -z "$filesdir" -o -z "$searchstr" ]
then
	echo "ERROR: Both input parameters must be specified."
	exit 1
fi

# check that filesdir represents a directory on the file system -------------------------------
if [ ! -d "$filesdir" ]
then 
	echo "ERROR: not a valid directory."
	exit 1
fi

# change directories to filesdir
cd "$filesdir"

# search filesdir for searchstr -----------------------------------------------------------------
fileNum=$(grep -r -l "$searchstr" | wc -l)
lineNum=$(grep -r "$searchstr" | wc -l)

# print result
echo "The number of files are $fileNum and the number of matching lines are $lineNum"

# adding this comment line to recommit and see if the runner runs
