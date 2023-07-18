#!/bin/bash

writefile=$1
writestr=$2

# check that both writefile and writestr were specified as inputs arguments ----------
if [ -z "$writefile" -o -z "$writestr" ] 
then 
	echo "ERROR: both writefile and  writestr must be specified as arguments."
	exit 1
fi

# create writefile
mkdir -p "${writefile%/*}"

# write writestr to writefile
echo $writestr > $writefile

if [ $? -gt 0 ]
then 
	echo "ERROR: file could not be created"
	exit 1
fi 

